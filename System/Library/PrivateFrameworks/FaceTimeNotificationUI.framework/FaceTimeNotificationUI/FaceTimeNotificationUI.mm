uint64_t sub_24AA11360@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84FF8, &qword_24AAB69A8);
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v27);
  v6 = &KeyPath - v5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85000, &qword_24AAB69B0);
  v7 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v9 = &KeyPath - v8;
  v10 = sub_24AAB42F4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85008, &qword_24AAB69B8);
  v12 = *(v24 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v24);
  v16 = &KeyPath - v15;
  v33 = *a1;
  if (*(v33 + 16) < 7uLL)
  {
    v29 = v33;
    KeyPath = swift_getKeyPath();
    v31 = *(a1 + 1);
    v32 = *(a1 + 24);
    v30 = a1[4];
    v20 = swift_allocObject();
    v21 = *(a1 + 1);
    *(v20 + 16) = *a1;
    *(v20 + 32) = v21;
    *(v20 + 48) = a1[4];

    sub_24AA1695C(&v33, v28, &qword_27EF85010, &qword_24AABB840);
    sub_24AA1695C(&v31, v28, &qword_27EF85018, &qword_24AAB69F0);
    sub_24AA1695C(&v30, v28, &qword_27EF85020, &qword_24AAB69F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85010, &qword_24AABB840);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85028, &unk_24AAB6A00);
    sub_24AA16A68(&qword_27EF85030, &qword_27EF85010, &qword_24AABB840);
    sub_24AA165C8();
    sub_24AA16A68(&qword_27EF85040, &qword_27EF85028, &unk_24AAB6A00);
    sub_24AAB4C74();
    v22 = v27;
    (*(v3 + 16))(v9, v6, v27);
    swift_storeEnumTagMultiPayload();
    sub_24AA16A68(&qword_27EF85048, &qword_27EF85008, &qword_24AAB69B8);
    sub_24AA1661C();
    sub_24AAB42B4();
    return (*(v3 + 8))(v6, v22);
  }

  else
  {
    v17 = a1[4];
    MEMORY[0x28223BE20](v14);

    sub_24AAB41B4();
    LODWORD(v31) = 0;
    sub_24AA166D4(&qword_27EF85058, MEMORY[0x277CE0428]);
    sub_24AAB5574();
    sub_24AA1661C();
    sub_24AAB4DC4();
    v18 = v24;
    (*(v12 + 16))(v9, v16, v24);
    swift_storeEnumTagMultiPayload();
    sub_24AA16A68(&qword_27EF85048, &qword_27EF85008, &qword_24AAB69B8);
    sub_24AAB42B4();
    return (*(v12 + 8))(v16, v18);
  }
}

uint64_t sub_24AA118FC(uint64_t *a1)
{
  v10 = *a1;
  v6 = v10;
  swift_getKeyPath();
  v8 = *(a1 + 1);
  v9 = *(a1 + 24);
  v7 = a1[4];
  v2 = swift_allocObject();
  v3 = *(a1 + 1);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = a1[4];

  sub_24AA1695C(&v10, v5, &qword_27EF85010, &qword_24AABB840);
  sub_24AA1695C(&v8, v5, &qword_27EF85018, &qword_24AAB69F0);
  sub_24AA1695C(&v7, v5, &qword_27EF85020, &qword_24AAB69F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85010, &qword_24AABB840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85028, &unk_24AAB6A00);
  sub_24AA16A68(&qword_27EF85030, &qword_27EF85010, &qword_24AABB840);
  sub_24AA165C8();
  sub_24AA16A68(&qword_27EF85040, &qword_27EF85028, &unk_24AAB6A00);
  return sub_24AAB4C74();
}

double sub_24AA11AD0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(*(v3 + 8) + 16))(&v7, v4);
  v5 = v8;
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_24AA11B40@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84E98, &qword_24AAB66A8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37[-v8];
  v10 = type metadata accessor for CustomViewControl(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24AA16768(a1, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85060, &unk_24AABB850);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v9, 0, 1, v10);
    sub_24AA15CA8(v9, v14);
    v17 = &v14[*(v10 + 44)];
    v18 = *(v17 + 1);
    *&v39 = (*v17)(v14);
    v42 = 0;
    sub_24AA167CC();
    sub_24AAB42B4();
    sub_24AA15D0C(v14);
  }

  else
  {
    v16(v9, 1, 1, v10);
    sub_24AA169C4(v9, &qword_27EF84E98, &qword_24AAB66A8);
    v19 = a1[3];
    v20 = a1[4];
    v21 = __swift_project_boxed_opaque_existential_1(a1, v19);
    v45[3] = v19;
    v45[4] = *(v20 + 16);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v45);
    (*(*(v19 - 8) + 16))(boxed_opaque_existential_1Tm, v21, v19);
    v43[0] = swift_getKeyPath();
    v43[1] = 0;
    v44 = 0;
    v45[5] = 0x4041800000000000;
    sub_24AA158F8(v43, &v39);
    v42 = 1;
    sub_24AA167CC();
    sub_24AAB42B4();
    sub_24AA16820(v43);
  }

  v23 = a1[3];
  v24 = __swift_project_boxed_opaque_existential_1(a1, v23);
  v45[0] = v23;
  v25 = __swift_allocate_boxed_opaque_existential_1Tm(v43);
  result = (*(*(v23 - 8) + 16))(v25, v24, v23);
  v27 = *(*a2 + 16);
  if (v27)
  {
    v28 = *a2 + 40 * v27;
    v29 = *(v28 + 16);
    v30 = __swift_project_boxed_opaque_existential_1((v28 - 8), v29);
    v38[3] = v29;
    v31 = __swift_allocate_boxed_opaque_existential_1Tm(v38);
    (*(*(v29 - 8) + 16))(v31, v30, v29);
    sub_24AA168B4(v43, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85070, &qword_24AAB6A10);
    if (swift_dynamicCast())
    {
      v32 = *(&v40 + 1);
      v33 = v41;
      __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
      v34 = sub_24AA71DB8(v38, v32, v33);
      __swift_destroy_boxed_opaque_existential_1Tm(&v39);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      if (v27 <= 6 && (v34 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
      sub_24AA169C4(&v39, &qword_27EF85078, &qword_24AAB6A18);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      if (v27 < 7)
      {
LABEL_8:
        v35 = 0;
        v36 = 1;
LABEL_11:
        sub_24AA1695C(v46, &v39, &qword_27EF85080, &qword_24AAB6A20);
        sub_24AA1695C(&v39, a3, &qword_27EF85080, &qword_24AAB6A20);
        *(a3 + 80) = 0;
        *(a3 + 88) = v36;
        *(a3 + 89) = v35;
        sub_24AA169C4(v46, &qword_27EF85080, &qword_24AAB6A20);
        return sub_24AA169C4(&v39, &qword_27EF85080, &qword_24AAB6A20);
      }
    }

    v36 = 0;
    v35 = 1;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AA12010@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = *(v1 + 32);
  *a1 = sub_24AAB4104();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84FF0, &qword_24AAB69A0);
  return sub_24AA11360(v6, a1 + *(v4 + 44));
}

uint64_t sub_24AA1207C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = sub_24AAB2CD4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24AAB4ED4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_24AAB2B84();
  v54 = *(v56 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x28223BE20](v56);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CE8, &qword_24AAB85F0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - v13;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84DE0, &qword_24AAB65E0);
  v15 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84DE8, &qword_24AAB65E8);
  v52 = *(v18 - 8);
  v53 = v18;
  v19 = *(v52 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v47 - v20;
  sub_24AA125C8(v1, v17);
  v22 = v1[6];
  v23 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v22);
  v24 = sub_24AAA9504(v22, *(v23 + 8));
  v26 = v25;
  v27 = v2[8];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  v28 = v11[9];
  *&v14[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84DF0, &qword_24AAB6650);
  swift_storeEnumTagMultiPayload();
  v29 = &v14[v11[10]];
  *v29 = v24;
  v29[1] = v26;
  v30 = &v14[v11[12]];
  *v30 = v27;
  *(v30 + 1) = v27;
  v30[16] = 0;
  v31 = &v14[v11[13]];
  v32 = sub_24AA15478();
  v33 = sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0);
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v50 = v21;
  v34 = v49;
  v48 = v32;
  sub_24AAB47E4();
  sub_24AA169C4(v14, &qword_27EF84CE8, &qword_24AAB85F0);
  sub_24AA169C4(v17, &qword_27EF84DE0, &qword_24AAB65E0);
  v36 = v2[6];
  v35 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v36);
  (*(*(v35 + 8) + 16))(v36);
  sub_24AAB2B14();
  if (qword_27EF84C50 != -1)
  {
    swift_once();
  }

  v37 = qword_27EF919A8;
  sub_24AAB2CC4();
  v59 = sub_24AAB4F14();
  v60 = v38;
  sub_24AA15894();
  v39 = sub_24AAB4774();
  v41 = v40;
  v43 = v42;
  (*(v54 + 8))(v34, v56);
  v59 = v58;
  v60 = v11;
  v61 = v48;
  v62 = v33;
  swift_getOpaqueTypeConformance2();
  v44 = v53;
  v45 = v50;
  sub_24AAB4854();
  sub_24AA158E8(v39, v41, v43 & 1);

  return (*(v52 + 8))(v45, v44);
}

uint64_t sub_24AA125C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84E58, &qword_24AAB6680);
  v3 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v65 = v60 - v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84E28, &qword_24AAB6668);
  v5 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v63 = v60 - v6;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84E88, &qword_24AAB6698);
  v7 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v9 = v60 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84E90, &qword_24AAB66A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v60 - v12);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84E18, &qword_24AAB6660);
  v14 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v16 = v60 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84E98, &qword_24AAB66A8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v60 - v19;
  v21 = type metadata accessor for CustomViewControl(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AA16768((a1 + 3), &v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EA0, &unk_24AAB66B0);
  v26 = swift_dynamicCast();
  v27 = *(v22 + 56);
  if (v26)
  {
    v27(v20, 0, 1, v21);
    sub_24AA15CA8(v20, v25);
    v28 = &v25[*(v21 + 44)];
    v29 = *(v28 + 1);
    *v13 = (*v28)(v25);
    swift_storeEnumTagMultiPayload();
    sub_24AA15614();

    sub_24AAB42B4();
    sub_24AA1695C(v16, v9, &qword_27EF84E18, &qword_24AAB6660);
    swift_storeEnumTagMultiPayload();
    sub_24AA15588();
    sub_24AA156F8();
    sub_24AAB42B4();

    sub_24AA169C4(v16, &qword_27EF84E18, &qword_24AAB6660);
    return sub_24AA15D0C(v25);
  }

  v60[1] = v10;
  v61 = v13;
  v62 = v16;
  v64 = v9;
  v31 = v67;
  v27(v20, 1, 1, v21);
  sub_24AA169C4(v20, &qword_27EF84E98, &qword_24AAB66A8);
  sub_24AA16768((a1 + 3), v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EA8, &unk_24AABBAD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v79 = 0;
    v77 = 0u;
    v78 = 0u;
    v32 = v64;
    goto LABEL_9;
  }

  v32 = v64;
  if (!*(&v78 + 1))
  {
LABEL_9:
    sub_24AA169C4(&v77, &qword_27EF84EB0, &unk_24AAB66C0);
    goto LABEL_10;
  }

  sub_24AA15A64(&v77, &v71);
  v33 = *(&v72 + 1);
  v34 = v73;
  __swift_project_boxed_opaque_existential_1(&v71, *(&v72 + 1));
  v35 = *((*(v34 + 16))(v33, v34) + 16);

  if (v35)
  {
    v36 = *(&v72 + 1);
    v37 = v73;
    __swift_project_boxed_opaque_existential_1(&v71, *(&v72 + 1));
    v38 = (*(v37 + 24))(v36, v37);
    if ((v38 & 1) == 0)
    {
      v52 = MEMORY[0x28223BE20](v38);
      v60[-2] = &v71;
      v60[-1] = a1;
      MEMORY[0x28223BE20](v52);
      v60[-2] = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EB8, &unk_24AAB8780);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84ED8, &qword_24AAB6708);
      sub_24AA15964();
      sub_24AA15A84();
      v53 = v63;
      sub_24AAB4624();
      v54 = *(&v72 + 1);
      v55 = v73;
      __swift_project_boxed_opaque_existential_1(&v71, *(&v72 + 1));
      LOBYTE(v54) = (*(*(v55 + 8) + 32))(v54);
      KeyPath = swift_getKeyPath();
      v57 = swift_allocObject();
      *(v57 + 16) = v54 & 1;
      v58 = (v53 + *(v66 + 36));
      *v58 = KeyPath;
      v58[1] = sub_24AA16AF8;
      v58[2] = v57;
      sub_24AA1695C(v53, v61, &qword_27EF84E28, &qword_24AAB6668);
      swift_storeEnumTagMultiPayload();
      sub_24AA15614();
      v59 = v62;
      sub_24AAB42B4();
      sub_24AA1695C(v59, v64, &qword_27EF84E18, &qword_24AAB6660);
      swift_storeEnumTagMultiPayload();
      sub_24AA15588();
      sub_24AA156F8();
      sub_24AAB42B4();
      sub_24AA169C4(v59, &qword_27EF84E18, &qword_24AAB6660);
      sub_24AA169C4(v53, &qword_27EF84E28, &qword_24AAB6668);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v71);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v71);
    v32 = v64;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v71);
  }

LABEL_10:
  sub_24AA158F8(a1, &v71);
  v39 = swift_allocObject();
  v40 = v74;
  *(v39 + 48) = v73;
  *(v39 + 64) = v40;
  *(v39 + 80) = v75;
  v41 = v72;
  *(v39 + 16) = v71;
  *(v39 + 32) = v41;
  MEMORY[0x28223BE20](v39);
  v60[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EB8, &unk_24AAB8780);
  sub_24AA15964();
  v42 = v65;
  sub_24AAB4BB4();
  v43 = sub_24AAB4D64();
  v45 = v44;
  v46 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84E68, &qword_24AAB6688) + 36);
  sub_24AA13234(a1, v46);
  *(v46 + 80) = v43;
  *(v46 + 88) = v45;
  v47 = a1[6];
  v48 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v47);
  LOBYTE(v47) = (*(*(v48 + 8) + 32))(v47);
  v49 = swift_getKeyPath();
  v50 = swift_allocObject();
  *(v50 + 16) = v47 & 1;
  v51 = (v42 + *(v31 + 36));
  *v51 = v49;
  v51[1] = sub_24AA15A4C;
  v51[2] = v50;
  sub_24AA1695C(v42, v32, &qword_27EF84E58, &qword_24AAB6680);
  swift_storeEnumTagMultiPayload();
  sub_24AA15588();
  sub_24AA156F8();
  sub_24AAB42B4();
  return sub_24AA169C4(v42, &qword_27EF84E58, &qword_24AAB6680);
}

uint64_t sub_24AA12FDC(uint64_t a1)
{
  v2 = sub_24AAB4094();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AA16768(a1 + 24, &v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EA0, &unk_24AAB66B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F48, &unk_24AABBAC0);
  if (swift_dynamicCast())
  {
    sub_24AA15A64(&v15, v20);
    v8 = *a1;
    v7 = *(a1 + 8);
    if (*(a1 + 16) == 1)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      v11 = *a1;

      sub_24AAB5134();
      v12 = sub_24AAB44B4();
      sub_24AAB3A54();

      sub_24AAB4084();
      swift_getAtKeyPath();
      sub_24AA15934();
      (*(v3 + 8))(v6, v2);
      v8 = v18;
    }

    v13 = v21;
    v14 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v14 + 16))(&v18, v13, v14);
    v15 = v18;
    LOBYTE(v16) = v19;
    v8(&v15);

    sub_24AA15ED0(v15, *(&v15 + 1), v16);
    return __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    return sub_24AA169C4(&v15, &qword_27EF84F50, &qword_24AAB67C0);
  }
}

double sub_24AA13234@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_24AA16768(a1 + 24, &KeyPath);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EA0, &unk_24AAB66B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EA8, &unk_24AABBAD0);
  if (swift_dynamicCast())
  {
    sub_24AA15A64(v12, v14);
    v3 = v15;
    v4 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v5 = *((*(v4 + 16))(v3, v4) + 16);

    if (v5)
    {
      sub_24AA16768(v14, v10 + 8);
      KeyPath = swift_getKeyPath();
      LOBYTE(v10[0]) = 0;
      v11 = xmmword_24AAB6270;
      v6 = v10[2];
      a2[2] = v10[1];
      a2[3] = v6;
      a2[4] = v11;
      v7 = v10[0];
      *a2 = KeyPath;
      a2[1] = v7;
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      return result;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_24AA169C4(v12, &qword_27EF84EB0, &unk_24AAB66C0);
  }

  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_24AA13394(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v11 = (*(v4 + 16))(v3, v4);
  swift_getKeyPath();
  sub_24AA158F8(a2, v9);
  v5 = swift_allocObject();
  v6 = v9[3];
  *(v5 + 48) = v9[2];
  *(v5 + 64) = v6;
  *(v5 + 80) = v10;
  v7 = v9[1];
  *(v5 + 16) = v9[0];
  *(v5 + 32) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F20, &qword_24AABBE20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EF0, &qword_24AAB6710);
  sub_24AA16A68(&qword_27EF84F28, &qword_27EF84F20, &qword_24AABBE20);
  sub_24AA166D4(&qword_27EF84F30, type metadata accessor for MenuItem);
  sub_24AA15B08();
  return sub_24AAB4C74();
}

uint64_t sub_24AA13530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v46 = a3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F08, &qword_24AAB6718);
  v4 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v6 = &v37[-v5];
  v7 = sub_24AAB2B84();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F38, &unk_24AAB6780);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37[-v13];
  v15 = sub_24AAB4C64();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v37[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for MenuItem();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v37[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24AA15E0C(a1, v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F40, &unk_24AABB540);
  if ((*(*(v24 - 8) + 48))(v23, 1, v24) == 1)
  {
    sub_24AAB4C54();
    (*(v16 + 16))(v14, v19, v15);
    swift_storeEnumTagMultiPayload();
    sub_24AA166D4(&qword_27EF84EF8, MEMORY[0x277CDF088]);
    sub_24AA15BC4();
    sub_24AAB42B4();
    return (*(v16 + 8))(v19, v15);
  }

  else
  {
    v26 = &v23[*(v24 + 48)];
    v41 = v11;
    v28 = *v26;
    v27 = *(v26 + 1);
    v40 = v23[*(v24 + 64)];
    v29 = v43;
    v30 = v26[16];
    (*(v43 + 32))(v10, v23, v44);
    sub_24AA158F8(v42, v47);
    v31 = swift_allocObject();
    v42 = v37;
    v32 = v47[0];
    *(v31 + 56) = v47[1];
    v33 = v47[3];
    *(v31 + 72) = v47[2];
    *(v31 + 88) = v33;
    *(v31 + 104) = v48;
    v39 = v28;
    *(v31 + 16) = v28;
    *(v31 + 24) = v27;
    v38 = v30;
    *(v31 + 32) = v30;
    *(v31 + 40) = v32;
    MEMORY[0x28223BE20](v31);
    *&v37[-16] = v10;
    sub_24AA15F00(v28, v27, v30);
    sub_24AAB4BB4();
    KeyPath = swift_getKeyPath();
    v35 = swift_allocObject();
    *(v35 + 16) = (v40 & 1) == 0;
    v36 = &v6[*(v45 + 36)];
    *v36 = KeyPath;
    v36[1] = sub_24AA16AF8;
    v36[2] = v35;
    sub_24AA1695C(v6, v14, &qword_27EF84F08, &qword_24AAB6718);
    swift_storeEnumTagMultiPayload();
    sub_24AA166D4(&qword_27EF84EF8, MEMORY[0x277CDF088]);
    sub_24AA15BC4();
    sub_24AAB42B4();
    sub_24AA15EC0(v39, v27, v38);
    sub_24AA169C4(v6, &qword_27EF84F08, &qword_24AAB6718);
    return (*(v29 + 8))(v10, v44);
  }
}

uint64_t sub_24AA13A9C(uint64_t (*a1)(uint64_t), uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_24AAB4094();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v21[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 0)
  {
    return a1(v11);
  }

  v15 = *a4;
  v14 = *(a4 + 8);
  if (*(a4 + 16) == 1)
  {
    v16 = *(a4 + 8);
  }

  else
  {
    v18 = v11;

    sub_24AAB5134();
    v19 = sub_24AAB44B4();
    sub_24AAB3A54();

    sub_24AAB4084();
    swift_getAtKeyPath();
    sub_24AA15934();
    (*(v9 + 8))(v13, v18);
    v15 = v21[0];
  }

  v21[0] = a1;
  v21[1] = a2;
  v22 = a3;
  v15(v21);
}

uint64_t sub_24AA13C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24AAB2CD4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_24AAB4ED4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_24AAB2B84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  sub_24AAB2B14();
  if (qword_27EF84C50 != -1)
  {
    swift_once();
  }

  v13 = qword_27EF919A8;
  sub_24AAB2CC4();
  v23[1] = sub_24AAB4F14();
  v23[2] = v14;
  sub_24AA15894();
  v15 = sub_24AAB4774();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = (*(v9 + 8))(v12, v8);
  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v21;
  return result;
}

uint64_t sub_24AA13E68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[6];
  v4 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v3);
  (*(v4 + 16))(v3, v4);
  v5 = sub_24AAB4AC4();
  v6 = sub_24AAB45D4();
  result = swift_getKeyPath();
  *a2 = v5;
  a2[1] = result;
  a2[2] = v6;
  return result;
}

uint64_t sub_24AA13F0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24AAB4024();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24AA13F68(uint64_t *a1)
{
  v1 = *a1;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_24AAB3E94();
  }

  else
  {
    sub_24AAB3E14();
  }

  return sub_24AAB3EE4();
}

uint64_t sub_24AA13FD0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_24AAB3E94();
    sub_24AAB3EE4();
    sub_24AA140C4();
  }

  else
  {
    sub_24AAB3E14();
    sub_24AAB3EE4();
    sub_24AA166D4(&qword_27EF84C80, MEMORY[0x277CDD8B0]);
  }

  return swift_getWitnessTable();
}

unint64_t sub_24AA140C4()
{
  result = qword_27EF84C78;
  if (!qword_27EF84C78)
  {
    sub_24AAB3E94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84C78);
  }

  return result;
}

uint64_t sub_24AA14110@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v33 = a6;
    v34 = a7;
    v35 = v8;
    v32 = sub_24AAB3E94();
    v17 = *(v32 - 8);
    v18 = *(v17 + 64);
    MEMORY[0x28223BE20](v32);
    v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v37[0] = 0;
      v37[1] = 0xE000000000000000;
      sub_24AAB5374();

      strcpy(v37, "View.task @ ");
      BYTE5(v37[1]) = 0;
      HIWORD(v37[1]) = -5120;
      MEMORY[0x24C2257F0](a3, a4);
      MEMORY[0x24C2257F0](58, 0xE100000000000000);
      v36 = a5;
      v25 = sub_24AAB5444();
      MEMORY[0x24C2257F0](v25);
    }

    v26 = sub_24AAB50F4();
    v27 = *(*(v26 - 8) + 64);
    MEMORY[0x28223BE20](v26);
    (*(v29 + 16))(&v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

    sub_24AAB3E84();
    sub_24AA14454(v35, a8);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84C90, &qword_24AAB62B0);
    return (*(v17 + 32))(a8 + *(v30 + 36), v20, v32);
  }

  else
  {
    v21 = (a8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84C98, &qword_24AAB62B8) + 36));
    v22 = *(sub_24AAB3E14() + 20);
    v23 = sub_24AAB50F4();
    (*(*(v23 - 8) + 16))(&v21[v22], a2, v23);
    *v21 = a6;
    *(v21 + 1) = a7;

    return sub_24AA14454(v8, a8);
  }
}

uint64_t sub_24AA14454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84C88, &qword_24AABBF10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_24AA1450C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v33 = a6;
    v34 = a7;
    v35 = v8;
    v32 = sub_24AAB3E94();
    v17 = *(v32 - 8);
    v18 = *(v17 + 64);
    MEMORY[0x28223BE20](v32);
    v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v37[0] = 0;
      v37[1] = 0xE000000000000000;
      sub_24AAB5374();

      strcpy(v37, "View.task @ ");
      BYTE5(v37[1]) = 0;
      HIWORD(v37[1]) = -5120;
      MEMORY[0x24C2257F0](a3, a4);
      MEMORY[0x24C2257F0](58, 0xE100000000000000);
      v36 = a5;
      v25 = sub_24AAB5444();
      MEMORY[0x24C2257F0](v25);
    }

    v26 = sub_24AAB50F4();
    v27 = *(*(v26 - 8) + 64);
    MEMORY[0x28223BE20](v26);
    (*(v29 + 16))(&v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

    sub_24AAB3E84();
    sub_24AA1695C(v35, a8, &qword_27EF84CA0, &unk_24AAB62C0);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CA8, &unk_24AABC010);
    return (*(v17 + 32))(a8 + *(v30 + 36), v20, v32);
  }

  else
  {
    v21 = (a8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CB0, &unk_24AAB62D0) + 36));
    v22 = *(sub_24AAB3E14() + 20);
    v23 = sub_24AAB50F4();
    (*(*(v23 - 8) + 16))(&v21[v22], a2, v23);
    *v21 = a6;
    *(v21 + 1) = a7;
    return sub_24AA1695C(v8, a8, &qword_27EF84CA0, &unk_24AAB62C0);
  }
}

uint64_t sub_24AA14848@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v33 = a6;
    v34 = a7;
    v35 = v8;
    v32 = sub_24AAB3E94();
    v17 = *(v32 - 8);
    v18 = *(v17 + 64);
    MEMORY[0x28223BE20](v32);
    v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v37[0] = 0;
      v37[1] = 0xE000000000000000;
      sub_24AAB5374();

      strcpy(v37, "View.task @ ");
      BYTE5(v37[1]) = 0;
      HIWORD(v37[1]) = -5120;
      MEMORY[0x24C2257F0](a3, a4);
      MEMORY[0x24C2257F0](58, 0xE100000000000000);
      v36 = a5;
      v25 = sub_24AAB5444();
      MEMORY[0x24C2257F0](v25);
    }

    v26 = sub_24AAB50F4();
    v27 = *(*(v26 - 8) + 64);
    MEMORY[0x28223BE20](v26);
    (*(v29 + 16))(&v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

    sub_24AAB3E84();
    sub_24AA1695C(v35, a8, &qword_27EF84CB8, &qword_24AABD0C0);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CC0, &qword_24AAB62E0);
    return (*(v17 + 32))(a8 + *(v30 + 36), v20, v32);
  }

  else
  {
    v21 = (a8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CC8, &qword_24AAB62E8) + 36));
    v22 = *(sub_24AAB3E14() + 20);
    v23 = sub_24AAB50F4();
    (*(*(v23 - 8) + 16))(&v21[v22], a2, v23);
    *v21 = a6;
    *(v21 + 1) = a7;
    return sub_24AA1695C(v8, a8, &qword_27EF84CB8, &qword_24AABD0C0);
  }
}

