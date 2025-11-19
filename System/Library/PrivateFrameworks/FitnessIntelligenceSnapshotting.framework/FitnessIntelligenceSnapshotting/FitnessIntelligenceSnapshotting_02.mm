uint64_t sub_20CD26A5C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_20CD26BD0;
  }

  else
  {
    v3 = sub_20CD26B6C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CD26B6C()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20CD26BD0()
{
  v1 = v0[23];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_20CD26C48()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_20CD26C80@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v63 = sub_20CD62DE4();
  v71 = *(v63 - 8);
  v2 = *(v71 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20CD62974();
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v4);
  v67 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20CD629B4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v68 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF0, &unk_20CD64270);
  v10 = *(*(v77 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v77);
  v76 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v65 = &v57 - v13;
  v75 = sub_20CD62AB4();
  v66 = *(v75 - 8);
  v14 = *(v66 + 64);
  v15 = MEMORY[0x28223BE20](v75);
  v73 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v74 = &v57 - v17;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v18 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v20 = &v57 - v19;
  v21 = sub_20CD62984();
  v22 = sub_20CD28FD4(&qword_28110F7B0, MEMORY[0x277D09F08]);
  v78 = v1;
  sub_20CD62E24();
  __swift_project_boxed_opaque_existential_1(v79, v79[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v27 = &v57 - v26;
  v28 = v80;
  sub_20CD62B64();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_0(v79);
  }

  v61 = v22;
  v60 = v21;
  swift_getAssociatedConformanceWitness();
  v29 = sub_20CD63044();
  v32 = v31;
  v80 = v29;
  (*(v24 + 8))(v27, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_0(v79);
  v59 = v32;
  v33 = v32 >> 62;
  if ((v32 >> 62) > 1)
  {
    v38 = v77;
    v39 = v20;
    v35 = v75;
    v34 = v76;
    v40 = v73;
    v36 = v74;
    result = v80;
    if (v33 != 2)
    {
      goto LABEL_15;
    }

    v42 = *(v80 + 16);
    v41 = *(v80 + 24);
    v43 = __OFSUB__(v41, v42);
    v44 = v41 - v42;
    if (v43)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (v44 <= 0)
    {
LABEL_15:
      sub_20CD1CD98(result, v59);
      v55 = 1;
      v54 = v72;
      goto LABEL_16;
    }

LABEL_10:
    v58 = v39;
    v77 = 0;
    sub_20CD62E64();
    sub_20CD62E54();
    sub_20CD28FD4(&qword_28110F778, MEMORY[0x277D09F70]);
    result = sub_20CD63224();
    if (result)
    {
      v45 = v40;
      v46 = v65;
      v47 = v66;
      v48 = *(v66 + 32);
      v48(v65, v36, v35);
      v48((v46 + *(v38 + 48)), v45, v35);
      sub_20CCF3CB0(v46, v34);
      v76 = *(v38 + 48);
      v49 = v58;
      v48(v58, v34, v35);
      v50 = *(v47 + 8);
      v50(v34 + v76, v35);
      sub_20CD28D8C(v46, v34);
      v48(&v49[*(v64 + 36)], (v34 + *(v38 + 48)), v35);
      v50(v34, v35);
      sub_20CD62E34();
      v51 = v67;
      sub_20CD62E44();
      sub_20CD28FD4(&qword_27C810EE0, MEMORY[0x277D09EE8]);
      v52 = v70;
      sub_20CD632D4();
      (*(v69 + 8))(v51, v52);
      v53 = v62;
      sub_20CD62DC4();
      sub_20CD62DD4();
      (*(v71 + 8))(v53, v63);
      v54 = v72;
      sub_20CD62E04();
      v55 = 0;
LABEL_16:
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810ED8, &qword_20CD64848);
      return (*(*(v56 - 8) + 56))(v54, v55, 1, v56);
    }

    __break(1u);
    goto LABEL_18;
  }

  v35 = v75;
  v34 = v76;
  v36 = v74;
  result = v80;
  if (!v33)
  {
    v37 = BYTE6(v59);
    v38 = v77;
    v39 = v20;
    goto LABEL_14;
  }

  LODWORD(v37) = HIDWORD(v80) - v80;
  v38 = v77;
  if (!__OFSUB__(HIDWORD(v80), v80))
  {
    v39 = v20;
    v37 = v37;
LABEL_14:
    v40 = v73;
    if (v37 <= 0)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_20CD274D0@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v63 = sub_20CD62DE4();
  v71 = *(v63 - 8);
  v2 = *(v71 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20CD62B84();
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v4);
  v67 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20CD62EB4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v68 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF0, &unk_20CD64270);
  v10 = *(*(v77 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v77);
  v76 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v65 = &v57 - v13;
  v75 = sub_20CD62AB4();
  v66 = *(v75 - 8);
  v14 = *(v66 + 64);
  v15 = MEMORY[0x28223BE20](v75);
  v73 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v74 = &v57 - v17;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v18 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v20 = &v57 - v19;
  v21 = sub_20CD62CF4();
  v22 = sub_20CD28FD4(&qword_28110F6F8, MEMORY[0x277D0A318]);
  v78 = v1;
  sub_20CD62E24();
  __swift_project_boxed_opaque_existential_1(v79, v79[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v27 = &v57 - v26;
  v28 = v80;
  sub_20CD62B64();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_0(v79);
  }

  v61 = v22;
  v60 = v21;
  swift_getAssociatedConformanceWitness();
  v29 = sub_20CD63044();
  v32 = v31;
  v80 = v29;
  (*(v24 + 8))(v27, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_0(v79);
  v59 = v32;
  v33 = v32 >> 62;
  if ((v32 >> 62) > 1)
  {
    v38 = v77;
    v39 = v20;
    v35 = v75;
    v34 = v76;
    v40 = v73;
    v36 = v74;
    result = v80;
    if (v33 != 2)
    {
      goto LABEL_15;
    }

    v42 = *(v80 + 16);
    v41 = *(v80 + 24);
    v43 = __OFSUB__(v41, v42);
    v44 = v41 - v42;
    if (v43)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (v44 <= 0)
    {
LABEL_15:
      sub_20CD1CD98(result, v59);
      v55 = 1;
      v54 = v72;
      goto LABEL_16;
    }

LABEL_10:
    v58 = v39;
    v77 = 0;
    sub_20CD62E64();
    sub_20CD62E54();
    sub_20CD28FD4(&qword_28110F778, MEMORY[0x277D09F70]);
    result = sub_20CD63224();
    if (result)
    {
      v45 = v40;
      v46 = v65;
      v47 = v66;
      v48 = *(v66 + 32);
      v48(v65, v36, v35);
      v48((v46 + *(v38 + 48)), v45, v35);
      sub_20CCF3CB0(v46, v34);
      v76 = *(v38 + 48);
      v49 = v58;
      v48(v58, v34, v35);
      v50 = *(v47 + 8);
      v50(v34 + v76, v35);
      sub_20CD28D8C(v46, v34);
      v48(&v49[*(v64 + 36)], (v34 + *(v38 + 48)), v35);
      v50(v34, v35);
      sub_20CD62E34();
      v51 = v67;
      sub_20CD62E44();
      sub_20CD28FD4(&qword_28110F748, MEMORY[0x277D0A1B8]);
      v52 = v70;
      sub_20CD632D4();
      (*(v69 + 8))(v51, v52);
      v53 = v62;
      sub_20CD62DC4();
      sub_20CD62DD4();
      (*(v71 + 8))(v53, v63);
      v54 = v72;
      sub_20CD62E04();
      v55 = 0;
LABEL_16:
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EF0, &qword_20CD64858);
      return (*(*(v56 - 8) + 56))(v54, v55, 1, v56);
    }

    __break(1u);
    goto LABEL_18;
  }

  v35 = v75;
  v34 = v76;
  v36 = v74;
  result = v80;
  if (!v33)
  {
    v37 = BYTE6(v59);
    v38 = v77;
    v39 = v20;
    goto LABEL_14;
  }

  LODWORD(v37) = HIDWORD(v80) - v80;
  v38 = v77;
  if (!__OFSUB__(HIDWORD(v80), v80))
  {
    v39 = v20;
    v37 = v37;
LABEL_14:
    v40 = v73;
    if (v37 <= 0)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_20CD27D20@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v63 = sub_20CD62DE4();
  v71 = *(v63 - 8);
  v2 = *(v71 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20CD62D14();
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v4);
  v67 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20CD62F94();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v68 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF0, &unk_20CD64270);
  v10 = *(*(v77 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v77);
  v76 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v65 = &v57 - v13;
  v75 = sub_20CD62AB4();
  v66 = *(v75 - 8);
  v14 = *(v66 + 64);
  v15 = MEMORY[0x28223BE20](v75);
  v73 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v74 = &v57 - v17;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v18 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v20 = &v57 - v19;
  v21 = sub_20CD62DF4();
  v22 = sub_20CD28FD4(&qword_28110F6A0, MEMORY[0x277D0A3E0]);
  v78 = v1;
  sub_20CD62E24();
  __swift_project_boxed_opaque_existential_1(v79, v79[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v27 = &v57 - v26;
  v28 = v80;
  sub_20CD62B64();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_0(v79);
  }

  v61 = v22;
  v60 = v21;
  swift_getAssociatedConformanceWitness();
  v29 = sub_20CD63044();
  v32 = v31;
  v80 = v29;
  (*(v24 + 8))(v27, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_0(v79);
  v59 = v32;
  v33 = v32 >> 62;
  if ((v32 >> 62) > 1)
  {
    v38 = v77;
    v39 = v20;
    v35 = v75;
    v34 = v76;
    v40 = v73;
    v36 = v74;
    result = v80;
    if (v33 != 2)
    {
      goto LABEL_15;
    }

    v42 = *(v80 + 16);
    v41 = *(v80 + 24);
    v43 = __OFSUB__(v41, v42);
    v44 = v41 - v42;
    if (v43)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (v44 <= 0)
    {
LABEL_15:
      sub_20CD1CD98(result, v59);
      v55 = 1;
      v54 = v72;
      goto LABEL_16;
    }

LABEL_10:
    v58 = v39;
    v77 = 0;
    sub_20CD62E64();
    sub_20CD62E54();
    sub_20CD28FD4(&qword_28110F778, MEMORY[0x277D09F70]);
    result = sub_20CD63224();
    if (result)
    {
      v45 = v40;
      v46 = v65;
      v47 = v66;
      v48 = *(v66 + 32);
      v48(v65, v36, v35);
      v48((v46 + *(v38 + 48)), v45, v35);
      sub_20CCF3CB0(v46, v34);
      v76 = *(v38 + 48);
      v49 = v58;
      v48(v58, v34, v35);
      v50 = *(v47 + 8);
      v50(v34 + v76, v35);
      sub_20CD28D8C(v46, v34);
      v48(&v49[*(v64 + 36)], (v34 + *(v38 + 48)), v35);
      v50(v34, v35);
      sub_20CD62E34();
      v51 = v67;
      sub_20CD62E44();
      sub_20CD28FD4(&qword_28110F6F0, MEMORY[0x277D0A328]);
      v52 = v70;
      sub_20CD632D4();
      (*(v69 + 8))(v51, v52);
      v53 = v62;
      sub_20CD62DC4();
      sub_20CD62DD4();
      (*(v71 + 8))(v53, v63);
      v54 = v72;
      sub_20CD62E04();
      v55 = 0;
LABEL_16:
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F00, &qword_20CD64868);
      return (*(*(v56 - 8) + 56))(v54, v55, 1, v56);
    }

    __break(1u);
    goto LABEL_18;
  }

  v35 = v75;
  v34 = v76;
  v36 = v74;
  result = v80;
  if (!v33)
  {
    v37 = BYTE6(v59);
    v38 = v77;
    v39 = v20;
    goto LABEL_14;
  }

  LODWORD(v37) = HIDWORD(v80) - v80;
  v38 = v77;
  if (!__OFSUB__(HIDWORD(v80), v80))
  {
    v39 = v20;
    v37 = v37;
LABEL_14:
    v40 = v73;
    if (v37 <= 0)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t PropertyRecordProtocol.toDatabasePropertyRecord()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a3;
  v64 = sub_20CD62DE4();
  v72 = *(v64 - 8);
  v6 = *(v72 + 64);
  MEMORY[0x28223BE20](v64);
  v71 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = *(AssociatedTypeWitness - 8);
  v8 = *(v70 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v68 = &v61 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v69 = &v61 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF0, &unk_20CD64270);
  v13 = *(*(v66 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v66);
  v76 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v77 = &v61 - v16;
  v75 = sub_20CD62AB4();
  v65 = *(v75 - 8);
  v17 = *(v65 + 64);
  v18 = MEMORY[0x28223BE20](v75);
  v74 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v61 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v61 - v24;
  v78 = v3;
  v79 = a1;
  v80 = a2;
  sub_20CD62E24();
  __swift_project_boxed_opaque_existential_1(v81, v81[3]);
  v26 = swift_getAssociatedTypeWitness();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v61 - v29;
  v31 = v82;
  sub_20CD62B64();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_0(v81);
  }

  v82 = v21;
  v63 = v22;
  swift_getAssociatedConformanceWitness();
  v32 = sub_20CD63044();
  v35 = v34;
  v62 = v32;
  (*(v27 + 8))(v30, v26);
  __swift_destroy_boxed_opaque_existential_0(v81);
  v61 = v35;
  v36 = v35 >> 62;
  if ((v35 >> 62) > 1)
  {
    v37 = v25;
    v38 = v75;
    v39 = v76;
    v41 = v77;
    v40 = v74;
    result = v62;
    if (v36 != 2)
    {
      goto LABEL_15;
    }

    v43 = *(v62 + 16);
    v42 = *(v62 + 24);
    v44 = __OFSUB__(v42, v43);
    v45 = v42 - v43;
    if (v44)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (v45 < 1)
    {
LABEL_15:
      sub_20CD1CD98(result, v61);
      v59 = 1;
      v58 = v73;
      goto LABEL_16;
    }

LABEL_11:
    v75 = v37;
    v76 = 0;
    v46 = v82;
    sub_20CD62E64();
    sub_20CD62E54();
    sub_20CD28FD4(&qword_28110F778, MEMORY[0x277D09F70]);
    result = sub_20CD63224();
    if (result)
    {
      v47 = v65;
      v48 = *(v65 + 32);
      v48(v41, v46, v38);
      v49 = v66;
      v48(v41 + *(v66 + 48), v40, v38);
      sub_20CCF3CB0(v41, v39);
      v50 = v47;
      v51 = *(v49 + 48);
      v52 = v75;
      v48(v75, v39, v38);
      v53 = *(v50 + 8);
      v53(v39 + v51, v38);
      sub_20CD28D8C(v77, v39);
      v48(v52 + *(v63 + 36), (v39 + *(v49 + 48)), v38);
      v53(v39, v38);
      sub_20CD62E34();
      v54 = v68;
      sub_20CD62E44();
      v55 = AssociatedTypeWitness;
      v56 = *(swift_getAssociatedConformanceWitness() + 24);
      sub_20CD632D4();
      (*(v70 + 8))(v54, v55);
      v57 = v71;
      sub_20CD62DC4();
      sub_20CD62DD4();
      (*(v72 + 8))(v57, v64);
      v58 = v73;
      sub_20CD62E04();
      v59 = 0;
LABEL_16:
      v60 = sub_20CD62E14();
      return (*(*(v60 - 8) + 56))(v58, v59, 1, v60);
    }

    __break(1u);
    goto LABEL_18;
  }

  v37 = v25;
  v38 = v75;
  v39 = v76;
  v40 = v74;
  result = v62;
  if (!v36)
  {
    v41 = v77;
    if (!BYTE6(v61))
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v41 = v77;
  if (!__OFSUB__(HIDWORD(v62), v62))
  {
    if (HIDWORD(v62) - v62 < 1)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_20CD28D8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF0, &unk_20CD64270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20CD28E20(uint64_t a1, int a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
    sub_20CD63344();
  }

  else if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
    sub_20CD63334();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20CD28ED4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_20CD28F80(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_20CD28FD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SnapshotProcessor()
{
  result = qword_28110F358;
  if (!qword_28110F358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CD290A4()
{
  result = sub_20CD626F4();
  if (v1 <= 0x3F)
  {
    result = sub_20CCED538(319, &qword_28110F2A8);
    if (v2 <= 0x3F)
    {
      result = sub_20CCED538(319, &qword_28110F640);
      if (v3 <= 0x3F)
      {
        result = sub_20CCED538(319, qword_28110F2B0);
        if (v4 <= 0x3F)
        {
          result = sub_20CCED538(319, &qword_28110F838);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for SanityTaskClient();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_20CD291E4(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for SnapshotProcessor();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v2[11] = *(v4 + 64);
  v2[12] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F18, &unk_20CD648C0);
  v2[14] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v8 = sub_20CD62C54();
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = *(v9 + 64) + 15;
  v2[18] = swift_task_alloc();
  v11 = sub_20CD62AB4();
  v2[19] = v11;
  v12 = *(v11 - 8);
  v2[20] = v12;
  v13 = *(v12 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v14 = sub_20CD626E4();
  v2[26] = v14;
  v15 = *(v14 - 8);
  v2[27] = v15;
  v16 = *(v15 + 64) + 15;
  v2[28] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v18 = sub_20CD62654();
  v2[30] = v18;
  v19 = *(v18 - 8);
  v2[31] = v19;
  v20 = *(v19 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v21 = sub_20CD62F14();
  v2[34] = v21;
  v22 = *(v21 - 8);
  v2[35] = v22;
  v23 = *(v22 + 64) + 15;
  v2[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD29560, 0, 0);
}

uint64_t sub_20CD29560()
{
  v43 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[7];
  v5 = sub_20CD631B4();
  v0[37] = __swift_project_value_buffer(v5, qword_28110F878);
  (*(v1 + 16))(v2, v4, v3);
  v6 = sub_20CD63194();
  v7 = sub_20CD633D4();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[35];
  v10 = v0[36];
  v11 = v0[34];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = v39;
    *v12 = 136315138;
    v13 = sub_20CD62F04();
    v15 = v14;
    (*(v9 + 8))(v10, v11);
    v16 = sub_20CD6153C(v13, v15, &v42);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_20CCEA000, v6, v7, "SnapshotProcessor::run with reason %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x20F3115B0](v39, -1, -1);
    MEMORY[0x20F3115B0](v12, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v17 = sub_20CD62A14();
  v0[5] = v17;
  v0[6] = sub_20CD42728(&qword_28110F790, MEMORY[0x277D09F50]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v17 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D09F48], v17);
  LOBYTE(v17) = sub_20CD627F4();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v17)
  {
    v19 = (v0[8] + *(v0[9] + 32));
    v20 = *__swift_project_boxed_opaque_existential_1(v19, v19[3]);
    v21 = swift_task_alloc();
    v0[38] = v21;
    *v21 = v0;
    v21[1] = sub_20CD2999C;

    return sub_20CD5FE7C();
  }

  else
  {
    v23 = sub_20CD63194();
    v24 = sub_20CD633D4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20CCEA000, v23, v24, "FF not enabled. Skipping", v25, 2u);
      MEMORY[0x20F3115B0](v25, -1, -1);
    }

    v26 = v0[36];
    v27 = v0[32];
    v28 = v0[33];
    v30 = v0[28];
    v29 = v0[29];
    v32 = v0[24];
    v31 = v0[25];
    v34 = v0[22];
    v33 = v0[23];
    v35 = v0[21];
    v37 = v0[18];
    v38 = v0[15];
    v40 = v0[13];
    v41 = v0[12];

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_20CD2999C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 288);
    v9 = *(v4 + 256);
    v8 = *(v4 + 264);
    v11 = *(v4 + 224);
    v10 = *(v4 + 232);
    v13 = *(v4 + 192);
    v12 = *(v4 + 200);
    v14 = *(v4 + 176);
    v15 = *(v4 + 184);
    v21 = *(v4 + 168);
    v22 = *(v4 + 144);
    v16 = *(v4 + 120);
    v18 = v4 + 96;
    v17 = *(v4 + 96);
    v23 = *(v18 + 8);

    v19 = *(v6 + 8);

    return v19();
  }

  else
  {
    *(v4 + 516) = a1;

    return MEMORY[0x2822009F8](sub_20CD29BA4, 0, 0);
  }
}

uint64_t sub_20CD29BA4()
{
  if (*(v0 + 516) == 2)
  {
    v1 = *(v0 + 296);
    v2 = sub_20CD63194();
    v3 = sub_20CD633D4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_20CCEA000, v2, v3, "Device is not ready to process snapshots, skipping...", v4, 2u);
      MEMORY[0x20F3115B0](v4, -1, -1);
    }

    goto LABEL_7;
  }

  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);
  v10 = *(v0 + 216);
  v9 = *(v0 + 224);
  v11 = *(v0 + 208);
  v12 = *(v0 + 64);
  (*(v10 + 104))(v9, *MEMORY[0x277CC9968], v11);
  sub_20CD62644();
  sub_20CD626D4();
  v13 = *(v6 + 8);
  *(v0 + 312) = v13;
  *(v0 + 320) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v5, v7);
  (*(v10 + 8))(v9, v11);
  if ((*(v6 + 48))(v8, 1, v7) == 1)
  {
    sub_20CD1DA10(*(v0 + 232), &qword_27C810CC8, &qword_20CD64160);
LABEL_7:
    v14 = *(v0 + 288);
    v15 = *(v0 + 256);
    v16 = *(v0 + 264);
    v18 = *(v0 + 224);
    v17 = *(v0 + 232);
    v20 = *(v0 + 192);
    v19 = *(v0 + 200);
    v22 = *(v0 + 176);
    v21 = *(v0 + 184);
    v23 = *(v0 + 168);
    v31 = *(v0 + 144);
    v32 = *(v0 + 120);
    v33 = *(v0 + 104);
    v34 = *(v0 + 96);

    v24 = *(v0 + 8);

    return v24();
  }

  v26 = *(v0 + 64);
  v27 = *(v0 + 72);
  (*(*(v0 + 248) + 32))(*(v0 + 264), *(v0 + 232), *(v0 + 240));
  *(v0 + 328) = os_transaction_create();
  v28 = *(v27 + 20);
  *(v0 + 512) = v28;
  v29 = *__swift_project_boxed_opaque_existential_1((v26 + v28), *(v26 + v28 + 24));
  v30 = swift_task_alloc();
  *(v0 + 336) = v30;
  *v30 = v0;
  v30[1] = sub_20CD29ECC;

  return sub_20CD25D98();
}

uint64_t sub_20CD29ECC()
{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_20CD2A1B0;
  }

  else
  {
    v3 = sub_20CD29FE0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CD29FE0()
{
  v1 = (v0[8] + *(v0[9] + 24));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x277D0A6C8] + 4);
  v5 = swift_task_alloc();
  v0[44] = v5;
  *v5 = v0;
  v5[1] = sub_20CD2A09C;

  return MEMORY[0x282161298](v2, v3);
}

uint64_t sub_20CD2A09C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 352);
  v7 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v1;

  if (v1)
  {
    v5 = sub_20CD2BB48;
  }

  else
  {
    v5 = sub_20CD2A2E4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CD2A1B0()
{
  v1 = *(v0 + 328);
  swift_unknownObjectRelease();
  v19 = *(v0 + 344);
  v2 = *(v0 + 320);
  (*(v0 + 312))(*(v0 + 264), *(v0 + 240));
  v3 = *(v0 + 288);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v7 = *(v0 + 224);
  v6 = *(v0 + 232);
  v9 = *(v0 + 192);
  v8 = *(v0 + 200);
  v11 = *(v0 + 176);
  v10 = *(v0 + 184);
  v12 = *(v0 + 168);
  v15 = *(v0 + 144);
  v16 = *(v0 + 120);
  v17 = *(v0 + 104);
  v18 = *(v0 + 96);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_20CD2A2E4()
{
  v1 = v0[33];
  v2 = v0[25];
  sub_20CD62564();
  v3 = swift_task_alloc();
  v0[47] = v3;
  *v3 = v0;
  v3[1] = sub_20CD2A388;
  v4 = v0[18];
  v5 = v0[8];

  return sub_20CD2CADC(v4);
}

uint64_t sub_20CD2A388()
{
  v2 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_20CD2BC7C;
  }

  else
  {
    v3 = sub_20CD2A49C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CD2A49C()
{
  v50 = v0;
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 144);
  sub_20CD62BF4();
  v4 = sub_20CD62A64();
  v5 = *(v0 + 296);
  if (v4)
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 200);
    v9 = *(v0 + 176);
    v8 = *(v0 + 184);
    v10 = *(v0 + 152);
    v11 = *(v0 + 160);
    v12 = *(v11 + 16);
    *(v0 + 392) = v12;
    *(v0 + 400) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v6, v10);
    v12(v9, v7, v10);
    v13 = sub_20CD63194();
    v14 = sub_20CD633D4();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 176);
    v16 = *(v0 + 184);
    v19 = *(v0 + 152);
    v18 = *(v0 + 160);
    if (v15)
    {
      v47 = v14;
      v20 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = v48;
      *v20 = 136315394;
      sub_20CD42728(&qword_28110F760, MEMORY[0x277D09F70]);
      v21 = sub_20CD63574();
      v23 = v22;
      log = v13;
      v24 = *(v18 + 8);
      v24(v16, v19);
      v25 = sub_20CD6153C(v21, v23, &v49);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2080;
      v26 = sub_20CD63574();
      v28 = v27;
      v24(v17, v19);
      v29 = sub_20CD6153C(v26, v28, &v49);

      *(v20 + 14) = v29;
      _os_log_impl(&dword_20CCEA000, log, v47, "Processing snapshots from %s to %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F3115B0](v48, -1, -1);
      MEMORY[0x20F3115B0](v20, -1, -1);
    }

    else
    {

      v24 = *(v18 + 8);
      v24(v17, v19);
      v24(v16, v19);
    }

    *(v0 + 408) = v24;
    v38 = *(v0 + 200);
    v39 = *(v0 + 144);
    v40 = *(v0 + 64);
    v41 = swift_task_alloc();
    *(v0 + 416) = v41;
    v41[2] = v40;
    v41[3] = v39;
    v41[4] = v38;
    v42 = *(MEMORY[0x277D0A040] + 4);
    v43 = swift_task_alloc();
    *(v0 + 424) = v43;
    *v43 = v0;
    v43[1] = sub_20CD2A8C8;
    v45 = *(v0 + 112);
    v44 = *(v0 + 120);

    return MEMORY[0x282160B38](v44, &unk_20CD64910, v41, v45);
  }

  else
  {
    v30 = sub_20CD63194();
    v31 = sub_20CD633D4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_20CCEA000, v30, v31, "All caught up, nothing to process. Just cleaning up", v32, 2u);
      MEMORY[0x20F3115B0](v32, -1, -1);
    }

    v33 = *(v0 + 512);
    v34 = *(v0 + 64);

    v35 = *__swift_project_boxed_opaque_existential_1((v34 + v33), *(v34 + v33 + 24));
    v36 = swift_task_alloc();
    *(v0 + 480) = v36;
    *v36 = v0;
    v36[1] = sub_20CD2B3D4;

    return sub_20CD24FAC();
  }
}

uint64_t sub_20CD2A8C8(double a1)
{
  v3 = *v2;
  v4 = *(*v2 + 424);
  v8 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v5 = sub_20CD2C114;
  }

  else
  {
    v6 = *(v3 + 416);
    sub_20CD1DA10(*(v3 + 120), &qword_27C810F18, &unk_20CD648C0);

    v5 = sub_20CD2AA04;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CD2AA04()
{
  v25 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 296);
  (*(v0 + 392))(*(v0 + 168), *(v0 + 200), *(v0 + 152));
  v3 = sub_20CD63194();
  v4 = sub_20CD633D4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 432);
    v23 = *(v0 + 408);
    v7 = *(v0 + 160);
    v6 = *(v0 + 168);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315394;
    sub_20CD42728(&qword_28110F760, MEMORY[0x277D09F70]);
    v11 = sub_20CD63574();
    v13 = v12;
    v23(v6, v8);
    v14 = sub_20CD6153C(v11, v13, &v24);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v5;
    _os_log_impl(&dword_20CCEA000, v3, v4, "Processed snapshots until %s in %fs", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F3115B0](v10, -1, -1);
    MEMORY[0x20F3115B0](v9, -1, -1);
  }

  else
  {
    v15 = *(v0 + 408);
    v17 = *(v0 + 160);
    v16 = *(v0 + 168);
    v18 = *(v0 + 152);

    v15(v16, v18);
  }

  v19 = (*(v0 + 64) + *(v0 + 512));
  v20 = *__swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v21 = swift_task_alloc();
  *(v0 + 448) = v21;
  *v21 = v0;
  v21[1] = sub_20CD2AC58;

  return sub_20CD24FAC();
}

uint64_t sub_20CD2AC58()
{
  v2 = *(*v1 + 448);
  v3 = *v1;
  v3[57] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CD2AED8, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[58] = v4;
    *v4 = v3;
    v4[1] = sub_20CD2ADC4;
    v5 = v3[8];

    return sub_20CD2D878();
  }
}

uint64_t sub_20CD2ADC4()
{
  v2 = *(*v1 + 464);
  v5 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = sub_20CD2C2C8;
  }

  else
  {
    v3 = sub_20CD2B150;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CD2AED8()
{
  v1 = *(v0 + 408);
  v32 = *(v0 + 360);
  v34 = *(v0 + 328);
  v2 = *(v0 + 200);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  v28 = *(v0 + 80);
  v30 = *(v0 + 88);
  v26 = *(v0 + 64);
  v1(*(v0 + 192), v3);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);
  v9 = sub_20CD63374();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_20CD41E6C(v26, v7);
  v10 = (*(v28 + 80) + 40) & ~*(v28 + 80);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v32;
  sub_20CD41ED0(v7, v11 + v10);
  v12 = v32;
  sub_20CD54F08(0, 0, v8, &unk_20CD64918, v11);
  swift_unknownObjectRelease();

  v35 = *(v0 + 456);
  v13 = *(v0 + 320);
  (*(v0 + 312))(*(v0 + 264), *(v0 + 240));
  v14 = *(v0 + 288);
  v16 = *(v0 + 256);
  v15 = *(v0 + 264);
  v18 = *(v0 + 224);
  v17 = *(v0 + 232);
  v20 = *(v0 + 192);
  v19 = *(v0 + 200);
  v22 = *(v0 + 176);
  v21 = *(v0 + 184);
  v23 = *(v0 + 168);
  v27 = *(v0 + 144);
  v29 = *(v0 + 120);
  v31 = *(v0 + 104);
  v33 = *(v0 + 96);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_20CD2B150()
{
  v1 = v0[51];
  v29 = v0[45];
  v30 = v0[41];
  v35 = v0[39];
  v37 = v0[40];
  v31 = v0[30];
  v33 = v0[33];
  v2 = v0[25];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[16];
  v8 = v0[12];
  v7 = v0[13];
  v27 = v0[10];
  v28 = v0[11];
  v26 = v0[8];
  v1(v0[24], v3);
  (*(v4 + 8))(v5, v6);
  v1(v2, v3);
  v9 = sub_20CD63374();
  v10 = v7;
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_20CD41E6C(v26, v8);
  v11 = (*(v27 + 80) + 40) & ~*(v27 + 80);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v29;
  sub_20CD41ED0(v8, v12 + v11);
  v13 = v29;
  sub_20CD54F08(0, 0, v10, &unk_20CD64928, v12);
  swift_unknownObjectRelease();

  v35(v33, v31);
  v14 = v0[36];
  v15 = v0[32];
  v16 = v0[33];
  v18 = v0[28];
  v17 = v0[29];
  v20 = v0[24];
  v19 = v0[25];
  v22 = v0[22];
  v21 = v0[23];
  v23 = v0[21];
  v32 = v0[18];
  v34 = v0[15];
  v36 = v0[13];
  v38 = v0[12];

  v24 = v0[1];

  return v24();
}

uint64_t sub_20CD2B3D4()
{
  v2 = *(*v1 + 480);
  v3 = *v1;
  v3[61] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CD2B654, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[62] = v4;
    *v4 = v3;
    v4[1] = sub_20CD2B540;
    v5 = v3[8];

    return sub_20CD2D878();
  }
}

uint64_t sub_20CD2B540()
{
  v2 = *(*v1 + 496);
  v5 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_20CD2BEA0;
  }

  else
  {
    v3 = sub_20CD2B8C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CD2B654()
{
  v32 = *(v0 + 360);
  v34 = *(v0 + 328);
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v28 = *(v0 + 80);
  v30 = *(v0 + 88);
  v26 = *(v0 + 64);
  v8 = *(*(v0 + 160) + 8);
  v8(*(v0 + 192), v2);
  (*(v4 + 8))(v3, v5);
  v8(v1, v2);
  v9 = sub_20CD63374();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_20CD41E6C(v26, v6);
  v10 = (*(v28 + 80) + 40) & ~*(v28 + 80);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v32;
  sub_20CD41ED0(v6, v11 + v10);
  v12 = v32;
  sub_20CD54F08(0, 0, v7, &unk_20CD648E8, v11);
  swift_unknownObjectRelease();

  v35 = *(v0 + 488);
  v13 = *(v0 + 320);
  (*(v0 + 312))(*(v0 + 264), *(v0 + 240));
  v14 = *(v0 + 288);
  v16 = *(v0 + 256);
  v15 = *(v0 + 264);
  v18 = *(v0 + 224);
  v17 = *(v0 + 232);
  v20 = *(v0 + 192);
  v19 = *(v0 + 200);
  v22 = *(v0 + 176);
  v21 = *(v0 + 184);
  v23 = *(v0 + 168);
  v27 = *(v0 + 144);
  v29 = *(v0 + 120);
  v31 = *(v0 + 104);
  v33 = *(v0 + 96);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_20CD2B8C8()
{
  v29 = v0[45];
  v30 = v0[41];
  v35 = v0[39];
  v37 = v0[40];
  v31 = v0[30];
  v33 = v0[33];
  v1 = v0[25];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v27 = v0[10];
  v28 = v0[11];
  v26 = v0[8];
  v8 = *(v0[20] + 8);
  v8(v0[24], v2);
  (*(v3 + 8))(v4, v5);
  v8(v1, v2);
  v9 = sub_20CD63374();
  v10 = v6;
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_20CD41E6C(v26, v7);
  v11 = (*(v27 + 80) + 40) & ~*(v27 + 80);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v29;
  sub_20CD41ED0(v7, v12 + v11);
  v13 = v29;
  sub_20CD54F08(0, 0, v10, &unk_20CD64900, v12);
  swift_unknownObjectRelease();

  v35(v33, v31);
  v14 = v0[36];
  v15 = v0[32];
  v16 = v0[33];
  v18 = v0[28];
  v17 = v0[29];
  v20 = v0[24];
  v19 = v0[25];
  v22 = v0[22];
  v21 = v0[23];
  v23 = v0[21];
  v32 = v0[18];
  v34 = v0[15];
  v36 = v0[13];
  v38 = v0[12];

  v24 = v0[1];

  return v24();
}

uint64_t sub_20CD2BB48()
{
  v1 = *(v0 + 328);
  swift_unknownObjectRelease();
  v19 = *(v0 + 368);
  v2 = *(v0 + 320);
  (*(v0 + 312))(*(v0 + 264), *(v0 + 240));
  v3 = *(v0 + 288);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v7 = *(v0 + 224);
  v6 = *(v0 + 232);
  v9 = *(v0 + 192);
  v8 = *(v0 + 200);
  v11 = *(v0 + 176);
  v10 = *(v0 + 184);
  v12 = *(v0 + 168);
  v15 = *(v0 + 144);
  v16 = *(v0 + 120);
  v17 = *(v0 + 104);
  v18 = *(v0 + 96);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_20CD2BC7C()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 328);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  (*(*(v0 + 160) + 8))(*(v0 + 200), *(v0 + 152));
  v8 = sub_20CD63374();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  sub_20CD41E6C(v7, v4);
  v9 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;
  sub_20CD41ED0(v4, v10 + v9);
  v11 = v1;
  sub_20CD54F08(0, 0, v3, &unk_20CD648E0, v10);
  swift_unknownObjectRelease();

  v29 = *(v0 + 384);
  v12 = *(v0 + 320);
  (*(v0 + 312))(*(v0 + 264), *(v0 + 240));
  v13 = *(v0 + 288);
  v15 = *(v0 + 256);
  v14 = *(v0 + 264);
  v17 = *(v0 + 224);
  v16 = *(v0 + 232);
  v19 = *(v0 + 192);
  v18 = *(v0 + 200);
  v21 = *(v0 + 176);
  v20 = *(v0 + 184);
  v22 = *(v0 + 168);
  v25 = *(v0 + 144);
  v26 = *(v0 + 120);
  v27 = *(v0 + 104);
  v28 = *(v0 + 96);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_20CD2BEA0()
{
  v32 = *(v0 + 360);
  v34 = *(v0 + 328);
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v28 = *(v0 + 80);
  v30 = *(v0 + 88);
  v26 = *(v0 + 64);
  v8 = *(*(v0 + 160) + 8);
  v8(*(v0 + 192), v2);
  (*(v4 + 8))(v3, v5);
  v8(v1, v2);
  v9 = sub_20CD63374();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_20CD41E6C(v26, v6);
  v10 = (*(v28 + 80) + 40) & ~*(v28 + 80);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v32;
  sub_20CD41ED0(v6, v11 + v10);
  v12 = v32;
  sub_20CD54F08(0, 0, v7, &unk_20CD648F8, v11);
  swift_unknownObjectRelease();

  v35 = *(v0 + 504);
  v13 = *(v0 + 320);
  (*(v0 + 312))(*(v0 + 264), *(v0 + 240));
  v14 = *(v0 + 288);
  v16 = *(v0 + 256);
  v15 = *(v0 + 264);
  v18 = *(v0 + 224);
  v17 = *(v0 + 232);
  v20 = *(v0 + 192);
  v19 = *(v0 + 200);
  v22 = *(v0 + 176);
  v21 = *(v0 + 184);
  v23 = *(v0 + 168);
  v27 = *(v0 + 144);
  v29 = *(v0 + 120);
  v31 = *(v0 + 104);
  v33 = *(v0 + 96);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_20CD2C114()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 416);
  v3 = *(v0 + 296);

  v4 = v1;
  v5 = sub_20CD63194();
  v6 = sub_20CD633D4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 440);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_20CCEA000, v5, v6, "Failed to process snapshot due to: %@.", v9, 0xCu);
    sub_20CD1DA10(v10, &qword_27C810DD8, &qword_20CD64930);
    MEMORY[0x20F3115B0](v10, -1, -1);
    MEMORY[0x20F3115B0](v9, -1, -1);
  }

  else
  {
  }

  v13 = (*(v0 + 64) + *(v0 + 512));
  v14 = *__swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v15 = swift_task_alloc();
  *(v0 + 448) = v15;
  *v15 = v0;
  v15[1] = sub_20CD2AC58;

  return sub_20CD24FAC();
}

uint64_t sub_20CD2C2C8()
{
  v1 = *(v0 + 408);
  v32 = *(v0 + 360);
  v34 = *(v0 + 328);
  v2 = *(v0 + 200);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  v28 = *(v0 + 80);
  v30 = *(v0 + 88);
  v26 = *(v0 + 64);
  v1(*(v0 + 192), v3);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);
  v9 = sub_20CD63374();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_20CD41E6C(v26, v7);
  v10 = (*(v28 + 80) + 40) & ~*(v28 + 80);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v32;
  sub_20CD41ED0(v7, v11 + v10);
  v12 = v32;
  sub_20CD54F08(0, 0, v8, &unk_20CD64920, v11);
  swift_unknownObjectRelease();

  v35 = *(v0 + 472);
  v13 = *(v0 + 320);
  (*(v0 + 312))(*(v0 + 264), *(v0 + 240));
  v14 = *(v0 + 288);
  v16 = *(v0 + 256);
  v15 = *(v0 + 264);
  v18 = *(v0 + 224);
  v17 = *(v0 + 232);
  v20 = *(v0 + 192);
  v19 = *(v0 + 200);
  v22 = *(v0 + 176);
  v21 = *(v0 + 184);
  v23 = *(v0 + 168);
  v27 = *(v0 + 144);
  v29 = *(v0 + 120);
  v31 = *(v0 + 104);
  v33 = *(v0 + 96);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_20CD2C540(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_20CD62EF4();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD2C604, 0, 0);
}

