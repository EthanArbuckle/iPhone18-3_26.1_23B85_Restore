uint64_t sub_247BE21D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  v61 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E1C0, &qword_247BFC710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v52 = &v49 - v7;
  v8 = sub_247BF5F30();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v8);
  v50 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E1C8, &unk_247BFC718);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v49 - v13;
  v15 = sub_247BF5EC0();
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v51 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v49 - v25;
  MEMORY[0x28223BE20](v24);
  v57 = v3;
  v28 = *(v3 + 24);
  if (v28[16] == 1 && ((*(v19 + 16))(&v49 - v27, v61, a2), (swift_dynamicCast() & 1) != 0))
  {
    v29 = v59[0];
    v30 = v59[1];
    v31 = sub_247BF5E70();
    v60 = sub_247BC3818(0, &qword_27EE5E1E8, 0x277CBEA90);
    v59[0] = v31;
    sub_247BE2054(v59);
    sub_247BC2AC4(v29, v30);
  }

  else
  {
    if (v28[17] == 1)
    {
      (*(v19 + 16))(v26, v61, a2);
      v32 = swift_dynamicCast();
      v33 = v55;
      v34 = *(v55 + 56);
      if (v32)
      {
        v34(v14, 0, 1, v15);
        v35 = v51;
        (*(v33 + 32))(v51, v14, v15);
        v36 = sub_247BF5EA0();
        v60 = sub_247BC3818(0, &qword_27EE5E1E0, 0x277CBEAA8);
        v59[0] = v36;
        sub_247BE2054(v59);
        (*(v33 + 8))(v35, v15);
        return __swift_destroy_boxed_opaque_existential_1Tm(v59);
      }

      v34(v14, 1, 1, v15);
      sub_247B9CAD0(v14, &qword_27EE5E1C8, &unk_247BFC718);
    }

    if (v28[18] == 1)
    {
      (*(v19 + 16))(v23, v61, a2);
      v37 = v52;
      v38 = v54;
      v39 = swift_dynamicCast();
      v40 = v53;
      v41 = *(v53 + 56);
      if (v39)
      {
        v41(v37, 0, 1, v38);
        v42 = v50;
        (*(v40 + 32))(v50, v37, v38);
        v43 = sub_247BF5EE0();
        v60 = sub_247BC3818(0, &qword_27EE5E1D8, 0x277CCAD78);
        v59[0] = v43;
        sub_247BE2054(v59);
        (*(v40 + 8))(v42, v38);
        return __swift_destroy_boxed_opaque_existential_1Tm(v59);
      }

      v41(v37, 1, 1, v38);
      sub_247B9CAD0(v37, &qword_27EE5E1C0, &qword_247BFC710);
    }

    type metadata accessor for _CUDictionaryEncoder();
    v44 = swift_allocObject();
    v45 = MEMORY[0x277D84F90];
    *(v44 + 32) = 0u;
    *(v44 + 48) = 0u;
    v46 = MEMORY[0x277D84F98];
    *(v44 + 64) = 0;
    *(v44 + 72) = v46;
    *(v44 + 16) = v45;
    *(v44 + 24) = v28;

    v47 = v58;
    _CUDictionaryEncoder.encode<A>(_:)(v61, a2, v56, v59);

    if (v47)
    {
      return result;
    }

    sub_247BE2054(v59);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v59);
}

uint64_t sub_247BE27E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_247B9CAD0(v0 + 32, &unk_27EE5DDB0, &unk_247BFA900);

  return swift_deallocClassInstance();
}

