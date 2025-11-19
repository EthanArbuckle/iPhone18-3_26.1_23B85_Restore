uint64_t sub_1E64C8574(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1E65E3578();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E65E6D28();
  sub_1E64C8A58(v4, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v10, v13, v5);
    MEMORY[0x1E694E740](1);
    sub_1E64C8C64(&qword_1ED0766D0, MEMORY[0x1E699ECE8]);
    sub_1E65E5B48();
    (*(v6 + 8))(v10, v5);
  }

  else
  {
    v14 = *v13;
    v15 = v13[1];
    MEMORY[0x1E694E740](0);
    sub_1E65E5D78();
  }

  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard24ProgramDetailItemContextO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E3578();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ProgramDetailItemContext();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v31 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A608, &qword_1E6606F20);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v31 - v19;
  v21 = (&v31 + *(v18 + 56) - v19);
  sub_1E64C8A58(a1, &v31 - v19);
  sub_1E64C8A58(a2, v21);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1E64C8A58(v20, v15);
    v25 = *v15;
    v24 = v15[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v25 == *v21 && v24 == v21[1])
      {
        v29 = v21[1];
      }

      else
      {
        v27 = v21[1];
        v28 = sub_1E65E6C18();

        if ((v28 & 1) == 0)
        {
          sub_1E64C905C(v20);
          goto LABEL_8;
        }
      }

      sub_1E64C905C(v20);
      v22 = 1;
      return v22 & 1;
    }

LABEL_7:
    sub_1E64C8FF4(v20);
LABEL_8:
    v22 = 0;
    return v22 & 1;
  }

  sub_1E64C8A58(v20, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v13, v4);
    goto LABEL_7;
  }

  (*(v5 + 32))(v8, v21, v4);
  v22 = sub_1E65E3568();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v13, v4);
  sub_1E64C905C(v20);
  return v22 & 1;
}

uint64_t sub_1E64C8A58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProgramDetailItemContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E64C8ABC()
{
  result = qword_1ED07A578;
  if (!qword_1ED07A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A578);
  }

  return result;
}

unint64_t sub_1E64C8B10()
{
  result = qword_1ED07A580;
  if (!qword_1ED07A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A580);
  }

  return result;
}

unint64_t sub_1E64C8B64()
{
  result = qword_1ED07A590;
  if (!qword_1ED07A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A590);
  }

  return result;
}

uint64_t sub_1E64C8BB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProgramDetailItemContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E64C8C64(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E64C8CE0()
{
  result = qword_1ED07A5C0;
  if (!qword_1ED07A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A5C0);
  }

  return result;
}

unint64_t sub_1E64C8D38()
{
  result = qword_1ED07A5C8;
  if (!qword_1ED07A5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A5C8);
  }

  return result;
}

unint64_t sub_1E64C8D90()
{
  result = qword_1ED07A5D0;
  if (!qword_1ED07A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A5D0);
  }

  return result;
}

unint64_t sub_1E64C8DE8()
{
  result = qword_1ED07A5D8;
  if (!qword_1ED07A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A5D8);
  }

  return result;
}

unint64_t sub_1E64C8E40()
{
  result = qword_1ED07A5E0;
  if (!qword_1ED07A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A5E0);
  }

  return result;
}

unint64_t sub_1E64C8E98()
{
  result = qword_1ED07A5E8;
  if (!qword_1ED07A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A5E8);
  }

  return result;
}

unint64_t sub_1E64C8EF0()
{
  result = qword_1ED07A5F0;
  if (!qword_1ED07A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A5F0);
  }

  return result;
}

unint64_t sub_1E64C8F48()
{
  result = qword_1ED07A5F8;
  if (!qword_1ED07A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A5F8);
  }

  return result;
}

unint64_t sub_1E64C8FA0()
{
  result = qword_1ED07A600;
  if (!qword_1ED07A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A600);
  }

  return result;
}

uint64_t sub_1E64C8FF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A608, &qword_1E6606F20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E64C905C(uint64_t a1)
{
  v2 = type metadata accessor for ProgramDetailItemContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppComposer.modalityDetailViewBuilder(identifier:currentRoutingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a3;
  v82 = a1;
  v78 = a4;
  v7 = type metadata accessor for AppComposer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v74 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v70 = &v63 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v63 - v16;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770C0, &unk_1E65FA410);
  v18 = *(*(v77 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v77);
  v75 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v76 = &v63 - v21;
  v22 = sub_1E65E0B48();
  v69 = *(v22 - 8);
  v80 = *(v69 + 64);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v71 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v67 = &v63 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v63 - v27);
  v84 = &v63 - v27;
  *v28 = a1;
  v28[1] = a2;
  v29 = a2;
  v81 = a2;
  swift_storeEnumTagMultiPayload();
  sub_1E5E1DDDC(v4, v17, type metadata accessor for AppComposer);
  v30 = *(v8 + 80);
  v31 = ((v30 + 16) & ~v30) + v9;
  v32 = (v30 + 16) & ~v30;
  v33 = v30 | 7;
  v68 = v31;
  v73 = swift_allocObject();
  v34 = v32;
  v79 = v32;
  v64 = type metadata accessor for AppComposer;
  sub_1E5E1EAD8(v17, v73 + v32, type metadata accessor for AppComposer);
  v83 = v4;
  v65 = type metadata accessor for AppComposer;
  sub_1E5E1DDDC(v4, v15, type metadata accessor for AppComposer);
  v35 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = v33;
  v36 = swift_allocObject();
  v72 = v36;
  sub_1E5E1EAD8(v15, v36 + v34, type metadata accessor for AppComposer);
  v37 = (v36 + v35);
  v38 = v82;
  *v37 = v82;
  v37[1] = v29;
  v39 = v70;
  sub_1E5E1DDDC(v4, v70, type metadata accessor for AppComposer);
  sub_1E5DF650C(v85, &v89);
  v40 = MEMORY[0x1E699DD40];
  v41 = v67;
  sub_1E5E1DDDC(v84, v67, MEMORY[0x1E699DD40]);
  v42 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v43 = *(v69 + 80);
  v44 = swift_allocObject();
  v45 = v39;
  v46 = v64;
  sub_1E5E1EAD8(v45, v44 + v79, v64);
  v47 = (v44 + v35);
  v48 = v81;
  *v47 = v38;
  v47[1] = v48;
  v69 = v44;
  sub_1E5DF599C(&v89, v44 + v42);
  v49 = MEMORY[0x1E699DD40];
  sub_1E5E1EAD8(v41, v44 + ((v42 + v43 + 40) & ~v43), MEMORY[0x1E699DD40]);
  v50 = v74;
  sub_1E5E1DDDC(v83, v74, v65);
  v51 = v71;
  sub_1E5E1DDDC(v84, v71, v40);
  sub_1E5DF650C(v85, v88);
  v52 = (v68 + v43) & ~v43;
  v53 = (v80 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  sub_1E5E1EAD8(v50, v54 + v79, v46);
  sub_1E5E1EAD8(v51, v54 + v52, v49);
  sub_1E5DF599C(v88, v54 + v53);
  v55 = v81;
  swift_bridgeObjectRetain_n();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079060, &qword_1E6600A78);
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079058, &qword_1E6600A70);
  v58 = sub_1E5FED46C(&qword_1ED079068, &qword_1ED079058, &qword_1E6600A70);
  v86 = v57;
  v87 = v58;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v75;
  sub_1E64CAC88(v82, v55, v85, &unk_1E6606F30, v73, sub_1E64CA39C, v72, &unk_1E6606F40, v75, v69, sub_1E64D0788, v54, v56, OpaqueTypeConformance2);

  sub_1E64D0454(v84, MEMORY[0x1E699DD40]);
  sub_1E64CB744();
  v61 = v76;
  sub_1E5FEE4C8(v60);
  sub_1E5F6BF8C(v60);
  sub_1E5FEE4C8(v61);
  return sub_1E5F6BF8C(v61);
}

uint64_t AppComposer.trainerDetailViewBuilder(identifier:currentRoutingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a3;
  v82 = a1;
  v78 = a4;
  v7 = type metadata accessor for AppComposer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v74 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v70 = &v63 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v63 - v16;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770C0, &unk_1E65FA410);
  v18 = *(*(v77 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v77);
  v75 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v76 = &v63 - v21;
  v22 = sub_1E65E0B48();
  v69 = *(v22 - 8);
  v80 = *(v69 + 64);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v71 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v67 = &v63 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v63 - v27);
  v84 = &v63 - v27;
  *v28 = a1;
  v28[1] = a2;
  v29 = a2;
  v81 = a2;
  swift_storeEnumTagMultiPayload();
  sub_1E5E1DDDC(v4, v17, type metadata accessor for AppComposer);
  v30 = *(v8 + 80);
  v31 = ((v30 + 16) & ~v30) + v9;
  v32 = (v30 + 16) & ~v30;
  v33 = v30 | 7;
  v68 = v31;
  v73 = swift_allocObject();
  v34 = v32;
  v79 = v32;
  v64 = type metadata accessor for AppComposer;
  sub_1E5E1EAD8(v17, v73 + v32, type metadata accessor for AppComposer);
  v83 = v4;
  v65 = type metadata accessor for AppComposer;
  sub_1E5E1DDDC(v4, v15, type metadata accessor for AppComposer);
  v35 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = v33;
  v36 = swift_allocObject();
  v72 = v36;
  sub_1E5E1EAD8(v15, v36 + v34, type metadata accessor for AppComposer);
  v37 = (v36 + v35);
  v38 = v82;
  *v37 = v82;
  v37[1] = v29;
  v39 = v70;
  sub_1E5E1DDDC(v4, v70, type metadata accessor for AppComposer);
  sub_1E5DF650C(v85, &v89);
  v40 = MEMORY[0x1E699DD40];
  v41 = v67;
  sub_1E5E1DDDC(v84, v67, MEMORY[0x1E699DD40]);
  v42 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v43 = *(v69 + 80);
  v44 = swift_allocObject();
  v45 = v39;
  v46 = v64;
  sub_1E5E1EAD8(v45, v44 + v79, v64);
  v47 = (v44 + v35);
  v48 = v81;
  *v47 = v38;
  v47[1] = v48;
  v69 = v44;
  sub_1E5DF599C(&v89, v44 + v42);
  v49 = MEMORY[0x1E699DD40];
  sub_1E5E1EAD8(v41, v44 + ((v42 + v43 + 40) & ~v43), MEMORY[0x1E699DD40]);
  v50 = v74;
  sub_1E5E1DDDC(v83, v74, v65);
  v51 = v71;
  sub_1E5E1DDDC(v84, v71, v40);
  sub_1E5DF650C(v85, v88);
  v52 = (v68 + v43) & ~v43;
  v53 = (v80 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  sub_1E5E1EAD8(v50, v54 + v79, v46);
  sub_1E5E1EAD8(v51, v54 + v52, v49);
  sub_1E5DF599C(v88, v54 + v53);
  v55 = v81;
  swift_bridgeObjectRetain_n();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079060, &qword_1E6600A78);
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079058, &qword_1E6600A70);
  v58 = sub_1E5FED46C(&qword_1ED079068, &qword_1ED079058, &qword_1E6600A70);
  v86 = v57;
  v87 = v58;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v75;
  sub_1E64CAC88(v82, v55, v85, &unk_1E6606F60, v73, sub_1E64CBE94, v72, &unk_1E6606F70, v75, v69, sub_1E64CE7F8, v54, v56, OpaqueTypeConformance2);

  sub_1E64D0454(v84, MEMORY[0x1E699DD40]);
  sub_1E64CB744();
  v61 = v76;
  sub_1E5FEE4C8(v60);
  sub_1E5F6BF8C(v60);
  sub_1E5FEE4C8(v61);
  return sub_1E5F6BF8C(v61);
}

uint64_t sub_1E64C9EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1E65D9798();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64C9F6C, 0, 0);
}

uint64_t sub_1E64C9F6C()
{
  v1 = v0[5];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 48);
  v4 = CatalogService.fetchRemoteCatalogModalityDetail.getter();
  v0[9] = v5;
  v12 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1E64CA08C;
  v8 = v0[8];
  v9 = v0[3];
  v10 = v0[4];

  return v12(v8, v9, v10);
}

uint64_t sub_1E64CA08C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1E64CA23C;
  }

  else
  {
    v3 = sub_1E64CA1A0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E64CA1A0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[2];

  sub_1E628D9C0(v5);
  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E64CA23C()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_1E64CA2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E64C9EA8(a1, a2, a3, v3 + v9);
}

uint64_t sub_1E64CA3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for RouteSource(0);
  v5[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v8 = type metadata accessor for RouteDestination();
  v5[12] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v10 = sub_1E65E3288();
  v5[14] = v10;
  v11 = *(v10 - 8);
  v5[15] = v11;
  v12 = *(v11 + 64) + 15;
  v5[16] = swift_task_alloc();
  v13 = sub_1E65E3258();
  v5[17] = v13;
  v14 = *(v13 - 8);
  v5[18] = v14;
  v15 = *(v14 + 64) + 15;
  v5[19] = swift_task_alloc();
  v16 = sub_1E65E31D8();
  v5[20] = v16;
  v17 = *(v16 - 8);
  v5[21] = v17;
  v18 = *(v17 + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64CA5A0, 0, 0);
}

uint64_t sub_1E64CA5A0()
{
  v1 = **(v0 + 40);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v2 = *(v0 + 32);
  if (*(v2 + 16) && (v3 = sub_1E6215038(*(v0 + 48), *(v0 + 56)), (v4 & 1) != 0))
  {
    v6 = *(v0 + 176);
    v5 = *(v0 + 184);
    v7 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v11 = *(v0 + 112);
    (*(v8 + 16))(v6, *(v2 + 56) + *(v8 + 72) * v3, v7);

    (*(v8 + 32))(v5, v6, v7);
    sub_1E65E31B8();
    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E699EB98])
    {
      v13 = *(v0 + 144);
      v12 = *(v0 + 152);
      v15 = *(v0 + 128);
      v14 = *(v0 + 136);
      v17 = *(v0 + 96);
      v16 = *(v0 + 104);
      v19 = *(v0 + 80);
      v18 = *(v0 + 88);
      v20 = *(v0 + 64);
      v44 = *(v0 + 72);
      (*(*(v0 + 120) + 96))(v15, *(v0 + 112));
      (*(v13 + 32))(v12, v15, v14);
      v21 = v20[3];
      v22 = v20[4];
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v23 = sub_1E65E3248();
      v25 = v24;
      swift_storeEnumTagMultiPayload();
      v26 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48));
      sub_1E5E1DDDC(v44, v16, MEMORY[0x1E699DD40]);
      *v26 = v23;
      v26[1] = v25;
      type metadata accessor for RouteResource();
      swift_storeEnumTagMultiPayload();
      sub_1E5E1EAD8(v18, v16 + *(v17 + 20), type metadata accessor for RouteSource);
      *(v16 + *(v17 + 24)) = MEMORY[0x1E69E7CD0];
      *(v0 + 16) = 1;
      *(v0 + 24) = 0;
      sub_1E600F5B0((v0 + 25));
      v27 = swift_task_alloc();
      *(v0 + 192) = v27;
      *v27 = v0;
      v27[1] = sub_1E64CA9E4;
      v28 = *(v0 + 104);

      return RoutingContext.presentDestination(_:style:priority:)(v28, (v0 + 16), (v0 + 25), v21, v22);
    }

    v42 = *(v0 + 120);
    v41 = *(v0 + 128);
    v43 = *(v0 + 112);
    (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
    (*(v42 + 8))(v41, v43);
  }

  else
  {
  }

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v30 = sub_1E65E3B68();
  __swift_project_value_buffer(v30, qword_1EE2EA2A0);
  v31 = sub_1E65E3B48();
  v32 = sub_1E65E6338();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1E5DE9000, v31, v32, "Unable to present filter sheet - modality detail content not fetched", v33, 2u);
    MEMORY[0x1E694F1C0](v33, -1, -1);
  }

  v35 = *(v0 + 176);
  v34 = *(v0 + 184);
  v36 = *(v0 + 152);
  v37 = *(v0 + 128);
  v38 = *(v0 + 104);
  v39 = *(v0 + 88);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1E64CA9E4()
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 200) = v0;

  sub_1E64D0454(v3, type metadata accessor for RouteDestination);
  if (v0)
  {
    v4 = sub_1E64D0784;
  }

  else
  {
    v4 = sub_1E64D078C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E64CAB28()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1E65E0B48() - 8);
  v7 = (v5 + *(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = v0 + v4;
  v9 = *(v0 + v4);
  v10 = *(v8 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1E5DFE6BC;

  return sub_1E64CA3B4(v0 + v3, v9, v10, v0 + v5, v0 + v7);
}

uint64_t sub_1E64CAC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v96 = a8;
  v113 = a7;
  v95 = a5;
  v94 = a4;
  v114 = a3;
  v77 = a2;
  v78 = a1;
  v106 = a9;
  v101 = a11;
  v93 = a10;
  v81 = a14;
  v100 = a12;
  v82 = a13;
  v17 = type metadata accessor for AppComposer();
  v107 = *(v17 - 8);
  v18 = *(v107 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v91 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v109 = &v76 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077870, &unk_1E65FA560);
  v90 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07A638, &qword_1E6606FC0);
  v87 = v22;
  v23 = sub_1E5FEB2FC();
  v85 = v23;
  v24 = sub_1E65E15B8();
  v25 = sub_1E64D073C(&qword_1ED078010, MEMORY[0x1E699E8C8]);
  *&v126 = v24;
  *(&v126 + 1) = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v126 = v21;
  *(&v126 + 1) = v22;
  *&v127 = a13;
  *(&v127 + 1) = v23;
  *&v128 = OpaqueTypeConformance2;
  *(&v128 + 1) = a14;
  v26 = sub_1E65E31A8();
  v88 = v26;
  v98 = *(v26 - 8);
  v27 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v86 = &v76 - v28;
  WitnessTable = swift_getWitnessTable();
  *&v126 = v26;
  *(&v126 + 1) = WitnessTable;
  v99 = MEMORY[0x1E69E3B38];
  swift_getOpaqueTypeMetadata2();
  v97 = sub_1E65E3DE8();
  v104 = *(v97 - 8);
  v29 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v83 = &v76 - v30;
  v103 = sub_1E65E3DE8();
  v105 = *(v103 - 8);
  v31 = *(v105 + 64);
  v32 = MEMORY[0x1EEE9AC00](v103);
  v92 = &v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v102 = &v76 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076AF0, &qword_1E65F77B0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v38 = &v76 - v37;
  v39 = a6;
  v40 = v115;
  sub_1E61F84B0(a1, a2, v39, v113, &v126);
  v41 = sub_1E65E07B8();
  (*(*(v41 - 8) + 56))(v38, 1, 1, v41);
  v110 = sub_1E6375DA0(0xD00000000000001ALL, 0x80000001E66186C0, v38, &v126);
  sub_1E5DFE50C(v38, &qword_1ED076AF0, &qword_1E65F77B0);
  v108 = type metadata accessor for AppComposer;
  v42 = v109;
  sub_1E5E1DDDC(v40, v109, type metadata accessor for AppComposer);
  sub_1E5DF650C(v114, &v125);
  v114 = v126;
  v113 = *(&v127 + 1);
  v112 = *(&v128 + 1);
  v111 = *(&v129 + 1);
  v80 = *(&v130 + 1);
  v43 = (*(v107 + 80) + 16) & ~*(v107 + 80);
  v107 = v43 + v18;
  v44 = (v43 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v44 + 23) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 23) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 47) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  v79 = v43;
  sub_1E5E1EAD8(v42, v48 + v43, type metadata accessor for AppComposer);
  v49 = (v48 + v44);
  v50 = v95;
  *v49 = v94;
  v49[1] = v50;
  v51 = (v48 + v45);
  v52 = v93;
  *v51 = v96;
  v51[1] = v52;
  sub_1E5DF599C(&v125, v48 + v46);
  v53 = (v48 + v47);
  v54 = v77;
  *v53 = v78;
  v53[1] = v54;
  v55 = (v48 + ((v47 + 23) & 0xFFFFFFFFFFFFFFF8));
  v56 = v130;
  v57 = v128;
  v55[3] = v129;
  v55[4] = v56;
  v58 = v127;
  *v55 = v126;
  v55[1] = v58;
  v55[2] = v57;
  v59 = v91;
  sub_1E5E1DDDC(v115, v91, v108);
  v60 = swift_allocObject();
  sub_1E5E1EAD8(v59, v60 + v43, type metadata accessor for AppComposer);
  v116 = v82;
  v117 = v81;
  v118 = v101;
  v119 = v100;
  v120 = &v126;

  swift_unknownObjectRetain();

  v61 = v86;
  sub_1E65E3198();
  v62 = v83;
  v63 = v88;
  v64 = WitnessTable;
  sub_1E630FCD8(&v126, v88, WitnessTable, v83);
  v65 = v63;
  (*(v98 + 8))(v61, v63);
  v66 = v109;
  sub_1E5E1DDDC(v115, v109, v108);
  v67 = swift_allocObject();
  sub_1E5E1EAD8(v66, v67 + v79, type metadata accessor for AppComposer);
  *&v125 = v65;
  *(&v125 + 1) = v64;
  v123 = swift_getOpaqueTypeConformance2();
  v124 = MEMORY[0x1E69805D0];
  v68 = v97;
  v69 = swift_getWitnessTable();
  v70 = v92;
  sub_1E6259D5C(sub_1E5FF0278, v67, v68);

  swift_unknownObjectRelease();

  (*(v104 + 8))(v62, v68);
  v71 = sub_1E5FEB170();
  v121 = v69;
  v122 = v71;
  v72 = v103;
  swift_getWitnessTable();
  v73 = v102;
  sub_1E5FEE4C8(v70);
  v74 = *(v105 + 8);
  v74(v70, v72);
  sub_1E5FEE4C8(v73);
  return (v74)(v73, v72);
}

unint64_t sub_1E64CB744()
{
  result = qword_1ED07A610;
  if (!qword_1ED07A610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0770C0, &unk_1E65FA410);
    sub_1E64CB7D0();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A610);
  }

  return result;
}

unint64_t sub_1E64CB7D0()
{
  result = qword_1ED07A618;
  if (!qword_1ED07A618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07A620, &qword_1E6606F48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07A628, &qword_1E6606F50);
    sub_1E5FED46C(&qword_1ED07A630, &qword_1ED07A628, &qword_1E6606F50);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A618);
  }

  return result;
}

uint64_t sub_1E64CB8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1E65D7848();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_1E65D8418();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64CB9EC, 0, 0);
}

uint64_t sub_1E64CB9EC()
{
  v1 = v0[5];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 48);
  v4 = CatalogService.fetchRemoteTrainerDetail.getter();
  v0[12] = v5;
  v12 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_1E64CBB0C;
  v8 = v0[11];
  v9 = v0[3];
  v10 = v0[4];

  return v12(v8, v9, v10);
}

uint64_t sub_1E64CBB0C()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1E64CBD28;
  }

  else
  {
    v3 = sub_1E64CBC20;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E64CBC20()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[2];

  v10 = *v7;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E62E30A8(v5, v9);
  (*(v6 + 8))(v5, v8);
  (*(v4 + 8))(v2, v3);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E64CBD28()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t sub_1E64CBDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E64CB8CC(a1, a2, a3, v3 + v9);
}

uint64_t sub_1E64CBEAC(uint64_t (*a1)(void, void))
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return a1(*v4, v4[1]);
}

uint64_t sub_1E64CBF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for RouteSource(0);
  v5[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v8 = type metadata accessor for RouteDestination();
  v5[12] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v10 = sub_1E65E3288();
  v5[14] = v10;
  v11 = *(v10 - 8);
  v5[15] = v11;
  v12 = *(v11 + 64) + 15;
  v5[16] = swift_task_alloc();
  v13 = sub_1E65E3258();
  v5[17] = v13;
  v14 = *(v13 - 8);
  v5[18] = v14;
  v15 = *(v14 + 64) + 15;
  v5[19] = swift_task_alloc();
  v16 = sub_1E65E31D8();
  v5[20] = v16;
  v17 = *(v16 - 8);
  v5[21] = v17;
  v18 = *(v17 + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64CC13C, 0, 0);
}

uint64_t sub_1E64CC13C()
{
  v1 = **(v0 + 40);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v2 = *(v0 + 32);
  if (*(v2 + 16) && (v3 = sub_1E6215038(*(v0 + 48), *(v0 + 56)), (v4 & 1) != 0))
  {
    v6 = *(v0 + 176);
    v5 = *(v0 + 184);
    v7 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v11 = *(v0 + 112);
    (*(v8 + 16))(v6, *(v2 + 56) + *(v8 + 72) * v3, v7);

    (*(v8 + 32))(v5, v6, v7);
    sub_1E65E31B8();
    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E699EB98])
    {
      v13 = *(v0 + 144);
      v12 = *(v0 + 152);
      v15 = *(v0 + 128);
      v14 = *(v0 + 136);
      v17 = *(v0 + 96);
      v16 = *(v0 + 104);
      v19 = *(v0 + 80);
      v18 = *(v0 + 88);
      v20 = *(v0 + 64);
      v44 = *(v0 + 72);
      (*(*(v0 + 120) + 96))(v15, *(v0 + 112));
      (*(v13 + 32))(v12, v15, v14);
      v21 = v20[3];
      v22 = v20[4];
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v23 = sub_1E65E3248();
      v25 = v24;
      swift_storeEnumTagMultiPayload();
      v26 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48));
      sub_1E5E1DDDC(v44, v16, MEMORY[0x1E699DD40]);
      *v26 = v23;
      v26[1] = v25;
      type metadata accessor for RouteResource();
      swift_storeEnumTagMultiPayload();
      sub_1E5E1EAD8(v18, v16 + *(v17 + 20), type metadata accessor for RouteSource);
      *(v16 + *(v17 + 24)) = MEMORY[0x1E69E7CD0];
      *(v0 + 16) = 1;
      *(v0 + 24) = 0;
      sub_1E600F5B0((v0 + 25));
      v27 = swift_task_alloc();
      *(v0 + 192) = v27;
      *v27 = v0;
      v27[1] = sub_1E64CC580;
      v28 = *(v0 + 104);

      return RoutingContext.presentDestination(_:style:priority:)(v28, (v0 + 16), (v0 + 25), v21, v22);
    }

    v42 = *(v0 + 120);
    v41 = *(v0 + 128);
    v43 = *(v0 + 112);
    (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
    (*(v42 + 8))(v41, v43);
  }

  else
  {
  }

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v30 = sub_1E65E3B68();
  __swift_project_value_buffer(v30, qword_1EE2EA2A0);
  v31 = sub_1E65E3B48();
  v32 = sub_1E65E6338();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1E5DE9000, v31, v32, "Unable to present filter sheet - trainer detail content not fetched", v33, 2u);
    MEMORY[0x1E694F1C0](v33, -1, -1);
  }

  v35 = *(v0 + 176);
  v34 = *(v0 + 184);
  v36 = *(v0 + 152);
  v37 = *(v0 + 128);
  v38 = *(v0 + 104);
  v39 = *(v0 + 88);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1E64CC580()
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 200) = v0;

  sub_1E64D0454(v3, type metadata accessor for RouteDestination);
  if (v0)
  {
    v4 = sub_1E64CC7A8;
  }

  else
  {
    v4 = sub_1E64CC6C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E64CC6C4()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  (*(v0[18] + 8))(v0[19], v0[17]);
  (*(v3 + 8))(v1, v2);
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[11];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E64CC7A8()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[11];
  (*(v0[18] + 8))(v0[19], v0[17]);
  (*(v4 + 8))(v2, v3);

  v8 = v0[1];
  v9 = v0[25];

  return v8();
}

