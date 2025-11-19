uint64_t sub_1D645B354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D667A6E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D645B38C(uint64_t a1)
{
  v2 = sub_1D6678444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D645B3C8(uint64_t a1)
{
  v2 = sub_1D6678444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D645B410()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D645B4C8()
{
  sub_1D72621EC();
}

uint64_t sub_1D645B56C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D645B620@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D666383C();
  *a1 = result;
  return result;
}

void sub_1D645B650(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x656E696C64616568;
  v4 = 0xE500000000000000;
  v5 = 0x70756F7267;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6974706FLL;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x6575737369;
    v2 = 0xE500000000000000;
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

uint64_t FormatBindingFontSize.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *&v27 = a2;
  sub_1D6678690();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6678724();
  sub_1D5B58B84(&qword_1EDF0C540, sub_1D6678724);
  sub_1D7264B0C();
  if (v2)
  {
    v19 = v2;
LABEL_13:
    sub_1D61E4FBC(a1, v19);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v9;
  if (v13)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v22 = *(v17 - 2);
      v21 = *(v17 - 1);

      v23 = sub_1D6627E68(1702521203, 0xE400000000000000, 0x676E696C616373, 0xE700000000000000);
      sub_1D5E2D970();
      v19 = swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v21;
      *(v24 + 16) = v23;
      *(v24 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v10 + 8))(v14, v5);
      goto LABEL_13;
    }

LABEL_7:
  }

  v32 = 0uLL;
  v33 = 0;
  v18 = 16.0;
  if (sub_1D726434C())
  {
    v30 = 0uLL;
    v31 = 0;
    sub_1D5B57870();
    sub_1D726431C();
    v18 = v28;
  }

  v27 = xmmword_1D728CF30;
  v32 = xmmword_1D728CF30;
  v33 = 0;
  if (sub_1D726434C())
  {
    v30 = v27;
    v31 = 0;
    sub_1D5CA8B24();
    sub_1D726431C();
    (*(v10 + 8))(v9, v5);
    v25 = v28;
    v26 = v29;
  }

  else
  {
    (*(v10 + 8))(v9, v5);
    v25 = 0.0;
    v26 = 3072;
  }

  *v11 = v18;
  *(v11 + 8) = v25;
  *(v11 + 16) = v26;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingFontSize.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v68 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v62 - v9;
  sub_1D66788A4();
  v69 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v66 = *(v1 + 8);
  v67 = *(v1 + 16);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D6678724();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF0C540, sub_1D6678724);
  sub_1D5D2EE70(&type metadata for FormatBindingFontSize, v19, v21, v16, &type metadata for FormatBindingFontSize, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(*(v22 - 8) + 16);
  v24(v10, v23, v22);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v70 = v2;
  if (v15 == 16.0)
  {
    sub_1D5D2CFE8(v10, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v63 = v24;
    v64 = v23;
    v27 = v69;
    v28 = &v14[*(v69 + 44)];
    v30 = *v28;
    v29 = *(v28 + 1);
    LOBYTE(v73) = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    *(v31 + 32) = v73;
    *(v31 + 40) = v30;
    *(v31 + 48) = v29;
    sub_1D6678938();
    v33 = v32;
    v34 = sub_1D5B58B84(&qword_1EDF03358, sub_1D6678938);

    v62[0] = v34;
    v62[1] = v33;
    v35 = sub_1D72647CC();
    LOBYTE(v73) = 0;
    v36 = swift_allocObject();
    *(v36 + 24) = 0;
    *(v36 + 32) = 0;
    *(v36 + 16) = v35;
    *(v36 + 40) = v73;
    v37 = __swift_project_boxed_opaque_existential_1(&v14[*(v27 + 36)], *&v14[*(v27 + 36) + 24]);
    *&v65 = v62;
    MEMORY[0x1EEE9AC00](v37, v38);
    MEMORY[0x1EEE9AC00](v39, v40);
    v62[-4] = sub_1D5B4AA6C;
    v62[-3] = 0;
    v60 = sub_1D66789CC;
    v61 = v31;
    v41 = v70;
    v43 = sub_1D5D2F7A4(v10, sub_1D615B49C, v42, sub_1D615B4A4, &v62[-6]);
    if (v41)
    {
      goto LABEL_11;
    }

    v58 = v43;

    if (v58)
    {
      v73 = 0uLL;
      v74 = 0;
      v71 = v15;
      sub_1D5B578C4();
      sub_1D72647EC();
      sub_1D5D2CFE8(v10, type metadata accessor for FormatVersionRequirement);
      v70 = 0;
    }

    else
    {
      v70 = 0;
      sub_1D5D2CFE8(v10, type metadata accessor for FormatVersionRequirement);
    }

    v24 = v63;
    v23 = v64;
  }

  v10 = v68;
  v24(v68, v23, v22);
  swift_storeEnumTagMultiPayload();
  v25 = v69;
  if ((v67 & 0xFF00) == 0xC00)
  {
    goto LABEL_6;
  }

  v44 = &v14[*(v69 + 44)];
  v46 = *v44;
  v45 = *(v44 + 1);
  LOBYTE(v73) = 0;
  v47 = swift_allocObject();
  v65 = xmmword_1D728CF30;
  *(v47 + 16) = xmmword_1D728CF30;
  *(v47 + 32) = v73;
  *(v47 + 40) = v46;
  *(v47 + 48) = v45;
  sub_1D6678938();
  sub_1D5B58B84(&qword_1EDF03358, sub_1D6678938);

  v48 = sub_1D72647CC();
  LOBYTE(v73) = 0;
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  *(v49 + 24) = v65;
  *(v49 + 40) = v73;
  v50 = __swift_project_boxed_opaque_existential_1(&v14[*(v25 + 36)], *&v14[*(v25 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v50, v51);
  MEMORY[0x1EEE9AC00](v52, v53);
  v62[-4] = sub_1D5B4AA6C;
  v62[-3] = 0;
  v60 = sub_1D67089AC;
  v61 = v47;
  v54 = v70;
  v56 = sub_1D5D2F7A4(v10, sub_1D615B49C, v55, sub_1D615B4A4, &v62[-6]);
  if (v54)
  {
LABEL_11:
    sub_1D5D2CFE8(v10, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v14, sub_1D66788A4);
  }

  v59 = v56;

  if (v59)
  {
    v73 = v65;
    v74 = 0;
    v71 = v66;
    v72 = v67;
    sub_1D5FC8148();
    sub_1D72647EC();
    v26 = v68;
    goto LABEL_7;
  }

  v10 = v68;
LABEL_6:
  v26 = v10;
LABEL_7:
  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D66788A4);
}

uint64_t sub_1D645C324()
{
  v1 = 0x676E696C616373;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702521203;
  }
}

uint64_t sub_1D645C370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D667A7F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D645C3A8(uint64_t a1)
{
  v2 = sub_1D66787FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D645C3E4(uint64_t a1)
{
  v2 = sub_1D66787FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBindingImageExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v72 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v65 - v8;
  sub_1D6678A48();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v75 = v1[1];
  v76 = v15;
  v16 = *(v1 + 4);
  v17 = *(v1 + 40);
  v86 = *(v1 + 41);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D5CBD978();
  v21 = v20;
  v22 = sub_1D5B58B84(&qword_1EDF24F08, sub_1D5CBD978);
  sub_1D5D2EE70(&type metadata for FormatBindingImageExpression, v21, v23, v18, &type metadata for FormatBindingImageExpression, v21, &type metadata for FormatVersions.JazzkonC, v19, v14, v22, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v70 = v25;
  v71 = v24;
  v69 = v27;
  v68 = v26 + 16;
  (v27)(v9);
  v67 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v81 = v76;
  v82 = v75;
  v83 = v16;
  v84 = v17;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v28 = &v14[*(v11 + 44)];
  v29 = v14;
  v30 = *v28;
  v31 = *(v28 + 1);
  v85 = 0;
  v32 = swift_allocObject();
  *&v75 = &v65;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v85;
  *(v32 + 40) = v30;
  *(v32 + 48) = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *(&v65 - 4) = sub_1D5B4AA6C;
  *(&v65 - 3) = 0;
  v63 = sub_1D67088A4;
  v64 = v34;
  v85 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v85;
  v66 = v30;
  *(v35 + 40) = v30;
  *(v35 + 48) = v31;
  sub_1D6678ADC();
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EDF02E68, sub_1D6678ADC);
  swift_retain_n();
  v73 = v37;
  v74 = v38;
  v39 = sub_1D72647CC();
  v85 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v85;
  v41 = *(v11 + 36);
  *&v76 = v29;
  v42 = &v29[v41];
  v43 = __swift_project_boxed_opaque_existential_1(&v29[v41], *&v29[v41 + 24]);
  MEMORY[0x1EEE9AC00](v43, v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  *(&v65 - 4) = sub_1D615B4A4;
  *(&v65 - 3) = (&v65 - 6);
  v63 = sub_1D67088A4;
  v64 = v35;
  v47 = v77;
  sub_1D5D2BC70(v9, sub_1D615B49C, v48, sub_1D615B4A4, (&v65 - 6));
  if (v47)
  {
    v49 = v76;
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v51 = v49;
  }

  else
  {

    sub_1D6678B70();
    v50 = v76;
    sub_1D72647EC();
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v53 = v72;
    v69(v72, v70, v71);
    swift_storeEnumTagMultiPayload();
    if (v86)
    {
      v54 = v50;
    }

    else
    {
      LOBYTE(v81) = 0;
      v55 = swift_allocObject();
      v77 = xmmword_1D728CF30;
      *(v55 + 16) = xmmword_1D728CF30;
      *(v55 + 32) = v81;
      *(v55 + 40) = v66;
      *(v55 + 48) = v31;

      v54 = v50;
      v56 = sub_1D72647CC();
      LOBYTE(v81) = 0;
      v57 = swift_allocObject();
      *(v57 + 16) = v56;
      *(v57 + 24) = v77;
      *(v57 + 40) = v81;
      v58 = __swift_project_boxed_opaque_existential_1(v42, *(v42 + 3));
      MEMORY[0x1EEE9AC00](v58, v59);
      MEMORY[0x1EEE9AC00](v60, v61);
      *(&v65 - 4) = sub_1D5B4AA6C;
      *(&v65 - 3) = 0;
      v63 = sub_1D67088A4;
      v64 = v55;
      LOBYTE(v56) = sub_1D5D2F7A4(v53, sub_1D615B49C, v62, sub_1D615B4A4, (&v65 - 6));

      if (v56)
      {
        v81 = v77;
        LOBYTE(v82) = 0;
        LOBYTE(v78) = 0;
        sub_1D5EEC0D4();
        sub_1D72647EC();
      }
    }

    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
    v51 = v54;
  }

  return sub_1D5D2CFE8(v51, sub_1D6678A48);
}

uint64_t sub_1D645CC6C(uint64_t a1)
{
  v2 = sub_1D5CBDAFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D645CCA8(uint64_t a1)
{
  v2 = sub_1D5CBDAFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBindingLayeredMediaExpression.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D6678C28();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6678CBC();
  sub_1D5B58B84(&qword_1EDF24D98, sub_1D6678CBC);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v25;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v20 = *(v16 - 2);
      v19 = *(v16 - 1);

      v21 = sub_1D6627E68(0x676E69646E6962, 0xE700000000000000, 0x6369676F6CLL, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_11;
    }

LABEL_7:
  }

  sub_1D5F2BD8C();
  v28 = 0uLL;
  v29 = 0;
  sub_1D726431C();
  v17 = v26;
  v24 = xmmword_1D728CF30;
  v28 = xmmword_1D728CF30;
  v29 = 0;
  if (sub_1D726434C())
  {
    v26 = v24;
    v27 = 0;
    sub_1D5F2E4C8();
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v18 = v30;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v18 = 1;
  }

  *v13 = v17;
  v13[1] = v18;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingLayeredMediaExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v65 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v60 - v8;
  sub_1D6678E3C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v64 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D6678CBC();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF24D98, sub_1D6678CBC);
  sub_1D5D2EE70(&type metadata for FormatBindingLayeredMediaExpression, v19, v21, v16, &type metadata for FormatBindingLayeredMediaExpression, v19, &type metadata for FormatVersions.AzdenC, v17, v14, v20, &off_1F51F6BB8);
  if (qword_1EDF31EF0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCDB0);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v62 = v23;
  v63 = v22;
  v60[2] = v24 + 16;
  v61 = v25;
  (v25)(v9);
  v60[1] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v74 = v15;
  v71 = 0uLL;
  v72 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v73 = 0;
  v29 = swift_allocObject();
  v68 = v60;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v73;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v70 = v9;
  v60[-4] = sub_1D5B4AA6C;
  v60[-3] = 0;
  v58 = sub_1D67088A4;
  v59 = v31;
  v73 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v73;
  v60[0] = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D6678ED0();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF02C98, sub_1D6678ED0);
  swift_retain_n();
  v66 = v35;
  v67 = v34;
  v36 = sub_1D72647CC();
  v73 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v73;
  v38 = &v14[*(v11 + 36)];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  v60[-4] = sub_1D615B4A4;
  v60[-3] = &v60[-6];
  v43 = v69;
  v44 = v70;
  v58 = sub_1D67088A4;
  v59 = v32;
  sub_1D5D2BC70(v70, sub_1D615B49C, v45, sub_1D615B4A4, &v60[-6]);
  if (v43)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v46 = v14;
  }

  else
  {

    sub_1D5F2BDE0();
    sub_1D72647EC();
    v46 = v14;
    sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);

    v47 = v65;
    v61(v65, v62, v63);
    swift_storeEnumTagMultiPayload();
    if ((v64 & 1) == 0)
    {
      LOBYTE(v71) = 0;
      v48 = swift_allocObject();
      v70 = xmmword_1D728CF30;
      *(v48 + 16) = xmmword_1D728CF30;
      *(v48 + 32) = v71;
      *(v48 + 40) = v60[0];
      *(v48 + 48) = v28;

      v49 = sub_1D72647CC();
      LOBYTE(v71) = 0;
      v50 = swift_allocObject();
      *(v50 + 16) = v49;
      *(v50 + 24) = v70;
      *(v50 + 40) = v71;
      v51 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
      MEMORY[0x1EEE9AC00](v51, v52);
      MEMORY[0x1EEE9AC00](v53, v54);
      v60[-4] = sub_1D5B4AA6C;
      v60[-3] = 0;
      v58 = sub_1D67088A4;
      v59 = v48;
      v57 = sub_1D5D2F7A4(v47, sub_1D615B49C, v55, sub_1D615B4A4, &v60[-6]);

      if (v57)
      {
        v71 = v70;
        v72 = 0;
        v74 = 0;
        sub_1D5F2E51C();
        sub_1D72647EC();
      }
    }

    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v46, sub_1D6678E3C);
}

uint64_t sub_1D645D904(uint64_t a1)
{
  v2 = sub_1D6678D94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D645D940(uint64_t a1)
{
  v2 = sub_1D6678D94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBindingShareAttributionExpression.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  sub_1D6678FC8();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667905C();
  sub_1D5B58B84(&qword_1EDF24D58, sub_1D667905C);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v7;
  v12 = v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1D7264AFC();
  v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

  v15 = v10;
  if (v14)
  {
    v16 = sub_1D726433C();
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (v16 + 48);
      while (*v18 != 1)
      {
        v18 += 24;
        if (!--v17)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v18 - 2);
      v20 = *(v18 - 1);

      v22 = sub_1D6627E68(0x676E69646E6962, 0xE700000000000000, 0x6369676F6CLL, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v11 + 8))(v15, v6);
      goto LABEL_11;
    }

LABEL_7:
  }

  sub_1D666E6FC();
  v29 = 0uLL;
  v30 = 0;
  sub_1D726431C();
  v25 = xmmword_1D728CF30;
  v29 = xmmword_1D728CF30;
  v30 = 0;
  if (sub_1D726434C())
  {
    v27 = v25;
    v28 = 0;
    sub_1D5F2E5EC();
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    v19 = v31;
  }

  else
  {
    (*(v11 + 8))(v10, v6);
    v19 = 1;
  }

  *v12 = v19;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingShareAttributionExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v66 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v59 - v8;
  sub_1D66791DC();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *v1;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D667905C();
  v18 = v17;
  v19 = sub_1D5B58B84(&qword_1EDF24D58, sub_1D667905C);
  sub_1D5D2EE70(&type metadata for FormatBindingShareAttributionExpression, v18, v20, v15, &type metadata for FormatBindingShareAttributionExpression, v18, &type metadata for FormatVersions.StarSky, v16, v14, v19, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v21 = sub_1D725BD1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDFFCD50);
  v23 = *(v21 - 8);
  v24 = *(v23 + 16);
  v64 = v22;
  v65 = v21;
  v62 = v23 + 16;
  v63 = v24;
  (v24)(v9);
  v61 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v72 = 0uLL;
  v73 = 0;
  v25 = &v14[*(v11 + 44)];
  v26 = *v25;
  v27 = *(v25 + 1);
  v74 = 0;
  v28 = swift_allocObject();
  v69 = &v59;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v74;
  *(v28 + 40) = v26;
  *(v28 + 48) = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  *&v71 = v9;
  *(&v59 - 4) = sub_1D5B4AA6C;
  *(&v59 - 3) = 0;
  v57 = sub_1D67088A4;
  v58 = v30;
  v74 = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v74;
  v60 = v26;
  *(v31 + 40) = v26;
  *(v31 + 48) = v27;
  sub_1D6679270();
  v33 = v32;
  v34 = sub_1D5B58B84(&qword_1EDF02C38, sub_1D6679270);
  swift_retain_n();
  v67 = v34;
  v68 = v33;
  v35 = sub_1D72647CC();
  v74 = 0;
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 16) = v35;
  *(v36 + 40) = v74;
  v37 = &v14[*(v11 + 36)];
  v38 = __swift_project_boxed_opaque_existential_1(v37, *(v37 + 3));
  MEMORY[0x1EEE9AC00](v38, v39);
  MEMORY[0x1EEE9AC00](v40, v41);
  *(&v59 - 4) = sub_1D615B4A4;
  *(&v59 - 3) = (&v59 - 6);
  v42 = v70;
  v43 = v71;
  v57 = sub_1D67088A4;
  v58 = v31;
  sub_1D5D2BC70(v71, sub_1D615B49C, v44, sub_1D615B4A4, (&v59 - 6));
  if (v42)
  {
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    v45 = v14;
  }

  else
  {

    sub_1D6679304();
    sub_1D72647EC();
    v45 = v14;
    sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);

    v46 = v66;
    v63(v66, v64, v65);
    swift_storeEnumTagMultiPayload();
    if ((v75 & 1) == 0)
    {
      LOBYTE(v72) = 0;
      v47 = swift_allocObject();
      v71 = xmmword_1D728CF30;
      *(v47 + 16) = xmmword_1D728CF30;
      *(v47 + 32) = v72;
      *(v47 + 40) = v60;
      *(v47 + 48) = v27;

      v48 = sub_1D72647CC();
      LOBYTE(v72) = 0;
      v49 = swift_allocObject();
      *(v49 + 16) = v48;
      *(v49 + 24) = v71;
      *(v49 + 40) = v72;
      v50 = __swift_project_boxed_opaque_existential_1(v37, *(v37 + 3));
      MEMORY[0x1EEE9AC00](v50, v51);
      MEMORY[0x1EEE9AC00](v52, v53);
      *(&v59 - 4) = sub_1D5B4AA6C;
      *(&v59 - 3) = 0;
      v57 = sub_1D67088A4;
      v58 = v47;
      v56 = sub_1D5D2F7A4(v46, sub_1D615B49C, v54, sub_1D615B4A4, (&v59 - 6));

      if (v56)
      {
        v72 = v71;
        v73 = 0;
        v74 = 0;
        sub_1D5F2E640();
        sub_1D72647EC();
      }
    }

    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v45, sub_1D66791DC);
}

