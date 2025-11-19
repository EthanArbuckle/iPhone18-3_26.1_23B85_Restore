uint64_t sub_216DB2B10()
{
  v1 = _s7SectionVMa(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v26 - v6);
  v8 = *v0;
  v9 = sub_21700E384();
  v30 = *(v8 + 16);
  if (!v30)
  {
    return v9;
  }

  v10 = 0;
  v11 = *(v2 + 80);
  v28 = v2;
  v29 = v8 + ((v11 + 32) & ~v11);
  v26 = v8;
  v27 = v7;
  while (v10 < *(v8 + 16))
  {
    v12 = *(v2 + 72);
    sub_216DDA0A0(v29 + v12 * v10, v7);
    v14 = *v7;
    v13 = v7[1];
    sub_216DDA0A0(v7, v4);
    swift_isUniquelyReferenced_nonNull_native();
    v31 = v9;
    v15 = sub_2166AF66C(v14, v13);
    if (__OFADD__(v9[2], (v16 & 1) == 0))
    {
      goto LABEL_15;
    }

    v17 = v15;
    v18 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD160);
    if (sub_21700F554())
    {
      v19 = sub_2166AF66C(v14, v13);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_17;
      }

      v17 = v19;
    }

    v9 = v31;
    if (v18)
    {
      sub_2166CE10C(v4, v31[7] + v17 * v12);
    }

    else
    {
      v31[(v17 >> 6) + 8] |= 1 << v17;
      v21 = (v9[6] + 16 * v17);
      *v21 = v14;
      v21[1] = v13;
      sub_216DDA0F4(v4, v9[7] + v17 * v12);
      v22 = v9[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_16;
      }

      v9[2] = v24;
      sub_21700DF14();
    }

    ++v10;
    v7 = v27;
    sub_216DDA050();
    v2 = v28;
    v8 = v26;
    if (v30 == v10)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_21700F824();
  __break(1u);
  return result;
}

int *sub_216DB2E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v11 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v11 - 8);
  result = sub_216DAFD1C(a1, a2, a3);
  if (!v5)
  {
    sub_216CF5028();
    sub_216CF381C();
    sub_216DDA0A0(a3, a4);
    type metadata accessor for Page(0);
    sub_216CFB5A0();
    sub_216DDA050();
    v13 = *(v6 + 48);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AC8);
    *(a4 + result[9]) = 0;
    *(a4 + result[10]) = v13;
    *(a4 + result[11]) = 0;
    *(a4 + result[12]) = 0;
  }

  return result;
}

int *sub_216DB3010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v11 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v11 - 8);
  result = sub_216DAFF28(a1, a2, a3);
  if (!v5)
  {
    sub_216CF5028();
    sub_216CF381C();
    sub_216DDA0A0(a3, a4);
    type metadata accessor for JSReplayPage();
    sub_216CFB5A0();
    sub_216DDA050();
    v13 = *(v6 + 48);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC94A0);
    *(a4 + result[9]) = 0;
    *(a4 + result[10]) = v13;
    *(a4 + result[11]) = 0;
    *(a4 + result[12]) = 0;
  }

  return result;
}

int *sub_216DB321C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v11 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v11 - 8);
  result = sub_216DB0134(a1, a2, a3);
  if (!v5)
  {
    sub_216CF5028();
    sub_216CF381C();
    sub_216DDA0A0(a3, a4);
    type metadata accessor for JSSearchPage();
    sub_216CFB5A0();
    sub_216DDA050();
    v13 = *(v6 + 48);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EE8);
    *(a4 + result[9]) = 0;
    *(a4 + result[10]) = v13;
    *(a4 + result[11]) = 0;
    *(a4 + result[12]) = 0;
  }

  return result;
}

void sub_216DB3428(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v9 = sub_216DB0340(a1, a2, a3);
  if (!v5)
  {
    v10 = v9;
    sub_216CF5154();
    sub_216CF381C();
    sub_216DDA0A0(a3, a4);
    v11 = a4 + *(type metadata accessor for ReplayModel(0) + 20);
    v12 = v11 + *(type metadata accessor for ReplayYearModel(0) + 20);
    v13 = *(type metadata accessor for JSReplayPage() + 20);
    v14 = *(v12 + v13);
    sub_21700DF14();
    v15 = v14;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_216E15A14();
      v15 = v25;
    }

    v16 = *(v15 + 16);
    if (v10 >= v16)
    {
      __break(1u);
    }

    else
    {
      v26 = v13;
      v17 = v16 - 1;
      v18 = *(_s7SectionVMa(0) - 8);
      v19 = *(v18 + 72);
      v20 = v6;
      v21 = v12;
      v22 = v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + v19 * v10;
      sub_216DDA050();
      sub_216939630(v22 + v19, v17 - v10, v22);
      *(v15 + 16) = v17;

      *(v21 + v26) = v15;
      v23 = *(v20 + 48);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0C0);
      *(a4 + v24[9]) = 0;
      *(a4 + v24[10]) = v23;
      *(a4 + v24[11]) = 0;
      *(a4 + v24[12]) = 0;
    }
  }
}

void sub_216DB36B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v11 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v11 - 8);
  sub_216DB056C(a1, a2, a3);
  if (!v5)
  {
    sub_216CF5154();
    sub_216CF381C();
    sub_216DDA0A0(a3, a4);
    sub_216CFB5A0();
    sub_216DDA050();
    v12 = *(v6 + 48);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96D8);
    *(a4 + v13[9]) = 0;
    *(a4 + v13[10]) = v12;
    *(a4 + v13[11]) = 0;
    *(a4 + v13[12]) = 0;
  }
}