uint64_t objectdestroy_6Tm_3()
{
  v122 = type metadata accessor for AppComposer();
  v120 = *(*(v122 - 1) + 80);
  v1 = (v120 + 16) & ~v120;
  v116 = (*(*(v122 - 1) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v117 = (v116 + 23) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(sub_1E65E0B48() - 8);
  v119 = *(v2 + 80);
  v118 = *(v2 + 64);
  v121 = v0;
  v113 = v0 + v1;
  v3 = *(v0 + v1);

  v4 = (v0 + v1 + v122[5]);
  v5 = *v4;
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment();
  v7 = v6[6];
  v115 = type metadata accessor for AccountService();
  v114 = *(v115[-1].Description + 1);
  v114(&v4[v7], v115);
  v8 = v6[7];
  v112 = type metadata accessor for AppStateService();
  v111 = *(v112[-1].Description + 1);
  v111(&v4[v8], v112);
  v9 = v6[8];
  v110 = type metadata accessor for ArchivedSessionService();
  v109 = *(v110[-1].Description + 1);
  v109(&v4[v9], v110);
  v10 = v6[9];
  v108 = type metadata accessor for AssetService();
  v107 = *(v108[-1].Description + 1);
  v107(&v4[v10], v108);
  v11 = v6[10];
  v106 = type metadata accessor for AwardsService();
  v105 = *(v106[-1].Description + 1);
  v105(&v4[v11], v106);
  v12 = v6[11];
  v104 = type metadata accessor for BookmarkService();
  v103 = *(v104[-1].Description + 1);
  v103(&v4[v12], v104);
  v13 = v6[12];
  v102 = type metadata accessor for CatalogService();
  v101 = *(v102[-1].Description + 1);
  v101(&v4[v13], v102);
  v14 = v6[13];
  v100 = type metadata accessor for ConfigurationService();
  v99 = *(v100[-1].Description + 1);
  v99(&v4[v14], v100);
  v15 = v6[14];
  v98 = type metadata accessor for ContentAvailabilityService();
  v97 = *(v98[-1].Description + 1);
  v97(&v4[v15], v98);
  v16 = v6[15];
  v96 = type metadata accessor for EngagementService();
  v95 = *(v96[-1].Description + 1);
  v95(&v4[v16], v96);
  v17 = v6[16];
  v94 = type metadata accessor for HealthDataService();
  v93 = *(v94[-1].Description + 1);
  v93(&v4[v17], v94);
  v18 = v6[17];
  v92 = type metadata accessor for InteropService();
  v91 = *(v92[-1].Description + 1);
  v91(&v4[v18], v92);
  v19 = v6[18];
  v90 = type metadata accessor for LocalizationService();
  v89 = *(v90[-1].Description + 1);
  v89(&v4[v19], v90);
  v20 = v6[19];
  v88 = type metadata accessor for MarketingService();
  v87 = *(v88[-1].Description + 1);
  v87(&v4[v20], v88);
  v21 = v6[20];
  v86 = type metadata accessor for MetricService();
  v85 = *(v86[-1].Description + 1);
  v85(&v4[v21], v86);
  v22 = v6[21];
  v84 = type metadata accessor for PersonalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(&v4[v22], v84);
  v23 = v6[22];
  v82 = type metadata accessor for PlayerService();
  v81 = *(v82[-1].Description + 1);
  v81(&v4[v23], v82);
  v24 = v6[23];
  v80 = type metadata accessor for PrivacyPreferenceService();
  v79 = *(v80[-1].Description + 1);
  v79(&v4[v24], v80);
  v25 = v6[24];
  v78 = type metadata accessor for RecommendationService();
  v77 = *(v78[-1].Description + 1);
  v77(&v4[v25], v78);
  v26 = v6[25];
  v76 = type metadata accessor for RemoteBrowsingService();
  v75 = *(v76[-1].Description + 1);
  v75(&v4[v26], v76);
  v27 = v6[26];
  v74 = type metadata accessor for SearchService();
  v73 = *(v74[-1].Description + 1);
  v73(&v4[v27], v74);
  v28 = v6[27];
  v72 = type metadata accessor for ServiceSubscriptionService();
  v71 = *(v72[-1].Description + 1);
  v71(&v4[v28], v72);
  v29 = v6[28];
  v65 = type metadata accessor for SessionService();
  v70 = *(v65[-1].Description + 1);
  v70(&v4[v29], v65);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v69 = *(v31[-1].Description + 1);
  v69(&v4[v30], v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v68 = *(v33[-1].Description + 1);
  v68(&v4[v32], v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v67 = *(v35[-1].Description + 1);
  v67(&v4[v34], v35);
  v36 = &v4[v6[32]];
  v37 = *(v36 + 1);

  v38 = *(v36 + 3);

  v39 = *(v36 + 5);

  v40 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v66 = *(QueueService[-1].Description + 1);
  v66(&v4[v40], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v4[v6[34]]);
  v42 = *&v4[v6[35]];

  v43 = v6[36];
  v44 = type metadata accessor for WorkoutPlanService();
  v64 = *(v44[-1].Description + 1);
  v64(&v4[v43], v44);
  v45 = *(v113 + v122[6]);

  v46 = (v113 + v122[7]);
  v47 = *v46;

  v48 = v46[1];

  v49 = v46 + *(type metadata accessor for AppDataItemResolver() + 24);
  v50 = *v49;
  swift_unknownObjectRelease();
  v114(&v49[v6[6]], v115);
  v111(&v49[v6[7]], v112);
  v109(&v49[v6[8]], v110);
  v107(&v49[v6[9]], v108);
  v105(&v49[v6[10]], v106);
  v103(&v49[v6[11]], v104);
  v101(&v49[v6[12]], v102);
  v99(&v49[v6[13]], v100);
  v97(&v49[v6[14]], v98);
  v95(&v49[v6[15]], v96);
  v93(&v49[v6[16]], v94);
  v91(&v49[v6[17]], v92);
  v89(&v49[v6[18]], v90);
  v87(&v49[v6[19]], v88);
  v85(&v49[v6[20]], v86);
  v83(&v49[v6[21]], v84);
  v81(&v49[v6[22]], v82);
  v79(&v49[v6[23]], v80);
  v77(&v49[v6[24]], v78);
  v75(&v49[v6[25]], v76);
  v73(&v49[v6[26]], v74);
  v71(&v49[v6[27]], v72);
  v70(&v49[v6[28]], v65);
  v69(&v49[v6[29]], v31);
  v68(&v49[v6[30]], v33);
  v67(&v49[v6[31]], v35);
  v51 = &v49[v6[32]];
  v52 = *(v51 + 1);

  v53 = *(v51 + 3);

  v54 = *(v51 + 5);

  v66(&v49[v6[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v49[v6[34]]);
  v55 = *&v49[v6[35]];

  v64(&v49[v6[36]], v44);
  v56 = *(v113 + v122[8]);
  swift_unknownObjectRelease();
  if (*(v113 + v122[9] + 8) >= 0xCuLL)
  {
  }

  v57 = (v117 + v119 + 40) & ~v119;
  v58 = (v113 + v122[10]);
  if (v58[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  v59 = *(v121 + v116 + 8);

  __swift_destroy_boxed_opaque_existential_1((v121 + v117));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6 && EnumCaseMultiPayload != 7)
    {
      goto LABEL_15;
    }

LABEL_14:
    v62 = *(v121 + v57 + 8);

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload > 1 || !EnumCaseMultiPayload)
  {
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v61 = sub_1E65E0FD8();
    (*(*(v61 - 8) + 8))(v121 + v57, v61);
  }

LABEL_15:

  return swift_deallocObject();
}

uint64_t sub_1E64CD6B8()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1E65E0B48() - 8);
  v7 = (v5 + *(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = v0 + v4;
  v9 = *(v0 + v4);
  v10 = *(v8 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1E5DFE6BC;

  return sub_1E64CBF50(v0 + v3, v9, v10, v0 + v5, v0 + v7);
}

uint64_t sub_1E64CD818(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079060, &qword_1E6600A78);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v19 - v13;
  sub_1E63DE314(a3, 0, 0xE000000000000000, a4, a1, v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079058, &qword_1E6600A70);
  v16 = sub_1E5FED46C(&qword_1ED079068, &qword_1ED079058, &qword_1E6600A70);
  v19[0] = v15;
  v19[1] = v16;
  swift_getOpaqueTypeConformance2();
  sub_1E5FEE4C8(v12);
  v17 = *(v8 + 8);
  v17(v12, v7);
  sub_1E5FEE4C8(v14);
  return (v17)(v14, v7);
}

uint64_t objectdestroy_10Tm_0()
{
  v121 = type metadata accessor for AppComposer();
  v119 = *(*(v121 - 1) + 80);
  v1 = (v119 + 16) & ~v119;
  v2 = *(*(v121 - 1) + 64);
  v3 = sub_1E65E0B48();
  v118 = *(*(v3 - 8) + 80);
  v116 = v1 + v2 + v118;
  v117 = *(*(v3 - 8) + 64);
  v120 = v0;
  v113 = v0 + v1;
  v4 = *(v0 + v1);

  v5 = (v0 + v1 + v121[5]);
  v6 = *v5;
  swift_unknownObjectRelease();
  v7 = type metadata accessor for AppEnvironment();
  v8 = v7[6];
  v115 = type metadata accessor for AccountService();
  v114 = *(v115[-1].Description + 1);
  v114(v5 + v8, v115);
  v9 = v7[7];
  v112 = type metadata accessor for AppStateService();
  v111 = *(v112[-1].Description + 1);
  v111(v5 + v9, v112);
  v10 = v7[8];
  v110 = type metadata accessor for ArchivedSessionService();
  v109 = *(v110[-1].Description + 1);
  v109(v5 + v10, v110);
  v11 = v7[9];
  v108 = type metadata accessor for AssetService();
  v107 = *(v108[-1].Description + 1);
  v107(v5 + v11, v108);
  v12 = v7[10];
  v106 = type metadata accessor for AwardsService();
  v105 = *(v106[-1].Description + 1);
  v105(v5 + v12, v106);
  v13 = v7[11];
  v104 = type metadata accessor for BookmarkService();
  v103 = *(v104[-1].Description + 1);
  v103(v5 + v13, v104);
  v14 = v7[12];
  v102 = type metadata accessor for CatalogService();
  v101 = *(v102[-1].Description + 1);
  v101(v5 + v14, v102);
  v15 = v7[13];
  v100 = type metadata accessor for ConfigurationService();
  v99 = *(v100[-1].Description + 1);
  v99(v5 + v15, v100);
  v16 = v7[14];
  v98 = type metadata accessor for ContentAvailabilityService();
  v97 = *(v98[-1].Description + 1);
  v97(v5 + v16, v98);
  v17 = v7[15];
  v96 = type metadata accessor for EngagementService();
  v95 = *(v96[-1].Description + 1);
  v95(v5 + v17, v96);
  v18 = v7[16];
  v94 = type metadata accessor for HealthDataService();
  v93 = *(v94[-1].Description + 1);
  v93(v5 + v18, v94);
  v19 = v7[17];
  v92 = type metadata accessor for InteropService();
  v91 = *(v92[-1].Description + 1);
  v91(v5 + v19, v92);
  v20 = v7[18];
  v90 = type metadata accessor for LocalizationService();
  v89 = *(v90[-1].Description + 1);
  v89(v5 + v20, v90);
  v21 = v7[19];
  v88 = type metadata accessor for MarketingService();
  v87 = *(v88[-1].Description + 1);
  v87(v5 + v21, v88);
  v22 = v7[20];
  v86 = type metadata accessor for MetricService();
  v85 = *(v86[-1].Description + 1);
  v85(v5 + v22, v86);
  v23 = v7[21];
  v84 = type metadata accessor for PersonalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(v5 + v23, v84);
  v24 = v7[22];
  v82 = type metadata accessor for PlayerService();
  v81 = *(v82[-1].Description + 1);
  v81(v5 + v24, v82);
  v25 = v7[23];
  v80 = type metadata accessor for PrivacyPreferenceService();
  v79 = *(v80[-1].Description + 1);
  v79(v5 + v25, v80);
  v26 = v7[24];
  v78 = type metadata accessor for RecommendationService();
  v77 = *(v78[-1].Description + 1);
  v77(v5 + v26, v78);
  v27 = v7[25];
  v76 = type metadata accessor for RemoteBrowsingService();
  v75 = *(v76[-1].Description + 1);
  v75(v5 + v27, v76);
  v28 = v7[26];
  v74 = type metadata accessor for SearchService();
  v73 = *(v74[-1].Description + 1);
  v73(v5 + v28, v74);
  v29 = v7[27];
  v72 = type metadata accessor for ServiceSubscriptionService();
  v71 = *(v72[-1].Description + 1);
  v71(v5 + v29, v72);
  v30 = v7[28];
  v65 = type metadata accessor for SessionService();
  v70 = *(v65[-1].Description + 1);
  v70(v5 + v30, v65);
  v31 = v7[29];
  v32 = type metadata accessor for SharePlayService();
  v69 = *(v32[-1].Description + 1);
  v69(v5 + v31, v32);
  v33 = v7[30];
  v34 = type metadata accessor for SiriService();
  v68 = *(v34[-1].Description + 1);
  v68(v5 + v33, v34);
  v35 = v7[31];
  v36 = type metadata accessor for SyncService();
  v67 = *(v36[-1].Description + 1);
  v67(v5 + v35, v36);
  v37 = (v5 + v7[32]);
  v38 = v37[1];

  v39 = v37[3];

  v40 = v37[5];

  v41 = v7[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v66 = *(QueueService[-1].Description + 1);
  v66(v5 + v41, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v5 + v7[34]));
  v43 = *(v5 + v7[35]);

  v44 = v7[36];
  v45 = type metadata accessor for WorkoutPlanService();
  v64 = *(v45[-1].Description + 1);
  v64(v5 + v44, v45);
  v46 = *(v113 + v121[6]);

  v47 = (v113 + v121[7]);
  v48 = *v47;

  v49 = v47[1];

  v50 = (v47 + *(type metadata accessor for AppDataItemResolver() + 24));
  v51 = *v50;
  swift_unknownObjectRelease();
  v114(v50 + v7[6], v115);
  v111(v50 + v7[7], v112);
  v109(v50 + v7[8], v110);
  v107(v50 + v7[9], v108);
  v105(v50 + v7[10], v106);
  v103(v50 + v7[11], v104);
  v101(v50 + v7[12], v102);
  v99(v50 + v7[13], v100);
  v97(v50 + v7[14], v98);
  v95(v50 + v7[15], v96);
  v93(v50 + v7[16], v94);
  v91(v50 + v7[17], v92);
  v89(v50 + v7[18], v90);
  v87(v50 + v7[19], v88);
  v85(v50 + v7[20], v86);
  v83(v50 + v7[21], v84);
  v81(v50 + v7[22], v82);
  v79(v50 + v7[23], v80);
  v77(v50 + v7[24], v78);
  v75(v50 + v7[25], v76);
  v73(v50 + v7[26], v74);
  v71(v50 + v7[27], v72);
  v70(v50 + v7[28], v65);
  v69(v50 + v7[29], v32);
  v68(v50 + v7[30], v34);
  v67(v50 + v7[31], v36);
  v52 = (v50 + v7[32]);
  v53 = v52[1];

  v54 = v52[3];

  v55 = v52[5];

  v66(v50 + v7[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v50 + v7[34]));
  v56 = *(v50 + v7[35]);

  v64(v50 + v7[36], v45);
  v57 = *(v113 + v121[8]);
  swift_unknownObjectRelease();
  if (*(v113 + v121[9] + 8) >= 0xCuLL)
  {
  }

  v58 = v116 & ~v118;
  v59 = (v113 + v121[10]);
  if (v59[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v59);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6 && EnumCaseMultiPayload != 7)
    {
      goto LABEL_15;
    }

LABEL_14:
    v62 = *(v120 + v58 + 8);

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload > 1 || !EnumCaseMultiPayload)
  {
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v61 = sub_1E65E0FD8();
    (*(*(v61 - 8) + 8))(v120 + v58, v61);
  }

LABEL_15:
  __swift_destroy_boxed_opaque_existential_1((v120 + ((v117 + v58 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1E64CE7FC(uint64_t *a1)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1E65E0B48() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  return sub_1E64CD818(a1, v1 + v4, v1 + v7, v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1E64CE900(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v46 = a4;
  v47 = a7;
  v45 = a2;
  v12 = type metadata accessor for AppComposer();
  v51 = *(v12 - 8);
  v50 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v49 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A640, &qword_1E6606FC8);
  v54 = *(v14 - 8);
  v55 = v14;
  v15 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v43 - v16;
  v17 = sub_1E65E3188();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v43 = sub_1E65E3278();
  v53 = *(v43 - 8);
  v19 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v48 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *a1;
  sub_1E5DF650C(a6, v56);
  v21 = swift_allocObject();
  sub_1E5DF599C(v56, v21 + 16);

  sub_1E65E3178();
  sub_1E65E3268();
  v22 = swift_allocObject();
  v23 = v47;
  *(v22 + 16) = v47;
  *(v22 + 24) = a8;
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = a8;
  type metadata accessor for AppFeature();
  sub_1E64D073C(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v47 = sub_1E64D073C(&qword_1ED07A648, MEMORY[0x1E699EB88]);
  swift_bridgeObjectRetain_n();
  sub_1E65E4DE8();
  v25 = v49;
  sub_1E5E1DDDC(a1, v49, type metadata accessor for AppComposer);
  v26 = *a9;
  v27 = a9[3];
  v28 = a9[5];
  v29 = a9[7];
  v30 = a9[9];
  v31 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v32 = (v50 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_1E5E1EAD8(v25, v33 + v31, type metadata accessor for AppComposer);
  v34 = (v33 + v32);
  v35 = *(a9 + 3);
  v34[2] = *(a9 + 2);
  v34[3] = v35;
  v34[4] = *(a9 + 4);
  v36 = *(a9 + 1);
  *v34 = *a9;
  v34[1] = v36;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1E64D0574;
  *(v37 + 24) = v33;

  v38 = v48;
  v40 = v43;
  v39 = v44;
  v41 = sub_1E65E4F08();

  (*(v54 + 8))(v39, v55);
  (*(v53 + 8))(v38, v40);
  return v41;
}

void sub_1E64CEE54()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = sub_1E65D7448();
  sub_1E6428210(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1E64D073C(&qword_1ED071D68, type metadata accessor for OpenExternalURLOptionsKey);
  v2 = sub_1E65E5AF8();

  [v0 openURL:v1 options:v2 completionHandler:0];
}

uint64_t sub_1E64CEF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for RouteDestination();
  v4[10] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64CEFF8, 0, 0);
}

uint64_t sub_1E64CEFF8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v21 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v24 = *(v0 + 80);
  v25 = v2[3];
  v26 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v25);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
  v6 = v5[12];
  v7 = (v1 + v5[16]);
  v20 = v5[20];
  v8 = (v1 + v5[24]);
  v9 = (v1 + v5[28]);
  v22 = v5[32];
  v23 = v5[36];
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
  sub_1E5FEE0FC();
  sub_1E65E6848();
  v10 = sub_1E65D74E8();
  (*(*(v10 - 8) + 16))(v1 + v6, v21, v10);
  v11 = sub_1E65DB3E8();
  *v7 = 0;
  v7[1] = 0;
  (*(*(v11 - 8) + 56))(v1 + v20, 1, 1, v11);
  *v8 = v3;
  v8[1] = v4;
  *v9 = v3;
  v9[1] = v4;
  v12 = *MEMORY[0x1E69CD548];
  v13 = sub_1E65DB5D8();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v1 + v22, v12, v13);
  (*(v14 + 56))(v1 + v22, 0, 1, v13);
  v15 = sub_1E65D7A38();
  (*(*(v15 - 8) + 56))(v1 + v23, 1, 1, v15);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v16 = *(v24 + 20);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(v24 + 24)) = MEMORY[0x1E69E7CD0];
  *(v0 + 32) = 2;
  *(v0 + 40) = -64;
  sub_1E600F5B0((v0 + 41));
  swift_bridgeObjectRetain_n();
  v17 = swift_task_alloc();
  *(v0 + 96) = v17;
  *v17 = v0;
  v17[1] = sub_1E64CF344;
  v18 = *(v0 + 88);

  return RoutingContext.presentDestination(_:style:priority:)(v18, (v0 + 32), (v0 + 41), v25, v26);
}

uint64_t sub_1E64CF344()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *v1;
  v4[13] = v0;

  sub_1E64D0454(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63F6814, 0, 0);
  }

  else
  {
    v5 = v4[11];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_1E64CF4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v50 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v45 - v12;
  v14 = sub_1E65D7848();
  v46 = *(v14 - 8);
  v47 = v14;
  v15 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E65E3288();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v52 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E65E3208();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v51 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079510, &qword_1E6601648);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v45 - v26;
  v28 = type metadata accessor for AppState();
  v29 = a1;
  v30 = *(a1 + v28[32]);
  if (*(v30 + 16) && (v31 = sub_1E6215038(a2, v50), (v32 & 1) != 0))
  {
    v33 = v31;
    v34 = *(v30 + 56);
    v35 = sub_1E65E31D8();
    v36 = *(v35 - 8);
    (*(v36 + 16))(v27, v34 + *(v36 + 72) * v33, v35);
    (*(v36 + 56))(v27, 0, 1, v35);
    return (*(v36 + 32))(v49, v27, v35);
  }

  else
  {
    v45 = a2;
    v38 = sub_1E65E31D8();
    v39 = *(v38 - 8);
    (*(v39 + 56))(v27, 1, 1, v38);
    v40 = v29 + v28[6];
    sub_1E63787D0();
    (*(v18 + 104))(v52, *MEMORY[0x1E699EB90], v17);
    v41 = v28[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
    sub_1E65E4C98();
    sub_1E5E1F544(v13);
    sub_1E5DFE50C(v9, &qword_1ED071F78, &unk_1E65EA3F0);
    v43 = v46;
    v42 = v47;
    v44 = *(v46 + 48);
    if (v44(v13, 1, v47) == 1)
    {
      sub_1E65D77C8();
      if (v44(v13, 1, v42) != 1)
      {
        sub_1E5DFE50C(v13, &qword_1ED071F80, &unk_1E65F4310);
      }
    }

    else
    {
      (*(v43 + 32))(v48, v13, v42);
    }

    sub_1E65E31C8();
    result = (*(v39 + 48))(v27, 1, v38);
    if (result != 1)
    {
      return sub_1E5DFE50C(v27, &qword_1ED079510, &qword_1E6601648);
    }
  }

  return result;
}

uint64_t sub_1E64CFA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079510, &qword_1E6601648);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - v9;
  v11 = sub_1E65E31D8();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a2, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  LODWORD(a2) = *(type metadata accessor for AppState() + 128);

  return sub_1E640941C(v10, a3, a4);
}

uint64_t sub_1E64CFB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_1E65E31E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v26 - v12;
  v14 = sub_1E65E60A8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_1E5E1DDDC(a1, v9, MEMORY[0x1E699EB78]);
  v15 = *a4;
  v16 = a4[3];
  v17 = a4[5];
  v18 = a4[7];
  v26[1] = a4[9];
  v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_1E5E1EAD8(v9, v21 + v19, MEMORY[0x1E699EB78]);
  v22 = (v21 + v20);
  v23 = *(a4 + 3);
  v22[2] = *(a4 + 2);
  v22[3] = v23;
  v22[4] = *(a4 + 4);
  v24 = *(a4 + 1);
  *v22 = *a4;
  v22[1] = v24;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v13, &unk_1E6606FE0, v21);
}

uint64_t sub_1E64CFD8C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ArtworkContent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArtworkDescriptor();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E64FD718(v7);
  v13 = *(a1 + *(type metadata accessor for AppComposer() + 20) + 8);
  v14 = sub_1E65DAE38();
  v15 = sub_1E65DAE38();
  v16 = sub_1E65E4B48();
  v17 = 4.0;
  if (v16)
  {
    v17 = 8.0;
  }

  v18 = 16.0;
  if (v16)
  {
    v18 = 18.0;
  }

  if (v14 == v15)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  if (v14 == v15)
  {
    v20 = 12.0;
  }

  else
  {
    v20 = 8.0;
  }

  sub_1E5E1EAD8(v7, v12, type metadata accessor for ArtworkContent);
  *(v12 + v9[7]) = MEMORY[0x1E69E7CD0];
  v21 = (v12 + v9[8]);
  *v21 = 0.0;
  v21[1] = v19;
  v21[2] = v19;
  v21[3] = v20;
  *(v12 + v9[9]) = 1;
  v22 = (v12 + v9[10]);
  *v22 = 0;
  v22[1] = 0;
  sub_1E64D2DD0(v12, a1, a2);
  v23 = sub_1E65E4B98();
  v25 = v24;
  v26 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
  sub_1E64D54B4(v12, a1, v26);
  sub_1E64D0454(v12, type metadata accessor for ArtworkDescriptor);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v28 = (v26 + *(result + 36));
  *v28 = v23;
  v28[1] = v25;
  return result;
}

uint64_t sub_1E64CFFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  v13(v12);
  sub_1E5FEE4C8(v9);
  v14 = *(v5 + 8);
  v14(v9, a4);
  sub_1E5FEE4C8(v11);
  return (v14)(v11, a4);
}

uint64_t sub_1E64D0100()
{
  v0 = sub_1E65E15B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760C0, &qword_1E65F4958);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EB9E0;

  v6 = sub_1E65E4458();
  *(inited + 32) = v6;
  v7 = sub_1E65E4448();
  *(inited + 33) = v7;
  sub_1E65E4478();
  sub_1E65E4478();
  if (sub_1E65E4478() != v6)
  {
    sub_1E65E4478();
  }

  sub_1E65E4478();
  if (sub_1E65E4478() != v7)
  {
    sub_1E65E4478();
  }

  sub_1E65E15A8();
  v8 = sub_1E64D073C(&qword_1ED078010, MEMORY[0x1E699E8C8]);
  MEMORY[0x1E69482C0](v4, v0, v8);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1E64D02F4()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E64CE900((v0 + v2), *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), v0 + v5, *(v0 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), (v0 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E64D03BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E64CFD8C(v4, a1);
}

uint64_t sub_1E64D0454(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E64D04B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E64CEF60(a1, a2, a3, v3 + 16);
}