uint64_t sub_1D645E57C(uint64_t a1)
{
  v2 = sub_1D6679134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D645E5B8(uint64_t a1)
{
  v2 = sub_1D6679134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBindingShareAttributionExpressionLogic.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatBindingShareAttributionExpressionLogic, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatBindingShareAttributionExpressionLogic, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v17, v14, v18, &off_1F51F6CD8);
  if (v15)
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD50);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641870C(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD50);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641870C(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D645E920(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7974706D45746F6ELL;
  }

  else
  {
    v3 = 0x7974706D457369;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x7974706D45746F6ELL;
  }

  else
  {
    v5 = 0x7974706D457369;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D645E9C8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D645EA4C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D645EB98(uint64_t a1)
{
  v2 = sub_1D665E294();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D645EBD4(uint64_t a1)
{
  v2 = sub_1D665E294();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D645EC1C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D645ECF0()
{
  sub_1D72621EC();
}

uint64_t sub_1D645EDB0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D645EE80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6664A14();
  *a1 = result;
  return result;
}

void sub_1D645EEB0(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x7974706D457369;
  v4 = 0xEB0000000064656CLL;
  v5 = 0x6C69666C75467369;
  if (*v1 != 2)
  {
    v5 = 0x69666C7546746F6ELL;
    v4 = 0xEC00000064656C6CLL;
  }

  if (*v1)
  {
    v3 = 0x7974706D45746F6ELL;
    v2 = 0xE800000000000000;
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

uint64_t FormatBindingTextExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v92 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v77 - v8;
  sub_1D6679410();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1[1];
  v105 = *v1;
  v106 = v15;
  v107 = v1[2];
  v108 = *(v1 + 24);
  v16 = *(v1 + 8);
  v87 = *(v1 + 7);
  v86 = v16;
  v17 = *(v1 + 10);
  v90 = *(v1 + 9);
  v85 = v17;
  v18 = *(v1 + 12);
  v88 = *(v1 + 11);
  v89 = v18;
  v110 = *(v1 + 106);
  v84 = *(v1 + 52);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D5C77030();
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EDF24F68, sub_1D5C77030);
  sub_1D5D2EE70(&type metadata for FormatBindingTextExpression, v22, v24, v19, &type metadata for FormatBindingTextExpression, v22, &type metadata for FormatVersions.JazzkonC, v20, v14, v23, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v91 = v26;
  v83 = v25;
  v82 = v28;
  v81 = v27 + 16;
  (v28)(v9);
  v80 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v98 = v105;
  v99 = v106;
  v100 = v107;
  v101 = v108;
  v103 = 0uLL;
  v104 = 0;
  v29 = &v14[*(v11 + 44)];
  v30 = *v29;
  v31 = *(v29 + 1);
  v109 = 0;
  v32 = swift_allocObject();
  v95 = &v77;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v109;
  *(v32 + 40) = v30;
  *(v32 + 48) = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *&v97 = v9;
  *(&v77 - 4) = sub_1D5B4AA6C;
  *(&v77 - 3) = 0;
  v75 = sub_1D67088A4;
  v76 = v34;
  v109 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v109;
  v79 = v30;
  *(v35 + 40) = v30;
  *(v35 + 48) = v31;
  sub_1D66794A4();
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EDF02EE8, sub_1D66794A4);
  swift_retain_n();
  v93 = v37;
  v94 = v38;
  v39 = sub_1D72647CC();
  v109 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v109;
  v41 = &v14[*(v11 + 36)];
  v42 = __swift_project_boxed_opaque_existential_1(v41, *(v41 + 3));
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  *(&v77 - 4) = sub_1D615B4A4;
  *(&v77 - 3) = (&v77 - 6);
  v46 = v97;
  v75 = sub_1D67088A4;
  v76 = v35;
  v47 = v96;
  sub_1D5D2BC70(v97, sub_1D615B49C, v48, sub_1D615B4A4, (&v77 - 6));
  if (v47)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v96 = v41;
    v49 = v91;
    v78 = v31;

    sub_1D5FD79B8();
    sub_1D72647EC();
    v50 = v84 | (v110 << 16);
    sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);

    v82(v92, v49, v83);
    swift_storeEnumTagMultiPayload();
    v51 = v50;
    v52 = (v50 & 0xE00000) == 12582912;
    v53 = v89;
    v54 = v88;
    v55 = v85;
    v56 = v87;
    if (v52 && (v51 & 0xFFFFFF) == 0xC00000 && v87 == 1 && !(v90 | v86 | v85 | v88 | v89))
    {
      sub_1D5CA8444(1, 0, v90, v85, v88, v89, 0xC00000u);
    }

    else
    {
      LOBYTE(v98) = 0;
      v57 = swift_allocObject();
      v97 = xmmword_1D728CF30;
      *(v57 + 16) = xmmword_1D728CF30;
      *(v57 + 32) = v98;
      *(v57 + 40) = v79;
      *(v57 + 48) = v78;

      LODWORD(v95) = v51;
      sub_1D5CA8444(v56, v86, v90, v55, v54, v53, v51);
      v58 = sub_1D72647CC();
      LOBYTE(v98) = 0;
      v59 = swift_allocObject();
      *(v59 + 16) = v58;
      *(v59 + 24) = v97;
      *(v59 + 40) = v98;
      v60 = __swift_project_boxed_opaque_existential_1(v96, *(v96 + 3));
      MEMORY[0x1EEE9AC00](v60, v61);
      MEMORY[0x1EEE9AC00](v62, v63);
      *(&v77 - 4) = sub_1D5B4AA6C;
      *(&v77 - 3) = 0;
      v75 = sub_1D67088A4;
      v76 = v57;
      LOBYTE(v58) = sub_1D5D2F7A4(v92, sub_1D615B49C, v64, sub_1D615B4A4, (&v77 - 6));
      v65 = v89;
      v66 = v95;

      if (v58)
      {
        v103 = v97;
        v104 = 0;
        *&v98 = v87;
        *(&v98 + 1) = v86;
        *&v99 = v90;
        *(&v99 + 1) = v85;
        *&v100 = v88;
        *(&v100 + 1) = v65;
        v102 = BYTE2(v66);
        v101 = v66;
        sub_1D5F2E3F8();
        sub_1D72647EC();
        v68 = *(&v98 + 1);
        v67 = v98;
        v70 = *(&v99 + 1);
        v69 = v99;
        v72 = *(&v100 + 1);
        v71 = v100;
        v73 = v101 | (v102 << 16);
      }

      else
      {
        v67 = v87;
        v68 = v86;
        v69 = v90;
        v70 = v85;
        v71 = v88;
        v72 = v65;
        v73 = v66;
      }

      sub_1D5CA8488(v67, v68, v69, v70, v71, v72, v73);
    }

    sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D6679410);
}

uint64_t sub_1D645FA54(uint64_t a1)
{
  v2 = sub_1D5C96BA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D645FA90(uint64_t a1)
{
  v2 = sub_1D5C96BA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D645FAF4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7974706D457369;
  v5 = 0xE700000000000000;
  v6 = 0x657261706D6F63;
  if (v2 != 6)
  {
    v6 = 0x676E69646E6962;
    v5 = 0xE700000000000000;
  }

  v7 = 0x6966667553736168;
  v8 = 0xE900000000000078;
  if (v2 != 4)
  {
    v7 = 0x6874676E656CLL;
    v8 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE800000000000000;
  v10 = 0x736E6961746E6F63;
  if (v2 != 2)
  {
    v10 = 0x6966657250736168;
    v9 = 0xE900000000000078;
  }

  if (*v1)
  {
    v4 = 0x7974706D45746F6ELL;
    v3 = 0xE800000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1D645FC48()
{
  v1 = 0x726F74617265706FLL;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69646E6962;
  }
}

uint64_t sub_1D645FC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D667A910(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D645FCD4(uint64_t a1)
{
  v2 = sub_1D66685B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D645FD10(uint64_t a1)
{
  v2 = sub_1D66685B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D645FD5C(uint64_t a1)
{
  v2 = sub_1D6668214();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D645FD98(uint64_t a1)
{
  v2 = sub_1D6668214();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D645FDE4(uint64_t a1)
{
  v2 = sub_1D6667E74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D645FE20(uint64_t a1)
{
  v2 = sub_1D6667E74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBindingURLExpression.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  sub_1D667959C();
  v7 = v6;
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6679630();
  sub_1D5B58B84(&qword_1EDF25038, sub_1D6679630);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v33;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v23 = *(v16 - 2);
      v22 = *(v16 - 1);

      v24 = sub_1D6627E68(0x676E69646E6962, 0xE700000000000000, 0x6369676F6CLL, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v10, v7);
      goto LABEL_11;
    }

LABEL_7:
  }

  sub_1D5CA38E4();
  v34 = 0uLL;
  v35 = 0;
  sub_1D726431C();
  v17 = v7;
  v18 = v13;
  v19 = *(&v36 + 1);
  v31 = v36;
  v20 = v37;
  v21 = v38;
  v30 = xmmword_1D728CF30;
  v36 = xmmword_1D728CF30;
  LOBYTE(v37) = 0;
  if (sub_1D726434C())
  {
    v34 = v30;
    v35 = 0;
    sub_1D5F2E834();
    sub_1D726431C();
    (*(v18 + 8))(v10, v17);
    v27 = v39;
  }

  else
  {
    (*(v18 + 8))(v10, v17);
    v27 = 1;
  }

  v28 = v19;
  v29 = v32;
  *v32 = v31;
  v29[1] = v28;
  v29[2] = v20;
  *(v29 + 24) = v21;
  *(v29 + 25) = v27;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingURLExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v71 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v65 - v8;
  sub_1D66797B0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v76 = v1[2];
  LODWORD(v75) = *(v1 + 24);
  v85 = *(v1 + 25);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D6679630();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF25038, sub_1D6679630);
  sub_1D5D2EE70(&type metadata for FormatBindingURLExpression, v20, v22, v17, &type metadata for FormatBindingURLExpression, v20, &type metadata for FormatVersions.SydroF, v18, v14, v21, &off_1F51F6C58);
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD68);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v72 = v24;
  v69 = v26;
  v70 = v23;
  v68 = v25 + 16;
  (v26)(v9);
  v67 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v81 = v15;
  *(&v81 + 1) = v16;
  v82 = v76;
  v83 = v75;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = v14;
  v29 = *v27;
  v30 = *(v27 + 1);
  v84 = 0;
  v31 = swift_allocObject();
  *&v75 = &v65;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v84;
  *(v31 + 40) = v29;
  *(v31 + 48) = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  *(&v65 - 4) = sub_1D5B4AA6C;
  *(&v65 - 3) = 0;
  v63 = sub_1D67088A4;
  v64 = v33;
  v84 = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v84;
  v66 = v29;
  *(v34 + 40) = v29;
  *(v34 + 48) = v30;
  sub_1D6679844();
  v36 = v35;
  v37 = sub_1D5B58B84(&qword_1EDF02FB8, sub_1D6679844);
  swift_retain_n();
  v73 = v37;
  v74 = v36;
  v38 = sub_1D72647CC();
  v84 = 0;
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 16) = v38;
  *(v39 + 40) = v84;
  v40 = *(v11 + 36);
  v76 = v28;
  v41 = &v28[v40];
  v42 = __swift_project_boxed_opaque_existential_1(&v28[v40], *&v28[v40 + 24]);
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  *(&v65 - 4) = sub_1D615B4A4;
  *(&v65 - 3) = (&v65 - 6);
  v63 = sub_1D67088A4;
  v64 = v34;
  v46 = v77;
  sub_1D5D2BC70(v9, sub_1D615B49C, v47, sub_1D615B4A4, (&v65 - 6));
  if (v46)
  {
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v48 = v76;
  }

  else
  {
    v49 = v72;
    v77 = v30;

    sub_1D6089CC4();
    v50 = v76;
    sub_1D72647EC();
    v48 = v50;
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v51 = v71;
    v69(v71, v49, v70);
    swift_storeEnumTagMultiPayload();
    v52 = v85;
    if (v85 != 1)
    {
      LOBYTE(v81) = 0;
      v53 = swift_allocObject();
      v75 = xmmword_1D728CF30;
      *(v53 + 16) = xmmword_1D728CF30;
      *(v53 + 32) = v81;
      *(v53 + 40) = v66;
      *(v53 + 48) = v77;

      v54 = sub_1D72647CC();
      LOBYTE(v81) = 0;
      v55 = swift_allocObject();
      *(v55 + 16) = v54;
      *(v55 + 24) = v75;
      *(v55 + 40) = v81;
      v56 = __swift_project_boxed_opaque_existential_1(v41, *(v41 + 3));
      MEMORY[0x1EEE9AC00](v56, v57);
      MEMORY[0x1EEE9AC00](v58, v59);
      *(&v65 - 4) = sub_1D5B4AA6C;
      *(&v65 - 3) = 0;
      v63 = sub_1D66798D8;
      v64 = v53;
      v62 = sub_1D5D2F7A4(v51, sub_1D615B49C, v60, sub_1D615B4A4, (&v65 - 6));

      if (v62)
      {
        v81 = v75;
        LOBYTE(v82) = 0;
        LOBYTE(v78) = v52;
        sub_1D5F2E888();
        sub_1D72647EC();
      }
    }

    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v48, sub_1D66797B0);
}

uint64_t sub_1D6460A54(uint64_t a1)
{
  v2 = sub_1D6679708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6460A90(uint64_t a1)
{
  v2 = sub_1D6679708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBindingURLExpressionLogic.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v38 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v38 - v17;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v1;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatBindingURLExpressionLogic, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatBindingURLExpressionLogic, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.SydroF, v25, v22, v26, &off_1F51F6C58);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCD68);
      (*(*(v31 - 8) + 16))(v10, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6419C3C(2, v10);
      v30 = v10;
    }

    else
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCD68);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6419C3C(3, v6);
      v30 = v6;
    }
  }

  else if (v23)
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCD68);
    (*(*(v33 - 8) + 16))(v14, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6419C3C(1, v14);
    v30 = v14;
  }

  else
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCD68);
    (*(*(v28 - 8) + 16))(v18, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6419C3C(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D6460FDC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64610A8()
{
  sub_1D72621EC();
}

uint64_t sub_1D6461160()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6461228@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D666471C();
  *a1 = result;
  return result;
}

void sub_1D6461258(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x7974706D457369;
  v4 = 0x6E7265746E497369;
  if (*v1 != 2)
  {
    v4 = 0x6E72657478457369;
  }

  if (*v1)
  {
    v3 = 0x7974706D45746F6ELL;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xEA00000000006C61;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t FormatBlock.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v105 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v106 = &v105 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v110 = &v105 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v105 - v16;
  sub_1D667B2DC();
  v119 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D5E1BDC4();
  v25 = v24;
  v26 = sub_1D5B58B84(&qword_1EDF24CF8, sub_1D5E1BDC4);
  sub_1D5D2EE70(v4, v25, v27, v22, v4, v25, &type metadata for FormatVersions.StarSky, v23, v21, v26, &off_1F51F6CD8);
  v28 = v2[2];
  v29 = v2[3];
  v109 = v2;
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725BD1C();
  v31 = __swift_project_value_buffer(v30, qword_1EDFFCD50);
  v32 = *(v30 - 8);
  v33 = *(v32 + 16);
  v114 = v31;
  v107 = v30;
  v113 = v33;
  v112 = v32 + 16;
  (v33)(v17);
  v111 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v123 = v28;
  *(&v123 + 1) = v29;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  v34 = v119;
  v35 = &v21[*(v119 + 44)];
  *&v117 = v17;
  v36 = *v35;
  v37 = *(v35 + 1);
  LOBYTE(v121) = 0;
  v38 = swift_allocObject();
  *&v118 = &v105;
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v121;
  *(v38 + 40) = v36;
  *(v38 + 48) = v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  *(&v105 - 4) = sub_1D5B4AA6C;
  *(&v105 - 3) = 0;
  v103 = sub_1D67089B0;
  v104 = v40;
  LOBYTE(v121) = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = v121;
  v108 = v36;
  *(v41 + 40) = v36;
  *(v41 + 48) = v37;
  sub_1D5E1BD88(0);
  v43 = v42;
  v44 = sub_1D5B58B84(&qword_1EDF02BD8, sub_1D5E1BD88);
  swift_retain_n();
  v115 = v44;
  v116 = v43;
  v45 = sub_1D72647CC();
  LOBYTE(v121) = 0;
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  *(v46 + 32) = 0;
  *(v46 + 16) = v45;
  *(v46 + 40) = v121;
  v47 = &v21[*(v34 + 36)];
  v48 = __swift_project_boxed_opaque_existential_1(v47, *(v47 + 3));
  MEMORY[0x1EEE9AC00](v48, v49);
  MEMORY[0x1EEE9AC00](v50, v51);
  *(&v105 - 4) = sub_1D615B4A4;
  *(&v105 - 3) = (&v105 - 6);
  v103 = sub_1D67089B0;
  v104 = v41;
  v52 = v117;
  v53 = v120;
  sub_1D5D2BC70(v117, sub_1D615B49C, v54, sub_1D615B4A4, (&v105 - 6));
  if (v53)
  {
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v21, sub_1D667B2DC);
  }

  v119 = v37;
  v120 = v47;

  sub_1D72647EC();
  sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);

  v55 = v109;
  swift_beginAccess();
  v56 = v55[4];
  v57 = v110;
  v113(v110, v114, v107);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v123) = 0;
  v58 = swift_allocObject();
  v118 = xmmword_1D728CF30;
  *(v58 + 16) = xmmword_1D728CF30;
  *(v58 + 32) = v123;
  *(v58 + 40) = v108;
  *(v58 + 48) = v119;

  v59 = sub_1D72647CC();
  LOBYTE(v123) = 0;
  v60 = swift_allocObject();
  *(v60 + 16) = v59;
  *(v60 + 24) = v118;
  *(v60 + 40) = v123;
  v61 = __swift_project_boxed_opaque_existential_1(v120, *(v120 + 3));
  MEMORY[0x1EEE9AC00](v61, v62);
  MEMORY[0x1EEE9AC00](v63, v64);
  *(&v105 - 4) = sub_1D5B4AA6C;
  *(&v105 - 3) = 0;
  v103 = sub_1D667B370;
  v104 = v58;
  v66 = sub_1D5D2F7A4(v57, sub_1D615B49C, v65, sub_1D615B4A4, (&v105 - 6));
  v68 = v66;

  if (v68)
  {
    v123 = v118;
    v124 = 0;
    *&v121 = v56;
    sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
    sub_1D66594A0();
    sub_1D72647EC();

    sub_1D5D2CFE8(v110, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D5D2CFE8(v110, type metadata accessor for FormatVersionRequirement);
  }

  v70 = v113;
  v69 = v114;
  v71 = v120;
  v120 = 0;
  v72 = v109;
  swift_beginAccess();
  v73 = v72[5];
  v74 = v106;
  v75 = v107;
  v70(v106, v69, v107);
  swift_storeEnumTagMultiPayload();
  if (*(v73 + 16))
  {
    LOBYTE(v121) = 0;
    v76 = swift_allocObject();
    v118 = xmmword_1D7297410;
    *(v76 + 16) = xmmword_1D7297410;
    *(v76 + 32) = v121;
    *(v76 + 40) = v108;
    *(v76 + 48) = v119;

    v77 = sub_1D72647CC();
    LOBYTE(v121) = 0;
    v78 = swift_allocObject();
    *(v78 + 16) = v77;
    *(v78 + 24) = v118;
    *(v78 + 40) = v121;
    v79 = __swift_project_boxed_opaque_existential_1(v71, *(v71 + 3));
    MEMORY[0x1EEE9AC00](v79, v80);
    MEMORY[0x1EEE9AC00](v81, v82);
    *(&v105 - 4) = sub_1D5B4AA6C;
    *(&v105 - 3) = 0;
    v103 = sub_1D67089B0;
    v104 = v76;
    v83 = v120;
    v85 = sub_1D5D2F7A4(v74, sub_1D615B49C, v84, sub_1D615B4A4, (&v105 - 6));
    if (v83)
    {
      sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v21, sub_1D667B2DC);
    }

    v86 = v85;

    if (v86)
    {
      v121 = v118;
      v122 = 0;
      v128 = v73;
      sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
      sub_1D60AD304();
      sub_1D72647EC();

      sub_1D5D2CFE8(v106, type metadata accessor for FormatVersionRequirement);
      v70 = v113;
      v69 = v114;
      v120 = 0;
      *&v118 = v21;
      v72 = v109;
      v75 = v107;
    }

    else
    {
      v120 = 0;
      *&v118 = v21;
      sub_1D5D2CFE8(v106, type metadata accessor for FormatVersionRequirement);

      v72 = v109;
      v75 = v107;
      v70 = v113;
      v69 = v114;
    }
  }

  else
  {
    *&v118 = v21;
    sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);
  }

  swift_beginAccess();
  v87 = v72[6];
  v88 = v105;
  v70(v105, v69, v75);
  swift_storeEnumTagMultiPayload();
  v89 = v119;
  v90 = v108;
  if (*(v87 + 16))
  {
    LOBYTE(v128) = 0;
    v91 = swift_allocObject();
    v117 = xmmword_1D72BAA60;
    *(v91 + 16) = xmmword_1D72BAA60;
    *(v91 + 32) = v128;
    *(v91 + 40) = v90;
    *(v91 + 48) = v89;

    v92 = sub_1D72647CC();
    LOBYTE(v128) = 0;
    v93 = swift_allocObject();
    *(v93 + 16) = v92;
    *(v93 + 24) = v117;
    *(v93 + 40) = v128;
    v94 = __swift_project_boxed_opaque_existential_1(v71, *(v71 + 3));
    MEMORY[0x1EEE9AC00](v94, v95);
    MEMORY[0x1EEE9AC00](v96, v97);
    *(&v105 - 4) = sub_1D5B4AA6C;
    *(&v105 - 3) = 0;
    v103 = sub_1D67089B0;
    v104 = v91;
    v98 = v120;
    v100 = sub_1D5D2F7A4(v88, sub_1D615B49C, v99, sub_1D615B4A4, (&v105 - 6));
    v120 = v98;
    if (v98)
    {
    }

    else
    {
      v101 = v100;

      if (v101)
      {
        v102 = v120;
        sub_1D5E09554(v87, v118, 3, 0, 0);
        v120 = v102;
      }
    }
  }

  sub_1D5D2CFE8(v88, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v118, sub_1D667B2DC);
}

