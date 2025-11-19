unint64_t sub_1C5A058F8()
{
  result = qword_1EC193598;
  if (!qword_1EC193598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193598);
  }

  return result;
}

unint64_t sub_1C5A0594C()
{
  result = qword_1EC1935A0;
  if (!qword_1EC1935A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1935A0);
  }

  return result;
}

uint64_t sub_1C5A059A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t ToastManager.__allocating_init()()
{
  v0 = swift_allocObject();
  ToastManager.init()();
  return v0;
}

uint64_t ToastManager.init()()
{
  (*(*(*(*v0 + 80) - 8) + 56))(v0 + *(*v0 + 96), 1, 1);
  *(v0 + *(*v0 + 104)) = 0;
  sub_1C5BC7BA4();
  return v0;
}

uint64_t ToastManager.toast.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1C5A05C24();

  v3 = *(*v1 + 96);
  swift_beginAccess();
  v4 = sub_1C5BCB804();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1C5A05CC4(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 96);
  swift_beginAccess();
  v5 = sub_1C5BCB804();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t ToastManager.post(_:dismissTimeInterval:animated:)(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = v4;
  v85 = a4;
  v84 = a3;
  v77 = *&a2;
  v7 = *(*v5 + 88);
  v8 = *(*v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v97 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v81 = &v77 - v10;
  v11 = sub_1C5BCB804();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v80 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v89 = &v77 - v13;
  v96 = *(v8 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v82 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v77 - v16;
  v88 = sub_1C5BCB804();
  v17 = *(v88 - 8);
  v18 = MEMORY[0x1EEE9AC00](v88);
  v20 = &v77 - v19;
  v90 = v11;
  v94 = *(v11 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v79 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v77 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v77 - v26;
  v83 = a1;
  v91 = v7;
  sub_1C5BCBAA4();
  v28 = *(v97 + 56);
  v92 = AssociatedTypeWitness;
  v93 = v27;
  v29 = AssociatedTypeWitness;
  v30 = v96;
  v28(v27, 0, 1, v29);
  v86 = v5;
  ToastManager.toast.getter(v20);
  v31 = (*(v30 + 48))(v20, 1, v8);
  v87 = v8;
  if (v31)
  {
    (*(v17 + 8))(v20, v88);
    v32 = 1;
  }

  else
  {
    v33 = v78;
    (*(v30 + 16))(v78, v20, v8);
    (*(v17 + 8))(v20, v88);
    sub_1C5BCBAA4();
    (*(v30 + 8))(v33, v8);
    v32 = 0;
  }

  v34 = v25;
  v35 = v92;
  v28(v25, v32, 1, v92);
  v36 = v94;
  v37 = *(TupleTypeMetadata2 + 48);
  v38 = *(v94 + 16);
  v39 = v89;
  v40 = v90;
  v41 = v93;
  v38(v89, v93, v90);
  v88 = v37;
  v38(&v39[v37], v34, v40);
  v42 = *(v97 + 48);
  if (v42(v39, 1, v35) == 1)
  {
    v43 = *(v36 + 8);
    v43(v34, v40);
    v43(v41, v40);
    if (v42(&v39[v88], 1, v35) == 1)
    {
      v43(v39, v40);
      return 0;
    }

    goto LABEL_9;
  }

  v78 = v34;
  v45 = v79;
  v38(v79, v39, v40);
  v46 = v88;
  if (v42(&v39[v88], 1, v35) == 1)
  {
    v47 = *(v94 + 8);
    v47(v78, v40);
    v47(v93, v40);
    (*(v97 + 8))(v45, v35);
LABEL_9:
    (*(v80 + 8))(v39, TupleTypeMetadata2);
    v48 = v96;
    goto LABEL_10;
  }

  v72 = v97;
  v73 = v81;
  (*(v97 + 32))(v81, &v39[v46], v35);
  swift_getAssociatedConformanceWitness();
  v74 = sub_1C5BCADB4();
  v75 = *(v72 + 8);
  v75(v73, v35);
  v76 = *(v94 + 8);
  v76(v78, v40);
  v76(v93, v40);
  v75(v45, v35);
  v76(v39, v40);
  v48 = v96;
  if (v74)
  {
    return 0;
  }

LABEL_10:
  if (qword_1EC1905B0 != -1)
  {
    swift_once();
  }

  v49 = sub_1C5BC7D64();
  __swift_project_value_buffer(v49, qword_1EC1A6A20);
  v50 = v82;
  v51 = v83;
  v52 = v87;
  (*(v48 + 16))(v82, v83, v87);
  v53 = sub_1C5BC7D44();
  v54 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v55 = 136315138;
    v57 = v50;
    sub_1C5BCBAA4();
    v58 = sub_1C5BCAEA4();
    v60 = v59;
    (*(v48 + 8))(v57, v52);
    v61 = sub_1C592ADA8(v58, v60, aBlock);

    *(v55 + 4) = v61;
    _os_log_impl(&dword_1C5922000, v53, v54, "Presenting toast with id=%s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x1C69510F0](v56, -1, -1);
    MEMORY[0x1C69510F0](v55, -1, -1);
  }

  else
  {

    (*(v48 + 8))(v50, v52);
  }

  v62 = v85;
  v63 = v86;
  v64 = [sub_1C5A079D4() invalidate];
  if (v62)
  {
    v64 = sub_1C5BCAB14();
  }

  MEMORY[0x1EEE9AC00](v64);
  *(&v77 - 2) = v63;
  *(&v77 - 1) = v51;
  sub_1C5BC87F4();

  if ((v84 & 1) == 0)
  {
    v65 = v77;
    v66 = objc_opt_self();
    v67 = swift_allocObject();
    swift_weakInit();
    v68 = swift_allocObject();
    v69 = v91;
    *(v68 + 16) = v52;
    *(v68 + 24) = v69;
    *(v68 + 32) = v67;
    *(v68 + 40) = v62 & 1;
    aBlock[4] = sub_1C5A07A78;
    aBlock[5] = v68;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C5A07474;
    aBlock[3] = &block_descriptor_2;
    v70 = _Block_copy(aBlock);

    v71 = [v66 scheduledTimerWithTimeInterval:0 repeats:v70 block:v65];
    _Block_release(v70);
    sub_1C5A074DC(v71);
  }

  return 1;
}

void *sub_1C5A06900()
{
  v0 = sub_1C5A079D4();
  v1 = v0;
  return v0;
}

uint64_t sub_1C5A0692C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 80);
  v4 = sub_1C5BCB804();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *(v3 - 8);
  (*(v8 + 16))(&v10 - v6, a2, v3);
  (*(v8 + 56))(v7, 0, 1, v3);
  sub_1C5A0792C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1C5A06A8C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1C5BCB214();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1C5BCB1E4();

  v13 = sub_1C5BCB1D4();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  *(v14 + 48) = a2;
  *(v14 + 56) = a3;
  sub_1C5AD12A8(0, 0, v11, &unk_1C5BD81C0, v14);
}

uint64_t sub_1C5A06BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 48) = a4;
  *(v6 + 56) = a6;
  *(v6 + 96) = a5;
  *(v6 + 40) = a1;
  v7 = sub_1C5BCB804();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  sub_1C5BCB1E4();
  *(v6 + 88) = sub_1C5BCB1D4();
  v9 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A06CCC, v9, v8);
}

uint64_t sub_1C5A06CCC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    v4 = *(v0 + 64);
    v5 = *(v0 + 96);
    (*(*(*(v0 + 56) - 8) + 56))(v2, 1, 1);
    ToastManager.dismiss(_:animated:)(v2, v5);

    (*(v3 + 8))(v2, v4);
  }

  **(v0 + 40) = Strong == 0;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t ToastManager.dismiss(_:animated:)(uint64_t a1, int a2)
{
  v59 = a1;
  v4 = *(*v2 + 80);
  v58 = *(*v2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v53 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v49[-v7];
  v8 = sub_1C5BCB804();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v49[-v14];
  v16 = *(v4 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v55 = &v49[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v52 = &v49[-v20];
  MEMORY[0x1EEE9AC00](v19);
  v60 = &v49[-v21];
  ToastManager.toast.getter(v15);
  v22 = *(v16 + 48);
  if (v22(v15, 1, v4) == 1)
  {
    return (*(v9 + 8))(v15, v8);
  }

  v50 = a2;
  v51 = v2;
  v24 = v16;
  v25 = *(v16 + 32);
  v25(v60, v15, v4);
  (*(v9 + 16))(v12, v59, v8);
  if (v22(v12, 1, v4) == 1)
  {
    v26 = v24;
    (*(v9 + 8))(v12, v8);
    v27 = v4;
    v28 = v60;
  }

  else
  {
    v29 = v52;
    v25(v52, v12, v4);
    v30 = v56;
    v26 = v24;
    sub_1C5BCBAA4();
    v31 = v53;
    v28 = v60;
    sub_1C5BCBAA4();
    v32 = AssociatedTypeWitness;
    swift_getAssociatedConformanceWitness();
    v33 = sub_1C5BCADB4();
    v34 = *(v54 + 8);
    v34(v31, v32);
    v34(v30, v32);
    v35 = *(v26 + 8);
    v35(v29, v4);
    v27 = v4;
    if ((v33 & 1) == 0)
    {
      return (v35)(v28, v4);
    }
  }

  if (qword_1EC1905B0 != -1)
  {
    swift_once();
  }

  v36 = sub_1C5BC7D64();
  __swift_project_value_buffer(v36, qword_1EC1A6A20);
  v37 = v55;
  (*(v26 + 16))(v55, v28, v27);
  v38 = sub_1C5BC7D44();
  v39 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = v37;
    v59 = swift_slowAlloc();
    v61 = v59;
    *v40 = 136315138;
    sub_1C5BCBAA4();
    v42 = sub_1C5BCAEA4();
    v44 = v43;
    v45 = *(v26 + 8);
    v45(v41, v27);
    v46 = sub_1C592ADA8(v42, v44, &v61);

    *(v40 + 4) = v46;
    _os_log_impl(&dword_1C5922000, v38, v39, "Dismissing toast with id=%s", v40, 0xCu);
    v47 = v59;
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x1C69510F0](v47, -1, -1);
    v28 = v60;
    MEMORY[0x1C69510F0](v40, -1, -1);

    v48 = v45;
  }

  else
  {

    v48 = *(v26 + 8);
    v48(v37, v27);
  }

  [sub_1C5A079D4() invalidate];
  if (v50)
  {
    sub_1C5BCAB14();
  }

  sub_1C5BC87F4();

  return (v48)(v28, v27);
}

void sub_1C5A07474(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1C5A074DC(void *a1)
{
  v3 = *(*v1 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193640);
  sub_1C5A07BDC();
  v4 = sub_1C5BCADB4();
  if (v4)
  {
    v5 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A05D8C();
  }
}

uint64_t sub_1C5A07654(uint64_t a1)
{
  v1 = *(*a1 + 80);
  v2 = sub_1C5BCB804();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  (*(*(v1 - 8) + 56))(&v7 - v4, 1, 1, v1);
  sub_1C5A0792C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ToastManager.deinit()
{
  v1 = *(*v0 + 96);
  v2 = sub_1C5BCB804();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 112);
  v4 = sub_1C5BC7BB4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ToastManager.__deallocating_deinit()
{
  ToastManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C5A078B8()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EC1A6A20);
  __swift_project_value_buffer(v0, qword_1EC1A6A20);
  return sub_1C5BC7D54();
}

uint64_t sub_1C5A0792C()
{
  swift_getKeyPath();
  sub_1C5A05D8C();
}

uint64_t sub_1C5A079D4()
{
  swift_getKeyPath();
  sub_1C5A05C24();

  return *(v0 + *(*v0 + 104));
}

uint64_t sub_1C5A07AA4()
{
  result = sub_1C5BCB804();
  if (v1 <= 0x3F)
  {
    result = sub_1C5BC7BB4();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1C5A07BDC()
{
  result = qword_1EC193648;
  if (!qword_1EC193648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193640);
    sub_1C5A07C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193648);
  }

  return result;
}

unint64_t sub_1C5A07C60()
{
  result = qword_1EC193650;
  if (!qword_1EC193650)
  {
    sub_1C5A07CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193650);
  }

  return result;
}

unint64_t sub_1C5A07CB8()
{
  result = qword_1EC193658;
  if (!qword_1EC193658)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC193658);
  }

  return result;
}

void sub_1C5A07D04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*v1 + 104);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v5 = v2;
}

uint64_t sub_1C5A07D50(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C592ABD4;

  return sub_1C5A06BCC(a1, v5, v6, v7, v8, v4);
}

unint64_t sub_1C5A07E3C()
{
  result = qword_1EC193660;
  if (!qword_1EC193660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193660);
  }

  return result;
}

uint64_t sub_1C5A07EAC()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EC193668);
  __swift_project_value_buffer(v0, qword_1EC193668);
  return sub_1C5BC7D54();
}

uint64_t sub_1C5A07F2C(uint64_t a1)
{
  if (!a1)
  {
    sub_1C5A08844();
    swift_allocError();
    *v15 = 0;
LABEL_13:
    *(v15 + 8) = 2;
    swift_willThrow();
    return v1;
  }

  if (!*(a1 + 16) || (v3 = sub_1C596FBD8(0xD000000000000016, 0x80000001C5BF74C0), (v4 & 1) == 0) || (sub_1C592B32C(*(a1 + 56) + 32 * v3, v64), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193690), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_1EC1905B8 != -1)
    {
      swift_once();
    }

    v9 = sub_1C5BC7D64();
    __swift_project_value_buffer(v9, qword_1EC193668);
    v10 = sub_1C5BC7D44();
    v11 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = 20;
      _os_log_impl(&dword_1C5922000, v10, v11, "Client did not define cache buckets. Will use default indices with capacity = %ld.", v12, 0xCu);
      MEMORY[0x1C69510F0](v12, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193688);
    v1 = swift_allocObject();
    v13 = sub_1C59ADBD0(MEMORY[0x1E69E7CC0]);
    v1[3] = 0;
    v1[4] = 0;
    v1[2] = v13;
    v14 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
    v1[7] = 0;
    v1[8] = 0;
    v1[5] = v14;
    v1[6] = 20;
    return v1;
  }

  v5 = v62;
  v65 = *(v62 + 16);
  if (!v65)
  {

    sub_1C5A08844();
    swift_allocError();
    *v15 = 1;
    goto LABEL_13;
  }

  v61 = a1;
  v6 = MEMORY[0x1E69E7CC0];
  v1 = sub_1C59ADBE4(MEMORY[0x1E69E7CC0]);
  v7 = sub_1C59ADCF4(v6);
  v8 = 0;
  while (1)
  {
    if (v8 >= *(v5 + 16))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      swift_once();
LABEL_41:
      v43 = sub_1C5BC7D64();
      v44 = __swift_project_value_buffer(v43, qword_1EC193668);
      v45 = sub_1C5BC7D44();
      v46 = sub_1C5BCB4F4();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v65 = v44;
        v48 = v47;
        v49 = swift_slowAlloc();
        v64[0] = v49;
        *v48 = 136315138;

        v50 = sub_1C5BCACC4();
        v52 = v51;

        v53 = sub_1C592ADA8(v50, v52, v64);

        *(v48 + 4) = v53;
        _os_log_impl(&dword_1C5922000, v45, v46, "Client defined cache buckets (IDs and maxSizes): %s.", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x1C69510F0](v49, -1, -1);
        MEMORY[0x1C69510F0](v48, -1, -1);
      }

      if (*(v61 + 16) && (v54 = sub_1C596FBD8(0xD000000000000018, 0x80000001C5BF74E0), (v55 & 1) != 0))
      {
        sub_1C592B32C(*(v61 + 56) + 32 * v54, v64);

        if (swift_dynamicCast())
        {

          v56 = sub_1C5BC7D44();
          v57 = sub_1C5BCB4F4();

          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v64[0] = v59;
            *v58 = 136315138;
            *(v58 + 4) = sub_1C592ADA8(v62, v63, v64);
            _os_log_impl(&dword_1C5922000, v56, v57, "Client defined default cache bucket: %s.", v58, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v59);
            MEMORY[0x1C69510F0](v59, -1, -1);
            MEMORY[0x1C69510F0](v58, -1, -1);
          }

          return v1;
        }
      }

      else
      {
      }

      sub_1C5A08844();
      swift_allocError();
      *v60 = 2;
      *(v60 + 8) = 2;
      goto LABEL_51;
    }

    v17 = *(v5 + 8 * v8 + 32);
    v18 = *(v17 + 16);

    if (!v18 || (v19 = sub_1C596FBD8(25705, 0xE200000000000000), (v20 & 1) == 0) || (sub_1C592B32C(*(v17 + 56) + 32 * v19, v64), (swift_dynamicCast() & 1) == 0))
    {

      sub_1C5A08844();
      swift_allocError();
      *v41 = v17;
      *(v41 + 8) = 0;
LABEL_51:
      swift_willThrow();

      return v1;
    }

    if (!*(v17 + 16) || (v21 = sub_1C596FBD8(0x657A695378616DLL, 0xE700000000000000), (v22 & 1) == 0) || (sub_1C592B32C(*(v17 + 56) + 32 * v21, v64), (swift_dynamicCast() & 1) == 0))
    {

      sub_1C5A08844();
      swift_allocError();
      *v42 = v17;
      *(v42 + 8) = 1;
      goto LABEL_51;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193688);
    v23 = swift_allocObject();

    v24 = sub_1C59ADBD0(MEMORY[0x1E69E7CC0]);
    v23[3] = 0;
    v23[4] = 0;
    v23[2] = v24;
    v25 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
    v23[7] = 0;
    v23[8] = 0;
    v23[5] = v25;
    v23[6] = v62;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64[0] = v1;
    sub_1C5B3C2F4(v23, v62, v63, isUniquelyReferenced_nonNull_native);

    v1 = v64[0];
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v64[0] = v7;
    v29 = sub_1C596FBD8(v62, v63);
    v30 = v7;
    v31 = v7[2];
    v32 = (v28 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_54;
    }

    v34 = v28;
    if (v30[3] < v33)
    {
      break;
    }

    if (v27)
    {
      if ((v28 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      sub_1C5AF5258();
      if ((v34 & 1) == 0)
      {
LABEL_31:
        v7 = v64[0];
        *(v64[0] + 8 * (v29 >> 6) + 64) |= 1 << v29;
        v37 = (v7[6] + 16 * v29);
        *v37 = v62;
        v37[1] = v63;
        *(v7[7] + 8 * v29) = v62;
        v38 = v7[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_55;
        }

        v7[2] = v40;
        goto LABEL_16;
      }
    }

LABEL_15:

    v7 = v64[0];
    *(*(v64[0] + 56) + 8 * v29) = v62;
LABEL_16:
    v5 = v62;
    if (v65 == ++v8)
    {

      if (qword_1EC1905B8 == -1)
      {
        goto LABEL_41;
      }

      goto LABEL_56;
    }
  }

  sub_1C5AF2290(v33, v27);
  v35 = sub_1C596FBD8(v62, v63);
  if ((v34 & 1) == (v36 & 1))
  {
    v29 = v35;
    if ((v34 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_15;
  }

  result = sub_1C5BCBE84();
  __break(1u);
  return result;
}

unint64_t sub_1C5A08844()
{
  result = qword_1EC193680;
  if (!qword_1EC193680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193680);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11MediaCoreUI24MotionCacheInfoDictErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1C5A088C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1C5A08910(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C5A08954(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1C5A0897C()
{
  result = sub_1C5BCAAA4();
  qword_1EC1A6A38 = result;
  return result;
}

uint64_t sub_1C5A089BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C5BC8FA4();
  _s16LeadingAccessoryVMa();
  swift_getWitnessTable();
  v27[0] = _s18PlayerControlsViewV15AccessoryButtonVMa();
  v27[1] = _s18PlayerControlsViewV14FlexibleSpacerVMa();
  _s21TransportControlsViewVMa();
  v27[2] = sub_1C5BC8AB4();
  v27[3] = v27[1];
  __src[0] = a5;
  __src[1] = _s17TrailingAccessoryVMa();
  __src[2] = a6;
  __src[3] = swift_getWitnessTable();
  v27[4] = _s18PlayerControlsViewV15AccessoryButtonVMa();
  swift_getTupleTypeMetadata();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA704();
  memcpy(__dst, __src, 0x159uLL);
  sub_1C5BCAA54();
  v15 = sub_1C5BCA714();
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA244();
  memcpy(v23, __dst, 0x159uLL);
  (*(*(v15 - 8) + 8))(v23, v15);
  memcpy(__dst, v27, 0x1D0uLL);
  sub_1C5BCA524();
  v8 = sub_1C5BC8AB4();
  v20 = WitnessTable;
  v21 = MEMORY[0x1E697EBF8];
  v9 = swift_getWitnessTable();
  sub_1C5BC9D84();

  memcpy(v24, __dst, sizeof(v24));
  (*(*(v8 - 8) + 8))(v24, v8);
  memcpy(__dst, __src, 0x1E0uLL);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192C80);
  v10 = sub_1C5BC8AB4();
  v18 = v9;
  v19 = sub_1C5924F54(&qword_1EDA46088, &qword_1EC192C80);
  swift_getWitnessTable();
  sub_1C5BCA304();
  memcpy(v25, __dst, sizeof(v25));
  (*(*(v10 - 8) + 8))(v25, v10);
  memcpy(v17, v27, sizeof(v17));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC193698);
  v11 = sub_1C5BC8AB4();
  sub_1C5924F54(&qword_1EDA46030, qword_1EC193698);
  v12 = swift_getWitnessTable();
  sub_1C593EDC0(v17, v11, v12);
  memcpy(__src, v17, sizeof(__src));
  v13 = *(*(v11 - 8) + 8);
  v13(__src, v11);
  memcpy(v17, __dst, sizeof(v17));
  sub_1C593EDC0(v17, v11, v12);
  memcpy(v27, v17, sizeof(v27));
  return (v13)(v27, v11);
}

uint64_t sub_1C5A08F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v108 = sub_1C59498C4(a3);
  v8 = _s16LeadingAccessoryVMa();
  swift_unknownObjectRetain();
  WitnessTable = swift_getWitnessTable();
  sub_1C5A098F0(&v108, 0xD000000000000021, 0x80000001C5BF7520, v8, &v121);
  v110 = v123;
  v111 = v124;
  LOBYTE(v112) = v125;
  v109 = v122;
  v108 = v121;
  *&v94 = a5;
  *(&v94 + 1) = v8;
  *&v95 = a6;
  *(&v95 + 1) = WitnessTable;
  v10 = _s18PlayerControlsViewV15AccessoryButtonVMa();
  v30 = swift_getWitnessTable();
  sub_1C593EDC0(&v108, v10, v30);
  v84[2] = v110;
  v84[3] = v111;
  v85 = v112;
  v84[0] = v108;
  v84[1] = v109;
  v29 = *(v10 - 8);
  v31 = *(v29 + 8);
  v31(v84, v10);
  *&v121 = swift_getKeyPath();
  BYTE8(v121) = 0;
  v11 = _s18PlayerControlsViewV14FlexibleSpacerVMa();
  v23 = swift_getWitnessTable();
  sub_1C593EDC0(&v121, v11, v23);
  sub_1C5942458(v121, SBYTE8(v121));

  sub_1C5A689C0(&v108);
  sub_1C5BC8FA4();
  v12 = _s21TransportControlsViewVMa();
  v13 = swift_getWitnessTable();
  sub_1C5BC9F04();
  v86[4] = v112;
  v86[5] = v113;
  v87[0] = *v114;
  *(v87 + 10) = *&v114[10];
  v86[0] = v108;
  v86[1] = v109;
  v86[2] = v110;
  v86[3] = v111;
  (*(*(v12 - 8) + 8))(v86, v12);
  *v114 = v127;
  *&v114[16] = v128;
  v115 = v129;
  v116 = v130;
  v110 = v123;
  v111 = v124;
  v112 = v125;
  v113 = v126;
  v108 = v121;
  v109 = v122;
  v14 = sub_1C5BC8AB4();
  v65 = v13;
  v66 = MEMORY[0x1E69805A0];
  v27 = swift_getWitnessTable();
  sub_1C593EDC0(&v108, v14, v27);
  v88[6] = *v114;
  v88[7] = *&v114[16];
  v88[8] = v115;
  v89 = v116;
  v88[2] = v110;
  v88[3] = v111;
  v88[4] = v112;
  v88[5] = v113;
  v88[0] = v108;
  v88[1] = v109;
  v22 = *(v14 - 8);
  v28 = *(v22 + 8);
  v28(v88, v14);
  *&v121 = swift_getKeyPath();
  BYTE8(v121) = 0;
  sub_1C593EDC0(&v121, v11, v23);
  sub_1C5942458(v121, SBYTE8(v121));
  *&v108 = sub_1C59498C4(a3);
  v15 = _s17TrailingAccessoryVMa();
  swift_unknownObjectRetain();
  v16 = swift_getWitnessTable();
  sub_1C5A09A4C(&v108, 0xD000000000000022, 0x80000001C5BF7550, v15, &v121);
  v110 = v123;
  v111 = v124;
  LOBYTE(v112) = v125;
  v109 = v122;
  v108 = v121;
  *&v94 = a5;
  *(&v94 + 1) = v15;
  *&v95 = a6;
  *(&v95 + 1) = v16;
  v17 = _s18PlayerControlsViewV15AccessoryButtonVMa();
  v24 = swift_getWitnessTable();
  sub_1C593EDC0(&v108, v17, v24);
  v90[2] = v110;
  v90[3] = v111;
  v91 = v112;
  v90[1] = v109;
  v90[0] = v108;
  v18 = *(v17 - 8);
  v26 = *(v18 + 8);
  v26(v90, v17);
  v92[2] = v81;
  v92[3] = v82;
  v92[1] = v80;
  v92[0] = v79;
  v54 = v81;
  v55 = v82;
  v52 = v79;
  v53 = v80;
  v95 = v68;
  v94 = v67;
  v99 = v72;
  v98 = v71;
  v97 = v70;
  v96 = v69;
  v102 = v75;
  v101 = v74;
  v100 = v73;
  v46 = v73;
  v47 = v74;
  v48 = v75;
  v93 = v83;
  v56 = v83;
  v19 = v77;
  LOBYTE(a5) = v78;
  v50 = v77;
  v51 = v78;
  v57[0] = &v52;
  v57[1] = &v50;
  v103 = v76;
  v49 = v76;
  v42 = v69;
  v43 = v70;
  v44 = v71;
  v45 = v72;
  v40 = v67;
  v41 = v68;
  v20 = v63;
  LOBYTE(v12) = v64;
  v38 = v63;
  v39 = v64;
  v57[2] = &v40;
  v57[3] = &v38;
  v104[2] = v60;
  v104[3] = v61;
  v105 = v62;
  v104[1] = v59;
  v104[0] = v58;
  v35 = v60;
  v36 = v61;
  v37 = v62;
  v33 = v58;
  v34 = v59;
  v57[4] = &v33;
  (*(v29 + 16))(&v121, v92, v10);
  sub_1C5950E48(v19, a5);
  (*(v22 + 16))(&v121, &v94, v14);
  sub_1C5950E48(v20, v12);
  (*(v18 + 16))(&v121, v104, v17);
  v32[0] = v10;
  v32[1] = v11;
  v32[2] = v14;
  v32[3] = v11;
  v32[4] = v17;
  sub_1C594226C(v57, 5uLL, v32);
  v106[2] = v60;
  v106[3] = v61;
  v107 = v62;
  v106[1] = v59;
  v106[0] = v58;
  v26(v106, v17);
  sub_1C5942458(v63, v64);
  *v114 = v73;
  *&v114[16] = v74;
  v115 = v75;
  v116 = v76;
  v110 = v69;
  v111 = v70;
  v112 = v71;
  v113 = v72;
  v108 = v67;
  v109 = v68;
  v28(&v108, v14);
  sub_1C5942458(v77, v78);
  v117[2] = v81;
  v117[3] = v82;
  v118 = v83;
  v117[1] = v80;
  v117[0] = v79;
  v31(v117, v10);
  v119[2] = v35;
  v119[3] = v36;
  v120 = v37;
  v119[1] = v34;
  v119[0] = v33;
  v26(v119, v17);
  sub_1C5942458(v38, v39);
  v127 = v46;
  v128 = v47;
  v129 = v48;
  v130 = v49;
  v123 = v42;
  v124 = v43;
  v125 = v44;
  v126 = v45;
  v121 = v40;
  v122 = v41;
  v28(&v121, v14);
  sub_1C5942458(v50, v51);
  v131[2] = v54;
  v131[3] = v55;
  v132 = v56;
  v131[0] = v52;
  v131[1] = v53;
  return (v31)(v131, v10);
}

uint64_t sub_1C5A098F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = _s18PlayerControlsViewV15AccessoryButtonVMa();
  v11 = a5 + v10[16];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = *(a4 - 8);
  (*(v12 + 16))(a5, a1, a4);
  v13 = (a5 + v10[13]);
  *v13 = a2;
  v13[1] = a3;
  v14 = sub_1C5BC9144();
  v15 = sub_1C5BC8FA4();
  v16 = (a5 + v10[14]);
  *v16 = v14;
  v16[1] = v15;
  result = (*(v12 + 8))(a1, a4);
  v18 = (a5 + v10[15]);
  *v18 = 0xD000000000000016;
  v18[1] = 0x80000001C5BF75A0;
  return result;
}

