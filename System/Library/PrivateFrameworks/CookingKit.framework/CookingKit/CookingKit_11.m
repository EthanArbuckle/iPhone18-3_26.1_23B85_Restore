void ExternalImageAsset.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = sub_21A2F4794();
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A176C98(&qword_27CD02EA8);
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v37 - v10;
  v12 = type metadata accessor for ExternalImageAsset(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = v16[7];
  *(v15 + v48) = 0;
  v17 = v16[8];
  v46 = a1;
  v47 = v17;
  *(v15 + v17) = 0;
  v45 = v16[9];
  *(v15 + v45) = 0;
  v44 = v16[10];
  *(v15 + v44) = 0;
  sub_21A142764(a1, a1[3]);
  sub_21A249244();
  v43 = v11;
  sub_21A2F8494();
  if (v2)
  {
    v19 = v44;
    sub_21A142808(v46);
    v20 = v45;
  }

  else
  {
    v18 = v42;
    LOBYTE(v49) = 0;
    *v15 = sub_21A2F8244();
    v15[1] = v21;
    LOBYTE(v49) = 1;
    sub_21A2491A8(&qword_27CD02EB0, MEMORY[0x277CC9260]);
    sub_21A2F8284();
    v22 = v44;
    (*(v18 + 32))(v15 + *(v12 + 20), v7, v4);
    type metadata accessor for CGSize(0);
    v52 = 2;
    sub_21A2491A8(&qword_27CD02EB8, type metadata accessor for CGSize);
    sub_21A2F8234();
    v38 = v12;
    v23 = v15 + *(v12 + 24);
    v24 = v50;
    *v23 = v49;
    v23[16] = v24;
    v52 = 3;
    sub_21A2492EC();
    sub_21A2F8234();
    v25 = v45;
    v27 = v48;
    v26 = v49;

    *(v15 + v27) = v26;
    v52 = 4;
    sub_21A2F8234();
    v28 = v49;
    v29 = v47;

    *(v15 + v29) = v28;
    v52 = 5;
    sub_21A2F8234();
    v30 = v40;
    v31 = v38;
    v32 = v49;

    *(v15 + v25) = v32;
    v52 = 6;
    sub_21A2F8234();
    v33 = v49;

    *(v15 + v22) = v33;
    type metadata accessor for CGRect(0);
    v52 = 7;
    sub_21A2491A8(&qword_27CD02EC8, type metadata accessor for CGRect);
    sub_21A2F8234();
    v34 = v15 + *(v31 + 44);
    (*(v30 + 8))(v43, v41);
    v35 = v51;
    v36 = v50;
    *v34 = v49;
    *(v34 + 1) = v36;
    v34[32] = v35;
    sub_21A249340(v15, v39, type metadata accessor for ExternalImageAsset);
    sub_21A142808(v46);
    sub_21A244AC0(v15, type metadata accessor for ExternalImageAsset);
  }
}

uint64_t sub_21A24775C()
{
  v1 = 0x756F72676B636162;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_21A2477C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A24A304(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A2477E8(uint64_t a1)
{
  v2 = sub_21A2493A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A247824(uint64_t a1)
{
  v2 = sub_21A2493A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebImageAsset.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_21A176C98(&qword_27CD02ED0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - v8;
  sub_21A142764(a1, a1[3]);
  sub_21A2493A8();
  sub_21A2F84B4();
  LOBYTE(v16) = 0;
  sub_21A2F4794();
  sub_21A2491A8(&qword_27CD02E88, MEMORY[0x277CC9260]);
  sub_21A2F8324();
  if (!v2)
  {
    v10 = type metadata accessor for WebImageAsset(0);
    v16 = *(v3 + *(v10 + 20));
    v11 = v16;
    HIBYTE(v15) = 1;
    sub_21A249298();
    v12 = v11;
    sub_21A2F82D4();

    v16 = *(v3 + *(v10 + 24));
    HIBYTE(v15) = 2;
    v13 = v16;
    sub_21A2F82D4();
  }

  return (*(v6 + 8))(v9, v5);
}

void WebImageAsset.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_21A2F4794();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_21A176C98(&qword_27CD02EE0);
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for WebImageAsset(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v15 + 28);
  *&v14[v27] = 0;
  v26 = *(v15 + 32);
  *&v14[v26] = 0;
  sub_21A142764(a1, a1[3]);
  sub_21A2493A8();
  sub_21A2F8494();
  if (v2)
  {
    sub_21A142808(a1);
  }

  else
  {
    v17 = v23;
    v16 = v24;
    LOBYTE(v29) = 0;
    sub_21A2491A8(&qword_27CD02EB0, MEMORY[0x277CC9260]);
    sub_21A2F8284();
    (*(v16 + 32))(v14, v7, v4);
    v28 = 1;
    sub_21A2492EC();
    sub_21A2F8234();
    v21 = v29;
    v18 = v27;

    *&v14[v18] = v21;
    v28 = 2;
    sub_21A2F8234();
    (*(v17 + 8))(v10, v25);
    v19 = v29;
    v20 = v26;

    *&v14[v20] = v19;
    sub_21A249340(v14, v22, type metadata accessor for WebImageAsset);
    sub_21A142808(a1);
    sub_21A244AC0(v14, type metadata accessor for WebImageAsset);
  }
}

uint64_t _s10CookingKit13WebImageAssetV3url10Foundation3URLVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21A2F4794();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id sub_21A247F60@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + *(a1(0) + 20));
  *a2 = v4;

  return v4;
}

id sub_21A247FC4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + *(a1(0) + 24));
  *a2 = v4;

  return v4;
}

void LocalImageAsset.init(fileURL:backgroundColor:textBackgroundColor:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for LocalImageAsset(0);
  v9 = *(v8 + 20);
  *(a4 + v9) = 0;
  v10 = *(v8 + 24);
  *(a4 + v10) = 0;
  v11 = sub_21A2F4794();
  (*(*(v11 - 8) + 32))(a4, a1, v11);

  *(a4 + v9) = a2;
  *(a4 + v10) = a3;
}

uint64_t sub_21A2480B8()
{
  v1 = 0x756F72676B636162;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4C5255656C6966;
  }
}

uint64_t sub_21A248124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A24A42C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A24814C(uint64_t a1)
{
  v2 = sub_21A2493FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A248188(uint64_t a1)
{
  v2 = sub_21A2493FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocalImageAsset.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_21A176C98(&qword_27CD02EE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - v8;
  sub_21A142764(a1, a1[3]);
  sub_21A2493FC();
  sub_21A2F84B4();
  LOBYTE(v16) = 0;
  sub_21A2F4794();
  sub_21A2491A8(&qword_27CD02E88, MEMORY[0x277CC9260]);
  sub_21A2F8324();
  if (!v2)
  {
    v10 = type metadata accessor for LocalImageAsset(0);
    v16 = *(v3 + *(v10 + 20));
    v11 = v16;
    HIBYTE(v15) = 1;
    sub_21A249298();
    v12 = v11;
    sub_21A2F82D4();

    v16 = *(v3 + *(v10 + 24));
    HIBYTE(v15) = 2;
    v13 = v16;
    sub_21A2F82D4();
  }

  return (*(v6 + 8))(v9, v5);
}

void LocalImageAsset.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_21A2F4794();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_21A176C98(&qword_27CD02EF8);
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for LocalImageAsset(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v15 + 28);
  *&v14[v27] = 0;
  v26 = *(v15 + 32);
  *&v14[v26] = 0;
  sub_21A142764(a1, a1[3]);
  sub_21A2493FC();
  sub_21A2F8494();
  if (v2)
  {
    sub_21A142808(a1);
  }

  else
  {
    v17 = v23;
    v16 = v24;
    LOBYTE(v29) = 0;
    sub_21A2491A8(&qword_27CD02EB0, MEMORY[0x277CC9260]);
    sub_21A2F8284();
    (*(v16 + 32))(v14, v7, v4);
    v28 = 1;
    sub_21A2492EC();
    sub_21A2F8234();
    v21 = v29;
    v18 = v27;

    *&v14[v18] = v21;
    v28 = 2;
    sub_21A2F8234();
    (*(v17 + 8))(v10, v25);
    v19 = v29;
    v20 = v26;

    *&v14[v20] = v19;
    sub_21A249340(v14, v22, type metadata accessor for LocalImageAsset);
    sub_21A142808(a1);
    sub_21A244AC0(v14, type metadata accessor for LocalImageAsset);
  }
}

BOOL _s10CookingKit18ExternalImageAssetV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21A2F8394() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for ExternalImageAsset(0);
  if ((sub_21A2F4724() & 1) == 0)
  {
    return 0;
  }

  v6 = v5[6];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 16);
  v9 = (a2 + v6);
  if (v8)
  {
    if ((v9[2] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v9[2])
    {
      return 0;
    }

    if (*v7 != *v9 || v7[1] != v9[1])
    {
      return 0;
    }
  }

  v11 = v5[7];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12)
  {
    if (!v13)
    {
      goto LABEL_35;
    }

    sub_21A192B64();
    v14 = v12;
    v15 = v13;
    v16 = v14;
    v17 = sub_21A2F7E74();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    goto LABEL_37;
  }

  v18 = v5[8];
  v12 = *(a1 + v18);
  v13 = *(a2 + v18);
  if (v12)
  {
    if (v13)
    {
      sub_21A192B64();
      v19 = v12;
      v20 = v13;
      v21 = v19;
      v22 = sub_21A2F7E74();

      if ((v22 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_26;
    }

LABEL_35:
    v33 = v12;
LABEL_38:
    v34 = v12;

    return 0;
  }

  if (v13)
  {
    goto LABEL_37;
  }

LABEL_26:
  v23 = v5[9];
  v12 = *(a1 + v23);
  v13 = *(a2 + v23);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_31;
    }

LABEL_37:
    v33 = 0;
    v12 = v13;
    goto LABEL_38;
  }

  if (!v13)
  {
    goto LABEL_35;
  }

  sub_21A192B64();
  v24 = v12;
  v25 = v13;
  v26 = v24;
  v27 = sub_21A2F7E74();

  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  v28 = v5[10];
  v12 = *(a1 + v28);
  v13 = *(a2 + v28);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (!v13)
  {
    goto LABEL_35;
  }

  sub_21A192B64();
  v29 = v12;
  v30 = v13;
  v31 = v29;
  v32 = sub_21A2F7E74();

  if ((v32 & 1) == 0)
  {
    return 0;
  }

LABEL_40:
  v36 = v5[11];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 32);
  v39 = (a2 + v36);
  if (v38)
  {
    return (LOBYTE(v39[1].origin.x) & 1) != 0;
  }

  return (LOBYTE(v39[1].origin.x) & 1) == 0 && CGRectEqualToRect(*v37, *v39);
}

BOOL sub_21A248AF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((sub_21A2F4724() & 1) == 0)
  {
    return 0;
  }

  v6 = a3(0);
  v7 = *(v6 + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_8;
    }

    v14 = 0;
    v8 = v9;
LABEL_13:
    v22 = v8;

LABEL_19:
    return 0;
  }

  if (!v9)
  {
    v14 = *(a1 + v7);
    goto LABEL_13;
  }

  sub_21A192B64();
  v10 = v8;
  v11 = v9;
  v12 = v10;
  v13 = sub_21A2F7E74();

  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v15 = *(v6 + 24);
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (!v16)
  {
    if (!v17)
    {
      return 1;
    }

    v14 = 0;
    v16 = v17;
    goto LABEL_18;
  }

  if (!v17)
  {
    v14 = v16;
LABEL_18:
    v24 = v16;

    goto LABEL_19;
  }

  sub_21A192B64();
  v18 = v16;
  v19 = v17;
  v20 = v18;
  v21 = sub_21A2F7E74();

  return (v21 & 1) != 0;
}

BOOL _s10CookingKit10ImageAssetO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = type metadata accessor for LocalImageAsset(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v40 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebImageAsset(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ExternalImageAsset(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = (&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for ImageAsset(0);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v40 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = (&v40 - v24);
  v26 = sub_21A176C98(&qword_27CCFF3B8);
  v28 = MEMORY[0x28223BE20](v26 - 8, v27);
  v30 = &v40 - v29;
  v31 = *(v28 + 56);
  sub_21A249340(a1, &v40 - v29, type metadata accessor for ImageAsset);
  sub_21A249340(v41, &v30[v31], type metadata accessor for ImageAsset);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21A249340(v30, v22, type metadata accessor for ImageAsset);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v33 = type metadata accessor for WebImageAsset;
        sub_21A244A58(&v30[v31], v9, type metadata accessor for WebImageAsset);
        v34 = sub_21A248AF8(v22, v9, type metadata accessor for WebImageAsset);
        sub_21A244AC0(v9, type metadata accessor for WebImageAsset);
        v35 = v22;
LABEL_13:
        sub_21A244AC0(v35, v33);
        sub_21A244AC0(v30, type metadata accessor for ImageAsset);
        return v34;
      }

      v36 = type metadata accessor for WebImageAsset;
      v37 = v22;
    }

    else
    {
      sub_21A249340(v30, v18, type metadata accessor for ImageAsset);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v33 = type metadata accessor for LocalImageAsset;
        v38 = v40;
        sub_21A244A58(&v30[v31], v40, type metadata accessor for LocalImageAsset);
        v34 = sub_21A248AF8(v18, v38, type metadata accessor for LocalImageAsset);
        sub_21A244AC0(v38, type metadata accessor for LocalImageAsset);
        v35 = v18;
        goto LABEL_13;
      }

      v36 = type metadata accessor for LocalImageAsset;
      v37 = v18;
    }
  }

  else
  {
    sub_21A249340(v30, v25, type metadata accessor for ImageAsset);
    if (!swift_getEnumCaseMultiPayload())
    {
      v33 = type metadata accessor for ExternalImageAsset;
      sub_21A244A58(&v30[v31], v13, type metadata accessor for ExternalImageAsset);
      v34 = _s10CookingKit18ExternalImageAssetV2eeoiySbAC_ACtFZ_0(v25, v13);
      sub_21A244AC0(v13, type metadata accessor for ExternalImageAsset);
      v35 = v25;
      goto LABEL_13;
    }

    v36 = type metadata accessor for ExternalImageAsset;
    v37 = v25;
  }

  sub_21A244AC0(v37, v36);
  sub_21A24A554(v30);
  return 0;
}

unint64_t sub_21A2490AC()
{
  result = qword_27CD02E08;
  if (!qword_27CD02E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02E08);
  }

  return result;
}

unint64_t sub_21A249100()
{
  result = qword_27CD02E10;
  if (!qword_27CD02E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02E10);
  }

  return result;
}

unint64_t sub_21A249154()
{
  result = qword_27CD02E20;
  if (!qword_27CD02E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02E20);
  }

  return result;
}

uint64_t sub_21A2491A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21A2491F0()
{
  result = qword_27CD02E30;
  if (!qword_27CD02E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02E30);
  }

  return result;
}

unint64_t sub_21A249244()
{
  result = qword_27CD02E80;
  if (!qword_27CD02E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02E80);
  }

  return result;
}

unint64_t sub_21A249298()
{
  result = qword_27CD02E98;
  if (!qword_27CD02E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02E98);
  }

  return result;
}

unint64_t sub_21A2492EC()
{
  result = qword_27CD02EC0;
  if (!qword_27CD02EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02EC0);
  }

  return result;
}

uint64_t sub_21A249340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A2493A8()
{
  result = qword_27CD02ED8;
  if (!qword_27CD02ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02ED8);
  }

  return result;
}

unint64_t sub_21A2493FC()
{
  result = qword_27CD02EF0;
  if (!qword_27CD02EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02EF0);
  }

  return result;
}

uint64_t sub_21A2494B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A2F4794();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21A249594(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A2F4794();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExternalImageAsset.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExternalImageAsset.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21A249800()
{
  result = qword_27CD02F00;
  if (!qword_27CD02F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02F00);
  }

  return result;
}

unint64_t sub_21A249858()
{
  result = qword_27CD02F08;
  if (!qword_27CD02F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02F08);
  }

  return result;
}

unint64_t sub_21A2498B0()
{
  result = qword_27CD02F10;
  if (!qword_27CD02F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02F10);
  }

  return result;
}

unint64_t sub_21A249908()
{
  result = qword_27CD02F18;
  if (!qword_27CD02F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02F18);
  }

  return result;
}

unint64_t sub_21A249960()
{
  result = qword_27CD02F20;
  if (!qword_27CD02F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02F20);
  }

  return result;
}

unint64_t sub_21A2499B8()
{
  result = qword_27CD02F28;
  if (!qword_27CD02F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02F28);
  }

  return result;
}

unint64_t sub_21A249A10()
{
  result = qword_27CD02F30;
  if (!qword_27CD02F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02F30);
  }

  return result;
}

unint64_t sub_21A249A68()
{
  result = qword_27CD02F38;
  if (!qword_27CD02F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02F38);
  }

  return result;
}

unint64_t sub_21A249AC0()
{
  result = qword_27CD02F40;
  if (!qword_27CD02F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02F40);
  }

  return result;
}

unint64_t sub_21A249B18()
{
  result = qword_27CD02F48;
  if (!qword_27CD02F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02F48);
  }

  return result;
}

unint64_t sub_21A249B70()
{
  result = qword_27CD02F50;
  if (!qword_27CD02F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02F50);
  }

  return result;
}

unint64_t sub_21A249BC8()
{
  result = qword_27CD02F58;
  if (!qword_27CD02F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02F58);
  }

  return result;
}

unint64_t sub_21A249C20()
{
  result = qword_27CD02F60;
  if (!qword_27CD02F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02F60);
  }

  return result;
}

unint64_t sub_21A249C78()
{
  result = qword_27CD02F68;
  if (!qword_27CD02F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02F68);
  }

  return result;
}

unint64_t sub_21A249CD0()
{
  result = qword_27CD02F70;
  if (!qword_27CD02F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02F70);
  }

  return result;
}

unint64_t sub_21A249D28()
{
  result = qword_27CD02F78;
  if (!qword_27CD02F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02F78);
  }

  return result;
}

unint64_t sub_21A249D80()
{
  result = qword_27CD02F80;
  if (!qword_27CD02F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02F80);
  }

  return result;
}

unint64_t sub_21A249DD8()
{
  result = qword_27CD02F88;
  if (!qword_27CD02F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02F88);
  }

  return result;
}

unint64_t sub_21A249E30()
{
  result = qword_27CD02F90;
  if (!qword_27CD02F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02F90);
  }

  return result;
}

unint64_t sub_21A249E88()
{
  result = qword_27CD02F98;
  if (!qword_27CD02F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02F98);
  }

  return result;
}

unint64_t sub_21A249EE0()
{
  result = qword_27CD02FA0;
  if (!qword_27CD02FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02FA0);
  }

  return result;
}

