uint64_t sub_2530D1E40()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2530D1F10(void *a1, void *a2)
{
  if (qword_27F580210 != -1)
  {
    swift_once();
  }

  v4 = sub_253148A94();
  __swift_project_value_buffer(v4, qword_27F5809A0);
  v5 = a1;
  v6 = a2;
  v7 = sub_253148A74();
  v8 = sub_2531490B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    if (a1)
    {
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v9 + 4) = v12;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v13;
    v10[1] = a2;
    v14 = v6;
    _os_log_impl(&dword_2530B8000, v7, v8, "XPC store requested recovery for error: %@, context: %@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581E10, &qword_25314F640);
    swift_arrayDestroy();
    MEMORY[0x259BFDC60](v10, -1, -1);
    MEMORY[0x259BFDC60](v9, -1, -1);
  }

  return 0;
}

uint64_t sub_2530D20A8(uint64_t a1)
{
  v2 = type metadata accessor for HomesStore.CoreData.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ModelIdentifierDescriptor.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_253148944();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2530D21A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_253149734();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2530D2220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_2530D21A4(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_2530D2254@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_2530CDA90();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2530D2284(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2530D22D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ModelIdentifierDescriptor.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  type metadata accessor for ModelIdentifierDescriptor.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_2531496E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_253149894();
  sub_253148944();
  sub_2530C2A80(&qword_27F580630);
  sub_2531496D4();
  return (*(v6 + 8))(v9, v5);
}

uint64_t ModelIdentifierDescriptor.hash(into:)()
{
  sub_253148944();
  sub_2530C2A80(&qword_27F580560);

  return sub_253148B14();
}

uint64_t ModelIdentifierDescriptor.hashValue.getter()
{
  sub_253149814();
  sub_253148944();
  sub_2530C2A80(&qword_27F580560);
  sub_253148B14();
  return sub_253149844();
}

uint64_t ModelIdentifierDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_253148944();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModelIdentifierDescriptor.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_253149684();
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for ModelIdentifierDescriptor();
  v23 = *(v10 - 8);
  v11 = *(v23 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v30;
  sub_253149884();
  if (!v15)
  {
    v22 = v13;
    v30 = v10;
    v16 = v25;
    v17 = v27;
    sub_2530C2A80(&qword_27F5805E8);
    v18 = v28;
    v19 = v26;
    sub_253149664();
    (*(v16 + 8))(v9, v19);
    v20 = v22;
    (*(v17 + 32))(v22, v29, v18);
    (*(v23 + 32))(v24, v20, v30);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2530D28CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return ModelIdentifierDescriptor.init(from:)(a1, a3);
}

uint64_t sub_2530D290C()
{
  sub_253149814();
  ModelIdentifierDescriptor.hash(into:)();
  return sub_253149844();
}

uint64_t sub_2530D2968(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

uint64_t sub_2530D2A70()
{
  result = sub_253148944();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2530D2B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v22 = a5;
  v9 = type metadata accessor for RelationshipResolver();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  v23 = a3;
  v24 = a4;
  KeyPath = swift_getKeyPath();
  v18 = v10[2];
  v18(v16, a1, v9);
  v18(v14, a2, v9);
  sub_2530D2CEC(KeyPath, v16, v14, v22);
  v19 = v10[1];
  v19(a2, v9);
  return (v19)(a1, v9);
}

uint64_t sub_2530D2CEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = (*a1 + *MEMORY[0x277D84DE8]);
  v10 = *v8;
  v9 = v8[1];
  v11 = _s14descr2864E94D1O17DescriptorVisitorVMa();
  v12 = v11[13];
  sub_253149474();
  *&a4[v12] = sub_253148AB4();
  *a4 = a1;
  v13 = v11[11];
  v14 = type metadata accessor for RelationshipResolver();
  v17 = *(*(v14 - 8) + 32);
  (v17)((v14 - 8), &a4[v13], a2, v14);
  v15 = &a4[v11[12]];

  return v17(v15, a3, v14);
}

uint64_t sub_2530D2E28(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2530D4D10(a1, a2, a3);
}

uint64_t sub_2530D2E50(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = _s14descr2864E94D1O17DescriptorVisitorVMa();
  a4(a1, v9, a3);
}

uint64_t sub_2530D2EB4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2530D4FC4(a1, a2, a3);
}

uint64_t sub_2530D2EDC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *a1;
  v55 = sub_253148944();
  v48 = *(v55 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v55);
  v49 = v10;
  v54 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  v53 = *(v8 + *MEMORY[0x277D84DE8] + 8);
  v12 = *(v53 + 16);
  v13 = *(a2 + 32);
  v66[0] = v11;
  v66[1] = v12;
  v66[2] = v13;
  v66[3] = a3;
  v62 = v13;
  v63 = v12;
  v14 = type metadata accessor for RelationshipResolver.ModelProxy();
  v61 = *(v14 - 8);
  v45 = *(v61 + 64);
  MEMORY[0x28223BE20](v14);
  v64 = &v45 - v15;
  v16 = *v4;
  v17 = *(a2 + 24);
  sub_2531498A4();
  v56 = a1;
  v18 = sub_253149484();
  v19 = *(a2 + 44);
  v20 = type metadata accessor for RelationshipResolver();
  v21 = RelationshipResolver.models<A>(at:)(v18, v20, a3);
  v59 = a2;
  v60 = v4;
  v22 = v4 + *(a2 + 48);
  v46 = v18;
  v23 = RelationshipResolver.models<A>(at:)(v18, v20, a3);
  v57 = a3;
  v58 = v11;
  v52 = v17;
  v24 = sub_2530DA1E0(v21, v23, v11, v17, v63, v62, a3);

  if (!sub_253148D44())
  {

    if ((v24 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v25 = 0;
  v26 = v24 ^ 1;
  v27 = v61;
  v51 = (v61 + 16);
  v49 += 40;
  v48 += 32;
  v47 = (v61 + 8);
  v50 = v14;
  v28 = v52;
  while (1)
  {
    v29 = sub_253148CF4();
    sub_253148CC4();
    if ((v29 & 1) == 0)
    {
      break;
    }

    (*(v27 + 16))(v64, v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25, v14);
    v30 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_10;
    }

LABEL_5:
    v31 = v54;
    v32 = v14;
    v33 = v21;
    v34 = v64;
    v35 = RelationshipResolver.ModelProxy.id.getter(v32);
    MEMORY[0x28223BE20](v35);
    v37 = (&v45 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    v38 = v57;
    *v37 = v58;
    v37[1] = v28;
    v39 = v62;
    v37[2] = v63;
    v37[3] = v39;
    v37[4] = v38;
    (*v48)(v37 + 5, v31, v55);
    swift_getKeyPath();
    sub_2531498A4();
    v40 = sub_253149484();

    sub_2530D4FC4(v40, v59, v38);
    LOBYTE(v31) = v41;

    v42 = v34;
    v21 = v33;
    v14 = v50;
    (*v47)(v42, v50);

    v26 |= v31;
    v27 = v61;
    ++v25;
    if (v30 == sub_253148D44())
    {
      goto LABEL_11;
    }
  }

  result = sub_2531493F4();
  if (v45 != 8)
  {
    __break(1u);
    return result;
  }

  v66[0] = result;
  (*v51)(v64, v66, v14);
  swift_unknownObjectRelease();
  v30 = v25 + 1;
  if (!__OFADD__(v25, 1))
  {
    goto LABEL_5;
  }

LABEL_10:
  __break(1u);
LABEL_11:

  if ((v26 & 1) == 0)
  {
  }

LABEL_12:
  v65 = v46;
  v44 = *(v59 + 52);
  sub_253149474();
  sub_253148FF4();
  sub_253148FA4();
}

uint64_t sub_2530D3410(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = _s14descr2864E94D1O17DescriptorVisitorVMa();
  sub_2530D59B0(a1, a2, v9, a4);
}

uint64_t sub_2530D3474(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_2530D59B0(a1, a2, a3, a4);
}

uint64_t sub_2530D349C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  v11 = _s14descr2864E94D1O17DescriptorVisitorVMa();

  return sub_2530D350C(a1, a2, v11, a4, a5);
}

uint64_t sub_2530D350C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a4;
  v9 = *(*(*a2 + *MEMORY[0x277D84DE8] + 8) + 16);
  v61 = *(v9 - 8);
  v10 = *(v61 + 64);
  MEMORY[0x28223BE20](a1);
  v60 = &v60 - v11;
  v13 = *(v12 + 16);
  v14 = *(v12 + 32);
  v15 = type metadata accessor for RelationshipResolver();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v74 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v70 = v14;
  v71 = &v60 - v20;
  v72 = _s14descr2864E94D1O17DescriptorVisitorVMa();
  v75 = *(v72 - 8);
  v21 = *(v75 + 64);
  MEMORY[0x28223BE20](v72);
  v69 = &v60 - v22;
  v65 = v13;
  v79 = v13;
  v80 = v9;
  v62 = v9;
  v81 = v14;
  v82 = a5;
  v68 = type metadata accessor for RelationshipResolver.ModelProxy();
  v77 = sub_2531491F4();
  v67 = *(v77 - 8);
  v23 = *(v67 + 64);
  v24 = MEMORY[0x28223BE20](v77);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v60 - v27;
  v66 = a1;
  v29 = v76;
  v30 = sub_2530D59B0(a1, a2, a3, a5);
  v31 = *(a3 + 44);
  RelationshipResolver.model<A>(at:)(v30, v15, a5, v28);
  v32 = *(v16 + 16);
  v33 = v71;
  v32(v71, &v29[v31], v15);
  v64 = a3;
  v34 = &v29[*(a3 + 48)];
  v35 = v74;
  v36 = v15;
  v37 = v69;
  v32(v74, v34, v36);

  v73 = v30;
  v39 = v35;
  v41 = v67;
  v40 = v68;
  sub_2530D2CEC(v38, v33, v39, v37);
  v42 = *(v41 + 16);
  v74 = v28;
  v42(v26, v28, v77);
  v43 = *(v40 - 8);
  if ((*(v43 + 48))(v26, 1, v40) == 1)
  {
    (*(v41 + 8))(v26, v77);
    v44 = v72;
  }

  else
  {
    v45 = v61;
    v46 = v60;
    v47 = v62;
    (*(v61 + 16))(v60, v26, v62);
    (*(v43 + 8))(v26, v40);
    v48 = v63;
    v49 = *(v63 + 16);
    v50 = v72;
    WitnessTable = swift_getWitnessTable();
    v49(v37, v50, WitnessTable, v47, v48);
    (*(v45 + 8))(v46, v47);
    v44 = v50;
  }

  v52 = *&v37[*(v44 + 52)];
  v53 = *(v44 + 16);
  sub_253149474();
  if ((sub_253148FB4() & 1) == 0)
  {
    v79 = *&v37[*(v44 + 52)];
    v54 = v64;
    v55 = *(v64 + 52);
    sub_253149474();
    sub_253148FF4();

    swift_getWitnessTable();
    v56 = v76;
    sub_253148FE4();
    v78 = v73;

    sub_253148FA4();

    v57 = *v56;
    v58 = *(v54 + 24);
    sub_2531498A4();
    v78 = sub_253149484();
    sub_253148FA4();
  }

  (*(v75 + 8))(v37, v44);
  return (*(v41 + 8))(v74, v77);
}

uint64_t sub_2530D3B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = _s14descr2864E94D1O17DescriptorVisitorVMa();

  return a4(a1, v8, a3);
}

uint64_t sub_2530D3BC4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = *(a2 + 16);
  v9 = *a1;
  v27 = *(a2 + 24);
  sub_2531498A4();
  v10 = sub_253149484();
  v11 = *(a2 + 44);
  v12 = *(a2 + 32);
  v13 = type metadata accessor for RelationshipResolver();
  v28 = v4;
  v14 = v10;
  v15 = RelationshipResolver.models<A>(at:)(v10, v13, a3);
  if (v15)
  {
    v16 = v15;
    v17 = v9;
  }

  else
  {
    v17 = v9;
    v29 = *(*(*(v9 + *MEMORY[0x277D84DE8] + 8) + 16) + 16);
    type metadata accessor for RelationshipResolver.ModelProxy();
    v16 = sub_253148CE4();
  }

  v18 = v28 + *(a2 + 48);
  v19 = RelationshipResolver.models<A>(at:)(v14, v13, a3);
  if (v19)
  {
    v20 = v19;
    v21 = MEMORY[0x277D84DE8];
  }

  else
  {
    v22 = MEMORY[0x277D84DE8];
    v30 = *(*(*(v17 + *MEMORY[0x277D84DE8] + 8) + 16) + 16);
    type metadata accessor for RelationshipResolver.ModelProxy();
    v23 = sub_253148CE4();
    v21 = v22;
    v20 = v23;
  }

  v24 = sub_2530DA1E0(v16, v20, v8, v27, *(*(*(v17 + *v21 + 8) + 16) + 16), v12, a3);

  if ((v24 & 1) == 0)
  {
    v25 = *(a2 + 52);
    sub_253149474();
    sub_253148FF4();
    sub_253148FA4();
  }
}

uint64_t sub_2530D3DF4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *a1;
  v11 = type metadata accessor for RelationshipResolver();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v47 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v45 = &v44 - v16;
  v17 = *(v10 + *MEMORY[0x277D84DE8] + 8);
  v18 = v8;
  v49 = v8;
  v19 = v17;
  v46 = v17;
  v20 = v9;
  v44 = v9;
  v48 = _s14descr2864E94D1O17DescriptorVisitorVMa();
  v53 = *(v48 - 8);
  v21 = *(v53 + 64);
  MEMORY[0x28223BE20](v48);
  v23 = &v44 - v22;
  v54 = v18;
  v55 = v19;
  v56 = v20;
  v57 = a4;
  v24 = a4;
  v25 = type metadata accessor for RelationshipResolver.ModelProxy();
  v50 = *(v25 - 8);
  v51 = v25;
  v26 = *(v50 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v44 - v27;
  v29 = a4;
  v30 = v4;
  v31 = sub_2530D4D10(a1, a2, v29);
  v32 = *(a2 + 44);
  RelationshipResolver.model<A>(at:)(v31, v11, v24);
  v33 = *(v12 + 16);
  v34 = v30 + v32;
  v35 = v45;
  v33(v45, v34, v11);
  v36 = v47;
  v33(v47, v30 + *(a2 + 48), v11);

  sub_2530D2CEC(v37, v35, v36, v23);
  v38 = v52;
  v39 = *(v52 + 8);
  v40 = v48;
  WitnessTable = swift_getWitnessTable();
  v39(v23, v40, WitnessTable, v46, v38);
  v54 = *&v23[*(v40 + 52)];
  v42 = *(a2 + 52);
  sub_253149474();
  sub_253148FF4();

  swift_getWitnessTable();
  sub_253148FE4();

  (*(v53 + 8))(v23, v40);
  return (*(v50 + 8))(v28, v51);
}

uint64_t sub_2530D41D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = _s14descr2864E94D1O17DescriptorVisitorVMa();

  return a5(a1, v10, a3, a4);
}