uint64_t sub_1C5A09A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = _s18PlayerControlsViewV15AccessoryButtonVMa();
  v11 = a5 + v10[16];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = *(a4 - 8);
  (*(v12 + 16))(a5, a1, a4);
  v13 = (a5 + v10[13]);
  *v13 = a2;
  v13[1] = a3;
  v14 = sub_1C5BC9154();
  v15 = sub_1C5BC8FA4();
  v16 = (a5 + v10[14]);
  *v16 = v14;
  v16[1] = v15;
  result = (*(v12 + 8))(a1, a4);
  v18 = (a5 + v10[15]);
  *v18 = 0xD000000000000017;
  v18[1] = 0x80000001C5BF7580;
  return result;
}

void sub_1C5A09B78()
{
  if (!*(v0 + 18) && (*(v0 + 16) & 1) != 0)
  {
    __break(1u);
  }
}

uint64_t sub_1C5A09BB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v59 = sub_1C5BC89B4();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199E00);
  v41 = a1[3];
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v4 = sub_1C5BC8AB4();
  v5 = a1[5];
  v6 = sub_1C59E7CE0();
  v77 = v5;
  v78 = v6;
  WitnessTable = swift_getWitnessTable();
  v76 = MEMORY[0x1E697E5D8];
  v73 = swift_getWitnessTable();
  v74 = MEMORY[0x1E697E270];
  v51 = v4;
  v52 = swift_getWitnessTable();
  sub_1C5BC8BE4();
  v7 = sub_1C5BC8AB4();
  v55 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v39 - v8;
  v42 = v7;
  v9 = sub_1C5BC8AB4();
  v53 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v39 - v10;
  sub_1C5BC97C4();
  v44 = v9;
  v11 = sub_1C5BC8AB4();
  v54 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v39 - v12;
  v13 = sub_1C5A0BA0C();
  v14 = swift_getWitnessTable();
  v71 = v13;
  v72 = v14;
  v40 = swift_getWitnessTable();
  v69 = v40;
  v70 = MEMORY[0x1E697E040];
  v15 = swift_getWitnessTable();
  v16 = sub_1C5950DB4(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v67 = v15;
  v68 = v16;
  v43 = swift_getWitnessTable();
  v64 = v11;
  v65 = v43;
  v45 = MEMORY[0x1E69812B8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = *(OpaqueTypeMetadata2 - 8);
  v18 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  v64 = sub_1C5BCA484();
  v65 = 0x3FF0000000000000;
  v66 = 0;
  v39 = a1;
  *&v23 = a1[2];
  *(&v23 + 1) = v41;
  *&v24 = a1[4];
  *(&v24 + 1) = v5;
  v61 = v23;
  v62 = v24;
  v63 = v56;
  v25 = v56;
  v26 = v49;
  sub_1C5BCA2C4();

  sub_1C5BCAA54();
  v27 = v48;
  v28 = v42;
  sub_1C5BCA234();
  (*(v55 + 8))(v26, v28);
  v29 = (v25 + *(v39 + 13));
  v30 = v47;
  v31 = v44;
  sub_1C595BB1C(*v29, v29[1]);
  (*(v53 + 8))(v27, v31);
  v32 = v58;
  v33 = v57;
  v34 = v59;
  (*(v58 + 104))(v57, *MEMORY[0x1E697E6E8], v59);
  v35 = v43;
  sub_1C5BC9F44();
  (*(v32 + 8))(v33, v34);
  (*(v54 + 8))(v30, v11);
  v64 = v11;
  v65 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C593EDC0(v20, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v37 = *(v46 + 8);
  v37(v20, OpaqueTypeMetadata2);
  sub_1C593EDC0(v22, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v37)(v22, OpaqueTypeMetadata2);
}

uint64_t sub_1C5A0A32C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v56 = a6;
  v11 = sub_1C5BC8F34();
  v50 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C5BC8AB4();
  v47 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  v17 = sub_1C5BC8AB4();
  v53 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v45 - v18;
  v54 = v19;
  v20 = sub_1C5BC8AB4();
  v55 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v51 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v52 = &v45 - v23;
  v64 = a2;
  v65 = a3;
  v66 = a4;
  v67 = a5;
  v24 = _s18PlayerControlsViewV15AccessoryButtonVMa();
  v25 = (a1 + *(v24 + 60));
  v26 = v25[1];
  v64 = *v25;
  v65 = v26;

  MEMORY[0x1C694F170](0x7274656D6F65672ELL, 0xE900000000000079);
  v48 = a5;
  sub_1C5B0A7BC(&v64, a3, a5);

  v27 = *(v24 + 64);
  v49 = a1;
  v28 = a1 + v27;
  v29 = *v28;
  v30 = *(v28 + 8);
  v46 = v11;
  if (v30 == 1)
  {
    v31 = v13;
  }

  else
  {

    sub_1C5BCB4E4();
    v32 = sub_1C5BC9844();
    v45 = v20;
    v33 = v32;
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v29, 0);
    v31 = v13;
    v20 = v45;
    (*(v50 + 8))(v13, v11);
  }

  v34 = sub_1C59E7CE0();
  v62 = v48;
  v63 = v34;
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA2D4();
  (*(v47 + 8))(v16, v14);
  sub_1C5BC9144();
  sub_1C5BC8FA4();
  if (sub_1C5BCAA24())
  {
    if (v30)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (!v30)
  {
LABEL_8:

    sub_1C5BCB4E4();
    v36 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v29, 0);
    (*(v50 + 8))(v31, v46);
  }

LABEL_9:
  v60 = WitnessTable;
  v61 = MEMORY[0x1E697E5D8];
  v37 = v54;
  v38 = swift_getWitnessTable();
  v39 = v51;
  v40 = v57;
  sub_1C5BCA264();
  (*(v53 + 8))(v40, v37);
  v58 = v38;
  v59 = MEMORY[0x1E697E270];
  v41 = swift_getWitnessTable();
  v42 = v52;
  sub_1C593EDC0(v39, v20, v41);
  v43 = *(v55 + 8);
  v43(v39, v20);
  sub_1C593EDC0(v42, v20, v41);
  return (v43)(v42, v20);
}

double sub_1C5A0A9E0@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (*(v1 + 8) != 1)
  {

    sub_1C5BCB4E4();
    v8 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v7, 0);
    (*(v4 + 8))(v6, v3);
  }

  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v9 = v14[4];
  v10 = v15;
  v11 = v16;
  v12 = v17;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  result = *&v18;
  *(a1 + 48) = v18;
  return result;
}

uint64_t sub_1C5A0ABC4()
{
  _s17TransportControlsCMa();
  sub_1C5950DB4(&qword_1EDA4A620, _s17TransportControlsCMa);
  v0 = sub_1C5BC88C4();
  sub_1C5BC8C84();
  return v0;
}

uint64_t sub_1C5A0AC80@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v20 = a3;
  v19 = a1;
  v22 = &type metadata for NowPlayingLookupID;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = sub_1C5950C90();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18[2] = AssociatedConformanceWitness;
  v4 = type metadata accessor for ViewProvider();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - v6;
  v18[1] = swift_getAssociatedTypeWitness();
  v8 = sub_1C5BCB804();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  (*(a2 + 384))(v19, a2);
  v22 = 0xD000000000000016;
  AssociatedTypeWitness = 0x80000001C5BF75A0;
  sub_1C595BC70(&v22, v4);

  (*(v5 + 8))(v7, v4);
  v21 = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v12, v8, WitnessTable);
  v16 = *(v9 + 8);
  v16(v12, v8);
  sub_1C593EDC0(v14, v8, WitnessTable);
  return (v16)(v14, v8);
}

uint64_t sub_1C5A0AF8C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v20 = a3;
  v19 = a1;
  v22 = &type metadata for NowPlayingLookupID;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = sub_1C5950C90();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18[2] = AssociatedConformanceWitness;
  v4 = type metadata accessor for ViewProvider();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - v6;
  v18[1] = swift_getAssociatedTypeWitness();
  v8 = sub_1C5BCB804();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  (*(a2 + 384))(v19, a2);
  v22 = 0xD000000000000017;
  AssociatedTypeWitness = 0x80000001C5BF7580;
  sub_1C595BC70(&v22, v4);

  (*(v5 + 8))(v7, v4);
  v21 = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v12, v8, WitnessTable);
  v16 = *(v9 + 8);
  v16(v12, v8);
  sub_1C593EDC0(v14, v8, WitnessTable);
  return (v16)(v14, v8);
}

BOOL sub_1C5A0B298()
{
  if (*(v0 + 18))
  {
    return 0;
  }

  if ((*(v0 + 16) & 1) == 0)
  {
    return *v0 < 375.0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5A0B2D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5A0B3D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5A0B414(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C5A0B45C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_1C5A0B4A0()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C5A0B8AC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C5A0B544(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1C5A0B6B0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 24) - 8) + 64);
  v10 = ((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v18 = a2 & 0x7FFFFFFF;
          v18[1] = 0;
        }

        else
        {
          v18[1] = a2 - 1;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void sub_1C5A0B8AC()
{
  if (!qword_1EC193518)
  {
    v0 = sub_1C5BC8304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC193518);
    }
  }
}

unint64_t sub_1C5A0BA0C()
{
  result = qword_1EDA46558;
  if (!qword_1EDA46558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46558);
  }

  return result;
}

unint64_t sub_1C5A0BAA0()
{
  result = qword_1EDA464F8;
  if (!qword_1EDA464F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1937A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA464F8);
  }

  return result;
}

uint64_t sub_1C5A0BB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C5929BC8(a3, v25 - v10);
  v12 = sub_1C5BCB214();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C5924EF4(v11, &qword_1EC1930A0);
  }

  else
  {
    sub_1C5BCB204();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C5BCB194();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C5BCAED4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C5A0BDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C5929BC8(a3, v25 - v10);
  v12 = sub_1C5BCB214();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C5924EF4(v11, &qword_1EC1930A0);
  }

  else
  {
    sub_1C5BCB204();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C5BCB194();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C5BCAED4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961E0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961E0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1C5A0C09C(void *a1, void *a2, objc_class *a3, float a4)
{
  v5 = v4;
  v64 = a2;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v75 = &ObjectType - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193950);
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v12 = &ObjectType - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193958);
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v14 = &ObjectType - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193960);
  v70 = *(v15 - 8);
  v71 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v69 = &ObjectType - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193968);
  v73 = *(v17 - 8);
  v74 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v72 = &ObjectType - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &ObjectType - v20;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_currentTexture] = 0;
  *&v4[OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_currentTextureRef] = 0;
  v22 = OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_stats;
  if (qword_1EC1905D8 != -1)
  {
    swift_once();
  }

  v23 = qword_1EC1937B0;
  *&v5[v22] = qword_1EC1937B0;
  v24 = OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_outputObserver;
  v25 = objc_allocWithZone(type metadata accessor for MetalVideoTextureProvider.OutputObserver());
  swift_retain_n();
  *&v5[v24] = [v25 init];
  v26 = OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_displayLinkTarget;
  type metadata accessor for MetalVideoTextureProvider.DisplayLinkTarget();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&v5[v26] = v27;
  *(v27 + 24) = v23;
  *&v5[OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_playerTimeControlStatusObserver] = 0;
  v5[OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_displayMode] = 0;
  v28 = OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_displayModeSubject;
  LOBYTE(v76) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193938);
  swift_allocObject();
  *&v5[v28] = sub_1C5BC7F84();
  *&v5[OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider____lazy_storage___displayModePublisher] = 0;
  *&v5[OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_loadTextureTask] = 0;
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_context] = a3;
  *&v5[OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_preferredFramesPerSecond] = a4;
  v29 = *&v5[v26];
  v30 = objc_opt_self();

  v31 = [v30 displayLinkWithTarget:v29 selector:sel_frame_];
  v32 = OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_displayLink;
  *&v5[OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_displayLink] = v31;
  v33 = v31;
  LOBYTE(v76) = 1;
  sub_1C5BCB524();
  [v33 setPreferredFrameRateRange_];

  [*&v5[v32] setPaused_];
  v34 = *&v5[v32];
  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 mainRunLoop];
  [v36 addToRunLoop:v37 forMode:*MEMORY[0x1E695DA28]];

  v77.receiver = v5;
  v77.super_class = ObjectType;
  v38 = objc_msgSendSuper2(&v77, sel_init);
  swift_unknownObjectWeakAssign();
  v39 = v38;
  ObjectType = a3;
  v40 = v64;
  if (v64)
  {
    v41 = v64;
    sub_1C5A0CAE8(v41);
  }

  v42 = *&v39[OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_outputObserver];
  swift_unknownObjectWeakAssign();
  v43 = sub_1C5BCB214();
  (*(*(v43 - 8) + 56))(v21, 1, 1, v43);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = v44;
  v45[5] = a1;
  v46 = v42;
  v47 = a1;
  sub_1C5A0BB28(0, 0, v21, &unk_1C5BD88F8, v45);

  sub_1C5924EF4(v21, &qword_1EC1930A0);
  swift_getKeyPath();
  sub_1C5BC7924();

  *(swift_allocObject() + 16) = v47;
  sub_1C5924F54(&qword_1EC193978, &qword_1EC193950);
  v48 = v47;
  v49 = v67;
  sub_1C5BC8074();

  (*(v65 + 8))(v12, v49);
  sub_1C5924F54(&unk_1EC193980, &qword_1EC193958);
  v50 = v68;
  v51 = v69;
  sub_1C5BC80F4();
  (*(v66 + 8))(v14, v50);
  sub_1C592535C(0, &qword_1EDA4E620);
  v52 = sub_1C5BCB5A4();
  v76 = v52;
  v53 = sub_1C5BCB594();
  v54 = v75;
  (*(*(v53 - 8) + 56))(v75, 1, 1, v53);
  sub_1C5924F54(&unk_1EC193990, &qword_1EC193960);
  sub_1C5A11814(&qword_1EDA4E630, &qword_1EDA4E620);
  v55 = v71;
  v56 = v72;
  sub_1C5BC80D4();
  sub_1C5924EF4(v54, &unk_1EC199F20);

  (*(v70 + 8))(v51, v55);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C5924F54(&unk_1EC1939A0, &unk_1EC193968);
  v57 = v74;
  v58 = sub_1C5BC8114();

  (*(v73 + 8))(v56, v57);
  *&v39[OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_playerTimeControlStatusObserver] = v58;

  v59 = *&v39[OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_stats];

  v60 = *(v59 + 24);
  v61 = __OFADD__(v60, 1);
  v62 = v60 + 1;
  if (v61)
  {
    __break(1u);
  }

  else
  {
    *(v59 + 24) = v62;
  }
}

