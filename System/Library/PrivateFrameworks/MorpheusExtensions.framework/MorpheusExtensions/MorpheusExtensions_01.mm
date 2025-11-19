uint64_t sub_25AAB8424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v7 = sub_25AAA48F0(0x737475706E69, 0xE600000000000000);
  if ((v8 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v7, &v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10020, &qword_25AAC5AE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    goto LABEL_18;
  }

  v65 = a2;
  if (!*(&v63 + 1))
  {
LABEL_18:
    v16 = &unk_27FA10018;
    v17 = &unk_25AAC5AE0;
    v18 = &v62;
LABEL_19:
    sub_25AAA5640(v18, v16, v17);
    sub_25AAA5558();
    swift_allocError();
    *v19 = 9;
    return swift_willThrow();
  }

  v57 = a3;
  __swift_project_boxed_opaque_existential_1Tm(&v62, *(&v63 + 1));
  v9 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v62);
  if (!*(a1 + 16) || (v10 = sub_25AAA48F0(0x5365727574616566, 0xEC00000073657A69), (v11 & 1) == 0))
  {

LABEL_17:
    v62 = 0u;
    v63 = 0u;
    v64 = 0;
    goto LABEL_18;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v10, &v59);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    goto LABEL_21;
  }

  if (!*(&v63 + 1))
  {
LABEL_21:

    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1Tm(&v62, *(&v63 + 1));
  v12 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v62);
  if (!*(a1 + 16) || (v13 = sub_25AAA48F0(0x6C706D61536D756ELL, 0xEA00000000007365), (v14 & 1) == 0))
  {

    v59 = 0u;
    v60 = 0u;
    v61 = 0;
LABEL_25:
    v16 = &qword_27FA0FEE8;
    v17 = &unk_25AAC5540;
    v18 = &v59;
    goto LABEL_19;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v13, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEF0, &unk_25AAC5B00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    goto LABEL_24;
  }

  if (!*(&v60 + 1))
  {
LABEL_24:

    goto LABEL_25;
  }

  sub_25AAA5864(&v59, &v62);
  v15 = sub_25AABDFB8(v9);
  if (v3)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(&v62);
  }

  v56 = v15;

  v54 = sub_25AABEC14(v12);

  v21 = *(&v63 + 1);
  v22 = v64;
  v23 = __swift_project_boxed_opaque_existential_1Tm(&v62, *(&v63 + 1));
  v24 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v53 = v25;
  v26 = v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v27;
  (*(v27 + 16))(v26);
  if ((sub_25AAC4928() & 1) == 0 || sub_25AAC4918() <= 64)
  {
    goto LABEL_39;
  }

  v52 = v50;
  *&v59 = 0x8000000000000000;
  if (sub_25AAC4928())
  {
    v28 = sub_25AAC4918();
    if (v28 < 64)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v29 = sub_25AAC4928();
  v28 = sub_25AAC4918();
  if (v29)
  {
    if (v28 > 64)
    {
LABEL_33:
      v51 = v50;
      MEMORY[0x28223BE20](v28);
      v31 = v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25AAA54EC();
      sub_25AAC48F8();
      v32 = *(*(v22 + 32) + 8);
      v33 = sub_25AAC4668();
      result = (*(v55 + 8))(v31, v21);
      if ((v33 & 1) == 0)
      {
        goto LABEL_39;
      }

LABEL_51:
      __break(1u);
      return result;
    }

    v50[1] = *(*(v22 + 24) + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v51 = v50;
    v35 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    v36 = sub_25AAC4B18();
    v50[2] = v50;
    MEMORY[0x28223BE20](v36);
    v38 = v50 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAC4AD8();
    v39 = *(*(v22 + 32) + 8);
    v40 = sub_25AAC4668();
    result = (*(v55 + 8))(v38, v21);
    if (v40)
    {
      goto LABEL_51;
    }

LABEL_38:
    sub_25AAC4908();
    goto LABEL_39;
  }

  if (v28 < 64)
  {
    goto LABEL_38;
  }

LABEL_39:
  if (sub_25AAC4918() <= 64)
  {
    goto LABEL_44;
  }

  while (1)
  {
    *&v59 = 0x7FFFFFFFFFFFFFFFLL;
    v41 = sub_25AAC4928();
    v42 = sub_25AAC4918();
    if ((v41 & 1) == 0)
    {
      break;
    }

    if (v42 < 65)
    {
      goto LABEL_48;
    }

LABEL_42:
    v52 = v50;
    MEMORY[0x28223BE20](v42);
    v44 = v50 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAA54EC();
    sub_25AAC48F8();
    v45 = *(*(v22 + 32) + 8);
    v46 = sub_25AAC4668();
    (*(v55 + 8))(v44, v21);
    if (v46)
    {
      __break(1u);
LABEL_44:
      if (sub_25AAC4918() == 64 && (sub_25AAC4928() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_49;
  }

  if (v42 >= 64)
  {
    goto LABEL_42;
  }

LABEL_48:
  sub_25AAC4908();
LABEL_49:
  sub_25AAC4908();
  (*(v55 + 8))(v26, v21);
  v47 = sub_25AAC4348();

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA100C0, &qword_25AAC5B98);
  v49 = v57;
  v57[3] = v48;
  *v49 = v47;
  return __swift_destroy_boxed_opaque_existential_1Tm(&v62);
}

double E5Trainer.attribute(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = (*v3 + *MEMORY[0x277D41428]);
  v8 = *v7;
  v9 = v7[1];
  sub_25AAC44C8();
  swift_getWitnessTable();
  sub_25AAC4558();
  if (v12)
  {
    sub_25AAA4B4C(&v11, a3);
  }

  else
  {
    sub_25AAA5640(&v11, &qword_27FA0FE38, &unk_25AAC5410);
    return E5Trainer.morpheusExtension(for:)(a1, a2, a3);
  }

  return result;
}

double E5Trainer.morpheusExtension(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25AAC45E8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  if (a1 == 1684107116 && a2 == 0xE400000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v8 = swift_allocObject();
    v8[1] = xmmword_25AAC5400;
    v8[2] = 0u;
    v8[3] = 0u;
    v9 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v9);
    v10 = sub_25AAC45B8();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
LABEL_9:
    v16 = sub_25AAC45A8();
    *(a3 + 24) = v10;
    *a3 = v16;
    return result;
  }

  if (a1 == 0x5774636172747865 && a2 == 0xEE00737468676965 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x4F74636172747865 && a2 == 0xEE00737475707475 || (sub_25AAC4AF8() & 1) != 0)
  {
    goto LABEL_8;
  }

  if (a1 == 0x6E69617274 && a2 == 0xE500000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_25AAC59E0;
    v19 = MEMORY[0x277D83B88];
    *(v18 + 32) = 1;
    *(v18 + 88) = MEMORY[0x277D837D0];
    *(v18 + 56) = v19;
    *(v18 + 64) = 0x6D6F646E6172;
    *(v18 + 72) = 0xE600000000000000;
    *(v18 + 120) = MEMORY[0x277D839B0];
    *(v18 + 96) = 0;
    v20 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v20);
    v10 = sub_25AAC45B8();
    v21 = *(v10 + 48);
    v22 = *(v10 + 52);
    swift_allocObject();
    goto LABEL_9;
  }

  if (a1 == 1818326629 && a2 == 0xE400000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
LABEL_8:
    v13 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v13);
    v10 = sub_25AAC45B8();
    v14 = *(v10 + 48);
    v15 = *(v10 + 52);
    swift_allocObject();
    goto LABEL_9;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_25AAB93B4@<X0>(uint64_t *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v5 = sub_25AAC42E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v13 = *a1;
  v14 = a1[1];
  v15 = v13 == 7696487 && v14 == 0xE300000000000000;
  if (v15 || (sub_25AAC4AF8() & 1) != 0)
  {
    v16 = MEMORY[0x277D413A0];
LABEL_7:
    v17 = *v16;
    v18 = sub_25AAC43D8();
    v19 = *(v18 - 8);
    (*(v19 + 104))(a3, v17, v18);
    return (*(v19 + 56))(a3, 0, 1, v18);
  }

  if (v13 == 6647393 && v14 == 0xE300000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    v16 = MEMORY[0x277D41390];
    goto LABEL_7;
  }

  if (v13 == 0x5F63697373616C63 && v14 == 0xEB00000000757063 || (sub_25AAC4AF8() & 1) != 0)
  {
    (*(v6 + 104))(v12, *MEMORY[0x277D41320], v5);
    v21 = v33;
    v22 = *v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v21 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_25AAAC71C(0, v22[2] + 1, 1, v22);
      *v33 = v22;
    }

    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      v22 = sub_25AAAC71C(v24 > 1, v25 + 1, 1, v22);
      *v33 = v22;
    }

    v22[2] = v25 + 1;
    (*(v6 + 32))(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v25, v12, v5);
  }

  else if (v13 == 1936617058 && v14 == 0xE400000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    (*(v6 + 104))(v10, *MEMORY[0x277D41328], v5);
    v27 = v33;
    v28 = *v33;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *v27 = v28;
    if ((v29 & 1) == 0)
    {
      v28 = sub_25AAAC71C(0, v28[2] + 1, 1, v28);
      *v33 = v28;
    }

    v31 = v28[2];
    v30 = v28[3];
    if (v31 >= v30 >> 1)
    {
      v28 = sub_25AAAC71C(v30 > 1, v31 + 1, 1, v28);
      *v33 = v28;
    }

    v28[2] = v31 + 1;
    (*(v6 + 32))(v28 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v31, v10, v5);
  }

  v26 = sub_25AAC43D8();
  return (*(*(v26 - 8) + 56))(a3, 1, 1, v26);
}