uint64_t sub_21A249F34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E7265747865 && a2 == 0xE800000000000000;
  if (v4 || (sub_21A2F8394() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6448503 && a2 == 0xE300000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C69466C61636F6CLL && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_21A2F8394();

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

uint64_t sub_21A24A054(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_21A2F8394() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69506E49657A6973 && a2 == 0xEC000000736C6578 || (sub_21A2F8394() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x437972616D697270 && a2 == 0xEC000000726F6C6FLL || (sub_21A2F8394() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xE900000000000072 || (sub_21A2F8394() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F43746E65636361 && a2 == 0xEB00000000726F6CLL || (sub_21A2F8394() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_21A2F8394() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6172466C61636F66 && a2 == 0xEA0000000000656DLL)
  {

    return 7;
  }

  else
  {
    v6 = sub_21A2F8394();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_21A24A304(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_21A2F8394() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_21A2F8394() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021A319BD0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_21A2F8394();

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

uint64_t sub_21A24A42C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000;
  if (v4 || (sub_21A2F8394() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_21A2F8394() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021A319BD0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_21A2F8394();

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

uint64_t sub_21A24A554(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CCFF3B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21A24A60C()
{
  sub_21A24A768();
  if (v0 <= 0x3F)
  {
    sub_21A24A7CC(319, &qword_27CCFF420, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_21A24A7CC(319, &qword_27CCFEE48, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_21A1D13F4();
        if (v3 <= 0x3F)
        {
          sub_21A24A7CC(319, &qword_2811B3DC8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21A24A768()
{
  if (!qword_27CD02FE8)
  {
    sub_21A176D98(&qword_27CD02FF0);
    v0 = sub_21A2F5664();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD02FE8);
    }
  }
}

void sub_21A24A7CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21A24A84C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21A2F5ED4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A176C98(&qword_27CCFED70);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for GroceriesLabelView(0);
  sub_21A183960(v1 + *(v12 + 24), v11, &qword_27CCFED70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21A2F5A64();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_21A2F7DE4();
    v15 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_21A24AA54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = sub_21A176C98(&qword_27CD02FF8);
  MEMORY[0x28223BE20](v78, v4);
  v6 = &v77 - v5;
  v79 = sub_21A176C98(&qword_27CD03000);
  MEMORY[0x28223BE20](v79, v7);
  v9 = &v77 - v8;
  *&v81 = sub_21A176C98(&qword_27CD03008);
  MEMORY[0x28223BE20](v81, v10);
  v82 = &v77 - v11;
  v80 = sub_21A176C98(&qword_27CD03010);
  MEMORY[0x28223BE20](v80, v12);
  v14 = &v77 - v13;
  v15 = sub_21A2F5ED4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v2;
  v21 = *(v2 + 8);

  if ((v21 & 1) == 0)
  {
    sub_21A2F7DE4();
    v22 = sub_21A2F65B4();
    v77 = v2;
    v23 = v9;
    v24 = v14;
    v25 = a1;
    v26 = v22;
    sub_21A2F53B4();

    a1 = v25;
    v14 = v24;
    v9 = v23;
    v2 = v77;
    sub_21A2F5EC4();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v16 + 8))(v19, v15);
    v20 = v83;
  }

  if (v20)
  {
    swift_getKeyPath();
    *&v83 = v20;
    sub_21A24DCFC(&qword_27CD004E8, type metadata accessor for GroceryExportState);
    sub_21A2F5094();

    v27 = *(v20 + 16);
  }

  else
  {
    v27 = 0;
  }

  *v6 = sub_21A2F5F34();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v28 = sub_21A176C98(&qword_27CD03018);
  sub_21A24B0F8(v2, v27, &v6[*(v28 + 44)]);
  v29 = sub_21A2F6634();
  sub_21A2F55A4();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = &v6[*(sub_21A176C98(&qword_27CD03020) + 36)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v39 = sub_21A2F6654();
  sub_21A2F55A4();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = &v6[*(sub_21A176C98(&qword_27CD03028) + 36)];
  *v48 = v39;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  v49 = sub_21A2F6664();
  sub_21A2F55A4();
  v50 = &v6[*(v78 + 36)];
  *v50 = v49;
  *(v50 + 1) = v51;
  *(v50 + 2) = v52;
  *(v50 + 3) = v53;
  *(v50 + 4) = v54;
  v50[40] = 0;
  sub_21A2F7344();
  sub_21A2F5C14();
  sub_21A149B18(v6, v9, &qword_27CD02FF8);
  v55 = &v9[*(v79 + 36)];
  v56 = v88;
  *(v55 + 4) = v87;
  *(v55 + 5) = v56;
  *(v55 + 6) = v89;
  v57 = v84;
  *v55 = v83;
  *(v55 + 1) = v57;
  v58 = v86;
  *(v55 + 2) = v85;
  *(v55 + 3) = v58;
  v59 = [objc_opt_self() quaternarySystemFillColor];
  v60 = sub_21A2F6EF4();
  v61 = sub_21A2F6604();
  v62 = v82;
  sub_21A149B18(v9, v82, &qword_27CD03000);
  v63 = v62 + *(v81 + 36);
  *v63 = v60;
  *(v63 + 8) = v61;
  v64 = &v14[*(v80 + 36)];
  v65 = sub_21A2F5BC4();
  v66 = *(v65 + 20);
  v67 = *MEMORY[0x277CE0118];
  v68 = sub_21A2F5F64();
  v69 = *(*(v68 - 8) + 104);
  v69(&v64[v66], v67, v68);
  __asm { FMOV            V0.2D, #16.0 }

  v81 = _Q0;
  *v64 = _Q0;
  *&v64[*(sub_21A176C98(&qword_27CCFEF18) + 36)] = 256;
  sub_21A149B18(v62, v14, &qword_27CD03008);
  v75 = (a1 + *(sub_21A176C98(&qword_27CD03030) + 36));
  v69(&v75[*(v65 + 20)], v67, v68);
  *v75 = v81;
  v75[*(sub_21A176C98(&qword_27CD03038) + 36)] = 0;
  return sub_21A149B18(v14, a1, &qword_27CD03010);
}

uint64_t sub_21A24B0F8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v172 = a2;
  v182 = a1;
  v177 = a3;
  v173 = sub_21A176C98(&qword_27CD03040);
  MEMORY[0x28223BE20](v173, v3);
  v175 = (&v153 - v4);
  v174 = type metadata accessor for GroceriesLabelView.MoreActionsMenuView(0);
  MEMORY[0x28223BE20](v174, v5);
  v155 = (&v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_21A2F5ED4();
  v157 = *(v7 - 8);
  v158 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v156 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21A176C98(&qword_27CD03048);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v176 = &v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v184 = &v153 - v15;
  KeyPath = sub_21A2F5A64();
  v171 = *(KeyPath - 8);
  MEMORY[0x28223BE20](KeyPath, v16);
  v170 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_21A2F5654();
  v18 = *(v162 - 8);
  MEMORY[0x28223BE20](v162, v19);
  v21 = &v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v153 - v24;
  v26 = sub_21A2F5BC4();
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v153 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_21A176C98(&qword_27CD03050);
  MEMORY[0x28223BE20](v163, v30);
  v169 = &v153 - v31;
  v32 = sub_21A176C98(&qword_27CD03058);
  v33 = v32 - 8;
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v153 - v35;
  v164 = sub_21A176C98(&qword_27CD03060);
  MEMORY[0x28223BE20](v164, v37);
  v180 = &v153 - v38;
  v165 = sub_21A176C98(&qword_27CD03068);
  MEMORY[0x28223BE20](v165, v39);
  v179 = &v153 - v40;
  v167 = sub_21A176C98(&qword_27CD03070);
  MEMORY[0x28223BE20](v167, v41);
  v183 = &v153 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v44);
  v166 = &v153 - v45;
  MEMORY[0x28223BE20](v46, v47);
  v185 = &v153 - v48;
  v49 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v50 = sub_21A2F78A4();
  [v49 initWithBundleIdentifier_];

  sub_21A176C98(&qword_27CCFFEE8);
  sub_21A1BE2C8();
  sub_21A2F53A4();
  sub_21A2F7344();
  sub_21A2F57C4();
  v51 = *(v33 + 44);
  v168 = v36;
  v52 = &v36[v51];
  v53 = v226;
  *v52 = v225;
  *(v52 + 1) = v53;
  *(v52 + 2) = v227;
  v181 = v26;
  v54 = *(v26 + 20);
  v55 = *MEMORY[0x277CE0118];
  v56 = sub_21A2F5F64();
  v57 = *(v56 - 8);
  v58 = *(v57 + 104);
  v160 = v57 + 104;
  v161 = v58;
  v58(&v29[v54], v55, v56);
  __asm { FMOV            V0.2D, #8.0 }

  v159 = _Q0;
  *v29 = _Q0;
  v154 = type metadata accessor for GroceriesLabelView(0);
  sub_21A1AC5F4(v25);
  v64 = v162;
  (*(v18 + 104))(v21, *MEMORY[0x277CDF3C0], v162);
  LOBYTE(v54) = sub_21A2F5644();
  v65 = *(v18 + 8);
  v65(v21, v64);
  v65(v25, v64);
  if (v54)
  {
    sub_21A2F6F24();
  }

  else
  {
    sub_21A2F6F04();
  }

  v66 = sub_21A2F6F44();

  sub_21A2F56A4();
  v67 = MEMORY[0x277CDFC08];
  v68 = v169;
  sub_21A24DD44(v29, v169, MEMORY[0x277CDFC08]);
  v69 = *&v228 * 0.5;
  v70 = v68 + *(v163 + 68);
  sub_21A24DD44(v29, v70, v67);
  *(v70 + *(sub_21A2F5BB4() + 20)) = v69;
  v71 = v70 + *(sub_21A176C98(&qword_27CD03078) + 36);
  v72 = v229;
  *v71 = v228;
  *(v71 + 16) = v72;
  *(v71 + 32) = v230;
  v73 = sub_21A176C98(&qword_27CD03080);
  *(v70 + *(v73 + 52)) = v66;
  *(v70 + *(v73 + 56)) = 256;
  v74 = sub_21A2F7344();
  v76 = v75;
  sub_21A24DDAC(v29, MEMORY[0x277CDFC08]);
  v77 = (v70 + *(sub_21A176C98(&qword_27CD03088) + 36));
  *v77 = v74;
  v77[1] = v76;
  v78 = sub_21A2F7344();
  v80 = v79;
  v81 = v180;
  v82 = &v180[*(v164 + 36)];
  sub_21A149B18(v68, v82, &qword_27CD03050);
  v83 = (v82 + *(sub_21A176C98(&qword_27CD03090) + 36));
  *v83 = v78;
  v83[1] = v80;
  sub_21A149B18(v168, v81, &qword_27CD03058);
  v84 = v179;
  v85 = &v179[*(v165 + 36)];
  v161(&v85[*(v181 + 20)], v55, v56);
  *v85 = v159;
  *&v85[*(sub_21A176C98(&qword_27CCFEF18) + 36)] = 256;
  sub_21A149B18(v81, v84, &qword_27CD03060);
  LOBYTE(v85) = sub_21A2F6654();
  sub_21A2F55A4();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v94 = v84;
  v95 = v166;
  sub_21A149B18(v94, v166, &qword_27CD03068);
  v96 = v95 + *(v167 + 36);
  *v96 = v85;
  *(v96 + 8) = v87;
  *(v96 + 16) = v89;
  *(v96 + 24) = v91;
  *(v96 + 32) = v93;
  *(v96 + 40) = 0;
  sub_21A149B18(v95, v185, &qword_27CD03070);
  v97 = v172;
  if (v172)
  {
    if (qword_27CCFE838 != -1)
    {
      swift_once();
    }

    v98 = &qword_27CD02FA8;
  }

  else
  {
    if (qword_27CCFE840 != -1)
    {
      swift_once();
    }

    v98 = &qword_27CD02FB8;
  }

  v99 = *v98;
  v100 = sub_21A2F5434();
  *&v187 = v99;
  *(&v187 + 1) = v100;
  sub_21A1834FC();
  v101 = sub_21A2F69B4();
  v103 = v102;
  v105 = v104;
  sub_21A2F67C4();
  v106 = sub_21A2F68E4();
  v179 = v107;
  v180 = v106;
  v109 = v108;
  v181 = v110;

  sub_21A1834EC(v101, v103, v105 & 1);

  v111 = v170;
  v112 = v182;
  sub_21A24A84C(v170);
  LODWORD(v113) = sub_21A2F5A44();
  (*(v171 + 8))(v111, KeyPath);
  KeyPath = swift_getKeyPath();
  v171 = swift_getKeyPath();
  v114 = v109 & 1;
  v221 = v109 & 1;
  v219 = 0;
  sub_21A2F7354();
  sub_21A2F5C14();
  v169 = swift_getKeyPath();
  v170 = sub_21A2F6F54();
  v168 = swift_getKeyPath();
  LODWORD(v167) = sub_21A2F6654();
  sub_21A2F55A4();
  v116 = v115;
  v118 = v117;
  v120 = v119;
  v122 = v121;
  v223 = 0;
  v123 = v184;
  if ((v97 & 1) == 0)
  {
    goto LABEL_17;
  }

  v124 = *v112;
  v125 = *(v112 + 8);

  if ((v125 & 1) == 0)
  {
    sub_21A2F7DE4();
    v126 = sub_21A2F65B4();
    sub_21A2F53B4();

    v127 = v156;
    sub_21A2F5EC4();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v157 + 8))(v127, v158);
    v124 = v187;
  }

  if (v124 && (swift_getKeyPath(), *&v187 = v124, sub_21A24DCFC(&qword_27CD004E8, type metadata accessor for GroceryExportState), sub_21A2F5094(), , Strong = swift_unknownObjectWeakLoadStrong(), , Strong))
  {
    v129 = v155;
    v130 = *(v154 + 32);
    v131 = *(v112 + *(v154 + 28));
    v172 = v113;
    v113 = v174;
    sub_21A183960(v112 + v130, v155 + *(v174 + 24), &qword_27CCFEA80);
    *v129 = Strong;
    v129[1] = v131;
    swift_getKeyPath();
    sub_21A24DCFC(&qword_27CD030C8, type metadata accessor for GroceriesLabelViewModel);
    sub_21A2F5434();
    sub_21A2F7754();
    v132 = v129 + *(v113 + 32);
    *v132 = swift_getKeyPath();
    v132[8] = 0;
    sub_21A24DD44(v129, v175, type metadata accessor for GroceriesLabelView.MoreActionsMenuView);
    swift_storeEnumTagMultiPayload();
    sub_21A176C98(&qword_27CD030A0);
    sub_21A24DCFC(&qword_27CD030A8, type metadata accessor for GroceriesLabelView.MoreActionsMenuView);
    sub_21A1772F8(&qword_27CD030B0, &qword_27CD030A0);
    LOBYTE(v113) = v172;
    sub_21A2F6114();
    sub_21A24DDAC(v129, type metadata accessor for GroceriesLabelView.MoreActionsMenuView);
  }

  else
  {
LABEL_17:
    v133 = sub_21A2F7344();
    v135 = v134;
    sub_21A24D5D8(&v204);
    v186[4] = v208;
    v186[5] = v209;
    *&v186[6] = v210;
    v186[0] = v204;
    v186[1] = v205;
    v186[2] = v206;
    v186[3] = v207;
    v187 = v204;
    v188 = v205;
    v189 = v206;
    v190 = v207;
    *v191 = v208;
    *&v191[2] = v209;
    v191[4] = v210;
    sub_21A183960(v186, &v203, &qword_27CD03098);
    sub_21A1427A8(&v187, &qword_27CD03098);
    v136 = v175;
    *v175 = v133;
    v136[1] = v135;
    v137 = v186[5];
    *(v136 + 5) = v186[4];
    *(v136 + 6) = v137;
    v136[14] = *&v186[6];
    v138 = v186[1];
    *(v136 + 1) = v186[0];
    *(v136 + 2) = v138;
    v139 = v186[3];
    *(v136 + 3) = v186[2];
    *(v136 + 4) = v139;
    swift_storeEnumTagMultiPayload();
    sub_21A176C98(&qword_27CD030A0);
    sub_21A24DCFC(&qword_27CD030A8, type metadata accessor for GroceriesLabelView.MoreActionsMenuView);
    sub_21A1772F8(&qword_27CD030B0, &qword_27CD030A0);
    sub_21A2F6114();
  }

  if (v113)
  {
    v140 = 4;
  }

  else
  {
    v140 = 2;
  }

  v182 = v140;
  v141 = v183;
  sub_21A1648C8(v185, v183);
  v142 = v123;
  v143 = v176;
  sub_21A183960(v142, v176, &qword_27CD03048);
  v144 = v177;
  sub_21A1648C8(v141, v177);
  v145 = sub_21A176C98(&qword_27CD030B8);
  v146 = *(v145 + 48);
  *(&v186[7] + 8) = v214;
  *(&v186[8] + 8) = v215;
  *(&v186[9] + 8) = v216;
  *(&v186[10] + 8) = v217;
  *(&v186[4] + 8) = v211;
  *(&v186[5] + 8) = v212;
  *&v186[0] = v180;
  *(&v186[0] + 1) = v179;
  LODWORD(v166) = v114;
  LOBYTE(v186[1]) = v114;
  *(&v186[1] + 1) = *v220;
  DWORD1(v186[1]) = *&v220[3];
  *(&v186[1] + 1) = v181;
  *&v186[2] = KeyPath;
  *(&v186[2] + 1) = v140;
  LOBYTE(v186[3]) = 0;
  *(&v186[3] + 1) = *v218;
  DWORD1(v186[3]) = *&v218[3];
  v147 = v170;
  v148 = v171;
  *(&v186[3] + 1) = v171;
  *&v186[4] = 0x3FD3333333333333;
  *(&v186[6] + 8) = v213;
  v150 = v168;
  v149 = v169;
  *(&v186[11] + 1) = v169;
  LOBYTE(v186[12]) = 0;
  DWORD1(v186[12]) = *&v222[3];
  *(&v186[12] + 1) = *v222;
  *(&v186[12] + 1) = v168;
  *&v186[13] = v170;
  v151 = v167;
  BYTE8(v186[13]) = v167;
  HIDWORD(v186[13]) = *&v224[3];
  *(&v186[13] + 9) = *v224;
  *&v186[14] = v116;
  *(&v186[14] + 1) = v118;
  *&v186[15] = v120;
  *(&v186[15] + 1) = v122;
  LOBYTE(v186[16]) = 0;
  memcpy((v144 + v146), v186, 0x101uLL);
  sub_21A183960(v143, v144 + *(v145 + 64), &qword_27CD03048);
  sub_21A183960(v186, &v187, &qword_27CD030C0);
  sub_21A1427A8(v184, &qword_27CD03048);
  sub_21A164938(v185);
  sub_21A1427A8(v143, &qword_27CD03048);
  *&v191[7] = v214;
  *&v191[9] = v215;
  *&v191[11] = v216;
  *&v191[13] = v217;
  *&v191[1] = v211;
  *&v191[3] = v212;
  *&v187 = v180;
  *(&v187 + 1) = v179;
  LOBYTE(v188) = v166;
  *(&v188 + 1) = *v220;
  DWORD1(v188) = *&v220[3];
  *(&v188 + 1) = v181;
  *&v189 = KeyPath;
  *(&v189 + 1) = v182;
  LOBYTE(v190) = 0;
  *(&v190 + 1) = *v218;
  DWORD1(v190) = *&v218[3];
  *(&v190 + 1) = v148;
  v191[0] = 0x3FD3333333333333;
  *&v191[5] = v213;
  v191[15] = v149;
  v192 = 0;
  *&v193[3] = *&v222[3];
  *v193 = *v222;
  v194 = v150;
  v195 = v147;
  v196 = v151;
  *&v197[3] = *&v224[3];
  *v197 = *v224;
  v198 = v116;
  v199 = v118;
  v200 = v120;
  v201 = v122;
  v202 = 0;
  sub_21A1427A8(&v187, &qword_27CD030C0);
  return sub_21A164938(v183);
}

uint64_t sub_21A24C3F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A2F6FA4();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x277CE0FE0], v2, v5);
  v8 = sub_21A2F6FD4();
  result = (*(v3 + 8))(v7, v2);
  *a1 = v8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21A24C514@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A2F6FA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CCFE760 != -1)
  {
    swift_once();
  }

  v7 = qword_27CD23BB8;
  sub_21A2F6FE4();
  (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
  v8 = sub_21A2F6FD4();

  result = (*(v3 + 8))(v6, v2);
  *a1 = v8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21A24C694@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v103 = a2;
  v3 = sub_21A176C98(&qword_27CD03170);
  v101 = *(v3 - 8);
  v102 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v90 = &v85 - v5;
  v6 = sub_21A2F71E4();
  v88 = *(v6 - 8);
  v89 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v87 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v86 = &v85 - v11;
  v12 = sub_21A2F5ED4();
  v91 = *(v12 - 8);
  v92 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21A176C98(&qword_27CD004F8);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v85 - v18;
  v94 = type metadata accessor for ExportToGroceryListUtility.RemindersListDetails();
  v20 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v21);
  v93 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21A176C98(&qword_27CD03178);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v100 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v99 = &v85 - v28;
  v29 = type metadata accessor for GroceriesLabelView.MoreActionsMenuView(0);
  v30 = v29 - 8;
  v31 = *(v29 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29, v33);
  v98 = sub_21A176C98(&qword_27CD03180);
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v34);
  v97 = &v85 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v85 - v38;
  sub_21A24DD44(a1, &v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroceriesLabelView.MoreActionsMenuView);
  v40 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v41 = swift_allocObject();
  sub_21A24E4E8(&v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v40, type metadata accessor for GroceriesLabelView.MoreActionsMenuView);
  sub_21A176C98(&qword_27CD03188);
  sub_21A1772F8(&qword_27CD03190, &qword_27CD03188);
  v95 = v39;
  sub_21A2F7094();
  v42 = a1 + *(v30 + 40);
  v43 = *v42;
  LOBYTE(v31) = *(v42 + 8);

  if ((v31 & 1) == 0)
  {
    sub_21A2F7DE4();
    v44 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v91 + 8))(v15, v92);
    v43 = v104;
  }

  if (!v43)
  {
    (*(v20 + 56))(v19, 1, 1, v94);
    goto LABEL_7;
  }

  swift_getKeyPath();
  v104 = v43;
  sub_21A24DCFC(&qword_27CD004E8, type metadata accessor for GroceryExportState);
  sub_21A2F5094();

  sub_21A183960(v43 + OBJC_IVAR____TtC10CookingKit18GroceryExportState__remindersListDetails, v19, &qword_27CD004F8);

  v45 = v94;
  if ((*(v20 + 48))(v19, 1, v94) == 1)
  {
LABEL_7:
    sub_21A1427A8(v19, &qword_27CD004F8);
    v74 = v99;
    (*(v101 + 56))(v99, 1, 1, v102);
    goto LABEL_8;
  }

  v46 = v93;
  sub_21A24E4E8(v19, v93, type metadata accessor for ExportToGroceryListUtility.RemindersListDetails);
  v47 = v86;
  sub_21A2F71D4();
  v104 = sub_21A24E550(v46 + *(v45 + 20));
  v105 = v48;
  sub_21A1834FC();
  v49 = sub_21A2F69B4();
  v51 = v50;
  v53 = v52;
  sub_21A2F67A4();
  v54 = sub_21A2F68E4();
  v56 = v55;
  v58 = v57;

  sub_21A1834EC(v49, v51, v53 & 1);

  sub_21A2F6F64();
  v59 = sub_21A2F6894();
  v61 = v60;
  v63 = v62;
  v65 = v64;

  sub_21A1834EC(v54, v56, v58 & 1);

  v67 = v87;
  v66 = v88;
  v68 = *(v88 + 16);
  v69 = v89;
  v68(v87, v47, v89);
  LOBYTE(v104) = v63 & 1;
  v70 = v90;
  v68(v90, v67, v69);
  v71 = v70 + *(sub_21A176C98(&qword_27CD031A0) + 48);
  v72 = v104;
  *v71 = v59;
  *(v71 + 8) = v61;
  *(v71 + 16) = v72;
  *(v71 + 24) = v65;
  sub_21A176C88(v59, v61, v72);
  v73 = *(v66 + 8);
  sub_21A2F5434();
  v73(v47, v69);
  sub_21A24DDAC(v93, type metadata accessor for ExportToGroceryListUtility.RemindersListDetails);
  sub_21A1834EC(v59, v61, v104);

  v73(v67, v69);
  v74 = v99;
  sub_21A149B18(v70, v99, &qword_27CD03170);
  (*(v101 + 56))(v74, 0, 1, v102);
LABEL_8:
  v75 = v96;
  v76 = v97;
  v77 = *(v96 + 16);
  v78 = v95;
  v79 = v98;
  v77(v97, v95, v98);
  v80 = v100;
  sub_21A183960(v74, v100, &qword_27CD03178);
  v81 = v103;
  v77(v103, v76, v79);
  v82 = sub_21A176C98(&qword_27CD03198);
  sub_21A183960(v80, &v81[*(v82 + 48)], &qword_27CD03178);
  sub_21A1427A8(v74, &qword_27CD03178);
  v83 = *(v75 + 8);
  v83(v78, v79);
  sub_21A1427A8(v80, &qword_27CD03178);
  return (v83)(v76, v79);
}

uint64_t sub_21A24D090(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CCFEA80);
  v36 = *(v2 - 8);
  v35 = *(v36 + 64);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v37 = &v33 - v4;
  v5 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v33 = &v33 - v7;
  v8 = sub_21A2F5ED4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GroceriesLabelView.MoreActionsMenuView(0);
  sub_21A176C98(&qword_27CD030E0);
  v14 = sub_21A2F7714();
  v15 = *a1;
  v34 = *(a1 + 8);
  v16 = (a1 + *(v13 + 32));
  v17 = *v16;
  v18 = *(v16 + 8);

  if ((v18 & 1) == 0)
  {
    sub_21A2F7DE4();
    v19 = v15;
    v20 = sub_21A2F65B4();
    sub_21A2F53B4();

    v15 = v19;
    sub_21A2F5EC4();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v9 + 8))(v12, v8);
    v17 = v38;
  }

  v21 = *(v13 + 24);
  v22 = sub_21A2F7C64();
  v23 = v33;
  (*(*(v22 - 8) + 56))(v33, 1, 1, v22);
  v24 = v37;
  sub_21A183960(a1 + v21, v37, &qword_27CCFEA80);
  sub_21A2F7C34();

  v25 = v34;
  sub_21A2F5434();
  v26 = v15;

  v27 = sub_21A2F7C24();
  v28 = (*(v36 + 80) + 56) & ~*(v36 + 80);
  v29 = (v35 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D85700];
  v30[2] = v27;
  v30[3] = v31;
  v30[4] = v14;
  v30[5] = v25;
  v30[6] = v26;
  sub_21A149B18(v24, v30 + v28, &qword_27CCFEA80);
  *(v30 + v29) = v17;
  sub_21A199D08(0, 0, v23, &unk_21A30B6A0, v30);
}

uint64_t sub_21A24D444()
{
  if (qword_27CCFE848 != -1)
  {
    swift_once();
  }

  sub_21A1834FC();
  sub_21A2F5434();
  return sub_21A2F7004();
}

__n128 sub_21A24D4E8@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_21A2F7344();
  v4 = v3;
  sub_21A24D5D8(&v9);
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v23[0] = v9;
  v23[1] = v10;
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v23[5] = v14;
  v24 = v15;
  sub_21A183960(&v16, &v8, &qword_27CD03098);
  sub_21A1427A8(v23, &qword_27CD03098);
  *a1 = v2;
  *(a1 + 8) = v4;
  v5 = v21;
  *(a1 + 80) = v20;
  *(a1 + 96) = v5;
  *(a1 + 112) = v22;
  v6 = v17;
  *(a1 + 16) = v16;
  *(a1 + 32) = v6;
  result = v19;
  *(a1 + 48) = v18;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_21A24D5D8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD00338);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v16 - v4;
  v6 = sub_21A2F6F24();
  sub_21A2F7344();
  sub_21A2F57C4();
  *&v16[1] = v17;
  *&v16[3] = v18;
  *&v16[5] = v19;
  v7 = sub_21A2F6F94();
  v8 = sub_21A2F6F04();
  KeyPath = swift_getKeyPath();
  v10 = sub_21A2F66E4();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = sub_21A2F6734();
  sub_21A1427A8(v5, &qword_27CD00338);
  v12 = swift_getKeyPath();
  *v20 = v6;
  *&v20[8] = 256;
  *&v20[10] = *(v16 + 2);
  *&v20[26] = *(&v16[2] + 2);
  *&v20[42] = *(&v16[4] + 2);
  *&v20[56] = v16[6];
  v13 = *&v20[16];
  *a1 = *v20;
  *(a1 + 16) = v13;
  v14 = *&v20[48];
  *(a1 + 32) = *&v20[32];
  *(a1 + 48) = v14;
  *(a1 + 64) = v7;
  *(a1 + 72) = KeyPath;
  *(a1 + 80) = v8;
  *(a1 + 88) = v12;
  *(a1 + 96) = v11;
  sub_21A183960(v20, &v21, &qword_27CD030D8);
  v21 = v6;
  v22 = 256;
  v23 = *(v16 + 2);
  v24 = *(&v16[2] + 2);
  *v25 = *(&v16[4] + 2);
  *&v25[14] = v16[6];
  return sub_21A1427A8(&v21, &qword_27CD030D8);
}

uint64_t sub_21A24D838()
{
  sub_21A24DE0C();

  return sub_21A2F7654();
}

uint64_t sub_21A24D898()
{
  sub_21A176C98(&qword_27CD030A0);
  sub_21A176C98(&qword_27CD03160);
  sub_21A1772F8(&qword_27CD030B0, &qword_27CD030A0);
  sub_21A1772F8(&qword_27CD03168, &qword_27CD03160);
  return sub_21A2F67E4();
}

uint64_t sub_21A24D9B8()
{
  v0 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = sub_21A2F7894();
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_21A2F7884();
  sub_21A2F4A54();
  result = sub_21A2F7934();
  qword_27CD02FA8 = result;
  unk_27CD02FB0 = v5;
  return result;
}

uint64_t sub_21A24DAC0()
{
  v0 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = sub_21A2F7894();
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_21A2F7884();
  sub_21A2F4A54();
  result = sub_21A2F7934();
  qword_27CD02FB8 = result;
  unk_27CD02FC0 = v5;
  return result;
}

uint64_t sub_21A24DBC8()
{
  v0 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = sub_21A2F7894();
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_21A2F7884();
  sub_21A2F4A54();
  result = sub_21A2F7934();
  qword_27CD02FC8 = result;
  unk_27CD02FD0 = v5;
  return result;
}

uint64_t sub_21A24DCFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A24DD44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A24DDAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21A24DE0C()
{
  result = qword_27CD030D0;
  if (!qword_27CD030D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD030D0);
  }

  return result;
}