void sub_216DB38B0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = type metadata accessor for Page(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];
  v13 = sub_216DAFD1C(*a1, v11, a2);
  if (!v4)
  {
    v14 = v13;
    v38 = 0;
    v39 = v11;
    v37 = v12;
    v41 = a3;
    v15 = v3;
    sub_216CF4A74(a1);
    sub_216DDA0A0(a2, v10);
    v16 = *(v8 + 28);
    v17 = *&v10[v16];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_216E15A14();
      v17 = v35;
      if ((v14 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (v14 < *(v17 + 16))
        {
          v18 = *(_s7SectionVMa(0) - 8);
          v19 = sub_216DDA208(a1, v17 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v14);
          v20 = a1;
          *&v10[v16] = v17;
          MEMORY[0x28223BE20](v19);
          *(&v36 - 2) = a1;
          sub_216CE19C4(sub_216DDA434, (&v36 - 4), v21, sub_2166BF3C8, v22, v23, v24, v25, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
          v26 = v41;
          sub_216DDA0A0(v10, v41);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D98);
          v27 = (__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC1DA0) - 8);
          v28 = (*(*v27 + 80) + 32) & ~*(*v27 + 80);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_217013DA0;
          v30 = (v29 + v28);
          v31 = v27[14];
          v32 = v39;
          *v30 = v37;
          v30[1] = v32;
          sub_216DDA0A0(v20, v29 + v28 + v31);
          sub_21700DF14();
          v33 = sub_21700E384();
          LOBYTE(v32) = *(v15 + 48);
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AC8);
          *(v26 + v34[9]) = v33;
          *(v26 + v34[10]) = v32;
          *(v26 + v34[11]) = 0;
          *(v26 + v34[12]) = 0;
          sub_216DDA050();
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_216DB3C48(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = type metadata accessor for JSReplayPage();
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];
  v13 = sub_216DAFF28(*a1, v11, a2);
  if (!v4)
  {
    v14 = v13;
    v36 = 0;
    v37 = v12;
    v38 = v11;
    v40 = a3;
    v15 = v3;
    sub_216CF4B98(a1);
    sub_216DDA0A0(a2, v10);
    v16 = *(v8 + 20);
    v17 = *&v10[v16];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_216E15A14();
      v17 = v34;
      if ((v14 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (v14 < *(v17 + 16))
        {
          v35 = _s7SectionVMa(0);
          v18 = sub_216DDA208(a1, v17 + ((*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80)) + *(*(v35 - 8) + 72) * v14);
          v19 = a1;
          *&v10[v16] = v17;
          MEMORY[0x28223BE20](v18);
          *(&v35 - 2) = a1;
          sub_216CE19C4(sub_216DDA434, (&v35 - 4), v20, sub_2166BF3C8, v21, v22, v23, v24, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
          v25 = v40;
          sub_216DDA0A0(v10, v40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D98);
          v26 = (__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC1DA0) - 8);
          v27 = (*(*v26 + 80) + 32) & ~*(*v26 + 80);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_217013DA0;
          v29 = (v28 + v27);
          v30 = v26[14];
          v31 = v38;
          *v29 = v37;
          v29[1] = v31;
          sub_216DDA0A0(v19, v28 + v27 + v30);
          sub_21700DF14();
          v32 = sub_21700E384();
          sub_216DDA050();
          LOBYTE(v31) = *(v15 + 48);
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC94A0);
          *(v25 + v33[9]) = v32;
          *(v25 + v33[10]) = v31;
          *(v25 + v33[11]) = 0;
          *(v25 + v33[12]) = 0;
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_216DB3FDC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = type metadata accessor for JSSearchPage();
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];
  v13 = sub_216DB0134(*a1, v11, a2);
  if (!v4)
  {
    v14 = v13;
    v36 = 0;
    v37 = v12;
    v38 = v11;
    v40 = a3;
    v15 = v3;
    sub_216CF4CBC(a1);
    sub_216DDA0A0(a2, v10);
    v16 = *(v8 + 20);
    v17 = *&v10[v16];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_216E15A14();
      v17 = v34;
      if ((v14 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (v14 < *(v17 + 16))
        {
          v35 = _s7SectionVMa(0);
          v18 = sub_216DDA208(a1, v17 + ((*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80)) + *(*(v35 - 8) + 72) * v14);
          v19 = a1;
          *&v10[v16] = v17;
          MEMORY[0x28223BE20](v18);
          *(&v35 - 2) = a1;
          sub_216CE19C4(sub_216DDA434, (&v35 - 4), v20, sub_2166BF3C8, v21, v22, v23, v24, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
          v25 = v40;
          sub_216DDA0A0(v10, v40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D98);
          v26 = (__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC1DA0) - 8);
          v27 = (*(*v26 + 80) + 32) & ~*(*v26 + 80);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_217013DA0;
          v29 = (v28 + v27);
          v30 = v26[14];
          v31 = v38;
          *v29 = v37;
          v29[1] = v31;
          sub_216DDA0A0(v19, v28 + v27 + v30);
          sub_21700DF14();
          v32 = sub_21700E384();
          sub_216DDA050();
          LOBYTE(v31) = *(v15 + 48);
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EE8);
          *(v25 + v33[9]) = v32;
          *(v25 + v33[10]) = v31;
          *(v25 + v33[11]) = 0;
          *(v25 + v33[12]) = 0;
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_216DB4370(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = type metadata accessor for ReplayModel(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];
  v13 = sub_216DB0340(*a1, v11, a2);
  if (!v4)
  {
    v14 = v13;
    v40 = 0;
    v41 = v11;
    v39 = v12;
    v44 = a3;
    v42 = v3;
    sub_216CF4DE0(a1);
    sub_216DDA0A0(a2, v10);
    v15 = *(v8 + 20);
    v16 = &v10[v15 + *(type metadata accessor for ReplayYearModel(0) + 20)];
    v17 = *(type metadata accessor for JSReplayPage() + 20);
    v18 = *&v16[v17];
    sub_21700DF14();
    v19 = v18;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_216E15A14();
      v19 = v36;
      if ((v14 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (v14 < *(v19 + 16))
        {
          v38 = _s7SectionVMa(0);
          sub_216DDA208(a1, v19 + ((*(*(v38 - 8) + 80) + 32) & ~*(*(v38 - 8) + 80)) + *(*(v38 - 8) + 72) * v14);

          *&v16[v17] = v19;
          v21 = v42;
          MEMORY[0x28223BE20](v20);
          *(&v37 - 2) = a1;
          sub_216CE19C4(sub_216DDA434, (&v37 - 4), v22, sub_2166BF3C8, v23, v24, v25, v26, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
          v27 = v44;
          sub_216DDA0A0(v10, v44);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D98);
          v28 = (__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC1DA0) - 8);
          v29 = (*(*v28 + 80) + 32) & ~*(*v28 + 80);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_217013DA0;
          v31 = (v30 + v29);
          v32 = v28[14];
          v33 = v41;
          *v31 = v39;
          v31[1] = v33;
          sub_216DDA0A0(a1, v30 + v29 + v32);
          sub_21700DF14();
          v34 = sub_21700E384();
          sub_216DDA050();
          LOBYTE(v33) = *(v21 + 48);
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0C0);
          *(v27 + v35[9]) = v34;
          *(v27 + v35[10]) = v33;
          *(v27 + v35[11]) = 0;
          *(v27 + v35[12]) = 0;
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_216DB473C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = type metadata accessor for JSSearchResultsPage(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v11 = a1[1];
  sub_216DB056C(*a1, v11, a2);
  if (!v4)
  {
    v14 = v13;
    v33 = v3;
    sub_216CF4F04(a1);
    sub_216DDA0A0(a2, v10);
    v15 = *v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_216E15A14();
      v15 = v29;
      if ((v14 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (v14 < *(v15 + 16))
        {
          v31 = _s7SectionVMa(0);
          v16 = sub_216DDA208(a1, v15 + ((*(*(v31 - 8) + 80) + 32) & ~*(*(v31 - 8) + 80)) + *(*(v31 - 8) + 72) * v14);
          *v10 = v15;
          MEMORY[0x28223BE20](v16);
          *(&v30 - 2) = a1;
          sub_216CE19C4(sub_216DDA434, (&v30 - 4), v17, sub_2166BF3C8, v18, v19, v20, v21, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
          sub_216DDA0A0(v10, a3);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D98);
          v22 = (__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC1DA0) - 8);
          v23 = (*(*v22 + 80) + 32) & ~*(*v22 + 80);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_217013DA0;
          v25 = (v24 + v23);
          v26 = v22[14];
          *v25 = v12;
          v25[1] = v11;
          sub_216DDA0A0(a1, v24 + v23 + v26);
          sub_21700DF14();
          v27 = sub_21700E384();
          sub_216DDA050();
          LOBYTE(v22) = *(v33 + 48);
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96D8);
          *(a3 + v28[9]) = v27;
          *(a3 + v28[10]) = v22;
          *(a3 + v28[11]) = 0;
          *(a3 + v28[12]) = 0;
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_216DB4AB8()
{
  OUTLINED_FUNCTION_22_3();
  v8 = OUTLINED_FUNCTION_499(v5, v6, v7);
  v41 = type metadata accessor for Page(v8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_45_23();
  v10 = type metadata accessor for SectionContent();
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v12 = OUTLINED_FUNCTION_71_1();
  _s7SectionVMa(v12);
  OUTLINED_FUNCTION_64_16();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_79_5();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_380();
  sub_216DAFD1C(v15, v16, v17);
  if (v2)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_584();
  if (v18 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_901();
    if (!v19)
    {
      OUTLINED_FUNCTION_910();
      v4 = *(v20 + 72) * v21;
      OUTLINED_FUNCTION_4_131();
      OUTLINED_FUNCTION_899(v22);
      v23 = OUTLINED_FUNCTION_498();
      v24(v23);
      OUTLINED_FUNCTION_4_131();
      OUTLINED_FUNCTION_907();
      OUTLINED_FUNCTION_566();
      sub_216DDA0A0(v25, v26);
      OUTLINED_FUNCTION_108_8();
      sub_216DDA208(v1, v0 + v27);
      OUTLINED_FUNCTION_42_31();
      OUTLINED_FUNCTION_1152();
      v3 = *(v41 + 28);
      v28 = *(v1 + v3);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_10:
  sub_216E15A14();
  v28 = v38;
LABEL_5:
  OUTLINED_FUNCTION_739();
  if (!v19)
  {
    OUTLINED_FUNCTION_107_9();
    sub_216DDA208(v4, v29 + v30);
    *(v40 + v3) = v28;
    OUTLINED_FUNCTION_1169();
    OUTLINED_FUNCTION_42_31();
    v31 = OUTLINED_FUNCTION_109_2();
    sub_216DDA0A0(v31, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D98);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC1DA0);
    OUTLINED_FUNCTION_449();
    v33 = OUTLINED_FUNCTION_418();
    OUTLINED_FUNCTION_748(v33, xmmword_217013DA0);
    *v34 = v39;
    v34[1] = v0;
    OUTLINED_FUNCTION_4_131();
    sub_216DDA0A0(v4, v35 + v36);
    sub_21700DF14();
    sub_21700E384();
    OUTLINED_FUNCTION_5_120();
    sub_216DDA050();
    OUTLINED_FUNCTION_111_8();
    sub_216DDA050();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AC8);
    OUTLINED_FUNCTION_423(v37);
    OUTLINED_FUNCTION_101_7();
    sub_216DDA050();
    OUTLINED_FUNCTION_1248();
    sub_216DDA050();
LABEL_7:
    OUTLINED_FUNCTION_21_4();
    return;
  }

  __break(1u);
}

void sub_216DB4DEC()
{
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_499(v5, v6, v7);
  type metadata accessor for JSReplayPage();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_45_23();
  v9 = type metadata accessor for SectionContent();
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v11 = OUTLINED_FUNCTION_71_1();
  _s7SectionVMa(v11);
  OUTLINED_FUNCTION_64_16();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_79_5();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_380();
  sub_216DAFF28(v14, v15, v16);
  if (v2)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_584();
  if (v17 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_901();
    if (!v18)
    {
      OUTLINED_FUNCTION_910();
      v4 = *(v19 + 72) * v20;
      OUTLINED_FUNCTION_4_131();
      OUTLINED_FUNCTION_899(v21);
      v22 = OUTLINED_FUNCTION_498();
      v23(v22);
      OUTLINED_FUNCTION_4_131();
      OUTLINED_FUNCTION_907();
      OUTLINED_FUNCTION_566();
      sub_216DDA0A0(v24, v25);
      OUTLINED_FUNCTION_108_8();
      sub_216DDA208(v1, v0 + v26);
      OUTLINED_FUNCTION_41_30();
      OUTLINED_FUNCTION_1152();
      if (OUTLINED_FUNCTION_1269())
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_10:
  sub_216E15A14();
  v1 = v34;
LABEL_5:
  OUTLINED_FUNCTION_739();
  if (!v18)
  {
    OUTLINED_FUNCTION_107_9();
    sub_216DDA208(v4, v27 + v28);
    *(v36 + v3) = v1;
    OUTLINED_FUNCTION_1169();
    OUTLINED_FUNCTION_41_30();
    sub_216DDA0A0(v36, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D98);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC1DA0);
    OUTLINED_FUNCTION_449();
    v29 = OUTLINED_FUNCTION_418();
    OUTLINED_FUNCTION_748(v29, xmmword_217013DA0);
    *v30 = v35;
    v30[1] = v0;
    OUTLINED_FUNCTION_4_131();
    sub_216DDA0A0(v4, v31 + v32);
    sub_21700DF14();
    sub_21700E384();
    OUTLINED_FUNCTION_5_120();
    sub_216DDA050();
    OUTLINED_FUNCTION_111_8();
    sub_216DDA050();
    OUTLINED_FUNCTION_38_36();
    sub_216DDA050();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC94A0);
    OUTLINED_FUNCTION_423(v33);
    OUTLINED_FUNCTION_1248();
    sub_216DDA050();
LABEL_7:
    OUTLINED_FUNCTION_21_4();
    return;
  }

  __break(1u);
}

void sub_216DB5114()
{
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_499(v5, v6, v7);
  type metadata accessor for JSSearchPage();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_45_23();
  v9 = type metadata accessor for SectionContent();
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v11 = OUTLINED_FUNCTION_71_1();
  _s7SectionVMa(v11);
  OUTLINED_FUNCTION_64_16();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_79_5();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_380();
  sub_216DB0134(v14, v15, v16);
  if (v2)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_584();
  if (v17 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_901();
    if (!v18)
    {
      OUTLINED_FUNCTION_910();
      v4 = *(v19 + 72) * v20;
      OUTLINED_FUNCTION_4_131();
      OUTLINED_FUNCTION_899(v21);
      v22 = OUTLINED_FUNCTION_498();
      v23(v22);
      OUTLINED_FUNCTION_4_131();
      OUTLINED_FUNCTION_907();
      OUTLINED_FUNCTION_566();
      sub_216DDA0A0(v24, v25);
      OUTLINED_FUNCTION_108_8();
      sub_216DDA208(v1, v0 + v26);
      OUTLINED_FUNCTION_40_29();
      OUTLINED_FUNCTION_1152();
      if (OUTLINED_FUNCTION_1269())
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_10:
  sub_216E15A14();
  v1 = v34;
LABEL_5:
  OUTLINED_FUNCTION_739();
  if (!v18)
  {
    OUTLINED_FUNCTION_107_9();
    sub_216DDA208(v4, v27 + v28);
    *(v36 + v3) = v1;
    OUTLINED_FUNCTION_1169();
    OUTLINED_FUNCTION_40_29();
    sub_216DDA0A0(v36, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D98);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC1DA0);
    OUTLINED_FUNCTION_449();
    v29 = OUTLINED_FUNCTION_418();
    OUTLINED_FUNCTION_748(v29, xmmword_217013DA0);
    *v30 = v35;
    v30[1] = v0;
    OUTLINED_FUNCTION_4_131();
    sub_216DDA0A0(v4, v31 + v32);
    sub_21700DF14();
    sub_21700E384();
    OUTLINED_FUNCTION_5_120();
    sub_216DDA050();
    OUTLINED_FUNCTION_111_8();
    sub_216DDA050();
    OUTLINED_FUNCTION_100_12();
    sub_216DDA050();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EE8);
    OUTLINED_FUNCTION_423(v33);
    OUTLINED_FUNCTION_1248();
    sub_216DDA050();
LABEL_7:
    OUTLINED_FUNCTION_21_4();
    return;
  }

  __break(1u);
}

void sub_216DB543C()
{
  OUTLINED_FUNCTION_22_3();
  v70 = v5;
  v71 = v6;
  v67 = v0;
  v68 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v72 = type metadata accessor for ReplayModel(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  v18 = type metadata accessor for SectionContent();
  v19 = OUTLINED_FUNCTION_36(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_106_1();
  _s7SectionVMa(0);
  OUTLINED_FUNCTION_64_16();
  v69 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_117_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v57 - v23;
  sub_216DB0340(v13, v11, v9);
  if (v1)
  {
    goto LABEL_9;
  }

  v64 = 0;
  v65 = v3;
  v66 = v24;
  v73 = v2;
  v60 = v13;
  v61 = v11;
  v62 = v4;
  v63 = v17;
  v25 = *(v72 + 20);
  v26 = OUTLINED_FUNCTION_1232();
  v27 = type metadata accessor for ReplayYearModel(v26);
  v28 = *(v27 + 20);
  v29 = type metadata accessor for JSReplayPage();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= *(*(v9 + v25 + v28 + *(v29 + 20)) + 16))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    sub_216E15A14();
    v41 = v56;
    goto LABEL_7;
  }

  v58 = v29;
  v59 = v27;
  OUTLINED_FUNCTION_910();
  v32 = *(v30 + 72) * v31;
  OUTLINED_FUNCTION_4_131();
  v34 = v66;
  sub_216DDA0A0(v33 + v32, v66);
  v35 = v64;
  v71(v70);
  if (v35)
  {
    sub_216DDA050();
LABEL_9:
    OUTLINED_FUNCTION_21_4();
    return;
  }

  v70 = v32;
  v71 = v9;
  OUTLINED_FUNCTION_4_131();
  OUTLINED_FUNCTION_566();
  sub_216DDA0A0(v36, v37);
  OUTLINED_FUNCTION_108_8();
  sub_216DDA208(v73, v34 + v38);
  OUTLINED_FUNCTION_10_89();
  v39 = v63;
  sub_216DDA0A0(v9, v63);
  v25 = v39 + *(v72 + 20) + *(v59 + 20);
  v4 = *(v58 + 20);
  v40 = *(v25 + v4);
  sub_21700DF14();
  v41 = v40;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v42 = v67;
  v43 = v68;
  v44 = v61;
  if (v3 < *(v41 + 16))
  {
    OUTLINED_FUNCTION_107_9();
    v46 = v62;
    sub_216DDA208(v62, v45 + v70);

    *(v25 + v4) = v41;
    sub_216CE146C();
    OUTLINED_FUNCTION_10_89();
    v47 = OUTLINED_FUNCTION_19();
    sub_216DDA0A0(v47, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D98);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC1DA0);
    OUTLINED_FUNCTION_449();
    v49 = OUTLINED_FUNCTION_418();
    OUTLINED_FUNCTION_748(v49, xmmword_217013DA0);
    *v50 = v60;
    v50[1] = v44;
    OUTLINED_FUNCTION_4_131();
    sub_216DDA0A0(v46, v51 + v52);
    sub_21700DF14();
    v53 = sub_21700E384();
    OUTLINED_FUNCTION_5_120();
    sub_216DDA050();
    OUTLINED_FUNCTION_111_8();
    sub_216DDA050();
    OUTLINED_FUNCTION_58_18();
    sub_216DDA050();
    v54 = *(v42 + 48);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0C0);
    *(v43 + v55[9]) = v53;
    *(v43 + v55[10]) = v54;
    *(v43 + v55[11]) = 0;
    *(v43 + v55[12]) = 0;
    sub_216DDA050();
    goto LABEL_9;
  }

  __break(1u);
}

void sub_216DB5894()
{
  OUTLINED_FUNCTION_22_3();
  v49 = v4;
  v50 = v5;
  v47 = v6;
  v48 = v0;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for JSSearchResultsPage(0);
  v14 = OUTLINED_FUNCTION_36(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_106_1();
  v15 = type metadata accessor for SectionContent();
  v16 = OUTLINED_FUNCTION_36(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  _s7SectionVMa(0);
  OUTLINED_FUNCTION_64_16();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_77();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_39_0();
  v24 = OUTLINED_FUNCTION_9_6();
  sub_216DB056C(v24, v25, v8);
  if (v1)
  {
    goto LABEL_7;
  }

  v46 = v12;
  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v26 < *(*v8 + 16))
  {
    v27 = *(v18 + 72) * v26;
    OUTLINED_FUNCTION_4_131();
    v29 = v28;
    sub_216DDA0A0(v30 + v27, v3);
    v50(v49);
    v50 = v29;
    OUTLINED_FUNCTION_4_131();
    sub_216DDA0A0(v3, v22);
    OUTLINED_FUNCTION_108_8();
    v31 = OUTLINED_FUNCTION_977();
    sub_216DDA208(v31, v32);
    OUTLINED_FUNCTION_39_30();
    sub_216DDA0A0(v8, v2);
    v33 = *v2;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_10:
  sub_216E15A14();
  v33 = v45;
LABEL_5:
  if (v50 < *(v33 + 16))
  {
    OUTLINED_FUNCTION_107_9();
    sub_216DDA208(v22, v34 + v35);
    *v2 = v33;
    sub_216CE146C();
    OUTLINED_FUNCTION_39_30();
    v36 = OUTLINED_FUNCTION_26_37();
    sub_216DDA0A0(v36, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D98);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC1DA0);
    OUTLINED_FUNCTION_449();
    v38 = OUTLINED_FUNCTION_418();
    OUTLINED_FUNCTION_748(v38, xmmword_217013DA0);
    *v39 = v46;
    v39[1] = v10;
    OUTLINED_FUNCTION_4_131();
    sub_216DDA0A0(v22, v40 + v41);
    sub_21700DF14();
    v42 = sub_21700E384();
    OUTLINED_FUNCTION_5_120();
    sub_216DDA050();
    OUTLINED_FUNCTION_111_8();
    sub_216DDA050();
    OUTLINED_FUNCTION_99_11();
    sub_216DDA050();
    v43 = *(v48 + 48);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96D8);
    *(v47 + v44[9]) = v42;
    *(v47 + v44[10]) = v43;
    *(v47 + v44[11]) = 0;
    *(v47 + v44[12]) = 0;
    OUTLINED_FUNCTION_44_14();
    sub_216DDA050();
LABEL_7:
    OUTLINED_FUNCTION_21_4();
    return;
  }

  __break(1u);
}

void sub_216DB5C7C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v6 = type metadata accessor for Page(0);
  MEMORY[0x28223BE20](v6);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SectionContent();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = _s7SectionVMa(0);
  v11 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + *(v6 + 28));
  v53 = a1;
  v51 = a1;
  v15 = sub_216CE0FE0(sub_216B3AC5C, v50, v14, _s7SectionVMa);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E58);
    sub_2166D9530(&qword_27CAC8E60, &qword_27CAC8E58);
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
    return;
  }

  v18 = v15;
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v15 >= *(v14 + 16))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    sub_216E15A14();
    v29 = v41;
    goto LABEL_7;
  }

  v45 = a2;
  v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v20 = *(v11 + 72) * v15;
  sub_216DDA0A0(v14 + v19 + v20, v13);
  v21 = *(v49 + 52);
  sub_2169B6454(v53 + v21, v22, v23, v24, v25, v26, v27, v28, v42, v43, v44, v45, v46, v47, v48, v49, v50[0], v50[1], v51, v52);
  if (v3)
  {
LABEL_9:
    sub_216DDA050();
    return;
  }

  v43 = v19;
  v44 = v20;
  sub_2166CE10C(v10, &v13[v21]);
  a1 = v48;
  sub_216DDA0A0(v45, v48);
  v10 = *(v6 + 28);
  v29 = *(a1 + v10);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v30 = v53;
  if (v18 < *(v29 + 16))
  {
    sub_216DDA208(v13, v29 + v43 + v44);
    *(a1 + v10) = v29;
    v31 = v46;
    sub_216CE146C();
    v32 = v47;
    sub_216DDA0A0(a1, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D98);
    v33 = (__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC1DA0) - 8);
    v34 = (*(*v33 + 80) + 32) & ~*(*v33 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_217013DA0;
    v36 = (v35 + v34);
    v37 = v33[14];
    v38 = v30[1];
    *v36 = *v30;
    v36[1] = v38;
    sub_216DDA0A0(v30, v35 + v34 + v37);
    sub_21700DF14();
    v39 = sub_21700E384();
    LOBYTE(v38) = *(v31 + 32);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AC8);
    *(v32 + v40[9]) = v39;
    *(v32 + v40[10]) = v38;
    *(v32 + v40[11]) = 0;
    *(v32 + v40[12]) = 0;
    sub_216DDA050();
    goto LABEL_9;
  }

  __break(1u);
}

void sub_216DB6184(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v6 = type metadata accessor for JSReplayPage();
  MEMORY[0x28223BE20](v6);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SectionContent();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = _s7SectionVMa(0);
  v11 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + *(v6 + 20));
  v53 = a1;
  v51 = a1;
  v15 = sub_216CE0FE0(sub_216C9371C, v50, v14, _s7SectionVMa);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9660);
    sub_2166D9530(&qword_27CAC9668, &qword_27CAC9660);
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
    return;
  }

  v18 = v15;
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v15 >= *(v14 + 16))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    sub_216E15A14();
    v29 = v41;
    goto LABEL_7;
  }

  v45 = a2;
  v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v20 = *(v11 + 72) * v15;
  sub_216DDA0A0(v14 + v19 + v20, v13);
  v21 = *(v49 + 52);
  sub_2169B6454(v53 + v21, v22, v23, v24, v25, v26, v27, v28, v42, v43, v44, v45, v46, v47, v48, v49, v50[0], v50[1], v51, v52);
  if (v3)
  {
LABEL_9:
    sub_216DDA050();
    return;
  }

  v43 = v19;
  v44 = v20;
  sub_2166CE10C(v10, &v13[v21]);
  a2 = v48;
  sub_216DDA0A0(v45, v48);
  a1 = *(v6 + 20);
  v29 = *(a2 + a1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v30 = v53;
  if (v18 < *(v29 + 16))
  {
    sub_216DDA208(v13, v29 + v43 + v44);
    *(a2 + a1) = v29;
    v31 = v46;
    sub_216CE146C();
    v32 = v47;
    sub_216DDA0A0(a2, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D98);
    v33 = (__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC1DA0) - 8);
    v34 = (*(*v33 + 80) + 32) & ~*(*v33 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_217013DA0;
    v36 = (v35 + v34);
    v37 = v33[14];
    v38 = v30[1];
    *v36 = *v30;
    v36[1] = v38;
    sub_216DDA0A0(v30, v35 + v34 + v37);
    sub_21700DF14();
    v39 = sub_21700E384();
    sub_216DDA050();
    LOBYTE(v38) = *(v31 + 32);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC94A0);
    *(v32 + v40[9]) = v39;
    *(v32 + v40[10]) = v38;
    *(v32 + v40[11]) = 0;
    *(v32 + v40[12]) = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_216DB668C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v6 = type metadata accessor for JSSearchPage();
  MEMORY[0x28223BE20](v6);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SectionContent();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = _s7SectionVMa(0);
  v11 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + *(v6 + 20));
  v53 = a1;
  v51 = a1;
  v15 = sub_216CE0FE0(sub_216C9371C, v50, v14, _s7SectionVMa);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9110);
    sub_2166D9530(&qword_27CAC9118, &qword_27CAC9110);
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
    return;
  }

  v18 = v15;
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v15 >= *(v14 + 16))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    sub_216E15A14();
    v29 = v41;
    goto LABEL_7;
  }

  v45 = a2;
  v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v20 = *(v11 + 72) * v15;
  sub_216DDA0A0(v14 + v19 + v20, v13);
  v21 = *(v49 + 52);
  sub_2169B6454(v53 + v21, v22, v23, v24, v25, v26, v27, v28, v42, v43, v44, v45, v46, v47, v48, v49, v50[0], v50[1], v51, v52);
  if (v3)
  {
LABEL_9:
    sub_216DDA050();
    return;
  }

  v43 = v19;
  v44 = v20;
  sub_2166CE10C(v10, &v13[v21]);
  a2 = v48;
  sub_216DDA0A0(v45, v48);
  a1 = *(v6 + 20);
  v29 = *(a2 + a1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v30 = v53;
  if (v18 < *(v29 + 16))
  {
    sub_216DDA208(v13, v29 + v43 + v44);
    *(a2 + a1) = v29;
    v31 = v46;
    sub_216CE146C();
    v32 = v47;
    sub_216DDA0A0(a2, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D98);
    v33 = (__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC1DA0) - 8);
    v34 = (*(*v33 + 80) + 32) & ~*(*v33 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_217013DA0;
    v36 = (v35 + v34);
    v37 = v33[14];
    v38 = v30[1];
    *v36 = *v30;
    v36[1] = v38;
    sub_216DDA0A0(v30, v35 + v34 + v37);
    sub_21700DF14();
    v39 = sub_21700E384();
    sub_216DDA050();
    LOBYTE(v38) = *(v31 + 32);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EE8);
    *(v32 + v40[9]) = v39;
    *(v32 + v40[10]) = v38;
    *(v32 + v40[11]) = 0;
    *(v32 + v40[12]) = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_216DB6B94(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v6 = type metadata accessor for ReplayModel(0);
  MEMORY[0x28223BE20](v6);
  v57 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SectionContent();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = _s7SectionVMa(0);
  v11 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v6 + 20);
  v56 = a2;
  v15 = a2 + v14;
  v16 = type metadata accessor for ReplayYearModel(0);
  v17 = v15 + *(v16 + 20);
  v18 = type metadata accessor for JSReplayPage();
  v19 = *(v17 + *(v18 + 20));
  v60 = a1;
  v59[2] = a1;
  v20 = sub_216CE0FE0(sub_216C9371C, v59, v19, _s7SectionVMa);
  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC92F8);
    sub_2166D9530(&qword_27CAC9300, &qword_27CAC92F8);
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
    return;
  }

  v23 = v20;
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v20 >= *(v19 + 16))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    sub_216E15A14();
    v36 = v48;
    goto LABEL_7;
  }

  v52 = v16;
  v53 = v6;
  v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v25 = *(v11 + 72) * v20;
  sub_216DDA0A0(v19 + v24 + v25, v13);
  v26 = *(v58 + 52);
  sub_2169B6454(v60 + v26, v27, v28, v29, v30, v31, v32, v33, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59[0], v59[1]);
  if (v3)
  {
LABEL_9:
    sub_216DDA050();
    return;
  }

  v50 = v24;
  v51 = v25;
  sub_2166CE10C(v10, &v13[v26]);
  v34 = v57;
  sub_216DDA0A0(v56, v57);
  a1 = v34 + *(v53 + 20) + *(v52 + 20);
  v18 = *(v18 + 20);
  v35 = *(a1 + v18);
  sub_21700DF14();
  v36 = v35;
  v6 = v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v37 = v60;
  if (v23 < *(v36 + 16))
  {
    sub_216DDA208(v6, v36 + v50 + v51);

    *(a1 + v18) = v36;
    v38 = v54;
    sub_216CE146C();
    v39 = v55;
    sub_216DDA0A0(v57, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D98);
    v40 = (__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC1DA0) - 8);
    v41 = (*(*v40 + 80) + 32) & ~*(*v40 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_217013DA0;
    v43 = (v42 + v41);
    v44 = v40[14];
    v45 = v37[1];
    *v43 = *v37;
    v43[1] = v45;
    sub_216DDA0A0(v37, v42 + v41 + v44);
    sub_21700DF14();
    v46 = sub_21700E384();
    sub_216DDA050();
    LOBYTE(v45) = *(v38 + 32);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0C0);
    *(v39 + v47[9]) = v46;
    *(v39 + v47[10]) = v45;
    *(v39 + v47[11]) = 0;
    *(v39 + v47[12]) = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_216DB710C(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = type metadata accessor for JSSearchResultsPage(0);
  MEMORY[0x28223BE20](v8 - 8);
  v46 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for SectionContent();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = _s7SectionVMa(0);
  v13 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2;
  v16 = *a2;
  v17 = a1;
  v48 = a1;
  v18 = sub_216CE0FE0(sub_216C9371C, v47, v16, _s7SectionVMa);
  if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC98D8);
    sub_2166D9530(&qword_27CAC98E0, &qword_27CAC98D8);
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
    return;
  }

  v21 = v18;
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v18 >= *(v16 + 16))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    sub_216E15A14();
    v30 = v42;
    goto LABEL_7;
  }

  v43 = a3;
  a1 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v13 = *(v13 + 72) * v18;
  sub_216DDA0A0(v16 + a1 + v13, v15);
  v22 = *(v51 + 52);
  sub_2169B6454(v17 + v22, v23, v24, v25, v26, v27, v28, v29, v43, v44, v45, v46, v47[0], v47[1], v48, v49, v50, v51, v52, v53);
  if (v3)
  {
LABEL_9:
    sub_216DDA050();
    return;
  }

  sub_2166CE10C(v12, &v15[v22]);
  v4 = v46;
  sub_216DDA0A0(v45, v46);
  v30 = *v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v31 = v17;
  if (v21 < *(v30 + 16))
  {
    sub_216DDA208(v15, v30 + a1 + v13);
    *v4 = v30;
    v32 = v44;
    sub_216CE146C();
    v33 = v43;
    sub_216DDA0A0(v4, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D98);
    v34 = (__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC1DA0) - 8);
    v35 = (*(*v34 + 80) + 32) & ~*(*v34 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_217013DA0;
    v37 = (v36 + v35);
    v38 = v34[14];
    v39 = v31[1];
    *v37 = *v31;
    v37[1] = v39;
    sub_216DDA0A0(v31, v36 + v35 + v38);
    sub_21700DF14();
    v40 = sub_21700E384();
    sub_216DDA050();
    LOBYTE(v39) = *(v32 + 32);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96D8);
    *(v33 + v41[9]) = v40;
    *(v33 + v41[10]) = v39;
    *(v33 + v41[11]) = 0;
    *(v33 + v41[12]) = 0;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_216DB75FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = OUTLINED_FUNCTION_22_4();
    a3(v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_216DB7654@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v158 = a1;
  v130 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15B8);
  MEMORY[0x28223BE20](v4 - 8);
  v131 = &v130 - v5;
  v138 = _s7SectionVMa(0);
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v157 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v135 = (&v130 - v8);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3338);
  MEMORY[0x28223BE20](v136);
  v142 = (&v130 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3340);
  MEMORY[0x28223BE20](v10 - 8);
  v153 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v130 - v13;
  v15 = type metadata accessor for SectionContent();
  v154 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v132 = &v130 - v19;
  MEMORY[0x28223BE20](v20);
  v143 = &v130 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v130 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v130 - v26;
  MEMORY[0x28223BE20](v28);
  v146 = &v130 - v29;
  MEMORY[0x28223BE20](v30);
  v156 = &v130 - v31;
  MEMORY[0x28223BE20](v32);
  v155 = &v130 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E68);
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v130 - v36;
  v140 = type metadata accessor for Page(0);
  MEMORY[0x28223BE20](v140);
  v141 = a2;
  v145 = &v130 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DDA0A0(a2, v145);
  v139 = v15;
  v39 = sub_21700E384();
  v40 = *(v158 + 16);
  v150 = v14;
  v133 = v17;
  if (v40)
  {
    v144 = v27;
    v41 = &v37[*(v34 + 36)];
    v148 = v37;
    v149 = v41;
    v42 = v158 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v147 = *(v35 + 72);
    v43 = v155;
    v44 = v156;
    do
    {
      sub_216DD9F00();
      sub_216DDA0A0(v37, v43);
      v45 = *v149;
      v46 = v149[1];
      v47 = v39[2];
      v158 = v40;
      if (v47)
      {
        v48 = sub_2166AF66C(v45, v46);
        if (v49)
        {
          v50 = v45;
          v151 = v39;
          v51 = v39[7] + *(v154 + 72) * v48;
          v52 = v146;
          sub_216DDA0A0(v51, v146);
          sub_216DDA0F4(v52, v44);
          v53 = v144;
          v54 = v152;
          sub_2169B6454(v43, v55, v56, v57, v58, v59, v60, v61, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141);
          v152 = v54;
          if (v54)
          {
            sub_216DDA050();
            sub_216DDA050();
            sub_2166997CC(v148, &qword_27CAC8E68);
LABEL_55:

            return sub_216DDA050();
          }

          sub_216DDA050();
          sub_216DDA050();
          sub_216DDA0F4(v53, v43);
          v39 = v151;
          v45 = v50;
        }
      }

      v62 = v43;
      v63 = v24;
      sub_216DDA0A0(v62, v24);
      swift_isUniquelyReferenced_nonNull_native();
      v159 = v39;
      v64 = v45;
      v65 = sub_2166AF66C(v45, v46);
      if (__OFADD__(v39[2], (v66 & 1) == 0))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v67 = v65;
      v68 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD170);
      if (sub_21700F554())
      {
        v69 = sub_2166AF66C(v64, v46);
        v44 = v156;
        if ((v68 & 1) != (v70 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v67 = v69;
      }

      else
      {
        v44 = v156;
      }

      v39 = v159;
      if (v68)
      {
        v71 = v159[7] + *(v154 + 72) * v67;
        v24 = v63;
        sub_2166CE10C(v63, v71);
        v43 = v155;
        sub_216DDA050();
      }

      else
      {
        v159[(v67 >> 6) + 8] |= 1 << v67;
        v72 = (v39[6] + 16 * v67);
        *v72 = v64;
        v72[1] = v46;
        v73 = v39[7] + *(v154 + 72) * v67;
        v24 = v63;
        sub_216DDA0F4(v63, v73);
        sub_21700DF14();
        v43 = v155;
        sub_216DDA050();
        v74 = v39[2];
        v75 = __OFADD__(v74, 1);
        v76 = v74 + 1;
        if (v75)
        {
          goto LABEL_63;
        }

        v39[2] = v76;
      }

      v37 = v148;
      sub_2166997CC(v148, &qword_27CAC8E68);
      v42 += v147;
      v40 = v158 - 1;
    }

    while (v158 != 1);
  }

  v77 = v138;
  v144 = sub_21700E384();
  v78 = 0;
  v79 = *(v141 + *(v140 + 28));
  v80 = v79[2];
  v81 = v152;
  v82 = v153;
  v83 = v135;
  v84 = v137;
  v85 = v136;
  v148 = v80;
  v149 = v79;
  while (1)
  {
    if (v78 == v80)
    {
      v86 = 1;
      v155 = v80;
    }

    else
    {
      if ((v78 & 0x8000000000000000) != 0)
      {
        goto LABEL_61;
      }

      if (v78 >= v79[2])
      {
        goto LABEL_62;
      }

      v87 = v39;
      v88 = (v78 + 1);
      v89 = v79 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v78;
      v90 = *(v85 + 48);
      v91 = v142;
      *v142 = v78;
      sub_216DDA0A0(v89, v91 + v90);
      sub_216DD9B04();
      v86 = 0;
      v155 = v88;
      v39 = v87;
      v82 = v153;
    }

    __swift_storeEnumTagSinglePayload(v82, v86, 1, v85);
    v92 = v150;
    sub_216DD9B04();
    if (__swift_getEnumTagSinglePayload(v92, 1, v85) == 1)
    {
      break;
    }

    v158 = *v92;
    sub_216DDA0F4(v92 + *(v85 + 48), v83);
    if (v39[2])
    {
      v93 = *v83;
      v146 = v83[1];
      v147 = v93;
      v94 = sub_2166AF66C(v93, v146);
      if (v95)
      {
        v96 = *(v154 + 72);
        v97 = v132;
        sub_216DDA0A0(v39[7] + v96 * v94, v132);
        sub_216DDA0F4(v97, v143);
        v98 = v133;
        sub_2169A4B24();
        if (v81)
        {
          sub_216DDA050();

          sub_216DDA050();
          goto LABEL_55;
        }

        v151 = v39;
        v99 = *(v140 + 28);
        v100 = *(v145 + v99);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_216E15A14();
          v100 = v116;
        }

        if ((v158 & 0x8000000000000000) != 0)
        {
          goto LABEL_64;
        }

        if (v158 >= *(v100 + 16))
        {
          goto LABEL_65;
        }

        v141 = v96;
        v152 = 0;
        v101 = *(v77 + 52);
        v156 = v100 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v158;
        sub_2166CE10C(v98, v156 + v101);
        *(v145 + v99) = v100;
        v102 = *(v134 + 24);
        v103 = sub_2166BF3C8(v102);
        for (i = 0; v103 != i; ++i)
        {
          if ((v102 & 0xC000000000000001) != 0)
          {
            MEMORY[0x21CEA0220](i, v102);
          }

          else
          {
            if (i >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_58;
            }
          }

          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            if (v158 >= *(v100 + 16))
            {
              goto LABEL_59;
            }

            sub_216DDA0A0(v156, v157);
            sub_216A9642C();
            swift_unknownObjectRelease();
            sub_216DDA050();
          }
        }

        v83 = v135;
        sub_216DDA0A0(v135, v157);
        v105 = v146;
        sub_21700DF14();
        v106 = v144;
        swift_isUniquelyReferenced_nonNull_native();
        v159 = v106;
        v107 = v147;
        sub_216939D04();

        v144 = v159;
        v108 = v151;
        v109 = sub_2166AF66C(v107, v105);
        if (v110)
        {
          v111 = v109;
          swift_isUniquelyReferenced_nonNull_native();
          v159 = v108;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD170);
          sub_21700F554();
          v112 = v159;

          v113 = v131;
          sub_216DDA0F4(*(v112 + 56) + v111 * v141, v131);
          v39 = v112;
          v114 = v139;
          sub_21700F574();
          v115 = 0;
          v81 = v152;
          v77 = v138;
          v84 = v137;
          v85 = v136;
        }

        else
        {
          v115 = 1;
          v81 = v152;
          v113 = v131;
          v77 = v138;
          v114 = v139;
          v84 = v137;
          v85 = v136;
          v39 = v108;
        }

        __swift_storeEnumTagSinglePayload(v113, v115, 1, v114);
        sub_2166997CC(v113, &qword_27CAC15B8);
        sub_216DDA050();
        v82 = v153;
      }
    }

    sub_216DDA050();
    v80 = v148;
    v79 = v149;
    v78 = v155;
  }

  if (!v39[2])
  {
    goto LABEL_52;
  }

  if (qword_27CAB5DB0 != -1)
  {
LABEL_66:
    swift_once();
  }

  v117 = sub_217007CA4();
  __swift_project_value_buffer(v117, qword_27CAC3320);
  v118 = sub_217007C84();
  v119 = sub_21700ED84();
  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v159 = v121;
    *v120 = 136446210;
    sub_21700DF14();
    v122 = sub_21700E394();
    v124 = v123;

    v125 = sub_2166A85FC(v122, v124, &v159);

    *(v120 + 4) = v125;
    _os_log_impl(&dword_216679000, v118, v119, "Unable to update items in sections with IDs: %{public}s", v120, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v121);
    MEMORY[0x21CEA1440](v121, -1, -1);
    MEMORY[0x21CEA1440](v120, -1, -1);
  }

LABEL_52:
  v126 = v130;
  sub_216DDA0A0(v145, v130);
  v127 = *(v134 + 32);

  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AC8);
  *(v126 + v128[9]) = v144;
  *(v126 + v128[10]) = v127;
  *(v126 + v128[11]) = 0;
  *(v126 + v128[12]) = 0;
  return sub_216DDA050();
}