uint64_t sub_24AA14B84@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24AAB4BA4();
  v2 = *MEMORY[0x277CDE248];
  v3 = sub_24AAB4394();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_24AA14C00(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  __isPlatformVersionAtLeast(2, 18, 1, 0);
  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_24AA14C94(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  __isPlatformVersionAtLeast(2, 18, 1, 0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24AA14D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 4)
  {
    MEMORY[0x24C224D90](a5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CD0, &unk_24AAB62F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CD8, &unk_24AABD3B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CE0, &unk_24AAB6300);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CE8, &qword_24AAB85F0);
  sub_24AA14EE0();
  sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0);
  swift_getOpaqueTypeConformance2();
  sub_24AA15058();
  return sub_24AAB4804();
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

unint64_t sub_24AA14EE0()
{
  result = qword_27EF84CF0;
  if (!qword_27EF84CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CE0, &unk_24AAB6300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CF8, &unk_24AAB6310);
    sub_24AAB3ED4();
    sub_24AA16A68(&qword_27EF84D00, &qword_27EF84CF8, &unk_24AAB6310);
    sub_24AA166D4(&qword_27EF84D08, MEMORY[0x277CDD9E0]);
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF84D10, &qword_27EF84D18, &qword_24AABDA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84CF0);
  }

  return result;
}

unint64_t sub_24AA15058()
{
  result = qword_27EF84D28;
  if (!qword_27EF84D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CD8, &unk_24AABD3B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84D30, &unk_24AAB6320);
    sub_24AAB2EF4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84D38, &unk_24AABD3C0);
    sub_24AA166D4(&qword_27EF84D40, MEMORY[0x277CFB9D0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF84D48, &qword_27EF84D50, &qword_24AAB6330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84D28);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24AA1525C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24AA152A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
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

uint64_t sub_24AA15328(uint64_t a1, int a2)
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

uint64_t sub_24AA15348(uint64_t result, int a2, int a3)
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

_DWORD *sub_24AA153D4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void *sub_24AA15404@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24AA15478()
{
  result = qword_27EF84DF8;
  if (!qword_27EF84DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84DE0, &qword_24AAB65E0);
    sub_24AA154FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84DF8);
  }

  return result;
}

unint64_t sub_24AA154FC()
{
  result = qword_27EF84E00;
  if (!qword_27EF84E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84E08, &qword_24AAB6658);
    sub_24AA15588();
    sub_24AA156F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84E00);
  }

  return result;
}

unint64_t sub_24AA15588()
{
  result = qword_27EF84E10;
  if (!qword_27EF84E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84E18, &qword_24AAB6660);
    sub_24AA15614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84E10);
  }

  return result;
}

unint64_t sub_24AA15614()
{
  result = qword_27EF84E20;
  if (!qword_27EF84E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84E28, &qword_24AAB6668);
    sub_24AA16A68(&qword_27EF84E30, &qword_27EF84E38, &unk_24AAB6670);
    sub_24AA16A68(&qword_27EF84E40, &qword_27EF84E48, &qword_24AAB8FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84E20);
  }

  return result;
}

unint64_t sub_24AA156F8()
{
  result = qword_27EF84E50;
  if (!qword_27EF84E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84E58, &qword_24AAB6680);
    sub_24AA157B0();
    sub_24AA16A68(&qword_27EF84E40, &qword_27EF84E48, &qword_24AAB8FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84E50);
  }

  return result;
}

unint64_t sub_24AA157B0()
{
  result = qword_27EF84E60;
  if (!qword_27EF84E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84E68, &qword_24AAB6688);
    sub_24AA16A68(&qword_27EF84D00, &qword_27EF84CF8, &unk_24AAB6310);
    sub_24AA16A68(&qword_27EF84E70, &qword_27EF84E78, &qword_24AAB6690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84E60);
  }

  return result;
}

unint64_t sub_24AA15894()
{
  result = qword_27EF84E80;
  if (!qword_27EF84E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84E80);
  }

  return result;
}

uint64_t sub_24AA158E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_24AA15964()
{
  result = qword_27EF84EC0;
  if (!qword_27EF84EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84EB8, &unk_24AAB8780);
    sub_24AA16A68(&qword_27EF84EC8, &qword_27EF84ED0, &qword_24AAB66D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84EC0);
  }

  return result;
}

uint64_t sub_24AA15A64(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_24AA15A84()
{
  result = qword_27EF84EE0;
  if (!qword_27EF84EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84ED8, &qword_24AAB6708);
    sub_24AA15B08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84EE0);
  }

  return result;
}

unint64_t sub_24AA15B08()
{
  result = qword_27EF84EE8;
  if (!qword_27EF84EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84EF0, &qword_24AAB6710);
    sub_24AA166D4(&qword_27EF84EF8, MEMORY[0x277CDF088]);
    sub_24AA15BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84EE8);
  }

  return result;
}

unint64_t sub_24AA15BC4()
{
  result = qword_27EF84F00;
  if (!qword_27EF84F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84F08, &qword_24AAB6718);
    sub_24AA16A68(&qword_27EF84F10, &qword_27EF84F18, &qword_24AAB6720);
    sub_24AA16A68(&qword_27EF84E40, &qword_27EF84E48, &qword_24AAB8FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84F00);
  }

  return result;
}

uint64_t sub_24AA15CA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomViewControl(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA15D0C(uint64_t a1)
{
  v2 = type metadata accessor for CustomViewControl(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AA15D68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24AAB4004();
  *a1 = result;
  return result;
}

uint64_t sub_24AA15D94(uint64_t *a1)
{
  v1 = *a1;

  return sub_24AAB4014();
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_24AA15934();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24AA15E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenuItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA15E70()
{
  sub_24AA15EC0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  sub_24AA15934();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_24AA15EC0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {
    return sub_24AA15ED0(a1, a2, a3);
  }
}

uint64_t sub_24AA15ED0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_24AA15F00(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {
    return sub_24AA15F10(a1, a2, a3);
  }
}

uint64_t sub_24AA15F10(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_24AA15F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a1;
  v3 = sub_24AAB4CE4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F58, &qword_24AAB67C8);
  v8 = *(sub_24AAB4CF4() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24AAB6280;
  v18 = xmmword_24AAB6290;
  *v7 = xmmword_24AAB6290;
  v12 = *MEMORY[0x277CDF108];
  v13 = *(v4 + 104);
  v13(v7, v12, v3);
  sub_24AAB4D04();
  *v7 = v18;
  v13(v7, v12, v3);
  sub_24AAB4D04();
  *v7 = v18;
  v13(v7, v12, v3);
  sub_24AAB4D04();
  *v7 = v18;
  v13(v7, v12, v3);
  sub_24AAB4D04();
  *v7 = v18;
  v13(v7, v12, v3);
  sub_24AAB4D04();
  *v7 = v18;
  v13(v7, v12, v3);
  result = sub_24AAB4D04();
  v15 = KeyPath;
  *a2 = v17;
  *(a2 + 8) = v15;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v11;
  return result;
}

uint64_t sub_24AA16274(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AA16294(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_24AA162E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AA16304(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

void sub_24AA16344(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24AA163A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24AA163EC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_24AA16448()
{
  result = qword_27EF84FD8;
  if (!qword_27EF84FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84FE0, qword_24AAB68E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84DE0, &qword_24AAB65E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CE8, &qword_24AAB85F0);
    sub_24AA15478();
    sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0);
    swift_getOpaqueTypeConformance2();
    sub_24AA166D4(&qword_27EF84FE8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84FD8);
  }

  return result;
}

unint64_t sub_24AA165C8()
{
  result = qword_27EF85038;
  if (!qword_27EF85038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85038);
  }

  return result;
}

unint64_t sub_24AA1661C()
{
  result = qword_27EF85050;
  if (!qword_27EF85050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84FF8, &qword_24AAB69A8);
    sub_24AA16A68(&qword_27EF85040, &qword_27EF85028, &unk_24AAB6A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85050);
  }

  return result;
}

uint64_t sub_24AA166D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_73Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_24AA15934();
  v5 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AA16768(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_24AA167CC()
{
  result = qword_27EF85068;
  if (!qword_27EF85068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85068);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_24AA168B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_24AA1695C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24AA169C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24AA16A68(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t NoticeNotificationView.call.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return swift_unknownObjectRetain();
}

uint64_t NoticeNotificationView.call.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  result = swift_unknownObjectRelease();
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_24AA16BDC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24AA1A08C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_24AA16D2C(v3);
}

uint64_t sub_24AA16C5C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24AA1A054;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  sub_24AA16D2C(v3);
  result = sub_24AA16D74(v7);
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
  return result;
}

uint64_t NoticeNotificationView.onButtonClick.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_24AA16D2C(v1);
  return v1;
}

uint64_t sub_24AA16D2C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t NoticeNotificationView.onButtonClick.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  result = sub_24AA16D74(*(v2 + 24));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_24AA16D74(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t NoticeNotificationView.init(notification:call:onButtonClick:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

double NoticeNotificationView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v12[0] = *v1;
  v12[1] = v3;
  v13 = *(v1 + 32);
  *a1 = sub_24AAB41B4();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85220, &qword_24AAB6A80);
  sub_24AA16EB0(v12, a1 + *(v4 + 44));
  v5 = sub_24AAB44D4();
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85228, &qword_24AAB6A88) + 36);
  *v6 = v5;
  *(v6 + 8) = xmmword_24AAB6A40;
  *(v6 + 24) = xmmword_24AAB6A40;
  *(v6 + 40) = 0;
  sub_24AAB4D44();
  sub_24AAB3D54();
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85230, &qword_24AAB6A90) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

uint64_t sub_24AA16EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85318, &qword_24AAB6CB8);
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85320, &qword_24AAB6CC0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85328, &qword_24AAB6CC8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v33 - v20;
  *v21 = sub_24AAB40F4();
  *(v21 + 1) = 0;
  v22 = 1;
  v21[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85330, &qword_24AAB6CD0);
  sub_24AA1735C(a1, &v21[*(v23 + 44)]);
  v24 = *a1;
  v25 = *(sub_24AAB3814() + 16);

  if (v25 >= 2)
  {
    *v7 = sub_24AAB4104();
    *(v7 + 1) = 0;
    v7[16] = 1;
    v33[3] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85340, &qword_24AAB6CE0) + 44);
    v36[5] = sub_24AAB3814();
    v26 = swift_allocObject();
    v27 = *(a1 + 16);
    *(v26 + 16) = *a1;
    *(v26 + 32) = v27;
    *(v26 + 48) = *(a1 + 32);
    sub_24AA1A114(a1, v36);
    v33[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85348, &qword_24AAB6CE8);
    v33[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85350, &unk_24AAB6CF0);
    v33[0] = sub_24AA16A68(&qword_27EF85358, &qword_27EF85348, &qword_24AAB6CE8);
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84F18, &qword_24AAB6720);
    v29 = sub_24AA16A68(&qword_27EF84F10, &qword_27EF84F18, &qword_24AAB6720);
    v30 = sub_24AA1A14C();
    v36[0] = v28;
    v36[1] = &type metadata for DialogButtonStyle;
    v36[2] = v29;
    v36[3] = v30;
    swift_getOpaqueTypeConformance2();
    sub_24AA1A1A0(&qword_27EF85368, MEMORY[0x277D07EC8]);
    sub_24AAB4C84();
    sub_24AA1A1E8(v7, v14);
    v22 = 0;
  }

  (*(v34 + 56))(v14, v22, 1, v35);
  sub_24AA1695C(v21, v19, &qword_27EF85328, &qword_24AAB6CC8);
  sub_24AA1695C(v14, v12, &qword_27EF85320, &qword_24AAB6CC0);
  sub_24AA1695C(v19, a2, &qword_27EF85328, &qword_24AAB6CC8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85338, &qword_24AAB6CD8);
  sub_24AA1695C(v12, a2 + *(v31 + 48), &qword_27EF85320, &qword_24AAB6CC0);
  sub_24AA169C4(v14, &qword_27EF85320, &qword_24AAB6CC0);
  sub_24AA169C4(v21, &qword_27EF85328, &qword_24AAB6CC8);
  sub_24AA169C4(v12, &qword_27EF85320, &qword_24AAB6CC0);
  return sub_24AA169C4(v19, &qword_27EF85328, &qword_24AAB6CC8);
}

uint64_t sub_24AA1735C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F18, &qword_24AAB6720);
  v80 = *(v81 - 8);
  v3 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v79 = &v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85350, &unk_24AAB6CF0);
  v86 = *(v5 - 8);
  v6 = *(v86 + 64);
  MEMORY[0x28223BE20](v5);
  v78 = &v69 - v7;
  v77 = sub_24AAB3804();
  v75 = *(v77 - 8);
  v8 = *(v75 + 64);
  v9 = MEMORY[0x28223BE20](v77);
  v74 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v73 = &v69 - v11;
  MEMORY[0x28223BE20](v10);
  v82 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85370, &qword_24AAB6D00);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v84 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v69 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85378, &qword_24AAB6D08);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v69 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85380, &qword_24AAB6D10);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v83 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v69 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v69 - v31;
  *v22 = sub_24AAB4104();
  *(v22 + 1) = 0x4026000000000000;
  v22[16] = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85388, &qword_24AAB6D18);
  sub_24AA17B84(a1, &v22[*(v33 + 44)]);
  sub_24AAB4D44();
  sub_24AAB3F24();
  sub_24AA1A25C(v22, v30, &qword_27EF85378, &qword_24AAB6D08);
  v34 = *(v24 + 44);
  v35 = v86;
  v36 = &v30[v34];
  v37 = v95;
  v38 = v96;
  *(v36 + 4) = v94;
  *(v36 + 5) = v37;
  *(v36 + 6) = v38;
  v39 = v91;
  *v36 = v90;
  *(v36 + 1) = v39;
  v40 = v93;
  *(v36 + 2) = v92;
  *(v36 + 3) = v40;
  sub_24AA1A25C(v30, v32, &qword_27EF85380, &qword_24AAB6D10);
  v76 = a1;
  v41 = *a1;
  v42 = *(sub_24AAB3814() + 16);

  v43 = 1;
  v44 = v42 == 1;
  v45 = v5;
  if (v44)
  {
    v46 = sub_24AAB3814();
    if (*(v46 + 16))
    {
      v72 = v5;
      v70 = v32;
      v47 = v75;
      v48 = *(v75 + 80);
      v49 = *(v75 + 16);
      v71 = v18;
      v50 = v77;
      v49(v73, v46 + ((v48 + 32) & ~v48));

      v51 = *(v47 + 32);
      v52 = v82;
      v53 = v50;
      v51();
      v88 = sub_24AAB37F4();
      v89 = v54;
      v55 = v74;
      (v49)(v74, v52, v53);
      v35 = v86;
      v56 = (v48 + 56) & ~v48;
      v45 = v72;
      v57 = swift_allocObject();
      v58 = v76;
      v59 = *(v76 + 1);
      *(v57 + 16) = *v76;
      *(v57 + 32) = v59;
      *(v57 + 48) = *(v58 + 32);
      (v51)(v57 + v56, v55, v53);
      sub_24AA1A114(v58, v87);
      sub_24AA15894();
      v60 = v79;
      sub_24AAB4BC4();
      v87[0] = 0;
      sub_24AA16A68(&qword_27EF84F10, &qword_27EF84F18, &qword_24AAB6720);
      sub_24AA1A14C();
      v61 = v78;
      v62 = v81;
      sub_24AAB47E4();
      (*(v80 + 8))(v60, v62);
      v18 = v71;
      (*(v47 + 8))(v82, v53);
      v32 = v70;
      (*(v35 + 32))(v18, v61, v45);
      v43 = 0;
    }

    else
    {

      v43 = 1;
    }
  }

  (*(v35 + 56))(v18, v43, 1, v45);
  v63 = v83;
  sub_24AA1695C(v32, v83, &qword_27EF85380, &qword_24AAB6D10);
  v64 = v84;
  sub_24AA1695C(v18, v84, &qword_27EF85370, &qword_24AAB6D00);
  v65 = v85;
  sub_24AA1695C(v63, v85, &qword_27EF85380, &qword_24AAB6D10);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85390, &qword_24AAB6D20);
  v67 = v65 + *(v66 + 48);
  *v67 = 0;
  *(v67 + 8) = 1;
  sub_24AA1695C(v64, v65 + *(v66 + 64), &qword_27EF85370, &qword_24AAB6D00);
  sub_24AA169C4(v18, &qword_27EF85370, &qword_24AAB6D00);
  sub_24AA169C4(v32, &qword_27EF85380, &qword_24AAB6D10);
  sub_24AA169C4(v64, &qword_27EF85370, &qword_24AAB6D00);
  return sub_24AA169C4(v63, &qword_27EF85380, &qword_24AAB6D10);
}

uint64_t sub_24AA17B84@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85398, &qword_24AAB6D28);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v63 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = (&v59 - v8);
  v60 = sub_24AAB4AE4();
  v9 = *(v60 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v60);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24AAB4AD4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = sub_24AAB37B4();
  v61 = a1;
  if ((v19 & 1) != 0 && (v20 = a1[1]) != 0)
  {
    v21 = a1[2];
    swift_unknownObjectRetain();
    v22 = sub_24AAB3834();
    if (v23 >> 60 == 15 || (v24 = v22, v25 = v23, v26 = objc_allocWithZone(MEMORY[0x277D755B8]), v27 = sub_24AAB2BF4(), v28 = [v26 initWithData_], v27, sub_24AA190D4(v24, v25), !v28))
    {
      swift_getObjectType();
      *v78 = v20;
      v46 = *(v21 + 8);
      swift_unknownObjectRetain();
      v47 = sub_24AAB3584();
      v48 = swift_allocObject();
      *(v48 + 16) = v20;
      *(v48 + 24) = v21;
      sub_24AAB4D44();
      sub_24AAB3D54();
      LOBYTE(v72) = 1;
      *v78 = v47;
      *&v78[8] = sub_24AA1A7CC;
      *&v78[16] = v48;
      v78[72] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF853D0, &qword_24AAB6D48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF853F0, &qword_24AAB6D58);
      sub_24AA1A514();
      sub_24AA1A5CC();
      sub_24AAB42B4();
    }

    else
    {
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      swift_getObjectType();
      *v78 = v20;
      v30 = *(v21 + 8);
      v31 = v28;
      v32 = sub_24AAB3584();
      sub_24AAB4D44();
      sub_24AAB3D54();
      *&v68 = v32;
      *(&v68 + 1) = sub_24AA1A80C;
      *&v69 = v29;
      v73[1] = v70;
      v73[2] = v71[0];
      *&v73[3] = *&v71[1];
      v72 = v68;
      v73[0] = v69;
      LOBYTE(v75) = 0;
      BYTE8(v73[3]) = 0;
      sub_24AA1695C(&v68, v78, &qword_27EF853D0, &qword_24AAB6D48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF853D0, &qword_24AAB6D48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF853F0, &qword_24AAB6D58);
      sub_24AA1A514();
      sub_24AA1A5CC();
      sub_24AAB42B4();

      sub_24AA169C4(&v68, &qword_27EF853D0, &qword_24AAB6D48);
      v67[1] = *&v78[32];
      v67[2] = *&v78[48];
      *(&v67[2] + 9) = *&v78[57];
      v66 = *v78;
      v67[0] = *&v78[16];
    }

    *&v78[32] = v67[1];
    *&v78[48] = v67[2];
    *&v78[57] = *(&v67[2] + 9);
    *v78 = v66;
    *&v78[16] = v67[0];
    v65 = 0;
    v78[73] = 0;
    sub_24AA1695C(&v66, &v72, &qword_27EF853C0, &qword_24AAB6D40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF853C0, &qword_24AAB6D40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF853A8, &qword_24AAB6D38);
    sub_24AA1A488();
    sub_24AA1A684();
    sub_24AAB42B4();
    *&v78[32] = v70;
    *&v78[48] = v71[0];
    *&v78[58] = *(v71 + 10);
    *v78 = v68;
    *&v78[16] = v69;
    LOBYTE(v75) = 0;
    v78[74] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF853A0, &qword_24AAB6D30);
    sub_24AA1A3FC();
    sub_24AAB42B4();
    swift_unknownObjectRelease();
    sub_24AA169C4(&v66, &qword_27EF853C0, &qword_24AAB6D40);
    *&v78[32] = v73[1];
    *&v78[48] = v73[2];
    *&v78[59] = *(&v73[2] + 11);
    *v78 = v72;
    *&v78[16] = v73[0];
  }

  else
  {
    v59 = a2;
    v33 = sub_24AAB3834();
    if (v34 >> 60 == 15 || (v35 = v33, v36 = v34, v37 = objc_allocWithZone(MEMORY[0x277D755B8]), v38 = sub_24AAB2BF4(), v39 = [v37 initWithData_], v38, sub_24AA190D4(v35, v36), !v39))
    {
      if (qword_27EF84C50 != -1)
      {
        swift_once();
      }

      v43 = qword_27EF919A8;
      sub_24AAB4B24();
      (*(v14 + 104))(v17, *MEMORY[0x277CE0FE0], v13);
      sub_24AAB4B14();

      (*(v14 + 8))(v17, v13);
      v44 = v60;
      (*(v9 + 104))(v12, *MEMORY[0x277CE0FF0], v60);
      v45 = sub_24AAB4AF4();

      (*(v9 + 8))(v12, v44);
      sub_24AAB4D44();
      sub_24AAB3D54();
      v78[0] = 0;
      *&v74[22] = v76;
      *&v74[38] = v77;
      *&v74[6] = v75;
      LOBYTE(v68) = 1;
      *&v72 = v45;
      *(&v72 + 1) = 0x3FF0000000000000;
      LOWORD(v73[0]) = 0;
      *(v73 + 2) = *v74;
      *(&v73[1] + 2) = *&v74[16];
      *(&v73[2] + 2) = *&v74[32];
      *&v73[3] = *(&v77 + 1);
      BYTE10(v73[3]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF853A0, &qword_24AAB6D30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF853A8, &qword_24AAB6D38);
      sub_24AA1A3FC();
      sub_24AA1A684();
      sub_24AAB42B4();
      a2 = v59;
    }

    else
    {
      v40 = v39;
      sub_24AAB4AB4();
      (*(v14 + 104))(v17, *MEMORY[0x277CE0FE0], v13);
      sub_24AAB4B14();

      (*(v14 + 8))(v17, v13);
      v41 = v60;
      (*(v9 + 104))(v12, *MEMORY[0x277CE0FF0], v60);
      v42 = sub_24AAB4AF4();

      (*(v9 + 8))(v12, v41);
      sub_24AAB4D44();
      sub_24AAB3D54();
      LOBYTE(v72) = 0;
      *&v78[6] = v75;
      *&v78[22] = v76;
      *&v78[38] = v77;
      *&v66 = v42;
      *(&v66 + 1) = 0x3FF0000000000000;
      LOWORD(v67[0]) = 0;
      *(v67 + 2) = *v78;
      *(&v67[1] + 2) = *&v78[16];
      *(&v67[2] + 2) = *&v78[32];
      *&v67[3] = *(&v77 + 1);
      *v78 = v66;
      *&v78[16] = v67[0];
      *&v78[32] = v67[1];
      *&v78[48] = v67[2];
      *&v78[64] = *(&v77 + 1);
      v64 = 1;
      v78[73] = 1;
      sub_24AA1695C(&v66, &v72, &qword_27EF853A8, &qword_24AAB6D38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF853C0, &qword_24AAB6D40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF853A8, &qword_24AAB6D38);
      sub_24AA1A488();
      sub_24AA1A684();
      sub_24AAB42B4();
      *&v78[32] = v70;
      *&v78[48] = v71[0];
      *&v78[58] = *(v71 + 10);
      *v78 = v68;
      *&v78[16] = v69;
      v65 = 0;
      v78[74] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF853A0, &qword_24AAB6D30);
      sub_24AA1A3FC();
      sub_24AAB42B4();

      sub_24AA169C4(&v66, &qword_27EF853A8, &qword_24AAB6D38);
      *&v78[32] = v73[1];
      *&v78[48] = v73[2];
      *&v78[59] = *(&v73[2] + 11);
      *v78 = v72;
      *&v78[16] = v73[0];
      a2 = v59;
    }
  }

  v49 = sub_24AAB41C4();
  v50 = v62;
  *v62 = v49;
  *(v50 + 8) = 0;
  *(v50 + 16) = 1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85420, &qword_24AAB6D70);
  sub_24AA18AB4(v61, (v50 + *(v51 + 44)));
  v67[1] = *&v78[32];
  v67[2] = *&v78[48];
  *(&v67[2] + 11) = *&v78[59];
  v66 = *v78;
  v67[0] = *&v78[16];
  v52 = v63;
  sub_24AA1695C(v50, v63, &qword_27EF85398, &qword_24AAB6D28);
  v53 = v67[2];
  v71[0] = v67[2];
  v54 = *(&v67[2] + 11);
  *(v71 + 11) = *(&v67[2] + 11);
  v56 = v66;
  v55 = v67[0];
  v69 = v67[0];
  v70 = v67[1];
  v68 = v66;
  a2[2] = v67[1];
  a2[3] = v53;
  *(a2 + 59) = v54;
  *a2 = v56;
  a2[1] = v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85428, &qword_24AAB6D78);
  sub_24AA1695C(v52, a2 + *(v57 + 48), &qword_27EF85398, &qword_24AAB6D28);
  sub_24AA1695C(&v68, &v72, &qword_27EF85430, &unk_24AAB6D80);
  sub_24AA169C4(v50, &qword_27EF85398, &qword_24AAB6D28);
  sub_24AA169C4(v52, &qword_27EF85398, &qword_24AAB6D28);
  v73[1] = v67[1];
  v73[2] = v67[2];
  *(&v73[2] + 11) = *(&v67[2] + 11);
  v72 = v66;
  v73[0] = v67[0];
  return sub_24AA169C4(&v72, &qword_27EF85430, &unk_24AAB6D80);
}

id Notice.image.getter()
{
  v0 = sub_24AAB3834();
  if (v1 >> 60 == 15)
  {
    return 0;
  }

  v3 = v0;
  v4 = v1;
  v5 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v6 = sub_24AAB2BF4();
  v7 = [v5 initWithData_];

  sub_24AA190D4(v3, v4);
  return v7;
}

double sub_24AA18808@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24AAB4AE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_24AAB4AD4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1;
  sub_24AAB4AB4();
  (*(v10 + 104))(v13, *MEMORY[0x277CE0FE0], v9);
  sub_24AAB4B14();

  (*(v10 + 8))(v13, v9);
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FF0], v4);
  v15 = sub_24AAB4AF4();

  (*(v5 + 8))(v8, v4);
  sub_24AAB4D44();
  sub_24AAB3D54();
  v21 = 0;
  *&v20[6] = v22;
  *&v20[22] = v23;
  *&v20[38] = v24;
  sub_24AAB4A14();
  v16 = sub_24AAB4A54();

  *a2 = v15;
  *(a2 + 8) = 0x3FF0000000000000;
  *(a2 + 16) = 0;
  v17 = *&v20[16];
  *(a2 + 18) = *v20;
  *(a2 + 34) = v17;
  *(a2 + 50) = *&v20[32];
  *(a2 + 64) = *&v20[46];
  *(a2 + 72) = v16;
  result = 4.0;
  *(a2 + 80) = xmmword_24AAB6A50;
  *(a2 + 96) = xmmword_24AAB6A60;
  *(a2 + 112) = 0x4000000000000000;
  return result;
}

