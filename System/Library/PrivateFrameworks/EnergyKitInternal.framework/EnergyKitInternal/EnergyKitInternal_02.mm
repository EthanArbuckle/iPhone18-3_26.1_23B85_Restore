uint64_t EnergyTrends.intervalDateRangeContaining(_:)@<X0>(char *a1@<X8>)
{
  v3 = sub_20DF474E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v14[-v9];
  v11 = *v1;
  v12 = *(type metadata accessor for EnergyTrends() + 32);
  if (v11 <= 1)
  {
    if (v11)
    {
      sub_20DF47AB4();
    }

    else
    {
      sub_20DF47594();
    }
  }

  else if (v11 == 2)
  {
    sub_20DF47A84();
  }

  else if (v11 == 3)
  {
    sub_20DF47A94();
  }

  else
  {
    sub_20DF47A74();
  }

  (*(v4 + 32))(v10, v8, v3);
  v15 = v11;
  static EnergyTrends.intervalDateRangeStartingAt(_:displayInterval:with:)(v10, &v15, &v1[v12], a1);
  return (*(v4 + 8))(v10, v3);
}

uint64_t EnergyTrends.usagesIn(_:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v4[2] = a1;

  return sub_20DEEA4EC(sub_20DEF1600, v4, v2);
}

uint64_t static EnergyTrends.startOfSubinterval(for:displayInterval:with:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_20DF475C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  (*(v7 + 104))(&v18 - v12, **(&unk_277E1A2C0 + *a2), v6);
  (*(v7 + 16))(v11, v13, v6);
  v14 = (*(v7 + 88))(v11, v6);
  if (v14 == *MEMORY[0x277CC9998])
  {
    sub_20DF47A84();
  }

  else if (v14 == *MEMORY[0x277CC9968])
  {
    sub_20DF47594();
  }

  else if (v14 == *MEMORY[0x277CC9980])
  {
    sub_20DF47A64();
  }

  else
  {
    if (v14 != *MEMORY[0x277CC9940])
    {
      v16 = *(v7 + 8);
      v16(v13, v6);
      v17 = sub_20DF474E4();
      (*(*(v17 - 8) + 16))(a3, a1, v17);
      return (v16)(v11, v6);
    }

    sub_20DF47AB4();
  }

  return (*(v7 + 8))(v13, v6);
}

uint64_t static EnergyTrends.beginningOfInterval(for:interval:with:)(uint64_t a1, _BYTE *a2)
{
  v3 = *a2;
  if (v3 <= 1)
  {
    if (*a2)
    {

      return sub_20DF47AB4();
    }

    else
    {
      return sub_20DF47594();
    }
  }

  else if (v3 == 2)
  {

    return sub_20DF47A84();
  }

  else if (v3 == 3)
  {

    return sub_20DF47A94();
  }

  else
  {

    return sub_20DF47A74();
  }
}

uint64_t EnergyTrends.beginningOfInterval(for:)()
{
  v1 = *v0;
  v2 = *(type metadata accessor for EnergyTrends() + 32);
  if (v1 <= 1)
  {
    if (v1)
    {

      return sub_20DF47AB4();
    }

    else
    {
      return sub_20DF47594();
    }
  }

  else if (v1 == 2)
  {

    return sub_20DF47A84();
  }

  else if (v1 == 3)
  {

    return sub_20DF47A94();
  }

  else
  {

    return sub_20DF47A74();
  }
}

uint64_t static EnergyTrends.intervalDateRangeStartingAt(_:displayInterval:with:)@<X0>(void (*a1)(void, void, void)@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v67 = a3;
  v68 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA10, &qword_20DF49F48);
  v6 = *(*(v62 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v62);
  v63 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v61 = &v58 - v9;
  v66 = sub_20DF475C4();
  v10 = *(v66 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v66);
  v59 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v58 - v14;
  v16 = sub_20DF474E4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v60 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C988, &qword_20DF4AD10);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v58 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v58 - v28;
  v30 = *a2;
  v69 = v17;
  v31 = *(v17 + 56);
  v31(&v58 - v28, 1, 1, v16);
  v64 = a4;
  v65 = v31;
  if (v30 == 3)
  {

LABEL_4:
    v33 = v66;
    (*(v10 + 104))(v15, *MEMORY[0x277CC9968], v66);
    v34 = v68;
    goto LABEL_6;
  }

  v32 = sub_20DF483D4();

  if (v32)
  {
    goto LABEL_4;
  }

  v35 = **(&unk_277E1A298 + v30);
  v15 = v59;
  v33 = v66;
  (*(v10 + 104))(v59, v35, v66);
  v34 = v68;
LABEL_6:
  sub_20DF47AD4();
  (*(v10 + 8))(v15, v33);
  sub_20DED8730(v29, &qword_27C84C988, &qword_20DF4AD10);
  v65(v27, 0, 1, v16);
  sub_20DED9CE8(v27, v29, &qword_27C84C988, &qword_20DF4AD10);
  sub_20DED8804(v29, v24, &qword_27C84C988, &qword_20DF4AD10);
  v36 = v69;
  if ((*(v69 + 48))(v24, 1, v16) == 1)
  {
    sub_20DED8730(v24, &qword_27C84C988, &qword_20DF4AD10);
LABEL_12:
    sub_20DEF1558(&qword_281122978);
    v49 = sub_20DF47CE4();
    result = sub_20DED8730(v29, &qword_27C84C988, &qword_20DF4AD10);
    if (v49)
    {
      v50 = v36[2];
      v51 = v34;
      v52 = v61;
      v50(v61, v51, v16);
      v53 = v62;
      v50((v52 + *(v62 + 48)), v51, v16);
      v43 = v63;
      sub_20DED8804(v52, v63, &qword_27C84CA10, &qword_20DF49F48);
      v54 = *(v53 + 48);
      v68 = v36[4];
      v55 = v64;
      v68(v64, v43, v16);
      v46 = v36[1];
      v46(v43 + v54, v16);
      sub_20DED9CE8(v52, v43, &qword_27C84CA10, &qword_20DF49F48);
      v56 = *(v53 + 48);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C980, &unk_20DF49A50);
      v68(&v55[*(v57 + 36)], v43 + v56, v16);
      return (v46)(v43, v16);
    }

    __break(1u);
    goto LABEL_16;
  }

  v37 = v36[4];
  v38 = v60;
  v37(v60, v24, v16);
  if ((sub_20DF47474() & 1) == 0)
  {
    (v36[1])(v38, v16);
    goto LABEL_12;
  }

  sub_20DEF1558(&qword_281122978);
  v39 = sub_20DF47CE4();
  result = sub_20DED8730(v29, &qword_27C84C988, &qword_20DF4AD10);
  if (v39)
  {
    v41 = v61;
    (v36[2])(v61, v34, v16);
    v42 = v62;
    v37((v41 + *(v62 + 48)), v38, v16);
    v43 = v63;
    sub_20DED8804(v41, v63, &qword_27C84CA10, &qword_20DF49F48);
    v44 = *(v42 + 48);
    v45 = v64;
    v37(v64, v43, v16);
    v46 = v36[1];
    v46(v43 + v44, v16);
    sub_20DED9CE8(v41, v43, &qword_27C84CA10, &qword_20DF49F48);
    v47 = *(v42 + 48);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C980, &unk_20DF49A50);
    v37(&v45[*(v48 + 36)], (v43 + v47), v16);
    return (v46)(v43, v16);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t EnergyTrends.intervalDateRangeStartingAt(_:)@<X0>(void (*a1)(void, void, void)@<X0>, char *a2@<X8>)
{
  v7 = *v2;
  v5 = type metadata accessor for EnergyTrends();
  return static EnergyTrends.intervalDateRangeStartingAt(_:displayInterval:with:)(a1, &v7, &v2[*(v5 + 32)], a2);
}

uint64_t EnergyTrends.displayGranularityInterval(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = sub_20DF475C4();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C988, &qword_20DF4AD10);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v14 = sub_20DF474E4();
  v47 = *(v14 - 8);
  v48 = v14;
  v15 = *(v47 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v40 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v40 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v40 - v26;
  v28 = *(type metadata accessor for EnergyTrends() + 32);
  v49 = a1;
  sub_20DF47A44();
  v45 = v2;
  v29 = *v2;
  if (v29 <= 2)
  {
    v31 = v47;
    v30 = v48;
    if (v29 - 1 >= 2)
    {
      (*(v47 + 16))(v25, v27, v48);
      sub_20DF47AE4();
      sub_20DF47454();
    }

    else
    {
      (*(v47 + 16))(v25, v27, v48);
      sub_20DF47AF4();
    }

    goto LABEL_9;
  }

  v32 = v18;
  v34 = v42;
  v33 = v43;
  v35 = v44;
  if (v29 == 3)
  {
    v30 = v48;
    v36 = *(v47 + 16);
    v37 = v21;
    v31 = v47;
    v41 = v37;
    v36();
    (*(v33 + 104))(v34, *MEMORY[0x277CC99B8], v35);
    sub_20DF475A4();
    (*(v33 + 8))(v34, v35);
    result = (*(v31 + 48))(v13, 1, v30);
    if (result != 1)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    v31 = v47;
    v30 = v48;
    v39 = *(v47 + 16);
    v41 = v32;
    v39(v32, v27, v48);
    (*(v33 + 104))(v34, *MEMORY[0x277CC9998], v35);
    sub_20DF475A4();
    (*(v33 + 8))(v34, v35);
    result = (*(v31 + 48))(v11, 1, v30);
    if (result != 1)
    {
LABEL_9:
      sub_20DF473A4();
      return (*(v31 + 8))(v27, v30);
    }
  }

  __break(1u);
  return result;
}

uint64_t static EnergyTrends.intervalDateRangeContaining(startDate:interval:with:)@<X0>(unsigned __int8 *a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = sub_20DF474E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v16[-v12];
  v14 = *a1;
  if (v14 <= 1)
  {
    if (v14)
    {
      sub_20DF47AB4();
    }

    else
    {
      sub_20DF47594();
    }
  }

  else if (v14 == 2)
  {
    sub_20DF47A84();
  }

  else if (v14 == 3)
  {
    sub_20DF47A94();
  }

  else
  {
    sub_20DF47A74();
  }

  (*(v7 + 32))(v13, v11, v6);
  v17 = v14;
  static EnergyTrends.intervalDateRangeStartingAt(_:displayInterval:with:)(v13, &v17, a2, a3);
  return (*(v7 + 8))(v13, v6);
}

uint64_t EnergyTrends.numDaysIn(usage:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20DF475C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v30 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = sub_20DF474E4();
  v30 = *(v15 - 8);
  v31 = v15;
  v16 = *(v30 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = **(&unk_277E1A2C0 + *v1);
  v20 = *(v5 + 104);
  v20(v14, v19, v4);
  (*(v5 + 16))(v12, v14, v4);
  v21 = (*(v5 + 88))(v12, v4);
  if (v21 == *MEMORY[0x277CC9998])
  {
    goto LABEL_2;
  }

  if (v21 == *MEMORY[0x277CC9968])
  {
    (*(v5 + 8))(v14, v4);
    return 1;
  }

  if (v21 == *MEMORY[0x277CC9980])
  {
    sub_20DF47AE4();
    sub_20DF47454();
    goto LABEL_3;
  }

  if (v21 == *MEMORY[0x277CC9940])
  {
LABEL_2:
    v20(v9, v21, v4);
    v22 = &v2[*(type metadata accessor for EnergyTrends() + 24)];
    sub_20DF47AC4();
    (*(v5 + 8))(v9, v4);
LABEL_3:
    v24 = v30;
    v23 = v31;
    goto LABEL_4;
  }

  v24 = v30;
  v23 = v31;
  (*(v30 + 16))(v18, a1, v31);
  (*(v5 + 8))(v12, v4);
LABEL_4:
  v25 = *(type metadata accessor for EnergyTrends() + 24);
  v26 = sub_20DF47AA4();
  v28 = v27;
  (*(v5 + 8))(v14, v4);
  (*(v24 + 8))(v18, v23);
  if (v28)
  {
    return 1;
  }

  else
  {
    return v26;
  }
}

uint64_t sub_20DEEA430()
{
  sub_20DF474E4();
  sub_20DEF1558(&qword_281122978);
  if ((sub_20DF47CE4() & 1) == 0)
  {
    return 0;
  }

  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C980, &unk_20DF49A50) + 36);
  return sub_20DF47CD4() & 1;
}