uint64_t sub_216DB86A4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v158 = a1;
  v130 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15B8);
  MEMORY[0x28223BE20](v4 - 8);
  v131 = &v130 - v5;
  v138 = _s7SectionVMa(0);
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v157 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v135 = (&v130 - v8);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3338);
  MEMORY[0x28223BE20](v136);
  v142 = (&v130 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3340);
  MEMORY[0x28223BE20](v10 - 8);
  v153 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v130 - v13;
  v15 = type metadata accessor for SectionContent();
  v154 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v132 = &v130 - v19;
  MEMORY[0x28223BE20](v20);
  v143 = &v130 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v130 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v130 - v26;
  MEMORY[0x28223BE20](v28);
  v146 = &v130 - v29;
  MEMORY[0x28223BE20](v30);
  v156 = &v130 - v31;
  MEMORY[0x28223BE20](v32);
  v155 = &v130 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9670);
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v130 - v36;
  v140 = type metadata accessor for JSReplayPage();
  MEMORY[0x28223BE20](v140);
  v141 = a2;
  v145 = &v130 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DDA0A0(a2, v145);
  v139 = v15;
  v39 = sub_21700E384();
  v40 = *(v158 + 16);
  v150 = v14;
  v133 = v17;
  if (v40)
  {
    v144 = v27;
    v41 = &v37[*(v34 + 36)];
    v148 = v37;
    v149 = v41;
    v42 = v158 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v147 = *(v35 + 72);
    v43 = v155;
    v44 = v156;
    do
    {
      sub_216DD9F00();
      sub_216DDA0A0(v37, v43);
      v45 = *v149;
      v46 = v149[1];
      v47 = v39[2];
      v158 = v40;
      if (v47)
      {
        v48 = sub_2166AF66C(v45, v46);
        if (v49)
        {
          v50 = v45;
          v151 = v39;
          v51 = v39[7] + *(v154 + 72) * v48;
          v52 = v146;
          sub_216DDA0A0(v51, v146);
          sub_216DDA0F4(v52, v44);
          v53 = v144;
          v54 = v152;
          sub_2169B6454(v43, v55, v56, v57, v58, v59, v60, v61, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141);
          v152 = v54;
          if (v54)
          {
            sub_216DDA050();
            sub_216DDA050();
            sub_2166997CC(v148, &qword_27CAC9670);
LABEL_55:

            return sub_216DDA050();
          }

          sub_216DDA050();
          sub_216DDA050();
          sub_216DDA0F4(v53, v43);
          v39 = v151;
          v45 = v50;
        }
      }

      v62 = v43;
      v63 = v24;
      sub_216DDA0A0(v62, v24);
      swift_isUniquelyReferenced_nonNull_native();
      v159 = v39;
      v64 = v45;
      v65 = sub_2166AF66C(v45, v46);
      if (__OFADD__(v39[2], (v66 & 1) == 0))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v67 = v65;
      v68 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD170);
      if (sub_21700F554())
      {
        v69 = sub_2166AF66C(v64, v46);
        v44 = v156;
        if ((v68 & 1) != (v70 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v67 = v69;
      }

      else
      {
        v44 = v156;
      }

      v39 = v159;
      if (v68)
      {
        v71 = v159[7] + *(v154 + 72) * v67;
        v24 = v63;
        sub_2166CE10C(v63, v71);
        v43 = v155;
        sub_216DDA050();
      }

      else
      {
        v159[(v67 >> 6) + 8] |= 1 << v67;
        v72 = (v39[6] + 16 * v67);
        *v72 = v64;
        v72[1] = v46;
        v73 = v39[7] + *(v154 + 72) * v67;
        v24 = v63;
        sub_216DDA0F4(v63, v73);
        sub_21700DF14();
        v43 = v155;
        sub_216DDA050();
        v74 = v39[2];
        v75 = __OFADD__(v74, 1);
        v76 = v74 + 1;
        if (v75)
        {
          goto LABEL_63;
        }

        v39[2] = v76;
      }

      v37 = v148;
      sub_2166997CC(v148, &qword_27CAC9670);
      v42 += v147;
      v40 = v158 - 1;
    }

    while (v158 != 1);
  }

  v77 = v138;
  v144 = sub_21700E384();
  v78 = 0;
  v79 = *(v141 + *(v140 + 20));
  v80 = v79[2];
  v81 = v152;
  v82 = v153;
  v83 = v135;
  v84 = v137;
  v85 = v136;
  v148 = v80;
  v149 = v79;
  while (1)
  {
    if (v78 == v80)
    {
      v86 = 1;
      v155 = v80;
    }

    else
    {
      if ((v78 & 0x8000000000000000) != 0)
      {
        goto LABEL_61;
      }

      if (v78 >= v79[2])
      {
        goto LABEL_62;
      }

      v87 = v39;
      v88 = (v78 + 1);
      v89 = v79 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v78;
      v90 = *(v85 + 48);
      v91 = v142;
      *v142 = v78;
      sub_216DDA0A0(v89, v91 + v90);
      sub_216DD9B04();
      v86 = 0;
      v155 = v88;
      v39 = v87;
      v82 = v153;
    }

    __swift_storeEnumTagSinglePayload(v82, v86, 1, v85);
    v92 = v150;
    sub_216DD9B04();
    if (__swift_getEnumTagSinglePayload(v92, 1, v85) == 1)
    {
      break;
    }

    v158 = *v92;
    sub_216DDA0F4(v92 + *(v85 + 48), v83);
    if (v39[2])
    {
      v93 = *v83;
      v146 = v83[1];
      v147 = v93;
      v94 = sub_2166AF66C(v93, v146);
      if (v95)
      {
        v96 = *(v154 + 72);
        v97 = v132;
        sub_216DDA0A0(v39[7] + v96 * v94, v132);
        sub_216DDA0F4(v97, v143);
        v98 = v133;
        sub_2169A4B24();
        if (v81)
        {
          sub_216DDA050();

          sub_216DDA050();
          goto LABEL_55;
        }

        v151 = v39;
        v99 = *(v140 + 20);
        v100 = *(v145 + v99);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_216E15A14();
          v100 = v116;
        }

        if ((v158 & 0x8000000000000000) != 0)
        {
          goto LABEL_64;
        }

        if (v158 >= *(v100 + 16))
        {
          goto LABEL_65;
        }

        v141 = v96;
        v152 = 0;
        v101 = *(v77 + 52);
        v156 = v100 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v158;
        sub_2166CE10C(v98, v156 + v101);
        *(v145 + v99) = v100;
        v102 = *(v134 + 24);
        v103 = sub_2166BF3C8(v102);
        for (i = 0; v103 != i; ++i)
        {
          if ((v102 & 0xC000000000000001) != 0)
          {
            MEMORY[0x21CEA0220](i, v102);
          }

          else
          {
            if (i >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_58;
            }
          }

          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            if (v158 >= *(v100 + 16))
            {
              goto LABEL_59;
            }

            sub_216DDA0A0(v156, v157);
            sub_216A9642C();
            swift_unknownObjectRelease();
            sub_216DDA050();
          }
        }

        v83 = v135;
        sub_216DDA0A0(v135, v157);
        v105 = v146;
        sub_21700DF14();
        v106 = v144;
        swift_isUniquelyReferenced_nonNull_native();
        v159 = v106;
        v107 = v147;
        sub_216939D04();

        v144 = v159;
        v108 = v151;
        v109 = sub_2166AF66C(v107, v105);
        if (v110)
        {
          v111 = v109;
          swift_isUniquelyReferenced_nonNull_native();
          v159 = v108;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD170);
          sub_21700F554();
          v112 = v159;

          v113 = v131;
          sub_216DDA0F4(*(v112 + 56) + v111 * v141, v131);
          v39 = v112;
          v114 = v139;
          sub_21700F574();
          v115 = 0;
          v81 = v152;
          v77 = v138;
          v84 = v137;
          v85 = v136;
        }

        else
        {
          v115 = 1;
          v81 = v152;
          v113 = v131;
          v77 = v138;
          v114 = v139;
          v84 = v137;
          v85 = v136;
          v39 = v108;
        }

        __swift_storeEnumTagSinglePayload(v113, v115, 1, v114);
        sub_2166997CC(v113, &qword_27CAC15B8);
        sub_216DDA050();
        v82 = v153;
      }
    }

    sub_216DDA050();
    v80 = v148;
    v79 = v149;
    v78 = v155;
  }

  if (!v39[2])
  {
    goto LABEL_52;
  }

  if (qword_27CAB5DB0 != -1)
  {
LABEL_66:
    swift_once();
  }

  v117 = sub_217007CA4();
  __swift_project_value_buffer(v117, qword_27CAC3320);
  v118 = sub_217007C84();
  v119 = sub_21700ED84();
  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v159 = v121;
    *v120 = 136446210;
    sub_21700DF14();
    v122 = sub_21700E394();
    v124 = v123;

    v125 = sub_2166A85FC(v122, v124, &v159);

    *(v120 + 4) = v125;
    _os_log_impl(&dword_216679000, v118, v119, "Unable to update items in sections with IDs: %{public}s", v120, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v121);
    MEMORY[0x21CEA1440](v121, -1, -1);
    MEMORY[0x21CEA1440](v120, -1, -1);
  }

LABEL_52:
  v126 = v130;
  sub_216DDA0A0(v145, v130);
  v127 = *(v134 + 32);

  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC94A0);
  *(v126 + v128[9]) = v144;
  *(v126 + v128[10]) = v127;
  *(v126 + v128[11]) = 0;
  *(v126 + v128[12]) = 0;
  return sub_216DDA050();
}

uint64_t sub_216DB96F4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v153 = a1;
  v125 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15B8);
  MEMORY[0x28223BE20](v4 - 8);
  v126 = &v125 - v5;
  v132 = _s7SectionVMa(0);
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v152 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v129 = (&v125 - v8);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3338);
  MEMORY[0x28223BE20](v130);
  v136 = (&v125 - v9);
  v10 = type metadata accessor for SectionContent();
  v149 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v140 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v127 = &v125 - v13;
  MEMORY[0x28223BE20](v14);
  v138 = &v125 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v125 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v125 - v20;
  MEMORY[0x28223BE20](v22);
  v143 = &v125 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v125 - v25;
  MEMORY[0x28223BE20](v27);
  v151 = &v125 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3340);
  MEMORY[0x28223BE20](v29 - 8);
  v148 = &v125 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v125 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9120);
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v125 - v36;
  v134 = type metadata accessor for JSSearchPage();
  MEMORY[0x28223BE20](v134);
  v137 = a2;
  v141 = &v125 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DDA0A0(a2, v141);
  v133 = v10;
  v39 = sub_21700E384();
  v40 = *(v153 + 16);
  v146 = v33;
  if (v40)
  {
    v139 = v26;
    v142 = v21;
    v150 = &v37[*(v34 + 36)];
    v41 = v153 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v144 = *(v35 + 72);
    v145 = v37;
    v42 = v151;
    do
    {
      sub_216DD9F00();
      sub_216DDA0A0(v37, v42);
      v43 = *v150;
      v44 = v150[1];
      v45 = v39[2];
      v153 = v40;
      if (v45)
      {
        v46 = sub_2166AF66C(v43, v44);
        if (v47)
        {
          v48 = v43;
          v49 = v39;
          v50 = v39[7] + *(v149 + 72) * v46;
          v51 = v143;
          sub_216DDA0A0(v50, v143);
          sub_216DDA0F4(v51, v139);
          v52 = v142;
          v53 = v147;
          sub_2169B6454(v42, v54, v55, v56, v57, v58, v59, v60, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
          v147 = v53;
          if (v53)
          {
            sub_216DDA050();
            sub_216DDA050();
            sub_2166997CC(v145, &qword_27CAC9120);
LABEL_54:

            return sub_216DDA050();
          }

          sub_216DDA050();
          sub_216DDA050();
          sub_216DDA0F4(v52, v42);
          v39 = v49;
          v43 = v48;
        }
      }

      sub_216DDA0A0(v42, v18);
      swift_isUniquelyReferenced_nonNull_native();
      v154 = v39;
      v61 = v43;
      v62 = sub_2166AF66C(v43, v44);
      if (__OFADD__(v39[2], (v63 & 1) == 0))
      {
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v64 = v62;
      v65 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD170);
      if (sub_21700F554())
      {
        v66 = sub_2166AF66C(v61, v44);
        if ((v65 & 1) != (v67 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v64 = v66;
      }

      v39 = v154;
      if (v65)
      {
        sub_2166CE10C(v18, v154[7] + *(v149 + 72) * v64);
        v42 = v151;
        sub_216DDA050();
      }

      else
      {
        v154[(v64 >> 6) + 8] |= 1 << v64;
        v68 = (v39[6] + 16 * v64);
        *v68 = v61;
        v68[1] = v44;
        sub_216DDA0F4(v18, v39[7] + *(v149 + 72) * v64);
        sub_21700DF14();
        v42 = v151;
        sub_216DDA050();
        v69 = v39[2];
        v70 = __OFADD__(v69, 1);
        v71 = v69 + 1;
        if (v70)
        {
          goto LABEL_62;
        }

        v39[2] = v71;
      }

      v37 = v145;
      sub_2166997CC(v145, &qword_27CAC9120);
      v41 += v144;
      v40 = v153 - 1;
    }

    while (v153 != 1);
  }

  v72 = v132;
  v139 = sub_21700E384();
  v73 = 0;
  v74 = *(v137 + *(v134 + 20));
  v75 = *(v74 + 16);
  v76 = v147;
  v77 = v148;
  v78 = v129;
  v79 = v131;
  v80 = v130;
  v144 = v75;
  v145 = v74;
  while (1)
  {
    if (v73 == v75)
    {
      v81 = 1;
      v150 = v75;
    }

    else
    {
      if ((v73 & 0x8000000000000000) != 0)
      {
        goto LABEL_60;
      }

      if (v73 >= *(v74 + 16))
      {
        goto LABEL_61;
      }

      v82 = v39;
      v83 = (v73 + 1);
      v84 = v74 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v73;
      v85 = *(v80 + 48);
      v86 = v136;
      *v136 = v73;
      sub_216DDA0A0(v84, v86 + v85);
      sub_216DD9B04();
      v81 = 0;
      v150 = v83;
      v39 = v82;
      v77 = v148;
    }

    __swift_storeEnumTagSinglePayload(v77, v81, 1, v80);
    v87 = v146;
    sub_216DD9B04();
    if (__swift_getEnumTagSinglePayload(v87, 1, v80) == 1)
    {
      break;
    }

    v153 = *v87;
    sub_216DDA0F4(v87 + *(v80 + 48), v78);
    if (v39[2])
    {
      v88 = *v78;
      v142 = v78[1];
      v143 = v88;
      v89 = sub_2166AF66C(v88, v142);
      if (v90)
      {
        v91 = *(v149 + 72);
        v92 = v127;
        sub_216DDA0A0(v39[7] + v91 * v89, v127);
        sub_216DDA0F4(v92, v138);
        sub_2169A4B24();
        if (v76)
        {
          sub_216DDA050();

          sub_216DDA050();
          goto LABEL_54;
        }

        v137 = v39;
        v93 = *(v134 + 20);
        v94 = *(v141 + v93);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_216E15A14();
          v94 = v111;
        }

        v95 = v153;
        if ((v153 & 0x8000000000000000) != 0)
        {
          goto LABEL_63;
        }

        if (v153 >= *(v94 + 16))
        {
          goto LABEL_64;
        }

        v135 = v91;
        v147 = 0;
        v96 = *(v72 + 52);
        v151 = v94 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v153;
        sub_2166CE10C(v140, v151 + v96);
        *(v141 + v93) = v94;
        v97 = *(v128 + 24);
        v98 = sub_2166BF3C8(v97);
        for (i = 0; v98 != i; ++i)
        {
          if ((v97 & 0xC000000000000001) != 0)
          {
            MEMORY[0x21CEA0220](i, v97);
          }

          else
          {
            if (i >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }
          }

          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            if (v95 >= *(v94 + 16))
            {
              goto LABEL_58;
            }

            sub_216DDA0A0(v151, v152);
            sub_216A9642C();
            swift_unknownObjectRelease();
            v95 = v153;
            sub_216DDA050();
          }
        }

        v78 = v129;
        sub_216DDA0A0(v129, v152);
        v100 = v142;
        sub_21700DF14();
        v101 = v139;
        swift_isUniquelyReferenced_nonNull_native();
        v154 = v101;
        v102 = v143;
        sub_216939D04();

        v139 = v154;
        v103 = v137;
        v104 = sub_2166AF66C(v102, v100);
        if (v105)
        {
          v106 = v104;
          swift_isUniquelyReferenced_nonNull_native();
          v154 = v103;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD170);
          sub_21700F554();
          v107 = v154;

          v108 = v126;
          sub_216DDA0F4(*(v107 + 56) + v106 * v135, v126);
          v39 = v107;
          v109 = v133;
          sub_21700F574();
          v110 = 0;
          v76 = v147;
          v72 = v132;
          v79 = v131;
          v80 = v130;
        }

        else
        {
          v110 = 1;
          v76 = v147;
          v109 = v133;
          v108 = v126;
          v72 = v132;
          v79 = v131;
          v80 = v130;
          v39 = v103;
        }

        __swift_storeEnumTagSinglePayload(v108, v110, 1, v109);
        sub_2166997CC(v108, &qword_27CAC15B8);
        sub_216DDA050();
        v77 = v148;
      }
    }

    sub_216DDA050();
    v75 = v144;
    v74 = v145;
    v73 = v150;
  }

  if (!v39[2])
  {
    goto LABEL_51;
  }

  if (qword_27CAB5DB0 != -1)
  {
LABEL_65:
    swift_once();
  }

  v112 = sub_217007CA4();
  __swift_project_value_buffer(v112, qword_27CAC3320);
  v113 = sub_217007C84();
  v114 = sub_21700ED84();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v154 = v116;
    *v115 = 136446210;
    sub_21700DF14();
    v117 = sub_21700E394();
    v119 = v118;

    v120 = sub_2166A85FC(v117, v119, &v154);

    *(v115 + 4) = v120;
    _os_log_impl(&dword_216679000, v113, v114, "Unable to update items in sections with IDs: %{public}s", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v116);
    MEMORY[0x21CEA1440](v116, -1, -1);
    MEMORY[0x21CEA1440](v115, -1, -1);
  }

LABEL_51:
  v121 = v125;
  sub_216DDA0A0(v141, v125);
  v122 = *(v128 + 32);

  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EE8);
  *(v121 + v123[9]) = v139;
  *(v121 + v123[10]) = v122;
  *(v121 + v123[11]) = 0;
  *(v121 + v123[12]) = 0;
  return sub_216DDA050();
}

uint64_t sub_216DBA73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v137 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15B8);
  MEMORY[0x28223BE20](v5 - 8);
  v138 = &v137 - v6;
  v146 = _s7SectionVMa(0);
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v166 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v143 = (&v137 - v9);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3338);
  MEMORY[0x28223BE20](v144);
  v152 = (&v137 - v10);
  v11 = type metadata accessor for SectionContent();
  v163 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v155 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v141 = &v137 - v14;
  MEMORY[0x28223BE20](v15);
  v153 = &v137 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v137 - v21;
  MEMORY[0x28223BE20](v23);
  v156 = &v137 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v137 - v26;
  MEMORY[0x28223BE20](v28);
  v165 = &v137 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3340);
  MEMORY[0x28223BE20](v30 - 8);
  v161 = &v137 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v157 = &v137 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9308);
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v137 - v36;
  v149 = type metadata accessor for ReplayModel(0);
  MEMORY[0x28223BE20](v149);
  v150 = a2;
  v148 = &v137 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DDA0A0(a2, v148);
  v147 = v11;
  v39 = sub_21700E384();
  v40 = a1;
  v41 = *(a1 + 16);
  if (v41)
  {
    v151 = v27;
    v154 = v22;
    v164 = &v37[*(v34 + 36)];
    v42 = v40 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v158 = *(v35 + 72);
    v159 = v37;
    v43 = v165;
    do
    {
      sub_216DD9F00();
      sub_216DDA0A0(v37, v43);
      v44 = *v164;
      v45 = v164[1];
      v46 = v39[2];
      v167 = v41;
      if (v46)
      {
        v47 = sub_2166AF66C(v44, v45);
        if (v48)
        {
          v160 = v39;
          v49 = v39[7] + *(v163 + 72) * v47;
          v50 = v156;
          sub_216DDA0A0(v49, v156);
          sub_216DDA0F4(v50, v151);
          v51 = v154;
          v52 = v162;
          sub_2169B6454(v43, v53, v54, v55, v56, v57, v58, v59, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148);
          v162 = v52;
          if (v52)
          {
            sub_216DDA050();
            sub_216DDA050();
            sub_2166997CC(v159, &qword_27CAC9308);
LABEL_56:

            return sub_216DDA050();
          }

          sub_216DDA050();
          sub_216DDA050();
          sub_216DDA0F4(v51, v43);
          v39 = v160;
        }
      }

      v60 = v43;
      v61 = v19;
      sub_216DDA0A0(v60, v19);
      swift_isUniquelyReferenced_nonNull_native();
      v168 = v39;
      v62 = v44;
      v63 = sub_2166AF66C(v44, v45);
      if (__OFADD__(v39[2], (v64 & 1) == 0))
      {
LABEL_61:
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
        __break(1u);
        goto LABEL_67;
      }

      v65 = v63;
      v66 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD170);
      if (sub_21700F554())
      {
        v67 = v62;
        v68 = sub_2166AF66C(v62, v45);
        if ((v66 & 1) != (v69 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v65 = v68;
      }

      else
      {
        v67 = v62;
      }

      v70 = v167;
      v39 = v168;
      if (v66)
      {
        v71 = v168[7] + *(v163 + 72) * v65;
        v19 = v61;
        sub_2166CE10C(v61, v71);
        v43 = v165;
        sub_216DDA050();
      }

      else
      {
        v168[(v65 >> 6) + 8] |= 1 << v65;
        v72 = (v39[6] + 16 * v65);
        *v72 = v67;
        v72[1] = v45;
        v73 = v39[7] + *(v163 + 72) * v65;
        v19 = v61;
        sub_216DDA0F4(v61, v73);
        sub_21700DF14();
        v43 = v165;
        sub_216DDA050();
        v74 = v39[2];
        v75 = __OFADD__(v74, 1);
        v76 = v74 + 1;
        if (v75)
        {
          goto LABEL_64;
        }

        v39[2] = v76;
      }

      v37 = v159;
      sub_2166997CC(v159, &qword_27CAC9308);
      v42 += v158;
      v41 = v70 - 1;
    }

    while (v41);
  }

  v77 = v146;
  v154 = sub_21700E384();
  v78 = v39;
  v79 = v150 + *(v149 + 20);
  v140 = type metadata accessor for ReplayYearModel(0);
  v80 = v79 + *(v140 + 20);
  v81 = type metadata accessor for JSReplayPage();
  v82 = 0;
  v139 = v81;
  v83 = *(v80 + *(v81 + 20));
  v84 = v78;
  v151 = v83;
  v85 = *(v83 + 16);
  v86 = v161;
  v87 = v162;
  v88 = v143;
  v89 = v145;
  v90 = v144;
  v91 = v157;
  v159 = v85;
  while (1)
  {
    if (v82 == v85)
    {
      v92 = 1;
      v164 = v85;
    }

    else
    {
      if ((v82 & 0x8000000000000000) != 0)
      {
        goto LABEL_62;
      }

      if (v82 >= *(v151 + 2))
      {
        goto LABEL_63;
      }

      v93 = v84;
      v94 = (v82 + 1);
      v95 = &v151[((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v82];
      v96 = *(v90 + 48);
      v97 = v152;
      *v152 = v82;
      sub_216DDA0A0(v95, v97 + v96);
      v86 = v161;
      sub_216DD9B04();
      v92 = 0;
      v164 = v94;
      v84 = v93;
      v91 = v157;
    }

    __swift_storeEnumTagSinglePayload(v86, v92, 1, v90);
    sub_216DD9B04();
    if (__swift_getEnumTagSinglePayload(v91, 1, v90) == 1)
    {
      break;
    }

    v167 = *v91;
    sub_216DDA0F4(v91 + *(v90 + 48), v88);
    if (*(v84 + 16))
    {
      v98 = v88[1];
      v158 = *v88;
      v156 = v98;
      v99 = sub_2166AF66C(v158, v98);
      if (v100)
      {
        v101 = *(v163 + 72);
        v102 = v141;
        sub_216DDA0A0(*(v84 + 56) + v101 * v99, v141);
        sub_216DDA0F4(v102, v153);
        sub_2169A4B24();
        if (v87)
        {
          sub_216DDA050();

          sub_216DDA050();
          goto LABEL_56;
        }

        v160 = v84;
        v103 = v148 + *(v149 + 20) + *(v140 + 20);
        v104 = *(v139 + 20);
        v105 = *(v103 + v104);
        sub_21700DF14();
        v106 = v105;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_216E15A14();
          v106 = v123;
        }

        if ((v167 & 0x8000000000000000) != 0)
        {
          goto LABEL_65;
        }

        if (v167 >= *(v106 + 16))
        {
          goto LABEL_66;
        }

        v150 = v101;
        v162 = 0;
        v107 = *(v77 + 52);
        v165 = v106 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v167;
        sub_2166CE10C(v155, v165 + v107);

        v108 = v106;
        *(v103 + v104) = v106;
        v109 = *(v142 + 24);
        v110 = sub_2166BF3C8(v109);
        for (i = 0; v110 != i; ++i)
        {
          if ((v109 & 0xC000000000000001) != 0)
          {
            MEMORY[0x21CEA0220](i, v109);
          }

          else
          {
            if (i >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_59;
            }
          }

          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            if (v167 >= *(v108 + 16))
            {
              goto LABEL_60;
            }

            sub_216DDA0A0(v165, v166);
            sub_216A9642C();
            swift_unknownObjectRelease();
            sub_216DDA050();
          }
        }

        v88 = v143;
        sub_216DDA0A0(v143, v166);
        v112 = v156;
        sub_21700DF14();
        v113 = v154;
        swift_isUniquelyReferenced_nonNull_native();
        v168 = v113;
        v114 = v158;
        sub_216939D04();

        v154 = v168;
        v115 = v160;
        v116 = sub_2166AF66C(v114, v112);
        if (v117)
        {
          v118 = v116;
          swift_isUniquelyReferenced_nonNull_native();
          v168 = v115;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD170);
          sub_21700F554();
          v119 = v168;

          v120 = v138;
          sub_216DDA0F4(*(v119 + 56) + v118 * v150, v138);
          v84 = v119;
          v121 = v147;
          sub_21700F574();
          v122 = 0;
          v87 = v162;
          v77 = v146;
          v89 = v145;
          v90 = v144;
        }

        else
        {
          v122 = 1;
          v87 = v162;
          v121 = v147;
          v120 = v138;
          v77 = v146;
          v89 = v145;
          v90 = v144;
          v84 = v115;
        }

        __swift_storeEnumTagSinglePayload(v120, v122, 1, v121);
        sub_2166997CC(v120, &qword_27CAC15B8);
        sub_216DDA050();
        v86 = v161;
        v91 = v157;
      }

      else
      {
        v86 = v161;
      }
    }

    sub_216DDA050();
    v85 = v159;
    v82 = v164;
  }

  if (!*(v84 + 16))
  {
    goto LABEL_53;
  }

  if (qword_27CAB5DB0 != -1)
  {
LABEL_67:
    swift_once();
  }

  v124 = sub_217007CA4();
  __swift_project_value_buffer(v124, qword_27CAC3320);
  v125 = sub_217007C84();
  v126 = sub_21700ED84();
  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v168 = v128;
    *v127 = 136446210;
    sub_21700DF14();
    v129 = sub_21700E394();
    v131 = v130;

    v132 = sub_2166A85FC(v129, v131, &v168);

    *(v127 + 4) = v132;
    _os_log_impl(&dword_216679000, v125, v126, "Unable to update items in sections with IDs: %{public}s", v127, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v128);
    MEMORY[0x21CEA1440](v128, -1, -1);
    MEMORY[0x21CEA1440](v127, -1, -1);
  }