void sub_1C5A0CAE8(void *a1)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_context) + 40);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = v3;

  v6 = [a1 CGImage];
  if (v6)
  {
    v7 = v6;
    if (qword_1EC1908E8 != -1)
    {
      swift_once();
    }

    type metadata accessor for Option(0);
    sub_1C5A10FBC(&qword_1EDA4E610, type metadata accessor for Option);
    v8 = sub_1C5BCACA4();
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1C5A10FB0;
    *(v9 + 24) = v4;
    v11[4] = sub_1C5A11004;
    v11[5] = v9;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1C5B51CC4;
    v11[3] = &block_descriptor_3;
    v10 = _Block_copy(v11);

    [v5 newTextureWithCGImage:v7 options:v8 completionHandler:v10];

    _Block_release(v10);
  }

  else
  {
    sub_1C5A0D650(1, 1);
  }
}

id sub_1C5A0CD20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_displayLink;
  result = [*&v0[OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_displayLink] invalidate];
  v5 = *&v0[OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_stats];
  v6 = *(v5 + 24);
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 24) = v8;
    v9 = *&v1[v3];

    v10 = v9;
    sub_1C5A10CDC(v10);

    v11.receiver = v1;
    v11.super_class = ObjectType;
    return objc_msgSendSuper2(&v11, sel_dealloc);
  }

  return result;
}

uint64_t sub_1C5A0CEE0(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [a1 targetTimestamp];
    sub_1C5A0CF90(v4);
  }

  swift_beginAccess();

  sub_1C5B0D008(&v6, a1);
  swift_endAccess();

  sub_1C5A10078();
}

void sub_1C5A0CF90(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_1C5BC7B04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v42 = Strong;
    [Strong itemTimeForHostTime_];
    v17 = v43;
    v18 = v44;
    v40 = v46;
    v41 = v45;
    if (sub_1C5BCB684())
    {
      v19 = v42;
    }

    else
    {
      sub_1C5BC7AF4();
      v36 = v18;
      v37 = v17;
      v35 = *(v7 + 16);
      v35(v10, v15, v6);
      swift_beginAccess();

      v34 = v1;
      sub_1C5B0CD28(v13, v10);
      v20 = *(v7 + 8);
      v38 = v7 + 8;
      v39 = v20;
      v20(v13, v6);
      swift_endAccess();

      v21 = sub_1C5BCB214();
      (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
      v22 = swift_allocObject();
      v23 = v34;
      swift_unknownObjectWeakInit();
      v24 = *(*(v23 + OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_context) + 56);
      v35(v13, v15, v6);
      v25 = (*(v7 + 80) + 80) & ~*(v7 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      *(v26 + 32) = v22;
      v28 = v36;
      v27 = v37;
      *(v26 + 40) = v42;
      *(v26 + 48) = v27;
      v29 = v40;
      LODWORD(v27) = v41;
      *(v26 + 56) = v28;
      *(v26 + 60) = v27;
      *(v26 + 64) = v29;
      *(v26 + 72) = v24;
      (*(v7 + 32))(v26 + v25, v13, v6);
      v30 = v24;
      v31 = v42;
      v32 = sub_1C5A0BB28(0, 0, v5, &unk_1C5BD8A50, v26);
      sub_1C5924EF4(v5, &qword_1EC1930A0);
      v33 = *(v23 + OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_loadTextureTask);
      *(v23 + OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_loadTextureTask) = v32;
      if (v33)
      {

        sub_1C5BCB2A4();
      }

      else
      {
      }

      v39(v15, v6);
    }
  }
}

uint64_t sub_1C5A0D42C()
{
  MEMORY[0x1C6951220](v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1C5A0D46C(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_displayLink;
    [*(Strong + OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_displayLink) setPaused_];
    v5 = *&v3[v4];
    if (v1)
    {
      swift_beginAccess();
      v6 = v5;

      sub_1C5B0D008(&v7, v6);
      swift_endAccess();

      sub_1C5A10078();
    }

    else
    {

      sub_1C5A10CDC(v5);
    }
  }
}

uint64_t sub_1C5A0D574()
{
  v1 = OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider____lazy_storage___displayModePublisher;
  if (*(v0 + OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider____lazy_storage___displayModePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider____lazy_storage___displayModePublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193938);
    sub_1C5924F54(&qword_1EC193940, &qword_1EC193938);
    v2 = sub_1C5BC8064();
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1C5A0D650(void *a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_displayMode;
    if (Strong[OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_displayMode] == 2)
    {
    }

    else if (a2)
    {
      v6 = Strong;
      if (qword_1EC190888 != -1)
      {
        swift_once();
      }

      v7 = sub_1C5BC7D64();
      __swift_project_value_buffer(v7, qword_1EC1A6D48);
      sub_1C5A1100C(a1);
      v8 = sub_1C5BC7D44();
      v9 = sub_1C5BCB4D4();
      sub_1C5A1101C(a1, 1);
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138543362;
        sub_1C5A111A0();
        swift_allocError();
        *v12 = a1;
        sub_1C5A1100C(a1);
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 4) = v13;
        *v11 = v13;
        _os_log_impl(&dword_1C5922000, v8, v9, "MetalImageTextureProvider failed to load texture: %{public}@", v10, 0xCu);
        sub_1C5924EF4(v11, &unk_1EC196F30);
        MEMORY[0x1C69510F0](v11, -1, -1);
        MEMORY[0x1C69510F0](v10, -1, -1);
      }
    }

    else
    {
      *&Strong[OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_currentTexture] = a1;
      v14 = Strong;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v14[v5] = 1;
      sub_1C5BC7F54();
    }
  }
}

uint64_t sub_1C5A0D870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v13;
  v8[12] = v14;
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v9 = sub_1C5BC7B04();
  v8[13] = v9;
  v10 = *(v9 - 8);
  v8[14] = v10;
  v8[15] = *(v10 + 64);
  v8[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  v8[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5A0D9B0, 0, 0);
}

uint64_t sub_1C5A0D9B0()
{
  v48 = v0;
  v47[1] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (sub_1C5BCB2D4())
    {
      goto LABEL_8;
    }

    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = *(v0 + 56);
    *(v0 + 144) = *(v0 + 64);
    *(v0 + 152) = v4;
    *(v0 + 160) = v3;
    if (![v5 hasNewPixelBufferForItemTime_] || (sub_1C5BCB2D4() & 1) != 0)
    {
      goto LABEL_8;
    }

    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 56);
    *(v0 + 168) = *(v0 + 64);
    *(v0 + 176) = v7;
    *(v0 + 184) = v6;
    v9 = [v8 copyPixelBufferForItemTime:v0 + 168 itemTimeForDisplay:0];
    if (v9)
    {
      v10 = v9;
      if (sub_1C5BCB2D4())
      {

LABEL_8:
        goto LABEL_9;
      }

      v24 = (v0 + 40);
      v25 = *(v0 + 88);
      *(v0 + 40) = 0;
      v26 = *MEMORY[0x1E695E480];
      Width = CVPixelBufferGetWidth(v10);
      Height = CVPixelBufferGetHeight(v10);
      if (!CVMetalTextureCacheCreateTextureFromImage(v26, v25, v10, 0, MTLPixelFormatBGRA8Unorm, Width, Height, 0, (v0 + 40)) && (sub_1C5BCB2D4() & 1) == 0 && *v24)
      {
        v29 = *v24;
        v30 = CVMetalTextureGetTexture(v29);
        if (v30)
        {
          v31 = v30;
          v33 = *(v0 + 128);
          v32 = *(v0 + 136);
          v34 = *(v0 + 112);
          v46 = v32;
          v35 = *(v0 + 104);
          v44 = v35;
          v45 = v33;
          v43 = *(v0 + 96);
          v36 = sub_1C5BCB214();
          (*(*(v36 - 8) + 56))(v32, 1, 1, v36);
          v37 = swift_allocObject();
          swift_unknownObjectWeakInit();
          (*(v34 + 16))(v33, v43, v35);
          sub_1C5BCB1E4();
          v38 = v29;

          swift_unknownObjectRetain();
          v39 = sub_1C5BCB1D4();
          v40 = (*(v34 + 80) + 56) & ~*(v34 + 80);
          v41 = swift_allocObject();
          v42 = MEMORY[0x1E69E85E0];
          *(v41 + 2) = v39;
          *(v41 + 3) = v42;
          *(v41 + 4) = v37;
          *(v41 + 5) = v38;
          *(v41 + 6) = v31;
          (*(v34 + 32))(&v41[v40], v45, v44);

          sub_1C5AD0FB8(0, 0, v46, &unk_1C5BD8A60, v41);

          swift_unknownObjectRelease();

          goto LABEL_9;
        }
      }
    }

    else
    {
      if (qword_1EC190888 != -1)
      {
        swift_once();
      }

      v13 = sub_1C5BC7D64();
      __swift_project_value_buffer(v13, qword_1EC1A6D48);
      v14 = sub_1C5BC7D44();
      v15 = sub_1C5BCB4D4();
      if (os_log_type_enabled(v14, v15))
      {
        v17 = *(v0 + 72);
        v16 = *(v0 + 80);
        v18 = *(v0 + 64);
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v47[0] = v20;
        *v19 = 136315138;
        *(v0 + 192) = v18;
        *(v0 + 200) = v17;
        *(v0 + 208) = v16;
        type metadata accessor for CMTime(0);
        v21 = sub_1C5BCAEA4();
        v23 = sub_1C592ADA8(v21, v22, v47);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_1C5922000, v14, v15, "Expected pixel buffer for item time: %s but got none", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x1C69510F0](v20, -1, -1);
        MEMORY[0x1C69510F0](v19, -1, -1);
      }
    }
  }

LABEL_9:

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1C5A0DE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  sub_1C5BCB1E4();
  v7[12] = sub_1C5BCB1D4();
  v9 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A0DEF4, v9, v8);
}

uint64_t sub_1C5A0DEF4()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (sub_1C5BCB2D4())
    {
    }

    else
    {
      v4 = *(v0 + 80);
      v3 = *(v0 + 88);
      v5 = *(v0 + 72);
      v2[OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_displayMode] = 2;
      *(v0 + 40) = 2;
      sub_1C5BC7F54();
      v6 = *&v2[OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_currentTextureRef];
      *&v2[OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_currentTextureRef] = v5;

      *&v2[OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_currentTexture] = v4;
      v7 = v5;
      swift_unknownObjectRelease();
      v8 = *&v2[OBJC_IVAR____TtC11MediaCoreUI25MetalVideoTextureProvider_stats];
      swift_beginAccess();
      v9 = *(v8 + 40);
      swift_unknownObjectRetain();

      LOBYTE(v3) = sub_1C5B52920(v3, v9);

      if (v3)
      {
        v11 = *(v8 + 48);
        v12 = __OFADD__(v11, 1);
        v13 = v11 + 1;
        if (v12)
        {
          __break(1u);
          return result;
        }

        *(v8 + 48) = v13;
      }
    }
  }

  v14 = *(v0 + 8);

  return v14();
}

void sub_1C5A0E100(void *a1)
{
  v15 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = v5;
  if (Strong)
  {
    if (v5)
    {
      v7 = sub_1C5BCB214();
      (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
      v8 = swift_allocObject();
      v8[2] = 0;
      v8[3] = 0;
      v8[4] = Strong;
      v8[5] = v6;
      v9 = Strong;
      v10 = v6;
      v11 = v9;
      v12 = v10;
      sub_1C5A0BB28(0, 0, v3, &unk_1C5BD8A28, v8);

      sub_1C5924EF4(v3, &qword_1EC1930A0);
      return;
    }
  }

  else
  {
  }

  v13 = v15;
}

uint64_t sub_1C5A0E2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  v5[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20);
  v5[9] = swift_task_alloc();
  v6 = sub_1C5BCAC24();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1939C0);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1939C8);
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1939D0);
  v5[19] = v9;
  v5[20] = *(v9 - 8);
  v5[21] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1939D8);
  v5[22] = v10;
  v5[23] = *(v10 - 8);
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5A0E5A0, 0, 0);
}

uint64_t sub_1C5A0E5A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = v0[22];
    v29 = v0[23];
    v22 = v0[21];
    v25 = v0[24];
    v26 = v0[20];
    v2 = v0[18];
    v23 = v0[17];
    v24 = v0[19];
    v3 = v0[15];
    v4 = v0[14];
    v20 = v0[13];
    v21 = v0[16];
    v5 = v0[11];
    v6 = v0[12];
    v8 = v0[9];
    v7 = v0[10];
    v30 = v0[8];
    v27 = Strong;
    swift_getKeyPath();
    sub_1C5BC7924();

    sub_1C592535C(0, &qword_1EDA4E620);
    (*(v5 + 104))(v6, *MEMORY[0x1E69E7F90], v7);
    v9 = sub_1C5BCB5C4();
    (*(v5 + 8))(v6, v7);
    v0[5] = v9;
    v10 = sub_1C5BCB594();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    sub_1C5924F54(&qword_1EC1939E0, &qword_1EC1939C0);
    sub_1C5A11814(&qword_1EDA4E630, &qword_1EDA4E620);
    sub_1C5BC80D4();
    sub_1C5924EF4(v8, &unk_1EC199F20);

    (*(v4 + 8))(v3, v20);
    sub_1C592535C(0, &qword_1EC1939E8);
    sub_1C5924F54(&qword_1EC1939F0, &qword_1EC1939C8);
    sub_1C5BC8074();
    (*(v23 + 8))(v2, v21);
    sub_1C5924F54(&qword_1EC1939F8, &qword_1EC1939D0);
    sub_1C5A11814(&qword_1EC193A00, &qword_1EC1939E8);
    sub_1C5BC80F4();
    (*(v26 + 8))(v22, v24);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1C5924F54(&qword_1EC193A08, &qword_1EC1939D8);
    v11 = v27;
    v12 = sub_1C5BC8114();

    (*(v29 + 8))(v25, v28);
    v13 = sub_1C5BCB214();
    (*(*(v13 - 8) + 56))(v30, 1, 1, v13);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1C5BCB1E4();

    v15 = sub_1C5BCB1D4();
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v14;
    v16[5] = v12;

    sub_1C5AD0FB8(0, 0, v30, &unk_1C5BD89C0, v16);
  }

  v18 = v0[1];

  return v18();
}

id sub_1C5A0EB50@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_1C5A0EB5C(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32 - v3;
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C5BD4D40;
    *(inited + 32) = sub_1C5BCAE74();
    *(inited + 40) = v9;
    *(inited + 72) = MEMORY[0x1E69E7668];
    *(inited + 48) = 1111970369;
    *(inited + 80) = sub_1C5BCAE74();
    *(inited + 88) = v10;
    *(inited + 120) = MEMORY[0x1E69E6370];
    *(inited + 96) = 1;
    v11 = sub_1C59AD990(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917A8);
    swift_arrayDestroy();
    sub_1C5A0F06C(v11);

    v12 = objc_allocWithZone(MEMORY[0x1E69880D8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193A20);
    v13 = sub_1C5BCACA4();

    v14 = [v12 initWithPixelBufferAttributes_];

    if (v14)
    {
      sub_1C592535C(0, &qword_1EDA4E620);
      v15 = v14;
      v16 = v7;
      v17 = sub_1C5BCB5A4();
      [v15 setDelegate:v16 queue:v17];

      [v15 requestNotificationOfMediaDataChangeAsSoonAsPossible];
      [v5 addOutput_];

      v18 = sub_1C5BCB214();
      (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1C5BCB1E4();

      v20 = v5;
      v21 = &unk_1C5BD89E0;
    }

    else
    {
      if (qword_1EC190888 != -1)
      {
        swift_once();
      }

      v22 = sub_1C5BC7D64();
      __swift_project_value_buffer(v22, qword_1EC1A6D48);
      v23 = sub_1C5BC7D44();
      v24 = sub_1C5BCB4E4();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v32 = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_1C592ADA8(0xD000000000000013, 0x80000001C5BF7930, &v32);
        _os_log_impl(&dword_1C5922000, v23, v24, "MetalVideoTextureProvider.OutputObserver.%s: AVPlayerItemVideoOutput failed to initialize", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x1C69510F0](v26, -1, -1);
        MEMORY[0x1C69510F0](v25, -1, -1);
      }

      v27 = sub_1C5BCB214();
      (*(*(v27 - 8) + 56))(v4, 1, 1, v27);
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1C5BCB1E4();
      v28 = v5;

      v21 = &unk_1C5BD89D8;
    }

    v29 = sub_1C5BCB1D4();
    v30 = swift_allocObject();
    v31 = MEMORY[0x1E69E85E0];
    v30[2] = v29;
    v30[3] = v31;
    v30[4] = v19;
    v30[5] = v5;

    sub_1C5AD0FB8(0, 0, v4, v21, v30);
  }
}

unint64_t sub_1C5A0F06C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193A28);
    v2 = sub_1C5BCBC74();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_1C592B32C(*(a1 + 56) + 32 * v13, v29);
        *&v28 = v15;
        *(&v28 + 1) = v16;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v17 = v28;
        sub_1C593F33C(v27, &v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193A20);
        swift_dynamicCast();
        sub_1C593F33C(&v23, v25);
        sub_1C593F33C(v25, v26);
        sub_1C593F33C(v26, &v24);
        result = sub_1C596FBD8(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = sub_1C593F33C(&v24, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          result = sub_1C593F33C(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C5A0F2F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191798);
    v1 = sub_1C5BCBC74();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
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
  while (v4)
  {
LABEL_15:
    v11 = __clz(__rbit64(v4)) | (v8 << 6);
    v12 = *(*(a1 + 48) + 8 * v11);
    v24 = *(*(a1 + 56) + v11);
    v13 = v12;
    swift_dynamicCast();
    sub_1C593F33C((v25 + 8), v23);
    sub_1C593F33C(v23, v25);
    sub_1C5BCAE74();
    sub_1C5BCBF54();
    sub_1C5BCAF04();
    v14 = sub_1C5BCBF94();

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

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v6 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v13;
    result = sub_1C593F33C(v25, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C5A0F590(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193A30);
    v2 = sub_1C5BCBC74();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1C592B32C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1C593F33C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1C593F33C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1C593F33C(v31, v32);
    result = sub_1C5BCB9F4();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1C593F33C(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C5A0F858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1C5BCB1E4();
  v5[7] = sub_1C5BCB1D4();
  v7 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A0F8F0, v7, v6);
}

uint64_t sub_1C5A0F8F0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtCC11MediaCoreUI25MetalVideoTextureProviderP33_2925FC67195227C5017294884B212F2E14OutputObserver_playerCurrentItemPublisher) = *(v0 + 48);
    v2 = Strong;
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C5A0F9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1C5BCB1E4();
  v5[4] = sub_1C5BCB1D4();
  v7 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A0FA38, v7, v6);
}

uint64_t sub_1C5A0FA38()
{
  v1 = *(v0 + 24);

  v2 = v1;
  sub_1C5A0E100(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C5A0FC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C5A0FC44, 0, 0);
}

uint64_t sub_1C5A0FC44()
{
  v1 = v0[2];
  v2 = v0[3];
  [v1 setDelegate:0 queue:0];
  [v2 removeOutput_];
  v3 = v0[1];

  return v3();
}

id sub_1C5A0FCCC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = v5;
  if (Strong)
  {
    if (v5)
    {
      v7 = sub_1C5BCB214();
      (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
      v8 = swift_allocObject();
      v8[2] = 0;
      v8[3] = 0;
      v8[4] = Strong;
      v8[5] = v6;
      v9 = Strong;
      v10 = v6;
      v11 = v9;
      v12 = v10;
      sub_1C5A0BB28(0, 0, v3, &unk_1C5BD8A40, v8);

      sub_1C5924EF4(v3, &qword_1EC1930A0);
    }

    else
    {
    }
  }

  else
  {
  }

  v13 = type metadata accessor for MetalVideoTextureProvider.OutputObserver();
  v15.receiver = v0;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, sel_dealloc);
}

id sub_1C5A0FF38()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtCC11MediaCoreUI25MetalVideoTextureProviderP33_2925FC67195227C5017294884B212F2E14OutputObserver_playerCurrentItemPublisher] = 0;
  v1 = OBJC_IVAR____TtCC11MediaCoreUI25MetalVideoTextureProviderP33_2925FC67195227C5017294884B212F2E14OutputObserver_itemForOutput;
  *&v0[v1] = sub_1C59ADF18(MEMORY[0x1E69E7CC0]);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for MetalVideoTextureProvider.OutputObserver();
  return objc_msgSendSuper2(&v3, sel_init);
}

