double BMSQLDatabase.attribute(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_25AAC45E8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_25AAA55AC(0, &qword_27FA0FE28, 0x277CF1A88);
  sub_25AAA51D4(&qword_27FA0FE30, &qword_27FA0FE28, 0x277CF1A88);
  sub_25AAC4558();
  if (v18)
  {
    sub_25AAA4B4C(&v17, v19);
    sub_25AAA4B4C(v19, a3);
  }

  else
  {
    sub_25AAA5640(&v17, &qword_27FA0FE38, &unk_25AAC5410);
    if (a1 == 0x5F65747563657865 && a2 == 0xED00007972657571 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x7265747369676572 && a2 == 0xEC0000006664755FLL || (sub_25AAC4AF8() & 1) != 0)
    {
      v11 = MEMORY[0x277D84F90];
      sub_25AAC45D8();
      *(swift_allocObject() + 16) = v4;
      v12 = v4;
      sub_25AAA4A20(v11);
      v13 = sub_25AAC45B8();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_25AAC45A8();
      *(a3 + 24) = v13;
      *a3 = v16;
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

void sub_25AAA1DD0(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16) && (v5 = sub_25AAA48F0(0x6E656D6574617473, 0xE900000000000074), (v6 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v5, v10), (swift_dynamicCast() & 1) != 0))
  {
    v7 = sub_25AAC4898();

    v8 = v7;
    sub_25AAA4B5C(v8);

    if (v2)
    {
    }

    else
    {
      a2[3] = sub_25AAA55AC(0, &qword_27FA0FE40, 0x277CF1A98);
      *a2 = v8;
    }
  }

  else
  {
    sub_25AAA5558();
    swift_allocError();
    *v9 = 27;
    swift_willThrow();
  }
}

uint64_t sub_25AAA1F0C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v70 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16))
  {
    goto LABEL_20;
  }

  v6 = sub_25AAA48F0(1701667182, 0xE400000000000000);
  if ((v7 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v6, &aBlock);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  if (!*(a1 + 16) || (v8 = sub_25AAA48F0(0x736772615F6D756ELL, 0xE800000000000000), (v9 & 1) == 0))
  {

    aBlock = 0u;
    v63 = 0u;
    v64 = 0;
LABEL_19:
    sub_25AAA5640(&aBlock, &qword_27FA0FEE8, &unk_25AAC5540);
LABEL_20:
    sub_25AAA5558();
    swift_allocError();
    *v21 = 29;
    result = swift_willThrow();
    goto LABEL_21;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v8, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEF0, &unk_25AAC5B00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v64 = 0;
    aBlock = 0u;
    v63 = 0u;
    goto LABEL_18;
  }

  if (!*(&v63 + 1))
  {
LABEL_18:

    goto LABEL_19;
  }

  sub_25AAA5540(&aBlock, &v67);
  if (!*(a1 + 16) || (v10 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE800000000000000), (v11 & 1) == 0) || (sub_25AAA5378(*(a1 + 56) + 32 * v10, &aBlock), sub_25AAC45B8(), (swift_dynamicCast() & 1) == 0))
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v67);
    goto LABEL_20;
  }

  v12 = *&v66[0];
  a3[3] = MEMORY[0x277D84F78] + 8;
  v61 = sub_25AAC4698();

  v13 = v68;
  v14 = v69;
  v15 = __swift_project_boxed_opaque_existential_1Tm(&v67, v68);
  v60 = v56;
  v16 = *(v13 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v58 = v18;
  v19 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19);
  if ((sub_25AAC4928() & 1) == 0 || sub_25AAC4918() <= 32)
  {
    goto LABEL_34;
  }

  LODWORD(aBlock) = 0x80000000;
  if ((sub_25AAC4928() & 1) == 0)
  {
    v59 = v12;
    v24 = sub_25AAC4928();
    v25 = sub_25AAC4918();
    if (v24)
    {
      if (v25 > 32)
      {
        v57 = v56;
        MEMORY[0x28223BE20](v25);
        v27 = v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25AAA57B8();
        sub_25AAC48F8();
        v28 = *(*(v14 + 32) + 8);
        v29 = sub_25AAC4668();
        result = (*(v16 + 8))(v27, v13);
        v12 = v59;
        if (v29)
        {
          goto LABEL_48;
        }

        goto LABEL_34;
      }

      v57 = *(*(v14 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v56[2] = v56;
      v36 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v56[0] = v56 - v37;
      swift_getAssociatedConformanceWitness();
      v38 = sub_25AAC4B18();
      v56[1] = v56;
      MEMORY[0x28223BE20](v38);
      v40 = v56 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25AAC4AD8();
      v41 = *(*(v14 + 32) + 8);
      v42 = sub_25AAC4668();
      result = (*(v16 + 8))(v40, v13);
      if (v42)
      {
        goto LABEL_48;
      }
    }

    else if (v25 >= 32)
    {
      goto LABEL_33;
    }

    sub_25AAC4908();
LABEL_33:
    v12 = v59;
    goto LABEL_34;
  }

  v20 = sub_25AAC4918();
  if (v20 < 32)
  {
    sub_25AAC4908();
    goto LABEL_34;
  }

  v57 = v56;
  MEMORY[0x28223BE20](v20);
  v59 = v12;
  v31 = v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AAA57B8();
  sub_25AAC48F8();
  v32 = *(*(v14 + 32) + 8);
  v33 = sub_25AAC4668();
  v34 = v31;
  v12 = v59;
  result = (*(v16 + 8))(v34, v13);
  if (v33)
  {
LABEL_48:
    __break(1u);
    return result;
  }

LABEL_34:
  if (sub_25AAC4918() <= 32)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v59 = v12;
    LODWORD(aBlock) = 0x7FFFFFFF;
    v43 = sub_25AAC4928();
    v44 = sub_25AAC4918();
    if ((v43 & 1) == 0)
    {
      break;
    }

    if (v44 < 33)
    {
      goto LABEL_43;
    }

LABEL_37:
    v57 = v56;
    MEMORY[0x28223BE20](v44);
    v46 = v56 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAA57B8();
    sub_25AAC48F8();
    v47 = *(*(v14 + 32) + 8);
    v48 = sub_25AAC4668();
    (*(v16 + 8))(v46, v13);
    v12 = v59;
    if (v48)
    {
      __break(1u);
LABEL_39:
      if (sub_25AAC4918() == 32 && (sub_25AAC4928() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_44;
  }

  if (v44 >= 32)
  {
    goto LABEL_37;
  }

LABEL_43:
  sub_25AAC4908();
  v12 = v59;
LABEL_44:
  v49 = sub_25AAC4908();
  (*(v16 + 8))(v19, v13);
  sub_25AAA56A0(&v67, v66);
  v50 = swift_allocObject();
  sub_25AAA5540(v66, v50 + 16);
  *(v50 + 56) = v12;
  v64 = sub_25AAA5744;
  v65 = v50;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v63 = sub_25AAA2AA4;
  *(&v63 + 1) = &block_descriptor;
  v51 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v52 = v61;
  v53 = [a2 registerFunctionWithName:v61 numArgs:v49 function:v51 error:&aBlock];
  _Block_release(v51);

  if (v53)
  {
    v54 = aBlock;
  }

  else
  {
    v55 = aBlock;
    sub_25AAC4258();

    swift_willThrow();

    __swift_deallocate_boxed_opaque_existential_0(a3);
  }

  result = __swift_destroy_boxed_opaque_existential_1Tm(&v67);
LABEL_21:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_25AAA2870@<D0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v9 = a3[3];
  v10 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm(a3, v9);
  v11 = *(a1 + 16);
  v12 = sub_25AAC4928();
  v13 = sub_25AAC4918();
  if (v12)
  {
    if (v13 <= 64)
    {
      goto LABEL_3;
    }

LABEL_7:
    v23[0] = v23;
    v23[1] = a4;
    v16 = *(v9 - 8);
    v17 = *(v16 + 64);
    MEMORY[0x28223BE20](v13);
    v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23[3] = v11;
    sub_25AAA54EC();
    sub_25AAC48F8();
    v20 = *(*(v10 + 16) + 8);
    v21 = sub_25AAC4688();
    (*(v16 + 8))(v19, v9);
    if ((v21 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    sub_25AAA4A20(MEMORY[0x277D84F90]);
    sub_25AAC4598();

    return result;
  }

  if (v13 > 63)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v11 == sub_25AAC4908())
  {
    goto LABEL_8;
  }

LABEL_4:
  if (a2)
  {
    sub_25AAA5558();
    v14 = swift_allocError();
    *v15 = 28;
    *a2 = sub_25AAC4248();
  }

  result = 0.0;
  *a5 = 0u;
  a5[1] = 0u;
  return result;
}

id sub_25AAA2AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_25AAC47D8();

  v5(v15, v6, a3);

  v7 = v16;
  if (v16)
  {
    v8 = __swift_project_boxed_opaque_existential_1Tm(v15, v16);
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    v13 = sub_25AAC4AE8();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

Swift::Bool __swiftcall BMSQLDatabase.has(attribute:)(Swift::String attribute)
{
  object = attribute._object;
  countAndFlagsBits = attribute._countAndFlagsBits;
  v3 = sub_25AAA506C(&unk_286C19A30);
  swift_arrayDestroy();
  v4 = sub_25AAA2D08(countAndFlagsBits, object, v3);

  if (v4)
  {
    return 1;
  }

  sub_25AAA55AC(0, &qword_27FA0FE28, 0x277CF1A88);
  sub_25AAA51D4(&qword_27FA0FE30, &qword_27FA0FE28, 0x277CF1A88);
  return sub_25AAC4568() & 1;
}

uint64_t sub_25AAA2D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_25AAC4B78();
  sub_25AAC4738();
  v7 = sub_25AAC4B98();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_25AAC4AF8() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_25AAA2E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AAA506C(&unk_286C19A30);
  swift_arrayDestroy();
  v5 = sub_25AAA2D08(a1, a2, v4);

  if (v5)
  {
    return 1;
  }

  sub_25AAA55AC(0, &qword_27FA0FE28, 0x277CF1A88);
  return sub_25AAC4568() & 1;
}

double BMSQLResultSet.attribute(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_25AAC45E8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_25AAA55AC(0, &qword_27FA0FE40, 0x277CF1A98);
  sub_25AAA51D4(&qword_27FA0FE48, &qword_27FA0FE40, 0x277CF1A98);
  sub_25AAC4558();
  if (v25)
  {
    sub_25AAA4B4C(&v24, v26);
    sub_25AAA4B4C(v26, a3);
    return result;
  }

  sub_25AAA5640(&v24, &qword_27FA0FE38, &unk_25AAC5410);
  if (a1 == 0x72615F64315F7361 && a2 == 0xEB00000000796172 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_25AAC5400;
    *(v11 + 56) = MEMORY[0x277D83B88];
    *(v11 + 32) = 0;
    v12 = MEMORY[0x277D84F90];
    sub_25AAC45D8();
    *(swift_allocObject() + 16) = v4;
    v13 = v4;
    sub_25AAA4A20(v12);
    v14 = sub_25AAC45B8();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
LABEL_7:
    v17 = sub_25AAC45A8();
    *(a3 + 24) = v14;
    *a3 = v17;
    return result;
  }

  if (a1 == 0x72615F64325F7361 && a2 == 0xEB00000000796172 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x726F6365725F7361 && a2 == 0xEA00000000007364 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x72616C616373 && a2 == 0xE600000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    v18 = MEMORY[0x277D84F90];
    sub_25AAC45D8();
    *(swift_allocObject() + 16) = v4;
    v19 = v4;
    sub_25AAA4A20(v18);
    v14 = sub_25AAC45B8();
    v20 = *(v14 + 48);
    v21 = *(v14 + 52);
    swift_allocObject();
    goto LABEL_7;
  }

  if (a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    v22 = [v3 columns];
    v23 = sub_25AAC47D8();

    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE50, &unk_25AAC5B40);
    *a3 = v23;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_25AAA34B8(uint64_t a1, void *a2)
{
  if (*(a1 + 16) && (v4 = sub_25AAA48F0(0x6E6D756C6F63, 0xE600000000000000), (v5 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v4, v52), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEB8, &qword_25AAC5520), (swift_dynamicCast() & 1) != 0) && v51)
  {
    sub_25AAA5540(&v50, v52);
  }

  else
  {
    v53 = MEMORY[0x277D83B88];
    v54 = sub_25AAA5444();
    v52[0] = 0;
  }

  v6 = [a2 columns];
  v7 = sub_25AAC47D8();

  v9 = v53;
  v8 = v54;
  v10 = __swift_project_boxed_opaque_existential_1Tm(v52, v53);
  v55 = v45;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  (*(v11 + 16))(v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v8 + 8);
  if ((sub_25AAC4928() & 1) == 0 || sub_25AAC4918() <= 64)
  {
    goto LABEL_20;
  }

  *&v50 = 0x8000000000000000;
  if (sub_25AAC4928())
  {
    v14 = sub_25AAC4918();
    if (v14 < 64)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v15 = sub_25AAC4928();
  v14 = sub_25AAC4918();
  if (v15)
  {
    if (v14 <= 64)
    {
      v46 = *(*(v13 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v45[2] = v45;
      v20 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v45[0] = v45 - v21;
      swift_getAssociatedConformanceWitness();
      v22 = sub_25AAC4B18();
      v45[1] = v45;
      MEMORY[0x28223BE20](v22);
      sub_25AAC4AD8();
      v23 = *(*(v13 + 32) + 8);
      v24 = sub_25AAC4668();
      result = (*(v11 + 8))(v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
      if (v24)
      {
LABEL_47:
        __break(1u);
        return result;
      }

      goto LABEL_19;
    }

LABEL_14:
    v46 = v45;
    MEMORY[0x28223BE20](v14);
    sub_25AAA54EC();
    sub_25AAC48F8();
    v16 = *(*(v13 + 32) + 8);
    v17 = sub_25AAC4668();
    result = (*(v11 + 8))(v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    if (v17)
    {
      goto LABEL_47;
    }

    goto LABEL_20;
  }

  if (v14 < 64)
  {
LABEL_19:
    sub_25AAC4908();
  }

LABEL_20:
  if (sub_25AAC4918() <= 64)
  {
    goto LABEL_25;
  }

  while (1)
  {
    *&v50 = 0x7FFFFFFFFFFFFFFFLL;
    v25 = sub_25AAC4928();
    v26 = sub_25AAC4918();
    if ((v25 & 1) == 0)
    {
      break;
    }

    if (v26 < 65)
    {
      goto LABEL_29;
    }

LABEL_23:
    v46 = v45;
    MEMORY[0x28223BE20](v26);
    sub_25AAA54EC();
    sub_25AAC48F8();
    v27 = *(*(v13 + 32) + 8);
    v28 = sub_25AAC4668();
    (*(v11 + 8))(v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    if (v28)
    {
      __break(1u);
LABEL_25:
      if (sub_25AAC4918() == 64 && (sub_25AAC4928() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_30;
  }

  if (v26 >= 64)
  {
    goto LABEL_23;
  }

LABEL_29:
  sub_25AAC4908();
LABEL_30:
  v29 = sub_25AAC4908();
  result = (*(v11 + 8))(v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  if ((v29 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v29 >= *(v7 + 16))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v30 = v7 + 16 * v29;
  v32 = *(v30 + 32);
  v31 = *(v30 + 40);

  v33 = MEMORY[0x277D84F90];
  v34 = MEMORY[0x277D84030];
  while ([a2 next])
  {
    v35 = [a2 row];
    if (v35)
    {
      v36 = v35;
      v37 = v34;
      v38 = sub_25AAC4618();

      *&v49 = v32;
      *(&v49 + 1) = v31;

      sub_25AAC4988();
      if (*(v38 + 16) && (v39 = sub_25AAC31A0(&v50), (v40 & 1) != 0))
      {
        sub_25AAA5378(*(v38 + 56) + 32 * v39, v48);
        sub_25AAA5498(&v50);
      }

      else
      {

        sub_25AAA5498(&v50);
        memset(v48, 0, sizeof(v48));
      }

      sub_25AAC4518();
      sub_25AAA5640(v48, &qword_27FA0FE38, &unk_25AAC5410);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_25AAAC4D8(0, *(v33 + 2) + 1, 1, v33);
      }

      v42 = *(v33 + 2);
      v41 = *(v33 + 3);
      if (v42 >= v41 >> 1)
      {
        v33 = sub_25AAAC4D8((v41 > 1), v42 + 1, 1, v33);
      }

      *(v33 + 2) = v42 + 1;
      sub_25AAA4B4C(&v49, &v33[32 * v42 + 32]);
      v34 = v37;
    }
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEA8, &unk_25AAC5760);
  v44 = v47;
  v47[3] = v43;
  *v44 = v33;
  return __swift_destroy_boxed_opaque_existential_1Tm(v52);
}

uint64_t sub_25AAA3C94@<X0>(id a1@<X1>, void *a2@<X8>)
{
  v3 = v2;
  v29 = MEMORY[0x277D84F90];
  while ([a1 next])
  {
    v6 = [a1 row];
    if (v6)
    {
      v23 = a2;
      v24 = v3;
      v7 = v6;
      v8 = sub_25AAC4618();

      v9 = [a1 columns];
      v10 = sub_25AAC47D8();

      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = (v10 + 40);
        v13 = MEMORY[0x277D84F90];
        do
        {
          v14 = *v12;
          *&v28 = *(v12 - 1);
          *(&v28 + 1) = v14;

          sub_25AAC4988();
          if (*(v8 + 16) && (v15 = sub_25AAC31A0(&v26), (v16 & 1) != 0))
          {
            sub_25AAA5378(*(v8 + 56) + 32 * v15, v25);
            sub_25AAA5498(&v26);
          }

          else
          {
            sub_25AAA5498(&v26);
            memset(v25, 0, sizeof(v25));
          }

          sub_25AAC4518();
          sub_25AAA5640(v25, &qword_27FA0FE38, &unk_25AAC5410);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_25AAAC4D8(0, *(v13 + 2) + 1, 1, v13);
          }

          v18 = *(v13 + 2);
          v17 = *(v13 + 3);
          if (v18 >= v17 >> 1)
          {
            v13 = sub_25AAAC4D8((v17 > 1), v18 + 1, 1, v13);
          }

          *(v13 + 2) = v18 + 1;
          sub_25AAA4B4C(&v28, &v13[32 * v18 + 32]);
          v12 += 2;
          --v11;
        }

        while (v11);
      }

      else
      {

        v13 = MEMORY[0x277D84F90];
      }

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEA8, &unk_25AAC5760);
      *&v26 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_25AAAC4D8(0, *(v29 + 2) + 1, 1, v29);
      }

      a2 = v23;
      v3 = v24;
      v20 = *(v29 + 2);
      v19 = *(v29 + 3);
      if (v20 >= v19 >> 1)
      {
        v29 = sub_25AAAC4D8((v19 > 1), v20 + 1, 1, v29);
      }

      v21 = v29;
      *(v29 + 2) = v20 + 1;
      sub_25AAA4B4C(&v26, &v21[32 * v20 + 32]);
    }
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEA8, &unk_25AAC5760);
  a2[3] = result;
  *a2 = v29;
  return result;
}

char *sub_25AAA3FA8@<X0>(id a1@<X1>, char **a2@<X8>)
{
  v3 = v2;
  v6 = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D84F70];
  v8 = MEMORY[0x277D84030];
  while ([a1 next])
  {
    v9 = [a1 row];
    if (v9)
    {
      v19 = v3;
      v10 = v7;
      v11 = v9;
      v12 = v8;
      v13 = sub_25AAC4618();

      v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEC0, &qword_25AAC5528);
      v17[0] = v13;
      sub_25AAC4518();
      sub_25AAA5640(v17, &qword_27FA0FE38, &unk_25AAC5410);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_25AAAC4D8(0, *(v6 + 2) + 1, 1, v6);
      }

      v15 = *(v6 + 2);
      v14 = *(v6 + 3);
      if (v15 >= v14 >> 1)
      {
        v6 = sub_25AAAC4D8((v14 > 1), v15 + 1, 1, v6);
      }

      *(v6 + 2) = v15 + 1;
      sub_25AAA4B4C(&v18, &v6[32 * v15 + 32]);
      v7 = v10;
      v8 = v12;
      v3 = v19;
    }
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEA8, &unk_25AAC5760);
  a2[3] = result;
  *a2 = v6;
  return result;
}

void sub_25AAA414C(int a1, id a2)
{
  if (![a2 next] || (v3 = objc_msgSend(a2, sel_row)) == 0)
  {
LABEL_9:
    sub_25AAA5558();
    swift_allocError();
    *v13 = 26;
    swift_willThrow();
    return;
  }

  v4 = v3;
  v5 = sub_25AAC4618();

  v6 = [a2 columns];
  v7 = sub_25AAC47D8();

  if (v7[2])
  {
    v9 = v7[4];
    v8 = v7[5];

    *&v14[0] = v9;
    *(&v14[0] + 1) = v8;
    sub_25AAC4988();
    if (*(v5 + 16) && (v10 = sub_25AAC31A0(v15), (v11 & 1) != 0))
    {
      sub_25AAA5378(*(v5 + 56) + 32 * v10, v14);
      sub_25AAA5498(v15);

      sub_25AAA4B4C(v14, v16);
      sub_25AAA5378(v16, v15);
      sub_25AAA55AC(0, &qword_27FA0FED0, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v12 = *&v14[0];
        sub_25AAC48B8();

        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        return;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }

    else
    {

      sub_25AAA5498(v15);
    }

    goto LABEL_9;
  }

  __break(1u);
}

Swift::Bool __swiftcall BMSQLResultSet.has(attribute:)(Swift::String attribute)
{
  object = attribute._object;
  countAndFlagsBits = attribute._countAndFlagsBits;
  v3 = sub_25AAA506C(&unk_286C19AA0);
  swift_arrayDestroy();
  v4 = sub_25AAA2D08(countAndFlagsBits, object, v3);

  if (v4)
  {
    return 1;
  }

  sub_25AAA55AC(0, &qword_27FA0FE40, 0x277CF1A98);
  sub_25AAA51D4(&qword_27FA0FE48, &qword_27FA0FE40, 0x277CF1A98);
  return sub_25AAC4568() & 1;
}

uint64_t sub_25AAA445C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AAA506C(&unk_286C19AA0);
  swift_arrayDestroy();
  v5 = sub_25AAA2D08(a1, a2, v4);

  if (v5)
  {
    return 1;
  }

  sub_25AAA55AC(0, &qword_27FA0FE40, 0x277CF1A98);
  return sub_25AAC4568() & 1;
}

uint64_t static Biome.extendMorpheus()()
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
  *(inited + 32) = 0x6573616261746144;
  *(inited + 16) = xmmword_25AAC5400;
  *(inited + 40) = 0xE800000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25AAC5400;
  *(v4 + 56) = MEMORY[0x277D839B0];
  *(v4 + 32) = 0;
  sub_25AAC45D8();
  sub_25AAA4A20(v2);
  v5 = sub_25AAC45B8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_25AAC45A8();
  *(inited + 72) = v5;
  *(inited + 48) = v8;
  sub_25AAA4A20(inited);
  swift_setDeallocating();
  sub_25AAA5640(inited + 32, &qword_27FA0FE68, qword_25AAC5430);
  sub_25AAC4528();
}

uint64_t sub_25AAA4768@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25AAA48F0(0xD000000000000015, 0x800000025AAC5F00), (v5 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v4, v10), swift_dynamicCast()))
  {
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(MEMORY[0x277CF1A88]) initWithPrivileges:0 isColumnAccessLoggingEnabled:v6];
  result = sub_25AAA55AC(0, &qword_27FA0FE28, 0x277CF1A88);
  a2[3] = result;
  *a2 = v7;
  return result;
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

uint64_t sub_25AAA489C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_25AAA48F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25AAC4B78();
  sub_25AAC4738();
  v6 = sub_25AAC4B98();

  return sub_25AAA4968(a1, a2, v6);
}

unint64_t sub_25AAA4968(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25AAC4AF8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25AAA4A20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE98, &unk_25AAC5510);
    v3 = sub_25AAC4AB8();
    v4 = a1 + 32;

    while (1)
    {
      sub_25AAA53D4(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_25AAA48F0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25AAA4B4C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *sub_25AAA4B4C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_25AAA4B5C(void *a1)
{
  v2 = sub_25AAC44F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 error];
  if (result)
  {
    v8 = result;
    sub_25AAC42F8();
    v9 = v8;
    v10 = sub_25AAC44D8();
    v11 = sub_25AAC48A8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v8;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_25AAA0000, v10, v11, "%@", v12, 0xCu);
      sub_25AAA5640(v13, &qword_27FA0FEE0, &qword_25AAC5538);
      MEMORY[0x25F8538C0](v13, -1, -1);
      MEMORY[0x25F8538C0](v12, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_25AAA4D34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE90, &qword_25AAC5508);
    v3 = sub_25AAC4AB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25AAA48F0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25AAA4E38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE70, &qword_25AAC5B10);
    v3 = sub_25AAC4AB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25AAA48F0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25AAA4F70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_25AAC4AB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_25AAA48F0(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25AAA506C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FED8, &qword_25AAC5530);
    v3 = sub_25AAC4998();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_25AAC4B78();

      sub_25AAC4738();
      result = sub_25AAC4B98();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_25AAC4AF8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_25AAA51D4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_25AAA55AC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Biome(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Biome(_WORD *result, int a2, int a3)
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

uint64_t sub_25AAA5378(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25AAA53D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE68, qword_25AAC5430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25AAA5444()
{
  result = qword_27FA0FEA0;
  if (!qword_27FA0FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA0FEA0);
  }

  return result;
}

unint64_t sub_25AAA54EC()
{
  result = qword_27FA0FEB0;
  if (!qword_27FA0FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA0FEB0);
  }

  return result;
}

uint64_t sub_25AAA5540(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_25AAA5558()
{
  result = qword_27FA0FEC8;
  if (!qword_27FA0FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA0FEC8);
  }

  return result;
}

uint64_t sub_25AAA55AC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
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

uint64_t sub_25AAA5640(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25AAA56A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25AAA5704()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_0(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x25F8538C0);
  }

  return result;
}

unint64_t sub_25AAA57B8()
{
  result = qword_27FA0FEF8;
  if (!qword_27FA0FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA0FEF8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_25AAA5868()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = objc_allocWithZone(MEMORY[0x277CCAC68]);

  result = sub_25AAA9218(v3, v2, 0);
  if (v1)
  {

    return 0;
  }

  return result;
}

uint64_t *sub_25AAA58D8@<X0>(uint64_t *a1@<X8>)
{
  v5 = *v1;
  v4 = v1[1];
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF18, &qword_25AAC5740);
  a1[4] = sub_25AAA968C(&qword_27FA0FF20, &qword_27FA0FF18, &qword_25AAC5740);
  __swift_allocate_boxed_opaque_existential_1(a1);

  result = sub_25AAC42D8();
  if (v2)
  {
    return __swift_deallocate_boxed_opaque_existential_0(a1);
  }

  return result;
}

uint64_t sub_25AAA5998()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

id sub_25AAA59C8()
{
  v2 = sub_25AAC46D8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *v0;
  v4 = v0[1];
  sub_25AAC46C8();
  v6 = sub_25AAC46B8();
  if (!v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = v7;
  v10 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_25AAA9218(v8, v9, 0);
  if (v1)
  {

    return 0;
  }

  return result;
}

uint64_t *sub_25AAA5AA8@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_25AAC46D8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *v1;
  v6 = v1[1];
  sub_25AAC46C8();
  result = sub_25AAC46B8();
  if (v9)
  {
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF18, &qword_25AAC5740);
    *(a1 + 32) = sub_25AAA968C(&qword_27FA0FF20, &qword_27FA0FF18, &qword_25AAC5740);
    __swift_allocate_boxed_opaque_existential_1(a1);
    result = sub_25AAC42D8();
    if (v2)
    {
      return __swift_deallocate_boxed_opaque_existential_0(a1);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_25AAA5BD8()
{
  v1 = sub_25AAC46D8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = *v0;
  v3 = v0[1];
  sub_25AAC46C8();
  return sub_25AAC46B8();
}

double NSRegularExpression.attribute(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_25AAC45E8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_25AAA55AC(0, &qword_27FA0FF00, 0x277CCAC68);
  sub_25AAA915C();
  sub_25AAC4558();
  if (v24)
  {
    sub_25AAA4B4C(&v23, v25);
    sub_25AAA4B4C(v25, a3);
    return result;
  }

  sub_25AAA5640(&v23, &qword_27FA0FE38, &unk_25AAC5410);
  if (a1 == 0x6C6C61646E6966 && a2 == 0xE700000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    v11 = MEMORY[0x277D84F90];
    sub_25AAC45D8();
    *(swift_allocObject() + 16) = v4;
    v12 = v4;
    sub_25AAA4A20(v11);
    v13 = sub_25AAC45B8();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
LABEL_7:
    v16 = sub_25AAC45A8();
    *(a3 + 24) = v13;
    *a3 = v16;
    return result;
  }

  if (a1 == 0x686372616573 && a2 == 0xE600000000000000 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x686374616DLL && a2 == 0xE500000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D83B88];
    *(v17 + 16) = xmmword_25AAC5560;
    *(v17 + 56) = v18;
    *(v17 + 32) = 0;
    *(v17 + 64) = 0u;
    *(v17 + 80) = 0u;
    v19 = MEMORY[0x277D84F90];
    sub_25AAC45D8();
    *(swift_allocObject() + 16) = v4;
    v20 = v4;
    sub_25AAA4A20(v19);
    v13 = sub_25AAC45B8();
    v21 = *(v13 + 48);
    v22 = *(v13 + 52);
    swift_allocObject();
    goto LABEL_7;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_25AAA60F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 16) && (v5 = v3, v8 = sub_25AAA48F0(0x676E69727473, 0xE600000000000000), (v9 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v8, v37), (swift_dynamicCast() & 1) != 0))
  {
    v10 = v35;
    v11 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v11 = v35;
    }

    v12 = 7;
    if (((v36 >> 60) & ((v35 & 0x800000000000000) == 0)) != 0)
    {
      v12 = 11;
    }

    v37[0] = 15;
    v37[1] = v12 | (v11 << 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF58, &qword_25AAC5770);
    sub_25AAA968C(&qword_27FA0FF60, &qword_27FA0FF58, &qword_25AAC5770);
    sub_25AAA9638();
    v13 = sub_25AAC48C8();
    v15 = v14;
    v16 = sub_25AAC4698();
    v17 = [a2 matchesInString:v16 options:0 range:{v13, v15}];

    sub_25AAA55AC(0, &qword_27FA0FF50, 0x277CCACC0);
    v18 = sub_25AAC47D8();

    if (v18 >> 62)
    {
      goto LABEL_25;
    }

    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      while (1)
      {
        v32 = a3;
        v33 = v5;
        v37[0] = MEMORY[0x277D84F90];
        result = sub_25AABCCA0(0, v19 & ~(v19 >> 63), 0);
        if (v19 < 0)
        {
          break;
        }

        v21 = 0;
        v22 = v37[0];
        v34 = v10;
        while (!__OFADD__(v21, 1))
        {
          v38 = v21 + 1;
          if ((v18 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x25F853130](v21, v18);
          }

          else
          {
            if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v23 = *(v18 + 8 * v21 + 32);
          }

          v24 = v23;
          [v23 range];
          result = sub_25AAC4888();
          if (v25)
          {
            goto LABEL_29;
          }

          v26 = sub_25AAC47A8();
          v27 = MEMORY[0x25F852E70](v26);
          a3 = v28;

          v37[0] = v22;
          v5 = *(v22 + 16);
          v29 = *(v22 + 24);
          if (v5 >= v29 >> 1)
          {
            sub_25AABCCA0((v29 > 1), v5 + 1, 1);
            v22 = v37[0];
          }

          *(v22 + 16) = v5 + 1;
          v30 = v22 + 16 * v5;
          *(v30 + 32) = v27;
          *(v30 + 40) = a3;
          ++v21;
          v10 = v34;
          if (v38 == v19)
          {

            a3 = v32;
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v19 = sub_25AAC4A88();
        if (!v19)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
    }

    else
    {
LABEL_26:

      v22 = MEMORY[0x277D84F90];
LABEL_27:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE50, &unk_25AAC5B40);
      a3[3] = result;
      *a3 = v22;
    }
  }

  else
  {
    sub_25AAA5558();
    swift_allocError();
    *v31 = 13;
    return swift_willThrow();
  }

  return result;
}

void *sub_25AAA64B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_12;
  }

  v6 = sub_25AAA48F0(0x676E69727473, 0xE600000000000000);
  if ((v7 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v6, v22);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!*(a1 + 16) || (v8 = sub_25AAA48F0(7565168, 0xE300000000000000), (v9 & 1) == 0) || (sub_25AAA5378(*(a1 + 56) + 32 * v8, v22), sub_25AAA55AC(0, &qword_27FA0FED0, 0x277CCABB0), (swift_dynamicCast() & 1) == 0))
  {

LABEL_12:
    sub_25AAA5558();
    swift_allocError();
    *v13 = 20;
    return swift_willThrow();
  }

  v23 = [v20 integerValue];

  if (*(a1 + 16) && (v10 = sub_25AAA48F0(0x736F70646E65, 0xE600000000000000), (v11 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v10, v22), (swift_dynamicCast() & 1) != 0))
  {
    v12 = [v20 integerValue];
  }

  else
  {
    v12 = sub_25AAC4748();
  }

  v15 = v23;
  if (v23 < 0 || (v16 = &v12[-v23], v12 <= v23) || sub_25AAC4748() < v12)
  {

    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v17 = sub_25AAC4698();
    v18 = [a2 firstMatchInString:v17 options:0 range:{v15, v16}];

    if (v18)
    {
      v19 = type metadata accessor for RegexMatch();
      result = swift_allocObject();
      result[2] = v18;
      result[3] = v20;
      result[4] = v21;
      *(a3 + 24) = v19;
      *a3 = result;
    }

    else
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  return result;
}

void *RegexMatch.__allocating_init(match:string:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *sub_25AAA67A0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_12;
  }

  v6 = sub_25AAA48F0(0x676E69727473, 0xE600000000000000);
  if ((v7 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v6, v22);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!*(a1 + 16) || (v8 = sub_25AAA48F0(7565168, 0xE300000000000000), (v9 & 1) == 0) || (sub_25AAA5378(*(a1 + 56) + 32 * v8, v22), sub_25AAA55AC(0, &qword_27FA0FED0, 0x277CCABB0), (swift_dynamicCast() & 1) == 0))
  {

LABEL_12:
    sub_25AAA5558();
    swift_allocError();
    *v13 = 21;
    return swift_willThrow();
  }

  v23 = [v20 integerValue];

  if (*(a1 + 16) && (v10 = sub_25AAA48F0(0x736F70646E65, 0xE600000000000000), (v11 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v10, v22), (swift_dynamicCast() & 1) != 0))
  {
    v12 = [v20 integerValue];
  }

  else
  {
    v12 = sub_25AAC4748();
  }

  v15 = v23;
  if ((v23 & 0x8000000000000000) == 0)
  {
    v16 = &v12[-v23];
    if (v12 > v23 && sub_25AAC4748() >= v12)
    {
      v17 = sub_25AAC4698();
      v18 = [a2 firstMatchInString:v17 options:0 range:{v15, v16}];

      if (v18)
      {
        if ([v18 range] == v15)
        {
          v19 = type metadata accessor for RegexMatch();
          result = swift_allocObject();
          result[2] = v18;
          result[3] = v20;
          result[4] = v21;
          *(a3 + 24) = v19;
          *a3 = result;
          return result;
        }
      }
    }
  }

  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

Swift::Bool __swiftcall NSRegularExpression.has(attribute:)(Swift::String attribute)
{
  object = attribute._object;
  countAndFlagsBits = attribute._countAndFlagsBits;
  v3 = sub_25AAA506C(&unk_286C19C10);
  swift_arrayDestroy();
  v4 = sub_25AAA2D08(countAndFlagsBits, object, v3);

  if (v4)
  {
    return 1;
  }

  sub_25AAA55AC(0, &qword_27FA0FF00, 0x277CCAC68);
  sub_25AAA915C();
  return sub_25AAC4568() & 1;
}

uint64_t *sub_25AAA6B04@<X0>(uint64_t *a1@<X8>)
{
  v4 = [*v1 pattern];
  sub_25AAC46A8();

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF18, &qword_25AAC5740);
  a1[4] = sub_25AAA968C(&qword_27FA0FF20, &qword_27FA0FF18, &qword_25AAC5740);
  __swift_allocate_boxed_opaque_existential_1(a1);
  result = sub_25AAC42D8();
  if (v2)
  {
    return __swift_deallocate_boxed_opaque_existential_0(a1);
  }

  return result;
}

void *sub_25AAA6BE0()
{
  v1 = *v0;
  v2 = v1;
  return v1;
}

uint64_t sub_25AAA6C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AAA506C(&unk_286C19C10);
  swift_arrayDestroy();
  v5 = sub_25AAA2D08(a1, a2, v4);

  if (v5)
  {
    return 1;
  }

  sub_25AAA55AC(0, &qword_27FA0FF00, 0x277CCAC68);
  return sub_25AAC4568() & 1;
}