void sub_21A24DE88()
{
  sub_21A1D13A8();
  if (v0 <= 0x3F)
  {
    sub_21A1D13F4();
    if (v1 <= 0x3F)
    {
      sub_21A24A7CC(319, &qword_2811B3DC8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21A24DF84();
        if (v3 <= 0x3F)
        {
          sub_21A24A768();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21A24DF84()
{
  if (!qword_27CD030F8)
  {
    type metadata accessor for GroceriesLabelViewModel(255);
    sub_21A24DCFC(&qword_27CD030C8, type metadata accessor for GroceriesLabelViewModel);
    v0 = sub_21A2F7744();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD030F8);
    }
  }
}

unint64_t sub_21A24E018()
{
  result = qword_27CD03100;
  if (!qword_27CD03100)
  {
    sub_21A176D98(&qword_27CD03030);
    sub_21A24E0D0();
    sub_21A1772F8(&qword_27CD03158, &qword_27CD03038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03100);
  }

  return result;
}

unint64_t sub_21A24E0D0()
{
  result = qword_27CD03108;
  if (!qword_27CD03108)
  {
    sub_21A176D98(&qword_27CD03010);
    sub_21A24E188();
    sub_21A1772F8(&qword_27CCFEF10, &qword_27CCFEF18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03108);
  }

  return result;
}

unint64_t sub_21A24E188()
{
  result = qword_27CD03110;
  if (!qword_27CD03110)
  {
    sub_21A176D98(&qword_27CD03008);
    sub_21A24E240();
    sub_21A1772F8(&qword_27CD03148, &qword_27CD03150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03110);
  }

  return result;
}

unint64_t sub_21A24E240()
{
  result = qword_27CD03118;
  if (!qword_27CD03118)
  {
    sub_21A176D98(&qword_27CD03000);
    sub_21A24E2F8(&qword_27CD03120, &qword_27CD02FF8, &unk_21A30B340, sub_21A24E37C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03118);
  }

  return result;
}

uint64_t sub_21A24E2F8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A24E3AC()
{
  result = qword_27CD03130;
  if (!qword_27CD03130)
  {
    sub_21A176D98(&qword_27CD03020);
    sub_21A1772F8(&qword_27CD03138, &qword_27CD03140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03130);
  }

  return result;
}

uint64_t sub_21A24E488()
{
  v1 = *(type metadata accessor for GroceriesLabelView.MoreActionsMenuView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21A24D090(v2);
}

uint64_t sub_21A24E4E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A24E550(uint64_t a1)
{
  v72 = a1;
  v1 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v71 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21A2F7894();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v70 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A2F4884();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_21A2F48E4();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21A2F4904();
  v60 = *(v13 - 8);
  v61 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v58 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21A2F48B4();
  v55 = *(v16 - 8);
  v56 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_21A2F48C4();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21A2F4924();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v53 - v30;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v53 - v34;
  v36 = sub_21A2F49B4();
  v68 = *(v36 - 8);
  v69 = v36;
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v53 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_21A2F4AB4();
  v65 = *(v40 - 8);
  v66 = v40;
  MEMORY[0x28223BE20](v40, v41);
  v43 = &v53 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F4A94();
  sub_21A2F49A4();
  v67 = v39;
  if (sub_21A2F4A84())
  {
    MEMORY[0x21CED2EB0]();
    sub_21A2F48A4();
    sub_21A2F4894();
    (*(v55 + 8))(v19, v56);
    sub_21A2F4854();
    (*(v53 + 8))(v22, v54);
    v44 = *(v24 + 8);
    v44(v27, v23);
    v45 = v58;
    sub_21A2F48F4();
    sub_21A2F4914();
    v47 = v60;
    v46 = v61;
  }

  else
  {
    MEMORY[0x21CED2EB0]();
    sub_21A2F48D4();
    sub_21A2F4864();
    (*(v57 + 8))(v12, v59);
    v44 = *(v24 + 8);
    v44(v27, v23);
    v45 = v62;
    sub_21A2F4874();
    sub_21A2F4844();
    v47 = v63;
    v46 = v64;
  }

  (*(v47 + 8))(v45, v46);
  v44(v31, v23);
  sub_21A24DCFC(&qword_27CD031A8, MEMORY[0x277CC9428]);
  sub_21A2F4994();
  v44(v35, v23);
  v48 = v73;
  v49 = v74;
  sub_21A2F7884();
  sub_21A2F4A54();
  sub_21A2F7934();
  sub_21A176C98(&qword_27CCFFF88);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_21A2FC020;
  *(v50 + 56) = MEMORY[0x277D837D0];
  *(v50 + 64) = sub_21A20237C();
  *(v50 + 32) = v48;
  *(v50 + 40) = v49;
  v51 = sub_21A2F7904();

  (*(v68 + 8))(v67, v69);
  (*(v65 + 8))(v43, v66);
  return v51;
}

uint64_t sub_21A24ECF4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_21A176C98(&qword_27CCFEA80) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_21A145E2C;

  return sub_21A2D40C4(a1, v7, v8, v9, v10, v11, v1 + v6, v12);
}

uint64_t sub_21A24EE5C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = *(a1 + 72);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v17 = 1;
      *&v12 = v1;
      *(&v12 + 1) = v2;
      *&v13 = v4;
      *(&v13 + 1) = v3;
      *&v14 = v6;
      *(&v14 + 1) = v5;
      LOBYTE(v15) = 1;
      v8 = 96;
    }

    else
    {
      v17 = 1;
      *&v12 = v1;
      *(&v12 + 1) = v2;
      *&v13 = v4;
      *(&v13 + 1) = v3;
      *&v14 = v6;
      *(&v14 + 1) = v5;
      LOBYTE(v15) = 1;
      if (v7 == 4)
      {
        v8 = 0x80;
      }

      else
      {
        v8 = -96;
      }
    }

    goto LABEL_12;
  }

  if (*(a1 + 72))
  {
    v17 = 1;
    *&v12 = v1;
    *(&v12 + 1) = v2;
    *&v13 = v4;
    *(&v13 + 1) = v3;
    *&v14 = v6;
    *(&v14 + 1) = v5;
    LOBYTE(v15) = 1;
    if (v7 == 1)
    {
      v8 = 32;
    }

    else
    {
      v8 = 64;
    }

LABEL_12:
    BYTE7(v15) = v8;
    *(&v15 + 5) = 0;
    *(&v15 + 1) = 0;
    sub_21A14D9F8();
    sub_21A2F5434();
    goto LABEL_13;
  }

  v9 = a1[6];
  v17 = 1;
  *&v12 = v1;
  *(&v12 + 1) = v2;
  *&v13 = v4;
  *(&v13 + 1) = v3;
  *&v14 = v6;
  *(&v14 + 1) = v5;
  *&v15 = 1;
  *(&v15 + 1) = v9;
  v16 = *(a1 + 7);
  sub_21A14D9F8();
  sub_21A2F5434();
  sub_21A2F5434();
LABEL_13:
  sub_21A2F75F4();
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  v11[0] = v12;
  v11[1] = v13;
  return sub_21A24F124(v11);
}

uint64_t sub_21A24F05C()
{
  v1 = OBJC_IVAR____TtC10CookingKit32TimerUserInteractionEventHandler___scope;
  v2 = sub_21A2F7614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21A24F184(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 73))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 72);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21A24F1CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_21A24F230(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[1];
  v24 = a1[2];
  *v25 = v2;
  *&v25[9] = *(a1 + 57);
  v4 = a1[1];
  v22 = *a1;
  v23 = v4;
  v5 = a2[3];
  v6 = a2[1];
  v28 = a2[2];
  *v29 = v5;
  *&v29[9] = *(a2 + 57);
  v7 = a2[1];
  v26 = *a2;
  v27 = v7;
  *(v31 + 9) = *(a1 + 57);
  v8 = a1[3];
  v30[2] = v24;
  v31[0] = v8;
  v30[0] = v22;
  v30[1] = v3;
  *&v32[9] = *(a2 + 57);
  v9 = a2[3];
  v31[4] = v28;
  *v32 = v9;
  v31[2] = v26;
  v31[3] = v6;
  if (v25[24] > 2u)
  {
    if (v25[24] == 3)
    {
      if (v29[24] != 3)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v25[24] == 4)
      {
        if (v29[24] != 4)
        {
          goto LABEL_22;
        }

        goto LABEL_17;
      }

      if (v29[24] != 5)
      {
LABEL_22:
        sub_21A24F4D4(&v26, v21);
        sub_21A24F4D4(&v22, v21);
        sub_21A24F50C(v30);
LABEL_23:
        LOBYTE(v12) = 0;
        return v12 & 1;
      }
    }

LABEL_17:
    v18 = v22;
    v19 = v23;
    v20 = v24;
    v17[0] = v26;
    v17[1] = v27;
    v17[2] = v28;
    LOBYTE(v12) = _s10CookingKit14StepTimerIndexV2eeoiySbAC_ACtFZ_0(&v18, v17);
    goto LABEL_18;
  }

  if (v25[24])
  {
    if (v25[24] == 1)
    {
      if (v29[24] != 1)
      {
        goto LABEL_22;
      }
    }

    else if (v29[24] != 2)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if (v29[24])
  {
    goto LABEL_22;
  }

  v10 = *v25;
  v11 = *&v25[16];
  v12 = *&v29[8];
  v13 = *v29;
  v14 = *&v29[16];
  v21[0] = v22;
  v21[1] = v4;
  v21[2] = v24;
  v18 = v26;
  v19 = v27;
  v20 = v28;
  if (!_s10CookingKit14StepTimerIndexV2eeoiySbAC_ACtFZ_0(v21, &v18))
  {
    goto LABEL_22;
  }

  if (!*(&v10 + 1))
  {
    sub_21A24F4D4(&v26, v21);
    sub_21A24F4D4(&v22, v21);
    sub_21A2F5434();
    sub_21A24F50C(v30);
    if (v12)
    {

      goto LABEL_23;
    }

LABEL_28:
    LOBYTE(v12) = v11 == v14;
    return v12 & 1;
  }

  if (v12)
  {
    if (v10 == __PAIR128__(v12, v13))
    {
      sub_21A24F4D4(&v26, v21);
      sub_21A24F4D4(&v22, v21);
      sub_21A24F50C(v30);
    }

    else
    {
      v16 = sub_21A2F8394();
      sub_21A24F4D4(&v26, v21);
      sub_21A24F4D4(&v22, v21);
      sub_21A24F50C(v30);
      LOBYTE(v12) = 0;
      if ((v16 & 1) == 0)
      {
        return v12 & 1;
      }
    }

    goto LABEL_28;
  }

LABEL_18:
  sub_21A24F4D4(&v26, v21);
  sub_21A24F4D4(&v22, v21);
  sub_21A24F50C(v30);
  return v12 & 1;
}