void *sub_1C5A10034()
{
  type metadata accessor for MetalVideoTextureProvider.FrameStatsRecorder();
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CD0];
  result[2] = 0;
  result[3] = 0;
  result[4] = v1;
  result[5] = v1;
  result[6] = 0;
  qword_1EC1937B0 = result;
  return result;
}

uint64_t sub_1C5A10078()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193A48);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193A50);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  if (!*(v0 + 16))
  {
    v26 = v10;
    if (qword_1EC190888 != -1)
    {
      swift_once();
    }

    v13 = sub_1C5BC7D64();
    __swift_project_value_buffer(v13, qword_1EC1A6D48);
    v14 = sub_1C5BC7D44();
    v15 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C5922000, v14, v15, "Setting up video frame stats timer", v16, 2u);
      MEMORY[0x1C69510F0](v16, -1, -1);
    }

    sub_1C592535C(0, &qword_1EC193658);
    v17 = [objc_opt_self() mainRunLoop];
    v18 = sub_1C5BCB7B4();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    v19 = sub_1C5BCB6F4();

    sub_1C5924EF4(v7, &qword_1EC193A48);
    v28 = v19;
    sub_1C5BCB6E4();
    sub_1C5A10FBC(&qword_1EC193A60, MEMORY[0x1E6969F70]);
    v20 = sub_1C5BC7F94();

    v28 = v20;
    sub_1C592535C(0, &qword_1EDA4E620);
    v21 = sub_1C5BCB5A4();
    v27 = v21;
    v22 = sub_1C5BCB594();
    (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193A68);
    sub_1C5924F54(&qword_1EC193A70, &qword_1EC193A68);
    sub_1C5A11814(&qword_1EDA4E630, &qword_1EDA4E620);
    sub_1C5BC80D4();
    sub_1C5924EF4(v4, &unk_1EC199F20);

    swift_allocObject();
    swift_weakInit();
    sub_1C5924F54(&qword_1EC193A78, &unk_1EC193A50);
    v23 = sub_1C5BC8114();

    result = (*(v26 + 8))(v12, v8);
    v24 = *(v1 + 16);
    *(v1 + 16) = v23;
    if (v24)
    {

      sub_1C5BC7EF4();
    }
  }

  return result;
}

uint64_t sub_1C5A105C0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1EC190888 != -1)
    {
      swift_once();
    }

    v2 = sub_1C5BC7D64();
    __swift_project_value_buffer(v2, qword_1EC1A6D48);
    swift_retain_n();
    v3 = sub_1C5BC7D44();
    v4 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v16[0] = v6;
      *v5 = 136446722;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193A80);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1C5BCFF00;
      swift_beginAccess();
      v8 = *(v1[5] + 16);
      if (v8)
      {
        v9 = (v1[6] / v8) * 100.0;
      }

      else
      {
        v9 = 0.0;
      }

      v10 = MEMORY[0x1E69E64A8];
      *(v7 + 56) = MEMORY[0x1E69E6448];
      *(v7 + 64) = v10;
      *(v7 + 32) = v9;
      v11 = sub_1C5BCAE84();
      v13 = sub_1C592ADA8(v11, v12, v16);

      *(v5 + 4) = v13;
      *(v5 + 12) = 2048;
      v14 = v1[3];

      *(v5 + 14) = v14;

      *(v5 + 22) = 2048;
      v15 = sub_1C5A10864();

      *(v5 + 24) = v15;

      _os_log_impl(&dword_1C5922000, v3, v4, "Video texture generation rate: %{public}s%%, %ld providers, running display links: %ld", v5, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1C69510F0](v6, -1, -1);
      MEMORY[0x1C69510F0](v5, -1, -1);
    }

    else
    {
    }

    v1[6] = 0;
    swift_beginAccess();
    v1[5] = MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1C5A10864()
{
  v38 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v1 = *(v0 + 32);
  if ((v1 & 0xC000000000000001) == 0)
  {
    v18 = *(v1 + 32);
    v19 = v18 & 0x3F;
    v2 = ((1 << v18) + 63) >> 6;
    v5 = 8 * v2;

    if (v19 > 0xD)
    {
      goto LABEL_40;
    }

LABEL_23:
    v35[1] = v35;
    MEMORY[0x1EEE9AC00](v20);
    v21 = v35 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v21, v5);
    v5 = 0;
    v22 = 0;
    v23 = 1 << *(v1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v1 + 56);
    v26 = (v23 + 63) >> 6;
    while (1)
    {
      if (!v25)
      {
        v28 = v22;
        while (1)
        {
          v22 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_39;
          }

          if (v22 >= v26)
          {
            goto LABEL_37;
          }

          v29 = *(v1 + 56 + 8 * v22);
          ++v28;
          if (v29)
          {
            v27 = __clz(__rbit64(v29));
            v25 = (v29 - 1) & v29;
            goto LABEL_33;
          }
        }
      }

      v27 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_33:
      v30 = v27 | (v22 << 6);
      if (([*(*(v1 + 48) + 8 * v30) isPaused] & 1) == 0)
      {
        *&v21[(v30 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v30;
        if (__OFADD__(v5++, 1))
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_37:
    v2 = sub_1C5A113F0(v21, v2, v5, v1);
    if ((v2 & 0xC000000000000001) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_38;
  }

  v2 = MEMORY[0x1E69E7CD0];
  v37 = MEMORY[0x1E69E7CD0];

  sub_1C5BCB944();
  v3 = sub_1C5BCB9C4();
  if (!v3)
  {
LABEL_20:

    if ((v2 & 0xC000000000000001) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_38;
  }

  v4 = v3;
  v5 = sub_1C592535C(0, &qword_1EC193A38);
  v6 = v4;
  v2 = MEMORY[0x1E69E7CD0];
  while (1)
  {
    v35[3] = v6;
    swift_dynamicCast();
    v7 = v36;
    if (([v36 isPaused] & 1) == 0)
    {
      break;
    }

LABEL_5:
    v6 = sub_1C5BCB9C4();
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  if (*(v2 + 24) <= *(v2 + 16))
  {
    sub_1C5B0BEC0();
  }

  v2 = v37;
  v1 = v36;
  v8 = sub_1C5BCB734();
  v9 = v37 + 56;
  v10 = -1 << *(v37 + 32);
  v11 = v8 & ~v10;
  v12 = v11 >> 6;
  if (((-1 << v11) & ~*(v37 + 56 + 8 * (v11 >> 6))) != 0)
  {
    v13 = __clz(__rbit64((-1 << v11) & ~*(v37 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
    *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    *(*(v2 + 48) + 8 * v13) = v7;
    ++*(v2 + 16);
    goto LABEL_5;
  }

  v14 = 0;
  v15 = (63 - v10) >> 6;
  while (++v12 != v15 || (v14 & 1) == 0)
  {
    v16 = v12 == v15;
    if (v12 == v15)
    {
      v12 = 0;
    }

    v14 |= v16;
    v17 = *(v9 + 8 * v12);
    if (v17 != -1)
    {
      v13 = __clz(__rbit64(~v17)) + (v12 << 6);
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_23;
  }

  v33 = swift_slowAlloc();
  v2 = sub_1C5A11360(v33, v2, v1, sub_1C5A10CA4);

  MEMORY[0x1C69510F0](v33, -1, -1);
  if ((v2 & 0xC000000000000001) == 0)
  {
LABEL_43:
    v32 = *(v2 + 16);
    goto LABEL_44;
  }

LABEL_38:
  v32 = sub_1C5BCB984();
LABEL_44:

  return v32;
}

void sub_1C5A10CDC(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_1C5B0FA08(a1);
  swift_endAccess();

  if (*(v2 + 16) && !sub_1C5A10864())
  {
    v5 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v5)
    {
      sub_1C5BC7EF4();
    }

    if (qword_1EC190888 != -1)
    {
      swift_once();
    }

    v6 = sub_1C5BC7D64();
    __swift_project_value_buffer(v6, qword_1EC1A6D48);
    v7 = sub_1C5BC7D44();
    v8 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C5922000, v7, v8, "No active display links, cancelling frame stats timer", v9, 2u);
      MEMORY[0x1C69510F0](v9, -1, -1);
    }
  }
}

uint64_t sub_1C5A10E20()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C5A10E8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C592A748;

  return sub_1C5A0E2D0(a1, v4, v5, v7, v6);
}

void *sub_1C5A10F58@<X0>(void *result@<X0>, BOOL *a2@<X8>)
{
  if (*result == 2)
  {
    result = [*(v2 + 16) rate];
    v5 = v4 > 0.0;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1C5A10FBC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1C5A1100C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_1C5A1101C(id a1, char a2)
{
  if (a2)
  {
    sub_1C5A11028(a1);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1C5A11028(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1C5A11038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1C5BCB1E4();
  v5[7] = sub_1C5BCB1D4();
  v7 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A110D0, v7, v6);
}

uint64_t sub_1C5A110D0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();
  }

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_1C5A111A0()
{
  result = qword_1EC1939B0;
  if (!qword_1EC1939B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1939B0);
  }

  return result;
}

void sub_1C5A111F4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1C5A113F0(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1C5A11360(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

    sub_1C5A111F4(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1C5A113F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193A40);
  result = sub_1C5BCBA64();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1C5BCB734();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C5A115E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193A90);
  result = sub_1C5BCBA64();
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1C5BCBF54();

    sub_1C5BCAF04();
    result = sub_1C5BCBF94();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
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
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C5A11814(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C592535C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C5A11860(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C592A748;

  return sub_1C5A0F858(a1, v4, v5, v7, v6);
}

uint64_t sub_1C5A11920(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1C5A11A14;

  return v5(v2 + 32);
}

uint64_t sub_1C5A11A14()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1C5A11B28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C592A748;

  return sub_1C5A11038(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_63Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5A11C38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C592A748;

  return sub_1C5A0FC24(a1, v4, v5, v7, v6);
}

uint64_t sub_1C5A11CF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C592A748;

  return sub_1C5A0F9A0(a1, v4, v5, v7, v6);
}

uint64_t sub_1C5A11DB8(uint64_t a1)
{
  sub_1C5BC7B04();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1C592ABD4;

  return sub_1C5A0D870(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C5A11EE0(uint64_t a1)
{
  v4 = *(sub_1C5BC7B04() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592A748;

  return sub_1C5A0DE58(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1C5A11FEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C592A748;

  return sub_1C5A11920(a1, v4);
}

uint64_t sub_1C5A120A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C592ABD4;

  return sub_1C5A11920(a1, v4);
}

uint64_t sub_1C5A1215C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1C5A121A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1C5A121FC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C59378A8(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  result = *(v3 + 16);
  v5 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1C5A122D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C59378A8(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  *a2 = *(v3 + 49);
  return result;
}

__n128 sub_1C5A123B0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C59378A8(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  result = *(v3 + 104);
  v5 = *(v3 + 136);
  *(a2 + 32) = *(v3 + 120);
  *(a2 + 48) = v5;
  *(a2 + 57) = *(v3 + 145);
  *a2 = *(v3 + 88);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1C5A12470(__int128 *a1)
{
  v1 = a1[3];
  v4[2] = a1[2];
  v5[0] = v1;
  *(v5 + 9) = *(a1 + 57);
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return sub_1C5A33D1C(v4);
}

uint64_t sub_1C5A124B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C59378A8(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_1C5A12564(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;

  return sub_1C5A37490(v4);
}

uint64_t sub_1C5A125A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C59378A8(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();

  v4 = v3[8];
  v5 = v3[9];
  v6 = v3[10];
  v7 = v3[11];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_1C593E7D8(v4, v5);
}

uint64_t sub_1C5A12654(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v5[0] = *a1;
  v5[1] = v1;
  v5[2] = v2;
  v5[3] = v3;
  sub_1C593E7D8(v5[0], v1);
  return sub_1C5A37864(v5);
}

uint64_t sub_1C5A126A0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C5A126F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5A12788@<X0>(uint64_t a1@<X8>)
{
  v2 = qword_1EDA4E5D0;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDA5DD00;
  result = sub_1C5BC9C94();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

id static UIContentSizeCategory.default.getter()
{
  if (qword_1EDA45DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EDA45DF8;

  return v0;
}

void static UIContentSizeCategory.default.setter(uint64_t a1)
{
  if (qword_1EDA45DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EDA45DF8;
  qword_1EDA45DF8 = a1;
}

uint64_t (*static UIContentSizeCategory.default.modify())()
{
  if (qword_1EDA45DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_1C5A12A28(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id static UIFont.font(forTextStyle:symbolicTraits:)(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];
  if (v4)
  {
    v5 = v4;

    v3 = v5;
  }

  v6 = [objc_opt_self() fontWithDescriptor:v3 size:0.0];

  return v6;
}

id static UIFont.font(forTextStyle:symbolicTraits:contentSizeCategory:minimumContentSizeCategory:maximumContentSizeCategory:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v10 = sub_1C5BCAE74();
  v12 = v11;
  if (v10 == sub_1C5BCAE74() && v12 == v13)
  {

    goto LABEL_9;
  }

  v15 = sub_1C5BCBDE4();

  if ((v15 & 1) != 0 || (sub_1C5BCB644() & 1) == 0)
  {
LABEL_9:
    v16 = sub_1C5BCAE74();
    v18 = v17;
    if (v16 == sub_1C5BCAE74() && v18 == v19)
    {

      a4 = a3;
    }

    else
    {
      v21 = sub_1C5BCBDE4();

      if (v21)
      {
        a4 = a3;
      }

      else if (sub_1C5BCB634())
      {
        a4 = a5;
      }

      else
      {
        a4 = a3;
      }
    }
  }

  v22 = a4;
  v23 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];

  v24 = [objc_opt_self() preferredFontDescriptorWithTextStyle:a1 compatibleWithTraitCollection:v23];
  v25 = [v24 fontDescriptorWithSymbolicTraits_];
  if (v25)
  {
    v26 = v25;

    v24 = v26;
  }

  v27 = [objc_opt_self() fontWithDescriptor:v24 size:0.0];

  return v27;
}

id sub_1C5A12D48(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193B40);
  inited = swift_initStackObject();
  v4 = MEMORY[0x1E69DB990];
  *(inited + 16) = xmmword_1C5BCFF00;
  v5 = *v4;
  *(inited + 32) = v5;
  *(inited + 40) = a1;
  v6 = v5;
  v7 = sub_1C59AE010(inited);
  swift_setDeallocating();
  sub_1C5924EF4(inited + 32, &qword_1EC193B48);
  v8 = [v1 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193B50);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1C5BCFF00;
  v10 = *MEMORY[0x1E69DB8F0];
  *(v9 + 32) = *MEMORY[0x1E69DB8F0];
  *(v9 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193B58);
  *(v9 + 40) = v7;
  v11 = v10;
  sub_1C59AE100(v9);
  swift_setDeallocating();
  sub_1C5924EF4(v9 + 32, &qword_1EC1917B8);
  type metadata accessor for AttributeName(0);
  sub_1C5A13330();
  v12 = sub_1C5BCACA4();

  v13 = [v8 fontDescriptorByAddingAttributes_];

  [v1 pointSize];
  v15 = [objc_opt_self() fontWithDescriptor:v13 size:v14];

  return v15;
}

double UIFontMetrics.scaledValue(for:to:noSmallerThan:noLargerThan:where:)(void *a1, void *a2, void *a3, uint64_t (*a4)(void), double a5)
{
  v6 = v5;
  if (a4())
  {
    v11 = sub_1C5BCAE74();
    v13 = v12;
    if (v11 == sub_1C5BCAE74() && v13 == v14)
    {

      v17 = a1;
    }

    else
    {
      v16 = sub_1C5BCBDE4();

      v17 = a1;
      if ((v16 & 1) == 0)
      {
        if (sub_1C5BCB654())
        {
          v17 = a1;
        }

        else
        {
          v17 = a2;
        }
      }
    }

    v18 = v17;
    v19 = sub_1C5BCAE74();
    v21 = v20;
    if (v19 == sub_1C5BCAE74() && v21 == v22)
    {
    }

    else
    {
      v24 = sub_1C5BCBDE4();

      if ((v24 & 1) == 0)
      {
        v25 = sub_1C5BCB644();

        if (v25)
        {
          v26 = a1;
        }

        else
        {
          v26 = a3;
        }

        v18 = v26;
      }
    }

    v27 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    [v6 scaledValueForValue:v27 compatibleWithTraitCollection:a5];
    a5 = v28;
  }

  return a5;
}

double UIFontMetrics.scaledValue(for:traitCollection:noSmallerThan:noLargerThan:where:)(void *a1, void *a2, void *a3, uint64_t (*a4)(void), double a5)
{
  v6 = v5;
  v11 = [a1 preferredContentSizeCategory];
  if (a4())
  {
    v12 = sub_1C5BCAE74();
    v14 = v13;
    if (v12 == sub_1C5BCAE74() && v14 == v15)
    {

      v18 = v11;
    }

    else
    {
      v17 = sub_1C5BCBDE4();

      v18 = v11;
      if ((v17 & 1) == 0)
      {
        if (sub_1C5BCB654())
        {
          v18 = v11;
        }

        else
        {
          v18 = a2;
        }
      }
    }

    v19 = v18;
    v20 = sub_1C5BCAE74();
    v22 = v21;
    if (v20 == sub_1C5BCAE74() && v22 == v23)
    {
    }

    else
    {
      v25 = sub_1C5BCBDE4();

      if ((v25 & 1) == 0)
      {
        v26 = sub_1C5BCB644();

        if (v26)
        {
          v19 = v11;
        }

        else
        {
          v19 = a3;
        }
      }
    }

    v27 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    [v6 scaledValueForValue:v27 compatibleWithTraitCollection:a5];
    a5 = v28;

    v11 = v19;
  }

  return a5;
}

unint64_t sub_1C5A13330()
{
  result = qword_1EDA4E0C8;
  if (!qword_1EDA4E0C8)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4E0C8);
  }

  return result;
}

uint64_t sub_1C5A13398()
{
  type metadata accessor for WaveformAudioSampler();
  swift_allocObject();
  result = sub_1C5A13624();
  qword_1EDA5DB00 = result;
  return result;
}

uint64_t sub_1C5A133D4()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v2 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for ProcessIDManager();
    v1 = swift_allocObject();

    swift_defaultActor_initialize();
    *(v1 + 112) = getpid();
    *(v1 + 120) = sub_1C5A17A40;
    *(v1 + 128) = v2;

    *(v0 + 72) = v1;
  }

  return v1;
}

uint64_t sub_1C5A13498(int *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 24))
    {

      sub_1C5BCB2A4();
      v3 = v1;
      sub_1C5A145EC(&v3);
    }
  }

  return result;
}

uint64_t sub_1C5A13560()
{
  if (qword_1EDA490C8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C592ABD4;

  return sub_1C5A14344();
}

uint64_t sub_1C5A13624()
{
  v1 = v0;
  type metadata accessor for FFTProcessor();
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193B88);
  swift_allocObject();
  *(v2 + 16) = sub_1C5BC7F44();
  *(v2 + 24) = 0;
  *(v0 + 16) = v2;
  *(v0 + 24) = 0;
  type metadata accessor for Counter();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v1 + 32) = v3;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0;
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 applicationState];

  *(v1 + 80) = v5 == 2;
  sub_1C5A13718();
  sub_1C5A139B4();
  return v1;
}

uint64_t sub_1C5A13718()
{
  v15 = *v0;
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = *MEMORY[0x1E6958110];
  v4 = objc_opt_self();
  v5 = [v4 mainQueue];
  v20 = sub_1C5A17B0C;
  v21 = v0;
  aBlock = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1C5975B64;
  v19 = &block_descriptor_89_0;
  v6 = _Block_copy(&aBlock);

  v7 = [v2 addObserverForName:v3 object:0 queue:v5 usingBlock:v6];
  _Block_release(v6);

  v0[5] = v7;
  swift_unknownObjectRelease();
  v8 = [v1 defaultCenter];
  v9 = *MEMORY[0x1E6958128];
  v10 = [v4 mainQueue];
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  *(v11 + 24) = v15;
  v20 = sub_1C5A17B14;
  v21 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1C5975B64;
  v19 = &block_descriptor_95;
  v12 = _Block_copy(&aBlock);

  v13 = [v8 addObserverForName:v9 object:0 queue:v10 usingBlock:v12];
  _Block_release(v12);

  v0[6] = v13;
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5A139B4()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = *MEMORY[0x1E69DDBC0];
  v4 = objc_opt_self();
  v5 = [v4 mainQueue];
  v18 = sub_1C5A17A48;
  v19 = v0;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1C5975B64;
  v17 = &block_descriptor_4;
  v6 = _Block_copy(&v14);

  v7 = [v2 addObserverForName:v3 object:0 queue:v5 usingBlock:v6];
  _Block_release(v6);

  *(v0 + 64) = v7;
  swift_unknownObjectRelease();
  v8 = [v1 defaultCenter];
  v9 = *MEMORY[0x1E69DDAC8];
  v10 = [v4 mainQueue];
  v18 = sub_1C5A17A50;
  v19 = v0;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1C5975B64;
  v17 = &block_descriptor_76;
  v11 = _Block_copy(&v14);

  v12 = [v8 addObserverForName:v9 object:0 queue:v10 usingBlock:v11];
  _Block_release(v11);

  *(v0 + 56) = v12;
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5A13C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1C5BC7D64();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5A13CCC, 0, 0);
}

uint64_t sub_1C5A13CCC()
{
  v1 = *(*(v0 + 16) + 32);
  *(v0 + 48) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C5A13D44, v1, 0);
}

uint64_t sub_1C5A13D44()
{
  v1 = v0[6];
  v2 = *(v1 + 112);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 112) = v4;
    if (qword_1EDA46940 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v5 = v0[5];
  v6 = v0[3];
  v7 = v0[4];
  v8 = __swift_project_value_buffer(v6, qword_1EDA5DA48);
  (*(v7 + 16))(v5, v8, v6);

  v9 = sub_1C5BC7D44();
  v10 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134349056;
    *(v11 + 4) = *(v1 + 112);

    _os_log_impl(&dword_1C5922000, v9, v10, "WaveformAudioSampler subscribers count: %{public}ld", v11, 0xCu);
    MEMORY[0x1C69510F0](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_1C5A13F20;

  return sub_1C5A14344();
}

uint64_t sub_1C5A13F20()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C5A14030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1C5BC7D64();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5A140F0, 0, 0);
}

uint64_t sub_1C5A140F0()
{
  v1 = *(*(v0 + 16) + 32);
  *(v0 + 48) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C5A14168, v1, 0);
}

uint64_t sub_1C5A14168()
{
  v1 = v0[6];
  v2 = *(v1 + 112);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (!v3)
  {
    *(v1 + 112) = v4;
    if (qword_1EDA46940 != -1)
    {
      swift_once();
    }

    v5 = v0[5];
    v6 = v0[3];
    v7 = v0[4];
    v8 = __swift_project_value_buffer(v6, qword_1EDA5DA48);
    (*(v7 + 16))(v5, v8, v6);

    v9 = sub_1C5BC7D44();
    v10 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134349056;
      *(v11 + 4) = *(v1 + 112);

      _os_log_impl(&dword_1C5922000, v9, v10, "WaveformAudioSampler subscribers count: %{public}ld", v11, 0xCu);
      MEMORY[0x1C69510F0](v11, -1, -1);
    }

    else
    {
    }

    (*(v0[4] + 8))(v0[5], v0[3]);
  }

  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_1C5A17BFC;

  return sub_1C5A14344();
}

uint64_t sub_1C5A14364()
{
  v1 = *(*(v0 + 16) + 32);
  *(v0 + 24) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C5A143DC, v1, 0);
}

uint64_t sub_1C5A143DC()
{
  *(v0 + 32) = *(*(v0 + 24) + 112);

  return MEMORY[0x1EEE6DFA0](sub_1C5A1444C, 0, 0);
}

uint64_t sub_1C5A1444C()
{
  v1 = v0[2];
  if (v0[4] < 1 || *(v1 + 80) == 1)
  {
    sub_1C5A15410();
LABEL_5:
    v2 = v0[1];

    return v2();
  }

  if (*(v1 + 24))
  {
    goto LABEL_5;
  }

  v4 = sub_1C5A133D4();
  v0[5] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C5A14510, v4, 0);
}