uint64_t sub_20CD2C604()
{
  v1 = *(v0 + 40);
  v2 = type metadata accessor for SnapshotProcessor();
  v3 = __swift_project_boxed_opaque_existential_1((v1 + *(v2 + 20)), *(v1 + *(v2 + 20) + 24));
  v4 = *v3;
  *(v0 + 72) = *v3;

  return MEMORY[0x2822009F8](sub_20CD2C684, v4, 0);
}

uint64_t sub_20CD2C6AC()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[11] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F08, &qword_20CD64870);
  *v5 = v0;
  v5[1] = sub_20CD2C7B8;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000001CLL, 0x800000020CD65990, sub_20CD3FFA8, v3, v6);
}

uint64_t sub_20CD2C7B8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_20CD2CA6C;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_20CD2C8D4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CD2C8D4()
{
  v13 = v0;
  v1 = v0[13];
  v12 = v0[2];

  sub_20CD40320(&v12);
  if (v1)
  {
  }

  else
  {

    if (*(v12 + 2))
    {
      v4 = v0[7];
      v3 = v0[8];
      v5 = v0[6];
      v6 = v0[3];
      (*(v4 + 16))(v3, &v12[(*(v4 + 80) + 32) & ~*(v4 + 80)], v5);

      sub_20CD62EC4();
      (*(v4 + 8))(v3, v5);
      v7 = 0;
    }

    else
    {

      v7 = 1;
    }

    v8 = v0[8];
    v9 = v0[3];
    v10 = sub_20CD62AB4();
    (*(*(v10 - 8) + 56))(v9, v7, 1, v10);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_20CD2CA6C()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_20CD2CADC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F48, &qword_20CD649A8) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_20CD629A4();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F50, &qword_20CD649B0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = sub_20CD62F24();
  v2[9] = v8;
  v9 = *(v8 - 8);
  v2[10] = v9;
  v10 = *(v9 + 64) + 15;
  v2[11] = swift_task_alloc();
  v11 = sub_20CD62AB4();
  v2[12] = v11;
  v12 = *(v11 - 8);
  v2[13] = v12;
  v13 = *(v12 + 64) + 15;
  v2[14] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F58, &qword_20CD649B8) - 8) + 64) + 15;
  v15 = swift_task_alloc();
  v2[15] = v15;
  v16 = sub_20CD62E74();
  v2[16] = v16;
  v17 = *(v16 - 8);
  v2[17] = v17;
  v18 = *(v17 + 64) + 15;
  v2[18] = swift_task_alloc();
  v19 = swift_task_alloc();
  v2[19] = v19;
  *v19 = v2;
  v19[1] = sub_20CD2CD90;

  return sub_20CD37094(v15);
}

uint64_t sub_20CD2CD90()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_20CD2D644;
  }

  else
  {
    v3 = sub_20CD2CEA4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CD2CEA4()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = v0[18];
  if (v5 == 1)
  {
    v8 = v0[13];
    v7 = v0[14];
    v9 = v0[12];
    sub_20CD62A54();
    sub_20CD42728(&qword_28110F698, MEMORY[0x277D0A410]);
    sub_20CD62F84();
    (*(v8 + 8))(v7, v9);
    if (v4(v3, 1, v1) != 1)
    {
      sub_20CD1DA10(v0[15], &qword_27C810F58, &qword_20CD649B8);
    }
  }

  else
  {
    (*(v2 + 32))(v0[18], v3, v1);
  }

  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_20CD2D050;
  v11 = v0[8];
  v12 = v0[3];

  return sub_20CD3A234(v11);
}

uint64_t sub_20CD2D050()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v6 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    (*(v2[17] + 8))(v2[18], v2[16]);
    v4 = sub_20CD2D700;
  }

  else
  {
    v4 = sub_20CD2D17C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CD2D17C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v6 = v0[13];
    v5 = v0[14];
    v8 = v0[11];
    v7 = v0[12];
    sub_20CD62A54();
    sub_20CD42728(&qword_28110F668, MEMORY[0x277D0A578]);
    sub_20CD62F84();
    (*(v6 + 8))(v5, v7);
    if (v4(v3, 1, v1) != 1)
    {
      sub_20CD1DA10(v0[8], &qword_27C810F50, &qword_20CD649B0);
    }
  }

  else
  {
    (*(v2 + 32))(v0[11], v3, v1);
  }

  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = sub_20CD2D320;
  v11 = v0[3];
  v10 = v0[4];

  return sub_20CD3CE7C(v10);
}

uint64_t sub_20CD2D320()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v9 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = v2[17];
    v4 = v2[18];
    v6 = v2[16];
    (*(v2[10] + 8))(v2[11], v2[9]);
    (*(v5 + 8))(v4, v6);
    v7 = sub_20CD2D7BC;
  }

  else
  {
    v7 = sub_20CD2D474;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20CD2D474()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = v0[12];
    v8 = v0[7];
    sub_20CD62A54();
    sub_20CD42728(&qword_28110F7A0, MEMORY[0x277D09F28]);
    sub_20CD62F84();
    (*(v6 + 8))(v5, v7);
    if (v4(v3, 1, v1) != 1)
    {
      sub_20CD1DA10(v0[4], &qword_27C810F48, &qword_20CD649A8);
    }
  }

  else
  {
    (*(v2 + 32))(v0[7], v3, v1);
  }

  v9 = v0[18];
  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[11];
  v14 = v0[7];
  v13 = v0[8];
  v15 = v0[4];
  v16 = v0[2];
  sub_20CD62C04();

  v17 = v0[1];

  return v17();
}

uint64_t sub_20CD2D644()
{
  v1 = v0[20];
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[11];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[4];

  v9 = v0[1];

  return v9();
}

uint64_t sub_20CD2D700()
{
  v1 = v0[22];
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[11];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[4];

  v9 = v0[1];

  return v9();
}

uint64_t sub_20CD2D7BC()
{
  v1 = v0[24];
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[11];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[4];

  v9 = v0[1];

  return v9();
}

uint64_t sub_20CD2D878()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F18, &unk_20CD648C0);
  v1[4] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v4 = sub_20CD62BE4();
  v1[6] = v4;
  v5 = *(v4 - 8);
  v1[7] = v5;
  v6 = *(v5 + 64) + 15;
  v1[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v1[9] = v7;
  v8 = *(v7 - 8);
  v1[10] = v8;
  v9 = *(v8 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD2DA0C, 0, 0);
}

uint64_t sub_20CD2DA0C()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_20CD63244();
  v3 = [v1 BOOLForKey_];

  if (v3)
  {
    if (qword_28110F1A0 != -1)
    {
      swift_once();
    }

    v4 = sub_20CD631B4();
    __swift_project_value_buffer(v4, qword_28110F878);
    v5 = sub_20CD63194();
    v6 = sub_20CD633D4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20CCEA000, v5, v6, "Bypassing SanityTask.", v7, 2u);
      MEMORY[0x20F3115B0](v7, -1, -1);
    }

    v9 = v0[14];
    v8 = v0[15];
    v11 = v0[12];
    v10 = v0[13];
    v12 = v0[11];
    v13 = v0[8];
    v14 = v0[5];

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[3];
    v18 = *(v17 + *(type metadata accessor for SnapshotProcessor() + 36));
    v19 = swift_task_alloc();
    v0[16] = v19;
    *(v19 + 16) = v18;
    v20 = *(MEMORY[0x277D85A40] + 4);
    v21 = swift_task_alloc();
    v0[17] = v21;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F40, &qword_20CD64990);
    *v21 = v0;
    v21[1] = sub_20CD2DCD0;

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000001DLL, 0x800000020CD65A00, sub_20CD42554, v19, v22);
  }
}

uint64_t sub_20CD2DCD0()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_20CD2E340;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_20CD2DDEC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CD2DDEC()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[10];
    v4 = v0[7];
    v56 = MEMORY[0x277D84F90];
    sub_20CD46B48(0, v2, 0);
    v0 = v53;
    v5 = v56;
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v54 = *(v4 + 56);
    v55 = v6;
    v8 = (v4 - 8);
    do
    {
      v9 = *(v53 + 120);
      v10 = *(v53 + 64);
      v11 = *(v53 + 48);
      v55(v10, v7, v11);
      sub_20CD62BD4();
      (*v8)(v10, v11);
      v13 = *(v56 + 16);
      v12 = *(v56 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_20CD46B48(v12 > 1, v13 + 1, 1);
      }

      v14 = *(v53 + 120);
      *(v56 + 16) = v13 + 1;
      sub_20CD4255C(v14, v56 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13);
      v7 += v54;
      --v2;
    }

    while (v2);
  }

  else
  {
    v15 = v0[2];

    v5 = MEMORY[0x277D84F90];
  }

  v16 = sub_20CD48754(v5);
  v0[19] = v16;

  if (!*(v16 + 16))
  {

    if (qword_28110F1A0 != -1)
    {
      swift_once();
    }

    v21 = sub_20CD631B4();
    __swift_project_value_buffer(v21, qword_28110F878);
    v22 = sub_20CD63194();
    v23 = sub_20CD633D4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_20CCEA000, v22, v23, "SanityTask completed successfully", v24, 2u);
      MEMORY[0x20F3115B0](v24, -1, -1);
    }

LABEL_31:
    v45 = *(v53 + 112);
    v44 = *(v53 + 120);
    v47 = *(v53 + 96);
    v46 = *(v53 + 104);
    v48 = *(v53 + 88);
    v49 = *(v53 + 64);
    v50 = *(v53 + 40);

    v51 = *(v53 + 8);

    return v51();
  }

  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v17 = sub_20CD631B4();
  *(v53 + 160) = __swift_project_value_buffer(v17, qword_28110F878);

  v18 = sub_20CD63194();
  v19 = sub_20CD633D4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = *(v16 + 16);

    _os_log_impl(&dword_20CCEA000, v18, v19, "SanityTask found %ld mismatching checkpoints, reprocessing", v20, 0xCu);
    MEMORY[0x20F3115B0](v20, -1, -1);
  }

  else
  {
  }

  v25 = v53;
  v26 = *(v53 + 80);
  v27 = *(v16 + 32);
  *(v53 + 224) = v27;
  v28 = -1;
  v29 = -1 << v27;
  if (-(-1 << v27) < 64)
  {
    v28 = ~(-1 << -v29);
  }

  v30 = v28 & *(v16 + 56);
  *(v53 + 168) = 0;

  if (!v30)
  {
    v33 = 0;
    v34 = ((63 - v29) >> 6) - 1;
    v32 = *(v53 + 152);
    while (v34 != v33)
    {
      v31 = v33 + 1;
      v30 = *(v32 + 8 * v33++ + 64);
      if (v30)
      {
        v25 = v53;
        goto LABEL_27;
      }
    }

    v43 = *(v53 + 152);

    goto LABEL_31;
  }

  v31 = 0;
  v32 = *(v53 + 152);
LABEL_27:
  v25[22] = v30;
  v25[23] = v31;
  v36 = v25[13];
  v35 = v25[14];
  v37 = v25[3];
  sub_20CD1D9A8(*(v32 + 48) + *(v26 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v35, &qword_27C810D08, &qword_20CD64280);
  sub_20CD4255C(v35, v36);
  v38 = swift_task_alloc();
  v25[24] = v38;
  *(v38 + 16) = v37;
  *(v38 + 24) = v36;
  v39 = *(MEMORY[0x277D0A040] + 4);
  v40 = swift_task_alloc();
  v25[25] = v40;
  *v40 = v25;
  v40[1] = sub_20CD2E404;
  v42 = v25[4];
  v41 = v25[5];

  return MEMORY[0x282160B38](v41, &unk_20CD649A0, v38, v42);
}

uint64_t sub_20CD2E340()
{
  v1 = v0[16];

  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  v8 = v0[8];
  v9 = v0[5];

  v10 = v0[1];

  return v10();
}

uint64_t sub_20CD2E404(double a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v5 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  v6 = *(v3 + 192);
  if (v1)
  {
    v7 = *(v3 + 152);

    v8 = sub_20CD2EA3C;
  }

  else
  {
    sub_20CD1DA10(*(v3 + 40), &qword_27C810F18, &unk_20CD648C0);

    v8 = sub_20CD2E568;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_20CD2E568(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v54 = v4;
  v5 = *(v4 + 168);
  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
LABEL_18:
    __break(1u);
    return MEMORY[0x282160B38](a1, a2, a3, a4);
  }

  v7 = *(v4 + 152);
  v8 = *(v4 + 160);
  v9 = *(v4 + 104);
  v10 = *(v4 + 88);
  sub_20CD1D9A8(v9, *(v4 + 96), &qword_27C810D08, &qword_20CD64280);
  sub_20CD1D9A8(v9, v10, &qword_27C810D08, &qword_20CD64280);

  v11 = sub_20CD63194();
  v12 = sub_20CD633D4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v4 + 208);
    v14 = *(v4 + 152);
    v15 = *(v4 + 96);
    v50 = *(v4 + 72);
    v51 = *(v4 + 88);
    v16 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v52;
    *v16 = 134219010;
    *(v16 + 4) = v6;
    *(v16 + 12) = 2048;
    *(v16 + 14) = *(v14 + 16);

    *(v16 + 22) = 2080;
    sub_20CD62AB4();
    sub_20CD42728(&qword_28110F760, MEMORY[0x277D09F70]);
    v17 = sub_20CD63574();
    v19 = v18;
    sub_20CD1DA10(v15, &qword_27C810D08, &qword_20CD64280);
    v20 = sub_20CD6153C(v17, v19, &v53);

    *(v16 + 24) = v20;
    *(v16 + 32) = 2080;
    v21 = v51 + *(v50 + 36);
    v22 = sub_20CD63574();
    v24 = v23;
    sub_20CD1DA10(v51, &qword_27C810D08, &qword_20CD64280);
    v25 = sub_20CD6153C(v22, v24, &v53);

    *(v16 + 34) = v25;
    *(v16 + 42) = 2048;
    *(v16 + 44) = v13;
    _os_log_impl(&dword_20CCEA000, v11, v12, "[%ld/%ld] Processed snapshots from %s to %s in %fs", v16, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v52, -1, -1);
    MEMORY[0x20F3115B0](v16, -1, -1);
  }

  else
  {
    v26 = *(v4 + 152);
    v28 = *(v4 + 88);
    v27 = *(v4 + 96);

    sub_20CD1DA10(v28, &qword_27C810D08, &qword_20CD64280);
    sub_20CD1DA10(v27, &qword_27C810D08, &qword_20CD64280);
  }

  a1 = sub_20CD1DA10(*(v4 + 104), &qword_27C810D08, &qword_20CD64280);
  v30 = *(v4 + 176);
  v29 = *(v4 + 184);
  *(v4 + 168) = v6;
  v31 = (v30 - 1) & v30;
  if (v31)
  {
    v32 = *(v4 + 152);
LABEL_11:
    *(v4 + 176) = v31;
    *(v4 + 184) = v29;
    v35 = *(v4 + 104);
    v34 = *(v4 + 112);
    v36 = *(v4 + 24);
    sub_20CD1D9A8(*(v32 + 48) + *(*(v4 + 80) + 72) * (__clz(__rbit64(v31)) | (v29 << 6)), v34, &qword_27C810D08, &qword_20CD64280);
    sub_20CD4255C(v34, v35);
    v37 = swift_task_alloc();
    *(v4 + 192) = v37;
    *(v37 + 16) = v36;
    *(v37 + 24) = v35;
    v38 = *(MEMORY[0x277D0A040] + 4);
    v39 = swift_task_alloc();
    *(v4 + 200) = v39;
    *v39 = v4;
    v39[1] = sub_20CD2E404;
    a4 = *(v4 + 32);
    a1 = *(v4 + 40);
    a2 = &unk_20CD649A0;
    a3 = v37;

    return MEMORY[0x282160B38](a1, a2, a3, a4);
  }

  while (1)
  {
    v33 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    v32 = *(v4 + 152);
    if (v33 >= (((1 << *(v4 + 224)) + 63) >> 6))
    {
      break;
    }

    v31 = *(v32 + 8 * v33 + 56);
    ++v29;
    if (v31)
    {
      v29 = v33;
      goto LABEL_11;
    }
  }

  v40 = *(v4 + 152);

  v42 = *(v4 + 112);
  v41 = *(v4 + 120);
  v44 = *(v4 + 96);
  v43 = *(v4 + 104);
  v45 = *(v4 + 88);
  v46 = *(v4 + 64);
  v47 = *(v4 + 40);

  v48 = *(v4 + 8);

  return v48();
}