uint64_t sub_2530D4244(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v98 = a3;
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *a1;
  v12 = type metadata accessor for RelationshipResolver();
  v107 = *(v12 - 8);
  v13 = *(v107 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v92 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v91 = &v70 - v16;
  v90 = *(v11 + *MEMORY[0x277D84DE8] + 8);
  v99 = *(v90 + 16);
  v17 = v99;
  sub_2531491F4();
  v100 = v10;
  v89 = _s14descr2864E94D1O17DescriptorVisitorVMa();
  v106 = *(v89 - 8);
  v18 = *(v106 + 64);
  MEMORY[0x28223BE20](v89);
  v109 = &v70 - v19;
  v88 = sub_253148944();
  v102 = *(v88 - 8);
  v20 = *(v102 + 64);
  MEMORY[0x28223BE20](v88);
  v101 = v21;
  v87 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111[0] = v9;
  v111[1] = v17;
  v111[2] = v10;
  v111[3] = a4;
  v22 = type metadata accessor for RelationshipResolver.ModelProxy();
  v97 = *(v22 - 8);
  v23 = *(v97 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v96 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v25;
  MEMORY[0x28223BE20](v24);
  v108 = &v70 - v26;
  v27 = *v4;
  v28 = *(a2 + 24);
  sub_2531498A4();
  v94 = a1;
  v29 = sub_253149484();
  v85 = v5 + *(a2 + 44);
  v30 = RelationshipResolver.models<A>(at:)(v29, v12, a4);
  v104 = v5;
  v105 = a2;
  v31 = v5 + *(a2 + 48);
  v72 = v29;
  v93 = v12;
  v32 = a4;
  v84 = v31;
  v33 = RelationshipResolver.models<A>(at:)(v29, v12, a4);
  v103 = v9;
  v86 = v28;
  v34 = v30;
  v95 = v32;
  v35 = sub_2530DA1E0(v30, v33, v9, v28, v99, v100, v32);

  if (!sub_253148D44())
  {

    if ((v35 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v36 = 0;
  v80 = *(v98 + 16);
  v81 = v98 + 16;
  v37 = v35 ^ 1;
  v38 = v97;
  v83 = (v97 + 16);
  v79 = (v97 + 32);
  v78 = v101 + 48;
  v77 = (v102 + 32);
  v76 = (v107 + 16);
  v75 = (v106 + 8);
  v74 = (v97 + 8);
  v39 = v96;
  v82 = v34;
  v73 = v22;
  while (1)
  {
    v40 = sub_253148CF4();
    sub_253148CC4();
    if ((v40 & 1) == 0)
    {
      break;
    }

    (*(v38 + 16))(v108, v34 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v36, v22);
    v41 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_12;
    }

LABEL_7:
    v106 = v41;
    v107 = v36;
    LODWORD(v102) = v37;
    (*v79)(v39, v108, v22);
    v42 = v87;
    v43 = RelationshipResolver.ModelProxy.id.getter(v22);
    MEMORY[0x28223BE20](v43);
    v45 = (&v70 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
    v46 = v86;
    *v45 = v103;
    v45[1] = v46;
    v48 = v99;
    v47 = v100;
    v45[2] = v99;
    v45[3] = v47;
    v49 = v98;
    v50 = v95;
    v45[4] = v98;
    v45[5] = v50;
    (*v77)((v45 + 6), v42, v88);
    swift_getKeyPath();
    sub_2531498A4();
    v51 = sub_253149484();

    v52 = sub_2530D4FC4(v51, v105, v50);
    LODWORD(v101) = v53;
    v54 = *v76;
    v55 = v91;
    v56 = v93;
    (*v76)(v91, v85, v93);
    v57 = v92;
    v58 = v56;
    v59 = v89;
    v54(v92, v84, v58);

    v61 = v55;
    v39 = v96;
    sub_2530D2CEC(v60, v61, v57, v109);
    WitnessTable = swift_getWitnessTable();
    v63 = v49;
    v64 = v109;
    v80(v109, v59, WitnessTable, v48, v63);
    v65 = *&v64[*(v59 + 52)];
    v66 = *(v59 + 16);
    sub_253149474();
    if (sub_253148FB4())
    {

      v37 = v101 | v102;
      (*v75)(v64, v59);
      v22 = v73;
      (*v74)(v39, v73);
    }

    else
    {
      v111[0] = *&v64[*(v59 + 52)];
      v67 = *(v105 + 52);
      sub_253149474();
      sub_253148FF4();

      swift_getWitnessTable();
      sub_253148FE4();
      v110 = v52;

      sub_253148FA4();

      (*v75)(v64, v59);
      v22 = v73;
      (*v74)(v39, v73);
      v37 = 1;
    }

    v38 = v97;
    v34 = v82;
    v36 = v107 + 1;
    if (v106 == sub_253148D44())
    {
      goto LABEL_13;
    }
  }

  result = sub_2531493F4();
  if (v71 != 8)
  {
    __break(1u);
    return result;
  }

  v111[0] = result;
  (*v83)(v108, v111, v22);
  swift_unknownObjectRelease();
  v41 = v36 + 1;
  if (!__OFADD__(v36, 1))
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:

  if ((v37 & 1) == 0)
  {
  }

LABEL_14:
  v110 = v72;
  v69 = *(v105 + 52);
  sub_253149474();
  sub_253148FF4();
  sub_253148FA4();
}

uint64_t sub_2530D4D10(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 + 16);
  v29 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v8 = *(a2 + 32);
  v33 = v7;
  v34 = v29;
  v35 = v8;
  v36 = a3;
  v9 = type metadata accessor for RelationshipResolver.ModelProxy();
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v28 - v14;
  v16 = *v3;
  v17 = *(a2 + 24);
  sub_2531498A4();
  v18 = sub_253149484();
  v19 = *(a2 + 44);
  v28[0] = v7;
  v20 = type metadata accessor for RelationshipResolver();
  RelationshipResolver.model<A>(at:)(v18, v20, a3);
  v21 = *(a2 + 48);
  v28[1] = v4;
  RelationshipResolver.model<A>(at:)(v18, v20, a3);
  v31 = v9;
  v22 = *(v9 + 52);
  swift_getAssociatedTypeWitness();
  v23 = *(*(swift_getAssociatedConformanceWitness() + 24) + 8);
  if ((sub_253148B44() & 1) == 0)
  {
    v32 = v18;
    v24 = *(a2 + 52);
    sub_253149474();
    sub_253148FF4();

    sub_253148FA4();
  }

  v25 = v31;
  v26 = *(v30 + 8);
  v26(v13, v31);
  v26(v15, v25);
  return v18;
}

void *sub_2530D4FC4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(*(*a1 + *MEMORY[0x277D84DE8] + 8) + 16);
  v104 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v105 = *(AssociatedTypeWitness - 8);
  v9 = *(v105 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v90 = &v89 - v10;
  v114 = v11;
  v12 = sub_2531491F4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v93 = *(TupleTypeMetadata2 - 8);
  v13 = *(v93 + 64);
  v14 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v103 = &v89 - v15;
  v111 = v12;
  v108 = *(v12 - 8);
  v16 = *(v108 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v92 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v106 = &v89 - v20;
  MEMORY[0x28223BE20](v19);
  v112 = &v89 - v21;
  v22 = *(a2 + 16);
  v109 = *(a2 + 32);
  v116 = v22;
  v117 = v6;
  v91 = v6;
  v118 = v109;
  v119 = a3;
  v23 = type metadata accessor for RelationshipResolver.ModelProxy();
  v110 = sub_2531491F4();
  v113 = *(v110 - 8);
  v24 = *(v113 + 64);
  v25 = MEMORY[0x28223BE20](v110);
  v100 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v89 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v89 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v89 - v33;
  v35 = *v3;
  v36 = *(a2 + 24);
  sub_2531498A4();
  v37 = sub_253149484();
  v38 = *(a2 + 44);
  v94 = v22;
  v39 = type metadata accessor for RelationshipResolver();
  v40 = v104;
  RelationshipResolver.model<A>(at:)(v37, v39, v104, v34);
  v95 = a2;
  v41 = *(a2 + 48);
  v96 = v4;
  v109 = v32;
  v42 = v32;
  v43 = v113;
  v101 = v37;
  v44 = v40;
  v45 = v110;
  RelationshipResolver.model<A>(at:)(v37, v39, v44, v42);
  v46 = *(v43 + 16);
  v102 = v34;
  v99 = v46;
  v46(v29, v34, v45);
  v47 = *(v23 - 8);
  v48 = 1;
  v98 = *(v47 + 48);
  if (v98(v29, 1, v23) == 1)
  {
    v49 = v43;
    v50 = v45;
    v51 = v105;
    v52 = v112;
  }

  else
  {
    v51 = v105;
    v52 = v112;
    (*(v105 + 16))(v112, &v29[*(v23 + 52)], v114);
    v48 = 0;
    v49 = v47;
    v50 = v23;
  }

  (*(v49 + 8))(v29, v50);
  v53 = 1;
  v54 = v48;
  v55 = v114;
  v97 = *(v51 + 56);
  v97(v52, v54, 1, v114);
  v56 = v100;
  v99(v100, v109, v45);
  if (v98(v56, 1, v23) == 1)
  {
    v47 = v113;
    v57 = v45;
    v58 = v108;
    v59 = v106;
  }

  else
  {
    v59 = v106;
    (*(v51 + 16))(v106, &v56[*(v23 + 52)], v55);
    v53 = 0;
    v58 = v108;
    v57 = v23;
  }

  (*(v47 + 8))(v56, v57);
  v60 = v114;
  v97(v59, v53, 1, v114);
  v61 = *(TupleTypeMetadata2 + 48);
  v62 = v59;
  v63 = *(v58 + 16);
  v64 = v103;
  v65 = v111;
  v66 = v112;
  v63(v103, v112, v111);
  v100 = v61;
  v63(&v61[v64], v62, v65);
  v67 = *(v51 + 48);
  if (v67(v64, 1, v60) == 1)
  {
    v68 = *(v58 + 8);
    v69 = v111;
    v68(v62, v111);
    v68(v66, v69);
    v70 = v67(&v100[v64], 1, v114);
    v71 = v101;
    if (v70 == 1)
    {
      v68(v64, v69);
LABEL_15:
      v86 = *(v113 + 8);
      v87 = v110;
      v86(v109, v110);
      v86(v102, v87);
      return v71;
    }

    goto LABEL_12;
  }

  v72 = v92;
  v73 = v111;
  v63(v92, v64, v111);
  v74 = v100;
  if (v67(&v100[v64], 1, v114) == 1)
  {
    v75 = *(v108 + 8);
    v75(v106, v73);
    v75(v112, v73);
    (*(v105 + 8))(v72, v114);
    v71 = v101;
LABEL_12:
    (*(v93 + 8))(v64, TupleTypeMetadata2);
    goto LABEL_13;
  }

  v79 = v105;
  v80 = v90;
  v81 = v114;
  (*(v105 + 32))(v90, &v74[v64], v114);
  v82 = *(*(swift_getAssociatedConformanceWitness() + 24) + 8);
  v83 = sub_253148B44();
  v84 = *(v79 + 8);
  v84(v80, v81);
  v85 = *(v108 + 8);
  v85(v106, v73);
  v85(v112, v73);
  v84(v72, v81);
  v85(v64, v73);
  v71 = v101;
  if (v83)
  {
    goto LABEL_15;
  }

LABEL_13:
  v115 = v71;
  v76 = *(v95 + 52);
  sub_253149474();
  sub_253148FF4();

  sub_253148FA4();

  v77 = *(v113 + 8);
  v78 = v110;
  v77(v109, v110);
  v77(v102, v78);
  return v71;
}

uint64_t sub_2530D5928()
{
  sub_253148944();
  sub_2530DA700(&qword_27F580C40, MEMORY[0x277CC95F0]);
  return sub_253148B44() & 1;
}

void *sub_2530D59B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = sub_2530D4FC4(a2, a3, a4);
  if (v7)
  {
    v8 = *v4;
    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v11 = result;
    sub_2531498A4();
    sub_253149484();
    v12 = *(a3 + 52);
    sub_253149474();
    sub_253148FF4();
    sub_253148FA4();

    return v11;
  }

  return result;
}

uint64_t sub_2530D5AB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2530DA4C8();
  result = MEMORY[0x259BFCB80](v2, &type metadata for HomesStore.ModelType, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_2530D6108(&v12, *(*(a1 + 56) + (v11 | (v10 << 6)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t RelationshipResolver<>.keyPathDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v31 = a3;
  v32 = a4;
  v29 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v15 = *(v13 + 16);
  v14 = *(v13 + 24);
  v16 = _s14descr2864E94D1O34RelationshipModelDescriptorVisitorVMa();
  v30 = *(v16 - 8);
  v17 = *(v30 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - v18;
  v20 = *(v6 + 16);
  v20(v12, v4, a2);
  v20(v10, v29, a2);
  sub_2530D2B60(v12, v10, v15, v14, v19);
  v21 = v31;
  v22 = *(v31 + 8);
  WitnessTable = swift_getWitnessTable();
  v22(v19, v16, WitnessTable, v15, v21);
  v24 = *(v16 + 16);
  v25 = *(v16 + 24);
  v26 = *&v19[*(_s14descr2864E94D1O17DescriptorVisitorVMa() + 52)];
  v27 = *(v30 + 8);

  v27(v19, v16);
  return sub_25311C8A8(v26, v32);
}

uint64_t sub_2530D5DFC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_253148944();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2530DA700(&qword_27F580560, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_253148B04();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_2530DA700(&qword_27F580C40, MEMORY[0x277CC95F0]);
      v23 = sub_253148B44();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2530D7A3C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2530D6108(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_253149814();
  MEMORY[0x259BFD420](a2);
  v7 = sub_253149844();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_2530D7CE0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2530D6200(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_253149804();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v5 + 48);
      if (*(v11 + 8 * v9) == a2)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v11 + 8 * v9);
  }

  else
  {
LABEL_5:
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_2530D7F50(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2530D62E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v33 = *v4;
  v8 = *(*v4 + 40);
  sub_253149814();
  if ((a4 & 0x80) != 0)
  {
    MEMORY[0x259BFD420](1);
    sub_253148BB4();
    sub_253149834();
  }

  else
  {
    MEMORY[0x259BFD420](0);
    sub_253148BB4();
  }

  v9 = sub_253149844();
  v10 = -1 << *(v33 + 32);
  v11 = v9 & ~v10;
  if (((*(v33 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_26:
    v24 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v30;
    sub_2530DA7BC();
    sub_2530D8070(a2, a3, a4, v11, isUniquelyReferenced_nonNull_native);
    *v30 = v34;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }

  v32 = ~v10;
  while (1)
  {
    v12 = *(v33 + 48) + 24 * v11;
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    if ((v15 & 0x80000000) == 0)
    {
      break;
    }

    if ((a4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    if (v14 == a2 && v13 == a3)
    {
      sub_2530DA7BC();
      sub_2530DA7BC();
      sub_2530DA7C4();
      sub_2530DA7C4();
    }

    else
    {
      v21 = *v12;
      v22 = *(v12 + 8);
      v23 = sub_253149734();
      sub_2530DA7BC();
      sub_2530DA7BC();
      sub_2530DA7C4();
      sub_2530DA7C4();
      if ((v23 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    if (((a4 ^ v15) & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_8:
    v11 = (v11 + 1) & v32;
    if (((*(v33 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if ((a4 & 0x80) != 0)
  {
LABEL_7:
    sub_2530DA7BC();
    sub_2530DA7BC();
    sub_2530DA7C4();
    sub_2530DA7C4();
    goto LABEL_8;
  }

  if (v14 != a2 || v13 != a3)
  {
    v17 = *v12;
    v18 = *(v12 + 8);
    v19 = sub_253149734();
    sub_2530DA7BC();
    sub_2530DA7BC();
    sub_2530DA7C4();
    sub_2530DA7C4();
    if (v19)
    {
      goto LABEL_28;
    }

    goto LABEL_8;
  }

  v27 = *(v12 + 8);

  sub_2530DA7C4();
LABEL_28:
  sub_2530DA7C4();
  v28 = *(v33 + 48) + 24 * v11;
  v29 = *(v28 + 8);
  *a1 = *v28;
  *(a1 + 8) = v29;
  *(a1 + 16) = *(v28 + 16);
  sub_2530DA7BC();
  return 0;
}

uint64_t sub_2530D6664(void *a1, void *a2, void (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_2531492F4();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
    }

    else
    {
      result = sub_2531492E4();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_2530D68F0(v15, result + 1, a4, a5, a6);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_2530D7798(v30 + 1, a4, a5);
        }

        v31 = v16;
        sub_2530D79B8(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = *(v14 + 40);
    v20 = sub_253149184();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_253149194();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *v11;
      v28 = a2;
      sub_2530D83E4(v28, v22, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v38;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2530D68F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_253149394();
    v22 = v8;
    sub_2531492A4();
    if (sub_253149314())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v16 = *(v8 + 16);
        if (*(v8 + 24) <= v16)
        {
          sub_2530D7798(v16 + 1, a3, a4);
        }

        v8 = v22;
        v9 = *(v22 + 40);
        result = sub_253149184();
        v11 = v22 + 56;
        v12 = -1 << *(v22 + 32);
        v13 = result & ~v12;
        v14 = v13 >> 6;
        if (((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6))) != 0)
        {
          v15 = __clz(__rbit64((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v12) >> 6;
          do
          {
            if (++v14 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v14 == v18;
            if (v14 == v18)
            {
              v14 = 0;
            }

            v17 |= v19;
            v20 = *(v11 + 8 * v14);
          }

          while (v20 == -1);
          v15 = __clz(__rbit64(~v20)) + (v14 << 6);
        }

        *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        *(*(v22 + 48) + 8 * v15) = v21;
        ++*(v22 + 16);
      }

      while (sub_253149314());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t sub_2530D6AE8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_253148944();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C48, &qword_25314D180);
  result = sub_253149384();
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
      sub_2530DA700(&qword_27F580560, MEMORY[0x277CC95F0]);
      result = sub_253148B04();
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

uint64_t sub_2530D6E44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C60, &qword_25314D1F0);
  result = sub_253149384();
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
      sub_253149814();
      MEMORY[0x259BFD420](v18);
      result = sub_253149844();
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

uint64_t sub_2530D7094(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C68, &qword_25314D1F8);
  result = sub_253149384();
  v6 = result;
  if (*(v3 + 16))
  {
    v25 = v2;
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
LABEL_15:
      v16 = *(v6 + 40);
      sub_253149814();
      sub_253148BB4();
      result = sub_253149844();
      v17 = -1 << *(v6 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v13 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v13 + 8 * v19);
          if (v23 != -1)
          {
            v14 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_9;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v18) & ~*(v13 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      v11 &= v11 - 1;
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      ++*(v6 + 16);
    }

    while (1)
    {
      v15 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v15 >= v12)
      {
        break;
      }

      v11 = v8[v15];
      ++v7;
      if (v11)
      {
        v7 = v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v3 + 32);
    if (v24 >= 64)
    {
      bzero((v3 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v24;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2530D72C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C50, &qword_25314D1E8);
  result = sub_253149384();
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
      result = sub_253149804();
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

uint64_t sub_2530D74EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C88, &unk_25314D210);
  result = sub_253149384();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
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
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_253149814();
      if (v22 < 0)
      {
        MEMORY[0x259BFD420](1);
        sub_253148BB4();
        sub_253149834();
      }

      else
      {
        MEMORY[0x259BFD420](0);
        sub_253148BB4();
      }

      result = sub_253149844();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2530D7798(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_253149384();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_253149184();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_2530D79B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_253149184();
  v5 = -1 << *(a2 + 32);
  result = sub_253149284();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2530D7A3C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_253148944();
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
    sub_2530D6AE8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2530D8568();
      goto LABEL_12;
    }

    sub_2530D8DE8(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_2530DA700(&qword_27F580560, MEMORY[0x277CC95F0]);
  v15 = sub_253148B04();
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
      sub_2530DA700(&qword_27F580C40, MEMORY[0x277CC95F0]);
      v23 = sub_253148B44();
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
  result = sub_253149774();
  __break(1u);
  return result;
}

uint64_t sub_2530D7CE0(uint64_t result, unint64_t a2, char a3)
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
    sub_2530D6E44(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2530D87A0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2530D9104(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_253149814();
  MEMORY[0x259BFD420](v4);
  result = sub_253149844();
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
  result = sub_253149774();
  __break(1u);
  return result;
}

unint64_t sub_2530D7E2C(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_2530D7094(v3 + 1);
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      sub_2530D9324(v3 + 1);
LABEL_8:
      v6 = *v2;
      v7 = *(*v2 + 40);
      sub_253149814();
      sub_253148BB4();
      result = sub_253149844() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    sub_2530D88E0();
    result = v5;
  }

LABEL_9:
  v8 = *v2;
  *(*v2 + 8 * (result >> 6) + 56) |= 1 << result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (!v10)
  {
    *(v8 + 16) = v11;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_253149774();
  __break(1u);
  return result;
}

uint64_t sub_2530D7F50(uint64_t result, unint64_t a2, char a3)
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
    sub_2530D72C8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2530D89EC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2530D9528(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_253149804();
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
  result = sub_253149774();
  __break(1u);
  return result;
}

uint64_t sub_2530D8070(uint64_t result, uint64_t a2, int a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 <= v10 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_2530D74EC(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        result = sub_2530D8B2C();
        goto LABEL_33;
      }

      sub_2530D9718(v10 + 1);
    }

    v33 = *v5;
    v12 = *(*v5 + 40);
    sub_253149814();
    if ((a3 & 0x80) != 0)
    {
      MEMORY[0x259BFD420](1);
      sub_253148BB4();
      sub_253149834();
    }

    else
    {
      MEMORY[0x259BFD420](0);
      sub_253148BB4();
    }

    result = sub_253149844();
    v13 = -1 << *(v33 + 32);
    a4 = result & ~v13;
    if ((*(v33 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v14 = ~v13;
      do
      {
        v15 = *(v33 + 48) + 24 * a4;
        v17 = *v15;
        v16 = *(v15 + 8);
        v18 = *(v15 + 16);
        if (v18 < 0)
        {
          if ((a3 & 0x80) == 0)
          {
            goto LABEL_14;
          }

          if (v17 == v9 && v16 == a2)
          {
            sub_2530DA7BC();
            sub_2530DA7BC();
            sub_2530DA7C4();
            result = sub_2530DA7C4();
          }

          else
          {
            v24 = *v15;
            v25 = *(v15 + 8);
            v26 = sub_253149734();
            sub_2530DA7BC();
            sub_2530DA7BC();
            sub_2530DA7C4();
            result = sub_2530DA7C4();
            if ((v26 & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          if (((a3 ^ v18) & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        else
        {
          if ((a3 & 0x80) != 0)
          {
LABEL_14:
            sub_2530DA7BC();
            sub_2530DA7BC();
            sub_2530DA7C4();
            result = sub_2530DA7C4();
            goto LABEL_15;
          }

          if (v17 == v9 && v16 == a2)
          {
            goto LABEL_36;
          }

          v20 = *v15;
          v21 = *(v15 + 8);
          v22 = sub_253149734();
          sub_2530DA7BC();
          sub_2530DA7BC();
          sub_2530DA7C4();
          result = sub_2530DA7C4();
          if (v22)
          {
            goto LABEL_37;
          }
        }

LABEL_15:
        a4 = (a4 + 1) & v14;
      }

      while (((*(v33 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
    }
  }

LABEL_33:
  v27 = *v32;
  *(*v32 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v28 = *(v27 + 48) + 24 * a4;
  *v28 = v9;
  *(v28 + 8) = a2;
  *(v28 + 16) = a3;
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
LABEL_36:
    sub_2530DA7BC();
    sub_2530DA7BC();
    sub_2530DA7C4();
    sub_2530DA7C4();
LABEL_37:
    result = sub_253149774();
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v31;
  }

  return result;
}

void sub_2530D83E4(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_2530D7798(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_2530D8CA8(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_2530D99A4(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = *(*v6 + 40);
  v14 = sub_253149184();
  v15 = -1 << *(v12 + 32);
  a2 = v14 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v11(0);
    do
    {
      v17 = *(*(v12 + 48) + 8 * a2);
      v18 = sub_253149194();

      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  sub_253149774();
  __break(1u);
}

void *sub_2530D8568()
{
  v1 = v0;
  v2 = sub_253148944();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C48, &qword_25314D180);
  v7 = *v0;
  v8 = sub_253149374();
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

void *sub_2530D87A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C60, &qword_25314D1F0);
  v2 = *v0;
  v3 = sub_253149374();
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

void *sub_2530D88E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C68, &qword_25314D1F8);
  v2 = *v0;
  v3 = sub_253149374();
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
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
LABEL_11:
      v11 &= v11 - 1;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

void *sub_2530D89EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C50, &qword_25314D1E8);
  v2 = *v0;
  v3 = sub_253149374();
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

void *sub_2530D8B2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C88, &unk_25314D210);
  v2 = *v0;
  v3 = sub_253149374();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 8);
        v20 = *(v4 + 48) + v17;
        v21 = *(v18 + 16);
        *v20 = *v18;
        *(v20 + 8) = v19;
        *(v20 + 16) = v21;
        result = sub_2530DA7BC();
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

id sub_2530D8CA8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_253149374();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_2530D8DE8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_253148944();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C48, &qword_25314D180);
  v10 = sub_253149384();
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
      sub_2530DA700(&qword_27F580560, MEMORY[0x277CC95F0]);
      result = sub_253148B04();
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

uint64_t sub_2530D9104(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C60, &qword_25314D1F0);
  result = sub_253149384();
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
      sub_253149814();
      MEMORY[0x259BFD420](v17);
      result = sub_253149844();
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

uint64_t sub_2530D9324(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C68, &qword_25314D1F8);
  result = sub_253149384();
  v6 = result;
  if (*(v3 + 16))
  {
    v23 = v2;
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
LABEL_15:
      v15 = *(v6 + 40);
      sub_253149814();
      sub_253148BB4();
      result = sub_253149844();
      v16 = -1 << *(v6 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v12 + 8 * v18);
          if (v22 != -1)
          {
            v13 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v17) & ~*(v12 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      v10 &= v10 - 1;
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      ++*(v6 + 16);
    }

    while (1)
    {
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        v2 = v23;
        goto LABEL_26;
      }

      v10 = *(v3 + 56 + 8 * v14);
      ++v7;
      if (v10)
      {
        v7 = v14;
        goto LABEL_15;
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

uint64_t sub_2530D9528(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C50, &qword_25314D1E8);
  result = sub_253149384();
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
      result = sub_253149804();
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

uint64_t sub_2530D9718(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C88, &unk_25314D210);
  result = sub_253149384();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_253149814();
      if (v22 < 0)
      {
        MEMORY[0x259BFD420](1);

        sub_253148BB4();
        sub_253149834();
      }

      else
      {
        MEMORY[0x259BFD420](0);

        sub_253148BB4();
      }

      result = sub_253149844();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_31;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2530D99A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_253149384();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_253149184();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v8;
  }

  return result;
}

uint64_t sub_2530D9BB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = _s14descr2864E94D1O17DescriptorVisitorVMa();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2530D9C24(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
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

  v8 = *(v4 + 80) & 0xF8;
  v9 = v8 | 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v10 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + v9 + ((v8 + 15) & ~v9) + 40) & ~v9) + 48;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v9 + 8) & ~v9);
    }

    v19 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void *sub_2530D9D80(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80) & 0xF8;
  v9 = v8 | 7;
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v9 + ((v8 + 15) & ~(v8 | 7)) + 40) & ~v9) + 48;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFF8) + ((((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFF8) + v9 + ((v8 + 15) & ~(v8 | 7)) + 40) & ~v9) == -48)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v10) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v10) = 0;
      }

      else if (v14)
      {
        *(result + v10) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);
        v21 = (result + v9 + 8) & ~v9;

        return v20(v21);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *result = v19;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFF8) + ((((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFF8) + v9 + ((v8 + 15) & ~(v8 | 7)) + 40) & ~v9) == -48)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFF8) + ((((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFF8) + v9 + ((v8 + 15) & ~(v8 | 7)) + 40) & ~v9) != -48)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, v10);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(result + v10) = v16;
    }

    else
    {
      *(result + v10) = v16;
    }
  }

  else if (v14)
  {
    *(result + v10) = v16;
  }

  return result;
}

uint64_t sub_2530D9F80(void *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  result = sub_2531498A4();
  if (v5 <= 0x3F)
  {
    v6 = a1[4];
    result = type metadata accessor for RelationshipResolver();
    if (v7 <= 0x3F)
    {
      sub_253149474();
      result = sub_253148FF4();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2530DA044(uint64_t a1)
{
  v2 = sub_253148944();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_2530DA700(&qword_27F580560, MEMORY[0x277CC95F0]);
  result = MEMORY[0x259BFCB80](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2530D5DFC(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_2530DA1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v39 = a1;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v35 = a3;
  v36 = a5;
  v37 = a6;
  v38 = a7;
  type metadata accessor for RelationshipResolver.ModelProxy();
  v11 = sub_253148D64();
  v12 = sub_253148944();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_253146F4C(sub_2530DA7CC, v29, v11, v12, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v14);
  v16 = sub_2530DA044(v15);

  v35 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = v7;
  v18 = sub_253146F4C(sub_2530DA374, v23, v11, v12, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v17);
  v19 = sub_2530DA044(v18);

  LOBYTE(v7) = sub_25310BAD8(v16, v19);

  return v7 & 1;
}

uint64_t sub_2530DA38C()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v1 = type metadata accessor for RelationshipResolver.ModelProxy();
  return RelationshipResolver.ModelProxy.id.getter(v1);
}

uint64_t keypath_destroyTm(uint64_t a1)
{
  v2 = sub_253148944();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t keypath_hashTm()
{
  sub_253148944();
  sub_2530DA700(&qword_27F580560, MEMORY[0x277CC95F0]);
  return sub_253148B24();
}

unint64_t sub_2530DA4C8()
{
  result = qword_27F580C58;
  if (!qword_27F580C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580C58);
  }

  return result;
}

unint64_t sub_2530DA51C()
{
  result = qword_27F580910;
  if (!qword_27F580910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F580910);
  }

  return result;
}

uint64_t sub_2530DA568(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2531492E4())
  {
    v4 = sub_2530DA51C();
    v5 = sub_2530DA700(&qword_27F580C78, sub_2530DA51C);
    result = MEMORY[0x259BFCB80](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x259BFD000](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_2530D6664(&v11, v9, sub_2530DA51C, &qword_27F580C70, &qword_25314D200, sub_2530DA51C);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_2531492E4();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2530DA700(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2530DA748(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2530DA4C8();
  result = MEMORY[0x259BFCB80](v2, &type metadata for HomesStore.ModelType, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_2530D6108(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2530DA7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15[3] = a8;
  *&v16 = sub_2530EB040();
  *(&v16 + 1) = v12;
  v17 = 0;
  v18 = 1;
  v19 = 0;
  v13 = (*(a6 + 32))(&v16, a3, a6);
  if (v9)
  {
    v24 = v16;
    sub_2530DAA9C(&v24);
    v25 = v17;
    sub_2530CD33C(&v25, &qword_27F580C90, &qword_25314D280);
    v23 = v19;
    sub_2530CD33C(&v23, &qword_27F580C98, &qword_25314D288);
  }

  else
  {
    v15[1] = v15;
    v15[2] = v13;
    v15[4] = v13;
    MEMORY[0x28223BE20](v13);
    swift_getAssociatedTypeWitness();
    sub_253148D64();
    swift_getWitnessTable();
    v8 = sub_253148C34();
    v22 = v16;
    sub_2530DAA9C(&v22);
    v21 = v17;
    sub_2530CD33C(&v21, &qword_27F580C90, &qword_25314D280);
    v20 = v19;
    sub_2530CD33C(&v20, &qword_27F580C98, &qword_25314D288);
  }

  return v8;
}

uint64_t sub_2530DAAF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v5 = v2[4];
  v7 = v2[6];
  v8 = v2[8];
  v9 = v2[9];
  result = (*(v8 + 40))(*a1, v6, v6, v7, v5);
  if (!v3)
  {
    return (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
  }

  return result;
}

uint64_t sub_2530DAB88(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2530DAC80(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2531492E4();
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

  v15 = sub_2531492E4();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_2530CA880();
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2530DDEA0(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
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

uint64_t sub_2530DAD70(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_2530F46D0(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for AnyModelStateChange(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2530DAE9C()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F580CA0);
  __swift_project_value_buffer(v0, qword_27F580CA0);
  return sub_253148A84();
}

uint64_t sub_2530DAF1C(uint64_t a1)
{
  *(v2 + 64) = v1;
  v4 = *v1;
  *(v2 + 72) = *v1;
  v5 = *(v4 + 88);
  *(v2 + 80) = v5;
  v6 = *(v5 - 8);
  *(v2 + 88) = v6;
  *(v2 + 96) = *(v6 + 64);
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = *a1;
  *(v2 + 128) = *(a1 + 16);

  return MEMORY[0x2822009F8](sub_2530DB034, v1, 0);
}

uint64_t sub_2530DB034()
{
  v21 = v0[15];
  v22 = v0[16];
  v1 = v0[14];
  v20 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  v7 = *(*v6 + 128);
  v0[7] = v6;
  (*(v3 + 16))();
  v8 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[17] = v9;
  v10 = v4[10];
  v0[18] = v10;
  *(v9 + 2) = v10;
  *(v9 + 3) = v5;
  v11 = v5;
  v19 = v5;
  v12 = v4[12];
  v0[19] = v12;
  *(v9 + 4) = v12;
  v13 = v4[13];
  v0[20] = v13;
  *(v9 + 5) = v13;
  *(v9 + 6) = v6;
  *(v9 + 7) = v1;
  *(v9 + 8) = v21;
  *(v9 + 9) = v22;
  (*(v3 + 32))(&v9[v8], v20, v11);

  v14 = swift_task_alloc();
  v0[21] = v14;
  v0[2] = v10;
  v0[3] = v19;
  v0[4] = v12;
  v0[5] = v13;
  v15 = type metadata accessor for ModelStateSubscriptionManager();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DC8, &qword_25314D440);
  WitnessTable = swift_getWitnessTable();
  *v14 = v0;
  v14[1] = sub_2530DB25C;

  return sub_2530EEC10((v0 + 6), sub_2530DCFA0, v9, v15, v16, WitnessTable);
}

void sub_2530DB25C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 136);
    v6 = *(v2 + 64);

    MEMORY[0x2822009F8](sub_2530DB39C, v6, 0);
  }
}

uint64_t sub_2530DB39C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  *(v0 + 176) = v4;
  v5 = *(v3 + *(*v3 + 144));
  *(v0 + 184) = v5;
  v6 = swift_task_alloc();
  *(v0 + 192) = v6;
  v7 = *(v0 + 152);
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  *(v6 + 32) = v7;
  *(v6 + 48) = v4;

  return MEMORY[0x2822009F8](sub_2530DB450, v5, 0);
}

uint64_t sub_2530DB450()
{
  v1 = v0[23];
  v2 = v0[13];
  sub_2530BE8BC(v0[22], sub_2530DCFF4, v0[24]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2530DB4F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, void *a7@<X8>)
{
  v10 = *a2;
  *a7 = MEMORY[0x277D84F90];
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v13 = v10[10];
  v14 = v10[11];
  v15 = v10[12];
  v16 = v10[13];
  v17 = sub_2530DE020(&v25, a1, a6, v13, v14, v15, v16);
  sub_2530DAD70(v17);
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v18 = sub_2530DE558(&v25, a1, a6, v13, v14, v15, v16);
  sub_2530DAD70(v18);
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v19 = sub_2530DEDBC(&v25, a1, a6, v13, v14, v15, v16);
  sub_2530DAD70(v19);
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v20 = sub_2530DF604(&v25, a1, a6, v13, v14, v15, v16);
  return sub_2530DAD70(v20);
}

BOOL sub_2530DB67C(uint64_t *a1, uint64_t a2)
{
  v3 = 0;
  v4 = *a1;
  v5 = *(a2 + 16);
  do
  {
    v6 = v3;
    if (v5 == v3)
    {
      break;
    }

    v7 = *(type metadata accessor for AnyModelStateChange(0) - 8);
    ++v3;
  }

  while (!sub_2530DB764(a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6, v4));
  return v5 != v6;
}

BOOL sub_2530DB764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyModelStateChange.Tombstone(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AnyModelStateChange(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2530DFB6C(a1, v11, type metadata accessor for AnyModelStateChange);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      sub_2530DFBD4(v11, v7, type metadata accessor for AnyModelStateChange.Tombstone);
      v15 = *(a2 + 16);
      v16 = (a2 + 32);
      do
      {
        v17 = v15-- != 0;
        v14 = v17;
        if (!v17)
        {
          break;
        }

        v18 = *v16++;
      }

      while (v18 != v7[*(v4 + 20)]);
      sub_2530DFCAC(v7, type metadata accessor for AnyModelStateChange.Tombstone);
    }

    else
    {
      sub_2530DFCAC(v11, type metadata accessor for AnyModelStateChange);
      return 0;
    }
  }

  else
  {
    v13 = *(v11 + 1);
    v20[0] = *v11;
    v20[1] = v13;
    v21 = *(v11 + 4);
    v14 = sub_2530DD988(v20, a2);
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  return v14;
}

uint64_t sub_2530DB93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ModelStateSubscriptionManager.RelationshipModelSet();
  *(a4 + *(v8 + 56)) = MEMORY[0x277D84F98];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a4, a1, AssociatedTypeWitness);
  return (*(*(a3 - 8) + 32))(a4 + *(v8 + 52), a2, a3);
}

uint64_t sub_2530DBA90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v45 = v3 + 64;
  v4 = 1 << *(v3 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v3 + 64);
  v44 = (v4 + 63) >> 6;

  v8 = 0;
  v46 = v7;
  do
  {
LABEL_6:
    if (!v6)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
          goto LABEL_40;
        }

        if (v9 >= v44)
        {
          break;
        }

        v6 = *(v45 + 8 * v9);
        ++v8;
        if (v6)
        {
          v8 = v9;
          goto LABEL_11;
        }
      }
    }

LABEL_11:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v8 << 6);
    v12 = *(v7 + 56) + 16 * v11;
  }

  while (!*(*(v12 + 8) + 16));
  v13 = *(*(v7 + 48) + 8 * v11);
  v54 = *(v12 + 8);
  v14 = *v12;
  v15 = a2[4];
  v16 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v19 = *(v18 + 56);
  v20 = v13;
  v21 = v14;
  v22 = v54;
  v50 = v21;

  v23 = swift_checkMetadataState();
  v51 = v20;
  v19(v20, v23, v18);
  v24 = *(AssociatedConformanceWitness + 40);
  v25 = swift_checkMetadataState();
  v26 = v24(v25, AssociatedConformanceWitness);
  v27 = 1 << *(v54 + 32);
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & *(v54 + 56);
  v30 = (v27 + 63) >> 6;

  v31 = 0;
  v52 = v26;
  while (v29)
  {
LABEL_21:
    v33 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v34 = *(v22 + 48) + 24 * (v33 | (v31 << 6));
    AssociatedTypeWitness = *(v34 + 16);
    if ((AssociatedTypeWitness & 0x80000000) != 0)
    {
      v35 = *(v34 + 8);
      v53 = *v34;

      v36 = [v26 relationshipsByName];
      sub_2530DFADC();
      v37 = sub_253148AD4();

      if (*(v37 + 16))
      {
        v47 = sub_25311D908(v53, v35);
        v49 = v38;
        sub_2530DA7C4();
        if (v49)
        {
          AssociatedTypeWitness = *(*(v37 + 56) + 8 * v47);

          sub_2530DD1FC(AssociatedTypeWitness, a2);
          if (sub_2530DD0B4(a2))
          {
            goto LABEL_33;
          }
        }

        else
        {
        }
      }

      else
      {

        sub_2530DA7C4();
      }

      v22 = v54;
      v26 = v52;
    }
  }

  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v30)
    {

      swift_unknownObjectRelease();
      v7 = v46;
      goto LABEL_6;
    }

    v29 = *(v54 + 56 + 8 * v32);
    ++v31;
    if (v29)
    {
      v31 = v32;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_33:
  if (qword_27F580218 != -1)
  {
LABEL_40:
    swift_once();
  }

  v40 = sub_253148A94();
  __swift_project_value_buffer(v40, qword_27F580CA0);
  v41 = sub_253148A74();
  v42 = sub_2531490A4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_2530B8000, v41, v42, "Change set matched all relationship model types", v43, 2u);
    MEMORY[0x259BFDC60](v43, -1, -1);
  }

  swift_unknownObjectRelease();
}

void *sub_2530DBF94(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));
  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = sub_253118710(*(v2 + 16), 0);
  v5 = sub_253118814(&v7, (v4 + 4), v3, v2);

  sub_2530DFAD4();
  if (v5 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t *sub_2530DC054()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 128));
  v2 = *(v0 + *(*v0 + 136));

  v3 = *(v0 + *(*v0 + 144));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2530DC160()
{
  sub_2530DC054();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2530DC1A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2530DC250(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DB8, &unk_25314D418);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530DC384, v1, 0);
}

uint64_t sub_2530DC384()
{
  v1 = v0[3];
  v2 = *(*v1 + 136);
  if (!*(v1 + v2))
  {
    v4 = v0[8];
    v3 = v0[9];
    v5 = v0[6];
    v21 = v0[7];
    v22 = v3;
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[2];
    v9 = sub_253148DE4();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = v8;
    v12 = v6;
    (*(v5 + 16))(v4, v11, v6);
    v13 = (*(v5 + 80) + 64) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = *(v7 + 80);
    *(v14 + 40) = *(v7 + 88);
    *(v14 + 56) = *(v7 + 104);
    (*(v5 + 32))(v14 + v13, v4, v12);
    *(v14 + ((v21 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
    v15 = sub_253112858(0, 0, v22, &unk_25314D430, v14);
    v16 = *(v1 + v2);
    *(v1 + v2) = v15;
  }

  v18 = v0[8];
  v17 = v0[9];

  v19 = v0[1];

  return v19();
}

uint64_t sub_2530DC574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DC0, &qword_25314D438);
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v8 = *(v7 + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530DC644, 0, 0);
}

uint64_t sub_2530DC644()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DB8, &unk_25314D418);
  sub_253148E54();
  swift_beginAccess();
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_2530DC72C;
  v6 = v0[15];
  v7 = v0[13];

  return MEMORY[0x2822003E8](v0 + 5, 0, 0, v7);
}

uint64_t sub_2530DC72C()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2530DC828, 0, 0);
}

uint64_t sub_2530DC828()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[17] = v2;
  v0[18] = v1;
  v3 = v0[7];
  v0[19] = v3;
  if (v2)
  {
    v4 = v0[12];
    Strong = swift_weakLoadStrong();
    v0[20] = Strong;
    if (Strong)
    {
      v0[8] = v2;
      v0[9] = v1;
      v0[10] = v3;
      v6 = swift_task_alloc();
      v0[21] = v6;
      *v6 = v0;
      v6[1] = sub_2530DC988;

      return sub_2530DAF1C((v0 + 8));
    }

    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_2530DCF54(v2);
  }

  else
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
  }

  v8 = v0[15];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2530DC988()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);
  v6 = *v0;

  sub_2530DCF54(v4);

  return MEMORY[0x2822009F8](sub_2530DCAD8, 0, 0);
}

uint64_t sub_2530DCAD8()
{
  v1 = v0[20];

  v2 = *(MEMORY[0x277D85798] + 4);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_2530DC72C;
  v4 = v0[15];
  v5 = v0[13];

  return MEMORY[0x2822003E8](v0 + 5, 0, 0, v5);
}

uint64_t sub_2530DCB88(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2530DCBAC, v2, 0);
}

uint64_t sub_2530DCBAC()
{
  v1 = v0[4];
  v2 = *(v0[5] + *(*v0[5] + 144));
  v0[6] = v2;
  v0[2] = v1;

  return MEMORY[0x2822009F8](sub_2530DCC38, v2, 0);
}

uint64_t sub_2530DCC38()
{
  v1 = v0[6];
  v2 = v0[4];
  sub_2530BDED4((v0 + 2), v0[3]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2530DCCA8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2530CD684;

  return sub_2530DC250(a1);
}

uint64_t sub_2530DCD40(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2530BF218;

  return sub_2530DCB88(a1, a2);
}

uint64_t sub_2530DCDF4(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v16 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DB8, &unk_25314D418) - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2530BF218;

  return sub_2530DC574(a1, v10, v11, v1 + v9, v12);
}

uint64_t sub_2530DCF54(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

BOOL sub_2530DCFF4(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_2530DB67C(a1, v1[6]);
}

uint64_t sub_2530DD004()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DD8, &unk_25314D450);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25314D290;
  v1 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
  v2 = sub_2530DFB28(&qword_27F580DE0);
  v3 = sub_2530DFB28(&qword_27F580DE8);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  return v0;
}

uint64_t sub_2530DD0B4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  result = sub_2530DD004();
  v8 = result;
  v9 = *(result + 16);
  if (v9)
  {
    v10 = 0;
    v11 = *(v1 + *(a1 + 56));
    v12 = result + 48;
    while (v10 < *(v8 + 16))
    {
      v13 = *(v12 - 16);
      (*(*(*v12 + 8) + 48))(&v18);
      if (!*(v11 + 16) || (v14 = sub_25311D9C4(v18), (v15 & 1) == 0))
      {
        v17 = 0;
        memset(v16, 0, sizeof(v16));
        sub_2530CD33C(v16, &qword_27F580DD0, &qword_25314D448);

        return 0;
      }

      ++v10;
      sub_2530C25FC(*(v11 + 56) + 40 * v14, v16);
      result = sub_2530CD33C(v16, &qword_27F580DD0, &qword_25314D448);
      v12 += 24;
      if (v9 == v10)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    return 1;
  }

  return result;
}

uint64_t sub_2530DD1FC(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = sub_2530DD004();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 48);
    do
    {
      v11 = *(v10 - 2);
      v12 = *(v10 - 1);
      v13 = *v10;
      v10 += 3;
      sub_2530DD280(a1, v11, a2, v11, v12, v13);
      --v9;
    }

    while (v9);
  }
}

void sub_2530DD280(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v63 = a2;
  v13 = sub_2531491F4();
  v59 = *(v13 - 8);
  v14 = *(v59 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v61 = &v53 - v16;
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v60 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a6 + 8);
  (*(v20 + 48))(&v64, a4, v20);
  v21 = v64;
  v58 = *(a3 + 56);
  v22 = *(v6 + v58);
  if (!*(v22 + 16))
  {
    goto LABEL_4;
  }

  v62 = v20;
  v23 = a3;
  v24 = v13;
  v25 = a4;
  v26 = v7;
  v27 = a1;
  v28 = v17;
  v29 = a5;
  v30 = a6;
  v31 = v64;
  v32 = sub_25311D9C4(v64);
  v21 = v31;
  a6 = v30;
  a5 = v29;
  v17 = v28;
  a1 = v27;
  v7 = v26;
  a4 = v25;
  v13 = v24;
  a3 = v23;
  v20 = v62;
  if (v33)
  {
    sub_2530C25FC(*(v22 + 56) + 40 * v32, &v64);
    sub_2530CD33C(&v64, &qword_27F580DD0, &qword_25314D448);
  }

  else
  {
LABEL_4:
    v57 = v21;
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    sub_2530CD33C(&v64, &qword_27F580DD0, &qword_25314D448);
    if (sub_2530E8EB0(a1))
    {
      v54 = v13;
      v55 = v17;
      v56 = *(a3 + 52);
      v34 = *(a3 + 32);
      v35 = *(a3 + 16);
      swift_getAssociatedTypeWitness();
      v62 = v7;
      swift_getAssociatedConformanceWitness();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v37 = *(a3 + 24);
      v38 = v62;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v52 = *(a3 + 40);
      *&v64 = sub_2530DA7E4(v63, v38 + v56, AssociatedTypeWitness, a4, v37, AssociatedConformanceWitness, a5, v20);
      sub_253148D64();
      swift_getWitnessTable();
      v40 = v61;
      sub_253149034();
      v41 = v55;
      if ((*(v55 + 48))(v40, 1, a4) == 1)
      {
        (*(v59 + 8))(v40, v54);

        if (qword_27F580218 != -1)
        {
          swift_once();
        }

        v42 = sub_253148A94();
        __swift_project_value_buffer(v42, qword_27F580CA0);
        v43 = sub_253148A74();
        v44 = sub_2531490B4();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *&v64 = v46;
          *v45 = 136315138;
          v47 = sub_2531498D4();
          v49 = sub_253146498(v47, v48, &v64);

          *(v45 + 4) = v49;
          _os_log_impl(&dword_2530B8000, v43, v44, "Relationship model is not present: %s", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v46);
          MEMORY[0x259BFDC60](v46, -1, -1);
          MEMORY[0x259BFDC60](v45, -1, -1);
        }
      }

      else
      {
        v50 = v60;
        (*(v41 + 32))(v60, v40, a4);

        *(&v65 + 1) = a4;
        v66 = a6;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v64);
        (*(v41 + 16))(boxed_opaque_existential_0, v50, a4);
        sub_25312ADA8(&v64, v57);
        (*(v41 + 8))(v50, a4);
      }
    }
  }
}

BOOL sub_2530DD988(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  sub_2530D2104(v3, v4);
  v5 = *(a2 + 16);
  v6 = (a2 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v9 = *v6++;
  }

  while (v9 != v11);
  return v7 != 0;
}

uint64_t sub_2530DDA08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a4;
  v21 = result;
  v22 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(a3 + 48) + 24 * v15;
    v17 = *(v16 + 8);
    v23[0] = *v16;
    v23[1] = v17;
    v24 = *(v16 + 16);
    sub_2530DA7BC();
    v18 = v25(v23);
    result = sub_2530DA7C4();
    if (v4)
    {
      return result;
    }

    if (v18)
    {
      *(v21 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_2530DDC14(v21, a2, v22, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_2530DDB84(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_2530DDA08(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_2530DDC14(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C88, &unk_25314D210);
  result = sub_2531493A4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v32 = v4;
  v33 = result;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v34 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(v4 + 48) + 24 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v9 + 40);
    sub_253149814();
    if (v19 < 0)
    {
      MEMORY[0x259BFD420](1);

      v21 = v17;
      sub_253148BB4();
      sub_253149834();
    }

    else
    {
      MEMORY[0x259BFD420](0);

      v21 = v17;
      sub_253148BB4();
    }

    result = sub_253149844();
    v9 = v33;
    v22 = -1 << *(v33 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_30;
        }
      }

      goto LABEL_34;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v33 + 48) + 24 * v25;
    *v30 = v21;
    *(v30 + 8) = v18;
    *(v30 + 16) = v19;
    ++*(v33 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
    }

    v4 = v32;
    v10 = v34;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v34 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_2530DDEA0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2531492E4();
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
      result = sub_2531492E4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2530DFD0C();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580E00, &unk_25314D480);
            v9 = sub_2530FBA64(v13, i, a3);
            v11 = *v10;

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
        _s5ProxyCMa_0();
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

void *sub_2530DE020(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v64 = a6;
  v65 = a7;
  v61 = a3;
  v62 = a4;
  v60 = a2;
  v63 = a5;
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v59 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807B0, &qword_25314D460);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v49 - v13;
  v57 = type metadata accessor for AnyModelStateChange(0);
  v15 = *(*(v57 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v57);
  v51 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v49 = v18;
  v50 = &v49 - v19;
  v20 = *a1;
  v21 = *a1 + 64;
  v22 = 1 << *(*a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(*a1 + 64);
  v25 = (v22 + 63) >> 6;
  v53 = (v18 + 48);
  v54 = (v8 + 16);
  v66 = v20;

  v27 = 0;
  v52 = MEMORY[0x277D84F90];
  v55 = v25;
  v56 = v21;
  v58 = v14;
LABEL_4:
  v28 = v27;
  if (!v24)
  {
    goto LABEL_6;
  }

  do
  {
    v27 = v28;
LABEL_9:
    v29 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v30 = (v27 << 9) | (8 * v29);
    v31 = *(*(v66 + 48) + v30);
    v32 = *(*(v66 + 56) + v30);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v34 = *(AssociatedConformanceWitness + 56);
    v35 = v31;
    v36 = v32;
    v37 = swift_checkMetadataState();
    v38 = v34(v35, v37, AssociatedConformanceWitness);
    v67 = v36;
    v39 = v59;
    v40 = v63;
    (*v54)(v59, v61, v63);
    v41 = v36;
    swift_unknownObjectRetain();
    v42 = swift_checkMetadataState();
    v43 = v58;
    sub_2530FC314(&v67, v38, v39, v40, v42, v65, v58);
    if ((*v53)(v43, 1, v57) != 1)
    {
      v44 = v50;
      sub_2530DFBD4(v43, v50, type metadata accessor for AnyModelStateChange);
      sub_2530DFB6C(v44, v51, type metadata accessor for AnyModelStateChange);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_2530F46D0(0, v52[2] + 1, 1, v52);
      }

      v21 = v56;
      v46 = v52[2];
      v45 = v52[3];
      if (v46 >= v45 >> 1)
      {
        v52 = sub_2530F46D0(v45 > 1, v46 + 1, 1, v52);
      }

      swift_unknownObjectRelease();

      sub_2530DFCAC(v50, type metadata accessor for AnyModelStateChange);
      v47 = v51;
      v48 = v52;
      v52[2] = v46 + 1;
      result = sub_2530DFBD4(v47, v48 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v46, type metadata accessor for AnyModelStateChange);
      v25 = v55;
      goto LABEL_4;
    }

    swift_unknownObjectRelease();
    result = sub_2530CD33C(v43, &qword_27F5807B0, &qword_25314D460);
    v28 = v27;
    v25 = v55;
    v21 = v56;
  }

  while (v24);
LABEL_6:
  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v25)
    {

      return v52;
    }

    v24 = *(v21 + 8 * v27);
    ++v28;
    if (v24)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_2530DE558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v87 = a6;
  v88 = a7;
  v84 = a3;
  v85 = a4;
  v78 = a2;
  v94 = *MEMORY[0x277D85DE8];
  v86 = a5;
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v83 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807B0, &qword_25314D460);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v82 = &v72 - v13;
  v81 = type metadata accessor for AnyModelStateChange(0);
  v14 = *(*(v81 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v81);
  v76 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v75 = &v72 - v18;
  v19 = *(a1 + 8);
  v20 = 1 << *(v19 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v19 + 64);
  v23 = (v20 + 63) >> 6;
  v80 = (v8 + 16);
  v24 = v19 + 64;
  v74 = v17;
  v79 = (v17 + 48);

  v25 = 0;
  v73 = 0;
  v77 = MEMORY[0x277D84F90];
  v90 = v19 + 64;
  v91 = v23;
  v89 = v19;
LABEL_5:
  v26 = v25;
  if (!v22)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v25 = v26;
LABEL_13:
      v27 = __clz(__rbit64(v22)) | (v25 << 6);
      v28 = *(*(v19 + 48) + 8 * v27);
      v92 = *(*(v19 + 56) + 16 * v27);
      v29 = *(&v92 + 1);
      LOBYTE(v27) = *(*(&v92 + 1) + 32);
      v30 = v27 & 0x3F;
      v31 = ((1 << v27) + 63) >> 6;
      v32 = 8 * v31;

      if (v30 <= 0xD)
      {
        v33 = v28;
        v34 = v28;
        v35 = v92;

        goto LABEL_15;
      }

      swift_bridgeObjectRetain_n();
      v60 = v28;
      v61 = v92;
      if (swift_stdlib_isStackAllocationSafe())
      {
        v33 = v28;

LABEL_15:
        MEMORY[0x28223BE20](v36);
        bzero(&v72 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0), v32);
        v37 = 0;
        v38 = 0;
        v39 = 1 << *(v29 + 32);
        if (v39 < 64)
        {
          v40 = ~(-1 << v39);
        }

        else
        {
          v40 = -1;
        }

        v41 = v40 & *(v29 + 56);
        v42 = (v39 + 63) >> 6;
        while (v41)
        {
          v43 = __clz(__rbit64(v41));
          v41 &= v41 - 1;
          v44 = v43 | (v38 << 6);
LABEL_26:
          if ((*(*(v29 + 48) + 24 * v44 + 16) & 0x80000000) == 0)
          {
            *(&v72 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v44;
            if (__OFADD__(v37++, 1))
            {
              goto LABEL_47;
            }
          }
        }

        v45 = v38;
        while (1)
        {
          v38 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            break;
          }

          if (v38 >= v42)
          {
            v48 = sub_2530DDC14((&v72 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0)), v31, v37, v29);
            v28 = v33;
            goto LABEL_31;
          }

          v46 = *(v29 + 56 + 8 * v38);
          ++v45;
          if (v46)
          {
            v41 = (v46 - 1) & v46;
            v44 = __clz(__rbit64(v46)) | (v38 << 6);
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
      }

      v62 = swift_slowAlloc();

      v63 = v73;
      v64 = sub_2530DDB84(v62, v31, v29, sub_2530DB92C);
      v73 = v63;
      if (v63)
      {

        swift_bridgeObjectRelease_n();
        result = MEMORY[0x259BFDC60](v62, -1, -1);
        __break(1u);
        return result;
      }

      v65 = v64;
      swift_bridgeObjectRelease_n();
      MEMORY[0x259BFDC60](v62, -1, -1);
      v48 = v65;
      v24 = v90;
LABEL_31:
      v22 &= v22 - 1;
      v49 = *(v48 + 16);

      if (v49)
      {
        break;
      }

      v26 = v25;
      v23 = v91;
      if (!v22)
      {
        goto LABEL_8;
      }
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v51 = v28;
    v52 = *(AssociatedConformanceWitness + 56);
    v53 = swift_checkMetadataState();
    v54 = v52(v28, v53, AssociatedConformanceWitness);
    v93 = v92;
    v55 = v83;
    v56 = v86;
    (*v80)(v83, v84, v86);
    v57 = v92;

    swift_unknownObjectRetain();
    v58 = swift_checkMetadataState();
    v59 = v82;
    sub_2530FC678(&v93, v54, v55, v56, v58, v88, v82);
    if ((*v79)(v59, 1, v81) != 1)
    {
      *&v92 = v51;
      v66 = v75;
      sub_2530DFBD4(v59, v75, type metadata accessor for AnyModelStateChange);
      sub_2530DFB6C(v66, v76, type metadata accessor for AnyModelStateChange);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = sub_2530F46D0(0, v77[2] + 1, 1, v77);
      }

      v68 = v77[2];
      v67 = v77[3];
      v19 = v89;
      if (v68 >= v67 >> 1)
      {
        v77 = sub_2530F46D0(v67 > 1, v68 + 1, 1, v77);
      }

      v24 = v90;
      swift_unknownObjectRelease();

      sub_2530DFCAC(v75, type metadata accessor for AnyModelStateChange);
      v69 = v77;
      v77[2] = v68 + 1;
      sub_2530DFBD4(v76, v69 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v68, type metadata accessor for AnyModelStateChange);
      v23 = v91;
      goto LABEL_5;
    }

    swift_unknownObjectRelease();
    sub_2530CD33C(v59, &qword_27F5807B0, &qword_25314D460);
    v26 = v25;
    v19 = v89;
    v24 = v90;
    v23 = v91;
  }

  while (v22);
  while (1)
  {
LABEL_8:
    v25 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_46;
    }

    if (v25 >= v23)
    {
      break;
    }

    v22 = *(v24 + 8 * v25);
    ++v26;
    if (v22)
    {
      goto LABEL_13;
    }
  }

  v70 = *MEMORY[0x277D85DE8];
  return v77;
}

void *sub_2530DEDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v86 = a6;
  v87 = a7;
  v83 = a3;
  v84 = a4;
  v76 = a2;
  v85 = a5;
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v82 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807B0, &qword_25314D460);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v68 - v13;
  v81 = type metadata accessor for AnyModelStateChange(0);
  v15 = *(v81 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v81);
  v71 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v70 = &v68 - v19;
  v20 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete();
  v74 = *(v20 - 8);
  v21 = *(v74 + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v89 = &v68 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DF0, &qword_25314D468);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = (&v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v88 = (&v68 - v31);
  v32 = *(a1 + 16);
  v33 = *(v32 + 64);
  v73 = v32 + 64;
  v34 = 1 << *(v32 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v33;
  v37 = (v34 + 63) >> 6;
  v78 = (v8 + 16);
  v69 = v15;
  v77 = (v15 + 48);
  v75 = v32;

  v39 = 0;
  v72 = MEMORY[0x277D84F90];
  v79 = v37;
  v80 = v30;
  while (1)
  {
    v40 = v39;
    if (!v36)
    {
      break;
    }

    while (1)
    {
      v41 = v40;
LABEL_13:
      v44 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v45 = v44 | (v41 << 6);
      v46 = *(*(v75 + 48) + 8 * v45);
      v47 = v89;
      sub_2530DFB6C(*(v75 + 56) + *(v74 + 72) * v45, v89, type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DF8, &unk_25314D470);
      v49 = *(v48 + 48);
      *v30 = v46;
      sub_2530DFBD4(v47, v30 + v49, type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete);
      (*(*(v48 - 8) + 56))(v30, 0, 1, v48);
      v50 = v46;
      v43 = v41;
LABEL_14:
      v51 = v88;
      sub_2530DFC3C(v30, v88);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DF8, &unk_25314D470);
      if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
      {

        return v72;
      }

      v90 = v43;
      v53 = *v51;
      sub_2530DFBD4(v51 + *(v52 + 48), v24, type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v55 = *(AssociatedConformanceWitness + 56);
      v56 = swift_checkMetadataState();
      v57 = v55(v53, v56, AssociatedConformanceWitness);
      v58 = v89;
      sub_2530DFB6C(v24, v89, type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete);
      v59 = v82;
      v60 = v85;
      (*v78)(v82, v83, v85);
      swift_unknownObjectRetain();
      swift_checkMetadataState();
      sub_2530FC9E0(v58, v57, v59, v60, v87, v14);
      if ((*v77)(v14, 1, v81) != 1)
      {
        break;
      }

      sub_2530DFCAC(v24, type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete);

      swift_unknownObjectRelease();
      result = sub_2530CD33C(v14, &qword_27F5807B0, &qword_25314D460);
      v40 = v90;
      v37 = v79;
      v30 = v80;
      if (!v36)
      {
        goto LABEL_6;
      }
    }

    v62 = v70;
    sub_2530DFBD4(v14, v70, type metadata accessor for AnyModelStateChange);
    sub_2530DFB6C(v62, v71, type metadata accessor for AnyModelStateChange);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v79;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v72 = sub_2530F46D0(0, v72[2] + 1, 1, v72);
    }

    v65 = v72[2];
    v64 = v72[3];
    if (v65 >= v64 >> 1)
    {
      v72 = sub_2530F46D0(v64 > 1, v65 + 1, 1, v72);
    }

    swift_unknownObjectRelease();

    sub_2530DFCAC(v70, type metadata accessor for AnyModelStateChange);
    sub_2530DFCAC(v24, type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete);
    v66 = v71;
    v67 = v72;
    v72[2] = v65 + 1;
    result = sub_2530DFBD4(v66, v67 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v65, type metadata accessor for AnyModelStateChange);
    v30 = v80;
    v39 = v90;
  }

LABEL_6:
  if (v37 <= v40 + 1)
  {
    v42 = v40 + 1;
  }

  else
  {
    v42 = v37;
  }

  v43 = v42 - 1;
  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v41 >= v37)
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DF8, &unk_25314D470);
      (*(*(v61 - 8) + 56))(v30, 1, 1, v61);
      v36 = 0;
      goto LABEL_14;
    }

    v36 = *(v73 + 8 * v41);
    ++v40;
    if (v36)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2530DF604(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a7;
  v46 = a2;
  v47 = a3;
  *&v45 = a1;
  v10 = type metadata accessor for AnyModelStateChange(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42[0] = a5;
  v44 = *(a5 - 8);
  v16 = *(v44 + 64);
  MEMORY[0x28223BE20](v13);
  v43 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v42[1] = a4;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v22 = v42 - v21;
  *&v50 = a4;
  *(&v50 + 1) = a5;
  v51 = a6;
  v52 = v49;
  v23 = type metadata accessor for ModelStateSubscriptionManager.RelationshipModelSet();
  v48 = *(v23 - 1);
  v24 = *(v48 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = v42 - v25;
  v27 = *(v45 + 16);
  v28 = *(v19 + 16);
  v45 = *v45;
  v28(v22, v46, AssociatedTypeWitness);
  v29 = v43;
  v30 = v42[0];
  (*(v44 + 16))(v43, v47, v42[0]);
  sub_2530DB93C(v22, v29, v30, v26);
  v50 = v45;
  v51 = v27;
  sub_2530DBA90(&v50, v23);
  v31 = sub_2530DBF94(v23);
  v32 = v31[2];
  if (v32)
  {
    v47 = v26;
    v49 = v23;
    v54 = MEMORY[0x277D84F90];
    sub_2530F4E10(0, v32, 0);
    v33 = v54;
    v34 = (v31 + 4);
    do
    {
      sub_2530C25FC(v34, &v50);
      v35 = v52;
      v36 = v53;
      v37 = __swift_project_boxed_opaque_existential_1(&v50, v52);
      v15[3] = v35;
      v15[4] = *(v36 + 8);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
      (*(*(v35 - 8) + 16))(boxed_opaque_existential_0, v37, v35);
      swift_storeEnumTagMultiPayload();
      __swift_destroy_boxed_opaque_existential_0(&v50);
      v54 = v33;
      v40 = *(v33 + 16);
      v39 = *(v33 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_2530F4E10(v39 > 1, v40 + 1, 1);
        v33 = v54;
      }

      *(v33 + 16) = v40 + 1;
      sub_2530DFBD4(v15, v33 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v40, type metadata accessor for AnyModelStateChange);
      v34 += 40;
      --v32;
    }

    while (v32);
    (*(v48 + 8))(v47, v49);
  }

  else
  {

    (*(v48 + 8))(v26, v23);
    return MEMORY[0x277D84F90];
  }

  return v33;
}

unint64_t sub_2530DFADC()
{
  result = qword_27F580918;
  if (!qword_27F580918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F580918);
  }

  return result;
}

uint64_t sub_2530DFB28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomesStore.HomesRelationshipModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2530DFB6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2530DFBD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2530DFC3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DF0, &qword_25314D468);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2530DFCAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2530DFD0C()
{
  result = qword_27F580E08[0];
  if (!qword_27F580E08[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F580E00, &unk_25314D480);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F580E08);
  }

  return result;
}