uint64_t sub_21A24F50C(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD031C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A24F574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v64 = sub_21A176C98(&qword_27CCFFFF8);
  MEMORY[0x28223BE20](v64, v3);
  v65 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v63 = &v60 - v7;
  v8 = sub_21A176C98(&qword_27CD03280);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v60 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v60 - v18;
  v20 = sub_21A2F5294();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v66 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v68 = &v60 - v26;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v60 - v29;
  v31 = sub_21A2F4BF4();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v60 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Duration();
  v69 = *(v36 - 8);
  v70 = v36;
  v38 = MEMORY[0x28223BE20](v36, v37);
  v67 = &v60 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v35, a1, v31, v38);
  v40 = (*(v32 + 88))(v35, v31);
  if (v40 == *MEMORY[0x277CFCA48])
  {
    v41 = v71;
    (*(v32 + 96))(v35, v31);
    sub_21A2F5264();
    (*(v32 + 8))(a1, v31);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      v15 = v19;
LABEL_11:
      sub_21A1427A8(v15, &qword_27CD03280);
      v45 = 1;
      v46 = v70;
      return (*(v69 + 56))(v41, v45, 1, v46);
    }

    v43 = *(v21 + 32);
    v43(v30, v19, v20);
    v44 = v67;
    v43(v67, v30, v20);
LABEL_14:
    v58 = v70;
    swift_storeEnumTagMultiPayload();
    sub_21A251FFC(v44, v41);
    v46 = v58;
    v45 = 0;
    return (*(v69 + 56))(v41, v45, 1, v46);
  }

  v62 = a1;
  if (v40 == *MEMORY[0x277CFCA50])
  {
    (*(v32 + 96))(v35, v31);
    sub_21A2F5264();
    v42 = *(v21 + 48);
    if (v42(v15, 1, v20) == 1)
    {
      (*(v32 + 8))(v62, v31);

LABEL_10:
      v41 = v71;
      goto LABEL_11;
    }

    v61 = *(v21 + 32);
    v61(v68, v15, v20);
    sub_21A2F5264();
    if (v42(v11, 1, v20) == 1)
    {
      (*(v32 + 8))(v62, v31);
      (*(v21 + 8))(v68, v20);
      v15 = v11;
      goto LABEL_10;
    }

    v47 = v66;
    v61(v66, v11, v20);
    sub_21A13C454(&qword_2811B3DB0, MEMORY[0x277D6CBB8]);
    v48 = v68;
    v49 = sub_21A2F7854();
    (*(v32 + 8))(v62, v31);
    v41 = v71;
    if (v49)
    {
      v50 = v63;
      v51 = v61;
      v61(v63, v48, v20);
      v52 = v64;
      v51(v50 + *(v64 + 48), v47, v20);
      v53 = v65;
      sub_21A252060(v50, v65);
      v54 = *(v52 + 48);
      v60 = v21 + 32;
      v44 = v67;
      v51(v67, v53, v20);
      v55 = *(v21 + 8);
      v55(v53 + v54, v20);
      sub_21A149B18(v50, v53, &qword_27CCFFFF8);
      v56 = *(v52 + 48);
      v57 = sub_21A176C98(&qword_27CCFF388);
      v51(v44 + *(v57 + 36), (v53 + v56), v20);
      v55(v53, v20);
      goto LABEL_14;
    }

    __break(1u);
  }

  result = sub_21A2F8384();
  __break(1u);
  return result;
}

uint64_t Duration.range.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Duration();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A24FE04(v2, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21A149B18(v7, a1, &qword_27CCFF388);
    v8 = sub_21A176C98(&qword_27CCFF388);
    return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
  }

  else
  {
    v10 = sub_21A176C98(&qword_27CCFF388);
    (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
    return sub_21A24FE68(v7);
  }
}

uint64_t sub_21A24FE04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Duration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A24FE68(uint64_t a1)
{
  v2 = type metadata accessor for Duration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A24FEC8()
{
  if (*v0)
  {
    return 0x65676E6172;
  }

  else
  {
    return 0x7463617865;
  }
}

uint64_t sub_21A24FEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7463617865 && a2 == 0xE500000000000000;
  if (v6 || (sub_21A2F8394() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A2F8394();

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

uint64_t sub_21A24FFC8(uint64_t a1)
{
  v2 = sub_21A251E64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A250004(uint64_t a1)
{
  v2 = sub_21A251E64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A250040(uint64_t a1)
{
  v2 = sub_21A251F0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A25007C(uint64_t a1)
{
  v2 = sub_21A251F0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A2500B8(uint64_t a1)
{
  v2 = sub_21A251EB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A2500F4(uint64_t a1)
{
  v2 = sub_21A251EB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Duration.encode(to:)(void *a1)
{
  v2 = sub_21A176C98(&qword_27CD031C8);
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v36 = &v31 - v4;
  v34 = sub_21A176C98(&qword_27CCFF388);
  MEMORY[0x28223BE20](v34, v5);
  v35 = &v31 - v6;
  v7 = sub_21A176C98(&qword_27CD031D0);
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v31 - v9;
  v31 = sub_21A2F5294();
  v40 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Duration();
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_21A176C98(&qword_27CD031D8);
  v18 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v19);
  v21 = &v31 - v20;
  sub_21A142764(a1, a1[3]);
  sub_21A251E64();
  sub_21A2F84B4();
  sub_21A24FE04(v39, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v17;
    v23 = v35;
    sub_21A149B18(v22, v35, &qword_27CCFF388);
    v43 = 1;
    sub_21A251EB8();
    v24 = v36;
    v25 = v41;
    sub_21A2F82A4();
    sub_21A251F60(&qword_27CD031F0, &qword_27CD031F8);
    v26 = v38;
    sub_21A2F8324();
    (*(v37 + 8))(v24, v26);
    sub_21A1427A8(v23, &qword_27CCFF388);
    return (*(v18 + 8))(v21, v25);
  }

  else
  {
    v28 = v31;
    (*(v40 + 32))(v13, v17, v31);
    v42 = 0;
    sub_21A251F0C();
    v29 = v41;
    sub_21A2F82A4();
    sub_21A13C454(&qword_27CD031F8, MEMORY[0x277D6CBB8]);
    v30 = v33;
    sub_21A2F8324();
    (*(v32 + 8))(v10, v30);
    (*(v40 + 8))(v13, v28);
    return (*(v18 + 8))(v21, v29);
  }
}

uint64_t Duration.hash(into:)()
{
  v1 = sub_21A176C98(&qword_27CCFF388);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v15 - v3;
  v5 = sub_21A2F5294();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Duration();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A24FE04(v0, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21A149B18(v13, v4, &qword_27CCFF388);
    MEMORY[0x21CED6EE0](1);
    sub_21A13C454(&qword_27CD01090, MEMORY[0x277D6CBB8]);
    sub_21A2F7804();
    sub_21A2F7804();
    return sub_21A1427A8(v4, &qword_27CCFF388);
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    MEMORY[0x21CED6EE0](0);
    sub_21A13C454(&qword_27CD01090, MEMORY[0x277D6CBB8]);
    sub_21A2F7804();
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t Duration.hashValue.getter()
{
  sub_21A2F8434();
  Duration.hash(into:)();
  return sub_21A2F8474();
}

uint64_t Duration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_21A176C98(&qword_27CD03208);
  v4 = *(v3 - 8);
  v50 = v3;
  v51 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v54 = &v43 - v6;
  v7 = sub_21A176C98(&qword_27CD03210);
  v8 = *(v7 - 8);
  v48 = v7;
  v49 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v53 = &v43 - v10;
  v11 = sub_21A176C98(&qword_27CD03218);
  v52 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v43 - v13;
  v15 = type metadata accessor for Duration();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v43 - v21;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v43 - v25;
  v27 = a1[3];
  v56 = a1;
  sub_21A142764(a1, v27);
  sub_21A251E64();
  v28 = v55;
  sub_21A2F8494();
  if (!v28)
  {
    v45 = v18;
    v46 = v22;
    v30 = v53;
    v29 = v54;
    v44 = v26;
    v55 = v15;
    v31 = v52;
    v32 = sub_21A2F8294();
    v33 = (2 * *(v32 + 16)) | 1;
    v57 = v32;
    v58 = v32 + 32;
    v59 = 0;
    v60 = v33;
    v34 = sub_21A207C98();
    if (v34 == 2 || v59 != v60 >> 1)
    {
      v37 = sub_21A2F8064();
      swift_allocError();
      v39 = v38;
      sub_21A176C98(&qword_27CD012F0);
      *v39 = v55;
      sub_21A2F8204();
      sub_21A2F8054();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
      swift_willThrow();
      (*(v31 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v34)
      {
        v61 = 1;
        sub_21A251EB8();
        sub_21A2F81F4();
        sub_21A176C98(&qword_27CCFF388);
        sub_21A251F60(&qword_27CD03220, &qword_27CD03228);
        v35 = v45;
        v36 = v50;
        sub_21A2F8284();
        (*(v51 + 8))(v29, v36);
      }

      else
      {
        v61 = 0;
        sub_21A251F0C();
        sub_21A2F81F4();
        sub_21A2F5294();
        sub_21A13C454(&qword_27CD03228, MEMORY[0x277D6CBB8]);
        v35 = v46;
        v41 = v48;
        sub_21A2F8284();
        (*(v49 + 8))(v30, v41);
      }

      (*(v31 + 8))(v14, v11);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v42 = v44;
      sub_21A251FFC(v35, v44);
      sub_21A251FFC(v42, v47);
    }
  }

  return sub_21A142808(v56);
}

uint64_t sub_21A250FE8()
{
  sub_21A2F8434();
  Duration.hash(into:)();
  return sub_21A2F8474();
}

uint64_t sub_21A25102C()
{
  sub_21A2F8434();
  Duration.hash(into:)();
  return sub_21A2F8474();
}

uint64_t static Duration.exact(minutes:)()
{
  sub_21A2F5274();
  type metadata accessor for Duration();

  return swift_storeEnumTagMultiPayload();
}

uint64_t static Duration.minuteRange(_:)@<X0>(char *a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CCFFFF8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v25 - v8;
  v10 = sub_21A2F5294();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v25 - v17;
  sub_21A2F5274();
  sub_21A2F5274();
  sub_21A13C454(&qword_2811B3DB0, MEMORY[0x277D6CBB8]);
  result = sub_21A2F7854();
  if (result)
  {
    v20 = *(v11 + 32);
    v20(v9, v18, v10);
    v20(&v9[*(v2 + 48)], v14, v10);
    sub_21A252060(v9, v5);
    v21 = *(v2 + 48);
    v20(a1, v5, v10);
    v22 = *(v11 + 8);
    v22(&v5[v21], v10);
    sub_21A149B18(v9, v5, &qword_27CCFFFF8);
    v23 = *(v2 + 48);
    v24 = sub_21A176C98(&qword_27CCFF388);
    v20(&a1[*(v24 + 36)], &v5[v23], v10);
    v22(v5, v10);
    type metadata accessor for Duration();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Duration.formatted<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v37 = a1;
  v4 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v35[1] = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A2F7894();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v35[0] = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21A176C98(&qword_27CCFF388);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v35 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness, v15);
  v16 = sub_21A2F5294();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Duration();
  MEMORY[0x28223BE20](v21, v22);
  v24 = v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A24FE04(v35[2], v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21A149B18(v24, v13, &qword_27CCFF388);
    sub_21A2F5284();
    v36 = sub_21A2F7A84();
    v26 = v25;
    sub_21A2F5284();
    v27 = sub_21A2F7A84();
    v29 = v28;
    sub_21A2F7884();
    sub_21A2F4A54();
    sub_21A2F7934();
    sub_21A176C98(&qword_27CCFFF88);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_21A2FEED0;
    v31 = MEMORY[0x277D837D0];
    *(v30 + 56) = MEMORY[0x277D837D0];
    v32 = sub_21A20237C();
    *(v30 + 32) = v36;
    *(v30 + 40) = v26;
    *(v30 + 96) = v31;
    *(v30 + 104) = v32;
    *(v30 + 64) = v32;
    *(v30 + 72) = v27;
    *(v30 + 80) = v29;
    v33 = sub_21A2F78B4();

    sub_21A1427A8(v13, &qword_27CCFF388);
  }

  else
  {
    (*(v17 + 32))(v20, v24, v16);
    sub_21A2F5284();
    v33 = sub_21A2F7A84();
    (*(v17 + 8))(v20, v16);
  }

  return v33;
}

Swift::Bool __swiftcall Duration.hasNonZeroValue()()
{
  v1 = sub_21A176C98(&qword_27CCFF388);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v20 - v3;
  v5 = sub_21A2F5294();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Duration();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A24FE04(v0, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21A149B18(v13, v4, &qword_27CCFF388);
    sub_21A2F5244();
    if (v14 <= 0.0)
    {
      v16 = 0;
    }

    else
    {
      sub_21A2F5244();
      v16 = v15 > 0.0;
    }

    sub_21A1427A8(v4, &qword_27CCFF388);
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_21A2F5244();
    v18 = v17;
    (*(v6 + 8))(v9, v5);
    return v18 > 0.0;
  }

  return v16;
}

uint64_t _s10CookingKit8DurationO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v31 = sub_21A176C98(&qword_27CCFF388);
  MEMORY[0x28223BE20](v31, v4);
  v32 = &v31 - v5;
  v6 = sub_21A2F5294();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Duration();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v31 - v17;
  v19 = sub_21A176C98(&qword_27CCFF390);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v31 - v21;
  v24 = *(v23 + 56);
  sub_21A24FE04(a1, &v31 - v21);
  sub_21A24FE04(a2, &v22[v24]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21A24FE04(v22, v18);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v7 + 32))(v10, &v22[v24], v6);
      v28 = MEMORY[0x21CED3CF0](v18, v10);
      v29 = *(v7 + 8);
      v29(v10, v6);
      v29(v18, v6);
      sub_21A24FE68(v22);
      return v28 & 1;
    }

    (*(v7 + 8))(v18, v6);
    goto LABEL_9;
  }

  sub_21A24FE04(v22, v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21A1427A8(v14, &qword_27CCFF388);
LABEL_9:
    sub_21A1427A8(v22, &qword_27CCFF390);
LABEL_13:
    v28 = 0;
    return v28 & 1;
  }

  v25 = &v22[v24];
  v26 = v32;
  sub_21A149B18(v25, v32, &qword_27CCFF388);
  sub_21A13C454(&qword_27CCFF398, MEMORY[0x277D6CBB8]);
  if ((sub_21A2F7874() & 1) == 0)
  {
    sub_21A1427A8(v26, &qword_27CCFF388);
    sub_21A1427A8(v14, &qword_27CCFF388);
    goto LABEL_12;
  }

  v27 = sub_21A2F7874();
  sub_21A1427A8(v26, &qword_27CCFF388);
  sub_21A1427A8(v14, &qword_27CCFF388);
  if ((v27 & 1) == 0)
  {
LABEL_12:
    sub_21A24FE68(v22);
    goto LABEL_13;
  }

  sub_21A24FE68(v22);
  v28 = 1;
  return v28 & 1;
}

unint64_t sub_21A251E64()
{
  result = qword_27CD031E0;
  if (!qword_27CD031E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD031E0);
  }

  return result;
}

unint64_t sub_21A251EB8()
{
  result = qword_27CD031E8;
  if (!qword_27CD031E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD031E8);
  }

  return result;
}

unint64_t sub_21A251F0C()
{
  result = qword_27CD03200;
  if (!qword_27CD03200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03200);
  }

  return result;
}

uint64_t sub_21A251F60(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(&qword_27CCFF388);
    sub_21A13C454(a2, MEMORY[0x277D6CBB8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A251FFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Duration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A252060(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFFFF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A25214C()
{
  result = qword_27CD03238;
  if (!qword_27CD03238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03238);
  }

  return result;
}

unint64_t sub_21A2521A4()
{
  result = qword_27CD03240;
  if (!qword_27CD03240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03240);
  }

  return result;
}

unint64_t sub_21A2521FC()
{
  result = qword_27CD03248;
  if (!qword_27CD03248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03248);
  }

  return result;
}

unint64_t sub_21A252254()
{
  result = qword_27CD03250;
  if (!qword_27CD03250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03250);
  }

  return result;
}

unint64_t sub_21A2522AC()
{
  result = qword_27CD03258;
  if (!qword_27CD03258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03258);
  }

  return result;
}

unint64_t sub_21A252304()
{
  result = qword_27CD03260;
  if (!qword_27CD03260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03260);
  }

  return result;
}

unint64_t sub_21A25235C()
{
  result = qword_27CD03268;
  if (!qword_27CD03268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03268);
  }

  return result;
}

unint64_t sub_21A2523B4()
{
  result = qword_27CD03270;
  if (!qword_27CD03270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03270);
  }

  return result;
}

unint64_t sub_21A25240C()
{
  result = qword_27CD03278;
  if (!qword_27CD03278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03278);
  }

  return result;
}

uint64_t RecipeAuthor.id.getter()
{
  v1 = *v0;
  sub_21A2F5434();
  return v1;
}

uint64_t RecipeAuthor.name.getter()
{
  v1 = *(v0 + 16);
  sub_21A2F5434();
  return v1;
}

uint64_t sub_21A2524C4(uint64_t a1)
{
  v2 = sub_21A252900();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A252500(uint64_t a1)
{
  v2 = sub_21A252900();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeAuthor.encode(to:)(void *a1)
{
  v3 = sub_21A176C98(&qword_27CD03288);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  sub_21A142764(a1, a1[3]);
  sub_21A252900();
  sub_21A2F84B4();
  v13 = 0;
  v9 = v11[3];
  sub_21A2F82B4();
  if (!v9)
  {
    v12 = 1;
    sub_21A2F82E4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t RecipeAuthor.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_21A176C98(&qword_27CD03298);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  sub_21A142764(a1, a1[3]);
  sub_21A252900();
  sub_21A2F8494();
  if (v2)
  {
    return sub_21A142808(a1);
  }

  v20 = 0;
  v10 = sub_21A2F8214();
  v12 = v11;
  v18 = v10;
  v19 = 1;
  v13 = sub_21A2F8244();
  v15 = v14;
  (*(v6 + 8))(v9, v5);
  *a2 = v18;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v15;
  sub_21A2F5434();
  sub_21A2F5434();
  sub_21A142808(a1);
}

unint64_t sub_21A252900()
{
  result = qword_27CD03290;
  if (!qword_27CD03290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03290);
  }

  return result;
}

unint64_t sub_21A252968()
{
  result = qword_27CD032A0;
  if (!qword_27CD032A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD032A0);
  }

  return result;
}

unint64_t sub_21A2529C0()
{
  result = qword_27CD032A8;
  if (!qword_27CD032A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD032A8);
  }

  return result;
}

unint64_t sub_21A252A18()
{
  result = qword_27CD032B0;
  if (!qword_27CD032B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD032B0);
  }

  return result;
}

uint64_t Dependencies.recipeCardID.getter()
{
  sub_21A252ABC();
  sub_21A227EAC();
  sub_21A2F7624();
  return v1;
}

unint64_t sub_21A252ABC()
{
  result = qword_27CD032B8;
  if (!qword_27CD032B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD032B8);
  }

  return result;
}