char *sub_25AAB9818(uint64_t a1, void **a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10040, &unk_25AAC5B30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_25AAC43D8();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v28 = &v25 - v15;
  v16 = *(a1 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v26 = v14;
  v29 = (v14 + 32);
  v30 = (v14 + 48);
  v17 = (a1 + 40);
  v32 = MEMORY[0x277D84F90];
  v25 = v13;
  v27 = a2;
  while (1)
  {
    v18 = *v17;
    v31[0] = *(v17 - 1);
    v31[1] = v18;

    sub_25AAB93B4(v31, a2, v8);
    if (v2)
    {
      break;
    }

    if ((*v30)(v8, 1, v9) == 1)
    {
      sub_25AAA5640(v8, &qword_27FA10040, &unk_25AAC5B30);
    }

    else
    {
      v19 = v28;
      v20 = *v29;
      (*v29)(v28, v8, v9);
      v20(v13, v19, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_25AAAC6F4(0, *(v32 + 2) + 1, 1, v32);
      }

      v22 = *(v32 + 2);
      v21 = *(v32 + 3);
      if (v22 >= v21 >> 1)
      {
        v32 = sub_25AAAC6F4(v21 > 1, v22 + 1, 1, v32);
      }

      v23 = v32;
      *(v32 + 2) = v22 + 1;
      v13 = v25;
      v20(&v23[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22], v25, v9);
      a2 = v27;
    }

    v17 += 2;
    if (!--v16)
    {
      return v32;
    }
  }

  return v32;
}

uint64_t sub_25AAB9B10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = MEMORY[0x277D41428];
  v7 = *(*a2 + *MEMORY[0x277D41428]);
  v8 = sub_25AAC48D8();
  v61 = *(v8 - 8);
  v9 = *(v61 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - v10;
  if (!*(a1 + 16))
  {
    goto LABEL_37;
  }

  v12 = sub_25AAA48F0(1752457584, 0xE400000000000000);
  if ((v13 & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v12, &v58);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_37;
  }

  v55 = a3;
  v14 = v57[1];
  if (!*(a1 + 16))
  {
    goto LABEL_32;
  }

  v53 = v57[0];
  v15 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE900000000000073);
  if ((v16 & 1) == 0)
  {
    goto LABEL_32;
  }

  v54 = v14;
  sub_25AAA5378(*(a1 + 56) + 32 * v15, v57);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10010, &qword_25AAC5AD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    goto LABEL_34;
  }

  v51 = v17;
  if (!*(&v59 + 1))
  {
LABEL_34:

    goto LABEL_35;
  }

  v52 = v60;
  __swift_project_boxed_opaque_existential_1Tm(&v58, *(&v59 + 1));
  v18 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v58);
  v19 = sub_25AAB163C(v18);

  if (!v19)
  {
LABEL_54:

    goto LABEL_37;
  }

  v52 = v19;
  if (!*(a1 + 16) || (v20 = sub_25AAA48F0(0x737475706E69, 0xE600000000000000), (v21 & 1) == 0))
  {

LABEL_39:

    v58 = 0u;
    v59 = 0u;
    v60 = 0;
LABEL_42:
    v38 = &qword_27FA10018;
    v39 = &qword_25AAC5AE0;
    goto LABEL_36;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v20, v57);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10020, &qword_25AAC5AE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    goto LABEL_41;
  }

  if (!*(&v59 + 1))
  {
LABEL_41:

    goto LABEL_42;
  }

  v49 = v22;
  v50 = v60;
  __swift_project_boxed_opaque_existential_1Tm(&v58, *(&v59 + 1));
  v23 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v58);
  if (!*(a1 + 16))
  {
    goto LABEL_43;
  }

  v24 = sub_25AAA48F0(0x7374757074756FLL, 0xE700000000000000);
  if ((v25 & 1) == 0)
  {
    goto LABEL_43;
  }

  v50 = v23;
  sub_25AAA5378(*(a1 + 56) + 32 * v24, v57);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    goto LABEL_45;
  }

  if (!*(&v59 + 1))
  {
LABEL_45:

    goto LABEL_41;
  }

  v48 = v60;
  __swift_project_boxed_opaque_existential_1Tm(&v58, *(&v59 + 1));
  v26 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v58);
  if (!*(a1 + 16) || (v27 = sub_25AAA48F0(0x73746867696577, 0xE700000000000000), (v28 & 1) == 0))
  {

LABEL_43:

    goto LABEL_39;
  }

  v48 = v26;
  sub_25AAA5378(*(a1 + 56) + 32 * v27, v57);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    goto LABEL_48;
  }

  if (!*(&v59 + 1))
  {
LABEL_48:

    goto LABEL_45;
  }

  v47 = v60;
  __swift_project_boxed_opaque_existential_1Tm(&v58, *(&v59 + 1));
  v47 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v58);
  if (!*(a1 + 16) || (v29 = sub_25AAA48F0(0x73656369766564, 0xE700000000000000), (v30 & 1) == 0))
  {

LABEL_32:

    v58 = 0u;
    v59 = 0u;
    v60 = 0;
LABEL_35:
    v38 = &qword_27FA10008;
    v39 = &qword_25AAC5AD0;
LABEL_36:
    sub_25AAA5640(&v58, v38, v39);
LABEL_37:
    sub_25AAA5558();
    swift_allocError();
    *v40 = 3;
    return swift_willThrow();
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v29, v57);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    goto LABEL_51;
  }

  if (!*(&v59 + 1))
  {
LABEL_51:

    goto LABEL_34;
  }

  v51 = v60;
  __swift_project_boxed_opaque_existential_1Tm(&v58, *(&v59 + 1));
  v31 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v58);
  v32 = sub_25AAB163C(v31);

  v51 = v32;
  if (!v32)
  {

    goto LABEL_54;
  }

  if (!*(a1 + 16) || (v33 = sub_25AAA48F0(0x7A69536863746162, 0xEA00000000007365), (v34 & 1) == 0))
  {

    goto LABEL_39;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v33, v57);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    goto LABEL_56;
  }

  if (!*(&v59 + 1))
  {
LABEL_56:

    goto LABEL_48;
  }

  v49 = v60;
  __swift_project_boxed_opaque_existential_1Tm(&v58, *(&v59 + 1));
  v49 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v58);
  v35 = *(v5 + *v6 + 8);
  v36 = v56;
  sub_25AABF57C(v50);
  if (v36)
  {
  }

  else
  {

    v56 = sub_25AABF57C(v48);

    v50 = sub_25AABF57C(v47);

    v42 = *(a1 + 16);
    if (v42)
    {
      v41 = sub_25AAA48F0(0x676E696E7261656CLL, 0xEC00000065746152);
      if (v43)
      {
        sub_25AAA5378(*(a1 + 56) + 32 * v41, &v58);
        sub_25AABFED8();
        v41 = swift_dynamicCast();
        v42 = v57[0];
        if (!v41)
        {
          v42 = 0;
        }
      }

      else
      {
        v42 = 0;
      }
    }

    v47 = v42;
    v48 = &v47;
    *&v58 = v42;
    MEMORY[0x28223BE20](v41);
    v45 = v7;
    v46 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10028, &unk_25AAC5AF0);
    sub_25AABA6D8(sub_25AABF8DC, (&v47 - 4), MEMORY[0x277D84A98], v7, v44, v11);

    *(v55 + 24) = MEMORY[0x277D84F78] + 8;
    sub_25AABFD98(v51);

    sub_25AABF8FC(v49);

    v45 = v11;
    sub_25AAC44A8();
    (*(v61 + 8))(v11, v8);
  }
}

uint64_t sub_25AABA650@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_25AAC43C8();
  return (*(*(a2 - 8) + 56))(a3, 0, 1, a2);
}

uint64_t sub_25AABA6D8@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a2;
  v32 = a1;
  v29 = *(a3 - 8);
  v10 = *(v29 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v26);
  if ((*(v16 + 48))(v24, 1, v15) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v16 + 32))(v20, v24, v15);
  v32(v20, v13);
  result = (*(v16 + 8))(v20, v15);
  if (v6)
  {
    return (*(v29 + 32))(v30, v13, a3);
  }

  return result;
}