uint64_t sub_25AAA6CF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  a2[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
}

void sub_25AAA6D98(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

id sub_25AAA6DF0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_25AAA6E34(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 32);
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
}

uint64_t sub_25AAA6E94()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void *RegexMatch.init(match:string:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

double sub_25AAA6EF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25AAC45E8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  type metadata accessor for RegexMatch();
  sub_25AAA9350();
  sub_25AAC4558();
  if (v16)
  {
    sub_25AAA4B4C(&v15, v17);
    sub_25AAA4B4C(v17, a3);
  }

  else
  {
    sub_25AAA5640(&v15, &qword_27FA0FE38, &unk_25AAC5410);
    if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_25AAC4AF8() & 1) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_25AAC5400;
      *(v9 + 56) = MEMORY[0x277D83B88];
      *(v9 + 32) = 0;
      v10 = MEMORY[0x277D84F90];
      sub_25AAC45D8();

      sub_25AAA4A20(v10);
      v11 = sub_25AAC45B8();
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      swift_allocObject();
      v14 = sub_25AAC45A8();
      *(a3 + 24) = v11;
      *a3 = v14;
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

uint64_t sub_25AAA711C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_5;
  }

  v6 = sub_25AAA48F0(7890025, 0xE300000000000000);
  if ((v7 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v6, v28);
  sub_25AAA55AC(0, &qword_27FA0FED0, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v8 = [v27 integerValue];

  swift_beginAccess();
  [*(a2 + 16) rangeAtIndex_];
  swift_beginAccess();
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);

  sub_25AAC4888();
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    v15 = *(a2 + 24);
    v16 = *(a2 + 32);

    v17 = sub_25AAC47A8();
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = MEMORY[0x25F852E70](v17, v19, v21, v23);
    v26 = v25;

    a3[3] = MEMORY[0x277D837D0];
    *a3 = v24;
    a3[1] = v26;
  }

  else
  {
LABEL_5:
    sub_25AAA5558();
    swift_allocError();
    *v13 = 14;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25AAA730C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AAA506C(&unk_286C19C90);
  sub_25AAA93C0(&unk_286C19CB0);
  v5 = sub_25AAA2D08(a1, a2, v4);

  if (v5)
  {
    return 1;
  }

  type metadata accessor for RegexMatch();
  sub_25AAA9350();
  return sub_25AAC4568() & 1;
}

uint64_t RegexMatch.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t RegexMatch.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_25AAA7430(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AAA506C(&unk_286C19C90);
  sub_25AAA93C0(&unk_286C19CB0);
  v5 = sub_25AAA2D08(a1, a2, v4);

  if (v5)
  {
    return 1;
  }

  type metadata accessor for RegexMatch();
  return sub_25AAC4568() & 1;
}

uint64_t static Re.extendMorpheus()()
{
  v0 = sub_25AAC45E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_25AAC4548();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE60, qword_25AAC5580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25AAC5570;
  *(inited + 32) = 6452595;
  *(inited + 40) = 0xE300000000000000;
  v3 = MEMORY[0x277D84F90];
  sub_25AAC45D8();
  sub_25AAA4A20(v3);
  v4 = sub_25AAC45B8();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(inited + 48) = sub_25AAC45A8();
  *(inited + 72) = v4;
  *(inited + 80) = 0x656C69706D6F63;
  *(inited + 88) = 0xE700000000000000;
  sub_25AAC45D8();
  sub_25AAA4A20(v3);
  v7 = *(v4 + 48);
  v8 = *(v4 + 52);
  swift_allocObject();
  *(inited + 96) = sub_25AAC45A8();
  *(inited + 120) = v4;
  *(inited + 128) = 0x686374616DLL;
  *(inited + 136) = 0xE500000000000000;
  sub_25AAC45D8();
  sub_25AAA4A20(v3);
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  *(inited + 144) = sub_25AAC45A8();
  *(inited + 168) = v4;
  *(inited + 176) = 0x6C6C61646E6966;
  *(inited + 184) = 0xE700000000000000;
  sub_25AAC45D8();
  sub_25AAA4A20(v3);
  v11 = *(v4 + 48);
  v12 = *(v4 + 52);
  swift_allocObject();
  *(inited + 192) = sub_25AAC45A8();
  *(inited + 216) = v4;
  *(inited + 224) = 0x686372616573;
  *(inited + 232) = 0xE600000000000000;
  sub_25AAC45D8();
  sub_25AAA4A20(v3);
  v13 = *(v4 + 48);
  v14 = *(v4 + 52);
  swift_allocObject();
  v15 = sub_25AAC45A8();
  *(inited + 264) = v4;
  *(inited + 240) = v15;
  sub_25AAA4A20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE68, qword_25AAC5430);
  swift_arrayDestroy();
  sub_25AAC4528();
}

