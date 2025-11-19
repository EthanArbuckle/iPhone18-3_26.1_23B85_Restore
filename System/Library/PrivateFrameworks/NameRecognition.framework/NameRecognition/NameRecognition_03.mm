size_t NRNameConfiguration.init(config:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE80, &unk_25AEA6E80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v96 = &v82 - v6;
  v7 = type metadata accessor for NRCollectedEnrollment();
  v95 = *(v7 - 8);
  v8 = *(v95 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v82 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v93 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v92 = &v82 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v82 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v82 - v23;
  sub_25AEA0E38();
  v25 = sub_25AEA0E48();
  v26 = *(v25 - 8);
  v100 = *(v26 + 56);
  v101 = v25;
  v99 = v26 + 56;
  (v100)(a2, 0, 1);
  v27 = a1;
  v94 = v13;
  if (a1 && (v28 = [a1 humanReadableName]) != 0)
  {
    v29 = v28;
    v30 = sub_25AEA21A8();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v33 = type metadata accessor for NRNameConfiguration();
  v34 = (a2 + v33[5]);
  v35 = (a2 + v33[6]);
  v98 = v33;
  v36 = v33[7];
  *v34 = v30;
  v34[1] = v32;
  v85 = v36;
  if (!v27)
  {
    v100(v24, 1, 1, v101);
    result = sub_25AE62498(v24, a2, &qword_27FA1D380, &unk_25AEA3E80);
    *v35 = 0;
    v35[1] = 0;
LABEL_34:
    v51 = MEMORY[0x277D84F90];
LABEL_35:
    *(a2 + v85) = v51;
    return result;
  }

  v37 = [v27 identifier];
  if (v37)
  {
    v38 = v37;
    sub_25AEA0E28();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v100(v22, v39, 1, v101);
  sub_25AE62AE0(v22, v24);
  sub_25AE62498(v24, a2, &qword_27FA1D380, &unk_25AEA3E80);
  v41 = [v27 localeIdentifier];
  if (v41)
  {
    v42 = v11;
    v43 = v41;
    v44 = sub_25AEA21A8();
    v46 = v45;

    v11 = v42;
  }

  else
  {
    v44 = 0;
    v46 = 0;
  }

  *v35 = v44;
  v35[1] = v46;
  v47 = v27;
  v48 = sub_25AE6803C();

  if (!(v48 >> 62))
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v49)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

  v49 = sub_25AEA25B8();
  if (!v49)
  {
LABEL_33:

    goto LABEL_34;
  }

LABEL_15:
  v102 = MEMORY[0x277D84F90];
  result = sub_25AE8D78C(0, v49 & ~(v49 >> 63), 0);
  if ((v49 & 0x8000000000000000) == 0)
  {
    v83 = v47;
    v84 = a2;
    v50 = 0;
    v51 = v102;
    v52 = v48;
    v87 = v98 - 2;
    v88 = v48 & 0xC000000000000001;
    v86 = xmmword_25AEA5200;
    v90 = v48;
    v91 = v7;
    v89 = v49;
    do
    {
      if (v88)
      {
        v53 = MEMORY[0x25F85A1C0](v50, v52);
      }

      else
      {
        v53 = *(v52 + 8 * v50 + 32);
      }

      v54 = v53;
      v55 = v93;
      sub_25AEA0E38();
      v56 = 1;
      v100(v11, 0, 1, v101);
      v57 = &v11[*(v7 + 24)];
      *v57 = v86;
      v58 = *(*(v98 - 1) + 56);
      v97 = *(v7 + 28);
      v58(&v11[v97], 1, 1);
      v59 = [v54 identifier];
      if (v59)
      {
        v60 = v59;
        sub_25AEA0E28();

        v56 = 0;
      }

      v100(v55, v56, 1, v101);
      v61 = v55;
      v62 = v92;
      sub_25AE62AE0(v61, v92);
      v63 = v62;
      v64 = v11;
      sub_25AE62498(v63, v11, &qword_27FA1D380, &unk_25AEA3E80);
      v65 = [v54 audioData];
      if (v65)
      {
        v66 = v65;
        v67 = sub_25AEA0DE8();
        v69 = v68;
      }

      else
      {
        v67 = 0;
        v69 = 0xF000000000000000;
      }

      sub_25AE623AC(*v57, *(v57 + 1));
      *v57 = v67;
      *(v57 + 1) = v69;
      v70 = [v54 audioSourceRawValue];
      if (v70)
      {
        v71 = v70;
        v72 = sub_25AEA21A8();
        v74 = v73;
      }

      else
      {
        v72 = 0;
        v74 = 0;
      }

      v7 = v91;
      v75 = &v64[*(v91 + 20)];
      *v75 = v72;
      v75[1] = v74;
      v11 = v64;
      v76 = [v54 nameConfiguration];
      v77 = v96;
      NRNameConfiguration.init(config:)(v76);

      (v58)(v77, 0, 1, v98);
      sub_25AE62498(v77, &v64[v97], &qword_27FA1DE80, &unk_25AEA6E80);
      v78 = v64;
      v79 = v94;
      sub_25AE8D7D0(v78, v94);
      v102 = v51;
      v81 = *(v51 + 16);
      v80 = *(v51 + 24);
      if (v81 >= v80 >> 1)
      {
        sub_25AE8D78C(v80 > 1, v81 + 1, 1);
        v51 = v102;
      }

      ++v50;
      *(v51 + 16) = v81 + 1;
      sub_25AE8D7D0(v79, v51 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v81);
      v52 = v90;
    }

    while (v89 != v50);

    a2 = v84;
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for NRNameConfiguration()
{
  result = qword_27FA1E838;
  if (!qword_27FA1E838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NRNameConfiguration.init(identifier:humanReadableName:localeIdentifier:collectedEnrollments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_25AEA0E38();
  v10 = sub_25AEA0E48();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(a7, 0, 1, v10);
  v13 = type metadata accessor for NRNameConfiguration();
  v14 = (a7 + v13[5]);
  v15 = (a7 + v13[6]);
  v16 = v13[7];
  sub_25AE626EC(a7);
  (*(v11 + 32))(a7, a1, v10);
  result = (v12)(a7, 0, 1, v10);
  *v14 = a2;
  v14[1] = a3;
  *v15 = a4;
  v15[1] = a5;
  *(a7 + v16) = a6;
  return result;
}

uint64_t sub_25AE8C6E4()
{
  v1 = *v0;
  sub_25AEA28B8();
  sub_25AEA21F8();

  return sub_25AEA28D8();
}

uint64_t sub_25AE8C7B0()
{
  *v0;
  *v0;
  sub_25AEA21F8();
}

uint64_t sub_25AE8C868()
{
  v1 = *v0;
  sub_25AEA28B8();
  sub_25AEA21F8();

  return sub_25AEA28D8();
}

uint64_t sub_25AE8C930@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25AE8E620();
  *a2 = result;
  return result;
}

void sub_25AE8C960(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = 0x800000025AEA7B00;
  v5 = 0xD000000000000014;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x800000025AEA7B20;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x800000025AEA7AE0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_25AE8C9E8()
{
  v1 = 0x696669746E656469;
  v2 = 0xD000000000000014;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_25AE8CA6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25AE8E620();
  *a1 = result;
  return result;
}

uint64_t sub_25AE8CAA0(uint64_t a1)
{
  v2 = sub_25AE8D834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25AE8CADC(uint64_t a1)
{
  v2 = sub_25AE8D834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NRNameConfiguration.humanReadableName.getter()
{
  v1 = (v0 + *(type metadata accessor for NRNameConfiguration() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t NRNameConfiguration.humanReadableName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NRNameConfiguration() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NRNameConfiguration.localeIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for NRNameConfiguration() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t NRNameConfiguration.localeIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NRNameConfiguration() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NRNameConfiguration.collectedEnrollments.getter()
{
  v1 = *(v0 + *(type metadata accessor for NRNameConfiguration() + 28));
}

uint64_t NRNameConfiguration.collectedEnrollments.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NRNameConfiguration() + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t NRNameConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for NRCollectedEnrollment();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v48 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E7F0, &qword_25AEA6E90);
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - v13;
  v15 = type metadata accessor for NRNameConfiguration();
  v16 = (v15 - 8);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AEA0E38();
  v20 = sub_25AEA0E48();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v23 = (v21 + 56);
  v52 = v20;
  v22(v19, 0, 1);
  v24 = &v19[v16[7]];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v19[v16[8]];
  *v25 = 0;
  v25[1] = 0;
  v26 = v16[9];
  v57 = v19;
  *&v19[v26] = 0;
  v27 = a1;
  v28 = a1[3];
  v29 = v27[4];
  v58 = v27;
  __swift_project_boxed_opaque_existential_0(v27, v28);
  sub_25AE8D834();
  v30 = v56;
  sub_25AEA28E8();
  if (v30)
  {
    v31 = v57;
  }

  else
  {
    v56 = v23;
    v46 = v26;
    LOBYTE(v59[0]) = 0;
    sub_25AE8DAD8(&qword_27FA1DE98, MEMORY[0x277CC95F0]);
    v32 = v52;
    sub_25AEA27C8();
    v33 = v55;
    (v22)(v55, 0, 1, v32);
    v31 = v57;
    sub_25AE62498(v33, v57, &qword_27FA1D380, &unk_25AEA3E80);
    LOBYTE(v59[0]) = 1;
    *v24 = sub_25AEA27B8();
    v24[1] = v34;
    LOBYTE(v59[0]) = 2;
    *v25 = sub_25AEA27B8();
    v25[1] = v36;
    v61 = 3;
    sub_25AEA27A8();
    v56 = v14;
    __swift_project_boxed_opaque_existential_0(v59, v60);
    v37 = sub_25AEA2818();
    v38 = MEMORY[0x277D84F90];
    if (v37)
    {
      v39 = v46;
    }

    else
    {
      v40 = v51;
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
        sub_25AE8DAD8(&qword_27FA1E800, type metadata accessor for NRCollectedEnrollment);
        sub_25AEA2808();
        v41 = v48;
        sub_25AE8D938(v40, v48, type metadata accessor for NRCollectedEnrollment);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_25AE5B7F4(0, v38[2] + 1, 1, v38);
        }

        v42 = v49;
        v44 = v38[2];
        v43 = v38[3];
        if (v44 >= v43 >> 1)
        {
          v38 = sub_25AE5B7F4(v43 > 1, v44 + 1, 1, v38);
        }

        v40 = v51;
        sub_25AE8D8D8(v51, type metadata accessor for NRCollectedEnrollment);
        v38[2] = v44 + 1;
        sub_25AE8D7D0(v41, v38 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v44);
        __swift_project_boxed_opaque_existential_0(v59, v60);
        v45 = sub_25AEA2818();
        v39 = v46;
      }

      while ((v45 & 1) == 0);
    }

    (*(v53 + 8))(v56, v54);
    *(v31 + v39) = v38;
    __swift_destroy_boxed_opaque_existential_0(v59);
    sub_25AE8D938(v31, v47, type metadata accessor for NRNameConfiguration);
  }

  __swift_destroy_boxed_opaque_existential_0(v58);
  return sub_25AE8D8D8(v31, type metadata accessor for NRNameConfiguration);
}

uint64_t NRNameConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E808, &unk_25AEA6E98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25AE8D834();
  sub_25AEA28F8();
  LOBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  sub_25AE632AC();
  sub_25AEA27E8();
  if (!v2)
  {
    v11 = type metadata accessor for NRNameConfiguration();
    v13 = *(v3 + v11[5]);
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D388, &qword_25AEA5220);
    sub_25AE63390();
    sub_25AEA27E8();
    v13 = *(v3 + v11[6]);
    v14 = 2;
    sub_25AEA27E8();
    *&v13 = *(v3 + v11[7]);
    v14 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E810, &qword_25AEA6EA8);
    sub_25AE8D9A0();
    sub_25AEA27E8();
  }

  return (*(v6 + 8))(v9, v5);
}

size_t sub_25AE8D6E4(size_t a1, int64_t a2, char a3)
{
  result = sub_25AE8E22C(a1, a2, a3, *v3, &qword_27FA1E878, &qword_25AEA70A0, MEMORY[0x277D797F0]);
  *v3 = result;
  return result;
}

size_t sub_25AE8D728(size_t a1, int64_t a2, char a3)
{
  result = sub_25AE8E22C(a1, a2, a3, *v3, &qword_27FA1E870, &qword_25AEA7098, MEMORY[0x277D797D0]);
  *v3 = result;
  return result;
}

char *sub_25AE8D76C(char *a1, int64_t a2, char a3)
{
  result = sub_25AE8E128(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25AE8D78C(size_t a1, int64_t a2, char a3)
{
  result = sub_25AE8E22C(a1, a2, a3, *v3, &qword_27FA1DC10, &qword_25AEA4BF8, type metadata accessor for NRCollectedEnrollment);
  *v3 = result;
  return result;
}

uint64_t sub_25AE8D7D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NRCollectedEnrollment();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25AE8D834()
{
  result = qword_27FA1E7F8;
  if (!qword_27FA1E7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E7F8);
  }

  return result;
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

uint64_t sub_25AE8D8D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25AE8D938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25AE8D9A0()
{
  result = qword_27FA1E818;
  if (!qword_27FA1E818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E810, &qword_25AEA6EA8);
    sub_25AE8DA24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E818);
  }

  return result;
}

unint64_t sub_25AE8DA24()
{
  result = qword_27FA1E820;
  if (!qword_27FA1E820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E828, &qword_25AEA6EB0);
    sub_25AE8DAD8(&qword_27FA1E830, type metadata accessor for NRCollectedEnrollment);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E820);
  }

  return result;
}

uint64_t sub_25AE8DAD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25AE8DB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_25AE8DC20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_25AE8DCE8()
{
  sub_25AE8DD84();
  if (v0 <= 0x3F)
  {
    sub_25AE8DDDC();
    if (v1 <= 0x3F)
    {
      sub_25AE8DE2C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25AE8DD84()
{
  if (!qword_27FA1DEF0)
  {
    sub_25AEA0E48();
    v0 = sub_25AEA2538();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA1DEF0);
    }
  }
}

void sub_25AE8DDDC()
{
  if (!qword_27FA1DEF8)
  {
    v0 = sub_25AEA2538();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA1DEF8);
    }
  }
}

void sub_25AE8DE2C()
{
  if (!qword_27FA1E848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E828, &qword_25AEA6EB0);
    v0 = sub_25AEA2538();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA1E848);
    }
  }
}

uint64_t getEnumTagSinglePayload for NRNameConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NRNameConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25AE8DFE4()
{
  result = qword_27FA1E850;
  if (!qword_27FA1E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E850);
  }

  return result;
}

unint64_t sub_25AE8E03C()
{
  result = qword_27FA1E858;
  if (!qword_27FA1E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E858);
  }

  return result;
}

unint64_t sub_25AE8E094()
{
  result = qword_27FA1E860;
  if (!qword_27FA1E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E860);
  }

  return result;
}