double sub_21A252B10@<D0>(_OWORD *a1@<X8>)
{
  sub_21A252ABC();
  sub_21A227EAC();
  sub_21A2F7624();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_21A252B74()
{
  sub_21A252ABC();
  sub_21A227EAC();
  sub_21A2F5434();
  return sub_21A2F7634();
}

uint64_t Dependencies.recipeCardID.setter()
{
  sub_21A252ABC();
  sub_21A227EAC();
  return sub_21A2F7634();
}

void (*Dependencies.recipeCardID.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_21A252ABC();
  *(v4 + 48) = sub_21A227EAC();
  sub_21A2F7624();
  *v4 = *(v4 + 16);
  return sub_21A252CD8;
}

void sub_21A252CD8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v2[3] = v3;
  if (a2)
  {
    sub_21A2F5434();
    sub_21A2F7634();
  }

  else
  {
    sub_21A2F7634();
  }

  free(v2);
}

uint64_t sub_21A252D90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

unint64_t sub_21A252E44()
{
  result = qword_27CD032C0;
  if (!qword_27CD032C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD032C0);
  }

  return result;
}

unint64_t sub_21A252E9C()
{
  result = qword_27CD032C8;
  if (!qword_27CD032C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD032C8);
  }

  return result;
}

unint64_t sub_21A252FB8()
{
  result = qword_27CD032D0;
  if (!qword_27CD032D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD032D0);
  }

  return result;
}

unint64_t sub_21A253010()
{
  result = qword_27CD032D8;
  if (!qword_27CD032D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD032D8);
  }

  return result;
}

BOOL sub_21A2530A0(void *a1, uint64_t *a2)
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

void *sub_21A2530D0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_21A2530FC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_21A2531D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for StructuredComponent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StructuredComponent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_21A25324C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  v3 = sub_21A2F4F64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v22[-v11];
  v30 = *(a1 + 16);
  v13 = 0;
  if (v30)
  {
    v14 = 0;
    v29 = v4 + 88;
    v15 = *MEMORY[0x277CFCC50];
    v27 = *MEMORY[0x277CFCC30];
    v28 = v15;
    v16 = *MEMORY[0x277CFCC48];
    v25 = *MEMORY[0x277CFCC40];
    v26 = v16;
    v23 = *MEMORY[0x277CFCC38];
    while (v14 < *(a1 + 16))
    {
      v19 = *(v4 + 16);
      v19(v12, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14, v3, v10);
      (v19)(v7, v12, v3);
      v20 = (*(v4 + 88))(v7, v3);
      if (v20 == v28)
      {
        v17 = 1;
      }

      else if (v20 == v27)
      {
        v17 = 2;
      }

      else if (v20 == v26)
      {
        v17 = 4;
      }

      else if (v20 == v25)
      {
        v17 = 8;
      }

      else
      {
        if (v20 != v23)
        {
          goto LABEL_20;
        }

        v17 = 16;
      }

      ++v14;
      (*(v4 + 8))(v12, v3);
      if ((v17 & v13) != 0)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      v13 |= v18;
      if (v30 == v14)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    result = sub_21A2F8384();
    __break(1u);
  }

  else
  {
LABEL_18:

    *v24 = v13;
  }

  return result;
}

uint64_t sub_21A2534D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v61 = a2;
  v3 = sub_21A2F4D74();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v56 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v57 = &v53 - v8;
  MEMORY[0x28223BE20](v9, v10);
  v58 = &v53 - v11;
  v12 = sub_21A2F4C94();
  v54 = *(v12 - 8);
  v55 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v53 - v18;
  v20 = sub_21A2F4C84();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v53 - v27;
  v29 = sub_21A2F4D64();
  v30 = *(v29 - 8);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v34 = (&v53 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v34, a1, v29, v32);
  v35 = (*(v30 + 88))(v34, v29);
  if (v35 == *MEMORY[0x277CFCBE8])
  {
    (*(v30 + 8))(a1, v29);
    result = (*(v30 + 96))(v34, v29);
    v37 = 0;
    v39 = *v34;
    v38 = v34[1];
LABEL_14:
    v52 = v61;
    *v61 = v39;
    v52[1] = v38;
    *(v52 + 16) = v37;
    return result;
  }

  if (v35 == *MEMORY[0x277CFCBD8])
  {
    (*(v30 + 96))(v34, v29);
    (*(v21 + 32))(v28, v34, v20);
    (*(v21 + 16))(v24, v28, v20);
    sub_21A225700(v24, &v62);
    (*(v30 + 8))(a1, v29);
    result = (*(v21 + 8))(v28, v20);
    v38 = 0;
    v39 = v62;
    v37 = 1;
    goto LABEL_14;
  }

  if (v35 == *MEMORY[0x277CFCBE0])
  {
    (*(v30 + 96))(v34, v29);
    v41 = v54;
    v40 = v55;
    (*(v54 + 32))(v19, v34, v55);
    (*(v41 + 16))(v15, v19, v40);
    sub_21A2074CC(v15, &v63);
    (*(v30 + 8))(a1, v29);
    result = (*(v41 + 8))(v19, v40);
    v38 = 0;
    v39 = v63;
    v37 = 2;
    goto LABEL_14;
  }

  if (v35 == *MEMORY[0x277CFCBD0])
  {
    (*(v30 + 96))(v34, v29);
    v43 = v58;
    v42 = v59;
    v44 = v60;
    (*(v59 + 32))(v58, v34, v60);
    v45 = *(v42 + 16);
    v46 = v57;
    v45(v57, v43, v44);
    v47 = v56;
    v45(v56, v46, v44);
    v48 = (*(v42 + 88))(v47, v44);
    if (v48 == *MEMORY[0x277CFCBF8])
    {
      (*(v30 + 8))(a1, v29);
      v49 = *(v42 + 8);
      v49(v46, v44);
      result = (v49)(v43, v44);
      v39 = 0;
      v38 = 0;
      v37 = 3;
      goto LABEL_14;
    }

    if (v48 == *MEMORY[0x277CFCC00])
    {
      (*(v30 + 8))(a1, v29);
      v50 = *(v42 + 8);
      v50(v46, v44);
      result = (v50)(v43, v44);
      v38 = 0;
      v37 = 3;
      v39 = 1;
      goto LABEL_14;
    }

    if (v48 == *MEMORY[0x277CFCBF0])
    {
      (*(v30 + 8))(a1, v29);
      v51 = *(v42 + 8);
      v51(v46, v44);
      result = (v51)(v43, v44);
      v38 = 0;
      v37 = 3;
      v39 = 2;
      goto LABEL_14;
    }
  }

  else
  {
    sub_21A2F8384();
    __break(1u);
  }

  result = sub_21A2F8384();
  __break(1u);
  return result;
}

uint64_t sub_21A253BA0()
{
  v1 = 0x6465746E756F63;
  v2 = 0x746867696577;
  if (*v0 != 2)
  {
    v2 = 0x74617265706D6574;
  }

  if (*v0)
  {
    v1 = 0x656D756C6F76;
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

uint64_t sub_21A253C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A255920(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A253C44(uint64_t a1)
{
  v2 = sub_21A254F68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A253C80(uint64_t a1)
{
  v2 = sub_21A254F68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A253CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21A2F8394();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21A253D54(uint64_t a1)
{
  v2 = sub_21A2551B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A253D90(uint64_t a1)
{
  v2 = sub_21A2551B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A253DCC(uint64_t a1)
{
  v2 = sub_21A254FBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A253E08(uint64_t a1)
{
  v2 = sub_21A254FBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A253E44(uint64_t a1)
{
  v2 = sub_21A25510C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A253E80(uint64_t a1)
{
  v2 = sub_21A25510C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A253EBC(uint64_t a1)
{
  v2 = sub_21A255064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A253EF8(uint64_t a1)
{
  v2 = sub_21A255064();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MeasurementUnit.encode(to:)(void *a1)
{
  v3 = sub_21A176C98(&qword_27CD032E0);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v36 = &v29 - v5;
  v6 = sub_21A176C98(&qword_27CD032E8);
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v33 = &v29 - v8;
  v9 = sub_21A176C98(&qword_27CD032F0);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v29 - v11;
  v13 = sub_21A176C98(&qword_27CD032F8);
  v30 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v29 - v15;
  v17 = sub_21A176C98(&qword_27CD03300);
  v40 = *(v17 - 8);
  v41 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v29 - v19;
  v21 = v1[1];
  v39 = *v1;
  v29 = v21;
  v22 = *(v1 + 16);
  sub_21A142764(a1, a1[3]);
  sub_21A254F68();
  sub_21A2F84B4();
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v46 = 2;
      sub_21A255064();
      v24 = v33;
      v23 = v41;
      sub_21A2F82A4();
      v45 = v39;
      sub_21A2550B8();
      v25 = v35;
      sub_21A2F8324();
      v26 = v34;
    }

    else
    {
      v48 = 3;
      sub_21A254FBC();
      v24 = v36;
      v23 = v41;
      sub_21A2F82A4();
      v47 = v39;
      sub_21A255010();
      v25 = v38;
      sub_21A2F8324();
      v26 = v37;
    }

    (*(v26 + 8))(v24, v25);
  }

  else if (v22)
  {
    v44 = 1;
    sub_21A25510C();
    v23 = v41;
    sub_21A2F82A4();
    v43 = v39;
    sub_21A255160();
    v27 = v32;
    sub_21A2F8324();
    (*(v31 + 8))(v12, v27);
  }

  else
  {
    v42 = 0;
    sub_21A2551B4();
    v23 = v41;
    sub_21A2F82A4();
    sub_21A2F82B4();
    (*(v30 + 8))(v16, v13);
  }

  return (*(v40 + 8))(v20, v23);
}

uint64_t MeasurementUnit.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v60 = sub_21A176C98(&qword_27CD03348);
  v54 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v3);
  v59 = &v50 - v4;
  v53 = sub_21A176C98(&qword_27CD03350);
  v57 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v5);
  v58 = &v50 - v6;
  v7 = sub_21A176C98(&qword_27CD03358);
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v50 - v9;
  v11 = sub_21A176C98(&qword_27CD03360);
  v52 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v50 - v13;
  v15 = sub_21A176C98(&qword_27CD03368);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v50 - v18;
  v20 = a1[3];
  v63 = a1;
  sub_21A142764(a1, v20);
  sub_21A254F68();
  v21 = v62;
  sub_21A2F8494();
  if (!v21)
  {
    v22 = v14;
    v50 = v11;
    v51 = 0;
    v23 = v10;
    v24 = v58;
    v25 = v59;
    v62 = v16;
    v27 = v60;
    v26 = v61;
    v28 = sub_21A2F8294();
    v29 = (2 * *(v28 + 16)) | 1;
    v64 = v28;
    v65 = v28 + 32;
    v66 = 0;
    v67 = v29;
    v30 = sub_21A207C9C();
    if (v30 == 4 || v66 != v67 >> 1)
    {
      v34 = sub_21A2F8064();
      swift_allocError();
      v36 = v35;
      sub_21A176C98(&qword_27CD012F0);
      *v36 = &type metadata for MeasurementUnit;
      sub_21A2F8204();
      sub_21A2F8054();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v62 + 8))(v19, v15);
LABEL_9:
      swift_unknownObjectRelease();
      return sub_21A142808(v63);
    }

    v68 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v69 = 1;
        sub_21A25510C();
        v42 = v51;
        sub_21A2F81F4();
        if (!v42)
        {
          sub_21A2552B0();
          v43 = v56;
          sub_21A2F8284();
          (*(v55 + 8))(v23, v43);
          (*(v62 + 8))(v19, v15);
          swift_unknownObjectRelease();
          v48 = 0;
          v46 = v69;
          v49 = v26;
          goto LABEL_21;
        }
      }

      else
      {
        v69 = 0;
        sub_21A2551B4();
        v31 = v22;
        v32 = v51;
        sub_21A2F81F4();
        if (!v32)
        {
          v33 = v50;
          v46 = sub_21A2F8214();
          v48 = v47;
          (*(v52 + 8))(v31, v33);
          (*(v62 + 8))(v19, v15);
          swift_unknownObjectRelease();
          v49 = v26;
LABEL_21:
          *v49 = v46;
          *(v49 + 8) = v48;
          *(v49 + 16) = v68;
          return sub_21A142808(v63);
        }
      }

LABEL_14:
      (*(v62 + 8))(v19, v15);
      goto LABEL_9;
    }

    v49 = v26;
    if (v30 == 2)
    {
      v69 = 2;
      sub_21A255064();
      v38 = v24;
      v39 = v51;
      sub_21A2F81F4();
      v40 = v62;
      if (!v39)
      {
        sub_21A25525C();
        v41 = v53;
        sub_21A2F8284();
        (*(v57 + 8))(v38, v41);
        (*(v40 + 8))(v19, v15);
        swift_unknownObjectRelease();
        v48 = 0;
        v46 = v69;
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    v69 = 3;
    sub_21A254FBC();
    v44 = v51;
    sub_21A2F81F4();
    v45 = v62;
    if (!v44)
    {
      sub_21A255208();
      sub_21A2F8284();
      (*(v54 + 8))(v25, v27);
      (*(v45 + 8))(v19, v15);
      swift_unknownObjectRelease();
      v48 = 0;
      v46 = v69;
      goto LABEL_21;
    }

    (*(v62 + 8))(v19, v15);
    swift_unknownObjectRelease();
  }

  return sub_21A142808(v63);
}

BOOL _s10CookingKit15MeasurementUnitO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v7 != 2)
      {
        goto LABEL_13;
      }

      sub_21A1A37B8(*a1, v3, 2);
      v8 = v5;
      v9 = v6;
      v10 = 2;
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_13;
      }

      sub_21A1A37B8(*a1, v3, 3);
      v8 = v5;
      v9 = v6;
      v10 = 3;
    }

LABEL_12:
    sub_21A1A37B8(v8, v9, v10);
    return v5 == v2;
  }

  if (*(a1 + 16))
  {
    if (v7 != 1)
    {
      goto LABEL_13;
    }

    sub_21A1A37B8(*a1, v3, 1);
    v8 = v5;
    v9 = v6;
    v10 = 1;
    goto LABEL_12;
  }

  if (*(a2 + 16))
  {
    sub_21A2F5434();
LABEL_13:
    sub_21A1A3840(v5, v6, v7);
    sub_21A1A37B8(v2, v3, v4);
    v12 = v5;
    v13 = v6;
    v14 = v7;
LABEL_14:
    sub_21A1A37B8(v12, v13, v14);
    return 0;
  }

  if (!v3)
  {
    sub_21A2F5434();
    sub_21A1A3840(v5, v6, 0);
    sub_21A1A3840(v2, 0, 0);
    sub_21A1A37B8(v2, 0, 0);
    sub_21A1A37B8(v5, v6, 0);
    if (!v6)
    {
      return 1;
    }

LABEL_24:
    v12 = v5;
    v13 = v6;
    v14 = 0;
    goto LABEL_14;
  }

  if (!v6)
  {
    sub_21A1A3840(*a2, 0, 0);
    sub_21A1A3840(v5, 0, 0);
    sub_21A1A3840(v2, v3, 0);
    sub_21A1A37B8(v2, v3, 0);
    goto LABEL_24;
  }

  if (v2 == v5 && v3 == v6)
  {
    sub_21A1A3840(*a1, v3, 0);
    sub_21A1A3840(v2, v3, 0);
    sub_21A1A37B8(v2, v3, 0);
    sub_21A1A37B8(v2, v3, 0);
    return 1;
  }

  v15 = sub_21A2F8394();
  sub_21A1A3840(v5, v6, 0);
  sub_21A1A3840(v2, v3, 0);
  sub_21A1A37B8(v2, v3, 0);
  sub_21A1A37B8(v5, v6, 0);
  return (v15 & 1) != 0;
}

unint64_t sub_21A254F68()
{
  result = qword_27CD03308;
  if (!qword_27CD03308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03308);
  }

  return result;
}

unint64_t sub_21A254FBC()
{
  result = qword_27CD03310;
  if (!qword_27CD03310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03310);
  }

  return result;
}

unint64_t sub_21A255010()
{
  result = qword_27CD03318;
  if (!qword_27CD03318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03318);
  }

  return result;
}

unint64_t sub_21A255064()
{
  result = qword_27CD03320;
  if (!qword_27CD03320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03320);
  }

  return result;
}

unint64_t sub_21A2550B8()
{
  result = qword_27CD03328;
  if (!qword_27CD03328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03328);
  }

  return result;
}

unint64_t sub_21A25510C()
{
  result = qword_27CD03330;
  if (!qword_27CD03330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03330);
  }

  return result;
}

unint64_t sub_21A255160()
{
  result = qword_27CD03338;
  if (!qword_27CD03338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03338);
  }

  return result;
}

unint64_t sub_21A2551B4()
{
  result = qword_27CD03340;
  if (!qword_27CD03340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03340);
  }

  return result;
}

unint64_t sub_21A255208()
{
  result = qword_27CD03370;
  if (!qword_27CD03370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03370);
  }

  return result;
}

unint64_t sub_21A25525C()
{
  result = qword_27CD03378;
  if (!qword_27CD03378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03378);
  }

  return result;
}

unint64_t sub_21A2552B0()
{
  result = qword_27CD03380;
  if (!qword_27CD03380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03380);
  }

  return result;
}

uint64_t sub_21A255304(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21A25534C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

unint64_t sub_21A2553FC()
{
  result = qword_27CD03388;
  if (!qword_27CD03388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03388);
  }

  return result;
}

unint64_t sub_21A255454()
{
  result = qword_27CD03390;
  if (!qword_27CD03390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03390);
  }

  return result;
}

unint64_t sub_21A2554AC()
{
  result = qword_27CD03398;
  if (!qword_27CD03398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03398);
  }

  return result;
}

unint64_t sub_21A255504()
{
  result = qword_27CD033A0;
  if (!qword_27CD033A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD033A0);
  }

  return result;
}

unint64_t sub_21A25555C()
{
  result = qword_27CD033A8;
  if (!qword_27CD033A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD033A8);
  }

  return result;
}

unint64_t sub_21A2555B4()
{
  result = qword_27CD033B0;
  if (!qword_27CD033B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD033B0);
  }

  return result;
}

unint64_t sub_21A25560C()
{
  result = qword_27CD033B8;
  if (!qword_27CD033B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD033B8);
  }

  return result;
}

unint64_t sub_21A255664()
{
  result = qword_27CD033C0;
  if (!qword_27CD033C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD033C0);
  }

  return result;
}

unint64_t sub_21A2556BC()
{
  result = qword_27CD033C8;
  if (!qword_27CD033C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD033C8);
  }

  return result;
}

unint64_t sub_21A255714()
{
  result = qword_27CD033D0;
  if (!qword_27CD033D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD033D0);
  }

  return result;
}

unint64_t sub_21A25576C()
{
  result = qword_27CD033D8;
  if (!qword_27CD033D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD033D8);
  }

  return result;
}

unint64_t sub_21A2557C4()
{
  result = qword_27CD033E0;
  if (!qword_27CD033E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD033E0);
  }

  return result;
}

unint64_t sub_21A25581C()
{
  result = qword_27CD033E8;
  if (!qword_27CD033E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD033E8);
  }

  return result;
}

unint64_t sub_21A255874()
{
  result = qword_27CD033F0;
  if (!qword_27CD033F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD033F0);
  }

  return result;
}

unint64_t sub_21A2558CC()
{
  result = qword_27CD033F8;
  if (!qword_27CD033F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD033F8);
  }

  return result;
}

uint64_t sub_21A255920(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465746E756F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_21A2F8394() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D756C6F76 && a2 == 0xE600000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275)
  {

    return 3;
  }

  else
  {
    v6 = sub_21A2F8394();

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

uint64_t OfflineStatus.hashValue.getter()
{
  v1 = *v0;
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](v1);
  return sub_21A2F8474();
}