uint64_t sub_24AA18AB4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85438, &qword_24AABC780);
  v4 = *(v3 - 8);
  v49 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v50 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - v8;
  v10 = *a1;
  v52 = sub_24AAB37D4();
  v53 = v11;
  sub_24AA15894();
  v12 = sub_24AAB4774();
  v14 = v13;
  v16 = v15;
  sub_24AAB4554();
  sub_24AAB45A4();
  sub_24AAB45E4();

  v17 = sub_24AAB4704();
  v45 = v18;
  v46 = v17;
  v47 = v19;
  v48 = v20;

  sub_24AA158E8(v12, v14, v16 & 1);

  v52 = sub_24AAB3824();
  v53 = v21;
  v22 = sub_24AAB4774();
  v24 = v23;
  LOBYTE(v14) = v25;
  v26 = [objc_opt_self() secondaryLabelColor];
  v52 = sub_24AAB49C4();
  v27 = sub_24AAB46F4();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_24AA158E8(v22, v24, v14 & 1);

  v34 = *(v49 + 44);
  v35 = *MEMORY[0x277CE13B8];
  v36 = sub_24AAB4DB4();
  (*(*(v36 - 8) + 104))(&v9[v34], v35, v36);
  *v9 = v27;
  *(v9 + 1) = v29;
  v9[16] = v31 & 1;
  *(v9 + 3) = v33;
  v37 = v50;
  sub_24AA1695C(v9, v50, &qword_27EF85438, &qword_24AABC780);
  v38 = v51;
  v40 = v45;
  v39 = v46;
  *v51 = v46;
  v38[1] = v40;
  LOBYTE(v35) = v47 & 1;
  *(v38 + 16) = v47 & 1;
  v38[3] = v48;
  v41 = v38;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85440, &unk_24AAB6D90);
  sub_24AA1695C(v37, v41 + *(v42 + 48), &qword_27EF85438, &qword_24AABC780);
  sub_24AA1A814(v39, v40, v35);

  sub_24AA169C4(v9, &qword_27EF85438, &qword_24AABC780);
  sub_24AA169C4(v37, &qword_27EF85438, &qword_24AABC780);
  sub_24AA158E8(v39, v40, v35);
}

uint64_t sub_24AA18DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v5 = sub_24AAB3804();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F18, &qword_24AAB6720);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-v11 - 8];
  v20 = sub_24AAB37F4();
  v21 = v13;
  (*(v6 + 16))(&v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1, v5);
  v14 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v16 = *(a2 + 16);
  *(v15 + 16) = *a2;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(a2 + 32);
  (*(v6 + 32))(v15 + v14, &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v5);
  sub_24AA1A114(a2, v19);
  sub_24AA15894();
  sub_24AAB4BC4();
  v19[0] = 1;
  sub_24AA16A68(&qword_27EF84F10, &qword_27EF84F18, &qword_24AAB6720);
  sub_24AA1A14C();
  sub_24AAB47E4();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_24AA19068(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(result + 32);
    v3 = sub_24AAB37E4();
    v1(v3);
  }

  return result;
}

uint64_t sub_24AA190D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AA190E8(a1, a2);
  }

  return a1;
}

uint64_t sub_24AA190E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

double sub_24AA19158@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v12[0] = *v1;
  v12[1] = v3;
  v13 = *(v1 + 32);
  *a1 = sub_24AAB41B4();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85220, &qword_24AAB6A80);
  sub_24AA16EB0(v12, a1 + *(v4 + 44));
  v5 = sub_24AAB44D4();
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85228, &qword_24AAB6A88) + 36);
  *v6 = v5;
  *(v6 + 8) = xmmword_24AAB6A40;
  *(v6 + 24) = xmmword_24AAB6A40;
  *(v6 + 40) = 0;
  sub_24AAB4D44();
  sub_24AAB3D54();
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85230, &qword_24AAB6A90) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

uint64_t get_enum_tag_for_layout_string_SSIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_24AA19288()
{
  result = qword_27EF85238;
  if (!qword_27EF85238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85230, &qword_24AAB6A90);
    sub_24AA19314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85238);
  }

  return result;
}

unint64_t sub_24AA19314()
{
  result = qword_27EF85240;
  if (!qword_27EF85240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85228, &qword_24AAB6A88);
    sub_24AA16A68(&qword_27EF85248, &qword_27EF85250, &qword_24AAB6B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85240);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DialogButtonStyle(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DialogButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24AA19554@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v80[1] = a1;
  v86 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85258, &qword_24AAB6C00);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v80 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85260, &qword_24AAB6C08);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v80 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85268, &qword_24AAB6C10);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v80 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85270, &qword_24AAB6C18);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v82 = v80 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85278, &qword_24AAB6C20);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v81 = v80 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85280, &qword_24AAB6C28);
  v26 = *(v25 - 8);
  v85 = v25 - 8;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v83 = v80 - v28;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85288, &qword_24AAB6C30);
  v29 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v31 = v80 - v30;
  sub_24AAB43B4();
  *&v6[*(v3 + 44)] = sub_24AAB4A44();
  sub_24AAB4D44();
  sub_24AAB3F24();
  sub_24AA1A25C(v6, v11, &qword_27EF85258, &qword_24AAB6C00);
  v32 = &v11[*(v8 + 44)];
  v33 = v92;
  *(v32 + 4) = v91;
  *(v32 + 5) = v33;
  *(v32 + 6) = v93;
  v34 = v88;
  *v32 = v87;
  *(v32 + 1) = v34;
  v35 = v90;
  *(v32 + 2) = v89;
  *(v32 + 3) = v35;
  LOBYTE(v3) = sub_24AAB4534();
  sub_24AAB3C54();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_24AA1A25C(v11, v16, &qword_27EF85260, &qword_24AAB6C08);
  v44 = &v16[*(v13 + 44)];
  *v44 = v3;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  LOBYTE(v3) = sub_24AAB44C4();
  sub_24AAB3C54();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v82;
  sub_24AA1A25C(v16, v82, &qword_27EF85268, &qword_24AAB6C10);
  v54 = v53 + *(v18 + 44);
  *v54 = v3;
  *(v54 + 8) = v46;
  *(v54 + 16) = v48;
  *(v54 + 24) = v50;
  *(v54 + 32) = v52;
  *(v54 + 40) = 0;
  v55 = v81;
  v56 = &v81[*(v22 + 44)];
  *v56 = 0;
  v57 = type metadata accessor for ControlPlatter();
  v58 = *(v57 + 20);
  *&v56[v58] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  swift_storeEnumTagMultiPayload();
  v59 = &v56[*(v57 + 24)];
  *v59 = swift_getKeyPath();
  v59[8] = 0;
  v60 = sub_24AAB4D44();
  v62 = v61;
  v63 = &v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85298, &unk_24AAB8FE0) + 36)];
  *v63 = v60;
  v63[1] = v62;
  sub_24AA1A25C(v53, v55, &qword_27EF85270, &qword_24AAB6C18);
  LOBYTE(v60) = sub_24AAB43C4();
  v64 = sub_24AAB4D44();
  v66 = v65;
  v67 = v83;
  sub_24AA1A25C(v55, v83, &qword_27EF85278, &qword_24AAB6C20);
  v68 = v84;
  v69 = v67 + *(v85 + 44);
  *v69 = v60 & 1;
  *(v69 + 8) = v64;
  *(v69 + 16) = v66;
  v70 = &v31[*(v68 + 36)];
  v71 = *(sub_24AAB3F14() + 20);
  v72 = *MEMORY[0x277CE0118];
  v73 = sub_24AAB4184();
  (*(*(v73 - 8) + 104))(&v70[v71], v72, v73);
  __asm { FMOV            V0.2D, #6.0 }

  *v70 = _Q0;
  *&v70[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF852A0, &unk_24AAB6CA0) + 36)] = 256;
  sub_24AA1A25C(v67, v31, &qword_27EF85280, &qword_24AAB6C28);
  sub_24AA19B68();
  sub_24AAB4794();
  return sub_24AA169C4(v31, &qword_27EF85288, &qword_24AAB6C30);
}

unint64_t sub_24AA19B68()
{
  result = qword_27EF852A8;
  if (!qword_27EF852A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85288, &qword_24AAB6C30);
    sub_24AA19C20();
    sub_24AA16A68(&qword_27EF85310, &qword_27EF852A0, &unk_24AAB6CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF852A8);
  }

  return result;
}

unint64_t sub_24AA19C20()
{
  result = qword_27EF852B0;
  if (!qword_27EF852B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85280, &qword_24AAB6C28);
    sub_24AA19CD8();
    sub_24AA16A68(&qword_27EF85300, &qword_27EF85308, &qword_24AAB6CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF852B0);
  }

  return result;
}

unint64_t sub_24AA19CD8()
{
  result = qword_27EF852B8;
  if (!qword_27EF852B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85278, &qword_24AAB6C20);
    sub_24AA19D90();
    sub_24AA16A68(&qword_27EF852F8, &qword_27EF85298, &unk_24AAB8FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF852B8);
  }

  return result;
}

unint64_t sub_24AA19D90()
{
  result = qword_27EF852C0;
  if (!qword_27EF852C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85270, &qword_24AAB6C18);
    sub_24AA19E1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF852C0);
  }

  return result;
}

unint64_t sub_24AA19E1C()
{
  result = qword_27EF852C8;
  if (!qword_27EF852C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85268, &qword_24AAB6C10);
    sub_24AA19EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF852C8);
  }

  return result;
}

unint64_t sub_24AA19EA8()
{
  result = qword_27EF852D0;
  if (!qword_27EF852D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85260, &qword_24AAB6C08);
    sub_24AA19F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF852D0);
  }

  return result;
}

unint64_t sub_24AA19F34()
{
  result = qword_27EF852D8;
  if (!qword_27EF852D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85258, &qword_24AAB6C00);
    sub_24AA1A1A0(&qword_27EF852E0, MEMORY[0x277CDE278]);
    sub_24AA16A68(&qword_27EF852E8, &qword_27EF852F0, &unk_24AAB8FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF852D8);
  }

  return result;
}

uint64_t sub_24AA1A01C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AA1A054(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t sub_24AA1A08C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_24AA1A0BC()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_24AA1A14C()
{
  result = qword_27EF85360;
  if (!qword_27EF85360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85360);
  }

  return result;
}

uint64_t sub_24AA1A1A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AA1A1E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85318, &qword_24AAB6CB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA1A25C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_20Tm()
{
  v1 = sub_24AAB3804();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  v5 = *(v0 + 24);
  swift_unknownObjectRelease();
  if (*(v0 + 40))
  {
    v6 = *(v0 + 48);
  }

  v7 = (v3 + 56) & ~v3;
  (*(v2 + 8))(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + v4, v3 | 7);
}

unint64_t sub_24AA1A3FC()
{
  result = qword_27EF853B0;
  if (!qword_27EF853B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF853A0, &qword_24AAB6D30);
    sub_24AA1A488();
    sub_24AA1A684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF853B0);
  }

  return result;
}

unint64_t sub_24AA1A488()
{
  result = qword_27EF853B8;
  if (!qword_27EF853B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF853C0, &qword_24AAB6D40);
    sub_24AA1A514();
    sub_24AA1A5CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF853B8);
  }

  return result;
}

unint64_t sub_24AA1A514()
{
  result = qword_27EF853C8;
  if (!qword_27EF853C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF853D0, &qword_24AAB6D48);
    sub_24AA16A68(&qword_27EF853D8, &qword_27EF853E0, &qword_24AAB6D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF853C8);
  }

  return result;
}

unint64_t sub_24AA1A5CC()
{
  result = qword_27EF853E8;
  if (!qword_27EF853E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF853F0, &qword_24AAB6D58);
    sub_24AA16A68(&qword_27EF853F8, &qword_27EF85400, &qword_24AAB6D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF853E8);
  }

  return result;
}

unint64_t sub_24AA1A684()
{
  result = qword_27EF85408;
  if (!qword_27EF85408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF853A8, &qword_24AAB6D38);
    sub_24AA1A710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85408);
  }

  return result;
}

unint64_t sub_24AA1A710()
{
  result = qword_27EF85410;
  if (!qword_27EF85410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85418, &qword_24AAB6D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85410);
  }

  return result;
}

uint64_t sub_24AA1A794()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AA1A7D4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AA1A814(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24AA1A824()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85288, &qword_24AAB6C30);
  sub_24AA19B68();
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for PerformCallActionKey(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PerformCallActionKey(_WORD *result, int a2, int a3)
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

uint64_t DialPromptView.init(viewModel:)()
{
  type metadata accessor for DialPromptViewModel();
  sub_24AA1B700(&qword_27EF85448, type metadata accessor for DialPromptViewModel);

  return sub_24AAB4CB4();
}

double DialPromptView.body.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_24AAB4104();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85450, &qword_24AAB6E20);
  sub_24AA1AB80(a1 + *(v2 + 44));
  v3 = sub_24AAB44D4();
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85458, &qword_24AAB6E28) + 36);
  *v4 = v3;
  *(v4 + 8) = xmmword_24AAB6A40;
  __asm { FMOV            V0.2D, #12.0 }

  *(v4 + 24) = _Q0;
  *(v4 + 40) = 0;
  sub_24AAB4D44();
  sub_24AAB3D54();
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85460, &qword_24AAB6E30) + 36));
  *v10 = v12;
  v10[1] = v13;
  result = *&v14;
  v10[2] = v14;
  return result;
}

uint64_t sub_24AA1AB80@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = type metadata accessor for CallStatusViewModel(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF854A8, &qword_24AAB6ED0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v44 - v11;
  v44[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85468, qword_24AAB6E90);
  sub_24AAB4CA4();
  sub_24AA842FC(*(v47[0] + 16), *(v47[0] + 24), v4);

  sub_24AAB4C24();
  sub_24AA1B69C(v4);
  LOBYTE(v46[0]) = 0;
  sub_24AAB4C24();
  v13 = v47[0];
  v14 = v47[1];
  v15 = v48;
  v16 = type metadata accessor for CallStatusView();
  *&v12[v16[9]] = 0;
  v17 = v16[10];
  *&v12[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  swift_storeEnumTagMultiPayload();
  v18 = &v12[v16[5]];
  *v18 = v13;
  *(v18 + 1) = v14;
  v18[16] = v15;
  v12[v16[6]] = 1;
  v12[v16[7]] = 1;
  *&v12[v16[8]] = 0x4041000000000000;
  sub_24AAB4D44();
  sub_24AAB3D54();
  v19 = &v12[*(v6 + 44)];
  v20 = v57;
  *v19 = v56;
  *(v19 + 1) = v20;
  *(v19 + 2) = v58;
  v21 = type metadata accessor for DialControl(0);
  v49 = v21;
  v50 = sub_24AA1B700(&qword_27EF854B0, type metadata accessor for DialControl);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v47);
  *boxed_opaque_existential_1Tm = xmmword_24AAB6E00;
  *(boxed_opaque_existential_1Tm + 16) = 2;
  v23 = boxed_opaque_existential_1Tm + v21[5];
  sub_24AAB2B24();
  v24 = (boxed_opaque_existential_1Tm + v21[6]);
  *v24 = 0x69662E656E6F6870;
  v24[1] = 0xEA00000000006C6CLL;
  v25 = (boxed_opaque_existential_1Tm + v21[7]);
  v26 = sub_24AAB4A34();
  v27 = sub_24AAB4A44();
  *v25 = v26;
  v25[1] = v27;
  v25[2] = 0;
  v25[3] = 0;
  *(boxed_opaque_existential_1Tm + v21[8]) = 0;
  *(boxed_opaque_existential_1Tm + v21[9]) = 0;
  v28 = type metadata accessor for CancelDialControl(0);
  v51[3] = v28;
  v51[4] = sub_24AA1B700(&qword_27EF854B8, type metadata accessor for CancelDialControl);
  v29 = __swift_allocate_boxed_opaque_existential_1Tm(v51);
  *v29 = xmmword_24AAB6E10;
  *(v29 + 16) = 2;
  v30 = v29 + v28[5];
  sub_24AAB2B24();
  v31 = (v29 + v28[6]);
  *v31 = 0x796C7069746C756DLL;
  v31[1] = 0xE800000000000000;
  v32 = v28[7];
  if (qword_27EF84C70 != -1)
  {
    swift_once();
  }

  v33 = (v29 + v32);
  v34 = unk_27EF91A00;
  v35 = qword_27EF91A08;
  v36 = unk_27EF91A10;
  *v33 = qword_27EF919F8;
  v33[1] = v34;
  v33[2] = v35;
  v33[3] = v36;
  *(v29 + v28[8]) = 0;
  *(v29 + v28[9]) = 0;
  v52 = 3;
  KeyPath = swift_getKeyPath();

  sub_24AA1B750(v35, v36);
  sub_24AAB4CA4();
  v38 = v46[0];
  v39 = swift_allocObject();
  *(v39 + 16) = sub_24AA1B790;
  *(v39 + 24) = v38;
  v53 = KeyPath;
  v54 = sub_24AA1B7D0;
  v55 = v39;
  sub_24AA1695C(v12, v10, &qword_27EF854A8, &qword_24AAB6ED0);
  sub_24AA1695C(v47, v46, &qword_27EF854C0, &qword_24AAB6F38);
  v40 = v45;
  sub_24AA1695C(v10, v45, &qword_27EF854A8, &qword_24AAB6ED0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF854C8, &qword_24AAB6F40);
  v42 = v40 + *(v41 + 48);
  *v42 = 0;
  *(v42 + 8) = 1;
  sub_24AA1695C(v46, v40 + *(v41 + 64), &qword_27EF854C0, &qword_24AAB6F38);
  sub_24AA169C4(v47, &qword_27EF854C0, &qword_24AAB6F38);
  sub_24AA169C4(v12, &qword_27EF854A8, &qword_24AAB6ED0);
  sub_24AA169C4(v46, &qword_27EF854C0, &qword_24AAB6F38);
  return sub_24AA169C4(v10, &qword_27EF854A8, &qword_24AAB6ED0);
}

void sub_24AA1B114(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 2)
  {
    v2 = *(a1 + 8);
    if (*a1 ^ 0x13 | v2)
    {
      if (!(*a1 ^ 0x12 | v2))
      {
        v3 = *(a2 + 16);
        v4 = *(a2 + 24);
        v5 = *(a2 + 64);
        __swift_project_boxed_opaque_existential_1((a2 + 32), *(a2 + 56));
        v10 = v3;
        if (v4)
        {
          v7 = sub_24AAB3354();
        }

        else
        {
          sub_24AAB3334();
          v7 = swift_unknownObjectRelease();
        }

        v9 = *(a2 + 80);
        (*(a2 + 72))(v7);
      }
    }

    else
    {
      v8 = *(a2 + 80);
      (*(a2 + 72))();
    }
  }
}

double sub_24AA1B200@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_24AAB4104();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85450, &qword_24AAB6E20);
  sub_24AA1AB80(a1 + *(v2 + 44));
  v3 = sub_24AAB44D4();
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85458, &qword_24AAB6E28) + 36);
  *v4 = v3;
  *(v4 + 8) = xmmword_24AAB6A40;
  __asm { FMOV            V0.2D, #12.0 }

  *(v4 + 24) = _Q0;
  *(v4 + 40) = 0;
  sub_24AAB4D44();
  sub_24AAB3D54();
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85460, &qword_24AAB6E30) + 36));
  *v10 = v12;
  v10[1] = v13;
  result = *&v14;
  v10[2] = v14;
  return result;
}

uint64_t sub_24AA1B304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85468, qword_24AAB6E90);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24AA1B390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85468, qword_24AAB6E90);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DialPromptView()
{
  result = qword_27EF85470;
  if (!qword_27EF85470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24AA1B458()
{
  sub_24AA1B4C4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24AA1B4C4()
{
  if (!qword_27EF85480)
  {
    type metadata accessor for DialPromptViewModel();
    v0 = sub_24AAB4CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF85480);
    }
  }
}

unint64_t sub_24AA1B520()
{
  result = qword_27EF85488;
  if (!qword_27EF85488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85460, &qword_24AAB6E30);
    sub_24AA1B5AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85488);
  }

  return result;
}

unint64_t sub_24AA1B5AC()
{
  result = qword_27EF85490;
  if (!qword_27EF85490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85458, &qword_24AAB6E28);
    sub_24AA1B638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85490);
  }

  return result;
}

unint64_t sub_24AA1B638()
{
  result = qword_27EF85498;
  if (!qword_27EF85498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF854A0, &qword_24AAB6EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85498);
  }

  return result;
}

uint64_t sub_24AA1B69C(uint64_t a1)
{
  v2 = type metadata accessor for CallStatusViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AA1B700(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AA1B750(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24AA1B798()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t CallNotificationViewModel.__allocating_init(call:callCenter:callsReminder:callConfirmationPresenter:forwardCallAction:isScreenLocked:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, int a8)
{
  ObjectType = swift_getObjectType();
  v13 = a3[3];
  v14 = a3[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a3, v13);
  v17 = a5[3];
  v16 = a5[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a5, v17);
  *(&v21 + 1) = v14;
  *&v21 = a2;
  v19 = sub_24AA41C74(a1, v15, a4, v18, a6, a7, a8, v26, ObjectType, v13, v17, v21, v16);
  sub_24AA16D74(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v19;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t CallNotificationViewModel.call.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
  return swift_unknownObjectRetain();
}

uint64_t sub_24AA1B9CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__statusViewModel;
  swift_beginAccess();
  return sub_24AA42D0C(v3 + v4, a2, type metadata accessor for CallStatusViewModel);
}

uint64_t sub_24AA1BAA8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for CallStatusViewModel(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24AA42D0C(a1, v7, type metadata accessor for CallStatusViewModel);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CE4();

  return sub_24AA42D74(v7, type metadata accessor for CallStatusViewModel);
}

uint64_t sub_24AA1BBF4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__statusViewModel;
  swift_beginAccess();
  return sub_24AA42D0C(v5 + v3, a1, type metadata accessor for CallStatusViewModel);
}

uint64_t sub_24AA1BCD0(uint64_t a1)
{
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CE4();

  return sub_24AA42D74(a1, type metadata accessor for CallStatusViewModel);
}

uint64_t sub_24AA1BDB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallStatusViewModel(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AA42D0C(a2, v7, type metadata accessor for CallStatusViewModel);
  v8 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__statusViewModel;
  swift_beginAccess();
  sub_24AA44EA0(v7, a1 + v8);
  return swift_endAccess();
}

void (*sub_24AA1BE84(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  v4[7] = sub_24AA1B96C();
  return sub_24AA1BFBC;
}

uint64_t sub_24AA1BFC8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
  swift_beginAccess();
  return sub_24AA43A54(v5 + v3, a1);
}

uint64_t sub_24AA1C090@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
  swift_beginAccess();
  return sub_24AA43A54(v3 + v4, a2);
}

uint64_t sub_24AA1C158(uint64_t a1, uint64_t *a2)
{
  sub_24AA43A54(a1, v5);
  v3 = *a2;
  return sub_24AA1C194(v5);
}

uint64_t sub_24AA1C194(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
  swift_beginAccess();
  sub_24AA43A54(v1 + v3, v7);
  v4 = sub_24AA72E4C(v7, a1);
  sub_24AA4214C(v7);
  if (v4)
  {
    sub_24AA43A54(a1, v7);
    swift_beginAccess();
    sub_24AA43B0C(v7, v1 + v3);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v7[0] = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  return sub_24AA4214C(a1);
}

uint64_t sub_24AA1C310(uint64_t a1, uint64_t a2)
{
  sub_24AA43A54(a2, v5);
  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
  swift_beginAccess();
  sub_24AA43B0C(v5, a1 + v3);
  return swift_endAccess();
}

uint64_t sub_24AA1C388@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___trailingControlRecipe;
  swift_beginAccess();
  return sub_24AA1695C(v5 + v3, a1, &qword_27EF85568, &qword_24AABC830);
}

uint64_t sub_24AA1C460@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___trailingControlRecipe;
  swift_beginAccess();
  return sub_24AA1695C(v3 + v4, a2, &qword_27EF85568, &qword_24AABC830);
}

uint64_t sub_24AA1C538(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___trailingControlRecipe;
  swift_beginAccess();
  sub_24AA1695C(v1 + v3, v7, &qword_27EF85568, &qword_24AABC830);
  v4 = sub_24AA40EC4(v7, a1);
  sub_24AA169C4(v7, &qword_27EF85568, &qword_24AABC830);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v7[0] = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  else
  {
    sub_24AA1695C(a1, v7, &qword_27EF85568, &qword_24AABC830);
    swift_beginAccess();
    sub_24AA43980(v7, v1 + v3, &qword_27EF85568, &qword_24AABC830);
    swift_endAccess();
  }

  return sub_24AA169C4(a1, &qword_27EF85568, &qword_24AABC830);
}

uint64_t sub_24AA1C6F4(uint64_t a1, uint64_t a2)
{
  sub_24AA1695C(a2, v5, &qword_27EF85568, &qword_24AABC830);
  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___trailingControlRecipe;
  swift_beginAccess();
  sub_24AA43980(v5, a1 + v3, &qword_27EF85568, &qword_24AABC830);
  return swift_endAccess();
}

uint64_t sub_24AA1C794()
{
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___callHoldingAnalytics);
}

uint64_t sub_24AA1C840@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  *a2 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___callHoldingAnalytics);
}

uint64_t sub_24AA1C8F4(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___callHoldingAnalytics) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }
}

uint64_t sub_24AA1CA90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingRTT;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24AA1CB7C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingRTT;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_24AA1CC38(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingRTT;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  return result;
}

void (*sub_24AA1CD64(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  v4[7] = sub_24AA1CA30();
  return sub_24AA1CE9C;
}

uint64_t sub_24AA1CEF0(char a1)
{

  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136316162;
    *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v8);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_24AA406B4(0xD00000000000001DLL, 0x800000024AAD1A20, v8);
    *(v5 + 22) = 2048;
    *(v5 + 24) = 45;
    *(v5 + 32) = 1024;
    *(v5 + 34) = a1 & 1;
    *(v5 + 38) = 1024;
    swift_getKeyPath();
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CF4();

    *(v5 + 40) = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView);

    _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] showingSecondaryMoreMenuView changed from %{BOOL}d to %{BOOL}d", v5, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v6, -1, -1);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  else
  {
  }

  swift_getKeyPath();
  v8[0] = v1;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView) != (a1 & 1))
  {
    sub_24AA2A2D4(v8);
    return sub_24AA1D19C(v8);
  }

  return result;
}

