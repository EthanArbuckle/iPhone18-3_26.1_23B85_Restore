uint64_t sub_25B0C3244@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_25B0E2EA0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA328E0, &qword_25B0EA438);
  return sub_25B0C27F8(v1, a1 + *(v3 + 44));
}

uint64_t sub_25B0C3298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25B0C3300(uint64_t a1)
{
  v2 = sub_25B0E31D0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25B0E2D60();
}

unint64_t sub_25B0C33C8()
{
  result = qword_27FA32928;
  if (!qword_27FA32928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32930, &unk_25B0EA510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32928);
  }

  return result;
}

uint64_t type metadata accessor for FacesGrid()
{
  result = qword_27FA32938;
  if (!qword_27FA32938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25B0C34A0()
{
  sub_25B0B0E84();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_25B0C3564@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25B0E2E60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32070, &qword_25B0E9490);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_25B0C48C4(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_25B0E2C70();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_25B0E3A40();
    v16 = sub_25B0E30D0();
    sub_25B0E2940();

    sub_25B0E2E50();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_25B0C374C()
{
  v1 = v0;
  v30 = sub_25B0E3550();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_25B0E3540();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_25B0E2C70();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B0C3564(v13);
  v14 = sub_25B0E2C60();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) != 0 && *(v1 + *(type metadata accessor for FacesGrid() + 28)) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31918, &qword_25B0E7820);
    v15 = *(v32 + 72);
    v16 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_25B0E7720;
    *v8 = xmmword_25B0EA520;
    (*(v5 + 104))(v8, *MEMORY[0x277CDF108], v31);
    sub_25B0E3560();
    return v17;
  }

  else
  {
    result = type metadata accessor for FacesGrid();
    v19 = *(v1 + *(result + 40));
    if (v19 < 1)
    {
LABEL_18:
      __break(1u);
    }

    else
    {
      v33 = MEMORY[0x277D84F90];
      result = sub_25B08C358(0, v19, 0);
      v20 = 0;
      v29 = *MEMORY[0x277CDF108];
      v21 = (v5 + 104);
      v17 = v33;
      v28 = v32 + 32;
      v22 = 1;
      v27 = xmmword_25B0EA520;
      v23 = v19;
      while (!v20)
      {
        sub_25B0E3900();
        sub_25B0E38F0();
        sub_25B0E3850();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        sub_25B0E3580();
        *v8 = v27;
        (*v21)(v8, v29, v31);
        sub_25B0E3560();

        v33 = v17;
        v25 = *(v17 + 16);
        v24 = *(v17 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_25B08C358(v24 > 1, v25 + 1, 1);
          v17 = v33;
        }

        *(v17 + 16) = v25 + 1;
        result = (*(v32 + 32))(v17 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v25, v4, v30);
        v20 = v22 == v19;
        if (v22 == v19)
        {
          v22 = 0;
        }

        else if (__OFADD__(v22++, 1))
        {
          __break(1u);
          goto LABEL_18;
        }

        if (!--v23)
        {
          return v17;
        }
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25B0C3BA4@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_25B0E2F60();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32948, &qword_25B0EA590);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  sub_25B0C374C();
  sub_25B0E2F00();
  *(v1 + *(type metadata accessor for FacesGrid() + 28));
  v23 = v1;
  v24 = 0;
  sub_25B0C4814(&qword_27FA32950, MEMORY[0x277CE0428]);
  sub_25B0E3FA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32958, &qword_25B0EA598);
  sub_25B0C467C();
  sub_25B0E35D0();
  v9 = sub_25B0E3130();
  sub_25B0E2A00();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v22;
  (*(v5 + 32))(v22, v8, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32970, &qword_25B0EA5A0);
  v20 = v18 + *(result + 36);
  *v20 = v9;
  *(v20 + 8) = v11;
  *(v20 + 16) = v13;
  *(v20 + 24) = v15;
  *(v20 + 32) = v17;
  *(v20 + 40) = 0;
  return result;
}

uint64_t sub_25B0C3E2C(uint64_t a1)
{
  v2 = type metadata accessor for FacesGrid();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8[1] = *(a1 + *(v2 + 24) + 56);
  sub_25B0C4730(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_25B0C485C(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for FacesGrid);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F68, &qword_25B0E91E8);
  type metadata accessor for FaceButton();
  sub_25B058150(&qword_27FA32978, &qword_27FA31F68, &qword_25B0E91E8);
  sub_25B0C4814(&qword_27FA32968, type metadata accessor for FaceButton);
  sub_25B0C4814(&qword_27FA32980, MEMORY[0x277D2BE00]);
  sub_25B0E3500();
}

uint64_t sub_25B0C40C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a1;
  v58 = a3;
  v62 = sub_25B0E2C70();
  v52 = *(v62 - 8);
  v4 = *(v52 + 64);
  v5 = MEMORY[0x28223BE20](v62);
  v57 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v56 = &v49 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v49 - v9;
  v51 = sub_25B0E2540();
  v11 = *(v51 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v51);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for FacePlacement.Location(0);
  v15 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v61 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25B0E2750();
  v60 = *(v17 - 8);
  v18 = *(v60 + 64);
  MEMORY[0x28223BE20](v17);
  v59 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FaceButton();
  v21 = *(*(v20 - 1) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B0E3900();
  v55 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = *(v60 + 16);
  v25 = v53;
  v54 = v17;
  v24(v59, v53, v17);
  v26 = type metadata accessor for FacesGrid();
  v27 = *(a2 + v26[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31890, &qword_25B0E7768);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_25B0E7730;
  v29 = a2 + v26[6];
  v30 = *(v29 + 56);
  *(v28 + 32) = *(v29 + 64);
  v31 = sub_25B0C76AC(v25, v30);
  if (v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = v31;
  }

  *(v28 + 40) = v33;
  MEMORY[0x25F85F060](v28);
  v34 = v61;
  *v61 = v27;
  (*(v11 + 32))(&v34[*(v50 + 20)], v14, v51);
  v35 = *(a2 + v26[9]);
  v51 = *(a2 + v26[10]);
  v36 = *(a2 + v26[7]);
  LODWORD(v53) = *(a2 + v26[8]);
  sub_25B0C3564(v10);
  v37 = sub_25B0E2C60();
  v38 = *(v52 + 8);
  v38(v10, v62);
  if ((v37 & 1) != 0 && v36)
  {
    v39 = 1;
    v52 = sub_25B0E2F00();
  }

  else
  {
    v52 = sub_25B0E2EF0();
    v39 = v36;
  }

  v40 = v56;
  sub_25B0C3564(v56);
  v41 = sub_25B0E2C60();
  v42 = v62;
  v38(v40, v62);
  LODWORD(v56) = (v41 & v39 & 1) == 0;
  v43 = v57;
  sub_25B0C3564(v57);
  LOBYTE(v41) = sub_25B0E2C60();
  v38(v43, v42);
  v44 = (v35 + -64.0) / v51 + -15.0;
  (*(v60 + 32))(v23, v59, v54);
  sub_25B0C485C(v61, &v23[v20[5]], type metadata accessor for FacePlacement.Location);
  v45 = &v23[v20[6]];
  *v45 = v44;
  *(v45 + 1) = 0;
  v45[16] = 0;
  v46 = &v23[v20[7]];
  *v46 = 0;
  *(v46 + 1) = 0;
  v46[16] = 1;
  v23[v20[8]] = v36;
  v23[v20[9]] = v53;
  v47 = &v23[v20[10]];
  *v47 = 0;
  *(v47 + 1) = 0;
  *&v23[v20[11]] = v52;
  v23[v20[12]] = v56;
  v23[v20[13]] = (v41 & v39 & 1) == 0;
  sub_25B0C485C(v23, v58, type metadata accessor for FaceButton);
}

unint64_t sub_25B0C467C()
{
  result = qword_27FA32960;
  if (!qword_27FA32960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32958, &qword_25B0EA598);
    sub_25B0C4814(&qword_27FA32968, type metadata accessor for FaceButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32960);
  }

  return result;
}

uint64_t sub_25B0C4730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FacesGrid();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0C4794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FacesGrid() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_25B0C40C0(a1, v6, a2);
}

uint64_t sub_25B0C4814(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25B0C485C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25B0C48C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32070, &qword_25B0E9490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25B0C4934()
{
  result = qword_27FA32988;
  if (!qword_27FA32988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32970, &qword_25B0EA5A0);
    sub_25B058150(qword_27FA32990, &qword_27FA32948, &qword_25B0EA590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32988);
  }

  return result;
}

void sub_25B0C49F4(uint64_t a1)
{
  sub_25B0C512C(319, &qword_27FA32A18, type metadata accessor for FontManager, MEMORY[0x277CE10B8]);
  if (v2 <= 0x3F)
  {
    sub_25B0C50C8();
    if (v3 <= 0x3F)
    {
      sub_25B0C512C(319, &qword_27FA32A30, type metadata accessor for CGRect, MEMORY[0x277CE10B8]);
      if (v4 <= 0x3F)
      {
        sub_25B0C5190(319, &qword_27FA325E8, MEMORY[0x277D839B0], MEMORY[0x277CDD630]);
        if (v5 <= 0x3F)
        {
          sub_25B0C512C(319, &qword_27FA32A38, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
          if (v6 <= 0x3F)
          {
            sub_25B0C5190(319, &qword_27FA32A40, &type metadata for GalleryManager.Row, MEMORY[0x277D83940]);
            if (v7 <= 0x3F)
            {
              v8 = *(a1 + 16);
              swift_checkMetadataState();
              if (v9 <= 0x3F)
              {
                sub_25B0B0F2C();
                if (v10 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_25B0C4BF8(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_25B0E2C80() - 8);
  v7 = 8;
  if (*(v6 + 64) > 8uLL)
  {
    v7 = *(v6 + 64);
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v8 + 80);
  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 & 0xF8;
  v14 = v13 | 7;
  v15 = v7 + 1;
  v16 = v11 + 18;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v17 = ((*(v8 + 64) + ((v16 + ((((v13 + 87) & ~v14) + v15) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v18 = v17 & 0xFFFFFFF8;
  if ((v17 & 0xFFFFFFF8) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = a2 - v12 + 1;
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

    return v12 + (v25 | v24) + 1;
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
  if ((v9 & 0x80000000) != 0)
  {
    v27 = *(v8 + 48);

    return v27((v16 + ((((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14) + v15) & 0xFFFFFFFFFFFFFFF8)) & ~v11);
  }

  else
  {
    v26 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v26) = -1;
    }

    return (v26 + 1);
  }
}

void sub_25B0C4E30(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_25B0E2C80() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 & 0xF8 | 7;
  v16 = v9 + 1;
  v17 = ((*(v10 + 64) + ((v13 + 18 + (((((v12 & 0xF8) + 87) & ~v15) + v16) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v14 >= a3)
  {
    v20 = 0;
    v21 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((*(v10 + 64) + ((v13 + 18 + (((((v12 & 0xF8) + 87) & ~v15) + v16) & 0xFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = a3 - v14 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if ((v11 & 0x80000000) != 0)
      {
        v24 = *(v10 + 56);

        v24((v13 + 18 + ((((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v15 + 8) & ~v15) + v16) & 0xFFFFFFFFFFFFFFF8)) & ~v13, a2);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        a1[1] = 0;
      }

      else
      {
        *a1 = (a2 - 1);
      }

      return;
    }
  }

  if (v17)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v17)
  {
    v23 = ~v14 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

void sub_25B0C50C8()
{
  if (!qword_27FA32A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32A28, qword_25B0EA5B8);
    v0 = sub_25B0E3480();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA32A20);
    }
  }
}

void sub_25B0C512C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_25B0C5190(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_25B0C5224(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_25B0E35F0();
}

uint64_t sub_25B0C53F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v14 = *(a1 + 16);
  *(v7 + 16) = v14;
  (*(v4 + 32))(v7 + v6, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_25B0E2CA0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32A50, &unk_25B0EA628);
  swift_getTupleTypeMetadata2();
  sub_25B0E35E0();
  swift_getWitnessTable();
  sub_25B0E34B0();
  sub_25B0E2CA0();
  sub_25B0E2CA0();
  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x277CDF918];
  v19 = WitnessTable;
  v20 = MEMORY[0x277CDF918];
  v17 = swift_getWitnessTable();
  v18 = v9;
  swift_getWitnessTable();
  sub_25B0E2A20();
  swift_getWitnessTable();
  v15 = sub_25B0E2BC0();
  v16 = v10;
  v11 = sub_25B0E2BD0();
  swift_getWitnessTable();
  v12 = *(*(v11 - 8) + 16);
  v12(v21, &v15, v11);

  v15 = v21[0];
  v16 = v21[1];
  v12(a2, &v15, v11);
}

uint64_t sub_25B0C5710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v23 = a1;
  v24 = a4;
  v22 = a2;
  v25 = a5;
  sub_25B0E2CA0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32A50, &unk_25B0EA628);
  swift_getTupleTypeMetadata2();
  sub_25B0E35E0();
  swift_getWitnessTable();
  sub_25B0E34B0();
  sub_25B0E2CA0();
  sub_25B0E2CA0();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277CDF918];
  v28 = WitnessTable;
  v29 = MEMORY[0x277CDF918];
  v26 = swift_getWitnessTable();
  v27 = v7;
  swift_getWitnessTable();
  v8 = sub_25B0E2A20();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  v17 = v24;
  *(&v22 - 4) = a3;
  *(&v22 - 3) = v17;
  v18 = v23;
  *(&v22 - 2) = v22;
  *(&v22 - 1) = v18;
  sub_25B0E30F0();
  sub_25B0E2A30();
  swift_getWitnessTable();
  v19 = v9[2];
  v19(v15, v13, v8);
  v20 = v9[1];
  v20(v13, v8);
  v19(v25, v15, v8);
  v20(v15, v8);
}

uint64_t sub_25B0C5A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v36 = a4;
  v37 = a2;
  v35 = a1;
  v40 = a5;
  v39 = a3;
  sub_25B0E2CA0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32A50, &unk_25B0EA628);
  swift_getTupleTypeMetadata2();
  v5 = sub_25B0E35E0();
  v32[1] = swift_getWitnessTable();
  v32[2] = v5;
  v6 = sub_25B0E34B0();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v32 - v8;
  v10 = sub_25B0E2CA0();
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v32 - v12;
  v14 = sub_25B0E2CA0();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v34 = v32 - v20;
  sub_25B0E3900();
  v32[3] = sub_25B0E38F0();
  sub_25B0E3850();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  v23 = v35;
  v22 = v36;
  v32[-4] = v39;
  v32[-3] = v22;
  v24 = v37;
  v32[-2] = v23;
  v32[-1] = v24;
  sub_25B0E2EF0();
  sub_25B0E34A0();
  sub_25B0E3100();
  WitnessTable = swift_getWitnessTable();
  sub_25B0E3340();
  (*(v33 + 8))(v9, v6);
  sub_25B0E3120();
  v26 = MEMORY[0x277CDF918];
  v43 = WitnessTable;
  v44 = MEMORY[0x277CDF918];
  v27 = swift_getWitnessTable();
  sub_25B0E3340();
  (*(v38 + 8))(v13, v10);
  v41 = v27;
  v42 = v26;
  swift_getWitnessTable();
  v28 = v15[2];
  v29 = v34;
  v28(v34, v19, v14);
  v30 = v15[1];
  v30(v19, v14);
  v28(v40, v29, v14);
  v30(v29, v14);
}

uint64_t sub_25B0C5F08@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v67 = a2;
  v64 = a1;
  v75 = a5;
  v65 = sub_25B0E2B80();
  v69 = *(v65 - 8);
  v7 = *(v69 + 64);
  MEMORY[0x28223BE20](v65);
  v66 = v8;
  v68 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a4;
  v10 = type metadata accessor for GalleryGrid();
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  MEMORY[0x28223BE20](v10);
  v62 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A50, &unk_25B0EA628);
  v73 = *(v13 - 8);
  v74 = v13;
  v14 = *(v73 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v72 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v71 = &v51 - v17;
  v18 = a3;
  v19 = sub_25B0E2CA0();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v51 - v25;
  sub_25B0E3900();
  v70 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = *(v10 + 68);
  sub_25B0E3130();
  v28 = v64;
  v53 = v18;
  sub_25B0E3340();
  v79[2] = v9;
  v79[3] = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v55 = v24;
  v56 = v19;
  v29 = v20[2];
  v57 = v20 + 2;
  v58 = v29;
  v29(v26, v24, v19);
  v30 = v20[1];
  v60 = v20 + 1;
  v61 = v30;
  v30(v24, v19);
  v52 = *(v28 + *(v10 + 56));
  v79[0] = v52;
  KeyPath = swift_getKeyPath();
  v31 = v63;
  v32 = v62;
  (*(v63 + 16))(v62, v28, v10);
  v34 = v68;
  v33 = v69;
  v35 = v65;
  (*(v69 + 16))(v68, v67, v65);
  v36 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v37 = *(v33 + 80);
  v67 = v26;
  v38 = v35;
  v39 = (v11 + v37 + v36) & ~v37;
  v40 = swift_allocObject();
  *(v40 + 16) = v53;
  *(v40 + 24) = v9;
  (*(v31 + 32))(v40 + v36, v32, v10);
  (*(v33 + 32))(v40 + v39, v34, v38);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A58, &qword_25B0EA650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A60, &qword_25B0EA658);
  sub_25B058150(&qword_27FA32A68, &qword_27FA32A58, &qword_25B0EA650);
  sub_25B0C738C();
  sub_25B058150(&qword_27FA32A78, &qword_27FA32A60, &qword_25B0EA658);
  v41 = v71;
  sub_25B0E34F0();
  v42 = v55;
  v43 = v67;
  v44 = v56;
  v58(v55, v67, v56);
  v79[0] = v42;
  v46 = v72;
  v45 = v73;
  v47 = v74;
  (*(v73 + 16))(v72, v41, v74);
  v79[1] = v46;
  v78[0] = v44;
  v78[1] = v47;
  v76 = WitnessTable;
  v77 = sub_25B0C73E0();
  sub_25B0C5224(v79, 2uLL, v78);
  v48 = *(v45 + 8);
  v48(v41, v47);
  v49 = v61;
  v61(v43, v44);
  v48(v46, v47);
  v49(v42, v44);
}

uint64_t sub_25B0C65E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v9;
  v14 = *(a1 + 64);
  v10 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v10;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a5 = sub_25B0E2F00();
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A88, &qword_25B0EA660);
  sub_25B0C66F4(a2, v13, a3, a4, a5 + *(v11 + 44));
}

uint64_t sub_25B0C66F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v107 = a4;
  v113 = a3;
  v116 = a5;
  v117 = a2;
  v114 = type metadata accessor for FacesGrid();
  v6 = *(*(v114 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v114);
  v115 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = (&v93 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A90, &qword_25B0EA668);
  v111 = *(v11 - 8);
  v112 = v11;
  v12 = *(v111 + 64);
  MEMORY[0x28223BE20](v11);
  v106 = &v93 - v13;
  v14 = sub_25B0E2EE0();
  v103 = *(v14 - 8);
  v15 = *(v103 + 64);
  MEMORY[0x28223BE20](v14);
  v102 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A98, &qword_25B0EA670);
  v17 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v100 = &v93 - v18;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AA0, &qword_25B0EA678);
  v19 = *(*(v101 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v101);
  v105 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v93 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AA8, &qword_25B0EA680);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v104 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v93 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AB0, &qword_25B0EA688);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v110 = &v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v108 = &v93 - v34;
  sub_25B0E3900();
  v109 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v35 = type metadata accessor for GalleryGrid();
  if (*(*(a1 + v35[14]) + 16) < 2uLL)
  {
    v77 = v108;
    (*(v111 + 56))(v108, 1, 1, v112);
  }

  else
  {
    v97 = v29;
    sub_25B0E34E0();
    v36 = NTKCSeparatorColor();
    v37 = sub_25B0E3370();
    v38 = sub_25B0E3110();
    v98 = v35;
    v39 = v38;
    v40 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AC0, &qword_25B0EA6C8) + 36)];
    *v40 = v37;
    v40[8] = v39;
    LOBYTE(v37) = sub_25B0E3130();
    sub_25B0E2A00();
    v41 = &v29[*(v24 + 36)];
    *v41 = v37;
    *(v41 + 1) = v42;
    *(v41 + 2) = v43;
    *(v41 + 3) = v44;
    *(v41 + 4) = v45;
    v41[40] = 0;
    v46 = v117[1];
    v94 = *v117;
    v95 = v46;
    v119 = v94;
    v120 = v46;
    sub_25B04C9BC();

    v47 = sub_25B0E3210();
    v49 = v48;
    v96 = v14;
    v51 = v50;
    v52 = a1[1];
    v119 = *a1;
    v120 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AC8, &qword_25B0EA6D0);
    sub_25B0E3450();
    v53 = v118[0];
    swift_getKeyPath();
    v107 = a1;
    v119 = v53;
    sub_25B0C74EC();
    sub_25B0E28D0();

    v54 = *(v53 + 16);

    v55 = sub_25B0E31F0();
    v93 = v23;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;

    sub_25B0B0ABC(v47, v49, v51 & 1);

    v119 = v56;
    v120 = v58;
    LOBYTE(v47) = v60 & 1;
    v121 = v60 & 1;
    v122 = v62;
    strcpy(v118, "Gallery-Row-");
    BYTE5(v118[1]) = 0;
    HIWORD(v118[1]) = -5120;
    MEMORY[0x25F8602F0](v94, v95);
    v63 = v100;
    sub_25B0E3310();

    sub_25B0B0ABC(v56, v58, v47);

    v64 = v102;
    sub_25B0E2ED0();
    v65 = v93;
    sub_25B0E2C90();
    (*(v103 + 8))(v64, v96);
    sub_25B058448(v63, &qword_27FA32A98, &qword_25B0EA670);
    LOBYTE(v64) = sub_25B0E3130();
    sub_25B0E2A00();
    v66 = v65 + *(v101 + 36);
    *v66 = v64;
    *(v66 + 8) = v67;
    *(v66 + 16) = v68;
    *(v66 + 24) = v69;
    *(v66 + 32) = v70;
    *(v66 + 40) = 0;
    v71 = v97;
    v72 = v104;
    sub_25B0B00E0(v97, v104, &qword_27FA32AA8, &qword_25B0EA680);
    v73 = v105;
    sub_25B0B00E0(v65, v105, &qword_27FA32AA0, &qword_25B0EA678);
    v74 = v106;
    sub_25B0B00E0(v72, v106, &qword_27FA32AA8, &qword_25B0EA680);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AD0, &qword_25B0EA700);
    sub_25B0B00E0(v73, v74 + *(v75 + 48), &qword_27FA32AA0, &qword_25B0EA678);
    sub_25B058448(v65, &qword_27FA32AA0, &qword_25B0EA678);
    sub_25B058448(v71, &qword_27FA32AA8, &qword_25B0EA680);
    a1 = v107;
    sub_25B058448(v73, &qword_27FA32AA0, &qword_25B0EA678);
    v35 = v98;
    sub_25B058448(v72, &qword_27FA32AA8, &qword_25B0EA680);
    v76 = v74;
    v77 = v108;
    sub_25B0C7544(v76, v108);
    (*(v111 + 56))(v77, 0, 1, v112);
  }

  v78 = *(a1 + v35[13]);
  v79 = *(*(a1 + v35[14]) + 16) < 2uLL;
  v80 = *(a1 + v35[15]);
  v81 = v117;
  sub_25B08CEB4(v117, &v119);
  sub_25B0E2B70();
  v83 = v82;
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32070, &qword_25B0E9490);
  swift_storeEnumTagMultiPayload();
  v84 = v114;
  *(v10 + *(v114 + 20)) = v78;
  v85 = v10 + v84[6];
  v86 = *(v81 + 3);
  *(v85 + 2) = *(v81 + 2);
  *(v85 + 3) = v86;
  *(v85 + 8) = v81[8];
  v87 = *(v81 + 1);
  *v85 = *v81;
  *(v85 + 1) = v87;
  *(v10 + v84[7]) = v79;
  *(v10 + v84[8]) = v80;
  *(v10 + v84[9]) = v83;
  *(v10 + v84[10]) = 3;
  v88 = v110;
  sub_25B0B00E0(v77, v110, &qword_27FA32AB0, &qword_25B0EA688);
  v89 = v115;
  sub_25B0C4730(v10, v115);
  v90 = v116;
  sub_25B0B00E0(v88, v116, &qword_27FA32AB0, &qword_25B0EA688);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AB8, &qword_25B0EA6C0);
  sub_25B0C4730(v89, v90 + *(v91 + 48));
  sub_25B0C7490(v10);
  sub_25B058448(v77, &qword_27FA32AB0, &qword_25B0EA688);
  sub_25B0C7490(v89);
  sub_25B058448(v88, &qword_27FA32AB0, &qword_25B0EA688);
}

uint64_t sub_25B0C70EC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for GalleryGrid() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_25B0C5710(a1, v8, v5, v6, a2);
}

uint64_t sub_25B0C71C4(uint64_t a1)
{
  v2 = sub_25B0E2C70();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25B0E2D80();
}

uint64_t sub_25B0C728C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for GalleryGrid() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_25B0E2B80() - 8);
  v11 = v2 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_25B0C65E0(a1, (v2 + v8), v11, v5, a2);
}

unint64_t sub_25B0C738C()
{
  result = qword_27FA32A70;
  if (!qword_27FA32A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32A70);
  }

  return result;
}

unint64_t sub_25B0C73E0()
{
  result = qword_27FA32A80;
  if (!qword_27FA32A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32A50, &unk_25B0EA628);
    sub_25B058150(&qword_27FA32A78, &qword_27FA32A60, &qword_25B0EA658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32A80);
  }

  return result;
}

uint64_t sub_25B0C7490(uint64_t a1)
{
  v2 = type metadata accessor for FacesGrid();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25B0C74EC()
{
  result = qword_27FA31DC0;
  if (!qword_27FA31DC0)
  {
    type metadata accessor for FontManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31DC0);
  }

  return result;
}

uint64_t sub_25B0C7544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A90, &qword_25B0EA668);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_25B0C75DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25B0C7624(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25B0C76AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_25B0E2750() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_25B0C9464(&qword_27FA314D0, MEMORY[0x277D2BE00]);
  v7 = 0;
  while ((sub_25B0E3700() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_25B0C77CC@<X0>(uint64_t a1@<X8>)
{
  v112 = a1;
  v2 = sub_25B0E30A0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v101 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_25B0E30C0();
  v103 = *(v111 - 8);
  v5 = *(v103 + 8);
  MEMORY[0x28223BE20](v111);
  v102 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AD8, &qword_25B0EA7A8);
  v100 = *(v109 - 8);
  v7 = *(v100 + 64);
  MEMORY[0x28223BE20](v109);
  v9 = &v97 - v8;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AE0, &qword_25B0EA7B0);
  v10 = *(v110 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v110);
  v104 = (&v97 - v12);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AE8, &qword_25B0EA7B8);
  v13 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v108 = &v97 - v14;
  v15 = type metadata accessor for SingleFaceRow();
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AF0, &qword_25B0EA7C0);
  v19 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v21 = &v97 - v20;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AF8, &qword_25B0EA7C8);
  v22 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v24 = &v97 - v23;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32B00, &qword_25B0EA7D0);
  v25 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v27 = &v97 - v26;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32B08, &qword_25B0EA7D8);
  v28 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v30 = &v97 - v29;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32B10, &qword_25B0EA7E0);
  v31 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106);
  v34 = *(v1 + 48);
  v35 = *(v1 + 80);
  v128 = *(v1 + 64);
  v129 = v35;
  v130 = *(v1 + 96);
  v36 = *(v1 + 16);
  v127[0] = *v1;
  v127[1] = v36;
  v127[2] = *(v1 + 32);
  v127[3] = v34;
  v37 = *(v1 + 8);
  v38 = *(v1 + 24);
  v39 = *(v1 + 40);
  v134 = *(v1 + 56);
  v132 = v38;
  v133 = v39;
  v131 = v37;
  v40 = v128;
  if (*(v128 + 16) == 1)
  {
    v41 = *(&v128 + 1);
    v103 = &v97 - v32;
    v104 = v33;
    v42 = sub_25B0E2750();
    v43 = v127[0];
    (*(*(v42 - 8) + 16))(&v18[v15[6]], v40 + ((*(*(v42 - 8) + 80) + 32) & ~*(*(v42 - 8) + 80)), v42);
    v44 = *(&v129 + 1);
    sub_25B0C9344(v127, &v120);
    v45 = sub_25B0E2EF0();
    v46 = v131;
    *(v18 + 24) = v132;
    *(v18 + 40) = v133;
    *v18 = v43;
    v47 = v134;
    *(v18 + 8) = v46;
    *(v18 + 7) = v47;
    *(v18 + 8) = v40;
    *(v18 + 9) = v41;
    v48 = &v18[v15[7]];
    *v48 = v44;
    v48[8] = 0;
    v49 = &v18[v15[8]];
    *v49 = 0;
    v49[8] = 1;
    v50 = &v18[v15[9]];
    *v50 = 0;
    *(v50 + 1) = 0;
    v50[16] = 1;
    v18[v15[10]] = 0;
    *&v18[v15[11]] = v45;
    v18[v15[12]] = 1;
    v18[v15[13]] = 1;
    sub_25B0E3590();
    sub_25B0E2B50();
    sub_25B0C93FC(v18, v21, type metadata accessor for SingleFaceRow);
    v51 = &v21[*(v97 + 36)];
    v52 = v118;
    *v51 = v117;
    *(v51 + 1) = v52;
    *(v51 + 2) = v119;
    sub_25B0E35A0();
    sub_25B0E2D30();
    sub_25B0745E4(v21, v24, &qword_27FA32AF0, &qword_25B0EA7C0);
    v53 = &v24[*(v98 + 36)];
    v54 = v125;
    *(v53 + 4) = v124;
    *(v53 + 5) = v54;
    *(v53 + 6) = v126;
    v55 = v121;
    *v53 = v120;
    *(v53 + 1) = v55;
    v56 = v123;
    *(v53 + 2) = v122;
    *(v53 + 3) = v56;
    v57 = sub_25B0E3120();
    sub_25B0E2A00();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    sub_25B0745E4(v24, v27, &qword_27FA32AF8, &qword_25B0EA7C8);
    v66 = &v27[*(v99 + 36)];
    *v66 = v57;
    *(v66 + 1) = v59;
    *(v66 + 2) = v61;
    *(v66 + 3) = v63;
    *(v66 + 4) = v65;
    v66[40] = 0;
    v67 = sub_25B0E3130();
    sub_25B0E2A00();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    sub_25B0745E4(v27, v30, &qword_27FA32B00, &qword_25B0EA7D0);
    v76 = v105;
    v77 = &v30[*(v105 + 36)];
    *v77 = v67;
    *(v77 + 1) = v69;
    *(v77 + 2) = v71;
    *(v77 + 3) = v73;
    *(v77 + 4) = v75;
    v77[40] = 0;
    sub_25B0E2AF0();
    v78 = sub_25B0C90E4();
    v79 = v103;
    sub_25B0E32A0();
    sub_25B058448(v30, &qword_27FA32B08, &qword_25B0EA7D8);
    v80 = v104;
    v81 = v106;
    v104[2](v108, v79, v106);
    swift_storeEnumTagMultiPayload();
    v113 = v76;
    v114 = v78;
    swift_getOpaqueTypeConformance2();
    v82 = sub_25B058150(&qword_27FA32B68, &qword_27FA32AD8, &qword_25B0EA7A8);
    v113 = v109;
    v114 = v111;
    v115 = v82;
    v116 = MEMORY[0x277CDE478];
    swift_getOpaqueTypeConformance2();
    sub_25B0E2F30();
    return v80[1](v79, v81);
  }

  else
  {
    v84 = sub_25B0E30E0();
    v85 = v10;
    MEMORY[0x28223BE20](v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32B18, &qword_25B0EA7E8);
    v86 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32B20, &qword_25B0EA7F0);
    v87 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32B28, &qword_25B0EA7F8);
    v88 = sub_25B0C8F14();
    *&v120 = v87;
    *(&v120 + 1) = v88;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v120 = v86;
    *(&v120 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_25B0E2A30();
    sub_25B0E3090();
    v90 = v102;
    sub_25B0E30B0();
    v91 = sub_25B058150(&qword_27FA32B68, &qword_27FA32AD8, &qword_25B0EA7A8);
    v92 = v104;
    v93 = v109;
    v94 = v111;
    sub_25B0E32F0();
    (*(v103 + 1))(v90, v94);
    (*(v100 + 8))(v9, v93);
    v95 = v110;
    (*(v85 + 16))(v108, v92, v110);
    swift_storeEnumTagMultiPayload();
    v96 = sub_25B0C90E4();
    *&v120 = v105;
    *(&v120 + 1) = v96;
    swift_getOpaqueTypeConformance2();
    *&v120 = v93;
    *(&v120 + 1) = v94;
    *&v121 = v91;
    *(&v121 + 1) = MEMORY[0x277CDE478];
    swift_getOpaqueTypeConformance2();
    sub_25B0E2F30();
    return (*(v85 + 8))(v92, v95);
  }
}