uint64_t sub_20DEEA4EC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for EnergySite.EnergyUsage(0);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_20DEEF8EC(a3 + v16 + v17 * v14, v13, type metadata accessor for EnergySite.EnergyUsage);
      v18 = a1(v13);
      if (v3)
      {
        sub_20DEEF954(v13, type metadata accessor for EnergySite.EnergyUsage);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_20DEF159C(v13, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20DEF12FC(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_20DEF12FC(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_20DEF159C(v25, v15 + v16 + v21 * v17);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_20DEEF954(v13, type metadata accessor for EnergySite.EnergyUsage);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t EnergyTrends.previousIntervalStart(for:)()
{
  v1 = sub_20DF475C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (v6 > 3)
  {
    v7 = MEMORY[0x277CC9988];
  }

  else
  {
    v7 = qword_277E1A2E8[v6];
    v8 = qword_20DF4AD88[v6];
  }

  (*(v2 + 104))(v5, *v7, v1);
  v9 = &v0[*(type metadata accessor for EnergyTrends() + 32)];
  sub_20DF47AD4();
  return (*(v2 + 8))(v5, v1);
}

uint64_t EnergyTrends.previousIntervalDateRange(before:)@<X0>(char *a1@<X8>)
{
  v17 = a1;
  v2 = sub_20DF475C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20DF474E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  if (v12 > 3)
  {
    v13 = MEMORY[0x277CC9988];
  }

  else
  {
    v13 = qword_277E1A2E8[v12];
    v14 = qword_20DF4AD88[v12];
  }

  (*(v3 + 104))(v6, *v13, v2);
  v15 = *(type metadata accessor for EnergyTrends() + 32);
  sub_20DF47AD4();
  (*(v3 + 8))(v6, v2);
  v18 = *v1;
  static EnergyTrends.intervalDateRangeStartingAt(_:displayInterval:with:)(v11, &v18, &v1[v15], v17);
  return (*(v8 + 8))(v11, v7);
}

Swift::Int __swiftcall EnergyTrends.totalDaysForUsages(_:)(Swift::OpaquePointer a1)
{
  v3 = type metadata accessor for EnergySite.EnergyUsage(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 <= 1u && !*v1)
  {

    return 1;
  }

  v9 = sub_20DF483D4();

  if (v9)
  {
    return 1;
  }

  v10 = *(a1._rawValue + 2);
  if (!v10)
  {
    return 0;
  }

  v8 = 0;
  v11 = *(v3 + 32);
  v12 = a1._rawValue + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v13 = *(v4 + 72);
  while (1)
  {
    sub_20DEEF8EC(v12, v7, type metadata accessor for EnergySite.EnergyUsage);
    v14 = *&v7[v11];
    result = sub_20DEEF954(v7, type metadata accessor for EnergySite.EnergyUsage);
    v16 = __OFADD__(v8, v14);
    v8 += v14;
    if (v16)
    {
      break;
    }

    v12 += v13;
    if (!--v10)
    {
      return v8;
    }
  }

  __break(1u);
  return result;
}

double EnergyTrends.calculateDeltaNetImports(startDate:pricingIndex:gridQualityIndex:)(void (*a1)(void, void, void), Swift::Int a2, int a3, uint64_t a4, int a5)
{
  v10 = sub_20DF475C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20DF474E4();
  v15 = *(v32 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v32);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a3;
  v34 = a5;
  v19 = a5 & 1;
  v20 = a2;
  EnergyTrends.dailyAverageNetImportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(a1, a2, a3 & 1, v21, v19);
  v23 = v22;
  v24 = *v5;
  if (v24 > 3)
  {
    v25 = MEMORY[0x277CC9988];
  }

  else
  {
    v25 = qword_277E1A2E8[v24];
    v26 = qword_20DF4AD88[v24];
  }

  (*(v11 + 104))(v14, *v25, v10);
  v27 = &v5[*(type metadata accessor for EnergyTrends() + 32)];
  sub_20DF47AD4();
  (*(v11 + 8))(v14, v10);
  EnergyTrends.dailyAverageNetImportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(v18, v20, v33 & 1, v28, v34 & 1);
  v30 = v29;
  (*(v15 + 8))(v18, v32);
  return v23 - v30;
}

uint64_t EnergyTrends.dailyAverageNetImportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(void (*a1)(void, void, void), Swift::Int a2, char a3, uint64_t a4, char a5)
{
  v10 = type metadata accessor for EnergySite.EnergyUsage(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v43[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v43[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C980, &unk_20DF49A50);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v43[-v20];
  v45 = *v5;
  v22 = type metadata accessor for EnergyTrends();
  static EnergyTrends.intervalDateRangeStartingAt(_:displayInterval:with:)(a1, &v45, v5 + *(v22 + 32), v21);
  v23 = *(v5 + 8);
  v44 = v21;

  v24 = sub_20DEEA4EC(sub_20DEF1600, v43, v23);
  v25._rawValue = v24;
  if (a3)
  {
    if ((a5 & 1) == 0)
    {
      v26 = *(v24 + 16);
      if (v26)
      {
        v27 = *(v10 + 24);
        v28 = *(v10 + 32);
        v29 = v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        v30 = *(v11 + 72);
        v31 = 0.0;
        do
        {
          sub_20DEEF8EC(v29, v17, type metadata accessor for EnergySite.EnergyUsage);
          v32 = *&v17[v27];
          v33 = *&v17[v28];
          sub_20DEEF954(v17, type metadata accessor for EnergySite.EnergyUsage);
          v31 = v31 + v32 * v33;
          v29 += v30;
          --v26;
        }

        while (v26);
      }

LABEL_12:
      EnergyTrends.totalDaysForUsages(_:)(v25);
      EnergyTrends.totalExportsFor(usages:)(v25);
      goto LABEL_13;
    }

LABEL_9:
    v34 = *(v24 + 16);
    if (v34)
    {
      v35 = *(v10 + 24);
      v36 = *(v10 + 32);
      v37 = v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v38 = *(v11 + 72);
      v39 = 0.0;
      do
      {
        sub_20DEEF8EC(v37, v15, type metadata accessor for EnergySite.EnergyUsage);
        v40 = *&v15[v35];
        v41 = *&v15[v36];
        sub_20DEEF954(v15, type metadata accessor for EnergySite.EnergyUsage);
        v39 = v39 + v40 * v41;
        v37 += v38;
        --v34;
      }

      while (v34);
    }

    goto LABEL_12;
  }

  if ((a5 & 1) == 0)
  {
    goto LABEL_9;
  }

  EnergyTrends.totalImportsByPricingPeriod(_:for:)(a2, v24);
  EnergyTrends.totalExportsByPricingPeriod(_:for:)(a2, v25);
LABEL_13:

  return sub_20DED8730(v21, &qword_27C84C980, &unk_20DF49A50);
}

double EnergyTrends.previousDailyAverageImportsForInterval(starting:pricingIndex:gridQualityIndex:)(uint64_t a1, Swift::Int a2, char a3, uint64_t a4, int a5)
{
  v26 = a5;
  v27 = a2;
  v7 = sub_20DF475C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_20DF474E4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *v5;
  if (v17 > 3)
  {
    v18 = MEMORY[0x277CC9988];
  }

  else
  {
    v18 = qword_277E1A2E8[v17];
    v19 = qword_20DF4AD88[v17];
  }

  (*(v8 + 104))(v11, *v18, v7);
  v20 = &v5[*(type metadata accessor for EnergyTrends() + 32)];
  sub_20DF47AD4();
  (*(v8 + 8))(v11, v7);
  EnergyTrends.dailyAverageNetImportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(v16, v27, a3 & 1, v21, v26 & 1);
  v23 = v22;
  (*(v13 + 8))(v16, v12);
  return v23;
}

uint64_t EnergyTrends.calculatedAvgIntervalNetImportPercentChange(startDate:)(void (*a1)(void, void, void))
{
  v3 = sub_20DF475C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20DF474E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  EnergyTrends.dailyAverageNetImportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(a1, 0, 1, v13, 1);
  v15 = v14;
  v16 = *v1;
  if (v16 > 3)
  {
    v17 = MEMORY[0x277CC9988];
  }

  else
  {
    v17 = qword_277E1A2E8[v16];
    v18 = qword_20DF4AD88[v16];
  }

  (*(v4 + 104))(v7, *v17, v3);
  v19 = &v1[*(type metadata accessor for EnergyTrends() + 32)];
  sub_20DF47AD4();
  (*(v4 + 8))(v7, v3);
  EnergyTrends.dailyAverageNetImportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(v12, 0, 1, v20, 1);
  v22 = v21;
  (*(v9 + 8))(v12, v8);
  result = 0;
  if (v22 != 0.0)
  {
    v24 = rint((v15 / v22 + -1.0) * 100.0);
    if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v24 > -9.22337204e18)
    {
      if (v24 < 9.22337204e18)
      {
        if (v24 <= -100)
        {
          return -100;
        }

        else
        {
          return v24;
        }
      }

LABEL_14:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

  return result;
}

double EnergyTrends.dailyAverageChangeForInterval(starting:)(void (*a1)(void, void, void))
{
  v3 = sub_20DF475C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20DF474E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  EnergyTrends.dailyAverageNetImportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(a1, 0, 1, v13, 1);
  v15 = v14;
  v16 = *v1;
  if (v16 > 3)
  {
    v17 = MEMORY[0x277CC9988];
  }

  else
  {
    v17 = qword_277E1A2E8[v16];
    v18 = qword_20DF4AD88[v16];
  }

  (*(v4 + 104))(v7, *v17, v3);
  v19 = &v1[*(type metadata accessor for EnergyTrends() + 32)];
  sub_20DF47AD4();
  (*(v4 + 8))(v7, v3);
  EnergyTrends.dailyAverageNetImportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(v12, 0, 1, v20, 1);
  v22 = v21;
  (*(v9 + 8))(v12, v8);
  return v15 - v22;
}

uint64_t EnergyTrends.containsUsageForDate(_:)(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v43 = sub_20DF474E4();
  v40 = *(v43 - 8);
  v3 = *(v40 + 64);
  v4 = MEMORY[0x28223BE20](v43);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - v6;
  v8 = type metadata accessor for EnergySite.EnergyUsage(0);
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20DF47604();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20DF47574();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20DF475D4();
  v38 = *(v22 - 8);
  v39 = v22;
  v23 = *(v38 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 104))(v21, *MEMORY[0x277CC9830], v17);
  sub_20DF47584();
  (*(v18 + 8))(v21, v17);
  v26 = type metadata accessor for EnergyTrends();
  (*(v13 + 16))(v16, v2 + *(v26 + 24), v12);
  result = sub_20DF475B4();
  v28 = 0;
  v29 = *(v2 + 8);
  v45 = *(v29 + 16);
  v30 = (v40 + 8);
  while (1)
  {
    v31 = v28;
    if (v45 == v28)
    {
LABEL_5:
      v37 = v45 != v31;
      (*(v38 + 8))(v25, v39);
      return v37;
    }

    if (v28 >= *(v29 + 16))
    {
      break;
    }

    sub_20DEEF8EC(v29 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v28++, v11, type metadata accessor for EnergySite.EnergyUsage);
    sub_20DF47594();
    v32 = v42;
    sub_20DF47594();
    v33 = sub_20DF474A4();
    v34 = *v30;
    v35 = v32;
    v36 = v43;
    (*v30)(v35, v43);
    v34(v7, v36);
    result = sub_20DEEF954(v11, type metadata accessor for EnergySite.EnergyUsage);
    if (v33)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

Swift::tuple_totalImports_Double_totalDays_Int __swiftcall EnergyTrends.totalImportsByPricingPeriod(_:for:)(Swift::Int _, Swift::OpaquePointer a2)
{
  v4 = type metadata accessor for EnergySite.EnergyUsage(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2._rawValue + 2);
  if (v10)
  {
    v11 = *(v6 + 40);
    v12 = *(v6 + 32);
    v13 = a2._rawValue + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);
    v15 = 0.0;
    do
    {
      sub_20DEEF8EC(v13, v9, type metadata accessor for EnergySite.EnergyUsage);
      v16 = *&v9[v11];
      v17 = 0.0;
      if (*(v16 + 16))
      {
        v18 = sub_20DEEFA18(_);
        v17 = 0.0;
        if (v19)
        {
          v17 = *(*(v16 + 56) + 8 * v18);
        }
      }

      v15 = v15 + v17 * *&v9[v12];
      sub_20DEEF954(v9, type metadata accessor for EnergySite.EnergyUsage);
      v13 += v14;
      --v10;
    }

    while (v10);
  }

  else
  {
    v15 = 0.0;
  }

  v20 = EnergyTrends.totalDaysForUsages(_:)(a2);
  v21 = v15;
  result.totalImports = v21;
  result.totalDays = v20;
  return result;
}

Swift::tuple_totalExports_Double_totalDays_Int __swiftcall EnergyTrends.totalExportsByPricingPeriod(_:for:)(Swift::Int _, Swift::OpaquePointer a2)
{
  v4 = type metadata accessor for EnergySite.EnergyUsage(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2._rawValue + 2);
  if (v10)
  {
    v11 = *(v6 + 44);
    v12 = *(v6 + 32);
    v13 = a2._rawValue + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);
    v15 = 0.0;
    do
    {
      sub_20DEEF8EC(v13, v9, type metadata accessor for EnergySite.EnergyUsage);
      v16 = *&v9[v11];
      v17 = 0.0;
      if (*(v16 + 16))
      {
        v18 = sub_20DEEFA18(_);
        v17 = 0.0;
        if (v19)
        {
          v17 = *(*(v16 + 56) + 8 * v18);
        }
      }

      v15 = v15 + v17 * *&v9[v12];
      sub_20DEEF954(v9, type metadata accessor for EnergySite.EnergyUsage);
      v13 += v14;
      --v10;
    }

    while (v10);
  }

  else
  {
    v15 = 0.0;
  }

  v20 = EnergyTrends.totalDaysForUsages(_:)(a2);
  v21 = v15;
  result.totalExports = v21;
  result.totalDays = v20;
  return result;
}

Swift::tuple_totalImports_Double_totalDays_Int __swiftcall EnergyTrends.totalImportsFor(usages:)(Swift::OpaquePointer usages)
{
  v2 = type metadata accessor for EnergySite.EnergyUsage(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(usages._rawValue + 2);
  if (v8)
  {
    v9 = *(v4 + 24);
    v10 = *(v4 + 32);
    v11 = usages._rawValue + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    v13 = 0.0;
    do
    {
      sub_20DEEF8EC(v11, v7, type metadata accessor for EnergySite.EnergyUsage);
      v14 = *&v7[v9];
      v15 = *&v7[v10];
      sub_20DEEF954(v7, type metadata accessor for EnergySite.EnergyUsage);
      v13 = v13 + v14 * v15;
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  else
  {
    v13 = 0.0;
  }

  v16 = EnergyTrends.totalDaysForUsages(_:)(usages);
  v17 = v13;
  result.totalImports = v17;
  result.totalDays = v16;
  return result;
}

Swift::tuple_totalExports_Double_totalDays_Int __swiftcall EnergyTrends.totalExportsFor(usages:)(Swift::OpaquePointer usages)
{
  v2 = v1;
  v41 = type metadata accessor for EnergySite.EnergyUsage(0);
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v41);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnergyTrends();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20DF47BD4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2811225A8[0] != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_281122F00);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  sub_20DEEF8EC(v2, v11, type metadata accessor for EnergyTrends);

  v18 = sub_20DF47BB4();
  v43 = v12;
  v19 = v18;
  v20 = sub_20DF48004();
  v21 = os_log_type_enabled(v19, v20);
  v44 = v2;
  v42 = v4;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v45 = v40;
    *v22 = 136315650;
    *(v22 + 4) = sub_20DED38E8(0xD000000000000018, 0x800000020DF4F3D0, &v45);
    *(v22 + 12) = 2080;
    v23 = &v11[*(v8 + 28)];
    v25 = *v23;
    v24 = v23[1];

    sub_20DEEF954(v11, type metadata accessor for EnergyTrends);
    v26 = sub_20DED38E8(v25, v24, &v45);

    *(v22 + 14) = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = *(usages._rawValue + 2);

    _os_log_impl(&dword_20DEAF000, v19, v20, "%s (%s) found %ld usages in date range", v22, 0x20u);
    v27 = v40;
    swift_arrayDestroy();
    MEMORY[0x20F329700](v27, -1, -1);
    MEMORY[0x20F329700](v22, -1, -1);
  }

  else
  {

    sub_20DEEF954(v11, type metadata accessor for EnergyTrends);
  }

  (*(v13 + 8))(v16, v43);
  v28 = *(usages._rawValue + 2);
  if (v28)
  {
    v29 = *(v41 + 28);
    v30 = *(v41 + 32);
    v31 = usages._rawValue + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v32 = *(v42 + 72);
    v33 = 0.0;
    do
    {
      sub_20DEEF8EC(v31, v7, type metadata accessor for EnergySite.EnergyUsage);
      v34 = *&v7[v29];
      v35 = *&v7[v30];
      sub_20DEEF954(v7, type metadata accessor for EnergySite.EnergyUsage);
      v33 = v33 + v34 * v35;
      v31 += v32;
      --v28;
    }

    while (v28);
  }

  else
  {
    v33 = 0.0;
  }

  v36 = EnergyTrends.totalDaysForUsages(_:)(usages);
  v37 = v33;
  result.totalExports = v37;
  result.totalDays = v36;
  return result;
}

double EnergyTrends.totalImportsForInterval(starting:)(void (*a1)(void, void, void))
{
  v3 = type metadata accessor for EnergySite.EnergyUsage(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C980, &unk_20DF49A50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25[-v10];
  v27 = *v1;
  v12 = type metadata accessor for EnergyTrends();
  static EnergyTrends.intervalDateRangeStartingAt(_:displayInterval:with:)(a1, &v27, v1 + *(v12 + 32), v11);
  v13 = *(v1 + 8);
  v26 = v11;

  v14 = sub_20DEEA4EC(sub_20DEF1600, v25, v13);
  v15._rawValue = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v17 = *(v3 + 24);
    v18 = *(v3 + 32);
    v19 = v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v20 = *(v4 + 72);
    v21 = 0.0;
    do
    {
      sub_20DEEF8EC(v19, v7, type metadata accessor for EnergySite.EnergyUsage);
      v22 = *&v7[v17];
      v23 = *&v7[v18];
      sub_20DEEF954(v7, type metadata accessor for EnergySite.EnergyUsage);
      v21 = v21 + v22 * v23;
      v19 += v20;
      --v16;
    }

    while (v16);
  }

  else
  {
    v21 = 0.0;
  }

  EnergyTrends.totalDaysForUsages(_:)(v15);

  sub_20DED8730(v11, &qword_27C84C980, &unk_20DF49A50);
  return v21;
}

double EnergyTrends.calculateDeltaNetExports(startDate:pricingIndex:gridQualityIndex:)(void (*a1)(void, void, void), Swift::Int a2, int a3, uint64_t a4, int a5)
{
  v10 = sub_20DF475C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20DF474E4();
  v15 = *(v32 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v32);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a3;
  v34 = a5;
  v19 = a5 & 1;
  v20 = a2;
  EnergyTrends.dailyAverageNetExportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(a1, a2, a3 & 1, v21, v19);
  v23 = v22;
  v24 = *v5;
  if (v24 > 3)
  {
    v25 = MEMORY[0x277CC9988];
  }

  else
  {
    v25 = qword_277E1A2E8[v24];
    v26 = qword_20DF4AD88[v24];
  }

  (*(v11 + 104))(v14, *v25, v10);
  v27 = &v5[*(type metadata accessor for EnergyTrends() + 32)];
  sub_20DF47AD4();
  (*(v11 + 8))(v14, v10);
  EnergyTrends.dailyAverageNetExportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(v18, v20, v33 & 1, v28, v34 & 1);
  v30 = v29;
  (*(v15 + 8))(v18, v32);
  return v23 - v30;
}

uint64_t EnergyTrends.dailyAverageNetExportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(void (*a1)(void, void, void), Swift::Int a2, char a3, uint64_t a4, char a5)
{
  v10 = type metadata accessor for EnergySite.EnergyUsage(0);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C980, &unk_20DF49A50);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v41 - v19;
  v45 = *v5;
  v21 = type metadata accessor for EnergyTrends();
  static EnergyTrends.intervalDateRangeStartingAt(_:displayInterval:with:)(a1, &v45, v5 + *(v21 + 32), v20);
  v22 = *(v5 + 8);
  v44 = v20;

  v23 = sub_20DEEA4EC(sub_20DEF1600, v43, v22);
  v24._rawValue = v23;
  if (a3)
  {
    EnergyTrends.totalExportsFor(usages:)(v23);
    v25 = *(v24._rawValue + 2);
    if (a5)
    {
      if (v25)
      {
        v26 = *(v10 + 24);
        v27 = *(v10 + 32);
        v28 = v24._rawValue + ((*(v42 + 80) + 32) & ~*(v42 + 80));
        v29 = *(v42 + 72);
        v30 = 0.0;
        do
        {
          sub_20DEEF8EC(v28, v14, type metadata accessor for EnergySite.EnergyUsage);
          v31 = *&v14[v26];
          v32 = *&v14[v27];
          sub_20DEEF954(v14, type metadata accessor for EnergySite.EnergyUsage);
          v30 = v30 + v31 * v32;
          v28 += v29;
          --v25;
        }

        while (v25);
      }
    }

    else if (v25)
    {
      v33 = *(v10 + 24);
      v34 = *(v10 + 32);
      v35 = v24._rawValue + ((*(v42 + 80) + 32) & ~*(v42 + 80));
      v36 = *(v42 + 72);
      v37 = 0.0;
      do
      {
        sub_20DEEF8EC(v35, v16, type metadata accessor for EnergySite.EnergyUsage);
        v38 = *&v16[v33];
        v39 = *&v16[v34];
        sub_20DEEF954(v16, type metadata accessor for EnergySite.EnergyUsage);
        v37 = v37 + v38 * v39;
        v35 += v36;
        --v25;
      }

      while (v25);
    }

    EnergyTrends.totalDaysForUsages(_:)(v24);
  }

  else
  {
    EnergyTrends.totalExportsByPricingPeriod(_:for:)(a2, v23);
    EnergyTrends.totalImportsByPricingPeriod(_:for:)(a2, v24);
  }

  return sub_20DED8730(v20, &qword_27C84C980, &unk_20DF49A50);
}

double EnergyTrends.previousDailyAverageExportsForInterval(starting:pricingIndex:gridQualityIndex:)(uint64_t a1, Swift::Int a2, char a3, uint64_t a4, int a5)
{
  v26 = a5;
  v27 = a2;
  v7 = sub_20DF475C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_20DF474E4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *v5;
  if (v17 > 3)
  {
    v18 = MEMORY[0x277CC9988];
  }

  else
  {
    v18 = qword_277E1A2E8[v17];
    v19 = qword_20DF4AD88[v17];
  }

  (*(v8 + 104))(v11, *v18, v7);
  v20 = &v5[*(type metadata accessor for EnergyTrends() + 32)];
  sub_20DF47AD4();
  (*(v8 + 8))(v11, v7);
  EnergyTrends.dailyAverageNetExportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(v16, v27, a3 & 1, v21, v26 & 1);
  v23 = v22;
  (*(v13 + 8))(v16, v12);
  return v23;
}

double EnergyTrends.averageSurplusOrConsumption(startDate:pricingPeriod:gridQuality:)(void (*a1)(void, void, void), Swift::Int a2, char a3, uint64_t a4, char a5)
{
  v52 = type metadata accessor for EnergySite.EnergyUsage(0);
  v10 = *(v52 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v52);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C980, &unk_20DF49A50);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v54 = &v51 - v19;
  EnergyTrends.dailyAverageNetImportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(a1, a2, a3 & 1, v20, a5 & 1);
  v22 = v21;
  v23 = *v5;
  v53 = v10;
  if (!v23)
  {

    goto LABEL_4;
  }

  v24 = sub_20DF483D4();

  if (v24)
  {
LABEL_4:
    v55 = *v5;
    v26 = type metadata accessor for EnergyTrends();
    v27 = v54;
    v28 = static EnergyTrends.intervalDateRangeStartingAt(_:displayInterval:with:)(a1, &v55, &v5[*(v26 + 32)], v54);
    v29 = *(v5 + 1);
    MEMORY[0x28223BE20](v28);
    *(&v51 - 2) = v27;

    v30 = sub_20DEEA4EC(sub_20DEF1600, (&v51 - 4), v29);
    v31._rawValue = v30;
    if (a3)
    {
      if ((a5 & 1) == 0)
      {
        if (v22 >= 0.0)
        {
          v32 = *(v30 + 16);
          if (v32)
          {
            v33 = *(v52 + 24);
            v34 = *(v52 + 32);
            v35 = v30 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
            v36 = *(v53 + 72);
            v37 = 0.0;
            do
            {
              sub_20DEEF8EC(v35, v16, type metadata accessor for EnergySite.EnergyUsage);
              v38 = *&v16[v33];
              v39 = *&v16[v34];
              sub_20DEEF954(v16, type metadata accessor for EnergySite.EnergyUsage);
              v37 = v37 + v38 * v39;
              v35 += v36;
              --v32;
            }

            while (v32);
            goto LABEL_28;
          }

LABEL_27:
          v37 = 0.0;
LABEL_28:
          EnergyTrends.totalDaysForUsages(_:)(v31);
LABEL_31:

          sub_20DED8730(v54, &qword_27C84C980, &unk_20DF49A50);
          return v37;
        }

LABEL_19:
        totalDays = EnergyTrends.totalExportsFor(usages:)(v30).totalDays;
LABEL_30:
        v37 = *&totalDays;
        goto LABEL_31;
      }
    }

    else if (a5)
    {
      if (v22 >= 0.0)
      {
        totalDays = EnergyTrends.totalImportsByPricingPeriod(_:for:)(a2, v30).totalDays;
      }

      else
      {
        totalDays = EnergyTrends.totalExportsByPricingPeriod(_:for:)(a2, v30).totalDays;
      }

      goto LABEL_30;
    }

    if (v22 >= 0.0)
    {
      v44 = *(v30 + 16);
      if (v44)
      {
        v45 = *(v52 + 24);
        v46 = *(v52 + 32);
        v47 = v30 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
        v48 = *(v53 + 72);
        v37 = 0.0;
        do
        {
          sub_20DEEF8EC(v47, v14, type metadata accessor for EnergySite.EnergyUsage);
          v49 = *&v14[v45];
          v50 = *&v14[v46];
          sub_20DEEF954(v14, type metadata accessor for EnergySite.EnergyUsage);
          v37 = v37 + v49 * v50;
          v47 += v48;
          --v44;
        }

        while (v44);
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    goto LABEL_19;
  }

  v40 = a3 & 1;
  v41 = a5 & 1;
  if (v22 >= 0.0)
  {

    EnergyTrends.dailyAverageNetImportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(a1, a2, v40, v25, v41);
  }

  else
  {

    EnergyTrends.dailyAverageNetExportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(a1, a2, v40, v25, v41);
  }

  return result;
}

char *static EnergyTrends.requestSnapshotDates(intervalType:timeZone:)(unsigned __int8 *a1, void (**a2)(char *, uint64_t))
{
  v85 = a2;
  v73 = sub_20DF475C4();
  v80 = *(v73 - 8);
  v3 = *(v80 + 64);
  MEMORY[0x28223BE20](v73);
  v72 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_20DF474E4();
  v5 = *(v78 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v78);
  v66 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v65 = &v62 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v77 = &v62 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v76 = &v62 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v83 = &v62 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v82 = &v62 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v62 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v81 = &v62 - v23;
  MEMORY[0x28223BE20](v22);
  v84 = &v62 - v24;
  v25 = sub_20DF47604();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_20DF47574();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_20DF475D4();
  v62 = *(v63 - 8);
  v35 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v37 = &v62 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *a1;
  if (v70 < 2)
  {
    v38 = -1;
  }

  else
  {
    v38 = -5;
  }

  (*(v31 + 104))(v34, *MEMORY[0x277CC9830], v30);
  sub_20DF47584();
  (*(v31 + 8))(v34, v30);
  (*(v26 + 16))(v29, v85, v25);
  sub_20DF475B4();
  v69 = *MEMORY[0x277CC9988];
  v67 = (v80 + 8);
  v68 = (v80 + 104);
  v85 = (v5 + 8);
  v71 = v5;
  v79 = v5 + 32;
  v80 = v5 + 16;
  v39 = v78;
  v40 = MEMORY[0x277D84F90];
  v64 = v21;
  v75 = v37;
  do
  {
    v41 = v81;
    sub_20DF474B4();
    v43 = v72;
    v42 = v73;
    (*v68)(v72, v69, v73);
    sub_20DF47AD4();
    (*v67)(v43, v42);
    v44 = *v85;
    (*v85)(v41, v39);
    sub_20DF47A74();
    if (v70 == 3)
    {

LABEL_10:
      sub_20DF47594();
      v46 = v83;
      sub_20DF47A94();
      v47 = *v80;
      (*v80)(v76, v46, v39);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_20DEB84B4(0, *(v40 + 2) + 1, 1, v40);
      }

      v49 = *(v40 + 2);
      v48 = *(v40 + 3);
      if (v49 >= v48 >> 1)
      {
        v40 = sub_20DEB84B4(v48 > 1, v49 + 1, 1, v40);
      }

      *(v40 + 2) = v49 + 1;
      v74 = (*(v71 + 80) + 32) & ~*(v71 + 80);
      v50 = *(v71 + 72);
      v51 = &v40[v74 + v50 * v49];
      v52 = *(v71 + 32);
      v53 = v78;
      v52(v51, v76, v78);
      v54 = v81;
      sub_20DF47A54();
      v55 = v83;
      v44(v83, v53);
      v52(v55, v54, v53);
      v47(v77, v55, v53);
      v57 = *(v40 + 2);
      v56 = *(v40 + 3);
      if (v57 >= v56 >> 1)
      {
        v40 = sub_20DEB84B4(v56 > 1, v57 + 1, 1, v40);
      }

      v39 = v78;
      v44(v83, v78);
      v44(v82, v39);
      v21 = v64;
      v44(v64, v39);
      v44(v84, v39);
      *(v40 + 2) = v57 + 1;
      v52(&v40[v74 + v57 * v50], v77, v39);
      v37 = v75;
      goto LABEL_6;
    }

    v45 = sub_20DF483D4();

    if (v45)
    {
      goto LABEL_10;
    }

    v58 = v65;
    sub_20DF47594();
    (*v80)(v66, v58, v39);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_20DEB84B4(0, *(v40 + 2) + 1, 1, v40);
    }

    v60 = *(v40 + 2);
    v59 = *(v40 + 3);
    if (v60 >= v59 >> 1)
    {
      v40 = sub_20DEB84B4(v59 > 1, v60 + 1, 1, v40);
    }

    v44(v65, v39);
    v44(v21, v39);
    v44(v84, v39);
    *(v40 + 2) = v60 + 1;
    (*(v71 + 32))(&v40[((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v60], v66, v39);
LABEL_6:
    ++v38;
  }

  while (v38 != 1);
  (*(v62 + 8))(v37, v63);
  return v40;
}

uint64_t static EnergyTrends.allocateSeats<A>(for:seats:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_20DF47BD4();
  v64 = *(v8 - 8);
  v9 = *(v64 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v60 = *(TupleTypeMetadata2 - 8);
  v61 = TupleTypeMetadata2;
  v13 = v60[8];
  v14 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v63 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v62 = &v50 - v17;
  MEMORY[0x28223BE20](v16);
  v59 = &v50 - v18;
  v66 = 0;
  v67[0] = a1;
  sub_20DF47C54();

  swift_getWitnessTable();
  v19 = 0;
  sub_20DF47DB4();

  v21 = v65[0];
  if (v65[0] <= 0.0)
  {
    v19 = sub_20DF47C64();
    if (qword_2811225A8[0] == -1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v21 = a2 / v65[0];
    MEMORY[0x28223BE20](v20);
    *(&v50 - 2) = v21;
    v11 = sub_20DF47C64();
    v66 = v11;
    v67[0] = v11;
    v65[4] = 0.0;
    v64 = a3;
    sub_20DF47C54();

    swift_getWitnessTable();
    sub_20DF47DB4();

    if (!__OFSUB__(a2, *&v65[0]))
    {
      if (a2 - *&v65[0] < 1)
      {
        return v67[0];
      }

      MEMORY[0x28223BE20](v22);
      *(&v50 - 2) = v21;
      v8 = v64;
      *&v65[0] = sub_20DF47C64();
      MEMORY[0x28223BE20](*&v65[0]);
      *(&v50 - 2) = v8;
      *(&v50 - 1) = a4;
      v57 = a4;
      sub_20DF47C74();
      swift_getWitnessTable();
      v23 = sub_20DF47DC4();

      v66 = v23;
      v24 = v61;
      sub_20DF47EB4();
      swift_getWitnessTable();
      sub_20DF47FC4();
      v11 = *&v65[1];
      v25 = v65[2];
      v19 = *&v65[3];
      swift_unknownObjectRetain();
      v26 = sub_20DF48084();
      swift_unknownObjectRelease();
      v27 = sub_20DF480A4();
      v58 = v26;
      if (v26 == v27)
      {
LABEL_5:
        swift_unknownObjectRelease();
        return v67[0];
      }

      v55 = *(v24 + 48);
      v56 = v19 >> 1;
      v54 = v60 + 2;
      v53 = v8 - 8;
      v51 = (v60 + 1);
      v40 = v58;
      v52 = v19;
      while (1)
      {
        sub_20DF48094();
        if (v58 < *&v25 || v56 <= v40)
        {
          break;
        }

        v42 = v59;
        v43 = v11;
        v44 = v60[2];
        v44(v59, v11 + v60[9] * v40, v24);
        v21 = *&v42[v55];
        v45 = *(v24 + 48);
        v8 = *(v64 - 8);
        v46 = v62;
        (*(v8 + 32))(v62, v42, v64);
        *&v46[v45] = v21;
        v19 = v63;
        v11 = v64;
        v47 = v46;
        v24 = v61;
        v44(v63, v47, v61);
        sub_20DF47C74();
        v49 = sub_20DF47C84();
        if ((*(v48 + 8) & 1) == 0)
        {
          if (__OFADD__(*v48, 1))
          {
            goto LABEL_20;
          }

          ++*v48;
        }

        v49(v65, 0);
        ++v40;
        (*v51)(v62, v24);
        v41 = *(v8 + 8);
        v8 += 8;
        v41(v63, v11);
        v11 = v43;
        v19 = v52;
        if (v40 == sub_20DF480A4())
        {
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }

  swift_once();
LABEL_8:
  v28 = __swift_project_value_buffer(v8, qword_281122F00);
  swift_beginAccess();
  v29 = v64;
  (*(v64 + 16))(v11, v28, v8);

  v30 = sub_20DF47BB4();
  v31 = sub_20DF48004();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = v11;
    v34 = swift_slowAlloc();
    v67[0] = v34;
    *v32 = 136315650;
    *(v32 + 4) = sub_20DED38E8(0xD000000000000019, 0x800000020DF4F400, v67);
    *(v32 + 12) = 2048;
    *(v32 + 14) = v21;
    *(v32 + 22) = 2080;
    v35 = sub_20DF47C44();
    v37 = v36;

    v38 = sub_20DED38E8(v35, v37, v67);

    *(v32 + 24) = v38;
    _os_log_impl(&dword_20DEAF000, v30, v31, "%s total %f !!! returning %s", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v34, -1, -1);
    MEMORY[0x20F329700](v32, -1, -1);

    (*(v29 + 8))(v33, v8);
  }

  else
  {

    (*(v29 + 8))(v11, v8);
  }

  return v19;
}

double sub_20DEEE700@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

void *sub_20DEEE714@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

double *sub_20DEEE730@<X0>(double *result@<X0>, double *a2@<X8>, double a3@<D0>)
{
  v3 = *result * a3;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < 9.22337204e18)
  {
    *a2 = v3 - v3;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

Swift::OpaquePointer_optional __swiftcall EnergyTrends.importPricingPeriodsFor(usages:)(Swift::OpaquePointer usages)
{
  v2 = type metadata accessor for EnergySite.EnergyUsage(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(usages._rawValue + 2);
  v7 = 0;
  if (!v40)
  {
    v10 = MEMORY[0x277D84F98];
LABEL_26:
    if (v10[2])
    {
      sub_20DEF13FC(v7);
    }

    else
    {

      sub_20DEF13FC(v7);
      v10 = 0;
    }

    v36 = v10;
    goto LABEL_34;
  }

  v8 = 0;
  v9 = *(v4 + 40);
  v38 = usages._rawValue + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v39 = v9;
  v37 = *(v5 + 72);
  v10 = MEMORY[0x277D84F98];
LABEL_4:
  v11 = v41;
  sub_20DEEF8EC(&v38[v37 * v8++], v41, type metadata accessor for EnergySite.EnergyUsage);
  v12 = *(v11 + v39);

  sub_20DEEF954(v11, type metadata accessor for EnergySite.EnergyUsage);
  v13 = 0;
  v14 = 1 << *(v12 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  for (i = v7; ; i = sub_20DEB677C)
  {
    if (!v16)
    {
      while (1)
      {
        v19 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
          goto LABEL_31;
        }

        if (v19 >= v17)
        {
          break;
        }

        v16 = *(v12 + 64 + 8 * v19);
        ++v13;
        if (v16)
        {
          v13 = v19;
          goto LABEL_14;
        }
      }

      v7 = i;

      if (v8 == v40)
      {
        goto LABEL_26;
      }

      goto LABEL_4;
    }

LABEL_14:
    v20 = (v13 << 9) | (8 * __clz(__rbit64(v16)));
    v21 = *(*(v12 + 48) + v20);
    v22 = *(*(v12 + 56) + v20);
    sub_20DEF13FC(i);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v10;
    v24 = sub_20DEEFA18(v21);
    v26 = v10[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      break;
    }

    v30 = v25;
    if (v10[3] >= v29)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = v24;
        sub_20DEF0B48();
        v24 = v34;
        v10 = v42;
        if (v30)
        {
          goto LABEL_8;
        }

        goto LABEL_20;
      }
    }

    else
    {
      sub_20DEEFEF0(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_20DEEFA18(v21);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_33;
      }
    }

    v10 = v42;
    if (v30)
    {
      goto LABEL_8;
    }

LABEL_20:
    v10[(v24 >> 6) + 8] |= 1 << v24;
    *(v10[6] + 8 * v24) = v21;
    *(v10[7] + 8 * v24) = 0;
    v32 = v10[2];
    v28 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v28)
    {
      goto LABEL_32;
    }

    v10[2] = v33;
LABEL_8:
    v16 &= v16 - 1;
    *(v10[7] + 8 * v24) = v22 + *(v10[7] + 8 * v24);
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  v36 = sub_20DF48424();
  __break(1u);
LABEL_34:
  result.value._rawValue = v36;
  result.is_nil = v35;
  return result;
}

uint64_t sub_20DEEEB3C(void (*a1)(void, void, void), uint64_t (*a2)(char *), uint64_t (*a3)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C980, &unk_20DF49A50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15[-v9];
  v17 = *v3;
  v11 = type metadata accessor for EnergyTrends();
  static EnergyTrends.intervalDateRangeStartingAt(_:displayInterval:with:)(a1, &v17, v3 + *(v11 + 32), v10);
  v12 = *(v3 + 8);
  v16 = v10;

  sub_20DEEA4EC(a2, v15, v12);
  v13 = a3();

  sub_20DED8730(v10, &qword_27C84C980, &unk_20DF49A50);
  return v13;
}

Swift::OpaquePointer_optional __swiftcall EnergyTrends.totalPricingPeriodsFor(usages:)(Swift::OpaquePointer usages)
{
  v33 = *(usages._rawValue + 2);
  if (v33)
  {
    v3 = type metadata accessor for EnergySite.EnergyUsage(0);
    v4 = 0;
    v31 = usages._rawValue + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
    v32 = v3;
    v30 = *(*(v3 - 8) + 72);
    v5 = MEMORY[0x277D84F98];
LABEL_4:
    v6 = &v31[v30 * v4++];
    v7 = *&v6[*(v32 + 48)];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v5;
    v9 = 1 << *(v7 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v7 + 64);
    v12 = (v9 + 63) >> 6;

    for (i = 0; ; i = v14)
    {
      if (!v11)
      {
        while (1)
        {
          v14 = i + 1;
          if (__OFADD__(i, 1))
          {
            __break(1u);
            goto LABEL_29;
          }

          if (v14 >= v12)
          {
            break;
          }

          v11 = *(v7 + 64 + 8 * v14);
          ++i;
          if (v11)
          {
            goto LABEL_15;
          }
        }

        if (v4 == v33)
        {
          goto LABEL_25;
        }

        goto LABEL_4;
      }

      v14 = i;
LABEL_15:
      v15 = (v14 << 9) | (8 * __clz(__rbit64(v11)));
      v16 = *(*(v7 + 48) + v15);
      v17 = *(*(v7 + 56) + v15);
      v18 = sub_20DEEFA18(v16);
      v20 = v5[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        break;
      }

      v24 = v19;
      if (v5[3] >= v23)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = v18;
          sub_20DEF0B48();
          v18 = v28;
        }
      }

      else
      {
        sub_20DEEFEF0(v23, isUniquelyReferenced_nonNull_native & 1);
        v18 = sub_20DEEFA18(v16);
        if ((v24 & 1) != (v25 & 1))
        {
          goto LABEL_31;
        }
      }

      v11 &= v11 - 1;
      v5 = v34;
      if (v24)
      {
        *(v34[7] + 8 * v18) = v17 + *(v34[7] + 8 * v18);
      }

      else
      {
        v34[(v18 >> 6) + 8] |= 1 << v18;
        *(v34[6] + 8 * v18) = v16;
        *(v34[7] + 8 * v18) = v17;
        v26 = v34[2];
        v22 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v22)
        {
          goto LABEL_30;
        }

        v34[2] = v27;
      }

      isUniquelyReferenced_nonNull_native = 1;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v29 = sub_20DF48424();
    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
LABEL_25:
    if (!v5[2])
    {

      v5 = 0;
    }

    v29 = v5;
  }

  result.value._rawValue = v29;
  result.is_nil = v1;
  return result;
}

Swift::OpaquePointer_optional __swiftcall EnergyTrends.exportPricingPeriodsFor(usages:)(Swift::OpaquePointer usages)
{
  v2 = type metadata accessor for EnergySite.EnergyUsage(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(usages._rawValue + 2);
  v7 = 0;
  if (!v40)
  {
    v10 = MEMORY[0x277D84F98];
LABEL_26:
    if (v10[2])
    {
      sub_20DEF13FC(v7);
    }

    else
    {

      sub_20DEF13FC(v7);
      v10 = 0;
    }

    v36 = v10;
    goto LABEL_34;
  }

  v8 = 0;
  v9 = *(v4 + 44);
  v38 = usages._rawValue + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v39 = v9;
  v37 = *(v5 + 72);
  v10 = MEMORY[0x277D84F98];
LABEL_4:
  v11 = v41;
  sub_20DEEF8EC(&v38[v37 * v8++], v41, type metadata accessor for EnergySite.EnergyUsage);
  v12 = *(v11 + v39);

  sub_20DEEF954(v11, type metadata accessor for EnergySite.EnergyUsage);
  v13 = 0;
  v14 = 1 << *(v12 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  for (i = v7; ; i = sub_20DEB677C)
  {
    if (!v16)
    {
      while (1)
      {
        v19 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
          goto LABEL_31;
        }

        if (v19 >= v17)
        {
          break;
        }

        v16 = *(v12 + 64 + 8 * v19);
        ++v13;
        if (v16)
        {
          v13 = v19;
          goto LABEL_14;
        }
      }

      v7 = i;

      if (v8 == v40)
      {
        goto LABEL_26;
      }

      goto LABEL_4;
    }

LABEL_14:
    v20 = (v13 << 9) | (8 * __clz(__rbit64(v16)));
    v21 = *(*(v12 + 48) + v20);
    v22 = *(*(v12 + 56) + v20);
    sub_20DEF13FC(i);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v10;
    v24 = sub_20DEEFA18(v21);
    v26 = v10[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      break;
    }

    v30 = v25;
    if (v10[3] >= v29)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = v24;
        sub_20DEF0B48();
        v24 = v34;
        v10 = v42;
        if (v30)
        {
          goto LABEL_8;
        }

        goto LABEL_20;
      }
    }

    else
    {
      sub_20DEEFEF0(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_20DEEFA18(v21);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_33;
      }
    }

    v10 = v42;
    if (v30)
    {
      goto LABEL_8;
    }

LABEL_20:
    v10[(v24 >> 6) + 8] |= 1 << v24;
    *(v10[6] + 8 * v24) = v21;
    *(v10[7] + 8 * v24) = 0;
    v32 = v10[2];
    v28 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v28)
    {
      goto LABEL_32;
    }

    v10[2] = v33;
LABEL_8:
    v16 &= v16 - 1;
    *(v10[7] + 8 * v24) = v22 + *(v10[7] + 8 * v24);
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  v36 = sub_20DF48424();
  __break(1u);
LABEL_34:
  result.value._rawValue = v36;
  result.is_nil = v35;
  return result;
}

Swift::OpaquePointer_optional __swiftcall EnergyTrends.importGridQualityPeriodsFor(usages:)(Swift::OpaquePointer usages)
{
  v2 = type metadata accessor for EnergySite.EnergyUsage(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(usages._rawValue + 2);
  v7 = 0;
  if (!v40)
  {
    v10 = MEMORY[0x277D84F98];
LABEL_26:
    if (v10[2])
    {
      sub_20DEF13FC(v7);
    }

    else
    {

      sub_20DEF13FC(v7);
      v10 = 0;
    }

    v36 = v10;
    goto LABEL_34;
  }

  v8 = 0;
  v9 = *(v4 + 68);
  v38 = usages._rawValue + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v39 = v9;
  v37 = *(v5 + 72);
  v10 = MEMORY[0x277D84F98];
LABEL_4:
  v11 = v41;
  sub_20DEEF8EC(&v38[v37 * v8++], v41, type metadata accessor for EnergySite.EnergyUsage);
  v12 = *(v11 + v39);

  sub_20DEEF954(v11, type metadata accessor for EnergySite.EnergyUsage);
  v13 = 0;
  v14 = 1 << *(v12 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  for (i = v7; ; i = sub_20DEB677C)
  {
    if (!v16)
    {
      while (1)
      {
        v19 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
          goto LABEL_31;
        }

        if (v19 >= v17)
        {
          break;
        }

        v16 = *(v12 + 64 + 8 * v19);
        ++v13;
        if (v16)
        {
          v13 = v19;
          goto LABEL_14;
        }
      }

      v7 = i;

      if (v8 == v40)
      {
        goto LABEL_26;
      }

      goto LABEL_4;
    }

LABEL_14:
    v20 = (v13 << 9) | (8 * __clz(__rbit64(v16)));
    v21 = *(*(v12 + 48) + v20);
    v22 = *(*(v12 + 56) + v20);
    sub_20DEF13FC(i);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v10;
    v24 = sub_20DEEFA18(v21);
    v26 = v10[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      break;
    }

    v30 = v25;
    if (v10[3] >= v29)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = v24;
        sub_20DEF0B48();
        v24 = v34;
        v10 = v42;
        if (v30)
        {
          goto LABEL_8;
        }

        goto LABEL_20;
      }
    }

    else
    {
      sub_20DEEFEF0(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_20DEEFA18(v21);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_33;
      }
    }

    v10 = v42;
    if (v30)
    {
      goto LABEL_8;
    }

LABEL_20:
    v10[(v24 >> 6) + 8] |= 1 << v24;
    *(v10[6] + 8 * v24) = v21;
    *(v10[7] + 8 * v24) = 0;
    v32 = v10[2];
    v28 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v28)
    {
      goto LABEL_32;
    }

    v10[2] = v33;
LABEL_8:
    v16 &= v16 - 1;
    *(v10[7] + 8 * v24) = v22 + *(v10[7] + 8 * v24);
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  v36 = sub_20DF48424();
  __break(1u);
LABEL_34:
  result.value._rawValue = v36;
  result.is_nil = v35;
  return result;
}

Swift::OpaquePointer_optional __swiftcall EnergyTrends.totalGridQualityPeriodsFor(usages:)(Swift::OpaquePointer usages)
{
  v33 = *(usages._rawValue + 2);
  if (v33)
  {
    v3 = type metadata accessor for EnergySite.EnergyUsage(0);
    v4 = 0;
    v31 = usages._rawValue + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
    v32 = v3;
    v30 = *(*(v3 - 8) + 72);
    v5 = MEMORY[0x277D84F98];
LABEL_4:
    v6 = &v31[v30 * v4++];
    v7 = *&v6[*(v32 + 76)];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v5;
    v9 = 1 << *(v7 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v7 + 64);
    v12 = (v9 + 63) >> 6;

    for (i = 0; ; i = v14)
    {
      if (!v11)
      {
        while (1)
        {
          v14 = i + 1;
          if (__OFADD__(i, 1))
          {
            __break(1u);
            goto LABEL_29;
          }

          if (v14 >= v12)
          {
            break;
          }

          v11 = *(v7 + 64 + 8 * v14);
          ++i;
          if (v11)
          {
            goto LABEL_15;
          }
        }

        if (v4 == v33)
        {
          goto LABEL_25;
        }

        goto LABEL_4;
      }

      v14 = i;
LABEL_15:
      v15 = (v14 << 9) | (8 * __clz(__rbit64(v11)));
      v16 = *(*(v7 + 48) + v15);
      v17 = *(*(v7 + 56) + v15);
      v18 = sub_20DEEFA18(v16);
      v20 = v5[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        break;
      }

      v24 = v19;
      if (v5[3] >= v23)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = v18;
          sub_20DEF0B48();
          v18 = v28;
        }
      }

      else
      {
        sub_20DEEFEF0(v23, isUniquelyReferenced_nonNull_native & 1);
        v18 = sub_20DEEFA18(v16);
        if ((v24 & 1) != (v25 & 1))
        {
          goto LABEL_31;
        }
      }

      v11 &= v11 - 1;
      v5 = v34;
      if (v24)
      {
        *(v34[7] + 8 * v18) = v17 + *(v34[7] + 8 * v18);
      }

      else
      {
        v34[(v18 >> 6) + 8] |= 1 << v18;
        *(v34[6] + 8 * v18) = v16;
        *(v34[7] + 8 * v18) = v17;
        v26 = v34[2];
        v22 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v22)
        {
          goto LABEL_30;
        }

        v34[2] = v27;
      }

      isUniquelyReferenced_nonNull_native = 1;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v29 = sub_20DF48424();
    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
LABEL_25:
    if (!v5[2])
    {

      v5 = 0;
    }

    v29 = v5;
  }

  result.value._rawValue = v29;
  result.is_nil = v1;
  return result;
}

uint64_t sub_20DEEF8EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20DEEF954(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20DEEF9D4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_20DF480E4();

  return sub_20DEEFB58(a1, v5);
}

unint64_t sub_20DEEFA18(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_20DF48484();

  return sub_20DEEFC20(a1, v4);
}

unint64_t sub_20DEEFA5C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_20DF474E4();
  sub_20DEF1558(&qword_27C84CA58);
  v5 = sub_20DF47C94();

  return sub_20DEEFC8C(a1, v5);
}

unint64_t sub_20DEEFAE0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_20DF48494();
  sub_20DF47D54();
  v6 = sub_20DF484D4();

  return sub_20DEEFE38(a1, a2, v6);
}

unint64_t sub_20DEEFB58(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_20DEF14FC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x20F328CD0](v9, a1);
      sub_20DED8790(v9);
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

unint64_t sub_20DEEFC20(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_20DEEFC8C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_20DF474E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_20DEF1558(&qword_27C84C9A0);
      v16 = sub_20DF47CF4();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_20DEEFE38(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_20DF483D4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_20DEEFEF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA60, &qword_20DF49FC8);
  result = sub_20DF48234();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_20DF48484();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_20DEF0154(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_20DF47834();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20DF474E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C84CCF8, &qword_20DF4AD78);
  v52 = a2;
  result = sub_20DF48234();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_20DEF1558(&qword_27C84CA58);
      result = sub_20DF47C94();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_20DEF05E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9F0, &qword_20DF4AD80);
  v36 = a2;
  result = sub_20DF48234();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_20DED8390(v25, v37);
      }

      else
      {
        sub_20DEBA2EC(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_20DF48494();
      sub_20DF47D54();
      result = sub_20DF484D4();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_20DED8390(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_20DEF08A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCF0, &qword_20DF4AD70);
  v38 = a2;
  result = sub_20DF48234();
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
      sub_20DF48494();
      sub_20DF47D54();
      result = sub_20DF484D4();
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

void *sub_20DEF0B48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA60, &qword_20DF49FC8);
  v2 = *v0;
  v3 = sub_20DF48224();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

char *sub_20DEF0C94()
{
  v1 = v0;
  v43 = sub_20DF47834();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20DF474E4();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C84CCF8, &qword_20DF4AD78);
  v6 = *v0;
  v7 = sub_20DF48224();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
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

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_20DEF0FE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9F0, &qword_20DF4AD80);
  v2 = *v0;
  v3 = sub_20DF48224();
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
        sub_20DEBA2EC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_20DED8390(v25, (*(v4 + 56) + v22));
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

void *sub_20DEF118C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCF0, &qword_20DF4AD70);
  v2 = *v0;
  v3 = sub_20DF48224();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

