uint64_t sub_241E5B3B4()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v3 = sub_241E6D1EC();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = sub_241E6D19C();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(v0 + 2);
  swift_unknownObjectRelease();
  v12 = *(v0 + 6);

  (*(v4 + 8))(&v0[v5], v3);
  (*(v8 + 8))(&v0[v9], v7);
  return swift_deallocObject();
}

uint64_t sub_241E5B59C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_241E5B5AC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_241E5B5BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

double sub_241E5B5F8@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000015;
  *(a1 + 8) = 0x8000000241E70780;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = -1;
  return result;
}

uint64_t sub_241E5B634(uint64_t a1, uint64_t a2)
{
  v4 = sub_241E6D14C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_241E5B6A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_241E6D14C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t get_enum_tag_for_layout_string_18BridgeLiveActivity0bC6ImagesVSg_0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_241E5B7F4(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_241E6D21C();
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v7, a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v8, v9, v7);
}

uint64_t sub_241E5B8E0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_241E6D21C();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_241E5B934()
{
  v0 = sub_241E6D21C();
  __swift_allocate_value_buffer(v0, qword_27EC795D0);
  __swift_project_value_buffer(v0, qword_27EC795D0);
  return sub_241E6D20C();
}

uint64_t sub_241E5B9B4()
{
  v0 = sub_241E6D21C();
  __swift_allocate_value_buffer(v0, qword_27EC795E8);
  __swift_project_value_buffer(v0, qword_27EC795E8);
  return sub_241E6D20C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t Encodable.stringValue.getter()
{
  v0 = *(*(sub_241E6D25C() - 8) + 64);
  MEMORY[0x28223BE20]();
  v1 = *(sub_241E6D0EC() - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v3 = sub_241E6D12C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_241E6D11C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74B20, &qword_241E6D8C0);
  v6 = *(v1 + 72);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_241E6D8B0;
  sub_241E6D0CC();
  sub_241E6D0DC();
  sub_241E5BD18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74B30, &qword_241E6D8C8);
  sub_241E5BD70();
  sub_241E6D31C();
  sub_241E6D0FC();
  v9 = sub_241E6D10C();
  v11 = v10;
  sub_241E6D24C();
  v12 = sub_241E6D23C();
  v14 = v13;
  sub_241E5BE1C(v9, v11);

  if (v14)
  {
    return v12;
  }

  else
  {
    return 4283470;
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_241E5BD18()
{
  result = qword_27EC74B28;
  if (!qword_27EC74B28)
  {
    sub_241E6D0EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74B28);
  }

  return result;
}

unint64_t sub_241E5BD70()
{
  result = qword_27EC74B38;
  if (!qword_27EC74B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC74B30, &qword_241E6D8C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74B38);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_241E5BE1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void *LiveActivitySetupStateProvider.imageMap.getter@<X0>(void *a1@<X8>)
{
  memset(v6, 0, sizeof(v6));
  v7 = 255;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  sub_241E6D080(v3);
  sub_241E6D080(v4);
  LiveActivityImageMap.init(dynamicIslandCompact:dynamicIslandMinimal:dynamicIslandExpanded:lockScreen:)(v3, v6, v4, v6, __src);
  return memcpy(a1, __src, 0x139uLL);
}

void *LiveActivitySetupStateProvider.state.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  (*(a2 + 24))(v7);
  (*(a2 + 16))(v8, a1, a2);
  sub_241E5FCA8(v9);
  sub_241E5FCC0();
  LiveActivitySetupState.init(textMap:imageMap:metadata:shouldSuppressAlert:)(v7, v8, v9, __src);
  return memcpy(a3, __src, 0x1AAuLL);
}

uint64_t sub_241E5BFFC()
{
  type metadata accessor for LiveActivityService();
  result = swift_initStaticObject();
  static LiveActivityService.shared = result;
  return result;
}

uint64_t *LiveActivityService.shared.unsafeMutableAddressor()
{
  if (qword_27EC74E20 != -1)
  {
    swift_once();
  }

  return &static LiveActivityService.shared;
}

uint64_t static LiveActivityService.shared.getter()
{
  type metadata accessor for LiveActivityService();

  return swift_initStaticObject();
}

uint64_t LiveActivityService.start<A>(with:state:)(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v66 = a1;
  v69 = sub_241E6D21C();
  v72 = *(v69 - 8);
  v2 = *(v72 + 64);
  v3 = (MEMORY[0x28223BE20])();
  v70 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v62 = &v57 - v5;
  v6 = sub_241E6D1CC();
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  MEMORY[0x28223BE20](v6);
  v63 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74B40, &qword_241E6D950);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v57 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v60 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v57 - v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v73[0] = AssociatedTypeWitness;
  v73[1] = AssociatedConformanceWitness;
  v73[2] = v21;
  v73[3] = v22;
  v23 = sub_241E6D1EC();
  v67 = *(v23 - 8);
  v68 = v23;
  v24 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23);
  v26 = &v57 - v25;
  v61 = v14;
  v27 = *(v14 + 16);
  v59 = v14 + 16;
  v58 = v27;
  v27(v19, v71, AssociatedTypeWitness);
  sub_241E6D13C();
  v28 = sub_241E6D14C();
  (*(*(v28 - 8) + 56))(v12, 0, 1, v28);
  v57 = v21;
  sub_241E6D1DC();
  sub_241E6D17C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74B48, &qword_241E6D958);
  v29 = sub_241E6D18C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 72);
  v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_241E6D8B0;
  v34 = (v33 + v32);
  *v34 = 0;
  v34[1] = 0;
  v35 = *(v30 + 104);
  (v35)(v33 + v32, *MEMORY[0x277CB9338], v29);
  v36 = (v34 + v31);
  *v36 = 0xD00000000000001DLL;
  v36[1] = 0x8000000241E706F0;
  v35();
  v37 = v26;
  v38 = v63;
  sub_241E6D1AC();
  sub_241E6D1BC();
  v39 = sub_241E6D16C();
  v70 = v37;
  (*(v64 + 8))(v38, v65);

  v40 = sub_241E5B8BC();
  v41 = v69;
  (*(v72 + 16))(v62, v40, v69);
  v42 = v60;
  v58(v60, v71, AssociatedTypeWitness);

  v43 = sub_241E6D1FC();
  v44 = sub_241E6D2FC();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v73[0] = v46;
    *v45 = 136315394;
    v47 = sub_241E6D15C();
    v49 = sub_241E5E5BC(v47, v48, v73);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    v50 = Encodable.stringValue.getter();
    v51 = v42;
    v52 = v50;
    v54 = v53;
    (*(v61 + 8))(v51, AssociatedTypeWitness);
    v55 = sub_241E5E5BC(v52, v54, v73);

    *(v45 + 14) = v55;
    _os_log_impl(&dword_241E5A000, v43, v44, "Live Activity requested %s and content state: %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D03030](v46, -1, -1);
    MEMORY[0x245D03030](v45, -1, -1);
  }

  else
  {

    (*(v61 + 8))(v42, AssociatedTypeWitness);
  }

  (*(v72 + 8))(v62, v41);
  (*(v67 + 8))(v70, v68);
  return v39;
}

uint64_t LiveActivityService.end<A>(activity:with:dismissalPolicy:)(void *a1, uint64_t a2, uint64_t a3)
{
  v106 = a2;
  v107 = a3;
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74B50, &qword_241E6D960);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v108 = &v80[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74B40, &qword_241E6D950);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v96 = &v80[-v10];
  v11 = (v4 + *MEMORY[0x277CB92B0]);
  v13 = *v11;
  v12 = v11[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v99 = v13;
  v100 = v12;
  v17 = swift_getAssociatedConformanceWitness();
  v109[0] = AssociatedTypeWitness;
  v109[1] = AssociatedConformanceWitness;
  v94 = AssociatedConformanceWitness;
  v101 = v16;
  v109[2] = v16;
  v109[3] = v17;
  v92 = v17;
  v18 = sub_241E6D1EC();
  v97 = *(v18 - 8);
  v98 = v18;
  v19 = *(v97 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v95 = &v80[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v93 = v21;
  v22 = MEMORY[0x28223BE20](v20);
  v105 = &v80[-v23];
  v24 = *(AssociatedTypeWitness - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v22);
  v89 = &v80[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v29 = &v80[-v28];
  v30 = sub_241E6D19C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v91 = &v80[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v90 = v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v80[-v35];
  v37 = sub_241E6D21C();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = &v80[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = sub_241E5B8BC();
  v85 = v38;
  v43 = *(v38 + 16);
  v86 = v37;
  v43(v41, v42, v37);
  v103 = v31;
  v104 = v30;
  v44 = *(v31 + 16);
  v88 = v31 + 16;
  v87 = v44;
  v44(v36, v107, v30);
  v45 = *(v24 + 16);
  v45(v29, v106, AssociatedTypeWitness);

  v46 = sub_241E6D1FC();
  v47 = sub_241E6D2FC();
  v102 = a1;

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v84 = v45;
    v49 = v48;
    v83 = swift_slowAlloc();
    v109[0] = v83;
    *v49 = 136315650;
    v82 = v46;
    v50 = sub_241E6D15C();
    v81 = v47;
    v52 = sub_241E5E5BC(v50, v51, v109);

    *(v49 + 4) = v52;
    *(v49 + 12) = 2080;
    sub_241E5EE80();
    v53 = v104;
    v54 = Encodable.stringValue.getter();
    v56 = v55;
    (*(v103 + 8))(v36, v53);
    v57 = sub_241E5E5BC(v54, v56, v109);

    *(v49 + 14) = v57;
    *(v49 + 22) = 2080;
    v58 = Encodable.stringValue.getter();
    v60 = v59;
    (*(v24 + 8))(v29, AssociatedTypeWitness);
    v61 = sub_241E5E5BC(v58, v60, v109);

    *(v49 + 24) = v61;
    v62 = v82;
    _os_log_impl(&dword_241E5A000, v82, v81, "Ending activity: %s with policy: %s and content state: %s", v49, 0x20u);
    v63 = v83;
    swift_arrayDestroy();
    MEMORY[0x245D03030](v63, -1, -1);
    v64 = v49;
    v45 = v84;
    MEMORY[0x245D03030](v64, -1, -1);
  }

  else
  {

    (*(v24 + 8))(v29, AssociatedTypeWitness);
    (*(v103 + 8))(v36, v104);
  }

  (*(v85 + 8))(v41, v86);
  v45(v89, v106, AssociatedTypeWitness);
  v65 = v96;
  sub_241E6D13C();
  v66 = sub_241E6D14C();
  (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
  v67 = v105;
  sub_241E6D1DC();
  v68 = sub_241E6D2DC();
  (*(*(v68 - 8) + 56))(v108, 1, 1, v68);
  v70 = v97;
  v69 = v98;
  v71 = v95;
  (*(v97 + 16))(v95, v67, v98);
  v72 = v91;
  v73 = v104;
  v87(v91, v107, v104);
  v74 = (*(v70 + 80) + 56) & ~*(v70 + 80);
  v75 = v103;
  v76 = (v93 + *(v103 + 80) + v74) & ~*(v103 + 80);
  v77 = swift_allocObject();
  *(v77 + 2) = 0;
  *(v77 + 3) = 0;
  v78 = v100;
  *(v77 + 4) = v99;
  *(v77 + 5) = v78;
  *(v77 + 6) = v102;
  (*(v70 + 32))(&v77[v74], v71, v69);
  (*(v75 + 32))(&v77[v76], v72, v73);

  sub_241E5D6C4(0, 0, v108, &unk_241E6D970, v77);

  return (*(v70 + 8))(v105, v69);
}

uint64_t sub_241E5D27C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = (*a4 + *MEMORY[0x277CB92B0]);
  v8 = *v7;
  v9 = v7[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v6[2] = AssociatedTypeWitness;
  v6[3] = AssociatedConformanceWitness;
  v6[4] = v12;
  v6[5] = v13;
  v6[9] = sub_241E6D1EC();
  v14 = sub_241E6D30C();
  v6[10] = v14;
  v15 = *(v14 - 8);
  v6[11] = v15;
  v16 = *(v15 + 64) + 15;
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241E5D42C, 0, 0);
}

uint64_t sub_241E5D42C()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = *(v2 - 8);
  (*(v3 + 16))(v1, v0[7], v2);
  (*(v3 + 56))(v1, 0, 1, v2);
  v4 = *(MEMORY[0x277CB9290] + 4);
  v10 = (*MEMORY[0x277CB9290] + MEMORY[0x277CB9290]);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_241E5D56C;
  v6 = v0[12];
  v7 = v0[8];
  v8 = v0[6];

  return v10(v6, v7);
}

uint64_t sub_241E5D56C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_241E5D6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74B50, &qword_241E6D960);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_241E5EEFC(a3, v27 - v11);
  v13 = sub_241E6D2DC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_241E5EF6C(v12);
  }

  else
  {
    sub_241E6D2CC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_241E6D2BC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_241E6D26C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_241E5EF6C(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_241E5EF6C(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t LiveActivityService.update<A>(activity:with:alertConfiguration:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = *a1;
  v5 = sub_241E6D21C();
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v7 = *(v6 + 64) + 15;
  v3[11] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74B40, &qword_241E6D950) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v9 = (v4 + *MEMORY[0x277CB92B0]);
  v10 = *v9;
  v11 = v9[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[13] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v3[14] = v13;
  v14 = *(v13 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3[17] = AssociatedConformanceWitness;
  v16 = swift_getAssociatedConformanceWitness();
  v3[18] = v16;
  v17 = swift_getAssociatedConformanceWitness();
  v3[19] = v17;
  v3[2] = AssociatedTypeWitness;
  v3[3] = AssociatedConformanceWitness;
  v3[4] = v16;
  v3[5] = v17;
  v18 = sub_241E6D1EC();
  v3[20] = v18;
  v19 = *(v18 - 8);
  v3[21] = v19;
  v20 = *(v19 + 64) + 15;
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241E5DC2C, 0, 0);
}

uint64_t sub_241E5DC2C()
{
  v50 = v0;
  v40 = v0[18];
  v42 = v0[19];
  v38 = v0[22];
  v39 = v0[17];
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v44 = v5;
  v46 = v0[15];
  v6 = v0[7];
  v7 = *(v0[14] + 16);
  v7(v0[16], v6, v1);
  sub_241E6D13C();
  v8 = sub_241E6D14C();
  (*(*(v8 - 8) + 56))(v2, 0, 1, v8);
  sub_241E6D1DC();
  v9 = sub_241E5B8BC();
  (*(v4 + 16))(v3, v9, v44);
  v7(v46, v6, v1);

  v10 = sub_241E6D1FC();
  v11 = sub_241E6D2FC();

  if (os_log_type_enabled(v10, v11))
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];
    v41 = v0[18];
    v43 = v0[10];
    v45 = v0[9];
    v47 = v0[11];
    v15 = v0[6];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v49 = v17;
    *v16 = 136315394;
    v18 = sub_241E6D15C();
    v20 = sub_241E5E5BC(v18, v19, &v49);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = v12;
    v22 = Encodable.stringValue.getter();
    v24 = v23;
    (*(v13 + 8))(v21, v14);
    v25 = sub_241E5E5BC(v22, v24, &v49);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_241E5A000, v10, v11, "Updating activity: %s with state: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D03030](v17, -1, -1);
    MEMORY[0x245D03030](v16, -1, -1);

    (*(v43 + 8))(v47, v45);
  }

  else
  {
    v27 = v0[14];
    v26 = v0[15];
    v28 = v0[13];
    v30 = v0[10];
    v29 = v0[11];
    v31 = v0[9];

    (*(v27 + 8))(v26, v28);
    (*(v30 + 8))(v29, v31);
  }

  v32 = *(MEMORY[0x277CB92A0] + 4);
  v48 = (*MEMORY[0x277CB92A0] + MEMORY[0x277CB92A0]);
  v33 = swift_task_alloc();
  v0[23] = v33;
  *v33 = v0;
  v33[1] = sub_241E5DF9C;
  v34 = v0[22];
  v35 = v0[8];
  v36 = v0[6];

  return v48(v34, v35);
}

uint64_t sub_241E5DF9C()
{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_241E5E098, 0, 0);
}

uint64_t sub_241E5E098()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[11];
  v3 = v0[12];
  (*(v0[21] + 8))(v0[22], v0[20]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_241E5E24C(uint64_t *a1, void *a2, void (*a3)(uint64_t, void))
{
  swift_beginAccess();
  v6 = *a1;
  a3(v6, *a2);
  return v6;
}

uint64_t sub_241E5E2D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  swift_beginAccess();
  v10 = *a3;
  v11 = *a4;
  *a3 = a1;
  *a4 = a2;
  return a5(v10, v11);
}

uint64_t sub_241E5E3CC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_241E5E4C4;

  return v7(a1);
}