uint64_t sub_25B0C8314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_25B0E2F60();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32B60, &qword_25B0EA810);
  v54 = *(v55 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v55);
  v52 = &v50 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32B50, &qword_25B0EA808);
  v7 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v9 = &v50 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32B40, &qword_25B0EA800);
  v10 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v12 = &v50 - v11;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32B28, &qword_25B0EA7F8);
  v13 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v15 = &v50 - v14;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32B20, &qword_25B0EA7F0);
  v57 = *(v59 - 8);
  v16 = *(v57 + 64);
  MEMORY[0x28223BE20](v59);
  v50 = &v50 - v17;
  sub_25B0E3900();
  v56 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = sub_25B0E2E90();
  v19 = *(a1 + 104);
  MEMORY[0x28223BE20](v18);
  LODWORD(v63) = 0;
  sub_25B0C9464(&qword_27FA32950, MEMORY[0x277CE0428]);
  sub_25B0E3FA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32958, &qword_25B0EA598);
  sub_25B0C467C();
  v20 = v52;
  sub_25B0E2A10();
  sub_25B0E3590();
  sub_25B0E2D30();
  (*(v54 + 32))(v9, v20, v55);
  v21 = &v9[*(v51 + 36)];
  v22 = v68;
  *(v21 + 4) = v67;
  *(v21 + 5) = v22;
  *(v21 + 6) = v69;
  v23 = v64;
  *v21 = v63;
  *(v21 + 1) = v23;
  v24 = v66;
  *(v21 + 2) = v65;
  *(v21 + 3) = v24;
  v25 = sub_25B0E3120();
  sub_25B0E2A00();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_25B0745E4(v9, v12, &qword_27FA32B50, &qword_25B0EA808);
  v34 = &v12[*(v53 + 36)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = sub_25B0E3130();
  sub_25B0E2A00();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_25B0745E4(v12, v15, &qword_27FA32B40, &qword_25B0EA800);
  v44 = v58;
  v45 = &v15[*(v58 + 36)];
  *v45 = v35;
  *(v45 + 1) = v37;
  *(v45 + 2) = v39;
  *(v45 + 3) = v41;
  *(v45 + 4) = v43;
  v45[40] = 0;
  sub_25B0E2AF0();
  v46 = sub_25B0C8F14();
  v47 = v50;
  sub_25B0E32A0();
  sub_25B058448(v15, &qword_27FA32B28, &qword_25B0EA7F8);
  v61 = v44;
  v62 = v46;
  swift_getOpaqueTypeConformance2();
  v48 = v59;
  sub_25B0E32C0();
  (*(v57 + 8))(v47, v48);
}

uint64_t sub_25B0C8954(uint64_t a1)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(a1 + 64);
  v9 = v8;
  v2 = swift_allocObject();
  v3 = *(a1 + 80);
  v2[5] = *(a1 + 64);
  v2[6] = v3;
  v2[7] = *(a1 + 96);
  v4 = *(a1 + 16);
  v2[1] = *a1;
  v2[2] = v4;
  v5 = *(a1 + 48);
  v2[3] = *(a1 + 32);
  v2[4] = v5;
  sub_25B0C938C(&v9, v7);
  sub_25B0C9344(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F68, &qword_25B0E91E8);
  type metadata accessor for FaceButton();
  sub_25B058150(&qword_27FA32978, &qword_27FA31F68, &qword_25B0E91E8);
  sub_25B0C9464(&qword_27FA32968, type metadata accessor for FaceButton);
  sub_25B0C9464(&qword_27FA32980, MEMORY[0x277D2BE00]);
  sub_25B0E3500();
}

uint64_t sub_25B0C8B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v40 = a3;
  v4 = sub_25B0E2540();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v36 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for FacePlacement.Location(0);
  v7 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25B0E2750();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FaceButton();
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B0E3900();
  v34[1] = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v11 + 16))(v14, a1, v10);
  v34[0] = v10;
  v19 = a1;
  v20 = v39;
  v22 = *(v39 + 64);
  v21 = *(v39 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31890, &qword_25B0E7768);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25B0E7730;
  *(v23 + 32) = v21;
  v24 = sub_25B0C76AC(v19, v22);
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  *(v23 + 40) = v26;
  v27 = v36;
  MEMORY[0x25F85F060](v23);
  *v9 = 5;
  (*(v37 + 32))(&v9[*(v35 + 20)], v27, v38);
  v28 = *(v20 + 88);
  v29 = sub_25B0E2EF0();
  (*(v11 + 32))(v18, v14, v34[0]);
  sub_25B0C93FC(v9, &v18[v15[5]], type metadata accessor for FacePlacement.Location);
  v30 = &v18[v15[6]];
  *v30 = v28;
  *(v30 + 1) = 0;
  v30[16] = 1;
  v31 = &v18[v15[7]];
  *v31 = 0;
  *(v31 + 1) = 0;
  v31[16] = 1;
  v18[v15[8]] = 0;
  v18[v15[9]] = 0;
  v32 = &v18[v15[10]];
  *v32 = 0;
  *(v32 + 1) = 0;
  *&v18[v15[11]] = v29;
  v18[v15[12]] = 1;
  v18[v15[13]] = 0;
  sub_25B0C93FC(v18, v40, type metadata accessor for FaceButton);
}

unint64_t sub_25B0C8F14()
{
  result = qword_27FA32B30;
  if (!qword_27FA32B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32B28, &qword_25B0EA7F8);
    sub_25B0C8FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32B30);
  }

  return result;
}

unint64_t sub_25B0C8FA0()
{
  result = qword_27FA32B38;
  if (!qword_27FA32B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32B40, &qword_25B0EA800);
    sub_25B0C902C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32B38);
  }

  return result;
}

unint64_t sub_25B0C902C()
{
  result = qword_27FA32B48;
  if (!qword_27FA32B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32B50, &qword_25B0EA808);
    sub_25B058150(&qword_27FA32B58, &qword_27FA32B60, &qword_25B0EA810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32B48);
  }

  return result;
}

unint64_t sub_25B0C90E4()
{
  result = qword_27FA32B70;
  if (!qword_27FA32B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32B08, &qword_25B0EA7D8);
    sub_25B0C9170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32B70);
  }

  return result;
}

unint64_t sub_25B0C9170()
{
  result = qword_27FA32B78;
  if (!qword_27FA32B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32B00, &qword_25B0EA7D0);
    sub_25B0C91FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32B78);
  }

  return result;
}

unint64_t sub_25B0C91FC()
{
  result = qword_27FA32B80;
  if (!qword_27FA32B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32AF8, &qword_25B0EA7C8);
    sub_25B0C9288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32B80);
  }

  return result;
}

unint64_t sub_25B0C9288()
{
  result = qword_27FA32B88;
  if (!qword_27FA32B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32AF0, &qword_25B0EA7C0);
    sub_25B0C9464(&qword_27FA32B90, type metadata accessor for SingleFaceRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32B88);
  }

  return result;
}

uint64_t sub_25B0C938C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F68, &qword_25B0E91E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0C93FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25B0C9464(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25B0C94AC()
{
  result = qword_27FA32B98;
  if (!qword_27FA32B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32BA0, &qword_25B0EA818);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32B08, &qword_25B0EA7D8);
    sub_25B0C90E4();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32AD8, &qword_25B0EA7A8);
    sub_25B0E30C0();
    sub_25B058150(&qword_27FA32B68, &qword_27FA32AD8, &qword_25B0EA7A8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32B98);
  }

  return result;
}

uint64_t sub_25B0C9630@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25B0CBBBC(&qword_27FA31DC0, type metadata accessor for FontManager);
  sub_25B0E28D0();

  *a2 = *(v3 + 16);
}

uint64_t sub_25B0C96DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_25B0A5460(v4);
}

uint64_t sub_25B0C9708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>, double a6@<D0>)
{
  v17 = a1;
  v18 = a5;
  v10 = sub_25B0E2B80();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v11 + 16))(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v10);
  v13 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a6;
  (*(v11 + 32))(v14 + v13, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);

  v16 = v18;
  *v18 = sub_25B0CB47C;
  v16[1] = v14;
  return result;
}

uint64_t sub_25B0C98DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32[1] = a2;
  v40 = a1;
  v45 = a3;
  v43 = sub_25B0E2CF0();
  v41 = *(v43 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v37 = v4;
  v38 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_25B0E2A80();
  v42 = *(v44 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  v39 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32BA8, &qword_25B0EA8B8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v32 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32BB0, &qword_25B0EA8C0);
  v33 = *(v34 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x28223BE20](v34);
  v13 = v32 - v12;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32BB8, &qword_25B0EA8C8);
  v14 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v16 = v32 - v15;
  sub_25B0E3900();
  v35 = sub_25B0E38F0();
  sub_25B0E3850();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_25B0E30F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32BC0, &qword_25B0EA8D0);
  sub_25B058150(&qword_27FA32BC8, &qword_27FA32BC0, &qword_25B0EA8D0);
  sub_25B0E2A30();
  v18 = sub_25B0E33A0();
  v19 = sub_25B0E3110();
  v20 = &v10[*(v7 + 36)];
  *v20 = v18;
  v20[8] = v19;
  sub_25B0CB51C();
  sub_25B0E3320();
  sub_25B058448(v10, &qword_27FA32BA8, &qword_25B0EA8B8);
  sub_25B0E3590();
  sub_25B0E2D30();
  (*(v33 + 32))(v16, v13, v34);
  v21 = &v16[*(v36 + 36)];
  v22 = v51;
  *(v21 + 4) = v50;
  *(v21 + 5) = v22;
  *(v21 + 6) = v52;
  v23 = v47;
  *v21 = v46;
  *(v21 + 1) = v23;
  v24 = v49;
  *(v21 + 2) = v48;
  *(v21 + 3) = v24;
  v25 = v39;
  sub_25B0E2A90();
  v26 = v41;
  v27 = v38;
  v28 = v43;
  (*(v41 + 16))(v38, v40, v43);
  v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v30 = swift_allocObject();
  (*(v26 + 32))(v30 + v29, v27, v28);
  sub_25B0CB670();
  sub_25B0E3330();

  (*(v42 + 8))(v25, v44);
  sub_25B0433A0(v16);
}

uint64_t sub_25B0C9EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v18 = a4;
  v20 = a1;
  v10 = sub_25B0E2B80();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_25B0E3900();
  v21 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a5 = sub_25B0E2EF0();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v19 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C10, &qword_25B0EA8E8) + 44);
  v22 = a3;
  (*(v11 + 16))(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v10);
  v14 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v20;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a6;
  (*(v11 + 32))(v15 + v14, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);

  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A58, &qword_25B0EA650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C18, &qword_25B0EA8F0);
  sub_25B058150(&qword_27FA32A68, &qword_27FA32A58, &qword_25B0EA650);
  sub_25B0CB9C8();
  sub_25B0CBB68();
  sub_25B0E3500();
}

uint64_t sub_25B0CA1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v53 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C30, &qword_25B0EA8F8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v51 - v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C18, &qword_25B0EA8F0);
  v17 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v19 = v51 - v18;
  v20 = *(a1 + 48);
  v59[2] = *(a1 + 32);
  v59[3] = v20;
  v60 = *(a1 + 64);
  v21 = *(a1 + 16);
  v59[0] = *a1;
  v59[1] = v21;
  sub_25B0E3900();
  v51[1] = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v16 = sub_25B0E2F00();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C68, &qword_25B0EA910);
  sub_25B0CA5F8(v59, a2, a3, a4, a5, &v16[*(v22 + 44)], a7);
  v23 = sub_25B0E3590();
  v25 = v24;
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = &v16[*(v13 + 36)];
  *v26 = sub_25B0E2EF0();
  *(v26 + 1) = 0;
  v26[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C70, &qword_25B0EA918);
  sub_25B0CAB74(&v26[*(v27 + 44)]);
  v28 = sub_25B0E3140();
  sub_25B0E2A00();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C78, &qword_25B0EA920) + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = sub_25B0E2CC0();
  v39 = sub_25B0E3110();

  v40 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C80, &qword_25B0EA928) + 36)];
  *v40 = v38;
  v40[8] = v39;
  v41 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C50, &qword_25B0EA908) + 36)];
  *v41 = v23;
  v41[1] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32920, &qword_25B0EA508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25B0E7730;
  v43 = sub_25B0E3140();
  *(inited + 32) = v43;
  v44 = sub_25B0E3160();
  *(inited + 33) = v44;
  sub_25B0E3150();
  sub_25B0E3150();
  if (sub_25B0E3150() != v43)
  {
    sub_25B0E3150();
  }

  sub_25B0E3150();
  if (sub_25B0E3150() != v44)
  {
    sub_25B0E3150();
  }

  sub_25B0E2A00();
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = 0;
  v49 = &v19[*(v52 + 36)];
  sub_25B0E2F90();
  sub_25B0745E4(v16, v19, &qword_27FA32C30, &qword_25B0EA8F8);
  sub_25B0745E4(v19, v53, &qword_27FA32C18, &qword_25B0EA8F0);
}

uint64_t sub_25B0CA5F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v78 = a5;
  v79 = a4;
  v80 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C90, &qword_25B0EA938);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v83 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v81 = &v75 - v15;
  sub_25B0E3900();
  v82 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = *a1;
  v76 = a1[1];
  v77 = v16;
  *&v92[0] = v16;
  *(&v92[0] + 1) = v76;
  sub_25B04C9BC();

  v17 = sub_25B0E3210();
  v19 = v18;
  v21 = v20;
  *&v92[0] = a2;
  *(&v92[0] + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AC8, &qword_25B0EA6D0);
  sub_25B0E3450();
  v22 = *&v89[0];
  swift_getKeyPath();
  *&v92[0] = v22;
  sub_25B0CBBBC(&qword_27FA31DC0, type metadata accessor for FontManager);
  sub_25B0E28D0();

  v23 = *(v22 + 16);

  v24 = sub_25B0E31F0();
  v26 = v25;
  v28 = v27;
  v75 = a1;
  v30 = v29;

  sub_25B0B0ABC(v17, v19, v21 & 1);

  LOBYTE(v23) = sub_25B0E3120();
  sub_25B0E2A00();
  v86 = v28 & 1;
  v85 = 0;
  *&v92[0] = v24;
  *(&v92[0] + 1) = v26;
  LOBYTE(v92[1]) = v28 & 1;
  *(&v92[1] + 1) = v30;
  LOBYTE(v92[2]) = v23;
  *(&v92[2] + 1) = v31;
  *&v92[3] = v32;
  *(&v92[3] + 1) = v33;
  *&v92[4] = v34;
  BYTE8(v92[4]) = 0;
  strcpy(v89, "Gallery-Row-");
  BYTE13(v89[0]) = 0;
  HIWORD(v89[0]) = -5120;
  MEMORY[0x25F8602F0](v77, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F60, &qword_25B0E91E0);
  sub_25B0B01FC();
  v35 = v81;
  sub_25B0E3310();

  v87[2] = v92[2];
  v88[0] = v92[3];
  *(v88 + 9) = *(&v92[3] + 9);
  v87[0] = v92[0];
  v87[1] = v92[1];
  sub_25B058448(v87, &qword_27FA31F60, &qword_25B0E91E0);
  v36 = v75;
  sub_25B08CEB4(v75, v92);
  v37 = v79;
  sub_25B0CBC04(v79);
  v39 = v38;
  [v38 screenBounds];
  v41 = v40;
  v43 = v42;

  sub_25B0E2B70();
  v45 = (v44 - a7 * 3.0) / 2.7;
  sub_25B0CBC04(v37);
  v47 = v46;
  [v46 screenBounds];
  v49 = v48;

  v50 = v45 / v49;
  v51 = v41 * (v45 / v49);
  v52 = v43 * v50;
  sub_25B0CBC04(v37);
  v54 = v53;
  [v53 screenCornerRadius];
  v56 = v55;

  sub_25B0E2B70();
  v58 = (v57 - a7 * 3.0) / 2.7;
  sub_25B0CBC04(v37);
  v60 = v59;
  [v59 screenBounds];
  v62 = v61;

  v63 = *v36;
  *(&v84[1] + 7) = *(v36 + 16);
  v64 = *(v36 + 48);
  *(&v84[2] + 7) = *(v36 + 32);
  *(&v84[3] + 7) = v64;
  v65 = v56 * (v58 / v62);
  *(&v84[4] + 7) = *(v36 + 64);
  *(v84 + 7) = v63;
  v66 = v83;
  sub_25B0B00E0(v35, v83, &qword_27FA32C90, &qword_25B0EA938);
  v67 = v80;
  sub_25B0B00E0(v66, v80, &qword_27FA32C90, &qword_25B0EA938);
  v68 = (v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C98, &qword_25B0EA968) + 48));
  LOBYTE(v89[0]) = 3;
  *(v89 + 1) = v84[0];
  *(&v89[1] + 1) = v84[1];
  *(&v89[2] + 1) = v84[2];
  *(&v89[3] + 1) = v84[3];
  v89[4] = *(&v84[3] + 15);
  *&v90 = v51;
  *(&v90 + 1) = v52;
  *&v91 = v65;
  *(&v91 + 1) = a7;
  v69 = v89[1];
  *v68 = v89[0];
  v68[1] = v69;
  v70 = v89[2];
  v71 = v89[3];
  v72 = v91;
  v68[5] = v90;
  v68[6] = v72;
  v73 = v89[4];
  v68[3] = v71;
  v68[4] = v73;
  v68[2] = v70;
  sub_25B0C9344(v89, v92);
  sub_25B058448(v35, &qword_27FA32C90, &qword_25B0EA938);
  *(&v92[1] + 1) = v84[1];
  *(&v92[2] + 1) = v84[2];
  *(&v92[3] + 1) = v84[3];
  v92[4] = *(&v84[3] + 15);
  LOBYTE(v92[0]) = 3;
  *(v92 + 1) = v84[0];
  v93 = v51;
  v94 = v52;
  v95 = v65;
  v96 = a7;
  sub_25B0CBF50(v92);
  sub_25B058448(v66, &qword_27FA32C90, &qword_25B0EA938);
}

uint64_t sub_25B0CAB74@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AC0, &qword_25B0EA6C8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0E34E0();
  v9 = NTKCSeparatorColor();
  v10 = sub_25B0E3370();
  v11 = sub_25B0E3110();
  v12 = &v8[*(v2 + 36)];
  *v12 = v10;
  v12[8] = v11;
  sub_25B0B00E0(v8, v6, &qword_27FA32AC0, &qword_25B0EA6C8);
  sub_25B0B00E0(v6, a1, &qword_27FA32AC0, &qword_25B0EA6C8);
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C88, &qword_25B0EA930) + 48);
  *v13 = 0;
  *(v13 + 8) = 1;
  sub_25B058448(v8, &qword_27FA32AC0, &qword_25B0EA6C8);
  sub_25B058448(v6, &qword_27FA32AC0, &qword_25B0EA6C8);
}

uint64_t sub_25B0CAD38(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v39 = a2;
  v2 = sub_25B0E3630();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v2);
  v45 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B0E3650();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v5);
  v42 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_25B0E2CF0();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = v10;
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25B0E2AA0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_25B0E3670();
  v41 = *(v48 - 8);
  v16 = *(v41 + 64);
  v17 = MEMORY[0x28223BE20](v48);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - v20;
  sub_25B0E3900();
  v40 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0CB738();
  v35 = sub_25B0E3A70();
  sub_25B0E3660();
  v34 = v21;
  sub_25B0E3680();
  v41 = *(v41 + 8);
  (v41)(v19, v48);
  (*(v13 + 16))(&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v12);
  v22 = v37;
  (*(v8 + 16))(v11, v39, v37);
  v23 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v24 = (v14 + *(v8 + 80) + v23) & ~*(v8 + 80);
  v25 = swift_allocObject();
  (*(v13 + 32))(v25 + v23, v15, v12);
  (*(v8 + 32))(v25 + v24, v11, v22);
  aBlock[4] = sub_25B0CB784;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25B0BABA4;
  aBlock[3] = &block_descriptor_2;
  v26 = _Block_copy(aBlock);
  v27 = v42;
  sub_25B0E3640();
  v49 = MEMORY[0x277D84F90];
  sub_25B0CBBBC(&qword_27FA32BF8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C00, &qword_25B0EA8E0);
  sub_25B058150(&qword_27FA32C08, &qword_27FA32C00, &qword_25B0EA8E0);
  v28 = v45;
  v29 = v47;
  sub_25B0E3B50();
  v30 = v34;
  v31 = v35;
  MEMORY[0x25F8605C0](v34, v27, v28, v26);
  _Block_release(v26);

  (*(v46 + 8))(v28, v29);
  (*(v43 + 8))(v27, v44);
  (v41)(v30, v48);
}

uint64_t sub_25B0CB320()
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0E2A70();
}

uint64_t sub_25B0CB3D0@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = swift_allocObject();
  *(v7 + 2) = v3;
  *(v7 + 3) = v4;
  *(v7 + 4) = v5;
  *(v7 + 5) = v6;
  *a1 = sub_25B0CB46C;
  a1[1] = v7;
}

uint64_t sub_25B0CB47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(sub_25B0E2B80() - 8) + 80);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];

  return sub_25B0C98DC(a1, v6, a2);
}

unint64_t sub_25B0CB51C()
{
  result = qword_27FA32BD0;
  if (!qword_27FA32BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32BA8, &qword_25B0EA8B8);
    sub_25B058150(&qword_27FA32BD8, &qword_27FA32BE0, &qword_25B0EA8D8);
    sub_25B058150(&qword_27FA32140, &qword_27FA32148, &qword_25B0E96B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32BD0);
  }

  return result;
}

uint64_t sub_25B0CB600(uint64_t a1)
{
  v3 = *(sub_25B0E2CF0() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25B0CAD38(a1, v4);
}

unint64_t sub_25B0CB670()
{
  result = qword_27FA32BE8;
  if (!qword_27FA32BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32BB8, &qword_25B0EA8C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32BA8, &qword_25B0EA8B8);
    sub_25B0CB51C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32BE8);
  }

  return result;
}

unint64_t sub_25B0CB738()
{
  result = qword_27FA32BF0;
  if (!qword_27FA32BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA32BF0);
  }

  return result;
}

uint64_t sub_25B0CB784()
{
  v1 = *(sub_25B0E2AA0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_25B0E2CF0() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_25B0CB320();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_2Tm()
{
  v1 = sub_25B0E2B80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);

  v7 = *(v0 + 3);

  v8 = *(v0 + 4);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25B0CB93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_25B0E2B80() - 8);
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_25B0CA1C0(a1, v6, v7, v8, v10, a2, v9);
}

unint64_t sub_25B0CB9C8()
{
  result = qword_27FA32C20;
  if (!qword_27FA32C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32C18, &qword_25B0EA8F0);
    sub_25B0CBA84();
    sub_25B0CBBBC(&qword_27FA32C58, MEMORY[0x277CE0660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32C20);
  }

  return result;
}

unint64_t sub_25B0CBA84()
{
  result = qword_27FA32C28;
  if (!qword_27FA32C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32C30, &qword_25B0EA8F8);
    sub_25B058150(&qword_27FA32C38, &qword_27FA32C40, &qword_25B0EA900);
    sub_25B058150(&qword_27FA32C48, &qword_27FA32C50, &qword_25B0EA908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32C28);
  }

  return result;
}

unint64_t sub_25B0CBB68()
{
  result = qword_27FA32C60;
  if (!qword_27FA32C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32C60);
  }

  return result;
}

uint64_t sub_25B0CBBBC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25B0CBC04(uint64_t a1)
{
  v2 = sub_25B0E2750();
  v3 = *(v2 - 8);
  v31 = v2;
  v32 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v30 = &v26 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    v28 = v32 + 16;
    v29 = v32 + 8;
    v33 = sub_25B0E3900();
    v9 = (a1 + 88);
    while (1)
    {
      v10 = *(v9 - 6);
      v11 = *(v9 - 1);
      v12 = *v9;
      v13 = *(v9 - 4);
      v36 = *(v9 - 2);

      v35 = v11;

      v37 = sub_25B0E38F0();
      sub_25B0E3850();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (*(v12 + 16))
      {
        v14 = v32;
        v15 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v16 = *(v32 + 16);
        v17 = v30;
        v34 = v13;
        v18 = v31;
        v16(v30, v12 + v15, v31);
        v19 = sub_25B0E2730();
        v20 = *(v14 + 8);
        v20(v17, v18);
        v21 = [v19 device];

        if (v21)
        {
          break;
        }
      }

      v9 += 9;
      if (!--v8)
      {
        goto LABEL_11;
      }
    }

    if (*(v12 + 16))
    {
      v22 = v27;
      v23 = v31;
      v16(v27, v12 + v15, v31);
      v24 = sub_25B0E2730();
      v20(v22, v23);
      v25 = [v24 device];

      if (v25)
      {

        return;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

LABEL_11:
  if (![objc_opt_self() currentDevice])
  {
    goto LABEL_14;
  }
}

uint64_t sub_25B0CBFA4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25B0E29F0();
  if (v5)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_25B0CDAAC(&qword_27FA31DD8, type metadata accessor for GalleryManager);
  sub_25B0E28D0();

  v3 = *(v2 + 16);
  if (v3 && *(v3 + 16))
  {
    return 0;
  }

  else
  {
    return 0x1000000000000012;
  }
}

uint64_t CurrentGalleryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32CB0, &qword_25B0EA980);
  v2 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v4 = (&v42 - v3);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32CB8, &qword_25B0EA988);
  v5 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v7 = &v42 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32CC0, &qword_25B0EA990);
  v8 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v49 = &v42 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32CC8, &qword_25B0EA998);
  v10 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v12 = &v42 - v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v16 = v1[3];
  *v4 = sub_25B0E3590();
  v4[1] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32CD0, &qword_25B0EA9A0);
  sub_25B0CC560(v13, v14, v15, v16, (v4 + *(v18 + 44)));
  v19 = sub_25B0E33B0();
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32CD8, &qword_25B0EA9A8) + 36)) = v19;
  v44 = sub_25B0E3590();
  v43 = v20;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = v4 + *(v45 + 36);
  *v21 = sub_25B0E2EF0();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32CE0, &qword_25B0EA9B0);
  sub_25B0CCA08(v13, v14, v15, v16, &v21[*(v22 + 44)]);

  v23 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32CE8, &qword_25B0EA9B8) + 36)];
  v24 = v43;
  *v23 = v44;
  v23[1] = v24;
  sub_25B0E3590();
  sub_25B0E2D30();
  sub_25B0745E4(v4, v7, &qword_27FA32CB0, &qword_25B0EA980);
  v25 = &v7[*(v47 + 36)];
  v26 = v56;
  *(v25 + 4) = v55;
  *(v25 + 5) = v26;
  *(v25 + 6) = v57;
  v27 = v52;
  *v25 = v51;
  *(v25 + 1) = v27;
  v28 = v54;
  *(v25 + 2) = v53;
  *(v25 + 3) = v28;
  v29 = sub_25B0E33A0();
  v30 = sub_25B0E3110();
  v31 = v49;
  sub_25B0745E4(v7, v49, &qword_27FA32CB8, &qword_25B0EA988);
  v32 = v31 + *(v48 + 36);
  *v32 = v29;
  *(v32 + 8) = v30;
  v33 = *(v46 + 36);
  v34 = *MEMORY[0x277CDF3C0];
  v35 = sub_25B0E2A50();
  v36 = *(v35 - 8);
  (*(v36 + 104))(&v12[v33], v34, v35);
  (*(v36 + 56))(&v12[v33], 0, 1, v35);
  sub_25B0745E4(v31, v12, &qword_27FA32CC0, &qword_25B0EA990);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32CF0, &qword_25B0EA9C8);
  v38 = v50;
  v39 = (v50 + *(v37 + 36));
  v40 = v39 + *(sub_25B0E2BA0() + 20);
  sub_25B0E3920();
  *v39 = &unk_25B0EA9C0;
  v39[1] = 0;
  return sub_25B0745E4(v12, v38, &qword_27FA32CC8, &qword_25B0EA998);
}

uint64_t sub_25B0CC560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v51 = a4;
  v53 = a5;
  v8 = sub_25B0E2C10();
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  v14 = type metadata accessor for GalleryView();
  v49 = *(v14 - 8);
  v50 = v14;
  v15 = *(v49 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v46 = &v43 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32D70, &qword_25B0EAAE0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v43 - v25;
  sub_25B0E3900();
  v52 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = sub_25B0E33A0();
  v55 = a1;
  v56 = a2;
  v28 = v51;
  v57 = a3;
  v58 = v51;
  sub_25B0CBFA4();
  if (v29)
  {

    (*(v49 + 56))(v26, 1, 1, v50);
  }

  else
  {
    swift_getKeyPath();
    v55 = a2;
    sub_25B0CDAAC(&qword_27FA31DD8, type metadata accessor for GalleryManager);
    sub_25B0E28D0();

    v30 = MEMORY[0x277D84F90];
    if (*(a2 + 16))
    {
      v30 = *(a2 + 16);
    }

    v44 = v30;
    v31 = type metadata accessor for FontManager();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();

    v54 = sub_25B0A55B4();
    sub_25B0E3440();
    v34 = v56;
    *v18 = v55;
    v18[1] = v34;
    v18[2] = v44;
    v18[3] = a3;
    v18[4] = v28;
    v35 = v50;
    v36 = *(v50 + 28);
    sub_25B0E2C00();
    v38 = v47;
    v37 = v48;
    (*(v47 + 16))(v45, v13, v48);
    sub_25B0E3440();
    (*(v38 + 8))(v13, v37);
    v39 = v46;
    sub_25B0CDAF4(v18, v46);
    sub_25B0CDAF4(v39, v26);
    (*(v49 + 56))(v26, 0, 1, v35);
  }

  sub_25B0B00E0(v26, v24, &qword_27FA32D70, &qword_25B0EAAE0);
  v40 = v53;
  *v53 = v27;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32D78, &qword_25B0EAAE8);
  sub_25B0B00E0(v24, v40 + *(v41 + 48), &qword_27FA32D70, &qword_25B0EAAE0);

  sub_25B058448(v26, &qword_27FA32D70, &qword_25B0EAAE0);
  sub_25B058448(v24, &qword_27FA32D70, &qword_25B0EAAE0);
}

uint64_t sub_25B0CCA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32D50, &unk_25B0EAA90);
  v57 = *(v9 - 8);
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v9);
  v53 = &v45 - v11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA324F0, &qword_25B0E9DB0);
  v12 = *(v52 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v52);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32D58, &qword_25B0EAAA0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v56 = &v45 - v21;
  sub_25B0E3900();
  v55 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v69 = a1;
  v70 = a2;
  v71 = a3;
  v72 = v54;
  v22 = sub_25B0CBFA4();
  if (v23)
  {
    v24 = v23;
    v51 = v9;
    v54 = a5;
    v25 = v22;
    v26 = sub_25B0E2AD0();
    if (MEMORY[0x25F860BB0](v26))
    {
      v61 = 0x6C616E7265746E49;
      v62 = 0xEA0000000000203ALL;
      MEMORY[0x25F8602F0](v25, v24);

      v27 = v62;
      v50 = v61;
      v28 = sub_25B0E3110();
      LOBYTE(v61) = 0;
      v48 = 1;
      LOBYTE(v58) = 1;
      v49 = 0;
      v29 = v28;
      v30 = MEMORY[0x277D84F90];
    }

    else
    {

      v50 = 0;
      v27 = 0;
      v30 = 0;
      v48 = 0;
      v29 = 0;
      v49 = 0;
    }

    v46 = v29;
    v32 = v12[2];
    v33 = v16;
    v47 = v18;
    v34 = v18;
    v35 = v52;
    v32(v16, v34, v52);
    v36 = v53;
    v32(v53, v33, v35);
    v37 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32D60, &qword_25B0EAAA8) + 48));
    v38 = v50;
    *&v58 = v50;
    *(&v58 + 1) = v27;
    v39 = v49;
    *&v59 = v49;
    *(&v59 + 1) = v30;
    *v60 = v29;
    memset(&v60[8], 0, 32);
    v40 = v48;
    v60[40] = v48;
    v41 = v59;
    *v37 = v58;
    v37[1] = v41;
    v42 = *&v60[16];
    v37[2] = *v60;
    v37[3] = v42;
    *(v37 + 57) = *&v60[25];
    sub_25B0B00E0(&v58, &v61, &qword_27FA32D68, &qword_25B0EAAB0);
    v43 = v12[1];
    v43(v47, v35);
    v61 = v38;
    v62 = v27;
    v63 = v39;
    v64 = v30;
    v65 = v46;
    v66 = 0u;
    v67 = 0u;
    v68 = v40;
    sub_25B058448(&v61, &qword_27FA32D68, &qword_25B0EAAB0);
    v43(v33, v35);
    v31 = v56;
    sub_25B0745E4(v36, v56, &qword_27FA32D50, &unk_25B0EAA90);
    (*(v57 + 56))(v31, 0, 1, v51);
    a5 = v54;
  }

  else
  {
    v31 = v56;
    (*(v57 + 56))(v56, 1, 1, v9);
  }

  sub_25B0745E4(v31, a5, &qword_27FA32D58, &qword_25B0EAAA0);
}