size_t sub_20DEF12FC(size_t a1, int64_t a2, char a3)
{
  result = sub_20DF3789C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_20DEF131C@<X0>(double *result@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16) * *result;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < 9.22337204e18)
  {
    *a2 = v3;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

BOOL sub_20DEF1394(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return *(a2 + *(TupleTypeMetadata2 + 48)) < *(a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_20DEF13FC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_20DEF1434()
{
  sub_20DED81A8();
  if (v0 <= 0x3F)
  {
    sub_20DF47604();
    if (v1 <= 0x3F)
    {
      sub_20DF475D4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20DEF1558(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_20DF474E4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20DEF159C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnergySite.EnergyUsage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DEF1654(char a1)
{
  sub_20DF48494();
  MEMORY[0x20F329080](a1 & 1);
  return sub_20DF484D4();
}

uint64_t sub_20DEF16B8()
{
  sub_20DF48494();
  sub_20DEF162C(v2, *v0);
  return sub_20DF484D4();
}

uint64_t sub_20DEF1708()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_20DEF175C(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *sub_20DEF17F0(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20DEF1924()
{
  type metadata accessor for GuidanceService();
  result = swift_initStaticObject();
  if (qword_281122950 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  qword_27C84CE00 = result;
  return result;
}

uint64_t static GuidanceService.shared.getter()
{
  if (qword_27C84C750 != -1)
  {
    swift_once();
  }
}

uint64_t GuidanceService.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  return v0;
}

uint64_t GuidanceService.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t GuidanceService.guidances(using:at:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE08, &qword_20DF4AE90);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14[-v10];
  LOBYTE(v10) = *a1;
  v12 = a1[1];
  v15 = v3;
  v16 = a2;
  v17 = v10;
  v18 = v12;
  type metadata accessor for Guidance();
  (*(v8 + 104))(v11, *MEMORY[0x277D858A0], v7);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE10, &qword_20DF4AE98);
  a3[4] = sub_20DEF2780();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_20DF47F54();
}

uint64_t GuidanceService.guidances(using:for:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE08, &qword_20DF4AE90);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14[-v10];
  LOBYTE(v10) = *a1;
  v12 = a1[1];
  v15 = v3;
  v16 = a2;
  v17 = v10;
  v18 = v12;
  type metadata accessor for Guidance();
  (*(v8 + 104))(v11, *MEMORY[0x277D858A0], v7);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE10, &qword_20DF4AE98);
  a3[4] = sub_20DEF2780();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_20DF47F54();
}

uint64_t GuidanceService.guidance(using:at:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = v3;
  *(v4 + 40) = a1;
  *(v4 + 98) = *a2;
  *(v4 + 99) = a2[1];
  v6 = swift_task_alloc();
  *(v4 + 64) = v6;
  *v6 = v4;
  v6[1] = sub_20DEF1E3C;

  return (sub_20DF2A620)(a3);
}

uint64_t sub_20DEF1E3C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[8];
  v7 = *v2;
  v4[9] = a2;

  return MEMORY[0x2822009F8](sub_20DEF1F44, 0, 0);
}

uint64_t sub_20DEF1F44()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 99);
    *(v0 + 96) = *(v0 + 98);
    *(v0 + 97) = v3;
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v4[1] = sub_20DEF2080;
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    v7 = *(v0 + 40);

    return sub_20DF24134(v7, v5, v2, v1, (v0 + 96));
  }

  else
  {
    sub_20DEDD4D8();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_20DEF2080()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(v4 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20DEF21D0, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_20DEF21D0()
{
  v1 = *(v0 + 88);
  sub_20DEDD4D8();
  swift_allocError();
  *v2 = 2;
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t GuidanceService.guidance(using:near:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = v3;
  *(v4 + 90) = *a2;
  *(v4 + 91) = a2[1];
  v6 = swift_task_alloc();
  *(v4 + 56) = v6;
  *v6 = v4;
  v6[1] = sub_20DEF2330;

  return (sub_20DF2A8BC)(a3);
}

uint64_t sub_20DEF2330(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[7];
  v7 = *v2;
  v4[8] = a2;

  return MEMORY[0x2822009F8](sub_20DEF2438, 0, 0);
}

uint64_t sub_20DEF2438()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 91);
    *(v0 + 88) = *(v0 + 90);
    *(v0 + 89) = v3;
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_20DEF2570;
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);

    return sub_20DF24EBC(v5, v2, v1, (v0 + 88));
  }

  else
  {
    sub_20DEDD4D8();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_20DEF2570()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(v4 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20DEF26C0, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_20DEF26C0()
{
  v1 = *(v0 + 80);
  sub_20DEDD4D8();
  swift_allocError();
  *v2 = 2;
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20DEF2760(uint64_t a1)
{
  if (*(v1 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_20DF25EF0(a1, *(v1 + 16), *(v1 + 24), v2 | *(v1 + 32));
}

unint64_t sub_20DEF2780()
{
  result = qword_27C84CE18;
  if (!qword_27C84CE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C84CE10, &qword_20DF4AE98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CE18);
  }

  return result;
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

uint64_t sub_20DEF2848(uint64_t a1)
{
  if (*(v1 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_20DF28628(a1, *(v1 + 16), *(v1 + 24), v2 | *(v1 + 32));
}

uint64_t sub_20DEF28A4(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_20DF47D14();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = *(*(v3 + 64) + 40);
  *v6 = v4;
  v6[1] = v5;

  return swift_continuation_resume();
}

void *sub_20DEF291C()
{
  type metadata accessor for HomeEnergyManager();
  v0 = swift_allocObject();
  result = sub_20DEF29B4();
  qword_281122958 = v0;
  return result;
}

uint64_t static HomeEnergyManager.shared.getter()
{
  if (qword_281122950 != -1)
  {
    swift_once();
  }
}

void *sub_20DEF29B4()
{
  v1 = v0;
  v2 = sub_20DF47BD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[2] = [objc_opt_self() defaultCenter];
  v1[3] = 0;
  v1[4] = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_281122F18);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_20DF47BB4();
  v9 = sub_20DF48004();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_20DEAF000, v8, v9, "[GridForecast] Setup notification observer", v10, 2u);
    MEMORY[0x20F329700](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  sub_20DEF2BB0();
  return v1;
}

uint64_t sub_20DEF2BB0()
{
  sub_20DF47804();
  v1 = sub_20DF47D04();

  v2 = v0[2];
  v3 = v0[4];
  v10[4] = sub_20DF11EFC;
  v11 = v0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_20DEDA9EC;
  v10[3] = &block_descriptor_4;
  v4 = _Block_copy(v10);
  v5 = v1;
  v6 = v3;

  v7 = [v2 addObserverForName:v5 object:0 queue:v6 usingBlock:v4];

  _Block_release(v4);
  v8 = v0[3];
  v0[3] = v7;
  return swift_unknownObjectRelease();
}

uint64_t sub_20DEF2CD8()
{
  v0 = sub_20DF47BD4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_281122F18);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_20DF47BB4();
  v7 = sub_20DF48004();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20DEAF000, v6, v7, "[GridForecast] Received notification from daemon", v8, 2u);
    MEMORY[0x20F329700](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  v9 = sub_20DF473F4();
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  v22 = sub_20DF477B4();
  v23 = v11;
  sub_20DF48104();
  if (!*(v10 + 16) || (v12 = sub_20DEEF9D4(v24), (v13 & 1) == 0))
  {

    sub_20DED8790(v24);
LABEL_12:
    v25 = 0u;
    v26 = 0u;
    goto LABEL_13;
  }

  sub_20DEBA2EC(*(v10 + 56) + 32 * v12, &v25);
  sub_20DED8790(v24);

  if (!*(&v26 + 1))
  {
LABEL_13:
    sub_20DED8730(&v25, &qword_27C84CA00, &qword_20DF4A170);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA08, &qword_20DF49F40);
  if (swift_dynamicCast())
  {
    v14 = sub_20DF3AAF4(v24[0]);

    sub_20DF11F1C(v14);
  }

LABEL_14:
  v15 = sub_20DF473F4();
  if (!v15)
  {
LABEL_22:
    v25 = 0u;
    v26 = 0u;
    return sub_20DED8730(&v25, &qword_27C84CA00, &qword_20DF4A170);
  }

  v16 = v15;
  v22 = sub_20DF477A4();
  v23 = v17;
  sub_20DF48104();
  if (!*(v16 + 16) || (v18 = sub_20DEEF9D4(v24), (v19 & 1) == 0))
  {

    sub_20DED8790(v24);
    goto LABEL_22;
  }

  sub_20DEBA2EC(*(v16 + 56) + 32 * v18, &v25);
  sub_20DED8790(v24);

  if (!*(&v26 + 1))
  {
    return sub_20DED8730(&v25, &qword_27C84CA00, &qword_20DF4A170);
  }

  result = swift_dynamicCast();
  if ((result & 1) != 0 && LOBYTE(v24[0]) == 1)
  {
    return sub_20DF12354();
  }

  return result;
}

uint64_t sub_20DEF3084()
{
  if (sub_20DF47794())
  {
    v1 = *(MEMORY[0x277D85A40] + 4);
    v2 = swift_task_alloc();
    *(v0 + 152) = v2;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE20, qword_20DF4AF28);
    *v2 = v0;
    v2[1] = sub_20DEF327C;

    return MEMORY[0x2822008A0](v0 + 144, 0, 0, 0x446C6C41706D7564, 0xED00002928617461, sub_20DEF33C4, 0, v3);
  }

  else
  {
    *(v0 + 40) = MEMORY[0x277D839B0];
    *(v0 + 16) = 0;
    sub_20DED8390((v0 + 16), (v0 + 48));
    v4 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20DF0E9A0((v0 + 48), 0x737574617473, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    *(v0 + 104) = MEMORY[0x277D837D0];
    *(v0 + 80) = 0xD00000000000002DLL;
    *(v0 + 88) = 0x800000020DF4F450;
    sub_20DED8390((v0 + 80), (v0 + 112));
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_20DF0E9A0((v0 + 112), 0x654D737574617473, 0xED00006567617373, v6);
    v7 = *(v0 + 8);

    return v7(v4);
  }
}

uint64_t sub_20DEF327C()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_20DEF33AC;
  }

  else
  {
    v3 = sub_20DEF3390;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DEF33F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEF8, &qword_20DF4B508);
  v4[21] = v5;
  v6 = *(v5 - 8);
  v4[22] = v6;
  v4[23] = *(v6 + 64);
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEF34C8, 0, 0);
}

uint64_t sub_20DEF34C8()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[25] = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v5, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, v1, v3);
  v8 = sub_20DF3D598(sub_20DF15EF0, v7);
  v0[26] = v8;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DEF36BC;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF00, &qword_20DF4B520);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEF3AC4;
  v0[13] = &block_descriptor_457;
  v0[14] = v9;
  [v8 dumpAllDataWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEF36BC()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DEF379C, 0, 0);
}

uint64_t sub_20DEF379C()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[18];
  swift_unknownObjectRelease();
  [*(v2 + 16) invalidate];
  v0[19] = v6;
  sub_20DF47EE4();

  v7 = v0[1];

  return v7();
}

