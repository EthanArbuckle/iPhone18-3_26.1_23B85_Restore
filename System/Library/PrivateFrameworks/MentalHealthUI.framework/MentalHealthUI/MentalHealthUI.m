void *sub_2589A3340@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2589A3358@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_258B02B14();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for TagLayout(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TagLayout(uint64_t result, int a2, int a3)
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

uint64_t sub_2589A33CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2589A33F0(uint64_t a1, uint64_t a2)
{
  sub_2589BD038(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2589A348C(uint64_t a1, uint64_t a2)
{
  sub_2589BD038(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2589A3530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2589BD414(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_2589BD414(0, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589A36B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2589BD414(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_2589BD414(0, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589A3898@<X0>(uint64_t a1@<X8>)
{
  sub_258B00E34();
  v2 = a1 + *(type metadata accessor for IntroPhaseSpecs() + 20);
  return sub_258B00D84();
}

uint64_t sub_2589A391C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2589C6760(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_2589C6760(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_2589C6760(0, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_2589A3B00(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2589C6760(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_2589C6760(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_2589C6760(0, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      if (*(*(v16 - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return;
      }

      v10 = v16;
      v14 = *(v16 - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_2589A3CE0()
{
  v1 = _s15EntryNoDataViewVMa();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_2589C6760(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_258B006A4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = &v5[v1[5]];
  sub_2589C6760(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = (v0 + v3);
    v9 = sub_258B01504();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    if (!v11(v8, 1, v9))
    {
      (*(v10 + 8))(v8, v9);
    }

    v12 = type metadata accessor for StateOfMindTimeline.Styles(0);
    v13 = *(v12 + 20);
    v14 = sub_258B00AA4();
    v15 = *(*(v14 - 8) + 8);
    v16 = &v8[v13];
    v17 = v12;
    v15(v16, v14);
    v18 = *(v12 + 28);
    v19 = sub_258B006A4();
    v53 = *(*(v19 - 8) + 8);
    v54 = v19;
    v53(&v8[v18]);
    v20 = &v8[v17[8]];
    if (!v11(v20, 1, v9))
    {
      (*(v10 + 8))(v20, v9);
    }

    v21 = _s6StylesV8TimelineVMa(0);
    v15(&v20[*(v21 + 20)], v14);
    v22 = &v8[v17[9]];
    if (!v11(v22, 1, v9))
    {
      (*(v10 + 8))(v22, v9);
    }

    v23 = _s6StylesV6NoDataVMa(0);
    v15(&v22[*(v23 + 20)], v14);
    v24 = &v8[v17[10]];
    if (!v11(v24, 1, v9))
    {
      (*(v10 + 8))(v24, v9);
    }

    v25 = _s6StylesV11PlaceholderVMa(0);
    v15(&v24[*(v25 + 20)], v14);
    v26 = &v8[v17[11]];
    if (!v11(v26, 1, v9))
    {
      (*(v10 + 8))(v26, v9);
    }

    v27 = _s6StylesV6SymbolVMa(0);
    v15(&v26[*(v27 + 20)], v14);
    v28 = &v8[v17[12]];
    v56 = v17;
    if (!v11(v28, 1, v9))
    {
      (*(v10 + 8))(v28, v9);
    }

    v29 = v10;
    v30 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
    v15(&v28[*(v30 + 20)], v14);
    v31 = *(v30 + 28);
    v32 = v29;
    (v53)(&v28[v31], v54);
    v33 = &v8[v56[13]];
    if (!v11(v33, 1, v9))
    {
      (*(v32 + 8))(v33, v9);
    }

    v34 = _s6StylesV5EmptyVMa(0);
    v15(&v33[*(v34 + 20)], v14);
    v35 = &v8[v56[14]];
    if (!v11(v35, 1, v9))
    {
      (*(v32 + 8))(v35, v9);
    }

    v36 = _s6StylesV5DailyVMa(0);
    v15(&v35[*(v36 + 20)], v14);
    v37 = &v8[v56[15]];
    if (!v11(v37, 1, v9))
    {
      (*(v32 + 8))(v37, v9);
    }

    v38 = _s6StylesV9MomentaryVMa(0);
    v15(&v37[*(v38 + 20)], v14);
    v39 = &v8[v56[16]];
    if (!v11(v39, 1, v9))
    {
      (*(v32 + 8))(v39, v9);
    }

    v40 = _s6StylesV6HeaderVMa(0);
    v15(&v39[*(v40 + 20)], v14);
    v41 = &v8[v56[17]];
    if (!v11(v41, 1, v9))
    {
      (*(v32 + 8))(v41, v9);
    }

    v42 = _s6StylesV11ChartButtonVMa(0);
    v15(&v41[*(v42 + 20)], v14);
    v43 = &v8[v56[18]];
    if (!v11(v43, 1, v9))
    {
      (*(v32 + 8))(v43, v9);
    }

    v44 = _s6StylesV15LogButtonFooterVMa(0);
    v15(&v43[*(v44 + 20)], v14);
    v5 = v55;
  }

  else
  {
    v45 = *v8;
  }

  v46 = v1[6];
  sub_2589C6760(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = sub_258B008A4();
    (*(*(v47 - 8) + 8))(&v5[v46], v47);
  }

  else
  {
    v48 = *&v5[v46];
  }

  v49 = *&v5[v1[7] + 8];

  v50 = *&v5[v1[8] + 8];

  v51 = *&v5[v1[9]];

  return swift_deallocObject();
}

uint64_t sub_2589A44F0()
{

  return swift_deallocObject();
}

uint64_t sub_2589A459C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2589C9FC0(0, &qword_27F96CC80, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_2589C9FC0(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  sub_2589C9FC0(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[9]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

void sub_2589A47F8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2589C9FC0(0, &qword_27F96CC80, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_2589C9FC0(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_2589C9FC0(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
        if (*(*(v17 - 8) + 84) != a3)
        {
          *(a1 + a4[9]) = (a2 - 1);
          return;
        }

        v10 = v17;
        v14 = *(v17 - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_2589A4A54(uint64_t a1, uint64_t a2)
{
  sub_2589D1A90(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589A4AB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258B00DA4();
  *a1 = result;
  return result;
}

uint64_t sub_2589A4AE4(uint64_t *a1)
{
  v1 = *a1;

  return sub_258B00DB4();
}

uint64_t sub_2589A4B20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_258B00F14();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2589A4B88()
{
  v1 = v0;
  v2 = _s16TimelineDataViewVMa();
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = type metadata accessor for StateOfMindTimeline.DaySummary();
  v7 = *(*(v6 - 1) + 80);
  v8 = *(*(v6 - 1) + 64);
  v9 = (v1 + v4);
  sub_2589C9FC0(0, &qword_27F96CFA8, MEMORY[0x277CDFAA0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_258B00AC4();
    (*(*(v10 - 8) + 8))(v1 + v4, v10);
  }

  else
  {
    v11 = *v9;
  }

  v12 = v5 + v7;
  v86 = v2;
  v13 = *(v2 + 20);
  sub_2589C9FC0(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_258B006A4();
    (*(*(v14 - 8) + 8))(&v9[v13], v14);
  }

  else
  {
    v15 = *&v9[v13];
  }

  v16 = v4 + v12;
  v17 = v86;
  v18 = &v9[v86[6]];
  sub_2589C9FC0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v81 = v16;
    v82 = v7;
    v83 = v6;
    v84 = v1;
    v19 = sub_258B01504();
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);
    if (!v21(v18, 1, v19))
    {
      (*(v20 + 8))(v18, v19);
    }

    v22 = type metadata accessor for StateOfMindTimeline.Styles(0);
    v85 = v20;
    v23 = v22[5];
    v24 = sub_258B00AA4();
    v25 = *(*(v24 - 8) + 8);
    v25(&v18[v23], v24);
    v26 = v22[7];
    v27 = sub_258B006A4();
    v80 = *(*(v27 - 8) + 8);
    v80(&v18[v26], v27);
    v28 = &v18[v22[8]];
    if (!v21(v28, 1, v19))
    {
      (*(v85 + 8))(v28, v19);
    }

    v29 = _s6StylesV8TimelineVMa(0);
    v25(&v28[*(v29 + 20)], v24);
    v30 = &v18[v22[9]];
    if (!v21(v30, 1, v19))
    {
      (*(v85 + 8))(v30, v19);
    }

    v31 = _s6StylesV6NoDataVMa(0);
    v25(&v30[*(v31 + 20)], v24);
    v32 = &v18[v22[10]];
    if (!v21(v32, 1, v19))
    {
      (*(v85 + 8))(v32, v19);
    }

    v33 = _s6StylesV11PlaceholderVMa(0);
    v25(&v32[*(v33 + 20)], v24);
    v34 = &v18[v22[11]];
    if (!v21(v34, 1, v19))
    {
      (*(v85 + 8))(v34, v19);
    }

    v35 = _s6StylesV6SymbolVMa(0);
    v25(&v34[*(v35 + 20)], v24);
    v36 = &v18[v22[12]];
    if (!v21(v36, 1, v19))
    {
      (*(v85 + 8))(v36, v19);
    }

    v37 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
    v25(&v36[*(v37 + 20)], v24);
    v80(&v36[*(v37 + 28)], v27);
    v38 = &v18[v22[13]];
    if (!v21(v38, 1, v19))
    {
      (*(v85 + 8))(v38, v19);
    }

    v39 = _s6StylesV5EmptyVMa(0);
    v25(&v38[*(v39 + 20)], v24);
    v40 = &v18[v22[14]];
    v7 = v82;
    if (!v21(v40, 1, v19))
    {
      (*(v85 + 8))(v40, v19);
    }

    v41 = _s6StylesV5DailyVMa(0);
    v25(&v40[*(v41 + 20)], v24);
    v42 = &v18[v22[15]];
    if (!v21(v42, 1, v19))
    {
      (*(v85 + 8))(v42, v19);
    }

    v43 = _s6StylesV9MomentaryVMa(0);
    v25(&v42[*(v43 + 20)], v24);
    v44 = &v18[v22[16]];
    if (!v21(v44, 1, v19))
    {
      (*(v85 + 8))(v44, v19);
    }

    v45 = _s6StylesV6HeaderVMa(0);
    v25(&v44[*(v45 + 20)], v24);
    v46 = &v18[v22[17]];
    if (!v21(v46, 1, v19))
    {
      (*(v85 + 8))(v46, v19);
    }

    v47 = &v46[*(_s6StylesV11ChartButtonVMa(0) + 20)];
    v25(v47, v24);
    v48 = &v18[v22[18]];
    if (!v21(v48, 1, v19))
    {
      (*(v85 + 8))(v48, v19);
    }

    v49 = _s6StylesV15LogButtonFooterVMa(0);
    v25(&v48[*(v49 + 20)], v24);
    v1 = v84;
    v6 = v83;
    v17 = v86;
    v16 = v81;
  }

  else
  {
    v50 = *v18;
  }

  v51 = v16 & ~v7;
  v52 = &v9[v17[7]];
  v53 = *v52;

  v54 = *(v52 + 1);

  sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
  v56 = &v52[*(v55 + 32)];
  _s9ViewModelOMa();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v58 = sub_258B029C4();
    (*(*(v58 - 8) + 8))(v56, v58);
    sub_2589D3788();
    v56 = (v56 + *(v59 + 48) + 8);
  }

  v60 = *v56;

LABEL_38:
  v61 = *&v9[v17[9] + 8];

  v62 = *&v9[v17[10] + 8];

  v63 = *&v9[v17[11] + 8];

  v64 = *&v9[v17[12] + 8];

  v65 = *&v9[v17[13] + 8];

  v66 = v1 + v51;
  v67 = v6[5];
  v68 = sub_258B029C4();
  (*(*(v68 - 8) + 8))(v1 + v51 + v67, v68);
  v69 = *(v1 + v51 + v6[6] + 8);

  v70 = v1 + v51 + v6[7];
  v71 = _s5EntryVMa();
  if (!(*(*(v71 - 1) + 48))(v70, 1, v71))
  {
    v72 = sub_258B000C4();
    (*(*(v72 - 8) + 8))(v70, v72);
    v73 = *(v70 + v71[5] + 8);

    v74 = *(v70 + v71[6] + 8);

    v75 = *(v70 + v71[7] + 8);

    v76 = *(v70 + v71[8] + 8);
  }

  v77 = *(v66 + v6[8]);

  v78 = *(v66 + v6[9]);

  return swift_deallocObject();
}

uint64_t sub_2589A568C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2589D6944(0, &qword_27F96D000, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_2589A577C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2589D6944(0, &qword_27F96D000, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }
}

uint64_t sub_2589A5874(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2589DC5CC(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_2589DC5CC(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = type metadata accessor for StateOfMindTimeline.DaySummary();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = _s5EntryVMa();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_2589A5A70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2589DC5CC(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_2589DC5CC(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = type metadata accessor for StateOfMindTimeline.DaySummary();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = _s5EntryVMa();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2589A5C70()
{
  sub_2589DBBB4();
  sub_2589DC2F4(&qword_27F96D180, sub_2589DBBB4, sub_2589DBCD0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589A5D04(uint64_t a1, uint64_t a2)
{
  sub_2589DE168();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589A5D6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_258B00B04();
  sub_258B00B04();
  sub_258B00B04();
  sub_258B00B04();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_258B021E4();
  sub_2589DE104(255, &qword_27F96D298, sub_2589DE168, MEMORY[0x277D83D88]);
  sub_258B024B4();
  swift_getWitnessTable();
  sub_2589DE538();
  type metadata accessor for ScrollableWithPinnedFooter();
  return swift_getWitnessTable();
}

uint64_t sub_2589A5F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2589E16B0(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2589A6028(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2589E16B0(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589A6130(uint64_t a1, uint64_t a2)
{
  sub_2589E0A80();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589A619C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_2589A61DC(uint64_t a1)
{
  sub_2589E2BC8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2589A6260(uint64_t a1, uint64_t a2)
{
  sub_2589E36E4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2589A62CC(uint64_t a1, uint64_t a2)
{
  sub_2589E36E4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2589A6384(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_2589EF00C(0, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[11];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_2589EF00C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_9;
  }

  sub_2589EF00C(0, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[13];

  return v16(v17, a2, v15);
}

uint64_t sub_2589A6580(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  sub_2589EF00C(0, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[11];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_2589EF00C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_7;
  }

  sub_2589EF00C(0, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[13];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_2589A6780@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x259C914A0]();
  *a1 = result;
  return result;
}

uint64_t sub_2589A67AC(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x259C914B0](v2);
}

uint64_t sub_2589A6804()
{
  v1 = type metadata accessor for StateOfMindEntryView_iOS();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = *(v0 + v2 + 8);

  v7 = *(v0 + v2 + 24);

  v8 = *(v0 + v2 + 40);

  v9 = *(v0 + v2 + 48);

  v10 = *(v0 + v2 + 64);

  v11 = *(v0 + v2 + 80);

  v12 = *(v0 + v2 + 96);

  v13 = v1[11];
  sub_2589EF00C(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_258B008A4();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  v16 = v1[12];
  sub_2589EF00C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_258B006A4();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
    v18 = *(v5 + v16);
  }

  v19 = (v5 + v1[13]);
  sub_2589EF00C(0, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_258B01504();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v19, 1, v20))
    {
      (*(v21 + 8))(v19, v20);
    }

    v22 = *(type metadata accessor for IntroPhaseSpecs() + 20);
    v23 = sub_258B00AA4();
    (*(*(v23 - 8) + 8))(&v19[v22], v23);
  }

  else
  {
    v24 = *v19;
  }

  return swift_deallocObject();
}

uint64_t sub_2589A6D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2589F5748(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_2589F5748(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for StateOfMindTimeline.DaySummary();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_2589A6EA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2589F5748(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_2589F5748(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for StateOfMindTimeline.DaySummary();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2589A704C()
{

  return swift_deallocObject();
}

uint64_t sub_2589A70A8(uint64_t a1, uint64_t a2)
{
  sub_2589F5990();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2589A7114(uint64_t a1, uint64_t a2)
{
  sub_2589F5990();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2589A71B8()
{
  v1 = sub_258B00084();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2589A727C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2589F95C4(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    sub_2589F95C4(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

void sub_2589A73F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2589F95C4(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_2589F95C4(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_2589A7564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2589FA1A4(0, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
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

    return (v10 + 1);
  }
}

void sub_2589A7654(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2589FA1A4(0, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_2589A7748()
{
  v1 = type metadata accessor for IntroPhase_iOS();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  sub_2589FA1A4(0, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_258B01504();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v2, 1, v5))
    {
      (*(v6 + 8))(v0 + v2, v5);
    }

    v7 = *(type metadata accessor for IntroPhaseSpecs() + 20);
    v8 = sub_258B00AA4();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  else
  {
    v9 = *v4;
  }

  v10 = *&v4[*(v1 + 20) + 8];

  v11 = *&v4[*(v1 + 28) + 8];

  return swift_deallocObject();
}

uint64_t sub_2589A7984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2589FC328(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_2589FC328(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_2589A7AF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2589FC328(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_2589FC328(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_2589A7C64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_258B00E54();
  *a1 = result;
  return result;
}

uint64_t sub_2589A7CBC(uint64_t a1, uint64_t a2)
{
  sub_2589FE24C(0, &qword_27F96C788, MEMORY[0x277CDF468]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2589A7D44(uint64_t a1, uint64_t a2)
{
  sub_2589FE24C(0, &qword_27F96C788, MEMORY[0x277CDF468]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2589A7DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2589FF830(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_2589FF830(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589A7F54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2589FF830(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_2589FF830(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589A8104(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  sub_258A023F4(255, &qword_27F96DC68, sub_258A023A0, &_s21UnlimitedHeightVStackVN, MEMORY[0x277CDF4F8]);
  sub_258B00B04();
  sub_258A023F4(255, &qword_27F96DC78, sub_2589D2E7C, MEMORY[0x277D85048], MEMORY[0x277CE06A0]);
  sub_258B00B04();
  sub_258A0245C(&qword_27F96DC80);
  sub_258B00974();
  sub_258B00B04();
  sub_258A023F4(255, &qword_27F96DC88, sub_2589E0E14, MEMORY[0x277CE14A8], MEMORY[0x277CDF4E0]);
  sub_258B00B04();
  sub_258B030C4();
  swift_getWitnessTable();
  sub_258B00CA4();
  sub_258B00B04();
  sub_258A0245C(&qword_27F96DC90);
  swift_getWitnessTable();
  sub_258A024D8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_258A02568();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589A8428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A04844(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_258A04844(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589A85AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A04844(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_258A04844(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589A87F4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_258A07268(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  sub_258A07268(0, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  sub_258A07268(0, &qword_27F96DEF8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  sub_258A07268(0, &qword_27F96DF00, sub_258A07454, MEMORY[0x277CDF468]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_2589A8A68(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  sub_258A07268(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  sub_258A07268(0, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  sub_258A07268(0, &qword_27F96DEF8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  sub_258A07268(0, &qword_27F96DF00, sub_258A07454, MEMORY[0x277CDF468]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = v5 + a4[8];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2589A8D24()
{
  v1 = type metadata accessor for AssessmentRiskInformationalView();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *(v3 + 1);

  v5 = *(v3 + 3);

  v6 = *(v3 + 4);

  v7 = *(v3 + 6);

  v8 = v1[5];
  sub_258A07268(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_258B006A4();
    (*(*(v9 - 8) + 8))(&v3[v8], v9);
  }

  else
  {
    v10 = *&v3[v8];
  }

  v11 = v1[6];
  sub_258A07268(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_258B008A4();
    (*(*(v12 - 8) + 8))(&v3[v11], v12);
  }

  else
  {
    v13 = *&v3[v11];
  }

  v14 = v1[7];
  sub_258A07268(0, &qword_27F96DE40, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_258B00AA4();
    (*(*(v15 - 8) + 8))(&v3[v14], v15);
  }

  else
  {
    v16 = *&v3[v14];
  }

  v17 = v1[8];
  sub_258A07268(0, &qword_27F96DE48, sub_258A07454, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_258B01504();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(&v3[v17], 1, v18))
    {
      (*(v19 + 8))(&v3[v17], v18);
    }
  }

  else
  {
    v20 = *&v3[v17];
  }

  return swift_deallocObject();
}

uint64_t sub_2589A9124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A09E48(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2589A9204(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A09E48(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589A92E4(uint64_t a1, uint64_t a2)
{
  sub_258A0A134(0, &qword_27F96E000, sub_258A09F78, MEMORY[0x277CDE470]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589A9378(uint64_t a1)
{
  sub_258A0A134(0, &qword_27F96E000, sub_258A09F78, MEMORY[0x277CDE470]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2589A940C()
{

  return swift_deallocObject();
}

uint64_t sub_2589A9494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A0B99C(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 52);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2589A9574(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A0B99C(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 52);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589A969C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A0E334(0, &qword_27F96CC80, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_258A0E334(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589A9820(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A0E334(0, &qword_27F96CC80, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_258A0E334(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589A99A4()
{
  v1 = sub_258B015B4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for ValenceSliderStyle();
  v6 = (v3 + v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v8 = v0 + v6;
  v9 = *(v0 + v6 + 8);

  v10 = *(v5 + 20);
  sub_258A0E334(0, &qword_27F96CFA8, MEMORY[0x277CDFAA0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_258B00AC4();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  else
  {
    v12 = *(v8 + v10);
  }

  v13 = *(v5 + 24);
  sub_258A0E334(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_258B006A4();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
  }

  else
  {
    v15 = *(v8 + v13);
  }

  return swift_deallocObject();
}

uint64_t sub_2589A9C08()
{
  v1 = type metadata accessor for ValenceSliderStyle();
  v2 = *(*(v1 - 8) + 80);
  v21 = *(*(v1 - 8) + 64);
  v22 = sub_258B008E4();
  v3 = *(v22 - 8);
  v4 = *(v3 + 80);
  v19 = *(v3 + 64);
  v5 = sub_258B015B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v20 = *(v6 + 64);
  v8 = v0 + ((v2 + 16) & ~v2);
  v9 = *(v8 + 8);

  v10 = *(v1 + 20);
  sub_258A0E334(0, &qword_27F96CFA8, MEMORY[0x277CDFAA0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_258B00AC4();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  else
  {
    v12 = *(v8 + v10);
  }

  v13 = *(v1 + 24);
  sub_258A0E334(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_258B006A4();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
  }

  else
  {
    v15 = *(v8 + v13);
  }

  v16 = (((v2 + 16) & ~v2) + v21 + v4) & ~v4;
  v17 = (v16 + v19 + v7) & ~v7;
  (*(v3 + 8))(v0 + v16, v22);
  (*(v6 + 8))(v0 + v17, v5);

  return swift_deallocObject();
}

uint64_t sub_2589A9F54()
{
  MEMORY[0x259C946A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2589A9F8C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_2589A9FCC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2589AA004(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_258B017D4();
  sub_258B00B04();
  sub_258A10704(&qword_280DF8950, MEMORY[0x277CDE470]);
  return swift_getWitnessTable();
}

uint64_t sub_2589AA0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A11A34(0, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2589AA180(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A11A34(0, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589AA264(uint64_t a1, uint64_t a2)
{
  sub_258A11534();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589AA2C8(uint64_t a1, uint64_t a2)
{
  sub_258A11778(0, &qword_27F96E408, sub_258A11534);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589AA354(uint64_t a1, uint64_t a2)
{
  sub_258A11778(0, &qword_27F96E408, sub_258A11534);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589AA424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A153EC(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = _s5EntryVMa();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2589AA560(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A153EC(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = _s5EntryVMa();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2589AA69C()
{
  sub_258A14ED4();
  sub_258A15BF0(&qword_27F96E598, sub_258A14ED4, sub_258A15C60);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589AAB00(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_258B00084();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_258A1DF54(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_2589AAC18(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_258B00084();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    sub_258A1DF54(0);
    if (*(*(v12 - 8) + 84) != a3)
    {
      *(a1 + a4[7] + 8) = a2;
      return;
    }

    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_2589AAD44(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_258B00B04();
  sub_258B00B04();
  sub_258B00B04();
  sub_258B00B04();
  sub_258B00B04();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2589AAE7C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_258A296F8(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_258A296F8(0, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  sub_258A296F8(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_2589AB078(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  sub_258A296F8(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_258A296F8(0, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  sub_258A296F8(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_2589AB2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_258A2A608(0, &qword_27F96EA28, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2589AB3A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = a2 + 1;
  }

  else
  {
    sub_258A2A608(0, &qword_27F96EA28, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589AB478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A07454(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_258B00AA4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2589AB568(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A07454(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_258B00AA4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2589AB664(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_258B029C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    sub_258A2C484(0, &qword_27F96D908, MEMORY[0x277D83D88]);
    v14 = v13;
    v15 = *(*(v13 - 8) + 48);
    v16 = a1 + a3[7];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_2589AB7AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_258B029C4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    sub_258A2C484(0, &qword_27F96D908, MEMORY[0x277D83D88]);
    v14 = v13;
    v15 = *(*(v13 - 8) + 56);
    v16 = a1 + a4[7];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

CGColorRef sub_2589AB8FC@<X0>(CGColorRef *a1@<X8>)
{
  result = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
  *a1 = result;
  return result;
}

uint64_t sub_2589AB934@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  result = sub_258A82FA8();
  *a2 = result;
  return result;
}

uint64_t sub_2589AB970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A2E7D8(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_258A2E7D8(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589ABAF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A2E7D8(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_258A2E7D8(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589ABC90()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2589ABCC8()
{
  MEMORY[0x259C946A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2589ABD00()
{
  v1 = sub_258AFFBC4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_2589ABDEC()
{
  v1 = sub_258AFFBC4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  v6 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_2589ABF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A32370(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_2589ABFEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A32370(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_2589AC0D4()
{
  v1 = _s20EntryMomentsDataViewVMa();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_258A32370(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_258B01504();
    v7 = *(v6 - 8);
    v8 = *(v7 + 48);
    if (!v8(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }

    v9 = type metadata accessor for StateOfMindTimeline.Styles(0);
    v10 = *(v9 + 20);
    v11 = sub_258B00AA4();
    v12 = *(*(v11 - 8) + 8);
    v13 = v5 + v10;
    v14 = v9;
    v12(v13, v11);
    v15 = *(v9 + 28);
    v16 = sub_258B006A4();
    v47 = *(*(v16 - 8) + 8);
    v48 = v16;
    v47(v5 + v15);
    v17 = v5 + v14[8];
    if (!v8(v17, 1, v6))
    {
      (*(v7 + 8))(v17, v6);
    }

    v18 = _s6StylesV8TimelineVMa(0);
    v12(&v17[*(v18 + 20)], v11);
    v19 = v5 + v14[9];
    if (!v8(v19, 1, v6))
    {
      (*(v7 + 8))(v19, v6);
    }

    v20 = _s6StylesV6NoDataVMa(0);
    v12(&v19[*(v20 + 20)], v11);
    v21 = v5 + v14[10];
    if (!v8(v21, 1, v6))
    {
      (*(v7 + 8))(v21, v6);
    }

    v22 = _s6StylesV11PlaceholderVMa(0);
    v12(&v21[*(v22 + 20)], v11);
    v23 = v5 + v14[11];
    if (!v8(v23, 1, v6))
    {
      (*(v7 + 8))(v23, v6);
    }

    v24 = _s6StylesV6SymbolVMa(0);
    v12(&v23[*(v24 + 20)], v11);
    v25 = v5 + v14[12];
    v49 = v14;
    if (!v8(v25, 1, v6))
    {
      (*(v7 + 8))(v25, v6);
    }

    v26 = v7;
    v27 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
    v12(&v25[*(v27 + 20)], v11);
    v28 = *(v27 + 28);
    v29 = v26;
    (v47)(&v25[v28], v48);
    v30 = v5 + v49[13];
    if (!v8(v30, 1, v6))
    {
      (*(v29 + 8))(v30, v6);
    }

    v31 = _s6StylesV5EmptyVMa(0);
    v12(&v30[*(v31 + 20)], v11);
    v32 = v5 + v49[14];
    v33 = v11;
    if (!v8(v32, 1, v6))
    {
      (*(v29 + 8))(v32, v6);
    }

    v34 = _s6StylesV5DailyVMa(0);
    v12(&v32[*(v34 + 20)], v11);
    v35 = v5 + v49[15];
    if (!v8(v35, 1, v6))
    {
      (*(v29 + 8))(v35, v6);
    }

    v36 = _s6StylesV9MomentaryVMa(0);
    v12(&v35[*(v36 + 20)], v11);
    v37 = v5 + v49[16];
    if (!v8(v37, 1, v6))
    {
      (*(v29 + 8))(v37, v6);
    }

    v38 = _s6StylesV6HeaderVMa(0);
    v12(&v37[*(v38 + 20)], v11);
    v39 = v5 + v49[17];
    if (!v8(v39, 1, v6))
    {
      (*(v29 + 8))(v39, v6);
    }

    v40 = _s6StylesV11ChartButtonVMa(0);
    v12(&v39[*(v40 + 20)], v11);
    v41 = v5 + v49[18];
    if (!v8(v41, 1, v6))
    {
      (*(v29 + 8))(v41, v6);
    }

    v42 = _s6StylesV15LogButtonFooterVMa(0);
    v12(&v41[*(v42 + 20)], v33);
  }

  else
  {
    v43 = *v5;
  }

  v44 = *(v5 + *(v1 + 20));

  v45 = *(v5 + *(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_2589AC7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A32648(0, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    sub_258A32648(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

void sub_2589AC968(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A32648(0, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_258A32648(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_2589ACB38()
{

  return swift_deallocObject();
}

uint64_t sub_2589ACB7C()
{
  sub_258A364B4();
  sub_258A36214();
  sub_258B013D4();
  sub_258A36588(&qword_27F96EDC8, sub_258A36214);
  swift_getOpaqueTypeConformance2();
  sub_2589BFF58();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589ACC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A37D9C(0, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2589ACD48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A37D9C(0, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589ACE70(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A3B278(0, &qword_27F96DEF8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 60);

    return v10(v11, a2, v9);
  }
}

void *sub_2589ACF50(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_258A3B278(0, &qword_27F96DEF8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 60);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589AD024()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (type metadata accessor for TagPicker() - 8);
  v4 = *(*v3 + 64);
  v5 = (v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80)));
  v6 = *v5;

  v7 = *(v5 + 1);

  v8 = *(v5 + 2);

  v9 = *(v5 + 3);

  v10 = *(v5 + 8);

  v11 = *(v5 + 10);

  v12 = v3[17];
  sub_258A3B278(0, &qword_27F96DE40, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_258B00AA4();
    (*(*(v13 - 8) + 8))(&v5[v12], v13);
  }

  else
  {
    v14 = *&v5[v12];
  }

  return swift_deallocObject();
}

uint64_t sub_2589AD190()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for TagPicker() - 8);
  v4 = *(*v3 + 64);
  v5 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v6 = *(v2 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v0 + v5;
  v10 = *(v0 + v5);

  v11 = *(v0 + v5 + 8);

  v12 = *(v0 + v5 + 16);

  v13 = *(v0 + v5 + 24);

  v14 = *(v0 + v5 + 64);

  v15 = *(v0 + v5 + 80);

  v16 = v3[17];
  sub_258A3B278(0, &qword_27F96DE40, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_258B00AA4();
    (*(*(v17 - 8) + 8))(v9 + v16, v17);
  }

  else
  {
    v18 = *(v9 + v16);
  }

  (*(v6 + 8))(v0 + ((v5 + v4 + v7) & ~v7), v2);

  return swift_deallocObject();
}

uint64_t sub_2589AD380(uint64_t a1)
{
  sub_258A3A750(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2589AD3EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_258A3A6A0();
  sub_258B02CD4();
  sub_258A3A8CC(255, &qword_27F96EF30, sub_258A3A750, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  sub_258B023D4();
  sub_258A3AB10(&qword_27F96EFA8, sub_258A3A6A0);
  sub_258B00974();
  sub_258A3AB10(&qword_27F96EFB0, sub_258A3A6A0);
  sub_258A3AE3C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2589AD578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A3C6EC(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
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

    return (v10 + 1);
  }
}

void sub_2589AD668(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A3C6EC(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_2589AD754()
{
  v1 = _s15LogButtonFooterVMa();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + ((v2 + 16) & ~v2));
  sub_258A3C6EC(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = v1;
    v5 = sub_258B01504();
    v6 = *(v5 - 8);
    v7 = *(v6 + 48);
    if (!v7(v4, 1, v5))
    {
      (*(v6 + 8))(v4, v5);
    }

    v8 = type metadata accessor for StateOfMindTimeline.Styles(0);
    v9 = *(v8 + 20);
    v10 = sub_258B00AA4();
    v11 = *(*(v10 - 8) + 8);
    v12 = v4 + v9;
    v13 = v8;
    v11(v12, v10);
    v14 = *(v8 + 28);
    v15 = sub_258B006A4();
    v47 = *(*(v15 - 8) + 8);
    v48 = v15;
    v47(v4 + v14);
    v16 = v4 + v13[8];
    if (!v7(v16, 1, v5))
    {
      (*(v6 + 8))(v16, v5);
    }

    v17 = _s6StylesV8TimelineVMa(0);
    v11(&v16[*(v17 + 20)], v10);
    v18 = v4 + v13[9];
    if (!v7(v18, 1, v5))
    {
      (*(v6 + 8))(v18, v5);
    }

    v19 = _s6StylesV6NoDataVMa(0);
    v11(&v18[*(v19 + 20)], v10);
    v20 = v4 + v13[10];
    if (!v7(v20, 1, v5))
    {
      (*(v6 + 8))(v20, v5);
    }

    v21 = _s6StylesV11PlaceholderVMa(0);
    v11(&v20[*(v21 + 20)], v10);
    v22 = v4 + v13[11];
    if (!v7(v22, 1, v5))
    {
      (*(v6 + 8))(v22, v5);
    }

    v23 = _s6StylesV6SymbolVMa(0);
    v11(&v22[*(v23 + 20)], v10);
    v24 = v4 + v13[12];
    v50 = v13;
    if (!v7(v24, 1, v5))
    {
      (*(v6 + 8))(v24, v5);
    }

    v25 = v6;
    v26 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
    v11(&v24[*(v26 + 20)], v10);
    v27 = *(v26 + 28);
    v28 = v25;
    (v47)(&v24[v27], v48);
    v29 = v4 + v50[13];
    if (!v7(v29, 1, v5))
    {
      (*(v28 + 8))(v29, v5);
    }

    v30 = _s6StylesV5EmptyVMa(0);
    v11(&v29[*(v30 + 20)], v10);
    v31 = v4 + v50[14];
    v32 = v10;
    if (!v7(v31, 1, v5))
    {
      (*(v28 + 8))(v31, v5);
    }

    v33 = _s6StylesV5DailyVMa(0);
    v11(&v31[*(v33 + 20)], v10);
    v34 = v4 + v50[15];
    if (!v7(v34, 1, v5))
    {
      (*(v28 + 8))(v34, v5);
    }

    v35 = _s6StylesV9MomentaryVMa(0);
    v11(&v34[*(v35 + 20)], v10);
    v36 = v4 + v50[16];
    if (!v7(v36, 1, v5))
    {
      (*(v28 + 8))(v36, v5);
    }

    v37 = _s6StylesV6HeaderVMa(0);
    v11(&v36[*(v37 + 20)], v10);
    v38 = v4 + v50[17];
    if (!v7(v38, 1, v5))
    {
      (*(v28 + 8))(v38, v5);
    }

    v39 = _s6StylesV11ChartButtonVMa(0);
    v11(&v38[*(v39 + 20)], v10);
    v40 = v4 + v50[18];
    if (!v7(v40, 1, v5))
    {
      (*(v28 + 8))(v40, v5);
    }

    v41 = _s6StylesV15LogButtonFooterVMa(0);
    v11(&v40[*(v41 + 20)], v32);
    v1 = v49;
  }

  else
  {
    v42 = *v4;
  }

  v43 = (v4 + *(v1 + 20));
  v44 = *v43;

  v45 = v43[1];

  return swift_deallocObject();
}

uint64_t sub_2589ADEE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258B00F54();
  *a1 = result;
  return result;
}

uint64_t sub_2589ADF14(uint64_t *a1)
{
  v1 = *a1;

  return sub_258B00F64();
}

uint64_t sub_2589ADF40(uint64_t a1, uint64_t a2)
{
  sub_258A3C7C8(0, &qword_27F96F040, sub_258A3C7A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589ADFCC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_258A3F24C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  sub_258A427D4(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  sub_258A427D4(0, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  sub_258A427D4(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  sub_258A427D4(0, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  sub_258A427D4(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + a3[9];

  return v20(v21, a2, v19);
}

uint64_t sub_2589AE2D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_258A3F24C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  sub_258A427D4(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  sub_258A427D4(0, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  sub_258A427D4(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  sub_258A427D4(0, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  sub_258A427D4(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v23 = a1 + a4[9];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_2589AE5FC()
{

  return swift_deallocObject();
}

uint64_t sub_2589AE634()
{
  sub_258A434AC();
  sub_258A432C0();
  sub_258B013D4();
  sub_258A43898(&qword_27F96F1F0, sub_258A432C0);
  swift_getOpaqueTypeConformance2();
  sub_2589BFF58();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589AE720@<X0>(_BYTE *a1@<X8>)
{
  sub_258A43A20();
  result = sub_258B00F94();
  *a1 = v3;
  return result;
}

uint64_t sub_2589AE770(char *a1)
{
  v2 = *a1;
  sub_258A43A20();
  return sub_258B00FA4();
}

uint64_t sub_2589AE7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A07454(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_258B00AA4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2589AE8AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A07454(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_258B00AA4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2589AE9A8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_258A07454(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_258B00AA4();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 254)
  {
    v15 = *(a1 + a3[6]);
    if (v15 >= 2)
    {
      return v15 - 1;
    }

    else
    {
      return 0;
    }
  }

  v16 = sub_258B006A4();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[7];
    goto LABEL_5;
  }

  v17 = _s6StylesV8TimelineVMa(0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[8];
    goto LABEL_5;
  }

  v18 = _s6StylesV6NoDataVMa(0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[9];
    goto LABEL_5;
  }

  v19 = _s6StylesV11PlaceholderVMa(0);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[10];
    goto LABEL_5;
  }

  v20 = _s6StylesV6SymbolVMa(0);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[11];
    goto LABEL_5;
  }

  v21 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[12];
    goto LABEL_5;
  }

  v22 = _s6StylesV5EmptyVMa(0);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[13];
    goto LABEL_5;
  }

  v23 = _s6StylesV5DailyVMa(0);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[14];
    goto LABEL_5;
  }

  v24 = _s6StylesV9MomentaryVMa(0);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[15];
    goto LABEL_5;
  }

  v25 = _s6StylesV6HeaderVMa(0);
  if (*(*(v25 - 8) + 84) == a2)
  {
    v8 = v25;
    v12 = *(v25 - 8);
    v13 = a3[16];
    goto LABEL_5;
  }

  v26 = _s6StylesV11ChartButtonVMa(0);
  if (*(*(v26 - 8) + 84) == a2)
  {
    v8 = v26;
    v12 = *(v26 - 8);
    v13 = a3[17];
    goto LABEL_5;
  }

  v27 = _s6StylesV15LogButtonFooterVMa(0);
  v28 = *(*(v27 - 8) + 48);
  v29 = a1 + a3[18];

  return v28(v29, a2, v27);
}

uint64_t sub_2589AEE2C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_258A07454(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_258B00AA4();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
    return result;
  }

  v16 = sub_258B006A4();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = _s6StylesV8TimelineVMa(0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v18 = _s6StylesV6NoDataVMa(0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[9];
    goto LABEL_5;
  }

  v19 = _s6StylesV11PlaceholderVMa(0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[10];
    goto LABEL_5;
  }

  v20 = _s6StylesV6SymbolVMa(0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[11];
    goto LABEL_5;
  }

  v21 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[12];
    goto LABEL_5;
  }

  v22 = _s6StylesV5EmptyVMa(0);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[13];
    goto LABEL_5;
  }

  v23 = _s6StylesV5DailyVMa(0);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[14];
    goto LABEL_5;
  }

  v24 = _s6StylesV9MomentaryVMa(0);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[15];
    goto LABEL_5;
  }

  v25 = _s6StylesV6HeaderVMa(0);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[16];
    goto LABEL_5;
  }

  v26 = _s6StylesV11ChartButtonVMa(0);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[17];
    goto LABEL_5;
  }

  v27 = _s6StylesV15LogButtonFooterVMa(0);
  v28 = *(*(v27 - 8) + 56);
  v29 = a1 + a4[18];

  return v28(v29, a2, a2, v27);
}

uint64_t sub_2589AF2B4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_258A07454(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_258B00AA4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 2)
    {
      return v14 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = sub_258B006A4();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2589AF420(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_258A07454(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_258B00AA4();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
  }

  else
  {
    v15 = sub_258B006A4();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_2589AF5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A4597C(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2589AF6C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A4597C(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589AF7F0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_258A48A8C(0, &qword_27F96F338, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  sub_258A48A8C(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  sub_258A48A8C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  sub_258A48A8C(0, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[12];

  return v17(v18, a2, v16);
}

uint64_t sub_2589AFA64(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  sub_258A48A8C(0, &qword_27F96F338, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  sub_258A48A8C(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  sub_258A48A8C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  sub_258A48A8C(0, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = v5 + a4[12];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2589AFD38(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  v4 = a1[4];
  sub_258A4D9EC();
  sub_258B00B04();
  sub_258A024D8();
  swift_getWitnessTable();
  sub_258B00664();
  sub_258A4DACC(255, &qword_27F96F4A8, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277CDE2C8]);
  sub_258B00B04();
  sub_258B00B04();
  swift_getOpaqueTypeMetadata2();
  sub_258B030C4();
  swift_getWitnessTable();
  sub_258A4DA48();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_258A4DACC(255, &qword_27F96F4B8, MEMORY[0x277CDF6A8], MEMORY[0x277CDF6A0], MEMORY[0x277CE0718]);
  sub_258B00B04();
  sub_258B030C4();
  sub_258A4DB20();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_258B010F4();
  sub_258B00B04();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_258B00B04();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_2589B00F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A4EA5C(0, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2589B01D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A4EA5C(0, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589B02B4@<X0>(uint64_t a1@<X8>)
{
  result = sub_258B00F34();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2589B02E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_258B00F44();
}

uint64_t sub_2589B0318@<X0>(void *a1@<X8>)
{
  result = sub_258B00E14();
  *a1 = v3;
  return result;
}

uint64_t sub_2589B03A4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_258A55CA0(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_258A55CA0(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    sub_258A55CA0(0, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[9];

    return v17(v18, a2, v16);
  }
}

void sub_2589B05AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_258A55CA0(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_258A55CA0(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    sub_258A55CA0(0, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 56);
    v18 = a1 + a4[9];

    v17(v18, a2, a2, v16);
  }
}

uint64_t sub_2589B0814(uint64_t a1, uint64_t a2)
{
  sub_258A53A10(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589B089C(uint64_t a1, uint64_t a2)
{
  sub_258A56544(0, &qword_27F96C7E0, MEMORY[0x277CDF468]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2589B0924(uint64_t a1, uint64_t a2)
{
  sub_258A56544(0, &qword_27F96C7E0, MEMORY[0x277CDF468]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2589B09B4(uint64_t a1, uint64_t a2)
{
  sub_258A580D8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589B0A18(uint64_t a1, uint64_t a2)
{
  sub_258A580B0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589B0ACC(uint64_t a1, uint64_t a2)
{
  sub_258A5B0F8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589B0B30(uint64_t a1)
{
  sub_258A5B0F8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2589B0B8C()
{
  sub_258A5AFC4();
  sub_258A5B8C4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589B0BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A5D1FC(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_258A5D1FC(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589B0D74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A5D1FC(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_258A5D1FC(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589B0F08()
{
  sub_258A5C7D4();
  sub_258A5CD0C(&qword_27F96F990, sub_258A5C7D4);
  sub_258A5CD54();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589B0FA4()
{
  v1 = sub_258B01814();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2589B102C()
{
  sub_258B017E4();
  sub_258A5CD0C(&qword_27F96F9A8, MEMORY[0x277CDE500]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589B10B8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_258B008E4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  sub_258A6578C(0, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  sub_258A6578C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  sub_258A6578C(0, &qword_27F96F338, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[10];

  return v17(v18, a2, v16);
}

uint64_t sub_2589B12FC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_258B008E4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  sub_258A6578C(0, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  sub_258A6578C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  sub_258A6578C(0, &qword_27F96F338, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = v5 + a4[10];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2589B1590(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A68444(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

void *sub_2589B1670(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_258A68444(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589B1748()
{
  sub_258A69594(255, &qword_27F96FCC8, sub_258A69600, MEMORY[0x277CE07A0], MEMORY[0x277CDFAB8]);
  sub_258A69694();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589B17F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A6ED18(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_258A6ED18(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589B1974(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A6ED18(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_258A6ED18(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 40);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589B1B04()
{
  v1 = type metadata accessor for DomainsSelectionPhase_iOS();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80)));
  v4 = *(v3 + 1);

  v5 = *(v3 + 2);

  v6 = *(v3 + 3);

  v7 = *(v3 + 6);

  v8 = &v3[v1[9]];
  sub_258A6ED18(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_258B01504();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v8, 1, v9))
    {
      (*(v10 + 8))(v8, v9);
    }

    v11 = *(type metadata accessor for AssociationSelectionPhaseSpecs() + 20);
    v12 = sub_258B00AA4();
    (*(*(v12 - 8) + 8))(&v8[v11], v12);
  }

  else
  {
    v13 = *v8;
  }

  v14 = v1[10];
  sub_258A6ED18(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_258B006A4();
    (*(*(v15 - 8) + 8))(&v3[v14], v15);
  }

  else
  {
    v16 = *&v3[v14];
  }

  v17 = *&v3[v1[11] + 8];

  v18 = *&v3[v1[12] + 8];

  return swift_deallocObject();
}

uint64_t sub_2589B1DCC(uint64_t a1, uint64_t a2)
{
  sub_258A6D1F0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589B1E30()
{
  v1 = sub_258B00B74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2589B1EB8(uint64_t a1, uint64_t a2)
{
  sub_258A6D5BC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589B1F34()
{
  sub_258A6D00C();
  sub_258A6DE18();
  sub_258A6DF44();
  sub_258A6D424(&qword_27F96FE90, sub_258A6D00C);
  sub_258A6EBE0();
  sub_258A6E118();
  sub_258A6E67C();
  sub_258A6E2C0();
  sub_258A6E434();
  sub_258A6E890();
  sub_258A6E540();
  sub_258A6D424(&qword_27F96FE48, sub_258A6E540);
  sub_258A6D424(&qword_27F96FE50, sub_258A6E67C);
  swift_getOpaqueTypeConformance2();
  sub_258A6D424(&qword_27F96FE88, sub_258A6E890);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589B21A0(uint64_t a1, uint64_t a2)
{
  sub_258A6F8FC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589B2204(uint64_t a1)
{
  sub_258A6F8FC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2589B22A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A71E14(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_258A71E14(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589B242C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A71E14(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_258A71E14(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589B25C0()
{
  sub_258A71658();
  sub_258A71BE8(&qword_27F96FF70, sub_258A71658);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589B26C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_258B029C4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2589B276C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_258B029C4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2589B2810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A07454(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_258B00AA4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2589B2900(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A07454(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_258B00AA4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2589B2A00()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_2589B2AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A7937C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_258A7937C(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_2589B2C0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A7937C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_258A7937C(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_2589B2D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A07454(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_258B00AA4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2589B2E68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A07454(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_258B00AA4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2589B2F64()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2589B2F9C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2589B2FE8()
{
  sub_258A810D8();
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 3);

  v7 = *(v0 + 4);

  v8 = sub_258B029C4();
  v9 = *(*(v8 - 8) + 8);
  v9(&v0[v3], v8);
  v9(&v0[v3 + *(v2 + 44)], v8);

  return swift_deallocObject();
}

uint64_t sub_2589B3108()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2589B3150()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2589B3188()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2589B31C8()
{
  v1 = sub_258B00084();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2589B3268(uint64_t a1, uint64_t a2, int *a3)
{
  sub_258A86CC4(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_258A86CC4(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_258A86CC4(0, &qword_27F970328, type metadata accessor for StateOfMindTimeline.DaySummary, MEMORY[0x277D83D88]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_2589B344C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_258A86CC4(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_258A86CC4(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_258A86CC4(0, &qword_27F970328, type metadata accessor for StateOfMindTimeline.DaySummary, MEMORY[0x277D83D88]);
      if (*(*(v16 - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return;
      }

      v10 = v16;
      v14 = *(v16 - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_2589B3668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A8953C(0, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2589B3748(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A8953C(0, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589B3844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A896FC(0, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_258A896FC(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589B39C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_258A896FC(0, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_258A896FC(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589B3C60(uint64_t a1, uint64_t a2)
{
  sub_2589F5990();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2589B3CCC(uint64_t a1, uint64_t a2)
{
  sub_2589F5990();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2589B3D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A8E1A4(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
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

    return (v10 + 1);
  }
}

void sub_2589B3E2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A8E1A4(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_2589B3F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A8ECB0(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for StateOfMindTimeline.DaySummary();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2589B4060(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A8ECB0(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for StateOfMindTimeline.DaySummary();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2589B419C()
{

  return swift_deallocObject();
}

uint64_t sub_2589B425C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = AssessmentsSettingsModel.isPeriodicPromptsSettingOn.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2589B4290@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = sub_258A90FF4();
  *a2 = result;
  return result;
}

uint64_t sub_2589B42C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = AssessmentsSettingsModel.isLoggingPatternEscalationsSettingOn.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2589B4320()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2589B4358()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2589B4450()
{
  sub_258A989E0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2589B44E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258A9CF38(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_258A9CF38(0, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589B4668(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258A9CF38(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_258A9CF38(0, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589B4868()
{
  v1 = (type metadata accessor for ReminderView(0) - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = *(v3 + 8);

  v5 = *(v3 + 24);

  v6 = (v3 + v1[9]);
  sub_258AA101C(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_258B01504();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v6, 1, v7))
    {
      (*(v8 + 8))(v6, v7);
    }

    v9 = *(type metadata accessor for NotificationsSetupPhaseSpecs() + 20);
    v10 = sub_258B00AA4();
    (*(*(v10 - 8) + 8))(&v6[v9], v10);
  }

  else
  {
    v11 = *v6;
  }

  return swift_deallocObject();
}

uint64_t sub_2589B4A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258AA101C(0, &qword_27F96DEF8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_258AA101C(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589B4BDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258AA101C(0, &qword_27F96DEF8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_258AA101C(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589B4E0C()
{
  MEMORY[0x259C946A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2589B4E44()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2589B4EE4@<X0>(void *a1@<X8>)
{
  result = sub_258B00D44();
  *a1 = v3;
  return result;
}

uint64_t sub_2589B4F4C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_2589B4FA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_258B00E74();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2589B4FE4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_2589B5090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 48);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_258AAE46C(0, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 44);

      return v13(v14, a2, v12);
    }

    else
    {
      sub_258AAE46C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v16 = v15;
      v17 = *(*(v15 - 8) + 48);
      v18 = a1 + *(a3 + 48);

      return v17(v18, a2, v16);
    }
  }
}

uint64_t sub_2589B5214(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 48) = a2 + 1;
  }

  else
  {
    sub_258AAE46C(0, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_258AAE46C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 48);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589B5394()
{
  v1 = type metadata accessor for ConfirmationView();
  v2 = *(*(v1 - 8) + 64);
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = (v3 + *(v1 + 44));
  sub_258AAE46C(0, &qword_27F96D7B8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_258B01504();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v4, 1, v5))
    {
      (*(v6 + 8))(v4, v5);
    }

    v7 = *(type metadata accessor for ValenceSelectionPhaseSpecs() + 20);
    v8 = sub_258B00AA4();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  else
  {
    v9 = *v4;
  }

  v10 = *(v1 + 48);
  sub_258AAE46C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_258B006A4();
    (*(*(v11 - 8) + 8))(v3 + v10, v11);
  }

  else
  {
    v12 = *(v3 + v10);
  }

  return swift_deallocObject();
}

uint64_t sub_2589B566C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_258B00084();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  sub_258AB03EC(0, &qword_27F96F338, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  sub_258AB03EC(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  sub_258AB03EC(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_2589B58B0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_258B00084();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  sub_258AB03EC(0, &qword_27F96F338, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  sub_258AB03EC(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  sub_258AB03EC(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = v5 + a4[8];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2589B5B4C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_2589B5B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258AB5FCC(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2589B5C70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258AB5FCC(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589B5D54()
{
  v1 = type metadata accessor for ExpandableInfoSectionHeader();
  v2 = *(*(v1 - 8) + 64);
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *(v3 + 8);

  v5 = *(v3 + 24);

  v6 = (v3 + *(v1 + 24));
  sub_258AB5FCC(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_258B01504();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v6, 1, v7))
    {
      (*(v8 + 8))(v6, v7);
    }

    v9 = *(type metadata accessor for AssociationSelectionPhaseSpecs() + 20);
    v10 = sub_258B00AA4();
    (*(*(v10 - 8) + 8))(&v6[v9], v10);
  }

  else
  {
    v11 = *v6;
  }

  v12 = *(v3 + *(v1 + 28) + 8);

  return swift_deallocObject();
}

uint64_t sub_2589B5FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258AB6F60();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_2589B6070(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258AB6F60();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }
}

uint64_t sub_2589B6128()
{

  return swift_deallocObject();
}

uint64_t sub_2589B617C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_258B008E4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_258AB979C(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589B62D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_258B008E4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_258AB979C(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589B643C()
{
  v1 = (type metadata accessor for NotificationsSetupPhaseContent() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = *(v3 + 8);

  v5 = *(v3 + 24);

  v6 = v1[8];
  v7 = sub_258B008E4();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);
  v8 = (v3 + v1[9]);
  sub_258AB979C(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_258B01504();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v8, 1, v9))
    {
      (*(v10 + 8))(v8, v9);
    }

    v11 = *(type metadata accessor for NotificationsSetupPhaseSpecs() + 20);
    v12 = sub_258B00AA4();
    (*(*(v12 - 8) + 8))(&v8[v11], v12);
  }

  else
  {
    v13 = *v8;
  }

  return swift_deallocObject();
}

uint64_t sub_2589B66AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258B000C4();
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

    return (v10 + 1);
  }
}

uint64_t sub_2589B676C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_258B000C4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2589B6828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258ABB19C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_258ABB19C(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_2589B6994(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258ABB19C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_258ABB19C(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_2589B6B04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258B00E84();
  *a1 = result;
  return result;
}

uint64_t sub_2589B6B30(uint64_t *a1)
{
  v1 = *a1;

  return sub_258B00E94();
}

uint64_t sub_2589B6BB0()
{

  return swift_deallocObject();
}

uint64_t sub_2589B6C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258AC1E98(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for StateOfMindTimeline.DaySummary();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2589B6D30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258AC1E98(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for StateOfMindTimeline.DaySummary();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2589B6ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258ACBBDC(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2589B6FB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258ACBBDC(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 40);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589B708C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258ACBBDC(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_2589B716C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_258ACBBDC(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589B7240(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258ACBBDC(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

void *sub_2589B7320(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_258ACBBDC(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 44);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2589B73F4()
{
  sub_258ACBB54(255);
  sub_258ACF188(&qword_27F971228, sub_258ACBB54);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589B7480()
{
  v1 = (type metadata accessor for CompleteNotificationsSetupButton(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + v2 + 8);

  v6 = *(v0 + v2 + 40);

  v7 = *(v0 + v2 + 48);

  v8 = *(v0 + v2 + 64);

  v9 = *(v0 + v2 + 72);

  v10 = *(v0 + v2 + 96);

  v11 = (v0 + v2 + v1[13]);
  sub_258ACBBDC(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_258B01504();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v11, 1, v12))
    {
      (*(v13 + 8))(v11, v12);
    }

    v14 = *(type metadata accessor for NotificationsSetupPhaseSpecs() + 20);
    v15 = sub_258B00AA4();
    (*(*(v15 - 8) + 8))(&v11[v14], v15);
  }

  else
  {
    v16 = *v11;
  }

  return swift_deallocObject();
}

uint64_t sub_2589B7698()
{
  v1 = (type metadata accessor for SkipButton(0) - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = *(v3 + 8);

  v5 = *(v3 + 32);

  v6 = (v3 + v1[9]);
  sub_258ACBBDC(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_258B01504();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v6, 1, v7))
    {
      (*(v8 + 8))(v6, v7);
    }

    v9 = *(type metadata accessor for NotificationsSetupPhaseSpecs() + 20);
    v10 = sub_258B00AA4();
    (*(*(v10 - 8) + 8))(&v6[v9], v10);
  }

  else
  {
    v11 = *v6;
  }

  return swift_deallocObject();
}

uint64_t sub_2589B7914()
{
  v1 = v0[5];

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  v2 = v0[11];

  v3 = v0[12];

  v4 = v0[16];

  return swift_deallocObject();
}

uint64_t sub_2589B7970(__int128 *a1)
{
  v4 = *a1;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_258B02574();
  swift_getWitnessTable();
  sub_258B021D4();
  swift_getWitnessTable();
  sub_258B021B4();
  sub_258B015E4();
  swift_getWitnessTable();
  sub_258AD1108(&qword_27F971398, MEMORY[0x277CDE340]);
  swift_getOpaqueTypeMetadata2();
  sub_258B016D4();
  sub_258AD1108(&qword_27F9713A0, MEMORY[0x277CDE400]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v1 = MEMORY[0x277CDDBB8];
  sub_258AD1150(255, &qword_27F96F028, MEMORY[0x277CDDBB8]);
  sub_258B00B04();
  v2 = MEMORY[0x277CDF450];
  sub_258AD1150(255, &qword_27F96F030, MEMORY[0x277CDF450]);
  sub_258B00B04();
  sub_258AD11A4(255, &qword_27F96D710, &qword_27F96D718, MEMORY[0x277CDF6A8], MEMORY[0x277CE0860]);
  sub_258B00B04();
  swift_getOpaqueTypeConformance2();
  sub_258AD1250(&qword_27F96F098, &qword_27F96F028, v1);
  swift_getWitnessTable();
  sub_258AD1250(&qword_27F96F0A0, &qword_27F96F030, v2);
  swift_getWitnessTable();
  sub_258AD12A0();
  return swift_getWitnessTable();
}

uint64_t sub_2589B7D7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = NSUserActivity.presentWithAnimation.getter();
  *a2 = result;
  return result;
}

uint64_t sub_2589B7DD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = NSUserActivity.route.getter(&v5);
  *a2 = v5;
  return result;
}

void sub_2589B7E0C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  NSUserActivity.route.setter(&v3);
}

uint64_t sub_2589B7E6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = NSUserActivity.version.getter();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

MentalHealthUI::Route_optional sub_2589B7ED4@<W0>(_BYTE *a1@<X8>)
{
  result.value = URLComponents.route.getter(&v3).value;
  *a1 = v3;
  return result;
}

uint64_t sub_2589B7F48@<X0>(_BYTE *a1@<X8>)
{
  result = URLComponents.presentWithAnimation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2589B7FC4()
{
  MEMORY[0x259C946A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2589B7FFC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2589B8034@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + qword_27F97AC38;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2589B8090(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + qword_27F97AC38;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_2589B810C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A07454(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_258B00AA4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2589B81FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A07454(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_258B00AA4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2589B82F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258AE186C(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_2589B83E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258AE186C(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_2589B851C(uint64_t a1, uint64_t a2)
{
  sub_258AEAE4C(0, &qword_27F9716B8, sub_258AE9EFC, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589B85B0(uint64_t a1)
{
  sub_258AEAE4C(0, &qword_27F9716B8, sub_258AE9EFC, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2589B8658(uint64_t a1, uint64_t a2)
{
  sub_258AE9EFC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589B86BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  return swift_deallocObject();
}

uint64_t sub_2589B8740()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_2589B8790()
{
  v1 = sub_258B00084();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = sub_258B01724();
  v8 = *(v7 - 8);
  v9 = (v6 + v5 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(v2 + 8);
  v11(v0 + v4, v1);
  v11(v0 + v6, v1);
  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_2589B891C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258AF1508(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_258AF1508(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2589B8AA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258AF1508(0, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_258AF1508(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2589B8C48()
{
  sub_258AF20AC();
  sub_258A1E3AC(255);
  sub_258AF17C0();
  sub_258AF21E8();
  sub_258AF1EA4(&qword_27F971900, sub_258AF17C0);
  type metadata accessor for ShowAllLabelsPicker();
  sub_258AF1EA4(&qword_27F9718F8, type metadata accessor for ShowAllLabelsPicker);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_258AF264C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589B8DA8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_258AF297C(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_258AF297C(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  sub_258AF297C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_2589B8FA4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  sub_258AF297C(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_258AF297C(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  sub_258AF297C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_2589B91B4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_258AF297C(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  sub_258AF297C(0, &qword_27F96F338, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  sub_258AF297C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  sub_258AF297C(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[9];

  return v17(v18, a2, v16);
}

uint64_t sub_2589B9428(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  sub_258AF297C(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  sub_258AF297C(0, &qword_27F96F338, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  sub_258AF297C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  sub_258AF297C(0, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = v5 + a4[9];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2589B96B0(uint64_t a1, uint64_t a2)
{
  sub_258AF7C7C(0, &qword_27F9719F0, sub_258AF7D14);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589B973C()
{

  return swift_deallocObject();
}

uint64_t sub_2589B9774()
{
  sub_258AF91C8();
  sub_2589BFF58();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2589B97DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258AFA6D8(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_2589B98C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258AFA6D8(0, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_2589B99B0()
{
  v1 = _s14ShowMoreButtonVMa();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_258AFA6D8(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_258B01504();
    v7 = *(v6 - 8);
    v8 = *(v7 + 48);
    if (!v8(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }

    v9 = type metadata accessor for StateOfMindTimeline.Styles(0);
    v10 = *(v9 + 20);
    v11 = sub_258B00AA4();
    v12 = *(*(v11 - 8) + 8);
    v13 = v5 + v10;
    v14 = v9;
    v12(v13, v11);
    v15 = *(v9 + 28);
    v16 = sub_258B006A4();
    v47 = *(*(v16 - 8) + 8);
    v48 = v16;
    v47(v5 + v15);
    v17 = v5 + v14[8];
    if (!v8(v17, 1, v6))
    {
      (*(v7 + 8))(v17, v6);
    }

    v18 = _s6StylesV8TimelineVMa(0);
    v12(&v17[*(v18 + 20)], v11);
    v19 = v5 + v14[9];
    if (!v8(v19, 1, v6))
    {
      (*(v7 + 8))(v19, v6);
    }

    v20 = _s6StylesV6NoDataVMa(0);
    v12(&v19[*(v20 + 20)], v11);
    v21 = v5 + v14[10];
    if (!v8(v21, 1, v6))
    {
      (*(v7 + 8))(v21, v6);
    }

    v22 = _s6StylesV11PlaceholderVMa(0);
    v12(&v21[*(v22 + 20)], v11);
    v23 = v5 + v14[11];
    if (!v8(v23, 1, v6))
    {
      (*(v7 + 8))(v23, v6);
    }

    v24 = _s6StylesV6SymbolVMa(0);
    v12(&v23[*(v24 + 20)], v11);
    v25 = v5 + v14[12];
    v49 = v14;
    if (!v8(v25, 1, v6))
    {
      (*(v7 + 8))(v25, v6);
    }

    v26 = v7;
    v27 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
    v12(&v25[*(v27 + 20)], v11);
    v28 = *(v27 + 28);
    v29 = v26;
    (v47)(&v25[v28], v48);
    v30 = v5 + v49[13];
    if (!v8(v30, 1, v6))
    {
      (*(v29 + 8))(v30, v6);
    }

    v31 = _s6StylesV5EmptyVMa(0);
    v12(&v30[*(v31 + 20)], v11);
    v32 = v5 + v49[14];
    v33 = v11;
    if (!v8(v32, 1, v6))
    {
      (*(v29 + 8))(v32, v6);
    }

    v34 = _s6StylesV5DailyVMa(0);
    v12(&v32[*(v34 + 20)], v11);
    v35 = v5 + v49[15];
    if (!v8(v35, 1, v6))
    {
      (*(v29 + 8))(v35, v6);
    }

    v36 = _s6StylesV9MomentaryVMa(0);
    v12(&v35[*(v36 + 20)], v11);
    v37 = v5 + v49[16];
    if (!v8(v37, 1, v6))
    {
      (*(v29 + 8))(v37, v6);
    }

    v38 = _s6StylesV6HeaderVMa(0);
    v12(&v37[*(v38 + 20)], v11);
    v39 = v5 + v49[17];
    if (!v8(v39, 1, v6))
    {
      (*(v29 + 8))(v39, v6);
    }

    v40 = _s6StylesV11ChartButtonVMa(0);
    v12(&v39[*(v40 + 20)], v11);
    v41 = v5 + v49[18];
    if (!v8(v41, 1, v6))
    {
      (*(v29 + 8))(v41, v6);
    }

    v42 = _s6StylesV15LogButtonFooterVMa(0);
    v12(&v41[*(v42 + 20)], v33);
  }

  else
  {
    v43 = *v5;
  }

  v44 = *(v5 + *(v1 + 20) + 8);

  v45 = *(v5 + *(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_2589BA088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258AFD58C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_2589BA178(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258AFD58C(0, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }
}

id HKMHUIMentalHealthUIFrameworkBundle()
{
  v0 = HKMHUIMentalHealthUIFrameworkBundle___ClassBundle;
  if (!HKMHUIMentalHealthUIFrameworkBundle___ClassBundle)
  {
    v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = HKMHUIMentalHealthUIFrameworkBundle___ClassBundle;
    HKMHUIMentalHealthUIFrameworkBundle___ClassBundle = v1;

    v0 = HKMHUIMentalHealthUIFrameworkBundle___ClassBundle;
  }

  return v0;
}

double FkH_regionOf(uint64_t a1, float32x4_t a2, double a3, float a4)
{
  v4 = vaddq_f32(a2, COERCE_UNSIGNED_INT(-a4));
  if (a1)
  {
    v4.i64[0] = vaddq_f32(v4, xmmword_258B05750).u64[0];
  }

  return *v4.i64;
}

double FkV_regionOf(uint64_t a1, float32x4_t a2, double a3, float a4)
{
  LODWORD(v4) = 0;
  *(&v4 + 1) = -a4;
  v5 = vaddq_f32(a2, v4);
  if (a1)
  {
    v5.i64[0] = vaddq_f32(v5, xmmword_258B05750).u64[0];
  }

  return *v5.i64;
}

double DkH_regionOf(uint64_t a1, float32x4_t a2, double a3, float a4, float a5)
{
  v5 = vaddq_f32(COERCE_UNSIGNED_INT(-(a4 - (a5 * 0.5))), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(LODWORD(a5), a2.f32[0]), xmmword_258B05770, *a2.f32, 1), xmmword_258B05780, a2, 2));
  if (a1)
  {
    v5.i64[0] = vaddq_f32(v5, xmmword_258B05750).u64[0];
  }

  return *v5.i64;
}

double DkV_regionOf(uint64_t a1, float32x4_t a2, double a3, float a4, float a5)
{
  LODWORD(v5) = 0;
  LODWORD(v6) = 0;
  *(&v6 + 1) = a5;
  *(&v5 + 1) = -(a4 - (a5 * 0.5));
  v7 = vaddq_f32(v5, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0), a2.f32[0]), v6, *a2.f32, 1), xmmword_258B05780, a2, 2));
  if (a1)
  {
    v7.i64[0] = vaddq_f32(v7, xmmword_258B05750).u64[0];
  }

  return *v7.i64;
}

double Dp_regionOf(uint64_t a1, float32x4_t a2, double a3, float a4, float a5)
{
  LODWORD(v5) = 0;
  *(&v5 + 1) = a5;
  *&v6 = -a4;
  *(&v6 + 1) = -a4;
  v7 = vaddq_f32(v6, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(LODWORD(a5), a2.f32[0]), v5, *a2.f32, 1), xmmword_258B05780, a2, 2));
  if (a1)
  {
    v7.i64[0] = vaddq_f32(v7, xmmword_258B05750).u64[0];
  }

  return *v7.i64;
}

double UkH_regionOf(uint64_t a1, float32x4_t a2, double a3, double a4, float a5)
{
  v5 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0 / a5), a2.f32[0]), xmmword_258B05770, *a2.f32, 1), xmmword_258B05780, a2, 2), xmmword_258B05790);
  if (a1)
  {
    v5.i64[0] = vaddq_f32(v5, xmmword_258B05750).u64[0];
  }

  return *v5.i64;
}

double UkV_regionOf(uint64_t a1, float32x4_t a2, double a3, double a4, float a5)
{
  LODWORD(v5) = 0;
  *(&v5 + 1) = 1.0 / a5;
  v6 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0), a2.f32[0]), v5, *a2.f32, 1), xmmword_258B05780, a2, 2), xmmword_258B057B0);
  __asm { FMOV            V1.2D, #-2.0 }

  if (a1)
  {
    v6.i64[0] = vaddq_f32(v6, xmmword_258B05750).u64[0];
  }

  return *v6.i64;
}

double Up_regionOf(uint64_t a1, float32x4_t a2, double a3, float a4, float a5)
{
  LODWORD(v5) = 0;
  *(&v5 + 1) = 1.0 / a5;
  v6 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0 / a5), a2.f32[0]), v5, *a2.f32, 1), xmmword_258B05780, a2, 2);
  *&v7 = -a4;
  *(&v7 + 1) = -a4;
  v8 = vaddq_f32(v7, v6);
  if (a1)
  {
    v8.i64[0] = vaddq_f32(v8, xmmword_258B05750).u64[0];
  }

  return *v8.i64;
}

uint64_t initFilterInfo(uint64_t result, float a2)
{
  v2 = result;
  *(result + 20) = 0u;
  v3 = result + 20;
  *(result + 36) = 0u;
  if (a2 >= 1.0)
  {
    GaussianBlurPlanIndex = getGaussianBlurPlanIndex(a2);
    GaussianBlurPlan = getGaussianBlurPlan(GaussianBlurPlanIndex);
    v5 = GaussianBlurPlan;
    v4 = 0;
    v8 = 0;
    if (GaussianBlurPlan[1] <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = GaussianBlurPlan[1];
    }

    v10 = GaussianBlurPlan + 2;
    do
    {
      v11 = v4;
      v12 = v10[v8];
      result = getGaussianBlurKernelSize(v12);
      v4 = v11 + 1;
      *(v3 + 4 * v11) = v12;
      v8 += result;
    }

    while (v8 < v9);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *v2 = v5;
  *(v2 + 8) = v4;
  *(v2 + 16) = 1065353216;
  return result;
}

float OUTLINED_FUNCTION_0(float32x4_t a1)
{
  v2.i64[0] = 0x4F0000004F000000;
  v2.i64[1] = 0x4F0000004F000000;
  v3 = vcgtq_f32(a1, v2);
  LODWORD(result) = vadd_s32(vand_s8(*v3.i8, v1), *&vcvtq_s32_f32(vsubq_f32(a1, vbslq_s8(v3, v2, 0)))).u32[0];
  return result;
}

id GetSampler(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = objc_alloc_init(MEMORY[0x277CD6FD0]);
  if (result)
  {
    v9 = result;
    v10 = 4 * (a2 == 0);
    v11 = a3 == 1;
    v12 = a4 == 1;
    [result setSAddressMode:v10];
    [v9 setTAddressMode:v10];
    [v9 setRAddressMode:v10];
    [v9 setMinFilter:v11];
    [v9 setMagFilter:v11];
    [v9 setNormalizedCoordinates:v12];
    [v9 setMipFilter:v12];
    v13 = [a1 newSamplerStateWithDescriptor:v9];

    return v13;
  }

  return result;
}

uint64_t WMPSConvolutionGetIntermediateTexture(void *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = objc_opt_new();
  [v8 setPixelFormat:*a2 & 0x3FFLL];
  [v8 setWidth:*a3];
  [v8 setHeight:a3[1]];
  [v8 setArrayLength:a3[2]];
  if (a3[2] == 1)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  [v8 setTextureType:v9];
  [v8 setStorageMode:2];
  [v8 setCpuCacheMode:0];
  [v8 setUsage:3];
  [v8 setProtectionOptions:a4];
  v10 = [a1 newTextureWithDescriptor:v8];

  return v10;
}

uint64_t NewComputePipelineState(void *a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = 0;
  v4 = [a1 newFunctionWithName:?];
  v5 = [a1 device];
  v6 = objc_alloc_init(MEMORY[0x277CD6D30]);
  [v6 setComputeFunction:v4];
  if (a2)
  {
    v11[0] = a2;
    [v6 setBinaryArchives:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v11, 1)}];
  }

  [v6 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:1];
  v7 = [v5 newComputePipelineStateWithDescriptor:v6 error:&v10];

  if (v10)
  {
    result = 0;
  }

  else
  {
    result = v7;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getGaussianBlurKernelSize(int a1)
{
  if (a1 > 25)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return getGaussianBlurKernelSize::s[a1];
  }
}

uint64_t getGaussianBlurKernelBorderScaleData(unsigned int a1)
{
  if (a1 > 0x19)
  {
    return 0;
  }

  else
  {
    return getGaussianBlurKernelBorderScaleData::data[a1];
  }
}

uint64_t getGaussianBlurPlanIndex(double a1)
{
  v1 = 0;
  v2 = 256;
  do
  {
    if (v2 + v1 <= 820 && kGaussianBlurPlans[kGaussianBlurPlanIndex[v2 + v1]] <= a1)
    {
      v1 += v2;
    }

    else
    {
      v2 = v2 >> 1;
    }
  }

  while (v2 > 0);
  if (v1 >= 820)
  {
    v3 = v1;
  }

  else
  {
    v3 = v1;
    if (vabdd_f64(kGaussianBlurPlans[kGaussianBlurPlanIndex[v1 + 1]], a1) < vabdd_f64(kGaussianBlurPlans[kGaussianBlurPlanIndex[v1]], a1))
    {
      v3 = v1 + 1;
    }
  }

  return kGaussianBlurPlanIndex[v3];
}

uint64_t BundleNameProviding.bundleName.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  v12[0] = 46;
  v12[1] = 0xE100000000000000;
  v11[2] = v12;
  v4 = sub_2589BBCF8(1, 1, sub_2589BC110, v11, v2, v3, v12);
  if (v4[2])
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = v4[6];
    v8 = v4[7];
    sub_258B003E4();

    v9 = MEMORY[0x259C93160](v5, v6, v7, v8);

    return v9;
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_2589BB7C0()
{
  v1 = *v0;
  sub_258B03514();
  MEMORY[0x259C93B20](v1);
  return sub_258B03554();
}

uint64_t sub_2589BB808()
{
  v1 = *v0;
  sub_258B03514();
  MEMORY[0x259C93B20](v1);
  return sub_258B03554();
}

uint64_t sub_2589BB84C(uint64_t a1, id *a2)
{
  result = sub_258B02AF4();
  *a2 = 0;
  return result;
}

uint64_t sub_2589BB8C4(uint64_t a1, id *a2)
{
  v3 = sub_258B02B04();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2589BB944@<X0>(uint64_t *a1@<X8>)
{
  sub_258B02B14();
  v2 = sub_258B02AD4();

  *a1 = v2;
  return result;
}

_DWORD *sub_2589BB988@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_2589BB9AC(uint64_t a1)
{
  v2 = sub_2589BC3F8(&qword_27F9711B0, type metadata accessor for Option);
  v3 = sub_2589BC3F8(&unk_27F96C680, type metadata accessor for Option);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2589BBA68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_258B02AD4();

  *a2 = v5;
  return result;
}

uint64_t sub_2589BBAB0(uint64_t a1)
{
  v2 = sub_2589BC3F8(&qword_27F96C668, type metadata accessor for CubeLayout);
  v3 = sub_2589BC3F8(&unk_27F96C670, type metadata accessor for CubeLayout);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2589BBB6C()
{
  v1 = *v0;
  v2 = sub_258B02B14();
  v3 = MEMORY[0x259C931D0](v2);

  return v3;
}

uint64_t sub_2589BBBA8()
{
  v1 = *v0;
  sub_258B02B14();
  sub_258B02B74();
}

uint64_t sub_2589BBBFC()
{
  v1 = *v0;
  sub_258B02B14();
  sub_258B03514();
  sub_258B02B74();
  v2 = sub_258B03554();

  return v2;
}

uint64_t sub_2589BBC70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_258B02B14();
  v6 = v5;
  if (v4 == sub_258B02B14() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_258B03454();
  }

  return v9 & 1;
}

unint64_t sub_2589BBCF8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_258B02C04();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_258A74704(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_258A74704((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_258B02BF4();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_258B02B94();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_258B02B94();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_258B02C04();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_258A74704(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_258B02C04();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_258A74704(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_258A74704((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_258B02B94();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2589BC0B8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_258B03454() & 1;
  }
}

uint64_t sub_2589BC110(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_258B03454() & 1;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2589BC18C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy48_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2589BC1E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2589BC200(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2589BC260(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2589BC280(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2589BC3F8(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void sub_2589BC4B0(uint64_t a1, unint64_t *a2)
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

double sub_2589BC728@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() systemGray3Color];
  v5 = sub_258B01F94();
  if (a1 >> 62)
  {
    v6 = sub_258B032B4();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  sub_258B024F4();
  sub_258B00854();
  *a2 = v5;
  *(a2 + 8) = 256;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 40) = v10;
  result = *&v11;
  *(a2 + 56) = v11;
  return result;
}

unint64_t sub_2589BC810()
{
  result = qword_27F96C750;
  if (!qword_27F96C750)
  {
    sub_2589BC8DC(255, &qword_27F96C758, sub_2589BC8B4);
    sub_2589BCA10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C750);
  }

  return result;
}

void sub_2589BC8DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2589BC940()
{
  if (!qword_27F96C768)
  {
    sub_2589BC9BC();
    v0 = sub_258B00684();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C768);
    }
  }
}

unint64_t sub_2589BC9BC()
{
  result = qword_27F96C770;
  if (!qword_27F96C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C770);
  }

  return result;
}

unint64_t sub_2589BCA10()
{
  result = qword_27F96C778;
  if (!qword_27F96C778)
  {
    sub_2589BC8B4(255);
    sub_2589BCA90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C778);
  }

  return result;
}

unint64_t sub_2589BCA90()
{
  result = qword_27F96C780;
  if (!qword_27F96C780)
  {
    sub_2589BC940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C780);
  }

  return result;
}

uint64_t _s18EntrySeparatorViewVMa()
{
  result = qword_27F96C790;
  if (!qword_27F96C790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589BCB5C()
{
  sub_2589BD038(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2589BCC14@<X0>(uint64_t a1@<X8>)
{
  sub_2589BD168();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AC1060(v13);
  sub_2589BD22C(v13, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00854();
  v32 = v33;
  v31 = v35;
  v30 = v37;
  v29 = v38;
  v50 = 1;
  v49 = v34;
  v48 = v36;
  sub_258B02394();
  sub_258AC1060(v13);
  sub_2589BD22C(v13, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00854();
  v14 = &v9[*(v3 + 44)];
  v15 = v40;
  *v14 = v39;
  *(v14 + 1) = v15;
  *(v14 + 2) = v41;
  sub_258AC1060(v13);
  sub_2589BD22C(v13, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00854();
  v28 = v42;
  v27 = v44;
  v16 = v47;
  v26 = v46;
  v53 = 1;
  v52 = v43;
  v51 = v45;
  v17 = v50;
  v18 = v49;
  v19 = v48;
  sub_2589BD1C8(v9, v7);
  v20 = v53;
  LOBYTE(v3) = v52;
  LOBYTE(v13) = v51;
  *a1 = 0;
  *(a1 + 8) = v17;
  *(a1 + 16) = v32;
  *(a1 + 24) = v18;
  *(a1 + 32) = v31;
  *(a1 + 40) = v19;
  v21 = v29;
  *(a1 + 48) = v30;
  *(a1 + 56) = v21;
  sub_2589BD09C();
  v23 = v22;
  sub_2589BD1C8(v7, a1 + *(v22 + 48));
  v24 = a1 + *(v23 + 64);
  *v24 = 0;
  *(v24 + 8) = v20;
  *(v24 + 16) = v28;
  *(v24 + 24) = v3;
  *(v24 + 32) = v27;
  *(v24 + 40) = v13;
  *(v24 + 48) = v26;
  *(v24 + 56) = v16;
  sub_2589BD22C(v9, sub_2589BD168);
  return sub_2589BD22C(v7, sub_2589BD168);
}

uint64_t sub_2589BCF5C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_258B01194();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_2589BCFA0();
  return sub_2589BCC14(a1 + *(v2 + 44));
}

void sub_2589BCFA0()
{
  if (!qword_27F96C7A0)
  {
    sub_2589BD038(255, &qword_27F96C7A8, sub_2589BD09C, MEMORY[0x277CE14B8]);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C7A0);
    }
  }
}

void sub_2589BD038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2589BD09C()
{
  if (!qword_27F96C7B0)
  {
    sub_2589BD110();
    sub_2589BD168();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96C7B0);
    }
  }
}

void sub_2589BD110()
{
  if (!qword_27F96C7B8)
  {
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C7B8);
    }
  }
}

void sub_2589BD168()
{
  if (!qword_27F96C7C0)
  {
    sub_258B023A4();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C7C0);
    }
  }
}

uint64_t sub_2589BD1C8(uint64_t a1, uint64_t a2)
{
  sub_2589BD168();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589BD22C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2589BD28C()
{
  result = qword_27F96C7C8;
  if (!qword_27F96C7C8)
  {
    sub_2589BD2E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C7C8);
  }

  return result;
}

void sub_2589BD2E4()
{
  if (!qword_27F96C7D0)
  {
    sub_2589BD038(255, &qword_27F96C7A8, sub_2589BD09C, MEMORY[0x277CE14B8]);
    sub_2589BD378();
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C7D0);
    }
  }
}

unint64_t sub_2589BD378()
{
  result = qword_27F96C7D8;
  if (!qword_27F96C7D8)
  {
    sub_2589BD038(255, &qword_27F96C7A8, sub_2589BD09C, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C7D8);
  }

  return result;
}

void sub_2589BD414(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for IntroPhaseBulletView()
{
  result = qword_27F96C7F0;
  if (!qword_27F96C7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589BD4D8()
{
  sub_2589BD414(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2589BD414(319, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2589BD5F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C0024(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for IntroPhaseBulletView();
  sub_2589C0394(v1 + *(v12 + 28), v11, sub_2589C0024);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_258B006A4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_258B02E94();
    v16 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2589BD7F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C0360(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for IntroPhaseBulletView();
  sub_2589C0394(v1 + *(v12 + 32), v11, sub_2589C0360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2589BFFBC(v11, a1, type metadata accessor for IntroPhaseSpecs);
  }

  v14 = *v11;
  sub_258B02E94();
  v15 = sub_258B01824();
  sub_258B00354();

  sub_258B00F74();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2589BD9D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_258B01634();
  v67 = *(v3 - 8);
  v4 = *(v67 + 64);
  MEMORY[0x28223BE20](v3);
  v66 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589BF96C(0);
  v64 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589BF8B8();
  v60 = v10;
  v69 = *(v10 - 8);
  v11 = *(v69 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v68 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v65 = &v59 - v14;
  sub_2589BF5F0(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v59 - v20;
  sub_2589BF9A8(0, &qword_27F96C820, sub_2589BF554, &qword_27F96C878, sub_2589BF554);
  v61 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v59 - v25;
  v27 = type metadata accessor for IntroPhaseSpecs();
  v28 = v27 - 8;
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589BF4C4();
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v63 = &v59 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v59 - v36;
  v70 = a1;
  sub_2589BD7F4(v31);
  v38 = &v31[*(v28 + 28)];
  LOBYTE(v38) = sub_258B00A84();
  sub_2589BFE5C(v31, type metadata accessor for IntroPhaseSpecs);
  v39 = 1;
  if ((v38 & 1) == 0)
  {
    *v26 = sub_258B01194();
    *(v26 + 1) = 0;
    v26[16] = 1;
    sub_2589BFDF0(0, &qword_27F96C8F0, sub_2589BF554);
    v41 = *(v40 + 44);
    v59 = v3;
    v42 = &v26[v41];
    sub_2589BE080(v21);
    sub_2589C0394(v21, v19, sub_2589BF5F0);
    sub_2589C0394(v19, v42, sub_2589BF5F0);
    sub_2589BF588();
    v44 = v42 + *(v43 + 48);
    v3 = v59;
    *v44 = 0;
    *(v44 + 8) = 1;
    sub_2589BFE5C(v21, sub_2589BF5F0);
    sub_2589BFE5C(v19, sub_2589BF5F0);
    sub_2589BFEBC(v26, v37);
    v39 = 0;
  }

  (*(v23 + 56))(v37, v39, 1, v61);
  v45 = sub_258B011A4();
  v46 = v70;
  sub_2589BD7F4(v31);
  sub_2589BFE5C(v31, type metadata accessor for IntroPhaseSpecs);
  *v9 = v45;
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_2589BFDF0(0, &qword_27F96C8F8, sub_2589BFA3C);
  sub_2589BE4A8(v46, &v9[*(v47 + 44)]);
  v48 = v66;
  sub_258B01614();
  sub_2589BFC80(&qword_27F96C8D0, sub_2589BF96C);
  v49 = v65;
  sub_258B01D84();
  (*(v67 + 8))(v48, v3);
  sub_2589BFE5C(v9, sub_2589BF96C);
  v50 = v63;
  sub_2589C0394(v37, v63, sub_2589BF4C4);
  v52 = v68;
  v51 = v69;
  v53 = *(v69 + 16);
  v54 = v60;
  v53(v68, v49, v60);
  v55 = v62;
  sub_2589C0394(v50, v62, sub_2589BF4C4);
  sub_2589BF454();
  v53((v55 + *(v56 + 48)), v52, v54);
  v57 = *(v51 + 8);
  v57(v49, v54);
  sub_2589BFE5C(v37, sub_2589BF4C4);
  v57(v52, v54);
  return sub_2589BFE5C(v50, sub_2589BF4C4);
}

uint64_t sub_2589BE080@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = sub_258B019F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v9 = type metadata accessor for IntroPhaseSpecs();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v32 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = sub_258B02094();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v40[0]) = *(v1 + 32);
  Symbol.image.getter();
  (*(v17 + 104))(v20, *MEMORY[0x277CE0FE0], v16);
  v30 = sub_258B020C4();

  (*(v17 + 8))(v20, v16);
  v21 = sub_258B01FC4();
  sub_2589BD7F4(v15);
  sub_258B01944();
  v22 = &v15[*(v10 + 28)];
  v23 = sub_258B00A84();
  v24 = MEMORY[0x277CE0A10];
  if ((v23 & 1) == 0)
  {
    v24 = MEMORY[0x277CE0A18];
  }

  v25 = v31;
  (*(v3 + 104))(v31, *v24, v2);
  (*(v3 + 32))(v8, v25, v2);
  v26 = sub_258B01A14();

  (*(v3 + 8))(v8, v2);
  sub_2589BFE5C(v15, type metadata accessor for IntroPhaseSpecs);
  KeyPath = swift_getKeyPath();
  v28 = v32;
  sub_2589BD7F4(v32);
  sub_2589BFE5C(v28, type metadata accessor for IntroPhaseSpecs);
  sub_258B024F4();
  sub_258B00854();
  v41 = 1;
  v34 = v30;
  LOWORD(v35) = 1;
  *(&v35 + 1) = v21;
  *&v36 = KeyPath;
  *(&v36 + 1) = v26;
  sub_2589BF624();
  sub_2589C0058();
  sub_258B01D64();
  v40[2] = v36;
  v40[3] = v37;
  v40[4] = v38;
  v40[5] = v39;
  v40[0] = v34;
  v40[1] = v35;
  return sub_2589BFE5C(v40, sub_2589BF624);
}

uint64_t sub_2589BE4A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v194 = a2;
  v203 = sub_258B006A4();
  v206 = *(v203 - 8);
  v3 = *(v206 + 64);
  v4 = MEMORY[0x28223BE20](v203);
  v201 = &v159 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v200 = &v159 - v6;
  v202 = sub_258B02554();
  v205 = *(v202 - 8);
  v7 = *(v205 + 64);
  v8 = MEMORY[0x28223BE20](v202);
  v191 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v184 = (&v159 - v10);
  v197 = sub_258B019F4();
  v204 = *(v197 - 8);
  v11 = *(v204 + 64);
  v12 = MEMORY[0x28223BE20](v197);
  v186 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v187 = &v159 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v175 = &v159 - v17;
  MEMORY[0x28223BE20](v16);
  v174 = (&v159 - v18);
  sub_2589BFB18(0);
  v198 = v19;
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v193 = &v159 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v192 = &v159 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v189 = &v159 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v190 = &v159 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v159 = &v159 - v30;
  MEMORY[0x28223BE20](v29);
  v199 = &v159 - v31;
  sub_2589BF5F0(0);
  v185 = v32;
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v159 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for IntroPhaseSpecs();
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v183 = &v159 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v159 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v159 - v44;
  sub_2589BFAE4(0);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v188 = &v159 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v51 = &v159 - v50;
  v52 = a1;
  sub_2589BD7F4(v45);
  v196 = v37;
  v53 = &v45[*(v37 + 20)];
  LOBYTE(v53) = sub_258B00A84();
  sub_2589BFE5C(v45, type metadata accessor for IntroPhaseSpecs);
  v54 = 1;
  if (v53)
  {
    sub_2589BE080(v36);
    sub_2589BFFBC(v36, v51, sub_2589BF5F0);
    v54 = 0;
  }

  (*(v33 + 56))(v51, v54, 1, v185);
  v195 = v52;
  v55 = v52[1];
  *&v218 = *v52;
  *(&v218 + 1) = v55;
  v182 = sub_2589BFF58();
  sub_258B003E4();
  v56 = sub_258B01B44();
  v172 = v57;
  v173 = v56;
  v185 = v51;
  v59 = v58;
  v171 = v60;
  v61 = v43;
  sub_2589BD7F4(v43);
  sub_258B01914();
  v62 = &v43[*(v196 + 20)];
  v63 = sub_258B00A84();
  v64 = *MEMORY[0x277CE0A10];
  v181 = *MEMORY[0x277CE0A10];
  v65 = *MEMORY[0x277CE0A18];
  v180 = *MEMORY[0x277CE0A18];
  if (v63)
  {
    v66 = v64;
  }

  else
  {
    v66 = v65;
  }

  v67 = v204;
  v68 = *(v204 + 104);
  v178 = v204 + 104;
  v179 = v68;
  v69 = v175;
  v70 = v197;
  v68(v175, v66, v197);
  v71 = *(v67 + 32);
  v176 = v67 + 32;
  v177 = v71;
  v72 = v174;
  v71(v174, v69, v70);
  sub_258B01A14();

  v73 = *(v67 + 8);
  v204 = v67 + 8;
  v175 = v73;
  (v73)(v72, v70);
  v174 = type metadata accessor for IntroPhaseSpecs;
  sub_2589BFE5C(v61, type metadata accessor for IntroPhaseSpecs);
  v75 = v172;
  v74 = v173;
  v76 = sub_258B01AE4();
  v78 = v77;
  LOBYTE(v72) = v79;
  sub_2589BFFAC(v74, v75, v59 & 1);

  sub_258B01994();
  v80 = sub_258B01A94();
  v82 = v81;
  LOBYTE(v75) = v83;
  sub_2589BFFAC(v76, v78, v72 & 1);

  LODWORD(v218) = sub_258B014A4();
  v84 = sub_258B01AB4();
  v163 = v85;
  v164 = v84;
  LOBYTE(v76) = v86;
  v162 = v87;
  sub_2589BFFAC(v80, v82, v75 & 1);

  KeyPath = swift_getKeyPath();
  sub_258B02504();
  sub_258B00C94();
  *&v209[55] = v214;
  *&v209[71] = v215;
  *&v209[87] = v216;
  *&v209[103] = v217;
  *&v209[7] = v211;
  *&v209[23] = v212;
  v160 = v76 & 1;
  v210 = v76 & 1;
  *&v209[39] = v213;
  v88 = v200;
  v89 = v195;
  sub_2589BD5F8(v200);
  LODWORD(v173) = *MEMORY[0x277CDF3C0];
  v90 = v206;
  v91 = *(v206 + 104);
  v171 = v206 + 104;
  v172 = v91;
  v92 = v201;
  v93 = v203;
  v91(v201);
  LOBYTE(v82) = sub_258B00694();
  v94 = *(v90 + 8);
  v168 = v94;
  v206 = v90 + 8;
  v94(v92, v93);
  v94(v88, v93);
  v95 = *MEMORY[0x277CE13B8];
  v170 = *MEMORY[0x277CE13B8];
  v96 = *MEMORY[0x277CE13D8];
  v169 = *MEMORY[0x277CE13D8];
  if (v82)
  {
    v97 = v95;
  }

  else
  {
    v97 = v96;
  }

  v98 = v205;
  v99 = *(v205 + 104);
  v166 = v205 + 104;
  v167 = v99;
  v100 = v184;
  v101 = v202;
  v99(v184, v97, v202);
  v102 = *(v198 + 36);
  v103 = *(v98 + 32);
  v205 = v98 + 32;
  v165 = v103;
  v104 = v159;
  v103(&v159[v102], v100, v101);
  v105 = *&v209[80];
  *(v104 + 105) = *&v209[64];
  *(v104 + 121) = v105;
  *(v104 + 137) = *&v209[96];
  v106 = *&v209[16];
  *(v104 + 41) = *v209;
  *(v104 + 57) = v106;
  v107 = *&v209[48];
  *(v104 + 73) = *&v209[32];
  v108 = v163;
  *v104 = v164;
  *(v104 + 8) = v108;
  *(v104 + 16) = v160;
  v109 = KeyPath;
  *(v104 + 24) = v162;
  *(v104 + 32) = v109;
  *(v104 + 40) = 0;
  *(v104 + 152) = *&v209[111];
  *(v104 + 89) = v107;
  v184 = sub_2589BFB18;
  sub_2589BFFBC(v104, v199, sub_2589BFB18);
  v110 = v89[3];
  *&v218 = v89[2];
  *(&v218 + 1) = v110;
  sub_258B003E4();
  v111 = sub_258B01B44();
  v113 = v112;
  v115 = v114;
  v182 = v116;
  v117 = v183;
  sub_2589BD7F4(v183);
  sub_258B01914();
  v118 = v117 + *(v196 + 20);
  if (sub_258B00A84())
  {
    v119 = v181;
  }

  else
  {
    v119 = v180;
  }

  v120 = v186;
  v121 = v197;
  v179(v186, v119, v197);
  v122 = v187;
  v177(v187, v120, v121);
  sub_258B01A14();

  (v175)(v122, v121);
  sub_2589BFE5C(v117, v174);
  v123 = sub_258B01AE4();
  v125 = v124;
  v127 = v126;
  v197 = v128;
  sub_2589BFFAC(v111, v113, v115 & 1);

  LODWORD(v218) = sub_258B014B4();
  v129 = sub_258B01AB4();
  v204 = v130;
  LOBYTE(v120) = v131;
  v133 = v132;
  sub_2589BFFAC(v123, v125, v127 & 1);

  v134 = swift_getKeyPath();
  sub_258B02504();
  sub_258B00C94();
  *&v207[55] = v221;
  *&v207[71] = v222;
  *&v207[87] = v223;
  *&v207[103] = v224;
  *&v207[7] = v218;
  *&v207[23] = v219;
  v135 = v120 & 1;
  v208 = v120 & 1;
  *&v207[39] = v220;
  v136 = v200;
  sub_2589BD5F8(v200);
  v137 = v201;
  v138 = v203;
  v172(v201, v173, v203);
  LOBYTE(v120) = sub_258B00694();
  v139 = v137;
  v140 = v168;
  v168(v139, v138);
  v140(v136, v138);
  if (v120)
  {
    v141 = v170;
  }

  else
  {
    v141 = v169;
  }

  v142 = v191;
  v143 = v202;
  v167(v191, v141, v202);
  v144 = v189;
  v165(&v189[*(v198 + 36)], v142, v143);
  v145 = *&v207[80];
  *(v144 + 105) = *&v207[64];
  *(v144 + 121) = v145;
  *(v144 + 137) = *&v207[96];
  v146 = *&v207[16];
  *(v144 + 41) = *v207;
  *(v144 + 57) = v146;
  v147 = *&v207[48];
  *(v144 + 73) = *&v207[32];
  v148 = v204;
  *v144 = v129;
  *(v144 + 8) = v148;
  *(v144 + 16) = v135;
  *(v144 + 24) = v133;
  *(v144 + 32) = v134;
  *(v144 + 40) = 0;
  *(v144 + 152) = *&v207[111];
  *(v144 + 89) = v147;
  v149 = v190;
  sub_2589BFFBC(v144, v190, v184);
  v150 = v185;
  v151 = v188;
  sub_2589C0394(v185, v188, sub_2589BFAE4);
  v152 = v199;
  v153 = v192;
  sub_2589C0394(v199, v192, sub_2589BFB18);
  v154 = v193;
  sub_2589C0394(v149, v193, sub_2589BFB18);
  v155 = v194;
  sub_2589C0394(v151, v194, sub_2589BFAE4);
  sub_2589BFA70();
  v157 = v156;
  sub_2589C0394(v153, v155 + *(v156 + 48), sub_2589BFB18);
  sub_2589C0394(v154, v155 + *(v157 + 64), sub_2589BFB18);
  sub_2589BFE5C(v149, sub_2589BFB18);
  sub_2589BFE5C(v152, sub_2589BFB18);
  sub_2589BFE5C(v150, sub_2589BFAE4);
  sub_2589BFE5C(v154, sub_2589BFB18);
  sub_2589BFE5C(v153, sub_2589BFB18);
  return sub_2589BFE5C(v151, sub_2589BFAE4);
}

void sub_2589BF300(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for IntroPhaseSpecs();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589BD7F4(v6);
  sub_2589BFE5C(v6, type metadata accessor for IntroPhaseSpecs);
  *a1 = sub_258B01004();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  sub_2589BFDF0(0, &qword_27F96C800, sub_2589BF420);
  sub_2589BD9D4(v1, a1 + *(v7 + 44));
  v8 = [objc_opt_self() labelColor];
  v9 = sub_258B01F94();
  sub_2589BFCC8();
  *(a1 + *(v10 + 36)) = v9;
}

void sub_2589BF454()
{
  if (!qword_27F96C810)
  {
    sub_2589BF4C4();
    sub_2589BF8B8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96C810);
    }
  }
}

void sub_2589BF4C4()
{
  if (!qword_27F96C818)
  {
    sub_2589BF9A8(255, &qword_27F96C820, sub_2589BF554, &qword_27F96C878, sub_2589BF554);
    v0 = sub_258B030C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C818);
    }
  }
}

void sub_2589BF588()
{
  if (!qword_27F96C830)
  {
    sub_2589BF5F0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96C830);
    }
  }
}

void sub_2589BF624()
{
  if (!qword_27F96C840)
  {
    sub_2589BF6B4(255, &qword_27F96C848, sub_2589BF728, sub_2589BF83C);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C840);
    }
  }
}

void sub_2589BF6B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2589BF728()
{
  if (!qword_27F96C850)
  {
    sub_2589BF7E8(255, &qword_27F96C858, MEMORY[0x277CE1088], MEMORY[0x277CE01B8], MEMORY[0x277CDFAB8]);
    sub_2589BF7E8(255, &qword_27F96C860, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C850);
    }
  }
}

void sub_2589BF7E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2589BF83C()
{
  if (!qword_27F96C868)
  {
    sub_2589BFC30(255, &qword_27F96C870, MEMORY[0x277CE0AE0], MEMORY[0x277D83D88]);
    v0 = sub_258B017C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C868);
    }
  }
}

void sub_2589BF8B8()
{
  if (!qword_27F96C880)
  {
    sub_2589BF96C(255);
    sub_2589BFC80(&qword_27F96C8D0, sub_2589BF96C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96C880);
    }
  }
}

void sub_2589BF9A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2589BFC80(a4, a5);
    v8 = sub_258B022D4();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2589BFA70()
{
  if (!qword_27F96C898)
  {
    sub_2589BFAE4(255);
    sub_2589BFB18(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96C898);
    }
  }
}

void sub_2589BFB4C()
{
  if (!qword_27F96C8B0)
  {
    sub_2589BFBAC();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C8B0);
    }
  }
}

void sub_2589BFBAC()
{
  if (!qword_27F96C8B8)
  {
    sub_2589BFC30(255, &qword_27F96C8C0, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C8B8);
    }
  }
}

void sub_2589BFC30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2589BFC80(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2589BFCC8()
{
  if (!qword_27F96C8D8)
  {
    sub_2589BFD5C();
    sub_2589BF7E8(255, &qword_27F96C860, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C8D8);
    }
  }
}

void sub_2589BFD5C()
{
  if (!qword_27F96C8E0)
  {
    sub_2589BF420(255);
    sub_2589BFC80(&qword_27F96C8E8, sub_2589BF420);
    v0 = sub_258B021D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C8E0);
    }
  }
}

void sub_2589BFDF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00974();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2589BFE5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2589BFEBC(uint64_t a1, uint64_t a2)
{
  sub_2589BF9A8(0, &qword_27F96C820, sub_2589BF554, &qword_27F96C878, sub_2589BF554);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2589BFF58()
{
  result = qword_27F96C900;
  if (!qword_27F96C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C900);
  }

  return result;
}

uint64_t sub_2589BFFAC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2589BFFBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2589C0058()
{
  result = qword_27F96C910;
  if (!qword_27F96C910)
  {
    sub_2589BF624();
    sub_2589C00D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C910);
  }

  return result;
}

unint64_t sub_2589C00D8()
{
  result = qword_27F96C918;
  if (!qword_27F96C918)
  {
    sub_2589BF6B4(255, &qword_27F96C848, sub_2589BF728, sub_2589BF83C);
    sub_2589C01B8();
    sub_2589BFC80(&qword_27F96C938, sub_2589BF83C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C918);
  }

  return result;
}

unint64_t sub_2589C01B8()
{
  result = qword_27F96C920;
  if (!qword_27F96C920)
  {
    sub_2589BF728();
    sub_2589C0238();
    sub_2589C02DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C920);
  }

  return result;
}

unint64_t sub_2589C0238()
{
  result = qword_27F96C928;
  if (!qword_27F96C928)
  {
    sub_2589BF7E8(255, &qword_27F96C858, MEMORY[0x277CE1088], MEMORY[0x277CE01B8], MEMORY[0x277CDFAB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C928);
  }

  return result;
}

unint64_t sub_2589C02DC()
{
  result = qword_27F96C930;
  if (!qword_27F96C930)
  {
    sub_2589BF7E8(255, &qword_27F96C860, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C930);
  }

  return result;
}

uint64_t sub_2589C0394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2589C03FC()
{
  result = qword_27F96C948;
  if (!qword_27F96C948)
  {
    sub_2589BFCC8();
    sub_2589BFC80(&qword_27F96C950, sub_2589BFD5C);
    sub_2589C02DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C948);
  }

  return result;
}

uint64_t StateOfMindEntryView.init(model:presentationStyle:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = sub_2589C0528;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  *(a3 + 24) = sub_2589C04F4;
  *(a3 + 32) = 0;
  *(a3 + 40) = v3;
  return result;
}

uint64_t StateOfMindEntryView.init(model:presentationStyle:onCompletion:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  *a5 = sub_2589C0B18;
  *(a5 + 8) = result;
  *(a5 + 16) = 0;
  *(a5 + 40) = v5;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

uint64_t StateOfMindEntryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v7 = v1[3];
  v6 = v1[4];
  v8 = *(v1 + 40);
  type metadata accessor for StateOfMindEntryModel(0);
  sub_2589C0AD0(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel);
  v9 = sub_258B00744();
  sub_2589C07FC();

  sub_258B02114();
  *(a1 + 40) = v21;
  *(a1 + 48) = v22;
  sub_258B02114();
  *(a1 + 56) = v21;
  *(a1 + 64) = v22;
  sub_258B02114();
  *(a1 + 72) = v21;
  *(a1 + 80) = v22;
  v10 = type metadata accessor for StateOfMindEntryView_iOS();
  v11 = v10[11];
  *(a1 + v11) = swift_getKeyPath();
  sub_2589C099C(0, &qword_27F96C968, MEMORY[0x277CDD848]);
  swift_storeEnumTagMultiPayload();
  v12 = v10[12];
  *(a1 + v12) = swift_getKeyPath();
  sub_2589C099C(0, &qword_27F96C908, MEMORY[0x277CDF3E0]);
  swift_storeEnumTagMultiPayload();
  v13 = v10[13];
  *(a1 + v13) = swift_getKeyPath();
  sub_2589C099C(0, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs);
  swift_storeEnumTagMultiPayload();

  *a1 = sub_258B00A24();
  *(a1 + 8) = v14;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  v15 = v9 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_configuration;
  swift_beginAccess();
  if (*(v15 + 8) == 1)
  {
    v16 = v10[14];
    v17 = 2;
LABEL_6:
    *(a1 + v16) = v17;
    goto LABEL_7;
  }

  v18 = sub_258A16BE4();
  v16 = v10[14];
  if ((v18 & 1) == 0)
  {
    v17 = 1;
    goto LABEL_6;
  }

  *(a1 + v16) = 0;
LABEL_7:
  sub_258B02114();

  *(a1 + 88) = 0;
  *(a1 + 96) = v20;
  return result;
}

void sub_2589C07FC()
{
  if (!qword_27F96C960)
  {
    v0 = sub_258B02CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C960);
    }
  }
}

uint64_t sub_2589C0874(uint64_t a1)
{
  v2 = sub_258B006A4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_258B00D24();
}

uint64_t sub_2589C0960@<X0>(uint64_t a1@<X8>)
{
  sub_258B00E34();
  v2 = a1 + *(type metadata accessor for IntroPhaseSpecs() + 20);
  return sub_258B00D84();
}

void sub_2589C099C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00714();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}