char *sub_25AE8E0E8(char *a1, int64_t a2, char a3)
{
  result = sub_25AE8E408(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25AE8E108(char *a1, int64_t a2, char a3)
{
  result = sub_25AE8E514(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25AE8E128(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E868, &qword_25AEA7090);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

size_t sub_25AE8E22C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_25AE8E408(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC08, &qword_25AEA4BF0);
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

char *sub_25AE8E514(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E880, &qword_25AEA70A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25AE8E620()
{
  v0 = sub_25AEA2798();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25AE8E698@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v35 = a1;
  v38 = a2;
  v2 = sub_25AEA1238();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3A8, &qword_25AEA3B18);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v39 = v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E888, &qword_25AEA7130);
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v10);
  v34 = v33 - v12;
  v13 = [objc_opt_self() currentDevice];
  [v13 userInterfaceIdiom];

  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v14 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v15 = qword_27FA22788;
  }

  else
  {
    v15 = [objc_opt_self() mainBundle];
    v14 = 0;
  }

  v16 = v14;
  v17 = sub_25AEA0CC8();
  v19 = v18;

  v40 = v17;
  v41 = v19;
  v20 = sub_25AEA2278();
  v33[2] = v21;
  v33[3] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3B8, &unk_25AEA4000);
  v22 = *(v3 + 72);
  v23 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_25AEA3540;
  sub_25AEA1208();
  v40 = v24;
  sub_25AE643C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3C8, &qword_25AEA3B80);
  sub_25AE47F60(&qword_27FA1D3D0, &qword_27FA1D3C8, &qword_25AEA3B80);
  sub_25AEA2578();
  sub_25AEA1F38();
  v25 = (*(v3 + 8))(v6, v2);
  v33[1] = v33;
  v26 = MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E890, &qword_25AEA7138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DF28, &qword_25AEA54E0);
  sub_25AE47F60(&qword_27FA1E898, &qword_27FA1E890, &qword_25AEA7138);
  sub_25AE47F60(&qword_27FA1DF30, &qword_27FA1DF28, &qword_25AEA54E0);
  v27 = v34;
  v28 = sub_25AEA11F8();
  MEMORY[0x28223BE20](v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E8A0, &qword_25AEA7140);
  sub_25AE47F60(&qword_27FA1E8A8, &qword_27FA1E888, &qword_25AEA7130);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E8B0, &qword_25AEA7148);
  v30 = sub_25AE47F60(&qword_27FA1E8B8, &qword_27FA1E8B0, &qword_25AEA7148);
  v40 = v29;
  v41 = v30;
  swift_getOpaqueTypeConformance2();
  v31 = v37;
  sub_25AEA1D28();
  return (*(v36 + 8))(v27, v31);
}

uint64_t sub_25AE8ED40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E8C0, &qword_25AEA7180);
  sub_25AE47F60(&qword_27FA1E8C8, &qword_27FA1E8C0, &qword_25AEA7180);

  return sub_25AEA1268();
}

uint64_t sub_25AE8EDE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25AEA1958();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = v6;
  *(a3 + 24) = v8;
  *(a3 + 32) = v10 & 1;
  *(a3 + 40) = v12;
  *(a3 + 48) = 0;
  *(a3 + 56) = sub_25AE4700C;
  *(a3 + 64) = v13;
}

uint64_t sub_25AE8EEBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AEA1A28();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E8B0, &qword_25AEA7148);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13[-v9];
  sub_25AEA1A18();
  v14 = a1;
  v15 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D698, &qword_25AEA4080);
  sub_25AE47F60(&qword_27FA1D690, &qword_27FA1D698, &qword_25AEA4080);
  sub_25AEA1618();
  v11 = sub_25AE47F60(&qword_27FA1E8B8, &qword_27FA1E8B0, &qword_25AEA7148);
  MEMORY[0x25F859550](v10, v6, v11);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_25AE8F0AC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return sub_25AEA1EB8();
}

uint64_t sub_25AE8F154@<X0>(uint64_t a1@<X8>)
{
  sub_25AEA1958();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA22788;
  result = sub_25AEA1BB8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_25AE8F234@<X0>(char *a1@<X8>)
{
  v54 = a1;
  v1 = sub_25AEA1258();
  v49 = *(v1 - 8);
  v2 = *(v49 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v53 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v52 = &v49 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v51 = &v49 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v50 = &v49 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v56 = &v49 - v12;
  MEMORY[0x28223BE20](v11);
  v55 = &v49 - v13;
  v14 = objc_opt_self();
  v15 = [v14 currentDevice];
  [v15 userInterfaceIdiom];

  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v16 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v17 = qword_27FA22788;
    v18 = qword_27FA22788;
  }

  else
  {
    v18 = [objc_opt_self() mainBundle];
    v17 = 0;
  }

  v19 = v17;
  v20 = sub_25AEA0CC8();
  v22 = v21;

  v57 = v20;
  v58 = v22;
  sub_25AEA2278();
  v23 = objc_opt_self();
  v24 = [v23 systemBlueColor];
  sub_25AEA1D68();
  sub_25AEA1248();
  v25 = v19;
  if (!v16)
  {
    v25 = [objc_opt_self() mainBundle];
  }

  v26 = v19;
  v27 = sub_25AEA0CC8();
  v29 = v28;

  v57 = v27;
  v58 = v29;
  sub_25AEA2278();
  v30 = [v23 systemBlueColor];
  sub_25AEA1D68();
  sub_25AEA1248();
  v31 = [v14 currentDevice];
  v32 = [v31 userInterfaceIdiom];

  if (v32 == 1)
  {
    v33 = v26;
    if (v16)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v33 = v26;
  if (!v16)
  {
LABEL_10:
    v33 = [objc_opt_self() mainBundle];
  }

LABEL_11:
  v34 = v26;
  v35 = sub_25AEA0CC8();
  v37 = v36;

  v57 = v35;
  v58 = v37;
  sub_25AEA2278();
  v38 = [v23 systemBlueColor];
  sub_25AEA1D68();
  v39 = v50;
  sub_25AEA1248();
  v40 = v49;
  v41 = *(v49 + 16);
  v42 = v51;
  v41(v51, v55, v1);
  v43 = v52;
  v41(v52, v56, v1);
  v44 = v53;
  v41(v53, v39, v1);
  v45 = v54;
  v41(v54, v42, v1);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E8D0, &qword_25AEA7188);
  v41(&v45[*(v46 + 48)], v43, v1);
  v41(&v45[*(v46 + 64)], v44, v1);
  v47 = *(v40 + 8);
  v47(v39, v1);
  v47(v56, v1);
  v47(v55, v1);
  v47(v44, v1);
  v47(v43, v1);
  return (v47)(v42, v1);
}

uint64_t sub_25AE8F920()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_25AE8ED40();
}

uint64_t sub_25AE8F928@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = 2;
  a1[1] = sub_25AE8F9E4;
  a1[2] = v5;
}

uint64_t sub_25AE8F9AC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AE8F9EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25AEA1838();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AE8FA1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25AEA1838();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AE8FA4C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E888, &qword_25AEA7130);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E8A0, &qword_25AEA7140);
  sub_25AE47F60(&qword_27FA1E8A8, &qword_27FA1E888, &qword_25AEA7130);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E8B0, &qword_25AEA7148);
  sub_25AE47F60(&qword_27FA1E8B8, &qword_27FA1E8B0, &qword_25AEA7148);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for AudioEnrollmentProgress(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65283 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65283;
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

      return (*a1 | (v4 << 16)) - 65283;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65283;
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

_WORD *storeEnumTagSinglePayload for AudioEnrollmentProgress(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
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
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25AE8FCE0(char a1)
{
  if (byte_286C3CBB0 == a1)
  {
    v1 = 1u;
    return *(&unk_286C3CB90 + v1 + 32);
  }

  if (byte_286C3CBB1 == a1)
  {
    v1 = 2u;
    return *(&unk_286C3CB90 + v1 + 32);
  }

  if (byte_286C3CBB2 == a1)
  {
    v1 = 3u;
    return *(&unk_286C3CB90 + v1 + 32);
  }

  if (byte_286C3CBB3 == a1)
  {
    v1 = 0;
    return *(&unk_286C3CB90 + v1 + 32);
  }

  return 0;
}

uint64_t sub_25AE8FD5C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25AE8FFF4(*a1);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioEnrollmentState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioEnrollmentState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_25AE8FEE0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_25AE8FEF4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

unint64_t sub_25AE8FF28()
{
  result = qword_27FA1E8D8;
  if (!qword_27FA1E8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DD80, "xp");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E8D8);
  }

  return result;
}

BOOL sub_25AE8FFA0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v2 == 4)
  {
    return v3 == 4;
  }

  if ((v3 & 0xFE) == 4)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_25AE8FFF4(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

unint64_t sub_25AE90034()
{
  result = qword_27FA1E8E0;
  if (!qword_27FA1E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E8E0);
  }

  return result;
}

id sub_25AE90094(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v16 = a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_25AEA21D8();
  v8 = v7;
  v9 = objc_opt_self();
  v10 = sub_25AEA2178();
  v11 = *(v3 + OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService_mainContext);
  v12 = [v9 entityForName:v10 inManagedObjectContext:{v11, v16}];

  if (v12)
  {

    v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEntity:v12 insertIntoManagedObjectContext:v11];
  }

  else
  {
    sub_25AEA2688();

    MEMORY[0x25F859D40](v6, v8);

    v13 = 0xD000000000000018;
    sub_25AE426AC();
    swift_allocError();
    *v14 = 1;
    *(v14 + 8) = 0xD000000000000018;
    *(v14 + 16) = 0x800000025AEA9FF0;
    swift_willThrow();
  }

  return v13;
}

uint64_t NREnrolledName.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NREnrolledName.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NREnrolledName.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NREnrolledName.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void NREnrolledName.init(nameConfig:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_25AEA0E48();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = [a1 identifier];
  if (v16)
  {
    v17 = v16;
    sub_25AEA0E28();

    (*(v5 + 56))(v13, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v13, 1, 1, v4);
  }

  sub_25AE62AE0(v13, v15);
  if ((*(v5 + 48))(v15, 1, v4))
  {
    sub_25AE626EC(v15);
    v18 = 0;
    v19 = 0xE000000000000000;
  }

  else
  {
    (*(v5 + 16))(v8, v15, v4);
    sub_25AE626EC(v15);
    v18 = sub_25AEA0E08();
    v19 = v20;
    (*(v5 + 8))(v8, v4);
  }

  v21 = [a1 humanReadableName];
  if (v21)
  {
    v22 = v21;
    v23 = sub_25AEA21A8();
    v25 = v24;
  }

  else
  {

    v23 = 0;
    v25 = 0xE000000000000000;
  }

  *a2 = v18;
  a2[1] = v19;
  a2[2] = v23;
  a2[3] = v25;
}

uint64_t static NREnrolledName.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25AEA2828(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_25AEA2828();
    }
  }

  return result;
}

uint64_t sub_25AE9064C()
{
  if (*v0)
  {
    result = 1701667182;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_25AE90684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_25AEA2828() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25AEA2828();

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

uint64_t sub_25AE90774(uint64_t a1)
{
  v2 = sub_25AE90980();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25AE907B0(uint64_t a1)
{
  v2 = sub_25AE90980();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NREnrolledName.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E8F0, &qword_25AEA73D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25AE90980();
  sub_25AEA28F8();
  v16 = 0;
  v12 = v14[3];
  sub_25AEA27D8();
  if (!v12)
  {
    v15 = 1;
    sub_25AEA27D8();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_25AE90980()
{
  result = qword_27FA1E8F8;
  if (!qword_27FA1E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E8F8);
  }

  return result;
}

uint64_t NREnrolledName.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25AEA21F8();

  return sub_25AEA21F8();
}

uint64_t NREnrolledName.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25AEA28B8();
  sub_25AEA21F8();
  sub_25AEA21F8();
  return sub_25AEA28D8();
}

uint64_t NREnrolledName.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E900, &qword_25AEA73D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25AE90980();
  sub_25AEA28E8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = 0;
  v11 = sub_25AEA27B8();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_25AEA27B8();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_25AE90C8C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25AEA28B8();
  sub_25AEA21F8();
  sub_25AEA21F8();
  return sub_25AEA28D8();
}

uint64_t sub_25AE90CF4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25AEA21F8();

  return sub_25AEA21F8();
}

uint64_t sub_25AE90D44()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25AEA28B8();
  sub_25AEA21F8();
  sub_25AEA21F8();
  return sub_25AEA28D8();
}

uint64_t sub_25AE90DD8(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25AEA2828(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_25AEA2828();
    }
  }

  return result;
}

uint64_t sub_25AE90E7C()
{
  v0 = type metadata accessor for EnrollmentStore();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_25AE916BC();
  qword_27FA1E8E8 = result;
  return result;
}

uint64_t static EnrollmentStore.shared.getter()
{
  if (qword_27FA1D280 != -1)
  {
    swift_once();
  }
}

uint64_t EnrollmentStore.isStoreReady.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  return v1;
}

uint64_t sub_25AE90F94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  *a2 = v5;
  return result;
}

uint64_t sub_25AE91018(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t EnrollmentStore.isStoreReady.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

void (*EnrollmentStore.isStoreReady.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25AEA1468();
  return sub_25AE864A8;
}

uint64_t EnrollmentStore.$isStoreReady.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1448();
  return swift_endAccess();
}

uint64_t sub_25AE91218(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1448();
  return swift_endAccess();
}

uint64_t sub_25AE91290(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t EnrollmentStore.$isStoreReady.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*EnrollmentStore.$isStoreReady.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15NameRecognition15EnrollmentStore__isStoreReady;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1448();
  swift_endAccess();
  return sub_25AE5522C;
}

uint64_t sub_25AE916BC()
{
  v1 = v0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  v3 = MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E968, &qword_25AEA76C8);
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = OBJC_IVAR____TtC15NameRecognition15EnrollmentStore__isStoreReady;
  v37 = 0;
  sub_25AEA1438();
  (*(v13 + 32))(v1 + v17, v16, v12);
  v18 = OBJC_IVAR____TtC15NameRecognition15EnrollmentStore_database;
  *(v1 + OBJC_IVAR____TtC15NameRecognition15EnrollmentStore_database) = 0;
  v19 = type metadata accessor for CoreDataDatabaseService();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_25AE483B4();
  v31 = v17;
  v32 = v8;
  v33 = v5;
  v23 = *(v1 + v18);
  *(v1 + v18) = v22;

  if (*(v1 + v18))
  {
    swift_beginAccess();

    sub_25AEA1448();
    swift_endAccess();

    sub_25AE47F60(&qword_27FA1E970, &qword_27FA1DA38, &qword_25AEA4748);
    v24 = v11;
    v25 = v34;
    sub_25AEA14A8();
    v26 = v36;
    v30 = *(v36 + 8);
    v30(v7, v25);
    swift_beginAccess();
    sub_25AEA1448();
    swift_endAccess();
    sub_25AE47F60(&qword_27FA1E978, &qword_27FA1E968, &qword_25AEA76C8);
    v27 = v32;
    sub_25AEA14D8();
    (*(v35 + 8))(v24, v27);
    (*(v26 + 16))(v33, v7, v25);
    swift_beginAccess();
    sub_25AEA1458();
    swift_endAccess();
    v30(v7, v25);
  }

  return v1;
}

