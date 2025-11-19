uint64_t sub_217A96148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_217D889CC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_217A96258(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_217D8899C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_217D889CC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_217A963A0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_30:

    return v9(v10, a2, v8);
  }

  sub_217C14EB8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_29:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_30;
  }

  sub_217C14EB8(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_29;
  }

  sub_217C14EB8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_29;
  }

  sub_217C14EB8(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_29;
  }

  sub_217A608E0();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_29;
  }

  sub_217C14EB8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_29;
  }

  sub_217C14EB8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_29;
  }

  sub_217C14EB8(0, &qword_2811C8720, sub_217BB0C7C, sub_217BB0CD4);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_29;
  }

  sub_217C14EB8(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_29;
  }

  sub_217C14EB8(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_29;
  }

  sub_217C14EB8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_29;
  }

  sub_217C14EB8(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[16];
    goto LABEL_29;
  }

  sub_217C14EB8(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  if (*(*(v25 - 8) + 84) == a2)
  {
    v8 = v25;
    v12 = *(v25 - 8);
    v13 = a3[17];
    goto LABEL_29;
  }

  sub_217C14EB8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v28 = v27;
  v29 = *(*(v27 - 8) + 48);
  v30 = a1 + a3[18];

  return v29(v30, a2, v28);
}

uint64_t sub_217A96B18(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_30:

    return v11(v12, a2, a2, v10);
  }

  sub_217C14EB8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_29:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_30;
  }

  sub_217C14EB8(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_29;
  }

  sub_217C14EB8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_29;
  }

  sub_217C14EB8(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_29;
  }

  sub_217A608E0();
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_29;
  }

  sub_217C14EB8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_29;
  }

  sub_217C14EB8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_29;
  }

  sub_217C14EB8(0, &qword_2811C8720, sub_217BB0C7C, sub_217BB0CD4);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_29;
  }

  sub_217C14EB8(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_29;
  }

  sub_217C14EB8(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_29;
  }

  sub_217C14EB8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_29;
  }

  sub_217C14EB8(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[16];
    goto LABEL_29;
  }

  sub_217C14EB8(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  if (*(*(v27 - 8) + 84) == a3)
  {
    v10 = v27;
    v14 = *(v27 - 8);
    v15 = a4[17];
    goto LABEL_29;
  }

  sub_217C14EB8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v30 = v29;
  v31 = *(*(v29 - 8) + 56);
  v32 = a1 + a4[18];

  return v31(v32, a2, a2, v30);
}

uint64_t sub_217A9729C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_217D889CC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_217A973C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_217D889CC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_217A974EC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  sub_217C1A624(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_15:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_16;
  }

  sub_217C1A624(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_15;
  }

  sub_217C1A624(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_15;
  }

  sub_217C1A624(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_15;
  }

  sub_217C1A624(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_15;
  }

  sub_217C1A624(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_15;
  }

  sub_217C1A624(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v21 = v20;
  v22 = *(*(v20 - 8) + 48);
  v23 = a1 + a3[11];

  return v22(v23, a2, v21);
}

uint64_t sub_217A9791C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_16:

    return v11(v12, a2, a2, v10);
  }

  sub_217C1A624(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_15:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_16;
  }

  sub_217C1A624(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_15;
  }

  sub_217C1A624(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_15;
  }

  sub_217C1A624(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_15;
  }

  sub_217C1A624(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_15;
  }

  sub_217C1A624(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_15;
  }

  sub_217C1A624(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v23 = v22;
  v24 = *(*(v22 - 8) + 56);
  v25 = a1 + a4[11];

  return v24(v25, a2, a2, v23);
}

uint64_t sub_217A97D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217A97E18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
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

uint64_t sub_217A97ED4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_217A97F0C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_20:

    return v9(v10, a2, v8);
  }

  sub_217C225BC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_19:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_20;
  }

  sub_217C225BC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v23 = v22;
  v24 = *(*(v22 - 8) + 48);
  v25 = a1 + a3[13];

  return v24(v25, a2, v23);
}

uint64_t sub_217A9843C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_20:

    return v11(v12, a2, a2, v10);
  }

  sub_217C225BC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_19:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_20;
  }

  sub_217C225BC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v27 = a1 + a4[13];

  return v26(v27, a2, a2, v25);
}

uint64_t sub_217A98978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217A98A38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217A98AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_217C26F60();
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_217A98BE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_217C26F60();
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_217A98CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_217A98DB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_217A98E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_217B8A2C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_217A608E0();
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_217A98FB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_217B8A2C8();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_217A608E0();
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_217A990FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 16);
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

  else
  {
    v12 = sub_217D889CC();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_217A99230(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 16) = a2;
  }

  else
  {
    v11 = sub_217D889CC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_217A99358@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_217A993B4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  SessionObserver.window.setter(v2);
}

uint64_t sub_217A993E4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  if (v0[9])
  {

    v4 = v0[11];

    v5 = v0[13];
  }

  v6 = v0[15];

  if (v0[17] != 1)
  {

    v7 = v0[20];

    v8 = v0[22];

    v9 = v0[24];

    v10 = v0[27];
  }

  if (v0[29])
  {

    v11 = v0[32];

    v12 = v0[36];

    v13 = v0[41];

    v14 = v0[46];

    v15 = v0[48];

    v16 = v0[52];

    v17 = v0[54];

    v18 = v0[55];

    v19 = v0[56];

    v20 = v0[57];

    v21 = v0[59];

    v22 = v0[60];

    v23 = v0[63];

    v24 = v0[66];

    v25 = v0[67];

    v26 = v0[69];

    v27 = v0[73];

    v28 = v0[75];

    v29 = v0[77];

    v30 = v0[80];

    v31 = v0[82];

    v32 = v0[84];
  }

  return MEMORY[0x2821FE8E8](v0, 680, 7);
}

uint64_t sub_217A9953C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_217A995EC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  sub_217A608E0();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_15:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_16;
  }

  sub_217C335CC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_15;
  }

  sub_217C335CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_15;
  }

  sub_217C335CC(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_15;
  }

  sub_217C335CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_15;
  }

  sub_217C335CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_15;
  }

  sub_217C335CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v21 = v20;
  v22 = *(*(v20 - 8) + 48);
  v23 = a1 + a3[11];

  return v22(v23, a2, v21);
}

uint64_t sub_217A999E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_16:

    return v11(v12, a2, a2, v10);
  }

  sub_217A608E0();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_15:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_16;
  }

  sub_217C335CC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_15;
  }

  sub_217C335CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_15;
  }

  sub_217C335CC(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_15;
  }

  sub_217C335CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_15;
  }

  sub_217C335CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_15;
  }

  sub_217C335CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v23 = v22;
  v24 = *(*(v22 - 8) + 56);
  v25 = a1 + a4[11];

  return v24(v25, a2, a2, v23);
}

uint64_t sub_217A99DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_217D889CC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 16);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_217A99EF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_217D8899C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_217D889CC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 16) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_217A9A004(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  sub_217C372B0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
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

  sub_217C372B0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  sub_217C372B0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  sub_217C372B0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  sub_217C372B0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + a3[9];

  return v20(v21, a2, v19);
}