uint64_t sub_1D6462280()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x736E6F6974706FLL;
  v4 = 0x726F7463656C6573;
  if (v1 != 3)
  {
    v4 = 1885433183;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6572646C696863;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D646231C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D667B7A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6462354(uint64_t a1)
{
  v2 = sub_1D5E1BE9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6462390(uint64_t a1)
{
  v2 = sub_1D5E1BE9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBlockExpression.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D667B3EC();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667B480();
  sub_1D5B58B84(&qword_1EDF25338, sub_1D667B480);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v27;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v16 - 2);
      v20 = *(v16 - 1);

      v22 = sub_1D6628490(0x6564496B636F6C62, 0xEF7265696669746ELL);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v25[1] = 0;
  v25[2] = 0;
  v26 = 0;
  v17 = sub_1D72642BC();
  v19 = v18;
  (*(v7 + 8))(v10, v6);
  *v13 = v17;
  v13[1] = v19;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBlockExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D667B600();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D667B480();
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF25338, sub_1D667B480);
  sub_1D5D2EE70(&type metadata for FormatBlockExpression, v17, v19, v14, &type metadata for FormatBlockExpression, v17, &type metadata for FormatVersions.StarSky, v15, v11, v18, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCD50);
  (*(*(v20 - 8) + 16))(v6, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v44 = v12;
  v45 = v13;
  v42[3] = 0;
  v42[4] = 0;
  v43 = 0;
  v22 = &v11[*(v8 + 44)];
  v24 = *v22;
  v23 = *(v22 + 1);
  v46 = 0;
  v25 = swift_allocObject();
  v42[1] = v42;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v46;
  *(v25 + 40) = v24;
  *(v25 + 48) = v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v42[-4] = sub_1D5B4AA6C;
  v42[-3] = 0;
  v40 = sub_1D67089B4;
  v41 = v27;
  v46 = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v46;
  *(v28 + 40) = v24;
  *(v28 + 48) = v23;
  sub_1D667B694();
  v30 = v29;
  sub_1D5B58B84(&qword_1EDF03348, sub_1D667B694);
  swift_retain_n();
  v42[0] = v30;
  v31 = sub_1D72647CC();
  v46 = 0;
  v32 = swift_allocObject();
  *(v32 + 24) = 0;
  *(v32 + 32) = 0;
  *(v32 + 16) = v31;
  *(v32 + 40) = v46;
  v33 = __swift_project_boxed_opaque_existential_1(&v11[*(v8 + 36)], *&v11[*(v8 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v33, v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  v42[-4] = sub_1D615B4A4;
  v42[-3] = &v42[-6];
  v40 = sub_1D667B728;
  v41 = v28;
  v37 = v42[2];
  sub_1D5D2BC70(v6, sub_1D615B49C, v38, sub_1D615B4A4, &v42[-6]);
  if (v37)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D667B600);
}

uint64_t sub_1D6462BAC()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x6564496B636F6C62;
  }
}

uint64_t sub_1D6462BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6564496B636F6C62 && a2 == 0xEF7265696669746ELL;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
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

uint64_t sub_1D6462CE0(uint64_t a1)
{
  v2 = sub_1D667B558();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6462D1C(uint64_t a1)
{
  v2 = sub_1D667B558();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBlockNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v143 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v144 = v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v145 = v143 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v146 = v143 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  *&v155 = v143 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v143 - v23;
  sub_1D667C0F0();
  *&v156 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v143 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1D5E1BBD4();
  v32 = v31;
  v33 = sub_1D5B58B84(&qword_1EDF24BC8, sub_1D5E1BBD4);
  v158 = v28;
  sub_1D5D2EE70(v4, v32, v34, v29, v4, v32, &type metadata for FormatVersions.StarSky, v30, v28, v33, &off_1F51F6CD8);
  swift_beginAccess();
  v35 = v2[2];
  v36 = v2[3];
  v153 = v2;
  v37 = qword_1EDF31ED0;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = sub_1D725BD1C();
  v39 = __swift_project_value_buffer(v38, qword_1EDFFCD50);
  v40 = *(v38 - 8);
  v41 = *(v40 + 16);
  v42 = v40 + 16;
  v41(v24, v39, v38);
  v154 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v43 = sub_1D725895C();
  v44 = (*(*(v43 - 8) + 48))(v8, 1, v43);
  v151 = v39;
  v150 = v41;
  v152 = v42;
  if (v44 != 1)
  {
    sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_8:
    v63 = v156;
    goto LABEL_9;
  }

  v148 = v35;
  v147 = v38;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v45 = v156;
  v46 = v158;
  v47 = &v158[*(v156 + 44)];
  v49 = *v47;
  v48 = *(v47 + 1);
  LOBYTE(v165) = 0;
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = v165;
  *(v50 + 40) = v49;
  *(v50 + 48) = v48;
  sub_1D5E1BB98(0);
  v52 = v51;
  sub_1D5B58B84(&qword_1EDF02A88, sub_1D5E1BB98);

  v149 = v52;
  v53 = sub_1D72647CC();
  LOBYTE(v165) = 0;
  v54 = swift_allocObject();
  *(v54 + 24) = 0;
  *(v54 + 32) = 0;
  *(v54 + 16) = v53;
  *(v54 + 40) = v165;
  v55 = __swift_project_boxed_opaque_existential_1((v46 + *(v45 + 36)), *(v46 + *(v45 + 36) + 24));
  MEMORY[0x1EEE9AC00](v55, v56);
  MEMORY[0x1EEE9AC00](v57, v58);
  v143[-4] = sub_1D5B4AA6C;
  v143[-3] = 0;
  v141 = sub_1D667C184;
  v142 = v50;
  v59 = v157;
  v61 = sub_1D5D2F7A4(v24, sub_1D615B49C, v60, sub_1D615B4A4, &v143[-6]);
  if (v59)
  {
    sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v46, sub_1D667C0F0);
  }

  v90 = v61;

  if ((v90 & 1) == 0)
  {
    *&v157 = 0;
    sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);

    v38 = v147;
    v39 = v151;
    v41 = v150;
    goto LABEL_8;
  }

  v165 = 0;
  v166 = 0;
  v167 = 0;
  *&v163 = v148;
  *(&v163 + 1) = v36;
  sub_1D72647EC();

  sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  v39 = v151;
  v41 = v150;
  v63 = v156;
  *&v157 = 0;
  v38 = v147;
LABEL_9:
  v64 = v153;
  swift_beginAccess();
  v65 = v64[4];
  v66 = v64[5];
  v41(v155, v39, v38);
  swift_storeEnumTagMultiPayload();
  *&v161 = v65;
  *(&v161 + 1) = v66;
  v156 = xmmword_1D728CF30;
  v163 = xmmword_1D728CF30;
  v164 = 0;
  v67 = v158;
  v68 = &v158[*(v63 + 44)];
  v70 = *v68;
  v69 = *(v68 + 1);
  LOBYTE(v159) = 0;
  v71 = swift_allocObject();
  v148 = v143;
  *(v71 + 16) = v156;
  *(v71 + 32) = v159;
  *(v71 + 40) = v70;
  *(v71 + 48) = v69;
  MEMORY[0x1EEE9AC00](v71, v72);
  v147 = &v143[-6];
  v143[-4] = sub_1D5B4AA6C;
  v143[-3] = 0;
  v141 = sub_1D67089B8;
  v142 = v73;
  LOBYTE(v159) = 0;
  v74 = swift_allocObject();
  *(v74 + 16) = v156;
  *(v74 + 32) = v159;
  v143[0] = v70;
  *(v74 + 40) = v70;
  *(v74 + 48) = v69;
  v75 = v69;
  sub_1D5E1BB98(0);
  v77 = v76;
  v78 = sub_1D5B58B84(&qword_1EDF02A88, sub_1D5E1BB98);
  swift_retain_n();
  v149 = v66;

  v143[2] = v77;
  v143[1] = v78;
  v79 = sub_1D72647CC();
  LOBYTE(v159) = 0;
  v80 = swift_allocObject();
  *(v80 + 16) = v79;
  *(v80 + 24) = v156;
  *(v80 + 40) = v159;
  v81 = (v67 + *(v63 + 36));
  v82 = __swift_project_boxed_opaque_existential_1(v81, v81[3]);
  MEMORY[0x1EEE9AC00](v82, v83);
  MEMORY[0x1EEE9AC00](v84, v85);
  v86 = v147;
  v143[-4] = sub_1D615B4A4;
  v143[-3] = v86;
  v87 = v155;
  v141 = sub_1D67089B8;
  v142 = v74;
  v88 = v157;
  sub_1D5D2BC70(v155, sub_1D615B49C, v89, sub_1D615B4A4, &v143[-6]);
  if (v88)
  {
    sub_1D5D2CFE8(v87, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2CFE8(v158, sub_1D667C0F0);
  }

  *&v156 = v81;
  v147 = v38;

  sub_1D72647EC();
  *&v157 = 0;
  sub_1D5D2CFE8(v87, type metadata accessor for FormatVersionRequirement);

  v91 = v153;
  swift_beginAccess();
  v92 = *(v91 + 48);
  v93 = v146;
  v94 = v151;
  v95 = v147;
  v96 = v150;
  v150(v146, v151, v147);
  swift_storeEnumTagMultiPayload();
  if (v92)
  {
    sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    LOBYTE(v161) = 0;
    v97 = swift_allocObject();
    v155 = xmmword_1D7297410;
    *(v97 + 16) = xmmword_1D7297410;
    *(v97 + 32) = v161;
    *(v97 + 40) = v143[0];
    *(v97 + 48) = v75;

    v98 = v158;
    v99 = sub_1D72647CC();
    LOBYTE(v161) = 0;
    v100 = swift_allocObject();
    *(v100 + 16) = v99;
    *(v100 + 24) = v155;
    *(v100 + 40) = v161;
    v101 = __swift_project_boxed_opaque_existential_1(v156, *(v156 + 24));
    MEMORY[0x1EEE9AC00](v101, v102);
    MEMORY[0x1EEE9AC00](v103, v104);
    v143[-4] = sub_1D5B4AA6C;
    v143[-3] = 0;
    v141 = sub_1D67089B8;
    v142 = v97;
    v105 = v157;
    v107 = sub_1D5D2F7A4(v93, sub_1D615B49C, v106, sub_1D615B4A4, &v143[-6]);
    *&v157 = v105;
    if (v105)
    {
      sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v98, sub_1D667C0F0);
    }

    v108 = v107;

    if (v108)
    {
      v161 = v155;
      v162 = 0;
      LOBYTE(v159) = 0;
      v109 = v158;
      v110 = v157;
      sub_1D72647EC();
      v94 = v151;
      v96 = v150;
      if (v110)
      {
        sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);
        return sub_1D5D2CFE8(v109, sub_1D667C0F0);
      }

      *&v157 = 0;
      sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);
      v95 = v147;
    }

    else
    {
      sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);
      v95 = v147;
      v94 = v151;
      v96 = v150;
    }
  }

  swift_beginAccess();
  v111 = v91[7];
  v112 = v145;
  v96(v145, v94, v95);
  swift_storeEnumTagMultiPayload();
  if (!*(v111 + 16))
  {
    sub_1D5D2CFE8(v112, type metadata accessor for FormatVersionRequirement);
    v124 = v157;
    goto LABEL_31;
  }

  LOBYTE(v159) = 0;
  v113 = swift_allocObject();
  v155 = xmmword_1D72BAA60;
  *(v113 + 16) = xmmword_1D72BAA60;
  *(v113 + 32) = v159;
  *(v113 + 40) = v143[0];
  *(v113 + 48) = v75;

  v114 = v158;
  v115 = sub_1D72647CC();
  LOBYTE(v159) = 0;
  v116 = swift_allocObject();
  *(v116 + 16) = v115;
  *(v116 + 24) = v155;
  *(v116 + 40) = v159;
  v117 = __swift_project_boxed_opaque_existential_1(v156, *(v156 + 24));
  MEMORY[0x1EEE9AC00](v117, v118);
  MEMORY[0x1EEE9AC00](v119, v120);
  v143[-4] = sub_1D5B4AA6C;
  v143[-3] = 0;
  v141 = sub_1D67089B8;
  v142 = v113;
  v121 = v157;
  v123 = sub_1D5D2F7A4(v112, sub_1D615B49C, v122, sub_1D615B4A4, &v143[-6]);
  v124 = v121;
  if (!v121)
  {
    v125 = v123;

    if (v125)
    {
      v159 = v155;
      v160 = 0;
      v168 = v111;
      sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
      sub_1D60AD304();
      v46 = v158;
      sub_1D72647EC();
      v91 = v153;
      v94 = v151;
      v96 = v150;
      v140 = v75;

      sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);
LABEL_32:
      swift_beginAccess();
      v126 = v91[8];
      v127 = v144;
      v96(v144, v94, v147);
      swift_storeEnumTagMultiPayload();
      v128 = v143[0];
      v129 = v156;
      if (*(v126 + 16))
      {
        LOBYTE(v168) = 0;
        v130 = swift_allocObject();
        v157 = xmmword_1D72BAA70;
        *(v130 + 16) = xmmword_1D72BAA70;
        *(v130 + 32) = v168;
        *(v130 + 40) = v128;
        *(v130 + 48) = v140;

        v131 = sub_1D72647CC();
        LOBYTE(v168) = 0;
        v132 = swift_allocObject();
        *(v132 + 16) = v131;
        *(v132 + 24) = v157;
        *(v132 + 40) = v168;
        v133 = __swift_project_boxed_opaque_existential_1(v129, v129[3]);
        MEMORY[0x1EEE9AC00](v133, v134);
        MEMORY[0x1EEE9AC00](v135, v136);
        v143[-4] = sub_1D5B4AA6C;
        v143[-3] = 0;
        v141 = sub_1D67089B8;
        v142 = v130;
        v138 = sub_1D5D2F7A4(v127, sub_1D615B49C, v137, sub_1D615B4A4, &v143[-6]);
        if (v124)
        {
        }

        else
        {
          v139 = v138;

          if (v139)
          {
            sub_1D5E08CEC(v126, v46, 4, 0, 0);
          }
        }
      }

      sub_1D5D2CFE8(v127, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v46, sub_1D667C0F0);
    }

    sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);

    v91 = v153;
    v94 = v151;
    v96 = v150;
LABEL_31:
    v140 = v75;
    v46 = v158;
    goto LABEL_32;
  }

  sub_1D5D2CFE8(v112, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v114, sub_1D667C0F0);
}

uint64_t sub_1D6464334()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x736E6F6974706FLL;
  v4 = 0x726F7463656C6573;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6564496B636F6C62;
  if (v1 != 1)
  {
    v5 = 0x73776F726874;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D64643F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6681E64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6464430(uint64_t a1)
{
  v2 = sub_1D5E1BCAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D646446C(uint64_t a1)
{
  v2 = sub_1D5E1BCAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBlurEffectStyle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v77 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v76 = &v72 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v75 = &v72 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v74 = &v72 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v73 = &v72 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v72 = &v72 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v86 = &v72 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v85 = &v72 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v84 = &v72 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v83 = &v72 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v82 = &v72 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v81 = &v72 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v80 = &v72 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v79 = &v72 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v78 = &v72 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v72 - v50;
  v52 = *v1;
  v87 = a1;
  v88 = v52;
  v53 = a1[3];
  v54 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v53);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v55 = sub_1D725BD1C();
  v56 = __swift_project_value_buffer(v55, qword_1EDFFCD98);
  v57 = *(*(v55 - 8) + 16);
  v57(v51, v56, v55);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v58 = v89;
  sub_1D5D2BEC4(v51, sub_1D5B4AA6C, 0, v53, v54);
  if (v58)
  {
    return sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  v60 = v87;
  v61 = v87[3];
  v89 = v87[4];
  v62 = __swift_project_boxed_opaque_existential_1(v87, v61);
  switch(v88)
  {
    case 1:
      v57(v79, v56, v55);
      v63 = v79;
      swift_storeEnumTagMultiPayload();
      goto LABEL_16;
    case 2:
      v57(v80, v56, v55);
      v63 = v80;
      swift_storeEnumTagMultiPayload();
      goto LABEL_16;
    case 3:
      v57(v81, v56, v55);
      v63 = v81;
      swift_storeEnumTagMultiPayload();
      goto LABEL_16;
    case 4:
      v57(v82, v56, v55);
      v63 = v82;
      swift_storeEnumTagMultiPayload();
      goto LABEL_16;
    case 5:
      v57(v83, v56, v55);
      v65 = v83;
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 6:
      v57(v84, v56, v55);
      v65 = v84;
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 7:
      v57(v85, v56, v55);
      v65 = v85;
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 8:
      v57(v86, v56, v55);
      v65 = v86;
      swift_storeEnumTagMultiPayload();
LABEL_23:
      v66 = v65;
      v67 = v61;
      v68 = v89;
      goto LABEL_24;
    case 9:
      v86 = v62;
      v69 = v72;
      v57(v72, v56, v55);
      swift_storeEnumTagMultiPayload();
      goto LABEL_21;
    case 10:
      v86 = v62;
      v69 = v73;
      v57(v73, v56, v55);
      swift_storeEnumTagMultiPayload();
      goto LABEL_21;
    case 11:
      v86 = v62;
      v69 = v74;
      v57(v74, v56, v55);
      swift_storeEnumTagMultiPayload();
      goto LABEL_21;
    case 12:
      v86 = v62;
      v69 = v75;
      v57(v75, v56, v55);
      swift_storeEnumTagMultiPayload();
      goto LABEL_21;
    case 13:
      v86 = v62;
      v69 = v76;
      v57(v76, v56, v55);
      swift_storeEnumTagMultiPayload();
LABEL_21:
      sub_1D5D2BEC4(v69, sub_1D5B4AA6C, 0, v61, v89);
      v70 = v69;
      goto LABEL_25;
    case 14:
      v86 = v62;
      v64 = v77;
      v57(v77, v56, v55);
      swift_storeEnumTagMultiPayload();
      v65 = v64;
      v66 = v64;
      v67 = v61;
      v68 = v89;
LABEL_24:
      sub_1D5D2BEC4(v66, sub_1D5B4AA6C, 0, v67, v68);
      v70 = v65;
LABEL_25:
      sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);
      break;
    default:
      v57(v78, v56, v55);
      v63 = v78;
      swift_storeEnumTagMultiPayload();
LABEL_16:
      sub_1D5D2BEC4(v63, sub_1D5B4AA6C, 0, v61, v89);
      sub_1D5D2CFE8(v63, type metadata accessor for FormatVersionRequirement);
      break;
  }

  __swift_project_boxed_opaque_existential_1(v60, v60[3]);
  v71 = sub_1D7264B3C();
  v92 = v88;
  FormatBlurEffectStyle.rawValue.getter(v71);
  __swift_mutable_project_boxed_opaque_existential_1(v90, v91);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v90);
}

uint64_t FormatBlurVibrancyEffect.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D667C200();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667C294();
  sub_1D5B58B84(&qword_1EC8867E8, sub_1D667C294);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v25;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(1920298082, 0xE400000000000000, 0x79636E6172626976, 0xE800000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D667C414();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D667C468();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBlurVibrancyEffect.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v72 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v65 - v8;
  sub_1D667C4BC();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v71 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D667C294();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC8867E8, sub_1D667C294);
  sub_1D5D2EE70(&type metadata for FormatBlurVibrancyEffect, v19, v21, v16, &type metadata for FormatBlurVibrancyEffect, v19, &type metadata for FormatVersions.CrystalGlowE, v17, v14, v20, &off_1F51F6C98);
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCE38);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v73 = v23;
  v74 = v22;
  v68 = v24 + 16;
  v69 = v25;
  (v25)(v9);
  v67 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v83 = v15;
  v80 = 0uLL;
  v81 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v82 = 0;
  v29 = swift_allocObject();
  v77 = &v65;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v82;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v79 = v9;
  *(&v65 - 4) = sub_1D5B4AA6C;
  *(&v65 - 3) = 0;
  v63 = sub_1D67089BC;
  v64 = v31;
  v82 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v82;
  v70 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D667C550();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EC886808, sub_1D667C550);
  swift_retain_n();
  v75 = v35;
  v76 = v34;
  v36 = sub_1D72647CC();
  v82 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v82;
  v38 = &v14[*(v11 + 36)];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  *(&v65 - 4) = sub_1D615B4A4;
  *(&v65 - 3) = (&v65 - 6);
  v43 = v78;
  v44 = v79;
  v63 = sub_1D667C5E4;
  v64 = v32;
  sub_1D5D2BC70(v79, sub_1D615B49C, v45, sub_1D615B4A4, (&v65 - 6));
  if (v43)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v66 = v38;
    v47 = v73;
    v46 = v74;
    v78 = v28;

    sub_1D667C660();
    sub_1D72647EC();
    sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);

    v49 = v72;
    v69(v72, v47, v46);
    swift_storeEnumTagMultiPayload();
    v83 = v71;
    v79 = xmmword_1D728CF30;
    v80 = xmmword_1D728CF30;
    v81 = 0;
    v82 = 0;
    v50 = swift_allocObject();
    v77 = &v65;
    *(v50 + 16) = v79;
    *(v50 + 32) = v82;
    v51 = v70;
    v52 = v78;
    *(v50 + 40) = v70;
    *(v50 + 48) = v52;
    MEMORY[0x1EEE9AC00](v50, v53);
    *(&v65 - 4) = sub_1D5B4AA6C;
    *(&v65 - 3) = 0;
    v63 = sub_1D67089BC;
    v64 = v54;
    v82 = 0;
    v55 = swift_allocObject();
    *(v55 + 16) = v79;
    *(v55 + 32) = v82;
    *(v55 + 40) = v51;
    *(v55 + 48) = v52;
    swift_retain_n();
    v56 = sub_1D72647CC();
    v82 = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    *(v57 + 24) = v79;
    *(v57 + 40) = v82;
    v58 = __swift_project_boxed_opaque_existential_1(v66, *(v66 + 3));
    MEMORY[0x1EEE9AC00](v58, v59);
    MEMORY[0x1EEE9AC00](v60, v61);
    *(&v65 - 4) = sub_1D615B4A4;
    *(&v65 - 3) = (&v65 - 6);
    v63 = sub_1D67089BC;
    v64 = v55;
    sub_1D5D2BC70(v49, sub_1D615B49C, v62, sub_1D615B4A4, (&v65 - 6));

    sub_1D667C6B4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D667C4BC);
}