char *sub_25AE91B6C()
{
  v2 = sub_25AEA0E48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = EnrollmentStore.fetchNameConfigurations()();
  if (v0)
  {
    return v1;
  }

  v15 = v14;
  v36 = 0;
  if (!(v14 >> 62))
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  v16 = sub_25AEA25B8();
  if (!v16)
  {
LABEL_23:

    return MEMORY[0x277D84F90];
  }

LABEL_4:
  v39 = v6;
  v48 = MEMORY[0x277D84F90];
  result = sub_25AE8E108(0, v16 & ~(v16 >> 63), 0);
  v46 = v16;
  if ((v16 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    v1 = v48;
    v41 = (v3 + 56);
    v42 = v15 & 0xC000000000000001;
    v40 = (v3 + 48);
    v37 = (v3 + 8);
    v38 = (v3 + 16);
    v44 = v13;
    v45 = v11;
    v43 = v15;
    do
    {
      if (v42)
      {
        v19 = MEMORY[0x25F85A1C0](v18, v15);
      }

      else
      {
        v19 = *(v15 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = [v19 identifier];
      if (v21)
      {
        v22 = v21;
        sub_25AEA0E28();

        v23 = 0;
      }

      else
      {
        v23 = 1;
      }

      (*v41)(v11, v23, 1, v2);
      sub_25AE62AE0(v11, v13);
      if ((*v40)(v13, 1, v2))
      {
        sub_25AE626EC(v13);
        v47 = 0;
        v24 = 0xE000000000000000;
      }

      else
      {
        v25 = v39;
        (*v38)(v39, v13, v2);
        sub_25AE626EC(v13);
        v47 = sub_25AEA0E08();
        v24 = v26;
        (*v37)(v25, v2);
      }

      v27 = v2;
      v28 = [v20 humanReadableName];
      if (v28)
      {
        v29 = v28;
        v30 = sub_25AEA21A8();
        v32 = v31;
      }

      else
      {

        v30 = 0;
        v32 = 0xE000000000000000;
      }

      v48 = v1;
      v34 = *(v1 + 16);
      v33 = *(v1 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_25AE8E108((v33 > 1), v34 + 1, 1);
        v1 = v48;
      }

      ++v18;
      *(v1 + 16) = v34 + 1;
      v35 = (v1 + 32 * v34);
      v35[4] = v47;
      v35[5] = v24;
      v35[6] = v30;
      v35[7] = v32;
      v11 = v45;
      v2 = v27;
      v15 = v43;
      v13 = v44;
    }

    while (v46 != v18);

    return v1;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EnrollmentStore.deleteAllNames()()
{
  if (*(v0 + OBJC_IVAR____TtC15NameRecognition15EnrollmentStore_database))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_25AEA1478();

    if (v2 == 1)
    {
      sub_25AE49500();

      return;
    }
  }

  sub_25AE426AC();
  swift_allocError();
  *v1 = 4;
  *(v1 + 8) = 0xD000000000000023;
  *(v1 + 16) = 0x800000025AEA9F50;
  swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EnrollmentStore.deleteName(withIdentifier:)(Swift::String withIdentifier)
{
  v3 = *(v1 + OBJC_IVAR____TtC15NameRecognition15EnrollmentStore_database);
  if (!v3)
  {
    goto LABEL_6;
  }

  countAndFlagsBits = withIdentifier._countAndFlagsBits;
  object = withIdentifier._object;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1478();

  if (v9 != 1)
  {

LABEL_6:
    sub_25AE426AC();
    swift_allocError();
    *v7 = 4;
    *(v7 + 8) = 0xD000000000000023;
    *(v7 + 16) = 0x800000025AEA9F50;
    swift_willThrow();
    return;
  }

  v6 = sub_25AE48F1C(countAndFlagsBits, object);
  if (v2)
  {
  }

  else
  {
    v8 = v6;
    [*(v3 + OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService_mainContext) deleteObject_];
    sub_25AE493E4();
  }
}

void EnrollmentStore.add(nameConfig:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15NameRecognition15EnrollmentStore_database);
  if (!v3)
  {
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1478();

  if (v8 != 1)
  {

LABEL_6:
    sub_25AE426AC();
    swift_allocError();
    *v6 = 4;
    *(v6 + 8) = 0xD000000000000023;
    *(v6 + 16) = 0x800000025AEA9F50;
    swift_willThrow();
    return;
  }

  sub_25AE922F0(a1);
  if (v2)
  {
  }

  else
  {
    v7 = v5;
    [*(v3 + OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService_mainContext) insertObject_];
    sub_25AE493E4();
  }
}

void sub_25AE922F0(uint64_t a1)
{
  v55 = type metadata accessor for NRCollectedEnrollment();
  v53 = *(v55 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  v14 = OBJC_IVAR____TtC15NameRecognition15EnrollmentStore_database;
  v54 = v1;
  if (*(v1 + OBJC_IVAR____TtC15NameRecognition15EnrollmentStore_database))
  {

    v15 = sub_25AE90094(type metadata accessor for NameConfiguration, &qword_27FA1E960, &qword_25AEA76C0);

    if (!v2)
    {
      sub_25AE6884C(a1, v13);
      v16 = sub_25AEA0E48();
      v17 = *(v16 - 8);
      v18 = *(v17 + 48);
      v51 = v17 + 48;
      v52 = v16;
      v50 = v18;
      v19 = 0;
      if ((v18)(v13, 1) != 1)
      {
        v19 = sub_25AEA0E18();
        (*(v17 + 8))(v13, v52);
      }

      [v15 setIdentifier_];

      v20 = type metadata accessor for NRNameConfiguration();
      v21 = (a1 + v20[5]);
      if (v21[1])
      {
        v22 = *v21;
        v23 = sub_25AEA2178();
      }

      else
      {
        v23 = 0;
      }

      [v15 setHumanReadableName_];

      v25 = (a1 + v20[6]);
      if (v25[1])
      {
        v26 = *v25;
        v27 = sub_25AEA2178();
      }

      else
      {
        v27 = 0;
      }

      [v15 setLocaleIdentifier_];

      v57 = MEMORY[0x277D84FA0];
      v28 = *(a1 + v20[7]);
      if (v28)
      {
        v48 = *(v28 + 16);
        if (v48)
        {
          v49 = v15;
          v29 = 0;
          v47 = (v17 + 8);
          while (v29 < *(v28 + 16))
          {
            sub_25AE6301C(v28 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v29, v6);
            if (!*(v54 + v14))
            {

              sub_25AE426AC();
              swift_allocError();
              *v43 = 4;
              *(v43 + 8) = 0xD000000000000023;
              *(v43 + 16) = 0x800000025AEA9F50;
              swift_willThrow();

              sub_25AE62F6C(v6);
              return;
            }

            v32 = *(v54 + v14);

            v33 = sub_25AE90094(type metadata accessor for CollectedEnrollment, &qword_27FA1E958, &qword_25AEA76B8);
            v34 = v14;

            sub_25AE6884C(v6, v11);
            v35 = v52;
            if (v50(v11, 1, v52) == 1)
            {
              v36 = 0;
            }

            else
            {
              v36 = sub_25AEA0E18();
              (*v47)(v11, v35);
            }

            [v33 setIdentifier_];

            v37 = &v6[*(v55 + 20)];
            v14 = v34;
            if (*(v37 + 1))
            {
              v38 = *v37;
              v39 = sub_25AEA2178();
            }

            else
            {
              v39 = 0;
            }

            [v33 setAudioSourceRawValue_];

            v40 = &v6[*(v55 + 24)];
            if (*(v40 + 1) >> 60 == 15)
            {
              v31 = 0;
            }

            else
            {
              v30 = *v40;
              v31 = sub_25AEA0DD8();
            }

            ++v29;
            [v33 setAudioData_];

            [v33 setNameConfiguration_];
            sub_25AE9CF60(&v56, v33);

            sub_25AE62F6C(v6);
            if (v48 == v29)
            {
              v42 = v57;
              v15 = v49;
              goto LABEL_32;
            }
          }

          __break(1u);
        }

        else
        {
          v42 = MEMORY[0x277D84FA0];
LABEL_32:
          sub_25AE92B18(v42);

          v44 = objc_allocWithZone(MEMORY[0x277CBEB98]);
          v45 = sub_25AEA23E8();

          v46 = [v44 initWithSet_];

          [v15 setCollectedEnrollments_];
        }
      }

      else
      {
        sub_25AE426AC();
        swift_allocError();
        *v41 = 4;
        *(v41 + 8) = 0xD000000000000021;
        *(v41 + 16) = 0x800000025AEA9FC0;
        swift_willThrow();
      }
    }
  }

  else
  {
    sub_25AE426AC();
    swift_allocError();
    *v24 = 4;
    *(v24 + 8) = 0xD000000000000023;
    *(v24 + 16) = 0x800000025AEA9F50;
    swift_willThrow();
  }
}

uint64_t EnrollmentStore.fetchNameConfigurations()()
{
  v3 = *(v0 + OBJC_IVAR____TtC15NameRecognition15EnrollmentStore_database);
  if (!v3)
  {
    goto LABEL_5;
  }

  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1478();

  if (v10 != 1)
  {

LABEL_5:
    sub_25AE426AC();
    swift_allocError();
    *v8 = 4;
    *(v8 + 8) = 0xD000000000000023;
    *(v8 + 16) = 0x800000025AEA9F50;
    swift_willThrow();
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = sub_25AEA2178();
  v6 = [v4 initWithEntityName_];

  v7 = *(v3 + OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService_mainContext);
  type metadata accessor for NameConfiguration();
  v2 = sub_25AEA24E8();

  return v2;
}

uint64_t sub_25AE92B18(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_25AEA25B8())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x277D84FA0];
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E948, &qword_25AEA76B0);
  v3 = sub_25AEA2658();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_25AEA25A8();
  type metadata accessor for CollectedEnrollment();
  sub_25AE93258();
  result = sub_25AEA2418();
  v1 = v31;
  v5 = v32;
  v6 = v33;
  v7 = v34;
  v8 = v35;
LABEL_11:
  v12 = v3 + 56;
  while (v1 < 0)
  {
    v16 = sub_25AEA25D8();
    if (!v16)
    {
LABEL_34:
      sub_25AE932B0();

      return v3;
    }

    *&v28 = v16;
    type metadata accessor for CollectedEnrollment();
    swift_dynamicCast();
LABEL_25:
    type metadata accessor for CollectedEnrollment();
    swift_dynamicCast();
    v20 = *(v3 + 40);
    result = sub_25AEA25E8();
    v21 = -1 << *(v3 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) != 0)
    {
      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = 0;
      v25 = (63 - v21) >> 6;
      do
      {
        if (++v23 == v25 && (v24 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v26 = v23 == v25;
        if (v23 == v25)
        {
          v23 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v23);
      }

      while (v27 == -1);
      v13 = __clz(__rbit64(~v27)) + (v23 << 6);
    }

    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v3 + 48) + 40 * v13;
    *(v14 + 32) = v30;
    *v14 = v28;
    *(v14 + 16) = v29;
    ++*(v3 + 16);
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t EnrollmentStore.deinit()
{
  v1 = OBJC_IVAR____TtC15NameRecognition15EnrollmentStore__isStoreReady;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15NameRecognition15EnrollmentStore_database);

  return v0;
}

uint64_t EnrollmentStore.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15NameRecognition15EnrollmentStore__isStoreReady;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15NameRecognition15EnrollmentStore_database);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_25AE92F80()
{
  result = qword_27FA1E918;
  if (!qword_27FA1E918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E918);
  }

  return result;
}

uint64_t sub_25AE92FD4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_25AEA1428();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for EnrollmentStore()
{
  result = qword_27FA1E920;
  if (!qword_27FA1E920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25AE93090()
{
  sub_25AE49B94();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_25AE93154()
{
  result = qword_27FA1E930;
  if (!qword_27FA1E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E930);
  }

  return result;
}

unint64_t sub_25AE931AC()
{
  result = qword_27FA1E938;
  if (!qword_27FA1E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E938);
  }

  return result;
}

unint64_t sub_25AE93204()
{
  result = qword_27FA1E940;
  if (!qword_27FA1E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E940);
  }

  return result;
}

unint64_t sub_25AE93258()
{
  result = qword_27FA1E950;
  if (!qword_27FA1E950)
  {
    type metadata accessor for CollectedEnrollment();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E950);
  }

  return result;
}

void sub_25AE932B8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_25AE93330(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_25AE93374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_25AE479E0(a3, v24 - v10, &qword_27FA1E9B0, &qword_25AEA5C40);
  v12 = sub_25AEA2388();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25AE41938(v11, &qword_27FA1E9B0, &qword_25AEA5C40);
  }

  else
  {
    sub_25AEA2378();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_25AEA2348();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_25AEA21E8() + 32;

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

      sub_25AE41938(a3, &qword_27FA1E9B0, &qword_25AEA5C40);

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

  sub_25AE41938(a3, &qword_27FA1E9B0, &qword_25AEA5C40);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

id sub_25AE93620()
{
  result = [objc_allocWithZone(type metadata accessor for NameTriggerController()) init];
  qword_27FA1E980 = result;
  return result;
}

id static NameTriggerController.shared.getter()
{
  if (qword_27FA1D288 != -1)
  {
    swift_once();
  }

  v1 = qword_27FA1E980;

  return v1;
}

char *sub_25AE936AC()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC15NameRecognition21NameTriggerController_audioManager] = 0;
  v2 = &v0[OBJC_IVAR____TtC15NameRecognition21NameTriggerController_nameRecognizer];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  v0[OBJC_IVAR____TtC15NameRecognition21NameTriggerController_engineState] = 0;
  *&v0[OBJC_IVAR____TtC15NameRecognition21NameTriggerController_detectedNameCooldownTimer] = 0;
  *&v0[OBJC_IVAR____TtC15NameRecognition21NameTriggerController_detectedNameCooldownInterval] = 0x4014000000000000;
  v0[OBJC_IVAR____TtC15NameRecognition21NameTriggerController_didReceiveDetectedNameEvent] = 0;
  v3 = OBJC_IVAR____TtC15NameRecognition21NameTriggerController_lastModifiedUserConfigDate;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  if (qword_27FA1D280 != -1)
  {
    swift_once();
  }

  *&v1[OBJC_IVAR____TtC15NameRecognition21NameTriggerController_store] = qword_27FA1E8E8;
  type metadata accessor for NotificationManager();
  swift_allocObject();

  *&v1[OBJC_IVAR____TtC15NameRecognition21NameTriggerController_notificationManager] = sub_25AE3E25C();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for NameTriggerController();
  v4 = objc_msgSendSuper2(&v9, sel_init);
  v5 = OBJC_IVAR____TtC15NameRecognition21NameTriggerController_notificationManager;
  v6 = *(*&v4[OBJC_IVAR____TtC15NameRecognition21NameTriggerController_notificationManager] + 16);
  v7 = v4;
  [v6 setDelegate_];
  [*(*&v4[v5] + 16) setWantsNotificationResponsesDelivered];

  return v7;
}

void sub_25AE93850()
{
  v1 = v0;
  v2 = *(*(v0 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_notificationManager) + 16);
  v10 = sub_25AE3F1F8;
  v11 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25AE932B8;
  v9 = &block_descriptor_7;
  v3 = _Block_copy(aBlock);

  [v2 requestAuthorizationWithOptions:32 completionHandler:v3];
  _Block_release(v3);

  sub_25AE945B0();
  if (*(v0 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_engineState) != 3)
  {
    sub_25AE943EC();
    sub_25AE81178(aBlock, v7);
    v4 = OBJC_IVAR____TtC15NameRecognition21NameTriggerController_nameRecognizer;
    swift_beginAccess();
    sub_25AE9466C(v7, v1 + v4);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_0(aBlock, v9);
    sub_25AEA1078();

    v5 = *(v1 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_audioManager);
    if (v5)
    {
      v6 = v5;
      sub_25AE502C8();
    }

    __swift_destroy_boxed_opaque_existential_0(aBlock);
  }
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25AE93A74()
{
  v1 = v0[15];
  v2 = OBJC_IVAR____TtC15NameRecognition21NameTriggerController_nameRecognizer;
  swift_beginAccess();
  sub_25AE479E0(v1 + v2, (v0 + 2), &qword_27FA1E9A0, &unk_25AEA76E0);
  if (v0[5])
  {
    sub_25AE81178((v0 + 2), (v0 + 7));
    sub_25AE41938((v0 + 2), &qword_27FA1E9A0, &unk_25AEA76E0);
    v3 = v0[10];
    v4 = v0[11];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v3);
    v5 = *(MEMORY[0x277D797C0] + 4);
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_25AE93C0C;

    return MEMORY[0x2821E1330](v3, v4);
  }

  else
  {
    sub_25AE41938((v0 + 2), &qword_27FA1E9A0, &unk_25AEA76E0);
    v7 = v0[15];
    v8 = OBJC_IVAR____TtC15NameRecognition21NameTriggerController_audioManager;
    v9 = *(v7 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_audioManager);
    if (v9)
    {
      v10 = v9;
      sub_25AE504C4();

      v9 = *(v7 + v8);
    }

    *(v7 + v8) = 0;

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_25AE93C0C()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_25AE93DB8;
  }

  else
  {
    v3 = sub_25AE93D20;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25AE93D20()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[15];
  v2 = OBJC_IVAR____TtC15NameRecognition21NameTriggerController_audioManager;
  v3 = *(v1 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_audioManager);
  if (v3)
  {
    v4 = v3;
    sub_25AE504C4();

    v3 = *(v1 + v2);
  }

  *(v1 + v2) = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_25AE93DB8()
{
  v1 = v0[17];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  NRLogError(_:additionalMessage:)(v1, 0, 0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_25AE93E54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v12 - v7;
  if (*(v2 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_engineState) == 3)
  {
    v9 = sub_25AEA2388();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v2;
    v11 = v2;
    sub_25AE82E98(0, 0, v8, a2, v10);
  }

  return result;
}

uint64_t sub_25AE93F80()
{
  v1 = v0[15];
  v2 = OBJC_IVAR____TtC15NameRecognition21NameTriggerController_nameRecognizer;
  swift_beginAccess();
  sub_25AE479E0(v1 + v2, (v0 + 2), &qword_27FA1E9A0, &unk_25AEA76E0);
  if (v0[5])
  {
    sub_25AE81178((v0 + 2), (v0 + 7));
    sub_25AE41938((v0 + 2), &qword_27FA1E9A0, &unk_25AEA76E0);
    v3 = v0[10];
    v4 = v0[11];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v3);
    v5 = *(MEMORY[0x277D797C0] + 4);
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_25AE9410C;

    return MEMORY[0x2821E1330](v3, v4);
  }

  else
  {
    sub_25AE41938((v0 + 2), &qword_27FA1E9A0, &unk_25AEA76E0);
    v7 = *(v0[15] + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_audioManager);
    if (v7)
    {
      v8 = v7;
      sub_25AE506C0();
    }

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_25AE9410C()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_25AE97368;
  }

  else
  {
    v3 = sub_25AE94220;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25AE94220()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = *(v0[15] + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_audioManager);
  if (v1)
  {
    v2 = v1;
    sub_25AE506C0();
  }

  v3 = v0[1];

  return v3();
}

void sub_25AE942A4()
{
  if (*(v0 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_engineState) != 3)
  {
    v1 = OBJC_IVAR____TtC15NameRecognition21NameTriggerController_nameRecognizer;
    swift_beginAccess();
    sub_25AE479E0(v0 + v1, v5, &qword_27FA1E9A0, &unk_25AEA76E0);
    if (v6)
    {
      sub_25AE81178(v5, v4);
      sub_25AE41938(v5, &qword_27FA1E9A0, &unk_25AEA76E0);
      __swift_project_boxed_opaque_existential_0(v4, v4[3]);
      sub_25AEA1078();

      __swift_destroy_boxed_opaque_existential_0(v4);
    }

    else
    {
      sub_25AE41938(v5, &qword_27FA1E9A0, &unk_25AEA76E0);
    }

    v2 = *(v0 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_audioManager);
    if (v2)
    {
      v3 = v2;
      sub_25AE50794();
    }
  }
}

unint64_t sub_25AE943EC()
{
  v2 = sub_25AEA10E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_store);
  result = EnrollmentStore.fetchNameConfigurations()();
  if (!v1)
  {
    sub_25AE43A48(result, v6);
    v11[1] = 0;
    sub_25AEA1138();
    sub_25AEA1128();
    sub_25AEA1118();
    sub_25AEA1198();
    sub_25AE97308(&qword_27FA1EA68, v9, type metadata accessor for NameTriggerController);
    sub_25AE97308(&unk_27FA1EA70, v10, type metadata accessor for NameTriggerController);
    sub_25AEA1188();
    (*(v3 + 8))(v6, v2);
  }

  return result;
}

void sub_25AE945B0()
{
  v1 = OBJC_IVAR____TtC15NameRecognition21NameTriggerController_audioManager;
  if (!*(v0 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_audioManager))
  {
    v2 = [objc_allocWithZone(type metadata accessor for AudioManager()) init];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    v4 = v2;

    if (v4)
    {
      *&v4[OBJC_IVAR____TtC15NameRecognition12AudioManager_delegate + 8] = &off_286C3F350;
      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_25AE9466C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9A0, &unk_25AEA76E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE946E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AE47200;

  return sub_25AE93A54(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25AE947D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AE4F874;

  return sub_25AE93F60(a1, v4, v5, v6);
}

id NameTriggerController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NameTriggerController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25AE9497C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  v7 = sub_25AEA1028();
  v6[18] = v7;
  v8 = *(v7 - 8);
  v6[19] = v8;
  v9 = *(v8 + 64) + 15;
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25AE94A40, 0, 0);
}

uint64_t sub_25AE94A40()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  sub_25AEA1018();
  v5 = OBJC_IVAR____TtC15NameRecognition21NameTriggerController_nameRecognizer;
  swift_beginAccess();
  sub_25AE479E0(v3 + v5, v0 + 16, &qword_27FA1E9A0, &unk_25AEA76E0);
  if (*(v0 + 40))
  {
    sub_25AE81178(v0 + 16, v0 + 56);
    sub_25AE41938(v0 + 16, &qword_27FA1E9A0, &unk_25AEA76E0);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_0((v0 + 56), v6);
    v8 = *(MEMORY[0x277D797C8] + 4);
    v9 = swift_task_alloc();
    *(v0 + 168) = v9;
    *v9 = v0;
    v9[1] = sub_25AE94BEC;
    v10 = *(v0 + 160);

    return MEMORY[0x2821E1340](v10, v6, v7);
  }

  else
  {
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    sub_25AE41938(v0 + 16, &qword_27FA1E9A0, &unk_25AEA76E0);
    v11 = *(v0 + 160);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_25AE94BEC()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_25AE94D84;
  }

  else
  {
    v3 = sub_25AE94D00;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25AE94D00()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[20];

  v2 = v0[1];

  return v2();
}

uint64_t sub_25AE94D84()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v1 = v0[1];
  v2 = v0[22];

  return v1();
}

uint64_t sub_25AE94E0C(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = sub_25AEA2388();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v2;
  v11 = a1;
  v12 = v2;
  sub_25AE93374(0, 0, v8, &unk_25AEA77D8, v10);
}

uint64_t NameTriggerController.didDetectName(event:)(uint64_t a1)
{
  v3 = sub_25AEA20C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25AEA20E8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_didReceiveDetectedNameEvent) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_didReceiveDetectedNameEvent) = 1;
    sub_25AE604A0();
    v14 = sub_25AEA24C8();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = a1;
    aBlock[4] = sub_25AE96BA8;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25AE93330;
    aBlock[3] = &block_descriptor_14;
    v17 = _Block_copy(aBlock);

    sub_25AEA20D8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_25AE97308(&qword_27FA1D908, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D910, &qword_25AEA4DA0);
    sub_25AE96BB0();
    sub_25AEA2578();
    MEMORY[0x25F859FF0](0, v13, v7, v17);
    _Block_release(v17);

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v13, v8);
  }

  return result;
}