uint64_t sub_241E5E4C4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_241E5E5BC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_241E5E688(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_241E5F238(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_241E5E688(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_241E5E794(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_241E6D35C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_241E5E794(uint64_t a1, unint64_t a2)
{
  v4 = sub_241E5E7E0(a1, a2);
  sub_241E5E910(&unk_285403C20);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_241E5E7E0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_241E5E9FC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_241E6D35C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_241E6D28C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_241E5E9FC(v10, 0);
        result = sub_241E6D32C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_241E5E910(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_241E5EA70(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_241E5E9FC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74B60, &qword_241E6D9E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_241E5EA70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74B60, &qword_241E6D9E8);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_241E5EBB0()
{
  v2 = v0[4];
  v3 = v0[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedConformanceWitness();
  v1[2] = AssociatedTypeWitness;
  v1[3] = AssociatedConformanceWitness;
  v1[4] = v6;
  v1[5] = v7;
  v8 = *(sub_241E6D1EC() - 8);
  v9 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_241E6D19C() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v0[6];
  v14 = swift_task_alloc();
  v1[6] = v14;
  *v14 = v1;
  v14[1] = sub_241E5ED8C;

  return sub_241E5D27C(v14, v15, v16, v13, v0 + v9, v0 + v12);
}

uint64_t sub_241E5ED8C()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_241E5EE80()
{
  result = qword_27EC74B58;
  if (!qword_27EC74B58)
  {
    sub_241E6D19C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74B58);
  }

  return result;
}

uint64_t sub_241E5EEFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74B50, &qword_241E6D960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241E5EF6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74B50, &qword_241E6D960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_241E5EFD4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_241E5F2AC;

  return sub_241E5E3CC(a1, v5);
}

uint64_t sub_241E5F08C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_241E5F144;

  return sub_241E5E3CC(a1, v5);
}

uint64_t sub_241E5F144()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_241E5F238(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t LiveActivitySetupAttributes.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_241E6D14C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LiveActivitySetupAttributes.init(startTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_241E6D14C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_241E5F3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_241E6D46C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_241E5F458(uint64_t a1)
{
  v2 = sub_241E5F68C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241E5F494(uint64_t a1)
{
  v2 = sub_241E5F68C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivitySetupAttributes.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74B68, &qword_241E6DA58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241E5F68C();
  sub_241E6D4EC();
  sub_241E6D14C();
  sub_241E6CACC(&qword_27EC74B70, MEMORY[0x277CC9578]);
  sub_241E6D45C();
  return (*(v3 + 8))(v6, v2);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_241E5F68C()
{
  result = qword_27EC74E40;
  if (!qword_27EC74E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74E40);
  }

  return result;
}

uint64_t LiveActivitySetupAttributes.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_241E6D14C();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74B78, &qword_241E6DA60);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for LiveActivitySetupAttributes();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241E5F68C();
  sub_241E6D4DC();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_241E6CACC(&qword_27EC74B80, MEMORY[0x277CC9578]);
    sub_241E6D3DC();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_241E5F9B4(v14, v17);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t type metadata accessor for LiveActivitySetupAttributes()
{
  result = qword_281505090;
  if (!qword_281505090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241E5F9B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveActivitySetupAttributes();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_241E5FA30(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74B68, &qword_241E6DA58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241E5F68C();
  sub_241E6D4EC();
  sub_241E6D14C();
  sub_241E6CACC(&qword_27EC74B70, MEMORY[0x277CC9578]);
  sub_241E6D45C();
  return (*(v3 + 8))(v6, v2);
}

double sub_241E5FCA8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0x80;
  return result;
}

void *LiveActivitySetupState.init(textMap:imageMap:metadata:shouldSuppressAlert:)@<X0>(_OWORD *a1@<X0>, const void *a2@<X1>, _OWORD *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a1[1];
  v10[0] = *a1;
  v10[1] = v6;
  v7 = a1[3];
  v10[2] = a1[2];
  v10[3] = v7;
  memcpy(&v10[4], a2, 0x139uLL);
  *(&v10[25] + 9) = *(a3 + 25);
  v8 = a3[1];
  v10[24] = *a3;
  v10[25] = v8;
  result = memcpy(a4, v10, 0x1A9uLL);
  a4[425] = 0;
  return result;
}

unint64_t sub_241E5FD44()
{
  v1 = 0x70614D74786574;
  v2 = 0x617461646174656DLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x70614D6567616D69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_241E5FDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_241E65ABC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_241E5FDF8(uint64_t a1)
{
  v2 = sub_241E66838();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241E5FE34(uint64_t a1)
{
  v2 = sub_241E66838();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static LiveActivitySetupState.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v4;
  v5 = *(a1 + 48);
  v19[2] = *(a1 + 32);
  v19[3] = v5;
  v6 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v6;
  v7 = *(a2 + 48);
  v18[2] = *(a2 + 32);
  v18[3] = v7;
  if (!_s18BridgeLiveActivity0bC7TextMapV23__derived_struct_equalsySbAC_ACtFZ_0(v19, v18))
  {
    goto LABEL_5;
  }

  memcpy(__dst, (a1 + 64), 0x139uLL);
  memcpy(v16, (a2 + 64), 0x139uLL);
  if (!_s18BridgeLiveActivity0bC8ImageMapV23__derived_struct_equalsySbAC_ACtFZ_0(__dst, v16))
  {
    goto LABEL_5;
  }

  v8 = *(a1 + 400);
  v14 = *(a1 + 384);
  v15[0] = v8;
  *(v15 + 9) = *(a1 + 409);
  v9 = *(a2 + 400);
  v12 = *(a2 + 384);
  v13[0] = v9;
  *(v13 + 9) = *(a2 + 409);
  if (_s18BridgeLiveActivity0bC8MetadataO21__derived_enum_equalsySbAC_ACtFZ_0(&v14, &v12))
  {
    v10 = *(a1 + 425) ^ *(a2 + 425) ^ 1;
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t LiveActivitySetupState.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74B88, &qword_241E6DA68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241E66838();
  sub_241E6D4EC();
  v10 = v2[1];
  v31[0] = *v2;
  v31[1] = v10;
  v11 = v2[3];
  v13 = *v2;
  v12 = v2[1];
  v31[2] = v2[2];
  v31[3] = v11;
  v26 = v13;
  v27 = v12;
  v14 = v2[3];
  v28 = v2[2];
  v29 = v14;
  v25 = 0;
  sub_241E5FBB4(v31, v23);
  sub_241E6688C();
  v15 = v32;
  sub_241E6D45C();
  if (v15)
  {
    v23[0] = v26;
    v23[1] = v27;
    v23[2] = v28;
    v23[3] = v29;
    sub_241E668E0(v23);
  }

  else
  {
    v24[0] = v26;
    v24[1] = v27;
    v24[2] = v28;
    v24[3] = v29;
    sub_241E668E0(v24);
    memcpy(v30, v2 + 4, 0x139uLL);
    memcpy(v23, v2 + 4, 0x139uLL);
    v22[319] = 1;
    sub_241E5FBF8(v30, v22);
    sub_241E66910();
    sub_241E6D45C();
    memcpy(v22, v23, 0x139uLL);
    sub_241E66964(v22);
    v16 = v2[25];
    v20 = v2[24];
    v21[0] = v16;
    *(v21 + 9) = *(v2 + 409);
    v19[15] = 2;
    sub_241E66994();
    sub_241E6D45C();
    v17 = *(v2 + 425);
    LOBYTE(v20) = 3;
    sub_241E6D43C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t LiveActivitySetupState.hash(into:)()
{
  LiveActivityTextMap.hash(into:)();
  LiveActivityImageMap.hash(into:)();
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);
  v3 = *(v0 + 400);
  v4 = *(v0 + 408);
  v5 = *(v0 + 424);
  if (v5 >> 6)
  {
    if (v5 >> 6 == 1)
    {
      v6 = *(v0 + 416);
      v7 = *(v0 + 392);
      v8 = *(v0 + 400);
      v9 = *(v0 + 408);
      MEMORY[0x245D02D00](2);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = v1;
      }

      else
      {
        v10 = 0;
      }

      MEMORY[0x245D02D20](v10);
      if (v2 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v2;
      }

      MEMORY[0x245D02D20](*&v11);
      if (v3 == 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = v3;
      }

      MEMORY[0x245D02D20](*&v12);
      if (v4 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v4;
      }

      MEMORY[0x245D02D20](*&v13);
      if (v6 == 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v6;
      }

      MEMORY[0x245D02D20](*&v14);
      v15 = v5 & 0x3F;
    }

    else
    {
      v15 = 0;
    }

    MEMORY[0x245D02D00](v15);
  }

  else
  {
    MEMORY[0x245D02D00](1);
    sub_241E6D27C();
    sub_241E6D27C();
  }

  v16 = *(v0 + 425);
  return sub_241E6D4AC();
}

uint64_t LiveActivitySetupState.hashValue.getter()
{
  sub_241E6D48C();
  LiveActivitySetupState.hash(into:)();
  return sub_241E6D4CC();
}

void *LiveActivitySetupState.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_241E669E8(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x1AAuLL);
  }

  return result;
}

void *sub_241E603F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_241E669E8(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x1AAuLL);
  }

  return result;
}

uint64_t sub_241E60454()
{
  sub_241E6D48C();
  LiveActivitySetupState.hash(into:)();
  return sub_241E6D4CC();
}

uint64_t sub_241E60498()
{
  sub_241E6D48C();
  LiveActivitySetupState.hash(into:)();
  return sub_241E6D4CC();
}

uint64_t sub_241E604D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v4;
  v5 = *(a1 + 48);
  v19[2] = *(a1 + 32);
  v19[3] = v5;
  memcpy(__dst, (a1 + 64), 0x139uLL);
  v6 = *(a1 + 400);
  v13 = *(a1 + 384);
  v14[0] = v6;
  *(v14 + 9) = *(a1 + 409);
  v7 = *(a1 + 425);
  v8 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v8;
  v9 = *(a2 + 48);
  v20[2] = *(a2 + 32);
  v20[3] = v9;
  memcpy(v18, (a2 + 64), 0x139uLL);
  v10 = *(a2 + 400);
  v15 = *(a2 + 384);
  v16[0] = v10;
  *(v16 + 9) = *(a2 + 409);
  v11 = *(a2 + 425);
  if (_s18BridgeLiveActivity0bC7TextMapV23__derived_struct_equalsySbAC_ACtFZ_0(v19, v20) && _s18BridgeLiveActivity0bC8ImageMapV23__derived_struct_equalsySbAC_ACtFZ_0(__dst, v18) && _s18BridgeLiveActivity0bC8MetadataO21__derived_enum_equalsySbAC_ACtFZ_0(&v13, &v15))
  {
    return v7 ^ v11 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_241E605D0()
{
  if (*v0)
  {
    result = 0x6150656C646E7562;
  }

  else
  {
    result = 0x6D614E6567616D69;
  }

  *v0;
  return result;
}

uint64_t sub_241E60614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E6567616D69 && a2 == 0xE900000000000065;
  if (v6 || (sub_241E6D46C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6150656C646E7562 && a2 == 0xEA00000000006874)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_241E6D46C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_241E6070C(uint64_t a1)
{
  v2 = sub_241E67040();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241E60748(uint64_t a1)
{
  v2 = sub_241E67040();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_241E60784()
{
  v1 = 1752457584;
  if (*v0 != 1)
  {
    v1 = 0x6D49656C646E7562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D496D6574737973;
  }
}

uint64_t sub_241E607DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_241E66DDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_241E60810(uint64_t a1)
{
  v2 = sub_241E66FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241E6084C(uint64_t a1)
{
  v2 = sub_241E66FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_241E60898(uint64_t a1)
{
  v2 = sub_241E67094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241E608D4(uint64_t a1)
{
  v2 = sub_241E67094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_241E60964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_241E6D46C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_241E60A00(uint64_t a1)
{
  v2 = sub_241E670E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241E60A3C(uint64_t a1)
{
  v2 = sub_241E670E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivityImageSource.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74BA8, &qword_241E6DA70);
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v33 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74BB0, &qword_241E6DA78);
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74BB8, &qword_241E6DA80);
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74BC0, &qword_241E6DA88);
  v36 = *(v15 - 8);
  v37 = v15;
  v16 = *(v36 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241E66FEC();
  sub_241E6D4EC();
  v20 = *v2;
  v21 = v2[1];
  if (*(v2 + 32))
  {
    if (*(v2 + 32) == 1)
    {
      v40 = 1;
      sub_241E67094();
      v22 = v37;
      sub_241E6D3FC();
      sub_241E6D42C();
      (*(v32 + 8))(v10, v7);
      return (*(v36 + 8))(v18, v22);
    }

    else
    {
      v25 = v2[2];
      v26 = v2[3];
      v43 = 2;
      sub_241E67040();
      v27 = v33;
      v28 = v37;
      sub_241E6D3FC();
      v42 = 0;
      v29 = v35;
      v30 = v38;
      sub_241E6D42C();
      if (!v30)
      {
        v41 = 1;
        sub_241E6D42C();
      }

      (*(v34 + 8))(v27, v29);
      return (*(v36 + 8))(v18, v28);
    }
  }

  else
  {
    v39 = 0;
    sub_241E670E8();
    v24 = v37;
    sub_241E6D3FC();
    sub_241E6D42C();
    (*(v31 + 8))(v14, v11);
    return (*(v36 + 8))(v18, v24);
  }
}

uint64_t LiveActivityImageSource.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  if (!*(v0 + 32))
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (*(v0 + 32) == 1)
  {
    v3 = 1;
LABEL_5:
    MEMORY[0x245D02D00](v3);
    goto LABEL_7;
  }

  v5 = v0[2];
  v4 = v0[3];
  MEMORY[0x245D02D00](2);
  sub_241E6D27C();
LABEL_7:

  return sub_241E6D27C();
}

uint64_t LiveActivityImageSource.hashValue.getter()
{
  sub_241E6D48C();
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 32))
  {
    if (*(v0 + 32) != 1)
    {
      v5 = v0[2];
      v4 = v0[3];
      MEMORY[0x245D02D00](2);
      sub_241E6D27C();
      goto LABEL_7;
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x245D02D00](v3);
LABEL_7:
  sub_241E6D27C();
  return sub_241E6D4CC();
}

double LiveActivityImageSource.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_241E6713C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_241E61098@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_241E6713C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_241E610F8()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_241E6D48C();
  if (v5)
  {
    if (v5 != 1)
    {
      MEMORY[0x245D02D00](2);
      sub_241E6D27C();
      goto LABEL_7;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x245D02D00](v6);
LABEL_7:
  sub_241E6D27C();
  return sub_241E6D4CC();
}

uint64_t sub_241E611AC()
{
  v2 = *v0;
  v1 = v0[1];
  if (!*(v0 + 32))
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (*(v0 + 32) == 1)
  {
    v3 = 1;
LABEL_5:
    MEMORY[0x245D02D00](v3);
    goto LABEL_7;
  }

  v5 = v0[2];
  v4 = v0[3];
  MEMORY[0x245D02D00](2);
  sub_241E6D27C();
LABEL_7:

  return sub_241E6D27C();
}

uint64_t sub_241E61250()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_241E6D48C();
  if (v5)
  {
    if (v5 != 1)
    {
      MEMORY[0x245D02D00](2);
      sub_241E6D27C();
      goto LABEL_7;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x245D02D00](v6);
LABEL_7:
  sub_241E6D27C();
  return sub_241E6D4CC();
}

uint64_t sub_241E61300(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s18BridgeLiveActivity0bC11ImageSourceO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

void static LiveActivityImageSource.systemAppleWatchSFSymbol.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000015;
  *(a1 + 8) = 0x8000000241E70780;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

double static LiveActivityImageSource.systemXCircleSFSymbol.getter@<D0>(uint64_t a1@<X8>)
{
  result = 3.68119924e180;
  *a1 = xmmword_241E6DA20;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

__n128 LiveActivityImages.init(leadingImageSource:trailingImageSource:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5[0] = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *&v5[8] = *a2;
  *&v5[24] = *(a2 + 16);
  v5[40] = *(a2 + 32);
  *(a3 + 57) = *&v5[25];
  *(a3 + 32) = *v5;
  *(a3 + 48) = *&v5[16];
  *a3 = result;
  *(a3 + 16) = v4;
  return result;
}

void *LiveActivityImageMap.init(dynamicIslandCompact:dynamicIslandMinimal:dynamicIslandExpanded:lockScreen:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, void *a5@<X8>)
{
  v5 = a1[3];
  v14[2] = a1[2];
  v14[3] = v5;
  *(&v14[3] + 9) = *(a1 + 57);
  v6 = a1[1];
  v14[0] = *a1;
  v14[1] = v6;
  v7 = a2[3];
  v14[7] = a2[2];
  v14[8] = v7;
  *(&v14[8] + 9) = *(a2 + 57);
  v8 = a2[1];
  v14[5] = *a2;
  v14[6] = v8;
  *(&v14[13] + 9) = *(a3 + 57);
  v9 = a3[3];
  v14[12] = a3[2];
  v14[13] = v9;
  v10 = a3[1];
  v14[10] = *a3;
  v14[11] = v10;
  *(&v14[18] + 9) = *(a4 + 57);
  v11 = a4[3];
  v14[17] = a4[2];
  v14[18] = v11;
  v12 = a4[1];
  v14[15] = *a4;
  v14[16] = v12;
  return memcpy(a5, v14, 0x139uLL);
}

double LiveActivityImageMap.init(imageName:bundlePath:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  if (!a4)
  {
    v10 = [objc_opt_self() mainBundle];
    v11 = [v10 bundlePath];

    a3 = sub_241E6D22C();
    v5 = v12;
  }

  *a5 = 0xD000000000000015;
  *(a5 + 8) = 0x8000000241E70780;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  result = 0.0;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = -1;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 255;
  *(a5 + 120) = 0u;
  *(a5 + 136) = 0u;
  *(a5 + 152) = 0;
  *(a5 + 160) = 0xD000000000000015;
  *(a5 + 168) = 0x8000000241E70780;
  *(a5 + 192) = 0;
  *(a5 + 176) = 0;
  *(a5 + 184) = 0;
  *(a5 + 216) = 0u;
  *(a5 + 200) = 0u;
  *(a5 + 232) = -1;
  *(a5 + 240) = a1;
  *(a5 + 248) = a2;
  *(a5 + 256) = a3;
  *(a5 + 264) = v5;
  *(a5 + 272) = 2;
  *(a5 + 280) = 0u;
  *(a5 + 296) = 0u;
  *(a5 + 312) = -1;
  return result;
}

double LiveActivityImageMap.init(imagePath:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0xD000000000000015;
  *(a3 + 8) = 0x8000000241E70780;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  result = 0.0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = -1;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 255;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0xD000000000000015;
  *(a3 + 168) = 0x8000000241E70780;
  *(a3 + 192) = 0;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 216) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 232) = -1;
  *(a3 + 240) = a1;
  *(a3 + 248) = a2;
  *(a3 + 256) = 0;
  *(a3 + 264) = 0;
  *(a3 + 272) = 1;
  *(a3 + 280) = 0u;
  *(a3 + 296) = 0u;
  *(a3 + 312) = -1;
  return result;
}

__n128 LiveActivityImageMap.subscript.getter@<Q0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 > 1u)
  {
    if (a1 == 2 || (v4 = *(v2 + 272), v4 == 255))
    {
      v9 = *(v2 + 217);
      v10 = v2[13];
      *v29 = v2[12];
      *&v29[16] = v10;
      *&v29[25] = v9;
      v8 = v2[10];
      v7 = v2[11];
      goto LABEL_8;
    }

    v18 = *(v2 + 273);
    v15 = *(v2 + 296);
    v16 = *(v2 + 280);
    v19 = *(v2 + 277);
    v11 = *(v2 + 312);
    v20 = *(v2 + 279);
    v22 = v2[15];
    v23 = v2[16];
    v27 = v22;
    v28 = v23;
    v29[0] = v4;
    v29[7] = v20;
    *&v29[5] = v19;
    *&v29[1] = v18;
LABEL_11:
    v24 = v16;
    v25 = v15;
    *&v29[8] = v16;
    *&v29[24] = v15;
    v29[40] = v11;
    goto LABEL_12;
  }

  if (a1)
  {
    v4 = *(v2 + 112);
    if (v4 != 255)
    {
      v13 = *(v2 + 113);
      v12 = v2 + 113;
      v14 = *(v12 + 4);
      v11 = *(v12 + 39);
      v15 = *(v12 + 23);
      v16 = *(v12 + 7);
      v17 = *(v12 + 6);
      v22 = *(v12 - 33);
      v23 = *(v12 - 17);
      v27 = v22;
      v28 = v23;
      v29[0] = v4;
      v29[7] = v17;
      *&v29[5] = v14;
      *&v29[1] = v13;
      goto LABEL_11;
    }
  }

  v5 = *(v2 + 57);
  v6 = v2[3];
  *v29 = v2[2];
  *&v29[16] = v6;
  *&v29[25] = v5;
  v8 = *v2;
  v7 = v2[1];
LABEL_8:
  v27 = v8;
  v28 = v7;
  v24 = *&v29[8];
  v25 = *&v29[24];
  v11 = v29[40];
  v22 = v8;
  v23 = v7;
  LOBYTE(v4) = v29[0];
LABEL_12:
  sub_241E678A0(&v27, v26);
  *a2 = v22;
  *(a2 + 16) = v23;
  *(a2 + 32) = v4;
  result = v25;
  *(a2 + 40) = v24;
  *(a2 + 56) = v25;
  *(a2 + 72) = v11;
  return result;
}

unint64_t sub_241E61830()
{
  v1 = 0x657263536B636F6CLL;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000015;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0xD000000000000014;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_241E618C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_241E67AC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_241E618E8(uint64_t a1)
{
  v2 = sub_241E678D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241E61924(uint64_t a1)
{
  v2 = sub_241E678D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivityImageMap.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74BD0, &qword_241E6DA98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241E678D8();
  sub_241E6D4EC();
  v11 = v3[1];
  v12 = v3[3];
  v66 = v3[2];
  v67[0] = v12;
  *(v67 + 9) = *(v3 + 57);
  v13 = v3[1];
  v65[0] = *v3;
  v65[1] = v13;
  v14 = v3[3];
  v54 = v66;
  v55[0] = v14;
  *(v55 + 9) = *(v3 + 57);
  v52 = v65[0];
  v53 = v11;
  v51 = 0;
  sub_241E678A0(v65, v49);
  sub_241E6792C();
  sub_241E6D45C();
  v49[2] = v54;
  *v50 = v55[0];
  *&v50[9] = *(v55 + 9);
  v49[0] = v52;
  v49[1] = v53;
  sub_241E67980(v49);
  if (!v2)
  {
    v15 = v3[6];
    v16 = v3[8];
    v63 = v3[7];
    v64[0] = v16;
    *(v64 + 9) = *(v3 + 137);
    v17 = v3[6];
    v62[0] = v3[5];
    v62[1] = v17;
    v18 = v3[8];
    v47 = v63;
    v48[0] = v18;
    *(v48 + 9) = *(v3 + 137);
    v45 = v62[0];
    v46 = v15;
    v44 = 1;
    sub_241E680A8(v62, v42, &qword_27EC74BC8, &qword_241E6DA90);
    sub_241E6D41C();
    v42[2] = v47;
    *v43 = v48[0];
    *&v43[9] = *(v48 + 9);
    v42[0] = v45;
    v42[1] = v46;
    sub_241E6CFAC(v42, &qword_27EC74BC8, &qword_241E6DA90);
    v20 = v3[11];
    v21 = v3[13];
    v60 = v3[12];
    v61[0] = v21;
    *(v61 + 9) = *(v3 + 217);
    v22 = v3[11];
    v59[0] = v3[10];
    v59[1] = v22;
    v23 = v3[13];
    v40 = v60;
    v41[0] = v23;
    *(v41 + 9) = *(v3 + 217);
    v38 = v59[0];
    v39 = v20;
    v37 = 2;
    sub_241E678A0(v59, v35);
    sub_241E6D45C();
    v35[2] = v40;
    *v36 = v41[0];
    *&v36[9] = *(v41 + 9);
    v35[0] = v38;
    v35[1] = v39;
    sub_241E67980(v35);
    v24 = v3[16];
    v25 = v3[18];
    v57 = v3[17];
    v58[0] = v25;
    *(v58 + 9) = *(v3 + 297);
    v26 = v3[16];
    v56[0] = v3[15];
    v56[1] = v26;
    v27 = v3[18];
    v33 = v57;
    v34[0] = v27;
    *(v34 + 9) = *(v3 + 297);
    v31 = v56[0];
    v32 = v24;
    v30 = 3;
    sub_241E680A8(v56, v28, &qword_27EC74BC8, &qword_241E6DA90);
    sub_241E6D41C();
    v28[2] = v33;
    *v29 = v34[0];
    *&v29[9] = *(v34 + 9);
    v28[0] = v31;
    v28[1] = v32;
    sub_241E6CFAC(v28, &qword_27EC74BC8, &qword_241E6DA90);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t LiveActivityImageMap.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[5];
  v4 = *(v0 + 72);
  if (!*(v0 + 32))
  {
    v5 = 0;
    goto LABEL_5;
  }

  if (*(v0 + 32) == 1)
  {
    v5 = 1;
LABEL_5:
    MEMORY[0x245D02D00](v5);
    goto LABEL_7;
  }

  v46 = v0[5];
  v6 = v0[6];
  v7 = v0[8];
  v8 = v0[7];
  v10 = v0[2];
  v9 = v0[3];
  MEMORY[0x245D02D00](2);
  sub_241E6D27C();
LABEL_7:
  sub_241E6D27C();
  if (v4 == 255)
  {
    sub_241E6D4AC();
    goto LABEL_16;
  }

  sub_241E6D4AC();
  if (v4)
  {
    if (v4 != 1)
    {
      MEMORY[0x245D02D00](2);
      sub_241E6D27C();
      goto LABEL_15;
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x245D02D00](v11);
LABEL_15:
  sub_241E6D27C();
LABEL_16:
  v12 = *(v0 + 112);
  if (v12 == 255)
  {
LABEL_24:
    sub_241E6D4AC();
    goto LABEL_25;
  }

  v13 = v0[12];
  v14 = v0[13];
  v16 = v0[15];
  v15 = v0[16];
  v45 = v0[18];
  v47 = v0[17];
  v17 = *(v0 + 152);
  v19 = v0[10];
  v18 = v0[11];
  sub_241E6D4AC();
  if (!v12)
  {
    v20 = 0;
    goto LABEL_21;
  }

  if (v12 == 1)
  {
    v20 = 1;
LABEL_21:
    MEMORY[0x245D02D00](v20);
    goto LABEL_23;
  }

  MEMORY[0x245D02D00](2);
  sub_241E6D27C();
LABEL_23:
  sub_241E6D27C();
  if (v17 == 255)
  {
    goto LABEL_24;
  }

  sub_241E6D4AC();
  if (!v17)
  {
    v32 = 0;
    goto LABEL_56;
  }

  if (v17 == 1)
  {
    v32 = 1;
LABEL_56:
    MEMORY[0x245D02D00](v32);
    sub_241E6D27C();
    goto LABEL_25;
  }

  MEMORY[0x245D02D00](2);
  sub_241E6D27C();
  sub_241E6D27C();
LABEL_25:
  v22 = v0[20];
  v21 = v0[21];
  v23 = v0[25];
  v24 = *(v0 + 232);
  if (!*(v0 + 192))
  {
    v25 = 0;
    goto LABEL_29;
  }

  if (*(v0 + 192) == 1)
  {
    v25 = 1;
LABEL_29:
    MEMORY[0x245D02D00](v25);
    goto LABEL_31;
  }

  v48 = v0[25];
  v26 = v0[26];
  v27 = v0[28];
  v28 = v0[27];
  v30 = v0[22];
  v29 = v0[23];
  MEMORY[0x245D02D00](2);
  sub_241E6D27C();
LABEL_31:
  sub_241E6D27C();
  if (v24 == 255)
  {
    sub_241E6D4AC();
    goto LABEL_43;
  }

  sub_241E6D4AC();
  if (v24)
  {
    if (v24 != 1)
    {
      MEMORY[0x245D02D00](2);
      sub_241E6D27C();
      goto LABEL_42;
    }

    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  MEMORY[0x245D02D00](v31);
LABEL_42:
  sub_241E6D27C();
LABEL_43:
  v33 = *(v0 + 272);
  if (v33 == 255)
  {
    return sub_241E6D4AC();
  }

  v34 = v0[32];
  v35 = v0[33];
  v37 = v0[35];
  v36 = v0[36];
  v38 = v0[38];
  v49 = v0[37];
  v39 = *(v0 + 312);
  v41 = v0[30];
  v40 = v0[31];
  sub_241E6D4AC();
  if (!v33)
  {
    v42 = 0;
    goto LABEL_48;
  }

  if (v33 == 1)
  {
    v42 = 1;
LABEL_48:
    MEMORY[0x245D02D00](v42);
    goto LABEL_50;
  }

  MEMORY[0x245D02D00](2);
  sub_241E6D27C();
LABEL_50:
  sub_241E6D27C();
  if (v39 == 255)
  {
    return sub_241E6D4AC();
  }

  sub_241E6D4AC();
  if (v39)
  {
    if (v39 != 1)
    {
      MEMORY[0x245D02D00](2);
      sub_241E6D27C();
      goto LABEL_61;
    }

    v44 = 1;
  }

  else
  {
    v44 = 0;
  }

  MEMORY[0x245D02D00](v44);
LABEL_61:

  return sub_241E6D27C();
}

uint64_t LiveActivityImageMap.hashValue.getter()
{
  sub_241E6D48C();
  LiveActivityImageMap.hash(into:)();
  return sub_241E6D4CC();
}

void *LiveActivityImageMap.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_241E67C3C(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x139uLL);
  }

  return result;
}

void *sub_241E62290@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_241E67C3C(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x139uLL);
  }

  return result;
}

uint64_t sub_241E622F4()
{
  sub_241E6D48C();
  LiveActivityImageMap.hash(into:)();
  return sub_241E6D4CC();
}

uint64_t sub_241E62338()
{
  sub_241E6D48C();
  LiveActivityImageMap.hash(into:)();
  return sub_241E6D4CC();
}

BOOL sub_241E62374(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x139uLL);
  memcpy(__dst, a2, 0x139uLL);
  return _s18BridgeLiveActivity0bC8ImageMapV23__derived_struct_equalsySbAC_ACtFZ_0(v4, __dst);
}

unint64_t sub_241E62408()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_241E62440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000241E70820 == a2 || (sub_241E6D46C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000241E70840 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_241E6D46C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_241E62524(uint64_t a1)
{
  v2 = sub_241E68110();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241E62560(uint64_t a1)
{
  v2 = sub_241E68110();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivityImages.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74BE8, &qword_241E6DAA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241E68110();
  sub_241E6D4EC();
  v11 = v3[1];
  v16 = *v3;
  v17 = v11;
  v18 = *(v3 + 32);
  v15 = 0;
  sub_241E68164();
  sub_241E6D45C();
  if (!v2)
  {
    v13 = *(v3 + 56);
    v16 = *(v3 + 40);
    v17 = v13;
    v18 = *(v3 + 72);
    v15 = 1;
    sub_241E6D41C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t LiveActivityImages.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  if (!*(v0 + 32))
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (*(v0 + 32) == 1)
  {
    v3 = 1;
LABEL_5:
    MEMORY[0x245D02D00](v3);
    goto LABEL_7;
  }

  v5 = v0[2];
  v4 = v0[3];
  MEMORY[0x245D02D00](2);
  sub_241E6D27C();
LABEL_7:
  sub_241E6D27C();
  v6 = *(v0 + 72);
  if (v6 == 255)
  {
    return sub_241E6D4AC();
  }

  v8 = v0[7];
  v9 = v0[8];
  v11 = v0[5];
  v10 = v0[6];
  sub_241E6D4AC();
  if (v6)
  {
    if (v6 != 1)
    {
      MEMORY[0x245D02D00](2);
      sub_241E6D27C();
      goto LABEL_15;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x245D02D00](v12);
LABEL_15:

  return sub_241E6D27C();
}

uint64_t LiveActivityImages.hashValue.getter()
{
  sub_241E6D48C();
  v2 = *v0;
  v1 = v0[1];
  if (!*(v0 + 32))
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (*(v0 + 32) == 1)
  {
    v3 = 1;
LABEL_5:
    MEMORY[0x245D02D00](v3);
    goto LABEL_7;
  }

  v5 = v0[2];
  v4 = v0[3];
  MEMORY[0x245D02D00](2);
  sub_241E6D27C();
LABEL_7:
  sub_241E6D27C();
  v6 = *(v0 + 72);
  if (v6 != 255)
  {
    v7 = v0[7];
    v8 = v0[8];
    v10 = v0[5];
    v9 = v0[6];
    sub_241E6D4AC();
    if (v6)
    {
      if (v6 != 1)
      {
        MEMORY[0x245D02D00](2);
        sub_241E6D27C();
        goto LABEL_15;
      }

      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x245D02D00](v11);
LABEL_15:
    sub_241E6D27C();
    return sub_241E6D4CC();
  }

  sub_241E6D4AC();
  return sub_241E6D4CC();
}

__n128 LiveActivityImages.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_241E681B8(a1, v6);
  if (!v2)
  {
    v5 = v7[0];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 57) = *(v7 + 9);
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

__n128 sub_241E62A18@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_241E681B8(a1, v6);
  if (!v2)
  {
    v5 = v7[0];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 57) = *(v7 + 9);
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_241E62A84()
{
  sub_241E6D48C();
  LiveActivityImages.hash(into:)();
  return sub_241E6D4CC();
}

BOOL sub_241E62AC0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return _s18BridgeLiveActivity0bC6ImagesV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9);
}

uint64_t LiveActivityTextMap.dynamicIslandExpanded.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];

  return v1;
}

uint64_t LiveActivityTextMap.lockScreen.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  sub_241E684DC(v1, v2);
  return v1;
}

void __swiftcall LiveActivityTextMap.init(dynamicIslandExpanded:lockScreen:)(BridgeLiveActivity::LiveActivityTextMap *__return_ptr retstr, BridgeLiveActivity::LiveActivityText dynamicIslandExpanded, BridgeLiveActivity::LiveActivityText_optional *lockScreen)
{
  retstr->dynamicIslandExpanded = dynamicIslandExpanded;
  retstr->lockScreen.value.title._countAndFlagsBits = lockScreen;
  retstr->lockScreen.value.title._object = v3;
  retstr->lockScreen.value.subtitle.value._countAndFlagsBits = v4;
  retstr->lockScreen.value.subtitle.value._object = v5;
}

uint64_t LiveActivityTextMap.subscript.getter(unsigned __int8 a1)
{
  if (a1 > 2u && v1[5])
  {
    v2 = v1[6];
    v3 = v1[7];
    v4 = v1[4];
  }

  else
  {
    v4 = *v1;
    v5 = v1[1];
    v6 = v1[2];
    v7 = v1[3];
  }

  return v4;
}

unint64_t sub_241E62C40()
{
  if (*v0)
  {
    result = 0x657263536B636F6CLL;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_241E62C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000241E70800 == a2 || (sub_241E6D46C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x657263536B636F6CLL && a2 == 0xEA00000000006E65)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_241E6D46C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_241E62D74(uint64_t a1)
{
  v2 = sub_241E68520();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241E62DB0(uint64_t a1)
{
  v2 = sub_241E68520();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivityTextMap.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74BF8, &qword_241E6DAB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241E68520();
  sub_241E6D4EC();
  v11 = v3[1];
  v16 = *v3;
  v17 = v11;
  v15 = 0;
  sub_241E68574();
  sub_241E6D45C();
  if (!v2)
  {
    v13 = v3[3];
    v16 = v3[2];
    v17 = v13;
    v15 = 1;
    sub_241E6D41C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t LiveActivityTextMap.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_241E6D27C();
  if (v4)
  {
    sub_241E6D4AC();
    sub_241E6D27C();
    if (!v0[5])
    {
      return sub_241E6D4AC();
    }
  }

  else
  {
    sub_241E6D4AC();
    if (!v0[5])
    {
      return sub_241E6D4AC();
    }
  }

  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  sub_241E6D4AC();
  sub_241E6D27C();
  if (!v6)
  {
    return sub_241E6D4AC();
  }

  sub_241E6D4AC();

  return sub_241E6D27C();
}

uint64_t LiveActivityTextMap.hashValue.getter()
{
  sub_241E6D48C();
  LiveActivityTextMap.hash(into:)();
  return sub_241E6D4CC();
}

double LiveActivityTextMap.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_241E685C8(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

double sub_241E63100@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_241E685C8(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_241E6315C()
{
  sub_241E6D48C();
  LiveActivityTextMap.hash(into:)();
  return sub_241E6D4CC();
}

uint64_t sub_241E631A0()
{
  sub_241E6D48C();
  LiveActivityTextMap.hash(into:)();
  return sub_241E6D4CC();
}

BOOL sub_241E631DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return _s18BridgeLiveActivity0bC7TextMapV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8);
}

uint64_t sub_241E63294()
{
  if (*v0)
  {
    result = 0x656C746974627573;
  }

  else
  {
    result = 0x656C746974;
  }

  *v0;
  return result;
}

uint64_t sub_241E632CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_241E6D46C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_241E6D46C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_241E633A4(uint64_t a1)
{
  v2 = sub_241E68860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241E633E0(uint64_t a1)
{
  v2 = sub_241E68860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivityText.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74C08, &qword_241E6DAB8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241E68860();
  sub_241E6D4EC();
  v16 = 0;
  sub_241E6D42C();
  if (!v5)
  {
    v15 = 1;
    sub_241E6D40C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t LiveActivityText.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_241E6D27C();
  if (!a5)
  {
    return sub_241E6D4AC();
  }

  sub_241E6D4AC();

  return sub_241E6D27C();
}

uint64_t LiveActivityText.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_241E6D48C();
  sub_241E6D27C();
  sub_241E6D4AC();
  if (a4)
  {
    sub_241E6D27C();
  }

  return sub_241E6D4CC();
}

uint64_t sub_241E636DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_241E688B4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_241E6372C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_241E6D48C();
  sub_241E6D27C();
  sub_241E6D4AC();
  if (v4)
  {
    sub_241E6D27C();
  }

  return sub_241E6D4CC();
}

uint64_t sub_241E637B8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_241E6D27C();
  if (!v4)
  {
    return sub_241E6D4AC();
  }

  sub_241E6D4AC();

  return sub_241E6D27C();
}

uint64_t sub_241E63834()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_241E6D48C();
  sub_241E6D27C();
  sub_241E6D4AC();
  if (v4)
  {
    sub_241E6D27C();
  }

  return sub_241E6D4CC();
}

uint64_t sub_241E638D8()
{
  v1 = 0x6C65537473697277;
  if (*v0 != 1)
  {
    v1 = 0x73736572676F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_241E63938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_241E68C90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_241E63960(uint64_t a1)
{
  v2 = sub_241E68A98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241E6399C(uint64_t a1)
{
  v2 = sub_241E68A98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_241E639E4(uint64_t a1)
{
  v2 = sub_241E68C3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241E63A20(uint64_t a1)
{
  v2 = sub_241E68C3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_241E63A5C(uint64_t a1)
{
  v2 = sub_241E68AEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241E63A98(uint64_t a1)
{
  v2 = sub_241E68AEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_241E63AD4()
{
  sub_241E6D48C();
  MEMORY[0x245D02D00](0);
  return sub_241E6D4CC();
}

uint64_t sub_241E63B18()
{
  sub_241E6D48C();
  MEMORY[0x245D02D00](0);
  return sub_241E6D4CC();
}

uint64_t sub_241E63B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_241E6D46C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_241E63BD8(uint64_t a1)
{
  v2 = sub_241E68B94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241E63C14(uint64_t a1)
{
  v2 = sub_241E68B94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static LiveActivityMetadata.WristSelectionMetadata.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_241E6D46C(), result = 0, (v12 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_241E6D46C();
    }
  }

  return result;
}

uint64_t LiveActivityMetadata.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74C10, &qword_241E6DAC0);
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v38 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74C18, &qword_241E6DAC8);
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74C20, &qword_241E6DAD0);
  v34 = *(v11 - 8);
  v35 = v11;
  v12 = *(v34 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74C28, &qword_241E6DAD8);
  v41 = *(v15 - 8);
  v42 = v15;
  v16 = *(v41 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241E68A98();
  sub_241E6D4EC();
  v20 = *v2;
  v21 = v2[1];
  v23 = v2[2];
  v22 = v2[3];
  v24 = *(v2 + 40);
  if (v24 >> 6)
  {
    if (v24 >> 6 == 1)
    {
      v37 = v2[4];
      v25 = v24 & 0x3F;
      LOBYTE(v43) = 2;
      sub_241E68AEC();
      v26 = v38;
      v27 = v42;
      sub_241E6D3FC();
      v43 = v20;
      v44 = v21;
      v45 = v23;
      v46 = v22;
      v47 = v37;
      v48 = v25;
      sub_241E68B40();
      v28 = v40;
      sub_241E6D45C();
      (*(v39 + 8))(v26, v28);
      return (*(v41 + 8))(v18, v27);
    }

    else
    {
      LOBYTE(v43) = 0;
      sub_241E68C3C();
      v32 = v42;
      sub_241E6D3FC();
      (*(v34 + 8))(v14, v35);
      return (*(v41 + 8))(v18, v32);
    }
  }

  else
  {
    LOBYTE(v43) = 1;
    sub_241E68B94();
    v30 = v42;
    sub_241E6D3FC();
    v43 = v20;
    v44 = v21;
    v45 = v23;
    v46 = v22;
    sub_241E68BE8();
    v31 = v37;
    sub_241E6D45C();
    (*(v36 + 8))(v10, v31);
    return (*(v41 + 8))(v18, v30);
  }
}

uint64_t LiveActivityMetadata.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 40);
  if (v5 >> 6)
  {
    if (v5 >> 6 == 1)
    {
      v6 = v0[4];
      v7 = *(v0 + 1);
      v8 = *(v0 + 2);
      v9 = *(v0 + 3);
      MEMORY[0x245D02D00](2);
      if ((*&v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = v1;
      }

      else
      {
        v10 = 0.0;
      }

      MEMORY[0x245D02D20](*&v10);
      if (v2 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v2;
      }

      MEMORY[0x245D02D20](*&v11);
      if (v3 == 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = v3;
      }

      MEMORY[0x245D02D20](*&v12);
      if (v4 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v4;
      }

      MEMORY[0x245D02D20](*&v13);
      if (v6 == 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v6;
      }

      MEMORY[0x245D02D20](*&v14);
      v15 = v5 & 0x3F;
    }

    else
    {
      v15 = 0;
    }

    return MEMORY[0x245D02D00](v15);
  }

  else
  {
    MEMORY[0x245D02D00](1);
    sub_241E6D27C();

    return sub_241E6D27C();
  }
}

uint64_t LiveActivityMetadata.hashValue.getter()
{
  sub_241E6D48C();
  LiveActivityMetadata.hash(into:)();
  return sub_241E6D4CC();
}

double LiveActivityMetadata.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_241E68DB0(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

double sub_241E64310@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_241E68DB0(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_241E6436C()
{
  sub_241E6D48C();
  LiveActivityMetadata.hash(into:)();
  return sub_241E6D4CC();
}

uint64_t sub_241E643B0()
{
  sub_241E6D48C();
  LiveActivityMetadata.hash(into:)();
  return sub_241E6D4CC();
}

BOOL sub_241E643EC(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return _s18BridgeLiveActivity0bC8MetadataO21__derived_enum_equalsySbAC_ACtFZ_0(&v5, &v7);
}

uint64_t sub_241E644A0()
{
  v1 = *v0;
  sub_241E6D48C();
  MEMORY[0x245D02D00](v1);
  return sub_241E6D4CC();
}

uint64_t sub_241E644E8()
{
  v1 = *v0;
  sub_241E6D48C();
  MEMORY[0x245D02D00](v1);
  return sub_241E6D4CC();
}

uint64_t sub_241E6452C()
{
  if (*v0)
  {
    result = 0x7865547468676972;
  }

  else
  {
    result = 0x747865547466656CLL;
  }

  *v0;
  return result;
}

uint64_t sub_241E6456C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x747865547466656CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_241E6D46C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7865547468676972 && a2 == 0xE900000000000074)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_241E6D46C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_241E64650(uint64_t a1)
{
  v2 = sub_241E69450();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241E6468C(uint64_t a1)
{
  v2 = sub_241E69450();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivityMetadata.WristSelectionMetadata.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74C40, &qword_241E6DAE0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241E69450();
  sub_241E6D4EC();
  v16 = 0;
  sub_241E6D42C();
  if (!v5)
  {
    v15 = 1;
    sub_241E6D42C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t LiveActivityMetadata.WristSelectionMetadata.hash(into:)()
{
  sub_241E6D27C();

  return sub_241E6D27C();
}

uint64_t LiveActivityMetadata.WristSelectionMetadata.hashValue.getter()
{
  sub_241E6D48C();
  sub_241E6D27C();
  sub_241E6D27C();
  return sub_241E6D4CC();
}

uint64_t sub_241E64948(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_241E64978@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_241E694A4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_241E649C8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_241E6D48C();
  sub_241E6D27C();
  sub_241E6D27C();
  return sub_241E6D4CC();
}

uint64_t sub_241E64A30()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_241E6D27C();

  return sub_241E6D27C();
}

uint64_t sub_241E64A80()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_241E6D48C();
  sub_241E6D27C();
  sub_241E6D27C();
  return sub_241E6D4CC();
}

uint64_t sub_241E64AE4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_241E6D46C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_241E6D46C();
    }
  }

  return result;
}

double LiveActivityMetadata.ProgressMetadata.positionFactor.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

double LiveActivityMetadata.ProgressMetadata.sizeFactor.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

void __swiftcall LiveActivityMetadata.ProgressMetadata.init(progress:positionFactor:sizeFactor:watchAssetType:)(BridgeLiveActivity::LiveActivityMetadata::ProgressMetadata *__return_ptr retstr, Swift::Double progress, CGPoint positionFactor, CGPoint sizeFactor, BridgeLiveActivity::LiveActivityWatchAssetType watchAssetType)
{
  retstr->progress = progress;
  retstr->positionFactor.x = positionFactor.x;
  retstr->positionFactor.y = positionFactor.y;
  retstr->sizeFactor.x = sizeFactor.x;
  retstr->sizeFactor.y = sizeFactor.y;
  retstr->watchAssetType = watchAssetType;
}

uint64_t sub_241E64BBC()
{
  v1 = 0x73736572676F7270;
  v2 = 0x74636146657A6973;
  if (*v0 != 2)
  {
    v2 = 0x7373416863746177;
  }

  if (*v0)
  {
    v1 = 0x6E6F697469736F70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_241E64C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_241E69780(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_241E64C7C(uint64_t a1)
{
  v2 = sub_241E69688();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241E64CB8(uint64_t a1)
{
  v2 = sub_241E69688();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivityMetadata.ProgressMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74C48, &qword_241E6DAE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241E69688();
  sub_241E6D4EC();
  v11 = *v3;
  LOBYTE(v15) = 0;
  sub_241E6D44C();
  if (!v2)
  {
    v15 = *(v3 + 1);
    v14 = 1;
    type metadata accessor for CGPoint();
    sub_241E6CACC(&qword_27EC74C50, type metadata accessor for CGPoint);
    sub_241E6D45C();
    v15 = *(v3 + 3);
    v14 = 2;
    sub_241E6D45C();
    LOBYTE(v15) = *(v3 + 40);
    v14 = 3;
    sub_241E6972C();
    sub_241E6D45C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t LiveActivityMetadata.ProgressMetadata.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x245D02D20](*&v1);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x245D02D20](*&v2);
  if (v3 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  MEMORY[0x245D02D20](*&v4);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x245D02D20](*&v5);
  if (v6 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v6;
  }

  MEMORY[0x245D02D20](*&v7);
  return MEMORY[0x245D02D00](*(v0 + 40));
}

uint64_t LiveActivityMetadata.ProgressMetadata.hashValue.getter()
{
  sub_241E6D48C();
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x245D02D20](*&v1);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x245D02D20](*&v2);
  if (v3 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  MEMORY[0x245D02D20](*&v4);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x245D02D20](*&v5);
  if (v6 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v6;
  }

  MEMORY[0x245D02D20](*&v7);
  MEMORY[0x245D02D00](*(v0 + 40));
  return sub_241E6D4CC();
}

double LiveActivityMetadata.ProgressMetadata.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_241E698FC(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

double sub_241E650D0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_241E698FC(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_241E65130()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x245D02D20](*&v1);
  sub_241E65A6C(v2, v3);
  sub_241E65A6C(v4, v5);
  return MEMORY[0x245D02D00](v6);
}

uint64_t sub_241E651B8()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  sub_241E6D48C();
  v7 = 0.0;
  if (v2 != 0.0)
  {
    v7 = v2;
  }

  MEMORY[0x245D02D20](*&v7);
  sub_241E65A6C(v1, v3);
  sub_241E65A6C(v4, v5);
  MEMORY[0x245D02D00](v6);
  return sub_241E6D4CC();
}

BOOL sub_241E65258(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return _s18BridgeLiveActivity0bC8MetadataO08ProgressD0V23__derived_struct_equalsySbAE_AEtFZ_0(&v5, &v7);
}

unint64_t sub_241E652B0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s18BridgeLiveActivity0bC9PlacementO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_241E65398(uint64_t a1)
{
  v2 = sub_241E69C50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241E653D4(uint64_t a1)
{
  v2 = sub_241E69C50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_241E65410@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_241E65440(uint64_t a1)
{
  v2 = sub_241E69CA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241E6547C(uint64_t a1)
{
  v2 = sub_241E69CA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_241E654B8(uint64_t a1)
{
  v2 = sub_241E69BFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241E654F4(uint64_t a1)
{
  v2 = sub_241E69BFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_241E65530()
{
  v1 = 0x6576616761;
  if (*v0 != 1)
  {
    v1 = 0x61696E6F7661;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701801057;
  }
}

uint64_t sub_241E6557C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_241E69CF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_241E655A4(uint64_t a1)
{
  v2 = sub_241E69BA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241E655E0(uint64_t a1)
{
  v2 = sub_241E69BA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivityWatchAssetType.encode(to:)(void *a1, int a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74C60, &qword_241E6DAF0);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v27 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74C68, &qword_241E6DAF8);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74C70, &qword_241E6DB00);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74C78, &qword_241E6DB08);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241E69BA8();
  sub_241E6D4EC();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_241E69C50();
      sub_241E6D3FC();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_241E69BFC();
      v21 = v27;
      sub_241E6D3FC();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_241E69CA4();
    sub_241E6D3FC();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

uint64_t LiveActivityWatchAssetType.hashValue.getter(unsigned __int8 a1)
{
  sub_241E6D48C();
  MEMORY[0x245D02D00](a1);
  return sub_241E6D4CC();
}

uint64_t sub_241E65A24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_241E69E08(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_241E65A6C(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x245D02D20](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x245D02D20](*&v3);
}

uint64_t sub_241E65ABC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x70614D74786574 && a2 == 0xE700000000000000;
  if (v4 || (sub_241E6D46C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70614D6567616D69 && a2 == 0xE800000000000000 || (sub_241E6D46C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_241E6D46C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000241E707A0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_241E6D46C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

BOOL _s18BridgeLiveActivity0bC7TextMapV23__derived_struct_equalsySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[3];
  v7 = a2[2];
  v6 = a2[3];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_241E6D46C() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = v4 == v7 && v5 == v6;
    if (!v9 && (sub_241E6D46C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v11 = a1[4];
  v10 = a1[5];
  v12 = a1[6];
  v13 = a1[7];
  v15 = a2[4];
  v14 = a2[5];
  v17 = a2[6];
  v16 = a2[7];
  if (!v10)
  {
    if (!v14)
    {
      return 1;
    }

    goto LABEL_26;
  }

  if (!v14)
  {
LABEL_26:
    sub_241E684DC(v15, v14);
    sub_241E684DC(v11, v10);
    sub_241E6D00C(v11, v10);
    v19 = v15;
    v20 = v14;
LABEL_27:
    sub_241E6D00C(v19, v20);
    return 0;
  }

  if ((v11 != v15 || v10 != v14) && (sub_241E6D46C() & 1) == 0)
  {
LABEL_30:
    sub_241E684DC(v15, v14);
    sub_241E684DC(v11, v10);

    v19 = v11;
    v20 = v10;
    goto LABEL_27;
  }

  if (!v13)
  {
    if (!v16)
    {
      return 1;
    }

    goto LABEL_30;
  }

  if (!v16)
  {
    return 0;
  }

  if (v12 == v17 && v13 == v16)
  {
    sub_241E684DC(v15, v14);
    sub_241E684DC(v11, v10);

    sub_241E6D00C(v11, v10);
    return 1;
  }

  v21 = sub_241E6D46C();
  sub_241E684DC(v15, v14);
  sub_241E684DC(v11, v10);

  sub_241E6D00C(v11, v10);
  return (v21 & 1) != 0;
}

BOOL _s18BridgeLiveActivity0bC6ImagesV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (*(a1 + 32) != 1)
    {
      if (v6 != 2)
      {
        return 0;
      }

      v13 = a1[2];
      v14 = a1[3];
      v15 = a2[2];
      v16 = a2[3];
      if (v3 != v4 || v2 != v5)
      {
        v18 = a1;
        v19 = *a1;
        v20 = a2;
        v21 = sub_241E6D46C();
        a2 = v20;
        v22 = v21;
        a1 = v18;
        if ((v22 & 1) == 0)
        {
          return 0;
        }
      }

      if (v13 != v15 || v14 != v16)
      {
        v23 = a1;
        v24 = a2;
        v25 = sub_241E6D46C();
        a2 = v24;
        v26 = v25;
        a1 = v23;
        if ((v26 & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_21;
    }

    if (v6 != 1)
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if (v3 != v4 || v2 != v5)
  {
    v8 = a1;
    v9 = *a1;
    v10 = a2;
    v11 = sub_241E6D46C();
    a2 = v10;
    v12 = v11;
    a1 = v8;
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_21:
  v28 = a1[5];
  v27 = a1[6];
  v29 = a1[7];
  v30 = a1[8];
  v31 = *(a1 + 72);
  v33 = a2[5];
  v32 = a2[6];
  v34 = a2[7];
  v35 = a2[8];
  v36 = *(a2 + 72);
  if (v31 == 255)
  {
    if (v36 == 255)
    {
      return 1;
    }

LABEL_30:
    sub_241E6CD70(a1[5], v27, v29, v30, v31);
    sub_241E6CD70(v33, v32, v34, v35, v36);
    sub_241E6CDE8(v28, v27, v29, v30, v31);
    sub_241E6CDE8(v33, v32, v34, v35, v36);
    return 0;
  }

  if (v36 == 255)
  {
    goto LABEL_30;
  }

  if (!*(a1 + 72))
  {
    if (*(a2 + 72))
    {
      return 0;
    }

    if (v28 == v33 && v27 == v32)
    {
      return 1;
    }

LABEL_35:
    v38 = a1[5];
    return (sub_241E6D46C() & 1) != 0;
  }

  if (v31 == 1)
  {
    if (v36 != 1)
    {
      return 0;
    }

    if (v28 == v33 && v27 == v32)
    {
      return 1;
    }

    goto LABEL_35;
  }

  if (v36 != 2)
  {
    return 0;
  }

  if (v28 != v33 || v27 != v32)
  {
    v39 = a1[5];
    if ((sub_241E6D46C() & 1) == 0)
    {
      return 0;
    }
  }

  if (v29 != v34 || v30 != v35)
  {
    return (sub_241E6D46C() & 1) != 0;
  }

  return 1;
}

BOOL _s18BridgeLiveActivity0bC8ImageMapV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 48);
  v85[2] = *(a1 + 32);
  v86[0] = v4;
  *(v86 + 9) = *(a1 + 57);
  v5 = *(a1 + 16);
  v85[0] = *a1;
  v85[1] = v5;
  v6 = *a2;
  v7 = a2[1];
  *(v84 + 9) = *(a2 + 57);
  v8 = a2[3];
  v83[2] = a2[2];
  v84[0] = v8;
  v83[0] = v6;
  v83[1] = v7;
  if (!_s18BridgeLiveActivity0bC6ImagesV23__derived_struct_equalsySbAC_ACtFZ_0(v85, v83))
  {
    return 0;
  }

  v9 = *(a1 + 128);
  v81 = *(a1 + 112);
  v82[0] = v9;
  *(v82 + 9) = *(a1 + 137);
  v10 = *(a1 + 96);
  v80[0] = *(a1 + 80);
  v80[1] = v10;
  v11 = a2[8];
  v78 = a2[7];
  v79[0] = v11;
  *(v79 + 9) = *(a2 + 137);
  v12 = a2[6];
  v77[0] = a2[5];
  v77[1] = v12;
  *&v75[7] = v77[0];
  v13 = v81;
  *&v75[23] = v12;
  if (v81 == 0xFF)
  {
    if (v78 == 255)
    {
      v14 = *(a1 + 96);
      v58 = *(a1 + 80);
      v59 = v14;
      *v60 = v81;
      *&v60[8] = *(a1 + 120);
      *&v60[24] = *(a1 + 136);
      v60[40] = *(a1 + 152);
      sub_241E680A8(v80, v95, &qword_27EC74BC8, &qword_241E6DA90);
      sub_241E680A8(v77, v95, &qword_27EC74BC8, &qword_241E6DA90);
      sub_241E6CFAC(&v58, &qword_27EC74BC8, &qword_241E6DA90);
      goto LABEL_9;
    }

LABEL_6:
    v15 = *(a1 + 96);
    v58 = *(a1 + 80);
    v59 = v15;
    *&v60[8] = *(a1 + 120);
    *&v60[24] = *(a1 + 136);
    v61 = *v75;
    *v60 = v81;
    v60[40] = *(a1 + 152);
    *v62 = *&v75[16];
    *&v62[15] = *&v75[31];
    v63 = v78;
    v66 = *(a2 + 152);
    v65 = *(a2 + 136);
    v64 = *(a2 + 120);
    sub_241E680A8(v80, v95, &qword_27EC74BC8, &qword_241E6DA90);
    v16 = v77;
    v17 = v95;
    goto LABEL_7;
  }

  if (v78 == 255)
  {
    goto LABEL_6;
  }

  v19 = a2[6];
  v87 = a2[5];
  v88 = v19;
  *v89 = v78;
  *&v89[8] = *(a2 + 120);
  *&v89[24] = *(a2 + 136);
  v89[40] = *(a2 + 152);
  *(v96 + 9) = *&v89[25];
  v95[2] = *v89;
  v96[0] = *&v89[16];
  v95[0] = v87;
  v95[1] = v19;
  v20 = *(a1 + 96);
  v90[0] = *(a1 + 80);
  v90[1] = v20;
  v21 = *(a1 + 120);
  v22 = *(a1 + 136);
  v94 = *(a1 + 152);
  v93 = v22;
  v92 = v21;
  v91 = v81;
  sub_241E680A8(v80, &v58, &qword_27EC74BC8, &qword_241E6DA90);
  sub_241E680A8(v77, &v58, &qword_27EC74BC8, &qword_241E6DA90);
  v23 = _s18BridgeLiveActivity0bC6ImagesV23__derived_struct_equalsySbAC_ACtFZ_0(v90, v95);
  sub_241E6CFAC(&v87, &qword_27EC74BC8, &qword_241E6DA90);
  v24 = *(a1 + 96);
  v58 = *(a1 + 80);
  v59 = v24;
  *v60 = v13;
  *&v60[8] = *(a1 + 120);
  *&v60[24] = *(a1 + 136);
  v60[40] = *(a1 + 152);
  sub_241E6CFAC(&v58, &qword_27EC74BC8, &qword_241E6DA90);
  if (!v23)
  {
    return 0;
  }

LABEL_9:
  v25 = *(a1 + 208);
  *&v75[32] = *(a1 + 192);
  v76[0] = v25;
  *(v76 + 9) = *(a1 + 217);
  v26 = *(a1 + 176);
  *v75 = *(a1 + 160);
  *&v75[16] = v26;
  v27 = a2[13];
  v73[2] = a2[12];
  v74[0] = v27;
  *(v74 + 9) = *(a2 + 217);
  v28 = a2[11];
  v73[0] = a2[10];
  v73[1] = v28;
  if (!_s18BridgeLiveActivity0bC6ImagesV23__derived_struct_equalsySbAC_ACtFZ_0(v75, v73))
  {
    return 0;
  }

  v29 = (a1 + 240);
  v30 = *(a1 + 288);
  v71 = *(a1 + 272);
  v72[0] = v30;
  v31 = *(a1 + 256);
  v70[0] = *(a1 + 240);
  v70[1] = v31;
  *(v72 + 9) = *(a1 + 297);
  v32 = a2[18];
  v68 = a2[17];
  v69[0] = v32;
  v33 = a2[16];
  v67[0] = a2[15];
  v67[1] = v33;
  *(v69 + 9) = *(a2 + 297);
  v34 = v71;
  v35 = (a1 + 280);
  v36 = (a2 + 280);
  *&v57[7] = v67[0];
  *&v57[23] = v33;
  if (v71 == 0xFF)
  {
    if (v68 == 255)
    {
      v37 = *(a1 + 256);
      v58 = *v29;
      v59 = v37;
      *v60 = v71;
      v38 = *(a1 + 296);
      *&v60[8] = *v35;
      *&v60[24] = v38;
      v60[40] = *(a1 + 312);
      sub_241E680A8(v70, &v87, &qword_27EC74BC8, &qword_241E6DA90);
      sub_241E680A8(v67, &v87, &qword_27EC74BC8, &qword_241E6DA90);
      sub_241E6CFAC(&v58, &qword_27EC74BC8, &qword_241E6DA90);
      return 1;
    }
  }

  else if (v68 != 255)
  {
    v43 = a2[16];
    v50[0] = a2[15];
    v50[1] = v43;
    *v51 = v68;
    v44 = *(a2 + 296);
    *&v51[8] = *v36;
    *&v51[24] = v44;
    v51[40] = *(a2 + 312);
    *&v60[25] = *&v51[25];
    *v60 = *v51;
    *&v60[16] = *&v51[16];
    v58 = v50[0];
    v59 = v43;
    v45 = *(a1 + 256);
    v87 = *v29;
    v88 = v45;
    v46 = *v35;
    v47 = *(a1 + 296);
    v89[40] = *(a1 + 312);
    *&v89[24] = v47;
    *&v89[8] = v46;
    *v89 = v71;
    sub_241E680A8(v70, v52, &qword_27EC74BC8, &qword_241E6DA90);
    sub_241E680A8(v67, v52, &qword_27EC74BC8, &qword_241E6DA90);
    v18 = _s18BridgeLiveActivity0bC6ImagesV23__derived_struct_equalsySbAC_ACtFZ_0(&v87, &v58);
    sub_241E6CFAC(v50, &qword_27EC74BC8, &qword_241E6DA90);
    v48 = *(a1 + 256);
    v52[0] = *v29;
    v52[1] = v48;
    v53 = v34;
    v49 = *(a1 + 296);
    v54 = *v35;
    v55 = v49;
    v56 = *(a1 + 312);
    sub_241E6CFAC(v52, &qword_27EC74BC8, &qword_241E6DA90);
    return v18;
  }

  v40 = *(a1 + 256);
  v58 = *v29;
  v59 = v40;
  v41 = *(a1 + 296);
  *&v60[8] = *v35;
  *&v60[24] = v41;
  v61 = *v57;
  *v62 = *&v57[16];
  v42 = *v36;
  v65 = *(a2 + 296);
  *v60 = v71;
  v60[40] = *(a1 + 312);
  *&v62[15] = *&v57[31];
  v63 = v68;
  v66 = *(a2 + 312);
  v64 = v42;
  sub_241E680A8(v70, &v87, &qword_27EC74BC8, &qword_241E6DA90);
  v16 = v67;
  v17 = &v87;
LABEL_7:
  sub_241E680A8(v16, v17, &qword_27EC74BC8, &qword_241E6DA90);
  sub_241E6CFAC(&v58, &unk_27EC74DF0, &qword_241E70688);
  return 0;
}

BOOL _s18BridgeLiveActivity0bC8MetadataO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 40);
  if (v4 >> 6)
  {
    if (v4 >> 6 == 1)
    {
      v5 = *(a2 + 40);
      if ((v5 & 0xC0) != 0x40 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a2, v2), vceqq_f64(*(a2 + 16), v3)))) & 1) == 0)
      {
        return 0;
      }

      v6 = (v5 ^ v4) & 0x3F;
      if (*(a1 + 32) != *(a2 + 32) || v6 != 0)
      {
        return 0;
      }
    }

    else
    {
      v13 = *(a2 + 40);
      if ((v13 & 0xC0) != 0x80)
      {
        return 0;
      }

      v14 = vorrq_s8(*(a2 + 8), *(a2 + 24));
      v15 = *&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) | *a2;
      if (v13 != 128 || v15 != 0)
      {
        return 0;
      }
    }

    return 1;
  }

  else
  {
    if (*(a2 + 40) > 0x3Fu)
    {
      return 0;
    }

    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = *&v2.f64[0] == *a2 && *&v2.f64[1] == *(a2 + 8);
    result = (v10 || (v17 = *(a1 + 16), v11 = sub_241E6D46C(), v3 = v17, (v11 & 1) != 0)) && (*&v3 == __PAIR128__(v9, v8) || (sub_241E6D46C() & 1) != 0);
  }

  return result;
}

unint64_t sub_241E66838()
{
  result = qword_27EC74E48;
  if (!qword_27EC74E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74E48);
  }

  return result;
}

unint64_t sub_241E6688C()
{
  result = qword_27EC74B90;
  if (!qword_27EC74B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74B90);
  }

  return result;
}

unint64_t sub_241E66910()
{
  result = qword_27EC74B98;
  if (!qword_27EC74B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74B98);
  }

  return result;
}

unint64_t sub_241E66994()
{
  result = qword_27EC74BA0;
  if (!qword_27EC74BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74BA0);
  }

  return result;
}

void *sub_241E669E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74DD0, &qword_241E70680);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_241E66838();
  sub_241E6D4DC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v28);
  }

  v12 = v6;
  v27 = a2;
  v41 = 0;
  sub_241E6CDFC();
  v13 = v5;
  sub_241E6D3DC();
  v38[0] = v34;
  v38[1] = v35;
  v38[2] = v36;
  v38[3] = v37;
  v40 = 1;
  sub_241E6CE50();
  sub_241E6D3DC();
  v14 = v12;
  memcpy(&v38[4], v33, 0x139uLL);
  LOBYTE(v29[0]) = 2;
  sub_241E6CEF0();
  sub_241E6D3DC();
  v25 = v30[2];
  v26 = v30[1];
  v23 = v30[0];
  v24 = v30[3];
  v15 = v30[4];
  v16 = v30[5];
  v39 = 3;
  v17 = sub_241E6D3BC();
  (*(v14 + 8))(v9, v13);
  v17 &= 1u;
  memcpy(v29, v38, 0x180uLL);
  v19 = v23;
  v18 = v24;
  v21 = v25;
  v20 = v26;
  v29[48] = v23;
  v29[49] = v26;
  v29[50] = v25;
  v29[51] = v24;
  v29[52] = v15;
  LOBYTE(v29[53]) = v16;
  BYTE1(v29[53]) = v17;
  sub_241E6CF44(v29, v30);
  __swift_destroy_boxed_opaque_existential_0(v28);
  memcpy(v30, v38, 0x180uLL);
  v30[48] = v19;
  v30[49] = v20;
  v30[50] = v21;
  v30[51] = v18;
  v30[52] = v15;
  v31 = v16;
  v32 = v17;
  sub_241E6CF7C(v30);
  return memcpy(v27, v29, 0x1AAuLL);
}

uint64_t sub_241E66DDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D496D6574737973 && a2 == 0xEB00000000656761;
  if (v4 || (sub_241E6D46C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000 || (sub_241E6D46C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D49656C646E7562 && a2 == 0xEB00000000656761)
  {

    return 2;
  }

  else
  {
    v6 = sub_241E6D46C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t _s18BridgeLiveActivity0bC11ImageSourceO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (!*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (*(a1 + 32) == 1)
  {
    if (*(a2 + 32) == 1)
    {
LABEL_6:
      if (v4 != v6 || v5 != v7)
      {
        goto LABEL_22;
      }

      return 1;
    }

    return 0;
  }

  if (*(a2 + 32) != 2)
  {
    return 0;
  }

  v9 = a1[2];
  v10 = a1[3];
  v11 = a2[2];
  v12 = a2[3];
  v13 = v4 == v6 && v5 == v7;
  if (!v13 && (sub_241E6D46C() & 1) == 0)
  {
    return 0;
  }

  if (v9 == v11 && v10 == v12)
  {
    return 1;
  }

LABEL_22:

  return sub_241E6D46C();
}

unint64_t sub_241E66FEC()
{
  result = qword_27EC74E50;
  if (!qword_27EC74E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74E50);
  }

  return result;
}

unint64_t sub_241E67040()
{
  result = qword_27EC74E58;
  if (!qword_27EC74E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74E58);
  }

  return result;
}

unint64_t sub_241E67094()
{
  result = qword_27EC74E60;
  if (!qword_27EC74E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74E60);
  }

  return result;
}

unint64_t sub_241E670E8()
{
  result = qword_27EC74E68;
  if (!qword_27EC74E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74E68);
  }

  return result;
}

uint64_t sub_241E6713C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74DB0, &qword_241E70660);
  v64 = *(v61 - 8);
  v3 = *(v64 + 64);
  MEMORY[0x28223BE20](v61);
  v66 = &v56 - v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74DB8, &qword_241E70668);
  v63 = *(v65 - 8);
  v5 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v7 = &v56 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74DC0, &qword_241E70670);
  v62 = *(v8 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74DC8, &qword_241E70678);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v56 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_241E66FEC();
  v19 = v68;
  sub_241E6D4DC();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_0(v69);
  }

  v60 = 0;
  v21 = v65;
  v20 = v66;
  v68 = v13;
  v22 = v67;
  v23 = sub_241E6D3EC();
  v24 = *(v23 + 16);
  v25 = v12;
  if (v24)
  {
    v26 = *(v23 + 32);
    if (v24 == 1 && v26 != 3)
    {
      v59 = v23;
      if (v26)
      {
        if (v26 == 1)
        {
          v71 = 1;
          sub_241E67094();
          v32 = v60;
          sub_241E6D36C();
          v33 = v68;
          if (v32)
          {
            (*(v68 + 8))(v16, v25);
            goto LABEL_20;
          }

          v58 = v25;
          v39 = v21;
          v40 = sub_241E6D3AC();
          v41 = 0;
          v48 = v47;
          v57 = v40;
          v60 = 0;
          (*(v63 + 8))(v7, v39);
          (*(v33 + 8))(v16, v58);
          swift_unknownObjectRelease();
          v49 = 0;
          v50 = v48;
LABEL_23:
          result = __swift_destroy_boxed_opaque_existential_0(v69);
          *v22 = v57;
          *(v22 + 8) = v50;
          *(v22 + 16) = v41;
          *(v22 + 24) = v49;
          *(v22 + 32) = v26;
          return result;
        }

        v74 = 2;
        sub_241E67040();
        v37 = v20;
        v34 = v25;
        v38 = v60;
        sub_241E6D36C();
        v36 = v68;
        if (!v38)
        {
          v58 = v25;
          v73 = 0;
          v44 = v61;
          v45 = sub_241E6D3AC();
          v50 = v52;
          v57 = v45;
          v72 = 1;
          v53 = sub_241E6D3AC();
          v54 = v44;
          v60 = 0;
          v41 = v53;
          v49 = v55;
          (*(v64 + 8))(v37, v54);
          (*(v36 + 8))(v16, v58);
          swift_unknownObjectRelease();
          goto LABEL_23;
        }
      }

      else
      {
        v70 = 0;
        sub_241E670E8();
        v34 = v25;
        v35 = v60;
        sub_241E6D36C();
        if (!v35)
        {
          v58 = v25;
          v42 = v8;
          v43 = sub_241E6D3AC();
          v41 = 0;
          v50 = v51;
          v57 = v43;
          v60 = 0;
          (*(v62 + 8))(v11, v42);
          (*(v68 + 8))(v16, v58);
          swift_unknownObjectRelease();
          v49 = 0;
          goto LABEL_23;
        }

        v36 = v68;
      }

      (*(v36 + 8))(v16, v34);
      goto LABEL_20;
    }
  }

  v28 = sub_241E6D34C();
  swift_allocError();
  v30 = v29;
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74D20, &qword_241E70608) + 48);
  *v30 = &type metadata for LiveActivityImageSource;
  sub_241E6D37C();
  sub_241E6D33C();
  (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
  swift_willThrow();
  (*(v68 + 8))(v16, v25);
LABEL_20:
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v69);
}