uint64_t sub_25AAA7928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v5 = sub_25AAA48F0(0x676E69727473, 0xE600000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v5, v65);
  v7 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v8 = *(&v62 + 1);
  v9 = v62;
  if (!*(a1 + 16) || (v10 = sub_25AAA48F0(0x6E726574746170, 0xE700000000000000), (v11 & 1) == 0))
  {
    v62 = 0u;
    v63 = 0u;
    v64 = 0;
    goto LABEL_12;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v10, &v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF80, &qword_25AAC5788);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    goto LABEL_12;
  }

  if (!*(&v63 + 1))
  {
LABEL_12:
    sub_25AAA5640(&v62, &qword_27FA0FF68, &qword_25AAC5778);
    goto LABEL_13;
  }

  sub_25AAA5540(&v62, v65);
  v12 = v66;
  v13 = v67;
  __swift_project_boxed_opaque_existential_1Tm(v65, v66);
  (*(v13 + 8))(&v59, v12, v13);
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(v65);
  }

  if (!v60)
  {
    sub_25AAA5640(&v59, &qword_27FA0FF88, &qword_25AAC5790);
    goto LABEL_39;
  }

  sub_25AAA5540(&v59, &v62);
  if (!*(a1 + 16) || (v23 = sub_25AAA48F0(1819305330, 0xE400000000000000), (v24 & 1) == 0))
  {
    v56 = 0u;
    v57 = 0u;
    v58 = 0;
    goto LABEL_37;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v23, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF98, &unk_25AAC57A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v58 = 0;
    v56 = 0u;
    v57 = 0u;
    goto LABEL_37;
  }

  if (!*(&v57 + 1))
  {
LABEL_37:
    sub_25AAA5640(&v56, &qword_27FA0FF90, &qword_25AAC5798);
    __swift_destroy_boxed_opaque_existential_1Tm(&v62);
LABEL_39:
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    goto LABEL_13;
  }

  sub_25AAA5540(&v56, &v59);
  v25 = v60;
  v26 = v61;
  __swift_project_boxed_opaque_existential_1Tm(&v59, v60);
  (*(v26 + 8))(v25, v26);
  if (v27)
  {
    v68 = __swift_project_boxed_opaque_existential_1Tm(&v62, *(&v63 + 1));
    v55[0] = v9;
    v55[1] = v8;
    sub_25AAA9728();
    sub_25AAA96D4();
    sub_25AAC4878();

    v28 = v56;
    *(a2 + 24) = v7;
    *a2 = v28;
    __swift_destroy_boxed_opaque_existential_1Tm(&v59);
    __swift_destroy_boxed_opaque_existential_1Tm(&v62);
    return __swift_destroy_boxed_opaque_existential_1Tm(v65);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v59);
  __swift_destroy_boxed_opaque_existential_1Tm(&v62);
  __swift_destroy_boxed_opaque_existential_1Tm(v65);
LABEL_13:
  if (!*(a1 + 16) || (v15 = sub_25AAA48F0(1819305330, 0xE400000000000000), (v16 & 1) == 0) || (sub_25AAA5378(*(a1 + 56) + 32 * v15, v65), sub_25AAC45B8(), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_23;
  }

  if (!*(a1 + 16) || (v17 = sub_25AAA48F0(0x6E726574746170, 0xE700000000000000), (v18 & 1) == 0))
  {

    v62 = 0u;
    v63 = 0u;
    v64 = 0;
LABEL_35:
    sub_25AAA5640(&v62, &qword_27FA0FF28, &qword_25AAC5748);
    goto LABEL_23;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v17, &v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF30, &qword_25AAC5750);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    goto LABEL_34;
  }

  if (!*(&v63 + 1))
  {
LABEL_34:

    goto LABEL_35;
  }

  sub_25AAA5540(&v62, v65);
  v19 = v66;
  v20 = v67;
  __swift_project_boxed_opaque_existential_1Tm(v65, v66);
  v21 = (*(v20 + 8))(v19, v20);
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(v65);
  }

  if (v21)
  {
    v29 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v29 = v9;
    }

    v30 = 7;
    if (((v8 >> 60) & ((v9 & 0x800000000000000) == 0)) != 0)
    {
      v30 = 11;
    }

    *&v62 = 15;
    *(&v62 + 1) = v30 | (v29 << 16);
    *&v59 = v9;
    *(&v59 + 1) = v8;
    v31 = v21;
    v51 = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF58, &qword_25AAC5770);
    sub_25AAA968C(&qword_27FA0FF60, &qword_27FA0FF58, &qword_25AAC5770);
    sub_25AAA9638();
    v32 = sub_25AAC48C8();
    v34 = v33;
    v35 = sub_25AAC4698();
    v36 = [v31 matchesInString:v35 options:0 range:{v32, v34}];

    v37 = sub_25AAC4698();
    v38 = [v51 matchesInString:v37 options:0 range:{v32, v34}];

    sub_25AAA55AC(0, &qword_27FA0FF50, 0x277CCACC0);
    v39 = sub_25AAC47D8();

    *&v59 = v9;
    *(&v59 + 1) = v8;
    v52 = v39;
    if (v39 >> 62)
    {
      v40 = sub_25AAC4A88();
      if (v40)
      {
LABEL_47:
        v68 = v39 & 0xC000000000000001;
        v53 = v39 + 32;
        v54 = v39 & 0xFFFFFFFFFFFFFF8;
        while (!__OFSUB__(v40--, 1))
        {
          if (v68)
          {
            v42 = MEMORY[0x25F853130](v40, v52);
          }

          else
          {
            if ((v40 & 0x8000000000000000) != 0)
            {
              goto LABEL_63;
            }

            if (v40 >= *(v54 + 16))
            {
              goto LABEL_64;
            }

            v42 = *(v53 + 8 * v40);
          }

          v43 = v42;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF70, &qword_25AAC5780);
          v44 = swift_allocObject();
          *(v44 + 16) = xmmword_25AAC5400;
          v45 = v59;
          v46 = type metadata accessor for RegexMatch();
          v47 = swift_allocObject();
          *(v47 + 16) = v43;
          *(v47 + 24) = v45;
          *(v44 + 56) = v46;
          *(v44 + 32) = v47;
          v48 = v43;

          sub_25AAC4598();

          if (swift_dynamicCast())
          {
            v49 = v56;
            [v48 range];
            sub_25AAC4888();
            if ((v50 & 1) == 0)
            {
              v62 = v49;
              sub_25AAA96D4();
              sub_25AAC4728();
            }
          }

          if (!v40)
          {
            goto LABEL_65;
          }
        }

        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        v8 = *(&v59 + 1);
        v9 = v59;
      }
    }

    else
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v40)
      {
        goto LABEL_47;
      }
    }

    *(a2 + 24) = MEMORY[0x277D837D0];

    *a2 = v9;
    *(a2 + 8) = v8;
    return __swift_destroy_boxed_opaque_existential_1Tm(v65);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v65);
LABEL_23:
  sub_25AAA5558();
  swift_allocError();
  *v22 = 15;
  return swift_willThrow();
}

uint64_t sub_25AAA8230@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16) || (v5 = sub_25AAA48F0(0x6E726574746170, 0xE700000000000000), (v6 & 1) == 0))
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
    goto LABEL_10;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v5, &v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF30, &qword_25AAC5750);
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
    sub_25AAA5640(&v14, &qword_27FA0FF28, &qword_25AAC5748);
    goto LABEL_11;
  }

  sub_25AAA5540(&v14, v17);
  v7 = v18;
  v8 = v19;
  __swift_project_boxed_opaque_existential_1Tm(v17, v18);
  v9 = (*(v8 + 8))(v7, v8);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  if (v9)
  {
    v10 = v9;
    a2[3] = sub_25AAA55AC(0, &qword_27FA0FF00, 0x277CCAC68);
    *a2 = v10;
    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
LABEL_11:
  sub_25AAA5558();
  swift_allocError();
  *v12 = 16;
  return swift_willThrow();
}

uint64_t sub_25AAA83D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v5 = sub_25AAA48F0(0x6E726574746170, 0xE700000000000000), (v6 & 1) == 0))
  {
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    goto LABEL_8;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v5, &v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF30, &qword_25AAC5750);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    goto LABEL_8;
  }

  if (!*(&v32 + 1))
  {
LABEL_8:
    sub_25AAA5640(&v31, &qword_27FA0FF28, &qword_25AAC5748);
LABEL_9:
    sub_25AAA5558();
    swift_allocError();
    *v11 = 17;
    return swift_willThrow();
  }

  sub_25AAA5540(&v31, v34);
  v7 = v35;
  v8 = v36;
  __swift_project_boxed_opaque_existential_1Tm(v34, v35);
  v9 = (*(v8 + 8))(v7, v8);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  if (!v9)
  {
    goto LABEL_28;
  }

  if (!*(a1 + 16))
  {

    goto LABEL_28;
  }

  v12 = v9;
  v13 = sub_25AAA48F0(0x676E69727473, 0xE600000000000000);
  if ((v14 & 1) == 0 || (sub_25AAA5378(*(a1 + 56) + 32 * v13, &v31), (swift_dynamicCast() & 1) == 0))
  {

LABEL_28:
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    goto LABEL_9;
  }

  v16 = v29;
  v15 = v30;
  v17 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v17 = v29;
  }

  v18 = 7;
  if (((v30 >> 60) & ((v29 & 0x800000000000000) == 0)) != 0)
  {
    v18 = 11;
  }

  *&v31 = 15;
  *(&v31 + 1) = v18 | (v17 << 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF58, &qword_25AAC5770);
  sub_25AAA968C(&qword_27FA0FF60, &qword_27FA0FF58, &qword_25AAC5770);
  sub_25AAA9638();
  v19 = sub_25AAC48C8();
  v21 = v20;
  v22 = sub_25AAC4698();
  v23 = [v12 matchesInString:v22 options:0 range:{v19, v21}];

  sub_25AAA55AC(0, &qword_27FA0FF50, 0x277CCACC0);
  v24 = sub_25AAC47D8();

  if (v24 >> 62)
  {
    result = sub_25AAC4A88();
    if (result)
    {
      goto LABEL_21;
    }

LABEL_31:

    goto LABEL_32;
  }

  result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_31;
  }

LABEL_21:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x25F853130](0, v24);
    goto LABEL_24;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v24 + 32);
LABEL_24:
    v26 = v25;

    if (![v26 range])
    {
      v27 = type metadata accessor for RegexMatch();
      v28 = swift_allocObject();
      v28[2] = v26;
      v28[3] = v16;
      v28[4] = v15;
      *(a2 + 24) = v27;

      *a2 = v28;
      return __swift_destroy_boxed_opaque_existential_1Tm(v34);
    }

LABEL_32:

    *a2 = 0u;
    *(a2 + 16) = 0u;
    return __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  __break(1u);
  return result;
}

char *sub_25AAA87BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  v5 = sub_25AAA48F0(0x676E69727473, 0xE600000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v5, v37);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v7 = *(&v34 + 1);
  if (!*(a1 + 16) || (v8 = v34, v9 = sub_25AAA48F0(0x6E726574746170, 0xE700000000000000), (v10 & 1) == 0))
  {

    v34 = 0u;
    v35 = 0u;
    v36 = 0;
LABEL_13:
    sub_25AAA5640(&v34, &qword_27FA0FF28, &qword_25AAC5748);
LABEL_14:
    sub_25AAA5558();
    swift_allocError();
    *v14 = 18;
    return swift_willThrow();
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v9, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF30, &qword_25AAC5750);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    goto LABEL_12;
  }

  if (!*(&v35 + 1))
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_25AAA5540(&v34, v37);
  v11 = v38;
  v12 = v39;
  __swift_project_boxed_opaque_existential_1Tm(v37, v38);
  v13 = (*(v12 + 8))(v11, v12);
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  if (!v13)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    goto LABEL_14;
  }

  v29 = v13;
  v16 = sub_25AAC4698();
  v33[0] = 15;
  *&v34 = v8;
  *(&v34 + 1) = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF38, &qword_25AAC5758);
  sub_25AAA968C(&qword_27FA0FF40, &qword_27FA0FF38, &qword_25AAC5758);
  sub_25AAA9638();
  v17 = v29;
  v18 = sub_25AAC48C8();
  v20 = [v29 matchesInString:v16 options:0 range:{v18, v19}];

  sub_25AAA55AC(0, &qword_27FA0FF50, 0x277CCACC0);
  v21 = sub_25AAC47D8();

  if (v21 >> 62)
  {
    goto LABEL_32;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
LABEL_33:

    v24 = MEMORY[0x277D84F90];
LABEL_34:
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEA8, &unk_25AAC5760);

    *a2 = v24;
    return __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  while (1)
  {
    v17 = v21;
    v33[0] = MEMORY[0x277D84F90];
    v21 = v33;
    result = sub_25AABCCC0(0, v22 & ~(v22 >> 63), 0);
    if (v22 < 0)
    {
      break;
    }

    v23 = 0;
    v24 = v33[0];
    v25 = v17;
    v32 = v17 & 0xC000000000000001;
    v30 = v17 & 0xFFFFFFFFFFFFFF8;
    v31 = v17;
    while (1)
    {
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v32)
      {
        v27 = MEMORY[0x25F853130](v23, v25);
      }

      else
      {
        if (v23 >= *(v30 + 16))
        {
          goto LABEL_31;
        }

        v27 = *(v25 + 8 * v23 + 32);
      }

      v21 = v27;
      v40 = v27;
      sub_25AAA8C50(&v40, &v34);

      v33[0] = v24;
      v17 = *(v24 + 16);
      v28 = *(v24 + 24);
      if (v17 >= v28 >> 1)
      {
        v21 = v33;
        sub_25AABCCC0((v28 > 1), v17 + 1, 1);
        v24 = v33[0];
      }

      *(v24 + 16) = v17 + 1;
      sub_25AAA4B4C(&v34, (v24 + 32 * v17 + 32));
      ++v23;
      v25 = v31;
      if (v26 == v22)
      {

        v17 = v29;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v22 = sub_25AAC4A88();
    if (!v22)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25AAA8C50@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  if ([*a1 numberOfRanges] < 2)
  {
    [v4 range];
    result = sub_25AAC4888();
    if ((v7 & 1) == 0)
    {
      v8 = sub_25AAC47A8();
      v9 = MEMORY[0x25F852E70](v8);
      v11 = v10;

      a2[3] = MEMORY[0x277D837D0];
      *a2 = v9;
      a2[1] = v11;
      return result;
    }
  }

  else
  {
    result = [v4 numberOfRanges];
    v23 = result;
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      v21 = a2;
      v22 = v2;
      v6 = MEMORY[0x277D84F90];
      if (result == 1)
      {
LABEL_5:
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE50, &unk_25AAC5B40);
        v21[3] = result;
        *v21 = v6;
        return result;
      }

      v12 = 1;
      while (1)
      {
        [v4 rangeAtIndex_];
        result = sub_25AAC4888();
        if (v13)
        {
          break;
        }

        v14 = sub_25AAC47A8();
        v15 = MEMORY[0x25F852E70](v14);
        v17 = v16;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_25AAAC5E8(0, *(v6 + 2) + 1, 1, v6);
        }

        v19 = *(v6 + 2);
        v18 = *(v6 + 3);
        if (v19 >= v18 >> 1)
        {
          v6 = sub_25AAAC5E8((v18 > 1), v19 + 1, 1, v6);
        }

        ++v12;
        *(v6 + 2) = v19 + 1;
        v20 = &v6[16 * v19];
        *(v20 + 4) = v15;
        *(v20 + 5) = v17;
        if (v23 == v12)
        {
          goto LABEL_5;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25AAA8E3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  v5 = sub_25AAA48F0(0x676E69727473, 0xE600000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v5, v27);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v7 = *(&v24 + 1);
  if (!*(a1 + 16) || (v8 = v24, v9 = sub_25AAA48F0(0x6E726574746170, 0xE700000000000000), (v10 & 1) == 0))
  {

    v24 = 0u;
    v25 = 0u;
    v26 = 0;
LABEL_13:
    sub_25AAA5640(&v24, &qword_27FA0FF28, &qword_25AAC5748);
    goto LABEL_14;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v9, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF30, &qword_25AAC5750);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    goto LABEL_12;
  }

  if (!*(&v25 + 1))
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_25AAA5540(&v24, v27);
  v11 = v28;
  v12 = v29;
  __swift_project_boxed_opaque_existential_1Tm(v27, v28);
  v13 = (*(v12 + 8))(v11, v12);
  if (!v2)
  {
    v16 = v13;
    if (v13)
    {
      v17 = sub_25AAC4698();
      v23[0] = 15;
      *&v24 = v8;
      *(&v24 + 1) = v7;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF38, &qword_25AAC5758);
      sub_25AAA968C(&qword_27FA0FF40, &qword_27FA0FF38, &qword_25AAC5758);
      sub_25AAA9638();
      v18 = sub_25AAC48C8();
      v20 = [v16 firstMatchInString:v17 options:0 range:{v18, v19}];

      if (v20)
      {
        v21 = type metadata accessor for RegexMatch();
        v22 = swift_allocObject();
        v22[2] = v20;
        v22[3] = v8;
        v22[4] = v7;
      }

      else
      {

        v22 = 0;
        v21 = 0;
        a2[1] = 0;
        a2[2] = 0;
      }

      *a2 = v22;
      a2[3] = v21;
      return __swift_destroy_boxed_opaque_existential_1Tm(v27);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v27);
LABEL_14:
    sub_25AAA5558();
    swift_allocError();
    *v14 = 19;
    return swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v27);
}

unint64_t sub_25AAA915C()
{
  result = qword_27FA0FF08;
  if (!qword_27FA0FF08)
  {
    sub_25AAA55AC(255, &qword_27FA0FF00, 0x277CCAC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA0FF08);
  }

  return result;
}

uint64_t sub_25AAA91C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_25AAA9218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_25AAC4698();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_25AAC4258();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t sub_25AAA9350()
{
  result = qword_27FA0FF10;
  if (!qword_27FA0FF10)
  {
    type metadata accessor for RegexMatch();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA0FF10);
  }

  return result;
}

id sub_25AAA9414@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_25AAA9470@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
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

unint64_t sub_25AAA9638()
{
  result = qword_27FA0FF48;
  if (!qword_27FA0FF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA0FF48);
  }

  return result;
}

uint64_t sub_25AAA968C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_25AAA96D4()
{
  result = qword_27FA0FF78;
  if (!qword_27FA0FF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA0FF78);
  }

  return result;
}

unint64_t sub_25AAA9728()
{
  result = qword_27FA0FFA0;
  if (!qword_27FA0FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA0FFA0);
  }

  return result;
}

uint64_t Connection.__allocating_init(db:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_25AAA97C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v11 = *(v6 + 16);
  v12 = sub_25AAC4708();
  LODWORD(v11) = sqlite3_prepare_v2(v11, (v12 + 32), -1, ppStmt, 0);

  if (v11 || (v14 = ppStmt[0]) == 0)
  {
    sub_25AAA5558();
    swift_allocError();
    *v13 = 24;
    swift_willThrow();
  }

  else
  {
    sub_25AAA9958(a3, v25);
    sub_25AAA9958(a4, v24);
    sub_25AAA9958(a5, v23);
    sub_25AAA9958(a6, v22);
    type metadata accessor for Statement();
    a6 = swift_allocObject();
    *(a6 + 168) = 0;
    *(a6 + 176) = 1;
    *(a6 + 16) = v14;
    *(a6 + 24) = v6;

    v15 = sqlite3_column_count(v14);
    v16 = v25[1];
    *(a6 + 40) = v25[0];
    *(a6 + 56) = v16;
    v17 = v24[1];
    *(a6 + 72) = v24[0];
    *(a6 + 88) = v17;
    v18 = v23[1];
    *(a6 + 104) = v23[0];
    *(a6 + 120) = v18;
    v19 = v22[0];
    *(a6 + 152) = v22[1];
    *(a6 + 32) = v15;
    *(a6 + 136) = v19;
  }

  v20 = *MEMORY[0x277D85DE8];
  return a6;
}