void sub_25AE95238()
{
  v0 = sub_25AEA0E48();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AXIsInternalInstall())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      sub_25AEA10A8();
      v7 = sub_25AEA0E08();
      v9 = v8;
      (*(v1 + 8))(v4, v0);
      v10 = sub_25AEA1098();
      sub_25AE95404(v7, v9, v10);
    }
  }

  else
  {
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      sub_25AEA10A8();
      v13 = sub_25AEA0E08();
      v15 = v14;
      (*(v1 + 8))(v4, v0);
      sub_25AE95404(v13, v15, 0);
    }
  }
}

void sub_25AE95404(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (!*(*(v3 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_store) + OBJC_IVAR____TtC15NameRecognition15EnrollmentStore_database))
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1478();

  if (LOBYTE(aBlock[0]) != 1)
  {

LABEL_5:
    sub_25AE426AC();
    v8 = swift_allocError();
    *v9 = 4;
    *(v9 + 8) = 0xD000000000000023;
    *(v9 + 16) = 0x800000025AEA9F50;
    swift_willThrow();
LABEL_6:
    NRLogError(_:additionalMessage:)(v8, 0, 0);

    goto LABEL_7;
  }

  v15 = sub_25AE48F1C(a1, a2);

  v16 = [v15 humanReadableName];
  if (!v16)
  {
    sub_25AE426AC();
    v8 = swift_allocError();
    *v28 = 6;
    *(v28 + 8) = 0xD000000000000024;
    *(v28 + 16) = 0x800000025AEAA1C0;
    swift_willThrow();

    goto LABEL_6;
  }

  v17 = v16;
  v18 = sub_25AEA21A8();
  v20 = v19;

  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v21 = sub_25AEA12C8();
  __swift_project_value_buffer(v21, qword_27FA1DF50);

  v22 = sub_25AEA12A8();
  v23 = sub_25AEA24A8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v29 = v18;
    aBlock[0] = swift_slowAlloc();
    v25 = aBlock[0];
    *v24 = 136315138;
    *(v24 + 4) = sub_25AE65D2C(a1, a2, aBlock);
    _os_log_impl(&dword_25AE3C000, v22, v23, "✅ Match found for id: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v26 = v25;
    v18 = v29;
    MEMORY[0x25F85AB80](v26, -1, -1);
    MEMORY[0x25F85AB80](v24, -1, -1);
  }

  v27 = *(v4 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_notificationManager);

  sub_25AE3E874(v18, v20, a1, a2, a3);

LABEL_7:
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_25AE972F8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25AE95880;
  aBlock[3] = &block_descriptor_51;
  v12 = _Block_copy(aBlock);

  v13 = [v10 scheduledTimerWithTimeInterval:0 repeats:v12 block:5.0];
  _Block_release(v12);
  v14 = *(v4 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_detectedNameCooldownTimer);
  *(v4 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_detectedNameCooldownTimer) = v13;
}

void sub_25AE95828()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC15NameRecognition21NameTriggerController_didReceiveDetectedNameEvent] = 0;
  }
}