LABEL_53:
  v133 = v137;
  sub_216DDA0A0(v148, v137);
  v134 = *(v142 + 32);

  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0C0);
  *(v133 + v135[9]) = v154;
  *(v133 + v135[10]) = v134;
  *(v133 + v135[11]) = 0;
  *(v133 + v135[12]) = 0;
  return sub_216DDA050();
}

uint64_t sub_216DBB800@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v153 = a1;
  v126 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15B8);
  MEMORY[0x28223BE20](v4 - 8);
  v127 = &v125 - v5;
  v133 = _s7SectionVMa(0);
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v152 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v130 = (&v125 - v8);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3338);
  MEMORY[0x28223BE20](v131);
  v136 = (&v125 - v9);
  v10 = type metadata accessor for SectionContent();
  v149 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v140 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v128 = &v125 - v13;
  MEMORY[0x28223BE20](v14);
  v138 = &v125 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v125 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v125 - v20;
  MEMORY[0x28223BE20](v22);
  v143 = &v125 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v125 - v25;
  MEMORY[0x28223BE20](v27);
  v151 = &v125 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3340);
  MEMORY[0x28223BE20](v29 - 8);
  v148 = &v125 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v125 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC98E8);
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v125 - v36;
  v38 = type metadata accessor for JSSearchResultsPage(0);
  MEMORY[0x28223BE20](v38 - 8);
  v137 = a2;
  v141 = (&v125 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_216DDA0A0(a2, v141);
  v134 = v10;
  v40 = sub_21700E384();
  v41 = *(v153 + 16);
  v146 = v33;
  if (v41)
  {
    v139 = v26;
    v142 = v21;
    v150 = &v37[*(v34 + 36)];
    v42 = v153 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v144 = *(v35 + 72);
    v145 = v37;
    v43 = v151;
    do
    {
      sub_216DD9F00();
      sub_216DDA0A0(v37, v43);
      v44 = *v150;
      v45 = v150[1];
      v46 = v40[2];
      v153 = v41;
      if (v46)
      {
        v47 = sub_2166AF66C(v44, v45);
        if (v48)
        {
          v49 = v44;
          v50 = v40;
          v51 = v40[7] + *(v149 + 72) * v47;
          v52 = v143;
          sub_216DDA0A0(v51, v143);
          sub_216DDA0F4(v52, v139);
          v53 = v142;
          v54 = v147;
          sub_2169B6454(v43, v55, v56, v57, v58, v59, v60, v61, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
          v147 = v54;
          if (v54)
          {
            sub_216DDA050();
            sub_216DDA050();
            sub_2166997CC(v145, &qword_27CAC98E8);
LABEL_54:

            return sub_216DDA050();
          }

          sub_216DDA050();
          sub_216DDA050();
          sub_216DDA0F4(v53, v43);
          v40 = v50;
          v44 = v49;
        }
      }

      sub_216DDA0A0(v43, v18);
      swift_isUniquelyReferenced_nonNull_native();
      v154 = v40;
      v62 = v44;
      v63 = sub_2166AF66C(v44, v45);
      if (__OFADD__(v40[2], (v64 & 1) == 0))
      {
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v65 = v63;
      v66 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD170);
      if (sub_21700F554())
      {
        v67 = sub_2166AF66C(v62, v45);
        if ((v66 & 1) != (v68 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v65 = v67;
      }

      v40 = v154;
      if (v66)
      {
        sub_2166CE10C(v18, v154[7] + *(v149 + 72) * v65);
        v43 = v151;
        sub_216DDA050();
      }

      else
      {
        v154[(v65 >> 6) + 8] |= 1 << v65;
        v69 = (v40[6] + 16 * v65);
        *v69 = v62;
        v69[1] = v45;
        sub_216DDA0F4(v18, v40[7] + *(v149 + 72) * v65);
        sub_21700DF14();
        v43 = v151;
        sub_216DDA050();
        v70 = v40[2];
        v71 = __OFADD__(v70, 1);
        v72 = v70 + 1;
        if (v71)
        {
          goto LABEL_62;
        }

        v40[2] = v72;
      }

      v37 = v145;
      sub_2166997CC(v145, &qword_27CAC98E8);
      v42 += v144;
      v41 = v153 - 1;
    }

    while (v153 != 1);
  }

  v73 = v133;
  v139 = sub_21700E384();
  v74 = 0;
  v75 = *v137;
  v76 = *(*v137 + 16);
  v77 = v147;
  v78 = v148;
  v79 = v130;
  v80 = v132;
  v81 = v131;
  v144 = v76;
  v145 = v75;
  while (1)
  {
    if (v74 == v76)
    {
      v82 = 1;
      v150 = v76;
    }

    else
    {
      if ((v74 & 0x8000000000000000) != 0)
      {
        goto LABEL_60;
      }

      if (v74 >= *(v75 + 16))
      {
        goto LABEL_61;
      }

      v83 = v40;
      v84 = (v74 + 1);
      v85 = v75 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v74;
      v86 = *(v81 + 48);
      v87 = v136;
      *v136 = v74;
      sub_216DDA0A0(v85, v87 + v86);
      sub_216DD9B04();
      v82 = 0;
      v150 = v84;
      v40 = v83;
      v78 = v148;
    }

    __swift_storeEnumTagSinglePayload(v78, v82, 1, v81);
    v88 = v146;
    sub_216DD9B04();
    if (__swift_getEnumTagSinglePayload(v88, 1, v81) == 1)
    {
      break;
    }

    v153 = *v88;
    sub_216DDA0F4(v88 + *(v81 + 48), v79);
    if (v40[2])
    {
      v89 = *v79;
      v142 = v79[1];
      v143 = v89;
      v90 = sub_2166AF66C(v89, v142);
      if (v91)
      {
        v92 = *(v149 + 72);
        v93 = v128;
        sub_216DDA0A0(v40[7] + v92 * v90, v128);
        sub_216DDA0F4(v93, v138);
        sub_2169A4B24();
        if (v77)
        {
          sub_216DDA050();

          sub_216DDA050();
          goto LABEL_54;
        }

        v94 = *v141;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_216E15A14();
          v94 = v111;
        }

        v95 = v153;
        if ((v153 & 0x8000000000000000) != 0)
        {
          goto LABEL_63;
        }

        if (v153 >= *(v94 + 16))
        {
          goto LABEL_64;
        }

        v135 = v92;
        v137 = v40;
        v147 = 0;
        v96 = *(v73 + 52);
        v151 = v94 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v153;
        sub_2166CE10C(v140, v151 + v96);
        *v141 = v94;
        v97 = *(v129 + 24);
        v98 = sub_2166BF3C8(v97);
        for (i = 0; v98 != i; ++i)
        {
          if ((v97 & 0xC000000000000001) != 0)
          {
            MEMORY[0x21CEA0220](i, v97);
          }

          else
          {
            if (i >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }
          }

          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            if (v95 >= *(v94 + 16))
            {
              goto LABEL_58;
            }

            sub_216DDA0A0(v151, v152);
            sub_216A9642C();
            swift_unknownObjectRelease();
            v95 = v153;
            sub_216DDA050();
          }
        }

        v79 = v130;
        sub_216DDA0A0(v130, v152);
        v100 = v142;
        sub_21700DF14();
        v101 = v139;
        swift_isUniquelyReferenced_nonNull_native();
        v154 = v101;
        v102 = v143;
        sub_216939D04();

        v139 = v154;
        v103 = v137;
        v104 = sub_2166AF66C(v102, v100);
        if (v105)
        {
          v106 = v104;
          swift_isUniquelyReferenced_nonNull_native();
          v154 = v103;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD170);
          sub_21700F554();
          v107 = v154;

          v108 = v127;
          sub_216DDA0F4(*(v107 + 56) + v106 * v135, v127);
          v40 = v107;
          v109 = v134;
          sub_21700F574();
          v110 = 0;
          v77 = v147;
          v73 = v133;
          v80 = v132;
          v81 = v131;
        }

        else
        {
          v110 = 1;
          v77 = v147;
          v73 = v133;
          v109 = v134;
          v108 = v127;
          v80 = v132;
          v81 = v131;
          v40 = v103;
        }

        __swift_storeEnumTagSinglePayload(v108, v110, 1, v109);
        sub_2166997CC(v108, &qword_27CAC15B8);
        sub_216DDA050();
        v78 = v148;
      }
    }

    sub_216DDA050();
    v76 = v144;
    v75 = v145;
    v74 = v150;
  }

  if (!v40[2])
  {
    goto LABEL_51;
  }

  if (qword_27CAB5DB0 != -1)
  {
LABEL_65:
    swift_once();
  }

  v112 = sub_217007CA4();
  __swift_project_value_buffer(v112, qword_27CAC3320);
  v113 = sub_217007C84();
  v114 = sub_21700ED84();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v154 = v116;
    *v115 = 136446210;
    sub_21700DF14();
    v117 = sub_21700E394();
    v119 = v118;

    v120 = sub_2166A85FC(v117, v119, &v154);

    *(v115 + 4) = v120;
    _os_log_impl(&dword_216679000, v113, v114, "Unable to update items in sections with IDs: %{public}s", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v116);
    MEMORY[0x21CEA1440](v116, -1, -1);
    MEMORY[0x21CEA1440](v115, -1, -1);
  }

LABEL_51:
  v121 = v126;
  sub_216DDA0A0(v141, v126);
  v122 = *(v129 + 32);

  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96D8);
  *(v121 + v123[9]) = v139;
  *(v121 + v123[10]) = v122;
  *(v121 + v123[11]) = 0;
  *(v121 + v123[12]) = 0;
  return sub_216DDA050();
}

uint64_t sub_216DBC820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X8>)
{
  v71 = a3;
  v6 = type metadata accessor for SectionContent();
  MEMORY[0x28223BE20](v6 - 8);
  v81 = (&v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = _s7SectionVMa(0);
  v87 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v90 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v71 - v10);
  v78 = type metadata accessor for Page(0);
  MEMORY[0x28223BE20](v78);
  v86 = a2;
  v82 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DDA0A0(a2, v82);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E70);
  v13 = sub_21700E384();
  v14 = *(a1 + 16);
  v15 = (a1 + 56);
  v88 = v11;
  if (v14)
  {
    do
    {
      v91 = v14;
      v17 = *(v15 - 3);
      v16 = *(v15 - 2);
      v18 = *(v15 - 1);
      v89 = v15;
      v19 = *v15;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_isUniquelyReferenced_nonNull_native();
      v92 = v13;
      v20 = sub_2166AF66C(v16, v18);
      if (__OFADD__(v13[2], (v21 & 1) == 0))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v22 = v20;
      v3 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E78);
      if (sub_21700F554())
      {
        v23 = sub_2166AF66C(v16, v18);
        if ((v3 & 1) != (v24 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v22 = v23;
      }

      v13 = v92;
      if (v3)
      {
        v25 = v92[7] + 32 * v22;
        *v25 = v17;
        *(v25 + 8) = v16;
        *(v25 + 16) = v18;
        *(v25 + 24) = v19;
      }

      else
      {
        v92[(v22 >> 6) + 8] |= 1 << v22;
        v26 = (v13[6] + 16 * v22);
        *v26 = v16;
        v26[1] = v18;
        v27 = v13[7] + 32 * v22;
        *v27 = v17;
        *(v27 + 8) = v16;
        *(v27 + 16) = v18;
        *(v27 + 24) = v19;

        v28 = v13[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_47;
        }

        v13[2] = v30;
      }

      v11 = v88;
      v15 = v89 + 32;
      v14 = v91 - 1;
    }

    while (v91 != 1);
  }

  v31 = v77;
  v3 = sub_21700E384();
  v32 = *(v86 + *(v78 + 28));
  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = 0;
    v35 = *(v87 + 80);
    v74 = *(v86 + *(v78 + 28));
    v75 = (v35 + 32) & ~v35;
    v86 = v32 + v75;
    v73 = v33;
    while (v34 < *(v32 + 16))
    {
      v36 = *(v87 + 72);
      v91 = v34;
      v37 = v36 * v34;
      sub_216DDA0A0(v86 + v36 * v34, v11);
      if (v13[2])
      {
        v38 = *v11;
        v84 = v11[1];
        v85 = v38;
        v39 = sub_2166AF66C(v38, v84);
        if (v40)
        {
          v80 = v3;
          v41 = v13[7] + 32 * v39;
          v43 = *v41;
          v42 = *(v41 + 8);
          v44 = *(v41 + 16);
          v45 = *(v41 + 24);
          sub_21700DF14();
          sub_21700DF14();
          v46 = v42;
          v47 = v83;
          sub_216D17538(v43, v46, v44, v45, sub_216D1D2E4, sub_216D1DCC0, sub_216D1E69C, sub_216D1F078, sub_216D1FA54, sub_216D20430, sub_216D20DCC, sub_216D217A8, sub_216D22184, sub_216D22B60, sub_216D2353C, sub_216D23F18, sub_216D248B4, sub_216D25290, &unk_27CAC8E80, &unk_21705F1C8, sub_216D25C6C, sub_216D26648, sub_216D26FE4, sub_216D279C0, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
          v83 = v47;
          if (v47)
          {

            sub_216DDA050();

            return sub_216DDA050();
          }

          v48 = *(v78 + 28);
          v3 = *(v82 + v48);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216E15A14();
            v3 = v57;
          }

          if (v91 >= *(v3 + 16))
          {
            goto LABEL_49;
          }

          v79 = v13;
          v49 = *(v31 + 52);
          v89 = (v3 + v75 + v37);
          sub_2166CE10C(v81, &v89[v49]);
          *(v82 + v48) = v3;
          v50 = *(v76 + 24);
          v51 = sub_2166BF3C8(v50);
          for (i = 0; v51 != i; ++i)
          {
            if ((v50 & 0xC000000000000001) != 0)
            {
              MEMORY[0x21CEA0220](i, v50);
            }

            else
            {
              if (i >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_44;
              }
            }

            if (__OFADD__(i, 1))
            {
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

            if (swift_unknownObjectWeakLoadStrong())
            {
              if (v91 >= *(v3 + 16))
              {
                goto LABEL_45;
              }

              sub_216DDA0A0(v89, v90);
              sub_216A9642C();
              swift_unknownObjectRelease();
              sub_216DDA050();
            }
          }

          v11 = v88;
          sub_216DDA0A0(v88, v90);
          v53 = v84;
          sub_21700DF14();
          v54 = v80;
          swift_isUniquelyReferenced_nonNull_native();
          v92 = v54;
          v55 = v85;
          sub_216939D04();

          v3 = v92;
          v13 = v79;
          sub_2166AF66C(v55, v53);
          if (v56)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v92 = v13;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E78);
            sub_21700F554();
            v13 = v92;

            sub_21700F574();
          }

          v31 = v77;
          v33 = v73;
          v32 = v74;
        }
      }

      v34 = v91 + 1;
      sub_216DDA050();
      if (v34 == v33)
      {
        goto LABEL_35;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
    goto LABEL_37;
  }

LABEL_35:
  if (!v13[2])
  {
    goto LABEL_40;
  }

  if (qword_27CAB5DB0 != -1)
  {
    goto LABEL_50;
  }

LABEL_37:
  v58 = sub_217007CA4();
  __swift_project_value_buffer(v58, qword_27CAC3320);
  v59 = sub_217007C84();
  v60 = sub_21700ED84();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v92 = v62;
    *v61 = 136446210;
    sub_21700DF14();
    v63 = sub_21700E394();
    v65 = v64;

    v66 = sub_2166A85FC(v63, v65, &v92);

    *(v61 + 4) = v66;
    _os_log_impl(&dword_216679000, v59, v60, "Unable to update items in sections with IDs: %{public}s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    MEMORY[0x21CEA1440](v62, -1, -1);
    MEMORY[0x21CEA1440](v61, -1, -1);
  }

LABEL_40:
  v67 = v71;
  sub_216DDA0A0(v82, v71);
  v68 = *(v76 + 32);

  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AC8);
  *(v67 + v69[9]) = v3;
  *(v67 + v69[10]) = v68;
  *(v67 + v69[11]) = 0;
  *(v67 + v69[12]) = 0;
  return sub_216DDA050();
}

uint64_t sub_216DBD31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X8>)
{
  v71 = a3;
  v6 = type metadata accessor for SectionContent();
  MEMORY[0x28223BE20](v6 - 8);
  v81 = (&v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = _s7SectionVMa(0);
  v87 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v90 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v71 - v10);
  v78 = type metadata accessor for JSReplayPage();
  MEMORY[0x28223BE20](v78);
  v86 = a2;
  v82 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DDA0A0(a2, v82);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9678);
  v13 = sub_21700E384();
  v14 = *(a1 + 16);
  v15 = (a1 + 56);
  v88 = v11;
  if (v14)
  {
    do
    {
      v91 = v14;
      v17 = *(v15 - 3);
      v16 = *(v15 - 2);
      v18 = *(v15 - 1);
      v89 = v15;
      v19 = *v15;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_isUniquelyReferenced_nonNull_native();
      v92 = v13;
      v20 = sub_2166AF66C(v16, v18);
      if (__OFADD__(v13[2], (v21 & 1) == 0))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v22 = v20;
      v3 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9680);
      if (sub_21700F554())
      {
        v23 = sub_2166AF66C(v16, v18);
        if ((v3 & 1) != (v24 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v22 = v23;
      }

      v13 = v92;
      if (v3)
      {
        v25 = v92[7] + 32 * v22;
        *v25 = v17;
        *(v25 + 8) = v16;
        *(v25 + 16) = v18;
        *(v25 + 24) = v19;
      }

      else
      {
        v92[(v22 >> 6) + 8] |= 1 << v22;
        v26 = (v13[6] + 16 * v22);
        *v26 = v16;
        v26[1] = v18;
        v27 = v13[7] + 32 * v22;
        *v27 = v17;
        *(v27 + 8) = v16;
        *(v27 + 16) = v18;
        *(v27 + 24) = v19;

        v28 = v13[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_47;
        }

        v13[2] = v30;
      }

      v11 = v88;
      v15 = v89 + 32;
      v14 = v91 - 1;
    }

    while (v91 != 1);
  }

  v31 = v77;
  v3 = sub_21700E384();
  v32 = *(v86 + *(v78 + 20));
  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = 0;
    v35 = *(v87 + 80);
    v74 = *(v86 + *(v78 + 20));
    v75 = (v35 + 32) & ~v35;
    v86 = v32 + v75;
    v73 = v33;
    while (v34 < *(v32 + 16))
    {
      v36 = *(v87 + 72);
      v91 = v34;
      v37 = v36 * v34;
      sub_216DDA0A0(v86 + v36 * v34, v11);
      if (v13[2])
      {
        v38 = *v11;
        v84 = v11[1];
        v85 = v38;
        v39 = sub_2166AF66C(v38, v84);
        if (v40)
        {
          v80 = v3;
          v41 = v13[7] + 32 * v39;
          v43 = *v41;
          v42 = *(v41 + 8);
          v44 = *(v41 + 16);
          v45 = *(v41 + 24);
          sub_21700DF14();
          sub_21700DF14();
          v46 = v42;
          v47 = v83;
          sub_216D17538(v43, v46, v44, v45, sub_216D2839C, sub_216D28D78, sub_216D29754, sub_216D2A130, sub_216D2AB0C, sub_216D2B4E8, sub_216D2BE84, sub_216D2C860, sub_216D2D23C, sub_216D2DC18, sub_216D2E5F4, sub_216D2EFD0, sub_216D2F96C, sub_216D30348, &unk_27CAC9688, &unk_217060030, sub_216D31340, sub_216D32338, sub_216D32CD4, sub_216D336B0, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
          v83 = v47;
          if (v47)
          {

            sub_216DDA050();

            return sub_216DDA050();
          }

          v48 = *(v78 + 20);
          v3 = *(v82 + v48);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216E15A14();
            v3 = v57;
          }

          if (v91 >= *(v3 + 16))
          {
            goto LABEL_49;
          }

          v79 = v13;
          v49 = *(v31 + 52);
          v89 = (v3 + v75 + v37);
          sub_2166CE10C(v81, &v89[v49]);
          *(v82 + v48) = v3;
          v50 = *(v76 + 24);
          v51 = sub_2166BF3C8(v50);
          for (i = 0; v51 != i; ++i)
          {
            if ((v50 & 0xC000000000000001) != 0)
            {
              MEMORY[0x21CEA0220](i, v50);
            }

            else
            {
              if (i >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_44;
              }
            }

            if (__OFADD__(i, 1))
            {
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

            if (swift_unknownObjectWeakLoadStrong())
            {
              if (v91 >= *(v3 + 16))
              {
                goto LABEL_45;
              }

              sub_216DDA0A0(v89, v90);
              sub_216A9642C();
              swift_unknownObjectRelease();
              sub_216DDA050();
            }
          }

          v11 = v88;
          sub_216DDA0A0(v88, v90);
          v53 = v84;
          sub_21700DF14();
          v54 = v80;
          swift_isUniquelyReferenced_nonNull_native();
          v92 = v54;
          v55 = v85;
          sub_216939D04();

          v3 = v92;
          v13 = v79;
          sub_2166AF66C(v55, v53);
          if (v56)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v92 = v13;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9680);
            sub_21700F554();
            v13 = v92;

            sub_21700F574();
          }

          v31 = v77;
          v33 = v73;
          v32 = v74;
        }
      }

      v34 = v91 + 1;
      sub_216DDA050();
      if (v34 == v33)
      {
        goto LABEL_35;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
    goto LABEL_37;
  }

LABEL_35:
  if (!v13[2])
  {
    goto LABEL_40;
  }

  if (qword_27CAB5DB0 != -1)
  {
    goto LABEL_50;
  }

LABEL_37:
  v58 = sub_217007CA4();
  __swift_project_value_buffer(v58, qword_27CAC3320);
  v59 = sub_217007C84();
  v60 = sub_21700ED84();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v92 = v62;
    *v61 = 136446210;
    sub_21700DF14();
    v63 = sub_21700E394();
    v65 = v64;

    v66 = sub_2166A85FC(v63, v65, &v92);

    *(v61 + 4) = v66;
    _os_log_impl(&dword_216679000, v59, v60, "Unable to update items in sections with IDs: %{public}s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    MEMORY[0x21CEA1440](v62, -1, -1);
    MEMORY[0x21CEA1440](v61, -1, -1);
  }

LABEL_40:
  v67 = v71;
  sub_216DDA0A0(v82, v71);
  v68 = *(v76 + 32);

  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC94A0);
  *(v67 + v69[9]) = v3;
  *(v67 + v69[10]) = v68;
  *(v67 + v69[11]) = 0;
  *(v67 + v69[12]) = 0;
  return sub_216DDA050();
}