uint64_t sub_25AAA9958(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE38, &unk_25AAC5410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Statement.__allocating_init(stmt:conn:realNullDefault:integerNullDefault:numericNullDefault:textNullDefault:)(sqlite3_stmt *a1, uint64_t a2, _OWORD *a3, _OWORD *a4, _OWORD *a5, __int128 *a6)
{
  v12 = swift_allocObject();
  *(v12 + 168) = 0;
  *(v12 + 176) = 1;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = sqlite3_column_count(a1);
  v14 = a3[1];
  *(v12 + 40) = *a3;
  *(v12 + 56) = v14;
  v15 = a4[1];
  *(v12 + 72) = *a4;
  *(v12 + 88) = v15;
  v16 = a5[1];
  *(v12 + 104) = *a5;
  *(v12 + 120) = v16;
  v17 = *a6;
  *(v12 + 152) = a6[1];
  *(v12 + 32) = v13;
  *(v12 + 136) = v17;
  return v12;
}

uint64_t Connection.__deallocating_deinit()
{
  sqlite3_close_v2(*(v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

double sub_25AAA9AF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25AAC45E8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  type metadata accessor for Connection();
  sub_25AAACBA4(&qword_27FA0FFA8, type metadata accessor for Connection);
  sub_25AAC4558();
  if (v16)
  {
    sub_25AAA4B4C(&v15, v17);
    sub_25AAA4B4C(v17, a3);
  }

  else
  {
    sub_25AAAC454(&v15);
    if (a1 == 0x65726170657270 && a2 == 0xE700000000000000 || (sub_25AAC4AF8() & 1) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
      v9 = swift_allocObject();
      v9[1] = xmmword_25AAC57B0;
      v9[2] = 0u;
      v9[3] = 0u;
      v9[4] = 0u;
      v9[5] = 0u;
      v9[6] = 0u;
      v9[7] = 0u;
      v9[8] = 0u;
      v9[9] = 0u;
      v10 = MEMORY[0x277D84F90];
      sub_25AAC45D8();

      sub_25AAA4A20(v10);
      v11 = sub_25AAC45B8();
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      swift_allocObject();
      v14 = sub_25AAC45A8();
      *(a3 + 24) = v11;
      *a3 = v14;
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

uint64_t sub_25AAA9D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) || (v6 = sub_25AAA48F0(0x6E656D6574617473, 0xE900000000000074), (v7 & 1) == 0) || (sub_25AAA5378(*(a1 + 56) + 32 * v6, v38), (swift_dynamicCast() & 1) == 0))
  {
    sub_25AAA5558();
    swift_allocError();
    *v10 = 23;
    result = swift_willThrow();
    goto LABEL_9;
  }

  if (*(a1 + 16) && (v8 = sub_25AAA48F0(0xD000000000000011, 0x800000025AAC5F20), (v9 & 1) != 0))
  {
    sub_25AAA5378(*(a1 + 56) + 32 * v8, v38);
    if (!*(a1 + 16))
    {
      goto LABEL_14;
    }
  }

  else
  {
    memset(v38, 0, 32);
    if (!*(a1 + 16))
    {
      goto LABEL_14;
    }
  }

  v13 = sub_25AAA48F0(0xD000000000000014, 0x800000025AAC5F40);
  if (v14)
  {
    sub_25AAA5378(*(a1 + 56) + 32 * v13, v37);
    if (!*(a1 + 16))
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_14:
  memset(v37, 0, sizeof(v37));
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

LABEL_15:
  v15 = sub_25AAA48F0(0xD000000000000014, 0x800000025AAC5F60);
  if (v16)
  {
    sub_25AAA5378(*(a1 + 56) + 32 * v15, v36);
    if (!*(a1 + 16))
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_18:
  memset(v36, 0, sizeof(v36));
  if (!*(a1 + 16))
  {
LABEL_21:
    memset(v35, 0, sizeof(v35));
    goto LABEL_22;
  }

LABEL_19:
  v17 = sub_25AAA48F0(0xD000000000000011, 0x800000025AAC5F80);
  if ((v18 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v17, v35);
LABEL_22:
  ppStmt = 0;
  v19 = *(a2 + 16);
  v20 = sub_25AAC4708();

  LODWORD(v19) = sqlite3_prepare_v2(v19, (v20 + 32), -1, &ppStmt, 0);

  if (v19 || (v22 = ppStmt) == 0)
  {
    sub_25AAA5558();
    swift_allocError();
    *v21 = 24;
    swift_willThrow();
    sub_25AAAC454(v35);
    sub_25AAAC454(v36);
    sub_25AAAC454(v37);
    result = sub_25AAAC454(v38);
  }

  else
  {
    sub_25AAA9958(v38, v33);
    sub_25AAA9958(v37, v32);
    sub_25AAA9958(v36, v31);
    sub_25AAA9958(v35, v30);
    v23 = type metadata accessor for Statement();
    v24 = swift_allocObject();
    *(v24 + 168) = 0;
    *(v24 + 176) = 1;
    *(v24 + 16) = v22;
    *(v24 + 24) = a2;

    v25 = sqlite3_column_count(v22);
    sub_25AAAC454(v35);
    sub_25AAAC454(v36);
    sub_25AAAC454(v37);
    result = sub_25AAAC454(v38);
    v26 = v33[1];
    *(v24 + 40) = v33[0];
    *(v24 + 56) = v26;
    v27 = v32[1];
    *(v24 + 72) = v32[0];
    *(v24 + 88) = v27;
    v28 = v31[1];
    *(v24 + 104) = v31[0];
    *(v24 + 120) = v28;
    v29 = v30[0];
    *(v24 + 152) = v30[1];
    *(v24 + 32) = v25;
    *(v24 + 136) = v29;
    a3[3] = v23;
    *a3 = v24;
  }

LABEL_9:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25AAAA110(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AAA506C(&unk_286C19E70);
  sub_25AAA93C0(&unk_286C19E90);
  v5 = sub_25AAA2D08(a1, a2, v4);

  if (v5)
  {
    return 1;
  }

  type metadata accessor for Connection();
  sub_25AAACBA4(&qword_27FA0FFA8, type metadata accessor for Connection);
  return sub_25AAC4568() & 1;
}

uint64_t sub_25AAAA1FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AAA506C(&unk_286C19E70);
  sub_25AAA93C0(&unk_286C19E90);
  v5 = sub_25AAA2D08(a1, a2, v4);

  if (v5)
  {
    return 1;
  }

  type metadata accessor for Connection();
  return sub_25AAC4568() & 1;
}

uint64_t sub_25AAAA298(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

uint64_t sub_25AAAA2F8()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t Statement.init(stmt:conn:realNullDefault:integerNullDefault:numericNullDefault:textNullDefault:)(sqlite3_stmt *a1, uint64_t a2, _OWORD *a3, _OWORD *a4, _OWORD *a5, __int128 *a6)
{
  *(v6 + 168) = 0;
  *(v6 + 176) = 1;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v11 = sqlite3_column_count(a1);
  v12 = a3[1];
  *(v6 + 40) = *a3;
  *(v6 + 56) = v12;
  v13 = a4[1];
  *(v6 + 72) = *a4;
  *(v6 + 88) = v13;
  v14 = a5[1];
  *(v6 + 104) = *a5;
  *(v6 + 120) = v14;
  v15 = *a6;
  *(v6 + 152) = a6[1];
  *(v6 + 32) = v11;
  *(v6 + 136) = v15;
  return v6;
}

uint64_t Statement.deinit()
{
  sqlite3_finalize(*(v0 + 16));
  v1 = *(v0 + 24);

  sub_25AAAC454(v0 + 40);
  sub_25AAAC454(v0 + 72);
  sub_25AAAC454(v0 + 104);
  sub_25AAAC454(v0 + 136);
  return v0;
}

uint64_t Statement.__deallocating_deinit()
{
  sqlite3_finalize(*(v0 + 16));
  v1 = *(v0 + 24);

  sub_25AAAC454(v0 + 40);
  sub_25AAAC454(v0 + 72);
  sub_25AAAC454(v0 + 104);
  sub_25AAAC454(v0 + 136);

  return MEMORY[0x2821FE8D8](v0, 177, 7);
}

uint64_t sub_25AAAA498()
{
  if (sqlite3_step(*(v0 + 16)) == 100)
  {
    return sqlite3_column_int(*(v0 + 16), 0);
  }

  else
  {
    return 0;
  }
}

char *sub_25AAAA4D8()
{
  v0 = sub_25AAAA5D0();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  do
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEA8, &unk_25AAC5760);
    *&v6 = v1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_25AAAC4D8(0, *(v2 + 2) + 1, 1, v2);
    }

    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_25AAAC4D8((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    sub_25AAA4B4C(&v6, &v2[32 * v4 + 32]);
    v1 = sub_25AAAA5D0();
  }

  while (v1);
  return v2;
}

uint64_t sub_25AAAA5D0()
{
  if (sqlite3_step(*(v0 + 16)) != 100)
  {
    sqlite3_reset(*(v0 + 16));
    return 0;
  }

  result = swift_beginAccess();
  v2 = *(v0 + 32);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (v2)
    {
      v3 = 0;
      v4 = MEMORY[0x277D84F90];
      v5 = &unk_286C1B0F0;
      while (1)
      {
        if (v3 == 0x80000000)
        {
          __break(1u);
          goto LABEL_56;
        }

        v6 = sqlite3_column_type(*(v0 + 16), v3);
        if (v6 > 2)
        {
          break;
        }

        if (v6 == 1)
        {
          v17 = sqlite3_column_int(*(v0 + 16), v3);
          v26 = MEMORY[0x277D849A8];
          LODWORD(v25) = v17;
        }

        else
        {
          if (v6 != 2)
          {
            goto LABEL_37;
          }

          v9 = sqlite3_column_double(*(v0 + 16), v3);
          v26 = MEMORY[0x277D839F8];
          *&v25 = v9;
        }

LABEL_38:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_25AAAC4D8(0, *(v4 + 2) + 1, 1, v4);
        }

        v20 = *(v4 + 2);
        v19 = *(v4 + 3);
        if (v20 >= v19 >> 1)
        {
          v4 = sub_25AAAC4D8((v19 > 1), v20 + 1, 1, v4);
        }

        *(v4 + 2) = v20 + 1;
        result = sub_25AAA4B4C(&v25, &v4[32 * v20 + 32]);
LABEL_6:
        if (v2 == ++v3)
        {
          return v4;
        }
      }

      if ((v6 - 3) < 2)
      {
        result = sqlite3_column_text(*(v0 + 16), v3);
        if (!result)
        {
          goto LABEL_57;
        }

        v7 = sub_25AAC4768();
        v26 = MEMORY[0x277D837D0];
        *&v25 = v7;
        *(&v25 + 1) = v8;
        goto LABEL_38;
      }

      if (v6 == 5)
      {
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE38, &unk_25AAC5410);
        v10 = v5;
        v11 = swift_allocObject();
        *&v25 = v11;
        *(v11 + 16) = 0u;
        *(v11 + 32) = 0u;
        if (sqlite3_column_decltype(*(v0 + 16), v3))
        {
          sub_25AAC4758();
          v12 = sub_25AAC46F8();
          v14 = v13;

          if ((sub_25AAC4788() & 1) == 0 && (sub_25AAC4788() & 1) == 0 && (sub_25AAC4788() & 1) == 0)
          {
LABEL_22:
            if (sub_25AAC4788() & 1) != 0 || (sub_25AAC4798())
            {
              sub_25AAA9958(v0 + 72, &v22);
              if (v23)
              {
                goto LABEL_30;
              }

              sub_25AAAC454(&v22);
            }

            *&v24[0] = v12;
            *(&v24[0] + 1) = v14;
            *&v22 = 1918986339;
            *(&v22 + 1) = 0xE400000000000000;
            sub_25AAA9638();
            if (sub_25AAC48E8())
            {
              goto LABEL_29;
            }

            *&v24[0] = v12;
            *(&v24[0] + 1) = v14;
            *&v22 = 1954047348;
            *(&v22 + 1) = 0xE400000000000000;
            if (sub_25AAC48E8() & 1) != 0 || (*&v24[0] = v12, *(&v24[0] + 1) = v14, *&v22 = 1651469411, *(&v22 + 1) = 0xE400000000000000, (sub_25AAC48E8()))
            {
LABEL_29:
              sub_25AAA9958(v0 + 136, &v22);
              if (v23)
              {
                goto LABEL_30;
              }

              sub_25AAAC454(&v22);
            }

            if (sub_25AAC4788() & 1) != 0 || (sub_25AAC4788() & 1) != 0 || (sub_25AAC4788())
            {
            }

            else
            {
              v21 = sub_25AAC4788();

              if ((v21 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            sub_25AAA9958(v0 + 104, &v22);
            if (v23)
            {
              sub_25AAA4B4C(&v22, v24);
              __swift_destroy_boxed_opaque_existential_1Tm(&v25);
              sub_25AAA4B4C(v24, &v25);
            }

            else
            {
              sub_25AAAC454(&v22);
            }

            goto LABEL_31;
          }

          sub_25AAA9958(v0 + 40, &v22);
          if (!v23)
          {
            sub_25AAAC454(&v22);
            goto LABEL_22;
          }

LABEL_30:

          sub_25AAA4B4C(&v22, v24);
          __swift_destroy_boxed_opaque_existential_1Tm(&v25);
          sub_25AAA4B4C(v24, &v25);
        }

LABEL_31:
        sub_25AAA5378(&v25, v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_25AAAC4D8(0, *(v4 + 2) + 1, 1, v4);
        }

        v16 = *(v4 + 2);
        v15 = *(v4 + 3);
        if (v16 >= v15 >> 1)
        {
          v4 = sub_25AAAC4D8((v15 > 1), v16 + 1, 1, v4);
        }

        v5 = v10;
        *(v4 + 2) = v16 + 1;
        sub_25AAA4B4C(v24, &v4[32 * v16 + 32]);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v25);
        goto LABEL_6;
      }

LABEL_37:
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE38, &unk_25AAC5410);
      v18 = swift_allocObject();
      *&v25 = v18;
      *(v18 + 16) = 0u;
      *(v18 + 32) = 0u;
      goto LABEL_38;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

double sub_25AAAABB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25AAC45E8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  type metadata accessor for Statement();
  sub_25AAACBA4(&qword_27FA0FFB0, type metadata accessor for Statement);
  sub_25AAC4558();
  if (v19)
  {
    sub_25AAA4B4C(&v18, v20);
    sub_25AAA4B4C(v20, a3);
    return result;
  }

  sub_25AAAC454(&v18);
  if (a1 == 0x72615F64315F7361 && a2 == 0xEB00000000796172 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_25AAC5400;
    *(v9 + 56) = MEMORY[0x277D83B88];
    *(v9 + 32) = 0;
    v10 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v10);
    v11 = sub_25AAC45B8();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
LABEL_7:
    v14 = sub_25AAC45A8();
    *(a3 + 24) = v11;
    *a3 = v14;
    return result;
  }

  if (a1 == 0x72615F64325F7361 && a2 == 0xEB00000000796172 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x72616C616373 && a2 == 0xE600000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    v15 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v15);
    v11 = sub_25AAC45B8();
    v16 = *(v11 + 48);
    v17 = *(v11 + 52);
    swift_allocObject();
    goto LABEL_7;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_25AAAAFA0(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  if (*(a1 + 16) && (v3 = sub_25AAA48F0(0x6E6D756C6F63, 0xE600000000000000), (v4 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v3, v68), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEB8, &qword_25AAC5520), (swift_dynamicCast() & 1) != 0) && v70)
  {
    sub_25AAA5864(&v69, v71);
  }

  else
  {
    v72 = MEMORY[0x277D83B88];
    v73 = sub_25AAA5444();
    v71[0] = 0;
  }

  v5 = sub_25AAAA5D0();
  if (!v5)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_54:
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEA8, &unk_25AAC5760);
    v60 = v63;
    v63[3] = v59;
    *v60 = v7;
    return __swift_destroy_boxed_opaque_existential_1Tm(v71);
  }

  v6 = v5;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v74 = v7;
    v8 = v72;
    v9 = v73;
    __swift_project_boxed_opaque_existential_1Tm(v71, v72);
    v10 = *(v6 + 16);
    v11 = *(v9 + 8);
    if (sub_25AAC4928())
    {
      v12 = sub_25AAC4918();
      if (v12 >= 64)
      {
        goto LABEL_14;
      }

LABEL_21:
      if (sub_25AAC4908() >= v10)
      {
        goto LABEL_55;
      }

      goto LABEL_22;
    }

    v13 = sub_25AAC4928();
    v12 = sub_25AAC4918();
    if (v13)
    {
      if (v12 > 64)
      {
LABEL_14:
        v14 = *(v8 - 8);
        v15 = *(v14 + 64);
        MEMORY[0x28223BE20](v12);
        v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        *&v69 = v10;
        sub_25AAA54EC();
        sub_25AAC48F8();
        v18 = *(*(v11 + 32) + 8);
        v19 = sub_25AAC4668();
        (*(v14 + 8))(v17, v8);
        if ((v19 & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_22;
      }

      v64 = *(*(v11 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v66 = &v62;
      v27 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v28 = sub_25AAC4B18();
      v65 = &v62;
      v29 = *(v8 - 8);
      v30 = *(v29 + 64);
      MEMORY[0x28223BE20](v28);
      v32 = &v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25AAC4AD8();
      v33 = *(*(v11 + 32) + 8);
      v34 = sub_25AAC4668();
      (*(v29 + 8))(v32, v8);
      if (v34)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    if (v12 < 64)
    {
      goto LABEL_21;
    }

    if (!v10)
    {
      goto LABEL_55;
    }

    v20 = *(v8 - 8);
    v21 = *(v20 + 64);
    MEMORY[0x28223BE20](v12);
    v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v69 = v10;
    sub_25AAA54EC();
    sub_25AAC48F8();
    v24 = *(*(v11 + 32) + 8);
    v25 = sub_25AAC4668();
    (*(v20 + 8))(v23, v8);
    if ((v25 & 1) == 0)
    {
LABEL_55:

      sub_25AAA5558();
      swift_allocError();
      *v61 = 25;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1Tm(v71);
    }

LABEL_22:
    v36 = v72;
    v35 = v73;
    v37 = __swift_project_boxed_opaque_existential_1Tm(v71, v72);
    v38 = *(v36 - 8);
    v39 = *(v38 + 64);
    MEMORY[0x28223BE20](v37);
    v40 = &v62 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v38 + 16))(v40);
    v41 = *(v35 + 8);
    if ((sub_25AAC4928() & 1) == 0 || sub_25AAC4918() <= 64)
    {
      goto LABEL_35;
    }

    *&v69 = 0x8000000000000000;
    if (sub_25AAC4928())
    {
      v42 = sub_25AAC4918();
      if (v42 < 64)
      {
        goto LABEL_34;
      }

      v66 = &v62;
LABEL_29:
      MEMORY[0x28223BE20](v42);
      sub_25AAA54EC();
      sub_25AAC48F8();
      v44 = *(*(v41 + 32) + 8);
      v45 = sub_25AAC4668();
      result = (*(v38 + 8))(&v62 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v36);
      if (v45)
      {
        goto LABEL_59;
      }

      goto LABEL_35;
    }

    v43 = sub_25AAC4928();
    v42 = sub_25AAC4918();
    if (v43)
    {
      v66 = &v62;
      if (v42 <= 64)
      {
        v65 = *(*(v41 + 24) + 16);
        v47 = swift_getAssociatedTypeWitness();
        v64 = &v62;
        v48 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v47);
        swift_getAssociatedConformanceWitness();
        v49 = sub_25AAC4B18();
        v62 = &v62;
        MEMORY[0x28223BE20](v49);
        sub_25AAC4AD8();
        v50 = *(*(v41 + 32) + 8);
        v51 = sub_25AAC4668();
        result = (*(v38 + 8))(&v62 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v36);
        if (v51)
        {
          goto LABEL_59;
        }

LABEL_34:
        sub_25AAC4908();
        goto LABEL_35;
      }

      goto LABEL_29;
    }

    if (v42 < 64)
    {
      goto LABEL_34;
    }

LABEL_35:
    if (sub_25AAC4918() > 64 || sub_25AAC4918() == 64 && (sub_25AAC4928() & 1) == 0)
    {
      *&v69 = 0x7FFFFFFFFFFFFFFFLL;
      v52 = sub_25AAC4928();
      v53 = sub_25AAC4918();
      if (v52)
      {
        if (v53 < 65)
        {
          goto LABEL_44;
        }
      }

      else if (v53 < 64)
      {
LABEL_44:
        sub_25AAC4908();
        goto LABEL_45;
      }

      MEMORY[0x28223BE20](v53);
      sub_25AAA54EC();
      sub_25AAC48F8();
      v54 = *(*(v41 + 32) + 8);
      v55 = sub_25AAC4668();
      result = (*(v38 + 8))(&v62 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v36);
      if (v55)
      {
        goto LABEL_58;
      }
    }

LABEL_45:
    v56 = sub_25AAC4908();
    result = (*(v38 + 8))(v40, v36);
    if ((v56 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v56 >= *(v6 + 16))
    {
      goto LABEL_57;
    }

    sub_25AAA5378(v6 + 32 * v56 + 32, &v69);

    v7 = v74;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_25AAAC4D8(0, *(v7 + 2) + 1, 1, v7);
    }

    v58 = *(v7 + 2);
    v57 = *(v7 + 3);
    if (v58 >= v57 >> 1)
    {
      v7 = sub_25AAAC4D8((v57 > 1), v58 + 1, 1, v7);
    }

    *(v7 + 2) = v58 + 1;
    sub_25AAA4B4C(&v69, &v7[32 * v58 + 32]);
    v6 = sub_25AAAA5D0();
    if (!v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_25AAABA70@<X0>(char **a1@<X8>)
{
  v2 = sub_25AAAA5D0();
  if (v2)
  {
    v3 = v2;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEA8, &unk_25AAC5760);
      *&v8 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_25AAAC4D8(0, *(v4 + 2) + 1, 1, v4);
      }

      v6 = *(v4 + 2);
      v5 = *(v4 + 3);
      if (v6 >= v5 >> 1)
      {
        v4 = sub_25AAAC4D8((v5 > 1), v6 + 1, 1, v4);
      }

      *(v4 + 2) = v6 + 1;
      sub_25AAA4B4C(&v8, &v4[32 * v6 + 32]);
      v3 = sub_25AAAA5D0();
    }

    while (v3);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEA8, &unk_25AAC5760);
  a1[3] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_25AAABB98@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = sqlite3_step(*(a1 + 16));
  if (result == 100)
  {
    result = sqlite3_column_int(*(a1 + 16), 0);
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  a2[3] = MEMORY[0x277D83B88];
  *a2 = v5;
  return result;
}

uint64_t sub_25AAABC04(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AAA506C(&unk_286C19ED0);
  swift_arrayDestroy();
  v5 = sub_25AAA2D08(a1, a2, v4);

  if (v5)
  {
    return 1;
  }

  type metadata accessor for Statement();
  sub_25AAACBA4(&qword_27FA0FFB0, type metadata accessor for Statement);
  return sub_25AAC4568() & 1;
}

uint64_t sub_25AAABCD8()
{
  if (*(v0 + 176) != 1)
  {
    return *(v0 + 168);
  }

  sqlite3_reset(*(v0 + 16));
  v1 = *(sub_25AAAC920() + 16);

  sqlite3_reset(*(v0 + 16));
  result = v1;
  *(v0 + 168) = v1;
  *(v0 + 176) = 0;
  return result;
}

uint64_t sub_25AAABD34(uint64_t result)
{
  *(v1 + 168) = result;
  *(v1 + 176) = 0;
  return result;
}

void *(*sub_25AAABD40(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = sub_25AAABCD8();
  return sub_25AAABD88;
}

void *sub_25AAABD88(void *result)
{
  v1 = result[1];
  *(v1 + 168) = *result;
  *(v1 + 176) = 0;
  return result;
}

uint64_t sub_25AAABD98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FFB8, &qword_25AAC57C8);
  v1 = swift_allocObject();
  *(v1 + 16) = sub_25AAACB0C;
  *(v1 + 24) = v0;

  return v1;
}

uint64_t sub_25AAABDF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25AAAA5D0();
  v3 = result;
  if (result)
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEA8, &unk_25AAC5760);
  }

  else
  {
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  return result;
}

uint64_t sub_25AAABE68()
{
  v1 = *v0;
  v2 = sub_25AAAC920();

  return v2;
}

void *sub_25AAABEC4(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  if (!a2 || !a3)
  {
LABEL_9:
    *v4 = v3;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = sub_25AAAA5D0();
    v5 = 0;
    if (v8)
    {
      while (1)
      {
        *(a2 + 8 * v5) = v8;
        if (a3 - 1 == v5)
        {
          break;
        }

        v8 = sub_25AAAA5D0();
        ++v5;
        if (!v8)
        {
          goto LABEL_9;
        }
      }

      v5 = a3;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_25AAABFB0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_25AAAA5D0();
  *a1 = result;
  return result;
}

uint64_t sub_25AAAC000(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AAA506C(&unk_286C19ED0);
  swift_arrayDestroy();
  v5 = sub_25AAA2D08(a1, a2, v4);

  if (v5)
  {
    return 1;
  }

  type metadata accessor for Statement();
  return sub_25AAC4568() & 1;
}

uint64_t sub_25AAAC0A8()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FFB8, &qword_25AAC57C8);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_25AAACFB4;
  *(v2 + 24) = v1;

  return v2;
}

uint64_t sub_25AAAC130(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821892B0](a1, WitnessTable);
}

uint64_t static SQLite.extendMorpheus()()
{
  v0 = sub_25AAC45E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_25AAC4548();
  v2 = MEMORY[0x277D84F90];
  sub_25AAC45D8();
  sub_25AAA4A20(v2);
  v3 = sub_25AAC45B8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_25AAC45A8();
  sub_25AAC4538();
}

uint64_t sub_25AAAC2D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  ppDb[1] = *MEMORY[0x277D85DE8];
  ppDb[0] = 0;
  if (*(a1 + 16) && (v4 = sub_25AAA48F0(0x6573616261746164, 0xE800000000000000), (v5 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v4, v13), (swift_dynamicCast() & 1) != 0) && (v6 = sub_25AAC4708(), , v7 = sqlite3_open((v6 + 32), ppDb), , !v7) && (v11 = ppDb[0]) != 0)
  {
    v12 = type metadata accessor for Connection();
    result = swift_allocObject();
    *(result + 16) = v11;
    a2[3] = v12;
    *a2 = result;
  }

  else
  {
    sub_25AAA5558();
    swift_allocError();
    *v8 = 22;
    result = swift_willThrow();
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25AAAC454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE38, &unk_25AAC5410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_25AAAC4D8(char *result, int64_t a2, char a3, char *a4)
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

char *sub_25AAAC5E8(char *result, int64_t a2, char a3, char *a4)
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

size_t sub_25AAAC744(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_25AAAC920()
{
  result = sub_25AAAA5D0();
  v1 = MEMORY[0x277D84F90];
  v2 = 0;
  if (result)
  {
    v3 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      if (!v2)
      {
        v4 = v1[3];
        if (((v4 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v5 = result;
        v6 = v4 & 0xFFFFFFFFFFFFFFFELL;
        if (v6 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = v6;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FFE0, &qword_25AAC59C8);
        v8 = swift_allocObject();
        v9 = _swift_stdlib_malloc_size(v8);
        v10 = v9 - 32;
        if (v9 < 32)
        {
          v10 = v9 - 25;
        }

        v11 = v10 >> 3;
        v8[2] = v7;
        v8[3] = 2 * (v10 >> 3);
        v12 = (v8 + 4);
        v13 = v1[3] >> 1;
        if (v1[2])
        {
          if (v8 != v1 || v12 >= &v1[v13 + 4])
          {
            memmove(v8 + 4, v1 + 4, 8 * v13);
          }

          v1[2] = 0;
        }

        v3 = (v12 + 8 * v13);
        v2 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v1 = v8;
        result = v5;
      }

      v15 = __OFSUB__(v2--, 1);
      if (v15)
      {
        break;
      }

      *v3++ = result;
      result = sub_25AAAA5D0();
      if (!result)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:
  v16 = v1[3];
  if (v16 < 2)
  {
    return v1;
  }

  v17 = v16 >> 1;
  v15 = __OFSUB__(v17, v2);
  v18 = v17 - v2;
  if (!v15)
  {
    v1[2] = v18;
    return v1;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_25AAACA78()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25AAACBA4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25AAACBE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_25AAACC38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_25AAACC80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_25AAACCC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_25AAABCD8();
  *a2 = result;
  return result;
}

void *sub_25AAACCF0(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 168) = *result;
  *(v2 + 176) = 0;
  return result;
}

uint64_t sub_25AAACFB8()
{
  v0 = sub_25AAC44F8();
  __swift_allocate_value_buffer(v0, qword_27FA10AC0);
  __swift_project_value_buffer(v0, qword_27FA10AC0);
  return sub_25AAC44E8();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25AAAD0D4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_25AAC4848();
  if (!v26)
  {
    return sub_25AAC47E8();
  }

  v48 = v26;
  v52 = sub_25AAC4A68();
  v39 = sub_25AAC4A78();
  sub_25AAC4A18();
  result = sub_25AAC4838();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_25AAC4868();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_25AAC4A58();
      result = sub_25AAC4858();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25AAAD4F4()
{
  v0 = sub_25AAC45E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA100C8, &qword_25AAC5BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25AAC59E0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000025AAC6440;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D837D0];
  *(v3 + 16) = xmmword_25AAC5400;
  *(v3 + 56) = v4;
  *(v3 + 32) = 7104877;
  *(v3 + 40) = 0xE300000000000000;
  v5 = MEMORY[0x277D84F90];
  sub_25AAC45D8();
  sub_25AAA4A20(v5);
  v6 = sub_25AAC45B8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(inited + 48) = sub_25AAC45A8();
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x800000025AAC6460;
  sub_25AAC45D8();
  sub_25AAA4A20(v5);
  v9 = *(v6 + 48);
  v10 = *(v6 + 52);
  swift_allocObject();
  *(inited + 72) = sub_25AAC45A8();
  *(inited + 80) = 0x656E696172543545;
  *(inited + 88) = 0xE900000000000072;
  sub_25AAC45D8();
  sub_25AAA4A20(v5);
  v11 = *(v6 + 48);
  v12 = *(v6 + 52);
  swift_allocObject();
  *(inited + 96) = sub_25AAC45A8();
  v13 = sub_25AAA4D34(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA100D0, &qword_25AAC5BA8);
  result = swift_arrayDestroy();
  qword_27FA10AD8 = v13;
  return result;
}

uint64_t sub_25AAAD82C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25AAA48F0(1701869940, 0xE400000000000000), (v5 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v4, v21), (swift_dynamicCast() & 1) != 0) && v19 == 7498085 && v20 == 0xE300000000000000)
  {
  }

  else
  {
    v6 = sub_25AAC4AF8();

    if ((v6 & 1) == 0)
    {
      v14 = sub_25AAC4458();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      sub_25AAC4448();
      v10 = sub_25AAC4428();
      v17 = *(v10 + 48);
      v18 = *(v10 + 52);
      swift_allocObject();
      result = sub_25AAC4438();
      goto LABEL_10;
    }
  }

  v7 = sub_25AAC4458();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_25AAC4448();
  v10 = sub_25AAC4408();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  result = sub_25AAC4418();
LABEL_10:
  a2[3] = v10;
  *a2 = result;
  return result;
}

uint64_t sub_25AAAD9B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25AAC4458();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_25AAC4448();
  v5 = sub_25AAC43E8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = sub_25AAC43F8();
  a1[3] = v5;
  *a1 = result;
  return result;
}

uint64_t sub_25AAADA38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25AAA48F0(0x6570797464, 0xE500000000000000), (v5 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v4, v17), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v15;
    v7 = v16 == 0xE700000000000000;
    if (v15 == 0x363174616F6C66 && v16 == 0xE700000000000000)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0x323374616F6C66;
    v7 = 1;
  }

  if (sub_25AAC4AF8())
  {
LABEL_9:

    v8 = &unk_27FA100E8;
    v9 = &unk_25AAC5BC0;
    goto LABEL_15;
  }

  if (v6 == 0x343674616F6C66 && v7)
  {
  }

  else
  {
    v10 = sub_25AAC4AF8();

    if ((v10 & 1) == 0)
    {
      v8 = &unk_27FA100D8;
      v9 = &unk_25AAC5BB0;
      goto LABEL_15;
    }
  }

  v8 = &unk_27FA100E0;
  v9 = &unk_25AAC5BB8;
LABEL_15:
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  result = sub_25AAC4488();
  a2[3] = v11;
  *a2 = result;
  return result;
}

uint64_t static OnDeviceML.extendMorpheus()()
{
  if (qword_27FA0FE20 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v1 = qword_27FA10AD8;
    v2 = qword_27FA10AD8 + 64;
    v3 = 1 << *(qword_27FA10AD8 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(qword_27FA10AD8 + 64);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    if (v5)
    {
      break;
    }

LABEL_6:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {
      }

      v5 = *(v2 + 8 * v8);
      ++v7;
      if (v5)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

  while (1)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    v10 = (*(v1 + 48) + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    v13 = *(*(v1 + 56) + 8 * v9);
    sub_25AAC4548();

    sub_25AAC4538();
    if (v0)
    {
      break;
    }

    v5 &= v5 - 1;

    v7 = v8;
    if (!v5)
    {
      goto LABEL_6;
    }
  }
}

double EspressoMILTrainer.attribute(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_25AAC4428();
  sub_25AAC01EC(&qword_27FA0FFF0, MEMORY[0x277D413D8]);
  sub_25AAC4558();
  if (v8)
  {
    sub_25AAA4B4C(&v7, a3);
  }

  else
  {
    sub_25AAA5640(&v7, &qword_27FA0FE38, &unk_25AAC5410);
    return sub_25AAADE80(a1, a2, a3);
  }

  return result;
}

double sub_25AAADE80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25AAC45E8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  if (a1 == 0x64616F6C6E75 && a2 == 0xE600000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_25AAC5560;
    v9 = MEMORY[0x277D837D0];
    *(v8 + 32) = 0x697461756C617665;
    *(v8 + 40) = 0xEA00000000006E6FLL;
    *(v8 + 88) = v9;
    *(v8 + 56) = v9;
    *(v8 + 64) = 0x676E696E69617274;
    *(v8 + 72) = 0xE800000000000000;
    v10 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v10);
    v11 = sub_25AAC45B8();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
LABEL_9:
    v17 = sub_25AAC45A8();
    *(a3 + 24) = v11;
    *a3 = v17;
    return result;
  }

  if (a1 == 1684107116 && a2 == 0xE400000000000000 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0xD000000000000012 && 0x800000025AAC5FA0 == a2 || (sub_25AAC4AF8() & 1) != 0)
  {
    goto LABEL_8;
  }

  if (a1 == 0x657A696C616E6966 && a2 == 0xE800000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v19 = swift_allocObject();
    v19[1] = xmmword_25AAC5400;
    v19[2] = 0u;
    v19[3] = 0u;
    v20 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v20);
    v11 = sub_25AAC45B8();
    v21 = *(v11 + 48);
    v22 = *(v11 + 52);
    swift_allocObject();
    goto LABEL_9;
  }

  if (a1 == 0x5774636172747865 && a2 == 0xEE00737468676965 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x4F74636172747865 && a2 == 0xEE00737475707475 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x6E69617274 && a2 == 0xE500000000000000 || (sub_25AAC4AF8() & 1) != 0 || a1 == 1818326629 && a2 == 0xE400000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
LABEL_8:
    v14 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v14);
    v11 = sub_25AAC45B8();
    v15 = *(v11 + 48);
    v16 = *(v11 + 52);
    swift_allocObject();
    goto LABEL_9;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double sub_25AAAE658@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25AAC45E8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  if (a1 == 0x64616F6C6E75 && a2 == 0xE600000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_25AAC5560;
    v9 = MEMORY[0x277D837D0];
    *(v8 + 32) = 0x697461756C617665;
    *(v8 + 40) = 0xEA00000000006E6FLL;
    *(v8 + 88) = v9;
    *(v8 + 56) = v9;
    *(v8 + 64) = 0x676E696E69617274;
    *(v8 + 72) = 0xE800000000000000;
    v10 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v10);
    v11 = sub_25AAC45B8();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
LABEL_9:
    v17 = sub_25AAC45A8();
    *(a3 + 24) = v11;
    *a3 = v17;
    return result;
  }

  if (a1 == 1684107116 && a2 == 0xE400000000000000 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0xD000000000000012 && 0x800000025AAC5FA0 == a2 || (sub_25AAC4AF8() & 1) != 0)
  {
    goto LABEL_8;
  }

  if (a1 == 0x657A696C616E6966 && a2 == 0xE800000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v19 = swift_allocObject();
    v19[1] = xmmword_25AAC5400;
    v19[2] = 0u;
    v19[3] = 0u;
    v20 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v20);
    v11 = sub_25AAC45B8();
    v21 = *(v11 + 48);
    v22 = *(v11 + 52);
    swift_allocObject();
    goto LABEL_9;
  }

  if (a1 == 0x5774636172747865 && a2 == 0xEE00737468676965 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x4F74636172747865 && a2 == 0xEE00737475707475 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x6E69617274 && a2 == 0xE500000000000000 || (sub_25AAC4AF8() & 1) != 0 || a1 == 1818326629 && a2 == 0xE400000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
LABEL_8:
    v14 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v14);
    v11 = sub_25AAC45B8();
    v15 = *(v11 + 48);
    v16 = *(v11 + 52);
    swift_allocObject();
    goto LABEL_9;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double sub_25AAAEE30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25AAC45E8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  if (a1 == 0x64616F6C6E75 && a2 == 0xE600000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_25AAC5560;
    v9 = MEMORY[0x277D837D0];
    *(v8 + 32) = 0x697461756C617665;
    *(v8 + 40) = 0xEA00000000006E6FLL;
    *(v8 + 88) = v9;
    *(v8 + 56) = v9;
    *(v8 + 64) = 0x676E696E69617274;
    *(v8 + 72) = 0xE800000000000000;
    v10 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v10);
    v11 = sub_25AAC45B8();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