uint64_t sub_1D64659D8()
{
  v1 = 0x79636E6172626976;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1920298082;
  }
}

uint64_t sub_1D6465A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6682074(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6465A5C(uint64_t a1)
{
  v2 = sub_1D667C36C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6465A98(uint64_t a1)
{
  v2 = sub_1D667C36C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBoolBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v74 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v73 = &v69 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v72 = &v69 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v70 = &v69 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v71 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v69 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v69 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v69 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v69 - v32;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = &v69 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = *v1;
  v38 = *(v1 + 8);
  v39 = a1[3];
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v39);
  v41 = sub_1D5C30408();
  v75 = v37;
  sub_1D5D2EE70(&type metadata for FormatBoolBinding, &type metadata for FormatCodingKeys, v42, v39, &type metadata for FormatBoolBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v40, v37, v41, &off_1F51F6C78);
  v43 = v38 >> 12;
  if (v38 >> 12 > 3)
  {
    if (v38 >> 12 <= 5)
    {
      if (v43 == 4)
      {
        if (qword_1EDF31EE8 != -1)
        {
          swift_once();
        }

        v55 = sub_1D725BD1C();
        v56 = __swift_project_value_buffer(v55, qword_1EDFFCD98);
        v57 = v71;
        (*(*(v55 - 8) + 16))(v71, v56, v55);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v44 = v75;
        sub_1D63B1FD8(4, v76, v57);
        v50 = v57;
        goto LABEL_37;
      }

      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v67 = sub_1D725BD1C();
      v68 = __swift_project_value_buffer(v67, qword_1EDFFCD68);
      v47 = v70;
      (*(*(v67 - 8) + 16))(v70, v68, v67);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v44 = v75;
      sub_1D63B216C(5, v76, v38, v47);
    }

    else
    {
      v44 = v75;
      if (v43 == 6)
      {
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v58 = sub_1D725BD1C();
        v59 = __swift_project_value_buffer(v58, qword_1EDFFCCA8);
        v47 = v72;
        (*(*(v58 - 8) + 16))(v72, v59, v58);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63B2304(6, v76 & 1, v47);
      }

      else if (v43 == 7)
      {
        if (qword_1EDF31F50 != -1)
        {
          swift_once();
        }

        v45 = sub_1D725BD1C();
        v46 = __swift_project_value_buffer(v45, qword_1EDFFCE80);
        v47 = v73;
        (*(*(v45 - 8) + 16))(v73, v46, v45);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63B249C(7, v76, v47);
      }

      else
      {
        if (qword_1EDF31F38 != -1)
        {
          swift_once();
        }

        v65 = sub_1D725BD1C();
        v66 = __swift_project_value_buffer(v65, qword_1EDFFCE38);
        v47 = v74;
        (*(*(v65 - 8) + 16))(v74, v66, v65);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63B2630(8, v76, v47);
      }
    }

    v50 = v47;
LABEL_37:
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
    v64 = v44;
    return sub_1D5D2CFE8(v64, sub_1D5D30DC4);
  }

  if (v38 >> 12 <= 1)
  {
    v44 = v75;
    if (v43)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v60 = sub_1D725BD1C();
      v61 = __swift_project_value_buffer(v60, qword_1EDFFCD30);
      (*(*(v60 - 8) + 16))(v29, v61, v60);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63B1B10(1, v76, v29);
      v50 = v29;
    }

    else
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v48 = sub_1D725BD1C();
      v49 = __swift_project_value_buffer(v48, qword_1EDFFCD30);
      (*(*(v48 - 8) + 16))(v33, v49, v48);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63B197C(0, v76, v33);
      v50 = v33;
    }

    goto LABEL_37;
  }

  v51 = v75;
  if (v43 != 2)
  {
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v62 = sub_1D725BD1C();
    v63 = __swift_project_value_buffer(v62, qword_1EDFFCD18);
    (*(*(v62 - 8) + 16))(v21, v63, v62);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63B1E38(3, v76, v38 & 0xFFF, v21);
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
    v64 = v51;
    return sub_1D5D2CFE8(v64, sub_1D5D30DC4);
  }

  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v52 = sub_1D725BD1C();
  v53 = __swift_project_value_buffer(v52, qword_1EDFFCD98);
  (*(*(v52 - 8) + 16))(v25, v53, v52);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63B1CA4(2, v76, v25);
  sub_1D5D2CFE8(v25, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v51, sub_1D5D30DC4);
}