unint64_t sub_241E678D8()
{
  result = qword_27EC74E70;
  if (!qword_27EC74E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74E70);
  }

  return result;
}

unint64_t sub_241E6792C()
{
  result = qword_27EC74BD8;
  if (!qword_27EC74BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74BD8);
  }

  return result;
}

uint64_t _s18BridgeLiveActivity0bC4TextV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_241E6D46C(), result = 0, (v12 & 1) != 0))
  {
    if (a4)
    {
      if (a8 && (a3 == a7 && a4 == a8 || (sub_241E6D46C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_241E67AC0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x8000000241E707C0 == a2 || (sub_241E6D46C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000241E707E0 == a2 || (sub_241E6D46C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000241E70800 == a2 || (sub_241E6D46C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657263536B636F6CLL && a2 == 0xEA00000000006E65)
  {

    return 3;
  }

  else
  {
    v5 = sub_241E6D46C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_241E67C3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74DA0, &qword_241E70658);
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v37);
  v8 = &v13 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241E678D8();
  sub_241E6D4DC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v5;
  v14 = a2;
  v31 = 0;
  sub_241E6CD1C();
  v11 = v37;
  sub_241E6D3DC();
  v36[2] = v34;
  v36[3] = v35[0];
  *(&v36[3] + 9) = *(v35 + 9);
  v36[0] = v32;
  v36[1] = v33;
  v26 = 1;
  sub_241E6D39C();
  v36[7] = v29;
  v36[8] = *v30;
  *(&v36[8] + 9) = *&v30[9];
  v36[6] = v28;
  v36[5] = v27;
  v21 = 2;
  v13 = 0;
  sub_241E6D3DC();
  v36[12] = v24;
  v36[13] = *v25;
  *(&v36[13] + 9) = *&v25[9];
  v36[11] = v23;
  v36[10] = v22;
  v16[319] = 3;
  sub_241E6D39C();
  (*(v10 + 8))(v8, v11);
  *(&v36[18] + 9) = *&v20[9];
  v36[17] = v19;
  v36[18] = *v20;
  v36[16] = v18;
  v36[15] = v17;
  memcpy(v15, v36, 0x139uLL);
  sub_241E5FBF8(v15, v16);
  __swift_destroy_boxed_opaque_existential_0(a1);
  memcpy(v16, v36, 0x139uLL);
  sub_241E66964(v16);
  return memcpy(v14, v15, 0x139uLL);
}

uint64_t sub_241E680A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_241E68110()
{
  result = qword_27EC74E78;
  if (!qword_27EC74E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74E78);
  }

  return result;
}

unint64_t sub_241E68164()
{
  result = qword_27EC74BF0;
  if (!qword_27EC74BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74BF0);
  }

  return result;
}

uint64_t sub_241E681B8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74D90, &qword_241E70650);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241E68110();
  sub_241E6D4DC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = a2;
  LOBYTE(v28) = 0;
  sub_241E6CC64();
  sub_241E6D3DC();
  v11 = v32;
  v12 = v33;
  v26 = v34;
  v45 = v35;
  v46 = 1;
  sub_241E6D39C();
  (*(v6 + 8))(v9, v5);
  v25 = v41;
  v24 = v42;
  v13 = v43;
  v23 = *(&v42 + 1);
  v14 = v44;
  v15 = v11;
  *&v28 = v11;
  v16 = v12;
  *(&v28 + 1) = v12;
  v17 = v26;
  v29 = v26;
  v18 = *(&v26 + 1);
  LOBYTE(v11) = v45;
  LOBYTE(v30) = v45;
  *(&v30 + 1) = v41;
  *v31 = v42;
  *&v31[16] = v43;
  v31[24] = v44;
  sub_241E678A0(&v28, &v32);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v32 = v15;
  v33 = v16;
  *&v34 = v17;
  *(&v34 + 1) = v18;
  v35 = v11;
  v36 = v25;
  v37 = v24;
  v38 = v23;
  v39 = v13;
  v40 = v14;
  result = sub_241E67980(&v32);
  v20 = *v31;
  v21 = v27;
  v27[2] = v30;
  v21[3] = v20;
  *(v21 + 57) = *&v31[9];
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  return result;
}

uint64_t sub_241E684DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_241E68520()
{
  result = qword_27EC74E80;
  if (!qword_27EC74E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74E80);
  }

  return result;
}