LABEL_9:
    v17 = sub_25AAC45A8();
    *(a3 + 24) = v11;
    *a3 = v17;
    return result;
  }

  if (a1 == 1684107116 && a2 == 0xE400000000000000 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0xD000000000000012 && 0x800000025AAC5FA0 == a2 || (sub_25AAC4AF8() & 1) != 0)
  {
    goto LABEL_8;
  }

  if (a1 == 0x657A696C616E6966 && a2 == 0xE800000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v19 = swift_allocObject();
    v19[1] = xmmword_25AAC5400;
    v19[2] = 0u;
    v19[3] = 0u;
    v20 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v20);
    v11 = sub_25AAC45B8();
    v21 = *(v11 + 48);
    v22 = *(v11 + 52);
    swift_allocObject();
    goto LABEL_9;
  }

  if (a1 == 0x5774636172747865 && a2 == 0xEE00737468676965 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x4F74636172747865 && a2 == 0xEE00737475707475 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x6E69617274 && a2 == 0xE500000000000000 || (sub_25AAC4AF8() & 1) != 0 || a1 == 1818326629 && a2 == 0xE400000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
LABEL_8:
    v14 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v14);
    v11 = sub_25AAC45B8();
    v15 = *(v11 + 48);
    v16 = *(v11 + 52);
    swift_allocObject();
    goto LABEL_9;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double EspressoTrainer.morpheusExtension(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v38 = a5;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = sub_25AAC45E8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  if (a1 == 0x64616F6C6E75 && a2 == 0xE600000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_25AAC5560;
    v15 = MEMORY[0x277D837D0];
    *(v14 + 32) = 0x697461756C617665;
    *(v14 + 40) = 0xEA00000000006E6FLL;
    *(v14 + 88) = v15;
    *(v14 + 56) = v15;
    *(v14 + 64) = 0x676E696E69617274;
    *(v14 + 72) = 0xE800000000000000;
    v16 = MEMORY[0x277D84F90];
    sub_25AAC45D8();
    (*(v10 + 16))(&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a3);
    v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a4;
    (*(v10 + 32))(v18 + v17, &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
    sub_25AAA4A20(v16);
    v19 = sub_25AAC45B8();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
LABEL_9:
    v27 = sub_25AAC45A8();
    v29 = v38;
    v38[3] = v19;
    *v29 = v27;
    return result;
  }

  if (a1 == 1684107116 && a2 == 0xE400000000000000 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0xD000000000000012 && 0x800000025AAC5FA0 == a2 || (sub_25AAC4AF8() & 1) != 0)
  {
    goto LABEL_8;
  }

  if (a1 == 0x657A696C616E6966 && a2 == 0xE800000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v30 = swift_allocObject();
    v30[1] = xmmword_25AAC5400;
    v30[2] = 0u;
    v30[3] = 0u;
    v31 = MEMORY[0x277D84F90];
    sub_25AAC45D8();
    (*(v10 + 16))(&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a3);
    v32 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = a3;
    *(v33 + 24) = a4;
    (*(v10 + 32))(v33 + v32, &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
    sub_25AAA4A20(v31);
    v19 = sub_25AAC45B8();
    v34 = *(v19 + 48);
    v35 = *(v19 + 52);
    swift_allocObject();
    goto LABEL_9;
  }

  if (a1 == 0x5774636172747865 && a2 == 0xEE00737468676965 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x4F74636172747865 && a2 == 0xEE00737475707475 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x6E69617274 && a2 == 0xE500000000000000 || (sub_25AAC4AF8() & 1) != 0 || a1 == 1818326629 && a2 == 0xE400000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
LABEL_8:
    v22 = MEMORY[0x277D84F90];
    sub_25AAC45D8();
    (*(v10 + 16))(&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a3);
    v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = a3;
    *(v24 + 24) = a4;
    (*(v10 + 32))(v24 + v23, &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
    sub_25AAA4A20(v22);
    v19 = sub_25AAC45B8();
    v25 = *(v19 + 48);
    v26 = *(v19 + 52);
    swift_allocObject();
    goto LABEL_9;
  }

  result = 0.0;
  v36 = v38;
  *v38 = 0u;
  *(v36 + 1) = 0u;
  return result;
}

Swift::Bool __swiftcall EspressoTrainer.has(attribute:)(Swift::String attribute)
{
  object = attribute._object;
  countAndFlagsBits = attribute._countAndFlagsBits;
  v3 = sub_25AAA506C(&unk_286C1A930);
  swift_arrayDestroy();
  LOBYTE(object) = sub_25AAA2D08(countAndFlagsBits, object, v3);

  return object & 1;
}

double EspressoEIRTrainer.attribute(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_25AAC4408();
  sub_25AAC01EC(&qword_27FA0FFF8, MEMORY[0x277D413C8]);
  sub_25AAC4558();
  if (v8)
  {
    sub_25AAA4B4C(&v7, a3);
  }

  else
  {
    sub_25AAA5640(&v7, &qword_27FA0FE38, &unk_25AAC5410);
    return sub_25AAAE658(a1, a2, a3);
  }

  return result;
}

_OWORD *sub_25AAB032C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X4>, uint64_t (*a4)(uint64_t, uint64_t)@<X5>, _OWORD *a5@<X8>)
{
  v10 = *v5;
  a3(0);
  sub_25AAC4558();
  if (v13)
  {
    return sub_25AAA4B4C(&v12, a5);
  }

  sub_25AAA5640(&v12, &qword_27FA0FE38, &unk_25AAC5410);
  return a4(a1, a2);
}

double EspressoE5Trainer.attribute(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_25AAC43E8();
  sub_25AAC01EC(&qword_27FA10000, MEMORY[0x277D413B8]);
  sub_25AAC4558();
  if (v8)
  {
    sub_25AAA4B4C(&v7, a3);
  }

  else
  {
    sub_25AAA5640(&v7, &qword_27FA0FE38, &unk_25AAC5410);
    return sub_25AAAEE30(a1, a2, a3);
  }

  return result;
}

uint64_t sub_25AAB0520(uint64_t a1)
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
    if ((swift_dynamicCast() & 1) == 0)
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
      if ((swift_dynamicCast() & 1) == 0)
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

unint64_t sub_25AAB0BB8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE70, &qword_25AAC5B10);
    v2 = sub_25AAC4AB8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5)) | (v12 << 6);
        sub_25AABFF24(*(a1 + 48) + 40 * v13, v25);
        sub_25AAA5378(*(a1 + 56) + 32 * v13, v26 + 8);
        v23[0] = v26[0];
        v23[1] = v26[1];
        v24 = v27;
        v22[0] = v25[0];
        v22[1] = v25[1];
        sub_25AABFF24(v22, v21);
        if (!swift_dynamicCast())
        {
          sub_25AAA5640(v22, &qword_27FA10030, &qword_25AAC5B18);

          goto LABEL_23;
        }

        sub_25AAA5378(v23 + 8, v21);
        sub_25AAA5640(v22, &qword_27FA10030, &qword_25AAC5B18);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_25AAA48F0(v19, v20);
        if (v14)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v19;
          v9[1] = v20;
          v11 = result;

          *(v2[7] + 8 * v11) = v19;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v15 = (v2[6] + 16 * result);
          *v15 = v19;
          v15[1] = v20;
          *(v2[7] + 8 * result) = v19;
          v16 = v2[2];
          v17 = __OFADD__(v16, 1);
          v18 = v16 + 1;
          if (v17)
          {
            goto LABEL_27;
          }

          v2[2] = v18;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_25AAB0E84(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE88, &qword_25AAC5500);
    v2 = sub_25AAC4AB8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_25AABFF24(*(a1 + 48) + 40 * v14, v27);
        sub_25AAA5378(*(a1 + 56) + 32 * v14, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_25AABFF24(v24, v23);
        if (!swift_dynamicCast())
        {
          sub_25AAA5640(v24, &qword_27FA10030, &qword_25AAC5B18);

          goto LABEL_23;
        }

        sub_25AAA5378(v25 + 8, v23);
        sub_25AAA5640(v24, &qword_27FA10030, &qword_25AAC5B18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA100A8, &qword_25AAC5B78);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_25AAA48F0(v21, v22);
        v15 = result;
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v21;
          v9[1] = v22;

          v11 = v2[7];
          v12 = *(v11 + 8 * v15);
          *(v11 + 8 * v15) = v21;

          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v21;
          v17[1] = v22;
          *(v2[7] + 8 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v2[2] = v20;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_25AAB1164(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v6 = sub_25AAC4AB8();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v10)
    {

      return v6;
    }

    v9 = *(a1 + 64 + 8 * v17);
    ++v12;
    if (v9)
    {
      while (1)
      {
        v18 = __clz(__rbit64(v9)) | (v17 << 6);
        sub_25AABFF24(*(a1 + 48) + 40 * v18, v33);
        sub_25AAA5378(*(a1 + 56) + 32 * v18, v34 + 8);
        v31[0] = v34[0];
        v31[1] = v34[1];
        v32 = v35;
        v30[0] = v33[0];
        v30[1] = v33[1];
        sub_25AABFF24(v30, v29);
        if (!swift_dynamicCast())
        {
          sub_25AAA5640(v30, &qword_27FA10030, &qword_25AAC5B18);

          goto LABEL_23;
        }

        sub_25AAA5378(v31 + 8, v29);
        sub_25AAA5640(v30, &qword_27FA10030, &qword_25AAC5B18);
        __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v9 &= v9 - 1;
        result = sub_25AAA48F0(v27, v28);
        v19 = result;
        if (v20)
        {
          v13 = (v6[6] + 16 * result);
          v14 = v13[1];
          *v13 = v27;
          v13[1] = v28;

          v15 = v6[7];
          v16 = *(v15 + 8 * v19);
          *(v15 + 8 * v19) = v27;

          v12 = v17;
          if (!v9)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v6[2] >= v6[3])
          {
            goto LABEL_26;
          }

          *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v6[6] + 16 * result);
          *v21 = v27;
          v21[1] = v28;
          *(v6[7] + 8 * result) = v27;
          v22 = v6[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_27;
          }

          v6[2] = v24;
          v12 = v17;
          if (!v9)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v17 = v12;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_25AAB1434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_25AABD758(a1, a2, a3, isUniquelyReferenced_nonNull_native, sub_25AAC382C, &qword_27FA0FE80, &qword_25AAC54F8);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_25AAA48F0(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_25AAC382C();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_25AAC3350(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_25AAB1550(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_25AAC4A28();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_25AAA5378(i, v6);
    sub_25AABFED8();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_25AAC49F8();
    v4 = *(v7 + 16);
    sub_25AAC4A38();
    sub_25AAC4A48();
    sub_25AAC4A08();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_25AAB163C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_25AABCCA0(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_25AAA5378(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25AABCCA0((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_25AAB1750(uint64_t a1)
{
  v2 = a1;
  v3 = sub_25AAB0BB8(a1);
  if (v3)
  {
    return v3;
  }

  v55[3] = v1;
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
  v57 = v2;
  v58 = v9;
  v59 = v2 + 64;
  while (v8)
  {
    v12 = v10;
LABEL_18:
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = v15 | (v12 << 6);
    sub_25AABFF24(*(v2 + 48) + 40 * v16, &v66);
    sub_25AAA5378(*(v2 + 56) + 32 * v16, v65);
    v69 = v66;
    v70 = v67;
    *&v71 = v68;
    sub_25AAA4B4C(v65, (&v71 + 8));
LABEL_19:
    v76[0] = v71;
    v76[1] = v72;
    v77 = v73;
    v74 = v69;
    v75 = v70;
    if (!*(&v70 + 1))
    {

      return v4;
    }

    sub_25AAA4B4C((v76 + 8), v65);
    v69 = v74;
    v70 = v75;
    *&v71 = *&v76[0];
    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_59:
      sub_25AAA5558();
      swift_allocError();
      *v53 = 1;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      return v4;
    }

    v17 = *(&v66 + 1);
    v78 = v66;
    sub_25AAA5378(v65, &v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEF0, &unk_25AAC5B00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      v68 = 0;
      v66 = 0u;
      v67 = 0u;

      sub_25AAA5640(&v66, &qword_27FA0FEE8, &unk_25AAC5540);
      goto LABEL_59;
    }

    v61 = v17;
    v62 = v4;
    sub_25AAA5864(&v66, &v69);
    v18 = *(&v70 + 1);
    v19 = v71;
    v20 = __swift_project_boxed_opaque_existential_1Tm(&v69, *(&v70 + 1));
    v60 = v55;
    v21 = *(*(v18 - 8) + 64);
    MEMORY[0x28223BE20](v20);
    v22 = v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v63 = v23;
    (*(v23 + 16))(v22);
    if ((sub_25AAC4928() & 1) != 0 && sub_25AAC4918() >= 65)
    {
      *&v66 = 0x8000000000000000;
      if (sub_25AAC4928())
      {
        v24 = sub_25AAC4918();
        if (v24 < 64)
        {
          goto LABEL_33;
        }

LABEL_30:
        v56 = v55;
        MEMORY[0x28223BE20](v24);
        sub_25AAA54EC();
        sub_25AAC48F8();
        v25 = *(*(v19 + 32) + 8);
        v26 = sub_25AAC4668();
        (*(v63 + 8))(v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
        v2 = v57;
        if (v26)
        {
          goto LABEL_65;
        }

        goto LABEL_36;
      }

      LODWORD(v56) = sub_25AAC4928();
      v24 = sub_25AAC4918();
      if (v56)
      {
        if (v24 > 64)
        {
          goto LABEL_30;
        }

        v56 = *(*(v19 + 24) + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v55[2] = v55;
        v28 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v55[0] = v55 - v29;
        swift_getAssociatedConformanceWitness();
        v30 = sub_25AAC4B18();
        v55[1] = v55;
        MEMORY[0x28223BE20](v30);
        sub_25AAC4AD8();
        v31 = *(*(v19 + 32) + 8);
        v32 = sub_25AAC4668();
        (*(v63 + 8))(v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
        if (v32)
        {
          goto LABEL_65;
        }

        sub_25AAC4908();
        v2 = v57;
      }

      else if (v24 < 64)
      {
LABEL_33:
        sub_25AAC4908();
      }
    }

LABEL_36:
    if (sub_25AAC4918() > 64 || sub_25AAC4918() == 64 && (sub_25AAC4928() & 1) == 0)
    {
      *&v66 = 0x7FFFFFFFFFFFFFFFLL;
      v33 = sub_25AAC4928();
      v34 = sub_25AAC4918();
      if (v33)
      {
        if (v34 <= 64)
        {
          goto LABEL_45;
        }
      }

      else if (v34 < 64)
      {
LABEL_45:
        sub_25AAC4908();
        v2 = v57;
        goto LABEL_46;
      }

      MEMORY[0x28223BE20](v34);
      sub_25AAA54EC();
      sub_25AAC48F8();
      v35 = *(*(v19 + 32) + 8);
      v36 = sub_25AAC4668();
      (*(v63 + 8))(v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
      v2 = v57;
      if (v36)
      {
        goto LABEL_64;
      }
    }

LABEL_46:
    v37 = sub_25AAC4908();
    (*(v63 + 8))(v22, v18);
    v38 = v62;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v66 = v38;
    v40 = v61;
    v41 = sub_25AAA48F0(v78, v61);
    v43 = v38[2];
    v44 = (v42 & 1) == 0;
    v45 = __OFADD__(v43, v44);
    v46 = v43 + v44;
    if (v45)
    {
      goto LABEL_62;
    }

    v47 = v42;
    if (v38[3] < v46)
    {
      sub_25AABD218(v46, isUniquelyReferenced_nonNull_native);
      v41 = sub_25AAA48F0(v78, v40);
      if ((v47 & 1) != (v48 & 1))
      {
        goto LABEL_66;
      }

LABEL_51:
      if (v47)
      {
        goto LABEL_6;
      }

      goto LABEL_52;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_51;
    }

    v52 = v41;
    sub_25AAC36B0();
    v41 = v52;
    if (v47)
    {
LABEL_6:
      v11 = v41;

      v4 = v66;
      *(*(v66 + 56) + 8 * v11) = v37;
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      goto LABEL_7;
    }

LABEL_52:
    v4 = v66;
    *(v66 + 8 * (v41 >> 6) + 64) |= 1 << v41;
    v49 = (v4[6] + 16 * v41);
    *v49 = v78;
    v49[1] = v40;
    *(v4[7] + 8 * v41) = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    v50 = v4[2];
    v45 = __OFADD__(v50, 1);
    v51 = v50 + 1;
    if (v45)
    {
      goto LABEL_63;
    }

    v4[2] = v51;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1Tm(&v69);
    v9 = v58;
    v5 = v59;
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
      v73 = 0;
      v71 = 0u;
      v72 = 0u;
      v10 = v14;
      v69 = 0u;
      v70 = 0u;
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
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  result = sub_25AAC4B28();
  __break(1u);
  return result;
}

uint64_t sub_25AAB2014@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X8>)
{
  v4 = sub_25AAC43B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v54 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v47 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v55 = v47 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v48 = v47 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v47 - v16;
  v18 = *(a1 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v51 = v11;
    v52 = a2;
    v56 = MEMORY[0x277D84F90];
    sub_25AABCD00(0, v18, 0);
    v20 = v56;
    v53 = v5 + 32;
    v21 = (a1 + 40);
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;
      v24 = v22 == 0x697461756C617665 && v23 == 0xEA00000000006E6FLL;
      if (v24 || (v25 = *(v21 - 1), v26 = *v21, (sub_25AAC4AF8() & 1) != 0))
      {
        sub_25AAC4398();
      }

      else
      {
        if (v22 != 0x676E696E69617274 || v23 != 0xE800000000000000)
        {
          sub_25AAC4AF8();
        }

        sub_25AAC43A8();
      }

      v28 = v20;
      v56 = v20;
      v30 = *(v20 + 16);
      v29 = *(v20 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_25AABCD00(v29 > 1, v30 + 1, 1);
        v28 = v56;
      }

      *(v28 + 16) = v30 + 1;
      v20 = v28;
      (*(v5 + 32))(v28 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v30, v17, v4);
      v21 += 2;
      --v18;
    }

    while (v18);
    v11 = v51;
    a2 = v52;
    v31 = v20;
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  v56 = v19;
  v32 = sub_25AAC01EC(&qword_27FA10060, MEMORY[0x277D41370]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10068, &qword_25AAC5B58);
  sub_25AAA968C(&qword_27FA10070, &qword_27FA10068, &qword_25AAC5B58);
  v33 = v48;
  v34 = v32;
  sub_25AAC4948();
  v35 = a2;
  v36 = a2;
  v37 = *(v5 + 16);
  v37(v36, v33, v4);
  v38 = *(v31 + 16);
  if (v38)
  {
    v39 = v31 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v51 = *(v5 + 72);
    v52 = v37;
    v53 = v5 + 16;
    v40 = (v5 + 8);
    v49 = v34;
    v50 = (v5 + 32);
    v47[1] = v31;
    v47[2] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v41 = v55;
    do
    {
      v42 = v52;
      v52(v41, v39, v4);
      v43 = MEMORY[0x277D41370];
      sub_25AAC01EC(&qword_27FA10078, MEMORY[0x277D41370]);
      sub_25AAC47C8();
      v44 = v43;
      v41 = v55;
      sub_25AAC01EC(&qword_27FA10080, v44);
      sub_25AAC4BA8();
      v42(v54, v41, v4);
      sub_25AAC4938();
      v45 = *v40;
      (*v40)(v41, v4);
      v45(v35, v4);
      (*v50)(v35, v11, v4);
      v39 += v51;
      --v38;
    }

    while (v38);
  }

  else
  {

    v45 = *(v5 + 8);
  }

  return (v45)(v48, v4);
}

uint64_t sub_25AAB2560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_25AAC43B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2;
  if (!*(a1 + 16) || (v13 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE900000000000073), (v14 & 1) == 0))
  {
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    goto LABEL_8;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v13, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10010, &qword_25AAC5AD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    goto LABEL_8;
  }

  if (!*(&v22 + 1))
  {
LABEL_8:
    sub_25AAA5640(&v21, &qword_27FA10008, &qword_25AAC5AD0);
    goto LABEL_9;
  }

  v19[1] = v23;
  __swift_project_boxed_opaque_existential_1Tm(&v21, *(&v22 + 1));
  v15 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  v16 = sub_25AAB163C(v15);

  if (v16)
  {
    *(a4 + 24) = MEMORY[0x277D84F78] + 8;
    sub_25AAB2014(v16, v12);

    a3(0);
    sub_25AAC4378();
    return (*(v9 + 8))(v12, v8);
  }

LABEL_9:
  sub_25AAA5558();
  swift_allocError();
  *v18 = 2;
  return swift_willThrow();
}

uint64_t sub_25AAB27C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_25AAC43B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v11 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE900000000000073), (v12 & 1) == 0))
  {
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
    goto LABEL_8;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v11, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10010, &qword_25AAC5AD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    goto LABEL_8;
  }

  v22 = a2;
  if (!*(&v20 + 1))
  {
LABEL_8:
    sub_25AAA5640(&v19, &qword_27FA10008, &qword_25AAC5AD0);
    goto LABEL_9;
  }

  v17[1] = v21;
  __swift_project_boxed_opaque_existential_1Tm(&v19, *(&v20 + 1));
  v13 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v19);
  v14 = sub_25AAB163C(v13);

  if (v14)
  {
    *(a3 + 24) = MEMORY[0x277D84F78] + 8;
    sub_25AAB2014(v14, v10);

    sub_25AAC4378();
    return (*(v7 + 8))(v10, v6);
  }

LABEL_9:
  sub_25AAA5558();
  swift_allocError();
  *v16 = 2;
  return swift_willThrow();
}

uint64_t *sub_25AAB2A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  v41 = a4;
  v8 = sub_25AAC43B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a2;
  if (!*(a1 + 16))
  {
    goto LABEL_31;
  }

  v13 = sub_25AAA48F0(1752457584, 0xE400000000000000);
  if ((v14 & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v13, &v43);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_31;
  }

  v15 = v42[1];
  if (!*(a1 + 16))
  {
    goto LABEL_29;
  }

  v39 = v42[0];
  v16 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE900000000000073);
  if ((v17 & 1) == 0)
  {
    goto LABEL_29;
  }

  v40 = v15;
  sub_25AAA5378(*(a1 + 56) + 32 * v16, v42);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10010, &qword_25AAC5AD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    goto LABEL_27;
  }

  v37 = v18;
  if (!*(&v44 + 1))
  {
LABEL_27:

LABEL_30:
    sub_25AAA5640(&v43, &qword_27FA10008, &qword_25AAC5AD0);
LABEL_31:
    sub_25AAA5558();
    swift_allocError();
    *v34 = 3;
    return swift_willThrow();
  }

  v38 = v45;
  __swift_project_boxed_opaque_existential_1Tm(&v43, *(&v44 + 1));
  v19 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v43);
  v20 = sub_25AAB163C(v19);

  if (!v20)
  {
LABEL_43:

    goto LABEL_31;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_28;
  }

  v38 = v20;
  v21 = sub_25AAA48F0(0x737475706E69, 0xE600000000000000);
  if ((v22 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v21, v42);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    goto LABEL_33;
  }

  if (!*(&v44 + 1))
  {
LABEL_33:

    goto LABEL_27;
  }

  v36 = v45;
  __swift_project_boxed_opaque_existential_1Tm(&v43, *(&v44 + 1));
  v23 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v43);
  v24 = sub_25AAB163C(v23);

  if (!v24)
  {
LABEL_42:

    goto LABEL_43;
  }

  if (!*(a1 + 16) || (v36 = v24, v25 = sub_25AAA48F0(0x7374757074756FLL, 0xE700000000000000), (v26 & 1) == 0))
  {

LABEL_28:

LABEL_29:

    v43 = 0u;
    v44 = 0u;
    v45 = 0;
    goto LABEL_30;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v25, v42);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    goto LABEL_36;
  }

  if (!*(&v44 + 1))
  {
LABEL_36:

    goto LABEL_27;
  }

  v35[1] = v45;
  __swift_project_boxed_opaque_existential_1Tm(&v43, *(&v44 + 1));
  v27 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v43);
  v28 = sub_25AAB163C(v27);

  if (!v28)
  {
LABEL_41:

    goto LABEL_42;
  }

  if (!*(a1 + 16) || (v29 = sub_25AAA48F0(0x73746867696577, 0xE700000000000000), (v30 & 1) == 0))
  {

    goto LABEL_29;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v29, v42);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    goto LABEL_39;
  }

  if (!*(&v44 + 1))
  {
LABEL_39:

    goto LABEL_36;
  }

  v37 = v45;
  __swift_project_boxed_opaque_existential_1Tm(&v43, *(&v44 + 1));
  v31 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v43);
  v32 = sub_25AAB163C(v31);

  if (!v32)
  {

    goto LABEL_41;
  }

  v41[3] = MEMORY[0x277D84F78] + 8;
  sub_25AAB2014(v38, v12);

  a3(0);
  sub_25AAC4358();
  (*(v9 + 8))(v12, v8);

  if (!v4)
  {
  }

  return __swift_deallocate_boxed_opaque_existential_0(v41);
}