uint64_t sub_1D64664B4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6465626D45626577;
    v6 = 0x6575737369;
    if (a1 != 2)
    {
      v6 = 0x70756F7267;
    }

    if (a1)
    {
      v5 = 0x656E696C64616568;
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
    v1 = 0x656C7A7A7570;
    v2 = 0x7453656C7A7A7570;
    if (a1 != 7)
    {
      v2 = 0x657069636572;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 6775156;
    if (a1 != 4)
    {
      v3 = 0x76457374726F7073;
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

uint64_t sub_1D6466610@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D64664B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D646668C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D668218C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64666C4(uint64_t a1)
{
  v2 = sub_1D5CD8274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6466700(uint64_t a1)
{
  v2 = sub_1D5CD8274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBorderEdge.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v36 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v35 = v33 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v34 = v33 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v33[1] = v33 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v33[0] = v33 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v33 - v20;
  v37 = *v1;
  v22 = a1[3];
  v23 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(*(v24 - 8) + 16);
  v26(v21, v25, v24);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v27 = v41;
  sub_1D5D2BEC4(v21, sub_1D5B4AA6C, 0, v22, v23);
  result = sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
  if (!v27)
  {
    v29 = v38[3];
    v30 = v38[4];
    v41 = __swift_project_boxed_opaque_existential_1(v38, v29);
    if (v37 <= 1)
    {
      v32 = v33[0];
      v26(v33[0], v25, v24);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v32, sub_1D5B4AA6C, 0, v29, v30);
      sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      if (v37 == 2)
      {
        v31 = v34;
        v26(v34, v25, v24);
      }

      else
      {
        v31 = v35;
        v26(v35, v25, v24);
      }

      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v31, sub_1D5B4AA6C, 0, v29, v30);
      sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
    }

    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  return result;
}

uint64_t FormatBoxNodeResize.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D667C804();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667C898();
  sub_1D5B58B84(&qword_1EDF0C580, sub_1D667C898);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v27;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v16 - 2);
      v20 = *(v16 - 1);

      v22 = sub_1D6628490(0x696669746E656469, 0xEA00000000007265);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v25[1] = 0;
  v25[2] = 0;
  v26 = 0;
  v17 = sub_1D72642BC();
  v19 = v18;
  (*(v7 + 8))(v10, v6);
  *v13 = v17;
  v13[1] = v19;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBoxNodeResize.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D667CA18();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D667C898();
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF0C580, sub_1D667C898);
  sub_1D5D2EE70(&type metadata for FormatBoxNodeResize, v17, v19, v14, &type metadata for FormatBoxNodeResize, v17, &type metadata for FormatVersions.DawnburstC, v15, v11, v18, &off_1F51F6B98);
  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCE98);
  (*(*(v20 - 8) + 16))(v6, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v44 = v12;
  v45 = v13;
  v42[3] = 0;
  v42[4] = 0;
  v43 = 0;
  v22 = &v11[*(v8 + 44)];
  v24 = *v22;
  v23 = *(v22 + 1);
  v46 = 0;
  v25 = swift_allocObject();
  v42[1] = v42;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v46;
  *(v25 + 40) = v24;
  *(v25 + 48) = v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v42[-4] = sub_1D5B4AA6C;
  v42[-3] = 0;
  v40 = sub_1D67088B4;
  v41 = v27;
  v46 = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v46;
  *(v28 + 40) = v24;
  *(v28 + 48) = v23;
  sub_1D667CAAC();
  v30 = v29;
  sub_1D5B58B84(&qword_1EC886828, sub_1D667CAAC);
  swift_retain_n();
  v42[0] = v30;
  v31 = sub_1D72647CC();
  v46 = 0;
  v32 = swift_allocObject();
  *(v32 + 24) = 0;
  *(v32 + 32) = 0;
  *(v32 + 16) = v31;
  *(v32 + 40) = v46;
  v33 = __swift_project_boxed_opaque_existential_1(&v11[*(v8 + 36)], *&v11[*(v8 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v33, v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  v42[-4] = sub_1D615B4A4;
  v42[-3] = &v42[-6];
  v40 = sub_1D67088B4;
  v41 = v28;
  v37 = v42[2];
  sub_1D5D2BC70(v6, sub_1D615B49C, v38, sub_1D615B4A4, &v42[-6]);
  if (v37)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D667CA18);
}

uint64_t sub_1D64674F8(uint64_t a1)
{
  v2 = sub_1D667C970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6467534(uint64_t a1)
{
  v2 = sub_1D667C970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6467570()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x68746150656C6966;
  v4 = 0x646C696863;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701734764;
  if (v1 != 1)
  {
    v5 = 0x6E6D756C6F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D6467618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66823C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6467650(uint64_t a1)
{
  v2 = sub_1D665FB60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D646768C(uint64_t a1)
{
  v2 = sub_1D665FB60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBundle.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D667CBA4();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667CC38();
  sub_1D5B58B84(&qword_1EDF24CA8, sub_1D667CC38);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v27;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v16 - 2);
      v20 = *(v16 - 1);

      v22 = sub_1D6628490(0x696669746E656469, 0xEA00000000007265);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v25[1] = 0;
  v25[2] = 0;
  v26 = 0;
  v17 = sub_1D72642BC();
  v19 = v18;
  (*(v7 + 8))(v10, v6);
  *v13 = v17;
  v13[1] = v19;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBundle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D667CDB8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D667CC38();
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF24CA8, sub_1D667CC38);
  sub_1D5D2EE70(&type metadata for FormatBundle, v17, v19, v14, &type metadata for FormatBundle, v17, &type metadata for FormatVersions.StarSkyE, v15, v11, v18, &off_1F51F6CB8);
  if (qword_1EDF31E90 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCCE8);
  (*(*(v20 - 8) + 16))(v6, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v44 = v12;
  v45 = v13;
  v42[3] = 0;
  v42[4] = 0;
  v43 = 0;
  v22 = &v11[*(v8 + 44)];
  v24 = *v22;
  v23 = *(v22 + 1);
  v46 = 0;
  v25 = swift_allocObject();
  v42[1] = v42;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v46;
  *(v25 + 40) = v24;
  *(v25 + 48) = v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v42[-4] = sub_1D5B4AA6C;
  v42[-3] = 0;
  v40 = sub_1D67088B4;
  v41 = v27;
  v46 = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v46;
  *(v28 + 40) = v24;
  *(v28 + 48) = v23;
  sub_1D667CE4C();
  v30 = v29;
  sub_1D5B58B84(&qword_1EDF02B88, sub_1D667CE4C);
  swift_retain_n();
  v42[0] = v30;
  v31 = sub_1D72647CC();
  v46 = 0;
  v32 = swift_allocObject();
  *(v32 + 24) = 0;
  *(v32 + 32) = 0;
  *(v32 + 16) = v31;
  *(v32 + 40) = v46;
  v33 = __swift_project_boxed_opaque_existential_1(&v11[*(v8 + 36)], *&v11[*(v8 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v33, v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  v42[-4] = sub_1D615B4A4;
  v42[-3] = &v42[-6];
  v40 = sub_1D67088B4;
  v41 = v28;
  v37 = v42[2];
  sub_1D5D2BC70(v6, sub_1D615B49C, v38, sub_1D615B4A4, &v42[-6]);
  if (v37)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D667CDB8);
}

uint64_t sub_1D6467EB0(uint64_t a1)
{
  v2 = sub_1D667CD10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6467EEC(uint64_t a1)
{
  v2 = sub_1D667CD10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6467F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66825C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6467F60(uint64_t a1)
{
  v2 = sub_1D5CCFC50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6467F9C(uint64_t a1)
{
  v2 = sub_1D5CCFC50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6467FD8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7461526874646977;
  v4 = 0xEA00000000006F69;
  if (v2 != 1)
  {
    v3 = 1702521203;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6152746867696568;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB000000006F6974;
  }

  v7 = 0x7461526874646977;
  v8 = 0xEA00000000006F69;
  if (*a2 != 1)
  {
    v7 = 1702521203;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6152746867696568;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB000000006F6974;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D64680D8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6468180()
{
  sub_1D72621EC();
}

uint64_t sub_1D6468214()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64682B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663EC4();
  *a1 = result;
  return result;
}

void sub_1D64682E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006F6974;
  v4 = 0xEA00000000006F69;
  v5 = 0x7461526874646977;
  if (v2 != 1)
  {
    v5 = 1702521203;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6152746867696568;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D64683FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6682730(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6468440(uint64_t a1)
{
  v2 = sub_1D5C65C94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D646847C(uint64_t a1)
{
  v2 = sub_1D5C65C94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatButtonNodeAction.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v119 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v118 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v117 = &v110 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v113 = &v110 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v112 = &v110 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v115 = &v110 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v111 = &v110 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v114 = &v110 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v116 = &v110 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v110 - v33;
  MEMORY[0x1EEE9AC00](v35, v36);
  v110 = &v110 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v110 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v110 - v44;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v46 - 8, v47);
  v49 = &v110 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *v2;
  v51 = a1[3];
  v52 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v51);
  v53 = sub_1D5C30408();
  v127 = v49;
  sub_1D5D2EE70(&type metadata for FormatButtonNodeAction, &type metadata for FormatCodingKeys, v54, v51, &type metadata for FormatButtonNodeAction, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v52, v49, v53, &off_1F51F6C78);
  v55 = v50 >> 60;
  if ((v50 >> 60) > 5)
  {
    if (v55 > 8)
    {
      if (v55 == 9)
      {
        v87 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v123[0] = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v123[1] = v87;
        v123[2] = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v124 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        sub_1D667D2A8(v123, v120);
        if (qword_1EDF31E78 != -1)
        {
          swift_once();
        }

        v88 = sub_1D725BD1C();
        v89 = __swift_project_value_buffer(v88, qword_1EDFFCC90);
        v34 = v117;
        (*(*(v88 - 8) + 16))(v117, v89, v88);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v60 = v127;
        sub_1D639CFEC(10, v123, v34);
        sub_1D667D304(v123);
      }

      else if (v55 == 10)
      {
        v70 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v125[0] = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v125[1] = v70;
        v125[2] = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v126 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        sub_1D667D1F8(v125, v120);
        if (qword_1EDF31E78 != -1)
        {
          swift_once();
        }

        v71 = sub_1D725BD1C();
        v72 = __swift_project_value_buffer(v71, qword_1EDFFCC90);
        v34 = v118;
        (*(*(v71 - 8) + 16))(v118, v72, v71);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v60 = v127;
        sub_1D639D194(11, v125, v34);
        sub_1D667D254(v125);
      }

      else
      {
        if (qword_1EDF31F10 != -1)
        {
          swift_once();
        }

        v107 = sub_1D725BD1C();
        v108 = __swift_project_value_buffer(v107, qword_1EDFFCDF8);
        v34 = v111;
        (*(*(v107 - 8) + 16))(v111, v108, v107);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v60 = v127;
        sub_1D641DCF0(6, v34);
      }
    }

    else if (v55 == 6)
    {
      v81 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v121[1] = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v121[2] = v81;
      v121[3] = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v122 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v121[0] = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D614F7FC(v121, v120);
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v82 = sub_1D725BD1C();
      v83 = __swift_project_value_buffer(v82, qword_1EDFFCD98);
      v34 = v115;
      (*(*(v82 - 8) + 16))(v115, v83, v82);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v60 = v127;
      sub_1D639CB1C(7, v121, v34);
      sub_1D614F7CC(v121);
    }

    else if (v55 == 7)
    {
      v62 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v63 = sub_1D725BD1C();
      v64 = __swift_project_value_buffer(v63, qword_1EDFFCD50);
      v34 = v112;
      (*(*(v63 - 8) + 16))(v112, v64, v63);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v60 = v127;
      sub_1D639CCC4(8, v62, v34);
    }

    else
    {
      v96 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v97 = sub_1D725BD1C();
      v98 = __swift_project_value_buffer(v97, qword_1EDFFCE80);
      v34 = v113;
      (*(*(v97 - 8) + 16))(v113, v98, v97);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v60 = v127;
      sub_1D639CE58(9, v96, v34);
    }

    goto LABEL_49;
  }

  if (v55 > 2)
  {
    if (v55 == 3)
    {
      v84 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v85 = sub_1D725BD1C();
      v86 = __swift_project_value_buffer(v85, qword_1EDFFCD30);
      (*(*(v85 - 8) + 16))(v34, v86, v85);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v60 = v127;
      sub_1D639C61C(3, v84, v34);
    }

    else
    {
      if (v55 == 4)
      {
        v65 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v66 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v67 = qword_1EDF31EB0;

        if (v67 != -1)
        {
          swift_once();
        }

        v68 = sub_1D725BD1C();
        v69 = __swift_project_value_buffer(v68, qword_1EDFFCD30);
        v34 = v116;
        (*(*(v68 - 8) + 16))(v116, v69, v68);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v60 = v127;
        sub_1D639C7B0(4, v65, v66, v34);
      }

      else
      {
        v99 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v100 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v102 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v101 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v103 = qword_1EDF31EA8;

        if (v103 != -1)
        {
          swift_once();
        }

        v104 = sub_1D725BD1C();
        v105 = __swift_project_value_buffer(v104, qword_1EDFFCD18);
        v34 = v114;
        (*(*(v104 - 8) + 16))(v114, v105, v104);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v106 = v102;
        v60 = v127;
        sub_1D639C984(5, v99, v100, v106, v101, v34);
      }
    }

LABEL_49:
    v61 = v34;
LABEL_50:
    sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);
    v80 = v60;
    return sub_1D5D2CFE8(v80, sub_1D5D30DC4);
  }

  if (v55)
  {
    if (v55 == 1)
    {
      v56 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v57 = qword_1EDF31EB0;

      if (v57 != -1)
      {
        swift_once();
      }

      v58 = sub_1D725BD1C();
      v59 = __swift_project_value_buffer(v58, qword_1EDFFCD30);
      (*(*(v58 - 8) + 16))(v41, v59, v58);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v60 = v127;
      sub_1D639C2B4(1, v56, v41);

      v61 = v41;
      goto LABEL_50;
    }

    v90 = swift_projectBox();
    v91 = v119;
    sub_1D6706BB4(v90, v119, type metadata accessor for FormatCommandOpenURL);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v92 = sub_1D725BD1C();
    v93 = __swift_project_value_buffer(v92, qword_1EDFFCD30);
    v94 = v110;
    (*(*(v92 - 8) + 16))(v110, v93, v92);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v95 = v127;
    sub_1D639C448(2, v91, v94);
    sub_1D5D2CFE8(v94, type metadata accessor for FormatVersionRequirement);
    sub_1D5D2CFE8(v91, type metadata accessor for FormatCommandOpenURL);
    v80 = v95;
  }

  else
  {
    v73 = *(v50 + 16);
    v74 = *(v50 + 24);
    v75 = *(v50 + 32);
    v76 = qword_1EDF31F10;

    if (v76 != -1)
    {
      swift_once();
    }

    v77 = sub_1D725BD1C();
    v78 = __swift_project_value_buffer(v77, qword_1EDFFCDF8);
    (*(*(v77 - 8) + 16))(v45, v78, v77);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v79 = v127;
    sub_1D639C11C(0, v73, v74, v75, v45);

    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
    v80 = v79;
  }

  return sub_1D5D2CFE8(v80, sub_1D5D30DC4);
}

uint64_t sub_1D6469320(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6775626564;
    v7 = 0x7373696D736964;
    if (a1 != 10)
    {
      v7 = 0x746E697270;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6F72687473736170;
    v9 = 0x6573616863727570;
    if (a1 != 7)
    {
      v9 = 0x676E69646E6962;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1970169197;
    v2 = 0x6574756F72;
    v3 = 0x686374697773;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x646E616D6D6F63;
    if (a1 != 1)
    {
      v4 = 0x4C52556E65706FLL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D64694F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6469320(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatButtonNodeBinding.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = a1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    if (v14)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F51145B8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D667D358();
    v27 = 0uLL;
    sub_1D726431C();
    a1 = v12;
    if (v28 > 1u)
    {
      v23 = v26;
      v27 = xmmword_1D7279980;
      if (v28 == 2)
      {
        sub_1D667D3AC();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = 0x80;
      }

      else
      {
        sub_1D62E4F88();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = -64;
      }
    }

    else
    {
      v23 = v26;
      v27 = xmmword_1D7279980;
      if (v28)
      {
        sub_1D667D400();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = 64;
      }

      else
      {
        sub_1D667D454();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v28;
      }
    }

    *v23 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatButtonNodeBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v39 - v17;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v1;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatButtonNodeBinding, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatButtonNodeBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v25, v22, v26, &off_1F51F6CD8);
  v28 = v23 >> 6;
  if (v23 >> 6 > 1)
  {
    if (v28 == 2)
    {
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v32 = sub_1D725BD1C();
      v33 = __swift_project_value_buffer(v32, qword_1EDFFCCE8);
      (*(*(v32 - 8) + 16))(v10, v33, v32);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6395C74(2, v10);
      v31 = v10;
    }

    else
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v36 = sub_1D725BD1C();
      v37 = __swift_project_value_buffer(v36, qword_1EDFFCCA8);
      (*(*(v36 - 8) + 16))(v6, v37, v36);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6395E00(3, v6);
      v31 = v6;
    }
  }

  else if (v28)
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v34 = sub_1D725BD1C();
    v35 = __swift_project_value_buffer(v34, qword_1EDFFCD50);
    (*(*(v34 - 8) + 16))(v14, v35, v34);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6395AE8(1, v14);
    v31 = v14;
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v29 = sub_1D725BD1C();
    v30 = __swift_project_value_buffer(v29, qword_1EDFFCD50);
    (*(*(v29 - 8) + 16))(v18, v30, v29);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6395950(0, v23 & 1, v18);
    v31 = v18;
  }

  sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D6469EA4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6469F60()
{
  sub_1D72621EC();
}

uint64_t sub_1D646A008()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D646A0C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D66641BC();
  *a1 = result;
  return result;
}

void sub_1D646A0F0(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x656E696C64616568;
  v4 = 0xE800000000000000;
  v5 = 0x6465626D45626577;
  if (*v1 != 2)
  {
    v5 = 0x656C7A7A7570;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x6575737369;
    v2 = 0xE500000000000000;
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

uint64_t FormatButtonNodeStateMask.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D667D4A8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D5C958E8();
  v18 = v17;
  v19 = sub_1D5B58B84(&qword_1EDF250A8, sub_1D5C958E8);
  sub_1D5D2EE70(&type metadata for FormatButtonNodeStateMask, v18, v20, v15, &type metadata for FormatButtonNodeStateMask, v18, &type metadata for FormatVersions.JazzkonC, v16, v13, v19, &off_1F51F6C78);
  v21 = qword_1EDF31EB0;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  (*(*(v22 - 8) + 16))(v8, v23, v22);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v24 = &v13[*(v10 + 44)];
  v26 = *v24;
  v25 = *(v24 + 1);
  v42 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v42;
  *(v27 + 40) = v26;
  *(v27 + 48) = v25;
  sub_1D5E1BB5C(0);
  sub_1D5B58B84(&qword_1EDF03038, sub_1D5E1BB5C);

  v28 = sub_1D72647CC();
  v41 = 0;
  v29 = swift_allocObject();
  *(v29 + 24) = 0;
  *(v29 + 32) = 0;
  *(v29 + 16) = v28;
  *(v29 + 40) = v41;
  v30 = __swift_project_boxed_opaque_existential_1(&v13[*(v10 + 36)], *&v13[*(v10 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v30, v31);
  MEMORY[0x1EEE9AC00](v32, v33);
  *(&v40 - 4) = sub_1D5B4AA6C;
  *(&v40 - 3) = 0;
  v38 = sub_1D667D53C;
  v39 = v27;
  v35 = sub_1D5D2F7A4(v8, sub_1D615B49C, v34, sub_1D615B4A4, (&v40 - 6));
  if (v3)
  {
    sub_1D5D2CFE8(v8, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v36 = v35;

    if (v36)
    {
      sub_1D5E07168(v14, v13, 0, 0, 0);
    }

    sub_1D5D2CFE8(v8, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v13, sub_1D667D4A8);
}

uint64_t sub_1D646A688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736574617473 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
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

uint64_t sub_1D646A770(uint64_t a1)
{
  v2 = sub_1D5C9596C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D646A7AC(uint64_t a1)
{
  v2 = sub_1D5C9596C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatCellSelection.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v37 = &v36 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v36 - v11;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  v36 = *(v1 + 16);
  v39 = v17;
  v19 = *(v1 + 32);
  v18 = *(v1 + 40);
  v20 = *(v1 + 48);
  v21 = *(v1 + 56);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = sub_1D5C30408();
  v40 = v16;
  sub_1D5D2EE70(&type metadata for FormatCellSelection, &type metadata for FormatCodingKeys, v25, v22, &type metadata for FormatCellSelection, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v23, v16, v24, &off_1F51F6C78);
  if (v21)
  {
    if (v21 == 1)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v26 = sub_1D725BD1C();
      v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
      v28 = v37;
      (*(*(v26 - 8) + 16))(v37, v27, v26);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v29 = v40;
      sub_1D6439078(1, v39, v28);
    }

    else
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v33 = sub_1D725BD1C();
      v34 = __swift_project_value_buffer(v33, qword_1EDFFCD30);
      v28 = v38;
      (*(*(v33 - 8) + 16))(v38, v34, v33);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v29 = v40;
      sub_1D6421988(2, v28);
    }

    v32 = v28;
  }

  else
  {
    v41[0] = v39;
    v41[1] = v36;
    v42 = v19;
    v43 = v18;
    v44 = v20;
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v30 = sub_1D725BD1C();
    v31 = __swift_project_value_buffer(v30, qword_1EDFFCD30);
    (*(*(v30 - 8) + 16))(v12, v31, v30);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v29 = v40;
    sub_1D6438ED0(0, v41, v12);
    v32 = v12;
  }

  sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v29, sub_1D5D30DC4);
}

uint64_t FormatCellSelection.Background.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  sub_1D667D60C();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667D6A0();
  sub_1D5B58B84(&qword_1EC886860, sub_1D667D6A0);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v34;
  v14 = v7;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v20 = *(v17 - 2);
      v19 = *(v17 - 1);

      v21 = sub_1D6619940();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5B570F8();
  v31 = 0uLL;
  LOBYTE(v32) = 0;
  sub_1D726427C();
  v18 = v29;
  v29 = xmmword_1D728CF30;
  v30 = 0;
  sub_1D5CD49DC();
  sub_1D726427C();
  v27 = v32;
  v28 = v31;
  v24 = v33;
  v31 = xmmword_1D7297410;
  LOBYTE(v32) = 0;
  sub_1D5C35218();
  sub_1D726427C();
  (*(v14 + 8))(v10, v6);
  v25 = v29;
  *v13 = v18;
  v26 = v28;
  *(v13 + 24) = v27;
  *(v13 + 8) = v26;
  *(v13 + 40) = v24;
  *(v13 + 48) = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatCellSelection.Background.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v107 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  *&v106 = &v95 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v95 - v12;
  sub_1D667D820();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v102 = *(v1 + 24);
  v101 = *(v1 + 8);
  LODWORD(v105) = *(v1 + 40);
  v103 = *(v1 + 48);
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D667D6A0();
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EC886860, sub_1D667D6A0);
  sub_1D5D2EE70(&type metadata for FormatCellSelection.Background, v23, v25, v20, &type metadata for FormatCellSelection.Background, v23, &type metadata for FormatVersions.JazzkonC, v21, v18, v24, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
  v28 = *(v26 - 8);
  v110 = *(v28 + 16);
  v111 = v27;
  v109 = v28 + 16;
  v110(v13);
  v108 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v114 = 0uLL;
  LOBYTE(v115) = 0;
  v29 = &v18[*(v15 + 44)];
  v30 = *v29;
  v31 = *(v29 + 1);
  LOBYTE(v116) = 0;
  v32 = swift_allocObject();
  v34 = v32;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v116;
  *(v32 + 40) = v30;
  *(v32 + 48) = v31;
  v113 = v18;
  v104 = v15;
  *&v112 = v2;
  if ((~v19 & 0xF000000000000007) != 0)
  {
    v100 = v26;
    v97 = &v95;
    *&v116 = v19;
    MEMORY[0x1EEE9AC00](v32, v33);
    v96 = &v95 - 6;
    *(&v95 - 4) = sub_1D5B4AA6C;
    *(&v95 - 3) = 0;
    v93 = sub_1D67089C0;
    v94 = v34;
    v118 = 0;
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    *(v47 + 24) = 0;
    *(v47 + 32) = v118;
    *(v47 + 40) = v30;
    *(v47 + 48) = v31;
    swift_retain_n();
    sub_1D5CFCFAC(v19);
    sub_1D667D8B4();
    v49 = v48;
    v50 = sub_1D5B58B84(&qword_1EC886878, sub_1D667D8B4);
    v98 = v30;
    v95 = v49;
    v51 = sub_1D72647CC();
    v118 = 0;
    v52 = swift_allocObject();
    v99 = v31;
    *(v52 + 24) = 0;
    *(v52 + 32) = 0;
    *(v52 + 16) = v51;
    *(v52 + 40) = v118;
    v53 = __swift_project_boxed_opaque_existential_1(&v18[*(v15 + 36)], *&v18[*(v15 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v53, v54);
    MEMORY[0x1EEE9AC00](v55, v56);
    v57 = v96;
    *(&v95 - 4) = sub_1D615B4A4;
    *(&v95 - 3) = v57;
    v93 = sub_1D67089C0;
    v94 = v47;
    v58 = v112;
    v60 = sub_1D5D2F7A4(v13, sub_1D615B49C, v59, sub_1D615B4A4, (&v95 - 6));
    if (v58)
    {

      sub_1D5D2CFE8(v13, type metadata accessor for FormatVersionRequirement);
      goto LABEL_14;
    }

    v87 = v60;
    *&v112 = v50;
    v88 = v99;

    if (v87)
    {
      sub_1D5B55CBC();
      sub_1D72647EC();
      v36 = v106;
      v26 = v100;
      v31 = v88;
      *&v112 = 0;

      v30 = v98;
    }

    else
    {
      *&v112 = 0;

      v36 = v106;
      v31 = v88;
      v30 = v98;
      v26 = v100;
    }

    v35 = v107;
  }

  else
  {

    v35 = v107;
    v36 = v106;
  }

  sub_1D5D2CFE8(v13, type metadata accessor for FormatVersionRequirement);
  (v110)(v36, v111, v26);
  swift_storeEnumTagMultiPayload();
  v106 = xmmword_1D728CF30;
  v116 = xmmword_1D728CF30;
  v117 = 0;
  LOBYTE(v114) = 0;
  v37 = swift_allocObject();
  v39 = v37;
  *(v37 + 16) = v106;
  *(v37 + 32) = v114;
  *(v37 + 40) = v30;
  *(v37 + 48) = v31;
  if (v105)
  {

    v40 = v112;
    goto LABEL_7;
  }

  v100 = v26;
  v105 = &v95;
  v114 = v101;
  v115 = v102;
  MEMORY[0x1EEE9AC00](v37, v38);
  *(&v95 - 4) = sub_1D5B4AA6C;
  *(&v95 - 3) = 0;
  v93 = sub_1D67089C0;
  v94 = v39;
  v118 = 0;
  v61 = swift_allocObject();
  *(v61 + 16) = v106;
  *(v61 + 32) = v118;
  *(v61 + 40) = v30;
  *(v61 + 48) = v31;
  sub_1D667D8B4();
  v62 = sub_1D5B58B84(&qword_1EC886878, sub_1D667D8B4);
  swift_retain_n();
  v98 = v30;
  v63 = v113;
  v64 = sub_1D72647CC();
  v99 = v31;
  v65 = v64;
  v118 = 0;
  v66 = swift_allocObject();
  *(v66 + 16) = v65;
  *(v66 + 24) = v106;
  *(v66 + 40) = v118;
  v67 = __swift_project_boxed_opaque_existential_1(&v63[*(v104 + 36)], *&v63[*(v104 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v67, v68);
  MEMORY[0x1EEE9AC00](v69, v70);
  *(&v95 - 4) = sub_1D615B4A4;
  *(&v95 - 3) = (&v95 - 6);
  v93 = sub_1D67089C0;
  v94 = v61;
  v71 = v112;
  v73 = sub_1D5D2F7A4(v36, sub_1D615B49C, v72, sub_1D615B4A4, (&v95 - 6));
  if (!v71)
  {
    v89 = v73;
    *&v112 = v62;
    v90 = v98;
    v31 = v99;

    if (v89)
    {
      sub_1D667D9C4();
      sub_1D72647EC();
      v40 = 0;
      v26 = v100;
      v30 = v90;
    }

    else
    {
      v40 = 0;
      v30 = v90;
      v26 = v100;
    }

    v35 = v107;
LABEL_7:
    sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);

    (v110)(v35, v111, v26);
    swift_storeEnumTagMultiPayload();
    v112 = xmmword_1D7297410;
    v114 = xmmword_1D7297410;
    LOBYTE(v115) = 0;
    LOBYTE(v116) = 0;
    v41 = swift_allocObject();
    v43 = v41;
    *(v41 + 16) = v112;
    *(v41 + 32) = v116;
    *(v41 + 40) = v30;
    *(v41 + 48) = v31;
    v44 = v30;
    v45 = v103;
    if ((~v103 & 0xF000000000000007) == 0)
    {

LABEL_9:

      v46 = v113;
LABEL_27:
      sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);
      v74 = v46;
      return sub_1D5D2CFE8(v74, sub_1D667D820);
    }

    v111 = &v95;
    *&v116 = v103;
    MEMORY[0x1EEE9AC00](v41, v42);
    *(&v95 - 4) = sub_1D5B4AA6C;
    *(&v95 - 3) = 0;
    v93 = sub_1D67089C0;
    v94 = v43;
    v118 = 0;
    v75 = swift_allocObject();
    *(v75 + 16) = v112;
    *(v75 + 32) = v118;
    *(v75 + 40) = v44;
    *(v75 + 48) = v31;
    swift_retain_n();
    sub_1D5D04BD4(v45);
    sub_1D667D8B4();
    v77 = v76;
    sub_1D5B58B84(&qword_1EC886878, sub_1D667D8B4);
    v78 = v113;
    v110 = v77;
    v79 = sub_1D72647CC();
    v118 = 0;
    v80 = swift_allocObject();
    *(v80 + 16) = v79;
    *(v80 + 24) = v112;
    *(v80 + 40) = v118;
    v81 = __swift_project_boxed_opaque_existential_1(&v78[*(v104 + 36)], *&v78[*(v104 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v81, v82);
    MEMORY[0x1EEE9AC00](v83, v84);
    *(&v95 - 4) = sub_1D615B4A4;
    *(&v95 - 3) = (&v95 - 6);
    v35 = v107;
    v93 = sub_1D667D948;
    v94 = v75;
    v86 = sub_1D5D2F7A4(v107, sub_1D615B49C, v85, sub_1D615B4A4, (&v95 - 6));
    if (v40)
    {

      v46 = v113;
    }

    else
    {
      v91 = v86;

      if ((v91 & 1) == 0)
      {

        goto LABEL_9;
      }

      sub_1D5C3526C();
      v46 = v113;
      sub_1D72647EC();
    }

    goto LABEL_27;
  }

  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);

LABEL_14:
  v74 = v113;
  return sub_1D5D2CFE8(v74, sub_1D667D820);
}

uint64_t sub_1D646BDA0()
{
  v1 = 0x726F6C6F63;
  v2 = 0x615272656E726F63;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x65736E4965676465;
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

uint64_t sub_1D646BE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6682DC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D646BE54(uint64_t a1)
{
  v2 = sub_1D667D778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D646BE90(uint64_t a1)
{
  v2 = sub_1D667D778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatCellSelection.DimContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22[0] = a2;
  sub_1D667DA18();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667DAAC();
  sub_1D5B58B84(&qword_1EC8868A8, sub_1D667DAAC);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v22[0];
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v18 = *(v16 - 2);
      v17 = *(v16 - 1);

      v19 = sub_1D6628490(0x6168706C61, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v20 = v18;
      *(v20 + 8) = v17;
      *(v20 + 16) = v19;
      *(v20 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C35218();
  v22[1] = 0;
  v22[2] = 0;
  v23 = 0;
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  *v13 = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatCellSelection.DimContent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D667DC2C();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D667DAAC();
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EC8868A8, sub_1D667DAAC);
  sub_1D5D2EE70(&type metadata for FormatCellSelection.DimContent, v16, v18, v13, &type metadata for FormatCellSelection.DimContent, v16, &type metadata for FormatVersions.JazzkonC, v14, v11, v17, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCD30);
  (*(*(v19 - 8) + 16))(v6, v20, v19);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v21 = &v11[*(v8 + 44)];
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v52) = 0;
  v24 = swift_allocObject();
  v26 = v24;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v52;
  *(v24 + 40) = v22;
  *(v24 + 48) = v23;
  if ((~v12 & 0xF000000000000007) != 0)
  {
    v46 = &v44;
    v52 = v12;
    MEMORY[0x1EEE9AC00](v24, v25);
    v45 = &v44 - 6;
    *(&v44 - 4) = sub_1D5B4AA6C;
    *(&v44 - 3) = 0;
    v42 = sub_1D67089C4;
    v43 = v26;
    v48 = 0;
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = v48;
    *(v27 + 40) = v22;
    *(v27 + 48) = v23;
    swift_retain_n();
    sub_1D5D04BD4(v12);
    sub_1D667DCC0();
    v29 = v28;
    sub_1D5B58B84(&qword_1EC8868C0, sub_1D667DCC0);
    v44 = v29;
    v30 = sub_1D72647CC();
    v48 = 0;
    v31 = swift_allocObject();
    *(v31 + 24) = 0;
    *(v31 + 32) = 0;
    *(v31 + 16) = v30;
    *(v31 + 40) = v48;
    v32 = __swift_project_boxed_opaque_existential_1(&v11[*(v8 + 36)], *&v11[*(v8 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v32, v33);
    MEMORY[0x1EEE9AC00](v34, v35);
    v36 = v45;
    *(&v44 - 4) = sub_1D615B4A4;
    *(&v44 - 3) = v36;
    v42 = sub_1D667DD54;
    v43 = v27;
    v37 = v47;
    v39 = sub_1D5D2F7A4(v6, sub_1D615B49C, v38, sub_1D615B4A4, (&v44 - 6));
    if (v37)
    {
    }

    else
    {
      v40 = v39;

      if (v40)
      {
        sub_1D5C3526C();
        sub_1D72647EC();
      }
    }
  }

  else
  {
  }

  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v11, sub_1D667DC2C);
}

uint64_t sub_1D646C6E4()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x6168706C61;
  }
}

uint64_t sub_1D646C714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6168706C61 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
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

uint64_t sub_1D646C7FC(uint64_t a1)
{
  v2 = sub_1D667DB84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D646C838(uint64_t a1)
{
  v2 = sub_1D667DB84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatColorAndExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v73 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v66 - v8;
  sub_1D667E4D8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v72 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D667E304();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF0C4B0, sub_1D667E304);
  sub_1D5D2EE70(&type metadata for FormatColorAndExpression, v19, v21, v16, &type metadata for FormatColorAndExpression, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v74 = v23;
  v75 = v22;
  v69 = v24 + 16;
  v70 = v25;
  (v25)(v9);
  v68 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v84 = v15;
  v82 = 0uLL;
  v83 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v81 = 0;
  v29 = swift_allocObject();
  v78 = &v66;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v81;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v80 = v9;
  *(&v66 - 4) = sub_1D5B4AA6C;
  *(&v66 - 3) = 0;
  v64 = sub_1D6708868;
  v65 = v31;
  v81 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v81;
  v71 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D667E56C();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF030D8, sub_1D667E56C);
  swift_retain_n();
  v76 = v35;
  v77 = v34;
  v36 = sub_1D72647CC();
  v81 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v81;
  v38 = &v14[*(v11 + 36)];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  *(&v66 - 4) = sub_1D615B4A4;
  *(&v66 - 3) = (&v66 - 6);
  v43 = v79;
  v44 = v80;
  v64 = sub_1D6708868;
  v65 = v32;
  sub_1D5D2BC70(v80, sub_1D615B49C, v45, sub_1D615B4A4, (&v66 - 6));
  if (v43)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v67 = v38;
    v47 = v74;
    v46 = v75;
    v79 = v28;

    v48 = sub_1D667E664();
    sub_1D72647EC();
    v66 = v48;
    sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);

    v50 = v73;
    v70(v73, v47, v46);
    swift_storeEnumTagMultiPayload();
    v84 = v72;
    v80 = xmmword_1D728CF30;
    v82 = xmmword_1D728CF30;
    v83 = 0;
    v81 = 0;
    v51 = swift_allocObject();
    v78 = &v66;
    *(v51 + 16) = v80;
    *(v51 + 32) = v81;
    v52 = v71;
    v53 = v79;
    *(v51 + 40) = v71;
    *(v51 + 48) = v53;
    MEMORY[0x1EEE9AC00](v51, v54);
    *(&v66 - 4) = sub_1D5B4AA6C;
    *(&v66 - 3) = 0;
    v64 = sub_1D6708868;
    v65 = v55;
    v81 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v80;
    *(v56 + 32) = v81;
    *(v56 + 40) = v52;
    *(v56 + 48) = v53;
    swift_retain_n();
    v57 = sub_1D72647CC();
    v81 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = v80;
    *(v58 + 40) = v81;
    v59 = __swift_project_boxed_opaque_existential_1(v67, *(v67 + 3));
    MEMORY[0x1EEE9AC00](v59, v60);
    MEMORY[0x1EEE9AC00](v61, v62);
    *(&v66 - 4) = sub_1D615B4A4;
    *(&v66 - 3) = (&v66 - 6);
    v64 = sub_1D6708868;
    v65 = v56;
    sub_1D5D2BC70(v50, sub_1D615B49C, v63, sub_1D615B4A4, (&v66 - 6));

    sub_1D72647EC();
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D667E4D8);
}

uint64_t sub_1D646D1A8(uint64_t a1)
{
  v2 = sub_1D667E3DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D646D1E4(uint64_t a1)
{
  v2 = sub_1D667E3DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatColorAssignComponentProcessor.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v69 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v66 - v8;
  sub_1D667E920();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 1);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D667E74C();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF24D88, sub_1D667E74C);
  sub_1D5D2EE70(&type metadata for FormatColorAssignComponentProcessor, v20, v22, v17, &type metadata for FormatColorAssignComponentProcessor, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v70 = v24;
  v71 = v23;
  v66[2] = (v25 + 16);
  v67 = v26;
  (v26)(v9);
  v66[1] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v77) = v15;
  v79 = 0uLL;
  v80 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v78 = 0;
  v30 = swift_allocObject();
  v74 = v66;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v78;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *&v76 = v9;
  v66[-4] = sub_1D5B4AA6C;
  v66[-3] = 0;
  v64 = sub_1D67089C8;
  v65 = v32;
  v78 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v78;
  v68 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D667E9B4();
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF02C88, sub_1D667E9B4);
  swift_retain_n();
  v72 = v36;
  v73 = v35;
  v37 = sub_1D72647CC();
  v78 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v78;
  v39 = &v14[*(v11 + 36)];
  v40 = __swift_project_boxed_opaque_existential_1(v39, *(v39 + 3));
  MEMORY[0x1EEE9AC00](v40, v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  v66[-4] = sub_1D615B4A4;
  v66[-3] = &v66[-6];
  v44 = v75;
  v45 = v76;
  v64 = sub_1D667EA48;
  v65 = v33;
  sub_1D5D2BC70(v76, sub_1D615B49C, v46, sub_1D615B4A4, &v66[-6]);
  if (v44)
  {
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v66[0] = v39;
    v48 = v70;
    v47 = v71;
    v75 = v29;

    sub_1D667EAC4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);

    v50 = v69;
    v67(v69, v48, v47);
    swift_storeEnumTagMultiPayload();
    v77 = v16;
    v76 = xmmword_1D728CF30;
    v79 = xmmword_1D728CF30;
    v80 = 0;
    v78 = 0;
    v51 = swift_allocObject();
    v74 = v66;
    *(v51 + 16) = v76;
    *(v51 + 32) = v78;
    v52 = v68;
    v53 = v75;
    *(v51 + 40) = v68;
    *(v51 + 48) = v53;
    MEMORY[0x1EEE9AC00](v51, v54);
    v66[-4] = sub_1D5B4AA6C;
    v66[-3] = 0;
    v64 = sub_1D67089C8;
    v65 = v55;
    v78 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v76;
    *(v56 + 32) = v78;
    *(v56 + 40) = v52;
    *(v56 + 48) = v53;
    swift_retain_n();
    v57 = sub_1D72647CC();
    v78 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = v76;
    *(v58 + 40) = v78;
    v59 = __swift_project_boxed_opaque_existential_1(v66[0], v66[0][3]);
    MEMORY[0x1EEE9AC00](v59, v60);
    MEMORY[0x1EEE9AC00](v61, v62);
    v66[-4] = sub_1D615B4A4;
    v66[-3] = &v66[-6];
    v64 = sub_1D67089C8;
    v65 = v56;
    sub_1D5D2BC70(v50, sub_1D615B49C, v63, sub_1D615B4A4, &v66[-6]);

    sub_1D5B578C4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D667E920);
}

uint64_t sub_1D646DAF4(uint64_t a1)
{
  v2 = sub_1D667E824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D646DB30(uint64_t a1)
{
  v2 = sub_1D667E824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatColorBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v64 = &v62 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v65 = &v62 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v63 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v62 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v62 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v62 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v62 - v29;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = &v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *v1;
  v67 = *(v1 + 8);
  v68 = v35;
  v62 = *(v1 + 16);
  v36 = *(v1 + 24);
  v37 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  v39 = sub_1D5C30408();
  v69 = v34;
  sub_1D5D2EE70(&type metadata for FormatColorBinding, &type metadata for FormatCodingKeys, v40, v37, &type metadata for FormatColorBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v38, v34, v39, &off_1F51F6C78);
  if (v36 > 3)
  {
    if (v36 > 5)
    {
      v45 = v69;
      if (v36 == 6)
      {
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v51 = sub_1D725BD1C();
        v52 = __swift_project_value_buffer(v51, qword_1EDFFCCA8);
        v18 = v64;
        (*(*(v51 - 8) + 16))(v64, v52, v51);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63AE9BC(6, v68, v67, v18);
      }

      else
      {
        if (qword_1EDF31F38 != -1)
        {
          swift_once();
        }

        v60 = sub_1D725BD1C();
        v61 = __swift_project_value_buffer(v60, qword_1EDFFCE38);
        v18 = v66;
        (*(*(v60 - 8) + 16))(v66, v61, v60);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63AEB54(7, v68, v18);
      }
    }

    else
    {
      v45 = v69;
      if (v36 == 4)
      {
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v46 = sub_1D725BD1C();
        v47 = __swift_project_value_buffer(v46, qword_1EDFFCD50);
        v18 = v63;
        (*(*(v46 - 8) + 16))(v63, v47, v46);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63AE684(4, v68, v67, v18);
      }

      else
      {
        if (qword_1EDF31ED8 != -1)
        {
          swift_once();
        }

        v56 = sub_1D725BD1C();
        v57 = __swift_project_value_buffer(v56, qword_1EDFFCD68);
        v18 = v65;
        (*(*(v56 - 8) + 16))(v65, v57, v56);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63AE824(5, v68, v67, v18);
      }
    }

    goto LABEL_32;
  }

  if (v36 > 1)
  {
    if (v36 == 2)
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v48 = sub_1D725BD1C();
      v49 = __swift_project_value_buffer(v48, qword_1EDFFCD98);
      (*(*(v48 - 8) + 16))(v22, v49, v48);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v45 = v69;
      sub_1D63AE358(2, v68, v22);
      v50 = v22;
      goto LABEL_33;
    }

    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v58 = sub_1D725BD1C();
    v59 = __swift_project_value_buffer(v58, qword_1EDFFCD30);
    (*(*(v58 - 8) + 16))(v18, v59, v58);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v45 = v69;
    sub_1D63AE4EC(3, v68, v67, v62, v18);
LABEL_32:
    v50 = v18;
LABEL_33:
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
    v55 = v45;
    return sub_1D5D2CFE8(v55, sub_1D5D30DC4);
  }

  v41 = v69;
  if (v36)
  {
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v53 = sub_1D725BD1C();
    v54 = __swift_project_value_buffer(v53, qword_1EDFFCCE8);
    (*(*(v53 - 8) + 16))(v26, v54, v53);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63AE1C4(1, v68, v26);
    sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
    v55 = v41;
    return sub_1D5D2CFE8(v55, sub_1D5D30DC4);
  }

  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v42 = sub_1D725BD1C();
  v43 = __swift_project_value_buffer(v42, qword_1EDFFCD30);
  (*(*(v42 - 8) + 16))(v30, v43, v42);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63AE030(0, v68, v30);
  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v41, sub_1D5D30DC4);
}

void sub_1D646E450(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656E696C64616568;
  v5 = 0xEA00000000006570;
  v6 = 0x7954656C7A7A7570;
  if (v2 != 6)
  {
    v6 = 0x657069636572;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x70756F7267;
  if (v2 != 4)
  {
    v8 = 0x76457374726F7073;
    v7 = 0xEB00000000746E65;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6575737369;
  if (v2 != 2)
  {
    v10 = 0x6E6F6974706FLL;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 6775156;
    v3 = 0xE300000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t FormatColorBlendProcessor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D667EC14();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667ECA8();
  sub_1D5B58B84(&qword_1EDF25098, sub_1D667ECA8);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v29;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(0x726F6C6F63, 0xE500000000000000, 0x6168706C61, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5B570F8();
  v27 = 0uLL;
  v28 = 0;
  sub_1D726431C();
  v17 = v25;
  v27 = xmmword_1D728CF30;
  v28 = 0;
  sub_1D5B57870();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v25;
  v24 = v26;
  *v13 = v17;
  *(v13 + 8) = v23;
  *(v13 + 16) = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatColorBlendProcessor.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v70 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v64 - v8;
  sub_1D667EE28();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  LODWORD(v69) = *(v1 + 16);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D667ECA8();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF25098, sub_1D667ECA8);
  sub_1D5D2EE70(&type metadata for FormatColorBlendProcessor, v20, v22, v17, &type metadata for FormatColorBlendProcessor, v20, &type metadata for FormatVersions.StarSkyC, v18, v14, v21, &off_1F51F6B18);
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD00);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v66 = v24;
  v67 = v23;
  v64[1] = v25 + 16;
  v65 = v26;
  (v26)(v9);
  v64[0] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v79 = v15;
  v77 = 0uLL;
  v78 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v76 = 0;
  v30 = swift_allocObject();
  v73 = v64;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v76;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *&v75 = v9;
  v64[-4] = sub_1D5B4AA6C;
  v64[-3] = 0;
  v62 = sub_1D67089CC;
  v63 = v32;
  v76 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v76;
  v68 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D667EEBC();
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF03028, sub_1D667EEBC);
  swift_retain_n();
  v71 = v36;
  v72 = v35;
  v37 = sub_1D72647CC();
  v76 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v76;
  v39 = &v14[*(v11 + 36)];
  v40 = __swift_project_boxed_opaque_existential_1(v39, *(v39 + 3));
  MEMORY[0x1EEE9AC00](v40, v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  v64[-4] = sub_1D615B4A4;
  v64[-3] = &v64[-6];
  v44 = v74;
  v45 = v75;
  v62 = sub_1D67089CC;
  v63 = v33;
  sub_1D5D2BC70(v75, sub_1D615B49C, v46, sub_1D615B4A4, &v64[-6]);
  if (v44)
  {
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

    v47 = v14;
  }

  else
  {
    v74 = v39;

    sub_1D5B55CBC();
    v47 = v14;
    sub_1D72647EC();
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

    v48 = v70;
    v65(v70, v66, v67);
    swift_storeEnumTagMultiPayload();
    v75 = xmmword_1D728CF30;
    v77 = xmmword_1D728CF30;
    v78 = 0;
    LOBYTE(v79) = 0;
    v49 = swift_allocObject();
    v51 = v49;
    *(v49 + 16) = v75;
    *(v49 + 32) = v79;
    v52 = v68;
    *(v49 + 40) = v68;
    *(v49 + 48) = v29;
    if (v69)
    {
    }

    else
    {
      v69 = v64;
      v79 = v16;
      MEMORY[0x1EEE9AC00](v49, v50);
      v64[-4] = sub_1D5B4AA6C;
      v64[-3] = 0;
      v62 = sub_1D67089CC;
      v63 = v51;
      v76 = 0;
      v54 = swift_allocObject();
      *(v54 + 16) = v75;
      *(v54 + 32) = v76;
      *(v54 + 40) = v52;
      *(v54 + 48) = v29;
      swift_retain_n();
      v73 = v47;
      v55 = sub_1D72647CC();
      v76 = 0;
      v56 = swift_allocObject();
      *(v56 + 16) = v55;
      *(v56 + 24) = v75;
      *(v56 + 40) = v76;
      v57 = __swift_project_boxed_opaque_existential_1(v74, *(v74 + 3));
      MEMORY[0x1EEE9AC00](v57, v58);
      MEMORY[0x1EEE9AC00](v59, v60);
      v64[-4] = sub_1D615B4A4;
      v64[-3] = &v64[-6];
      v48 = v70;
      v62 = sub_1D667EF50;
      v63 = v54;
      LOBYTE(v55) = sub_1D5D2F7A4(v70, sub_1D615B49C, v61, sub_1D615B4A4, &v64[-6]);

      if (v55)
      {
        sub_1D5B578C4();
        v47 = v73;
        sub_1D72647EC();
      }

      else
      {
        v47 = v73;
      }
    }

    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v47, sub_1D667EE28);
}

uint64_t sub_1D646F144()
{
  v1 = 0x6168706C61;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

uint64_t sub_1D646F190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D644039C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D646F1C8(uint64_t a1)
{
  v2 = sub_1D667ED80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D646F204(uint64_t a1)
{
  v2 = sub_1D667ED80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatColorColorExpression.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D667EFCC();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667F060();
  sub_1D5B58B84(&qword_1EDF0C370, sub_1D667F060);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v25;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(0x726F6C6F63, 0xE500000000000000, 0x6973736572707865, 0xEA00000000006E6FLL);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5B570F8();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D667E484();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatColorColorExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v72 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v65 - v8;
  sub_1D667F1E0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v71 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D667F060();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF0C370, sub_1D667F060);
  sub_1D5D2EE70(&type metadata for FormatColorColorExpression, v19, v21, v16, &type metadata for FormatColorColorExpression, v19, &type metadata for FormatVersions.StarSky, v17, v14, v20, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD50);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v73 = v23;
  v74 = v22;
  v68 = v24 + 16;
  v69 = v25;
  (v25)(v9);
  v67 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v83 = v15;
  v81 = 0uLL;
  v82 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v80 = 0;
  v29 = swift_allocObject();
  v77 = &v65;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v80;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v79 = v9;
  *(&v65 - 4) = sub_1D5B4AA6C;
  *(&v65 - 3) = 0;
  v63 = sub_1D67089D0;
  v64 = v31;
  v80 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v80;
  v70 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D667F274();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF029C8, sub_1D667F274);
  swift_retain_n();
  v75 = v35;
  v76 = v34;
  v36 = sub_1D72647CC();
  v80 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v80;
  v38 = &v14[*(v11 + 36)];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  *(&v65 - 4) = sub_1D615B4A4;
  *(&v65 - 3) = (&v65 - 6);
  v43 = v78;
  v44 = v79;
  v63 = sub_1D667F308;
  v64 = v32;
  sub_1D5D2BC70(v79, sub_1D615B49C, v45, sub_1D615B4A4, (&v65 - 6));
  if (v43)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v66 = v38;
    v47 = v73;
    v46 = v74;
    v78 = v28;

    sub_1D5B55CBC();
    sub_1D72647EC();
    sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);

    v49 = v72;
    v69(v72, v47, v46);
    swift_storeEnumTagMultiPayload();
    v83 = v71;
    v79 = xmmword_1D728CF30;
    v81 = xmmword_1D728CF30;
    v82 = 0;
    v80 = 0;
    v50 = swift_allocObject();
    v77 = &v65;
    *(v50 + 16) = v79;
    *(v50 + 32) = v80;
    v51 = v70;
    v52 = v78;
    *(v50 + 40) = v70;
    *(v50 + 48) = v52;
    MEMORY[0x1EEE9AC00](v50, v53);
    *(&v65 - 4) = sub_1D5B4AA6C;
    *(&v65 - 3) = 0;
    v63 = sub_1D67089D0;
    v64 = v54;
    v80 = 0;
    v55 = swift_allocObject();
    *(v55 + 16) = v79;
    *(v55 + 32) = v80;
    *(v55 + 40) = v51;
    *(v55 + 48) = v52;
    swift_retain_n();
    v56 = sub_1D72647CC();
    v80 = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    *(v57 + 24) = v79;
    *(v57 + 40) = v80;
    v58 = __swift_project_boxed_opaque_existential_1(v66, *(v66 + 3));
    MEMORY[0x1EEE9AC00](v58, v59);
    MEMORY[0x1EEE9AC00](v60, v61);
    *(&v65 - 4) = sub_1D615B4A4;
    *(&v65 - 3) = (&v65 - 6);
    v63 = sub_1D67089D0;
    v64 = v55;
    sub_1D5D2BC70(v49, sub_1D615B49C, v62, sub_1D615B4A4, (&v65 - 6));

    sub_1D667E664();
    sub_1D72647EC();
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D667F1E0);
}

uint64_t sub_1D646FDF0()
{
  v1 = 0x6973736572707865;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

uint64_t sub_1D646FE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6682F34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D646FE7C(uint64_t a1)
{
  v2 = sub_1D667F138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D646FEB8(uint64_t a1)
{
  v2 = sub_1D667F138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatColorComponent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v47 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v46 = &v39 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v45 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v44 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v43 = &v39 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v42 = &v39 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v41 = &v39 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v39 - v26;
  v48 = *v1;
  v28 = a1[3];
  v29 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725BD1C();
  v31 = __swift_project_value_buffer(v30, qword_1EDFFCD30);
  v32 = *(*(v30 - 8) + 16);
  v32(v27, v31, v30);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v33 = v52;
  sub_1D5D2BEC4(v27, sub_1D5B4AA6C, 0, v28, v29);
  if (v33)
  {
    return sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  v35 = v49;
  v36 = v49[3];
  v40 = v49[4];
  v52 = __swift_project_boxed_opaque_existential_1(v49, v36);
  if (v48 <= 2)
  {
    if (!v48)
    {
      v38 = v41;
      v32(v41, v31, v30);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v38, sub_1D5B4AA6C, 0, v36, v40);
      sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);
      goto LABEL_19;
    }

    if (v48 == 1)
    {
      v37 = v42;
      v32(v42, v31, v30);
    }

    else
    {
      v37 = v43;
      v32(v43, v31, v30);
    }
  }

  else if (v48 > 4)
  {
    if (v48 == 5)
    {
      v37 = v46;
      v32(v46, v31, v30);
    }

    else
    {
      v37 = v47;
      v32(v47, v31, v30);
    }
  }

  else if (v48 == 3)
  {
    v37 = v44;
    v32(v44, v31, v30);
  }

  else
  {
    v37 = v45;
    v32(v45, v31, v30);
  }

  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v37, sub_1D5B4AA6C, 0, v36, v40);
  sub_1D5D2CFE8(v37, type metadata accessor for FormatVersionRequirement);
LABEL_19:
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t FormatColorComponentExpression.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D667F384();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667F418();
  sub_1D5B58B84(&qword_1EDF0C430, sub_1D667F418);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v27;
  v14 = v7;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v17 - 2);
      v20 = *(v17 - 1);

      v22 = sub_1D6619AD8();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D667E8CC();
  v28 = 0uLL;
  v29 = 0;
  sub_1D726431C();
  v18 = v30;
  v28 = xmmword_1D728CF30;
  v29 = 0;
  sub_1D5C5813C();
  sub_1D726431C();
  v19 = v30;
  v28 = xmmword_1D7297410;
  v29 = 0;
  sub_1D5B57870();
  sub_1D726431C();
  (*(v14 + 8))(v10, v6);
  v25 = v30;
  *v13 = v18;
  *(v13 + 1) = v19;
  *(v13 + 8) = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatColorComponentExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v88 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v96 = &v86 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v86 - v11);
  sub_1D667F598();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v89 = v1[1];
  v19 = *(v1 + 1);
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D667F418();
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EDF0C430, sub_1D667F418);
  sub_1D5D2EE70(&type metadata for FormatColorComponentExpression, v23, v25, v20, &type metadata for FormatColorComponentExpression, v23, &type metadata for FormatVersions.JazzkonC, v21, v17, v24, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
  v28 = *(v26 - 8);
  v29 = *(v28 + 16);
  v93 = v27;
  v94 = v26;
  v91 = v28 + 16;
  v92 = v29;
  (v29)(v12);
  v90 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v103) = v18;
  v105 = 0uLL;
  v106 = 0;
  v30 = &v17[*(v14 + 44)];
  v99 = v12;
  v31 = *v30;
  v32 = *(v30 + 1);
  v104 = 0;
  v33 = swift_allocObject();
  v101 = &v86;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v104;
  *(v33 + 40) = v31;
  *(v33 + 48) = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  *(&v86 - 4) = sub_1D5B4AA6C;
  *(&v86 - 3) = 0;
  v84 = sub_1D67089D4;
  v85 = v35;
  v104 = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = v104;
  v95 = v31;
  *(v36 + 40) = v31;
  *(v36 + 48) = v32;
  sub_1D667F62C();
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EDF02DD8, sub_1D667F62C);
  swift_retain_n();
  v97 = v39;
  v98 = v38;
  v40 = sub_1D72647CC();
  v104 = 0;
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = v40;
  *(v41 + 40) = v104;
  v42 = *(v14 + 36);
  v43 = v99;
  v44 = &v17[v42];
  v100 = v17;
  v45 = __swift_project_boxed_opaque_existential_1(&v17[v42], *&v17[v42 + 24]);
  MEMORY[0x1EEE9AC00](v45, v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  *(&v86 - 4) = sub_1D615B4A4;
  *(&v86 - 3) = (&v86 - 6);
  v84 = sub_1D667F6C0;
  v85 = v36;
  v49 = v102;
  sub_1D5D2BC70(v43, sub_1D615B49C, v50, sub_1D615B4A4, (&v86 - 6));
  if (v49)
  {
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    v51 = v100;
  }

  else
  {
    v86 = v44;
    v87 = v32;

    sub_1D667EAC4();
    v51 = v100;
    sub_1D72647EC();
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    v53 = v96;
    v92(v96, v93, v94);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v103) = v89;
    v102 = xmmword_1D728CF30;
    v105 = xmmword_1D728CF30;
    v106 = 0;
    v104 = 0;
    v54 = swift_allocObject();
    v99 = &v86;
    *(v54 + 16) = v102;
    *(v54 + 32) = v104;
    v55 = v95;
    v56 = v87;
    *(v54 + 40) = v95;
    *(v54 + 48) = v56;
    MEMORY[0x1EEE9AC00](v54, v57);
    v101 = 0;
    *(&v86 - 4) = sub_1D5B4AA6C;
    *(&v86 - 3) = 0;
    v84 = sub_1D67089D4;
    v85 = v58;
    v104 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v102;
    *(v59 + 32) = v104;
    *(v59 + 40) = v55;
    *(v59 + 48) = v56;
    swift_retain_n();
    v60 = sub_1D72647CC();
    v104 = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v102;
    *(v61 + 40) = v104;
    v62 = v86;
    v63 = __swift_project_boxed_opaque_existential_1(v86, *(v86 + 3));
    MEMORY[0x1EEE9AC00](v63, v64);
    MEMORY[0x1EEE9AC00](v65, v66);
    *(&v86 - 4) = sub_1D615B4A4;
    *(&v86 - 3) = (&v86 - 6);
    v84 = sub_1D67089D4;
    v85 = v59;
    v67 = v101;
    sub_1D5D2BC70(v53, sub_1D615B49C, v68, sub_1D615B4A4, (&v86 - 6));
    if (v67 || (, , sub_1D60566E4(), sub_1D72647EC(), sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement), , v53 = v88, v92(v88, v93, v94), swift_storeEnumTagMultiPayload(), v103 = v19, v102 = xmmword_1D7297410, v105 = xmmword_1D7297410, v106 = 0, v104 = 0, v69 = swift_allocObject(), v99 = &v86, *(v69 + 16) = v102, *(v69 + 32) = v104, v70 = v62, v71 = v95, v72 = v87, *(v69 + 40) = v95, *(v69 + 48) = v72, MEMORY[0x1EEE9AC00](v69, v73), v101 = 0, *(&v86 - 4) = sub_1D5B4AA6C, *(&v86 - 3) = 0, v84 = sub_1D67089D4, v85 = v74, v104 = 0, v75 = swift_allocObject(), *(v75 + 16) = v102, *(v75 + 32) = v104, *(v75 + 40) = v71, *(v75 + 48) = v72, swift_retain_n(), v76 = sub_1D72647CC(), v104 = 0, v77 = swift_allocObject(), *(v77 + 16) = v76, *(v77 + 24) = v102, *(v77 + 40) = v104, v78 = __swift_project_boxed_opaque_existential_1(v70, *(v70 + 3)), MEMORY[0x1EEE9AC00](v78, v79), MEMORY[0x1EEE9AC00](v80, v81), *(&v86 - 4) = sub_1D615B4A4, *(&v86 - 3) = (&v86 - 6), v84 = sub_1D67089D4, v85 = v75, v82 = v101, sub_1D5D2BC70(v53, sub_1D615B49C, v83, sub_1D615B4A4, (&v86 - 6)), v82))
    {
      sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5B578C4();
      sub_1D72647EC();
      sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v51, sub_1D667F598);
}

uint64_t sub_1D6471540()
{
  v1 = 0x6E656E6F706D6F63;
  v2 = 0x65756C6176;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x726F74617265706FLL;
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

uint64_t sub_1D64715B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6683050(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64715EC(uint64_t a1)
{
  v2 = sub_1D667F4F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6471628(uint64_t a1)
{
  v2 = sub_1D667F4F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatColorExpression.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v36 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v36 = v7;
    v11 = v37;
    v12 = a1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    if (v14)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F51146F8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v36 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D667F73C();
    v39 = 0uLL;
    sub_1D726431C();
    a1 = v12;
    if (v38 <= 1u)
    {
      v23 = v11;
      if (v38)
      {
        v38 = xmmword_1D7279980;
        sub_1D667F8C8();
        sub_1D726431C();
        (*(v36 + 8))(v10, v6);
        v34 = v39;
        v35 = swift_allocObject();
        *(v35 + 16) = v34;
        v33 = v35 | 0x2000000000000000;
      }

      else
      {
        v38 = xmmword_1D7279980;
        sub_1D667F91C();
        sub_1D726431C();
        (*(v36 + 8))(v10, v6);
        v28 = v39;
        v33 = swift_allocObject();
        *(v33 + 16) = v28;
      }
    }

    else
    {
      v23 = v11;
      if (v38 == 2)
      {
        v39 = xmmword_1D7279980;
        sub_1D667F838();
        sub_1D726431C();
        (*(v36 + 8))(v10, v6);
        v29 = v38;
        v30 = swift_allocObject();
        *(v30 + 16) = v29;
        v33 = v30 | 0x4000000000000000;
      }

      else
      {
        v24 = v36;
        if (v38 == 3)
        {
          v38 = xmmword_1D7279980;
          sub_1D667F7E4();
          sub_1D726431C();
          (*(v24 + 8))(v10, v6);
          v25 = v39;
          v26 = *(&v39 + 1);
          v27 = swift_allocObject();
          *(v27 + 16) = v25;
          *(v27 + 24) = v26;
          v33 = v27 | 0x6000000000000000;
        }

        else
        {
          v38 = xmmword_1D7279980;
          sub_1D667F790();
          sub_1D726431C();
          (*(v24 + 8))(v10, v6);
          v31 = v39;
          v32 = swift_allocObject();
          *(v32 + 16) = v31;
          v33 = v32 | 0x8000000000000000;
        }
      }
    }

    *v23 = v33;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatColorExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v65 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v64 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v64 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v64 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v64 - v20;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v1;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = sub_1D5C30408();
  v67 = v25;
  sub_1D5D2EE70(&type metadata for FormatColorExpression, &type metadata for FormatCodingKeys, v30, v27, &type metadata for FormatColorExpression, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v28, v25, v29, &off_1F51F6C78);
  v31 = v26 >> 61;
  if ((v26 >> 61) <= 1)
  {
    if (v31)
    {
      v58 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v59 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v60 = qword_1EDF31EB0;

      if (v60 != -1)
      {
        swift_once();
      }

      v61 = sub_1D725BD1C();
      v62 = __swift_project_value_buffer(v61, qword_1EDFFCD30);
      (*(*(v61 - 8) + 16))(v17, v62, v61);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v39 = v67;
      sub_1D63A0EA0(1, v58, v59, v17);

      v47 = v17;
    }

    else
    {
      v42 = *(v26 + 16);
      v43 = *(v26 + 24);
      v44 = qword_1EDF31EB0;

      if (v44 != -1)
      {
        swift_once();
      }

      v45 = sub_1D725BD1C();
      v46 = __swift_project_value_buffer(v45, qword_1EDFFCD30);
      (*(*(v45 - 8) + 16))(v21, v46, v45);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v39 = v67;
      sub_1D63A0D0C(0, v42, v43, v21);

      v47 = v21;
    }
  }

  else if (v31 == 2)
  {
    v48 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v49 = qword_1EDF31EB0;

    if (v49 != -1)
    {
      swift_once();
    }

    v50 = sub_1D725BD1C();
    v51 = __swift_project_value_buffer(v50, qword_1EDFFCD30);
    (*(*(v50 - 8) + 16))(v13, v51, v50);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v39 = v67;
    sub_1D63A1034(2, v48, v13);

    v47 = v13;
  }

  else
  {
    if (v31 == 3)
    {
      v32 = v26 & 0x1FFFFFFFFFFFFFFFLL;
      v33 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v34 = *(v32 + 17);
      v35 = *(v32 + 24);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v36 = sub_1D725BD1C();
      v37 = __swift_project_value_buffer(v36, qword_1EDFFCD30);
      (*(*(v36 - 8) + 16))(v9, v37, v36);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v38 = v33 | (v34 << 8);
      v40 = v66;
      v39 = v67;
      sub_1D63A11C8(3, v38, v9, v35);
      if (!v40)
      {
        v41 = v9;
LABEL_24:
        v47 = v41;
        goto LABEL_25;
      }
    }

    else
    {
      v52 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v53 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v54 = qword_1EDF31ED0;

      if (v54 != -1)
      {
        swift_once();
      }

      v55 = sub_1D725BD1C();
      v56 = __swift_project_value_buffer(v55, qword_1EDFFCD50);
      v41 = v65;
      (*(*(v55 - 8) + 16))(v65, v56, v55);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v57 = v66;
      v39 = v67;
      sub_1D63A1368(4, v52, v53, v41);
      if (!v57)
      {

        goto LABEL_24;
      }

      v9 = v41;
    }

    v47 = v9;
  }

LABEL_25:
  sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v39, sub_1D5D30DC4);
}

uint64_t sub_1D647229C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6472364()
{
  sub_1D72621EC();
}

uint64_t sub_1D6472418()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64724DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663F10();
  *a1 = result;
  return result;
}

void sub_1D647250C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6581857;
  v5 = 0xE300000000000000;
  v6 = 7630702;
  v7 = 0xE900000000000074;
  v8 = 0x6E656E6F706D6F63;
  if (v2 != 3)
  {
    v8 = 0x726F6C6F63;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 29295;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1D647269C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, unint64_t *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v35 = a6;
  v11 = a2(0);
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v32 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3(0);
  sub_1D5B58B84(a4, a5);
  sub_1D7264B0C();
  v15 = v6;
  if (v6)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v15);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_1D7264AFC();
  v17 = Dictionary<>.errorOnUnknownKeys.getter(v16);

  v18 = v33;
  v19 = v34;
  v20 = v14;
  v21 = v35;
  if (v17)
  {
    v22 = sub_1D726433C();
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = (v22 + 48);
      while (*v24 != 1)
      {
        v24 += 24;
        if (!--v23)
        {
          goto LABEL_7;
        }
      }

      v27 = *(v24 - 2);
      v26 = *(v24 - 1);

      v28 = sub_1D6627E68(0x6E656E6F706D6F63, 0xE900000000000074, 0x65756C6176, 0xE500000000000000);
      sub_1D5E2D970();
      v15 = swift_allocError();
      *v29 = v27;
      *(v29 + 8) = v26;
      *(v29 + 16) = v28;
      *(v29 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v18 + 8))(v20, v19);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D667E8CC();
  v36 = 0uLL;
  v37 = 0;
  sub_1D726431C();
  v25 = v38;
  v36 = xmmword_1D728CF30;
  v37 = 0;
  sub_1D5B57870();
  sub_1D726431C();
  (*(v18 + 8))(v14, v19);
  v31 = v38;
  *v21 = v25;
  *(v21 + 8) = v31;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatColorModifyComponentProcessor.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v69 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v66 - v8;
  sub_1D667FB84();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 1);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D667FA04();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF0C3E0, sub_1D667FA04);
  sub_1D5D2EE70(&type metadata for FormatColorModifyComponentProcessor, v20, v22, v17, &type metadata for FormatColorModifyComponentProcessor, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v70 = v24;
  v71 = v23;
  v66[2] = (v25 + 16);
  v67 = v26;
  (v26)(v9);
  v66[1] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v77) = v15;
  v79 = 0uLL;
  v80 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v78 = 0;
  v30 = swift_allocObject();
  v74 = v66;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v78;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *&v76 = v9;
  v66[-4] = sub_1D5B4AA6C;
  v66[-3] = 0;
  v64 = sub_1D67089C8;
  v65 = v32;
  v78 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v78;
  v68 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D667FC18();
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF02C78, sub_1D667FC18);
  swift_retain_n();
  v72 = v36;
  v73 = v35;
  v37 = sub_1D72647CC();
  v78 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v78;
  v39 = &v14[*(v11 + 36)];
  v40 = __swift_project_boxed_opaque_existential_1(v39, *(v39 + 3));
  MEMORY[0x1EEE9AC00](v40, v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  v66[-4] = sub_1D615B4A4;
  v66[-3] = &v66[-6];
  v44 = v75;
  v45 = v76;
  v64 = sub_1D67089C8;
  v65 = v33;
  sub_1D5D2BC70(v76, sub_1D615B49C, v46, sub_1D615B4A4, &v66[-6]);
  if (v44)
  {
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v66[0] = v39;
    v48 = v70;
    v47 = v71;
    v75 = v29;

    sub_1D667EAC4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);

    v50 = v69;
    v67(v69, v48, v47);
    swift_storeEnumTagMultiPayload();
    v77 = v16;
    v76 = xmmword_1D728CF30;
    v79 = xmmword_1D728CF30;
    v80 = 0;
    v78 = 0;
    v51 = swift_allocObject();
    v74 = v66;
    *(v51 + 16) = v76;
    *(v51 + 32) = v78;
    v52 = v68;
    v53 = v75;
    *(v51 + 40) = v68;
    *(v51 + 48) = v53;
    MEMORY[0x1EEE9AC00](v51, v54);
    v66[-4] = sub_1D5B4AA6C;
    v66[-3] = 0;
    v64 = sub_1D67089C8;
    v65 = v55;
    v78 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v76;
    *(v56 + 32) = v78;
    *(v56 + 40) = v52;
    *(v56 + 48) = v53;
    swift_retain_n();
    v57 = sub_1D72647CC();
    v78 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = v76;
    *(v58 + 40) = v78;
    v59 = __swift_project_boxed_opaque_existential_1(v66[0], v66[0][3]);
    MEMORY[0x1EEE9AC00](v59, v60);
    MEMORY[0x1EEE9AC00](v61, v62);
    v66[-4] = sub_1D615B4A4;
    v66[-3] = &v66[-6];
    v64 = sub_1D67089C8;
    v65 = v56;
    sub_1D5D2BC70(v50, sub_1D615B49C, v63, sub_1D615B4A4, &v66[-6]);

    sub_1D5B578C4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D667FB84);
}

uint64_t sub_1D6473250(uint64_t a1)
{
  v2 = sub_1D667FADC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D647328C(uint64_t a1)
{
  v2 = sub_1D667FADC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatColorNotExpression.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22[0] = a2;
  sub_1D667FD10();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667FDA4();
  sub_1D5B58B84(&qword_1EC886940, sub_1D667FDA4);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v22[0];
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v18 = *(v16 - 2);
      v17 = *(v16 - 1);

      v19 = sub_1D6628490(0x6973736572707865, 0xEA00000000006E6FLL);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v20 = v18;
      *(v20 + 8) = v17;
      *(v20 + 16) = v19;
      *(v20 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D667E484();
  v22[1] = 0;
  v22[2] = 0;
  v23 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  *v13 = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatColorNotExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D667FF24();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D667FDA4();
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EC886940, sub_1D667FDA4);
  sub_1D5D2EE70(&type metadata for FormatColorNotExpression, v16, v18, v13, &type metadata for FormatColorNotExpression, v16, &type metadata for FormatVersions.JazzkonC, v14, v11, v17, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCD30);
  (*(*(v19 - 8) + 16))(v6, v20, v19);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v46 = v12;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v21 = &v11[*(v8 + 44)];
  v23 = *v21;
  v22 = *(v21 + 1);
  v42 = 0;
  v24 = swift_allocObject();
  v41[2] = v41;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v42;
  *(v24 + 40) = v23;
  *(v24 + 48) = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v41[-4] = sub_1D5B4AA6C;
  v41[-3] = 0;
  v39 = sub_1D67089D8;
  v40 = v26;
  v42 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v42;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D667FFB8();
  v29 = v28;
  sub_1D5B58B84(&qword_1EC886958, sub_1D667FFB8);
  swift_retain_n();
  v41[1] = v29;
  v30 = sub_1D72647CC();
  v42 = 0;
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 16) = v30;
  *(v31 + 40) = v42;
  v32 = __swift_project_boxed_opaque_existential_1(&v11[*(v8 + 36)], *&v11[*(v8 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v32, v33);
  MEMORY[0x1EEE9AC00](v34, v35);
  v41[-4] = sub_1D615B4A4;
  v41[-3] = &v41[-6];
  v39 = sub_1D67089D8;
  v40 = v27;
  v36 = v41[3];
  sub_1D5D2BC70(v6, sub_1D615B49C, v37, sub_1D615B4A4, &v41[-6]);
  if (v36)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D667E664();
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D667FF24);
}

uint64_t sub_1D6473AC8(uint64_t a1)
{
  v2 = sub_1D667FE7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6473B04(uint64_t a1)
{
  v2 = sub_1D667FE7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6473B9C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, unint64_t *a4@<X3>, void (*a5)(uint64_t)@<X4>, void *a6@<X8>)
{
  v36 = a6;
  v11 = a2(0);
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v33 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3(0);
  sub_1D5B58B84(a4, a5);
  sub_1D7264B0C();
  v15 = v6;
  if (v6)
  {
    v16 = a1;
LABEL_11:
    sub_1D61E4FBC(v16, v15);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_1D7264AFC();
  v18 = Dictionary<>.errorOnUnknownKeys.getter(v17);

  v19 = v34;
  v20 = v35;
  v21 = v14;
  v16 = a1;
  v22 = v36;
  if (v18)
  {
    v23 = sub_1D726433C();
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = (v23 + 48);
      while (*v25 != 1)
      {
        v25 += 24;
        if (!--v24)
        {
          goto LABEL_8;
        }
      }

      v28 = *(v25 - 2);
      v27 = *(v25 - 1);

      v29 = sub_1D6627E68(0x657270784573686CLL, 0xED00006E6F697373, 0x6572707845736872, 0xED00006E6F697373);
      sub_1D5E2D970();
      v15 = swift_allocError();
      *v30 = v28;
      *(v30 + 8) = v27;
      *(v30 + 16) = v29;
      *(v30 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v19 + 8))(v21, v20);
      goto LABEL_11;
    }

LABEL_8:
  }

  sub_1D667E484();
  v37 = 0uLL;
  v38 = 0;
  sub_1D726431C();
  v26 = v39;
  v37 = xmmword_1D728CF30;
  v38 = 0;
  sub_1D726431C();
  (*(v19 + 8))(v14, v20);
  v32 = v39;
  *v22 = v26;
  v22[1] = v32;
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t FormatColorOrExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v73 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v66 - v8;
  sub_1D66802C4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v72 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D6680144();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC886988, sub_1D6680144);
  sub_1D5D2EE70(&type metadata for FormatColorOrExpression, v19, v21, v16, &type metadata for FormatColorOrExpression, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v74 = v23;
  v75 = v22;
  v69 = v24 + 16;
  v70 = v25;
  (v25)(v9);
  v68 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v84 = v15;
  v82 = 0uLL;
  v83 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v81 = 0;
  v29 = swift_allocObject();
  v78 = &v66;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v81;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v80 = v9;
  *(&v66 - 4) = sub_1D5B4AA6C;
  *(&v66 - 3) = 0;
  v64 = sub_1D6708868;
  v65 = v31;
  v81 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v81;
  v71 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D6680358();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EC8869A0, sub_1D6680358);
  swift_retain_n();
  v76 = v35;
  v77 = v34;
  v36 = sub_1D72647CC();
  v81 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v81;
  v38 = &v14[*(v11 + 36)];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  *(&v66 - 4) = sub_1D615B4A4;
  *(&v66 - 3) = (&v66 - 6);
  v43 = v79;
  v44 = v80;
  v64 = sub_1D6708868;
  v65 = v32;
  sub_1D5D2BC70(v80, sub_1D615B49C, v45, sub_1D615B4A4, (&v66 - 6));
  if (v43)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v67 = v38;
    v47 = v74;
    v46 = v75;
    v79 = v28;

    v48 = sub_1D667E664();
    sub_1D72647EC();
    v66 = v48;
    sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);

    v50 = v73;
    v70(v73, v47, v46);
    swift_storeEnumTagMultiPayload();
    v84 = v72;
    v80 = xmmword_1D728CF30;
    v82 = xmmword_1D728CF30;
    v83 = 0;
    v81 = 0;
    v51 = swift_allocObject();
    v78 = &v66;
    *(v51 + 16) = v80;
    *(v51 + 32) = v81;
    v52 = v71;
    v53 = v79;
    *(v51 + 40) = v71;
    *(v51 + 48) = v53;
    MEMORY[0x1EEE9AC00](v51, v54);
    *(&v66 - 4) = sub_1D5B4AA6C;
    *(&v66 - 3) = 0;
    v64 = sub_1D6708868;
    v65 = v55;
    v81 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v80;
    *(v56 + 32) = v81;
    *(v56 + 40) = v52;
    *(v56 + 48) = v53;
    swift_retain_n();
    v57 = sub_1D72647CC();
    v81 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = v80;
    *(v58 + 40) = v81;
    v59 = __swift_project_boxed_opaque_existential_1(v67, *(v67 + 3));
    MEMORY[0x1EEE9AC00](v59, v60);
    MEMORY[0x1EEE9AC00](v61, v62);
    *(&v66 - 4) = sub_1D615B4A4;
    *(&v66 - 3) = (&v66 - 6);
    v64 = sub_1D6708868;
    v65 = v56;
    sub_1D5D2BC70(v50, sub_1D615B49C, v63, sub_1D615B4A4, (&v66 - 6));

    sub_1D72647EC();
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66802C4);
}

uint64_t sub_1D6474760(uint64_t a1)
{
  v2 = sub_1D668021C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D647479C(uint64_t a1)
{
  v2 = sub_1D668021C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6474800@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663D48();
  *a1 = result;
  return result;
}

void sub_1D6474830(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x646574696D696CLL;
  v5 = 0xE500000000000000;
  v6 = 0x646E656C62;
  if (v2 != 6)
  {
    v6 = 0xD000000000000011;
    v5 = 0x80000001D73BA880;
  }

  v7 = 0xEB000000006C616ELL;
  v8 = 0x6F697469646E6F63;
  if (v2 != 4)
  {
    v8 = 0x6563616C706572;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6E6769737361;
  if (v2 != 2)
  {
    v9 = 0x796669646F6DLL;
  }

  if (*v1)
  {
    v4 = 0x6D694C6172747865;
    v3 = 0xEC00000064657469;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t FormatColumnRowSpan.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v72 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v65 - v8;
  sub_1D6680450();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v71 = v1[1];
  v85 = *(v1 + 16);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D5CBA178();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF254F8, sub_1D5CBA178);
  sub_1D5D2EE70(&type metadata for FormatColumnRowSpan, v19, v21, v16, &type metadata for FormatColumnRowSpan, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v73 = v23;
  v74 = v22;
  v68 = v24 + 16;
  v69 = v25;
  (v25)(v9);
  v67 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v80 = v15;
  v82 = 0uLL;
  v83 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v84 = 0;
  v29 = swift_allocObject();
  v77 = &v65;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v84;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v79 = v9;
  *(&v65 - 4) = sub_1D5B4AA6C;
  *(&v65 - 3) = 0;
  v63 = sub_1D67089DC;
  v64 = v31;
  v84 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v84;
  v70 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66804E4();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF03538, sub_1D66804E4);
  swift_retain_n();
  v75 = v35;
  v76 = v34;
  v36 = sub_1D72647CC();
  v84 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v84;
  v38 = &v14[*(v11 + 36)];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  *(&v65 - 4) = sub_1D615B4A4;
  *(&v65 - 3) = (&v65 - 6);
  v43 = v78;
  v44 = v79;
  v63 = sub_1D6680578;
  v64 = v32;
  sub_1D5D2BC70(v79, sub_1D615B49C, v45, sub_1D615B4A4, (&v65 - 6));
  if (v43)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v66 = v38;
    v47 = v73;
    v46 = v74;
    v78 = v28;

    sub_1D72647EC();
    sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);

    v49 = v72;
    v69(v72, v47, v46);
    swift_storeEnumTagMultiPayload();
    v80 = v71;
    v81 = v85;
    v79 = xmmword_1D728CF30;
    v82 = xmmword_1D728CF30;
    v83 = 0;
    v84 = 0;
    v50 = swift_allocObject();
    v77 = &v65;
    *(v50 + 16) = v79;
    *(v50 + 32) = v84;
    v51 = v70;
    v52 = v78;
    *(v50 + 40) = v70;
    *(v50 + 48) = v52;
    MEMORY[0x1EEE9AC00](v50, v53);
    *(&v65 - 4) = sub_1D5B4AA6C;
    *(&v65 - 3) = 0;
    v63 = sub_1D67089DC;
    v64 = v54;
    v84 = 0;
    v55 = swift_allocObject();
    *(v55 + 16) = v79;
    *(v55 + 32) = v84;
    *(v55 + 40) = v51;
    *(v55 + 48) = v52;
    swift_retain_n();
    v56 = sub_1D72647CC();
    v84 = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    *(v57 + 24) = v79;
    *(v57 + 40) = v84;
    v58 = __swift_project_boxed_opaque_existential_1(v66, *(v66 + 3));
    MEMORY[0x1EEE9AC00](v58, v59);
    MEMORY[0x1EEE9AC00](v60, v61);
    *(&v65 - 4) = sub_1D615B4A4;
    *(&v65 - 3) = (&v65 - 6);
    v63 = sub_1D67089DC;
    v64 = v55;
    sub_1D5D2BC70(v49, sub_1D615B49C, v62, sub_1D615B4A4, (&v65 - 6));

    sub_1D66805F4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D6680450);
}

uint64_t sub_1D647525C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66832D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6475294(uint64_t a1)
{
  v2 = sub_1D5CBA624();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64752D0(uint64_t a1)
{
  v2 = sub_1D5CBA624();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatCommand.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = *v1;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatCommand, &type metadata for FormatCodingKeys, v15, v12, &type metadata for FormatCommand, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v13, v10, v14, &off_1F51F6C78);
  v16 = *(v11 + 32);
  v22[0] = *(v11 + 16);
  v22[1] = v16;
  v23[0] = *(v11 + 48);
  *(v23 + 15) = *(v11 + 63);
  sub_1D62B5248(v22, v21);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v17 = sub_1D725BD1C();
  v18 = __swift_project_value_buffer(v17, qword_1EDFFCD30);
  (*(*(v17 - 8) + 16))(v6, v18, v17);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63BB478(v22, v6);
  sub_1D5D085FC(v22);
  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t FormatCommandBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v92 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v91 = &v84 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v89 = &v84 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v87 = &v84 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v88 = &v84 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v86 = &v84 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v85 = &v84 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v90 = &v84 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v84 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v84 - v33;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v38 = &v84 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v1 + 8);
  v97 = *v1;
  v41 = *(v1 + 16);
  v40 = *(v1 + 24);
  v94 = v39;
  v95 = v41;
  v93 = v40;
  v42 = *(v1 + 32);
  v84 = *(v1 + 40);
  v43 = *(v1 + 48);
  v44 = *(v1 + 50);
  v45 = a1[3];
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v45);
  v47 = sub_1D5C30408();
  v96 = v38;
  sub_1D5D2EE70(&type metadata for FormatCommandBinding, &type metadata for FormatCodingKeys, v48, v45, &type metadata for FormatCommandBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v46, v38, v47, &off_1F51F6C78);
  if (v44)
  {
    v49 = 8;
  }

  else
  {
    v49 = 0;
  }

  v50 = v49 & 0xFFFFFFF8 | (v43 >> 11) & 7;
  if (v50 > 4)
  {
    if (v50 <= 6)
    {
      v56 = v96;
      if (v50 == 5)
      {
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v63 = sub_1D725BD1C();
        v64 = __swift_project_value_buffer(v63, qword_1EDFFCCA8);
        v59 = v88;
        (*(*(v63 - 8) + 16))(v88, v64, v63);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63A4014(5, v97, v59);
      }

      else
      {
        if (qword_1EDF31ED8 != -1)
        {
          swift_once();
        }

        v82 = sub_1D725BD1C();
        v83 = __swift_project_value_buffer(v82, qword_1EDFFCD68);
        v59 = v87;
        (*(*(v82 - 8) + 16))(v87, v83, v82);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63A41A8(6, v97, v94, v95, v93, v59);
      }
    }

    else
    {
      v56 = v96;
      if (v50 == 7)
      {
        v98[0] = v97;
        v98[1] = v94;
        v98[2] = v95;
        v98[3] = v93;
        v98[4] = v42;
        v98[5] = v84;
        v99 = v43 & 0xC7FF;
        if (qword_1EDF31F58[0] != -1)
        {
          swift_once();
        }

        v72 = sub_1D725BD1C();
        v73 = __swift_project_value_buffer(v72, qword_1EDFFCE98);
        v59 = v89;
        (*(*(v72 - 8) + 16))(v89, v73, v72);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63A4344(7, v98, v59);
      }

      else if (v50 == 8)
      {
        if (qword_1EDF31F40 != -1)
        {
          swift_once();
        }

        v57 = sub_1D725BD1C();
        v58 = __swift_project_value_buffer(v57, qword_1EDFFCE50);
        v59 = v91;
        (*(*(v57 - 8) + 16))(v91, v58, v57);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63A44E4(8, v97, v59);
      }

      else
      {
        if (qword_1EDF31F38 != -1)
        {
          swift_once();
        }

        v78 = sub_1D725BD1C();
        v79 = __swift_project_value_buffer(v78, qword_1EDFFCE38);
        v59 = v92;
        (*(*(v78 - 8) + 16))(v92, v79, v78);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63A4678(9, v97 & 1, v59);
      }
    }

    v62 = v59;
    goto LABEL_47;
  }

  if (v50 <= 1)
  {
    if (!v50)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v60 = sub_1D725BD1C();
      v61 = __swift_project_value_buffer(v60, qword_1EDFFCD30);
      (*(*(v60 - 8) + 16))(v34, v61, v60);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v56 = v96;
      sub_1D63A3820(0, v97, v94, v95, v93, v34);
      v62 = v34;
      goto LABEL_47;
    }

    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v80 = sub_1D725BD1C();
    v81 = __swift_project_value_buffer(v80, qword_1EDFFCD30);
    (*(*(v80 - 8) + 16))(v30, v81, v80);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v56 = v96;
    sub_1D63A39BC(1, v97, v30);
LABEL_42:
    v62 = v30;
LABEL_47:
    sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);
    v55 = v56;
    return sub_1D5D2CFE8(v55, sub_1D5D30DC4);
  }

  if (v50 == 2)
  {
    sub_1D5B58478();
    v66 = *(v65 + 48);
    v30 = v90;
    v67 = &v90[*(v65 + 64)];
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v68 = sub_1D725BD1C();
    v69 = __swift_project_value_buffer(v68, qword_1EDFFCD18);
    v70 = *(*(v68 - 8) + 16);
    v70(v30, v69, v68);
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v71 = __swift_project_value_buffer(v68, qword_1EDFFCCE8);
    v70(&v30[v66], v71, v68);
    type metadata accessor for FormatVersionRequirement.Value(0);
    *v67 = 0;
    *(v67 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    v56 = v96;
    sub_1D63A3B50(2, v97 & 1, v30);
    goto LABEL_42;
  }

  v51 = v96;
  if (v50 == 3)
  {
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v52 = sub_1D725BD1C();
    v53 = __swift_project_value_buffer(v52, qword_1EDFFCD98);
    v54 = v85;
    (*(*(v52 - 8) + 16))(v85, v53, v52);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A3CE8(3, v97, v94, v95, v54);
    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
    v55 = v51;
    return sub_1D5D2CFE8(v55, sub_1D5D30DC4);
  }

  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v74 = sub_1D725BD1C();
  v75 = __swift_project_value_buffer(v74, qword_1EDFFCD50);
  v76 = v86;
  (*(*(v74 - 8) + 16))(v86, v75, v74);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63A3E80(4, v97, v76);
  sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v51, sub_1D5D30DC4);
}