uint64_t sub_217A9A334(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  sub_217C372B0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
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

  sub_217C372B0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  sub_217C372B0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  sub_217C372B0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  sub_217C372B0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v23 = a1 + a4[9];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_217A9A670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217A9A730(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
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

uint64_t sub_217A9A7EC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  sub_217C3A7A4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
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

  sub_217C3A7A4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  sub_217C3A7A4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  sub_217C3A7A4(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  sub_217C3A7A4(0, &qword_27CB9F440, sub_217B0FD44, sub_217B0FD98);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + a3[9];

  return v20(v21, a2, v19);
}

uint64_t sub_217A9AB1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  sub_217C3A7A4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
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

  sub_217C3A7A4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  sub_217C3A7A4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  sub_217C3A7A4(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  sub_217C3A7A4(0, &qword_27CB9F440, sub_217B0FD44, sub_217B0FD98);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v23 = a1 + a4[9];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_217A9AE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217A9AF18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217A9AFD4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_217A608E0();
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

  sub_217A62D60(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  sub_217A62D60(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = a1 + a3[7];

  return v18(v19, a2, v17);
}

uint64_t sub_217A9B1CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  sub_217A608E0();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  sub_217A62D60(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  sub_217A62D60(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[7];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_217A9B3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_217D889CC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_217A9B4E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_217D8899C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_217D889CC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_217A9B624(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_28:

    return v9(v10, a2, v8);
  }

  sub_217C411F0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_27:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_28;
  }

  sub_217C411F0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_27;
  }

  sub_217C411F0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_27;
  }

  sub_217C411F0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_27;
  }

  sub_217C411F0(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_27;
  }

  sub_217C411F0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_27;
  }

  sub_217C411F0(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_27;
  }

  sub_217C411F0(0, &qword_2811C8530, sub_217C408D8, sub_217C4092C);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_27;
  }

  sub_217C411F0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_27;
  }

  sub_217C411F0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_27;
  }

  sub_217C411F0(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_27;
  }

  sub_217C411F0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[16];
    goto LABEL_27;
  }

  sub_217C411F0(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v27 = v26;
  v28 = *(*(v26 - 8) + 48);
  v29 = a1 + a3[17];

  return v28(v29, a2, v27);
}

uint64_t sub_217A9BD54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_28:

    return v11(v12, a2, a2, v10);
  }

  sub_217C411F0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_27:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_28;
  }

  sub_217C411F0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_27;
  }

  sub_217C411F0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_27;
  }

  sub_217C411F0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_27;
  }

  sub_217C411F0(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_27;
  }

  sub_217C411F0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_27;
  }

  sub_217C411F0(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_27;
  }

  sub_217C411F0(0, &qword_2811C8530, sub_217C408D8, sub_217C4092C);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_27;
  }

  sub_217C411F0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_27;
  }

  sub_217C411F0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_27;
  }

  sub_217C411F0(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_27;
  }

  sub_217C411F0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[16];
    goto LABEL_27;
  }

  sub_217C411F0(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v29 = v28;
  v30 = *(*(v28 - 8) + 56);
  v31 = a1 + a4[17];

  return v30(v31, a2, a2, v29);
}

uint64_t sub_217A9C490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217A9C550(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217A9C668(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_46:

    return v9(v10, a2, v8);
  }

  sub_217C4752C(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_45:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_46;
  }

  sub_217A608E0();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[16];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  if (*(*(v25 - 8) + 84) == a2)
  {
    v8 = v25;
    v12 = *(v25 - 8);
    v13 = a3[17];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4);
  if (*(*(v26 - 8) + 84) == a2)
  {
    v8 = v26;
    v12 = *(v26 - 8);
    v13 = a3[18];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84);
  if (*(*(v27 - 8) + 84) == a2)
  {
    v8 = v27;
    v12 = *(v27 - 8);
    v13 = a3[19];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8);
  if (*(*(v28 - 8) + 84) == a2)
  {
    v8 = v28;
    v12 = *(v28 - 8);
    v13 = a3[20];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C8778, sub_217B75EA8, sub_217B75F00);
  if (*(*(v29 - 8) + 84) == a2)
  {
    v8 = v29;
    v12 = *(v29 - 8);
    v13 = a3[21];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C8678, sub_217AE0B30, sub_217AE0B88);
  if (*(*(v30 - 8) + 84) == a2)
  {
    v8 = v30;
    v12 = *(v30 - 8);
    v13 = a3[22];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C84B0, sub_217B86EE4, sub_217B86F3C);
  if (*(*(v31 - 8) + 84) == a2)
  {
    v8 = v31;
    v12 = *(v31 - 8);
    v13 = a3[23];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390);
  if (*(*(v32 - 8) + 84) == a2)
  {
    v8 = v32;
    v12 = *(v32 - 8);
    v13 = a3[24];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C8718, sub_217BB19F8, sub_217BB1A50);
  if (*(*(v33 - 8) + 84) == a2)
  {
    v8 = v33;
    v12 = *(v33 - 8);
    v13 = a3[25];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC);
  v36 = v35;
  v37 = *(*(v35 - 8) + 48);
  v38 = a1 + a3[26];

  return v37(v38, a2, v36);
}

uint64_t sub_217A9D1E0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_46:

    return v11(v12, a2, a2, v10);
  }

  sub_217C4752C(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_45:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_46;
  }

  sub_217A608E0();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[16];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  if (*(*(v27 - 8) + 84) == a3)
  {
    v10 = v27;
    v14 = *(v27 - 8);
    v15 = a4[17];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4);
  if (*(*(v28 - 8) + 84) == a3)
  {
    v10 = v28;
    v14 = *(v28 - 8);
    v15 = a4[18];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84);
  if (*(*(v29 - 8) + 84) == a3)
  {
    v10 = v29;
    v14 = *(v29 - 8);
    v15 = a4[19];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8);
  if (*(*(v30 - 8) + 84) == a3)
  {
    v10 = v30;
    v14 = *(v30 - 8);
    v15 = a4[20];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C8778, sub_217B75EA8, sub_217B75F00);
  if (*(*(v31 - 8) + 84) == a3)
  {
    v10 = v31;
    v14 = *(v31 - 8);
    v15 = a4[21];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C8678, sub_217AE0B30, sub_217AE0B88);
  if (*(*(v32 - 8) + 84) == a3)
  {
    v10 = v32;
    v14 = *(v32 - 8);
    v15 = a4[22];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C84B0, sub_217B86EE4, sub_217B86F3C);
  if (*(*(v33 - 8) + 84) == a3)
  {
    v10 = v33;
    v14 = *(v33 - 8);
    v15 = a4[23];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390);
  if (*(*(v34 - 8) + 84) == a3)
  {
    v10 = v34;
    v14 = *(v34 - 8);
    v15 = a4[24];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C8718, sub_217BB19F8, sub_217BB1A50);
  if (*(*(v35 - 8) + 84) == a3)
  {
    v10 = v35;
    v14 = *(v35 - 8);
    v15 = a4[25];
    goto LABEL_45;
  }

  sub_217C4752C(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC);
  v38 = v37;
  v39 = *(*(v37 - 8) + 56);
  v40 = a1 + a4[26];

  return v39(v40, a2, a2, v38);
}