uint64_t *sub_25AAB3050@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = a2;
  v4 = sub_25AAC43B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_30;
  }

  v9 = sub_25AAA48F0(1752457584, 0xE400000000000000);
  if ((v10 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v9, &v37);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_30;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

  v34 = v36[0];
  v35 = v36[1];
  v11 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE900000000000073);
  if ((v12 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v11, v36);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10010, &qword_25AAC5AD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    goto LABEL_28;
  }

  if (!*(&v38 + 1))
  {
LABEL_28:

    goto LABEL_29;
  }

  v31 = *(&v38 + 1);
  v32 = v39;
  __swift_project_boxed_opaque_existential_1Tm(&v37, *(&v38 + 1));
  v13 = sub_25AAC4588();
  v32 = v13;
  __swift_destroy_boxed_opaque_existential_1Tm(&v37);
  v14 = sub_25AAB163C(v13);

  v32 = v14;
  if (!v14)
  {
LABEL_43:

    goto LABEL_30;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_37;
  }

  v15 = sub_25AAA48F0(0x737475706E69, 0xE600000000000000);
  if ((v16 & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v15, v36);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    goto LABEL_32;
  }

  if (!*(&v38 + 1))
  {
LABEL_32:

    goto LABEL_28;
  }

  v30 = *(&v38 + 1);
  v31 = v39;
  __swift_project_boxed_opaque_existential_1Tm(&v37, *(&v38 + 1));
  v17 = sub_25AAC4588();
  v31 = v17;
  __swift_destroy_boxed_opaque_existential_1Tm(&v37);
  v18 = sub_25AAB163C(v17);

  v31 = v18;
  if (!v18)
  {
LABEL_42:

    goto LABEL_43;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_36;
  }

  v19 = sub_25AAA48F0(0x7374757074756FLL, 0xE700000000000000);
  if ((v20 & 1) == 0)
  {
    goto LABEL_36;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v19, v36);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    goto LABEL_34;
  }

  if (!*(&v38 + 1))
  {
LABEL_34:

    goto LABEL_28;
  }

  v29[1] = *(&v38 + 1);
  v30 = v39;
  __swift_project_boxed_opaque_existential_1Tm(&v37, *(&v38 + 1));
  v21 = sub_25AAC4588();
  v30 = v21;
  __swift_destroy_boxed_opaque_existential_1Tm(&v37);
  v22 = sub_25AAB163C(v21);

  v30 = v22;
  if (!v22)
  {
LABEL_41:

    goto LABEL_42;
  }

  if (!*(a1 + 16) || (v23 = sub_25AAA48F0(0x73746867696577, 0xE700000000000000), (v24 & 1) == 0))
  {

LABEL_36:

LABEL_37:

LABEL_26:

    v37 = 0u;
    v38 = 0u;
    v39 = 0;
LABEL_29:
    sub_25AAA5640(&v37, &qword_27FA10008, &qword_25AAC5AD0);
LABEL_30:
    sub_25AAA5558();
    swift_allocError();
    *v28 = 3;
    return swift_willThrow();
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v23, v36);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    goto LABEL_39;
  }

  if (!*(&v38 + 1))
  {
LABEL_39:

    goto LABEL_34;
  }

  v33 = v39;
  __swift_project_boxed_opaque_existential_1Tm(&v37, *(&v38 + 1));
  v25 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v37);
  v26 = sub_25AAB163C(v25);

  v33 = v26;
  if (!v26)
  {

    goto LABEL_41;
  }

  v40[3] = MEMORY[0x277D84F78] + 8;
  sub_25AAB2014(v32, v8);

  sub_25AAC4358();
  (*(v5 + 8))(v8, v4);

  if (!v2)
  {
  }

  return __swift_deallocate_boxed_opaque_existential_0(v40);
}