uint64_t sub_1D6476114(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x697463416576696CLL;
    v6 = 1919251317;
    if (a1 != 8)
    {
      v6 = 0x657069636572;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x656C7A7A7570;
    if (a1 != 5)
    {
      v7 = 0x76457374726F7073;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x70756F7267;
    v2 = 0x6172546F69647561;
    v3 = 6775156;
    if (a1 != 3)
    {
      v3 = 0x6575737369;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x656E696C64616568;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D64762A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6476114(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatCommandState.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v33 - v13;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 8);
  v34 = *v1;
  v20 = *(v1 + 16);
  v22 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v23 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatCommandState, &type metadata for FormatCodingKeys, v24, v22, &type metadata for FormatCommandState, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v21, v18, v23, &off_1F51F6C78);
  if (v20)
  {
    if (v20 == 1)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v25 = sub_1D725BD1C();
      v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
      (*(*(v25 - 8) + 16))(v10, v26, v25);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63ADCA0(1, v34 & 1, v10);
      v27 = v10;
    }

    else
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v30 = sub_1D725BD1C();
      v31 = __swift_project_value_buffer(v30, qword_1EDFFCE80);
      (*(*(v30 - 8) + 16))(v6, v31, v30);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63ADE68(2, v34, v6);
      v27 = v6;
    }
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCD30);
    (*(*(v28 - 8) + 16))(v14, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63ADAD8(0, v34, v19, v14);
    v27 = v14;
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D6476734(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E61656C6F6F62;
  if (v2 != 1)
  {
    v3 = 0x72656765746E69;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x676E69727473;
  }

  if (v2)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  v6 = 0x6E61656C6F6F62;
  if (*a2 != 1)
  {
    v6 = 0x72656765746E69;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x676E69727473;
  }

  if (*a2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();
  }

  return v9 & 1;
}

uint64_t sub_1D6476834()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64768D4()
{
  sub_1D72621EC();
}

uint64_t sub_1D6476960()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64769FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6E61656C6F6F62;
  if (v2 != 1)
  {
    v4 = 0x72656765746E69;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x676E69727473;
  }

  if (!v5)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t FormatCommandValue.encode(to:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v50 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v51 = &v48 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = a2[3];
  v15 = a2[4];
  v57 = a2[2];
  v58 = &v48 - v16;
  v55 = v15;
  v56 = v14;
  v17 = _s10CodingKeysOMa_184();
  WitnessTable = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  *&v62 = v17;
  *(&v62 + 1) = WitnessTable;
  v63 = v19;
  v64 = v20;
  v21 = type metadata accessor for FormatCodingKeysContainer();
  v22 = swift_getWitnessTable();
  sub_1D726446C();
  swift_getWitnessTable();
  v23 = type metadata accessor for VersionedKeyedEncodingContainer();
  v60 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v48 - v25;
  v28 = a1[3];
  v27 = a1[4];
  v29 = __swift_project_boxed_opaque_existential_1(a1, v28);
  v49 = a2;
  sub_1D5D2EE70(a2, v21, v29, v28, a2, v21, &type metadata for FormatVersions.JazzkonC, v27, v26, v22, &off_1F51F6C78);
  v54 = v3;
  v65 = *v3;
  v62 = 0uLL;
  LOBYTE(v63) = 0;
  v30 = qword_1EDF31EB0;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = sub_1D725BD1C();
  v32 = __swift_project_value_buffer(v31, qword_1EDFFCD30);
  v33 = (*(v31 - 8) + 16);
  v34 = v58;
  v52 = *v33;
  v53 = v32;
  v52(v58);
  v35 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v36 = sub_1D66807EC();
  v37 = v59;
  sub_1D5D38930(&v65, &v62, v34, sub_1D5B4AA6C, 0, v23, &type metadata for FormatCommand, v36);
  sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);

  if (v37)
  {
    return (*(v60 + 8))(v26, v23);
  }

  v65 = v54[1];
  v62 = xmmword_1D728CF30;
  LOBYTE(v63) = 0;
  v39 = v51;
  v59 = v33;
  (v52)(v51, v53, v31);
  v58 = v35;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for FormatCommandValue.CaseValue();
  v40 = v26;
  v41 = v23;
  v42 = sub_1D72627FC();

  v61 = swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  sub_1D5D38930(&v65, &v62, v39, sub_1D5B4AA6C, 0, v41, v42, v43);
  sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

  v44 = v50;
  v45 = *(v49 + 12);
  v62 = xmmword_1D7297410;
  LOBYTE(v63) = 0;
  (v52)(v50, v53, v31);
  swift_storeEnumTagMultiPayload();
  v46 = type metadata accessor for FormatCommandValue.DefaultValue();
  v47 = swift_getWitnessTable();
  sub_1D5D38930(v54 + v45, &v62, v44, sub_1D5B4AA6C, 0, v41, v46, v47);
  sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
  return (*(v60 + 8))(v40, v41);
}

uint64_t sub_1D64770D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365736163 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D6477238()
{
  _s10CodingKeysOMa_184();
  sub_1D72644CC();
  swift_allocObject();
  v0 = sub_1D726270C();
  *v1 = 50462976;

  return sub_1D5BFCB60(v0);
}

uint64_t sub_1D64772C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D64770D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64772F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5F1ED8C();
  *a1 = result;
  return result;
}