uint64_t sub_20DEF3848(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27C851F48);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22[1] = a1;
    v23 = v15;
    *v14 = 136315138;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to dump all data. %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEF8, &qword_20DF4B508);
  return sub_20DF47ED4();
}

uint64_t sub_20DEF3AC4(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = sub_20DF47C34();

  return swift_continuation_resume();
}

uint64_t sub_20DEF3B48(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_20DEF3B70, 0, 0);
}

uint64_t sub_20DEF3B70()
{
  if (sub_20DF47794())
  {
    v2 = *(v0 + 24);
    v1 = *(v0 + 32);
    v3 = *(v0 + 64);
    v4 = *(v0 + 16);
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
    *(v5 + 32) = v3;
    *(v5 + 40) = v1;
    v6 = *(MEMORY[0x277D85A40] + 4);
    v7 = swift_task_alloc();
    *(v0 + 48) = v7;
    *v7 = v0;
    v7[1] = sub_20DEF3CC0;
    v8 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v7, 0, 0, 0xD00000000000002FLL, 0x800000020DF4F480, sub_20DF0EAF0, v5, v8);
  }

  else
  {
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_20DEF3CC0()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_20DEF3DDC;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_20DEB9614;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DEF3DDC()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_20DEF3E40(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C988, &qword_20DF4AD10);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - v17;
  v19 = sub_20DF47F04();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v11 + 16))(v14, a1, v10);
  sub_20DED8804(v29, v9, &qword_27C84C988, &qword_20DF4AD10);
  v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v28 + 80) + v21 + 17) & ~*(v28 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v11 + 32))(v23 + v20, v14, v10);
  v24 = v23 + v21;
  v25 = v31;
  *v24 = v30;
  *(v24 + 8) = v25;
  *(v24 + 16) = v32;
  sub_20DED9CE8(v9, v23 + v22, &qword_27C84C988, &qword_20DF4AD10);

  sub_20DEBB534(0, 0, v18, &unk_20DF4B500, v23);
}