uint64_t *sub_25AAB3654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  v24 = a2;
  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

  v8 = sub_25AAA48F0(1752457584, 0xE400000000000000);
  if ((v9 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v8, &v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

  v10 = sub_25AAA48F0(0x737475706E69, 0xE600000000000000);
  if ((v11 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v10, &v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10010, &qword_25AAC5AD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    goto LABEL_17;
  }

  if (!*(&v22 + 1))
  {
LABEL_17:

LABEL_20:
    sub_25AAA5640(&v21, &qword_27FA10008, &qword_25AAC5AD0);
LABEL_21:
    sub_25AAA5558();
    swift_allocError();
    *v19 = 4;
    return swift_willThrow();
  }

  __swift_project_boxed_opaque_existential_1Tm(&v21, *(&v22 + 1));
  v12 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  v13 = sub_25AAB163C(v12);

  if (!v13)
  {
LABEL_26:

    goto LABEL_21;
  }

  if (!*(a1 + 16) || (v14 = sub_25AAA48F0(0x7374757074756FLL, 0xE700000000000000), (v15 & 1) == 0))
  {

LABEL_19:

    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    goto LABEL_20;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v14, &v20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    goto LABEL_24;
  }

  if (!*(&v22 + 1))
  {
LABEL_24:

    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1Tm(&v21, *(&v22 + 1));
  v16 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  v17 = sub_25AAB163C(v16);

  if (!v17)
  {

    goto LABEL_26;
  }

  a4[3] = MEMORY[0x277D84F78] + 8;
  a3(0);
  sub_25AAC4338();

  if (v4)
  {
    return __swift_deallocate_boxed_opaque_existential_0(a4);
  }

  return result;
}

uint64_t sub_25AAB398C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_22;
  }

  v5 = sub_25AAA48F0(1752457584, 0xE400000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v5, &v18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_20;
  }

  v7 = sub_25AAA48F0(0x737475706E69, 0xE600000000000000);
  if ((v8 & 1) == 0)
  {
    goto LABEL_20;
  }

  v21 = v17[1];
  sub_25AAA5378(*(a1 + 56) + 32 * v7, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10010, &qword_25AAC5AD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_18;
  }

  if (!*(&v19 + 1))
  {
LABEL_18:

LABEL_21:
    sub_25AAA5640(&v18, &qword_27FA10008, &qword_25AAC5AD0);
LABEL_22:
    sub_25AAA5558();
    swift_allocError();
    *v16 = 4;
    return swift_willThrow();
  }

  __swift_project_boxed_opaque_existential_1Tm(&v18, *(&v19 + 1));
  v9 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v18);
  v10 = sub_25AAB163C(v9);

  if (!v10)
  {
LABEL_26:

    goto LABEL_22;
  }

  if (!*(a1 + 16) || (v11 = sub_25AAA48F0(0x7374757074756FLL, 0xE700000000000000), (v12 & 1) == 0))
  {

LABEL_20:

    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    goto LABEL_21;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v11, v17);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_24;
  }

  if (!*(&v19 + 1))
  {
LABEL_24:

    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1Tm(&v18, *(&v19 + 1));
  v13 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v18);
  v14 = sub_25AAB163C(v13);

  if (!v14)
  {

    goto LABEL_26;
  }

  a2[3] = MEMORY[0x277D84F78] + 8;
  sub_25AAC4338();
  if (v2)
  {
    __swift_deallocate_boxed_opaque_existential_0(a2);
  }
}