void sub_2530DFD78(void *a1)
{
  v2 = a1[4];
  v3 = a1[2];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      sub_2530E042C();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2530DFE8C(int *a1, unsigned int a2, void *a3)
{
  v6 = a3[4];
  v7 = a3[2];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(a3[3] - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= v10)
  {
    v14 = *(v9 + 84);
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(*(AssociatedTypeWitness - 8) + 64) + v13;
  v16 = *(v11 + 64) + 7;
  if (v14 >= a2)
  {
    goto LABEL_29;
  }

  v17 = ((v16 + (v15 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v18 = v17 & 0xFFFFFFF8;
  if ((v17 & 0xFFFFFFF8) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = a2 - v14 + 1;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v24 = v22 - 1;
    if (v18)
    {
      v24 = 0;
      v25 = *a1;
    }

    else
    {
      v25 = 0;
    }

    return v14 + (v25 | v24) + 1;
  }

  if (v21)
  {
    v22 = *(a1 + v17);
    if (v22)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v10 == v14)
  {
    v26 = *(v9 + 48);

    return v26(a1);
  }

  else
  {
    v27 = (a1 + v15) & ~v13;
    if (v12 == v14)
    {
      v28 = *(v11 + 48);

      return v28(v27, v12);
    }

    else
    {
      v29 = *((v16 + v27) & 0xFFFFFFFFFFFFFFF8);
      if (v29 >= 0xFFFFFFFF)
      {
        LODWORD(v29) = -1;
      }

      return (v29 + 1);
    }
  }
}

void sub_2530E0144(_DWORD *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = a4[4];
  v9 = a4[2];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  v13 = *(a4[3] - 8);
  v14 = *(v13 + 84);
  v15 = *(v11 + 64);
  v16 = *(v13 + 80);
  v17 = *(v13 + 64);
  if (v14 <= v12)
  {
    v18 = *(v11 + 84);
  }

  else
  {
    v18 = *(v13 + 84);
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  v19 = v15 + v16;
  v20 = (v15 + v16) & ~v16;
  v21 = v17 + 7;
  v22 = ((v17 + 7 + v20) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v17 + 7 + v20) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v23 = a3 - v18 + 1;
  }

  else
  {
    v23 = 2;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v18 < a3)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (a2 > v18)
  {
    if (v22)
    {
      v27 = 1;
    }

    else
    {
      v27 = a2 - v18;
    }

    if (v22)
    {
      v28 = ~v18 + a2;
      bzero(a1, v22);
      *a1 = v28;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        *(a1 + v22) = v27;
      }

      else
      {
        *(a1 + v22) = v27;
      }
    }

    else if (v26)
    {
      *(a1 + v22) = v27;
    }

    return;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v22) = 0;
  }

  else if (v26)
  {
    *(a1 + v22) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v12 == v18)
  {
    v29 = *(v11 + 56);

    v29(a1, a2, v12, AssociatedTypeWitness);
  }

  else
  {
    v30 = (a1 + v19) & ~v16;
    if (v14 == v18)
    {
      v31 = *(v13 + 56);

      v31(v30, a2);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v32 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v32 = (a2 - 1);
      }

      *((v21 + v30) & 0xFFFFFFFFFFFFFFF8) = v32;
    }
  }
}

void sub_2530E042C()
{
  if (!qword_27F580E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F580E98, qword_25314D4A8);
    sub_2530DA4C8();
    v0 = sub_253148AF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F580E90);
    }
  }
}