uint64_t sub_24AA1D19C(uint64_t a1)
{
  v2 = v1;
  sub_24AA43A54(a1, v34);

  v4 = sub_24AAB3A64();
  v5 = sub_24AAB5144();

  v6 = &qword_27EF85000;
  v7 = &qword_27EF85000;
  if (os_log_type_enabled(v4, v5))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33[0] = v9;
    *v8 = 136316162;
    *(v8 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v33);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_24AA406B4(0x736C6F72746E6F63, 0xEE00657069636552, v33);
    *(v8 + 22) = 2048;
    *(v8 + 24) = 684;
    *(v8 + 32) = 2080;
    swift_getKeyPath();
    v32[0] = v2;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CF4();

    v10 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
    swift_beginAccess();
    sub_24AA43A54(v2 + v10, v32);
    v11 = sub_24AA71A18();
    v13 = v12;
    sub_24AA4214C(v32);
    v14 = sub_24AA406B4(v11, v13, v33);

    *(v8 + 34) = v14;
    *(v8 + 42) = 2080;
    v15 = sub_24AA71A18();
    v17 = v16;
    sub_24AA4214C(v34);
    v18 = sub_24AA406B4(v15, v17, v33);

    *(v8 + 44) = v18;
    v6 = &qword_27EF85000;
    _os_log_impl(&dword_24AA0F000, v4, v5, "[%s:%s:%ld] Setting controls recipe from %s to %s", v8, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v9, -1, -1);
    v19 = v8;
    v7 = &qword_27EF85000;
    MEMORY[0x24C226630](v19, -1, -1);
  }

  else
  {

    sub_24AA4214C(v34);
  }

  swift_getKeyPath();
  v20 = v6[154];
  v34[0] = v2;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v21 = v7[171];
  swift_beginAccess();
  sub_24AA43A54(v2 + v21, v34);
  v22 = sub_24AA734BC(v34, a1);
  sub_24AA4214C(v34);
  v23 = sub_24AAB3A64();
  v24 = sub_24AAB5144();
  v25 = os_log_type_enabled(v23, v24);
  if (v22)
  {
    if (v25)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34[0] = v27;
      *v26 = 136315650;
      *(v26 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v34);
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_24AA406B4(0x736C6F72746E6F63, 0xEE00657069636552, v34);
      *(v26 + 22) = 2048;
      *(v26 + 24) = 686;
      _os_log_impl(&dword_24AA0F000, v23, v24, "[%s:%s:%ld] Animating controls recipe change", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v27, -1, -1);
      MEMORY[0x24C226630](v26, -1, -1);
    }

    v28 = MEMORY[0x24C2255E0](0.5, 0.85, 0.0);
    MEMORY[0x28223BE20](v28);
    sub_24AAB3E24();
  }

  else
  {
    if (v25)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34[0] = v30;
      *v29 = 136315650;
      *(v29 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v34);
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_24AA406B4(0x736C6F72746E6F63, 0xEE00657069636552, v34);
      *(v29 + 22) = 2048;
      *(v29 + 24) = 691;
      _os_log_impl(&dword_24AA0F000, v23, v24, "[%s:%s:%ld] Not animating controls recipe change", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v30, -1, -1);
      MEMORY[0x24C226630](v29, -1, -1);
    }

    sub_24AA43A54(a1, v34);
    sub_24AA1C194(v34);
  }

  return sub_24AA4214C(a1);
}

uint64_t (*sub_24AA1D7B4(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_24AA1D7E8;
}

uint64_t sub_24AA1D88C(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView);
  *(a1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView) = a2;
  return sub_24AA1CEF0(v3);
}

void (*sub_24AA1D8C8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  v4[7] = sub_24AA1D7B4(v4);
  return sub_24AA1DA00;
}

void (*sub_24AA1DAD4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  v4[7] = sub_24AA1DA0C();
  return sub_24AA1DC0C;
}

uint64_t sub_24AA1DC18(char a1)
{
  v2 = v1;

  v4 = sub_24AAB3A64();
  v5 = sub_24AAB5144();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17[0] = v7;
    *v6 = 136316162;
    *(v6 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v17);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_24AA406B4(0x676E69776F68735FLL, 0xEE0064617079654BLL, v17);
    *(v6 + 22) = 2048;
    *(v6 + 24) = 54;
    *(v6 + 32) = 1024;
    *(v6 + 34) = a1 & 1;
    *(v6 + 38) = 1024;
    swift_getKeyPath();
    v17[12] = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CF4();

    *(v6 + 40) = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingKeypad);

    _os_log_impl(&dword_24AA0F000, v4, v5, "[%s:%s:%ld] showingKeypad changed from %{BOOL}d to %{BOOL}d", v6, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v7, -1, -1);
    MEMORY[0x24C226630](v6, -1, -1);
  }

  else
  {
  }

  swift_getKeyPath();
  v17[0] = v1;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v8 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__keypadViewModel;
  swift_beginAccess();
  if (!*(v2 + v8))
  {
    v9 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call;
    v10 = type metadata accessor for KeypadViewModel(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v16 = *(v2 + v9);
    swift_unknownObjectRetain();
    sub_24AAB2D24();
    *(v13 + 16) = v16;
    *(v13 + 32) = 32;
    *(v13 + 40) = 0xE100000000000000;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v17[0] = v2;

  sub_24AAB2CE4();

  sub_24AA2A2D4(v17);
  return sub_24AA1D19C(v17);
}

uint64_t (*sub_24AA1DFC8(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingKeypad;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_24AA1DFFC;
}

uint64_t sub_24AA1E014(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(*a1 + v3);
  *(v4 + v3) = v5;
  return a3(v6);
}

uint64_t sub_24AA1E0D4(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (*(v5 + *a2) == (a1 & 1))
  {
    *(v5 + *a2) = a1 & 1;

    return a5();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }
}

void (*sub_24AA1E200(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  v4[7] = sub_24AA1DFC8(v4);
  return sub_24AA1E338;
}

void sub_24AA1E36C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_24AA1E39C(v2);
}

void *sub_24AA1E448(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_24AA1E4F0@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_24AA1E5F0(void *a1, uint64_t *a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *a2;
  v7 = *(v3 + *a2);
  if (!v7)
  {
    if (!a1)
    {
      v11 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CE4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  a3(0);
  v8 = v7;
  v9 = a1;
  v10 = sub_24AAB5214();

  if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(v4 + v6);
LABEL_8:
  *(v4 + v6) = a1;
}

uint64_t sub_24AA1E778@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldStatusMessage;
  swift_beginAccess();
  return sub_24AA1695C(v5 + v3, a1, &qword_27EF855C0, &unk_24AAB7270);
}

uint64_t sub_24AA1E850@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldStatusMessage;
  swift_beginAccess();
  return sub_24AA1695C(v3 + v4, a2, &qword_27EF855C0, &unk_24AAB7270);
}

uint64_t sub_24AA1E928(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855C0, &unk_24AAB7270);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_24AA1695C(a1, &v10 - v6, &qword_27EF855C0, &unk_24AAB7270);
  v8 = *a2;
  return sub_24AA1E9D4(v7);
}

uint64_t sub_24AA1E9D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855C0, &unk_24AAB7270);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldStatusMessage;
  swift_beginAccess();
  sub_24AA1695C(v1 + v7, v6, &qword_27EF855C0, &unk_24AAB7270);
  v8 = sub_24AA435B8(v6, a1);
  sub_24AA169C4(v6, &qword_27EF855C0, &unk_24AAB7270);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  else
  {
    sub_24AA1695C(a1, v6, &qword_27EF855C0, &unk_24AAB7270);
    swift_beginAccess();
    sub_24AA43980(v6, v1 + v7, &qword_27EF855C0, &unk_24AAB7270);
    swift_endAccess();
  }

  return sub_24AA169C4(a1, &qword_27EF855C0, &unk_24AAB7270);
}

uint64_t sub_24AA1EBDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855C0, &unk_24AAB7270);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_24AA1695C(a2, &v10 - v6, &qword_27EF855C0, &unk_24AAB7270);
  v8 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldStatusMessage;
  swift_beginAccess();
  sub_24AA43980(v7, a1 + v8, &qword_27EF855C0, &unk_24AAB7270);
  return swift_endAccess();
}

uint64_t sub_24AA1ECC0()
{
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle);
  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle + 8);

  return v1;
}

uint64_t sub_24AA1ED7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v4 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle);
  a2[1] = v4;
}

uint64_t sub_24AA1EE4C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle);
  v6 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle + 8);
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle + 8);
      if (sub_24AAB5474())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

BOOL sub_24AA1F130()
{
  v1 = v0;
  swift_getKeyPath();
  v13 = v0;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__posterViewModel);
  if (v2)
  {
    swift_getKeyPath();
    v13 = v0;

    sub_24AAB2CF4();

    v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callTranslationViewModel;
    swift_beginAccess();
    v4 = *(v1 + v3);
    if (!v4)
    {
      goto LABEL_7;
    }

    swift_getKeyPath();
    v12 = v4;
    sub_24AA42080(&qword_27EF85520, type metadata accessor for CallTranslationViewModel);

    sub_24AAB2CF4();

    v5 = *(v4 + 32);

    if (v5 == 1)
    {
      v6 = sub_24AAB3A64();
      v7 = sub_24AAB5144();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v12 = v9;
        *v8 = 136315650;
        *(v8 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v12);
        *(v8 + 12) = 2080;
        *(v8 + 14) = sub_24AA406B4(0x6E69776F68537369, 0xEF726574736F5067, &v12);
        *(v8 + 22) = 2048;
        *(v8 + 24) = 87;
        _os_log_impl(&dword_24AA0F000, v6, v7, "[%s:%s:%ld] isShowingPoster FALSE because we are currently in translation mode", v8, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v9, -1, -1);
        MEMORY[0x24C226630](v8, -1, -1);
      }
    }

    else
    {
LABEL_7:
      if (sub_24AA47230())
      {
        swift_getKeyPath();
        v12 = v2;
        sub_24AA42080(&qword_27EF85528, type metadata accessor for CallNotificationPosterViewModel);
        sub_24AAB2CF4();

        v10 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView) != 0;

        return v10;
      }
    }
  }

  return 0;
}

uint64_t sub_24AA1F4A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  swift_getObjectType();
  return sub_24AAB3944() & 1;
}

uint64_t sub_24AA1F4E0()
{
  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
  swift_getObjectType();
  v3 = *(v1 + 8);
  if (sub_24AAB3574())
  {
    v4 = sub_24AAB38F4();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_24AA1F558()
{
  v1 = v0;
  if ([*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_featureFlags) LVMEverywhere] && (v3 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call), v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8), swift_getObjectType(), v17 = v3, v4 = *(v2 + 8), (sub_24AAB34D4() & 1) != 0) && (sub_24AAB3A04() & 1) != 0)
  {
    v5 = sub_24AAB39F4() != 1 && sub_24AAB39F4() != 6 && sub_24AAB39F4() != 5;

    v13 = sub_24AAB3A64();
    v14 = sub_24AAB5144();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      *v15 = 136316162;
      *(v15 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v17);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_24AA406B4(0x63656E6E6F437369, 0xEC000000676E6974, &v17);
      *(v15 + 22) = 2048;
      *(v15 + 24) = 109;
      *(v15 + 32) = 1024;
      *(v15 + 34) = sub_24AAB39F4();

      *(v15 + 38) = 1024;
      *(v15 + 40) = v5;
      _os_log_impl(&dword_24AA0F000, v13, v14, "[%s:%s:%ld] call isRelay, call status: %d isConnecting: %{BOOL}d", v15, 0x2Cu);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v16, -1, -1);
      MEMORY[0x24C226630](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
    v7 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
    swift_getObjectType();
    if (sub_24AAB39F4() == 1)
    {
      LOBYTE(v5) = sub_24AAB3874() ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }

    v8 = sub_24AAB3A64();
    v9 = sub_24AAB5144();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315906;
      *(v10 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v17);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_24AA406B4(0x63656E6E6F437369, 0xEC000000676E6974, &v17);
      *(v10 + 22) = 2048;
      *(v10 + 24) = 115;
      *(v10 + 32) = 1024;
      *(v10 + 34) = v5 & 1;
      _os_log_impl(&dword_24AA0F000, v8, v9, "[%s:%s:%ld] isConnecting: %{BOOL}d", v10, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v11, -1, -1);
      MEMORY[0x24C226630](v10, -1, -1);
    }
  }

  return v5 & 1;
}

uint64_t sub_24AA1F944(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  return *(v2 + *a2);
}

uint64_t sub_24AA1F9E4@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_24AA1FAC0(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  return result;
}

uint64_t sub_24AA1FBC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  swift_getObjectType();
  v3 = sub_24AAB3954();
  if ((sub_24AA1F558() & 1) != 0 || (swift_getKeyPath(), v13 = v0, sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel), sub_24AAB2CF4(), , *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitingForAskToShare) == 1))
  {

    v4 = sub_24AAB3A64();
    v5 = sub_24AAB5144();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136316162;
      *(v6 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v13);
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_24AA406B4(0x7669746365666665, 0xEF73757461745365, &v13);
      *(v6 + 22) = 2048;
      *(v6 + 24) = 123;
      *(v6 + 32) = 1024;
      *(v6 + 34) = sub_24AA1F558() & 1;
      *(v6 + 38) = 1024;
      swift_getKeyPath();
      sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
      sub_24AAB2CF4();

      *(v6 + 40) = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitingForAskToShare);

      _os_log_impl(&dword_24AA0F000, v4, v5, "[%s:%s:%ld] Overriding status to ringing - isConnecting: %{BOOL}d, waitingForAskToShare: %{BOOL}d", v6, 0x2Cu);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v7, -1, -1);
      MEMORY[0x24C226630](v6, -1, -1);
    }

    else
    {
    }

    v3 = 4;
  }

  v8 = sub_24AAB3A64();
  v9 = sub_24AAB5144();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315906;
    *(v10 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v13);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_24AA406B4(0x7669746365666665, 0xEF73757461745365, &v13);
    *(v10 + 22) = 2048;
    *(v10 + 24) = 128;
    *(v10 + 32) = 1024;
    *(v10 + 34) = v3;
    _os_log_impl(&dword_24AA0F000, v8, v9, "[%s:%s:%ld] Effective status: %d", v10, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v11, -1, -1);
    MEMORY[0x24C226630](v10, -1, -1);
  }

  return v3;
}

void (*sub_24AA20090(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  v4[7] = sub_24AA1FFC4();
  return sub_24AA201C8;
}

uint64_t sub_24AA20248@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_24AA20348(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
}

uint64_t sub_24AA20420()
{
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CE4();
}

uint64_t sub_24AA204E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = *(a1 + v5);
  *(a1 + v5) = a2;
}

void (*sub_24AA20554(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  v4[7] = sub_24AA201D4();
  return sub_24AA2068C;
}

void sub_24AA20698(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_24AAB2D04();

  free(v1);
}

uint64_t sub_24AA20740(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v4 = *(v2 + *a2);
}

uint64_t sub_24AA207E4@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  *a3 = *(v5 + *a2);
}

uint64_t sub_24AA2089C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CE4();
}

void *sub_24AA20958()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel____lazy_storage___controlsManager;
  v3 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel____lazy_storage___controlsManager);
  v4 = v3;
  if (v3 == 1)
  {
    sub_24AAB2E94();
    v5 = sub_24AAB2E84();
    v6 = sub_24AAB2E74();

    if ((v6 & 1) != 0 && (v7 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call), objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      sub_24AAB2D64();
      swift_unknownObjectRetain();
      v4 = sub_24AAB2D54();
    }

    else
    {
      v4 = 0;
    }

    v8 = *(v1 + v2);
    *(v1 + v2) = v4;
    v9 = v4;
    sub_24AA421A0(v8);
  }

  sub_24AA4345C(v3);
  return v4;
}

uint64_t CallNotificationViewModel.init(call:callCenter:callsReminder:callConfirmationPresenter:forwardCallAction:isScreenLocked:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, int a8)
{
  v33 = a8;
  v31 = a2;
  v32 = a4;
  ObjectType = swift_getObjectType();
  v14 = a3[3];
  v29 = a3[4];
  v30 = ObjectType;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a3, v14);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = a5[3];
  v21 = a5[4];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a5, v20);
  v23 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25);
  v27 = sub_24AA41024(a1, v18, v32, v25, a6, a7, v33, v34, v30, v14, v20, v31, v29, v21);
  sub_24AA16D74(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v27;
}

uint64_t sub_24AA20C48(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  sub_24AA1695C(a1, v40, &qword_27EF85568, &qword_24AABC830);

  v4 = sub_24AAB3A64();
  v5 = sub_24AAB5144();

  v6 = &qword_27EF85000;
  v7 = &qword_27EF85000;
  if (os_log_type_enabled(v4, v5))
  {
    v8 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v32[0] = v31;
    *v8 = 136316162;
    *(v8 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v32);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_24AA406B4(0xD000000000000015, 0x800000024AAD1E70, v32);
    *(v8 + 22) = 2048;
    *(v8 + 24) = 703;
    *(v8 + 32) = 2080;
    swift_getKeyPath();
    *&v34 = v2;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CF4();

    v30 = v5;
    v9 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___trailingControlRecipe;
    swift_beginAccess();
    sub_24AA1695C(v2 + v9, &v34, &qword_27EF85568, &qword_24AABC830);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85568, &qword_24AABC830);
    v10 = sub_24AAB4F34();
    v12 = v3;
    v13 = sub_24AA406B4(v10, v11, v32);

    *(v8 + 34) = v13;
    *(v8 + 42) = 2080;
    sub_24AA1695C(v40, &v34, &qword_27EF85568, &qword_24AABC830);
    v14 = sub_24AAB4F34();
    v16 = v15;
    sub_24AA169C4(v40, &qword_27EF85568, &qword_24AABC830);
    v17 = sub_24AA406B4(v14, v16, v32);
    v3 = v12;
    v7 = &qword_27EF85000;

    *(v8 + 44) = v17;
    v6 = &qword_27EF85000;
    _os_log_impl(&dword_24AA0F000, v4, v30, "[%s:%s:%ld] Setting trailing control recipe from %s to %s", v8, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v31, -1, -1);
    MEMORY[0x24C226630](v8, -1, -1);
  }

  else
  {

    sub_24AA169C4(v40, &qword_27EF85568, &qword_24AABC830);
  }

  swift_getKeyPath();
  v18 = v6[154];
  *&v32[0] = v2;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v19 = v7[172];
  swift_beginAccess();
  sub_24AA1695C(v2 + v19, &v34, &qword_27EF85568, &qword_24AABC830);
  if (v39 == 255)
  {
    sub_24AA169C4(&v34, &qword_27EF85568, &qword_24AABC830);
  }

  else
  {
    v40[2] = v36;
    v40[3] = v37;
    v40[4] = v38;
    v41 = v39;
    v40[0] = v34;
    v40[1] = v35;
    sub_24AA1695C(v3, v32, &qword_27EF85568, &qword_24AABC830);
    if (v33 == 255)
    {
      sub_24AA4214C(v40);
      sub_24AA169C4(v32, &qword_27EF85568, &qword_24AABC830);
    }

    else
    {
      v36 = v32[2];
      v37 = v32[3];
      v38 = v32[4];
      v39 = v33;
      v34 = v32[0];
      v35 = v32[1];
      if (sub_24AA734BC(v40, &v34))
      {
        v20 = sub_24AAB3A64();
        v21 = sub_24AAB5144();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          *&v32[0] = v23;
          *v22 = 136315650;
          *(v22 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v32);
          *(v22 + 12) = 2080;
          *(v22 + 14) = sub_24AA406B4(0xD000000000000015, 0x800000024AAD1E70, v32);
          *(v22 + 22) = 2048;
          *(v22 + 24) = 705;
          _os_log_impl(&dword_24AA0F000, v20, v21, "[%s:%s:%ld] Animating trailing control recipe change", v22, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C226630](v23, -1, -1);
          MEMORY[0x24C226630](v22, -1, -1);
        }

        v24 = MEMORY[0x24C2255E0](0.5, 0.85, 0.0);
        MEMORY[0x28223BE20](v24);
        sub_24AAB3E24();

        sub_24AA169C4(v3, &qword_27EF85568, &qword_24AABC830);
        sub_24AA4214C(v40);
        return sub_24AA4214C(&v34);
      }

      sub_24AA4214C(v40);
      sub_24AA4214C(&v34);
    }
  }

  v26 = sub_24AAB3A64();
  v27 = sub_24AAB5144();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v40[0] = v29;
    *v28 = 136315650;
    *(v28 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v40);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_24AA406B4(0xD000000000000015, 0x800000024AAD1E70, v40);
    *(v28 + 22) = 2048;
    *(v28 + 24) = 710;
    _os_log_impl(&dword_24AA0F000, v26, v27, "[%s:%s:%ld] Not animating trailing control recipe change", v28, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v29, -1, -1);
    MEMORY[0x24C226630](v28, -1, -1);
  }

  sub_24AA1695C(v3, v40, &qword_27EF85568, &qword_24AABC830);
  sub_24AA1C538(v40);
  return sub_24AA169C4(v3, &qword_27EF85568, &qword_24AABC830);
}

uint64_t CallNotificationViewModel.deinit()
{
  v1 = v0;
  v2 = sub_24AAB3A84();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v54 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v53 - v7;
  v9 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
  v10 = v3[2];
  v10(&v53 - v7, v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger, v2);
  v11 = sub_24AAB3A64();
  v12 = sub_24AAB5144();
  v13 = os_log_type_enabled(v11, v12);
  v55 = v9;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v56 = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v56);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_24AA406B4(0x74696E696564, 0xE600000000000000, &v56);
    *(v14 + 22) = 2048;
    *(v14 + 24) = 176;
    _os_log_impl(&dword_24AA0F000, v11, v12, "[%s:%s:%ld] Deinitializing CallNotificationViewModel", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v15, -1, -1);
    v16 = v14;
    v9 = v55;
    MEMORY[0x24C226630](v16, -1, -1);
  }

  v17 = v3[1];
  v17(v8, v2);
  sub_24AAB2E94();
  v18 = sub_24AAB2E84();
  v19 = sub_24AAB2E74();

  if (v19)
  {
    v20 = v54;
    v10(v54, v1 + v9, v2);

    v21 = sub_24AAB3A64();
    v22 = sub_24AAB5144();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v56 = v53;
      *v23 = 136315906;
      *(v23 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v56);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_24AA406B4(0x74696E696564, 0xE600000000000000, &v56);
      *(v23 + 22) = 2048;
      *(v23 + 24) = 178;
      *(v23 + 32) = 2080;
      v24 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
      v25 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
      swift_getObjectType();
      v26 = sub_24AAB39A4();
      v28 = sub_24AA406B4(v26, v27, &v56);

      *(v23 + 34) = v28;
      _os_log_impl(&dword_24AA0F000, v21, v22, "[%s:%s:%ld] Clearing menu item registry for call: %s", v23, 0x2Au);
      v29 = v53;
      swift_arrayDestroy();
      MEMORY[0x24C226630](v29, -1, -1);
      MEMORY[0x24C226630](v23, -1, -1);

      v30 = v54;
    }

    else
    {

      v30 = v20;
    }

    v17(v30, v2);
    sub_24AAB3184();
    v31 = sub_24AAB3154();
    v32 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
    v33 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_24AAB39A4();
    swift_unknownObjectRelease();
    sub_24AAB3144();

    v9 = v55;
  }

  v17((v1 + v9), v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter));
  v34 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callsReminder));
  v35 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callConfirmationHelper);

  v36 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_forwardCallAction + 8);
  sub_24AA16D74(*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_forwardCallAction));
  sub_24AA42D74(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__statusViewModel, type metadata accessor for CallStatusViewModel);
  sub_24AA4214C(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe);
  sub_24AA169C4(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___trailingControlRecipe, &qword_27EF85568, &qword_24AABC830);
  v37 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___callHoldingAnalytics);

  v38 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__moreMenuViewModel);

  v39 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__keypadViewModel);

  v40 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__posterViewModel);

  v41 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_changesCancellable);

  v42 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_recordingCancellable);

  v43 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_smartHoldingCancellable);

  v44 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_waitOnHoldStatusMessageCancellable);

  v45 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldController);

  sub_24AA169C4(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldStatusMessage, &qword_27EF855C0, &unk_24AAB7270);
  v46 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle + 8);

  v47 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel);

  v48 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callTranslationViewModel);

  v49 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__audioCallRecordingViewModel);

  sub_24AA421A0(*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel____lazy_storage___controlsManager));
  v50 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___observationRegistrar;
  v51 = sub_24AAB2D34();
  (*(*(v51 - 8) + 8))(v1 + v50, v51);
  return v1;
}

