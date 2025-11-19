uint64_t sub_217AB4A5C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_217AB4B6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_217AB4DE8(uint64_t a1, uint64_t a2, uint64_t a3)
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

  sub_217A62CE4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_217A62CE4(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_217AB4F98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

  sub_217A62CE4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_217A62CE4(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_217AB5154(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_217AB5220(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_217AB52DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_217D87C9C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_217AB5388(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_217D87C9C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_217AB543C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_217AB547C(uint64_t a1, uint64_t a2, int *a3)
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

uint64_t sub_217AB57AC(uint64_t a1, uint64_t a2, int a3, int *a4)
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

uint64_t sub_217AB5AE8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_217AB5BB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_217AB5CB0(uint64_t a1, uint64_t a2, int *a3)
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

  sub_217D04A08(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
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

  sub_217D04A08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_15;
  }

  sub_217D04A08(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_15;
  }

  sub_217D04A08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_15;
  }

  sub_217D04A08(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_15;
  }

  sub_217D04A08(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_15;
  }

  sub_217D04A08(0, &qword_27CBA4808, sub_217B71028, sub_217B71080);
  v21 = v20;
  v22 = *(*(v20 - 8) + 48);
  v23 = a1 + a3[11];

  return v22(v23, a2, v21);
}

uint64_t sub_217AB60E0(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  sub_217D04A08(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
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

  sub_217D04A08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_15;
  }

  sub_217D04A08(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_15;
  }

  sub_217D04A08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_15;
  }

  sub_217D04A08(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_15;
  }

  sub_217D04A08(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_15;
  }

  sub_217D04A08(0, &qword_27CBA4808, sub_217B71028, sub_217B71080);
  v23 = v22;
  v24 = *(*(v22 - 8) + 56);
  v25 = a1 + a4[11];

  return v24(v25, a2, a2, v23);
}

uint64_t sub_217AB651C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_217AB65DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_217AB6698(uint64_t a1, uint64_t a2, int *a3)
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

uint64_t sub_217AB6948(uint64_t a1, uint64_t a2, int a3, int *a4)
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

uint64_t sub_217AB6C04(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_217AB6CC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_217AB6D80(uint64_t a1, uint64_t a2, int *a3)
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

  sub_217D0C208(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
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

  sub_217D0C208(0, &qword_27CBA49E8, sub_217BA2E90, sub_217BA2EE8);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  sub_217D0C208(0, &qword_27CBA1D20, sub_217B09D84, sub_217B09DDC);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  sub_217D0C208(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  sub_217D0C208(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + a3[9];

  return v20(v21, a2, v19);
}

uint64_t sub_217AB70B0(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  sub_217D0C208(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
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

  sub_217D0C208(0, &qword_27CBA49E8, sub_217BA2E90, sub_217BA2EE8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  sub_217D0C208(0, &qword_27CBA1D20, sub_217B09D84, sub_217B09DDC);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  sub_217D0C208(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  sub_217D0C208(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v23 = a1 + a4[9];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_217AB73EC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_217AB74AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_217AB7578()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_217AB75C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_217AB76D0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_18:

    return v9(v10, a2, v8);
  }

  sub_217D13EE0(0, &qword_27CBA4B78, sub_217C8105C, sub_217C810B4);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_17:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_18;
  }

  sub_217D13EE0(0, &qword_27CBA4B80, sub_217B40628, sub_217B40680);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_17;
  }

  sub_217D13EE0(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_17;
  }

  sub_217D13EE0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_17;
  }

  sub_217D13EE0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_17;
  }

  sub_217D13EE0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_17;
  }

  sub_217D13EE0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_17;
  }

  sub_217D13EE0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v22 = v21;
  v23 = *(*(v21 - 8) + 48);
  v24 = a1 + a3[12];

  return v23(v24, a2, v22);
}

uint64_t sub_217AB7B80(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_18:

    return v11(v12, a2, a2, v10);
  }

  sub_217D13EE0(0, &qword_27CBA4B78, sub_217C8105C, sub_217C810B4);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_17:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_18;
  }

  sub_217D13EE0(0, &qword_27CBA4B80, sub_217B40628, sub_217B40680);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_17;
  }

  sub_217D13EE0(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_17;
  }

  sub_217D13EE0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_17;
  }

  sub_217D13EE0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_17;
  }

  sub_217D13EE0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_17;
  }

  sub_217D13EE0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_17;
  }

  sub_217D13EE0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v24 = v23;
  v25 = *(*(v23 - 8) + 56);
  v26 = a1 + a4[12];

  return v25(v26, a2, a2, v24);
}