uint64_t sub_217A9DD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_217D889CC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_217A9DE74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_217D8899C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_217D889CC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_217A9DF80(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  sub_217C4CC74(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
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

  sub_217C4CC74(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  sub_217C4CC74(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  sub_217C4CC74(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  sub_217C4CC74(0, &qword_27CB9F428, sub_217B0FA70, sub_217B0FAC4);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + a3[9];

  return v20(v21, a2, v19);
}

uint64_t sub_217A9E2B0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  sub_217C4CC74(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
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

  sub_217C4CC74(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  sub_217C4CC74(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  sub_217C4CC74(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  sub_217C4CC74(0, &qword_27CB9F428, sub_217B0FA70, sub_217B0FAC4);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v23 = a1 + a4[9];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_217A9E5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217A9E6AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217A9E768(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_217C4EFA0();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_217A9E814(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_217C4EFA0();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_217A9E8F4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_20:

    return v9(v10, a2, v8);
  }

  sub_217A62DDC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_19:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_20;
  }

  sub_217A62DDC(0, &qword_2811C8690, sub_217A4F460, sub_217A55E38);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  sub_217A62DDC(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  sub_217A62DDC(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  sub_217A62DDC(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  sub_217A62DDC(0, &qword_2811C8590, sub_217A505D4, sub_217A5062C);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  sub_217A62DDC(0, &qword_2811C85C0, sub_217BBB5F8, sub_217BBB650);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  sub_217A62DDC(0, &qword_2811C8648, sub_217A4F51C, sub_217A4F574);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  sub_217A62DDC(0, &qword_2811C8588, sub_217A4FC50, sub_217A4FCA8);
  v23 = v22;
  v24 = *(*(v22 - 8) + 48);
  v25 = a1 + a3[13];

  return v24(v25, a2, v23);
}

uint64_t sub_217A9EE24(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_20:

    return v11(v12, a2, a2, v10);
  }

  sub_217A62DDC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_19:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_20;
  }

  sub_217A62DDC(0, &qword_2811C8690, sub_217A4F460, sub_217A55E38);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  sub_217A62DDC(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  sub_217A62DDC(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  sub_217A62DDC(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  sub_217A62DDC(0, &qword_2811C8590, sub_217A505D4, sub_217A5062C);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  sub_217A62DDC(0, &qword_2811C85C0, sub_217BBB5F8, sub_217BBB650);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  sub_217A62DDC(0, &qword_2811C8648, sub_217A4F51C, sub_217A4F574);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  sub_217A62DDC(0, &qword_2811C8588, sub_217A4FC50, sub_217A4FCA8);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v27 = a1 + a4[13];

  return v26(v27, a2, a2, v25);
}

uint64_t sub_217A9F360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217A9F420(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217A9F4DC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_24:

    return v9(v10, a2, v8);
  }

  sub_217C568D8(0, &qword_27CBA2C10, sub_217AF15FC, sub_217AF1654);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_23:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_24;
  }

  sub_217C568D8(0, &qword_27CBA2C18, sub_217BF4018, sub_217BF35D0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_23;
  }

  sub_217C568D8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_23;
  }

  sub_217C568D8(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_23;
  }

  sub_217C568D8(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_23;
  }

  sub_217C568D8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_23;
  }

  sub_217C568D8(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_23;
  }

  sub_217C568D8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_23;
  }

  sub_217A608E0();
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_23;
  }

  sub_217C568D8(0, &qword_27CB9F348, sub_217B0B744, sub_217B0B798);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_23;
  }

  sub_217C568D8(0, &qword_27CB9F350, sub_217B0BA18, sub_217B0BA6C);
  v25 = v24;
  v26 = *(*(v24 - 8) + 48);
  v27 = a1 + a3[15];

  return v26(v27, a2, v25);
}

uint64_t sub_217A9FAD4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_24:

    return v11(v12, a2, a2, v10);
  }

  sub_217C568D8(0, &qword_27CBA2C10, sub_217AF15FC, sub_217AF1654);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_23:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_24;
  }

  sub_217C568D8(0, &qword_27CBA2C18, sub_217BF4018, sub_217BF35D0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_23;
  }

  sub_217C568D8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_23;
  }

  sub_217C568D8(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_23;
  }

  sub_217C568D8(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_23;
  }

  sub_217C568D8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_23;
  }

  sub_217C568D8(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_23;
  }

  sub_217C568D8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_23;
  }

  sub_217A608E0();
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_23;
  }

  sub_217C568D8(0, &qword_27CB9F348, sub_217B0B744, sub_217B0B798);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_23;
  }

  sub_217C568D8(0, &qword_27CB9F350, sub_217B0BA18, sub_217B0BA6C);
  v27 = v26;
  v28 = *(*(v26 - 8) + 56);
  v29 = a1 + a4[15];

  return v28(v29, a2, a2, v27);
}