uint64_t CallNotificationViewModel.__deallocating_deinit()
{
  CallNotificationViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24AA21AFC()
{
  v1 = v0;
  v206 = type metadata accessor for CallSubtitle(0);
  v2 = *(*(v206 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v206);
  v197 = (&v192 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x28223BE20](v3);
  v202 = &v192 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v204 = &v192 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v195 = (&v192 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v198 = &v192 - v12;
  MEMORY[0x28223BE20](v11);
  v200 = &v192 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v192 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v192 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v192 - v22;
  v205 = type metadata accessor for CallStatusViewModel(0);
  v24 = *(*(v205 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v205);
  v201 = (&v192 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x28223BE20](v25);
  v199 = (&v192 - v28);
  v29 = MEMORY[0x28223BE20](v27);
  v203 = (&v192 - v30);
  MEMORY[0x28223BE20](v29);
  v32 = (&v192 - v31);
  v210 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
  v33 = sub_24AAB3A64();
  v34 = sub_24AAB5144();
  v35 = os_log_type_enabled(v33, v34);
  v196 = v18;
  v194 = v21;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v213[0] = v37;
    *v36 = 136315650;
    *(v36 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v213);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_24AA406B4(0x2928657461647075, 0xE800000000000000, v213);
    *(v36 + 22) = 2048;
    *(v36 + 24) = 184;
    _os_log_impl(&dword_24AA0F000, v33, v34, "[%s:%s:%ld] Updating CallNotificationViewModel", v36, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v37, -1, -1);
    MEMORY[0x24C226630](v36, -1, -1);
  }

  swift_getKeyPath();
  v38 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___observationRegistrar;
  v213[0] = v1;
  v209 = sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v208 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__audioCallRecordingViewModel;
  v39 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__audioCallRecordingViewModel);
  if (v39)
  {
    swift_getKeyPath();
    v213[0] = v39;
    sub_24AA42080(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);

    sub_24AAB2CF4();

    if (*(v39 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel + 8))
    {
      v207 = v38;
      v40 = *(v39 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel);

      v41 = sub_24AAB3A64();
      v42 = sub_24AAB5144();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v206 = v40;
        v44 = v43;
        v45 = swift_slowAlloc();
        v213[0] = v45;
        *v44 = 136315650;
        *(v44 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v213);
        *(v44 + 12) = 2080;
        *(v44 + 14) = sub_24AA406B4(0x2928657461647075, 0xE800000000000000, v213);
        *(v44 + 22) = 2048;
        *(v44 + 24) = 187;
        _os_log_impl(&dword_24AA0F000, v41, v42, "[%s:%s:%ld] Audio call recording active, updating status view model", v44, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v45, -1, -1);
        MEMORY[0x24C226630](v44, -1, -1);
      }

      v46 = sub_24AA39F60();
      if (v46)
      {
        v47 = v46;
        v218 = sub_24AA442A0(0, &qword_27EF85608, 0x277D6EE08);
        v219 = MEMORY[0x277D07EE8];
        *&v216 = v47;
        sub_24AA15A64(&v216, v213);
      }

      else
      {
        v65 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
        v66 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
        ObjectType = swift_getObjectType();
        v215 = *(v66 + 8);
        v213[0] = v65;
        swift_unknownObjectRetain();
      }

      AudioCallRecordingViewModel.recordingStartedDate.getter(v23);
      static CallStatusViewModel.statusViewModelFoCallRecording(for:statusLabel:duration:isScreenLocked:)(v213, v23, *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_isScreenLocked), v32);

      sub_24AA169C4(v23, &qword_27EF855E8, &unk_24AABCB40);
      __swift_destroy_boxed_opaque_existential_1Tm(v213);
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v192 - 2) = v1;
      *(&v192 - 1) = v32;
      v213[0] = v1;
      sub_24AAB2CE4();

      sub_24AA42D74(v32, type metadata accessor for CallStatusViewModel);
      if (!*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waveformViewModel))
      {
        v206 = 0;
LABEL_137:

        goto LABEL_94;
      }

LABEL_135:
      v191 = swift_getKeyPath();
      MEMORY[0x28223BE20](v191);
      *(&v192 - 2) = v1;
      *(&v192 - 1) = 0;
      v213[0] = v1;
      sub_24AAB2CE4();
      v206 = 0;

      goto LABEL_137;
    }
  }

  v48 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  v49 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
  v50 = swift_getObjectType();
  if ((sub_24AAB3944() & 1) == 0)
  {
    swift_getKeyPath();
    v213[0] = v1;
    sub_24AAB2CF4();

    v59 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
    swift_beginAccess();
    v60 = *(v1 + v59);
    v61 = v204;
    v207 = v38;
    if (v60)
    {
      v193 = v49;
      v62 = v204;
      v203 = v60;
      swift_getKeyPath();
      v213[0] = v203;
      sub_24AA42080(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);

      sub_24AAB2CF4();

      if (*(v203 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__isShowingTranscripts) == 1)
      {
        v63 = sub_24AA39F60();
        if (v63)
        {
          v64 = v63;
          v218 = sub_24AA442A0(0, &qword_27EF85608, 0x277D6EE08);
          v219 = MEMORY[0x277D07EE8];
          *&v216 = v64;
          sub_24AA15A64(&v216, v213);
        }

        else
        {
          ObjectType = v50;
          v215 = *(v193 + 8);
          v213[0] = v48;
          swift_unknownObjectRetain();
        }

        v96 = v198;
        v97 = sub_24AA1FBC4();
        v98 = v97;
        v99 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_isScreenLocked);
        if (v97 == 4 || v97 == 1)
        {
          __swift_project_boxed_opaque_existential_1(v213, ObjectType);
          sub_24AAB3504();
          v100 = v221;
          if (v221)
          {
            v101 = v222;
            v102 = v220;

            if (v101)
            {
              goto LABEL_55;
            }
          }
        }

        v103 = ObjectType;
        v104 = v215;
        v105 = __swift_project_boxed_opaque_existential_1(v213, ObjectType);
        v102 = sub_24AA87578(v105, v98, v99, v103, v104);
        v100 = v106;
LABEL_55:
        v107 = ObjectType;
        v108 = __swift_project_boxed_opaque_existential_1(v213, ObjectType);
        v204 = sub_24AA86BC8(v108, v98, 0, v107);
        v202 = v109;
        if (v98 > 2)
        {
          if ((v98 - 5) >= 2)
          {
            if (v98 == 3)
            {
              __swift_project_boxed_opaque_existential_1(v213, ObjectType);
              *v96 = sub_24AAB34F4();
              *(v96 + 8) = v168;
            }

            else if (v98 == 4)
            {
              sub_24AA16768(v213, v96);
              *(v96 + 40) = 4;
              __swift_project_boxed_opaque_existential_1(v213, ObjectType);
              *(v96 + 48) = sub_24AAB34F4();
              *(v96 + 56) = v110;
              *(v96 + 64) = 0;
            }

            goto LABEL_113;
          }

          __swift_project_boxed_opaque_existential_1(v213, ObjectType);
          sub_24AAB35B4();
          v118 = v218;
          if (v218)
          {
            v119 = v217;
          }

          else
          {
            __swift_project_boxed_opaque_existential_1(v213, ObjectType);
            v169 = sub_24AAB34F4();
            if (v170)
            {
              v119 = v169;
            }

            else
            {
              v119 = 0;
            }

            if (v170)
            {
              v118 = v170;
            }

            else
            {
              v118 = 0xE000000000000000;
            }
          }

          v171 = v195;
          *v195 = v119;
          *(v171 + 8) = v118;
          swift_storeEnumTagMultiPayload();
          sub_24AA44DD4(v171, v96, type metadata accessor for CallSubtitle);
        }

        else
        {
          if (v98 != 1)
          {
LABEL_113:
            swift_storeEnumTagMultiPayload();
            goto LABEL_123;
          }

          v201 = v102;
          v198 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85600, &qword_24AAB72B0) + 48);
          __swift_project_boxed_opaque_existential_1(v213, ObjectType);
          *v96 = sub_24AAB34F4();
          *(v96 + 8) = v120;
          __swift_project_boxed_opaque_existential_1(v213, ObjectType);
          v121 = v194;
          sub_24AAB34E4();
          v122 = sub_24AAB2C54();
          v123 = v96;
          v124 = *(v122 - 8);
          v125 = *(v124 + 48);
          if (v125(v121, 1, v122) == 1)
          {
            sub_24AAB2C34();
            v96 = v123;
            if (v125(v121, 1, v122) != 1)
            {
              sub_24AA169C4(v121, &qword_27EF855E8, &unk_24AABCB40);
            }
          }

          else
          {
            (*(v124 + 32))(v123 + v198, v121, v122);
            v96 = v123;
          }

          swift_storeEnumTagMultiPayload();
          v102 = v201;
        }

LABEL_123:
        sub_24AA44DD4(v96, v200, type metadata accessor for CallSubtitle);
        __swift_project_boxed_opaque_existential_1(v213, ObjectType);
        v172 = sub_24AAB3564();
        if (v172 && (v173 = v172, v174 = [v172 shouldHideContactWithLockState_], v173, v174))
        {
          v175 = MEMORY[0x277D84F90];
        }

        else
        {
          v176 = ObjectType;
          v177 = __swift_project_boxed_opaque_existential_1(v213, ObjectType);
          v175 = sub_24AA86F34(v177, v176);
        }

        __swift_project_boxed_opaque_existential_1(v213, ObjectType);
        v178 = sub_24AAB35A4();
        __swift_project_boxed_opaque_existential_1(v213, ObjectType);
        v179 = sub_24AAB3574();
        if ([v178 isFaceTimeProvider])
        {

          if (v179)
          {
            v180 = 2;
          }

          else
          {
            v180 = 1;
          }
        }

        else
        {
          v181 = [v178 isTelephonyProvider];

          if (v181)
          {
            v180 = 0;
          }

          else
          {
            v180 = 3;
          }
        }

        __swift_project_boxed_opaque_existential_1(v213, ObjectType);
        v182 = sub_24AAB3554();
        v184 = v183;
        v186 = v199;
        v185 = v200;
        *v199 = v102;
        v186[1] = v100;
        v187 = v205;
        v188 = v202;
        v186[2] = v204;
        v186[3] = v188;
        sub_24AA44DD4(v185, v186 + v187[6], type metadata accessor for CallSubtitle);
        *(v186 + v187[7]) = v175;
        *(v186 + v187[8]) = v180;
        v189 = (v186 + v187[9]);
        *v189 = v182;
        v189[1] = v184;
        __swift_destroy_boxed_opaque_existential_1Tm(v213);
        v190 = swift_getKeyPath();
        MEMORY[0x28223BE20](v190);
        *(&v192 - 2) = v1;
        *(&v192 - 1) = v186;
        v213[0] = v1;
        sub_24AAB2CE4();

        sub_24AA42D74(v186, type metadata accessor for CallStatusViewModel);
        if (!*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waveformViewModel))
        {
          v206 = 0;
          goto LABEL_137;
        }

        goto LABEL_135;
      }

      v61 = v62;
      v49 = v193;
    }

    v71 = sub_24AAB3A64();
    v72 = sub_24AAB5144();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v213[0] = v74;
      *v73 = 136315650;
      *(v73 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v213);
      *(v73 + 12) = 2080;
      *(v73 + 14) = sub_24AA406B4(0x2928657461647075, 0xE800000000000000, v213);
      *(v73 + 22) = 2048;
      *(v73 + 24) = 198;
      _os_log_impl(&dword_24AA0F000, v71, v72, "[%s:%s:%ld] Default status update", v73, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v74, -1, -1);
      MEMORY[0x24C226630](v73, -1, -1);
    }

    v75 = sub_24AA39F60();
    if (v75)
    {
      v76 = v75;
      v218 = sub_24AA442A0(0, &qword_27EF85608, 0x277D6EE08);
      v219 = MEMORY[0x277D07EE8];
      *&v216 = v76;
      sub_24AA15A64(&v216, v213);
    }

    else
    {
      ObjectType = v50;
      v215 = *(v49 + 8);
      v213[0] = v48;
      swift_unknownObjectRetain();
    }

    v77 = v202;
    v78 = sub_24AA1FBC4();
    v79 = v78;
    v80 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_isScreenLocked);
    if (v78 == 4 || v78 == 1)
    {
      __swift_project_boxed_opaque_existential_1(v213, ObjectType);
      sub_24AAB3504();
      v81 = v221;
      if (v221)
      {
        v82 = v222;
        v83 = v220;

        if (v82)
        {
          goto LABEL_38;
        }
      }
    }

    v84 = ObjectType;
    v85 = v215;
    v86 = __swift_project_boxed_opaque_existential_1(v213, ObjectType);
    v83 = sub_24AA87578(v86, v79, v80, v84, v85);
    v81 = v87;
LABEL_38:
    v88 = ObjectType;
    v89 = __swift_project_boxed_opaque_existential_1(v213, ObjectType);
    v203 = sub_24AA86BC8(v89, v79, 0, v88);
    v200 = v90;
    if (v79 > 2)
    {
      if ((v79 - 5) < 2)
      {
        v92 = v80;
        __swift_project_boxed_opaque_existential_1(v213, ObjectType);
        sub_24AAB35B4();
        v93 = v218;
        if (v218)
        {
          v94 = v83;
          v95 = v217;
        }

        else
        {
          v94 = v83;
          __swift_project_boxed_opaque_existential_1(v213, ObjectType);
          v77 = v202;
          v126 = sub_24AAB34F4();
          if (v127)
          {
            v95 = v126;
          }

          else
          {
            v95 = 0;
          }

          if (v127)
          {
            v93 = v127;
          }

          else
          {
            v93 = 0xE000000000000000;
          }
        }

        v128 = v197;
        *v197 = v95;
        *(v128 + 8) = v93;
        swift_storeEnumTagMultiPayload();
        sub_24AA44DD4(v128, v77, type metadata accessor for CallSubtitle);
        v83 = v94;
        v80 = v92;
        goto LABEL_82;
      }

      if (v79 == 3)
      {
        __swift_project_boxed_opaque_existential_1(v213, ObjectType);
        *v77 = sub_24AAB34F4();
        *(v77 + 8) = v117;
      }

      else if (v79 == 4)
      {
        sub_24AA16768(v213, v77);
        *(v77 + 40) = 4;
        __swift_project_boxed_opaque_existential_1(v213, ObjectType);
        *(v77 + 48) = sub_24AAB34F4();
        *(v77 + 56) = v91;
        *(v77 + 64) = 0;
      }
    }

    else if (v79 == 1)
    {
      LODWORD(v199) = v80;
      v202 = v83;
      v198 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85600, &qword_24AAB72B0) + 48);
      __swift_project_boxed_opaque_existential_1(v213, ObjectType);
      *v77 = sub_24AAB34F4();
      *(v77 + 8) = v111;
      __swift_project_boxed_opaque_existential_1(v213, ObjectType);
      v112 = v196;
      sub_24AAB34E4();
      v113 = sub_24AAB2C54();
      v114 = v77;
      v115 = *(v113 - 8);
      v116 = *(v115 + 48);
      if (v116(v112, 1, v113) == 1)
      {
        sub_24AAB2C34();
        v77 = v114;
        if (v116(v112, 1, v113) != 1)
        {
          sub_24AA169C4(v112, &qword_27EF855E8, &unk_24AABCB40);
        }
      }

      else
      {
        (*(v115 + 32))(v114 + v198, v112, v113);
        v77 = v114;
      }

      swift_storeEnumTagMultiPayload();
      v83 = v202;
      v80 = v199;
      goto LABEL_82;
    }

    swift_storeEnumTagMultiPayload();
LABEL_82:
    sub_24AA44DD4(v77, v61, type metadata accessor for CallSubtitle);
    __swift_project_boxed_opaque_existential_1(v213, ObjectType);
    v129 = sub_24AAB3564();
    if (v129 && (v130 = v129, v131 = [v129 shouldHideContactWithLockState_], v130, v131))
    {
      v132 = MEMORY[0x277D84F90];
    }

    else
    {
      v133 = ObjectType;
      v134 = __swift_project_boxed_opaque_existential_1(v213, ObjectType);
      v132 = sub_24AA86F34(v134, v133);
    }

    __swift_project_boxed_opaque_existential_1(v213, ObjectType);
    v135 = sub_24AAB35A4();
    __swift_project_boxed_opaque_existential_1(v213, ObjectType);
    v136 = sub_24AAB3574();
    if ([v135 isFaceTimeProvider])
    {

      if (v136)
      {
        v137 = 2;
      }

      else
      {
        v137 = 1;
      }
    }

    else
    {
      v138 = [v135 isTelephonyProvider];

      if (v138)
      {
        v137 = 0;
      }

      else
      {
        v137 = 3;
      }
    }

    __swift_project_boxed_opaque_existential_1(v213, ObjectType);
    v139 = sub_24AAB3554();
    v141 = v140;
    v142 = v201;
    *v201 = v83;
    v142[1] = v81;
    v143 = v200;
    v142[2] = v203;
    v142[3] = v143;
    v144 = v205;
    sub_24AA44DD4(v61, v142 + *(v205 + 24), type metadata accessor for CallSubtitle);
    *(v142 + v144[7]) = v132;
    *(v142 + v144[8]) = v137;
    v145 = (v142 + v144[9]);
    *v145 = v139;
    v145[1] = v141;
    __swift_destroy_boxed_opaque_existential_1Tm(v213);
    v146 = swift_getKeyPath();
    MEMORY[0x28223BE20](v146);
    *(&v192 - 2) = v1;
    *(&v192 - 1) = v142;
    v213[0] = v1;
    sub_24AAB2CE4();
    v206 = 0;

    sub_24AA42D74(v142, type metadata accessor for CallStatusViewModel);
    sub_24AA2F244();
    goto LABEL_94;
  }

  v51 = v38;
  v52 = sub_24AAB3A64();
  v53 = sub_24AAB5144();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v207 = v51;
    v56 = v55;
    v213[0] = v55;
    *v54 = 136315650;
    *(v54 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v213);
    *(v54 + 12) = 2080;
    *(v54 + 14) = sub_24AA406B4(0x2928657461647075, 0xE800000000000000, v213);
    *(v54 + 22) = 2048;
    *(v54 + 24) = 191;
    _os_log_impl(&dword_24AA0F000, v52, v53, "[%s:%s:%ld] Wait on hold active, updating status view model", v54, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v56, -1, -1);
    MEMORY[0x24C226630](v54, -1, -1);
  }

  v57 = sub_24AA39F60();
  if (v57)
  {
    v58 = v57;
    v218 = sub_24AA442A0(0, &qword_27EF85608, 0x277D6EE08);
    v219 = MEMORY[0x277D07EE8];
    *&v216 = v58;
    sub_24AA15A64(&v216, v213);
  }

  else
  {
    ObjectType = v50;
    v215 = *(v49 + 8);
    v213[0] = v48;
    swift_unknownObjectRetain();
  }

  v68 = v203;
  static CallStatusViewModel.statusViewModelForWaitOnHold(for:isScreenLocked:)(v213, *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_isScreenLocked), v203);
  __swift_destroy_boxed_opaque_existential_1Tm(v213);
  v69 = swift_getKeyPath();
  MEMORY[0x28223BE20](v69);
  *(&v192 - 2) = v1;
  *(&v192 - 1) = v68;
  v213[0] = v1;
  sub_24AAB2CE4();

  sub_24AA42D74(v68, type metadata accessor for CallStatusViewModel);
  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waveformViewModel))
  {
    v70 = swift_getKeyPath();
    MEMORY[0x28223BE20](v70);
    *(&v192 - 2) = v1;
    *(&v192 - 1) = 0;
    v213[0] = v1;
    sub_24AAB2CE4();
    v206 = 0;
  }

  else
  {
    v206 = 0;
  }

LABEL_94:
  v147 = sub_24AAB3A64();
  v148 = sub_24AAB5144();
  if (os_log_type_enabled(v147, v148))
  {
    v149 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    v213[0] = v150;
    *v149 = 136315650;
    *(v149 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v213);
    *(v149 + 12) = 2080;
    *(v149 + 14) = sub_24AA406B4(0x2928657461647075, 0xE800000000000000, v213);
    *(v149 + 22) = 2048;
    *(v149 + 24) = 203;
    _os_log_impl(&dword_24AA0F000, v147, v148, "[%s:%s:%ld] Updating view models", v149, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v150, -1, -1);
    MEMORY[0x24C226630](v149, -1, -1);
  }

  swift_getKeyPath();
  v213[0] = v1;
  sub_24AAB2CF4();

  v151 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
  swift_beginAccess();
  if (*(v1 + v151))
  {

    CallScreeningViewModel.update(_:)(0);
  }

  swift_getKeyPath();
  v213[0] = v1;
  sub_24AAB2CF4();

  if (*(v1 + v208))
  {
    v152 = *(v1 + v208);

    sub_24AA50268();
    sub_24AA4AD50();
  }

  sub_24AA27488();
  v153 = sub_24AAB3A64();
  v154 = sub_24AAB5144();
  if (os_log_type_enabled(v153, v154))
  {
    v155 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    v213[0] = v156;
    *v155 = 136315650;
    *(v155 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v213);
    *(v155 + 12) = 2080;
    *(v155 + 14) = sub_24AA406B4(0x2928657461647075, 0xE800000000000000, v213);
    *(v155 + 22) = 2048;
    *(v155 + 24) = 208;
    _os_log_impl(&dword_24AA0F000, v153, v154, "[%s:%s:%ld] Updating controls", v155, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v156, -1, -1);
    MEMORY[0x24C226630](v155, -1, -1);
  }

  sub_24AA29C9C(v213);
  sub_24AA20C48(v213);
  sub_24AA2A2D4(v213);
  sub_24AA1D19C(v213);
  v157 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  v158 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
  swift_getObjectType();
  v212[0] = v157;
  v159 = *(v158 + 8);
  result = sub_24AAB35B4();
  if (ObjectType)
  {
    sub_24AA169C4(v213, &qword_27EF855F8, &qword_24AAB72A8);
    v161 = sub_24AAB3A64();
    v162 = sub_24AAB5144();
    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v212[0] = v164;
      *v163 = 136315650;
      *(v163 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v212);
      *(v163 + 12) = 2080;
      *(v163 + 14) = sub_24AA406B4(0x2928657461647075, 0xE800000000000000, v212);
      *(v163 + 22) = 2048;
      *(v163 + 24) = 213;
      _os_log_impl(&dword_24AA0F000, v161, v162, "[%s:%s:%ld] Post call alert present, hiding keypad and RTT", v163, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v164, -1, -1);
      MEMORY[0x24C226630](v163, -1, -1);
    }

    if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingKeypad))
    {
      v165 = swift_getKeyPath();
      MEMORY[0x28223BE20](v165);
      *(&v192 - 2) = v1;
      *(&v192 - 8) = 0;
      v212[0] = v1;
      sub_24AAB2CE4();
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingKeypad) = 0;
      sub_24AA1DC18(0);
    }

    v166 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingRTT;
    result = swift_beginAccess();
    if (*(v1 + v166))
    {
      v167 = swift_getKeyPath();
      MEMORY[0x28223BE20](v167);
      *(&v192 - 2) = v1;
      *(&v192 - 8) = 0;
      v211 = v1;
      sub_24AAB2CE4();
    }

    else
    {
      *(v1 + v166) = 0;
    }
  }

  return result;
}

void sub_24AA23BC0()
{
  v1 = v0;
  v2 = sub_24AAB2E44();
  v197 = *(v2 - 8);
  v198 = v2;
  v3 = *(v197 + 64);
  MEMORY[0x28223BE20](v2);
  v199 = &v194 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v194 - v7;
  v200 = type metadata accessor for CallSubtitle(0);
  v9 = *(*(v200 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v200);
  v196 = (&v194 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v194 - v13;
  MEMORY[0x28223BE20](v12);
  v207 = &v194 - v15;
  v204 = type metadata accessor for CallStatusViewModel(0);
  v16 = *(*(v204 - 8) + 64);
  MEMORY[0x28223BE20](v204);
  v205 = (&v194 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_featureFlags);
  v19 = [v18 LVMEverywhere];
  v20 = &qword_27EF85000;
  v21 = sub_24AAB3A64();
  v22 = sub_24AAB5144();
  v23 = os_log_type_enabled(v21, v22);
  v24 = &qword_27EF85000;
  v203 = v14;
  v195 = v8;
  if (v19)
  {
    if (v23)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v235 = v26;
      *v25 = 136315650;
      *(v25 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v235);
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1DB0, &v235);
      *(v25 + 22) = 2048;
      *(v25 + 24) = 222;
      _os_log_impl(&dword_24AA0F000, v21, v22, "[%s:%s:%ld] LVM everywhere enabled, creating CallScreeningViewModel", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v26, -1, -1);
      MEMORY[0x24C226630](v25, -1, -1);
    }

    v27 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
    v28 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
    sub_24AA16768(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter, &v235);
    sub_24AA16768(&v235, &v232);
    v29 = qword_27EF84C60;
    swift_unknownObjectRetain();
    if (v29 != -1)
    {
      swift_once();
    }

    v30 = qword_27EF87140;
    v31 = type metadata accessor for CallScreeningViewModel(0);
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    swift_unknownObjectRetain();
    sub_24AAA7274(v27, v28, &v232, v30);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(&v235);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v235 = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  else
  {
    if (v23)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v235 = v36;
      *v35 = 136315650;
      *(v35 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v235);
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1DB0, &v235);
      *(v35 + 22) = 2048;
      *(v35 + 24) = 228;
      _os_log_impl(&dword_24AA0F000, v21, v22, "[%s:%s:%ld] LVM everywhere disabled", v35, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v36, -1, -1);
      MEMORY[0x24C226630](v35, -1, -1);
    }

    v37 = swift_getKeyPath();
    MEMORY[0x28223BE20](v37);
    *&v235 = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  v38 = [v18 audioCallTranslationEnabled];
  v39 = sub_24AAB3A64();
  v40 = sub_24AAB5144();
  v41 = os_log_type_enabled(v39, v40);
  if (v38)
  {
    if (v41)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v235 = v43;
      *v42 = 136315650;
      *(v42 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v235);
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1DB0, &v235);
      *(v42 + 22) = 2048;
      *(v42 + 24) = 234;
      _os_log_impl(&dword_24AA0F000, v39, v40, "[%s:%s:%ld] Audio call translation enabled, creating CallTranslationViewModel", v42, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v43, -1, -1);
      MEMORY[0x24C226630](v42, -1, -1);
    }

    v45 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
    v44 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
    v46 = type metadata accessor for CallTranslationViewModel(0);
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    v49 = swift_unknownObjectRetain();
    v210 = v44;
    CallTranslationViewModel.init(call:)(v49, v44);
    v50 = swift_getKeyPath();
    MEMORY[0x28223BE20](v50);
    v51 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___observationRegistrar;
    *&v235 = v1;
    v52 = sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    v209 = v51;
    v206 = v52;
    sub_24AAB2CE4();
    v208 = 0;

    sub_24AAB2E94();
    v53 = sub_24AAB2E84();
    v54 = sub_24AAB2E74();

    if (v54)
    {
      v55 = sub_24AAB3A64();
      v56 = sub_24AAB5144();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *&v235 = v58;
        *v57 = 136315650;
        *(v57 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v235);
        *(v57 + 12) = 2080;
        *(v57 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1DB0, &v235);
        *(v57 + 22) = 2048;
        *(v57 + 24) = 238;
        _os_log_impl(&dword_24AA0F000, v55, v56, "[%s:%s:%ld] More menu enabled, registering live translation", v57, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v58, -1, -1);
        MEMORY[0x24C226630](v57, -1, -1);
      }

      sub_24AAB3184();
      v59 = sub_24AAB3154();
      swift_getObjectType();
      sub_24AAB39A4();
      v237 = 0;
      v235 = 0u;
      v236 = 0u;
      v234 = 0;
      v232 = 0u;
      v233 = 0u;
      v231 = 0;
      v229 = 0u;
      v230 = 0u;
      v228 = 0;
      v226 = 0u;
      v227 = 0u;
      v225 = 0;
      v223 = 0u;
      v224 = 0u;
      swift_getKeyPath();
      *&v220 = v1;
      sub_24AAB2CF4();

      v60 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callTranslationViewModel;
      swift_beginAccess();
      v61 = *(v1 + v60);
      if (v61)
      {
        swift_getKeyPath();
        *&v220 = v61;
        sub_24AA42080(&qword_27EF85520, type metadata accessor for CallTranslationViewModel);

        sub_24AAB2CF4();

        v62 = *(v61 + 40);

        v61 = sub_24AAB3024();
        v63 = sub_24AA42080(&qword_27EF856C0, MEMORY[0x277CFBA38]);
      }

      else
      {
        v62 = 0;
        v63 = 0;
        *(&v220 + 1) = 0;
        *&v221 = 0;
      }

      v20 = &qword_27EF85000;
      v24 = &qword_27EF85000;
      *&v220 = v62;
      *(&v221 + 1) = v61;
      v222 = v63;
      v219 = 0;
      v218 = 0u;
      v217 = 0u;
      v216 = 0;
      v214 = 0u;
      v215 = 0u;
      v213 = 0;
      v211 = 0u;
      v212 = 0u;
      sub_24AAB3164();

      sub_24AA169C4(&v211, &qword_27EF856B8, &qword_24AAB75B0);
      sub_24AA169C4(&v214, &qword_27EF856B8, &qword_24AAB75B0);
      sub_24AA169C4(&v217, &qword_27EF856B8, &qword_24AAB75B0);
      sub_24AA169C4(&v223, &qword_27EF856B8, &qword_24AAB75B0);
      sub_24AA169C4(&v226, &qword_27EF856B8, &qword_24AAB75B0);
      sub_24AA169C4(&v229, &qword_27EF856B8, &qword_24AAB75B0);
      sub_24AA169C4(&v232, &qword_27EF856B8, &qword_24AAB75B0);
      sub_24AA169C4(&v235, &qword_27EF856B8, &qword_24AAB75B0);
      sub_24AA169C4(&v220, &qword_27EF856B8, &qword_24AAB75B0);
    }

    else
    {
      v20 = &qword_27EF85000;
      v24 = &qword_27EF85000;
    }
  }

  else
  {
    if (v41)
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v235 = v65;
      *v64 = 136315650;
      *(v64 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v235);
      *(v64 + 12) = 2080;
      *(v64 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1DB0, &v235);
      *(v64 + 22) = 2048;
      *(v64 + 24) = 244;
      _os_log_impl(&dword_24AA0F000, v39, v40, "[%s:%s:%ld] Audio call translation disabled", v64, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v65, -1, -1);
      MEMORY[0x24C226630](v64, -1, -1);
    }

    v66 = swift_getKeyPath();
    MEMORY[0x28223BE20](v66);
    *&v235 = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CE4();
    v208 = 0;
  }

  swift_getKeyPath();
  v67 = v24[154];
  *&v235 = v1;
  v209 = sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  v210 = v67;
  sub_24AAB2CF4();

  v68 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callTranslationViewModel;
  swift_beginAccess();
  v69 = *(v1 + v68);
  if (v69)
  {
    swift_allocObject();
    swift_weakInit();
    v70 = swift_getKeyPath();
    v206 = &v194;
    MEMORY[0x28223BE20](v70);
    *&v235 = v69;
    sub_24AA42080(&qword_27EF85520, type metadata accessor for CallTranslationViewModel);

    v71 = v208;
    sub_24AAB2CE4();
    v208 = v71;
  }

  swift_getKeyPath();
  *&v235 = v1;
  sub_24AAB2CF4();

  if (*(v1 + v68))
  {
    v72 = *(v1 + v68);

    CallTranslationViewModel.start()();
  }

  v73 = v20[166];
  v74 = sub_24AAB3A64();
  v75 = sub_24AAB5144();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *&v235 = v77;
    *v76 = 136315650;
    *(v76 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v235);
    *(v76 + 12) = 2080;
    *(v76 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1DB0, &v235);
    *(v76 + 22) = 2048;
    *(v76 + 24) = 253;
    _os_log_impl(&dword_24AA0F000, v74, v75, "[%s:%s:%ld] Beginning smart holding session observation", v76, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v77, -1, -1);
    MEMORY[0x24C226630](v76, -1, -1);
  }

  sub_24AA263D8();
  v78 = sub_24AAB3A64();
  v79 = sub_24AAB5144();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *&v235 = v81;
    *v80 = 136315650;
    *(v80 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v235);
    *(v80 + 12) = 2080;
    *(v80 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1DB0, &v235);
    *(v80 + 22) = 2048;
    *(v80 + 24) = 257;
    _os_log_impl(&dword_24AA0F000, v78, v79, "[%s:%s:%ld] Creating status view model and audio call recording view model", v80, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v81, -1, -1);
    MEMORY[0x24C226630](v80, -1, -1);
  }

  v82 = sub_24AA39F60();
  if (v82)
  {
    v83 = v82;
    v84 = sub_24AA442A0(0, &qword_27EF85608, 0x277D6EE08);
    v234 = MEMORY[0x277D07EE8];
    *(&v233 + 1) = v84;
    *&v232 = v83;
    sub_24AA15A64(&v232, &v235);
  }

  else
  {
    v85 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
    v86 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
    *(&v236 + 1) = swift_getObjectType();
    v237 = *(v86 + 8);
    *&v235 = v85;
    swift_unknownObjectRetain();
  }

  v87 = sub_24AA1FBC4();
  v88 = v87;
  v89 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_isScreenLocked);
  if (v87 == 4 || v87 == 1)
  {
    __swift_project_boxed_opaque_existential_1(&v235, *(&v236 + 1));
    sub_24AAB3504();
    v90 = v239;
    if (v239)
    {
      v91 = v240;
      v92 = v238;

      if (v91)
      {
        goto LABEL_41;
      }
    }
  }

  v93 = *(&v236 + 1);
  v94 = v237;
  v95 = __swift_project_boxed_opaque_existential_1(&v235, *(&v236 + 1));
  v92 = sub_24AA87578(v95, v88, v89, v93, v94);
  v90 = v96;