uint64_t sub_1C5A14510()
{
  *(v0 + 48) = *(*(v0 + 40) + 112);

  return MEMORY[0x1EEE6DFA0](sub_1C5A14580, 0, 0);
}

uint64_t sub_1C5A14580()
{
  v4 = v0;
  v3 = *(v0 + 48);
  sub_1C5A145EC(&v3);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A145EC(int *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1C5BC7D64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (qword_1EDA46940 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, qword_1EDA5DA48);
  (*(v8 + 16))(v10, v12, v7);
  v13 = sub_1C5BC7D44();
  v14 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1C5922000, v13, v14, "WaveformAudioSampler created sampling task", v15, 2u);
    MEMORY[0x1C69510F0](v15, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v16 = sub_1C5BCB214();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v11;
  *(v17 + 40) = v2;

  *(v2 + 24) = sub_1C5AD0FB8(0, 0, v6, &unk_1C5BD91D8, v17);
}

uint64_t sub_1C5A14884(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *(v5 + 352) = a5;
  *(v5 + 464) = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193BA0);
  *(v5 + 360) = v6;
  *(v5 + 368) = *(v6 - 8);
  *(v5 + 376) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193BA8);
  *(v5 + 384) = v7;
  *(v5 + 392) = *(v7 - 8);
  *(v5 + 400) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193BB0);
  *(v5 + 408) = v8;
  *(v5 + 416) = *(v8 - 8);
  *(v5 + 424) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5A14A50, 0, 0);
}

uint64_t sub_1C5A14A50()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 376);
  v17 = *(v0 + 384);
  v4 = *(v0 + 368);
  v16 = *(v0 + 360);
  v5 = sub_1C59AB544(*(v0 + 464), 15.0);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  type metadata accessor for AudioTapSampleTransformer();
  *(v0 + 432) = swift_initStackObject();
  *(v0 + 440) = sub_1C5AA8BB0(v11);
  v12 = swift_task_alloc();
  *(v12 + 16) = v5;
  *(v12 + 24) = v7;
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193B90);
  (*(v4 + 104))(v3, *MEMORY[0x1E69E8650], v16);
  sub_1C5BCB274();

  sub_1C5BCB254();
  (*(v2 + 8))(v1, v17);
  swift_beginAccess();
  v13 = swift_task_alloc();
  *(v0 + 448) = v13;
  *v13 = v0;
  v13[1] = sub_1C5A14C78;
  v14 = *(v0 + 408);

  return MEMORY[0x1EEE6D9C8](v0 + 336, 0, 0, v14);
}

uint64_t sub_1C5A14C78()
{

  return MEMORY[0x1EEE6DFA0](sub_1C5A14DA0, 0, 0);
}

uint64_t sub_1C5A14DA0()
{
  v2 = *(v1 + 336);
  if (v2)
  {
    v3 = *(v1 + 440);
    if (*(v2 + 16) > 2uLL)
    {
      swift_beginAccess();
      v4 = *(v3 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 24) = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = *(v1 + 440);
        v4 = sub_1C5BAA6F8(v4);
        *(v39 + 24) = v4;
      }

      v6 = *(v1 + 440);
      swift_beginAccess();
      v7 = *(v6 + 32);
      v8 = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + 32) = v7;
      if ((v8 & 1) == 0)
      {
        v40 = *(v1 + 440);
        v7 = sub_1C5BAA6F8(v7);
        *(v40 + 32) = v7;
      }

      v9 = *(v1 + 440);
      swift_beginAccess();
      v10 = *(v9 + 40);
      v11 = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 40) = v10;
      if ((v11 & 1) == 0)
      {
        v41 = *(v1 + 440);
        v10 = sub_1C5BAA6F8(v10);
        *(v41 + 40) = v10;
      }

      v12 = *(v1 + 440);
      swift_beginAccess();
      v13 = *(v12 + 48);
      v14 = swift_isUniquelyReferenced_nonNull_native();
      *(v12 + 48) = v13;
      if ((v14 & 1) == 0)
      {
        v42 = *(v1 + 440);
        v13 = sub_1C5BAA6F8(v13);
        *(v42 + 48) = v13;
      }

      v15 = *(v1 + 440);
      v16 = *(v2 + 16);
      v17 = v15[9];
      v18 = v17 - v16;
      if (v17 <= v16)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          v0 = v15[10];
          swift_beginAccess();
          v18 = v15[2];
          if (v17 == *(v18 + 16))
          {
            if (*(v0 + 16) == v17)
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
LABEL_23:
                v22 = *(v1 + 440);
                MEMORY[0x1C6951320](v2 + 32, 1, v0 + 32, 1, v18 + 32, 1, v17);
                *(v22 + 16) = v18;
                swift_endAccess();
LABEL_24:
                v23 = *(v1 + 440);
                *(v1 + 288) = v4 + 32;
                *(v1 + 296) = v7 + 32;
                *(v1 + 304) = v10 + 32;
                *(v1 + 312) = v13 + 32;
                v24 = *(v23 + 16);
                v25 = *(v24 + 16);
                if (v25 >> 61)
                {
                  __break(1u);
                }

                else
                {
                  v43 = v4;
                  if (v25 > 1)
                  {
                    v27 = v25 >> 1;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193BB8);
                    v26 = swift_allocObject();
                    v28 = _swift_stdlib_malloc_size(v26);
                    v29 = v28 - 32;
                    if (v28 < 32)
                    {
                      v29 = v28 - 25;
                    }

                    *(v26 + 16) = v27;
                    *(v26 + 24) = 2 * (v29 >> 3);
                    memcpy((v26 + 32), (v24 + 32), 8 * v27);
                  }

                  else
                  {
                    v26 = MEMORY[0x1E69E7CC0];
                    v27 = *(MEMORY[0x1E69E7CC0] + 16);
                  }

                  vDSP_ctoz((v26 + 32), 2, (v1 + 288), 1, v27);

                  sub_1C5BC76E4();

                  if (v17)
                  {
                    v24 = sub_1C5BCB0C4();
                    *(v24 + 16) = v17;
                  }

                  else
                  {
                    v24 = MEMORY[0x1E69E7CC0];
                  }

                  v0 = *(*(v1 + 440) + 72);
                  *(v1 + 320) = *(v1 + 304);
                  vDSP_zvmags((v1 + 320), 1, (v24 + 32), 1, v17);
                  if (v17 >= v0)
                  {
                    *(v24 + 16) = v0;

                    v30 = *(v24 + 16);
                    if (!(v30 >> 31))
                    {
                      v0 = v1 + 456;
                      *(v1 + 456) = v30;

                      v31 = v24;
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
LABEL_36:
                        v32 = *(v1 + 440);
                        vvsqrtf(v31 + 8, (v24 + 32), v0);

                        v33 = *(v32 + 64);
                        v34 = *(v31 + 2);

                        v35 = v31;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v35 = sub_1C5BAA6F8(v31);
                        }

                        v36 = *(v1 + 440);
                        *(v1 + 460) = v33;
                        MEMORY[0x1C6951330](v31 + 32, 1, v1 + 460, v35 + 32, 1, v34);

                        v36[6] = v13;
                        swift_endAccess();
                        v36[5] = v10;
                        swift_endAccess();
                        v36[4] = v7;
                        swift_endAccess();
                        v36[3] = v43;
                        swift_endAccess();

                        *(v1 + 344) = v35;
                        sub_1C5BC7F34();

                        v37 = swift_task_alloc();
                        *(v1 + 448) = v37;
                        *v37 = v1;
                        v37[1] = sub_1C5A14C78;
                        v38 = *(v1 + 408);

                        return MEMORY[0x1EEE6D9C8](v1 + 336, 0, 0, v38);
                      }

LABEL_44:
                      v31 = sub_1C5BAA6F8(v24);
                      goto LABEL_36;
                    }

LABEL_43:
                    __break(1u);
                    goto LABEL_44;
                  }
                }

                __break(1u);
                goto LABEL_43;
              }

LABEL_49:
              v18 = sub_1C5BAA6F8(v18);
              goto LABEL_23;
            }

LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

LABEL_47:
          __break(1u);
          goto LABEL_48;
        }
      }

      else
      {
        if (v17 - v16 >= 0)
        {
          v19 = sub_1C5BCB0C4();
          *(v19 + 16) = v18;
          bzero((v19 + 32), 4 * v18);

          sub_1C5A17740(v19);
          v0 = v15[10];
          swift_beginAccess();
          sub_1C5AC9440(v2, v0, v15 + 2);
          swift_endAccess();

          goto LABEL_24;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_47;
    }

    (*(*(v1 + 416) + 8))(*(v1 + 424), *(v1 + 408));
  }

  else
  {
    (*(*(v1 + 416) + 8))(*(v1 + 424), *(v1 + 408));
  }

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_1C5A15410()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_1C5BC7D64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 24))
  {
    v9 = qword_1EDA46940;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v5, qword_1EDA5DA48);
    (*(v6 + 16))(v8, v10, v5);
    v11 = sub_1C5BC7D44();
    v12 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C5922000, v11, v12, "WaveformAudioSampler cancelled sampling task", v13, 2u);
      MEMORY[0x1C69510F0](v13, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    sub_1C5BCB2A4();

    *(v1 + 24) = 0;
  }

  v14 = sub_1C5BCB214();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_1C5BCB1E4();

  v15 = sub_1C5BCB1D4();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v1;
  sub_1C5AD0FB8(0, 0, v4, &unk_1C5BD91C8, v16);
}

uint64_t sub_1C5A156F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_1C5BCB1E4();
  *(v4 + 32) = sub_1C5BCB1D4();
  v6 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A15788, v6, v5);
}

uint64_t sub_1C5A15788()
{

  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  sub_1C5BC7F34();
  v1 = *(v0 + 8);

  return v1();
}

void *sub_1C5A15804()
{
  sub_1C5A15410();
  v1 = v0[5];
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver_];
    swift_unknownObjectRelease();
  }

  v4 = v0[6];
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver_];
    swift_unknownObjectRelease();
  }

  v7 = v0[7];
  if (v7)
  {
    v8 = objc_opt_self();
    swift_unknownObjectRetain();
    v9 = [v8 defaultCenter];
    [v9 removeObserver_];
    swift_unknownObjectRelease();
  }

  v10 = v0[8];
  if (v10)
  {
    v11 = objc_opt_self();
    swift_unknownObjectRetain();
    v12 = [v11 defaultCenter];
    [v12 removeObserver_];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C5A159B4()
{
  sub_1C5A15804();

  return swift_deallocClassInstance();
}

uint64_t sub_1C5A15A0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193B70);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v41 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193B78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193B80);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - v12;
  v14 = *(v0 + 24);
  if (v14)
  {

    return v14;
  }

  v47 = v13;
  v48 = v11;
  v49 = v8;
  v50 = v5;
  v14 = sub_1C59ADAC0(MEMORY[0x1E69E7CC0]);
  v15 = 0;
  v16 = 0;
  v17 = *(v0 + 16);
  v45 = (v2 + 8);
  v46 = v17;
  v44 = (v6 + 8);
  v42 = v0;
  v43 = (v10 + 8);
  while (1)
  {
    v51 = v15;
    v18 = *(&unk_1F4513808 + v16 + 32);
    v52 = v46;
    *(swift_allocObject() + 16) = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193B88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193B90);
    sub_1C5924F54(&qword_1EDA46888, &qword_1EC193B88);
    sub_1C5BC8084();

    sub_1C5924F54(&qword_1EDA46928, &qword_1EC193B70);
    v19 = v49;
    sub_1C5BC80C4();
    v20 = v4;
    v21 = v4;
    v22 = v1;
    (*v45)(v21, v1);
    *(swift_allocObject() + 16) = v18;
    sub_1C5924F54(&qword_1EDA46908, &qword_1EC193B78);
    v23 = v47;
    v24 = v50;
    sub_1C5BC8084();

    (*v44)(v19, v24);
    sub_1C5924F54(&qword_1EDA46920, &qword_1EC193B80);
    v25 = v48;
    v26 = sub_1C5BC80B4();
    (*v43)(v23, v25);
    v52 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193B98);
    sub_1C5924F54(&qword_1EDA46910, &qword_1EC193B98);
    v27 = sub_1C5BC8064();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v14;
    v30 = sub_1C5AB97D8(v18);
    v31 = v14[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      break;
    }

    v34 = v29;
    if (v14[3] >= v33)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v14 = v52;
        if (v29)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1C5AF4C78();
        v14 = v52;
        if (v34)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1C5AF1888(v33, isUniquelyReferenced_nonNull_native);
      v35 = sub_1C5AB97D8(v18);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_21;
      }

      v30 = v35;
      v14 = v52;
      if (v34)
      {
LABEL_4:
        *(v14[7] + 8 * v30) = v27;

        goto LABEL_5;
      }
    }

    v14[(v30 >> 6) + 8] |= 1 << v30;
    *(v14[6] + v30) = v18;
    *(v14[7] + 8 * v30) = v27;
    v37 = v14[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_20;
    }

    v14[2] = v39;
LABEL_5:
    v15 = 1;
    v16 = 1u;
    v1 = v22;
    v4 = v20;
    if (v51)
    {
      *(v42 + 24) = v14;

      return v14;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1C5BCBE84();
  __break(1u);
  return result;
}

void *sub_1C5A16040@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1C5BC7D64();
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  result = sub_1C5A164FC(*a1, a2 & 1, v10);
  v9 = v10[1];
  *a3 = v10[0];
  *(a3 + 16) = v9;
  *(a3 + 32) = v10[2];
  *(a3 + 48) = v11;
  return result;
}

void *sub_1C5A164FC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  if (a2)
  {
    v7 = &unk_1F4513750;
  }

  else
  {
    v7 = &unk_1F4513718;
  }

  v8 = v7[2];

  if (v6 != v8 - 1)
  {
    v14 = v7[2];

    sub_1C5A17864();
    swift_allocError();
    *v15 = v14 - 1;
    v15[1] = v6;
    return swift_willThrow();
  }

  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v23 = MEMORY[0x1E69E7CC0];
    result = sub_1C5B8F068(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 1)
    {
      __break(1u);
      goto LABEL_29;
    }

    result = v23;
    v10 = (a1 + 32);
    v11 = v23[2];
    do
    {
      v12 = *v10;
      v24 = result;
      v13 = result[3];
      if (v11 >= v13 >> 1)
      {
        sub_1C5B8F068((v13 > 1), v11 + 1, 1);
        result = v24;
      }

      result[2] = v11 + 1;
      *&result[v11 + 4] = v12;
      ++v10;
      ++v11;
      --v6;
    }

    while (v6);
  }

  v16 = result[2];
  if ((a2 & 1) == 0)
  {
    if (v16)
    {
      if (v16 != 1)
      {
        if (v16 >= 3)
        {
          if (v16 != 3)
          {
            if (v16 >= 5)
            {
              v21 = 0;
              v17 = result[4];
              v18 = result[5];
              v19 = result[6];
              v20 = result[7];
              goto LABEL_27;
            }

            goto LABEL_38;
          }

          goto LABEL_36;
        }

        goto LABEL_34;
      }

      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (!v16)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v16 == 1)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v16 < 3)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v16 == 3)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v16 < 5)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v16 != 5)
  {
    v17 = result[4];
    v18 = result[5];
    v19 = result[6];
    v20 = result[7];
    v21 = result[9];
LABEL_27:
    v22 = result[8];

    *a3 = v17;
    *(a3 + 8) = v18;
    *(a3 + 16) = v19;
    *(a3 + 24) = v20;
    *(a3 + 32) = v22;
    *(a3 + 40) = v21;
    *(a3 + 48) = a2 & 1;
    return result;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1C5A16718(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193B60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = sub_1C5BC7D64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C5A15A0C();
  if (*(v10 + 16) && (v11 = sub_1C5AB97D8(a1 & 1), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {

    if (qword_1EC190510 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v6, qword_1EC1A6970);
    (*(v7 + 16))(v9, v14, v6);
    v15 = sub_1C5BC7D44();
    v16 = sub_1C5BCB4E4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29 = v2;
      v18 = v17;
      v27 = swift_slowAlloc();
      v28 = v3;
      *&v31[0] = v27;
      *v18 = 136315138;
      v30 = a1 & 1;
      v19 = sub_1C5BCAEA4();
      v21 = v5;
      v22 = a1;
      v23 = sub_1C592ADA8(v19, v20, v31);

      *(v18 + 4) = v23;
      a1 = v22;
      v5 = v21;
      _os_log_impl(&dword_1C5922000, v15, v16, "No value publisher found for %s, expected exactly one publisher per dataKind.", v18, 0xCu);
      v24 = v27;
      __swift_destroy_boxed_opaque_existential_0(v27);
      v3 = v28;
      MEMORY[0x1C69510F0](v24, -1, -1);
      v25 = v18;
      v2 = v29;
      MEMORY[0x1C69510F0](v25, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    memset(v31, 0, sizeof(v31));
    v32 = a1 & 1;
    sub_1C5BC7FC4();
    sub_1C5924F54(&qword_1EC193B68, &qword_1EC193B60);
    v13 = sub_1C5BC8064();
    (*(v3 + 8))(v5, v2);
  }

  return v13;
}

uint64_t sub_1C5A16A90()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C5A16AF4()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C5A16B50(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1C5BC7D64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDA46940 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_1EDA5DA48);
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_1C5BC7D44();
  v13 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1C5922000, v12, v13, "WaveformAudioSampler received UIApplication.willEnterForegroundNotification", v14, 2u);
    MEMORY[0x1C69510F0](v14, -1, -1);
  }

  result = (*(v8 + 8))(v10, v7);
  v16 = *(a2 + 80);
  *(a2 + 80) = 0;
  if (v16 == 1)
  {
    v17 = sub_1C5BCB214();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v3;
    sub_1C5AD0FB8(0, 0, v6, &unk_1C5BD9210, v18);
  }

  return result;
}

uint64_t sub_1C5A16DFC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1C5BC7D64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDA46940 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_1EDA5DA48);
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_1C5BC7D44();
  v13 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1C5922000, v12, v13, "WaveformAudioSampler received UIApplication.didEnterBackgroundNotification", v14, 2u);
    MEMORY[0x1C69510F0](v14, -1, -1);
  }

  result = (*(v8 + 8))(v10, v7);
  v16 = *(a2 + 80);
  *(a2 + 80) = 1;
  if ((v16 & 1) == 0)
  {
    v17 = sub_1C5BCB214();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v3;
    sub_1C5AD0FB8(0, 0, v6, &unk_1C5BD9208, v18);
  }

  return result;
}

uint64_t sub_1C5A170A8()
{
  v0 = sub_1C5BC7D64();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDA46940 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EDA5DA48);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_1C5BC7D44();
  v6 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C5922000, v5, v6, "WaveformAudioSampler received mediaServicesWereLostNotification", v7, 2u);
    MEMORY[0x1C69510F0](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return sub_1C5A15410();
}