uint64_t sub_25B0CCF5C()
{
  sub_25B0E3900();
  v0[2] = sub_25B0E38F0();
  v2 = sub_25B0E3850();
  v0[3] = v2;
  v0[4] = v1;

  return MEMORY[0x2822009F8](sub_25B0CCFF0, v2, v1);
}

id sub_25B0CCFF0()
{
  result = [objc_opt_self() currentDevice];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result isPaired];

  if (!v3)
  {
    v10 = v0[2];

    if (qword_27FA30D28 != -1)
    {
      swift_once();
    }

    v11 = sub_25B0E2970();
    __swift_project_value_buffer(v11, qword_27FA399E0);
    v12 = sub_25B0E2950();
    v13 = sub_25B0E3A50();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_20;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Skipping gallery refresh message - device is unpaired.";
    goto LABEL_19;
  }

  if (CLKIsBridge())
  {
    if (qword_27FA30D28 != -1)
    {
      swift_once();
    }

    v4 = sub_25B0E2970();
    v0[5] = __swift_project_value_buffer(v4, qword_27FA399E0);
    v5 = sub_25B0E2950();
    v6 = sub_25B0E3A50();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_25B03D000, v5, v6, "Sending update message to device…", v7, 2u);
      MEMORY[0x25F8613E0](v7, -1, -1);
    }

    sub_25B0E2790();
    v0[6] = sub_25B0E2770();
    v8 = *(MEMORY[0x277D2BE20] + 4);
    v19 = (*MEMORY[0x277D2BE20] + MEMORY[0x277D2BE20]);
    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    v9[1] = sub_25B0CD33C;

    return v19();
  }

  v16 = v0[2];

  if (qword_27FA30D28 != -1)
  {
    swift_once();
  }

  v17 = sub_25B0E2970();
  __swift_project_value_buffer(v17, qword_27FA399E0);
  v12 = sub_25B0E2950();
  v13 = sub_25B0E3A50();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Skipping gallery refresh message - not bridge.";
LABEL_19:
    _os_log_impl(&dword_25B03D000, v12, v13, v15, v14, 2u);
    MEMORY[0x25F8613E0](v14, -1, -1);
  }

LABEL_20:

  v18 = v0[1];

  return v18();
}

uint64_t sub_25B0CD33C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = v2[3];
    v5 = v2[4];
    v6 = sub_25B0CD4B8;
  }

  else
  {
    v7 = v2[6];

    v4 = v2[3];
    v5 = v2[4];
    v6 = sub_25B0CD458;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_25B0CD458()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25B0CD4B8()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];

  v5 = v1;
  v6 = sub_25B0E2950();
  v7 = sub_25B0E3A30();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[8];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_25B03D000, v6, v7, "Sending update message failed %@", v10, 0xCu);
    sub_25B058448(v11, &unk_27FA31850, &qword_25B0E74B0);
    MEMORY[0x25F8613E0](v11, -1, -1);
    MEMORY[0x25F8613E0](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

unint64_t sub_25B0CD658()
{
  result = qword_27FA32CF8;
  if (!qword_27FA32CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32CF0, &qword_25B0EA9C8);
    sub_25B0CD714();
    sub_25B0CDAAC(&qword_27FA30DB8, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32CF8);
  }

  return result;
}

unint64_t sub_25B0CD714()
{
  result = qword_27FA32D00;
  if (!qword_27FA32D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32CC8, &qword_25B0EA998);
    sub_25B0CD7CC();
    sub_25B058150(&qword_27FA32D40, &qword_27FA32D48, &unk_25B0EAA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32D00);
  }

  return result;
}

unint64_t sub_25B0CD7CC()
{
  result = qword_27FA32D08;
  if (!qword_27FA32D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32CC0, &qword_25B0EA990);
    sub_25B0CD884();
    sub_25B058150(&qword_27FA32140, &qword_27FA32148, &qword_25B0E96B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32D08);
  }

  return result;
}

unint64_t sub_25B0CD884()
{
  result = qword_27FA32D10;
  if (!qword_27FA32D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32CB8, &qword_25B0EA988);
    sub_25B0CD910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32D10);
  }

  return result;
}

unint64_t sub_25B0CD910()
{
  result = qword_27FA32D18;
  if (!qword_27FA32D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32CB0, &qword_25B0EA980);
    sub_25B0CD9C8();
    sub_25B058150(&qword_27FA32D38, &qword_27FA32CE8, &qword_25B0EA9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32D18);
  }

  return result;
}

unint64_t sub_25B0CD9C8()
{
  result = qword_27FA32D20;
  if (!qword_27FA32D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32CD8, &qword_25B0EA9A8);
    sub_25B058150(&qword_27FA32D28, &qword_27FA32D30, &qword_25B0EAA78);
    sub_25B058150(&qword_27FA31EB8, &qword_27FA31EC0, &unk_25B0EA2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32D20);
  }

  return result;
}

uint64_t sub_25B0CDAAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25B0CDAF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GalleryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0CDB58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25B0CDBB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for GalleryView()
{
  result = qword_27FA32D88;
  if (!qword_27FA32D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25B0CDC88()
{
  sub_25B0CDDC4(319, &qword_27FA32A18, type metadata accessor for FontManager);
  if (v0 <= 0x3F)
  {
    sub_25B0CDD74();
    if (v1 <= 0x3F)
    {
      sub_25B0B0F2C();
      if (v2 <= 0x3F)
      {
        sub_25B0CDDC4(319, &qword_27FA32D98, MEMORY[0x277CDD968]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25B0CDD74()
{
  if (!qword_27FA32A40)
  {
    v0 = sub_25B0E3840();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA32A40);
    }
  }
}

void sub_25B0CDDC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25B0E3480();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25B0CDE34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31DD0, &qword_25B0E8DB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v35 - v3;
  v5 = sub_25B0E2750();
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v5);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 16);
  v42 = *(v9 + 16);
  if (v42)
  {
    v10 = 0;
    v11 = v9 + 32;
    v40 = "NanoFaceGallery.FaceObserver";
    v35 = v7 + 16;
    v39 = (v7 + 56);
    v38 = (v7 + 48);
    v36 = v7;
    v37 = (v7 + 32);
    v12 = MEMORY[0x277D84F90];
    v41 = v5;
    while (1)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);

        __break(1u);
        return result;
      }

      v44 = v12;
      v13 = v4;
      v14 = v9;
      v46[0] = *v11;
      v15 = *(v11 + 16);
      v16 = *(v11 + 32);
      v17 = *(v11 + 48);
      v48 = *(v11 + 64);
      v46[2] = v16;
      v47 = v17;
      v46[1] = v15;
      sub_25B0E3900();
      sub_25B08CEB4(v46, v45);
      sub_25B0E38F0();
      sub_25B0E3850();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v18 = v46[0];
      v19 = sub_25B0E3730();
      v20 = sub_25B0E3730();
      v21 = NTKCompanionClockFaceLocalizedString();

      v22 = sub_25B0E3740();
      v24 = v23;

      if (v18 == __PAIR128__(v24, v22))
      {
      }

      else
      {
        v25 = sub_25B0E3E30();

        if ((v25 & 1) == 0)
        {
          v9 = v14;
          v12 = v44;
          if (*(*(&v47 + 1) + 16))
          {
            v4 = v13;
            v30 = v13;
            v5 = v41;
            (*(v36 + 16))(v30, *(&v47 + 1) + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v41);
            v26 = 0;
          }

          else
          {
            v26 = 1;
            v4 = v13;
            v5 = v41;
          }

          goto LABEL_12;
        }
      }

      v26 = 1;
      v9 = v14;
      v4 = v13;
      v5 = v41;
      v12 = v44;
LABEL_12:
      sub_25B08CF10(v46);
      (*v39)(v4, v26, 1, v5);

      if ((*v38)(v4, 1, v5) == 1)
      {
        sub_25B058448(v4, &qword_27FA31DD0, &qword_25B0E8DB0);
      }

      else
      {
        v27 = *v37;
        (*v37)(v43, v4, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_25B089C98(0, v12[2] + 1, 1, v12);
        }

        v29 = v12[2];
        v28 = v12[3];
        if (v29 >= v28 >> 1)
        {
          v12 = sub_25B089C98(v28 > 1, v29 + 1, 1, v12);
        }

        v12[2] = v29 + 1;
        v27(v12 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v29, v43, v5);
      }

      ++v10;
      v11 += 72;
      if (v42 == v10)
      {
        goto LABEL_22;
      }
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_22:
  *&v46[0] = v12;

  sub_25B0D2218(v46);

  v31 = *&v46[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318F8, &unk_25B0E94D0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_25B0E7720;
  v33 = sub_25B0D4108(MEMORY[0x277D84F90]);
  *(v32 + 32) = 0x63746157206C6C41;
  *(v32 + 40) = 0xEF73656361462068;
  *(v32 + 48) = 0u;
  *(v32 + 64) = 0u;
  *(v32 + 80) = v33;
  *(v32 + 88) = v31;
  *(v32 + 96) = 0;
  return v32;
}

BOOL sub_25B0CE3C0()
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_25B0E2730();
  v1 = [v0 name];

  if (v1)
  {
    sub_25B0E3740();

    v2 = sub_25B0E2730();
    v3 = [v2 name];

    if (v3)
    {
      sub_25B0E3740();

      sub_25B04C9BC();
      v4 = sub_25B0E3B20();

      return v4 == -1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_25B0CE558@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v4 = sub_25B0E24C0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_25B0E22E0();
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_25B0E3710();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_25B0E22F0();
  v56 = *(v13 - 8);
  v57 = v13;
  v14 = *(v56 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v55 = &v49[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32E10, &qword_25B0EAC28);
  v20 = *(*(v19 - 1) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v49[-v21];
  v63 = a1[10];
  v50 = (*a1 > 0x14uLL) | (0xDB7BDu >> *a1);
  v23 = *(v2 + 32);
  v51 = *(v2 + 24);
  *&v22[v19[12]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A48, &qword_25B0EA620);
  swift_storeEnumTagMultiPayload();
  v24 = type metadata accessor for FontManager();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_25B0D4480(&v63, v61);

  *&v59 = sub_25B0A55B4();
  sub_25B0E3440();
  v27 = *(&v61[0] + 1);
  *v22 = *&v61[0];
  *(v22 + 1) = v27;
  *&v59 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A28, qword_25B0EA5B8);
  sub_25B0E3440();
  v28 = *(&v61[0] + 1);
  *(v22 + 2) = *&v61[0];
  *(v22 + 3) = v28;
  type metadata accessor for CGRect(0);
  v59 = 0u;
  v60 = 0u;
  sub_25B0E3440();
  v29 = v62;
  v30 = v61[1];
  *(v22 + 2) = v61[0];
  *(v22 + 3) = v30;
  *(v22 + 8) = v29;
  v31 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v32 = sub_25B0E3730();
  [v31 initWithSuiteName_];

  *(v22 + 9) = sub_25B0E29E0();
  v22[v19[13]] = 5;
  *&v22[v19[14]] = v63;
  v22[v19[15]] = 0;
  v22[v19[16]] = v50 & 1;
  v33 = &v22[v19[17]];
  v34 = a1[1];
  v35 = a1[2];
  v36 = a1[6];
  *v33 = a1[5];
  v33[1] = v36;
  v37 = &v22[v19[18]];
  *v37 = v51;
  v37[1] = v23;

  sub_25B0E3720();
  if (qword_27FA30D20 != -1)
  {
    swift_once();
  }

  v38 = v53;
  v39 = __swift_project_value_buffer(v53, qword_27FA399C8);
  (*(v52 + 16))(v10, v39, v38);
  sub_25B0E24B0();
  v40 = v55;
  sub_25B0E2300();
  v42 = v56;
  v41 = v57;
  (*(v56 + 16))(v17, v40, v57);
  v43 = sub_25B0E3200();
  v45 = v44;
  v47 = v46;
  sub_25B058150(&qword_27FA32E18, &qword_27FA32E10, &qword_25B0EAC28);
  sub_25B0E3290();
  sub_25B0B0ABC(v43, v45, v47 & 1);

  (*(v42 + 8))(v40, v41);
  return sub_25B058448(v22, &qword_27FA32E10, &qword_25B0EAC28);
}

uint64_t sub_25B0CEB0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA30DC0, &qword_25B0E5070);
  v57 = *(v58 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v58);
  v5 = &v50 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32DA0, &qword_25B0EABD8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32DA8, &qword_25B0EABE0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32DB0, &qword_25B0EABE8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = type metadata accessor for GalleryView();
  v18 = *(v17 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32D80, &qword_25B0EAB20);
  sub_25B0E3470();
  v60 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32DB8, &qword_25B0EABF0);
  sub_25B0D19FC();
  sub_25B0E2CB0();
  v19 = sub_25B0E33A0();
  v20 = sub_25B0E3110();
  v21 = &v14[*(v11 + 44)];
  *v21 = v19;
  v21[8] = v20;
  sub_25B0E3590();
  sub_25B0E2D30();
  sub_25B0745E4(v14, v9, &qword_27FA32DA8, &qword_25B0EABE0);
  v22 = &v9[*(v6 + 36)];
  v23 = v69;
  *(v22 + 4) = v68;
  *(v22 + 5) = v23;
  *(v22 + 6) = v70;
  v24 = v65;
  *v22 = v64;
  *(v22 + 1) = v24;
  v25 = v67;
  *(v22 + 2) = v66;
  *(v22 + 3) = v25;
  sub_25B0D1E3C();
  v56 = v5;
  sub_25B0E3320();
  v26 = sub_25B043744(v9);
  v55 = &v50;
  v27 = *(v17 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_25B0D1FAC(v2, &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25B0E3900();
  v29 = sub_25B0E38F0();
  v30 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v31 = swift_allocObject();
  v32 = MEMORY[0x277D85700];
  *(v31 + 16) = v29;
  *(v31 + 24) = v32;
  sub_25B0CDAF4(&v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
  v33 = sub_25B0E3940();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = &v50 - v36;
  sub_25B0E3920();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v53 = sub_25B0E2C50();
    v54 = &v50;
    v52 = *(v53 - 8);
    v38 = *(v52 + 64);
    MEMORY[0x28223BE20](v53);
    v51 = &v50 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_25B0E3BC0();

    v62 = 0xD00000000000002ELL;
    v63 = 0x800000025B0EC730;
    v61 = 140;
    v40 = sub_25B0E3E20();
    MEMORY[0x25F8602F0](v40);

    MEMORY[0x28223BE20](v41);
    (*(v34 + 16))(&v50 - v36, v37, v33);
    v42 = v51;
    sub_25B0E2C40();
    (*(v34 + 8))(v37, v33);
    v43 = v59;
    (*(v57 + 32))(v59, v56, v58);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA30DC8, &qword_25B0E5078);
    return (*(v52 + 32))(v43 + *(v44 + 36), v42, v53);
  }

  else
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA30DD0, &qword_25B0E5080);
    v47 = v59;
    v48 = (v59 + *(v46 + 36));
    v49 = sub_25B0E2BA0();
    (*(v34 + 32))(&v48[*(v49 + 20)], &v50 - v36, v33);
    *v48 = &unk_25B0EAC48;
    *(v48 + 1) = v31;
    return (*(v57 + 32))(v47, v56, v58);
  }
}

uint64_t sub_25B0CF26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a1;
  v149 = a2;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32E20, &qword_25B0EAC30);
  v132 = *(v152 - 8);
  v2 = *(v132 + 64);
  MEMORY[0x28223BE20](v152);
  v131 = (&v124 - v3);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32E50, &qword_25B0EAC50);
  v138 = *(v153 - 8);
  Kind = v138[4].Kind;
  MEMORY[0x28223BE20](v153);
  v141 = &v124 - v5;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32E58, &qword_25B0EAC58);
  v6 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v151 = &v124 - v7;
  v8 = type metadata accessor for GalleryView();
  v129 = *(v8 - 8);
  v9 = *(v129 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v140 = v10;
  v137 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25B0E24C0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v126 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25B0E22E0();
  v124 = *(v14 - 8);
  v15 = *(v124 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25B0E3710();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v125 = sub_25B0E22F0();
  v20 = *(v125 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v125);
  v24 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v124 - v25;
  v150 = type metadata accessor for CuratedGalleryView();
  v27 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v29 = (&v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32DE0, &qword_25B0EAC10);
  v127 = *(v142 - 8);
  v30 = *(v127 + 64);
  MEMORY[0x28223BE20](v142);
  v139 = (&v124 - v31);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32DD8, &qword_25B0EAC08);
  v130 = *(v143 - 8);
  v32 = *(v130 + 64);
  MEMORY[0x28223BE20](v143);
  v128 = &v124 - v33;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32DC8, &qword_25B0EABF8);
  v134 = *(v144 - 8);
  v34 = *(v134 + 64);
  MEMORY[0x28223BE20](v144);
  v133 = &v124 - v35;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32E60, &qword_25B0EAC60);
  v136 = *(v148 - 8);
  v36 = *(v136 + 64);
  MEMORY[0x28223BE20](v148);
  v135 = &v124 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32DB8, &qword_25B0EABF0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v146 = &v124 - v40;
  sub_25B0E3900();
  v145 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v41 = [objc_opt_self() currentDevice];
  v42 = NTKShowGalleryLiteUI();

  v43 = *(v154 + 16);
  if (v42)
  {
    v44 = v154;
    v45 = *(v154 + 16);

    v47 = sub_25B0DBB48(v46);
    v49 = *(v44 + 24);
    v48 = *(v44 + 32);
    *v29 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32070, &qword_25B0E9490);
    swift_storeEnumTagMultiPayload();
    v50 = v150;
    *(v29 + *(v150 + 20)) = v47;
    v51 = (v29 + *(v50 + 24));
    *v51 = v49;
    v51[1] = v48;

    sub_25B0E3720();
    if (qword_27FA30D20 != -1)
    {
      swift_once();
    }

    v52 = __swift_project_value_buffer(v14, qword_27FA399C8);
    (*(v124 + 16))(v17, v52, v14);
    sub_25B0E24B0();
    v53 = v26;
    sub_25B0E2300();
    v54 = v26;
    v55 = v125;
    (*(v20 + 16))(v24, v54, v125);
    v56 = sub_25B0E3200();
    v58 = v57;
    v60 = v59;
    v138 = sub_25B0D20EC(&qword_27FA32DF0, type metadata accessor for CuratedGalleryView);
    v61 = v150;
    sub_25B0E3290();
    sub_25B0B0ABC(v56, v58, v60 & 1);

    (*(v20 + 8))(v53, v55);
    sub_25B0D4200(v29);
    v62 = v137;
    sub_25B0D1FAC(v154, v137);
    v141 = *(v129 + 80);
    v63 = (v141 + 16) & ~v141;
    v132 = v63;
    v64 = swift_allocObject();
    sub_25B0CDAF4(v62, v64 + v63);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32DE8, &qword_25B0EAC18);
    v155 = v61;
    v156 = v138;
    v150 = MEMORY[0x277CDE888];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v67 = sub_25B0B3F0C();
    v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DF8, &qword_25B0EAC20);
    v138 = &unk_25B0EA5D0;
    v69 = sub_25B058150(&qword_27FA32E00, &qword_27FA32DF8, &qword_25B0EAC20);
    v155 = v68;
    v156 = v69;
    v70 = swift_getOpaqueTypeConformance2();
    v71 = v128;
    v72 = v142;
    v73 = v139;
    sub_25B0E3300();

    (*(v127 + 8))(v73, v72);
    v74 = sub_25B0E2750();
    v155 = v72;
    v156 = &type metadata for AllFacesLink;
    v157 = v65;
    v158 = OpaqueTypeConformance2;
    v159 = v67;
    v160 = v70;
    v129 = MEMORY[0x277CDEB90];
    v75 = swift_getOpaqueTypeConformance2();
    v76 = sub_25B0D20EC(&qword_27FA312D0, MEMORY[0x277D2BE00]);
    v77 = sub_25B0D1D94();
    v142 = v77;
    v78 = v133;
    v79 = v74;
    v80 = v143;
    v81 = v79;
    v139 = v79;
    v131 = v76;
    sub_25B0E3300();
    (*(v130 + 8))(v71, v80);
    sub_25B0D1FAC(v154, v62);
    v82 = v132;
    v83 = swift_allocObject();
    sub_25B0CDAF4(v62, v83 + v82);
    v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32DD0, &qword_25B0EAC00);
    v155 = v80;
    v156 = v81;
    v157 = &type metadata for SharableFaceDetailView;
    v158 = v75;
    v159 = v76;
    v160 = v77;
    v84 = swift_getOpaqueTypeConformance2();
    v85 = sub_25B0AFC9C();
    v86 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32E10, &qword_25B0EAC28);
    v87 = sub_25B058150(&qword_27FA32E18, &qword_27FA32E10, &qword_25B0EAC28);
    v155 = v86;
    v156 = v87;
    v123 = swift_getOpaqueTypeConformance2();
    v88 = v135;
    v89 = v144;
    v90 = v154;
    v91 = v84;
    sub_25B0E3300();

    (*(v134 + 8))(v78, v89);
    v92 = v136;
    v93 = v148;
    (*(v136 + 16))(v151, v88, v148);
    swift_storeEnumTagMultiPayload();
    v155 = v89;
    v156 = &type metadata for CuratedGallery.CuratedRow;
    v157 = v90;
    v158 = v91;
    v159 = v85;
    v160 = v123;
    swift_getOpaqueTypeConformance2();
    v94 = sub_25B0D1DE8();
    v155 = &type metadata for GalleryList;
    v156 = v94;
    v95 = swift_getOpaqueTypeConformance2();
    v155 = v152;
    v156 = v139;
    v157 = &type metadata for SharableFaceDetailView;
    v158 = v95;
    v159 = v131;
    v160 = v142;
    swift_getOpaqueTypeConformance2();
    v96 = v146;
    sub_25B0E2F30();
    (*(v92 + 8))(v88, v93);
  }

  else
  {
    v97 = type metadata accessor for FontManager();
    v98 = *(v97 + 48);
    v99 = *(v97 + 52);
    swift_allocObject();

    v161 = sub_25B0A55B4();
    sub_25B0E3440();
    v157 = v43;
    v158 = 0x4034000000000000;
    sub_25B0E2EB0();
    v100 = sub_25B0D1DE8();
    v101 = v131;
    sub_25B0E3280();

    v102 = sub_25B0E2750();
    v155 = &type metadata for GalleryList;
    v156 = v100;
    v154 = swift_getOpaqueTypeConformance2();
    v103 = sub_25B0D20EC(&qword_27FA312D0, MEMORY[0x277D2BE00]);
    v140 = sub_25B0D1D94();
    v104 = v141;
    v105 = v152;
    v106 = v103;
    v139 = v103;
    sub_25B0E3300();
    (*(v132 + 8))(v101, v105);
    (v138[1].Kind)(v151, v104, v153);
    swift_storeEnumTagMultiPayload();
    v147 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DD0, &qword_25B0EAC00);
    v107 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DE8, &qword_25B0EAC18);
    v108 = sub_25B0D20EC(&qword_27FA32DF0, type metadata accessor for CuratedGalleryView);
    v155 = v150;
    v156 = v108;
    v109 = swift_getOpaqueTypeConformance2();
    v110 = sub_25B0B3F0C();
    v111 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DF8, &qword_25B0EAC20);
    v112 = sub_25B058150(&qword_27FA32E00, &qword_27FA32DF8, &qword_25B0EAC20);
    v155 = v111;
    v156 = v112;
    v113 = swift_getOpaqueTypeConformance2();
    v155 = v142;
    v156 = &type metadata for AllFacesLink;
    v157 = v107;
    v158 = v109;
    v159 = v110;
    v160 = v113;
    v114 = swift_getOpaqueTypeConformance2();
    v155 = v143;
    v156 = v102;
    v157 = &type metadata for SharableFaceDetailView;
    v158 = v114;
    v159 = v106;
    v115 = v140;
    v160 = v140;
    v116 = swift_getOpaqueTypeConformance2();
    v117 = sub_25B0AFC9C();
    v118 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32E10, &qword_25B0EAC28);
    v119 = sub_25B058150(&qword_27FA32E18, &qword_27FA32E10, &qword_25B0EAC28);
    v155 = v118;
    v156 = v119;
    v120 = swift_getOpaqueTypeConformance2();
    v155 = v144;
    v156 = &type metadata for CuratedGallery.CuratedRow;
    v157 = v147;
    v158 = v116;
    v159 = v117;
    v160 = v120;
    swift_getOpaqueTypeConformance2();
    v155 = v152;
    v156 = v102;
    v157 = &type metadata for SharableFaceDetailView;
    v158 = v154;
    v159 = v139;
    v160 = v115;
    swift_getOpaqueTypeConformance2();
    v96 = v146;
    v121 = v153;
    sub_25B0E2F30();
    (v138->Description)(v141, v121);
  }

  sub_25B0745E4(v96, v149, &qword_27FA32DB8, &qword_25B0EABF0);
}

uint64_t sub_25B0D05C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_25B0E24C0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_25B0E22E0();
  v44 = *(v46 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25B0E3710();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = sub_25B0E22F0();
  v47 = *(v49 - 8);
  v10 = *(v47 + 64);
  v11 = MEMORY[0x28223BE20](v49);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32DF8, &qword_25B0EAC20);
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v43 - v18;
  sub_25B0E3900();
  v43[1] = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = sub_25B0CDE34();
  v21 = *(a1 + 24);
  v22 = *(a1 + 32);
  v43[0] = v21;
  *&v19[v16[12]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A48, &qword_25B0EA620);
  swift_storeEnumTagMultiPayload();
  v23 = type metadata accessor for FontManager();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();

  *&v51 = sub_25B0A55B4();
  sub_25B0E3440();
  v26 = *(&v53 + 1);
  *v19 = v53;
  *(v19 + 1) = v26;
  *&v51 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A28, qword_25B0EA5B8);
  sub_25B0E3440();
  v27 = *(&v53 + 1);
  *(v19 + 2) = v53;
  *(v19 + 3) = v27;
  type metadata accessor for CGRect(0);
  v51 = 0u;
  v52 = 0u;
  sub_25B0E3440();
  v28 = v55;
  v29 = v54;
  *(v19 + 2) = v53;
  *(v19 + 3) = v29;
  *(v19 + 8) = v28;
  v30 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v31 = sub_25B0E3730();
  [v30 initWithSuiteName_];

  *(v19 + 9) = sub_25B0E29E0();
  v19[v16[13]] = 4;
  *&v19[v16[14]] = v20;
  v19[v16[15]] = 1;
  v19[v16[16]] = 1;
  v32 = &v19[v16[18]];
  *v32 = v43[0];
  *(v32 + 1) = v22;
  sub_25B0E3720();
  if (qword_27FA30D20 != -1)
  {
    swift_once();
  }

  v33 = v46;
  v34 = __swift_project_value_buffer(v46, qword_27FA399C8);
  (*(v44 + 16))(v45, v34, v33);
  sub_25B0E24B0();
  sub_25B0E2300();
  v35 = v47;
  v36 = v49;
  (*(v47 + 16))(v13, v15, v49);
  v37 = sub_25B0E3200();
  v39 = v38;
  v41 = v40;
  sub_25B058150(&qword_27FA32E00, &qword_27FA32DF8, &qword_25B0EAC20);
  sub_25B0E3290();
  sub_25B0B0ABC(v37, v39, v41 & 1);

  (*(v35 + 8))(v15, v36);
  sub_25B058448(v19, &qword_27FA32DF8, &qword_25B0EAC20);
}

uint64_t sub_25B0D0BB4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a1[5];
  v7[4] = a1[4];
  v7[5] = v4;
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0CE558(v7, a2);
}

void sub_25B0D0C90(uint64_t a1@<X8>)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_25B0E2730();
  v3 = [v2 deepCopy];

  if (v3)
  {
    sub_25B0E3440();
    sub_25B0E3440();

    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25B0D0DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F30, &unk_25B0E8AD8) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v5 = sub_25B0E3A90();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = sub_25B0E3900();
  v3[9] = sub_25B0E38F0();
  v9 = sub_25B0E3850();
  v3[10] = v9;
  v3[11] = v8;

  return MEMORY[0x2822009F8](sub_25B0D0EE0, v9, v8);
}

uint64_t sub_25B0D0EE0()
{
  v1 = v0[7];
  v2 = [objc_opt_self() defaultCenter];
  v3 = *MEMORY[0x277D2BE98];
  sub_25B0E3AA0();

  sub_25B0E3A80();
  v4 = v0[8];
  v0[12] = sub_25B0E38F0();
  v5 = sub_25B0D20EC(&qword_27FA31D58, MEMORY[0x277CC9D68]);
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_25B0D1028;
  v8 = v0[7];
  v9 = v0[4];
  v10 = v0[5];

  return MEMORY[0x282200308](v9, v10, v5);
}

uint64_t sub_25B0D1028()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_25B0E3850();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_25B0D1440;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_25B0E3850();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_25B0D11C0;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

uint64_t sub_25B0D11C0()
{
  v1 = v0[12];

  v2 = v0[10];
  v3 = v0[11];

  return MEMORY[0x2822009F8](sub_25B0D1224, v2, v3);
}

uint64_t sub_25B0D1224()
{
  v1 = v0[4];
  v2 = sub_25B0E22B0();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[9];
    (*(v0[6] + 8))(v0[7], v0[5]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[14];
    v7 = v0[3];
    *(swift_task_alloc() + 16) = v7;
    sub_25B0E35B0();
    sub_25B0E2BB0();

    sub_25B058448(v1, &unk_27FA32F30, &unk_25B0E8AD8);
    v8 = v0[8];
    v0[12] = sub_25B0E38F0();
    v9 = sub_25B0D20EC(&qword_27FA31D58, MEMORY[0x277CC9D68]);
    v10 = *(MEMORY[0x277D856D0] + 4);
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_25B0D1028;
    v12 = v0[7];
    v13 = v0[4];
    v14 = v0[5];

    return MEMORY[0x282200308](v13, v14, v9);
  }
}

uint64_t sub_25B0D1440()
{
  *(v0 + 16) = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F40, &unk_25B0E6060);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_25B0D14CC()
{
  v0 = sub_25B0E2C10();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0E2C00();
  v8 = *(type metadata accessor for GalleryView() + 28);
  (*(v1 + 16))(v5, v7, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32D80, &qword_25B0EAB20);
  sub_25B0E3460();
  (*(v1 + 8))(v7, v0);
}

id sub_25B0D16A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25B0E24C0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_25B0E22E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25B0E3710();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_25B0E22F0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);

  sub_25B0E3720();
  if (qword_27FA30D20 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_27FA399C8);
  (*(v5 + 16))(v8, v13, v4);
  sub_25B0E24B0();
  sub_25B0E2300();
  v14 = sub_25B0E3200();
  v16 = v15;
  v18 = v17;
  sub_25B0E3170();
  v19 = sub_25B0E31F0();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_25B0B0ABC(v14, v16, v18 & 1);

  sub_25B0E35A0();
  sub_25B0E2D30();
  v31 = v23 & 1;
  result = BPSDetailTextColor();
  if (result)
  {
    result = sub_25B0E3370();
    *a1 = v19;
    *(a1 + 8) = v21;
    *(a1 + 16) = v23 & 1;
    *(a1 + 24) = v25;
    v27 = v30[5];
    *(a1 + 96) = v30[4];
    *(a1 + 112) = v27;
    *(a1 + 128) = v30[6];
    v28 = v30[1];
    *(a1 + 32) = v30[0];
    *(a1 + 48) = v28;
    v29 = v30[3];
    *(a1 + 64) = v30[2];
    *(a1 + 80) = v29;
    *(a1 + 144) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_25B0D19EC@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_25B0D16A4(a1);
}