uint64_t sub_21A255B38(uint64_t a1, unint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  *&v40 = a1;
  *(&v40 + 1) = a2;
  sub_21A2F5434();
  sub_21A176C98(&qword_27CD03578);
  if (swift_dynamicCast())
  {
    sub_21A14274C(__src, &v41);
    sub_21A142764(&v41, v42);
    sub_21A2F45F4();
    __src[0] = v40;
    sub_21A142808(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_21A1427A8(__src, &qword_27CD03580);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_21A2F8074();
  }

  sub_21A25BB84(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_21A25FD90(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0], v9);
  v10 = sub_21A25BC4C(sub_21A261D30);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_21A2F47D4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_21A25EC14(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_21A2F79F4();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_21A2F7A34();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_21A2F8074();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_21A25EC14(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_21A2F7A04();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_21A2F47E4();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_21A2F47E4();
    sub_21A261D98(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_21A261D98(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_21A1806F4(*&__src[0], *(&__src[0] + 1));

  sub_21A180748(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_21A256058(uint64_t a1)
{
  v27[5] = *MEMORY[0x277D85DE8];
  v2 = sub_21A176C98(&qword_27CCFF098);
  MEMORY[0x28223BE20](v2, v3);
  sub_21A183960(a1, &v23[-v4], &qword_27CCFF098);
  sub_21A176C98(&qword_27CD03578);
  if (!swift_dynamicCast())
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    v5 = sub_21A1427A8(v25, &qword_27CD03580);
    v25[0] = xmmword_21A30C930;
    MEMORY[0x28223BE20](v5, v6);
    *&v23[-16] = a1;
    v9 = sub_21A25BC4C(sub_21A261CB4);
    v11 = v10;
    v12 = v7;
    v13 = *(&v25[0] + 1) >> 62;
    if ((*(&v25[0] + 1) >> 62) > 1)
    {
      if (v13 != 2)
      {
        if (!v8)
        {
          goto LABEL_18;
        }

        v18 = 0;
LABEL_30:
        if (v18 < v8)
        {
          goto LABEL_36;
        }

        sub_21A2F47D4();
LABEL_32:

        goto LABEL_33;
      }

      v15 = *(*&v25[0] + 16);
      v14 = *(*&v25[0] + 24);
      v16 = __OFSUB__(v14, v15);
      v17 = v14 - v15;
      if (v16)
      {
        goto LABEL_37;
      }

      if (v8 != v17)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (!v13)
      {
        if (v8 == BYTE14(v25[0]))
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      if (__OFSUB__(DWORD1(v25[0]), v25[0]))
      {
        goto LABEL_38;
      }

      if (v8 != DWORD1(v25[0]) - LODWORD(v25[0]))
      {
LABEL_13:
        if (v13 == 2)
        {
          v18 = *(*&v25[0] + 24);
        }

        else if (v13 == 1)
        {
          v18 = *&v25[0] >> 32;
        }

        else
        {
          v18 = BYTE14(v25[0]);
        }

        goto LABEL_30;
      }
    }

LABEL_18:
    memset(v27, 0, 15);
    if (v7)
    {
      LOBYTE(v19) = 0;
      do
      {
        v20 = *(v9 + 2);
        if (v11 == v20)
        {
          break;
        }

        if (v11 >= v20)
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
        }

        *(v27 + v19) = v9[v11 + 32];
        v19 = v19 + 1;
        if ((v19 >> 8))
        {
          goto LABEL_35;
        }

        if (v19 == 14)
        {
          *&v24 = v27[0];
          *(&v24 + 6) = *(v27 + 6);
          sub_21A2F47E4();
          LOBYTE(v19) = 0;
        }

        ++v11;
        --v12;
      }

      while (v12);
      if (v19)
      {
        *&v24 = v27[0];
        *(&v24 + 6) = *(v27 + 6);
        sub_21A2F47E4();
      }
    }

    goto LABEL_32;
  }

  sub_21A14274C(v25, v27);
  sub_21A142764(v27, v27[3]);
  sub_21A2F45F4();
  v25[0] = v24;
  sub_21A142808(v27);
LABEL_33:
  v21 = v25[0];
  sub_21A1806F4(*&v25[0], *(&v25[0] + 1));
  sub_21A1427A8(a1, &qword_27CCFF098);
  sub_21A180748(v21, *(&v21 + 1));
  return v21;
}

uint64_t sub_21A256410(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_21A2F8394() & 1) == 0)
  {
    return 0;
  }

  return sub_21A2F4954();
}

uint64_t static ExportToGroceryListUtility.addToGroceryList(on:ingredients:recipeURL:recipeID:recipeTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[8] = a1;
  v8[9] = a2;
  sub_21A176C98(&qword_27CCFEA80);
  v8[16] = swift_task_alloc();
  v8[17] = sub_21A2F7C34();
  v8[18] = sub_21A2F7C24();
  v10 = sub_21A2F7BD4();
  v8[19] = v10;
  v8[20] = v9;

  return MEMORY[0x2822009F8](sub_21A256574, v10, v9);
}

uint64_t sub_21A256574()
{
  v1 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v2 = sub_21A25A1C4(0xD000000000000013, 0x800000021A319BF0, 0);
  if (v2)
  {
    v11 = v0[15];
    v12 = v0[16];
    v14 = v0[13];
    v13 = v0[14];
    v16 = v0[11];
    v15 = v0[12];
    v17 = v0[10];

    static ExportToGroceryListUtility.configureUserActivity(with:recipeURL:recipeID:recipeTitle:)(v17, v18, v15, v14, v13, v11);
    sub_21A176C98(&qword_27CCFFBC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A2FC020;
    sub_21A183960(v16, v12, &qword_27CCFEA80);
    v20 = sub_21A2F4794();
    v21 = *(v20 - 8);
    v22 = (*(v21 + 48))(v12, 1, v20);
    v23 = v0[16];
    if (v22 == 1)
    {
      sub_21A1427A8(v0[16], &qword_27CCFEA80);
      v24 = 0;
      v25 = 0xE000000000000000;
    }

    else
    {
      v24 = sub_21A2F46A4();
      v25 = v26;
      (*(v21 + 8))(v23, v20);
    }

    v27 = v0[9];
    *(inited + 32) = v24;
    *(inited + 40) = v25;
    sub_21A2571E8(inited);
    swift_setDeallocating();
    sub_21A26151C(inited + 32);
    v28 = objc_allocWithZone(MEMORY[0x277D546D8]);
    v29 = sub_21A2F7B04();

    v30 = [v28 initWithActivityItems:v29 applicationActivities:0];
    v0[21] = v30;

    v31 = sub_21A2F7C24();
    v0[22] = v31;
    v32 = swift_task_alloc();
    v0[23] = v32;
    *(v32 + 16) = v30;
    *(v32 + 24) = v27;
    v33 = swift_task_alloc();
    v0[24] = v33;
    *v33 = v0;
    v33[1] = sub_21A2569C0;
    v34 = v0[8];
    v35 = MEMORY[0x277D85700];

    return MEMORY[0x2822007B8](v34, v31, v35, 0xD000000000000040, 0x800000021A319E80, sub_21A261570, v32, &type metadata for ExportToGroceryListUtility.Result);
  }

  else
  {

    if (qword_27CCFE7A0 != -1)
    {
      swift_once();
    }

    v3 = sub_21A2F53E4();
    sub_21A177CBC(v3, qword_27CD23C20);
    v4 = sub_21A2F53C4();
    v5 = sub_21A2F7DD4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21A137000, v4, v5, "Reminders app not installed. Presenting alert to download app and throwing not installed error.", v6, 2u);
      MEMORY[0x21CED7BA0](v6, -1, -1);
    }

    v7 = v0[9];

    sub_21A2610E0(v7);
    sub_21A2614C8();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_21A2569C0()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_21A256B20, v3, v2);
}

uint64_t sub_21A256B20()
{

  v1 = *(v0 + 8);

  return v1();
}

void static ExportToGroceryListUtility.configureUserActivity(with:recipeURL:recipeID:recipeTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a3;
  v10 = sub_21A2F4A24();
  v58 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v57 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  v60 = a6;
  if (v13)
  {
    v54 = v10;
    v55 = a4;
    v56 = a5;
    v69 = MEMORY[0x277D84F90];
    sub_21A25D8EC(0, v13, 0);
    v14 = v69;
    v61 = sub_21A176C98(&qword_27CD03410);
    v15 = (a1 + 48);
    while (1)
    {
      v16 = *(v15 - 2);
      v17 = *(v15 - 1);
      v18 = *v15;
      v65[0] = 0x4E79616C70736964;
      v65[1] = 0xEB00000000656D61;
      v65[2] = v16;
      v65[3] = v17;
      v65[5] = MEMORY[0x277D837D0];
      v66[0] = 0x7463656C65537369;
      v66[1] = 0xEA00000000006465;
      v68 = MEMORY[0x277D839B0];
      v67 = (v18 & 1) == 0;
      v19 = sub_21A2F8194();
      sub_21A2F5434();

      sub_21A183960(v65, &v62, &qword_27CD03418);
      v20 = v62;
      v21 = v63;
      v22 = sub_21A25A4C4(v62, v63);
      if (v23)
      {
        break;
      }

      *(v19 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v22;
      v24 = (v19[6] + 16 * v22);
      *v24 = v20;
      v24[1] = v21;
      sub_21A261578(v64, (v19[7] + 32 * v22));
      v25 = v19[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_13;
      }

      v19[2] = v27;
      sub_21A183960(v66, &v62, &qword_27CD03418);
      v28 = v62;
      v29 = v63;
      v30 = sub_21A25A4C4(v62, v63);
      if (v31)
      {
        break;
      }

      *(v19 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v30;
      v32 = (v19[6] + 16 * v30);
      *v32 = v28;
      v32[1] = v29;
      sub_21A261578(v64, (v19[7] + 32 * v30));
      v33 = v19[2];
      v26 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v26)
      {
        goto LABEL_13;
      }

      v19[2] = v34;

      sub_21A176C98(&qword_27CD03418);
      swift_arrayDestroy();
      v69 = v14;
      v36 = *(v14 + 16);
      v35 = *(v14 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_21A25D8EC((v35 > 1), v36 + 1, 1);
        v14 = v69;
      }

      *(v14 + 16) = v36 + 1;
      *(v14 + 8 * v36 + 32) = v19;
      v15 += 24;
      if (!--v13)
      {
        a4 = v55;
        v10 = v54;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_11:
    v37 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v38 = sub_21A2F78A4();
    v39 = [v37 initWithActivityType_];

    v40 = v57;
    v41 = v59;
    sub_21A257B30(v59, a4, v57);
    v42 = sub_21A2F49C4();
    v44 = v43;
    (*(v58 + 8))(v40, v10);
    sub_21A176C98(&qword_27CD03420);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6E6F6973726576;
    *(inited + 16) = xmmword_21A30C940;
    v46 = MEMORY[0x277D839F8];
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = 0x3FF0000000000000;
    *(inited + 72) = v46;
    *(inited + 80) = 0x6569646572676E69;
    *(inited + 88) = 0xEB0000000073746ELL;
    v47 = sub_21A176C98(&qword_27CD03428);
    *(inited + 96) = v14;
    *(inited + 120) = v47;
    *(inited + 128) = 0x4449657069636572;
    *(inited + 136) = 0xE800000000000000;
    *(inited + 144) = v41;
    *(inited + 152) = a4;
    v48 = MEMORY[0x277D837D0];
    *(inited + 168) = MEMORY[0x277D837D0];
    *(inited + 176) = 0x6572436863746162;
    *(inited + 216) = v48;
    *(inited + 184) = 0xEF44496E6F697461;
    *(inited + 192) = v42;
    *(inited + 200) = v44;
    sub_21A2F5434();
    v49 = sub_21A2603B8(inited);
    swift_setDeallocating();
    sub_21A176C98(&qword_27CD03418);
    swift_arrayDestroy();
    sub_21A176C98(&qword_27CD03430);
    v50 = swift_initStackObject();
    *(v50 + 16) = xmmword_21A2FC020;
    v62 = 0x6143657069636552;
    v63 = 0xEA00000000006472;
    sub_21A2F7F94();
    *(v50 + 96) = sub_21A176C98(&qword_27CD03438);
    *(v50 + 72) = v49;
    sub_21A260058(v50);
    swift_setDeallocating();
    sub_21A1427A8(v50 + 32, &qword_27CD03440);
    v51 = sub_21A2F7774();

    [v39 setUserInfo_];

    v52 = sub_21A2F78A4();
    [v39 setTitle_];

    [v39 becomeCurrent];
  }
}

uint64_t sub_21A2571E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_21A25D90C(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {
      sub_21A2F5434();
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21A25D90C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_21A261578(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21A2572E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_21A25D984(0, v1, 0);
    v2 = v14;
    v4 = a1 + 64;
    do
    {
      sub_21A176C98(&qword_27CD035C0);
      sub_21A176C98(&qword_27CD035C8);
      swift_dynamicCast();
      v5 = v11;
      v7 = *(v14 + 16);
      v6 = *(v14 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_21A25D984((v6 > 1), v7 + 1, 1);
        v5 = v11;
      }

      *(v14 + 16) = v7 + 1;
      v8 = v14 + 40 * v7;
      *(v8 + 32) = v10;
      v4 += 40;
      *(v8 + 40) = v5;
      *(v8 + 56) = v12;
      *(v8 + 64) = v13;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21A257450(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = aBlock - v8;
  v10 = sub_21A176C98(&qword_27CD03590);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = aBlock - v14;
  (*(v11 + 16))(aBlock - v14, a1, v10, v13);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v15, v10);
  aBlock[4] = sub_21A261DCC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21A257A70;
  aBlock[3] = &unk_282B332A0;
  v18 = _Block_copy(aBlock);

  [a2 setCompletionWithItemsHandler_];
  _Block_release(v18);
  _s10CookingKit26ExportToGroceryListUtilityO23dismissToastIfPresented2onySo16UIViewControllerC_tFZ_0(a3);
  [a3 addChildViewController_];
  v19 = sub_21A2F7C64();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  sub_21A2F7C34();
  v20 = a2;
  v21 = sub_21A2F7C24();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v20;
  sub_21A199D08(0, 0, v9, &unk_21A30CD80, v22);
}

void sub_21A257724(int a1, char a2, int a3, id a4)
{
  if (a4)
  {
    v5 = a4;
    if (qword_27CCFE7A0 != -1)
    {
      swift_once();
    }

    v6 = sub_21A2F53E4();
    sub_21A177CBC(v6, qword_27CD23C20);
    v7 = a4;
    v8 = sub_21A2F53C4();
    v9 = sub_21A2F7DD4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      v12 = a4;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_21A137000, v8, v9, "Export to Grocery List activity view controller returning with error: %{public}@", v10, 0xCu);
      sub_21A1427A8(v11, &qword_27CD01020);
      MEMORY[0x21CED7BA0](v11, -1, -1);
      MEMORY[0x21CED7BA0](v10, -1, -1);
    }

    sub_21A176C98(&qword_27CD03590);
    sub_21A2F7BF4();
  }

  else
  {
    if (a2)
    {
      if (qword_27CCFE7A0 != -1)
      {
        swift_once();
      }

      v14 = sub_21A2F53E4();
      sub_21A177CBC(v14, qword_27CD23C20);
      v15 = sub_21A2F53C4();
      v16 = sub_21A2F7DC4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_21A137000, v15, v16, "Export to Grocery List activity view controller successfully completed.", v17, 2u);
        MEMORY[0x21CED7BA0](v17, -1, -1);
      }
    }

    else
    {
      if (qword_27CCFE7A0 != -1)
      {
        swift_once();
      }

      v18 = sub_21A2F53E4();
      sub_21A177CBC(v18, qword_27CD23C20);
      v15 = sub_21A2F53C4();
      v19 = sub_21A2F7DC4();
      if (os_log_type_enabled(v15, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_21A137000, v15, v19, "Export to Grocery List activity view controller cancelled.", v20, 2u);
        MEMORY[0x21CED7BA0](v20, -1, -1);
      }
    }

    sub_21A176C98(&qword_27CD03590);
    sub_21A2F7BF4();
  }
}

uint64_t sub_21A257A70(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = sub_21A2F7B24();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);
}

uint64_t sub_21A257B30@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41[1] = a3;
  v44 = sub_21A176C98(&qword_27CCFF098) - 8;
  MEMORY[0x28223BE20](v44, v5);
  v7 = v41 - v6;
  v8 = sub_21A2F7564();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21A2F7554();
  v14 = *(v13 - 8);
  v42 = v13;
  v43 = v14;
  MEMORY[0x28223BE20](v13, v15);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F5434();
  v18 = sub_21A255B38(a1, a2);
  v20 = v19;
  sub_21A14F98C(&qword_27CD03570, MEMORY[0x277CC5540]);
  sub_21A2F7544();
  sub_21A1806F4(v18, v20);
  sub_21A25C084(v18, v20);
  sub_21A180748(v18, v20);
  sub_21A2F7534();
  v21 = v20;
  v22 = v42;
  sub_21A180748(v18, v21);
  v23 = v8;
  v24 = v17;
  (*(v9 + 8))(v12, v23);
  v25 = v43;
  (*(v43 + 16))(v7, v17, v22);
  *&v7[*(v44 + 44)] = 16;
  v26 = sub_21A256058(v7);
  v27 = v26;
  v29 = v28;
  v30 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    if (v30 == 2)
    {
      v31 = *(v26 + 16);
      v32 = sub_21A2F4574();
      if (!v32)
      {
LABEL_17:
        sub_21A2F4594();
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v33 = v32;
      v34 = sub_21A2F45A4();
      if (__OFSUB__(v31, v34))
      {
        goto LABEL_15;
      }

      v35 = v31 - v34 + v33;
      sub_21A2F4594();
      if (!v35)
      {
        goto LABEL_18;
      }
    }

LABEL_13:
    sub_21A2F4A04();
    sub_21A180748(v27, v29);
    return (*(v25 + 8))(v24, v22);
  }

  if (!v30)
  {
    goto LABEL_13;
  }

  if (v26 > v26 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v36 = sub_21A2F4574();
  if (!v36)
  {
LABEL_19:
    result = sub_21A2F4594();
    __break(1u);
    goto LABEL_20;
  }

  v37 = v36;
  v38 = sub_21A2F45A4();
  if (__OFSUB__(v27, v38))
  {
    goto LABEL_16;
  }

  v39 = v27 - v38 + v37;
  result = sub_21A2F4594();
  if (v39)
  {
    goto LABEL_13;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t static ExportToGroceryListUtility.fetchListIDAndLaunchRemindersApp(for:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD004F8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (&v12 - v6);
  sub_21A258084(a1, a2, &v12 - v6);
  v8 = type metadata accessor for ExportToGroceryListUtility.RemindersListDetails();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_21A1427A8(v7, &qword_27CD004F8);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = *v7;
    v10 = v7[1];
    sub_21A2F5434();
    sub_21A261730(v7);
  }

  sub_21A2605F8(v9, v10);
}

uint64_t sub_21A258084@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a3;
  v79[1] = *MEMORY[0x277D85DE8];
  v77 = type metadata accessor for ExportToGroceryListUtility.RemindersListDetails();
  v5 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v6);
  v72 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = (&v70 - v10);
  MEMORY[0x28223BE20](v12, v13);
  v73 = &v70 - v14;
  v15 = sub_21A176C98(&qword_27CD004F8);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = (&v70 - v21);
  v23 = sub_21A2F4A24();
  v75 = *(v23 - 8);
  v76 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CCFE7A0 != -1)
  {
    swift_once();
  }

  v74 = v22;
  v27 = sub_21A2F53E4();
  sub_21A177CBC(v27, qword_27CD23C20);
  sub_21A2F5434();
  v28 = sub_21A2F53C4();
  v29 = sub_21A2F7DC4();

  v30 = os_log_type_enabled(v28, v29);
  v71 = v11;
  if (v30)
  {
    v31 = a1;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v79[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_21A25B5DC(v31, a2, v79);
    _os_log_impl(&dword_21A137000, v28, v29, "ExportToGroceryList call to remindersListDetails for recipeID: %s", v32, 0xCu);
    sub_21A142808(v33);
    MEMORY[0x21CED7BA0](v33, -1, -1);
    v34 = v32;
    a1 = v31;
    MEMORY[0x21CED7BA0](v34, -1, -1);
  }

  sub_21A257B30(a1, a2, v26);
  v35 = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  v36 = a1;
  v37 = sub_21A2F49D4();
  v79[0] = 0;
  v38 = [v35 fetchIncompleteRemindersForNewsRecipeCardWithBatchCreationID:v37 error:v79];

  v39 = v79[0];
  if (v38)
  {
    sub_21A261B38();
    sub_21A2F7B24();
    v40 = v39;

    v41 = v74;
    sub_21A25917C(v74);

    sub_21A183960(v41, v18, &qword_27CD004F8);
    if ((*(v5 + 48))(v18, 1, v77) == 1)
    {
      sub_21A1427A8(v18, &qword_27CD004F8);
      v42 = sub_21A2F53C4();
      v43 = sub_21A2F7DC4();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_21A137000, v42, v43, "No list details found for recipe", v44, 2u);
        MEMORY[0x21CED7BA0](v44, -1, -1);
      }
    }

    else
    {
      v55 = v73;
      sub_21A261A6C(v18, v73, type metadata accessor for ExportToGroceryListUtility.RemindersListDetails);
      v56 = v71;
      sub_21A26178C(v55, v71);
      v57 = v72;
      sub_21A26178C(v55, v72);
      v58 = sub_21A2F53C4();
      v59 = sub_21A2F7DC4();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v79[0] = v70;
        *v60 = 136315394;
        v61 = *v56;
        v62 = v56[1];
        sub_21A2F5434();
        sub_21A261730(v56);
        v63 = sub_21A25B5DC(v61, v62, v79);

        *(v60 + 4) = v63;
        *(v60 + 12) = 2080;
        v64 = sub_21A2F4984();
        v66 = v65;
        sub_21A261730(v57);
        v67 = sub_21A25B5DC(v64, v66, v79);
        v41 = v74;

        *(v60 + 14) = v67;
        _os_log_impl(&dword_21A137000, v58, v59, "List details found - ID: %s, Latest timestamp: %s", v60, 0x16u);
        v68 = v70;
        swift_arrayDestroy();
        MEMORY[0x21CED7BA0](v68, -1, -1);
        MEMORY[0x21CED7BA0](v60, -1, -1);
      }

      else
      {

        sub_21A261730(v57);
        sub_21A261730(v56);
      }

      sub_21A261730(v55);
    }

    (*(v75 + 8))(v26, v76);
    return sub_21A261B84(v41, v78);
  }

  else
  {
    v74 = v36;
    v45 = v79[0];
    v46 = sub_21A2F4654();

    swift_willThrow();
    (*(v75 + 8))(v26, v76);
    sub_21A2F5434();
    v47 = v46;
    v48 = sub_21A2F53C4();
    v49 = sub_21A2F7DD4();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v79[0] = v52;
      *v50 = 136315394;
      *(v50 + 4) = sub_21A25B5DC(v74, a2, v79);
      *(v50 + 12) = 2114;
      v53 = v46;
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 14) = v54;
      *v51 = v54;
      _os_log_impl(&dword_21A137000, v48, v49, "Error getting details on reminders for recipeID %s: %{public}@. Returning nil", v50, 0x16u);
      sub_21A1427A8(v51, &qword_27CD01020);
      MEMORY[0x21CED7BA0](v51, -1, -1);
      sub_21A142808(v52);
      MEMORY[0x21CED7BA0](v52, -1, -1);
      MEMORY[0x21CED7BA0](v50, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 56))(v78, 1, 1, v77);
  }
}