uint64_t sub_216DBDE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70[0] = a3;
  v5 = type metadata accessor for SectionContent();
  MEMORY[0x28223BE20](v5 - 8);
  v78 = (v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = _s7SectionVMa(0);
  v85 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v88 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (v70 - v9);
  v76 = type metadata accessor for JSSearchPage();
  MEMORY[0x28223BE20](v76);
  v84 = a2;
  v80 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DDA0A0(a2, v80);
  v70[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9128);
  v12 = sub_21700E384();
  v13 = *(a1 + 16);
  v14 = (a1 + 56);
  v86 = v10;
  if (v13)
  {
    do
    {
      v89 = v13;
      v16 = *(v14 - 3);
      v15 = *(v14 - 2);
      v17 = *(v14 - 1);
      v87 = v14;
      v18 = *v14;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_isUniquelyReferenced_nonNull_native();
      v90 = v12;
      v19 = sub_2166AF66C(v15, v17);
      if (__OFADD__(v12[2], (v20 & 1) == 0))
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v21 = v19;
      v22 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9130);
      if (sub_21700F554())
      {
        v23 = sub_2166AF66C(v15, v17);
        v10 = v86;
        if ((v22 & 1) != (v24 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v21 = v23;
      }

      else
      {
        v10 = v86;
      }

      v12 = v90;
      if (v22)
      {
        v25 = v90[7] + 32 * v21;
        *v25 = v16;
        *(v25 + 8) = v15;
        *(v25 + 16) = v17;
        *(v25 + 24) = v18;
      }

      else
      {
        v90[(v21 >> 6) + 8] |= 1 << v21;
        v26 = (v12[6] + 16 * v21);
        *v26 = v15;
        v26[1] = v17;
        v27 = v12[7] + 32 * v21;
        *v27 = v16;
        *(v27 + 8) = v15;
        *(v27 + 16) = v17;
        *(v27 + 24) = v18;

        v28 = v12[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_48;
        }

        v12[2] = v30;
      }

      v14 = v87 + 32;
      v13 = v89 - 1;
    }

    while (v89 != 1);
  }

  v31 = v75;
  v79 = sub_21700E384();
  v32 = *(v84 + *(v76 + 20));
  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = 0;
    v35 = *(v85 + 80);
    v72 = *(v84 + *(v76 + 20));
    v73 = (v35 + 32) & ~v35;
    v84 = v32 + v73;
    v71 = v33;
    while (v34 < *(v32 + 16))
    {
      v36 = *(v85 + 72) * v34;
      sub_216DDA0A0(v84 + v36, v10);
      if (v12[2])
      {
        v37 = *v10;
        v82 = v10[1];
        v83 = v37;
        v38 = sub_2166AF66C(v37, v82);
        if (v39)
        {
          v89 = v34;
          v40 = v12[7] + 32 * v38;
          v41 = *v40;
          v42 = *(v40 + 24);
          sub_21700DF14();
          sub_21700DF14();
          v43 = v81;
          sub_216D189A0(v41, v42, v78);
          v81 = v43;
          if (v43)
          {

            sub_216DDA050();

            return sub_216DDA050();
          }

          v44 = *(v76 + 20);
          v45 = *(v80 + v44);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v47 = v89;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_216E15A14();
            v45 = v56;
          }

          if (v47 >= *(v45 + 16))
          {
            goto LABEL_50;
          }

          v77 = v12;
          v48 = *(v31 + 52);
          v87 = (v45 + v73 + v36);
          sub_2166CE10C(v78, &v87[v48]);
          *(v80 + v44) = v45;
          v49 = *(v74 + 24);
          v50 = sub_2166BF3C8(v49);
          for (i = 0; v50 != i; ++i)
          {
            if ((v49 & 0xC000000000000001) != 0)
            {
              MEMORY[0x21CEA0220](i, v49);
            }

            else
            {
              if (i >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_45;
              }
            }

            if (__OFADD__(i, 1))
            {
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
              goto LABEL_47;
            }

            if (swift_unknownObjectWeakLoadStrong())
            {
              if (v89 >= *(v45 + 16))
              {
                goto LABEL_46;
              }

              sub_216DDA0A0(v87, v88);
              sub_216A9642C();
              swift_unknownObjectRelease();
              sub_216DDA050();
            }
          }

          v10 = v86;
          sub_216DDA0A0(v86, v88);
          v52 = v82;
          sub_21700DF14();
          v53 = v79;
          swift_isUniquelyReferenced_nonNull_native();
          v90 = v53;
          v54 = v83;
          sub_216939D04();

          v79 = v90;
          v12 = v77;
          sub_2166AF66C(v54, v52);
          if (v55)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v90 = v12;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9130);
            sub_21700F554();
            v12 = v90;

            sub_21700F574();
          }

          v31 = v75;
          v33 = v71;
          v32 = v72;
          v34 = v89;
        }
      }

      ++v34;
      sub_216DDA050();
      if (v34 == v33)
      {
        goto LABEL_36;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
    goto LABEL_38;
  }

LABEL_36:
  if (!v12[2])
  {
    goto LABEL_41;
  }

  if (qword_27CAB5DB0 != -1)
  {
    goto LABEL_51;
  }

LABEL_38:
  v57 = sub_217007CA4();
  __swift_project_value_buffer(v57, qword_27CAC3320);
  v58 = sub_217007C84();
  v59 = sub_21700ED84();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v90 = v61;
    *v60 = 136446210;
    sub_21700DF14();
    v62 = sub_21700E394();
    v64 = v63;

    v65 = sub_2166A85FC(v62, v64, &v90);

    *(v60 + 4) = v65;
    _os_log_impl(&dword_216679000, v58, v59, "Unable to update items in sections with IDs: %{public}s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    MEMORY[0x21CEA1440](v61, -1, -1);
    MEMORY[0x21CEA1440](v60, -1, -1);
  }

LABEL_41:
  v66 = v70[0];
  sub_216DDA0A0(v80, v70[0]);
  v67 = *(v74 + 32);

  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EE8);
  *(v66 + v68[9]) = v79;
  *(v66 + v68[10]) = v67;
  *(v66 + v68[11]) = 0;
  *(v66 + v68[12]) = 0;
  return sub_216DDA050();
}

uint64_t sub_216DBE7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72[0] = a3;
  v5 = type metadata accessor for SectionContent();
  MEMORY[0x28223BE20](v5 - 8);
  v85 = (v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = _s7SectionVMa(0);
  v79 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v92 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v78 = (v72 - v9);
  v82 = type metadata accessor for ReplayModel(0);
  MEMORY[0x28223BE20](v82);
  v90 = a2;
  v81 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DDA0A0(a2, v81);
  v72[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9310);
  v11 = sub_21700E384();
  v12 = *(a1 + 16);
  v13 = (a1 + 56);
  if (v12)
  {
    do
    {
      v93 = v12;
      v15 = *(v13 - 3);
      v14 = *(v13 - 2);
      v16 = *(v13 - 1);
      v91 = v13;
      v17 = *v13;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94 = v11;
      v19 = sub_2166AF66C(v14, v16);
      if (__OFADD__(v11[2], (v20 & 1) == 0))
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v21 = v19;
      v22 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9318);
      if (sub_21700F554())
      {
        v23 = sub_2166AF66C(v14, v16);
        if ((v22 & 1) != (v24 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v21 = v23;
      }

      v11 = v94;
      if (v22)
      {
        v25 = v94[7] + 32 * v21;
        *v25 = v15;
        *(v25 + 8) = v14;
        *(v25 + 16) = v16;
        *(v25 + 24) = v17;
      }

      else
      {
        v94[(v21 >> 6) + 8] |= 1 << v21;
        v26 = (v11[6] + 16 * v21);
        *v26 = v14;
        v26[1] = v16;
        v27 = v11[7] + 32 * v21;
        *v27 = v15;
        *(v27 + 8) = v14;
        *(v27 + 16) = v16;
        *(v27 + 24) = v17;

        v28 = v11[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_48;
        }

        v11[2] = v30;
      }

      v13 = v91 + 32;
      v12 = v93 - 1;
    }

    while (v93 != 1);
  }

  isUniquelyReferenced_nonNull_native = sub_21700E384();
  v31 = v90 + *(v82 + 20);
  v77 = type metadata accessor for ReplayYearModel(0);
  v32 = v31 + *(v77 + 20);
  v76 = type metadata accessor for JSReplayPage();
  v33 = *(v32 + *(v76 + 20));
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = 0;
    v37 = v78;
    v36 = v79;
    v38 = *(v79 + 80);
    v74 = v33;
    v75 = (v38 + 32) & ~v38;
    v90 = v33 + v75;
    v73 = v34;
    while (v35 < *(v33 + 16))
    {
      v39 = *(v36 + 72) * v35;
      sub_216DDA0A0(v90 + v39, v37);
      if (v11[2])
      {
        v93 = v35;
        v40 = *v37;
        v88 = v37[1];
        v89 = v40;
        v41 = sub_2166AF66C(v40, v88);
        if (v42)
        {
          v43 = v11[7] + 32 * v41;
          v44 = *v43;
          v45 = *(v43 + 24);
          sub_21700DF14();
          sub_21700DF14();
          v46 = v86;
          sub_216D1A20C(v44, v45, v85);
          v86 = v46;
          if (v46)
          {

            sub_216DDA050();

            return sub_216DDA050();
          }

          v47 = v81 + *(v82 + 20) + *(v77 + 20);
          v48 = *(v76 + 20);
          v49 = *(v47 + v48);
          sub_21700DF14();
          v50 = v49;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216E15A14();
            v50 = v58;
          }

          if (v93 >= *(v50 + 16))
          {
            goto LABEL_50;
          }

          v83 = isUniquelyReferenced_nonNull_native;
          v84 = v11;
          v51 = *(v87 + 52);
          v91 = (v50 + v75 + v39);
          sub_2166CE10C(v85, &v91[v51]);

          *(v47 + v48) = v50;
          v52 = *(v80 + 24);
          v53 = sub_2166BF3C8(v52);
          for (isUniquelyReferenced_nonNull_native = 0; v53 != isUniquelyReferenced_nonNull_native; ++isUniquelyReferenced_nonNull_native)
          {
            if ((v52 & 0xC000000000000001) != 0)
            {
              MEMORY[0x21CEA0220](isUniquelyReferenced_nonNull_native, v52);
            }

            else
            {
              if (isUniquelyReferenced_nonNull_native >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_45;
              }
            }

            if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
            {
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
              goto LABEL_47;
            }

            if (swift_unknownObjectWeakLoadStrong())
            {
              if (v93 >= *(v50 + 16))
              {
                goto LABEL_46;
              }

              sub_216DDA0A0(v91, v92);
              sub_216A9642C();
              swift_unknownObjectRelease();
              sub_216DDA050();
            }
          }

          v37 = v78;
          sub_216DDA0A0(v78, v92);
          v54 = v88;
          sub_21700DF14();
          v55 = v83;
          swift_isUniquelyReferenced_nonNull_native();
          v94 = v55;
          v56 = v89;
          sub_216939D04();

          isUniquelyReferenced_nonNull_native = v94;
          v11 = v84;
          sub_2166AF66C(v56, v54);
          if (v57)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v94 = v11;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9318);
            sub_21700F554();
            v11 = v94;

            sub_21700F574();
          }

          v36 = v79;
          v34 = v73;
          v33 = v74;
        }

        v35 = v93;
      }

      ++v35;
      sub_216DDA050();
      if (v35 == v34)
      {
        goto LABEL_36;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
    goto LABEL_38;
  }

LABEL_36:
  if (!v11[2])
  {
    goto LABEL_41;
  }

  if (qword_27CAB5DB0 != -1)
  {
    goto LABEL_51;
  }

LABEL_38:
  v59 = sub_217007CA4();
  __swift_project_value_buffer(v59, qword_27CAC3320);
  v60 = sub_217007C84();
  v61 = sub_21700ED84();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v94 = v63;
    *v62 = 136446210;
    sub_21700DF14();
    v64 = sub_21700E394();
    v66 = v65;

    v67 = sub_2166A85FC(v64, v66, &v94);

    *(v62 + 4) = v67;
    _os_log_impl(&dword_216679000, v60, v61, "Unable to update items in sections with IDs: %{public}s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    MEMORY[0x21CEA1440](v63, -1, -1);
    MEMORY[0x21CEA1440](v62, -1, -1);
  }

LABEL_41:
  v68 = v72[0];
  sub_216DDA0A0(v81, v72[0]);
  v69 = *(v80 + 32);

  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0C0);
  *(v68 + v70[9]) = isUniquelyReferenced_nonNull_native;
  *(v68 + v70[10]) = v69;
  *(v68 + v70[11]) = 0;
  *(v68 + v70[12]) = 0;
  return sub_216DDA050();
}

uint64_t sub_216DBF174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a3;
  v5 = type metadata accessor for SectionContent();
  MEMORY[0x28223BE20](v5 - 8);
  v79 = (&v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = _s7SectionVMa(0);
  v86 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v89 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v70 - v9);
  v11 = type metadata accessor for JSSearchResultsPage(0);
  MEMORY[0x28223BE20](v11 - 8);
  v85 = a2;
  v81 = (&v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_216DDA0A0(a2, v81);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC98F0);
  v13 = sub_21700E384();
  v14 = *(a1 + 16);
  v15 = (a1 + 56);
  v87 = v10;
  if (v14)
  {
    do
    {
      v90 = v14;
      v17 = *(v15 - 3);
      v16 = *(v15 - 2);
      v18 = *(v15 - 1);
      v88 = v15;
      v19 = *v15;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_isUniquelyReferenced_nonNull_native();
      v91 = v13;
      v20 = sub_2166AF66C(v16, v18);
      if (__OFADD__(v13[2], (v21 & 1) == 0))
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v22 = v20;
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC98F8);
      if (sub_21700F554())
      {
        v24 = sub_2166AF66C(v16, v18);
        v10 = v87;
        if ((v23 & 1) != (v25 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v22 = v24;
      }

      else
      {
        v10 = v87;
      }

      v13 = v91;
      if (v23)
      {
        v26 = v91[7] + 32 * v22;
        *v26 = v17;
        *(v26 + 8) = v16;
        *(v26 + 16) = v18;
        *(v26 + 24) = v19;
      }

      else
      {
        v91[(v22 >> 6) + 8] |= 1 << v22;
        v27 = (v13[6] + 16 * v22);
        *v27 = v16;
        v27[1] = v18;
        v28 = v13[7] + 32 * v22;
        *v28 = v17;
        *(v28 + 8) = v16;
        *(v28 + 16) = v18;
        *(v28 + 24) = v19;

        v29 = v13[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_48;
        }

        v13[2] = v31;
      }

      v15 = v88 + 32;
      v14 = v90 - 1;
    }

    while (v90 != 1);
  }

  v32 = v77;
  v80 = sub_21700E384();
  v33 = *v85;
  v34 = *(*v85 + 16);
  if (v34)
  {
    v35 = 0;
    v36 = *(v86 + 80);
    v74 = *v85;
    v75 = (v36 + 32) & ~v36;
    v85 = v33 + v75;
    v73 = v34;
    while (v35 < *(v33 + 16))
    {
      v37 = *(v86 + 72) * v35;
      sub_216DDA0A0(v85 + v37, v10);
      if (v13[2])
      {
        v38 = *v10;
        v83 = v10[1];
        v84 = v38;
        v39 = sub_2166AF66C(v38, v83);
        if (v40)
        {
          v90 = v35;
          v41 = v13[7] + 32 * v39;
          v42 = *v41;
          v43 = *(v41 + 24);
          sub_21700DF14();
          sub_21700DF14();
          v44 = v82;
          sub_216D1BA78(v42, v43, v79);
          v82 = v44;
          if (v44)
          {

            sub_216DDA050();

            return sub_216DDA050();
          }

          v45 = *v81;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v47 = v90;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_216E15A14();
            v45 = v56;
          }

          if (v47 >= *(v45 + 16))
          {
            goto LABEL_50;
          }

          v78 = v13;
          v48 = *(v32 + 52);
          v88 = (v45 + v75 + v37);
          sub_2166CE10C(v79, &v88[v48]);
          *v81 = v45;
          v49 = *(v76 + 24);
          v50 = sub_2166BF3C8(v49);
          for (i = 0; v50 != i; ++i)
          {
            if ((v49 & 0xC000000000000001) != 0)
            {
              MEMORY[0x21CEA0220](i, v49);
            }

            else
            {
              if (i >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_45;
              }
            }

            if (__OFADD__(i, 1))
            {
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
              goto LABEL_47;
            }

            if (swift_unknownObjectWeakLoadStrong())
            {
              if (v90 >= *(v45 + 16))
              {
                goto LABEL_46;
              }

              sub_216DDA0A0(v88, v89);
              sub_216A9642C();
              swift_unknownObjectRelease();
              sub_216DDA050();
            }
          }

          v10 = v87;
          sub_216DDA0A0(v87, v89);
          v52 = v83;
          sub_21700DF14();
          v53 = v80;
          swift_isUniquelyReferenced_nonNull_native();
          v91 = v53;
          v54 = v84;
          sub_216939D04();

          v80 = v91;
          v13 = v78;
          sub_2166AF66C(v54, v52);
          if (v55)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v91 = v13;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC98F8);
            sub_21700F554();
            v13 = v91;

            sub_21700F574();
          }

          v32 = v77;
          v34 = v73;
          v33 = v74;
          v35 = v90;
        }
      }

      ++v35;
      sub_216DDA050();
      if (v35 == v34)
      {
        goto LABEL_36;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
    goto LABEL_38;
  }

LABEL_36:
  if (!v13[2])
  {
    goto LABEL_41;
  }

  if (qword_27CAB5DB0 != -1)
  {
    goto LABEL_51;
  }

LABEL_38:
  v57 = sub_217007CA4();
  __swift_project_value_buffer(v57, qword_27CAC3320);
  v58 = sub_217007C84();
  v59 = sub_21700ED84();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v91 = v61;
    *v60 = 136446210;
    sub_21700DF14();
    v62 = sub_21700E394();
    v64 = v63;

    v65 = sub_2166A85FC(v62, v64, &v91);

    *(v60 + 4) = v65;
    _os_log_impl(&dword_216679000, v58, v59, "Unable to update items in sections with IDs: %{public}s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    MEMORY[0x21CEA1440](v61, -1, -1);
    MEMORY[0x21CEA1440](v60, -1, -1);
  }

LABEL_41:
  v66 = v71;
  sub_216DDA0A0(v81, v71);
  v67 = *(v76 + 32);

  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96D8);
  *(v66 + v68[9]) = v80;
  *(v66 + v68[10]) = v67;
  *(v66 + v68[11]) = 0;
  *(v66 + v68[12]) = 0;
  return sub_216DDA050();
}

int *sub_216DBFAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v51 = a3;
  v55 = _s7SectionVMa(0);
  v8 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v56 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = (&v49 - v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  v15 = type metadata accessor for Page(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  sub_216DDA0A0(a2, &v49 - v19);
  v21 = sub_21700DF14();
  v53 = v20;
  sub_216BDD300(v21);
  v22 = 0;
  v23 = *(a1 + 16);
  while (v23 != v22)
  {
    v24 = sub_216DDA0A0(a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22++, v14);
    MEMORY[0x28223BE20](v24);
    *(&v49 - 2) = v14;
    sub_216CE19C4(sub_216DDA434, (&v49 - 4), v25, sub_2166BF3C8, v26, v27, v28, v29, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
    sub_216DDA050();
  }

  v49 = v17;
  v50 = v5;
  v52 = v4;
  sub_216DDA0A0(v53, v17);
  v30 = sub_21700E384();
  if (v23)
  {
    v55 = v23;
    v31 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v32 = *(v8 + 72);
    v33 = v54;
    while (1)
    {
      sub_216DDA0A0(v31, v33);
      v34 = *v33;
      v35 = v33[1];
      sub_216DDA0A0(v33, v56);
      swift_isUniquelyReferenced_nonNull_native();
      v58 = v30;
      v36 = sub_2166AF66C(v34, v35);
      if (__OFADD__(v30[2], (v37 & 1) == 0))
      {
        break;
      }

      v38 = v36;
      v39 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD160);
      if (sub_21700F554())
      {
        v40 = sub_2166AF66C(v34, v35);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_18;
        }

        v38 = v40;
      }

      v30 = v58;
      if (v39)
      {
        sub_2166CE10C(v56, v58[7] + v38 * v32);
      }

      else
      {
        v58[(v38 >> 6) + 8] |= 1 << v38;
        v42 = (v30[6] + 16 * v38);
        *v42 = v34;
        v42[1] = v35;
        sub_216DDA0F4(v56, v30[7] + v38 * v32);
        v43 = v30[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_17;
        }

        v30[2] = v45;
        sub_21700DF14();
      }

      v33 = v54;
      sub_216DDA050();
      v31 += v32;
      if (!--v55)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    result = sub_21700F824();
    __break(1u);
  }

  else
  {
LABEL_15:
    sub_216DDA050();
    v46 = *(v50 + 32);
    v47 = v51;
    sub_216DDA0F4(v49, v51);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AC8);
    *(v47 + result[9]) = v30;
    *(v47 + result[10]) = v46;
    *(v47 + result[11]) = 0;
    *(v47 + result[12]) = 0;
  }

  return result;
}

int *sub_216DBFFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v51 = a3;
  v55 = _s7SectionVMa(0);
  v8 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v56 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = (&v49 - v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  v15 = type metadata accessor for JSReplayPage();
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  sub_216DDA0A0(a2, &v49 - v19);
  v21 = sub_21700DF14();
  v53 = v20;
  sub_216BDD300(v21);
  v22 = 0;
  v23 = *(a1 + 16);
  while (v23 != v22)
  {
    v24 = sub_216DDA0A0(a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22++, v14);
    MEMORY[0x28223BE20](v24);
    *(&v49 - 2) = v14;
    sub_216CE19C4(sub_216DDA434, (&v49 - 4), v25, sub_2166BF3C8, v26, v27, v28, v29, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
    sub_216DDA050();
  }

  v49 = v17;
  v50 = v5;
  v52 = v4;
  sub_216DDA0A0(v53, v17);
  v30 = sub_21700E384();
  if (v23)
  {
    v55 = v23;
    v31 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v32 = *(v8 + 72);
    v33 = v54;
    while (1)
    {
      sub_216DDA0A0(v31, v33);
      v34 = *v33;
      v35 = v33[1];
      sub_216DDA0A0(v33, v56);
      swift_isUniquelyReferenced_nonNull_native();
      v58 = v30;
      v36 = sub_2166AF66C(v34, v35);
      if (__OFADD__(v30[2], (v37 & 1) == 0))
      {
        break;
      }

      v38 = v36;
      v39 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD160);
      if (sub_21700F554())
      {
        v40 = sub_2166AF66C(v34, v35);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_18;
        }

        v38 = v40;
      }

      v30 = v58;
      if (v39)
      {
        sub_2166CE10C(v56, v58[7] + v38 * v32);
      }

      else
      {
        v58[(v38 >> 6) + 8] |= 1 << v38;
        v42 = (v30[6] + 16 * v38);
        *v42 = v34;
        v42[1] = v35;
        sub_216DDA0F4(v56, v30[7] + v38 * v32);
        v43 = v30[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_17;
        }

        v30[2] = v45;
        sub_21700DF14();
      }

      v33 = v54;
      sub_216DDA050();
      v31 += v32;
      if (!--v55)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    result = sub_21700F824();
    __break(1u);
  }

  else
  {
LABEL_15:
    sub_216DDA050();
    v46 = *(v50 + 32);
    v47 = v51;
    sub_216DDA0F4(v49, v51);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC94A0);
    *(v47 + result[9]) = v30;
    *(v47 + result[10]) = v46;
    *(v47 + result[11]) = 0;
    *(v47 + result[12]) = 0;
  }

  return result;
}