void sub_25AE95880(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t NameTriggerController.userNotificationCenter(_:didReceive:withCompletionHandler:)(int a1, id a2, uint64_t (*a3)(uint64_t))
{
  v5 = [a2 actionIdentifier];
  v6 = sub_25AEA21A8();
  v8 = v7;

  v9 = v6 == 0xD000000000000041 && 0x800000025AEA7D20 == v8;
  if (!v9 && (sub_25AEA2828() & 1) == 0)
  {
    if (v6 == 0xD00000000000003DLL && 0x800000025AEA7CB0 == v8)
    {
    }

    else
    {
      v18 = sub_25AEA2828();

      if ((v18 & 1) == 0)
      {
        return a3(v15);
      }
    }

    sub_25AEA2478();
    v19 = MEMORY[0x25F859F80]();
    [v19 setNameRecognitionEnabled_];

    return a3(v15);
  }

  v10 = [a2 notification];
  v11 = [v10 request];

  v12 = [v11 content];
  v13 = [v12 userInfo];

  v14 = sub_25AEA2138();
  sub_25AE95B14(v14);

  return a3(v15);
}

void sub_25AE95B14(uint64_t a1)
{
  v72[4] = *MEMORY[0x277D85DE8];
  v2 = sub_25AEA0D38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1D950, &unk_25AEA4490);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v56 - v9;
  v11 = sub_25AEA0DB8();
  v67 = *(v11 - 8);
  v12 = *(v67 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v56 - v16;
  v68 = 0xD000000000000011;
  v69 = 0x800000025AEA7DB0;
  sub_25AEA2608();
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v18 = sub_25AE6F6C8(&v70);
  if ((v19 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_25AE418A4(*(a1 + 56) + 32 * v18, v72);
  sub_25AE41798(&v70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v20 = v69;
  v65 = v68;
  v68 = 0xD000000000000017;
  v69 = 0x800000025AEA7DD0;
  sub_25AEA2608();
  if (!*(a1 + 16) || (v66 = v20, v21 = sub_25AE6F6C8(&v70), (v22 & 1) == 0))
  {

LABEL_9:
    sub_25AE41798(&v70);
    goto LABEL_10;
  }

  sub_25AE418A4(*(a1 + 56) + 32 * v21, v72);
  sub_25AE41798(&v70);
  if (swift_dynamicCast())
  {
    v63 = v68;
    v64 = v69;
    v62 = sub_25AE964B0(v68, v69);
    v68 = 0x7479426F69647561;
    v69 = 0xEA00000000007365;
    sub_25AEA2608();
    if (*(a1 + 16) && (v24 = sub_25AE6F6C8(&v70), (v25 & 1) != 0))
    {
      sub_25AE418A4(*(a1 + 56) + 32 * v24, v72);
      sub_25AE41798(&v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2D8, &unk_25AEA7830);
      if (swift_dynamicCast())
      {
        v26 = *(v68 + 16);
        if (v26 + 0x4000000000000000 < 0)
        {
          __break(1u);
        }

        else
        {
          v27 = sub_25AE96604(v68 + 32, v68 + 32 + 2 * v26);
          v60 = v28;
          v61 = v27;

          if (qword_27FA1D268 == -1)
          {
LABEL_17:
            v58 = qword_27FA1E0E8;
            v70 = qword_27FA1E0E8;
            v71 = qword_27FA1E0F0;
            v59 = qword_27FA1E0F0;

            MEMORY[0x25F859D40](0xD000000000000016, 0x800000025AEAA1F0);
            v30 = v70;
            v29 = v71;
            (*(v67 + 56))(v10, 1, 1, v11);
            (*(v3 + 104))(v6, *MEMORY[0x277CC91D8], v2);
            v31 = v29;

            v57 = v30;
            sub_25AEA0DA8();
            v32 = [objc_opt_self() defaultManager];
            sub_25AEA0D98();
            v33 = sub_25AEA2178();

            LODWORD(v29) = [v32 fileExistsAtPath_];

            if (v29)
            {

              v35 = v61;
              v34 = v62;
              v36 = v60;
            }

            else
            {
              LOBYTE(v72[0]) = 1;
              v37 = sub_25AEA2178();
              v38 = [v32 fileExistsAtPath:v37 isDirectory:v72];

              v35 = v61;
              if ((v38 & 1) == 0)
              {
                v39 = sub_25AEA2178();
                v70 = 0;
                v40 = [v32 createDirectoryAtPath:v39 withIntermediateDirectories:1 attributes:0 error:&v70];

                if ((v40 & 1) == 0)
                {
                  v48 = v70;

                  v49 = sub_25AEA0D08();

                  v50 = v49;
                  swift_willThrow();

                  v51 = v60;
                  sub_25AE6A0A8(v57, v31);

                  v70 = 0;
                  v71 = 0xE000000000000000;
                  sub_25AEA2688();
                  MEMORY[0x25F859D40](0xD00000000000001BLL, 0x800000025AEAA210);
                  v72[0] = v49;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
                  sub_25AEA2738();
                  v52 = v70;
                  v53 = v71;
                  sub_25AE426AC();
                  v54 = swift_allocError();
                  *v55 = 10;
                  *(v55 + 8) = v52;
                  *(v55 + 16) = v53;
                  swift_willThrow();

                  sub_25AE42754(v35, v51);
                  (*(v67 + 8))(v15, v11);

                  NRLogError(_:additionalMessage:)(v54, 0, 0);

                  goto LABEL_10;
                }

                v41 = v70;
              }

              v36 = v60;
              sub_25AEA0DF8();
              v34 = v62;
            }

            (*(v67 + 32))(v17, v15, v11);
            v42 = sub_25AEA0D98();
            v44 = v43;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v34 = sub_25AE5BA20(0, *(v34 + 2) + 1, 1, v34);
            }

            v46 = *(v34 + 2);
            v45 = *(v34 + 3);
            if (v46 >= v45 >> 1)
            {
              v34 = sub_25AE5BA20((v45 > 1), v46 + 1, 1, v34);
            }

            sub_25AE42754(v35, v36);
            (*(v67 + 8))(v17, v11);
            *(v34 + 2) = v46 + 1;
            v47 = &v34[16 * v46];
            *(v47 + 4) = v42;
            *(v47 + 5) = v44;
            goto LABEL_21;
          }
        }

        swift_once();
        goto LABEL_17;
      }
    }

    else
    {
      sub_25AE41798(&v70);
    }

    v34 = v62;
LABEL_21:
    sub_25AE6BE70(v65, v66, v63, v64, v34);

    goto LABEL_10;
  }

LABEL_10:
  v23 = *MEMORY[0x277D85DE8];
}

char *sub_25AE964B0(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC15NameRecognition21NameTriggerController_store) + OBJC_IVAR____TtC15NameRecognition15EnrollmentStore_database);
  if (!v4)
  {
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1478();

  if (v10 != 1)
  {

LABEL_6:
    v4 = 0x800000025AEA9F50;
    sub_25AE426AC();
    swift_allocError();
    *v8 = 4;
    *(v8 + 8) = 0xD000000000000023;
    *(v8 + 16) = 0x800000025AEA9F50;
    swift_willThrow();
    return v4;
  }

  v7 = sub_25AE48F1C(a1, a2);

  if (!v3)
  {
    v4 = sub_25AE68B10(v7);
  }

  return v4;
}

uint64_t sub_25AE96604(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_0(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_25AE96E38(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_25AE96F74(v3, v4);
    }

    else
    {
      v6 = sub_25AE96EF0(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

Swift::Void __swiftcall NameTriggerController.automationHandleAudioInput(buffer:time:)(AVAudioPCMBuffer buffer, Swift::UInt64 time)
{
  impl = buffer.super._impl;
  isa = buffer.super.super.isa;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  v9 = sub_25AEA2388();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = isa;
  v10[5] = impl;
  v10[6] = v2;
  v11 = isa;
  v12 = v2;
  sub_25AE93374(0, 0, v8, &unk_25AEA7720, v10);
}

void _s15NameRecognition0A17TriggerControllerC18didStopWithSummary4json4uuid8perfLogsySS_10Foundation4UUIDVSaySSGSgtF_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25AEA0E48();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v13 = sub_25AEA12C8();
  __swift_project_value_buffer(v13, qword_27FA1DF50);
  (*(v9 + 16))(v12, a3, v8);

  v14 = sub_25AEA12A8();
  v15 = sub_25AEA24A8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = a1;
    v17 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v17 = 136315906;
    *(v17 + 4) = sub_25AE65D2C(0xD000000000000027, 0x800000025AEAA230, &v29);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_25AE65D2C(v16, a2, &v29);
    *(v17 + 22) = 2080;
    sub_25AE97308(&qword_27FA1EA58, 255, MEMORY[0x277CC95F0]);
    v18 = sub_25AEA27F8();
    v20 = v19;
    (*(v9 + 8))(v12, v8);
    v21 = sub_25AE65D2C(v18, v20, &v29);

    *(v17 + 24) = v21;
    *(v17 + 32) = 2080;
    v28 = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA60, &qword_25AEA7840);
    v22 = sub_25AEA21D8();
    v24 = sub_25AE65D2C(v22, v23, &v29);

    *(v17 + 34) = v24;
    _os_log_impl(&dword_25AE3C000, v14, v15, "%s\n json: %s\n uuid: %s\n perfLogs: %s", v17, 0x2Au);
    v25 = v27;
    swift_arrayDestroy();
    MEMORY[0x25F85AB80](v25, -1, -1);
    MEMORY[0x25F85AB80](v17, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_25AE96B30()
{
  MEMORY[0x25F85AC20](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25AE96B68()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_25AE96BA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_25AE95238();
}

unint64_t sub_25AE96BB0()
{
  result = qword_27FA1D918;
  if (!qword_27FA1D918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D910, &qword_25AEA4DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D918);
  }

  return result;
}

uint64_t sub_25AE96C18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25AE4F874;

  return sub_25AE9497C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25AE96E38(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25AE96EF0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_25AEA0C88();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_25AEA0C48();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_25AE96F74(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_25AEA0C88();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_25AEA0C48();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25AEA0DC8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_25AE96FF0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 actionIdentifier];
  v6 = sub_25AEA21A8();
  v8 = v7;

  v9 = v6 == 0xD000000000000041 && 0x800000025AEA7D20 == v8;
  if (v9 || (sub_25AEA2828() & 1) != 0)
  {

    v10 = [a1 notification];
    v11 = [v10 request];

    v12 = [v11 content];
    v13 = [v12 userInfo];

    v14 = sub_25AEA2138();
    sub_25AE95B14(v14);

    goto LABEL_7;
  }

  if (v6 == 0xD00000000000003DLL && 0x800000025AEA7CB0 == v8)
  {
  }

  else
  {
    v18 = sub_25AEA2828();

    if ((v18 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  sub_25AEA2478();
  v19 = MEMORY[0x25F859F80]();
  [v19 setNameRecognitionEnabled_];

LABEL_7:
  v15 = *(a3 + 16);

  return v15(a3);
}

uint64_t objectdestroy_16Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25AE97230(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25AE47200;

  return sub_25AE9497C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25AE97308(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_25AE9736C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_25AE40C38(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_25AEA0EB8();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v23;
  }

  else
  {
    v10 = *v2;
    v11 = sub_25AE6F8F0(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v24 = *v3;
      if (!v15)
      {
        sub_25AE41408();
        v16 = v24;
      }

      v17 = *(v16 + 48);
      v18 = sub_25AEA0EB8();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);

      sub_25AE40628(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v21 = sub_25AEA0EB8();
      v22 = *(*(v21 - 8) + 8);

      return v22(a2, v21);
    }
  }

  return result;
}

uint64_t sub_25AE9752C()
{
  v0 = type metadata accessor for LanguageAssetDownloader();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_25AE9A454();
  qword_27FA227A8 = result;
  return result;
}

uint64_t sub_25AE9756C(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EB40, &unk_25AEA7A08);
  v2[28] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E7E8, &qword_25AEA6E30) - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v6 = sub_25AEA0EB8();
  v2[34] = v6;
  v7 = *(v6 - 8);
  v2[35] = v7;
  v8 = *(v7 + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25AE976D0, 0, 0);
}

uint64_t sub_25AE976D0()
{
  v98 = v0;
  v1 = sub_25AEA0E88();
  if (v1[2])
  {
    v3 = v1[4];
    v2 = v1[5];
  }

  else
  {
    v4 = v0[27];

    sub_25AEA0E68();
  }

  v5 = v0[37];
  sub_25AEA0E58();
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v6 = sub_25AEA12C8();
  v0[38] = __swift_project_value_buffer(v6, qword_27FA1DF50);
  v7 = sub_25AEA12A8();
  v8 = sub_25AEA24A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[37];
    v10 = v0[34];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v97 = v12;
    *v11 = 136315394;
    swift_beginAccess();
    sub_25AEA06F8(&qword_27FA1D378, 255, MEMORY[0x277CC9788]);
    v13 = sub_25AEA27F8();
    v15 = sub_25AE65D2C(v13, v14, &v97);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    sub_25AEA0E88();
    v16 = MEMORY[0x25F859E20]();
    v18 = v17;

    v19 = sub_25AE65D2C(v16, v18, &v97);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_25AE3C000, v7, v8, "Name Recognition current locale: %s\nPreferredLanguages: %s\n", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85AB80](v12, -1, -1);
    MEMORY[0x25F85AB80](v11, -1, -1);
  }

  v20 = v0[27];
  v21 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_supportedEnglishLocales;
  v0[39] = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_supportedEnglishLocales;
  swift_beginAccess();
  v22 = *(v20 + v21);
  if (*(v22 + 16))
  {
    v23 = v0[37];
    swift_beginAccess();

    LOBYTE(v23) = sub_25AE4E0DC(v23, v22);

    if (v23)
    {
      sub_25AEA2478();
      v24 = MEMORY[0x25F859F80]();
      v25 = *MEMORY[0x277CE7928];
      swift_beginAccess();
      v26 = *&v24[v25];

      sub_25AEA2458();
    }

    else
    {
      v30 = v0[38];
      v31 = v0[27];

      v32 = sub_25AEA12A8();
      v33 = sub_25AEA24A8();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = v0[37];
        v35 = v0[34];
        v96 = v0[27];
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v97 = v37;
        *v36 = 136315394;
        sub_25AEA06F8(&qword_27FA1D378, 255, MEMORY[0x277CC9788]);
        v38 = sub_25AEA27F8();
        v40 = sub_25AE65D2C(v38, v39, &v97);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2080;
        v41 = sub_25AEA27F8();
        v43 = sub_25AE65D2C(v41, v42, &v97);

        *(v36 + 14) = v43;
        _os_log_impl(&dword_25AE3C000, v32, v33, "Name Recognition changing from current locale %s to default english locale %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F85AB80](v37, -1, -1);
        MEMORY[0x25F85AB80](v36, -1, -1);
      }

      v44 = v0[37];
      v45 = v0[34];
      v46 = v0[35];
      v47 = v0[27];
      sub_25AEA2478();
      v48 = MEMORY[0x25F859F80]();
      v49 = *MEMORY[0x277CE7928];
      swift_beginAccess();
      v50 = *&v48[v49];

      sub_25AEA2458();
      v51 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_defaultEnglishLocale;
      swift_beginAccess();
      (*(v46 + 24))(v44, v47 + v51, v45);
    }

    v52 = v0[37];
    v53 = v0[34];
    v54 = v0[35];
    v56 = v0[32];
    v55 = v0[33];
    v58 = v0[28];
    v57 = v0[29];
    v59 = v0[27];
    v60 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_currentActiveLocale;
    swift_beginAccess();
    v94 = v59;
    sub_25AE9FD88(v59 + v60, v55);
    v95 = v54[2];
    v95(v56, v52, v53);
    v93 = v54[7];
    v93(v56, 0, 1, v53);
    v61 = *(v58 + 48);
    sub_25AE9FD88(v55, v57);
    sub_25AE9FD88(v56, v57 + v61);
    v62 = v54[6];
    v63 = v62(v57, 1, v53);
    v64 = v0[34];
    if (v63 == 1)
    {
      v65 = v0[33];
      sub_25AE41938(v0[32], &qword_27FA1E7E8, &qword_25AEA6E30);
      sub_25AE41938(v65, &qword_27FA1E7E8, &qword_25AEA6E30);
      v66 = v62(v57 + v61, 1, v64);
      v67 = v95;
      if (v66 == 1)
      {
        sub_25AE41938(v0[29], &qword_27FA1E7E8, &qword_25AEA6E30);
LABEL_24:
        v74 = v0[37];
        v75 = v0[34];
        v76 = v0[35];
        v78 = v0[32];
        v77 = v0[33];
        v79 = v67;
        v81 = v0[30];
        v80 = v0[31];
        v82 = v0[29];
        v79(v0[26], v74, v75);
        (*(v76 + 8))(v74, v75);

        v83 = v0[1];

        return v83();
      }
    }

    else
    {
      sub_25AE9FD88(v0[29], v0[31]);
      if (v62(v57 + v61, 1, v64) != 1)
      {
        v85 = v0[35];
        v84 = v0[36];
        v86 = v0[34];
        v87 = v0[31];
        v91 = v0[32];
        v92 = v0[33];
        v88 = v0[29];
        (*(v85 + 32))(v84, v57 + v61, v86);
        sub_25AEA06F8(&qword_27FA1E220, 255, MEMORY[0x277CC9788]);
        v89 = sub_25AEA2168();
        v90 = *(v85 + 8);
        v90(v84, v86);
        sub_25AE41938(v91, &qword_27FA1E7E8, &qword_25AEA6E30);
        sub_25AE41938(v92, &qword_27FA1E7E8, &qword_25AEA6E30);
        v90(v87, v86);
        sub_25AE41938(v88, &qword_27FA1E7E8, &qword_25AEA6E30);
        v67 = v95;
        if (v89)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      v68 = v0[34];
      v69 = v0[35];
      v70 = v0[33];
      v71 = v0[31];
      sub_25AE41938(v0[32], &qword_27FA1E7E8, &qword_25AEA6E30);
      sub_25AE41938(v70, &qword_27FA1E7E8, &qword_25AEA6E30);
      (*(v69 + 8))(v71, v68);
      v67 = v95;
    }

    sub_25AE41938(v0[29], &qword_27FA1EB40, &unk_25AEA7A08);
LABEL_23:
    v72 = v0[34];
    v73 = v0[30];
    v67(v73, v0[37], v72);
    v93(v73, 0, 1, v72);
    swift_beginAccess();
    sub_25AE9FDF8(v73, v94 + v60);
    swift_endAccess();
    goto LABEL_24;
  }

  v27 = swift_task_alloc();
  v0[40] = v27;
  *v27 = v0;
  v27[1] = sub_25AE98078;
  v28 = v0[27];

  return sub_25AE9BF44();
}

uint64_t sub_25AE98078()
{
  v1 = *(*v0 + 320);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25AE98174, 0, 0);
}

uint64_t sub_25AE98174()
{
  v75 = v0;
  v1 = *(v0[27] + v0[39]);
  v2 = v0[37];
  swift_beginAccess();

  LOBYTE(v2) = sub_25AE4E0DC(v2, v1);

  if (v2)
  {
    sub_25AEA2478();
    v3 = MEMORY[0x25F859F80]();
    v4 = *MEMORY[0x277CE7928];
    swift_beginAccess();
    v5 = *&v3[v4];

    sub_25AEA2458();
  }

  else
  {
    v6 = v0[38];
    v7 = v0[27];

    v8 = sub_25AEA12A8();
    v9 = sub_25AEA24A8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[37];
      v11 = v0[34];
      v73 = v0[27];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v74 = v13;
      *v12 = 136315394;
      sub_25AEA06F8(&qword_27FA1D378, 255, MEMORY[0x277CC9788]);
      v14 = sub_25AEA27F8();
      v16 = sub_25AE65D2C(v14, v15, &v74);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      v17 = sub_25AEA27F8();
      v19 = sub_25AE65D2C(v17, v18, &v74);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_25AE3C000, v8, v9, "Name Recognition changing from current locale %s to default english locale %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F85AB80](v13, -1, -1);
      MEMORY[0x25F85AB80](v12, -1, -1);
    }

    v20 = v0[37];
    v21 = v0[34];
    v22 = v0[35];
    v23 = v0[27];
    sub_25AEA2478();
    v24 = MEMORY[0x25F859F80]();
    v25 = *MEMORY[0x277CE7928];
    swift_beginAccess();
    v26 = *&v24[v25];

    sub_25AEA2458();
    v27 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_defaultEnglishLocale;
    swift_beginAccess();
    (*(v22 + 24))(v20, v23 + v27, v21);
  }

  v28 = v0[37];
  v29 = v0[34];
  v30 = v0[35];
  v32 = v0[32];
  v31 = v0[33];
  v34 = v0[28];
  v33 = v0[29];
  v35 = v0[27];
  v36 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_currentActiveLocale;
  swift_beginAccess();
  v71 = v35;
  sub_25AE9FD88(v35 + v36, v31);
  v72 = v30[2];
  v72(v32, v28, v29);
  v70 = v30[7];
  v70(v32, 0, 1, v29);
  v37 = *(v34 + 48);
  sub_25AE9FD88(v31, v33);
  sub_25AE9FD88(v32, v33 + v37);
  v38 = v30[6];
  v39 = v38(v33, 1, v29);
  v40 = v0[34];
  if (v39 == 1)
  {
    v41 = v0[33];
    sub_25AE41938(v0[32], &qword_27FA1E7E8, &qword_25AEA6E30);
    sub_25AE41938(v41, &qword_27FA1E7E8, &qword_25AEA6E30);
    v42 = v38(v33 + v37, 1, v40);
    v43 = v72;
    if (v42 == 1)
    {
      sub_25AE41938(v0[29], &qword_27FA1E7E8, &qword_25AEA6E30);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  sub_25AE9FD88(v0[29], v0[31]);
  if (v38(v33 + v37, 1, v40) == 1)
  {
    v44 = v0[34];
    v45 = v0[35];
    v46 = v0[33];
    v47 = v0[31];
    sub_25AE41938(v0[32], &qword_27FA1E7E8, &qword_25AEA6E30);
    sub_25AE41938(v46, &qword_27FA1E7E8, &qword_25AEA6E30);
    (*(v45 + 8))(v47, v44);
    v43 = v72;
LABEL_11:
    sub_25AE41938(v0[29], &qword_27FA1EB40, &unk_25AEA7A08);
LABEL_12:
    v48 = v0[34];
    v49 = v0[30];
    v43(v49, v0[37], v48);
    v70(v49, 0, 1, v48);
    swift_beginAccess();
    sub_25AE9FDF8(v49, v71 + v36);
    swift_endAccess();
    goto LABEL_13;
  }

  v62 = v0[35];
  v61 = v0[36];
  v63 = v0[34];
  v64 = v0[31];
  v68 = v0[32];
  v69 = v0[33];
  v65 = v0[29];
  (*(v62 + 32))(v61, v33 + v37, v63);
  sub_25AEA06F8(&qword_27FA1E220, 255, MEMORY[0x277CC9788]);
  v66 = sub_25AEA2168();
  v67 = *(v62 + 8);
  v67(v61, v63);
  sub_25AE41938(v68, &qword_27FA1E7E8, &qword_25AEA6E30);
  sub_25AE41938(v69, &qword_27FA1E7E8, &qword_25AEA6E30);
  v67(v64, v63);
  sub_25AE41938(v65, &qword_27FA1E7E8, &qword_25AEA6E30);
  v43 = v72;
  if ((v66 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  v50 = v0[37];
  v51 = v0[34];
  v52 = v0[35];
  v54 = v0[32];
  v53 = v0[33];
  v55 = v43;
  v57 = v0[30];
  v56 = v0[31];
  v58 = v0[29];
  v55(v0[26], v50, v51);
  (*(v52 + 8))(v50, v51);

  v59 = v0[1];

  return v59();
}

uint64_t sub_25AE98864()
{
  v1[34] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E7E8, &qword_25AEA6E30) - 8) + 64) + 15;
  v1[35] = swift_task_alloc();
  v3 = sub_25AEA0EB8();
  v1[36] = v3;
  v4 = *(v3 - 8);
  v1[37] = v4;
  v1[38] = *(v4 + 64);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  if (qword_27FA1D298 != -1)
  {
    swift_once();
  }

  v5 = qword_27FA227B0;
  v1[45] = qword_27FA227B0;

  return MEMORY[0x2822009F8](sub_25AE989D8, v5, 0);
}

uint64_t sub_25AE989D8()
{
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_currentActiveLocale;
  swift_beginAccess();
  sub_25AE9FD88(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_25AE41938(v0[35], &qword_27FA1E7E8, &qword_25AEA6E30);
    v6 = swift_task_alloc();
    v0[46] = v6;
    *v6 = v0;
    v6[1] = sub_25AE98BBC;
    v7 = v0[43];
    v8 = v0[34];

    return sub_25AE9756C(v7);
  }

  else
  {
    v10 = v0[37];
    v11 = *(v10 + 32);
    v11(v0[43], v0[35], v0[36]);
    v12 = v0[43];
    v13 = v0[44];
    v14 = v0[36];
    v15 = v0[34];
    v0[47] = v11;
    v0[48] = (v10 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v11(v13, v12, v14);
    v16 = sub_25AE9A5A4(v13);
    v0[49] = v16;

    v17 = swift_task_alloc();
    v0[50] = v17;
    *v17 = v0;
    v17[1] = sub_25AE98DA4;
    v18 = v0[44];

    return sub_25AE9FEB4(v16, v18);
  }
}

uint64_t sub_25AE98BBC()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25AE98CCC, v2, 0);
}

uint64_t sub_25AE98CCC()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = *(v2 + 32);
  v4 = v0[43];
  v5 = v0[44];
  v6 = v0[34];
  v0[47] = v3;
  v0[48] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v3(v5, v4, v1);
  v7 = sub_25AE9A5A4(v5);
  v0[49] = v7;

  v8 = swift_task_alloc();
  v0[50] = v8;
  *v8 = v0;
  v8[1] = sub_25AE98DA4;
  v9 = v0[44];

  return sub_25AE9FEB4(v7, v9);
}

uint64_t sub_25AE98DA4(char a1)
{
  v2 = *(*v1 + 400);
  v3 = *(*v1 + 392);
  v4 = *(*v1 + 360);
  v6 = *v1;
  *(*v1 + 520) = a1;

  return MEMORY[0x2822009F8](sub_25AE98ED8, v4, 0);
}

uint64_t sub_25AE98ED8()
{
  v92 = v0;
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v5 = sub_25AEA12C8();
  *(v0 + 408) = __swift_project_value_buffer(v5, qword_27FA1DF50);
  v6 = *(v4 + 16);
  *(v0 + 416) = v6;
  *(v0 + 424) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v89 = v6;
  v6(v2, v1, v3);
  v7 = sub_25AEA12A8();
  v8 = sub_25AEA24A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 520);
    v10 = *(v0 + 336);
    v12 = *(v0 + 288);
    v11 = *(v0 + 296);
    v13 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v91 = v86;
    *v13 = 136315394;
    if (v9)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v9)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    v16 = sub_25AE65D2C(v14, v15, &v91);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    sub_25AEA06F8(&qword_27FA1D378, 255, MEMORY[0x277CC9788]);
    v17 = v10;
    v18 = sub_25AEA27F8();
    v20 = v19;
    v21 = *(v11 + 8);
    v21(v17, v12);
    v22 = sub_25AE65D2C(v18, v20, &v91);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_25AE3C000, v7, v8, "Name Recognition has assets: %s for locale: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85AB80](v86, -1, -1);
    MEMORY[0x25F85AB80](v13, -1, -1);
  }

  else
  {
    v23 = *(v0 + 336);
    v24 = *(v0 + 288);
    v25 = *(v0 + 296);

    v21 = *(v25 + 8);
    v21(v23, v24);
  }

  *(v0 + 432) = v21;
  if (*(v0 + 520) == 1)
  {
    v26 = *(v0 + 392);
    v27 = *(v0 + 352);
    v28 = *(v0 + 288);
    v29 = *(v0 + 296);
    v30 = *(v0 + 272);
    sub_25AE9B5E0(0, 1, v27);

    v21(v27, v28);
LABEL_26:
    v70 = *(v0 + 344);
    v69 = *(v0 + 352);
    v72 = *(v0 + 328);
    v71 = *(v0 + 336);
    v74 = *(v0 + 312);
    v73 = *(v0 + 320);
    v75 = *(v0 + 280);

    v76 = *(v0 + 8);

    return v76();
  }

  v89(*(v0 + 328), *(v0 + 352), *(v0 + 288));
  v31 = sub_25AEA12A8();
  v32 = sub_25AEA24A8();
  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 328);
  v35 = *(v0 + 288);
  v36 = *(v0 + 296);
  v88 = v21;
  if (v33)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v91 = v38;
    *v37 = 136315138;
    sub_25AEA06F8(&qword_27FA1D378, 255, MEMORY[0x277CC9788]);
    v39 = sub_25AEA27F8();
    v40 = v21;
    v41 = v39;
    v43 = v42;
    v40(v34, v35);
    v44 = sub_25AE65D2C(v41, v43, &v91);

    *(v37 + 4) = v44;
    _os_log_impl(&dword_25AE3C000, v31, v32, "Name Recognition will start downloading assets for locale: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x25F85AB80](v38, -1, -1);
    MEMORY[0x25F85AB80](v37, -1, -1);
  }

  else
  {

    v21(v34, v35);
  }

  v45 = *(v0 + 272);
  v46 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_downloadProgresses;
  *(v0 + 440) = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_downloadProgresses;
  swift_beginAccess();
  v47 = *(v45 + v46);
  if (*(v47 + 16))
  {
    v48 = *(v0 + 352);

    v49 = sub_25AE6F8F0(v48);
    if (v50)
    {
      v51 = *(*(v47 + 56) + 8 * v49);
    }

    else
    {
      v51 = 0;
    }
  }

  else
  {
    v51 = 0;
  }

  v52 = *(v0 + 272);
  v53 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_downloaders;
  *(v0 + 448) = v51;
  *(v0 + 456) = v53;
  swift_beginAccess();
  v54 = *(v52 + v53);
  if (*(v54 + 16))
  {
    v55 = *(v0 + 352);

    v56 = sub_25AE6F8F0(v55);
    if (v57)
    {
      v87 = *(v0 + 392);
      v83 = *(v0 + 376);
      v84 = *(v0 + 384);
      v58 = *(v0 + 352);
      v59 = *(v0 + 320);
      v61 = *(v0 + 296);
      v60 = *(v0 + 304);
      v62 = *(v0 + 288);
      v63 = *(v0 + 272);
      v85 = *(*(v54 + 56) + 8 * v56);

      sub_25AE9B5E0(v51, 0, v58);
      v64 = sub_25AEA13E8();
      *(v0 + 264) = v64;
      swift_getKeyPath();
      v89(v59, v58, v62);
      v65 = (*(v61 + 80) + 24) & ~*(v61 + 80);
      v66 = swift_allocObject();
      *(v66 + 16) = v63;
      v83(v66 + v65, v59, v62);

      v67 = sub_25AEA0D28();

      v88(v58, v62);
      v68 = *(v63 + OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_progressObserver);
      *(v63 + OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_progressObserver) = v67;

      goto LABEL_26;
    }
  }

  v78 = *(v0 + 392);
  sub_25AEA12F8();
  *(v0 + 464) = sub_25AEA12D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EB70, qword_25AEA7A38);
  v79 = swift_allocObject();
  *(v0 + 472) = v79;
  *(v79 + 16) = xmmword_25AEA3540;
  v80 = sub_25AEA06F8(&qword_27FA1EB78, 255, MEMORY[0x277CDCD60]);
  *(v79 + 32) = v78;
  *(v79 + 40) = v80;
  v81 = *(MEMORY[0x277CDCC58] + 4);
  v90 = (*MEMORY[0x277CDCC58] + MEMORY[0x277CDCC58]);

  v82 = swift_task_alloc();
  *(v0 + 480) = v82;
  *v82 = v0;
  v82[1] = sub_25AE996FC;

  return v90(v79, 0x6F636552656D614ELL, 0xEF6E6F6974696E67);
}