LABEL_41:
  v97 = *(&v236 + 1);
  v98 = __swift_project_boxed_opaque_existential_1(&v235, *(&v236 + 1));
  v99 = sub_24AA86BC8(v98, v88, 0, v97);
  v206 = v73;
  v201 = v100;
  v202 = v99;
  if (v88 > 2)
  {
    v101 = v203;
    if ((v88 - 5) >= 2)
    {
      if (v88 == 3)
      {
        __swift_project_boxed_opaque_existential_1(&v235, *(&v236 + 1));
        *v101 = sub_24AAB34F4();
        *(v101 + 8) = v110;
      }

      else if (v88 == 4)
      {
        sub_24AA16768(&v235, v203);
        *(v101 + 40) = 4;
        __swift_project_boxed_opaque_existential_1(&v235, *(&v236 + 1));
        *(v101 + 48) = sub_24AAB34F4();
        *(v101 + 56) = v102;
        *(v101 + 64) = 0;
      }

      goto LABEL_55;
    }

    __swift_project_boxed_opaque_existential_1(&v235, *(&v236 + 1));
    sub_24AAB35B4();
    v103 = v242;
    if (v242)
    {
      v104 = v241;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(&v235, *(&v236 + 1));
      v111 = sub_24AAB34F4();
      if (v112)
      {
        v104 = v111;
      }

      else
      {
        v104 = 0;
      }

      if (v112)
      {
        v103 = v112;
      }

      else
      {
        v103 = 0xE000000000000000;
      }
    }

    v113 = v196;
    *v196 = v104;
    *(v113 + 8) = v103;
    swift_storeEnumTagMultiPayload();
    sub_24AA44DD4(v113, v101, type metadata accessor for CallSubtitle);
  }

  else
  {
    v101 = v203;
    if (v88 != 1)
    {
LABEL_55:
      swift_storeEnumTagMultiPayload();
      goto LABEL_65;
    }

    v196 = v92;
    v194 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85600, &qword_24AAB72B0) + 48);
    __swift_project_boxed_opaque_existential_1(&v235, *(&v236 + 1));
    *v101 = sub_24AAB34F4();
    *(v101 + 8) = v105;
    __swift_project_boxed_opaque_existential_1(&v235, *(&v236 + 1));
    v106 = v195;
    sub_24AAB34E4();
    v107 = sub_24AAB2C54();
    v108 = *(v107 - 8);
    v109 = *(v108 + 48);
    if (v109(v106, 1, v107) == 1)
    {
      sub_24AAB2C34();
      if (v109(v106, 1, v107) != 1)
      {
        sub_24AA169C4(v106, &qword_27EF855E8, &unk_24AABCB40);
      }
    }

    else
    {
      (*(v108 + 32))(v101 + v194, v106, v107);
    }

    swift_storeEnumTagMultiPayload();
    v92 = v196;
  }

LABEL_65:
  sub_24AA44DD4(v101, v207, type metadata accessor for CallSubtitle);
  __swift_project_boxed_opaque_existential_1(&v235, *(&v236 + 1));
  v114 = sub_24AAB3564();
  if (v114 && (v115 = v114, v116 = [v114 shouldHideContactWithLockState_], v115, v116))
  {
    v117 = MEMORY[0x277D84F90];
  }

  else
  {
    v118 = *(&v236 + 1);
    v119 = __swift_project_boxed_opaque_existential_1(&v235, *(&v236 + 1));
    v117 = sub_24AA86F34(v119, v118);
  }

  __swift_project_boxed_opaque_existential_1(&v235, *(&v236 + 1));
  v120 = sub_24AAB35A4();
  __swift_project_boxed_opaque_existential_1(&v235, *(&v236 + 1));
  v121 = sub_24AAB3574();
  if ([v120 isFaceTimeProvider])
  {

    if (v121)
    {
      v122 = 2;
    }

    else
    {
      v122 = 1;
    }
  }

  else
  {
    v123 = [v120 isTelephonyProvider];

    if (v123)
    {
      v122 = 0;
    }

    else
    {
      v122 = 3;
    }
  }

  __swift_project_boxed_opaque_existential_1(&v235, *(&v236 + 1));
  v124 = sub_24AAB3554();
  v126 = v125;
  v127 = v205;
  *v205 = v92;
  v127[1] = v90;
  v128 = v201;
  v127[2] = v202;
  v127[3] = v128;
  v129 = v204;
  sub_24AA44DD4(v207, v127 + *(v204 + 24), type metadata accessor for CallSubtitle);
  *(v127 + v129[7]) = v117;
  *(v127 + v129[8]) = v122;
  v130 = (v127 + v129[9]);
  *v130 = v124;
  v130[1] = v126;
  __swift_destroy_boxed_opaque_existential_1Tm(&v235);
  v131 = swift_getKeyPath();
  MEMORY[0x28223BE20](v131);
  *&v235 = v1;
  v132 = v208;
  sub_24AAB2CE4();

  sub_24AA42D74(v127, type metadata accessor for CallStatusViewModel);
  v133 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  v134 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
  ObjectType = swift_getObjectType();
  v136 = sub_24AAB39A4();
  v138 = v137;
  v139 = sub_24AAB3994();
  v207 = v133;
  v204 = ObjectType;
  v205 = v134;
  v140 = sub_24AAB3934();
  v141 = v140;
  if (v140)
  {
    v142 = [v140 recordingState];

    v143 = v142;
  }

  else
  {
    v143 = 0;
  }

  v144 = type metadata accessor for AudioCallRecordingViewModel(0);
  v145 = *(v144 + 48);
  v146 = *(v144 + 52);
  swift_allocObject();
  LOBYTE(v235) = v141 == 0;
  AudioCallRecordingViewModel.init(callUUID:_:recordingState:)(v136, v138, v139, v143 | ((v141 == 0) << 32));
  v147 = swift_getKeyPath();
  MEMORY[0x28223BE20](v147);
  *&v235 = v1;
  sub_24AAB2CE4();
  v208 = v132;

  swift_getKeyPath();
  *&v235 = v1;
  sub_24AAB2CF4();

  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__audioCallRecordingViewModel))
  {
    v148 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__audioCallRecordingViewModel);

    sub_24AA50268();
    sub_24AA4AD50();
  }

  swift_getKeyPath();
  *&v235 = v1;
  sub_24AAB2CF4();

  v149 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
  swift_beginAccess();
  if (*(v1 + v149))
  {
    v150 = *(v1 + v149);

    CallScreeningViewModel.update(_:)(1);
  }

  swift_getKeyPath();
  *&v235 = v1;
  sub_24AAB2CF4();

  v151 = *(v1 + v149);
  if (v151)
  {
    swift_allocObject();
    swift_weakInit();
    v152 = swift_getKeyPath();
    MEMORY[0x28223BE20](v152);
    *&v235 = v151;
    sub_24AA42080(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);

    v153 = v208;
    sub_24AAB2CE4();
    v208 = v153;
  }

  swift_getKeyPath();
  *&v235 = v1;
  sub_24AAB2CF4();

  v154 = *(v1 + v149);
  if (v154)
  {
    swift_allocObject();
    swift_weakInit();
    v155 = swift_getKeyPath();
    MEMORY[0x28223BE20](v155);
    *&v235 = v154;
    sub_24AA42080(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);

    v156 = v208;
    sub_24AAB2CE4();
    v208 = v156;
  }

  swift_getKeyPath();
  *&v235 = v1;
  sub_24AAB2CF4();

  v157 = *(v1 + v149);
  if (v157)
  {
    swift_allocObject();
    swift_weakInit();
    v158 = swift_getKeyPath();
    MEMORY[0x28223BE20](v158);
    *&v235 = v157;
    sub_24AA42080(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);

    v159 = v208;
    sub_24AAB2CE4();
    v208 = v159;
  }

  sub_24AAB2E94();
  v160 = sub_24AAB2E84();
  v161 = sub_24AAB2E74();

  if (v161)
  {
    objc_opt_self();
    v162 = swift_dynamicCastObjCClass();
    if (v162)
    {
      v203 = v162;
      swift_unknownObjectRetain();
      v163 = sub_24AA20958();
      if (v163)
      {
        v164 = v163;
        v165 = sub_24AAB3A64();
        v166 = sub_24AAB5144();
        if (os_log_type_enabled(v165, v166))
        {
          v167 = swift_slowAlloc();
          v168 = swift_slowAlloc();
          *&v235 = v168;
          *v167 = 136315650;
          *(v167 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v235);
          *(v167 + 12) = 2080;
          *(v167 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1DB0, &v235);
          *(v167 + 22) = 2048;
          *(v167 + 24) = 277;
          _os_log_impl(&dword_24AA0F000, v165, v166, "[%s:%s:%ld] More menu enabled, registering screen share", v167, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C226630](v168, -1, -1);
          MEMORY[0x24C226630](v167, -1, -1);
        }

        (*(v197 + 104))(v199, *MEMORY[0x277CFCA10], v198);
        v169 = objc_opt_self();
        swift_unknownObjectRetain();
        v207 = v164;
        v170 = [v169 sharedInstance];
        v171 = sub_24AAB2E64();
        v172 = *(v171 + 48);
        v173 = *(v171 + 52);
        swift_allocObject();
        v174 = sub_24AAB2E54();
        sub_24AAB3184();
        v175 = sub_24AAB3154();
        sub_24AAB39A4();
        v237 = 0;
        v235 = 0u;
        v236 = 0u;
        v234 = 0;
        v232 = 0u;
        v233 = 0u;
        v231 = 0;
        v229 = 0u;
        v230 = 0u;
        v228 = 0;
        v226 = 0u;
        v227 = 0u;
        v225 = 0;
        v223 = 0u;
        v224 = 0u;
        v222 = 0;
        v220 = 0u;
        v221 = 0u;
        *(&v218 + 1) = v171;
        v219 = sub_24AA42080(&qword_27EF856B0, MEMORY[0x277CFCA20]);
        *&v217 = v174;
        v216 = 0;
        v214 = 0u;
        v215 = 0u;
        v213 = 0;
        v211 = 0u;
        v212 = 0u;

        sub_24AAB3164();
        swift_unknownObjectRelease();

        sub_24AA169C4(&v211, &qword_27EF856B8, &qword_24AAB75B0);
        sub_24AA169C4(&v214, &qword_27EF856B8, &qword_24AAB75B0);
        sub_24AA169C4(&v220, &qword_27EF856B8, &qword_24AAB75B0);
        sub_24AA169C4(&v223, &qword_27EF856B8, &qword_24AAB75B0);
        sub_24AA169C4(&v226, &qword_27EF856B8, &qword_24AAB75B0);
        sub_24AA169C4(&v229, &qword_27EF856B8, &qword_24AAB75B0);
        sub_24AA169C4(&v232, &qword_27EF856B8, &qword_24AAB75B0);
        sub_24AA169C4(&v235, &qword_27EF856B8, &qword_24AAB75B0);
        sub_24AA169C4(&v217, &qword_27EF856B8, &qword_24AAB75B0);
        goto LABEL_99;
      }

      swift_unknownObjectRelease();
    }

    v176 = sub_24AAB3A64();
    v177 = sub_24AAB5144();
    if (os_log_type_enabled(v176, v177))
    {
      v178 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      *&v235 = v179;
      *v178 = 136315650;
      *(v178 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v235);
      *(v178 + 12) = 2080;
      *(v178 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1DB0, &v235);
      *(v178 + 22) = 2048;
      *(v178 + 24) = 281;
      _os_log_impl(&dword_24AA0F000, v176, v177, "[%s:%s:%ld] Unable to register screen share", v178, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v179, -1, -1);
      MEMORY[0x24C226630](v178, -1, -1);
    }
  }

LABEL_99:
  v180 = sub_24AAB2E84();
  v181 = sub_24AAB2E74();

  v182 = sub_24AAB3A64();
  v183 = sub_24AAB5144();
  v184 = os_log_type_enabled(v182, v183);
  if (v181)
  {
    if (v184)
    {
      v185 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      *&v235 = v186;
      *v185 = 136315650;
      *(v185 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v235);
      *(v185 + 12) = 2080;
      *(v185 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1DB0, &v235);
      *(v185 + 22) = 2048;
      *(v185 + 24) = 287;
      _os_log_impl(&dword_24AA0F000, v182, v183, "[%s:%s:%ld] More Menu enabled, creating MoreMenuViewModel", v185, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v186, -1, -1);
      MEMORY[0x24C226630](v185, -1, -1);
    }

    sub_24AA27488();
  }

  else
  {
    if (v184)
    {
      v187 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      *&v235 = v188;
      *v187 = 136315650;
      *(v187 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v235);
      *(v187 + 12) = 2080;
      *(v187 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1DB0, &v235);
      *(v187 + 22) = 2048;
      *(v187 + 24) = 290;
      _os_log_impl(&dword_24AA0F000, v182, v183, "[%s:%s:%ld] More Menu not enabled", v187, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v188, -1, -1);
      MEMORY[0x24C226630](v187, -1, -1);
    }

    v189 = swift_getKeyPath();
    MEMORY[0x28223BE20](v189);
    *&v235 = v1;
    sub_24AAB2CE4();
  }

  v190 = sub_24AAB3A64();
  v191 = sub_24AAB5144();
  if (os_log_type_enabled(v190, v191))
  {
    v192 = swift_slowAlloc();
    v193 = swift_slowAlloc();
    *&v235 = v193;
    *v192 = 136315650;
    *(v192 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v235);
    *(v192 + 12) = 2080;
    *(v192 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1DB0, &v235);
    *(v192 + 22) = 2048;
    *(v192 + 24) = 294;
    _os_log_impl(&dword_24AA0F000, v190, v191, "[%s:%s:%ld] Making waveform if needed", v192, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v193, -1, -1);
    MEMORY[0x24C226630](v192, -1, -1);
  }

  sub_24AA2F244();
}

void sub_24AA263D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v90 = &v79 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856C8, &qword_24AAB75E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v89 = &v79 - v7;
  v8 = sub_24AAB51C4();
  v80 = *(v8 - 8);
  v81 = v8;
  v9 = *(v80 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856D0, &qword_24AAB75E8);
  v82 = *(v12 - 8);
  v83 = v12;
  v13 = *(v82 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v79 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856D8, &qword_24AAB75F0);
  v84 = *(v16 - 8);
  v85 = v16;
  v17 = *(v84 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v79 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856E0, &qword_24AAB75F8);
  v87 = *(v20 - 8);
  v88 = v20;
  v21 = *(v87 + 64);
  MEMORY[0x28223BE20](v20);
  v86 = &v79 - v22;
  v91 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
  v23 = sub_24AAB3A64();
  v24 = sub_24AAB5144();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v93 = v26;
    *v25 = 136315650;
    *(v25 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v93);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, &v93);
    *(v25 + 22) = 2048;
    *(v25 + 24) = 910;
    _os_log_impl(&dword_24AA0F000, v23, v24, "[%s:%s:%ld] Beginning smart holding session observation", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v26, -1, -1);
    MEMORY[0x24C226630](v25, -1, -1);
  }

  v27 = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  v28 = [v27 waitOnHoldEnabled];

  v92 = sub_24AAB3A64();
  v29 = sub_24AAB5144();
  v30 = os_log_type_enabled(v92, v29);
  if (v28)
  {
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v93 = v32;
      *v31 = 136315650;
      *(v31 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v93);
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, &v93);
      *(v31 + 22) = 2048;
      *(v31 + 24) = 917;
      _os_log_impl(&dword_24AA0F000, v92, v29, "[%s:%s:%ld] Creating wait on hold controller and service", v31, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v32, -1, -1);
      MEMORY[0x24C226630](v31, -1, -1);
    }

    sub_24AAB2ED4();
    v33 = sub_24AAB2EC4();
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v79 - 2) = v1;
    *(&v79 - 1) = v33;
    v35 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___observationRegistrar;
    v93 = v1;
    v36 = sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    v92 = v35;
    v79 = v36;
    sub_24AAB2CE4();

    v37 = [objc_allocWithZone(sub_24AAB2DC4()) init];
    sub_24AA1E5B4(v37);
    sub_24AA3B8FC();
    v38 = sub_24AAB3A64();
    v39 = sub_24AAB5144();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v93 = v41;
      *v40 = 136315650;
      *(v40 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v93);
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, &v93);
      *(v40 + 22) = 2048;
      *(v40 + 24) = 923;
      _os_log_impl(&dword_24AA0F000, v38, v39, "[%s:%s:%ld] Enabling call screening capabilities", v40, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v41, -1, -1);
      MEMORY[0x24C226630](v40, -1, -1);
    }

    v42 = objc_opt_self();
    v43 = [v42 sharedInstance];
    v44 = [v43 callServicesClientCapabilities];

    [v44 setWantsToScreenCalls_];
    v45 = [v42 sharedInstance];
    v46 = [v45 callServicesClientCapabilities];

    [v46 save];
    v47 = [objc_opt_self() defaultCenter];
    v48 = *MEMORY[0x277D6F0E0];
    sub_24AAB51D4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856E8, &qword_24AAB7600);
    sub_24AA42080(&qword_27EF856F0, MEMORY[0x277CC9DB0]);
    v49 = v81;
    sub_24AAB3BF4();
    (*(v80 + 8))(v11, v49);
    sub_24AA16A68(&qword_27EF856F8, &qword_27EF856D0, &qword_24AAB75E8);
    sub_24AA42FB4();
    v50 = v83;
    sub_24AAB3C34();
    (*(v82 + 8))(v15, v50);
    sub_24AA442A0(0, &qword_27EF86400, 0x277D85C78);
    v51 = sub_24AAB5184();
    v93 = v51;
    v52 = sub_24AAB5174();
    v53 = v89;
    (*(*(v52 - 8) + 56))(v89, 1, 1, v52);
    sub_24AA16A68(&qword_27EF85718, &qword_27EF856D8, &qword_24AAB75F0);
    sub_24AA43064(&qword_27EF85720, &qword_27EF86400, 0x277D85C78);
    v54 = v85;
    v55 = v86;
    sub_24AAB3C14();
    sub_24AA169C4(v53, &qword_27EF856C8, &qword_24AAB75E0);

    (*(v84 + 8))(v19, v54);
    swift_allocObject();
    swift_weakInit();
    sub_24AA16A68(&qword_27EF85728, &qword_27EF856E0, &qword_24AAB75F8);
    v56 = v88;
    v57 = sub_24AAB3C44();

    (*(v87 + 8))(v55, v56);
    v58 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_smartHoldingCancellable);
    *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_smartHoldingCancellable) = v57;

    swift_getKeyPath();
    v93 = v1;
    sub_24AAB2CF4();

    v59 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldService);
    if (v59)
    {
      v60 = v59;
      v61 = sub_24AAB2DB4();

      v93 = v61;
      swift_allocObject();
      swift_weakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85730, &qword_24AAB7630);
      sub_24AA16A68(&qword_27EF85738, &qword_27EF85730, &qword_24AAB7630);
      v62 = sub_24AAB3C44();
    }

    else
    {
      v62 = 0;
    }

    v66 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_waitOnHoldStatusMessageCancellable);
    *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_waitOnHoldStatusMessageCancellable) = v62;

    v67 = sub_24AAB50F4();
    v68 = *(*(v67 - 8) + 56);
    v69 = v90;
    v68(v90, 1, 1, v67);
    sub_24AAB50C4();

    v70 = sub_24AAB50B4();
    v71 = swift_allocObject();
    v72 = MEMORY[0x277D85700];
    v71[2] = v70;
    v71[3] = v72;
    v71[4] = v1;
    sub_24AA330D4(0, 0, v69, &unk_24AAB7640, v71);

    swift_getKeyPath();
    v93 = v1;
    sub_24AAB2CF4();

    v73 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___callHoldingAnalytics);
    v68(v69, 1, 1, v67);
    v74 = swift_allocObject();
    v74[2] = 0;
    v74[3] = 0;
    v74[4] = v73;

    sub_24AA330D4(0, 0, v69, &unk_24AAB7670, v74);

    v75 = sub_24AAB3A64();
    v76 = sub_24AAB5144();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v93 = v78;
      *v77 = 136315650;
      *(v77 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v93);
      *(v77 + 12) = 2080;
      *(v77 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, &v93);
      *(v77 + 22) = 2048;
      *(v77 + 24) = 997;
      _os_log_impl(&dword_24AA0F000, v75, v76, "[%s:%s:%ld] Smart holding session observation setup completed", v77, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v78, -1, -1);
      MEMORY[0x24C226630](v77, -1, -1);
    }
  }

  else if (v30)
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v93 = v64;
    *v63 = 136315650;
    *(v63 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v93);
    *(v63 + 12) = 2080;
    *(v63 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, &v93);
    *(v63 + 22) = 2048;
    *(v63 + 24) = 913;
    _os_log_impl(&dword_24AA0F000, v92, v29, "[%s:%s:%ld] Wait on hold not enabled", v63, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v64, -1, -1);
    MEMORY[0x24C226630](v63, -1, -1);
  }

  else
  {
    v65 = v92;
  }
}

uint64_t sub_24AA273E0(__n128 a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_forwardCallAction);
    sub_24AA16D2C(v2);

    if (v2)
    {
      v4 = a1;
      v5 = 2;
      v2(&v4);
      return sub_24AA16D74(v2);
    }
  }

  return result;
}

uint64_t sub_24AA27488()
{
  v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  swift_getObjectType();
  sub_24AAB39A4();
  sub_24AAB3124();
  sub_24AAB3114();
  v3 = sub_24AAB3104();

  if (v3)
  {

    sub_24AAB3114();
    v4 = sub_24AAB31C4();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    sub_24AAB31B4();
    sub_24AAB3184();
    v7 = sub_24AAB3154();
    sub_24AAB3174();

    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();

    sub_24AAB4BD4();
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    v8 = sub_24AAB2D84();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_24AAB2D74();

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  else
  {
  }
}

void sub_24AA278E0()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85868, &qword_24AAB7940);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v86 = &v82 - v5;
  v90 = sub_24AAB2BD4();
  v88 = *(v90 - 8);
  v6 = *(v88 + 64);
  v7 = MEMORY[0x28223BE20](v90);
  v83 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v89 = &v82 - v9;
  v87 = sub_24AAB2A54();
  v10 = *(v87 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v87);
  v92 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24AAB2CB4();
  v84 = *(v13 - 8);
  v85 = v13;
  v14 = *(v84 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_24AAB2A04();
  v17 = *(v96 - 1);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v96);
  v95 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v94 = &v82 - v21;
  v22 = sub_24AAB4E24();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
  v27 = sub_24AAB3A64();
  v28 = sub_24AAB5144();
  v29 = os_log_type_enabled(v27, v28);
  v91 = v10;
  v97 = v2;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    aBlock[0] = v1;
    *v30 = 136315650;
    *(v30 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, aBlock);
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_24AA406B4(0xD000000000000012, 0x800000024AAD2030, aBlock);
    *(v30 + 22) = 2048;
    *(v30 + 24) = 1123;
    _os_log_impl(&dword_24AA0F000, v27, v28, "[%s:%s:%ld] Showing people picker", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v1, -1, -1);
    v31 = v30;
    v2 = v97;
    MEMORY[0x24C226630](v31, -1, -1);
  }

  sub_24AA442A0(0, &qword_27EF86400, 0x277D85C78);
  *v26 = sub_24AAB5184();
  (*(v23 + 104))(v26, *MEMORY[0x277D85200], v22);
  v32 = sub_24AAB4E34();
  (*(v23 + 8))(v26, v22);
  v34 = v94;
  if ((v32 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    v26 = sub_24AA40458(v33 > 1, v32, 1, v26);
    goto LABEL_6;
  }

  v35 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
  v36 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  v37 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
  swift_getObjectType();
  v38 = sub_24AAB33A4();
  if (!v38)
  {
    v51 = sub_24AAB3A64();
    v52 = sub_24AAB5124();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      aBlock[0] = v54;
      *v53 = 136315650;
      *(v53 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, aBlock);
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_24AA406B4(0xD000000000000012, 0x800000024AAD2030, aBlock);
      *(v53 + 22) = 2048;
      *(v53 + 24) = 1127;
      _os_log_impl(&dword_24AA0F000, v51, v52, "[%s:%s:%ld] [Controller] Could not find active conversation to open FaceTime", v53, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v54, -1, -1);
      MEMORY[0x24C226630](v53, -1, -1);
    }

    return;
  }

  v1 = v38;
  v39 = [v38 groupUUID];
  sub_24AAB2C94();

  sub_24AAB2C74();
  (*(v84 + 8))(v16, v85);
  v2 = 0xD000000000000012;
  sub_24AAB29F4();

  v26 = sub_24AA40458(0, 1, 1, MEMORY[0x277D84F90]);
  v16 = *(v26 + 2);
  v33 = *(v26 + 3);
  v32 = v16 + 1;
  if (v16 >= v33 >> 1)
  {
    goto LABEL_23;
  }