int *sub_216DC0500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v51 = a3;
  v55 = _s7SectionVMa(0);
  v8 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v56 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = (&v49 - v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  v15 = type metadata accessor for JSSearchPage();
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  sub_216DDA0A0(a2, &v49 - v19);
  v21 = sub_21700DF14();
  v53 = v20;
  sub_216BDD300(v21);
  v22 = 0;
  v23 = *(a1 + 16);
  while (v23 != v22)
  {
    v24 = sub_216DDA0A0(a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22++, v14);
    MEMORY[0x28223BE20](v24);
    *(&v49 - 2) = v14;
    sub_216CE19C4(sub_216DDA434, (&v49 - 4), v25, sub_2166BF3C8, v26, v27, v28, v29, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
    sub_216DDA050();
  }

  v49 = v17;
  v50 = v5;
  v52 = v4;
  sub_216DDA0A0(v53, v17);
  v30 = sub_21700E384();
  if (v23)
  {
    v55 = v23;
    v31 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v32 = *(v8 + 72);
    v33 = v54;
    while (1)
    {
      sub_216DDA0A0(v31, v33);
      v34 = *v33;
      v35 = v33[1];
      sub_216DDA0A0(v33, v56);
      swift_isUniquelyReferenced_nonNull_native();
      v58 = v30;
      v36 = sub_2166AF66C(v34, v35);
      if (__OFADD__(v30[2], (v37 & 1) == 0))
      {
        break;
      }

      v38 = v36;
      v39 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD160);
      if (sub_21700F554())
      {
        v40 = sub_2166AF66C(v34, v35);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_18;
        }

        v38 = v40;
      }

      v30 = v58;
      if (v39)
      {
        sub_2166CE10C(v56, v58[7] + v38 * v32);
      }

      else
      {
        v58[(v38 >> 6) + 8] |= 1 << v38;
        v42 = (v30[6] + 16 * v38);
        *v42 = v34;
        v42[1] = v35;
        sub_216DDA0F4(v56, v30[7] + v38 * v32);
        v43 = v30[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_17;
        }

        v30[2] = v45;
        sub_21700DF14();
      }

      v33 = v54;
      sub_216DDA050();
      v31 += v32;
      if (!--v55)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    result = sub_21700F824();
    __break(1u);
  }

  else
  {
LABEL_15:
    sub_216DDA050();
    v46 = *(v50 + 32);
    v47 = v51;
    sub_216DDA0F4(v49, v51);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EE8);
    *(v47 + result[9]) = v30;
    *(v47 + result[10]) = v46;
    *(v47 + result[11]) = 0;
    *(v47 + result[12]) = 0;
  }

  return result;
}

int *sub_216DC0A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v55 = a3;
  v60 = _s7SectionVMa(0);
  v8 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v61 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = (&v54 - v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - v13;
  v15 = type metadata accessor for ReplayModel(0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v58 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - v19;
  sub_216DDA0A0(a2, &v54 - v19);
  v21 = *(v16 + 28);
  v22 = v21 + *(type metadata accessor for ReplayYearModel(0) + 20);
  v57 = v20;
  v23 = &v20[v22];
  v24 = *(type metadata accessor for JSReplayPage() + 20);
  v63 = *&v23[v24];
  v25 = sub_21700DF14();
  sub_216BDD300(v25);
  v26 = 0;
  *&v23[v24] = v63;
  v27 = *(a1 + 16);
  while (v27 != v26)
  {
    v28 = sub_216DDA0A0(a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v26++, v14);
    MEMORY[0x28223BE20](v28);
    *(&v54 - 2) = v14;
    sub_216CE19C4(sub_216DDA434, (&v54 - 4), v29, sub_2166BF3C8, v30, v31, v32, v33, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
    sub_216DDA050();
  }

  v54 = v5;
  v56 = v4;
  sub_216DDA0A0(v57, v58);
  v34 = sub_21700E384();
  if (v27)
  {
    v35 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v36 = *(v8 + 72);
    v37 = v59;
    while (1)
    {
      v38 = v27;
      v60 = v35;
      sub_216DDA0A0(v35, v37);
      v39 = *v37;
      v40 = v37[1];
      sub_216DDA0A0(v37, v61);
      swift_isUniquelyReferenced_nonNull_native();
      v63 = v34;
      v41 = sub_2166AF66C(v39, v40);
      if (__OFADD__(v34[2], (v42 & 1) == 0))
      {
        break;
      }

      v43 = v41;
      v44 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD160);
      if (sub_21700F554())
      {
        v45 = sub_2166AF66C(v39, v40);
        if ((v44 & 1) != (v46 & 1))
        {
          goto LABEL_18;
        }

        v43 = v45;
      }

      v34 = v63;
      if (v44)
      {
        sub_2166CE10C(v61, v63[7] + v43 * v36);
      }

      else
      {
        v63[(v43 >> 6) + 8] |= 1 << v43;
        v47 = (v34[6] + 16 * v43);
        *v47 = v39;
        v47[1] = v40;
        sub_216DDA0F4(v61, v34[7] + v43 * v36);
        v48 = v34[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_17;
        }

        v34[2] = v50;
        sub_21700DF14();
      }

      v37 = v59;
      sub_216DDA050();
      v35 = v60 + v36;
      --v27;
      if (v38 == 1)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    result = sub_21700F824();
    __break(1u);
  }

  else
  {
LABEL_15:
    sub_216DDA050();
    v51 = v55;
    v52 = *(v54 + 32);
    sub_216DDA0F4(v58, v55);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0C0);
    *(v51 + result[9]) = v34;
    *(v51 + result[10]) = v52;
    *(v51 + result[11]) = 0;
    *(v51 + result[12]) = 0;
  }

  return result;
}

int *sub_216DC0F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v51 = a3;
  v55 = _s7SectionVMa(0);
  v8 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v56 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = (&v49 - v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  v15 = type metadata accessor for JSSearchResultsPage(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  sub_216DDA0A0(a2, &v49 - v19);
  v21 = sub_21700DF14();
  v53 = v20;
  sub_216BDD300(v21);
  v22 = 0;
  v23 = *(a1 + 16);
  while (v23 != v22)
  {
    v24 = sub_216DDA0A0(a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22++, v14);
    MEMORY[0x28223BE20](v24);
    *(&v49 - 2) = v14;
    sub_216CE19C4(sub_216DD9D38, (&v49 - 4), v25, sub_2166BF3C8, v26, v27, v28, v29, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
    sub_216DDA050();
  }

  v49 = v17;
  v50 = v5;
  v52 = v4;
  sub_216DDA0A0(v53, v17);
  v30 = sub_21700E384();
  if (v23)
  {
    v55 = v23;
    v31 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v32 = *(v8 + 72);
    v33 = v54;
    while (1)
    {
      sub_216DDA0A0(v31, v33);
      v34 = *v33;
      v35 = v33[1];
      sub_216DDA0A0(v33, v56);
      swift_isUniquelyReferenced_nonNull_native();
      v58 = v30;
      v36 = sub_2166AF66C(v34, v35);
      if (__OFADD__(v30[2], (v37 & 1) == 0))
      {
        break;
      }

      v38 = v36;
      v39 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD160);
      if (sub_21700F554())
      {
        v40 = sub_2166AF66C(v34, v35);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_18;
        }

        v38 = v40;
      }

      v30 = v58;
      if (v39)
      {
        sub_2166CE10C(v56, v58[7] + v38 * v32);
      }

      else
      {
        v58[(v38 >> 6) + 8] |= 1 << v38;
        v42 = (v30[6] + 16 * v38);
        *v42 = v34;
        v42[1] = v35;
        sub_216DDA0F4(v56, v30[7] + v38 * v32);
        v43 = v30[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_17;
        }

        v30[2] = v45;
        sub_21700DF14();
      }

      v33 = v54;
      sub_216DDA050();
      v31 += v32;
      if (!--v55)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    result = sub_21700F824();
    __break(1u);
  }

  else
  {
LABEL_15:
    sub_216DDA050();
    v46 = *(v50 + 32);
    v47 = v51;
    sub_216DDA0F4(v49, v51);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96D8);
    *(v47 + result[9]) = v30;
    *(v47 + result[10]) = v46;
    *(v47 + result[11]) = 0;
    *(v47 + result[12]) = 0;
  }

  return result;
}

uint64_t sub_216DC144C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_216A9642C();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_216DC14A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(*v4 + 280);
  v9 = type metadata accessor for PushNotifications.Subscription(0);
  __swift_storeEnumTagSinglePayload(v4 + v8, 1, 1, v9);
  type metadata accessor for PushNotifications(0);
  type metadata accessor for ObjectGraph();
  sub_21700E094();

  *(v4 + 136) = v11[0];
  sub_216DD9F00();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 128) = 0;
  memcpy((v4 + 32), v11, 0x50uLL);
  *(v4 + 112) = a3;
  *(v4 + 120) = a4 & 1;
  sub_2166997CC(a1, &qword_27CAC8D70);
  return v4;
}

uint64_t sub_216DC15AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(*v4 + 280);
  v9 = type metadata accessor for PushNotifications.Subscription(0);
  __swift_storeEnumTagSinglePayload(v4 + v8, 1, 1, v9);
  type metadata accessor for PushNotifications(0);
  type metadata accessor for ObjectGraph();
  sub_21700E094();

  *(v4 + 120) = v11;
  sub_216DD9F00();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 112) = 0;
  *(v4 + 32) = v11;
  *(v4 + 48) = v12;
  *(v4 + 64) = *v13;
  *(v4 + 73) = *&v13[9];
  *(v4 + 96) = a3;
  *(v4 + 104) = a4 & 1;
  sub_2166997CC(a1, &qword_27CAC8CD0);
  return v4;
}

uint64_t sub_216DC17A8()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_17_2();
  result = swift_weakLoadStrong();
  if (result)
  {
    v0(2);
  }

  return result;
}

uint64_t sub_216DC1820()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_216B11D74();
  }

  return result;
}

uint64_t sub_216DC1878()
{
  OUTLINED_FUNCTION_2_1();
  *(v1 + 144) = 0;
  v3(0);
  OUTLINED_FUNCTION_224();
  type metadata accessor for ObjectGraph();
  OUTLINED_FUNCTION_1239();
  OUTLINED_FUNCTION_52_3();
  sub_21700E094();

  *(v1 + 136) = v8[0];
  OUTLINED_FUNCTION_1272();
  v4 = OUTLINED_FUNCTION_702();
  memcpy(v4, v8, 0x50uLL);
  *(v1 + 112) = v2;
  *(v1 + 120) = v0 & 1;
  v5 = OUTLINED_FUNCTION_109();
  sub_2166997CC(v5, v6);
  return v1;
}

uint64_t sub_216DC1928()
{
  OUTLINED_FUNCTION_2_1();
  *(v1 + 128) = 0;
  v3(0);
  OUTLINED_FUNCTION_224();
  type metadata accessor for ObjectGraph();
  OUTLINED_FUNCTION_1239();
  OUTLINED_FUNCTION_52_3();
  sub_21700E094();

  *(v1 + 120) = v15;
  v4 = OUTLINED_FUNCTION_1272();
  OUTLINED_FUNCTION_930(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16, v17, v18, v19, v20);
  *(v1 + 96) = v2;
  *(v1 + 104) = v0 & 1;
  v12 = OUTLINED_FUNCTION_109();
  sub_2166997CC(v12, v13);
  return v1;
}

uint64_t sub_216DC1A84(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BE8);
  v6 = swift_task_alloc();
  v4[3] = v6;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_216DC1BC0;

  return v9(v6);
}

uint64_t sub_216DC1BC0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216DC1CB8()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 24);
  sub_21700E224();
  sub_2166997CC(v1, &qword_27CAB6BE8);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216DC1D34()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 40);
  sub_21700E214();

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216DC1DA4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_216DC1E90;

  return v7();
}

uint64_t sub_216DC1E90()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 32) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216DC1F88()
{
  OUTLINED_FUNCTION_33();
  sub_21700E224();
  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216DC1FE0()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 32);
  sub_21700E214();

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216DC2048(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_216DC213C;

  return v7(v4 + 40);
}

uint64_t sub_216DC213C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 32) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216DC2234()
{
  OUTLINED_FUNCTION_33();
  sub_21700E224();
  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216DC2290(uint64_t a1)
{
  sub_2166D9530(&qword_27CAC9920, &qword_27CAC9918);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2166AB4A4;

  return MEMORY[0x282180360](a1);
}

uint64_t sub_216DC239C(uint64_t a1)
{
  sub_2166D9530(&qword_280E2A108, qword_27CABCEB8);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2166AB4A0;

  return MEMORY[0x282180360](a1);
}

uint64_t sub_216DC24A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_216DC254C;

  return sub_216A965B0();
}

uint64_t sub_216DC254C()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  OUTLINED_FUNCTION_69_0();
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_3();

    return v6();
  }

  else
  {
    v8 = *(v4 + 8);

    return v8(v3 & 1);
  }
}

void sub_216DC2698(uint64_t a1, uint64_t a2)
{
  (*(a2 + 64))(&v12);
  v4 = *(a2 + 24);
  v16 = *(a2 + 8);
  v17 = v4;
  LOWORD(v18) = *(a2 + 40);
  v20 = v4;
  v21 = v16;
  v6 = *(a2 + 48);
  v5 = *(a2 + 56);

  sub_216DD9F00();
  sub_216DD9F00();
  sub_21700DF14();
  sub_216CCC700(&v12, a1, &v16, v6, v5, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, *(&v16 + 1), v17, *(&v17 + 1), v18, v19, v20, *(&v20 + 1));
}

uint64_t sub_216DC277C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Page.Header(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  sub_217006704();
  sub_216788294(a1, v3 + 16);
  v12 = *(*v3 + 128);
  v13 = sub_2170067A4();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v3 + v12, a2, v13);
  sub_21695B3B4();
  v15 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
  {
    if (!*(v11 + 6))
    {
      if (!*(v11 + 2))
      {
        sub_216DDA050();
        goto LABEL_3;
      }

      sub_21700DF14();
    }

    sub_21700DF14();
    sub_21700BA64();
    sub_216DDA050();

    v16 = 1;
    goto LABEL_8;
  }

  sub_2166997CC(v11, &qword_27CAB6A00);
LABEL_3:
  v16 = 0;
LABEL_8:
  sub_216DCA340(a1, a2, v16, v8);
  (*(v14 + 8))(a2, v13);
  sub_216DDA050();
  sub_216DDA0F4(v8, v3 + *(*v3 + 120));
  *(v3 + *(*v3 + 136)) = v16;
  return v3;
}

void sub_216DC2AA4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_31_0();
  type metadata accessor for AlbumDetailHeaderLockup();
  OUTLINED_FUNCTION_1085();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_0_1();
  sub_217006704();
  sub_216788294(v0 + *(v3 + 28), v1 + 16);
  OUTLINED_FUNCTION_0_1();
  sub_21700C1E4();
  OUTLINED_FUNCTION_1089();
  OUTLINED_FUNCTION_82_2();
  v7();
  sub_216DD9F00();
  v8 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_219_1(v2, v9, v8);
  if (v10)
  {
    sub_2166997CC(v2, &qword_27CAB6A00);
  }

  else
  {
    if (*(v2 + 48))
    {
LABEL_8:
      sub_21700DF14();
      OUTLINED_FUNCTION_54_3();
      sub_21700BA64();
      OUTLINED_FUNCTION_0_223();
      sub_216DDA050();

      v11 = 1;
      goto LABEL_9;
    }

    if (*(v2 + 16))
    {
      sub_21700DF14();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_0_223();
    sub_216DDA050();
  }

  v11 = 0;
LABEL_9:
  v12 = OUTLINED_FUNCTION_878();
  sub_216DCA848(v12, v13, v14, v15);
  v16 = OUTLINED_FUNCTION_22_4();
  v17(v16);
  OUTLINED_FUNCTION_338();
  sub_216DDA050();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1168(*(v18 + 120));
  OUTLINED_FUNCTION_0_1();
  *(v1 + *(v19 + 136)) = v11;
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216DC2CE4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ArtistLatestReleaseLockup();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  sub_217006704();
  sub_216788294(a1 + *(v6 + 28), v2 + 16);
  v12 = *(*v2 + 128);
  v13 = sub_2170067A4();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v2 + v12, a2, v13);
  sub_216DD9F00();
  v15 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
  {
    if (!*(v11 + 6))
    {
      if (!*(v11 + 2))
      {
        sub_216DDA050();
        goto LABEL_3;
      }

      sub_21700DF14();
    }

    sub_21700DF14();
    sub_21700BA64();
    sub_216DDA050();

    v16 = 1;
    goto LABEL_8;
  }

  sub_2166997CC(v11, &qword_27CAB6A00);
LABEL_3:
  v16 = 0;
LABEL_8:
  sub_216DCAACC(a1, a2, v16, v8);
  (*(v14 + 8))(a2, v13);
  sub_216DDA050();
  sub_216DDA0F4(v8, v2 + *(*v2 + 120));
  *(v2 + *(*v2 + 136)) = v16;
  return v2;
}

uint64_t sub_216DC2FD4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TrackLockup();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  sub_217006704();
  sub_216788294(a1 + *(v6 + 28), v2 + 16);
  v12 = *(*v2 + 128);
  v13 = sub_2170067A4();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v2 + v12, a2, v13);
  sub_216DD9F00();
  v15 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
  {
    if (!*(v11 + 6))
    {
      if (!*(v11 + 2))
      {
        sub_216DDA050();
        goto LABEL_3;
      }

      sub_21700DF14();
    }

    sub_21700DF14();
    sub_21700BA64();
    sub_216DDA050();

    v16 = 1;
    goto LABEL_8;
  }

  sub_2166997CC(v11, &qword_27CAB6A00);
LABEL_3:
  v16 = 0;
LABEL_8:
  sub_216DCAD50(a1, a2, v16, v8);
  (*(v14 + 8))(a2, v13);
  sub_216DDA050();
  sub_216DDA0F4(v8, v2 + *(*v2 + 120));
  *(v2 + *(*v2 + 136)) = v16;
  return v2;
}

uint64_t sub_216DC32C4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SongDetailList();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  sub_217006704();
  sub_216788294(a1 + *(v6 + 28), v2 + 16);
  v12 = *(*v2 + 128);
  v13 = sub_21700C084();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v2 + v12, a2, v13);
  sub_216DD9F00();
  v15 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
  {
    if (!*(v11 + 6))
    {
      if (!*(v11 + 2))
      {
        sub_216DDA050();
        goto LABEL_3;
      }

      sub_21700DF14();
    }

    sub_21700DF14();
    sub_21700BA64();
    sub_216DDA050();

    v16 = 1;
    goto LABEL_8;
  }

  sub_2166997CC(v11, &qword_27CAB6A00);
LABEL_3:
  v16 = 0;
LABEL_8:
  sub_216DCAFD4(a1, a2, v16, v8);
  (*(v14 + 8))(a2, v13);
  sub_216DDA050();
  sub_216DDA0F4(v8, v2 + *(*v2 + 120));
  *(v2 + *(*v2 + 136)) = v16;
  return v2;
}

void sub_216DC35B4()
{
  OUTLINED_FUNCTION_49();
  v9 = OUTLINED_FUNCTION_443(v3, v4, v5, v6, v7, v8);
  v10(v9);
  OUTLINED_FUNCTION_581();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_40();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_36(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_42_2();
  OUTLINED_FUNCTION_0_1();
  sub_217006704();
  OUTLINED_FUNCTION_1163();
  OUTLINED_FUNCTION_0_1();
  sub_2170067A4();
  OUTLINED_FUNCTION_893();
  v14 = OUTLINED_FUNCTION_604();
  v15(v14);
  OUTLINED_FUNCTION_1226(*(v2 + 68));
  sub_216DD9F00();
  v16 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_219_1(v1, v17, v16);
  if (v18)
  {
    sub_2166997CC(v1, &qword_27CAB6A00);
  }

  else
  {
    if (*(v1 + 48))
    {
      OUTLINED_FUNCTION_1237();
LABEL_9:
      sub_21700DF14();
      OUTLINED_FUNCTION_116();
      sub_21700BA64();
      OUTLINED_FUNCTION_0_223();
      sub_216DDA050();

      v19 = 1;
      goto LABEL_10;
    }

    if (*(v1 + 16))
    {
      OUTLINED_FUNCTION_1287();
      goto LABEL_9;
    }

    sub_216DDA050();
  }

  v19 = 0;
LABEL_10:
  v20 = OUTLINED_FUNCTION_437();
  v21(v20);
  v22 = OUTLINED_FUNCTION_26_37();
  v23(v22);
  OUTLINED_FUNCTION_1296();
  OUTLINED_FUNCTION_0_1();
  v24 = OUTLINED_FUNCTION_977();
  sub_216DDA0F4(v24, v25);
  OUTLINED_FUNCTION_0_1();
  *(v0 + *(v26 + 136)) = v19;
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_216DC37D4()
{
  OUTLINED_FUNCTION_49();
  v9 = OUTLINED_FUNCTION_443(v3, v4, v5, v6, v7, v8);
  v10(v9);
  OUTLINED_FUNCTION_581();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_40();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_36(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_42_2();
  OUTLINED_FUNCTION_0_1();
  sub_217006704();
  OUTLINED_FUNCTION_1163();
  OUTLINED_FUNCTION_0_1();
  sub_2170067A4();
  OUTLINED_FUNCTION_893();
  v14 = OUTLINED_FUNCTION_604();
  v15(v14);
  OUTLINED_FUNCTION_1226(*(v2 + 80));
  sub_216DD9F00();
  v16 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_219_1(v1, v17, v16);
  if (v18)
  {
    sub_2166997CC(v1, &qword_27CAB6A00);
  }

  else
  {
    if (*(v1 + 48))
    {
      OUTLINED_FUNCTION_1237();
LABEL_9:
      sub_21700DF14();
      OUTLINED_FUNCTION_116();
      sub_21700BA64();
      OUTLINED_FUNCTION_0_223();
      sub_216DDA050();

      v19 = 1;
      goto LABEL_10;
    }

    if (*(v1 + 16))
    {
      OUTLINED_FUNCTION_1287();
      goto LABEL_9;
    }

    sub_216DDA050();
  }

  v19 = 0;
LABEL_10:
  v20 = OUTLINED_FUNCTION_437();
  v21(v20);
  v22 = OUTLINED_FUNCTION_26_37();
  v23(v22);
  OUTLINED_FUNCTION_1296();
  OUTLINED_FUNCTION_0_1();
  v24 = OUTLINED_FUNCTION_977();
  sub_216DDA0F4(v24, v25);
  OUTLINED_FUNCTION_0_1();
  *(v0 + *(v26 + 136)) = v19;
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216DC39F4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SuperHeroLockup();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  sub_217006704();
  sub_216788294(a1 + *(v6 + 28), v2 + 16);
  v12 = *(*v2 + 128);
  v13 = sub_2170067A4();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v2 + v12, a2, v13);
  sub_216DD9F00();
  v15 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
  {
    if (!*(v11 + 6))
    {
      if (!*(v11 + 2))
      {
        sub_216DDA050();
        goto LABEL_3;
      }

      sub_21700DF14();
    }

    sub_21700DF14();
    sub_21700BA64();
    sub_216DDA050();

    v16 = 1;
    goto LABEL_8;
  }

  sub_2166997CC(v11, &qword_27CAB6A00);
LABEL_3:
  v16 = 0;
LABEL_8:
  sub_216DCB9E4(a1, a2, v16, v8);
  (*(v14 + 8))(a2, v13);
  sub_216DDA050();
  sub_216DDA0F4(v8, v2 + *(*v2 + 120));
  *(v2 + *(*v2 + 136)) = v16;
  return v2;
}

uint64_t sub_216DC3CE4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SquareLockup();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  sub_217006704();
  sub_216788294(a1 + *(v6 + 76), v2 + 16);
  v12 = *(*v2 + 128);
  v13 = sub_2170067A4();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v2 + v12, a2, v13);
  sub_216DD9F00();
  v15 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
  {
    if (!*(v11 + 6))
    {
      if (!*(v11 + 2))
      {
        sub_216DDA050();
        goto LABEL_3;
      }

      sub_21700DF14();
    }

    sub_21700DF14();
    sub_21700BA64();
    sub_216DDA050();

    v16 = 1;
    goto LABEL_8;
  }

  sub_2166997CC(v11, &qword_27CAB6A00);
LABEL_3:
  v16 = 0;
LABEL_8:
  sub_216DCBC68(a1, a2, v16, v8);
  (*(v14 + 8))(a2, v13);
  sub_216DDA050();
  sub_216DDA0F4(v8, v2 + *(*v2 + 120));
  *(v2 + *(*v2 + 136)) = v16;
  return v2;
}

uint64_t sub_216DC3FD4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SocialProfileHorizontalLockup();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  sub_217006704();
  sub_216788294(a1 + *(v6 + 28), v2 + 16);
  v12 = *(*v2 + 128);
  v13 = sub_217006FE4();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v2 + v12, a2, v13);
  sub_216DD9F00();
  v15 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
  {
    if (!*(v11 + 6))
    {
      if (!*(v11 + 2))
      {
        sub_216DDA050();
        goto LABEL_3;
      }

      sub_21700DF14();
    }

    sub_21700DF14();
    sub_21700BA64();
    sub_216DDA050();

    v16 = 1;
    goto LABEL_8;
  }

  sub_2166997CC(v11, &qword_27CAB6A00);
LABEL_3:
  v16 = 0;
LABEL_8:
  sub_216DCBEEC(a1, a2, v16, v8);
  (*(v14 + 8))(a2, v13);
  sub_216DDA050();
  sub_216DDA0F4(v8, v2 + *(*v2 + 120));
  *(v2 + *(*v2 + 136)) = v16;
  return v2;
}

uint64_t sub_216DC42C4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SocialOnboardingSharedPlaylistLockup();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  sub_217006704();
  sub_216788294(a1 + *(v6 + 32), v2 + 16);
  v12 = *(*v2 + 128);
  v13 = sub_21700C924();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v2 + v12, a2, v13);
  sub_216DD9F00();
  v15 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
  {
    if (!*(v11 + 6))
    {
      if (!*(v11 + 2))
      {
        sub_216DDA050();
        goto LABEL_3;
      }

      sub_21700DF14();
    }

    sub_21700DF14();
    sub_21700BA64();
    sub_216DDA050();

    v16 = 1;
    goto LABEL_8;
  }

  sub_2166997CC(v11, &qword_27CAB6A00);