uint64_t sub_20CD2EA3C()
{
  v1 = v0[19];
  v2 = v0[13];

  sub_20CD1DA10(v2, &qword_27C810D08, &qword_20CD64280);
  v3 = v0[27];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];
  v9 = v0[8];
  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

uint64_t sub_20CD2EB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_20CCEE040;

  return sub_20CD2EBDC(a1, a3, a4, 1, 1);
}

uint64_t sub_20CD2EBDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 689) = a5;
  *(v6 + 688) = a4;
  *(v6 + 64) = a3;
  *(v6 + 72) = v5;
  *(v6 + 48) = a1;
  *(v6 + 56) = a2;
  v7 = type metadata accessor for SnapshotProcessor();
  *(v6 + 80) = v7;
  v8 = *(v7 - 8);
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 + 64);
  *(v6 + 104) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0) - 8) + 64) + 15;
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  v10 = sub_20CD62514();
  *(v6 + 128) = v10;
  v11 = *(v10 - 8);
  *(v6 + 136) = v11;
  *(v6 + 144) = *(v11 + 64);
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();
  v12 = sub_20CD62C54();
  *(v6 + 184) = v12;
  v13 = *(v12 - 8);
  *(v6 + 192) = v13;
  *(v6 + 200) = *(v13 + 64);
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();
  v14 = sub_20CD626F4();
  *(v6 + 248) = v14;
  v15 = *(v14 - 8);
  *(v6 + 256) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  v17 = sub_20CD62AB4();
  *(v6 + 280) = v17;
  v18 = *(v17 - 8);
  *(v6 + 288) = v18;
  *(v6 + 296) = *(v18 + 64);
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  v19 = sub_20CD62654();
  *(v6 + 352) = v19;
  v20 = *(v19 - 8);
  *(v6 + 360) = v20;
  *(v6 + 368) = *(v20 + 64);
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  *(v6 + 488) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD2F024, 0, 0);
}

uint64_t sub_20CD2F024()
{
  v67 = v0;
  v1 = v0[60];
  v2 = v0[43];
  v3 = v0[34];
  v4 = v0[7];
  sub_20CD62BF4();
  sub_20CD626C4();
  sub_20CD62A84();
  v5 = v0[60];
  v6 = v0[61];
  v7 = v0[45];
  v8 = v0[43];
  v9 = v0[35];
  v10 = v0[36];
  v11 = v0[33];
  v58 = v0[44];
  v60 = v0[8];
  v61 = *(v0[32] + 8);
  v62 = v0[58];
  v61(v0[34], v0[31]);
  v12 = *(v10 + 8);
  v0[62] = v12;
  v0[63] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v9);
  sub_20CD62594();
  v13 = *(v7 + 8);
  v0[64] = v13;
  v0[65] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v5, v58);
  sub_20CD626C4();
  sub_20CD62A84();
  v15 = v0[58];
  v14 = v0[59];
  v61(v0[33], v0[31]);
  sub_20CD62614();
  v59 = v12;
  v13(v0[58], v0[44]);
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v63 = v0[59];
  v16 = v0[57];
  v17 = v0[44];
  v18 = v0[45];
  v19 = v0[30];
  v21 = v0[23];
  v20 = v0[24];
  v22 = v0[7];
  v23 = sub_20CD631B4();
  v0[66] = __swift_project_value_buffer(v23, qword_28110F878);
  v24 = *(v20 + 16);
  v0[67] = v24;
  v0[68] = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24(v19, v22, v21);
  v25 = *(v18 + 16);
  v0[69] = v25;
  v0[70] = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v25(v16, v63, v17);
  v26 = sub_20CD63194();
  v27 = sub_20CD633D4();
  v64 = v26;
  v28 = os_log_type_enabled(v26, v27);
  v29 = v0[57];
  v30 = v0[44];
  if (v28)
  {
    v57 = v27;
    v31 = v0[42];
    v32 = v0[35];
    v33 = v0[30];
    v34 = v0[24];
    v54 = v0[23];
    v55 = v0[57];
    v35 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v66[0] = v56;
    *v35 = 136315394;
    sub_20CD62BF4();
    sub_20CD42728(&qword_28110F760, MEMORY[0x277D09F70]);
    v36 = sub_20CD63574();
    v38 = v37;
    v59(v31, v32);
    (*(v34 + 8))(v33, v54);
    v39 = sub_20CD6153C(v36, v38, v66);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2080;
    sub_20CD42728(&qword_28110F7E8, MEMORY[0x277CC9578]);
    v40 = sub_20CD63574();
    v42 = v41;
    v13(v55, v30);
    v43 = sub_20CD6153C(v40, v42, v66);

    *(v35 + 14) = v43;
    _os_log_impl(&dword_20CCEA000, v64, v57, "Processing snapshots from cacheIndex=(%s) to date=(%s)", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v56, -1, -1);
    MEMORY[0x20F3115B0](v35, -1, -1);
  }

  else
  {
    v44 = v0[30];
    v46 = v0[23];
    v45 = v0[24];

    v13(v29, v30);
    (*(v45 + 8))(v44, v46);
  }

  v47 = (v0[9] + *(v0[10] + 28));
  v48 = v47[3];
  v49 = v47[4];
  __swift_project_boxed_opaque_existential_1(v47, v48);
  v50 = *(v49 + 24);
  v65 = (v50 + *v50);
  v51 = v50[1];
  v52 = swift_task_alloc();
  v0[71] = v52;
  *v52 = v0;
  v52[1] = sub_20CD2F82C;

  return v65(v48, v49);
}

uint64_t sub_20CD2F82C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 568);
  v7 = *v2;
  *(v3 + 576) = a1;
  *(v3 + 584) = v1;

  if (v1)
  {
    v5 = sub_20CD31750;
  }

  else
  {
    v5 = sub_20CD2F944;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CD2F944()
{
  v1 = v0[22];
  v2 = (v0[9] + *(v0[10] + 24));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  sub_20CD62504();
  v5 = *(MEMORY[0x277D0A6B0] + 4);
  v6 = swift_task_alloc();
  v0[74] = v6;
  *v6 = v0;
  v6[1] = sub_20CD2FA18;
  v7 = v0[22];

  return MEMORY[0x282161280](v7, v3, v4);
}

uint64_t sub_20CD2FA18(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 592);
  v12 = *v2;
  v3[75] = a1;
  v3[76] = v1;

  if (v1)
  {
    v5 = v3[72];
    (*(v3[17] + 8))(v3[22], v3[16]);

    v6 = sub_20CD31990;
  }

  else
  {
    v7 = v3[22];
    v8 = v3[16];
    v9 = v3[17];
    v10 = *(v9 + 8);
    v3[77] = v10;
    v3[78] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v7, v8);
    v6 = sub_20CD2FB7C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20CD2FB7C()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 488);
  v3 = *(v0 + 72);
  sub_20CD32308(*(v0 + 472), 7, *(v0 + 168));
  if (v1)
  {
    v4 = *(v0 + 600);
    v5 = *(v0 + 576);
    v6 = *(v0 + 520);
    v7 = *(v0 + 512);
    v8 = *(v0 + 488);
    v9 = *(v0 + 472);
    v10 = *(v0 + 352);

    v7(v9, v10);
    v7(v8, v10);
    v12 = *(v0 + 480);
    v11 = *(v0 + 488);
    v14 = *(v0 + 464);
    v13 = *(v0 + 472);
    v16 = *(v0 + 448);
    v15 = *(v0 + 456);
    v17 = *(v0 + 432);
    v18 = *(v0 + 440);
    v19 = *(v0 + 416);
    v20 = *(v0 + 424);
    v63 = *(v0 + 408);
    v65 = *(v0 + 400);
    v67 = *(v0 + 392);
    v69 = *(v0 + 384);
    v71 = *(v0 + 376);
    v73 = *(v0 + 344);
    v74 = *(v0 + 336);
    v76 = *(v0 + 328);
    v78 = *(v0 + 320);
    v80 = *(v0 + 312);
    v82 = *(v0 + 304);
    v84 = *(v0 + 272);
    v86 = *(v0 + 264);
    v89 = *(v0 + 240);
    v91 = *(v0 + 232);
    v93 = *(v0 + 224);
    v95 = *(v0 + 216);
    v97 = *(v0 + 208);
    v99 = *(v0 + 176);
    v101 = *(v0 + 168);
    v103 = *(v0 + 160);
    v105 = *(v0 + 152);
    v107 = *(v0 + 120);
    v109 = *(v0 + 112);
    v111 = *(v0 + 104);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v23 = *(v0 + 544);
    (*(v0 + 536))(*(v0 + 232), *(v0 + 56), *(v0 + 184));
    v100 = *(v0 + 576);
    v102 = *(v0 + 600);
    v66 = *(v0 + 552);
    v68 = *(v0 + 560);
    v61 = *(v0 + 536);
    v62 = *(v0 + 544);
    v64 = *(v0 + 472);
    v108 = *(v0 + 448);
    v87 = *(v0 + 368);
    v106 = *(v0 + 352);
    v112 = *(v0 + 336);
    v113 = *(v0 + 360);
    v85 = *(v0 + 296);
    v104 = *(v0 + 288);
    v110 = *(v0 + 280);
    v24 = *(v0 + 224);
    v58 = *(v0 + 232);
    v25 = *(v0 + 192);
    v79 = *(v0 + 200);
    v81 = v24;
    v26 = *(v0 + 184);
    v27 = *(v0 + 160);
    v56 = *(v0 + 168);
    v75 = v27;
    v77 = v26;
    v28 = *(v0 + 136);
    v29 = *(v0 + 120);
    v30 = *(v0 + 128);
    v72 = *(v0 + 144);
    v92 = v29;
    v31 = *(v0 + 104);
    v98 = *(v0 + 112);
    v70 = v31;
    v59 = *(v0 + 88);
    v60 = *(v0 + 96);
    v96 = *(v0 + 689);
    v94 = *(v0 + 688);
    v32 = *(v0 + 72);
    v57 = *(v0 + 64);
    v90 = sub_20CD63374();
    v83 = *(v90 - 8);
    (*(v83 + 56))(v29, 1, 1, v90);
    sub_20CD41E6C(v32, v31);
    (*(v28 + 16))(v27, v56, v30);
    v61(v24, v58, v26);
    v66(v108, v64, v106);
    (*(v104 + 16))(v112, v57, v110);
    v33 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v34 = (v60 + *(v28 + 80) + v33) & ~*(v28 + 80);
    v35 = (v72 + *(v25 + 80) + v34) & ~*(v25 + 80);
    v36 = (v79 + *(v113 + 80) + v35) & ~*(v113 + 80);
    v88 = (v87 + *(v104 + 80) + v36) & ~*(v104 + 80);
    v37 = (v85 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    sub_20CD41ED0(v70, v38 + v33);
    v39 = *(v28 + 32);
    *(v0 + 632) = v39;
    *(v0 + 640) = (v28 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v39(v38 + v34, v75, v30);
    v40 = *(v25 + 32);
    *(v0 + 648) = v40;
    *(v0 + 656) = (v25 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v40(v38 + v35, v81, v77);
    (*(v113 + 32))(v38 + v36, v108, v106);
    (*(v104 + 32))(v38 + v88, v112, v110);
    *(v38 + v37) = v100;
    v41 = v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v41 = v102;
    *(v41 + 8) = v96;
    *(v41 + 9) = v94;
    sub_20CD1D9A8(v92, v98, &qword_27C811360, &qword_20CD653E0);
    LODWORD(v37) = (*(v83 + 48))(v98, 1, v90);

    v42 = *(v0 + 112);
    if (v37 == 1)
    {
      sub_20CD1DA10(*(v0 + 112), &qword_27C811360, &qword_20CD653E0);
    }

    else
    {
      sub_20CD63364();
      (*(v83 + 8))(v42, v90);
    }

    v44 = *(v38 + 16);
    v43 = *(v38 + 24);
    swift_unknownObjectRetain();

    if (v44)
    {
      swift_getObjectType();
      v45 = sub_20CD63314();
      v47 = v46;
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0;
      v47 = 0;
    }

    sub_20CD1DA10(*(v0 + 120), &qword_27C811360, &qword_20CD653E0);
    if (v47 | v45)
    {
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v45;
      *(v0 + 40) = v47;
    }

    v48 = *(v0 + 184);
    v49 = swift_task_create();
    *(v0 + 664) = v49;
    v50 = *(MEMORY[0x277D857C8] + 4);
    v51 = swift_task_alloc();
    *(v0 + 672) = v51;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C18, &qword_20CD640B0);
    *v51 = v0;
    v51[1] = sub_20CD302F8;
    v53 = *(v0 + 216);
    v54 = *(v0 + 184);
    v55 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v53, v49, v54, v52, v55);
  }
}

uint64_t sub_20CD302F8()
{
  v2 = *v1;
  v3 = *(*v1 + 672);
  v8 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    v4 = *(v2 + 600);
    v5 = *(v2 + 576);

    v6 = sub_20CD31BD0;
  }

  else
  {
    v6 = sub_20CD30420;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20CD30420()
{
  v262 = v0;
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 440);
  v4 = *(v0 + 320);
  v251 = *(v0 + 328);
  v256 = *(v0 + 680);
  v5 = *(v0 + 232);
  v6 = *(v0 + 216);
  v7 = *(v0 + 184);
  v8 = *(v0 + 168);
  v247 = *(*(v0 + 192) + 8);
  v247(v5, v7);
  v2(v5, v6, v7);
  sub_20CD624C4();
  sub_20CD62564();
  sub_20CD62A24();
  if (v256)
  {
    v9 = *(v0 + 664);
    v252 = *(v0 + 624);
    v234 = *(v0 + 616);
    v10 = *(v0 + 600);
    v11 = *(v0 + 576);
    v12 = *(v0 + 520);
    v13 = *(v0 + 512);
    v210 = *(v0 + 504);
    v193 = *(v0 + 496);
    v240 = *(v0 + 488);
    v228 = *(v0 + 472);
    v14 = *(v0 + 440);
    v15 = *(v0 + 352);
    v16 = *(v0 + 320);
    v17 = *(v0 + 280);
    v204 = *(v0 + 232);
    v199 = *(v0 + 184);
    v216 = *(v0 + 128);
    v222 = *(v0 + 168);

    v193(v16, v17);
    v13(v14, v15);
    v247(v204, v199);
    v234(v222, v216);
    v13(v228, v15);
    v13(v240, v15);
    v23 = *(v0 + 480);
    v22 = *(v0 + 488);
    v25 = *(v0 + 464);
    v24 = *(v0 + 472);
    v27 = *(v0 + 448);
    v26 = *(v0 + 456);
    v29 = *(v0 + 432);
    v28 = *(v0 + 440);
    v31 = *(v0 + 416);
    v30 = *(v0 + 424);
    v145 = *(v0 + 408);
    v148 = *(v0 + 400);
    v150 = *(v0 + 392);
    v153 = *(v0 + 384);
    v156 = *(v0 + 376);
    v159 = *(v0 + 344);
    v162 = *(v0 + 336);
    v165 = *(v0 + 328);
    v168 = *(v0 + 320);
    v171 = *(v0 + 312);
    v175 = *(v0 + 304);
    v179 = *(v0 + 272);
    v183 = *(v0 + 264);
    v188 = *(v0 + 240);
    v194 = *(v0 + 232);
    v200 = *(v0 + 224);
    v205 = *(v0 + 216);
    v211 = *(v0 + 208);
    v217 = *(v0 + 176);
    v223 = *(v0 + 168);
    v229 = *(v0 + 160);
    v235 = *(v0 + 152);
    v241 = *(v0 + 120);
    v248 = *(v0 + 112);
    v253 = *(v0 + 104);

    v32 = *(v0 + 8);
LABEL_4:

    return v32();
  }

  v18 = *(v0 + 504);
  v19 = *(v0 + 424);
  v20 = *(v0 + 328);
  v21 = *(v0 + 72);
  (*(v0 + 496))(*(v0 + 320), *(v0 + 280));
  sub_20CD62A84();
  v34 = *(v0 + 520);
  v35 = *(v0 + 504);
  v36 = *(v0 + 512);
  v38 = *(v0 + 424);
  v37 = *(v0 + 432);
  v39 = *(v0 + 352);
  v41 = *(v0 + 304);
  v40 = *(v0 + 312);
  (*(v0 + 496))(*(v0 + 328), *(v0 + 280));
  sub_20CD62594();
  v36(v38, v39);
  sub_20CD62564();
  sub_20CD62A74();
  v42 = *(v0 + 504);
  v43 = *(v0 + 408);
  v44 = *(v0 + 312);
  v45 = *(v0 + 72);
  (*(v0 + 496))(*(v0 + 304), *(v0 + 280));
  sub_20CD62A84();
  v46 = *(v0 + 504);
  v48 = *(v0 + 408);
  v47 = *(v0 + 416);
  (*(v0 + 496))(*(v0 + 312), *(v0 + 280));
  sub_20CD62614();
  v49 = *(v0 + 664);
  v236 = *(v0 + 632);
  v242 = *(v0 + 640);
  v224 = *(v0 + 616);
  v230 = *(v0 + 624);
  v172 = *(v0 + 560);
  v50 = *(v0 + 552);
  v51 = *(v0 + 520);
  v52 = *(v0 + 512);
  v53 = *(v0 + 472);
  v189 = *(v0 + 448);
  v218 = *(v0 + 440);
  v257 = *(v0 + 432);
  v54 = *(v0 + 416);
  v55 = *(v0 + 400);
  v176 = *(v0 + 392);
  v184 = *(v0 + 384);
  v56 = *(v0 + 352);
  v212 = *(v0 + 168);
  v195 = *(v0 + 152);
  v206 = *(v0 + 128);
  v52(*(v0 + 408), v56);
  sub_20CD42728(&qword_28110F7F0, MEMORY[0x277CC9578]);
  if (sub_20CD63204())
  {
    v57 = v53;
  }

  else
  {
    v57 = v54;
  }

  v50(v55, v57, v56);
  if (sub_20CD63204())
  {
    v58 = v55;
  }

  else
  {
    v58 = v257;
  }

  v50(v176, v58, v56);
  v50(v189, v176, v56);
  v50(v184, v55, v56);
  sub_20CD624D4();

  v52(v176, v56);
  v52(v55, v56);
  v52(v54, v56);
  v52(v257, v56);
  v52(v218, v56);
  v224(v212, v206);
  v236(v212, v195, v206);
  sub_20CD624E4();
  sub_20CD624C4();
  v59 = sub_20CD62624();
  v52(v184, v56);
  v52(v189, v56);
  v258 = *(v0 + 576);
  v60 = *(v0 + 560);
  v61 = *(v0 + 552);
  v237 = *(v0 + 536);
  v243 = *(v0 + 544);
  if ((v59 & 1) == 0)
  {
    v81 = *(v0 + 528);
    v82 = *(v0 + 472);
    v83 = *(v0 + 376);
    v84 = *(v0 + 352);
    v85 = *(v0 + 208);
    v86 = *(v0 + 184);
    v87 = *(v0 + 56);

    v237(v85, v87, v86);
    v61(v83, v82, v84);
    v88 = sub_20CD63194();
    v89 = sub_20CD633D4();
    v232 = v88;
    v90 = os_log_type_enabled(v88, v89);
    v238 = *(v0 + 616);
    v245 = *(v0 + 624);
    v259 = *(v0 + 520);
    v91 = *(v0 + 512);
    if (v90)
    {
      v186 = *(v0 + 496);
      v191 = *(v0 + 504);
      v220 = *(v0 + 472);
      v226 = *(v0 + 488);
      v197 = *(v0 + 376);
      v202 = *(v0 + 352);
      v92 = *(v0 + 336);
      v93 = *(v0 + 280);
      v94 = *(v0 + 208);
      v181 = *(v0 + 184);
      v208 = *(v0 + 128);
      v214 = *(v0 + 168);
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v261[0] = v96;
      *v95 = 136315394;
      sub_20CD62BF4();
      sub_20CD42728(&qword_28110F760, MEMORY[0x277D09F70]);
      v97 = sub_20CD63574();
      v99 = v98;
      v186(v92, v93);
      v247(v94, v181);
      v100 = sub_20CD6153C(v97, v99, v261);

      *(v95 + 4) = v100;
      *(v95 + 12) = 2080;
      sub_20CD42728(&qword_28110F7E8, MEMORY[0x277CC9578]);
      v101 = sub_20CD63574();
      v103 = v102;
      v91(v197, v202);
      v104 = sub_20CD6153C(v101, v103, v261);

      *(v95 + 14) = v104;
      _os_log_impl(&dword_20CCEA000, v232, v89, "Done processing snapshots from %s to %s", v95, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F3115B0](v96, -1, -1);
      MEMORY[0x20F3115B0](v95, -1, -1);

      v238(v214, v208);
      v91(v220, v202);
      v91(v226, v202);
    }

    else
    {
      v110 = *(v0 + 488);
      v111 = *(v0 + 472);
      v112 = *(v0 + 376);
      v113 = *(v0 + 352);
      v114 = *(v0 + 208);
      v115 = *(v0 + 184);
      v116 = *(v0 + 168);
      v117 = *(v0 + 128);

      v91(v112, v113);
      v247(v114, v115);
      v238(v116, v117);
      v91(v111, v113);
      v91(v110, v113);
    }

    v118 = *(v0 + 656);
    v119 = *(v0 + 480);
    v120 = *(v0 + 488);
    v121 = *(v0 + 464);
    v122 = *(v0 + 472);
    v123 = *(v0 + 448);
    v124 = *(v0 + 456);
    v141 = *(v0 + 440);
    v142 = *(v0 + 432);
    v144 = *(v0 + 424);
    v147 = *(v0 + 416);
    v149 = *(v0 + 408);
    v152 = *(v0 + 400);
    v155 = *(v0 + 392);
    v158 = *(v0 + 384);
    v161 = *(v0 + 376);
    v164 = *(v0 + 344);
    v167 = *(v0 + 336);
    v170 = *(v0 + 328);
    v182 = *(v0 + 312);
    v187 = *(v0 + 304);
    v192 = *(v0 + 272);
    v198 = *(v0 + 264);
    v203 = *(v0 + 240);
    v174 = *(v0 + 320);
    v178 = *(v0 + 232);
    v209 = *(v0 + 224);
    v215 = *(v0 + 216);
    v125 = *(v0 + 184);
    v126 = *(v0 + 192);
    v221 = *(v0 + 208);
    v227 = *(v0 + 176);
    v233 = *(v0 + 168);
    v239 = *(v0 + 160);
    v246 = *(v0 + 152);
    v250 = *(v0 + 120);
    v255 = *(v0 + 112);
    v260 = *(v0 + 104);
    v127 = *(v0 + 48);
    (*(v0 + 648))(v127);
    (*(v126 + 56))(v127, 0, 1, v125);

    v32 = *(v0 + 8);
    goto LABEL_4;
  }

  v146 = *(v0 + 472);
  v225 = *(v0 + 448);
  v177 = *(v0 + 368);
  v219 = *(v0 + 352);
  v249 = *(v0 + 336);
  v254 = *(v0 + 360);
  v173 = *(v0 + 296);
  v213 = *(v0 + 288);
  v231 = *(v0 + 280);
  v62 = *(v0 + 224);
  v139 = *(v0 + 232);
  v166 = *(v0 + 200);
  v169 = v62;
  v64 = *(v0 + 184);
  v63 = *(v0 + 192);
  v65 = *(v0 + 160);
  v136 = *(v0 + 168);
  v157 = v65;
  v160 = v64;
  v66 = *(v0 + 136);
  v67 = *(v0 + 120);
  v68 = *(v0 + 128);
  v151 = *(v0 + 144);
  v154 = v68;
  v185 = v67;
  v207 = *(v0 + 112);
  v138 = *(v0 + 552);
  v69 = *(v0 + 104);
  v143 = *(v0 + 96);
  v140 = *(v0 + 88);
  v201 = *(v0 + 689);
  v196 = *(v0 + 688);
  v70 = *(v0 + 72);
  v137 = *(v0 + 64);
  v190 = *(v0 + 600);
  v180 = sub_20CD63374();
  v163 = *(v180 - 8);
  (*(v163 + 56))(v67, 1, 1, v180);
  sub_20CD41E6C(v70, v69);
  (*(v66 + 16))(v65, v136, v68);
  v237(v62, v139, v64);
  v138(v225, v146, v219);
  (*(v213 + 16))(v249, v137, v231);
  v71 = (*(v140 + 80) + 32) & ~*(v140 + 80);
  v72 = (v143 + *(v66 + 80) + v71) & ~*(v66 + 80);
  v73 = (v151 + *(v63 + 80) + v72) & ~*(v63 + 80);
  v74 = (v166 + *(v254 + 80) + v73) & ~*(v254 + 80);
  v244 = (v177 + *(v213 + 80) + v74) & ~*(v213 + 80);
  v75 = (v173 + v244 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  *(v76 + 16) = 0;
  *(v76 + 24) = 0;
  sub_20CD41ED0(v69, v76 + v71);
  v77 = *(v66 + 32);
  *(v0 + 632) = v77;
  *(v0 + 640) = (v66 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v77(v76 + v72, v157, v154);
  v78 = *(v63 + 32);
  *(v0 + 648) = v78;
  *(v0 + 656) = (v63 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v78(v76 + v73, v169, v160);
  (*(v254 + 32))(v76 + v74, v225, v219);
  (*(v213 + 32))(v76 + v244, v249, v231);
  *(v76 + v75) = v258;
  v79 = v76 + ((v75 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v79 = v190;
  *(v79 + 8) = v201;
  *(v79 + 9) = v196;
  sub_20CD1D9A8(v185, v207, &qword_27C811360, &qword_20CD653E0);
  LODWORD(v66) = (*(v163 + 48))(v207, 1, v180);

  v80 = *(v0 + 112);
  if (v66 == 1)
  {
    sub_20CD1DA10(*(v0 + 112), &qword_27C811360, &qword_20CD653E0);
  }

  else
  {
    sub_20CD63364();
    (*(v163 + 8))(v80, v180);
  }

  v106 = *(v76 + 16);
  v105 = *(v76 + 24);
  swift_unknownObjectRetain();

  if (v106)
  {
    swift_getObjectType();
    v107 = sub_20CD63314();
    v109 = v108;
    swift_unknownObjectRelease();
  }

  else
  {
    v107 = 0;
    v109 = 0;
  }

  sub_20CD1DA10(*(v0 + 120), &qword_27C811360, &qword_20CD653E0);
  if (v109 | v107)
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v107;
    *(v0 + 40) = v109;
  }

  v128 = *(v0 + 184);
  v129 = swift_task_create();
  *(v0 + 664) = v129;
  v130 = *(MEMORY[0x277D857C8] + 4);
  v131 = swift_task_alloc();
  *(v0 + 672) = v131;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C18, &qword_20CD640B0);
  *v131 = v0;
  v131[1] = sub_20CD302F8;
  v133 = *(v0 + 216);
  v134 = *(v0 + 184);
  v135 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v133, v129, v134, v132, v135);
}

uint64_t sub_20CD31750()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[61];
  v4 = v0[44];
  v2(v0[59], v4);
  v2(v3, v4);
  v42 = v0[73];
  v6 = v0[60];
  v5 = v0[61];
  v8 = v0[58];
  v7 = v0[59];
  v10 = v0[56];
  v9 = v0[57];
  v12 = v0[54];
  v11 = v0[55];
  v14 = v0[52];
  v13 = v0[53];
  v17 = v0[51];
  v18 = v0[50];
  v19 = v0[49];
  v20 = v0[48];
  v21 = v0[47];
  v22 = v0[43];
  v23 = v0[42];
  v24 = v0[41];
  v25 = v0[40];
  v26 = v0[39];
  v27 = v0[38];
  v28 = v0[34];
  v29 = v0[33];
  v30 = v0[30];
  v31 = v0[29];
  v32 = v0[28];
  v33 = v0[27];
  v34 = v0[26];
  v35 = v0[22];
  v36 = v0[21];
  v37 = v0[20];
  v38 = v0[19];
  v39 = v0[15];
  v40 = v0[14];
  v41 = v0[13];

  v15 = v0[1];

  return v15();
}

uint64_t sub_20CD31990()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[61];
  v4 = v0[44];
  v2(v0[59], v4);
  v2(v3, v4);
  v42 = v0[76];
  v6 = v0[60];
  v5 = v0[61];
  v8 = v0[58];
  v7 = v0[59];
  v10 = v0[56];
  v9 = v0[57];
  v12 = v0[54];
  v11 = v0[55];
  v14 = v0[52];
  v13 = v0[53];
  v17 = v0[51];
  v18 = v0[50];
  v19 = v0[49];
  v20 = v0[48];
  v21 = v0[47];
  v22 = v0[43];
  v23 = v0[42];
  v24 = v0[41];
  v25 = v0[40];
  v26 = v0[39];
  v27 = v0[38];
  v28 = v0[34];
  v29 = v0[33];
  v30 = v0[30];
  v31 = v0[29];
  v32 = v0[28];
  v33 = v0[27];
  v34 = v0[26];
  v35 = v0[22];
  v36 = v0[21];
  v37 = v0[20];
  v38 = v0[19];
  v39 = v0[15];
  v40 = v0[14];
  v41 = v0[13];

  v15 = v0[1];

  return v15();
}