uint64_t sub_20DEF4128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 296) = a7;
  *(v8 + 184) = a6;
  *(v8 + 192) = a8;
  *(v8 + 168) = a4;
  *(v8 + 176) = a5;
  v9 = sub_20DF47BD4();
  *(v8 + 200) = v9;
  v10 = *(v9 - 8);
  *(v8 + 208) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C988, &qword_20DF4AD10) - 8) + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  *(v8 + 232) = v13;
  v14 = *(v13 - 8);
  *(v8 + 240) = v14;
  *(v8 + 248) = *(v14 + 64);
  *(v8 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEF4298, 0, 0);
}

uint64_t sub_20DEF4298()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v5 = *(v0 + 184);
  v6 = *(v0 + 168);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  *(v0 + 264) = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v6, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v1, v3);
  v9 = sub_20DF3D598(sub_20DF15D0C, v8);
  *(v0 + 272) = v9;

  if (v5)
  {
    v10 = *(v0 + 176);
    v11 = *(v0 + 184);
    v12 = sub_20DF47D04();
  }

  else
  {
    v12 = 0;
  }

  *(v0 + 280) = v12;
  v13 = *(v0 + 224);
  sub_20DED8804(*(v0 + 192), v13, &qword_27C84C988, &qword_20DF4AD10);
  v14 = sub_20DF474E4();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);
  v17 = 0;
  if (v16 != 1)
  {
    v18 = *(v0 + 224);
    v17 = sub_20DF47464();
    (*(v15 + 8))(v18, v14);
  }

  *(v0 + 288) = v17;
  v19 = *(v0 + 296);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_20DEF454C;
  v20 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C920, &qword_20DF4B250);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_20DF2B4C4;
  *(v0 + 104) = &block_descriptor_447;
  *(v0 + 112) = v20;
  [v9 useMockDataWithFilePath:v12 disableMock:v19 validityDate:v17 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_20DEF454C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DEF462C, 0, 0);
}

uint64_t sub_20DEF462C()
{
  v30 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  swift_unknownObjectRelease();

  [*(v4 + 16) invalidate];
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v7 = *(v0 + 200);
  v8 = __swift_project_value_buffer(v7, qword_281122F18);
  swift_beginAccess();
  (*(v6 + 16))(v5, v8, v7);
  v9 = sub_20DF47BB4();
  v10 = sub_20DF48004();
  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 208);
  v12 = *(v0 + 216);
  v14 = *(v0 + 200);
  if (v11)
  {
    v15 = *(v0 + 296);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29 = v17;
    *v16 = 136315138;
    if (v15)
    {
      v18 = 0x64656C6261736964;
    }

    else
    {
      v18 = 0x64656C62616E65;
    }

    if (v15)
    {
      v19 = 0xE800000000000000;
    }

    else
    {
      v19 = 0xE700000000000000;
    }

    v20 = sub_20DED38E8(v18, v19, &v29);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_20DEAF000, v9, v10, "Mock Data usage: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x20F329700](v17, -1, -1);
    MEMORY[0x20F329700](v16, -1, -1);
  }

  (*(v13 + 8))(v12, v14);
  v22 = *(v0 + 256);
  v21 = *(v0 + 264);
  v24 = *(v0 + 224);
  v23 = *(v0 + 232);
  v25 = *(v0 + 216);
  v26 = *(v0 + 168);
  sub_20DF47EE4();

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_20DEF4888(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22[1] = a1;
    v23 = v15;
    *v14 = 136446210;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to set mock data. %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  return sub_20DF47ED4();
}

uint64_t sub_20DEF4B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 104) = a1;
  *(v3 + 112) = a2;
  v4 = *(a3 + 48);
  *(v3 + 48) = *(a3 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a3 + 64);
  v5 = *(a3 + 16);
  *(v3 + 16) = *a3;
  *(v3 + 32) = v5;
  return MEMORY[0x2822009F8](sub_20DEF4B3C, 0, 0);
}

uint64_t sub_20DEF4B3C()
{
  if (sub_20DF47794())
  {
    v2 = v0[13];
    v1 = v0[14];
    v3 = swift_task_alloc();
    v0[15] = v3;
    v3[2] = v2;
    v3[3] = v1;
    v3[4] = v0 + 2;
    v4 = *(MEMORY[0x277D85A40] + 4);
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_20DEF4C90;
    v6 = MEMORY[0x277D837D0];

    return MEMORY[0x2822008A0](v0 + 11, 0, 0, 0xD000000000000031, 0x800000020DF4F4B0, sub_20DF0EB00, v3, v6);
  }

  else
  {
    v7 = v0[1];

    return v7(0, 0xE000000000000000);
  }
}

uint64_t sub_20DEF4C90()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_20DEF4DC8;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_20DEF4DAC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DEF4DC8()
{
  v1 = v0[15];

  v2 = v0[1];
  v3 = v0[17];

  return v2();
}

uint64_t sub_20DEF4E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE58, &qword_20DF4B258);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26[-v10 - 8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v26[-v14 - 8];
  v16 = sub_20DF47F04();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v8 + 16))(v11, a1, v7);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  (*(v8 + 32))(v19 + v17, v11, v7);
  v20 = (v19 + v18);
  *v20 = v25;
  v20[1] = a3;
  v21 = v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8);
  *(v21 + 64) = *(a4 + 64);
  v22 = *(a4 + 48);
  *(v21 + 32) = *(a4 + 32);
  *(v21 + 48) = v22;
  v23 = *(a4 + 16);
  *v21 = *a4;
  *(v21 + 16) = v23;

  sub_20DF1550C(a4, v26);
  sub_20DEBB534(0, 0, v15, &unk_20DF4B4E8, v19);
}

uint64_t sub_20DEF5070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[27] = a6;
  v7[28] = a7;
  v7[25] = a4;
  v7[26] = a5;
  v8 = sub_20DF47BD4();
  v7[29] = v8;
  v9 = *(v8 - 8);
  v7[30] = v9;
  v10 = *(v9 + 64) + 15;
  v7[31] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE58, &qword_20DF4B258);
  v7[32] = v11;
  v12 = *(v11 - 8);
  v7[33] = v12;
  v7[34] = *(v12 + 64);
  v7[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEF51A4, 0, 0);
}

uint64_t sub_20DEF51A4()
{
  v1 = v0;
  v18 = v0 + 2;
  v19 = v0 + 21;
  v4 = v0 + 34;
  v2 = v0[34];
  v3 = v4[1];
  v6 = v1[32];
  v5 = v1[33];
  v7 = v1[28];
  v17 = v1[27];
  v9 = v1[25];
  v8 = v1[26];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v1[36] = sub_20DF3C9D8();
  (*(v5 + 16))(v3, v9, v6);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v3, v6);
  v12 = sub_20DF3D598(sub_20DF15B48, v11);
  v1[37] = v12;

  v13 = sub_20DF47D04();
  v1[38] = v13;
  v22 = v7[2];
  v23 = v7[3];
  v24 = *(v7 + 64);
  v20 = *v7;
  v21 = v7[1];
  sub_20DF3B404();
  v14 = sub_20DF47C24();
  v1[39] = v14;

  v1[2] = v1;
  v1[7] = v19;
  v1[3] = sub_20DEF5414;
  v15 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE60, &qword_20DF4B270);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_20DEF5950;
  v1[13] = &block_descriptor_437;
  v1[14] = v15;
  [v12 testNotificationsForGridID:v13 notificationContext:v14 completionHandler:?];

  return MEMORY[0x282200938](v18);
}

uint64_t sub_20DEF5414()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DEF54F4, 0, 0);
}

uint64_t sub_20DEF54F4()
{
  v1 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[22];
  v22 = v0[21];
  swift_unknownObjectRelease();

  [*(v4 + 16) invalidate];
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[29];
  v9 = __swift_project_value_buffer(v8, qword_281122F18);
  swift_beginAccess();
  (*(v7 + 16))(v6, v9, v8);
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FD4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_20DEAF000, v10, v11, "Test notification triggered", v12, 2u);
    MEMORY[0x20F329700](v12, -1, -1);
  }

  v14 = v0[35];
  v13 = v0[36];
  v16 = v0[31];
  v15 = v0[32];
  v17 = v0[29];
  v18 = v0[30];
  v19 = v0[25];

  (*(v18 + 8))(v16, v17);
  v0[23] = v22;
  v0[24] = v5;
  sub_20DF47EE4();

  v20 = v0[1];

  return v20();
}

uint64_t sub_20DEF56D4(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22[1] = a1;
    v23 = v15;
    *v14 = 136446210;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to set Home Energy Notification.%{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE58, &qword_20DF4B258);
  return sub_20DF47ED4();
}

uint64_t sub_20DEF5950(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v2 = sub_20DF47D14();
  v3 = *(*(v1 + 64) + 40);
  *v3 = v2;
  v3[1] = v4;

  return swift_continuation_resume();
}

uint64_t sub_20DEF59D8()
{
  if (sub_20DF47794())
  {
    v1 = v0[2];
    v2 = swift_task_alloc();
    v0[3] = v2;
    *(v2 + 16) = v1;
    v3 = *(MEMORY[0x277D85A40] + 4);
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_20DEF5B0C;
    v5 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000019, 0x800000020DF4F4F0, sub_20DF0EB0C, v2, v5);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_20DEF5B0C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_20DEB962C;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_20DF161DC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DEF5C28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = sub_20DF47F04();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  (*(v5 + 32))(v15 + v14, v8, v4);
  *(v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  sub_20DEBB534(0, 0, v12, &unk_20DF4B4D8, v15);
}

uint64_t sub_20DEF5E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v6 = sub_20DF47BD4();
  v5[23] = v6;
  v7 = *(v6 - 8);
  v5[24] = v7;
  v8 = *(v7 + 64) + 15;
  v5[25] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v5[26] = v9;
  v10 = *(v9 - 8);
  v5[27] = v10;
  v5[28] = *(v10 + 64);
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEF5F50, 0, 0);
}

uint64_t sub_20DEF5F50()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v6 = v0[21];
  v5 = v0[22];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[30] = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v6, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v1, v3);
  v9 = sub_20DF3D598(sub_20DF159D4, v8);
  v0[31] = v9;

  v10 = sub_20DF47F74();
  v0[32] = v10;
  v0[2] = v0;
  v0[3] = sub_20DEF615C;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C920, &qword_20DF4B250);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF2B4C4;
  v0[13] = &block_descriptor_427;
  v0[14] = v11;
  [v9 testDelegateForGridIds:v10 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEF615C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DEF623C, 0, 0);
}

uint64_t sub_20DEF623C()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  swift_unknownObjectRelease();

  [*(v3 + 16) invalidate];
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = __swift_project_value_buffer(v6, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v4, v7, v6);
  v8 = sub_20DF47BB4();
  v9 = sub_20DF47FD4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_20DEAF000, v8, v9, "Test delegate", v10, 2u);
    MEMORY[0x20F329700](v10, -1, -1);
  }

  v12 = v0[29];
  v11 = v0[30];
  v14 = v0[25];
  v13 = v0[26];
  v15 = v0[23];
  v16 = v0[24];
  v17 = v0[21];

  (*(v16 + 8))(v14, v15);
  sub_20DF47EE4();

  v18 = v0[1];

  return v18();
}

uint64_t sub_20DEF63F8(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22[1] = a1;
    v23 = v15;
    *v14 = 136446210;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to test Home Energy Delegate.%{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  return sub_20DF47ED4();
}

uint64_t sub_20DEF6690()
{
  if (sub_20DF47794())
  {
    v1 = *(MEMORY[0x277D85A40] + 4);
    v2 = swift_task_alloc();
    *(v0 + 16) = v2;
    *v2 = v0;
    v2[1] = sub_20DEF67A0;
    v3 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v2, 0, 0, 0xD000000000000017, 0x800000020DF4F510, sub_20DEF68B4, 0, v3);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_20DEF67A0()
{
  v2 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 24) = v0;

  if (v0)
  {
    v3 = sub_20DF161E8;
  }

  else
  {
    v3 = sub_20DF161DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DEF68E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v5 = sub_20DF47BD4();
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v7 = *(v6 + 64) + 15;
  v4[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v4[25] = v8;
  v9 = *(v8 - 8);
  v4[26] = v9;
  v4[27] = *(v9 + 64);
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEF6A14, 0, 0);
}

uint64_t sub_20DEF6A14()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[21];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[29] = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v5, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, v1, v3);
  v8 = sub_20DF3D598(sub_20DF15880, v7);
  v0[30] = v8;

  v0[2] = v0;
  v0[3] = sub_20DEF6BF8;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C920, &qword_20DF4B250);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF2B4C4;
  v0[13] = &block_descriptor_417;
  v0[14] = v9;
  [v8 testSetMockURLSessionWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEF6BF8()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DEF6CD8, 0, 0);
}

uint64_t sub_20DEF6CD8()
{
  v2 = v0[29];
  v1 = v0[30];
  swift_unknownObjectRelease();
  [*(v2 + 16) invalidate];
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v6 = __swift_project_value_buffer(v5, qword_281122F18);
  swift_beginAccess();
  (*(v4 + 16))(v3, v6, v5);
  v7 = sub_20DF47BB4();
  v8 = sub_20DF47FD4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20DEAF000, v7, v8, "Set mock url session", v9, 2u);
    MEMORY[0x20F329700](v9, -1, -1);
  }

  v11 = v0[28];
  v10 = v0[29];
  v13 = v0[24];
  v12 = v0[25];
  v14 = v0[22];
  v15 = v0[23];
  v16 = v0[21];

  (*(v15 + 8))(v13, v14);
  sub_20DF47EE4();

  v17 = v0[1];

  return v17();
}

uint64_t sub_20DEF6E8C(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22[1] = a1;
    v23 = v15;
    *v14 = 136446210;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to set URL Session for Home Services.%{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  return sub_20DF47ED4();
}

uint64_t sub_20DEF7108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_20DEF712C, 0, 0);
}