uint64_t sub_1C5A17248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_1C5BCB214();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;
  v9[5] = a3;

  sub_1C5AD0FB8(0, 0, v7, &unk_1C5BD9220, v9);
}

uint64_t sub_1C5A17358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1C5BC7D64();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5A17418, 0, 0);
}

uint64_t sub_1C5A17418()
{
  if (qword_1EDA46940 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = __swift_project_value_buffer(v3, qword_1EDA5DA48);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1C5BC7D44();
  v6 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C5922000, v5, v6, "WaveformAudioSampler received mediaServicesWereResetNotification", v7, 2u);
    MEMORY[0x1C69510F0](v7, -1, -1);
  }

  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  (*(v9 + 8))(v8, v10);
  if (qword_1EDA490C8 != -1)
  {
    swift_once();
  }

  sub_1C5A15410();
  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_1C5A175DC;

  return sub_1C5A14344();
}

uint64_t sub_1C5A175DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C5A176EC()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C5A17740(uint64_t result)
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

  result = sub_1C5B76528(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v7 + 32), (v6 + 32), 4 * v2);

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

uint64_t sub_1C5A1782C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C5AC9FF4(*a1, *(v2 + 16));
  *a2 = result;
  return result;
}

unint64_t sub_1C5A17864()
{
  result = qword_1EDA4DAF0[0];
  if (!qword_1EDA4DAF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA4DAF0);
  }

  return result;
}

uint64_t sub_1C5A178B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592A748;

  return sub_1C5A156F0(a1, v4, v5, v6);
}

uint64_t sub_1C5A1796C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C592A748;

  return sub_1C5A14884(a1, v4, v5, v6, v7);
}

uint64_t sub_1C5A17A58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C592A748;

  return sub_1C5A13544();
}

uint64_t sub_1C5A17B1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592ABD4;

  return sub_1C5A17358(a1, v4, v5, v6);
}

uint64_t sub_1C5A17C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a1;
  v90 = a2;
  v88 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v85 = v3;
  v87 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1C5BC90F4();
  v4 = *(v82 - 8);
  v5 = MEMORY[0x1EEE9AC00](v82);
  v78 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v69 - v7;
  v8 = sub_1C5BCAB54();
  v80 = *(v8 - 8);
  v81 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VolumeSliderWrapper();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193BC0);
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v69 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193BC8);
  MEMORY[0x1EEE9AC00](v70);
  v77 = &v69 - v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193BD0);
  MEMORY[0x1EEE9AC00](v74);
  v79 = &v69 - v15;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193BD8);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v69 - v16;
  v17 = *(v2 + 1);
  v72 = *v2;
  v94 = v72;
  v73 = v17;
  v95 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
  sub_1C5BCA6B4();
  v86 = v2;
  if (!*(v2 + 2))
  {
    type metadata accessor for NowPlayingRouteObserver();
    sub_1C594F068(&qword_1EDA48458, type metadata accessor for NowPlayingRouteObserver);
    result = sub_1C5BC8C74();
    __break(1u);
    return result;
  }

  v19 = v91;
  v18 = v92;
  v20 = v93;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1C5BC8034();

  v21 = v91;
  if (!v91)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (!v22)
  {

LABEL_5:
    v22 = 0;
  }

  *v12 = v19;
  *(v12 + 1) = v18;
  v12[16] = v20;
  *(v12 + 3) = v22;
  v23 = v10[6];
  *&v12[v23] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  swift_storeEnumTagMultiPayload();
  v24 = &v12[v10[7]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = &v12[v10[8]];
  _s17TransportControlsCMa();
  sub_1C594F068(&qword_1EDA4A620, _s17TransportControlsCMa);
  *v25 = sub_1C5BC8C84();
  v25[1] = v26;
  v27 = &v12[v10[9]];
  _s12PresentationCMa();
  sub_1C594F068(&qword_1EDA4AF70, _s12PresentationCMa);
  *v27 = sub_1C5BC8324();
  v27[8] = v28 & 1;
  v29 = v89;
  v30 = v86;
  v31 = v76;
  sub_1C594C704(v76);
  v32 = v78;
  v33 = v82;
  (*(v4 + 104))(v78, *MEMORY[0x1E697F600], v82);
  LOBYTE(v24) = sub_1C5BC8274();
  v34 = *(v4 + 8);
  v34(v32, v33);
  v34(v31, v33);
  v35 = v80;
  v36 = MEMORY[0x1E6981DB8];
  if ((v24 & 1) == 0)
  {
    v36 = MEMORY[0x1E6981DF0];
  }

  v37 = v75;
  v38 = v81;
  (*(v80 + 104))(v75, *v36, v81);
  v39 = v71;
  (*(v35 + 32))(&v71[*(v69 + 36)], v37, v38);
  sub_1C5A19EC8(v12, v39);
  v40 = v72;
  LOBYTE(v91) = v72;
  v41 = v73;
  v92 = v73;
  sub_1C5BCA694();
  if (v94)
  {
    v42 = 1.05;
  }

  else
  {
    v42 = 1.0;
  }

  sub_1C5BCABD4();
  v44 = v43;
  v46 = v45;
  v47 = v77;
  sub_1C59E7D34(v39, v77, &qword_1EC193BC0);
  v48 = v47 + *(v70 + 36);
  *v48 = v42;
  *(v48 + 8) = v42;
  *(v48 + 16) = v44;
  *(v48 + 24) = v46;
  v49 = sub_1C5BCAB14();
  LOBYTE(v91) = v40;
  v92 = v41;
  sub_1C5BCA694();
  v50 = v94;
  v51 = v47;
  v52 = v79;
  sub_1C59E7D34(v51, v79, &qword_1EC193BC8);
  v53 = v52 + *(v74 + 36);
  *v53 = v49;
  *(v53 + 8) = v50;
  LOBYTE(v49) = sub_1C5BC98F4();
  sub_1C5BC8174();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v84;
  sub_1C59E7D34(v52, v84, &qword_1EC193BD0);
  v63 = v62 + *(v83 + 36);
  *v63 = v49;
  *(v63 + 8) = v55;
  *(v63 + 16) = v57;
  *(v63 + 24) = v59;
  *(v63 + 32) = v61;
  *(v63 + 40) = 0;
  LOBYTE(v91) = v40;
  v92 = v41;
  sub_1C5BCA694();
  LOBYTE(v91) = v94;
  v65 = v87;
  v64 = v88;
  (*(v88 + 16))(v87, v30, v29);
  v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = *(v29 + 16);
  (*(v64 + 32))(v67 + v66, v65, v29);
  sub_1C5A19FB0();
  sub_1C5BCA344();

  return sub_1C5A1A274(v62);
}

uint64_t sub_1C5A18548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C59498C4(*(a1 + 32));
  v10 = *(a1 + 8);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
  sub_1C5BCA694();
  v8 = (v7 & 1) == 0;
  v9 = 1;
  (*(a3 + 272))(&v8, a2, a3);
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5A1860C@<X0>(uint64_t a1@<X8>)
{
  sub_1C5BCA684();
  *a1 = v6;
  *(a1 + 8) = v7;
  type metadata accessor for NowPlayingRouteObserver();
  sub_1C594F068(&qword_1EDA48458, type metadata accessor for NowPlayingRouteObserver);
  *(a1 + 16) = sub_1C5BC8C84();
  *(a1 + 24) = v2;
  *(a1 + 32) = sub_1C5BC8C84();
  *(a1 + 40) = v3;
  v4 = *(_s17VolumeControlViewVMa() + 44);
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  return swift_storeEnumTagMultiPayload();
}

id sub_1C5A18718()
{
  v0 = sub_1C5BC90F4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v29 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x1E6970A48]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193C28);
  sub_1C5BC96B4();
  [v7 addTarget:v29[0] action:sel_onTouchDown_ forControlEvents:1];

  sub_1C5BC96B4();
  [v7 addTarget:v29[0] action:sel_onTouchUpInside_ forControlEvents:64];

  [v7 setExpansionFactor_];
  [v7 setHitRectInsets_];
  type metadata accessor for VolumeSliderWrapper();
  sub_1C594C704(v6);
  (*(v1 + 104))(v4, *MEMORY[0x1E697F600], v0);
  v8 = sub_1C5BC8274();
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v6, v0);
  if (v8)
  {
    if (qword_1EDA47960 != -1)
    {
      swift_once();
    }

    v10 = &qword_1EDA5DA90;
  }

  else
  {
    if (qword_1EC1905F0 != -1)
    {
      swift_once();
    }

    v10 = &qword_1EC1A6A58;
  }

  v11 = v10[1];
  v12 = v10[2];
  v13 = *v10;
  v14 = v11;
  v15 = v12;
  [v7 setTintColor_];
  v16 = v7;
  [v16 setMinimumTrackTintColor_];
  [v16 setMaximumTrackTintColor_];

  v17 = [objc_opt_self() mainBundle];
  v18 = sub_1C5949F2C();
  v20 = v19;

  v29[0] = v18;
  v29[1] = v20;
  MEMORY[0x1C694F170](46, 0xE100000000000000);
  MEMORY[0x1C694F170](0xD000000000000017, 0x80000001C5BF7C50);
  v21 = sub_1C5BCAE44();

  [v16 setAccessibilityIdentifier_];

  v22 = [objc_opt_self() configurationWithPointSize_];
  v23 = sub_1C5BCAE44();
  v24 = objc_opt_self();
  v25 = [v24 systemImageNamed:v23 withConfiguration:v22];

  [v16 setMinimumValueImage_];
  v26 = sub_1C5BCAE44();
  v27 = [v24 systemImageNamed:v26 withConfiguration:v22];

  [v16 setMaximumValueImage_];
  return v16;
}

void sub_1C5A18BE8(void *a1)
{
  v2 = v1;
  v4 = sub_1C5BC8F34();
  v49 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193C20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v47 - v7;
  v9 = sub_1C5BC90F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setGroupRoute_];
  v50 = type metadata accessor for VolumeSliderWrapper();
  sub_1C594C704(v12);
  v13 = v1[1];
  v14 = *(v1 + 16);
  v51 = *v1;
  v52 = v13;
  v53 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C0);
  MEMORY[0x1C694EA50](&v54, v15);
  v16 = v54;
  (*(v10 + 32))(v8, v12, v9);
  v17 = (*(v10 + 88))(v8, v9);
  v18 = *MEMORY[0x1E697F600];
  if (v16)
  {
    if (v17 != v18)
    {
      v47 = v4;
      if (qword_1EC1905F8 != -1)
      {
        swift_once();
      }

      v25 = qword_1EC1A6A78;
      v26 = qword_1EC1A6A80;
      v27 = *(v10 + 8);
      v28 = qword_1EC1A6A70;
      v23 = v25;
      v29 = v26;
      v22 = v28;
      v24 = v29;
      v27(v8, v9);
      v4 = v47;
      goto LABEL_14;
    }

    if (qword_1EC1905E8 != -1)
    {
      swift_once();
    }

    v19 = &qword_1EC1A6A40;
LABEL_10:
    v20 = v19[1];
    v21 = v19[2];
    v22 = *v19;
    v23 = v20;
    v24 = v21;
LABEL_14:
    v30 = v50;
    goto LABEL_18;
  }

  if (v17 == v18)
  {
    if (qword_1EDA47960 != -1)
    {
      swift_once();
    }

    v19 = &qword_1EDA5DA90;
    goto LABEL_10;
  }

  v47 = v4;
  if (qword_1EC1905F0 != -1)
  {
    swift_once();
  }

  v31 = qword_1EC1A6A60;
  v32 = qword_1EC1A6A68;
  v33 = *(v10 + 8);
  v22 = qword_1EC1A6A58;
  v23 = v31;
  v24 = v32;
  v33(v8, v9);
  v30 = v50;
  v4 = v47;
LABEL_18:
  [a1 setTintColor_];
  [a1 setMinimumTrackTintColor_];
  [a1 setMaximumTrackTintColor_];
  v34 = (v2 + v30[9]);
  v35 = *v34;
  v36 = *(v34 + 8);

  if ((v36 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v37 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v38 = v48;
    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v49 + 8))(v38, v4);
    v35 = v51;
  }

  swift_getKeyPath();
  v51 = v35;
  sub_1C594F068(&qword_1EDA4AF70, _s12PresentationCMa);
  sub_1C5BC7B74();

  v39 = *(v35 + 17);

  if (v39 != 1)
  {
    v44 = 1;
LABEL_29:
    [a1 _setIsOffScreen_];

    return;
  }

  v40 = *(v2 + v30[8]);
  if (v40)
  {
    swift_beginAccess();
    if (*(v40 + 58))
    {
      v41 = (v2 + v30[7]);
      v42 = *v41;
      if (*(v41 + 8) == 1)
      {
        v43 = *v41;
      }

      else
      {

        sub_1C5BCB4E4();
        v45 = sub_1C5BC9844();
        sub_1C5BC7C54();

        v46 = v48;
        sub_1C5BC8F24();
        swift_getAtKeyPath();
        sub_1C5950E44(v42, 0);
        (*(v49 + 8))(v46, v4);
        v43 = v54;
      }

      v44 = v43 != 2;
    }

    else
    {
      v44 = 0;
    }

    goto LABEL_29;
  }

  _s17TransportControlsCMa();
  sub_1C594F068(&qword_1EDA4A620, _s17TransportControlsCMa);
  sub_1C5BC8C74();
  __break(1u);
}

void sub_1C5A192BC(void *a1)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 accessibilityContrast];

  if (v3)
  {
    if (qword_1EC1905F8 != -1)
    {
      swift_once();
    }

    v4 = &qword_1EC1A6A70;
  }

  else
  {
    if (qword_1EC1905E8 != -1)
    {
      swift_once();
    }

    v4 = &qword_1EC1A6A40;
  }

  v5 = v4[1];
  v6 = v4[2];
  v9 = *v4;
  v7 = v5;
  v8 = v6;
  [a1 setTintColor_];
  [a1 setMinimumTrackTintColor_];
  [a1 setMaximumTrackTintColor_];
}

uint64_t sub_1C5A19458(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C0);
  sub_1C5BCA824();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = objc_opt_self();
  aBlock[4] = a4;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C596D09C;
  aBlock[3] = a5;
  v10 = _Block_copy(aBlock);
  v11 = a1;

  [v9 _animateUsingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion_];
  _Block_release(v10);
}

void sub_1C5A195B0(void *a1)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 accessibilityContrast];

  if (v3)
  {
    if (qword_1EC1905F0 != -1)
    {
      swift_once();
    }

    v4 = &qword_1EC1A6A58;
  }

  else
  {
    if (qword_1EDA47960 != -1)
    {
      swift_once();
    }

    v4 = &qword_1EDA5DA90;
  }

  v5 = v4[1];
  v6 = v4[2];
  v9 = *v4;
  v7 = v5;
  v8 = v6;
  [a1 setTintColor_];
  [a1 setMinimumTrackTintColor_];
  [a1 setMaximumTrackTintColor_];
}

uint64_t sub_1C5A19720(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

uint64_t sub_1C5A19780()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C5A19800@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  type metadata accessor for VolumeSliderWrapper.Coordinator();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  *a1 = v6;
}

uint64_t sub_1C5A1986C(uint64_t a1, char a2, int a3, int a4, id a5)
{
  [a5 sizeThatFits_];
  [a5 hitRectInsets];
  if (a2)
  {
    return 0x4024000000000000;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_1C5A198F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C594F068(qword_1EDA49378, type metadata accessor for VolumeSliderWrapper);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C5A19984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C594F068(qword_1EDA49378, type metadata accessor for VolumeSliderWrapper);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C5A19A18()
{
  sub_1C594F068(qword_1EDA49378, type metadata accessor for VolumeSliderWrapper);
  sub_1C5BC9264();
  __break(1u);
}

uint64_t sub_1C5A19A70()
{
  sub_1C592535C(0, &qword_1EDA45D98);
  if (qword_1EC190670 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5BCB704();

  v1 = sub_1C5BCB704();
  if (qword_1EC190678 != -1)
  {
    swift_once();
  }

  result = sub_1C5BCB704();
  qword_1EDA5DA90 = v0;
  qword_1EDA5DA98 = v1;
  qword_1EDA5DAA0 = result;
  return result;
}

uint64_t sub_1C5A19B54()
{
  v0 = objc_opt_self();
  v1 = [v0 labelColor];
  v2 = [v0 whiteColor];
  sub_1C592535C(0, &qword_1EDA45D98);
  if (qword_1EC190678 != -1)
  {
    swift_once();
  }

  result = sub_1C5BCB704();
  qword_1EC1A6A40 = v1;
  qword_1EC1A6A48 = v2;
  qword_1EC1A6A50 = result;
  return result;
}

id sub_1C5A19C60(uint64_t a1, SEL *a2, void *a3, void *a4, void *a5)
{
  v9 = objc_opt_self();
  v10 = [v9 *a2];
  v11 = [v9 *a2];
  result = [v9 systemFillColor];
  *a3 = v10;
  *a4 = v11;
  *a5 = result;
  return result;
}

void sub_1C5A19D1C()
{
  sub_1C5A1A43C(319, &qword_1EDA4E188, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1C594EFD4();
    if (v1 <= 0x3F)
    {
      sub_1C5BC8C94();
      if (v2 <= 0x3F)
      {
        sub_1C592632C(319, &qword_1EDA46750, MEMORY[0x1E697F610]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for VolumeSliderWrapper()
{
  result = qword_1EDA49328;
  if (!qword_1EDA49328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5A19EC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VolumeSliderWrapper();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5A19F2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(_s17VolumeControlViewVMa() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1C5A18548(v4, v1, v2);
}

unint64_t sub_1C5A19FB0()
{
  result = qword_1EC193BE0;
  if (!qword_1EC193BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193BD8);
    sub_1C5A1A03C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193BE0);
  }

  return result;
}

unint64_t sub_1C5A1A03C()
{
  result = qword_1EC193BE8;
  if (!qword_1EC193BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193BD0);
    sub_1C5A1A0C8();
    sub_1C5A1A210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193BE8);
  }

  return result;
}

unint64_t sub_1C5A1A0C8()
{
  result = qword_1EC193BF0;
  if (!qword_1EC193BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193BC8);
    sub_1C5A1A154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193BF0);
  }

  return result;
}

unint64_t sub_1C5A1A154()
{
  result = qword_1EC193BF8;
  if (!qword_1EC193BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193BC0);
    sub_1C594F068(&qword_1EDA49370, type metadata accessor for VolumeSliderWrapper);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193BF8);
  }

  return result;
}

unint64_t sub_1C5A1A210()
{
  result = qword_1EDA46340;
  if (!qword_1EDA46340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46340);
  }

  return result;
}

uint64_t sub_1C5A1A274(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193BD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C5A1A304()
{
  sub_1C5A1A43C(319, &qword_1EDA45FA8, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_1C5A1A490();
    if (v1 <= 0x3F)
    {
      sub_1C592632C(319, &qword_1EDA46750, MEMORY[0x1E697F610]);
      if (v2 <= 0x3F)
      {
        sub_1C594CC0C();
        if (v3 <= 0x3F)
        {
          sub_1C5A1A4F8();
          if (v4 <= 0x3F)
          {
            sub_1C592632C(319, &qword_1EDA46798, _s12PresentationCMa);
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

void sub_1C5A1A43C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C5A1A490()
{
  if (!qword_1EC193C00)
  {
    sub_1C592535C(255, &qword_1EC193C08);
    v0 = sub_1C5BCB804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC193C00);
    }
  }
}

void sub_1C5A1A4F8()
{
  if (!qword_1EC193C18)
  {
    _s17TransportControlsCMa();
    sub_1C594F068(&qword_1EDA4A620, _s17TransportControlsCMa);
    v0 = sub_1C5BC8C94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC193C18);
    }
  }
}

uint64_t sub_1C5A1A5DC()
{
  v0 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C5BCA5A4();
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  v3 = sub_1C5BCAE94();
  v5 = v4;
  result = sub_1C5BC9CB4();
  qword_1EDA4E4A8 = result;
  unk_1EDA4E4B0 = v7;
  byte_1EDA4E4B8 = v8 & 1;
  qword_1EDA4E4C0 = v9;
  qword_1EDA4E498 = v3;
  unk_1EDA4E4A0 = v5;
  return result;
}

uint64_t static TrailingBadge.explicit.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDA4E490 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EDA4E4A0;
  v2 = qword_1EDA4E4A8;
  v3 = unk_1EDA4E4B0;
  v4 = byte_1EDA4E4B8;
  v5 = qword_1EDA4E4C0;
  *a1 = qword_1EDA4E498;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;

  sub_1C59AEE34(v2, v3, v4);
}

uint64_t sub_1C5A1A818()
{
  v0 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C5BCA5A4();
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  v3 = sub_1C5BCAE94();
  v5 = v4;
  result = sub_1C5BC9CB4();
  qword_1EC193C40 = result;
  unk_1EC193C48 = v7;
  byte_1EC193C50 = v8 & 1;
  qword_1EC193C58 = v9;
  qword_1EC193C30 = v3;
  *algn_1EC193C38 = v5;
  return result;
}

uint64_t static TrailingBadge.koreaAgeRestricted.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC190608 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_1EC193C38;
  v2 = qword_1EC193C40;
  v3 = unk_1EC193C48;
  v4 = byte_1EC193C50;
  v5 = qword_1EC193C58;
  *a1 = qword_1EC193C30;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;

  sub_1C59AEE34(v2, v3, v4);
}

uint64_t sub_1C5A1AA60()
{
  v0 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v1 - 8);
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDA5DD00;
  sub_1C5BCA5F4();
  sub_1C5BCADC4();
  v3 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  v4 = sub_1C5BCAE94();
  v6 = v5;
  result = sub_1C5BC9CB4();
  qword_1EC193C70 = result;
  unk_1EC193C78 = v8;
  byte_1EC193C80 = v9 & 1;
  qword_1EC193C88 = v10;
  qword_1EC193C60 = v4;
  *algn_1EC193C68 = v6;
  return result;
}

uint64_t static TrailingBadge.dolby.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC190610 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_1EC193C68;
  v2 = qword_1EC193C70;
  v3 = unk_1EC193C78;
  v4 = byte_1EC193C80;
  v5 = qword_1EC193C88;
  *a1 = qword_1EC193C60;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;

  sub_1C59AEE34(v2, v3, v4);
}