unint64_t sub_25B0D19FC()
{
  result = qword_27FA32DC0;
  if (!qword_27FA32DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DB8, &qword_25B0EABF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DC8, &qword_25B0EABF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DD0, &qword_25B0EAC00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DD8, &qword_25B0EAC08);
    sub_25B0E2750();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DE0, &qword_25B0EAC10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DE8, &qword_25B0EAC18);
    type metadata accessor for CuratedGalleryView();
    sub_25B0D20EC(&qword_27FA32DF0, type metadata accessor for CuratedGalleryView);
    swift_getOpaqueTypeConformance2();
    sub_25B0B3F0C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DF8, &qword_25B0EAC20);
    sub_25B058150(&qword_27FA32E00, &qword_27FA32DF8, &qword_25B0EAC20);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_25B0D20EC(&qword_27FA312D0, MEMORY[0x277D2BE00]);
    sub_25B0D1D94();
    swift_getOpaqueTypeConformance2();
    sub_25B0AFC9C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32E10, &qword_25B0EAC28);
    sub_25B058150(&qword_27FA32E18, &qword_27FA32E10, &qword_25B0EAC28);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32E20, &qword_25B0EAC30);
    sub_25B0D1DE8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32DC0);
  }

  return result;
}

unint64_t sub_25B0D1D94()
{
  result = qword_27FA32E08;
  if (!qword_27FA32E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32E08);
  }

  return result;
}

unint64_t sub_25B0D1DE8()
{
  result = qword_27FA32E28;
  if (!qword_27FA32E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32E28);
  }

  return result;
}

unint64_t sub_25B0D1E3C()
{
  result = qword_27FA32E30;
  if (!qword_27FA32E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DA0, &qword_25B0EABD8);
    sub_25B0D1EC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32E30);
  }

  return result;
}

unint64_t sub_25B0D1EC8()
{
  result = qword_27FA32E38;
  if (!qword_27FA32E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DA8, &qword_25B0EABE0);
    sub_25B058150(&qword_27FA32E40, &qword_27FA32E48, &qword_25B0EAC38);
    sub_25B058150(&qword_27FA32140, &qword_27FA32148, &qword_25B0E96B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32E38);
  }

  return result;
}

uint64_t sub_25B0D1FAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GalleryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0D2010()
{
  v2 = *(type metadata accessor for GalleryView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25B0498DC;

  return sub_25B0D0DB0(v4, v5, v0 + v3);
}

uint64_t sub_25B0D20EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25B0D2150(uint64_t a1)
{
  v2 = sub_25B0E2C80();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25B0E2DA0();
}

uint64_t sub_25B0D2218(void **a1)
{
  v2 = *(sub_25B0E2750() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25B0D40B8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25B0D22C0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25B0D22C0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25B0E3E10();
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
        sub_25B0E2750();
        v6 = sub_25B0E3820();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25B0E2750() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25B0D27FC(v8, v9, a1, v4);
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
    return sub_25B0D23EC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25B0D23EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_25B0E2750();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v58 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  result = MEMORY[0x28223BE20](v13);
  v18 = &v48 - v17;
  v50 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = sub_25B0E3900();
    v22 = *(v9 + 16);
    v21 = v9 + 16;
    v61 = v22;
    v62 = v20;
    v23 = *(v21 + 56);
    v59 = v18;
    v60 = (v21 - 8);
    v63 = v21;
    v24 = v19 + v23 * (a3 - 1);
    v55 = -v23;
    v56 = (v21 + 16);
    v25 = a1 - a3;
    v57 = v19;
    v49 = v23;
    v26 = v19 + v23 * a3;
    while (2)
    {
      v53 = v24;
      v54 = a3;
      v51 = v26;
      v52 = v25;
      v28 = v25;
      v29 = v24;
      while (1)
      {
        v30 = v61;
        v61(v18, v26, v8);
        v30(v15, v29, v8);
        v69 = sub_25B0E38F0();
        sub_25B0E3850();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v31 = sub_25B0E2730();
        v32 = [v31 name];

        if (!v32)
        {
          break;
        }

        v64 = v28;
        v33 = sub_25B0E3740();
        v35 = v34;

        v36 = v15;
        v37 = sub_25B0E2730();
        v38 = [v37 name];

        if (!v38)
        {

          v15 = v36;
          v18 = v59;
          goto LABEL_5;
        }

        v39 = sub_25B0E3740();
        v40 = v8;
        v42 = v41;

        v67 = v33;
        v68 = v35;
        v65 = v39;
        v66 = v42;
        sub_25B04C9BC();
        v43 = sub_25B0E3B20();

        v8 = v40;

        v44 = *v60;
        (*v60)(v36, v8);
        v18 = v59;
        result = (v44)(v59, v8);
        v15 = v36;
        v45 = v64;
        if (v43 != -1)
        {
          goto LABEL_6;
        }

        if (!v57)
        {
          __break(1u);
          return result;
        }

        v46 = *v56;
        v47 = v58;
        (*v56)(v58, v26, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v46)(v29, v47, v8);
        v29 += v55;
        v26 += v55;
        v28 = v45 + 1;
        if (v45 == -1)
        {
          goto LABEL_6;
        }
      }

LABEL_5:
      v27 = *v60;
      (*v60)(v15, v8);
      result = (v27)(v18, v8);
LABEL_6:
      a3 = v54 + 1;
      v24 = v53 + v49;
      v25 = v52 - 1;
      v26 = v51 + v49;
      if (v54 + 1 == v50)
      {
        return result;
      }

      continue;
    }
  }

  return result;
}

uint64_t sub_25B0D27FC(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v149 = a4;
  v148 = a1;
  v7 = sub_25B0E2750();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v151 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v164 = &v144 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v144 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v144 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v160 = &v144 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v161 = &v144 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v146 = &v144 - v24;
  result = MEMORY[0x28223BE20](v23);
  v145 = &v144 - v27;
  v158 = a3;
  v28 = *(a3 + 8);
  v157 = v26;
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_112:
    a3 = *v148;
    if (!*v148)
    {
      goto LABEL_152;
    }

    v43 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_146;
    }

    result = v43;
LABEL_115:
    v179 = result;
    v43 = *(result + 16);
    v138 = v157;
    if (v43 >= 2)
    {
      while (*v158)
      {
        v139 = *(result + 16 * v43);
        v140 = result;
        v141 = *(result + 16 * (v43 - 1) + 40);
        sub_25B0D3630(*v158 + *(v138 + 72) * v139, *v158 + *(v138 + 72) * *(result + 16 * (v43 - 1) + 32), *v158 + *(v138 + 72) * v141, a3);
        if (v5)
        {
        }

        if (v141 < v139)
        {
          goto LABEL_139;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v140 = sub_25B0D3F4C(v140);
        }

        if ((v43 - 2) >= *(v140 + 2))
        {
          goto LABEL_140;
        }

        v142 = &v140[16 * v43];
        *v142 = v139;
        *(v142 + 1) = v141;
        v179 = v140;
        sub_25B0D3EC0(v43 - 1);
        result = v179;
        v43 = *(v179 + 16);
        v138 = v157;
        if (v43 <= 1)
        {
        }
      }

      goto LABEL_150;
    }
  }

  v29 = 0;
  v170 = v26 + 16;
  v171 = (v26 + 8);
  v30 = MEMORY[0x277D84F90];
  v168 = (v26 + 32);
  v169 = v7;
  v174 = v15;
  v167 = v18;
  while (1)
  {
    v152 = v30;
    if (v29 + 1 >= v28)
    {
      v43 = v29 + 1;
      v55 = v149;
      goto LABEL_33;
    }

    v159 = v28;
    v31 = *v158;
    a3 = *(v26 + 72);
    v32 = *v158 + a3 * (v29 + 1);
    v33 = *(v26 + 16);
    v34 = v145;
    v33(v145, v32, v7);
    v173 = v31;
    v35 = v31 + a3 * v29;
    v36 = v146;
    v166 = v33;
    v33(v146, v35, v7);
    LODWORD(v172) = sub_25B0CE3C0();
    if (v5)
    {
      v143 = *v171;
      (*v171)(v36, v7);
      v143(v34, v7);
    }

    v37 = *v171;
    (*v171)(v36, v7);
    v165 = v37;
    result = (v37)(v34, v7);
    v147 = v29;
    v38 = v29 + 2;
    v39 = v173 + a3 * (v29 + 2);
    v40 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
    v41 = a3;
    v173 = a3;
    while (1)
    {
      v43 = v159;
      if (v159 == v38)
      {
        break;
      }

      v44 = v166;
      v166(v161, v39, v7);
      v44(v160, v32, v7);
      sub_25B0E3900();
      sub_25B0E38F0();
      sub_25B0E3850();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v45 = sub_25B0E2730();
      v46 = [v45 v40[137]];

      if (v46)
      {
        v163 = sub_25B0E3740();
        v48 = v47;

        v49 = sub_25B0E2730();
        v50 = [v49 v40[137]];

        if (v50)
        {
          v51 = sub_25B0E3740();
          v53 = v52;

          v177 = v163;
          v178 = v48;
          v175 = v51;
          v176 = v53;
          sub_25B04C9BC();
          v54 = sub_25B0E3B20();

          v40 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;

          a3 = v54 == -1;
        }

        else
        {

          a3 = 0;
        }

        v7 = v169;
      }

      else
      {

        a3 = 0;
      }

      v42 = v165;
      v165(v160, v7);
      result = (v42)(v161, v7);
      ++v38;
      v41 = v173;
      v39 += v173;
      v32 += v173;
      if ((v172 & 1) != a3)
      {
        v43 = v38 - 1;
        break;
      }
    }

    v26 = v157;
    v56 = v152;
    v55 = v149;
    v15 = v174;
    v18 = v167;
    v29 = v147;
    if (v172)
    {
      if (v43 < v147)
      {
        goto LABEL_145;
      }

      if (v147 < v43)
      {
        v57 = v43;
        v58 = v41 * (v43 - 1);
        v59 = v57 * v41;
        v159 = v57;
        v60 = v147 * v41;
        do
        {
          if (v29 != --v57)
          {
            v61 = v5;
            v62 = *v158;
            if (!*v158)
            {
              goto LABEL_149;
            }

            a3 = v62 + v60;
            v172 = *v168;
            (v172)(v151, v62 + v60, v169, v56);
            if (v60 < v58 || a3 >= v62 + v59)
            {
              v7 = v169;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v7 = v169;
              if (v60 != v58)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = (v172)(v62 + v58, v151, v7);
            v5 = v61;
            v26 = v157;
            v56 = v152;
            v55 = v149;
            v18 = v167;
            v41 = v173;
          }

          ++v29;
          v58 -= v41;
          v59 -= v41;
          v60 += v41;
        }

        while (v29 < v57);
        v15 = v174;
        v29 = v147;
        v43 = v159;
      }
    }

LABEL_33:
    v63 = v158[1];
    if (v43 >= v63)
    {
      goto LABEL_42;
    }

    if (__OFSUB__(v43, v29))
    {
      goto LABEL_142;
    }

    if (v43 - v29 >= v55)
    {
      goto LABEL_42;
    }

    if (__OFADD__(v29, v55))
    {
      goto LABEL_143;
    }

    if (v29 + v55 >= v63)
    {
      v64 = v158[1];
    }

    else
    {
      v64 = v29 + v55;
    }

    if (v64 < v29)
    {
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      result = sub_25B0D3F4C(v43);
      goto LABEL_115;
    }

    if (v43 == v64)
    {
LABEL_42:
      v65 = v43;
      if (v43 < v29)
      {
        goto LABEL_141;
      }

      goto LABEL_43;
    }

    v144 = v5;
    v110 = *v158;
    v111 = v26;
    v112 = sub_25B0E3900();
    v113 = *(v111 + 72);
    v165 = *(v111 + 16);
    v166 = v112;
    a3 = v110 + v113 * (v43 - 1);
    v162 = -v113;
    v147 = v29;
    v114 = (v29 - v43);
    v163 = v110;
    v150 = v113;
    v115 = v110 + v43 * v113;
    v153 = v64;
LABEL_96:
    v159 = v43;
    v154 = v115;
    v155 = v114;
    v117 = v114;
    v156 = a3;
LABEL_97:
    v172 = v117;
    v118 = v165;
    (v165)(v18, v115, v7);
    (v118)(v15, a3, v7);
    v173 = sub_25B0E38F0();
    sub_25B0E3850();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v119 = v18;
    v120 = sub_25B0E2730();
    v121 = [v120 name];

    if (!v121)
    {

LABEL_94:
      v116 = *v171;
      v15 = v174;
      (*v171)(v174, v7);
      v18 = v119;
      v116(v119, v7);
      goto LABEL_95;
    }

    v122 = sub_25B0E3740();
    v124 = v123;

    v125 = v174;
    v126 = sub_25B0E2730();
    v127 = [v126 name];

    if (!v127)
    {

      v7 = v169;
      goto LABEL_94;
    }

    v128 = sub_25B0E3740();
    v130 = v129;

    v177 = v122;
    v178 = v124;
    v175 = v128;
    v176 = v130;
    sub_25B04C9BC();
    v131 = sub_25B0E3B20();

    v132 = *v171;
    v133 = v125;
    v18 = v167;
    v7 = v169;
    (*v171)(v133, v169);
    result = (v132)(v18, v7);
    if (v131 == -1)
    {
      break;
    }

    v15 = v174;
LABEL_95:
    v43 = v159 + 1;
    a3 = v156 + v150;
    v114 = v155 - 1;
    v115 = v154 + v150;
    v65 = v153;
    if (v159 + 1 != v153)
    {
      goto LABEL_96;
    }

    v5 = v144;
    v29 = v147;
    if (v153 < v147)
    {
      goto LABEL_141;
    }

LABEL_43:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v30 = v152;
    }

    else
    {
      result = sub_25B08993C(0, *(v152 + 2) + 1, 1, v152);
      v30 = result;
    }

    a3 = *(v30 + 2);
    v66 = *(v30 + 3);
    v43 = a3 + 1;
    v26 = v157;
    if (a3 >= v66 >> 1)
    {
      result = sub_25B08993C((v66 > 1), a3 + 1, 1, v30);
      v26 = v157;
      v30 = result;
    }

    *(v30 + 2) = v43;
    v67 = &v30[16 * a3];
    *(v67 + 4) = v29;
    *(v67 + 5) = v65;
    v153 = v65;
    v68 = *v148;
    if (!*v148)
    {
      goto LABEL_151;
    }

    if (a3)
    {
      while (1)
      {
        a3 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v69 = *(v30 + 4);
          v70 = *(v30 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_62:
          if (v72)
          {
            goto LABEL_130;
          }

          v85 = &v30[16 * v43];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_133;
          }

          v91 = &v30[16 * a3 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_136;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_137;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              a3 = v43 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v95 = &v30[16 * v43];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_76:
        if (v90)
        {
          goto LABEL_132;
        }

        v98 = &v30[16 * a3];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_135;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_83:
        v106 = a3 - 1;
        if (a3 - 1 >= v43)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (!*v158)
        {
          goto LABEL_148;
        }

        v107 = v30;
        v43 = *&v30[16 * v106 + 32];
        v108 = *&v30[16 * a3 + 40];
        sub_25B0D3630(*v158 + *(v26 + 72) * v43, *v158 + *(v26 + 72) * *&v30[16 * a3 + 32], *v158 + *(v26 + 72) * v108, v68);
        if (v5)
        {
        }

        if (v108 < v43)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_25B0D3F4C(v107);
        }

        if (v106 >= *(v107 + 2))
        {
          goto LABEL_127;
        }

        v109 = &v107[16 * v106];
        *(v109 + 4) = v43;
        *(v109 + 5) = v108;
        v179 = v107;
        result = sub_25B0D3EC0(a3);
        v30 = v179;
        v43 = *(v179 + 16);
        v26 = v157;
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v30[16 * v43 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_128;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_129;
      }

      v80 = &v30[16 * v43];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_131;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_134;
      }

      if (v84 >= v76)
      {
        v102 = &v30[16 * a3 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_138;
        }

        if (v71 < v105)
        {
          a3 = v43 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

LABEL_3:
    v28 = v158[1];
    v29 = v153;
    v15 = v174;
    if (v153 >= v28)
    {
      goto LABEL_112;
    }
  }

  v134 = v172;
  if (v163)
  {
    v135 = *v168;
    v136 = v164;
    (*v168)(v164, v115, v7);
    swift_arrayInitWithTakeFrontToBack();
    v135(a3, v136, v7);
    a3 += v162;
    v115 += v162;
    v137 = __CFADD__(v134, 1);
    v117 = (v134 + 1);
    v15 = v174;
    if (v137)
    {
      goto LABEL_95;
    }

    goto LABEL_97;
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
  return result;
}

uint64_t sub_25B0D3630(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v78 = a4;
  v75 = a3;
  v76 = a2;
  v77 = sub_25B0E2750();
  v5 = *(v77 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v77);
  v73 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v74 = &v65 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v65 - v12;
  result = MEMORY[0x28223BE20](v11);
  v16 = (&v65 - v15);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    return result;
  }

  v19 = v76 - a1;
  if (v76 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_77;
  }

  v20 = v75 - v76;
  if (v75 - v76 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_78;
  }

  v85 = a1;
  v84 = v78;
  if (v19 / v18 >= v20 / v18)
  {
    v22 = v20 / v18 * v18;
    if (v78 < v76 || v76 + v22 <= v78)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v78 != v76)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v22 < 1)
    {
      v47 = v78 + v22;
    }

    else
    {
      v44 = -v18;
      v69 = (v5 + 8);
      v70 = (v5 + 16);
      v45 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
      v46 = v78 + v22;
      v47 = v78 + v22;
      v67 = -v18;
      do
      {
        v66 = v47;
        v48 = v76;
        v76 += v44;
        v71 = v48;
        while (1)
        {
          v49 = v75;
          if (v48 <= a1)
          {
            v85 = v48;
            v83 = v66;
            goto LABEL_75;
          }

          v68 = v47;
          v50 = *v70;
          v72 = (v46 + v44);
          v51 = v77;
          v50(v74);
          (v50)(v73, v76, v51);
          sub_25B0E3900();
          sub_25B0E38F0();
          sub_25B0E3850();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v52 = sub_25B0E2730();
          v53 = [v52 v45[137]];

          if (v53)
          {
            v54 = sub_25B0E3740();
            v56 = v55;

            v57 = sub_25B0E2730();
            v53 = [v57 v45[137]];

            if (v53)
            {
              v58 = sub_25B0E3740();
              v59 = v54;
              v61 = v60;

              v81 = v59;
              v82 = v56;
              v79 = v58;
              v80 = v61;
              sub_25B04C9BC();
              v53 = sub_25B0E3B20();

              LOBYTE(v53) = v53 == -1;
            }

            else
            {
            }

            v44 = v67;
          }

          else
          {
          }

          v75 = v49 + v44;
          v62 = *v69;
          v63 = v77;
          (*v69)(v73, v77);
          v62(v74, v63);
          v48 = v71;
          if (v53)
          {
            break;
          }

          v64 = v72;
          v47 = v72;
          if (v49 < v46 || v75 >= v46)
          {
            swift_arrayInitWithTakeFrontToBack();
            v45 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
          }

          else
          {
            v45 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
            if (v49 != v46)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v46 = v47;
          if (v64 <= v78)
          {
            v76 = v48;
            goto LABEL_74;
          }
        }

        if (v49 < v71 || v75 >= v71)
        {
          swift_arrayInitWithTakeFrontToBack();
          v47 = v68;
          v45 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
        }

        else
        {
          v47 = v68;
          v45 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
          if (v49 != v71)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v46 > v78);
    }

LABEL_74:
    v85 = v76;
    v83 = v47;
  }

  else
  {
    v21 = v19 / v18 * v18;
    if (v78 < a1 || a1 + v21 <= v78)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v78 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v74 = (v78 + v21);
    v83 = v78 + v21;
    if (v21 >= 1 && v76 < v75)
    {
      v72 = *(v5 + 16);
      v73 = (v5 + 16);
      v70 = v18;
      v71 = (v5 + 8);
      v69 = v16;
      while (1)
      {
        v24 = v77;
        v25 = v72;
        v72(v16, v76, v77);
        v25(v13, v78, v24);
        sub_25B0E3900();
        sub_25B0E38F0();
        sub_25B0E3850();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v26 = sub_25B0E2730();
        v27 = [v26 name];

        if (!v27)
        {
          break;
        }

        v28 = sub_25B0E3740();
        v30 = v29;

        v31 = sub_25B0E2730();
        v32 = [v31 name];

        if (!v32)
        {

          v16 = v69;
          v18 = v70;
          goto LABEL_32;
        }

        v33 = sub_25B0E3740();
        v35 = v34;

        v81 = v28;
        v82 = v30;
        v79 = v33;
        v80 = v35;
        sub_25B04C9BC();
        v36 = sub_25B0E3B20();

        v37 = v77;

        v38 = *v71;
        (*v71)(v13, v37);
        v39 = v69;
        v38(v69, v37);
        v18 = v70;
        v16 = v39;
        if (v36 != -1)
        {
          goto LABEL_33;
        }

        v40 = v70 + v76;
        if (a1 < v76 || a1 >= v40)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v76)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v76 = v40;
LABEL_39:
        a1 += v18;
        v85 = a1;
        if (v78 >= v74 || v76 >= v75)
        {
          goto LABEL_75;
        }
      }

LABEL_32:
      v41 = *v71;
      v42 = v77;
      (*v71)(v13, v77);
      v41(v16, v42);
LABEL_33:
      v43 = v78 + v18;
      if (a1 < v78 || a1 >= v43)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v78)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v84 = v43;
      v78 = v43;
      goto LABEL_39;
    }
  }

LABEL_75:
  sub_25B0D3FA8(&v85, &v84, &v83, MEMORY[0x277D2BE00]);
  return 1;
}

uint64_t sub_25B0D3EC0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25B0D3F4C(v3);
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

uint64_t sub_25B0D3FA8(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_25B0D4108(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32E68, &qword_25B0EACC8);
    v3 = sub_25B0E3D40();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_25B065C20(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_25B0D4200(uint64_t a1)
{
  v2 = type metadata accessor for CuratedGalleryView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B0D425C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GalleryView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25B0D05C0(v4, a1);
}

uint64_t objectdestroy_13Tm()
{
  v1 = (type metadata accessor for GalleryView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 32);

  v9 = v0 + v3 + v1[9];
  v10 = sub_25B0E2C10();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32D80, &qword_25B0EAB20) + 28));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25B0D4400@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(type metadata accessor for GalleryView() - 8) + 80);

  return sub_25B0D0BB4(a1, a2);
}

uint64_t sub_25B0D4480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A58, &qword_25B0EA650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_25B0D44F0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31480, &qword_25B0E6BE0);
  v3 = sub_25B0E3D40();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_25B066160(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_25B066160(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25B0D45F8()
{
  result = qword_27FA32E70;
  if (!qword_27FA32E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32E78, &qword_25B0EACD0);
    sub_25B0B3E88();
    sub_25B058150(&qword_27FA31EB8, &qword_27FA31EC0, &unk_25B0EA2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32E70);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_25B0D46DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25B0D4724(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_25B0D47BC@<D0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, void *a3@<X8>)
{
  if (*(a1 + 16) && (v5 = a2(), (v6 & 1) != 0))
  {
    v7 = (*(a1 + 56) + 32 * v5);
    v8 = v7[1];
    v9 = v7[2];
    v10 = v7[3];
    *a3 = *v7;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }

  return result;
}

void *sub_25B0D4838(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_25B0E3CD0();

    if (v4)
    {
      sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_25B065C20(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void sub_25B0D48FC()
{
  v1 = sub_25B0E2930();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25B0E2750();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 64);
  v12 = MEMORY[0x277D84F90];
  if (!*(v11 + 16))
  {
    return;
  }

  v26 = v8;
  (*(v8 + 16))(v10, v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6);
  v13 = sub_25B0E2730();
  v14 = [v13 curatedGalleryBackgroundColors];

  if (!v14)
  {
    goto LABEL_19;
  }

  v24 = v2;
  v25 = v6;
  sub_25B046E60(0, &qword_27FA32EB8, 0x277D75348);
  v15 = sub_25B0E37F0();

  if (v15 >> 62)
  {
    v16 = sub_25B0E3CC0();
    if (v16)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_5:
      v27 = v12;
      sub_25B0E3C50();
      if ((v16 & 0x8000000000000000) == 0)
      {
        v17 = 0;
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            MEMORY[0x25F860730](v17, v15);
          }

          else
          {
            v19 = *(v15 + 8 * v17 + 32);
          }

          ++v17;
          sub_25B0E3370();
          sub_25B0E3C30();
          v18 = *(v27 + 16);
          sub_25B0E3C60();
          sub_25B0E3C70();
          sub_25B0E3C40();
        }

        while (v16 != v17);

        v12 = v27;
        goto LABEL_14;
      }

      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F88, &qword_25B0E9238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25B0E7730;
  v21 = v25;
  if (qword_27FA30D48 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v1, qword_27FA39A10);
  v23 = *(v24 + 16);
  v23(v5, v22, v1);
  *(inited + 32) = sub_25B0E33D0();
  v23(v5, v22, v1);
  *(inited + 40) = sub_25B0E33D0();
  v27 = v12;
  sub_25B08C074(inited);
  (*(v26 + 8))(v10, v21);
}

uint64_t sub_25B0D4C94()
{
  v1 = *v0;
  v2 = *(v0 + 3);
  v3 = *(v0 + 7);
  *&v7[13] = *(v0 + 5);
  *&v7[15] = v3;
  v4 = v0[10];
  v7[17] = v0[9];
  *&v7[9] = *(v0 + 1);
  *&v7[11] = v2;
  v5 = v0[11];
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v1);
  sub_25B0AB55C(v7);
  sub_25B0DB028(v7, v4);
  MEMORY[0x25F860A80](v5);
  return sub_25B0E3F50();
}

uint64_t sub_25B0D4D2C(__int128 *a1)
{
  v3 = *(v1 + 80);
  v10 = *(v1 + 72);
  v8 = *(v1 + 40);
  v9 = *(v1 + 56);
  v6 = *(v1 + 8);
  v7 = *(v1 + 24);
  v4 = *(v1 + 88);
  MEMORY[0x25F860A80](*v1);
  sub_25B0AB55C(a1);
  sub_25B0DB028(a1, v3);
  return MEMORY[0x25F860A80](v4);
}

uint64_t sub_25B0D4DB0()
{
  v1 = v0[10];
  v7[17] = v0[9];
  v2 = *v0;
  v3 = *(v0 + 3);
  v4 = *(v0 + 7);
  *&v7[13] = *(v0 + 5);
  *&v7[15] = v4;
  *&v7[9] = *(v0 + 1);
  *&v7[11] = v3;
  v5 = v0[11];
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v2);
  sub_25B0AB55C(v7);
  sub_25B0DB028(v7, v1);
  MEMORY[0x25F860A80](v5);
  return sub_25B0E3F50();
}

uint64_t sub_25B0D4E44@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = v3;
  v11 = *(v1 + 72);
  v4 = v11;
  v8[0] = *(v1 + 8);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_25B08CEB4(v8, v7);
}

BOOL sub_25B0D4E98(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_25B0DB628(v9, v10);
}

unint64_t sub_25B0D4EFC()
{
  result = qword_27FA32E80;
  if (!qword_27FA32E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32E80);
  }

  return result;
}

uint64_t sub_25B0D4F50(uint64_t *a1, uint64_t a2)
{
  v66 = a1;
  v3 = type metadata accessor for BucketedFace(0);
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v59 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v50 - v7;
  v9 = *(type metadata accessor for LinkedFace(0) + 20);
  v57 = a2;
  v10 = sub_25B0E2730();
  v11 = [v10 curationPlacements];

  if (v11)
  {
    sub_25B046E60(0, &qword_27FA31E08, 0x277D2C020);
    v12 = sub_25B0E37F0();

    if (!(v12 >> 62))
    {
      goto LABEL_3;
    }

LABEL_33:
    v13 = sub_25B0E3CC0();
    if (v13)
    {
      goto LABEL_4;
    }
  }

  v12 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_33;
  }

LABEL_3:
  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
  }

LABEL_4:
  v14 = 0;
  v53 = v12;
  v54 = v12 & 0xC000000000000001;
  v51 = v12 & 0xFFFFFFFFFFFFFF8;
  v52 = v13;
  while (1)
  {
    if (v54)
    {
      v17 = MEMORY[0x25F860730](v14, v12);
    }

    else
    {
      if (v14 >= *(v51 + 16))
      {
        goto LABEL_38;
      }

      v17 = *(v12 + 8 * v14 + 32);
    }

    v18 = v17;
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    [v17 placement];
    v21 = v62;
    v20 = v63;
    v22 = v64;
    v23 = v65;
    v24 = *v66;
    v25 = *(*v66 + 16);
    v60 = v61;
    v58 = v18;
    if (v25 && (v26 = sub_25B066160(v61.i64[0]), (v27 & 1) != 0))
    {
      v28 = *(*(v24 + 56) + 8 * v26);
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }

    sub_25B0DC234(v57, &v8[*(v56 + 24)], type metadata accessor for LinkedFace);
    *&v29 = vdupq_laneq_s64(v60, 1).u64[0];
    *(&v29 + 1) = v21;
    *v8 = vdupq_lane_s64(v60.i64[0], 0);
    *(v8 + 1) = v29;
    *(v8 + 4) = v20;
    *(v8 + 5) = v22;
    *(v8 + 6) = v23;
    sub_25B0DC234(v8, v59, type metadata accessor for BucketedFace);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_25B08A244(0, v28[2] + 1, 1, v28);
    }

    v31 = v28[2];
    v30 = v28[3];
    if (v31 >= v30 >> 1)
    {
      v28 = sub_25B08A244(v30 > 1, v31 + 1, 1, v28);
    }

    v28[2] = v31 + 1;
    sub_25B0DC2FC(v59, v28 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v31, type metadata accessor for BucketedFace);
    v32 = v66;
    v33 = *v66;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v32;
    v61.i64[0] = v35;
    v36 = v60.i64[0];
    v38 = sub_25B066160(v60.i64[0]);
    v39 = *(v35 + 16);
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_36;
    }

    v42 = v37;
    if (*(v35 + 24) >= v41)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v45 = v61.i64[0];
        if (v37)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_25B06A890();
        v45 = v61.i64[0];
        if (v42)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_25B067E70(v41, isUniquelyReferenced_nonNull_native);
      v43 = sub_25B066160(v36);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_39;
      }

      v38 = v43;
      v45 = v61.i64[0];
      if (v42)
      {
LABEL_5:
        v15 = v45[7];
        v16 = *(v15 + 8 * v38);
        *(v15 + 8 * v38) = v28;

        sub_25B0DC29C(v8, type metadata accessor for BucketedFace);
        goto LABEL_6;
      }
    }

    v45[(v38 >> 6) + 8] |= 1 << v38;
    *(v45[6] + 8 * v38) = v36;
    *(v45[7] + 8 * v38) = v28;

    sub_25B0DC29C(v8, type metadata accessor for BucketedFace);
    v46 = v45[2];
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      goto LABEL_37;
    }

    v45[2] = v48;
LABEL_6:
    *v66 = v45;
    ++v14;
    v12 = v53;
    if (v19 == v52)
    {
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
  type metadata accessor for NTKFaceCurationGroup(0);
  result = sub_25B0E3E80();
  __break(1u);
  return result;
}