uint64_t sub_20CD31BD0()
{
  v1 = v0[83];
  v46 = v0[77];
  v48 = v0[78];
  v2 = v0[65];
  v3 = v0[64];
  v50 = v0[61];
  v4 = v0[59];
  v5 = v0[44];
  v6 = v0[29];
  v7 = v0[23];
  v8 = v0[24];
  v9 = v0[21];
  v10 = v0[16];

  (*(v8 + 8))(v6, v7);
  v46(v9, v10);
  v3(v4, v5);
  v3(v50, v5);
  v51 = v0[85];
  v12 = v0[60];
  v11 = v0[61];
  v14 = v0[58];
  v13 = v0[59];
  v16 = v0[56];
  v15 = v0[57];
  v18 = v0[54];
  v17 = v0[55];
  v20 = v0[52];
  v19 = v0[53];
  v23 = v0[51];
  v24 = v0[50];
  v25 = v0[49];
  v26 = v0[48];
  v27 = v0[47];
  v28 = v0[43];
  v29 = v0[42];
  v30 = v0[41];
  v31 = v0[40];
  v32 = v0[39];
  v33 = v0[38];
  v34 = v0[34];
  v35 = v0[33];
  v36 = v0[30];
  v37 = v0[29];
  v38 = v0[28];
  v39 = v0[27];
  v40 = v0[26];
  v41 = v0[22];
  v42 = v0[21];
  v43 = v0[20];
  v44 = v0[19];
  v45 = v0[15];
  v47 = v0[14];
  v49 = v0[13];

  v21 = v0[1];

  return v21();
}

uint64_t sub_20CD31E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_20CD62AB4();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_20CD62C54();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD31F84, 0, 0);
}

uint64_t sub_20CD31F84()
{
  v1 = v0[7];
  v2 = v0[4];
  sub_20CD62A34();
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  sub_20CD62C44();
  (*(v5 + 8))(v4, v6);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280) + 36);
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_20CD320E0;
  v10 = v0[10];
  v11 = v0[2];
  v12 = v0[3];

  return sub_20CD2EBDC(v11, v10, v7 + v8, 1, 1);
}

uint64_t sub_20CD320E0()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *v1;
  v6[12] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CD32298, 0, 0);
  }

  else
  {
    v7 = v6[10];
    v8 = v6[7];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_20CD32298()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_20CD32308@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v73 = a2;
  v70 = a1;
  v71 = a3;
  v81 = sub_20CD62AB4();
  v80 = *(v81 - 8);
  v3 = *(v80 + 64);
  v4 = MEMORY[0x28223BE20](v81);
  v72 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v74 = &v64 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v64 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = (&v64 - v11);
  v78 = sub_20CD62654();
  v75 = *(v78 - 8);
  v13 = v75[8];
  v14 = MEMORY[0x28223BE20](v78);
  v69 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v64 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v64 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v64 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v64 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v64 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v76 = &v64 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v64 - v33;
  sub_20CD62564();
  v77 = v12;
  v35 = v79;
  sub_20CD62A24();
  if (v35)
  {
    return (*(v80 + 8))(v10, v81);
  }

  v79 = v27;
  v66 = v18;
  v67 = v30;
  v64 = v24;
  v65 = v21;
  v68 = v34;
  v37 = v78;
  v38 = *(v80 + 8);
  v39 = v81;
  v38(v10, v81);
  v41 = v76;
  v40 = v77;
  sub_20CD62A84();
  v77 = v38;
  v38(v40, v39);
  v42 = v68;
  v80 = 0;
  sub_20CD62594();
  v43 = (v75 + 1);
  v44 = v75[1];
  v44(v41, v37);
  v45 = v72;
  sub_20CD62564();
  v46 = v74;
  v47 = v80;
  sub_20CD62A74();
  if (v47)
  {
    v77(v45, v39);
    return (v44)(v42, v37);
  }

  else
  {
    v76 = v43;
    v48 = v77;
    v77(v45, v39);
    v49 = v79;
    sub_20CD62A84();
    v48(v46, v39);
    v50 = v67;
    sub_20CD62614();
    v51 = v78;
    v80 = 0;
    v44(v49, v78);
    sub_20CD42728(&qword_28110F7F0, MEMORY[0x277CC9578]);
    v52 = v70;
    v53 = sub_20CD63204();
    v54 = v75[2];
    if (v53)
    {
      v55 = v64;
      v56 = v64;
      v57 = v52;
    }

    else
    {
      v58 = v50;
      v55 = v64;
      v56 = v64;
      v57 = v58;
    }

    v54(v56, v57, v51);
    v59 = v51;
    v60 = v68;
    if (sub_20CD63204())
    {
      v61 = v55;
    }

    else
    {
      v61 = v60;
    }

    v62 = v55;
    v63 = v65;
    v54(v65, v61, v59);
    v54(v66, v63, v59);
    v54(v69, v62, v59);
    sub_20CD624D4();
    v44(v63, v59);
    v44(v62, v59);
    v44(v67, v59);
    return (v44)(v68, v59);
  }
}

uint64_t sub_20CD32944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v14 = swift_task_alloc();
  *(v9 + 16) = v14;
  *v14 = v9;
  v14[1] = sub_20CCED908;

  return sub_20CD32A44(a1, a5, a6, a7, a8, v18, v19, a9);
}

uint64_t sub_20CD32A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 144) = a7;
  *(v9 + 152) = v8;
  *(v9 + 705) = v37;
  *(v9 + 704) = a8;
  *(v9 + 128) = a4;
  *(v9 + 136) = a6;
  *(v9 + 112) = a2;
  *(v9 + 120) = a3;
  *(v9 + 104) = a1;
  v10 = sub_20CD62C54();
  *(v9 + 160) = v10;
  v11 = *(v10 - 8);
  *(v9 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 176) = swift_task_alloc();
  v13 = sub_20CD62FD4();
  *(v9 + 184) = v13;
  v14 = *(v13 - 8);
  *(v9 + 192) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 200) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F20, &qword_20CD64960) - 8) + 64) + 15;
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  v17 = sub_20CD62654();
  *(v9 + 224) = v17;
  v18 = *(v17 - 8);
  *(v9 + 232) = v18;
  v19 = *(v18 + 64) + 15;
  *(v9 + 240) = swift_task_alloc();
  v20 = sub_20CD62AB4();
  *(v9 + 248) = v20;
  v21 = *(v20 - 8);
  *(v9 + 256) = v21;
  v22 = *(v21 + 64) + 15;
  *(v9 + 264) = swift_task_alloc();
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = swift_task_alloc();
  *(v9 + 296) = swift_task_alloc();
  *(v9 + 304) = swift_task_alloc();
  *(v9 + 312) = swift_task_alloc();
  *(v9 + 320) = swift_task_alloc();
  *(v9 + 328) = swift_task_alloc();
  *(v9 + 336) = swift_task_alloc();
  *(v9 + 344) = swift_task_alloc();
  *(v9 + 352) = swift_task_alloc();
  *(v9 + 360) = swift_task_alloc();
  *(v9 + 368) = swift_task_alloc();
  *(v9 + 376) = swift_task_alloc();
  v23 = sub_20CD629A4();
  *(v9 + 384) = v23;
  v24 = *(v23 - 8);
  *(v9 + 392) = v24;
  v25 = *(v24 + 64) + 15;
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  v26 = sub_20CD62F24();
  *(v9 + 424) = v26;
  v27 = *(v26 - 8);
  *(v9 + 432) = v27;
  v28 = *(v27 + 64) + 15;
  *(v9 + 440) = swift_task_alloc();
  *(v9 + 448) = swift_task_alloc();
  *(v9 + 456) = swift_task_alloc();
  v29 = sub_20CD62E74();
  *(v9 + 464) = v29;
  v30 = *(v29 - 8);
  *(v9 + 472) = v30;
  v31 = *(v30 + 64) + 15;
  *(v9 + 480) = swift_task_alloc();
  *(v9 + 488) = swift_task_alloc();
  *(v9 + 496) = swift_task_alloc();
  v32 = sub_20CD62514();
  *(v9 + 504) = v32;
  v33 = *(v32 - 8);
  *(v9 + 512) = v33;
  v34 = *(v33 + 64) + 15;
  *(v9 + 520) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD32ED8, 0, 0);
}

uint64_t sub_20CD32ED8()
{
  v25 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];
  v4 = v0[14];
  v5 = sub_20CD631B4();
  v0[66] = __swift_project_value_buffer(v5, qword_28110F878);
  (*(v3 + 16))(v1, v4, v2);
  v6 = sub_20CD63194();
  v7 = sub_20CD633D4();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[65];
  v10 = v0[63];
  v11 = v0[64];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    sub_20CD42728(&qword_28110F7F8, MEMORY[0x277CC88A8]);
    v14 = sub_20CD63574();
    v16 = v15;
    (*(v11 + 8))(v9, v10);
    v17 = sub_20CD6153C(v14, v16, &v24);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_20CCEA000, v6, v7, "Querying next batch with dateInterval = %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F3115B0](v13, -1, -1);
    MEMORY[0x20F3115B0](v12, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v18 = v0[19];
  v19 = type metadata accessor for SnapshotProcessor();
  v0[67] = v19;
  v20 = *(v19 + 48);
  v21 = swift_task_alloc();
  v0[68] = v21;
  *v21 = v0;
  v21[1] = sub_20CD33168;
  v22 = v0[14];

  return sub_20CD4DBF4(v22, 0);
}

uint64_t sub_20CD33168(uint64_t a1)
{
  v3 = *(*v2 + 544);
  v4 = *v2;
  v4[69] = a1;

  if (v1)
  {
    v5 = v4[65];
    v7 = v4[61];
    v6 = v4[62];
    v8 = v4[60];
    v10 = v4[56];
    v9 = v4[57];
    v11 = v4[55];
    v13 = v4[51];
    v12 = v4[52];
    v22 = v4[50];
    v23 = v4[47];
    v24 = v4[46];
    v25 = v4[45];
    v26 = v4[44];
    v27 = v4[43];
    v28 = v4[42];
    v29 = v4[41];
    v30 = v4[40];
    v31 = v4[39];
    v32 = v4[38];
    v33 = v4[37];
    v34 = v4[36];
    v35 = v4[35];
    v36 = v4[34];
    v37 = v4[33];
    v38 = v4[30];
    v39 = v4[27];
    v40 = v4[26];
    v41 = v4[25];
    v14 = v4[22];

    v15 = v4[1];

    return v15();
  }

  else
  {
    v17 = v4[19];
    v18 = *(v4[67] + 40);
    v19 = swift_task_alloc();
    v4[70] = v19;
    *v19 = v4;
    v19[1] = sub_20CD3347C;
    v20 = v4[18];
    v21 = v4[14];

    return sub_20CD546C8(v21, v20);
  }
}

uint64_t sub_20CD3347C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 560);
  v7 = *v2;
  *(v3 + 568) = a1;
  *(v3 + 576) = v1;

  if (v1)
  {
    v5 = sub_20CD36474;
  }

  else
  {
    v5 = sub_20CD33594;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CD33594()
{
  v1 = v0[19];
  v2 = *(v0[67] + 44);
  v3 = sub_20CD55174(v0[69]);
  v0[73] = v3;
  v4 = swift_task_alloc();
  v0[74] = v4;
  *v4 = v0;
  v4[1] = sub_20CD33658;
  v5 = v0[17];
  v6 = v0[14];

  return sub_20CD51014(v6, v5, v3);
}

uint64_t sub_20CD33658(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 592);
  v6 = *v2;
  *(*v2 + 600) = v1;

  if (v1)
  {
    v7 = sub_20CD36660;
  }

  else
  {
    v8 = *(v4 + 584);

    *(v4 + 608) = a1;
    v7 = sub_20CD33788;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20CD33788()
{
  v267 = v0;
  v1 = *(v0 + 600);
  v2 = *(v0 + 568);
  v223 = *(v0 + 496);
  v229 = *(v0 + 456);
  v252 = *(v0 + 376);
  v3 = *(v0 + 248);
  v241 = *(v0 + 416);
  v248 = *(v0 + 240);
  v4 = *(v0 + 232);
  v261 = *(v0 + 224);
  v211 = *(v0 + 608);
  v217 = *(v0 + 120);
  v235 = *(v0 + 112);
  *(v0 + 80) = *(v0 + 552);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F28, &qword_20CD64968);
  sub_20CD42500(&qword_28110F180, &qword_27C810F28, &qword_20CD64968);
  sub_20CD42728(&qword_28110F780, MEMORY[0x277D09F70]);
  *(v0 + 616) = sub_20CD632B4();

  *(v0 + 88) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F30, &qword_20CD64970);
  sub_20CD42500(&qword_28110F188, &qword_27C810F30, &qword_20CD64970);
  *(v0 + 624) = sub_20CD632B4();

  *(v0 + 96) = v211;
  v199 = (v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F38, &qword_20CD64978);
  sub_20CD42500(&qword_28110F178, &qword_27C810F38, &qword_20CD64978);
  v255 = v1;
  *(v0 + 632) = sub_20CD632B4();

  sub_20CD62C14();
  sub_20CD62C24();
  sub_20CD62C34();
  sub_20CD624E4();
  sub_20CD62564();
  v5 = *(v4 + 8);
  *(v0 + 640) = v5;
  *(v0 + 648) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v248, v261);
  swift_beginAccess();
  while (1)
  {
    v6 = *(v0 + 648);
    v7 = *(v0 + 640);
    v9 = *(v0 + 368);
    v8 = *(v0 + 376);
    v10 = *(v0 + 248);
    v11 = *(v0 + 256);
    v12 = *(v0 + 240);
    v13 = *(v0 + 224);
    v14 = *(v0 + 112);
    sub_20CD624C4();
    sub_20CD62564();
    v7(v12, v13);
    sub_20CD42728(&qword_28110F778, MEMORY[0x277D09F70]);
    LOBYTE(v14) = sub_20CD63224();
    v15 = *(v11 + 8);
    *(v0 + 656) = v15;
    *(v0 + 664) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v9, v10);
    v249 = v15;
    if ((v14 & 1) == 0)
    {
      v126 = *(v0 + 624);
      v127 = *(v0 + 616);
      v128 = *(v0 + 496);
      v130 = *(v0 + 472);
      v129 = *(v0 + 480);
      v176 = *(v0 + 632);
      v131 = *(v0 + 464);
      v177 = *(v0 + 440);
      v178 = *(v0 + 456);
      v132 = *(v0 + 424);
      v133 = *(v0 + 432);
      v183 = *(v0 + 448);
      v184 = *(v0 + 408);
      v134 = *(v0 + 392);
      v179 = *(v0 + 400);
      v180 = *(v0 + 416);
      v135 = *(v0 + 384);
      v182 = *(v0 + 376);
      v185 = *(v0 + 368);
      v187 = *(v0 + 360);
      v189 = *(v0 + 352);
      v191 = *(v0 + 344);
      v193 = *(v0 + 336);
      v195 = *(v0 + 328);
      v197 = *(v0 + 320);
      v200 = *(v0 + 312);
      v202 = *(v0 + 304);
      v205 = *(v0 + 296);
      v209 = *(v0 + 288);
      v214 = *(v0 + 280);
      v220 = *(v0 + 272);
      v225 = *(v0 + 264);
      v181 = *(v0 + 248);
      v231 = *(v0 + 240);
      v237 = *(v0 + 216);
      v244 = *(v0 + 208);
      v257 = *(v0 + 200);
      v264 = *(v0 + 176);
      v175 = *(v0 + 104);

      (*(v130 + 16))(v129, v128, v131);
      (*(v133 + 16))(v177, v178, v132);
      (*(v134 + 16))(v179, v180, v135);
      sub_20CD62C04();
      (*(v134 + 8))(v180, v135);
      (*(v133 + 8))(v178, v132);
      (*(v130 + 8))(v128, v131);
      v249(v182, v181);

      v136 = *(v0 + 8);
      goto LABEL_42;
    }

    v16 = *(v0 + 528);
    v17 = sub_20CD63194();
    v18 = sub_20CD633D4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 376);
      v20 = *(v0 + 248);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v266 = v22;
      *v21 = 136315138;
      sub_20CD42728(&qword_28110F760, MEMORY[0x277D09F70]);
      v23 = sub_20CD63574();
      v25 = sub_20CD6153C(v23, v24, &v266);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_20CCEA000, v17, v18, "Processing %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x20F3115B0](v22, -1, -1);
      MEMORY[0x20F3115B0](v21, -1, -1);
    }

    v26 = *(v0 + 376);
    v27 = *(v0 + 360);
    v28 = *(v0 + 248);
    v29 = *(v0 + 256);
    v30 = *(v29 + 16);
    *(v0 + 672) = v30;
    *(v0 + 680) = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v30(v27, v26, v28);
    v204 = sub_20CD62A44();
    if (v255)
    {
      v137 = *(v0 + 632);
      v138 = *(v0 + 624);
      v139 = *(v0 + 616);
      v258 = *(v0 + 496);
      v140 = *(v0 + 472);
      v141 = *(v0 + 432);
      v226 = *(v0 + 424);
      v232 = *(v0 + 456);
      v142 = *(v0 + 392);
      v215 = *(v0 + 384);
      v221 = *(v0 + 416);
      v238 = *(v0 + 376);
      v245 = *(v0 + 464);
      v143 = *(v0 + 360);
      v144 = *(v0 + 248);

      v15(v143, v144);
      (*(v142 + 8))(v221, v215);
      (*(v141 + 8))(v232, v226);
      (*(v140 + 8))(v258, v245);
      v15(v238, v144);
      goto LABEL_41;
    }

    v31 = *(v0 + 376);
    v32 = *(v0 + 352);
    v33 = *(v0 + 344);
    v34 = *(v0 + 248);
    v35 = *(v0 + 128);
    v15(*(v0 + 360), v34);
    v30(v32, v31, v34);
    sub_20CD62564();
    v230 = sub_20CD62A94();
    v36 = *(v0 + 624);
    v37 = *(v0 + 376);
    v38 = *(v0 + 352);
    v39 = *(v0 + 336);
    v40 = *(v0 + 248);
    v15(*(v0 + 344), v40);
    v41 = (v15)(v38, v40);
    v42 = MEMORY[0x20F311060](v41);
    v43 = v30;
    v44 = v42;
    v262 = v43;
    v43(v39, v37, v40);
    if (!*(v36 + 16) || (v45 = *(v0 + 624), v46 = sub_20CD52DAC(*(v0 + 336)), (v47 & 1) == 0))
    {
      v15(*(v0 + 336), *(v0 + 248));
LABEL_11:
      v51 = 1;
      goto LABEL_12;
    }

    v48 = *(v0 + 336);
    v49 = *(v0 + 248);
    v50 = *(*(*(v0 + 624) + 56) + 8 * v46);

    v15(v48, v49);
    if (!*(v50 + 16))
    {

      goto LABEL_11;
    }

    (*(*(v0 + 192) + 16))(*(v0 + 216), v50 + ((*(*(v0 + 192) + 80) + 32) & ~*(*(v0 + 192) + 80)), *(v0 + 184));

    v51 = 0;
    v52 = *(v0 + 616);
    v53 = *(v0 + 376);
    v54 = *(v0 + 328);
    v55 = *(v0 + 248);
    (*(*(v0 + 192) + 56))(*(v0 + 216), v51, 1, *(v0 + 184));
    v262(v54, v53, v55);
    if (!*(v52 + 16))
    {
      goto LABEL_15;
    }

LABEL_12:
    v56 = *(v0 + 616);
    v57 = sub_20CD52DAC(*(v0 + 328));
    if (v58)
    {
      v242 = *(*(*(v0 + 616) + 56) + 8 * v57);
    }

    else
    {
LABEL_15:
      v242 = MEMORY[0x277D84F90];
    }

    v59 = *(v0 + 632);
    v60 = *(v0 + 376);
    v61 = *(v0 + 320);
    v62 = *(v0 + 248);
    v15(*(v0 + 328), v62);
    v262(v61, v60, v62);
    if (!*(v59 + 16))
    {
      goto LABEL_19;
    }

    v63 = *(v0 + 632);
    v64 = sub_20CD52DAC(*(v0 + 320));
    if (v65)
    {
      v236 = *(*(*(v0 + 632) + 56) + 8 * v64);
    }

    else
    {
LABEL_19:
      v236 = MEMORY[0x277D84F90];
    }

    v66 = *(v0 + 216);
    v67 = *(v0 + 184);
    v68 = *(v0 + 192);
    v15(*(v0 + 320), *(v0 + 248));
    v69 = *(v68 + 48);
    v224 = v44;
    if (v69(v66, 1, v67) != 1 || *(v242 + 16) || (*(v236 + 16) != 0) | (*(v0 + 704) | v204) & 1 || v230 <= 89)
    {
      v70 = *(v0 + 208);
      v71 = *(v0 + 184);
      sub_20CD1D9A8(*(v0 + 216), v70, &qword_27C810F20, &qword_20CD64960);
      v72 = v69(v70, 1, v71);
      v73 = *(v0 + 184);
      if (v72 == 1)
      {
        v74 = *(v0 + 376);
        v75 = *(v0 + 200);
        v76 = *(v0 + 208);
        v77 = *(v0 + 144);
        sub_20CD62FC4();
        if (v69(v76, 1, v73) != 1)
        {
          sub_20CD1DA10(*(v0 + 208), &qword_27C810F20, &qword_20CD64960);
        }
      }

      else
      {
        (*(*(v0 + 192) + 32))(*(v0 + 200), *(v0 + 208), *(v0 + 184));
      }

      v78 = *(v0 + 488);
      v79 = *(v0 + 496);
      v80 = *(v0 + 464);
      v81 = *(v0 + 192);
      v82 = *(v0 + 200);
      v83 = *(v0 + 184);
      v262(*(v0 + 296), *(v0 + 376), *(v0 + 248));
      *(v0 + 40) = v83;
      *(v0 + 48) = MEMORY[0x277D0A620];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v199);
      (*(v81 + 16))(boxed_opaque_existential_1, v82, v83);
      sub_20CD42728(&qword_28110F698, MEMORY[0x277D0A410]);
      sub_20CD62F64();
      v86 = *(v0 + 488);
      v85 = *(v0 + 496);
      v88 = *(v0 + 464);
      v87 = *(v0 + 472);
      v207 = *(v0 + 448);
      v212 = *(v0 + 424);
      v218 = *(v0 + 456);
      v89 = *(v0 + 376);
      v90 = *(v0 + 288);
      v91 = *(v0 + 248);
      v15(*(v0 + 296), v91);
      (*(v87 + 8))(v85, v88);
      __swift_destroy_boxed_opaque_existential_0(v199);
      (*(v87 + 32))(v85, v86, v88);
      v262(v90, v89, v91);
      sub_20CD551BC(v242);

      sub_20CD42728(&qword_28110F668, MEMORY[0x277D0A578]);
      sub_20CD62F74();
      v92 = *(v0 + 456);
      v94 = *(v0 + 424);
      v93 = *(v0 + 432);
      v243 = *(v0 + 416);
      v208 = *(v0 + 448);
      v213 = *(v0 + 408);
      v95 = *(v0 + 376);
      v219 = *(v0 + 384);
      v96 = *(v0 + 280);
      v97 = *(v0 + 288);
      v98 = *(v0 + 248);

      v249(v97, v98);
      (*(v93 + 8))(v92, v94);
      (*(v93 + 32))(v92, v208, v94);
      v262(v96, v95, v98);
      sub_20CD55408(v236);

      sub_20CD42728(&qword_28110F7A0, MEMORY[0x277D09F28]);
      sub_20CD62F74();
      v99 = *(v0 + 416);
      v101 = *(v0 + 384);
      v100 = *(v0 + 392);
      v102 = *(v0 + 280);
      v103 = *(v0 + 248);
      v256 = *(v0 + 216);
      v263 = *(v0 + 408);
      v104 = *(v0 + 192);
      v105 = *(v0 + 200);
      v106 = *(v0 + 184);

      v249(v102, v103);
      (*(v104 + 8))(v105, v106);
      (*(v100 + 8))(v99, v101);
      sub_20CD1DA10(v256, &qword_27C810F20, &qword_20CD64960);
      (*(v100 + 32))(v99, v263, v101);
      v44 = v224;
    }

    else
    {
      v117 = *(v0 + 376);
      v119 = *(v0 + 304);
      v118 = *(v0 + 312);
      v120 = *(v0 + 248);

      v262(v119, v117, v120);
      sub_20CD62A24();
      v121 = *(v0 + 248);
      v122 = *(v0 + 216);
      v123 = *(v0 + 376);
      v124 = *(v0 + 312);
      v125 = *(v0 + 256);
      v15(*(v0 + 304), v121);
      sub_20CD1DA10(v122, &qword_27C810F20, &qword_20CD64960);
      (*(v125 + 40))(v123, v124, v121);
    }

    *(v0 + 688) = 0;
    v107 = *(v0 + 705);
    objc_autoreleasePoolPop(v44);
    if (v107 == 1)
    {
      if (v204 & 1 | (v230 < 90))
      {
        break;
      }
    }

    v108 = *(v0 + 688);
    v109 = *(v0 + 680);
    v110 = *(v0 + 272);
    (*(v0 + 672))(*(v0 + 264), *(v0 + 376), *(v0 + 248));
    sub_20CD62A24();
    v111 = *(v0 + 664);
    v112 = *(v0 + 656);
    if (v108)
    {
      v157 = *(v0 + 632);
      v158 = *(v0 + 624);
      v159 = *(v0 + 616);
      v259 = *(v0 + 496);
      v160 = *(v0 + 472);
      v161 = *(v0 + 432);
      v239 = *(v0 + 424);
      v246 = *(v0 + 456);
      v162 = *(v0 + 392);
      v227 = *(v0 + 384);
      v233 = *(v0 + 416);
      v250 = *(v0 + 376);
      v253 = *(v0 + 464);
      v163 = *(v0 + 264);
      v164 = *(v0 + 248);

      v112(v163, v164);
      (*(v162 + 8))(v233, v227);
      (*(v161 + 8))(v246, v239);
      (*(v160 + 8))(v259, v253);
      v112(v250, v164);
LABEL_41:
      v165 = *(v0 + 520);
      v167 = *(v0 + 488);
      v166 = *(v0 + 496);
      v168 = *(v0 + 480);
      v169 = *(v0 + 448);
      v170 = *(v0 + 456);
      v171 = *(v0 + 440);
      v173 = *(v0 + 408);
      v172 = *(v0 + 416);
      v186 = *(v0 + 400);
      v188 = *(v0 + 376);
      v190 = *(v0 + 368);
      v192 = *(v0 + 360);
      v194 = *(v0 + 352);
      v196 = *(v0 + 344);
      v198 = *(v0 + 336);
      v201 = *(v0 + 328);
      v203 = *(v0 + 320);
      v206 = *(v0 + 312);
      v210 = *(v0 + 304);
      v216 = *(v0 + 296);
      v222 = *(v0 + 288);
      v228 = *(v0 + 280);
      v234 = *(v0 + 272);
      v240 = *(v0 + 264);
      v247 = *(v0 + 240);
      v251 = *(v0 + 216);
      v254 = *(v0 + 208);
      v260 = *(v0 + 200);
      v174 = *(v0 + 176);

      v136 = *(v0 + 8);
LABEL_42:

      return v136();
    }

    v113 = *(v0 + 376);
    v114 = *(v0 + 272);
    v115 = *(v0 + 248);
    v116 = *(v0 + 256);
    v112(*(v0 + 264), v115);
    (*(v116 + 40))(v113, v114, v115);
    v255 = 0;
  }

  v145 = *(v0 + 456);
  v147 = *(v0 + 432);
  v146 = *(v0 + 440);
  v149 = *(v0 + 416);
  v148 = *(v0 + 424);
  v151 = *(v0 + 392);
  v150 = *(v0 + 400);
  v152 = *(v0 + 384);
  v265 = *(v0 + 176);
  (*(*(v0 + 472) + 16))(*(v0 + 480), *(v0 + 496), *(v0 + 464));
  (*(v147 + 16))(v146, v145, v148);
  (*(v151 + 16))(v150, v149, v152);
  sub_20CD62C04();
  v153 = swift_task_alloc();
  *(v0 + 696) = v153;
  *v153 = v0;
  v153[1] = sub_20CD34E84;
  v154 = *(v0 + 176);
  v155 = *(v0 + 152);

  return sub_20CD36A68(v154);
}