uint64_t sub_20DEF712C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v7 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_20DEF723C;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000003DLL, 0x800000020DF4F530, sub_20DF0EB14, v3, &type metadata for HomeEnergyNotificationStatus);
}

uint64_t sub_20DEF723C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_20DEF7358;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_20DEDBBC8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DEF7358()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_20DEF73BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEE8, &qword_20DF4B4A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v22 - v16;
  v18 = sub_20DF47F04();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v10 + 16))(v13, a1, v9);
  v19 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = a2;
  *(v20 + 5) = a3;
  *(v20 + 6) = v23;
  *(v20 + 7) = a5;
  (*(v10 + 32))(&v20[v19], v13, v9);

  sub_20DEBB534(0, 0, v17, &unk_20DF4B4B0, v20);
}

uint64_t sub_20DEF75D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = a7;
  v8[27] = a8;
  v8[24] = a5;
  v8[25] = a6;
  v8[23] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEE8, &qword_20DF4B4A0);
  v8[28] = v9;
  v10 = *(v9 - 8);
  v8[29] = v10;
  v8[30] = *(v10 + 64);
  v8[31] = swift_task_alloc();
  v11 = sub_20DF47BD4();
  v8[32] = v11;
  v12 = *(v11 - 8);
  v8[33] = v12;
  v13 = *(v12 + 64) + 15;
  v8[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEF7708, 0, 0);
}

uint64_t sub_20DEF7708()
{
  v41 = v0;
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v4 = v0[26];
  v5 = v0[24];
  v6 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v6, v3);

  v7 = sub_20DF47BB4();
  v8 = sub_20DF47FD4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[33];
  v11 = v0[34];
  v12 = v0[32];
  if (v9)
  {
    v38 = v0[34];
    v13 = v0[26];
    v36 = v0[25];
    v15 = v0[23];
    v14 = v0[24];
    v37 = v0[32];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v40 = v17;
    *v16 = 136380931;
    *(v16 + 4) = sub_20DED38E8(v15, v14, &v40);
    *(v16 + 12) = 2081;
    if (v13)
    {
      v18 = v36;
    }

    else
    {
      v18 = 0x20656D6F48206F4ELL;
    }

    if (v13)
    {
      v19 = v4;
    }

    else
    {
      v19 = 0xEA00000000004449;
    }

    v20 = sub_20DED38E8(v18, v19, &v40);

    *(v16 + 14) = v20;
    _os_log_impl(&dword_20DEAF000, v7, v8, "Checking if next clean energy window notification is enabled for %{private}s, %{private}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v17, -1, -1);
    MEMORY[0x20F329700](v16, -1, -1);

    (*(v10 + 8))(v38, v37);
  }

  else
  {

    (*(v10 + 8))(v11, v12);
  }

  v21 = v0[30];
  v22 = v0[31];
  v23 = v0[28];
  v24 = v0[29];
  v25 = v0[27];
  v39 = v0[26];
  v27 = v0[23];
  v26 = v0[24];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[35] = sub_20DF3C9D8();
  (*(v24 + 16))(v22, v25, v23);
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = swift_allocObject();
  (*(v24 + 32))(v29 + v28, v22, v23);
  v30 = sub_20DF3D598(sub_20DF1575C, v29);
  v0[36] = v30;

  v31 = sub_20DF47D04();
  v0[37] = v31;
  if (v39)
  {
    v32 = v0[25];
    v33 = sub_20DF47D04();
  }

  else
  {
    v33 = 0;
  }

  v0[38] = v33;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_20DEF7B48;
  v34 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEF0, &qword_20DF4B4B8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF161EC;
  v0[13] = &block_descriptor_407;
  v0[14] = v34;
  [v30 isNextCleanEnergyWindowNotificationEnabledForGridID:v31 homeID:v33 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEF7B48()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DEF7C28, 0, 0);
}

uint64_t sub_20DEF7C28()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  v6 = v0[31];
  v7 = v0[27];
  v8 = v0[28];
  v9 = v0[21];
  swift_unknownObjectRelease();

  [*(v4 + 16) invalidate];
  v0[22] = v9;
  sub_20DF47EE4();

  v10 = v0[1];

  return v10();
}

uint64_t sub_20DEF7CF4(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22[1] = a1;
    v23 = v15;
    *v14 = 136446210;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to get Home Energy Notification status.%{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEE8, &qword_20DF4B4A0);
  return sub_20DF47ED4();
}

uint64_t sub_20DEF7F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;
  v4 = *(a3 + 48);
  *(v3 + 48) = *(a3 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a3 + 64);
  v5 = *(a3 + 16);
  *(v3 + 16) = *a3;
  *(v3 + 32) = v5;
  return MEMORY[0x2822009F8](sub_20DEF7FA8, 0, 0);
}

uint64_t sub_20DEF7FA8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = swift_task_alloc();
  v0[14] = v3;
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = v0 + 2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_20DEF80B0;

  return MEMORY[0x2822008A0](v0 + 11, 0, 0, 0xD000000000000048, 0x800000020DF4F570, sub_20DF0EB20, v3, &type metadata for HomeEnergyStatusCode);
}

uint64_t sub_20DEF80B0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_20DEF81E8;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_20DEF81CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DEF81E8()
{
  v1 = v0[14];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_20DEF824C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25[-v11 - 8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25[-v15 - 8];
  v17 = sub_20DF47F04();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v9 + 16))(v12, a1, v8);
  v18 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a2;
  *(v19 + 5) = a3;
  (*(v9 + 32))(&v19[v18], v12, v8);
  v20 = &v19[(v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8];
  v21 = *(a4 + 48);
  *(v20 + 2) = *(a4 + 32);
  *(v20 + 3) = v21;
  v20[64] = *(a4 + 64);
  v22 = *(a4 + 16);
  *v20 = *a4;
  *(v20 + 1) = v22;

  sub_20DF1550C(a4, v25);
  sub_20DEBB534(0, 0, v16, &unk_20DF4B498, v19);
}

uint64_t sub_20DEF8480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[25] = a6;
  v7[26] = a7;
  v7[23] = a4;
  v7[24] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  v7[27] = v8;
  v9 = *(v8 - 8);
  v7[28] = v9;
  v7[29] = *(v9 + 64);
  v7[30] = swift_task_alloc();
  v10 = sub_20DF47BD4();
  v7[31] = v10;
  v11 = *(v10 - 8);
  v7[32] = v11;
  v12 = *(v11 + 64) + 15;
  v7[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEF85B4, 0, 0);
}

uint64_t sub_20DEF85B4()
{
  v35 = v0;
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = v0[24];
  v5 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5, v3);

  v6 = sub_20DF47BB4();
  v7 = sub_20DF47FD4();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[32];
  v9 = v0[33];
  v11 = v0[31];
  if (v8)
  {
    v13 = v0[23];
    v12 = v0[24];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v33[0] = v15;
    *v14 = 136380675;
    *(v14 + 4) = sub_20DED38E8(v13, v12, v33);
    _os_log_impl(&dword_20DEAF000, v6, v7, "Enabling next clean energy window notification for %{private}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v10 + 8))(v9, v11);
  v16 = v0[29];
  v17 = v0[30];
  v19 = v0[27];
  v18 = v0[28];
  v20 = v0[25];
  v21 = v0[26];
  v22 = v0[23];
  v32 = v0[24];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[34] = sub_20DF3C9D8();
  (*(v18 + 16))(v17, v20, v19);
  v23 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v24 = swift_allocObject();
  (*(v18 + 32))(v24 + v23, v17, v19);
  v25 = sub_20DF3D598(sub_20DF15070, v24);
  v0[35] = v25;

  v26 = sub_20DF47D04();
  v0[36] = v26;
  v27 = *(v21 + 48);
  v33[2] = *(v21 + 32);
  v33[3] = v27;
  v34 = *(v21 + 64);
  v28 = *(v21 + 16);
  v33[0] = *v21;
  v33[1] = v28;
  sub_20DF3B404();
  v29 = sub_20DF47C24();
  v0[37] = v29;

  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_20DEF8984;
  v30 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED8, &qword_20DF4B420);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF161EC;
  v0[13] = &block_descriptor_397;
  v0[14] = v30;
  [v25 enableNextCleanEnergyWindowNotificationsForGridID:v26 notificationContext:v29 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEF8984()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DEF8A64, 0, 0);
}

uint64_t sub_20DEF8A64()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];
  v6 = v0[30];
  v7 = v0[27];
  v8 = v0[25];
  v9 = v0[21];
  swift_unknownObjectRelease();

  [*(v4 + 16) invalidate];
  v0[22] = v9;
  sub_20DF47EE4();

  v10 = v0[1];

  return v10();
}

uint64_t sub_20DEF8B34(uint64_t a1, uint64_t a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

uint64_t sub_20DEF8B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_20DEF8BB4, 0, 0);
}

uint64_t sub_20DEF8BB4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v7 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_20DEF8CC4;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000003CLL, 0x800000020DF4F5C0, sub_20DF0EB2C, v3, &type metadata for HomeEnergyStatusCode);
}

uint64_t sub_20DEF8CC4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_20DF161A8;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_20DF16200;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DEF8DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v22 - v16;
  v18 = sub_20DF47F04();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v10 + 16))(v13, a1, v9);
  v19 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = a2;
  *(v20 + 5) = a3;
  *(v20 + 6) = v23;
  *(v20 + 7) = a5;
  (*(v10 + 32))(&v20[v19], v13, v9);

  sub_20DEBB534(0, 0, v17, &unk_20DF4B488, v20);
}

uint64_t sub_20DEF8FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = a7;
  v8[27] = a8;
  v8[24] = a5;
  v8[25] = a6;
  v8[23] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  v8[28] = v9;
  v10 = *(v9 - 8);
  v8[29] = v10;
  v8[30] = *(v10 + 64);
  v8[31] = swift_task_alloc();
  v11 = sub_20DF47BD4();
  v8[32] = v11;
  v12 = *(v11 - 8);
  v8[33] = v12;
  v13 = *(v12 + 64) + 15;
  v8[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEF912C, 0, 0);
}

uint64_t sub_20DEF912C()
{
  v37 = v0;
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v4 = v0[26];
  v5 = v0[24];
  v6 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v6, v3);

  v7 = sub_20DF47BB4();
  v8 = sub_20DF47FD4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[33];
  v11 = v0[34];
  v12 = v0[32];
  if (v9)
  {
    v13 = v0[25];
    v34 = v0[26];
    v15 = v0[23];
    v14 = v0[24];
    v35 = v0[34];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136380931;
    *(v16 + 4) = sub_20DED38E8(v15, v14, &v36);
    *(v16 + 12) = 2081;
    *(v16 + 14) = sub_20DED38E8(v13, v34, &v36);
    _os_log_impl(&dword_20DEAF000, v7, v8, "Disabling next clean energy window notification for %{private}s, %{private}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v17, -1, -1);
    MEMORY[0x20F329700](v16, -1, -1);

    (*(v10 + 8))(v35, v12);
  }

  else
  {

    (*(v10 + 8))(v11, v12);
  }

  v18 = v0[30];
  v19 = v0[31];
  v21 = v0[28];
  v20 = v0[29];
  v22 = v0[27];
  v32 = v0[25];
  v33 = v0[26];
  v31 = v0[24];
  v23 = v0[23];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[35] = sub_20DF3C9D8();
  (*(v20 + 16))(v19, v22, v21);
  v24 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v25 = swift_allocObject();
  (*(v20 + 32))(v25 + v24, v19, v21);
  v26 = sub_20DF3D598(sub_20DF15280, v25);
  v0[36] = v26;

  v27 = sub_20DF47D04();
  v0[37] = v27;
  v28 = sub_20DF47D04();
  v0[38] = v28;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_20DEF9518;
  v29 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED8, &qword_20DF4B420);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF161EC;
  v0[13] = &block_descriptor_387;
  v0[14] = v29;
  [v26 disableNextCleanEnergyWindowNotificationsForGridID:v27 homeID:v28 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEF9518()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DF161C8, 0, 0);
}

uint64_t sub_20DEF95F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_20DEF9618, 0, 0);
}

uint64_t sub_20DEF9618()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_20DEF9710;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000035, 0x800000020DF4F600, sub_20DF0EB38, v3, &type metadata for HomeEnergyStatusCode);
}

uint64_t sub_20DEF9710()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_20DEF3DDC;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_20DF16200;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DEF982C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  v6[26] = v7;
  v8 = *(v7 - 8);
  v6[27] = v8;
  v6[28] = *(v8 + 64);
  v6[29] = swift_task_alloc();
  v9 = sub_20DF47BD4();
  v6[30] = v9;
  v10 = *(v9 - 8);
  v6[31] = v10;
  v11 = *(v10 + 64) + 15;
  v6[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEF9960, 0, 0);
}

uint64_t sub_20DEF9960()
{
  v30 = v0;
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[24];
  v5 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5, v3);

  v6 = sub_20DF47BB4();
  v7 = sub_20DF47FD4();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[31];
  v9 = v0[32];
  v11 = v0[30];
  if (v8)
  {
    v13 = v0[23];
    v12 = v0[24];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136380675;
    *(v14 + 4) = sub_20DED38E8(v13, v12, &v29);
    _os_log_impl(&dword_20DEAF000, v6, v7, "Disabling next clean energy window notification for %{private}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v10 + 8))(v9, v11);
  v16 = v0[28];
  v17 = v0[29];
  v18 = v0[26];
  v19 = v0[27];
  v20 = v0[25];
  v28 = v0[24];
  v21 = v0[23];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[33] = sub_20DF3C9D8();
  (*(v19 + 16))(v17, v20, v18);
  v22 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v23 = swift_allocObject();
  (*(v19 + 32))(v23 + v22, v17, v18);
  v24 = sub_20DF3D598(sub_20DF15280, v23);
  v0[34] = v24;

  v25 = sub_20DF47D04();
  v0[35] = v25;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_20DEF9CD4;
  v26 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED8, &qword_20DF4B420);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF161EC;
  v0[13] = &block_descriptor_377;
  v0[14] = v26;
  [v24 disableNextCleanEnergyWindowNotificationsForGridID:v25 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEF9CD4()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DEF9DB4, 0, 0);
}

uint64_t sub_20DEF9DB4()
{
  v1 = v0[34];
  v2 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[29];
  v6 = v0[25];
  v7 = v0[26];
  v8 = v0[21];
  swift_unknownObjectRelease();

  [*(v3 + 16) invalidate];
  v0[22] = v8;
  sub_20DF47EE4();

  v9 = v0[1];

  return v9();
}

uint64_t sub_20DEF9E78()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_20DEF9F50;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000002ELL, 0x800000020DF4F640, sub_20DEFA064, 0, &type metadata for HomeEnergyStatusCode);
}

uint64_t sub_20DEF9F50()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_20DEC93F0;
  }

  else
  {
    v3 = sub_20DF16200;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DEFA094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v4[26] = *(v6 + 64);
  v4[27] = swift_task_alloc();
  v7 = sub_20DF47BD4();
  v4[28] = v7;
  v8 = *(v7 - 8);
  v4[29] = v8;
  v9 = *(v8 + 64) + 15;
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEFA1C4, 0, 0);
}

uint64_t sub_20DEFA1C4()
{
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_20DF47BB4();
  v6 = sub_20DF47FD4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20DEAF000, v5, v6, "Disabling all next clean energy window notifications", v7, 2u);
    MEMORY[0x20F329700](v7, -1, -1);
  }

  v8 = v0[29];
  v9 = v0[30];
  v10 = v0[27];
  v11 = v0[28];
  v13 = v0[25];
  v12 = v0[26];
  v15 = v0[23];
  v14 = v0[24];

  (*(v8 + 8))(v9, v11);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[31] = sub_20DF3C9D8();
  (*(v13 + 16))(v10, v15, v14);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  (*(v13 + 32))(v17 + v16, v10, v14);
  v18 = sub_20DF3D598(sub_20DF15070, v17);
  v0[32] = v18;

  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_20DEFA4B8;
  v19 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED8, &qword_20DF4B420);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF161EC;
  v0[13] = &block_descriptor_367;
  v0[14] = v19;
  [v18 disableAllNextCleanEnergyWindowNotificationsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEFA4B8()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DEFA598, 0, 0);
}

uint64_t sub_20DEFA598()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[27];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  swift_unknownObjectRelease();
  [*(v2 + 16) invalidate];
  v0[22] = v7;
  sub_20DF47EE4();

  v8 = v0[1];

  return v8();
}

uint64_t sub_20DEFA650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v11;
  *(v8 + 88) = a8;
  *(v8 + 96) = v10;
  *(v8 + 72) = a6;
  *(v8 + 80) = a7;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 32) = a1;
  return MEMORY[0x2822009F8](sub_20DEFA690, 0, 0);
}

uint64_t sub_20DEFA690()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v11 = *(v0 + 56);
  v12 = *(v0 + 72);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  v6 = *(v0 + 40);
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  *(v5 + 40) = v11;
  *(v5 + 56) = v12;
  *(v5 + 72) = v3;
  *(v5 + 80) = v2;
  *(v5 + 88) = v1;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_20DEFA7C8;
  v9 = MEMORY[0x277CC9318];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000049, 0x800000020DF4F670, sub_20DF0EB70, v5, v9);
}

uint64_t sub_20DEFA7C8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_20DEFA8E4;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_20DF161C4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DEFA8E4()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_20DEFA948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v50 = a7;
  v51 = a8;
  v42 = a4;
  v43 = a2;
  v44 = a3;
  v49 = a11;
  v47 = a10;
  v48 = a6;
  v45 = a9;
  v46 = a5;
  v12 = sub_20DF47644();
  v39 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v40 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEE0, &qword_20DF4B448);
  v38 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v38 - v22;
  v41 = &v38 - v22;
  v24 = sub_20DF47F04();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  (*(v16 + 16))(v19, a1, v15);
  (*(v13 + 16))(&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v42, v12);
  v25 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v26 = (v17 + *(v13 + 80) + v25) & ~*(v13 + 80);
  v27 = (v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  v30 = v44;
  *(v29 + 4) = v43;
  *(v29 + 5) = v30;
  (*(v16 + 32))(&v29[v25], v19, v38);
  (*(v13 + 32))(&v29[v26], v40, v39);
  v31 = &v29[v27];
  v32 = v47;
  v33 = v48;
  *v31 = v46;
  *(v31 + 1) = v33;
  v34 = &v29[v28];
  v35 = v51;
  *v34 = v50;
  *(v34 + 1) = v35;
  v36 = &v29[(v28 + 23) & 0xFFFFFFFFFFFFFFF8];
  *v36 = v45;
  *(v36 + 1) = v32;
  v36[16] = v49;

  sub_20DEBB534(0, 0, v41, &unk_20DF4B458, v29);
}