LABEL_3:
  v16 = 0;
LABEL_8:
  sub_216DCC170(a1, a2, v16, v8);
  (*(v14 + 8))(a2, v13);
  sub_216DDA050();
  sub_216DDA0F4(v8, v2 + *(*v2 + 120));
  *(v2 + *(*v2 + 136)) = v16;
  return v2;
}

void sub_216DC45B4()
{
  OUTLINED_FUNCTION_49();
  v10 = OUTLINED_FUNCTION_443(v4, v5, v6, v7, v8, v9);
  v11(v10);
  OUTLINED_FUNCTION_581();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_40();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_36(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_42_2();
  OUTLINED_FUNCTION_0_1();
  sub_217006704();
  sub_216788294(v1, v0 + 16);
  OUTLINED_FUNCTION_0_1();
  sub_2170067A4();
  OUTLINED_FUNCTION_893();
  v15 = OUTLINED_FUNCTION_604();
  v16(v15);
  OUTLINED_FUNCTION_1226(*(v3 + 56));
  sub_216DD9F00();
  v17 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_219_1(v2, v18, v17);
  if (v19)
  {
    sub_2166997CC(v2, &qword_27CAB6A00);
  }

  else
  {
    if (*(v2 + 48))
    {
      OUTLINED_FUNCTION_1237();
LABEL_9:
      sub_21700DF14();
      OUTLINED_FUNCTION_116();
      sub_21700BA64();
      OUTLINED_FUNCTION_0_223();
      sub_216DDA050();

      v20 = 1;
      goto LABEL_10;
    }

    if (*(v2 + 16))
    {
      OUTLINED_FUNCTION_1287();
      goto LABEL_9;
    }

    sub_216DDA050();
  }

  v20 = 0;
LABEL_10:
  v21 = OUTLINED_FUNCTION_437();
  v22(v21);
  v23 = OUTLINED_FUNCTION_26_37();
  v24(v23);
  OUTLINED_FUNCTION_1296();
  OUTLINED_FUNCTION_0_1();
  v25 = OUTLINED_FUNCTION_977();
  sub_216DDA0F4(v25, v26);
  OUTLINED_FUNCTION_0_1();
  *(v0 + *(v27 + 136)) = v20;
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_216DC47DC()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_31_0();
  type metadata accessor for RecentSearchLockup();
  OUTLINED_FUNCTION_1085();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_0_1();
  sub_217006704();
  sub_216788294(v0, v1 + 16);
  OUTLINED_FUNCTION_0_1();
  sub_2170067A4();
  OUTLINED_FUNCTION_1089();
  OUTLINED_FUNCTION_82_2();
  v6();
  sub_216DD9F00();
  v7 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_219_1(v2, v8, v7);
  if (v9)
  {
    sub_2166997CC(v2, &qword_27CAB6A00);
  }

  else
  {
    if (*(v2 + 48))
    {
LABEL_8:
      sub_21700DF14();
      OUTLINED_FUNCTION_54_3();
      sub_21700BA64();
      OUTLINED_FUNCTION_0_223();
      sub_216DDA050();

      v10 = 1;
      goto LABEL_9;
    }

    if (*(v2 + 16))
    {
      sub_21700DF14();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_0_223();
    sub_216DDA050();
  }

  v10 = 0;
LABEL_9:
  v11 = OUTLINED_FUNCTION_878();
  sub_216DCC678(v11, v12, v13, v14);
  v15 = OUTLINED_FUNCTION_22_4();
  v16(v15);
  OUTLINED_FUNCTION_336();
  sub_216DDA050();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1168(*(v17 + 120));
  OUTLINED_FUNCTION_0_1();
  *(v1 + *(v18 + 136)) = v10;
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_216DC4A18()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_31_0();
  type metadata accessor for PlaylistDetailHeaderLockup();
  OUTLINED_FUNCTION_1085();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_0_1();
  sub_217006704();
  sub_216788294(v0 + *(v3 + 28), v1 + 16);
  OUTLINED_FUNCTION_0_1();
  sub_21700C924();
  OUTLINED_FUNCTION_1089();
  OUTLINED_FUNCTION_82_2();
  v7();
  sub_216DD9F00();
  v8 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_219_1(v2, v9, v8);
  if (v10)
  {
    sub_2166997CC(v2, &qword_27CAB6A00);
  }

  else
  {
    if (*(v2 + 48))
    {
LABEL_8:
      sub_21700DF14();
      OUTLINED_FUNCTION_54_3();
      sub_21700BA64();
      OUTLINED_FUNCTION_0_223();
      sub_216DDA050();

      v11 = 1;
      goto LABEL_9;
    }

    if (*(v2 + 16))
    {
      sub_21700DF14();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_0_223();
    sub_216DDA050();
  }

  v11 = 0;
LABEL_9:
  v12 = OUTLINED_FUNCTION_878();
  sub_216DCCB80(v12, v13, v14, v15);
  v16 = OUTLINED_FUNCTION_22_4();
  v17(v16);
  OUTLINED_FUNCTION_337();
  sub_216DDA050();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1168(*(v18 + 120));
  OUTLINED_FUNCTION_0_1();
  *(v1 + *(v19 + 136)) = v11;
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216DC4C58(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LiveRadioGridLockup();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  sub_217006704();
  sub_216788294(a1 + *(v6 + 40), v2 + 16);
  v12 = *(*v2 + 128);
  v13 = sub_21700C644();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v2 + v12, a2, v13);
  sub_216DD9F00();
  v15 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
  {
    if (!*(v11 + 6))
    {
      if (!*(v11 + 2))
      {
        sub_216DDA050();
        goto LABEL_3;
      }

      sub_21700DF14();
    }

    sub_21700DF14();
    sub_21700BA64();
    sub_216DDA050();

    v16 = 1;
    goto LABEL_8;
  }

  sub_2166997CC(v11, &qword_27CAB6A00);
LABEL_3:
  v16 = 0;
LABEL_8:
  sub_216DCCE04(a1, a2, v16, v8);
  (*(v14 + 8))(a2, v13);
  sub_216DDA050();
  sub_216DDA0F4(v8, v2 + *(*v2 + 120));
  *(v2 + *(*v2 + 136)) = v16;
  return v2;
}

uint64_t sub_216DC4F48(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for HorizontalLockup();
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  sub_217006704();
  sub_216788294(a1, v2 + 16);
  v11 = *(*v2 + 128);
  v12 = sub_2170067A4();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v2 + v11, a2, v12);
  sub_216DD9F00();
  v14 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v10, 1, v14) != 1)
  {
    if (!*(v10 + 6))
    {
      if (!*(v10 + 2))
      {
        sub_216DDA050();
        goto LABEL_3;
      }

      sub_21700DF14();
    }

    sub_21700DF14();
    sub_21700BA64();
    sub_216DDA050();

    v15 = 1;
    goto LABEL_8;
  }

  sub_2166997CC(v10, &qword_27CAB6A00);
LABEL_3:
  v15 = 0;
LABEL_8:
  sub_216DCD30C(a1, a2, v15, v7);
  (*(v13 + 8))(a2, v12);
  sub_216DDA050();
  sub_216DDA0F4(v7, v2 + *(*v2 + 120));
  *(v2 + *(*v2 + 136)) = v15;
  return v2;
}

uint64_t sub_216DC5234(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for HeaderComponentModel();
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  sub_217006704();
  sub_216788294(a1, v2 + 16);
  v11 = *(*v2 + 128);
  v12 = sub_2170067A4();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v2 + v11, a2, v12);
  sub_216DD9F00();
  v14 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v10, 1, v14) != 1)
  {
    if (!*(v10 + 6))
    {
      if (!*(v10 + 2))
      {
        sub_216DDA050();
        goto LABEL_3;
      }

      sub_21700DF14();
    }

    sub_21700DF14();
    sub_21700BA64();
    sub_216DDA050();

    v15 = 1;
    goto LABEL_8;
  }

  sub_2166997CC(v10, &qword_27CAB6A00);
LABEL_3:
  v15 = 0;
LABEL_8:
  sub_216DCD590(a1, a2, v15, v7);
  (*(v13 + 8))(a2, v12);
  sub_216DDA050();
  sub_216DDA0F4(v7, v2 + *(*v2 + 120));
  *(v2 + *(*v2 + 136)) = v15;
  return v2;
}

void sub_216DC5520()
{
  OUTLINED_FUNCTION_49();
  v9 = OUTLINED_FUNCTION_443(v3, v4, v5, v6, v7, v8);
  v10(v9);
  OUTLINED_FUNCTION_581();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_40();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_36(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_42_2();
  OUTLINED_FUNCTION_0_1();
  sub_217006704();
  OUTLINED_FUNCTION_1163();
  OUTLINED_FUNCTION_0_1();
  sub_2170067A4();
  OUTLINED_FUNCTION_893();
  v14 = OUTLINED_FUNCTION_604();
  v15(v14);
  OUTLINED_FUNCTION_1226(*(v2 + 72));
  sub_216DD9F00();
  v16 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_219_1(v1, v17, v16);
  if (v18)
  {
    sub_2166997CC(v1, &qword_27CAB6A00);
  }

  else
  {
    if (*(v1 + 48))
    {
      OUTLINED_FUNCTION_1237();
LABEL_9:
      sub_21700DF14();
      OUTLINED_FUNCTION_116();
      sub_21700BA64();
      OUTLINED_FUNCTION_0_223();
      sub_216DDA050();

      v19 = 1;
      goto LABEL_10;
    }

    if (*(v1 + 16))
    {
      OUTLINED_FUNCTION_1287();
      goto LABEL_9;
    }

    sub_216DDA050();
  }

  v19 = 0;
LABEL_10:
  v20 = OUTLINED_FUNCTION_437();
  v21(v20);
  v22 = OUTLINED_FUNCTION_26_37();
  v23(v22);
  OUTLINED_FUNCTION_1296();
  OUTLINED_FUNCTION_0_1();
  v24 = OUTLINED_FUNCTION_977();
  sub_216DDA0F4(v24, v25);
  OUTLINED_FUNCTION_0_1();
  *(v0 + *(v26 + 136)) = v19;
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216DC5740(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for BubbleLockup();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  sub_217006704();
  sub_216788294(a1 + *(v6 + 28), v2 + 16);
  v12 = *(*v2 + 128);
  v13 = sub_2170067A4();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v2 + v12, a2, v13);
  sub_216DD9F00();
  v15 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
  {
    if (!*(v11 + 6))
    {
      if (!*(v11 + 2))
      {
        sub_216DDA050();
        goto LABEL_3;
      }

      sub_21700DF14();
    }

    sub_21700DF14();
    sub_21700BA64();
    sub_216DDA050();

    v16 = 1;
    goto LABEL_8;
  }

  sub_2166997CC(v11, &qword_27CAB6A00);
LABEL_3:
  v16 = 0;
LABEL_8:
  sub_216DCDA98(a1, a2, v16, v8);
  (*(v14 + 8))(a2, v13);
  sub_216DDA050();
  sub_216DDA0F4(v8, v2 + *(*v2 + 120));
  *(v2 + *(*v2 + 136)) = v16;
  return v2;
}

uint64_t sub_216DC5A30(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ListLockup();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  sub_217006704();
  sub_216788294(a1 + *(v6 + 28), v2 + 16);
  v12 = *(*v2 + 128);
  v13 = sub_2170067A4();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v2 + v12, a2, v13);
  sub_216DD9F00();
  v15 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
  {
    if (!*(v11 + 6))
    {
      if (!*(v11 + 2))
      {
        sub_216DDA050();
        goto LABEL_3;
      }

      sub_21700DF14();
    }

    sub_21700DF14();
    sub_21700BA64();
    sub_216DDA050();

    v16 = 1;
    goto LABEL_8;
  }

  sub_2166997CC(v11, &qword_27CAB6A00);
LABEL_3:
  v16 = 0;
LABEL_8:
  sub_216DCDD1C(a1, a2, v16, v8);
  (*(v14 + 8))(a2, v13);
  sub_216DDA050();
  sub_216DDA0F4(v8, v2 + *(*v2 + 120));
  *(v2 + *(*v2 + 136)) = v16;
  return v2;
}

uint64_t sub_216DC5D20(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = type metadata accessor for Page.Header(0);
    *(&v14 - 3) = sub_2166DC484(&qword_280E2C8D8, type metadata accessor for Page.Header);
    *(&v14 - 2) = &off_28293B080;
    *(&v14 - 1) = sub_2166DC484(&qword_280E2C8C0, type metadata accessor for Page.Header);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_216DD27D4();
  }

  return v10(a1, v4);
}

uint64_t sub_216DC600C(char *a1)
{
  v2 = v1;
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = type metadata accessor for ArtistLatestReleaseLockup();
    *(&v14 - 3) = sub_2166DC484(&qword_280E35C28, type metadata accessor for ArtistLatestReleaseLockup);
    *(&v14 - 2) = &off_28293B3A0;
    *(&v14 - 1) = sub_2166DC484(&qword_280E35C10, type metadata accessor for ArtistLatestReleaseLockup);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_216DD27D4();
  }

  return v10(a1, v4);
}

uint64_t sub_216DC62F8(char *a1)
{
  v2 = v1;
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = type metadata accessor for TrackLockup();
    *(&v14 - 3) = sub_2166DC484(&qword_280E44FA0, type metadata accessor for TrackLockup);
    *(&v14 - 2) = &off_28293B140;
    *(&v14 - 1) = sub_2166DC484(&qword_280E44F88, type metadata accessor for TrackLockup);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_216DD27D4();
  }

  return v10(a1, v4);
}

uint64_t sub_216DC65E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21700C084();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2166DC484(&qword_27CAB86B0, MEMORY[0x277CD8238]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = type metadata accessor for SongDetailList();
    *(&v14 - 3) = sub_2166DC484(qword_280E42AE0, type metadata accessor for SongDetailList);
    *(&v14 - 2) = &off_28293B5E0;
    *(&v14 - 1) = sub_2166DC484(&qword_27CAC8C48, type metadata accessor for SongDetailList);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_216DD27D4();
  }

  return v10(a1, v4);
}

uint64_t sub_216DC68D0(char *a1)
{
  v2 = v1;
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = type metadata accessor for VerticalVideoLockup();
    *(&v14 - 3) = sub_2166DC484(&qword_280E3CD90, type metadata accessor for VerticalVideoLockup);
    *(&v14 - 2) = &off_28293B0A0;
    *(&v14 - 1) = sub_2166DC484(&qword_280E3CD78, type metadata accessor for VerticalVideoLockup);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_216DD27D4();
  }

  return v10(a1, v4);
}

uint64_t sub_216DC6BBC(char *a1)
{
  v2 = v1;
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = type metadata accessor for TVMovieDetailHeaderLockup();
    *(&v14 - 3) = sub_2166DC484(qword_280E34CE8, type metadata accessor for TVMovieDetailHeaderLockup);
    *(&v14 - 2) = &off_28293B100;
    *(&v14 - 1) = sub_2166DC484(&qword_280E34CD0, type metadata accessor for TVMovieDetailHeaderLockup);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_216DD27D4();
  }

  return v10(a1, v4);
}

uint64_t sub_216DC6EA8(char *a1)
{
  v2 = v1;
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = type metadata accessor for TVMovieDescription();
    *(&v14 - 3) = sub_2166DC484(qword_280E3E588, type metadata accessor for TVMovieDescription);
    *(&v14 - 2) = &off_28293B120;
    *(&v14 - 1) = sub_2166DC484(&qword_280E3E570, type metadata accessor for TVMovieDescription);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_216DD27D4();
  }

  return v10(a1, v4);
}

uint64_t sub_216DC7194(char *a1)
{
  v2 = v1;
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = type metadata accessor for SuperHeroLockup();
    *(&v14 - 3) = sub_2166DC484(qword_280E41E98, type metadata accessor for SuperHeroLockup);
    *(&v14 - 2) = &off_28293B180;
    *(&v14 - 1) = sub_2166DC484(&qword_280E41E80, type metadata accessor for SuperHeroLockup);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_216DD27D4();
  }

  return v10(a1, v4);
}

uint64_t sub_216DC7480(char *a1)
{
  v2 = v1;
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = type metadata accessor for SquareLockup();
    *(&v14 - 3) = sub_2166DC484(&qword_280E445F0, type metadata accessor for SquareLockup);
    *(&v14 - 2) = &off_28293B1C0;
    *(&v14 - 1) = sub_2166DC484(&qword_280E445D0, type metadata accessor for SquareLockup);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_216DD27D4();
  }

  return v10(a1, v4);
}

uint64_t sub_216DC776C(char *a1)
{
  v2 = v1;
  v4 = sub_217006FE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2166DC484(&unk_280E4A410, MEMORY[0x277D2AB38]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = type metadata accessor for SocialProfileHorizontalLockup();
    *(&v14 - 3) = sub_2166DC484(&qword_280E310E0, type metadata accessor for SocialProfileHorizontalLockup);
    *(&v14 - 2) = &off_28293B640;
    *(&v14 - 1) = sub_2166DC484(&qword_280E310C8, type metadata accessor for SocialProfileHorizontalLockup);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_216DD27D4();
  }

  return v10(a1, v4);
}

uint64_t sub_216DC7A58(char *a1)
{
  v2 = v1;
  v4 = sub_21700C924();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2166DC484(&qword_27CABB828, MEMORY[0x277CD8608]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = type metadata accessor for SocialOnboardingSharedPlaylistLockup();
    *(&v14 - 3) = sub_2166DC484(&qword_280E2DFF0, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
    *(&v14 - 2) = &off_28293B200;
    *(&v14 - 1) = sub_2166DC484(&qword_280E2DFD0, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_216DD27D4();
  }

  return v10(a1, v4);
}

uint64_t sub_216DC7D44(char *a1)
{
  v2 = v1;
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = _s6LockupVMa();
    *(&v14 - 3) = sub_2166DC484(&qword_280E439E8, _s6LockupVMa);
    *(&v14 - 2) = &off_28293B6A0;
    *(&v14 - 1) = sub_2166DC484(&qword_280E439D0, _s6LockupVMa);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_216DD27D4();
  }

  return v10(a1, v4);
}

uint64_t sub_216DC8030(char *a1)
{
  v2 = v1;
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = type metadata accessor for TopSearchLockup();
    *(&v14 - 3) = sub_2166DC484(&qword_280E41D00, type metadata accessor for TopSearchLockup);
    *(&v14 - 2) = &off_28293B160;
    *(&v14 - 1) = sub_2166DC484(&qword_280E41CE8, type metadata accessor for TopSearchLockup);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_216DD27D4();
  }

  return v10(a1, v4);
}

uint64_t sub_216DC831C(char *a1)
{
  v2 = v1;
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = type metadata accessor for RecentSearchLockup();
    *(&v14 - 3) = sub_2166DC484(qword_280E3E960, type metadata accessor for RecentSearchLockup);
    *(&v14 - 2) = &off_28293B240;
    *(&v14 - 1) = sub_2166DC484(&qword_280E3E948, type metadata accessor for RecentSearchLockup);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_216DD27D4();
  }

  return v10(a1, v4);
}

uint64_t sub_216DC8608(char *a1)
{
  v2 = v1;
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = type metadata accessor for PosterLockup();
    *(&v14 - 3) = sub_2166DC484(qword_280E44990, type metadata accessor for PosterLockup);
    *(&v14 - 2) = &off_28293B260;
    *(&v14 - 1) = sub_2166DC484(&qword_280E44978, type metadata accessor for PosterLockup);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_216DD27D4();
  }

  return v10(a1, v4);
}

uint64_t sub_216DC88F4(char *a1)
{
  v2 = v1;
  v4 = sub_21700C924();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2166DC484(&qword_27CABB828, MEMORY[0x277CD8608]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = type metadata accessor for PlaylistDetailHeaderLockup();
    *(&v14 - 3) = sub_2166DC484(qword_280E34400, type metadata accessor for PlaylistDetailHeaderLockup);
    *(&v14 - 2) = &off_28293B2A0;
    *(&v14 - 1) = sub_2166DC484(&qword_280E343E8, type metadata accessor for PlaylistDetailHeaderLockup);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_216DD27D4();
  }

  return v10(a1, v4);
}

uint64_t sub_216DC8BE0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21700C644();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2166DC484(&qword_27CABDC00, MEMORY[0x277CD84F8]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = type metadata accessor for LiveRadioGridLockup();
    *(&v14 - 3) = sub_2166DC484(qword_280E3DB38, type metadata accessor for LiveRadioGridLockup);
    *(&v14 - 2) = &off_28293B2C0;
    *(&v14 - 1) = sub_2166DC484(&qword_280E3DB20, type metadata accessor for LiveRadioGridLockup);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_216DD27D4();
  }

  return v10(a1, v4);
}

uint64_t sub_216DC8ECC(char *a1)
{
  v2 = v1;
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = type metadata accessor for HorizontalPosterLockup();
    *(&v14 - 3) = sub_2166DC484(qword_280E39370, type metadata accessor for HorizontalPosterLockup);
    *(&v14 - 2) = &off_28293B2E0;
    *(&v14 - 1) = sub_2166DC484(&qword_280E39358, type metadata accessor for HorizontalPosterLockup);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_216DD27D4();
  }

  return v10(a1, v4);
}

uint64_t sub_216DC91B8(char *a1)
{
  v2 = v1;
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = type metadata accessor for HorizontalLockup();
    *(&v14 - 3) = sub_2166DC484(qword_280E410F0, type metadata accessor for HorizontalLockup);
    *(&v14 - 2) = &off_28293B300;
    *(&v14 - 1) = sub_2166DC484(&qword_280E410D0, type metadata accessor for HorizontalLockup);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_216DD27D4();
  }

  return v10(a1, v4);
}

uint64_t sub_216DC94A4(char *a1)
{
  v2 = v1;
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = type metadata accessor for HeaderComponentModel();
    *(&v14 - 3) = sub_2166DC484(&qword_280E3C3A8, type metadata accessor for HeaderComponentModel);
    *(&v14 - 2) = &off_28293B320;
    *(&v14 - 1) = sub_2166DC484(&qword_280E3C398, type metadata accessor for HeaderComponentModel);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_216DD27D4();
  }

  return v10(a1, v4);
}

uint64_t sub_216DC9790(char *a1)
{
  v2 = v1;
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = type metadata accessor for FlowcaseLockup();
    *(&v14 - 3) = sub_2166DC484(qword_280E43620, type metadata accessor for FlowcaseLockup);
    *(&v14 - 2) = &off_28293B340;
    *(&v14 - 1) = sub_2166DC484(&qword_280E43608, type metadata accessor for FlowcaseLockup);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_216DD27D4();
  }

  return v10(a1, v4);
}

uint64_t sub_216DC9A7C(char *a1)
{
  v2 = v1;
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = type metadata accessor for BubbleLockup();
    *(&v14 - 3) = sub_2166DC484(&qword_280E44DC0, type metadata accessor for BubbleLockup);
    *(&v14 - 2) = &off_28293B380;
    *(&v14 - 1) = sub_2166DC484(&qword_280E44DA8, type metadata accessor for BubbleLockup);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_216DD27D4();
  }

  return v10(a1, v4);
}

uint64_t sub_216DC9D68(char *a1)
{
  v2 = v1;
  v4 = sub_21700C1E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2166DC484(&qword_27CABB7F0, MEMORY[0x277CD82C8]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = type metadata accessor for AlbumDetailHeaderLockup();
    *(&v14 - 3) = sub_2166DC484(&qword_280E38970, type metadata accessor for AlbumDetailHeaderLockup);
    *(&v14 - 2) = &off_28293B3E0;
    *(&v14 - 1) = sub_2166DC484(&qword_280E38958, type metadata accessor for AlbumDetailHeaderLockup);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_216DD27D4();
  }

  return v10(a1, v4);
}

uint64_t sub_216DCA054(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = type metadata accessor for ListLockup();
    *(&v14 - 3) = sub_2166DC484(&qword_27CABF8A0, type metadata accessor for ListLockup);
    *(&v14 - 2) = &off_28293B600;
    *(&v14 - 1) = sub_2166DC484(&qword_27CAC8C28, type metadata accessor for ListLockup);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_216DD27D4();
  }

  return v10(a1, v4);
}