uint64_t sub_25AABA980@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a1 + 16) && (v6 = *a2, v7 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE800000000000000), (v8 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v7, v13), (swift_dynamicCast() & 1) != 0))
  {
    v9 = sub_25AAC4478();

    if (!v3)
    {
      v11 = *(v6 + *MEMORY[0x277D41428]);
      result = sub_25AAC4828();
      a3[3] = result;
      *a3 = v9;
    }
  }

  else
  {
    sub_25AAA5558();
    swift_allocError();
    *v12 = 6;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25AABAAC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a1 + 16) && (v5 = *a2, v6 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE800000000000000), (v7 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v6, v12), (swift_dynamicCast() & 1) != 0))
  {
    v8 = sub_25AAC4468();

    v9 = *(v5 + *MEMORY[0x277D41428]);
    sub_25AAC4828();
    result = sub_25AAC4628();
    a3[3] = result;
    *a3 = v8;
  }

  else
  {
    sub_25AAA5558();
    swift_allocError();
    *v11 = 7;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25AABAC20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = sub_25AAC4308();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_34;
  }

  v12 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE800000000000000);
  if ((v13 & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v12, &v119);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_34;
  }

  v122 = v8;
  v14 = *(&v116 + 1);
  if (!*(a1 + 16))
  {
    goto LABEL_29;
  }

  v110 = v116;
  v15 = sub_25AAA48F0(0x737475706E69, 0xE600000000000000);
  if ((v16 & 1) == 0)
  {
    goto LABEL_29;
  }

  v111 = v14;
  sub_25AAA5378(*(a1 + 56) + 32 * v15, &v116);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10020, &qword_25AAC5AE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v121 = 0;
    v119 = 0u;
    v120 = 0u;
    goto LABEL_31;
  }

  v108 = a3;
  if (!*(&v120 + 1))
  {
LABEL_31:

    goto LABEL_32;
  }

  v109 = v121;
  __swift_project_boxed_opaque_existential_1Tm(&v119, *(&v120 + 1));
  v17 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v119);
  if (!*(a1 + 16) || (v18 = sub_25AAA48F0(0x5365727574616566, 0xEC00000073657A69), (v19 & 1) == 0))
  {

LABEL_29:

    v119 = 0u;
    v120 = 0u;
    v121 = 0;
LABEL_32:
    v32 = &unk_27FA10018;
    v33 = &unk_25AAC5AE0;
    v34 = &v119;
LABEL_33:
    sub_25AAA5640(v34, v32, v33);
LABEL_34:
    sub_25AAA5558();
    swift_allocError();
    *v35 = 8;
    return swift_willThrow();
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v18, &v116);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v121 = 0;
    v119 = 0u;
    v120 = 0u;
    goto LABEL_37;
  }

  if (!*(&v120 + 1))
  {
LABEL_37:

    goto LABEL_31;
  }

  v109 = v17;
  __swift_project_boxed_opaque_existential_1Tm(&v119, *(&v120 + 1));
  v20 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v119);
  if (!*(a1 + 16) || (v21 = sub_25AAA48F0(0x6C706D61536D756ELL, 0xEA00000000007365), (v22 & 1) == 0))
  {

    v116 = 0u;
    v117 = 0u;
    v118 = 0;
LABEL_41:
    v32 = &qword_27FA0FEE8;
    v33 = &unk_25AAC5540;
    v34 = &v116;
    goto LABEL_33;
  }

  v107 = v20;
  sub_25AAA5378(*(a1 + 56) + 32 * v21, &v113);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEF0, &unk_25AAC5B00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v118 = 0;
    v116 = 0u;
    v117 = 0u;
    goto LABEL_40;
  }

  if (!*(&v117 + 1))
  {
LABEL_40:

    goto LABEL_41;
  }

  sub_25AAA5864(&v116, &v119);
  if (!*(a1 + 16) || (v23 = sub_25AAA48F0(0x7368636F7065, 0xE600000000000000), (v24 & 1) == 0))
  {

    v113 = 0u;
    v114 = 0u;
    v115 = 0;
LABEL_45:
    sub_25AAA5640(&v113, &qword_27FA0FEE8, &unk_25AAC5540);
LABEL_46:
    __swift_destroy_boxed_opaque_existential_1Tm(&v119);
    goto LABEL_34;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v23, v112);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
    goto LABEL_44;
  }

  if (!*(&v114 + 1))
  {
LABEL_44:

    goto LABEL_45;
  }

  sub_25AAA5864(&v113, &v116);
  if (!*(a1 + 16))
  {
    goto LABEL_48;
  }

  v25 = sub_25AAA48F0(0x4D656C6666756873, 0xED0000646F687465);
  if ((v26 & 1) == 0)
  {
    goto LABEL_48;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v25, &v113);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_48;
  }

  v27 = v112[1];
  if (!*(a1 + 16) || (v28 = v112[0], v29 = sub_25AAA48F0(0x637461426C6C7566, 0xE900000000000068), (v30 & 1) == 0) || (sub_25AAA5378(*(a1 + 56) + 32 * v29, &v113), (swift_dynamicCast() & 1) == 0))
  {

LABEL_48:

    __swift_destroy_boxed_opaque_existential_1Tm(&v116);
    goto LABEL_46;
  }

  v105 = LOBYTE(v112[0]);
  if (v28 == 0x6D6F646E6172 && v27 == 0xE600000000000000)
  {

    v31 = MEMORY[0x277D41358];
  }

  else
  {
    v37 = sub_25AAC4AF8();

    v31 = MEMORY[0x277D41360];
    if (v37)
    {
      v31 = MEMORY[0x277D41358];
    }
  }

  (*(v122 + 104))(v11, *v31, v7);
  v108[3] = MEMORY[0x277D84F78] + 8;
  v106 = sub_25AABE650(v109, *(v6 + *MEMORY[0x277D41428]), *(v6 + *MEMORY[0x277D41428] + 8));
  if (v3)
  {
    (*(v122 + 8))(v11, v7);

    v38 = &v124;
    goto LABEL_53;
  }

  v104 = sub_25AABEC14(v107);
  v109 = 0;

  v41 = *(&v120 + 1);
  v40 = v121;
  v42 = __swift_project_boxed_opaque_existential_1Tm(&v119, *(&v120 + 1));
  v103 = v97;
  v43 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v102 = v44;
  v45 = v97 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v46;
  (*(v46 + 16))(v45);
  v47 = v40;
  if ((sub_25AAC4928() & 1) == 0 || sub_25AAC4918() <= 64)
  {
    goto LABEL_68;
  }

  *&v113 = 0x8000000000000000;
  if (sub_25AAC4928())
  {
    v48 = sub_25AAC4918();
    if (v48 < 64)
    {
      goto LABEL_67;
    }

LABEL_62:
    v101 = v97;
    MEMORY[0x28223BE20](v48);
    v51 = v97 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAA54EC();
    sub_25AAC48F8();
    v52 = *(v47[4] + 8);
    v53 = sub_25AAC4668();
    result = (*(v107 + 8))(v51, v41);
    if (v53)
    {
      goto LABEL_92;
    }

    goto LABEL_68;
  }

  v49 = sub_25AAC4928();
  v48 = sub_25AAC4918();
  if (v49)
  {
    if (v48 <= 64)
    {
      v100 = v47;
      v98 = *(v47[3] + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v101 = v97;
      v55 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v56 = sub_25AAC4B18();
      v99 = v97;
      MEMORY[0x28223BE20](v56);
      v58 = v97 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25AAC4AD8();
      v59 = *(v100[4] + 8);
      v60 = sub_25AAC4668();
      result = (*(v107 + 8))(v58, v41);
      if (v60)
      {
        goto LABEL_92;
      }

      goto LABEL_67;
    }

    goto LABEL_62;
  }

  if (v48 < 64)
  {
LABEL_67:
    sub_25AAC4908();
  }

LABEL_68:
  if (sub_25AAC4918() > 64 || sub_25AAC4918() == 64 && (sub_25AAC4928() & 1) == 0)
  {
    *&v113 = 0x7FFFFFFFFFFFFFFFLL;
    v61 = sub_25AAC4928();
    v62 = sub_25AAC4918();
    if ((v61 & 1) == 0)
    {
      goto LABEL_75;
    }

    if (v62 < 65)
    {
LABEL_76:
      sub_25AAC4908();
    }

    else
    {
      while (1)
      {
        v101 = v97;
        MEMORY[0x28223BE20](v62);
        v64 = v97 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25AAA54EC();
        sub_25AAC48F8();
        v65 = *(v47[4] + 8);
        v66 = sub_25AAC4668();
        v62 = (*(v107 + 8))(v64, v41);
        if ((v66 & 1) == 0)
        {
          break;
        }

        __break(1u);
LABEL_75:
        if (v62 < 64)
        {
          goto LABEL_76;
        }
      }
    }
  }

  v101 = sub_25AAC4908();
  (*(v107 + 8))(v45, v41);
  v68 = *(&v117 + 1);
  v67 = v118;
  v69 = __swift_project_boxed_opaque_existential_1Tm(&v116, *(&v117 + 1));
  v100 = v97;
  v70 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v99 = v71;
  v72 = (v71 + 15) & 0xFFFFFFFFFFFFFFF0;
  v102 = v73;
  v74 = *(v73 + 16);
  v103 = v97 - v72;
  v74();
  v107 = v67;
  if ((sub_25AAC4928() & 1) == 0)
  {
    goto LABEL_79;
  }

  v75 = *(*(v107 + 24) + 16);
  v76 = swift_getAssociatedTypeWitness();
  v98 = v97;
  v77 = (*(*(v76 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v76);
  swift_getAssociatedConformanceWitness();
  v78 = sub_25AAC4B18();
  v97[1] = v97;
  MEMORY[0x28223BE20](v78);
  sub_25AAC4AD8();
  v79 = *(*(v107 + 32) + 8);
  LOBYTE(v75) = sub_25AAC4678();
  result = (*(v102 + 8))(v97 - v72, v68);
  if (v75)
  {
LABEL_79:
    if (sub_25AAC4918() > 31)
    {
      LODWORD(v113) = -1;
      v80 = sub_25AAC4928();
      v81 = sub_25AAC4918();
      if (v80)
      {
        if (v81 <= 32)
        {
          v82 = *(*(v107 + 24) + 16);
          v83 = swift_getAssociatedTypeWitness();
          v98 = v97;
          v84 = (*(*(v83 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v83);
          swift_getAssociatedConformanceWitness();
          v85 = sub_25AAC4B18();
          MEMORY[0x28223BE20](v85);
          v87 = v97 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_25AAC4AD8();
          v88 = *(*(v107 + 32) + 8);
          v89 = sub_25AAC4658();
          (*(v102 + 8))(v87, v68);
          if ((v89 & 1) == 0)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        }
      }

      else if (v81 < 33)
      {
LABEL_87:
        sub_25AAC4908();
        goto LABEL_88;
      }

      MEMORY[0x28223BE20](v81);
      v91 = v97 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25AABFF80();
      v92 = v107;
      sub_25AAC48F8();
      v93 = *(*(v92 + 32) + 8);
      v94 = sub_25AAC4668();
      (*(v102 + 8))(v91, v68);
      if (v94)
      {
        __break(1u);
        goto LABEL_87;
      }
    }

LABEL_88:
    v95 = v103;
    sub_25AAC4908();
    (*(v102 + 8))(v95, v68);
    v96 = v109;
    sub_25AAC44B8();
    if (!v96)
    {
      (*(v122 + 8))(v11, v7);

      goto LABEL_54;
    }

    (*(v122 + 8))(v11, v7);

    v38 = &v123;
LABEL_53:
    v39 = *(v38 - 32);

    __swift_deallocate_boxed_opaque_existential_0(v108);
LABEL_54:
    __swift_destroy_boxed_opaque_existential_1Tm(&v116);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v119);
  }

  __break(1u);
LABEL_92:
  __break(1u);
  return result;
}

uint64_t sub_25AABBFB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v6 = *a2;
  v7 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE800000000000000);
  if ((v8 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v7, &v66);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v9 = v63;
  v10 = sub_25AAA48F0(0x737475706E69, 0xE600000000000000);
  if ((v11 & 1) == 0)
  {
    goto LABEL_18;
  }

  v69 = *(&v63 + 1);
  sub_25AAA5378(*(a1 + 56) + 32 * v10, &v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10020, &qword_25AAC5AE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    goto LABEL_20;
  }

  v60 = v9;
  if (!*(&v67 + 1))
  {
LABEL_20:

    goto LABEL_21;
  }

  v61 = v68;
  __swift_project_boxed_opaque_existential_1Tm(&v66, *(&v67 + 1));
  v12 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v66);
  if (!*(a1 + 16) || (v13 = sub_25AAA48F0(0x5365727574616566, 0xEC00000073657A69), (v14 & 1) == 0))
  {

LABEL_18:

    v66 = 0u;
    v67 = 0u;
    v68 = 0;
LABEL_21:
    v18 = &unk_27FA10018;
    v19 = &unk_25AAC5AE0;
    v20 = &v66;
LABEL_22:
    sub_25AAA5640(v20, v18, v19);
LABEL_23:
    sub_25AAA5558();
    swift_allocError();
    *v21 = 9;
    return swift_willThrow();
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v13, &v63);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    goto LABEL_26;
  }

  if (!*(&v67 + 1))
  {
LABEL_26:

    goto LABEL_20;
  }

  v61 = v68;
  __swift_project_boxed_opaque_existential_1Tm(&v66, *(&v67 + 1));
  v15 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v66);
  if (!*(a1 + 16) || (v16 = sub_25AAA48F0(0x6C706D61536D756ELL, 0xEA00000000007365), (v17 & 1) == 0))
  {

    v63 = 0u;
    v64 = 0u;
    v65 = 0;
LABEL_30:
    v18 = &qword_27FA0FEE8;
    v19 = &unk_25AAC5540;
    v20 = &v63;
    goto LABEL_22;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v16, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEF0, &unk_25AAC5B00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    goto LABEL_29;
  }

  if (!*(&v64 + 1))
  {
LABEL_29:

    goto LABEL_30;
  }

  sub_25AAA5864(&v63, &v66);
  sub_25AABE650(v12, *(v6 + *MEMORY[0x277D41428]), *(v6 + *MEMORY[0x277D41428] + 8));
  if (v3)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(&v66);
  }

  v58 = sub_25AABEC14(v15);

  v24 = *(&v67 + 1);
  v23 = v68;
  v25 = __swift_project_boxed_opaque_existential_1Tm(&v66, *(&v67 + 1));
  v56 = v53;
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v55 = v27;
  v57 = v28;
  v29 = *(v28 + 16);
  v59 = v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29();
  v61 = v23;
  if ((sub_25AAC4928() & 1) == 0 || sub_25AAC4918() <= 64)
  {
    goto LABEL_46;
  }

  *&v63 = 0x8000000000000000;
  if (sub_25AAC4928())
  {
    v30 = sub_25AAC4918();
    if (v30 < 64)
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  v31 = sub_25AAC4928();
  v30 = sub_25AAC4918();
  if (v31)
  {
    if (v30 > 64)
    {
LABEL_40:
      v54 = v53;
      MEMORY[0x28223BE20](v30);
      v33 = v53 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25AAA54EC();
      v34 = v61;
      sub_25AAC48F8();
      v35 = *(*(v34 + 32) + 8);
      v36 = sub_25AAC4668();
      result = (*(v57 + 8))(v33, v24);
      if ((v36 & 1) == 0)
      {
        goto LABEL_46;
      }

LABEL_57:
      __break(1u);
      return result;
    }

    v53[0] = *(*(v61 + 24) + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v54 = v53;
    v38 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    v39 = sub_25AAC4B18();
    v53[1] = v53;
    MEMORY[0x28223BE20](v39);
    v41 = v53 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAC4AD8();
    v42 = *(*(v61 + 32) + 8);
    v43 = sub_25AAC4668();
    result = (*(v57 + 8))(v41, v24);
    if (v43)
    {
      goto LABEL_57;
    }

LABEL_45:
    sub_25AAC4908();
    goto LABEL_46;
  }

  if (v30 < 64)
  {
    goto LABEL_45;
  }

LABEL_46:
  if (sub_25AAC4918() <= 64)
  {
    goto LABEL_51;
  }

  while (1)
  {
    *&v63 = 0x7FFFFFFFFFFFFFFFLL;
    v44 = sub_25AAC4928();
    v45 = sub_25AAC4918();
    if ((v44 & 1) == 0)
    {
      break;
    }

    if (v45 < 65)
    {
      goto LABEL_55;
    }

LABEL_49:
    v54 = v53;
    MEMORY[0x28223BE20](v45);
    v47 = v53 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAA54EC();
    v48 = v61;
    sub_25AAC48F8();
    v49 = *(*(v48 + 32) + 8);
    v50 = sub_25AAC4668();
    (*(v57 + 8))(v47, v24);
    if (v50)
    {
      __break(1u);
LABEL_51:
      if (sub_25AAC4918() == 64 && (sub_25AAC4928() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_56;
  }

  if (v45 >= 64)
  {
    goto LABEL_49;
  }

LABEL_55:
  sub_25AAC4908();
LABEL_56:
  v51 = v59;
  sub_25AAC4908();
  (*(v57 + 8))(v51, v24);
  v52 = sub_25AAC4498();

  sub_25AAC4828();
  sub_25AAC4628();
  a3[3] = sub_25AAC4828();
  *a3 = v52;
  return __swift_destroy_boxed_opaque_existential_1Tm(&v66);
}

Swift::Bool __swiftcall E5Trainer.has(attribute:)(Swift::String attribute)
{
  object = attribute._object;
  countAndFlagsBits = attribute._countAndFlagsBits;
  v3 = sub_25AAA506C(&unk_286C1ABC0);
  swift_arrayDestroy();
  LOBYTE(object) = sub_25AAA2D08(countAndFlagsBits, object, v3);

  return object & 1;
}

uint64_t sub_25AABCA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_25AAA506C(a5);
  swift_arrayDestroy();
  v8 = sub_25AAA2D08(a1, a2, v7);

  return v8 & 1;
}

unint64_t sub_25AABCABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_25AAC4648();

  return sub_25AABCB18(a1, v9, a2, a3);
}

unint64_t sub_25AABCB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_25AAC4688();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

char *sub_25AABCCA0(char *a1, int64_t a2, char a3)
{
  result = sub_25AABCD20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25AABCCC0(char *a1, int64_t a2, char a3)
{
  result = sub_25AABCE2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25AABCCE0(char *a1, int64_t a2, char a3)
{
  result = sub_25AABCF3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25AABCD00(size_t a1, int64_t a2, char a3)
{
  result = sub_25AABD040(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25AABCD20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FFE8, &unk_25AAC59D0);
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

char *sub_25AABCE2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF70, &qword_25AAC5780);
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

char *sub_25AABCF3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA100B8, &qword_25AAC5B90);
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

size_t sub_25AABD040(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10088, &qword_25AAC5B60);
  v10 = *(sub_25AAC43B8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_25AAC43B8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_25AABD218(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE70, &qword_25AAC5B10);
  v38 = a2;
  result = sub_25AAC4AA8();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_25AAC4B78();
      sub_25AAC4738();
      result = sub_25AAC4B98();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25AABD4B8(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_25AAC4AA8();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_25AAC4B78();
      sub_25AAC4738();
      result = sub_25AAC4B98();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_25AABD758(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_25AAA48F0(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      sub_25AABD4B8(v22, a4 & 1, a6, a7);
      v26 = *v11;
      v17 = sub_25AAA48F0(a2, a3);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_18:
        result = sub_25AAC4B28();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      a5();
      v17 = v25;
    }
  }

  v28 = *v11;
  if (v23)
  {
    v29 = v28[7];
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;
  }

  v28[(v17 >> 6) + 8] |= 1 << v17;
  v32 = (v28[6] + 16 * v17);
  *v32 = a2;
  v32[1] = a3;
  *(v28[7] + 8 * v17) = a1;
  v33 = v28[2];
  v21 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v34;
}

uint64_t sub_25AABD8F8(uint64_t result)
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

  v3 = sub_25AAAC6F4(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  result = sub_25AAC43D8();
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

uint64_t objectdestroyTm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25AABDC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_25AAC4808())
  {
    sub_25AAC4AC8();
    v13 = sub_25AAC4AB8();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_25AAC4808();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_25AAC47F8())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_25AAC49C8();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_25AABCABC(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_25AABDFB8(uint64_t a1)
{
  v2 = a1;
  v3 = sub_25AAB0E84(a1);
  if (v3)
  {
    return v3;
  }

  v52 = v1;
  v4 = sub_25AAA4F34(MEMORY[0x277D84F90]);
  v5 = v2 + 64;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v56 = v9;
  v53 = v2 + 64;
  v54 = v2;
  while (v8)
  {
    v15 = v10;
LABEL_17:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = v18 | (v15 << 6);
    sub_25AABFF24(*(v2 + 48) + 40 * v19, v59);
    sub_25AAA5378(*(v2 + 56) + 32 * v19, v58);
    v61 = v59[0];
    v62 = v59[1];
    *&v63 = v60;
    sub_25AAA4B4C(v58, (&v63 + 8));
LABEL_18:
    v68[0] = v63;
    v68[1] = v64;
    v69 = v65;
    v66 = v61;
    v67 = v62;
    if (!*(&v62 + 1))
    {

      return v4;
    }

    sub_25AAA4B4C((v68 + 8), v59);
    v61 = v66;
    v62 = v67;
    *&v63 = *&v68[0];
    if (!swift_dynamicCast())
    {
      goto LABEL_55;
    }

    v20 = v58[0];
    sub_25AAA5378(v59, &v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA100A8, &qword_25AAC5B78);
    if (swift_dynamicCast())
    {
      v57 = *&v58[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v61 = v4;
      v22 = sub_25AAA48F0(v20, *(&v20 + 1));
      v24 = v4[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_58;
      }

      v28 = v23;
      if (v4[3] >= v27)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_37;
        }

        v49 = v22;
        sub_25AAC3818();
        v22 = v49;
        v9 = v56;
        if (v28)
        {
          goto LABEL_6;
        }

LABEL_38:
        v4 = v61;
        *(v61 + 8 * (v22 >> 6) + 64) |= 1 << v22;
        *(v4[6] + 16 * v22) = v20;
        *(v4[7] + 8 * v22) = v57;
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        v41 = v4[2];
        v26 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v26)
        {
          goto LABEL_60;
        }

        v4[2] = v42;
        v2 = v54;
      }

      else
      {
        sub_25AABD4B8(v27, isUniquelyReferenced_nonNull_native, &qword_27FA0FE88, &qword_25AAC5500);
        v22 = sub_25AAA48F0(v20, *(&v20 + 1));
        if ((v28 & 1) != (v29 & 1))
        {
          goto LABEL_61;
        }

LABEL_37:
        v9 = v56;
        if ((v28 & 1) == 0)
        {
          goto LABEL_38;
        }

LABEL_6:
        v11 = v22;

        v12 = v61;
        v13 = *(v61 + 56);
        v14 = *(v13 + 8 * v11);
        *(v13 + 8 * v11) = v57;
        v4 = v12;

        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        v2 = v54;
      }
    }

    else
    {
      sub_25AAA5378(v59, v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10010, &qword_25AAC5AD8);
      if (!swift_dynamicCast())
      {

        *&v63 = 0;
        v61 = 0u;
        v62 = 0u;
        sub_25AAA5640(&v61, &qword_27FA10008, &qword_25AAC5AD0);
        goto LABEL_55;
      }

      v55 = v4;
      v4 = __swift_project_boxed_opaque_existential_1Tm(&v61, *(&v62 + 1));
      v30 = sub_25AAC4588();
      __swift_destroy_boxed_opaque_existential_1Tm(&v61);
      v31 = sub_25AAB1550(v30);

      if (!v31)
      {

LABEL_55:

        sub_25AAA5558();
        swift_allocError();
        *v50 = 0;
        swift_willThrow();

        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        return v4;
      }

      v32 = *(&v20 + 1);
      if (v31 >> 62)
      {
        v33 = sub_25AAC4A88();
        if (!v33)
        {
LABEL_47:

          v34 = MEMORY[0x277D84F90];
          v36 = v55;
          goto LABEL_48;
        }
      }

      else
      {
        v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v33)
        {
          goto LABEL_47;
        }
      }

      *&v61 = MEMORY[0x277D84F90];
      sub_25AABCCE0(0, v33 & ~(v33 >> 63), 0);
      if (v33 < 0)
      {
        goto LABEL_59;
      }

      v34 = v61;
      if ((v31 & 0xC000000000000001) != 0)
      {
        v35 = 0;
        v36 = v55;
        do
        {
          [MEMORY[0x25F853130](v35 v31)];
          v38 = v37;
          swift_unknownObjectRelease();
          *&v61 = v34;
          v40 = *(v34 + 16);
          v39 = *(v34 + 24);
          if (v40 >= v39 >> 1)
          {
            sub_25AABCCE0((v39 > 1), v40 + 1, 1);
            v36 = v55;
            v34 = v61;
          }

          ++v35;
          *(v34 + 16) = v40 + 1;
          *(v34 + 4 * v40 + 32) = v38;
        }

        while (v33 != v35);
      }

      else
      {
        v43 = (v31 + 32);
        v36 = v55;
        do
        {
          [*v43 floatValue];
          *&v61 = v34;
          v46 = *(v34 + 16);
          v45 = *(v34 + 24);
          if (v46 >= v45 >> 1)
          {
            v47 = v44;
            sub_25AABCCE0((v45 > 1), v46 + 1, 1);
            v36 = v55;
            v44 = v47;
            v34 = v61;
          }

          *(v34 + 16) = v46 + 1;
          *(v34 + 4 * v46 + 32) = v44;
          ++v43;
          --v33;
        }

        while (v33);
      }

      v2 = v54;
      v32 = *(&v20 + 1);
LABEL_48:
      v48 = swift_isUniquelyReferenced_nonNull_native();
      *&v61 = v36;
      sub_25AABD758(v34, v20, v32, v48, sub_25AAC3818, &qword_27FA0FE88, &qword_25AAC5500);

      v4 = v61;
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      v5 = v53;
      v9 = v56;
    }
  }

  if (v9 <= v10 + 1)
  {
    v16 = v10 + 1;
  }

  else
  {
    v16 = v9;
  }

  v17 = v16 - 1;
  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v15 >= v9)
    {
      v8 = 0;
      v65 = 0;
      v63 = 0u;
      v64 = 0u;
      v10 = v17;
      v61 = 0u;
      v62 = 0u;
      goto LABEL_18;
    }

    v8 = *(v5 + 8 * v15);
    ++v10;
    if (v8)
    {
      v10 = v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  result = sub_25AAC4B28();
  __break(1u);
  return result;
}

uint64_t sub_25AABE650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_25AAC4828();
  v57 = a1;
  result = sub_25AAC4B08();
  if (result)
  {
    return result;
  }

  v38 = a2;
  v39 = a3;
  v43 = v3;
  v9 = MEMORY[0x277D837D0];
  swift_getTupleTypeMetadata2();
  v10 = sub_25AAC47E8();
  v11 = sub_25AABDC30(v10, v9, v7, MEMORY[0x277D837E0]);

  v13 = v57 + 64;
  v12 = *(v57 + 64);
  v56 = v11;
  v14 = 1 << *(v57 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  v37[1] = v7;
  if (!v16)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v19 = v18;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v22 | (v19 << 6);
      v24 = v57;
      sub_25AABFF24(*(v57 + 48) + 40 * v23, v45);
      sub_25AAA5378(*(v24 + 56) + 32 * v23, v44);
      v47 = v45[0];
      v48 = v45[1];
      *&v49 = v46;
      sub_25AAA4B4C(v44, (&v49 + 8));
      v21 = v19;
LABEL_16:
      v54[0] = v49;
      v54[1] = v50;
      v55 = v51;
      v52 = v47;
      v53 = v48;
      if (!*(&v48 + 1))
      {

        return v56;
      }

      sub_25AAA4B4C((v54 + 8), v45);
      v47 = v52;
      v48 = v53;
      *&v49 = *&v54[0];
      if (!swift_dynamicCast())
      {
        goto LABEL_28;
      }

      v25 = v44[0];
      sub_25AAA5378(v45, &v47);
      if (!swift_dynamicCast())
      {
        break;
      }

      v47 = v25;
      sub_25AAC4628();
      sub_25AAC4638();
      result = __swift_destroy_boxed_opaque_existential_1Tm(v45);
      v18 = v21;
      if (!v16)
      {
        goto LABEL_8;
      }
    }

    v42 = v25;
    sub_25AAA5378(v45, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10010, &qword_25AAC5AD8);
    if (!swift_dynamicCast())
    {

      *&v49 = 0;
      v47 = 0u;
      v48 = 0u;
      sub_25AAA5640(&v47, &qword_27FA10008, &qword_25AAC5AD0);
      goto LABEL_29;
    }

    v41 = v21;
    __swift_project_boxed_opaque_existential_1Tm(&v47, *(&v48 + 1));
    v26 = sub_25AAC4588();
    __swift_destroy_boxed_opaque_existential_1Tm(&v47);
    v27 = sub_25AAB1550(v26);

    if (!v27)
    {

LABEL_28:

LABEL_29:
      sub_25AAA5558();
      swift_allocError();
      *v36 = 0;
      swift_willThrow();

      return __swift_destroy_boxed_opaque_existential_1Tm(v45);
    }

    v40 = v37;
    *&v47 = v27;
    MEMORY[0x28223BE20](v28);
    v29 = v38;
    v30 = v39;
    v37[-2] = v38;
    v37[-1] = v30;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10050, &qword_25AAC5B50);
    v32 = sub_25AAA968C(&qword_27FA10058, &qword_27FA10050, &qword_25AAC5B50);
    v33 = v43;
    v35 = sub_25AAAD0D4(sub_25AABFFD4, &v37[-4], v31, v29, MEMORY[0x277D84A98], v32, MEMORY[0x277D84AC0], v34);
    v43 = v33;

    *&v44[0] = v35;
    v47 = v42;
    sub_25AAC4628();
    sub_25AAC4638();
    result = __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v18 = v41;
  }

  while (v16);
LABEL_8:
  if (v17 <= v18 + 1)
  {
    v20 = v18 + 1;
  }

  else
  {
    v20 = v17;
  }

  v21 = v20 - 1;
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {
      v16 = 0;
      v51 = 0;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      goto LABEL_16;
    }

    v16 = *(v13 + 8 * v19);
    ++v18;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25AABEC14(uint64_t a1)
{
  v2 = a1;
  v3 = sub_25AAB0BB8(a1);
  if (v3)
  {
    return v3;
  }

  v61 = v1;
  v4 = sub_25AAA4E38(MEMORY[0x277D84F90]);
  v5 = v2 + 64;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v62 = v2;
  v63 = v9;
  v64 = v2 + 64;
  while (v8)
  {
    v12 = v10;
LABEL_18:
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = v15 | (v12 << 6);
    sub_25AABFF24(*(v2 + 48) + 40 * v16, &v71);
    sub_25AAA5378(*(v2 + 56) + 32 * v16, v70);
    v74 = v71;
    v75 = v72;
    *&v76 = v73;
    sub_25AAA4B4C(v70, (&v76 + 8));
LABEL_19:
    v81[0] = v76;
    v81[1] = v77;
    v82 = v78;
    v79 = v74;
    v80 = v75;
    if (!*(&v75 + 1))
    {

      return v4;
    }

    sub_25AAA4B4C((v81 + 8), v70);
    v74 = v79;
    v75 = v80;
    *&v76 = *&v81[0];
    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_60:
      sub_25AAA5558();
      swift_allocError();
      *v57 = 1;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      return v4;
    }

    v17 = *(&v71 + 1);
    v83 = v71;
    sub_25AAA5378(v70, &v69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEF0, &unk_25AAC5B00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      v73 = 0;
      v71 = 0u;
      v72 = 0u;

      sub_25AAA5640(&v71, &qword_27FA0FEE8, &unk_25AAC5540);
      goto LABEL_60;
    }

    v66 = v17;
    v67 = v4;
    sub_25AAA5864(&v71, &v74);
    v18 = *(&v75 + 1);
    v19 = v76;
    v20 = __swift_project_boxed_opaque_existential_1Tm(&v74, *(&v75 + 1));
    v65 = v59;
    v21 = *(*(v18 - 8) + 64);
    MEMORY[0x28223BE20](v20);
    v22 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v68 = v23;
    (*(v23 + 16))(v22);
    if ((sub_25AAC4928() & 1) != 0 && sub_25AAC4918() > 64)
    {
      *&v71 = 0x8000000000000000;
      if (sub_25AAC4928())
      {
        v24 = sub_25AAC4918();
        if (v24 < 64)
        {
          goto LABEL_34;
        }

        v60 = v59;
        MEMORY[0x28223BE20](v24);
        sub_25AAA54EC();
        sub_25AAC48F8();
        v25 = *(*(v19 + 32) + 8);
        v26 = sub_25AAC4668();
        v2 = v62;
        (*(v68 + 8))(v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
        if (v26)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v27 = sub_25AAC4928();
        v28 = sub_25AAC4918();
        if (v27)
        {
          if (v28 <= 64)
          {
            v60 = *(*(v19 + 24) + 16);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v59[2] = v59;
            v32 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](AssociatedTypeWitness);
            v59[0] = v59 - v33;
            swift_getAssociatedConformanceWitness();
            v34 = sub_25AAC4B18();
            v59[1] = v59;
            MEMORY[0x28223BE20](v34);
            sub_25AAC4AD8();
            v35 = *(*(v19 + 32) + 8);
            v36 = sub_25AAC4668();
            (*(v68 + 8))(v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
            if (v36)
            {
              goto LABEL_66;
            }

            sub_25AAC4908();
            v2 = v62;
          }

          else
          {
            v60 = v59;
            MEMORY[0x28223BE20](v28);
            sub_25AAA54EC();
            sub_25AAC48F8();
            v29 = *(*(v19 + 32) + 8);
            v30 = sub_25AAC4668();
            (*(v68 + 8))(v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
            v2 = v62;
            if (v30)
            {
              goto LABEL_66;
            }
          }
        }

        else
        {
          v2 = v62;
          if (v28 < 64)
          {
LABEL_34:
            sub_25AAC4908();
          }
        }
      }
    }

    if (sub_25AAC4918() > 64 || sub_25AAC4918() == 64 && (sub_25AAC4928() & 1) == 0)
    {
      *&v71 = 0x7FFFFFFFFFFFFFFFLL;
      v37 = sub_25AAC4928();
      v38 = sub_25AAC4918();
      if (v37)
      {
        if (v38 < 65)
        {
          goto LABEL_46;
        }
      }

      else if (v38 < 64)
      {
LABEL_46:
        sub_25AAC4908();
        v2 = v62;
        goto LABEL_47;
      }

      MEMORY[0x28223BE20](v38);
      sub_25AAA54EC();
      sub_25AAC48F8();
      v39 = *(*(v19 + 32) + 8);
      v40 = sub_25AAC4668();
      (*(v68 + 8))(v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
      v2 = v62;
      if (v40)
      {
        goto LABEL_65;
      }
    }

LABEL_47:
    v41 = sub_25AAC4908();
    (*(v68 + 8))(v22, v18);
    v42 = v67;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v71 = v42;
    v44 = v66;
    v45 = sub_25AAA48F0(v83, v66);
    v47 = v42[2];
    v48 = (v46 & 1) == 0;
    v49 = __OFADD__(v47, v48);
    v50 = v47 + v48;
    if (v49)
    {
      goto LABEL_63;
    }

    v51 = v46;
    if (v42[3] < v50)
    {
      sub_25AABD218(v50, isUniquelyReferenced_nonNull_native);
      v45 = sub_25AAA48F0(v83, v44);
      if ((v51 & 1) != (v52 & 1))
      {
        goto LABEL_67;
      }

LABEL_52:
      if (v51)
      {
        goto LABEL_6;
      }

      goto LABEL_53;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_52;
    }

    v56 = v45;
    sub_25AAC36B0();
    v45 = v56;
    if (v51)
    {
LABEL_6:
      v11 = v45;

      v4 = v71;
      *(*(v71 + 56) + 8 * v11) = v41;
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      goto LABEL_7;
    }

LABEL_53:
    v4 = v71;
    *(v71 + 8 * (v45 >> 6) + 64) |= 1 << v45;
    v53 = (v4[6] + 16 * v45);
    *v53 = v83;
    v53[1] = v44;
    *(v4[7] + 8 * v45) = v41;
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    v54 = v4[2];
    v49 = __OFADD__(v54, 1);
    v55 = v54 + 1;
    if (v49)
    {
      goto LABEL_64;
    }

    v4[2] = v55;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1Tm(&v74);
    v9 = v63;
    v5 = v64;
  }

  if (v9 <= v10 + 1)
  {
    v13 = v10 + 1;
  }

  else
  {
    v13 = v9;
  }

  v14 = v13 - 1;
  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      v8 = 0;
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
      v10 = v14;
      v74 = 0u;
      v75 = 0u;
      goto LABEL_19;
    }

    v8 = *(v5 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  result = sub_25AAC4B28();
  __break(1u);
  return result;
}

uint64_t sub_25AABF57C(uint64_t a1)
{
  v1 = a1;
  result = sub_25AAB1164(a1, &qword_27FA0FE80, &qword_25AAC54F8, &qword_27FA0FE50, &unk_25AAC5B40);
  if (!result)
  {
    v3 = sub_25AAA4F48(MEMORY[0x277D84F90]);
    v5 = v1 + 64;
    v4 = *(v1 + 64);
    v32 = v3;
    v6 = 1 << *(v1 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & v4;
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    v33 = v1;
    if (v8)
    {
      while (1)
      {
        v11 = v10;
LABEL_13:
        v14 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v15 = v14 | (v11 << 6);
        sub_25AABFF24(*(v1 + 48) + 40 * v15, v21);
        sub_25AAA5378(*(v1 + 56) + 32 * v15, v20);
        v23 = v21[0];
        v24 = v21[1];
        *&v25 = v22;
        sub_25AAA4B4C(v20, (&v25 + 8));
        v13 = v11;
LABEL_14:
        v30[0] = v25;
        v30[1] = v26;
        v31 = v27;
        v28 = v23;
        v29 = v24;
        if (!*(&v24 + 1))
        {

          return v32;
        }

        sub_25AAA4B4C((v30 + 8), v21);
        v23 = v28;
        v24 = v29;
        *&v25 = *&v30[0];
        if ((swift_dynamicCast() & 1) == 0)
        {

          goto LABEL_25;
        }

        v16 = v20[0];
        sub_25AAA5378(v21, v20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10010, &qword_25AAC5AD8);
        if (!swift_dynamicCast())
        {

          *&v25 = 0;
          v23 = 0u;
          v24 = 0u;
          sub_25AAA5640(&v23, &qword_27FA10008, &qword_25AAC5AD0);
          goto LABEL_25;
        }

        __swift_project_boxed_opaque_existential_1Tm(&v23, *(&v24 + 1));
        v17 = sub_25AAC4588();
        __swift_destroy_boxed_opaque_existential_1Tm(&v23);
        v18 = sub_25AAB163C(v17);

        if (!v18)
        {
          break;
        }

        sub_25AAB1434(v18, v16, *(&v16 + 1));
        result = __swift_destroy_boxed_opaque_existential_1Tm(v21);
        v10 = v13;
        v1 = v33;
        if (!v8)
        {
          goto LABEL_6;
        }
      }

LABEL_25:
      sub_25AAA5558();
      swift_allocError();
      *v19 = 1;
      swift_willThrow();

      return __swift_destroy_boxed_opaque_existential_1Tm(v21);
    }

    else
    {
LABEL_6:
      if (v9 <= v10 + 1)
      {
        v12 = v10 + 1;
      }

      else
      {
        v12 = v9;
      }

      v13 = v12 - 1;
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v9)
        {
          v8 = 0;
          v27 = 0;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          goto LABEL_14;
        }

        v8 = *(v5 + 8 * v11);
        ++v10;
        if (v8)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_25AABF8FC(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  result = sub_25AAB1164(a1, &qword_27FA0FE78, &qword_25AAC54F0, &qword_27FA10038, &unk_25AAC5B20);
  if (result)
  {
    return result;
  }

  v53 = sub_25AAA4F5C(MEMORY[0x277D84F90]);
  v5 = v3 + 64;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v39 = v3 + 64;
  v40 = v3;
  v38 = v9;
  while (v8)
  {
    v13 = v10;
LABEL_16:
    v16 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v17 = v16 | (v13 << 6);
    sub_25AABFF24(*(v3 + 48) + 40 * v17, v42);
    sub_25AAA5378(*(v3 + 56) + 32 * v17, v41);
    v44 = v42[0];
    v45 = v42[1];
    *&v46 = v43;
    sub_25AAA4B4C(v41, (&v46 + 8));
    v15 = v13;
LABEL_17:
    v51[0] = v46;
    v51[1] = v47;
    v52 = v48;
    v49 = v44;
    v50 = v45;
    if (!*(&v45 + 1))
    {

      return v53;
    }

    sub_25AAA4B4C((v51 + 8), v42);
    v44 = v49;
    v45 = v50;
    *&v46 = *&v51[0];
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_35;
    }

    v18 = v41[0];
    sub_25AAA5378(v42, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10020, &qword_25AAC5AE8);
    if (!swift_dynamicCast())
    {

      *&v46 = 0;
      v44 = 0u;
      v45 = 0u;
      sub_25AAA5640(&v44, &qword_27FA10018, &qword_25AAC5AE0);
LABEL_35:

      sub_25AAA5558();
      swift_allocError();
      *v37 = 1;
      swift_willThrow();

      return __swift_destroy_boxed_opaque_existential_1Tm(v42);
    }

    __swift_project_boxed_opaque_existential_1Tm(&v44, *(&v45 + 1));
    v19 = sub_25AAC4578();
    __swift_destroy_boxed_opaque_existential_1Tm(&v44);
    v20 = sub_25AABEC14(v19);
    if (v2)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
    }

    v21 = v20;

    v22 = v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v44 = v22;
    v25 = sub_25AAA48F0(v18, *(&v18 + 1));
    v26 = *(v22 + 16);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_39;
    }

    v29 = v24;
    if (*(v22 + 24) >= v28)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v32 = v15;
        if (v24)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_25AAC3840();
        v32 = v15;
        if (v29)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_25AABD4B8(v28, isUniquelyReferenced_nonNull_native, &qword_27FA0FE78, &qword_25AAC54F0);
      v30 = sub_25AAA48F0(v18, *(&v18 + 1));
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_41;
      }

      v25 = v30;
      v32 = v15;
      if (v29)
      {
LABEL_5:

        v53 = v44;
        v11 = *(v44 + 56);
        v12 = *(v11 + 8 * v25);
        *(v11 + 8 * v25) = v21;

        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        goto LABEL_6;
      }
    }

    v33 = v44;
    *(v44 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    *(v33[6] + 16 * v25) = v18;
    *(v33[7] + 8 * v25) = v21;
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    v34 = v33[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_40;
    }

    v53 = v33;
    v33[2] = v36;
LABEL_6:
    v10 = v32;
    v5 = v39;
    v3 = v40;
    v2 = 0;
    v9 = v38;
  }

  if (v9 <= v10 + 1)
  {
    v14 = v10 + 1;
  }

  else
  {
    v14 = v9;
  }

  v15 = v14 - 1;
  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v9)
    {
      v8 = 0;
      v48 = 0;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      goto LABEL_17;
    }

    v8 = *(v5 + 8 * v13);
    ++v10;
    if (v8)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_25AAC4B28();
  __break(1u);
  return result;
}

char *sub_25AABFD98(uint64_t a1)
{
  v9 = MEMORY[0x277D84F90];
  v1 = sub_25AAB9818(a1, &v9);
  v2 = v9;
  if (v9[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FFD0, &qword_25AAC59B8);
    v3 = sub_25AAC43D8();
    v4 = *(v3 - 8);
    v5 = *(v4 + 72);
    v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_25AAC5400;
    *(v7 + v6) = v2;
    (*(v4 + 104))(v7 + v6, *MEMORY[0x277D41398], v3);

    sub_25AABD8F8(v7);
  }

  return v1;
}

unint64_t sub_25AABFED8()
{
  result = qword_27FA0FED0;
  if (!qword_27FA0FED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA0FED0);
  }

  return result;
}