uint64_t sub_20DEFAC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 424) = v19;
  *(v8 + 280) = v18;
  *(v8 + 264) = v17;
  *(v8 + 248) = v16;
  *(v8 + 232) = a7;
  *(v8 + 240) = a8;
  *(v8 + 216) = a5;
  *(v8 + 224) = a6;
  *(v8 + 208) = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEE0, &qword_20DF4B448);
  *(v8 + 288) = v9;
  v10 = *(v9 - 8);
  *(v8 + 296) = v10;
  *(v8 + 304) = *(v10 + 64);
  *(v8 + 312) = swift_task_alloc();
  v11 = sub_20DF47BD4();
  *(v8 + 320) = v11;
  v12 = *(v11 - 8);
  *(v8 + 328) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEFAE00, 0, 0);
}

uint64_t sub_20DEFAE00()
{
  v43 = v0;
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 344);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v0 + 216);
  v5 = __swift_project_value_buffer(v2, qword_281122F18);
  *(v0 + 352) = v5;
  swift_beginAccess();
  v6 = *(v3 + 16);
  *(v0 + 360) = v6;
  *(v0 + 368) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);

  v7 = sub_20DF47BB4();
  v8 = sub_20DF47FD4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 344);
  v11 = *(v0 + 320);
  v12 = *(v0 + 328);
  if (v9)
  {
    v14 = *(v0 + 208);
    v13 = *(v0 + 216);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v42 = v16;
    *v15 = 136380675;
    *(v15 + 4) = sub_20DED38E8(v14, v13, &v42);
    _os_log_impl(&dword_20DEAF000, v7, v8, "Fetch energy windows for %{private}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x20F329700](v16, -1, -1);
    MEMORY[0x20F329700](v15, -1, -1);
  }

  (*(v12 + 8))(v10, v11);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);
  v20 = *(v0 + 288);
  v19 = *(v0 + 296);
  v41 = *(v0 + 424);
  v39 = *(v0 + 272);
  v40 = *(v0 + 280);
  v37 = *(v0 + 256);
  v38 = *(v0 + 264);
  v35 = *(v0 + 240);
  v36 = *(v0 + 248);
  v21 = *(v0 + 224);
  v34 = *(v0 + 232);
  v23 = *(v0 + 208);
  v22 = *(v0 + 216);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  *(v0 + 376) = sub_20DF3C9D8();
  (*(v19 + 16))(v18, v21, v20);
  v24 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v25 = swift_allocObject();
  (*(v19 + 32))(v25 + v24, v18, v20);
  v26 = sub_20DF3D598(sub_20DF14F4C, v25);
  *(v0 + 384) = v26;

  v27 = sub_20DF47D04();
  *(v0 + 392) = v27;
  v28 = sub_20DF47634();
  v29 = sub_20DF47D04();
  *(v0 + 400) = v29;
  v30 = sub_20DF47D04();
  *(v0 + 408) = v30;
  v31 = sub_20DF47D04();
  *(v0 + 416) = v31;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_20DEFB1FC;
  v32 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEC0, &qword_20DF4B400);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_20DF16EC8;
  *(v0 + 104) = &block_descriptor_357;
  *(v0 + 112) = v32;
  [v26 energyGuidanceFor:v27 guidanceType:v28 ratePlan:v29 utilityID:v30 timeZone:v31 withCaching:v41 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_20DEFB1FC()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DEFB2DC, 0, 0);
}

uint64_t sub_20DEFB2DC()
{
  v32 = v0;
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v4 = *(v0 + 392);
  v3 = *(v0 + 400);
  v6 = *(v0 + 376);
  v5 = *(v0 + 384);
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);
  swift_unknownObjectRelease();

  [*(v6 + 16) invalidate];
  if (v8 >> 60 == 15)
  {
    v9 = *(v0 + 368);
    (*(v0 + 360))(*(v0 + 336), *(v0 + 352), *(v0 + 320));
    v10 = sub_20DF47BB4();
    v11 = sub_20DF47FF4();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 328);
    v13 = *(v0 + 336);
    v15 = *(v0 + 320);
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_20DED38E8(0xD00000000000001ELL, 0x800000020DF4FBB0, &v31);
      _os_log_impl(&dword_20DEAF000, v10, v11, "%{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x20F329700](v17, -1, -1);
      MEMORY[0x20F329700](v16, -1, -1);
    }

    (*(v14 + 8))(v13, v15);
    v18 = *(v0 + 376);
    v19 = *(v0 + 288);
    v20 = *(v0 + 224);
    sub_20DED4D6C();
    v21 = swift_allocError();
    *v22 = 3;
    *(v0 + 200) = v21;
    sub_20DF47ED4();
  }

  else
  {
    *(v0 + 184) = v7;
    v23 = *(v0 + 376);
    v24 = *(v0 + 288);
    v25 = *(v0 + 224);
    *(v0 + 192) = v8;
    sub_20DF47EE4();
  }

  v27 = *(v0 + 336);
  v26 = *(v0 + 344);
  v28 = *(v0 + 312);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_20DEFB50C(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22[1] = a1;
    v23 = v15;
    *v14 = 136446210;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to fetch energy guidance. %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEE0, &qword_20DF4B448);
  return sub_20DF47ED4();
}

uint64_t sub_20DEFB788()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_20DEFB860;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000001BLL, 0x800000020DF4F6C0, sub_20DEFB974, 0, &type metadata for HomeEnergyStatusCode);
}

uint64_t sub_20DEFB860()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_20DF161D0;
  }

  else
  {
    v3 = sub_20DF16200;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DEFB9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v4[26] = *(v6 + 64);
  v4[27] = swift_task_alloc();
  v7 = sub_20DF47BD4();
  v4[28] = v7;
  v8 = *(v7 - 8);
  v4[29] = v8;
  v9 = *(v8 + 64) + 15;
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEFBAD4, 0, 0);
}

uint64_t sub_20DEFBAD4()
{
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_20DF47BB4();
  v6 = sub_20DF47FD4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20DEAF000, v5, v6, "Disabling energy forecast collection", v7, 2u);
    MEMORY[0x20F329700](v7, -1, -1);
  }

  v8 = v0[29];
  v9 = v0[30];
  v10 = v0[27];
  v11 = v0[28];
  v13 = v0[25];
  v12 = v0[26];
  v15 = v0[23];
  v14 = v0[24];

  (*(v8 + 8))(v9, v11);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[31] = sub_20DF3C9D8();
  (*(v13 + 16))(v10, v15, v14);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  (*(v13 + 32))(v17 + v16, v10, v14);
  v18 = sub_20DF3D598(sub_20DF14C34, v17);
  v0[32] = v18;

  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_20DEFBDC8;
  v19 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED8, &qword_20DF4B420);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF161EC;
  v0[13] = &block_descriptor_347;
  v0[14] = v19;
  [v18 disableGuidanceCollectionWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEFBDC8()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DF1619C, 0, 0);
}

uint64_t sub_20DEFBEA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_20DEFBEC8, 0, 0);
}

uint64_t sub_20DEFBEC8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_20DEFBFC0;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000022, 0x800000020DF4F6E0, sub_20DF0EBB0, v3, &type metadata for HomeEnergyStatusCode);
}

uint64_t sub_20DEFBFC0()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_20DF161AC;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_20DF16200;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DEFC0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  v6[26] = v7;
  v8 = *(v7 - 8);
  v6[27] = v8;
  v6[28] = *(v8 + 64);
  v6[29] = swift_task_alloc();
  v9 = sub_20DF47BD4();
  v6[30] = v9;
  v10 = *(v9 - 8);
  v6[31] = v10;
  v11 = *(v10 + 64) + 15;
  v6[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEFC210, 0, 0);
}

uint64_t sub_20DEFC210()
{
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_20DF47BB4();
  v6 = sub_20DF47FD4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20DEAF000, v5, v6, "Disabling energy forecast collection", v7, 2u);
    MEMORY[0x20F329700](v7, -1, -1);
  }

  v8 = v0[31];
  v9 = v0[32];
  v10 = v0[29];
  v11 = v0[30];
  v13 = v0[27];
  v12 = v0[28];
  v14 = v0[26];
  v15 = v0[23];
  v22 = v0[24];
  v23 = v0[25];

  (*(v8 + 8))(v9, v11);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[33] = sub_20DF3C9D8();
  (*(v13 + 16))(v10, v15, v14);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  (*(v13 + 32))(v17 + v16, v10, v14);
  v18 = sub_20DF3D598(sub_20DF14C34, v17);
  v0[34] = v18;

  v19 = sub_20DF47D04();
  v0[35] = v19;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_20DEFC520;
  v20 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED8, &qword_20DF4B420);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF161EC;
  v0[13] = &block_descriptor_337;
  v0[14] = v20;
  [v18 disableGuidanceCollectionWithGridID:v19 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEFC520()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DEFC600, 0, 0);
}

uint64_t sub_20DEFC600()
{
  v1 = v0[34];
  v2 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[29];
  v6 = v0[26];
  v7 = v0[23];
  v8 = v0[21];
  swift_unknownObjectRelease();

  [*(v3 + 16) invalidate];
  v0[22] = v8;
  sub_20DF47EE4();

  v9 = v0[1];

  return v9();
}

uint64_t sub_20DEFC6C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_20DEFC6E8, 0, 0);
}

uint64_t sub_20DEFC6E8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_20DEFBFC0;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000021, 0x800000020DF4F710, sub_20DF0EBF8, v3, &type metadata for HomeEnergyStatusCode);
}

uint64_t sub_20DEFC7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v22 - v16;
  v18 = sub_20DF47F04();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v10 + 16))(v13, a1, v9);
  v19 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = a2;
  *(v20 + 5) = a3;
  (*(v10 + 32))(&v20[v19], v13, v9);

  sub_20DEBB534(0, 0, v17, a5, v20);
}

uint64_t sub_20DEFC9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  v6[26] = v7;
  v8 = *(v7 - 8);
  v6[27] = v8;
  v6[28] = *(v8 + 64);
  v6[29] = swift_task_alloc();
  v9 = sub_20DF47BD4();
  v6[30] = v9;
  v10 = *(v9 - 8);
  v6[31] = v10;
  v11 = *(v10 + 64) + 15;
  v6[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEFCB00, 0, 0);
}

uint64_t sub_20DEFCB00()
{
  v30 = v0;
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[24];
  v5 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5, v3);

  v6 = sub_20DF47BB4();
  v7 = sub_20DF47FD4();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[31];
  v9 = v0[32];
  v11 = v0[30];
  if (v8)
  {
    v13 = v0[23];
    v12 = v0[24];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136380675;
    *(v14 + 4) = sub_20DED38E8(v13, v12, &v29);
    _os_log_impl(&dword_20DEAF000, v6, v7, "Enable energy forecast collection for %{private}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v10 + 8))(v9, v11);
  v16 = v0[28];
  v17 = v0[29];
  v18 = v0[26];
  v19 = v0[27];
  v20 = v0[25];
  v28 = v0[24];
  v21 = v0[23];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[33] = sub_20DF3C9D8();
  (*(v19 + 16))(v17, v20, v18);
  v22 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v23 = swift_allocObject();
  (*(v19 + 32))(v23 + v22, v17, v18);
  v24 = sub_20DF3D598(sub_20DF149F4, v23);
  v0[34] = v24;

  v25 = sub_20DF47D04();
  v0[35] = v25;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_20DEFCE74;
  v26 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED8, &qword_20DF4B420);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF161EC;
  v0[13] = &block_descriptor_327;
  v0[14] = v26;
  [v24 enableGuidanceCollectionWithGridID:v25 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEFCE74()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DF16198, 0, 0);
}

uint64_t sub_20DEFCF54(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22[1] = a1;
    v23 = v15;
    *v14 = 136446210;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "Enable energy forecast collection failed.%{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  return sub_20DF47ED4();
}

uint64_t sub_20DEFD1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20DEFD1F8, 0, 0);
}

uint64_t sub_20DEFD1F8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v1;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE28, &unk_20DF4AFA0);
  *v6 = v0;
  v6[1] = sub_20DEFD310;
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD00000000000002CLL, 0x800000020DF4F740, sub_20DF0EC30, v3, v7);
}

uint64_t sub_20DEFD310()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20DF161F8, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_20DEFD44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v29 = a5;
  v26 = a4;
  v27 = a1;
  v28 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEB8, &qword_20DF4B3E8);
  v24 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v25 = &v24 - v9;
  v11 = sub_20DF473B4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v24 - v17;
  v19 = sub_20DF47F04();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(v14, v26, v11);
  (*(v7 + 16))(v10, v27, v6);
  v20 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v21 = (v13 + *(v7 + 80) + v20) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = v28;
  *(v22 + 5) = a3;
  (*(v12 + 32))(&v22[v20], v14, v11);
  (*(v7 + 32))(&v22[v21], v25, v24);
  v22[v21 + v8] = v29;

  sub_20DEBB534(0, 0, v18, &unk_20DF4B3F8, v22);
}

uint64_t sub_20DEFD728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 424) = a8;
  *(v8 + 216) = a6;
  *(v8 + 224) = a7;
  *(v8 + 200) = a4;
  *(v8 + 208) = a5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE28, &unk_20DF4AFA0) - 8) + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  v10 = sub_20DF47624();
  *(v8 + 240) = v10;
  v11 = *(v10 - 8);
  *(v8 + 248) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEB8, &qword_20DF4B3E8);
  *(v8 + 272) = v13;
  v14 = *(v13 - 8);
  *(v8 + 280) = v14;
  *(v8 + 288) = *(v14 + 64);
  *(v8 + 296) = swift_task_alloc();
  v15 = sub_20DF473B4();
  *(v8 + 304) = v15;
  v16 = *(v15 - 8);
  *(v8 + 312) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 320) = swift_task_alloc();
  v18 = sub_20DF47BD4();
  *(v8 + 328) = v18;
  v19 = *(v18 - 8);
  *(v8 + 336) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEFD974, 0, 0);
}

uint64_t sub_20DEFD974()
{
  v47 = v0;
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 360);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);
  v6 = *(v0 + 304);
  v8 = *(v0 + 208);
  v7 = *(v0 + 216);
  v9 = __swift_project_value_buffer(v2, qword_281122F18);
  *(v0 + 368) = v9;
  swift_beginAccess();
  v10 = *(v3 + 16);
  *(v0 + 376) = v10;
  *(v0 + 384) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v9, v2);
  (*(v5 + 16))(v4, v7, v6);

  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FD4();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 360);
  v16 = *(v0 + 328);
  v15 = *(v0 + 336);
  v18 = *(v0 + 312);
  v17 = *(v0 + 320);
  v19 = *(v0 + 304);
  if (v13)
  {
    v44 = *(v0 + 360);
    v20 = *(v0 + 200);
    v21 = *(v0 + 208);
    v43 = *(v0 + 328);
    v22 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v46 = v42;
    *v22 = 136380931;
    *(v22 + 4) = sub_20DED38E8(v20, v21, &v46);
    *(v22 + 12) = 2080;
    sub_20DF1489C(&qword_27C84CEC8, MEMORY[0x277CC88A8]);
    v23 = sub_20DF483B4();
    v25 = v24;
    (*(v18 + 8))(v17, v19);
    v26 = sub_20DED38E8(v23, v25, &v46);

    *(v22 + 14) = v26;
    _os_log_impl(&dword_20DEAF000, v11, v12, "Fetch historical energy windows for %{private}s in %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v42, -1, -1);
    MEMORY[0x20F329700](v22, -1, -1);

    (*(v15 + 8))(v44, v43);
  }

  else
  {

    (*(v18 + 8))(v17, v19);
    (*(v15 + 8))(v14, v16);
  }

  v27 = *(v0 + 288);
  v28 = *(v0 + 296);
  v30 = *(v0 + 272);
  v29 = *(v0 + 280);
  v45 = *(v0 + 424);
  v31 = *(v0 + 224);
  v32 = *(v0 + 200);
  v40 = *(v0 + 208);
  v41 = *(v0 + 216);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  *(v0 + 392) = sub_20DF3C9D8();
  (*(v29 + 16))(v28, v31, v30);
  v33 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v34 = swift_allocObject();
  (*(v29 + 32))(v34 + v33, v28, v30);
  v35 = sub_20DF3D598(sub_20DF14860, v34);
  *(v0 + 400) = v35;

  v36 = sub_20DF47D04();
  *(v0 + 408) = v36;
  v37 = sub_20DF47384();
  *(v0 + 416) = v37;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_20DEFDE10;
  v38 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEC0, &qword_20DF4B400);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_20DF16EC8;
  *(v0 + 104) = &block_descriptor_317;
  *(v0 + 112) = v38;
  [v35 historicalGridQualityFor:v36 from:v37 withCaching:v45 completionHandler:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_20DEFDE10()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DEFDEF0, 0, 0);
}

uint64_t sub_20DEFDEF0()
{
  v47 = v0;
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v4 = *(v0 + 392);
  v3 = *(v0 + 400);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  swift_unknownObjectRelease();

  v7 = [*(v4 + 16) invalidate];
  if (v5 >> 60 == 15)
  {
    v8 = *(v0 + 384);
    (*(v0 + 376))(*(v0 + 344), *(v0 + 368), *(v0 + 328));
    v9 = sub_20DF47BB4();
    v10 = sub_20DF47FF4();
    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 336);
    v12 = *(v0 + 344);
    v14 = *(v0 + 328);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v46 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_20DED38E8(0xD00000000000001ELL, 0x800000020DF4FBB0, &v46);
      _os_log_impl(&dword_20DEAF000, v9, v10, "%{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x20F329700](v16, -1, -1);
      MEMORY[0x20F329700](v15, -1, -1);
    }

    (*(v13 + 8))(v12, v14);
    v17 = *(v0 + 392);
    v18 = *(v0 + 272);
    v19 = *(v0 + 224);
    sub_20DED4D6C();
    v20 = swift_allocError();
    *v21 = 3;
    *(v0 + 184) = v20;
    sub_20DF47ED4();
  }

  else
  {
    v22 = *(v0 + 256);
    v23 = *(v0 + 240);
    v24 = MEMORY[0x20F329140](v7);
    v25 = sub_20DF47324();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_20DF47314();
    sub_20DF1489C(&qword_281122970, MEMORY[0x277D17ED0]);
    sub_20DF47304();
    v38 = *(v0 + 264);
    v44 = *(v0 + 272);
    v45 = *(v0 + 392);
    v39 = *(v0 + 248);
    v40 = *(v0 + 256);
    v41 = *(v0 + 232);
    v42 = *(v0 + 240);
    v43 = *(v0 + 224);

    objc_autoreleasePoolPop(v24);
    (*(v39 + 32))(v38, v40, v42);
    (*(v39 + 16))(v41, v38, v42);
    (*(v39 + 56))(v41, 0, 1, v42);
    sub_20DF47EE4();
    sub_20DF14888(v6, v5);

    (*(v39 + 8))(v38, v42);
  }

  v29 = *(v0 + 352);
  v28 = *(v0 + 360);
  v30 = *(v0 + 344);
  v31 = *(v0 + 320);
  v32 = *(v0 + 296);
  v34 = *(v0 + 256);
  v33 = *(v0 + 264);
  v35 = *(v0 + 232);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_20DEFE404(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22[1] = a1;
    v23 = v15;
    *v14 = 136446210;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to fetch historical energy windows. %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEB8, &qword_20DF4B3E8);
  return sub_20DF47ED4();
}

