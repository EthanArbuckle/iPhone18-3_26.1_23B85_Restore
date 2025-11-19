void sub_1D6E549E4(id a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = *(a2 + 16);
  if (v7 > 0xFD)
  {
    [a1 cornerRadius];
    if (v8 != 0.0)
    {
      [a1 setCornerRadius_];
    }

    if ([a1 maskedCorners])
    {
      [a1 setMaskedCorners_];
    }

    v9 = *MEMORY[0x1E69796E0];
    v10 = [a1 cornerCurve];
    v11 = sub_1D726207C();
    v13 = v12;
    if (v11 != sub_1D726207C() || v13 != v14)
    {
      v16 = sub_1D72646CC();

      if ((v16 & 1) == 0)
      {

        [a1 setCornerCurve_];
      }

      return;
    }

    goto LABEL_43;
  }

  v17 = *a2;
  if ((v7 & 0x80) != 0)
  {
    Height = CGRectGetHeight(*&a3);
    v42.origin.x = a3;
    v42.origin.y = a4;
    v42.size.width = a5;
    v42.size.height = a6;
    Width = CGRectGetWidth(v42);
    if (Width >= Height)
    {
      Width = Height;
    }

    v19 = Width * 0.5;
    v18 = &unk_1F50F4978;
    LOBYTE(v7) = v17;
  }

  else
  {
    v18 = *(a2 + 8);
    v19 = *a2;
    sub_1D5ED34C4(*a2, v18, v7);
  }

  [a1 cornerRadius];
  if (v26 != v19)
  {
    [a1 setCornerRadius_];
    v27 = *(v18 + 2);
    if (v27)
    {
      goto LABEL_20;
    }

LABEL_29:
    v32 = 0;
    goto LABEL_35;
  }

  v27 = *(v18 + 2);
  if (!v27)
  {
    goto LABEL_29;
  }

LABEL_20:
  v28 = 0;
  v29 = v18 + 32;
  do
  {
    v30 = *v29++;
    v31 = qword_1D7362B50[v30];
    if ((v31 & ~v28) == 0)
    {
      v31 = 0;
    }

    v28 |= v31;
    --v27;
  }

  while (v27);
  if (v28)
  {
    if ((v28 & 2) != 0)
    {
      v32 = 3;
      if ((v28 & 4) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v32 = 1;
      if ((v28 & 4) == 0)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_32;
  }

  if ((v28 & 2) == 0)
  {
    v32 = 0;
    if ((v28 & 4) == 0)
    {
      goto LABEL_33;
    }

LABEL_32:
    v32 |= 4uLL;
    goto LABEL_33;
  }

  v32 = 2;
  if ((v28 & 4) != 0)
  {
    goto LABEL_32;
  }

LABEL_33:
  if ((v28 & 8) != 0)
  {
    v32 |= 8uLL;
  }

LABEL_35:
  if ([a1 maskedCorners] != v32)
  {
    [a1 setMaskedCorners_];
  }

  if (v7)
  {
    v33 = MEMORY[0x1E69796E8];
  }

  else
  {
    v33 = MEMORY[0x1E69796E0];
  }

  v40 = *v33;
  v34 = [a1 cornerCurve];
  v35 = sub_1D726207C();
  v37 = v36;
  if (v35 == sub_1D726207C() && v37 == v38)
  {

LABEL_43:

    return;
  }

  v39 = sub_1D72646CC();

  if ((v39 & 1) == 0)
  {
    [a1 setCornerCurve_];
  }
}

void sub_1D6E54E5C()
{
  sub_1D5B58298(319, &qword_1EC897220, &type metadata for DebugFormatFile, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DebugFormatFileDirectoryMetadata(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D6E54F3C()
{
  sub_1D725BD1C();
  if (v0 <= 0x3F)
  {
    sub_1D5B58298(319, &qword_1EDF3C7C0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D5B58298(319, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1D5CB8978();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D6E55048(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v13[3] = a4;
  sub_1D6E56EC8(0, &qword_1EC897280, sub_1D6E56D58, &type metadata for DebugFormatFile.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E56D58();
  sub_1D7264B5C();
  v17 = 0;
  v11 = v14;
  sub_1D72643FC();
  if (!v11)
  {
    v16 = 1;
    sub_1D726441C();
    v15 = 2;
    sub_1D726440C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6E55214(void *a1)
{
  v3 = v1;
  sub_1D6E56EC8(0, &qword_1EC897258, sub_1D6E568D4, &type metadata for DebugFormatFileDirectory.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E568D4();
  sub_1D7264B5C();
  v13 = *v3;
  v12[15] = 0;
  sub_1D5B58298(0, &qword_1EC897220, &type metadata for DebugFormatFile, MEMORY[0x1E69E62F8]);
  sub_1D6E56970(&qword_1EC897260, sub_1D6920BD0);
  sub_1D726443C();
  if (!v2)
  {
    type metadata accessor for DebugFormatFileDirectory(0);
    v12[14] = 1;
    type metadata accessor for DebugFormatFileDirectoryMetadata(0);
    sub_1D6E56928(&qword_1EC897268, type metadata accessor for DebugFormatFileDirectoryMetadata);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6E55474@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  MEMORY[0x1EEE9AC00](v22, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6E56EC8(0, &qword_1EC897238, sub_1D6E568D4, &type metadata for DebugFormatFileDirectory.CodingKeys, MEMORY[0x1E69E6F48]);
  v24 = v6;
  v21 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for DebugFormatFileDirectory(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E568D4();
  v23 = v9;
  v14 = v25;
  sub_1D7264B0C();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = a1;
  v15 = v21;
  sub_1D5B58298(0, &qword_1EC897220, &type metadata for DebugFormatFile, MEMORY[0x1E69E62F8]);
  v27 = 0;
  sub_1D6E56970(&qword_1EC897248, sub_1D692092C);
  v16 = v24;
  v17 = v23;
  sub_1D726431C();
  v19 = v28;
  *v13 = v28;
  v26 = 1;
  sub_1D6E56928(&qword_1EC897250, type metadata accessor for DebugFormatFileDirectoryMetadata);
  sub_1D726431C();
  (*(v15 + 8))(v17, v16);
  sub_1D69F95DC(v5, v13 + *(v10 + 20));
  sub_1D6E56E00(v13, v20, type metadata accessor for DebugFormatFileDirectory);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_1D6E56E68(v13, type metadata accessor for DebugFormatFileDirectory);
}

uint64_t sub_1D6E55818(void *a1)
{
  v3 = v1;
  sub_1D6E56EC8(0, &qword_1EC897298, sub_1D6E56DAC, &type metadata for DebugFormatFileDirectoryMetadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E56DAC();
  sub_1D7264B5C();
  v20 = 0;
  sub_1D725BD1C();
  sub_1D6E56928(&qword_1EDF178C0, MEMORY[0x1E69D6B38]);
  sub_1D726443C();
  if (!v2)
  {
    v11 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
    v19 = 1;
    sub_1D726443C();
    v18 = 2;
    sub_1D72643FC();
    v17 = 3;
    sub_1D72643AC();
    v16 = 4;
    sub_1D726437C();
    if (*(v3 + *(v11 + 36)) != 1)
    {
      v15 = 5;
      v14 = 0;
      sub_1D6E56F30();
      sub_1D72647EC();
    }
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6E55AF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_1D725BD1C();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v48 = &v41 - v9;
  sub_1D6E56EC8(0, &qword_1EC897288, sub_1D6E56DAC, &type metadata for DebugFormatFileDirectoryMetadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v41 - v12;
  v14 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E56DAC();
  v49 = v13;
  v18 = v50;
  sub_1D7264B0C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = v6;
  v50 = a1;
  v58 = 0;
  sub_1D6E56928(&qword_1EDF43A48, MEMORY[0x1E69D6B38]);
  v19 = v45;
  sub_1D726431C();
  v21 = *(v44 + 32);
  v41 = v17;
  v21(v17, v48, v19);
  v57 = 1;
  v22 = v42;
  sub_1D726431C();
  v21(&v41[v14[5]], v22, v19);
  v56 = 2;
  v23 = sub_1D72642BC();
  v24 = v50;
  v25 = v46;
  v26 = v41;
  v27 = &v41[v14[6]];
  *v27 = v23;
  v27[1] = v28;
  v55 = 3;
  v29 = sub_1D726425C();
  v30 = v26 + v14[7];
  *v30 = v29;
  *(v30 + 8) = v31 & 1;
  v54 = 4;
  v32 = sub_1D726422C();
  v33 = (v26 + v14[8]);
  *v33 = v32;
  v33[1] = v34;
  v53 = 5;
  v35 = sub_1D726434C();
  if (v35)
  {
    v52 = 5;
    v36 = v49;
    sub_1D726431C();
    v37 = v36;
    v38 = v43;
    (*(v25 + 8))(v37, v47);
    v39 = v38;
    v40 = v51;
  }

  else
  {
    (*(v25 + 8))(v49, v47);
    v40 = 1;
    v39 = v43;
  }

  *(v26 + v14[9]) = v40;
  sub_1D6E56E00(v26, v39, type metadata accessor for DebugFormatFileDirectoryMetadata);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_1D6E56E68(v26, type metadata accessor for DebugFormatFileDirectoryMetadata);
}

uint64_t sub_1D6E560CC()
{
  v1 = 0x6D617473656D6974;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1752457584;
  }
}

uint64_t sub_1D6E56128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6E57308(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6E56150(uint64_t a1)
{
  v2 = sub_1D6E56D58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E5618C(uint64_t a1)
{
  v2 = sub_1D6E56D58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D6E561C8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = sub_1D6E56B14(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v7;
    *(a2 + 24) = v6 & 1;
  }
}

uint64_t sub_1D6E56224(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = sub_1D72646CC();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v4)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

uint64_t sub_1D6E562B0()
{
  if (*v0)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x73656C6966;
  }
}

uint64_t sub_1D6E562E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73656C6966 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
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

uint64_t sub_1D6E563C0(uint64_t a1)
{
  v2 = sub_1D6E568D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E563FC(uint64_t a1)
{
  v2 = sub_1D6E568D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D6E56468()
{
  v1 = *v0;
  v2 = 0x6556726576726573;
  v3 = 0xD000000000000014;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x655674616D726F66;
  if (v1 != 1)
  {
    v5 = 0x636E617242746967;
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

uint64_t sub_1D6E5653C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6E57430(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6E56564(uint64_t a1)
{
  v2 = sub_1D6E56DAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E565A0(uint64_t a1)
{
  v2 = sub_1D6E56DAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6E56610()
{
  v1 = 7104878;
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0x567265767265737BLL, 0xEF3D6E6F69737265);
  sub_1D725BD1C();
  sub_1D6E56928(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
  v2 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v2);

  MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73F4DC0);
  v3 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  v4 = sub_1D725BC9C();
  MEMORY[0x1DA6F9910](v4);

  MEMORY[0x1DA6F9910](0xD000000000000019, 0x80000001D73F4DE0);
  if (*(v0 + v3[9]))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + v3[9]))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1DA6F9910](v5, v6);

  MEMORY[0x1DA6F9910](0xD000000000000012, 0x80000001D73F4E00);
  MEMORY[0x1DA6F9910](*(v0 + v3[6]), *(v0 + v3[6] + 8));
  MEMORY[0x1DA6F9910](0xD000000000000013, 0x80000001D73F4E20);
  v7 = (v0 + v3[8]);
  if (v7[1])
  {
    v8 = *v7;
    v9 = v7[1];
  }

  else
  {
    v9 = 0xE300000000000000;
    v8 = 7104878;
  }

  MEMORY[0x1DA6F9910](v8, v9);

  MEMORY[0x1DA6F9910](0xD000000000000017, 0x80000001D73F4E40);
  if (*(v0 + v3[7] + 8))
  {
    v10 = 0xE300000000000000;
  }

  else
  {
    sub_1D5E4049C();
    v1 = sub_1D7263ADC();
    v10 = v11;
  }

  MEMORY[0x1DA6F9910](v1, v10);

  MEMORY[0x1DA6F9910](125, 0xE100000000000000);
  return 0;
}

unint64_t sub_1D6E568D4()
{
  result = qword_1EC897240;
  if (!qword_1EC897240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897240);
  }

  return result;
}

uint64_t sub_1D6E56928(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6E56970(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B58298(255, &qword_1EC897220, &type metadata for DebugFormatFile, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6E56A00(uint64_t a1, uint64_t a2)
{
  if ((sub_1D725BCBC() & 1) == 0)
  {
    goto LABEL_23;
  }

  v4 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  if ((sub_1D725BCBC() & 1) == 0)
  {
    goto LABEL_23;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_23;
  }

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if ((v12 & 1) == 0)
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  if (v14)
  {
LABEL_14:
    v15 = v4[8];
    v16 = (a1 + v15);
    v17 = *(a1 + v15 + 8);
    v18 = (a2 + v15);
    v19 = v18[1];
    if (v17)
    {
      if (v19)
      {
        v20 = *v16 == *v18 && v17 == v19;
        if (v20 || (sub_1D72646CC() & 1) != 0)
        {
          goto LABEL_21;
        }
      }
    }

    else if (!v19)
    {
LABEL_21:
      LOBYTE(v14) = *(a1 + v4[9]) ^ *(a2 + v4[9]) ^ 1;
      return v14 & 1;
    }

LABEL_23:
    LOBYTE(v14) = 0;
  }

  return v14 & 1;
}

double sub_1D6E56B14(void *a1)
{
  sub_1D6E56EC8(0, &qword_1EC897270, sub_1D6E56D58, &type metadata for DebugFormatFile.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E56D58();
  sub_1D7264B0C();
  if (!v1)
  {
    v12[15] = 0;
    sub_1D72642BC();
    v12[14] = 1;
    sub_1D72642DC();
    v2 = v11;
    v12[13] = 2;
    sub_1D72642CC();
    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

unint64_t sub_1D6E56D58()
{
  result = qword_1EC897278;
  if (!qword_1EC897278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897278);
  }

  return result;
}

unint64_t sub_1D6E56DAC()
{
  result = qword_1EC897290;
  if (!qword_1EC897290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897290);
  }

  return result;
}

uint64_t sub_1D6E56E00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6E56E68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6E56EC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D6E56F30()
{
  result = qword_1EC8972A0;
  if (!qword_1EC8972A0)
  {
    sub_1D6E56EC8(255, &qword_1EC897298, sub_1D6E56DAC, &type metadata for DebugFormatFileDirectoryMetadata.CodingKeys, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8972A0);
  }

  return result;
}

unint64_t sub_1D6E56FF4()
{
  result = qword_1EC8972A8;
  if (!qword_1EC8972A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8972A8);
  }

  return result;
}

unint64_t sub_1D6E5704C()
{
  result = qword_1EC8972B0;
  if (!qword_1EC8972B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8972B0);
  }

  return result;
}

unint64_t sub_1D6E570A4()
{
  result = qword_1EC8972B8;
  if (!qword_1EC8972B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8972B8);
  }

  return result;
}

unint64_t sub_1D6E570FC()
{
  result = qword_1EC8972C0;
  if (!qword_1EC8972C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8972C0);
  }

  return result;
}

unint64_t sub_1D6E57154()
{
  result = qword_1EC8972C8;
  if (!qword_1EC8972C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8972C8);
  }

  return result;
}

unint64_t sub_1D6E571AC()
{
  result = qword_1EC8972D0;
  if (!qword_1EC8972D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8972D0);
  }

  return result;
}

unint64_t sub_1D6E57204()
{
  result = qword_1EC8972D8;
  if (!qword_1EC8972D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8972D8);
  }

  return result;
}

unint64_t sub_1D6E5725C()
{
  result = qword_1EC8972E0;
  if (!qword_1EC8972E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8972E0);
  }

  return result;
}

unint64_t sub_1D6E572B4()
{
  result = qword_1EC8972E8;
  if (!qword_1EC8972E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8972E8);
  }

  return result;
}

uint64_t sub_1D6E57308(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1752457584 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D73F4E60 == a2)
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

uint64_t sub_1D6E57430(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6556726576726573 && a2 == 0xED00006E6F697372;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x655674616D726F66 && a2 == 0xED00006E6F697372 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E617242746967 && a2 == 0xE900000000000068 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73F4E80 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73F4EA0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73F4EC0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

NewsFeed::FeedGroupMutingExemption_optional __swiftcall FeedGroupMutingExemption.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedGroupMutingExemption.rawValue.getter()
{
  if (*v0)
  {
    return 0x74706D657865;
  }

  else
  {
    return 0x706D657845746F6ELL;
  }
}

uint64_t sub_1D6E576E8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6E5776C()
{
  sub_1D72621EC();
}

uint64_t sub_1D6E577DC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6E5785C(uint64_t *a1@<X8>)
{
  v2 = 0x706D657845746F6ELL;
  if (*v1)
  {
    v2 = 0x74706D657865;
  }

  v3 = 0xE900000000000074;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D6E5789C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74706D657865;
  }

  else
  {
    v3 = 0x706D657845746F6ELL;
  }

  if (v2)
  {
    v4 = 0xE900000000000074;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x74706D657865;
  }

  else
  {
    v5 = 0x706D657845746F6ELL;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE900000000000074;
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

unint64_t sub_1D6E579A0()
{
  result = qword_1EC8972F0;
  if (!qword_1EC8972F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8972F0);
  }

  return result;
}

BOOL static FormatCodingZeroStrategy.shouldEncode(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D726406C();
  v6 = sub_1D7261FBC();
  (*(v3 + 8))(v5, a2);
  return (v6 & 1) == 0;
}

uint64_t sub_1D6E57B84()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v1);
  swift_getAssociatedConformanceWitness();
  sub_1D72648FC();
  return sub_1D726469C();
}

BOOL sub_1D6E57C9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8(v7, v4);
  v9 = sub_1D7261FBC();
  (*(v3 + 8))(v6, a2);
  return (v9 & 1) == 0;
}

uint64_t sub_1D6E57E04(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6E57E40(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6E57E7C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t FeedServiceFetchResult.emittedGroups.getter(unint64_t a1, uint64_t a2)
{
  v3 = sub_1D5D0EA94(a1);

  v4 = sub_1D6151460(v3, a2);

  return v4;
}

unint64_t sub_1D6E57FB8(uint64_t *a1)
{
  type metadata accessor for FeedServiceFetchResult.Internal();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      type metadata accessor for FeedCursor();
      v4 = *(a1 + *(swift_getTupleTypeMetadata2() + 48));
      type metadata accessor for FeedCursorContainer();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v6 = swift_allocBox();
      v8 = v7;
      v9 = *(TupleTypeMetadata2 + 48);
      (*(*(AssociatedTypeWitness - 8) + 32))(v7, a1, AssociatedTypeWitness);
      *(v8 + v9) = FeedCursorContainer.init(cursor:)(v4);
      return v6 | 0x4000000000000000;
    }

    else
    {
      v19 = *a1;
      v20 = swift_allocObject();
      *(v20 + 16) = FeedCursorContainer.init(cursor:)(v19);
      return v20 | 0x8000000000000000;
    }
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v11 = swift_getAssociatedTypeWitness();
    type metadata accessor for FeedCursor();
    v12 = *(a1 + *(swift_getTupleTypeMetadata2() + 48));
    type metadata accessor for FeedCursorContainer();
    v13 = swift_getTupleTypeMetadata2();
    v14 = swift_allocBox();
    v16 = v15;
    v17 = *(v13 + 48);
    (*(*(v11 - 8) + 32))(v15, a1, v11);
    v18 = FeedCursorContainer.init(cursor:)(v12);
    result = v14;
    *(v16 + v17) = v18;
  }

  return result;
}

uint64_t sub_1D6E58288()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v0 = type metadata accessor for FeedCursor();
  v2 = v1;
  result = swift_getTupleTypeMetadata2();
  if (v4 <= 0x3F)
  {
    if (v2 > 0x3F)
    {
      return v0;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D6E583A4(unsigned __int8 *a1, unsigned int a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = ((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) == 0xFFFFFFFFFFFFFFF8)
  {
    v5 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v6 = v5 | 1;
  if ((v5 | 1) <= 3)
  {
    v7 = ((a2 + 2) >> 8) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v8 = 1;
  }

  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = *&a1[v6];
      if (*&a1[v6])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v10 = *&a1[v6];
      if (v10)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v14 = a1[v5];
    if (v14 >= 3)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = a1[v6];
  if (!a1[v6])
  {
    goto LABEL_27;
  }

LABEL_23:
  v12 = (v10 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return (v13 | v12) + 254;
}

void sub_1D6E58520(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) == 0xFFFFFFFFFFFFFFF8)
  {
    v7 = 8;
  }

  v8 = v7 | 1;
  if (a3 < 0xFE)
  {
    v11 = 0;
    if (a2 > 0xFD)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v8] = 0;
    }

    else if (v11)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v7] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v8 <= 3)
  {
    v9 = ((a3 + 2) >> 8) + 1;
  }

  else
  {
    v9 = 2;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (a2 <= 0xFD)
  {
    goto LABEL_24;
  }

LABEL_16:
  v12 = a2 - 254;
  bzero(a1, v7 | 1);
  if (v8 <= 3)
  {
    v13 = (v12 >> 8) + 1;
  }

  else
  {
    v13 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v12;
    if (v11 > 1)
    {
LABEL_21:
      if (v11 == 2)
      {
        *&a1[v8] = v13;
      }

      else
      {
        *&a1[v8] = v13;
      }

      return;
    }
  }

  else
  {
    *a1 = v12;
    if (v11 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v11)
  {
    a1[v8] = v13;
  }
}

uint64_t sub_1D6E586DC(uint64_t a1)
{
  v2 = v1;
  v3 = (a1 + *(type metadata accessor for DebugGroupLayoutKey() + 24));
  v4 = v3[4];
  v5 = v3[5];
  __swift_project_boxed_opaque_existential_1(v3 + 1, v4);
  (*(v5 + 64))(v51, v4, v5);
  v6 = v52;
  v7 = MEMORY[0x1E69E7CC0];
  if (v52)
  {
    v8 = v53;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    v9 = (*(v8 + 32))(v6, v8);
    if (v9)
    {
      v10 = *(v9 + 16);

      v50 = v7;
      if (v10 >> 62)
      {
        goto LABEL_20;
      }

      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v45 = v1;
      if (v11)
      {
        while (1)
        {
          v7 = 0;
          while ((v10 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1DA6FB460](v7, v10);
            v2 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
LABEL_15:
              __break(1u);
              goto LABEL_16;
            }

LABEL_11:
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              sub_1D7263E9C();
              sub_1D7263EDC();
              sub_1D7263EEC();
              sub_1D7263EAC();
            }

            else
            {
            }

            ++v7;
            if (v2 == v11)
            {
              v12 = v50;
              v7 = MEMORY[0x1E69E7CC0];
              goto LABEL_22;
            }
          }

          if (v7 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          __break(1u);
LABEL_20:
          v11 = sub_1D7263BFC();
          v45 = v2;
          if (!v11)
          {
            goto LABEL_21;
          }
        }

        v2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_15;
        }

        goto LABEL_11;
      }

LABEL_21:
      v12 = MEMORY[0x1E69E7CC0];
LABEL_22:

      __swift_destroy_boxed_opaque_existential_1(v51);
      LODWORD(v13) = v12 < 0 || (v12 & 0x4000000000000000) != 0;
      if (v13 == 1)
      {
LABEL_57:
        v48 = sub_1D7263BFC();
        if (v48)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v48 = *(v12 + 16);
        if (v48)
        {
LABEL_27:
          v44 = v13;
          v7 = 0;
          v47 = v12 & 0xC000000000000001;
          v14 = MEMORY[0x1E69E7CC8];
          v46 = v12;
          while (1)
          {
            if (v47)
            {
              v17 = MEMORY[0x1DA6FB460](v7, v12);
              v18 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
                goto LABEL_53;
              }
            }

            else
            {
              if (v7 >= *(v12 + 16))
              {
                goto LABEL_54;
              }

              v17 = *(v12 + 8 * v7 + 32);

              v18 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
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
            }

            v49 = v18;
            v19 = [*(v17 + 32) itemID];
            v20 = sub_1D726207C();
            v12 = v21;

            v22 = *(v17 + 40);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v51[0] = v14;
            v13 = sub_1D5B69D90(v20, v12);
            v25 = v14[2];
            v26 = (v24 & 1) == 0;
            v27 = v25 + v26;
            if (__OFADD__(v25, v26))
            {
              goto LABEL_55;
            }

            v28 = v24;
            if (v14[3] >= v27)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                if ((v24 & 1) == 0)
                {
                  goto LABEL_40;
                }
              }

              else
              {
                sub_1D6D8193C();
                if ((v28 & 1) == 0)
                {
                  goto LABEL_40;
                }
              }
            }

            else
            {
              sub_1D6D6C83C(v27, isUniquelyReferenced_nonNull_native);
              v29 = sub_1D5B69D90(v20, v12);
              if ((v28 & 1) != (v30 & 1))
              {
                result = sub_1D726493C();
                __break(1u);
                return result;
              }

              v13 = v29;
              if ((v28 & 1) == 0)
              {
LABEL_40:
                v14 = v51[0];
                *(v51[0] + 8 * (v13 >> 6) + 64) |= 1 << v13;
                v31 = (v14[6] + 16 * v13);
                *v31 = v20;
                v31[1] = v12;
                *(v14[7] + 8 * v13) = v22;

                v32 = v14[2];
                v33 = __OFADD__(v32, 1);
                v34 = v32 + 1;
                if (v33)
                {
                  goto LABEL_56;
                }

                v14[2] = v34;
                goto LABEL_29;
              }
            }

            v14 = v51[0];
            v15 = *(v51[0] + 56);
            v16 = *(v15 + 8 * v13);
            *(v15 + 8 * v13) = v22;

LABEL_29:
            ++v7;
            v12 = v46;
            if (v49 == v48)
            {
              if (qword_1EC87DC18 != -1)
              {
                swift_once();
              }

              sub_1D5BFB840(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v35 = swift_allocObject();
              *(v35 + 16) = xmmword_1D7273AE0;
              if (v44)
              {
                v36 = sub_1D7263BFC();
              }

              else
              {
                v36 = *(v46 + 16);
              }

              v37 = MEMORY[0x1E69E65A8];
              *(v35 + 56) = MEMORY[0x1E69E6530];
              *(v35 + 64) = v37;
              *(v35 + 32) = v36;
              sub_1D7262EDC();
              sub_1D725C30C();

              sub_1D6E5A210(0, &qword_1EC897300, sub_1D5E9D658, MEMORY[0x1E69D6B18]);
              v38 = swift_allocObject();
              *(v38 + 16) = v45;
              *(v38 + 24) = v46;

              sub_1D725BA6C();
              v39 = swift_allocObject();
              *(v39 + 16) = v14;
              *(v39 + 24) = v46;

              v40 = sub_1D725B92C();
              sub_1D725BA7C();

              *(swift_allocObject() + 16) = v46;
              v41 = sub_1D725B92C();
              v42 = sub_1D725BB5C();

              return v42;
            }
          }
        }
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v51);
    }
  }

  else
  {
LABEL_16:
    sub_1D6330678(v51);
  }

  if (qword_1EC87DC18 != -1)
  {
    swift_once();
  }

  sub_1D7262EDC();
  sub_1D725C30C();
  v51[0] = v7;
  v51[1] = v7;
  v51[2] = 0;
  sub_1D6726A04(0, &qword_1EC8972F8, &type metadata for DebugInspectRecipeCandidateFetch, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

uint64_t sub_1D6E58E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_1D726290C();
  v3[10] = sub_1D72628FC();
  v5 = sub_1D726285C();
  v3[11] = v5;
  v3[12] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D6E58EB0, v5, v4);
}

char *sub_1D6E58EB0()
{
  v1 = v0[9];
  sub_1D5B68374(v0[8] + 16, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  if (v1 >> 62)
  {
    v4 = sub_1D7263BFC();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v26 = MEMORY[0x1E69E7CC0];
    result = sub_1D5BFC364(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = v26;
    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        v8 = *(MEMORY[0x1DA6FB460](v7, v0[9]) + 32);
        swift_unknownObjectRetain();
        v9 = [v8 itemID];
        v10 = sub_1D726207C();
        v12 = v11;

        swift_unknownObjectRelease_n();
        v14 = *(v26 + 16);
        v13 = *(v26 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1D5BFC364((v13 > 1), v14 + 1, 1);
        }

        ++v7;
        *(v26 + 16) = v14 + 1;
        v15 = v26 + 16 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v12;
      }

      while (v4 != v7);
    }

    else
    {
      v16 = v0[9] + 32;
      do
      {
        v17 = *(*v16 + 32);
        swift_retain_n();
        v18 = [v17 itemID];
        v19 = sub_1D726207C();
        v21 = v20;

        v23 = *(v26 + 16);
        v22 = *(v26 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1D5BFC364((v22 > 1), v23 + 1, 1);
        }

        *(v26 + 16) = v23 + 1;
        v24 = v26 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
        v16 += 8;
        --v4;
      }

      while (v4);
    }
  }

  v0[13] = v5;
  v25 = swift_task_alloc();
  v0[14] = v25;
  *v25 = v0;
  v25[1] = sub_1D6E5914C;

  return RecipeServiceType.fetchRecipes(for:)(v5, v2, v3);
}

uint64_t sub_1D6E5914C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = v4[11];
    v6 = v4[12];
    v7 = sub_1D6E592F4;
  }

  else
  {

    v4[16] = a1;
    v5 = v4[11];
    v6 = v4[12];
    v7 = sub_1D6E5927C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D6E5927C()
{
  v1 = v0[16];
  v2 = v0[7];

  *v2 = v1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v3 = v0[1];

  return v3();
}

uint64_t sub_1D6E592F4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

void sub_1D6E5936C(void *a1, uint64_t a2, unint64_t a3)
{
  v116 = a3;
  v121 = type metadata accessor for FeedRecipe.State();
  MEMORY[0x1EEE9AC00](v121, v5);
  *&v123 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeedItem(0);
  v119 = *(v7 - 8);
  v120 = v7;
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *a1 >> 62;
  v127 = *a1;
  v122 = v13;
  if (v13)
  {
    v14 = sub_1D7263BFC();
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
LABEL_3:
      if (v14 >= 1)
      {
        v15 = 0;
        v16 = v127 & 0xC000000000000001;
        while (1)
        {
          if (v16)
          {
            v18 = MEMORY[0x1DA6FB460](v15, v127, v9);
          }

          else
          {
            v18 = *&v127[8 * v15 + 32];
          }

          v19 = v18;
          v20 = [v18 identifier];
          v21 = sub_1D726207C();
          v23 = v22;

          if (*(a2 + 16))
          {
            v24 = sub_1D5B69D90(v21, v23);
            v26 = v25;

            if (v26)
            {
              v17 = *(*(a2 + 56) + 8 * v24);
              goto LABEL_7;
            }
          }

          else
          {
          }

          v17 = 0;
LABEL_7:
          ++v15;
          [v19 setScoreProfile_];

          if (v14 == v15)
          {
            goto LABEL_15;
          }
        }
      }

      __break(1u);
      goto LABEL_82;
    }
  }

LABEL_15:
  if (v122)
  {
    v27 = sub_1D7263BFC();
  }

  else
  {
    v27 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    v124 = MEMORY[0x1E69E7CC0];
    sub_1D69992E8(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
LABEL_82:
      __break(1u);
      return;
    }

    v115 = v27 & ~(v27 >> 63);
    v29 = 0;
    v30 = v124;
    v122 = v127 & 0xC000000000000001;
    v117 = xmmword_1D727C320;
    v118 = v27;
    do
    {
      v31 = v30;
      if (v122)
      {
        v32 = MEMORY[0x1DA6FB460](v29, v127);
      }

      else
      {
        v32 = *&v127[8 * v29 + 32];
      }

      v33 = v32;
      v34 = v121;
      v35 = *(v121 + 20);
      v36 = type metadata accessor for SharedItem();
      v37 = v123;
      (*(*(v36 - 8) + 56))(v123 + v35, 1, 1, v36);
      *v37 = 0;
      v38 = *(v34 + 24);
      v37[v38] = 0;
      *(v11 + 2) = 0;
      v11[24] = 1;
      *(v11 + 2) = v117;
      v39 = [v33 identifier];
      v40 = sub_1D726207C();
      v42 = v41;

      *v11 = v40;
      *(v11 + 1) = v42;
      *(v11 + 7) = v33;
      v43 = type metadata accessor for FeedRecipe();
      sub_1D6E5A358(v37, &v11[v43[9]]);
      v44 = &v11[v43[10]];
      *(v44 + 4) = 0;
      *v44 = 0u;
      *(v44 + 1) = 0u;
      v11[v43[11]] = 0;
      if (v37[v38] == 1)
      {
        v45 = [v33 sourceChannel];
      }

      else
      {
        v45 = 2;
      }

      v30 = v31;
      v46 = v118;
      sub_1D6E5A3BC(v123);
      *(v11 + 6) = v45;
      v47 = &v11[v43[12]];
      *(v47 + 4) = 0;
      *v47 = 0u;
      *(v47 + 1) = 0u;
      v48 = &v11[v43[13]];
      *(v48 + 4) = 0;
      *v48 = 0u;
      *(v48 + 1) = 0u;
      swift_storeEnumTagMultiPayload();
      v124 = v31;
      v50 = *(v31 + 16);
      v49 = *(v31 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1D69992E8(v49 > 1, v50 + 1, 1);
        v30 = v124;
      }

      ++v29;
      *(v30 + 16) = v50 + 1;
      sub_1D5C24B48(v11, v30 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v50);
    }

    while (v46 != v29);
    v124 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v115, 0);
    v51 = 0;
    v28 = v124;
    v52 = v127;
    do
    {
      v53 = v28;
      if (v122)
      {
        v54 = MEMORY[0x1DA6FB460](v51, v52);
      }

      else
      {
        v54 = *&v52[8 * v51 + 32];
      }

      v55 = v54;
      v56 = [v55 identifier];
      v57 = sub_1D726207C();
      v59 = v58;

      v28 = v53;
      v124 = v53;
      v61 = *(v53 + 16);
      v60 = *(v53 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_1D5BFC364((v60 > 1), v61 + 1, 1);
        v28 = v124;
      }

      ++v51;
      *(v28 + 16) = v61 + 1;
      v62 = v28 + 16 * v61;
      *(v62 + 32) = v57;
      *(v62 + 40) = v59;
    }

    while (v46 != v51);
    v120 = v30;
  }

  else
  {
    v120 = MEMORY[0x1E69E7CC0];
  }

  v63 = sub_1D5B86020(v28);

  v119 = v116 >> 62;
  if (v116 >> 62)
  {
    goto LABEL_65;
  }

  v64 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v64)
  {
LABEL_41:
    v65 = 0;
    v122 = v116 & 0xFFFFFFFFFFFFFF8;
    *&v123 = v116 & 0xC000000000000001;
    v121 = v116 + 32;
    v66 = v63 + 56;
    v127 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v123)
      {
        v67 = MEMORY[0x1DA6FB460](v65, v116);
        v68 = __OFADD__(v65++, 1);
        if (v68)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (v65 >= *(v122 + 16))
        {
          goto LABEL_64;
        }

        v67 = *(v121 + 8 * v65);

        v68 = __OFADD__(v65++, 1);
        if (v68)
        {
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          v64 = sub_1D7263BFC();
          if (!v64)
          {
            break;
          }

          goto LABEL_41;
        }
      }

      v69 = [*(v67 + 32) itemID];
      v70 = sub_1D726207C();
      v72 = v71;

      if (*(v63 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v73 = sub_1D7264A5C(), v74 = -1 << *(v63 + 32), v75 = v73 & ~v74, ((*(v66 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) != 0))
      {
        v76 = ~v74;
        while (1)
        {
          v77 = (*(v63 + 48) + 16 * v75);
          v78 = *v77 == v70 && v77[1] == v72;
          if (v78 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v75 = (v75 + 1) & v76;
          if (((*(v66 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
          {
            goto LABEL_56;
          }
        }
      }

      else
      {
LABEL_56:

        v79 = *(v67 + 32);
        v80 = *(v67 + 40);
        v81 = *(v67 + 48);
        v82 = v81;
        swift_unknownObjectRetain();
        v83 = v80;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v127 = sub_1D698BF70(0, *(v127 + 2) + 1, 1, v127);
        }

        v85 = *(v127 + 2);
        v84 = *(v127 + 3);
        if (v85 >= v84 >> 1)
        {
          v127 = sub_1D698BF70((v84 > 1), v85 + 1, 1, v127);
        }

        v86 = v127;
        *(v127 + 2) = v85 + 1;
        v87 = &v86[24 * v85];
        *(v87 + 4) = v79;
        *(v87 + 5) = v83;
        *(v87 + 6) = v81;
      }

      if (v65 == v64)
      {
        goto LABEL_67;
      }
    }
  }

  v127 = MEMORY[0x1E69E7CC0];
LABEL_67:

  if (qword_1EC87DC18 != -1)
  {
    swift_once();
  }

  v88 = qword_1EC9BAD28;
  sub_1D5BFB840(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v89 = swift_allocObject();
  v123 = xmmword_1D7270C10;
  *(v89 + 16) = xmmword_1D7270C10;
  v90 = MEMORY[0x1E69E6530];
  v91 = *(v120 + 16);
  v92 = MEMORY[0x1E69E65A8];
  *(v89 + 56) = MEMORY[0x1E69E6530];
  *(v89 + 64) = v92;
  *(v89 + 32) = v91;
  if (v119)
  {
    v93 = sub_1D7263BFC();
  }

  else
  {
    v93 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v89 + 96) = v90;
  *(v89 + 104) = v92;
  *(v89 + 72) = v93;
  sub_1D7262EDC();
  sub_1D725C30C();

  v94 = v127;
  if (*(v127 + 2))
  {
    v95 = swift_allocObject();
    v96 = v95;
    *(v95 + 16) = v123;
    v97 = *(v94 + 2);
    *(v95 + 56) = v90;
    *(v95 + 64) = v92;
    *(v95 + 32) = v97;
    v98 = MEMORY[0x1E69E7CC0];
    if (v97)
    {
      v121 = v95;
      v122 = v93;
      *&v123 = v88;
      v124 = MEMORY[0x1E69E7CC0];
      sub_1D5BFC364(0, v97, 0);
      v98 = v124;
      v99 = (v94 + 48);
      do
      {
        v101 = *(v99 - 2);
        v100 = *(v99 - 1);
        v102 = *v99;
        swift_unknownObjectRetain();
        v103 = v100;
        v104 = v102;
        swift_unknownObjectRetain();
        v105 = v103;
        v106 = [v101 itemID];
        v107 = sub_1D726207C();
        v109 = v108;

        swift_unknownObjectRelease_n();
        v124 = v98;
        v111 = *(v98 + 16);
        v110 = *(v98 + 24);
        if (v111 >= v110 >> 1)
        {
          sub_1D5BFC364((v110 > 1), v111 + 1, 1);
          v98 = v124;
        }

        v99 += 3;
        *(v98 + 16) = v111 + 1;
        v112 = v98 + 16 * v111;
        *(v112 + 32) = v107;
        *(v112 + 40) = v109;
        --v97;
      }

      while (v97);
      v94 = v127;
      v93 = v122;
      v96 = v121;
    }

    sub_1D6726A04(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v96[12] = v113;
    v96[13] = sub_1D60655A0();
    v96[9] = v98;
    sub_1D7262EDC();
    sub_1D725C30C();
  }

  v124 = v120;
  v125 = v94;
  v126 = v93;
  sub_1D6726A04(0, &qword_1EC8972F8, &type metadata for DebugInspectRecipeCandidateFetch, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1D725BB1C();
}

char *sub_1D6E59E94(uint64_t a1, unint64_t a2)
{
  if (qword_1EC87DC18 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D5BFB840(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D5B7E2C0();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_1D725C30C();

  if (a2 >> 62)
  {
    v4 = sub_1D7263BFC();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v4)
  {
    goto LABEL_18;
  }

  v29 = MEMORY[0x1E69E7CC0];
  result = sub_1D6997D30(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v28 = v4;
    v6 = a2;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        v8 = v6;
        v9 = MEMORY[0x1DA6FB460](v7);
        v11 = v9[4];
        v10 = v9[5];
        v12 = v9[6];
        v13 = v12;
        swift_unknownObjectRetain();
        v14 = v10;
        swift_unknownObjectRelease();
        v16 = *(v29 + 16);
        v15 = *(v29 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1D6997D30((v15 > 1), v16 + 1, 1);
        }

        ++v7;
        *(v29 + 16) = v16 + 1;
        v17 = (v29 + 24 * v16);
        v17[4] = v11;
        v17[5] = v14;
        v17[6] = v12;
        v6 = v8;
      }

      while (v28 != v7);
    }

    else
    {
      v18 = a2 + 32;
      v19 = v4;
      do
      {
        v21 = *(*v18 + 32);
        v20 = *(*v18 + 40);
        v22 = *(*v18 + 48);
        v24 = *(v29 + 16);
        v23 = *(v29 + 24);
        swift_unknownObjectRetain();
        v25 = v20;
        v26 = v22;
        if (v24 >= v23 >> 1)
        {
          sub_1D6997D30((v23 > 1), v24 + 1, 1);
        }

        *(v29 + 16) = v24 + 1;
        v27 = (v29 + 24 * v24);
        v27[4] = v21;
        v27[5] = v25;
        v27[6] = v22;
        v18 += 8;
        --v19;
      }

      while (v19);
    }

LABEL_18:
    sub_1D6726A04(0, &qword_1EC8972F8, &type metadata for DebugInspectRecipeCandidateFetch, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  __break(1u);
  return result;
}

void sub_1D6E5A210(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6E5A274(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64684;

  return sub_1D6E58E14(a1, v5, v4);
}

uint64_t sub_1D6E5A358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedRecipe.State();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6E5A3BC(uint64_t a1)
{
  v2 = type metadata accessor for FeedRecipe.State();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6E5A438(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1D6E5ABDC(0, &qword_1EC897340, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E5AAE0();
  sub_1D7264B5C();
  v16 = a2;
  v15 = 0;
  sub_1D5B49714(0, &qword_1EC897318);
  sub_1D6E5AC40(&qword_1EC897348, sub_1D6E5ACBC);
  sub_1D726443C();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    sub_1D5B49714(0, &qword_1EC88F268);
    sub_1D6E5AD10(&qword_1EC897358, sub_1D6E5AD8C);
    sub_1D726443C();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D6E5A670()
{
  if (*v0)
  {
    return 0x7374756F79616CLL;
  }

  else
  {
    return 0x73656D656874;
  }
}

uint64_t sub_1D6E5A6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73656D656874 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7374756F79616CLL && a2 == 0xE700000000000000)
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

uint64_t sub_1D6E5A780(uint64_t a1)
{
  v2 = sub_1D6E5AAE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E5A7BC(uint64_t a1)
{
  v2 = sub_1D6E5AAE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6E5A7F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D6E5A840(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1D6E5A840(void *a1)
{
  sub_1D6E5ABDC(0, &qword_1EC897308, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1D6E5AAE0();
  sub_1D7264B0C();
  if (!v1)
  {
    sub_1D5B49714(0, &qword_1EC897318);
    HIBYTE(v11) = 0;
    sub_1D6E5AC40(&qword_1EC897320, sub_1D6E5AB34);
    sub_1D726431C();
    v9 = v12;
    sub_1D5B49714(0, &qword_1EC88F268);
    HIBYTE(v11) = 1;
    sub_1D6E5AD10(&qword_1EC897330, sub_1D6E5AB88);
    sub_1D726431C();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D6E5AAE0()
{
  result = qword_1EC897310;
  if (!qword_1EC897310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897310);
  }

  return result;
}

unint64_t sub_1D6E5AB34()
{
  result = qword_1EC897328;
  if (!qword_1EC897328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897328);
  }

  return result;
}

unint64_t sub_1D6E5AB88()
{
  result = qword_1EC897338;
  if (!qword_1EC897338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897338);
  }

  return result;
}

void sub_1D6E5ABDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6E5AAE0();
    v7 = a3(a1, &type metadata for DebugFormatWorkspaceSnapshotManifestWorkspace.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6E5AC40(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49714(255, &qword_1EC897318);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6E5ACBC()
{
  result = qword_1EC897350;
  if (!qword_1EC897350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897350);
  }

  return result;
}

uint64_t sub_1D6E5AD10(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49714(255, &qword_1EC88F268);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6E5AD8C()
{
  result = qword_1EC897360;
  if (!qword_1EC897360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897360);
  }

  return result;
}

unint64_t sub_1D6E5ADF4()
{
  result = qword_1EC897368;
  if (!qword_1EC897368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897368);
  }

  return result;
}

unint64_t sub_1D6E5AE4C()
{
  result = qword_1EC897370;
  if (!qword_1EC897370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897370);
  }

  return result;
}

unint64_t sub_1D6E5AEA4()
{
  result = qword_1EC897378;
  if (!qword_1EC897378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897378);
  }

  return result;
}

uint64_t type metadata accessor for DebugFormatCanvasBindResult()
{
  result = qword_1EC897380;
  if (!qword_1EC897380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6E5AF6C()
{
  type metadata accessor for DebugFormatCanvasBindRequest();
  if (v0 <= 0x3F)
  {
    sub_1D6E5B020();
    if (v1 <= 0x3F)
    {
      sub_1D6E5B078();
      if (v2 <= 0x3F)
      {
        type metadata accessor for FormatNodeDebugData();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D6E5B020()
{
  if (!qword_1EC897390)
  {
    type metadata accessor for DebugFormatCanvasLayoutResult();
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC897390);
    }
  }
}

void sub_1D6E5B078()
{
  if (!qword_1EC897398)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC897398);
    }
  }
}

uint64_t sub_1D6E5B0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3 >> 60;
  if (v6 > 4)
  {
    if (v6 <= 6)
    {
      if (v6 != 5)
      {
LABEL_11:

        return a1;
      }

      sub_1D6E5D12C(v18);
    }

    else
    {
      if (v6 == 7)
      {

        swift_retain_n();
        a1 = sub_1D6E5B0C8(a1, a2, a3);

        return a1;
      }

      if (v6 == 8)
      {
        goto LABEL_11;
      }

      v7 = *((*v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D61FFFC8();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7270C10;

      *(inited + 32) = sub_1D6E5B0C8(a1, a2, a3);
      *(inited + 40) = v10;
      *(inited + 48) = v11 & 1;

      v12 = sub_1D6E5BFB8(a1, a2, a3, v7, sub_1D6E5B0C8);
      v14 = v13;
      v16 = v15;

      *(inited + 56) = v12;
      *(inited + 64) = v14;
      *(inited + 72) = v16 & 1;
      a1 = sub_1D60ED798(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
    }
  }

  else
  {
    if (v6 != 3)
    {
      goto LABEL_11;
    }

    a1 = sub_1D61FF818(a1, a2, a3);
  }

  return a1;
}

void *sub_1D6E5B35C(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v97 = a3;
  v9 = sub_1D72585BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v4;
  v16 = *v4 >> 60;
  if (v16 <= 4)
  {
    if (v16 <= 2)
    {
      if ((v16 - 1) < 2)
      {
        v17 = v15 & 0xFFFFFFFFFFFFFFFLL;
        v18 = *(v17 + 16);
        v19 = *(v17 + 24);

        v20 = (*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__localizations);
        swift_beginAccess();
        v22 = *v20;
        v21 = v20[1];

        v23 = sub_1D6E5CA68(v18, v19, a1, v22, v21);
        v25 = v24;

        v26 = v23;
LABEL_30:
        v69 = sub_1D6E5C728(v26, v25, v97, a1);
        if (!v5)
        {
          a1 = v69;
        }

        return a1;
      }

      v44 = *(v15 + 32);
      v95[0] = *(v15 + 16);
      v95[1] = v44;
      v95[2] = *(v15 + 48);
      v96 = *(v15 + 64);
      sub_1D5FD78CC(v95, &v86);
      v45 = sub_1D688E6FC(a1, a4);
      if (v5)
      {
        sub_1D5FD7B18(v95);
        return a1;
      }

      v25 = v46;
      v67 = v45;
      sub_1D5FD7B18(v95);
LABEL_29:
      v26 = v67;
      goto LABEL_30;
    }

    v38 = v15 & 0xFFFFFFFFFFFFFFFLL;
    if (v16 != 3)
    {
      v54 = *(v38 + 24);
      v55 = *(v38 + 32);
      v56 = *(v38 + 40);
      v57 = *(v38 + 48);
      *&v86 = *(v38 + 16);
      BYTE8(v86) = v54;
      *&v87 = v55;
      *(&v87 + 1) = v56;
      LOBYTE(v88) = v57;

      sub_1D5E04CC4(v55);
      a1 = sub_1D6AE9A8C(a1, v97);

      sub_1D5D2F2C4(v55, v56, v57);
      return a1;
    }

    v39 = *(v38 + 24);
    *&v86 = *(v38 + 16);
    *(&v86 + 1) = v39;

    sub_1D61FF018(a1, a2, v97, a4);
    a1 = v40;
    goto LABEL_15;
  }

  if (v16 <= 6)
  {
    v41 = v15 & 0xFFFFFFFFFFFFFFFLL;
    if (v16 != 5)
    {
      v58 = *(v41 + 112);
      v91 = *(v41 + 96);
      v92 = v58;
      v93 = *(v41 + 128);
      v94 = *(v41 + 144);
      v59 = *(v41 + 48);
      v87 = *(v41 + 32);
      v88 = v59;
      v60 = *(v41 + 80);
      v89 = *(v41 + 64);
      v90 = v60;
      v86 = *(v41 + 16);
      v61 = *(v41 + 128);
      v83 = *(v41 + 112);
      v84 = v61;
      v85 = *(v41 + 144);
      v62 = *(v41 + 64);
      v79 = *(v41 + 48);
      v80 = v62;
      v63 = *(v41 + 96);
      v81 = *(v41 + 80);
      v82 = v63;
      v64 = *(v41 + 32);
      v77 = *(v41 + 16);
      v78 = v64;
      sub_1D62B52F8(&v86, &v76);
      v65 = sub_1D5F2BF80(a1);
      if (v5)
      {
        sub_1D62B52A4(&v86);
        return a1;
      }

      v25 = v66;
      v67 = v65;
      sub_1D62B52A4(&v86);
      goto LABEL_29;
    }

    v42 = *(v41 + 16);
    v43 = *(v41 + 24);

    sub_1D6F7F7D0(&v86, a2, a1, v42, v43);
    a1 = sub_1D6E5B35C(a1, a2, v97, a4);

LABEL_15:

    return a1;
  }

  if (v16 == 7)
  {
    v47 = v15 & 0xFFFFFFFFFFFFFFFLL;
    v49 = *(v47 + 16);
    v48 = *(v47 + 24);
    *&v86 = v49;
    v74 = v12;
    v75 = v48;

    swift_retain_n();
    v50 = sub_1D6E5B35C(a1, a2, v97, a4);
    if (v5)
    {
    }

    else
    {
      v68 = v50;

      sub_1D6D4FCF8(a1, v75, v14);
      a1 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
      v71 = *MEMORY[0x1E69DB670];
      v72 = sub_1D725844C();
      [a1 addAttribute:v71 value:v72 range:{0, objc_msgSend(v68, sel_length)}];

      (*(v10 + 8))(v14, v74);
    }
  }

  else
  {
    v27 = (v15 & 0xFFFFFFFFFFFFFFFLL);
    if (v16 == 8)
    {
      v73 = v5;
      v29 = v27[2];
      v28 = v27[3];
      v30 = v27[4];
      v31 = v27[5];
      v33 = v27[6];
      v32 = v27[7];
      v34 = v27[8];
      *&v86 = v29;
      *(&v86 + 1) = v28;
      *&v87 = v30;
      *(&v87 + 1) = v31;
      *&v88 = v33;
      *(&v88 + 1) = v32;
      *&v89 = v34;
      sub_1D5F33D5C(v29);
      v74 = v30;
      v75 = v28;
      sub_1D5E1DC5C(v28, v30, v31);
      v35 = v73;
      v36 = sub_1D6CD5428(a1);
      if (!v35)
      {
        v73 = v34;
        a1 = sub_1D6E5C728(v36, v37, v97, a1);
      }

      sub_1D5F33D8C(v29);
      sub_1D5E1E088(v75, v74, v31);
    }

    else
    {
      v51 = v27[2];
      v52 = v27[3];

      sub_1D5F9F6C4(v51, v52, &v86);
      *&v77 = v86;
      v53 = sub_1D6E5B35C(a1, a2, v97, a4);
      if (!v5)
      {
        a1 = v53;
      }
    }
  }

  return a1;
}

uint64_t static FormatTextContent.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 60;
  if (v4 > 4)
  {
    if (v4 > 6)
    {
      if (v4 == 7)
      {
        if (v3 >> 60 != 7)
        {
          goto LABEL_46;
        }

        v61 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v52 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

        v18 = _s8NewsFeed18FormatTextNodeLinkV2eeoiySbAC_ACtFZ_0(&v61, &v52);
      }

      else
      {
        if (v4 != 8)
        {
          if (v3 >> 60 == 9)
          {
            v35 = v2 & 0xFFFFFFFFFFFFFFFLL;
            v36 = *(v35 + 24);
            v38 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v37 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            *&v61 = *(v35 + 16);
            *(&v61 + 1) = v36;
            *&v52 = v38;
            *(&v52 + 1) = v37;

            if (static FormatTextContent.== infix(_:_:)(&v61, &v52))
            {

              v39 = sub_1D6360CF8(v36, v37);

              swift_bridgeObjectRelease_n();
              if (v39)
              {
LABEL_42:
                v21 = 1;
                return v21 & 1;
              }
            }

            else
            {
            }
          }

LABEL_46:
          v21 = 0;
          return v21 & 1;
        }

        if (v3 >> 60 != 8)
        {
          goto LABEL_46;
        }

        v12 = v2 & 0xFFFFFFFFFFFFFFFLL;
        v13 = *(v12 + 64);
        v14 = v3 & 0xFFFFFFFFFFFFFFFLL;
        v15 = *(v14 + 64);
        v16 = *(v12 + 32);
        v61 = *(v12 + 16);
        v62 = v16;
        v63 = *(v12 + 48);
        *&v64 = v13;
        v17 = *(v14 + 32);
        v52 = *(v14 + 16);
        v53 = v17;
        v54 = *(v14 + 48);
        *&v55 = v15;

        v18 = _s8NewsFeed022FormatTextNodeDateTimeC0V2eeoiySbAC_ACtFZ_0(&v61, &v52);
      }

      goto LABEL_41;
    }

    if (v4 != 5)
    {
      if (v3 >> 60 != 6)
      {
        goto LABEL_46;
      }

      v42 = v2 & 0xFFFFFFFFFFFFFFFLL;
      v43 = v3 & 0xFFFFFFFFFFFFFFFLL;
      v44 = *(v43 + 128);
      v58 = *(v43 + 112);
      v59 = v44;
      v60 = *(v43 + 144);
      v45 = *(v43 + 64);
      v54 = *(v43 + 48);
      v55 = v45;
      v46 = *(v43 + 96);
      v56 = *(v43 + 80);
      v57 = v46;
      v47 = *(v43 + 32);
      v52 = *(v43 + 16);
      v53 = v47;
      v48 = *(v42 + 128);
      v67 = *(v42 + 112);
      v68 = v48;
      v69 = *(v42 + 144);
      v49 = *(v42 + 64);
      v63 = *(v42 + 48);
      v64 = v49;
      v50 = *(v42 + 96);
      v65 = *(v42 + 80);
      v66 = v50;
      v51 = *(v42 + 32);
      v61 = *(v42 + 16);
      v62 = v51;

      v18 = _s8NewsFeed20FormatTextNodeNumberV2eeoiySbAC_ACtFZ_0(&v61, &v52);
LABEL_41:
      v21 = v18;

      return v21 & 1;
    }

    if (v3 >> 60 != 5)
    {
      goto LABEL_46;
    }

    v22 = v2 & 0xFFFFFFFFFFFFFFFLL;
    v23 = *(v22 + 16);
    v24 = *(v22 + 24);
    v25 = v3 & 0xFFFFFFFFFFFFFFFLL;
    v26 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v27 = *(v25 + 24);

    if ((sub_1D6360D10(v23, v26) & 1) == 0)
    {

      goto LABEL_46;
    }

    *&v61 = v24;
    *&v52 = v27;
    v21 = static FormatTextContent.== infix(_:_:)(&v61, &v52);

    return v21 & 1;
  }

  if (v4 <= 1)
  {
    if (v4)
    {
      if (v3 >> 60 != 1)
      {
        goto LABEL_46;
      }

      goto LABEL_32;
    }

    if (v3 >> 60)
    {
      goto LABEL_46;
    }

    v19 = *(v3 + 32);
    v52 = *(v3 + 16);
    v53 = v19;
    v54 = *(v3 + 48);
    LOWORD(v55) = *(v3 + 64);
    v20 = *(v2 + 32);
    v61 = *(v2 + 16);
    v62 = v20;
    v63 = *(v2 + 48);
    LOWORD(v64) = *(v2 + 64);

    v21 = _s8NewsFeed21FormatTextNodeBindingO2eeoiySbAC_ACtFZ_0(&v61, &v52);

    return v21 & 1;
  }

  if (v4 != 2)
  {
    if (v4 == 3)
    {
      if (v3 >> 60 == 3)
      {
        v6 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v5 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v7 = v3 & 0xFFFFFFFFFFFFFFFLL;
        v9 = *(v7 + 16);
        v8 = *(v7 + 24);
        *&v61 = v6;
        *&v52 = v9;

        v10 = static FormatTextContent.== infix(_:_:)(&v61, &v52);

        if (v10)
        {
          v11 = sub_1D6360ADC(v5, v8);

          if (v11)
          {
            goto LABEL_42;
          }
        }

        else
        {
        }
      }

      goto LABEL_46;
    }

    if (v3 >> 60 != 4)
    {
      goto LABEL_46;
    }

    v28 = v2 & 0xFFFFFFFFFFFFFFFLL;
    v29 = *(v28 + 48);
    v30 = *(v28 + 24);
    v31 = v3 & 0xFFFFFFFFFFFFFFFLL;
    v32 = *(v31 + 16);
    v33 = *(v31 + 24);
    v34 = *(v31 + 48);
    *&v61 = *(v28 + 16);
    BYTE8(v61) = v30;
    v62 = *(v28 + 32);
    LOBYTE(v63) = v29;
    *&v52 = v32;
    BYTE8(v52) = v33;
    v53 = *(v31 + 32);
    LOBYTE(v54) = v34;

    v18 = _s8NewsFeed24FormatTextNodeAttachmentV2eeoiySbAC_ACtFZ_0(&v61, &v52);
    goto LABEL_41;
  }

  if (v3 >> 60 != 2)
  {
    goto LABEL_46;
  }

LABEL_32:
  if (*((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10) && *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18) == *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18))
  {
    goto LABEL_42;
  }

  return sub_1D72646CC();
}

uint64_t sub_1D6E5BFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1D6997920(0, v5, 0);
    v6 = v23;
    v9 = a4 + 48;
    do
    {

      v10 = a5(a1, a2, a3);
      v12 = v11;
      v14 = v13;

      v16 = *(v23 + 16);
      v15 = *(v23 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D6997920((v15 > 1), v16 + 1, 1);
      }

      v9 += 24;
      *(v23 + 16) = v16 + 1;
      v17 = v23 + 24 * v16;
      *(v17 + 32) = v10;
      *(v17 + 40) = v12;
      *(v17 + 48) = v14 & 1;
      --v5;
    }

    while (v5);
  }

  v18 = sub_1D60ED798(v6);

  return v18;
}

unint64_t sub_1D6E5C118(unint64_t result)
{
  v3 = result;
  v4 = *v1;
  v5 = *v1 >> 60;
  if (v5 > 4)
  {
    v10 = v4 & 0xFFFFFFFFFFFFFFFLL;
    if (v5 > 6)
    {
      if (v5 == 7)
      {
        v22 = *(v10 + 24);
        *&v40 = *(v10 + 16);

        sub_1D6E5C118(v3);
        if (!v2)
        {

          *&v40 = v22;

          sub_1D6298B34(v3);
        }
      }

      if (v5 == 8)
      {
        *&v40 = *(v10 + 16);
        sub_1D5F33D5C(v40);
        sub_1D628A8D0(v3);
        return sub_1D5F33D8C(v40);
      }

      v23 = *(v10 + 24);
      *&v40 = *(v10 + 16);
      swift_retain_n();

      sub_1D6E5C118(v3);
      if (!v2)
      {

        sub_1D6285260(v3, v23);
        goto LABEL_29;
      }

LABEL_21:
    }

    if (v5 == 5)
    {
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);

      sub_1D628535C(v3, v13);
      if (v2)
      {
      }

      else
      {
        *&v40 = v14;

        sub_1D6E5C118(v3);
      }
    }

    else
    {
      v27 = *(v10 + 112);
      v45 = *(v10 + 96);
      v46 = v27;
      v47 = *(v10 + 128);
      v48 = *(v10 + 144);
      v28 = *(v10 + 48);
      v41 = *(v10 + 32);
      v42 = v28;
      v29 = *(v10 + 80);
      v43 = *(v10 + 64);
      v44 = v29;
      v40 = *(v10 + 16);
      v30 = v40;
      if (BYTE8(v40))
      {
        if (BYTE8(v40) != 1)
        {
          return sub_1D62B52A4(&v40);
        }

        sub_1D62B52F8(&v40, &v38);
        sub_1D62744A4(v3, v30);
      }

      else
      {
        sub_1D62B52F8(&v40, &v38);
        sub_1D6273544(v3, v30);
      }

      return sub_1D62B52A4(&v40);
    }
  }

  else
  {
    if (v5 <= 2)
    {
      if ((v5 - 1) < 2)
      {
        v6 = v4 & 0xFFFFFFFFFFFFFFFLL;
        v8 = *(v6 + 16);
        v7 = *(v6 + 24);

        v9 = swift_allocObject();
        *(v9 + 16) = v8;
        *(v9 + 24) = v7;
        sub_1D6C4D24C(v9 | 0x4000000000000000);
      }

      v15 = *(v4 + 32);
      v40 = *(v4 + 16);
      v41 = v15;
      v16 = *(v4 + 48);
      LOWORD(v43) = *(v4 + 64);
      v42 = v16;
      v17 = v40;
      v18 = v15;
      v19 = v43;
      switch((2 * BYTE1(v43)) | ((v43 & 8) != 0))
      {
        case 2:
          goto LABEL_41;
        case 3:
        case 4:
          v20 = *(&v40 + 1);
          v36 = v40;
          v37 = v15;
          v35 = 5;
          v34 = v40;
          sub_1D5FD78CC(&v40, &v38);

          v21 = sub_1D703E0C8(&v36, &v35);

          if (v2)
          {
          }

          else
          {
            v33 = swift_allocObject();
            *(v33 + 16) = v34;
            *(v33 + 24) = v20;
            *(v33 + 32) = v21;
            *(v33 + 40) = 0;
            sub_1D6C4D24C(v33 | 0x3000000000000000);

            v19 = v43;
            if (((2 * BYTE1(v43)) | ((v43 & 8) != 0)) == 2)
            {
              v18 = v41;
              v17 = v40;
LABEL_41:
              if (v19 >> 4 == 3)
              {
                v38 = v17;
                v39 = v18;
                result = sub_1D62921EC(v3);
              }
            }
          }

          break;
        default:
          return result;
      }

      return result;
    }

    v11 = v4 & 0xFFFFFFFFFFFFFFFLL;
    if (v5 == 3)
    {
      v12 = *(v11 + 24);
      *&v40 = *(v11 + 16);
      swift_retain_n();

      sub_1D6E5C118(v3);
      if (!v2)
      {

        sub_1D6285120(v3, v12);
LABEL_29:
      }

      goto LABEL_21;
    }

    v25 = *(v11 + 32);
    v24 = *(v11 + 40);
    v26 = *(v11 + 48);
    *&v40 = *(v11 + 16);

    sub_1D5E04CC4(v25);

    sub_1D6297BE8(v3);
    if (v2)
    {

      sub_1D5D2F2C4(v25, v24, v26);
    }

    if (v26)
    {
      sub_1D5E04CC4(v25);
      sub_1D5E04CC4(v25);
      v31 = sub_1D5E26E28(&unk_1F50F47F8);
      v32 = swift_allocObject();
      *(v32 + 16) = v25;
      *(v32 + 24) = v24;
      *(v32 + 32) = v31;
      *(v32 + 40) = 0;
      sub_1D6C4D24C(v32 | 0x3000000000000000);

      sub_1D5D2F2C4(v25, v24, 1);
      sub_1D5D2F2C4(v25, v24, 1);
    }

    return sub_1D5D2F2C4(v25, v24, 0);
  }
}

id sub_1D6E5C728(id a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (sub_1D726230C())
  {
    v9 = sub_1D723E514(a1, a2);
    if (!v4)
    {
      v10 = v9;
      type metadata accessor for FormatAttributedStringAnnotator();
      swift_allocObject();
      v11 = sub_1D71C8344(v10);
      v13 = v12;

      if (a3)
      {
        v14 = a3;
      }

      else
      {
        v14 = sub_1D6DB0BA0();
      }

      v20 = sub_1D62DD564(v14, a4);

      sub_1D62DF2F4(v20, v14, a4, 18, v25);
      type metadata accessor for FormatAttributedString();
      swift_allocObject();
      sub_1D61FFF18(v25, v23);
      sub_1D6BB86CC(v11, v13, v25);
      sub_1D6BB92D8(a4);
      a1 = v21;

      sub_1D61FFF74(v25);
    }
  }

  else if (a3)
  {

    v15 = sub_1D62DD564(a3, a4);
    if (v4)
    {
    }

    else
    {
      v16 = v15;

      sub_1D62DF2F4(v16, a3, a4, 18, v24);
      type metadata accessor for FormatAttributedString();
      swift_allocObject();

      sub_1D61FFF18(v24, v23);
      sub_1D6BB8DF0(a1, a2, v24);
      sub_1D6BB92D8(a4);
      a1 = v22;

      sub_1D61FFF74(v24);
    }
  }

  else
  {
    v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

    v19 = sub_1D726203C();

    a1 = [v18 initWithString_];
  }

  return a1;
}

uint64_t sub_1D6E5CA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1;
  v71[5] = a3;
  if (!*(a5 + 16) || (v7 = sub_1D5B69D90(a1, a2), (v8 & 1) == 0) || (v9 = (*(a5 + 56) + 40 * v7), v5 = *v9, v10 = v9[1], v11 = v9[4], !*(v11 + 16)))
  {

    return v5;
  }

  v12 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext();

  v13 = v12();
  v14 = *(*(v13 + 40) + 16);
  swift_beginAccess();
  if (*(*(v14 + 16) + 16))
  {
    *&v72 = *(v13 + 56);

    v16 = sub_1D6F622E0(v15);
    sub_1D5B886D0(v16);

    v17 = v72;
  }

  else
  {
    v17 = sub_1D6E46E28();
  }

  v62 = *(v11 + 16);
  if (!v62)
  {
LABEL_36:

    return v5;
  }

  v19 = 0;
  v20 = 0;
  v60 = v11;
  v61 = v11 + 32;
  while (v20 < *(v11 + 16))
  {
    v21 = (v61 + 32 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[3];
    v68 = v21[2];
    v25 = qword_1EDF2AB18;

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = qword_1EDFFCAB8;
    sub_1D725A76C();
    swift_beginAccess();
    v27 = *(v26 + 16);
    v69 = v20;
    if (!*(v27 + 16) || (v28 = sub_1D6D8CB60(v22, v23), (v29 & 1) == 0))
    {
      v63 = v5;
      v64 = v10;
      swift_endAccess();
      v71[0] = v22;
      v71[1] = v23;

      sub_1D6844C30(v71, v70);
      v31 = v70[1];
      v65 = v70[0];
      v32 = v70[2];
      swift_beginAccess();
      v66 = v31;

      v67 = v32;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71[0] = *(v26 + 16);
      v34 = v71[0];
      *(v26 + 16) = 0x8000000000000000;
      v35 = v23;
      v36 = v22;
      v37 = v35;
      v39 = sub_1D6D8CB60(v22, v35);
      v40 = *(v34 + 16);
      v41 = (v38 & 1) == 0;
      v42 = v40 + v41;
      if (__OFADD__(v40, v41))
      {
        goto LABEL_38;
      }

      v43 = v38;
      if (*(v34 + 24) >= v42)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v46 = v71[0];
          if ((v38 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          sub_1D6D7E1CC();
          v46 = v71[0];
          if ((v43 & 1) == 0)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        sub_1D6D66D04(v42, isUniquelyReferenced_nonNull_native);
        v44 = sub_1D6D8CB60(v36, v37);
        if ((v43 & 1) != (v45 & 1))
        {
          goto LABEL_40;
        }

        v39 = v44;
        v46 = v71[0];
        if ((v43 & 1) == 0)
        {
LABEL_27:
          v46[(v39 >> 6) + 8] |= 1 << v39;
          v48 = (v46[6] + 16 * v39);
          *v48 = v36;
          v48[1] = v37;
          v49 = (v46[7] + 24 * v39);
          *v49 = v65;
          v49[1] = v66;
          v30 = v67;
          v49[2] = v67;
          v50 = v46[2];
          v51 = __OFADD__(v50, 1);
          v52 = v50 + 1;
          if (v51)
          {
            goto LABEL_39;
          }

          v46[2] = v52;

          goto LABEL_29;
        }
      }

      v47 = (v46[7] + 24 * v39);
      *v47 = v65;
      v47[1] = v66;
      v30 = v67;
      v47[2] = v67;

LABEL_29:
      *(v26 + 16) = v46;
      swift_endAccess();

      v5 = v63;
      v10 = v64;
      goto LABEL_30;
    }

    v30 = *(*(v27 + 56) + 24 * v28 + 16);
    swift_endAccess();

LABEL_30:
    sub_1D725A77C();

    v53 = *(v30 + 16);
    if (v53)
    {
      v54 = (v30 + 32);
      do
      {
        v55 = *v54;
        v56 = v54[1];
        v57 = v54[2];
        v75 = *(v54 + 6);
        v73 = v56;
        v74 = v57;
        v72 = v55;
        sub_1D5E3B610(&v72, v70);
        v58 = sub_1D68444DC(v17);
        sub_1D5E3B66C(&v72);
        if (v58)
        {
          v59 = v73;
          if (v19 < v73)
          {

            v19 = v59;
            v5 = v68;
            v10 = v24;
          }
        }

        v54 = (v54 + 56);
        --v53;
      }

      while (v53);
    }

    v20 = v69 + 1;

    v11 = v60;
    if (v69 + 1 == v62)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D6E5CF80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    do
    {
      v3 = ~*v2 & 0xF000000000000007;

      if (!v3)
      {
        break;
      }

      sub_1D71C3ED0(v4);
      v6 = v5;

      if (v6)
      {
        sub_1D6B4D3F4();
        return 1;
      }

      v2 += 2;
      sub_1D6B4D3F4();
      --v1;
    }

    while (v1);
  }

  return 0;
}

uint64_t sub_1D6E5D04C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 56;
    do
    {
      v3 = *(v2 - 16);

      if (!v3)
      {
        break;
      }

      sub_1D71C3ED0(v4);
      v6 = v5;

      if (v6)
      {
        sub_1D6B4D3F4();
        return 1;
      }

      v2 += 32;
      sub_1D6B4D3F4();
      --v1;
    }

    while (v1);
  }

  return 0;
}

uint64_t sub_1D6E5D12C(uint64_t a1)
{
  v2 = *(a1 + 16);

  if (v2)
  {
    v4 = a1 + 32;
    while (1)
    {
      v4 += 16;
      sub_1D71C3ED0(v3);
      if (v5)
      {
        break;
      }

      v3 = sub_1D6B4D3F4();
      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    v6 = 1;
    sub_1D6B4D3F4();
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

  return v6;
}

unint64_t sub_1D6E5D1B0(uint64_t a1)
{
  result = sub_1D5C96858();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6E5D218(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

unint64_t sub_1D6E5D26C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return result;
  }

  v5 = a2;
  v6 = result;
  v7 = (a3 + 48);
  v65 = result;
  while (1)
  {
    v8 = *v7;
    if (*v7 < 2)
    {
      goto LABEL_3;
    }

    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    if (!v9)
    {

      sub_1D5D0A57C(v8);
      v11 = 0;
      goto LABEL_9;
    }

    if (v9 != 1)
    {
      break;
    }

    sub_1D5D0A57C(v8);
    v11 = 1;
LABEL_9:
    sub_1D5D0A57C(v11);

LABEL_75:

    sub_1D6E5D26C(v6, v5, v10);
    if (v3)
    {
      sub_1D5D0A58C(v9);

      goto LABEL_88;
    }

    sub_1D5D0A58C(v9);

    result = sub_1D5D0A58C(v8);
LABEL_3:
    v7 += 3;
    if (!--v4)
    {
      return result;
    }
  }

  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  v64 = v13;
  if (!v13)
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    v14 = 0;
LABEL_14:
    sub_1D5D0A57C(v14);

LABEL_73:

    v5 = a2;
    sub_1D6E5D26C(v65, a2, v12);
    if (v3)
    {
      sub_1D5D0A58C(v64);

      sub_1D5D0A58C(v9);

      goto LABEL_87;
    }

    sub_1D5D0A58C(v64);

    sub_1D5D0A58C(v9);
    v6 = v65;
    goto LABEL_75;
  }

  if (v13 == 1)
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    v14 = 1;
    goto LABEL_14;
  }

  v15 = *(v13 + 16);
  v61 = *(v13 + 24);
  v62 = v15;
  if (!v15)
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    sub_1D5D0A57C(v13);

    sub_1D5D0A57C(v13);
    v16 = 0;
LABEL_19:
    sub_1D5D0A57C(v16);
    v17 = v61;

    goto LABEL_71;
  }

  if (v15 == 1)
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    sub_1D5D0A57C(v13);

    sub_1D5D0A57C(v13);
    v16 = 1;
    goto LABEL_19;
  }

  v18 = *(v15 + 16);
  v59 = *(v15 + 24);
  v60 = v18;
  if (!v18)
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    sub_1D5D0A57C(v13);

    sub_1D5D0A57C(v13);
    sub_1D5D0A57C(v62);

    sub_1D5D0A57C(v62);
    v19 = 0;
LABEL_24:
    sub_1D5D0A57C(v19);
    v20 = v59;

LABEL_69:

    sub_1D6E5D26C(v65, a2, v20);
    if (v3)
    {
      sub_1D5D0A58C(v60);

      v40 = v62;
      sub_1D5D0A58C(v62);

      v39 = v64;
      sub_1D5D0A58C(v64);

      sub_1D5D0A58C(v9);

      goto LABEL_85;
    }

    sub_1D5D0A58C(v60);

    sub_1D5D0A58C(v62);
    v17 = v61;
LABEL_71:

    sub_1D6E5D26C(v65, a2, v17);
    if (v3)
    {
      sub_1D5D0A58C(v62);

      v39 = v64;
      sub_1D5D0A58C(v64);

      sub_1D5D0A58C(v9);

      goto LABEL_86;
    }

    sub_1D5D0A58C(v62);

    sub_1D5D0A58C(v64);
    goto LABEL_73;
  }

  if (v18 == 1)
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    sub_1D5D0A57C(v13);

    sub_1D5D0A57C(v13);
    sub_1D5D0A57C(v62);

    sub_1D5D0A57C(v62);
    v19 = 1;
    goto LABEL_24;
  }

  v21 = *(v18 + 16);
  v57 = *(v18 + 24);
  v58 = v21;
  if (!v21)
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    sub_1D5D0A57C(v13);

    sub_1D5D0A57C(v13);
    sub_1D5D0A57C(v62);

    sub_1D5D0A57C(v62);
    sub_1D5D0A57C(v60);

    sub_1D5D0A57C(v60);
    v22 = 0;
LABEL_29:
    sub_1D5D0A57C(v22);
    v23 = v57;

LABEL_67:

    sub_1D6E5D26C(v65, a2, v23);
    if (v3)
    {
      sub_1D5D0A58C(v58);

      v41 = v60;
      sub_1D5D0A58C(v60);

      v40 = v62;
      sub_1D5D0A58C(v62);

      v39 = v64;
      sub_1D5D0A58C(v64);

      sub_1D5D0A58C(v9);

LABEL_82:
      v42 = v41;
      goto LABEL_84;
    }

    sub_1D5D0A58C(v58);

    sub_1D5D0A58C(v60);
    v20 = v59;
    goto LABEL_69;
  }

  if (v21 == 1)
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    sub_1D5D0A57C(v13);

    sub_1D5D0A57C(v13);
    sub_1D5D0A57C(v62);

    sub_1D5D0A57C(v62);
    sub_1D5D0A57C(v60);

    sub_1D5D0A57C(v60);
    v22 = 1;
    goto LABEL_29;
  }

  v24 = *(v21 + 16);
  v55 = *(v21 + 24);
  v56 = v24;
  if (v24)
  {
    if (v24 == 1)
    {

      sub_1D5D0A57C(v8);
      sub_1D5D0A57C(v9);

      sub_1D5D0A57C(v9);
      sub_1D5D0A57C(v13);

      sub_1D5D0A57C(v13);
      sub_1D5D0A57C(v62);

      sub_1D5D0A57C(v62);
      sub_1D5D0A57C(v60);

      sub_1D5D0A57C(v60);
      sub_1D5D0A57C(v58);

      sub_1D5D0A57C(v58);
      v25 = 1;
      goto LABEL_34;
    }

    v27 = *(v24 + 16);
    v53 = *(v24 + 24);
    v54 = v27;
    if (v27)
    {
      if (v27 == 1)
      {

        sub_1D5D0A57C(v8);
        sub_1D5D0A57C(v9);

        sub_1D5D0A57C(v9);
        sub_1D5D0A57C(v13);

        sub_1D5D0A57C(v13);
        sub_1D5D0A57C(v62);

        sub_1D5D0A57C(v62);
        sub_1D5D0A57C(v60);

        sub_1D5D0A57C(v60);
        sub_1D5D0A57C(v58);

        sub_1D5D0A57C(v58);
        sub_1D5D0A57C(v56);

        sub_1D5D0A57C(v56);
        v28 = 1;
        goto LABEL_39;
      }

      v30 = *(v27 + 16);
      v51 = *(v27 + 24);
      v52 = v30;
      if (v30)
      {
        if (v30 == 1)
        {

          sub_1D5D0A57C(v8);
          sub_1D5D0A57C(v9);

          sub_1D5D0A57C(v9);
          sub_1D5D0A57C(v13);

          sub_1D5D0A57C(v13);
          sub_1D5D0A57C(v62);

          sub_1D5D0A57C(v62);
          sub_1D5D0A57C(v60);

          sub_1D5D0A57C(v60);
          sub_1D5D0A57C(v58);

          sub_1D5D0A57C(v58);
          sub_1D5D0A57C(v56);

          sub_1D5D0A57C(v56);
          sub_1D5D0A57C(v54);

          sub_1D5D0A57C(v54);
          v31 = 1;
          goto LABEL_44;
        }

        v33 = *(v30 + 16);
        v49 = *(v30 + 24);
        v50 = v33;
        if (v33)
        {
          if (v33 == 1)
          {

            sub_1D5D0A57C(v8);
            sub_1D5D0A57C(v9);

            sub_1D5D0A57C(v9);
            sub_1D5D0A57C(v13);

            sub_1D5D0A57C(v13);
            sub_1D5D0A57C(v62);

            sub_1D5D0A57C(v62);
            sub_1D5D0A57C(v60);

            sub_1D5D0A57C(v60);
            sub_1D5D0A57C(v58);

            sub_1D5D0A57C(v58);
            sub_1D5D0A57C(v56);

            sub_1D5D0A57C(v56);
            sub_1D5D0A57C(v54);

            sub_1D5D0A57C(v54);
            sub_1D5D0A57C(v52);

            sub_1D5D0A57C(v52);
            v34 = 1;
            goto LABEL_49;
          }

          v36 = *(v33 + 16);
          v47 = *(v33 + 24);
          v48 = v36;
          if (v36)
          {
            if (v36 == 1)
            {

              sub_1D5D0A57C(v8);
              sub_1D5D0A57C(v9);

              sub_1D5D0A57C(v9);
              sub_1D5D0A57C(v13);

              sub_1D5D0A57C(v13);
              sub_1D5D0A57C(v62);

              sub_1D5D0A57C(v62);
              sub_1D5D0A57C(v60);

              sub_1D5D0A57C(v60);
              sub_1D5D0A57C(v58);

              sub_1D5D0A57C(v58);
              sub_1D5D0A57C(v56);

              sub_1D5D0A57C(v56);
              sub_1D5D0A57C(v54);

              sub_1D5D0A57C(v54);
              sub_1D5D0A57C(v52);

              sub_1D5D0A57C(v52);
              sub_1D5D0A57C(v50);

              sub_1D5D0A57C(v50);
              v37 = 1;
              goto LABEL_54;
            }

            v45 = *(v36 + 16);
            v46 = *(v36 + 24);

            sub_1D5D0A57C(v8);
            sub_1D5D0A57C(v9);

            sub_1D5D0A57C(v9);
            sub_1D5D0A57C(v13);

            sub_1D5D0A57C(v13);
            sub_1D5D0A57C(v62);

            sub_1D5D0A57C(v62);
            sub_1D5D0A57C(v60);

            sub_1D5D0A57C(v60);
            sub_1D5D0A57C(v58);

            sub_1D5D0A57C(v58);
            sub_1D5D0A57C(v56);

            sub_1D5D0A57C(v56);
            sub_1D5D0A57C(v54);

            sub_1D5D0A57C(v54);
            sub_1D5D0A57C(v52);

            sub_1D5D0A57C(v52);
            sub_1D5D0A57C(v50);

            sub_1D5D0A57C(v50);
            sub_1D5D0A57C(v48);

            sub_1D5D0A57C(v48);
            sub_1D5D0A57C(v45);

            sub_1D62A5CE4(v65, a2, v45, v46);
            if (!v3)
            {
              sub_1D5D0A58C(v45);

              sub_1D5D0A58C(v48);
              v38 = v47;
              goto LABEL_57;
            }

            sub_1D5D0A58C(v48);

            sub_1D5D0A58C(v50);

            sub_1D5D0A58C(v52);

            sub_1D5D0A58C(v54);

            sub_1D5D0A58C(v56);

            sub_1D5D0A58C(v58);

            sub_1D5D0A58C(v60);

            sub_1D5D0A58C(v62);

            sub_1D5D0A58C(v13);

            sub_1D5D0A58C(v9);

            sub_1D5D0A58C(v45);

            sub_1D5D0A58C(v48);
LABEL_95:
            sub_1D5D0A58C(v50);
LABEL_96:
            sub_1D5D0A58C(v52);
            v44 = v54;
LABEL_97:
            sub_1D5D0A58C(v44);
            v39 = v64;
            v40 = v62;
            v41 = v60;
            v43 = v58;
LABEL_98:
            sub_1D5D0A58C(v56);
            sub_1D5D0A58C(v43);
            goto LABEL_82;
          }

          sub_1D5D0A57C(v8);
          sub_1D5D0A57C(v9);

          sub_1D5D0A57C(v9);
          sub_1D5D0A57C(v13);

          sub_1D5D0A57C(v13);
          sub_1D5D0A57C(v62);

          sub_1D5D0A57C(v62);
          sub_1D5D0A57C(v60);

          sub_1D5D0A57C(v60);
          sub_1D5D0A57C(v58);

          sub_1D5D0A57C(v58);
          sub_1D5D0A57C(v56);

          sub_1D5D0A57C(v56);
          sub_1D5D0A57C(v54);

          sub_1D5D0A57C(v54);
          sub_1D5D0A57C(v52);

          sub_1D5D0A57C(v52);
          sub_1D5D0A57C(v50);

          sub_1D5D0A57C(v50);
          v37 = 0;
LABEL_54:
          sub_1D5D0A57C(v37);
          v38 = v47;

LABEL_57:

          sub_1D6E5D26C(v65, a2, v38);
          if (v3)
          {
            sub_1D5D0A58C(v48);

            sub_1D5D0A58C(v50);

            sub_1D5D0A58C(v52);

            sub_1D5D0A58C(v54);

            sub_1D5D0A58C(v56);

            sub_1D5D0A58C(v58);

            sub_1D5D0A58C(v60);

            sub_1D5D0A58C(v62);

            sub_1D5D0A58C(v64);

            sub_1D5D0A58C(v9);

            goto LABEL_95;
          }

          sub_1D5D0A58C(v48);

          sub_1D5D0A58C(v50);
          v35 = v49;
        }

        else
        {

          sub_1D5D0A57C(v8);
          sub_1D5D0A57C(v9);

          sub_1D5D0A57C(v9);
          sub_1D5D0A57C(v13);

          sub_1D5D0A57C(v13);
          sub_1D5D0A57C(v62);

          sub_1D5D0A57C(v62);
          sub_1D5D0A57C(v60);

          sub_1D5D0A57C(v60);
          sub_1D5D0A57C(v58);

          sub_1D5D0A57C(v58);
          sub_1D5D0A57C(v56);

          sub_1D5D0A57C(v56);
          sub_1D5D0A57C(v54);

          sub_1D5D0A57C(v54);
          sub_1D5D0A57C(v52);

          sub_1D5D0A57C(v52);
          v34 = 0;
LABEL_49:
          sub_1D5D0A57C(v34);
          v35 = v49;
        }

        sub_1D6E5D26C(v65, a2, v35);
        if (v3)
        {
          sub_1D5D0A58C(v50);

          sub_1D5D0A58C(v52);

          sub_1D5D0A58C(v54);

          sub_1D5D0A58C(v56);

          sub_1D5D0A58C(v58);

          sub_1D5D0A58C(v60);

          sub_1D5D0A58C(v62);

          sub_1D5D0A58C(v64);

          sub_1D5D0A58C(v9);

          goto LABEL_96;
        }

        sub_1D5D0A58C(v50);

        sub_1D5D0A58C(v52);
        v32 = v51;
      }

      else
      {

        sub_1D5D0A57C(v8);
        sub_1D5D0A57C(v9);

        sub_1D5D0A57C(v9);
        sub_1D5D0A57C(v13);

        sub_1D5D0A57C(v13);
        sub_1D5D0A57C(v62);

        sub_1D5D0A57C(v62);
        sub_1D5D0A57C(v60);

        sub_1D5D0A57C(v60);
        sub_1D5D0A57C(v58);

        sub_1D5D0A57C(v58);
        sub_1D5D0A57C(v56);

        sub_1D5D0A57C(v56);
        sub_1D5D0A57C(v54);

        sub_1D5D0A57C(v54);
        v31 = 0;
LABEL_44:
        sub_1D5D0A57C(v31);
        v32 = v51;
      }

      sub_1D6E5D26C(v65, a2, v32);
      if (v3)
      {
        sub_1D5D0A58C(v52);

        v44 = v54;
        sub_1D5D0A58C(v54);

        sub_1D5D0A58C(v56);

        sub_1D5D0A58C(v58);

        sub_1D5D0A58C(v60);

        sub_1D5D0A58C(v62);

        sub_1D5D0A58C(v64);

        sub_1D5D0A58C(v9);

        goto LABEL_97;
      }

      sub_1D5D0A58C(v52);

      sub_1D5D0A58C(v54);
      v29 = v53;
    }

    else
    {

      sub_1D5D0A57C(v8);
      sub_1D5D0A57C(v9);

      sub_1D5D0A57C(v9);
      sub_1D5D0A57C(v13);

      sub_1D5D0A57C(v13);
      sub_1D5D0A57C(v62);

      sub_1D5D0A57C(v62);
      sub_1D5D0A57C(v60);

      sub_1D5D0A57C(v60);
      sub_1D5D0A57C(v58);

      sub_1D5D0A57C(v58);
      sub_1D5D0A57C(v56);

      sub_1D5D0A57C(v56);
      v28 = 0;
LABEL_39:
      sub_1D5D0A57C(v28);
      v29 = v53;
    }

    sub_1D6E5D26C(v65, a2, v29);
    if (v3)
    {
      sub_1D5D0A58C(v54);

      sub_1D5D0A58C(v56);

      sub_1D5D0A58C(v58);

      v41 = v60;
      sub_1D5D0A58C(v60);

      v40 = v62;
      sub_1D5D0A58C(v62);

      v39 = v64;
      sub_1D5D0A58C(v64);

      sub_1D5D0A58C(v9);

      v43 = v58;

      goto LABEL_98;
    }

    sub_1D5D0A58C(v54);

    sub_1D5D0A58C(v56);
    v26 = v55;
  }

  else
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    sub_1D5D0A57C(v13);

    sub_1D5D0A57C(v13);
    sub_1D5D0A57C(v62);

    sub_1D5D0A57C(v62);
    sub_1D5D0A57C(v60);

    sub_1D5D0A57C(v60);
    sub_1D5D0A57C(v58);

    sub_1D5D0A57C(v58);
    v25 = 0;
LABEL_34:
    sub_1D5D0A57C(v25);
    v26 = v55;
  }

  sub_1D6E5D26C(v65, a2, v26);
  if (!v3)
  {

    sub_1D5D0A58C(v56);

    sub_1D5D0A58C(v58);
    v23 = v57;
    goto LABEL_67;
  }

  sub_1D5D0A58C(v56);

  sub_1D5D0A58C(v58);

  sub_1D5D0A58C(v60);

  v40 = v62;
  sub_1D5D0A58C(v62);

  v39 = v64;
  sub_1D5D0A58C(v64);

  sub_1D5D0A58C(v9);

  sub_1D5D0A58C(v58);
  v42 = v60;
LABEL_84:
  sub_1D5D0A58C(v42);
LABEL_85:
  sub_1D5D0A58C(v40);
LABEL_86:
  sub_1D5D0A58C(v39);
LABEL_87:
  sub_1D5D0A58C(v9);
LABEL_88:

  return sub_1D5D0A58C(v8);
}

uint64_t sub_1D6E5E92C(uint64_t result, __int128 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = v4 - 1;
    for (i = (a3 + 48); ; i += 3)
    {
      v9 = *(i - 2);
      if ((~v9 & 0xF000000000000007) != 0)
      {
        v11 = *(i - 1);
        v10 = *i;
        v16 = *(i - 2);
        v12 = a2[5];
        v15[4] = a2[4];
        v15[5] = v12;
        v15[6] = a2[6];
        v13 = a2[1];
        v15[0] = *a2;
        v15[1] = v13;
        v14 = a2[3];
        v15[2] = a2[2];
        v15[3] = v14;
        sub_1D5CFCFAC(v9);
        sub_1D5D04BD4(v11);
        sub_1D5D04BD4(v10);
        sub_1D5CFCFAC(v9);
        sub_1D5CF9A24(v6, v15);
        sub_1D5C84FF4(v9);
        sub_1D5C8500C(v11);
        sub_1D5C8500C(v10);

        if (v3)
        {
          break;
        }
      }

      if (!v7)
      {
        break;
      }

      --v7;
    }
  }

  return result;
}

unint64_t sub_1D6E5EA3C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return result;
  }

  v5 = a2;
  v6 = result;
  v7 = (a3 + 48);
  v45 = result;
  while (1)
  {
    v8 = *v7;
    if (*v7 >> 62 != 1)
    {
      goto LABEL_3;
    }

    v9 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (v9 >> 62)
    {
      break;
    }

    sub_1D5EB1500(v8);
    v16 = v9;
LABEL_25:
    sub_1D5EB1500(v16);

LABEL_68:

    sub_1D6E5EA3C(v6, v5, v10);
    if (v3)
    {
      sub_1D5EB15C4(v9);

      goto LABEL_81;
    }

    sub_1D5EB15C4(v9);

    result = sub_1D5EB15C4(v8);
LABEL_3:
    v7 += 3;
    if (!--v4)
    {
      return result;
    }
  }

  if (v9 >> 62 != 1)
  {

    sub_1D5EB1500(v8);
    if (v9 == 0x8000000000000000)
    {
      v16 = 0x8000000000000000;
    }

    else
    {
      v16 = 0x8000000000000008;
    }

    goto LABEL_25;
  }

  v12 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v11 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v44 = v12;
  if (!(v12 >> 62))
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    v17 = v12;
LABEL_30:
    sub_1D5EB1500(v17);

LABEL_66:
    v5 = a2;

    sub_1D6E5EA3C(v45, a2, v11);
    if (v3)
    {
      sub_1D5EB15C4(v44);

      sub_1D5EB15C4(v9);

      goto LABEL_80;
    }

    sub_1D5EB15C4(v44);

    sub_1D5EB15C4(v9);
    v6 = v45;
    goto LABEL_68;
  }

  if (v12 >> 62 != 1)
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    if (v12 == 0x8000000000000000)
    {
      v17 = 0x8000000000000000;
    }

    else
    {
      v17 = 0x8000000000000008;
    }

    goto LABEL_30;
  }

  v41 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v42 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (!(v42 >> 62))
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    v18 = v42;
LABEL_35:
    sub_1D5EB1500(v18);
    v19 = v41;

LABEL_64:

    sub_1D6E5EA3C(v45, a2, v19);
    if (v3)
    {
      sub_1D5EB15C4(v42);

      v27 = v44;
      sub_1D5EB15C4(v44);

      sub_1D5EB15C4(v9);

      goto LABEL_79;
    }

    sub_1D5EB15C4(v42);

    sub_1D5EB15C4(v44);
    goto LABEL_66;
  }

  if (v42 >> 62 != 1)
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    if (v42 == 0x8000000000000000)
    {
      v18 = 0x8000000000000000;
    }

    else
    {
      v18 = 0x8000000000000008;
    }

    goto LABEL_35;
  }

  v39 = *((v42 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v40 = *((v42 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (!(v40 >> 62))
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    sub_1D5EB1500(v42);

    sub_1D5EB1500(v42);
    v20 = v40;
LABEL_40:
    sub_1D5EB1500(v20);
    v21 = v39;

LABEL_62:

    sub_1D6E5EA3C(v45, a2, v21);
    if (v3)
    {
      sub_1D5EB15C4(v40);

      v28 = v42;
      sub_1D5EB15C4(v42);

      v27 = v44;
      sub_1D5EB15C4(v44);

      sub_1D5EB15C4(v9);

      goto LABEL_78;
    }

    sub_1D5EB15C4(v40);

    sub_1D5EB15C4(v42);
    v19 = v41;
    goto LABEL_64;
  }

  if (v40 >> 62 != 1)
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    sub_1D5EB1500(v42);

    sub_1D5EB1500(v42);
    if (v40 == 0x8000000000000000)
    {
      v20 = 0x8000000000000000;
    }

    else
    {
      v20 = 0x8000000000000008;
    }

    goto LABEL_40;
  }

  v37 = *((v40 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v38 = *((v40 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (!(v38 >> 62))
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    sub_1D5EB1500(v42);

    sub_1D5EB1500(v42);
    sub_1D5EB1500(v40);

    sub_1D5EB1500(v40);
    v22 = v38;
LABEL_45:
    sub_1D5EB1500(v22);
    v23 = v37;

LABEL_60:

    sub_1D6E5EA3C(v45, a2, v23);
    if (v3)
    {
      sub_1D5EB15C4(v38);

      sub_1D5EB15C4(v40);

      v28 = v42;
      sub_1D5EB15C4(v42);

      v27 = v44;
      sub_1D5EB15C4(v44);

      sub_1D5EB15C4(v9);

LABEL_76:
      v29 = v40;
      goto LABEL_77;
    }

    sub_1D5EB15C4(v38);

    sub_1D5EB15C4(v40);
    v21 = v39;
    goto LABEL_62;
  }

  if (v38 >> 62 != 1)
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    sub_1D5EB1500(v42);

    sub_1D5EB1500(v42);
    sub_1D5EB1500(v40);

    sub_1D5EB1500(v40);
    if (v38 == 0x8000000000000000)
    {
      v22 = 0x8000000000000000;
    }

    else
    {
      v22 = 0x8000000000000008;
    }

    goto LABEL_45;
  }

  v13 = *((v38 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v35 = *((v38 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v36 = v13;
  if (!(v13 >> 62))
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    sub_1D5EB1500(v42);

    sub_1D5EB1500(v42);
    sub_1D5EB1500(v40);

    sub_1D5EB1500(v40);
    sub_1D5EB1500(v38);

    sub_1D5EB1500(v38);
    v24 = v36;
LABEL_50:
    sub_1D5EB1500(v24);
    v25 = v35;

LABEL_58:

    sub_1D6E5EA3C(v45, a2, v25);
    if (v3)
    {
      sub_1D5EB15C4(v36);

      sub_1D5EB15C4(v38);

      sub_1D5EB15C4(v40);

      v28 = v42;
      sub_1D5EB15C4(v42);

      v27 = v44;
      sub_1D5EB15C4(v44);

      sub_1D5EB15C4(v9);

      sub_1D5EB15C4(v38);
      goto LABEL_76;
    }

    sub_1D5EB15C4(v36);

    sub_1D5EB15C4(v38);
    v23 = v37;
    goto LABEL_60;
  }

  if (v13 >> 62 != 1)
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    sub_1D5EB1500(v42);

    sub_1D5EB1500(v42);
    sub_1D5EB1500(v40);

    sub_1D5EB1500(v40);
    sub_1D5EB1500(v38);

    sub_1D5EB1500(v38);
    if (v36 == 0x8000000000000000)
    {
      v24 = 0x8000000000000000;
    }

    else
    {
      v24 = 0x8000000000000008;
    }

    goto LABEL_50;
  }

  v14 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v33 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v34 = v14;
  if (!(v14 >> 62))
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    sub_1D5EB1500(v42);

    sub_1D5EB1500(v42);
    sub_1D5EB1500(v40);

    sub_1D5EB1500(v40);
    sub_1D5EB1500(v38);

    sub_1D5EB1500(v38);
    sub_1D5EB1500(v36);

    sub_1D5EB1500(v36);
    v26 = v34;
    goto LABEL_55;
  }

  if (v14 >> 62 != 1)
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    sub_1D5EB1500(v42);

    sub_1D5EB1500(v42);
    sub_1D5EB1500(v40);

    sub_1D5EB1500(v40);
    sub_1D5EB1500(v38);

    sub_1D5EB1500(v38);
    sub_1D5EB1500(v36);

    sub_1D5EB1500(v36);
    if (v34 == 0x8000000000000000)
    {
      v26 = 0x8000000000000000;
    }

    else
    {
      v26 = 0x8000000000000008;
    }

LABEL_55:
    sub_1D5EB1500(v26);
    v15 = v33;

LABEL_56:

    sub_1D6E5EA3C(v45, a2, v15);
    if (v3)
    {
      sub_1D5EB15C4(v34);

      sub_1D5EB15C4(v36);

      sub_1D5EB15C4(v38);

      v30 = v40;
      sub_1D5EB15C4(v40);

      v28 = v42;
      sub_1D5EB15C4(v42);

      v27 = v44;
      sub_1D5EB15C4(v44);

      sub_1D5EB15C4(v9);

      goto LABEL_85;
    }

    sub_1D5EB15C4(v34);

    sub_1D5EB15C4(v36);
    v25 = v35;
    goto LABEL_58;
  }

  v31 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v32 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

  sub_1D5EB1500(v8);
  sub_1D5EB1500(v9);

  sub_1D5EB1500(v9);
  sub_1D5EB1500(v12);

  sub_1D5EB1500(v12);
  sub_1D5EB1500(v42);

  sub_1D5EB1500(v42);
  sub_1D5EB1500(v40);

  sub_1D5EB1500(v40);
  sub_1D5EB1500(v38);

  sub_1D5EB1500(v38);
  sub_1D5EB1500(v36);

  sub_1D5EB1500(v36);
  sub_1D5EB1500(v34);

  sub_1D5EB1500(v34);
  sub_1D5EB1500(v31);

  sub_1D62A5D84(v45, a2, v31, v32);
  if (!v3)
  {
    sub_1D5EB15C4(v31);

    sub_1D5EB15C4(v34);
    v15 = v33;
    goto LABEL_56;
  }

  sub_1D5EB15C4(v31);

  sub_1D5EB15C4(v34);

  sub_1D5EB15C4(v36);

  sub_1D5EB15C4(v38);

  v30 = v40;
  sub_1D5EB15C4(v40);

  v28 = v42;
  sub_1D5EB15C4(v42);

  v27 = v44;
  sub_1D5EB15C4(v44);

  sub_1D5EB15C4(v9);

  sub_1D5EB15C4(v34);
LABEL_85:
  sub_1D5EB15C4(v36);
  sub_1D5EB15C4(v38);
  v29 = v30;
LABEL_77:
  sub_1D5EB15C4(v29);
LABEL_78:
  sub_1D5EB15C4(v28);
LABEL_79:
  sub_1D5EB15C4(v27);
LABEL_80:
  sub_1D5EB15C4(v9);
LABEL_81:

  return sub_1D5EB15C4(v8);
}

uint64_t sub_1D6E5F890(uint64_t result, __int128 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = (a3 + 32); ; i += 4)
    {
      v8 = i[1];
      *v27 = *i;
      *&v27[16] = v8;
      *&v27[32] = i[2];
      *&v27[43] = *(i + 43);
      *&v15[0] = *v27;
      v9 = a2[5];
      v24 = a2[4];
      v25 = v9;
      v26 = a2[6];
      v10 = a2[1];
      v20 = *a2;
      v21 = v10;
      v11 = a2[3];
      v22 = a2[2];
      v23 = v11;
      sub_1D5CF8338(v27, &v17, qword_1EDF2F000, sub_1D62B64C0, &type metadata for FormatOptionsNodeStatementValue, type metadata accessor for FormatSwitchValue.CaseValue);

      sub_1D5CF6528(v6, &v20);
      if (v3)
      {
        break;
      }

      v17 = *&v27[8];
      v18 = *&v27[24];
      v19[0] = *&v27[40];
      *(v19 + 15) = *&v27[55];
      v12 = a2[5];
      v24 = a2[4];
      v25 = v12;
      v26 = a2[6];
      v13 = a2[1];
      v20 = *a2;
      v21 = v13;
      v14 = a2[3];
      v22 = a2[2];
      v23 = v14;
      sub_1D5CF5DBC(&v27[8], v15);
      sub_1D5CF5E6C(v6, &v20);
      sub_1D5CF9D88(v27, qword_1EDF2F000, sub_1D62B64C0, &type metadata for FormatOptionsNodeStatementValue, type metadata accessor for FormatSwitchValue.CaseValue);
      v15[0] = v17;
      v15[1] = v18;
      v16[0] = v19[0];
      *(v16 + 15) = *(v19 + 15);
      result = sub_1D5CF603C(v15);
      if (!--v4)
      {
        return result;
      }
    }

    sub_1D5CF9D88(v27, qword_1EDF2F000, sub_1D62B64C0, &type metadata for FormatOptionsNodeStatementValue, type metadata accessor for FormatSwitchValue.CaseValue);
  }

  return result;
}

uint64_t sub_1D6E5FB2C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v11 = result;
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = (a3 + 64);
    while (1)
    {
      v6 = *(v5 - 4);
      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      v12 = *v5;
      nullsub_1(v11);
      if (v3)
      {
        break;
      }

      v5 += 40;
      sub_1D5ECEE80(v6, v7, v8, v9, v10);
      result = sub_1D5ECEF00(v6, v7, v8, v9, v12);
      --v4;
      v3 = 0;
      if (!v4)
      {
        return result;
      }
    }

    sub_1D5ECEE80(v6, v7, v8, v9, v10);
    return sub_1D5ECEF00(v6, v7, v8, v9, v12);
  }

  return result;
}

uint64_t sub_1D6E5FC70(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return result;
  }

  v5 = a2;
  v6 = result;
  v7 = (a3 + 48);
  v49 = result;
  while (1)
  {
    v8 = *v7;
    if (*v7 < 0)
    {
      break;
    }

LABEL_5:
    v7 += 3;
    if (!--v4)
    {
      return result;
    }
  }

  v9 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v10 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v11 = v9 & 0x3FFFFFFFFFFFFFFFLL;
  if ((v9 >> 62) < 2)
  {

LABEL_4:

    sub_1D6E5FC70(v6, v5, v10);

    swift_bridgeObjectRelease_n();

    if (v3)
    {
      return result;
    }

    goto LABEL_5;
  }

  v12 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v13 = *(v11 + 24);
  v14 = v12 & 0x3FFFFFFFFFFFFFFFLL;
  if ((v12 >> 62) <= 1)
  {

    swift_retain_n();

LABEL_47:

    sub_1D6E5FC70(v49, a2, v13);
    if (v3)
    {

      swift_bridgeObjectRelease_n();
    }

    swift_bridgeObjectRelease_n();

    v5 = a2;
    v6 = v49;
    goto LABEL_4;
  }

  v15 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v16 = v15 & 0x3FFFFFFFFFFFFFFFLL;
  v48 = *(v14 + 24);
  if ((v15 >> 62) <= 1)
  {

    swift_retain_n();

    swift_retain_n();
    v17 = v13;

LABEL_45:

    sub_1D6E5FC70(v49, a2, v48);
    if (v3)
    {

      swift_bridgeObjectRelease_n();
    }

    swift_bridgeObjectRelease_n();

    v13 = v17;
    goto LABEL_47;
  }

  v47 = *(v11 + 24);
  v18 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v19 = v18 & 0x3FFFFFFFFFFFFFFFLL;
  v46 = *(v16 + 24);
  if (!(v18 >> 62))
  {

    v20 = v46;

    swift_retain_n();

    swift_retain_n();

    goto LABEL_16;
  }

  if (v18 >> 62 == 1)
  {

    swift_retain_n();

    swift_retain_n();

    v20 = v46;
LABEL_16:
    swift_retain_n();

LABEL_43:

    sub_1D6E5FC70(v49, a2, v20);
    if (v3)
    {

      swift_bridgeObjectRelease_n();
    }

    swift_bridgeObjectRelease_n();

    v17 = v47;
    goto LABEL_45;
  }

  v21 = *((v18 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v22 = *(v19 + 24);
  v23 = v21 & 0x3FFFFFFFFFFFFFFFLL;
  if ((v21 >> 62) <= 1)
  {

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

LABEL_41:

    sub_1D6E5FC70(v49, a2, v22);
    if (v3)
    {

      swift_bridgeObjectRelease_n();
    }

    swift_bridgeObjectRelease_n();

    v3 = 0;
    v20 = v46;
    goto LABEL_43;
  }

  v24 = *((v21 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v44 = *(v23 + 24);
  v25 = v24 & 0x3FFFFFFFFFFFFFFFLL;
  v45 = *(v19 + 24);
  if ((v24 >> 62) <= 1)
  {

    v26 = v44;

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

LABEL_39:

    sub_1D6E5FC70(v49, a2, v26);
    if (v3)
    {

      swift_bridgeObjectRelease_n();
    }

    swift_bridgeObjectRelease_n();

    v3 = 0;
    v22 = v45;
    goto LABEL_41;
  }

  v27 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v28 = v27 & 0x3FFFFFFFFFFFFFFFLL;
  if ((v27 >> 62) <= 1)
  {
    v29 = *(v25 + 24);

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

LABEL_37:

    sub_1D6E5FC70(v49, a2, v29);
    if (v3)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_63;
    }

    swift_bridgeObjectRelease_n();

    v3 = 0;
    v26 = v44;
    goto LABEL_39;
  }

  v30 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v31 = v30 & 0x3FFFFFFFFFFFFFFFLL;
  v43 = *(v25 + 24);
  v42 = *(v28 + 24);
  if ((v30 >> 62) <= 1)
  {

    v32 = v42;

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

LABEL_35:

    sub_1D6E5FC70(v49, a2, v32);
    if (v3)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_62;
    }

    swift_bridgeObjectRelease_n();

    v3 = 0;
    v29 = v43;
    goto LABEL_37;
  }

  v33 = *((v30 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v34 = v33 & 0x3FFFFFFFFFFFFFFFLL;
  v41 = *(v31 + 24);
  if ((v33 >> 62) <= 1)
  {

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

LABEL_33:

    sub_1D6E5FC70(v49, a2, v41);
    if (v3)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_61;
    }

    swift_bridgeObjectRelease_n();

    v3 = 0;
    v32 = v42;
    goto LABEL_35;
  }

  v35 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v36 = v35 >> 62;
  v37 = v35 & 0x3FFFFFFFFFFFFFFFLL;
  v40 = *(v34 + 24);
  if (v36 <= 1)
  {

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

LABEL_31:

    sub_1D6E5FC70(v49, a2, v40);
    if (v3)
    {

      swift_bridgeObjectRelease_n();

      goto LABEL_61;
    }

    swift_bridgeObjectRelease_n();

    v3 = 0;
    goto LABEL_33;
  }

  v38 = *(v37 + 24);
  v39 = *(v37 + 16);

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  sub_1D62A5E2C(v49, a2, v39, v38);
  if (!v3)
  {

    v3 = 0;
    goto LABEL_31;
  }

LABEL_61:

LABEL_62:

LABEL_63:
}

uint64_t sub_1D6E60D7C(uint64_t result, _OWORD *a2, uint64_t a3)
{
  v4 = v3;
  v17 = result;
  v5 = *(a3 + 16);
  if (v5)
  {
    sub_1D6E78BF8(0, &qword_1EDF1B018, &type metadata for FormatSourceItemTipTrait, MEMORY[0x1E69E62F8]);
    v8 = v7;
    sub_1D6E78B60();
    v9 = (a3 + 48);
    do
    {
      v23 = *v9;

      swift_bridgeObjectRetain_n();
      if (swift_dynamicCast())
      {
        v10 = v8;
        v18 = v4;
        v12 = *(&v21 + 1);
        v11 = v22;
        __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
        v13 = a2[5];
        v19[4] = a2[4];
        v19[5] = v13;
        v19[6] = a2[6];
        v14 = a2[1];
        v19[0] = *a2;
        v19[1] = v14;
        v15 = a2[3];
        v19[2] = a2[2];
        v19[3] = v15;
        (*(v11 + 8))(v17, v19, v12, v11);
        v4 = v18;

        result = __swift_destroy_boxed_opaque_existential_1(&v20);
        if (v18)
        {
          return result;
        }

        v8 = v10;
      }

      else
      {

        v22 = 0;
        v20 = 0u;
        v21 = 0u;
        result = sub_1D5CF6420(&v20, sub_1D6E78BC4);
      }

      v9 += 3;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1D6E60F24(uint64_t result, __int128 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v8 = *i;
      v15 = *(i - 1);
      v9 = a2[5];
      v14[4] = a2[4];
      v14[5] = v9;
      v14[6] = a2[6];
      v10 = a2[1];
      v14[0] = *a2;
      v14[1] = v10;
      v11 = a2[3];
      v14[2] = a2[2];
      v14[3] = v11;

      swift_retain_n();
      sub_1D5CF6528(v6, v14);
      if (v3)
      {
        break;
      }

      if (v8 < 0)
      {
      }

      else
      {
        v12 = *(v8 + 16);
        v13 = *(v8 + 24);

        sub_1D6E60F24(v6, a2, v12);
        sub_1D62B28C0(v6, a2, v13);
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D6E610B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v11 = result;
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = (a3 + 80);
    do
    {
      if (*v5 == 4)
      {
        v7 = *(v5 - 6);
        v6 = *(v5 - 5);
        v8 = *(v5 - 4);
        v9 = *(v5 - 3);
        v10 = *(v5 - 1);
        v12 = *(v5 - 2);
        nullsub_1(v11);
        if (v3)
        {
        }

        sub_1D62B7654(v7, v6, v8, v9, v12, v10, 4u);

        result = sub_1D62B772C(v7, v6, v8, v9, v12, v10, 4u);
        v3 = 0;
      }

      v5 += 56;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1D6E6120C(uint64_t result, __int128 *a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = result;
    v8 = (a3 + 32);
    while (1)
    {
      v10 = *v8++;
      v9 = v10;
      v11 = v10 >> 62;
      if (v10 >> 62)
      {
        break;
      }

      v15 = *(v9 + 16);
      if (*(v15 + 64) == 4)
      {
        v59 = v7;
        v25 = *(v15 + 16);
        v24 = *(v15 + 24);
        v26 = *(v15 + 40);
        v28 = *(v15 + 48);
        v27 = *(v15 + 56);
        v60 = v26;
        v56 = v25;
        v57 = v24;
        v58 = v28;
        v100 = *(v15 + 32);
        if (v25)
        {
          *&v84 = v25;
          *(&v84 + 1) = v24;
          v29 = a2[5];
          v96 = a2[4];
          v97 = v29;
          v98 = a2[6];
          v30 = a2[1];
          __dst = *a2;
          v93 = v30;
          v31 = a2[3];
          v94 = a2[2];
          v95 = v31;
          v32 = v24;
          nullsub_1(v59);
          if (v4)
          {
            sub_1D5D615EC(v25);
          }

          sub_1D62B753C(v25, v32, v100, v26, v58, v27, 4u);
          sub_1D5D615EC(v25);
        }

        else
        {
          v40 = v24;

          sub_1D62B753C(0, v40, v100, v26, v28, v27, 4u);
        }

        v7 = v59;
        if (v100)
        {
          *&v84 = v100;
          *(&v84 + 1) = v26;
          v41 = a2[5];
          v96 = a2[4];
          v97 = v41;
          v98 = a2[6];
          v42 = a2[1];
          __dst = *a2;
          v93 = v42;
          v43 = a2[3];
          v94 = a2[2];
          v95 = v43;
          nullsub_1(v59);
          if (v4)
          {
            v49 = v100;
            sub_1D5D615EC(v100);

            v50 = v56;
            v51 = v57;
            v52 = v49;
            v53 = v26;
            v54 = v58;
            v55 = v27;
            goto LABEL_37;
          }

          sub_1D5D615EC(v100);
        }

        v44 = v27;
        if (v58)
        {
          *&v84 = v58;
          *(&v84 + 1) = v27;
          v45 = a2[5];
          v96 = a2[4];
          v97 = v45;
          v98 = a2[6];
          v46 = a2[1];
          __dst = *a2;
          v93 = v46;
          v47 = a2[3];
          v94 = a2[2];
          v95 = v47;
          nullsub_1(v59);
          if (v4)
          {
            sub_1D5D615EC(v58);

            v50 = v56;
            v51 = v57;
            v52 = v100;
            v53 = v60;
            v54 = v58;
            v55 = v27;
LABEL_37:
            sub_1D62B4A44(v50, v51, v52, v53, v54, v55, 4u);
          }

          sub_1D5D615EC(v58);
          v44 = v27;

          v48 = v58;
        }

        else
        {
          v48 = 0;
        }

        sub_1D62B4A44(v56, v57, v100, v60, v48, v44, 4u);
      }

      else
      {
      }

      v33 = *(v15 + 200);
      v34 = *(v15 + 232);
      v90 = *(v15 + 216);
      v91[0] = v34;
      *(v91 + 9) = *(v15 + 241);
      v35 = *(v15 + 136);
      v36 = *(v15 + 168);
      v86 = *(v15 + 152);
      v87 = v36;
      v88 = *(v15 + 184);
      v89 = v33;
      v84 = *(v15 + 120);
      v85 = v35;
      memmove(&__dst, (v15 + 120), 0x89uLL);
      if (sub_1D60486AC(&__dst) == 1)
      {
        goto LABEL_3;
      }

      v82 = v98;
      v83[0] = v99[0];
      *(v83 + 9) = *(v99 + 9);
      v78 = v94;
      v79 = v95;
      v80 = v96;
      v81 = v97;
      v76 = __dst;
      v77 = v93;
      v37 = a2[5];
      v73 = a2[4];
      v74 = v37;
      v75 = a2[6];
      v38 = a2[1];
      v69 = *a2;
      v70 = v38;
      v39 = a2[3];
      v71 = a2[2];
      v72 = v39;
      nullsub_1(v7);
      if (v4)
      {
        sub_1D6E78A70(&v84, &v61, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);

        v67 = v82;
        v68[0] = v83[0];
        *(v68 + 9) = *(v83 + 9);
        v63 = v78;
        v64 = v79;
        v65 = v80;
        v66 = v81;
        v61 = v76;
        v62 = v77;
        sub_1D62B49F0(&v61);
      }

      sub_1D6E78A70(&v84, &v61, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);

      v67 = v82;
      v68[0] = v83[0];
      *(v68 + 9) = *(v83 + 9);
      v63 = v78;
      v64 = v79;
      v65 = v80;
      v66 = v81;
      v61 = v76;
      v62 = v77;
      sub_1D62B49F0(&v61);
LABEL_4:

      if (!--v5)
      {
        return result;
      }
    }

    if (v11 == 1)
    {
      v12 = a2[5];
      v96 = a2[4];
      v97 = v12;
      v98 = a2[6];
      v13 = a2[1];
      __dst = *a2;
      v93 = v13;
      v14 = a2[3];
      v94 = a2[2];
      v95 = v14;

      sub_1D62A49E0(v7, &__dst);
      if (v4)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v16 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v17 = *(v16 + 16);

      sub_1D6E6120C(v7, a2, v17);
      if (v4)
      {
LABEL_29:
      }

      v18 = *(v16 + 120);
      v89 = *(v16 + 104);
      v90 = v18;
      v91[0] = *(v16 + 136);
      *(v91 + 9) = *(v16 + 145);
      v19 = *(v16 + 56);
      v85 = *(v16 + 40);
      v86 = v19;
      v20 = *(v16 + 88);
      v87 = *(v16 + 72);
      v88 = v20;
      v84 = *(v16 + 24);
      memmove(&__dst, (v16 + 24), 0x89uLL);
      if (sub_1D60486AC(&__dst) != 1)
      {
        v82 = v98;
        v83[0] = v99[0];
        *(v83 + 9) = *(v99 + 9);
        v78 = v94;
        v79 = v95;
        v80 = v96;
        v81 = v97;
        v76 = __dst;
        v77 = v93;
        v21 = a2[5];
        v73 = a2[4];
        v74 = v21;
        v75 = a2[6];
        v22 = a2[1];
        v69 = *a2;
        v70 = v22;
        v23 = a2[3];
        v71 = a2[2];
        v72 = v23;
        nullsub_1(v7);
        sub_1D6E78A70(&v84, &v61, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);

        v67 = v82;
        v68[0] = v83[0];
        *(v68 + 9) = *(v83 + 9);
        v63 = v78;
        v64 = v79;
        v65 = v80;
        v66 = v81;
        v61 = v76;
        v62 = v77;
        sub_1D62B49F0(&v61);
        goto LABEL_4;
      }
    }

LABEL_3:

    goto LABEL_4;
  }

  return result;
}

uint64_t sub_1D6E6198C(uint64_t result, _OWORD *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return result;
  }

  v4 = a2;
  v5 = result;
  v6 = (a3 + 56);
  v150 = result;
  while (1)
  {
    v7 = *v6;
    v8 = *v6 >> 61;
    if (v8 > 2)
    {
      goto LABEL_5;
    }

    v9 = *(v6 - 3);
    v10 = *(v6 - 2);
    v11 = *(v6 - 8);
    if (!v8)
    {
      if ((*(v7 + 48) & 1) == 0)
      {
        goto LABEL_5;
      }

      v154 = v3;
      v23 = *(v7 + 16);
      v24 = *(v7 + 24);
      v25 = *(v7 + 32);
      v26 = *(v7 + 40);
      v152 = v26[3];

      v135 = v10;
      v146 = v9;
      sub_1D5D03180(v9, v10, v11);

      sub_1D5F26358(v23, v24, v25);
      sub_1D62B5FC8(v26, 1);

      sub_1D6E6399C(v150, a2, v152);
      if (v161)
      {
        sub_1D5D07BA8(v9, v10, v11);

        sub_1D5F26348(v23, v24, v25);
        sub_1D5FC4E9C(v26, 1);
      }

      v172 = v26[4];
      v27 = v172;
      sub_1D62B7E2C();
      sub_1D6E78B60();
      v28 = v27;
      if (swift_dynamicCast())
      {
        v30 = *(&v170 + 1);
        v29 = v171;
        __swift_project_boxed_opaque_existential_1(&v169, *(&v170 + 1));
        v31 = a2[5];
        v166 = a2[4];
        v167 = v31;
        v168 = a2[6];
        v32 = a2[1];
        v162 = *a2;
        v163 = v32;
        v33 = a2[3];
        v164 = a2[2];
        v165 = v33;
        (*(v29 + 8))(v150, &v162, v30, v29);
        __swift_destroy_boxed_opaque_existential_1(&v169);
        sub_1D5D07BA8(v146, v135, v11);
      }

      else
      {
        v171 = 0;
        v169 = 0u;
        v170 = 0u;
        sub_1D5CF6420(&v169, sub_1D6E78BC4);
        sub_1D5D07BA8(v146, v10, v11);
      }

      sub_1D5F26348(v23, v24, v25);
      sub_1D5FC4E9C(v26, 1);

      goto LABEL_4;
    }

    if (v8 != 1)
    {
      v34 = v7 & 0x1FFFFFFFFFFFFFFFLL;
      v35 = v4;
      v36 = *(v34 + 16);
      v37 = *(v36 + 24);

      v160 = v11;
      sub_1D5D03180(v9, v10, v11);

      v38 = v35;
      sub_1D6E6198C(v5, v35, v37);
      if (v161)
      {
        sub_1D5D07BA8(v9, v10, v11);
      }

      v39 = *(v36 + 32);
      v40 = v39 >> 61;
      if ((v39 >> 61) > 1)
      {
        if (v40 == 2)
        {
          v49 = *((v39 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v50 = *(v49 + 24);

          sub_1D6E6198C(v5, v38, v50);
          v51 = *(v49 + 32);
          v52 = v51 >> 61;
          if ((v51 >> 61) <= 1)
          {
            if (v52)
            {
              v68 = *((v51 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
              v162 = *((v51 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v163 = v68;
              v69 = *((v51 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
              v164 = *((v51 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
              v165 = v69;
              v70 = v164;
              if (v164 == 255 || (v164 & 1) == 0)
              {

                sub_1D62B6004(&v162, &v169);
              }

              else
              {
                v71 = *(&v163 + 1);
                v149 = *(*(&v163 + 1) + 24);

                sub_1D62B6004(&v162, &v169);
                sub_1D62B7EE4(v71, v70);
                sub_1D6E6399C(v5, v38, v149);
                sub_1D62A7BBC(v5, v38, v71[4]);
                v161 = 0;
                sub_1D62B5FD4(v71, v70);
              }

              sub_1D6E63788(v5, v38, *(&v165 + 1));
              sub_1D5D07BA8(v9, v10, v160);

              sub_1D62B6060(&v162);
            }

            else
            {
              v137 = v10;
              v58 = *(v51 + 16);
              v57 = *(v51 + 24);
              v59 = *(v51 + 32);
              v60 = *(v51 + 40);
              v134 = *(v51 + 48);
              if (v134)
              {
                v132 = *(v60 + 24);

                sub_1D5F26358(v58, v57, v59);
                sub_1D62B5FC8(v60, 1);

                sub_1D6E6399C(v150, a2, v132);
                sub_1D62A7BBC(v150, a2, *(v60 + 32));
                v161 = 0;
                v61 = v160;
                v62 = v59;
                v63 = v57;
              }

              else
              {

                v72 = v59;
                v62 = v59;
                v63 = v57;
                sub_1D5F26358(v58, v57, v72);
                sub_1D62B5FC8(v60, 0);

                v61 = v160;
              }

              sub_1D5D07BA8(v9, v137, v61);

              sub_1D5F26348(v58, v63, v62);
              sub_1D5FC4E9C(v60, v134);

              v5 = v150;
              v38 = a2;
            }
          }

          else
          {
            if (v52 == 2)
            {
              v148 = v9;
              v64 = *((v51 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v65 = *(v64 + 24);

              sub_1D6E6198C(v5, v38, v65);
              v66 = *(v64 + 32);
              v67 = v66 >> 61;
              if ((v66 >> 61) <= 1)
              {
                v155 = v3;
                if (v67)
                {
                  v84 = *((v66 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                  v162 = *((v66 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                  v163 = v84;
                  v85 = *((v66 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
                  v164 = *((v66 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                  v165 = v85;
                  v86 = v164;
                  if (v164 == 255 || (v164 & 1) == 0)
                  {

                    sub_1D62B6004(&v162, &v169);
                  }

                  else
                  {
                    v87 = *(&v163 + 1);
                    v139 = *(*(&v163 + 1) + 24);

                    sub_1D62B6004(&v162, &v169);
                    sub_1D62B7EE4(v87, v86);
                    sub_1D6E6399C(v5, v38, v139);
                    sub_1D62A7BBC(v5, v38, v87[4]);
                    v161 = 0;
                    sub_1D62B5FD4(v87, v86);
                  }

                  sub_1D6E63788(v5, v38, *(&v165 + 1));
                  sub_1D5D07BA8(v148, v10, v160);

                  sub_1D62B6060(&v162);
                }

                else
                {
                  v138 = v10;
                  v74 = *(v66 + 16);
                  v73 = *(v66 + 24);
                  v75 = *(v66 + 32);
                  v76 = *(v66 + 40);
                  v131 = *(v66 + 48);
                  if (v131)
                  {
                    v129 = *(v76 + 24);

                    sub_1D5F26358(v74, v73, v75);
                    sub_1D62B5FC8(v76, 1);

                    sub_1D6E6399C(v150, a2, v129);
                    sub_1D62A7BBC(v150, a2, *(v76 + 32));
                    v161 = 0;
                    v77 = v160;
                    v78 = v75;
                    v79 = v73;
                  }

                  else
                  {

                    v88 = v75;
                    v78 = v75;
                    v79 = v73;
                    sub_1D5F26358(v74, v73, v88);
                    sub_1D62B5FC8(v76, 0);

                    v77 = v160;
                  }

                  sub_1D5D07BA8(v148, v138, v77);

                  sub_1D5F26348(v74, v79, v78);
                  sub_1D5FC4E9C(v76, v131);

                  v5 = v150;
                  v38 = a2;
                }

                v3 = v155;
              }

              else
              {
                if (v67 == 2)
                {
                  v80 = *((v66 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                  v81 = *(v80 + 24);

                  sub_1D6E6198C(v5, v38, v81);
                  v82 = *(v80 + 32);
                  v83 = v82 >> 61;
                  if ((v82 >> 61) <= 1)
                  {
                    v156 = v3;
                    if (v83)
                    {
                      v97 = *((v82 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                      v162 = *((v82 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v163 = v97;
                      v98 = *((v82 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
                      v164 = *((v82 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                      v165 = v98;
                      v99 = v164;
                      if (v164 == 255 || (v164 & 1) == 0)
                      {

                        sub_1D62B6004(&v162, &v169);
                      }

                      else
                      {
                        v100 = *(&v163 + 1);
                        v142 = *(*(&v163 + 1) + 24);

                        sub_1D62B6004(&v162, &v169);
                        sub_1D62B7EE4(v100, v99);
                        sub_1D6E6399C(v5, v38, v142);
                        sub_1D62A7BBC(v5, v38, v100[4]);
                        v161 = 0;
                        sub_1D62B5FD4(v100, v99);
                      }

                      sub_1D6E63788(v5, v38, *(&v165 + 1));
                      sub_1D5D07BA8(v148, v10, v160);

                      sub_1D62B6060(&v162);
                    }

                    else
                    {
                      v140 = v10;
                      v90 = *(v82 + 16);
                      v89 = *(v82 + 24);
                      v91 = *(v82 + 32);
                      v92 = *(v82 + 40);
                      v130 = *(v82 + 48);
                      if (v130)
                      {
                        v127 = *(v92 + 24);

                        v93 = v89;
                        sub_1D5F26358(v90, v89, v91);
                        sub_1D62B5FC8(v92, 1);

                        sub_1D6E6399C(v150, a2, v127);
                        sub_1D62A7BBC(v150, a2, *(v92 + 32));
                        v161 = 0;
                      }

                      else
                      {

                        v93 = v89;
                        sub_1D5F26358(v90, v89, v91);
                        sub_1D62B5FC8(v92, 0);
                      }

                      sub_1D5D07BA8(v148, v140, v160);

                      sub_1D5F26348(v90, v93, v91);
                      sub_1D5FC4E9C(v92, v130);

                      v5 = v150;
                      v38 = a2;
                      v3 = v156;
                    }
                  }

                  else if (v83 == 2)
                  {
                    v94 = *((v82 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    v141 = *(v94 + 24);

                    sub_1D6E6198C(v5, v38, v141);
                    v95 = *(v94 + 32);
                    v96 = v95 >> 61;
                    if ((v95 >> 61) <= 1)
                    {
                      v157 = v3;
                      if (v96)
                      {
                        v111 = *((v95 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                        v162 = *((v95 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                        v163 = v111;
                        v112 = *((v95 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
                        v164 = *((v95 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                        v165 = v112;
                        v113 = v164;
                        if (v164 == 255 || (v164 & 1) == 0)
                        {

                          sub_1D62B6004(&v162, &v169);
                        }

                        else
                        {
                          v114 = *(&v163 + 1);
                          v145 = *(*(&v163 + 1) + 24);

                          sub_1D62B6004(&v162, &v169);
                          sub_1D62B7EE4(v114, v113);
                          sub_1D6E6399C(v5, v38, v145);
                          sub_1D62A7BBC(v5, v38, v114[4]);
                          v161 = 0;
                          sub_1D62B5FD4(v114, v113);
                        }

                        sub_1D6E63788(v5, v38, *(&v165 + 1));
                        sub_1D5D07BA8(v148, v10, v160);

                        sub_1D62B6060(&v162);
                      }

                      else
                      {
                        v143 = v10;
                        v101 = *(v95 + 16);
                        v102 = *(v95 + 24);
                        v103 = *(v95 + 32);
                        v104 = *(v95 + 40);
                        v128 = *(v95 + 48);
                        if (v128)
                        {
                          v105 = *(v104 + 24);

                          v106 = v101;
                          sub_1D5F26358(v101, v102, v103);
                          sub_1D62B5FC8(v104, 1);

                          sub_1D6E6399C(v150, a2, v105);
                          sub_1D62A7BBC(v150, a2, *(v104 + 32));
                          v161 = 0;
                        }

                        else
                        {

                          v106 = v101;
                          sub_1D5F26358(v101, v102, v103);
                          sub_1D62B5FC8(v104, 0);
                        }

                        sub_1D5D07BA8(v148, v143, v160);

                        sub_1D5F26348(v106, v102, v103);
                        sub_1D5FC4E9C(v104, v128);

                        v5 = v150;
                        v38 = a2;
                      }

                      v3 = v157;
                    }

                    else if (v96 == 2)
                    {
                      v144 = v10;
                      v107 = *((v95 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v108 = *(v107 + 24);

                      sub_1D6E6198C(v5, v38, v108);
                      v109 = *(v107 + 32);
                      v110 = v109 >> 61;
                      if ((v109 >> 61) <= 1)
                      {
                        v158 = v3;
                        if (v110)
                        {
                          v122 = *((v109 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                          v162 = *((v109 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                          v163 = v122;
                          v123 = *((v109 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
                          v164 = *((v109 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                          v165 = v123;
                          v124 = v164;
                          if (v164 == 255 || (v164 & 1) == 0)
                          {

                            sub_1D62B6004(&v162, &v169);
                          }

                          else
                          {
                            v125 = *(&v163 + 1);
                            v126 = *(*(&v163 + 1) + 24);

                            sub_1D62B6004(&v162, &v169);
                            sub_1D62B7EE4(v125, v124);
                            sub_1D6E6399C(v150, a2, v126);
                            sub_1D62A7BBC(v150, a2, v125[4]);
                            sub_1D62B5FD4(v125, v124);
                          }

                          v5 = v150;
                          v38 = a2;
                          sub_1D6E63788(v150, a2, *(&v165 + 1));
                          v161 = 0;
                          sub_1D5D07BA8(v148, v144, v160);

                          sub_1D62B6060(&v162);
                        }

                        else
                        {
                          if (*(v109 + 48))
                          {
                            v115 = *(v109 + 16);
                            v116 = *(v109 + 24);
                            v117 = *(v109 + 32);
                            v118 = *(v109 + 40);
                            v119 = *(v118 + 24);

                            sub_1D5F26358(v115, v116, v117);
                            sub_1D62B5FC8(v118, 1);

                            sub_1D62B5FC8(v118, 1);
                            sub_1D6E6399C(v150, a2, v119);
                            sub_1D62A7BBC(v150, a2, *(v118 + 32));
                            sub_1D5D07BA8(v148, v144, v160);

                            sub_1D5FC4E9C(v118, 1);
                            sub_1D5F26348(v115, v116, v117);
                            sub_1D5FC4E9C(v118, 1);

                            v161 = 0;
                          }

                          else
                          {

                            sub_1D5D07BA8(v148, v144, v160);
                          }

                          v5 = v150;
                          v38 = a2;
                        }

                        v3 = v158;
                      }

                      else if (v110 == 2)
                      {
                        v120 = *((v109 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                        v121 = *(v120 + 24);

                        sub_1D6E6198C(v5, a2, v121);
                        v38 = a2;
                        sub_1D62A7A54(v5, a2, *(v120 + 32));
                        v161 = 0;
                        sub_1D5D07BA8(v148, v144, v160);
                      }

                      else
                      {
                        sub_1D5D07BA8(v148, v144, v160);

                        v38 = a2;
                      }
                    }

                    else
                    {
                      sub_1D5D07BA8(v148, v10, v160);
                    }
                  }

                  else
                  {
                    sub_1D5D07BA8(v148, v10, v160);
                  }
                }

                else
                {
                  sub_1D5D07BA8(v148, v10, v160);
                }
              }
            }

            else
            {
              sub_1D5D07BA8(v9, v10, v160);
            }
          }

          v4 = v38;
        }

        else
        {
          sub_1D5D07BA8(v9, v10, v11);

          v4 = v35;
        }

        goto LABEL_5;
      }

      v154 = v3;
      if (v40)
      {
        v53 = *((v39 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v162 = *((v39 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v163 = v53;
        v54 = *((v39 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        v164 = *((v39 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v165 = v54;
        v55 = v164;
        if (v164 == 255 || (v164 & 1) == 0)
        {

          sub_1D62B6004(&v162, &v169);
        }

        else
        {
          v56 = *(&v163 + 1);
          v147 = *(*(&v163 + 1) + 24);

          sub_1D62B6004(&v162, &v169);
          sub_1D62B7EE4(v56, v55);
          sub_1D6E6399C(v5, v38, v147);
          sub_1D62A7BBC(v5, v38, v56[4]);
          v161 = 0;
          sub_1D62B5FD4(v56, v55);
        }

        sub_1D6E63788(v5, v38, *(&v165 + 1));
        sub_1D5D07BA8(v9, v10, v11);

        sub_1D62B6060(&v162);

        v4 = v38;
        goto LABEL_5;
      }

      v43 = *(v39 + 16);
      v44 = *(v39 + 24);
      v45 = *(v39 + 32);
      v46 = *(v39 + 40);
      v136 = *(v39 + 48);
      if (v136)
      {
        v47 = *(v39 + 32);
        v133 = *(v46 + 24);

        sub_1D5F26358(v43, v44, v47);
        sub_1D62B5FC8(v46, 1);

        sub_1D6E6399C(v150, a2, v133);
        sub_1D62A7BBC(v150, a2, *(v46 + 32));
        v161 = 0;
        v48 = v160;
        v45 = v47;
      }

      else
      {

        sub_1D5F26358(v43, v44, v45);
        sub_1D62B5FC8(v46, 0);

        v48 = v11;
      }

      sub_1D5D07BA8(v9, v10, v48);

      sub_1D5F26348(v43, v44, v45);
      sub_1D5FC4E9C(v46, v136);

LABEL_4:

      v5 = v150;
      v4 = a2;
      v3 = v154;
      goto LABEL_5;
    }

    v12 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v162 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v163 = v12;
    v13 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
    v164 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
    v165 = v13;
    v14 = v164;
    if (v164 == 255 || (v164 & 1) == 0)
    {

      v18 = v9;
      v41 = v9;
      v20 = v10;
      v42 = v10;
      v22 = v11;
      sub_1D5D03180(v41, v42, v11);

      sub_1D62B6004(&v162, &v169);
      goto LABEL_23;
    }

    v153 = v3;
    v159 = v6;
    v15 = v4;
    v16 = *(&v163 + 1);
    v17 = *(*(&v163 + 1) + 24);

    v18 = v9;
    v19 = v9;
    v20 = v10;
    v21 = v10;
    v22 = v11;
    sub_1D5D03180(v19, v21, v11);

    sub_1D62B6004(&v162, &v169);
    sub_1D62B7EE4(v16, v14);
    sub_1D6E6399C(v5, v15, v17);
    if (v161)
    {
      break;
    }

    v4 = v15;
    sub_1D62A7BBC(v5, v15, v16[4]);
    v161 = 0;
    sub_1D62B5FD4(v16, v14);
    v3 = v153;
    v6 = v159;
LABEL_23:
    sub_1D6E63788(v5, v4, *(&v165 + 1));
    if (v161)
    {
      sub_1D5D07BA8(v18, v20, v22);

      goto LABEL_115;
    }

    sub_1D5D07BA8(v18, v20, v22);

    sub_1D62B6060(&v162);

LABEL_5:
    v6 += 4;
    if (!--v3)
    {
      return result;
    }
  }

  sub_1D5D07BA8(v18, v20, v11);

  sub_1D62B5FD4(v16, v14);
LABEL_115:
  sub_1D62B6060(&v162);
}

uint64_t sub_1D6E63788(uint64_t result, _OWORD *a2, uint64_t a3)
{
  v4 = v3;
  v19 = result;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = a3 + 40;
    do
    {
      if (*(v6 + 24) == 1)
      {
        v8 = *(v6 - 8);
        v7 = *v6;
        v9 = *(v6 + 8);
        v10 = *(v6 + 16);
        v11 = v10[3];
        sub_1D5F26358(v8, *v6, v9);
        sub_1D62B5FC8(v10, 1);

        sub_1D6E6399C(v19, a2, v11);
        if (v4)
        {
          sub_1D5F26348(v8, v7, v9);
          sub_1D5FC4E9C(v10, 1);
        }

        v25 = v10[4];
        v12 = v25;
        sub_1D62B7E2C();
        sub_1D6E78B60();
        v13 = v12;
        if (swift_dynamicCast())
        {
          v15 = *(&v23 + 1);
          v14 = v24;
          __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
          v16 = a2[5];
          v21[4] = a2[4];
          v21[5] = v16;
          v21[6] = a2[6];
          v17 = a2[1];
          v21[0] = *a2;
          v21[1] = v17;
          v18 = a2[3];
          v21[2] = a2[2];
          v21[3] = v18;
          (*(v14 + 8))(v19, v21, v15, v14);
          v4 = 0;
          __swift_destroy_boxed_opaque_existential_1(&v22);
          sub_1D5F26348(v8, v7, v9);
          sub_1D5FC4E9C(v10, 1);
        }

        else
        {
          v24 = 0;
          v22 = 0u;
          v23 = 0u;
          sub_1D5CF6420(&v22, sub_1D6E78BC4);
          sub_1D5F26348(v8, v7, v9);
          sub_1D5FC4E9C(v10, 1);

          v4 = 0;
        }
      }

      v6 += 48;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1D6E6399C(uint64_t result, _OWORD *a2, uint64_t a3)
{
  v15 = result;
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = (a3 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 8);
      v22 = *v4;
      v8 = v22;
      sub_1D5D03180(v5, v6, v7);
      sub_1D62B7E2C();
      sub_1D6E78B60();
      v9 = v8;
      if (swift_dynamicCast())
      {
        v11 = *(&v20 + 1);
        v10 = v21;
        __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
        v12 = a2[5];
        v18[4] = a2[4];
        v18[5] = v12;
        v18[6] = a2[6];
        v13 = a2[1];
        v18[0] = *a2;
        v18[1] = v13;
        v14 = a2[3];
        v18[2] = a2[2];
        v18[3] = v14;
        (*(v10 + 8))(v15, v18, v11, v10);
        sub_1D5D07BA8(v5, v6, v7);

        result = __swift_destroy_boxed_opaque_existential_1(&v19);
        if (v17)
        {
          return result;
        }
      }

      else
      {
        sub_1D5D07BA8(v5, v6, v7);

        v21 = 0;
        v19 = 0u;
        v20 = 0u;
        result = sub_1D5CF6420(&v19, sub_1D6E78BC4);
      }

      v4 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D6E63B28(uint64_t result, _OWORD *a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v34 = result;
    v6 = (a3 + 56);
    do
    {
      if ((*v6 & 0x8000000000000000) != 0)
      {
        v7 = *(v6 - 3);
        v8 = *(v6 - 2);
        v9 = *(v6 - 8);
        v10 = *((*v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
        v11 = *(v10 + 24);
        sub_1D5D03180(v7, v8, v9);
        swift_retain_n();

        sub_1D6E63B28(v34, a2, v11);
        if (v4)
        {
          sub_1D5D07BA8(v7, v8, v9);
        }

        v12 = *(v10 + 32);
        if (v12 < 0)
        {
          v13 = *((v12 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
          v14 = *(v13 + 24);

          sub_1D6E63B28(v34, a2, v14);
          v15 = *(v13 + 32);
          if (v15 < 0)
          {
            v16 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
            v17 = *(v16 + 24);

            sub_1D6E63B28(v34, a2, v17);
            v18 = *(v16 + 32);
            if (v18 < 0)
            {
              v19 = *((v18 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
              v20 = *(v19 + 24);

              sub_1D6E63B28(v34, a2, v20);
              v21 = *(v19 + 32);
              if (v21 < 0)
              {
                v22 = *((v21 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                v23 = *(v22 + 24);

                sub_1D6E63B28(v34, a2, v23);
                v24 = *(v22 + 32);
                if (v24 < 0)
                {
                  v25 = *((v24 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                  v26 = *(v25 + 24);

                  sub_1D6E63B28(v34, a2, v26);
                  v27 = *(v25 + 32);
                  if (v27 < 0)
                  {
                    v28 = *((v27 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                    v29 = *(v28 + 24);

                    sub_1D6E63B28(v34, a2, v29);
                    v36 = *(v28 + 32);
                    v30 = a2[5];
                    v35[4] = a2[4];
                    v35[5] = v30;
                    v35[6] = a2[6];
                    v31 = a2[1];
                    v35[0] = *a2;
                    v35[1] = v31;
                    v32 = a2[3];
                    v35[2] = a2[2];
                    v35[3] = v32;

                    sub_1D62A4030(v34, v35);

                    sub_1D5D07BA8(v7, v8, v9);
                  }

                  else
                  {
                    sub_1D5D07BA8(v7, v8, v9);
                  }
                }

                else
                {
                  sub_1D5D07BA8(v7, v8, v9);
                }
              }

              else
              {
                sub_1D5D07BA8(v7, v8, v9);
              }
            }

            else
            {
              sub_1D5D07BA8(v7, v8, v9);
            }
          }

          else
          {
            sub_1D5D07BA8(v7, v8, v9);
          }
        }

        else
        {
          sub_1D5D07BA8(v7, v8, v9);
        }
      }

      v6 += 4;
      --v5;
    }

    while (v5);
  }

  return result;
}

unint64_t sub_1D6E6415C(unint64_t result, __int128 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return result;
  }

  v6 = result;
  v7 = (a3 + 32);
  v280 = result;
  while (1)
  {
    v9 = *v7++;
    v8 = v9;
    v10 = v9 >> 61;
    v11 = (v9 >> 61) >= 2;
    if ((v9 >> 61) <= 2)
    {
      break;
    }

    if (v10 == 3)
    {
      v288 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v18 = a2[5];
      v285 = a2[4];
      v286 = v18;
      v287 = a2[6];
      v19 = a2[1];
      v281 = *a2;
      v282 = v19;
      v20 = a2[3];
      v283 = a2[2];
      v284 = v20;
      sub_1D5ECF0E0(v8);

      sub_1D5CF9A24(v6, &v281);
      if (v3)
      {
        goto LABEL_202;
      }

LABEL_16:

      result = sub_1D5ECF11C(v8);
      goto LABEL_4;
    }

    if (v10 == 4)
    {
      v288 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = a2[5];
      v285 = a2[4];
      v286 = v12;
      v287 = a2[6];
      v13 = a2[1];
      v281 = *a2;
      v282 = v13;
      v14 = a2[3];
      v283 = a2[2];
      v284 = v14;

      sub_1D5ECF0E0(v8);

      sub_1D5CF9A24(v6, &v281);
      if (v3)
      {
        goto LABEL_201;
      }

      goto LABEL_16;
    }

LABEL_4:
    if (!--v4)
    {
      return result;
    }
  }

  if (!v11)
  {
    goto LABEL_4;
  }

  v15 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v16 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v17 = v15 >> 61;
  if ((v15 >> 61) <= 1)
  {
    if (!v17)
    {
      v278 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v21 = *(v15 + 16);
      v22 = *(v15 + 24);
      v23 = v21 >> 61;
      if ((v21 >> 61) <= 1)
      {
        if (v23)
        {
          v21 &= 0x1FFFFFFFFFFFFFFFuLL;
        }

        v49 = *(v21 + 24);
        v288 = *(v21 + 16);
        v50 = a2[5];
        v285 = a2[4];
        v286 = v50;
        v287 = a2[6];
        v51 = a2[1];
        v281 = *a2;
        v282 = v51;
        v52 = a2[3];
        v283 = a2[2];
        v284 = v52;
        sub_1D5ECF0E0(v8);

        v53 = v280;
        sub_1D62A755C(v280, &v281);
        if (v3)
        {
          goto LABEL_178;
        }

LABEL_72:

        v288 = v49;
        v99 = a2[5];
        v285 = a2[4];
        v286 = v99;
        v287 = a2[6];
        v100 = a2[1];
        v281 = *a2;
        v282 = v100;
        v101 = a2[3];
        v283 = a2[2];
        v284 = v101;

        sub_1D62A755C(v53, &v281);
LABEL_107:

LABEL_108:
        v167 = v22 >> 61;
        if ((v22 >> 61) <= 1)
        {
          if (v167)
          {
            v168 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v288 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          }

          else
          {
            v168 = *(v22 + 24);
            v288 = *(v22 + 16);
          }

          v173 = a2[5];
          v285 = a2[4];
          v286 = v173;
          v287 = a2[6];
          v174 = a2[1];
          v281 = *a2;
          v282 = v174;
          v175 = a2[3];
          v283 = a2[2];
          v284 = v175;

          v172 = v280;
          sub_1D62A755C(v280, &v281);
          if (v3)
          {
            goto LABEL_178;
          }
        }

        else
        {
          if (v167 == 2)
          {
            v176 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v177 = v176 >> 61;
            if ((v176 >> 61) <= 1)
            {
              if (!v177)
              {
                v187 = *(v176 + 24);
                v288 = *(v176 + 16);
                v188 = a2[5];
                v285 = a2[4];
                v286 = v188;
                v287 = a2[6];
                v189 = a2[1];
                v281 = *a2;
                v282 = v189;
                v190 = a2[3];
                v283 = a2[2];
                v284 = v190;

                sub_1D62A755C(v280, &v281);
                if (v3)
                {
                  goto LABEL_194;
                }

                v288 = v187;
                v191 = a2[5];
                v285 = a2[4];
                v286 = v191;
                v287 = a2[6];
                v192 = a2[1];
                v281 = *a2;
                v282 = v192;
                v193 = a2[3];
                v283 = a2[2];
                v284 = v193;

                sub_1D62A755C(v280, &v281);
                goto LABEL_170;
              }

              v263 = v176 & 0x1FFFFFFFFFFFFFFFLL;
              v179 = *(v263 + 24);
              v288 = *(v263 + 16);
              v264 = a2[5];
              v285 = a2[4];
              v286 = v264;
              v287 = a2[6];
              v265 = a2[1];
              v281 = *a2;
              v282 = v265;
              v266 = a2[3];
              v283 = a2[2];
              v284 = v266;

              v183 = v280;
              sub_1D62A755C(v280, &v281);
              if (v3)
              {
LABEL_194:

                goto LABEL_201;
              }
            }

            else
            {
              if (v177 == 2)
              {
                v288 = *((v176 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v257 = a2[5];
                v285 = a2[4];
                v286 = v257;
                v287 = a2[6];
                v258 = a2[1];
                v281 = *a2;
                v282 = v258;
                v259 = a2[3];
                v283 = a2[2];
                v284 = v259;

                sub_1D62A755C(v280, &v281);
                v16 = v278;
                if (v3)
                {
                  goto LABEL_194;
                }

                goto LABEL_123;
              }

              if (v177 == 3)
              {
                goto LABEL_172;
              }

              v178 = v176 & 0x1FFFFFFFFFFFFFFFLL;
              v179 = *(v178 + 24);
              v288 = *(v178 + 16);
              v180 = a2[5];
              v285 = a2[4];
              v286 = v180;
              v287 = a2[6];
              v181 = a2[1];
              v281 = *a2;
              v282 = v181;
              v182 = a2[3];
              v283 = a2[2];
              v284 = v182;

              v183 = v280;
              sub_1D5CF9A24(v280, &v281);
              if (v3)
              {
                goto LABEL_194;
              }
            }

            v288 = v179;
            v267 = a2[5];
            v285 = a2[4];
            v286 = v267;
            v287 = a2[6];
            v268 = a2[1];
            v281 = *a2;
            v282 = v268;
            v269 = a2[3];
            v283 = a2[2];
            v284 = v269;

            sub_1D62A755C(v183, &v281);
            goto LABEL_170;
          }

          if (v167 == 3)
          {
            goto LABEL_172;
          }

          v168 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v288 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v169 = a2[5];
          v285 = a2[4];
          v286 = v169;
          v287 = a2[6];
          v170 = a2[1];
          v281 = *a2;
          v282 = v170;
          v171 = a2[3];
          v283 = a2[2];
          v284 = v171;

          v172 = v280;
          sub_1D5CF9A24(v280, &v281);
          if (v3)
          {
            goto LABEL_178;
          }
        }

        v288 = v168;
        v184 = a2[5];
        v285 = a2[4];
        v286 = v184;
        v287 = a2[6];
        v185 = a2[1];
        v281 = *a2;
        v282 = v185;
        v186 = a2[3];
        v283 = a2[2];
        v284 = v186;

        sub_1D62A755C(v172, &v281);
        v16 = v278;
LABEL_123:

        goto LABEL_173;
      }

      if (v23 != 2)
      {
        if (v23 == 3)
        {
LABEL_21:
          sub_1D5ECF0E0(v8);

          goto LABEL_108;
        }

        v95 = v21 & 0x1FFFFFFFFFFFFFFFLL;
        v49 = *(v95 + 24);
        v288 = *(v95 + 16);
        v96 = a2[5];
        v285 = a2[4];
        v286 = v96;
        v287 = a2[6];
        v97 = a2[1];
        v281 = *a2;
        v282 = v97;
        v98 = a2[3];
        v283 = a2[2];
        v284 = v98;
        sub_1D5ECF0E0(v8);

        v53 = v280;
        sub_1D5CF9A24(v280, &v281);
        if (v3)
        {
          goto LABEL_178;
        }

        goto LABEL_72;
      }

      v80 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v81 = v80 >> 61;
      if ((v80 >> 61) <= 1)
      {
        if (!v81)
        {
          v277 = *(v80 + 24);
          v288 = *(v80 + 16);
          v119 = a2[5];
          v285 = a2[4];
          v286 = v119;
          v287 = a2[6];
          v120 = a2[1];
          v281 = *a2;
          v282 = v120;
          v121 = a2[3];
          v283 = a2[2];
          v284 = v121;
          sub_1D5ECF0E0(v8);

          sub_1D62A755C(v280, &v281);
          if (v3)
          {
            goto LABEL_197;
          }

          v288 = v277;
          v122 = a2[5];
          v285 = a2[4];
          v286 = v122;
          v287 = a2[6];
          v123 = a2[1];
          v281 = *a2;
          v282 = v123;
          v124 = a2[3];
          v283 = a2[2];
          v284 = v124;

          sub_1D62A755C(v280, &v281);
          goto LABEL_106;
        }

        v160 = *((v80 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v83 = *((v80 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v288 = v160;
        v161 = a2[5];
        v285 = a2[4];
        v286 = v161;
        v287 = a2[6];
        v162 = a2[1];
        v281 = *a2;
        v282 = v162;
        v163 = a2[3];
        v283 = a2[2];
        v284 = v163;
        sub_1D5ECF0E0(v8);

        v87 = v280;
        sub_1D62A755C(v280, &v281);
        if (v3)
        {
          goto LABEL_194;
        }
      }

      else
      {
        if (v81 == 2)
        {
          v288 = *((v80 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v141 = a2[5];
          v285 = a2[4];
          v286 = v141;
          v287 = a2[6];
          v142 = a2[1];
          v281 = *a2;
          v282 = v142;
          v143 = a2[3];
          v283 = a2[2];
          v284 = v143;
          sub_1D5ECF0E0(v8);

          sub_1D62A755C(v280, &v281);
          if (v3)
          {
            goto LABEL_197;
          }

          goto LABEL_106;
        }

        if (v81 == 3)
        {
          goto LABEL_21;
        }

        v82 = *((v80 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v83 = *((v80 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v288 = v82;
        v84 = a2[5];
        v285 = a2[4];
        v286 = v84;
        v287 = a2[6];
        v85 = a2[1];
        v281 = *a2;
        v282 = v85;
        v86 = a2[3];
        v283 = a2[2];
        v284 = v86;
        sub_1D5ECF0E0(v8);

        v87 = v280;
        sub_1D5CF9A24(v280, &v281);
        if (v3)
        {
          goto LABEL_194;
        }
      }

      v288 = v83;
      v164 = a2[5];
      v285 = a2[4];
      v286 = v164;
      v287 = a2[6];
      v165 = a2[1];
      v281 = *a2;
      v282 = v165;
      v166 = a2[3];
      v283 = a2[2];
      v284 = v166;

      sub_1D62A755C(v87, &v281);
LABEL_106:

      goto LABEL_107;
    }

    v39 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v40 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v41 = v39 >> 61;
    if ((v39 >> 61) <= 1)
    {
      v275 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v279 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      if (v41)
      {
        v39 &= 0x1FFFFFFFFFFFFFFFuLL;
      }

      v54 = *(v39 + 24);
      v288 = *(v39 + 16);
      v55 = a2[5];
      v285 = a2[4];
      v286 = v55;
      v287 = a2[6];
      v56 = a2[1];
      v281 = *a2;
      v282 = v56;
      v57 = a2[3];
      v283 = a2[2];
      v284 = v57;
      sub_1D5ECF0E0(v8);

      sub_1D62A755C(v280, &v281);
      if (v3)
      {
LABEL_178:

        goto LABEL_201;
      }

      v288 = v54;
      v58 = a2[5];
      v285 = a2[4];
      v286 = v58;
      v287 = a2[6];
      v59 = a2[1];
      v281 = *a2;
      v282 = v59;
      v60 = a2[3];
      v283 = a2[2];
      v284 = v60;

      sub_1D62A755C(v280, &v281);
      goto LABEL_130;
    }

    if (v41 != 2)
    {
      if (v41 == 3)
      {
        sub_1D5ECF0E0(v8);

LABEL_35:

        goto LABEL_132;
      }

      v275 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v102 = v39 & 0x1FFFFFFFFFFFFFFFLL;
      v103 = *(v102 + 24);
      v288 = *(v102 + 16);
      v104 = a2[5];
      v285 = a2[4];
      v286 = v104;
      v287 = a2[6];
      v105 = a2[1];
      v281 = *a2;
      v282 = v105;
      v106 = a2[3];
      v283 = a2[2];
      v284 = v106;
      sub_1D5ECF0E0(v8);

      sub_1D5CF9A24(v280, &v281);
      if (v3)
      {
        goto LABEL_178;
      }

      v288 = v103;
      v107 = a2[5];
      v285 = a2[4];
      v286 = v107;
      v287 = a2[6];
      v108 = a2[1];
      v281 = *a2;
      v282 = v108;
      v109 = a2[3];
      v283 = a2[2];
      v284 = v109;

      sub_1D62A755C(v280, &v281);

      goto LABEL_131;
    }

    v279 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v88 = *((v39 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v89 = v88 >> 61;
    if ((v88 >> 61) <= 1)
    {
      v275 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      if (!v89)
      {
        v274 = *(v88 + 24);
        v288 = *(v88 + 16);
        v125 = a2[5];
        v285 = a2[4];
        v286 = v125;
        v287 = a2[6];
        v126 = a2[1];
        v281 = *a2;
        v282 = v126;
        v127 = a2[3];
        v283 = a2[2];
        v284 = v127;
        sub_1D5ECF0E0(v8);

        sub_1D62A755C(v280, &v281);
        if (v3)
        {
          goto LABEL_194;
        }

        v288 = v274;
        v128 = a2[5];
        v285 = a2[4];
        v286 = v128;
        v287 = a2[6];
        v129 = a2[1];
        v281 = *a2;
        v282 = v129;
        v130 = a2[3];
        v283 = a2[2];
        v284 = v130;

        sub_1D62A755C(v280, &v281);
        goto LABEL_129;
      }

      v194 = *((v88 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v155 = *((v88 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v288 = v194;
      v195 = a2[5];
      v285 = a2[4];
      v286 = v195;
      v287 = a2[6];
      v196 = a2[1];
      v281 = *a2;
      v282 = v196;
      v197 = a2[3];
      v283 = a2[2];
      v284 = v197;
      sub_1D5ECF0E0(v8);

      v159 = v280;
      sub_1D62A755C(v280, &v281);
      if (v3)
      {
        goto LABEL_197;
      }
    }

    else
    {
      if (v89 == 2)
      {
        v288 = *((v88 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v144 = a2[5];
        v285 = a2[4];
        v286 = v144;
        v287 = a2[6];
        v145 = a2[1];
        v281 = *a2;
        v282 = v145;
        v146 = a2[3];
        v283 = a2[2];
        v284 = v146;
        sub_1D5ECF0E0(v8);

        sub_1D62A755C(v280, &v281);
        if (v3)
        {
          goto LABEL_194;
        }

        v16 = v279;
LABEL_132:
        v201 = v40 >> 61;
        if ((v40 >> 61) <= 1)
        {
          if (v201)
          {
            v218 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v203 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v288 = v218;
          }

          else
          {
            v208 = *(v40 + 16);
            v203 = *(v40 + 24);
            v288 = v208;
          }

          v209 = a2[5];
          v285 = a2[4];
          v286 = v209;
          v287 = a2[6];
          v210 = a2[1];
          v281 = *a2;
          v282 = v210;
          v211 = a2[3];
          v283 = a2[2];
          v284 = v211;

          v207 = v280;
          sub_1D62A755C(v280, &v281);
          if (v3)
          {
            goto LABEL_178;
          }
        }

        else
        {
          if (v201 == 2)
          {
            v212 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v213 = v212 >> 61;
            if ((v212 >> 61) > 1)
            {
              if (v213 == 2)
              {
                v278 = v16;
                v288 = *((v212 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v260 = a2[5];
                v285 = a2[4];
                v286 = v260;
                v287 = a2[6];
                v261 = a2[1];
                v281 = *a2;
                v282 = v261;
                v262 = a2[3];
                v283 = a2[2];
                v284 = v262;

LABEL_165:
                sub_1D62A755C(v280, &v281);
                if (v3)
                {
                  goto LABEL_194;
                }

                goto LABEL_166;
              }

              if (v213 == 3)
              {
                goto LABEL_173;
              }

              v278 = v16;
              v214 = *((v212 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v91 = *((v212 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
              v288 = v214;
              v215 = a2[5];
              v285 = a2[4];
              v286 = v215;
              v287 = a2[6];
              v216 = a2[1];
              v281 = *a2;
              v282 = v216;
              v217 = a2[3];
              v283 = a2[2];
              v284 = v217;

LABEL_153:
              v239 = v280;
              sub_1D5CF9A24(v280, &v281);
              if (v3)
              {
                goto LABEL_194;
              }

LABEL_159:

              v288 = v91;
              v247 = a2[5];
              v285 = a2[4];
              v286 = v247;
              v287 = a2[6];
              v248 = a2[1];
              v281 = *a2;
              v282 = v248;
              v249 = a2[3];
              v283 = a2[2];
              v284 = v249;

              sub_1D62A755C(v239, &v281);
LABEL_170:

LABEL_171:

              goto LABEL_172;
            }

            v278 = v16;
            if (!v213)
            {
              v222 = *(v212 + 24);
              v288 = *(v212 + 16);
              v223 = a2[5];
              v285 = a2[4];
              v286 = v223;
              v287 = a2[6];
              v224 = a2[1];
              v281 = *a2;
              v282 = v224;
              v225 = a2[3];
              v283 = a2[2];
              v284 = v225;

              sub_1D62A755C(v280, &v281);
              if (v3)
              {
LABEL_197:

                goto LABEL_200;
              }

              v288 = v222;
              v226 = a2[5];
              v285 = a2[4];
              v286 = v226;
              v287 = a2[6];
              v227 = a2[1];
              v281 = *a2;
              v282 = v227;
              v228 = a2[3];
              v283 = a2[2];
              v284 = v228;

              sub_1D62A755C(v280, &v281);
              goto LABEL_170;
            }

            v270 = *((v212 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v91 = *((v212 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v288 = v270;
            v271 = a2[5];
            v285 = a2[4];
            v286 = v271;
            v287 = a2[6];
            v272 = a2[1];
            v281 = *a2;
            v282 = v272;
            v273 = a2[3];
            v283 = a2[2];
            v284 = v273;

            goto LABEL_70;
          }

          if (v201 == 3)
          {
            goto LABEL_173;
          }

          v202 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v203 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v288 = v202;
          v204 = a2[5];
          v285 = a2[4];
          v286 = v204;
          v287 = a2[6];
          v205 = a2[1];
          v281 = *a2;
          v282 = v205;
          v206 = a2[3];
          v283 = a2[2];
          v284 = v206;

          v207 = v280;
          sub_1D5CF9A24(v280, &v281);
          if (v3)
          {
            goto LABEL_178;
          }
        }

        v288 = v203;
        v219 = a2[5];
        v285 = a2[4];
        v286 = v219;
        v287 = a2[6];
        v220 = a2[1];
        v281 = *a2;
        v282 = v220;
        v221 = a2[3];
        v283 = a2[2];
        v284 = v221;

        sub_1D62A755C(v207, &v281);

        goto LABEL_173;
      }

      if (v89 == 3)
      {
        sub_1D5ECF0E0(v8);

        v16 = v279;
        goto LABEL_35;
      }

      v275 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v154 = *((v88 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v155 = *((v88 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v288 = v154;
      v156 = a2[5];
      v285 = a2[4];
      v286 = v156;
      v287 = a2[6];
      v157 = a2[1];
      v281 = *a2;
      v282 = v157;
      v158 = a2[3];
      v283 = a2[2];
      v284 = v158;
      sub_1D5ECF0E0(v8);

      v159 = v280;
      sub_1D5CF9A24(v280, &v281);
      if (v3)
      {
        goto LABEL_194;
      }
    }

    v288 = v155;
    v198 = a2[5];
    v285 = a2[4];
    v286 = v198;
    v287 = a2[6];
    v199 = a2[1];
    v281 = *a2;
    v282 = v199;
    v200 = a2[3];
    v283 = a2[2];
    v284 = v200;

    sub_1D62A755C(v159, &v281);
LABEL_129:

LABEL_130:

    v16 = v279;
LABEL_131:
    v40 = v275;
    goto LABEL_132;
  }

  if (v17 != 2)
  {
    if (v17 == 3)
    {
      sub_1D5ECF0E0(v8);

LABEL_14:

LABEL_173:
      sub_1D6E6415C(v280, a2, v16);
      if (v3)
      {

        goto LABEL_202;
      }

      result = sub_1D5ECF11C(v8);
      v6 = v280;
      goto LABEL_4;
    }

    v26 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v27 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v288 = v26;
    v28 = a2[5];
    v285 = a2[4];
    v286 = v28;
    v287 = a2[6];
    v29 = a2[1];
    v281 = *a2;
    v282 = v29;
    v30 = a2[3];
    v283 = a2[2];
    v284 = v30;
    sub_1D5ECF0E0(v8);

    v278 = v16;

    sub_1D5CF9A24(v280, &v281);
    if (v3)
    {
      goto LABEL_178;
    }

    v31 = v27 >> 61;
    if ((v27 >> 61) <= 1)
    {
      if (v31)
      {
        v61 = *((v27 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v288 = *((v27 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      }

      else
      {
        v61 = *(v27 + 24);
        v288 = *(v27 + 16);
      }

      v62 = a2[5];
      v285 = a2[4];
      v286 = v62;
      v287 = a2[6];
      v63 = a2[1];
      v281 = *a2;
      v282 = v63;
      v64 = a2[3];
      v283 = a2[2];
      v284 = v64;

      sub_1D62A755C(v280, &v281);

      v288 = v61;
      v112 = a2[5];
      v285 = a2[4];
      v286 = v112;
      v287 = a2[6];
      v113 = a2[1];
      v281 = *a2;
      v282 = v113;
      v114 = a2[3];
      v283 = a2[2];
      v284 = v114;

      sub_1D62A755C(v280, &v281);
      goto LABEL_171;
    }

    if (v31 != 2)
    {
      if (v31 != 3)
      {
        v32 = *((v27 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v288 = *((v27 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v33 = a2[5];
        v285 = a2[4];
        v286 = v33;
        v287 = a2[6];
        v34 = a2[1];
        v281 = *a2;
        v282 = v34;
        v35 = a2[3];
        v283 = a2[2];
        v284 = v35;

        sub_1D5CF9A24(v280, &v281);

        v288 = v32;
        v36 = a2[5];
        v285 = a2[4];
        v286 = v36;
        v287 = a2[6];
        v37 = a2[1];
        v281 = *a2;
        v282 = v37;
        v38 = a2[3];
        v283 = a2[2];
        v284 = v38;

        sub_1D62A755C(v280, &v281);
LABEL_167:

        v16 = v278;
        goto LABEL_173;
      }

LABEL_172:
      v16 = v278;
      goto LABEL_173;
    }

    v110 = *((v27 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v111 = v110 >> 61;
    if ((v110 >> 61) > 1)
    {
      if (v111 != 2)
      {
        if (v111 == 3)
        {
          v16 = v278;
          goto LABEL_173;
        }

        v240 = *((v110 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v241 = *((v110 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v288 = v240;
        v242 = a2[5];
        v285 = a2[4];
        v286 = v242;
        v287 = a2[6];
        v243 = a2[1];
        v281 = *a2;
        v282 = v243;
        v244 = a2[3];
        v283 = a2[2];
        v284 = v244;

        v245 = v280;
        sub_1D5CF9A24(v280, &v281);
        goto LABEL_161;
      }

      v288 = *((v110 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v232 = a2[5];
      v285 = a2[4];
      v286 = v232;
      v287 = a2[6];
      v233 = a2[1];
      v281 = *a2;
      v282 = v233;
      v234 = a2[3];
      v283 = a2[2];
      v284 = v234;

      goto LABEL_151;
    }

    if (v111)
    {
      v250 = *((v110 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v241 = *((v110 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v288 = v250;
      v251 = a2[5];
      v285 = a2[4];
      v286 = v251;
      v287 = a2[6];
      v252 = a2[1];
      v281 = *a2;
      v282 = v252;
      v253 = a2[3];
      v283 = a2[2];
      v284 = v253;

      v245 = v280;
      sub_1D62A755C(v280, &v281);
LABEL_161:

      v288 = v241;
      v254 = a2[5];
      v285 = a2[4];
      v286 = v254;
      v287 = a2[6];
      v255 = a2[1];
      v281 = *a2;
      v282 = v255;
      v256 = a2[3];
      v283 = a2[2];
      v284 = v256;

      sub_1D62A755C(v245, &v281);
      goto LABEL_170;
    }

    v42 = *(v110 + 24);
    v288 = *(v110 + 16);
    v135 = a2[5];
    v285 = a2[4];
    v286 = v135;
    v287 = a2[6];
    v136 = a2[1];
    v281 = *a2;
    v282 = v136;
    v137 = a2[3];
    v283 = a2[2];
    v284 = v137;

LABEL_38:
    sub_1D62A755C(v280, &v281);
    if (v3)
    {
      goto LABEL_194;
    }

    v288 = v42;
    v46 = a2[5];
    v285 = a2[4];
    v286 = v46;
    v287 = a2[6];
    v47 = a2[1];
    v281 = *a2;
    v282 = v47;
    v48 = a2[3];
    v283 = a2[2];
    v284 = v48;

    sub_1D62A755C(v280, &v281);
    goto LABEL_170;
  }

  v278 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v24 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v25 = v24 >> 61;
  if ((v24 >> 61) <= 1)
  {
    if (!v25)
    {
      v42 = *(v24 + 24);
      v288 = *(v24 + 16);
      v43 = a2[5];
      v285 = a2[4];
      v286 = v43;
      v287 = a2[6];
      v44 = a2[1];
      v281 = *a2;
      v282 = v44;
      v45 = a2[3];
      v283 = a2[2];
      v284 = v45;
      sub_1D5ECF0E0(v8);

      goto LABEL_38;
    }

    v90 = v24 & 0x1FFFFFFFFFFFFFFFLL;
    v91 = *(v90 + 24);
    v288 = *(v90 + 16);
    v92 = a2[5];
    v285 = a2[4];
    v286 = v92;
    v287 = a2[6];
    v93 = a2[1];
    v281 = *a2;
    v282 = v93;
    v94 = a2[3];
    v283 = a2[2];
    v284 = v94;
    sub_1D5ECF0E0(v8);

LABEL_70:

    goto LABEL_158;
  }

  if (v25 != 2)
  {
    if (v25 == 3)
    {
      goto LABEL_25;
    }

    v74 = v24 & 0x1FFFFFFFFFFFFFFFLL;
    v75 = *(v74 + 24);
    v288 = *(v74 + 16);
    v76 = a2[5];
    v285 = a2[4];
    v286 = v76;
    v287 = a2[6];
    v77 = a2[1];
    v281 = *a2;
    v282 = v77;
    v78 = a2[3];
    v283 = a2[2];
    v284 = v78;
    sub_1D5ECF0E0(v8);

    sub_1D5CF9A24(v280, &v281);
    if (v3)
    {
      goto LABEL_194;
    }

    v79 = v75 >> 61;
    if ((v75 >> 61) > 1)
    {
      if (v79 == 2)
      {
        v288 = *((v75 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v229 = a2[5];
        v285 = a2[4];
        v286 = v229;
        v287 = a2[6];
        v230 = a2[1];
        v281 = *a2;
        v282 = v230;
        v231 = a2[3];
        v283 = a2[2];
        v284 = v231;
LABEL_151:

        goto LABEL_165;
      }

      if (v79 == 3)
      {
        goto LABEL_167;
      }

      v235 = *((v75 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v91 = *((v75 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v288 = v235;
      v236 = a2[5];
      v285 = a2[4];
      v286 = v236;
      v287 = a2[6];
      v237 = a2[1];
      v281 = *a2;
      v282 = v237;
      v238 = a2[3];
      v283 = a2[2];
      v284 = v238;

      goto LABEL_153;
    }

    if (v79)
    {
      v246 = *((v75 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v91 = *((v75 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v288 = v246;
    }

    else
    {
      v131 = *(v75 + 16);
      v91 = *(v75 + 24);
      v288 = v131;
    }

    v132 = a2[5];
    v285 = a2[4];
    v286 = v132;
    v287 = a2[6];
    v133 = a2[1];
    v281 = *a2;
    v282 = v133;
    v134 = a2[3];
    v283 = a2[2];
    v284 = v134;

LABEL_158:
    v239 = v280;
    sub_1D62A755C(v280, &v281);
    if (v3)
    {
      goto LABEL_194;
    }

    goto LABEL_159;
  }

  v65 = *((v24 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v66 = v65 >> 61;
  if ((v65 >> 61) <= 1)
  {
    if (v66)
    {
      v147 = v65 & 0x1FFFFFFFFFFFFFFFLL;
      v115 = *(v147 + 24);
      v288 = *(v147 + 16);
      v148 = a2[5];
      v285 = a2[4];
      v286 = v148;
      v287 = a2[6];
      v149 = a2[1];
      v281 = *a2;
      v282 = v149;
      v150 = a2[3];
      v283 = a2[2];
      v284 = v150;
      sub_1D5ECF0E0(v8);

      swift_retain_n();

      sub_1D62A755C(v280, &v281);
      if (v3)
      {
LABEL_196:

        goto LABEL_201;
      }
    }

    else
    {
      v115 = *(v65 + 24);
      v288 = *(v65 + 16);
      v116 = a2[5];
      v285 = a2[4];
      v286 = v116;
      v287 = a2[6];
      v117 = a2[1];
      v281 = *a2;
      v282 = v117;
      v118 = a2[3];
      v283 = a2[2];
      v284 = v118;
      sub_1D5ECF0E0(v8);

      swift_retain_n();

      sub_1D62A755C(v280, &v281);
      if (v3)
      {
        goto LABEL_196;
      }
    }

    v288 = v115;
    v151 = a2[5];
    v285 = a2[4];
    v286 = v151;
    v287 = a2[6];
    v152 = a2[1];
    v281 = *a2;
    v282 = v152;
    v153 = a2[3];
    v283 = a2[2];
    v284 = v153;

    sub_1D62A755C(v280, &v281);

    goto LABEL_170;
  }

  if (v66 != 2)
  {
    if (v66 != 3)
    {
      v67 = v65 & 0x1FFFFFFFFFFFFFFFLL;
      v276 = *(v67 + 24);
      v288 = *(v67 + 16);
      v68 = a2[5];
      v285 = a2[4];
      v286 = v68;
      v287 = a2[6];
      v69 = a2[1];
      v281 = *a2;
      v282 = v69;
      v70 = a2[3];
      v283 = a2[2];
      v284 = v70;
      sub_1D5ECF0E0(v8);

      swift_retain_n();

      sub_1D5CF9A24(v280, &v281);
      if (v3)
      {
        goto LABEL_196;
      }

      v288 = v276;
      v71 = a2[5];
      v285 = a2[4];
      v286 = v71;
      v287 = a2[6];
      v72 = a2[1];
      v281 = *a2;
      v282 = v72;
      v73 = a2[3];
      v283 = a2[2];
      v284 = v73;

      sub_1D62A755C(v280, &v281);

      goto LABEL_170;
    }

LABEL_25:
    sub_1D5ECF0E0(v8);

    v16 = v278;
    goto LABEL_14;
  }

  v288 = *((v65 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v138 = a2[5];
  v285 = a2[4];
  v286 = v138;
  v287 = a2[6];
  v139 = a2[1];
  v281 = *a2;
  v282 = v139;
  v140 = a2[3];
  v283 = a2[2];
  v284 = v140;

  sub_1D5ECF0E0(v8);

  sub_1D62A755C(v280, &v281);
  if (!v3)
  {

LABEL_166:

    goto LABEL_167;
  }

LABEL_200:

LABEL_201:

LABEL_202:

  return sub_1D5ECF11C(v8);
}

uint64_t sub_1D6E6636C(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v31 = result;
  v6 = *(a3 + 16);
  if (!v6)
  {
    return result;
  }

  v7 = a5;
  for (i = (a3 + 48); ; i += 3)
  {
    v9 = *i;
    if (*i < 0)
    {
      break;
    }

LABEL_5:
    if (!--v6)
    {
      return result;
    }
  }

  v11 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v10 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v11 & 0x8000000000000000) == 0)
  {

LABEL_4:

    v7(v31, a2, v10);

    swift_bridgeObjectRelease_n();

    if (v5)
    {
      return result;
    }

    goto LABEL_5;
  }

  v12 = *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v13 = *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v12 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

LABEL_32:

    v7(v31, a2, v13);
    if (v5)
    {

      swift_bridgeObjectRelease_n();
    }

    swift_bridgeObjectRelease_n();

    v7 = a5;
    goto LABEL_4;
  }

  v29 = *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v14 = *((v12 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v15 = *((v12 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v14 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

    swift_retain_n();

LABEL_30:

    v7(v31, a2, v15);
    if (v5)
    {

      swift_bridgeObjectRelease_n();
    }

    swift_bridgeObjectRelease_n();

    v13 = v29;
    v7 = a5;
    goto LABEL_32;
  }

  v16 = *((v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v28 = *((v12 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = *((v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

LABEL_28:

    v7(v31, a2, v17);
    if (v5)
    {

      swift_bridgeObjectRelease_n();
    }

    swift_bridgeObjectRelease_n();

    v7 = a5;
    v15 = v28;
    goto LABEL_30;
  }

  v24 = *((v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v18 = *((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v26 = *((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v18 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();
    v17 = v24;

LABEL_26:

    v7(v31, a2, v26);
    if (v5)
    {

      swift_bridgeObjectRelease_n();
    }

    swift_bridgeObjectRelease_n();

    v5 = 0;
    goto LABEL_28;
  }

  v19 = *((v18 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v23 = *((v18 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v19 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();
    v17 = v24;

    swift_retain_n();

LABEL_24:

    v7(v31, a2, v23);
    if (v5)
    {

      swift_bridgeObjectRelease_n();
    }

    swift_bridgeObjectRelease_n();

    v5 = 0;
    goto LABEL_26;
  }

  v20 = *((v19 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v21 = *((v19 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v20 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

LABEL_22:

    v7(v31, a2, v21);
    if (v5)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_43;
    }

    swift_bridgeObjectRelease_n();

    v5 = 0;
    v17 = v24;
    goto LABEL_24;
  }

  v25 = *((v20 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v22 = *((v20 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  a4(v31, a2, v25, v22);
  if (!v5)
  {

    v5 = 0;
    goto LABEL_22;
  }

LABEL_43:
}

uint64_t sub_1D6E66D84(uint64_t result, __int128 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return result;
  }

  v6 = result;
  for (i = a3 + 32; ; i += 136)
  {
    v8 = *(i + 80);
    v9 = *(i + 112);
    v94 = *(i + 96);
    v95 = v9;
    v10 = *(i + 16);
    v11 = *(i + 48);
    v90 = *(i + 32);
    v91 = v11;
    v12 = *(i + 48);
    v13 = *(i + 80);
    v92 = *(i + 64);
    v93 = v13;
    v14 = *(i + 16);
    v88 = *i;
    v89 = v14;
    v15 = *(i + 112);
    v97[6] = v94;
    v97[7] = v15;
    v97[2] = v90;
    v97[3] = v12;
    v97[4] = v92;
    v97[5] = v8;
    v96 = *(i + 128);
    v98 = *(i + 128);
    v97[0] = v88;
    v97[1] = v10;
    v16 = sub_1D5F78DC4(v97);
    if (v16)
    {
      break;
    }

    v28 = sub_1D5DEA32C(v97);
    sub_1D5F78F40(v28, &v62);
    v74 = v66;
    v75 = v67;
    v76 = v68;
    v77 = v69;
    v70 = v62;
    v71 = v63;
    v72 = v64;
    v73 = v65;
    if (sub_1D6011280(&v70) == 1)
    {
      v29 = *(sub_1D5D756C8(&v70) + 112);
      v87 = v96;
      v85 = v94;
      v86 = v95;
      v81 = v90;
      v82 = v91;
      v83 = v92;
      v84 = v93;
      v79 = v88;
      v80 = v89;
      v30 = sub_1D5DEA32C(&v79);
      sub_1D5F78EE4(v30, &v54);
      sub_1D5CF8C68(v6, a2, v29);
    }

    else
    {
      v40 = sub_1D5D756C8(&v70);
      v41 = *v40;
      v42 = v40[6];
      v79 = v88;
      v80 = v89;
      v85 = v94;
      v86 = v95;
      v87 = v96;
      v81 = v90;
      v82 = v91;
      v83 = v92;
      v84 = v93;
      v43 = sub_1D5DEA32C(&v79);
      sub_1D5F78EE4(v43, &v54);
      sub_1D5CF8C68(v6, a2, v41);
      if (v3)
      {
        return sub_1D5ECEFDC(&v88);
      }

      if (!v42)
      {
        goto LABEL_24;
      }

      v44 = a2[5];
      v58 = a2[4];
      v59 = v44;
      v60 = a2[6];
      v45 = a2[1];
      v54 = *a2;
      v55 = v45;
      v46 = a2[3];
      v56 = a2[2];
      v57 = v46;
      nullsub_1(v6);
      sub_1D5D615EC(v42);
    }

    result = sub_1D5ECEFDC(&v88);
    if (v3)
    {
      return result;
    }

LABEL_4:
    if (!--v4)
    {
      return result;
    }
  }

  if (v16 != 1)
  {
    result = sub_1D5DEA32C(v97);
    goto LABEL_4;
  }

  v17 = sub_1D5DEA32C(v97);
  v79 = *v17;
  v18 = *(v17 + 64);
  v20 = *(v17 + 16);
  v19 = *(v17 + 32);
  v82 = *(v17 + 48);
  v83 = v18;
  v80 = v20;
  v81 = v19;
  v22 = *(v17 + 96);
  v21 = *(v17 + 112);
  v23 = *(v17 + 80);
  v87 = *(v17 + 128);
  v85 = v22;
  v86 = v21;
  v84 = v23;
  if (sub_1D6011234(&v79) == 1)
  {
    sub_1D5D756B8(&v79);
    v24 = a2[5];
    v58 = a2[4];
    v59 = v24;
    v60 = a2[6];
    v25 = a2[1];
    v54 = *a2;
    v55 = v25;
    v26 = a2[3];
    v56 = a2[2];
    v57 = v26;
    v72 = v90;
    v73 = v91;
    v70 = v88;
    v71 = v89;
    v78 = v96;
    v76 = v94;
    v77 = v95;
    v74 = v92;
    v75 = v93;
    v27 = sub_1D5DEA32C(&v70);
    sub_1D5ECEF80(&v88, &v62);
    sub_1D5F78E88(v27, &v62);
    sub_1D5CF9A24(v6, &v54);
    if (v3)
    {
      sub_1D5ECEFDC(&v88);
    }

    sub_1D5ECEFDC(&v88);

    goto LABEL_4;
  }

  v31 = sub_1D5D756B8(&v79);
  v32 = v31[3];
  v34 = *v31;
  v33 = v31[1];
  v56 = v31[2];
  v57 = v32;
  v54 = v34;
  v55 = v33;
  v35 = v31[7];
  v37 = v31[4];
  v36 = v31[5];
  v60 = v31[6];
  v61 = v35;
  v58 = v37;
  v59 = v36;
  if (sub_1D6011280(&v54) == 1)
  {
    v38 = *(sub_1D5D756C8(&v54) + 112);
    v78 = v96;
    v76 = v94;
    v77 = v95;
    v72 = v90;
    v73 = v91;
    v74 = v92;
    v75 = v93;
    v70 = v88;
    v71 = v89;
    v39 = sub_1D5DEA32C(&v70);
    sub_1D5ECEF80(&v88, &v62);
    sub_1D5F78E88(v39, &v62);
    sub_1D5CF8C68(v6, a2, v38);
    if (v3)
    {
      goto LABEL_26;
    }

LABEL_23:
    sub_1D5ECEFDC(&v88);
    goto LABEL_24;
  }

  v47 = sub_1D5D756C8(&v54);
  v48 = *v47;
  v49 = v47[6];
  v70 = v88;
  v71 = v89;
  v76 = v94;
  v77 = v95;
  v78 = v96;
  v72 = v90;
  v73 = v91;
  v74 = v92;
  v75 = v93;
  v50 = sub_1D5DEA32C(&v70);
  sub_1D5ECEF80(&v88, &v62);
  sub_1D5F78E88(v50, &v62);
  sub_1D5CF8C68(v6, a2, v48);
  if (!v3)
  {
    if (!v49)
    {
      goto LABEL_23;
    }

    v51 = a2[5];
    v66 = a2[4];
    v67 = v51;
    v68 = a2[6];
    v52 = a2[1];
    v62 = *a2;
    v63 = v52;
    v53 = a2[3];
    v64 = a2[2];
    v65 = v53;
    nullsub_1(v6);
    sub_1D5D615EC(v49);
    sub_1D5ECEFDC(&v88);

LABEL_24:
    result = sub_1D5ECEFDC(&v88);
    goto LABEL_4;
  }

LABEL_26:
  sub_1D5ECEFDC(&v88);
  return sub_1D5ECEFDC(&v88);
}