uint64_t sub_1C5A1ACA0()
{
  v0 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v1 - 8);
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDA5DD00;
  sub_1C5BCA5F4();
  sub_1C5BCADC4();
  v3 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  v4 = sub_1C5BCAE94();
  v6 = v5;
  result = sub_1C5BC9CB4();
  qword_1EC193CA0 = result;
  unk_1EC193CA8 = v8;
  byte_1EC193CB0 = v9 & 1;
  qword_1EC193CB8 = v10;
  qword_1EC193C90 = v4;
  *algn_1EC193C98 = v6;
  return result;
}

uint64_t static TrailingBadge.lossless.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC190618 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_1EC193C98;
  v2 = qword_1EC193CA0;
  v3 = unk_1EC193CA8;
  v4 = byte_1EC193CB0;
  v5 = qword_1EC193CB8;
  *a1 = qword_1EC193C90;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;

  sub_1C59AEE34(v2, v3, v4);
}

uint64_t sub_1C5A1AEE8()
{
  v0 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C5BCA5A4();
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  v3 = sub_1C5BCAE94();
  v5 = v4;
  result = sub_1C5BC9CB4();
  qword_1EC193CD0 = result;
  unk_1EC193CD8 = v7;
  byte_1EC193CE0 = v8 & 1;
  qword_1EC193CE8 = v9;
  qword_1EC193CC0 = v3;
  *algn_1EC193CC8 = v5;
  return result;
}

uint64_t static TrailingBadge.favorite.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC190620 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_1EC193CC8;
  v2 = qword_1EC193CD0;
  v3 = unk_1EC193CD8;
  v4 = byte_1EC193CE0;
  v5 = qword_1EC193CE8;
  *a1 = qword_1EC193CC0;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;

  sub_1C59AEE34(v2, v3, v4);
}

uint64_t sub_1C5A1B11C()
{
  v0 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v1 - 8);
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDA5DD00;
  sub_1C5BCA5F4();
  sub_1C5BCADC4();
  v3 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  v4 = sub_1C5BCAE94();
  v6 = v5;
  result = sub_1C5BC9CB4();
  qword_1EC193D00 = result;
  unk_1EC193D08 = v8;
  byte_1EC193D10 = v9 & 1;
  qword_1EC193D18 = v10;
  qword_1EC193CF0 = v4;
  *algn_1EC193CF8 = v6;
  return result;
}

uint64_t static TrailingBadge.immersive.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC190628 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_1EC193CF8;
  v2 = qword_1EC193D00;
  v3 = unk_1EC193D08;
  v4 = byte_1EC193D10;
  v5 = qword_1EC193D18;
  *a1 = qword_1EC193CF0;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;

  sub_1C59AEE34(v2, v3, v4);
}

uint64_t sub_1C5A1B360()
{
  v0 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C5BCA5A4();
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  v3 = sub_1C5BCAE94();
  v5 = v4;
  result = sub_1C5BC9CB4();
  qword_1EC193D30 = result;
  unk_1EC193D38 = v7;
  byte_1EC193D40 = v8 & 1;
  qword_1EC193D48 = v9;
  qword_1EC193D20 = v3;
  *algn_1EC193D28 = v5;
  return result;
}

uint64_t static TrailingBadge.navigation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC190630 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_1EC193D28;
  v2 = qword_1EC193D30;
  v3 = unk_1EC193D38;
  v4 = byte_1EC193D40;
  v5 = qword_1EC193D48;
  *a1 = qword_1EC193D20;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;

  sub_1C59AEE34(v2, v3, v4);
}

uint64_t sub_1C5A1B5A0()
{
  v0 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C5BCA5A4();
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  v3 = sub_1C5BCAE94();
  v5 = v4;
  result = sub_1C5BC9CB4();
  qword_1EC193D60 = result;
  unk_1EC193D68 = v7;
  byte_1EC193D70 = v8 & 1;
  qword_1EC193D78 = v9;
  qword_1EC193D50 = v3;
  *algn_1EC193D58 = v5;
  return result;
}

uint64_t static TrailingBadge.shuffle.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC190638 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_1EC193D58;
  v2 = qword_1EC193D60;
  v3 = unk_1EC193D68;
  v4 = byte_1EC193D70;
  v5 = qword_1EC193D78;
  *a1 = qword_1EC193D50;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;

  sub_1C59AEE34(v2, v3, v4);
}

uint64_t static TrailingBadge.== infix(_:_:)(void *a1, void *a2)
{
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1C5BCBDE4() & 1) == 0)
  {
    return 0;
  }

  return sub_1C5BC9C04();
}

uint64_t sub_1C5A1B89C(void *a1, void *a2)
{
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1C5BCBDE4() & 1) == 0)
  {
    return 0;
  }

  return sub_1C5BC9C04();
}

uint64_t TrailingBadge.customized(_:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t, void, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *(a2 + 16) = a1(v2[2], v2[3], *(v2 + 32), v2[5]);
  *(a2 + 24) = v6;
  *(a2 + 32) = v7 & 1;
  *(a2 + 40) = v8;
  *a2 = v5;
  *(a2 + 8) = v4;
}

uint64_t TrailingBadgesView.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;

  *(a2 + 8) = sub_1C5A1BA50(v4);
  *(a2 + 16) = v5;
  *(a2 + 24) = v6 & 1;
  *(a2 + 32) = v7;
  v8 = sub_1C5A1BC74(a1);
  v10 = v9;

  *(a2 + 40) = v8;
  *(a2 + 48) = v10;
  return result;
}

uint64_t sub_1C5A1BA50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);

  sub_1C59AEE34(v3, v4, v5);

  sub_1C59AEE34(v3, v4, v5);

  v27 = v3;
  v26 = v5;
  v6 = v1 - 1;
  if (v1 != 1)
  {
    v7 = a1 + 120;
    v8 = v4;
    v9 = v26;
    v10 = v3;
    do
    {
      v29 = v6;
      v11 = *(v7 - 8);
      v30 = v11;
      v13 = *(v7 - 24);
      v12 = *(v7 - 16);
      v31 = v12;
      v14 = v10;

      sub_1C59AEE34(v13, v12, v11);

      v15 = sub_1C5BC9BF4();
      v17 = v16;
      LOBYTE(v12) = v18;
      v19 = sub_1C5BC9BF4();
      v28 = v20;
      v22 = v21;
      v23 = v12 & 1;
      v3 = v19;
      v24 = v17;
      LOBYTE(v17) = v22;
      sub_1C5953BD8(v15, v24, v23);

      sub_1C5953BD8(v14, v8, v9 & 1);

      sub_1C5953BD8(v13, v31, v30);

      v7 += 48;
      v9 = v17;
      v8 = v28;
      v10 = v3;
      v6 = v29 - 1;
    }

    while (v29 != 1);
  }

  sub_1C5953BD8(v27, v4, v26);

  return v3;
}

uint64_t sub_1C5A1BC74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);

  v15 = v3;
  v14 = v4;
  sub_1C59AEE34(v3, v4, v5);

  v7 = v1 - 1;
  if (v1 != 1)
  {
    v8 = a1 + 120;
    do
    {
      v9 = *(v8 - 8);
      v10 = *(v8 - 24);
      v11 = *(v8 - 16);
      v12 = *(v8 - 32);
      v16 = *(v8 - 40);

      sub_1C59AEE34(v10, v11, v9);

      MEMORY[0x1C694F170](8236, 0xE200000000000000);

      MEMORY[0x1C694F170](v16, v12);

      sub_1C5953BD8(v10, v11, v9);

      v8 += 48;
      --v7;
    }

    while (v7);
  }

  sub_1C5953BD8(v15, v14, v5);

  return v6;
}

uint64_t TrailingBadgesView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193D80);
  v17 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - v3;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193D88);
  MEMORY[0x1EEE9AC00](v19);
  v6 = &v17 - v5;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v18 = *(v1 + 40);
  v11 = *(v1 + 48);
  v12 = &v4[*(v2 + 36)];
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C78) + 28);
  v14 = *MEMORY[0x1E69816C8];
  v15 = sub_1C5BCA5D4();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = swift_getKeyPath();
  *v4 = v7;
  *(v4 + 1) = v8;
  v4[16] = v9;
  *(v4 + 3) = v10;

  sub_1C59AEE34(v7, v8, v9);

  sub_1C5BC9024();
  sub_1C5A1C6A4();
  sub_1C5BCA014();

  sub_1C5924EF4(v4, &qword_1EC193D80);
  v21 = v18;
  v22 = v11;
  sub_1C594A23C();
  sub_1C5BC8A34();

  return sub_1C5924EF4(v6, &qword_1EC193D88);
}

uint64_t MCUINamespace<A>.appending(badges:customized:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, void, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v75 = a3;
  v6 = sub_1C5BC9C54();
  v70 = *(v6 - 8);
  v71 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193D98);
  v73 = *(v8 - 8);
  v74 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v58 - v9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193DA0);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v58 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193DA8);
  MEMORY[0x1EEE9AC00](v72);
  v69 = &v58 - v11;
  v12 = *v3;
  v78 = v3[1];
  v79 = v12;
  v77 = *(v3 + 16);
  v76 = v3[3];
  v64 = a1;
  v13 = sub_1C5A1BA50(a1);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1C59AEE34(v13, v14, v16 & 1);

  v20 = a2(v13, v15, v17 & 1, v19);
  v22 = v21;
  v24 = v23;
  sub_1C5953BD8(v13, v15, v17 & 1);

  sub_1C5953BD8(v13, v15, v17 & 1);

  v25 = *(a1 + 16);
  sub_1C59AEE34(v20, v22, v24 & 1);

  v26 = v25 == 0;
  if (v25)
  {
    v27 = 0xA200000000000000;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  v63 = v27;
  if (v25)
  {
    v28 = 9273570;
  }

  else
  {
    v28 = 0;
  }

  if (v26)
  {
    v29 = 0xE000000000000000;
  }

  else
  {
    v29 = 0xA300000000000000;
  }

  v30 = sub_1C5BC9BF4();
  v60 = v30;
  v32 = v31;
  v59 = v31;
  v34 = v33;
  sub_1C5953BD8(v20, v22, v24 & 1);

  sub_1C5953BD8(v20, v22, v24 & 1);

  v80 = v28;
  v81 = v29;
  sub_1C59AEE34(v30, v32, v34 & 1);
  v62 = sub_1C594A23C();

  v35 = sub_1C5BC9CA4();
  v37 = v36;
  LOBYTE(v30) = v38;
  v39 = sub_1C5BC9BF4();
  v41 = v40;
  LOBYTE(v32) = v42;
  v44 = v43;
  sub_1C5953BD8(v35, v37, v30 & 1);

  v80 = v39;
  v81 = v41;
  LOBYTE(v37) = v32 & 1;
  v82 = v32 & 1;
  v83 = v44;
  v45 = v34;
  v61 = v34;
  v46 = v65;
  v47 = v60;
  v48 = v59;
  sub_1C5BC9C44();
  sub_1C5953BD8(v47, v48, v45 & 1);

  v49 = v66;
  sub_1C5BC9D64();
  (*(v70 + 8))(v46, v71);
  sub_1C5953BD8(v39, v41, v37);

  v50 = v67;
  v51 = &v67[*(v68 + 36)];
  v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C78) + 28);
  v53 = *MEMORY[0x1E69816C8];
  v54 = sub_1C5BCA5D4();
  (*(*(v54 - 8) + 104))(v51 + v52, v53, v54);
  *v51 = swift_getKeyPath();
  (*(v73 + 32))(v50, v49, v74);
  sub_1C5A1C794();
  v55 = v69;
  sub_1C5BCA024();
  sub_1C5924EF4(v50, &qword_1EC193DA0);
  v80 = sub_1C5A1BC74(v64);
  v81 = v56;
  sub_1C5BC8A34();
  sub_1C5953BD8(v47, v48, v61 & 1);

  return sub_1C5924EF4(v55, &qword_1EC193DA8);
}

unint64_t sub_1C5A1C6A4()
{
  result = qword_1EC193D90;
  if (!qword_1EC193D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193D80);
    sub_1C5A1C730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193D90);
  }

  return result;
}

unint64_t sub_1C5A1C730()
{
  result = qword_1EDA4E198;
  if (!qword_1EDA4E198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4E198);
  }

  return result;
}

unint64_t sub_1C5A1C794()
{
  result = qword_1EDA46590;
  if (!qword_1EDA46590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193DA0);
    swift_getOpaqueTypeConformance2();
    sub_1C5A1C730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46590);
  }

  return result;
}

uint64_t sub_1C5A1C878(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C5A1C8C0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C5A1C90C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1C5A1C954(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5A1C9B0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1C59B745C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C5A1CAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for ContentLookupItem();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t ContentLookup.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v12 = type metadata accessor for ContentLookupItem();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  *(v15 + 5) = a5;
  result = (*(v13 + 32))(&v15[v14], a1, v12);
  *a6 = sub_1C5A1CE24;
  a6[1] = v15;
  return result;
}

uint64_t sub_1C5A1CC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v20 = a7;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v10 = type metadata accessor for ContentLookupItem();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, a1, a3);
  (*(v11 + 16))(v14, a2, v10);
  return sub_1C5A1CEE0(v16, v14, a3, v20);
}

uint64_t sub_1C5A1CE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for ContentLookupItem() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1C5A1CC80(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_1C5A1CEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = *(type metadata accessor for ContentLookup1() + 52);
  v7 = type metadata accessor for ContentLookupItem();
  return (*(*(v7 - 8) + 32))(a4 + v6, a2, v7);
}

uint64_t ContentLookup.init<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v12 = type metadata accessor for ContentLookupItem();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v16 = type metadata accessor for ContentLookupItem();
  v17 = *(v16 - 8);
  v18 = (v15 + v14 + *(v17 + 80)) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a3;
  *(v19 + 3) = a4;
  *(v19 + 4) = a5;
  *(v19 + 5) = a6;
  *(v19 + 6) = a7;
  *(v19 + 7) = a8;
  (*(v13 + 32))(&v19[v15], a1, v12);
  result = (*(v17 + 32))(&v19[v18], a2, v16);
  *a9 = sub_1C5A1D3C8;
  a9[1] = v19;
  return result;
}

uint64_t sub_1C5A1D178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v28[1] = a5;
  v28[2] = a8;
  v32 = a9;
  v33 = a6;
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v34 = a4;
  v35 = a6;
  v36 = a7;
  v37 = a10;
  v14 = type metadata accessor for ContentLookupItem();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v28 - v16;
  v34 = a4;
  v35 = a5;
  v36 = a7;
  v37 = a8;
  v18 = type metadata accessor for ContentLookupItem();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v28 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25, v29, a4, v23);
  (*(v19 + 16))(v21, v30, v18);
  (*(v15 + 16))(v17, v31, v14);
  return sub_1C5A1D508(v25, v21, v17, a4, v32);
}

uint64_t sub_1C5A1D3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  v12 = *(v2 + 16);
  v13 = *(v2 + 32);
  v7 = *(type metadata accessor for ContentLookupItem() - 8);
  v8 = *(v7 + 64);
  v9 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v10 = *(type metadata accessor for ContentLookupItem() - 8);
  return sub_1C5A1D178(a1, v2 + v9, v2 + ((v9 + v8 + *(v10 + 80)) & ~*(v10 + 80)), v12, *(&v12 + 1), v13, *(&v13 + 1), v5, a2, v6);
}

uint64_t sub_1C5A1D508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v7 = type metadata accessor for ContentLookup2();
  v8 = *(v7 + 68);
  v9 = type metadata accessor for ContentLookupItem();
  (*(*(v9 - 8) + 32))(a5 + v8, a2, v9);
  v10 = *(v7 + 72);
  v11 = type metadata accessor for ContentLookupItem();
  return (*(*(v11 - 8) + 32))(a5 + v10, a3, v11);
}

uint64_t ContentLookup.init<A, B, C>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v28 = type metadata accessor for ContentLookupItem();
  v14 = *(v28 - 8);
  v15 = *(v14 + 64);
  v24 = a8;
  v25 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v27 = type metadata accessor for ContentLookupItem();
  v16 = *(v27 - 8);
  v17 = *(v16 + 64);
  v18 = (v25 + v15 + *(v16 + 80)) & ~*(v16 + 80);
  v19 = type metadata accessor for ContentLookupItem();
  v20 = *(v19 - 8);
  v21 = (v18 + v17 + *(v20 + 80)) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a4;
  *(v22 + 3) = a5;
  *(v22 + 4) = a6;
  *(v22 + 5) = a7;
  *(v22 + 6) = v24;
  *(v22 + 7) = a10;
  *(v22 + 8) = a11;
  *(v22 + 9) = a12;
  (*(v14 + 32))(&v22[v25], a1, v28);
  (*(v16 + 32))(&v22[v18], a2, v27);
  result = (*(v20 + 32))(&v22[v21], a3, v19);
  *a9 = sub_1C5A1DBDC;
  a9[1] = v22;
  return result;
}

uint64_t sub_1C5A1D8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v43 = a9;
  v44 = a8;
  v36 = a1;
  v37 = a7;
  v39 = a2;
  v40 = a3;
  v34 = a6;
  v35 = a12;
  v41 = a13;
  v42 = a4;
  v32 = a11;
  v45 = a5;
  v46 = a8;
  v47 = a10;
  v48 = a13;
  v38 = type metadata accessor for ContentLookupItem();
  v16 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v18 = &v32 - v17;
  v45 = a5;
  v46 = a7;
  v47 = a10;
  v48 = a12;
  v33 = type metadata accessor for ContentLookupItem();
  v19 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v21 = &v32 - v20;
  v45 = a5;
  v46 = a6;
  v47 = a10;
  v48 = a11;
  v22 = type metadata accessor for ContentLookupItem();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v32 - v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v32 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v36, a5, v27);
  (*(v23 + 16))(v25, v39, v22);
  (*(v19 + 16))(v21, v40, v33);
  (*(v16 + 16))(v18, v42, v38);
  return sub_1C5A1DDA8(v29, v25, v21, v18, a5, v43);
}

uint64_t sub_1C5A1DBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 32);
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  v7 = *(v2 + 72);
  v19 = *(v2 + 16);
  v20 = *(v2 + 40);
  v8 = *(type metadata accessor for ContentLookupItem() - 8);
  v9 = *(v8 + 64);
  v10 = (*(v8 + 80) + 80) & ~*(v8 + 80);
  v11 = *(type metadata accessor for ContentLookupItem() - 8);
  v12 = *(v11 + 80);
  v13 = v9 + v12;
  v14 = *(v11 + 64);
  v15 = (v10 + v13) & ~v12;
  v16 = *(type metadata accessor for ContentLookupItem() - 8);
  return sub_1C5A1D8CC(a1, v2 + v10, v2 + v15, v2 + ((v15 + v14 + *(v16 + 80)) & ~*(v16 + 80)), v19, *(&v19 + 1), v4, v20, a2, *(&v20 + 1), v5, v6, v7);
}

uint64_t sub_1C5A1DDA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v7 = type metadata accessor for ContentLookup3();
  v8 = v7[21];
  v9 = type metadata accessor for ContentLookupItem();
  (*(*(v9 - 8) + 32))(a6 + v8, a2, v9);
  v10 = v7[22];
  v11 = type metadata accessor for ContentLookupItem();
  (*(*(v11 - 8) + 32))(a6 + v10, a3, v11);
  v12 = v7[23];
  v13 = type metadata accessor for ContentLookupItem();
  return (*(*(v13 - 8) + 32))(a6 + v12, a4, v13);
}