unint64_t sub_241E68574()
{
  result = qword_27EC74C00;
  if (!qword_27EC74C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74C00);
  }

  return result;
}

uint64_t sub_241E685C8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74D80, &qword_241E70648);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241E68520();
  sub_241E6D4DC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = a2;
  LOBYTE(v26) = 0;
  sub_241E6CC10();
  sub_241E6D3DC();
  v11 = v31;
  v24 = v30;
  v12 = v33;
  v23 = v32;
  v39 = 1;
  sub_241E6D39C();
  (*(v6 + 8))(v9, v5);
  v13 = *(&v37 + 1);
  v22 = v37;
  v14 = v38;
  v15 = v24;
  *&v26 = v24;
  *(&v26 + 1) = v11;
  v16 = v23;
  *&v27 = v23;
  *(&v27 + 1) = v12;
  v28 = v37;
  v29 = v38;
  sub_241E5FBB4(&v26, &v30);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v30 = v15;
  v31 = v11;
  v32 = v16;
  v33 = v12;
  v34 = v22;
  v35 = v13;
  v36 = v14;
  result = sub_241E668E0(&v30);
  v18 = v27;
  v19 = v25;
  *v25 = v26;
  v19[1] = v18;
  v20 = v29;
  v19[2] = v28;
  v19[3] = v20;
  return result;
}