unint64_t sub_25AABFF80()
{
  result = qword_27FA10048;
  if (!qword_27FA10048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA10048);
  }

  return result;
}

uint64_t sub_25AABFFD4(id *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  return sub_25AAC43C8();
}

uint64_t sub_25AAC01EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25AAC0234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10090, &qword_25AAC5B68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25AAC02A4()
{
  result = qword_27FA100A0;
  if (!qword_27FA100A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA100A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MorpheusExtensionsError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 32;
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

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MorpheusExtensionsError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25AAC0828()
{
  v1 = *v0;
  sub_25AAC4B78();
  MEMORY[0x25F8532E0](qword_25AAC5CD0[v1]);
  return sub_25AAC4B98();
}

uint64_t sub_25AAC08B0()
{
  v1 = *v0;
  sub_25AAC4B78();
  MEMORY[0x25F8532E0](qword_25AAC5CD0[v1]);
  return sub_25AAC4B98();
}

uint64_t sub_25AAC08FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25AAC0AA4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_25AAC0944()
{
  result = qword_27FA100F0;
  if (!qword_27FA100F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA100F0);
  }

  return result;
}

uint64_t sub_25AAC099C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AAC09FC();
  v5 = sub_25AAC0A50();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

unint64_t sub_25AAC09FC()
{
  result = qword_27FA100F8;
  if (!qword_27FA100F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA100F8);
  }

  return result;
}