uint64_t ContentLookup.init<A, B, C, D>(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v42 = type metadata accessor for ContentLookupItem();
  v40 = *(v42 - 8);
  v16 = *(v40 + 64);
  v17 = a5;
  v36 = (*(v40 + 80) + 96) & ~*(v40 + 80);
  v39 = type metadata accessor for ContentLookupItem();
  v18 = *(v39 - 8);
  v19 = *(v18 + 80);
  v20 = v16 + v19;
  v21 = *(v18 + 64);
  v22 = (v36 + v20) & ~v19;
  v33 = v22;
  v37 = type metadata accessor for ContentLookupItem();
  v23 = *(v37 - 8);
  v24 = *(v23 + 80);
  v25 = v21 + v24;
  v26 = *(v23 + 64);
  v27 = (v22 + v25) & ~v24;
  v32 = v27;
  v34 = type metadata accessor for ContentLookupItem();
  v28 = *(v34 - 8);
  v29 = (v27 + v26 + *(v28 + 80)) & ~*(v28 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = v17;
  *(v30 + 3) = a6;
  *(v30 + 4) = a7;
  *(v30 + 5) = a8;
  *(v30 + 6) = a10;
  *(v30 + 7) = a11;
  *(v30 + 8) = a12;
  *(v30 + 9) = a13;
  *(v30 + 10) = a14;
  *(v30 + 11) = a15;
  (*(v40 + 32))(&v30[v36], a1, v42);
  (*(v18 + 32))(&v30[v33], a2, v39);
  (*(v23 + 32))(&v30[v32], a3, v37);
  result = (*(v28 + 32))(&v30[v29], a4, v34);
  *a9 = sub_1C5A1E6A4;
  a9[1] = v30;
  return result;
}

uint64_t sub_1C5A1E29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v40 = a8;
  v53 = a9;
  v54 = a7;
  v52 = a5;
  v47 = a2;
  v48 = a3;
  v44 = a1;
  v38 = a14;
  v42 = a15;
  v49 = a16;
  v50 = a4;
  v36 = a13;
  v45 = a10;
  v51 = a11;
  v55 = a6;
  v56 = a11;
  v57 = a12;
  v58 = a16;
  v46 = type metadata accessor for ContentLookupItem();
  v43 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v41 = &v36 - v18;
  v55 = a6;
  v56 = a10;
  v57 = a12;
  v58 = a15;
  v39 = type metadata accessor for ContentLookupItem();
  v19 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v37 = &v36 - v20;
  v55 = a6;
  v56 = a8;
  v57 = a12;
  v58 = a14;
  v21 = type metadata accessor for ContentLookupItem();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v36 - v23;
  v55 = a6;
  v56 = v54;
  v57 = a12;
  v58 = a13;
  v25 = type metadata accessor for ContentLookupItem();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v36 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v36 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31, v44, a6);
  (*(v26 + 16))(v29, v47, v25);
  (*(v22 + 16))(v24, v48, v21);
  v33 = v37;
  (*(v19 + 16))(v37, v50, v39);
  v34 = v41;
  (*(v43 + 16))(v41, v52, v46);
  return sub_1C5A1E8E4(v31, v29, v24, v33, v34, a6, v53);
}

uint64_t sub_1C5A1E6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 40);
  v23 = *(v2 + 32);
  v4 = *(v2 + 64);
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v26 = *(v2 + 16);
  v27 = *(v2 + 48);
  v8 = *(type metadata accessor for ContentLookupItem() - 8);
  v9 = *(v8 + 64);
  v10 = (*(v8 + 80) + 96) & ~*(v8 + 80);
  v11 = *(type metadata accessor for ContentLookupItem() - 8);
  v12 = *(v11 + 80);
  v13 = v9 + v12;
  v14 = *(v11 + 64);
  v15 = (v10 + v13) & ~v12;
  v16 = *(type metadata accessor for ContentLookupItem() - 8);
  v17 = *(v16 + 80);
  v18 = v14 + v17;
  v19 = *(v16 + 64);
  v20 = (v15 + v18) & ~v17;
  v21 = *(type metadata accessor for ContentLookupItem() - 8);
  return sub_1C5A1E29C(a1, v2 + v10, v2 + v15, v2 + v20, v2 + ((v20 + v19 + *(v21 + 80)) & ~*(v21 + 80)), v26, *(&v26 + 1), v23, a2, v3, v27, *(&v27 + 1), v4, v5, v6, v7);
}

uint64_t sub_1C5A1E8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  v7 = type metadata accessor for ContentLookup4();
  v8 = v7[25];
  v9 = type metadata accessor for ContentLookupItem();
  (*(*(v9 - 8) + 32))(a7 + v8, a2, v9);
  v10 = v7[26];
  v11 = type metadata accessor for ContentLookupItem();
  (*(*(v11 - 8) + 32))(a7 + v10, a3, v11);
  v12 = v7[27];
  v13 = type metadata accessor for ContentLookupItem();
  (*(*(v13 - 8) + 32))(a7 + v12, a4, v13);
  v14 = v7[28];
  v15 = type metadata accessor for ContentLookupItem();
  return (*(*(v15 - 8) + 32))(a7 + v14, a5, v15);
}

uint64_t sub_1C5A1EAEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - v10;
  (*v2)(v9);
  v12 = *(a2 + 40);
  sub_1C593EDC0(v8, v4, v12);
  v13 = *(v5 + 8);
  v13(v8, v4);
  sub_1C593EDC0(v11, v4, v12);
  return (v13)(v11, v4);
}

uint64_t ContentLookup1.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  v5 = *(a1 + 24);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v27 - v9;
  v10 = sub_1C5BCB804();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v30 = &v27 - v15;
  v16 = *(a1 + 16);
  v17 = v3 + *(a1 + 52);
  v18 = *(a1 + 32);
  if (sub_1C5BCADB4())
  {
    v19 = *(a1 + 40);
    v32 = v16;
    v33 = v5;
    v34 = v18;
    v35 = v19;
    v20 = type metadata accessor for ContentLookupItem();
    v21 = v28;
    sub_1C593EDC0(v17 + *(v20 + 52), v5, v19);
    v22 = v29;
    sub_1C593EDC0(v21, v5, v19);
    (*(v6 + 8))(v21, v5);
    (*(v6 + 32))(v14, v22, v5);
    (*(v6 + 56))(v14, 0, 1, v5);
    v23 = v30;
    (*(v11 + 16))(v30, v14, v10);
    v24 = *(v11 + 8);
    v24(v14, v10);
  }

  else
  {
    (*(v6 + 56))(v14, 1, 1, v5);
    v23 = v30;
    (*(v11 + 16))(v30, v14, v10);
    v24 = *(v11 + 8);
    v24(v14, v10);
    v19 = *(a1 + 40);
  }

  v36 = v19;
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v23, v10, WitnessTable);
  return (v24)(v23, v10);
}

uint64_t ContentLookup2.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v63 = a2;
  v53 = *(*(a1 + 32) - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v52 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v51 = &v51 - v8;
  v9 = *(v7 + 24);
  v59 = v10;
  v11 = sub_1C5BC92D4();
  v58 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v57 = &v51 - v13;
  v56 = *(v9 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v55 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v54 = &v51 - v17;
  v18 = *(a1 + 16);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v22;
  v23 = sub_1C5BC92D4();
  v60 = *(v23 - 8);
  v61 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v51 - v24;
  (*(v19 + 16))(v21, v3, v18);
  v26 = v3;
  v27 = v3 + *(a1 + 68);
  v28 = *(a1 + 40);
  if (sub_1C5BCADB4())
  {
    (*(v19 + 8))(v21, v18);
    v29 = *(a1 + 48);
    v68 = v18;
    v69 = v9;
    v70 = v28;
    v71 = v29;
    v30 = type metadata accessor for ContentLookupItem();
    v31 = v54;
    sub_1C593EDC0(v27 + *(v30 + 52), v9, v29);
    v32 = v55;
    sub_1C593EDC0(v31, v9, v29);
    v33 = *(a1 + 56);
    v34 = v57;
    sub_1C5950E54(v32, v9);
    v64 = v29;
    v65 = v33;
    v35 = v62;
    swift_getWitnessTable();
    sub_1C5950E54(v34, v35);
    (*(v58 + 8))(v34, v35);
    v36 = *(v56 + 8);
    v36(v32, v9);
    v36(v31, v9);
  }

  else
  {
    v56 = v9;
    v37 = v26 + *(a1 + 72);
    v38 = sub_1C5BCADB4();
    (*(v19 + 8))(v21, v18);
    if (v38)
    {
      v33 = *(a1 + 56);
      v39 = v59;
      v68 = v18;
      v69 = v59;
      v70 = v28;
      v71 = v33;
      v40 = type metadata accessor for ContentLookupItem();
      v41 = v51;
      sub_1C593EDC0(v37 + *(v40 + 52), v39, v33);
      v42 = v52;
      sub_1C593EDC0(v41, v39, v33);
      v29 = *(a1 + 48);
      v43 = v57;
      sub_1C5941738(v42, v56, v39);
      v66 = v29;
      v67 = v33;
      v44 = v62;
      swift_getWitnessTable();
      sub_1C5950E54(v43, v44);
      (*(v58 + 8))(v43, v44);
      v45 = *(v53 + 8);
      v45(v42, v39);
      v45(v41, v39);
    }

    else
    {
      v29 = *(a1 + 48);
      v33 = *(a1 + 56);
      v76 = v29;
      v77 = v33;
      v46 = v62;
      WitnessTable = swift_getWitnessTable();
      sub_1C5941738(WitnessTable, v46, MEMORY[0x1E6981E70]);
    }
  }

  v74 = v29;
  v75 = v33;
  v72 = swift_getWitnessTable();
  v73 = MEMORY[0x1E6981E60];
  v48 = v61;
  v49 = swift_getWitnessTable();
  sub_1C593EDC0(v25, v48, v49);
  return (*(v60 + 8))(v25, v48);
}

uint64_t ContentLookup3.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v92 = a2;
  v5 = *(a1 + 40);
  v6 = sub_1C5BC92D4();
  v79 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v78 = &v73 - v8;
  v77 = v5;
  v74 = *(v5 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v73 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v76 = &v73 - v12;
  v75 = *(*(a1 + 32) - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v83 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v73 - v15;
  v16 = *(a1 + 24);
  v86 = v17;
  v18 = sub_1C5BC92D4();
  v85 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v84 = &v73 - v20;
  WitnessTable = *(v16 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v80 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v87 = &v73 - v24;
  v25 = *(a1 + 16);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v29;
  v91 = v6;
  v90 = sub_1C5BC92D4();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v73 - v31;
  (*(v26 + 16))(v28, v3, v25);
  v32 = v3;
  v33 = v3 + *(a1 + 84);
  v34 = *(a1 + 48);
  if (sub_1C5BCADB4())
  {
    (*(v26 + 8))(v28, v25);
    v35 = *(a1 + 56);
    v106 = v25;
    v107 = v16;
    v108 = v34;
    v109 = v35;
    v36 = type metadata accessor for ContentLookupItem();
    v37 = v87;
    sub_1C593EDC0(v33 + *(v36 + 52), v16, v35);
    v38 = v80;
    sub_1C593EDC0(v37, v16, v35);
    v39 = *(a1 + 64);
    v40 = v84;
    sub_1C5950E54(v38, v16);
    v96 = v35;
    v97 = v39;
    swift_getWitnessTable();
    v93 = *(a1 + 72);
    v94 = v93;
    v95 = MEMORY[0x1E6981E60];
    swift_getWitnessTable();
    v41 = v88;
    sub_1C5950E54(v40, v30);
    (*(v85 + 8))(v40, v30);
    v42 = *(WitnessTable + 8);
    v42(v38, v16);
    v42(v87, v16);
    v43 = MEMORY[0x1E6981E60];
  }

  else
  {
    v93 = v16;
    v87 = v30;
    v44 = v32 + *(a1 + 88);
    if (sub_1C5BCADB4())
    {
      (*(v26 + 8))(v28, v25);
      v39 = *(a1 + 64);
      v45 = v86;
      v106 = v25;
      v107 = v86;
      v108 = v34;
      v109 = v39;
      v46 = type metadata accessor for ContentLookupItem();
      v47 = v82;
      sub_1C593EDC0(v44 + *(v46 + 52), v45, v39);
      v48 = v83;
      sub_1C593EDC0(v47, v45, v39);
      v35 = *(a1 + 56);
      v49 = v84;
      sub_1C5941738(v48, v93, v45);
      v100 = v35;
      v101 = v39;
      v50 = v87;
      WitnessTable = swift_getWitnessTable();
      v93 = *(a1 + 72);
      v98 = v93;
      v43 = MEMORY[0x1E6981E60];
      v99 = MEMORY[0x1E6981E60];
      swift_getWitnessTable();
      v41 = v88;
      sub_1C5950E54(v49, v50);
      (*(v85 + 8))(v49, v50);
      v51 = *(v75 + 8);
      v51(v83, v45);
      v51(v82, v45);
    }

    else
    {
      v52 = v32 + *(a1 + 92);
      v53 = sub_1C5BCADB4();
      v54 = (*(v26 + 8))(v28, v25);
      v93 = *(a1 + 72);
      if (v53)
      {
        v106 = v25;
        v55 = v77;
        v107 = v77;
        v108 = v34;
        v56 = v93;
        v109 = v93;
        v57 = type metadata accessor for ContentLookupItem();
        v58 = v76;
        sub_1C593EDC0(v52 + *(v57 + 52), v55, v56);
        v59 = v73;
        sub_1C593EDC0(v58, v55, v56);
        v60 = v78;
        v43 = MEMORY[0x1E6981E60];
        sub_1C5950E54(v59, v55);
        v35 = *(a1 + 56);
        v39 = *(a1 + 64);
        v104 = v35;
        v105 = v39;
        v61 = v87;
        v86 = swift_getWitnessTable();
        v102 = v56;
        v103 = v43;
        v62 = v91;
        swift_getWitnessTable();
        v41 = v88;
        sub_1C5941738(v60, v61, v62);
        (*(v79 + 8))(v60, v62);
        v63 = *(v74 + 8);
        v63(v59, v55);
        v63(v76, v55);
      }

      else
      {
        v64 = v78;
        v65 = v93;
        v43 = MEMORY[0x1E6981E60];
        sub_1C5941738(v54, v77, MEMORY[0x1E6981E70]);
        v35 = *(a1 + 56);
        v39 = *(a1 + 64);
        v118 = v35;
        v119 = v39;
        v66 = v87;
        swift_getWitnessTable();
        v116 = v65;
        v117 = v43;
        v67 = v91;
        swift_getWitnessTable();
        v41 = v88;
        sub_1C5941738(v64, v66, v67);
        (*(v79 + 8))(v64, v67);
      }
    }
  }

  v114 = v35;
  v115 = v39;
  v68 = swift_getWitnessTable();
  v112 = v93;
  v113 = v43;
  v69 = swift_getWitnessTable();
  v110 = v68;
  v111 = v69;
  v70 = v90;
  v71 = swift_getWitnessTable();
  sub_1C593EDC0(v41, v70, v71);
  return (*(v89 + 8))(v41, v70);
}

uint64_t ContentLookup4.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v145 = a2;
  v115 = *(*(a1 + 48) - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v118 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v117 = &v115 - v8;
  v9 = *(v7 + 40);
  v122 = v10;
  v11 = sub_1C5BC92D4();
  v120 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v119 = &v115 - v13;
  v121 = v9;
  v116 = *(v9 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v125 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v124 = &v115 - v17;
  v123 = *(*(a1 + 32) - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v128 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v127 = &v115 - v20;
  v21 = *(a1 + 24);
  v131 = v22;
  v23 = sub_1C5BC92D4();
  v130 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v129 = &v115 - v24;
  v143 = v25;
  v144 = v11;
  v26 = sub_1C5BC92D4();
  v133 = *(v26 - 8);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v132 = &v115 - v28;
  v126 = *(v21 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v135 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v134 = &v115 - v32;
  v33 = *(a1 + 16);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v36 = &v115 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = v37;
  v38 = sub_1C5BC92D4();
  v140 = *(v38 - 8);
  v141 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v139 = &v115 - v39;
  (*(v34 + 16))(v36, v3, v33);
  v40 = v3 + *(a1 + 100);
  v41 = *(a1 + 56);
  if (sub_1C5BCADB4())
  {
    (*(v34 + 8))(v36, v33);
    v42 = *(a1 + 64);
    v170 = v33;
    v171 = v21;
    v172 = v41;
    v173 = v42;
    v43 = type metadata accessor for ContentLookupItem();
    v44 = v134;
    sub_1C593EDC0(v40 + *(v43 + 52), v21, v42);
    v45 = v135;
    sub_1C593EDC0(v44, v21, v42);
    v46 = *(a1 + 72);
    v47 = v129;
    sub_1C5950E54(v45, v21);
    v136 = v42;
    v137 = v46;
    v150 = v42;
    v151 = v46;
    v48 = v143;
    WitnessTable = swift_getWitnessTable();
    v50 = *(a1 + 80);
    v138 = *(a1 + 88);
    v148 = v50;
    v149 = v138;
    v51 = swift_getWitnessTable();
    v52 = v132;
    sub_1C5950E54(v47, v48);
    (*(v130 + 8))(v47, v48);
    v146 = WitnessTable;
    v147 = v51;
    v53 = v50;
    v54 = v142;
    swift_getWitnessTable();
    v55 = v139;
    sub_1C5950E54(v52, v54);
    (*(v133 + 8))(v52, v54);
    v56 = *(v126 + 8);
    v56(v135, v21);
    v56(v134, v21);
  }

  else
  {
    v138 = v21;
    v57 = v3 + *(a1 + 104);
    if (sub_1C5BCADB4())
    {
      (*(v34 + 8))(v36, v33);
      v58 = *(a1 + 72);
      v137 = v58;
      v59 = v131;
      v170 = v33;
      v171 = v131;
      v172 = v41;
      v173 = v58;
      v60 = type metadata accessor for ContentLookupItem();
      v61 = v127;
      sub_1C593EDC0(v57 + *(v60 + 52), v59, v58);
      v62 = v128;
      sub_1C593EDC0(v61, v59, v58);
      v136 = *(a1 + 64);
      v63 = v136;
      v64 = v129;
      sub_1C5941738(v62, v138, v59);
      v156 = v63;
      v157 = v58;
      v65 = v143;
      v66 = swift_getWitnessTable();
      v53 = *(a1 + 80);
      v138 = *(a1 + 88);
      v154 = v53;
      v155 = v138;
      v67 = swift_getWitnessTable();
      v68 = v132;
      sub_1C5950E54(v64, v65);
      (*(v130 + 8))(v64, v65);
      v152 = v66;
      v153 = v67;
      v69 = v142;
      swift_getWitnessTable();
      v55 = v139;
      sub_1C5950E54(v68, v69);
      (*(v133 + 8))(v68, v69);
      v70 = *(v123 + 8);
      v70(v128, v59);
      v70(v127, v59);
    }

    else
    {
      v71 = v3 + *(a1 + 108);
      if (sub_1C5BCADB4())
      {
        (*(v34 + 8))(v36, v33);
        v72 = *(a1 + 80);
        v73 = v121;
        v170 = v33;
        v171 = v121;
        v172 = v41;
        v173 = v72;
        v74 = type metadata accessor for ContentLookupItem();
        v75 = v124;
        sub_1C593EDC0(v71 + *(v74 + 52), v73, v72);
        v76 = v125;
        sub_1C593EDC0(v75, v73, v72);
        v77 = *(a1 + 88);
        v78 = v119;
        sub_1C5950E54(v76, v73);
        v79 = *(a1 + 72);
        v136 = *(a1 + 64);
        v137 = v79;
        v162 = v136;
        v163 = v79;
        v80 = v143;
        v81 = swift_getWitnessTable();
        v160 = v72;
        v161 = v77;
        v138 = v77;
        v82 = v144;
        v83 = swift_getWitnessTable();
        v84 = v132;
        sub_1C5941738(v78, v80, v82);
        (*(v120 + 8))(v78, v82);
        v158 = v81;
        v159 = v83;
        v53 = v72;
        v85 = v142;
        swift_getWitnessTable();
        v55 = v139;
        sub_1C5950E54(v84, v85);
        (*(v133 + 8))(v84, v85);
        v86 = *(v116 + 8);
        v86(v125, v73);
        v86(v124, v73);
      }

      else
      {
        v87 = v3 + *(a1 + 112);
        v88 = sub_1C5BCADB4();
        (*(v34 + 8))(v36, v33);
        if (v88)
        {
          v89 = *(a1 + 88);
          v90 = v122;
          v170 = v33;
          v171 = v122;
          v172 = v41;
          v173 = v89;
          v91 = type metadata accessor for ContentLookupItem();
          v92 = v117;
          sub_1C593EDC0(v87 + *(v91 + 52), v90, v89);
          v93 = v118;
          sub_1C593EDC0(v92, v90, v89);
          v94 = *(a1 + 80);
          v95 = v119;
          sub_1C5941738(v93, v121, v90);
          v96 = *(a1 + 72);
          v136 = *(a1 + 64);
          v137 = v96;
          v168 = v136;
          v169 = v96;
          v97 = v143;
          v98 = swift_getWitnessTable();
          v166 = v94;
          v167 = v89;
          v138 = v89;
          v99 = v144;
          v100 = swift_getWitnessTable();
          v101 = v132;
          sub_1C5941738(v95, v97, v99);
          (*(v120 + 8))(v95, v99);
          v164 = v98;
          v165 = v100;
          v53 = v94;
          v102 = v142;
          swift_getWitnessTable();
          v55 = v139;
          sub_1C5950E54(v101, v102);
          (*(v133 + 8))(v101, v102);
          v103 = *(v115 + 8);
          v103(v118, v90);
          v103(v117, v90);
        }

        else
        {
          v109 = *(a1 + 72);
          v136 = *(a1 + 64);
          v137 = v109;
          v186 = v136;
          v187 = v109;
          v110 = swift_getWitnessTable();
          v53 = *(a1 + 80);
          v111 = *(a1 + 88);
          v184 = v53;
          v185 = v111;
          v138 = v111;
          v112 = swift_getWitnessTable();
          v182 = v110;
          v183 = v112;
          v113 = v142;
          v114 = swift_getWitnessTable();
          v55 = v139;
          sub_1C5941738(v114, v113, MEMORY[0x1E6981E70]);
        }
      }
    }
  }

  v180 = v136;
  v181 = v137;
  v104 = swift_getWitnessTable();
  v178 = v53;
  v179 = v138;
  v105 = swift_getWitnessTable();
  v176 = v104;
  v177 = v105;
  v174 = swift_getWitnessTable();
  v175 = MEMORY[0x1E6981E60];
  v106 = v141;
  v107 = swift_getWitnessTable();
  sub_1C593EDC0(v55, v106, v107);
  return (*(v140 + 8))(v55, v106);
}

uint64_t sub_1C5A21068(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}