uint64_t sub_1E64D0574(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E64CFB48(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E64D0620(uint64_t a1)
{
  v4 = *(sub_1E65E31E8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E61F966C(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_1E64D073C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E64D0790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v173 = a2;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074488, &qword_1E65F0BE8);
  v7 = *(*(v158 - 8) + 64);
  MEMORY[0x1EEE9AC00](v158);
  v157 = v156 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A6B0, &qword_1E6607138);
  v160 = *(v9 - 8);
  v161 = v9;
  v10 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v159 = v156 - v11;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074480, &qword_1E65F0BE0);
  v12 = *(*(v180 - 8) + 64);
  MEMORY[0x1EEE9AC00](v180);
  v162 = v156 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A6B8, &qword_1E6607140);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v156 - v16;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A6C0, &qword_1E6607148);
  v18 = *(*(v177 - 8) + 64);
  MEMORY[0x1EEE9AC00](v177);
  v178 = v156 - v19;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074438, &qword_1E65F0BA0);
  v20 = *(*(v184 - 8) + 64);
  MEMORY[0x1EEE9AC00](v184);
  v179 = v156 - v21;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776B0, &unk_1E65EDE50);
  v22 = *(*(v174 - 8) + 64);
  MEMORY[0x1EEE9AC00](v174);
  v182 = v156 - v23;
  v181 = sub_1E65E4548();
  v24 = *(v181 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v27 = v156 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1E65D7848();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = sub_1E65E5C28();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A6C8, &qword_1E6607150);
  v168 = *(v32 - 8);
  v169 = v32;
  v33 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v167 = v156 - v34;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074458, &qword_1E65F0BC0);
  v35 = *(*(v166 - 8) + 64);
  MEMORY[0x1EEE9AC00](v166);
  v170 = v156 - v36;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074440, &qword_1E65F0BA8);
  v37 = *(*(v175 - 8) + 64);
  MEMORY[0x1EEE9AC00](v175);
  v171 = v156 - v38;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A6D0, &qword_1E6607158);
  v172 = *(v176 - 8);
  v39 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v183 = v156 - v40;
  if (sub_1E637E938(1, a1))
  {
    v164 = v17;
    v165 = a4;
    v163 = v14;
    if (a3)
    {
      v41 = a3;
      v42 = v173;
    }

    else
    {
      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v101 = [objc_opt_self() bundleForClass_];
      v102 = *v156[1];
      swift_getKeyPath();
      sub_1E65E4EC8();

      v42 = sub_1E65E5D48();
    }

    *&v192 = v42;
    *(&v192 + 1) = v41;
    sub_1E5F9AEA8();

    v103 = sub_1E65E46B8();
    v105 = v104;
    v107 = v106;
    sub_1E65E4568();
    sub_1E65E44B8();

    v108 = v181;
    (*(v24 + 104))(v27, *MEMORY[0x1E6980EA8], v181);
    sub_1E65E4578();

    (*(v24 + 8))(v27, v108);
    v109 = sub_1E65E4668();
    v111 = v110;
    v113 = v112;

    sub_1E6012728(v103, v105, v107 & 1);

    *&v192 = sub_1E65E49A8();
    v114 = sub_1E65E4648();
    v116 = v115;
    v118 = v117;
    v120 = v119;
    sub_1E6012728(v109, v111, v113 & 1);

    v121 = sub_1E65E4428();
    sub_1E65E3BF8();
    v123 = v122;
    v125 = v124;
    v127 = v126;
    v129 = v128;
    v200 = v118 & 1;
    v199 = 0;
    LOBYTE(v109) = sub_1E65E4488();
    sub_1E65E3BF8();
    v201 = 0;
    *&v185 = v114;
    *(&v185 + 1) = v116;
    LOBYTE(v186) = v118 & 1;
    *(&v186 + 1) = v120;
    LOBYTE(v187) = v121;
    *(&v187 + 1) = v123;
    *&v188 = v125;
    *(&v188 + 1) = v127;
    *&v189 = v129;
    BYTE8(v189) = 0;
    LOBYTE(v190) = v109;
    *(&v190 + 1) = v130;
    *&v191[0] = v131;
    *(&v191[0] + 1) = v132;
    *&v191[1] = v133;
    BYTE8(v191[1]) = 0;
    v134 = *MEMORY[0x1E697E728];
    v135 = sub_1E65E3DD8();
    v136 = v182;
    (*(*(v135 - 8) + 104))(v182, v134, v135);
    sub_1E64D5E48(&qword_1EE2D4EF0, MEMORY[0x1E697E730]);
    result = sub_1E65E5B98();
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074460, &qword_1E65F0BC8);
      sub_1E60C0CA8();
      sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50);
      v137 = v167;
      sub_1E65E4848();
      sub_1E5DFE50C(v136, &unk_1ED0776B0, &unk_1E65EDE50);
      v196 = v189;
      v197 = v190;
      v198[0] = v191[0];
      *(v198 + 9) = *(v191 + 9);
      v192 = v185;
      v193 = v186;
      v194 = v187;
      v195 = v188;
      sub_1E5DFE50C(&v192, &qword_1ED074460, &qword_1E65F0BC8);
      v138 = v170;
      v139 = &v170[*(v166 + 36)];
      sub_1E65E4B38();
      v140 = sub_1E65E4438();
      v139[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073AA8, &qword_1E6600E10) + 36)] = v140;
      (*(v168 + 32))(v138, v137, v169);
      KeyPath = swift_getKeyPath();
      v142 = v175;
      v143 = v171;
      v144 = &v171[*(v175 + 36)];
      v145 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074470, &qword_1E65F0BD8) + 28);
      v146 = *MEMORY[0x1E697DBB8];
      v147 = sub_1E65E3C28();
      (*(*(v147 - 8) + 104))(v144 + v145, v146, v147);
      *v144 = KeyPath;
      sub_1E5FAB460(v138, v143, &qword_1ED074458, &qword_1E65F0BC0);
      sub_1E65E4B58();
      v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074448, &qword_1E65F0BB0);
      v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074450, &qword_1E65F0BB8);
      v182 = sub_1E60C0A9C();
      v149 = sub_1E60C0DB8();
      v155 = sub_1E60C0E70();
      v150 = v183;
      sub_1E65E4928();
      sub_1E5DFE50C(v143, &qword_1ED074440, &qword_1E65F0BA8);
      v151 = v172;
      v152 = v176;
      (*(v172 + 16))(v178, v150, v176);
      swift_storeEnumTagMultiPayload();
      *&v185 = v142;
      *(&v185 + 1) = MEMORY[0x1E6981CD8];
      *&v186 = v148;
      *(&v186 + 1) = v181;
      *&v187 = v182;
      *(&v187 + 1) = MEMORY[0x1E6981CD0];
      *&v188 = v149;
      *(&v188 + 1) = v155;
      swift_getOpaqueTypeConformance2();
      sub_1E60C0F28();
      v153 = v179;
      sub_1E65E4138();
      sub_1E5DFD1CC(v153, v164, &qword_1ED074438, &qword_1E65F0BA0);
      swift_storeEnumTagMultiPayload();
      sub_1E60C0968();
      sub_1E65E4138();
      sub_1E5DFE50C(v153, &qword_1ED074438, &qword_1E65F0BA0);
      return (*(v151 + 8))(v183, v152);
    }

    __break(1u);
  }

  else
  {
    if ((sub_1E637E938(3, a1) & 1) == 0)
    {
      swift_storeEnumTagMultiPayload();
      sub_1E60C0968();
      return sub_1E65E4138();
    }

    v163 = v14;
    v164 = v17;
    v165 = a4;
    sub_1E65E4A18();
    v43 = sub_1E65E46C8();
    v45 = v44;
    v47 = v46;
    sub_1E65E4568();
    sub_1E65E44B8();

    v48 = v181;
    (*(v24 + 104))(v27, *MEMORY[0x1E6980EA8], v181);
    sub_1E65E4578();

    (*(v24 + 8))(v27, v48);
    v49 = sub_1E65E4668();
    v51 = v50;
    v53 = v52;
    v55 = v54;

    sub_1E6012728(v43, v45, v47 & 1);

    *&v192 = v49;
    *(&v192 + 1) = v51;
    v56 = v53 & 1;
    LOBYTE(v193) = v53 & 1;
    *(&v193 + 1) = v55;
    v57 = *MEMORY[0x1E697E728];
    v58 = sub_1E65E3DD8();
    v59 = v182;
    (*(*(v58 - 8) + 104))(v182, v57, v58);
    sub_1E64D5E48(&qword_1EE2D4EF0, MEMORY[0x1E697E730]);
    result = sub_1E65E5B98();
    if (result)
    {
      sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50);
      v61 = v157;
      sub_1E65E4848();
      sub_1E5DFE50C(v59, &unk_1ED0776B0, &unk_1E65EDE50);
      sub_1E6012728(v49, v51, v56);

      v62 = sub_1E65E49A8();
      *(v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0744B8, &qword_1E65F0C18) + 36)) = v62;
      LOBYTE(v62) = sub_1E65E4428();
      sub_1E65E3BF8();
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v71 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0744B0, &qword_1E65F0C10) + 36);
      *v71 = v62;
      *(v71 + 8) = v64;
      *(v71 + 16) = v66;
      *(v71 + 24) = v68;
      *(v71 + 32) = v70;
      *(v71 + 40) = 0;
      LOBYTE(v62) = sub_1E65E4488();
      sub_1E65E3BF8();
      v73 = v72;
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v80 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0744A8, &qword_1E65F0C08) + 36);
      *v80 = v62;
      *(v80 + 8) = v73;
      *(v80 + 16) = v75;
      *(v80 + 24) = v77;
      *(v80 + 32) = v79;
      *(v80 + 40) = 0;
      v81 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0744A0, &qword_1E65F0C00) + 36);
      sub_1E65E4B38();
      v82 = sub_1E65E4438();
      *(v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073AA8, &qword_1E6600E10) + 36)) = v82;
      v83 = swift_getKeyPath();
      v84 = v158;
      v85 = (v61 + *(v158 + 36));
      v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074470, &qword_1E65F0BD8) + 28);
      v87 = *MEMORY[0x1E697DBB8];
      v88 = sub_1E65E3C28();
      (*(*(v88 - 8) + 104))(v85 + v86, v87, v88);
      *v85 = v83;
      sub_1E65E4B58();
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074490, &qword_1E65F0BF0);
      v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074498, &qword_1E65F0BF8);
      v183 = sub_1E60C108C();
      v90 = sub_1E60C1450();
      v154 = sub_1E60C1508();
      v91 = v159;
      sub_1E65E4928();
      sub_1E5DFE50C(v61, &qword_1ED074488, &qword_1E65F0BE8);
      sub_1E65E3F98();
      *&v192 = v84;
      *(&v192 + 1) = MEMORY[0x1E6981CD8];
      *&v193 = v89;
      *(&v193 + 1) = v182;
      *&v194 = v183;
      *(&v194 + 1) = MEMORY[0x1E6981CD0];
      *&v195 = v90;
      *(&v195 + 1) = v154;
      v183 = MEMORY[0x1E6981460];
      swift_getOpaqueTypeConformance2();
      v92 = v161;
      v93 = v162;
      sub_1E65E4858();

      (*(v160 + 8))(v91, v92);
      sub_1E5DFD1CC(v93, v178, &qword_1ED074480, &qword_1E65F0BE0);
      swift_storeEnumTagMultiPayload();
      v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074448, &qword_1E65F0BB0);
      v95 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074450, &qword_1E65F0BB8);
      v96 = sub_1E60C0A9C();
      v97 = sub_1E60C0DB8();
      v98 = sub_1E60C0E70();
      *&v192 = v175;
      *(&v192 + 1) = MEMORY[0x1E6981CD8];
      *&v193 = v94;
      *(&v193 + 1) = v95;
      *&v194 = v96;
      *(&v194 + 1) = MEMORY[0x1E6981CD0];
      *&v195 = v97;
      *(&v195 + 1) = v98;
      swift_getOpaqueTypeConformance2();
      sub_1E60C0F28();
      v99 = v179;
      sub_1E65E4138();
      sub_1E5DFD1CC(v99, v164, &qword_1ED074438, &qword_1E65F0BA0);
      swift_storeEnumTagMultiPayload();
      sub_1E60C0968();
      sub_1E65E4138();
      sub_1E5DFE50C(v99, &qword_1ED074438, &qword_1E65F0BA0);
      return sub_1E5DFE50C(v93, &qword_1ED074480, &qword_1E65F0BE0);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E64D1B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A690, &qword_1E6607060);
  v121 = *(v123 - 8);
  v4 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v120 = &v119 - v5;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074520, &qword_1E65F0C80);
  v6 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119);
  v122 = &v119 - v7;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074518, &qword_1E65F0C78);
  v8 = *(*(v124 - 8) + 64);
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v119 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074510, &qword_1E65F0C70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v126 = &v119 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A698, &qword_1E6607068);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v119 - v15;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A6A0, &qword_1E6607070);
  v17 = *(*(v146 - 8) + 64);
  MEMORY[0x1EEE9AC00](v146);
  v147 = &v119 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0744C0, &qword_1E65F0C20);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v119 - v21;
  v23 = sub_1E65D7848();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v143 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E65E5C28();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v142 = &v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776B0, &unk_1E65EDE50);
  v29 = *(*(v141 - 8) + 64);
  MEMORY[0x1EEE9AC00](v141);
  v31 = &v119 - v30;
  v133 = sub_1E65E4548();
  v132 = *(v133 - 8);
  v32 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v34 = &v119 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074500, &qword_1E65F0C60);
  v35 = *(*(v134 - 8) + 64);
  MEMORY[0x1EEE9AC00](v134);
  v37 = &v119 - v36;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0744D0, &qword_1E65F0C30);
  v38 = *(*(v148 - 8) + 64);
  MEMORY[0x1EEE9AC00](v148);
  v127 = &v119 - v39;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A6A8, &qword_1E6607078);
  v129 = *(v130 - 8);
  v40 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v119 - v41;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0744C8, &qword_1E65F0C28);
  v42 = *(*(v144 - 8) + 64);
  MEMORY[0x1EEE9AC00](v144);
  v131 = &v119 - v43;
  if ((sub_1E637E938(2, a1) & 1) == 0)
  {
    if ((sub_1E637E938(0, a1) & 1) == 0 && (sub_1E637E938(4, a1) & 1) == 0)
    {
      swift_storeEnumTagMultiPayload();
      sub_1E60C164C();
      return sub_1E65E4138();
    }

    v135 = v22;
    v136 = v10;
    v137 = v19;
    v138 = v13;
    v139 = v16;
    v140 = a2;
    sub_1E65E4B48();
    sub_1E65E4A18();
    v85 = sub_1E65E46C8();
    v87 = v86;
    v89 = v88;
    LODWORD(v149) = sub_1E65E41D8();
    v90 = sub_1E65E4648();
    v92 = v91;
    v94 = v93;
    sub_1E6012728(v85, v87, v89 & 1);

    sub_1E65E4558();
    sub_1E65E44B8();

    v95 = sub_1E65E4668();
    v97 = v96;
    LOBYTE(v85) = v98;
    v100 = v99;

    sub_1E6012728(v90, v92, v94 & 1);

    v149 = v95;
    v150 = v97;
    v101 = v85 & 1;
    LOBYTE(v151) = v85 & 1;
    v152 = v100;
    v102 = *MEMORY[0x1E697E728];
    v103 = sub_1E65E3DD8();
    (*(*(v103 - 8) + 104))(v31, v102, v103);
    sub_1E64D5E48(&qword_1EE2D4EF0, MEMORY[0x1E697E730]);
    result = sub_1E65E5B98();
    if (result)
    {
      sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50);
      v104 = v120;
      sub_1E65E4848();
      sub_1E5DFE50C(v31, &unk_1ED0776B0, &unk_1E65EDE50);
      sub_1E6012728(v95, v97, v101);

      v105 = v122;
      v106 = &v122[*(v119 + 36)];
      v107 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073840, &qword_1E65EDBA0) + 28);
      v108 = *MEMORY[0x1E69816E0];
      v109 = sub_1E65E4A28();
      (*(*(v109 - 8) + 104))(v106 + v107, v108, v109);
      *v106 = swift_getKeyPath();
      (*(v121 + 32))(v105, v104, v123);
      [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.435294118 alpha:1.0];
      v110 = sub_1E65E4968();
      v111 = v125;
      sub_1E5FAB460(v105, v125, &qword_1ED074520, &qword_1E65F0C80);
      v112 = v111 + *(v124 + 36);
      *v112 = v110;
      *(v112 + 8) = xmmword_1E6606FF0;
      *(v112 + 24) = 0x4000000000000000;
      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v114 = [objc_opt_self() bundleForClass_];
      v115 = *v145;
      swift_getKeyPath();
      sub_1E65E4EC8();

      v149 = sub_1E65E5D48();
      v150 = v116;
      sub_1E60C1F28();
      sub_1E5F9AEA8();
      v81 = v126;
      sub_1E65E4868();

      sub_1E5DFE50C(v111, &qword_1ED074518, &qword_1E65F0C78);
      v83 = &qword_1ED074510;
      v84 = &qword_1E65F0C70;
      sub_1E5DFD1CC(v81, v147, &qword_1ED074510, &qword_1E65F0C70);
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    return result;
  }

  v135 = v22;
  v136 = v10;
  v137 = v19;
  v138 = v13;
  v139 = v16;
  v140 = a2;
  sub_1E65E49F8();
  v44 = sub_1E65E46C8();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074508, &qword_1E65F0C68) + 36)];
  v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073840, &qword_1E65EDBA0) + 28);
  v53 = *MEMORY[0x1E69816E0];
  v54 = sub_1E65E4A28();
  (*(*(v54 - 8) + 104))(v51 + v52, v53, v54);
  *v51 = swift_getKeyPath();
  *v37 = v44;
  *(v37 + 1) = v46;
  v37[16] = v48 & 1;
  *(v37 + 3) = v50;
  sub_1E65E4568();
  sub_1E65E44B8();

  v55 = v132;
  v56 = v133;
  (*(v132 + 104))(v34, *MEMORY[0x1E6980EA8], v133);
  v57 = sub_1E65E4578();

  (*(v55 + 8))(v34, v56);
  KeyPath = swift_getKeyPath();
  v59 = &v37[*(v134 + 36)];
  *v59 = KeyPath;
  v59[1] = v57;
  v60 = *MEMORY[0x1E697E728];
  v61 = sub_1E65E3DD8();
  (*(*(v61 - 8) + 104))(v31, v60, v61);
  sub_1E64D5E48(&qword_1EE2D4EF0, MEMORY[0x1E697E730]);
  result = sub_1E65E5B98();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1E60C1B8C();
  sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50);
  v63 = v127;
  sub_1E65E4848();
  sub_1E5DFE50C(v31, &unk_1ED0776B0, &unk_1E65EDE50);
  sub_1E5DFE50C(v37, &qword_1ED074500, &qword_1E65F0C60);
  v64 = sub_1E65E49A8();
  *(v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0744F8, &qword_1E65F0C58) + 36)) = v64;
  LOBYTE(v64) = sub_1E65E4438();
  v65 = v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0744F0, &qword_1E65F0C50) + 36);
  *v65 = v64;
  *(v65 + 8) = xmmword_1E6607000;
  *(v65 + 24) = xmmword_1E6607010;
  *(v65 + 40) = 0;
  v66 = v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0744E8, &qword_1E65F0C48) + 36);
  sub_1E65E4B38();
  v67 = sub_1E65E4438();
  *(v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073AA8, &qword_1E6600E10) + 36)) = v67;
  v68 = swift_getKeyPath();
  v69 = (v63 + *(v148 + 36));
  v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074470, &qword_1E65F0BD8) + 28);
  v71 = *MEMORY[0x1E697DBB8];
  v72 = sub_1E65E3C28();
  (*(*(v72 - 8) + 104))(v69 + v70, v71, v72);
  *v69 = v68;
  sub_1E65E4B58();
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0744D8, &qword_1E65F0C38);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0744E0, &qword_1E65F0C40);
  v74 = sub_1E60C183C();
  v75 = sub_1E60C1CFC();
  v118 = sub_1E60C1DB4();
  v76 = v128;
  sub_1E65E4928();
  sub_1E5DFE50C(v63, &qword_1ED0744D0, &qword_1E65F0C30);
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  v77 = swift_getObjCClassFromMetadata();
  v78 = [objc_opt_self() bundleForClass_];
  v79 = *v145;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v157 = sub_1E65E5D48();
  v158 = v80;
  v149 = v148;
  v150 = MEMORY[0x1E6981CD8];
  v151 = v141;
  v152 = v73;
  v153 = v74;
  v154 = MEMORY[0x1E6981CD0];
  v155 = v75;
  v156 = v118;
  swift_getOpaqueTypeConformance2();
  sub_1E5F9AEA8();
  v81 = v131;
  v82 = v130;
  sub_1E65E4868();

  (*(v129 + 8))(v76, v82);
  v83 = &qword_1ED0744C8;
  v84 = &qword_1E65F0C28;
  sub_1E5DFD1CC(v81, v147, &qword_1ED0744C8, &qword_1E65F0C28);
LABEL_8:
  swift_storeEnumTagMultiPayload();
  sub_1E60C16D8();
  sub_1E60C1E6C();
  v117 = v135;
  sub_1E65E4138();
  sub_1E5DFD1CC(v117, v139, &qword_1ED0744C0, &qword_1E65F0C20);
  swift_storeEnumTagMultiPayload();
  sub_1E60C164C();
  sub_1E65E4138();
  sub_1E5DFE50C(v117, &qword_1ED0744C0, &qword_1E65F0C20);
  return sub_1E5DFE50C(v81, v83, v84);
}