uint64_t sub_1D647732C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6477238();
  *a1 = result;
  return result;
}

uint64_t sub_1D6477360(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D64773B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D6477408(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v38 - v11;
  v13 = *(a2 + 16);
  v39 = *(a2 + 32);
  v40 = v13;
  v14 = _s10CodingKeysOMa_311();
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  *&v47 = v14;
  *(&v47 + 1) = WitnessTable;
  v48 = v16;
  v49 = v17;
  v18 = type metadata accessor for FormatCodingKeysContainer();
  v19 = swift_getWitnessTable();
  sub_1D726446C();
  swift_getWitnessTable();
  v50 = type metadata accessor for VersionedKeyedEncodingContainer();
  v44 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v20);
  v22 = &v38 - v21;
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D5D2EE70(a2, v18, v25, v23, a2, v18, &type metadata for FormatVersions.JazzkonC, v24, v22, v19, &off_1F51F6C78);
  v26 = *v3;
  v27 = *(v3 + 8);
  v41 = v3;
  v28 = *(v3 + 16);
  *&v47 = v26;
  *(&v47 + 1) = v27;
  LOBYTE(v48) = v28;
  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  sub_1D5D03180(v26, v27, v28);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v29 = sub_1D725BD1C();
  v30 = __swift_project_value_buffer(v29, qword_1EDFFCD30);
  v31 = *(*(v29 - 8) + 16);
  v38 = v30;
  v31(v12);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v32 = sub_1D66F0F2C();
  v33 = v43;
  sub_1D5D38930(&v47, v45, v12, sub_1D5B4AA6C, 0, v50, &type metadata for FormatCommandState, v32);
  sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);
  sub_1D5D07BA8(v47, *(&v47 + 1), v48);
  if (v33)
  {
    return (*(v44 + 8))(v22, v50);
  }

  v35 = *(a2 + 44);
  v47 = xmmword_1D728CF30;
  LOBYTE(v48) = 0;
  v36 = v42;
  (v31)(v42, v38, v29);
  swift_storeEnumTagMultiPayload();
  v37 = v50;
  sub_1D5D38930(v41 + v35, &v47, v36, sub_1D5B4AA6C, 0, v50, v40, *(v39 + 16));
  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  return (*(v44 + 8))(v22, v37);
}

uint64_t sub_1D6477898(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D64779A8()
{
  _s10CodingKeysOMa_311();
  sub_1D72644CC();
  swift_allocObject();
  v0 = sub_1D726270C();
  *v1 = 256;
  *(v1 + 2) = 2;

  return sub_1D5BFCB60(v0);
}

uint64_t sub_1D6477A20(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void))
{
  sub_1D7264A0C();
  a4(v8, *v4, a2[2], a2[3], a2[4]);
  return sub_1D7264A5C();
}

uint64_t sub_1D6477A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6477898(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6477AB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5E3192C();
  *a1 = result;
  return result;
}

uint64_t sub_1D6477AE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D64779A8();
  *a1 = result;
  return result;
}

uint64_t sub_1D6477B18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}