unint64_t sub_2530E04A8()
{
  result = qword_27F580EA0;
  if (!qword_27F580EA0)
  {
    _s5ProxyCMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580EA0);
  }

  return result;
}

void sub_2530E0500(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v6 = sub_253148B54();
  v7 = [v5 initWithEntityName_];

  [v7 setResultType_];
  [v7 setPredicate_];
  [v7 setReturnsObjectsAsFaults_];
  if (a1[4])
  {
    v8 = sub_253148C84();
  }

  else
  {
    v8 = 0;
  }

  [v7 setRelationshipKeyPathsForPrefetching_];

  sub_2530CF970(0, &qword_27F580EA8, 0x277CBE438);
  v9 = sub_253149154();

  if (v1)
  {
    return;
  }

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_16:

    return;
  }

  v10 = sub_2531492E4();
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_7:
  v19 = MEMORY[0x277D84F90];
  sub_2531494C4();
  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = v11 + 1;
        v13 = MEMORY[0x259BFD000]();
        _s5ProxyCMa_0();
        *(swift_allocObject() + 16) = v13;
        sub_253149494();
        v14 = *(v19 + 16);
        sub_2531494D4();
        sub_2531494E4();
        sub_2531494A4();
        v11 = v12;
      }

      while (v10 != v12);
    }

    else
    {
      _s5ProxyCMa_0();
      v15 = 32;
      do
      {
        v16 = *(v9 + v15);
        *(swift_allocObject() + 16) = v16;
        v17 = v16;
        sub_253149494();
        v18 = *(v19 + 16);
        sub_2531494D4();
        sub_2531494E4();
        sub_2531494A4();
        v15 += 8;
        --v10;
      }

      while (v10);
    }
  }
}