uint64_t sub_1E64D2DD0@<X0>(void (*a1)(unint64_t, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v278 = a2;
  v283 = a3;
  v284 = a1;
  v236 = type metadata accessor for WorkoutPlanArtworkViewRepresentable();
  v3 = *(*(v236 - 8) + 64);
  MEMORY[0x1EEE9AC00](v236);
  v203 = &v200 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077398, &qword_1E65F9C58);
  v5 = *(*(v232 - 8) + 64);
  MEMORY[0x1EEE9AC00](v232);
  v234 = &v200 - v6;
  v235 = sub_1E65E55C8();
  v205 = *(v235 - 8);
  v7 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v235);
  v204 = &v200 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_1E65D9388();
  v227 = *(v228 - 8);
  v9 = *(v227 + 64);
  v10 = MEMORY[0x1EEE9AC00](v228);
  v202 = &v200 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v231 = &v200 - v12;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A0, &unk_1E65FA5B0);
  v13 = *(*(v270 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v270);
  v233 = &v200 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v230 = &v200 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D78, &qword_1E65F38F8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v225 = &v200 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v264 = &v200 - v21;
  v265 = sub_1E65D76F8();
  v237 = *(v265 - 8);
  v22 = *(v237 + 64);
  v23 = MEMORY[0x1EEE9AC00](v265);
  v201 = &v200 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v229 = &v200 - v25;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A6D8, &qword_1E6607160);
  v26 = *(*(v267 - 8) + 64);
  MEMORY[0x1EEE9AC00](v267);
  v268 = &v200 - v27;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778D0, &qword_1E65EBC20);
  v28 = *(*(v282 - 8) + 64);
  MEMORY[0x1EEE9AC00](v282);
  v269 = &v200 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v220 = &v200 - v32;
  v218 = sub_1E65DB288();
  v217 = *(v218 - 8);
  v33 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v218);
  v216 = &v200 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v215 = &v200 - v37;
  v223 = sub_1E65DB048();
  v222 = *(v223 - 8);
  v38 = *(v222 + 64);
  v39 = MEMORY[0x1EEE9AC00](v223);
  v221 = &v200 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = v40;
  MEMORY[0x1EEE9AC00](v39);
  v254 = &v200 - v41;
  v266 = sub_1E65DB118();
  v226 = *(v266 - 8);
  v42 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v266);
  v224 = &v200 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v44 - 8);
  v212 = &v200 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v259 = &v200 - v48;
  v260 = sub_1E65DB268();
  v257 = *(v260 - 8);
  v49 = *(v257 + 64);
  MEMORY[0x1EEE9AC00](v260);
  v256 = &v200 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A6E0, &qword_1E6607168);
  v51 = *(*(v258 - 8) + 64);
  MEMORY[0x1EEE9AC00](v258);
  v261 = (&v200 - v52);
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072798, &qword_1E65EBC18);
  v53 = *(*(v277 - 8) + 64);
  MEMORY[0x1EEE9AC00](v277);
  v263 = &v200 - v54;
  v255 = sub_1E65DB748();
  v253 = *(v255 - 8);
  v55 = *(v253 + 64);
  v56 = MEMORY[0x1EEE9AC00](v255);
  v246 = &v200 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x1EEE9AC00](v56);
  v247 = &v200 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v242 = &v200 - v60;
  MEMORY[0x1EEE9AC00](v59);
  v244 = &v200 - v61;
  v262 = sub_1E65DAFB8();
  v214 = *(v262 - 8);
  v62 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v262);
  v213 = &v200 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
  v250 = *(v251 - 8);
  v64 = *(v250 + 64);
  v65 = MEMORY[0x1EEE9AC00](v251);
  v211 = &v200 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v249 = &v200 - v66;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A6E8, &qword_1E6607170);
  v67 = *(*(v280 - 8) + 64);
  MEMORY[0x1EEE9AC00](v280);
  v281 = &v200 - v68;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A6F0, &qword_1E6607178);
  v69 = *(*(v273 - 8) + 64);
  MEMORY[0x1EEE9AC00](v273);
  v275 = &v200 - v70;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A6F8, &qword_1E6607180);
  v71 = *(*(v243 - 8) + 64);
  MEMORY[0x1EEE9AC00](v243);
  v248 = (&v200 - v72);
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778B0, &qword_1E65EBC10);
  v73 = *(*(v274 - 8) + 64);
  MEMORY[0x1EEE9AC00](v274);
  v252 = &v200 - v74;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778A0, &unk_1E65FA580);
  v75 = *(*(v279 - 8) + 64);
  MEMORY[0x1EEE9AC00](v279);
  v276 = &v200 - v76;
  v240 = type metadata accessor for AppComposer();
  v271 = *(v240 - 8);
  v77 = *(v271 + 64);
  v78 = MEMORY[0x1EEE9AC00](v240);
  v79 = &v200 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v78);
  v272 = &v200 - v80;
  v241 = sub_1E65DBDF8();
  v208 = *(v241 - 8);
  v81 = *(v208 + 64);
  v82 = MEMORY[0x1EEE9AC00](v241);
  v206 = &v200 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v82);
  v238 = &v200 - v83;
  v239 = sub_1E65DBB28();
  v207 = *(v239 - 8);
  v84 = *(v207 + 64);
  v85 = MEMORY[0x1EEE9AC00](v239);
  v86 = &v200 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v200 - v87;
  v245 = sub_1E65DB9C8();
  v210 = *(v245 - 8);
  v89 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v245);
  v209 = &v200 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for ArtworkContent();
  v92 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v94 = &v200 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E64D5E90(v284, v94, type metadata accessor for ArtworkContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v132 = *(v94 + 1);
      v284 = *v94;
      v270 = v132;
      v133 = *(v278 + *(v240 + 20) + 8);
      sub_1E65DAE38();
      sub_1E65DAE38();
      sub_1E65DBB08();
      v161 = v278;
      v162 = v272;
      sub_1E64D5E90(v278, v272, type metadata accessor for AppComposer);
      v163 = *(v271 + 80);
      v164 = (v163 + 16) & ~v163;
      v271 = v164;
      v268 = v164 + v77;
      v269 = (v163 | 7);
      v165 = swift_allocObject();
      sub_1E5E1FA80(v162, v165 + v164);
      v166 = v238;
      sub_1E65DBDE8();
      sub_1E64D5E90(v161, v162, type metadata accessor for AppComposer);
      v167 = v208;
      v168 = v206;
      (*(v208 + 16))(v206, v166, v241);
      v169 = v207;
      (*(v207 + 16))(v86, v88, v239);
      v170 = (v268 + *(v167 + 80)) & ~*(v167 + 80);
      v171 = (v81 + v170 + 7) & 0xFFFFFFFFFFFFFFF8;
      v172 = (*(v169 + 80) + v171 + 16) & ~*(v169 + 80);
      v173 = swift_allocObject();
      sub_1E5E1FA80(v162, v173 + v271);
      v174 = v241;
      (*(v167 + 32))(v173 + v170, v168, v241);
      v175 = (v173 + v171);
      v176 = v270;
      *v175 = v284;
      v175[1] = v176;
      v177 = v239;
      (*(v169 + 32))(v173 + v172, v86, v239);
      v178 = v209;
      sub_1E65DB9B8();
      (*(v167 + 8))(v238, v174);
      (*(v169 + 8))(v88, v177);
      v179 = v210;
      v180 = v245;
      (*(v210 + 16))(v248, v178, v245);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072790, &unk_1E65FA590);
      sub_1E64D5E48(qword_1EE2D6BF8, MEMORY[0x1E699D198]);
      sub_1E5FED46C(qword_1EE2D4F50, &qword_1ED072790, &unk_1E65FA590);
      v181 = v252;
      sub_1E65E4138();
      sub_1E5DFD1CC(v181, v275, &unk_1ED0778B0, &qword_1E65EBC10);
      swift_storeEnumTagMultiPayload();
      sub_1E5FEB550();
      sub_1E5FEB638();
      v182 = v276;
      sub_1E65E4138();
      sub_1E5DFE50C(v181, &unk_1ED0778B0, &qword_1E65EBC10);
      sub_1E5DFD1CC(v182, v281, &unk_1ED0778A0, &unk_1E65FA580);
      swift_storeEnumTagMultiPayload();
      sub_1E5FEB4C4();
      sub_1E5FEB7A4();
      sub_1E65E4138();
      sub_1E5DFE50C(v182, &unk_1ED0778A0, &unk_1E65FA580);
      return (*(v179 + 8))(v178, v180);
    }

    if (EnumCaseMultiPayload == 1)
    {
      v96 = v250;
      v97 = *(v250 + 32);
      v272 = v250 + 32;
      v284 = v97;
      v98 = v249;
      v99 = v94;
      v100 = v251;
      v97(v249, v99, v251);
      v101 = v253;
      v102 = v244;
      v103 = v255;
      (*(v253 + 104))(v244, *MEMORY[0x1E69CD5B8], v255);
      sub_1E64D5E90(v278, v79, type metadata accessor for AppComposer);
      (*(v101 + 16))(v242, v102, v103);
      v104 = v211;
      (*(v96 + 16))(v211, v98, v100);
      v105 = (*(v271 + 80) + 16) & ~*(v271 + 80);
      v106 = (v77 + *(v101 + 80) + v105) & ~*(v101 + 80);
      v107 = (v55 + *(v96 + 80) + v106) & ~*(v96 + 80);
      v108 = swift_allocObject();
      sub_1E5E1FA80(v79, v108 + v105);
      (*(v101 + 32))(v108 + v106, v242, v103);
      v109 = v251;
      v284(v108 + v107, v104, v251);
      v110 = 0x2030100u >> (8 * *(v278 + *(v240 + 20) + 8));
      v111 = v213;
      sub_1E65DAFA8();
      (*(v101 + 8))(v244, v103);
      v112 = v214;
      v113 = v262;
      (*(v214 + 16))(v261, v111, v262);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778C0, &unk_1E65FA5A0);
      sub_1E64D5E48(&qword_1EE2D6DC0, MEMORY[0x1E699CFB8]);
      sub_1E5FEB6F4();
      v114 = v263;
      sub_1E65E4138();
      sub_1E5DFD1CC(v114, v275, &qword_1ED072798, &qword_1E65EBC18);
      swift_storeEnumTagMultiPayload();
      sub_1E5FEB550();
      sub_1E5FEB638();
      v115 = v276;
      sub_1E65E4138();
      sub_1E5DFE50C(v114, &qword_1ED072798, &qword_1E65EBC18);
      sub_1E5DFD1CC(v115, v281, &unk_1ED0778A0, &unk_1E65FA580);
      swift_storeEnumTagMultiPayload();
      sub_1E5FEB4C4();
      sub_1E5FEB7A4();
      sub_1E65E4138();
      sub_1E5DFE50C(v115, &unk_1ED0778A0, &unk_1E65FA580);
      (*(v112 + 8))(v111, v113);
      return (*(v250 + 8))(v249, v109);
    }

    v151 = *v94;
    v152 = *(v94 + 1);
    sub_1E6049490();
    v153 = sub_1E63E9F24(v151, v152);
    if (v153)
    {
      v154 = v153;
      v285 = sub_1E65E4968();
      v286 = 256;
      v287 = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072790, &unk_1E65FA590);
      sub_1E5FED46C(qword_1EE2D4F50, &qword_1ED072790, &unk_1E65FA590);
      sub_1E65E4138();
    }

    else
    {
      v193 = [objc_opt_self() tertiarySystemFillColor];
      v285 = sub_1E65E4968();
      v286 = 256;
      v287 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072790, &unk_1E65FA590);
      sub_1E5FED46C(qword_1EE2D4F50, &qword_1ED072790, &unk_1E65FA590);
      sub_1E65E4138();
    }

    v194 = v288;
    v195 = v289;
    v196 = v290;
    v197 = v261;
    *v261 = v288;
    *(v197 + 4) = v195;
    *(v197 + 10) = v196;
    swift_storeEnumTagMultiPayload();
    j__swift_retain(v194);
    j__swift_retain(v194);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778C0, &unk_1E65FA5A0);
    sub_1E64D5E48(&qword_1EE2D6DC0, MEMORY[0x1E699CFB8]);
    sub_1E5FEB6F4();
    v198 = v263;
    sub_1E65E4138();
    sub_1E5DFD1CC(v198, v275, &qword_1ED072798, &qword_1E65EBC18);
    swift_storeEnumTagMultiPayload();
    sub_1E5FEB550();
    sub_1E5FEB638();
    v199 = v276;
    sub_1E65E4138();
    sub_1E5DFE50C(v198, &qword_1ED072798, &qword_1E65EBC18);
    sub_1E5DFD1CC(v199, v281, &unk_1ED0778A0, &unk_1E65FA580);
    swift_storeEnumTagMultiPayload();
    sub_1E5FEB4C4();
    sub_1E5FEB7A4();
    sub_1E65E4138();
    j__swift_release();
    j__swift_release();
    v160 = v199;
    return sub_1E5DFE50C(v160, &unk_1ED0778A0, &unk_1E65FA580);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v134 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
    (*(v257 + 32))(v256, v94, v260);
    v135 = v259;
    sub_1E5FAB460(&v94[v134], v259, &qword_1ED073548, &qword_1E65ED508);
    sub_1E65DB238();
    sub_1E5DFD1CC(v135, v212, &qword_1ED073548, &qword_1E65ED508);
    (*(v217 + 104))(v216, *MEMORY[0x1E699D140], v218);
    sub_1E65DB228();
    v136 = v254;
    sub_1E65DB018();
    v137 = v253;
    v138 = v247;
    v139 = v255;
    (*(v253 + 104))(v247, *MEMORY[0x1E69CD5B8], v255);
    sub_1E64D5E90(v278, v272, type metadata accessor for AppComposer);
    (*(v137 + 16))(v246, v138, v139);
    v140 = v222;
    v141 = v221;
    v142 = v223;
    (*(v222 + 16))(v221, v136, v223);
    v143 = (*(v271 + 80) + 16) & ~*(v271 + 80);
    v144 = (v77 + *(v137 + 80) + v143) & ~*(v137 + 80);
    v145 = (v55 + *(v140 + 80) + v144) & ~*(v140 + 80);
    v146 = swift_allocObject();
    sub_1E5E1FA80(v272, v146 + v143);
    (*(v137 + 32))(v146 + v144, v246, v139);
    (*(v140 + 32))(v146 + v145, v141, v142);
    v147 = v224;
    sub_1E65DB108();
    (*(v137 + 8))(v247, v139);
    (*(v140 + 8))(v254, v142);
    v148 = v226;
    v149 = v266;
    (*(v226 + 16))(v268, v147, v266);
    swift_storeEnumTagMultiPayload();
    sub_1E64D5E48(&qword_1EE2D6DA0, MEMORY[0x1E699D070]);
    sub_1E5FEB860();
    v150 = v269;
    sub_1E65E4138();
    sub_1E5DFD1CC(v150, v281, &unk_1ED0778D0, &qword_1E65EBC20);
    swift_storeEnumTagMultiPayload();
    sub_1E5FEB4C4();
    sub_1E5FEB7A4();
    sub_1E65E4138();
    sub_1E5DFE50C(v150, &unk_1ED0778D0, &qword_1E65EBC20);
    (*(v148 + 8))(v147, v149);
    sub_1E5DFE50C(v259, &qword_1ED073548, &qword_1E65ED508);
    return (*(v257 + 8))(v256, v260);
  }

  if (EnumCaseMultiPayload != 4)
  {
    v155 = [objc_opt_self() tertiarySystemFillColor];
    v156 = sub_1E65E4968();
    v157 = v248;
    *v248 = v156;
    *(v157 + 4) = 256;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072790, &unk_1E65FA590);
    sub_1E64D5E48(qword_1EE2D6BF8, MEMORY[0x1E699D198]);
    sub_1E5FED46C(qword_1EE2D4F50, &qword_1ED072790, &unk_1E65FA590);
    v158 = v252;
    sub_1E65E4138();
    sub_1E5DFD1CC(v158, v275, &unk_1ED0778B0, &qword_1E65EBC10);
    swift_storeEnumTagMultiPayload();
    sub_1E5FEB550();
    sub_1E5FEB638();
    v159 = v276;
    sub_1E65E4138();
    sub_1E5DFE50C(v158, &unk_1ED0778B0, &qword_1E65EBC10);
    sub_1E5DFD1CC(v159, v281, &unk_1ED0778A0, &unk_1E65FA580);
    swift_storeEnumTagMultiPayload();
    sub_1E5FEB4C4();
    sub_1E5FEB7A4();
    sub_1E65E4138();

    v160 = v159;
    return sub_1E5DFE50C(v160, &unk_1ED0778A0, &unk_1E65FA580);
  }

  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DB0, &qword_1E65F3940);
  v118 = *(v117 + 48);
  v119 = *&v94[*(v117 + 64)];
  v120 = v237;
  v121 = v229;
  v122 = v265;
  (*(v237 + 32))(v229, v94, v265);
  v123 = &v94[v118];
  v124 = v264;
  sub_1E5FAB460(v123, v264, &qword_1ED075D78, &qword_1E65F38F8);
  v125 = v124;
  v126 = v225;
  sub_1E5DFD1CC(v125, v225, &qword_1ED075D78, &qword_1E65F38F8);
  v127 = v227;
  v128 = v228;
  if ((*(v227 + 48))(v126, 1, v228) == 1)
  {
    sub_1E5DFE50C(v126, &qword_1ED075D78, &qword_1E65F38F8);
    v129 = v203;
    (*(v120 + 16))(v203, v121, v122);
    *(v129 + *(v236 + 20)) = v119;
    sub_1E64D5E90(v129, v234, type metadata accessor for WorkoutPlanArtworkViewRepresentable);
    swift_storeEnumTagMultiPayload();
    sub_1E64D5E48(&qword_1EE2D49B0, MEMORY[0x1E69CD8A8]);
    sub_1E64D5E48(qword_1EE2D7828, type metadata accessor for WorkoutPlanArtworkViewRepresentable);
    v130 = v233;
    sub_1E65E4138();
    sub_1E627F9AC(v129);
    v131 = v120;
  }

  else
  {
    v183 = v231;
    (*(v127 + 32))(v231, v126, v128);
    (*(v120 + 16))(v201, v121, v122);
    (*(v127 + 16))(v202, v183, v128);
    v184 = sub_1E65E53A8();
    v185 = *(v184 + 48);
    v186 = *(v184 + 52);
    swift_allocObject();
    sub_1E65E5398();

    v187 = v204;
    sub_1E65E55B8();
    v188 = v205;
    v189 = v235;
    (*(v205 + 16))(v234, v187, v235);
    swift_storeEnumTagMultiPayload();
    sub_1E64D5E48(&qword_1EE2D49B0, MEMORY[0x1E69CD8A8]);
    sub_1E64D5E48(qword_1EE2D7828, type metadata accessor for WorkoutPlanArtworkViewRepresentable);
    v130 = v233;
    sub_1E65E4138();

    (*(v188 + 8))(v187, v189);
    (*(v127 + 8))(v231, v128);
    v131 = v237;
  }

  v190 = v121;
  v191 = v230;
  sub_1E5FAB460(v130, v230, &qword_1ED0727A0, &unk_1E65FA5B0);
  sub_1E5DFD1CC(v191, v268, &qword_1ED0727A0, &unk_1E65FA5B0);
  swift_storeEnumTagMultiPayload();
  sub_1E64D5E48(&qword_1EE2D6DA0, MEMORY[0x1E699D070]);
  sub_1E5FEB860();
  v192 = v269;
  sub_1E65E4138();
  sub_1E5DFD1CC(v192, v281, &unk_1ED0778D0, &qword_1E65EBC20);
  swift_storeEnumTagMultiPayload();
  sub_1E5FEB4C4();
  sub_1E5FEB7A4();
  sub_1E65E4138();
  sub_1E5DFE50C(v192, &unk_1ED0778D0, &qword_1E65EBC20);
  sub_1E5DFE50C(v191, &qword_1ED0727A0, &unk_1E65FA5B0);
  sub_1E5DFE50C(v264, &qword_1ED075D78, &qword_1E65F38F8);
  return (*(v131 + 8))(v190, v265);
}

uint64_t sub_1E64D54B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a2;
  v66 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A650, &qword_1E6607020);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A658, &qword_1E6607028);
  v8 = *(*(v58 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v58);
  v61 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A660, &qword_1E6607030);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v60 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - v17;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A668, &qword_1E6607038);
  v19 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v21 = &v51 - v20;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A670, &qword_1E6607040);
  v22 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v24 = &v51 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A678, &qword_1E6607048);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v63 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v64 = &v51 - v29;
  v30 = type metadata accessor for ArtworkDescriptor();
  if (*(a1 + v30[7]) == 1)
  {
    v57 = v25;
    v31 = *(a1 + v30[5]);
    if (*(v31 + 16))
    {
      v32 = *(a1 + v30[8] + 8);
      v51 = *(a1 + v30[8]);
      v52 = v32;
      v33 = (a1 + v30[6]);
      v34 = v33[2];
      v53 = v33[3];
      v54 = v24;
      v56 = v7;
      v36 = *v33;
      v35 = v33[1];
      *v21 = sub_1E65E3F58();
      *(v21 + 1) = 0;
      v21[16] = 0;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A680, &qword_1E6607050) + 44);
      v55 = v4;
      v38 = &v21[v37];
      sub_1E64D0790(v31, v51, v52, v18);
      v39 = sub_1E65E4438();
      v40 = &v18[*(v13 + 36)];
      *v40 = v39;
      *(v40 + 1) = v36;
      *(v40 + 2) = v35;
      v41 = v53;
      *(v40 + 3) = v34;
      *(v40 + 4) = v41;
      v40[40] = 0;
      sub_1E64D1B48(v31, v12);
      v42 = sub_1E65E4438();
      v43 = &v12[*(v58 + 36)];
      *v43 = v42;
      *(v43 + 1) = v36;
      *(v43 + 2) = v35;
      *(v43 + 3) = v34;
      *(v43 + 4) = v41;
      v43[40] = 0;
      v44 = v60;
      sub_1E5DFD1CC(v18, v60, &qword_1ED07A660, &qword_1E6607030);
      v45 = v61;
      sub_1E5DFD1CC(v12, v61, &qword_1ED07A658, &qword_1E6607028);
      sub_1E5DFD1CC(v44, v38, &qword_1ED07A660, &qword_1E6607030);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A688, &qword_1E6607058);
      v47 = v38 + *(v46 + 48);
      *v47 = 0;
      *(v47 + 8) = 1;
      sub_1E5DFD1CC(v45, v38 + *(v46 + 64), &qword_1ED07A658, &qword_1E6607028);
      sub_1E5DFE50C(v12, &qword_1ED07A658, &qword_1E6607028);
      sub_1E5DFE50C(v18, &qword_1ED07A660, &qword_1E6607030);
      v7 = v56;
      sub_1E5DFE50C(v45, &qword_1ED07A658, &qword_1E6607028);
      sub_1E5DFE50C(v44, &qword_1ED07A660, &qword_1E6607030);
      sub_1E5DFD1CC(v21, v54, &qword_1ED07A668, &qword_1E6607038);
      swift_storeEnumTagMultiPayload();
      sub_1E5FED46C(&qword_1EE2D4B78, &qword_1ED07A668, &qword_1E6607038);
      v48 = v63;
      sub_1E65E4138();
      sub_1E5DFE50C(v21, &qword_1ED07A668, &qword_1E6607038);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1E5FED46C(&qword_1EE2D4B78, &qword_1ED07A668, &qword_1E6607038);
      v48 = v63;
      sub_1E65E4138();
    }

    v50 = v64;
    sub_1E5FAB460(v48, v64, &qword_1ED07A678, &qword_1E6607048);
    sub_1E5DFD1CC(v50, v7, &qword_1ED07A678, &qword_1E6607048);
    swift_storeEnumTagMultiPayload();
    sub_1E64D5B08();
    sub_1E65E4138();
    return sub_1E5DFE50C(v50, &qword_1ED07A678, &qword_1E6607048);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1E64D5B08();
    return sub_1E65E4138();
  }
}

unint64_t sub_1E64D5B08()
{
  result = qword_1EE2D4CD0;
  if (!qword_1EE2D4CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07A678, &qword_1E6607048);
    sub_1E5FED46C(&qword_1EE2D4B78, &qword_1ED07A668, &qword_1E6607038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4CD0);
  }

  return result;
}

uint64_t sub_1E64D5BC0(uint64_t a1)
{
  v2 = sub_1E65E3C28();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E65E3E98();
}

uint64_t sub_1E64D5D18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) + 36));
  v11 = *(sub_1E65E3E18() + 20);
  v12 = *MEMORY[0x1E697F468];
  v13 = sub_1E65E3FA8();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #4.0 }

  *v10 = _Q0;
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074478, &qword_1E6600DF0) + 36)] = 256;
  return sub_1E5DFD1CC(a1, a6, a4, a5);
}

uint64_t sub_1E64D5E48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E64D5E90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E64D5EF8()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E65DB748() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1E65DB048() - 8);
  v8 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_1E64453F8((v0 + v2), v0 + v5, v8);
}

uint64_t sub_1E64D6024()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E65DB748() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920) - 8);
  v8 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_1E6187214((v0 + v2), v0 + v5, v8);
}

uint64_t sub_1E64D6158@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - v6;
  State = type metadata accessor for WorkoutContextMenuLoadState();
  v9 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v27 - v14);
  sub_1E5DFD1CC(v2, &v27 - v14, &qword_1ED073B60, &unk_1E65EE020);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = *v15;
  v17 = v15[1];
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_10;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130);
  sub_1E64D6CF4(v15 + *(v19 + 48), v11);
  if (!sub_1E636E32C() || (v20 = *(State + 24), sub_1E5DFD1CC(&v11[v20], v7, &unk_1ED077CD0, &unk_1E65F42F0), v21 = swift_getEnumCaseMultiPayload(), v21 > 2))
  {
LABEL_9:
    sub_1E648AC30(v11);
LABEL_10:
    *a1 = v18;
    a1[1] = v17;
    goto LABEL_11;
  }

  if (v21)
  {
    if (v21 == 1)
    {
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v23 = sub_1E65D76A8();
      (*(*(v23 - 8) + 8))(&v7[v22], v23);
      goto LABEL_7;
    }

    sub_1E5DFE50C(v7, &unk_1ED077CD0, &unk_1E65F42F0);
    goto LABEL_9;
  }

LABEL_7:
  v24 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C0, &unk_1E65F7310) + 48);
  *a1 = v18;
  a1[1] = v17;
  sub_1E5DFD1CC(v11, v24, &qword_1ED0737C8, &unk_1E6605140);
  started = type metadata accessor for DynamicStartWorkoutButtonLoadState();
  sub_1E5DFD1CC(&v11[v20], v24 + *(started + 20), &unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E648AC30(v11);
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E64D6444@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - v6;
  State = type metadata accessor for WorkoutContextMenuLoadState();
  v9 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v27 - v14);
  sub_1E5DFD1CC(v2, &v27 - v14, &qword_1ED073B60, &unk_1E65EE020);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = *v15;
  v17 = v15[1];
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_10;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130);
  sub_1E64D6CF4(v15 + *(v19 + 48), v11);
  v20 = *(State + 20);
  sub_1E5DFD1CC(&v11[v20], v7, &unk_1ED077CC0, &unk_1E65F2610);
  v21 = swift_getEnumCaseMultiPayload();
  if (v21 > 2)
  {
    goto LABEL_9;
  }

  if (v21)
  {
    if (v21 != 1)
    {
      sub_1E5DFE50C(v7, &unk_1ED077CC0, &unk_1E65F2610);
      goto LABEL_9;
    }

    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
    v23 = sub_1E65D76A8();
    (*(*(v23 - 8) + 8))(&v7[v22], v23);
  }

  if (!sub_1E636E32C())
  {
LABEL_9:
    sub_1E648AC30(v11);
LABEL_10:
    *a1 = v18;
    a1[1] = v17;
    goto LABEL_11;
  }

  v24 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E10, &unk_1E65FABA0) + 48);
  *a1 = v18;
  a1[1] = v17;
  sub_1E5DFD1CC(v11, v24, &qword_1ED0737C8, &unk_1E6605140);
  v25 = type metadata accessor for StackButtonLoadState();
  sub_1E5DFD1CC(&v11[v20], v24 + *(v25 + 20), &unk_1ED077CC0, &unk_1E65F2610);
  sub_1E648AC30(v11);
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E64D6730@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v4 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - v8;
  State = type metadata accessor for WorkoutContextMenuLoadState();
  v11 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v36 - v16);
  sub_1E5DFD1CC(v2, &v36 - v16, &qword_1ED073B60, &unk_1E65EE020);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = *v17;
  v19 = v17[1];
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_15;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130);
  sub_1E64D6CF4(v17 + *(v21 + 48), v13);
  v22 = *(State + 28);
  sub_1E5DFD1CC(&v13[v22], v9, &unk_1ED077CC0, &unk_1E65F2610);
  v23 = swift_getEnumCaseMultiPayload();
  if (v23 > 2)
  {
    goto LABEL_14;
  }

  if (v23)
  {
    if (v23 != 1)
    {
      v32 = &unk_1ED077CC0;
      v33 = &unk_1E65F2610;
      v34 = v9;
LABEL_13:
      sub_1E5DFE50C(v34, v32, v33);
      goto LABEL_14;
    }

    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
    v25 = sub_1E65D76A8();
    (*(*(v25 - 8) + 8))(&v9[v24], v25);
  }

  v26 = *(State + 24);
  sub_1E5DFD1CC(&v13[v26], v37, &unk_1ED077CD0, &unk_1E65F42F0);
  v27 = swift_getEnumCaseMultiPayload();
  if (v27 > 2)
  {
LABEL_14:
    sub_1E648AC30(v13);
LABEL_15:
    *a1 = v20;
    *(a1 + 8) = v19;
    *(a1 + 16) = 0;
    goto LABEL_16;
  }

  if (v27)
  {
    if (v27 == 1)
    {
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v29 = sub_1E65D76A8();
      (*(*(v29 - 8) + 8))(v37 + v28, v29);
      goto LABEL_10;
    }

    v32 = &unk_1ED077CD0;
    v33 = &unk_1E65F42F0;
    v34 = v37;
    goto LABEL_13;
  }

LABEL_10:
  v30 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073968, &unk_1E65F4320) + 48);
  *a1 = v20;
  *(a1 + 8) = v19;
  *(a1 + 16) = 0;
  sub_1E5DFD1CC(&v13[v22], v30, &unk_1ED077CC0, &unk_1E65F2610);
  v31 = type metadata accessor for DynamicLibraryActionLoadState();
  sub_1E5DFD1CC(&v13[v26], v30 + *(v31 + 20), &unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E648AC30(v13);
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E64D6B28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  State = type metadata accessor for WorkoutContextMenuLoadState();
  v5 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v19 - v10);
  sub_1E5DFD1CC(v2, &v19 - v10, &qword_1ED073B60, &unk_1E65EE020);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = *v11;
  v13 = v11[1];
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_5;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130);
  sub_1E64D6CF4(v11 + *(v15 + 48), v7);
  v16 = *(State + 32);
  if (!sub_1E636E05C())
  {
    sub_1E648AC30(v7);
LABEL_5:
    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    goto LABEL_6;
  }

  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3F0, &unk_1E65F7290) + 48);
  *a1 = v14;
  *(a1 + 8) = v13;
  *(a1 + 16) = 0;
  sub_1E5DFD1CC(&v7[v16], a1 + v17, &unk_1ED077A70, &qword_1E65F2620);
  sub_1E648AC30(v7);
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E64D6CF4(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for WorkoutContextMenuLoadState();
  (*(*(State - 8) + 32))(a2, a1, State);
  return a2;
}

uint64_t sub_1E64D6D58@<X0>(void *a1@<X8>)
{
  v2 = v1;
  State = type metadata accessor for WorkoutContextMenuLoadState();
  v5 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v18 - v10);
  sub_1E5DFD1CC(v2, &v18 - v10, &qword_1ED073B60, &unk_1E65EE020);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = *v11;
  v13 = v11[1];
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_5;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130);
  sub_1E64D6CF4(v11 + *(v15 + 48), v7);
  if (!sub_1E636E32C())
  {
    sub_1E648AC30(v7);
LABEL_5:
    *a1 = v14;
    a1[1] = v13;
    goto LABEL_6;
  }

  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073878, &unk_1E65F8490) + 48);
  *a1 = v14;
  a1[1] = v13;
  sub_1E5DFD1CC(v7, a1 + v16, &qword_1ED0737C8, &unk_1E6605140);
  sub_1E648AC30(v7);
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E64D6F0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v4 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - v8;
  State = type metadata accessor for WorkoutContextMenuLoadState();
  v11 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v36 - v16);
  sub_1E5DFD1CC(v2, &v36 - v16, &qword_1ED073B60, &unk_1E65EE020);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = *v17;
  v19 = v17[1];
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_15;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130);
  sub_1E64D6CF4(v17 + *(v21 + 48), v13);
  v22 = *(State + 28);
  sub_1E5DFD1CC(&v13[v22], v9, &unk_1ED077CC0, &unk_1E65F2610);
  v23 = swift_getEnumCaseMultiPayload();
  if (v23 > 2)
  {
    goto LABEL_14;
  }

  if (v23)
  {
    if (v23 != 1)
    {
      v32 = &unk_1ED077CC0;
      v33 = &unk_1E65F2610;
      v34 = v9;
LABEL_13:
      sub_1E5DFE50C(v34, v32, v33);
      goto LABEL_14;
    }

    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
    v25 = sub_1E65D76A8();
    (*(*(v25 - 8) + 8))(&v9[v24], v25);
  }

  v26 = *(State + 24);
  sub_1E5DFD1CC(&v13[v26], v37, &unk_1ED077CD0, &unk_1E65F42F0);
  v27 = swift_getEnumCaseMultiPayload();
  if (v27 > 2)
  {
LABEL_14:
    sub_1E648AC30(v13);
LABEL_15:
    *a1 = v20;
    *(a1 + 8) = v19;
    *(a1 + 16) = 0;
    goto LABEL_16;
  }

  if (v27)
  {
    if (v27 == 1)
    {
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v29 = sub_1E65D76A8();
      (*(*(v29 - 8) + 8))(v37 + v28, v29);
      goto LABEL_10;
    }

    v32 = &unk_1ED077CD0;
    v33 = &unk_1E65F42F0;
    v34 = v37;
    goto LABEL_13;
  }

LABEL_10:
  v30 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073868, &unk_1E65FA930) + 48);
  *a1 = v20;
  *(a1 + 8) = v19;
  *(a1 + 16) = 0;
  sub_1E5DFD1CC(&v13[v22], v30, &unk_1ED077CC0, &unk_1E65F2610);
  v31 = type metadata accessor for RemoveLibraryActionLoadState();
  sub_1E5DFD1CC(&v13[v26], v30 + *(v31 + 20), &unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E648AC30(v13);
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E64D7304(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A700, &qword_1E6607188);
  v31 = *(v2 - 8);
  v32 = v2;
  v3 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v27 - v4;
  v5 = type metadata accessor for AppComposer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  v12 = sub_1E65DC5C8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = sub_1E65DC558();
  v15 = *(v14 - 8);
  v28 = v14;
  v29 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  sub_1E5E1DEAC(a1, v11);
  v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v20 = swift_allocObject();
  sub_1E5E1FA80(v11, v20 + v19);
  sub_1E5E1DEAC(a1, v9);
  v21 = swift_allocObject();
  sub_1E5E1FA80(v9, v21 + v19);
  sub_1E65DC5B8();
  sub_1E65DC548();
  sub_1E5E1DEAC(a1, v11);
  v22 = swift_allocObject();
  sub_1E5E1FA80(v11, v22 + v19);
  type metadata accessor for AppFeature();
  sub_1E64D7ED8(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E64D7ED8(&qword_1ED07A708, MEMORY[0x1E699E0E0]);
  v23 = v30;
  v24 = v28;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v25 = sub_1E65E4F08();
  (*(v31 + 8))(v23, v32);
  (*(v29 + 8))(v18, v24);
  return v25;
}

uint64_t sub_1E64D772C(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 48) = a1;
  v3 = type metadata accessor for ToastAction();
  *(v2 + 24) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64D77C4, 0, 0);
}

uint64_t sub_1E64D77C4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = *(v0 + 48);
  v5 = v3 + *(type metadata accessor for AppComposer() + 20);
  v6 = (v5 + *(type metadata accessor for AppEnvironment() + 128));
  v8 = *v6;
  v7 = v6[1];
  *v2 = v4;
  swift_storeEnumTagMultiPayload();
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 40) = v10;
  *v10 = v0;
  v10[1] = sub_1E64D7904;
  v11 = *(v0 + 32);

  return v13(v11);
}

uint64_t sub_1E64D7904()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  sub_1E64D7F20(v2, type metadata accessor for ToastAction);

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1E64D7A30(char a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E64D772C(a1, v1 + v5);
}

uint64_t sub_1E64D7B08(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for AppAction();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64D7B9C, 0, 0);
}

uint64_t sub_1E64D7B9C()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  *(v0 + 40) = **(v0 + 16);
  *v1 = xmmword_1E65EADF0;
  swift_storeEnumTagMultiPayload();
  sub_1E65E6058();
  *(v0 + 48) = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E64D7C54, v4, v3);
}

uint64_t sub_1E64D7C54()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  sub_1E65E4EE8();
  sub_1E64D7F20(v3, type metadata accessor for AppAction);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E64D7CE8()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFA78C;

  return sub_1E64D7B08(v0 + v3);
}

uint64_t sub_1E64D7DB4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1E65D7848();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = *a2;
  swift_getKeyPath();
  sub_1E65E4EC8();

  return sub_1E65DC4C8();
}

uint64_t sub_1E64D7E58(uint64_t a1)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1E64D7DB4(a1, v4);
}