uint64_t sub_247BE2840()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  v4[3] = sub_247BC3818(0, &qword_27EE5E220, 0x277CBEB68);
  v4[0] = v2;
  sub_247BE2054(v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_247BE28CC(char a1)
{
  v2 = *v1;
  v4[3] = MEMORY[0x277D839B0];
  LOBYTE(v4[0]) = a1;
  sub_247BE2054(v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_247BE291C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5[3] = MEMORY[0x277D837D0];
  v5[0] = a1;
  v5[1] = a2;

  sub_247BE2054(v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_247BE2974(double a1)
{
  v2 = *v1;
  v4[3] = MEMORY[0x277D839F8];
  *v4 = a1;
  sub_247BE2054(v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_247BE29C4(float a1)
{
  v2 = *v1;
  v4[3] = MEMORY[0x277D83A90];
  *v4 = a1;
  sub_247BE2054(v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_247BE2AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v7[3] = a4;
  v7[0] = a1;
  sub_247BE2054(v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_247BE2B5C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v7[3] = a4;
  LOBYTE(v7[0]) = a1;
  sub_247BE2054(v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_247BE2BC4(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v7[3] = a4;
  LOWORD(v7[0]) = a1;
  sub_247BE2054(v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_247BE2C2C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v7[3] = a4;
  LODWORD(v7[0]) = a1;
  sub_247BE2054(v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_247BE2CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v11[3] = a5;
  v9 = swift_allocObject();
  v11[0] = v9;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_247BE2054(v11);
  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t sub_247BE2D50@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_247BE6744(v3 + 32, a1);
}

uint64_t sub_247BE2DAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v3;
  v54 = *v2;
  v6 = *(v54 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v52 = &v47 - v9;
  swift_beginAccess();
  v10 = v2[4];

  v53 = v6;
  v11 = sub_247BF66F0();

  if (v11 < 0)
  {
    goto LABEL_33;
  }

  v48 = a2;
  swift_beginAccess();
  if (!v11)
  {
    v13 = MEMORY[0x277D84F98];
LABEL_28:
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E1F8, &qword_247BFCD20);
    v46 = v48;
    v48[3] = result;
    *v46 = v13;
    return result;
  }

  v51 = v2;
  v12 = 0;
  v50 = (v7 + 8);
  v13 = MEMORY[0x277D84F98];
  v14 = 32;
  v49 = v11;
  while (1)
  {
    v17 = v4;
    v18 = v51;
    swift_beginAccess();
    v19 = v18[4];
    v20 = v52;
    v21 = v53;
    sub_247BF6730();
    swift_endAccess();
    v22 = *(v54 + 88);
    v23 = sub_247BF7590();
    v25 = v24;
    (*v50)(v20, v21);
    v58[0] = v23;
    v58[1] = v25;
    sub_247BF6C70();
    v26 = v18[5];
    if (v12 >= *(v26 + 16))
    {
      break;
    }

    sub_247B9C53C(v26 + v14, v58);
    v27 = v59;
    v28 = v60;
    __swift_project_boxed_opaque_existential_1(v58, v59);
    (*(v28 + 8))(&v56, v27, v28);
    v4 = v17;
    if (v17)
    {
      sub_247BC5A5C(v61);

      return __swift_destroy_boxed_opaque_existential_1Tm(v58);
    }

    if (!v57)
    {
      sub_247B9CAD0(&v56, &unk_27EE5DDB0, &unk_247BFA900);
      v38 = sub_247BBEADC(v61);
      if (v39)
      {
        v40 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = v13;
        v16 = v49;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_247BE6188();
          v13 = v62;
        }

        sub_247BC5A5C(v13[6] + 40 * v40);
        sub_247B9471C((v13[7] + 32 * v40), v55);
        sub_247BBF224(v40, v13);
        sub_247BC5A5C(v61);
      }

      else
      {
        sub_247BC5A5C(v61);
        memset(v55, 0, sizeof(v55));
        v16 = v49;
      }

      sub_247B9CAD0(v55, &unk_27EE5DDB0, &unk_247BFA900);
      goto LABEL_6;
    }

    sub_247B9471C(&v56, v55);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v13;
    v31 = sub_247BBEADC(v61);
    v32 = v13[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_31;
    }

    v35 = v30;
    if (v13[3] >= v34)
    {
      if (v29)
      {
        v13 = v62;
        if ((v30 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        sub_247BE6188();
        v13 = v62;
        if ((v35 & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      sub_247BE5ED0(v34, v29);
      v36 = sub_247BBEADC(v61);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_34;
      }

      v31 = v36;
      v13 = v62;
      if ((v35 & 1) == 0)
      {
LABEL_21:
        v13[(v31 >> 6) + 8] |= 1 << v31;
        sub_247BC5AB0(v61, v13[6] + 40 * v31);
        sub_247B9471C(v55, (v13[7] + 32 * v31));
        sub_247BC5A5C(v61);
        v42 = v13[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_32;
        }

        v13[2] = v44;
        goto LABEL_5;
      }
    }

    v15 = (v13[7] + 32 * v31);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    sub_247B9471C(v55, v15);
    sub_247BC5A5C(v61);
LABEL_5:
    v16 = v49;
LABEL_6:
    ++v12;
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    v14 += 40;
    if (v16 == v12)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_247BF73C0();
  __break(1u);
  return result;
}

uint64_t sub_247BE32CC(uint64_t a1)
{
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC68, &unk_247BFCD40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_247BFA840;
  sub_247B9C53C(a1, inited + 32);

  sub_247BE632C(inited);
  return v3;
}

uint64_t sub_247BE3354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v23[1] = a2;
  v5 = *v2;
  v6 = *(v5 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = v23 - v9;
  v11 = type metadata accessor for _CUDictionaryEncoder.KeyedContainer();
  v12 = v3[3];
  v25[3] = v6;
  v25[4] = *(v5 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
  v14 = *(v7 + 16);
  v14(boxed_opaque_existential_0, a1, v6);

  v15 = sub_247BE32CC(v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  v16 = sub_247BE1D28(v12, v15);
  v14(v10, a1, v6);
  swift_beginAccess();
  sub_247BF6720();
  sub_247BF6700();
  swift_endAccess();
  swift_beginAccess();
  v17 = v3[5];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[5] = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_247BE6564(0, v17[2] + 1, 1, v17, &qword_27EE5E208, &qword_247BFCD30, &qword_27EE5E210, &qword_247BFCD38);
    v3[5] = v17;
  }

  v19 = v17[2];
  v20 = v17[3];
  if (v19 >= v20 >> 1)
  {
    v22 = v17[2];
    v17 = sub_247BE6564((v20 > 1), v19 + 1, 1, v17, &qword_27EE5E208, &qword_247BFCD30, &qword_27EE5E210, &qword_247BFCD38);
    v19 = v22;
    v3[5] = v17;
  }

  v24 = v16;
  sub_247BE66AC(v19, &v24, v3 + 5, v11, &off_2859CF250);
  v3[5] = v17;
  swift_endAccess();
  v25[0] = v16;
  swift_getWitnessTable();
  return sub_247BF6FB0();
}

uint64_t sub_247BE3628@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v23 - v8;
  v10 = v2[3];
  v26 = v5;
  v27 = *(v11 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v25);
  v13 = *(v6 + 16);
  v13(boxed_opaque_existential_0, a1, v5);

  v14 = sub_247BE32CC(&v25);
  __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  v15 = type metadata accessor for _CUDictionaryEncoder.SingleValueContainer();
  v16 = swift_allocObject();
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 16) = v14;
  *(v16 + 24) = v10;
  v13(v9, a1, v5);
  swift_beginAccess();
  sub_247BF6720();
  sub_247BF6700();
  swift_endAccess();
  swift_beginAccess();
  v17 = v3[5];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[5] = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_247BE6564(0, v17[2] + 1, 1, v17, &qword_27EE5E208, &qword_247BFCD30, &qword_27EE5E210, &qword_247BFCD38);
    v3[5] = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_247BE6564((v19 > 1), v20 + 1, 1, v17, &qword_27EE5E208, &qword_247BFCD30, &qword_27EE5E210, &qword_247BFCD38);
  }

  v26 = v15;
  v27 = &off_2859CF240;
  *&v25 = v16;
  v17[2] = v20 + 1;
  sub_247B93B4C(&v25, &v17[5 * v20 + 4]);
  v3[5] = v17;
  swift_endAccess();
  v21 = v24;
  v24[3] = v15;
  result = sub_247BE2010(&qword_27EE61380, type metadata accessor for _CUDictionaryEncoder.SingleValueContainer);
  v21[4] = result;
  *v21 = v16;
  return result;
}

uint64_t sub_247BE3904@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v24 - v8;
  v10 = v2[3];
  v27 = v5;
  v28 = *(v11 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v26);
  v13 = *(v6 + 16);
  v13(boxed_opaque_existential_0, a1, v5);

  v14 = sub_247BE32CC(&v26);
  __swift_destroy_boxed_opaque_existential_1Tm(&v26);
  v15 = type metadata accessor for _CUDictionaryEncoder.UnkeyedContainer();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D84F90];
  v16[3] = v10;
  v16[4] = v17;
  v16[2] = v14;
  v13(v9, a1, v5);
  swift_beginAccess();
  sub_247BF6720();
  sub_247BF6700();
  swift_endAccess();
  swift_beginAccess();
  v18 = v3[5];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[5] = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_247BE6564(0, v18[2] + 1, 1, v18, &qword_27EE5E208, &qword_247BFCD30, &qword_27EE5E210, &qword_247BFCD38);
    v3[5] = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_247BE6564((v20 > 1), v21 + 1, 1, v18, &qword_27EE5E208, &qword_247BFCD30, &qword_27EE5E210, &qword_247BFCD38);
  }

  v27 = v15;
  v28 = &off_2859CF230;
  *&v26 = v16;
  v18[2] = v21 + 1;
  sub_247B93B4C(&v26, &v18[5 * v21 + 4]);
  v3[5] = v18;
  swift_endAccess();
  v22 = v25;
  v25[3] = v15;
  result = sub_247BE2010(qword_27EE61388, type metadata accessor for _CUDictionaryEncoder.UnkeyedContainer);
  v22[4] = result;
  *v22 = v16;
  return result;
}

uint64_t sub_247BE3C88(uint64_t a1, uint64_t a2)
{
  sub_247BE3628(a2, v3);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_247BF7240();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_247BE3D20(uint64_t a1)
{
  sub_247BE3628(a1, v2);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_247BF7270();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t sub_247BE3D8C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_247BE3E0C(char a1, uint64_t a2)
{
  v5 = a1;
  v3 = *v2;
  return sub_247BE3C88(&v5, a2);
}

uint64_t sub_247BE3E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[1] = a2;
  v6[0] = a1;
  v4 = *v3;
  return sub_247BE3C88(v6, a3);
}

uint64_t sub_247BE3E94(uint64_t a1, double a2)
{
  v5 = a2;
  v3 = *v2;
  return sub_247BE3C88(&v5, a1);
}

uint64_t sub_247BE3ED4(uint64_t a1, float a2)
{
  v5 = a2;
  v3 = *v2;
  return sub_247BE3C88(&v5, a1);
}

uint64_t sub_247BE3F14(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v3 = *v2;
  return sub_247BE3C88(&v5, a2);
}

uint64_t sub_247BE3F50(char a1, uint64_t a2)
{
  v5 = a1;
  v3 = *v2;
  return sub_247BE3C88(&v5, a2);
}

uint64_t sub_247BE3F8C(__int16 a1, uint64_t a2)
{
  v5 = a1;
  v3 = *v2;
  return sub_247BE3C88(&v5, a2);
}

uint64_t sub_247BE3FC8(int a1, uint64_t a2)
{
  v5 = a1;
  v3 = *v2;
  return sub_247BE3C88(&v5, a2);
}

uint64_t sub_247BE4004(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v3 = *v2;
  return sub_247BE3C88(&v5, a2);
}

uint64_t sub_247BE4058(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v3 = *v2;
  return sub_247BE3C88(&v5, a2);
}

uint64_t sub_247BE4094(char a1, uint64_t a2)
{
  v5 = a1;
  v3 = *v2;
  return sub_247BE3C88(&v5, a2);
}

uint64_t sub_247BE40D0(__int16 a1, uint64_t a2)
{
  v5 = a1;
  v3 = *v2;
  return sub_247BE3C88(&v5, a2);
}

uint64_t sub_247BE410C(int a1, uint64_t a2)
{
  v5 = a1;
  v3 = *v2;
  return sub_247BE3C88(&v5, a2);
}

uint64_t sub_247BE4148(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v3 = *v2;
  return sub_247BE3C88(&v5, a2);
}

uint64_t sub_247BE4558@<X0>(char **a1@<X8>)
{
  v20 = a1;
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = v3 + 32;
    v8 = MEMORY[0x277D84F90];
    while (v6 < *(v3 + 16))
    {
      sub_247B9C53C(v7, v17);
      v9 = v18;
      v10 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      (*(v10 + 8))(&v14, v9, v10);
      if (v2)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      if (!v15)
      {

        sub_247B9CAD0(&v14, &unk_27EE5DDB0, &unk_247BFA900);
        type metadata accessor for CUError();
        CUError.__allocating_init(_:_:_:)(-6762, 0xD000000000000012, 0x8000000247C01B30, 0);
        return swift_willThrow();
      }

      sub_247B9471C(&v14, v16);
      sub_247B9B1AC(v16, &v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_247BE6454(0, *(v8 + 2) + 1, 1, v8);
      }

      v12 = *(v8 + 2);
      v11 = *(v8 + 3);
      if (v12 >= v11 >> 1)
      {
        v8 = sub_247BE6454((v11 > 1), v12 + 1, 1, v8);
      }

      ++v6;
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      *(v8 + 2) = v12 + 1;
      result = sub_247B9471C(&v14, &v8[32 * v12 + 32]);
      v7 += 40;
      if (v4 == v6)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_13:

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E228, &qword_247BFCD58);
    v13 = v20;
    v20[3] = result;
    *v13 = v8;
  }

  return result;
}

uint64_t sub_247BE47A0()
{
  v1 = v0;
  v2 = type metadata accessor for _CUDictionaryEncoder.KeyedContainer();
  v5 = v0 + 16;
  v3 = *(v0 + 16);
  v4 = *(v5 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC68, &unk_247BFCD40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_247BFA840;
  swift_beginAccess();
  v7 = *(*(v1 + 32) + 16);
  *(inited + 56) = &type metadata for _CUDictionaryEncoder.UnkeyedContainer.Index;
  *(inited + 64) = sub_247BE681C();
  *(inited + 32) = v7;
  *(inited + 40) = 0;
  v16 = v3;

  sub_247BE632C(inited);
  v8 = sub_247BE1D28(v4, v3);
  swift_beginAccess();
  v9 = *(v1 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 32) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_247BE6564(0, v9[2] + 1, 1, v9, &qword_27EE5E208, &qword_247BFCD30, &qword_27EE5E210, &qword_247BFCD38);
    *(v1 + 32) = v9;
  }

  v11 = v9[2];
  v12 = v9[3];
  if (v11 >= v12 >> 1)
  {
    v14 = v9[2];
    v9 = sub_247BE6564((v12 > 1), v11 + 1, 1, v9, &qword_27EE5E208, &qword_247BFCD30, &qword_27EE5E210, &qword_247BFCD38);
    v11 = v14;
    *(v1 + 32) = v9;
  }

  v15 = v8;
  sub_247BE66AC(v11, &v15, (v1 + 32), v2, &off_2859CF250);
  *(v1 + 32) = v9;
  swift_endAccess();
  v16 = v8;
  swift_getWitnessTable();
  return sub_247BF6FB0();
}

uint64_t sub_247BE49C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v6 = v1 + 16;
  v4 = *(v1 + 16);
  v5 = *(v6 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC68, &unk_247BFCD40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_247BFA840;
  swift_beginAccess();
  v8 = *(*(v2 + 32) + 16);
  *(inited + 56) = &type metadata for _CUDictionaryEncoder.UnkeyedContainer.Index;
  *(inited + 64) = sub_247BE681C();
  *(inited + 32) = v8;
  *(inited + 40) = 0;
  *&v17 = v4;

  sub_247BE632C(inited);
  v9 = v4;
  v10 = type metadata accessor for _CUDictionaryEncoder.SingleValueContainer();
  v11 = swift_allocObject();
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 16) = v9;
  *(v11 + 24) = v5;
  swift_beginAccess();
  v12 = *(v2 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 32) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_247BE6564(0, v12[2] + 1, 1, v12, &qword_27EE5E208, &qword_247BFCD30, &qword_27EE5E210, &qword_247BFCD38);
    *(v2 + 32) = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_247BE6564((v14 > 1), v15 + 1, 1, v12, &qword_27EE5E208, &qword_247BFCD30, &qword_27EE5E210, &qword_247BFCD38);
  }

  v18 = v10;
  v19 = &off_2859CF240;
  *&v17 = v11;
  v12[2] = v15 + 1;
  sub_247B93B4C(&v17, &v12[5 * v15 + 4]);
  *(v2 + 32) = v12;
  swift_endAccess();
  a1[3] = v10;
  result = sub_247BE2010(&qword_27EE61380, type metadata accessor for _CUDictionaryEncoder.SingleValueContainer);
  a1[4] = result;
  *a1 = v11;
  return result;
}

uint64_t sub_247BE4BF4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v7 = v1 + 2;
  v5 = v1[2];
  v6 = v7[1];
  v8 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC68, &unk_247BFCD40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_247BFA840;
  swift_beginAccess();
  v10 = *(v2[4] + 16);
  *(inited + 56) = &type metadata for _CUDictionaryEncoder.UnkeyedContainer.Index;
  *(inited + 64) = sub_247BE681C();
  *(inited + 32) = v10;
  *(inited + 40) = 0;
  *&v19 = v5;

  sub_247BE632C(inited);
  v11 = v5;
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D84F90];
  v12[3] = v6;
  v12[4] = v13;
  v12[2] = v11;
  swift_beginAccess();
  v14 = v2[4];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[4] = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_247BE6564(0, v14[2] + 1, 1, v14, &qword_27EE5E208, &qword_247BFCD30, &qword_27EE5E210, &qword_247BFCD38);
    v2[4] = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_247BE6564((v16 > 1), v17 + 1, 1, v14, &qword_27EE5E208, &qword_247BFCD30, &qword_27EE5E210, &qword_247BFCD38);
  }

  v20 = v8;
  v21 = &off_2859CF230;
  *&v19 = v12;
  v14[2] = v17 + 1;
  sub_247B93B4C(&v19, &v14[5 * v17 + 4]);
  v2[4] = v14;
  swift_endAccess();
  a1[3] = v8;
  result = sub_247BE2010(qword_27EE61388, type metadata accessor for _CUDictionaryEncoder.UnkeyedContainer);
  a1[4] = result;
  *a1 = v12;
  return result;
}

uint64_t sub_247BE4E6C()
{
  sub_247BE49C8(v1);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_247BF7240();
  return __swift_destroy_boxed_opaque_existential_1Tm(v1);
}

uint64_t sub_247BE4F00()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v6 = 0;
  v7 = 0xE000000000000000;
  v4 = v1;
  v5 = v2;
  DefaultStringInterpolation.appendInterpolation<A>(_:)(&v4, MEMORY[0x277D83B88], MEMORY[0x277D83BF8]);
  return v6;
}

uint64_t sub_247BE4F5C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_247BE6990(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_247BE4F90()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_247BE4F9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_247BE4FA8(uint64_t a1)
{
  v2 = sub_247BE681C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247BE4FE4(uint64_t a1)
{
  v2 = sub_247BE681C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_247BE5020()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_247BE5068()
{
  v1 = *v0;
  swift_beginAccess();
  return *(*(v1 + 32) + 16);
}

uint64_t sub_247BE50AC()
{
  v1 = *v0;
  sub_247BE49C8(v3);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_247BF7270();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_247BE511C(char a1)
{
  v2 = *v1;
  v5 = a1;
  sub_247BE49C8(v4);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_247BF7240();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_247BE51A4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5[5] = a1;
  v5[6] = a2;
  sub_247BE49C8(v5);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_247BF7240();
  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_247BE522C(double a1)
{
  v2 = *v1;
  *&v4[5] = a1;
  sub_247BE49C8(v4);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_247BF7240();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_247BE52B4(float a1)
{
  v2 = *v1;
  v5 = a1;
  sub_247BE49C8(v4);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_247BF7240();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_247BE5404(uint64_t a1)
{
  v2 = *v1;
  v4[5] = a1;
  sub_247BE49C8(v4);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_247BF7240();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_247BE54FC(char a1)
{
  v2 = *v1;
  v5 = a1;
  sub_247BE49C8(v4);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_247BF7240();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_247BE55B4(__int16 a1)
{
  v2 = *v1;
  v5 = a1;
  sub_247BE49C8(v4);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_247BF7240();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_247BE566C(int a1)
{
  v2 = *v1;
  v5 = a1;
  sub_247BE49C8(v4);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_247BF7240();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

void *_CUDictionaryEncoder.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_247B9CAD0((v0 + 4), &qword_27EE5E1F0, &qword_247BFC728);
  v3 = v0[9];

  return v0;
}

uint64_t _CUDictionaryEncoder.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_247B9CAD0((v0 + 4), &qword_27EE5E1F0, &qword_247BFC728);
  v3 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_247BE5BDC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
}

uint64_t sub_247BE5C20()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 72);
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_247BE5CF8(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t sub_247BE5D7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_247BE5ED0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E200, &qword_247BFCD28);
  result = sub_247BF6ED0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_247B9471C((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_247BC5AB0(v24, &v38);
        sub_247B9B1AC(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_247BF6C50();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_247B9471C(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void *sub_247BE6188()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E200, &qword_247BFCD28);
  v2 = *v0;
  v3 = sub_247BF6EC0();
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
        v18 = 40 * v17;
        sub_247BC5AB0(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_247B9B1AC(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_247B9471C(v22, (*(v4 + 56) + v17));
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

void *sub_247BE632C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_247BE6564(result, v11, 1, v3, &qword_27EE5DC68, &unk_247BFCD40, &qword_27EE5DC10, &qword_247BF9F98);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC10, &qword_247BF9F98);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_247BE6454(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E230, &qword_247BFCD60);
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

void *sub_247BE6564(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_247BE66AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_247B93B4C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_247BE6744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5DDB0, &unk_247BFA900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247BE67B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_247BE681C()
{
  result = qword_27EE61610[0];
  if (!qword_27EE61610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EE61610);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for _CUDictionaryEncoder.UnkeyedContainer.Index(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _CUDictionaryEncoder.UnkeyedContainer.Index(uint64_t result, int a2, int a3)
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

  *(result + 9) = v3;
  return result;
}

unint64_t sub_247BE68E4()
{
  result = qword_27EE61720;
  if (!qword_27EE61720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE61720);
  }

  return result;
}

unint64_t sub_247BE693C()
{
  result = qword_27EE61728[0];
  if (!qword_27EE61728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EE61728);
  }

  return result;
}

uint64_t sub_247BE6990(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_247BF6D70();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_247BC071C(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t Character.binaryDigit.getter()
{
  result = sub_247BF63D0();
  if (result <= 1)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 1) == 0)
  {
    return v2;
  }

  return result;
}

unint64_t Character.octalDigit.getter()
{
  result = sub_247BF63D0();
  if (result <= 7)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 1) == 0)
  {
    return v2;
  }

  return result;
}

uint64_t Character.isLetterB.getter(uint64_t a1, uint64_t a2)
{
  if (a1 == 98 && a2 == 0xE100000000000000)
  {
    return 1;
  }

  v5 = sub_247BF7180();
  v6 = a1 == 66 && a2 == 0xE100000000000000;
  v7 = v6;
  if ((v5 & 1) != 0 || v7)
  {
    return 1;
  }

  return sub_247BF7180();
}

uint64_t Character.isLetterX.getter(uint64_t a1, uint64_t a2)
{
  if (a1 == 120 && a2 == 0xE100000000000000)
  {
    return 1;
  }

  v5 = sub_247BF7180();
  v6 = a1 == 88 && a2 == 0xE100000000000000;
  v7 = v6;
  if ((v5 & 1) != 0 || v7)
  {
    return 1;
  }

  return sub_247BF7180();
}

uint64_t Sequence<>.hexString(separator:uppercase:maxBytes:truncator:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v40 = a5;
  v41 = a6;
  v43 = a1;
  v44 = a2;
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v17 = *(v42 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v40 - v18;
  if (a3)
  {
    v20 = sub_247BDED78();
  }

  else
  {
    v20 = sub_247BDED6C();
  }

  v21 = *v20;
  v47 = 0;
  v48 = 0xE000000000000000;
  (*(v12 + 16))(v15, v8, a7);

  sub_247BF6610();
  swift_getAssociatedConformanceWitness();
  result = sub_247BF6AE0();
  if (v46)
  {
    goto LABEL_14;
  }

  if (a4 < 1)
  {
LABEL_15:

    MEMORY[0x24C1B4020](v40, v41);
    (*(v42 + 8))(v19, AssociatedTypeWitness);
    return v47;
  }

  v23 = v45;
  if (*(v21 + 16) <= v45 >> 4)
  {
LABEL_17:
    __break(1u);
  }

  else
  {
    v24 = v21 + 32;
    v25 = (v21 + 32 + 16 * (v45 >> 4));
    v26 = *v25;
    v27 = v25[1];

    MEMORY[0x24C1B4020](v26, v27);

    if (*(v21 + 16) > (v23 & 0xF))
    {
      v28 = (v24 + 16 * (v23 & 0xF));
      v29 = *v28;
      v30 = v28[1];

      MEMORY[0x24C1B4020](v29, v30);

      sub_247BF6AE0();
      if ((v46 & 1) == 0)
      {
        v31 = a4 & ~(a4 >> 63);
        v32 = v45;
        while (--v31)
        {
          result = MEMORY[0x24C1B4020](v43, v44);
          v33 = v32 >> 4;
          if (*(v21 + 16) <= v33)
          {
            goto LABEL_17;
          }

          v34 = (v24 + 16 * v33);
          v35 = *v34;
          v36 = v34[1];

          MEMORY[0x24C1B4020](v35, v36);

          if (*(v21 + 16) <= (v32 & 0xF))
          {
            goto LABEL_18;
          }

          v37 = (v24 + 16 * (v32 & 0xF));
          v38 = *v37;
          v39 = v37[1];

          MEMORY[0x24C1B4020](v38, v39);

          sub_247BF6AE0();
          v32 = v45;
          if (v46 == 1)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_15;
      }

LABEL_14:
      (*(v42 + 8))(v19, AssociatedTypeWitness);

      return v47;
    }
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::String __swiftcall StringProtocol.collapsedWhitespace()()
{
  v2 = v0;
  v3 = *(v0 - 8);
  v4 = *(v3 + 64);
  (MEMORY[0x28223BE20])();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(*(v7 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v20 - v12;
  v22 = 0;
  v23 = 0xE000000000000000;
  (*(v3 + 16))(v6, v1, v2);
  sub_247BF6610();
  swift_getAssociatedConformanceWitness();
  sub_247BF6AE0();
  v14 = v21;
  if (v21)
  {
    v15 = v20;
    v16 = 1;
    do
    {
      if (sub_247BF63B0())
      {

        sub_247BF6AE0();
        v14 = v21;
        if (!v21)
        {
          break;
        }

        v15 = v20;
        while ((sub_247BF63B0() & 1) != 0)
        {

          sub_247BF6AE0();
          v15 = v20;
          v14 = v21;
          if (!v21)
          {
            goto LABEL_12;
          }
        }

        if ((v16 & 1) == 0)
        {
          MEMORY[0x24C1B4020](32, 0xE100000000000000);
        }
      }

      MEMORY[0x24C1B4010](v15, v14);

      sub_247BF6AE0();
      v16 = 0;
      v15 = v20;
      v14 = v21;
    }

    while (v21);
  }

LABEL_12:
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  v17 = v22;
  v18 = v23;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

uint64_t StringProtocol.hasPrefixCaseInsensitive<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E238, &qword_247BFCE38);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = *(*(a5 + 8) + 8);
  if (sub_247BF6990())
  {
    v11 = 1;
  }

  else
  {
    v12 = sub_247BF5FB0();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    sub_247BF6B20();
    v14 = v13;
    sub_247BE9724(v9);
    v11 = v14 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_247BE7630@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t StringProtocol.parseHex()(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 8) + 8);
  sub_247BF6940();
  sub_247BF69A0();
  return StringProtocol.parseHex(_:_:maxBytes:)(&v7, v6, 0x7FFFFFFFFFFFFFFFuLL, a1, a2);
}

uint64_t StringProtocol.parseHex(_:_:maxBytes:)(void *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v34 = *a1;
  v6 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16) >= a3)
  {
LABEL_41:
    *a1 = v5;
    return v6;
  }

  v7 = a5;
  v27 = a1;
  v28 = 0;
  v10 = (MEMORY[0x277D84F90] + 16);
  v31 = 1;
  while (1)
  {
    StringProtocol.parseLeadingWhitespace(_:_:)(&v34, a2, a4, v7);
    StringProtocol.parseNumericPrefix(start:end:radix:)(&v34, a2, 16, a4, v7);
    v5 = v34;
    if ((v34 ^ a2) < 0x4000)
    {
LABEL_40:
      a1 = v27;
      goto LABEL_41;
    }

    v33 = v34;
    v11 = *(*(v7 + 8) + 8);
    v12 = sub_247BF69C0();
    v15 = *v13;
    v14 = v13[1];

    v12(v32, 0);
    v16 = sub_247BF63C0();
    if ((v17 & 1) == 0)
    {
      v18 = v16;
      if (v16 <= 15)
      {
        break;
      }
    }

    v20 = v15 == 58 && v14 == 0xE100000000000000;
    if (v20 || (sub_247BF7180() & 1) != 0 || (v15 == 45 ? (v21 = v14 == 0xE100000000000000) : (v21 = 0), v21 || (sub_247BF7180() & 1) != 0 || (v15 == 95 ? (v22 = v14 == 0xE100000000000000) : (v22 = 0), v22 || (sub_247BF7180() & 1) != 0 || (v15 == 44 ? (v23 = v14 == 0xE100000000000000) : (v23 = 0), v23))))
    {
    }

    else
    {
      v24 = sub_247BF7180();

      if ((v24 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

LABEL_4:
    v33 = v5;
    sub_247BF6960();
    v5 = v32[0];
    v34 = v32[0];
    v10 = v6 + 16;
    v7 = a5;
    if (*(v6 + 2) >= a3)
    {
      goto LABEL_40;
    }
  }

  if (v31)
  {
    if (16 * v18 < 0)
    {
      goto LABEL_43;
    }

    if ((16 * v18) > 0xFF)
    {
      goto LABEL_44;
    }

    v28 = 16 * v18;
    goto LABEL_39;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_247BBE398(0, *v10 + 1, 1, v6);
    }

    v26 = *(v6 + 2);
    v25 = *(v6 + 3);
    if (v26 >= v25 >> 1)
    {
      v6 = sub_247BBE398((v25 > 1), v26 + 1, 1, v6);
    }

    *(v6 + 2) = v26 + 1;
    v28 |= v18;
    v6[v26 + 32] = v28;
LABEL_39:
    v31 ^= 1u;
    goto LABEL_4;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t StringProtocol.parseHex(maxBytes:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 8) + 8);
  sub_247BF6940();
  sub_247BF69A0();
  return StringProtocol.parseHex(_:_:maxBytes:)(&v9, v8, a1, a2, a3);
}

void *StringProtocol.parseLeadingWhitespace(_:_:)(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  if ((*result ^ a2) >= 0x4000)
  {
    v6 = result;
    v7 = *(*(a4 + 8) + 8);
    do
    {
      v13 = v4;
      v8 = sub_247BF69C0();
      v10 = *v9;
      v11 = v9[1];

      (v8)(v12, 0);
      LOBYTE(v8) = sub_247BF63B0();

      if ((v8 & 1) == 0)
      {
        break;
      }

      v13 = v4;
      result = sub_247BF6960();
      v4 = v12[0];
      *v6 = v12[0];
    }

    while ((v4 ^ a2) >> 14);
  }

  return result;
}

uint64_t StringProtocol.parseNumericPrefix(start:end:radix:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v7 = __ROR8__(a3, 1);
  if (v7 > 3)
  {
    if (v7 != 4)
    {
      if (v7 != 8)
      {
        return v6;
      }

      v8 = *a1;
      if ((*a1 ^ a2) < 0x4000)
      {
        return v6;
      }

      v80 = a1;
      v83 = *a1;
      v16 = *(*(a5 + 8) + 8);
      v17 = sub_247BF69C0();
      v20 = *v18;
      v19 = v18[1];

      v17(&v81, 0);
      if (v20 == 48 && v19 == 0xE100000000000000)
      {
      }

      else
      {
        v22 = sub_247BF7180();

        if ((v22 & 1) == 0)
        {
          return v6;
        }
      }

      v83 = v8;
      Collection.subscript.getter(1, &v83, a4, v16, &v81);
      v45 = v82;
      if (!v82)
      {
        return v6;
      }

      if ((v46 = v81, v81 == 120) && v82 == 0xE100000000000000 || (sub_247BF7180() & 1) != 0 || v46 == 88 && v45 == 0xE100000000000000)
      {
      }

      else
      {
        v68 = sub_247BF7180();

        if ((v68 & 1) == 0)
        {
          return v6;
        }
      }

      v83 = v8;
      Collection.subscript.getter(2, &v83, a4, v16, &v81);
      if (!v82)
      {
        return v6;
      }

      sub_247BF63C0();
      v48 = v47;

      if (v48)
      {
        return v6;
      }

LABEL_57:
      v83 = v8;
      sub_247BF63E0();
      *v80 = v81;
      return v6;
    }

    v24 = *a1;
    if ((*a1 ^ a2) < 0x4000)
    {
      return v6;
    }

    v25 = a1;
    v83 = *a1;
    v26 = *(*(a5 + 8) + 8);
    v27 = sub_247BF69C0();
    v30 = *v28;
    v29 = v28[1];

    v27(&v81, 0);
    if (v30 == 48 && v29 == 0xE100000000000000)
    {
    }

    else
    {
      v32 = sub_247BF7180();

      if ((v32 & 1) == 0)
      {
        return v6;
      }
    }

    v83 = v24;
    Collection.subscript.getter(1, &v83, a4, v26, &v81);
    if (!v82)
    {
      return v6;
    }

    v49 = sub_247BF63D0();
    v51 = v50;

    if ((v51 & 1) != 0 || (v49 & 0x8000000000000000) != 0 || v49 > 7)
    {
      return v6;
    }

    v83 = v24;
    sub_247BF6960();
LABEL_92:
    *v25 = v81;
    return v6;
  }

  if (!v7)
  {
    v23 = *a1;
    if ((*a1 ^ a2) < 0x4000)
    {
      return 10;
    }

    v25 = a1;
    v83 = *a1;
    v33 = *(*(a5 + 8) + 8);
    v34 = sub_247BF69C0();
    v37 = *v35;
    v36 = v35[1];

    v34(&v81, 0);
    if (v37 == 48 && v36 == 0xE100000000000000)
    {
    }

    else
    {
      v39 = sub_247BF7180();

      if ((v39 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    v83 = v23;
    Collection.subscript.getter(1, &v83, a4, v33, &v81);
    v52 = v82;
    if (!v82)
    {
      goto LABEL_74;
    }

    v53 = v81;
    if (v81 == 120 && v82 == 0xE100000000000000 || (sub_247BF7180() & 1) != 0 || v53 == 88 && v52 == 0xE100000000000000)
    {
    }

    else
    {
      v69 = sub_247BF7180();

      if ((v69 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    v83 = v23;
    Collection.subscript.getter(2, &v83, a4, v33, &v81);
    if (v82)
    {
      sub_247BF63C0();
      v55 = v54;

      if ((v55 & 1) == 0)
      {
        v83 = v23;
        sub_247BF63E0();
        *v25 = v81;
        return 16;
      }
    }

LABEL_74:
    v83 = v23;
    v56 = sub_247BF69C0();
    v59 = *v57;
    v58 = v57[1];

    v56(&v81, 0);
    if (v59 == 48 && v58 == 0xE100000000000000)
    {
    }

    else
    {
      v61 = sub_247BF7180();

      if ((v61 & 1) == 0)
      {
        goto LABEL_101;
      }
    }

    v83 = v23;
    Collection.subscript.getter(1, &v83, a4, v33, &v81);
    v62 = v82;
    if (v82)
    {
      v63 = v81;
      if (v81 == 98 && v82 == 0xE100000000000000 || (sub_247BF7180() & 1) != 0 || v63 == 66 && v62 == 0xE100000000000000)
      {
      }

      else
      {
        v70 = sub_247BF7180();

        if ((v70 & 1) == 0)
        {
          goto LABEL_101;
        }
      }

      v83 = v23;
      Collection.subscript.getter(2, &v83, a4, v33, &v81);
      if (v82)
      {
        v64 = sub_247BF63D0();
        v66 = v65;

        if ((v66 & 1) == 0 && v64 <= 1)
        {
          v83 = v23;
          v6 = 2;
          sub_247BF63E0();
          goto LABEL_92;
        }
      }
    }

LABEL_101:
    v83 = v23;
    v71 = sub_247BF69C0();
    v74 = *v72;
    v73 = v72[1];

    v71(&v81, 0);
    if (v74 == 48 && v73 == 0xE100000000000000)
    {
    }

    else
    {
      v75 = sub_247BF7180();

      if ((v75 & 1) == 0)
      {
        return 10;
      }
    }

    v83 = v23;
    Collection.subscript.getter(1, &v83, a4, v33, &v81);
    if (v82)
    {
      v76 = sub_247BF63D0();
      v78 = v77;

      if ((v78 & 1) == 0 && (v76 & 0x8000000000000000) == 0 && v76 <= 7)
      {
        v83 = v23;
        sub_247BF6960();
        *v25 = v81;
        return 8;
      }
    }

    return 10;
  }

  if (v7 == 1)
  {
    v8 = *a1;
    if ((*a1 ^ a2) >= 0x4000)
    {
      v80 = a1;
      v83 = *a1;
      v9 = *(*(a5 + 8) + 8);
      v10 = sub_247BF69C0();
      v13 = *v11;
      v12 = v11[1];

      v10(&v81, 0);
      if (v13 == 48 && v12 == 0xE100000000000000)
      {
      }

      else
      {
        v15 = sub_247BF7180();

        if ((v15 & 1) == 0)
        {
          return v6;
        }
      }

      v83 = v8;
      Collection.subscript.getter(1, &v83, a4, v9, &v81);
      v40 = v82;
      if (v82)
      {
        if ((v41 = v81, v81 == 98) && v82 == 0xE100000000000000 || (sub_247BF7180() & 1) != 0 || v41 == 66 && v40 == 0xE100000000000000)
        {
        }

        else
        {
          v67 = sub_247BF7180();

          if ((v67 & 1) == 0)
          {
            return v6;
          }
        }

        v83 = v8;
        Collection.subscript.getter(2, &v83, a4, v9, &v81);
        if (v82)
        {
          v42 = sub_247BF63D0();
          v44 = v43;

          if ((v44 & 1) == 0 && v42 < 2)
          {
            goto LABEL_57;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t StringProtocol.parseInteger<A>(radix:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = *(*(a4 + 8) + 8);
  sub_247BF6940();
  sub_247BF69A0();
  return StringProtocol.parseInteger<A>(_:_:radix:)(&v15, v14, a1, a2, a3, a4, a5, a6);
}

uint64_t StringProtocol.parseInteger<A>(_:_:radix:)@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v9 = v8;
  v87 = a3;
  v82 = a8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v80 = &v68 - v18;
  v84 = a7;
  v19 = *(a7 + 8);
  v73 = *(*(v19 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(*(AssociatedTypeWitness - 8) + 64);
  v21 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v71 = &v68 - v22;
  v74 = *(a5 - 8);
  v23 = *(v74 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v79 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v88 = &v68 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v68 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v68 - v31;
  v70 = a1;
  v91 = *a1;
  StringProtocol.parseLeadingWhitespace(_:_:)(&v91, a2, a4, a6);
  v78 = StringProtocol.parseNumericSign(start:end:)(&v91, a2, a4, a6);
  if (v78 < 0 && (sub_247BF6B80() & 1) == 0)
  {
    sub_247BC353C();
    swift_allocError();
    *v64 = 2;
    return swift_willThrow();
  }

  v85 = a4;
  v86 = v9;
  v89[0] = StringProtocol.parseNumericPrefix(start:end:radix:)(&v91, a2, v87, a4, a6);
  sub_247BC360C();
  v87 = v32;
  sub_247BF6BA0();
  v89[0] = 0;
  sub_247BF6BA0();
  v33 = v91;
  v34 = a2 >> 14;
  if (v91 >> 14 == a2 >> 14)
  {
    v35 = v87;
LABEL_5:
    sub_247BC353C();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();
    v37 = *(v74 + 8);
    v37(v82, a5);
    return (v37)(v35, a5);
  }

  v83 = *(*(a6 + 8) + 8);
  v39 = (v74 + 8);
  v77 = (v74 + 32);
  v69 = v91 >> 14;
  v40 = v91 >> 14;
  v81 = v30;
  v75 = v34;
  v76 = v19;
  while (1)
  {
    v90 = v33;
    v41 = sub_247BF69C0();
    v44 = *v42;
    v43 = v42[1];

    v41(v89, 0);
    if (v44 == 2573 && v43 == 0xE200000000000000)
    {
      break;
    }

    result = sub_247BF7180();
    if (result)
    {
      break;
    }

    if ((v43 & 0x2000000000000000) != 0)
    {
      v46 = HIBYTE(v43) & 0xF;
    }

    else
    {
      v46 = v44 & 0xFFFFFFFFFFFFLL;
    }

    if (!v46)
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      return result;
    }

    if ((v43 & 0x1000000000000000) != 0)
    {
      v47 = sub_247BF64D0();
    }

    else
    {
      v47 = sub_247BF6CD0() << 16;
    }

    if (v47 >> 14 != 4 * v46)
    {
      break;
    }

    result = sub_247BE978C(v44, v43);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_55;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
      break;
    }

    result = sub_247BE978C(v44, v43);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_56;
    }

    v48 = result;

    if ((v48 & 0xFFFFFF00) != 0)
    {
      goto LABEL_54;
    }

    if ((v48 - 58) > 0xF5u)
    {
      v49 = -48;
    }

    else if ((v48 - 91) > 0xE5u)
    {
      v49 = -55;
    }

    else
    {
      if ((v48 - 123) < 0xE6u)
      {
        goto LABEL_50;
      }

      v49 = -87;
    }

    v50 = v49 + v48;
    v51 = sub_247BF6B80();
    v52 = sub_247BF6B70();
    if (v51)
    {
      if (v52 <= 8)
      {
        swift_getAssociatedConformanceWitness();
        sub_247BF7370();
        v30 = v81;
        sub_247BF7160();
        v53 = *(*(v19 + 32) + 8);
        v35 = v87;
        v54 = sub_247BF6410();
        (*v39)(v30, a5);
        if ((v54 & 1) == 0)
        {
          goto LABEL_51;
        }

LABEL_37:
        if (v50 >= sub_247BF6B60())
        {
          goto LABEL_51;
        }

        goto LABEL_38;
      }
    }

    else if (v52 < 9)
    {
      v35 = v87;
      goto LABEL_37;
    }

    LOBYTE(v89[0]) = v50;
    sub_247BC5054();
    sub_247BF6B30();
    v55 = *(*(v19 + 32) + 8);
    v35 = v87;
    v56 = sub_247BF6420();
    (*v39)(v30, a5);
    if ((v56 & 1) == 0)
    {
      goto LABEL_51;
    }

LABEL_38:
    v90 = v33;
    sub_247BF6960();
    v33 = v89[0];
    v57 = v82;
    if (sub_247BF6E50())
    {
      sub_247BC353C();
      swift_allocError();
      *v65 = 1;
      swift_willThrow();
      v66 = *v39;
      (*v39)(v88, a5);
      v66(v57, a5);
      return (v66)(v35, a5);
    }

    LOBYTE(v89[0]) = v50;
    if (v78 < 0)
    {
      sub_247BC5054();
      sub_247BF6BA0();
      v58 = v80;
      v59 = sub_247BF6E60();
    }

    else
    {
      sub_247BC5054();
      sub_247BF6BA0();
      v58 = v80;
      v59 = sub_247BF6E40();
    }

    v60 = v59;
    v61 = *v39;
    (*v39)(v30, a5);
    v62 = *v77;
    v63 = v79;
    (*v77)(v79, v58, a5);
    if (v60)
    {
      sub_247BC353C();
      swift_allocError();
      *v67 = 1;
      swift_willThrow();
      v61(v63, a5);
      v61(v88, a5);
      v61(v57, a5);
      return (v61)(v87, a5);
    }

    v61(v88, a5);
    v61(v57, a5);
    v62(v57, v63, a5);
    v40 = v33 >> 14;
    v19 = v76;
    v30 = v81;
    if (v33 >> 14 == v75)
    {
      v40 = v75;
      goto LABEL_50;
    }
  }

LABEL_50:
  v35 = v87;
LABEL_51:
  if (v40 == v69)
  {
    goto LABEL_5;
  }

  result = (*(v74 + 8))(v35, a5);
  *v70 = v33;
  return result;
}

uint64_t StringProtocol.parseNumericSign(start:end:)(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if ((*a1 ^ a2) < 0x4000)
  {
    return 0;
  }

  v21 = *a1;
  v7 = *(*(a4 + 8) + 8);
  v8 = sub_247BF69C0();
  v11 = *v9;
  v10 = v9[1];

  v8(v20, 0);
  if (v11 == 45 && v10 == 0xE100000000000000)
  {

    goto LABEL_15;
  }

  v13 = sub_247BF7180();

  if (v13)
  {
LABEL_15:
    v21 = v4;
    sub_247BF6960();
    *a1 = v20[0];
    return -1;
  }

  v21 = v4;
  v14 = sub_247BF69C0();
  v17 = *v15;
  v16 = v15[1];

  v14(v20, 0);
  if (v17 == 43 && v16 == 0xE100000000000000)
  {
  }

  else
  {
    v19 = sub_247BF7180();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v21 = v4;
  sub_247BF6960();
  *a1 = v20[0];
  return 1;
}

unint64_t StringProtocol.parseCharacter(_:_:)(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (*a1 >> 14 >= a2 >> 14)
  {
    v9 = a2;
    type metadata accessor for CUError();
    sub_247BF6CF0();
    MEMORY[0x24C1B4020](0xD00000000000001ELL, 0x8000000247C01B50);
    sub_247BF6DC0();
    MEMORY[0x24C1B4020](0x3D646E65202CLL, 0xE600000000000000);
    v13 = v9;
    sub_247BF6DC0();
    CUError.__allocating_init(_:_:_:)(-6750, 0, 0xE000000000000000, 0);
    swift_willThrow();
  }

  else
  {
    v13 = *a1;
    v6 = *(*(a4 + 8) + 8);
    v7 = sub_247BF69C0();
    v9 = *v8;
    v10 = v8[1];

    v7(&v12, 0);
    v13 = v4;
    sub_247BF6960();
    *a1 = v12;
  }

  return v9;
}

BOOL sub_247BE94D0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_247BE9500@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_247BE952C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_247BE9618@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Void __swiftcall String.append(_:_:)(CoreUtilsSwift::CUStringAppendFlags *a1, Swift::String a2)
{
  v2 = HIBYTE(a2._object) & 0xF;
  if ((a2._object & 0x2000000000000000) == 0)
  {
    v2 = a2._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    rawValue = a1->rawValue;
    if ((a1->rawValue & 1) == 0)
    {
      v4 = rawValue | 1;
LABEL_16:
      a1->rawValue = v4;
      goto LABEL_17;
    }

    if ((rawValue & 2) != 0)
    {
      if ((rawValue & 8) != 0)
      {
        MEMORY[0x24C1B4020](8236, 0xE200000000000000);
      }

LABEL_17:

      JUMPOUT(0x24C1B4020);
    }

    if ((rawValue & 4) != 0)
    {
      v5 = a1;
      v6 = 8250;
    }

    else
    {
      if ((rawValue & 8) == 0)
      {
LABEL_15:
        v4 = rawValue | 2;
        goto LABEL_16;
      }

      v5 = a1;
      v6 = 8236;
    }

    MEMORY[0x24C1B4020](v6, 0xE200000000000000);
    a1 = v5;
    goto LABEL_15;
  }
}

uint64_t sub_247BE9724(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E238, &qword_247BFCE38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_247BE978C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_247BE98DC(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_247BF6CE0();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_247BF6D70() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_247BE98DC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_247BE9974(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_247BE99E8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_247BE9974(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_247BC10A0(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_247BE99E8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_247BF6D70();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_247BE9B10()
{
  result = qword_27EE5E240;
  if (!qword_27EE5E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E240);
  }

  return result;
}

unint64_t sub_247BE9B68()
{
  result = qword_27EE5E248;
  if (!qword_27EE5E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E248);
  }

  return result;
}

unint64_t sub_247BE9BC0()
{
  result = qword_27EE5E250;
  if (!qword_27EE5E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E250);
  }

  return result;
}

unint64_t sub_247BE9C18()
{
  result = qword_27EE5E258;
  if (!qword_27EE5E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E258);
  }

  return result;
}

uint64_t CUExtendableProperties.getExtendableProperty<A>(key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a5;
  v32 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_247BF6AC0();
  v27 = *(v11 - 8);
  v28 = v11;
  v12 = *(v27 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - v13;
  v15 = *(a4 + 8);
  v16 = v15(a2, a4);
  v17 = *(v16 + 16);
  v31 = a1;
  if (v17 && (v29 = a6, v18 = sub_247BA04BC(a1), (v19 & 1) != 0))
  {
    v20 = v18;
    v21 = *(v16 + 36);

    v22 = v15(a2, a4);
    sub_247B9D544(v33, v20, v21, 0, v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0);
    v23 = swift_dynamicCast();
    v24 = *(*(AssociatedTypeWitness - 8) + 56);
    if (v23)
    {
      v25 = *(AssociatedTypeWitness - 8);
      v24(v14, 0, 1, AssociatedTypeWitness);
      return (*(v25 + 32))(v29, v14, AssociatedTypeWitness);
    }

    v24(v14, 1, 1, AssociatedTypeWitness);
    (*(v27 + 8))(v14, v28);
  }

  else
  {
  }

  return (*(v30 + 16))(v32);
}

uint64_t CUExtendableProperties.setExtendableProperty<A>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a2, AssociatedTypeWitness);
  v11 = (*(a5 + 24))(v13, a3, a5);
  sub_247B9D64C(v14, a1);
  return v11(v13, 0);
}

uint64_t CUExtendableProperties.removeExtendableProperty<A>(key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 24))(v7, a2, a4);
  sub_247BEA0B4(a1, v8);
  sub_247BA0E00(v8);
  return v5(v7, 0);
}

double sub_247BEA0B4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_247BA04BC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_247BA0AE8();
      v11 = v13;
    }

    sub_247B9471C((*(v11 + 56) + 32 * v8), a2);
    sub_247BA07E4(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t CUExtendablePropertiesActor.getExtendableProperty<A>(key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a5;
  v32 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_247BF6AC0();
  v27 = *(v11 - 8);
  v28 = v11;
  v12 = *(v27 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - v13;
  v15 = *(a4 + 16);
  v16 = v15(a2, a4);
  v17 = *(v16 + 16);
  v31 = a1;
  if (v17 && (v29 = a6, v18 = sub_247BA04BC(a1), (v19 & 1) != 0))
  {
    v20 = v18;
    v21 = *(v16 + 36);

    v22 = v15(a2, a4);
    sub_247B9D544(v33, v20, v21, 0, v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0);
    v23 = swift_dynamicCast();
    v24 = *(*(AssociatedTypeWitness - 8) + 56);
    if (v23)
    {
      v25 = *(AssociatedTypeWitness - 8);
      v24(v14, 0, 1, AssociatedTypeWitness);
      return (*(v25 + 32))(v29, v14, AssociatedTypeWitness);
    }

    v24(v14, 1, 1, AssociatedTypeWitness);
    (*(v27 + 8))(v14, v28);
  }

  else
  {
  }

  return (*(v30 + 16))(v32);
}

uint64_t CUExtendablePropertiesActor.setExtendableProperty<A>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a2, AssociatedTypeWitness);
  v11 = (*(a5 + 32))(v13, a3, a5);
  sub_247B9D64C(v14, a1);
  return v11(v13, 0);
}

uint64_t CUExtendablePropertiesActor.removeExtendableProperty<A>(key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 32))(v7, a2, a4);
  sub_247BEA0B4(a1, v8);
  sub_247BA0E00(v8);
  return v5(v7, 0);
}

void fatalError(_:file:line:)(void (*a1)(void))
{
  a1();
  sub_247BF6E80();
  __break(1u);
}

Swift::UInt64 __swiftcall UpTicksPerSecond()()
{
  if (qword_281346698 != -1)
  {
    swift_once();
  }

  return qword_2813466A0;
}

Swift::Double __swiftcall UpTicksToSecondsF(_:)(Swift::UInt64 a1)
{
  if (qword_281346688 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return *&qword_281346690 * a1;
}

Swift::UInt64 __swiftcall UpTicksToSeconds(_:)(Swift::UInt64 result)
{
  if (qword_281346698 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (qword_2813466A0)
  {
    result /= qword_2813466A0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::UInt64 __swiftcall SecondsToUpTicks(_:)(Swift::UInt64 result)
{
  if (qword_281346698 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (is_mul_ok(result, qword_2813466A0))
  {
    result *= qword_2813466A0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::UInt64 __swiftcall SecondsToUpTicksF(_:)(Swift::Double a1)
{
  if (qword_27EE61A60 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = *&qword_27EE61A68 * a1;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v1 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 < 1.84467441e19)
  {
    return v1;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_247BEAA10(uint64_t result, void *a2, double *a3)
{
  v3 = result;
  if (*a2 != -1)
  {
    v5 = a3;
    result = swift_once();
    a3 = v5;
  }

  v4 = *a3 * v3;
  if (COERCE__INT64(fabs(v4)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v4 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 1.84467441e19)
  {
    return v4;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_247BEAAA4()
{
  info = 0;
  result = mach_timebase_info(&info);
  if (result)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!info.numer)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v1 = 1000000000 * info.denom;
  if (v1 >= info.numer)
  {
    qword_2813466A0 = v1 / info.numer;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_247BEAB08()
{
  if (qword_281346698 != -1)
  {
    swift_once();
  }

  result = 1.0 / qword_2813466A0;
  *&qword_281346690 = result;
  return result;
}

double sub_247BEABCC(uint64_t a1, uint64_t (*a2)(void), double *a3)
{
  v4 = *a2();
  if (qword_281346698 != -1)
  {
    swift_once();
  }

  result = v4 / qword_2813466A0;
  *a3 = result;
  return result;
}

double sub_247BEAC40()
{
  if (qword_281346698 != -1)
  {
    swift_once();
  }

  result = qword_2813466A0;
  *&qword_27EE61A68 = qword_2813466A0;
  return result;
}

double sub_247BEACFC(uint64_t a1, uint64_t (*a2)(void), double *a3)
{
  if (qword_281346698 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = qword_2813466A0;
  result = v4 / *a2();
  *a3 = result;
  return result;
}

__n128 CUManualClock.now.getter@<Q0>(__n128 *a1@<X8>)
{
  swift_beginAccess();
  result = v1[1];
  *a1 = result;
  return result;
}

void *CUManualClock.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[2] = sub_247BF7580();
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5DCD0, &qword_247BFA870);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = MEMORY[0x277D84F90];
  v0[4] = v2;
  v0[5] = v3;
  return v0;
}

void *CUManualClock.init()()
{
  v0[2] = sub_247BF7580();
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5DCD0, &qword_247BFA870);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = MEMORY[0x277D84F90];
  v0[4] = v2;
  v0[5] = v3;
  return v0;
}

uint64_t CUManualClock.advance(by:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF48, &qword_247BFBB28);
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E260, &qword_247BFD080);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - v8;
  v41 = type metadata accessor for CUManualClock.WakeUp();
  v10 = *(v41 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v41);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = (&v41 - v18);
  v45 = MEMORY[0x277D84F90];
  v20 = v0[4];

  os_unfair_lock_lock(v20 + 4);

  swift_beginAccess();
  v21 = v0[2];
  v22 = v0[3];
  v0[2] = sub_247BF7540();
  v0[3] = v23;
  swift_endAccess();
  v24 = v0 + 5;
  v25 = *(v0[5] + 16);
  if (v25)
  {
    while (v25 <= *(*v24 + 16))
    {
      --v25;
      sub_247BEB97C(*v24 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v25, v19);
      v27 = *v19;
      v28 = v19[1];
      v29 = v0[2];
      v30 = v0[3];
      if ((sub_247BF7520() & 1) == 0)
      {
        sub_247BEB97C(v19, v9);
        sub_247BEBCE8(0, 0, v9);
        sub_247BEB2DC(v25, v17);
        sub_247BEBDBC(v17);
      }

      sub_247BEBDBC(v19);
      if (!v25)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_8:
    v26 = v45;
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  v31 = v1[4];

  os_unfair_lock_unlock(v31 + 4);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_247BED0B4(v26);
  }

  v32 = v43;
  v33 = v26[2];
  v34 = v26 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v44[0] = v34;
  v44[1] = v33;
  sub_247BEBE18(v44);
  v35 = v26[2];
  if (v35)
  {
    v43 = v26;
    v36 = *(v41 + 20);
    v37 = *(v10 + 72);
    v38 = (v42 + 16);
    v39 = (v42 + 8);
    do
    {
      sub_247BEB97C(v34, v14);
      (*v38)(v5, &v14[v36], v32);
      sub_247BEBDBC(v14);
      sub_247BF6760();
      (*v39)(v5, v32);
      v34 += v37;
      --v35;
    }

    while (v35);
  }
}

uint64_t type metadata accessor for CUManualClock.WakeUp()
{
  result = qword_27EE61D20;
  if (!qword_27EE61D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static CUManualClock.Instant.+= infix(_:_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_247BF7540();
  *a1 = result;
  a1[1] = v5;
  return result;
}

size_t sub_247BEB2DC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_247BED0B4(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for CUManualClock.WakeUp() - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_247BED3E8(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t static CUManualClock.Instant.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return sub_247BF7520();
}

uint64_t CUManualClock.sleep(until:tolerance:)(_OWORD *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = *a1;
  return MEMORY[0x2822009F8](sub_247BEB438, 0, 0);
}

uint64_t sub_247BEB438()
{
  v6 = *(v0 + 24);
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_247BEB53C;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_247BEB53C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_247BEB654, 0, 0);
}

uint64_t sub_247BEB66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CUManualClock.WakeUp();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(a4 + 32);
  v24 = sub_247BED39C;
  v25 = a4;

  os_unfair_lock_lock(v13 + 4);
  sub_247BC1894();
  os_unfair_lock_unlock(v13 + 4);

  if (sub_247BF7520())
  {
    v14 = *(a4 + 32);

    os_unfair_lock_lock(v14 + 4);

    v15 = *(v8 + 20);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF48, &qword_247BFBB28);
    (*(*(v16 - 8) + 16))(&v12[v15], a1, v16);
    *v12 = a2;
    *(v12 + 1) = a3;
    v17 = *(a4 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 40) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_247BECEDC(0, v17[2] + 1, 1, v17);
      *(a4 + 40) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_247BECEDC(v19 > 1, v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    sub_247BED3E8(v12, v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20);
    *(a4 + 40) = v17;
    v21 = *(a4 + 32);

    os_unfair_lock_unlock(v21 + 4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF48, &qword_247BFBB28);
    return sub_247BF6760();
  }
}

uint64_t CUManualClock.Instant.advanced(by:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  result = sub_247BF7540();
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t CUManualClock.Instant.duration(to:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v1;
  v5 = v1[1];
  return sub_247BF7550();
}

uint64_t CUManualClock.Instant.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_247BF7570();
}

uint64_t CUManualClock.Instant.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_247BF7460();
  sub_247BF7570();
  return sub_247BF74A0();
}

uint64_t sub_247BEB97C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CUManualClock.WakeUp();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CUManualClock.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t CUManualClock.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

__n128 sub_247BEBA48@<Q0>(__n128 *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  result = v3[1];
  *a1 = result;
  return result;
}

double sub_247BEBA90@<D0>(_OWORD *a1@<X8>)
{
  *&result = 1000000000;
  *a1 = xmmword_247BFD070;
  return result;
}

uint64_t sub_247BEBAA0(_OWORD *a1)
{
  *(v2 + 16) = *v1;
  *(v2 + 24) = *a1;
  return MEMORY[0x2822009F8](sub_247BEBACC, 0, 0);
}

uint64_t sub_247BEBACC()
{
  v6 = *(v0 + 24);
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_247BEBBD0;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_247BEBBD0()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_247BED62C, 0, 0);
}

unint64_t sub_247BEBCE8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_247BECEDC(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_247BED44C(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_247BEBDBC(uint64_t a1)
{
  v2 = type metadata accessor for CUManualClock.WakeUp();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247BEBE18(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_247BF6FC0();
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
        type metadata accessor for CUManualClock.WakeUp();
        v6 = sub_247BF66E0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for CUManualClock.WakeUp() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_247BEC138(v8, v9, a1, v4);
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
    return sub_247BEBF44(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_247BEBF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = type metadata accessor for CUManualClock.WakeUp();
  v8 = *(*(v38 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v38);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v31 - v13);
  result = MEMORY[0x28223BE20](v12);
  v18 = (&v31 - v17);
  v33 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v32 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v36 = v21;
    v37 = a3;
    v34 = v24;
    v35 = v23;
    while (1)
    {
      sub_247BEB97C(v24, v18);
      sub_247BEB97C(v21, v14);
      v25 = *v18;
      v26 = v18[1];
      v27 = *v14;
      v28 = v14[1];
      v29 = sub_247BF7520();
      sub_247BEBDBC(v14);
      result = sub_247BEBDBC(v18);
      if ((v29 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v21 = v36 + v32;
        v23 = v35 - 1;
        v24 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      sub_247BED3E8(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_247BED3E8(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_247BEC138(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v112 = a1;
  v123 = type metadata accessor for CUManualClock.WakeUp();
  v119 = *(v123 - 8);
  v9 = *(v119 + 64);
  v10 = MEMORY[0x28223BE20](v123);
  v114 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v122 = &v108 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v108 - v15);
  result = MEMORY[0x28223BE20](v14);
  v19 = (&v108 - v18);
  v121 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_97:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_136;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_247BC04D0(a4);
    }

    v124 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v121)
      {
        v104 = *(result + 16 * a4);
        v105 = result;
        v106 = *(result + 16 * (a4 - 1) + 40);
        sub_247BEC970(*v121 + *(v119 + 72) * v104, *v121 + *(v119 + 72) * *(result + 16 * (a4 - 1) + 32), *v121 + *(v119 + 72) * v106, v5);
        if (v6)
        {
        }

        if (v106 < v104)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_247BC04D0(v105);
        }

        if (a4 - 2 >= *(v105 + 2))
        {
          goto LABEL_124;
        }

        v107 = &v105[16 * a4];
        *v107 = v104;
        *(v107 + 1) = v106;
        v124 = v105;
        sub_247BC0444(a4 - 1);
        result = v124;
        a4 = *(v124 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v111 = a4;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v115 = v22;
    if (v24 >= v20)
    {
      v38 = v24;
    }

    else
    {
      v25 = *v121;
      v118 = v25;
      v26 = *(v119 + 72);
      v5 = v25 + v26 * v24;
      sub_247BEB97C(v5, v19);
      sub_247BEB97C(v25 + v26 * v23, v16);
      v27 = *v19;
      v28 = v19[1];
      v29 = *v16;
      v30 = v16[1];
      v31 = sub_247BF7520();
      sub_247BEBDBC(v16);
      result = sub_247BEBDBC(v19);
      v110 = v23;
      a4 = v23 + 2;
      v120 = v26;
      v32 = v118 + v26 * (v23 + 2);
      while (v20 != a4)
      {
        sub_247BEB97C(v32, v19);
        sub_247BEB97C(v5, v16);
        v33 = *v19;
        v34 = v19[1];
        v35 = *v16;
        v36 = v16[1];
        v37 = sub_247BF7520() & 1;
        sub_247BEBDBC(v16);
        result = sub_247BEBDBC(v19);
        ++a4;
        v32 += v120;
        v5 += v120;
        if ((v31 & 1) != v37)
        {
          v38 = a4 - 1;
          goto LABEL_11;
        }
      }

      v38 = v20;
      v23 = v110;
      if ((v31 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (v38 < v110)
      {
        goto LABEL_127;
      }

      if (v110 < v38)
      {
        v109 = v6;
        v39 = v120 * (v38 - 1);
        v40 = v38;
        v41 = v38 * v120;
        v118 = v38;
        v42 = v110 * v120;
        do
        {
          if (v23 != --v40)
          {
            v43 = *v121;
            if (!*v121)
            {
              goto LABEL_133;
            }

            v5 = v43 + v42;
            sub_247BED3E8(v43 + v42, v114);
            if (v42 < v39 || v5 >= v43 + v41)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v42 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_247BED3E8(v114, v43 + v39);
          }

          ++v23;
          v39 -= v120;
          v41 -= v120;
          v42 += v120;
        }

        while (v23 < v40);
        v6 = v109;
        v23 = v110;
        a4 = v111;
        v38 = v118;
      }

      else
      {
LABEL_24:
        a4 = v111;
      }
    }

    v44 = v121[1];
    if (v38 < v44)
    {
      if (__OFSUB__(v38, v23))
      {
        goto LABEL_126;
      }

      if (v38 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_128;
        }

        if ((v23 + a4) >= v44)
        {
          v45 = v121[1];
        }

        else
        {
          v45 = v23 + a4;
        }

        if (v45 < v23)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v38 != v45)
        {
          break;
        }
      }
    }

    v46 = v38;
    if (v38 < v23)
    {
      goto LABEL_125;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v115;
    }

    else
    {
      result = sub_247BBE178(0, *(v115 + 2) + 1, 1, v115);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v47 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v47 >> 1)
    {
      result = sub_247BBE178((v47 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v48 = &v22[16 * a4];
    *(v48 + 4) = v23;
    *(v48 + 5) = v46;
    v49 = *v112;
    if (!*v112)
    {
      goto LABEL_135;
    }

    v116 = v46;
    if (a4)
    {
      while (1)
      {
        v50 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v51 = *(v22 + 4);
          v52 = *(v22 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_55:
          if (v54)
          {
            goto LABEL_114;
          }

          v67 = &v22[16 * v5];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_117;
          }

          v73 = &v22[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_121;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v5 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v77 = &v22[16 * v5];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_69:
        if (v72)
        {
          goto LABEL_116;
        }

        v80 = &v22[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_119;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_76:
        a4 = v50 - 1;
        if (v50 - 1 >= v5)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*v121)
        {
          goto LABEL_132;
        }

        v88 = v22;
        v89 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v50 + 40];
        sub_247BEC970(*v121 + *(v119 + 72) * v89, *v121 + *(v119 + 72) * *&v22[16 * v50 + 32], *v121 + *(v119 + 72) * v5, v49);
        if (v6)
        {
        }

        if (v5 < v89)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_247BC04D0(v88);
        }

        if (a4 >= *(v88 + 2))
        {
          goto LABEL_111;
        }

        v90 = &v88[16 * a4];
        *(v90 + 4) = v89;
        *(v90 + 5) = v5;
        v124 = v88;
        result = sub_247BC0444(v50);
        v22 = v124;
        v5 = *(v124 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v22[16 * v5 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_112;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_113;
      }

      v62 = &v22[16 * v5];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_115;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_118;
      }

      if (v66 >= v58)
      {
        v84 = &v22[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_122;
        }

        if (v53 < v87)
        {
          v50 = v5 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v20 = v121[1];
    v21 = v116;
    a4 = v111;
    if (v116 >= v20)
    {
      goto LABEL_97;
    }
  }

  v109 = v6;
  v110 = v23;
  v91 = *v121;
  v92 = *(v119 + 72);
  v93 = *v121 + v92 * (v38 - 1);
  v94 = -v92;
  v95 = v23 - v38;
  v118 = v38;
  v113 = v92;
  a4 = v91 + v38 * v92;
  v116 = v45;
LABEL_87:
  v5 = a4;
  v117 = v95;
  v120 = v93;
  v96 = v93;
  while (1)
  {
    sub_247BEB97C(v5, v19);
    sub_247BEB97C(v96, v16);
    v97 = *v19;
    v98 = v19[1];
    v99 = *v16;
    v100 = v16[1];
    v101 = sub_247BF7520();
    sub_247BEBDBC(v16);
    result = sub_247BEBDBC(v19);
    if ((v101 & 1) == 0)
    {
LABEL_86:
      v93 = v120 + v113;
      v95 = v117 - 1;
      a4 += v113;
      v46 = v116;
      if (++v118 != v116)
      {
        goto LABEL_87;
      }

      v6 = v109;
      v23 = v110;
      if (v116 < v110)
      {
        goto LABEL_125;
      }

      goto LABEL_36;
    }

    if (!v91)
    {
      break;
    }

    v102 = v122;
    sub_247BED3E8(v5, v122);
    swift_arrayInitWithTakeFrontToBack();
    sub_247BED3E8(v102, v96);
    v96 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_247BEC970(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = a3;
  v51 = type metadata accessor for CUManualClock.WakeUp();
  v8 = *(*(v51 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v51);
  v11 = (&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v9);
  v52 = (&v44 - v13);
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = v53 - a2;
  if (v53 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v17 = (a2 - a1) / v15;
  v56 = a1;
  v55 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = v4;
    v28 = a4 + v19;
    if (v19 < 1)
    {
      v31 = a4 + v19;
    }

    else
    {
      v29 = -v15;
      v30 = a4 + v19;
      v31 = v28;
      v48 = v11;
      v49 = v29;
      while (2)
      {
        while (1)
        {
          v45 = v31;
          v32 = a2 + v29;
          v50 = a2;
          while (1)
          {
            v33 = v53;
            if (a2 <= a1)
            {
              v56 = a2;
              v54 = v45;
              goto LABEL_59;
            }

            v47 = v31;
            v53 += v29;
            v34 = v30 + v29;
            v35 = v30 + v29;
            v36 = v52;
            sub_247BEB97C(v35, v52);
            a2 = v32;
            v37 = v32;
            v38 = v48;
            sub_247BEB97C(v37, v48);
            v39 = *v36;
            v40 = v36[1];
            v41 = *v38;
            v42 = v38[1];
            v43 = sub_247BF7520();
            sub_247BEBDBC(v38);
            sub_247BEBDBC(v36);
            if (v43)
            {
              break;
            }

            v31 = v34;
            if (v33 < v30 || v53 >= v30)
            {
              swift_arrayInitWithTakeFrontToBack();
              v32 = a2;
              v29 = v49;
            }

            else
            {
              v32 = a2;
              v29 = v49;
              if (v33 != v30)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v30 = v34;
            a2 = v50;
            if (v34 <= a4)
            {
              goto LABEL_57;
            }
          }

          if (v33 < v50 || v53 >= v50)
          {
            break;
          }

          v31 = v47;
          v29 = v49;
          if (v33 != v50)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v30 <= a4)
          {
            goto LABEL_57;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v31 = v47;
        v29 = v49;
        if (v30 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_57:
    v56 = a2;
    v54 = v31;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v20 = a4 + v18;
    v54 = a4 + v18;
    if (v18 >= 1 && a2 < v53)
    {
      do
      {
        v22 = v52;
        sub_247BEB97C(a2, v52);
        sub_247BEB97C(a4, v11);
        v23 = *v22;
        v24 = v22[1];
        v25 = *v11;
        v26 = v11[1];
        v27 = sub_247BF7520();
        sub_247BEBDBC(v11);
        sub_247BEBDBC(v22);
        if (v27)
        {
          if (a1 < a2 || a1 >= a2 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v55 = a4 + v15;
          a4 += v15;
        }

        a1 += v15;
        v56 = a1;
      }

      while (a4 < v20 && a2 < v53);
    }
  }

LABEL_59:
  sub_247BECDF8(&v56, &v55, &v54);
  return 1;
}

uint64_t sub_247BECDF8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for CUManualClock.WakeUp();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_247BECEDC(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E290, &qword_247BFD268);
  v10 = *(type metadata accessor for CUManualClock.WakeUp() - 8);
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
  v15 = *(type metadata accessor for CUManualClock.WakeUp() - 8);
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

unint64_t sub_247BED0D8()
{
  result = qword_27EE5E268;
  if (!qword_27EE5E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E268);
  }

  return result;
}

unint64_t sub_247BED130()
{
  result = qword_27EE5E270;
  if (!qword_27EE5E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E270);
  }

  return result;
}

unint64_t sub_247BED184()
{
  result = qword_27EE5E278;
  if (!qword_27EE5E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E278);
  }

  return result;
}

unint64_t sub_247BED1E0()
{
  result = qword_27EE5E280;
  if (!qword_27EE5E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E280);
  }

  return result;
}

void sub_247BED2BC()
{
  sub_247BED338();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_247BED338()
{
  if (!qword_27EE5E288)
  {
    v0 = sub_247BF6770();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE5E288);
    }
  }
}

__n128 sub_247BED39C@<Q0>(__n128 *a1@<X8>)
{
  swift_beginAccess();
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t sub_247BED3E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CUManualClock.WakeUp();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_247BED44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for CUManualClock.WakeUp();
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_15:
  if (a3 >= 1 && v17 >= 1)
  {
    result = sub_247BEB97C(a4, v15);
    if (v12 < v17)
    {
      goto LABEL_25;
    }
  }

  return sub_247BED5C0(a4);
}

uint64_t sub_247BED5C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E260, &qword_247BFD080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247BED7DC()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_247BED818()
{
  type metadata accessor for CUAsyncSerialQueue.DefaultActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_27EE61D38 = v0;
  return result;
}

uint64_t CUAsyncSerialQueue.OrderingPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_247BF7460();
  MEMORY[0x24C1B4F40](v1);
  return sub_247BF74A0();
}

uint64_t CUAsyncSerialQueue.unownedExecutor.getter()
{
  if (*(v0 + 32))
  {
    return sub_247BF6A90();
  }

  if (qword_27EE61D30 != -1)
  {
    swift_once();
  }

  return qword_27EE61D38;
}

uint64_t CUAsyncSerialQueue.__allocating_init(dispatchQueue:ordering:)(uint64_t a1, char *a2)
{
  result = swift_allocObject();
  v5 = *a2;
  v6 = MEMORY[0x277D84F90];
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 24) = v6;
  *(result + 32) = a1;
  *(result + 16) = v5;
  return result;
}

uint64_t CUAsyncSerialQueue.init(dispatchQueue:ordering:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x277D84F90];
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 24) = v4;
  *(v2 + 32) = a1;
  *(v2 + 16) = v3;
  return v2;
}

uint64_t CUAsyncSerialQueue.run<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *v3;
  v4[9] = sub_247BF0FEC(&qword_27EE5E298, a2, type metadata accessor for CUAsyncSerialQueue);
  v7 = sub_247BF6740();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x2822009F8](sub_247BEDAE4, v7, v6);
}

uint64_t sub_247BEDAE4()
{
  v1 = v0[8];
  v2 = swift_beginAccess();
  v10 = *(*(v1 + 24) + 16);
  v11 = v0[8];
  if (v10 || (*(v11 + 40) & 1) != 0)
  {
    v12 = *(v11 + 48);
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }

    else
    {
      v13 = v0[9];
      *(v11 + 48) = v12 + 1;
      v14 = swift_task_alloc();
      v0[12] = v14;
      *(v14 + 16) = v11;
      *(v14 + 24) = v12;
      v15 = swift_task_alloc();
      v0[13] = v15;
      *(v15 + 16) = v11;
      *(v15 + 24) = v12;
      v16 = *(MEMORY[0x277D85A10] + 4);
      v2 = swift_task_alloc();
      v0[14] = v2;
      *v2 = v0;
      v2[1] = sub_247BEDD64;
      v3 = &unk_247BFD2C0;
      v5 = sub_247BEEEB4;
      v9 = MEMORY[0x277D84F78] + 8;
      v4 = v14;
      v6 = v15;
      v7 = v11;
      v8 = v13;
    }

    return MEMORY[0x282200830](v2, v3, v4, v5, v6, v7, v8, v9);
  }

  else
  {
    *(v11 + 40) = 1;
    sub_247BF6820();
    v22 = (v0[6] + *v0[6]);
    v17 = *(v0[6] + 4);
    v18 = swift_task_alloc();
    v0[16] = v18;
    *v18 = v0;
    v18[1] = sub_247BEDFE4;
    v19 = v0[7];
    v20 = v0[5];

    return v22(v20);
  }
}

uint64_t sub_247BEDD64()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v10 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_247BEE184;
  }

  else
  {
    v8 = v2[12];
    v7 = v2[13];

    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_247BEDE88;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_247BEDE88()
{
  if (*(v0[8] + 40) != 1)
  {
    __break(1u);
  }

  v1 = v0[15];
  sub_247BF6820();
  if (v1)
  {
    sub_247BEF2D0(v0[8]);
    v2 = v0[1];

    return v2();
  }

  else
  {
    v8 = (v0[6] + *v0[6]);
    v4 = *(v0[6] + 4);
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_247BEDFE4;
    v6 = v0[7];
    v7 = v0[5];

    return v8(v7);
  }
}

uint64_t sub_247BEDFE4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_247BEE1F0;
  }

  else
  {
    v7 = sub_247BEE120;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_247BEE120()
{
  sub_247BEF2D0(*(v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247BEE184()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[15];
  v4 = v0[1];

  return v4();
}

uint64_t sub_247BEE1F0()
{
  sub_247BEF2D0(v0[8]);
  v1 = v0[17];
  v2 = v0[1];

  return v2();
}

uint64_t sub_247BEE278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  type metadata accessor for CUAsyncSerialQueue();
  v3[4] = sub_247BF0FEC(&qword_27EE5E298, v4, type metadata accessor for CUAsyncSerialQueue);
  v6 = sub_247BF6740();
  v3[5] = v6;
  v3[6] = v5;

  return MEMORY[0x2822009F8](sub_247BEE334, v6, v5);
}

uint64_t sub_247BEE334()
{
  sub_247BF6820();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_247BEE478;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, v3, v1, 0x293A5F286E7572, 0xE700000000000000, sub_247BF10A4, v4, v7);
}

uint64_t sub_247BEE478()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = v2[5];
    v5 = v2[6];
    v6 = sub_247BEE594;
  }

  else
  {
    v7 = v2[7];

    v4 = v2[5];
    v5 = v2[6];
    v6 = sub_247BEB654;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_247BEE594()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

uint64_t sub_247BEE5F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_247B95F40;

  return sub_247BEE278(v4, v2, v3);
}

uint64_t sub_247BEE690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v37 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408);
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = sub_247BF67E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  type metadata accessor for CUAsyncSerialQueue();
  sub_247BF0FEC(&qword_27EE5E298, v19, type metadata accessor for CUAsyncSerialQueue);
  sub_247BF6740();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = (v12 + 32);
  if (*(a2 + 16))
  {
    sub_247BF6810();
    v21 = *(v4 + 48);
    v22 = *(v4 + 64);
    *v8 = v36;
    (*v20)(&v8[v21], v16, v11);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2B8, &qword_247BFD418);
    (*(*(v23 - 8) + 16))(&v8[v22], v37, v23);
    swift_beginAccess();
    v24 = *(a2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 24) = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_247BF0B3C(0, v24[2] + 1, 1, v24);
      *(a2 + 24) = v24;
    }

    v27 = v24[2];
    v26 = v24[3];
    if (v27 >= v26 >> 1)
    {
      v24 = sub_247BF0B3C(v26 > 1, v27 + 1, 1, v24);
    }

    v24[2] = v27 + 1;
    sub_247BF1034(v8, v24 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v27);
    *(a2 + 24) = v24;
    swift_beginAccess();
    sub_247BEEB10((a2 + 24));
    return swift_endAccess();
  }

  else
  {
    sub_247BF67C0();
    v29 = *(v4 + 48);
    v30 = *(v4 + 64);
    *v10 = v36;
    (*v20)(&v10[v29], v18, v11);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2B8, &qword_247BFD418);
    (*(*(v31 - 8) + 16))(&v10[v30], v37, v31);
    swift_beginAccess();
    v32 = *(a2 + 24);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 24) = v32;
    if ((v33 & 1) == 0)
    {
      v32 = sub_247BF0B3C(0, v32[2] + 1, 1, v32);
      *(a2 + 24) = v32;
    }

    v35 = v32[2];
    v34 = v32[3];
    if (v35 >= v34 >> 1)
    {
      v32 = sub_247BF0B3C(v34 > 1, v35 + 1, 1, v32);
    }

    v32[2] = v35 + 1;
    result = sub_247BF1034(v10, v32 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v35);
    *(a2 + 24) = v32;
  }

  return result;
}

uint64_t sub_247BEEB10(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_247BF0D2C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_247BEF878(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_247BEEBC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - v9;
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = sub_247BF0FEC(&qword_27EE5DD08, 255, sub_247BA0E68);
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_247BF67E0();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v10, 1, 1, v13);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_247BC5B0C(v10, v8, &qword_27EE5DD00, &qword_247BFA890);
  v16 = (*(v14 + 48))(v8, 1, v13);
  v17 = v11;

  if (v16 == 1)
  {
    sub_247B9CAD0(v8, &qword_27EE5DD00, &qword_247BFA890);
  }

  else
  {
    sub_247BF67D0();
    (*(v14 + 8))(v8, v13);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = &unk_247BFD438;
  *(v18 + 24) = v15;
  v19 = v17;

  if (v11 != 1)
  {
    v21[0] = 6;
    v21[1] = 0;
    v21[2] = v11;
    v21[3] = v12;
  }

  swift_task_create();
  sub_247B9CAD0(v10, &qword_27EE5DD00, &qword_247BFA890);
}

uint64_t sub_247BEEEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  type metadata accessor for CUAsyncSerialQueue();
  sub_247BF0FEC(&qword_27EE5E298, v4, type metadata accessor for CUAsyncSerialQueue);
  v6 = sub_247BF6740();

  return MEMORY[0x2822009F8](sub_247BEEF74, v6, v5);
}

uint64_t sub_247BEEF74()
{
  v1 = v0[2];
  sub_247BEEFD4(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_247BEEFD4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2B8, &qword_247BFD418);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v21 - v5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408);
  v6 = *(v21 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v21);
  v9 = &v21 - v8;
  swift_beginAccess();
  v10 = *(v1 + 24);
  v11 = *(v10 + 16);

  if (!v11)
  {
  }

  v13 = 0;
  while (v13 < *(v10 + 16))
  {
    sub_247BC5B0C(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v9, &qword_27EE5E2A8, &qword_247BFD408);
    v14 = *v9;
    result = sub_247B9CAD0(v9, &qword_27EE5E2A8, &qword_247BFD408);
    if (v14 == a1)
    {

      sub_247BEF5C4(v13, v9);
      v15 = v22;
      v16 = *(v21 + 48);
      v18 = v23;
      v17 = v24;
      (*(v23 + 32))(v22, &v9[*(v21 + 64)], v24);
      v19 = sub_247BF67E0();
      (*(*(v19 - 8) + 8))(&v9[v16], v19);
      sub_247BF6780();
      sub_247BF0FEC(&qword_27EE5E2C8, 255, MEMORY[0x277D85678]);
      v20 = swift_allocError();
      sub_247BF62D0();
      v25 = v20;
      sub_247BF6750();
      return (*(v18 + 8))(v15, v17);
    }

    if (v11 == ++v13)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_247BEF2D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2B0, &qword_247BFD410);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2B8, &qword_247BFD418);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v26 - v15;
  if (*(a1 + 40) == 1)
  {
    result = swift_beginAccess();
    v17 = *(a1 + 24);
    if (*(v17 + 16))
    {
      sub_247BC5B0C(v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v6, &qword_27EE5E2A8, &qword_247BFD408);
      sub_247BF0E94(0, 1);
      v18 = *(v2 + 48);
      v26 = *(v2 + 64);
      v19 = *(v7 + 48);
      v20 = *(v7 + 64);
      v21 = sub_247BF67E0();
      v22 = *(v21 - 8);
      (*(v22 + 32))(&v10[v19], &v6[v18], v21);
      v23 = v6;
      v24 = v12;
      v25 = *(v12 + 32);
      v25(&v10[v20], &v23[v26], v11);
      v25(v16, &v10[v20], v11);
      (*(v22 + 8))(&v10[v19], v21);
      sub_247BF6760();
      return (*(v24 + 8))(v16, v11);
    }

    else
    {
      *(a1 + 40) = 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

size_t sub_247BEF5C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_247BF0D2C(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_247BF1034(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t CUAsyncSerialQueue.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t CUAsyncSerialQueue.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_247BEF75C()
{
  result = qword_27EE5E2A0;
  if (!qword_27EE5E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E2A0);
  }

  return result;
}

uint64_t sub_247BEF7B0()
{
  if (*(v0 + 32))
  {
    return sub_247BF6A90();
  }

  if (qword_27EE61D30 != -1)
  {
    swift_once();
  }

  return qword_27EE61D38;
}

uint64_t sub_247BEF878(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_247BF6FC0();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408);
        v6 = sub_247BF66E0();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_247BEFC0C(v8, v9, a1, v4);
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
    return sub_247BEF9BC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_247BEF9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408);
  v8 = *(*(v38 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v38);
  v37 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v35 = -v19;
    v36 = v18;
    v21 = a1 - a3;
    v29 = v19;
    v22 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v22;
    v32 = v21;
    v23 = v38;
    while (1)
    {
      sub_247BC5B0C(v22, v17, &qword_27EE5E2A8, &qword_247BFD408);
      sub_247BC5B0C(v20, v13, &qword_27EE5E2A8, &qword_247BFD408);
      v24 = *(v23 + 48);
      v25 = sub_247BF67B0();
      sub_247B9CAD0(v13, &qword_27EE5E2A8, &qword_247BFD408);
      result = sub_247B9CAD0(v17, &qword_27EE5E2A8, &qword_247BFD408);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v21 = v32 - 1;
        v22 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v26 = v37;
      sub_247BF1034(v22, v37);
      v23 = v38;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_247BF1034(v26, v20);
      v20 += v35;
      v22 += v35;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_247BEFC0C(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v108 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v112 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v120 = &v104 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v122 = &v104 - v14;
  result = MEMORY[0x28223BE20](v13);
  v121 = &v104 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_99:
    a4 = *v108;
    if (!*v108)
    {
      goto LABEL_139;
    }

    v6 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v109;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v6;
LABEL_102:
      v124 = result;
      v6 = *(result + 16);
      if (v6 >= 2)
      {
        v100 = v7;
        while (*a3)
        {
          v101 = *(result + 16 * v6);
          v102 = result;
          v7 = *(result + 16 * (v6 - 1) + 40);
          sub_247BF0534(*a3 + *(v100 + 72) * v101, *a3 + *(v100 + 72) * *(result + 16 * (v6 - 1) + 32), *a3 + *(v100 + 72) * v7, a4);
          if (v33)
          {
          }

          if (v7 < v101)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v102 = sub_247BC04D0(v102);
          }

          if (v6 - 2 >= *(v102 + 2))
          {
            goto LABEL_127;
          }

          v103 = &v102[16 * v6];
          *v103 = v101;
          *(v103 + 1) = v7;
          v124 = v102;
          sub_247BC0444(v6 - 1);
          result = v124;
          v6 = *(v124 + 16);
          if (v6 <= 1)
          {
          }
        }

        goto LABEL_137;
      }
    }

LABEL_133:
    result = sub_247BC04D0(v6);
    goto LABEL_102;
  }

  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v107 = a4;
  v123 = v6;
  v110 = a3;
  v105 = v7;
  while (1)
  {
    v20 = v18 + 1;
    v113 = v19;
    if (v18 + 1 >= v17)
    {
      v32 = v18 + 1;
      v33 = v109;
    }

    else
    {
      v21 = v18;
      v6 = *a3;
      v22 = *(v7 + 72);
      v23 = *a3 + v22 * v20;
      v24 = v121;
      sub_247BC5B0C(v23, v121, &qword_27EE5E2A8, &qword_247BFD408);
      v25 = v122;
      sub_247BC5B0C(v6 + v22 * v21, v122, &qword_27EE5E2A8, &qword_247BFD408);
      v26 = *(v123 + 48);
      LODWORD(v118) = sub_247BF67B0();
      sub_247B9CAD0(v25, &qword_27EE5E2A8, &qword_247BFD408);
      result = sub_247B9CAD0(v24, &qword_27EE5E2A8, &qword_247BFD408);
      v106 = v21;
      v27 = v21 + 2;
      v119 = v22;
      v28 = v6 + v22 * (v21 + 2);
      while (v17 != v27)
      {
        v29 = v121;
        sub_247BC5B0C(v28, v121, &qword_27EE5E2A8, &qword_247BFD408);
        v30 = v122;
        sub_247BC5B0C(v23, v122, &qword_27EE5E2A8, &qword_247BFD408);
        v31 = *(v123 + 48);
        v6 = sub_247BF67B0() & 1;
        sub_247B9CAD0(v30, &qword_27EE5E2A8, &qword_247BFD408);
        result = sub_247B9CAD0(v29, &qword_27EE5E2A8, &qword_247BFD408);
        ++v27;
        v28 += v119;
        v23 += v119;
        if ((v118 & 1) != v6)
        {
          v32 = v27 - 1;
          goto LABEL_12;
        }
      }

      v32 = v17;
LABEL_12:
      v18 = v106;
      a4 = v107;
      v33 = v109;
      a3 = v110;
      v7 = v105;
      if ((v118 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v32 < v106)
      {
        goto LABEL_130;
      }

      if (v106 < v32)
      {
        v34 = v119 * (v32 - 1);
        v35 = v32 * v119;
        v118 = v32;
        v36 = v32;
        v37 = v106;
        v38 = v106 * v119;
        v6 = v123;
        do
        {
          if (v37 != --v36)
          {
            v39 = *v110;
            if (!*v110)
            {
              goto LABEL_136;
            }

            sub_247BF1034(v39 + v38, v112);
            if (v38 < v34 || v39 + v38 >= (v39 + v35))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v38 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_247BF1034(v112, v39 + v34);
            v6 = v123;
          }

          ++v37;
          v34 -= v119;
          v35 -= v119;
          v38 += v119;
        }

        while (v37 < v36);
        v33 = v109;
        a3 = v110;
        v7 = v105;
        v18 = v106;
        a4 = v107;
        v32 = v118;
      }

      else
      {
LABEL_25:
        v6 = v123;
      }
    }

    v40 = a3[1];
    if (v32 >= v40)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v32, v18))
    {
      goto LABEL_129;
    }

    if (v32 - v18 >= a4)
    {
LABEL_35:
      v41 = v32;
      if (v32 < v18)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v18, a4))
    {
      goto LABEL_131;
    }

    if ((v18 + a4) < v40)
    {
      v40 = v18 + a4;
    }

    if (v40 < v18)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v32 == v40)
    {
      goto LABEL_35;
    }

    v114 = v40;
    v109 = v33;
    v87 = *a3;
    v88 = *(v7 + 72);
    v89 = *a3 + v88 * (v32 - 1);
    v90 = -v88;
    v106 = v18;
    v91 = v18 - v32;
    v111 = v88;
    v119 = v87;
    a4 = v87 + v32 * v88;
LABEL_89:
    v117 = v89;
    v118 = v32;
    v115 = a4;
    v116 = v91;
    v92 = v89;
LABEL_90:
    v93 = v121;
    sub_247BC5B0C(a4, v121, &qword_27EE5E2A8, &qword_247BFD408);
    v94 = v122;
    sub_247BC5B0C(v92, v122, &qword_27EE5E2A8, &qword_247BFD408);
    v95 = *(v6 + 48);
    v96 = sub_247BF67B0();
    sub_247B9CAD0(v94, &qword_27EE5E2A8, &qword_247BFD408);
    result = sub_247B9CAD0(v93, &qword_27EE5E2A8, &qword_247BFD408);
    if (v96)
    {
      break;
    }

    v6 = v123;
LABEL_88:
    v32 = v118 + 1;
    v89 = v117 + v111;
    v91 = v116 - 1;
    a4 = v115 + v111;
    if (v118 + 1 != v114)
    {
      goto LABEL_89;
    }

    v33 = v109;
    a3 = v110;
    v7 = v105;
    v18 = v106;
    v41 = v114;
    if (v114 < v106)
    {
      goto LABEL_128;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v19 = v113;
    }

    else
    {
      result = sub_247BBE178(0, *(v113 + 2) + 1, 1, v113);
      v19 = result;
    }

    v43 = *(v19 + 2);
    v42 = *(v19 + 3);
    a4 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_247BBE178((v42 > 1), v43 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = a4;
    v44 = &v19[16 * v43];
    *(v44 + 4) = v18;
    *(v44 + 5) = v41;
    v114 = v41;
    if (!*v108)
    {
      goto LABEL_138;
    }

    if (v43)
    {
      v45 = *v108;
      v6 = v123;
      while (1)
      {
        v46 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v47 = *(v19 + 4);
          v48 = *(v19 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_56:
          if (v50)
          {
            goto LABEL_117;
          }

          v63 = &v19[16 * a4];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_120;
          }

          v69 = &v19[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_124;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v73 = &v19[16 * a4];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_70:
        if (v68)
        {
          goto LABEL_119;
        }

        v76 = &v19[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_122;
        }

        if (v79 < v67)
        {
          goto LABEL_4;
        }

LABEL_77:
        v6 = v46 - 1;
        if (v46 - 1 >= a4)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*a3)
        {
          goto LABEL_135;
        }

        v84 = v19;
        a4 = *&v19[16 * v6 + 32];
        v85 = *&v19[16 * v46 + 40];
        sub_247BF0534(*a3 + *(v7 + 72) * a4, *a3 + *(v7 + 72) * *&v19[16 * v46 + 32], *a3 + *(v7 + 72) * v85, v45);
        if (v33)
        {
        }

        if (v85 < a4)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_247BC04D0(v84);
        }

        if (v6 >= *(v84 + 2))
        {
          goto LABEL_114;
        }

        v86 = &v84[16 * v6];
        *(v86 + 4) = a4;
        *(v86 + 5) = v85;
        v124 = v84;
        result = sub_247BC0444(v46);
        v19 = v124;
        a4 = *(v124 + 16);
        v6 = v123;
        if (a4 <= 1)
        {
          goto LABEL_4;
        }
      }

      v51 = &v19[16 * a4 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_115;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_116;
      }

      v58 = &v19[16 * a4];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_118;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_121;
      }

      if (v62 >= v54)
      {
        v80 = &v19[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_125;
        }

        if (v49 < v83)
        {
          v46 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v6 = v123;
LABEL_4:
    v109 = v33;
    v17 = a3[1];
    v18 = v114;
    a4 = v107;
    if (v114 >= v17)
    {
      goto LABEL_99;
    }
  }

  if (v119)
  {
    v97 = v120;
    sub_247BF1034(a4, v120);
    v6 = v123;
    swift_arrayInitWithTakeFrontToBack();
    sub_247BF1034(v97, v92);
    v92 += v90;
    a4 += v90;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_247BF0534(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = a3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408);
  v7 = *(*(v47 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v47);
  v46 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = v48 - a2;
  if (v48 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v16 = (a2 - a1) / v14;
  v51 = a1;
  v50 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v18 < 1)
    {
      v27 = a4 + v18;
    }

    else
    {
      v25 = -v14;
      v26 = a4 + v18;
      v27 = a4 + v18;
      v43 = a4;
      v44 = -v14;
      v42 = a1;
      do
      {
        v40 = v27;
        v28 = a2;
        v29 = a2 + v25;
        v45 = v28;
        while (1)
        {
          v31 = v48;
          if (v28 <= a1)
          {
            v51 = v28;
            v49 = v40;
            goto LABEL_60;
          }

          v41 = v27;
          v48 += v25;
          v32 = v26 + v25;
          sub_247BC5B0C(v32, v12, &qword_27EE5E2A8, &qword_247BFD408);
          v33 = v29;
          v34 = v29;
          v35 = v12;
          v36 = v46;
          sub_247BC5B0C(v34, v46, &qword_27EE5E2A8, &qword_247BFD408);
          v37 = *(v47 + 48);
          v38 = sub_247BF67B0();
          v39 = v36;
          v12 = v35;
          sub_247B9CAD0(v39, &qword_27EE5E2A8, &qword_247BFD408);
          sub_247B9CAD0(v35, &qword_27EE5E2A8, &qword_247BFD408);
          if (v38)
          {
            break;
          }

          v27 = v32;
          if (v31 < v26 || v48 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v33;
            a1 = v42;
          }

          else
          {
            v29 = v33;
            a1 = v42;
            if (v31 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v32;
          v30 = v32 > v43;
          v25 = v44;
          v28 = v45;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_59;
          }
        }

        if (v31 < v45 || v48 >= v45)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v41;
          a1 = v42;
          v25 = v44;
        }

        else
        {
          v27 = v41;
          a1 = v42;
          a2 = v33;
          v25 = v44;
          if (v31 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v43);
    }

LABEL_59:
    v51 = a2;
    v49 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v17;
    v49 = a4 + v17;
    if (v17 >= 1 && a2 < v48)
    {
      v44 = v14;
      do
      {
        sub_247BC5B0C(a2, v12, &qword_27EE5E2A8, &qword_247BFD408);
        v20 = v46;
        sub_247BC5B0C(a4, v46, &qword_27EE5E2A8, &qword_247BFD408);
        v21 = *(v47 + 48);
        v22 = sub_247BF67B0();
        sub_247B9CAD0(v20, &qword_27EE5E2A8, &qword_247BFD408);
        sub_247B9CAD0(v12, &qword_27EE5E2A8, &qword_247BFD408);
        if (v22)
        {
          v23 = a2 + v14;
          if (a1 < a2 || a1 >= v23)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v23;
        }

        else
        {
          v24 = a4 + v14;
          if (a1 < a4 || a1 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50 = v24;
          a4 = v24;
        }

        v14 = v44;
        a1 += v44;
        v51 = a1;
      }

      while (a4 < v45 && a2 < v48);
    }
  }

LABEL_60:
  sub_247BF0A4C(&v51, &v50, &v49);
  return 1;
}

uint64_t sub_247BF0A4C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_247BF0B3C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2C0, &unk_247BFD420);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408) - 8);
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

unint64_t sub_247BF0D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_247BF0E94(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_247BF0B3C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_247BF0D40(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_247BF0F54()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_247B95F40;

  return sub_247BEEEBC(v4, v2, v3);
}

uint64_t sub_247BF0FEC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_247BF1034(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247BF10AC()
{
  v0 = sub_247BF60B0();
  __swift_allocate_value_buffer(v0, qword_27EE61F48);
  __swift_project_value_buffer(v0, qword_27EE61F48);
  v1 = sub_247BA120C();
  v2 = *v1;
  v3 = v1[1];

  return sub_247BF60A0();
}

uint64_t CULocaleManager.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager_locale;
  v4 = sub_247BF5FB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_247BF11B4()
{
  swift_getKeyPath();
  sub_247BF3254(&qword_27EE5E2D0, type metadata accessor for CULocaleManager);
  sub_247BF6030();

  v1 = *(v0 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager___localeChangedObserver);
  return swift_unknownObjectRetain();
}

uint64_t sub_247BF1260@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_247BF3254(&qword_27EE5E2D0, type metadata accessor for CULocaleManager);
  sub_247BF6030();

  *a2 = *(v3 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager___localeChangedObserver);
  return swift_unknownObjectRetain();
}

uint64_t sub_247BF1314(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_247BF3254(&qword_27EE5E2D0, type metadata accessor for CULocaleManager);
  sub_247BF6020();
}

uint64_t type metadata accessor for CULocaleManager()
{
  result = qword_27EE62010;
  if (!qword_27EE62010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id CULocaleManager.preferredUnitSpeed.getter()
{
  swift_getKeyPath();
  sub_247BF3254(&qword_27EE5E2D0, type metadata accessor for CULocaleManager);
  sub_247BF6030();

  v1 = *(v0 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager__preferredUnitSpeed);

  return v1;
}

id sub_247BF14E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_247BF3254(&qword_27EE5E2D0, type metadata accessor for CULocaleManager);
  sub_247BF6030();

  v4 = *(v3 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager__preferredUnitSpeed);
  *a2 = v4;

  return v4;
}

void sub_247BF15D0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager__preferredUnitSpeed;
  v5 = *(v1 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager__preferredUnitSpeed);
  sub_247BC3818(0, &qword_27EE5E2D8, 0x277CCAE40);
  v6 = v5;
  v7 = sub_247BF6AA0();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_247BF3254(&qword_27EE5E2D0, type metadata accessor for CULocaleManager);
    sub_247BF6020();
  }
}

void sub_247BF1744()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager__preferredUnitSpeed);
  *(v1 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager__preferredUnitSpeed) = v2;
  v4 = v2;
}

uint64_t CULocaleManager.preferredUnitSpeedLabel.getter()
{
  v1 = v0;
  sub_247BC3818(0, &qword_27EE5E2D8, 0x277CCAE40);
  swift_getKeyPath();
  sub_247BF3254(&qword_27EE5E2D0, type metadata accessor for CULocaleManager);
  sub_247BF6030();

  v2 = OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager__preferredUnitSpeed;
  v3 = *(v0 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager__preferredUnitSpeed);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 milesPerHour];
  LOBYTE(v4) = sub_247BF6AA0();

  swift_getKeyPath();
  sub_247BF6030();

  if (v4)
  {
    v7 = [*(v1 + v2) symbol];
    sub_247BF6480();

    v8 = sub_247BF64A0();
  }

  else
  {
    v9 = [*(v1 + v2) symbol];
    v8 = sub_247BF6480();
  }

  return v8;
}

uint64_t CULocaleManager.__allocating_init(locale:autoStart:)(uint64_t a1, int a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  CULocaleManager.init(locale:autoStart:)(a1, a2);
  return v7;
}

uint64_t CULocaleManager.init(locale:autoStart:)(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v30) = a2;
  v27 = sub_247BF6280();
  v29 = *(v27 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_247BF62A0();
  v26 = *(v28 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E238, &qword_247BFCE38);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25 - v13;
  *(v2 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager___localeChangedObserver) = 0;
  sub_247BF6040();
  v15 = OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager_locale;
  v16 = sub_247BF5FB0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v18(v3 + v15, a1, v16);
  v31 = a1;
  v18(v14, a1, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  v19 = _s14CoreUtilsSwift15CULocaleManagerC26preferredUnitSpeedUncached6localeSo06NSUnitH0C10Foundation6LocaleVSg_tFZ_0(v14);
  sub_247BE9724(v14);
  *(v3 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager__preferredUnitSpeed) = v19;
  if (v30)
  {
    sub_247BC3818(0, &qword_27EE5DCE0, 0x277D85C78);
    v30 = sub_247BF6A20();
    v20 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_247BF2E3C;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_247BC9C8C;
    aBlock[3] = &block_descriptor_1;
    v21 = _Block_copy(aBlock);

    sub_247BF6290();
    v32 = MEMORY[0x277D84F90];
    sub_247BF3254(&qword_27EE5E158, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E160, &qword_247BFC460);
    sub_247BF2F18();
    v22 = v27;
    sub_247BF6BD0();
    v23 = v30;
    MEMORY[0x24C1B4500](0, v10, v7, v21);
    _Block_release(v21);

    (*(v17 + 8))(v31, v16);
    (*(v29 + 8))(v7, v22);
    (*(v26 + 8))(v10, v28);
  }

  else
  {
    (*(v17 + 8))(v31, v16);
  }

  return v3;
}

Swift::Void __swiftcall CULocaleManager.start()()
{
  v1 = v0;
  v2 = *v0;
  swift_getKeyPath();
  aBlock[0] = v0;
  sub_247BF3254(&qword_27EE5E2D0, type metadata accessor for CULocaleManager);
  sub_247BF6030();

  if (!*(v0 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager___localeChangedObserver))
  {
    if (qword_27EE61F40 != -1)
    {
      swift_once();
    }

    v3 = sub_247BF60B0();
    __swift_project_value_buffer(v3, qword_27EE61F48);
    v4 = sub_247BF6090();
    v5 = sub_247BF6A00();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_247B92000, v4, v5, "Start", v6, 2u);
      MEMORY[0x24C1B5910](v6, -1, -1);
    }

    v7 = [objc_opt_self() defaultCenter];
    v8 = *MEMORY[0x277CBE620];
    v9 = [objc_opt_self() mainQueue];
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v2;
    aBlock[4] = sub_247BF2F7C;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_247BF2754;
    aBlock[3] = &block_descriptor_9;
    v12 = _Block_copy(aBlock);

    [v7 addObserverForName:v8 object:0 queue:v9 usingBlock:v12];
    _Block_release(v12);

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    aBlock[0] = v1;
    sub_247BF6020();

    swift_unknownObjectRelease();
  }
}

uint64_t CULocaleManager.deinit()
{
  v1 = v0;
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager___observationRegistrar;
  sub_247BF3254(&qword_27EE5E2D0, type metadata accessor for CULocaleManager);
  sub_247BF6030();

  v3 = OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager___localeChangedObserver;
  v4 = *(v0 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager___localeChangedObserver);
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver_];
    swift_unknownObjectRelease();
  }

  v7 = OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager_locale;
  v8 = sub_247BF5FB0();
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  v9 = *(v1 + v3);
  swift_unknownObjectRelease();

  v10 = sub_247BF6050();
  (*(*(v10 - 8) + 8))(v1 + v2, v10);
  return v1;
}

uint64_t CULocaleManager.__deallocating_deinit()
{
  CULocaleManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_247BF2380()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E238, &qword_247BFCE38);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  sub_247BF67A0();
  sub_247BF6790();
  sub_247BF6740();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getKeyPath();
    v11 = v5;
    sub_247BF3254(&qword_27EE5E2D0, type metadata accessor for CULocaleManager);
    sub_247BF6030();

    if (*(v5 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager___localeChangedObserver))
    {
      v6 = OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager_locale;
      v7 = sub_247BF5FB0();
      v8 = *(v7 - 8);
      (*(v8 + 16))(v3, v5 + v6, v7);
      (*(v8 + 56))(v3, 0, 1, v7);
      v9 = _s14CoreUtilsSwift15CULocaleManagerC26preferredUnitSpeedUncached6localeSo06NSUnitH0C10Foundation6LocaleVSg_tFZ_0(v3);
      sub_247BE9724(v3);
      sub_247BF15D0(v9);
    }
  }
}

uint64_t sub_247BF25CC(uint64_t a1, uint64_t a2)
{
  sub_247BF6790();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_247BC1894();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_247BF6CF0();
    MEMORY[0x24C1B4020](0xD00000000000003FLL, 0x8000000247C01450);
    v8 = sub_247BF75C0();
    MEMORY[0x24C1B4020](v8);

    MEMORY[0x24C1B4020](46, 0xE100000000000000);
    result = sub_247BF6E80();
    __break(1u);
  }

  return result;
}

uint64_t sub_247BF2754(uint64_t a1)
{
  v2 = sub_247BF5D80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_247BF5D50();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

Swift::Void __swiftcall CULocaleManager.stop()()
{
  v1 = v0;
  swift_getKeyPath();
  sub_247BF3254(&qword_27EE5E2D0, type metadata accessor for CULocaleManager);
  sub_247BF6030();

  v2 = *(v0 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager___localeChangedObserver);
  if (v2)
  {
    v3 = qword_27EE61F40;
    v4 = *(v1 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager___localeChangedObserver);
    swift_unknownObjectRetain();
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_247BF60B0();
    __swift_project_value_buffer(v5, qword_27EE61F48);
    v6 = sub_247BF6090();
    v7 = sub_247BF6A00();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_247B92000, v6, v7, "Cancel", v8, 2u);
      MEMORY[0x24C1B5910](v8, -1, -1);
    }

    v9 = [objc_opt_self() defaultCenter];
    [v9 removeObserver_];

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_247BF6020();

    swift_unknownObjectRelease();
  }
}

id _s14CoreUtilsSwift15CULocaleManagerC26preferredUnitSpeedUncached6localeSo06NSUnitH0C10Foundation6LocaleVSg_tFZ_0(uint64_t a1)
{
  v2 = sub_247BF5F70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E238, &qword_247BFCE38);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - v12;
  v14 = sub_247BF5FB0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247BF31E4(a1, v13);
  v19 = *(v15 + 48);
  if (v19(v13, 1, v14) == 1)
  {
    sub_247BF5FA0();
    if (v19(v13, 1, v14) != 1)
    {
      sub_247BE9724(v13);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
  }

  sub_247BF5F80();
  (*(v15 + 8))(v18, v14);
  sub_247BF5F40();
  sub_247BF3254(&qword_27EE5E2E0, MEMORY[0x277CC9688]);
  v20 = sub_247BF6460();
  v21 = *(v3 + 8);
  v21(v7, v2);
  if (v20 & 1) != 0 || (sub_247BF5F50(), v22 = sub_247BF6460(), v21(v7, v2), (v22))
  {
    v21(v9, v2);
    v23 = objc_opt_self();
    v24 = &selRef_milesPerHour;
  }

  else
  {
    sub_247BF5F60();
    v25 = sub_247BF6460();
    v21(v7, v2);
    v21(v9, v2);
    v23 = objc_opt_self();
    v24 = &selRef_milesPerHour;
    if (v25)
    {
      v24 = &selRef_kilometersPerHour;
    }
  }

  v26 = [v23 *v24];

  return v26;
}

uint64_t sub_247BF2E3C()
{
  sub_247BF67A0();
  sub_247BF6790();
  sub_247BF6740();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    CULocaleManager.start()();
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_247BF2F18()
{
  result = qword_27EE5E168;
  if (!qword_27EE5E168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE5E160, &qword_247BFC460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E168);
  }

  return result;
}

uint64_t sub_247BF2F7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_247BF67A0();
  v3 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v5[2] = v3;
  v5[3] = v2;
  sub_247BF25CC(sub_247BF3174, v5);
}

uint64_t sub_247BF3064()
{
  result = sub_247BF5FB0();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_247BF6050();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_247BF31A0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager___localeChangedObserver);
  *(v1 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager___localeChangedObserver) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_247BF31E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E238, &qword_247BFCE38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247BF3254(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_247BF32BC()
{
  v0 = sub_247BF60B0();
  __swift_allocate_value_buffer(v0, qword_27EE62028);
  __swift_project_value_buffer(v0, qword_27EE62028);
  v1 = sub_247BA120C();
  v2 = *v1;
  v3 = v1[1];

  return sub_247BF60A0();
}

uint64_t CUDistributedNotificationHandler.__allocating_init(name:sender:dispatchQueue:handler:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  return sub_247BF3354(a1, a2, a3, a4, a5, a6, a7, 1);
}

{
  return sub_247BF3354(a1, a2, a3, a4, a5, a6, a7, 0);
}

uint64_t sub_247BF3354(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, char a8)
{
  v15 = swift_allocObject();
  v16 = v15;
  v17 = *v15;
  *(v15 + 56) = a2;
  *(v15 + 64) = 0;
  *(v15 + 24) = a6;
  *(v15 + 32) = a7;
  *(v15 + 40) = a8 & 1;
  *(v15 + 48) = a1;
  v18 = v17;
  v39 = a5;
  if (a5)
  {
    *(v15 + 16) = a5;
    v19 = objc_allocWithZone(MEMORY[0x277CCABD8]);
    sub_247BF5424();

    v20 = a5;
    v21 = [v19 init];
    v22 = v21;
    if (v21)
    {
      [v21 setUnderlyingQueue_];
    }
  }

  else
  {
    *(v15 + 16) = 0;
    sub_247BF5424();

    v22 = 0;
  }

  if (qword_27EE62020 != -1)
  {
    swift_once();
  }

  v23 = sub_247BF60B0();
  __swift_project_value_buffer(v23, qword_27EE62028);

  v24 = sub_247BF6090();
  v25 = sub_247BF6A00();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = v18;
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v26 = 136315138;
    *(v26 + 4) = sub_247BBE628(a1, a2, aBlock);
    _os_log_impl(&dword_247B92000, v24, v25, "register: name=%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v29 = v28;
    v18 = v27;
    MEMORY[0x24C1B5910](v29, -1, -1);
    MEMORY[0x24C1B5910](v26, -1, -1);
  }

  v30 = [objc_opt_self() defaultCenter];
  v31 = sub_247BF6470();

  if (a4)
  {
    v32 = sub_247BF6470();
  }

  else
  {
    v32 = 0;
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = *(v18 + 80);
  v34[3] = *(v18 + 88);
  v34[4] = v33;
  aBlock[4] = sub_247BF542C;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247BF2754;
  aBlock[3] = &block_descriptor_2;
  v35 = _Block_copy(aBlock);

  v36 = [v30 addObserverForName:v31 object:v32 queue:v22 usingBlock:v35];
  sub_247BF4594();

  _Block_release(v35);
  swift_unknownObjectRelease();

  v37 = *(v16 + 64);
  *(v16 + 64) = v36;
  swift_unknownObjectRelease();
  return v16;
}

void sub_247BF3740(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_247BF5D80();
  v114 = *(v5 - 8);
  v6 = *(v114 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v98[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v109 = &v98[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v98[-v14];
  v16 = MEMORY[0x28223BE20](v13);
  v110 = &v98[-v17];
  v18 = *(v4 + 80);
  v112 = *(v18 - 8);
  v19 = v112[8];
  v20 = MEMORY[0x28223BE20](v16);
  v111 = &v98[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v98[-v22];
  MEMORY[0x28223BE20](v21);
  v113 = &v98[-v24];
  v25 = sub_247BF5D70();
  if (!v25)
  {
    goto LABEL_8;
  }

  v26 = v25;
  v119 = 0x64616F6C796170;
  v120 = 0xE700000000000000;
  sub_247BF6C70();
  if (!*(v26 + 16) || (v27 = sub_247BBEADC(v121), (v28 & 1) == 0))
  {

    sub_247BC5A5C(v121);
LABEL_8:
    v122 = 0u;
    v123 = 0u;
    goto LABEL_9;
  }

  sub_247B9B1AC(*(v26 + 56) + 32 * v27, &v122);
  sub_247BC5A5C(v121);

  if (!*(&v123 + 1))
  {
LABEL_9:
    sub_247B9CAD0(&v122, &unk_27EE5DDB0, &unk_247BFA900);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v106 = v15;
    v29 = *(v4 + 88);
    v30 = *(v29 + 48);
    v107 = v121[0];
    v108 = v121[1];
    v30();
    v103 = v29;
    v114 = v18;
    if (qword_27EE62020 != -1)
    {
      swift_once();
    }

    v49 = sub_247BF60B0();
    __swift_project_value_buffer(v49, qword_27EE62028);
    v51 = v112;
    v50 = v113;
    v52 = v112 + 2;
    v53 = v112[2];
    v54 = v114;
    v53(v23, v113, v114);
    v55 = sub_247BF6090();
    v56 = sub_247BF6A00();
    v57 = os_log_type_enabled(v55, v56);
    v102 = v52;
    v101 = v53;
    if (v57)
    {
      v58 = swift_slowAlloc();
      v100 = v58;
      v105 = swift_slowAlloc();
      v121[0] = v105;
      *v58 = 136315138;
      v59 = v111;
      v53(v111, v23, v54);
      v60 = v51[1];
      v60(v23, v54);
      v61 = *(v103 + 8);
      v99 = v56;
      v62 = sub_247BF6FD0();
      v64 = v63;
      v104 = v60;
      v60(v59, v54);
      v50 = v113;
      v65 = sub_247BBE628(v62, v64, v121);

      v66 = v100;
      *(v100 + 1) = v65;
      v67 = v66;
      _os_log_impl(&dword_247B92000, v55, v99, "received: %s", v66, 0xCu);
      v68 = v105;
      __swift_destroy_boxed_opaque_existential_1Tm(v105);
      MEMORY[0x24C1B5910](v68, -1, -1);
      MEMORY[0x24C1B5910](v67, -1, -1);
    }

    else
    {
      v104 = v51[1];
      v104(v23, v54);
    }

    v69 = v54;
    v70 = v2[4];
    v105 = v2[3];
    if (v2[5])
    {

      (v105)(v50);
      sub_247BC2AC4(v107, v108);
      sub_247BF4594();
    }

    else
    {
      v71 = v2[2];
      if (v71)
      {
        v72 = v50;
        v73 = sub_247BF67E0();
        v74 = *(v73 - 8);
        v75 = v110;
        (*(v74 + 56))(v110, 1, 1, v73);
        v76 = v111;
        v101(v111, v72, v69);
        v77 = (*(v51 + 80) + 48) & ~*(v51 + 80);
        v78 = swift_allocObject();
        v79 = v51;
        v80 = v78;
        v81 = v103;
        v78[2] = v69;
        v78[3] = v81;
        v78[4] = v105;
        v78[5] = v70;
        (v79[4])(v78 + v77, v76, v69);
        v82 = v106;
        sub_247BC5B0C(v75, v106, &qword_27EE5DD00, &qword_247BFA890);
        LODWORD(v82) = (*(v74 + 48))(v82, 1, v73);
        sub_247BF5424();
        v83 = v71;
        sub_247BF5424();
        if (v82 == 1)
        {
          sub_247B9CAD0(v106, &qword_27EE5DD00, &qword_247BFA890);
        }

        else
        {
          v92 = v106;
          sub_247BF67D0();
          (*(v74 + 8))(v92, v73);
        }

        v93 = v108;
        v94 = v107;
        v95 = sub_247BC2908();
        v96 = swift_allocObject();
        *(v96 + 16) = &unk_247BFD698;
        *(v96 + 24) = v80;
        v115 = 6;
        v116 = 0;
        v117 = v83;
        v118 = v95;
        v97 = v83;

        swift_task_create();
        sub_247B9CAD0(v110, &qword_27EE5DD00, &qword_247BFA890);

        sub_247BC2AC4(v94, v93);

        sub_247BF4594();
        v90 = v113;
        v91 = v114;
        goto LABEL_29;
      }

      v84 = sub_247BF67E0();
      v85 = v109;
      (*(*(v84 - 8) + 56))(v109, 1, 1, v84);
      v86 = v111;
      v101(v111, v50, v54);
      v87 = (*(v51 + 80) + 64) & ~*(v51 + 80);
      v88 = swift_allocObject();
      *(v88 + 2) = 0;
      *(v88 + 3) = 0;
      v89 = v103;
      *(v88 + 4) = v54;
      *(v88 + 5) = v89;
      *(v88 + 6) = v105;
      *(v88 + 7) = v70;
      (v51[4])(&v88[v87], v86, v54);
      sub_247BF5424();

      sub_247BF47C0(0, 0, v85, &unk_247BFD688, v88);
      sub_247BC2AC4(v107, v108);

      sub_247BF4594();
    }

    v90 = v50;
    v91 = v54;
LABEL_29:
    v104(v90, v91);
    return;
  }

LABEL_10:
  type metadata accessor for CUError();
  v31 = CUError.__allocating_init(_:_:_:)(-6705, 0x6F6C796170206F6ELL, 0xEF61746164206461, 0);
  swift_willThrow();
  v32 = v5;
  v33 = v8;
  v34 = v114;
  if (qword_27EE62020 != -1)
  {
    swift_once();
  }

  v35 = sub_247BF60B0();
  __swift_project_value_buffer(v35, qword_27EE62028);
  (*(v34 + 16))(v8, a1, v32);
  v36 = v31;
  v37 = sub_247BF6090();
  v38 = sub_247BF69F0();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v121[0] = v113;
    *v39 = 136315394;
    v40 = sub_247BF5D60();
    v41 = sub_247BF6480();
    v43 = v42;

    (*(v34 + 8))(v33, v32);
    v44 = sub_247BBE628(v41, v43, v121);

    *(v39 + 4) = v44;
    *(v39 + 12) = 2112;
    v45 = v31;
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 14) = v46;
    v47 = v112;
    *v112 = v46;
    _os_log_impl(&dword_247B92000, v37, v38, "### receive failed: name=%s, error=%@", v39, 0x16u);
    sub_247B9CAD0(v47, &qword_27EE5DF38, &qword_247BFBB18);
    MEMORY[0x24C1B5910](v47, -1, -1);
    v48 = v113;
    __swift_destroy_boxed_opaque_existential_1Tm(v113);
    MEMORY[0x24C1B5910](v48, -1, -1);
    MEMORY[0x24C1B5910](v39, -1, -1);
  }

  else
  {

    (*(v34 + 8))(v8, v32);
  }
}

uint64_t CUDistributedNotificationHandler.deinit()
{
  v1 = v0;
  v2 = *(v0 + 64);
  if (v2)
  {
    v3 = qword_27EE62020;
    swift_unknownObjectRetain();
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_247BF60B0();
    __swift_project_value_buffer(v4, qword_27EE62028);

    v5 = sub_247BF6090();
    v6 = sub_247BF6A00();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_247BBE628(*(v1 + 48), *(v1 + 56), &v16);
      _os_log_impl(&dword_247B92000, v5, v6, "deregister: name=%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x24C1B5910](v8, -1, -1);
      MEMORY[0x24C1B5910](v7, -1, -1);
    }

    v9 = [objc_opt_self() defaultCenter];
    [v9 removeObserver_];
    swift_unknownObjectRelease();
  }

  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = *(v1 + 40);
  sub_247BF4594();
  v13 = *(v1 + 56);

  v14 = *(v1 + 64);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t CUDistributedNotificationHandler.__deallocating_deinit()
{
  CUDistributedNotificationHandler.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_247BF45D0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v9 = (a2 + *a2);
  v6 = a2[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_247B96F0C;

  return v9(a4);
}

uint64_t sub_247BF46C8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_247B95F40;

  return v11(a6);
}

uint64_t sub_247BF47C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_247BC5B0C(a3, v27 - v11, &qword_27EE5DD00, &qword_247BFA890);
  v13 = sub_247BF67E0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_247B9CAD0(v12, &qword_27EE5DD00, &qword_247BFA890);
  }

  else
  {
    sub_247BF67D0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_247BF6740();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_247BF64B0() + 32;
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

      sub_247B9CAD0(a3, &qword_27EE5DD00, &qword_247BFA890);

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

  sub_247B9CAD0(a3, &qword_27EE5DD00, &qword_247BFA890);
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

void NSDistributedNotificationCenter.post<A>(notification:sender:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a3;
  v40 = a2;
  v44 = a5;
  v7 = *(a4 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v35[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v35[-v12];
  if (qword_27EE62020 != -1)
  {
    swift_once();
  }

  v14 = sub_247BF60B0();
  __swift_project_value_buffer(v14, qword_27EE62028);
  v15 = v7[2];
  v15(v13, a1, a4);
  v16 = sub_247BF6090();
  v17 = sub_247BF6A00();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v38 = a1;
    v19 = v18;
    v37 = swift_slowAlloc();
    v43[0] = v37;
    *v19 = 136315138;
    v15(v11, v13, a4);
    v20 = v7[1];
    v20(v13, a4);
    v21 = v44;
    v22 = *(v44 + 8);
    v36 = v17;
    v23 = sub_247BF6FD0();
    v25 = v24;
    v20(v11, a4);
    v26 = sub_247BBE628(v23, v25, v43);

    *(v19 + 4) = v26;
    _os_log_impl(&dword_247B92000, v16, v36, "post: %s", v19, 0xCu);
    v27 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x24C1B5910](v27, -1, -1);
    MEMORY[0x24C1B5910](v19, -1, -1);
  }

  else
  {
    (v7[1])(v13, a4);

    v21 = v44;
  }

  (*(v21 + 40))(a4, v21);
  v28 = sub_247BF6470();

  if (v41)
  {
    v29 = sub_247BF6470();
  }

  else
  {
    v29 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2E8, &qword_247BFD500);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_247BFA840;
  v43[0] = 0x64616F6C796170;
  v43[1] = 0xE700000000000000;
  sub_247BF6C70();
  v31 = v42;
  v32 = (*(v21 + 56))(a4, v21);
  if (v31)
  {

    sub_247BC5A5C(inited + 32);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E2F0, &qword_247BFD508);
    swift_arrayDestroy();
  }

  else
  {
    *(inited + 96) = MEMORY[0x277CC9318];
    *(inited + 72) = v32;
    *(inited + 80) = v33;
    sub_247BF50F0(inited);
    swift_setDeallocating();
    sub_247B9CAD0(inited + 32, &unk_27EE5E2F0, &qword_247BFD508);
    v34 = sub_247BF62E0();

    [v39 postNotificationName:v28 object:v29 userInfo:v34 deliverImmediately:1];
  }
}

uint64_t static CUDistributedNotification.decode(data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_247BF5CC0();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_247BF5CB0();
  v8 = *(a4 + 16);
  sub_247BF5C90();
}

uint64_t CUDistributedNotification.encode()(uint64_t a1, uint64_t a2)
{
  v3 = sub_247BF5D40();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_247BF5D30();
  v6 = *(a2 + 24);
  v7 = sub_247BF5D10();

  return v7;
}

uint64_t CUDistributedNotification.description.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 40))();
  MEMORY[0x24C1B4020](v2);

  return 0x3D656D616ELL;
}

unint64_t sub_247BF50F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E200, &qword_247BFCD28);
    v3 = sub_247BF6EE0();
    v4 = a1 + 32;

    while (1)
    {
      sub_247BC5B0C(v4, v13, &unk_27EE5E2F0, &qword_247BFD508);
      result = sub_247BBEADC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_247B9471C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_247BF532C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_247BF5374(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_247BF53BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_247BF542C(uint64_t a1)
{
  v3 = *(v1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_247BF3740(a1);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247BF54A4()
{
  v2 = (*(*(v0[4] - 8) + 80) + 64) & ~*(*(v0[4] - 8) + 80);
  v3 = v0[6];
  v4 = v0[7];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_247B95F40;

  return sub_247BF46C8(v5, v6, v7, v3, v4, v0 + v2);
}

uint64_t sub_247BF5578()
{
  v2 = (*(*(v0[2] - 8) + 80) + 48) & ~*(*(v0[2] - 8) + 80);
  v3 = v0[4];
  v4 = v0[5];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_247B96F0C;

  return sub_247BF45D0(v5, v3, v4, v0 + v2);
}

uint64_t sub_247BF564C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_247B96F0C;

  return sub_247BBDC2C(a1, v5);
}

uint64_t sub_247BF5704(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_247B95F40;

  return sub_247BBDC2C(a1, v5);
}

uint64_t CUOPACKEncoder.__allocating_init(configuration:)(_BYTE *a1)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  return result;
}

uint64_t CUOPACKEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v22[4] = *MEMORY[0x277D85DE8];
  sub_247BA253C();
  sub_247BA253C();
  sub_247BA253C();
  v20 = 257;
  v21 = 1;
  v9 = &v20;
  CUDictionaryEncoder.init(configuration:)(v9);
  v20 = v18;
  v21 = v19;
  CUDictionaryEncoder.encode<A>(_:)(a1, a2, a3, v22);
  if (!v4)
  {
    *(v3 + 16);
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v10 = sub_247BF7170();
    NSData = OPACKEncoderCreateNSData(v10);
    swift_unknownObjectRelease();
    if (NSData)
    {
      v5 = sub_247BF5E80();
    }

    else
    {
      v14 = *MEMORY[0x277CCA590];
      v15 = sub_247BF6480();
      v17 = v16;
      type metadata accessor for CUError();
      v5 = CUError.__allocating_init(domain:code:message:underlying:)(v15, v17, -6700, 0xD000000000000013, 0x8000000247C01DF0, 0);
      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

CoreUtilsSwift::CUDictionaryEncoder::Configuration __swiftcall CUDictionaryEncoder.Configuration.init(opackConfiguration:)(CoreUtilsSwift::CUOPACKEncoder::Configuration opackConfiguration)
{
  v2 = v1;
  sub_247BA253C();
  sub_247BA253C();
  v3 = sub_247BA253C();
  *v2 = 257;
  *(v2 + 2) = 1;
  return v3;
}

uint64_t OPACKEncoderCreateNSData(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x24C1B5120]();

  return v2;
}

uint64_t sub_247BF5B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *v4;
  result = CUOPACKEncoder.encode<A>(_:)(a1, a2, a3);
  if (!v5)
  {
    *a4 = result;
    a4[1] = v9;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CUOPACKEncoder.Configuration(unsigned __int8 *a1, unsigned int a2)
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