uint64_t sub_25B0D5424(uint64_t result)
{
  switch(result)
  {
    case 0:
    case 1:
    case 6:
      return result;
    case 2:
      v1 = objc_opt_self();
      result = [v1 currentDevice];
      if (!result)
      {
        goto LABEL_108;
      }

      v2 = result;
      v3 = [result deviceCategory];

      if ((v3 | 2) != 6)
      {
        return 17;
      }

      result = [v1 currentDevice];
      if (!result)
      {
        goto LABEL_120;
      }

      v4 = result;
      if ([result collectionType] == 5)
      {

        return 18;
      }

      else
      {
        v52 = NTKShowHardwareSpecificFaces();

        if (v52)
        {
          return 18;
        }

        return 17;
      }

    case 3:
      goto LABEL_18;
    case 4:
      result = [objc_opt_self() currentDevice];
      if (!result)
      {
        goto LABEL_112;
      }

      v30 = result;
      v31 = [result deviceCategory];

      if ((v31 & 0xFFFFFFFFFFFFFFFDLL) == 4)
      {
        return 4;
      }

      else
      {
        return 8;
      }

    case 5:
      result = [objc_opt_self() currentDevice];
      if (!result)
      {
        goto LABEL_114;
      }

      v34 = result;
      v35 = [result deviceCategory];

      if ((v35 & 0xFFFFFFFFFFFFFFFDLL) == 4)
      {
        return 10;
      }

      else
      {
        return 4;
      }

    case 7:
      return 5;
    case 8:
      result = [objc_opt_self() currentDevice];
      if (!result)
      {
        goto LABEL_116;
      }

      v38 = result;
      v39 = [result deviceCategory];

      if ((v39 & 0xFFFFFFFFFFFFFFFDLL) == 4)
      {
        return 12;
      }

      else
      {
        return 7;
      }

    case 9:
      return 2;
    case 10:
      return 3;
    case 11:
      result = [objc_opt_self() currentDevice];
      if (result)
      {
        goto LABEL_75;
      }

      __break(1u);
LABEL_18:
      v11 = objc_opt_self();
      result = [v11 currentDevice];
      if (!result)
      {
        goto LABEL_106;
      }

      v12 = result;
      v13 = [result deviceCategory];

      if ((v13 | 2) != 6)
      {
        return 18;
      }

      result = [v11 currentDevice];
      if (!result)
      {
        goto LABEL_119;
      }

      v14 = result;
      if ([result collectionType] == 5)
      {
        goto LABEL_84;
      }

      v15 = NTKShowHardwareSpecificFaces();

      if (v15)
      {
        return 19;
      }

      else
      {
        return 18;
      }

    case 12:
      result = [objc_opt_self() currentDevice];
      if (!result)
      {
        goto LABEL_107;
      }

      v16 = result;
      v17 = [result deviceCategory];

      if ((v17 & 0xFFFFFFFFFFFFFFFDLL) == 4)
      {
        return 7;
      }

      else
      {
        return 9;
      }

    case 13:
      result = [objc_opt_self() currentDevice];
      if (!result)
      {
        goto LABEL_113;
      }

      v32 = result;
      v33 = [result deviceCategory];

      if ((v33 & 0xFFFFFFFFFFFFFFFDLL) == 4)
      {
        return 9;
      }

      else
      {
        return 12;
      }

    case 14:
      v7 = objc_opt_self();
      result = [v7 currentDevice];
      if (!result)
      {
        goto LABEL_105;
      }

      v8 = result;
      v9 = [result deviceCategory];

      if ((v9 | 2) == 6)
      {
        result = [v7 currentDevice];
        if (!result)
        {
          goto LABEL_118;
        }

        v10 = result;
        if ([result collectionType] == 5)
        {

          return 14;
        }

        v50 = NTKShowHardwareSpecificFaces();

        v47 = v50 == 0;
        v48 = 11;
        v49 = 14;
      }

      else
      {
        result = [v7 currentDevice];
        if (!result)
        {
          goto LABEL_125;
        }

LABEL_75:
        v45 = result;
        if ([result collectionType] == 5)
        {

          return 11;
        }

        v46 = NTKShowHardwareSpecificFaces();

        v47 = v46 == 0;
        v48 = 6;
        v49 = 11;
      }

      goto LABEL_100;
    case 15:
      v18 = objc_opt_self();
      result = [v18 currentDevice];
      if (!result)
      {
        goto LABEL_109;
      }

      v19 = result;
      v20 = [result deviceCategory];

      if ((v20 | 2) != 6)
      {
        return 10;
      }

      result = [v18 currentDevice];
      if (!result)
      {
        goto LABEL_121;
      }

      v21 = result;
      if ([result collectionType] == 5)
      {

        return 15;
      }

      else
      {
        v51 = NTKShowHardwareSpecificFaces();

        if (v51)
        {
          return 15;
        }

        else
        {
          return 14;
        }
      }

    case 16:
      result = [objc_opt_self() currentDevice];
      if (result)
      {
        v5 = result;
        v6 = [result deviceCategory];

        if ((v6 & 0xFFFFFFFFFFFFFFFDLL) == 4)
        {
          return 13;
        }

        else
        {
          return 14;
        }
      }

      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
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
      goto LABEL_122;
    case 17:
      v22 = objc_opt_self();
      result = [v22 currentDevice];
      if (!result)
      {
        goto LABEL_110;
      }

      v23 = result;
      v24 = [result deviceCategory];

      if ((v24 | 2) != 6)
      {
        result = [v22 currentDevice];
        if (!result)
        {
          goto LABEL_126;
        }

        v43 = result;
        if ([result collectionType] == 5)
        {
LABEL_81:

          return 16;
        }

        v55 = NTKShowHardwareSpecificFaces();

        v47 = v55 == 0;
        v48 = 11;
        v49 = 16;
        goto LABEL_100;
      }

      result = [v22 currentDevice];
      if (!result)
      {
LABEL_122:
        __break(1u);
        goto LABEL_123;
      }

      v25 = result;
      if ([result collectionType] == 5)
      {

        return 17;
      }

      else
      {
        v53 = NTKShowHardwareSpecificFaces();

        if (v53)
        {
          return 17;
        }

        else
        {
          return 16;
        }
      }

    case 18:
      result = [objc_opt_self() currentDevice];
      if (!result)
      {
        goto LABEL_115;
      }

      v36 = result;
      v37 = [result deviceCategory];

      if ((v37 & 0xFFFFFFFFFFFFFFFDLL) == 4)
      {
        return 8;
      }

      else
      {
        return 13;
      }

    case 19:
      v40 = objc_opt_self();
      result = [v40 currentDevice];
      if (!result)
      {
        goto LABEL_117;
      }

      v41 = result;
      v42 = [result deviceCategory];

      if ((v42 | 2) != 6)
      {
        return 15;
      }

      result = [v40 currentDevice];
      if (!result)
      {
        goto LABEL_124;
      }

      v43 = result;
      if ([result collectionType] == 5)
      {
        goto LABEL_81;
      }

      v44 = NTKShowHardwareSpecificFaces();

      if (v44)
      {
        return 16;
      }

      else
      {
        return 15;
      }

    case 20:
      v26 = objc_opt_self();
      result = [v26 currentDevice];
      if (!result)
      {
        goto LABEL_111;
      }

      v27 = result;
      v28 = [result deviceCategory];

      if ((v28 | 2) == 6)
      {
        result = [v26 currentDevice];
        if (result)
        {
          v29 = result;
          if ([result collectionType] == 5)
          {

            return 20;
          }

          else
          {
            v54 = NTKShowHardwareSpecificFaces();

            if (v54)
            {
              return 20;
            }

            else
            {
              return 19;
            }
          }
        }

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
        return result;
      }

      result = [v26 currentDevice];
      if (!result)
      {
        goto LABEL_127;
      }

      v14 = result;
      if ([result collectionType] == 5)
      {
LABEL_84:

        return 19;
      }

      else
      {
        v56 = NTKShowHardwareSpecificFaces();

        v47 = v56 == 0;
        v48 = 16;
        v49 = 19;
LABEL_100:
        if (v47)
        {
          return v48;
        }

        else
        {
          return v49;
        }
      }

    default:
      return 0;
  }
}

uint64_t sub_25B0D5CD8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v79 = sub_25B0E2750();
  v90 = *(v79 - 8);
  v8 = *(v90 + 64);
  MEMORY[0x28223BE20](v79);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for BucketedFace(0);
  v11 = *(v91 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v91);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for LinkedFace(0);
  v86 = *(v93 - 8);
  v15 = *(v86 + 64);
  v16 = MEMORY[0x28223BE20](v93);
  v89 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v82 = &v77 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v92 = &v77 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v77 - v22;
  if (!*(a3 + 16))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);

    __break(1u);
    return result;
  }

  v24 = sub_25B066160(a2);
  if ((v25 & 1) == 0)
  {
    goto LABEL_49;
  }

  v78 = v10;
  v94[0] = *(*(a3 + 56) + 8 * v24);
  swift_bridgeObjectRetain_n();
  v10 = 0;
  sub_25B0D79A8(v94);
  v80 = a4;
  v81 = a1;

  v26 = v94[0];
  v27 = v94[0][2];
  if (v27)
  {
    v94[0] = MEMORY[0x277D84F90];
    sub_25B08C1A8(0, v27, 0);
    v28 = v94[0];
    v29 = *(v11 + 80);
    v88 = v26;
    v30 = v26 + ((v29 + 32) & ~v29);
    v31 = *(v11 + 72);
    v32 = v86;
    do
    {
      sub_25B0DC234(v30, v14, type metadata accessor for BucketedFace);
      sub_25B0DC2FC(&v14[*(v91 + 24)], v23, type metadata accessor for LinkedFace);
      v94[0] = v28;
      v10 = v28[2];
      v33 = v28[3];
      if (v10 >= v33 >> 1)
      {
        sub_25B08C1A8(v33 > 1, v10 + 1, 1);
        v32 = v86;
        v28 = v94[0];
      }

      v28[2] = v10 + 1;
      sub_25B0DC2FC(v23, v28 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v10, type metadata accessor for LinkedFace);
      v30 += v31;
      --v27;
    }

    while (v27);
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
    v32 = v86;
  }

  v84 = v28[2];
  v85 = v28;
  if (v84)
  {
    v34 = 0;
    v83 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v34 >= v28[2])
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v10 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v36 = *(v32 + 72);
      v37 = v92;
      sub_25B0DC234(v28 + v10 + v36 * v34, v92, type metadata accessor for LinkedFace);
      v38 = v37 + *(v93 + 20);
      v39 = sub_25B0E2730();
      v40 = [v39 curationPlacements];

      if (!v40)
      {
        goto LABEL_50;
      }

      sub_25B046E60(0, &qword_27FA31E08, 0x277D2C020);
      v41 = sub_25B0E37F0();

      v91 = v34;
      v87 = v36;
      v88 = v10;
      if (v41 >> 62)
      {
        v42 = sub_25B0E3CC0();
        if (!v42)
        {
LABEL_12:

          sub_25B0DC29C(v92, type metadata accessor for LinkedFace);
          v32 = v86;
          v35 = v91;
          goto LABEL_13;
        }
      }

      else
      {
        v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v42)
        {
          goto LABEL_12;
        }
      }

      v43 = 0;
      while (1)
      {
        if ((v41 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x25F860730](v43, v41);
        }

        else
        {
          if (v43 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          v44 = *(v41 + 8 * v43 + 32);
        }

        v45 = v44;
        v10 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        [v44 placement];
        if (v94[0] == a2)
        {
          break;
        }

LABEL_20:
        ++v43;
        if (v10 == v42)
        {
          goto LABEL_12;
        }
      }

      [v45 placement];
      v46 = a2;
      v47 = v94[5];

      v48 = v47 == 4000;
      a2 = v46;
      if (v48)
      {
        goto LABEL_20;
      }

      sub_25B0DC2FC(v92, v82, type metadata accessor for LinkedFace);
      v10 = v83;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25B08C1A8(0, *(v10 + 16) + 1, 1);
        v10 = v95;
      }

      v32 = v86;
      v35 = v91;
      v50 = v88;
      v52 = *(v10 + 16);
      v51 = *(v10 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_25B08C1A8(v51 > 1, v52 + 1, 1);
        v32 = v86;
        v10 = v95;
      }

      *(v10 + 16) = v52 + 1;
      v83 = v10;
      sub_25B0DC2FC(v82, v50 + v10 + v52 * v87, type metadata accessor for LinkedFace);
LABEL_13:
      v34 = v35 + 1;
      v28 = v85;
      if (v34 == v84)
      {
        goto LABEL_37;
      }
    }
  }

  v83 = MEMORY[0x277D84F90];
LABEL_37:
  v53 = sub_25B0D65C4();
  v55 = v54;
  v56 = sub_25B0D6828(a2);
  v91 = v57;
  v58 = sub_25B0D6AC8(a2);
  v87 = v59;
  v88 = v58;
  v60 = v83;
  v61 = *(v83 + 16);
  if (v61)
  {
    v82 = v56;
    v84 = v55;
    v86 = v53;
    v94[0] = MEMORY[0x277D84F90];
    sub_25B08C250(0, v61, 0);
    v62 = v94[0];
    v63 = v60 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v92 = *(v32 + 72);
    v64 = (v90 + 16);
    v65 = v79;
    v66 = v78;
    do
    {
      v67 = v89;
      sub_25B0DC234(v63, v89, type metadata accessor for LinkedFace);
      (*v64)(v66, v67 + *(v93 + 20), v65);
      sub_25B0DC29C(v67, type metadata accessor for LinkedFace);
      v94[0] = v62;
      v69 = v62[2];
      v68 = v62[3];
      if (v69 >= v68 >> 1)
      {
        sub_25B08C250(v68 > 1, v69 + 1, 1);
        v65 = v79;
        v62 = v94[0];
      }

      v62[2] = v69 + 1;
      (*(v90 + 32))(v62 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v69, v66, v65);
      v63 += v92;
      --v61;
    }

    while (v61);

    v28 = v85;
    v53 = v86;
    v55 = v84;
    v56 = v82;
  }

  else
  {

    v62 = MEMORY[0x277D84F90];
  }

  v70 = sub_25B0D4108(MEMORY[0x277D84F90]);
  v71 = sub_25B0D6DA4(v28, a2);

  v73 = v80;
  *v80 = a2;
  v73[1] = v53;
  v73[2] = v55;
  v73[3] = v56;
  v74 = v87;
  v75 = v88;
  v73[4] = v91;
  v73[5] = v75;
  v73[6] = v74;
  v73[7] = v70;
  v76 = v81;
  v73[8] = v62;
  v73[9] = v76;
  v73[10] = v71;
  v73[11] = v76;
  return result;
}

BOOL sub_25B0D6564(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if (v8 == v4)
  {
    v10 = a2[6] < a1[6];
  }

  else
  {
    v10 = v8 < v4;
  }

  if (v7 == v3)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7 < v3;
  }

  v12 = v6 == v2;
  v13 = v6 < v2;
  if (v12)
  {
    v13 = v11;
  }

  if (v9 == v5)
  {
    return v13;
  }

  else
  {
    return v9 < v5;
  }
}

unint64_t sub_25B0D6828(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
    case 3:
      goto LABEL_13;
    case 4:
      result = 0xD000000000000020;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = [objc_opt_self() currentDevice];
      if (result)
      {
        v2 = result;
        v3 = [result deviceCategory];

        if ((v3 | 2) == 6)
        {
LABEL_13:
          result = 0xD000000000000022;
        }

        else
        {
          result = 0xD00000000000001DLL;
        }
      }

      else
      {
        __break(1u);
      }

      break;
    case 7:
    case 9:
      result = 0xD000000000000025;
      break;
    case 8:
    case 20:
      result = 0xD00000000000001FLL;
      break;
    case 10:
    case 17:
      result = 0xD000000000000023;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0xD000000000000019;
      break;
    case 13:
    case 15:
      result = 0xD00000000000001BLL;
      break;
    case 14:
    case 19:
      result = 0xD000000000000021;
      break;
    case 16:
      result = 0xD00000000000002ALL;
      break;
    case 18:
      result = 0xD00000000000001DLL;
      break;
    default:
      result = 0x6E776F6E6B6E55;
      break;
  }

  return result;
}

unint64_t sub_25B0D6AC8(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 0xD00000000000001DLL;
    case 2:
      return 0xD00000000000003CLL;
    case 3:
      return 0xD000000000000033;
    case 4:
      v2 = 13;
      goto LABEL_24;
    case 5:
      return 0xD000000000000040;
    case 6:
      result = [objc_opt_self() currentDevice];
      if (result)
      {
        v3 = result;
        v4 = [result deviceCategory];

        if ((v4 | 2) == 6)
        {
          return 0x1000000000000074;
        }

        else
        {
          return 0x100000000000006FLL;
        }
      }

      else
      {
        __break(1u);
      }

      return result;
    case 7:
      return 0x1000000000000080;
    case 8:
      return 0xD000000000000039;
    case 9:
      v2 = 61;
      goto LABEL_24;
    case 10:
    case 16:
      return 0xD000000000000058;
    case 11:
      v2 = 42;
      goto LABEL_24;
    case 12:
      v2 = 43;
      goto LABEL_24;
    case 13:
      return 0xD000000000000041;
    case 14:
      v2 = 51;
      goto LABEL_24;
    case 15:
      v2 = 18;
      goto LABEL_24;
    case 17:
      return 0xD000000000000040;
    case 18:
      v2 = 9;
      goto LABEL_24;
    case 19:
      v2 = 23;
      goto LABEL_24;
    case 20:
      v2 = 25;
LABEL_24:
      result = v2 | 0xD000000000000040;
      break;
    default:
      result = 0x6E776F6E6B6E55;
      break;
  }

  return result;
}