uint64_t sub_216DCA340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for Page.Header(0);
  MEMORY[0x28223BE20](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a3)
  {
    sub_216DDA0A0(a1, v18 - v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AE8);
    if (swift_dynamicCast())
    {
      sub_2166A0F18(v18, v19);
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v16);
      (*(v15 + 16))(a2, v14, v15);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_216DDA0F4(v10, a4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_2166997CC(v10, &qword_27CAB6BF0);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return sub_216DDA0A0(a1, a4);
}

uint64_t sub_216DCA5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for TopSearchLockup();
  MEMORY[0x28223BE20](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a3)
  {
    sub_216DDA0A0(a1, v18 - v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AE8);
    if (swift_dynamicCast())
    {
      sub_2166A0F18(v18, v19);
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v16);
      (*(v15 + 16))(a2, v14, v15);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_216DDA0F4(v10, a4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_2166997CC(v10, &qword_27CABED90);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return sub_216DDA0A0(a1, a4);
}

uint64_t sub_216DCA848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8B00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for AlbumDetailHeaderLockup();
  MEMORY[0x28223BE20](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a3)
  {
    sub_216DDA0A0(a1, v18 - v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8B08);
    if (swift_dynamicCast())
    {
      sub_2166A0F18(v18, v19);
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v16);
      (*(v15 + 16))(a2, v14, v15);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_216DDA0F4(v10, a4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_2166997CC(v10, &qword_27CAC8B00);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return sub_216DDA0A0(a1, a4);
}

uint64_t sub_216DCAACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB848);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for ArtistLatestReleaseLockup();
  MEMORY[0x28223BE20](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a3)
  {
    sub_216DDA0A0(a1, v18 - v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AE8);
    if (swift_dynamicCast())
    {
      sub_2166A0F18(v18, v19);
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v16);
      (*(v15 + 16))(a2, v14, v15);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_216DDA0F4(v10, a4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_2166997CC(v10, &qword_27CABB848);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return sub_216DDA0A0(a1, a4);
}

uint64_t sub_216DCAD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for TrackLockup();
  MEMORY[0x28223BE20](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a3)
  {
    sub_216DDA0A0(a1, v18 - v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AE8);
    if (swift_dynamicCast())
    {
      sub_2166A0F18(v18, v19);
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v16);
      (*(v15 + 16))(a2, v14, v15);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_216DDA0F4(v10, a4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_2166997CC(v10, &qword_27CABEDB0);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return sub_216DDA0A0(a1, a4);
}

uint64_t sub_216DCAFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8C58);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for SongDetailList();
  MEMORY[0x28223BE20](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a3)
  {
    sub_216DDA0A0(a1, v18 - v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8C60);
    if (swift_dynamicCast())
    {
      sub_2166A0F18(v18, v19);
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v16);
      (*(v15 + 16))(a2, v14, v15);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_216DDA0F4(v10, a4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_2166997CC(v10, &qword_27CAC8C58);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return sub_216DDA0A0(a1, a4);
}

uint64_t sub_216DCB258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for VerticalVideoLockup();
  MEMORY[0x28223BE20](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a3)
  {
    sub_216DDA0A0(a1, v18 - v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AE8);
    if (swift_dynamicCast())
    {
      sub_2166A0F18(v18, v19);
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v16);
      (*(v15 + 16))(a2, v14, v15);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_216DDA0F4(v10, a4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_2166997CC(v10, &qword_27CABEDD0);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return sub_216DDA0A0(a1, a4);
}

uint64_t sub_216DCB4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8CA8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for TVMovieDetailHeaderLockup();
  MEMORY[0x28223BE20](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a3)
  {
    sub_216DDA0A0(a1, v18 - v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AE8);
    if (swift_dynamicCast())
    {
      sub_2166A0F18(v18, v19);
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v16);
      (*(v15 + 16))(a2, v14, v15);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_216DDA0F4(v10, a4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_2166997CC(v10, &qword_27CAC8CA8);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return sub_216DDA0A0(a1, a4);
}

uint64_t sub_216DCB760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8C90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for TVMovieDescription();
  MEMORY[0x28223BE20](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a3)
  {
    sub_216DDA0A0(a1, v18 - v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AE8);
    if (swift_dynamicCast())
    {
      sub_2166A0F18(v18, v19);
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v16);
      (*(v15 + 16))(a2, v14, v15);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_216DDA0F4(v10, a4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_2166997CC(v10, &qword_27CAC8C90);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return sub_216DDA0A0(a1, a4);
}

uint64_t sub_216DCB9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8C68);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for SuperHeroLockup();
  MEMORY[0x28223BE20](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a3)
  {
    sub_216DDA0A0(a1, v18 - v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AE8);
    if (swift_dynamicCast())
    {
      sub_2166A0F18(v18, v19);
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v16);
      (*(v15 + 16))(a2, v14, v15);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_216DDA0F4(v10, a4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_2166997CC(v10, &qword_27CAC8C68);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return sub_216DDA0A0(a1, a4);
}

uint64_t sub_216DCBC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED58);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for SquareLockup();
  MEMORY[0x28223BE20](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a3)
  {
    sub_216DDA0A0(a1, v18 - v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AE8);
    if (swift_dynamicCast())
    {
      sub_2166A0F18(v18, v19);
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v16);
      (*(v15 + 16))(a2, v14, v15);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_216DDA0F4(v10, a4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_2166997CC(v10, &qword_27CABED58);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return sub_216DDA0A0(a1, a4);
}

uint64_t sub_216DCBEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED38);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for SocialProfileHorizontalLockup();
  MEMORY[0x28223BE20](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a3)
  {
    sub_216DDA0A0(a1, v18 - v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8C10);
    if (swift_dynamicCast())
    {
      sub_2166A0F18(v18, v19);
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v16);
      (*(v15 + 16))(a2, v14, v15);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_216DDA0F4(v10, a4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_2166997CC(v10, &qword_27CABED38);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return sub_216DDA0A0(a1, a4);
}

uint64_t sub_216DCC170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED18);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for SocialOnboardingSharedPlaylistLockup();
  MEMORY[0x28223BE20](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a3)
  {
    sub_216DDA0A0(a1, v18 - v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8BB8);
    if (swift_dynamicCast())
    {
      sub_2166A0F18(v18, v19);
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v16);
      (*(v15 + 16))(a2, v14, v15);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_216DDA0F4(v10, a4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_2166997CC(v10, &qword_27CABED18);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return sub_216DDA0A0(a1, a4);
}

uint64_t sub_216DCC3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECB8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = _s6LockupVMa();
  MEMORY[0x28223BE20](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a3)
  {
    sub_216DDA0A0(a1, v18 - v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AE8);
    if (swift_dynamicCast())
    {
      sub_2166A0F18(v18, v19);
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v16);
      (*(v15 + 16))(a2, v14, v15);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_216DDA0F4(v10, a4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_2166997CC(v10, &qword_27CABECB8);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return sub_216DDA0A0(a1, a4);
}

uint64_t sub_216DCC678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for RecentSearchLockup();
  MEMORY[0x28223BE20](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a3)
  {
    sub_216DDA0A0(a1, v18 - v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AE8);
    if (swift_dynamicCast())
    {
      sub_2166A0F18(v18, v19);
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v16);
      (*(v15 + 16))(a2, v14, v15);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_216DDA0F4(v10, a4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_2166997CC(v10, &qword_27CABEC80);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return sub_216DDA0A0(a1, a4);
}

uint64_t sub_216DCC8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for PosterLockup();
  MEMORY[0x28223BE20](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a3)
  {
    sub_216DDA0A0(a1, v18 - v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AE8);
    if (swift_dynamicCast())
    {
      sub_2166A0F18(v18, v19);
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v16);
      (*(v15 + 16))(a2, v14, v15);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_216DDA0F4(v10, a4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_2166997CC(v10, &qword_27CABEC60);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return sub_216DDA0A0(a1, a4);
}

uint64_t sub_216DCCB80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8BB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for PlaylistDetailHeaderLockup();
  MEMORY[0x28223BE20](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a3)
  {
    sub_216DDA0A0(a1, v18 - v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8BB8);
    if (swift_dynamicCast())
    {
      sub_2166A0F18(v18, v19);
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v16);
      (*(v15 + 16))(a2, v14, v15);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_216DDA0F4(v10, a4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_2166997CC(v10, &qword_27CAC8BB0);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return sub_216DDA0A0(a1, a4);
}

uint64_t sub_216DCCE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8B90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for LiveRadioGridLockup();
  MEMORY[0x28223BE20](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a3)
  {
    sub_216DDA0A0(a1, v18 - v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8B98);
    if (swift_dynamicCast())
    {
      sub_2166A0F18(v18, v19);
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v16);
      (*(v15 + 16))(a2, v14, v15);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_216DDA0F4(v10, a4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_2166997CC(v10, &qword_27CAC8B90);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return sub_216DDA0A0(a1, a4);
}

uint64_t sub_216DCD088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC08);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for HorizontalPosterLockup();
  MEMORY[0x28223BE20](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a3)
  {
    sub_216DDA0A0(a1, v18 - v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AE8);
    if (swift_dynamicCast())
    {
      sub_2166A0F18(v18, v19);
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v16);
      (*(v15 + 16))(a2, v14, v15);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_216DDA0F4(v10, a4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_2166997CC(v10, &qword_27CABEC08);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return sub_216DDA0A0(a1, a4);
}

uint64_t sub_216DCD30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBE8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for HorizontalLockup();
  MEMORY[0x28223BE20](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a3)
  {
    sub_216DDA0A0(a1, v18 - v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AE8);
    if (swift_dynamicCast())
    {
      sub_2166A0F18(v18, v19);
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v16);
      (*(v15 + 16))(a2, v14, v15);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_216DDA0F4(v10, a4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_2166997CC(v10, &qword_27CABEBE8);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return sub_216DDA0A0(a1, a4);
}

uint64_t sub_216DCD590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8B50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for HeaderComponentModel();
  MEMORY[0x28223BE20](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a3)
  {
    sub_216DDA0A0(a1, v18 - v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AE8);
    if (swift_dynamicCast())
    {
      sub_2166A0F18(v18, v19);
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v16);
      (*(v15 + 16))(a2, v14, v15);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_216DDA0F4(v10, a4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_2166997CC(v10, &qword_27CAC8B50);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return sub_216DDA0A0(a1, a4);
}

uint64_t sub_216DCD814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for FlowcaseLockup();
  MEMORY[0x28223BE20](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a3)
  {
    sub_216DDA0A0(a1, v18 - v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AE8);
    if (swift_dynamicCast())
    {
      sub_2166A0F18(v18, v19);
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v16);
      (*(v15 + 16))(a2, v14, v15);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_216DDA0F4(v10, a4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_2166997CC(v10, &qword_27CABEBC8);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return sub_216DDA0A0(a1, a4);
}

uint64_t sub_216DCDA98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBA8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for BubbleLockup();
  MEMORY[0x28223BE20](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a3)
  {
    sub_216DDA0A0(a1, v18 - v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AE8);
    if (swift_dynamicCast())
    {
      sub_2166A0F18(v18, v19);
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v16);
      (*(v15 + 16))(a2, v14, v15);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_216DDA0F4(v10, a4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_2166997CC(v10, &qword_27CABEBA8);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return sub_216DDA0A0(a1, a4);
}

uint64_t sub_216DCDD1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8C38);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for ListLockup();
  MEMORY[0x28223BE20](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a3)
  {
    sub_216DDA0A0(a1, v18 - v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AE8);
    if (swift_dynamicCast())
    {
      sub_2166A0F18(v18, v19);
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v16);
      (*(v15 + 16))(a2, v14, v15);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_216DDA0F4(v10, a4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_2166997CC(v10, &qword_27CAC8C38);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return sub_216DDA0A0(a1, a4);
}

uint64_t sub_216DCDFA0()
{
  type metadata accessor for Page.Header(0);
  sub_2166DC484(&qword_280E2C8D8, type metadata accessor for Page.Header);
  sub_2166DC484(&qword_280E2C8C0, type metadata accessor for Page.Header);
  swift_getKeyPath();
  sub_216DD27D4();

  return sub_216DDA050();
}

uint64_t sub_216DCE0BC()
{
  type metadata accessor for ArtistLatestReleaseLockup();
  sub_2166DC484(&qword_280E35C28, type metadata accessor for ArtistLatestReleaseLockup);
  sub_2166DC484(&qword_280E35C10, type metadata accessor for ArtistLatestReleaseLockup);
  swift_getKeyPath();
  sub_216DD27D4();

  return sub_216DDA050();
}

uint64_t sub_216DCE1D8()
{
  type metadata accessor for TrackLockup();
  sub_2166DC484(&qword_280E44FA0, type metadata accessor for TrackLockup);
  sub_2166DC484(&qword_280E44F88, type metadata accessor for TrackLockup);
  swift_getKeyPath();
  sub_216DD27D4();

  return sub_216DDA050();
}

uint64_t sub_216DCE2F4()
{
  type metadata accessor for SongDetailList();
  sub_2166DC484(qword_280E42AE0, type metadata accessor for SongDetailList);
  sub_2166DC484(&qword_27CAC8C48, type metadata accessor for SongDetailList);
  swift_getKeyPath();
  sub_216DD27D4();

  return sub_216DDA050();
}

uint64_t sub_216DCE410()
{
  type metadata accessor for VerticalVideoLockup();
  sub_2166DC484(&qword_280E3CD90, type metadata accessor for VerticalVideoLockup);
  sub_2166DC484(&qword_280E3CD78, type metadata accessor for VerticalVideoLockup);
  swift_getKeyPath();
  sub_216DD27D4();

  return sub_216DDA050();
}

uint64_t sub_216DCE52C()
{
  type metadata accessor for TVMovieDetailHeaderLockup();
  sub_2166DC484(qword_280E34CE8, type metadata accessor for TVMovieDetailHeaderLockup);
  sub_2166DC484(&qword_280E34CD0, type metadata accessor for TVMovieDetailHeaderLockup);
  swift_getKeyPath();
  sub_216DD27D4();

  return sub_216DDA050();
}

uint64_t sub_216DCE648()
{
  type metadata accessor for TVMovieDescription();
  sub_2166DC484(qword_280E3E588, type metadata accessor for TVMovieDescription);
  sub_2166DC484(&qword_280E3E570, type metadata accessor for TVMovieDescription);
  swift_getKeyPath();
  sub_216DD27D4();

  return sub_216DDA050();
}

uint64_t sub_216DCE764()
{
  type metadata accessor for SuperHeroLockup();
  sub_2166DC484(qword_280E41E98, type metadata accessor for SuperHeroLockup);
  sub_2166DC484(&qword_280E41E80, type metadata accessor for SuperHeroLockup);
  swift_getKeyPath();
  sub_216DD27D4();

  return sub_216DDA050();
}

uint64_t sub_216DCE880()
{
  type metadata accessor for SquareLockup();
  sub_2166DC484(&qword_280E445F0, type metadata accessor for SquareLockup);
  sub_2166DC484(&qword_280E445D0, type metadata accessor for SquareLockup);
  swift_getKeyPath();
  sub_216DD27D4();

  return sub_216DDA050();
}

uint64_t sub_216DCE99C()
{
  type metadata accessor for SocialProfileHorizontalLockup();
  sub_2166DC484(&qword_280E310E0, type metadata accessor for SocialProfileHorizontalLockup);
  sub_2166DC484(&qword_280E310C8, type metadata accessor for SocialProfileHorizontalLockup);
  swift_getKeyPath();
  sub_216DD27D4();

  return sub_216DDA050();
}

uint64_t sub_216DCEAB8()
{
  type metadata accessor for SocialOnboardingSharedPlaylistLockup();
  sub_2166DC484(&qword_280E2DFF0, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
  sub_2166DC484(&qword_280E2DFD0, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
  swift_getKeyPath();
  sub_216DD27D4();

  return sub_216DDA050();
}

uint64_t sub_216DCEBD4()
{
  _s6LockupVMa();
  sub_2166DC484(&qword_280E439E8, _s6LockupVMa);
  sub_2166DC484(&qword_280E439D0, _s6LockupVMa);
  swift_getKeyPath();
  sub_216DD27D4();

  return sub_216DDA050();
}

uint64_t sub_216DCECF0()
{
  type metadata accessor for TopSearchLockup();
  sub_2166DC484(&qword_280E41D00, type metadata accessor for TopSearchLockup);
  sub_2166DC484(&qword_280E41CE8, type metadata accessor for TopSearchLockup);
  swift_getKeyPath();
  sub_216DD27D4();

  return sub_216DDA050();
}

uint64_t sub_216DCEE0C()
{
  type metadata accessor for RecentSearchLockup();
  sub_2166DC484(qword_280E3E960, type metadata accessor for RecentSearchLockup);
  sub_2166DC484(&qword_280E3E948, type metadata accessor for RecentSearchLockup);
  swift_getKeyPath();
  sub_216DD27D4();

  return sub_216DDA050();
}

uint64_t sub_216DCEF28()
{
  type metadata accessor for PosterLockup();
  sub_2166DC484(qword_280E44990, type metadata accessor for PosterLockup);
  sub_2166DC484(&qword_280E44978, type metadata accessor for PosterLockup);
  swift_getKeyPath();
  sub_216DD27D4();

  return sub_216DDA050();
}

uint64_t sub_216DCF044()
{
  type metadata accessor for PlaylistDetailHeaderLockup();
  sub_2166DC484(qword_280E34400, type metadata accessor for PlaylistDetailHeaderLockup);
  sub_2166DC484(&qword_280E343E8, type metadata accessor for PlaylistDetailHeaderLockup);
  swift_getKeyPath();
  sub_216DD27D4();

  return sub_216DDA050();
}

uint64_t sub_216DCF160()
{
  type metadata accessor for LiveRadioGridLockup();
  sub_2166DC484(qword_280E3DB38, type metadata accessor for LiveRadioGridLockup);
  sub_2166DC484(&qword_280E3DB20, type metadata accessor for LiveRadioGridLockup);
  swift_getKeyPath();
  sub_216DD27D4();

  return sub_216DDA050();
}

uint64_t sub_216DCF27C()
{
  type metadata accessor for HorizontalPosterLockup();
  sub_2166DC484(qword_280E39370, type metadata accessor for HorizontalPosterLockup);
  sub_2166DC484(&qword_280E39358, type metadata accessor for HorizontalPosterLockup);
  swift_getKeyPath();
  sub_216DD27D4();

  return sub_216DDA050();
}

uint64_t sub_216DCF398()
{
  type metadata accessor for HorizontalLockup();
  sub_2166DC484(qword_280E410F0, type metadata accessor for HorizontalLockup);
  sub_2166DC484(&qword_280E410D0, type metadata accessor for HorizontalLockup);
  swift_getKeyPath();
  sub_216DD27D4();

  return sub_216DDA050();
}

uint64_t sub_216DCF4B4()
{
  type metadata accessor for HeaderComponentModel();
  sub_2166DC484(&qword_280E3C3A8, type metadata accessor for HeaderComponentModel);
  sub_2166DC484(&qword_280E3C398, type metadata accessor for HeaderComponentModel);
  swift_getKeyPath();
  sub_216DD27D4();

  return sub_216DDA050();
}

uint64_t sub_216DCF5D0()
{
  type metadata accessor for FlowcaseLockup();
  sub_2166DC484(qword_280E43620, type metadata accessor for FlowcaseLockup);
  sub_2166DC484(&qword_280E43608, type metadata accessor for FlowcaseLockup);
  swift_getKeyPath();
  sub_216DD27D4();

  return sub_216DDA050();
}

uint64_t sub_216DCF6EC()
{
  type metadata accessor for BubbleLockup();
  sub_2166DC484(&qword_280E44DC0, type metadata accessor for BubbleLockup);
  sub_2166DC484(&qword_280E44DA8, type metadata accessor for BubbleLockup);
  swift_getKeyPath();
  sub_216DD27D4();

  return sub_216DDA050();
}

uint64_t sub_216DCF808()
{
  type metadata accessor for AlbumDetailHeaderLockup();
  sub_2166DC484(&qword_280E38970, type metadata accessor for AlbumDetailHeaderLockup);
  sub_2166DC484(&qword_280E38958, type metadata accessor for AlbumDetailHeaderLockup);
  swift_getKeyPath();
  sub_216DD27D4();

  return sub_216DDA050();
}

uint64_t sub_216DCF924()
{
  type metadata accessor for ListLockup();
  sub_2166DC484(&qword_27CABF8A0, type metadata accessor for ListLockup);
  sub_2166DC484(&qword_27CAC8C28, type metadata accessor for ListLockup);
  swift_getKeyPath();
  sub_216DD27D4();

  return sub_216DDA050();
}

uint64_t sub_216DCFA40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Page.Header(0);
  MEMORY[0x28223BE20](v10 - 8);
  sub_216DCA340(a1, a2, *(v3 + *(*v3 + 136)) & 1, &v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_216DCDFA0();
  sub_216CCAAE0();
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  LOBYTE(a1) = sub_21700E494();
  result = (*(v7 + 8))(v9, v6);
  if ((a1 & 1) == 0)
  {
    (*(v7 + 16))(v9, a2, v6);
    return sub_216DC5D20(v9);
  }

  return result;
}

uint64_t sub_216DCFC18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ArtistLatestReleaseLockup();
  MEMORY[0x28223BE20](v10 - 8);
  sub_216DCAACC(a1, a2, *(v3 + *(*v3 + 136)) & 1, &v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_216DCE0BC();
  sub_216CCB0BC();
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  LOBYTE(a1) = sub_21700E494();
  result = (*(v7 + 8))(v9, v6);
  if ((a1 & 1) == 0)
  {
    (*(v7 + 16))(v9, a2, v6);
    return sub_216DC600C(v9);
  }

  return result;
}

uint64_t sub_216DCFDF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TrackLockup();
  MEMORY[0x28223BE20](v10 - 8);
  sub_216DCAD50(a1, a2, *(v3 + *(*v3 + 136)) & 1, &v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_216DCE1D8();
  sub_216CCB1E8();
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  LOBYTE(a1) = sub_21700E494();
  result = (*(v7 + 8))(v9, v6);
  if ((a1 & 1) == 0)
  {
    (*(v7 + 16))(v9, a2, v6);
    return sub_216DC62F8(v9);
  }

  return result;
}

uint64_t sub_216DCFFC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21700C084();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SongDetailList();
  MEMORY[0x28223BE20](v10 - 8);
  sub_216DCAFD4(a1, a2, *(v3 + *(*v3 + 136)) & 1, &v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_216DCE2F4();
  sub_216CCAD38();
  sub_2166DC484(&qword_27CAB86B0, MEMORY[0x277CD8238]);
  LOBYTE(a1) = sub_21700E494();
  result = (*(v7 + 8))(v9, v6);
  if ((a1 & 1) == 0)
  {
    (*(v7 + 16))(v9, a2, v6);
    return sub_216DC65E4(v9);
  }

  return result;
}

uint64_t sub_216DD01A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VerticalVideoLockup();
  MEMORY[0x28223BE20](v10 - 8);
  sub_216DCB258(a1, a2, *(v3 + *(*v3 + 136)) & 1, &v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_216DCE410();
  sub_216CCB314();
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  LOBYTE(a1) = sub_21700E494();
  result = (*(v7 + 8))(v9, v6);
  if ((a1 & 1) == 0)
  {
    (*(v7 + 16))(v9, a2, v6);
    return sub_216DC68D0(v9);
  }

  return result;
}

uint64_t sub_216DD0378(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TVMovieDetailHeaderLockup();
  MEMORY[0x28223BE20](v10 - 8);
  sub_216DCB4DC(a1, a2, *(v3 + *(*v3 + 136)) & 1, &v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_216DCE52C();
  sub_216CCB440();
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  LOBYTE(a1) = sub_21700E494();
  result = (*(v7 + 8))(v9, v6);
  if ((a1 & 1) == 0)
  {
    (*(v7 + 16))(v9, a2, v6);
    return sub_216DC6BBC(v9);
  }

  return result;
}

uint64_t sub_216DD0550(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TVMovieDescription();
  MEMORY[0x28223BE20](v10 - 8);
  sub_216DCB760(a1, a2, *(v3 + *(*v3 + 136)) & 1, &v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_216DCE648();
  sub_216CCB56C();
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  LOBYTE(a1) = sub_21700E494();
  result = (*(v7 + 8))(v9, v6);
  if ((a1 & 1) == 0)
  {
    (*(v7 + 16))(v9, a2, v6);
    return sub_216DC6EA8(v9);
  }

  return result;
}

uint64_t sub_216DD0728(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SuperHeroLockup();
  MEMORY[0x28223BE20](v10 - 8);
  sub_216DCB9E4(a1, a2, *(v3 + *(*v3 + 136)) & 1, &v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_216DCE764();
  sub_216CCB698();
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  LOBYTE(a1) = sub_21700E494();
  result = (*(v7 + 8))(v9, v6);
  if ((a1 & 1) == 0)
  {
    (*(v7 + 16))(v9, a2, v6);
    return sub_216DC7194(v9);
  }

  return result;
}

uint64_t sub_216DD0900(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SquareLockup();
  MEMORY[0x28223BE20](v10 - 8);
  sub_216DCBC68(a1, a2, *(v3 + *(*v3 + 136)) & 1, &v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_216DCE880();
  sub_216CCB7C4();
  sub_2166DC484(&qword_280E4A478, MEMORY[0x277D2A460]);
  LOBYTE(a1) = sub_21700E494();
  result = (*(v7 + 8))(v9, v6);
  if ((a1 & 1) == 0)
  {
    (*(v7 + 16))(v9, a2, v6);
    return sub_216DC7480(v9);
  }

  return result;
}