uint64_t sub_25AE996FC(uint64_t a1)
{
  v2 = *(*v1 + 480);
  v3 = *(*v1 + 472);
  v4 = *(*v1 + 464);
  v5 = *(*v1 + 360);
  v7 = *v1;
  *(*v1 + 488) = a1;

  return MEMORY[0x2822009F8](sub_25AE99854, v5, 0);
}

uint64_t sub_25AE99854()
{
  v56 = v0;
  v1 = v0[61];
  if (v1)
  {
    v2 = v0[57];
    v3 = v0[56];
    v4 = v0[55];
    v5 = v0[52];
    v52 = v0[47];
    v53 = v0[48];
    v6 = v0[44];
    v7 = v0[40];
    v51 = v0[38];
    v49 = v0[53];
    v50 = v0[37];
    v8 = v0[36];
    v9 = v0[34];
    v5(v7, v6, v8);
    swift_beginAccess();
    v1;
    sub_25AE9736C(v1, v7);
    swift_endAccess();
    swift_beginAccess();
    v10 = *(v9 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = *(v9 + v4);
    *(v9 + v4) = 0x8000000000000000;
    sub_25AE40A94(v6, isUniquelyReferenced_nonNull_native, *&v3);
    *(v9 + v4) = v55;
    swift_endAccess();
    sub_25AE9B5E0(v3, 0, v6);
    v12 = sub_25AEA13E8();
    v0[31] = v12;
    swift_getKeyPath();
    v5(v7, v6, v8);
    v13 = (*(v50 + 80) + 24) & ~*(v50 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v9;
    v52(v14 + v13, v7, v8);

    v15 = sub_25AEA0D28();

    v16 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_progressObserver;
    v0[62] = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_progressObserver;
    v17 = *(v9 + v16);
    *(v9 + v16) = v15;

    v18 = *(MEMORY[0x277CDCD70] + 4);
    v19 = swift_task_alloc();
    v0[63] = v19;
    *v19 = v0;
    v19[1] = sub_25AE99D18;

    return MEMORY[0x28212C1E0]();
  }

  else
  {
    v20 = v0[53];
    v21 = v0[51];
    (v0[52])(v0[39], v0[44], v0[36]);
    v22 = sub_25AEA12A8();
    v23 = sub_25AEA24A8();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[54];
    v26 = v0[39];
    v27 = v0[36];
    v28 = v0[37];
    if (v24)
    {
      v54 = v0[54];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v55 = v30;
      *v29 = 136315138;
      sub_25AEA06F8(&qword_27FA1D378, 255, MEMORY[0x277CC9788]);
      v31 = sub_25AEA27F8();
      v33 = v32;
      v54(v26, v27);
      v34 = sub_25AE65D2C(v31, v33, &v55);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_25AE3C000, v22, v23, "Name Recognition asset present for locale: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x25F85AB80](v30, -1, -1);
      MEMORY[0x25F85AB80](v29, -1, -1);
    }

    else
    {

      v25(v26, v27);
    }

    v35 = v0[54];
    v36 = v0[49];
    v37 = v0[44];
    v38 = v0[36];
    v39 = v0[34];
    sub_25AE9B5E0(0, 1, v37);

    v35(v37, v38);
    v41 = v0[43];
    v40 = v0[44];
    v43 = v0[41];
    v42 = v0[42];
    v45 = v0[39];
    v44 = v0[40];
    v46 = v0[35];

    v47 = v0[1];

    return v47();
  }
}

uint64_t sub_25AE99D18()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;
  *(*v1 + 512) = v0;

  v5 = *(v2 + 360);
  if (v0)
  {
    v6 = sub_25AE99FC0;
  }

  else
  {
    v6 = sub_25AE99E44;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_25AE99E44()
{
  v1 = v0[61];
  v2 = v0[62];
  v3 = v0[57];
  v4 = v0[55];
  v5 = v0[49];
  v6 = v0[44];
  v7 = v0[37];
  v20 = v0[36];
  v21 = v0[54];
  v8 = v0[34];
  sub_25AE9B5E0(0, 1, v6);
  v9 = *(v8 + v2);
  *(v8 + v2) = 0;

  swift_beginAccess();
  v10 = sub_25AE9A2B0(v6);
  swift_endAccess();

  swift_beginAccess();
  sub_25AE9A378(v6);
  swift_endAccess();

  v21(v6, v20);
  v12 = v0[43];
  v11 = v0[44];
  v14 = v0[41];
  v13 = v0[42];
  v16 = v0[39];
  v15 = v0[40];
  v17 = v0[35];

  v18 = v0[1];

  return v18();
}

uint64_t sub_25AE99FC0()
{
  v1 = v0[64];
  v2 = v0[62];
  v3 = v0[57];
  v4 = v0[55];
  v28 = v0[61];
  v29 = v0[54];
  v5 = v0[44];
  v26 = v0[49];
  v27 = v0[37];
  v25 = v0[36];
  v6 = v0[34];
  sub_25AEA2688();
  v0[29] = 0;
  v0[30] = 0xE000000000000000;
  MEMORY[0x25F859D40](0xD000000000000025, 0x800000025AEAA3C0);
  sub_25AEA06F8(&qword_27FA1D378, 255, MEMORY[0x277CC9788]);
  v7 = sub_25AEA27F8();
  MEMORY[0x25F859D40](v7);

  MEMORY[0x25F859D40](8236, 0xE200000000000000);
  v0[32] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
  sub_25AEA2738();
  v8 = v0[29];
  v9 = v0[30];
  sub_25AE426AC();
  v10 = swift_allocError();
  *v11 = 11;
  *(v11 + 8) = v8;
  *(v11 + 16) = v9;
  NRLogError(_:additionalMessage:)(v10, 0, 0);

  sub_25AE9B5E0(1, 1, v5);
  v12 = *(v6 + v2);
  *(v6 + v2) = 0;

  swift_beginAccess();
  v13 = sub_25AE9A2B0(v5);
  swift_endAccess();

  swift_beginAccess();
  v14 = *(v6 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v6 + v4);
  *(v6 + v4) = 0x8000000000000000;
  sub_25AE40A94(v5, isUniquelyReferenced_nonNull_native, 0.0);
  *(v6 + v4) = v30;
  swift_endAccess();

  v29(v5, v25);
  v17 = v0[43];
  v16 = v0[44];
  v19 = v0[41];
  v18 = v0[42];
  v21 = v0[39];
  v20 = v0[40];
  v22 = v0[35];

  v23 = v0[1];

  return v23();
}

uint64_t sub_25AE9A2B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_25AE6F8F0(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_25AE41408();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = sub_25AEA0EB8();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_25AE40628(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_25AE9A378(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_25AE6F8F0(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_25AE41194();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = sub_25AEA0EB8();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_25AE40628(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_25AE9A454()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_currentActiveLocale;
  v3 = sub_25AEA0EB8();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_transcriber) = 0;
  *(v1 + OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_progressObserver) = 0;
  *(v1 + OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_activeDownloader) = 0;
  v4 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_downloaders;
  v5 = MEMORY[0x277D84F90];
  *(v1 + v4) = sub_25AE702C4(MEMORY[0x277D84F90]);
  v6 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_downloadProgresses;
  *(v1 + v6) = sub_25AE704AC(v5);
  *(v1 + OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_supportedEnglishLocales) = MEMORY[0x277D84FA0];
  sub_25AEA2478();
  v7 = MEMORY[0x25F859F80]();
  v8 = *MEMORY[0x277CE7928];
  swift_beginAccess();
  v9 = *&v7[v8];

  sub_25AEA2438();
  return v1;
}

uint64_t sub_25AE9A5A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25AEA13A8();
  v58 = *(v4 - 8);
  v5 = *(v58 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v56 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v48 - v8;
  v9 = sub_25AEA0EB8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v53 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v59 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EB40, &unk_25AEA7A08);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E7E8, &qword_25AEA6E30);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v48 - v24;
  v55 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_transcriber;
  v26 = *(v2 + OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_transcriber);
  if (!v26)
  {
    goto LABEL_9;
  }

  v52 = v4;
  v27 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_currentActiveLocale;
  swift_beginAccess();
  v28 = *(v10 + 16);
  v54 = a1;
  v49 = v28;
  v50 = v10 + 16;
  v28(v25, a1, v9);
  (*(v10 + 56))(v25, 0, 1, v9);
  v29 = *(v15 + 48);
  v51 = v2;
  sub_25AE9FD88(v2 + v27, v18);
  sub_25AE9FD88(v25, &v18[v29]);
  v30 = *(v10 + 48);
  if (v30(v18, 1, v9) != 1)
  {
    sub_25AE9FD88(v18, v23);
    if (v30(&v18[v29], 1, v9) != 1)
    {
      v35 = v59;
      (*(v10 + 32))(v59, &v18[v29], v9);
      sub_25AEA06F8(&qword_27FA1E220, 255, MEMORY[0x277CC9788]);

      v36 = sub_25AEA2168();
      v37 = *(v10 + 8);
      v37(v35, v9);
      sub_25AE41938(v25, &qword_27FA1E7E8, &qword_25AEA6E30);
      v37(v23, v9);
      sub_25AE41938(v18, &qword_27FA1E7E8, &qword_25AEA6E30);
      a1 = v54;
      v4 = v52;
      if (v36)
      {
        goto LABEL_12;
      }

      v2 = v51;
LABEL_9:
      v31 = v57;
      sub_25AE9BB98();
      sub_25AEA13C8();
      (*(v10 + 16))(v59, a1, v9);
      v32 = v58;
      (*(v58 + 16))(v56, v31, v4);
      v26 = sub_25AEA13B8();
      (*(v32 + 8))(v31, v4);
      v33 = *(v2 + v55);
      *(v2 + v55) = v26;

      return v26;
    }

    sub_25AE41938(v25, &qword_27FA1E7E8, &qword_25AEA6E30);
    (*(v10 + 8))(v23, v9);
LABEL_8:
    a1 = v54;
    v2 = v51;
    v4 = v52;
    sub_25AE41938(v18, &qword_27FA1EB40, &unk_25AEA7A08);
    goto LABEL_9;
  }

  sub_25AE41938(v25, &qword_27FA1E7E8, &qword_25AEA6E30);
  if (v30(&v18[v29], 1, v9) != 1)
  {

    goto LABEL_8;
  }

  sub_25AE41938(v18, &qword_27FA1E7E8, &qword_25AEA6E30);
  a1 = v54;
LABEL_12:
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v38 = sub_25AEA12C8();
  __swift_project_value_buffer(v38, qword_27FA1DF50);
  v39 = v53;
  v49(v53, a1, v9);
  v40 = sub_25AEA12A8();
  v41 = sub_25AEA24A8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v60 = v43;
    *v42 = 136315138;
    sub_25AEA06F8(&qword_27FA1D378, 255, MEMORY[0x277CC9788]);
    v44 = sub_25AEA27F8();
    v46 = v45;
    (*(v10 + 8))(v39, v9);
    v47 = sub_25AE65D2C(v44, v46, &v60);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_25AE3C000, v40, v41, "Language Asset Downloader has an active transcriber with locale: %s. No need to build new transcriber", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x25F85AB80](v43, -1, -1);
    MEMORY[0x25F85AB80](v42, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v39, v9);
  }

  return v26;
}

uint64_t sub_25AE9AD04(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_25AEA0EB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - v13;
  v15 = *a1;
  v16 = sub_25AEA2388();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  (*(v8 + 16))(v10, a4, v7);
  v17 = qword_27FA1D298;
  v18 = a3;

  v27 = v15;
  if (v17 != -1)
  {
    swift_once();
  }

  v20 = qword_27FA227B0;
  v21 = sub_25AEA06F8(&qword_27FA1EAD0, v19, type metadata accessor for LanguageAssetDownloadActor);
  v22 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = v20;
  *(v24 + 3) = v21;
  *(v24 + 4) = v18;
  (*(v8 + 32))(&v24[v22], v10, v7);
  *&v24[v23] = v27;

  sub_25AE82E98(0, 0, v14, &unk_25AEA7A90, v24);
}

uint64_t sub_25AE9AF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_25AEA0EB8();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  if (qword_27FA1D298 != -1)
  {
    swift_once();
  }

  v10 = qword_27FA227B0;

  return MEMORY[0x2822009F8](sub_25AE9B094, v10, 0);
}

uint64_t sub_25AE9B094()
{
  v63 = v0;
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_downloadProgresses;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = &off_27992A000;
  if (*(v3 + 16))
  {
    v5 = *(v0 + 48);

    v6 = sub_25AE6F8F0(v5);
    if (v7)
    {
      v8 = *(*(v3 + 56) + 8 * v6);

      if (v8 != 0.0)
      {
        [*(v0 + 56) fractionCompleted];
        if (v9 == 0.0)
        {
          if (qword_27FA1D248 != -1)
          {
            swift_once();
          }

          v10 = *(v0 + 88);
          v11 = *(v0 + 64);
          v12 = *(v0 + 72);
          v13 = *(v0 + 48);
          v14 = *(v0 + 56);
          v15 = sub_25AEA12C8();
          __swift_project_value_buffer(v15, qword_27FA1DF50);
          (*(v12 + 16))(v10, v13, v11);
          v16 = v14;
          v17 = sub_25AEA12A8();
          v18 = sub_25AEA24A8();

          v19 = os_log_type_enabled(v17, v18);
          v20 = *(v0 + 88);
          v22 = *(v0 + 64);
          v21 = *(v0 + 72);
          if (v19)
          {
            v23 = *(v0 + 56);
            v24 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v62 = v61;
            *v24 = 134218498;
            *(v24 + 4) = v8;
            *(v24 + 12) = 2080;
            [v23 fractionCompleted];
            v25 = sub_25AEA23B8();
            v27 = sub_25AE65D2C(v25, v26, &v62);

            *(v24 + 14) = v27;
            *(v24 + 22) = 2080;
            sub_25AEA06F8(&qword_27FA1D378, 255, MEMORY[0x277CC9788]);
            v28 = sub_25AEA27F8();
            v30 = v29;
            (*(v21 + 8))(v20, v22);
            v31 = sub_25AE65D2C(v28, v30, &v62);
            v4 = &off_27992A000;

            *(v24 + 24) = v31;
            _os_log_impl(&dword_25AE3C000, v17, v18, "Name Recognition: Asset downloading saved progress: %f, new progress: %s for locale: %s", v24, 0x20u);
            swift_arrayDestroy();
            v32 = v61;
LABEL_14:
            MEMORY[0x25F85AB80](v32, -1, -1);
            MEMORY[0x25F85AB80](v24, -1, -1);

            goto LABEL_16;
          }

          (*(v21 + 8))(v20, v22);
          goto LABEL_16;
        }
      }
    }

    else
    {
    }
  }

  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v34 = *(v0 + 72);
  v33 = *(v0 + 80);
  v36 = *(v0 + 56);
  v35 = *(v0 + 64);
  v37 = *(v0 + 48);
  v38 = sub_25AEA12C8();
  __swift_project_value_buffer(v38, qword_27FA1DF50);
  (*(v34 + 16))(v33, v37, v35);
  v39 = v36;
  v17 = sub_25AEA12A8();
  v40 = sub_25AEA24A8();

  v41 = os_log_type_enabled(v17, v40);
  v43 = *(v0 + 72);
  v42 = *(v0 + 80);
  v44 = *(v0 + 64);
  if (v41)
  {
    v45 = *(v0 + 56);
    v24 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v62 = v46;
    *v24 = 136315394;
    [v45 fractionCompleted];
    v47 = sub_25AEA23B8();
    v49 = sub_25AE65D2C(v47, v48, &v62);

    *(v24 + 4) = v49;
    *(v24 + 12) = 2080;
    sub_25AEA06F8(&qword_27FA1D378, 255, MEMORY[0x277CC9788]);
    v50 = sub_25AEA27F8();
    v52 = v51;
    (*(v43 + 8))(v42, v44);
    v53 = sub_25AE65D2C(v50, v52, &v62);
    v4 = &off_27992A000;

    *(v24 + 14) = v53;
    _os_log_impl(&dword_25AE3C000, v17, v40, "Name Recognition: Asset downloading updated progress: %s for locale: %s", v24, 0x16u);
    swift_arrayDestroy();
    v32 = v46;
    goto LABEL_14;
  }

  (*(v43 + 8))(v42, v44);
LABEL_16:
  v55 = *(v0 + 80);
  v54 = *(v0 + 88);
  v56 = *(v0 + 48);
  v57 = *(v0 + 40);
  [*(v0 + 56) v4[326]];
  sub_25AE9B5E0(v58, 0, v56);

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_25AE9B5E0(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  LODWORD(v6) = a2;
  v39 = *&a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - v9;
  v11 = sub_25AEA0EB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v16 = sub_25AEA12C8();
  __swift_project_value_buffer(v16, qword_27FA1DF50);
  (*(v12 + 16))(v15, a3, v11);
  v17 = sub_25AEA12A8();
  v18 = sub_25AEA24A8();
  if (os_log_type_enabled(v17, v18))
  {
    v37 = v3;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v40 = v20;
    *v19 = 136315394;
    v38 = v6;
    if (v6)
    {
      if (v39 == 0.0)
      {
        v21 = 0x7964616552;
      }

      else
      {
        v21 = 0x64656C696146;
      }

      if (v39 == 0.0)
      {
        v22 = 0xE500000000000000;
      }

      else
      {
        v22 = 0xE600000000000000;
      }
    }

    else
    {
      v23 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2C0, &qword_25AEA35C0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_25AEA3540;
      v25 = MEMORY[0x277D83A80];
      *(v24 + 56) = MEMORY[0x277D839F8];
      *(v24 + 64) = v25;
      *(v24 + 32) = v23 * 100.0;
      v21 = sub_25AEA21C8();
      v22 = v26;
    }

    v27 = sub_25AE65D2C(v21, v22, &v40);

    *(v19 + 4) = v27;
    *(v19 + 12) = 2080;
    sub_25AEA06F8(&qword_27FA1D378, 255, MEMORY[0x277CC9788]);
    v28 = sub_25AEA27F8();
    v6 = v29;
    (*(v12 + 8))(v15, v11);
    v30 = sub_25AE65D2C(v28, v6, &v40);

    *(v19 + 14) = v30;
    _os_log_impl(&dword_25AE3C000, v17, v18, "Name Recognition asset state: %s for locale: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85AB80](v20, -1, -1);
    MEMORY[0x25F85AB80](v19, -1, -1);

    LOBYTE(v6) = v38;
    v4 = v37;
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  v31 = sub_25AEA2388();
  (*(*(v31 - 8) + 56))(v10, 1, 1, v31);
  sub_25AEA2368();

  v32 = sub_25AEA2358();
  v33 = swift_allocObject();
  v34 = MEMORY[0x277D85700];
  *(v33 + 16) = v32;
  *(v33 + 24) = v34;
  v35 = v39;
  *(v33 + 32) = v4;
  *(v33 + 40) = v35;
  *(v33 + 48) = v6 & 1;
  sub_25AE83198(0, 0, v10, &unk_25AEA79F8, v33);
}

uint64_t sub_25AE9BA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 48) = a6;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 16) = a1;
  sub_25AEA2368();
  *(v6 + 40) = sub_25AEA2358();
  v8 = sub_25AEA2348();

  return MEMORY[0x2822009F8](sub_25AE9BAFC, v8, v7);
}

uint64_t sub_25AE9BAFC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_25AE8A044(*(v0 + 32), *(v0 + 48) & 1);
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25AE9BB98()
{
  sub_25AEA1398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EAE0, &qword_25AEA79B8);
  v0 = sub_25AEA1318();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25AEA3540;
  sub_25AEA1308();
  sub_25AE9F308(v4);
  swift_setDeallocating();
  (*(v1 + 8))(v4 + v3, v0);
  swift_deallocClassInstance();
  sub_25AEA1358();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EAE8, &qword_25AEA79C0);
  v5 = sub_25AEA1338();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25AEA3F30;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, *MEMORY[0x277CDCD08], v5);
  v11(v10 + v7, *MEMORY[0x277CDCD10], v5);
  v11(v10 + 2 * v7, *MEMORY[0x277CDCD00], v5);
  sub_25AE9F630(v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_25AEA1388();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EAF0, &qword_25AEA79C8);
  v12 = sub_25AEA1348();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25AEA3550;
  v17 = v16 + v15;
  v18 = *(v13 + 104);
  v18(v17, *MEMORY[0x277CDCD38], v12);
  v18(v17 + v14, *MEMORY[0x277CDCD30], v12);
  sub_25AE9F958(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_25AEA1378();
  v19 = sub_25AEA1368();
  sub_25AEA1328();
  return v19(&v21, 0);
}