uint64_t sub_25B0D6DA4(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32E90, &qword_25B0EAE68);
  v3 = *(*(v51 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v51);
  v6 = (&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = &v46 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v69 = MEMORY[0x277D84F90];
    sub_25B08C230(0, v9, 0);
    v10 = v69;
    v11 = 0;
    v12 = *(type metadata accessor for LinkedFace(0) - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v50 = *(v12 + 72);
    do
    {
      v14 = v51;
      v15 = *(v51 + 48);
      sub_25B0DC234(v13, &v8[v15], type metadata accessor for LinkedFace);
      *v6 = v11;
      v16 = *(v14 + 48);
      sub_25B0DC2FC(&v8[v15], v6 + v16, type metadata accessor for LinkedFace);
      sub_25B0DB87C((v6 + v16), v52, v76);
      sub_25B058448(v6, &qword_27FA32E90, &qword_25B0EAE68);
      v69 = v10;
      v18 = *(v10 + 2);
      v17 = *(v10 + 3);
      if (v18 >= v17 >> 1)
      {
        sub_25B08C230((v17 > 1), v18 + 1, 1);
        v10 = v69;
      }

      ++v11;
      *(v10 + 2) = v18 + 1;
      v19 = &v10[72 * v18];
      *(v19 + 2) = v76[0];
      v20 = v76[1];
      v21 = v76[2];
      v22 = v76[3];
      *(v19 + 12) = v77;
      *(v19 + 4) = v21;
      *(v19 + 5) = v22;
      *(v19 + 3) = v20;
      v13 += v50;
    }

    while (v9 != v11);
  }

  v23 = sub_25B0DB7AC(v10);

  v24 = *(v23 + 16);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v26 = MEMORY[0x277D84F90];
    v27 = sub_25B0B3478(*(v23 + 16), 0);
    v51 = sub_25B0B3888(&v69, v27 + 32, v24, v23);

    sub_25B043EC8();
    if (v51 != v24)
    {
LABEL_24:
      __break(1u);

      __break(1u);
      return result;
    }

    v25 = v26;
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  v69 = v27;
  v26 = 0;
  sub_25B0D7934(&v69, v52);

  v28 = v69;
  v29 = *(v69 + 2);
  if (v29)
  {
    v75 = v25;
    sub_25B08C230(0, v29, 0);
    v46 = *(v28 + 2);
    if (v46)
    {
      v30 = 0;
      v31 = v75;
      v47 = (v29 - 1);
      v48 = v28;
      v26 = 32;
      while (v30 < *(v28 + 2))
      {
        v59[0] = *&v28[v26];
        v32 = *&v28[v26 + 16];
        v33 = *&v28[v26 + 32];
        v34 = *&v28[v26 + 48];
        v60 = *&v28[v26 + 64];
        v59[2] = v33;
        v59[3] = v34;
        v59[1] = v32;
        v35 = *&v28[v26 + 48];
        v56 = *&v28[v26 + 32];
        v57 = v35;
        v58 = *&v28[v26 + 64];
        v36 = *&v28[v26 + 16];
        v54 = *&v28[v26];
        v55 = v36;
        memmove(v61, &v28[v26], 0x48uLL);
        v65 = v61[1];
        v66 = v61[2];
        v67 = v61[3];
        v64 = v61[0];
        v73 = v57;
        v72 = v56;
        v71 = v55;
        v68 = v62;
        v63 = v30;
        v69 = v30;
        v74 = v58;
        v70 = v54;
        sub_25B08CEB4(v59, v53);
        sub_25B08CEB4(v61, v53);
        sub_25B058448(&v69, &qword_27FA318F0, &qword_25B0E7800);
        v51 = v64;
        v52 = v63;
        v37 = *(&v64 + 1);
        v38 = *(&v65 + 1);
        v49 = v66;
        v50 = v65;
        v39 = *(&v66 + 1);
        v40 = *(&v67 + 1);

        sub_25B058448(&v63, &qword_27FA318F0, &qword_25B0E7800);
        v75 = v31;
        v42 = *(v31 + 16);
        v41 = *(v31 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_25B08C230((v41 > 1), v42 + 1, 1);
          v31 = v75;
        }

        *(v31 + 16) = v42 + 1;
        v43 = (v31 + 72 * v42);
        v44 = v50;
        v43[4] = v51;
        v43[5] = v37;
        v43[6] = v44;
        v43[7] = v38;
        v43[8] = v49;
        v43[9] = v39;
        v43[10] = MEMORY[0x277D84F98];
        v43[11] = v40;
        v43[12] = v52;
        if (v47 == v30)
        {

          return v31;
        }

        ++v30;
        v26 += 72;
        v28 = v48;
        if (v46 == v30)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  return MEMORY[0x277D84F90];
}

BOOL sub_25B0D72D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_25B0E2730();
  v4 = [v3 curationPlacements];

  if (v4)
  {
    sub_25B046E60(0, &qword_27FA31E08, 0x277D2C020);
    v5 = sub_25B0E37F0();
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = sub_25B0E2730();
  v7 = [v6 hasFilteredPlacements];

  v8 = v5 >> 62;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_33;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B0E3CC0())
    {
      v10 = 0;
      v11 = v5 & 0xC000000000000001;
      v12 = v5 & 0xFFFFFFFFFFFFFF8;
      v24 = v5;
      while (1)
      {
        if (v11)
        {
          v13 = MEMORY[0x25F860730](v10, v5);
        }

        else
        {
          if (v10 >= *(v12 + 16))
          {
            goto LABEL_32;
          }

          v13 = *(v5 + 8 * v10 + 32);
        }

        v14 = v13;
        v15 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        [v13 placement];
        if (v22 == a2)
        {
          [v14 placement];

          v5 = v24;
          if (v23 == 4000)
          {
            v20 = 1;
            goto LABEL_35;
          }
        }

        else
        {
        }

        ++v10;
        if (v15 == i)
        {
          goto LABEL_34;
        }
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

LABEL_34:
    v20 = 0;
  }

  else
  {
    if (v8)
    {
      v16 = sub_25B0E3CC0();
    }

    else
    {
      v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = 0;
    do
    {
      v20 = v16 != v17;
      if (v16 == v17)
      {
        break;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x25F860730](v17, v5);
      }

      else
      {
        if (v17 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v18 = *(v5 + 8 * v17 + 32);
      }

      v19 = v18;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      [v18 placement];

      ++v17;
    }

    while (v22 != a2);
  }

LABEL_35:

  return v20;
}

uint64_t sub_25B0D7564(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[6];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[6];
  v8 = sub_25B0E3A10();
  v9 = sub_25B0D4838(v8, v4);

  if (v9)
  {
    sub_25B0E3A20();
  }

  sub_25B04C9BC();
  v10 = sub_25B0E3B30();
  if ((v10 + 1) < 3)
  {
    return 1u >> ((v10 + 1) & 7);
  }

  type metadata accessor for ComparisonResult(0);
  result = sub_25B0E3E60();
  __break(1u);
  return result;
}

uint64_t sub_25B0D76CC()
{
  v1 = *v0;
  sub_25B0E3F10();
  sub_25B0DB2E0(v3, v1);
  return sub_25B0E3F50();
}

uint64_t sub_25B0D771C()
{
  v1 = *v0;
  sub_25B0E3F10();
  sub_25B0DB2E0(v3, v1);
  return sub_25B0E3F50();
}

unint64_t sub_25B0D7770()
{
  result = qword_27FA32E88;
  if (!qword_27FA32E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32E88);
  }

  return result;
}

uint64_t sub_25B0D77C4(char **a1)
{
  v1 = a1;
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25B0D40A4(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v21[0] = (v2 + 32);
  v21[1] = v3;
  result = sub_25B0E3E10();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v18 = v2;
      v19 = v1;
      v9 = -1;
      v10 = 1;
      v11 = (v2 + 32);
      do
      {
        result = *&v4[8 * v10];
        v12 = v9;
        v13 = v11;
        do
        {
          v14 = *v13;
          v15 = sub_25B0D5424(result);
          result = sub_25B0D5424(v14);
          if (v15 >= result)
          {
            break;
          }

          v16 = *v13;
          result = v13[1];
          *v13 = result;
          v13[1] = v16;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v10;
        ++v11;
        --v9;
      }

      while (v10 != v3);
      v1 = v19;
      v2 = v18;
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for NTKFaceCurationGroup(0);
      v8 = sub_25B0E3820();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v20[0] = v8 + 32;
    v20[1] = v7;
    sub_25B0D8308(v20, v22, v21, v6);
    *(v8 + 16) = 0;
  }

  *v1 = v2;
  return result;
}

uint64_t sub_25B0D7934(char **a1, uint64_t a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_25B0D40E0(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  result = sub_25B0D7A50(v7, a2);
  *a1 = v4;
  return result;
}

uint64_t sub_25B0D79A8(void **a1)
{
  v2 = *(type metadata accessor for BucketedFace(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25B0D40F4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25B0D7B54(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25B0D7A50(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  result = sub_25B0E3E10();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        v7 = sub_25B0E3820();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = (v7 + 32);
      v9[1] = (v4 / 2);
      v8 = v7;
      sub_25B0D88D8(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_25B0D7C80(0, v4, 1, a1);
  }

  return result;
}

uint64_t sub_25B0D7B54(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_25B0E3E10();
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
        type metadata accessor for BucketedFace(0);
        v6 = sub_25B0E3820();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for BucketedFace(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25B0D9638(v8, v9, a1, v4);
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
    return sub_25B0D8048(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25B0D7C80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v4 = *a4;
  v5 = *a4 + 72 * a3;
  v6 = result - a3 + 1;
LABEL_5:
  v34 = a3;
  v7 = v6;
  for (i = v5; ; i -= 72)
  {
    v40[0] = *i;
    v9 = *(i + 16);
    v10 = *(i + 32);
    v11 = *(i + 48);
    v42 = *(i + 64);
    v40[2] = v10;
    v41 = v11;
    v40[1] = v9;
    v12 = *(i - 40);
    v13 = *(i - 24);
    v14 = *(i - 56);
    v45 = *(i - 8);
    v43[2] = v12;
    v44 = v13;
    v43[1] = v14;
    v43[0] = *(i - 72);
    v15 = v41;
    sub_25B08CEB4(v40, &v35);
    sub_25B08CEB4(v43, &v35);
    v16 = sub_25B0E3A10();
    v17 = v16;
    if ((v15 & 0xC000000000000001) != 0)
    {
      if (!sub_25B0E3CD0())
      {
        goto LABEL_24;
      }

      sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
      swift_dynamicCast();
      v18 = v35;

      if (!v18)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (!*(v15 + 16) || (v19 = sub_25B065C20(v16), (v20 & 1) == 0))
      {
LABEL_24:

        goto LABEL_25;
      }

      v18 = *(*(v15 + 56) + 8 * v19);

      if (!v18)
      {
        goto LABEL_25;
      }
    }

    *&v35 = 0;
    BYTE8(v35) = 1;
    sub_25B0E3A20();

    if (BYTE8(v35))
    {
      goto LABEL_25;
    }

    v46 = v35;
    v21 = v44;
    v22 = sub_25B0E3A10();
    v17 = v22;
    if ((v21 & 0xC000000000000001) != 0)
    {
      if (!sub_25B0E3CD0())
      {
        goto LABEL_24;
      }

      sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
      swift_dynamicCast();
      v23 = v35;

      if (!v23)
      {
        goto LABEL_25;
      }

LABEL_21:
      *&v35 = 0;
      BYTE8(v35) = 1;
      sub_25B0E3A20();

      if ((BYTE8(v35) & 1) == 0)
      {
        v26 = v35;
        sub_25B08CF10(v43);
        result = sub_25B08CF10(v40);
        if (v26 >= v46)
        {
          goto LABEL_4;
        }

        goto LABEL_27;
      }

      goto LABEL_25;
    }

    if (!*(v21 + 16))
    {
      goto LABEL_24;
    }

    v24 = sub_25B065C20(v22);
    if ((v25 & 1) == 0)
    {
      goto LABEL_24;
    }

    v23 = *(*(v21 + 56) + 8 * v24);

    if (v23)
    {
      goto LABEL_21;
    }

LABEL_25:
    v35 = v40[0];
    sub_25B04C9BC();
    v26 = sub_25B0E3B30();
    type metadata accessor for ComparisonResult(0);
    if (v26 != -1)
    {
      if (v26 >= 2)
      {
        goto LABEL_33;
      }

      sub_25B08CF10(v43);
      result = sub_25B08CF10(v40);
LABEL_4:
      a3 = v34 + 1;
      v5 += 72;
      --v6;
      if (v34 + 1 == a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    sub_25B08CF10(v43);
    result = sub_25B08CF10(v40);
LABEL_27:
    if (!v4)
    {
      break;
    }

    v27 = i - 72;
    v36 = *(i + 16);
    v37 = *(i + 32);
    v38 = *(i + 48);
    v39 = *(i + 64);
    v35 = *i;
    v28 = *(i - 24);
    *(i + 32) = *(i - 40);
    *(i + 48) = v28;
    *(i + 64) = *(i - 8);
    v29 = *(i - 56);
    *i = *(i - 72);
    *(i + 16) = v29;
    *v27 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    *(v27 + 64) = v39;
    *(v27 + 32) = v31;
    *(v27 + 48) = v32;
    *(v27 + 16) = v30;
    if (!v7)
    {
      goto LABEL_4;
    }

    ++v7;
  }

  __break(1u);
LABEL_33:
  *&v35 = v26;
  result = sub_25B0E3E60();
  __break(1u);
  return result;
}

uint64_t sub_25B0D8048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v46 = type metadata accessor for BucketedFace(0);
  v8 = *(*(v46 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v46);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v38 - v13);
  result = MEMORY[0x28223BE20](v12);
  v18 = (&v38 - v17);
  v40 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v45 = v19;
    v39 = v20;
    v24 = v19 + v20 * a3;
LABEL_6:
    v43 = v21;
    v44 = a3;
    v41 = v24;
    v42 = v23;
    while (1)
    {
      sub_25B0DC234(v24, v18, type metadata accessor for BucketedFace);
      sub_25B0DC234(v21, v14, type metadata accessor for BucketedFace);
      v25 = v18[5];
      v26 = v14[5];
      v27 = v26 < v25;
      if (v26 == v25)
      {
        v28 = v18[2];
        v29 = v14[2];
        v27 = v29 < v28;
        if (v29 == v28)
        {
          v30 = v18[3];
          v31 = v14[3];
          v27 = v31 < v30;
          if (v31 == v30)
          {
            v32 = v18[4];
            v33 = v14[4];
            v27 = v33 < v32;
            if (v33 == v32)
            {
              v34 = v18[6];
              v35 = v14[6];
              v27 = v35 < v34;
              if (v35 == v34)
              {
                sub_25B0DC29C(v14, type metadata accessor for BucketedFace);
                result = sub_25B0DC29C(v18, type metadata accessor for BucketedFace);
LABEL_5:
                a3 = v44 + 1;
                v21 = v43 + v39;
                v23 = v42 - 1;
                v24 = v41 + v39;
                if (v44 + 1 == v40)
                {
                  return result;
                }

                goto LABEL_6;
              }
            }
          }
        }
      }

      v36 = v27;
      sub_25B0DC29C(v14, type metadata accessor for BucketedFace);
      result = sub_25B0DC29C(v18, type metadata accessor for BucketedFace);
      if ((v36 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v45)
      {
        break;
      }

      sub_25B0DC2FC(v24, v11, type metadata accessor for BucketedFace);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_25B0DC2FC(v11, v21, type metadata accessor for BucketedFace);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25B0D8308(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_91:
    v6 = *v92;
    if (!*v92)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_25B0D3F4C(v8);
      v8 = result;
    }

    v83 = *(v8 + 2);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = *&v8[16 * v83];
        v85 = *&v8[16 * v83 + 24];
        sub_25B0DA024((*a3 + 8 * v84), (*a3 + 8 * *&v8[16 * v83 + 16]), (*a3 + 8 * v85), v6);
        if (v5)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_25B0D3F4C(v8);
        }

        if (v83 - 2 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v86 = &v8[16 * v83];
        *v86 = v84;
        *(v86 + 1) = v85;
        result = sub_25B0D3EC0(v83 - 1);
        v83 = *(v8 + 2);
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_127;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v90 = v5;
      v11 = (*a3 + 8 * v7);
      v13 = *v11;
      v12 = v11 + 2;
      v14 = sub_25B0D5424(*(*a3 + 8 * v10));
      result = sub_25B0D5424(v13);
      v15 = result;
      v88 = v7;
      v16 = (v7 + 2);
      while (v6 != v16)
      {
        v17 = *(v12 - 1);
        v18 = sub_25B0D5424(*v12);
        result = sub_25B0D5424(v17);
        v16 = (v16 + 1);
        ++v12;
        if (v14 < v15 == v18 >= result)
        {
          v6 = v16 - 1;
          break;
        }
      }

      v5 = v90;
      if (v14 >= v15)
      {
        v10 = v6;
        v9 = v88;
      }

      else
      {
        v9 = v88;
        if (v6 < v88)
        {
          goto LABEL_120;
        }

        if (v88 < v6)
        {
          v19 = v6 - 1;
          v20 = v88;
          do
          {
            if (v20 != v19)
            {
              v23 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v21 = *(v23 + 8 * v20);
              *(v23 + 8 * v20) = *(v23 + 8 * v19);
              *(v23 + 8 * v19) = v21;
            }
          }

          while (++v20 < v19--);
        }

        v10 = v6;
      }
    }

    v24 = a3[1];
    if (v10 < v24)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_119;
      }

      if (v10 - v9 < a4)
      {
        v25 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_121;
        }

        if (v25 >= v24)
        {
          v25 = a3[1];
        }

        if (v25 < v9)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v10 != v25)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v10 < v9)
    {
      goto LABEL_118;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v36 = v5;
    if ((result & 1) == 0)
    {
      result = sub_25B08993C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v38 = *(v8 + 2);
    v37 = *(v8 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_25B08993C((v37 > 1), v38 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v39;
    v40 = &v8[16 * v38];
    *(v40 + 4) = v9;
    *(v40 + 5) = v10;
    v41 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    v7 = v10;
    if (v38)
    {
      v5 = v36;
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v8 + 4);
          v44 = *(v8 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_60:
          if (v46)
          {
            goto LABEL_107;
          }

          v59 = &v8[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_110;
          }

          v65 = &v8[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_114;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        v69 = &v8[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_74:
        if (v64)
        {
          goto LABEL_109;
        }

        v72 = &v8[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_112;
        }

        if (v75 < v63)
        {
          goto LABEL_4;
        }

LABEL_81:
        v80 = v42 - 1;
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_125;
        }

        v6 = *&v8[16 * v80 + 32];
        v81 = *&v8[16 * v42 + 40];
        sub_25B0DA024((*a3 + 8 * v6), (*a3 + 8 * *&v8[16 * v42 + 32]), (*a3 + 8 * v81), v41);
        if (v5)
        {
        }

        if (v81 < v6)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_25B0D3F4C(v8);
        }

        if (v80 >= *(v8 + 2))
        {
          goto LABEL_104;
        }

        v82 = &v8[16 * v80];
        *(v82 + 4) = v6;
        *(v82 + 5) = v81;
        result = sub_25B0D3EC0(v42);
        v39 = *(v8 + 2);
        if (v39 <= 1)
        {
          goto LABEL_4;
        }
      }

      v47 = &v8[16 * v39 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_105;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_106;
      }

      v54 = &v8[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_108;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_111;
      }

      if (v58 >= v50)
      {
        v76 = &v8[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_115;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_60;
    }

    v5 = v36;
LABEL_4:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v89 = v9;
  v91 = v5;
  v26 = *a3;
  v27 = *a3 + 8 * v10 - 8;
  v6 = v9 - v10;
  v93 = v25;
LABEL_32:
  v28 = v10;
  v29 = *(v26 + 8 * v10);
  v30 = v6;
  v31 = v27;
  while (1)
  {
    v32 = *v31;
    v33 = sub_25B0D5424(v29);
    result = sub_25B0D5424(v32);
    if (v33 >= result)
    {
LABEL_31:
      v10 = v28 + 1;
      v27 += 8;
      --v6;
      if ((v28 + 1) != v93)
      {
        goto LABEL_32;
      }

      v10 = v93;
      v9 = v89;
      v5 = v91;
      goto LABEL_39;
    }

    if (!v26)
    {
      break;
    }

    v34 = *v31;
    v29 = v31[1];
    *v31 = v29;
    v31[1] = v34;
    --v31;
    v35 = __CFADD__(v30, 1);
    v30 = (v30 + 1);
    if (v35)
    {
      goto LABEL_31;
    }
  }

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
  return result;
}

uint64_t sub_25B0D88D8(char **a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v178 = a5;
  v8 = a3;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_139:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_179;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_141;
    }

    goto LABEL_173;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v10;
    v13 = v10 + 1;
    v130 = v10;
    if ((v10 + 1) >= v9)
    {
      v22 = (v10 + 1);
    }

    else
    {
      v5 = *v8;
      v14 = *v8 + 72 * v13;
      v167 = *v14;
      v15 = *(v14 + 16);
      v16 = *(v14 + 32);
      v17 = *(v14 + 48);
      v171 = *(v14 + 64);
      v169 = v16;
      v170 = v17;
      v168 = v15;
      v163 = *(v14 + 16);
      v164 = *(v14 + 32);
      v165 = *(v14 + 48);
      v166 = *(v14 + 64);
      v162 = *v14;
      v18 = v5 + 72 * v12;
      v172 = *v18;
      v20 = *(v18 + 32);
      v19 = *(v18 + 48);
      v21 = *(v18 + 16);
      v176 = *(v18 + 64);
      v174 = v20;
      v175 = v19;
      v173 = v21;
      v158 = *(v18 + 16);
      v159 = *(v18 + 32);
      v160 = *(v18 + 48);
      v161 = *(v18 + 64);
      v157 = *v18;
      sub_25B08CEB4(&v167, &v152);
      sub_25B08CEB4(&v172, &v152);
      v135 = sub_25B0D7564(&v162, &v157);
      if (v7)
      {
        v149 = v159;
        v150 = v160;
        v151 = v161;
        v147 = v157;
        v148 = v158;
        sub_25B08CF10(&v147);
        v154 = v164;
        v155 = v165;
        v156 = v166;
        v152 = v162;
        v153 = v163;
        sub_25B08CF10(&v152);
      }

      v149 = v159;
      v150 = v160;
      v151 = v161;
      v147 = v157;
      v148 = v158;
      sub_25B08CF10(&v147);
      v154 = v164;
      v155 = v165;
      v156 = v166;
      v152 = v162;
      v153 = v163;
      sub_25B08CF10(&v152);
      v22 = v12 + 2;
      if (v12 + 2 < v9)
      {
        v23 = v5 + 72 * v12 + 144;
        while (1)
        {
          v24 = v22;
          v139[0] = *v23;
          v25 = *(v23 + 16);
          v26 = *(v23 + 32);
          v27 = *(v23 + 48);
          v141 = *(v23 + 64);
          v140 = v27;
          v139[1] = v25;
          v139[2] = v26;
          v28 = *(v23 - 40);
          v29 = *(v23 - 24);
          v30 = *(v23 - 56);
          v146 = *(v23 - 8);
          v144 = v28;
          v145 = v29;
          v143 = v30;
          v142 = *(v23 - 72);
          v31 = v140;
          sub_25B08CEB4(v139, v138);
          sub_25B08CEB4(&v142, v138);
          v32 = sub_25B0E3A10();
          v33 = v32;
          if ((v31 & 0xC000000000000001) != 0)
          {
            if (!sub_25B0E3CD0())
            {
              goto LABEL_28;
            }

            sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
            swift_dynamicCast();
            v34 = *&v138[0];

            if (!v34)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (!*(v31 + 16) || (v35 = sub_25B065C20(v32), (v36 & 1) == 0))
            {
LABEL_28:

LABEL_29:
              v138[0] = v139[0];
              sub_25B04C9BC();
              v5 = sub_25B0E3B30();
              type metadata accessor for ComparisonResult(0);
              if (v5 < 2)
              {
                sub_25B08CF10(&v142);
                sub_25B08CF10(v139);
                v22 = v24;
                if (v135)
                {
                  v13 = v24 - 1;
                  goto LABEL_38;
                }
              }

              else
              {
                if (v5 != -1)
                {
                  *&v138[0] = v5;
                  goto LABEL_182;
                }

                v22 = v24;
                sub_25B08CF10(&v142);
                sub_25B08CF10(v139);
                if ((v135 & 1) == 0)
                {
                  goto LABEL_46;
                }
              }

              goto LABEL_9;
            }

            v34 = *(*(v31 + 56) + 8 * v35);

            if (!v34)
            {
              goto LABEL_29;
            }
          }

          *&v138[0] = 0;
          BYTE8(v138[0]) = 1;
          sub_25B0E3A20();

          if (BYTE8(v138[0]))
          {
            goto LABEL_29;
          }

          v133 = *&v138[0];
          v37 = v145;
          v38 = sub_25B0E3A10();
          v33 = v38;
          if ((v37 & 0xC000000000000001) != 0)
          {
            if (!sub_25B0E3CD0())
            {
              goto LABEL_28;
            }

            sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
            swift_dynamicCast();
            v39 = *&v138[0];

            if (!v39)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (!*(v37 + 16))
            {
              goto LABEL_28;
            }

            v40 = sub_25B065C20(v38);
            if ((v41 & 1) == 0)
            {
              goto LABEL_28;
            }

            v39 = *(*(v37 + 56) + 8 * v40);

            if (!v39)
            {
              goto LABEL_29;
            }
          }

          *&v138[0] = 0;
          BYTE8(v138[0]) = 1;
          sub_25B0E3A20();

          if (BYTE8(v138[0]))
          {
            goto LABEL_29;
          }

          v5 = *&v138[0];
          sub_25B08CF10(&v142);
          sub_25B08CF10(v139);
          v22 = v24;
          if (((v135 ^ (v5 >= v133)) & 1) == 0)
          {
            v13 = v24 - 1;
            if ((v135 & 1) == 0)
            {
              goto LABEL_46;
            }

            goto LABEL_38;
          }

LABEL_9:
          ++v22;
          v23 += 72;
          if (v9 == v22)
          {
            v13 = (v22 - 1);
            v22 = v9;
            break;
          }
        }
      }

      if ((v135 & 1) == 0)
      {
        goto LABEL_46;
      }

LABEL_38:
      v12 = v130;
      if (v22 < v130)
      {
        goto LABEL_170;
      }

      if (v130 <= v13)
      {
        v9 = v130;
        v42 = 72 * v22 - 72;
        v43 = 72 * v130;
        v44 = v22;
        do
        {
          if (v9 != --v44)
          {
            v45 = *a3;
            if (!*a3)
            {
              goto LABEL_176;
            }

            v5 = v45 + v42;
            v143 = *(v45 + v43 + 16);
            v144 = *(v45 + v43 + 32);
            v145 = *(v45 + v43 + 48);
            v146 = *(v45 + v43 + 64);
            v142 = *(v45 + v43);
            memmove((v45 + v43), (v45 + v42), 0x48uLL);
            *(v5 + 16) = v143;
            *(v5 + 32) = v144;
            *(v5 + 48) = v145;
            *(v5 + 64) = v146;
            *v5 = v142;
          }

          ++v9;
          v42 -= 72;
          v43 += 72;
        }

        while (v9 < v44);
        v8 = a3;
LABEL_46:
        v12 = v130;
      }
    }

    v46 = v8[1];
    if (v22 < v46)
    {
      if (__OFSUB__(v22, v12))
      {
        goto LABEL_169;
      }

      if (v22 - v12 < a4)
      {
        break;
      }
    }

LABEL_86:
    if (v22 < v12)
    {
      goto LABEL_168;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_25B08993C(0, *(v11 + 2) + 1, 1, v11);
    }

    v79 = *(v11 + 2);
    v78 = *(v11 + 3);
    v5 = v79 + 1;
    if (v79 >= v78 >> 1)
    {
      v11 = sub_25B08993C((v78 > 1), v79 + 1, 1, v11);
    }

    *(v11 + 2) = v5;
    v80 = &v11[16 * v79];
    *(v80 + 4) = v130;
    *(v80 + 5) = v22;
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_178;
    }

    v137 = v22;
    if (v79)
    {
      while (1)
      {
        v81 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v82 = *(v11 + 4);
          v83 = *(v11 + 5);
          v92 = __OFSUB__(v83, v82);
          v84 = v83 - v82;
          v85 = v92;
LABEL_106:
          if (v85)
          {
            goto LABEL_157;
          }

          v98 = &v11[16 * v5];
          v100 = *v98;
          v99 = *(v98 + 1);
          v101 = __OFSUB__(v99, v100);
          v102 = v99 - v100;
          v103 = v101;
          if (v101)
          {
            goto LABEL_160;
          }

          v104 = &v11[16 * v81 + 32];
          v106 = *v104;
          v105 = *(v104 + 1);
          v92 = __OFSUB__(v105, v106);
          v107 = v105 - v106;
          if (v92)
          {
            goto LABEL_163;
          }

          if (__OFADD__(v102, v107))
          {
            goto LABEL_164;
          }

          if (v102 + v107 >= v84)
          {
            if (v84 < v107)
            {
              v81 = v5 - 2;
            }

            goto LABEL_127;
          }

          goto LABEL_120;
        }

        v108 = &v11[16 * v5];
        v110 = *v108;
        v109 = *(v108 + 1);
        v92 = __OFSUB__(v109, v110);
        v102 = v109 - v110;
        v103 = v92;
LABEL_120:
        if (v103)
        {
          goto LABEL_159;
        }

        v111 = &v11[16 * v81];
        v113 = *(v111 + 4);
        v112 = *(v111 + 5);
        v92 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v92)
        {
          goto LABEL_162;
        }

        if (v114 < v102)
        {
          goto LABEL_3;
        }

LABEL_127:
        v119 = v81 - 1;
        if (v81 - 1 >= v5)
        {
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
          goto LABEL_172;
        }

        if (!*v8)
        {
          goto LABEL_175;
        }

        v120 = *&v11[16 * v119 + 32];
        v121 = *&v11[16 * v81 + 40];
        sub_25B0DA274((*v8 + 72 * v120), (*v8 + 72 * *&v11[16 * v81 + 32]), (*v8 + 72 * v121), v9, v178);
        if (v7)
        {
        }

        if (v121 < v120)
        {
          goto LABEL_153;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_25B0D3F4C(v11);
        }

        if (v119 >= *(v11 + 2))
        {
          goto LABEL_154;
        }

        v122 = &v11[16 * v119];
        *(v122 + 4) = v120;
        *(v122 + 5) = v121;
        v177 = v11;
        sub_25B0D3EC0(v81);
        v11 = v177;
        v5 = *(v177 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v86 = &v11[16 * v5 + 32];
      v87 = *(v86 - 64);
      v88 = *(v86 - 56);
      v92 = __OFSUB__(v88, v87);
      v89 = v88 - v87;
      if (v92)
      {
        goto LABEL_155;
      }

      v91 = *(v86 - 48);
      v90 = *(v86 - 40);
      v92 = __OFSUB__(v90, v91);
      v84 = v90 - v91;
      v85 = v92;
      if (v92)
      {
        goto LABEL_156;
      }

      v93 = &v11[16 * v5];
      v95 = *v93;
      v94 = *(v93 + 1);
      v92 = __OFSUB__(v94, v95);
      v96 = v94 - v95;
      if (v92)
      {
        goto LABEL_158;
      }

      v92 = __OFADD__(v84, v96);
      v97 = v84 + v96;
      if (v92)
      {
        goto LABEL_161;
      }

      if (v97 >= v89)
      {
        v115 = &v11[16 * v81 + 32];
        v117 = *v115;
        v116 = *(v115 + 1);
        v92 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v92)
        {
          goto LABEL_165;
        }

        if (v84 < v118)
        {
          v81 = v5 - 2;
        }

        goto LABEL_127;
      }

      goto LABEL_106;
    }

LABEL_3:
    v9 = v8[1];
    v10 = v137;
    if (v137 >= v9)
    {
      goto LABEL_139;
    }
  }

  if (__OFADD__(v12, a4))
  {
    goto LABEL_171;
  }

  if (v12 + a4 >= v46)
  {
    v47 = v8[1];
  }

  else
  {
    v47 = v12 + a4;
  }

  if (v47 < v12)
  {
LABEL_172:
    __break(1u);
LABEL_173:
    v11 = sub_25B0D3F4C(v11);
LABEL_141:
    v177 = v11;
    v5 = *(v11 + 2);
    if (v5 >= 2)
    {
      while (1)
      {
        v123 = *v8;
        if (!*v8)
        {
          goto LABEL_177;
        }

        v124 = *&v11[16 * v5];
        v8 = *&v11[16 * v5 + 24];
        sub_25B0DA274((v123 + 72 * v124), (v123 + 72 * *&v11[16 * v5 + 16]), (v123 + 72 * v8), v9, v178);
        if (v7)
        {
        }

        if (v8 < v124)
        {
          goto LABEL_166;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_25B0D3F4C(v11);
        }

        if (v5 - 2 >= *(v11 + 2))
        {
          goto LABEL_167;
        }

        v125 = &v11[16 * v5];
        *v125 = v124;
        *(v125 + 1) = v8;
        v177 = v11;
        sub_25B0D3EC0(v5 - 1);
        v11 = v177;
        v5 = *(v177 + 2);
        v8 = a3;
        if (v5 <= 1)
        {
        }
      }
    }
  }

  if (v22 == v47)
  {
    goto LABEL_86;
  }

  v127 = v7;
  v48 = v22;
  v49 = *v8;
  v50 = *v8 + 72 * v48;
  v136 = v48;
  v51 = v12 - v48 + 1;
  v131 = v47;
LABEL_58:
  v52 = v51;
  for (i = v50; ; i -= 72)
  {
    v167 = *i;
    v54 = *(i + 16);
    v55 = *(i + 32);
    v56 = *(i + 48);
    v171 = *(i + 64);
    v169 = v55;
    v170 = v56;
    v168 = v54;
    v57 = *(i - 40);
    v58 = *(i - 24);
    v59 = *(i - 56);
    v176 = *(i - 8);
    v174 = v57;
    v175 = v58;
    v173 = v59;
    v172 = *(i - 72);
    v60 = v170;
    sub_25B08CEB4(&v167, &v162);
    sub_25B08CEB4(&v172, &v162);
    v61 = sub_25B0E3A10();
    v9 = v61;
    if ((v60 & 0xC000000000000001) != 0)
    {
      v62 = sub_25B0E3CD0();
      if (!v62)
      {
        goto LABEL_77;
      }

      *&v157 = v62;
      sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
      swift_dynamicCast();
      v63 = v162;

      if (!v63)
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (!*(v60 + 16) || (v64 = sub_25B065C20(v61), (v65 & 1) == 0))
      {
LABEL_77:

        goto LABEL_78;
      }

      v63 = *(*(v60 + 56) + 8 * v64);

      if (!v63)
      {
        goto LABEL_78;
      }
    }

    *&v162 = 0;
    BYTE8(v162) = 1;
    sub_25B0E3A20();

    if (BYTE8(v162))
    {
      goto LABEL_78;
    }

    v134 = v162;
    v66 = v175;
    v67 = sub_25B0E3A10();
    v9 = v67;
    if ((v66 & 0xC000000000000001) != 0)
    {
      v68 = sub_25B0E3CD0();
      if (!v68)
      {
        goto LABEL_77;
      }

      *&v157 = v68;
      sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
      swift_dynamicCast();
      v69 = v162;

      if (!v69)
      {
        goto LABEL_78;
      }

LABEL_74:
      *&v162 = 0;
      BYTE8(v162) = 1;
      sub_25B0E3A20();

      if ((BYTE8(v162) & 1) == 0)
      {
        v5 = v162;
        sub_25B08CF10(&v172);
        sub_25B08CF10(&v167);
        if (v5 >= v134)
        {
          goto LABEL_57;
        }

        goto LABEL_80;
      }

      goto LABEL_78;
    }

    if (!*(v66 + 16))
    {
      goto LABEL_77;
    }

    v70 = sub_25B065C20(v67);
    if ((v71 & 1) == 0)
    {
      goto LABEL_77;
    }

    v69 = *(*(v66 + 56) + 8 * v70);

    if (v69)
    {
      goto LABEL_74;
    }

LABEL_78:
    v162 = v167;
    v157 = v172;
    sub_25B04C9BC();
    v5 = sub_25B0E3B30();
    type metadata accessor for ComparisonResult(0);
    if (v5 != -1)
    {
      if (v5 >= 2)
      {
        goto LABEL_180;
      }

      sub_25B08CF10(&v172);
      sub_25B08CF10(&v167);
LABEL_57:
      v50 += 72;
      --v51;
      if (++v136 == v131)
      {
        v22 = v131;
        v7 = v127;
        v8 = a3;
        v12 = v130;
        goto LABEL_86;
      }

      goto LABEL_58;
    }

    sub_25B08CF10(&v172);
    sub_25B08CF10(&v167);
LABEL_80:
    if (!v49)
    {
      break;
    }

    v72 = i - 72;
    v163 = *(i + 16);
    v164 = *(i + 32);
    v165 = *(i + 48);
    v166 = *(i + 64);
    v162 = *i;
    v73 = *(i - 24);
    *(i + 32) = *(i - 40);
    *(i + 48) = v73;
    *(i + 64) = *(i - 8);
    v74 = *(i - 56);
    *i = *(i - 72);
    *(i + 16) = v74;
    *v72 = v162;
    v75 = v163;
    v76 = v164;
    v77 = v165;
    *(v72 + 64) = v166;
    *(v72 + 32) = v76;
    *(v72 + 48) = v77;
    *(v72 + 16) = v75;
    if (!v52)
    {
      goto LABEL_57;
    }

    ++v52;
  }

  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  *&v162 = v5;
LABEL_182:
  result = sub_25B0E3E60();
  __break(1u);
  return result;
}

uint64_t sub_25B0D9638(unint64_t *a1, uint64_t a2, char *a3, unint64_t a4)
{
  v5 = v4;
  v127 = a1;
  v141 = type metadata accessor for BucketedFace(0);
  v138 = *(v141 - 8);
  v8 = *(v138 + 64);
  v9 = MEMORY[0x28223BE20](v141);
  v130 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v140 = &v124 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v124 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v124 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v135 = (&v124 - v20);
  result = MEMORY[0x28223BE20](v19);
  v134 = &v124 - v22;
  v23 = *(a3 + 1);
  if (v23 < 1)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_118:
    a4 = *v127;
    if (!*v127)
    {
      goto LABEL_157;
    }

    v23 = v25;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v23;
      goto LABEL_121;
    }

LABEL_151:
    result = sub_25B0D3F4C(v23);
LABEL_121:
    v142 = result;
    v23 = *(result + 16);
    if (v23 >= 2)
    {
      while (*a3)
      {
        v120 = *(result + 16 * v23);
        v121 = result;
        v122 = *(result + 16 * (v23 - 1) + 40);
        sub_25B0DAA1C(*a3 + *(v138 + 72) * v120, *a3 + *(v138 + 72) * *(result + 16 * (v23 - 1) + 32), *a3 + *(v138 + 72) * v122, a4);
        if (v5)
        {
        }

        if (v122 < v120)
        {
          goto LABEL_144;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = sub_25B0D3F4C(v121);
        }

        if ((v23 - 2) >= *(v121 + 2))
        {
          goto LABEL_145;
        }

        v123 = &v121[16 * v23];
        *v123 = v120;
        *(v123 + 1) = v122;
        v142 = v121;
        sub_25B0D3EC0(v23 - 1);
        result = v142;
        v23 = *(v142 + 16);
        if (v23 <= 1)
        {
        }
      }

      goto LABEL_155;
    }
  }

  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  v128 = a3;
  v126 = a4;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    v131 = v25;
    if (v27 >= v23)
    {
      v47 = v27;
    }

    else
    {
      a4 = v26;
      v28 = *a3;
      v29 = *(v138 + 72);
      v30 = (v28 + v29 * v27);
      result = sub_25B0D6564(v30, (v28 + v29 * a4));
      LODWORD(v136) = result;
      if (v5)
      {
      }

      v139 = v23;
      v124 = a4;
      v125 = 0;
      v23 = a4 + 2;
      v31 = v28 + v29 * (a4 + 2);
      v32 = v29;
      v137 = v29;
      while (v139 != v23)
      {
        a4 = v134;
        sub_25B0DC234(v31, v134, type metadata accessor for BucketedFace);
        v33 = v135;
        sub_25B0DC234(v30, v135, type metadata accessor for BucketedFace);
        v34 = *(a4 + 16);
        v35 = *(a4 + 24);
        v36 = *(a4 + 32);
        v37 = *(a4 + 40);
        v38 = v33[2];
        v39 = v33[3];
        v40 = v33[4];
        v41 = v33[5];
        v42 = v40 == v36;
        v43 = v40 < v36;
        if (v42)
        {
          v43 = v33[6] < *(a4 + 48);
        }

        v42 = v39 == v35;
        v44 = v39 < v35;
        if (v42)
        {
          v44 = v43;
        }

        v42 = v38 == v34;
        v45 = v38 < v34;
        if (v42)
        {
          v45 = v44;
        }

        if (v41 == v37)
        {
          v46 = v45;
        }

        else
        {
          v46 = v41 < v37;
        }

        sub_25B0DC29C(v33, type metadata accessor for BucketedFace);
        result = sub_25B0DC29C(a4, type metadata accessor for BucketedFace);
        v32 = v137;
        ++v23;
        v31 += v137;
        v30 = (v30 + v137);
        if ((v136 & 1) != v46)
        {
          v47 = v23 - 1;
          goto LABEL_21;
        }
      }

      v47 = v139;
LABEL_21:
      v26 = v124;
      v5 = v125;
      a3 = v128;
      if ((v136 & 1) == 0)
      {
        goto LABEL_34;
      }

      if (v47 < v124)
      {
        goto LABEL_150;
      }

      if (v124 < v47)
      {
        v23 = v32 * (v47 - 1);
        v48 = v47 * v32;
        v139 = v47;
        v49 = v47;
        v50 = v124;
        v51 = v124 * v32;
        do
        {
          if (v50 != --v49)
          {
            v52 = *v128;
            if (!*v128)
            {
              goto LABEL_154;
            }

            sub_25B0DC2FC(v52 + v51, v130, type metadata accessor for BucketedFace);
            if (v51 < v23 || v52 + v51 >= (v52 + v48))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v51 != v23)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_25B0DC2FC(v130, v52 + v23, type metadata accessor for BucketedFace);
            v32 = v137;
          }

          ++v50;
          v23 -= v32;
          v48 -= v32;
          v51 += v32;
        }

        while (v50 < v49);
        v5 = v125;
        a4 = v126;
        a3 = v128;
        v26 = v124;
        v47 = v139;
      }

      else
      {
LABEL_34:
        a4 = v126;
      }
    }

    v53 = *(a3 + 1);
    if (v47 >= v53)
    {
      goto LABEL_45;
    }

    if (__OFSUB__(v47, v26))
    {
      goto LABEL_147;
    }

    if (v47 - v26 >= a4)
    {
LABEL_45:
      v55 = v47;
      if (v47 < v26)
      {
        goto LABEL_146;
      }

      goto LABEL_46;
    }

    if (__OFADD__(v26, a4))
    {
      goto LABEL_148;
    }

    if ((v26 + a4) >= v53)
    {
      v54 = *(a3 + 1);
    }

    else
    {
      v54 = v26 + a4;
    }

    if (v54 < v26)
    {
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    if (v47 == v54)
    {
      goto LABEL_45;
    }

    v124 = v26;
    v125 = v5;
    v101 = *a3;
    v102 = *(v138 + 72);
    v103 = *a3 + v102 * (v47 - 1);
    v23 = -v102;
    v104 = v26 - v47;
    v139 = v47;
    v129 = v102;
    a4 = v101 + v47 * v102;
    v132 = v54;
LABEL_99:
    v133 = a4;
    v136 = v104;
    v137 = v103;
    v105 = v103;
LABEL_100:
    sub_25B0DC234(a4, v18, type metadata accessor for BucketedFace);
    sub_25B0DC234(v105, v15, type metadata accessor for BucketedFace);
    v106 = v18[5];
    v107 = v15[5];
    v108 = v107 < v106;
    if (v107 != v106)
    {
      break;
    }

    v109 = v18[2];
    v110 = v15[2];
    v108 = v110 < v109;
    if (v110 != v109)
    {
      break;
    }

    v111 = v18[3];
    v112 = v15[3];
    v108 = v112 < v111;
    if (v112 != v111)
    {
      break;
    }

    v113 = v18[4];
    v114 = v15[4];
    v108 = v114 < v113;
    if (v114 != v113)
    {
      break;
    }

    v115 = v18[6];
    v116 = v15[6];
    v108 = v116 < v115;
    if (v116 != v115)
    {
      break;
    }

    sub_25B0DC29C(v15, type metadata accessor for BucketedFace);
    sub_25B0DC29C(v18, type metadata accessor for BucketedFace);
LABEL_98:
    v103 = v137 + v129;
    v104 = v136 - 1;
    v55 = v132;
    a4 = v133 + v129;
    if (++v139 != v132)
    {
      goto LABEL_99;
    }

    v26 = v124;
    v5 = v125;
    a3 = v128;
    if (v132 < v124)
    {
      goto LABEL_146;
    }

LABEL_46:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v25 = v131;
    }

    else
    {
      result = sub_25B08993C(0, *(v131 + 2) + 1, 1, v131);
      v25 = result;
    }

    v23 = *(v25 + 2);
    v56 = *(v25 + 3);
    a4 = v23 + 1;
    if (v23 >= v56 >> 1)
    {
      result = sub_25B08993C((v56 > 1), v23 + 1, 1, v25);
      v25 = result;
    }

    *(v25 + 2) = a4;
    v57 = &v25[16 * v23];
    *(v57 + 4) = v26;
    *(v57 + 5) = v55;
    v139 = *v127;
    if (!v139)
    {
      goto LABEL_156;
    }

    v132 = v55;
    if (v23)
    {
      while (2)
      {
        v58 = a4 - 1;
        if (a4 >= 4)
        {
          v63 = &v25[16 * a4 + 32];
          v64 = *(v63 - 64);
          v65 = *(v63 - 56);
          v69 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          if (v69)
          {
            goto LABEL_133;
          }

          v68 = *(v63 - 48);
          v67 = *(v63 - 40);
          v69 = __OFSUB__(v67, v68);
          v61 = v67 - v68;
          v62 = v69;
          if (v69)
          {
            goto LABEL_134;
          }

          v70 = &v25[16 * a4];
          v72 = *v70;
          v71 = *(v70 + 1);
          v69 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v69)
          {
            goto LABEL_136;
          }

          v69 = __OFADD__(v61, v73);
          v74 = v61 + v73;
          if (v69)
          {
            goto LABEL_139;
          }

          if (v74 >= v66)
          {
            v92 = &v25[16 * v58 + 32];
            v94 = *v92;
            v93 = *(v92 + 1);
            v69 = __OFSUB__(v93, v94);
            v95 = v93 - v94;
            if (v69)
            {
              goto LABEL_143;
            }

            if (v61 < v95)
            {
              v58 = a4 - 2;
            }
          }

          else
          {
LABEL_65:
            if (v62)
            {
              goto LABEL_135;
            }

            v75 = &v25[16 * a4];
            v77 = *v75;
            v76 = *(v75 + 1);
            v78 = __OFSUB__(v76, v77);
            v79 = v76 - v77;
            v80 = v78;
            if (v78)
            {
              goto LABEL_138;
            }

            v81 = &v25[16 * v58 + 32];
            v83 = *v81;
            v82 = *(v81 + 1);
            v69 = __OFSUB__(v82, v83);
            v84 = v82 - v83;
            if (v69)
            {
              goto LABEL_141;
            }

            if (__OFADD__(v79, v84))
            {
              goto LABEL_142;
            }

            if (v79 + v84 < v61)
            {
              goto LABEL_79;
            }

            if (v61 < v84)
            {
              v58 = a4 - 2;
            }
          }
        }

        else
        {
          if (a4 == 3)
          {
            v59 = *(v25 + 4);
            v60 = *(v25 + 5);
            v69 = __OFSUB__(v60, v59);
            v61 = v60 - v59;
            v62 = v69;
            goto LABEL_65;
          }

          v85 = &v25[16 * a4];
          v87 = *v85;
          v86 = *(v85 + 1);
          v69 = __OFSUB__(v86, v87);
          v79 = v86 - v87;
          v80 = v69;
LABEL_79:
          if (v80)
          {
            goto LABEL_137;
          }

          v88 = &v25[16 * v58];
          v90 = *(v88 + 4);
          v89 = *(v88 + 5);
          v69 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v69)
          {
            goto LABEL_140;
          }

          if (v91 < v79)
          {
            break;
          }
        }

        v23 = v58 - 1;
        if (v58 - 1 >= a4)
        {
          __break(1u);
LABEL_131:
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        v96 = *a3;
        if (!*a3)
        {
          goto LABEL_153;
        }

        v97 = a3;
        a3 = v25;
        a4 = *&v25[16 * v23 + 32];
        v98 = *&v25[16 * v58 + 40];
        sub_25B0DAA1C(v96 + *(v138 + 72) * a4, v96 + *(v138 + 72) * *&v25[16 * v58 + 32], v96 + *(v138 + 72) * v98, v139);
        if (v5)
        {
        }

        if (v98 < a4)
        {
          goto LABEL_131;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v99 = a3;
        }

        else
        {
          v99 = sub_25B0D3F4C(a3);
        }

        if (v23 >= *(v99 + 2))
        {
          goto LABEL_132;
        }

        a3 = v97;
        v100 = &v99[16 * v23];
        *(v100 + 4) = a4;
        *(v100 + 5) = v98;
        v142 = v99;
        v23 = &v142;
        result = sub_25B0D3EC0(v58);
        v25 = v142;
        a4 = *(v142 + 16);
        if (a4 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v23 = *(a3 + 1);
    v24 = v132;
    a4 = v126;
    if (v132 >= v23)
    {
      goto LABEL_118;
    }
  }

  v117 = v108;
  sub_25B0DC29C(v15, type metadata accessor for BucketedFace);
  result = sub_25B0DC29C(v18, type metadata accessor for BucketedFace);
  if ((v117 & 1) == 0)
  {
    goto LABEL_98;
  }

  if (v101)
  {
    v118 = v140;
    sub_25B0DC2FC(a4, v140, type metadata accessor for BucketedFace);
    swift_arrayInitWithTakeFrontToBack();
    sub_25B0DC2FC(v118, v105, type metadata accessor for BucketedFace);
    v105 += v23;
    a4 += v23;
    if (__CFADD__(v104++, 1))
    {
      goto LABEL_98;
    }

    goto LABEL_100;
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
  return result;
}

uint64_t sub_25B0DA024(uint64_t *__dst, uint64_t *__src, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v4;
      v18 = sub_25B0D5424(*v6);
      if (v18 < sub_25B0D5424(v17))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    do
    {
      v26 = v6;
      v19 = v6 - 1;
      --v5;
      v20 = v14;
      while (1)
      {
        v21 = v5 + 1;
        v22 = *--v20;
        v6 = v19;
        v23 = *v19;
        v24 = sub_25B0D5424(v22);
        if (v24 < sub_25B0D5424(v23))
        {
          break;
        }

        if (v21 != v14)
        {
          *v5 = *v20;
        }

        --v5;
        v14 = v20;
        v19 = v6;
        if (v20 <= v4)
        {
          v14 = v20;
          v6 = v26;
          goto LABEL_35;
        }
      }

      if (v21 != v26)
      {
        *v5 = *v6;
      }
    }

    while (v14 > v4 && v6 > v7);
  }

LABEL_35:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_25B0DA274(char *__src, char *__dst, char *a3, char *a4, uint64_t a5)
{
  v72 = a5;
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src;
  v9 = __dst - __src;
  v10 = (__dst - __src) / 72;
  v11 = a3 - __dst;
  v12 = (a3 - __dst) / 72;
  if (v10 >= v12)
  {
    if (a4 != __dst || &__dst[72 * v12] <= a4)
    {
      memmove(a4, __dst, 72 * v12);
    }

    v13 = &v5[72 * v12];
    if (v11 < 72 || v7 <= v8)
    {
      goto LABEL_84;
    }

LABEL_44:
    v37 = v7 - 72;
    v38 = v13;
    while (1)
    {
      v13 = v38;
      v39 = v6;
      v62 = *(v38 - 72);
      v40 = *(v38 - 56);
      v41 = *(v38 - 40);
      v42 = *(v38 - 24);
      v66 = *(v38 - 8);
      v65 = v42;
      v63 = v40;
      v64 = v41;
      v43 = *(v7 - 24);
      v69 = *(v7 - 40);
      v70 = v43;
      v71 = *(v7 - 1);
      v44 = *(v7 - 56);
      v67 = *v37;
      v68 = v44;
      v45 = v42;
      sub_25B08CEB4(&v62, v61);
      sub_25B08CEB4(&v67, v61);
      v46 = sub_25B0E3A10();
      v47 = v46;
      if ((v45 & 0xC000000000000001) != 0)
      {
        if (!sub_25B0E3CD0())
        {
          goto LABEL_59;
        }

        sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
        swift_dynamicCast();
        v48 = *&v61[0];
      }

      else
      {
        if (!*(v45 + 16) || (v49 = sub_25B065C20(v46), (v50 & 1) == 0))
        {
LABEL_59:

          v6 -= 72;
LABEL_60:
          v61[0] = v62;
          sub_25B04C9BC();
          v14 = sub_25B0E3B30();
          type metadata accessor for ComparisonResult(0);
          if (v14 >= 2)
          {
            if (v14 != -1)
            {
              goto LABEL_90;
            }

            sub_25B08CF10(&v67);
            sub_25B08CF10(&v62);
LABEL_75:
            if (v39 < v7 || v6 >= v7 || v39 != v7)
            {
              memmove(v6, v7 - 72, 0x48uLL);
            }

            if (v13 <= v5 || (v7 -= 72, v37 <= v8))
            {
              v7 = v37;
              goto LABEL_84;
            }

            goto LABEL_44;
          }

          sub_25B08CF10(&v67);
          sub_25B08CF10(&v62);
          goto LABEL_62;
        }

        v48 = *(*(v45 + 56) + 8 * v49);
      }

      v6 -= 72;
      if (!v48)
      {
        goto LABEL_60;
      }

      *&v61[0] = 0;
      BYTE8(v61[0]) = 1;
      sub_25B0E3A20();

      if (BYTE8(v61[0]))
      {
        goto LABEL_60;
      }

      v60 = *&v61[0];
      v51 = v70;
      v52 = sub_25B0E3A10();
      v53 = v52;
      if ((v51 & 0xC000000000000001) != 0)
      {
        if (!sub_25B0E3CD0())
        {
          goto LABEL_72;
        }

        sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
        swift_dynamicCast();
        v54 = *&v61[0];

        if (!v54)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (!*(v51 + 16) || (v55 = sub_25B065C20(v52), (v56 & 1) == 0))
        {
LABEL_72:

          goto LABEL_60;
        }

        v54 = *(*(v51 + 56) + 8 * v55);

        if (!v54)
        {
          goto LABEL_60;
        }
      }

      *&v61[0] = 0;
      BYTE8(v61[0]) = 1;
      sub_25B0E3A20();

      if (BYTE8(v61[0]))
      {
        goto LABEL_60;
      }

      v57 = *&v61[0];
      sub_25B08CF10(&v67);
      sub_25B08CF10(&v62);
      if (v57 < v60)
      {
        goto LABEL_75;
      }

LABEL_62:
      v38 = (v13 - 72);
      if (v39 < v13 || v6 >= v13 || v13 != v39)
      {
        memmove(v6, v13 - 72, 0x48uLL);
      }

      if (v38 <= v5)
      {
        v13 -= 72;
        goto LABEL_84;
      }
    }
  }

  if (a4 != __src || &__src[72 * v10] <= a4)
  {
    memmove(a4, __src, 72 * v10);
  }

  v13 = &v5[72 * v10];
  if (v9 >= 72 && v7 < v6)
  {
    v14 = MEMORY[0x277D837D0];
    do
    {
      v62 = *v7;
      v15 = *(v7 + 1);
      v16 = *(v7 + 2);
      v17 = *(v7 + 3);
      v66 = *(v7 + 8);
      v65 = v17;
      v63 = v15;
      v64 = v16;
      v19 = *(v5 + 2);
      v18 = *(v5 + 3);
      v20 = *(v5 + 1);
      v71 = *(v5 + 8);
      v69 = v19;
      v70 = v18;
      v68 = v20;
      v67 = *v5;
      v21 = v65;
      sub_25B08CEB4(&v62, v61);
      sub_25B08CEB4(&v67, v61);
      v22 = sub_25B0E3A10();
      v23 = v22;
      if ((v21 & 0xC000000000000001) != 0)
      {
        if (!sub_25B0E3CD0())
        {
          goto LABEL_26;
        }

        sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
        swift_dynamicCast();
        v24 = *&v61[0];

        if (!v24)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (!*(v21 + 16) || (v25 = sub_25B065C20(v22), (v26 & 1) == 0))
        {
LABEL_26:

          goto LABEL_27;
        }

        v24 = *(*(v21 + 56) + 8 * v25);

        if (!v24)
        {
          goto LABEL_27;
        }
      }

      *&v61[0] = 0;
      BYTE8(v61[0]) = 1;
      sub_25B0E3A20();

      if (BYTE8(v61[0]))
      {
        goto LABEL_27;
      }

      v27 = *&v61[0];
      v28 = v70;
      v29 = sub_25B0E3A10();
      v23 = v29;
      if ((v28 & 0xC000000000000001) != 0)
      {
        if (!sub_25B0E3CD0())
        {
          goto LABEL_26;
        }

        sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
        swift_dynamicCast();
        v30 = *&v61[0];

        if (!v30)
        {
          goto LABEL_27;
        }

LABEL_23:
        *&v61[0] = 0;
        BYTE8(v61[0]) = 1;
        sub_25B0E3A20();

        if ((BYTE8(v61[0]) & 1) == 0)
        {
          v33 = *&v61[0];
          sub_25B08CF10(&v67);
          sub_25B08CF10(&v62);
          if (v33 >= v27)
          {
            goto LABEL_29;
          }

          goto LABEL_36;
        }

        goto LABEL_27;
      }

      if (!*(v28 + 16))
      {
        goto LABEL_26;
      }

      v31 = sub_25B065C20(v29);
      if ((v32 & 1) == 0)
      {
        goto LABEL_26;
      }

      v30 = *(*(v28 + 56) + 8 * v31);

      if (v30)
      {
        goto LABEL_23;
      }

LABEL_27:
      v61[0] = v62;
      sub_25B04C9BC();
      v34 = sub_25B0E3B30();
      type metadata accessor for ComparisonResult(0);
      if (v34 < 2)
      {
        sub_25B08CF10(&v67);
        sub_25B08CF10(&v62);
LABEL_29:
        v35 = v5;
        v36 = v8 == v5;
        v5 += 72;
        if (v36)
        {
          goto LABEL_31;
        }

LABEL_30:
        memmove(v8, v35, 0x48uLL);
        goto LABEL_31;
      }

      if (v34 != -1)
      {
        for (*&v61[0] = v34; ; *&v61[0] = v14)
        {
          sub_25B0E3E60();
          __break(1u);
LABEL_90:
          ;
        }
      }

      sub_25B08CF10(&v67);
      sub_25B08CF10(&v62);
LABEL_36:
      v35 = v7;
      v36 = v8 == v7;
      v7 += 72;
      if (!v36)
      {
        goto LABEL_30;
      }

LABEL_31:
      v8 += 72;
    }

    while (v5 < v13 && v7 < v6);
  }

  v7 = v8;
LABEL_84:
  v58 = (v13 - v5) / 72;
  if (v7 != v5 || v7 >= &v5[72 * v58])
  {
    memmove(v7, v5, 72 * v58);
  }

  return 1;
}

unint64_t sub_25B0DAA1C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v78 = a4;
  v79 = type metadata accessor for BucketedFace(0);
  v7 = *(*(v79 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v79);
  v77 = (&v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v76 = (&v69 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v69 - v13);
  result = MEMORY[0x28223BE20](v12);
  v17 = (&v69 - v16);
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  result = a2;
  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_80;
  }

  v20 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v19 != -1)
  {
    v21 = (a2 - a1) / v19;
    v82 = a1;
    v22 = v78;
    v81 = v78;
    if (v21 < v20 / v19)
    {
      v23 = v21 * v19;
      if (v78 < a1 || a1 + v23 <= v78)
      {
        v24 = result;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v78 == a1)
        {
          goto LABEL_17;
        }

        v24 = result;
        swift_arrayInitWithTakeBackToFront();
      }

      result = v24;
      v22 = v78;
LABEL_17:
      v28 = v22 + v23;
      v80 = v22 + v23;
      if (v23 >= 1 && result < a3)
      {
        v78 = a3;
        while (1)
        {
          v30 = result;
          sub_25B0DC234(result, v17, type metadata accessor for BucketedFace);
          sub_25B0DC234(v22, v14, type metadata accessor for BucketedFace);
          v31 = v17[5];
          v32 = v14[5];
          v33 = v32 < v31;
          if (v32 != v31)
          {
            goto LABEL_28;
          }

          v34 = v17[2];
          v35 = v14[2];
          v33 = v35 < v34;
          if (v35 != v34)
          {
            goto LABEL_28;
          }

          v36 = v17[3];
          v37 = v14[3];
          v33 = v37 < v36;
          if (v37 == v36 && (v38 = v17[4], v39 = v14[4], v33 = v39 < v38, v39 == v38))
          {
            v40 = v22;
            v41 = v17[6];
            v42 = v14[6];
            v33 = v42 < v41;
            if (v42 == v41)
            {
              sub_25B0DC29C(v14, type metadata accessor for BucketedFace);
              sub_25B0DC29C(v17, type metadata accessor for BucketedFace);
              goto LABEL_37;
            }
          }

          else
          {
LABEL_28:
            v40 = v22;
          }

          v43 = v33;
          sub_25B0DC29C(v14, type metadata accessor for BucketedFace);
          sub_25B0DC29C(v17, type metadata accessor for BucketedFace);
          if (v43)
          {
            if (a1 < v30 || a1 >= v30 + v19)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = v30 + v19;
            v22 = v40;
            v45 = v78;
            goto LABEL_45;
          }

LABEL_37:
          v44 = v40;
          v22 = v40 + v19;
          if (a1 < v40 || a1 >= v22)
          {
            swift_arrayInitWithTakeFrontToBack();
            v45 = v78;
          }

          else
          {
            v45 = v78;
            if (a1 != v44)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v81 = v22;
          result = v30;
LABEL_45:
          a1 += v19;
          v82 = a1;
          if (v22 >= v28 || result >= v45)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_78;
    }

    v25 = v78;
    v26 = v20 / v19 * v19;
    if (v78 < result || result + v26 <= v78)
    {
      v27 = result;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v78 == result)
      {
LABEL_50:
        v46 = v25 + v26;
        if (v26 >= 1)
        {
          v47 = -v19;
          v48 = v46;
          v74 = -v19;
          v72 = a1;
          do
          {
            v70 = v46;
            v49 = result + v47;
            v75 = result + v47;
            v73 = result;
            while (1)
            {
              if (result <= a1)
              {
                v82 = result;
                v80 = v70;
                goto LABEL_78;
              }

              v50 = a3;
              v71 = v46;
              v51 = v74;
              v52 = v48 + v74;
              v53 = v76;
              sub_25B0DC234(v48 + v74, v76, type metadata accessor for BucketedFace);
              v54 = v77;
              sub_25B0DC234(v49, v77, type metadata accessor for BucketedFace);
              v55 = v53[2];
              v56 = v53[3];
              v57 = v53[4];
              v58 = v53[5];
              v59 = v54[2];
              v60 = v54[3];
              v61 = v54[4];
              v62 = v54[5];
              v63 = v61 == v57;
              v64 = v61 < v57;
              if (v63)
              {
                v64 = v54[6] < v53[6];
              }

              v63 = v60 == v56;
              v65 = v60 < v56;
              if (v63)
              {
                v65 = v64;
              }

              v63 = v59 == v55;
              v66 = v59 < v55;
              if (v63)
              {
                v66 = v65;
              }

              v67 = v62 == v58 ? v66 : v62 < v58;
              a3 += v51;
              sub_25B0DC29C(v54, type metadata accessor for BucketedFace);
              sub_25B0DC29C(v53, type metadata accessor for BucketedFace);
              if (v67)
              {
                break;
              }

              v46 = v48 + v51;
              if (v50 < v48 || a3 >= v48)
              {
                swift_arrayInitWithTakeFrontToBack();
                a1 = v72;
              }

              else
              {
                a1 = v72;
                if (v50 != v48)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v48 = v52;
              v49 = v75;
              result = v73;
              if (v52 <= v78)
              {
                goto LABEL_76;
              }
            }

            if (v50 < v73 || a3 >= v73)
            {
              v68 = v75;
              swift_arrayInitWithTakeFrontToBack();
              result = v68;
              v46 = v71;
              a1 = v72;
              v47 = v74;
            }

            else
            {
              v63 = v50 == v73;
              v47 = v74;
              result = v75;
              v46 = v71;
              a1 = v72;
              if (!v63)
              {
                swift_arrayInitWithTakeBackToFront();
                result = v75;
              }
            }
          }

          while (v48 > v78);
        }

LABEL_76:
        v82 = result;
        v80 = v46;
LABEL_78:
        sub_25B0D3F90(&v82, &v81, &v80);
        return 1;
      }

      v27 = result;
      swift_arrayInitWithTakeBackToFront();
    }

    result = v27;
    goto LABEL_50;
  }

LABEL_81:
  __break(1u);
  return result;
}

uint64_t sub_25B0DB028(__int128 *a1, uint64_t a2)
{
  v4 = sub_25B0E2750();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x25F860A80](v8);
  v26 = v8;
  if (v8)
  {
    v10 = 0;
    v25 = a2 + 32;
    v11 = (v24 + 8);
    do
    {
      v12 = (v25 + 72 * v10);
      v13 = v12[1];
      v32 = *v12;
      v14 = v12[3];
      v16 = v12[4];
      v15 = v12[5];
      v27 = v12[2];
      v28 = v16;
      v18 = v12[6];
      v17 = v12[7];
      v29 = v12[8];
      v34 = v15;

      v33 = v18;

      v35 = v17;

      v31 = v13;
      sub_25B0E3780();
      sub_25B0E3F30();
      if (v14)
      {
        sub_25B0E3780();
      }

      v32 = v10;
      v30 = v14;
      if (v34)
      {
        sub_25B0E3F30();
        sub_25B0E3780();
      }

      else
      {
        sub_25B0E3F30();
      }

      sub_25B0AD448(a1, v33);
      v19 = v35;
      MEMORY[0x25F860A80](*(v35 + 16));
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v35 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
        v22 = *(v24 + 72);
        v23 = *(v24 + 16);
        do
        {
          v23(v7, v21, v4);
          sub_25B0DB5D0();
          sub_25B0E36D0();
          (*v11)(v7, v4);
          v21 += v22;
          --v20;
        }

        while (v20);
      }

      v10 = v32 + 1;
      MEMORY[0x25F860A80](v29);
    }

    while (v10 != v26);
  }

  return result;
}

uint64_t sub_25B0DB2E0(__int128 *a1, uint64_t a2)
{
  v4 = sub_25B0E2750();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x25F860A80](v8);
  v27 = v8;
  if (v8)
  {
    v10 = 0;
    v26 = a2 + 32;
    v11 = (v25 + 8);
    do
    {
      v32 = v10;
      v13 = (v26 + 96 * v10);
      v14 = v13[1];
      v34 = *v13;
      v35 = v14;
      v15 = v13[3];
      v36 = v13[2];
      v37 = v15;
      v16 = v13[5];
      v38 = v13[4];
      v39 = v16;
      v28 = *(&v35 + 1);
      v29 = *(&v36 + 1);
      v17 = v36;
      v30 = *(&v37 + 1);
      v18 = v37;
      v31 = v38;
      MEMORY[0x25F860A80](v34);
      sub_25B08CE58(&v34, v33);
      sub_25B0E3780();
      sub_25B0E3F30();
      if (v17)
      {
        sub_25B0E3780();
      }

      v19 = v31;
      sub_25B0E3F30();
      if (v18)
      {
        sub_25B0E3780();
      }

      sub_25B0AD448(a1, v30);
      MEMORY[0x25F860A80](*(v19 + 16));
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
        v22 = *(v25 + 72);
        v23 = *(v25 + 16);
        do
        {
          v23(v7, v21, v4);
          sub_25B0DB5D0();
          sub_25B0E36D0();
          (*v11)(v7, v4);
          v21 += v22;
          --v20;
        }

        while (v20);
      }

      v12 = v39;
      v10 = v32 + 1;
      MEMORY[0x25F860A80](*(&v31 + 1));
      sub_25B0DB028(a1, v12);
      MEMORY[0x25F860A80](*(&v12 + 1));
      result = sub_25B0A3DE0(&v34);
    }

    while (v10 != v27);
  }

  return result;
}

unint64_t sub_25B0DB5D0()
{
  result = qword_27FA312D0;
  if (!qword_27FA312D0)
  {
    sub_25B0E2750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA312D0);
  }

  return result;
}

BOOL sub_25B0DB628(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v9 = a2[3];
  v8 = a2[4];
  v11 = a2[5];
  v10 = a2[6];
  v20 = a2[7];
  v21 = a1[7];
  v18 = a2[8];
  v19 = a1[8];
  v16 = a2[9];
  v17 = a1[9];
  if ((a1[1] != a2[1] || a1[2] != a2[2]) && (sub_25B0E3E30() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v8 || (v4 != v9 || v5 != v8) && (sub_25B0E3E30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (!v7)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (!v10 || (v6 != v11 || v7 != v10) && (sub_25B0E3E30() & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  sub_25B0AD0C8(v21, v20);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = sub_25B0A379C(v19, v18);
  result = 0;
  if ((v14 & 1) != 0 && v17 == v16)
  {
    sub_25B0A2BE0(a1[10], a2[10]);
    if (v15)
    {
      return a1[11] == a2[11];
    }

    return 0;
  }

  return result;
}

uint64_t sub_25B0DB7AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25B0C738C();
  result = MEMORY[0x25F860560](v2, &type metadata for GalleryManager.Row, v3);
  v12 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 48);
      v13[2] = *(v5 + 32);
      v13[3] = v6;
      v14 = *(v5 + 64);
      v7 = *(v5 + 16);
      v13[0] = *v5;
      v13[1] = v7;
      sub_25B08CEB4(v13, v10);
      sub_25B0A9604(v8, v13);
      v10[2] = v8[2];
      v10[3] = v8[3];
      v11 = v9;
      v10[0] = v8[0];
      v10[1] = v8[1];
      sub_25B08CF10(v10);
      v5 += 72;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_25B0DB87C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v31 = a3;
  v5 = sub_25B0E2750();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v39 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = *a1;
  v28 = a1[1];
  v29 = v12;
  v13 = a1[6];
  v14 = a1[7];
  v15 = *(v14 + 16);

  v30 = v13;

  v38 = v15;
  if (v15)
  {
    v17 = 0;
    v32 = (v6 + 8);
    v36 = (v6 + 32);
    v37 = v6 + 16;
    v18 = MEMORY[0x277D84F90];
    v34 = a2;
    v35 = v5;
    v33 = v14;
    while (v17 < *(v14 + 16))
    {
      v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v20 = *(v6 + 72);
      (*(v6 + 16))(v11, v14 + v19 + v20 * v17, v5);
      if (sub_25B0D72D4(v11, a2))
      {
        v21 = *v36;
        (*v36)(v39, v11, v5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25B08C250(0, *(v18 + 16) + 1, 1);
          v18 = v40;
        }

        v24 = *(v18 + 16);
        v23 = *(v18 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_25B08C250(v23 > 1, v24 + 1, 1);
          v18 = v40;
        }

        *(v18 + 16) = v24 + 1;
        v25 = v18 + v19 + v24 * v20;
        v5 = v35;
        result = (v21)(v25, v39, v35);
        v14 = v33;
        a2 = v34;
      }

      else
      {
        result = (*v32)(v11, v5);
      }

      if (v38 == ++v17)
      {
        goto LABEL_13;
      }
    }

    __break(1u);

    (*v32)(v11, v5);

    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
LABEL_13:
    v26 = v31;
    v27 = v28;
    *v31 = v29;
    v26[1] = v27;
    *(v26 + 1) = 0u;
    *(v26 + 2) = 0u;
    v26[6] = v30;
    v26[7] = v18;
    v26[8] = -1;
  }

  return result;
}

uint64_t sub_25B0DBB48(uint64_t a1)
{
  v59 = type metadata accessor for LinkedFace(0);
  v60 = *(v59 - 8);
  v4 = v60[8];
  v5 = MEMORY[0x28223BE20](v59);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - v7;
  v9 = MEMORY[0x277D84F90];
  v56 = *(a1 + 16);
  if (v56)
  {
    v10 = 0;
    v55 = a1 + 32;
    v11 = MEMORY[0x277D84F90];
    v54 = a1;
    while (1)
    {
      if (v10 >= *(a1 + 16))
      {
        goto LABEL_48;
      }

      v12 = (v55 + 72 * v10);
      v13 = v12[2];
      v66 = v12[3];
      *&v67 = *(v12 + 8);
      v14 = *v12;
      v64 = v12[1];
      v65 = v13;
      v63 = v14;
      v15 = *(&v66 + 1);
      v16 = *(*(&v66 + 1) + 16);
      if (v16)
      {
        v57 = v10;
        v58 = v11;
        sub_25B08CEB4(&v63, v61);
        v62 = v9;
        sub_25B08C1A8(0, v16, 0);
        v17 = v62;
        v18 = sub_25B0E2750();
        v19 = *(v18 - 8);
        v20 = *(v19 + 16);
        v21 = v15 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
        v22 = *(v19 + 72);
        do
        {
          v20(&v8[*(v59 + 20)], v21, v18);
          v23 = v64;
          v24 = v66;
          *(v8 + 2) = v65;
          *(v8 + 3) = v24;
          *(v8 + 8) = v67;
          *v8 = v63;
          *(v8 + 1) = v23;
          sub_25B08CEB4(&v63, v61);
          v62 = v17;
          v26 = *(v17 + 16);
          v25 = *(v17 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_25B08C1A8(v25 > 1, v26 + 1, 1);
            v17 = v62;
          }

          *(v17 + 16) = v26 + 1;
          sub_25B0DC2FC(v8, v17 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + v60[9] * v26, type metadata accessor for LinkedFace);
          v21 += v22;
          --v16;
        }

        while (v16);
        sub_25B08CF10(&v63);
        v9 = MEMORY[0x277D84F90];
        v11 = v58;
        a1 = v54;
        v10 = v57;
      }

      else
      {
        v17 = v9;
      }

      v27 = *(v17 + 16);
      v1 = v11[2];
      v2 = (v1 + v27);
      if (__OFADD__(v1, v27))
      {
        goto LABEL_49;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && (v29 = v11[3] >> 1, v29 >= v2))
      {
        if (!*(v17 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v1 <= v2)
        {
          v30 = v1 + v27;
        }

        else
        {
          v30 = v1;
        }

        v11 = sub_25B089C70(isUniquelyReferenced_nonNull_native, v30, 1, v11);
        v29 = v11[3] >> 1;
        if (!*(v17 + 16))
        {
LABEL_3:

          if (v27)
          {
            goto LABEL_50;
          }

          goto LABEL_4;
        }
      }

      if (v29 - v11[2] < v27)
      {
        goto LABEL_53;
      }

      v31 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v32 = v60[9];
      swift_arrayInitWithCopy();

      if (v27)
      {
        v33 = v11[2];
        v34 = __OFADD__(v33, v27);
        v35 = v33 + v27;
        if (v34)
        {
          goto LABEL_54;
        }

        v11[2] = v35;
      }

LABEL_4:
      if (++v10 == v56)
      {
        goto LABEL_27;
      }
    }
  }

  v11 = MEMORY[0x277D84F90];
LABEL_27:

  *&v63 = MEMORY[0x277D84F98];
  v36 = v11[2];
  if (v36)
  {
    v37 = 0;
    v2 = 0;
    v1 = v53;
    while (v37 < v11[2])
    {
      sub_25B0DC234(v11 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + v60[9] * v37, v1, type metadata accessor for LinkedFace);
      sub_25B0D4F50(&v63, v1);
      ++v37;
      sub_25B0DC29C(v1, type metadata accessor for LinkedFace);
      if (v36 == v37)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v2 = 0;
LABEL_33:

  v1 = v63;
  v38 = *(v63 + 16);
  if (v38)
  {
    v39 = sub_25B0B3364(*(v63 + 16), 0);
    v60 = sub_25B0B3664(&v63, v39 + 4, v38, v1);
    swift_bridgeObjectRetain_n();
    sub_25B043EC8();
    if (v60 != v38)
    {
LABEL_55:
      __break(1u);

      sub_25B0DC29C(v1, type metadata accessor for LinkedFace);

      __break(1u);

      __break(1u);
      return result;
    }
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
  }

  *&v63 = v39;
  sub_25B0D77C4(&v63);

  v2 = v63;
  v40 = *(v63 + 16);
  if (v40)
  {
    v61[0] = v9;
    sub_25B08C188(0, v40, 0);
    v41 = 0;
    v42 = v61[0];
    v43 = v2[2];
    while (v43 != v41)
    {
      if (v41 >= v2[2])
      {
        goto LABEL_52;
      }

      sub_25B0D5CD8(v41, v2[v41 + 4], v1, &v63);
      v61[0] = v42;
      v45 = *(v42 + 16);
      v44 = *(v42 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_25B08C188((v44 > 1), v45 + 1, 1);
        v42 = v61[0];
      }

      ++v41;
      *(v42 + 16) = v45 + 1;
      v46 = (v42 + 96 * v45);
      v47 = v64;
      v46[2] = v63;
      v46[3] = v47;
      v48 = v65;
      v49 = v66;
      v50 = v68;
      v46[6] = v67;
      v46[7] = v50;
      v46[4] = v48;
      v46[5] = v49;
      if (v40 == v41)
      {

        return v42;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25B0DC234(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25B0DC29C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25B0DC2FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_25B0DC38C()
{
  type metadata accessor for NTKFaceCurationGroup(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for NTKFaceCurationPlacement(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LinkedFace(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25B0DC450()
{
  result = sub_25B0E2750();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25B0DC4CC()
{
  v0 = sub_25B0E22E0();
  __swift_allocate_value_buffer(v0, qword_27FA399C8);
  v1 = __swift_project_value_buffer(v0, qword_27FA399C8);
  *v1 = type metadata accessor for NFGFaceGalleryViewController(0);
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_25B0DC5A4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_25B0E2970();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_25B0E2960();
}

NFGClockFaceRefreshers __swiftcall NFGClockFaceRefreshers.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for NFGClockFaceRefreshers()
{
  result = qword_27FA32EC0;
  if (!qword_27FA32EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA32EC0);
  }

  return result;
}

id sub_25B0DC754(uint64_t a1, uint64_t a2, char a3, _BYTE *a4)
{
  ObjectType = swift_getObjectType();
  v39[3] = type metadata accessor for GalleryLoader();
  v39[4] = &off_286C5AC58;
  v39[0] = a2;
  v9 = &a4[OBJC_IVAR___NFGFaceSnapshotRefresher_internalState];
  v10 = [objc_opt_self() weakObjectsHashTable];
  *v9 = 0;
  *(v9 + 8) = xmmword_25B0EAE90;
  *(v9 + 3) = 0;
  *(v9 + 4) = 0;
  *(v9 + 5) = v10;
  *(v9 + 6) = 0;
  v11 = OBJC_IVAR___NFGFaceSnapshotRefresher_queue;
  if (qword_27FA30C90 != -1)
  {
    swift_once();
  }

  *&a4[v11] = qword_27FA31318;
  v12 = qword_27FA30D08;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = sub_25B0E2970();
  __swift_project_value_buffer(v13, qword_27FA31930);
  sub_25B049F48(v39, v37);
  v14 = sub_25B0E2950();
  v15 = sub_25B0E3A50();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v16 = 136315394;
    v17 = v38;
    v18 = __swift_project_boxed_opaque_existential_1(v37, v38);
    v19 = *(*(v17 - 8) + 64);
    MEMORY[0x28223BE20](v18);
    v34 = ObjectType;
    (*(v21 + 16))(&v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = sub_25B0E3760();
    v24 = v23;
    __swift_destroy_boxed_opaque_existential_1(v37);
    v25 = sub_25B04BE04(v22, v24, &v35);

    *(v16 + 4) = v25;
    *(v16 + 12) = 2080;
    if (a3)
    {
      v26 = 0x3E656C6174533CLL;
    }

    else
    {
      v26 = 0x676E697373694D3CLL;
    }

    if (a3)
    {
      v27 = 0xE700000000000000;
    }

    else
    {
      v27 = 0xE90000000000003ELL;
    }

    v28 = sub_25B04BE04(v26, v27, &v35);
    ObjectType = v34;

    *(v16 + 14) = v28;
    _os_log_impl(&dword_25B03D000, v14, v15, "Refresher created with loader %s with policy %s…", v16, 0x16u);
    v29 = v33;
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v29, -1, -1);
    MEMORY[0x25F8613E0](v16, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  *&a4[OBJC_IVAR___NFGFaceSnapshotRefresher_device] = a1;
  sub_25B049F48(v39, &a4[OBJC_IVAR___NFGFaceSnapshotRefresher_loader]);
  a4[OBJC_IVAR___NFGFaceSnapshotRefresher_refreshPolicy] = a3 & 1;
  v36.receiver = a4;
  v36.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v36, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return v30;
}

id sub_25B0DCB18(void *a1)
{
  v2 = type metadata accessor for GalleryLoader();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v13[3] = v2;
  v13[4] = &off_286C5AC58;
  v13[0] = v3;
  v4 = objc_allocWithZone(type metadata accessor for FaceSnapshotRefresher());
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v13, v2);
  v6 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = sub_25B0DC754(a1, *v8, 1, v4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v10;
}

uint64_t sub_25B0DCC44()
{
  v0 = type metadata accessor for GalleryManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_25B0AB948();
  qword_27FA32ED0 = result;
  return result;
}

id NFGFaceGalleryViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_25B0E3730();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

{

  v5 = &v3[OBJC_IVAR___NFGFaceGalleryViewController_task];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v3[OBJC_IVAR___NFGFaceGalleryViewController_refresher];
  *v6 = 0;
  *(v6 + 1) = 0;
  swift_unknownObjectWeakInit();
  if (qword_27FA30D38 != -1)
  {
    swift_once();
  }

  *&v3[OBJC_IVAR___NFGFaceGalleryViewController_manager] = qword_27FA32ED0;
  v9.receiver = v3;
  v9.super_class = NFGFaceGalleryViewController;

  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
  [v7 commonInit];

  return v7;
}

id NFGFaceGalleryViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

id NFGFaceGalleryViewController.init(delegate:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate_];
  swift_unknownObjectRelease();
  return v1;
}

id NFGFaceGalleryViewController.init(delegate:)()
{
  v1 = &v0[OBJC_IVAR___NFGFaceGalleryViewController_task];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR___NFGFaceGalleryViewController_refresher];
  *v2 = 0;
  *(v2 + 1) = 0;
  swift_unknownObjectWeakInit();
  if (qword_27FA30D38 != -1)
  {
    swift_once();
  }

  *&v0[OBJC_IVAR___NFGFaceGalleryViewController_manager] = qword_27FA32ED0;
  v6.receiver = v0;
  v6.super_class = NFGFaceGalleryViewController;

  v3 = objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);
  swift_unknownObjectWeakAssign();
  v4 = v3;
  [v4 commonInit];

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_25B0DD26C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = *a1;

  sub_25B0E3900();
  sub_25B0E38F0();
  v7 = MEMORY[0x277D85700];
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_25B0E3940();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v10 = sub_25B0E38F0();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v7;
  v11[4] = v9;

  v12 = sub_25B052F48(0, 0, v5, &unk_25B0EAEB0, v11);

  *a1 = v12;
  return result;
}

id sub_25B0DD520()
{
  v1 = &v0[OBJC_IVAR___NFGFaceGalleryViewController_task];
  os_unfair_lock_lock(&v0[OBJC_IVAR___NFGFaceGalleryViewController_task]);
  if (*(v1 + 1))
  {
    sub_25B0E39E0();
  }

  os_unfair_lock_unlock(v1);
  v2 = &v0[OBJC_IVAR___NFGFaceGalleryViewController_refresher];
  os_unfair_lock_lock(&v0[OBJC_IVAR___NFGFaceGalleryViewController_refresher]);
  sub_25B0DD5D8(v2 + 1, &v5);
  os_unfair_lock_unlock(v2);
  v4.receiver = v0;
  v4.super_class = NFGFaceGalleryViewController;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_25B0DD5D8(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3)
  {
    v11[0] = 0;
    v4 = [v3 cancelRefreshingWithError_];
    v5 = v11[0];
    if (v4)
    {
      *a2 = 0;
      v6 = v5;
      v7 = *MEMORY[0x277D85DE8];
      return;
    }

    v8 = v11[0];
    v9 = sub_25B0E22D0();

    swift_willThrow();
  }

  *a2 = 1;
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25B0DD774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F30, &unk_25B0E8AD8) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v6 = sub_25B0E3A90();
  v4[11] = v6;
  v7 = *(v6 - 8);
  v4[12] = v7;
  v8 = *(v7 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = sub_25B0E3900();
  v4[15] = sub_25B0E38F0();
  v10 = sub_25B0E3850();
  v4[16] = v10;
  v4[17] = v9;

  return MEMORY[0x2822009F8](sub_25B0DD8A4, v10, v9);
}

uint64_t sub_25B0DD8A4()
{
  v1 = v0[9];
  v2 = objc_opt_self();
  v0[18] = v2;
  v3 = [v2 currentDevice];
  v0[19] = v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + OBJC_IVAR___NFGFaceGalleryViewController_refresher;
    os_unfair_lock_lock((Strong + OBJC_IVAR___NFGFaceGalleryViewController_refresher));
    sub_25B0DDF38((v6 + 8), v3);
    os_unfair_lock_unlock(v6);
  }

  v7 = v0[13];
  v8 = v0[9];
  v9 = [objc_opt_self() defaultCenter];
  v10 = *MEMORY[0x277CBB640];
  sub_25B0E3AA0();

  sub_25B0E3A80();
  swift_beginAccess();
  v11 = v0[14];
  v0[20] = sub_25B0E38F0();
  v12 = sub_25B0DEA60();
  v13 = *(MEMORY[0x277D856D0] + 4);
  v14 = swift_task_alloc();
  v0[21] = v14;
  *v14 = v0;
  v14[1] = sub_25B0DDA70;
  v15 = v0[13];
  v16 = v0[10];
  v17 = v0[11];

  return MEMORY[0x282200308](v16, v17, v12);
}

uint64_t sub_25B0DDA70()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 160);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_25B0E3850();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_25B0AC6B8;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_25B0E3850();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_25B0DDC08;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

uint64_t sub_25B0DDC08()
{
  v1 = v0[20];

  v2 = v0[16];
  v3 = v0[17];

  return MEMORY[0x2822009F8](sub_25B0DDC6C, v2, v3);
}

void sub_25B0DDC6C()
{
  v1 = *(v0 + 80);
  v2 = sub_25B0E22B0();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 152);
    v4 = *(v0 + 120);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

LABEL_8:
    v15 = *(v0 + 104);
    v16 = *(v0 + 80);

    v17 = *(v0 + 8);

    v17();
    return;
  }

  v5 = *(v0 + 72);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v12 = *(v0 + 152);
    v13 = *(v0 + 120);
    v14 = *(v0 + 80);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v11 = v14;
    goto LABEL_7;
  }

  v7 = Strong;
  if (sub_25B0E39F0())
  {
    v8 = *(v0 + 152);
    v9 = *(v0 + 120);
    v10 = *(v0 + 80);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v11 = v10;
LABEL_7:
    sub_25B058448(v11, &unk_27FA32F30, &unk_25B0E8AD8);
    goto LABEL_8;
  }

  v18 = *(v0 + 176);
  v19 = [*(v0 + 144) currentDevice];
  v20 = &v7[OBJC_IVAR___NFGFaceGalleryViewController_refresher];
  os_unfair_lock_lock(&v7[OBJC_IVAR___NFGFaceGalleryViewController_refresher]);
  sub_25B0DDF38(v20 + 1, v19);
  if (v18)
  {

    os_unfair_lock_unlock(v20);
  }

  else
  {
    v21 = *(v0 + 80);
    os_unfair_lock_unlock(v20);

    sub_25B058448(v21, &unk_27FA32F30, &unk_25B0E8AD8);
    v22 = *(v0 + 112);
    *(v0 + 160) = sub_25B0E38F0();
    v23 = sub_25B0DEA60();
    v24 = *(MEMORY[0x277D856D0] + 4);
    v25 = swift_task_alloc();
    *(v0 + 168) = v25;
    *v25 = v0;
    v25[1] = sub_25B0DDA70;
    v26 = *(v0 + 104);
    v27 = *(v0 + 80);
    v28 = *(v0 + 88);

    MEMORY[0x282200308](v27, v28, v23);
  }
}

void sub_25B0DDF38(void **a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *a1;
  if (*a1)
  {
    v15[0] = 0;
    if ([v4 cancelRefreshingWithError_])
    {
      v5 = v15[0];
    }

    else
    {
      v6 = v15[0];
      v7 = sub_25B0E22D0();

      swift_willThrow();
    }

    swift_unknownObjectRelease();
  }

  *a1 = 0;
  if (a2)
  {
    v8 = objc_opt_self();
    v9 = a2;
    v10 = [v8 galleryRefresherForDevice_];
    *a1 = v10;
    if (v10)
    {
      v15[0] = 0;
      if (([swift_unknownObjectRetain() startRefreshingWithError_] & 1) == 0)
      {
        v12 = v15[0];
        v13 = sub_25B0E22D0();

        swift_willThrow();

        swift_unknownObjectRelease();
        goto LABEL_16;
      }

      v11 = v15[0];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
  }

LABEL_16:
  v14 = *MEMORY[0x277D85DE8];
}

Swift::Void __swiftcall NFGFaceGalleryViewController.viewDidLoad()()
{
  v1 = v0;
  v24.super_class = NFGFaceGalleryViewController;
  objc_msgSendSuper2(&v24, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR___NFGFaceGalleryViewController_manager];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v4 = sub_25B0E3730();
  [v3 initWithSuiteName_];

  sub_25B0E29E0();

  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32EF8, &qword_25B0EAEA0));

  v6 = sub_25B0E2F20();
  v7 = [v6 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addChildViewController_];
  v9 = [v1 view];
  if (!v9)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v10 = v9;
  [v9 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F00, &qword_25B0E5948);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25B0E6410;
  v12 = [v8 widthAnchor];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = v13;
  v15 = [v13 widthAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v11 + 32) = v16;
  v17 = [v8 heightAnchor];
  v18 = [v1 view];
  if (v18)
  {
    v19 = v18;
    v20 = objc_opt_self();
    v21 = [v19 heightAnchor];

    v22 = [v17 constraintEqualToAnchor_];
    *(v11 + 40) = v22;
    sub_25B046E60(0, &unk_27FA33020, 0x277CCAAD0);
    v23 = sub_25B0E37E0();

    [v20 activateConstraints_];

    [v6 didMoveToParentViewController_];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_25B0DE4F8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong delegate];
    if (v12)
    {
      [v12 didDismissWithFace:a1 frame:{a2, a3, a4, a5}];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall NFGFaceGalleryViewController.run(test:options:)(Swift::String test, Swift::OpaquePointer options)
{
  v3 = [v2 childViewControllers];
  sub_25B046E60(0, &unk_27FA32F10, 0x277D75D28);
  v4 = sub_25B0E37F0();

  if (v4 >> 62)
  {
    if (sub_25B0E3CC0())
    {
      goto LABEL_3;
    }

LABEL_12:

    return;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x25F860730](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32EF8, &qword_25B0EAEA0);
  if (swift_dynamicCastClass())
  {
    sub_25B0E2F10();
  }
}

void _sSo28NFGFaceGalleryViewControllerC08NanoFaceB0E5coderABSgSo7NSCoderC_tcfc_0()
{
  v1 = v0 + OBJC_IVAR___NFGFaceGalleryViewController_task;
  *v1 = 0;
  *(v1 + 8) = 0;
  v2 = v0 + OBJC_IVAR___NFGFaceGalleryViewController_refresher;
  *v2 = 0;
  *(v2 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_25B0E3D00();
  __break(1u);
}

uint64_t sub_25B0DE9AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25B0498DC;

  return sub_25B0DD774(a1, v4, v5, v6);
}

unint64_t sub_25B0DEA60()
{
  result = qword_27FA31D58;
  if (!qword_27FA31D58)
  {
    sub_25B0E3A90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31D58);
  }

  return result;
}

uint64_t sub_25B0DEAE0()
{
  v1 = OBJC_IVAR____TtC15NanoFaceGalleryP33_5621AA947CF506B68CF63C7E16CC7EB411WrappedFace_face;
  v2 = sub_25B0E2750();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

Swift::Void __swiftcall NFGFaceSnapshotViewController.viewDidLoad()()
{
  v1 = v0;
  v2 = type metadata accessor for FacePlacement.Location(0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B0E2750();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FaceView();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  v41.receiver = v1;
  v41.super_class = NFGFaceSnapshotViewController;
  objc_msgSendSuper2(&v41, sel_viewDidLoad);
  (*(v8 + 16))(v11, *&v1[OBJC_IVAR___NFGFaceSnapshotViewController_wrappedFace] + OBJC_IVAR____TtC15NanoFaceGalleryP33_5621AA947CF506B68CF63C7E16CC7EB411WrappedFace_face, v7);
  v19 = &v6[*(v3 + 28)];
  sub_25B0E2530();
  *v6 = 0;
  FaceView.init(face:location:)(v11, v6, v18);
  sub_25B0DF300(v18, v16);
  v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA33010, &qword_25B0EAEC8));
  v21 = sub_25B0E2F20();
  v22 = [v21 view];
  if (!v22)
  {
    __break(1u);
    goto LABEL_7;
  }

  v23 = v22;
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addChildViewController_];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v25 = v24;
  v40 = v18;
  [v24 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F00, &qword_25B0E5948);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_25B0E6410;
  v27 = [v23 widthAnchor];
  v28 = [v1 view];
  if (!v28)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v29 = v28;
  v30 = [v28 widthAnchor];

  v31 = [v27 constraintEqualToAnchor_];
  *(v26 + 32) = v31;
  v32 = [v23 heightAnchor];
  v33 = [v1 view];
  if (v33)
  {
    v34 = v33;
    v35 = objc_opt_self();
    v36 = [v34 heightAnchor];

    v37 = [v32 constraintEqualToAnchor_];
    *(v26 + 40) = v37;
    sub_25B046E60(0, &unk_27FA33020, 0x277CCAAD0);
    v38 = sub_25B0E37E0();

    [v35 activateConstraints_];

    [v21 didMoveToParentViewController_];
    sub_25B0DF364(v40);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_25B0DF300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0DF364(uint64_t a1)
{
  v2 = type metadata accessor for FaceView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void __swiftcall NFGFaceSnapshotViewController.init(nibName:bundle:)(NFGFaceSnapshotViewController *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_25B0E3730();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

uint64_t type metadata accessor for WrappedFace()
{
  result = qword_27FA32FD0;
  if (!qword_27FA32FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B0DF578()
{
  result = sub_25B0E2750();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_25B0DF6B8(void *a1, uint64_t a2)
{
  v4 = sub_25B0E2750();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v24 = a2;
  sub_25B0E2460();
  v12 = [a1 name];
  if (v12)
  {
    v13 = v12;
    sub_25B0E3740();
  }

  v14 = a1;
  sub_25B0E2720();
  (*(v5 + 16))(v9, v11, v4);
  v15 = type metadata accessor for WrappedFace();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  (*(v5 + 32))(v18 + OBJC_IVAR____TtC15NanoFaceGalleryP33_5621AA947CF506B68CF63C7E16CC7EB411WrappedFace_face, v9, v4);
  v19 = v23;
  *&v23[OBJC_IVAR___NFGFaceSnapshotViewController_wrappedFace] = v18;
  v25.receiver = v19;
  v25.super_class = NFGFaceSnapshotViewController;
  v20 = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0, 0);
  v21 = sub_25B0E24A0();
  (*(*(v21 - 8) + 8))(v24, v21);
  (*(v5 + 8))(v11, v4);
  return v20;
}

id sub_25B0DF8F8(void *a1)
{
  v3 = sub_25B0E2750();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = [a1 name];
  if (v11)
  {
    v21 = v10;
    v12 = v11;
    sub_25B0E3740();

    v10 = v21;
  }

  v13 = a1;
  sub_25B0E2720();
  (*(v4 + 16))(v8, v10, v3);
  v14 = type metadata accessor for WrappedFace();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  (*(v4 + 32))(v17 + OBJC_IVAR____TtC15NanoFaceGalleryP33_5621AA947CF506B68CF63C7E16CC7EB411WrappedFace_face, v8, v3);
  *&v1[OBJC_IVAR___NFGFaceSnapshotViewController_wrappedFace] = v17;
  v22.receiver = v1;
  v22.super_class = NFGFaceSnapshotViewController;
  v18 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, 0, 0);
  (*(v4 + 8))(v10, v3);
  return v18;
}

uint64_t sub_25B0DFB1C()
{
  v1 = OBJC_IVAR____TtC15NanoFaceGalleryP33_C3C4653FAEA1C78A64DCD92D9EE30E2A11UUIDWrapper_uuid;
  v2 = sub_25B0E24A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

id NFGReplicatedSnapshotViewController.init(face:uuid:)(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_25B0E2470();
  v6 = [v4 initWithFace:a1 uuid:v5];

  v7 = sub_25B0E24A0();
  (*(*(v7 - 8) + 8))(a2, v7);
  return v6;
}

{
  v3 = v2;
  v6 = sub_25B0E2470();
  v7 = [v3 initWithFace:a1 uuid:v6 index:100];

  v8 = sub_25B0E24A0();
  (*(*(v8 - 8) + 8))(a2, v8);
  return v7;
}

id NFGReplicatedSnapshotViewController.init(face:uuid:index:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_25B0E2470();
  v8 = [v6 initWithFace:a1 uuid:v7 index:a3];

  v9 = sub_25B0E24A0();
  (*(*(v9 - 8) + 8))(a2, v9);
  return v8;
}

uint64_t NFGReplicatedSnapshotViewController.init(face:uuid:index:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_25B0E24A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a2, v7);
  v12 = type metadata accessor for UUIDWrapper();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  result = (*(v8 + 32))(v15 + OBJC_IVAR____TtC15NanoFaceGalleryP33_C3C4653FAEA1C78A64DCD92D9EE30E2A11UUIDWrapper_uuid, v11, v7);
  *&v3[OBJC_IVAR___NFGReplicatedSnapshotViewController_libraryUUID] = v15;
  *&v3[OBJC_IVAR___NFGReplicatedSnapshotViewController__face] = a1;
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    *&v3[OBJC_IVAR___NFGReplicatedSnapshotViewController_index] = a3;
    v18.receiver = v3;
    v18.super_class = NFGReplicatedSnapshotViewController;
    v17 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);
    (*(v8 + 8))(a2, v7);
    return v17;
  }

  return result;
}

uint64_t type metadata accessor for UUIDWrapper()
{
  result = qword_27FA33030;
  if (!qword_27FA33030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall NFGReplicatedSnapshotViewController.viewDidLoad()()
{
  v1 = v0;
  v2 = type metadata accessor for FaceView();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v58 = &v53 - v7;
  v53 = type metadata accessor for FacePlacement.Location(0);
  v8 = *(*(v53 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v53);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v57 = &v53 - v12;
  v13 = sub_25B0E24A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25B0E2750();
  v55 = *(v18 - 8);
  v56 = v18;
  v19 = *(v55 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v54 = &v53 - v23;
  v59.receiver = v1;
  v59.super_class = NFGReplicatedSnapshotViewController;
  objc_msgSendSuper2(&v59, sel_viewDidLoad);
  v24 = *&v1[OBJC_IVAR___NFGReplicatedSnapshotViewController__face];
  (*(v14 + 16))(v17, *&v1[OBJC_IVAR___NFGReplicatedSnapshotViewController_libraryUUID] + OBJC_IVAR____TtC15NanoFaceGalleryP33_C3C4653FAEA1C78A64DCD92D9EE30E2A11UUIDWrapper_uuid, v13);
  v25 = v24;
  sub_25B0E2460();
  (*(v14 + 8))(v17, v13);
  v26 = [v25 name];
  if (v26)
  {
    v27 = v26;
    sub_25B0E3740();
  }

  v28 = v54;
  sub_25B0E2720();
  v29 = *&v1[OBJC_IVAR___NFGReplicatedSnapshotViewController_index];
  v30 = v57;
  v31 = &v57[*(v53 + 20)];
  sub_25B0E2530();
  *v30 = 2;
  (*(v55 + 16))(v22, v28, v56);
  sub_25B0E0AD8(v30, v11, type metadata accessor for FacePlacement.Location);
  v32 = v58;
  FaceView.init(face:location:)(v22, v11, v58);
  sub_25B0E0AD8(v32, v6, type metadata accessor for FaceView);
  v33 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA33010, &qword_25B0EAEC8));
  v34 = sub_25B0E2F20();
  v35 = [v34 view];
  if (!v35)
  {
    __break(1u);
    goto LABEL_9;
  }

  v36 = v35;
  [v35 setTranslatesAutoresizingMaskIntoConstraints_];
  v37 = [objc_opt_self() clearColor];
  [v36 setBackgroundColor_];

  [v1 addChildViewController_];
  v38 = [v1 view];
  if (!v38)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v39 = v38;
  [v38 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F00, &qword_25B0E5948);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_25B0E6410;
  v41 = [v36 widthAnchor];
  v42 = [v1 view];
  if (!v42)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v43 = v42;
  v44 = [v42 widthAnchor];

  v45 = [v41 constraintEqualToAnchor_];
  *(v40 + 32) = v45;
  v46 = [v36 heightAnchor];
  v47 = [v1 view];
  if (v47)
  {
    v48 = v47;
    v49 = objc_opt_self();
    v50 = [v48 heightAnchor];

    v51 = [v46 constraintEqualToAnchor_];
    *(v40 + 40) = v51;
    sub_25B046E60(0, &unk_27FA33020, 0x277CCAAD0);
    v52 = sub_25B0E37E0();

    [v49 activateConstraints_];

    [v34 didMoveToParentViewController_];
    sub_25B0E0B40(v58, type metadata accessor for FaceView);
    sub_25B0E0B40(v57, type metadata accessor for FacePlacement.Location);
    (*(v55 + 8))(v54, v56);
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_25B0E0AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25B0E0B40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void __swiftcall NFGReplicatedSnapshotViewController.init(nibName:bundle:)(NFGReplicatedSnapshotViewController *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_25B0E3730();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

uint64_t sub_25B0E0D0C()
{
  result = sub_25B0E24A0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

BOOL static NTKFaceCurationPlacement.== infix(_:_:)(void *a1, void *a2)
{
  if (a1[4] == a2[4] && (a1[1] == a2[1] ? (v2 = a1[2] == a2[2]) : (v2 = 0), v2 ? (v3 = a1[3] == a2[3]) : (v3 = 0), v3 ? (v4 = a1[5] == a2[5]) : (v4 = 0), v4))
  {
    return *a1 == *a2;
  }

  else
  {
    return 0;
  }
}

BOOL static NTKFaceCurationRank.== infix(_:_:)(void *a1, void *a2)
{
  if (a1[3] == a2[3] && *a1 == *a2 && (a1[1] == a2[1] ? (v2 = a1[2] == a2[2]) : (v2 = 0), v2))
  {
    return a1[4] == a2[4];
  }

  else
  {
    return 0;
  }
}

BOOL sub_25B0E0F30(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 8), *(a2 + 8)), vceqq_s64(*(a1 + 24), *(a2 + 24))))) & 1) != 0 && *(a1 + 40) == *(a2 + 40))
  {
    return *a1 == *a2;
  }

  return result;
}

uint64_t NTKFaceCurationPlacement.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  MEMORY[0x25F860A80](v0[4]);
  MEMORY[0x25F860A80](v1);
  MEMORY[0x25F860A80](v2);
  MEMORY[0x25F860A80](v3);
  MEMORY[0x25F860A80](v4);
  return MEMORY[0x25F860A80](*v0);
}

uint64_t NTKFaceCurationPlacement.hashValue.getter()
{
  sub_25B0E3F10();
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  MEMORY[0x25F860A80](v0[4]);
  MEMORY[0x25F860A80](v1);
  MEMORY[0x25F860A80](v2);
  MEMORY[0x25F860A80](v3);
  MEMORY[0x25F860A80](v4);
  MEMORY[0x25F860A80](*v0);
  return sub_25B0E3F50();
}

uint64_t sub_25B0E1090()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v5);
  MEMORY[0x25F860A80](v2);
  MEMORY[0x25F860A80](v3);
  MEMORY[0x25F860A80](v4);
  MEMORY[0x25F860A80](v6);
  MEMORY[0x25F860A80](v1);
  return sub_25B0E3F50();
}

uint64_t sub_25B0E1134()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[5];
  MEMORY[0x25F860A80](v0[4]);
  MEMORY[0x25F860A80](v2);
  MEMORY[0x25F860A80](v3);
  MEMORY[0x25F860A80](v4);
  MEMORY[0x25F860A80](v5);
  return MEMORY[0x25F860A80](v1);
}

uint64_t sub_25B0E11A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v5);
  MEMORY[0x25F860A80](v2);
  MEMORY[0x25F860A80](v3);
  MEMORY[0x25F860A80](v4);
  MEMORY[0x25F860A80](v6);
  MEMORY[0x25F860A80](v1);
  return sub_25B0E3F50();
}

BOOL static NTKFaceCurationRelease.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2 < a5;
  if (a2 == a5)
  {
    v6 = a3 < a6;
  }

  if (a1 == a4)
  {
    return v6;
  }

  else
  {
    return a1 < a4;
  }
}

BOOL sub_25B0E1318(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    return v5;
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_25B0E1350(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a2 < *a1;
  }

  return !v6;
}

BOOL sub_25B0E138C(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a1 < *a2;
  }

  return !v6;
}

BOOL sub_25B0E13C8(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    return v5;
  }

  else
  {
    return *a2 < *a1;
  }
}

uint64_t NTKFaceCurationRelease.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x25F860A80](a2);
  MEMORY[0x25F860A80](a3);
  return MEMORY[0x25F860A80](a4);
}

uint64_t NTKFaceCurationRelease.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25B0E3F10();
  MEMORY[0x25F860A80](a1);
  MEMORY[0x25F860A80](a2);
  MEMORY[0x25F860A80](a3);
  return sub_25B0E3F50();
}

uint64_t sub_25B0E14E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v1);
  MEMORY[0x25F860A80](v2);
  MEMORY[0x25F860A80](v3);
  return sub_25B0E3F50();
}

uint64_t sub_25B0E1554()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x25F860A80](*v0);
  MEMORY[0x25F860A80](v1);
  return MEMORY[0x25F860A80](v2);
}