id sub_2530E078C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [v3 persistentStoreCoordinator];
  if (result)
  {
    v7 = result;
    v8 = [result managedObjectModel];

    v9 = [v8 entitiesByName];
    sub_2530CF970(0, &qword_27F580910, 0x277CBE408);
    v10 = sub_253148AD4();

    if (*(v10 + 16) && (v11 = sub_25311D908(a1, a2), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      return v13;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_2530E08A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_253149144();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530E096C, 0, 0);
}

uint64_t sub_2530E096C()
{
  (*(v0[8] + 104))(v0[9], *MEMORY[0x277CBE110], v0[7]);
  v1 = *(MEMORY[0x277CBE118] + 4);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_2530E0A34;
  v3 = v0[9];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return MEMORY[0x28210EE50](v8, v3, v6, v7, v4);
}

uint64_t sub_2530E0A34()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *v1;
  v6[11] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2530E0BDC, 0, 0);
  }

  else
  {
    v7 = v6[9];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_2530E0BDC()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

id sub_2530E0C88(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v2 = [v1 executeRequest:a1 error:v7];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_253148844();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_2530E0D68(uint64_t a1)
{
  v2 = [*v1 objectWithID_];
  _s5ProxyCMa_0();
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t sub_2530E0DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2530BF218;

  return sub_2530E08A4(a1, a2, a3, a4);
}

id sub_2530E0EA4(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if ([v1 setQueryGenerationFromToken:a1 error:v5])
  {
    result = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_253148844();

    result = swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2530E0F54()
{
  result = qword_27F580940;
  if (!qword_27F580940)
  {
    type metadata accessor for HMCDUserSharedSettingsModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580940);
  }

  return result;
}

uint64_t sub_2530E0FB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HomesStore.User.SharedSettings();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 modelID];
  sub_253148924();

  v8[v4[5]] = [a1 isExplicitContentAllowed];
  v8[v4[6]] = [a1 isiTunesAccountAllowed];
  v8[v4[7]] = [a1 isDolbyAtmosEnabled];
  v8[v4[8]] = [a1 isLosslessMusicEnabled];
  v8[v4[9]] = [a1 isPlaybackInfluencesEnabled];
  LOBYTE(v9) = [a1 isSiriIdentifyVoiceEnabled];

  v8[v4[10]] = v9;
  sub_2530E1368(v8, a2);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_2530E1158()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB0, &qword_25314D550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25314D510;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x44496C65646F6DLL;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000018;
  *(inited + 72) = 0x800000025314ABB0;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000016;
  *(inited + 96) = 0x800000025314ABD0;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000013;
  *(inited + 120) = 0x800000025314ABF0;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000016;
  *(inited + 144) = 0x800000025314AC10;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD00000000000001BLL;
  *(inited + 168) = 0x800000025314AC30;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD00000000000001ALL;
  *(inited + 192) = 0x800000025314AC50;
  v1 = sub_253109C78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB8, &qword_25314D638);
  result = swift_arrayDestroy();
  qword_27F58D080 = v1;
  return result;
}