unint64_t sub_25AAC0A50()
{
  result = qword_27FA10100;
  if (!qword_27FA10100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA10100);
  }

  return result;
}

uint64_t sub_25AAC0AA4(uint64_t a1)
{
  v1 = a1 - 9401;
  result = 1;
  switch(v1)
  {
    case 0:
      result = 0;
      break;
    case 1:
      return result;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 6;
      break;
    case 7:
      result = 7;
      break;
    case 8:
      result = 8;
      break;
    case 9:
      result = 9;
      break;
    case 10:
      result = 10;
      break;
    case 30:
      result = 11;
      break;
    case 31:
      result = 12;
      break;
    case 50:
      result = 13;
      break;
    case 51:
      result = 14;
      break;
    case 52:
      result = 15;
      break;
    case 53:
      result = 16;
      break;
    case 54:
      result = 17;
      break;
    case 55:
      result = 18;
      break;
    case 56:
      result = 19;
      break;
    case 57:
      result = 20;
      break;
    case 58:
      result = 21;
      break;
    case 70:
      result = 22;
      break;
    case 71:
      result = 23;
      break;
    case 72:
      result = 24;
      break;
    case 73:
      result = 25;
      break;
    case 80:
      result = 26;
      break;
    case 81:
      result = 27;
      break;
    case 82:
      result = 28;
      break;
    case 83:
      result = 29;
      break;
    case 84:
      result = 30;
      break;
    case 85:
      result = 31;
      break;
    case 86:
      result = 32;
      break;
    default:
      result = 33;
      break;
  }

  return result;
}