uint64_t sub_25B0E159C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v1);
  MEMORY[0x25F860A80](v2);
  MEMORY[0x25F860A80](v3);
  return sub_25B0E3F50();
}

BOOL sub_25B0E1608(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _sSo19NTKFaceCurationRankV15NanoFaceGalleryE1loiySbAB_ABtFZ_0(v5, v7);
}

BOOL sub_25B0E1654(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return !_sSo19NTKFaceCurationRankV15NanoFaceGalleryE1loiySbAB_ABtFZ_0(v5, v7);
}

BOOL sub_25B0E16A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return !_sSo19NTKFaceCurationRankV15NanoFaceGalleryE1loiySbAB_ABtFZ_0(v5, v7);
}

BOOL sub_25B0E16F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return _sSo19NTKFaceCurationRankV15NanoFaceGalleryE1loiySbAB_ABtFZ_0(v5, v7);
}

uint64_t NTKFaceCurationRank.hash(into:)()
{
  MEMORY[0x25F860A80](v0[3]);
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x25F860A80](*v0);
  MEMORY[0x25F860A80](v1);
  MEMORY[0x25F860A80](v2);
  return MEMORY[0x25F860A80](v0[4]);
}

uint64_t NTKFaceCurationRank.hashValue.getter()
{
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v0[3]);
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x25F860A80](*v0);
  MEMORY[0x25F860A80](v1);
  MEMORY[0x25F860A80](v2);
  MEMORY[0x25F860A80](v0[4]);
  return sub_25B0E3F50();
}