uint64_t sub_25AE9BF44()
{
  v1[8] = v0;
  v2 = sub_25AEA0EB8();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = sub_25AEA12E8();
  v1[14] = v5;
  v6 = *(v5 - 8);
  v1[15] = v6;
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25AE9C078, 0, 0);
}

uint64_t sub_25AE9C078()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  sub_25AEA12F8();
  v0[17] = sub_25AEA12D8();
  (*(v2 + 104))(v1, *MEMORY[0x277CDCC60], v3);
  v4 = *(MEMORY[0x277CDCC50] + 4);
  v8 = (*MEMORY[0x277CDCC50] + MEMORY[0x277CDCC50]);
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_25AE9C170;
  v6 = v0[16];

  return v8(v6);
}

uint64_t sub_25AE9C170(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 152) = a1;

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_25AE9C2EC, 0, 0);
}

uint64_t sub_25AE9C2EC()
{
  v40 = v0;
  v1 = v0[19];
  v2 = *(v1 + 16);
  v3 = &unk_27FA1E000;
  if (v2)
  {
    v4 = v0[10];
    v36 = v0[8];
    v6 = *(v4 + 16);
    v4 += 16;
    v5 = v6;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v37 = (v4 - 8);
    v38 = *(v4 + 56);
    v35 = v6;
    v6(v0[13], v7, v0[9]);
    while (1)
    {
      sub_25AEA0E68();
      v12 = sub_25AEA2258();

      v13 = v0[13];
      if (v12)
      {
        v9 = v0[11];
        v8 = v0[12];
        v10 = v0[9];
        v5(v9, v0[13], v10);
        swift_beginAccess();
        v5 = v35;
        sub_25AE9CB28(v8, v9);
        v11 = *v37;
        (*v37)(v8, v10);
        swift_endAccess();
        v11(v13, v10);
      }

      else
      {
        (*v37)(v0[13], v0[9]);
      }

      v7 += v38;
      if (!--v2)
      {
        break;
      }

      v5(v0[13], v7, v0[9]);
    }

    v14 = v0[19];

    v3 = &unk_27FA1E000;
  }

  else
  {
  }

  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v15 = v0[8];
  v16 = sub_25AEA12C8();
  __swift_project_value_buffer(v16, qword_27FA1DF50);

  v17 = sub_25AEA12A8();
  v18 = sub_25AEA24A8();

  if (os_log_type_enabled(v17, v18))
  {
    v20 = v0[8];
    v19 = v0[9];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v39 = v22;
    *v21 = 136315138;
    v23 = v3[341];
    swift_beginAccess();
    v24 = *(v20 + v23);
    sub_25AEA06F8(&qword_27FA1D2F8, 255, MEMORY[0x277CC9788]);

    v25 = sub_25AEA2408();
    v27 = v26;

    v28 = sub_25AE65D2C(v25, v27, &v39);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_25AE3C000, v17, v18, "Language Asset Downloader supported English locales: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x25F85AB80](v22, -1, -1);
    MEMORY[0x25F85AB80](v21, -1, -1);
  }

  v29 = v0[16];
  v30 = v0[12];
  v31 = v0[13];
  v32 = v0[11];

  v33 = v0[1];

  return v33();
}