uint64_t static Math.extendMorpheus()()
{
  v0 = sub_25AAC45E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_25AAC4548();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE60, qword_25AAC5580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25AAC5560;
  *(inited + 32) = 0x6574696E69667369;
  *(inited + 40) = 0xE800000000000000;
  v3 = MEMORY[0x277D84F90];
  sub_25AAC45D8();
  sub_25AAA4A20(v3);
  v4 = sub_25AAC45B8();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(inited + 48) = sub_25AAC45A8();
  *(inited + 72) = v4;
  *(inited + 80) = 0x65736F6C637369;
  *(inited + 88) = 0xE700000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25AAC5560;
  v8 = MEMORY[0x277D839F8];
  *(v7 + 32) = 0x3EB0C6F7A0B5ED8DLL;
  *(v7 + 88) = MEMORY[0x277D83B88];
  *(v7 + 56) = v8;
  *(v7 + 64) = 0;
  sub_25AAC45D8();
  sub_25AAA4A20(v3);
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  v11 = sub_25AAC45A8();
  *(inited + 120) = v4;
  *(inited + 96) = v11;
  sub_25AAA4A20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE68, qword_25AAC5430);
  swift_arrayDestroy();
  sub_25AAC4528();
}

void sub_25AAC1038(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25AAA48F0(120, 0xE100000000000000), (v5 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v4, v10), sub_25AABFED8(), (swift_dynamicCast() & 1) != 0))
  {
    [v9 doubleValue];
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
    *(a2 + 24) = MEMORY[0x277D839B0];

    *a2 = v7;
  }

  else
  {
    sub_25AAA5558();
    swift_allocError();
    *v8 = 11;
    swift_willThrow();
  }
}