uint64_t sub_217AA00D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_217D889CC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 52);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_217AA0200(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  else
  {
    v11 = sub_217D889CC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 52);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_217AA0328(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  sub_217A62E58(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  sub_217A62E58(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  sub_217A62E58(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  sub_217A62E58(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  sub_217A62E58(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  sub_217A62E58(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v20 = v19;
  v21 = *(*(v19 - 8) + 48);
  v22 = a1 + a3[10];

  return v21(v22, a2, v20);
}

uint64_t sub_217AA06D8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  sub_217A62E58(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  sub_217A62E58(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  sub_217A62E58(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  sub_217A62E58(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  sub_217A62E58(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  sub_217A62E58(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v22 = v21;
  v23 = *(*(v21 - 8) + 56);
  v24 = a1 + a4[10];

  return v23(v24, a2, a2, v22);
}

uint64_t sub_217AA0A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217AA0B54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217AA0D60(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217C641FC(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  sub_217A6018C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_15:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_16;
  }

  sub_217C641FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_15;
  }

  sub_217C641FC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_15;
  }

  sub_217C641FC(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_15;
  }

  sub_217C641FC(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_15;
  }

  sub_217C641FC(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_15;
  }

  sub_217C641FC(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v21 = v20;
  v22 = *(*(v20 - 8) + 48);
  v23 = a1 + a3[11];

  return v22(v23, a2, v21);
}

uint64_t sub_217AA1190(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217C641FC(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_16:

    return v11(v12, a2, a2, v10);
  }

  sub_217A6018C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_15:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_16;
  }

  sub_217C641FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_15;
  }

  sub_217C641FC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_15;
  }

  sub_217C641FC(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_15;
  }

  sub_217C641FC(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_15;
  }

  sub_217C641FC(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_15;
  }

  sub_217C641FC(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v23 = v22;
  v24 = *(*(v22 - 8) + 56);
  v25 = a1 + a4[11];

  return v24(v25, a2, a2, v23);
}

uint64_t sub_217AA15CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_217D8899C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_217AA1678(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_217D8899C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_217AA171C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  sub_217C372B0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
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

  sub_217C372B0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  sub_217C372B0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  sub_217C372B0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  sub_217C372B0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + a3[9];

  return v20(v21, a2, v19);
}

uint64_t sub_217AA1A4C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  sub_217C372B0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
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

  sub_217C372B0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  sub_217C372B0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  sub_217C372B0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  sub_217C372B0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v23 = a1 + a4[9];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_217AA1D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217AA1E48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
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

uint64_t sub_217AA1F98(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_74:

    return v9(v10, a2, v8);
  }

  sub_217C6F060(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_73:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_74;
  }

  sub_217A608E0();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[16];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  if (*(*(v25 - 8) + 84) == a2)
  {
    v8 = v25;
    v12 = *(v25 - 8);
    v13 = a3[17];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444);
  if (*(*(v26 - 8) + 84) == a2)
  {
    v8 = v26;
    v12 = *(v26 - 8);
    v13 = a3[18];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v27 - 8) + 84) == a2)
  {
    v8 = v27;
    v12 = *(v27 - 8);
    v13 = a3[19];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v28 - 8) + 84) == a2)
  {
    v8 = v28;
    v12 = *(v28 - 8);
    v13 = a3[20];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0);
  if (*(*(v29 - 8) + 84) == a2)
  {
    v8 = v29;
    v12 = *(v29 - 8);
    v13 = a3[21];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  if (*(*(v30 - 8) + 84) == a2)
  {
    v8 = v30;
    v12 = *(v30 - 8);
    v13 = a3[22];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  if (*(*(v31 - 8) + 84) == a2)
  {
    v8 = v31;
    v12 = *(v31 - 8);
    v13 = a3[23];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
  if (*(*(v32 - 8) + 84) == a2)
  {
    v8 = v32;
    v12 = *(v32 - 8);
    v13 = a3[24];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C85E0, sub_217AD0A50, sub_217AD0AA4);
  if (*(*(v33 - 8) + 84) == a2)
  {
    v8 = v33;
    v12 = *(v33 - 8);
    v13 = a3[25];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8730, sub_217C6D770, sub_217C6D7C4);
  if (*(*(v34 - 8) + 84) == a2)
  {
    v8 = v34;
    v12 = *(v34 - 8);
    v13 = a3[26];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  if (*(*(v35 - 8) + 84) == a2)
  {
    v8 = v35;
    v12 = *(v35 - 8);
    v13 = a3[27];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C85C0, sub_217BBB5F8, sub_217BBB650);
  if (*(*(v36 - 8) + 84) == a2)
  {
    v8 = v36;
    v12 = *(v36 - 8);
    v13 = a3[28];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C);
  if (*(*(v37 - 8) + 84) == a2)
  {
    v8 = v37;
    v12 = *(v37 - 8);
    v13 = a3[29];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
  if (*(*(v38 - 8) + 84) == a2)
  {
    v8 = v38;
    v12 = *(v38 - 8);
    v13 = a3[30];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84);
  if (*(*(v39 - 8) + 84) == a2)
  {
    v8 = v39;
    v12 = *(v39 - 8);
    v13 = a3[31];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8858, sub_217C6E238, sub_217C6E28C);
  if (*(*(v40 - 8) + 84) == a2)
  {
    v8 = v40;
    v12 = *(v40 - 8);
    v13 = a3[32];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84);
  if (*(*(v41 - 8) + 84) == a2)
  {
    v8 = v41;
    v12 = *(v41 - 8);
    v13 = a3[33];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  if (*(*(v42 - 8) + 84) == a2)
  {
    v8 = v42;
    v12 = *(v42 - 8);
    v13 = a3[34];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8);
  if (*(*(v43 - 8) + 84) == a2)
  {
    v8 = v43;
    v12 = *(v43 - 8);
    v13 = a3[35];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C84B0, sub_217B86EE4, sub_217B86F3C);
  if (*(*(v44 - 8) + 84) == a2)
  {
    v8 = v44;
    v12 = *(v44 - 8);
    v13 = a3[36];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8630, sub_217B34774, sub_217B347CC);
  if (*(*(v45 - 8) + 84) == a2)
  {
    v8 = v45;
    v12 = *(v45 - 8);
    v13 = a3[37];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  if (*(*(v46 - 8) + 84) == a2)
  {
    v8 = v46;
    v12 = *(v46 - 8);
    v13 = a3[38];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8718, sub_217BB19F8, sub_217BB1A50);
  if (*(*(v47 - 8) + 84) == a2)
  {
    v8 = v47;
    v12 = *(v47 - 8);
    v13 = a3[39];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8620, sub_217B36858, sub_217B368B0);
  v50 = v49;
  v51 = *(*(v49 - 8) + 48);
  v52 = a1 + a3[40];

  return v51(v52, a2, v50);
}

uint64_t sub_217AA3210(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_74:

    return v11(v12, a2, a2, v10);
  }

  sub_217C6F060(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_73:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_74;
  }

  sub_217A608E0();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[16];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  if (*(*(v27 - 8) + 84) == a3)
  {
    v10 = v27;
    v14 = *(v27 - 8);
    v15 = a4[17];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444);
  if (*(*(v28 - 8) + 84) == a3)
  {
    v10 = v28;
    v14 = *(v28 - 8);
    v15 = a4[18];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v29 - 8) + 84) == a3)
  {
    v10 = v29;
    v14 = *(v29 - 8);
    v15 = a4[19];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v30 - 8) + 84) == a3)
  {
    v10 = v30;
    v14 = *(v30 - 8);
    v15 = a4[20];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0);
  if (*(*(v31 - 8) + 84) == a3)
  {
    v10 = v31;
    v14 = *(v31 - 8);
    v15 = a4[21];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  if (*(*(v32 - 8) + 84) == a3)
  {
    v10 = v32;
    v14 = *(v32 - 8);
    v15 = a4[22];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  if (*(*(v33 - 8) + 84) == a3)
  {
    v10 = v33;
    v14 = *(v33 - 8);
    v15 = a4[23];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
  if (*(*(v34 - 8) + 84) == a3)
  {
    v10 = v34;
    v14 = *(v34 - 8);
    v15 = a4[24];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C85E0, sub_217AD0A50, sub_217AD0AA4);
  if (*(*(v35 - 8) + 84) == a3)
  {
    v10 = v35;
    v14 = *(v35 - 8);
    v15 = a4[25];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8730, sub_217C6D770, sub_217C6D7C4);
  if (*(*(v36 - 8) + 84) == a3)
  {
    v10 = v36;
    v14 = *(v36 - 8);
    v15 = a4[26];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  if (*(*(v37 - 8) + 84) == a3)
  {
    v10 = v37;
    v14 = *(v37 - 8);
    v15 = a4[27];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C85C0, sub_217BBB5F8, sub_217BBB650);
  if (*(*(v38 - 8) + 84) == a3)
  {
    v10 = v38;
    v14 = *(v38 - 8);
    v15 = a4[28];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C);
  if (*(*(v39 - 8) + 84) == a3)
  {
    v10 = v39;
    v14 = *(v39 - 8);
    v15 = a4[29];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
  if (*(*(v40 - 8) + 84) == a3)
  {
    v10 = v40;
    v14 = *(v40 - 8);
    v15 = a4[30];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84);
  if (*(*(v41 - 8) + 84) == a3)
  {
    v10 = v41;
    v14 = *(v41 - 8);
    v15 = a4[31];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8858, sub_217C6E238, sub_217C6E28C);
  if (*(*(v42 - 8) + 84) == a3)
  {
    v10 = v42;
    v14 = *(v42 - 8);
    v15 = a4[32];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84);
  if (*(*(v43 - 8) + 84) == a3)
  {
    v10 = v43;
    v14 = *(v43 - 8);
    v15 = a4[33];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  if (*(*(v44 - 8) + 84) == a3)
  {
    v10 = v44;
    v14 = *(v44 - 8);
    v15 = a4[34];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8);
  if (*(*(v45 - 8) + 84) == a3)
  {
    v10 = v45;
    v14 = *(v45 - 8);
    v15 = a4[35];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C84B0, sub_217B86EE4, sub_217B86F3C);
  if (*(*(v46 - 8) + 84) == a3)
  {
    v10 = v46;
    v14 = *(v46 - 8);
    v15 = a4[36];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8630, sub_217B34774, sub_217B347CC);
  if (*(*(v47 - 8) + 84) == a3)
  {
    v10 = v47;
    v14 = *(v47 - 8);
    v15 = a4[37];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  if (*(*(v48 - 8) + 84) == a3)
  {
    v10 = v48;
    v14 = *(v48 - 8);
    v15 = a4[38];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8718, sub_217BB19F8, sub_217BB1A50);
  if (*(*(v49 - 8) + 84) == a3)
  {
    v10 = v49;
    v14 = *(v49 - 8);
    v15 = a4[39];
    goto LABEL_73;
  }

  sub_217C6F060(0, &qword_2811C8620, sub_217B36858, sub_217B368B0);
  v52 = v51;
  v53 = *(*(v51 - 8) + 56);
  v54 = a1 + a4[40];

  return v53(v54, a2, a2, v52);
}

uint64_t sub_217AA4494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_217D889CC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_217AA45A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_217D8899C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_217D889CC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_217AA46B0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  sub_217A60648(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
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

  sub_217A60648(0, &qword_2811C8728, sub_217A60838, sub_217A6088C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  sub_217A608E0();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  sub_217A60648(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  sub_217A60648(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + a3[9];

  return v20(v21, a2, v19);
}

uint64_t sub_217AA49A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  sub_217A60648(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
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

  sub_217A60648(0, &qword_2811C8728, sub_217A60838, sub_217A6088C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  sub_217A608E0();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  sub_217A60648(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  sub_217A60648(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v23 = a1 + a4[9];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_217AA4CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_217D889CC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_217AA4DBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_217D8899C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_217D889CC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_217AA4EC8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_217A608E0();
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

  sub_217A606C4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  sub_217A606C4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  sub_217A606C4(0, &qword_2811C85E8, sub_217B8C790, sub_217B8C7E8);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = a1 + a3[8];

  return v19(v20, a2, v18);
}

uint64_t sub_217AA5140(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  sub_217A608E0();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  sub_217A606C4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  sub_217A606C4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  sub_217A606C4(0, &qword_2811C85E8, sub_217B8C790, sub_217B8C7E8);
  v20 = v19;
  v21 = *(*(v19 - 8) + 56);
  v22 = a1 + a4[8];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_217AA53C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_217D889CC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 16);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_217AA54D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_217D8899C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_217D889CC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 16) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_217AA55E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_217C7F650(0, &qword_27CBA3188, sub_217C7F3F8, sub_217C7F44C);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_217C7F650(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_217AA5790(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_217C7F650(0, &qword_27CBA3188, sub_217C7F3F8, sub_217C7F44C);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_217C7F650(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_217AA594C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217AA5A0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217AA5AC8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  sub_217A608E0();
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

  sub_217C848A8(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  sub_217C848A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  sub_217C848A8(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  sub_217C848A8(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + a3[9];

  return v20(v21, a2, v19);
}

uint64_t sub_217AA5DC0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  sub_217A608E0();
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

  sub_217C848A8(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  sub_217C848A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  sub_217C848A8(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  sub_217C848A8(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v23 = a1 + a4[9];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_217AA60C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_217D889CC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_217AA61D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_217D8899C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_217D889CC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_217AA62E0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_24:

    return v9(v10, a2, v8);
  }

  sub_217C88A64(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_23:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_24;
  }

  sub_217A608E0();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_23;
  }

  sub_217C88A64(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_23;
  }

  sub_217C88A64(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_23;
  }

  sub_217C88A64(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_23;
  }

  sub_217C88A64(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_23;
  }

  sub_217C88A64(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_23;
  }

  sub_217C88A64(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_23;
  }

  sub_217C88A64(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_23;
  }

  sub_217C88A64(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_23;
  }

  sub_217C88A64(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390);
  v25 = v24;
  v26 = *(*(v24 - 8) + 48);
  v27 = a1 + a3[15];

  return v26(v27, a2, v25);
}

uint64_t sub_217AA68D8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_24:

    return v11(v12, a2, a2, v10);
  }

  sub_217C88A64(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_23:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_24;
  }

  sub_217A608E0();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_23;
  }

  sub_217C88A64(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_23;
  }

  sub_217C88A64(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_23;
  }

  sub_217C88A64(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_23;
  }

  sub_217C88A64(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_23;
  }

  sub_217C88A64(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_23;
  }

  sub_217C88A64(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_23;
  }

  sub_217C88A64(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_23;
  }

  sub_217C88A64(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_23;
  }

  sub_217C88A64(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390);
  v27 = v26;
  v28 = *(*(v26 - 8) + 56);
  v29 = a1 + a4[15];

  return v28(v29, a2, a2, v27);
}

uint64_t sub_217AA6EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_217D889CC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_217AA7004(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_217D889CC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_217AA712C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_217B8A2C8();
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_217AA721C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_217B8A2C8();
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_217AA7318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
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

uint64_t sub_217AA73E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = a2;
  }

  return result;
}

uint64_t sub_217AA74A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_217AA7554(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_22:

    return v9(v10, a2, v8);
  }

  sub_217C931CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_21:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_22;
  }

  sub_217C931CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_21;
  }

  sub_217C931CC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_21;
  }

  sub_217C931CC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_21;
  }

  sub_217C931CC(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_21;
  }

  sub_217C931CC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_21;
  }

  sub_217C931CC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_21;
  }

  sub_217C931CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_21;
  }

  sub_217C931CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_21;
  }

  sub_217C931CC(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
  v24 = v23;
  v25 = *(*(v23 - 8) + 48);
  v26 = a1 + a3[14];

  return v25(v26, a2, v24);
}

uint64_t sub_217AA7B04(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_22:

    return v11(v12, a2, a2, v10);
  }

  sub_217C931CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_21:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_22;
  }

  sub_217C931CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_21;
  }

  sub_217C931CC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_21;
  }

  sub_217C931CC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_21;
  }

  sub_217C931CC(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_21;
  }

  sub_217C931CC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_21;
  }

  sub_217C931CC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_21;
  }

  sub_217C931CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_21;
  }

  sub_217C931CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_21;
  }

  sub_217C931CC(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
  v26 = v25;
  v27 = *(*(v25 - 8) + 56);
  v28 = a1 + a4[14];

  return v27(v28, a2, a2, v26);
}

uint64_t sub_217AA80C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217AA8180(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217AA8274(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_217C97648(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
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

  sub_217C97648(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  sub_217C97648(0, &qword_27CBA3658, sub_217B23D84, sub_217B23DDC);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = a1 + a3[7];

  return v18(v19, a2, v17);
}

uint64_t sub_217AA84A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  sub_217C97648(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  sub_217C97648(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  sub_217C97648(0, &qword_27CBA3658, sub_217B23D84, sub_217B23DDC);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[7];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_217AA86E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217AA87A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
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

uint64_t sub_217AA885C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_217C99220(0, &qword_27CBA36F8, sub_217BB3834, sub_217BB388C);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_217C99220(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_217AA8A0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_217C99220(0, &qword_27CBA36F8, sub_217BB3834, sub_217BB388C);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_217C99220(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_217AA8BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217AA8C84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217AA8D3C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_24:

    return v9(v10, a2, v8);
  }

  sub_217A608E0();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_23:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_24;
  }

  sub_217CA6640(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_23;
  }

  sub_217CA6640(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_23;
  }

  sub_217CA6640(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_23;
  }

  sub_217CA6640(0, &qword_2811C87F8, sub_217BB5324, sub_217BB537C);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_23;
  }

  sub_217CA6640(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_23;
  }

  sub_217CA6640(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_23;
  }

  sub_217CA6640(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_23;
  }

  sub_217CA6640(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_23;
  }

  sub_217CA6640(0, &qword_2811C87B0, sub_217C60A7C, sub_217C60AD4);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_23;
  }

  sub_217CA6640(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v25 = v24;
  v26 = *(*(v24 - 8) + 48);
  v27 = a1 + a3[15];

  return v26(v27, a2, v25);
}

uint64_t sub_217AA9334(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_24:

    return v11(v12, a2, a2, v10);
  }

  sub_217A608E0();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_23:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_24;
  }

  sub_217CA6640(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_23;
  }

  sub_217CA6640(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_23;
  }

  sub_217CA6640(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_23;
  }

  sub_217CA6640(0, &qword_2811C87F8, sub_217BB5324, sub_217BB537C);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_23;
  }

  sub_217CA6640(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_23;
  }

  sub_217CA6640(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_23;
  }

  sub_217CA6640(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_23;
  }

  sub_217CA6640(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_23;
  }

  sub_217CA6640(0, &qword_2811C87B0, sub_217C60A7C, sub_217C60AD4);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_23;
  }

  sub_217CA6640(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v27 = v26;
  v28 = *(*(v26 - 8) + 56);
  v29 = a1 + a4[15];

  return v28(v29, a2, a2, v27);
}

uint64_t sub_217AA9938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_217D889CC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_217AA9A48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_217D8899C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_217D889CC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_217AA9B54(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_217CAB2E0(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
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

  sub_217CAB2E0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  sub_217CAB2E0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = a1 + a3[7];

  return v18(v19, a2, v17);
}

uint64_t sub_217AA9D84(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  sub_217CAB2E0(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  sub_217CAB2E0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  sub_217CAB2E0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[7];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_217AA9FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217AAA080(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
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

uint64_t sub_217AAA178(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_30:

    return v9(v10, a2, v8);
  }

  sub_217CAE3A8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_29:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_30;
  }

  sub_217CAE3A8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_29;
  }

  sub_217CAE3A8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_29;
  }

  sub_217CAE3A8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_29;
  }

  sub_217CAE3A8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_29;
  }

  sub_217CAE3A8(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_29;
  }

  sub_217CAE3A8(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_29;
  }

  sub_217CAE3A8(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_29;
  }

  sub_217CAE3A8(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_29;
  }

  sub_217CAE3A8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_29;
  }

  sub_217CAE3A8(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_29;
  }

  sub_217CAE3A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[16];
    goto LABEL_29;
  }

  sub_217CAE3A8(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  if (*(*(v25 - 8) + 84) == a2)
  {
    v8 = v25;
    v12 = *(v25 - 8);
    v13 = a3[17];
    goto LABEL_29;
  }

  sub_217CAE3A8(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v28 = v27;
  v29 = *(*(v27 - 8) + 48);
  v30 = a1 + a3[18];

  return v29(v30, a2, v28);
}

uint64_t sub_217AAA928(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_30:

    return v11(v12, a2, a2, v10);
  }

  sub_217CAE3A8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_29:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_30;
  }

  sub_217CAE3A8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_29;
  }

  sub_217CAE3A8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_29;
  }

  sub_217CAE3A8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_29;
  }

  sub_217CAE3A8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_29;
  }

  sub_217CAE3A8(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_29;
  }

  sub_217CAE3A8(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_29;
  }

  sub_217CAE3A8(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_29;
  }

  sub_217CAE3A8(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_29;
  }

  sub_217CAE3A8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_29;
  }

  sub_217CAE3A8(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_29;
  }

  sub_217CAE3A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[16];
    goto LABEL_29;
  }

  sub_217CAE3A8(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  if (*(*(v27 - 8) + 84) == a3)
  {
    v10 = v27;
    v14 = *(v27 - 8);
    v15 = a4[17];
    goto LABEL_29;
  }

  sub_217CAE3A8(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v30 = v29;
  v31 = *(*(v29 - 8) + 56);
  v32 = a1 + a4[18];

  return v31(v32, a2, a2, v30);
}

uint64_t sub_217AAB0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
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

uint64_t sub_217AAB1B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_217AAB26C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  sub_217A60740(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
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

  sub_217A60740(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  sub_217A60740(0, &qword_2811C8618, sub_217A63908, sub_217A63994);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  sub_217A608E0();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  sub_217A60740(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + a3[9];

  return v20(v21, a2, v19);
}

uint64_t sub_217AAB564(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  sub_217A60740(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
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

  sub_217A60740(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  sub_217A60740(0, &qword_2811C8618, sub_217A63908, sub_217A63994);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  sub_217A608E0();
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  sub_217A60740(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v23 = a1 + a4[9];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_217AAB868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_217D889CC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_217AAB990(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 16) = (a2 - 1);
  }

  else
  {
    v11 = sub_217D889CC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_217AABB04(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_38:

    return v9(v10, a2, v8);
  }

  sub_217CB7824(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_37:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_38;
  }

  sub_217CB7824(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C85A8, sub_217AEB238, sub_217AEB290);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C8668, sub_217B717FC, sub_217B71854);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C8740, sub_217BEB014, sub_217BEB06C);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[16];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C87B8, sub_217B8CEEC, sub_217B8CF44);
  if (*(*(v25 - 8) + 84) == a2)
  {
    v8 = v25;
    v12 = *(v25 - 8);
    v13 = a3[17];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  if (*(*(v26 - 8) + 84) == a2)
  {
    v8 = v26;
    v12 = *(v26 - 8);
    v13 = a3[18];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  if (*(*(v27 - 8) + 84) == a2)
  {
    v8 = v27;
    v12 = *(v27 - 8);
    v13 = a3[19];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  if (*(*(v28 - 8) + 84) == a2)
  {
    v8 = v28;
    v12 = *(v28 - 8);
    v13 = a3[20];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  if (*(*(v29 - 8) + 84) == a2)
  {
    v8 = v29;
    v12 = *(v29 - 8);
    v13 = a3[21];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v32 = v31;
  v33 = *(*(v31 - 8) + 48);
  v34 = a1 + a3[22];

  return v33(v34, a2, v32);
}

uint64_t sub_217AAC4B4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_38:

    return v11(v12, a2, a2, v10);
  }

  sub_217CB7824(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_37:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_38;
  }

  sub_217CB7824(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C85A8, sub_217AEB238, sub_217AEB290);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C8668, sub_217B717FC, sub_217B71854);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C8740, sub_217BEB014, sub_217BEB06C);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[16];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C87B8, sub_217B8CEEC, sub_217B8CF44);
  if (*(*(v27 - 8) + 84) == a3)
  {
    v10 = v27;
    v14 = *(v27 - 8);
    v15 = a4[17];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  if (*(*(v28 - 8) + 84) == a3)
  {
    v10 = v28;
    v14 = *(v28 - 8);
    v15 = a4[18];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  if (*(*(v29 - 8) + 84) == a3)
  {
    v10 = v29;
    v14 = *(v29 - 8);
    v15 = a4[19];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  if (*(*(v30 - 8) + 84) == a3)
  {
    v10 = v30;
    v14 = *(v30 - 8);
    v15 = a4[20];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  if (*(*(v31 - 8) + 84) == a3)
  {
    v10 = v31;
    v14 = *(v31 - 8);
    v15 = a4[21];
    goto LABEL_37;
  }

  sub_217CB7824(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v34 = v33;
  v35 = *(*(v33 - 8) + 56);
  v36 = a1 + a4[22];

  return v35(v36, a2, a2, v34);
}

uint64_t sub_217AACE70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217AACF30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217AACFEC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_217A62980(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
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

  sub_217A62980(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  sub_217A62980(0, &qword_2811C8808, sub_217A6120C, sub_217A61284);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  sub_217A62980(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = a1 + a3[8];

  return v19(v20, a2, v18);
}

uint64_t sub_217AAD29C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  sub_217A62980(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  sub_217A62980(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  sub_217A62980(0, &qword_2811C8808, sub_217A6120C, sub_217A61284);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  sub_217A62980(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v20 = v19;
  v21 = *(*(v19 - 8) + 56);
  v22 = a1 + a4[8];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_217AAD558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217AAD618(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217AAD8EC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  sub_217CC2090(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
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

  sub_217CC2090(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  sub_217CC2090(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  sub_217CC2090(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  sub_217CC2090(0, &qword_27CBA3C30, sub_217C7CE5C, sub_217C7CEB4);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + a3[9];

  return v20(v21, a2, v19);
}

uint64_t sub_217AADC1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  sub_217CC2090(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
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

  sub_217CC2090(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  sub_217CC2090(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  sub_217CC2090(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  sub_217CC2090(0, &qword_27CBA3C30, sub_217C7CE5C, sub_217C7CEB4);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v23 = a1 + a4[9];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_217AADF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
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

uint64_t sub_217AAE024(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_217AAE0E0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_22:

    return v9(v10, a2, v8);
  }

  sub_217CC8C94(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_21:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_22;
  }

  sub_217CC8C94(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_21;
  }

  sub_217CC8C94(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_21;
  }

  sub_217CC8C94(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_21;
  }

  sub_217CC8C94(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_21;
  }

  sub_217CC8C94(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_21;
  }

  sub_217CC8C94(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_21;
  }

  sub_217CC8C94(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_21;
  }

  sub_217CC8C94(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_21;
  }

  sub_217CC8C94(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v24 = v23;
  v25 = *(*(v23 - 8) + 48);
  v26 = a1 + a3[14];

  return v25(v26, a2, v24);
}

uint64_t sub_217AAE690(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_22:

    return v11(v12, a2, a2, v10);
  }

  sub_217CC8C94(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_21:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_22;
  }

  sub_217CC8C94(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_21;
  }

  sub_217CC8C94(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_21;
  }

  sub_217CC8C94(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_21;
  }

  sub_217CC8C94(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_21;
  }

  sub_217CC8C94(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_21;
  }

  sub_217CC8C94(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_21;
  }

  sub_217CC8C94(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_21;
  }

  sub_217CC8C94(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_21;
  }

  sub_217CC8C94(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v26 = v25;
  v27 = *(*(v25 - 8) + 56);
  v28 = a1 + a4[14];

  return v27(v28, a2, a2, v26);
}

uint64_t sub_217AAEC4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217AAED0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217AAEDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_217CCBFE4();
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_217AAEEB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_217CCBFE4();
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_217AAEFB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217AAF074(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
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

uint64_t sub_217AAF130(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  sub_217BADF88(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  sub_217BADF88(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  sub_217BADF88(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  sub_217BADF88(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  sub_217BADF88(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  sub_217BADF88(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  v20 = v19;
  v21 = *(*(v19 - 8) + 48);
  v22 = a1 + a3[10];

  return v21(v22, a2, v20);
}

uint64_t sub_217AAF4E0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  sub_217BADF88(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  sub_217BADF88(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  sub_217BADF88(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  sub_217BADF88(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  sub_217BADF88(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  sub_217BADF88(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  v22 = v21;
  v23 = *(*(v21 - 8) + 56);
  v24 = a1 + a4[10];

  return v23(v24, a2, a2, v22);
}

uint64_t sub_217AAF89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217AAF95C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
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

uint64_t sub_217AAFA4C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_26:

    return v9(v10, a2, v8);
  }

  sub_217CD0E18(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_25:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_26;
  }

  sub_217CD0E18(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_25;
  }

  sub_217CD0E18(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_25;
  }

  sub_217CD0E18(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_25;
  }

  sub_217CD0E18(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_25;
  }

  sub_217CD0E18(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_25;
  }

  sub_217CD0E18(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_25;
  }

  sub_217CD0E18(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_25;
  }

  sub_217CD0E18(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_25;
  }

  sub_217CD0E18(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_25;
  }

  sub_217CD0E18(0, &qword_2811C8798, sub_217C06360, sub_217C063B4);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_25;
  }

  sub_217CD0E18(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v26 = v25;
  v27 = *(*(v25 - 8) + 48);
  v28 = a1 + a3[16];

  return v27(v28, a2, v26);
}

uint64_t sub_217AB00FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_26:

    return v11(v12, a2, a2, v10);
  }

  sub_217CD0E18(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_25:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_26;
  }

  sub_217CD0E18(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_25;
  }

  sub_217CD0E18(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_25;
  }

  sub_217CD0E18(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_25;
  }

  sub_217CD0E18(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_25;
  }

  sub_217CD0E18(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_25;
  }

  sub_217CD0E18(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_25;
  }

  sub_217CD0E18(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_25;
  }

  sub_217CD0E18(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_25;
  }

  sub_217CD0E18(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_25;
  }

  sub_217CD0E18(0, &qword_2811C8798, sub_217C06360, sub_217C063B4);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_25;
  }

  sub_217CD0E18(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v28 = v27;
  v29 = *(*(v27 - 8) + 56);
  v30 = a1 + a4[16];

  return v29(v30, a2, a2, v28);
}

uint64_t sub_217AB07B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217AB0878(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217AB0934(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  sub_217BB70CC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  sub_217BB70CC(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  sub_217BB70CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  sub_217BB70CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  sub_217BB70CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  sub_217BB70CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v20 = v19;
  v21 = *(*(v19 - 8) + 48);
  v22 = a1 + a3[10];

  return v21(v22, a2, v20);
}

uint64_t sub_217AB0CE4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  sub_217BB70CC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  sub_217BB70CC(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  sub_217BB70CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  sub_217BB70CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  sub_217BB70CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  sub_217BB70CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v22 = v21;
  v23 = *(*(v21 - 8) + 56);
  v24 = a1 + a4[10];

  return v23(v24, a2, a2, v22);
}

uint64_t sub_217AB10A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217AB1160(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
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

uint64_t sub_217AB121C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  sub_217CD761C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  sub_217CD761C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  sub_217CD761C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  sub_217CD761C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  sub_217CD761C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  sub_217CD761C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v20 = v19;
  v21 = *(*(v19 - 8) + 48);
  v22 = a1 + a3[10];

  return v21(v22, a2, v20);
}

uint64_t sub_217AB15CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  sub_217CD761C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  sub_217CD761C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  sub_217CD761C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  sub_217CD761C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  sub_217CD761C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  sub_217CD761C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v22 = v21;
  v23 = *(*(v21 - 8) + 56);
  v24 = a1 + a4[10];

  return v23(v24, a2, a2, v22);
}

uint64_t sub_217AB1988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217AB1A48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217AB1B04(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  sub_217CD761C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  sub_217CD761C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  sub_217CD761C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  sub_217CD761C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  sub_217CD761C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  sub_217CD761C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v20 = v19;
  v21 = *(*(v19 - 8) + 48);
  v22 = a1 + a3[10];

  return v21(v22, a2, v20);
}

uint64_t sub_217AB1EB4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  sub_217CD761C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  sub_217CD761C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  sub_217CD761C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  sub_217CD761C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  sub_217CD761C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  sub_217CD761C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v22 = v21;
  v23 = *(*(v21 - 8) + 56);
  v24 = a1 + a4[10];

  return v23(v24, a2, a2, v22);
}

uint64_t sub_217AB2270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217AB2330(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217AB242C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_32:

    return v9(v10, a2, v8);
  }

  sub_217A608E0();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_31:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_32;
  }

  sub_217C06810(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[16];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C8798, sub_217C06360, sub_217C063B4);
  if (*(*(v25 - 8) + 84) == a2)
  {
    v8 = v25;
    v12 = *(v25 - 8);
    v13 = a3[17];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C8520, sub_217C065B8, sub_217C0660C);
  if (*(*(v26 - 8) + 84) == a2)
  {
    v8 = v26;
    v12 = *(v26 - 8);
    v13 = a3[18];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v29 = v28;
  v30 = *(*(v28 - 8) + 48);
  v31 = a1 + a3[19];

  return v30(v31, a2, v29);
}

uint64_t sub_217AB2C24(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_32:

    return v11(v12, a2, a2, v10);
  }

  sub_217A608E0();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_31:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_32;
  }

  sub_217C06810(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[16];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C8798, sub_217C06360, sub_217C063B4);
  if (*(*(v27 - 8) + 84) == a3)
  {
    v10 = v27;
    v14 = *(v27 - 8);
    v15 = a4[17];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C8520, sub_217C065B8, sub_217C0660C);
  if (*(*(v28 - 8) + 84) == a3)
  {
    v10 = v28;
    v14 = *(v28 - 8);
    v15 = a4[18];
    goto LABEL_31;
  }

  sub_217C06810(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v31 = v30;
  v32 = *(*(v30 - 8) + 56);
  v33 = a1 + a4[19];

  return v32(v33, a2, a2, v31);
}

uint64_t sub_217AB3428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_217D889CC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_217AB3538(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_217D8899C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_217D889CC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_217AB3644()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_217D881AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  v8 = sub_217D87BAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v12 = *(v9 + 64);
  v13 = v5 | v10;
  (*(v4 + 8))(v0 + v6, v3);
  (*(v9 + 8))(v0 + v11, v8);

  return MEMORY[0x2821FE8E8](v0, v11 + v12, v13 | 7);
}

uint64_t sub_217AB3790(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_217CEA7C0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
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

  sub_217CEA7C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  sub_217CEA7C0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  sub_217CEA7C0(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = a1 + a3[8];

  return v19(v20, a2, v18);
}

uint64_t sub_217AB3A40(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  sub_217CEA7C0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  sub_217CEA7C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  sub_217CEA7C0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  sub_217CEA7C0(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  v20 = v19;
  v21 = *(*(v19 - 8) + 56);
  v22 = a1 + a4[8];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_217AB3CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217AB3DBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217AB3E78(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_217CED224(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
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

  sub_217CED224(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  sub_217CED224(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  sub_217CED224(0, &qword_2811C8620, sub_217B36858, sub_217B368B0);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = a1 + a3[8];

  return v19(v20, a2, v18);
}

uint64_t sub_217AB4128(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  sub_217CED224(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  sub_217CED224(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  sub_217CED224(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  sub_217CED224(0, &qword_2811C8620, sub_217B36858, sub_217B368B0);
  v20 = v19;
  v21 = *(*(v19 - 8) + 56);
  v22 = a1 + a4[8];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_217AB43E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217AB44A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217AB4560(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_217A608E0();
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

  sub_217CF19C4(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  sub_217CF19C4(0, &qword_27CBA4448, sub_217BE5018, sub_217BE5070);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  sub_217CF19C4(0, &qword_2811C8818, sub_217B24784, sub_217B247D8);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = a1 + a3[8];

  return v19(v20, a2, v18);
}

uint64_t sub_217AB47D8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  sub_217A608E0();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  sub_217CF19C4(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  sub_217CF19C4(0, &qword_27CBA4448, sub_217BE5018, sub_217BE5070);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  sub_217CF19C4(0, &qword_2811C8818, sub_217B24784, sub_217B247D8);
  v20 = v19;
  v21 = *(*(v19 - 8) + 56);
  v22 = a1 + a4[8];

  return v21(v22, a2, a2, v20);
}