uint64_t sub_25B0E185C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v4);
  MEMORY[0x25F860A80](v1);
  MEMORY[0x25F860A80](v2);
  MEMORY[0x25F860A80](v3);
  MEMORY[0x25F860A80](v5);
  return sub_25B0E3F50();
}

uint64_t sub_25B0E18EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[4];
  MEMORY[0x25F860A80](v0[3]);
  MEMORY[0x25F860A80](v1);
  MEMORY[0x25F860A80](v2);
  MEMORY[0x25F860A80](v3);
  return MEMORY[0x25F860A80](v4);
}

uint64_t sub_25B0E1950()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v4);
  MEMORY[0x25F860A80](v1);
  MEMORY[0x25F860A80](v2);
  MEMORY[0x25F860A80](v3);
  MEMORY[0x25F860A80](v5);
  return sub_25B0E3F50();
}

BOOL _sSo19NTKFaceCurationRankV15NanoFaceGalleryE1loiySbAB_ABtFZ_0(void *a1, void *a2)
{
  v2 = a1[3];
  v3 = a2[3];
  v4 = v2 < v3;
  if (v2 == v3)
  {
    v4 = *a1 < *a2;
    if (*a1 == *a2)
    {
      v5 = a1[1];
      v6 = a2[1];
      v4 = v5 < v6;
      if (v5 == v6)
      {
        v7 = a1[2];
        v8 = a2[2];
        v4 = v7 < v8;
        if (v7 == v8)
        {
          return a1[4] < a2[4];
        }
      }
    }
  }

  return v4;
}

uint64_t sub_25B0E1A78(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_25B0E1B00()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27FA330D0 = result;
  return result;
}

uint64_t sub_25B0E1B58()
{
  v0 = sub_25B0E2930();
  __swift_allocate_value_buffer(v0, qword_27FA39A10);
  __swift_project_value_buffer(v0, qword_27FA39A10);
  if (qword_27FA30D40 != -1)
  {
    swift_once();
  }

  v1 = qword_27FA330D0;
  return sub_25B0E2920();
}

uint64_t sub_25B0E1C00()
{
  v0 = sub_25B0E2930();
  __swift_allocate_value_buffer(v0, qword_27FA39A28);
  __swift_project_value_buffer(v0, qword_27FA39A28);
  if (qword_27FA30D40 != -1)
  {
    swift_once();
  }

  v1 = qword_27FA330D0;
  return sub_25B0E2920();
}

uint64_t sub_25B0E1CA8()
{
  v0 = sub_25B0E2930();
  __swift_allocate_value_buffer(v0, qword_27FA39A40);
  __swift_project_value_buffer(v0, qword_27FA39A40);
  if (qword_27FA30D40 != -1)
  {
    swift_once();
  }

  v1 = qword_27FA330D0;
  return sub_25B0E2920();
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27FA39908 == -1)
  {
    if (qword_27FA39910)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_27FA39910)
    {
      goto LABEL_3;
    }
  }

  if (qword_27FA39900 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_27FA398F4 > a3)
      {
        goto LABEL_11;
      }

      if (dword_27FA398F4 >= a3)
      {
        result = dword_27FA398F8 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_27FA39910;
  if (qword_27FA39910)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27FA39910 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x25F860CD0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27FA398F4, &dword_27FA398F8);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}