void sub_25AAC1138(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v4 = sub_25AAA48F0(97, 0xE100000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v4, v29);
  sub_25AABFED8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v6 = v30;
  [v30 floatValue];
  v8 = v7;

  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v9 = sub_25AAA48F0(98, 0xE100000000000000);
  if ((v10 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v9, v29);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v11 = v30;
  [v30 floatValue];
  v13 = v12;

  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v14 = sub_25AAA48F0(0x6C6F745F6C6572, 0xE700000000000000);
  if ((v15 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v14, v29);
  if (swift_dynamicCast() & 1) != 0 && (v16 = v30, [v30 floatValue], v18 = v17, v16, *(a1 + 16)) && (v19 = sub_25AAA48F0(0x6C6F745F736261, 0xE700000000000000), (v20) && (sub_25AAA5378(*(a1 + 56) + 32 * v19, v29), (swift_dynamicCast()))
  {
    v21 = v30;
    [v30 floatValue];
    v23 = v22;

    v24 = vabds_f32(v8, v13);
    v25 = fabsf(v8);
    v26 = fabsf(v13);
    if (v25 <= v26)
    {
      v25 = v26;
    }

    v27 = v25 * v18;
    if (v27 <= v23)
    {
      v27 = v23;
    }

    *(a2 + 24) = MEMORY[0x277D839B0];
    *a2 = v24 <= v27;
  }

  else
  {
LABEL_18:
    sub_25AAA5558();
    swift_allocError();
    *v28 = 12;
    swift_willThrow();
  }
}

uint64_t sub_25AAC13B0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_25AAC42C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10110, &qword_25AAC5E60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v31[-1] - v13;
  sub_25AAC4020(a1, v34, &qword_27FA0FE38, &unk_25AAC5410);
  if (!v35)
  {
    goto LABEL_21;
  }

  sub_25AAC4020(v34, v33, &qword_27FA0FE38, &unk_25AAC5410);
  if (swift_dynamicCast())
  {
    v15 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    v16 = sub_25AAC4698();

    v17 = [v15 dateFromString_];

    if (v17)
    {
      sub_25AAC42A8();

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    (*(v7 + 56))(v14, v18, 1, v6);
    sub_25AAC3FB0(v14, a3);
    goto LABEL_14;
  }

  sub_25AABFED8();
  if (swift_dynamicCast())
  {
    v19 = v31[0];
    [v31[0] doubleValue];
    if (a2)
    {
      sub_25AAC4298();
    }

    else
    {
      sub_25AAC4268();
    }

    (*(v7 + 56))(a3, 0, 1, v6);
    goto LABEL_14;
  }

  if (swift_dynamicCast())
  {
    (*(v7 + 32))(a3, v10, v6);
    (*(v7 + 56))(a3, 0, 1, v6);
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    return sub_25AAA5640(v34, &qword_27FA0FE38, &unk_25AAC5410);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  if (qword_27FA0FE18 != -1)
  {
    swift_once();
  }

  v20 = sub_25AAC44F8();
  __swift_project_value_buffer(v20, qword_27FA10AC0);
  sub_25AAC4020(a1, v33, &qword_27FA0FE38, &unk_25AAC5410);
  v21 = sub_25AAC44D8();
  v22 = sub_25AAC48A8();
  if (!os_log_type_enabled(v21, v22))
  {

    sub_25AAA5640(v33, &qword_27FA0FE38, &unk_25AAC5410);
    goto LABEL_21;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v32 = v24;
  *v23 = 136315138;
  result = sub_25AAC4020(v33, v31, &qword_27FA0FE38, &unk_25AAC5410);
  if (v31[3])
  {
    v26 = sub_25AAC46E8();
    v28 = v27;
    sub_25AAA5640(v33, &qword_27FA0FE38, &unk_25AAC5410);
    v29 = sub_25AAC2BF8(v26, v28, &v32);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_25AAA0000, v21, v22, "Unable to convert %s into Date", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x25F8538C0](v24, -1, -1);
    MEMORY[0x25F8538C0](v23, -1, -1);

LABEL_21:
    (*(v7 + 56))(a3, 1, 1, v6);
    return sub_25AAA5640(v34, &qword_27FA0FE38, &unk_25AAC5410);
  }

  __break(1u);
  return result;
}

uint64_t sub_25AAC1894(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10110, &qword_25AAC5E60);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v45 = &v44 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v44 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v44 - v11;
  v13 = sub_25AAC42C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v46 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v48 = &v44 - v18;
  sub_25AAC42B8();
  v50 = a1;

  sub_25AAC32AC(0x6D6954746E657665, 0xEE00706D61747365, &v51);
  sub_25AAA5640(&v51, &qword_27FA0FE38, &unk_25AAC5410);
  sub_25AAC32AC(0x4173646E6F636573, 0xEA00000000006F67, &v51);
  sub_25AAA5640(&v51, &qword_27FA0FE38, &unk_25AAC5410);
  v19 = v50;
  if (*(v50 + 16) && (v20 = sub_25AAA48F0(0x6D6954746E657665, 0xEE00706D61747365), (v21 & 1) != 0))
  {
    sub_25AAA5378(*(v19 + 56) + 32 * v20, &v51);
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
  }

  v22 = v47;
  type metadata accessor for BiomeWriter();
  sub_25AAC13B0(&v51, 1, v12);
  sub_25AAA5640(&v51, &qword_27FA0FE38, &unk_25AAC5410);
  if (*(v19 + 16) && (v23 = sub_25AAA48F0(0x4173646E6F636573, 0xEA00000000006F67), (v24 & 1) != 0))
  {
    sub_25AAA5378(*(v19 + 56) + 32 * v23, &v51);
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
  }

  sub_25AAC3CB0(&v51);
  v26 = v25;
  sub_25AAA5640(&v51, &qword_27FA0FE38, &unk_25AAC5410);
  if ((v26 & 1) == 0)
  {
    sub_25AAC4020(v12, v10, &qword_27FA10110, &qword_25AAC5E60);
    if ((*(v14 + 48))(v10, 1, v13) == 1)
    {
      sub_25AAA5640(v10, &qword_27FA10110, &qword_25AAC5E60);
      v27 = v45;
      sub_25AAC4288();
      sub_25AAA5640(v12, &qword_27FA10110, &qword_25AAC5E60);
      (*(v14 + 56))(v27, 0, 1, v13);
      sub_25AAC3FB0(v27, v12);
    }

    else
    {
      sub_25AAA5640(v10, &qword_27FA10110, &qword_25AAC5E60);
    }
  }

  v28 = objc_opt_self();
  v29 = *(v49 + 24);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_25AAC1F20(v19);
  v31 = sub_25AAC4608();

  *&v51 = 0;
  v32 = [v28 eventOfType:ObjCClassFromMetadata jsonDictionary:v31 error:&v51];

  v33 = v51;
  if (v32)
  {
    sub_25AAC4020(v12, v22, &qword_27FA10110, &qword_25AAC5E60);
    if ((*(v14 + 48))(v22, 1, v13) == 1)
    {
      v34 = v33;
      sub_25AAA5640(v22, &qword_27FA10110, &qword_25AAC5E60);
      [*(v49 + 16) sendEvent_];

      sub_25AAA5640(v12, &qword_27FA10110, &qword_25AAC5E60);
      (*(v14 + 8))(v48, v13);
    }

    else
    {
      v37 = v46;
      (*(v14 + 32))(v46, v22, v13);
      v38 = *(v49 + 16);
      v39 = v33;
      v40 = v32;
      v41 = sub_25AAC4278();
      [v38 sendEvent:v40 date:v41];

      v42 = *(v14 + 8);
      v42(v37, v13);
      sub_25AAA5640(v12, &qword_27FA10110, &qword_25AAC5E60);
      v42(v48, v13);
    }
  }

  else
  {
    v35 = v51;
    sub_25AAC4258();

    swift_willThrow();
    sub_25AAA5640(v12, &qword_27FA10110, &qword_25AAC5E60);
    (*(v14 + 8))(v48, v13);
  }

  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25AAC1F20(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10118, &qword_25AAC5E68);
    v2 = sub_25AAC4AB8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
    sub_25AAA5378(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_25AAA4B4C(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_25AAA4B4C(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_25AAA4B4C(v32, v33);
    v17 = *(v2 + 40);
    result = sub_25AAC4968();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_25AAA4B4C(v33, (*(v2 + 56) + 32 * v10));
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

double sub_25AAC21E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25AAC45E8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  type metadata accessor for BiomeWriter();
  sub_25AAC2400();
  sub_25AAC4558();
  if (v15)
  {
    sub_25AAA4B4C(&v14, v16);
    sub_25AAA4B4C(v16, a3);
  }

  else
  {
    sub_25AAA5640(&v14, &qword_27FA0FE38, &unk_25AAC5410);
    if (a1 == 6579297 && a2 == 0xE300000000000000 || (sub_25AAC4AF8() & 1) != 0)
    {
      v9 = MEMORY[0x277D84F90];
      sub_25AAC45D8();

      sub_25AAA4A20(v9);
      v10 = sub_25AAC45B8();
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v13 = sub_25AAC45A8();
      *(a3 + 24) = v10;
      *a3 = v13;
    }

    else
    {
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  return result;
}

unint64_t sub_25AAC2400()
{
  result = qword_27FA10108;
  if (!qword_27FA10108)
  {
    type metadata accessor for BiomeWriter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA10108);
  }

  return result;
}

uint64_t sub_25AAC2454@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16) || (v5 = sub_25AAA48F0(0x746E657665, 0xE500000000000000), (v6 & 1) == 0))
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
    goto LABEL_10;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v5, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10020, &qword_25AAC5AE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    goto LABEL_10;
  }

  if (!*(&v15 + 1))
  {
LABEL_10:
    sub_25AAA5640(&v14, &qword_27FA10018, &qword_25AAC5AE0);
LABEL_11:
    sub_25AAA5558();
    swift_allocError();
    *v12 = 32;
    return swift_willThrow();
  }

  sub_25AAA5540(&v14, v17);
  v7 = v18;
  v8 = __swift_project_boxed_opaque_existential_1Tm(v17, v18);
  v13[3] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v8, v7);
  sub_25AAC4508();
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10128, &unk_25AAC5E80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    goto LABEL_11;
  }

  v10 = v13[0];
  a2[3] = MEMORY[0x277D84F78] + 8;
  sub_25AAC1894(v10);

  if (v2)
  {
    __swift_deallocate_boxed_opaque_existential_0(a2);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v17);
}

uint64_t sub_25AAC2680(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AAA506C(&unk_286C1AD18);
  sub_25AAA93C0(&unk_286C1AD38);
  v5 = sub_25AAA2D08(a1, a2, v4);

  if (v5)
  {
    return 1;
  }

  type metadata accessor for BiomeWriter();
  sub_25AAC2400();
  return sub_25AAC4568() & 1;
}

uint64_t static BiomeWriter.extendMorpheus()()
{
  v0 = sub_25AAC45E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_25AAC4548();
  v2 = MEMORY[0x277D84F90];
  sub_25AAA4A20(MEMORY[0x277D84F90]);
  sub_25AAC4528();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE60, qword_25AAC5580);
  inited = swift_initStackObject();
  *(inited + 32) = 0x697257656D6F6942;
  *(inited + 16) = xmmword_25AAC5400;
  *(inited + 40) = 0xEB00000000726574;
  sub_25AAC45D8();
  sub_25AAA4A20(v2);
  v4 = sub_25AAC45B8();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_25AAC45A8();
  *(inited + 72) = v4;
  *(inited + 48) = v7;
  sub_25AAA4A20(inited);
  swift_setDeallocating();
  sub_25AAA5640(inited + 32, &qword_27FA0FE68, qword_25AAC5430);
  sub_25AAC4528();
}