uint64_t sub_25AE9C68C()
{
  sub_25AE53634(v0 + 16);
  sub_25AE41938(v0 + OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_currentActiveLocale, &qword_27FA1E7E8, &qword_25AEA6E30);
  v1 = *(v0 + OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_transcriber);

  v2 = *(v0 + OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_downloaders);

  v3 = *(v0 + OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_downloadProgresses);

  v4 = *(v0 + OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_supportedEnglishLocales);

  v5 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_defaultEnglishLocale;
  v6 = sub_25AEA0EB8();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_25AE9C774()
{
  sub_25AE9C68C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LanguageAssetDownloader()
{
  result = qword_27FA1EAB8;
  if (!qword_27FA1EAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25AE9C820()
{
  sub_25AE9C918();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_25AEA0EB8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_25AE9C918()
{
  if (!qword_27FA1EAC8)
  {
    sub_25AEA0EB8();
    v0 = sub_25AEA2538();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA1EAC8);
    }
  }
}

uint64_t sub_25AE9C970@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LanguageAssetDownloader();
  result = sub_25AEA1428();
  *a1 = result;
  return result;
}

uint64_t sub_25AE9C9B0()
{
  type metadata accessor for LanguageAssetDownloadActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_27FA227B0 = v0;
  return result;
}

uint64_t sub_25AE9C9EC()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25AE9CA94()
{
  if (qword_27FA1D298 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25AE9CAF0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LanguageAssetDownloadActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t sub_25AE9CB28(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25AEA0EB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25AEA06F8(&qword_27FA1D2F8, 255, MEMORY[0x277CC9788]);
  v36 = a2;
  v13 = sub_25AEA2148();
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
      sub_25AEA06F8(&qword_27FA1E220, 255, MEMORY[0x277CC9788]);
      v23 = sub_25AEA2168();
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
    sub_25AE9DBC4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_25AE9CE10(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_25AEA28B8();
  sub_25AEA21F8();
  v9 = sub_25AEA28D8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_25AEA2828() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_25AE9DE70(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25AE9CF60(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_25AEA25C8();

    if (v9)
    {

      type metadata accessor for CollectedEnrollment();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_25AEA25B8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_25AE9D178(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_25AE9D918(v22 + 1);
    }

    v20 = v8;
    sub_25AE9DB40(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for CollectedEnrollment();
  v11 = *(v6 + 40);
  v12 = sub_25AEA2518();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_25AE9DFF0(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_25AEA2528();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_25AE9D178(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EB68, &qword_25AEA7A28);
    v2 = sub_25AEA2648();
    v16 = v2;
    sub_25AEA25A8();
    if (sub_25AEA25D8())
    {
      type metadata accessor for CollectedEnrollment();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_25AE9D918(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_25AEA2518();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_25AEA25D8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_25AE9D358(uint64_t a1)
{
  v2 = v1;
  v41 = sub_25AEA0EB8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EAD8, &qword_25AEA79B0);
  result = sub_25AEA2638();
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
      sub_25AEA06F8(&qword_27FA1D2F8, 255, MEMORY[0x277CC9788]);
      result = sub_25AEA2148();
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

uint64_t sub_25AE9D6B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1EB80, qword_25AEA7A98);
  result = sub_25AEA2638();
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
      sub_25AEA28B8();
      sub_25AEA21F8();
      result = sub_25AEA28D8();
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

uint64_t sub_25AE9D918(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EB68, &qword_25AEA7A28);
  result = sub_25AEA2638();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_25AEA2518();
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_25AE9DB40(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_25AEA2518();
  v5 = -1 << *(a2 + 32);
  result = sub_25AEA2598();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_25AE9DBC4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_25AEA0EB8();
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
    sub_25AE9D358(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_25AE9E150();
      goto LABEL_12;
    }

    sub_25AE9E634(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_25AEA06F8(&qword_27FA1D2F8, 255, MEMORY[0x277CC9788]);
  v15 = sub_25AEA2148();
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
      sub_25AEA06F8(&qword_27FA1E220, 255, MEMORY[0x277CC9788]);
      v23 = sub_25AEA2168();
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
  result = sub_25AEA2848();
  __break(1u);
  return result;
}

uint64_t sub_25AE9DE70(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_25AE9D6B8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25AE9E388();
      goto LABEL_16;
    }

    sub_25AE9E954(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_25AEA28B8();
  sub_25AEA21F8();
  result = sub_25AEA28D8();
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

      result = sub_25AEA2828();
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
  result = sub_25AEA2848();
  __break(1u);
  return result;
}

void sub_25AE9DFF0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25AE9D918(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_25AE9E4E4();
      goto LABEL_12;
    }

    sub_25AE9EB8C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_25AEA2518();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for CollectedEnrollment();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_25AEA2528();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_25AEA2848();
  __break(1u);
}

void *sub_25AE9E150()
{
  v1 = v0;
  v2 = sub_25AEA0EB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EAD8, &qword_25AEA79B0);
  v7 = *v0;
  v8 = sub_25AEA2628();
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

void *sub_25AE9E388()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1EB80, qword_25AEA7A98);
  v2 = *v0;
  v3 = sub_25AEA2628();
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

id sub_25AE9E4E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EB68, &qword_25AEA7A28);
  v2 = *v0;
  v3 = sub_25AEA2628();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_25AE9E634(uint64_t a1)
{
  v2 = v1;
  v37 = sub_25AEA0EB8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EAD8, &qword_25AEA79B0);
  v10 = sub_25AEA2638();
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
      sub_25AEA06F8(&qword_27FA1D2F8, 255, MEMORY[0x277CC9788]);
      result = sub_25AEA2148();
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

uint64_t sub_25AE9E954(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1EB80, qword_25AEA7A98);
  result = sub_25AEA2638();
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
      sub_25AEA28B8();

      sub_25AEA21F8();
      result = sub_25AEA28D8();
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

uint64_t sub_25AE9EB8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EB68, &qword_25AEA7A28);
  result = sub_25AEA2638();
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
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_25AEA2518();
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
      *(*(v6 + 48) + 8 * v13) = v18;
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

void sub_25AE9EDA0(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_25AEA25B8())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EB48, &qword_25AEA7A18);
      v3 = sub_25AEA2658();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_25AEA25B8();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x25F85A1C0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_25AEA2518();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_25AE9FE68();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_25AEA2528();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = sub_25AEA2518();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_25AE9FE68();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_25AEA2528();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v9 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_25AE9F06C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_25AEA25B8();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EB50, &qword_25AEA7A20);
      result = sub_25AEA2658();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_25AEA25B8();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    result = MEMORY[0x25F85A1C0](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    v10 = *(v3 + 40);
    sub_25AEA1418();
    sub_25AEA06F8(&qword_27FA1EB58, 255, MEMORY[0x277CBCDA8]);
    result = sub_25AEA2148();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_25AEA06F8(&qword_27FA1EB60, 255, MEMORY[0x277CBCDA8]);
      do
      {
        v23 = *(*(v3 + 48) + 8 * v12);
        result = sub_25AEA2168();
        if (result)
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_25AE9F308(uint64_t a1)
{
  v2 = sub_25AEA1318();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EB28, &unk_25AEA79E0);
    v10 = sub_25AEA2658();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_25AEA06F8(&qword_27FA1EB30, 255, MEMORY[0x277CDCCE8]);
      v18 = sub_25AEA2148();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_25AEA06F8(&qword_27FA1EB38, 255, MEMORY[0x277CDCCE8]);
          v25 = sub_25AEA2168();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_25AE9F630(uint64_t a1)
{
  v2 = sub_25AEA1338();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EB10, &qword_25AEA79D8);
    v10 = sub_25AEA2658();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_25AEA06F8(&qword_27FA1EB18, 255, MEMORY[0x277CDCD18]);
      v18 = sub_25AEA2148();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_25AEA06F8(&qword_27FA1EB20, 255, MEMORY[0x277CDCD18]);
          v25 = sub_25AEA2168();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_25AE9F958(uint64_t a1)
{
  v2 = sub_25AEA1348();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EAF8, &qword_25AEA79D0);
    v10 = sub_25AEA2658();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_25AEA06F8(&qword_27FA1EB00, 255, MEMORY[0x277CDCD40]);
      v18 = sub_25AEA2148();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_25AEA06F8(&qword_27FA1EB08, 255, MEMORY[0x277CDCD40]);
          v25 = sub_25AEA2168();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_25AE9FC80()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_25AE9FCC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25AE4F874;

  return sub_25AE9BA5C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25AE9FD88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E7E8, &qword_25AEA6E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE9FDF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E7E8, &qword_25AEA6E30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_25AE9FE68()
{
  result = qword_27FA1D2B0;
  if (!qword_27FA1D2B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA1D2B0);
  }

  return result;
}

uint64_t sub_25AE9FEB4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_25AEA0EB8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_25AEA12E8();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = sub_25AEA06F8(&qword_27FA1EB78, 255, MEMORY[0x277CDCD60]);

  return MEMORY[0x2822009F8](sub_25AEA000C, 0, 0);
}

uint64_t sub_25AEA000C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v0[11] = sub_25AEA12F8();
  v0[12] = sub_25AEA12D8();
  (*(v2 + 104))(v1, *MEMORY[0x277CDCC60], v3);
  v4 = *(MEMORY[0x277CDCC48] + 4);
  v8 = (*MEMORY[0x277CDCC48] + MEMORY[0x277CDCC48]);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_25AEA0108;
  v6 = v0[9];

  return v8(v6);
}

uint64_t sub_25AEA0108(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 112) = a1;

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_25AEA0284, 0, 0);
}

void sub_25AEA0284()
{
  v1 = 0;
  v2 = v0[14];
  v3 = v0[5];
  v4 = *(v2 + 16);
  v0[15] = v4;
  do
  {
    v0[16] = v1;
    if (v4 == v1)
    {
      break;
    }

    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v5 = v0[6];
    v7 = v0[3];
    v6 = v0[4];
    (*(v3 + 16))(v5, v0[14] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v1++, v6);
    LOBYTE(v7) = MEMORY[0x25F8589B0](v5, v7);
    (*(v3 + 8))(v5, v6);
  }

  while ((v7 & 1) == 0);
  v8 = v0[14];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[2];

  v0[17] = sub_25AEA12D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EB70, qword_25AEA7A38);
  v12 = swift_allocObject();
  v0[18] = v12;
  *(v12 + 16) = xmmword_25AEA3540;
  *(v12 + 32) = v11;
  *(v12 + 40) = v10;
  v13 = *(MEMORY[0x277CDCC40] + 4);
  v15 = (*MEMORY[0x277CDCC40] + MEMORY[0x277CDCC40]);

  v14 = swift_task_alloc();
  v0[19] = v14;
  *v14 = v0;
  v14[1] = sub_25AEA044C;

  v15(v12);
}

uint64_t sub_25AEA044C(char a1)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_25AEA0588, 0, 0);
}

uint64_t sub_25AEA0588()
{
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v1 = sub_25AEA12C8();
  __swift_project_value_buffer(v1, qword_27FA1DF50);
  v2 = sub_25AEA12A8();
  v3 = sub_25AEA24A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 160);
    v5 = *(v0 + 128) != *(v0 + 120);
    v6 = swift_slowAlloc();
    *v6 = 67109376;
    *(v6 + 4) = v5;
    *(v6 + 8) = 1024;
    *(v6 + 10) = v4;
    _os_log_impl(&dword_25AE3C000, v2, v3, "Is current locale installed: %{BOOL}d. Has transcriber assets installed: %{BOOL}d", v6, 0xEu);
    MEMORY[0x25F85AB80](v6, -1, -1);
  }

  v7 = *(v0 + 160);
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);
  v10 = *(v0 + 72);
  v11 = *(v0 + 48);

  v12 = *(v0 + 8);

  return v12((v8 != v9) & v7);
}

uint64_t sub_25AEA06F8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_25AEA074C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fractionCompleted];
  *a2 = v4;
  return result;
}

uint64_t objectdestroy_40Tm()
{
  v1 = sub_25AEA0EB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25AEA084C(void **a1, uint64_t a2)
{
  v5 = *(sub_25AEA0EB8() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_25AE9AD04(a1, a2, v6, v7);
}

uint64_t sub_25AEA08D0()
{
  v1 = sub_25AEA0EB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_25AEA09B0(uint64_t a1)
{
  v4 = *(sub_25AEA0EB8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25AE47200;

  return sub_25AE9AF90(a1, v6, v7, v8, v1 + v5, v9);
}