uint64_t sub_2530E130C()
{
  if (qword_27F580220 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2530E1368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.User.SharedSettings();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2530E13CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x277D84F90];
  sub_2530F4E54(0, v1, 0);
  v2 = v28;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_253149264();
  v7 = result;
  v8 = 0;
  v25 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_36;
    }

    v26 = *(a1 + 36);
    v11 = *(*(a1 + 48) + v7);
    if (v11 > 3)
    {
      if (*(*(a1 + 48) + v7) > 5u)
      {
        if (v11 == 6)
        {
          v27 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice();
          v12 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice;
          v13 = &qword_27F5806F0;
        }

        else
        {
          v27 = type metadata accessor for HomesStore.User.SharedSettings();
          v12 = type metadata accessor for HomesStore.User.SharedSettings;
          v13 = &unk_27F5806E8;
        }
      }

      else if (v11 == 4)
      {
        v27 = type metadata accessor for HomesStore.User();
        v12 = type metadata accessor for HomesStore.User;
        v13 = &unk_27F580700;
      }

      else
      {
        v27 = type metadata accessor for HomesStore.Zone();
        v12 = type metadata accessor for HomesStore.Zone;
        v13 = &unk_27F5806F8;
      }
    }

    else if (*(*(a1 + 48) + v7) > 1u)
    {
      if (v11 == 2)
      {
        v27 = type metadata accessor for HomesStore.Home();
        v12 = type metadata accessor for HomesStore.Home;
        v13 = &unk_27F580710;
      }

      else
      {
        v27 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
        v12 = type metadata accessor for HomesStore.HomesRelationshipModel;
        v13 = &unk_27F580708;
      }
    }

    else if (*(*(a1 + 48) + v7))
    {
      v27 = type metadata accessor for HomesStore.Room();
      v12 = type metadata accessor for HomesStore.Room;
      v13 = &qword_27F580718;
    }

    else
    {
      v27 = type metadata accessor for HomesStore.Accessory();
      v12 = type metadata accessor for HomesStore.Accessory;
      v13 = &unk_27F580720;
    }

    result = sub_2530E836C(v13, v12);
    v14 = result;
    v16 = *(v28 + 16);
    v15 = *(v28 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_2530F4E54((v15 > 1), v16 + 1, 1);
    }

    *(v28 + 16) = v16 + 1;
    v17 = v28 + 16 * v16;
    *(v17 + 32) = v27;
    *(v17 + 40) = v14;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_37;
    }

    v4 = a1 + 56;
    v18 = *(a1 + 56 + 8 * v10);
    if ((v18 & (1 << v7)) == 0)
    {
      goto LABEL_38;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_39;
    }

    v19 = v18 & (-2 << (v7 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (a1 + 64 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_2530BA974(v7, v26, 0);
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_2530BA974(v7, v26, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v25)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_2530E1814()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F580EC0);
  __swift_project_value_buffer(v0, qword_27F580EC0);
  return sub_253148A84();
}

void RelationshipObserver.resolver.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  type metadata accessor for RelationshipResolver();
  v5 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_2530E1A98(v4 + v5, a2);
  os_unfair_lock_unlock((v4 + v6));
}

uint64_t sub_2530E1948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v10 = *v7;
  v11 = *(**v7 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v9, v10 + v11, a2);
  v12 = *(*v10 + 112);
  swift_beginAccess();
  sub_2530C25FC(v10 + v12, v15);
  return sub_2531477CC(v9, v15, a2, a3);
}

uint64_t sub_2530E1ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v115 = a2;
  v112 = a6;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581368, &qword_25314D8F8);
  v10 = *(*(v126 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v126);
  v125 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v124 = &v95 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v123 = &v95 - v16;
  MEMORY[0x28223BE20](v15);
  v122 = &v95 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v109 = &v95 - v20;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807D8, &unk_25314D920);
  v97 = *(v98 - 8);
  v21 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v96 = &v95 - v22;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
  v105 = *(v106 - 8);
  v23 = *(v105 + 64);
  v24 = MEMORY[0x28223BE20](v106);
  v100 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v25;
  MEMORY[0x28223BE20](v24);
  v102 = &v95 - v26;
  v101 = type metadata accessor for HomesStore.AnyChanges(0);
  v103 = *(v101 - 8);
  v27 = *(v103 + 64);
  v28 = MEMORY[0x28223BE20](v101);
  v107 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v29;
  MEMORY[0x28223BE20](v28);
  v113 = &v95 - v30;
  type metadata accessor for RelationshipObserver.State();
  v110 = a3;
  sub_2530C25FC(a3, &v132);
  *&v132 = sub_2530E788C(a1, &v132);
  v31 = sub_2530E78E0();

  v108 = v31;

  v116 = a4;
  v114 = a5;
  v111 = a1;
  v32 = sub_2530E9588(a4);
  v33 = *(v32 + 16);
  if (v33)
  {
    *&v132 = MEMORY[0x277D84F90];
    sub_2530F4DB0(0, v33, 0);
    v34 = v132;
    v35 = v32 + 64;
    v36 = -1 << *(v32 + 32);
    result = sub_253149264();
    v38 = result;
    v39 = 0;
    v40 = *(v32 + 36);
    v117 = v32 + 72;
    v118 = v33;
    v119 = v40;
    v120 = v32 + 64;
    v121 = v32;
    while ((v38 & 0x8000000000000000) == 0 && v38 < 1 << *(v32 + 32))
    {
      v43 = v38 >> 6;
      if ((*(v35 + 8 * (v38 >> 6)) & (1 << v38)) == 0)
      {
        goto LABEL_24;
      }

      if (v40 != *(v32 + 36))
      {
        goto LABEL_25;
      }

      v127 = v39;
      v128 = 1 << v38;
      v44 = v126;
      v45 = *(v126 + 48);
      v46 = *(v32 + 48);
      v47 = sub_253148944();
      v48 = *(v47 - 8);
      v49 = v48;
      v50 = v46 + *(v48 + 72) * v38;
      v51 = *(v48 + 16);
      v129 = v34;
      v52 = v122;
      v51(v122, v50, v47);
      sub_2530C25FC(*(v32 + 56) + 40 * v38, &v52[v45]);
      v53 = *(v49 + 32);
      v54 = v123;
      v53(v123, v52, v47);
      sub_2530BDB14(&v52[v45], v54 + *(v44 + 48));
      v55 = v124;
      sub_2530E7F5C(v54, v124);
      v56 = *(v44 + 48);
      v57 = v125;
      v58 = &v125[v56];
      v53(v125, v55, v47);
      v59 = (v55 + v56);
      v34 = v129;
      sub_2530BDB14(v59, v57 + v56);
      v60 = *(v58 + 4);
      __swift_project_boxed_opaque_existential_1(v58, *(v58 + 3));
      sub_253133AC0();
      v61 = v131;
      sub_2530CD33C(v57, &qword_27F581368, &qword_25314D8F8);
      result = sub_2530CD33C(v54, &qword_27F581368, &qword_25314D8F8);
      *&v132 = v34;
      v63 = *(v34 + 16);
      v62 = *(v34 + 24);
      if (v63 >= v62 >> 1)
      {
        result = sub_2530F4DB0((v62 > 1), v63 + 1, 1);
        v34 = v132;
      }

      *(v34 + 16) = v63 + 1;
      *(v34 + v63 + 32) = v61;
      v32 = v121;
      v41 = 1 << *(v121 + 32);
      if (v38 >= v41)
      {
        goto LABEL_26;
      }

      v35 = v120;
      v64 = *(v120 + 8 * v43);
      if ((v64 & v128) == 0)
      {
        goto LABEL_27;
      }

      LODWORD(v40) = v119;
      if (v119 != *(v121 + 36))
      {
        goto LABEL_28;
      }

      v65 = v64 & (-2 << (v38 & 0x3F));
      if (v65)
      {
        v41 = __clz(__rbit64(v65)) | v38 & 0x7FFFFFFFFFFFFFC0;
        v42 = v118;
      }

      else
      {
        v66 = v43 << 6;
        v67 = v43 + 1;
        v42 = v118;
        v68 = (v117 + 8 * v43);
        while (v67 < (v41 + 63) >> 6)
        {
          v70 = *v68++;
          v69 = v70;
          v66 += 64;
          ++v67;
          if (v70)
          {
            result = sub_2530BA974(v38, v119, 0);
            v41 = __clz(__rbit64(v69)) + v66;
            goto LABEL_4;
          }
        }

        result = sub_2530BA974(v38, v119, 0);
      }

LABEL_4:
      v39 = v127 + 1;
      v38 = v41;
      if (v127 + 1 == v42)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
LABEL_22:
    v71 = sub_2530DA748(v34);

    v131 = v71;
    (*(*(v114 + 8) + 48))(&v130);
    sub_2530D6108(&v132, v130);
    v129 = sub_2530E13CC(v131);

    type metadata accessor for AnyModelStateChange(0);
    v72 = v97;
    v73 = v96;
    v74 = v98;
    (*(v97 + 104))(v96, *MEMORY[0x277D858A0], v98);
    v75 = v102;
    sub_253148ED4();
    (*(v72 + 8))(v73, v74);
    v76 = sub_253148DE4();
    v77 = *(*(v76 - 8) + 56);
    v78 = v109;
    v77(v109, 1, 1, v76);
    sub_2530C25FC(v115 + 16, &v132);
    v79 = v105;
    v80 = v100;
    v81 = v106;
    (*(v105 + 16))(v100, v75, v106);
    v82 = (*(v79 + 80) + 80) & ~*(v79 + 80);
    v83 = swift_allocObject();
    *(v83 + 2) = 0;
    *(v83 + 3) = 0;
    *(v83 + 4) = v129;
    sub_2530BDB14(&v132, (v83 + 40));
    (*(v79 + 32))(&v83[v82], v80, v81);
    v84 = sub_253112858(0, 0, v78, &unk_25314D930, v83);
    (*(v79 + 8))(v75, v81);
    v85 = v113;
    *&v113[*(v101 + 20)] = v84;
    v77(v78, 1, 1, v76);
    v86 = v107;
    sub_2530E80D4(v85, v107, type metadata accessor for HomesStore.AnyChanges);
    v87 = (*(v103 + 80) + 48) & ~*(v103 + 80);
    v88 = (v104 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
    v89 = swift_allocObject();
    v89[2] = 0;
    v89[3] = 0;
    v90 = v116;
    v91 = v114;
    v89[4] = v116;
    v89[5] = v91;
    sub_2530E82D0(v86, v89 + v87, type metadata accessor for HomesStore.AnyChanges);
    v92 = v108;
    *(v89 + v88) = v108;

    v93 = sub_253122330(0, 0, v78, &unk_25314D948, v89);

    __swift_destroy_boxed_opaque_existential_0(v110);
    (*(*(v90 - 8) + 8))(v111, v90);
    result = sub_2530E8270(v85, type metadata accessor for HomesStore.AnyChanges);
    v94 = v112;
    *v112 = v93;
    v94[1] = v92;
  }

  return result;
}

uint64_t sub_2530E2620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = type metadata accessor for AnyModelStateChange(0);
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v10 = *(v9 + 64) + 15;
  v7[9] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807B0, &qword_25314D460) - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v12 = type metadata accessor for HomesStore.AnyChanges.AsyncIterator(0);
  v7[11] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530E274C, 0, 0);
}