uint64_t sub_20CD34E84()
{
  v1 = *(*v0 + 696);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 160);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_20CD34FDC, 0, 0);
}

uint64_t sub_20CD34FDC()
{
  v237 = v0;
  while (1)
  {
    v1 = *(v0 + 688);
    v2 = *(v0 + 680);
    v3 = *(v0 + 272);
    (*(v0 + 672))(*(v0 + 264), *(v0 + 376), *(v0 + 248));
    sub_20CD62A24();
    v4 = *(v0 + 664);
    v5 = *(v0 + 656);
    if (v1)
    {
      v121 = *(v0 + 632);
      v122 = *(v0 + 624);
      v123 = *(v0 + 616);
      v124 = *(v0 + 472);
      v227 = *(v0 + 464);
      v232 = *(v0 + 496);
      v125 = *(v0 + 432);
      v217 = *(v0 + 424);
      v220 = *(v0 + 456);
      v126 = *(v0 + 392);
      v205 = *(v0 + 384);
      v209 = *(v0 + 416);
      v223 = *(v0 + 376);
      v127 = *(v0 + 264);
      v128 = *(v0 + 248);

      v5(v127, v128);
      (*(v126 + 8))(v209, v205);
      (*(v125 + 8))(v220, v217);
      (*(v124 + 8))(v232, v227);
      v5(v223, v128);
      v151 = *(v0 + 520);
      v153 = *(v0 + 488);
      v152 = *(v0 + 496);
      v154 = *(v0 + 480);
      v155 = *(v0 + 448);
      v156 = *(v0 + 456);
      v157 = *(v0 + 440);
      v159 = *(v0 + 408);
      v158 = *(v0 + 416);
      v173 = *(v0 + 400);
      v175 = *(v0 + 376);
      v177 = *(v0 + 368);
      v179 = *(v0 + 360);
      v181 = *(v0 + 352);
      v183 = *(v0 + 344);
      v185 = *(v0 + 336);
      v187 = *(v0 + 328);
      v189 = *(v0 + 320);
      v192 = *(v0 + 312);
      v196 = *(v0 + 304);
      v200 = *(v0 + 296);
      v203 = *(v0 + 288);
      v207 = *(v0 + 280);
      v211 = *(v0 + 272);
      v219 = *(v0 + 264);
      v221 = *(v0 + 240);
      v225 = *(v0 + 216);
      v229 = *(v0 + 208);
      v235 = *(v0 + 200);
      v160 = *(v0 + 176);

      v161 = *(v0 + 8);
      goto LABEL_39;
    }

    v6 = *(v0 + 376);
    v7 = *(v0 + 272);
    v8 = *(v0 + 248);
    v9 = *(v0 + 256);
    v5(*(v0 + 264), v8);
    (*(v9 + 40))(v6, v7, v8);
    v10 = *(v0 + 648);
    v11 = *(v0 + 640);
    v13 = *(v0 + 368);
    v12 = *(v0 + 376);
    v14 = *(v0 + 248);
    v15 = *(v0 + 256);
    v16 = *(v0 + 240);
    v17 = *(v0 + 224);
    v18 = *(v0 + 112);
    sub_20CD624C4();
    sub_20CD62564();
    v11(v16, v17);
    sub_20CD42728(&qword_28110F778, MEMORY[0x277D09F70]);
    LOBYTE(v18) = sub_20CD63224();
    v19 = *(v15 + 8);
    *(v0 + 656) = v19;
    *(v0 + 664) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v13, v14);
    if ((v18 & 1) == 0)
    {
      break;
    }

    v20 = *(v0 + 528);
    v21 = sub_20CD63194();
    v22 = sub_20CD633D4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 376);
      v24 = *(v0 + 248);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v236 = v26;
      *v25 = 136315138;
      sub_20CD42728(&qword_28110F760, MEMORY[0x277D09F70]);
      v27 = sub_20CD63574();
      v29 = sub_20CD6153C(v27, v28, &v236);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_20CCEA000, v21, v22, "Processing %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x20F3115B0](v26, -1, -1);
      MEMORY[0x20F3115B0](v25, -1, -1);
    }

    v30 = *(v0 + 376);
    v31 = *(v0 + 360);
    v32 = *(v0 + 248);
    v33 = *(v0 + 256);
    v34 = *(v33 + 16);
    *(v0 + 672) = v34;
    *(v0 + 680) = (v33 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v34(v31, v30, v32);
    v190 = sub_20CD62A44();
    v230 = v34;
    v35 = *(v0 + 376);
    v36 = *(v0 + 352);
    v37 = *(v0 + 344);
    v38 = *(v0 + 248);
    v39 = *(v0 + 128);
    v19(*(v0 + 360), v38);
    v34(v36, v35, v38);
    sub_20CD62564();
    v204 = sub_20CD62A94();
    v40 = *(v0 + 624);
    v41 = *(v0 + 376);
    v42 = *(v0 + 352);
    v43 = *(v0 + 336);
    v44 = *(v0 + 248);
    v19(*(v0 + 344), v44);
    v45 = (v19)(v42, v44);
    v46 = MEMORY[0x20F311060](v45);
    v47 = v44;
    v48 = v34;
    v34(v43, v41, v47);
    if (*(v40 + 16) && (v49 = *(v0 + 624), v50 = sub_20CD52DAC(*(v0 + 336)), (v51 & 1) != 0))
    {
      v52 = *(v0 + 336);
      v53 = *(v0 + 248);
      v54 = *(*(*(v0 + 624) + 56) + 8 * v50);

      v19(v52, v53);
      if (*(v54 + 16))
      {
        (*(*(v0 + 192) + 16))(*(v0 + 216), v54 + ((*(*(v0 + 192) + 80) + 32) & ~*(*(v0 + 192) + 80)), *(v0 + 184));

        v55 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v19(*(v0 + 336), *(v0 + 248));
    }

    v55 = 1;
LABEL_12:
    v56 = *(v0 + 616);
    v57 = *(v0 + 376);
    v58 = *(v0 + 328);
    v59 = *(v0 + 248);
    (*(*(v0 + 192) + 56))(*(v0 + 216), v55, 1, *(v0 + 184));
    v48(v58, v57, v59);
    if (*(v56 + 16) && (v60 = *(v0 + 616), v61 = sub_20CD52DAC(*(v0 + 328)), (v62 & 1) != 0))
    {
      v215 = *(*(*(v0 + 616) + 56) + 8 * v61);
    }

    else
    {
      v215 = MEMORY[0x277D84F90];
    }

    v63 = *(v0 + 632);
    v64 = *(v0 + 376);
    v65 = *(v0 + 320);
    v66 = *(v0 + 248);
    v19(*(v0 + 328), v66);
    v230(v65, v64, v66);
    if (*(v63 + 16) && (v67 = *(v0 + 632), v68 = sub_20CD52DAC(*(v0 + 320)), (v69 & 1) != 0))
    {
      v208 = *(*(*(v0 + 632) + 56) + 8 * v68);
    }

    else
    {
      v208 = MEMORY[0x277D84F90];
    }

    v70 = *(v0 + 216);
    v72 = *(v0 + 184);
    v71 = *(v0 + 192);
    v19(*(v0 + 320), *(v0 + 248));
    v73 = *(v71 + 48);
    v201 = v46;
    if (v73(v70, 1, v72) != 1 || *(v215 + 16) || (*(v208 + 16) != 0) | (*(v0 + 704) | v190) & 1 || v204 <= 89)
    {
      v74 = *(v0 + 208);
      v75 = *(v0 + 184);
      sub_20CD1D9A8(*(v0 + 216), v74, &qword_27C810F20, &qword_20CD64960);
      v76 = v73(v74, 1, v75);
      v77 = *(v0 + 184);
      if (v76 == 1)
      {
        v222 = v19;
        v78 = *(v0 + 376);
        v79 = *(v0 + 200);
        v80 = *(v0 + 208);
        v81 = *(v0 + 144);
        sub_20CD62FC4();
        if (v73(v80, 1, v77) != 1)
        {
          sub_20CD1DA10(*(v0 + 208), &qword_27C810F20, &qword_20CD64960);
        }
      }

      else
      {
        v222 = v19;
        (*(*(v0 + 192) + 32))(*(v0 + 200), *(v0 + 208), v77);
      }

      v83 = *(v0 + 488);
      v82 = *(v0 + 496);
      v84 = *(v0 + 464);
      v85 = *(v0 + 192);
      v86 = *(v0 + 200);
      v87 = *(v0 + 184);
      v230(*(v0 + 296), *(v0 + 376), *(v0 + 248));
      *(v0 + 40) = v87;
      *(v0 + 48) = MEMORY[0x277D0A620];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      (*(v85 + 16))(boxed_opaque_existential_1, v86, v87);
      sub_20CD42728(&qword_28110F698, MEMORY[0x277D0A410]);
      sub_20CD62F64();
      v90 = *(v0 + 488);
      v89 = *(v0 + 496);
      v92 = *(v0 + 464);
      v91 = *(v0 + 472);
      v212 = *(v0 + 456);
      v193 = *(v0 + 448);
      v197 = *(v0 + 424);
      v93 = *(v0 + 376);
      v94 = *(v0 + 288);
      v95 = *(v0 + 248);
      v222(*(v0 + 296), v95);
      (*(v91 + 8))(v89, v92);
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      (*(v91 + 32))(v89, v90, v92);
      v230(v94, v93, v95);
      sub_20CD551BC(v215);

      sub_20CD42728(&qword_28110F668, MEMORY[0x277D0A578]);
      sub_20CD62F74();
      v96 = *(v0 + 456);
      v98 = *(v0 + 424);
      v97 = *(v0 + 432);
      v194 = *(v0 + 448);
      v198 = *(v0 + 408);
      v99 = *(v0 + 376);
      v213 = *(v0 + 384);
      v216 = *(v0 + 416);
      v101 = *(v0 + 280);
      v100 = *(v0 + 288);
      v102 = *(v0 + 248);

      v222(v100, v102);
      (*(v97 + 8))(v96, v98);
      (*(v97 + 32))(v96, v194, v98);
      v230(v101, v99, v102);
      sub_20CD55408(v208);

      sub_20CD42728(&qword_28110F7A0, MEMORY[0x277D09F28]);
      sub_20CD62F74();
      v103 = *(v0 + 416);
      v105 = *(v0 + 384);
      v104 = *(v0 + 392);
      v106 = *(v0 + 280);
      v107 = *(v0 + 248);
      v226 = *(v0 + 216);
      v231 = *(v0 + 408);
      v108 = *(v0 + 192);
      v109 = *(v0 + 200);
      v110 = *(v0 + 184);

      v222(v106, v107);
      (*(v108 + 8))(v109, v110);
      (*(v104 + 8))(v103, v105);
      sub_20CD1DA10(v226, &qword_27C810F20, &qword_20CD64960);
      (*(v104 + 32))(v103, v231, v105);
    }

    else
    {
      v112 = *(v0 + 376);
      v114 = *(v0 + 304);
      v113 = *(v0 + 312);
      v115 = *(v0 + 248);

      v230(v114, v112, v115);
      sub_20CD62A24();
      v116 = *(v0 + 248);
      v117 = *(v0 + 216);
      v118 = *(v0 + 376);
      v119 = *(v0 + 312);
      v120 = *(v0 + 256);
      v19(*(v0 + 304), v116);
      sub_20CD1DA10(v117, &qword_27C810F20, &qword_20CD64960);
      (*(v120 + 40))(v118, v119, v116);
    }

    *(v0 + 688) = 0;
    v111 = *(v0 + 705);
    objc_autoreleasePoolPop(v201);
    if (v111 == 1 && v190 & 1 | (v204 < 90))
    {
      v139 = *(v0 + 456);
      v141 = *(v0 + 432);
      v140 = *(v0 + 440);
      v143 = *(v0 + 416);
      v142 = *(v0 + 424);
      v145 = *(v0 + 392);
      v144 = *(v0 + 400);
      v146 = *(v0 + 384);
      v234 = *(v0 + 176);
      (*(*(v0 + 472) + 16))(*(v0 + 480), *(v0 + 496), *(v0 + 464));
      (*(v141 + 16))(v140, v139, v142);
      (*(v145 + 16))(v144, v143, v146);
      sub_20CD62C04();
      v147 = swift_task_alloc();
      *(v0 + 696) = v147;
      *v147 = v0;
      v147[1] = sub_20CD34E84;
      v148 = *(v0 + 176);
      v149 = *(v0 + 152);

      return sub_20CD36A68(v148);
    }
  }

  v163 = *(v0 + 632);
  v129 = *(v0 + 624);
  v130 = *(v0 + 616);
  v131 = *(v0 + 496);
  v133 = *(v0 + 472);
  v132 = *(v0 + 480);
  v134 = *(v0 + 464);
  v164 = *(v0 + 440);
  v165 = *(v0 + 456);
  v135 = *(v0 + 424);
  v136 = *(v0 + 432);
  v170 = *(v0 + 448);
  v171 = *(v0 + 408);
  v166 = *(v0 + 400);
  v167 = *(v0 + 416);
  v224 = v19;
  v137 = *(v0 + 384);
  v138 = *(v0 + 392);
  v169 = *(v0 + 376);
  v172 = *(v0 + 368);
  v174 = *(v0 + 360);
  v176 = *(v0 + 352);
  v178 = *(v0 + 344);
  v180 = *(v0 + 336);
  v182 = *(v0 + 328);
  v184 = *(v0 + 320);
  v186 = *(v0 + 312);
  v188 = *(v0 + 304);
  v191 = *(v0 + 296);
  v195 = *(v0 + 288);
  v199 = *(v0 + 280);
  v202 = *(v0 + 272);
  v206 = *(v0 + 264);
  v168 = *(v0 + 248);
  v210 = *(v0 + 240);
  v214 = *(v0 + 216);
  v218 = *(v0 + 208);
  v228 = *(v0 + 200);
  v233 = *(v0 + 176);
  v162 = *(v0 + 104);

  (*(v133 + 16))(v132, v131, v134);
  (*(v136 + 16))(v164, v165, v135);
  (*(v138 + 16))(v166, v167, v137);
  sub_20CD62C04();
  (*(v138 + 8))(v167, v137);
  (*(v136 + 8))(v165, v135);
  (*(v133 + 8))(v131, v134);
  v224(v169, v168);

  v161 = *(v0 + 8);
LABEL_39:

  return v161();
}

uint64_t sub_20CD36474()
{
  v1 = v0[69];

  v34 = v0[72];
  v2 = v0[65];
  v4 = v0[61];
  v3 = v0[62];
  v5 = v0[60];
  v7 = v0[56];
  v6 = v0[57];
  v8 = v0[55];
  v10 = v0[51];
  v9 = v0[52];
  v11 = v0[50];
  v14 = v0[47];
  v15 = v0[46];
  v16 = v0[45];
  v17 = v0[44];
  v18 = v0[43];
  v19 = v0[42];
  v20 = v0[41];
  v21 = v0[40];
  v22 = v0[39];
  v23 = v0[38];
  v24 = v0[37];
  v25 = v0[36];
  v26 = v0[35];
  v27 = v0[34];
  v28 = v0[33];
  v29 = v0[30];
  v30 = v0[27];
  v31 = v0[26];
  v32 = v0[25];
  v33 = v0[22];

  v12 = v0[1];

  return v12();
}

uint64_t sub_20CD36660()
{
  v1 = v0[73];
  v2 = v0[71];
  v3 = v0[69];

  v36 = v0[75];
  v4 = v0[65];
  v6 = v0[61];
  v5 = v0[62];
  v7 = v0[60];
  v9 = v0[56];
  v8 = v0[57];
  v10 = v0[55];
  v12 = v0[51];
  v11 = v0[52];
  v13 = v0[50];
  v16 = v0[47];
  v17 = v0[46];
  v18 = v0[45];
  v19 = v0[44];
  v20 = v0[43];
  v21 = v0[42];
  v22 = v0[41];
  v23 = v0[40];
  v24 = v0[39];
  v25 = v0[38];
  v26 = v0[37];
  v27 = v0[36];
  v28 = v0[35];
  v29 = v0[34];
  v30 = v0[33];
  v31 = v0[30];
  v32 = v0[27];
  v33 = v0[26];
  v34 = v0[25];
  v35 = v0[22];

  v14 = v0[1];

  return v14();
}

uint64_t sub_20CD36890@<X0>(uint64_t a1@<X8>)
{
  sub_20CD62FB4();
  v2 = sub_20CD62AB4();
  return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

uint64_t sub_20CD36934@<X0>(void (*a1)(uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_20CD62654();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v7);
  sub_20CD62564();
  (*(v5 + 8))(v9, v4);
  v10 = sub_20CD62AB4();
  return (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
}

uint64_t sub_20CD36A68(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20CD62AB4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_20CD62C54();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD36B84, 0, 0);
}

uint64_t sub_20CD36B84()
{
  v1 = v0[3];
  v2 = type metadata accessor for SnapshotProcessor();
  v3 = *__swift_project_boxed_opaque_existential_1((v1 + *(v2 + 20)), *(v1 + *(v2 + 20) + 24));
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_20CD36C38;
  v5 = v0[2];

  return sub_20CD1E3C8(v5);
}

uint64_t sub_20CD36C38()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CD36D80, 0, 0);
  }

  else
  {
    v4 = v3[9];
    v5 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_20CD36D80()
{
  v34 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = *(v0 + 16);
  v6 = sub_20CD631B4();
  __swift_project_value_buffer(v6, qword_28110F878);
  (*(v3 + 16))(v2, v5, v4);
  v7 = v1;
  v8 = sub_20CD63194();
  v9 = sub_20CD633B4();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);
  v13 = *(v0 + 56);
  if (v10)
  {
    v32 = v9;
    v14 = *(v0 + 40);
    v15 = *(v0 + 48);
    v16 = *(v0 + 32);
    v30 = *(v0 + 88);
    v17 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v17 = 136315394;
    v28 = v8;
    sub_20CD62BF4();
    sub_20CD42728(&qword_28110F760, MEMORY[0x277D09F70]);
    v18 = sub_20CD63574();
    v20 = v19;
    (*(v14 + 8))(v15, v16);
    (*(v11 + 8))(v12, v13);
    v21 = sub_20CD6153C(v18, v20, &v33);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2112;
    v22 = v30;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v23;
    *v29 = v23;
    _os_log_impl(&dword_20CCEA000, v28, v32, "Failed to save snapshot %s: %@", v17, 0x16u);
    sub_20CD1DA10(v29, &qword_27C810DD8, &qword_20CD64930);
    MEMORY[0x20F3115B0](v29, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x20F3115B0](v31, -1, -1);
    MEMORY[0x20F3115B0](v17, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v12, v13);
  }

  v24 = *(v0 + 72);
  v25 = *(v0 + 48);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_20CD37094(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_20CD62B44();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E28, &unk_20CD64A10) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E40, &qword_20CD64640);
  v2[16] = v7;
  v8 = *(v7 - 8);
  v2[17] = v8;
  v9 = *(v8 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F80, &qword_20CD64A20) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v11 = sub_20CD62CE4();
  v2[22] = v11;
  v12 = *(v11 - 8);
  v2[23] = v12;
  v13 = *(v12 + 64) + 15;
  v2[24] = swift_task_alloc();
  v14 = sub_20CD62D24();
  v2[25] = v14;
  v15 = *(v14 - 8);
  v2[26] = v15;
  v16 = *(v15 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v17 = sub_20CD626F4();
  v2[31] = v17;
  v18 = *(v17 - 8);
  v2[32] = v18;
  v19 = *(v18 + 64) + 15;
  v2[33] = swift_task_alloc();
  v20 = sub_20CD62654();
  v2[34] = v20;
  v21 = *(v20 - 8);
  v2[35] = v21;
  v22 = *(v21 + 64) + 15;
  v2[36] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F68, &unk_20CD649F0) - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v24 = sub_20CD62EF4();
  v2[40] = v24;
  v25 = *(v24 - 8);
  v2[41] = v25;
  v26 = *(v25 + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DE0, &unk_20CD64800) - 8) + 64) + 15;
  v2[46] = swift_task_alloc();
  v28 = sub_20CD62AB4();
  v2[47] = v28;
  v29 = *(v28 - 8);
  v2[48] = v29;
  v30 = *(v29 + 64) + 15;
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v31 = sub_20CD62E94();
  v2[54] = v31;
  v32 = *(v31 - 8);
  v2[55] = v32;
  v33 = *(v32 + 64) + 15;
  v2[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD3761C, 0, 0);
}

uint64_t sub_20CD3761C()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 32);
  v3 = *(type metadata accessor for SnapshotProcessor() + 20);
  *(v0 + 560) = v3;
  v4 = __swift_project_boxed_opaque_existential_1((v2 + v3), *(v2 + v3 + 24));
  *(v0 + 456) = sub_20CD62E74();
  *(v0 + 464) = sub_20CD42728(&qword_28110F698, MEMORY[0x277D0A410]);
  sub_20CD62F44();
  v5 = *v4;
  *(v0 + 472) = *v4;

  return MEMORY[0x2822009F8](sub_20CD3770C, v5, 0);
}

uint64_t sub_20CD37734()
{
  v1 = v0[60];
  v2 = v0[56];
  v3 = swift_task_alloc();
  v0[61] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[62] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F08, &qword_20CD64870);
  *v5 = v0;
  v5[1] = sub_20CD37840;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000001CLL, 0x800000020CD65990, sub_20CD427CC, v3, v6);
}

