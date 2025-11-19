uint64_t sub_1D7077B70(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  sub_1D5B568D8(0, a3, a4, a5, type metadata accessor for FormatCompilerPrimitiveProperty);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D7077BF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5B568D8(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D7077C50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7077CB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7077D18()
{
  sub_1D5B568D8(0, &qword_1EDF44038, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v60 = &v56 - v2;
  sub_1D5B568D8(0, &qword_1EDF44030, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v59 = &v56 - v5;
  sub_1D5B58DD8(0, qword_1EDF44050, type metadata accessor for FormatCompilerPrimitiveProperty);
  v58 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v57 = &v56 - v8;
  sub_1D5B5681C(0, &qword_1EDF44020, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v56 - v11;
  sub_1D5B5681C(0, &qword_1EDF44010, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v56 - v15;
  sub_1D5B568D8(0, &qword_1EDF44040, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v56 - v19;
  v21 = type metadata accessor for FormatCompilerEnumProperty(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B58AF0();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B568D8(0, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v56 - v32;
  sub_1D5B5681C(0, &qword_1EDF44018, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = &v56 - v36;
  v38 = type metadata accessor for FormatCompilerProperty(0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v56 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D675D0(v61, v41, type metadata accessor for FormatCompilerProperty);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1D5CB55A8(v41, v37);
        v43 = *(v37 + 7);

        sub_1D5D676C0(v37);
        return v43;
      }

      sub_1D7077B70(v41, v33, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor);
      v43 = *(v33 + 9);

      v51 = v33;
      v52 = &qword_1EDF44028;
      v53 = sub_1D5B5706C;
      v54 = &type metadata for FormatColor;
LABEL_21:
      sub_1D7077BF4(v51, v52, v53, v54, type metadata accessor for FormatCompilerPrimitiveProperty);
      return v43;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_1D7077C50(v41, v29, sub_1D5B58AF0);
      v43 = *&v29[*(v26 + 56)];

      sub_1D7077CB8(v29, sub_1D5B58AF0);
      return v43;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_1D7077C50(v41, v24, type metadata accessor for FormatCompilerEnumProperty);
      v43 = *(v24 + 12);

      sub_1D7077CB8(v24, type metadata accessor for FormatCompilerEnumProperty);
      return v43;
    }

    v44 = &qword_1EDF44040;
    v45 = MEMORY[0x1E69E7DE0];
    v47 = sub_1D5B577E4;
    sub_1D7077B70(v41, v20, &qword_1EDF44040, sub_1D5B577E4, MEMORY[0x1E69E7DE0]);
    v43 = *(v20 + 9);

    v51 = v20;
LABEL_19:
    v52 = v44;
    v53 = v47;
    v54 = v45;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v50 = v57;
      sub_1D5C4EA2C(v41, v57, qword_1EDF44050, type metadata accessor for FormatCompilerPrimitiveProperty, sub_1D5B58DD8);
      v43 = *(v50 + *(v58 + 56));

      sub_1D5D67748(v50);
      return v43;
    }

    if (EnumCaseMultiPayload == 8)
    {
      v44 = &qword_1EDF44030;
      v45 = &type metadata for FormatFont;
      v46 = sub_1D5B55668;
      v47 = sub_1D5B55668;
      v48 = v41;
      v49 = v59;
    }

    else
    {
      v44 = &qword_1EDF44038;
      v45 = &type metadata for FormatAsyncImageContent;
      v46 = sub_1D5B57A00;
      v47 = sub_1D5B57A00;
      v48 = v41;
      v49 = v60;
    }

    sub_1D7077B70(v48, v49, v44, v46, v45);
    v43 = *(v49 + 72);

    v51 = v49;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 5)
  {
    sub_1D6680CD4(v41, v16);
    v43 = *(v16 + 9);

    sub_1D66810E4(v16);
  }

  else
  {
    sub_1D5CB5494(v41, v12);
    v43 = *(v12 + 10);

    sub_1D5D67638(v12);
  }

  return v43;
}

uint64_t FormatCompilerEnumProperty.description.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t FormatCompilerPrimitiveProperty.description.getter()
{
  v0 = sub_1D707D8D8();

  return v0;
}

uint64_t FormatCompilerPrimitiveProperty.compilerFlags.getter(uint64_t a1)
{
  sub_1D707D8E0(a1);
}

uint64_t FormatCompilerProperty.type.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for FormatCompilerProperty(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D675D0(v1, v6, type metadata accessor for FormatCompilerProperty);
  *a1 = byte_1D73892AE[swift_getEnumCaseMultiPayload()];
  return sub_1D7077CB8(v6, type metadata accessor for FormatCompilerProperty);
}

BOOL sub_1D707866C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v29 - v12;
  sub_1D707DC14(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v29 - v17;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v20 = *(a1 + 49);
  v21 = *(a2 + 49);
  if (v20 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }
  }

  else if (v21 == 2 || ((v20 ^ v21) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 50) != *(a2 + 50) || (sub_1D5E1ED0C(*(a1 + 56), *(a2 + 56)) & 1) == 0)
  {
    return 0;
  }

  sub_1D5B5681C(0, &qword_1EDF44018, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatCompilerPrimitiveProperty);
  v23 = *(v22 + 60);
  v24 = *(v15 + 48);
  v25 = MEMORY[0x1E69D6A58];
  sub_1D5B75978(a1 + v23, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5B75978(a2 + v23, &v18[v24], &qword_1EDF45AD0, v25);
  v26 = *(v5 + 48);
  if (v26(v18, 1, v4) != 1)
  {
    sub_1D5B75978(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v26(&v18[v24], 1, v4) == 1)
    {
      (*(v5 + 8))(v13, v4);
      goto LABEL_24;
    }

    (*(v5 + 32))(v8, &v18[v24], v4);
    sub_1D5B4CEC4(&qword_1EC881E90, MEMORY[0x1E69D6A58]);
    v27 = sub_1D7261FBC();
    v28 = *(v5 + 8);
    v28(v8, v4);
    v28(v13, v4);
    sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v27 & 1) != 0;
  }

  if (v26(&v18[v24], 1, v4) != 1)
  {
LABEL_24:
    sub_1D707DC78(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return 0;
  }

  sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL sub_1D7078AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v32 - v12;
  sub_1D707DC14(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v32 - v17;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v20 = *(a1 + 56);
  v21 = *(a2 + 56);
  if ((~v20 & 0xF000000000000007) != 0)
  {
    v35 = *(a1 + 56);
    if ((~v21 & 0xF000000000000007) != 0)
    {
      v34 = v21;
      sub_1D5CFCFAC(v20);
      sub_1D5CFCFAC(v21);
      sub_1D5CFCFAC(v20);
      v22 = static FormatColor.== infix(_:_:)(&v35, &v34);

      sub_1D5C84FF4(v20);
      if ((v22 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_20;
    }

    sub_1D5CFCFAC(v20);
    sub_1D5CFCFAC(v21);
    sub_1D5CFCFAC(v20);

LABEL_18:
    sub_1D5C84FF4(v20);
    sub_1D5C84FF4(v21);
    return 0;
  }

  v33 = v5;
  sub_1D5CFCFAC(v20);
  sub_1D5CFCFAC(v21);
  if ((~v21 & 0xF000000000000007) != 0)
  {
    goto LABEL_18;
  }

  sub_1D5C84FF4(v20);
  v5 = v33;
LABEL_20:
  if (*(a1 + 64) != *(a2 + 64) || (sub_1D5E1ED0C(*(a1 + 72), *(a2 + 72)) & 1) == 0)
  {
    return 0;
  }

  sub_1D5B568D8(0, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatCompilerPrimitiveProperty);
  v33 = v5;
  v24 = *(v23 + 60);
  v25 = *(v15 + 48);
  v26 = MEMORY[0x1E69D6A58];
  sub_1D5B75978(a1 + v24, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v27 = a2 + v24;
  v28 = v33;
  sub_1D5B75978(v27, &v18[v25], &qword_1EDF45AD0, v26);
  v29 = *(v28 + 48);
  if (v29(v18, 1, v4) == 1)
  {
    if (v29(&v18[v25], 1, v4) == 1)
    {
      sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      return 1;
    }

    goto LABEL_27;
  }

  sub_1D5B75978(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if (v29(&v18[v25], 1, v4) == 1)
  {
    (*(v28 + 8))(v13, v4);
LABEL_27:
    sub_1D707DC78(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return 0;
  }

  (*(v28 + 32))(v8, &v18[v25], v4);
  sub_1D5B4CEC4(&qword_1EC881E90, MEMORY[0x1E69D6A58]);
  v30 = sub_1D7261FBC();
  v31 = *(v28 + 8);
  v31(v8, v4);
  v31(v13, v4);
  sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return (v30 & 1) != 0;
}

BOOL sub_1D707904C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v57 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69D6A58];
  sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v58 = &v53 - v11;
  sub_1D707DC14(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v8);
  v59 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v53 - v14;
  v16 = sub_1D725891C();
  v60 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1E6969530];
  sub_1D5B4C02C(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v53 - v23;
  sub_1D707DC14(0, &qword_1EDF18A60, &qword_1EDF45B00, v20);
  v26 = v25;
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v53 - v28;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v53 = v15;
  v54 = v5;
  v55 = v4;
  sub_1D5B58AF0();
  v56 = v31;
  v32 = *(v31 + 48);
  v33 = *(v26 + 48);
  v34 = MEMORY[0x1E6969530];
  sub_1D5B75978(a1 + v32, v29, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  sub_1D5B75978(a2 + v32, &v29[v33], &qword_1EDF45B00, v34);
  v35 = v60;
  v36 = *(v60 + 48);
  if (v36(v29, 1, v16) != 1)
  {
    sub_1D5B75978(v29, v24, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    if (v36(&v29[v33], 1, v16) != 1)
    {
      (*(v35 + 32))(v19, &v29[v33], v16);
      sub_1D5B4CEC4(&qword_1EDF45B10, MEMORY[0x1E6969530]);
      v37 = sub_1D7261FBC();
      v38 = *(v35 + 8);
      v38(v19, v16);
      v38(v24, v16);
      sub_1D5B6F50C(v29, &qword_1EDF45B00, MEMORY[0x1E6969530]);
      if ((v37 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_20;
    }

    (*(v35 + 8))(v24, v16);
LABEL_18:
    sub_1D707DC78(v29, &qword_1EDF18A60, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    return 0;
  }

  if (v36(&v29[v33], 1, v16) != 1)
  {
    goto LABEL_18;
  }

  sub_1D5B6F50C(v29, &qword_1EDF45B00, MEMORY[0x1E6969530]);
LABEL_20:
  v39 = v56;
  if (*(a1 + *(v56 + 52)) != *(a2 + *(v56 + 52)) || (sub_1D5E1ED0C(*(a1 + *(v56 + 56)), *(a2 + *(v56 + 56))) & 1) == 0)
  {
    return 0;
  }

  v40 = *(v39 + 60);
  v41 = *(v59 + 48);
  v42 = MEMORY[0x1E69D6A58];
  v43 = a1 + v40;
  v44 = v53;
  sub_1D5B75978(v43, v53, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5B75978(a2 + v40, v44 + v41, &qword_1EDF45AD0, v42);
  v46 = v54;
  v45 = v55;
  v47 = *(v54 + 48);
  if (v47(v44, 1, v55) == 1)
  {
    if (v47(v44 + v41, 1, v45) == 1)
    {
      sub_1D5B6F50C(v44, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      return 1;
    }

    goto LABEL_27;
  }

  v48 = v58;
  sub_1D5B75978(v44, v58, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if (v47(v44 + v41, 1, v45) == 1)
  {
    (*(v46 + 8))(v48, v45);
LABEL_27:
    sub_1D707DC78(v44, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return 0;
  }

  v49 = v44 + v41;
  v50 = v57;
  (*(v46 + 32))(v57, v49, v45);
  sub_1D5B4CEC4(&qword_1EC881E90, MEMORY[0x1E69D6A58]);
  v51 = sub_1D7261FBC();
  v52 = *(v46 + 8);
  v52(v50, v45);
  v52(v48, v45);
  sub_1D5B6F50C(v44, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return (v51 & 1) != 0;
}

BOOL sub_1D707980C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v28 - v12;
  sub_1D707DC14(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v28 - v17;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v20 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (!*(a2 + 64))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 56) != *(a2 + 56))
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  if (*(a1 + 65) != *(a2 + 65) || (sub_1D5E1ED0C(*(a1 + 72), *(a2 + 72)) & 1) == 0)
  {
    return 0;
  }

  sub_1D5B568D8(0, &qword_1EDF44040, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatCompilerPrimitiveProperty);
  v22 = *(v21 + 60);
  v23 = *(v15 + 48);
  v24 = MEMORY[0x1E69D6A58];
  sub_1D5B75978(a1 + v22, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5B75978(a2 + v22, &v18[v23], &qword_1EDF45AD0, v24);
  v25 = *(v5 + 48);
  if (v25(v18, 1, v4) != 1)
  {
    sub_1D5B75978(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v25(&v18[v23], 1, v4) == 1)
    {
      (*(v5 + 8))(v13, v4);
      goto LABEL_25;
    }

    (*(v5 + 32))(v8, &v18[v23], v4);
    sub_1D5B4CEC4(&qword_1EC881E90, MEMORY[0x1E69D6A58]);
    v26 = sub_1D7261FBC();
    v27 = *(v5 + 8);
    v27(v8, v4);
    v27(v13, v4);
    sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v26 & 1) != 0;
  }

  if (v25(&v18[v23], 1, v4) != 1)
  {
LABEL_25:
    sub_1D707DC78(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return 0;
  }

  sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL sub_1D7079CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v28 - v12;
  sub_1D707DC14(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v28 - v17;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v20 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (!*(a2 + 64))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 56) != *(a2 + 56))
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  if (*(a1 + 65) != *(a2 + 65) || (sub_1D5E1ED0C(*(a1 + 72), *(a2 + 72)) & 1) == 0)
  {
    return 0;
  }

  sub_1D5B5681C(0, &qword_1EDF44010, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatCompilerPrimitiveProperty);
  v22 = *(v21 + 60);
  v23 = *(v15 + 48);
  v24 = MEMORY[0x1E69D6A58];
  sub_1D5B75978(a1 + v22, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5B75978(a2 + v22, &v18[v23], &qword_1EDF45AD0, v24);
  v25 = *(v5 + 48);
  if (v25(v18, 1, v4) != 1)
  {
    sub_1D5B75978(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v25(&v18[v23], 1, v4) == 1)
    {
      (*(v5 + 8))(v13, v4);
      goto LABEL_25;
    }

    (*(v5 + 32))(v8, &v18[v23], v4);
    sub_1D5B4CEC4(&qword_1EC881E90, MEMORY[0x1E69D6A58]);
    v26 = sub_1D7261FBC();
    v27 = *(v5 + 8);
    v27(v8, v4);
    v27(v13, v4);
    sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v26 & 1) != 0;
  }

  if (v25(&v18[v23], 1, v4) != 1)
  {
LABEL_25:
    sub_1D707DC78(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return 0;
  }

  sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL sub_1D707A130(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v29 - v12;
  sub_1D707DC14(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v29 - v17;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v20 = *(a1 + 64);
  v21 = *(a2 + 64);
  if (v20)
  {
    if (!v21 || (*(a1 + 56) != *(a2 + 56) || v20 != v21) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (*(a1 + 72) != *(a2 + 72) || (sub_1D5E1ED0C(*(a1 + 80), *(a2 + 80)) & 1) == 0)
  {
    return 0;
  }

  sub_1D5B5681C(0, &qword_1EDF44020, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatCompilerPrimitiveProperty);
  v23 = *(v22 + 60);
  v24 = *(v15 + 48);
  v25 = MEMORY[0x1E69D6A58];
  sub_1D5B75978(a1 + v23, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5B75978(a2 + v23, &v18[v24], &qword_1EDF45AD0, v25);
  v26 = *(v5 + 48);
  if (v26(v18, 1, v4) == 1)
  {
    if (v26(&v18[v24], 1, v4) == 1)
    {
      sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      return 1;
    }

    goto LABEL_27;
  }

  sub_1D5B75978(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if (v26(&v18[v24], 1, v4) == 1)
  {
    (*(v5 + 8))(v13, v4);
LABEL_27:
    sub_1D707DC78(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return 0;
  }

  (*(v5 + 32))(v8, &v18[v24], v4);
  sub_1D5B4CEC4(&qword_1EC881E90, MEMORY[0x1E69D6A58]);
  v27 = sub_1D7261FBC();
  v28 = *(v5 + 8);
  v28(v8, v4);
  v28(v13, v4);
  sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return (v27 & 1) != 0;
}

BOOL sub_1D707A5D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v57 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69D6A58];
  sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v58 = &v53 - v11;
  sub_1D707DC14(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v8);
  v59 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v53 - v14;
  v16 = sub_1D72585BC();
  v60 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1E6968FB0];
  sub_1D5B4C02C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v53 - v23;
  sub_1D707DC14(0, &qword_1EDF3C3D0, &qword_1EDF45B40, v20);
  v26 = v25;
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v53 - v28;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v53 = v15;
  v54 = v5;
  v55 = v4;
  sub_1D5B58DD8(0, qword_1EDF44050, type metadata accessor for FormatCompilerPrimitiveProperty);
  v56 = v31;
  v32 = *(v31 + 48);
  v33 = *(v26 + 48);
  v34 = MEMORY[0x1E6968FB0];
  sub_1D5B75978(a1 + v32, v29, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D5B75978(a2 + v32, &v29[v33], &qword_1EDF45B40, v34);
  v35 = v60;
  v36 = *(v60 + 48);
  if (v36(v29, 1, v16) != 1)
  {
    sub_1D5B75978(v29, v24, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    if (v36(&v29[v33], 1, v16) != 1)
    {
      (*(v35 + 32))(v19, &v29[v33], v16);
      sub_1D5B4CEC4(&unk_1EDF45B60, MEMORY[0x1E6968FB0]);
      v37 = sub_1D7261FBC();
      v38 = *(v35 + 8);
      v38(v19, v16);
      v38(v24, v16);
      sub_1D5B6F50C(v29, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      if ((v37 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_20;
    }

    (*(v35 + 8))(v24, v16);
LABEL_18:
    sub_1D707DC78(v29, &qword_1EDF3C3D0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    return 0;
  }

  if (v36(&v29[v33], 1, v16) != 1)
  {
    goto LABEL_18;
  }

  sub_1D5B6F50C(v29, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_20:
  v39 = v56;
  if (*(a1 + *(v56 + 52)) != *(a2 + *(v56 + 52)) || (sub_1D5E1ED0C(*(a1 + *(v56 + 56)), *(a2 + *(v56 + 56))) & 1) == 0)
  {
    return 0;
  }

  v40 = *(v39 + 60);
  v41 = *(v59 + 48);
  v42 = MEMORY[0x1E69D6A58];
  v43 = a1 + v40;
  v44 = v53;
  sub_1D5B75978(v43, v53, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5B75978(a2 + v40, v44 + v41, &qword_1EDF45AD0, v42);
  v46 = v54;
  v45 = v55;
  v47 = *(v54 + 48);
  if (v47(v44, 1, v55) == 1)
  {
    if (v47(v44 + v41, 1, v45) == 1)
    {
      sub_1D5B6F50C(v44, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      return 1;
    }

    goto LABEL_27;
  }

  v48 = v58;
  sub_1D5B75978(v44, v58, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if (v47(v44 + v41, 1, v45) == 1)
  {
    (*(v46 + 8))(v48, v45);
LABEL_27:
    sub_1D707DC78(v44, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return 0;
  }

  v49 = v44 + v41;
  v50 = v57;
  (*(v46 + 32))(v57, v49, v45);
  sub_1D5B4CEC4(&qword_1EC881E90, MEMORY[0x1E69D6A58]);
  v51 = sub_1D7261FBC();
  v52 = *(v46 + 8);
  v52(v50, v45);
  v52(v48, v45);
  sub_1D5B6F50C(v44, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return (v51 & 1) != 0;
}

BOOL sub_1D707ADAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v32 - v12;
  sub_1D707DC14(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v32 - v17;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v20 = *(a1 + 56);
  v21 = *(a2 + 56);
  if ((~v20 & 0xF000000000000007) != 0)
  {
    v35 = *(a1 + 56);
    if ((~v21 & 0xF000000000000007) != 0)
    {
      v34 = v21;
      sub_1D62B8444(v20);
      sub_1D62B8444(v21);
      sub_1D62B8444(v20);
      v22 = static FormatFont.== infix(_:_:)(&v35, &v34);

      sub_1D5C8500C(v20);
      if ((v22 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_20;
    }

    sub_1D62B8444(v20);
    sub_1D62B8444(v21);
    sub_1D62B8444(v20);

LABEL_18:
    sub_1D5C8500C(v20);
    sub_1D5C8500C(v21);
    return 0;
  }

  v33 = v5;
  sub_1D62B8444(v20);
  sub_1D62B8444(v21);
  if ((~v21 & 0xF000000000000007) != 0)
  {
    goto LABEL_18;
  }

  sub_1D5C8500C(v20);
  v5 = v33;
LABEL_20:
  if (*(a1 + 64) != *(a2 + 64) || (sub_1D5E1ED0C(*(a1 + 72), *(a2 + 72)) & 1) == 0)
  {
    return 0;
  }

  sub_1D5B568D8(0, &qword_1EDF44030, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatCompilerPrimitiveProperty);
  v33 = v5;
  v24 = *(v23 + 60);
  v25 = *(v15 + 48);
  v26 = MEMORY[0x1E69D6A58];
  sub_1D5B75978(a1 + v24, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v27 = a2 + v24;
  v28 = v33;
  sub_1D5B75978(v27, &v18[v25], &qword_1EDF45AD0, v26);
  v29 = *(v28 + 48);
  if (v29(v18, 1, v4) == 1)
  {
    if (v29(&v18[v25], 1, v4) == 1)
    {
      sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      return 1;
    }

    goto LABEL_27;
  }

  sub_1D5B75978(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if (v29(&v18[v25], 1, v4) == 1)
  {
    (*(v28 + 8))(v13, v4);
LABEL_27:
    sub_1D707DC78(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return 0;
  }

  (*(v28 + 32))(v8, &v18[v25], v4);
  sub_1D5B4CEC4(&qword_1EC881E90, MEMORY[0x1E69D6A58]);
  v30 = sub_1D7261FBC();
  v31 = *(v28 + 8);
  v31(v8, v4);
  v31(v13, v4);
  sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return (v30 & 1) != 0;
}

BOOL sub_1D707B2FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v32 - v12;
  sub_1D707DC14(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v32 - v17;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v20 = *(a1 + 56);
  v21 = *(a2 + 56);
  if ((~v20 & 0xF000000000000007) != 0)
  {
    v35 = *(a1 + 56);
    if ((~v21 & 0xF000000000000007) != 0)
    {
      v34 = v21;
      sub_1D5CFCFAC(v20);
      sub_1D5CFCFAC(v21);
      sub_1D5CFCFAC(v20);
      v22 = static FormatAsyncImageContent.== infix(_:_:)(&v35, &v34);

      sub_1D5C84FF4(v20);
      if ((v22 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_20;
    }

    sub_1D5CFCFAC(v20);
    sub_1D5CFCFAC(v21);
    sub_1D5CFCFAC(v20);

LABEL_18:
    sub_1D5C84FF4(v20);
    sub_1D5C84FF4(v21);
    return 0;
  }

  v33 = v5;
  sub_1D5CFCFAC(v20);
  sub_1D5CFCFAC(v21);
  if ((~v21 & 0xF000000000000007) != 0)
  {
    goto LABEL_18;
  }

  sub_1D5C84FF4(v20);
  v5 = v33;
LABEL_20:
  if (*(a1 + 64) != *(a2 + 64) || (sub_1D5E1ED0C(*(a1 + 72), *(a2 + 72)) & 1) == 0)
  {
    return 0;
  }

  sub_1D5B568D8(0, &qword_1EDF44038, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatCompilerPrimitiveProperty);
  v33 = v5;
  v24 = *(v23 + 60);
  v25 = *(v15 + 48);
  v26 = MEMORY[0x1E69D6A58];
  sub_1D5B75978(a1 + v24, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v27 = a2 + v24;
  v28 = v33;
  sub_1D5B75978(v27, &v18[v25], &qword_1EDF45AD0, v26);
  v29 = *(v28 + 48);
  if (v29(v18, 1, v4) == 1)
  {
    if (v29(&v18[v25], 1, v4) == 1)
    {
      sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      return 1;
    }

    goto LABEL_27;
  }

  sub_1D5B75978(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if (v29(&v18[v25], 1, v4) == 1)
  {
    (*(v28 + 8))(v13, v4);
LABEL_27:
    sub_1D707DC78(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return 0;
  }

  (*(v28 + 32))(v8, &v18[v25], v4);
  sub_1D5B4CEC4(&qword_1EC881E90, MEMORY[0x1E69D6A58]);
  v30 = sub_1D7261FBC();
  v31 = *(v28 + 8);
  v31(v8, v4);
  v31(v13, v4);
  sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return (v30 & 1) != 0;
}

BOOL static FormatCompilerPrimitiveProperty.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a4;
  v7 = sub_1D725B76C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69D6A58];
  sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v61 = &v55 - v15;
  sub_1D707DC14(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v12);
  v62 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v55 - v18;
  v68 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v63 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D726393C();
  v67 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v65 = &v55 - v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v27);
  v29 = &v55 - v28;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v55 = v11;
  v56 = v19;
  v57 = v8;
  v58 = v7;
  v59 = type metadata accessor for FormatCompilerPrimitiveProperty();
  v30 = v59[12];
  v31 = *(TupleTypeMetadata2 + 48);
  v32 = *(v67 + 16);
  v32(v29, a1 + v30, v23);
  v60 = v31;
  v32(&v29[v31], a2 + v30, v23);
  v33 = *(v68 + 48);
  if (v33(v29, 1, a3) != 1)
  {
    v32(v65, v29, v23);
    v34 = v60;
    if (v33(&v29[v60], 1, a3) != 1)
    {
      v35 = v68;
      v36 = v63;
      (*(v68 + 32))(v63, &v29[v34], a3);
      v37 = v65;
      v38 = sub_1D7261FBC();
      v39 = *(v35 + 8);
      v39(v36, a3);
      v39(v37, a3);
      (*(v67 + 8))(v29, v23);
      if ((v38 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_18;
    }

    (*(v68 + 8))(v65, a3);
LABEL_16:
    (*(v64 + 8))(v29, TupleTypeMetadata2);
    return 0;
  }

  if (v33(&v29[v60], 1, a3) != 1)
  {
    goto LABEL_16;
  }

  (*(v67 + 8))(v29, v23);
LABEL_18:
  v40 = v59;
  if (*(a1 + v59[13]) != *(a2 + v59[13]) || (sub_1D5E1ED0C(*(a1 + v59[14]), *(a2 + v59[14])) & 1) == 0)
  {
    return 0;
  }

  v41 = v40[15];
  v42 = *(v62 + 48);
  v43 = MEMORY[0x1E69D6A58];
  v44 = a1 + v41;
  v45 = v56;
  sub_1D5B75978(v44, v56, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5B75978(a2 + v41, v45 + v42, &qword_1EDF45AD0, v43);
  v47 = v57;
  v46 = v58;
  v48 = *(v57 + 48);
  if (v48(v45, 1, v58) == 1)
  {
    if (v48(v45 + v42, 1, v46) == 1)
    {
      sub_1D5B6F50C(v45, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      return 1;
    }

    goto LABEL_25;
  }

  v49 = v61;
  sub_1D5B75978(v45, v61, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if (v48(v45 + v42, 1, v46) == 1)
  {
    (*(v47 + 8))(v49, v46);
LABEL_25:
    sub_1D707DC78(v45, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return 0;
  }

  v51 = v45 + v42;
  v52 = v55;
  (*(v47 + 32))(v55, v51, v46);
  sub_1D5B4CEC4(&qword_1EC881E90, MEMORY[0x1E69D6A58]);
  v53 = sub_1D7261FBC();
  v54 = *(v47 + 8);
  v54(v52, v46);
  v54(v49, v46);
  sub_1D5B6F50C(v45, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return (v53 & 1) != 0;
}

uint64_t FormatCompilerPrimitiveProperty.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatCompilerPrimitiveProperty.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatCompilerPrimitiveProperty.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1D707C0C8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FormatCompilerPrimitiveProperty();
  *a1 = sub_1D707D8D8();
  a1[1] = v2;
}

uint64_t sub_1D707C118(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return FormatCompilerPrimitiveProperty.description.setter(v1, v2);
}

uint64_t FormatCompilerPrimitiveProperty.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t FormatCompilerPrimitiveProperty.default.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_1D726393C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D707C280@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for FormatCompilerPrimitiveProperty();
  *a1 = sub_1D707D8E0(v2);
}

uint64_t sub_1D707C2CC()
{
  v0 = type metadata accessor for FormatCompilerPrimitiveProperty();

  return FormatCompilerPrimitiveProperty.compilerFlags.setter(v1, v0);
}

uint64_t FormatCompilerPrimitiveProperty.compilerFlags.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);

  *(v2 + v4) = a1;
  return result;
}

uint64_t FormatCompilerEnumProperty.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatCompilerEnumProperty.type.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatCompilerEnumProperty.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatCompilerEnumProperty.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t FormatCompilerEnumProperty.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t FormatCompilerEnumProperty.default.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t FormatCompilerEnumProperty.compilerFlags.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

BOOL _s8NewsFeed26FormatCompilerEnumPropertyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v28 - v12;
  sub_1D707DC14(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v28 - v17;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v20 = *(a1 + 80);
  v21 = *(a2 + 80);
  if (v20)
  {
    if (!v21 || (*(a1 + 72) != *(a2 + 72) || v20 != v21) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (*(a1 + 88) != *(a2 + 88) || (sub_1D5E1ED0C(*(a1 + 96), *(a2 + 96)) & 1) == 0)
  {
    return 0;
  }

  v22 = *(type metadata accessor for FormatCompilerEnumProperty(0) + 48);
  v23 = *(v15 + 48);
  v24 = MEMORY[0x1E69D6A58];
  sub_1D5B75978(a1 + v22, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5B75978(a2 + v22, &v18[v23], &qword_1EDF45AD0, v24);
  v25 = *(v5 + 48);
  if (v25(v18, 1, v4) == 1)
  {
    if (v25(&v18[v23], 1, v4) == 1)
    {
      sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      return 1;
    }

    goto LABEL_30;
  }

  sub_1D5B75978(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if (v25(&v18[v23], 1, v4) == 1)
  {
    (*(v5 + 8))(v13, v4);
LABEL_30:
    sub_1D707DC78(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return 0;
  }

  (*(v5 + 32))(v8, &v18[v23], v4);
  sub_1D5B4CEC4(&qword_1EC881E90, MEMORY[0x1E69D6A58]);
  v26 = sub_1D7261FBC();
  v27 = *(v5 + 8);
  v27(v8, v4);
  v27(v13, v4);
  sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return (v26 & 1) != 0;
}

BOOL _s8NewsFeed22FormatCompilerPropertyO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v119 = a1;
  v120 = a2;
  sub_1D5B568D8(0, &qword_1EDF44038, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v113 = &v103 - v4;
  sub_1D5B568D8(0, &qword_1EDF44030, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v112 = &v103 - v7;
  sub_1D5B58DD8(0, qword_1EDF44050, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v111 = &v103 - v10;
  sub_1D5B5681C(0, &qword_1EDF44020, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v110 = &v103 - v13;
  sub_1D5B5681C(0, &qword_1EDF44010, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v109 = &v103 - v16;
  sub_1D5B568D8(0, &qword_1EDF44040, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v108 = &v103 - v19;
  v20 = type metadata accessor for FormatCompilerEnumProperty(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v107 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B58AF0();
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v106 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B568D8(0, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v105 = &v103 - v28;
  sub_1D5B5681C(0, &qword_1EDF44018, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v104 = &v103 - v31;
  v32 = type metadata accessor for FormatCompilerProperty(0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v118 = &v103 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v117 = &v103 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v116 = &v103 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v114 = &v103 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v103 - v46;
  MEMORY[0x1EEE9AC00](v48, v49);
  v115 = &v103 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v103 - v53;
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v103 - v57;
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v103 - v61;
  MEMORY[0x1EEE9AC00](v63, v64);
  v66 = &v103 - v65;
  sub_1D707DBB0();
  MEMORY[0x1EEE9AC00](v67 - 8, v68);
  v70 = &v103 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(v71 + 56);
  sub_1D5D675D0(v119, v70, type metadata accessor for FormatCompilerProperty);
  sub_1D5D675D0(v120, &v70[v72], type metadata accessor for FormatCompilerProperty);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1D5D675D0(v70, v66, type metadata accessor for FormatCompilerProperty);
        if (!swift_getEnumCaseMultiPayload())
        {
          v102 = v104;
          sub_1D5CB55A8(&v70[v72], v104);
          v75 = sub_1D707866C(v66, v102);
          sub_1D5D676C0(v102);
          sub_1D5D676C0(v66);
          v85 = type metadata accessor for FormatCompilerProperty;
          goto LABEL_44;
        }

        sub_1D5D676C0(v66);
        goto LABEL_43;
      }

      sub_1D5D675D0(v70, v62, type metadata accessor for FormatCompilerProperty);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v93 = v105;
        sub_1D7077B70(&v70[v72], v105, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor);
        v75 = sub_1D7078AFC(v62, v93);
        sub_1D7077BF4(v93, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatCompilerPrimitiveProperty);
        v89 = v62;
        v90 = &qword_1EDF44028;
        v91 = sub_1D5B5706C;
        v92 = &type metadata for FormatColor;
        goto LABEL_30;
      }

      v96 = &qword_1EDF44028;
      v97 = &type metadata for FormatColor;
      v99 = sub_1D5B5706C;
      v100 = v62;
LABEL_42:
      sub_1D7077BF4(v100, v96, v99, v97, type metadata accessor for FormatCompilerPrimitiveProperty);
      goto LABEL_43;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_1D5D675D0(v70, v58, type metadata accessor for FormatCompilerProperty);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v86 = v106;
        sub_1D7077C50(&v70[v72], v106, sub_1D5B58AF0);
        v75 = sub_1D707904C(v58, v86);
        v76 = sub_1D5B58AF0;
        sub_1D7077CB8(v86, sub_1D5B58AF0);
        v77 = v58;
        goto LABEL_20;
      }

      sub_1D7077CB8(v58, sub_1D5B58AF0);
LABEL_43:
      v75 = 0;
      v85 = sub_1D707DBB0;
      goto LABEL_44;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_1D5D675D0(v70, v54, type metadata accessor for FormatCompilerProperty);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v74 = v107;
        sub_1D7077C50(&v70[v72], v107, type metadata accessor for FormatCompilerEnumProperty);
        v75 = _s8NewsFeed26FormatCompilerEnumPropertyV2eeoiySbAC_ACtFZ_0(v54, v74);
        v76 = type metadata accessor for FormatCompilerEnumProperty;
        sub_1D7077CB8(v74, type metadata accessor for FormatCompilerEnumProperty);
        v77 = v54;
LABEL_20:
        sub_1D7077CB8(v77, v76);
        v85 = type metadata accessor for FormatCompilerProperty;
        goto LABEL_44;
      }

      sub_1D7077CB8(v54, type metadata accessor for FormatCompilerEnumProperty);
      goto LABEL_43;
    }

    v78 = v115;
    sub_1D5D675D0(v70, v115, type metadata accessor for FormatCompilerProperty);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v79 = &qword_1EDF44040;
      v80 = MEMORY[0x1E69E7DE0];
      v81 = sub_1D5B577E4;
      v82 = v108;
      sub_1D7077B70(&v70[v72], v108, &qword_1EDF44040, sub_1D5B577E4, MEMORY[0x1E69E7DE0]);
      v83 = sub_1D707980C(v78, v82);
      goto LABEL_27;
    }

    v96 = &qword_1EDF44040;
    v97 = MEMORY[0x1E69E7DE0];
    v98 = sub_1D5B577E4;
LABEL_39:
    v99 = v98;
    v100 = v78;
    goto LABEL_42;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v87 = v116;
      sub_1D5D675D0(v70, v116, type metadata accessor for FormatCompilerProperty);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v88 = v111;
        sub_1D5C4EA2C(&v70[v72], v111, qword_1EDF44050, type metadata accessor for FormatCompilerPrimitiveProperty, sub_1D5B58DD8);
        v75 = sub_1D707A5D0(v87, v88);
        sub_1D5D67748(v88);
        sub_1D5D67748(v87);
        v85 = type metadata accessor for FormatCompilerProperty;
        goto LABEL_44;
      }

      sub_1D5D67748(v87);
      goto LABEL_43;
    }

    if (EnumCaseMultiPayload == 8)
    {
      v78 = v117;
      sub_1D5D675D0(v70, v117, type metadata accessor for FormatCompilerProperty);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v79 = &qword_1EDF44030;
        v80 = &type metadata for FormatFont;
        v81 = sub_1D5B55668;
        v82 = v112;
        sub_1D7077B70(&v70[v72], v112, &qword_1EDF44030, sub_1D5B55668, &type metadata for FormatFont);
        v83 = sub_1D707ADAC(v78, v82);
LABEL_27:
        v75 = v83;
        sub_1D7077BF4(v82, v79, v81, v80, type metadata accessor for FormatCompilerPrimitiveProperty);
        v89 = v78;
        v90 = v79;
        v91 = v81;
        v92 = v80;
LABEL_30:
        sub_1D7077BF4(v89, v90, v91, v92, type metadata accessor for FormatCompilerPrimitiveProperty);
        v85 = type metadata accessor for FormatCompilerProperty;
        goto LABEL_44;
      }

      v96 = &qword_1EDF44030;
      v97 = &type metadata for FormatFont;
      v98 = sub_1D5B55668;
    }

    else
    {
      v78 = v118;
      sub_1D5D675D0(v70, v118, type metadata accessor for FormatCompilerProperty);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v79 = &qword_1EDF44038;
        v80 = &type metadata for FormatAsyncImageContent;
        v81 = sub_1D5B57A00;
        v82 = v113;
        sub_1D7077B70(&v70[v72], v113, &qword_1EDF44038, sub_1D5B57A00, &type metadata for FormatAsyncImageContent);
        v83 = sub_1D707B2FC(v78, v82);
        goto LABEL_27;
      }

      v96 = &qword_1EDF44038;
      v97 = &type metadata for FormatAsyncImageContent;
      v98 = sub_1D5B57A00;
    }

    goto LABEL_39;
  }

  if (EnumCaseMultiPayload != 5)
  {
    v94 = v114;
    sub_1D5D675D0(v70, v114, type metadata accessor for FormatCompilerProperty);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v95 = v110;
      sub_1D5CB5494(&v70[v72], v110);
      v75 = sub_1D707A130(v94, v95);
      sub_1D5D67638(v95);
      sub_1D5D67638(v94);
      v85 = type metadata accessor for FormatCompilerProperty;
      goto LABEL_44;
    }

    sub_1D5D67638(v94);
    goto LABEL_43;
  }

  sub_1D5D675D0(v70, v47, type metadata accessor for FormatCompilerProperty);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1D66810E4(v47);
    goto LABEL_43;
  }

  v84 = v109;
  sub_1D6680CD4(&v70[v72], v109);
  v75 = sub_1D7079CA4(v47, v84);
  sub_1D66810E4(v84);
  sub_1D66810E4(v47);
  v85 = type metadata accessor for FormatCompilerProperty;
LABEL_44:
  sub_1D7077CB8(v70, v85);
  return v75;
}

uint64_t sub_1D707D8EC(uint64_t a1)
{
  result = sub_1D5B4CEC4(&qword_1EC899C10, type metadata accessor for FormatCompilerProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D707D944(void *a1)
{
  a1[1] = sub_1D5B4CEC4(&qword_1EDF44BF0, type metadata accessor for FormatCompilerProperty);
  a1[2] = sub_1D5B4CEC4(&qword_1EDF44BF8, type metadata accessor for FormatCompilerProperty);
  result = sub_1D5B4CEC4(&qword_1EC899C18, type metadata accessor for FormatCompilerProperty);
  a1[3] = result;
  return result;
}

uint64_t sub_1D707D9F0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D707DA2C(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1D707DAAC(uint64_t a1)
{
  result = sub_1D5B4CEC4(&qword_1EC899C20, type metadata accessor for FormatCompilerEnumProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D707DB04(void *a1)
{
  a1[1] = sub_1D5B4CEC4(&qword_1EDF235C8, type metadata accessor for FormatCompilerEnumProperty);
  a1[2] = sub_1D5B4CEC4(&unk_1EDF0B740, type metadata accessor for FormatCompilerEnumProperty);
  result = sub_1D5B4CEC4(&qword_1EC899C28, type metadata accessor for FormatCompilerEnumProperty);
  a1[3] = result;
  return result;
}

void sub_1D707DBB0()
{
  if (!qword_1EC899C30)
  {
    type metadata accessor for FormatCompilerProperty(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC899C30);
    }
  }
}

void sub_1D707DC14(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D5B4C02C(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D707DC78(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D707DC14(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

BOOL static FormatCodingEmptyStringStrategy.shouldEncode(wrappedValue:)(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  return v2 != 0;
}

BOOL sub_1D707DCFC(void *a1)
{
  v1 = a1[1];
  v2 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

id sub_1D707DD2C(uint64_t a1)
{
  if (a1 == 1)
  {
    result = [v1 contentMode];
    if (result == 7)
    {
      return result;
    }

    result = [v1 contentMode];
    if (result == 4)
    {
      return result;
    }

    v3 = 8;
    goto LABEL_10;
  }

  if (a1)
  {
    result = sub_1D726402C();
    __break(1u);
    return result;
  }

  result = [v1 contentMode];
  if (result != 7)
  {
    result = [v1 contentMode];
    if (result != 4)
    {
      v3 = 7;
LABEL_10:

      return [v1 setContentMode_];
    }
  }

  return result;
}

unint64_t FormatWebEmbedNode.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

uint64_t FormatWebEmbedNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatWebEmbedNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatWebEmbedNode.contentFrameIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

unint64_t FormatWebEmbedNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = v2;
  return sub_1D5C82CD8(v2);
}

uint64_t FormatWebEmbedNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

uint64_t FormatWebEmbedNode.zIndex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

unint64_t FormatWebEmbedNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 104);
  *(v1 + 104) = v2;
  return sub_1D5EB15C4(v3);
}

uint64_t FormatWebEmbedNode.isUserInteractionEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

void FormatWebEmbedNode.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
}

uint64_t FormatWebEmbedNode.location.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t FormatWebEmbedNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 152) = a1;
}

uint64_t FormatWebEmbedNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[20];
  v3 = v1[21];
  v4 = v1[22];
  v5 = v1[23];
  v6 = v1[24];
  v7 = v1[25];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6);
}

uint64_t FormatWebEmbedNode.__allocating_init(identifier:content:contentFrameIdentifier:config:size:resize:adjustments:style:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:location:selectors:flex:rendering:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, char a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19)
{
  v23 = swift_allocObject();
  v24 = *a3;
  v25 = *a7;
  v26 = *a8;
  v27 = *a12;
  v28 = *a14;
  v29 = *(a14 + 8);
  v37 = *(a18 + 40);
  v38 = *(a18 + 32);
  v30 = *a19;
  swift_beginAccess();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  *(v23 + 32) = v24;
  *(v23 + 40) = a4;
  *(v23 + 48) = a5;
  *(v23 + 56) = a6;
  *(v23 + 64) = v25;
  *(v23 + 72) = v26;
  swift_beginAccess();
  *(v23 + 80) = a9;
  *(v23 + 88) = a10;
  swift_beginAccess();
  *(v23 + 96) = a11;
  swift_beginAccess();
  *(v23 + 104) = v27;
  swift_beginAccess();
  *(v23 + 112) = a13;
  *(v23 + 120) = v28;
  *(v23 + 128) = v29;
  *(v23 + 136) = a15;
  *(v23 + 144) = a16;
  swift_beginAccess();
  *(v23 + 152) = a17;
  v31 = *(a18 + 16);
  *(v23 + 160) = *a18;
  *(v23 + 176) = v31;
  *(v23 + 192) = v38;
  *(v23 + 200) = v37;
  *(v23 + 208) = v30;
  return v23;
}

uint64_t FormatWebEmbedNode.init(identifier:content:contentFrameIdentifier:config:size:resize:adjustments:style:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:location:selectors:flex:rendering:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, char a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19)
{
  v24 = *a3;
  v25 = *a7;
  v26 = *a8;
  v30 = *a12;
  v32 = *a14;
  v31 = *(a14 + 8);
  v34 = *(a18 + 40);
  v35 = *(a18 + 32);
  v33 = *a19;
  swift_beginAccess();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = v24;
  *(v19 + 40) = a4;
  *(v19 + 48) = a5;
  *(v19 + 56) = a6;
  *(v19 + 64) = v25;
  *(v19 + 72) = v26;
  swift_beginAccess();
  *(v19 + 80) = a9;
  *(v19 + 88) = a10;
  swift_beginAccess();
  *(v19 + 96) = a11;
  swift_beginAccess();
  *(v19 + 104) = v30;
  swift_beginAccess();
  *(v19 + 112) = a13;
  *(v19 + 120) = v32;
  *(v19 + 128) = v31;
  *(v19 + 136) = a15;
  *(v19 + 144) = a16;
  swift_beginAccess();
  *(v19 + 152) = a17;
  v27 = *(a18 + 16);
  *(v19 + 160) = *a18;
  *(v19 + 176) = v27;
  *(v19 + 192) = v35;
  *(v19 + 200) = v34;
  *(v19 + 208) = v33;
  return v19;
}

uint64_t FormatWebEmbedNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 64));

  sub_1D5EB15C4(*(v0 + 104));

  sub_1D5EB2398(*(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192));
  sub_1D62B865C(*(v0 + 208));
  return v0;
}

uint64_t FormatWebEmbedNode.__deallocating_deinit()
{
  FormatWebEmbedNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D707E864(uint64_t a1)
{
  result = sub_1D707E9A8(&qword_1EC899C38);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D707E8A8(void *a1)
{
  a1[1] = sub_1D707E9A8(&qword_1EDF2D738);
  a1[2] = sub_1D707E9A8(&qword_1EDF10088);
  result = sub_1D707E9A8(&qword_1EC899C40);
  a1[3] = result;
  return result;
}

uint64_t sub_1D707E964(uint64_t a1)
{
  result = sub_1D707E9A8(&qword_1EC899C48);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D707E9A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatWebEmbedNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D707E9E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, BOOL *a3@<X8>)
{
  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EDF187C0 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  if (v10)
  {
    v7 = v10 != 1;
  }

  else
  {
    result = *(a1 + 208);
    if (result == 2)
    {
      v7 = 0;
    }

    else
    {
      v8 = *(a1 + 208);
      sub_1D5D0A57C(result);
      sub_1D721DA54(a2, &v9);
      result = sub_1D5D0A58C(v8);
      v7 = v9;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D707EAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t *a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>)
{
  v78 = a7;
  v86 = a6;
  v79 = a5;
  v80 = a2;
  v77 = a1;
  v84 = a8;
  v82 = sub_1D7257C7C();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v18);
  v68 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54EC0(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v69 = &v67 - v22;
  sub_1D5B54EC0(0, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v67 - v25;
  v27 = sub_1D72585BC();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_beginAccess();
  v34 = *(a4 + 16);
  v33 = *(a4 + 24);
  v35 = *(v32 + 40);
  if (v35)
  {
    v93 = *(v32 + 32);
    v94 = v35;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v34, v33);

    v88 = v93;
    v87 = v94;
    v34 = *(a4 + 16);
    v33 = *(a4 + 24);
  }

  else
  {

    v88 = v34;
    v87 = v33;
  }

  v76 = v34;
  v36 = *(a4 + 72);
  v83 = v26;
  if (v36 && (v37 = *(v36 + 16), swift_beginAccess(), *(*(v37 + 16) + 16)))
  {
    v75 = v37;
  }

  else
  {
    v75 = 0;
  }

  swift_beginAccess();
  v74 = *(a4 + 96);
  swift_beginAccess();
  v92 = *(a4 + 104);
  v38 = v92;

  sub_1D5EB1500(v38);
  sub_1D615B4A8(a3, &v95);
  sub_1D5EB15C4(v92);
  v73 = v95;
  swift_beginAccess();
  v72 = *(a4 + 112);
  v39 = *(a4 + 48);
  v71 = *(a4 + 40);
  v85 = v28;
  v40 = *(v28 + 16);
  v41 = v86 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_url;
  v86 = v27;
  v40(v31, v41, v27);
  v70 = *(a4 + 120);
  v42 = *(a4 + 128);
  v91 = *(a4 + 64);

  v43 = sub_1D71E8230();
  v44 = *(a4 + 136);
  v45 = *(a4 + 144);
  type metadata accessor for FormatWebEmbedNodeLayoutAttributes();
  v46 = swift_allocObject();
  v47 = v80;
  *(v46 + 16) = v77;
  *(v46 + 24) = v47;
  v48 = v87;
  *(v46 + 32) = v88;
  *(v46 + 40) = v48;
  *(v46 + 48) = v76;
  *(v46 + 56) = v33;
  *(v46 + 64) = a9;
  *(v46 + 72) = a10;
  *(v46 + 80) = a11;
  *(v46 + 88) = a12;
  v49 = v75;
  *(v46 + 96) = v79;
  *(v46 + 104) = v49;
  v50 = v73;
  *(v46 + 112) = v74;
  *(v46 + 120) = v50;
  *(v46 + 128) = v72;
  *(v46 + 136) = v71;
  *(v46 + 144) = v39;
  *(v46 + 152) = v70;
  *(v46 + 160) = v42;
  *(v46 + 161) = v43 & 1;
  *(v46 + 168) = v44;
  *(v46 + 176) = v45;
  *(v46 + 184) = v78 & 1;

  sub_1D72583DC();
  v51 = v83;
  sub_1D7257C3C();

  v52 = v81;
  v53 = *(v81 + 48);
  v54 = v82;
  if (!v53(v51, 1, v82))
  {
    sub_1D7257C1C();
  }

  if (!v53(v51, 1, v54))
  {
    sub_1D7257C5C();
  }

  if (!v53(v51, 1, v54))
  {
    v55 = v68;
    (*(v52 + 16))(v68, v51, v54);
    v56 = v69;
    sub_1D7257BDC();
    (*(v52 + 8))(v55, v54);
    v57 = v85;
    v58 = v86;
    if ((*(v85 + 48))(v56, 1, v86) != 1)
    {
      v59 = sub_1D72583DC();
      v65 = v56;
      v61 = v66;
      (*(v57 + 8))(v65, v58);
      goto LABEL_16;
    }

    sub_1D707F2F4(v56, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  v59 = sub_1D72583DC();
  v61 = v60;
LABEL_16:
  v62 = swift_allocObject();
  v89 = v88;
  v90 = v87;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v59, v61);

  v63 = v90;
  *(v46 + 192) = v89;
  *(v46 + 200) = v63;
  (*(v85 + 8))(v31, v86);
  *(v46 + 208) = MEMORY[0x1E69E7CD0];
  result = sub_1D707F2F4(v51, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
  *(v62 + 16) = v46;
  *v84 = v62 | 0x1000000000000004;
  return result;
}

uint64_t sub_1D707F2F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B54EC0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::Void __swiftcall FormatBlueprintViewSupplementaryViewProvider.register(in:)(UICollectionView *in)
{
  v3 = v1[7];
  v4 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v3);
  (*(v4 + 8))(in, v3, v4);
}

uint64_t FormatBlueprintViewSupplementaryViewProvider.supplementaryView(section:layoutSection:view:supplementaryData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v6 = type metadata accessor for FormatLayoutSectionDescriptor.Footer(0);
  v49 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v50 = &v49 - v12;
  v13 = type metadata accessor for FeedItemSupplementaryAttributes();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v52 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FormatLayoutSectionDescriptor.Header(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v49 - v23;
  v25 = sub_1D725EF8C();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D69A58BC();
  sub_1D725E24C();
  v53 = v56;
  v54 = v55;
  sub_1D725EE9C();
  v30 = (*(v26 + 88))(v29, v25);
  if (v30 == *MEMORY[0x1E69D8478])
  {
    v31 = sub_1D725EEAC();
    if ((v31 & 0x8000000000000000) == 0)
    {
      if (v31 < *(v54 + 16))
      {
        sub_1D707FB5C(v54 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v31, v24, type metadata accessor for FormatLayoutSectionDescriptor.Header);
        sub_1D707FB5C(v24, v20, type metadata accessor for FormatLayoutSectionDescriptor.Header);
        v32 = v52;
        sub_1D707F95C(v20, v52);
        v33 = v4[7];
        v34 = v4[8];
        __swift_project_boxed_opaque_existential_1(v4 + 4, v33);
        v35 = swift_allocObject();
        swift_weakInit();
        v36 = *(v34 + 32);

        v37 = v36(v51, a4, v32, sub_1D707FCF0, v35, v33, v34);

        sub_1D707FBC4(v32, type metadata accessor for FeedItemSupplementaryAttributes);
        v38 = type metadata accessor for FormatLayoutSectionDescriptor.Header;
LABEL_10:
        sub_1D707FBC4(v24, v38);

        return v37;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v30 == *MEMORY[0x1E69D8470])
  {
    v39 = sub_1D725EEAC();
    v40 = *(v54 + 16);
    v41 = __OFSUB__(v39, v40);
    v42 = v39 - v40;
    if (!v41)
    {
      if ((v42 & 0x8000000000000000) == 0)
      {
        if (v42 < *(v53 + 16))
        {
          v24 = v50;
          sub_1D707FB5C(v53 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v42, v50, type metadata accessor for FormatLayoutSectionDescriptor.Footer);
          sub_1D707FB5C(v24, v9, type metadata accessor for FormatLayoutSectionDescriptor.Footer);
          v43 = v52;
          sub_1D707F95C(v9, v52);
          v44 = v4[7];
          v45 = v4[8];
          __swift_project_boxed_opaque_existential_1(v4 + 4, v44);
          v46 = swift_allocObject();
          swift_weakInit();
          v47 = *(v45 + 32);

          v37 = v47(v51, a4, v43, sub_1D707FB40, v46, v44, v45);

          sub_1D707FBC4(v43, type metadata accessor for FeedItemSupplementaryAttributes);
          v38 = type metadata accessor for FormatLayoutSectionDescriptor.Footer;
          goto LABEL_10;
        }

        goto LABEL_15;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_16:
  result = sub_1D726402C();
  __break(1u);
  return result;
}

uint64_t sub_1D707F95C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedItemSupplementaryAttributes();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FormatBlueprintViewSupplementaryViewProvider.deinit()
{
  sub_1D5B87E10(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  return v0;
}

uint64_t FormatBlueprintViewSupplementaryViewProvider.__deallocating_deinit()
{
  sub_1D5B87E10(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1D707FA28(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 64);
  __swift_project_boxed_opaque_existential_1((*v1 + 32), v3);
  return (*(v4 + 8))(v2, v3, v4);
}

uint64_t sub_1D707FAB4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D6F9A69C(a1);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D707FB5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D707FBC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void __swiftcall GroupLayoutAttributes.init(frame:feedItemLayoutAttributes:feedItemSupplementaryAttributes:)(NewsFeed::GroupLayoutAttributes *__return_ptr retstr, __C::CGRect frame, Swift::OpaquePointer feedItemLayoutAttributes, Swift::OpaquePointer feedItemSupplementaryAttributes)
{
  retstr->kind = NewsFeed_GroupLayoutAttributes_Kind_layout;
  retstr->frame = frame;
  sub_1D6B35D2C();
  sub_1D5C184C4();
  sub_1D5BDEFF8();
  v6 = sub_1D72623BC();

  retstr->feedItemLayoutAttributes._rawValue = v6;
  retstr->feedItemSupplementaryAttributes = feedItemSupplementaryAttributes;
}

uint64_t GroupLayoutAttributes.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D707FE38()
{
  result = qword_1EC899C50;
  if (!qword_1EC899C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899C50);
  }

  return result;
}

uint64_t sub_1D707FE8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D707FED4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D707FF40()
{
  v0 = 2019912806;
  sub_1D7263D4C();

  v1 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](8236, 0xE200000000000000);
  v2 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v2);

  MEMORY[0x1DA6F9910](8236, 0xE200000000000000);
  if (sub_1D725A63C())
  {
    v3 = 0xE400000000000000;
    v4 = 2019912806;
  }

  else
  {
    v4 = sub_1D7262A9C();
    v3 = v5;
  }

  MEMORY[0x1DA6F9910](v4, v3);

  MEMORY[0x1DA6F9910](8236, 0xE200000000000000);
  if (sub_1D725A63C())
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v0 = sub_1D7262A9C();
    v6 = v7;
  }

  MEMORY[0x1DA6F9910](v0, v6);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 40;
}

BOOL static CGRect.< infix(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6)
{
  if (a2 == a6)
  {
    return a1 <= a5;
  }

  else
  {
    return a2 < a6;
  }
}

double CGRect.area.getter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  Width = CGRectGetWidth(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  return Width * CGRectGetHeight(v10);
}

unint64_t sub_1D7080128()
{
  result = qword_1EC899C58;
  if (!qword_1EC899C58)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899C58);
  }

  return result;
}

BOOL sub_1D7080180(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 == v3)
  {
    return *a1 <= *a2;
  }

  else
  {
    return v2 < v3;
  }
}

BOOL sub_1D70801A0(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v3 == v2)
  {
    return *a2 > *a1;
  }

  else
  {
    return v3 >= v2;
  }
}

BOOL sub_1D70801C0(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 == v3)
  {
    return *a1 > *a2;
  }

  else
  {
    return v2 >= v3;
  }
}

BOOL sub_1D70801E0(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v3 == v2)
  {
    return *a2 <= *a1;
  }

  else
  {
    return v3 < v2;
  }
}

uint64_t static FormatContentSubgroupFilterSelector.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  v3 = sub_1D72646CC();
  result = 0;
  if (v3)
  {
    return 1;
  }

  return result;
}

BOOL sub_1D7080250(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(a1 + *(type metadata accessor for FormatContentSubgroupFilterContext() + 32));
  v5 = qword_1EDF2AB18;

  if (v5 != -1)
  {
LABEL_8:
    swift_once();
  }

  *&v17[0] = v3;
  *(&v17[0] + 1) = v2;
  v2 = sub_1D6844380(v17);

  v3 = -*(v2 + 16);
  v6 = -1;
  v7 = 32;
  do
  {
    v8 = v3 + v6;
    if (v3 + v6 == -1)
    {
      break;
    }

    if (++v6 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_8;
    }

    v9 = v7 + 56;
    v10 = v2 + v7;
    v11 = *v10;
    v12 = *(v10 + 16);
    v13 = *(v10 + 32);
    v18 = *(v10 + 48);
    v17[1] = v12;
    v17[2] = v13;
    v17[0] = v11;
    sub_1D5E3B610(v17, v16);
    v14 = sub_1D68444DC(v4);
    sub_1D5E3B66C(v17);
    v7 = v9;
  }

  while ((v14 & 1) == 0);

  return v8 != -1;
}

uint64_t FormatContentSubgroupFilterSelector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1D70803B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F7463656C6573 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D7080438(uint64_t a1)
{
  v2 = sub_1D7080624();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7080474(uint64_t a1)
{
  v2 = sub_1D7080624();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSubgroupFilterSelector.encode(to:)(void *a1)
{
  sub_1D7080814(0, &qword_1EDF024C0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7080624();

  sub_1D7264B5C();
  v12[0] = v9;
  v12[1] = v10;
  sub_1D5D3E60C();
  sub_1D726443C();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D7080624()
{
  result = qword_1EDF1D920;
  if (!qword_1EDF1D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1D920);
  }

  return result;
}

uint64_t FormatContentSubgroupFilterSelector.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D7080814(0, &qword_1EDF19BC0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7080624();
  sub_1D7264B0C();
  if (!v2)
  {
    sub_1D5C36978();
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v11 = v13[1];
    *a2 = v13[0];
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D7080814(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7080624();
    v7 = a3(a1, &type metadata for FormatContentSubgroupFilterSelector.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7080878(void *a1)
{
  a1[1] = sub_1D69CFC88();
  a1[2] = sub_1D69CFE3C();
  result = sub_1D70808B0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D70808B0()
{
  result = qword_1EC899C60;
  if (!qword_1EC899C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899C60);
  }

  return result;
}

unint64_t sub_1D7080958()
{
  result = qword_1EC899C68;
  if (!qword_1EC899C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899C68);
  }

  return result;
}

unint64_t sub_1D70809B0()
{
  result = qword_1EDF1D910;
  if (!qword_1EDF1D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1D910);
  }

  return result;
}

unint64_t sub_1D7080A08()
{
  result = qword_1EDF1D918;
  if (!qword_1EDF1D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1D918);
  }

  return result;
}

uint64_t type metadata accessor for FormatSection()
{
  result = qword_1EDF11D18;
  if (!qword_1EDF11D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7080AD0()
{
  type metadata accessor for FormatPluginData();
  if (v0 <= 0x3F)
  {
    sub_1D6838844();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t SportsDataVisualizationResponseEventStatus.isFinalized.getter()
{
  v1 = type metadata accessor for SportsDataVisualizationResponseEventStatus(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7084300(v0, v4, type metadata accessor for SportsDataVisualizationResponseEventStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = 0;
  v7 = type metadata accessor for StartTime;
  if (EnumCaseMultiPayload <= 5)
  {
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v6 = 1;
      v7 = type metadata accessor for StartTime;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
  {
    v6 = 1;
    v7 = type metadata accessor for StartTimeEndTime;
LABEL_8:
    sub_1D7080CD4(v4, v7);
  }

  return v6;
}

uint64_t sub_1D7080CD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SportsDataVisualizationResponseEventStatus.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  started = type metadata accessor for StartTimeEndTime(0);
  MEMORY[0x1EEE9AC00](started - 8, v4);
  v67 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v74 = &v64 - v8;
  sub_1D7084368(0, &qword_1EDF03838, sub_1D70815D0, &type metadata for SportsDataVisualizationResponseEventStatus.CodingKeys, MEMORY[0x1E69E6F48]);
  v75 = v9;
  v70 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v64 - v11;
  v69 = type metadata accessor for SportsDataVisualizationResponseEventStatus(0);
  MEMORY[0x1EEE9AC00](v69, v13);
  v72 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v66 = &v64 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v71 = &v64 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v65 = &v64 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v64 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v64 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v64 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v64 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v64 - v42;
  v44 = a1[3];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_1D70815D0();
  v73 = v12;
  v45 = v76;
  sub_1D7264B0C();
  if (!v45)
  {
    v46 = v35;
    v76 = v31;
    v48 = v71;
    v47 = v72;
    v49 = v74;
    sub_1D7081624();
    v50 = v73;
    sub_1D726431C();
    if (LOBYTE(v77[0]) > 4u)
    {
      if (LOBYTE(v77[0]) <= 7u)
      {
        v52 = v68;
        if (LOBYTE(v77[0]) == 5)
        {
          sub_1D5B68374(v78, v77);
          v55 = v48;
          StartTime.init(from:)(v77, v48);
          (*(v70 + 8))(v50, v75);
        }

        else
        {
          v53 = v70;
          v54 = v75;
          if (LOBYTE(v77[0]) != 6)
          {
            sub_1D5B68374(v78, v77);
            StartTime.init(from:)(v77, v47);
            (*(v53 + 8))(v50, v54);
            swift_storeEnumTagMultiPayload();
            v63 = v47;
            goto LABEL_30;
          }

          sub_1D5B68374(v78, v77);
          v55 = v66;
          StartTime.init(from:)(v77, v66);
          (*(v53 + 8))(v50, v54);
        }

        swift_storeEnumTagMultiPayload();
        v63 = v55;
LABEL_30:
        sub_1D7082114(v63, v43, type metadata accessor for SportsDataVisualizationResponseEventStatus);
        goto LABEL_31;
      }

      v52 = v68;
      if (LOBYTE(v77[0]) == 8)
      {
        sub_1D5B68374(v78, v77);
        StartTimeEndTime.init(from:)(v77, v49);
        (*(v70 + 8))(v50, v75);
        sub_1D7082114(v49, v43, type metadata accessor for StartTimeEndTime);
      }

      else
      {
        v57 = v70;
        v58 = v75;
        if (LOBYTE(v77[0]) == 9)
        {
          sub_1D5B68374(v78, v77);
          v59 = v67;
          StartTimeEndTime.init(from:)(v77, v67);
          (*(v57 + 8))(v50, v58);
          sub_1D7082114(v59, v43, type metadata accessor for StartTimeEndTime);
          swift_storeEnumTagMultiPayload();
          v52 = v68;
LABEL_31:
          sub_1D7082114(v43, v52, type metadata accessor for SportsDataVisualizationResponseEventStatus);
          return __swift_destroy_boxed_opaque_existential_1(v78);
        }

        (*(v70 + 8))(v50, v75);
      }

      swift_storeEnumTagMultiPayload();
      goto LABEL_31;
    }

    if (LOBYTE(v77[0]) <= 1u)
    {
      v60 = v68;
      if (LOBYTE(v77[0]))
      {
        sub_1D5B68374(v78, v77);
        StartTime.init(from:)(v77, v46);
        (*(v70 + 8))(v50, v75);
        swift_storeEnumTagMultiPayload();
        v61 = v46;
      }

      else
      {
        sub_1D5B68374(v78, v77);
        StartTime.init(from:)(v77, v39);
        (*(v70 + 8))(v50, v75);
        swift_storeEnumTagMultiPayload();
        v61 = v39;
      }

      sub_1D7082114(v61, v43, type metadata accessor for SportsDataVisualizationResponseEventStatus);
      v52 = v60;
      goto LABEL_31;
    }

    if (LOBYTE(v77[0]) == 2)
    {
      sub_1D5B68374(v78, v77);
      v62 = v76;
      StartTime.init(from:)(v77, v76);
      (*(v70 + 8))(v50, v75);
    }

    else
    {
      if (LOBYTE(v77[0]) == 3)
      {
        sub_1D5B68374(v78, v77);
        StartTime.init(from:)(v77, v27);
        (*(v70 + 8))(v50, v75);
        swift_storeEnumTagMultiPayload();
        v56 = v27;
LABEL_24:
        sub_1D7082114(v56, v43, type metadata accessor for SportsDataVisualizationResponseEventStatus);
        v52 = v68;
        goto LABEL_31;
      }

      sub_1D5B68374(v78, v77);
      v62 = v65;
      StartTime.init(from:)(v77, v65);
      (*(v70 + 8))(v50, v75);
    }

    swift_storeEnumTagMultiPayload();
    v56 = v62;
    goto LABEL_24;
  }

  return __swift_destroy_boxed_opaque_existential_1(v78);
}

unint64_t sub_1D70815D0()
{
  result = qword_1EDF06248;
  if (!qword_1EDF06248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06248);
  }

  return result;
}

unint64_t sub_1D7081624()
{
  result = qword_1EDF06250;
  if (!qword_1EDF06250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06250);
  }

  return result;
}

uint64_t StartTime.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_1D725891C();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v37 = &v29 - v8;
  sub_1D7084368(0, &qword_1EDF037E8, sub_1D708217C, &type metadata for StartTime.CodingKeys, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v29 - v12;
  started = type metadata accessor for StartTime(0);
  MEMORY[0x1EEE9AC00](started, v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D708217C();
  v18 = v38;
  sub_1D7264B0C();
  if (v18)
  {
    v28 = a1;
  }

  else
  {
    v30 = started;
    v31 = v17;
    v38 = a1;
    v19 = v33;
    v21 = v35;
    v20 = v36;
    v40 = 0;
    v22 = v13;
    sub_1D72642FC();
    sub_1D725888C();
    v39 = 1;
    v23 = sub_1D726423C();
    v24 = v31;
    v25 = v32;
    v31[*(v30 + 20)] = v23 & 1;
    v27 = v37;
    sub_1D7083B6C(v37, v23 & 1, v24);
    (*(v21 + 8))(v27, v20);
    (*(v19 + 8))(v22, v10);
    sub_1D7082114(v24, v25, type metadata accessor for StartTime);
    v28 = v38;
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t StartTimeEndTime.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_1D7258C2C();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v50 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B7B750(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v46 = &v39 - v8;
  v9 = sub_1D725891C();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v44 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v47 = &v39 - v14;
  sub_1D7084368(0, &qword_1EDF03E18, sub_1D7084250, &type metadata for StartTimeEndTime.CodingKeys, MEMORY[0x1E69E6F48]);
  v16 = v15;
  v51 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v39 - v18;
  started = type metadata accessor for StartTimeEndTime(0);
  MEMORY[0x1EEE9AC00](started, v21);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7084250();
  v24 = v52;
  sub_1D7264B0C();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = started;
  v27 = v49;
  v26 = v50;
  v52 = v23;
  v28 = v48;
  v55 = 0;
  sub_1D72642FC();
  v41 = v19;
  v29 = v52;
  sub_1D725888C();
  v39 = a1;
  v30 = v29;
  v54 = 1;
  sub_1D726425C();
  v31 = v46;
  v32 = v51;
  if (v33)
  {
    v53 = 1;
    sub_1D5CE4528(&qword_1EDF45B08);
    v34 = v41;
    sub_1D726427C();
    v50 = v16;
    v35 = *(v28 + 48);
    if (v35(v31, 1, v27) == 1)
    {
      sub_1D7258BCC();
      sub_1D725873C();
      (*(v42 + 8))(v26, v43);
      (*(v51 + 8))(v34, v50);
      v36 = v35(v31, 1, v27);
      v38 = v44;
      v37 = v45;
      if (v36 != 1)
      {
        sub_1D70842A4(v31, &qword_1EDF45B00, MEMORY[0x1E6969530]);
      }
    }

    else
    {
      (*(v51 + 8))(v34, v50);
      v38 = v44;
      (*(v28 + 32))(v44, v31, v27);
      v37 = v45;
    }

    v30 = v52;
    (*(v28 + 32))(&v52[*(v40 + 20)], v38, v27);
  }

  else
  {
    sub_1D725888C();
    (*(v32 + 8))(v41, v16);
    v37 = v45;
  }

  sub_1D7084300(v30, v37, type metadata accessor for StartTimeEndTime);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_1D7080CD4(v30, type metadata accessor for StartTimeEndTime);
}

uint64_t sub_1D7082114(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D708217C()
{
  result = qword_1EDF05920;
  if (!qword_1EDF05920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05920);
  }

  return result;
}

uint64_t SportsDataVisualizationResponseEventStatus.encode(to:)(void *a1)
{
  started = type metadata accessor for StartTimeEndTime(0);
  MEMORY[0x1EEE9AC00](started - 8, v3);
  v110 = v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v109 = v105 - v7;
  v8 = MEMORY[0x1E69E6F58];
  sub_1D7084368(0, &qword_1EDF02488, sub_1D708217C, &type metadata for StartTime.CodingKeys, MEMORY[0x1E69E6F58]);
  v10 = *(v9 - 8);
  v112 = v9;
  v113 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v105[2] = v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v105[1] = v105 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v105[0] = v105 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v123 = v105 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v122 = v105 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v121 = v105 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v120 = v105 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v119 = v105 - v33;
  v111 = type metadata accessor for StartTime(0);
  MEMORY[0x1EEE9AC00](v111, v34);
  v108 = v105 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v107 = v105 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v106 = v105 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v118 = v105 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v117 = v105 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v116 = v105 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v115 = v105 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = v105 - v56;
  v58 = type metadata accessor for SportsDataVisualizationResponseEventStatus(0);
  MEMORY[0x1EEE9AC00](v58, v59);
  v61 = v105 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7084368(0, &qword_1EDF024A0, sub_1D70815D0, &type metadata for SportsDataVisualizationResponseEventStatus.CodingKeys, v8);
  v63 = v62;
  v124 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v64);
  v66 = v105 - v65;
  v67 = a1[3];
  v114 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v67);
  sub_1D70815D0();
  v126 = v66;
  sub_1D7264B5C();
  sub_1D7084300(v125, v61, type metadata accessor for SportsDataVisualizationResponseEventStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      v69 = v63;
      if (EnumCaseMultiPayload == 5)
      {
        v71 = v106;
        sub_1D7082114(v61, v106, type metadata accessor for StartTime);
        v70 = v126;
        v94 = v127;
        sub_1D72643FC();
        if (!v94)
        {
          __swift_project_boxed_opaque_existential_1(v114, v114[3]);
          sub_1D708217C();
          v73 = &v129;
          goto LABEL_39;
        }
      }

      else
      {
        v70 = v126;
        if (EnumCaseMultiPayload == 6)
        {
          v71 = v107;
          sub_1D7082114(v61, v107, type metadata accessor for StartTime);
          v72 = v127;
          sub_1D72643FC();
          if (!v72)
          {
            __swift_project_boxed_opaque_existential_1(v114, v114[3]);
            sub_1D708217C();
            v73 = &v130;
LABEL_39:
            v75 = *(v73 - 32);
            goto LABEL_40;
          }
        }

        else
        {
          v71 = v108;
          sub_1D7082114(v61, v108, type metadata accessor for StartTime);
          v102 = v127;
          sub_1D72643FC();
          if (!v102)
          {
            __swift_project_boxed_opaque_existential_1(v114, v114[3]);
            sub_1D708217C();
            v73 = &v131;
            goto LABEL_39;
          }
        }
      }

LABEL_44:
      v83 = v71;
LABEL_45:
      sub_1D7080CD4(v83, type metadata accessor for StartTime);
      return (*(v124 + 8))(v70, v69);
    }

    v79 = v63;
    if (EnumCaseMultiPayload == 8)
    {
      v95 = v109;
      sub_1D7082114(v61, v109, type metadata accessor for StartTimeEndTime);
      v97 = v126;
      v96 = v127;
      sub_1D72643FC();
      if (!v96)
      {
        StartTimeEndTime.encode(to:)(v114);
      }

      sub_1D7080CD4(v95, type metadata accessor for StartTimeEndTime);
      v98 = *(v124 + 8);
      v99 = v97;
    }

    else
    {
      v84 = v126;
      if (EnumCaseMultiPayload == 9)
      {
        v85 = v61;
        v86 = v110;
        sub_1D7082114(v85, v110, type metadata accessor for StartTimeEndTime);
        v87 = v127;
        sub_1D72643FC();
        if (!v87)
        {
          StartTimeEndTime.encode(to:)(v114);
        }

        sub_1D7080CD4(v86, type metadata accessor for StartTimeEndTime);
      }

      else
      {
        sub_1D72643FC();
      }

      v98 = *(v124 + 8);
      v99 = v84;
    }

    return v98(v99, v79);
  }

  v74 = v119;
  v75 = v120;
  v77 = v121;
  v76 = v122;
  v78 = v123;
  if (EnumCaseMultiPayload <= 1)
  {
    v69 = v63;
    if (EnumCaseMultiPayload)
    {
      v71 = v115;
      sub_1D7082114(v61, v115, type metadata accessor for StartTime);
      v70 = v126;
      v101 = v127;
      sub_1D72643FC();
      if (!v101)
      {
        __swift_project_boxed_opaque_existential_1(v114, v114[3]);
        sub_1D708217C();
LABEL_40:
        sub_1D7264B5C();
        v128 = 0;
        sub_1D725891C();
        sub_1D5CE4528(&qword_1EDF45B18);
        v103 = v112;
        goto LABEL_41;
      }

      goto LABEL_44;
    }

    sub_1D7082114(v61, v57, type metadata accessor for StartTime);
    v89 = v126;
    v88 = v127;
    sub_1D72643FC();
    if (!v88)
    {
      __swift_project_boxed_opaque_existential_1(v114, v114[3]);
      sub_1D708217C();
      sub_1D7264B5C();
      v128 = 0;
      sub_1D725891C();
      sub_1D5CE4528(&qword_1EDF45B18);
      v90 = v112;
      sub_1D726443C();
      v128 = 1;
      sub_1D726440C();
      (*(v113 + 8))(v74, v90);
    }

    sub_1D7080CD4(v57, type metadata accessor for StartTime);
    return (*(v124 + 8))(v89, v63);
  }

  else
  {
    v79 = v63;
    if (EnumCaseMultiPayload == 2)
    {
      v71 = v116;
      sub_1D7082114(v61, v116, type metadata accessor for StartTime);
      v70 = v126;
      v92 = v127;
      sub_1D72643FC();
      if (!v92)
      {
        v69 = v63;
        __swift_project_boxed_opaque_existential_1(v114, v114[3]);
        sub_1D708217C();
        v75 = v77;
        sub_1D7264B5C();
        v128 = 0;
        sub_1D725891C();
        sub_1D5CE4528(&qword_1EDF45B18);
        v103 = v112;
LABEL_41:
        sub_1D726443C();
        v128 = 1;
        sub_1D726440C();
        (*(v113 + 8))(v75, v103);
        goto LABEL_44;
      }

      v93 = v71;
      goto LABEL_34;
    }

    v70 = v126;
    if (EnumCaseMultiPayload == 3)
    {
      v80 = v117;
      sub_1D7082114(v61, v117, type metadata accessor for StartTime);
      v81 = v127;
      sub_1D72643FC();
      if (!v81)
      {
        v69 = v63;
        __swift_project_boxed_opaque_existential_1(v114, v114[3]);
        sub_1D708217C();
        sub_1D7264B5C();
        v128 = 0;
        sub_1D725891C();
        sub_1D5CE4528(&qword_1EDF45B18);
        v82 = v112;
        sub_1D726443C();
        v128 = 1;
        sub_1D726440C();
        (*(v113 + 8))(v76, v82);
        v83 = v80;
        goto LABEL_45;
      }

      goto LABEL_33;
    }

    v80 = v118;
    sub_1D7082114(v61, v118, type metadata accessor for StartTime);
    v100 = v127;
    sub_1D72643FC();
    if (v100)
    {
LABEL_33:
      v93 = v80;
LABEL_34:
      sub_1D7080CD4(v93, type metadata accessor for StartTime);
      v98 = *(v124 + 8);
      v99 = v70;
      return v98(v99, v79);
    }

    __swift_project_boxed_opaque_existential_1(v114, v114[3]);
    sub_1D708217C();
    sub_1D7264B5C();
    v128 = 0;
    sub_1D725891C();
    sub_1D5CE4528(&qword_1EDF45B18);
    v104 = v112;
    sub_1D726443C();
    v128 = 1;
    sub_1D726440C();
    (*(v113 + 8))(v78, v104);
    sub_1D7080CD4(v80, type metadata accessor for StartTime);
    return (*(v124 + 8))(v70, v63);
  }
}

uint64_t sub_1D70830D8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x656D6147657250;
    v7 = 0x6572676F72506E49;
    v8 = 0x6B61657242;
    if (a1 != 3)
    {
      v8 = 0x656E6F7074736F50;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6576694C7261654ELL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6C616E6946;
    v2 = 0x74696566726F46;
    if (a1 != 9)
    {
      v2 = 0x6E776F6E6B6E55;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x65646E6570737553;
    v4 = 0x656C6C65636E6143;
    if (a1 != 6)
    {
      v4 = 0x646579616C6544;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t StartTime.encode(to:)(void *a1)
{
  sub_1D7084368(0, &qword_1EDF02488, sub_1D708217C, &type metadata for StartTime.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D708217C();
  sub_1D7264B5C();
  v12 = 0;
  sub_1D725891C();
  sub_1D5CE4528(&qword_1EDF45B18);
  sub_1D726443C();
  if (!v1)
  {
    type metadata accessor for StartTime(0);
    v11 = 1;
    sub_1D726440C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t StartTimeEndTime.encode(to:)(void *a1)
{
  sub_1D7084368(0, &qword_1EDF037E0, sub_1D7084250, &type metadata for StartTimeEndTime.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7084250();
  sub_1D7264B5C();
  v12 = 0;
  sub_1D725891C();
  sub_1D5CE4528(&qword_1EDF45B18);
  sub_1D726443C();
  if (!v1)
  {
    type metadata accessor for StartTimeEndTime(0);
    v11 = 1;
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D7083620()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D7083684()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D70836D0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D7083750@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D70837A8(uint64_t a1)
{
  v2 = sub_1D70815D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70837E4(uint64_t a1)
{
  v2 = sub_1D70815D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7083820(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1D70830D8(*a1);
  v5 = v4;
  if (v3 == sub_1D70830D8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D70838A8()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D70830D8(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D708390C()
{
  sub_1D70830D8(*v0);
  sub_1D72621EC();
}

uint64_t sub_1D7083960()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D70830D8(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D70839C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7084E10();
  *a1 = result;
  return result;
}

uint64_t sub_1D70839F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D70830D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t StartTime.init(startTime:isTbd:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1D7083B6C(a1, a2, a3);
  v6 = sub_1D725891C();
  (*(*(v6 - 8) + 8))(a1, v6);
  result = type metadata accessor for StartTime(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1D7083B6C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v64 = a1;
  sub_1D5B7B750(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v61 = &v55 - v6;
  sub_1D5B7B750(0, &qword_1EDF18A38, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v62 = &v55 - v9;
  v10 = sub_1D7258C2C();
  v58 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7257DEC();
  v59 = *(v14 - 8);
  v60 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v55 - v20;
  sub_1D5B7B750(0, &qword_1EDF43B40, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v55 - v28;
  v30 = sub_1D7258CFC();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = &v55 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v35 = v64;
    sub_1D7258CBC();
    if ((*(v31 + 48))(v29, 1, v30) == 1)
    {
      sub_1D70842A4(v29, &qword_1EDF43B40, MEMORY[0x1E6969BC0]);
      v36 = sub_1D725891C();
      return (*(*(v36 - 8) + 16))(v63, v35, v36);
    }

    else
    {
      (*(v31 + 32))(v34, v29, v30);
      sub_1D7258BCC();
      sub_1D7258B1C();
      v43 = v58;
      v57 = v17;
      v44 = *(v58 + 8);
      v44(v13, v10);
      v56 = v31;
      v45 = v62;
      sub_1D7258BCC();
      (*(v43 + 56))(v45, 0, 1, v10);
      sub_1D7258BCC();
      sub_1D7258BEC();
      v44(v13, v10);
      v46 = v56;
      (*(v56 + 56))(v25, 0, 1, v30);
      sub_1D7257D7C();
      sub_1D7257D8C();
      sub_1D7257D2C();
      v47 = v57;
      sub_1D7257DDC();
      v48 = v61;
      sub_1D7257D4C();
      v49 = *(v59 + 8);
      v50 = v47;
      v51 = v60;
      v49(v50, v60);
      v49(v21, v51);
      (*(v46 + 8))(v34, v30);
      v52 = sub_1D725891C();
      v53 = *(v52 - 8);
      v54 = *(v53 + 48);
      if (v54(v48, 1, v52) == 1)
      {
        (*(v53 + 16))(v63, v64, v52);
        result = v54(v48, 1, v52);
        if (result != 1)
        {
          return sub_1D70842A4(v48, &qword_1EDF45B00, MEMORY[0x1E6969530]);
        }
      }

      else
      {
        return (*(v53 + 32))(v63, v48, v52);
      }
    }
  }

  else
  {
    v38 = sub_1D725891C();
    v39 = *(*(v38 - 8) + 16);
    v40 = v38;
    v41 = v63;
    v42 = v64;

    return v39(v41, v42, v40);
  }

  return result;
}

unint64_t sub_1D7084250()
{
  result = qword_1EDF166B0;
  if (!qword_1EDF166B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF166B0);
  }

  return result;
}

uint64_t sub_1D70842A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B7B750(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7084300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7084368(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D70843D0()
{
  if (*v0)
  {
    return 0x6462547369;
  }

  else
  {
    return 0x6D69547472617473;
  }
}

uint64_t sub_1D708440C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6462547369 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D70844EC(uint64_t a1)
{
  v2 = sub_1D708217C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7084528(uint64_t a1)
{
  v2 = sub_1D708217C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7084598@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D725891C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StartTimeEndTime.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StartTimeEndTime(0) + 20);
  v4 = sub_1D725891C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StartTimeEndTime.init(startTime:endTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D725891C();
  v9 = *(*(v6 - 8) + 32);
  (v9)((v6 - 8), a3, a1, v6);
  v7 = a3 + *(type metadata accessor for StartTimeEndTime(0) + 20);

  return v9(v7, a2, v6);
}

uint64_t sub_1D7084730(uint64_t a1)
{
  v2 = sub_1D7084250();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D708476C(uint64_t a1)
{
  v2 = sub_1D7084250();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D70847D8()
{
  sub_1D7084890(319, &qword_1EDF05928, type metadata accessor for StartTime);
  if (v0 <= 0x3F)
  {
    sub_1D7084890(319, &qword_1EDF16698, type metadata accessor for StartTimeEndTime);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D7084890(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7084904()
{
  result = sub_1D725891C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D70849A0()
{
  result = sub_1D725891C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D7084A50()
{
  result = qword_1EC899C70;
  if (!qword_1EC899C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899C70);
  }

  return result;
}

unint64_t sub_1D7084AA8()
{
  result = qword_1EC899C78;
  if (!qword_1EC899C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899C78);
  }

  return result;
}

unint64_t sub_1D7084B00()
{
  result = qword_1EC899C80;
  if (!qword_1EC899C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899C80);
  }

  return result;
}

unint64_t sub_1D7084B58()
{
  result = qword_1EC899C88;
  if (!qword_1EC899C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899C88);
  }

  return result;
}

unint64_t sub_1D7084BB0()
{
  result = qword_1EDF166A0;
  if (!qword_1EDF166A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF166A0);
  }

  return result;
}

unint64_t sub_1D7084C08()
{
  result = qword_1EDF166A8;
  if (!qword_1EDF166A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF166A8);
  }

  return result;
}

unint64_t sub_1D7084C60()
{
  result = qword_1EDF05910;
  if (!qword_1EDF05910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05910);
  }

  return result;
}

unint64_t sub_1D7084CB8()
{
  result = qword_1EDF05918;
  if (!qword_1EDF05918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05918);
  }

  return result;
}

unint64_t sub_1D7084D10()
{
  result = qword_1EDF06238;
  if (!qword_1EDF06238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06238);
  }

  return result;
}

unint64_t sub_1D7084D68()
{
  result = qword_1EDF06240;
  if (!qword_1EDF06240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06240);
  }

  return result;
}

unint64_t sub_1D7084DBC()
{
  result = qword_1EDF06258;
  if (!qword_1EDF06258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06258);
  }

  return result;
}

uint64_t sub_1D7084E10()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

BOOL static FormatSourceMap.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v5)
    {
      return 0;
    }

    return v3 == v4;
  }

  v7 = sub_1D72646CC();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v5)
  {
    return v3 == v4;
  }

  return result;
}

uint64_t FormatSourceMap.description.getter()
{
  MEMORY[0x1DA6F9910](*v0, v0[1]);
  MEMORY[0x1DA6F9910](58, 0xE100000000000000);
  v1 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v1);

  return 47;
}

uint64_t static FormatSourceMap.< infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {
    if (v2 == v4)
    {
      return v3 < v5;
    }

    else
    {
      return v2 < v4;
    }
  }

  else
  {

    return sub_1D72646CC();
  }
}

uint64_t FormatSourceMap.filePath.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatSourceMap.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](v1);
  return MEMORY[0x1DA6FC0B0](v2);
}

uint64_t FormatSourceMap.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D7264A0C();
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](v1);
  MEMORY[0x1DA6FC0B0](v2);
  return sub_1D7264A5C();
}

BOOL sub_1D7085168(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v5)
    {
      return 0;
    }

    return v3 == v4;
  }

  v7 = sub_1D72646CC();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v5)
  {
    return v3 == v4;
  }

  return result;
}

uint64_t sub_1D70851EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D7264A0C();
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](v1);
  MEMORY[0x1DA6FC0B0](v2);
  return sub_1D7264A5C();
}

uint64_t sub_1D7085264()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](v1);
  return MEMORY[0x1DA6FC0B0](v2);
}

uint64_t sub_1D70852AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D7264A0C();
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](v1);
  MEMORY[0x1DA6FC0B0](v2);
  return sub_1D7264A5C();
}

unint64_t sub_1D7085320(uint64_t a1)
{
  result = sub_1D7085348();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7085348()
{
  result = qword_1EC899C90;
  if (!qword_1EC899C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899C90);
  }

  return result;
}

unint64_t sub_1D708539C()
{
  result = qword_1EC899C98;
  if (!qword_1EC899C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899C98);
  }

  return result;
}

unint64_t sub_1D70853F0(void *a1)
{
  a1[1] = sub_1D61E52C4();
  a1[2] = sub_1D6C4F274();
  result = sub_1D708539C();
  a1[3] = result;
  return result;
}

uint64_t sub_1D7085458()
{
  MEMORY[0x1DA6F9910](*v0, v0[1]);
  MEMORY[0x1DA6F9910](58, 0xE100000000000000);
  v1 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v1);

  return 47;
}

uint64_t FormatAdMetricsNodeLayoutAttributes.__allocating_init(identifier:layoutIdentifier:nodeIdentifier:frame:resizing:zIndex:visibility:isUserInteractionEnabled:privacyMarkerFrameIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t *a13, char a14, uint64_t a15, uint64_t a16)
{
  result = swift_allocObject();
  v26 = *a7;
  v27 = *a13;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a9;
  *(result + 72) = a10;
  *(result + 80) = a11;
  *(result + 88) = a12;
  *(result + 96) = v26;
  *(result + 104) = a8;
  *(result + 112) = v27;
  *(result + 120) = a14;
  *(result + 128) = a15;
  *(result + 136) = a16;
  return result;
}

uint64_t FormatAdMetricsNodeLayoutAttributes.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatAdMetricsNodeLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatAdMetricsNodeLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

unint64_t FormatAdMetricsNodeLayoutAttributes.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

uint64_t FormatAdMetricsNodeLayoutAttributes.privacyMarkerFrameIdentifier.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t FormatAdMetricsNodeLayoutAttributes.init(identifier:layoutIdentifier:nodeIdentifier:frame:resizing:zIndex:visibility:isUserInteractionEnabled:privacyMarkerFrameIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t *a13, char a14, uint64_t a15, uint64_t a16)
{
  v17 = *a7;
  v18 = *a13;
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  *(v16 + 56) = a6;
  *(v16 + 64) = a9;
  *(v16 + 72) = a10;
  *(v16 + 80) = a11;
  *(v16 + 88) = a12;
  *(v16 + 96) = v17;
  *(v16 + 104) = a8;
  *(v16 + 112) = v18;
  *(v16 + 120) = a14;
  *(v16 + 128) = a15;
  *(v16 + 136) = a16;
  return v16;
}

unint64_t sub_1D708578C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x696669746E656469;
    v6 = 0x6E65644965646F6ELL;
    if (a1 != 2)
    {
      v6 = 0x656D617266;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x696C696269736976;
    v2 = 0xD00000000000001CLL;
    if (a1 == 7)
    {
      v2 = 0xD000000000000018;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x676E697A69736572;
    if (a1 != 4)
    {
      v3 = 0x7865646E497ALL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D70858C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7086734(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D70858EC(uint64_t a1)
{
  v2 = sub_1D7085D54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7085928(uint64_t a1)
{
  v2 = sub_1D7085D54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatAdMetricsNodeLayoutAttributes.deinit()
{

  sub_1D5EB15C4(*(v0 + 112));

  return v0;
}

uint64_t FormatAdMetricsNodeLayoutAttributes.__deallocating_deinit()
{

  sub_1D5EB15C4(*(v0 + 112));

  return swift_deallocClassInstance();
}

uint64_t FormatAdMetricsNodeLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D70862E0(0, &qword_1EC899CA0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7085D54();
  sub_1D7264B5C();
  LOBYTE(v15) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_1D72643FC();
    LOBYTE(v15) = 2;
    sub_1D72643FC();
    swift_beginAccess();
    v12 = *(v3 + 80);
    v15 = *(v3 + 64);
    v16 = v12;
    v14 = 3;
    type metadata accessor for CGRect(0);
    sub_1D7086A20(&qword_1EC8801E8, 255, type metadata accessor for CGRect);
    sub_1D726443C();
    *&v15 = *(v3 + 96);
    v14 = 4;
    sub_1D5F8F3E0();

    sub_1D72643BC();

    LOBYTE(v15) = 5;
    sub_1D726442C();
    *&v15 = *(v3 + 112);
    v14 = 6;
    sub_1D5EB1500(v15);
    sub_1D5DF6A60();
    sub_1D726443C();
    sub_1D5EB15C4(v15);
    LOBYTE(v15) = 7;
    sub_1D726440C();
    LOBYTE(v15) = 8;
    sub_1D726437C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D7085D54()
{
  result = qword_1EC899CA8;
  if (!qword_1EC899CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899CA8);
  }

  return result;
}

uint64_t FormatAdMetricsNodeLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatAdMetricsNodeLayoutAttributes.init(from:)(a1);
  return v2;
}

uint64_t FormatAdMetricsNodeLayoutAttributes.init(from:)(void *a1)
{
  v3 = v1;
  sub_1D70862E0(0, &qword_1EC899CB0, MEMORY[0x1E69E6F48]);
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7085D54();
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v1;
  }

  else
  {
    v28 = a1;
    v10 = v29;
    v9 = v30;
    LOBYTE(v31) = 0;
    v11 = v8;
    *(v3 + 16) = sub_1D72642BC();
    *(v3 + 24) = v12;
    v27 = v3;
    LOBYTE(v31) = 1;
    v13 = sub_1D72642BC();
    v14 = v27;
    *(v27 + 32) = v13;
    *(v14 + 40) = v15;
    LOBYTE(v31) = 2;
    v16 = sub_1D72642BC();
    v17 = v27;
    *(v27 + 48) = v16;
    *(v17 + 56) = v18;
    type metadata accessor for CGRect(0);
    v33 = 3;
    sub_1D7086A20(&qword_1EDF1A740, 255, type metadata accessor for CGRect);
    sub_1D726431C();
    v19 = v32;
    v20 = v27;
    *(v27 + 64) = v31;
    *(v20 + 80) = v19;
    v33 = 4;
    sub_1D5F8FC50();
    sub_1D726427C();
    *(v27 + 96) = v31;
    LOBYTE(v31) = 5;
    *(v27 + 104) = sub_1D72642FC();
    v33 = 6;
    sub_1D5DF6A0C();
    sub_1D726431C();
    *(v27 + 112) = v31;
    LOBYTE(v31) = 7;
    *(v27 + 120) = sub_1D72642CC() & 1;
    LOBYTE(v31) = 8;
    v21 = sub_1D726422C();
    v23 = v22;
    (*(v10 + 8))(v11, v9);
    v25 = v27;
    v24 = v28;
    *(v27 + 128) = v21;
    *(v25 + 136) = v23;
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v25;
  }
}

void sub_1D70862E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7085D54();
    v7 = a3(a1, &type metadata for FormatAdMetricsNodeLayoutAttributes.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D7086488@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatAdMetricsNodeLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D7086504(uint64_t a1, uint64_t a2)
{
  sub_1D7086A20(&qword_1EC8940D8, a2, type metadata accessor for FormatAdMetricsNodeLayoutAttributes);

  return sub_1D725A24C();
}

unint64_t sub_1D7086630()
{
  result = qword_1EC899CC8;
  if (!qword_1EC899CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899CC8);
  }

  return result;
}

unint64_t sub_1D7086688()
{
  result = qword_1EC899CD0;
  if (!qword_1EC899CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899CD0);
  }

  return result;
}

unint64_t sub_1D70866E0()
{
  result = qword_1EC899CD8;
  if (!qword_1EC899CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899CD8);
  }

  return result;
}

uint64_t sub_1D7086734(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C05F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644965646F6ELL && a2 == 0xEE00726569666974 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D617266 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E697A69736572 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7865646E497ALL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73C48A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D73B7660 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D7086A20(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D7086A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7088690();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v44 = &v38 - v9;
  if (*(a1 + 8) == 4)
  {
    v10 = sub_1D72618CC();
    v11 = sub_1D726188C();
    KeyPath = swift_getKeyPath();
    *&v51 = v10;
    *(&v51 + 1) = KeyPath;
    *v52 = v11;
    v52[8] = 0;
  }

  else
  {
    v13 = sub_1D72618CC();
    v14 = sub_1D726188C();
    v15 = swift_getKeyPath();
    *&v51 = v13;
    *(&v51 + 1) = v15;
    *v52 = v14;
    v52[8] = 1;
  }

  sub_1D708897C(0, &qword_1EC87E040, &qword_1EC87E048, &qword_1EC87E050, MEMORY[0x1E69815C0]);
  sub_1D61ABEFC();
  sub_1D726135C();
  v38 = v54;
  v39 = v53;
  v16 = v54;
  v41 = *v55;
  v40 = v55[8];
  sub_1D70758AC();
  v47 = sub_1D726125C();
  LOBYTE(v53) = 1;
  sub_1D7086F80(a1, v50);
  *&v49[7] = v50[0];
  *&v49[23] = v50[1];
  *&v49[39] = v50[2];
  *&v49[55] = v50[3];
  v46 = v53;
  v59 = *(a1 + 72);
  *&v51 = v59;
  swift_getKeyPath();
  v17 = swift_allocObject();
  v18 = *(a1 + 48);
  v17[3] = *(a1 + 32);
  v17[4] = v18;
  v17[5] = *(a1 + 64);
  v19 = *(a1 + 16);
  v17[1] = *a1;
  v17[2] = v19;
  sub_1D7088F48(&v59, &v53);
  sub_1D7088FD0(a1, &v53);
  sub_1D5B49DF8(0, &qword_1EC896C88, &type metadata for DebugFormatPackageViewAccessory, MEMORY[0x1E69E62F8]);
  sub_1D708874C();
  sub_1D7088C80();
  sub_1D7089008();
  v20 = v44;
  sub_1D72619DC();
  v48 = 1;
  v22 = v42;
  v21 = v43;
  v23 = *(v42 + 16);
  v23(v45, v20, v43);
  v24 = *&v49[16];
  *&v52[1] = *v49;
  v25 = *&v49[32];
  *&v52[49] = *&v49[48];
  v26 = v39;
  *a2 = v39;
  *(a2 + 8) = v16;
  v27 = v41;
  *(a2 + 16) = v41;
  LOBYTE(v16) = v40;
  *(a2 + 24) = v40;
  v51 = v47;
  v52[0] = v46;
  *&v52[33] = v25;
  *&v52[17] = v24;
  v28 = *&v49[63];
  *&v52[64] = *&v49[63];
  v29 = *&v52[32];
  *(a2 + 64) = *&v52[16];
  *(a2 + 80) = v29;
  *(a2 + 96) = *&v52[48];
  v30 = *v52;
  *(a2 + 32) = v51;
  *(a2 + 48) = v30;
  v31 = v48;
  *(a2 + 112) = v28;
  *(a2 + 120) = 0;
  *(a2 + 128) = v31;
  sub_1D7088500();
  v33 = (a2 + *(v32 + 80));
  v34 = v45;
  v23(v33, v45, v21);
  v35 = v38;
  sub_1D7089324(v26, v38, v27, v16);
  sub_1D708933C(&v51, &v53, sub_1D5F258D0);
  sub_1D7075968();
  v36 = *(v22 + 8);
  v36(v44, v21);
  v36(v34, v21);
  v53 = v47;
  v54 = 0;
  v55[0] = v46;
  v56 = *&v49[16];
  v57 = *&v49[32];
  *v58 = *&v49[48];
  *&v58[15] = *&v49[63];
  *&v55[1] = *v49;
  sub_1D7089404(&v53, sub_1D5F258D0);
  return sub_1D70893A4(v26, v35, v27, v16);
}

uint64_t sub_1D7086F80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  sub_1D70885C0(0, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v52 - v5;
  v52[0] = a1;
  v7 = *(a1 + 56);
  v62 = *(a1 + 48);
  v63 = v7;
  v8 = sub_1D5BF4D9C();

  v55 = v8;
  v9 = sub_1D726171C();
  v11 = v10;
  v13 = v12;
  v14 = sub_1D726163C();
  v15 = *(v14 - 8);
  v53 = *(v15 + 56);
  v54 = v14;
  v52[1] = v15 + 56;
  v53(v6, 1, 1);
  sub_1D726167C();
  sub_1D6155640(v6);
  v16 = sub_1D72616DC();
  v18 = v17;
  LOBYTE(v8) = v19;

  sub_1D5F26348(v9, v11, v13 & 1);

  sub_1D726187C();
  v57 = sub_1D72616BC();
  v58 = v20;
  v22 = v21;
  v56 = v23;

  sub_1D5F26348(v16, v18, v8 & 1);

  if (*(v52[0] + 40))
  {
    v24 = *(v52[0] + 32);
    v25 = *(v52[0] + 40);
  }

  else
  {
    v24 = *(v52[0] + 16);
    v25 = *(v52[0] + 24);
  }

  v62 = v24;
  v63 = v25;

  v26 = sub_1D726171C();
  v28 = v27;
  v30 = v29;
  (v53)(v6, 1, 1, v54);
  sub_1D726167C();
  sub_1D6155640(v6);
  v31 = sub_1D72616DC();
  v33 = v32;
  v35 = v34;

  sub_1D5F26348(v26, v28, v30 & 1);

  v36 = sub_1D72616AC();
  v38 = v37;
  v40 = v39;
  sub_1D5F26348(v31, v33, v35 & 1);

  sub_1D726188C();
  v41 = sub_1D72616BC();
  v43 = v42;
  LOBYTE(v33) = v44;
  v46 = v45;

  sub_1D5F26348(v36, v38, v40 & 1);

  v47 = v56 & 1;
  v60 = v56 & 1;
  LOBYTE(v62) = v56 & 1;
  LOBYTE(v36) = v33 & 1;
  v61 = v33 & 1;
  v49 = v58;
  v48 = v59;
  v50 = v57;
  *v59 = v57;
  v48[1] = v22;
  *(v48 + 16) = v47;
  v48[3] = v49;
  v48[4] = v41;
  v48[5] = v43;
  *(v48 + 48) = v36;
  v48[7] = v46;
  sub_1D5F26358(v50, v22, v47);

  sub_1D5F26358(v41, v43, v36);

  sub_1D5F26348(v41, v43, v36);

  sub_1D5F26348(v50, v22, v60);
}

double sub_1D7087374@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1D70885C0(0, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v79 - v8;
  v10 = *a1;
  v11 = *(a1 + 8);
  v84 = a3;
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      LOBYTE(v101) = 0;

      sub_1D72618EC();
      v81 = v106;
      v83 = *(&v106 + 1);
      type metadata accessor for DebugFormatFileTreeModel();
      swift_allocObject();

      v82 = sub_1D6AD49E0(v23, v10, 0);

      sub_1D726121C();
      v24 = sub_1D726170C();
      v26 = v25;
      v28 = v27;
      sub_1D726166C();
      v29 = sub_1D726163C();
      (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
      sub_1D726167C();
      sub_1D6155640(v9);
      v30 = sub_1D72616DC();
      v32 = v31;
      v34 = v33;

      sub_1D5F26348(v24, v26, v28 & 1);

      v35 = [objc_opt_self() systemBlueColor];
      sub_1D726189C();
      v36 = sub_1D72616BC();
      v38 = v37;
      v40 = v39;
      v42 = v41;

      sub_1D5F26348(v30, v32, v34 & 1);

      *&v109[8] = v85;
      v40 &= 1u;
      v98 = v40;
      v95 = 1;
      *&v106 = v82;
      *(&v106 + 1) = v36;
      v80 = v36;
      *&v107 = v38;
      BYTE8(v107) = v40;
      *(&v107 + 9) = v97[0];
      HIDWORD(v107) = *(v97 + 3);
      *&v108 = v42;
      BYTE8(v108) = v81;
      *(&v108 + 9) = v96[0];
      HIDWORD(v108) = *(v96 + 3);
      *v109 = v83;
      *&v109[24] = v86;
      v109[40] = 1;

      sub_1D5F26358(v36, v38, v40);
      sub_1D7088878();
      sub_1D7088C28();
      sub_1D70892DC(&qword_1EC899D98, sub_1D7088878);
      sub_1D70892DC(&qword_1EC899DA8, sub_1D7088C28);

      a3 = v84;
      sub_1D726135C();
      v108 = v103;
      *v109 = v104;
      *&v109[16] = v105[0];
      *&v109[25] = *(v105 + 9);
      v106 = v101;
      v107 = v102;
      v99 = 1;
      v109[41] = 1;
      sub_1D70887F0();
      sub_1D7088BE0(0);
      sub_1D708914C();
      sub_1D70891FC();
      sub_1D726135C();
      v108 = v93[0];
      *v109 = v93[1];
      *&v109[16] = v94[0];
      *&v109[26] = *(v94 + 10);
      v106 = v91;
      v107 = v92;
      v100 = 0;
      v109[42] = 0;
      sub_1D7088CFC(0, &qword_1EC899D10, sub_1D70887F0, sub_1D7088BE0, MEMORY[0x1E697F960]);
      sub_1D7089088();
      sub_1D726135C();

      sub_1D5F26348(v80, v38, v40);

      v108 = v103;
      *v109 = v104;
      *&v109[16] = v105[0];
      v43 = *(v105 + 11);
    }

    else
    {
      if (v10)
      {
        sub_1D726121C();
        v54 = sub_1D726170C();
        v56 = v55;
        v58 = v57;
        sub_1D726166C();
        v59 = sub_1D726163C();
        (*(*(v59 - 8) + 56))(v9, 1, 1, v59);
        sub_1D726167C();
        sub_1D6155640(v9);
        v60 = sub_1D72616DC();
        v62 = v61;
        v64 = v63;

        sub_1D5F26348(v54, v56, v58 & 1);

        v65 = [objc_opt_self() systemOrangeColor];
        sub_1D726189C();
        v66 = sub_1D72616BC();
        v68 = v67;
        LOBYTE(v56) = v69;
        v71 = v70;

        sub_1D5F26348(v60, v62, v64 & 1);

        v72 = v56 & 1;
        a3 = v84;
        LOBYTE(v97[0]) = v72;
        LOBYTE(v96[0]) = 1;
        *&v101 = v66;
        *(&v101 + 1) = v68;
        LOBYTE(v102) = v72;
        *(&v102 + 1) = v85;
        DWORD1(v102) = *(&v85 + 3);
        *(&v102 + 1) = v71;
        v103 = v91;
        v104 = v92;
        v105[0] = v93[0];
        *(v105 + 10) = *(v93 + 10);
        BYTE10(v105[1]) = 1;
        sub_1D7088CFC(0, &qword_1EC899D10, sub_1D70887F0, sub_1D7088BE0, MEMORY[0x1E697F960]);
        sub_1D7089088();
        sub_1D726135C();
        goto LABEL_12;
      }

      v73 = sub_1D72618CC();
      v74 = sub_1D726188C();
      KeyPath = swift_getKeyPath();
      LOBYTE(v96[0]) = 0;
      *&v106 = v73;
      *(&v106 + 1) = KeyPath;
      *&v107 = v74;
      v109[40] = 0;
      sub_1D708897C(0, &qword_1EC87E040, &qword_1EC87E048, &qword_1EC87E050, MEMORY[0x1E69815C0]);
      sub_1D7088878();
      sub_1D61ABEFC();
      sub_1D70892DC(&qword_1EC899D98, sub_1D7088878);

      sub_1D726135C();
      v108 = v103;
      *v109 = v104;
      *&v109[16] = v105[0];
      *&v109[25] = *(v105 + 9);
      v106 = v101;
      v107 = v102;
      LOBYTE(v97[0]) = 0;
      v109[41] = 0;
      sub_1D70887F0();
      sub_1D7088BE0(0);
      sub_1D708914C();
      sub_1D70891FC();
      sub_1D726135C();
      v108 = v93[0];
      *v109 = v93[1];
      *&v109[16] = v94[0];
      *&v109[26] = *(v94 + 10);
      v106 = v91;
      v107 = v92;
      LOBYTE(v85) = 0;
      v109[42] = 0;
      sub_1D7088CFC(0, &qword_1EC899D10, sub_1D70887F0, sub_1D7088BE0, MEMORY[0x1E697F960]);
      sub_1D7089088();
      sub_1D726135C();

      v108 = v103;
      *v109 = v104;
      *&v109[16] = v105[0];
      v43 = *(v105 + 11);
    }

    *&v109[27] = v43;
    v106 = v101;
    v107 = v102;
    goto LABEL_12;
  }

  v12 = *a2;
  if (v11)
  {
    sub_1D70893BC(v10, 1u);
    v44 = sub_1D70736C8(v10, 0);
    sub_1D70893E0(v10, 1u);
    LOBYTE(v101) = 0;
    sub_1D72618EC();
    v45 = v106;
    v46 = *(&v106 + 1);

    v47 = sub_1D72618CC();
    sub_1D726166C();
    v48 = sub_1D726163C();
    (*(*(v48 - 8) + 56))(v9, 1, 1, v48);
    v49 = sub_1D726167C();
    sub_1D6155640(v9);
    v50 = swift_getKeyPath();
    v51 = [objc_opt_self() systemYellowColor];
    v52 = sub_1D726189C();
    v53 = swift_getKeyPath();
    *&v85 = v12;
    *(&v85 + 1) = 0x6575737349;
    *&v86 = 0xE500000000000000;
    *(&v86 + 1) = v44;
    *&v87 = v47;
    *(&v87 + 1) = v50;
    *&v88 = v49;
    *(&v88 + 1) = v53;
    *&v89 = v52;
    BYTE8(v89) = v45;
    HIDWORD(v89) = *(&v106 + 3);
    *(&v89 + 9) = v106;
    v90 = v46;
    v108 = v87;
    *v109 = v88;
    *&v109[16] = v89;
    *&v109[32] = v46;
    v106 = v85;
    v107 = v86;
    v100 = 0;
    v109[40] = 0;
    sub_1D708933C(&v85, &v101, sub_1D7088878);
    sub_1D7088878();
    sub_1D7088C28();
    sub_1D70892DC(&qword_1EC899D98, sub_1D7088878);
    sub_1D70892DC(&qword_1EC899DA8, sub_1D7088C28);
    sub_1D726135C();
    v108 = v103;
    *v109 = v104;
    *&v109[16] = v105[0];
    *&v109[25] = *(v105 + 9);
    v106 = v101;
    v107 = v102;
    LOBYTE(v96[0]) = 1;
    v109[41] = 1;
  }

  else
  {
    sub_1D70893BC(v10, 0);
    v13 = sub_1D70736C8(v10, 0);
    sub_1D70893E0(v10, 0);
    LOBYTE(v101) = 0;
    sub_1D72618EC();
    v14 = v106;
    v15 = *(&v106 + 1);

    v16 = sub_1D72618CC();
    sub_1D726166C();
    v17 = sub_1D726163C();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    v18 = sub_1D726167C();
    sub_1D6155640(v9);
    v19 = swift_getKeyPath();
    v20 = [objc_opt_self() systemRedColor];
    v21 = sub_1D726189C();
    v22 = swift_getKeyPath();
    *&v85 = v12;
    *(&v85 + 1) = 0x6575737349;
    *&v86 = 0xE500000000000000;
    *(&v86 + 1) = v13;
    *&v87 = v16;
    *(&v87 + 1) = v19;
    *&v88 = v18;
    *(&v88 + 1) = v22;
    *&v89 = v21;
    BYTE8(v89) = v14;
    HIDWORD(v89) = *(&v106 + 3);
    *(&v89 + 9) = v106;
    v90 = v15;
    v108 = v87;
    *v109 = v88;
    *&v109[16] = v89;
    *&v109[32] = v15;
    v106 = v85;
    v107 = v86;
    v100 = 1;
    v109[40] = 1;
    sub_1D708933C(&v85, &v101, sub_1D7088878);
    sub_1D708897C(0, &qword_1EC87E040, &qword_1EC87E048, &qword_1EC87E050, MEMORY[0x1E69815C0]);
    sub_1D7088878();
    sub_1D61ABEFC();
    sub_1D70892DC(&qword_1EC899D98, sub_1D7088878);
    sub_1D726135C();
    v108 = v103;
    *v109 = v104;
    *&v109[16] = v105[0];
    *&v109[25] = *(v105 + 9);
    v106 = v101;
    v107 = v102;
    LOBYTE(v96[0]) = 0;
    v109[41] = 0;
  }

  sub_1D70887F0();
  sub_1D7088BE0(0);
  sub_1D708914C();
  sub_1D70891FC();
  sub_1D726135C();
  v108 = v93[0];
  *v109 = v93[1];
  *&v109[16] = v94[0];
  *&v109[26] = *(v94 + 10);
  v106 = v91;
  v107 = v92;
  LOBYTE(v97[0]) = 0;
  v109[42] = 0;
  sub_1D7088CFC(0, &qword_1EC899D10, sub_1D70887F0, sub_1D7088BE0, MEMORY[0x1E697F960]);
  sub_1D7089088();
  sub_1D726135C();
  sub_1D7089404(&v85, sub_1D7088878);
  v108 = v103;
  *v109 = v104;
  *&v109[16] = v105[0];
  *&v109[27] = *(v105 + 11);
  v106 = v101;
  v107 = v102;
  a3 = v84;
LABEL_12:
  v76 = *v109;
  a3[2] = v108;
  a3[3] = v76;
  a3[4] = *&v109[16];
  *(a3 + 75) = *&v109[27];
  result = *&v106;
  v78 = v107;
  *a3 = v106;
  a3[1] = v78;
  return result;
}

double sub_1D708837C@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v11[2] = v1[2];
  v11[3] = v3;
  v11[4] = v1[4];
  v4 = v1[1];
  v11[0] = *v1;
  v11[1] = v4;
  *a1 = sub_1D72611CC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1D7088468();
  sub_1D7086A94(v11, a1 + *(v5 + 44));
  sub_1D7088CFC(0, &qword_1EC899D60, sub_1D7088D80, sub_1D5F25A44, MEMORY[0x1E697E830]);
  *(a1 + *(v6 + 36)) = 0;
  v7 = sub_1D72615EC();
  sub_1D7088E9C();
  v9 = a1 + *(v8 + 36);
  *v9 = v7;
  result = 8.0;
  *(v9 + 8) = xmmword_1D72A38C0;
  *(v9 + 24) = xmmword_1D72A38C0;
  *(v9 + 40) = 0;
  return result;
}

void sub_1D7088468()
{
  if (!qword_1EC899CE0)
  {
    sub_1D70885C0(255, &qword_1EC899CE8, sub_1D7088500, MEMORY[0x1E6981F40]);
    v0 = sub_1D7260F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899CE0);
    }
  }
}

void sub_1D7088500()
{
  if (!qword_1EC899CF0)
  {
    sub_1D70885C0(255, &qword_1EC899CF8, sub_1D7075544, MEMORY[0x1E69E6720]);
    sub_1D5F258D0();
    sub_1D7088690();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC899CF0);
    }
  }
}

void sub_1D70885C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7088624(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D5B49DF8(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1D726157C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D7088690()
{
  if (!qword_1EC899D00)
  {
    sub_1D5B49DF8(255, &qword_1EC896C88, &type metadata for DebugFormatPackageViewAccessory, MEMORY[0x1E69E62F8]);
    sub_1D708874C();
    sub_1D7088C80();
    v0 = sub_1D72619FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899D00);
    }
  }
}

void sub_1D708874C()
{
  if (!qword_1EC899D08)
  {
    sub_1D7088CFC(255, &qword_1EC899D10, sub_1D70887F0, sub_1D7088BE0, MEMORY[0x1E697F960]);
    v0 = sub_1D726136C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899D08);
    }
  }
}

void sub_1D70887F0()
{
  if (!qword_1EC899D18)
  {
    sub_1D708897C(255, &qword_1EC87E040, &qword_1EC87E048, &qword_1EC87E050, MEMORY[0x1E69815C0]);
    sub_1D7088878();
    v0 = sub_1D726136C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899D18);
    }
  }
}

void sub_1D7088878()
{
  if (!qword_1EC899D20)
  {
    sub_1D70888DC();
    sub_1D70889E0();
    v0 = type metadata accessor for DebugFormatInspectorPopoverView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899D20);
    }
  }
}

void sub_1D70888DC()
{
  if (!qword_1EC899D28)
  {
    sub_1D708897C(255, &qword_1EC899D30, &qword_1EC898680, &qword_1EC898688, MEMORY[0x1E6980F50]);
    sub_1D7088624(255, &qword_1EC87E048, &qword_1EC87E050, MEMORY[0x1E69815C0]);
    v0 = sub_1D726101C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899D28);
    }
  }
}

void sub_1D708897C(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1D7088624(255, a3, a4, a5);
    v6 = sub_1D726101C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D70889E0()
{
  result = qword_1EC899D38;
  if (!qword_1EC899D38)
  {
    sub_1D70888DC();
    sub_1D7088A60();
    sub_1D7088B70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899D38);
  }

  return result;
}

unint64_t sub_1D7088A60()
{
  result = qword_1EC899D40;
  if (!qword_1EC899D40)
  {
    sub_1D708897C(255, &qword_1EC899D30, &qword_1EC898680, &qword_1EC898688, MEMORY[0x1E6980F50]);
    sub_1D7088B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899D40);
  }

  return result;
}

unint64_t sub_1D7088B00()
{
  result = qword_1EC8986F0;
  if (!qword_1EC8986F0)
  {
    sub_1D7088624(255, &qword_1EC898680, &qword_1EC898688, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8986F0);
  }

  return result;
}

unint64_t sub_1D7088B70()
{
  result = qword_1EC884E00;
  if (!qword_1EC884E00)
  {
    sub_1D7088624(255, &qword_1EC87E048, &qword_1EC87E050, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884E00);
  }

  return result;
}

void sub_1D7088C28()
{
  if (!qword_1EC899D50)
  {
    v0 = type metadata accessor for DebugFormatFileTreePopoverView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899D50);
    }
  }
}

unint64_t sub_1D7088C80()
{
  result = qword_1EC899D58;
  if (!qword_1EC899D58)
  {
    sub_1D5B49DF8(255, &qword_1EC896C88, &type metadata for DebugFormatPackageViewAccessory, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899D58);
  }

  return result;
}

void sub_1D7088CFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1D7088D80()
{
  if (!qword_1EC899D68)
  {
    sub_1D70885C0(255, &qword_1EC899CE8, sub_1D7088500, MEMORY[0x1E6981F40]);
    sub_1D7088E14();
    v0 = sub_1D726197C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899D68);
    }
  }
}

unint64_t sub_1D7088E14()
{
  result = qword_1EC899D70;
  if (!qword_1EC899D70)
  {
    sub_1D70885C0(255, &qword_1EC899CE8, sub_1D7088500, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899D70);
  }

  return result;
}

void sub_1D7088E9C()
{
  if (!qword_1EC899D78)
  {
    sub_1D7088CFC(255, &qword_1EC899D60, sub_1D7088D80, sub_1D5F25A44, MEMORY[0x1E697E830]);
    v0 = sub_1D726101C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899D78);
    }
  }
}

uint64_t sub_1D7088F48(uint64_t a1, uint64_t a2)
{
  sub_1D5B49DF8(0, &qword_1EC896C88, &type metadata for DebugFormatPackageViewAccessory, MEMORY[0x1E69E62F8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7089008()
{
  result = qword_1EC899D80;
  if (!qword_1EC899D80)
  {
    sub_1D708874C();
    sub_1D7089088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899D80);
  }

  return result;
}

unint64_t sub_1D7089088()
{
  result = qword_1EC899D88;
  if (!qword_1EC899D88)
  {
    sub_1D7088CFC(255, &qword_1EC899D10, sub_1D70887F0, sub_1D7088BE0, MEMORY[0x1E697F960]);
    sub_1D708914C();
    sub_1D70891FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899D88);
  }

  return result;
}

unint64_t sub_1D708914C()
{
  result = qword_1EC899D90;
  if (!qword_1EC899D90)
  {
    sub_1D70887F0();
    sub_1D61ABEFC();
    sub_1D70892DC(&qword_1EC899D98, sub_1D7088878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899D90);
  }

  return result;
}

unint64_t sub_1D70891FC()
{
  result = qword_1EC899DA0;
  if (!qword_1EC899DA0)
  {
    sub_1D7088BE0(255);
    sub_1D70892DC(&qword_1EC899D98, sub_1D7088878);
    sub_1D70892DC(&qword_1EC899DA8, sub_1D7088C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899DA0);
  }

  return result;
}

uint64_t sub_1D70892DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7089324(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1D70758AC();
  }

  return result;
}

uint64_t sub_1D708933C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D70893A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1D7075968();
  }

  return result;
}

id sub_1D70893BC(id result, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

void sub_1D70893E0(id a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 <= 1u)
  {
  }
}

uint64_t sub_1D7089404(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D7089474()
{
  result = qword_1EC899DB0;
  if (!qword_1EC899DB0)
  {
    sub_1D7088E9C();
    sub_1D70894F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899DB0);
  }

  return result;
}

unint64_t sub_1D70894F4()
{
  result = qword_1EC899DB8;
  if (!qword_1EC899DB8)
  {
    sub_1D7088CFC(255, &qword_1EC899D60, sub_1D7088D80, sub_1D5F25A44, MEMORY[0x1E697E830]);
    sub_1D70892DC(&qword_1EC899DC0, sub_1D7088D80);
    sub_1D70892DC(&qword_1EC881138, sub_1D5F25A44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899DB8);
  }

  return result;
}

unint64_t sub_1D708961C()
{
  result = qword_1EC899DC8;
  if (!qword_1EC899DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899DC8);
  }

  return result;
}

uint64_t sub_1D7089670(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  sub_1D7089C7C(0, &qword_1EC899DE0, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7089C28();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D72643FC();
  if (!v5)
  {
    v15 = 1;
    sub_1D72643FC();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D70897F0(uint64_t a1)
{
  v2 = sub_1D7089C28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D708982C(uint64_t a1)
{
  v2 = sub_1D7089C28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7089868@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D7089A34(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1D70898B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1D6939CDC(0, &qword_1EC88C020, sub_1D60F41F0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5F3D224();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7270C10;
  *(v11 + 32) = 0x696669746E656449;
  *(v11 + 40) = 0xEA00000000007265;
  v12 = MEMORY[0x1E69E6158];
  v13 = MEMORY[0x1E69E61C8];
  *(v11 + 72) = MEMORY[0x1E69E6158];
  *(v11 + 80) = v13;
  *(v11 + 48) = a1;
  *(v11 + 56) = a2;
  *(v11 + 88) = 0;
  *(v11 + 96) = 1701667150;
  *(v11 + 104) = 0xE400000000000000;
  *(v11 + 136) = v12;
  *(v11 + 144) = v13;
  *(v11 + 112) = a3;
  *(v11 + 120) = a4;
  *(v11 + 152) = 0;
  *(inited + 56) = &type metadata for DebugInspectionDataSection;
  *(inited + 64) = &off_1F5132800;
  *(inited + 32) = 0x7954656C7A7A7550;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = v11;

  result = sub_1D60F3E18(inited);
  a5[3] = &type metadata for DebugInspectionDataSource;
  a5[4] = &off_1F51328C8;
  *a5 = result;
  return result;
}

uint64_t sub_1D7089A34(void *a1)
{
  sub_1D7089C7C(0, &qword_1EC899DD0, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7089C28();
  sub_1D7264B0C();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1D72642BC();
    v12 = 1;
    sub_1D72642BC();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D7089C28()
{
  result = qword_1EC899DD8;
  if (!qword_1EC899DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899DD8);
  }

  return result;
}

void sub_1D7089C7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7089C28();
    v7 = a3(a1, &type metadata for DebugInspectionPuzzleType.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7089CF4()
{
  result = qword_1EC899DE8;
  if (!qword_1EC899DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899DE8);
  }

  return result;
}

unint64_t sub_1D7089D4C()
{
  result = qword_1EC899DF0;
  if (!qword_1EC899DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899DF0);
  }

  return result;
}

unint64_t sub_1D7089DA4()
{
  result = qword_1EC899DF8;
  if (!qword_1EC899DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899DF8);
  }

  return result;
}

uint64_t type metadata accessor for DebugTaxtAttachementList()
{
  result = qword_1EC899E08;
  if (!qword_1EC899E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7089E6C()
{
  sub_1D7089F0C();
  if (v0 <= 0x3F)
  {
    sub_1D708C054(319, &qword_1EC899E00, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D7089F0C()
{
  if (!qword_1EC899E18)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899E18);
    }
  }
}

uint64_t sub_1D7089F78@<X0>(ValueMetadata **a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for DebugTaxtAttachementList();
  v50 = *(v3 - 8);
  v49 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v48 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D708B544();
  v7 = v6;
  Description = v6[-1].Description;
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D708B408();
  v13 = v12[-1].Description;
  v46 = v12;
  v47 = v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D708B29C();
  v18 = *(v17 - 8);
  v51 = v17;
  v52 = v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v45 = a1;
  v23 = *a1;
  v57 = 0;
  v58 = v23;
  v55 = &v58;
  v56 = sub_1D708A530;
  sub_1D708B5C4();
  sub_1D708B708();

  sub_1D726168C();

  v54 = v22;
  sub_1D708B7B0();
  v25 = v24;
  v26 = sub_1D708C3C0(&qword_1EC899E90, sub_1D708B544);
  sub_1D708B864();
  v28 = v27;
  v29 = sub_1D708C3C0(&qword_1EC899E88, sub_1D708B864);
  v58 = v28;
  v59 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v25;
  sub_1D726182C();
  Description[1](v11, v7);
  sub_1D726121C();
  v58 = v7;
  v59 = v25;
  v60 = v26;
  v61 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v46;
  sub_1D72617BC();

  v33 = v32;
  v47[1](v16, v32);
  v34 = v48;
  sub_1D708BFF0(v45, v48);
  v35 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v36 = swift_allocObject();
  sub_1D708C0B4(v34, v36 + v35);
  sub_1D708B950();
  v58 = v33;
  v59 = v31;
  swift_getOpaqueTypeConformance2();
  sub_1D708BB84();
  sub_1D708BA9C();
  v38 = v37;
  v39 = sub_1D708BB30();
  v40 = sub_1D5BF4D9C();
  v58 = &type metadata for AttachmentTextView;
  v59 = MEMORY[0x1E69E6158];
  v60 = v39;
  v61 = v40;
  v41 = swift_getOpaqueTypeConformance2();
  v58 = v38;
  v59 = v44;
  v60 = v41;
  v61 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v42 = v51;
  sub_1D72617FC();

  return (*(v52 + 8))(v21, v42);
}

uint64_t sub_1D708A530(__int128 *a1)
{
  v1 = a1[1];
  v10 = *a1;
  v11 = v1;
  v12 = a1[2];
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v13 = v10;
  v14 = v1;
  v15 = v12;
  v6 = v10;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_1D5E422A8(&v13, v5);
  sub_1D5E422A8(&v14, v5);
  sub_1D5E422A8(&v15, v5);
  sub_1D708BB84();
  return sub_1D7260F5C();
}

uint64_t sub_1D708A5F0@<X0>(uint64_t a1@<X8>)
{
  sub_1D5BF4D9C();

  result = sub_1D726171C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1D708A65C(void *a1, uint64_t a2)
{
  sub_1D708BA9C();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[5];
  v13 = *MEMORY[0x1E69DDCF8];
  v23 = a1[4];
  v24 = v12;
  v25 = v13;
  v27 = v10;
  v28 = v11;
  v14 = sub_1D708BB30();
  v15 = sub_1D5BF4D9C();
  v16 = MEMORY[0x1E69E6158];
  sub_1D72617CC();
  v22 = a2;
  sub_1D708B7B0();
  v23 = &type metadata for AttachmentTextView;
  v24 = v16;
  v25 = v14;
  v26 = v15;
  swift_getOpaqueTypeConformance2();
  sub_1D708B864();
  v18 = v17;
  v19 = sub_1D708C3C0(&qword_1EC899E88, sub_1D708B864);
  v23 = v18;
  v24 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1D726182C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D708A870(uint64_t a1)
{
  v2 = sub_1D726138C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D708B864();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D726137C();
  v13 = a1;
  sub_1D708B8F8();
  sub_1D708C3C0(&qword_1EC899E80, sub_1D708B8F8);
  sub_1D726107C();
  v10 = sub_1D708C3C0(&qword_1EC899E88, sub_1D708B864);
  MEMORY[0x1DA6F8A90](v9, v5, v10);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D708AA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = a3;
  v4 = type metadata accessor for DebugTaxtAttachementList();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  sub_1D726121C();
  sub_1D708BFF0(a1, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1D708C0B4(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  return sub_1D726195C();
}

uint64_t sub_1D708AB78(uint64_t a1)
{
  v2 = sub_1D72611AC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D708C054(0, &qword_1EC893EB8, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v11 = sub_1D7260F1C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DebugTaxtAttachementList();
  sub_1D708C200(a1 + *(v16 + 20), v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    sub_1D7262ECC();
    v17 = sub_1D726158C();
    sub_1D725C31C();

    sub_1D726119C();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_1D7260F0C();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1D708ADFC()
{
  sub_1D708B058();
  sub_1D708B29C();
  sub_1D708B950();
  sub_1D708B408();
  sub_1D708B544();
  sub_1D708B7B0();
  sub_1D708C3C0(&qword_1EC899E90, sub_1D708B544);
  sub_1D708B864();
  sub_1D708C3C0(&qword_1EC899E88, sub_1D708B864);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1D708BB84();
  sub_1D708BA9C();
  sub_1D708BB30();
  sub_1D5BF4D9C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1D726102C();
}

void sub_1D708B058()
{
  if (!qword_1EC899E20)
  {
    sub_1D708B29C();
    sub_1D708B950();
    sub_1D708B408();
    sub_1D708B544();
    sub_1D708B7B0();
    sub_1D708C3C0(&qword_1EC899E90, sub_1D708B544);
    sub_1D708B864();
    sub_1D708C3C0(&qword_1EC899E88, sub_1D708B864);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D708BB84();
    sub_1D708BA9C();
    sub_1D708BB30();
    sub_1D5BF4D9C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC899E20);
    }
  }
}

void sub_1D708B29C()
{
  if (!qword_1EC899E28)
  {
    sub_1D708B408();
    sub_1D708B544();
    sub_1D708B7B0();
    sub_1D708C3C0(&qword_1EC899E90, sub_1D708B544);
    sub_1D708B864();
    sub_1D708C3C0(&qword_1EC899E88, sub_1D708B864);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC899E28);
    }
  }
}

void sub_1D708B408()
{
  if (!qword_1EC899E30)
  {
    sub_1D708B544();
    sub_1D708B7B0();
    sub_1D708C3C0(&qword_1EC899E90, sub_1D708B544);
    sub_1D708B864();
    sub_1D708C3C0(&qword_1EC899E88, sub_1D708B864);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC899E30);
    }
  }
}

void sub_1D708B544()
{
  if (!qword_1EC899E38)
  {
    sub_1D708B5C4();
    sub_1D708B708();
    v0 = sub_1D726169C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899E38);
    }
  }
}

void sub_1D708B5C4()
{
  if (!qword_1EC899E40)
  {
    sub_1D7089F0C();
    sub_1D708B68C();
    sub_1D708C3C0(&qword_1EC899E50, sub_1D7089F0C);
    v0 = sub_1D72619FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899E40);
    }
  }
}

void sub_1D708B68C()
{
  if (!qword_1EC899E48)
  {
    v0 = sub_1D7260F6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899E48);
    }
  }
}

unint64_t sub_1D708B708()
{
  result = qword_1EC899E58;
  if (!qword_1EC899E58)
  {
    sub_1D708B5C4();
    sub_1D708C3C0(&qword_1EC899E60, sub_1D708B68C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899E58);
  }

  return result;
}

void sub_1D708B7B0()
{
  if (!qword_1EC899E68)
  {
    sub_1D708B864();
    sub_1D708C3C0(&qword_1EC899E88, sub_1D708B864);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC899E68);
    }
  }
}

void sub_1D708B864()
{
  if (!qword_1EC899E70)
  {
    sub_1D708B8F8();
    sub_1D708C3C0(&qword_1EC899E80, sub_1D708B8F8);
    v0 = sub_1D726108C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899E70);
    }
  }
}

void sub_1D708B8F8()
{
  if (!qword_1EC899E78)
  {
    v0 = sub_1D726196C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899E78);
    }
  }
}

void sub_1D708B950()
{
  if (!qword_1EC899E98)
  {
    sub_1D708BA9C();
    sub_1D708B7B0();
    sub_1D708BB30();
    sub_1D5BF4D9C();
    swift_getOpaqueTypeConformance2();
    sub_1D708B864();
    sub_1D708C3C0(&qword_1EC899E88, sub_1D708B864);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC899E98);
    }
  }
}

void sub_1D708BA9C()
{
  if (!qword_1EC899EA0)
  {
    sub_1D708BB30();
    sub_1D5BF4D9C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC899EA0);
    }
  }
}

unint64_t sub_1D708BB30()
{
  result = qword_1EC899EA8;
  if (!qword_1EC899EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899EA8);
  }

  return result;
}

unint64_t sub_1D708BB84()
{
  result = qword_1EC899EB0;
  if (!qword_1EC899EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899EB0);
  }

  return result;
}

id sub_1D708BBD8()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD168]) init];
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 setFont_];

  [v2 setAutocapitalizationType_];
  [v2 setSelectable_];
  [v2 setUserInteractionEnabled_];
  [v2 setEditable_];
  return v2;
}

void sub_1D708BCA8(void *a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1D726203C();
  [a1 setText_];

  v5 = [objc_opt_self() preferredFontForTextStyle_];
  [a1 setFont_];
}

uint64_t sub_1D708BD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D708C678();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1D708BDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D708C678();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1D708BE38()
{
  sub_1D708C678();
  sub_1D726131C();
  __break(1u);
}

uint64_t sub_1D708BE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1D7089F0C();
  sub_1D708B68C();
  sub_1D708C3C0(&qword_1EC899E50, sub_1D7089F0C);
  sub_1D708C3C0(&qword_1EC899E60, sub_1D708B68C);
  sub_1D708C354();

  return sub_1D72619EC();
}

uint64_t sub_1D708BFF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugTaxtAttachementList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D708C054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7260F1C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D708C0B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugTaxtAttachementList();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D708C118(void *a1)
{
  v3 = *(type metadata accessor for DebugTaxtAttachementList() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D708A65C(a1, v4);
}

uint64_t sub_1D708C200(uint64_t a1, uint64_t a2)
{
  sub_1D708C054(0, &qword_1EC893EB8, MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D708C310(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = *a1;
  v7[1] = v3;
  v8 = v4;
  v9 = v5;
  return v2(v7);
}

unint64_t sub_1D708C354()
{
  result = qword_1EC899EB8;
  if (!qword_1EC899EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899EB8);
  }

  return result;
}

uint64_t sub_1D708C3C0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D708C408()
{
  if (!qword_1EC899EC8)
  {
    sub_1D7260F7C();
    sub_1D708B058();
    sub_1D708B29C();
    sub_1D708B950();
    sub_1D708B408();
    sub_1D708B544();
    sub_1D708B7B0();
    sub_1D708C3C0(&qword_1EC899E90, sub_1D708B544);
    sub_1D708B864();
    sub_1D708C3C0(&qword_1EC899E88, sub_1D708B864);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D708BB84();
    sub_1D708BA9C();
    sub_1D708BB30();
    sub_1D5BF4D9C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1D726103C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899EC8);
    }
  }
}

unint64_t sub_1D708C678()
{
  result = qword_1EC899ED0;
  if (!qword_1EC899ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899ED0);
  }

  return result;
}

void sub_1D708C6D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  v15 = (v14 >> 3) & 3;
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      sub_1D6B7BE60(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v9);
      if (v3)
      {
        return;
      }

      FormatWebEmbedBinding.SourceItemTip.tipSource(from:)(v9, a2);
      v18 = type metadata accessor for FeedWebEmbed;
      v19 = v9;
      goto LABEL_14;
    }

    sub_1D6B7C06C(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v25);
    if (!v3)
    {
      if (v14)
      {
        if (qword_1EDF168F0 != -1)
        {
          swift_once();
        }

        v16 = sub_1D725FC7C();
        v17 = __swift_project_value_buffer(v16, qword_1EDF168F8);
        (*(*(v16 - 8) + 16))(a2, v17, v16);
      }

      else
      {
        v24[1] = 0x3A3A776F6C6C6F66;
        v24[2] = 0xE800000000000000;
        v20 = [v26 identifier];
        v21 = sub_1D726207C();
        v23 = v22;

        MEMORY[0x1DA6F9910](v21, v23);

        sub_1D725FC6C();
      }

      sub_1D5EE5B54(v25);
    }
  }

  else
  {
    if (!v15)
    {
      v25[0] = v14;
      FormatGroupBinding.SourceItemTip.tipSource(from:)(a1, a2);
      return;
    }

    sub_1D6B7C374(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v13);
    if (!v3)
    {
      v25[0] = v14 & 1;
      FormatHeadlineBinding.SourceItemTip.tipSource(from:)(v13, a2);
      v18 = type metadata accessor for FeedHeadline;
      v19 = v13;
LABEL_14:
      sub_1D67527C0(v19, v18);
    }
  }
}

BOOL _s8NewsFeed26FormatSourceItemTipBindingO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (v2 >> 3) & 3;
  v5 = v3 & 0x18;
  if (v4 <= 1)
  {
    if (!v4)
    {
      if ((v3 & 0x18) == 0)
      {
        v6 = v2 >> 5;
        if (v2 >> 5 <= 1)
        {
          if (v6)
          {
            if ((v3 & 0xE0) == 0x20 && ((v3 ^ v2) & 1) == 0)
            {
              return 1;
            }
          }

          else if (v3 <= 0x1F && ((v3 ^ v2) & 1) == 0)
          {
            return 1;
          }
        }

        else if (v6 == 2)
        {
          if ((v3 & 0xE0) == 0x40 && ((v3 ^ v2) & 1) == 0)
          {
            return 1;
          }
        }

        else if (v6 == 3)
        {
          if ((v3 & 0xE0) == 0x60 && ((v3 ^ v2) & 1) == 0)
          {
            return 1;
          }
        }

        else if ((v3 & 0xE0) == 0x80)
        {
          return 1;
        }
      }

      return 0;
    }

    if (v5 != 8)
    {
      return 0;
    }

    return ((v3 ^ v2) & 1) == 0;
  }

  if (v4 != 2)
  {
    return v5 == 24;
  }

  if (v5 == 16)
  {
    return ((v3 ^ v2) & 1) == 0;
  }

  return 0;
}

unint64_t sub_1D708CAE0(uint64_t a1)
{
  result = sub_1D708CB08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D708CB08()
{
  result = qword_1EC899ED8;
  if (!qword_1EC899ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899ED8);
  }

  return result;
}

unint64_t sub_1D708CB5C(void *a1)
{
  a1[1] = sub_1D66BA368();
  a1[2] = sub_1D66F8070();
  result = sub_1D708CB94();
  a1[3] = result;
  return result;
}

unint64_t sub_1D708CB94()
{
  result = qword_1EC899EE0;
  if (!qword_1EC899EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899EE0);
  }

  return result;
}

uint64_t sub_1D708CC98(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xED00007364416C6CLL;
  v3 = 0x41656C6261736964;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x41656C6261736964;
  }

  if (v4 == 1)
  {
    v6 = 0x80000001D73B8260;
  }

  else
  {
    v6 = 0xED00007364416C6CLL;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001D73B8240;
  }

  if (*a2 == 1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001D73B8260;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001D73B8240;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D708CD7C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D708CE30()
{
  sub_1D72621EC();
}

uint64_t sub_1D708CED0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D708CF80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D708D8A4();
  *a1 = result;
  return result;
}

void sub_1D708CFB0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00007364416C6CLL;
  v4 = 0x41656C6261736964;
  if (v2 == 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001D73B8260;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v5)
  {
    v3 = 0x80000001D73B8240;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1D708D0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65746174536461 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D708D170(uint64_t a1)
{
  v2 = sub_1D708D344();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D708D1AC(uint64_t a1)
{
  v2 = sub_1D708D344();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedConfigMetadata.encode(to:)(void *a1)
{
  sub_1D708D584(0, &qword_1EC899EE8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D708D344();
  sub_1D7264B5C();
  v12 = v9;
  sub_1D708D398();
  sub_1D726443C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D708D344()
{
  result = qword_1EDF14C58[0];
  if (!qword_1EDF14C58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF14C58);
  }

  return result;
}

unint64_t sub_1D708D398()
{
  result = qword_1EC899EF0;
  if (!qword_1EC899EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899EF0);
  }

  return result;
}

uint64_t FeedConfigMetadata.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1D708D584(0, &qword_1EDF03C50, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D708D344();
  sub_1D7264B0C();
  if (!v2)
  {
    sub_1D708D5E8();
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D708D584(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D708D344();
    v7 = a3(a1, &type metadata for FeedConfigMetadata.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D708D5E8()
{
  result = qword_1EDF14C38;
  if (!qword_1EDF14C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14C38);
  }

  return result;
}

unint64_t sub_1D708D6F4()
{
  result = qword_1EC899EF8;
  if (!qword_1EC899EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899EF8);
  }

  return result;
}

unint64_t sub_1D708D74C()
{
  result = qword_1EC899F00;
  if (!qword_1EC899F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899F00);
  }

  return result;
}

unint64_t sub_1D708D7A4()
{
  result = qword_1EDF14C48;
  if (!qword_1EDF14C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14C48);
  }

  return result;
}

unint64_t sub_1D708D7FC()
{
  result = qword_1EDF14C50;
  if (!qword_1EDF14C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14C50);
  }

  return result;
}

unint64_t sub_1D708D850()
{
  result = qword_1EDF14C40;
  if (!qword_1EDF14C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14C40);
  }

  return result;
}

uint64_t sub_1D708D8A4()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for DebugFormatVersioningModeItem()
{
  result = qword_1EC899F08;
  if (!qword_1EC899F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D708D94C()
{
  type metadata accessor for FormatVersioningModeSelection(319);
  if (v0 <= 0x3F)
  {
    sub_1D708D9C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D708D9C0()
{
  if (!qword_1EC899F18)
  {
    sub_1D5B58D88();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC899F18);
    }
  }
}

unint64_t sub_1D708DA3C(void *a1)
{
  a1[1] = sub_1D668E538();
  a1[2] = sub_1D668E7AC();
  result = sub_1D708DA74();
  a1[3] = result;
  return result;
}

unint64_t sub_1D708DA74()
{
  result = qword_1EC899F20;
  if (!qword_1EC899F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899F20);
  }

  return result;
}

unint64_t sub_1D708DAC8(uint64_t a1)
{
  result = sub_1D708DAF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D708DAF0()
{
  result = qword_1EC899F28;
  if (!qword_1EC899F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899F28);
  }

  return result;
}

uint64_t sub_1D708DB48@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6690520(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t static FormatShineAlphaProcessor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1D708DBE4(uint64_t a1)
{
  result = sub_1D708DC0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D708DC0C()
{
  result = qword_1EC899F30;
  if (!qword_1EC899F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899F30);
  }

  return result;
}

unint64_t sub_1D708DC60(void *a1)
{
  a1[1] = sub_1D6667278();
  a1[2] = sub_1D66674C4();
  result = sub_1D708DC98();
  a1[3] = result;
  return result;
}

unint64_t sub_1D708DC98()
{
  result = qword_1EC899F38;
  if (!qword_1EC899F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899F38);
  }

  return result;
}

uint64_t sub_1D708DD2C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void), uint64_t a5, uint64_t a6, void (**a7)(uint64_t, char *, uint64_t), int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, _OWORD *a13, uint64_t a14, uint64_t a15, uint64_t a16, void (**a17)(uint64_t, char *, uint64_t), uint64_t a18, uint64_t a19, uint64_t a20)
{
  v166 = a8;
  v175 = a7;
  v167 = a5;
  v168 = a6;
  v180 = a3;
  v181 = a4;
  v22 = type metadata accessor for FormatModel();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v183 = &v153 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E2C2C8();
  v209 = v25;
  v182 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v185 = &v153 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for FeedItem(0);
  v178 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v177 = &v153 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v153 - v33;
  v165 = type metadata accessor for FormatContent.Resolved();
  v162 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165, v35);
  v163 = v36;
  v164 = &v153 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v161 = &v153 - v39;
  v40 = *a1;
  v171 = *(a1 + 8);
  v172 = v40;
  v41 = *(a1 + 24);
  v184 = *(a1 + 16);
  v42 = *(a1 + 32);
  v43 = *(a1 + 40);
  v170 = *(a1 + 48);
  v169 = *(a1 + 56);
  v44 = *(a1 + 72);
  v153 = v34;
  if (v42 < 0)
  {
    v42 &= ~0x8000000000000000;
    *&v194 = a2;
    v47 = *(a1 + 48);
    v205 = *(a1 + 32);
    v206 = v47;
    v207 = *(a1 + 64);
    v48 = *(a1 + 16);
    v203 = *a1;
    v204 = v48;
    *&v205 = v205 & 0x7FFFFFFFFFFFFFFFLL;
    sub_1D5CB7180(&v203, &v199);
    sub_1D70A2554(0, &qword_1EDF05330, MEMORY[0x1E69D7608], MEMORY[0x1E69E62F8]);
    sub_1D70A3610();
    sub_1D5B85FD8(&qword_1EDF17310, MEMORY[0x1E69D7608]);
    v49 = sub_1D72623BC();
    if (*(v49 + 16))
    {
      v50 = v171;

      v179 = sub_1D5B69D90(v172, v50);
      v52 = v51;

      if (v52)
      {
        v53 = *(*(v49 + 56) + 8 * v179);

        sub_1D70A2E30(v167, &v199, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
        type metadata accessor for FeedGroupRegion();
        swift_allocObject();
        v54 = v181;

        v55 = FeedGroupRegion.init(groupIdentifier:pluginModel:feedGroupDebug:)(v180, v54, v53, &v199);
        v56 = a1;
        v57 = v55;
        sub_1D5CEC67C(v56);
        return v57;
      }
    }
  }

  else
  {
    v45 = *(a1 + 48);
    v205 = *(a1 + 32);
    v206 = v45;
    v207 = *(a1 + 64);
    v46 = *(a1 + 16);
    v203 = *a1;
    v204 = v46;
    *&v205 = v205 & 0x7FFFFFFFFFFFFFFFLL;
    sub_1D5CB7180(&v203, &v199);
  }

  *&v199 = v172;
  *(&v199 + 1) = v171;
  *&v200 = v184;
  *(&v200 + 1) = v41;
  *&v201 = v42;
  *(&v201 + 1) = v43;
  *&v202[0] = v170;
  *(v202 + 8) = v169;
  *(&v202[1] + 1) = v44;
  v205 = v201;
  v206 = v202[0];
  v207 = v202[1];
  v203 = v199;
  v204 = v200;
  sub_1D5E2C35C();
  v58 = sub_1D5B85FD8(&qword_1EDF17BC0, sub_1D5E2C35C);
  v59 = sub_1D7262C2C();
  v60 = MEMORY[0x1E69E7CC0];
  if (!v59)
  {
LABEL_13:
    *&v159 = a19;
    v184 = a12;
    v179 = a11;
    v73 = sub_1D5B86020(v60);

    v74 = v168;
    v75 = v175;
    v160 = sub_1D708ECA0(v168, &v203, a9, a10, v179, v184, v175);
    v176 = a20;
    v76 = v73;
    v174 = a18;
    v175 = a17;
    v77 = v159;
    v179 = sub_1D7092D6C(v180, v181, &v203, v75, v73, a17, a18, v159, a20);
    v78 = v169;
    v79 = *(v169 + 16);
    if (v79)
    {
      *&v187 = MEMORY[0x1E69E7CC0];
      sub_1D5D565AC(0, v79, 0);
      v184 = v187;
      v80 = (v78 + 32);
      v81 = v79 - 1;
      v82 = v173;
      while (1)
      {
        v83 = *v80;
        v84 = v80[1];
        v85 = v80[3];
        v208[2] = v80[2];
        v208[3] = v85;
        v208[0] = v83;
        v208[1] = v84;
        sub_1D5CB6F58(v208, &v189);
        sub_1D7093400(v208, v180, v181, v179, v175, v174, v77, v176, &v194, v76);
        sub_1D5CB6FB4(v208);
        v86 = v184;
        *&v187 = v184;
        v88 = *(v184 + 16);
        v87 = *(v184 + 24);
        if (v88 >= v87 >> 1)
        {
          v173 = v82;
          sub_1D5D565AC((v87 > 1), v88 + 1, 1);
          v82 = v173;
          v86 = v187;
        }

        *(v86 + 16) = v88 + 1;
        v184 = v86;
        v89 = (v86 + (v88 << 6));
        v90 = v194;
        v91 = v195;
        v92 = v197;
        v89[4] = v196;
        v89[5] = v92;
        v89[2] = v90;
        v89[3] = v91;
        if (!v81)
        {
          break;
        }

        --v81;
        v80 += 4;
      }

      v173 = v82;

      v74 = v168;
    }

    else
    {

      v184 = MEMORY[0x1E69E7CC0];
    }

    v158 = a16;
    v157 = a15;
    v156 = a14;
    v93 = v74[1];
    *&v194 = *v74;
    *(&v194 + 1) = v93;

    MEMORY[0x1DA6F9910](v172, v171);
    v174 = *(&v194 + 1);
    v94 = v194;
    v95 = v161;
    sub_1D5BE64C0(v74, v161, type metadata accessor for FormatContent.Resolved);
    v195 = v204;
    v196 = v205;
    v197 = v206;
    v198 = v207;
    v194 = v203;
    sub_1D5CB7180(&v199, &v189);
    FormatGroupLayoutFactoryModel.init(content:subgroup:)(v95, &v194, &v189);
    v96 = v189;
    v169 = v191;
    v159 = v190;
    v168 = v192;
    v161 = v193;
    sub_1D70A2E30(v167, &v187, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
    v97 = v164;
    sub_1D5BE64C0(v74, v164, type metadata accessor for FormatContent.Resolved);
    v98 = (*(v162 + 80) + 16) & ~*(v162 + 80);
    v99 = (v163 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
    v100 = swift_allocObject();
    sub_1D5BE6684(v97, v100 + v98, type metadata accessor for FormatContent.Resolved);
    v101 = (v100 + v99);
    v102 = v206;
    v101[2] = v205;
    v101[3] = v102;
    v101[4] = v207;
    v103 = v204;
    *v101 = v203;
    v101[1] = v103;
    v104 = type metadata accessor for FeedGroupDebug();
    v105 = swift_allocObject();
    v106 = v179;
    if (v188)
    {
      sub_1D5B63F14(&v187, v105 + 16);
      *(v105 + 56) = sub_1D5EF1D08;
      *(v105 + 64) = v100;
      sub_1D5CB7180(&v199, &v194);
      v162 = &protocol witness table for FeedGroupDebug;
    }

    else
    {
      sub_1D5CB7180(&v199, &v194);

      sub_1D70A2C0C(&v187, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
      swift_deallocPartialClassInstance();
      v104 = 0;
      v162 = 0;
      v105 = 0;
    }

    v164 = v105;
    v167 = v104;
    v163 = a13;
    v107 = *(v74 + *(v165 + 48));

    v170 = sub_1D5D6021C(v108, v107);
    v155 = v96 | 0x4000000000000000;
    type metadata accessor for FeedGroupRegion();
    v57 = swift_allocObject();
    *(v57 + 208) = 0u;
    v165 = v57 + 208;
    v186 = 1;
    *(v57 + 224) = 0u;
    *(v57 + 240) = 0u;
    *(v57 + 249) = 0u;
    *(v57 + 265) = 1;
    *(v57 + 16) = v180;
    *(v57 + 24) = v181;
    *&v194 = v94;
    *(&v194 + 1) = v174;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    v109 = *(v106 + 16);
    v110 = MEMORY[0x1E69E7CC0];
    v171 = v57;
    v172 = v94;
    v154 = v109;
    if (v109)
    {
      *&v187 = MEMORY[0x1E69E7CC0];
      sub_1D5BFC364(0, v109, 0);
      v110 = v187;
      v180 = *(v182 + 16);
      v181 = (v182 + 16);
      v111 = v106 + ((*(v182 + 80) + 32) & ~*(v182 + 80));
      v112 = *(v182 + 72);
      v175 = (v182 + 8);
      v176 = v112;
      v113 = v109;
      do
      {
        v114 = v185;
        v115 = v209;
        (v180)(v185, v111, v209);
        v116 = v183;
        sub_1D725CE7C();
        sub_1D683A158();
        v118 = *(v117 + 48);
        v119 = v177;
        sub_1D5BE6684(v116, v177, type metadata accessor for FeedItem);
        sub_1D683A1C4(v116 + v118);
        v120 = FeedItem.identifier.getter();
        v122 = v121;
        sub_1D5BE6754(v119, type metadata accessor for FeedItem);
        (*v175)(v114, v115);
        *&v187 = v110;
        v124 = *(v110 + 16);
        v123 = *(v110 + 24);
        if (v124 >= v123 >> 1)
        {
          sub_1D5BFC364((v123 > 1), v124 + 1, 1);
          v110 = v187;
        }

        *(v110 + 16) = v124 + 1;
        v125 = v110 + 16 * v124;
        *(v125 + 32) = v120;
        *(v125 + 40) = v122;
        v111 += v176;
        --v113;
      }

      while (v113);
      v106 = v179;
      v57 = v171;
      v94 = v172;
    }

    *&v187 = v110;
    v126 = MEMORY[0x1E69E6158];
    sub_1D5D60AB4(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5D56E88(&qword_1EDF3C840, &qword_1EDF43BA0, v126);
    v127 = sub_1D7261F3C();
    v129 = v128;

    MEMORY[0x1DA6F9910](v127, v129);

    v130 = *(&v194 + 1);
    *(v57 + 32) = v194;
    *(v57 + 40) = v130;
    *(v57 + 136) = sub_1D7095200(v106, v156, v157, v158);
    *(v57 + 144) = v131;
    v132 = v154;
    if (v154)
    {
      *&v194 = MEMORY[0x1E69E7CC0];
      sub_1D69992E8(0, v154, 0);
      v133 = v194;
      v134 = *(v182 + 16);
      v135 = v106 + ((*(v182 + 80) + 32) & ~*(v182 + 80));
      v180 = *(v182 + 72);
      v181 = v134;
      v182 += 16;
      v136 = (v182 - 8);
      v137 = v153;
      do
      {
        v138 = v132;
        v139 = v185;
        v140 = v209;
        v181(v185, v135, v209);
        v141 = v183;
        sub_1D725CE7C();
        (*v136)(v139, v140);
        sub_1D683A158();
        v143 = *(v142 + 48);
        sub_1D5BE6684(v141, v137, type metadata accessor for FeedItem);
        sub_1D683A1C4(v141 + v143);
        *&v194 = v133;
        v145 = *(v133 + 16);
        v144 = *(v133 + 24);
        if (v145 >= v144 >> 1)
        {
          sub_1D69992E8(v144 > 1, v145 + 1, 1);
          v133 = v194;
        }

        *(v133 + 16) = v145 + 1;
        sub_1D5BE6684(v137, v133 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v145, type metadata accessor for FeedItem);
        v135 += v180;
        v132 = v138 - 1;
      }

      while (v138 != 1);
      sub_1D5CB71DC(&v199);

      v57 = v171;
      v94 = v172;
    }

    else
    {

      sub_1D5CB71DC(&v199);
      v133 = MEMORY[0x1E69E7CC0];
    }

    v146 = v160;
    *(v57 + 64) = v133;
    *(v57 + 72) = v146;
    v147 = v174;
    *(v57 + 48) = v94;
    *(v57 + 56) = v147;
    *(v57 + 80) = v155;
    *(v57 + 88) = v159;
    *(v57 + 104) = v169;
    v148 = v161;
    *(v57 + 120) = v168;
    *(v57 + 128) = v148;
    *(v57 + 152) = v184;
    *(v57 + 160) = v166 & 1;
    v149 = v165;
    *(v57 + 168) = v164;
    *(v57 + 176) = 0;
    v150 = v167;
    *(v57 + 184) = 0;
    *(v57 + 192) = v150;
    *(v57 + 200) = v162;
    swift_beginAccess();
    v151 = v163;
    v152 = v163[1];
    *v149 = *v163;
    v149[1] = v152;
    v149[2] = v151[2];
    *(v149 + 42) = *(v151 + 42);
    *(v57 + 272) = v170;
    return v57;
  }

  v61 = v59;
  v189 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, v59 & ~(v59 >> 63), 0);
  v60 = v189;
  result = sub_1D7262BFC();
  if ((v61 & 0x8000000000000000) == 0)
  {
    v179 = v182 + 16;
    v176 = v182 + 8;
    do
    {
      v63 = sub_1D7262D0C();
      v64 = v58;
      v65 = v185;
      v66 = v209;
      (*v179)(v185);
      v63(&v194, 0);
      v67 = sub_1D725CE5C();
      v184 = v68;
      (*v176)(v65, v66);
      v189 = v60;
      v70 = *(v60 + 16);
      v69 = *(v60 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_1D5BFC364((v69 > 1), v70 + 1, 1);
        v60 = v189;
      }

      *(v60 + 16) = v70 + 1;
      v71 = v60 + 16 * v70;
      v72 = v184;
      *(v71 + 32) = v67;
      *(v71 + 40) = v72;
      sub_1D7262C6C();
      --v61;
      v58 = v64;
    }

    while (v61);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D708ECA0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v506 = a7;
  v476 = a6;
  v489 = a2;
  v490 = a4;
  v509 = a3;
  v9 = type metadata accessor for FeedRecipe.State();
  MEMORY[0x1EEE9AC00](v9, v10);
  v493 = &v458 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v460 = &v458 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v494 = &v458 - v17;
  v513 = type metadata accessor for FeedRecipe();
  v495 = *(v513 - 8);
  MEMORY[0x1EEE9AC00](v513, v18);
  v520 = &v458 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70A3810();
  v473 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v511 = &v458 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1E69E6720];
  sub_1D70A2554(0, qword_1EDF34D20, type metadata accessor for FeedRecipe, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v474 = &v458 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v462 = &v458 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v463 = &v458 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v510 = &v458 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v519 = &v458 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v492 = &v458 - v41;
  v42 = type metadata accessor for WebEmbedDataVisualization();
  v468 = *(v42 - 8);
  v469 = v42;
  MEMORY[0x1EEE9AC00](v42, v43);
  v459 = (&v458 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v466 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v466, v45);
  v477 = (&v458 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D70A2554(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, v23);
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v467 = &v458 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50, v51);
  v482 = &v458 - v52;
  sub_1D70A2554(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], v23);
  MEMORY[0x1EEE9AC00](v53 - 8, v54);
  v500 = &v458 - v55;
  v502 = sub_1D72585BC();
  v483 = *(v502 - 8);
  MEMORY[0x1EEE9AC00](v502, v56);
  v501 = &v458 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70A2554(0, qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved, v23);
  MEMORY[0x1EEE9AC00](v58 - 8, v59);
  v485 = &v458 - v60;
  v486 = type metadata accessor for FormatWebEmbed.Resolved();
  v484 = *(v486 - 8);
  MEMORY[0x1EEE9AC00](v486, v61);
  v487 = &v458 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v522 = type metadata accessor for FeedHeadline(0);
  v499 = *(v522 - 8);
  MEMORY[0x1EEE9AC00](v522, v63);
  v503 = (&v458 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D70A2554(0, &qword_1EDF43990, MEMORY[0x1E69B3E58], v23);
  MEMORY[0x1EEE9AC00](v65 - 8, v66);
  v497 = &v458 - v67;
  v480 = type metadata accessor for FeedHeadline.State(0);
  MEMORY[0x1EEE9AC00](v480, v68);
  v472 = &v458 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70, v71);
  v461 = &v458 - v72;
  MEMORY[0x1EEE9AC00](v73, v74);
  v498 = &v458 - v75;
  sub_1D70A3978();
  v475 = v76;
  MEMORY[0x1EEE9AC00](v76, v77);
  v526 = (&v458 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D70A2554(0, qword_1EDF42030, type metadata accessor for FeedHeadline, v23);
  MEMORY[0x1EEE9AC00](v79 - 8, v80);
  v481 = &v458 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v82, v83);
  v471 = &v458 - v84;
  MEMORY[0x1EEE9AC00](v85, v86);
  v464 = &v458 - v87;
  MEMORY[0x1EEE9AC00](v88, v89);
  v465 = &v458 - v90;
  MEMORY[0x1EEE9AC00](v91, v92);
  v521 = &v458 - v93;
  MEMORY[0x1EEE9AC00](v94, v95);
  v496 = &v458 - v96;
  v97 = type metadata accessor for FormatModel();
  MEMORY[0x1EEE9AC00](v97 - 8, v98);
  v523 = &v458 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v533 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v533, v100);
  v507 = (&v458 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v102, v103);
  v508 = &v458 - v104;
  MEMORY[0x1EEE9AC00](v105, v106);
  v530 = &v458 - v107;
  MEMORY[0x1EEE9AC00](v108, v109);
  v532 = &v458 - v110;
  MEMORY[0x1EEE9AC00](v111, v112);
  v527 = (&v458 - v113);
  MEMORY[0x1EEE9AC00](v114, v115);
  v535 = (&v458 - v116);
  sub_1D5E2C2C8();
  v534 = v117;
  v505 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117, v118);
  v491 = &v458 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v120, v121);
  v531 = &v458 - v122;
  MEMORY[0x1EEE9AC00](v123, v124);
  v525 = &v458 - v125;
  MEMORY[0x1EEE9AC00](v126, v127);
  v528 = &v458 - v128;
  sub_1D70A3BB0();
  MEMORY[0x1EEE9AC00](v129 - 8, v130);
  v504 = &v458 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70A3C44();
  v478 = v132;
  MEMORY[0x1EEE9AC00](v132, v133);
  v458 = &v458 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v135, v136);
  ObjectType = (&v458 - v137);
  sub_1D70A2554(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], v23);
  MEMORY[0x1EEE9AC00](v138 - 8, v139);
  v141 = &v458 - v140;
  v488 = sub_1D72608BC();
  v142 = *(v488 - 8);
  MEMORY[0x1EEE9AC00](v488, v143);
  v470 = &v458 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70A2554(0, &unk_1EDF199D0, type metadata accessor for FeedGroupItem, MEMORY[0x1E69E6F90]);
  v146 = v145;
  v147 = type metadata accessor for FeedGroupItem();
  v148 = *(v147 - 8);
  v149 = *(v148 + 72);
  v150 = (*(v148 + 80) + 32) & ~*(v148 + 80);
  v515 = *(v148 + 80);
  v516 = v149;
  v517 = v146;
  v151 = swift_allocObject();
  v518 = xmmword_1D7273AE0;
  *(v151 + 16) = xmmword_1D7273AE0;
  v524 = v150;
  v152 = (v151 + v150);
  v514 = type metadata accessor for FormatContent.Resolved();
  v153 = *(v514 + 44);
  v512 = a1;
  v154 = *(a1 + v153);
  v479 = v9;
  if (a5)
  {

    v155 = a5;
  }

  else
  {
    v155 = MEMORY[0x1E69E7CC0];
  }

  *&v554 = v154;

  sub_1D5D505F0(v155);
  v156 = v554;
  if (a5)
  {
    v157 = v476;
  }

  else
  {
    v157 = MEMORY[0x1E69E7CC0];
  }

  v158 = v514;
  *&v554 = v489[5];

  sub_1D5D505F0(v157);
  v159 = v554;
  *v152 = v156;
  v152[1] = v159;
  swift_storeEnumTagMultiPayload();
  v160 = v490;

  v161 = sub_1D5D50638(v151, v160);
  swift_setDeallocating();
  sub_1D5BE6754(v152, type metadata accessor for FeedGroupItem);
  swift_deallocClassInstance();
  v562 = v161;
  v162 = v512;
  sub_1D70A3E54(v512 + v158[21], v141, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720], sub_1D70A2554);
  v163 = v488;
  if ((*(v142 + 48))(v141, 1, v488) == 1)
  {
    sub_1D5BEFFE8(v141, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  }

  else
  {
    v164 = v470;
    (*(v142 + 32))(v470, v141, v163);
    v165 = v524;
    v166 = swift_allocObject();
    *(v166 + 16) = v518;
    v167 = (v166 + v165);
    v168 = sub_1D726084C();
    v170 = v169;
    v171 = type metadata accessor for FeedSponsorshipBannerAd();
    (*(v142 + 16))(v167 + *(v171 + 20), v164, v163);
    *v167 = v168;
    v167[1] = v170;
    v158 = v514;
    swift_storeEnumTagMultiPayload();
    sub_1D5D51F5C(v166);
    swift_setDeallocating();
    sub_1D5BE6754(v167, type metadata accessor for FeedGroupItem);
    swift_deallocClassInstance();
    v172 = v164;
    v162 = v512;
    (*(v142 + 8))(v172, v163);
  }

  v173 = *(v162 + v158[13]);
  if (v173)
  {
    v174 = v524;
    v175 = swift_allocObject();
    *(v175 + 16) = v518;
    v176 = *(v162 + v158[18]);
    v177 = v175 + v174;
    v178 = *(v162 + v158[19]);
    *v177 = v173;
    *(v177 + 8) = v176;
    *(v177 + 16) = v178;
    swift_storeEnumTagMultiPayload();
    v179 = v176;
    swift_unknownObjectRetain();
    sub_1D5D51F5C(v175);
    swift_setDeallocating();
    sub_1D5BE6754(v177, type metadata accessor for FeedGroupItem);
    swift_deallocClassInstance();
  }

  v180 = v509;
  if (v509)
  {
    v181 = v524;
    v182 = swift_allocObject();
    *(v182 + 16) = v518;
    *(v182 + v181) = v180;
    swift_storeEnumTagMultiPayload();
    v183 = v180;
    sub_1D5D51F5C(v182);
    swift_setDeallocating();
    sub_1D5BE6754(v182 + v181, type metadata accessor for FeedGroupItem);
    swift_deallocClassInstance();
    v184 = [FCFeedDescriptor.feedTag.getter() asSportsEvent];
    swift_unknownObjectRelease();
    if (v184)
    {
      v185 = swift_allocObject();
      *(v185 + 16) = v518;
      v186 = v185 + v181;
      v187 = [swift_unknownObjectRetain() identifier];
      v188 = sub_1D726207C();
      v189 = v184;
      v191 = v190;

      *v186 = v188;
      *(v186 + 8) = v191;
      *(v186 + 16) = v189;
      *(v186 + 24) = 0;
      *(v186 + 32) = 0;
      swift_storeEnumTagMultiPayload();
      sub_1D5D51F5C(v185);
      swift_setDeallocating();
      v192 = v186;
      v162 = v512;
      sub_1D5BE6754(v192, type metadata accessor for FeedGroupItem);
      swift_deallocClassInstance();
      swift_unknownObjectRelease();
    }

    v158 = v514;
  }

  v509 = v147;
  v193 = *(v162 + v158[14]);
  if (!v193)
  {
    v232 = *(v162 + v158[15]);
    v233 = v526;
    if (!v232)
    {
      goto LABEL_51;
    }

    if (([v232 respondsToSelector_] & 1) == 0)
    {
      goto LABEL_51;
    }

    v234 = [v232 parentIssue];
    if (!v234)
    {
      goto LABEL_51;
    }

    v235 = v234;
    v490 = swift_allocObject();
    *(v490 + 16) = v518;
    v489 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
    sub_1D5E2C35C();
    v237 = v236;
    v238 = *(v236 - 8);
    v239 = v504;
    (*(v238 + 16))(v504, v506, v236);
    v240 = swift_allocObject();
    *(v240 + 16) = v235;
    v241 = v458;
    (*(v238 + 32))(v458, v239, v237);
    sub_1D70A3D74();
    v243 = &v241[*(v242 + 44)];
    *v243 = sub_1D70A3EC8;
    v243[1] = v240;
    sub_1D70A3CE0();
    v245 = &v241[*(v244 + 36)];
    *v245 = sub_1D70A2AB4;
    *(v245 + 1) = 0;
    v246 = &v241[*(v478 + 44)];
    *v246 = sub_1D70A2B08;
    *(v246 + 1) = 0;
    sub_1D5B85FD8(&qword_1EDF17BC0, sub_1D5E2C35C);
    v247 = v235;
    v248 = v241;
    v249 = v247;
    sub_1D7262BFC();
    *&v546 = v554;
    sub_1D7262C5C();
    v250 = v554;
    ObjectType = v249;
    if (v546 == v554)
    {
      goto LABEL_133;
    }

    v251 = (v505 + 16);
    v535 = (v505 + 8);
    v250 = v546;
    v252 = v534;
    v253 = v523;
    v254 = v491;
    while (1)
    {
      *&v538 = v250;
      v255 = sub_1D7262D0C();
      (*v251)(v254);
      v255(&v554, 0);
      sub_1D725CE7C();
      sub_1D683A158();
      v257 = *(v256 + 48);
      v258 = v508;
      sub_1D5BE6684(v253, v508, type metadata accessor for FeedItem);
      sub_1D683A1C4(v253 + v257);
      sub_1D5BE64C0(v258, v507, type metadata accessor for FeedItem);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (((1 << EnumCaseMultiPayload) & 0x3FFDF) != 0)
      {
        break;
      }

      v254 = v491;
      if (EnumCaseMultiPayload != 5)
      {
        goto LABEL_36;
      }

      v260 = v507[7];
      v560 = v507[6];
      v561[0] = v260;
      *(v561 + 9) = *(v507 + 121);
      v261 = v507[3];
      v556 = v507[2];
      v557 = v261;
      v262 = v507[5];
      v558 = v507[4];
      v559 = v262;
      v263 = v507[1];
      v554 = *v507;
      v555 = v263;
      sub_1D5BE6754(v508, type metadata accessor for FeedItem);
      v264 = [v554 identifier];
      v528 = sub_1D726207C();
      v266 = v265;

      v267 = [ObjectType identifier];
      v268 = sub_1D726207C();
      v270 = v269;

      if (v528 == v268 && v266 == v270)
      {

        v248 = v458;
LABEL_148:
        (*v535)(v254, v534);
        sub_1D5ECF320(&v554);
LABEL_132:
        v249 = ObjectType;
LABEL_133:
        sub_1D7262C5C();
        if (v250 == v554)
        {

          sub_1D5BE6754(v248, sub_1D70A3C44);
          v272 = 0;
          v162 = v512;
          v274 = v490;
          v449 = v524;
LABEL_137:
          v282 = v274 + v449;
          v283 = v249;
          v284 = [v283 identifier];
          goto LABEL_50;
        }

        v537 = v250;
        v450 = sub_1D7262D0C();
        v451 = v505;
        v452 = v525;
        v453 = v249;
        v454 = v534;
        (*(v505 + 16))(v525);
        v450(&v554, 0);
        sub_1D70942EC(v453, &v554);

        (*(v451 + 8))(v452, v454);
        v544 = v560;
        v545[0] = v561[0];
        *(v545 + 9) = *(v561 + 9);
        v540 = v556;
        v541 = v557;
        v542 = v558;
        v543 = v559;
        v538 = v554;
        v539 = v555;
        v552 = v560;
        v553[0] = v561[0];
        *(v553 + 9) = *(v561 + 9);
        v548 = v556;
        v549 = v557;
        v550 = v558;
        v551 = v559;
        v546 = v554;
        v547 = v555;
        sub_1D70A3E54(&v538, v536, &qword_1EDF34E30, &type metadata for FeedIssue, MEMORY[0x1E69E6720], sub_1D5D60AB4);
        sub_1D70A34D0(&v546, &qword_1EDF34E30, &type metadata for FeedIssue);
        v560 = v544;
        v561[0] = v545[0];
        *(v561 + 9) = *(v545 + 9);
        v556 = v540;
        v557 = v541;
        v558 = v542;
        v559 = v543;
        v554 = v538;
        v555 = v539;
        v455 = get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v554) == 1;
        result = v248;
        v274 = v490;
        if (!v455)
        {
          v272 = BYTE8(v545[1]);
          sub_1D5BE6754(result, sub_1D70A3C44);
          sub_1D70A34D0(&v538, &qword_1EDF34E30, &type metadata for FeedIssue);
          v162 = v512;
          v449 = v524;
          v249 = ObjectType;
          goto LABEL_137;
        }

LABEL_152:
        __break(1u);
        return result;
      }

      v271 = sub_1D72646CC();

      v248 = v458;
      if (v271)
      {
        goto LABEL_148;
      }

      sub_1D5ECF320(&v554);
      v252 = v534;
      v253 = v523;
LABEL_37:
      (*v535)(v254, v252);
      sub_1D7262C6C();
      sub_1D7262C5C();
      v250 = v546;
      if (v546 == v554)
      {
        v250 = v554;
        goto LABEL_132;
      }
    }

    sub_1D5BE6754(v507, type metadata accessor for FeedItem);
    v254 = v491;
LABEL_36:
    sub_1D5BE6754(v508, type metadata accessor for FeedItem);
    goto LABEL_37;
  }

  v490 = swift_allocObject();
  *(v490 + 16) = v518;
  v194 = objc_allocWithZone(MEMORY[0x1E69B52B8]);
  v195 = v193;
  v489 = [v194 init];
  sub_1D5E2C35C();
  v197 = v196;
  v198 = *(v196 - 8);
  v199 = v504;
  (*(v198 + 16))(v504, v506, v196);
  v200 = swift_allocObject();
  *(v200 + 16) = v195;
  v201 = ObjectType;
  (*(v198 + 32))(ObjectType, v199, v197);
  sub_1D70A3D74();
  v203 = &v201[*(v202 + 44)];
  *v203 = sub_1D70A3F00;
  v203[1] = v200;
  sub_1D70A3CE0();
  v205 = &v201[*(v204 + 36)];
  *v205 = sub_1D70A2AB4;
  *(v205 + 1) = 0;
  v206 = &v201[*(v478 + 44)];
  *v206 = sub_1D70A2B08;
  *(v206 + 1) = 0;
  sub_1D5B85FD8(&qword_1EDF17BC0, sub_1D5E2C35C);
  v207 = v195;
  sub_1D7262BFC();
  *&v546 = v554;
  sub_1D7262C5C();
  v208 = v554;
  v508 = v207;
  if (v546 == v554)
  {
    goto LABEL_45;
  }

  v209 = (v505 + 16);
  v210 = (v505 + 8);
  v208 = v546;
  v211 = v534;
  v212 = v523;
  v213 = v528;
  while (1)
  {
    *&v538 = v208;
    v214 = sub_1D7262D0C();
    (*v209)(v213);
    v214(&v554, 0);
    sub_1D725CE7C();
    sub_1D683A158();
    v216 = *(v215 + 48);
    v217 = v535;
    sub_1D5BE6684(v212, v535, type metadata accessor for FeedItem);
    sub_1D683A1C4(v212 + v216);
    v218 = v527;
    sub_1D5BE64C0(v217, v527, type metadata accessor for FeedItem);
    v219 = swift_getEnumCaseMultiPayload();
    if (((1 << v219) & 0x3FFDF) != 0)
    {
      sub_1D5BE6754(v218, type metadata accessor for FeedItem);
      v213 = v528;
LABEL_21:
      sub_1D5BE6754(v535, type metadata accessor for FeedItem);
      goto LABEL_22;
    }

    v213 = v528;
    if (v219 != 5)
    {
      goto LABEL_21;
    }

    v220 = v218[6];
    v221 = v218[7];
    v222 = v218[4];
    v559 = v218[5];
    v560 = v220;
    v561[0] = v221;
    *(v561 + 9) = *(v218 + 121);
    v223 = v218[3];
    v556 = v218[2];
    v557 = v223;
    v558 = v222;
    v224 = v218[1];
    v554 = *v218;
    v555 = v224;
    sub_1D5BE6754(v535, type metadata accessor for FeedItem);
    v225 = [v554 identifier];
    v491 = sub_1D726207C();
    v507 = v226;

    v227 = [v508 identifier];
    v228 = sub_1D726207C();
    v230 = v229;

    if (v491 == v228 && v507 == v230)
    {
      break;
    }

    v231 = sub_1D72646CC();

    if (v231)
    {
      goto LABEL_146;
    }

    sub_1D5ECF320(&v554);
    v211 = v534;
    v212 = v523;
LABEL_22:
    (*v210)(v213, v211);
    v201 = ObjectType;
    sub_1D7262C6C();
    sub_1D7262C5C();
    v208 = v546;
    if (v546 == v554)
    {
      v208 = v554;
      goto LABEL_44;
    }
  }

LABEL_146:
  (*v210)(v213, v534);
  sub_1D5ECF320(&v554);
  v201 = ObjectType;
LABEL_44:
  v207 = v508;
LABEL_45:
  sub_1D7262C5C();
  if (v208 == v554)
  {

    sub_1D5BE6754(v201, sub_1D70A3C44);
    v272 = 0;
    v273 = v524;
    v162 = v512;
    v274 = v490;
    goto LABEL_49;
  }

  v537 = v208;
  v275 = sub_1D7262D0C();
  v276 = v505;
  v277 = v525;
  v278 = v201;
  v279 = v207;
  v280 = v534;
  (*(v505 + 16))(v525);
  v275(&v554, 0);
  sub_1D70942EC(v279, &v554);

  (*(v276 + 8))(v277, v280);
  v544 = v560;
  v545[0] = v561[0];
  *(v545 + 9) = *(v561 + 9);
  v540 = v556;
  v541 = v557;
  v542 = v558;
  v543 = v559;
  v538 = v554;
  v539 = v555;
  v551 = v559;
  v552 = v560;
  v553[0] = v561[0];
  *(v553 + 9) = *(v561 + 9);
  v548 = v556;
  v549 = v557;
  v550 = v558;
  v546 = v554;
  v547 = v555;
  sub_1D70A3E54(&v538, v536, &qword_1EDF34E30, &type metadata for FeedIssue, MEMORY[0x1E69E6720], sub_1D5D60AB4);
  sub_1D70A34D0(&v546, &qword_1EDF34E30, &type metadata for FeedIssue);
  v560 = v544;
  v561[0] = v545[0];
  *(v561 + 9) = *(v545 + 9);
  v556 = v540;
  v557 = v541;
  v558 = v542;
  v559 = v543;
  v554 = v538;
  v555 = v539;
  result = get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v554);
  v273 = v524;
  v274 = v490;
  if (result == 1)
  {
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  v272 = BYTE8(v545[1]);
  sub_1D5BE6754(v278, sub_1D70A3C44);
  sub_1D70A34D0(&v538, &qword_1EDF34E30, &type metadata for FeedIssue);
  v162 = v512;
  v207 = v508;
LABEL_49:
  v282 = v274 + v273;
  v283 = v207;
  v284 = [v283 identifier];
LABEL_50:
  v285 = v284;
  v286 = sub_1D726207C();
  v288 = v287;

  *v282 = v283;
  *(v282 + 8) = v286;
  *(v282 + 16) = v288;
  *(v282 + 24) = 0;
  *(v282 + 32) = 0;
  *(v282 + 40) = 0;
  *(v282 + 48) = 1;
  *(v282 + 56) = v489;
  *(v282 + 64) = 0;
  *(v282 + 72) = xmmword_1D7279980;
  *(v282 + 88) = 0u;
  *(v282 + 104) = 0u;
  *(v282 + 120) = 0;
  *(v282 + 128) = 5;
  *(v282 + 136) = v272 & 1;
  swift_storeEnumTagMultiPayload();
  sub_1D5D51F5C(v274);
  swift_setDeallocating();
  sub_1D5BE6754(v282, type metadata accessor for FeedGroupItem);
  swift_deallocClassInstance();

  v158 = v514;
  v233 = v526;
LABEL_51:
  v289 = *(v162 + v158[15]);
  if (!v289)
  {
    goto LABEL_79;
  }

  sub_1D5E2C35C();
  v291 = v290;
  v292 = *(v290 - 8);
  v293 = v504;
  (*(v292 + 16))(v504, v506, v290);
  v294 = swift_allocObject();
  *(v294 + 16) = v289;
  (*(v292 + 32))(v233, v293, v291);
  sub_1D70A3AB8(0);
  v296 = (v233 + *(v295 + 44));
  *v296 = sub_1D70A3E4C;
  v296[1] = v294;
  sub_1D70A3A24();
  v298 = (v233 + *(v297 + 36));
  *v298 = sub_1D70A2874;
  v298[1] = 0;
  v299 = (v233 + *(v475 + 44));
  *v299 = sub_1D70A293C;
  v299[1] = 0;
  sub_1D5B85FD8(&qword_1EDF17BC0, sub_1D5E2C35C);
  v535 = v289;
  swift_unknownObjectRetain_n();
  sub_1D7262BFC();
  *&v546 = v554;
  sub_1D7262C5C();
  v300 = v554;
  if (v546 != v554)
  {
    ObjectType = (v505 + 16);
    v301 = (v505 + 8);
    v302 = (v499 + 48);
    v300 = v546;
    while (1)
    {
      *&v538 = v300;
      v303 = sub_1D7262D0C();
      v304 = v525;
      v305 = v534;
      (*ObjectType)(v525);
      v303(&v554, 0);
      v306 = v521;
      sub_1D70945C4(v535, v521);
      (*v301)(v304, v305);
      LODWORD(v304) = (*v302)(v306, 1, v522);
      sub_1D5BEFFE8(v306, qword_1EDF42030, type metadata accessor for FeedHeadline);
      if (v304 != 1)
      {
        break;
      }

      sub_1D7262C6C();
      sub_1D7262C5C();
      v300 = v546;
      if (v546 == v554)
      {
        v300 = v554;
        break;
      }
    }
  }

  sub_1D7262C5C();
  if (v300 == v554)
  {
    swift_unknownObjectRelease();
    v307 = 1;
    v308 = v522;
    v309 = v503;
    v310 = v498;
    v311 = v496;
    goto LABEL_61;
  }

  *&v546 = v300;
  v312 = sub_1D7262D0C();
  v313 = v505;
  v314 = v525;
  v315 = v534;
  (*(v505 + 16))(v525);
  v312(&v554, 0);
  v316 = v465;
  sub_1D70945C4(v535, v465);
  swift_unknownObjectRelease();
  (*(v313 + 8))(v314, v315);
  v317 = v464;
  sub_1D70A3E54(v316, v464, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720], sub_1D70A2554);
  v308 = v522;
  result = (*(v499 + 48))(v317, 1, v522);
  v309 = v503;
  if (result == 1)
  {
    goto LABEL_150;
  }

  v318 = v317;
  v311 = v496;
  sub_1D5BE6684(v318, v496, type metadata accessor for FeedHeadline);
  sub_1D5BEFFE8(v316, qword_1EDF42030, type metadata accessor for FeedHeadline);
  v307 = 0;
  v310 = v498;
LABEL_61:
  v319 = v499;
  (*(v499 + 56))(v311, v307, 1, v308);
  sub_1D5BE6754(v526, sub_1D70A3978);
  v320 = v311;
  v321 = v471;
  sub_1D70A3E54(v320, v471, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720], sub_1D70A2554);
  if ((*(v319 + 48))(v321, 1, v308) == 1)
  {
    sub_1D5BEFFE8(v321, qword_1EDF42030, type metadata accessor for FeedHeadline);
    v322 = v480;
    v323 = v480[6];
    v324 = type metadata accessor for SharedItem();
    (*(*(v324 - 8) + 56))(&v310[v323], 1, 1, v324);
    *v310 = 258;
    v310[v322[7]] = 1;
    v310[v322[8]] = 0;
    v310[v322[9]] = 0;
    v310[v322[10]] = 0;
  }

  else
  {
    v325 = v461;
    sub_1D5BE64C0(v321 + v308[10], v461, type metadata accessor for FeedHeadline.State);
    sub_1D5BE6754(v321, type metadata accessor for FeedHeadline);
    sub_1D5BE6684(v325, v310, type metadata accessor for FeedHeadline.State);
  }

  v326 = swift_allocObject();
  *(v326 + 16) = v518;
  v327 = sub_1D726045C();
  v328 = v497;
  (*(*(v327 - 8) + 56))(v497, 1, 1, v327);
  v329 = v472;
  sub_1D5BE64C0(v310, v472, type metadata accessor for FeedHeadline.State);
  *(v309 + v308[12]) = xmmword_1D727C330;
  v330 = v535;
  ObjectType = swift_getObjectType();
  v331 = [swift_unknownObjectRetain() identifier];
  v332 = sub_1D726207C();
  v334 = v333;

  *v503 = v332;
  v335 = v503;
  v503[1] = v334;
  *(v335 + 40) = v330;
  *(v335 + 48) = 0;
  sub_1D70A3E54(v328, v335 + v308[11], &qword_1EDF43990, MEMORY[0x1E69B3E58], MEMORY[0x1E69E6720], sub_1D70A2554);
  sub_1D5BE64C0(v329, v335 + v308[10], type metadata accessor for FeedHeadline.State);
  *(v335 + v308[14]) = 0;
  *(v335 + 56) = 0;
  v336 = [swift_unknownObjectRetain() title];
  if (v336)
  {
    v337 = v336;
    v338 = [v336 ne_isNaturallyRTL];

    v339 = v338;
  }

  else
  {
    v339 = 0;
  }

  v340 = v512;
  v341 = v496;
  *(v335 + 16) = v339;
  *(v335 + 24) = 0;
  sub_1D5BC7BD4(&v554);
  swift_unknownObjectRelease();
  v342 = v480;
  if (*(v329 + v480[8]) - 1 <= 1 && (v554 & 0x1000) == 0)
  {
    *&v554 = v554 | 0x1000;
  }

  v343 = *(v329 + v480[10]);
  v344 = 0x80000000;
  if (!*(v329 + v480[10]))
  {
    v344 = 0x100000000;
  }

  if ((v554 & v344) != 0)
  {
    v344 = 0;
  }

  *(v335 + 32) = v554 | v344;
  v162 = v340;
  if (*(v329 + v342[7]))
  {
    if (*(v329 + v342[9]))
    {
      sub_1D5BE6754(v329, type metadata accessor for FeedHeadline.State);
      sub_1D5BEFFE8(v497, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
      v345 = 1;
    }

    else if (v343)
    {
      v413 = [v535 sourceChannel];
      sub_1D5BE6754(v329, type metadata accessor for FeedHeadline.State);
      sub_1D5BEFFE8(v497, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
      v345 = 2;
      if (v413)
      {
        v345 = v413;
      }
    }

    else
    {
      sub_1D5BE6754(v329, type metadata accessor for FeedHeadline.State);
      sub_1D5BEFFE8(v497, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
      v345 = 2;
    }
  }

  else
  {
    sub_1D5BE6754(v329, type metadata accessor for FeedHeadline.State);
    sub_1D5BEFFE8(v497, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
    v345 = 0;
  }

  *(v335 + v308[13]) = v345;
  v346 = v524;
  sub_1D5BE6684(v335, v326 + v524, type metadata accessor for FeedHeadline);
  swift_storeEnumTagMultiPayload();
  sub_1D5D51F5C(v326);
  swift_setDeallocating();
  sub_1D5BE6754(v326 + v346, type metadata accessor for FeedGroupItem);
  swift_deallocClassInstance();
  swift_unknownObjectRelease();
  sub_1D5BE6754(v498, type metadata accessor for FeedHeadline.State);
  sub_1D5BEFFE8(v341, qword_1EDF42030, type metadata accessor for FeedHeadline);
  v158 = v514;
LABEL_79:
  v347 = v485;
  sub_1D70A3E54(v162 + v158[16], v485, qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved, MEMORY[0x1E69E6720], sub_1D70A2554);
  v348 = v486;
  if ((*(v484 + 48))(v347, 1, v486) == 1)
  {
    sub_1D5BEFFE8(v347, qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved);
    v349 = v511;
    goto LABEL_87;
  }

  v350 = v487;
  sub_1D5BE6684(v347, v487, type metadata accessor for FormatWebEmbed.Resolved);
  v535 = swift_allocObject();
  *(v535 + 1) = v518;
  v351 = *(v350 + 8);
  ObjectType = *v350;
  v507 = v351;
  v352 = v350 + v348[5];
  v353 = type metadata accessor for FormatWebEmbed();
  v354 = v353[5];
  v355 = *(v483 + 16);
  v526 = (v483 + 16);
  v528 = v355;
  (v355)(v501, v352 + v354, v502);
  v356 = v353[6];
  v527 = MEMORY[0x1E6968FB0];
  v357 = v348;
  v358 = MEMORY[0x1E69E6720];
  sub_1D70A3E54(v352 + v356, v500, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D70A2554);
  v359 = *(v350 + v357[6]);
  v360 = *(v350 + v357[7]);

  v361 = v481;
  sub_1D5EF1350(v350, v481);
  v362 = v350 + v357[8];
  v363 = v482;
  sub_1D70A3E54(v362, v482, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, v358, sub_1D70A2554);
  v364 = v353[11];
  LODWORD(v522) = *(v352 + v353[10]);
  v521 = sub_1D5EEC8D4(*(v352 + v353[12]), *(v352 + v364));
  v508 = v365;
  v366 = v477;
  *v477 = xmmword_1D727F470;
  *(v366 + 16) = 1;
  *(v366 + 24) = xmmword_1D727F480;
  v367 = v507;
  *(v366 + 40) = ObjectType;
  *(v366 + 48) = v367;
  v368 = v466;
  (v528)(v366 + *(v466 + 32), v501, v502);
  sub_1D70A3E54(v500, v366 + v368[9], &qword_1EDF45B40, v527, v358, sub_1D70A2554);
  *(v366 + v368[10]) = v359;
  *(v366 + v368[11]) = v360;
  sub_1D70A3E54(v361, v366 + v368[12], qword_1EDF42030, type metadata accessor for FeedHeadline, v358, sub_1D70A2554);
  sub_1D70A3E54(v363, v366 + v368[13], qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, v358, sub_1D70A2554);
  *(v366 + v368[14]) = v522 & 1;
  v369 = (v366 + v368[15]);
  v370 = v508;
  *v369 = v521;
  v369[1] = v370;
  v371 = v467;
  sub_1D70A3E54(v363, v467, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, v358, sub_1D70A2554);
  if ((*(v468 + 48))(v371, 1, v469) == 1)
  {
    sub_1D5BEFFE8(v371, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    goto LABEL_85;
  }

  v372 = v459;
  sub_1D5BE64C0(v371, v459, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BE6754(v372, type metadata accessor for WebEmbedDataVisualization);
    sub_1D5BE6754(v371, type metadata accessor for WebEmbedDataVisualization);
LABEL_85:
    v349 = v511;
    v162 = v512;
    v373 = v535;
    sub_1D5BEFFE8(v482, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    sub_1D5BEFFE8(v481, qword_1EDF42030, type metadata accessor for FeedHeadline);
    sub_1D5BEFFE8(v500, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    (*(v483 + 8))(v501, v502);
  }

  else
  {
    v446 = *v372;
    sub_1D5BE6754(v371, type metadata accessor for WebEmbedDataVisualization);
    v447 = v446 >> 61;
    v349 = v511;
    v162 = v512;
    if ((v446 >> 61) <= 2)
    {
      if (v447)
      {
        if (v447 == 1)
        {
          sub_1D5BEFFE8(v482, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
          sub_1D5BEFFE8(v481, qword_1EDF42030, type metadata accessor for FeedHeadline);
          sub_1D5BEFFE8(v500, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          (*(v483 + 8))(v501, v502);
          *v366 = 8390656;
          v448 = 0x2000800800;
        }

        else
        {
          sub_1D5BEFFE8(v482, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
          sub_1D5BEFFE8(v481, qword_1EDF42030, type metadata accessor for FeedHeadline);
          sub_1D5BEFFE8(v500, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          (*(v483 + 8))(v501, v502);
          *v366 = 536872960;
          v448 = 0x2020000800;
        }
      }

      else
      {
        v448 = 0x2000400800;
        *v366 = 4196352;

        v456 = SportsScoreDataVisualization.isFeatured.getter();

        sub_1D5BEFFE8(v482, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        sub_1D5BEFFE8(v481, qword_1EDF42030, type metadata accessor for FeedHeadline);
        sub_1D5BEFFE8(v500, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        (*(v483 + 8))(v501, v502);
        if (v456)
        {
          *v477 = 4196384;
          v448 = 0x2000400820;
        }
      }
    }

    else if (v447 > 4)
    {
      if (v447 == 5)
      {
        sub_1D5BEFFE8(v482, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        sub_1D5BEFFE8(v481, qword_1EDF42030, type metadata accessor for FeedHeadline);
        sub_1D5BEFFE8(v500, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        (*(v483 + 8))(v501, v502);
        *v366 = 0x800000800;
        v448 = 0x2800000800;
      }

      else
      {
        sub_1D5BEFFE8(v482, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        sub_1D5BEFFE8(v481, qword_1EDF42030, type metadata accessor for FeedHeadline);
        sub_1D5BEFFE8(v500, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        (*(v483 + 8))(v501, v502);
        *v366 = 0x1000000800;
        v448 = 0x3000000800;
      }
    }

    else if (v447 == 3)
    {
      sub_1D5BEFFE8(v482, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
      sub_1D5BEFFE8(v481, qword_1EDF42030, type metadata accessor for FeedHeadline);
      sub_1D5BEFFE8(v500, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      (*(v483 + 8))(v501, v502);
      *v366 = 0x200000800;
      v448 = 0x2200000800;
    }

    else
    {
      sub_1D5BEFFE8(v482, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
      sub_1D5BEFFE8(v481, qword_1EDF42030, type metadata accessor for FeedHeadline);
      sub_1D5BEFFE8(v500, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      (*(v483 + 8))(v501, v502);
      *v366 = 0x400000800;
      v448 = 0x2400000800;
    }

    *&v554 = v446;
    v457 = SportsDataVisualization.event.getter();

    v366 = v477;
    v373 = v535;
    if (v457)
    {
      swift_unknownObjectRelease();
      *v366 = v448;
    }
  }

  v374 = v524;
  sub_1D5BE6684(v366, v373 + v524, type metadata accessor for FeedWebEmbed);
  swift_storeEnumTagMultiPayload();
  sub_1D5D51F5C(v373);
  swift_setDeallocating();
  sub_1D5BE6754(v373 + v374, type metadata accessor for FeedGroupItem);
  swift_deallocClassInstance();
  sub_1D5BE6754(v487, type metadata accessor for FormatWebEmbed.Resolved);
  v158 = v514;
LABEL_87:
  v375 = *(v162 + v158[17]);
  if (!v375)
  {
    return v562;
  }

  sub_1D5E2C35C();
  v377 = v376;
  v378 = *(v376 - 1);
  v379 = v504;
  (*(v378 + 16))(v504, v506, v376);
  v380 = swift_allocObject();
  *(v380 + 16) = v375;
  (*(v378 + 32))(v349, v379, v377);
  sub_1D70A3950(0);
  v382 = (v349 + *(v381 + 44));
  *v382 = sub_1D70A3E44;
  v382[1] = v380;
  sub_1D70A38BC();
  v384 = (v349 + *(v383 + 36));
  *v384 = sub_1D70A285C;
  v384[1] = 0;
  v385 = (v349 + *(v473 + 44));
  *v385 = sub_1D70A28F4;
  v385[1] = 0;
  v386 = sub_1D5B85FD8(&qword_1EDF17BC0, sub_1D5E2C35C);
  v521 = v375;
  sub_1D7262BFC();
  *&v546 = v554;
  sub_1D7262C5C();
  v387 = v554;
  v388 = v513;
  v389 = v510;
  if (v546 == v554)
  {
    goto LABEL_110;
  }

  v526 = (v505 + 16);
  v535 = (v495 + 56);
  ObjectType = (v495 + 48);
  v522 = v505 + 8;
  v387 = v546;
  v528 = v377;
  v527 = v386;
  while (2)
  {
    *&v538 = v387;
    v390 = sub_1D7262D0C();
    (*v526)(v531);
    v390(&v554, 0);
    v391 = v523;
    sub_1D725CE7C();
    sub_1D683A158();
    v393 = *(v392 + 48);
    v394 = v532;
    sub_1D5BE6684(v391, v532, type metadata accessor for FeedItem);
    sub_1D683A1C4(v391 + v393);
    sub_1D5BE64C0(v394, v530, type metadata accessor for FeedItem);
    v395 = swift_getEnumCaseMultiPayload();
    v396 = 1;
    if (((1 << v395) & 0x3EFFF) != 0)
    {
      sub_1D5BE6754(v530, type metadata accessor for FeedItem);
      v396 = 1;
    }

    else if (v395 == 12)
    {
      sub_1D5BE6684(v530, v389, type metadata accessor for FeedRecipe);
      v396 = 0;
    }

    v397 = *v535;
    (*v535)(v389, v396, 1, v388);
    sub_1D5BE6754(v532, type metadata accessor for FeedItem);
    v398 = *ObjectType;
    if ((*ObjectType)(v389, 1, v388) == 1)
    {
      v399 = v349;
      sub_1D5BEFFE8(v389, qword_1EDF34D20, type metadata accessor for FeedRecipe);
      v400 = 1;
      v401 = v519;
      goto LABEL_101;
    }

    v402 = v520;
    sub_1D5BE6684(v389, v520, type metadata accessor for FeedRecipe);
    v403 = [*(v402 + 56) identifier];
    v404 = sub_1D726207C();
    v406 = v405;

    v407 = [v521 identifier];
    v408 = sub_1D726207C();
    v410 = v409;

    if (v404 == v408 && v406 == v410)
    {

      v399 = v511;
      v401 = v519;
      goto LABEL_98;
    }

    v411 = sub_1D72646CC();

    v399 = v511;
    v401 = v519;
    if (v411)
    {
LABEL_98:
      sub_1D5BE6684(v520, v401, type metadata accessor for FeedRecipe);
      v400 = 0;
    }

    else
    {
      sub_1D5BE6754(v520, type metadata accessor for FeedRecipe);
      v400 = 1;
    }

    v388 = v513;
    v389 = v510;
LABEL_101:
    (v397)(v401, v400, 1, v388);
    (*v522)(v531, v534);
    v412 = v398(v401, 1, v388);
    sub_1D5BEFFE8(v401, qword_1EDF34D20, type metadata accessor for FeedRecipe);
    v349 = v399;
    if (v412 != 1)
    {
      goto LABEL_110;
    }

    sub_1D7262C6C();
    sub_1D7262C5C();
    v387 = v546;
    if (v546 != v554)
    {
      continue;
    }

    break;
  }

  v387 = v554;
LABEL_110:
  sub_1D7262C5C();
  if (v387 == v554)
  {

    v414 = 1;
    v415 = v494;
    v416 = v492;
    v417 = v474;
    goto LABEL_114;
  }

  *&v546 = v387;
  v418 = sub_1D7262D0C();
  v419 = v505;
  v420 = v525;
  v421 = v534;
  (*(v505 + 16))(v525);
  v418(&v554, 0);
  v422 = v463;
  v423 = v521;
  sub_1D7094960(v521, v463);

  (*(v419 + 8))(v420, v421);
  v424 = v462;
  sub_1D70A3E54(v422, v462, qword_1EDF34D20, type metadata accessor for FeedRecipe, MEMORY[0x1E69E6720], sub_1D70A2554);
  result = (*(v495 + 48))(v424, 1, v388);
  v417 = v474;
  if (result == 1)
  {
    goto LABEL_151;
  }

  v425 = v424;
  v416 = v492;
  sub_1D5BE6684(v425, v492, type metadata accessor for FeedRecipe);
  sub_1D5BEFFE8(v422, qword_1EDF34D20, type metadata accessor for FeedRecipe);
  v414 = 0;
  v415 = v494;
LABEL_114:
  v426 = v495;
  (*(v495 + 56))(v416, v414, 1, v388);
  sub_1D5BE6754(v349, sub_1D70A3810);
  sub_1D70A3E54(v416, v417, qword_1EDF34D20, type metadata accessor for FeedRecipe, MEMORY[0x1E69E6720], sub_1D70A2554);
  if ((*(v426 + 48))(v417, 1, v388) == 1)
  {
    sub_1D5BEFFE8(v417, qword_1EDF34D20, type metadata accessor for FeedRecipe);
    v427 = v479;
    v428 = *(v479 + 20);
    v429 = type metadata accessor for SharedItem();
    (*(*(v429 - 8) + 56))(&v415[v428], 1, 1, v429);
    *v415 = 0;
    v415[*(v427 + 24)] = 0;
  }

  else
  {
    v430 = v460;
    sub_1D5BE64C0(v417 + v388[9], v460, type metadata accessor for FeedRecipe.State);
    sub_1D5BE6754(v417, type metadata accessor for FeedRecipe);
    sub_1D5BE6684(v430, v415, type metadata accessor for FeedRecipe.State);
  }

  v431 = v388;
  v432 = v524;
  v433 = swift_allocObject();
  *(v433 + 16) = v518;
  v434 = v433 + v432;
  v435 = v493;
  sub_1D5BE64C0(v415, v493, type metadata accessor for FeedRecipe.State);
  *(v434 + 16) = 0;
  *(v434 + 24) = 1;
  *(v434 + 32) = xmmword_1D727C320;
  v436 = v521;
  v437 = [v436 identifier];
  v438 = sub_1D726207C();
  v440 = v439;

  *v434 = v438;
  *(v434 + 8) = v440;
  *(v434 + 56) = v436;
  sub_1D5BE64C0(v435, v433 + v432 + v431[9], type metadata accessor for FeedRecipe.State);
  v441 = v433 + v432 + v431[10];
  *(v441 + 32) = 0;
  *v441 = 0u;
  *(v441 + 16) = 0u;
  *(v434 + v431[11]) = 0;
  if (*(v435 + *(v479 + 24)) == 1)
  {
    v442 = [v436 sourceChannel];
  }

  else
  {
    v442 = 2;
  }

  sub_1D5BE6754(v493, type metadata accessor for FeedRecipe.State);
  *(v434 + 48) = v442;
  v443 = v513;
  v444 = v434 + *(v513 + 48);
  *(v444 + 32) = 0;
  *v444 = 0u;
  *(v444 + 16) = 0u;
  v445 = v434 + *(v443 + 52);
  *(v445 + 32) = 0;
  *v445 = 0u;
  *(v445 + 16) = 0u;
  swift_storeEnumTagMultiPayload();
  sub_1D5D51F5C(v433);
  swift_setDeallocating();
  sub_1D5BE6754(v434, type metadata accessor for FeedGroupItem);
  swift_deallocClassInstance();

  sub_1D5BE6754(v494, type metadata accessor for FeedRecipe.State);
  sub_1D5BEFFE8(v492, qword_1EDF34D20, type metadata accessor for FeedRecipe);
  return v562;
}

uint64_t sub_1D7092D6C(uint64_t a1, uint64_t a2, __int128 *a3, void (**a4)(uint64_t, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v69 = a4;
  v65 = a1;
  sub_1D5E2C2C8();
  v68 = v16;
  v60 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v63 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v62 = &v56 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v59 = &v56 - v24;
  sub_1D70A377C();
  v64 = v25 - 8;
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v57 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E2C35C();
  v67 = v28;
  v61 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v58 = &v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a3[3];
  v73 = a3[2];
  v74 = v31;
  v75 = a3[4];
  v32 = a3[1];
  v71 = *a3;
  v72 = v32;
  FormatContentSubgroup.Resolved.feedItemIdentifiers.getter();
  v34 = v33;
  sub_1D5D55530(a6, a7);

  v35 = sub_1D5D55574(v34, a6, a7, a8, a9, a5, a1, a2);

  sub_1D5D559EC(a6, a7);

  v66 = sub_1D5B86020(v35);

  v36 = a3[3];
  v73 = a3[2];
  v74 = v36;
  v75 = a3[4];
  v37 = a3[1];
  v71 = *a3;
  v72 = v37;
  v38 = FormatContentSubgroup.Resolved.placeholderIdentifiers.getter();

  v39 = sub_1D5D5600C(v38, v65, a2);

  v65 = sub_1D5B86020(v39);

  (*(v61 + 16))(v58, v69, v67);
  sub_1D5B85FD8(&qword_1EDF17BC8, sub_1D5E2C35C);
  v40 = v57;
  sub_1D726238C();
  v41 = *(v64 + 44);
  v42 = sub_1D5B85FD8(&qword_1EDF17BC0, sub_1D5E2C35C);
  sub_1D7262C5C();
  if (*(v40 + v41) == v71)
  {
    v64 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v61 = v60 + 16;
    v69 = (v60 + 32);
    v58 = (v60 + 8);
    v64 = MEMORY[0x1E69E7CC0];
    v44 = v59;
    v45 = v68;
    do
    {
      v46 = v40;
      v47 = sub_1D7262D0C();
      v48 = v62;
      (*v61)(v62);
      v47(&v71, 0);
      v49 = v42;
      sub_1D7262C6C();
      v50 = *v69;
      (*v69)(v44, v48, v45);
      if (sub_1D7094CFC(v44, v66, v65))
      {
        v50(v63, v44, v45);
        v51 = v64;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D69974DC(0, *(v51 + 16) + 1, 1);
          v51 = v70;
        }

        v54 = *(v51 + 16);
        v53 = *(v51 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_1D69974DC(v53 > 1, v54 + 1, 1);
          v51 = v70;
        }

        *(v51 + 16) = v54 + 1;
        v55 = (*(v60 + 80) + 32) & ~*(v60 + 80);
        v64 = v51;
        v50(v51 + v55 + *(v60 + 72) * v54, v63, v68);
        v44 = v59;
      }

      else
      {
        (*v58)(v44, v45);
      }

      v40 = v46;
      v42 = v49;
      sub_1D7262C5C();
    }

    while (*(v46 + v41) != v71);
  }

  sub_1D5BE6754(v40, sub_1D70A377C);
  return v64;
}

uint64_t sub_1D7093400@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v10 = a1[4];
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v13 = *(type metadata accessor for FormatContentSlotItemObject.Resolved() - 8);
    v14 = v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v15 = *(v13 + 72);
    do
    {
      result = sub_1D7093A04(v14, a2, a3, a4, a5, a6, a7, a8, a10, a1);
      v17 = *(result + 16);
      v18 = *(v12 + 16);
      v19 = v18 + v17;
      if (__OFADD__(v18, v17))
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v20 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) != 0 && v19 <= *(v12 + 24) >> 1)
      {
        if (!*(v20 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v18 <= v19)
        {
          v21 = v18 + v17;
        }

        else
        {
          v21 = v18;
        }

        result = sub_1D5D6149C(result, v21, 1, v12);
        v12 = result;
        if (!*(v20 + 16))
        {
LABEL_3:

          if (v17)
          {
            goto LABEL_53;
          }

          goto LABEL_4;
        }
      }

      if ((*(v12 + 24) >> 1) - *(v12 + 16) < v17)
      {
        goto LABEL_54;
      }

      swift_arrayInitWithCopy();

      if (v17)
      {
        v22 = *(v12 + 16);
        v23 = __OFADD__(v22, v17);
        v24 = v22 + v17;
        if (v23)
        {
          goto LABEL_55;
        }

        *(v12 + 16) = v24;
      }

LABEL_4:
      v14 += v15;
      --v11;
    }

    while (v11);
  }

  v88 = v12;
  sub_1D5D60AB4(0, &qword_1EDF1B310, &type metadata for SlotReference, MEMORY[0x1E69E62F8]);
  sub_1D5D56E88(&unk_1EDF1B300, &qword_1EDF1B310, &type metadata for SlotReference);
  sub_1D5D56EE0();
  v84 = sub_1D72623BC();
  v25 = *(v12 + 16);
  v80 = a1[1];
  v82 = *a1;
  if (v25)
  {
    v88 = MEMORY[0x1E69E7CC0];

    sub_1D5BFC364(0, v25, 0);
    v26 = v88;
    v27 = (v12 + 40);
    do
    {
      v29 = *(v27 - 1);
      v28 = *v27;
      v88 = v26;
      v31 = *(v26 + 16);
      v30 = *(v26 + 24);

      if (v31 >= v30 >> 1)
      {
        sub_1D5BFC364((v30 > 1), v31 + 1, 1);
        v26 = v88;
      }

      *(v26 + 16) = v31 + 1;
      v32 = v26 + 16 * v31;
      *(v32 + 32) = v29;
      *(v32 + 40) = v28;
      v27 += 6;
      --v25;
    }

    while (v25);
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  v78 = sub_1D5B86020(v26);

  sub_1D5D56F34();
  result = sub_1D72640FC();
  v33 = result;
  v34 = 0;
  v36 = v84 + 64;
  v35 = *(v84 + 64);
  v37 = 1 << *(v84 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v35;
  v40 = (v37 + 63) >> 6;
  v41 = result + 64;
  if ((v38 & v35) != 0)
  {
    do
    {
      v42 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
LABEL_34:
      v45 = v42 | (v34 << 6);
      v46 = (*(v84 + 48) + 16 * v45);
      v47 = *v46;
      result = v46[1];
      v48 = *(*(v84 + 56) + 48 * v45 + 16);
      *(v41 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      v49 = (v33[6] + 16 * v45);
      *v49 = v47;
      v49[1] = result;
      *(v33[7] + 8 * v45) = v48;
      v50 = v33[2];
      v23 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v23)
      {
        goto LABEL_56;
      }

      v33[2] = v51;
    }

    while (v39);
  }

  v43 = v34;
  while (1)
  {
    v34 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v34 >= v40)
    {
      break;
    }

    v44 = *(v36 + 8 * v34);
    ++v43;
    if (v44)
    {
      v42 = __clz(__rbit64(v44));
      v39 = (v44 - 1) & v44;
      goto LABEL_34;
    }
  }

  sub_1D5D56F9C();
  result = sub_1D72640FC();
  v52 = result;
  v53 = 0;
  v54 = 1 << *(v84 + 32);
  v55 = *(v84 + 64);
  v56 = -1;
  if (v54 < 64)
  {
    v56 = ~(-1 << v54);
  }

  v57 = v56 & v55;
  v58 = (v54 + 63) >> 6;
  v59 = result + 64;
  if ((v56 & v55) == 0)
  {
LABEL_41:
    v61 = v53;
    while (1)
    {
      v53 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        goto LABEL_51;
      }

      if (v53 >= v58)
      {
        v70 = sub_1D5D57034(v84);

        v72 = a1[3];
        v88 = a1[2];
        v71 = v88;
        v87 = v72;
        *a9 = v82;
        a9[1] = v80;
        a9[2] = v78;
        a9[3] = v33;
        a9[4] = v52;
        a9[5] = v70;
        a9[6] = v71;
        a9[7] = v72;
        sub_1D70A3E54(&v88, v86, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8], sub_1D70A2554);
        return sub_1D70A36EC(&v87, v86);
      }

      v62 = *(v36 + 8 * v53);
      ++v61;
      if (v62)
      {
        v60 = __clz(__rbit64(v62));
        v57 = (v62 - 1) & v62;
        goto LABEL_46;
      }
    }
  }

  while (1)
  {
    v60 = __clz(__rbit64(v57));
    v57 &= v57 - 1;
LABEL_46:
    v63 = v60 | (v53 << 6);
    v64 = (*(v84 + 48) + 16 * v63);
    v65 = *v64;
    result = v64[1];
    v66 = *(*(v84 + 56) + 48 * v63 + 24);
    *(v59 + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v63;
    v67 = (v52[6] + 16 * v63);
    *v67 = v65;
    v67[1] = result;
    *(v52[7] + 8 * v63) = v66;
    v68 = v52[2];
    v23 = __OFADD__(v68, 1);
    v69 = v68 + 1;
    if (v23)
    {
      break;
    }

    v52[2] = v69;

    if (!v57)
    {
      goto LABEL_41;
    }
  }

LABEL_57:
  __break(1u);
  return result;
}