uint64_t sub_25AAB3CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  v62 = a2;
  if (!*(a1 + 16) || (v8 = sub_25AAA48F0(0x7A69536863746162, 0xE900000000000065), (v9 & 1) == 0))
  {
    v56 = 0u;
    v57 = 0u;
    v58 = 0;
    goto LABEL_12;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v8, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEF0, &unk_25AAC5B00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v58 = 0;
    v56 = 0u;
    v57 = 0u;
    goto LABEL_12;
  }

  if (!*(&v57 + 1))
  {
LABEL_12:
    sub_25AAA5640(&v56, &qword_27FA0FEE8, &unk_25AAC5540);
    sub_25AAA5558();
    swift_allocError();
    *v19 = 5;
    return swift_willThrow();
  }

  sub_25AAA5864(&v56, v59);
  if (!*(a1 + 16) || (v10 = sub_25AAA48F0(0x676E696E7261656CLL, 0xEC00000065746152), (v11 & 1) == 0))
  {
    v18 = 0;
    v56 = 0u;
    v57 = 0u;
    v58 = 0;
LABEL_15:
    v51 = 1;
    goto LABEL_16;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v10, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10098, &qword_25AAC5B70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = 0;
    v58 = 0;
    v56 = 0u;
    v57 = 0u;
    goto LABEL_15;
  }

  if (!*(&v57 + 1))
  {
    v18 = 0;
    goto LABEL_15;
  }

  result = sub_25AAC0234(&v56, v54);
  v13 = v55;
  if (!v55)
  {
LABEL_45:
    __break(1u);
    return result;
  }

  v14 = __swift_project_boxed_opaque_existential_1Tm(v54, v55);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  (*(v17 + 16))(v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25AAC02A4();
  sub_25AAC45F8();
  v18 = v53;
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  v51 = 0;
LABEL_16:
  a4[3] = MEMORY[0x277D84F78] + 8;
  v20 = v60;
  v21 = v61;
  v22 = __swift_project_boxed_opaque_existential_1Tm(v59, v60);
  v50 = v46;
  v23 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v48 = v24;
  v25 = v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v26;
  (*(v26 + 16))(v25);
  if ((sub_25AAC4928() & 1) != 0 && sub_25AAC4918() >= 65)
  {
    v54[0] = 0x8000000000000000;
    if (sub_25AAC4928())
    {
      v27 = sub_25AAC4918();
      if (v27 >= 64)
      {
        v49 = v18;
LABEL_24:
        v47 = v46;
        MEMORY[0x28223BE20](v27);
        v29 = v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25AAA54EC();
        sub_25AAC48F8();
        v30 = *(*(v21 + 32) + 8);
        v31 = sub_25AAC4668();
        result = (*(v52 + 8))(v29, v20);
        v18 = v49;
        if (v31)
        {
          goto LABEL_44;
        }

        goto LABEL_31;
      }

LABEL_27:
      sub_25AAC4908();
      goto LABEL_31;
    }

    LODWORD(v49) = sub_25AAC4928();
    v27 = sub_25AAC4918();
    if (v49)
    {
      v49 = v18;
      if (v27 <= 64)
      {
        v47 = *(*(v21 + 24) + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v46[3] = v46;
        v33 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v46[1] = v46 - v34;
        swift_getAssociatedConformanceWitness();
        v35 = sub_25AAC4B18();
        v46[2] = v46;
        MEMORY[0x28223BE20](v35);
        v37 = v46 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25AAC4AD8();
        v38 = *(*(v21 + 32) + 8);
        v39 = sub_25AAC4668();
        result = (*(v52 + 8))(v37, v20);
        if (v39)
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        sub_25AAC4908();
        v18 = v49;
        goto LABEL_31;
      }

      goto LABEL_24;
    }

    if (v27 < 64)
    {
      goto LABEL_27;
    }
  }

LABEL_31:
  if (sub_25AAC4918() <= 64)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v49 = v18;
    v54[0] = 0x7FFFFFFFFFFFFFFFLL;
    v40 = sub_25AAC4928();
    v41 = sub_25AAC4918();
    if ((v40 & 1) == 0)
    {
      break;
    }

    if (v41 <= 64)
    {
      goto LABEL_40;
    }

LABEL_34:
    v47 = v46;
    MEMORY[0x28223BE20](v41);
    v43 = v46 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAA54EC();
    sub_25AAC48F8();
    v44 = *(*(v21 + 32) + 8);
    v45 = sub_25AAC4668();
    (*(v52 + 8))(v43, v20);
    v18 = v49;
    if (v45)
    {
      __break(1u);
LABEL_36:
      if (sub_25AAC4918() == 64 && (sub_25AAC4928() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_41;
  }

  if (v41 >= 64)
  {
    goto LABEL_34;
  }

LABEL_40:
  sub_25AAC4908();
LABEL_41:
  sub_25AAC4908();
  (*(v52 + 8))(v25, v20);
  a3(0);
  LOBYTE(v54[0]) = v51;
  sub_25AAC4388();
  if (v4)
  {
    __swift_deallocate_boxed_opaque_existential_0(a4);
  }

  sub_25AAA5640(&v56, &qword_27FA10090, &qword_25AAC5B68);
  return __swift_destroy_boxed_opaque_existential_1Tm(v59);
}

uint64_t sub_25AAB4550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  if (!*(a1 + 16) || (v7 = sub_25AAA48F0(0x7A69536863746162, 0xE900000000000065), (v8 & 1) == 0))
  {
    v62 = 0u;
    v63 = 0u;
    v64 = 0;
    goto LABEL_12;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v7, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEF0, &unk_25AAC5B00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    goto LABEL_12;
  }

  if (!*(&v63 + 1))
  {
LABEL_12:
    sub_25AAA5640(&v62, &qword_27FA0FEE8, &unk_25AAC5540);
    sub_25AAA5558();
    swift_allocError();
    *v19 = 5;
    return swift_willThrow();
  }

  sub_25AAA5864(&v62, v65);
  v9 = *(a1 + 16);
  v58 = a2;
  if (!v9 || (v10 = sub_25AAA48F0(0x676E696E7261656CLL, 0xEC00000065746152), (v11 & 1) == 0))
  {
    v18 = 0;
    v62 = 0u;
    v63 = 0u;
    v64 = 0;
LABEL_15:
    v68 = 1;
    goto LABEL_16;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v10, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10098, &qword_25AAC5B70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = 0;
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    goto LABEL_15;
  }

  if (!*(&v63 + 1))
  {
    v18 = 0;
    goto LABEL_15;
  }

  result = sub_25AAC0234(&v62, v60);
  v13 = v61;
  if (!v61)
  {
LABEL_46:
    __break(1u);
    return result;
  }

  v14 = __swift_project_boxed_opaque_existential_1Tm(v60, v61);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  (*(v17 + 16))(v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25AAC02A4();
  sub_25AAC45F8();
  v18 = v69;
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  v68 = 0;
LABEL_16:
  a3[3] = MEMORY[0x277D84F78] + 8;
  v20 = v66;
  v21 = v67;
  v22 = __swift_project_boxed_opaque_existential_1Tm(v65, v66);
  v57 = v53;
  v23 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v55 = v24;
  v25 = v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v26;
  (*(v26 + 16))(v25);
  if ((sub_25AAC4928() & 1) != 0 && sub_25AAC4918() > 64)
  {
    v60[0] = 0x8000000000000000;
    if (sub_25AAC4928())
    {
      v27 = sub_25AAC4918();
      if (v27 >= 64)
      {
        v54 = v53;
        MEMORY[0x28223BE20](v27);
        v56 = v18;
        v29 = v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25AAA54EC();
        sub_25AAC48F8();
        v30 = *(*(v21 + 32) + 8);
        v31 = sub_25AAC4668();
        v32 = v29;
        v18 = v56;
        result = (*(v59 + 8))(v32, v20);
        if (v31)
        {
          goto LABEL_45;
        }

        goto LABEL_32;
      }

      goto LABEL_28;
    }

    v56 = v18;
    v33 = sub_25AAC4928();
    v34 = sub_25AAC4918();
    if (v33)
    {
      if (v34 <= 64)
      {
        v54 = *(*(v21 + 24) + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v53[2] = v53;
        v40 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v53[0] = v53 - v41;
        swift_getAssociatedConformanceWitness();
        v42 = sub_25AAC4B18();
        v53[1] = v53;
        MEMORY[0x28223BE20](v42);
        v44 = v53 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25AAC4AD8();
        v45 = *(*(v21 + 32) + 8);
        v46 = sub_25AAC4668();
        result = (*(v59 + 8))(v44, v20);
        if (v46)
        {
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        sub_25AAC4908();
        v18 = v56;
      }

      else
      {
        v54 = v53;
        MEMORY[0x28223BE20](v34);
        v36 = v53 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25AAA54EC();
        sub_25AAC48F8();
        v37 = *(*(v21 + 32) + 8);
        v38 = sub_25AAC4668();
        result = (*(v59 + 8))(v36, v20);
        v18 = v56;
        if (v38)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_32;
    }

    v18 = v56;
    if (v34 < 64)
    {
LABEL_28:
      sub_25AAC4908();
    }
  }

LABEL_32:
  if (sub_25AAC4918() <= 64)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v56 = v18;
    v60[0] = 0x7FFFFFFFFFFFFFFFLL;
    v47 = sub_25AAC4928();
    v48 = sub_25AAC4918();
    if ((v47 & 1) == 0)
    {
      break;
    }

    if (v48 < 65)
    {
      goto LABEL_41;
    }

LABEL_35:
    v54 = v53;
    MEMORY[0x28223BE20](v48);
    v50 = v53 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAA54EC();
    sub_25AAC48F8();
    v51 = *(*(v21 + 32) + 8);
    v52 = sub_25AAC4668();
    (*(v59 + 8))(v50, v20);
    v18 = v56;
    if (v52)
    {
      __break(1u);
LABEL_37:
      if (sub_25AAC4918() == 64 && (sub_25AAC4928() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_42;
  }

  if (v48 >= 64)
  {
    goto LABEL_35;
  }

LABEL_41:
  sub_25AAC4908();
LABEL_42:
  sub_25AAC4908();
  (*(v59 + 8))(v25, v20);
  LOBYTE(v60[0]) = v68;
  sub_25AAC4388();
  if (v3)
  {
    __swift_deallocate_boxed_opaque_existential_0(a3);
  }

  sub_25AAA5640(&v62, &qword_27FA10090, &qword_25AAC5B68);
  return __swift_destroy_boxed_opaque_existential_1Tm(v65);
}

uint64_t sub_25AAB4E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  v9 = sub_25AAC43B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a2;
  if (*(a1 + 16) && (v14 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE800000000000000), (v15 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v14, v28), (swift_dynamicCast() & 1) != 0))
  {
    v24 = a4;
    v16 = v26;
    v25 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FFE8, &unk_25AAC59D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25AAC5400;
    *(inited + 32) = v16;
    v18 = inited + 32;
    *(inited + 40) = v25;
    sub_25AAB2014(inited, v13);
    swift_setDeallocating();
    sub_25AAA93C0(v18);
    a3(0);
    v19 = sub_25AAC4328();
    if (v4)
    {
      return (*(v10 + 8))(v13, v9);
    }

    else
    {
      v22 = v19;
      (*(v10 + 8))(v13, v9);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA100A8, &qword_25AAC5B78);
      v23 = v24;
      v24[3] = result;
      *v23 = v22;
    }
  }

  else
  {
    sub_25AAA5558();
    swift_allocError();
    *v21 = 6;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25AAB50C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_25AAC43B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v10 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE800000000000000), (v11 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v10, v23), (swift_dynamicCast() & 1) != 0))
  {
    v24 = v21;
    v19 = a2;
    v20 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FFE8, &unk_25AAC59D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25AAC5400;
    *(inited + 32) = v24;
    v13 = inited + 32;
    *(inited + 40) = v20;
    sub_25AAB2014(inited, v9);
    swift_setDeallocating();
    sub_25AAA93C0(v13);
    v14 = sub_25AAC4328();
    if (v2)
    {
      return (*(v6 + 8))(v9, v5);
    }

    else
    {
      v17 = v14;
      (*(v6 + 8))(v9, v5);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA100A8, &qword_25AAC5B78);
      v18 = v19;
      v19[3] = result;
      *v18 = v17;
    }
  }

  else
  {
    sub_25AAA5558();
    swift_allocError();
    *v16 = 6;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25AAB5304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_25AAC43B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a2;
  if (*(a1 + 16) && (v13 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE800000000000000), (v14 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v13, v25), (swift_dynamicCast() & 1) != 0))
  {
    v21 = v24;
    v22 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FFE8, &unk_25AAC59D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25AAC5400;
    v16 = v21;
    *(inited + 32) = v22;
    v17 = inited + 32;
    *(inited + 40) = v16;
    sub_25AAB2014(inited, v12);
    swift_setDeallocating();
    sub_25AAA93C0(v17);
    a3(0);
    v18 = sub_25AAC4318();
    (*(v9 + 8))(v12, v8);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA100B0, &unk_25AAC5B80);
    a4[3] = result;
    *a4 = v18;
  }

  else
  {
    sub_25AAA5558();
    swift_allocError();
    *v20 = 7;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25AAB5524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = sub_25AAC43B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v11 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE800000000000000), (v12 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v11, v22), (swift_dynamicCast() & 1) != 0))
  {
    v23 = v20;
    v19 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FFE8, &unk_25AAC59D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25AAC5400;
    v18 = a2;
    *(inited + 32) = v23;
    v14 = inited + 32;
    *(inited + 40) = v19;
    sub_25AAB2014(inited, v10);
    swift_setDeallocating();
    sub_25AAA93C0(v14);
    v15 = sub_25AAC4318();
    (*(v7 + 8))(v10, v6);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA100B0, &unk_25AAC5B80);
    a3[3] = result;
    *a3 = v15;
  }

  else
  {
    sub_25AAA5558();
    swift_allocError();
    *v17 = 7;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25AAB5740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v110 = a3;
  v10 = sub_25AAC4308();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = a2;
  if (!*(a1 + 16))
  {
    goto LABEL_28;
  }

  v15 = sub_25AAA48F0(0x737475706E69, 0xE600000000000000);
  if ((v16 & 1) == 0)
  {
    goto LABEL_28;
  }

  v108 = a4;
  v109 = v11;
  sub_25AAA5378(*(a1 + 56) + 32 * v15, &v115);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10020, &qword_25AAC5AE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v120 = 0;
    v118 = 0u;
    v119 = 0u;
    goto LABEL_29;
  }

  if (!*(&v119 + 1))
  {
LABEL_29:
    v32 = &unk_27FA10018;
    v33 = &unk_25AAC5AE0;
    v34 = &v118;
LABEL_30:
    sub_25AAA5640(v34, v32, v33);
LABEL_31:
    sub_25AAA5558();
    swift_allocError();
    *v35 = 8;
    return swift_willThrow();
  }

  v107 = a5;
  __swift_project_boxed_opaque_existential_1Tm(&v118, *(&v119 + 1));
  v17 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v118);
  if (!*(a1 + 16) || (v18 = sub_25AAA48F0(0x5365727574616566, 0xEC00000073657A69), (v19 & 1) == 0))
  {

LABEL_28:
    v118 = 0u;
    v119 = 0u;
    v120 = 0;
    goto LABEL_29;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v18, &v115);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v120 = 0;
    v118 = 0u;
    v119 = 0u;
    goto LABEL_33;
  }

  if (!*(&v119 + 1))
  {
LABEL_33:

    goto LABEL_29;
  }

  v106 = v17;
  __swift_project_boxed_opaque_existential_1Tm(&v118, *(&v119 + 1));
  v20 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v118);
  if (!*(a1 + 16) || (v21 = sub_25AAA48F0(0x6C706D61536D756ELL, 0xEA00000000007365), (v22 & 1) == 0))
  {

    v115 = 0u;
    v116 = 0u;
    v117 = 0;
LABEL_37:
    v32 = &qword_27FA0FEE8;
    v33 = &unk_25AAC5540;
    v34 = &v115;
    goto LABEL_30;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v21, &v112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEF0, &unk_25AAC5B00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v117 = 0;
    v115 = 0u;
    v116 = 0u;
    goto LABEL_36;
  }

  if (!*(&v116 + 1))
  {
LABEL_36:

    goto LABEL_37;
  }

  sub_25AAA5864(&v115, &v118);
  if (!*(a1 + 16) || (v23 = sub_25AAA48F0(0x7368636F7065, 0xE600000000000000), (v24 & 1) == 0))
  {

    v112 = 0u;
    v113 = 0u;
    v114 = 0;
LABEL_41:
    sub_25AAA5640(&v112, &qword_27FA0FEE8, &unk_25AAC5540);
LABEL_42:
    __swift_destroy_boxed_opaque_existential_1Tm(&v118);
    goto LABEL_31;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v23, v111);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v114 = 0;
    v112 = 0u;
    v113 = 0u;
    goto LABEL_40;
  }

  if (!*(&v113 + 1))
  {
LABEL_40:

    goto LABEL_41;
  }

  sub_25AAA5864(&v112, &v115);
  if (!*(a1 + 16))
  {
    goto LABEL_45;
  }

  v25 = sub_25AAA48F0(0x4D656C6666756873, 0xED0000646F687465);
  if ((v26 & 1) == 0)
  {
    goto LABEL_45;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v25, &v112);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_45;
  }

  v27 = v111[1];
  if (!*(a1 + 16) || (v28 = v111[0], v29 = sub_25AAA48F0(0x637461426C6C7566, 0xE900000000000068), (v30 & 1) == 0) || (sub_25AAA5378(*(a1 + 56) + 32 * v29, &v112), (swift_dynamicCast() & 1) == 0))
  {

LABEL_45:

    __swift_destroy_boxed_opaque_existential_1Tm(&v115);
    goto LABEL_42;
  }

  v104 = LOBYTE(v111[0]);
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

  (*(v109 + 104))(v14, *v31, v10);
  v107[3] = MEMORY[0x277D84F78] + 8;
  v105 = sub_25AAB0520(v106);
  if (v5)
  {
    (*(v109 + 8))(v14, v10);

    v38 = &v122;
    goto LABEL_50;
  }

  v102 = sub_25AAB1750(v20);
  v106 = 0;

  v41 = *(&v119 + 1);
  v40 = v120;
  v42 = __swift_project_boxed_opaque_existential_1Tm(&v118, *(&v119 + 1));
  v103 = v96;
  v43 = *(v41 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  v101 = v45;
  v46 = v96 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v43 + 16))(v46);
  if ((sub_25AAC4928() & 1) == 0 || sub_25AAC4918() < 65)
  {
    goto LABEL_65;
  }

  *&v112 = 0x8000000000000000;
  if (sub_25AAC4928())
  {
    v47 = sub_25AAC4918();
    if (v47 < 64)
    {
      goto LABEL_64;
    }

    goto LABEL_59;
  }

  v48 = sub_25AAC4928();
  v47 = sub_25AAC4918();
  if (v48)
  {
    if (v47 <= 64)
    {
      v98 = *(*(v40 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v100 = v96;
      v54 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v55 = sub_25AAC4B18();
      v99 = v96;
      MEMORY[0x28223BE20](v55);
      v57 = v96 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25AAC4AD8();
      v58 = *(*(v40 + 32) + 8);
      v59 = sub_25AAC4668();
      result = (*(v43 + 8))(v57, v41);
      if (v59)
      {
LABEL_90:
        __break(1u);
        return result;
      }

      goto LABEL_64;
    }

LABEL_59:
    MEMORY[0x28223BE20](v47);
    v50 = v96 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAA54EC();
    sub_25AAC48F8();
    v51 = *(*(v40 + 32) + 8);
    v52 = sub_25AAC4668();
    result = (*(v43 + 8))(v50, v41);
    if (v52)
    {
      goto LABEL_90;
    }

    goto LABEL_65;
  }

  if (v47 < 64)
  {
LABEL_64:
    sub_25AAC4908();
  }

LABEL_65:
  if (sub_25AAC4918() <= 64)
  {
    goto LABEL_70;
  }

  while (1)
  {
    *&v112 = 0x7FFFFFFFFFFFFFFFLL;
    v60 = sub_25AAC4928();
    v61 = sub_25AAC4918();
    if ((v60 & 1) == 0)
    {
      break;
    }

    if (v61 <= 64)
    {
      goto LABEL_74;
    }

LABEL_68:
    MEMORY[0x28223BE20](v61);
    v63 = v96 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAA54EC();
    sub_25AAC48F8();
    v64 = *(*(v40 + 32) + 8);
    v65 = sub_25AAC4668();
    (*(v43 + 8))(v63, v41);
    if (v65)
    {
      __break(1u);
LABEL_70:
      if (sub_25AAC4918() == 64 && (sub_25AAC4928() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_75;
  }

  if (v61 >= 64)
  {
    goto LABEL_68;
  }

LABEL_74:
  sub_25AAC4908();
LABEL_75:
  v100 = sub_25AAC4908();
  (*(v43 + 8))(v46, v41);
  v67 = *(&v116 + 1);
  v66 = v117;
  v68 = __swift_project_boxed_opaque_existential_1Tm(&v115, *(&v116 + 1));
  v99 = v96;
  v69 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v98 = v70;
  v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
  v72 = v96 - v71;
  v101 = v73;
  (*(v73 + 16))(v96 - v71);
  v103 = v66;
  if (sub_25AAC4928())
  {
    v74 = *(v103[3] + 16);
    v75 = swift_getAssociatedTypeWitness();
    v97 = v96;
    v76 = (*(*(v75 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v75);
    swift_getAssociatedConformanceWitness();
    v77 = sub_25AAC4B18();
    v96[1] = v96;
    MEMORY[0x28223BE20](v77);
    sub_25AAC4AD8();
    v78 = *(v103[4] + 8);
    v79 = sub_25AAC4678();
    result = (*(v101 + 8))(v96 - v71, v67);
    if ((v79 & 1) == 0)
    {
      __break(1u);
      goto LABEL_90;
    }
  }

  if (sub_25AAC4918() < 32)
  {
    goto LABEL_86;
  }

  LODWORD(v112) = -1;
  v80 = sub_25AAC4928();
  v81 = sub_25AAC4918();
  if ((v80 & 1) == 0)
  {
    if (v81 <= 32)
    {
      goto LABEL_85;
    }

LABEL_83:
    MEMORY[0x28223BE20](v81);
    v91 = v96 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AABFF80();
    v92 = v103;
    sub_25AAC48F8();
    v93 = *(v92[4] + 8);
    v94 = sub_25AAC4668();
    (*(v101 + 8))(v91, v67);
    if ((v94 & 1) == 0)
    {
      goto LABEL_86;
    }

    __break(1u);
    goto LABEL_85;
  }

  if (v81 > 32)
  {
    goto LABEL_83;
  }

  v82 = *(v103[3] + 16);
  v83 = swift_getAssociatedTypeWitness();
  v97 = v96;
  v84 = (*(*(v83 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v83);
  swift_getAssociatedConformanceWitness();
  v85 = sub_25AAC4B18();
  MEMORY[0x28223BE20](v85);
  v87 = v96 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AAC4AD8();
  v88 = *(v103[4] + 8);
  v89 = sub_25AAC4658();
  (*(v101 + 8))(v87, v67);
  if (v89)
  {
LABEL_85:
    sub_25AAC4908();
  }

LABEL_86:
  sub_25AAC4908();
  (*(v101 + 8))(v72, v67);
  v110(0);
  v95 = v106;
  sub_25AAC4368();
  if (v95)
  {
    (*(v109 + 8))(v14, v10);

    v38 = &v121;
LABEL_50:
    v39 = *(v38 - 32);

    __swift_deallocate_boxed_opaque_existential_0(v107);
  }

  else
  {
    (*(v109 + 8))(v14, v10);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v115);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v118);
}

uint64_t sub_25AAB68F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v117 = a2;
  v10 = sub_25AAC4308();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_28;
  }

  v15 = sub_25AAA48F0(0x737475706E69, 0xE600000000000000);
  if ((v16 & 1) == 0)
  {
    goto LABEL_28;
  }

  v105 = a3;
  v106 = a4;
  sub_25AAA5378(*(a1 + 56) + 32 * v15, &v111);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10020, &qword_25AAC5AE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v116 = 0;
    v114 = 0u;
    v115 = 0u;
    goto LABEL_29;
  }

  v104 = v11;
  if (!*(&v115 + 1))
  {
LABEL_29:
    v31 = &unk_27FA10018;
    v32 = &unk_25AAC5AE0;
    v33 = &v114;
LABEL_30:
    sub_25AAA5640(v33, v31, v32);
LABEL_31:
    sub_25AAA5558();
    swift_allocError();
    *v34 = 8;
    return swift_willThrow();
  }

  v103 = a5;
  __swift_project_boxed_opaque_existential_1Tm(&v114, *(&v115 + 1));
  v17 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v114);
  if (!*(a1 + 16) || (v18 = sub_25AAA48F0(0x5365727574616566, 0xEC00000073657A69), (v19 & 1) == 0))
  {

LABEL_28:
    v114 = 0u;
    v115 = 0u;
    v116 = 0;
    goto LABEL_29;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v18, &v111);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v116 = 0;
    v114 = 0u;
    v115 = 0u;
    goto LABEL_33;
  }

  if (!*(&v115 + 1))
  {
LABEL_33:

    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1Tm(&v114, *(&v115 + 1));
  v20 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v114);
  if (!*(a1 + 16) || (v21 = sub_25AAA48F0(0x6C706D61536D756ELL, 0xEA00000000007365), (v22 & 1) == 0))
  {

    v111 = 0u;
    v112 = 0u;
    v113 = 0;
LABEL_37:
    v31 = &qword_27FA0FEE8;
    v32 = &unk_25AAC5540;
    v33 = &v111;
    goto LABEL_30;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v21, &v108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEF0, &unk_25AAC5B00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v113 = 0;
    v111 = 0u;
    v112 = 0u;
    goto LABEL_36;
  }

  if (!*(&v112 + 1))
  {
LABEL_36:

    goto LABEL_37;
  }

  sub_25AAA5864(&v111, &v114);
  if (!*(a1 + 16) || (v23 = sub_25AAA48F0(0x7368636F7065, 0xE600000000000000), (v24 & 1) == 0))
  {

    v108 = 0u;
    v109 = 0u;
    v110 = 0;
LABEL_41:
    sub_25AAA5640(&v108, &qword_27FA0FEE8, &unk_25AAC5540);
LABEL_42:
    __swift_destroy_boxed_opaque_existential_1Tm(&v114);
    goto LABEL_31;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v23, v107);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v110 = 0;
    v108 = 0u;
    v109 = 0u;
    goto LABEL_40;
  }

  if (!*(&v109 + 1))
  {
LABEL_40:

    goto LABEL_41;
  }

  sub_25AAA5864(&v108, &v111);
  if (!*(a1 + 16))
  {
    goto LABEL_44;
  }

  v25 = sub_25AAA48F0(0x4D656C6666756873, 0xED0000646F687465);
  if ((v26 & 1) == 0)
  {
    goto LABEL_44;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v25, &v108);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_44;
  }

  v27 = v107[1];
  if (!*(a1 + 16) || (v102 = v107[0], v28 = sub_25AAA48F0(0x637461426C6C7566, 0xE900000000000068), (v29 & 1) == 0) || (sub_25AAA5378(*(a1 + 56) + 32 * v28, &v108), (swift_dynamicCast() & 1) == 0))
  {

LABEL_44:

    __swift_destroy_boxed_opaque_existential_1Tm(&v111);
    goto LABEL_42;
  }

  v101 = LOBYTE(v107[0]);
  if (v102 == 0x6D6F646E6172 && v27 == 0xE600000000000000)
  {

    v30 = MEMORY[0x277D41358];
  }

  else
  {
    v36 = sub_25AAC4AF8();

    v30 = MEMORY[0x277D41360];
    if (v36)
    {
      v30 = MEMORY[0x277D41358];
    }
  }

  (*(v104 + 104))(v14, *v30, v10);
  v103[3] = MEMORY[0x277D84F78] + 8;
  v102 = sub_25AABDFB8(v17);
  if (v5)
  {
    goto LABEL_48;
  }

  v98 = sub_25AABEC14(v20);
  v100 = 0;

  v38 = *(&v115 + 1);
  v37 = v116;
  v39 = __swift_project_boxed_opaque_existential_1Tm(&v114, *(&v115 + 1));
  v97 = v92;
  v40 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v96 = v41;
  v42 = v92 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v43;
  (*(v43 + 16))(v42);
  v44 = v37;
  if ((sub_25AAC4928() & 1) == 0 || sub_25AAC4918() <= 64)
  {
    goto LABEL_63;
  }

  *&v108 = 0x8000000000000000;
  if (sub_25AAC4928())
  {
    v45 = sub_25AAC4918();
    if (v45 < 64)
    {
      goto LABEL_62;
    }

    goto LABEL_57;
  }

  v46 = sub_25AAC4928();
  v45 = sub_25AAC4918();
  if (v46)
  {
    if (v45 <= 64)
    {
      v94 = v44;
      v51 = *(*(v44 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v95 = v92;
      v53 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v54 = sub_25AAC4B18();
      v93 = v92;
      MEMORY[0x28223BE20](v54);
      v56 = v92 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25AAC4AD8();
      v57 = *(*(v94 + 32) + 8);
      v58 = sub_25AAC4668();
      result = (*(v99 + 8))(v56, v38);
      if (v58)
      {
LABEL_87:
        __break(1u);
        return result;
      }

      goto LABEL_62;
    }

LABEL_57:
    MEMORY[0x28223BE20](v45);
    v48 = v92 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAA54EC();
    sub_25AAC48F8();
    v49 = *(*(v44 + 32) + 8);
    v50 = sub_25AAC4668();
    result = (*(v99 + 8))(v48, v38);
    if (v50)
    {
      goto LABEL_87;
    }

    goto LABEL_63;
  }

  if (v45 < 64)
  {
LABEL_62:
    sub_25AAC4908();
  }

LABEL_63:
  if (sub_25AAC4918() <= 64)
  {
    goto LABEL_68;
  }

  while (1)
  {
    *&v108 = 0x7FFFFFFFFFFFFFFFLL;
    v59 = sub_25AAC4928();
    v60 = sub_25AAC4918();
    if ((v59 & 1) == 0)
    {
      break;
    }

    if (v60 < 65)
    {
      goto LABEL_72;
    }

LABEL_66:
    MEMORY[0x28223BE20](v60);
    v62 = v92 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAA54EC();
    sub_25AAC48F8();
    v63 = *(*(v44 + 32) + 8);
    v64 = sub_25AAC4668();
    (*(v99 + 8))(v62, v38);
    if (v64)
    {
      __break(1u);
LABEL_68:
      if (sub_25AAC4918() == 64 && (sub_25AAC4928() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_73;
  }

  if (v60 >= 64)
  {
    goto LABEL_66;
  }

LABEL_72:
  sub_25AAC4908();
LABEL_73:
  v96 = sub_25AAC4908();
  (*(v99 + 8))(v42, v38);
  v66 = *(&v112 + 1);
  v65 = v113;
  v67 = __swift_project_boxed_opaque_existential_1Tm(&v111, *(&v112 + 1));
  v95 = v92;
  v68 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v94 = v69;
  v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  v97 = v71;
  (*(v71 + 16))(v92 - v70);
  v99 = v65;
  if (sub_25AAC4928())
  {
    v72 = *(*(v99 + 24) + 16);
    v73 = swift_getAssociatedTypeWitness();
    v93 = v92;
    v74 = (*(*(v73 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v73);
    swift_getAssociatedConformanceWitness();
    v75 = sub_25AAC4B18();
    v92[1] = v92;
    MEMORY[0x28223BE20](v75);
    sub_25AAC4AD8();
    v76 = *(*(v99 + 32) + 8);
    LOBYTE(v72) = sub_25AAC4678();
    result = (v97[1])(v92 - v70, v66);
    if ((v72 & 1) == 0)
    {
      __break(1u);
      goto LABEL_87;
    }
  }

  if (sub_25AAC4918() <= 31)
  {
    goto LABEL_84;
  }

  LODWORD(v108) = -1;
  v77 = sub_25AAC4928();
  v78 = sub_25AAC4918();
  if ((v77 & 1) == 0)
  {
    if (v78 < 33)
    {
      goto LABEL_83;
    }

LABEL_81:
    MEMORY[0x28223BE20](v78);
    v87 = v92 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AABFF80();
    v88 = v99;
    sub_25AAC48F8();
    v89 = *(*(v88 + 32) + 8);
    v90 = sub_25AAC4668();
    (v97[1])(v87, v66);
    if ((v90 & 1) == 0)
    {
      goto LABEL_84;
    }

    __break(1u);
    goto LABEL_83;
  }

  if (v78 > 32)
  {
    goto LABEL_81;
  }

  v79 = *(*(v99 + 24) + 16);
  v80 = swift_getAssociatedTypeWitness();
  v93 = v92;
  v81 = (*(*(v80 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v80);
  swift_getAssociatedConformanceWitness();
  v82 = sub_25AAC4B18();
  MEMORY[0x28223BE20](v82);
  v84 = v92 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AAC4AD8();
  v85 = *(*(v99 + 32) + 8);
  LOBYTE(v79) = sub_25AAC4658();
  (v97[1])(v84, v66);
  if (v79)
  {
LABEL_83:
    sub_25AAC4908();
  }

LABEL_84:
  sub_25AAC4908();
  (v97[1])(v92 - v70, v66);
  v91 = v100;
  sub_25AAC4368();
  if (v91)
  {
LABEL_48:
    (*(v104 + 8))(v14, v10);

    __swift_deallocate_boxed_opaque_existential_0(v103);
    goto LABEL_49;
  }

  (*(v104 + 8))(v14, v10);

LABEL_49:
  __swift_destroy_boxed_opaque_existential_1Tm(&v111);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v114);
}

uint64_t sub_25AAB7AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  v70 = a2;
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v8 = sub_25AAA48F0(0x737475706E69, 0xE600000000000000);
  if ((v9 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v8, &v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10020, &qword_25AAC5AE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v69 = 0;
    v67 = 0u;
    v68 = 0u;
    goto LABEL_18;
  }

  if (!*(&v68 + 1))
  {
LABEL_18:
    v17 = &unk_27FA10018;
    v18 = &unk_25AAC5AE0;
    v19 = &v67;
LABEL_19:
    sub_25AAA5640(v19, v17, v18);
    sub_25AAA5558();
    swift_allocError();
    *v20 = 9;
    return swift_willThrow();
  }

  v62 = a4;
  __swift_project_boxed_opaque_existential_1Tm(&v67, *(&v68 + 1));
  v10 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v67);
  if (!*(a1 + 16) || (v11 = sub_25AAA48F0(0x5365727574616566, 0xEC00000073657A69), (v12 & 1) == 0))
  {

LABEL_17:
    v67 = 0u;
    v68 = 0u;
    v69 = 0;
    goto LABEL_18;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v11, &v64);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v69 = 0;
    v67 = 0u;
    v68 = 0u;
    goto LABEL_21;
  }

  if (!*(&v68 + 1))
  {
LABEL_21:

    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1Tm(&v67, *(&v68 + 1));
  v13 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v67);
  if (!*(a1 + 16) || (v14 = sub_25AAA48F0(0x6C706D61536D756ELL, 0xEA00000000007365), (v15 & 1) == 0))
  {

    v64 = 0u;
    v65 = 0u;
    v66 = 0;
LABEL_25:
    v17 = &qword_27FA0FEE8;
    v18 = &unk_25AAC5540;
    v19 = &v64;
    goto LABEL_19;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v14, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEF0, &unk_25AAC5B00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    goto LABEL_24;
  }

  if (!*(&v65 + 1))
  {
LABEL_24:

    goto LABEL_25;
  }

  sub_25AAA5864(&v64, &v67);
  v16 = sub_25AAB0520(v10);
  if (v4)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(&v67);
  }

  v61 = v16;

  v59 = sub_25AAB1750(v13);

  v22 = *(&v68 + 1);
  v23 = v69;
  v24 = __swift_project_boxed_opaque_existential_1Tm(&v67, *(&v68 + 1));
  v25 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v58 = v26;
  v27 = v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v28;
  (*(v28 + 16))(v27);
  if ((sub_25AAC4928() & 1) == 0 || sub_25AAC4918() < 65)
  {
    goto LABEL_40;
  }

  v57 = v55;
  *&v64 = 0x8000000000000000;
  if (sub_25AAC4928())
  {
    v29 = sub_25AAC4918();
    if (v29 >= 64)
    {
      MEMORY[0x28223BE20](v29);
      v31 = v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25AAA54EC();
      sub_25AAC48F8();
      v32 = *(*(v23 + 32) + 8);
      v33 = sub_25AAC4668();
      result = (*(v60 + 8))(v31, v22);
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  v34 = sub_25AAC4928();
  v35 = sub_25AAC4918();
  if (v34)
  {
    if (v35 > 64)
    {
      v56 = v55;
      MEMORY[0x28223BE20](v35);
      v37 = v55 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25AAA54EC();
      sub_25AAC48F8();
      v38 = *(*(v23 + 32) + 8);
      v33 = sub_25AAC4668();
      result = (*(v60 + 8))(v37, v22);
LABEL_34:
      if (v33)
      {
        goto LABEL_52;
      }

      goto LABEL_40;
    }

    v55[1] = *(*(v23 + 24) + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v56 = v55;
    v40 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    v41 = sub_25AAC4B18();
    v55[2] = v55;
    MEMORY[0x28223BE20](v41);
    v43 = v55 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAC4AD8();
    v44 = *(*(v23 + 32) + 8);
    v45 = sub_25AAC4668();
    result = (*(v60 + 8))(v43, v22);
    if (v45)
    {
LABEL_52:
      __break(1u);
      return result;
    }

    goto LABEL_39;
  }

  if (v35 < 64)
  {
LABEL_39:
    sub_25AAC4908();
  }

LABEL_40:
  if (sub_25AAC4918() <= 64)
  {
    goto LABEL_45;
  }

  while (1)
  {
    *&v64 = 0x7FFFFFFFFFFFFFFFLL;
    v46 = sub_25AAC4928();
    v47 = sub_25AAC4918();
    if ((v46 & 1) == 0)
    {
      break;
    }

    if (v47 <= 64)
    {
      goto LABEL_49;
    }

LABEL_43:
    v57 = v55;
    MEMORY[0x28223BE20](v47);
    v49 = v55 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAA54EC();
    sub_25AAC48F8();
    v50 = *(*(v23 + 32) + 8);
    v51 = sub_25AAC4668();
    (*(v60 + 8))(v49, v22);
    if (v51)
    {
      __break(1u);
LABEL_45:
      if (sub_25AAC4918() == 64 && (sub_25AAC4928() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_50;
  }

  if (v47 >= 64)
  {
    goto LABEL_43;
  }

LABEL_49:
  sub_25AAC4908();
LABEL_50:
  sub_25AAC4908();
  (*(v60 + 8))(v27, v22);
  a3(0);
  v52 = sub_25AAC4348();

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA100C0, &qword_25AAC5B98);
  v54 = v62;
  v62[3] = v53;
  *v54 = v52;
  return __swift_destroy_boxed_opaque_existential_1Tm(&v67);
}