uint64_t sub_1E64D7ED8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E64D7F20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E64D7F80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078810, &qword_1E65FD9F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-1] - v7;
  sub_1E5E20198(27, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078038, &qword_1E65FB420);
  result = swift_dynamicCast();
  if (result)
  {
    v11[0] = a1;
    v11[1] = a2;
    sub_1E65E4E98();

    sub_1E65E4E28();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_1E64D80D0@<X0>(uint64_t *a1@<X8>)
{
  v74 = a1;
  v2 = type metadata accessor for SessionService();
  Description = v2[-1].Description;
  v71 = v2;
  v3 = Description[8];
  MEMORY[0x1EEE9AC00](v2);
  v68 = v4;
  v69 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ArchivedSessionService();
  v66 = v5[-1].Description;
  v67 = v5;
  v6 = v66[8];
  MEMORY[0x1EEE9AC00](v5);
  v64 = v7;
  v65 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for RemoteBrowsingService();
  v8 = v62[-1].Description;
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = &v54 - v12;
  v13 = type metadata accessor for CatalogService();
  v14 = v13[-1].Description;
  v15 = v14[8];
  MEMORY[0x1EEE9AC00](v13);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v16 = sub_1E65E3B68();
  __swift_project_value_buffer(v16, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v17 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v18 = type metadata accessor for AppEnvironment();
  v19 = v18[8];
  v20 = v18[12];
  v58 = v18[25];
  v59 = v19;
  v60 = v18[28];
  v21 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  swift_getKeyPath();
  (v14[2])(&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v20, v13);
  v22 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v23 = swift_allocObject();
  (v14[4])(v23 + v22, &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078038, &qword_1E65FB420);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  v27 = sub_1E65E4E68();
  v28 = v74;
  v74[3] = v24;
  v28[4] = &off_1F5FAA810;
  *v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1E65EA8E0;
  v72 = sub_1E65E60A8();
  v73 = *(*(v72 - 8) + 56);
  v29 = v63;
  v73(v63, 1, 1, v72);
  v30 = v8[2];
  v31 = v17;
  v56 = v17;
  v32 = v17 + v58;
  v33 = v61;
  v34 = v62;
  v30(v61, v32, v62);
  v35 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  (v8[4])(v36 + v35, v33, v34);
  v55 = v27;
  *(v36 + ((v9 + v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
  swift_retain_n();
  v37 = sub_1E6059EAC(0, 0, v29, &unk_1E6607210, v36);
  v38 = v57;
  *(v57 + 32) = v37;
  v73(v29, 1, 1, v72);
  v40 = v65;
  v39 = v66;
  v41 = v67;
  (v66[2])(v65, v31 + v59, v67);
  v42 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v43 = (v64 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  (v39[4])(v44 + v42, v40, v41);
  v45 = v55;
  *(v44 + v43) = v55;
  v46 = v45;

  *(v38 + 40) = sub_1E6059EAC(0, 0, v29, &unk_1E6607220, v44);
  v73(v29, 1, 1, v72);
  v48 = v69;
  v47 = Description;
  v49 = v71;
  (Description[2])(v69, v56 + v60, v71);
  v50 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v51 = (v68 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  *(v52 + 24) = 0;
  (v47[4])(v52 + v50, v48, v49);
  *(v52 + v51) = v46;
  result = sub_1E6059EAC(0, 0, v29, &unk_1E6607230, v52);
  *(v38 + 48) = result;
  v74[5] = v38;
  return result;
}

uint64_t sub_1E64D87E0(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = a2[1];
  v3[4] = *a2;
  v3[5] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1E64D8808, 0, 0);
}

uint64_t sub_1E64D8808()
{
  v1 = v0[3];
  v2 = CatalogService.queryCachedCatalogWorkoutDetail.getter();
  v0[6] = v3;
  v10 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1E64D8908;
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];

  return v10(v8, v6, v7);
}

uint64_t sub_1E64D8908()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1E64D8A88;
  }

  else
  {
    v3 = sub_1E60EBEA0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E64D8A1C()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E64D8A88()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = CatalogService.fetchRemoteCatalogWorkoutDetail.getter();
  v0[9] = v4;
  v11 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1E64D8B90;
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];

  return v11(v9, v7, v8);
}

uint64_t sub_1E64D8B90()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1E64D8CA4;
  }

  else
  {
    v3 = sub_1E64D8A1C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E64D8CA4()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_1E64D8D10(uint64_t a1, void *a2)
{
  Description = type metadata accessor for CatalogService()[-1].Description;
  v7 = (Description[80] + 16) & ~Description[80];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E64D87E0(a1, a2, v2 + v7);
}

uint64_t sub_1E64D8DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64D8F60, 0, 0);
}

uint64_t sub_1E64D8F60()
{
  v1 = v0[2];
  v2 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E64D905C;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E64D905C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E64D9174, 0, 0);
}

uint64_t sub_1E64D9174()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E64D9250;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E64D9250()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E64D934C, 0, 0);
}

uint64_t sub_1E64D934C()
{
  v1 = v0[4];
  v2 = sub_1E65D99E8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v7 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E64D949C, v7, v6);
  }
}

uint64_t sub_1E64D949C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);

  sub_1E65E4E78();

  return MEMORY[0x1EEE6DFA0](sub_1E64D950C, 0, 0);
}

uint64_t sub_1E64D950C()
{
  sub_1E5DFE50C(v0[4], &qword_1ED0721B0, &qword_1E65EA988);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1E64D9250;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[4];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t sub_1E64D95CC(uint64_t a1)
{
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E64D8DF4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E64D96EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D10, &qword_1E65F37A0);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D18, &qword_1E65F37A8);
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64D9820, 0, 0);
}

uint64_t sub_1E64D9820()
{
  v1 = v0[3];
  v2 = ArchivedSessionService.makeArchivedSessionsUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E64D991C;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E64D991C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1E5FE0E84;
  }

  else
  {
    v4 = sub_1E64D9A4C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E64D9A4C()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1E64D9B28;
  v7 = v0[10];
  v8 = v0[8];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v8);
}

uint64_t sub_1E64D9B28()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E64D9C24, 0, 0);
}

uint64_t sub_1E64D9C24()
{
  v1 = v0[2];
  v0[15] = v1;
  if (v1)
  {
    sub_1E65E6058();
    v0[16] = sub_1E65E6048();
    v3 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E64D9D24, v3, v2);
  }

  else
  {
    v4 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1E64D9D24()
{
  v1 = v0[16];
  v2 = v0[4];

  v0[17] = sub_1E65E4E48();

  return MEMORY[0x1EEE6DFA0](sub_1E64D9D98, 0, 0);
}

uint64_t sub_1E64D9D98()
{
  v1 = v0[4];
  v2 = sub_1E608A340(v0[17], v0[15]);
  v0[18] = v2;

  v3 = swift_task_alloc();
  v0[19] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E69E87D8] + 4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_1E64D9EA4;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1E64D9EA4()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E64D9FD8, 0, 0);
}

uint64_t sub_1E64D9FD8()
{
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_1E64D9B28;
  v3 = v0[10];
  v4 = v0[8];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v4);
}

uint64_t sub_1E64DA080(uint64_t a1)
{
  Description = type metadata accessor for ArchivedSessionService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E64D96EC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E64DA1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64DA24C, 0, 0);
}

uint64_t sub_1E64DA24C()
{
  v1 = *(v0 + 80);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 80) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v35 = *(v0 + 80);

  v10 = 0;
  v33 = v8;
  v34 = v3;
  while (v7)
  {
LABEL_11:
    v14 = *(v0 + 104);
    v15 = *(v0 + 88);
    v16 = (*(v35 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
    v17 = v16[1];
    v36 = *v16;
    v37 = *(v0 + 96);
    v18 = sub_1E65E60A8();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v14, 1, 1, v18);
    v20 = swift_allocObject();
    v20[2] = 0;
    v21 = v20 + 2;
    v20[3] = 0;
    v20[4] = v15;
    v20[5] = v36;
    v20[6] = v17;
    sub_1E5DF4C84(v14, v37);
    LODWORD(v14) = (*(v19 + 48))(v37, 1, v18);
    swift_bridgeObjectRetain_n();

    v22 = *(v0 + 96);
    if (v14 == 1)
    {
      sub_1E5DFE50C(*(v0 + 96), &unk_1ED0735B0, &qword_1E65EA000);
      if (*v21)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1E65E6098();
      (*(v19 + 8))(v22, v18);
      if (*v21)
      {
LABEL_13:
        v23 = v20[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v24 = sub_1E65E5FC8();
        v26 = v25;
        swift_unknownObjectRelease();
        goto LABEL_16;
      }
    }

    v24 = 0;
    v26 = 0;
LABEL_16:
    v27 = **(v0 + 72);
    v28 = swift_allocObject();
    *(v28 + 16) = &unk_1E6607250;
    *(v28 + 24) = v20;

    if (v26 | v24)
    {
      v11 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v24;
      *(v0 + 40) = v26;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v0 + 104);
    v7 &= v7 - 1;
    *(v0 + 48) = 1;
    *(v0 + 56) = v11;
    *(v0 + 64) = v27;
    swift_task_create();

    result = sub_1E5DFE50C(v12, &unk_1ED0735B0, &qword_1E65EA000);
    v8 = v33;
    v3 = v34;
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v13);
    ++v10;
    if (v7)
    {
      v10 = v13;
      goto LABEL_11;
    }
  }

  v29 = *(v0 + 96);
  v30 = *(v0 + 104);
  v31 = *(v0 + 80);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1E64DA5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078810, &qword_1E65FD9F8);
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C8704, 0, 0);
}

uint64_t sub_1E64DA6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721A0, &qword_1E65EA978);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721A8, &qword_1E65EA980);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64DA80C, 0, 0);
}

uint64_t sub_1E64DA80C()
{
  v1 = v0[2];
  v2 = SessionService.makeAudioLanguagePreferenceUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E64DA908;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E64DA908()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1E5FAE0A4;
  }

  else
  {
    v4 = sub_1E64DAA38;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E64DAA38()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1E64DAB14;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E64DAB14()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E64DAC10, 0, 0);
}

uint64_t sub_1E64DAC10()
{
  v1 = v0[4];
  v2 = sub_1E65D9AC8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    sub_1E65E6058();
    v0[15] = sub_1E65E6048();
    v7 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E64DAD60, v7, v6);
  }
}

uint64_t sub_1E64DAD60()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 24);

  sub_1E65E4E78();

  return MEMORY[0x1EEE6DFA0](sub_1E64DADD0, 0, 0);
}

uint64_t sub_1E64DADD0()
{
  sub_1E5DFE50C(v0[4], &qword_1ED072198, &unk_1E660C690);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_1E64DAB14;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[4];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t objectdestroy_3Tm_15(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  v7 = *(v1 + v5);

  return swift_deallocObject();
}

uint64_t sub_1E64DAF70(uint64_t a1)
{
  Description = type metadata accessor for SessionService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E64DA6A0(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E64DB090(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E64DA1A0(a1, a2, v7, v6);
}

uint64_t sub_1E64DB144(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E64DA5D0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E64DB20C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = type metadata accessor for AppComposer();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v39 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - v12;
  sub_1E65E5148();
  v14 = sub_1E65E5138();
  sub_1E5E1DEAC(v2, v13);
  v15 = *(v4 + 80);
  v16 = ((v15 + 32) & ~v15) + v5;
  v43 = (v15 + 32) & ~v15;
  v41 = v16;
  v17 = swift_allocObject();
  v40 = &unk_1E66072C0;
  *(v17 + 16) = &unk_1E66072C0;
  *(v17 + 24) = 0;
  sub_1E5E1FA80(v13, v17 + ((v15 + 32) & ~v15));
  *(v17 + v16) = 0;
  v18 = v17 + (v16 & 0xFFFFFFFFFFFFFFF8);
  v39 = sub_1E6172524;
  *(v18 + 8) = sub_1E6172524;
  *(v18 + 16) = 0;
  v19 = (v17 + (((v16 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v20 = MEMORY[0x1E69AB380];
  *v19 = v14;
  v19[1] = v20;
  v21 = v14;
  v22 = v46;
  v23 = v11;
  sub_1E5E1DEAC(v46, v11);
  v24 = (v15 + 48) & ~v15;
  v25 = v24 + v5;
  v26 = (v24 + v5) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v40;
  v27[2] = v40;
  v27[3] = 0;
  v27[4] = v21;
  v27[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v23, v27 + v24);
  *(v27 + v25) = 0;
  v29 = v27 + v26;
  v30 = v39;
  *(v29 + 1) = v39;
  *(v29 + 2) = 0;
  v31 = v22;
  v32 = v44;
  sub_1E5E1DEAC(v31, v44);
  v33 = swift_allocObject();
  v33[2] = v28;
  v33[3] = 0;
  v33[4] = v21;
  v33[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v32, v33 + v24);
  v34 = v33 + ((v25 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v34 = v30;
  *(v34 + 1) = 0;
  v34[16] = 0;
  v35 = v45;
  sub_1E5E1DEAC(v46, v45);
  v36 = swift_allocObject();
  *(v36 + 16) = v28;
  *(v36 + 24) = 0;
  sub_1E5E1FA80(v35, v36 + v43);
  result = swift_retain_n();
  v38 = v42;
  *v42 = v21;
  v38[1] = MEMORY[0x1E69AB380];
  v38[2] = &unk_1E65EB918;
  v38[3] = v17;
  v38[4] = &unk_1E65FA770;
  v38[5] = v27;
  v38[6] = &unk_1E65EB920;
  v38[7] = v33;
  v38[8] = &unk_1E65FA780;
  v38[9] = v36;
  return result;
}

uint64_t sub_1E64DB568(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64DB6AC, 0, 0);
}

uint64_t sub_1E64DB6AC()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = *MEMORY[0x1E69CBD30];
  v7 = sub_1E65D8F38();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v2, v6, v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  v9 = sub_1E65D74E8();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = sub_1E65D9908();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  v11 = sub_1E65D9F88();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  sub_1E65D7A28();
  v12 = sub_1E65D7A38();
  (*(*(v12 - 8) + 56))(v5, 0, 1, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E64DB910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1E65D7848();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = sub_1E65D8F28();
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();
  v13 = sub_1E65D7218();
  v6[11] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v15 = sub_1E65D72D8();
  v6[13] = v15;
  v16 = *(v15 - 8);
  v6[14] = v16;
  v17 = *(v16 + 64) + 15;
  v6[15] = swift_task_alloc();
  v18 = type metadata accessor for PageMetricsClick();
  v6[16] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v20 = sub_1E65D7968();
  v6[25] = v20;
  v21 = *(v20 - 8);
  v6[26] = v21;
  v22 = *(v21 + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v23 = sub_1E65E1BA8();
  v6[31] = v23;
  v24 = *(v23 - 8);
  v6[32] = v24;
  v25 = *(v24 + 64) + 15;
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v26 = sub_1E65E19C8();
  v6[37] = v26;
  v27 = *(v26 - 8);
  v6[38] = v27;
  v28 = *(v27 + 64) + 15;
  v6[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64DBC9C, 0, 0);
}

uint64_t sub_1E64DBC9C()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  (*(v2 + 16))(v1, v0[2], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E699E980])
  {
    v5 = v0[39];
    v6 = v0[36];
    v7 = v0[31];
    v8 = v0[32];
    v9 = v0[30];
    v10 = v0[26];
    v309 = v0[25];
    v11 = v0[24];
    v12 = v0[16];
    v268 = v0[14];
    v271 = v0[13];
    v262 = v0[15];
    v265 = v0[12];
    v274 = v0[11];
    v284 = v0[10];
    v278 = v0[9];
    v288 = v0[8];
    v314 = v0[7];
    v319 = v0[6];
    v324 = v0[5];
    v327 = v0[4];
    v304 = v0[3];
    (*(v0[38] + 96))(v5, v0[37]);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072600, &qword_1E65EB8F8);
    v294 = *(v5 + *(v13 + 48));
    v14 = *(v13 + 64);
    (*(v8 + 32))(v6, v5, v7);
    (*(v10 + 32))(v9, v5 + v14, v309);
    v15 = sub_1E65D9D78();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    v16 = v12[5];
    v17 = *MEMORY[0x1E69CBA70];
    v18 = sub_1E65D8C68();
    (*(*(v18 - 8) + 104))(v11 + v16, v17, v18);
    v19 = v12[6];
    v20 = sub_1E65D74E8();
    (*(*(v20 - 8) + 56))(v11 + v19, 1, 1, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    v21 = *(sub_1E65D86A8() - 8);
    v257 = *(v21 + 72);
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v299 = swift_allocObject();
    *(v299 + 16) = xmmword_1E65EB9E0;
    MEMORY[0x1E6949580]();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    sub_1E65D7948();
    sub_1E65E1B88();
    sub_1E65D71F8();
    (*(v268 + 8))(v262, v271);
    sub_1E617FBC8();
    sub_1E65E5E48();
    LODWORD(v274) = *MEMORY[0x1E69CBC98];
    v279 = *(v278 + 104);
    v279(v284);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    sub_1E65D7958();
    sub_1E65E1A78();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    v23 = *v304;
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E1A88();
    (*(v319 + 8))(v314, v324);
    (v279)(v284, *MEMORY[0x1E69CBCB0], v288);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    v24 = v12[8];
    v25 = sub_1E65DA208();
    v26 = (*(*(v25 - 8) + 56))(v11 + v24, 1, 1, v25);
    v27 = MEMORY[0x1E6949580](v26);
    v29 = v28;
    (v279)(v11 + v12[14], v274, v288);
    v30 = v12[15];
    v31 = sub_1E65D9908();
    (*(*(v31 - 8) + 56))(v11 + v30, 1, 1, v31);
    v32 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v11 + v12[7]) = v299;
    v33 = (v11 + v12[9]);
    *v33 = 0;
    v33[1] = 0;
    v34 = (v11 + v12[10]);
    *v34 = 0;
    v34[1] = 0;
    *(v11 + v12[11]) = v32;
    v35 = (v11 + v12[12]);
    *v35 = 0;
    v35[1] = 0;
    v36 = (v11 + v12[13]);
    *v36 = v27;
    v36[1] = v29;
    v37 = *(v327 + 48);
    v328 = (v37 + *v37);
    v38 = v37[1];
    v39 = swift_task_alloc();
    v0[40] = v39;
    *v39 = v0;
    v39[1] = sub_1E64DE16C;
    v40 = v0[24];
LABEL_9:

    return v328(v40);
  }

  if (v4 == *MEMORY[0x1E699E988])
  {
    v41 = v0[39];
    v42 = v0[35];
    v44 = v0[31];
    v43 = v0[32];
    v259 = v0[29];
    v45 = v0[25];
    v46 = v0[26];
    v47 = v0[23];
    v48 = v0[16];
    v300 = v0[14];
    v305 = v0[13];
    v289 = v0[15];
    v295 = v0[12];
    v310 = v0[11];
    v315 = v0[10];
    v320 = v0[8];
    v325 = v0[4];
    v329 = v0[9];
    (*(v0[38] + 96))(v41, v0[37]);
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072600, &qword_1E65EB8F8) + 64);
    (*(v43 + 32))(v42, v41, v44);
    (*(v46 + 32))(v259, v41 + v49, v45);
    v50 = sub_1E65D9D78();
    (*(*(v50 - 8) + 56))(v47, 1, 1, v50);
    v51 = v48[5];
    v52 = *MEMORY[0x1E69CBA68];
    v53 = sub_1E65D8C68();
    (*(*(v53 - 8) + 104))(v47 + v51, v52, v53);
    v54 = v48[6];
    v55 = sub_1E65D74E8();
    (*(*(v55 - 8) + 56))(v47 + v54, 1, 1, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    v56 = *(sub_1E65D86A8() - 8);
    v57 = *(v56 + 72);
    v280 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v275 = swift_allocObject();
    *(v275 + 16) = xmmword_1E65EA670;
    MEMORY[0x1E6949580]();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    sub_1E65D7948();
    sub_1E65E1B88();
    sub_1E65D71F8();
    (*(v300 + 8))(v289, v305);
    sub_1E617FBC8();
    sub_1E65E5E48();
    v58 = *MEMORY[0x1E69CBC98];
    v59 = *(v329 + 104);
    v59(v315, v58, v320);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    v60 = v48[8];
    v61 = sub_1E65DA208();
    v62 = (*(*(v61 - 8) + 56))(v47 + v60, 1, 1, v61);
    v63 = MEMORY[0x1E6949580](v62);
    v65 = v64;
    v59(v47 + v48[14], v58, v320);
    v66 = v48[15];
    v67 = sub_1E65D9908();
    (*(*(v67 - 8) + 56))(v47 + v66, 1, 1, v67);
    v68 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v47 + v48[7]) = v275;
    v69 = (v47 + v48[9]);
    *v69 = 0;
    v69[1] = 0;
    v70 = (v47 + v48[10]);
    *v70 = 0;
    v70[1] = 0;
    *(v47 + v48[11]) = v68;
    v71 = (v47 + v48[12]);
    *v71 = 0;
    v71[1] = 0;
    v72 = (v47 + v48[13]);
    *v72 = v63;
    v72[1] = v65;
    v73 = *(v325 + 56);
    v328 = (*(v325 + 48) + **(v325 + 48));
    v74 = *(*(v325 + 48) + 4);
    v75 = swift_task_alloc();
    v0[42] = v75;
    *v75 = v0;
    v75[1] = sub_1E64DE434;
    v40 = v0[23];
    goto LABEL_9;
  }

  if (v4 == *MEMORY[0x1E699E990])
  {
    v76 = v0[39];
    v77 = v0[34];
    v78 = v0[31];
    v79 = v0[32];
    v80 = v0[28];
    v81 = v0[26];
    v290 = v0[25];
    v82 = v0[22];
    v83 = v0[16];
    v272 = v0[14];
    v276 = v0[13];
    v263 = v0[15];
    v266 = v0[12];
    v281 = v0[11];
    v255 = v0[10];
    v330 = v0[9];
    v301 = v0[7];
    v306 = v0[6];
    v311 = v0[5];
    v316 = v0[4];
    v321 = v0[8];
    v296 = v0[3];
    (*(v0[38] + 96))(v76, v0[37]);
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072600, &qword_1E65EB8F8);
    v285 = *(v76 + *(v84 + 48));
    v85 = *(v84 + 64);
    (*(v79 + 32))(v77, v76, v78);
    (*(v81 + 32))(v80, v76 + v85, v290);
    v86 = sub_1E65D9D78();
    (*(*(v86 - 8) + 56))(v82, 1, 1, v86);
    v87 = v83[5];
    v88 = *MEMORY[0x1E69CBAA0];
    v89 = sub_1E65D8C68();
    (*(*(v89 - 8) + 104))(v82 + v87, v88, v89);
    v90 = v83[6];
    v91 = sub_1E65D74E8();
    (*(*(v91 - 8) + 56))(v82 + v90, 1, 1, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    v92 = *(sub_1E65D86A8() - 8);
    v93 = (*(v92 + 80) + 32) & ~*(v92 + 80);
    v260 = 2 * *(v92 + 72);
    v291 = swift_allocObject();
    *(v291 + 16) = xmmword_1E65EA8E0;
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    v269 = *MEMORY[0x1E69CBCC8];
    v253 = *(v330 + 104);
    v253(v255);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    v94 = sub_1E65D8678();
    MEMORY[0x1E6949580](v94);
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    sub_1E65D7948();
    sub_1E65E1B88();
    sub_1E65D71F8();
    (*(v272 + 8))(v263, v276);
    sub_1E617FBC8();
    sub_1E65E5E48();
    (v253)(v255, *MEMORY[0x1E69CBC98], v321);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    sub_1E65D7958();
    sub_1E65E1A78();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    v95 = *v296;
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E1A88();
    (*(v306 + 8))(v301, v311);
    (v253)(v255, *MEMORY[0x1E69CBCB0], v321);
    v96 = MEMORY[0x1E69E7CC0];
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    v97 = v83[8];
    v98 = sub_1E65DA208();
    (*(*(v98 - 8) + 56))(v82 + v97, 1, 1, v98);
    (v253)(v82 + v83[14], v269, v321);
    v99 = v83[15];
    v100 = sub_1E65D9908();
    (*(*(v100 - 8) + 56))(v82 + v99, 1, 1, v100);
    v101 = sub_1E6427784(v96);
    *(v82 + v83[7]) = v291;
    v102 = (v82 + v83[9]);
    *v102 = 0;
    v102[1] = 0;
    v103 = (v82 + v83[10]);
    *v103 = 0;
    v103[1] = 0;
    *(v82 + v83[11]) = v101;
    v104 = (v82 + v83[12]);
    *v104 = 0;
    v104[1] = 0;
    *(v82 + v83[13]) = xmmword_1E6607280;
    v105 = *(v316 + 56);
    v328 = (*(v316 + 48) + **(v316 + 48));
    v106 = *(*(v316 + 48) + 4);
    v107 = swift_task_alloc();
    v0[44] = v107;
    *v107 = v0;
    v107[1] = sub_1E64DE6FC;
    v40 = v0[22];
    goto LABEL_9;
  }

  if (v4 == *MEMORY[0x1E699E9A8])
  {
    v108 = v0[39];
    v109 = v0[32];
    v110 = v0[33];
    v111 = v0[31];
    v112 = v0[27];
    v113 = v0[25];
    v114 = v0[26];
    v115 = v0[17];
    v322 = v0[16];
    v267 = v0[14];
    v270 = v0[13];
    v261 = v0[15];
    v264 = v0[12];
    v273 = v0[11];
    v254 = v0[10];
    v331 = v0[9];
    v317 = v0[8];
    v292 = v0[7];
    v297 = v0[6];
    v302 = v0[5];
    v307 = v0[4];
    v286 = v0[3];
    (*(v0[38] + 96))(v108, v0[37]);
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072600, &qword_1E65EB8F8);
    v282 = *(v108 + *(v116 + 48));
    v117 = *(v116 + 64);
    (*(v109 + 32))(v110, v108, v111);
    (*(v114 + 32))(v112, v108 + v117, v113);
    v118 = *MEMORY[0x1E69CC900];
    v119 = sub_1E65D9D78();
    v120 = *(v119 - 8);
    (*(v120 + 104))(v115, v118, v119);
    (*(v120 + 56))(v115, 0, 1, v119);
    v121 = v322[5];
    v122 = *MEMORY[0x1E69CBAA0];
    v123 = sub_1E65D8C68();
    (*(*(v123 - 8) + 104))(v115 + v121, v122, v123);
    v124 = v322[6];
    v125 = sub_1E65D74E8();
    (*(*(v125 - 8) + 56))(v115 + v124, 1, 1, v125);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    v126 = *(sub_1E65D86A8() - 8);
    v127 = (*(v126 + 80) + 32) & ~*(v126 + 80);
    v256 = 2 * *(v126 + 72);
    v277 = swift_allocObject();
    *(v277 + 16) = xmmword_1E65EA8E0;
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    v258 = *MEMORY[0x1E69CBCC8];
    v312 = *(v331 + 104);
    v312(v254);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    v128 = sub_1E65D8678();
    MEMORY[0x1E6949580](v128);
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    sub_1E65D7948();
    sub_1E65E1B88();
    sub_1E65D71F8();
    (*(v267 + 8))(v261, v270);
    sub_1E617FBC8();
    sub_1E65E5E48();
    (v312)(v254, *MEMORY[0x1E69CBC98], v317);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    sub_1E65D7958();
    sub_1E65E1A78();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    v129 = *v286;
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E1A88();
    (*(v297 + 8))(v292, v302);
    (v312)(v254, *MEMORY[0x1E69CBCB0], v317);
    v130 = MEMORY[0x1E69E7CC0];
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    v131 = v322[8];
    v132 = sub_1E65DA208();
    (*(*(v132 - 8) + 56))(v115 + v131, 1, 1, v132);
    (v312)(v115 + v322[14], v258, v317);
    v133 = v322[15];
    v134 = sub_1E65D9908();
    (*(*(v134 - 8) + 56))(v115 + v133, 1, 1, v134);
    v135 = sub_1E6427784(v130);
    *(v115 + v322[7]) = v277;
    v136 = (v115 + v322[9]);
    *v136 = 0;
    v136[1] = 0;
    v137 = (v115 + v322[10]);
    *v137 = 0;
    v137[1] = 0;
    *(v115 + v322[11]) = v135;
    v138 = (v115 + v322[12]);
    *v138 = 0;
    v138[1] = 0;
    *(v115 + v322[13]) = xmmword_1E6607280;
    v139 = *(v307 + 56);
    v328 = (*(v307 + 48) + **(v307 + 48));
    v140 = *(*(v307 + 48) + 4);
    v141 = swift_task_alloc();
    v0[54] = v141;
    *v141 = v0;
    v141[1] = sub_1E64DF3E4;
    v40 = v0[17];
    goto LABEL_9;
  }

  if (v4 == *MEMORY[0x1E699E9A0])
  {
    v143 = v0[39];
    v144 = v0[31];
    v145 = v0[32];
    (*(v0[38] + 96))(v143, v0[37]);
    (*(v145 + 8))(v143, v144);
  }

  else
  {
    if (v4 == *MEMORY[0x1E699E970])
    {
      v157 = v0[21];
      v158 = v0[16];
      v159 = v0[8];
      v160 = v0[9];
      v161 = v0[4];
      v162 = sub_1E65D9D78();
      (*(*(v162 - 8) + 56))(v157, 1, 1, v162);
      v163 = v158[5];
      v164 = *MEMORY[0x1E69CBA30];
      v165 = sub_1E65D8C68();
      (*(*(v165 - 8) + 104))(v157 + v163, v164, v165);
      v166 = v158[6];
      v167 = sub_1E65D74E8();
      (*(*(v167 - 8) + 56))(v157 + v166, 1, 1, v167);
      v168 = v158[8];
      v169 = sub_1E65DA208();
      (*(*(v169 - 8) + 56))(v157 + v168, 1, 1, v169);
      (*(v160 + 104))(v157 + v158[14], *MEMORY[0x1E69CBCC8], v159);
      v170 = v158[15];
      v171 = sub_1E65D9908();
      (*(*(v171 - 8) + 56))(v157 + v170, 1, 1, v171);
      v172 = MEMORY[0x1E69E7CC0];
      v173 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v157 + v158[7]) = v172;
      v174 = (v157 + v158[9]);
      *v174 = 0;
      v174[1] = 0;
      v175 = (v157 + v158[10]);
      *v175 = 0;
      v175[1] = 0;
      *(v157 + v158[11]) = v173;
      v176 = (v157 + v158[12]);
      *v176 = 0;
      v176[1] = 0;
      *(v157 + v158[13]) = xmmword_1E6607260;
      v177 = *(v161 + 56);
      v328 = (*(v161 + 48) + **(v161 + 48));
      v178 = *(*(v161 + 48) + 4);
      v179 = swift_task_alloc();
      v0[46] = v179;
      *v179 = v0;
      v179[1] = sub_1E64DE9C4;
      v40 = v0[21];
      goto LABEL_9;
    }

    if (v4 == *MEMORY[0x1E699E978])
    {
      v180 = v0[20];
      v181 = v0[16];
      v182 = v0[8];
      v183 = v0[9];
      v184 = v0[4];
      v185 = sub_1E65D9D78();
      (*(*(v185 - 8) + 56))(v180, 1, 1, v185);
      v186 = v181[5];
      v187 = *MEMORY[0x1E69CB9F8];
      v188 = sub_1E65D8C68();
      (*(*(v188 - 8) + 104))(v180 + v186, v187, v188);
      v189 = v181[6];
      v190 = sub_1E65D74E8();
      (*(*(v190 - 8) + 56))(v180 + v189, 1, 1, v190);
      v191 = v181[8];
      v192 = sub_1E65DA208();
      (*(*(v192 - 8) + 56))(v180 + v191, 1, 1, v192);
      (*(v183 + 104))(v180 + v181[14], *MEMORY[0x1E69CBCC8], v182);
      v193 = v181[15];
      v194 = sub_1E65D9908();
      (*(*(v194 - 8) + 56))(v180 + v193, 1, 1, v194);
      v195 = MEMORY[0x1E69E7CC0];
      v196 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v180 + v181[7]) = v195;
      v197 = (v180 + v181[9]);
      *v197 = 0;
      v197[1] = 0;
      v198 = (v180 + v181[10]);
      *v198 = 0;
      v198[1] = 0;
      *(v180 + v181[11]) = v196;
      v199 = (v180 + v181[12]);
      *v199 = 0;
      v199[1] = 0;
      *(v180 + v181[13]) = xmmword_1E6607270;
      v200 = *(v184 + 56);
      v328 = (*(v184 + 48) + **(v184 + 48));
      v201 = *(*(v184 + 48) + 4);
      v202 = swift_task_alloc();
      v0[48] = v202;
      *v202 = v0;
      v202[1] = sub_1E64DEC4C;
      v40 = v0[20];
      goto LABEL_9;
    }

    if (v4 == *MEMORY[0x1E699E9B8])
    {
      v203 = v0[19];
      v204 = v0[16];
      v205 = v0[8];
      v206 = v0[9];
      v207 = v0[4];
      v208 = *MEMORY[0x1E69CC900];
      v209 = sub_1E65D9D78();
      v210 = *(v209 - 8);
      (*(v210 + 104))(v203, v208, v209);
      (*(v210 + 56))(v203, 0, 1, v209);
      v211 = v204[5];
      v212 = *MEMORY[0x1E69CBA30];
      v213 = sub_1E65D8C68();
      (*(*(v213 - 8) + 104))(v203 + v211, v212, v213);
      v214 = v204[6];
      v215 = sub_1E65D74E8();
      (*(*(v215 - 8) + 56))(v203 + v214, 1, 1, v215);
      v216 = v204[8];
      v217 = sub_1E65DA208();
      (*(*(v217 - 8) + 56))(v203 + v216, 1, 1, v217);
      (*(v206 + 104))(v203 + v204[14], *MEMORY[0x1E69CBCC8], v205);
      v218 = v204[15];
      v219 = sub_1E65D9908();
      (*(*(v219 - 8) + 56))(v203 + v218, 1, 1, v219);
      v220 = MEMORY[0x1E69E7CC0];
      v221 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v203 + v204[7]) = v220;
      v222 = (v203 + v204[9]);
      *v222 = 0;
      v222[1] = 0;
      v223 = (v203 + v204[10]);
      *v223 = 0;
      v223[1] = 0;
      *(v203 + v204[11]) = v221;
      v224 = (v203 + v204[12]);
      *v224 = 0;
      v224[1] = 0;
      *(v203 + v204[13]) = xmmword_1E6607260;
      v225 = *(v207 + 56);
      v328 = (*(v207 + 48) + **(v207 + 48));
      v226 = *(*(v207 + 48) + 4);
      v227 = swift_task_alloc();
      v0[50] = v227;
      *v227 = v0;
      v227[1] = sub_1E64DEED4;
      v40 = v0[19];
      goto LABEL_9;
    }

    if (v4 == *MEMORY[0x1E699E9B0])
    {
      v228 = v0[18];
      v229 = v0[16];
      v230 = v0[8];
      v231 = v0[9];
      v232 = v0[4];
      v233 = *MEMORY[0x1E69CC900];
      v234 = sub_1E65D9D78();
      v235 = *(v234 - 8);
      (*(v235 + 104))(v228, v233, v234);
      (*(v235 + 56))(v228, 0, 1, v234);
      v236 = v229[5];
      v237 = *MEMORY[0x1E69CBA90];
      v238 = sub_1E65D8C68();
      (*(*(v238 - 8) + 104))(v228 + v236, v237, v238);
      v239 = v229[6];
      v240 = sub_1E65D74E8();
      (*(*(v240 - 8) + 56))(v228 + v239, 1, 1, v240);
      v241 = v229[8];
      v242 = sub_1E65DA208();
      (*(*(v242 - 8) + 56))(v228 + v241, 1, 1, v242);
      (*(v231 + 104))(v228 + v229[14], *MEMORY[0x1E69CBCC8], v230);
      v243 = v229[15];
      v244 = sub_1E65D9908();
      (*(*(v244 - 8) + 56))(v228 + v243, 1, 1, v244);
      v245 = MEMORY[0x1E69E7CC0];
      v246 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v228 + v229[7]) = v245;
      v247 = (v228 + v229[9]);
      *v247 = 0;
      v247[1] = 0;
      v248 = (v228 + v229[10]);
      *v248 = 0;
      v248[1] = 0;
      *(v228 + v229[11]) = v246;
      v249 = (v228 + v229[12]);
      *v249 = 0;
      v249[1] = 0;
      *(v228 + v229[13]) = xmmword_1E65F4AB0;
      v250 = *(v232 + 56);
      v328 = (*(v232 + 48) + **(v232 + 48));
      v251 = *(*(v232 + 48) + 4);
      v252 = swift_task_alloc();
      v0[52] = v252;
      *v252 = v0;
      v252[1] = sub_1E64DF15C;
      v40 = v0[18];
      goto LABEL_9;
    }

    if (v4 != *MEMORY[0x1E699E998])
    {
      (*(v0[38] + 8))(v0[39], v0[37]);
    }
  }

  v146 = v0[39];
  v147 = v0[35];
  v148 = v0[36];
  v150 = v0[33];
  v149 = v0[34];
  v151 = v0[30];
  v153 = v0[28];
  v152 = v0[29];
  v154 = v0[27];
  v155 = v0[24];
  v283 = v0[23];
  v287 = v0[22];
  v293 = v0[21];
  v298 = v0[20];
  v303 = v0[19];
  v308 = v0[18];
  v313 = v0[17];
  v318 = v0[15];
  v323 = v0[12];
  v326 = v0[10];
  v332 = v0[7];

  v156 = v0[1];

  return v156();
}