unint64_t sub_241E68860()
{
  result = qword_27EC74E88;
  if (!qword_27EC74E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74E88);
  }

  return result;
}

uint64_t sub_241E688B4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74D78, &qword_241E70640);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241E68860();
  sub_241E6D4DC();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_241E6D3AC();
    v11 = 1;
    sub_241E6D38C();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t sub_241E68A98()
{
  result = qword_27EC74E90;
  if (!qword_27EC74E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74E90);
  }

  return result;
}

unint64_t sub_241E68AEC()
{
  result = qword_27EC74E98;
  if (!qword_27EC74E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74E98);
  }

  return result;
}

unint64_t sub_241E68B40()
{
  result = qword_27EC74C30;
  if (!qword_27EC74C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74C30);
  }

  return result;
}

unint64_t sub_241E68B94()
{
  result = qword_27EC74EA0;
  if (!qword_27EC74EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74EA0);
  }

  return result;
}

unint64_t sub_241E68BE8()
{
  result = qword_27EC74C38;
  if (!qword_27EC74C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74C38);
  }

  return result;
}

unint64_t sub_241E68C3C()
{
  result = qword_27EC74EA8;
  if (!qword_27EC74EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74EA8);
  }

  return result;
}

uint64_t sub_241E68C90(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_241E6D46C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65537473697277 && a2 == 0xEE006E6F69746365 || (sub_241E6D46C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_241E6D46C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_241E68DB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74D48, &qword_241E70620);
  v59 = *(v56 - 8);
  v3 = *(v59 + 64);
  MEMORY[0x28223BE20](v56);
  v62 = &v54 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74D50, &qword_241E70628);
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74D58, &qword_241E70630);
  v61 = *(v10 - 8);
  v11 = *(v61 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74D60, &qword_241E70638);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_241E68A98();
  v21 = v63;
  sub_241E6D4DC();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_0(v70);
  }

  v54 = 0;
  v55 = v15;
  v22 = v61;
  v23 = v62;
  v63 = v18;
  v24 = sub_241E6D3EC();
  v25 = *(v24 + 16);
  if (!v25 || ((v26 = *(v24 + 32), v25 == 1) ? (v27 = v26 == 3) : (v27 = 1), v27))
  {
    v28 = sub_241E6D34C();
    swift_allocError();
    v29 = v14;
    v31 = v30;
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74D20, &qword_241E70608) + 48);
    *v31 = &type metadata for LiveActivityMetadata;
    v33 = v63;
    sub_241E6D37C();
    sub_241E6D33C();
    (*(*(v28 - 8) + 104))(v31, *MEMORY[0x277D84160], v28);
    swift_willThrow();
    (*(v55 + 8))(v33, v29);