uint64_t sub_20CD37840()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v7 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v4 = sub_20CD38888;
  }

  else
  {
    v5 = *(v2 + 488);

    v4 = sub_20CD3795C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CD3795C()
{
  v1 = v0;
  v2 = v0[2];
  (*(v0[55] + 8))(v0[56], v0[54]);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v0[48];
    v6 = v0[41];
    v170 = MEMORY[0x277D84F90];
    sub_20CD46B04(0, v3, 0);
    v4 = v170;
    v7 = *(v6 + 16);
    v6 += 16;
    v155 = v2;
    v8 = v2 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v159 = *(v6 + 56);
    v163 = v7;
    v9 = (v6 - 8);
    do
    {
      v10 = v1[49];
      v11 = v1[42];
      v12 = v1[40];
      v163(v11, v8, v12);
      sub_20CD62EC4();
      (*v9)(v11, v12);
      v14 = *(v170 + 16);
      v13 = *(v170 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_20CD46B04(v13 > 1, v14 + 1, 1);
      }

      v15 = v1[49];
      v16 = v1[47];
      *(v170 + 16) = v14 + 1;
      (*(v5 + 32))(v170 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v15, v16);
      v8 += v159;
      --v3;
    }

    while (v3);
    v2 = v155;
  }

  v17 = v1[47];
  v18 = v1[48];
  v19 = v1;
  v20 = v1[46];
  sub_20CD3F9E0(v4, v20);

  if ((*(v18 + 48))(v20, 1, v17) == 1)
  {
    v21 = v1[46];

    sub_20CD1DA10(v21, &qword_27C810DE0, &unk_20CD64800);
LABEL_9:
    (*(*(v19[57] - 8) + 56))(v19[3], 1, 1);
    v22 = v19[56];
    v23 = v19[52];
    v24 = v19[53];
    v26 = v19[50];
    v25 = v19[51];
    v27 = v19[49];
    v29 = v19[45];
    v28 = v19[46];
    v30 = v19[43];
    v31 = v19[44];
    v106 = v19[42];
    v109 = v19[39];
    v113 = v19[38];
    v116 = v19[37];
    v118 = v19[36];
    v121 = v19[33];
    v123 = v19[30];
    v126 = v19[29];
    v128 = v19[28];
    v130 = v19[27];
    v132 = v19[24];
    v134 = v19[21];
    v137 = v19[20];
    v140 = v19[19];
    v142 = v19[18];
    v144 = v19[15];
    v146 = v19[14];
    v149 = v19[13];
    v151 = v19[12];
    v153 = v19[11];
    v156 = v19[10];
    v160 = v19[9];
    v164 = v19[8];
    v168 = v19[7];

    v32 = v19[1];
LABEL_12:

    return v32();
  }

  v33 = v1[63];
  v34 = v1[53];
  v35 = v1[39];
  v36 = v1[4];
  (*(v1[48] + 32))(v34, v1[46], v1[47]);
  v37 = swift_task_alloc();
  *(v37 + 16) = v36;
  *(v37 + 24) = v34;
  sub_20CD52264(sub_20CD42770, v2, v35);
  if (v33)
  {
    v38 = v1[53];
    v40 = v1[47];
    v39 = v1[48];

    (*(v39 + 8))(v38, v40);
    v41 = v1[56];
    v43 = v1[52];
    v42 = v1[53];
    v45 = v1[50];
    v44 = v1[51];
    v46 = v19[49];
    v47 = v19[45];
    v48 = v19[46];
    v49 = v19[43];
    v50 = v19[44];
    v104 = v19[42];
    v107 = v19[39];
    v110 = v19[38];
    v114 = v19[37];
    v117 = v19[36];
    v119 = v19[33];
    v122 = v19[30];
    v124 = v19[29];
    v127 = v19[28];
    v129 = v19[27];
    v131 = v19[24];
    v133 = v19[21];
    v135 = v19[20];
    v138 = v19[19];
    v141 = v19[18];
    v143 = v19[15];
    v145 = v19[14];
    v147 = v19[13];
    v150 = v19[12];
    v152 = v19[11];
    v154 = v19[10];
    v157 = v19[9];
    v161 = v19[8];
    v165 = v19[7];

    v32 = v19[1];
    goto LABEL_12;
  }

  v53 = v1[40];
  v52 = v1[41];
  v54 = v19[39];

  v55 = *(v52 + 48);
  v56 = v55(v54, 1, v53);
  v57 = v19[53];
  if (v56 == 1)
  {
    v58 = v19[47];
    v59 = v19[48];
    v60 = v19[39];
LABEL_17:

    sub_20CD1DA10(v60, &qword_27C810F68, &unk_20CD649F0);
    (*(v59 + 8))(v57, v58);
    goto LABEL_9;
  }

  v61 = v19[38];
  v62 = v19[4];
  v63 = *(v19[41] + 32);
  (v63)(v19[45], v19[39], v19[40]);
  v64 = swift_task_alloc();
  *(v64 + 16) = v62;
  *(v64 + 24) = v57;
  sub_20CD52264(sub_20CD4278C, v2, v61);
  v65 = v19[40];
  v66 = v19[38];

  v67 = v55(v66, 1, v65);
  v57 = v19[53];
  if (v67 == 1)
  {
    v58 = v19[47];
    v59 = v19[48];
    v60 = v19[38];
    (*(v19[41] + 8))(v19[45], v19[40]);
    goto LABEL_17;
  }

  v166 = v19[40];
  v68 = v19[37];
  v63(v19[44], v19[38]);
  *(swift_task_alloc() + 16) = v57;
  sub_20CD52264(sub_20CD427AC, v2, v68);

  v69 = v55(v68, 1, v166);
  v70 = v19[53];
  if (v69 == 1)
  {
    v71 = v19[47];
    v72 = v19[48];
    v73 = v19[45];
    v74 = v19[40];
    v75 = v19[37];
    v76 = *(v19[41] + 8);
    v76(v19[44], v74);
    v76(v73, v74);
    sub_20CD1DA10(v75, &qword_27C810F68, &unk_20CD649F0);
    (*(v72 + 8))(v70, v71);
    goto LABEL_9;
  }

  v77 = v19[36];
  v78 = v19[33];
  (v63)(v19[43], v19[37], v19[40]);
  sub_20CD626C4();
  sub_20CD62A84();
  v111 = v19[45];
  v100 = v19[44];
  v105 = v19[43];
  v167 = v19[41];
  v125 = v19[40];
  v79 = v19[35];
  v80 = v19[36];
  v81 = v19[34];
  v82 = v19[30];
  v162 = v19[29];
  v98 = v19[28];
  v101 = v19[27];
  v83 = v19[25];
  v169 = v19[26];
  v85 = v19[23];
  v84 = v19[24];
  v87 = v19[21];
  v86 = v19[22];
  v97 = v19[20];
  v99 = v19[19];
  v102 = v19[18];
  v103 = (v19[4] + *(v19 + 140));
  (*(v19[32] + 8))(v19[33], v19[31]);
  v158 = *(v79 + 16);
  v158(v84, v80, v81);
  v148 = *(v85 + 104);
  v148(v84, *MEMORY[0x277D0A2D0], v86);
  v139 = sub_20CD62FE4();
  v136 = *(*(v139 - 8) + 56);
  v108 = v87;
  v136(v87, 1, 1, v139);
  sub_20CD62FA4();
  sub_20CD42728(&qword_28110F660, MEMORY[0x277D0A610]);
  sub_20CD632F4();
  sub_20CD62B84();
  sub_20CD42728(&qword_28110F740, MEMORY[0x277D0A1B8]);
  sub_20CD632F4();
  v88 = v82;
  sub_20CD42728(&qword_28110F6E0, MEMORY[0x277D0A388]);
  sub_20CD62B04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F70, &qword_20CD64A00);
  v120 = *(v167 + 72);
  v89 = (*(v167 + 80) + 32) & ~*(v167 + 80);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_20CD64880;
  v167 += 16;
  v115 = *v167;
  (*v167)(v90 + v89, v111, v125);
  v112 = *(v169 + 16);
  v112(v162, v88, v83);
  sub_20CD62BB4();
  v158(v84, v80, v81);
  v148(v84, *MEMORY[0x277D0A2B0], v86);
  v136(v108, 1, 1, v139);
  sub_20CD632F4();
  sub_20CD632F4();
  sub_20CD62B04();
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_20CD64880;
  v115(v91 + v89, v100, v125);
  v112(v162, v98, v83);
  sub_20CD62BB4();
  v158(v84, v80, v81);
  v148(v84, *MEMORY[0x277D0A290], v86);
  v136(v108, 1, 1, v139);
  sub_20CD632F4();
  sub_20CD632F4();
  sub_20CD62B04();
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_20CD64880;
  v115(v92 + v89, v105, v125);
  v112(v162, v101, v83);
  sub_20CD62BB4();
  v93 = *__swift_project_boxed_opaque_existential_1(v103, v103[3]);
  v94 = swift_task_alloc();
  v19[64] = v94;
  *v94 = v19;
  v94[1] = sub_20CD38B7C;
  v95 = v19[20];
  v96 = v19[15];

  return sub_20CD1903C(v96, v95);
}

uint64_t sub_20CD38888()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 472);

  return MEMORY[0x2822009F8](sub_20CD388F4, v2, 0);
}

uint64_t sub_20CD388F4()
{
  (*(v0[55] + 8))(v0[56], v0[54]);

  return MEMORY[0x2822009F8](sub_20CD3896C, 0, 0);
}

uint64_t sub_20CD3896C()
{
  v37 = v0[63];
  v1 = v0[56];
  v3 = v0[52];
  v2 = v0[53];
  v5 = v0[50];
  v4 = v0[51];
  v6 = v0[49];
  v8 = v0[45];
  v7 = v0[46];
  v9 = v0[43];
  v10 = v0[44];
  v13 = v0[42];
  v14 = v0[39];
  v15 = v0[38];
  v16 = v0[37];
  v17 = v0[36];
  v18 = v0[33];
  v19 = v0[30];
  v20 = v0[29];
  v21 = v0[28];
  v22 = v0[27];
  v23 = v0[24];
  v24 = v0[21];
  v25 = v0[20];
  v26 = v0[19];
  v27 = v0[18];
  v28 = v0[15];
  v29 = v0[14];
  v30 = v0[13];
  v31 = v0[12];
  v32 = v0[11];
  v33 = v0[10];
  v34 = v0[9];
  v35 = v0[8];
  v36 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_20CD38B7C()
{
  v2 = *(*v1 + 512);
  v5 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = sub_20CD38E68;
  }

  else
  {
    v3 = sub_20CD38C90;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CD38C90()
{
  v1 = (*(v0 + 32) + *(v0 + 560));
  v2 = *__swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = swift_task_alloc();
  *(v0 + 528) = v3;
  *v3 = v0;
  v3[1] = sub_20CD38D54;
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);

  return sub_20CD1903C(v5, v4);
}

uint64_t sub_20CD38D54()
{
  v2 = *(*v1 + 528);
  v5 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v3 = sub_20CD39388;
  }

  else
  {
    v3 = sub_20CD391B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CD38E68()
{
  v58 = v0[47];
  v60 = v0[53];
  v54 = v0[45];
  v56 = v0[48];
  v50 = v0[43];
  v52 = v0[44];
  v1 = v0[41];
  v48 = v0[40];
  v2 = v0[35];
  v44 = v0[34];
  v46 = v0[36];
  v3 = v0[27];
  v4 = v0[25];
  v5 = v0[26];
  v6 = v0[19];
  v7 = v0[20];
  v40 = v7;
  v42 = v0[30];
  v36 = v6;
  v38 = v0[28];
  v8 = v0[16];
  v9 = *(v0[17] + 8);
  v9(v0[18], v8);
  v10 = *(v5 + 8);
  v10(v3, v4);
  v9(v36, v8);
  v10(v38, v4);
  v9(v40, v8);
  v10(v42, v4);
  (*(v2 + 8))(v46, v44);
  v11 = *(v1 + 8);
  v11(v50, v48);
  v11(v52, v48);
  v11(v54, v48);
  (*(v56 + 8))(v60, v58);
  v61 = v0[65];
  v12 = v0[56];
  v14 = v0[52];
  v13 = v0[53];
  v16 = v0[50];
  v15 = v0[51];
  v17 = v0[49];
  v19 = v0[45];
  v18 = v0[46];
  v20 = v0[43];
  v21 = v0[44];
  v24 = v0[42];
  v25 = v0[39];
  v26 = v0[38];
  v27 = v0[37];
  v28 = v0[36];
  v29 = v0[33];
  v30 = v0[30];
  v31 = v0[29];
  v32 = v0[28];
  v33 = v0[27];
  v34 = v0[24];
  v35 = v0[21];
  v37 = v0[20];
  v39 = v0[19];
  v41 = v0[18];
  v43 = v0[15];
  v45 = v0[14];
  v47 = v0[13];
  v49 = v0[12];
  v51 = v0[11];
  v53 = v0[10];
  v55 = v0[9];
  v57 = v0[8];
  v59 = v0[7];

  v22 = v0[1];

  return v22();
}

uint64_t sub_20CD391B0()
{
  v1 = (*(v0 + 32) + *(v0 + 560));
  v2 = *__swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = swift_task_alloc();
  *(v0 + 544) = v3;
  *v3 = v0;
  v3[1] = sub_20CD39274;
  v4 = *(v0 + 144);
  v5 = *(v0 + 104);

  return sub_20CD1903C(v5, v4);
}

uint64_t sub_20CD39274()
{
  v2 = *(*v1 + 544);
  v5 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v3 = sub_20CD39EB4;
  }

  else
  {
    v3 = sub_20CD396EC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CD39388()
{
  v58 = v0[47];
  v60 = v0[53];
  v54 = v0[45];
  v56 = v0[48];
  v50 = v0[43];
  v52 = v0[44];
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[35];
  v48 = v0[36];
  v44 = v0[30];
  v46 = v0[34];
  v4 = v0[25];
  v5 = v0[26];
  v40 = v0[28];
  v42 = v0[20];
  v36 = v0[27];
  v38 = v0[19];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[16];
  sub_20CD1DA10(v0[15], &qword_27C810E28, &unk_20CD64A10);
  v9 = *(v6 + 8);
  v9(v7, v8);
  v10 = *(v5 + 8);
  v10(v36, v4);
  v9(v38, v8);
  v10(v40, v4);
  v9(v42, v8);
  v10(v44, v4);
  (*(v3 + 8))(v48, v46);
  v11 = *(v2 + 8);
  v11(v50, v1);
  v11(v52, v1);
  v11(v54, v1);
  (*(v56 + 8))(v60, v58);
  v61 = v0[67];
  v12 = v0[56];
  v14 = v0[52];
  v13 = v0[53];
  v16 = v0[50];
  v15 = v0[51];
  v17 = v0[49];
  v19 = v0[45];
  v18 = v0[46];
  v20 = v0[43];
  v21 = v0[44];
  v24 = v0[42];
  v25 = v0[39];
  v26 = v0[38];
  v27 = v0[37];
  v28 = v0[36];
  v29 = v0[33];
  v30 = v0[30];
  v31 = v0[29];
  v32 = v0[28];
  v33 = v0[27];
  v34 = v0[24];
  v35 = v0[21];
  v37 = v0[20];
  v39 = v0[19];
  v41 = v0[18];
  v43 = v0[15];
  v45 = v0[14];
  v47 = v0[13];
  v49 = v0[12];
  v51 = v0[11];
  v53 = v0[10];
  v55 = v0[9];
  v57 = v0[8];
  v59 = v0[7];

  v22 = v0[1];

  return v22();
}

uint64_t sub_20CD396EC()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v0[48] + 16);
  v5(v0[52], v0[53], v0[47]);
  sub_20CD1D9A8(v1, v2, &qword_27C810E28, &unk_20CD64A10);
  v6 = *(v4 + 48);
  v102 = v6;
  if (v6(v2, 1, v3) == 1)
  {
    v7 = v0[53];
    v9 = v0[50];
    v8 = v0[51];
    v10 = v0[47];
    v11 = v0[45];
    v93 = v0[9];
    v97 = v0[12];
    v12 = v0[5];
    sub_20CD62EE4();
    v5(v9, v7, v10);
    sub_20CD42728(&qword_28110F758, MEMORY[0x277D0A038]);
    v6 = v102;
    sub_20CD62C74();
    if (v102(v97, 1, v12) != 1)
    {
      sub_20CD1DA10(v0[12], &qword_27C810E28, &unk_20CD64A10);
    }
  }

  else
  {
    (*(v0[6] + 32))(v0[9], v0[12], v0[5]);
  }

  v13 = v0[11];
  v14 = v0[5];
  sub_20CD1D9A8(v0[14], v13, &qword_27C810E28, &unk_20CD64A10);
  if (v6(v13, 1, v14) == 1)
  {
    v15 = v0[53];
    v17 = v0[50];
    v16 = v0[51];
    v18 = v0[47];
    v19 = v0[44];
    v94 = v0[8];
    v98 = v0[11];
    v20 = v0[5];
    sub_20CD62EE4();
    v5(v17, v15, v18);
    sub_20CD42728(&qword_28110F758, MEMORY[0x277D0A038]);
    v6 = v102;
    sub_20CD62C74();
    if (v102(v98, 1, v20) != 1)
    {
      sub_20CD1DA10(v0[11], &qword_27C810E28, &unk_20CD64A10);
    }
  }

  else
  {
    (*(v0[6] + 32))(v0[8], v0[11], v0[5]);
  }

  v21 = v0[10];
  v22 = v0[5];
  sub_20CD1D9A8(v0[13], v21, &qword_27C810E28, &unk_20CD64A10);
  if (v6(v21, 1, v22) == 1)
  {
    v23 = v0[53];
    v24 = v0[50];
    v25 = v0[47];
    v26 = v5;
    v99 = v0[10];
    v27 = v0[7];
    v28 = v0[5];
    v26(v0[51], v23, v25);
    v26(v24, v23, v25);
    sub_20CD42728(&qword_28110F758, MEMORY[0x277D0A038]);
    sub_20CD62C74();
    if (v102(v99, 1, v28) != 1)
    {
      sub_20CD1DA10(v0[10], &qword_27C810E28, &unk_20CD64A10);
    }
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[10], v0[5]);
  }

  v30 = v0[57];
  v29 = v0[58];
  v31 = v0[52];
  v100 = v0[47];
  v103 = v0[53];
  v91 = v0[45];
  v95 = v0[48];
  v87 = v0[43];
  v89 = v0[44];
  v32 = v0[41];
  v85 = v0[40];
  v79 = v0[34];
  v81 = v0[36];
  v75 = v0[30];
  v77 = v0[35];
  v33 = v0[25];
  v34 = v0[26];
  v71 = v0[28];
  v73 = v0[20];
  v67 = v0[27];
  v69 = v0[19];
  v35 = v0[17];
  v36 = v0[16];
  v63 = v0[15];
  v65 = v0[18];
  v37 = v0[13];
  v61 = v0[14];
  v39 = v0[8];
  v38 = v0[9];
  v40 = v0[7];
  v83 = v0[3];
  sub_20CD62F34();
  sub_20CD1DA10(v37, &qword_27C810E28, &unk_20CD64A10);
  sub_20CD1DA10(v61, &qword_27C810E28, &unk_20CD64A10);
  sub_20CD1DA10(v63, &qword_27C810E28, &unk_20CD64A10);
  v41 = *(v35 + 8);
  v41(v65, v36);
  v42 = *(v34 + 8);
  v42(v67, v33);
  v41(v69, v36);
  v42(v71, v33);
  v41(v73, v36);
  v42(v75, v33);
  (*(v77 + 8))(v81, v79);
  v43 = *(v32 + 8);
  v43(v87, v85);
  v43(v89, v85);
  v43(v91, v85);
  (*(*(v30 - 8) + 56))(v83, 0, 1, v30);
  (*(v95 + 8))(v103, v100);
  v44 = v0[56];
  v45 = v0[52];
  v46 = v0[53];
  v48 = v0[50];
  v47 = v0[51];
  v49 = v0[49];
  v51 = v0[45];
  v50 = v0[46];
  v52 = v0[43];
  v53 = v0[44];
  v56 = v0[42];
  v57 = v0[39];
  v58 = v0[38];
  v59 = v0[37];
  v60 = v0[36];
  v62 = v0[33];
  v64 = v0[30];
  v66 = v0[29];
  v68 = v0[28];
  v70 = v0[27];
  v72 = v0[24];
  v74 = v0[21];
  v76 = v0[20];
  v78 = v0[19];
  v80 = v0[18];
  v82 = v0[15];
  v84 = v0[14];
  v86 = v0[13];
  v88 = v0[12];
  v90 = v0[11];
  v92 = v0[10];
  v96 = v0[9];
  v101 = v0[8];
  v104 = v0[7];

  v54 = v0[1];

  return v54();
}

uint64_t sub_20CD39EB4()
{
  v59 = v0[47];
  v61 = v0[53];
  v55 = v0[45];
  v57 = v0[48];
  v51 = v0[43];
  v53 = v0[44];
  v1 = v0[41];
  v49 = v0[40];
  v2 = v0[35];
  v45 = v0[34];
  v47 = v0[36];
  v3 = v0[25];
  v4 = v0[26];
  v41 = v0[20];
  v43 = v0[30];
  v37 = v0[19];
  v39 = v0[28];
  v33 = v0[18];
  v35 = v0[27];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  sub_20CD1DA10(v0[14], &qword_27C810E28, &unk_20CD64A10);
  sub_20CD1DA10(v7, &qword_27C810E28, &unk_20CD64A10);
  v8 = *(v5 + 8);
  v8(v33, v6);
  v9 = *(v4 + 8);
  v9(v35, v3);
  v8(v37, v6);
  v9(v39, v3);
  v8(v41, v6);
  v9(v43, v3);
  (*(v2 + 8))(v47, v45);
  v10 = *(v1 + 8);
  v10(v51, v49);
  v10(v53, v49);
  v10(v55, v49);
  (*(v57 + 8))(v61, v59);
  v62 = v0[69];
  v11 = v0[56];
  v13 = v0[52];
  v12 = v0[53];
  v15 = v0[50];
  v14 = v0[51];
  v16 = v0[49];
  v18 = v0[45];
  v17 = v0[46];
  v19 = v0[43];
  v20 = v0[44];
  v23 = v0[42];
  v24 = v0[39];
  v25 = v0[38];
  v26 = v0[37];
  v27 = v0[36];
  v28 = v0[33];
  v29 = v0[30];
  v30 = v0[29];
  v31 = v0[28];
  v32 = v0[27];
  v34 = v0[24];
  v36 = v0[21];
  v38 = v0[20];
  v40 = v0[19];
  v42 = v0[18];
  v44 = v0[15];
  v46 = v0[14];
  v48 = v0[13];
  v50 = v0[12];
  v52 = v0[11];
  v54 = v0[10];
  v56 = v0[9];
  v58 = v0[8];
  v60 = v0[7];

  v21 = v0[1];

  return v21();
}

uint64_t sub_20CD3A234(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_20CD62BC4();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E78, &qword_20CD646C8) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E90, &qword_20CD64700);
  v2[16] = v7;
  v8 = *(v7 - 8);
  v2[17] = v8;
  v9 = *(v8 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F78, &qword_20CD64A08) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v11 = sub_20CD62CE4();
  v2[22] = v11;
  v12 = *(v11 - 8);
  v2[23] = v12;
  v13 = *(v12 + 64) + 15;
  v2[24] = swift_task_alloc();
  v14 = sub_20CD62EA4();
  v2[25] = v14;
  v15 = *(v14 - 8);
  v2[26] = v15;
  v16 = *(v15 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v17 = sub_20CD626F4();
  v2[31] = v17;
  v18 = *(v17 - 8);
  v2[32] = v18;
  v19 = *(v18 + 64) + 15;
  v2[33] = swift_task_alloc();
  v20 = sub_20CD62654();
  v2[34] = v20;
  v21 = *(v20 - 8);
  v2[35] = v21;
  v22 = *(v21 + 64) + 15;
  v2[36] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F68, &unk_20CD649F0) - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v24 = sub_20CD62EF4();
  v2[40] = v24;
  v25 = *(v24 - 8);
  v2[41] = v25;
  v26 = *(v25 + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DE0, &unk_20CD64800) - 8) + 64) + 15;
  v2[46] = swift_task_alloc();
  v28 = sub_20CD62AB4();
  v2[47] = v28;
  v29 = *(v28 - 8);
  v2[48] = v29;
  v30 = *(v29 + 64) + 15;
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v31 = sub_20CD62E94();
  v2[54] = v31;
  v32 = *(v31 - 8);
  v2[55] = v32;
  v33 = *(v32 + 64) + 15;
  v2[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD3A7BC, 0, 0);
}

uint64_t sub_20CD3A7BC()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 32);
  v3 = *(type metadata accessor for SnapshotProcessor() + 20);
  *(v0 + 560) = v3;
  v4 = __swift_project_boxed_opaque_existential_1((v2 + v3), *(v2 + v3 + 24));
  *(v0 + 456) = sub_20CD62F24();
  *(v0 + 464) = sub_20CD42728(&qword_28110F668, MEMORY[0x277D0A578]);
  sub_20CD62F44();
  v5 = *v4;
  *(v0 + 472) = *v4;

  return MEMORY[0x2822009F8](sub_20CD3A8AC, v5, 0);
}

uint64_t sub_20CD3A8D4()
{
  v1 = v0[60];
  v2 = v0[56];
  v3 = swift_task_alloc();
  v0[61] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[62] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F08, &qword_20CD64870);
  *v5 = v0;
  v5[1] = sub_20CD3A9E0;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000001CLL, 0x800000020CD65990, sub_20CD427CC, v3, v6);
}

uint64_t sub_20CD3A9E0()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v7 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v4 = sub_20CD3BA28;
  }

  else
  {
    v5 = *(v2 + 488);

    v4 = sub_20CD3AAFC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CD3AAFC()
{
  v1 = v0;
  v2 = v0[2];
  (*(v0[55] + 8))(v0[56], v0[54]);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v0[48];
    v6 = v0[41];
    v170 = MEMORY[0x277D84F90];
    sub_20CD46B04(0, v3, 0);
    v4 = v170;
    v7 = *(v6 + 16);
    v6 += 16;
    v155 = v2;
    v8 = v2 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v159 = *(v6 + 56);
    v163 = v7;
    v9 = (v6 - 8);
    do
    {
      v10 = v1[49];
      v11 = v1[42];
      v12 = v1[40];
      v163(v11, v8, v12);
      sub_20CD62EC4();
      (*v9)(v11, v12);
      v14 = *(v170 + 16);
      v13 = *(v170 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_20CD46B04(v13 > 1, v14 + 1, 1);
      }

      v15 = v1[49];
      v16 = v1[47];
      *(v170 + 16) = v14 + 1;
      (*(v5 + 32))(v170 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v15, v16);
      v8 += v159;
      --v3;
    }

    while (v3);
    v2 = v155;
  }

  v17 = v1[47];
  v18 = v1[48];
  v19 = v1;
  v20 = v1[46];
  sub_20CD3F9E0(v4, v20);

  if ((*(v18 + 48))(v20, 1, v17) == 1)
  {
    v21 = v1[46];

    sub_20CD1DA10(v21, &qword_27C810DE0, &unk_20CD64800);
LABEL_9:
    (*(*(v19[57] - 8) + 56))(v19[3], 1, 1);
    v22 = v19[56];
    v23 = v19[52];
    v24 = v19[53];
    v26 = v19[50];
    v25 = v19[51];
    v27 = v19[49];
    v29 = v19[45];
    v28 = v19[46];
    v30 = v19[43];
    v31 = v19[44];
    v106 = v19[42];
    v109 = v19[39];
    v113 = v19[38];
    v116 = v19[37];
    v118 = v19[36];
    v121 = v19[33];
    v123 = v19[30];
    v126 = v19[29];
    v128 = v19[28];
    v130 = v19[27];
    v132 = v19[24];
    v134 = v19[21];
    v137 = v19[20];
    v140 = v19[19];
    v142 = v19[18];
    v144 = v19[15];
    v146 = v19[14];
    v149 = v19[13];
    v151 = v19[12];
    v153 = v19[11];
    v156 = v19[10];
    v160 = v19[9];
    v164 = v19[8];
    v168 = v19[7];

    v32 = v19[1];
LABEL_12:

    return v32();
  }

  v33 = v1[63];
  v34 = v1[53];
  v35 = v1[39];
  v36 = v1[4];
  (*(v1[48] + 32))(v34, v1[46], v1[47]);
  v37 = swift_task_alloc();
  *(v37 + 16) = v36;
  *(v37 + 24) = v34;
  sub_20CD52264(sub_20CD42770, v2, v35);
  if (v33)
  {
    v38 = v1[53];
    v40 = v1[47];
    v39 = v1[48];

    (*(v39 + 8))(v38, v40);
    v41 = v1[56];
    v43 = v1[52];
    v42 = v1[53];
    v45 = v1[50];
    v44 = v1[51];
    v46 = v19[49];
    v47 = v19[45];
    v48 = v19[46];
    v49 = v19[43];
    v50 = v19[44];
    v104 = v19[42];
    v107 = v19[39];
    v110 = v19[38];
    v114 = v19[37];
    v117 = v19[36];
    v119 = v19[33];
    v122 = v19[30];
    v124 = v19[29];
    v127 = v19[28];
    v129 = v19[27];
    v131 = v19[24];
    v133 = v19[21];
    v135 = v19[20];
    v138 = v19[19];
    v141 = v19[18];
    v143 = v19[15];
    v145 = v19[14];
    v147 = v19[13];
    v150 = v19[12];
    v152 = v19[11];
    v154 = v19[10];
    v157 = v19[9];
    v161 = v19[8];
    v165 = v19[7];

    v32 = v19[1];
    goto LABEL_12;
  }

  v53 = v1[40];
  v52 = v1[41];
  v54 = v19[39];

  v55 = *(v52 + 48);
  v56 = v55(v54, 1, v53);
  v57 = v19[53];
  if (v56 == 1)
  {
    v58 = v19[47];
    v59 = v19[48];
    v60 = v19[39];
LABEL_17:

    sub_20CD1DA10(v60, &qword_27C810F68, &unk_20CD649F0);
    (*(v59 + 8))(v57, v58);
    goto LABEL_9;
  }

  v61 = v19[38];
  v62 = v19[4];
  v63 = *(v19[41] + 32);
  (v63)(v19[45], v19[39], v19[40]);
  v64 = swift_task_alloc();
  *(v64 + 16) = v62;
  *(v64 + 24) = v57;
  sub_20CD52264(sub_20CD4278C, v2, v61);
  v65 = v19[40];
  v66 = v19[38];

  v67 = v55(v66, 1, v65);
  v57 = v19[53];
  if (v67 == 1)
  {
    v58 = v19[47];
    v59 = v19[48];
    v60 = v19[38];
    (*(v19[41] + 8))(v19[45], v19[40]);
    goto LABEL_17;
  }

  v166 = v19[40];
  v68 = v19[37];
  v63(v19[44], v19[38]);
  *(swift_task_alloc() + 16) = v57;
  sub_20CD52264(sub_20CD427AC, v2, v68);

  v69 = v55(v68, 1, v166);
  v70 = v19[53];
  if (v69 == 1)
  {
    v71 = v19[47];
    v72 = v19[48];
    v73 = v19[45];
    v74 = v19[40];
    v75 = v19[37];
    v76 = *(v19[41] + 8);
    v76(v19[44], v74);
    v76(v73, v74);
    sub_20CD1DA10(v75, &qword_27C810F68, &unk_20CD649F0);
    (*(v72 + 8))(v70, v71);
    goto LABEL_9;
  }

  v77 = v19[36];
  v78 = v19[33];
  (v63)(v19[43], v19[37], v19[40]);
  sub_20CD626C4();
  sub_20CD62A84();
  v111 = v19[45];
  v100 = v19[44];
  v105 = v19[43];
  v167 = v19[41];
  v125 = v19[40];
  v79 = v19[35];
  v80 = v19[36];
  v81 = v19[34];
  v82 = v19[30];
  v162 = v19[29];
  v98 = v19[28];
  v101 = v19[27];
  v83 = v19[25];
  v169 = v19[26];
  v85 = v19[23];
  v84 = v19[24];
  v87 = v19[21];
  v86 = v19[22];
  v97 = v19[20];
  v99 = v19[19];
  v102 = v19[18];
  v103 = (v19[4] + *(v19 + 140));
  (*(v19[32] + 8))(v19[33], v19[31]);
  v158 = *(v79 + 16);
  v158(v84, v80, v81);
  v148 = *(v85 + 104);
  v148(v84, *MEMORY[0x277D0A2D0], v86);
  v139 = sub_20CD63004();
  v136 = *(*(v139 - 8) + 56);
  v108 = v87;
  v136(v87, 1, 1, v139);
  sub_20CD62FF4();
  sub_20CD42728(&qword_28110F658, MEMORY[0x277D0A640]);
  sub_20CD632F4();
  sub_20CD62D14();
  sub_20CD42728(&qword_28110F6E8, MEMORY[0x277D0A328]);
  sub_20CD632F4();
  v88 = v82;
  sub_20CD42728(&qword_28110F688, MEMORY[0x277D0A458]);
  sub_20CD62B04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F70, &qword_20CD64A00);
  v120 = *(v167 + 72);
  v89 = (*(v167 + 80) + 32) & ~*(v167 + 80);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_20CD64880;
  v167 += 16;
  v115 = *v167;
  (*v167)(v90 + v89, v111, v125);
  v112 = *(v169 + 16);
  v112(v162, v88, v83);
  sub_20CD62BB4();
  v158(v84, v80, v81);
  v148(v84, *MEMORY[0x277D0A2B0], v86);
  v136(v108, 1, 1, v139);
  sub_20CD632F4();
  sub_20CD632F4();
  sub_20CD62B04();
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_20CD64880;
  v115(v91 + v89, v100, v125);
  v112(v162, v98, v83);
  sub_20CD62BB4();
  v158(v84, v80, v81);
  v148(v84, *MEMORY[0x277D0A290], v86);
  v136(v108, 1, 1, v139);
  sub_20CD632F4();
  sub_20CD632F4();
  sub_20CD62B04();
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_20CD64880;
  v115(v92 + v89, v105, v125);
  v112(v162, v101, v83);
  sub_20CD62BB4();
  v93 = *__swift_project_boxed_opaque_existential_1(v103, v103[3]);
  v94 = swift_task_alloc();
  v19[64] = v94;
  *v94 = v19;
  v94[1] = sub_20CD3BB0C;
  v95 = v19[20];
  v96 = v19[15];

  return sub_20CD18B4C(v96, v95);
}