LABEL_6:
  *(v26 + 2) = v32;
  v42 = *(v17 + 32);
  v41 = v17 + 32;
  v40 = v42;
  v43 = (*(v41 + 48) + 32) & ~*(v41 + 48);
  v44 = *(v41 + 40);
  v42(&v26[v43 + v44 * v16], v34, v96);
  sub_24AAB29F4();
  v46 = *(v26 + 2);
  v45 = *(v26 + 3);
  if (v46 >= v45 >> 1)
  {
    v26 = sub_24AA40458(v45 > 1, v46 + 1, 1, v26);
  }

  v47 = v88;
  *(v26 + 2) = v46 + 1;
  v40(&v26[v43 + v46 * v44], v95, v96);
  v48 = v92;
  sub_24AAB2A44();
  v49 = [objc_opt_self() faceTimeMultiwayScheme];
  if (v49)
  {
    v50 = v49;
    sub_24AAB4EF4();
  }

  sub_24AAB2A34();
  sub_24AAB2A14();
  v55 = v86;
  sub_24AAB2A24();
  v56 = v90;
  if ((*(v47 + 48))(v55, 1, v90) == 1)
  {
    sub_24AA169C4(v55, &qword_27EF85868, &qword_24AAB7940);
    v57 = sub_24AAB3A64();
    v58 = sub_24AAB5124();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v99[0] = v60;
      *v59 = 136315906;
      *(v59 + 4) = sub_24AA406B4(v2 + 36, 0x800000024AAD1870, v99);
      *(v59 + 12) = 2080;
      *(v59 + 14) = sub_24AA406B4(0xD000000000000012, 0x800000024AAD2030, v99);
      *(v59 + 22) = 2048;
      *(v59 + 24) = 1140;
      *(v59 + 32) = 2080;
      swift_beginAccess();
      sub_24AA42080(&qword_27EF85870, MEMORY[0x277CC8958]);
      v61 = v87;
      v62 = sub_24AAB5444();
      v64 = v48;
      v65 = sub_24AA406B4(v62, v63, v99);

      *(v59 + 34) = v65;
      _os_log_impl(&dword_24AA0F000, v57, v58, "[%s:%s:%ld] [Controller] Could not construct FaceTime app URL from %s", v59, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v60, -1, -1);
      MEMORY[0x24C226630](v59, -1, -1);

      (*(v91 + 8))(v64, v61);
      return;
    }
  }

  else
  {
    v96 = v1;
    v66 = v89;
    (*(v47 + 32))(v89, v55, v56);
    v67 = v83;
    (*(v47 + 16))(v83, v66, v56);
    v68 = sub_24AAB3A64();
    v69 = sub_24AAB5144();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      aBlock[0] = v71;
      *v70 = 136315906;
      *(v70 + 4) = sub_24AA406B4(v2 + 36, 0x800000024AAD1870, aBlock);
      *(v70 + 12) = 2080;
      *(v70 + 14) = sub_24AA406B4(0xD000000000000012, 0x800000024AAD2030, aBlock);
      *(v70 + 22) = 2048;
      *(v70 + 24) = 1144;
      *(v70 + 32) = 2080;
      sub_24AA42080(&qword_27EF85878, MEMORY[0x277CC9260]);
      v72 = sub_24AAB5444();
      v73 = v56;
      v75 = v74;
      v76 = *(v47 + 8);
      v76(v67, v73);
      v77 = sub_24AA406B4(v72, v75, aBlock);

      *(v70 + 34) = v77;
      _os_log_impl(&dword_24AA0F000, v68, v69, "[%s:%s:%ld] [Controller] Opening FaceTime app to add member, using URL %s", v70, 0x2Au);
      swift_arrayDestroy();
      v78 = v71;
      v48 = v92;
      MEMORY[0x24C226630](v78, -1, -1);
      MEMORY[0x24C226630](v70, -1, -1);
    }

    else
    {

      v76 = *(v47 + 8);
      v76(v67, v56);
      v73 = v56;
    }

    v79 = v89;
    v80 = sub_24AAB2BA4();
    aBlock[4] = sub_24AA44D74;
    aBlock[5] = v97;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24AA3F25C;
    aBlock[3] = &block_descriptor_409;
    v81 = _Block_copy(aBlock);

    TUOpenURLAndActivateWithCompletion();
    _Block_release(v81);

    v76(v79, v73);
  }

  (*(v91 + 8))(v48, v87);
}

void sub_24AA28638()
{
  v1 = v0;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v28 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v28);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0x726168536E65706FLL, 0xEB00000000292865, &v28);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 756;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Opening share", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  v6 = (v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter);
  v7 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
  v8 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  v9 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
  swift_getObjectType();
  v10 = sub_24AAB33A4();
  if (v10)
  {

    goto LABEL_5;
  }

  if ([*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_featureFlags) sharePlayInCallsEnabled])
  {
    v28 = v8;
    v16 = *(v9 + 8);
    if (sub_24AAB3534())
    {
LABEL_5:
      v11 = v6[4];
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      sub_24AAB3414();
      v12 = sub_24AAB3A64();
      v13 = sub_24AAB5144();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v28 = v15;
        *v14 = 136315650;
        *(v14 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v28);
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_24AA406B4(0x726168536E65706FLL, 0xEB00000000292865, &v28);
        *(v14 + 22) = 2048;
        *(v14 + 24) = 765;
        _os_log_impl(&dword_24AA0F000, v12, v13, "[%s:%s:%ld] Share opened successfully", v14, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v15, -1, -1);
        MEMORY[0x24C226630](v14, -1, -1);
      }

      return;
    }
  }

  v17 = sub_24AAB3A64();
  v18 = sub_24AAB5124();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136316163;
    *(v19 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v30);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_24AA406B4(0x726168536E65706FLL, 0xEB00000000292865, &v30);
    *(v19 + 22) = 2048;
    *(v19 + 24) = 760;
    *(v19 + 32) = 2080;
    v28 = sub_24AAB39A4();
    v29 = v21;
    v22 = sub_24AAB4F44();
    v24 = sub_24AA406B4(v22, v23, &v30);

    *(v19 + 34) = v24;
    *(v19 + 42) = 2081;
    v28 = v8;
    v29 = v9;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
    v25 = sub_24AAB4F44();
    v27 = sub_24AA406B4(v25, v26, &v30);

    *(v19 + 44) = v27;
    _os_log_impl(&dword_24AA0F000, v17, v18, "[%s:%s:%ld] Could not find conversation for call with identifier %s %{private}s.", v19, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v20, -1, -1);
    MEMORY[0x24C226630](v19, -1, -1);
  }
}

void sub_24AA28B38()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v61 = v54 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF857D8, &qword_24AAB7898);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v54 - v7;
  v9 = sub_24AAB2CB4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v59 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v13;
  MEMORY[0x28223BE20](v12);
  v62 = v54 - v14;
  v15 = sub_24AAB3A64();
  v16 = sub_24AAB5144();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v63 = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v63);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_24AA406B4(0xD000000000000011, 0x800000024AAD1F30, &v63);
    *(v17 + 22) = 2048;
    *(v17 + 24) = 1034;
    _os_log_impl(&dword_24AA0F000, v15, v16, "[%s:%s:%ld] Starting wait on hold", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v18, -1, -1);
    MEMORY[0x24C226630](v17, -1, -1);
  }

  v19 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    goto LABEL_6;
  }

  v21 = v20;
  swift_unknownObjectRetain();
  v22 = [v21 callUUID];
  sub_24AAB4EF4();

  sub_24AAB2C64();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    swift_unknownObjectRelease();
    sub_24AA169C4(v8, &qword_27EF857D8, &qword_24AAB7898);
LABEL_6:
    v23 = sub_24AAB3A64();
    v24 = sub_24AAB5144();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v63 = v26;
      *v25 = 136315650;
      *(v25 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v63);
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_24AA406B4(0xD000000000000011, 0x800000024AAD1F30, &v63);
      *(v25 + 22) = 2048;
      *(v25 + 24) = 1037;
      _os_log_impl(&dword_24AA0F000, v23, v24, "[%s:%s:%ld] Cannot start wait on hold - invalid call or UUID", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v26, -1, -1);
      MEMORY[0x24C226630](v25, -1, -1);
    }

    return;
  }

  v55 = *(v10 + 32);
  v56 = v10 + 32;
  v55(v62, v8, v9);
  swift_getKeyPath();
  v27 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___observationRegistrar;
  v63 = v1;
  v58 = sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__isHoldDetected) == 1)
  {
    v28 = sub_24AAB3A64();
    v29 = sub_24AAB5144();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v54[1] = v27;
      v31 = v30;
      v32 = swift_slowAlloc();
      v63 = v32;
      *v31 = 136315650;
      *(v31 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v63);
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_24AA406B4(0xD000000000000011, 0x800000024AAD1F30, &v63);
      *(v31 + 22) = 2048;
      *(v31 + 24) = 1042;
      _os_log_impl(&dword_24AA0F000, v28, v29, "[%s:%s:%ld] Hold was detected, recording tip acceptance", v31, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v32, -1, -1);
      MEMORY[0x24C226630](v31, -1, -1);
    }

    swift_getKeyPath();
    v63 = v1;
    sub_24AAB2CF4();

    v33 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___callHoldingAnalytics);
    v34 = sub_24AAB50F4();
    v35 = v61;
    (*(*(v34 - 8) + 56))(v61, 1, 1, v34);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v33;

    sub_24AA330D4(0, 0, v35, &unk_24AAB78B0, v36);
  }

  v37 = sub_24AAB3A64();
  v38 = sub_24AAB5144();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v63 = v40;
    *v39 = 136315650;
    *(v39 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v63);
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_24AA406B4(0xD000000000000011, 0x800000024AAD1F30, &v63);
    *(v39 + 22) = 2048;
    *(v39 + 24) = 1046;
    _os_log_impl(&dword_24AA0F000, v37, v38, "[%s:%s:%ld] WoH FOR MAC: Starting Wait on Hold", v39, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v40, -1, -1);
    MEMORY[0x24C226630](v39, -1, -1);
  }

  v41 = (v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle);
  v42 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle + 8);
  v57 = v19;
  v43 = v9;
  if (v42)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v54[-3] = 0;
    v54[-2] = 0;
    v54[-4] = v1;
    v63 = v1;
    sub_24AAB2CE4();
  }

  else
  {
    *v41 = 0;
    v41[1] = 0;
  }

  v45 = v61;
  sub_24AAB50D4();
  v46 = sub_24AAB50F4();
  (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  v47 = v59;
  v48 = v62;
  (*(v10 + 16))(v59, v62, v43);
  sub_24AAB50C4();

  v49 = sub_24AAB50B4();
  v50 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v51 = (v60 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = MEMORY[0x277D85700];
  *(v52 + 16) = v49;
  *(v52 + 24) = v53;
  v55((v52 + v50), v47, v43);
  *(v52 + v51) = v1;
  sub_24AA330D4(0, 0, v45, &unk_24AAB78A8, v52);

  swift_unknownObjectRelease();
  (*(v10 + 8))(v48, v43);
}

void sub_24AA29550()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85868, &qword_24AAB7940);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32 - v4;
  v6 = sub_24AAB3A64();
  v7 = sub_24AAB5144();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&aBlock = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &aBlock);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_24AA406B4(0xD000000000000014, 0x800000024AAD2010, &aBlock);
    *(v8 + 22) = 2048;
    *(v8 + 24) = 1155;
    _os_log_impl(&dword_24AA0F000, v6, v7, "[%s:%s:%ld] Presenting contact card", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v9, -1, -1);
    MEMORY[0x24C226630](v8, -1, -1);
  }

  v10 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    swift_unknownObjectRetain();
    v13 = [v12 contactIdentifiers];
    if (v13)
    {
      v14 = v13;
      v15 = sub_24AAB5024();

      if (v15[2])
      {
        v17 = v15[4];
        v16 = v15[5];
        strcpy(&aBlock, "addressbook://");
        HIBYTE(aBlock) = -18;

        MEMORY[0x24C2257F0](v17, v16);
        v18 = aBlock;

        v19 = sub_24AAB3A64();
        v20 = sub_24AAB5144();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v33 = v18;
          v22 = v21;
          v23 = swift_slowAlloc();
          *&aBlock = v23;
          *v22 = 136315906;
          *(v22 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &aBlock);
          *(v22 + 12) = 2080;
          *(v22 + 14) = sub_24AA406B4(0xD000000000000014, 0x800000024AAD2010, &aBlock);
          *(v22 + 22) = 2048;
          *(v22 + 24) = 1165;
          *(v22 + 32) = 2080;
          *(v22 + 34) = sub_24AA406B4(v33, *(&v18 + 1), &aBlock);
          _os_log_impl(&dword_24AA0F000, v19, v20, "[%s:%s:%ld] Opening contact card with URL: %s", v22, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x24C226630](v23, -1, -1);
          MEMORY[0x24C226630](v22, -1, -1);
        }

        sub_24AAB2BC4();
        v24 = sub_24AAB2BD4();
        v25 = *(v24 - 8);
        if ((*(v25 + 48))(v5, 1, v24) == 1)
        {
          __break(1u);
        }

        else
        {

          v26 = sub_24AAB2BA4();
          (*(v25 + 8))(v5, v24);
          v37 = sub_24AA44D54;
          v38 = v1;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v35 = sub_24AA3F25C;
          v36 = &block_descriptor_406;
          v27 = _Block_copy(&aBlock);

          TUOpenURLAndActivateWithCompletion();
          _Block_release(v27);
          swift_unknownObjectRelease();
        }

        return;
      }
    }

    swift_unknownObjectRelease();
  }

  v33 = sub_24AAB3A64();
  v28 = sub_24AAB5144();
  if (os_log_type_enabled(v33, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&aBlock = v30;
    *v29 = 136315650;
    *(v29 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &aBlock);
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_24AA406B4(0xD000000000000014, 0x800000024AAD2010, &aBlock);
    *(v29 + 22) = 2048;
    *(v29 + 24) = 1160;
    _os_log_impl(&dword_24AA0F000, v33, v28, "[%s:%s:%ld] Cannot present contact card - missing contact identifiers", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v30, -1, -1);
    MEMORY[0x24C226630](v29, -1, -1);
  }

  else
  {
    v31 = v33;
  }
}

uint64_t sub_24AA29BA8(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_getKeyPath();
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CF4();

    v5 = *(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__audioCallRecordingViewModel);

    if (v5)
    {
      a2(result);
    }
  }

  return result;
}

double sub_24AA29C9C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24AAB3A64();
  v5 = sub_24AAB5144();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v30 = v7;
    *v6 = 136315650;
    *(v6 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v30);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1FF0, &v30);
    *(v6 + 22) = 2048;
    *(v6 + 24) = 334;
    _os_log_impl(&dword_24AA0F000, v4, v5, "[%s:%s:%ld] Creating trailing controls", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v7, -1, -1);
    MEMORY[0x24C226630](v6, -1, -1);
  }

  swift_getKeyPath();
  *&v22 = v2;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v8 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
  swift_beginAccess();
  if (*(v2 + v8))
  {

    sub_24AA9DE08(&v24);

    if (v29 != 255)
    {
      v32 = v26;
      v33 = v27;
      v34 = v28;
      v35 = v29;
      v30 = v24;
      v31 = v25;
      v9 = sub_24AAB3A64();
      v10 = sub_24AAB5144();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v24 = v12;
        *v11 = 136315650;
        *(v11 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v24);
        *(v11 + 12) = 2080;
        *(v11 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1FF0, &v24);
        *(v11 + 22) = 2048;
        *(v11 + 24) = 338;
        v13 = "[%s:%s:%ld] Using call screening trailing control";
LABEL_12:
        _os_log_impl(&dword_24AA0F000, v9, v10, v13, v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v12, -1, -1);
        MEMORY[0x24C226630](v11, -1, -1);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v29 = -1;
  }

  sub_24AA169C4(&v24, &qword_27EF85568, &qword_24AABC830);
  swift_getKeyPath();
  *&v22 = v2;
  sub_24AAB2CF4();

  if (*(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__audioCallRecordingViewModel))
  {
    v14 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__audioCallRecordingViewModel);

    sub_24AA4FA70(&v22);

    if (v23)
    {
      sub_24AA15A64(&v22, &v24);
      v35 = 1;
      v32 = v26;
      v33 = v27;
      v34 = v28;
      v30 = v24;
      v31 = v25;
      v9 = sub_24AAB3A64();
      v10 = sub_24AAB5144();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v24 = v12;
        *v11 = 136315650;
        *(v11 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v24);
        *(v11 + 12) = 2080;
        *(v11 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1FF0, &v24);
        *(v11 + 22) = 2048;
        *(v11 + 24) = 343;
        v13 = "[%s:%s:%ld] Using call recording trailing control";
        goto LABEL_12;
      }

LABEL_13:

      v15 = v33;
      *(a1 + 32) = v32;
      *(a1 + 48) = v15;
      *(a1 + 64) = v34;
      *(a1 + 80) = v35;
      result = *&v30;
      v17 = v31;
      *a1 = v30;
      *(a1 + 16) = v17;
      return result;
    }

    sub_24AA169C4(&v22, &qword_27EF856A8, &qword_24AAB7508);
  }

  v18 = sub_24AAB3A64();
  v19 = sub_24AAB5144();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v30 = v21;
    *v20 = 136315650;
    *(v20 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v30);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1FF0, &v30);
    *(v20 + 22) = 2048;
    *(v20 + 24) = 347;
    _os_log_impl(&dword_24AA0F000, v18, v19, "[%s:%s:%ld] No trailing controls", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v21, -1, -1);
    MEMORY[0x24C226630](v20, -1, -1);
  }

  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = -1;
  return result;
}

void sub_24AA2A2D4(uint64_t *a1@<X8>)
{
  v2 = v1;
  v247 = sub_24AAB2B84();
  v245 = *(v247 - 8);
  v4 = *(v245 + 64);
  MEMORY[0x28223BE20](v247);
  v246 = &v240 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;

  v250 = v6;
  v7 = sub_24AAB3A64();
  v8 = sub_24AAB5144();
  v9 = os_log_type_enabled(v7, v8);
  v249 = a1;
  if (v9)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v260 = v11;
    *v10 = 136315906;
    *(v10 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v260);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v260);
    *(v10 + 22) = 2048;
    *(v10 + 24) = 354;
    *(v10 + 32) = 1024;
    *(v10 + 34) = sub_24AA1FBC4();

    _os_log_impl(&dword_24AA0F000, v7, v8, "[%s:%s:%ld] Making controls, effectiveStatus: %d", v10, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v11, -1, -1);
    MEMORY[0x24C226630](v10, -1, -1);
  }

  else
  {
  }

  if (sub_24AA1F558())
  {
    v12 = 1;
  }

  else
  {
    swift_getKeyPath();
    *&v260 = v2;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CF4();

    v12 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitingForAskToShare);
  }

  LODWORD(v248) = v12;

  v13 = sub_24AAB3A64();
  v14 = sub_24AAB5144();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v260 = v16;
    *v15 = 136316418;
    *(v15 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v260);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v260);
    *(v15 + 22) = 2048;
    *(v15 + 24) = 358;
    *(v15 + 32) = 1024;
    *(v15 + 34) = v248;
    *(v15 + 38) = 1024;
    *(v15 + 40) = sub_24AA1F558() & 1;
    *(v15 + 44) = 1024;
    swift_getKeyPath();
    *&v254 = v2;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CF4();

    *(v15 + 46) = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitingForAskToShare);

    _os_log_impl(&dword_24AA0F000, v13, v14, "[%s:%s:%ld] Controls disabled: %{BOOL}d, isConnecting: %{BOOL}d, waitingForAskToShare: %{BOOL}d", v15, 0x32u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v16, -1, -1);
    MEMORY[0x24C226630](v15, -1, -1);
  }

  else
  {
  }

  swift_getKeyPath();
  *&v260 = v2;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  if (*(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingKeypad) == 1)
  {
    v17 = sub_24AAB3A64();
    v18 = sub_24AAB5144();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v249;
    if (v19)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v260 = v22;
      *v21 = 136315650;
      *(v21 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v260);
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v260);
      *(v21 + 22) = 2048;
      *(v21 + 24) = 361;
      _os_log_impl(&dword_24AA0F000, v17, v18, "[%s:%s:%ld] Showing keypad, returning end control", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v22, -1, -1);
      MEMORY[0x24C226630](v21, -1, -1);
    }

    v23 = type metadata accessor for EndControl(0);
    v20[3] = v23;
    v20[4] = sub_24AA42080(&qword_27EF85808, type metadata accessor for EndControl);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v20);
    *boxed_opaque_existential_1Tm = xmmword_24AAB7010;
    *(boxed_opaque_existential_1Tm + 16) = 2;
    v25 = boxed_opaque_existential_1Tm + v23[5];
    sub_24AAB2B24();
    v26 = (boxed_opaque_existential_1Tm + v23[6]);
    *v26 = 0x6F642E656E6F6870;
    v26[1] = 0xEF6C6C69662E6E77;
    v27 = (boxed_opaque_existential_1Tm + v23[7]);
    v28 = sub_24AAB49F4();
    v29 = sub_24AAB4A44();
    *v27 = v28;
    v27[1] = v29;
    v27[2] = 0;
    v27[3] = 0;
    *(boxed_opaque_existential_1Tm + v23[8]) = 0;
    *(boxed_opaque_existential_1Tm + v23[9]) = 0;
    *(v20 + 80) = 1;
    return;
  }

  swift_getKeyPath();
  *&v260 = v2;
  sub_24AAB2CF4();

  v30 = v249;
  if (*(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView) == 1)
  {
    v31 = sub_24AAB3A64();
    v32 = sub_24AAB5144();
    if (!os_log_type_enabled(v31, v32))
    {
LABEL_18:

      *(v30 + 3) = 0u;
      *(v30 + 4) = 0u;
      *(v30 + 1) = 0u;
      *(v30 + 2) = 0u;
      *v30 = 0u;
      v36 = 5;
LABEL_29:
      *(v30 + 80) = v36;
      return;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v260 = v34;
    *v33 = 136315650;
    *(v33 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v260);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v260);
    *(v33 + 22) = 2048;
    *(v33 + 24) = 366;
    v35 = "[%s:%s:%ld] Showing secondary more menu view, returning none";
LABEL_17:
    _os_log_impl(&dword_24AA0F000, v31, v32, v35, v33, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v34, -1, -1);
    MEMORY[0x24C226630](v33, -1, -1);
    goto LABEL_18;
  }

  swift_getKeyPath();
  *&v251[0] = v2;
  sub_24AAB2CF4();

  v37 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
  swift_beginAccess();
  if (*(v2 + v37))
  {
    v38 = *(v2 + v37);

    v39 = sub_24AA1FBC4();
    sub_24AA9E1C4(v39, v248, &v254);

    if (v259 != 255)
    {
      v262 = v256;
      v263 = v257;
      v264 = v258;
      v265 = v259;
      v260 = v254;
      v261 = v255;
      v40 = sub_24AAB3A64();
      v41 = sub_24AAB5144();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *&v254 = v43;
        *v42 = 136315650;
        *(v42 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v254);
        *(v42 + 12) = 2080;
        *(v42 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v254);
        *(v42 + 22) = 2048;
        *(v42 + 24) = 371;
        _os_log_impl(&dword_24AA0F000, v40, v41, "[%s:%s:%ld] Using call screening control recipe", v42, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v43, -1, -1);
        MEMORY[0x24C226630](v42, -1, -1);
      }

      v44 = v263;
      *(v30 + 2) = v262;
      *(v30 + 3) = v44;
      *(v30 + 4) = v264;
      *(v30 + 80) = v265;
      v45 = v261;
      *v30 = v260;
      *(v30 + 1) = v45;
      return;
    }
  }

  else
  {
    v257 = 0u;
    v258 = 0u;
    v256 = 0u;
    v254 = 0u;
    v255 = 0u;
    v259 = -1;
  }

  sub_24AA169C4(&v254, &qword_27EF85568, &qword_24AABC830);
  v46 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  v47 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
  ObjectType = swift_getObjectType();
  if (sub_24AAB3944())
  {
    v49 = sub_24AAB3A64();
    v50 = sub_24AAB5144();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v260 = v52;
      *v51 = 136315650;
      *(v51 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v260);
      *(v51 + 12) = 2080;
      *(v51 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v260);
      *(v51 + 22) = 2048;
      *(v51 + 24) = 376;
      _os_log_impl(&dword_24AA0F000, v49, v50, "[%s:%s:%ld] Wait on hold active, returning horizontal stack", v51, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v52, -1, -1);
      MEMORY[0x24C226630](v51, -1, -1);
    }

    v53 = type metadata accessor for WaitOnHoldEndCallControl(0);
    v30[3] = v53;
    v30[4] = sub_24AA42080(&qword_27EF85850, type metadata accessor for WaitOnHoldEndCallControl);
    v54 = __swift_allocate_boxed_opaque_existential_1Tm(v30);
    *v54 = xmmword_24AAB7010;
    *(v54 + 16) = 2;
    v55 = v54 + v53[5];
    sub_24AAB2B24();
    v56 = (v54 + v53[6]);
    *v56 = 0x6B72616D78;
    v56[1] = 0xE500000000000000;
    v57 = (v54 + v53[7]);
    v58 = sub_24AAB4A44();
    *v57 = 0;
    v57[1] = v58;
    v57[2] = 0;
    v57[3] = 0;
    *(v54 + v53[8]) = 0;
    *(v54 + v53[9]) = 0;
    v59 = type metadata accessor for PickUpControl(0);
    v30[8] = v59;
    v30[9] = sub_24AA42080(&qword_27EF85858, type metadata accessor for PickUpControl);
    v60 = __swift_allocate_boxed_opaque_existential_1Tm(v30 + 5);
    *v60 = xmmword_24AAB7020;
    *(v60 + 16) = 2;
    v61 = v60 + v59[5];
    sub_24AAB2B24();
    v62 = (v60 + v59[6]);
    *v62 = 0x69662E656E6F6870;
    v62[1] = 0xEA00000000006C6CLL;
    v63 = (v60 + v59[7]);
    v64 = sub_24AAB4A34();
    v65 = sub_24AAB4A44();
    *v63 = v64;
    v63[1] = v65;
    v63[2] = 0;
    v63[3] = 0;
    *(v60 + v59[8]) = 0;
    *(v60 + v59[9]) = 0;
    v36 = 4;
    goto LABEL_29;
  }

  v244 = v46;
  v66 = sub_24AA1FBC4();
  v67 = sub_24AAB3A64();
  LODWORD(v242) = sub_24AAB5144();
  v243 = v67;
  v68 = os_log_type_enabled(v67, v242);
  switch(v66)
  {
    case 2:
      v240 = v47;
      v241 = ObjectType;
      v75 = v30;
      if (v68)
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *&v260 = v77;
        *v76 = 136315650;
        *(v76 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v260);
        *(v76 + 12) = 2080;
        *(v76 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v260);
        *(v76 + 22) = 2048;
        *(v76 + 24) = 388;
        v78 = v243;
        _os_log_impl(&dword_24AA0F000, v243, v242, "[%s:%s:%ld] Call held", v76, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v77, -1, -1);
        MEMORY[0x24C226630](v76, -1, -1);
      }

      else
      {
      }

      v103 = (v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter);
      v104 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24);
      v105 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 32);
      v106 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), v104);
      MEMORY[0x28223BE20](v106);
      *(&v240 - 4) = v104;
      *(&v240 - 3) = v105;
      *(&v240 - 2) = sub_24AA44BC8;
      *(&v240 - 1) = v2;
      sub_24AAB3344();
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
      v107 = sub_24AAB53D4();

      if (v107[2])
      {
        v109 = v107[4];
        v108 = v107[5];
        swift_unknownObjectRetain();

        v110 = v103[4];
        __swift_project_boxed_opaque_existential_1(v103, v103[3]);
        swift_getObjectType();
        v248 = v109;
        LOBYTE(v108) = sub_24AAB3404();
        v111 = sub_24AAB3A64();
        v112 = sub_24AAB5144();
        v113 = os_log_type_enabled(v111, v112);
        v114 = v30;
        if (v108)
        {
          if (v113)
          {
            v115 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            *&v260 = v116;
            *v115 = 136315650;
            *(v115 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v260);
            *(v115 + 12) = 2080;
            *(v115 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v260);
            *(v115 + 22) = 2048;
            *(v115 + 24) = 395;
            _os_log_impl(&dword_24AA0F000, v111, v112, "[%s:%s:%ld] Can group calls, returning swap/merge", v115, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x24C226630](v116, -1, -1);
            MEMORY[0x24C226630](v115, -1, -1);
          }

          v117 = type metadata accessor for SwapControl(0);
          v75[3] = v117;
          v75[4] = sub_24AA42080(&qword_27EF85828, type metadata accessor for SwapControl);
          v118 = __swift_allocate_boxed_opaque_existential_1Tm(v75);
          *v118 = xmmword_24AAB6F80;
          *(v118 + 16) = 2;
          v119 = v118 + v117[5];
          sub_24AAB2B24();
          v120 = (v118 + v117[6]);
          *v120 = 0xD000000000000013;
          v120[1] = 0x800000024AAD1F90;
          v121 = (v118 + v117[7]);
          if (qword_27EF84C70 != -1)
          {
            swift_once();
          }

          v122 = qword_27EF919F8;
          v123 = unk_27EF91A00;
          v124 = qword_27EF91A08;
          v125 = unk_27EF91A10;
          *v121 = qword_27EF919F8;
          v121[1] = v123;
          v121[2] = v124;
          v121[3] = v125;
          *(v118 + v117[8]) = 0;
          *(v118 + v117[9]) = 0;
          v126 = type metadata accessor for MergeControl(0);
          v114[8] = v126;
          v114[9] = sub_24AA42080(&qword_27EF85830, type metadata accessor for MergeControl);
          v127 = __swift_allocate_boxed_opaque_existential_1Tm(v114 + 5);
          *v127 = xmmword_24AAB6F90;
          *(v127 + 16) = 2;
          v128 = v126[5];

          sub_24AA1B750(v124, v125);

          sub_24AA1B750(v124, v125);
          sub_24AAB2B24();
          v129 = v126[6];
          swift_unknownObjectRelease();
          v130 = (v127 + v129);
          *v130 = 0xD000000000000014;
          v130[1] = 0x800000024AAD1FB0;
          v131 = (v127 + v126[7]);
          *v131 = v122;
          v131[1] = v123;
          v131[2] = v124;
          v131[3] = v125;
          *(v127 + v126[8]) = 0;
          *(v127 + v126[9]) = 0;
          *(v114 + 80) = 3;
        }

        else
        {
          if (v113)
          {
            v220 = swift_slowAlloc();
            v221 = swift_slowAlloc();
            *&v260 = v221;
            *v220 = 136315650;
            *(v220 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v260);
            *(v220 + 12) = 2080;
            *(v220 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v260);
            *(v220 + 22) = 2048;
            *(v220 + 24) = 401;
            _os_log_impl(&dword_24AA0F000, v111, v112, "[%s:%s:%ld] Cannot group calls, returning titled swap", v220, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x24C226630](v221, -1, -1);
            MEMORY[0x24C226630](v220, -1, -1);
          }

          v222 = type metadata accessor for TitledSwapControl(0);
          v30[3] = v222;
          v30[4] = sub_24AA42080(&qword_27EF85820, type metadata accessor for TitledSwapControl);
          v223 = __swift_allocate_boxed_opaque_existential_1Tm(v30);
          *v223 = xmmword_24AAB6F80;
          *(v223 + 16) = 2;
          v224 = v223 + v222[5];
          sub_24AAB2B24();
          v225 = (v223 + v222[6]);
          if (qword_27EF84C70 != -1)
          {
            swift_once();
          }

          v226 = qword_27EF919F8;
          v227 = unk_27EF91A00;
          v228 = qword_27EF91A08;
          v229 = unk_27EF91A10;

          sub_24AA1B750(v228, v229);
          swift_unknownObjectRelease();
          *v225 = v226;
          v225[1] = v227;
          v225[2] = v228;
          v225[3] = v229;
          *(v223 + v222[7]) = 0;
          *(v223 + v222[8]) = 0;
          *(v75 + 80) = 2;
        }

        return;
      }

      v211 = sub_24AAB3A64();
      v212 = sub_24AAB5144();
      if (os_log_type_enabled(v211, v212))
      {
        v213 = swift_slowAlloc();
        v214 = swift_slowAlloc();
        *&v260 = v214;
        *v213 = 136315650;
        *(v213 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v260);
        *(v213 + 12) = 2080;
        *(v213 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v260);
        *(v213 + 22) = 2048;
        *(v213 + 24) = 390;
        _os_log_impl(&dword_24AA0F000, v211, v212, "[%s:%s:%ld] No other call, returning unhold control", v213, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v214, -1, -1);
        MEMORY[0x24C226630](v213, -1, -1);
      }

      v215 = type metadata accessor for UnholdControl(0);
      v30[3] = v215;
      v30[4] = sub_24AA42080(&qword_27EF85838, type metadata accessor for UnholdControl);
      v216 = __swift_allocate_boxed_opaque_existential_1Tm(v30);
      *v216 = xmmword_24AAB6FA0;
      *(v216 + 16) = 2;
      v217 = v216 + v215[5];
      sub_24AAB2B24();
      v218 = (v216 + v215[6]);
      if (qword_27EF84C70 != -1)
      {
        swift_once();
      }

      v219 = unk_27EF91A00;
      v101 = qword_27EF91A08;
      v102 = unk_27EF91A10;
      *v218 = qword_27EF919F8;
      v218[1] = v219;
      v218[2] = v101;
      v218[3] = v102;
      *(v216 + v215[7]) = 0;
      *(v216 + v215[8]) = 0;
      *(v75 + 80) = 2;