uint64_t sub_1E64DE16C()
{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_1E64DF6AC;
  }

  else
  {
    v3 = sub_1E64DE280;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E64DE280()
{
  v1 = v0[36];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[30];
  v5 = v0[25];
  v6 = v0[26];
  sub_1E5FC0990(v0[24]);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  v7 = v0[39];
  v8 = v0[35];
  v9 = v0[36];
  v11 = v0[33];
  v10 = v0[34];
  v13 = v0[29];
  v12 = v0[30];
  v15 = v0[27];
  v14 = v0[28];
  v16 = v0[24];
  v19 = v0[23];
  v20 = v0[22];
  v21 = v0[21];
  v22 = v0[20];
  v23 = v0[19];
  v24 = v0[18];
  v25 = v0[17];
  v26 = v0[15];
  v27 = v0[12];
  v28 = v0[10];
  v29 = v0[7];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1E64DE434()
{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_1E64DF868;
  }

  else
  {
    v3 = sub_1E64DE548;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E64DE548()
{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[25];
  v6 = v0[26];
  sub_1E5FC0990(v0[23]);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  v7 = v0[39];
  v8 = v0[35];
  v9 = v0[36];
  v11 = v0[33];
  v10 = v0[34];
  v13 = v0[29];
  v12 = v0[30];
  v15 = v0[27];
  v14 = v0[28];
  v16 = v0[24];
  v19 = v0[23];
  v20 = v0[22];
  v21 = v0[21];
  v22 = v0[20];
  v23 = v0[19];
  v24 = v0[18];
  v25 = v0[17];
  v26 = v0[15];
  v27 = v0[12];
  v28 = v0[10];
  v29 = v0[7];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1E64DE6FC()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_1E64DFA24;
  }

  else
  {
    v3 = sub_1E64DE810;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E64DE810()
{
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  sub_1E5FC0990(v0[22]);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  v7 = v0[39];
  v8 = v0[35];
  v9 = v0[36];
  v11 = v0[33];
  v10 = v0[34];
  v13 = v0[29];
  v12 = v0[30];
  v15 = v0[27];
  v14 = v0[28];
  v16 = v0[24];
  v19 = v0[23];
  v20 = v0[22];
  v21 = v0[21];
  v22 = v0[20];
  v23 = v0[19];
  v24 = v0[18];
  v25 = v0[17];
  v26 = v0[15];
  v27 = v0[12];
  v28 = v0[10];
  v29 = v0[7];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1E64DE9C4()
{
  v2 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_1E64DFBE0;
  }

  else
  {
    v3 = sub_1E64DEAD8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E64DEAD8()
{
  sub_1E5FC0990(v0[21]);
  v1 = v0[39];
  v2 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[29];
  v6 = v0[30];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[24];
  v13 = v0[23];
  v14 = v0[22];
  v15 = v0[21];
  v16 = v0[20];
  v17 = v0[19];
  v18 = v0[18];
  v19 = v0[17];
  v20 = v0[15];
  v21 = v0[12];
  v22 = v0[10];
  v23 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E64DEC4C()
{
  v2 = *(*v1 + 384);
  v5 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_1E64DFD5C;
  }

  else
  {
    v3 = sub_1E64DED60;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E64DED60()
{
  sub_1E5FC0990(v0[20]);
  v1 = v0[39];
  v2 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[29];
  v6 = v0[30];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[24];
  v13 = v0[23];
  v14 = v0[22];
  v15 = v0[21];
  v16 = v0[20];
  v17 = v0[19];
  v18 = v0[18];
  v19 = v0[17];
  v20 = v0[15];
  v21 = v0[12];
  v22 = v0[10];
  v23 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E64DEED4()
{
  v2 = *(*v1 + 400);
  v5 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_1E64DFED8;
  }

  else
  {
    v3 = sub_1E64DEFE8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E64DEFE8()
{
  sub_1E5FC0990(v0[19]);
  v1 = v0[39];
  v2 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[29];
  v6 = v0[30];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[24];
  v13 = v0[23];
  v14 = v0[22];
  v15 = v0[21];
  v16 = v0[20];
  v17 = v0[19];
  v18 = v0[18];
  v19 = v0[17];
  v20 = v0[15];
  v21 = v0[12];
  v22 = v0[10];
  v23 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E64DF15C()
{
  v2 = *(*v1 + 416);
  v5 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = sub_1E64E0054;
  }

  else
  {
    v3 = sub_1E64DF270;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E64DF270()
{
  sub_1E5FC0990(v0[18]);
  v1 = v0[39];
  v2 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[29];
  v6 = v0[30];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[24];
  v13 = v0[23];
  v14 = v0[22];
  v15 = v0[21];
  v16 = v0[20];
  v17 = v0[19];
  v18 = v0[18];
  v19 = v0[17];
  v20 = v0[15];
  v21 = v0[12];
  v22 = v0[10];
  v23 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E64DF3E4()
{
  v2 = *(*v1 + 432);
  v5 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = sub_1E64E01D0;
  }

  else
  {
    v3 = sub_1E64DF4F8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E64DF4F8()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  sub_1E5FC0990(v0[17]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[39];
  v8 = v0[35];
  v9 = v0[36];
  v11 = v0[33];
  v10 = v0[34];
  v13 = v0[29];
  v12 = v0[30];
  v15 = v0[27];
  v14 = v0[28];
  v16 = v0[24];
  v19 = v0[23];
  v20 = v0[22];
  v21 = v0[21];
  v22 = v0[20];
  v23 = v0[19];
  v24 = v0[18];
  v25 = v0[17];
  v26 = v0[15];
  v27 = v0[12];
  v28 = v0[10];
  v29 = v0[7];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1E64DF6AC()
{
  v1 = v0[36];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[30];
  v5 = v0[25];
  v6 = v0[26];
  sub_1E5FC0990(v0[24]);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  v30 = v0[41];
  v7 = v0[39];
  v9 = v0[35];
  v8 = v0[36];
  v11 = v0[33];
  v10 = v0[34];
  v13 = v0[29];
  v12 = v0[30];
  v15 = v0[27];
  v14 = v0[28];
  v16 = v0[24];
  v19 = v0[23];
  v20 = v0[22];
  v21 = v0[21];
  v22 = v0[20];
  v23 = v0[19];
  v24 = v0[18];
  v25 = v0[17];
  v26 = v0[15];
  v27 = v0[12];
  v28 = v0[10];
  v29 = v0[7];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1E64DF868()
{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[25];
  v6 = v0[26];
  sub_1E5FC0990(v0[23]);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  v30 = v0[43];
  v7 = v0[39];
  v9 = v0[35];
  v8 = v0[36];
  v11 = v0[33];
  v10 = v0[34];
  v13 = v0[29];
  v12 = v0[30];
  v15 = v0[27];
  v14 = v0[28];
  v16 = v0[24];
  v19 = v0[23];
  v20 = v0[22];
  v21 = v0[21];
  v22 = v0[20];
  v23 = v0[19];
  v24 = v0[18];
  v25 = v0[17];
  v26 = v0[15];
  v27 = v0[12];
  v28 = v0[10];
  v29 = v0[7];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1E64DFA24()
{
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  sub_1E5FC0990(v0[22]);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  v30 = v0[45];
  v7 = v0[39];
  v9 = v0[35];
  v8 = v0[36];
  v11 = v0[33];
  v10 = v0[34];
  v13 = v0[29];
  v12 = v0[30];
  v15 = v0[27];
  v14 = v0[28];
  v16 = v0[24];
  v19 = v0[23];
  v20 = v0[22];
  v21 = v0[21];
  v22 = v0[20];
  v23 = v0[19];
  v24 = v0[18];
  v25 = v0[17];
  v26 = v0[15];
  v27 = v0[12];
  v28 = v0[10];
  v29 = v0[7];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1E64DFBE0()
{
  sub_1E5FC0990(v0[21]);
  v24 = v0[47];
  v1 = v0[39];
  v3 = v0[35];
  v2 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[29];
  v6 = v0[30];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[24];
  v13 = v0[23];
  v14 = v0[22];
  v15 = v0[21];
  v16 = v0[20];
  v17 = v0[19];
  v18 = v0[18];
  v19 = v0[17];
  v20 = v0[15];
  v21 = v0[12];
  v22 = v0[10];
  v23 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E64DFD5C()
{
  sub_1E5FC0990(v0[20]);
  v24 = v0[49];
  v1 = v0[39];
  v3 = v0[35];
  v2 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[29];
  v6 = v0[30];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[24];
  v13 = v0[23];
  v14 = v0[22];
  v15 = v0[21];
  v16 = v0[20];
  v17 = v0[19];
  v18 = v0[18];
  v19 = v0[17];
  v20 = v0[15];
  v21 = v0[12];
  v22 = v0[10];
  v23 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E64DFED8()
{
  sub_1E5FC0990(v0[19]);
  v24 = v0[51];
  v1 = v0[39];
  v3 = v0[35];
  v2 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[29];
  v6 = v0[30];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[24];
  v13 = v0[23];
  v14 = v0[22];
  v15 = v0[21];
  v16 = v0[20];
  v17 = v0[19];
  v18 = v0[18];
  v19 = v0[17];
  v20 = v0[15];
  v21 = v0[12];
  v22 = v0[10];
  v23 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E64E0054()
{
  sub_1E5FC0990(v0[18]);
  v24 = v0[53];
  v1 = v0[39];
  v3 = v0[35];
  v2 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[29];
  v6 = v0[30];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[24];
  v13 = v0[23];
  v14 = v0[22];
  v15 = v0[21];
  v16 = v0[20];
  v17 = v0[19];
  v18 = v0[18];
  v19 = v0[17];
  v20 = v0[15];
  v21 = v0[12];
  v22 = v0[10];
  v23 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E64E01D0()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  sub_1E5FC0990(v0[17]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v30 = v0[55];
  v7 = v0[39];
  v9 = v0[35];
  v8 = v0[36];
  v11 = v0[33];
  v10 = v0[34];
  v13 = v0[29];
  v12 = v0[30];
  v15 = v0[27];
  v14 = v0[28];
  v16 = v0[24];
  v19 = v0[23];
  v20 = v0[22];
  v21 = v0[21];
  v22 = v0[20];
  v23 = v0[19];
  v24 = v0[18];
  v25 = v0[17];
  v26 = v0[15];
  v27 = v0[12];
  v28 = v0[10];
  v29 = v0[7];

  v17 = v0[1];

  return v17();
}

unint64_t sub_1E64E038C(uint64_t a1)
{
  v3 = sub_1E65D9F38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v38 = v1;
    v52 = MEMORY[0x1E69E7CC0];
    sub_1E601BF04(0, v8, 0);
    v50 = v52;
    v10 = a1 + 64;
    v11 = -1 << *(a1 + 32);
    result = sub_1E65E6748();
    v12 = 0;
    v51 = v4 + 16;
    v40 = a1;
    v41 = v4;
    v13 = (v4 + 8);
    v39 = a1 + 72;
    v42 = v8;
    v43 = a1 + 64;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
    {
      v16 = result >> 6;
      v17 = 1 << result;
      if ((*(v10 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_30;
      }

      v18 = *(a1 + 36);
      v19 = *(*(a1 + 56) + 8 * result);
      v20 = *(v19 + 16);
      v49 = v12;
      if (v20)
      {
        v45 = 1 << result;
        v46 = result >> 6;
        v47 = v18;
        v48 = result;
        v21 = v19 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        v22 = *(v41 + 72);
        v23 = *(v41 + 16);
        v44 = v19;

        v24 = 0;
        while (1)
        {
          v23(v7, v21, v3);
          v25 = sub_1E65D9F28();
          result = (*v13)(v7, v3);
          v26 = __OFADD__(v24, v25);
          v24 += v25;
          if (v26)
          {
            break;
          }

          v21 += v22;
          if (!--v20)
          {

            a1 = v40;
            result = v48;
            v12 = v49;
            v16 = v46;
            v18 = v47;
            v17 = v45;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

      v24 = 0;
LABEL_14:
      v27 = v50;
      v52 = v50;
      v29 = *(v50 + 16);
      v28 = *(v50 + 24);
      if (v29 >= v28 >> 1)
      {
        v47 = v18;
        v48 = result;
        v37 = v12;
        v45 = v17;
        v46 = v16;
        sub_1E601BF04((v28 > 1), v29 + 1, 1);
        v17 = v45;
        v16 = v46;
        v18 = v47;
        result = v48;
        v12 = v37;
        v27 = v52;
      }

      *(v27 + 16) = v29 + 1;
      *(v27 + 8 * v29 + 32) = v24;
      v14 = 1 << *(a1 + 32);
      if (result >= v14)
      {
        goto LABEL_31;
      }

      v10 = v43;
      v30 = *(v43 + 8 * v16);
      if ((v30 & v17) == 0)
      {
        goto LABEL_32;
      }

      if (v18 != *(a1 + 36))
      {
        goto LABEL_33;
      }

      v31 = v30 & (-2 << (result & 0x3F));
      v50 = v27;
      if (v31)
      {
        v14 = __clz(__rbit64(v31)) | result & 0x7FFFFFFFFFFFFFC0;
        v15 = v42;
      }

      else
      {
        v32 = v16 << 6;
        v33 = v16 + 1;
        v34 = (v39 + 8 * v16);
        v15 = v42;
        while (v33 < (v14 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            sub_1E5F87098(result, v18, 0);
            v14 = __clz(__rbit64(v35)) + v32;
            goto LABEL_25;
          }
        }

        sub_1E5F87098(result, v18, 0);
LABEL_25:
        v12 = v49;
      }

      ++v12;
      result = v14;
      if (v12 == v15)
      {
        return v50;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

int64_t sub_1E64E0704(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v6[-1], v5);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), *v6, v8);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v8, v5), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v10, v9.i64[0]), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v14 < v2)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_1E64E07B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1E65D96F8();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v40 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v40 - v15;
  v16 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 56);
  if (v19)
  {
    v40 = a2;
    v20 = 0;
    v21 = __clz(__rbit64(v19));
    v22 = (v19 - 1) & v19;
    v23 = (v17 + 63) >> 6;
LABEL_9:
    v26 = v14[9];
    v27 = *(a1 + 48) + v26 * v21;
    v28 = v14[2];
    v41 = v14;
    v42 = v28;
    v43 = v14 + 2;
    v44 = v26;
    v28(v13, v27, v4);
    v30 = v41 + 4;
    v29 = v41[4];
    v29(v47, v13, v4);
    v46 = a1;

    if (v22)
    {
      goto LABEL_12;
    }

LABEL_13:
    while (1)
    {
      v32 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v32 >= v23)
      {

        v38 = v40;
        v29(v40, v47, v4);
        return (v41[7])(v38, 0, 1, v4);
      }

      v22 = *(v16 + 8 * v32);
      ++v20;
      if (v22)
      {
        while (1)
        {
          v33 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          v34 = v45;
          v42(v45, *(v46 + 48) + (v33 | (v32 << 6)) * v44, v4);
          v29(v10, v34, v4);
          sub_1E64E8AD8(&qword_1ED07A728, MEMORY[0x1E69CC278]);
          v35 = v47;
          v36 = sub_1E65E5B78();
          v37 = *(v30 - 3);
          if (v36)
          {
            v37(v35, v4);
            result = (v29)(v35, v10, v4);
            v20 = v32;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

          else
          {
            result = (v37)(v10, v4);
            v20 = v32;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v32 = v20;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v24 = 0;
    v23 = (v17 + 63) >> 6;
    while (v23 - 1 != v19)
    {
      v20 = v19 + 1;
      v25 = *(a1 + 64 + 8 * v19);
      v24 -= 64;
      ++v19;
      if (v25)
      {
        v40 = a2;
        v22 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) - v24;
        goto LABEL_9;
      }
    }

    v39 = v14[7];

    return v39(a2, 1, 1, v4);
  }

  return result;
}

int64_t sub_1E64E0B9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_1E64E0C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return sub_1E64E0D04(a1, a2, a3);
}

uint64_t sub_1E64E0D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = *(*(sub_1E65E2CF8() - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v6 = *(*(sub_1E65D76F8() - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v7 = sub_1E65D7908();
  v4[19] = v7;
  v8 = *(v7 - 8);
  v4[20] = v8;
  v9 = *(v8 + 64) + 15;
  v4[21] = swift_task_alloc();
  v10 = sub_1E65D76A8();
  v4[22] = v10;
  v11 = *(v10 - 8);
  v4[23] = v11;
  v12 = *(v11 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v13 = *(*(sub_1E65D7848() - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v14 = *(*(sub_1E65E5C28() - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v15 = *(*(sub_1E65E5C08() - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v16 = sub_1E65D9388();
  v4[30] = v16;
  v17 = *(v16 - 8);
  v4[31] = v17;
  v18 = *(v17 + 64) + 15;
  v4[32] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D78, &qword_1E65F38F8) - 8) + 64) + 15;
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v20 = sub_1E65D72D8();
  v4[37] = v20;
  v21 = *(v20 - 8);
  v4[38] = v21;
  v22 = *(v21 + 64) + 15;
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B98, &qword_1E65F78F8) - 8) + 64) + 15;
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v24 = sub_1E65D9D28();
  v4[45] = v24;
  v25 = *(v24 - 8);
  v4[46] = v25;
  v26 = *(v25 + 64) + 15;
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v27 = sub_1E65D82F8();
  v4[52] = v27;
  v28 = *(v27 - 8);
  v4[53] = v28;
  v29 = *(v28 + 64) + 15;
  v4[54] = swift_task_alloc();
  v30 = sub_1E65DA488();
  v4[55] = v30;
  v31 = *(v30 - 8);
  v4[56] = v31;
  v32 = *(v31 + 64) + 15;
  v4[57] = swift_task_alloc();
  v33 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A720, &qword_1E6607338) - 8) + 64) + 15;
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64E121C, 0, 0);
}

uint64_t sub_1E64E121C()
{
  v1 = *(v0 + 128);
  v2 = *(type metadata accessor for AppComposer() + 20);
  *(v0 + 36) = v2;
  v3 = v1 + v2;
  v4 = type metadata accessor for AppEnvironment();
  *(v0 + 480) = v4;
  v5 = v3 + *(v4 + 144);
  v6 = WorkoutPlanService.queryAllWorkoutPlanTemplateMetadata.getter();
  *(v0 + 488) = v7;
  v11 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v0 + 496) = v9;
  *v9 = v0;
  v9[1] = sub_1E64E1338;

  return v11();
}

uint64_t sub_1E64E1338(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 496);
  v6 = *v2;
  *(*v2 + 504) = v1;

  if (v1)
  {
    v7 = sub_1E64E31EC;
  }

  else
  {
    *(v4 + 512) = a1;
    v7 = sub_1E64E1460;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E64E1460()
{
  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v3 = *(v0 + 488);
  v5 = *(v0 + 464);
  v4 = *(v0 + 472);
  v6 = *(v0 + 440);
  v7 = *(v0 + 448);
  v9 = *(v0 + 112);
  v8 = *(v0 + 120);

  v10 = sub_1E64E863C(v1, v9, v8);

  sub_1E6059E80(v10, v4);

  sub_1E5DFD1CC(v4, v5, &qword_1ED07A720, &qword_1E6607338);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v11 = *(v0 + 472);
    v12 = *(v0 + 104);
    sub_1E5DFE50C(*(v0 + 464), &qword_1ED07A720, &qword_1E6607338);
    sub_1E65E2508();
    sub_1E5DFE50C(v11, &qword_1ED07A720, &qword_1E6607338);
    v14 = *(v0 + 464);
    v13 = *(v0 + 472);
    v15 = *(v0 + 456);
    v16 = *(v0 + 432);
    v18 = *(v0 + 400);
    v17 = *(v0 + 408);
    v20 = *(v0 + 384);
    v19 = *(v0 + 392);
    v21 = *(v0 + 376);
    v22 = *(v0 + 352);
    v33 = *(v0 + 344);
    v34 = *(v0 + 336);
    v35 = *(v0 + 328);
    v36 = *(v0 + 320);
    v37 = *(v0 + 312);
    v38 = *(v0 + 288);
    v39 = *(v0 + 280);
    v40 = *(v0 + 272);
    v41 = *(v0 + 264);
    v42 = *(v0 + 256);
    v43 = *(v0 + 232);
    v44 = *(v0 + 224);
    v45 = *(v0 + 216);
    v46 = *(v0 + 208);
    v47 = *(v0 + 200);
    v48 = *(v0 + 192);
    v49 = *(v0 + 168);
    v50 = *(v0 + 144);
    v51 = *(v0 + 136);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v25 = *(v0 + 480);
    v26 = *(v0 + 128) + *(v0 + 36);
    (*(*(v0 + 448) + 32))(*(v0 + 456), *(v0 + 464), *(v0 + 440));
    v27 = v26 + *(v25 + 52);
    v28 = ConfigurationService.queryConfiguration.getter();
    *(v0 + 520) = v29;
    v52 = (v28 + *v28);
    v30 = v28[1];
    v31 = swift_task_alloc();
    *(v0 + 528) = v31;
    *v31 = v0;
    v31[1] = sub_1E64E1808;
    v32 = *(v0 + 432);

    return v52(v32);
  }
}

uint64_t sub_1E64E1808()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *v1;
  *(*v1 + 536) = v0;

  v5 = *(v2 + 520);

  if (v0)
  {
    v6 = sub_1E64E33C8;
  }

  else
  {
    v6 = sub_1E64E193C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E64E193C()
{
  v1 = *(v0 + 480);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v0 + 416);
  v5 = *(v0 + 128) + *(v0 + 36);
  *(v0 + 544) = sub_1E65D8298();
  (*(v3 + 8))(v2, v4);
  v6 = v5 + *(v1 + 48);
  v7 = CatalogService.queryAllCatalogModalityReferences.getter();
  *(v0 + 552) = v8;
  v12 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 560) = v10;
  *v10 = v0;
  v10[1] = sub_1E64E1A7C;

  return v12();
}

uint64_t sub_1E64E1A7C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 560);
  v9 = *v2;
  v3[71] = a1;
  v3[72] = v1;

  if (v1)
  {
    v5 = v3[69];
    v6 = v3[68];

    v7 = sub_1E64E35D4;
  }

  else
  {
    v7 = sub_1E64E1BA8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E64E1BA8()
{
  v298 = v0;
  v2 = v0;
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[69];
  v6 = v0[68];
  v7 = v0[16];

  v8 = MEMORY[0x1E69E7CC0];
  v9 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  v10 = swift_task_alloc();
  *(v10 + 16) = v7;
  v224 = v3;
  v228 = sub_1E6409A24(v9, sub_1E621767C, v10, v4);

  v236 = *(v6 + 16);
  v241 = v6;
  if (!v236)
  {
LABEL_28:
    v52 = v2[71];
    v53 = v2[68];
    v54 = v2[57];
    v55 = v2[40];

    v56 = swift_task_alloc();
    *(v56 + 16) = v54;
    v57 = v224;
    sub_1E64072B8(sub_1E64E8ABC, v56, v8);

    sub_1E65D72C8();
    v22 = v8[2];
    v292 = v2;
    v13 = v8;
    if (v22)
    {
      v58 = v2[46];
      v60 = *(v58 + 16);
      v59 = v58 + 16;
      v1 = (v59 - 8);
      v61 = v2[57];
      v62 = v2[47];
      v63 = v2[40];
      v20 = (*(v59 + 64) + 32) & ~*(v59 + 64);
      v281 = v60;
      v284 = *(v59 + 56);
      v60(v62, v13 + v20, v2[45]);
      sub_1E64E6B08(v63, v62, v61, v228);
      if (!v224)
      {
        goto LABEL_34;
      }

      v64 = (v59 - 8);
      v65 = v2[47];
      v66 = v2[45];
      v67 = v2[40];
      v68 = v2[37];
      v293 = v2[38];

      (*v64)(v65, v66);
      v69 = *(v293 + 8);

      return v69(v67, v68);
    }

LABEL_39:
    v76 = v2[57];
    v78 = v2[40];
    v77 = v2[41];
    v80 = v2[37];
    v79 = v2[38];

    (*(v79 + 32))(v77, v78, v80);
    sub_1E65DA408();
    if (v81)
    {
      v82 = v2[59];
      v84 = v2[56];
      v83 = v2[57];
      v85 = v2[55];
      v86 = v2[41];
      v87 = v2[37];
      v88 = v2[38];
      v89 = v2[13];

      sub_1E65E2508();
      (*(v88 + 8))(v86, v87);
      sub_1E5DFE50C(v82, &qword_1ED07A720, &qword_1E6607338);
      (*(v84 + 8))(v83, v85);
      goto LABEL_41;
    }

    v102 = v2[57];
    v103 = sub_1E65DA478();
    v104 = v103;
    v105 = *(v103 + 16);
    if (v105)
    {
      v106 = sub_1E64F73F0(*(v103 + 16), 0);
      v286 = sub_1E62599D0(v297, v106 + 32, v105, v104);

      result = sub_1E5E24EE4();
      if (v286 != v105)
      {
        goto LABEL_100;
      }
    }

    else
    {

      v106 = MEMORY[0x1E69E7CC0];
    }

    v107 = MEMORY[0x1E69E7CC0];
    v297[0] = v106;
    sub_1E64E7770(v297);
    if (v57)
    {
    }

    v108 = v297[0];
    v109 = *(v297[0] + 2);
    if (v109)
    {
      v297[0] = v107;
      sub_1E601D1A0(0, v109, 0);
      v2 = v292;
      v110 = v297[0];
      v111 = *(v297[0] + 2);
      v112 = 32;
      do
      {
        v113 = v108[v112];
        v297[0] = v110;
        v114 = *(v110 + 3);
        if (v111 >= v114 >> 1)
        {
          sub_1E601D1A0((v114 > 1), v111 + 1, 1);
          v110 = v297[0];
        }

        *(v110 + 2) = v111 + 1;
        v110[v111 + 32] = v113;
        ++v112;
        ++v111;
        --v109;
      }

      while (v109);
    }

    else
    {

      v2 = v292;
    }

    v115 = v2[57];
    v117 = v2[35];
    v116 = v2[36];
    v118 = v2[30];
    v119 = v2[31];
    sub_1E65DA468();
    sub_1E5DFD1CC(v116, v117, &qword_1ED075D78, &qword_1E65F38F8);
    v120 = *(v119 + 48);
    if (v120(v117, 1, v118) == 1)
    {
      v121 = v2[59];
      v122 = v2[56];
      v283 = v2[55];
      v287 = v2[57];
      v123 = v2[41];
      v125 = v2[37];
      v124 = v2[38];
      v127 = v2[35];
      v126 = v2[36];
      v128 = v292[13];

      sub_1E5DFE50C(v127, &qword_1ED075D78, &qword_1E65F38F8);
      v2 = v292;
      sub_1E65E2508();
      sub_1E5DFE50C(v126, &qword_1ED075D78, &qword_1E65F38F8);
      (*(v124 + 8))(v123, v125);
      sub_1E5DFE50C(v121, &qword_1ED07A720, &qword_1E6607338);
      (*(v122 + 8))(v287, v283);
      goto LABEL_41;
    }

    v129 = v2[57];
    v130 = v2[34];
    v131 = v2[30];
    (*(v2[31] + 32))(v2[32], v2[35], v131);
    sub_1E65DA468();
    v132 = v120(v130, 1, v131);
    v133 = v2[34];
    if (v132 == 1)
    {
      sub_1E5DFE50C(v2[34], &qword_1ED075D78, &qword_1E65F38F8);
      v292 = 0;
      v13 = 0;
    }

    else
    {
      v134 = v2[30];
      v135 = v2[31];
      v136 = sub_1E65D9368();
      (*(v135 + 8))(v133, v134);
      v13 = sub_1E64E038C(v136);
      v292 = 0;
    }

    v137 = v2[57];
    v138 = v2[33];
    v139 = v2[30];
    sub_1E65DA468();
    v140 = v120(v138, 1, v139);
    v141 = v2[33];
    if (v140 == 1)
    {
      sub_1E5DFE50C(v2[33], &qword_1ED075D78, &qword_1E65F38F8);
      v9 = 0;
    }

    else
    {
      v142 = v2[30];
      v143 = v2[31];
      v144 = sub_1E65D9368();
      (*(v143 + 8))(v141, v142);
      v9 = *(v144 + 16);
    }

    if (!v13)
    {
      v146 = 0;
      goto LABEL_76;
    }

    v14 = *(v13 + 16);
    if (v14)
    {
      v8 = *(v13 + 32);
      v11 = v14 - 1;
      if (v14 != 1)
      {
        if (v14 < 5)
        {
          v145 = 1;
          v146 = *(v13 + 32);
LABEL_84:
          v189 = v14 - v145;
          v190 = (v13 + 8 * v145 + 32);
          do
          {
            v192 = *v190++;
            v191 = v192;
            if (*&v192 < *&v146)
            {
              v146 = v191;
            }

            --v189;
          }

          while (v189);
LABEL_88:
          if (v14 >= 5)
          {
            v193 = v11 & 0xFFFFFFFFFFFFFFFCLL | 1;
            v194 = vdupq_n_s64(v8);
            v195 = (v13 + 56);
            v196 = v11 & 0xFFFFFFFFFFFFFFFCLL;
            v197 = v194;
            do
            {
              v194 = vbslq_s8(vcgtq_s64(v194, v195[-1]), v194, v195[-1]);
              v197 = vbslq_s8(vcgtq_s64(v197, *v195), v197, *v195);
              v195 += 2;
              v196 -= 4;
            }

            while (v196);
            v198 = vbslq_s8(vcgtq_s64(v194, v197), v194, v197);
            v199 = vextq_s8(v198, v198, 8uLL).u64[0];
            v8 = vbsl_s8(vcgtd_s64(v198.i64[0], v199), *v198.i8, v199);
            if (v11 == (v11 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_97;
            }
          }

          else
          {
            v193 = 1;
          }

          v200 = v14 - v193;
          v201 = (v13 + 8 * v193 + 32);
          do
          {
            v203 = *v201++;
            v202 = v203;
            if (v8 <= v203)
            {
              v8 = v202;
            }

            --v200;
          }

          while (v200);
LABEL_97:

          if (*&v146 != v8)
          {
            v205 = v2[28];
            v204 = v2[29];
            v291 = v2[27];
            v280 = v2[16];
            sub_1E65E5BF8();
            sub_1E65E5BE8();
            v2[8] = v9;
            v150 = v2;
            sub_1E65E5BC8();
            sub_1E65E5BE8();
            v2[9] = v146;
            sub_1E65E5BC8();
            sub_1E65E5BE8();
            v2[10] = v8;
            sub_1E65E5BC8();
            sub_1E65E5BE8();
            sub_1E65E5C18();
            type metadata accessor for LocalizationBundle();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v207 = [objc_opt_self() bundleForClass_];
            v208 = *v280;
            swift_getKeyPath();
            sub_1E65E4EC8();

            sub_1E65E5D48();
            goto LABEL_77;
          }

LABEL_76:
          v148 = v2[28];
          v147 = v2[29];
          v149 = v2[27];
          v288 = v2[16];
          sub_1E65E5BF8();
          sub_1E65E5BE8();
          v2[11] = v9;
          v150 = v2;
          sub_1E65E5BC8();
          sub_1E65E5BE8();
          v2[12] = v146;
          sub_1E65E5BC8();
          sub_1E65E5BE8();
          sub_1E65E5C18();
          type metadata accessor for LocalizationBundle();
          v151 = swift_getObjCClassFromMetadata();
          v152 = [objc_opt_self() bundleForClass_];
          v153 = *v288;
          swift_getKeyPath();
          sub_1E65E4EC8();

          sub_1E65E5D48();
          v8 = v146;
LABEL_77:
          v154 = v150[57];
          v156 = v150[25];
          v155 = v150[26];
          v157 = v150[21];
          sub_1E65DA458();
          sub_1E65D7688();
          sub_1E65DA478();
          sub_1E65D7858();
          v158 = v292;
          sub_1E65D75E8();
          v278 = v150[57];
          v266 = v150[59];
          v270 = v150[55];
          v289 = v150[56];
          v295 = v150[41];
          if (v158)
          {
            v159 = v150[38];
            v253 = v150[36];
            v257 = v150[37];
            v160 = v150[31];
            v243 = v150[30];
            v248 = v150[32];
            v238 = v150[25];
            v162 = v150[22];
            v161 = v150[23];
            v164 = v150[20];
            v163 = v150[21];
            v165 = v150[19];

            (*(v164 + 8))(v163, v165);
            (*(v161 + 8))(v238, v162);
            (*(v160 + 8))(v248, v243);
            sub_1E5DFE50C(v253, &qword_1ED075D78, &qword_1E65F38F8);
            (*(v159 + 8))(v295, v257);
            sub_1E5DFE50C(v266, &qword_1ED07A720, &qword_1E6607338);
            (*(v289 + 8))(v278, v270);
            v167 = v150[58];
            v166 = v150[59];
            v168 = v150[57];
            v169 = v150[54];
            v171 = v150[50];
            v170 = v150[51];
            v173 = v150[48];
            v172 = v150[49];
            v174 = v150[47];
            v175 = v150[44];
            v217 = v150[43];
            v219 = v150[42];
            v222 = v150[41];
            v226 = v150[40];
            v230 = v150[39];
            v234 = v150[36];
            v239 = v150[35];
            v244 = v150[34];
            v249 = v150[33];
            v254 = v150[32];
            v258 = v150[29];
            v261 = v150[28];
            v264 = v150[27];
            v267 = v150[26];
            v271 = v150[25];
            v274 = v150[24];
            v279 = v150[21];
            v290 = v150[18];
            v296 = v150[17];

            v101 = v150[1];
            goto LABEL_42;
          }

          v176 = v150[38];
          v250 = v150[37];
          v216 = v150[32];
          v220 = v150[31];
          v223 = v150[30];
          v227 = v150[36];
          v240 = v150[39];
          v245 = v150[26];
          v177 = v150[23];
          v178 = v150[21];
          v231 = v150[22];
          v235 = v150[24];
          v179 = v150[19];
          v180 = v150[20];
          v211 = v150[18];
          v212 = v150[17];
          v209 = v150[25];
          v210 = v150[15];
          v214 = v150[13];
          v215 = v150[14];

          (*(v180 + 8))(v178, v179);
          v213 = *(v177 + 8);
          v213(v209, v231);
          (*(v176 + 16))(v240, v295, v250);
          (*(v177 + 16))(v235, v245, v231);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072FA0, &qword_1E65ECDF8);
          v181 = swift_allocObject();
          *(v181 + 16) = xmmword_1E65EB9E0;
          *(v181 + 32) = v146;
          *(v181 + 40) = v8;

          sub_1E65DA418();
          v182 = *(sub_1E65DA428() + 16);

          sub_1E61DADA0(v212);
          sub_1E65E2518();
          v213(v245, v231);
          (*(v220 + 8))(v216, v223);
          sub_1E5DFE50C(v227, &qword_1ED075D78, &qword_1E65F38F8);
          (*(v176 + 8))(v295, v250);
          sub_1E5DFE50C(v266, &qword_1ED07A720, &qword_1E6607338);
          (*(v289 + 8))(v278, v270);
          v2 = v150;
LABEL_41:
          v91 = v2[58];
          v90 = v2[59];
          v92 = v2[57];
          v93 = v2[54];
          v95 = v2[50];
          v94 = v2[51];
          v97 = v2[48];
          v96 = v2[49];
          v98 = v2;
          v99 = v2[47];
          v100 = v98[44];
          v218 = v98[43];
          v221 = v98[42];
          v225 = v98[41];
          v229 = v98[40];
          v233 = v98[39];
          v237 = v98[36];
          v242 = v98[35];
          v247 = v98[34];
          v252 = v98[33];
          v256 = v98[32];
          v260 = v98[29];
          v263 = v98[28];
          v265 = v98[27];
          v269 = v98[26];
          v273 = v98[25];
          v277 = v98[24];
          v282 = v98[21];
          v285 = v98[18];
          v294 = v98[17];

          v101 = v98[1];
LABEL_42:

          return v101();
        }

LABEL_81:
        v145 = v11 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v183 = vdupq_n_s64(v8);
        v184 = (v13 + 56);
        v185 = v11 & 0xFFFFFFFFFFFFFFFCLL;
        v186 = v183;
        do
        {
          v183 = vbslq_s8(vcgtq_s64(v183, v184[-1]), v184[-1], v183);
          v186 = vbslq_s8(vcgtq_s64(v186, *v184), *v184, v186);
          v184 += 2;
          v185 -= 4;
        }

        while (v185);
        v187 = vbslq_s8(vcgtq_s64(v186, v183), v183, v186);
        v188 = vextq_s8(v187, v187, 8uLL).u64[0];
        v146 = vbsl_s8(vcgtd_s64(v188, v187.i64[0]), *v187.i8, v188);
        if (v11 == (v11 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_88;
        }

        goto LABEL_84;
      }
    }

    else
    {
      v8 = 0;
    }

    v146 = v8;
    goto LABEL_76;
  }

  v11 = 0;
  v12 = v2[46];
  v232 = v2[68] + 32;
  v13 = v2[71] + 56;
  v272 = v2[71];
  v275 = (v12 + 32);
  v262 = (v12 + 8);
  v259 = (v12 + 56);
  v268 = v12;
  v255 = (v12 + 48);
  while (1)
  {
    v14 = *(v241 + 16);
    if (v11 >= v14)
    {
      __break(1u);
      goto LABEL_81;
    }

    v15 = v2[71];
    v16 = v232 + 24 * v11;
    v246 = v11 + 1;
    v251 = v8;
    v17 = -1 << *(v272 + 32);
    v18 = -v17 < 64 ? ~(-1 << -v17) : -1;
    v19 = v18 & *(v272 + 56);
    v284 = *(v16 + 8);
    v292 = *v16;
    LODWORD(v281) = *(v16 + 16);
    sub_1E5F8710C(*v16, v284, *(v16 + 16));
    v20 = (63 - v17) >> 6;

    v21 = 0;
    if (!v19)
    {
      break;
    }

    while (1)
    {
      v22 = v21;
LABEL_14:
      v24 = v2[49];
      v23 = v2[50];
      v25 = v2[45];
      (*(v268 + 16))(v23, *(v272 + 48) + *(v268 + 72) * (__clz(__rbit64(v19)) | (v22 << 6)), v25);
      v26 = *(v268 + 32);
      v26(v24, v23, v25);
      v27 = sub_1E65D9D08();
      v29 = v28;
      v2[2] = v27;
      v2[3] = v28;
      v1 = (v30 & 1);
      *(v2 + 32) = v30 & 1;
      v2[5] = v292;
      v2[6] = v284;
      *(v2 + 56) = v281;
      sub_1E6217698();
      sub_1E6069558();
      LOBYTE(v25) = sub_1E65D7FD8();
      sub_1E5F87058(v27, v29, v1);
      if (v25)
      {
        break;
      }

      v19 &= v19 - 1;
      (*v262)(v2[49], v2[45]);
      v21 = v22;
      if (!v19)
      {
        goto LABEL_11;
      }
    }

    v48 = v2[71];
    v49 = v2[49];
    v50 = v2[45];
    v51 = v2[43];
    sub_1E5F87058(v292, v284, v281);

    v26(v51, v49, v50);
    v32 = 0;
LABEL_18:
    v33 = v2[45];
    v35 = v2[42];
    v34 = v2[43];
    v36 = *v259;
    (*v259)(v34, v32, 1, v33);
    sub_1E5FAB460(v34, v35, &qword_1ED076B98, &qword_1E65F78F8);
    v37 = *v255;
    v8 = v251;
    if ((*v255)(v35, 1, v33) == 1)
    {
      sub_1E5DFE50C(v2[42], &qword_1ED076B98, &qword_1E65F78F8);
      v38 = 1;
    }

    else
    {
      v39 = v2[48];
      v41 = v2[44];
      v40 = v2[45];
      v1 = v275;
      v42 = *v275;
      (*v275)(v39, v2[42], v40);
      v42(v41, v39, v40);
      v38 = 0;
    }

    v9 = v2[44];
    v43 = v2[45];
    v36(v9, v38, 1, v43);
    if (v37(v9, 1, v43) == 1)
    {
      sub_1E5DFE50C(v2[44], &qword_1ED076B98, &qword_1E65F78F8);
    }

    else
    {
      v44 = *v275;
      (*v275)(v2[51], v2[44], v2[45]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1E64F6B78(0, v251[2] + 1, 1, v251);
      }

      v9 = v8[2];
      v45 = v8[3];
      if (v9 >= v45 >> 1)
      {
        v8 = sub_1E64F6B78(v45 > 1, v9 + 1, 1, v8);
      }

      v46 = v2[51];
      v47 = v2[45];
      v8[2] = v9 + 1;
      v44(v8 + ((*(v268 + 80) + 32) & ~*(v268 + 80)) + *(v268 + 72) * v9, v46, v47);
    }

    v11 = v246;
    if (v246 == v236)
    {
      goto LABEL_28;
    }
  }

LABEL_11:
  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v20)
    {
      v31 = v2[71];
      sub_1E5F87058(v292, v284, v281);

      v32 = 1;
      goto LABEL_18;
    }

    v19 = *(v13 + 8 * v22);
    ++v21;
    if (v19)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_34:
  v276 = *v1;
  result = (*v1)(v2[47], v2[45]);
  if (v22 == 1)
  {
LABEL_38:
    v57 = 0;
    v2 = v292;
    goto LABEL_39;
  }

  v71 = v13 + v284 + v20;
  v72 = 1;
  while (v72 < *(v13 + 16))
  {
    v73 = v292[57];
    v74 = v292[47];
    v75 = v292[40];
    v281(v74, v71, v292[45]);
    sub_1E64E6B08(v75, v74, v73, v228);
    ++v72;
    result = (v276)(v292[47], v292[45]);
    v71 += v284;
    if (v22 == v72)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_100:
  __break(1u);
  return result;
}

uint64_t sub_1E64E31EC()
{
  v1 = v0[61];

  v33 = v0[63];
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[57];
  v5 = v0[54];
  v7 = v0[50];
  v6 = v0[51];
  v9 = v0[48];
  v8 = v0[49];
  v10 = v0[47];
  v11 = v0[44];
  v14 = v0[43];
  v15 = v0[42];
  v16 = v0[41];
  v17 = v0[40];
  v18 = v0[39];
  v19 = v0[36];
  v20 = v0[35];
  v21 = v0[34];
  v22 = v0[33];
  v23 = v0[32];
  v24 = v0[29];
  v25 = v0[28];
  v26 = v0[27];
  v27 = v0[26];
  v28 = v0[25];
  v29 = v0[24];
  v30 = v0[21];
  v31 = v0[18];
  v32 = v0[17];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E64E33C8()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];
  sub_1E5DFE50C(v0[59], &qword_1ED07A720, &qword_1E6607338);
  (*(v2 + 8))(v1, v3);
  v35 = v0[67];
  v5 = v0[58];
  v4 = v0[59];
  v6 = v0[57];
  v7 = v0[54];
  v9 = v0[50];
  v8 = v0[51];
  v11 = v0[48];
  v10 = v0[49];
  v12 = v0[47];
  v13 = v0[44];
  v16 = v0[43];
  v17 = v0[42];
  v18 = v0[41];
  v19 = v0[40];
  v20 = v0[39];
  v21 = v0[36];
  v22 = v0[35];
  v23 = v0[34];
  v24 = v0[33];
  v25 = v0[32];
  v26 = v0[29];
  v27 = v0[28];
  v28 = v0[27];
  v29 = v0[26];
  v30 = v0[25];
  v31 = v0[24];
  v32 = v0[21];
  v33 = v0[18];
  v34 = v0[17];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E64E35D4()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];
  sub_1E5DFE50C(v0[59], &qword_1ED07A720, &qword_1E6607338);
  (*(v2 + 8))(v1, v3);
  v35 = v0[72];
  v5 = v0[58];
  v4 = v0[59];
  v6 = v0[57];
  v7 = v0[54];
  v9 = v0[50];
  v8 = v0[51];
  v11 = v0[48];
  v10 = v0[49];
  v12 = v0[47];
  v13 = v0[44];
  v16 = v0[43];
  v17 = v0[42];
  v18 = v0[41];
  v19 = v0[40];
  v20 = v0[39];
  v21 = v0[36];
  v22 = v0[35];
  v23 = v0[34];
  v24 = v0[33];
  v25 = v0[32];
  v26 = v0[29];
  v27 = v0[28];
  v28 = v0[27];
  v29 = v0[26];
  v30 = v0[25];
  v31 = v0[24];
  v32 = v0[21];
  v33 = v0[18];
  v34 = v0[17];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E64E37E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E64E3890(a1, a2, a3);
}

uint64_t sub_1E64E3890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_1E65D7EB8();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = sub_1E65E2928();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v11 = *(*(sub_1E65D7BC8() - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v12 = *(*(sub_1E65D76F8() - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v13 = sub_1E65D7998();
  v4[15] = v13;
  v14 = *(v13 - 8);
  v4[16] = v14;
  v15 = *(v14 + 64) + 15;
  v4[17] = swift_task_alloc();
  v16 = sub_1E65D7908();
  v4[18] = v16;
  v17 = *(v16 - 8);
  v4[19] = v17;
  v18 = *(v17 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v19 = sub_1E65D76A8();
  v4[22] = v19;
  v20 = *(v19 - 8);
  v4[23] = v20;
  v21 = *(v20 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v22 = sub_1E65DA488();
  v4[27] = v22;
  v23 = *(v22 - 8);
  v4[28] = v23;
  v24 = *(v23 + 64) + 15;
  v4[29] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A720, &qword_1E6607338) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64E3BE0, 0, 0);
}

uint64_t sub_1E64E3BE0()
{
  v1 = *(v0 + 48);
  *(v0 + 328) = *(type metadata accessor for AppComposer() + 20);
  *(v0 + 332) = *(type metadata accessor for AppEnvironment() + 144);
  v2 = WorkoutPlanService.queryAllWorkoutPlanTemplateMetadata.getter();
  *(v0 + 256) = v3;
  v7 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 264) = v5;
  *v5 = v0;
  v5[1] = sub_1E64E3CFC;

  return v7();
}

uint64_t sub_1E64E3CFC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v7 = sub_1E64E451C;
  }

  else
  {
    *(v4 + 280) = a1;
    v7 = sub_1E64E3E24;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E64E3E24()
{
  v82 = v0;
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = *(v0 + 240);
  v6 = *(v0 + 216);
  v7 = *(v0 + 224);
  v9 = *(v0 + 24);
  v8 = *(v0 + 32);

  v10 = sub_1E64E863C(v1, v9, v8);

  sub_1E6059E80(v10, v4);

  sub_1E5DFD1CC(v4, v5, &qword_1ED07A720, &qword_1E6607338);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v11 = *(v0 + 248);
    sub_1E5DFE50C(*(v0 + 240), &qword_1ED07A720, &qword_1E6607338);
    v12 = sub_1E65D8B88();
    sub_1E64E8AD8(&qword_1ED078840, MEMORY[0x1E69CB928]);
    v13 = swift_allocError();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x1E69CB8F0], v12);
    swift_willThrow();
LABEL_5:
    sub_1E5DFE50C(v11, &qword_1ED07A720, &qword_1E6607338);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v25 = sub_1E65E3B68();
    __swift_project_value_buffer(v25, qword_1EE2EA2A0);
    v26 = v13;
    v27 = sub_1E65E3B48();
    v28 = sub_1E65E6328();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v81 = v30;
      *v29 = 136446210;
      *(v0 + 16) = v13;
      v31 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
      v32 = sub_1E65E5CE8();
      v34 = sub_1E5DFD4B0(v32, v33, &v81);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_1E5DE9000, v27, v28, "[PreviousPlanLockupComposer] Plan repetition failed with error: %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1E694F1C0](v30, -1, -1);
      MEMORY[0x1E694F1C0](v29, -1, -1);
    }

    v36 = *(v0 + 240);
    v35 = *(v0 + 248);
    v37 = *(v0 + 232);
    v39 = *(v0 + 200);
    v38 = *(v0 + 208);
    v40 = *(v0 + 192);
    v41 = *(v0 + 168);
    v66 = *(v0 + 160);
    v68 = *(v0 + 136);
    v70 = *(v0 + 112);
    v73 = *(v0 + 104);
    v76 = *(v0 + 96);
    v79 = *(v0 + 72);
    swift_willThrow();

    v42 = *(v0 + 8);

    return v42();
  }

  v16 = *(v0 + 200);
  v15 = *(v0 + 208);
  v17 = *(v0 + 168);
  (*(*(v0 + 224) + 32))(*(v0 + 232), *(v0 + 240), *(v0 + 216));
  sub_1E65D7688();
  sub_1E65DA478();
  sub_1E65D7858();
  sub_1E65D75E8();
  v18 = *(v0 + 184);
  v78 = *(v0 + 176);
  v19 = *(v0 + 168);
  if (v2)
  {
    v11 = *(v0 + 248);
    v20 = *(v0 + 224);
    v72 = *(v0 + 232);
    v75 = v2;
    v21 = *(v0 + 216);
    v22 = *(v0 + 200);
    v24 = *(v0 + 144);
    v23 = *(v0 + 152);

    (*(v23 + 8))(v19, v24);
    (*(v18 + 8))(v22, v78);
    v13 = v75;
    (*(v20 + 8))(v72, v21);
    goto LABEL_5;
  }

  v44 = *(v0 + 200);
  v65 = *(v0 + 232);
  v67 = *(v0 + 208);
  v45 = *(v0 + 192);
  v46 = *(v0 + 152);
  v47 = *(v0 + 160);
  v48 = *(v0 + 144);
  v64 = *(v0 + 112);
  v49 = *(v0 + 88);
  v74 = *(v0 + 80);
  v77 = *(v0 + 96);
  v69 = *(v0 + 104);
  v71 = *(v0 + 40);

  (*(v46 + 8))(v19, v48);
  v50 = *(v18 + 8);
  *(v0 + 288) = v50;
  *(v0 + 296) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v50(v44, v78);
  sub_1E65DA418();
  (*(v18 + 16))(v45, v67, v78);
  sub_1E65D7858();
  sub_1E65D7B78();
  (*(v49 + 16))(v77, v71, v74);
  v51 = (*(v49 + 88))(v77, v74);
  if (v51 == *MEMORY[0x1E699F478] || v51 == *MEMORY[0x1E699F480])
  {
    v52 = *(v0 + 332);
    v53 = *(v0 + 136);
    v55 = *(v0 + 104);
    v54 = *(v0 + 112);
    v56 = *(v0 + 48) + *(v0 + 328);
    sub_1E65D7988();
    v57 = WorkoutPlanService.repeatWorkoutPlan.getter();
    *(v0 + 304) = v58;
    v80 = (v57 + *v57);
    v59 = v57[1];
    v60 = swift_task_alloc();
    *(v0 + 312) = v60;
    *v60 = v0;
    v60[1] = sub_1E64E4784;
    v61 = *(v0 + 136);
    v62 = *(v0 + 72);

    return v80(v62, v61);
  }

  else
  {
    v63 = *(v0 + 80);

    return sub_1E65E6C08();
  }
}

uint64_t sub_1E64E451C()
{
  v29 = v0;
  v1 = v0[32];

  v2 = v0[34];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136446210;
    v0[2] = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v10 = sub_1E65E5CE8();
    v12 = sub_1E5DFD4B0(v10, v11, &v28);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "[PreviousPlanLockupComposer] Plan repetition failed with error: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);
  }

  v14 = v0[30];
  v13 = v0[31];
  v15 = v0[29];
  v17 = v0[25];
  v16 = v0[26];
  v18 = v0[24];
  v19 = v0[21];
  v22 = v0[20];
  v23 = v0[17];
  v24 = v0[14];
  v25 = v0[13];
  v26 = v0[12];
  v27 = v0[9];
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_1E64E4784()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  v2[40] = v0;

  v5 = v2[38];
  if (v0)
  {

    v6 = sub_1E64E4A50;
  }

  else
  {
    (*(v2[8] + 8))(v2[9], v2[7]);

    v6 = sub_1E64E48DC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E64E48DC()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v11 = v0[30];
  v12 = v0[25];
  v8 = v0[22];
  v13 = v0[24];
  v14 = v0[21];
  v15 = v0[20];
  v16 = v0[14];
  v17 = v0[13];
  v18 = v0[12];
  v19 = v0[9];
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1(v7, v8);
  (*(v5 + 8))(v4, v6);
  sub_1E5DFE50C(v3, &qword_1ED07A720, &qword_1E6607338);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E64E4A50()
{
  v36 = v0;
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[22];
  (*(v0[16] + 8))(v0[17], v0[15]);
  v2(v7, v8);
  (*(v5 + 8))(v4, v6);
  sub_1E5DFE50C(v3, &qword_1ED07A720, &qword_1E6607338);
  v9 = v0[40];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v10 = sub_1E65E3B68();
  __swift_project_value_buffer(v10, qword_1EE2EA2A0);
  v11 = v9;
  v12 = sub_1E65E3B48();
  v13 = sub_1E65E6328();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35 = v15;
    *v14 = 136446210;
    v0[2] = v9;
    v16 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v17 = sub_1E65E5CE8();
    v19 = sub_1E5DFD4B0(v17, v18, &v35);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1E5DE9000, v12, v13, "[PreviousPlanLockupComposer] Plan repetition failed with error: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);
  }

  v21 = v0[30];
  v20 = v0[31];
  v22 = v0[29];
  v24 = v0[25];
  v23 = v0[26];
  v25 = v0[24];
  v26 = v0[21];
  v29 = v0[20];
  v30 = v0[17];
  v31 = v0[14];
  v32 = v0[13];
  v33 = v0[12];
  v34 = v0[9];
  swift_willThrow();

  v27 = v0[1];

  return v27();
}

uint64_t sub_1E64E4D18(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C18, &qword_1E65F7A00);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64E4DB8, 0, 0);
}

uint64_t sub_1E64E4DB8()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 144);
  v4 = WorkoutPlanService.makeWorkoutPlansUpdatedStream.getter();
  v0[6] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E64E4ED4;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E64E4ED4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E64E4FEC, 0, 0);
}

uint64_t sub_1E64E4FEC()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C20, &qword_1E65F7A10);
  v3[4] = sub_1E5FED46C(&qword_1ED076C28, &qword_1ED076C20, &qword_1E65F7A10);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E5FED46C(&qword_1ED076C30, &qword_1ED076C18, &qword_1E65F7A00);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E64E5128(void *a1, uint64_t (*a2)(), uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v47 = a2;
  v48 = a4;
  v8 = type metadata accessor for AppComposer();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A710, &qword_1E66072C8);
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v55 = v45 - v13;
  v14 = sub_1E65E24F8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1E65E24C8();
  v51 = *(v54 - 8);
  v19 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v21 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  v22 = *a1;
  v49 = v21;
  v50 = v22;
  (*(v15 + 16))(v18, v47, v14);
  sub_1E65E24B8();
  v45[0] = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1DEAC(a1, v45[0]);
  v23 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v47 = type metadata accessor for AppComposer;
  sub_1E63B8F5C(v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v23, type metadata accessor for AppComposer);
  v26 = (v25 + v24);
  v27 = a3;
  *v26 = a3;
  v28 = v48;
  v26[1] = v48;
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  type metadata accessor for AppFeature();
  sub_1E64E8AD8(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v45[1] = sub_1E64E8AD8(&qword_1ED07A718, MEMORY[0x1E699F310]);
  swift_bridgeObjectRetain_n();
  sub_1E65E4DE8();
  v30 = v45[0];
  sub_1E5E1DEAC(v46, v45[0]);
  v31 = *a5;
  v32 = a5[3];
  v33 = a5[5];
  v34 = a5[7];
  v48 = a5[9];
  v35 = swift_allocObject();
  sub_1E63B8F5C(v30, v35 + v23, v47);
  v36 = (v35 + v24);
  v37 = *(a5 + 3);
  v36[2] = *(a5 + 2);
  v36[3] = v37;
  v36[4] = *(a5 + 4);
  v38 = *(a5 + 1);
  *v36 = *a5;
  v36[1] = v38;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1E64E69D0;
  *(v39 + 24) = v35;

  v40 = v49;
  v42 = v54;
  v41 = v55;
  v43 = sub_1E65E4F08();

  (*(v52 + 8))(v41, v53);
  (*(v51 + 8))(v40, v42);
  return v43;
}

uint64_t sub_1E64E564C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v109 = a3;
  v110 = a4;
  v103 = a1;
  v108 = a5;
  v6 = sub_1E65E2498();
  v92 = *(v6 - 8);
  v93 = v6;
  v7 = *(v92 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v91 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v90 = &v86 - v10;
  v11 = sub_1E65E24D8();
  v105 = *(v11 - 8);
  v106 = v11;
  v12 = *(v105 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v89 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v107 = &v86 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v99 = &v86 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v101 = &v86 - v21;
  v100 = sub_1E65D7848();
  v98 = *(v100 - 8);
  v22 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v104 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0);
  v24 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v26 = &v86 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  v95 = *(v27 - 8);
  v96 = v27;
  v28 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v86 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v102 = &v86 - v33;
  v94 = sub_1E65DA2A8();
  v88 = *(v94 - 8);
  v34 = *(v88 + 64);
  v35 = MEMORY[0x1EEE9AC00](v94);
  v87 = &v86 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v86 = &v86 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E58, &qword_1E65EA150);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v41 = &v86 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v86 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E60, &qword_1E65EA158);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v50 = &v86 - v49;
  v51 = *a2;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  sub_1E60EE7BC(v50);
  sub_1E5DFE50C(v41, &qword_1ED071E58, &qword_1E65EA150);
  (*(v43 + 8))(v46, v42);
  v52 = type metadata accessor for BrowsingIdentity(0);
  v53 = 1;
  if ((*(*(v52 - 8) + 48))(v50, 1, v52) != 1)
  {
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
    if ((*(*(v54 - 8) + 48))(v50, 1, v54) != 1)
    {
      v55 = v88;
      v56 = v86;
      v57 = v94;
      (*(v88 + 32))(v86, &v50[*(v54 + 48)], v94);
      v58 = v87;
      sub_1E65DA298();
      sub_1E64E8AD8(&qword_1ED071E28, MEMORY[0x1E69CCBE8]);
      v53 = sub_1E65E6718();
      v59 = *(v55 + 8);
      v59(v58, v57);
      v59(v56, v57);
      sub_1E64E82C0(v50, type metadata accessor for RemoteParticipantScope);
    }
  }

  LODWORD(v94) = v53;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v60 = v96;
  sub_1E65E4C98();
  (*(v95 + 8))(v30, v60);
  sub_1E65E4DA8();
  sub_1E5DFE50C(v26, &qword_1ED072958, &qword_1E65EC0F0);
  v61 = type metadata accessor for AppState();
  v62 = *(v61 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v63 = v103;
  v64 = v99;
  sub_1E65E4C98();
  v65 = v101;
  sub_1E5E1F544(v101);
  sub_1E5DFE50C(v64, &qword_1ED071F78, &unk_1E65EA3F0);
  v66 = v98;
  v67 = *(v98 + 48);
  v68 = v100;
  if (v67(v65, 1, v100) == 1)
  {
    sub_1E65D77C8();
    v69 = v67(v65, 1, v68);
    v71 = v109;
    v70 = v110;
    v72 = v107;
    if (v69 != 1)
    {
      sub_1E5DFE50C(v65, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v66 + 32))(v104, v65, v68);
    v71 = v109;
    v70 = v110;
    v72 = v107;
  }

  v73 = *(v63 + *(v61 + 232) + 8);
  if (*(v73 + 16) && (v74 = sub_1E6215038(v71, v70), (v75 & 1) != 0))
  {
    v77 = v92;
    v76 = v93;
    v78 = v90;
    (*(v92 + 16))(v90, *(v73 + 56) + *(v92 + 72) * v74, v93);
    v79 = v89;
    sub_1E65E2468();
    (*(v77 + 8))(v78, v76);
    (*(v105 + 32))(v72, v79, v106);
    if (!*(v73 + 16))
    {
      goto LABEL_15;
    }
  }

  else
  {
    (*(v105 + 104))(v72, *MEMORY[0x1E699F318], v106);
    if (!*(v73 + 16))
    {
      goto LABEL_15;
    }
  }

  v80 = sub_1E6215038(v71, v70);
  if (v81)
  {
    v82 = v91;
    v83 = v92;
    v84 = v93;
    (*(v92 + 16))(v91, *(v73 + 56) + *(v92 + 72) * v80, v93);
    sub_1E65E2488();
    (*(v83 + 8))(v82, v84);
  }

LABEL_15:

  return sub_1E65E2478();
}

uint64_t sub_1E64E60F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079348, &qword_1E66014B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  v12 = sub_1E65E2498();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a2, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = a1 + *(type metadata accessor for AppState() + 232);

  return sub_1E64095F4(v11, a3, a4);
}

uint64_t sub_1E64E6224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AppComposer();
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65E24A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v29 - v16;
  v18 = sub_1E65E60A8();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v11 + 16))(v13, a1, v10);
  sub_1E5E1DEAC(a3, v9);
  v19 = *(a4 + 24);
  v29[0] = *a4;
  v29[1] = v19;
  v20 = *(a4 + 56);
  v29[2] = *(a4 + 40);
  v29[3] = v20;
  v29[4] = *(a4 + 72);
  v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v22 = (v12 + *(v30 + 80) + v21) & ~*(v30 + 80);
  v23 = (v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v11 + 32))(v24 + v21, v13, v10);
  sub_1E63B8F5C(v9, v24 + v22, type metadata accessor for AppComposer);
  v25 = (v24 + v23);
  v26 = *(a4 + 48);
  v25[2] = *(a4 + 32);
  v25[3] = v26;
  v25[4] = *(a4 + 64);
  v27 = *(a4 + 16);
  *v25 = *a4;
  v25[1] = v27;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v17, &unk_1E66072D0, v24);
}

uint64_t sub_1E64E652C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a2;
  v45 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v44 - v10;
  v12 = type metadata accessor for ArtworkContent();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ArtworkDescriptor();
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DB0, &qword_1E65F3940);
  v21 = *(v20 + 48);
  v22 = sub_1E65D76F8();
  (*(*(v22 - 8) + 16))(v15, a1, v22);
  sub_1E5DFD1CC(a3, v11, &qword_1ED072B60, &unk_1E65FA490);
  v23 = sub_1E65E2CF8();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v11, 1, v23) == 1)
  {
    sub_1E5DFE50C(v11, &qword_1ED072B60, &unk_1E65FA490);
    v25 = 1;
  }

  else
  {
    sub_1E61DB264(&v15[v21]);
    (*(v24 + 8))(v11, v23);
    v25 = 0;
  }

  v26 = sub_1E65D9388();
  (*(*(v26 - 8) + 56))(&v15[v21], v25, 1, v26);
  *&v15[*(v20 + 64)] = v44;
  swift_storeEnumTagMultiPayload();
  v27 = *(a4 + *(type metadata accessor for AppComposer() + 20) + 8);
  v28 = sub_1E65DAE38();
  v29 = sub_1E65DAE38();
  v30 = sub_1E65E4B48();
  v31 = 4.0;
  if (v30)
  {
    v31 = 8.0;
  }

  v32 = 16.0;
  if (v30)
  {
    v32 = 18.0;
  }

  if (v28 == v29)
  {
    v33 = v32;
  }

  else
  {
    v33 = v31;
  }

  if (v28 == v29)
  {
    v34 = 12.0;
  }

  else
  {
    v34 = 8.0;
  }

  sub_1E63B8F5C(v15, v19, type metadata accessor for ArtworkContent);
  *(v19 + v16[5]) = MEMORY[0x1E69E7CD0];
  v35 = (v19 + v16[6]);
  *v35 = 0.0;
  v35[1] = v33;
  v35[2] = v33;
  v35[3] = v34;
  *(v19 + v16[7]) = 1;
  v36 = (v19 + v16[8]);
  *v36 = 0;
  v36[1] = 0;
  v37 = v45;
  sub_1E64D2DD0(v19, a4, v45);
  v38 = sub_1E65E4B98();
  v40 = v39;
  v41 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
  sub_1E64D54B4(v19, a4, v41);
  sub_1E64E82C0(v19, type metadata accessor for ArtworkDescriptor);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v43 = (v41 + *(result + 36));
  *v43 = v38;
  v43[1] = v40;
  return result;
}

uint64_t sub_1E64E6918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1E64E564C(a1, (v2 + v6), v8, v9, a2);
}

uint64_t sub_1E64E69D0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E64E6224(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E64E6A7C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1E65DA428();
  v3 = sub_1E65D9CD8();
  v5 = sub_1E637CA94(v3, v4, v2);

  if (v5)
  {
    result = sub_1E65D9D18();
  }

  else
  {
    result = 0;
    v7 = 0;
  }

  *a1 = result;
  a1[1] = v7;
  return result;
}

uint64_t sub_1E64E6B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BD8, &qword_1E65F7920);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v96 = &v82 - v8;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BE0, &qword_1E65F7928);
  v9 = *(*(v94 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v94);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v82 - v13;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BE8, &qword_1E65F7930);
  v15 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v82 - v16;
  v105 = sub_1E65D72A8();
  v93 = *(v105 - 8);
  v17 = *(v93 + 64);
  v18 = MEMORY[0x1EEE9AC00](v105);
  v99 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v98 = &v82 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v82 - v23;
  v25 = sub_1E65D72D8();
  v101 = *(v25 - 8);
  v102 = v25;
  v26 = *(v101 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v90 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v91 = &v82 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v100 = &v82 - v31;
  v32 = sub_1E65DA428();
  v33 = sub_1E65D9CD8();
  v35 = sub_1E637CA94(v33, v34, v32);

  if (v35)
  {
    v37 = sub_1E65D9CD8();
    if (*(a4 + 16))
    {
      v39 = sub_1E6215038(v37, v38);
      v41 = v40;

      if (v41)
      {
        v42 = (*(a4 + 56) + 16 * v39);
        v44 = *v42;
        v43 = v42[1];
        v45 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

        v88 = v44;
        v89 = v43;
        v46 = sub_1E65E5C48();
        [v45 initWithString_];

        swift_getKeyPath();
        v47 = sub_1E65D71D8();
        v48 = sub_1E64E8AD8(&qword_1ED076BF0, MEMORY[0x1E699D770]);
        sub_1E65D72F8();
        if (v4)
        {

          (*(v101 + 56))(v24, 1, 1, v102);
          return sub_1E5DFE50C(v24, &qword_1ED072D90, &qword_1E66040F0);
        }

        v85 = v48;
        v86 = v47;
        v87 = 0;
        v49 = v101;
        v50 = v102;
        (*(v101 + 56))(v24, 0, 1, v102);
        (*(v49 + 32))(v100, v24, v50);
        v51 = v98;
        sub_1E65D7208();
        v52 = v99;
        sub_1E65D72B8();
        if (v88 == 0x656D2E656C707061 && v89 == 0xEE00657461746964 || (sub_1E65E6C18() & 1) != 0)
        {
          sub_1E64E8AD8(&qword_1ED076BF8, MEMORY[0x1E69687E8]);
          v53 = v105;
          result = sub_1E65E5B88();
          if (result)
          {
            v54 = v93;
            v55 = *(v93 + 16);
            v55(v14, v51, v53);
            v56 = v94;
            v55(&v14[*(v94 + 48)], v52, v53);
            sub_1E5DFD1CC(v14, v12, &qword_1ED076BE0, &qword_1E65F7928);
            v83 = *(v56 + 48);
            v57 = *(v54 + 32);
            v58 = v97;
            v57(v97, v12, v105);
            v59 = *(v54 + 8);
            v84 = v59;
            v93 = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v59(&v12[v83], v105);
            sub_1E5FAB460(v14, v12, &qword_1ED076BE0, &qword_1E65F7928);
            v57(&v58[*(v95 + 36)], &v12[*(v56 + 48)], v105);
            v59(v12, v105);
            swift_getKeyPath();
            swift_getKeyPath();
            sub_1E65D9D18();
            v60 = v96;
            sub_1E65E0AE8();
            v61 = sub_1E65E0AF8();
            (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
            sub_1E5FED46C(&qword_1ED076C00, &qword_1ED076BE8, &qword_1E65F7930);
            v62 = v58;
LABEL_15:
            v72 = v100;
            v73 = sub_1E65D7318();
            v74 = sub_1E65D7368();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C08, &qword_1E65F7998);
            sub_1E64E8AD8(&qword_1ED076C10, MEMORY[0x1E699D9A0]);
            sub_1E65D73D8();
            v74(v103, 0);

            v73(v104, 0);
            sub_1E5DFE50C(v62, &qword_1ED076BE8, &qword_1E65F7930);
            v75 = v90;
            sub_1E65D7228();
            v76 = v91;
            sub_1E65D7258();
            v77 = *(v101 + 8);
            v78 = v75;
            v79 = v102;
            v77(v78, v102);
            sub_1E65D7298();
            v77(v76, v79);
            v80 = v105;
            v81 = v84;
            v84(v99, v105);
            v81(v98, v80);
            return (v77)(v72, v79);
          }

          __break(1u);
        }

        else
        {
          sub_1E64E8AD8(&qword_1ED076BF8, MEMORY[0x1E69687E8]);
          v63 = v105;
          result = sub_1E65E5B88();
          if (result)
          {
            v64 = v93;
            v65 = *(v93 + 16);
            v65(v14, v51, v63);
            v66 = v94;
            v65(&v14[*(v94 + 48)], v52, v63);
            sub_1E5DFD1CC(v14, v12, &qword_1ED076BE0, &qword_1E65F7928);
            v83 = *(v66 + 48);
            v67 = *(v64 + 32);
            v68 = v97;
            v67(v97, v12, v105);
            v69 = *(v64 + 8);
            v84 = v69;
            v93 = (v64 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v69(&v12[v83], v105);
            sub_1E5FAB460(v14, v12, &qword_1ED076BE0, &qword_1E65F7928);
            v67(&v68[*(v95 + 36)], &v12[*(v66 + 48)], v105);
            v69(v12, v105);
            swift_getKeyPath();
            swift_getKeyPath();
            sub_1E65D9D18();
            v70 = v96;
            sub_1E65E0AE8();
            v71 = sub_1E65E0AF8();
            (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
            sub_1E5FED46C(&qword_1ED076C00, &qword_1ED076BE8, &qword_1E65F7930);
            v62 = v68;
            goto LABEL_15;
          }
        }

        __break(1u);
      }
    }

    else
    {
    }
  }

  return result;
}

unint64_t *sub_1E64E76CC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_1E64E8320(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_1E64E7770(char **a1)
{
  v1 = a1;
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E636B2BC(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v21[0] = (v2 + 32);
  v21[1] = v3;
  result = sub_1E65E6BA8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v19 = v1;
      v18 = v2;
      v9 = v2 + 33;
      v10 = -1;
      for (i = 1; i != v3; ++i)
      {
        v12 = v4[i];
        v13 = v10;
        v14 = v9;
        do
        {
          v15 = *(v14 - 1);
          v16 = sub_1E65DAD68();
          result = sub_1E65DAD68();
          if (v16 >= result)
          {
            break;
          }

          result = *v14;
          *v14 = *(v14 - 1);
          *--v14 = result;
        }

        while (!__CFADD__(v13++, 1));
        ++v9;
        --v10;
      }

      v1 = v19;
      v2 = v18;
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      v8 = sub_1E65E5F98();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = v8 + 32;
    v20[1] = v7;
    sub_1E64E78EC(v20, v22, v21, v6);
    *(v8 + 16) = 0;
  }

  *v1 = v2;
  return result;
}

uint64_t sub_1E64E78EC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v9 = *v96;
    if (!*v96)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_1E636AC44(v8);
      v8 = result;
    }

    v87 = *(v8 + 2);
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = *&v8[16 * v87];
        v89 = *&v8[16 * v87 + 24];
        sub_1E64E7ED8((*a3 + v88), (*a3 + *&v8[16 * v87 + 16]), *a3 + v89, v9);
        if (v5)
        {
        }

        if (v89 < v88)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1E636AC44(v8);
        }

        if (v87 - 2 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v90 = &v8[16 * v87];
        *v90 = v88;
        *(v90 + 1) = v89;
        result = sub_1E636ABB8(v87 - 1);
        v87 = *(v8 + 2);
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_128;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = (v7 + 1);
    if ((v7 + 1) < v6)
    {
      v94 = v5;
      v11 = *a3;
      v12 = *(*a3 + v10);
      v13 = v7[*a3];
      v14 = v7;
      v15 = sub_1E65DAD68();
      result = sub_1E65DAD68();
      v16 = result;
      v97 = v6;
      v17 = v6 - 2;
      v92 = v7;
      while (v17 != v14)
      {
        v18 = v14[v11 + 2];
        v19 = v14[v11 + 1];
        v20 = sub_1E65DAD68();
        result = sub_1E65DAD68();
        ++v14;
        if (v15 < v16 == v20 >= result)
        {
          v21 = (v14 + 1);
          goto LABEL_11;
        }
      }

      v21 = v97;
LABEL_11:
      v5 = v94;
      if (v15 >= v16)
      {
        v10 = v21;
        v9 = v92;
      }

      else
      {
        v9 = v92;
        if (v21 < v92)
        {
          goto LABEL_121;
        }

        if (v92 < v21)
        {
          v22 = (v21 - 1);
          v23 = v92;
          do
          {
            if (v23 != v22)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v24 = v23[v26];
              v23[v26] = v22[v26];
              v22[v26] = v24;
            }
          }

          while (++v23 < v22--);
        }

        v10 = v21;
      }
    }

    v27 = a3[1];
    if (v10 < v27)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_120;
      }

      if (v10 - v9 < a4)
      {
        v28 = &v9[a4];
        if (__OFADD__(v9, a4))
        {
          goto LABEL_122;
        }

        if (v28 >= v27)
        {
          v28 = a3[1];
        }

        if (v28 < v9)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v10 != v28)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v10 < v9)
    {
      goto LABEL_119;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v40 = v5;
    if ((result & 1) == 0)
    {
      result = sub_1E636ADD0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v42 = *(v8 + 2);
    v41 = *(v8 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_1E636ADD0((v41 > 1), v42 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v43;
    v44 = &v8[16 * v42];
    *(v44 + 4) = v9;
    *(v44 + 5) = v10;
    v45 = *v96;
    if (!*v96)
    {
      goto LABEL_129;
    }

    v7 = v10;
    if (v42)
    {
      v5 = v40;
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v8 + 4);
          v48 = *(v8 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_61:
          if (v50)
          {
            goto LABEL_108;
          }

          v63 = &v8[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_111;
          }

          v69 = &v8[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_115;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v73 = &v8[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_75:
        if (v68)
        {
          goto LABEL_110;
        }

        v76 = &v8[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v79 < v67)
        {
          goto LABEL_4;
        }

LABEL_82:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
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
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*a3)
        {
          goto LABEL_126;
        }

        v9 = *&v8[16 * v84 + 32];
        v85 = *&v8[16 * v46 + 40];
        sub_1E64E7ED8(&v9[*a3], (*a3 + *&v8[16 * v46 + 32]), *a3 + v85, v45);
        if (v5)
        {
        }

        if (v85 < v9)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1E636AC44(v8);
        }

        if (v84 >= *(v8 + 2))
        {
          goto LABEL_105;
        }

        v86 = &v8[16 * v84];
        *(v86 + 4) = v9;
        *(v86 + 5) = v85;
        result = sub_1E636ABB8(v46);
        v43 = *(v8 + 2);
        if (v43 <= 1)
        {
          goto LABEL_4;
        }
      }

      v51 = &v8[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_106;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_107;
      }

      v58 = &v8[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_109;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_112;
      }

      if (v62 >= v54)
      {
        v80 = &v8[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_116;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

    v5 = v40;
LABEL_4:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_92;
    }
  }

  v93 = v9;
  v95 = v5;
  v29 = *a3;
  v30 = (*a3 + v10);
  v31 = &v9[-v10];
  v98 = v28;
LABEL_33:
  v32 = v10;
  v33 = *(v29 + v10);
  v34 = v31;
  v35 = v30;
  while (1)
  {
    v36 = *(v35 - 1);
    v37 = sub_1E65DAD68();
    result = sub_1E65DAD68();
    if (v37 >= result)
    {
LABEL_32:
      v10 = v32 + 1;
      ++v30;
      --v31;
      if ((v32 + 1) != v98)
      {
        goto LABEL_33;
      }

      v10 = v98;
      v9 = v93;
      v5 = v95;
      goto LABEL_40;
    }

    if (!v29)
    {
      break;
    }

    v38 = *v35;
    *v35 = *(v35 - 1);
    *--v35 = v38;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}