uint64_t sub_20DEFE680(double a1, double a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_20DEFE6A0, 0, 0);
}

uint64_t sub_20DEFE6A0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C930, qword_20DF4AFB0);
  *v5 = v0;
  v5[1] = sub_20DEFE7B0;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000010, 0x800000020DF4E7D0, sub_20DEBB23C, v3, v6);
}

uint64_t sub_20DEFE7B0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_20DEFE8E8;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_20DEFE8CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DEFE8E8()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_20DEFE94C(uint64_t a1, double a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF08, &qword_20DF4B528);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = sub_20DF47F04();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  (*(v7 + 32))(v17 + v16, v10, v6);
  v18 = (v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a2;
  v18[1] = a3;
  sub_20DEBB534(0, 0, v14, &unk_20DF4B538, v17);
}

uint64_t sub_20DEFEB4C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 216) = a1;
  *(v6 + 224) = a2;
  *(v6 + 208) = a6;
  v7 = sub_20DF47BD4();
  *(v6 + 232) = v7;
  v8 = *(v7 - 8);
  *(v6 + 240) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 248) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF08, &qword_20DF4B528);
  *(v6 + 256) = v10;
  v11 = *(v10 - 8);
  *(v6 + 264) = v11;
  *(v6 + 272) = *(v11 + 64);
  *(v6 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEFEC80, 0, 0);
}

uint64_t sub_20DEFEC80()
{
  v2 = *(v0 + 34);
  v1 = *(v0 + 35);
  v3 = *(v0 + 32);
  v4 = *(v0 + 33);
  v6 = v0[27];
  v5 = v0[28];
  v7 = *(v0 + 26);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  *(v0 + 36) = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v7, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v1, v3);
  v10 = sub_20DF3D598(sub_20DF16058, v9);
  *(v0 + 37) = v10;

  *(v0 + 2) = v0;
  *(v0 + 7) = v0 + 21;
  *(v0 + 3) = sub_20DEFEE88;
  v11 = swift_continuation_init();
  *(v0 + 17) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCD8, &qword_20DF4AC80);
  *(v0 + 10) = MEMORY[0x277D85DD0];
  *(v0 + 11) = 1107296256;
  *(v0 + 12) = sub_20DEF28A4;
  *(v0 + 13) = &block_descriptor_467;
  *(v0 + 14) = v11;
  [v10 gridIDLookupWithCoordinate:v0 + 10 completionHandler:{v6, v5}];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEFEE88()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DEFEF68, 0, 0);
}

uint64_t sub_20DEFEF68()
{
  v30 = v0;
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[21];
  v4 = v0[22];
  swift_unknownObjectRelease();
  [*(v2 + 16) invalidate];
  if (v4)
  {
    v0[23] = v3;
    v5 = v0[36];
    v6 = v0[32];
    v7 = v0[26];
    v0[24] = v4;
    sub_20DF47EE4();
  }

  else
  {
    if (qword_281122988[0] != -1)
    {
      swift_once();
    }

    v9 = v0[30];
    v8 = v0[31];
    v10 = v0[29];
    v11 = __swift_project_value_buffer(v10, qword_281122F18);
    swift_beginAccess();
    (*(v9 + 16))(v8, v11, v10);
    v12 = sub_20DF47BB4();
    v13 = sub_20DF47FF4();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[30];
    v15 = v0[31];
    v17 = v0[29];
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_20DED38E8(0xD000000000000018, 0x800000020DF4FBE0, &v29);
      _os_log_impl(&dword_20DEAF000, v12, v13, "%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x20F329700](v19, -1, -1);
      MEMORY[0x20F329700](v18, -1, -1);
    }

    (*(v16 + 8))(v15, v17);
    v20 = v0[36];
    v21 = v0[32];
    v22 = v0[26];
    sub_20DED4D6C();
    v23 = swift_allocError();
    *v24 = 4;
    v0[25] = v23;
    sub_20DF47ED4();
  }

  v25 = v0[35];
  v26 = v0[31];

  v27 = v0[1];

  return v27();
}

uint64_t sub_20DEFF1D0(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22[1] = a1;
    v23 = v15;
    *v14 = 136315138;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "Grid ID lookup failed. %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF08, &qword_20DF4B528);
  return sub_20DF47ED4();
}

uint64_t sub_20DEFF44C()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  v3 = sub_20DF0EC40();
  *v2 = v0;
  v2[1] = sub_20DEFB860;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000014, 0x800000020DF4F770, sub_20DEFF528, 0, v3);
}

uint64_t sub_20DEFF558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEA8, &qword_20DF4B3C8);
  v4[21] = v5;
  v6 = *(v5 - 8);
  v4[22] = v6;
  v4[23] = *(v6 + 64);
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEFF62C, 0, 0);
}

uint64_t sub_20DEFF62C()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[25] = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v5, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, v1, v3);
  v8 = sub_20DF3D598(sub_20DF14698, v7);
  v0[26] = v8;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DEFF820;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEB0, &qword_20DF4B3E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEE2500;
  v0[13] = &block_descriptor_307;
  v0[14] = v9;
  [v8 getCurrentLocationWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEFF820()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DF161A4, 0, 0);
}

uint64_t sub_20DEFF900(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27C851F48);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22[1] = a1;
    v23 = v15;
    *v14 = 136315138;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to get Current Location. %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEA8, &qword_20DF4B3C8);
  return sub_20DF47ED4();
}

uint64_t sub_20DEFFB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_20DEFFBA0, 0, 0);
}

uint64_t sub_20DEFFBA0()
{
  v1 = *(v0 + 32);
  v7 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v7;
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_20DEFFCA4;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000026, 0x800000020DF4F790, sub_20DF0EC8C, v2, v5);
}

uint64_t sub_20DEFFCA4()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_20DF161AC;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_20DF161DC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DEFFDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a1;
  v5 = sub_20DF47564();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v26 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  v17 = sub_20DF47F04();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v9 + 16))(v12, v27, v8);
  v18 = a2;
  v19 = v5;
  (*(v6 + 16))(&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v5);
  v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v21 = (v10 + *(v6 + 80) + v20) & ~*(v6 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v9 + 32))(v22 + v20, v12, v8);
  (*(v6 + 32))(v22 + v21, v26, v19);
  v23 = (v22 + ((v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  v24 = v29;
  *v23 = v28;
  v23[1] = v24;

  sub_20DF00870(0, 0, v16, &unk_20DF4B3C0, v22);
}

uint64_t sub_20DF0009C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v7[22] = v8;
  v9 = *(v8 - 8);
  v7[23] = v9;
  v7[24] = *(v9 + 64);
  v7[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF00174, 0, 0);
}

uint64_t sub_20DF00174()
{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v15 = v0[21];
  v14 = v0[20];
  v6 = v0[18];
  v5 = v0[19];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[26] = sub_20DF3C9D8();
  (*(v3 + 16))(v2, v6, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v2, v4);
  v9 = sub_20DF3D598(sub_20DF14574, v8);
  v0[27] = v9;

  v10 = sub_20DF47524();
  v0[28] = v10;
  v11 = sub_20DF47D04();
  v0[29] = v11;
  v0[2] = v0;
  v0[3] = sub_20DF0038C;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9E0, &unk_20DF49F10);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEC8A6C;
  v0[13] = &block_descriptor_296;
  v0[14] = v12;
  [v9 requestAddToShareForHomeUUID:v10 siteID:v11 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF0038C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_20DF00550;
  }

  else
  {
    v3 = sub_20DF0049C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF0049C()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v6 = v0[22];
  v7 = v0[18];
  swift_unknownObjectRelease();

  [*(v4 + 16) invalidate];
  sub_20DF47EE4();

  v8 = v0[1];

  return v8();
}

uint64_t sub_20DF00550()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  swift_willThrow();

  swift_unknownObjectRelease();

  v7 = v0[1];
  v8 = v0[30];

  return v7();
}

uint64_t sub_20DF005F4(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27C851F48);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22[1] = a1;
    v23 = v15;
    *v14 = 136315138;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to request add to share. %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  return sub_20DF47ED4();
}

uint64_t sub_20DF00870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_20DED8804(a3, v24 - v10, &qword_27C84C918, &qword_20DF49EE0);
  v12 = sub_20DF47F04();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20DED8730(v11, &qword_27C84C918, &qword_20DF49EE0);
  }

  else
  {
    sub_20DF47EF4();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_20DF47EC4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_20DF47D44() + 32;

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

      sub_20DED8730(a3, &qword_27C84C918, &qword_20DF49EE0);

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

  sub_20DED8730(a3, &qword_27C84C918, &qword_20DF49EE0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_20DF00B1C()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_20DF00BF0;
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v2, 0, 0, 0xD000000000000012, 0x800000020DF4F7C0, sub_20DF00D04, 0, v3);
}

uint64_t sub_20DF00BF0()
{
  v2 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 24) = v0;

  if (v0)
  {
    v3 = sub_20DECBDB4;
  }

  else
  {
    v3 = sub_20DF161DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF00D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v4[22] = *(v6 + 64);
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF00E08, 0, 0);
}

uint64_t sub_20DF00E08()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[24] = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v5, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, v1, v3);
  v8 = sub_20DF3D598(sub_20DF143B0, v7);
  v0[25] = v8;

  v0[2] = v0;
  v0[3] = sub_20DF00FEC;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9E0, &unk_20DF49F10);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEC8A6C;
  v0[13] = &block_descriptor_286;
  v0[14] = v9;
  [v8 resetUtilityDataWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF00FEC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_20DF01190;
  }

  else
  {
    v3 = sub_20DF010FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF010FC()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[19];
  v4 = v0[20];
  swift_unknownObjectRelease();
  [*(v2 + 16) invalidate];
  sub_20DF47EE4();

  v5 = v0[23];

  v6 = v0[1];

  return v6();
}

uint64_t sub_20DF01190()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[19];
  v5 = v0[20];
  swift_willThrow();

  swift_unknownObjectRelease();
  v0[18] = v2;
  sub_20DF47ED4();
  v6 = v0[23];

  v7 = v0[1];

  return v7();
}

uint64_t sub_20DF0123C(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27C851F48);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22[1] = a1;
    v23 = v15;
    *v14 = 136315138;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to purge all data. %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  return sub_20DF47ED4();
}

uint64_t sub_20DF014B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 73) = a6;
  *(v6 + 72) = a4;
  *(v6 + 32) = a3;
  *(v6 + 40) = a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20DF014E4, 0, 0);
}

uint64_t sub_20DF014E4()
{
  v1 = *(v0 + 73);
  v2 = *(v0 + 72);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v10 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *(v5 + 16) = v10;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
  *(v5 + 48) = v3;
  *(v5 + 56) = v1;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_20DF0160C;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD00000000000003FLL, 0x800000020DF4F7E0, sub_20DF0EC98, v5, v8);
}

uint64_t sub_20DF0160C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_20DEFE8E8;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_20DF161DC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DF01728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v32 = a7;
  v31 = a6;
  v30 = a5;
  v28 = a2;
  v29 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_20DF47F04();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v10 + 16))(v13, a1, v9);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  (*(v10 + 32))(v21 + v19, v13, v9);
  v22 = (v21 + v20);
  v23 = v29;
  *v22 = v28;
  v22[1] = a3;
  v24 = v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v24 = v23;
  *(v24 + 8) = v30;
  v25 = v21 + ((v20 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v25 = v31;
  *(v25 + 8) = v32;

  sub_20DEBB534(0, 0, v17, &unk_20DF4B3A0, v21);
}

uint64_t sub_20DF01978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 257) = v14;
  *(v8 + 176) = a7;
  *(v8 + 184) = v13;
  *(v8 + 256) = a8;
  *(v8 + 160) = a5;
  *(v8 + 168) = a6;
  *(v8 + 152) = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  *(v8 + 192) = v9;
  v10 = *(v9 - 8);
  *(v8 + 200) = v10;
  *(v8 + 208) = *(v10 + 64);
  *(v8 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF01A68, 0, 0);
}

uint64_t sub_20DF01A68()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v17 = *(v0 + 257);
  v4 = *(v0 + 192);
  v16 = *(v0 + 184);
  v15 = *(v0 + 256);
  v14 = *(v0 + 176);
  v13 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  *(v0 + 224) = sub_20DF3C9D8();
  (*(v3 + 16))(v1, v5, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v4);
  v9 = sub_20DF3D598(sub_20DF1428C, v8);
  *(v0 + 232) = v9;

  v10 = sub_20DF47D04();
  *(v0 + 240) = v10;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_20DF01C94;
  v11 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9E0, &unk_20DF49F10);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_20DEC8A6C;
  *(v0 + 104) = &block_descriptor_276;
  *(v0 + 112) = v11;
  [v9 submitTestTaskWithTaskID:v10 delay:v14 withRetry:v15 taskDuration:v16 cancelOnly:v17 completionHandler:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_20DF01C94()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_20DF01E44;
  }

  else
  {
    v3 = sub_20DF01DA4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF01DA4()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  v4 = v0[24];
  v5 = v0[19];
  swift_unknownObjectRelease();

  [*(v3 + 16) invalidate];
  sub_20DF47EE4();

  v6 = v0[27];

  v7 = v0[1];

  return v7();
}

uint64_t sub_20DF01E44()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[24];
  v6 = v0[19];
  swift_willThrow();

  swift_unknownObjectRelease();

  v0[18] = v1;
  sub_20DF47ED4();
  v7 = v0[27];

  v8 = v0[1];

  return v8();
}

uint64_t sub_20DF01EF8(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27C851F48);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22[1] = a1;
    v23 = v15;
    *v14 = 136315138;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to submit test task. %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  return sub_20DF47ED4();
}

uint64_t sub_20DF02174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_20DF02198, 0, 0);
}

uint64_t sub_20DF02198()
{
  v1 = *(v0 + 32);
  v7 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v7;
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_20DEFFCA4;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD00000000000001BLL, 0x800000020DF4F820, sub_20DF0ECB0, v2, v5);
}

uint64_t sub_20DF0229C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v22 - v14;
  v16 = sub_20DF47F04();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v8 + 16))(v11, a1, v7);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  (*(v8 + 32))(v19 + v17, v11, v7);
  v20 = (v19 + v18);
  *v20 = v23;
  v20[1] = a3;
  *(v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8)) = a4;

  sub_20DEBB534(0, 0, v15, &unk_20DF4B390, v19);
}

uint64_t sub_20DF024C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v7[23] = v8;
  v9 = *(v8 - 8);
  v7[24] = v9;
  v7[25] = *(v9 + 64);
  v7[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF0259C, 0, 0);
}

uint64_t sub_20DF0259C()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[21];
  v16 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[27] = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v7, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v1, v3);
  v10 = sub_20DF3D598(sub_20DF140E0, v9);
  v0[28] = v10;

  v11 = sub_20DF47D04();
  v0[29] = v11;
  if (v16)
  {
    v12 = v0[22];
    v13 = sub_20DF47C24();
  }

  else
  {
    v13 = 0;
  }

  v0[30] = v13;
  v0[2] = v0;
  v0[3] = sub_20DF027DC;
  v14 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9E0, &unk_20DF49F10);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEC8A6C;
  v0[13] = &block_descriptor_266;
  v0[14] = v14;
  [v10 setKVSDictionaryWithKey:v11 dict:v13 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF027DC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_20DF02998;
  }

  else
  {
    v3 = sub_20DF028EC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF028EC()
{
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[23];
  v6 = v0[19];
  swift_unknownObjectRelease();

  [*(v4 + 16) invalidate];
  sub_20DF47EE4();

  v7 = v0[26];

  v8 = v0[1];

  return v8();
}

uint64_t sub_20DF02998()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[27];
  v6 = v0[23];
  v7 = v0[19];
  swift_willThrow();

  swift_unknownObjectRelease();

  v0[18] = v1;
  sub_20DF47ED4();
  v8 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_20DF02A5C(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27C851F48);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22[1] = a1;
    v23 = v15;
    *v14 = 136315138;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to set kvs. %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  return sub_20DF47ED4();
}

uint64_t sub_20DF02CD8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_20DF02CF8, 0, 0);
}

uint64_t sub_20DF02CF8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE30, qword_20DF4AFE8);
  *v5 = v0;
  v5[1] = sub_20DEFBFC0;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000016, 0x800000020DF4F840, sub_20DF0ECBC, v3, v6);
}

uint64_t sub_20DF02E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v25 - v18;
  v20 = sub_20DF47F04();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v12 + 16))(v15, a1, v11);
  v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v12 + 32))(v22 + v21, v15, v11);
  v23 = (v22 + ((v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = a2;
  v23[1] = a3;

  sub_20DEBB534(0, 0, v19, a7, v22);
}

uint64_t sub_20DF02FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[21] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE98, &qword_20DF4B368);
  v6[24] = v7;
  v8 = *(v7 - 8);
  v6[25] = v8;
  v6[26] = *(v8 + 64);
  v6[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF030CC, 0, 0);
}

uint64_t sub_20DF030CC()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[22];
  v13 = v0[23];
  v6 = v0[21];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[28] = sub_20DF3C9D8();
  (*(v4 + 16))(v2, v6, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v2, v3);
  v9 = sub_20DF3D598(sub_20DF13F68, v8);
  v0[29] = v9;

  v10 = sub_20DF47D04();
  v0[30] = v10;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DEBCD38;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEA0, &qword_20DF4B380);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF0355C;
  v0[13] = &block_descriptor_256;
  v0[14] = v11;
  [v9 getKVSDictionaryWithKey:v10 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF032E0(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27C851F48);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22[1] = a1;
    v23 = v15;
    *v14 = 136315138;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to get kvs. %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE98, &qword_20DF4B368);
  return sub_20DF47ED4();
}

uint64_t sub_20DF0355C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_20DF47C34();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}