uint64_t sub_20CD3BA28()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 472);

  return MEMORY[0x2822009F8](sub_20CD3BA94, v2, 0);
}

uint64_t sub_20CD3BA94()
{
  (*(v0[55] + 8))(v0[56], v0[54]);

  return MEMORY[0x2822009F8](sub_20CD427A8, 0, 0);
}

uint64_t sub_20CD3BB0C()
{
  v2 = *(*v1 + 512);
  v5 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = sub_20CD427C8;
  }

  else
  {
    v3 = sub_20CD3BC20;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CD3BC20()
{
  v1 = (*(v0 + 32) + *(v0 + 560));
  v2 = *__swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = swift_task_alloc();
  *(v0 + 528) = v3;
  *v3 = v0;
  v3[1] = sub_20CD3BCE4;
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);

  return sub_20CD18B4C(v5, v4);
}

uint64_t sub_20CD3BCE4()
{
  v2 = *(*v1 + 528);
  v5 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v3 = sub_20CD3BFD0;
  }

  else
  {
    v3 = sub_20CD3BDF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CD3BDF8()
{
  v1 = (*(v0 + 32) + *(v0 + 560));
  v2 = *__swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = swift_task_alloc();
  *(v0 + 544) = v3;
  *v3 = v0;
  v3[1] = sub_20CD3BEBC;
  v4 = *(v0 + 144);
  v5 = *(v0 + 104);

  return sub_20CD18B4C(v5, v4);
}

uint64_t sub_20CD3BEBC()
{
  v2 = *(*v1 + 544);
  v5 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v3 = sub_20CD3CAFC;
  }

  else
  {
    v3 = sub_20CD3C334;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CD3BFD0()
{
  v58 = v0[47];
  v60 = v0[53];
  v54 = v0[45];
  v56 = v0[48];
  v50 = v0[43];
  v52 = v0[44];
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[35];
  v48 = v0[36];
  v44 = v0[30];
  v46 = v0[34];
  v4 = v0[25];
  v5 = v0[26];
  v40 = v0[28];
  v42 = v0[20];
  v36 = v0[27];
  v38 = v0[19];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[16];
  sub_20CD1DA10(v0[15], &qword_27C810E78, &qword_20CD646C8);
  v9 = *(v6 + 8);
  v9(v7, v8);
  v10 = *(v5 + 8);
  v10(v36, v4);
  v9(v38, v8);
  v10(v40, v4);
  v9(v42, v8);
  v10(v44, v4);
  (*(v3 + 8))(v48, v46);
  v11 = *(v2 + 8);
  v11(v50, v1);
  v11(v52, v1);
  v11(v54, v1);
  (*(v56 + 8))(v60, v58);
  v61 = v0[67];
  v12 = v0[56];
  v14 = v0[52];
  v13 = v0[53];
  v16 = v0[50];
  v15 = v0[51];
  v17 = v0[49];
  v19 = v0[45];
  v18 = v0[46];
  v20 = v0[43];
  v21 = v0[44];
  v24 = v0[42];
  v25 = v0[39];
  v26 = v0[38];
  v27 = v0[37];
  v28 = v0[36];
  v29 = v0[33];
  v30 = v0[30];
  v31 = v0[29];
  v32 = v0[28];
  v33 = v0[27];
  v34 = v0[24];
  v35 = v0[21];
  v37 = v0[20];
  v39 = v0[19];
  v41 = v0[18];
  v43 = v0[15];
  v45 = v0[14];
  v47 = v0[13];
  v49 = v0[12];
  v51 = v0[11];
  v53 = v0[10];
  v55 = v0[9];
  v57 = v0[8];
  v59 = v0[7];

  v22 = v0[1];

  return v22();
}

uint64_t sub_20CD3C334()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v0[48] + 16);
  v5(v0[52], v0[53], v0[47]);
  sub_20CD1D9A8(v1, v2, &qword_27C810E78, &qword_20CD646C8);
  v6 = *(v4 + 48);
  v102 = v6;
  if (v6(v2, 1, v3) == 1)
  {
    v7 = v0[53];
    v9 = v0[50];
    v8 = v0[51];
    v10 = v0[47];
    v11 = v0[45];
    v93 = v0[9];
    v97 = v0[12];
    v12 = v0[5];
    sub_20CD62EE4();
    v5(v9, v7, v10);
    sub_20CD42728(&qword_28110F720, MEMORY[0x277D0A1E8]);
    v6 = v102;
    sub_20CD62C74();
    if (v102(v97, 1, v12) != 1)
    {
      sub_20CD1DA10(v0[12], &qword_27C810E78, &qword_20CD646C8);
    }
  }

  else
  {
    (*(v0[6] + 32))(v0[9], v0[12], v0[5]);
  }

  v13 = v0[11];
  v14 = v0[5];
  sub_20CD1D9A8(v0[14], v13, &qword_27C810E78, &qword_20CD646C8);
  if (v6(v13, 1, v14) == 1)
  {
    v15 = v0[53];
    v17 = v0[50];
    v16 = v0[51];
    v18 = v0[47];
    v19 = v0[44];
    v94 = v0[8];
    v98 = v0[11];
    v20 = v0[5];
    sub_20CD62EE4();
    v5(v17, v15, v18);
    sub_20CD42728(&qword_28110F720, MEMORY[0x277D0A1E8]);
    v6 = v102;
    sub_20CD62C74();
    if (v102(v98, 1, v20) != 1)
    {
      sub_20CD1DA10(v0[11], &qword_27C810E78, &qword_20CD646C8);
    }
  }

  else
  {
    (*(v0[6] + 32))(v0[8], v0[11], v0[5]);
  }

  v21 = v0[10];
  v22 = v0[5];
  sub_20CD1D9A8(v0[13], v21, &qword_27C810E78, &qword_20CD646C8);
  if (v6(v21, 1, v22) == 1)
  {
    v23 = v0[53];
    v24 = v0[50];
    v25 = v0[47];
    v26 = v5;
    v99 = v0[10];
    v27 = v0[7];
    v28 = v0[5];
    v26(v0[51], v23, v25);
    v26(v24, v23, v25);
    sub_20CD42728(&qword_28110F720, MEMORY[0x277D0A1E8]);
    sub_20CD62C74();
    if (v102(v99, 1, v28) != 1)
    {
      sub_20CD1DA10(v0[10], &qword_27C810E78, &qword_20CD646C8);
    }
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[10], v0[5]);
  }

  v30 = v0[57];
  v29 = v0[58];
  v31 = v0[52];
  v100 = v0[47];
  v103 = v0[53];
  v91 = v0[45];
  v95 = v0[48];
  v87 = v0[43];
  v89 = v0[44];
  v32 = v0[41];
  v85 = v0[40];
  v79 = v0[34];
  v81 = v0[36];
  v75 = v0[30];
  v77 = v0[35];
  v33 = v0[25];
  v34 = v0[26];
  v71 = v0[28];
  v73 = v0[20];
  v67 = v0[27];
  v69 = v0[19];
  v35 = v0[17];
  v36 = v0[16];
  v63 = v0[15];
  v65 = v0[18];
  v37 = v0[13];
  v61 = v0[14];
  v39 = v0[8];
  v38 = v0[9];
  v40 = v0[7];
  v83 = v0[3];
  sub_20CD62F34();
  sub_20CD1DA10(v37, &qword_27C810E78, &qword_20CD646C8);
  sub_20CD1DA10(v61, &qword_27C810E78, &qword_20CD646C8);
  sub_20CD1DA10(v63, &qword_27C810E78, &qword_20CD646C8);
  v41 = *(v35 + 8);
  v41(v65, v36);
  v42 = *(v34 + 8);
  v42(v67, v33);
  v41(v69, v36);
  v42(v71, v33);
  v41(v73, v36);
  v42(v75, v33);
  (*(v77 + 8))(v81, v79);
  v43 = *(v32 + 8);
  v43(v87, v85);
  v43(v89, v85);
  v43(v91, v85);
  (*(*(v30 - 8) + 56))(v83, 0, 1, v30);
  (*(v95 + 8))(v103, v100);
  v44 = v0[56];
  v45 = v0[52];
  v46 = v0[53];
  v48 = v0[50];
  v47 = v0[51];
  v49 = v0[49];
  v51 = v0[45];
  v50 = v0[46];
  v52 = v0[43];
  v53 = v0[44];
  v56 = v0[42];
  v57 = v0[39];
  v58 = v0[38];
  v59 = v0[37];
  v60 = v0[36];
  v62 = v0[33];
  v64 = v0[30];
  v66 = v0[29];
  v68 = v0[28];
  v70 = v0[27];
  v72 = v0[24];
  v74 = v0[21];
  v76 = v0[20];
  v78 = v0[19];
  v80 = v0[18];
  v82 = v0[15];
  v84 = v0[14];
  v86 = v0[13];
  v88 = v0[12];
  v90 = v0[11];
  v92 = v0[10];
  v96 = v0[9];
  v101 = v0[8];
  v104 = v0[7];

  v54 = v0[1];

  return v54();
}

uint64_t sub_20CD3CAFC()
{
  v59 = v0[47];
  v61 = v0[53];
  v55 = v0[45];
  v57 = v0[48];
  v51 = v0[43];
  v53 = v0[44];
  v1 = v0[41];
  v49 = v0[40];
  v2 = v0[35];
  v45 = v0[34];
  v47 = v0[36];
  v3 = v0[25];
  v4 = v0[26];
  v41 = v0[20];
  v43 = v0[30];
  v37 = v0[19];
  v39 = v0[28];
  v33 = v0[18];
  v35 = v0[27];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  sub_20CD1DA10(v0[14], &qword_27C810E78, &qword_20CD646C8);
  sub_20CD1DA10(v7, &qword_27C810E78, &qword_20CD646C8);
  v8 = *(v5 + 8);
  v8(v33, v6);
  v9 = *(v4 + 8);
  v9(v35, v3);
  v8(v37, v6);
  v9(v39, v3);
  v8(v41, v6);
  v9(v43, v3);
  (*(v2 + 8))(v47, v45);
  v10 = *(v1 + 8);
  v10(v51, v49);
  v10(v53, v49);
  v10(v55, v49);
  (*(v57 + 8))(v61, v59);
  v62 = v0[69];
  v11 = v0[56];
  v13 = v0[52];
  v12 = v0[53];
  v15 = v0[50];
  v14 = v0[51];
  v16 = v0[49];
  v18 = v0[45];
  v17 = v0[46];
  v19 = v0[43];
  v20 = v0[44];
  v23 = v0[42];
  v24 = v0[39];
  v25 = v0[38];
  v26 = v0[37];
  v27 = v0[36];
  v28 = v0[33];
  v29 = v0[30];
  v30 = v0[29];
  v31 = v0[28];
  v32 = v0[27];
  v34 = v0[24];
  v36 = v0[21];
  v38 = v0[20];
  v40 = v0[19];
  v42 = v0[18];
  v44 = v0[15];
  v46 = v0[14];
  v48 = v0[13];
  v50 = v0[12];
  v52 = v0[11];
  v54 = v0[10];
  v56 = v0[9];
  v58 = v0[8];
  v60 = v0[7];

  v21 = v0[1];

  return v21();
}

uint64_t sub_20CD3CE7C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_20CD62954();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DC0, &qword_20CD64518) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DF0, &qword_20CD649E0);
  v2[16] = v7;
  v8 = *(v7 - 8);
  v2[17] = v8;
  v9 = *(v8 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F60, &qword_20CD649E8) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v11 = sub_20CD62CE4();
  v2[22] = v11;
  v12 = *(v11 - 8);
  v2[23] = v12;
  v13 = *(v12 + 64) + 15;
  v2[24] = swift_task_alloc();
  v14 = sub_20CD62994();
  v2[25] = v14;
  v15 = *(v14 - 8);
  v2[26] = v15;
  v16 = *(v15 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v17 = sub_20CD626F4();
  v2[31] = v17;
  v18 = *(v17 - 8);
  v2[32] = v18;
  v19 = *(v18 + 64) + 15;
  v2[33] = swift_task_alloc();
  v20 = sub_20CD62654();
  v2[34] = v20;
  v21 = *(v20 - 8);
  v2[35] = v21;
  v22 = *(v21 + 64) + 15;
  v2[36] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F68, &unk_20CD649F0) - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v24 = sub_20CD62EF4();
  v2[40] = v24;
  v25 = *(v24 - 8);
  v2[41] = v25;
  v26 = *(v25 + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DE0, &unk_20CD64800) - 8) + 64) + 15;
  v2[46] = swift_task_alloc();
  v28 = sub_20CD62AB4();
  v2[47] = v28;
  v29 = *(v28 - 8);
  v2[48] = v29;
  v30 = *(v29 + 64) + 15;
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v31 = sub_20CD62E94();
  v2[54] = v31;
  v32 = *(v31 - 8);
  v2[55] = v32;
  v33 = *(v32 + 64) + 15;
  v2[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD3D404, 0, 0);
}

uint64_t sub_20CD3D404()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 32);
  v3 = *(type metadata accessor for SnapshotProcessor() + 20);
  *(v0 + 560) = v3;
  v4 = __swift_project_boxed_opaque_existential_1((v2 + v3), *(v2 + v3 + 24));
  *(v0 + 456) = sub_20CD629A4();
  *(v0 + 464) = sub_20CD42728(&qword_28110F7A0, MEMORY[0x277D09F28]);
  sub_20CD62F44();
  v5 = *v4;
  *(v0 + 472) = *v4;

  return MEMORY[0x2822009F8](sub_20CD3D4F4, v5, 0);
}

uint64_t sub_20CD3D51C()
{
  v1 = v0[60];
  v2 = v0[56];
  v3 = swift_task_alloc();
  v0[61] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[62] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F08, &qword_20CD64870);
  *v5 = v0;
  v5[1] = sub_20CD3D628;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000001CLL, 0x800000020CD65990, sub_20CD427CC, v3, v6);
}

uint64_t sub_20CD3D628()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v7 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v4 = sub_20CD3BA28;
  }

  else
  {
    v5 = *(v2 + 488);

    v4 = sub_20CD3D744;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CD3D744()
{
  v1 = v0;
  v2 = v0[2];
  (*(v0[55] + 8))(v0[56], v0[54]);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v0[48];
    v6 = v0[41];
    v170 = MEMORY[0x277D84F90];
    sub_20CD46B04(0, v3, 0);
    v4 = v170;
    v7 = *(v6 + 16);
    v6 += 16;
    v155 = v2;
    v8 = v2 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v159 = *(v6 + 56);
    v163 = v7;
    v9 = (v6 - 8);
    do
    {
      v10 = v1[49];
      v11 = v1[42];
      v12 = v1[40];
      v163(v11, v8, v12);
      sub_20CD62EC4();
      (*v9)(v11, v12);
      v14 = *(v170 + 16);
      v13 = *(v170 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_20CD46B04(v13 > 1, v14 + 1, 1);
      }

      v15 = v1[49];
      v16 = v1[47];
      *(v170 + 16) = v14 + 1;
      (*(v5 + 32))(v170 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v15, v16);
      v8 += v159;
      --v3;
    }

    while (v3);
    v2 = v155;
  }

  v17 = v1[47];
  v18 = v1[48];
  v19 = v1;
  v20 = v1[46];
  sub_20CD3F9E0(v4, v20);

  if ((*(v18 + 48))(v20, 1, v17) == 1)
  {
    v21 = v1[46];

    sub_20CD1DA10(v21, &qword_27C810DE0, &unk_20CD64800);
LABEL_9:
    (*(*(v19[57] - 8) + 56))(v19[3], 1, 1);
    v22 = v19[56];
    v23 = v19[52];
    v24 = v19[53];
    v26 = v19[50];
    v25 = v19[51];
    v27 = v19[49];
    v29 = v19[45];
    v28 = v19[46];
    v30 = v19[43];
    v31 = v19[44];
    v106 = v19[42];
    v109 = v19[39];
    v113 = v19[38];
    v116 = v19[37];
    v118 = v19[36];
    v121 = v19[33];
    v123 = v19[30];
    v126 = v19[29];
    v128 = v19[28];
    v130 = v19[27];
    v132 = v19[24];
    v134 = v19[21];
    v137 = v19[20];
    v140 = v19[19];
    v142 = v19[18];
    v144 = v19[15];
    v146 = v19[14];
    v149 = v19[13];
    v151 = v19[12];
    v153 = v19[11];
    v156 = v19[10];
    v160 = v19[9];
    v164 = v19[8];
    v168 = v19[7];

    v32 = v19[1];
LABEL_12:

    return v32();
  }

  v33 = v1[63];
  v34 = v1[53];
  v35 = v1[39];
  v36 = v1[4];
  (*(v1[48] + 32))(v34, v1[46], v1[47]);
  v37 = swift_task_alloc();
  *(v37 + 16) = v36;
  *(v37 + 24) = v34;
  sub_20CD52264(sub_20CD42678, v2, v35);
  if (v33)
  {
    v38 = v1[53];
    v40 = v1[47];
    v39 = v1[48];

    (*(v39 + 8))(v38, v40);
    v41 = v1[56];
    v43 = v1[52];
    v42 = v1[53];
    v45 = v1[50];
    v44 = v1[51];
    v46 = v19[49];
    v47 = v19[45];
    v48 = v19[46];
    v49 = v19[43];
    v50 = v19[44];
    v104 = v19[42];
    v107 = v19[39];
    v110 = v19[38];
    v114 = v19[37];
    v117 = v19[36];
    v119 = v19[33];
    v122 = v19[30];
    v124 = v19[29];
    v127 = v19[28];
    v129 = v19[27];
    v131 = v19[24];
    v133 = v19[21];
    v135 = v19[20];
    v138 = v19[19];
    v141 = v19[18];
    v143 = v19[15];
    v145 = v19[14];
    v147 = v19[13];
    v150 = v19[12];
    v152 = v19[11];
    v154 = v19[10];
    v157 = v19[9];
    v161 = v19[8];
    v165 = v19[7];

    v32 = v19[1];
    goto LABEL_12;
  }

  v53 = v1[40];
  v52 = v1[41];
  v54 = v19[39];

  v55 = *(v52 + 48);
  v56 = v55(v54, 1, v53);
  v57 = v19[53];
  if (v56 == 1)
  {
    v58 = v19[47];
    v59 = v19[48];
    v60 = v19[39];
LABEL_17:

    sub_20CD1DA10(v60, &qword_27C810F68, &unk_20CD649F0);
    (*(v59 + 8))(v57, v58);
    goto LABEL_9;
  }

  v61 = v19[38];
  v62 = v19[4];
  v63 = *(v19[41] + 32);
  (v63)(v19[45], v19[39], v19[40]);
  v64 = swift_task_alloc();
  *(v64 + 16) = v62;
  *(v64 + 24) = v57;
  sub_20CD52264(sub_20CD426C0, v2, v61);
  v65 = v19[40];
  v66 = v19[38];

  v67 = v55(v66, 1, v65);
  v57 = v19[53];
  if (v67 == 1)
  {
    v58 = v19[47];
    v59 = v19[48];
    v60 = v19[38];
    (*(v19[41] + 8))(v19[45], v19[40]);
    goto LABEL_17;
  }

  v166 = v19[40];
  v68 = v19[37];
  v63(v19[44], v19[38]);
  *(swift_task_alloc() + 16) = v57;
  sub_20CD52264(sub_20CD42708, v2, v68);

  v69 = v55(v68, 1, v166);
  v70 = v19[53];
  if (v69 == 1)
  {
    v71 = v19[47];
    v72 = v19[48];
    v73 = v19[45];
    v74 = v19[40];
    v75 = v19[37];
    v76 = *(v19[41] + 8);
    v76(v19[44], v74);
    v76(v73, v74);
    sub_20CD1DA10(v75, &qword_27C810F68, &unk_20CD649F0);
    (*(v72 + 8))(v70, v71);
    goto LABEL_9;
  }

  v77 = v19[36];
  v78 = v19[33];
  (v63)(v19[43], v19[37], v19[40]);
  sub_20CD626C4();
  sub_20CD62A84();
  v111 = v19[45];
  v100 = v19[44];
  v105 = v19[43];
  v167 = v19[41];
  v125 = v19[40];
  v79 = v19[35];
  v80 = v19[36];
  v81 = v19[34];
  v82 = v19[30];
  v162 = v19[29];
  v98 = v19[28];
  v101 = v19[27];
  v83 = v19[25];
  v169 = v19[26];
  v85 = v19[23];
  v84 = v19[24];
  v87 = v19[21];
  v86 = v19[22];
  v97 = v19[20];
  v99 = v19[19];
  v102 = v19[18];
  v103 = (v19[4] + *(v19 + 140));
  (*(v19[32] + 8))(v19[33], v19[31]);
  v158 = *(v79 + 16);
  v158(v84, v80, v81);
  v148 = *(v85 + 104);
  v148(v84, *MEMORY[0x277D0A2D0], v86);
  v139 = sub_20CD62A04();
  v136 = *(*(v139 - 8) + 56);
  v108 = v87;
  v136(v87, 1, 1, v139);
  sub_20CD629F4();
  sub_20CD42728(&qword_28110F798, MEMORY[0x277D09F30]);
  sub_20CD632F4();
  sub_20CD62974();
  sub_20CD42728(&qword_28110F7B8, MEMORY[0x277D09EE8]);
  sub_20CD632F4();
  v88 = v82;
  sub_20CD42728(&qword_28110F7A8, MEMORY[0x277D09F18]);
  sub_20CD62B04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F70, &qword_20CD64A00);
  v120 = *(v167 + 72);
  v89 = (*(v167 + 80) + 32) & ~*(v167 + 80);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_20CD64880;
  v167 += 16;
  v115 = *v167;
  (*v167)(v90 + v89, v111, v125);
  v112 = *(v169 + 16);
  v112(v162, v88, v83);
  sub_20CD62BB4();
  v158(v84, v80, v81);
  v148(v84, *MEMORY[0x277D0A2B0], v86);
  v136(v108, 1, 1, v139);
  sub_20CD632F4();
  sub_20CD632F4();
  sub_20CD62B04();
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_20CD64880;
  v115(v91 + v89, v100, v125);
  v112(v162, v98, v83);
  sub_20CD62BB4();
  v158(v84, v80, v81);
  v148(v84, *MEMORY[0x277D0A290], v86);
  v136(v108, 1, 1, v139);
  sub_20CD632F4();
  sub_20CD632F4();
  sub_20CD62B04();
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_20CD64880;
  v115(v92 + v89, v105, v125);
  v112(v162, v101, v83);
  sub_20CD62BB4();
  v93 = *__swift_project_boxed_opaque_existential_1(v103, v103[3]);
  v94 = swift_task_alloc();
  v19[64] = v94;
  *v94 = v19;
  v94[1] = sub_20CD3E670;
  v95 = v19[20];
  v96 = v19[15];

  return sub_20CD18540(v96, v95);
}

uint64_t sub_20CD3E670()
{
  v2 = *(*v1 + 512);
  v5 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = sub_20CD427C8;
  }

  else
  {
    v3 = sub_20CD3E784;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CD3E784()
{
  v1 = (*(v0 + 32) + *(v0 + 560));
  v2 = *__swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = swift_task_alloc();
  *(v0 + 528) = v3;
  *v3 = v0;
  v3[1] = sub_20CD3E848;
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);

  return sub_20CD18540(v5, v4);
}