uint64_t sub_25AAC2930@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25AAA48F0(0x6D6165727473, 0xE600000000000000), (v5 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v4, v15), (swift_dynamicCast() & 1) != 0))
  {
    v6 = objc_opt_self();
    v7 = sub_25AAC4698();

    v8 = [v6 lookupStreamBase_];

    if (v8)
    {
      v9 = type metadata accessor for BiomeWriter();
      v10 = swift_allocObject();
      *(v10 + 16) = [v8 source];
      v11 = [v8 configuration];
      [v11 eventClass];

      result = swift_getObjCClassMetadata();
      *(v10 + 24) = result;
      a2[3] = v9;
      *a2 = v10;
      return result;
    }

    v13 = 30;
  }

  else
  {
    v13 = 31;
  }

  sub_25AAA5558();
  swift_allocError();
  *v14 = v13;
  return swift_willThrow();
}

uint64_t BiomeWriter.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_25AAC2B5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AAA506C(&unk_286C1AD18);
  sub_25AAA93C0(&unk_286C1AD38);
  v5 = sub_25AAA2D08(a1, a2, v4);

  if (v5)
  {
    return 1;
  }

  type metadata accessor for BiomeWriter();
  return sub_25AAC4568() & 1;
}

uint64_t sub_25AAC2BF8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25AAC2CC4(v11, 0, 0, 1, a1, a2);
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
    sub_25AAA5378(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_25AAC2CC4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25AAC2DD0(a5, a6);
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
    result = sub_25AAC49E8();
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

uint64_t sub_25AAC2DD0(uint64_t a1, unint64_t a2)
{
  v4 = sub_25AAC2E1C(a1, a2);
  sub_25AAC2F4C(&unk_286C1ACC0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25AAC2E1C(uint64_t a1, unint64_t a2)
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

  v6 = sub_25AAC3038(v5, 0);
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

  result = sub_25AAC49E8();
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
        v10 = sub_25AAC4778();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25AAC3038(v10, 0);
        result = sub_25AAC49A8();
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

uint64_t sub_25AAC2F4C(uint64_t result)
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

  result = sub_25AAC30AC(result, v12, 1, v3);
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

void *sub_25AAC3038(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10120, &unk_25AAC5E70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25AAC30AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10120, &unk_25AAC5E70);
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

unint64_t sub_25AAC31A0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_25AAC4968();

  return sub_25AAC31E4(a1, v5);
}

unint64_t sub_25AAC31E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25AABFF24(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25F8530D0](v9, a1);
      sub_25AAA5498(v9);
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

double sub_25AAC32AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_25AAA48F0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25AAC39B4();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_25AAA4B4C((*(v12 + 56) + 32 * v9), a3);
    sub_25AAC3500(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_25AAC3350(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25AAC4958() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_25AAC4B78();

      sub_25AAC4738();
      v13 = sub_25AAC4B98();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25AAC3500(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25AAC4958() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_25AAC4B78();

      sub_25AAC4738();
      v14 = sub_25AAC4B98();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_25AAC36B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE70, &qword_25AAC5B10);
  v2 = *v0;
  v3 = sub_25AAC4A98();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_25AAC3854(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25AAC4A98();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void *sub_25AAC39B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE98, &unk_25AAC5510);
  v2 = *v0;
  v3 = sub_25AAC4A98();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_25AAA5378(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25AAA4B4C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

BOOL sub_25AAC3B58(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_25AAC49B8();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_25AAC3CB0(uint64_t a1)
{
  sub_25AAC4020(a1, v19, &qword_27FA0FE38, &unk_25AAC5410);
  if (!v20)
  {
    goto LABEL_15;
  }

  sub_25AAC4020(v19, v18, &qword_27FA0FE38, &unk_25AAC5410);
  if (swift_dynamicCast())
  {
    v17 = 0;
    v2 = sub_25AAC3B58(v16[0], v16[1]);

    if (v2)
    {
      v3 = v17;
    }

    else
    {
      v3 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    goto LABEL_16;
  }

  sub_25AABFED8();
  if (swift_dynamicCast())
  {
    [v16[0] doubleValue];
    v5 = v4;

    v3 = v5;
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
LABEL_16:
    sub_25AAA5640(v19, &qword_27FA0FE38, &unk_25AAC5410);
    return v3;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  if (qword_27FA0FE18 != -1)
  {
    swift_once();
  }

  v6 = sub_25AAC44F8();
  __swift_project_value_buffer(v6, qword_27FA10AC0);
  sub_25AAC4020(a1, v18, &qword_27FA0FE38, &unk_25AAC5410);
  v7 = sub_25AAC44D8();
  v8 = sub_25AAC48A8();
  if (!os_log_type_enabled(v7, v8))
  {

    sub_25AAA5640(v18, &qword_27FA0FE38, &unk_25AAC5410);
    goto LABEL_15;
  }

  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v17 = v10;
  *v9 = 136315138;
  result = sub_25AAC4020(v18, v16, &qword_27FA0FE38, &unk_25AAC5410);
  if (v16[3])
  {
    v12 = sub_25AAC46E8();
    v14 = v13;
    sub_25AAA5640(v18, &qword_27FA0FE38, &unk_25AAC5410);
    v15 = sub_25AAC2BF8(v12, v14, &v17);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_25AAA0000, v7, v8, "Unable to convert %s into Double", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x25F8538C0](v10, -1, -1);
    MEMORY[0x25F8538C0](v9, -1, -1);

LABEL_15:
    v3 = 0;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_25AAC3FB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10110, &qword_25AAC5E60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AAC4020(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_BYTE *sub_25AAC4088@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}