uint64_t sub_2530E274C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C8, &qword_25314D940);
  sub_253148E54();
  *(v1 + *(v2 + 20)) = *(v3 + *(type metadata accessor for HomesStore.AnyChanges(0) + 20));
  v4 = sub_2530E836C(&qword_27F581380, type metadata accessor for HomesStore.AnyChanges.AsyncIterator);
  v5 = *(MEMORY[0x277D856D0] + 4);

  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_2530E2874;
  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[10];

  return MEMORY[0x282200308](v9, v7, v4);
}

uint64_t sub_2530E2874()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_2530E2BE4;
  }

  else
  {
    v3 = sub_2530E2988;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2530E2988()
{
  v1 = *(v0 + 80);
  v2 = (*(*(v0 + 64) + 48))(v1, 1, *(v0 + 56));
  v3 = *(v0 + 72);
  if (v2 == 1)
  {
    sub_2530E8270(*(v0 + 96), type metadata accessor for HomesStore.AnyChanges.AsyncIterator);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 112);
    v7 = *(v0 + 32);
    v17 = *(v0 + 40);
    sub_2530E82D0(v1, v3, type metadata accessor for AnyModelStateChange);
    v8 = swift_task_alloc();
    *(v8 + 16) = v17;
    *(v8 + 32) = v3;
    v9 = *(*v7 + *MEMORY[0x277D841D0] + 16);
    v10 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v7 + v10));
    sub_2530E8338((v7 + v9));
    os_unfair_lock_unlock((v7 + v10));

    sub_2530E8270(v3, type metadata accessor for AnyModelStateChange);
    v11 = sub_2530E836C(&qword_27F581380, type metadata accessor for HomesStore.AnyChanges.AsyncIterator);
    v12 = *(MEMORY[0x277D856D0] + 4);
    v13 = swift_task_alloc();
    *(v0 + 104) = v13;
    *v13 = v0;
    v13[1] = sub_2530E2874;
    v14 = *(v0 + 88);
    v15 = *(v0 + 96);
    v16 = *(v0 + 80);

    return MEMORY[0x282200308](v16, v14, v11);
  }
}

uint64_t sub_2530E2BE4()
{
  *(v0 + 16) = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580730, &qword_25314F190);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_2530E2C78, 0, 0);
}

uint64_t sub_2530E2C78()
{
  v2 = v0[9];
  v1 = v0[10];
  sub_2530E8270(v0[12], type metadata accessor for HomesStore.AnyChanges.AsyncIterator);

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_2530E2D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_253148944();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for RelationshipObserver.ObserverState() + 36);
  type metadata accessor for RelationshipObserver.Change();
  v8 = sub_253148E44();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_2530E2E04(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v41 = a1;
  v3 = *v2;
  v4 = sub_253148944();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 88);
  v8 = *(v3 + 80);
  v33[1] = v7;
  v33[2] = v8;
  v9 = type metadata accessor for RelationshipObserver.ObserverState();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v34 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v33 - v13;
  type metadata accessor for RelationshipObserver.Change();
  v15 = sub_253148E24();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v33 - v18;
  v20 = sub_253148E44();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v33 - v26;
  swift_checkMetadataState();
  sub_2530BE4A4(v19);
  sub_253148DF4();
  (*(v16 + 8))(v19, v15);
  v28 = v35;
  sub_253148934();
  (*(v21 + 16))(v25, v27, v20);
  sub_2530E2D18(v28, v25, v14);
  v30 = v36;
  v29 = v37;
  (*(v36 + 16))(v34, v14, v37);
  v31 = *(*v2 + 120);
  swift_beginAccess();
  sub_253148D64();
  sub_253148D34();
  swift_endAccess();
  (*(v21 + 8))(v27, v20);
  (*(v39 + 16))(v41, v14, v40);
  return (*(v30 + 8))(v14, v29);
}

uint64_t sub_2530E320C(void *a1)
{
  v2 = v1;
  v4 = sub_253148944();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = *(v9 + 32);
  sub_2531493D4();
  v11 = *(v2 + *(*v2 + 104));
  if (!*(v11 + 16))
  {
    goto LABEL_5;
  }

  v12 = *(v2 + *(*v2 + 104));

  v13 = sub_25311D834(v8);
  if ((v14 & 1) == 0)
  {

LABEL_5:
    (*(v5 + 8))(v8, v4);
    v15 = 0;
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    goto LABEL_6;
  }

  sub_2530C25FC(*(v11 + 56) + 40 * v13, v17);
  (*(v5 + 8))(v8, v4);

  v15 = 1;
LABEL_6:
  sub_2530CD33C(v17, &qword_27F581370, &qword_25314D908);
  return v15;
}

uint64_t sub_2530E33A8(uint64_t a1)
{
  v2 = type metadata accessor for AnyModelStateChange(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v25 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v25 - v10;
  if (qword_27F580228 != -1)
  {
    swift_once();
  }

  v12 = sub_253148A94();
  __swift_project_value_buffer(v12, qword_27F580EC0);
  sub_2530E80D4(a1, v11, type metadata accessor for AnyModelStateChange);
  v13 = sub_253148A74();
  v14 = sub_2531490A4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v26 = v16;
    *v15 = 136315138;
    sub_2530E80D4(v11, v9, type metadata accessor for AnyModelStateChange);
    v17 = sub_253148B74();
    v25[1] = v2;
    v19 = v18;
    sub_2530E8270(v11, type metadata accessor for AnyModelStateChange);
    v20 = sub_253146498(v17, v19, &v26);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_2530B8000, v13, v14, "Got change: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x259BFDC60](v16, -1, -1);
    MEMORY[0x259BFDC60](v15, -1, -1);
  }

  else
  {

    sub_2530E8270(v11, type metadata accessor for AnyModelStateChange);
  }

  sub_2530E80D4(a1, v6, type metadata accessor for AnyModelStateChange);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v23 = *(v6 + 1);
    v26 = *v6;
    v27 = v23;
    v28 = *(v6 + 4);
    sub_2530E3A8C(&v26);
    return sub_2530C26A4(&v26);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v22 = *(v6 + 1);
    v26 = *v6;
    v27 = v22;
    v28 = *(v6 + 4);
    sub_2530E36D4(&v26);
    return sub_2530C26A4(&v26);
  }

  return sub_2530E8270(v6, type metadata accessor for AnyModelStateChange);
}

uint64_t sub_2530E36D4(void *a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 88);
  v6 = type metadata accessor for RelationshipObserver.State.ChangeState();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - v8;
  updated = type metadata accessor for RelationshipObserver.State.PendingRelationshipUpdateState();
  v11 = *(updated - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](updated);
  v37 = &v37 - v13;
  v14 = a1[3];
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, v14);
  v17 = (v2 + *(*v2 + 112));
  swift_beginAccess();
  v19 = v17[3];
  v18 = v17[4];
  __swift_mutable_project_boxed_opaque_existential_1(v17, v19);
  v20 = *(v18 + 32);
  v21 = v14;
  v22 = v11;
  v23 = v18;
  v24 = v38;
  v20(v16, v21, v15, v19, v23);
  swift_endAccess();
  v25 = *(*v2 + 128);
  swift_beginAccess();
  v26 = v2 + v25;
  v27 = v39;
  (*(v24 + 16))(v9, v26, v39);
  if ((*(v11 + 48))(v9, 1, updated) == 1)
  {
    return (*(v24 + 8))(v9, v27);
  }

  v29 = *(v11 + 32);
  v30 = v37;
  v29(v37, v9, updated);
  v31 = __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v32 = *(v30 + *(updated + 36));
  if (sub_25312B2C0(v32, *v31))
  {
    sub_2530E41D0(v30, v32);
  }

  else
  {
    if (qword_27F580228 != -1)
    {
      swift_once();
    }

    v33 = sub_253148A94();
    __swift_project_value_buffer(v33, qword_27F580EC0);
    v34 = sub_253148A74();
    v35 = sub_2531490A4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2530B8000, v34, v35, "Received model during pending relationship change, waiting for remaining models", v36, 2u);
      MEMORY[0x259BFDC60](v36, -1, -1);
    }
  }

  return (*(v22 + 8))(v30, updated);
}

uint64_t sub_2530E3A8C(void *a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = type metadata accessor for RelationshipObserver.Change();
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = *(v66 + 64);
  MEMORY[0x28223BE20](v6);
  v65 = &v58 - v8;
  v9 = type metadata accessor for RelationshipObserver.State.ChangeState();
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = *(v63 + 64);
  MEMORY[0x28223BE20](v9);
  v62 = &v58 - v11;
  updated = type metadata accessor for RelationshipObserver.State.PendingRelationshipUpdateState();
  v60 = *(updated - 8);
  v61 = updated;
  v13 = *(v60 + 64);
  MEMORY[0x28223BE20](updated);
  v59 = &v58 - v14;
  v15 = sub_2531491F4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v58 - v19;
  v21 = *(v4 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v18);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v58 - v26;
  sub_2530C25FC(a1, v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581378, &unk_25314D910);
  v28 = swift_dynamicCast();
  v29 = *(v21 + 56);
  if (v28)
  {
    v29(v20, 0, 1, v4);
    v30 = *(v21 + 32);
    v30(v27, v20, v4);
    v31 = *(*v2 + 96);
    swift_beginAccess();
    (*(v21 + 16))(v25, v2 + v31, v4);
    v32 = *(*(*(v5 + 8) + 24) + 8);
    LOBYTE(v31) = sub_253148B44();
    v33 = *(v21 + 8);
    v33(v25, v4);
    if (v31)
    {
      return (v33)(v27, v4);
    }

    v34 = sub_2530E9588(v4);
    v35 = (v2 + *(*v2 + 112));
    swift_beginAccess();
    v36 = __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    if (sub_25312B2C0(v34, *v36))
    {
      sub_2530E41D0(v27, v34);

      return (v33)(v27, v4);
    }

    if (qword_27F580228 != -1)
    {
      swift_once();
    }

    v47 = sub_253148A94();
    __swift_project_value_buffer(v47, qword_27F580EC0);
    v48 = sub_253148A74();
    v49 = sub_253149094();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v34;
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2530B8000, v48, v49, "Pending relationship update since we don't have all models yet", v51, 2u);
      v52 = v51;
      v34 = v50;
      MEMORY[0x259BFDC60](v52, -1, -1);
    }

    v30(v25, v27, v4);
    v53 = v59;
    v30(v59, v25, v4);
    v55 = v60;
    v54 = v61;
    *&v53[*(v61 + 36)] = v34;
    v56 = v62;
    (*(v55 + 32))(v62, v53, v54);
    (*(v55 + 56))(v56, 0, 1, v54);
    v57 = *(*v2 + 128);
    swift_beginAccess();
    (*(v63 + 40))(v2 + v57, v56, v64);
    return swift_endAccess();
  }

  else
  {
    v29(v20, 1, 1, v4);
    (*(v16 + 8))(v20, v15);
    result = sub_2530E320C(a1);
    if (result)
    {
      v38 = a1[3];
      v39 = a1[4];
      v40 = __swift_project_boxed_opaque_existential_1(a1, v38);
      v41 = v2 + *(*v2 + 112);
      swift_beginAccess();
      v42 = *(v41 + 24);
      v43 = *(v41 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
      (*(v43 + 32))(v40, v38, v39, v42, v43);
      swift_endAccess();
      v44 = a1;
      v45 = v65;
      sub_2530E76B4(v44, v65);
      type metadata accessor for AnyModelStateChange(0);
      swift_storeEnumTagMultiPayload();
      v46 = v67;
      swift_storeEnumTagMultiPayload();
      sub_2530E5480(v45);
      return (*(v66 + 8))(v45, v46);
    }
  }

  return result;
}