LABEL_96:

      sub_24AA1B750(v101, v102);
      return;
    case 6:
      if (v68)
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *&v260 = v73;
        *v72 = 136315650;
        *(v72 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v260);
        *(v72 + 12) = 2080;
        *(v72 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v260);
        *(v72 + 22) = 2048;
        *(v72 + 24) = 405;
        v74 = v243;
        _os_log_impl(&dword_24AA0F000, v243, v242, "[%s:%s:%ld] Call disconnected", v72, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v73, -1, -1);
        MEMORY[0x24C226630](v72, -1, -1);
      }

      else
      {
      }

      *&v254 = v244;
      v82 = *(v47 + 8);
      sub_24AAB35B4();
      if (!*(&v261 + 1) || (v83 = v262, , , (v83 & 1) == 0))
      {
        v31 = sub_24AAB3A64();
        v32 = sub_24AAB5144();
        if (!os_log_type_enabled(v31, v32))
        {
          goto LABEL_18;
        }

        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *&v254 = v34;
        *v33 = 136315650;
        *(v33 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v254);
        *(v33 + 12) = 2080;
        *(v33 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v254);
        *(v33 + 22) = 2048;
        *(v33 + 24) = 407;
        v35 = "[%s:%s:%ld] Not eligible for redial, returning none";
        goto LABEL_17;
      }

      v84 = sub_24AAB3A64();
      v85 = sub_24AAB5144();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *&v254 = v87;
        *v86 = 136315650;
        *(v86 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v254);
        *(v86 + 12) = 2080;
        *(v86 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v254);
        *(v86 + 22) = 2048;
        *(v86 + 24) = 411;
        _os_log_impl(&dword_24AA0F000, v84, v85, "[%s:%s:%ld] Eligible for redial, returning dial controls", v86, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v87, -1, -1);
        MEMORY[0x24C226630](v86, -1, -1);
      }

      v88 = type metadata accessor for DialControl(0);
      v30[3] = v88;
      v30[4] = sub_24AA42080(&qword_27EF854B0, type metadata accessor for DialControl);
      v89 = __swift_allocate_boxed_opaque_existential_1Tm(v30);
      *v89 = xmmword_24AAB6E00;
      *(v89 + 16) = 2;
      v90 = v89 + v88[5];
      sub_24AAB2B24();
      v91 = (v89 + v88[6]);
      *v91 = 0x69662E656E6F6870;
      v91[1] = 0xEA00000000006C6CLL;
      v92 = (v89 + v88[7]);
      v93 = sub_24AAB4A34();
      v94 = sub_24AAB4A44();
      *v92 = v93;
      v92[1] = v94;
      v92[2] = 0;
      v92[3] = 0;
      *(v89 + v88[8]) = 0;
      *(v89 + v88[9]) = 0;
      v95 = type metadata accessor for CancelDialControl(0);
      v30[8] = v95;
      v30[9] = sub_24AA42080(&qword_27EF854B8, type metadata accessor for CancelDialControl);
      v96 = __swift_allocate_boxed_opaque_existential_1Tm(v30 + 5);
      *v96 = xmmword_24AAB6E10;
      *(v96 + 16) = 2;
      v97 = v96 + v95[5];
      sub_24AAB2B24();
      v98 = (v96 + v95[6]);
      *v98 = 0x796C7069746C756DLL;
      v98[1] = 0xE800000000000000;
      v99 = (v96 + v95[7]);
      if (qword_27EF84C70 != -1)
      {
        swift_once();
      }

      v100 = unk_27EF91A00;
      v101 = qword_27EF91A08;
      v102 = unk_27EF91A10;
      *v99 = qword_27EF919F8;
      v99[1] = v100;
      v99[2] = v101;
      v99[3] = v102;
      *(v96 + v95[8]) = 0;
      *(v96 + v95[9]) = 0;
      *(v30 + 80) = 3;
      goto LABEL_96;
    case 4:
      if (v68)
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *&v260 = v70;
        *v69 = 136315650;
        *(v69 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v260);
        *(v69 + 12) = 2080;
        *(v69 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v260);
        *(v69 + 22) = 2048;
        *(v69 + 24) = 382;
        v71 = v243;
        _os_log_impl(&dword_24AA0F000, v243, v242, "[%s:%s:%ld] Call ringing, returning stacked accept/decline", v69, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v70, -1, -1);
        MEMORY[0x24C226630](v69, -1, -1);
      }

      else
      {
      }

      *&v260 = v244;
      v132 = *(v47 + 8);
      if (sub_24AAB3574())
      {
        v133 = sub_24AAB38F4();
      }

      else
      {
        v133 = 0;
      }

      v147 = type metadata accessor for AcceptControl(0);
      v30[3] = v147;
      v30[4] = sub_24AA42080(&qword_27EF85840, type metadata accessor for AcceptControl);
      v148 = __swift_allocate_boxed_opaque_existential_1Tm(v30);
      *v148 = v133 & 1;
      v148[1] = 0;
      v148[2] = 0;
      *(v148 + 24) = 2;
      v149 = v148 + v147[6];
      sub_24AAB2B24();
      v150 = (v148 + v147[7]);
      v151 = sub_24AAB4A34();
      v152 = sub_24AAB4A44();
      *v150 = v151;
      v150[1] = v152;
      v150[2] = 0;
      v150[3] = 0;
      *(v148 + v147[8]) = v248;
      *(v148 + v147[9]) = 0;
      *(v148 + v147[10]) = 1;
      v153 = type metadata accessor for DeclineControlWithMenu(0);
      v30[8] = v153;
      v30[9] = sub_24AA42080(&qword_27EF85848, type metadata accessor for DeclineControlWithMenu);
      v154 = __swift_allocate_boxed_opaque_existential_1Tm(v30 + 5);
      *v154 = xmmword_24AAB6FB0;
      *(v154 + 16) = 2;
      v155 = v154 + v153[5];
      sub_24AAB2B24();
      v156 = (v154 + v153[6]);
      *v156 = 0x6F642E656E6F6870;
      v156[1] = 0xEF6C6C69662E6E77;
      v157 = (v154 + v153[7]);
      v158 = sub_24AAB49F4();
      v159 = sub_24AAB4A44();
      *v157 = v158;
      v157[1] = v159;
      v157[2] = 0;
      v157[3] = 0;
      *(v154 + v153[8]) = 0;
      *(v154 + v153[9]) = 0;
      *(v154 + v153[10]) = 1;
      v36 = 3;
      goto LABEL_29;
  }

  v241 = ObjectType;
  if (v68)
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *&v260 = v80;
    *v79 = 136315650;
    *(v79 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v260);
    *(v79 + 12) = 2080;
    *(v79 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v260);
    *(v79 + 22) = 2048;
    *(v79 + 24) = 418;
    v81 = v243;
    _os_log_impl(&dword_24AA0F000, v243, v242, "[%s:%s:%ld] Default case, creating HUD controls", v79, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v80, -1, -1);
    MEMORY[0x24C226630](v79, -1, -1);
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85698, &qword_24AAB74D8);
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_24AAB6FC0;
  v135 = sub_24AA2CE68();
  v240 = v47;
  if (v135)
  {
    LODWORD(v248) = sub_24AAB3874() ^ 1;
    swift_getKeyPath();
    *&v260 = v2;
    sub_24AAB2CF4();

    v136 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingRTT;
    swift_beginAccess();
    v137 = *(v2 + v136);
    v138 = type metadata accessor for RTTControl(0);
    *(v134 + 56) = v138;
    *(v134 + 64) = sub_24AA42080(&qword_27EF85818, type metadata accessor for RTTControl);
    v139 = __swift_allocate_boxed_opaque_existential_1Tm((v134 + 32));
    *v139 = xmmword_24AAB6FE0;
    *(v139 + 16) = 2;
    v140 = v139 + v138[5];
    sub_24AAB2B24();
    v141 = (v139 + v138[6]);
    *v141 = 0x65707974656C6574;
    v141[1] = 0xE800000000000000;
    v142 = (v139 + v138[7]);
    if (qword_27EF84C70 != -1)
    {
      swift_once();
    }

    v143 = qword_27EF919F8;
    v144 = unk_27EF91A00;
    v146 = qword_27EF91A08;
    v145 = unk_27EF91A10;
    *v142 = qword_27EF919F8;
    v142[1] = v144;
    v142[2] = v146;
    v142[3] = v145;
    *(v139 + v138[8]) = v248 & 1;
    *(v139 + v138[9]) = v137;
  }

  else
  {
    *&v260 = v244;
    v160 = *(v47 + 8);
    v161 = sub_24AAB35A4();
    v162 = [v161 isTelephonyProvider];

    v163 = v162 ^ 1;
    v164 = type metadata accessor for KeypadControl(0);
    *(v134 + 56) = v164;
    *(v134 + 64) = sub_24AA42080(&qword_27EF85678, type metadata accessor for KeypadControl);
    v165 = __swift_allocate_boxed_opaque_existential_1Tm((v134 + 32));
    *v165 = xmmword_24AAB6FD0;
    *(v165 + 16) = 2;
    v166 = v165 + v164[5];
    sub_24AAB2B24();
    v167 = (v165 + v164[6]);
    *v167 = 0xD000000000000014;
    v167[1] = 0x800000024AAD1D00;
    v168 = (v165 + v164[7]);
    if (qword_27EF84C70 != -1)
    {
      swift_once();
    }

    v143 = qword_27EF919F8;
    v144 = unk_27EF91A00;
    v146 = qword_27EF91A08;
    v145 = unk_27EF91A10;
    *v168 = qword_27EF919F8;
    v168[1] = v144;
    v168[2] = v146;
    v168[3] = v145;
    *(v165 + v164[8]) = v163;
    *(v165 + v164[9]) = 0;
  }

  v248 = v143;
  swift_retain_n();
  swift_retain_n();
  sub_24AA1B750(v146, v145);
  sub_24AA1B750(v146, v145);
  v169 = sub_24AA2D0DC() ^ 1;
  v170 = type metadata accessor for UpgradeVideoControl(0);
  *(v134 + 96) = v170;
  *(v134 + 104) = sub_24AA42080(&qword_27EF857F8, type metadata accessor for UpgradeVideoControl);
  v171 = __swift_allocate_boxed_opaque_existential_1Tm((v134 + 72));
  *v171 = xmmword_24AAB6FF0;
  *(v171 + 16) = 2;
  v172 = v171 + v170[5];
  sub_24AAB2B24();
  v173 = (v171 + v170[6]);
  *v173 = 0x69662E6F65646976;
  v173[1] = 0xEA00000000006C6CLL;
  v174 = (v171 + v170[7]);
  if (qword_27EF84C70 != -1)
  {
    swift_once();
  }

  *v174 = v248;
  v174[1] = v144;
  v174[2] = v146;
  v174[3] = v145;
  *(v171 + v170[8]) = v169 & 1;
  *(v171 + v170[9]) = 0;
  v175 = sub_24AAB38E4();
  *(v134 + 136) = &type metadata for MuteControl;
  *(v134 + 144) = sub_24AA44B08();
  v176 = swift_allocObject();
  *(v134 + 112) = v176;
  *(v176 + 16) = xmmword_24AAB7000;
  *(v176 + 32) = 2;
  strcpy((v176 + 40), "mic.slash.fill");
  *(v176 + 55) = -18;
  v177 = sub_24AAB4A44();
  v178 = sub_24AAB4A44();
  v179 = [objc_opt_self() systemRedColor];
  v180 = sub_24AAB49C4();
  *(v176 + 56) = 0;
  *(v176 + 64) = v177;
  *(v176 + 72) = v178;
  *(v176 + 80) = v180;
  *(v176 + 88) = 0;
  *(v176 + 89) = v175 & 1;
  v253 = v134;
  v181 = sub_24AA2D4F8();
  sub_24AA2D3F0(v181);
  v182 = type metadata accessor for EndControl(0);
  *(&v261 + 1) = v182;
  *&v262 = sub_24AA42080(&qword_27EF85808, type metadata accessor for EndControl);
  v183 = __swift_allocate_boxed_opaque_existential_1Tm(&v260);
  *v183 = xmmword_24AAB7010;
  *(v183 + 16) = 2;
  v184 = v183 + v182[5];
  sub_24AAB2B24();
  v185 = (v183 + v182[6]);
  *v185 = 0x6F642E656E6F6870;
  v185[1] = 0xEF6C6C69662E6E77;
  v186 = (v183 + v182[7]);
  v187 = sub_24AAB49F4();
  v188 = sub_24AAB4A44();
  *v186 = v187;
  v186[1] = v188;
  v186[2] = 0;
  v186[3] = 0;
  *(v183 + v182[8]) = 0;
  *(v183 + v182[9]) = 0;
  v189 = v253;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v189 = sub_24AA400BC(0, v189[2] + 1, 1, v189);
  }

  v191 = v189[2];
  v190 = v189[3];
  if (v191 >= v190 >> 1)
  {
    v189 = sub_24AA400BC((v190 > 1), v191 + 1, 1, v189);
  }

  v189[2] = v191 + 1;
  v192 = (v189 + 4);
  v193 = &v189[5 * v191 + 4];
  v194 = v260;
  v195 = v261;
  *(v193 + 32) = v262;
  *v193 = v194;
  *(v193 + 16) = v195;
  swift_bridgeObjectRetain_n();
  v196 = sub_24AAB3A64();
  v197 = sub_24AAB5144();

  if (os_log_type_enabled(v196, v197))
  {
    LODWORD(v243) = v197;
    v198 = swift_slowAlloc();
    v241 = swift_slowAlloc();
    *&v251[0] = v241;
    v242 = v198;
    *v198 = 136315138;
    v248 = v189;
    v199 = v189[2];
    v244 = v196;
    if (v199)
    {
      v250 = (v245 + 8);
      v200 = MEMORY[0x277D84F90];
      v201 = (v189 + 4);
      do
      {
        sub_24AA1695C(v201, &v260, &qword_27EF856A8, &qword_24AAB7508);
        sub_24AA1695C(&v260, &v254, &qword_27EF856A8, &qword_24AAB7508);
        v202 = *(&v255 + 1);
        if (*(&v255 + 1))
        {
          v203 = v256;
          __swift_project_boxed_opaque_existential_1(&v254, *(&v255 + 1));
          v204 = v246;
          (*(*(*(v203 + 8) + 8) + 16))(v202);
          v205 = sub_24AAB2B64();
          v207 = v206;
          (*v250)(v204, v247);
          __swift_destroy_boxed_opaque_existential_1Tm(&v254);
        }

        else
        {
          sub_24AA169C4(&v254, &qword_27EF856A8, &qword_24AAB7508);
          v207 = 0xE800000000000000;
          v205 = 0x656C7469745F6F6ELL;
        }

        *&v254 = v205;
        *(&v254 + 1) = v207;

        MEMORY[0x24C2257F0](8236, 0xE200000000000000);

        v208 = v254;
        sub_24AA169C4(&v260, &qword_27EF856A8, &qword_24AAB7508);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v200 = sub_24AA4034C(0, *(v200 + 2) + 1, 1, v200);
        }

        v210 = *(v200 + 2);
        v209 = *(v200 + 3);
        if (v210 >= v209 >> 1)
        {
          v200 = sub_24AA4034C((v209 > 1), v210 + 1, 1, v200);
        }

        *(v200 + 2) = v210 + 1;
        *&v200[16 * v210 + 32] = v208;
        v201 += 40;
        --v199;
      }

      while (v199);
    }

    else
    {
      v200 = MEMORY[0x277D84F90];
    }

    *&v260 = v200;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85810, &unk_24AAB7920);
    v230 = sub_24AAB4F44();
    v232 = sub_24AA406B4(v230, v231, v251);

    v233 = v242;
    *(v242 + 1) = v232;
    v189 = v248;

    v196 = v244;
    _os_log_impl(&dword_24AA0F000, v244, v243, "Call notification - controls =%s", v233, 0xCu);
    v234 = v241;
    __swift_destroy_boxed_opaque_existential_1Tm(v241);
    MEMORY[0x24C226630](v234, -1, -1);
    MEMORY[0x24C226630](v233, -1, -1);
  }

  else
  {
  }

  v235 = v189[2];
  if (v235)
  {
    v236 = MEMORY[0x277D84F90];
    do
    {
      sub_24AA1695C(v192, &v260, &qword_27EF856A8, &qword_24AAB7508);
      v251[0] = v260;
      v251[1] = v261;
      v252 = v262;
      if (*(&v261 + 1))
      {
        sub_24AA15A64(v251, &v254);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v236 = sub_24AA40204(0, v236[2] + 1, 1, v236);
        }

        v238 = v236[2];
        v237 = v236[3];
        if (v238 >= v237 >> 1)
        {
          v236 = sub_24AA40204((v237 > 1), v238 + 1, 1, v236);
        }

        v236[2] = v238 + 1;
        sub_24AA15A64(&v254, &v236[5 * v238 + 4]);
      }

      else
      {
        sub_24AA169C4(v251, &qword_27EF856A8, &qword_24AAB7508);
      }

      v192 += 40;
      --v235;
    }

    while (v235);
  }

  else
  {

    v236 = MEMORY[0x277D84F90];
  }

  v239 = v249;
  *v249 = v236;
  *(v239 + 80) = 0;
}

uint64_t sub_24AA2CDD0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return a2(a1, AssociatedConformanceWitness) & 1;
}

uint64_t sub_24AA2CE68()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
  sub_24AAB32A4();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
  v3 = sub_24AAB53D4();

  v4 = *(v3 + 16);

  if (v4 != 1)
  {
    goto LABEL_7;
  }

  v6 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  v5 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
  swift_getObjectType();
  if (sub_24AAB39D4() & 1) != 0 || (sub_24AAB39E4())
  {
    v7 = 1;
    goto LABEL_8;
  }

  if (sub_24AAB3974())
  {
    v7 = [objc_opt_self() shouldUseRTT];
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

LABEL_8:
  v8 = sub_24AAB3A64();
  v9 = sub_24AAB5144();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315906;
    *(v10 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v13);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_24AA406B4(0x6176415454527369, 0xEE00656C62616C69, &v13);
    *(v10 + 22) = 2048;
    *(v10 + 24) = 901;
    *(v10 + 32) = 1024;
    *(v10 + 34) = v7;
    _os_log_impl(&dword_24AA0F000, v8, v9, "[%s:%s:%ld] RTT available: %{BOOL}d", v10, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v11, -1, -1);
    MEMORY[0x24C226630](v10, -1, -1);
  }

  return v7;
}

id sub_24AA2D0DC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  v3 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
  swift_getObjectType();
  v23 = v2;
  v4 = *(v3 + 8);
  v5 = sub_24AAB35A4();
  v6 = [v5 supportsAudioAndVideo];

  if (v6)
  {
    v23 = v2;
    v7 = sub_24AAB35A4();
  }

  else
  {
    v8 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
    v9 = sub_24AAB32B4();
    v7 = [v9 faceTimeProvider];
  }

  v10 = [v7 supportsAudioAndVideo];
  v23 = v2;
  v11 = sub_24AAB3564();
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  v13 = [v11 value];

  v14 = sub_24AAB4EF4();
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17 || (sub_24AAB38C4() & 1) != 0 || (sub_24AAB3894() & 1) != 0 || (sub_24AAB3884() & 1) != 0 || sub_24AAB39F4() != 1 || sub_24AAB3854() == 1)
  {
LABEL_13:
    v10 = 0;
  }

  v18 = sub_24AAB3A64();
  v19 = sub_24AAB5144();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v20 = 136315906;
    *(v20 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v23);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_24AA406B4(0xD000000000000011, 0x800000024AAD1FD0, &v23);
    *(v20 + 22) = 2048;
    *(v20 + 24) = 726;
    *(v20 + 32) = 1024;
    *(v20 + 34) = v10;
    _os_log_impl(&dword_24AA0F000, v18, v19, "[%s:%s:%ld] Can upgrade to video: %{BOOL}d", v20, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v21, -1, -1);
    MEMORY[0x24C226630](v20, -1, -1);
  }

  return v10;
}