LABEL_9:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v70);
  }

  if (!*(v24 + 32))
  {
    LOBYTE(v64) = 0;
    sub_241E68C3C();
    v39 = v63;
    v40 = v54;
    sub_241E6D36C();
    if (!v40)
    {
      (*(v22 + 8))(v13, v10);
      (*(v55 + 8))(v39, v14);
      swift_unknownObjectRelease();
      v49 = 0;
      v50 = 0;
      v52 = 0;
      v51 = 0;
      v47 = 0;
      v48 = 0x80;
      v43 = v60;
      goto LABEL_22;
    }

LABEL_16:
    (*(v55 + 8))(v39, v14);
    goto LABEL_9;
  }

  if (v26 != 1)
  {
    LOBYTE(v64) = 2;
    sub_241E68AEC();
    v41 = v23;
    v39 = v63;
    v42 = v54;
    sub_241E6D36C();
    v43 = v60;
    v44 = v55;
    if (!v42)
    {
      sub_241E6CB68();
      v53 = v56;
      sub_241E6D3DC();
      (*(v59 + 8))(v41, v53);
      (*(v44 + 8))(v63, v14);
      swift_unknownObjectRelease();
      v49 = v64;
      v50 = v65;
      v52 = v66;
      v51 = v67;
      v47 = v68;
      v48 = v69 | 0x40;
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  LOBYTE(v64) = 1;
  sub_241E68B94();
  v35 = v9;
  v36 = v63;
  v37 = v54;
  sub_241E6D36C();
  v38 = v55;
  if (v37)
  {
    (*(v55 + 8))(v36, v14);
    goto LABEL_9;
  }

  sub_241E6CBBC();
  v45 = v35;
  v46 = v57;
  sub_241E6D3DC();
  (*(v58 + 8))(v45, v46);
  (*(v38 + 8))(v36, v14);
  swift_unknownObjectRelease();
  v47 = 0;
  v48 = 0;
  v49 = v64;
  v50 = v65;
  v52 = v66;
  v51 = v67;
  v43 = v60;
LABEL_22:
  result = __swift_destroy_boxed_opaque_existential_0(v70);
  *v43 = v49;
  *(v43 + 8) = v50;
  *(v43 + 16) = v52;
  *(v43 + 24) = v51;
  *(v43 + 32) = v47;
  *(v43 + 40) = v48;
  return result;
}

unint64_t sub_241E69450()
{
  result = qword_27EC74EB0;
  if (!qword_27EC74EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74EB0);
  }

  return result;
}