void static ExportToGroceryListUtility.showConfirmationToast(viewController:recipeID:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21A25F060(a2, a3);
  [a1 presentViewController:v4 animated:1 completion:0];
}

uint64_t static ExportToGroceryListUtility.hasRecipeBeenExportedToGroceryList(_:)(uint64_t a1, unint64_t a2)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v4 = sub_21A2F4A24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CCFE7A0 != -1)
  {
    swift_once();
  }

  v9 = sub_21A2F53E4();
  sub_21A177CBC(v9, qword_27CD23C20);
  sub_21A2F5434();
  v10 = sub_21A2F53C4();
  v11 = sub_21A2F7DC4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v48[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_21A25B5DC(a1, a2, v48);
    _os_log_impl(&dword_21A137000, v10, v11, "ExportToGroceryList call to hasRecipeBeenExportedToGroceryList for recipeID: %s", v12, 0xCu);
    sub_21A142808(v13);
    MEMORY[0x21CED7BA0](v13, -1, -1);
    MEMORY[0x21CED7BA0](v12, -1, -1);
  }

  sub_21A257B30(a1, a2, v8);
  v14 = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  v15 = sub_21A2F49D4();
  v48[0] = 0;
  v16 = [v14 fetchIncompleteRemindersCountForNewsRecipeCardWithBatchCreationID:v15 error:v48];

  if (!v16)
  {
    v28 = a1;
    v29 = v48[0];
    v30 = sub_21A2F4654();

    swift_willThrow();
    (*(v5 + 8))(v8, v4);
    sub_21A2F5434();
    v31 = v30;
    v32 = sub_21A2F53C4();
    v33 = sub_21A2F7DD4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v48[0] = v36;
      *v34 = 136315394;
      *(v34 + 4) = sub_21A25B5DC(v28, a2, v48);
      *(v34 + 12) = 2114;
      v37 = v30;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v38;
      *v35 = v38;
      _os_log_impl(&dword_21A137000, v32, v33, "Error determining if reminders exist for recipeID %s. Error: %{public}@. Returning false.", v34, 0x16u);
      sub_21A1427A8(v35, &qword_27CD01020);
      MEMORY[0x21CED7BA0](v35, -1, -1);
      sub_21A142808(v36);
      MEMORY[0x21CED7BA0](v36, -1, -1);
      MEMORY[0x21CED7BA0](v34, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v17 = v48[0];
  v18 = [v16 integerValue];
  sub_21A2F5434();
  if (v18 < 1)
  {
    v39 = sub_21A2F53C4();
    v40 = sub_21A2F7DC4();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = a1;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v48[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_21A25B5DC(v41, a2, v48);
      _os_log_impl(&dword_21A137000, v39, v40, "No reminders exist for recipeID %s. Returning false.", v42, 0xCu);
      sub_21A142808(v43);
      MEMORY[0x21CED7BA0](v43, -1, -1);
      MEMORY[0x21CED7BA0](v42, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  v19 = v16;
  v20 = sub_21A2F53C4();
  v21 = sub_21A2F7DC4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v46 = a1;
    v24 = v23;
    v25 = swift_slowAlloc();
    v47 = v4;
    v26 = v25;
    v48[0] = v25;
    *v22 = 138412546;
    *(v22 + 4) = v19;
    *v24 = v16;
    *(v22 + 12) = 2080;
    v27 = v19;
    *(v22 + 14) = sub_21A25B5DC(v46, a2, v48);
    _os_log_impl(&dword_21A137000, v20, v21, "%@ reminders exist for recipeID %s. Returning true.", v22, 0x16u);
    sub_21A1427A8(v24, &qword_27CD01020);
    MEMORY[0x21CED7BA0](v24, -1, -1);
    sub_21A142808(v26);
    MEMORY[0x21CED7BA0](v26, -1, -1);
    MEMORY[0x21CED7BA0](v22, -1, -1);

    (*(v5 + 8))(v8, v47);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return 1;
}

uint64_t static ExportToGroceryListUtility.hasRecentReminders(for:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD004F8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for ExportToGroceryListUtility.RemindersListDetails();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A258084(a1, a2, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21A1427A8(v11, &qword_27CD004F8);
    v17 = 0;
  }

  else
  {
    sub_21A261A6C(v11, v16, type metadata accessor for ExportToGroceryListUtility.RemindersListDetails);
    sub_21A26178C(v16, v7);
    (*(v13 + 56))(v7, 0, 1, v12);
    v17 = sub_21A260A1C(v7, a1, a2);
    sub_21A1427A8(v7, &qword_27CD004F8);
    sub_21A261730(v16);
  }

  return v17 & 1;
}

uint64_t sub_21A25917C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21A2F5434();
  v24 = sub_21A25ED18(v2);
  sub_21A25C464(&v24);
  v3 = v24;
  if (v24 < 0 || (v24 & 0x4000000000000000) != 0)
  {
    if (sub_21A2F8164())
    {
      goto LABEL_4;
    }
  }

  else if (*(v24 + 16))
  {
LABEL_4:
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x21CED6AE0](0, v3);
      goto LABEL_7;
    }

    if (*(v3 + 16))
    {
      v4 = *(v3 + 32);
LABEL_7:
      v5 = v4;

      v6 = [v5 list];
      v7 = [v6 objectID];

      v8 = [v7 stringRepresentation];
      v9 = sub_21A2F78E4();
      v11 = v10;

      v12 = [v5 creationDate];
      v13 = type metadata accessor for ExportToGroceryListUtility.RemindersListDetails();
      sub_21A2F4964();

      *a1 = v9;
      a1[1] = v11;
      v14 = *(*(v13 - 8) + 56);
      v15 = a1;
      v16 = 0;
      v17 = v13;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (qword_27CCFE7A0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v18 = sub_21A2F53E4();
  sub_21A177CBC(v18, qword_27CD23C20);
  v19 = sub_21A2F53C4();
  v20 = sub_21A2F7DD4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_21A137000, v19, v20, "No reminders found for recipe. Returning nil", v21, 2u);
    MEMORY[0x21CED7BA0](v21, -1, -1);
  }

  v22 = type metadata accessor for ExportToGroceryListUtility.RemindersListDetails();
  v14 = *(*(v22 - 8) + 56);
  v17 = v22;
  v15 = a1;
  v16 = 1;
LABEL_13:

  return v14(v15, v16, 1, v17);
}

uint64_t sub_21A259424()
{
  v0 = sub_21A176C98(&qword_27CCFEA80);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v17 - v2;
  v4 = sub_21A2F4794();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F4774();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_21A1427A8(v3, &qword_27CCFEA80);
  }

  (*(v5 + 32))(v8, v3, v4);
  v10 = objc_opt_self();
  v11 = [v10 sharedApplication];
  v12 = sub_21A2F46F4();
  v13 = [v11 canOpenURL_];

  if (v13)
  {
    v14 = [v10 sharedApplication];
    v15 = sub_21A2F46F4();
    sub_21A25FF30(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_21A14F98C(&qword_27CCFEA18, type metadata accessor for OpenExternalURLOptionsKey);
    v16 = sub_21A2F7774();

    [v14 openURL:v15 options:v16 completionHandler:0];
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21A2596D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  sub_21A2F7C34();
  v4[19] = sub_21A2F7C24();
  v6 = sub_21A2F7BD4();
  v4[20] = v6;
  v4[21] = v5;

  return MEMORY[0x2822009F8](sub_21A259768, v6, v5);
}

uint64_t sub_21A259768()
{
  v1 = v0[18];
  v2 = sub_21A2F78A4();
  v0[22] = v2;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_21A2598B4;
  v3 = swift_continuation_init();
  v0[17] = sub_21A176C98(&qword_27CD03598);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21A259C04;
  v0[13] = &unk_282B332F0;
  v0[14] = v3;
  [v1 _performActivityWithType_completionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21A2598B4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  v3 = *(v1 + 168);
  v4 = *(v1 + 160);
  if (v2)
  {
    v5 = sub_21A259A4C;
  }

  else
  {
    v5 = sub_21A2599E4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21A2599E4()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21A259A4C()
{
  v1 = v0[22];

  swift_willThrow();

  if (qword_27CCFE7A0 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v3 = sub_21A2F53E4();
  sub_21A177CBC(v3, qword_27CD23C20);
  v4 = v2;
  v5 = sub_21A2F53C4();
  v6 = sub_21A2F7DD4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[23];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_21A137000, v5, v6, "Error performing activity to export ingredients to reminders grocery list: %{public}@", v9, 0xCu);
    sub_21A1427A8(v10, &qword_27CD01020);
    MEMORY[0x21CED7BA0](v10, -1, -1);
    MEMORY[0x21CED7BA0](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_21A259C04(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_21A142764((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_21A176C98(&qword_27CCFFBB8);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t ExportToGroceryListUtility.Placement.hashValue.getter()
{
  v1 = *v0;
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](v1);
  return sub_21A2F8474();
}

CookingKit::ExportToGroceryListUtility::Result_optional __swiftcall ExportToGroceryListUtility.Result.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21A2F81E4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ExportToGroceryListUtility.Result.rawValue.getter()
{
  v1 = 0x73736563637573;
  if (*v0 != 1)
  {
    v1 = 1818845542;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657373696D736964;
  }
}

uint64_t sub_21A259E0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x73736563637573;
  if (v2 != 1)
  {
    v4 = 1818845542;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x657373696D736964;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0xE700000000000000;
  v8 = 0x73736563637573;
  if (*a2 != 1)
  {
    v8 = 1818845542;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x657373696D736964;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21A2F8394();
  }

  return v11 & 1;
}

uint64_t sub_21A259F00()
{
  sub_21A2F8434();
  sub_21A2F79A4();

  return sub_21A2F8474();
}

uint64_t sub_21A259FA0()
{
  sub_21A2F79A4();
}

uint64_t sub_21A25A02C()
{
  sub_21A2F8434();
  sub_21A2F79A4();

  return sub_21A2F8474();
}

void sub_21A25A0D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xE700000000000000;
  v5 = 0x73736563637573;
  if (v2 != 1)
  {
    v5 = 1818845542;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x657373696D736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21A25A130()
{
  result = sub_21A2F78A4();
  qword_27CD03400 = result;
  return result;
}

id static NSNotificationName.groceryListExportCompleted.getter()
{
  if (qword_27CCFE850 != -1)
  {
    swift_once();
  }

  v1 = qword_27CD03400;

  return v1;
}

id sub_21A25A1C4(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_21A2F78A4();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_21A2F4654();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_21A25A2A0(uint64_t a1)
{
  sub_21A2F8434();
  if (*(a1 + 48))
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    MEMORY[0x21CED6EE0](1);
    sub_21A2F79A4();
    MEMORY[0x21CED6EE0](v5);
    MEMORY[0x21CED6EE0](v4);
    MEMORY[0x21CED6EE0](v3);
    MEMORY[0x21CED6EE0](v2);
  }

  else
  {
    MEMORY[0x21CED6EE0](0);
    sub_21A2F79A4();
  }

  v6 = sub_21A2F8474();

  return sub_21A25A9EC(a1, v6);
}

unint64_t sub_21A25A39C(uint64_t a1, uint64_t a2)
{
  sub_21A2F8434();
  sub_21A2F79A4();
  v4 = sub_21A2F8474();
  return sub_21A25AD8C(a1, a2, v4);
}

unint64_t sub_21A25A410(uint64_t *a1)
{
  sub_21A2F8434();
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  sub_21A2F79A4();
  MEMORY[0x21CED6EE0](v2);
  MEMORY[0x21CED6EE0](v3);
  MEMORY[0x21CED6EE0](v4);
  MEMORY[0x21CED6EE0](v5);
  v6 = sub_21A2F8474();

  return sub_21A25AE44(a1, v6);
}

unint64_t sub_21A25A4C4(uint64_t a1, uint64_t a2)
{
  sub_21A2F8434();
  sub_21A2F79A4();
  v4 = sub_21A2F8474();

  return sub_21A25AD8C(a1, a2, v4);
}

unint64_t sub_21A25A53C(unsigned __int8 a1)
{
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](a1);
  v2 = sub_21A2F8474();
  return sub_21A25AF74(a1, v2);
}

unint64_t sub_21A25A5A4(uint64_t a1)
{
  sub_21A2F78E4();
  sub_21A2F8434();
  sub_21A2F79A4();
  v2 = sub_21A2F8474();

  return sub_21A25AFE4(a1, v2);
}

unint64_t sub_21A25A638(uint64_t a1)
{
  v2 = sub_21A2F7F74();

  return sub_21A25B0E8(a1, v2);
}

unint64_t sub_21A25A67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](a1);
  MEMORY[0x21CED6EE0](a2);
  MEMORY[0x21CED6EE0](a3);
  v6 = sub_21A2F8474();

  return sub_21A25B1B0(a1, a2, a3, v6);
}

unint64_t sub_21A25A718(uint64_t a1)
{
  sub_21A2F4794();
  v2 = MEMORY[0x277CC9260];
  sub_21A14F98C(&qword_27CCFF318, MEMORY[0x277CC9260]);
  v3 = sub_21A2F77F4();
  return sub_21A14F9D8(a1, v3, MEMORY[0x277CC9260], &qword_27CCFF320, v2, MEMORY[0x277CC9278]);
}

unint64_t sub_21A25A7EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_21A2F8434();
  if (a4)
  {
    if (a4 == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    MEMORY[0x21CED6EE0](v8);
    MEMORY[0x21CED6EE0](a1);
    MEMORY[0x21CED6EE0](a2);
    v9 = a3;
  }

  else
  {
    MEMORY[0x21CED6EE0](0);
    v9 = a1;
  }

  MEMORY[0x21CED6EE0](v9);
  v10 = sub_21A2F8474();

  return sub_21A25B234(a1, a2, a3, a4, v10);
}

unint64_t sub_21A25A8C4(uint64_t a1)
{
  sub_21A2F8144();
  v2 = sub_21A2F77F4();

  return sub_21A25B2FC(a1, v2);
}

unint64_t sub_21A25A928(uint64_t a1)
{
  sub_21A2F8434();
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  sub_21A2F79A4();
  MEMORY[0x21CED6EE0](v2);
  MEMORY[0x21CED6EE0](v3);
  MEMORY[0x21CED6EE0](v4);
  MEMORY[0x21CED6EE0](v5);
  MEMORY[0x21CED6EE0](v6);
  v7 = sub_21A2F8474();

  return sub_21A25B494(a1, v7);
}

unint64_t sub_21A25A9EC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v30 = ~v3;
    do
    {
      v6 = *(v32 + 48) + 56 * v4;
      v8 = *v6;
      v7 = *(v6 + 8);
      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      v11 = *(v6 + 32);
      v12 = *(v6 + 40);
      v13 = *a1;
      v14 = *(a1 + 8);
      if (*(v6 + 48))
      {
        if ((*(a1 + 48) & 1) == 0)
        {
          goto LABEL_3;
        }

        v15 = *(a1 + 16);
        v16 = *(a1 + 32);
        v17 = v8 == v13 && v7 == v14;
        v28 = *(a1 + 24);
        v29 = *(a1 + 40);
        if (v17)
        {
          sub_21A199798(a1, v33);
          sub_21A18BD3C();
          sub_21A1997F4();
          sub_21A1997F4();
          v20 = v10 == v15 && v9 == v28 && v11 == v16;
        }

        else
        {
          v26 = *(a1 + 16);
          v27 = *(a1 + 32);
          v18 = sub_21A2F8394();
          sub_21A199798(a1, v33);
          sub_21A18BD3C();
          sub_21A1997F4();
          sub_21A1997F4();
          if ((v18 & 1) == 0)
          {
            goto LABEL_4;
          }

          v20 = v10 == v26 && v9 == v28 && v11 == v27;
        }

        if (v20 && v12 == v29)
        {
          return v4;
        }
      }

      else
      {
        if (*(a1 + 48))
        {
LABEL_3:
          sub_21A199798(a1, v33);
          sub_21A18BD3C();
          sub_21A1997F4();
          sub_21A1997F4();
          goto LABEL_4;
        }

        if (v8 == v13 && v7 == v14)
        {
          sub_21A199798(a1, v33);
          sub_21A18BD3C();
          sub_21A1997F4();
          sub_21A1997F4();
          return v4;
        }

        v22 = sub_21A2F8394();
        sub_21A199798(a1, v33);
        sub_21A18BD3C();
        sub_21A1997F4();
        sub_21A1997F4();
        if (v22)
        {
          return v4;
        }
      }

LABEL_4:
      v4 = (v4 + 1) & v30;
    }

    while (((*(v31 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21A25AD8C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21A2F8394())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21A25AE44(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = *a1;
    v8 = a1[1];
    v9 = a1[2];
    v10 = a1[3];
    v11 = a1[4];
    v12 = a1[5];
    v13 = *(v2 + 48);
    v31 = v13;
    do
    {
      v17 = (v13 + 48 * v5);
      v18 = *v17;
      v19 = v17[1];
      v21 = v17[2];
      v20 = v17[3];
      v23 = v17[4];
      v22 = v17[5];
      if (v18 == v7 && v19 == v8)
      {
        if (v21 == v9 && v20 == v10 && v23 == v11 && v22 == v12)
        {
          return v5;
        }
      }

      else
      {
        v32 = v20;
        v33 = v22;
        v34 = v23;
        v25 = v9;
        v26 = sub_21A2F8394();
        v13 = v31;
        v9 = v25;
        if (v26)
        {
          v27 = v21 == v25 && v32 == v10;
          v28 = v27 && v34 == v11;
          if (v28 && v33 == v12)
          {
            return v5;
          }
        }
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21A25AF74(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21A25AFE4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_21A2F78E4();
      v8 = v7;
      if (v6 == sub_21A2F78E4() && v8 == v9)
      {
        break;
      }

      v11 = sub_21A2F8394();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_21A25B0E8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_21A261C58(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x21CED6A20](v9, a1);
      sub_21A210330(v9);
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

unint64_t sub_21A25B1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = (*(v4 + 48) + 24 * result);
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      if (v10 == a1 && v11 == a2 && v12 == a3)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21A25B234(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v7 = -1 << *(v5 + 32);
  result = a5 & ~v7;
  if ((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v9 = ~v7;
    do
    {
      v12 = *(v5 + 48) + 32 * result;
      v13 = *v12;
      v14 = *(v12 + 24);
      if (*(v12 + 24))
      {
        v16 = *(v12 + 8);
        v15 = *(v12 + 16);
        if (v14 == 1)
        {
          if (a4 != 1)
          {
            goto LABEL_10;
          }
        }

        else if (a4 != 2)
        {
          goto LABEL_10;
        }

        if (v13 == a1 && v16 == a2 && v15 == a3)
        {
          return result;
        }
      }

      else if (!a4 && v13 == a1)
      {
        return result;
      }

LABEL_10:
      result = (result + 1) & v9;
    }

    while (((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21A25B2FC(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = sub_21A2F8144();
  v7 = MEMORY[0x28223BE20](v4, v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v22 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v9, *(v24 + 48) + v16 * v11, v4, v7);
      v19 = sub_21A2F7874();
      (*v17)(v9, v4);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v22 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_21A25B494(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v7 = ~v4;
    v8 = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v11 = a1[3];
    v12 = a1[4];
    v13 = a1[5];
    v14 = *(a1 + 48);
    v15 = *(v6 + 48);
    v35 = v15;
    do
    {
      v20 = (v15 + 56 * v5);
      v21 = *v20;
      v22 = v20[1];
      v23 = v20[2];
      v24 = v20[3];
      v25 = v20[4];
      v26 = v20[5];
      v27 = *(v20 + 48);
      if (v21 == v8 && v22 == v9)
      {
        if (v23 == v10 && v24 == v11 && v25 == v12 && v26 == v13 && v27 == v14)
        {
          return v5;
        }
      }

      else
      {
        v36 = v24;
        v37 = v26;
        v38 = v25;
        v39 = v23;
        v40 = v27;
        v29 = sub_21A2F8394();
        v15 = v35;
        if (v29)
        {
          v30 = v39 == v10 && v36 == v11;
          v31 = v30 && v38 == v12;
          v32 = v31 && v37 == v13;
          if (v32 && v40 == v14)
          {
            return v5;
          }
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21A25B5DC(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_21A2F5434();
  v6 = sub_21A25B6A8(v11, 0, 0, 1, a1, a2);
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
    sub_21A261AD4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_21A142808(v11);
  return v7;
}

unint64_t sub_21A25B6A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21A25B7B4(a5, a6);
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
    result = sub_21A2F8074();
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

uint64_t sub_21A25B7B4(uint64_t a1, unint64_t a2)
{
  v3 = sub_21A25B800(a1, a2);
  sub_21A25B930(&unk_282B2B6E8);
  return v3;
}

uint64_t sub_21A25B800(uint64_t a1, unint64_t a2)
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

  v6 = sub_21A25BA1C(v5, 0);
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

  result = sub_21A2F8074();
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
        v10 = sub_21A2F79F4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21A25BA1C(v10, 0);
        result = sub_21A2F7FD4();
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

uint64_t sub_21A25B930(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21A25BA90(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21A25BA1C(uint64_t a1, uint64_t a2)
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

  sub_21A176C98(&qword_27CD03548);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21A25BA90(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CD03548);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_21A25BB84@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_21A25FCD8(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_21A2F45B4();
      swift_allocObject();
      v8 = sub_21A2F4564();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_21A2F47C4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_21A25BC4C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_21A180748(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      result = a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        result = v16;
      }

      v9 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v3 = v18[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_21A180748(v6, v5);
    *v3 = xmmword_21A30C930;
    sub_21A180748(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_21A2F4574() && __OFSUB__(v6, sub_21A2F45A4()))
      {
LABEL_26:
        __break(1u);
      }

      sub_21A2F45B4();
      swift_allocObject();
      v13 = sub_21A2F4554();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_21A25C3B0(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v14;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_21A180748(v6, v5);
    v16 = v6;
    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_21A30C930;
    sub_21A180748(0, 0xC000000000000000);
    sub_21A2F47A4();
    result = sub_21A25C3B0(*(v16 + 2), *(v16 + 3), a1);
    v10 = v17 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v16;
      v3[1] = v10;
      return result;
    }

    *v3 = v16;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v18, 0, 15);
  result = a1(&v16, v18, v18);
  if (!v2)
  {
    return v16;
  }

  return result;
}

_BYTE *sub_21A25BFF0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_21A25FCD8(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_21A25FE30(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_21A25FEAC(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_21A25C084(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      sub_21A2F7564();
      sub_21A14F98C(&qword_27CD03570, MEMORY[0x277CC5540]);
      return sub_21A2F7524();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_21A25C264(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_21A25C264(v4, v5);
  }

  sub_21A2F7564();
  sub_21A14F98C(&qword_27CD03570, MEMORY[0x277CC5540]);
  return sub_21A2F7524();
}

uint64_t sub_21A25C264(uint64_t a1, uint64_t a2)
{
  result = sub_21A2F4574();
  if (!result || (result = sub_21A2F45A4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_21A2F4594();
      sub_21A2F7564();
      sub_21A14F98C(&qword_27CD03570, MEMORY[0x277CC5540]);
      return sub_21A2F7524();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21A25C344(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_21A25C3B0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_21A2F4574();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_21A2F45A4();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_21A2F4594();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_21A25C464(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_21A1C73C8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_21A25C4E0(v6);
  return sub_21A2F8094();
}

void sub_21A25C4E0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21A2F8344();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21A261B38();
        v6 = sub_21A2F7B74();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_21A25C804(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21A25C5E4(0, v2, 1, a1);
  }
}

void sub_21A25C5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = sub_21A2F49B4();
  MEMORY[0x28223BE20](v37, v8);
  v36 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v14 = &v31 - v13;
  v32 = a2;
  if (a3 != a2)
  {
    v15 = (v12 + 8);
    v38 = *a4;
    v16 = v38 + 8 * a3 - 8;
    v17 = a1 - a3;
LABEL_5:
    v34 = v16;
    v35 = a3;
    v18 = *(v38 + 8 * a3);
    v33 = v17;
    v19 = v17;
    while (1)
    {
      v20 = *v16;
      v21 = v18;
      v22 = v20;
      v23 = [v21 creationDate];
      sub_21A2F4964();

      v24 = [v22 creationDate];
      v25 = v36;
      sub_21A2F4964();

      LOBYTE(v24) = sub_21A2F4944();
      v26 = *v15;
      v27 = v25;
      v28 = v37;
      (*v15)(v27, v37);
      v26(v14, v28);

      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v16 = v34 + 8;
        v17 = v33 - 1;
        if (v35 + 1 == v32)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v29 = *v16;
      v18 = *(v16 + 8);
      *v16 = v18;
      *(v16 + 8) = v29;
      v16 -= 8;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_21A25C804(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v118 = a1;
  v127 = sub_21A2F49B4();
  MEMORY[0x28223BE20](v127, v9);
  v126 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v125 = &v112 - v14;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_127;
    }

    a4 = v17;
    v18 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = a4;
    }

    else
    {
LABEL_121:
      v107 = sub_21A1C7168(a4);
    }

    v128 = v107;
    v108 = *(v107 + 2);
    if (v108 >= 2)
    {
      while (*v18)
      {
        a4 = *&v107[16 * v108];
        v109 = v107;
        v110 = *&v107[16 * v108 + 24];
        sub_21A25D074((*v18 + 8 * a4), (*v18 + 8 * *&v107[16 * v108 + 16]), (*v18 + 8 * v110), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v110 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_21A1C7168(v109);
        }

        if (v108 - 2 >= *(v109 + 2))
        {
          goto LABEL_115;
        }

        v111 = &v109[16 * v108];
        *v111 = a4;
        v111[1] = v110;
        v128 = v109;
        sub_21A1C70DC(v108 - 1);
        v107 = v128;
        v108 = *(v128 + 2);
        if (v108 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v16 = 0;
  v124 = (v13 + 8);
  v17 = MEMORY[0x277D84F90];
  v117 = a4;
  v113 = a3;
  while (1)
  {
    v18 = v16++;
    if (v16 < v15)
    {
      v122 = v15;
      v115 = v17;
      v116 = v6;
      v19 = *a3;
      v20 = *(*a3 + 8 * v16);
      v121 = 8 * v18;
      v21 = (v19 + 8 * v18);
      v22 = *v21;
      v5 = (v21 + 2);
      v23 = v20;
      v24 = v22;
      v25 = [v23 creationDate];
      v26 = v125;
      sub_21A2F4964();

      v27 = [v24 creationDate];
      v28 = v126;
      sub_21A2F4964();

      LODWORD(v123) = sub_21A2F4944();
      v29 = *v124;
      v30 = v127;
      (*v124)(v28, v127);
      v29(v26, v30);

      v114 = v18;
      v31 = (v18 + 2);
      while (1)
      {
        v16 = v122;
        if (v122 == v31)
        {
          break;
        }

        v32 = *(v5 - 8);
        v33 = *v5;
        v34 = v32;
        v35 = [v33 creationDate];
        v36 = v125;
        sub_21A2F4964();

        v37 = [v34 creationDate];
        v38 = v126;
        sub_21A2F4964();

        LODWORD(v37) = sub_21A2F4944() & 1;
        v39 = v38;
        v40 = v127;
        v29(v39, v127);
        v29(v36, v40);

        ++v31;
        v5 += 8;
        if ((v123 & 1) != v37)
        {
          v16 = (v31 - 1);
          break;
        }
      }

      v17 = v115;
      v6 = v116;
      a4 = v117;
      v18 = v114;
      v41 = v121;
      if (v123)
      {
        if (v16 < v114)
        {
          goto LABEL_118;
        }

        a3 = v113;
        if (v114 < v16)
        {
          v42 = 8 * v16 - 8;
          v43 = v16;
          v44 = v114;
          do
          {
            if (v44 != --v43)
            {
              v46 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v45 = *(v46 + v41);
              *(v46 + v41) = *(v46 + v42);
              *(v46 + v42) = v45;
            }

            v44 = (v44 + 1);
            v42 -= 8;
            v41 += 8;
          }

          while (v44 < v43);
        }
      }

      else
      {
        a3 = v113;
      }
    }

    v47 = a3[1];
    if (v16 < v47)
    {
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_117;
      }

      if (v16 - v18 < a4)
      {
        v48 = (v18 + a4);
        if (__OFADD__(v18, a4))
        {
          goto LABEL_119;
        }

        if (v48 >= v47)
        {
          v48 = a3[1];
        }

        if (v48 < v18)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v16 != v48)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v16 < v18)
    {
      goto LABEL_116;
    }

    v63 = v17;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v17 = v63;
    }

    else
    {
      v17 = sub_21A1B7214(0, *(v63 + 2) + 1, 1, v63);
    }

    a4 = *(v17 + 2);
    v64 = *(v17 + 3);
    v5 = a4 + 1;
    if (a4 >= v64 >> 1)
    {
      v17 = sub_21A1B7214((v64 > 1), a4 + 1, 1, v17);
    }

    *(v17 + 2) = v5;
    v65 = &v17[16 * a4];
    *(v65 + 4) = v18;
    *(v65 + 5) = v16;
    v66 = *v118;
    if (!*v118)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v67 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v68 = *(v17 + 4);
          v69 = *(v17 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_56:
          if (v71)
          {
            goto LABEL_105;
          }

          v84 = &v17[16 * v5];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_108;
          }

          v90 = &v17[16 * v67 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_112;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v67 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v94 = &v17[16 * v5];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_70:
        if (v89)
        {
          goto LABEL_107;
        }

        v97 = &v17[16 * v67];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_110;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v67 - 1;
        if (v67 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v105 = v17;
        v5 = *&v17[16 * a4 + 32];
        v18 = *&v17[16 * v67 + 40];
        sub_21A25D074((*a3 + 8 * v5), (*a3 + 8 * *&v17[16 * v67 + 32]), (*a3 + 8 * v18), v66);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v18 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_21A1C7168(v105);
        }

        if (a4 >= *(v105 + 2))
        {
          goto LABEL_102;
        }

        v106 = &v105[16 * a4];
        *(v106 + 4) = v5;
        *(v106 + 5) = v18;
        v128 = v105;
        a4 = &v128;
        sub_21A1C70DC(v67);
        v17 = v128;
        v5 = *(v128 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v17[16 * v5 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_103;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_104;
      }

      v79 = &v17[16 * v5];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_106;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_109;
      }

      if (v83 >= v75)
      {
        v101 = &v17[16 * v67 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_113;
        }

        if (v70 < v104)
        {
          v67 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v15 = a3[1];
    a4 = v117;
    if (v16 >= v15)
    {
      goto LABEL_88;
    }
  }

  v115 = v17;
  v116 = v6;
  v123 = *a3;
  v49 = v123 + 8 * v16 - 8;
  v114 = v18;
  a4 = v18 - v16;
  v119 = v48;
LABEL_29:
  v121 = v49;
  v122 = v16;
  v50 = *(v123 + 8 * v16);
  v120 = a4;
  v51 = v49;
  while (1)
  {
    v52 = *v51;
    v5 = v50;
    v53 = v52;
    v54 = [v5 creationDate];
    v55 = v125;
    sub_21A2F4964();

    v56 = [v53 creationDate];
    v57 = v126;
    sub_21A2F4964();

    LOBYTE(v56) = sub_21A2F4944();
    v58 = *v124;
    v59 = v57;
    v60 = v127;
    (*v124)(v59, v127);
    v58(v55, v60);

    if ((v56 & 1) == 0)
    {
LABEL_28:
      v16 = v122 + 1;
      v49 = v121 + 8;
      a4 = v120 - 1;
      if ((v122 + 1) != v119)
      {
        goto LABEL_29;
      }

      v16 = v119;
      v17 = v115;
      v6 = v116;
      a3 = v113;
      v18 = v114;
      goto LABEL_36;
    }

    if (!v123)
    {
      break;
    }

    v61 = *v51;
    v50 = *(v51 + 8);
    *v51 = v50;
    *(v51 + 8) = v61;
    v51 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

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
}

uint64_t sub_21A25D074(id *a1, id *a2, id *a3, void **a4)
{
  v58 = sub_21A2F49B4();
  v8 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v9);
  v57 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v56 = &v51 - v13;
  v14 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v14 = a2 - a1;
  }

  v15 = v14 >> 3;
  v16 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v16 = a3 - a2;
  }

  v17 = v16 >> 3;
  if (v15 >= v16 >> 3)
  {
    v59 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v17] <= a4)
    {
      memmove(a4, a2, 8 * v17);
    }

    v60 = &a4[v17];
    if (a3 - a2 >= 8 && a2 > v59)
    {
      v52 = (v8 + 8);
LABEL_27:
      v51 = a1;
      v32 = a1 - 1;
      v33 = a3 - 1;
      v34 = v60;
      v53 = a1 - 1;
      do
      {
        v35 = a4;
        v36 = v33;
        v37 = v33 + 1;
        v38 = *--v34;
        v39 = *v32;
        v40 = v38;
        v55 = v40;
        v41 = v39;
        v54 = v41;
        v42 = [v40 creationDate];
        v43 = v56;
        sub_21A2F4964();

        v44 = [v41 creationDate];
        v45 = v57;
        sub_21A2F4964();

        LOBYTE(v44) = sub_21A2F4944();
        v46 = *v52;
        v47 = v45;
        v48 = v58;
        (*v52)(v47, v58);
        v46(v43, v48);

        if (v44)
        {
          a4 = v35;
          a3 = v36;
          v49 = v53;
          if (v37 != v51)
          {
            *v36 = *v53;
          }

          if (v60 <= v35 || (a1 = v49, v49 <= v59))
          {
            a1 = v49;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v35;
        if (v37 != v60)
        {
          *v36 = *v34;
        }

        v33 = v36 - 1;
        v60 = v34;
        v32 = v53;
      }

      while (v34 > v35);
      v60 = v34;
      a1 = v51;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v15] <= a4)
    {
      memmove(a4, a1, 8 * v15);
    }

    v60 = &a4[v15];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v55 = a3;
      v18 = (v8 + 8);
      while (1)
      {
        v59 = a1;
        v19 = *a4;
        v20 = *a2;
        v21 = v19;
        v22 = [v20 creationDate];
        v23 = v56;
        sub_21A2F4964();

        v24 = [v21 creationDate];
        v25 = v57;
        sub_21A2F4964();

        LOBYTE(v24) = sub_21A2F4944();
        v26 = *v18;
        v27 = v25;
        v28 = v58;
        (*v18)(v27, v58);
        v26(v23, v28);

        if ((v24 & 1) == 0)
        {
          break;
        }

        v29 = a2;
        v30 = v59;
        v31 = v59 == a2++;
        if (!v31)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v30 + 1;
        if (a4 >= v60 || a2 >= v55)
        {
          goto LABEL_39;
        }
      }

      v29 = a4;
      v30 = v59;
      v31 = v59 == a4++;
      if (v31)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v30 = *v29;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v60 - a4 + (v60 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v60 - a4));
  }

  return 1;
}

size_t sub_21A25D510(size_t a1, int64_t a2, char a3)
{
  result = sub_21A25E080(a1, a2, a3, *v3, &qword_27CCFFC88, &unk_21A2FDFE0, type metadata accessor for Step);
  *v3 = result;
  return result;
}

char *sub_21A25D554(char *a1, int64_t a2, char a3)
{
  result = sub_21A25D9B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A25D574(char *a1, int64_t a2, char a3)
{
  result = sub_21A25DAC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21A25D594(size_t a1, int64_t a2, char a3)
{
  result = sub_21A25E080(a1, a2, a3, *v3, &qword_27CCFFC30, &unk_21A30CD20, type metadata accessor for ImageAsset);
  *v3 = result;
  return result;
}

size_t sub_21A25D5D8(size_t a1, int64_t a2, char a3)
{
  result = sub_21A25E080(a1, a2, a3, *v3, &qword_27CCFFBD0, &unk_21A30CC60, type metadata accessor for StepSection);
  *v3 = result;
  return result;
}

char *sub_21A25D61C(char *a1, int64_t a2, char a3)
{
  result = sub_21A25DBE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A25D63C(char *a1, int64_t a2, char a3)
{
  result = sub_21A25DD00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21A25D65C(size_t a1, int64_t a2, char a3)
{
  result = sub_21A25E080(a1, a2, a3, *v3, &qword_27CCFFBD8, &unk_21A30CC90, type metadata accessor for InTextCountdownTimer);
  *v3 = result;
  return result;
}