uint64_t sub_217AB803C(uint64_t a1, uint64_t a2, uint64_t a3)
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_217AB8108(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_217AB81C4(uint64_t a1, uint64_t a2, uint64_t a3)
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

  sub_217D16F0C(0, &qword_2811C8850, sub_217CFD294, sub_217CFD2EC);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_217D16F0C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_217AB8374(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

  sub_217D16F0C(0, &qword_2811C8850, sub_217CFD294, sub_217CFD2EC);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_217D16F0C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_217AB8530(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_217AB85FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_217AB86B8(uint64_t a1, uint64_t a2, int *a3)
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

  sub_217D19D30(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_15;
  }

  sub_217D19D30(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_15;
  }

  sub_217D19D30(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_15;
  }

  sub_217D19D30(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_15;
  }

  sub_217D19D30(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_15;
  }

  sub_217D19D30(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  v21 = v20;
  v22 = *(*(v20 - 8) + 48);
  v23 = a1 + a3[11];

  return v22(v23, a2, v21);
}

uint64_t sub_217AB8AB0(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  sub_217D19D30(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_15;
  }

  sub_217D19D30(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_15;
  }

  sub_217D19D30(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_15;
  }

  sub_217D19D30(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_15;
  }

  sub_217D19D30(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_15;
  }

  sub_217D19D30(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  v23 = v22;
  v24 = *(*(v22 - 8) + 56);
  v25 = a1 + a4[11];

  return v24(v25, a2, a2, v23);
}

uint64_t sub_217AB8EB4(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v14 = *(a1 + *(a3 + 40) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_217AB8FC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
      *(a1 + *(a4 + 40) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_217AB90D0(uint64_t a1, uint64_t a2, int *a3)
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

  sub_217A608E0();
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

  sub_217D1DD8C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  v23 = v22;
  v24 = *(*(v22 - 8) + 48);
  v25 = a1 + a3[13];

  return v24(v25, a2, v23);
}

uint64_t sub_217AB95C8(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  sub_217A608E0();
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

  sub_217D1DD8C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v27 = a1 + a4[13];

  return v26(v27, a2, a2, v25);
}

uint64_t sub_217AB9ACC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_217AB9BDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_217AB9CE8(uint64_t a1, uint64_t a2)
{
  sub_217D22308();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_217AB9D54(uint64_t a1, uint64_t a2)
{
  sub_217D22308();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_217AB9DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D889CC();
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

uint64_t sub_217AB9E98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D889CC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_217AB9F50(uint64_t a1, uint64_t a2, uint64_t a3)
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

  sub_217A608E0();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_217D25828();
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_217ABA090(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

  sub_217A608E0();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_217D25828();
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_217ABA1DC(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_217ABA2F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
      *(a1 + *(a4 + 24) + 16) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_217ABA404(uint64_t a1, uint64_t a2, int *a3)
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

uint64_t sub_217ABA6FC(uint64_t a1, uint64_t a2, int a3, int *a4)
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

uint64_t sub_217ABAA00(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_217ABAB28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_217ABAC94(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_34:

    return v9(v10, a2, v8);
  }

  sub_217A608E0();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_33:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_34;
  }

  sub_217D2BEC0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[16];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  if (*(*(v25 - 8) + 84) == a2)
  {
    v8 = v25;
    v12 = *(v25 - 8);
    v13 = a3[17];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C8578, sub_217CB56A4, sub_217CB56FC);
  if (*(*(v26 - 8) + 84) == a2)
  {
    v8 = v26;
    v12 = *(v26 - 8);
    v13 = a3[18];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84);
  if (*(*(v27 - 8) + 84) == a2)
  {
    v8 = v27;
    v12 = *(v27 - 8);
    v13 = a3[19];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v30 = v29;
  v31 = *(*(v29 - 8) + 48);
  v32 = a1 + a3[20];

  return v31(v32, a2, v30);
}

uint64_t sub_217ABB50C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_34:

    return v11(v12, a2, a2, v10);
  }

  sub_217A608E0();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_33:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_34;
  }

  sub_217D2BEC0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[16];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  if (*(*(v27 - 8) + 84) == a3)
  {
    v10 = v27;
    v14 = *(v27 - 8);
    v15 = a4[17];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C8578, sub_217CB56A4, sub_217CB56FC);
  if (*(*(v28 - 8) + 84) == a3)
  {
    v10 = v28;
    v14 = *(v28 - 8);
    v15 = a4[18];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84);
  if (*(*(v29 - 8) + 84) == a3)
  {
    v10 = v29;
    v14 = *(v29 - 8);
    v15 = a4[19];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v32 = v31;
  v33 = *(*(v31 - 8) + 56);
  v34 = a1 + a4[20];

  return v33(v34, a2, a2, v32);
}

uint64_t sub_217ABBD90(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v14 = *(a1 + *(a3 + 48) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_217ABBEA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
      *(a1 + *(a4 + 48) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_217ABC010(uint64_t a1, uint64_t a2, int *a3)
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

  sub_217D37668(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
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

  sub_217D37668(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  sub_217D37668(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  sub_217D37668(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = a1 + a3[8];

  return v19(v20, a2, v18);
}

uint64_t sub_217ABC2C0(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  sub_217D37668(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
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

  sub_217D37668(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  sub_217D37668(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  sub_217D37668(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v20 = v19;
  v21 = *(*(v19 - 8) + 56);
  v22 = a1 + a4[8];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_217ABC57C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_217ABC63C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_217ABC6F8(uint64_t a1, uint64_t a2, uint64_t a3)
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

  sub_217A62ED4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_217A62ED4(0, &qword_27CBA50D0, sub_217BB03D8, sub_217A69CD0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_217ABC8A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

  sub_217A62ED4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_217A62ED4(0, &qword_27CBA50D0, sub_217BB03D8, sub_217A69CD0);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_217ABCA64(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_217ABCB30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_217ABCBEC(uint64_t a1, uint64_t a2, int *a3)
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

  sub_217D3D708(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
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

  sub_217D3D708(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v24 = v23;
  v25 = *(*(v23 - 8) + 48);
  v26 = a1 + a3[14];

  return v25(v26, a2, v24);
}

uint64_t sub_217ABD19C(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  sub_217D3D708(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
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

  sub_217D3D708(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v26 = v25;
  v27 = *(*(v25 - 8) + 56);
  v28 = a1 + a4[14];

  return v27(v28, a2, a2, v26);
}

uint64_t sub_217ABD758(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_217ABD818(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_217ABD8D4(uint64_t a1, uint64_t a2, int *a3)
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

  sub_217D4181C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
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

  sub_217D4181C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v23 = v22;
  v24 = *(*(v22 - 8) + 48);
  v25 = a1 + a3[13];

  return v24(v25, a2, v23);
}

uint64_t sub_217ABDE04(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  sub_217D4181C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
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

  sub_217D4181C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v27 = a1 + a4[13];

  return v26(v27, a2, a2, v25);
}

uint64_t sub_217ABE340(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_217ABE400(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_217ABE4BC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217D454DC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_20:

    return v9(v10, a2, v8);
  }

  sub_217A6018C();
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

  sub_217D454DC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  sub_217A608E0();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  sub_217D454DC(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  sub_217D454DC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  sub_217D454DC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  sub_217D454DC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  sub_217D454DC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  sub_217D454DC(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  v23 = v22;
  v24 = *(*(v22 - 8) + 48);
  v25 = a1 + a3[13];

  return v24(v25, a2, v23);
}

uint64_t sub_217ABE9B4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217D454DC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_20:

    return v11(v12, a2, a2, v10);
  }

  sub_217A6018C();
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

  sub_217D454DC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  sub_217A608E0();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  sub_217D454DC(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  sub_217D454DC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  sub_217D454DC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  sub_217D454DC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  sub_217D454DC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  sub_217D454DC(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v27 = a1 + a4[13];

  return v26(v27, a2, a2, v25);
}

uint64_t sub_217ABEEB8(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v13 = sub_217D889CC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_217ABEFDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_217D8899C();
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
      v13 = sub_217D889CC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_217ABF138(uint64_t a1, uint64_t a2, int *a3)
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

  sub_217D49AC4(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
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

  sub_217D49AC4(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_27;
  }

  sub_217A608E0();
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C8680, sub_217C818E8, sub_217C81940);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[16];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4);
  v27 = v26;
  v28 = *(*(v26 - 8) + 48);
  v29 = a1 + a3[17];

  return v28(v29, a2, v27);
}

uint64_t sub_217ABF830(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  sub_217D49AC4(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
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

  sub_217D49AC4(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_27;
  }

  sub_217A608E0();
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C8680, sub_217C818E8, sub_217C81940);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[16];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4);
  v29 = v28;
  v30 = *(*(v28 - 8) + 56);
  v31 = a1 + a4[17];

  return v30(v31, a2, a2, v29);
}

uint64_t sub_217ABFF34(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_217AC005C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_217AC01C0(uint64_t a1, uint64_t a2, int *a3)
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

  sub_217A608E0();
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

  sub_217D4F388(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[16];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390);
  if (*(*(v25 - 8) + 84) == a2)
  {
    v8 = v25;
    v12 = *(v25 - 8);
    v13 = a3[17];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C8680, sub_217C818E8, sub_217C81940);
  v28 = v27;
  v29 = *(*(v27 - 8) + 48);
  v30 = a1 + a3[18];

  return v29(v30, a2, v28);
}

uint64_t sub_217AC0938(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  sub_217A608E0();
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

  sub_217D4F388(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[16];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390);
  if (*(*(v27 - 8) + 84) == a3)
  {
    v10 = v27;
    v14 = *(v27 - 8);
    v15 = a4[17];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C8680, sub_217C818E8, sub_217C81940);
  v30 = v29;
  v31 = *(*(v29 - 8) + 56);
  v32 = a1 + a4[18];

  return v31(v32, a2, a2, v30);
}

uint64_t sub_217AC10BC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_217AC11CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_217AC12D8(uint64_t a1, uint64_t a2, int *a3)
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

  sub_217D4181C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
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

  sub_217D4181C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v23 = v22;
  v24 = *(*(v22 - 8) + 48);
  v25 = a1 + a3[13];

  return v24(v25, a2, v23);
}

uint64_t sub_217AC1808(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  sub_217D4181C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
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

  sub_217D4181C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v27 = a1 + a4[13];

  return v26(v27, a2, a2, v25);
}

uint64_t sub_217AC1D44(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_217AC1E04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_217AC1F20(uint64_t a1, uint64_t a2, int *a3)
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

uint64_t sub_217AC2450(uint64_t a1, uint64_t a2, int a3, int *a4)
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

uint64_t sub_217AC298C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_217AC2A4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_217AC2B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D87C9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 64) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217AC2C04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D87C9C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 64) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217AC2CC0(uint64_t a1, uint64_t a2, uint64_t a3)
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

  sub_217D5D264(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_217D5D264(0, &qword_27CBA4B78, sub_217C8105C, sub_217C810B4);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_217AC2E70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

  sub_217D5D264(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_217D5D264(0, &qword_27CBA4B78, sub_217C8105C, sub_217C810B4);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_217AC302C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_217AC30EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_217AC31E4(uint64_t a1, uint64_t a2, int *a3)
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

  sub_217A608E0();
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

  sub_217D648FC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C86D8, sub_217BABA38, sub_217BABA90);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C8758, sub_217C553E8, sub_217C55440);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[16];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  if (*(*(v25 - 8) + 84) == a2)
  {
    v8 = v25;
    v12 = *(v25 - 8);
    v13 = a3[17];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C8620, sub_217B36858, sub_217B368B0);
  v28 = v27;
  v29 = *(*(v27 - 8) + 48);
  v30 = a1 + a3[18];

  return v29(v30, a2, v28);
}

uint64_t sub_217AC395C(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  sub_217A608E0();
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

  sub_217D648FC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C86D8, sub_217BABA38, sub_217BABA90);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C8758, sub_217C553E8, sub_217C55440);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[16];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  if (*(*(v27 - 8) + 84) == a3)
  {
    v10 = v27;
    v14 = *(v27 - 8);
    v15 = a4[17];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C8620, sub_217B36858, sub_217B368B0);
  v30 = v29;
  v31 = *(*(v29 - 8) + 56);
  v32 = a1 + a4[18];

  return v31(v32, a2, a2, v30);
}

uint64_t sub_217AC40E0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_217AC41F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_217AC42FC(uint64_t a1, uint64_t a2, int *a3)
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

  sub_217D699F4(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
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

  sub_217D699F4(0, &qword_2811C85F0, sub_217C68C64, sub_217C68CBC);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  sub_217D699F4(0, &qword_2811C8688, sub_217BCE868, sub_217BCE8C0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  sub_217D699F4(0, &qword_2811C87A0, sub_217B1D214, sub_217B1D26C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  sub_217D699F4(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  sub_217D699F4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v20 = v19;
  v21 = *(*(v19 - 8) + 48);
  v22 = a1 + a3[10];

  return v21(v22, a2, v20);
}

uint64_t sub_217AC46AC(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  sub_217D699F4(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
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

  sub_217D699F4(0, &qword_2811C85F0, sub_217C68C64, sub_217C68CBC);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  sub_217D699F4(0, &qword_2811C8688, sub_217BCE868, sub_217BCE8C0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  sub_217D699F4(0, &qword_2811C87A0, sub_217B1D214, sub_217B1D26C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  sub_217D699F4(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  sub_217D699F4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v22 = v21;
  v23 = *(*(v21 - 8) + 56);
  v24 = a1 + a4[10];

  return v23(v24, a2, a2, v22);
}

uint64_t sub_217AC4A68(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_217AC4B28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_217AC4BE4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217D6D008(0, &qword_2811C8740, sub_217BEB014, sub_217BEB06C);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_20:

    return v9(v10, a2, v8);
  }

  sub_217A6018C();
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

  sub_217A608E0();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C8550, sub_217C9C618, sub_217C9C670);
  v23 = v22;
  v24 = *(*(v22 - 8) + 48);
  v25 = a1 + a3[13];

  return v24(v25, a2, v23);
}

uint64_t sub_217AC50DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217D6D008(0, &qword_2811C8740, sub_217BEB014, sub_217BEB06C);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_20:

    return v11(v12, a2, a2, v10);
  }

  sub_217A6018C();
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

  sub_217A608E0();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C8550, sub_217C9C618, sub_217C9C670);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v27 = a1 + a4[13];

  return v26(v27, a2, a2, v25);
}

uint64_t sub_217AC55E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_217D8899C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_217D889CC();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[10] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_217AC56EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_217D8899C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_217D889CC();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[10] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_217AC57F4(uint64_t a1, uint64_t a2, int *a3)
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

  sub_217D70598(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
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

  sub_217D70598(0, &qword_27CBA5840, sub_217B354F0, sub_217B35548);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  sub_217D70598(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  sub_217D70598(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  sub_217D70598(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  sub_217D7078C();
  v20 = v19;
  v21 = *(*(v19 - 8) + 48);
  v22 = a1 + a3[10];

  return v21(v22, a2, v20);
}

uint64_t sub_217AC5B6C(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  sub_217D70598(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
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

  sub_217D70598(0, &qword_27CBA5840, sub_217B354F0, sub_217B35548);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  sub_217D70598(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  sub_217D70598(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  sub_217D70598(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  sub_217D7078C();
  v22 = v21;
  v23 = *(*(v21 - 8) + 56);
  v24 = a1 + a4[10];

  return v23(v24, a2, a2, v22);
}

uint64_t sub_217AC5EF0(uint64_t a1, uint64_t a2, uint64_t a3)
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_217AC5FBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_217AC60B0(uint64_t a1, uint64_t a2, int *a3)
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

  sub_217A608E0();
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

  sub_217A607BC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C8670, sub_217A5D48C, sub_217A5D580);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C86A0, sub_217A5DA70, sub_217A5E184);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[16];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C);
  v27 = v26;
  v28 = *(*(v26 - 8) + 48);
  v29 = a1 + a3[17];

  return v28(v29, a2, v27);
}

uint64_t sub_217AC67A8(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  sub_217A608E0();
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

  sub_217A607BC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C8670, sub_217A5D48C, sub_217A5D580);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C86A0, sub_217A5DA70, sub_217A5E184);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[16];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C);
  v29 = v28;
  v30 = *(*(v28 - 8) + 56);
  v31 = a1 + a4[17];

  return v30(v31, a2, a2, v29);
}

uint64_t sub_217AC6EAC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_217AC6FBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_217AC70C8(uint64_t a1, uint64_t a2, int *a3)
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

  sub_217D7D038(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
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

  sub_217D7D038(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_15;
  }

  sub_217D7D038(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_15;
  }

  sub_217D7D038(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_15;
  }

  sub_217D7D038(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_15;
  }

  sub_217D7D038(0, &qword_27CBA5958, sub_217CEF580, sub_217CEF5D8);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_15;
  }

  sub_217D7D038(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  v21 = v20;
  v22 = *(*(v20 - 8) + 48);
  v23 = a1 + a3[11];

  return v22(v23, a2, v21);
}

uint64_t sub_217AC74F8(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  sub_217D7D038(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
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

  sub_217D7D038(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_15;
  }

  sub_217D7D038(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_15;
  }

  sub_217D7D038(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_15;
  }

  sub_217D7D038(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_15;
  }

  sub_217D7D038(0, &qword_27CBA5958, sub_217CEF580, sub_217CEF5D8);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_15;
  }

  sub_217D7D038(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  v23 = v22;
  v24 = *(*(v22 - 8) + 56);
  v25 = a1 + a4[11];

  return v24(v25, a2, a2, v23);
}

uint64_t sub_217AC7934(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_217AC79F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_217AC7AB0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_18:

    return v9(v10, a2, v8);
  }

  sub_217A608E0();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_17:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_18;
  }

  sub_217D802D8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_17;
  }

  sub_217D802D8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_17;
  }

  sub_217D802D8(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_17;
  }

  sub_217D802D8(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_17;
  }

  sub_217D802D8(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_17;
  }

  sub_217D802D8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_17;
  }

  sub_217D802D8(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC);
  v22 = v21;
  v23 = *(*(v21 - 8) + 48);
  v24 = a1 + a3[12];

  return v23(v24, a2, v22);
}

uint64_t sub_217AC7F28(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_18:

    return v11(v12, a2, a2, v10);
  }

  sub_217A608E0();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_17:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_18;
  }

  sub_217D802D8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_17;
  }

  sub_217D802D8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_17;
  }

  sub_217D802D8(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_17;
  }

  sub_217D802D8(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_17;
  }

  sub_217D802D8(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_17;
  }

  sub_217D802D8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_17;
  }

  sub_217D802D8(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC);
  v24 = v23;
  v25 = *(*(v23 - 8) + 56);
  v26 = a1 + a4[12];

  return v25(v26, a2, a2, v24);
}

uint64_t sub_217AC83AC(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v14 = *(a1 + *(a3 + 40) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_217AC84BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
      *(a1 + *(a4 + 40) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t get_enum_tag_for_layout_string_13NewsAnalytics20WidgetEngagementDataVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t BannerAdData.init(traits:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217AC8850();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v23[-v12];
  sub_217AC88A8(a1, &v23[-v12]);
  v14 = sub_217D88F5C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v13, 1, v14) == 1)
  {
    sub_217AC890C(v13);
    v17 = 0;
  }

  else
  {
    v17 = sub_217D88F4C();
    (*(v15 + 8))(v13, v14);
  }

  v24 = v17 & 1;
  sub_217AC88A8(a1, v11);
  if (v16(v11, 1, v14) == 1)
  {
    sub_217AC890C(v11);
    v18 = 0;
  }

  else
  {
    v18 = sub_217D88F3C();
    (*(v15 + 8))(v11, v14);
  }

  v19 = v18 & 1;
  v25 = v18 & 1;
  sub_217AC88A8(a1, v8);
  if (v16(v8, 1, v14) == 1)
  {
    sub_217AC890C(a1);
    result = sub_217AC890C(v8);
    v21 = 0;
  }

  else
  {
    v21 = sub_217D88F2C();
    sub_217AC890C(a1);
    result = (*(v15 + 8))(v8, v14);
    v19 = v25;
  }

  v22 = v24;
  *a2 = v21 & 1;
  a2[1] = v19;
  a2[2] = v22;
  return result;
}

void sub_217AC8850()
{
  if (!qword_2811BCF08)
  {
    sub_217D88F5C();
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCF08);
    }
  }
}

uint64_t sub_217AC88A8(uint64_t a1, uint64_t a2)
{
  sub_217AC8850();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AC890C(uint64_t a1)
{
  sub_217AC8850();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217AC89A4()
{
  v1 = *v0;
  sub_217D89E1C();
  MEMORY[0x21CEAD4A0](v1);
  return sub_217D89E3C();
}

uint64_t sub_217AC89EC()
{
  v1 = *v0;
  sub_217D89E1C();
  MEMORY[0x21CEAD4A0](v1);
  return sub_217D89E3C();
}

uint64_t sub_217AC8A30(uint64_t a1, id *a2)
{
  result = sub_217D8952C();
  *a2 = 0;
  return result;
}

uint64_t sub_217AC8AA8(uint64_t a1, id *a2)
{
  v3 = sub_217D8953C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_217AC8B28@<X0>(uint64_t *a1@<X8>)
{
  sub_217D8954C();
  v2 = sub_217D8951C();

  *a1 = v2;
  return result;
}

uint64_t sub_217AC8B74(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x21CEACDE0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_217AC8BC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_217D8977C();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_217AC8C20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217D8978C();
  *a1 = result;
  return result;
}

uint64_t sub_217AC8C48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_217D8954C();
  v6 = v5;
  if (v4 == sub_217D8954C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();
  }

  return v9 & 1;
}

uint64_t sub_217AC8CD0()
{
  sub_217A572CC(&qword_2811BCC40, type metadata accessor for NSKeyValueChangeKey);
  sub_217A572CC(&qword_27CB9E618, type metadata accessor for NSKeyValueChangeKey);

  return sub_217D89AFC();
}

uint64_t sub_217AC8E1C()
{
  sub_217A572CC(&qword_27CB9E6E8, type metadata accessor for UIContentSizeCategory);
  sub_217A572CC(&qword_27CB9E6F0, type metadata accessor for UIContentSizeCategory);

  return sub_217D89AFC();
}

uint64_t sub_217AC8ED8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_217D8951C();

  *a2 = v5;
  return result;
}

uint64_t sub_217AC8F20()
{
  sub_217A572CC(&qword_27CB9E6D8, type metadata accessor for OpenURLOptionsKey);
  sub_217A572CC(&qword_27CB9E6E0, type metadata accessor for OpenURLOptionsKey);

  return sub_217D89AFC();
}

uint64_t sub_217AC8FDC()
{
  v2 = *v0;
  sub_217A572CC(&qword_27CB9E600, type metadata accessor for UIBackgroundTaskIdentifier);
  sub_217A572CC(&unk_27CB9E608, type metadata accessor for UIBackgroundTaskIdentifier);
  return sub_217D89AFC();
}

uint64_t sub_217AC9128()
{
  v1 = *v0;
  v2 = sub_217D8954C();
  v3 = MEMORY[0x21CEACCC0](v2);

  return v3;
}

uint64_t sub_217AC9164()
{
  v1 = *v0;
  sub_217D8954C();
  sub_217D895CC();
}

uint64_t sub_217AC9210(uint64_t a1, int a2)
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

uint64_t sub_217AC9230(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for FeedPositionData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FeedPositionData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t StartMethodData.sessionStartSource.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t StartMethodData.sessionStartSource.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217AC95E0()
{
  sub_217D89E1C();
  MEMORY[0x21CEAD4A0](0);
  return sub_217D89E3C();
}

uint64_t sub_217AC964C()
{
  sub_217D89E1C();
  MEMORY[0x21CEAD4A0](0);
  return sub_217D89E3C();
}

uint64_t sub_217AC96A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000217DCCAE0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217AC973C(uint64_t a1)
{
  v2 = sub_217AC9900();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AC9778(uint64_t a1)
{
  v2 = sub_217AC9900();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StartMethodData.encode(to:)(void *a1)
{
  sub_217AC9AD8(0, &qword_2811BC738, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AC9900();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217AC9900()
{
  result = qword_2811C60C0;
  if (!qword_2811C60C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C60C0);
  }

  return result;
}

uint64_t StartMethodData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217AC9AD8(0, &qword_27CB9E9B0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AC9900();
  sub_217D89E5C();
  if (!v2)
  {
    v12 = sub_217D89B8C();
    v14 = v13;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217AC9AD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AC9900();
    v7 = a3(a1, &type metadata for StartMethodData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217AC9B88(void *a1)
{
  sub_217AC9AD8(0, &qword_2811BC738, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AC9900();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_217AC9CD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t sub_217AC9D40()
{
  result = qword_27CB9E9B8;
  if (!qword_27CB9E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9E9B8);
  }

  return result;
}

unint64_t sub_217AC9D98()
{
  result = qword_2811C60B0;
  if (!qword_2811C60B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C60B0);
  }

  return result;
}

unint64_t sub_217AC9DF0()
{
  result = qword_2811C60B8;
  if (!qword_2811C60B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C60B8);
  }

  return result;
}

uint64_t sub_217AC9EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x76416D6574497369 && a2 == 0xEF656C62616C6961)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217AC9F38(uint64_t a1)
{
  v2 = sub_217ACA0F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AC9F74(uint64_t a1)
{
  v2 = sub_217ACA0F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OfflineModeData.encode(to:)(void *a1)
{
  sub_217ACA2D0(0, &qword_2811BC758, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217ACA0F8();
  sub_217D89E7C();
  sub_217D89C7C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217ACA0F8()
{
  result = qword_2811C6600[0];
  if (!qword_2811C6600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C6600);
  }

  return result;
}

uint64_t OfflineModeData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217ACA2D0(0, &qword_2811BCAB0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217ACA0F8();
  sub_217D89E5C();
  if (!v2)
  {
    v12 = sub_217D89B9C();
    (*(v7 + 8))(v10, v6);
    *a2 = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217ACA2D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217ACA0F8();
    v7 = a3(a1, &type metadata for OfflineModeData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217ACA338()
{
  result = qword_2811C65E0;
  if (!qword_2811C65E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C65E0);
  }

  return result;
}

unint64_t sub_217ACA390()
{
  result = qword_2811C65E8;
  if (!qword_2811C65E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C65E8);
  }

  return result;
}

uint64_t sub_217ACA3FC(void *a1)
{
  sub_217ACA2D0(0, &qword_2811BC758, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217ACA0F8();
  sub_217D89E7C();
  sub_217D89C7C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t getEnumTagSinglePayload for OfflineModeData(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_217ACA608()
{
  result = qword_27CB9E9C0;
  if (!qword_27CB9E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9E9C0);
  }

  return result;
}

unint64_t sub_217ACA660()
{
  result = qword_2811C65F0;
  if (!qword_2811C65F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C65F0);
  }

  return result;
}

unint64_t sub_217ACA6B8()
{
  result = qword_2811C65F8;
  if (!qword_2811C65F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C65F8);
  }

  return result;
}

NewsAnalytics::CacheState_optional __swiftcall CacheState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CacheState.rawValue.getter()
{
  v1 = 7629160;
  if (*v0 != 1)
  {
    v1 = 1936943469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217ACA7B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7629160;
  if (v2 != 1)
  {
    v4 = 1936943469;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7629160;
  if (*a2 != 1)
  {
    v8 = 1936943469;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217ACA89C()
{
  result = qword_27CB9E9C8;
  if (!qword_27CB9E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9E9C8);
  }

  return result;
}

uint64_t sub_217ACA8F0()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217ACA984()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217ACAA04()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217ACAAA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 7629160;
  if (v2 != 1)
  {
    v5 = 1936943469;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for CacheState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CacheState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217ACACF0()
{
  result = qword_2811C7FA8;
  if (!qword_2811C7FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7FA8);
  }

  return result;
}

NewsAnalytics::LiveActivityDismissal_optional __swiftcall LiveActivityDismissal.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LiveActivityDismissal.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6C69546F63736964;
  if (*v0 != 2)
  {
    v2 = 0x6465626D45626577;
  }

  if (*v0)
  {
    v1 = 0x6D6574737973;
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

unint64_t sub_217ACAE2C()
{
  result = qword_27CB9E9D0;
  if (!qword_27CB9E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9E9D0);
  }

  return result;
}

uint64_t sub_217ACAE80()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217ACAF44()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217ACAFF4()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217ACB0C0(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE900000000000065;
  v5 = 0x6C69546F63736964;
  if (*v1 != 2)
  {
    v5 = 0x6465626D45626577;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x6D6574737973;
    v2 = 0xE600000000000000;
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

uint64_t getEnumTagSinglePayload for LiveActivityDismissal(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LiveActivityDismissal(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217ACB340()
{
  result = qword_27CB9E9D8;
  if (!qword_27CB9E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9E9D8);
  }

  return result;
}

uint64_t sub_217ACB424(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  v7 = __swift_project_value_buffer(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t sub_217ACB4E8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9EA10);
  __swift_project_value_buffer(v0, qword_27CB9EA10);
  return sub_217D8866C();
}

uint64_t sub_217ACB56C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t PersonalizedAdsEngagementEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PersonalizedAdsEngagementEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PersonalizedAdsEngagementEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PersonalizedAdsEngagementEvent.userSelectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PersonalizedAdsEngagementEvent(0) + 24);
  sub_217ACBAD8(0, &qword_27CB9EA28, sub_217ACB880, sub_217ACB8D4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217ACB880()
{
  result = qword_27CB9EA30;
  if (!qword_27CB9EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EA30);
  }

  return result;
}

unint64_t sub_217ACB8D4()
{
  result = qword_27CB9EA38;
  if (!qword_27CB9EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EA38);
  }

  return result;
}

uint64_t PersonalizedAdsEngagementEvent.userSelectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PersonalizedAdsEngagementEvent(0) + 24);
  sub_217ACBAD8(0, &qword_27CB9EA28, sub_217ACB880, sub_217ACB8D4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PersonalizedAdsEngagementEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PersonalizedAdsEngagementEvent(0) + 28);
  sub_217ACBAD8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217ACBAD8(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t PersonalizedAdsEngagementEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PersonalizedAdsEngagementEvent(0) + 28);
  sub_217ACBAD8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PersonalizedAdsEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PersonalizedAdsEngagementEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217ACBAD8(0, &qword_27CB9EA28, sub_217ACB880, sub_217ACB8D4);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217ACBAD8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t sub_217ACBE20@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_217ACBEBC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t PersonalizedAdsEngagementEvent.Model.userSelectionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PersonalizedAdsEngagementEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t PersonalizedAdsEngagementEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PersonalizedAdsEngagementEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

__n128 PersonalizedAdsEngagementEvent.Model.init(eventData:timedData:userSelectionData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v10 = sub_217D8899C();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for PersonalizedAdsEngagementEvent.Model(0);
  v12 = v11[5];
  v13 = sub_217D889CC();
  (*(*(v13 - 8) + 32))(a5 + v12, a2, v13);
  *(a5 + v11[6]) = v9;
  v14 = a5 + v11[7];
  v15 = *(a4 + 16);
  *v14 = *a4;
  *(v14 + 16) = v15;
  result = *(a4 + 32);
  *(v14 + 32) = result;
  *(v14 + 48) = *(a4 + 48);
  return result;
}

uint64_t sub_217ACC164()
{
  v1 = *v0;
  sub_217D89E1C();
  MEMORY[0x21CEAD4A0](v1);
  return sub_217D89E3C();
}

uint64_t sub_217ACC1D8()
{
  v1 = *v0;
  sub_217D89E1C();
  MEMORY[0x21CEAD4A0](v1);
  return sub_217D89E3C();
}

unint64_t sub_217ACC21C()
{
  v1 = 0x746144746E657665;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000021;
  }

  if (*v0)
  {
    v1 = 0x74614464656D6974;
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

uint64_t sub_217ACC29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217ACD320(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217ACC2D0(uint64_t a1)
{
  v2 = sub_217ACC648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ACC30C(uint64_t a1)
{
  v2 = sub_217ACC648();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonalizedAdsEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217ACCC48(0, &qword_27CB9EA40, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217ACC648();
  sub_217D89E7C();
  LOBYTE(v25[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for PersonalizedAdsEngagementEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v25[0]) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v29 = *(v3 + v12[6]);
    v28 = 2;
    sub_217ACB8D4();
    sub_217D89CAC();
    v14 = (v3 + v12[7]);
    v15 = v14[1];
    v25[0] = *v14;
    v25[1] = v15;
    v17 = *v14;
    v16 = v14[1];
    v25[2] = v14[2];
    v26 = *(v14 + 48);
    v21 = v17;
    v22 = v16;
    v23 = v14[2];
    v24 = *(v14 + 48);
    v27 = 3;
    sub_217ACC004(v25, v19);
    sub_217A55B98();
    sub_217D89CAC();
    v19[0] = v21;
    v19[1] = v22;
    v19[2] = v23;
    v20 = v24;
    sub_217ACC69C(v19);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217ACC648()
{
  result = qword_27CB9EA48;
  if (!qword_27CB9EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EA48);
  }

  return result;
}

uint64_t PersonalizedAdsEngagementEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v30 = sub_217D889CC();
  v28 = *(v30 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217ACCC48(0, &qword_27CB9EA50, MEMORY[0x277D844C8]);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = type metadata accessor for PersonalizedAdsEngagementEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217ACC648();
  v34 = v12;
  v18 = v35;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = v13;
  v19 = v29;
  v20 = v30;
  LOBYTE(v36) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  sub_217D89BCC();
  v21 = *(v19 + 32);
  v22 = v33;
  v33 = v6;
  v21(v16, v22);
  LOBYTE(v36) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  sub_217D89BCC();
  (*(v28 + 32))(&v16[*(v35 + 20)], v5, v20);
  v40 = 2;
  sub_217ACB880();
  sub_217D89BCC();
  v23 = v35;
  v16[*(v35 + 24)] = v36;
  v40 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v31 + 8))(v34, v32);
  v24 = &v16[*(v23 + 28)];
  v25 = v37;
  *v24 = v36;
  *(v24 + 1) = v25;
  *(v24 + 2) = v38;
  v24[48] = v39;
  sub_217ACCCAC(v16, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217ACCD10(v16);
}

void sub_217ACCC48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217ACC648();
    v7 = a3(a1, &type metadata for PersonalizedAdsEngagementEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217ACCCAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizedAdsEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217ACCD10(uint64_t a1)
{
  v2 = type metadata accessor for PersonalizedAdsEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217ACCE48@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217ACBAD8(0, &qword_27CB9EA28, sub_217ACB880, sub_217ACB8D4);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217ACBAD8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_217ACD020()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217ACBAD8(319, &qword_27CB9EA28, sub_217ACB880, sub_217ACB8D4);
      if (v2 <= 0x3F)
      {
        sub_217ACBAD8(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_217ACD16C()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    result = sub_217D889CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_217ACD21C()
{
  result = qword_27CB9EA78;
  if (!qword_27CB9EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EA78);
  }

  return result;
}

unint64_t sub_217ACD274()
{
  result = qword_27CB9EA80;
  if (!qword_27CB9EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EA80);
  }

  return result;
}

unint64_t sub_217ACD2CC()
{
  result = qword_27CB9EA88;
  if (!qword_27CB9EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EA88);
  }

  return result;
}

uint64_t sub_217ACD320(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DCCB90 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t ReferralData.referringApplication.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ReferralData.referringApplication.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ReferralData.referringUrl.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ReferralData.referringUrl.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ReferralData.userActivityType.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ReferralData.userActivityType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall ReferralData.init(referringApplication:referringUrl:userActivityType:)(NewsAnalytics::ReferralData *__return_ptr retstr, Swift::String referringApplication, Swift::String referringUrl, Swift::String_optional userActivityType)
{
  retstr->referringApplication = referringApplication;
  retstr->referringUrl = referringUrl;
  retstr->userActivityType = userActivityType;
}

unint64_t sub_217ACD648()
{
  v1 = 0x6E69727265666572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_217ACD6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217ACDEA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217ACD6EC(uint64_t a1)
{
  v2 = sub_217ACD914();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ACD728(uint64_t a1)
{
  v2 = sub_217ACD914();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReferralData.encode(to:)(void *a1)
{
  sub_217ACDBF0(0, &qword_2811BC7F8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v16[3] = v1[3];
  v16[4] = v11;
  v12 = v1[4];
  v16[1] = v1[5];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217ACD914();
  sub_217D89E7C();
  v19 = 0;
  v14 = v16[5];
  sub_217D89C6C();
  if (!v14)
  {
    v18 = 1;
    sub_217D89C6C();
    v17 = 2;
    sub_217D89C0C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217ACD914()
{
  result = qword_2811C7920;
  if (!qword_2811C7920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7920);
  }

  return result;
}

uint64_t ReferralData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217ACDBF0(0, &qword_2811BCB08, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217ACD914();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v25 = v12;
  v27 = 1;
  v23 = sub_217D89B8C();
  v24 = v15;
  v26 = 2;
  v16 = sub_217D89B2C();
  v18 = v17;
  v19 = v16;
  (*(v7 + 8))(v10, v6);
  v20 = v24;
  *a2 = v25;
  a2[1] = v14;
  a2[2] = v23;
  a2[3] = v20;
  a2[4] = v19;
  a2[5] = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217ACDBF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217ACD914();
    v7 = a3(a1, &type metadata for ReferralData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217ACDC58()
{
  result = qword_2811C78F8;
  if (!qword_2811C78F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C78F8);
  }

  return result;
}

unint64_t sub_217ACDCB0()
{
  result = qword_2811C7900;
  if (!qword_2811C7900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7900);
  }

  return result;
}

uint64_t sub_217ACDD34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t sub_217ACDDA0()
{
  result = qword_27CB9EA90;
  if (!qword_27CB9EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EA90);
  }

  return result;
}

unint64_t sub_217ACDDF8()
{
  result = qword_2811C7910;
  if (!qword_2811C7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7910);
  }

  return result;
}

unint64_t sub_217ACDE50()
{
  result = qword_2811C7918;
  if (!qword_2811C7918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7918);
  }

  return result;
}

uint64_t sub_217ACDEA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x8000000217DCCBE0 == a2;
  if (v3 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69727265666572 && a2 == 0xEC0000006C725567 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCC00 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t UserData.userID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UserData.userID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UserData.userStorefrontID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t UserData.userStorefrontID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t UserData.init(userID:isUserIDTemporary:userType:userStartDate:ageBracket:ageBracketConfidenceLevel:gender:genderConfidenceLevel:userStorefrontID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>, uint64_t a12)
{
  v12 = *a4;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = v12;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 36) = a10;
  *(a9 + 40) = a7;
  *(a9 + 44) = a11;
  *(a9 + 48) = a8;
  *(a9 + 56) = a12;
  return result;
}

uint64_t sub_217ACE270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217ACE8A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217ACE2A4(uint64_t a1)
{
  v2 = sub_217A63D38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ACE2E0(uint64_t a1)
{
  v2 = sub_217A63D38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217A63CBC(0, &qword_2811BC8E8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A63D38();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v39[0]) = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v15 = v12;
  LOBYTE(v39[0]) = 1;
  v55 = sub_217D89B3C();
  LOBYTE(v35) = 2;
  sub_217ACE70C();
  sub_217D89BCC();
  v54 = LOBYTE(v39[0]);
  LOBYTE(v39[0]) = 3;
  v34 = sub_217D89BEC();
  LOBYTE(v39[0]) = 4;
  v33 = sub_217D89BDC();
  LOBYTE(v39[0]) = 5;
  sub_217D89BBC();
  v17 = v16;
  LOBYTE(v39[0]) = 6;
  v32 = sub_217D89BDC();
  LOBYTE(v39[0]) = 7;
  sub_217D89BBC();
  HIDWORD(v30) = v18;
  v51 = 8;
  v19 = sub_217D89B8C();
  v31 = v20;
  v21 = v19;
  (*(v7 + 8))(v10, v6);
  *&v35 = v15;
  *(&v35 + 1) = v14;
  v22 = v55;
  LOBYTE(v36) = v55;
  BYTE1(v36) = v54;
  *(&v36 + 2) = v52;
  WORD3(v36) = v53;
  v23 = v34;
  *(&v36 + 1) = v34;
  v24 = v33;
  *&v37 = __PAIR64__(v17, v33);
  *(&v37 + 1) = __PAIR64__(HIDWORD(v30), v32);
  v25 = HIDWORD(v30);
  *&v38 = v21;
  *(&v38 + 1) = v31;
  v26 = v35;
  v27 = v36;
  v28 = v38;
  a2[2] = v37;
  a2[3] = v28;
  *a2 = v26;
  a2[1] = v27;
  sub_217A6395C(&v35, v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v39[0] = v15;
  v39[1] = v14;
  v40 = v22;
  v41 = v54;
  v42 = v52;
  v43 = v53;
  v44 = v23;
  v45 = v24;
  v46 = v17;
  v47 = v32;
  v48 = v25;
  v49 = v21;
  v50 = v31;
  return sub_217ACE760(v39);
}

unint64_t sub_217ACE70C()
{
  result = qword_2811BD230;
  if (!qword_2811BD230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD230);
  }

  return result;
}

uint64_t sub_217ACE7A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217ACE7F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217ACE854()
{
  result = qword_27CB9EA98;
  if (!qword_27CB9EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EA98);
  }

  return result;
}

uint64_t sub_217ACE8A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DCCC20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570795472657375 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7261745372657375 && a2 == 0xED00006574614474 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B63617242656761 && a2 == 0xEA00000000007465 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000217DCCC40 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7265646E6567 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DCCC60 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCC80 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

NewsAnalytics::ICloudAccountState_optional __swiftcall ICloudAccountState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ICloudAccountState.rawValue.getter()
{
  v1 = 0x6E496E6567676F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x754F646567676F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217ACEC54(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6E496E6567676F6CLL;
  if (v2 != 1)
  {
    v4 = 0x754F646567676F6CLL;
    v3 = 0xE900000000000074;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6E496E6567676F6CLL;
  if (*a2 != 1)
  {
    v8 = 0x754F646567676F6CLL;
    v7 = 0xE900000000000074;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217ACED64()
{
  result = qword_27CB9EAA0;
  if (!qword_27CB9EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EAA0);
  }

  return result;
}

uint64_t sub_217ACEDB8()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217ACEE60()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217ACEEF4()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217ACEFA4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6E496E6567676F6CLL;
  if (v2 != 1)
  {
    v5 = 0x754F646567676F6CLL;
    v4 = 0xE900000000000074;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217ACF0C8()
{
  result = qword_2811C3328;
  if (!qword_2811C3328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3328);
  }

  return result;
}

uint64_t sub_217ACF1E4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9EAD8);
  __swift_project_value_buffer(v0, qword_27CB9EAD8);
  return sub_217D8866C();
}

uint64_t ReplicaAdvertisementViewEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ReplicaAdvertisementViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 24);
  sub_217AD0CA8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217ACF4D8()
{
  result = qword_2811C7DC0;
  if (!qword_2811C7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7DC0);
  }

  return result;
}

unint64_t sub_217ACF52C()
{
  result = qword_2811C7DC8;
  if (!qword_2811C7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7DC8);
  }

  return result;
}

uint64_t ReplicaAdvertisementViewEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 24);
  sub_217AD0CA8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 28);
  sub_217AD0CA8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReplicaAdvertisementViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 28);
  sub_217AD0CA8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 32);
  sub_217AD0CA8(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217ACF8E0()
{
  result = qword_2811C7CB8;
  if (!qword_2811C7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7CB8);
  }

  return result;
}

unint64_t sub_217ACF934()
{
  result = qword_2811C7CC0;
  if (!qword_2811C7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7CC0);
  }

  return result;
}

uint64_t ReplicaAdvertisementViewEvent.articleScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 32);
  sub_217AD0CA8(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 36);
  sub_217AD0CA8(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217ACFB38()
{
  result = qword_2811C01D0;
  if (!qword_2811C01D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C01D0);
  }

  return result;
}

unint64_t sub_217ACFB8C()
{
  result = qword_2811C01D8;
  if (!qword_2811C01D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C01D8);
  }

  return result;
}

uint64_t ReplicaAdvertisementViewEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 36);
  sub_217AD0CA8(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 40);
  sub_217AD0CA8(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReplicaAdvertisementViewEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 40);
  sub_217AD0CA8(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 44);
  sub_217AD0CA8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217ACFF40()
{
  result = qword_2811BD118;
  if (!qword_2811BD118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD118);
  }

  return result;
}

unint64_t sub_217ACFF94()
{
  result = qword_2811BD120;
  if (!qword_2811BD120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD120);
  }

  return result;
}

uint64_t ReplicaAdvertisementViewEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 44);
  sub_217AD0CA8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 48);
  sub_217AD0CA8(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AD0198()
{
  result = qword_2811C71B0;
  if (!qword_2811C71B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C71B0);
  }

  return result;
}

unint64_t sub_217AD01EC()
{
  result = qword_2811C71B8;
  if (!qword_2811C71B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C71B8);
  }

  return result;
}

uint64_t ReplicaAdvertisementViewEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 48);
  sub_217AD0CA8(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.issueExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 52);
  sub_217AD0CA8(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AD03F0()
{
  result = qword_2811BF968;
  if (!qword_2811BF968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF968);
  }

  return result;
}

unint64_t sub_217AD0444()
{
  result = qword_2811BF970;
  if (!qword_2811BF970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF970);
  }

  return result;
}

uint64_t ReplicaAdvertisementViewEvent.issueExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 52);
  sub_217AD0CA8(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 56);
  sub_217AD0CA8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReplicaAdvertisementViewEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 56);
  sub_217AD0CA8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 60);
  sub_217AD0CA8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AD07F8()
{
  result = qword_2811C7D78;
  if (!qword_2811C7D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D78);
  }

  return result;
}

unint64_t sub_217AD084C()
{
  result = qword_2811C7D80;
  if (!qword_2811C7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D80);
  }

  return result;
}

uint64_t ReplicaAdvertisementViewEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 60);
  sub_217AD0CA8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.issueViewContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 64);
  sub_217AD0CA8(0, &qword_2811C85E0, sub_217AD0A50, sub_217AD0AA4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AD0A50()
{
  result = qword_2811C1EE8;
  if (!qword_2811C1EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1EE8);
  }

  return result;
}

unint64_t sub_217AD0AA4()
{
  result = qword_2811C1EF0;
  if (!qword_2811C1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1EF0);
  }

  return result;
}

uint64_t ReplicaAdvertisementViewEvent.issueViewContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 64);
  sub_217AD0CA8(0, &qword_2811C85E0, sub_217AD0A50, sub_217AD0AA4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 68);
  sub_217AD0CA8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217AD0CA8(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t ReplicaAdvertisementViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 68);
  sub_217AD0CA8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReplicaAdvertisementViewEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217AD0CA8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217AD0CA8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217AD0CA8(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217AD0CA8(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  sub_217AD0CA8(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  (*(*(v16 - 8) + 104))(a1 + v15, v2, v16);
  v17 = v4[11];
  sub_217AD0CA8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v18 - 8) + 104))(a1 + v17, v2, v18);
  v19 = v4[12];
  v20 = *MEMORY[0x277CEACF0];
  sub_217AD0CA8(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v21 - 8) + 104))(a1 + v19, v20, v21);
  v22 = v4[13];
  sub_217AD0CA8(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444);
  (*(*(v23 - 8) + 104))(a1 + v22, v20, v23);
  v24 = v4[14];
  sub_217AD0CA8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217AD0CA8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v27 - 8) + 104))(a1 + v26, v2, v27);
  v28 = v4[16];
  sub_217AD0CA8(0, &qword_2811C85E0, sub_217AD0A50, sub_217AD0AA4);
  (*(*(v29 - 8) + 104))(a1 + v28, v20, v29);
  v30 = v4[17];
  sub_217AD0CA8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v32 = *(*(v31 - 8) + 104);

  return v32(a1 + v30, v20, v31);
}

uint64_t sub_217AD14E0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t ReplicaAdvertisementViewEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReplicaAdvertisementViewEvent.Model(0) + 24);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

uint64_t ReplicaAdvertisementViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ReplicaAdvertisementViewEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ReplicaAdvertisementViewEvent.Model.articleScienceData.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent.Model(0) + 32);
  memcpy(__dst, (v1 + v3), 0x111uLL);
  memcpy(a1, (v1 + v3), 0x111uLL);
  return sub_217AD1744(__dst, &v5);
}

uint64_t ReplicaAdvertisementViewEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ReplicaAdvertisementViewEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t ReplicaAdvertisementViewEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ReplicaAdvertisementViewEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t ReplicaAdvertisementViewEvent.Model.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReplicaAdvertisementViewEvent.Model(0) + 44);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
}