uint64_t sub_241E694A4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74D40, &qword_241E70618);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241E69450();
  sub_241E6D4DC();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_241E6D3AC();
    v11 = 1;
    sub_241E6D3AC();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t sub_241E69688()
{
  result = qword_27EC74EB8;
  if (!qword_27EC74EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74EB8);
  }

  return result;
}

void type metadata accessor for CGPoint()
{
  if (!qword_27EC74CF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EC74CF0);
    }
  }
}

unint64_t sub_241E6972C()
{
  result = qword_27EC74C58;
  if (!qword_27EC74C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74C58);
  }

  return result;
}

uint64_t sub_241E69780(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572676F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_241E6D46C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xEE00726F74636146 || (sub_241E6D46C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74636146657A6973 && a2 == 0xEA0000000000726FLL || (sub_241E6D46C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7373416863746177 && a2 == 0xEE00657079547465)
  {

    return 3;
  }

  else
  {
    v6 = sub_241E6D46C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_241E698FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74D28, &qword_241E70610);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241E69688();
  sub_241E6D4DC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v21) = 0;
  sub_241E6D3CC();
  v12 = v11;
  type metadata accessor for CGPoint();
  v20 = 1;
  sub_241E6CACC(&qword_27EC74D30, type metadata accessor for CGPoint);
  sub_241E6D3DC();
  v13 = v21;
  v14 = v22;
  v20 = 2;
  sub_241E6D3DC();
  v15 = v21;
  v16 = v22;
  v20 = 3;
  sub_241E6CB14();
  sub_241E6D3DC();
  (*(v6 + 8))(v9, v5);
  v17 = v21;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  return result;
}

unint64_t _s18BridgeLiveActivity0bC9PlacementO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_241E69BA8()
{
  result = qword_27EC74EC0;
  if (!qword_27EC74EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74EC0);
  }

  return result;
}

unint64_t sub_241E69BFC()
{
  result = qword_27EC74EC8;
  if (!qword_27EC74EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74EC8);
  }

  return result;
}

unint64_t sub_241E69C50()
{
  result = qword_27EC74ED0;
  if (!qword_27EC74ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74ED0);
  }

  return result;
}

unint64_t sub_241E69CA4()
{
  result = qword_27EC74ED8[0];
  if (!qword_27EC74ED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC74ED8);
  }

  return result;
}

uint64_t sub_241E69CF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701801057 && a2 == 0xE400000000000000;
  if (v3 || (sub_241E6D46C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6576616761 && a2 == 0xE500000000000000 || (sub_241E6D46C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61696E6F7661 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_241E6D46C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_241E69E08(uint64_t *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74D00, &qword_241E705E8);
  v39 = *(v36 - 8);
  v2 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v33 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74D08, &qword_241E705F0);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74D10, &qword_241E705F8);
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74D18, &qword_241E70600);
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241E69BA8();
  v17 = v42;
  sub_241E6D4DC();
  if (v17)
  {
    goto LABEL_14;
  }

  v34 = v8;
  v18 = v40;
  v42 = a1;
  v19 = v15;
  v20 = sub_241E6D3EC();
  v21 = *(v20 + 16);
  if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 3) : (v23 = 1), v23))
  {
    v24 = sub_241E6D34C();
    swift_allocError();
    v26 = v25;
    v27 = v12;
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74D20, &qword_241E70608) + 48);
    *v26 = &type metadata for LiveActivityWatchAssetType;
    sub_241E6D37C();
    sub_241E6D33C();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
    swift_willThrow();
    (*(v41 + 8))(v19, v27);
    swift_unknownObjectRelease();
    a1 = v42;