uint64_t sub_20CD3E848()
{
  v2 = *(*v1 + 528);
  v5 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v3 = sub_20CD3EB34;
  }

  else
  {
    v3 = sub_20CD3E95C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CD3E95C()
{
  v1 = (*(v0 + 32) + *(v0 + 560));
  v2 = *__swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = swift_task_alloc();
  *(v0 + 544) = v3;
  *v3 = v0;
  v3[1] = sub_20CD3EA20;
  v4 = *(v0 + 144);
  v5 = *(v0 + 104);

  return sub_20CD18540(v5, v4);
}

uint64_t sub_20CD3EA20()
{
  v2 = *(*v1 + 544);
  v5 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v3 = sub_20CD3F660;
  }

  else
  {
    v3 = sub_20CD3EE98;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CD3EB34()
{
  v58 = v0[47];
  v60 = v0[53];
  v54 = v0[45];
  v56 = v0[48];
  v50 = v0[43];
  v52 = v0[44];
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[35];
  v48 = v0[36];
  v44 = v0[30];
  v46 = v0[34];
  v4 = v0[25];
  v5 = v0[26];
  v40 = v0[28];
  v42 = v0[20];
  v36 = v0[27];
  v38 = v0[19];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[16];
  sub_20CD1DA10(v0[15], &qword_27C810DC0, &qword_20CD64518);
  v9 = *(v6 + 8);
  v9(v7, v8);
  v10 = *(v5 + 8);
  v10(v36, v4);
  v9(v38, v8);
  v10(v40, v4);
  v9(v42, v8);
  v10(v44, v4);
  (*(v3 + 8))(v48, v46);
  v11 = *(v2 + 8);
  v11(v50, v1);
  v11(v52, v1);
  v11(v54, v1);
  (*(v56 + 8))(v60, v58);
  v61 = v0[67];
  v12 = v0[56];
  v14 = v0[52];
  v13 = v0[53];
  v16 = v0[50];
  v15 = v0[51];
  v17 = v0[49];
  v19 = v0[45];
  v18 = v0[46];
  v20 = v0[43];
  v21 = v0[44];
  v24 = v0[42];
  v25 = v0[39];
  v26 = v0[38];
  v27 = v0[37];
  v28 = v0[36];
  v29 = v0[33];
  v30 = v0[30];
  v31 = v0[29];
  v32 = v0[28];
  v33 = v0[27];
  v34 = v0[24];
  v35 = v0[21];
  v37 = v0[20];
  v39 = v0[19];
  v41 = v0[18];
  v43 = v0[15];
  v45 = v0[14];
  v47 = v0[13];
  v49 = v0[12];
  v51 = v0[11];
  v53 = v0[10];
  v55 = v0[9];
  v57 = v0[8];
  v59 = v0[7];

  v22 = v0[1];

  return v22();
}

uint64_t sub_20CD3EE98()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v0[48] + 16);
  v5(v0[52], v0[53], v0[47]);
  sub_20CD1D9A8(v1, v2, &qword_27C810DC0, &qword_20CD64518);
  v6 = *(v4 + 48);
  v102 = v6;
  if (v6(v2, 1, v3) == 1)
  {
    v7 = v0[53];
    v9 = v0[50];
    v8 = v0[51];
    v10 = v0[47];
    v11 = v0[45];
    v93 = v0[9];
    v97 = v0[12];
    v12 = v0[5];
    sub_20CD62EE4();
    v5(v9, v7, v10);
    sub_20CD42728(&qword_28110F7C8, MEMORY[0x277D09EE0]);
    v6 = v102;
    sub_20CD62C74();
    if (v102(v97, 1, v12) != 1)
    {
      sub_20CD1DA10(v0[12], &qword_27C810DC0, &qword_20CD64518);
    }
  }

  else
  {
    (*(v0[6] + 32))(v0[9], v0[12], v0[5]);
  }

  v13 = v0[11];
  v14 = v0[5];
  sub_20CD1D9A8(v0[14], v13, &qword_27C810DC0, &qword_20CD64518);
  if (v6(v13, 1, v14) == 1)
  {
    v15 = v0[53];
    v17 = v0[50];
    v16 = v0[51];
    v18 = v0[47];
    v19 = v0[44];
    v94 = v0[8];
    v98 = v0[11];
    v20 = v0[5];
    sub_20CD62EE4();
    v5(v17, v15, v18);
    sub_20CD42728(&qword_28110F7C8, MEMORY[0x277D09EE0]);
    v6 = v102;
    sub_20CD62C74();
    if (v102(v98, 1, v20) != 1)
    {
      sub_20CD1DA10(v0[11], &qword_27C810DC0, &qword_20CD64518);
    }
  }

  else
  {
    (*(v0[6] + 32))(v0[8], v0[11], v0[5]);
  }

  v21 = v0[10];
  v22 = v0[5];
  sub_20CD1D9A8(v0[13], v21, &qword_27C810DC0, &qword_20CD64518);
  if (v6(v21, 1, v22) == 1)
  {
    v23 = v0[53];
    v24 = v0[50];
    v25 = v0[47];
    v26 = v5;
    v99 = v0[10];
    v27 = v0[7];
    v28 = v0[5];
    v26(v0[51], v23, v25);
    v26(v24, v23, v25);
    sub_20CD42728(&qword_28110F7C8, MEMORY[0x277D09EE0]);
    sub_20CD62C74();
    if (v102(v99, 1, v28) != 1)
    {
      sub_20CD1DA10(v0[10], &qword_27C810DC0, &qword_20CD64518);
    }
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[10], v0[5]);
  }

  v30 = v0[57];
  v29 = v0[58];
  v31 = v0[52];
  v100 = v0[47];
  v103 = v0[53];
  v91 = v0[45];
  v95 = v0[48];
  v87 = v0[43];
  v89 = v0[44];
  v32 = v0[41];
  v85 = v0[40];
  v79 = v0[34];
  v81 = v0[36];
  v75 = v0[30];
  v77 = v0[35];
  v33 = v0[25];
  v34 = v0[26];
  v71 = v0[28];
  v73 = v0[20];
  v67 = v0[27];
  v69 = v0[19];
  v35 = v0[17];
  v36 = v0[16];
  v63 = v0[15];
  v65 = v0[18];
  v37 = v0[13];
  v61 = v0[14];
  v39 = v0[8];
  v38 = v0[9];
  v40 = v0[7];
  v83 = v0[3];
  sub_20CD62F34();
  sub_20CD1DA10(v37, &qword_27C810DC0, &qword_20CD64518);
  sub_20CD1DA10(v61, &qword_27C810DC0, &qword_20CD64518);
  sub_20CD1DA10(v63, &qword_27C810DC0, &qword_20CD64518);
  v41 = *(v35 + 8);
  v41(v65, v36);
  v42 = *(v34 + 8);
  v42(v67, v33);
  v41(v69, v36);
  v42(v71, v33);
  v41(v73, v36);
  v42(v75, v33);
  (*(v77 + 8))(v81, v79);
  v43 = *(v32 + 8);
  v43(v87, v85);
  v43(v89, v85);
  v43(v91, v85);
  (*(*(v30 - 8) + 56))(v83, 0, 1, v30);
  (*(v95 + 8))(v103, v100);
  v44 = v0[56];
  v45 = v0[52];
  v46 = v0[53];
  v48 = v0[50];
  v47 = v0[51];
  v49 = v0[49];
  v51 = v0[45];
  v50 = v0[46];
  v52 = v0[43];
  v53 = v0[44];
  v56 = v0[42];
  v57 = v0[39];
  v58 = v0[38];
  v59 = v0[37];
  v60 = v0[36];
  v62 = v0[33];
  v64 = v0[30];
  v66 = v0[29];
  v68 = v0[28];
  v70 = v0[27];
  v72 = v0[24];
  v74 = v0[21];
  v76 = v0[20];
  v78 = v0[19];
  v80 = v0[18];
  v82 = v0[15];
  v84 = v0[14];
  v86 = v0[13];
  v88 = v0[12];
  v90 = v0[11];
  v92 = v0[10];
  v96 = v0[9];
  v101 = v0[8];
  v104 = v0[7];

  v54 = v0[1];

  return v54();
}

uint64_t sub_20CD3F660()
{
  v59 = v0[47];
  v61 = v0[53];
  v55 = v0[45];
  v57 = v0[48];
  v51 = v0[43];
  v53 = v0[44];
  v1 = v0[41];
  v49 = v0[40];
  v2 = v0[35];
  v45 = v0[34];
  v47 = v0[36];
  v3 = v0[25];
  v4 = v0[26];
  v41 = v0[20];
  v43 = v0[30];
  v37 = v0[19];
  v39 = v0[28];
  v33 = v0[18];
  v35 = v0[27];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  sub_20CD1DA10(v0[14], &qword_27C810DC0, &qword_20CD64518);
  sub_20CD1DA10(v7, &qword_27C810DC0, &qword_20CD64518);
  v8 = *(v5 + 8);
  v8(v33, v6);
  v9 = *(v4 + 8);
  v9(v35, v3);
  v8(v37, v6);
  v9(v39, v3);
  v8(v41, v6);
  v9(v43, v3);
  (*(v2 + 8))(v47, v45);
  v10 = *(v1 + 8);
  v10(v51, v49);
  v10(v53, v49);
  v10(v55, v49);
  (*(v57 + 8))(v61, v59);
  v62 = v0[69];
  v11 = v0[56];
  v13 = v0[52];
  v12 = v0[53];
  v15 = v0[50];
  v14 = v0[51];
  v16 = v0[49];
  v18 = v0[45];
  v17 = v0[46];
  v19 = v0[43];
  v20 = v0[44];
  v23 = v0[42];
  v24 = v0[39];
  v25 = v0[38];
  v26 = v0[37];
  v27 = v0[36];
  v28 = v0[33];
  v29 = v0[30];
  v30 = v0[29];
  v31 = v0[28];
  v32 = v0[27];
  v34 = v0[24];
  v36 = v0[21];
  v38 = v0[20];
  v40 = v0[19];
  v42 = v0[18];
  v44 = v0[15];
  v46 = v0[14];
  v48 = v0[13];
  v50 = v0[12];
  v52 = v0[11];
  v54 = v0[10];
  v56 = v0[9];
  v58 = v0[8];
  v60 = v0[7];

  v21 = v0[1];

  return v21();
}

uint64_t sub_20CD3F9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20CD62AB4();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_20CD42728(&qword_28110F778, MEMORY[0x277D09F70]);
        v21 = sub_20CD63204();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_20CD3FC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(char *, uint64_t))
{
  v23 = a5;
  v22 = a3;
  v7 = sub_20CD62AB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  v15 = sub_20CD62EE4();
  v16 = v14;
  v17 = a4(v15);
  if (v5)
  {
    (*(v8 + 8))(v14, v7);
  }

  else
  {
    v18 = v17;
    v19 = *(v8 + 8);
    v19(v14, v7);
    if (v18)
    {
      sub_20CD62EE4();
      v16 = v23(v12, v22);
      v19(v12, v7);
    }

    else
    {
      v16 = 0;
    }
  }

  return v16 & 1;
}

BOOL sub_20CD3FE54()
{
  v0 = sub_20CD62AB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CD62EE4();
  sub_20CD42728(&qword_28110F768, MEMORY[0x277D09F70]);
  sub_20CD632D4();
  sub_20CD632D4();
  (*(v1 + 8))(v4, v0);
  return v6[3] == v6[1];
}

uint64_t sub_20CD3FFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_20CD3FFD0, 0, 0);
}

uint64_t sub_20CD3FFD0()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) invalidate];
  v2 = *(type metadata accessor for SnapshotProcessor() + 20);
  *(v0 + 48) = v2;
  v3 = *__swift_project_boxed_opaque_existential_1((v1 + v2), *(v1 + v2 + 24));
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_20CD4008C;

  return sub_20CD2616C();
}

uint64_t sub_20CD4008C()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20CD40188, 0, 0);
}

uint64_t sub_20CD40188()
{
  v1 = (*(v0 + 24) + *(v0 + 48));
  v2 = *__swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_20CD4022C;

  return sub_20CD266A8();
}

uint64_t sub_20CD4022C()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20CD40320(void **a1)
{
  v2 = *(sub_20CD62EF4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20CD41E40(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_20CD403C8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_20CD403C8(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_20CD63564();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20CD62EF4();
        v6 = sub_20CD63304();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20CD62EF4() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_20CD40894(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_20CD404F4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20CD404F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_20CD62AB4();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v62);
  v61 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v43 - v12;
  v13 = sub_20CD62EF4();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = &v43 - v18;
  result = MEMORY[0x28223BE20](v17);
  v58 = &v43 - v21;
  v45 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v55 = (v8 + 8);
    v56 = v24;
    v54 = (v23 - 8);
    v57 = v23;
    v26 = (v22 + v25 * (a3 - 1));
    v50 = -v25;
    v51 = (v23 + 16);
    v27 = a1 - a3;
    v52 = v22;
    v44 = v25;
    v28 = v22 + v25 * a3;
    v29 = v60;
LABEL_5:
    v48 = v26;
    v49 = a3;
    v46 = v28;
    v47 = v27;
    v63 = v27;
    while (1)
    {
      v30 = v58;
      v31 = v56;
      v56(v58, v28, v13);
      v32 = v13;
      v33 = v59;
      v31(v59, v26, v32);
      sub_20CD62EE4();
      v34 = v61;
      sub_20CD62EE4();
      v64 = sub_20CD62A64();
      v35 = *v55;
      v36 = v34;
      v37 = v62;
      (*v55)(v36, v62);
      v35(v29, v37);
      v38 = *v54;
      v39 = v33;
      v13 = v32;
      (*v54)(v39, v32);
      result = v38(v30, v32);
      if ((v64 & 1) == 0)
      {
LABEL_4:
        a3 = v49 + 1;
        v26 = &v48[v44];
        v27 = v47 - 1;
        v28 = v46 + v44;
        if (v49 + 1 == v45)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v52)
      {
        break;
      }

      v40 = *v51;
      v41 = v53;
      (*v51)(v53, v28, v32);
      swift_arrayInitWithTakeFrontToBack();
      result = v40(v26, v41, v32);
      v26 += v50;
      v28 += v50;
      if (__CFADD__(v63++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20CD40894(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v139 = a1;
  v161 = sub_20CD62AB4();
  v8 = *(v161 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v161);
  v160 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v159 = &v135 - v12;
  v13 = sub_20CD62EF4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v16 = MEMORY[0x28223BE20](v13);
  v142 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v151 = &v135 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v158 = &v135 - v21;
  result = MEMORY[0x28223BE20](v20);
  v162 = &v135 - v23;
  v24 = *(a3 + 1);
  v147 = a3;
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_96:
    v13 = v26;
    v26 = *v139;
    if (!*v139)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v54 = v147;
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_20CD41C10(v13);
      v13 = result;
    }

    v164 = v13;
    v131 = *(v13 + 16);
    if (v131 >= 2)
    {
      while (*v54)
      {
        v132 = *(v13 + 16 * v131);
        v133 = *(v13 + 16 * (v131 - 1) + 40);
        sub_20CD41494(*v54 + *(v14 + 9) * v132, *v54 + *(v14 + 9) * *(v13 + 16 * (v131 - 1) + 32), *v54 + *(v14 + 9) * v133, v26);
        if (v5)
        {
        }

        if (v133 < v132)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_20CD41C10(v13);
        }

        if (v131 - 2 >= *(v13 + 16))
        {
          goto LABEL_122;
        }

        v134 = (v13 + 16 * v131);
        *v134 = v132;
        v134[1] = v133;
        v164 = v13;
        result = sub_20CD41B84(v131 - 1);
        v13 = v164;
        v131 = *(v164 + 16);
        if (v131 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v135 = a4;
  v25 = 0;
  v155 = (v8 + 8);
  v156 = v14 + 16;
  v153 = (v14 + 32);
  v154 = v14 + 8;
  v26 = MEMORY[0x277D84F90];
  v157 = v13;
  v138 = v14;
  while (1)
  {
    v27 = v25 + 1;
    if (v25 + 1 >= v24)
    {
      v43 = v25 + 1;
      v54 = v147;
    }

    else
    {
      v148 = v24;
      v136 = v26;
      v137 = v5;
      v28 = v25;
      v140 = v25;
      v29 = *v147;
      v163 = v29;
      v30 = *(v14 + 9);
      v31 = (v29 + v30 * v27);
      v32 = v13;
      v33 = *(v14 + 2);
      (v33)(v162, v31, v13);
      v34 = v158;
      v149 = v33;
      (v33)(v158, v29 + v30 * v28, v32);
      v35 = v159;
      sub_20CD62EE4();
      v36 = v160;
      sub_20CD62EE4();
      LODWORD(v150) = sub_20CD62A64();
      v37 = *v155;
      v38 = v36;
      v39 = v161;
      (*v155)(v38, v161);
      v146 = v37;
      (v37)(v35, v39);
      v40 = *(v138 + 1);
      v26 = v154;
      v40(v34, v32);
      v145 = v40;
      result = (v40)(v162, v32);
      v41 = v140 + 2;
      v152 = v30;
      v42 = v163 + v30 * (v140 + 2);
      while (1)
      {
        v43 = v148;
        if (v148 == v41)
        {
          break;
        }

        v44 = v157;
        v45 = v149;
        v149();
        v46 = v158;
        v45(v158, v31, v44);
        v47 = v159;
        sub_20CD62EE4();
        v48 = v160;
        sub_20CD62EE4();
        LOBYTE(v163) = sub_20CD62A64() & 1;
        LODWORD(v163) = v163;
        v49 = v48;
        v50 = v161;
        v51 = v31;
        v52 = v146;
        (v146)(v49, v161);
        v52(v47, v50);
        v26 = v154;
        v53 = v145;
        (v145)(v46, v44);
        result = v53(v162, v44);
        ++v41;
        v42 += v152;
        v31 = &v152[v51];
        if ((v150 & 1) != v163)
        {
          v43 = v41 - 1;
          goto LABEL_9;
        }
      }

      v5 = v137;
      v54 = v147;
      v14 = v138;
      v13 = v157;
      v25 = v140;
      if ((v150 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v43 < v140)
      {
        goto LABEL_125;
      }

      if (v140 < v43)
      {
        v55 = v43;
        v56 = v152 * (v43 - 1);
        v57 = v43 * v152;
        v148 = v43;
        v58 = v140;
        v59 = v140 * v152;
        do
        {
          if (v58 != --v55)
          {
            v60 = *v54;
            if (!v60)
            {
              goto LABEL_131;
            }

            v61 = *v153;
            (*v153)(v142, v60 + v59, v13);
            if (v59 < v56 || v60 + v59 >= (v60 + v57))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v56)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v61)(v60 + v56, v142, v13);
            v54 = v147;
          }

          ++v58;
          v56 -= v152;
          v57 -= v152;
          v59 += v152;
        }

        while (v58 < v55);
        v5 = v137;
        v14 = v138;
        v26 = v136;
        v25 = v140;
        v43 = v148;
      }

      else
      {
LABEL_23:
        v26 = v136;
      }
    }

    v62 = *(v54 + 1);
    if (v43 < v62)
    {
      if (__OFSUB__(v43, v25))
      {
        goto LABEL_124;
      }

      if (v43 - v25 < v135)
      {
        if (__OFADD__(v25, v135))
        {
          goto LABEL_126;
        }

        if (v25 + v135 >= v62)
        {
          v63 = *(v54 + 1);
        }

        else
        {
          v63 = v25 + v135;
        }

        if (v63 < v25)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v43 != v63)
        {
          break;
        }
      }
    }

    v64 = v43;
    if (v43 < v25)
    {
      goto LABEL_123;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20CD41D3C(0, *(v26 + 2) + 1, 1, v26);
      v26 = result;
    }

    v66 = *(v26 + 2);
    v65 = *(v26 + 3);
    v67 = v66 + 1;
    v54 = v14;
    if (v66 >= v65 >> 1)
    {
      result = sub_20CD41D3C((v65 > 1), v66 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 2) = v67;
    v68 = &v26[16 * v66];
    *(v68 + 4) = v25;
    *(v68 + 5) = v64;
    v69 = *v139;
    if (!*v139)
    {
      goto LABEL_133;
    }

    v143 = v64;
    if (v66)
    {
      v14 = v69;
      while (1)
      {
        v70 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v71 = *(v26 + 4);
          v72 = *(v26 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_55:
          if (v74)
          {
            goto LABEL_112;
          }

          v87 = &v26[16 * v67];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_115;
          }

          v93 = &v26[16 * v70 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_119;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              v70 = v67 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v97 = &v26[16 * v67];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_69:
        if (v92)
        {
          goto LABEL_114;
        }

        v100 = &v26[16 * v70];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_117;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_76:
        v108 = v70 - 1;
        if (v70 - 1 >= v67)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v147)
        {
          goto LABEL_130;
        }

        v109 = *&v26[16 * v108 + 32];
        v110 = *&v26[16 * v70 + 40];
        sub_20CD41494(*v147 + *(v54 + 9) * v109, *v147 + *(v54 + 9) * *&v26[16 * v70 + 32], *v147 + *(v54 + 9) * v110, v14);
        if (v5)
        {
        }

        if (v110 < v109)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_20CD41C10(v26);
        }

        if (v108 >= *(v26 + 2))
        {
          goto LABEL_109;
        }

        v111 = &v26[16 * v108];
        *(v111 + 4) = v109;
        *(v111 + 5) = v110;
        v164 = v26;
        result = sub_20CD41B84(v70);
        v26 = v164;
        v67 = *(v164 + 16);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v26[16 * v67 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_110;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_111;
      }

      v82 = &v26[16 * v67];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_113;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_116;
      }

      if (v86 >= v78)
      {
        v104 = &v26[16 * v70 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_120;
        }

        if (v73 < v107)
        {
          v70 = v67 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v24 = *(v147 + 1);
    v25 = v143;
    v14 = v54;
    if (v143 >= v24)
    {
      goto LABEL_96;
    }
  }

  v136 = v26;
  v137 = v5;
  v112 = *v54;
  v113 = *(v14 + 9);
  v152 = *(v14 + 2);
  v114 = (v112 + v113 * (v43 - 1));
  v149 = -v113;
  v140 = v25;
  v115 = (v25 - v43);
  v150 = v112;
  v141 = v113;
  v116 = v112 + v43 * v113;
  v143 = v63;
LABEL_87:
  v148 = v43;
  v144 = v116;
  v145 = v115;
  v117 = v116;
  v146 = v114;
  v118 = v114;
  while (1)
  {
    v54 = v162;
    v119 = v152;
    (v152)(v162, v117, v13);
    v120 = v158;
    v119(v158, v118, v13);
    v121 = v159;
    sub_20CD62EE4();
    v122 = v160;
    sub_20CD62EE4();
    LODWORD(v163) = sub_20CD62A64();
    v123 = *v155;
    v124 = v122;
    v125 = v161;
    (*v155)(v124, v161);
    v126 = v121;
    v13 = v157;
    v123(v126, v125);
    v127 = *v154;
    (*v154)(v120, v13);
    result = v127(v54, v13);
    if ((v163 & 1) == 0)
    {
LABEL_86:
      v43 = v148 + 1;
      v114 = &v146[v141];
      v115 = v145 - 1;
      v64 = v143;
      v116 = v144 + v141;
      if (v148 + 1 != v143)
      {
        goto LABEL_87;
      }

      v5 = v137;
      v14 = v138;
      v26 = v136;
      v25 = v140;
      if (v143 < v140)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v150)
    {
      break;
    }

    v128 = *v153;
    v129 = v151;
    (*v153)(v151, v117, v13);
    swift_arrayInitWithTakeFrontToBack();
    v128(v118, v129, v13);
    v118 = v149 + v118;
    v117 += v149;
    if (__CFADD__(v115++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_20CD41494(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v75 = a3;
  v70 = sub_20CD62AB4();
  v7 = *(v70 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v70);
  v69 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v58 - v11;
  v74 = sub_20CD62EF4();
  v12 = *(v74 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v74);
  v67 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v72 = &v58 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v20 = v75 - a2;
  if (v75 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_62;
  }

  v21 = (a2 - a1) / v19;
  v78 = a1;
  v77 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v23;
    if (v23 >= 1)
    {
      v41 = -v19;
      v62 = (v7 + 8);
      v63 = (v12 + 16);
      v60 = a4;
      v61 = (v12 + 8);
      v42 = v40;
      v73 = a1;
      v64 = -v19;
      v43 = v74;
      while (2)
      {
        while (1)
        {
          v58 = v40;
          v44 = a2;
          v45 = a2 + v41;
          v65 = v44;
          v66 = v45;
          while (1)
          {
            v46 = v75;
            if (v44 <= a1)
            {
              v78 = v44;
              v76 = v58;
              goto LABEL_59;
            }

            v59 = v40;
            v75 += v41;
            v47 = v42 + v41;
            v48 = *v63;
            (*v63)();
            v49 = v67;
            (v48)(v67, v45, v43);
            v50 = v68;
            sub_20CD62EE4();
            v51 = v69;
            sub_20CD62EE4();
            v71 = sub_20CD62A64();
            v52 = *v62;
            v53 = v51;
            v54 = v70;
            (*v62)(v53, v70);
            v52(v50, v54);
            v55 = *v61;
            (*v61)(v49, v43);
            v55(v72, v43);
            if (v71)
            {
              break;
            }

            v40 = v47;
            v56 = v60;
            if (v46 < v42 || v75 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v66;
              v41 = v64;
            }

            else
            {
              v45 = v66;
              v41 = v64;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v47;
            a1 = v73;
            v44 = v65;
            if (v47 <= v56)
            {
              a2 = v65;
              goto LABEL_58;
            }
          }

          v57 = v60;
          if (v46 < v65 || v75 >= v65)
          {
            break;
          }

          a2 = v66;
          a1 = v73;
          v40 = v59;
          v41 = v64;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_58;
          }
        }

        a2 = v66;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v73;
        v40 = v59;
        v41 = v64;
        if (v42 > v57)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v78 = a2;
    v76 = v40;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v66 = a4 + v22;
    v76 = a4 + v22;
    if (v22 >= 1 && a2 < v75)
    {
      v25 = *(v12 + 16);
      v62 = (v7 + 8);
      v63 = v25;
      v64 = v19;
      v65 = v12 + 16;
      v61 = (v12 + 8);
      v26 = v74;
      do
      {
        v73 = a1;
        v27 = v72;
        v28 = v63;
        (v63)(v72, a2, v26);
        v29 = v67;
        (v28)(v67, a4, v26);
        v30 = v68;
        sub_20CD62EE4();
        v31 = v69;
        sub_20CD62EE4();
        v71 = sub_20CD62A64();
        v32 = a2;
        v33 = *v62;
        v34 = v31;
        v35 = a4;
        v36 = v70;
        (*v62)(v34, v70);
        v33(v30, v36);
        v37 = *v61;
        (*v61)(v29, v26);
        v37(v27, v26);
        if (v71)
        {
          v38 = v64;
          a2 = v32 + v64;
          v39 = v73;
          a4 = v35;
          if (v73 < v32 || v73 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v32;
          v38 = v64;
          a4 = v35 + v64;
          v39 = v73;
          if (v73 < v35 || v73 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v77 = a4;
        }

        a1 = v39 + v38;
        v78 = a1;
      }

      while (a4 < v66 && a2 < v75);
    }
  }

LABEL_59:
  sub_20CD41C54(&v78, &v77, &v76, MEMORY[0x277D0A558]);
  return 1;
}

uint64_t sub_20CD41B84(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20CD41C10(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_20CD41C54(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

char *sub_20CD41D3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F10, &qword_20CD64E60);
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

uint64_t sub_20CD41E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnapshotProcessor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD41ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnapshotProcessor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD41F34(uint64_t a1)
{
  v4 = *(type metadata accessor for SnapshotProcessor() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20CCEE040;

  return sub_20CD3FFB0(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for SnapshotProcessor() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = sub_20CD626F4();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[7]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[8]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[9]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[10]));

  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[12]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[13]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[14]));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20CD42178(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CCEE040;

  return sub_20CD2EB1C(a1, v4, v5, v6);
}

uint64_t sub_20CD4222C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = *(type metadata accessor for SnapshotProcessor() - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v34 = v11;
  v12 = *(v10 + 64);
  v13 = *(sub_20CD62514() - 8);
  v33 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v14 = *(v13 + 64);
  v15 = *(sub_20CD62C54() - 8);
  v16 = (v33 + v14 + *(v15 + 80)) & ~*(v15 + 80);
  v17 = *(v15 + 64);
  v18 = *(sub_20CD62654() - 8);
  v19 = (v16 + v17 + *(v18 + 80)) & ~*(v18 + 80);
  v20 = *(v18 + 64);
  v21 = *(sub_20CD62AB4() - 8);
  v22 = (v19 + v20 + *(v21 + 80)) & ~*(v21 + 80);
  v23 = (*(v21 + 64) + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v9 + 16);
  v26 = *(v9 + 24);
  v27 = *(v9 + v23);
  v28 = *(v9 + v24);
  v29 = *(v9 + v24 + 8);
  v30 = *(v9 + v24 + 9);
  v31 = swift_task_alloc();
  *(v35 + 16) = v31;
  *v31 = v35;
  v31[1] = sub_20CCEE040;

  return sub_20CD32944(a1, v25, v26, v9 + v34, v9 + v33, v9 + v16, v9 + v19, v9 + v22, a9);
}