uint64_t sub_2530E41D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v55 = a1;
  v5 = *v2;
  v6 = v5[10];
  v7 = v5[11];
  v8 = type metadata accessor for RelationshipObserver.Change();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v57 = &v47 - v11;
  v50 = *(v6 - 8);
  v12 = *(v50 + 64);
  MEMORY[0x28223BE20](v10);
  v51 = &v47 - v13;
  v14 = type metadata accessor for RelationshipResolver();
  v53 = *(v14 - 8);
  v54 = v14;
  v15 = *(v53 + 64);
  MEMORY[0x28223BE20](v14);
  v52 = &v47 - v16;
  v56 = v7;
  v17 = type metadata accessor for RelationshipObserver.State.ChangeState();
  v48 = *(v17 - 8);
  v49 = v17;
  v18 = *(v48 + 64);
  MEMORY[0x28223BE20](v17);
  v47 = &v47 - v19;
  v20 = v5[13];
  v21 = *&v3[v20];

  v22 = sub_2530E7D4C(a2, v21);

  v23 = *&v3[v20];

  v25 = sub_2530E7D4C(v24, a2);

  if (qword_27F580228 != -1)
  {
    swift_once();
  }

  v26 = sub_253148A94();
  __swift_project_value_buffer(v26, qword_27F580EC0);

  v27 = sub_253148A74();
  v28 = sub_253149094();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134218240;
    *(v29 + 4) = *(v22 + 16);

    *(v29 + 12) = 2048;
    *(v29 + 14) = *(v25 + 16);

    _os_log_impl(&dword_2530B8000, v27, v28, "Processing relationship update(s), added: %ld, removed: %ld", v29, 0x16u);
    MEMORY[0x259BFDC60](v29, -1, -1);
  }

  else
  {
  }

  v30 = &v3[*(*v3 + 112)];
  swift_beginAccess();
  v32 = *(v30 + 24);
  v31 = *(v30 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v30, v32);
  (*(v31 + 24))(a2, v32, v31);
  swift_endAccess();
  v33 = *(*v3 + 96);
  swift_beginAccess();
  v34 = v50;
  v35 = v55;
  (*(v50 + 24))(&v3[v33], v55, v6);
  swift_endAccess();
  v36 = *&v3[v20];
  *&v3[v20] = a2;

  updated = type metadata accessor for RelationshipObserver.State.PendingRelationshipUpdateState();
  v38 = v47;
  (*(*(updated - 8) + 56))(v47, 1, 1, updated);
  v39 = *(*v3 + 128);
  swift_beginAccess();
  (*(v48 + 40))(&v3[v39], v38, v49);
  swift_endAccess();
  sub_2530E4804(v22);

  sub_2530E4E84(v25);

  v40 = v51;
  (*(v34 + 16))(v51, v35, v6);
  sub_2530C25FC(v30, v60);
  v41 = v52;
  sub_2531477CC(v40, v60, v6, v52);
  v43 = v53;
  v42 = v54;
  v44 = v57;
  (*(v53 + 16))(v57, v41, v54);
  v45 = v59;
  swift_storeEnumTagMultiPayload();
  sub_2530E5480(v44);
  (*(v58 + 8))(v44, v45);
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_2530E4804(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = type metadata accessor for RelationshipObserver.Change();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v51 = &v48 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581368, &qword_25314D8F8);
  v10 = *(*(v59 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v59);
  v58 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v57 = &v48 - v13;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v49 = v7;
    v50 = v6;
    v65 = MEMORY[0x277D84F90];
    sub_2530F4E74(0, v14, 0);
    v15 = v65;
    v16 = a1 + 64;
    v17 = -1 << *(a1 + 32);
    result = sub_253149264();
    v19 = result;
    v20 = 0;
    v21 = *(a1 + 36);
    v52 = a1 + 72;
    v53 = v14;
    v54 = v21;
    v55 = a1 + 64;
    v56 = a1;
    while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(a1 + 32))
    {
      if ((*(v16 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        goto LABEL_26;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v61 = v19 >> 6;
      v62 = 1 << v19;
      v60 = v20;
      v23 = v59;
      v24 = *(v59 + 48);
      v25 = *(a1 + 48);
      v26 = sub_253148944();
      v27 = v15;
      v28 = v2;
      v29 = *(v26 - 8);
      v30 = v57;
      (*(v29 + 16))(v57, v25 + *(v29 + 72) * v19, v26);
      sub_2530C25FC(*(a1 + 56) + 40 * v19, &v30[v24]);
      v31 = v58;
      (*(v29 + 32))(v58, v30, v26);
      v2 = v28;
      v15 = v27;
      v32 = *(v23 + 48);
      sub_2530BDB14(&v30[v24], v31 + v32);
      sub_2530E4CF8((v31 + v32), v2, v63);
      result = sub_2530CD33C(v31, &qword_27F581368, &qword_25314D8F8);
      v65 = v27;
      v34 = *(v27 + 16);
      v33 = *(v27 + 24);
      if (v34 >= v33 >> 1)
      {
        result = sub_2530F4E74((v33 > 1), v34 + 1, 1);
        v15 = v65;
      }

      *(v15 + 16) = v34 + 1;
      v35 = v15 + 40 * v34;
      v36 = v63[0];
      v37 = v63[1];
      *(v35 + 64) = v64;
      *(v35 + 32) = v36;
      *(v35 + 48) = v37;
      a1 = v56;
      v22 = 1 << *(v56 + 32);
      if (v19 >= v22)
      {
        goto LABEL_28;
      }

      v16 = v55;
      v38 = *(v55 + 8 * v61);
      if ((v38 & v62) == 0)
      {
        goto LABEL_29;
      }

      LODWORD(v21) = v54;
      if (v54 != *(v56 + 36))
      {
        goto LABEL_30;
      }

      v39 = v38 & (-2 << (v19 & 0x3F));
      if (v39)
      {
        v22 = __clz(__rbit64(v39)) | v19 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v40 = v61 << 6;
        v41 = v61 + 1;
        v42 = (v52 + 8 * v61);
        while (v41 < (v22 + 63) >> 6)
        {
          v44 = *v42++;
          v43 = v44;
          v40 += 64;
          ++v41;
          if (v44)
          {
            result = sub_2530BA974(v19, v54, 0);
            v22 = __clz(__rbit64(v43)) + v40;
            goto LABEL_4;
          }
        }

        result = sub_2530BA974(v19, v54, 0);
      }

LABEL_4:
      v20 = v60 + 1;
      v19 = v22;
      if (v60 + 1 == v53)
      {
        v7 = v49;
        v6 = v50;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_21:
    v45 = *(v15 + 16);
    v46 = v51;
    if (v45)
    {
      v47 = v15 + 32;
      do
      {
        sub_2530E76B4(v47, v46);
        type metadata accessor for AnyModelStateChange(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        sub_2530E5480(v46);
        (*(v7 + 8))(v46, v6);
        v47 += 40;
        --v45;
      }

      while (v45);
    }
  }

  return result;
}

uint64_t sub_2530E4CF8@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = (a2 + *(*a2 + 112));
  swift_beginAccess();
  v6 = __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_25312B174(a1, *v6, &v9);
  if (v10)
  {
    sub_2530BDB14(&v9, v11);
    return sub_2530BDB14(v11, a3);
  }

  else
  {
    sub_2530CD33C(&v9, &qword_27F5806E0, &qword_25314D900);
    *&v11[0] = 0;
    *(&v11[0] + 1) = 0xE000000000000000;
    sub_2531493C4();

    *&v11[0] = 0xD000000000000017;
    *(&v11[0] + 1) = 0x800000025314AE00;
    sub_253148944();
    sub_2530E836C(&qword_27F5807B8, MEMORY[0x277CC95F0]);
    v8 = sub_2531496F4();
    MEMORY[0x259BFC7D0](v8);

    result = sub_253149594();
    __break(1u);
  }

  return result;
}

uint64_t sub_2530E4E84(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = type metadata accessor for RelationshipObserver.Change();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v56 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581368, &qword_25314D8F8);
  v10 = *(*(v68 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v68);
  v67 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v66 = &v56 - v13;
  v65 = type metadata accessor for AnyModelStateChange.Tombstone(0);
  v69 = *(v65 - 8);
  v14 = *(v69 + 64);
  MEMORY[0x28223BE20](v65);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v56 = v6;
    v57 = v9;
    v58 = v5;
    v59 = v1;
    v74 = MEMORY[0x277D84F90];
    sub_2530F4E94(0, v17, 0);
    v18 = v74;
    v19 = a1 + 64;
    v20 = -1 << *(a1 + 32);
    result = sub_253149264();
    v22 = result;
    v23 = 0;
    v24 = *(a1 + 36);
    v60 = a1 + 72;
    v61 = v17;
    v25 = a1;
    v62 = v24;
    v63 = a1 + 64;
    v64 = a1;
    while ((v22 & 0x8000000000000000) == 0 && v22 < 1 << *(v25 + 32))
    {
      v27 = v22 >> 6;
      if ((*(v19 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
      {
        goto LABEL_26;
      }

      if (v24 != *(v25 + 36))
      {
        goto LABEL_27;
      }

      v70 = v23;
      v71 = 1 << v22;
      v72 = v18;
      v28 = v68;
      v29 = *(v68 + 48);
      v30 = *(v25 + 48);
      v31 = sub_253148944();
      v32 = v25;
      v33 = *(v31 - 8);
      v34 = v16;
      v35 = v66;
      (*(v33 + 16))(v66, v30 + *(v33 + 72) * v22, v31);
      sub_2530C25FC(*(v32 + 56) + 40 * v22, &v35[v29]);
      v36 = v67;
      (*(v33 + 32))(v67, v35, v31);
      v37 = *(v28 + 48);
      v18 = v72;
      v38 = (v36 + v37);
      v39 = &v35[v29];
      v16 = v34;
      sub_2530BDB14(v39, v36 + v37);
      v40 = v38[4];
      __swift_project_boxed_opaque_existential_1(v38, v38[3]);
      v41 = *(v40 + 32);
      sub_2531493D4();
      v42 = v38[4];
      __swift_project_boxed_opaque_existential_1(v38, v38[3]);
      sub_253133AC0();
      *(v34 + *(v65 + 20)) = v73;
      sub_2530CD33C(v36, &qword_27F581368, &qword_25314D8F8);
      v74 = v18;
      v44 = *(v18 + 16);
      v43 = *(v18 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_2530F4E94(v43 > 1, v44 + 1, 1);
        v18 = v74;
      }

      *(v18 + 16) = v44 + 1;
      result = sub_2530E82D0(v34, v18 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v44, type metadata accessor for AnyModelStateChange.Tombstone);
      v25 = v64;
      v26 = 1 << *(v64 + 32);
      if (v22 >= v26)
      {
        goto LABEL_28;
      }

      v19 = v63;
      v45 = *(v63 + 8 * v27);
      if ((v45 & v71) == 0)
      {
        goto LABEL_29;
      }

      LODWORD(v24) = v62;
      if (v62 != *(v64 + 36))
      {
        goto LABEL_30;
      }

      v46 = v45 & (-2 << (v22 & 0x3F));
      if (v46)
      {
        v26 = __clz(__rbit64(v46)) | v22 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v47 = v27 << 6;
        v48 = v27 + 1;
        v49 = (v60 + 8 * v27);
        while (v48 < (v26 + 63) >> 6)
        {
          v51 = *v49++;
          v50 = v51;
          v47 += 64;
          ++v48;
          if (v51)
          {
            result = sub_2530BA974(v22, v62, 0);
            v26 = __clz(__rbit64(v50)) + v47;
            goto LABEL_4;
          }
        }

        result = sub_2530BA974(v22, v62, 0);
      }

LABEL_4:
      v23 = v70 + 1;
      v22 = v26;
      if (v70 + 1 == v61)
      {
        v5 = v58;
        v6 = v56;
        v9 = v57;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_21:
    v52 = *(v18 + 16);
    if (v52)
    {
      v53 = v18 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
      v54 = *(v69 + 72);
      v55 = (v6 + 8);
      do
      {
        sub_2530E80D4(v53, v9, type metadata accessor for AnyModelStateChange.Tombstone);
        type metadata accessor for AnyModelStateChange(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        sub_2530E5480(v9);
        (*v55)(v9, v5);
        v53 += v54;
        --v52;
      }

      while (v52);
    }
  }

  return result;
}

uint64_t sub_2530E5480(uint64_t a1)
{
  v42 = a1;
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = type metadata accessor for RelationshipObserver.Change();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v40 = &v28 - v8;
  v39 = sub_253148E44();
  v9 = *(v39 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v28 - v11;
  v41 = v5;
  v37 = sub_253148E04();
  v12 = *(v37 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v28 - v14;
  v15 = type metadata accessor for RelationshipObserver.ObserverState();
  v16 = *(v15 - 8);
  v28 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - v17;
  v19 = *(v2 + 120);
  swift_beginAccess();
  v20 = *(v1 + v19);

  if (!sub_253148D44())
  {
  }

  v21 = 0;
  v34 = *(v15 + 36);
  v35 = (v16 + 16);
  v32 = (v16 + 8);
  v33 = (v9 + 16);
  v30 = (v9 + 8);
  v31 = (v6 + 16);
  v29 = (v12 + 8);
  while (1)
  {
    v22 = sub_253148CF4();
    sub_253148CC4();
    if (v22)
    {
      (*(v16 + 16))(v18, v20 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v21, v15);
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_2531493F4();
    if (v28 != 8)
    {
      break;
    }

    v43 = result;
    (*v35)(v18, &v43, v15);
    swift_unknownObjectRelease();
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
LABEL_10:
      __break(1u);
    }

LABEL_5:
    v25 = v38;
    v24 = v39;
    (*v33)(v38, &v18[v34], v39);
    (*v32)(v18, v15);
    (*v31)(v40, v42, v41);
    v26 = v36;
    sub_253148E34();
    (*v30)(v25, v24);
    (*v29)(v26, v37);
    ++v21;
    if (v23 == sub_253148D44())
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_2530E58F4()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  v2 = *(v0 + *(*v0 + 104));

  __swift_destroy_boxed_opaque_existential_0((v0 + *(*v0 + 112)));
  v3 = *(v0 + *(*v0 + 120));

  v4 = *(*v0 + 128);
  v5 = *(v1 + 88);
  v6 = type metadata accessor for RelationshipObserver.State.ChangeState();
  (*(*(v6 - 8) + 8))(v0 + v4, v6);
  return v0;
}

uint64_t sub_2530E5A30()
{
  sub_2530E58F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2530E5A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_253148944();
  type metadata accessor for RelationshipObserver.Change();
  v11 = sub_253148E94();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = TupleTypeMetadata2 - 8;
  v14 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v16 = &v21[-v15];
  v22 = a4;
  v23 = a5;
  v17 = *(*a3 + *MEMORY[0x277D841D0] + 16);
  v18 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v18));
  sub_2530E844C((a3 + v17), v16);
  os_unfair_lock_unlock((a3 + v18));
  v19 = *(v13 + 56);
  (*(*(v10 - 8) + 32))(a1, v16, v10);
  return (*(*(v11 - 8) + 32))(a2, &v16[v19], v11);
}

uint64_t sub_2530E5C38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_253148944();
  type metadata accessor for RelationshipObserver.Change();
  sub_253148E94();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = *a1;
  return sub_2530E2E04(a2, a2 + *(TupleTypeMetadata2 + 48));
}

uint64_t RelationshipObserver.Changes.AsyncIterator.next()(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D857A0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  type metadata accessor for RelationshipObserver.Change();
  v9 = sub_253148E84();
  *v6 = v2;
  v6[1] = sub_2530BF218;

  return MEMORY[0x2822003F0](a1, v9);
}

uint64_t sub_2530E5DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for RelationshipObserver.Change();
  v4 = sub_253148E84();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_2530E5E24(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2530E5ECC;

  return RelationshipObserver.Changes.AsyncIterator.next()(a1, a2);
}

uint64_t sub_2530E5ECC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2530E5FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2530E6090;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t sub_2530E6090()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2530E618C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for RelationshipObserver.Changes();
  sub_2530E5A88(a4, a4 + *(v8 + 36), a1, a2, a3);
}

uint64_t RelationshipObserver.Changes.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for RelationshipObserver.Change();
  v6 = sub_253148E84();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  v10 = *(a1 + 36);
  sub_253148E94();
  sub_253148E54();
  return sub_2530E5DAC(v9, a2);
}

uint64_t sub_2530E62C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  RelationshipObserver.Changes.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t RelationshipObserver.changes()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(v2 + 8);

  return sub_2530E618C(v7, v4, v5, a2);
}

uint64_t sub_2530E63A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2530E63E8(uint64_t *a1, int a2)
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

uint64_t sub_2530E6430(uint64_t result, int a2, int a3)
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

uint64_t sub_2530E6484(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    result = type metadata accessor for RelationshipObserver.State.ChangeState();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2530E658C(uint64_t a1)
{
  result = type metadata accessor for AnyModelStateChange(319);
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    result = type metadata accessor for RelationshipResolver();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2530E6604(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_253148944() - 8) + 64);
  if ((v6 + 1) > 0x28)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 40;
  }

  v8 = *(*(a3 + 16) - 8);
  if (((*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 40 <= v7 + 1)
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = ((*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_29;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 254) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v14 < 2)
    {
LABEL_29:
      v16 = *(a1 + v9);
      if (v16 >= 2)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_29;
  }

LABEL_18:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + 255;
}

void sub_2530E6780(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_253148944() - 8) + 64);
  if ((v8 + 1) > 0x28)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 40;
  }

  v10 = *(*(a4 + 16) - 8);
  if (((*(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 40 <= v9 + 1)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = ((*(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  }

  v12 = v11 + 1;
  if (a3 < 0xFF)
  {
    v13 = 0;
  }

  else if (v12 <= 3)
  {
    v16 = ((a3 + ~(-1 << (8 * v12)) - 254) >> (8 * v12)) + 1;
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

  if (a2 > 0xFE)
  {
    v14 = a2 - 255;
    if (v12 >= 4)
    {
      bzero(a1, v11 + 1);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v15 = (v14 >> (8 * v12)) + 1;
    if (v11 != -1)
    {
      v18 = v14 & ~(-1 << (8 * v12));
      bzero(a1, v12);
      if (v12 != 3)
      {
        if (v12 == 2)
        {
          *a1 = v18;
          if (v13 > 1)
          {
LABEL_43:
            if (v13 == 2)
            {
              *&a1[v12] = v15;
            }

            else
            {
              *&a1[v12] = v15;
            }

            return;
          }
        }

        else
        {
          *a1 = v14;
          if (v13 > 1)
          {
            goto LABEL_43;
          }
        }

LABEL_40:
        if (v13)
        {
          a1[v12] = v15;
        }

        return;
      }

      *a1 = v18;
      a1[2] = BYTE2(v18);
    }

    if (v13 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v13 <= 1)
  {
    if (v13)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v11] = -a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v13 == 2)
  {
    *&a1[v12] = 0;
    goto LABEL_28;
  }

  *&a1[v12] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}