LABEL_14:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return 0;
  }

  v43 = *(v20 + 32);
  if (!v22)
  {
    v44 = 0;
    sub_241E69CA4();
    v29 = v15;
    sub_241E6D36C();
    (*(v35 + 8))(v11, v34);
    v30 = v41;
    goto LABEL_15;
  }

  if (v22 == 1)
  {
    v45 = 1;
    sub_241E69C50();
    v29 = v15;
    sub_241E6D36C();
    v30 = v41;
    (*(v37 + 8))(v7, v38);
LABEL_15:
    (*(v30 + 8))(v29, v12);
    goto LABEL_16;
  }

  v46 = 2;
  sub_241E69BFC();
  sub_241E6D36C();
  v31 = v41;
  (*(v39 + 8))(v18, v36);
  (*(v31 + 8))(v19, v12);
LABEL_16:
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v42);
  return v43;
}

unint64_t sub_241E6A42C()
{
  result = qword_27EC74C80;
  if (!qword_27EC74C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74C80);
  }

  return result;
}

unint64_t sub_241E6A484()
{
  result = qword_27EC74C88;
  if (!qword_27EC74C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74C88);
  }

  return result;
}

unint64_t sub_241E6A4DC()
{
  result = qword_27EC74C90;
  if (!qword_27EC74C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74C90);
  }

  return result;
}

unint64_t sub_241E6A534()
{
  result = qword_27EC74C98;
  if (!qword_27EC74C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74C98);
  }

  return result;
}

unint64_t sub_241E6A58C()
{
  result = qword_27EC74CA0;
  if (!qword_27EC74CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74CA0);
  }

  return result;
}

unint64_t sub_241E6A5E4()
{
  result = qword_27EC74CA8;
  if (!qword_27EC74CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74CA8);
  }

  return result;
}

unint64_t sub_241E6A63C()
{
  result = qword_27EC74CB0;
  if (!qword_27EC74CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74CB0);
  }

  return result;
}

unint64_t sub_241E6A694()
{
  result = qword_27EC74CB8;
  if (!qword_27EC74CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74CB8);
  }

  return result;
}

unint64_t sub_241E6A6EC()
{
  result = qword_27EC74CC0;
  if (!qword_27EC74CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74CC0);
  }

  return result;
}

unint64_t sub_241E6A744()
{
  result = qword_27EC74CC8;
  if (!qword_27EC74CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74CC8);
  }

  return result;
}

unint64_t sub_241E6A79C()
{
  result = qword_27EC74CD0;
  if (!qword_27EC74CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74CD0);
  }

  return result;
}

unint64_t sub_241E6A7F4()
{
  result = qword_27EC74CD8;
  if (!qword_27EC74CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74CD8);
  }

  return result;
}

unint64_t sub_241E6A84C()
{
  result = qword_27EC74CE0;
  if (!qword_27EC74CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74CE0);
  }

  return result;
}

unint64_t sub_241E6A8A4()
{
  result = qword_27EC74CE8;
  if (!qword_27EC74CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74CE8);
  }

  return result;
}

uint64_t sub_241E6A920()
{
  result = sub_241E6D14C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18BridgeLiveActivity0bC4TextVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_18BridgeLiveActivity0bC8MetadataO(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_241E6A9D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 426))
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

uint64_t sub_241E6AA20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 424) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 426) = 1;
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

    *(result + 426) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_241E6AAF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_241E6AB3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_241E6ABA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 313))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_241E6ABEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
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
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 313) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 313) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_241E6ACB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_241E6AD00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_241E6AD7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_241E6ADC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_241E6AE5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 41))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 40) & 0x3C | (*(a1 + 40) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_241E6AEAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_241E6AF24(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 40) = *(result + 40) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0x80;
  }

  return result;
}

uint64_t sub_241E6AF6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_241E6AFB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_241E6B008(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_241E6B04C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_241E6B124(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_241E6B144(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_241E6B214(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_241E6B2A8(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_241E6B394(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_241E6B428(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_241E6B500(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_241E6B594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s18BridgeLiveActivity23LiveActivityImageSourceO21SystemImageCodingKeysOwet_0(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s18BridgeLiveActivity23LiveActivityImageSourceO21SystemImageCodingKeysOwst_0(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_241E6B73C()
{
  result = qword_27EC76660[0];
  if (!qword_27EC76660[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC76660);
  }

  return result;
}

unint64_t sub_241E6B794()
{
  result = qword_27EC76870[0];
  if (!qword_27EC76870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC76870);
  }

  return result;
}

unint64_t sub_241E6B7EC()
{
  result = qword_27EC76A80[0];
  if (!qword_27EC76A80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC76A80);
  }

  return result;
}

unint64_t sub_241E6B844()
{
  result = qword_27EC76C90[0];
  if (!qword_27EC76C90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC76C90);
  }

  return result;
}

unint64_t sub_241E6B89C()
{
  result = qword_27EC76EA0[0];
  if (!qword_27EC76EA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC76EA0);
  }

  return result;
}

unint64_t sub_241E6B8F4()
{
  result = qword_27EC770B0[0];
  if (!qword_27EC770B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC770B0);
  }

  return result;
}

unint64_t sub_241E6B94C()
{
  result = qword_27EC772C0[0];
  if (!qword_27EC772C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC772C0);
  }

  return result;
}

unint64_t sub_241E6B9A4()
{
  result = qword_27EC774D0[0];
  if (!qword_27EC774D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC774D0);
  }

  return result;
}

unint64_t sub_241E6B9FC()
{
  result = qword_27EC776E0[0];
  if (!qword_27EC776E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC776E0);
  }

  return result;
}

unint64_t sub_241E6BA54()
{
  result = qword_27EC778F0[0];
  if (!qword_27EC778F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC778F0);
  }

  return result;
}

unint64_t sub_241E6BAAC()
{
  result = qword_27EC77B00[0];
  if (!qword_27EC77B00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC77B00);
  }

  return result;
}

unint64_t sub_241E6BB04()
{
  result = qword_27EC77D10[0];
  if (!qword_27EC77D10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC77D10);
  }

  return result;
}

unint64_t sub_241E6BB5C()
{
  result = qword_27EC78020[0];
  if (!qword_27EC78020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC78020);
  }

  return result;
}

unint64_t sub_241E6BBB4()
{
  result = qword_27EC78230[0];
  if (!qword_27EC78230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC78230);
  }

  return result;
}

unint64_t sub_241E6BC0C()
{
  result = qword_27EC78440[0];
  if (!qword_27EC78440[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC78440);
  }

  return result;
}

unint64_t sub_241E6BC64()
{
  result = qword_27EC78950[0];
  if (!qword_27EC78950[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC78950);
  }

  return result;
}

unint64_t sub_241E6BCBC()
{
  result = qword_27EC78A60;
  if (!qword_27EC78A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC78A60);
  }

  return result;
}

unint64_t sub_241E6BD14()
{
  result = qword_27EC78A68[0];
  if (!qword_27EC78A68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC78A68);
  }

  return result;
}

unint64_t sub_241E6BD6C()
{
  result = qword_27EC78AF0;
  if (!qword_27EC78AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC78AF0);
  }

  return result;
}

unint64_t sub_241E6BDC4()
{
  result = qword_27EC78AF8[0];
  if (!qword_27EC78AF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC78AF8);
  }

  return result;
}

unint64_t sub_241E6BE1C()
{
  result = qword_27EC78B80;
  if (!qword_27EC78B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC78B80);
  }

  return result;
}

unint64_t sub_241E6BE74()
{
  result = qword_27EC78B88[0];
  if (!qword_27EC78B88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC78B88);
  }

  return result;
}

unint64_t sub_241E6BECC()
{
  result = qword_27EC78C10;
  if (!qword_27EC78C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC78C10);
  }

  return result;
}

unint64_t sub_241E6BF24()
{
  result = qword_27EC78C18[0];
  if (!qword_27EC78C18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC78C18);
  }

  return result;
}

unint64_t sub_241E6BF7C()
{
  result = qword_27EC78CA0;
  if (!qword_27EC78CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC78CA0);
  }

  return result;
}

unint64_t sub_241E6BFD4()
{
  result = qword_27EC78CA8[0];
  if (!qword_27EC78CA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC78CA8);
  }

  return result;
}

unint64_t sub_241E6C02C()
{
  result = qword_27EC78D30;
  if (!qword_27EC78D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC78D30);
  }

  return result;
}

unint64_t sub_241E6C084()
{
  result = qword_27EC78D38[0];
  if (!qword_27EC78D38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC78D38);
  }

  return result;
}

unint64_t sub_241E6C0DC()
{
  result = qword_27EC78DC0;
  if (!qword_27EC78DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC78DC0);
  }

  return result;
}

unint64_t sub_241E6C134()
{
  result = qword_27EC78DC8[0];
  if (!qword_27EC78DC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC78DC8);
  }

  return result;
}

unint64_t sub_241E6C18C()
{
  result = qword_27EC78E50;
  if (!qword_27EC78E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC78E50);
  }

  return result;
}

unint64_t sub_241E6C1E4()
{
  result = qword_27EC78E58[0];
  if (!qword_27EC78E58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC78E58);
  }

  return result;
}

unint64_t sub_241E6C23C()
{
  result = qword_27EC78EE0;
  if (!qword_27EC78EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC78EE0);
  }

  return result;
}

unint64_t sub_241E6C294()
{
  result = qword_27EC78EE8[0];
  if (!qword_27EC78EE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC78EE8);
  }

  return result;
}

unint64_t sub_241E6C2EC()
{
  result = qword_27EC78F70;
  if (!qword_27EC78F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC78F70);
  }

  return result;
}

unint64_t sub_241E6C344()
{
  result = qword_27EC78F78;
  if (!qword_27EC78F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC78F78);
  }

  return result;
}

unint64_t sub_241E6C39C()
{
  result = qword_27EC79000;
  if (!qword_27EC79000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC79000);
  }

  return result;
}

unint64_t sub_241E6C3F4()
{
  result = qword_27EC79008[0];
  if (!qword_27EC79008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC79008);
  }

  return result;
}

unint64_t sub_241E6C44C()
{
  result = qword_27EC79090;
  if (!qword_27EC79090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC79090);
  }

  return result;
}

unint64_t sub_241E6C4A4()
{
  result = qword_27EC79098[0];
  if (!qword_27EC79098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC79098);
  }

  return result;
}

unint64_t sub_241E6C4FC()
{
  result = qword_27EC79120;
  if (!qword_27EC79120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC79120);
  }

  return result;
}

unint64_t sub_241E6C554()
{
  result = qword_27EC79128[0];
  if (!qword_27EC79128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC79128);
  }

  return result;
}

unint64_t sub_241E6C5AC()
{
  result = qword_27EC791B0;
  if (!qword_27EC791B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC791B0);
  }

  return result;
}

unint64_t sub_241E6C604()
{
  result = qword_27EC791B8[0];
  if (!qword_27EC791B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC791B8);
  }

  return result;
}

unint64_t sub_241E6C65C()
{
  result = qword_27EC79240;
  if (!qword_27EC79240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC79240);
  }

  return result;
}

unint64_t sub_241E6C6B4()
{
  result = qword_27EC79248[0];
  if (!qword_27EC79248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC79248);
  }

  return result;
}

unint64_t sub_241E6C70C()
{
  result = qword_27EC792D0;
  if (!qword_27EC792D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC792D0);
  }

  return result;
}

unint64_t sub_241E6C764()
{
  result = qword_27EC792D8[0];
  if (!qword_27EC792D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC792D8);
  }

  return result;
}

unint64_t sub_241E6C7BC()
{
  result = qword_27EC79360;
  if (!qword_27EC79360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC79360);
  }

  return result;
}

unint64_t sub_241E6C814()
{
  result = qword_27EC79368[0];
  if (!qword_27EC79368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC79368);
  }

  return result;
}

unint64_t sub_241E6C86C()
{
  result = qword_27EC793F0;
  if (!qword_27EC793F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC793F0);
  }

  return result;
}

unint64_t sub_241E6C8C4()
{
  result = qword_27EC793F8[0];
  if (!qword_27EC793F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC793F8);
  }

  return result;
}

unint64_t sub_241E6C91C()
{
  result = qword_27EC79480;
  if (!qword_27EC79480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC79480);
  }

  return result;
}

unint64_t sub_241E6C974()
{
  result = qword_27EC79488[0];
  if (!qword_27EC79488[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC79488);
  }

  return result;
}

unint64_t sub_241E6C9CC()
{
  result = qword_27EC79510;
  if (!qword_27EC79510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC79510);
  }

  return result;
}

unint64_t sub_241E6CA24()
{
  result = qword_27EC79518[0];
  if (!qword_27EC79518[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC79518);
  }

  return result;
}

unint64_t sub_241E6CA78()
{
  result = qword_27EC74CF8;
  if (!qword_27EC74CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74CF8);
  }

  return result;
}

uint64_t sub_241E6CACC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_241E6CB14()
{
  result = qword_27EC74D38;
  if (!qword_27EC74D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74D38);
  }

  return result;
}

unint64_t sub_241E6CB68()
{
  result = qword_27EC74D68;
  if (!qword_27EC74D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74D68);
  }

  return result;
}

unint64_t sub_241E6CBBC()
{
  result = qword_27EC74D70;
  if (!qword_27EC74D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74D70);
  }

  return result;
}

unint64_t sub_241E6CC10()
{
  result = qword_27EC74D88;
  if (!qword_27EC74D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74D88);
  }

  return result;
}

unint64_t sub_241E6CC64()
{
  result = qword_27EC74D98;
  if (!qword_27EC74D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74D98);
  }

  return result;
}

uint64_t sub_241E6CCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 2u)
  {
  }

  if (a5 == 2)
  {
  }

  return result;
}

unint64_t sub_241E6CD1C()
{
  result = qword_27EC74DA8;
  if (!qword_27EC74DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74DA8);
  }

  return result;
}

uint64_t sub_241E6CD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_241E6CD84(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_241E6CD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 2u)
  {
  }

  if (a5 == 2)
  {
  }

  return result;
}

uint64_t sub_241E6CDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_241E6CCB8(a1, a2, a3, a4, a5);
  }

  return a1;
}

unint64_t sub_241E6CDFC()
{
  result = qword_27EC74DD8;
  if (!qword_27EC74DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74DD8);
  }

  return result;
}

unint64_t sub_241E6CE50()
{
  result = qword_27EC74DE0;
  if (!qword_27EC74DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74DE0);
  }

  return result;
}

uint64_t sub_241E6CEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 0x3Fu)
  {
  }

  return result;
}

unint64_t sub_241E6CEF0()
{
  result = qword_27EC74DE8;
  if (!qword_27EC74DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74DE8);
  }

  return result;
}

uint64_t sub_241E6CFAC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_241E6D00C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}