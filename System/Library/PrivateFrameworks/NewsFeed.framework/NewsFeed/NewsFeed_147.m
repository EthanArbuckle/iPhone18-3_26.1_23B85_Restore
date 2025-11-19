void sub_1D68C3754()
{
  if (!qword_1EC88DA30)
  {
    sub_1D68C37D4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC88DA30);
    }
  }
}

unint64_t sub_1D68C37D4()
{
  result = qword_1EC88DA38;
  if (!qword_1EC88DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DA38);
  }

  return result;
}

void sub_1D68C3828()
{
  if (!qword_1EC88DA40)
  {
    sub_1D7260FCC();
    sub_1D68C38BC(&qword_1EC88DA48, MEMORY[0x1E697C0D0]);
    v0 = sub_1D726141C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88DA40);
    }
  }
}

uint64_t sub_1D68C38BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D68C3904()
{
  if (!qword_1EC88DA50)
  {
    sub_1D726105C();
    sub_1D68C38BC(&qword_1EC88DA58, MEMORY[0x1E697C230]);
    v0 = sub_1D726141C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88DA50);
    }
  }
}

void sub_1D68C3A34()
{
  if (!qword_1EC88DA78)
  {
    sub_1D68C3360(255, &qword_1EC8803D8, type metadata accessor for DebugFormatEditorWorkspaceGroup, MEMORY[0x1E69E62F8]);
    sub_1D68C357C(255, &qword_1EC88DA80, sub_1D68C3754, sub_1D5F260A0);
    sub_1D68C5B48(&qword_1EC88DA88, &qword_1EC8803D8, type metadata accessor for DebugFormatEditorWorkspaceGroup);
    v0 = sub_1D72619FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88DA78);
    }
  }
}

void sub_1D68C3B60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D68C3360(255, &qword_1EC88D9E8, sub_1D68C33C4, MEMORY[0x1E6981F40]);
    v7 = v6;
    sub_1D68C5D9C(255, &qword_1EC87E098, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D68C3C24()
{
  result = qword_1EC88DAA0;
  if (!qword_1EC88DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DAA0);
  }

  return result;
}

uint64_t sub_1D68C3C84()
{
  v0 = sub_1D72611CC();
  v6 = 1;
  sub_1D68C3E4C(&v14);
  v9 = v16;
  v10 = v17;
  v11 = v18;
  v12 = v19;
  v7 = v14;
  v8 = v15;
  v13[2] = v16;
  v13[3] = v17;
  v13[4] = v18;
  v13[5] = v19;
  v13[0] = v14;
  v13[1] = v15;
  v1 = MEMORY[0x1E6981F40];
  sub_1D68C5AD4(&v7, &v3, &qword_1EC88DB28, sub_1D68C5CCC, MEMORY[0x1E6981F40], sub_1D68C3360);
  sub_1D68C5DEC(v13, &qword_1EC88DB28, sub_1D68C5CCC, v1);
  *&v5[39] = v9;
  *&v5[55] = v10;
  *&v5[71] = v11;
  *&v5[87] = v12;
  *&v5[7] = v7;
  *&v5[23] = v8;
  *&v4[49] = *&v5[48];
  *&v4[65] = *&v5[64];
  *&v4[81] = *&v5[80];
  *&v4[1] = *v5;
  *&v4[17] = *&v5[16];
  v3 = v0;
  v4[0] = v6;
  *&v4[96] = *(&v12 + 1);
  *&v4[33] = *&v5[32];
  v4[104] = 0;
  sub_1D7260EDC();
  sub_1D68C5E48();
  sub_1D68C606C();
  sub_1D72617DC();
  v18 = *&v4[48];
  v19 = *&v4[64];
  v20[0] = *&v4[80];
  *(v20 + 9) = *&v4[89];
  v14 = v3;
  v15 = *v4;
  v16 = *&v4[16];
  v17 = *&v4[32];
  return sub_1D68C61AC(&v14, sub_1D68C5E48);
}

uint64_t sub_1D68C3E4C@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E6980E30];
  v3 = MEMORY[0x1E69E6720];
  sub_1D68C3360(0, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v29 - v6;
  v29 = sub_1D726125C();
  sub_1D726121C();
  v8 = sub_1D726170C();
  v10 = v9;
  v12 = v11;
  sub_1D726165C();
  v13 = sub_1D726163C();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_1D726167C();
  sub_1D68C5DEC(v7, &qword_1EC881178, v2, v3);
  v14 = sub_1D72616DC();
  v16 = v15;
  LOBYTE(v2) = v17;

  sub_1D5F26348(v8, v10, v12 & 1);

  sub_1D726188C();
  v18 = sub_1D72616BC();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_1D5F26348(v14, v16, v2 & 1);

  v25 = sub_1D72618CC();
  v26 = sub_1D726188C();
  KeyPath = swift_getKeyPath();
  v32 = 1;
  v31 = v22 & 1;
  v30 = 1;
  *a1 = v29;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = v20;
  *(a1 + 40) = v22 & 1;
  *(a1 + 48) = v24;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = v25;
  *(a1 + 80) = KeyPath;
  *(a1 + 88) = v26;
  sub_1D5F26358(v18, v20, v22 & 1);

  sub_1D5F26348(v18, v20, v22 & 1);
}

unint64_t sub_1D68C4124()
{
  result = qword_1EC88DAA8;
  if (!qword_1EC88DAA8)
  {
    sub_1D68C3360(255, &qword_1EC88D9E8, sub_1D68C33C4, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DAA8);
  }

  return result;
}

unint64_t sub_1D68C41AC()
{
  result = qword_1EC88DAB0;
  if (!qword_1EC88DAB0)
  {
    sub_1D68C5D9C(255, &qword_1EC87E098, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DAB0);
  }

  return result;
}

uint64_t sub_1D68C4240(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1D5F26348(result, a2, a3 & 1);
  }

  return result;
}

void sub_1D68C4284()
{
  if (!qword_1EC88DAB8)
  {
    sub_1D68C6004(255, &qword_1EC88DA98, sub_1D68C3C24, &type metadata for DebugFormatInventoryTreeWorkspaceHeaderView, MEMORY[0x1E697D670]);
    sub_1D68C3B60(255, &qword_1EC88DA90, MEMORY[0x1E697F960]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88DAB8);
    }
  }
}

uint64_t sub_1D68C4348(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D68C5D9C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D68C43C4()
{
  result = qword_1EC88DAC0;
  if (!qword_1EC88DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DAC0);
  }

  return result;
}

unint64_t sub_1D68C44C0()
{
  result = qword_1EC88DAC8;
  if (!qword_1EC88DAC8)
  {
    sub_1D68C357C(255, &qword_1EC88DA80, sub_1D68C3754, sub_1D5F260A0);
    sub_1D68C37D4();
    swift_getOpaqueTypeConformance2();
    sub_1D68C38BC(&qword_1EC8811A8, sub_1D5F260A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DAC8);
  }

  return result;
}

uint64_t sub_1D68C45DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D68C46A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D68C4754()
{
  v0 = sub_1D7258C9C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v63 = v35;
  v64 = v36;
  v65 = v37;
  v66 = v38;
  v59 = v31;
  v60 = v32;
  v61 = v33;
  v62 = v34;
  v55 = v27;
  v56 = v28;
  v57 = v29;
  v58 = v30;
  v53 = v25;
  v54 = v26;
  result = sub_1D5DEA380(&v53);
  if (result != 1)
  {
    v49 = v63;
    v50 = v64;
    v51 = v65;
    v52 = v66;
    v45 = v59;
    v46 = v60;
    v47 = v61;
    v48 = v62;
    v41 = v55;
    v42 = v56;
    v43 = v57;
    v44 = v58;
    v39 = v53;
    v40 = v54;
    sub_1D7258C7C();
    sub_1D68C38BC(&qword_1EC88DAF0, MEMORY[0x1E6969B50]);
    v6 = sub_1D7261FBC();
    (*(v1 + 8))(v4, v0);
    if ((v6 & 1) == 0)
    {
      sub_1D68C3360(0, &qword_1EC8857D0, type metadata accessor for DebugFormatPackageInventory, MEMORY[0x1E69E62F8]);
      sub_1D68C5B48(&qword_1EC88DAF8, &qword_1EC8857D0, type metadata accessor for DebugFormatPackageInventory);
      sub_1D7261F8C();
      sub_1D68C5D9C(0, &qword_1EC886038, &type metadata for FormatWorkspacePackage, MEMORY[0x1E69E62F8]);
      sub_1D68C5BA0(&qword_1EC88DB08);
      sub_1D7261F8C();
      v9[10] = v49;
      v9[11] = v50;
      v9[12] = v51;
      v9[6] = v45;
      v9[7] = v46;
      v9[8] = v47;
      v9[9] = v48;
      v9[2] = v41;
      v9[3] = v42;
      v9[4] = v43;
      v9[5] = v44;
      v9[0] = v39;
      v9[1] = v40;
      v21 = v49;
      v22 = v50;
      v23 = v51;
      v17 = v45;
      v18 = v46;
      v19 = v47;
      v20 = v48;
      v13 = v41;
      v14 = v42;
      v15 = v43;
      v16 = v44;
      v10 = v52;
      v24 = v52;
      v11 = v39;
      v12 = v40;
      nullsub_1();
      v35 = v21;
      v36 = v22;
      v37 = v23;
      v38 = v24;
      v31 = v17;
      v32 = v18;
      v33 = v19;
      v34 = v20;
      v27 = v13;
      v28 = v14;
      v29 = v15;
      v30 = v16;
      v25 = v11;
      v26 = v12;
      sub_1D5F2B0D8(v9, &v8);
      sub_1D6AA103C(&v25);
      v35 = v21;
      v36 = v22;
      v37 = v23;
      v38 = v24;
      v31 = v17;
      v32 = v18;
      v33 = v19;
      v34 = v20;
      v27 = v13;
      v28 = v14;
      v29 = v15;
      v30 = v16;
      v25 = v11;
      v26 = v12;

      sub_1D725B32C();

      sub_1D6AA1610();
    }

    v35 = v49;
    v36 = v50;
    v37 = v51;
    v38 = v52;
    v31 = v45;
    v32 = v46;
    v33 = v47;
    v34 = v48;
    v27 = v41;
    v28 = v42;
    v29 = v43;
    v30 = v44;
    v25 = v39;
    v26 = v40;
    return sub_1D5F2B134(&v25);
  }

  return result;
}

uint64_t sub_1D68C4BF8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v70 = v42;
  v71 = v43;
  v72 = v44;
  v66 = v38;
  v67 = v39;
  v68 = v40;
  v69 = v41;
  v62 = v34;
  v63 = v35;
  v64 = v36;
  v65 = v37;
  v60 = v32;
  v73 = v45;
  v61 = v33;
  result = sub_1D5DEA380(&v60);
  if (result != 1)
  {
    v56 = v70;
    v57 = v71;
    v58 = v72;
    v59 = v73;
    v52 = v66;
    v53 = v67;
    v54 = v68;
    v55 = v69;
    v48 = v62;
    v49 = v63;
    v50 = v64;
    v51 = v65;
    v46 = v60;
    v47 = v61;
    sub_1D68C3360(0, &qword_1EC8857D0, type metadata accessor for DebugFormatPackageInventory, MEMORY[0x1E69E62F8]);
    sub_1D68C5B48(&qword_1EC88DAF8, &qword_1EC8857D0, type metadata accessor for DebugFormatPackageInventory);
    sub_1D68C5B48(&qword_1EC88DB00, &qword_1EC8857D0, type metadata accessor for DebugFormatPackageInventory);
    sub_1D7262D3C();
    sub_1D68C5D9C(0, &qword_1EC886038, &type metadata for FormatWorkspacePackage, MEMORY[0x1E69E62F8]);
    sub_1D68C5BA0(&qword_1EC88DB08);
    sub_1D68C5BA0(&qword_1EC88DB10);
    sub_1D7262D3C();
    v2[10] = v56;
    v2[11] = v57;
    v2[12] = v58;
    v2[6] = v52;
    v2[7] = v53;
    v2[8] = v54;
    v2[9] = v55;
    v2[2] = v48;
    v2[3] = v49;
    v2[4] = v50;
    v2[5] = v51;
    v2[0] = v46;
    v2[1] = v47;
    v14 = v56;
    v15 = v57;
    v16 = v58;
    v10 = v52;
    v11 = v53;
    v12 = v54;
    v13 = v55;
    v6 = v48;
    v7 = v49;
    v8 = v50;
    v9 = v51;
    v3 = v59;
    v17 = v59;
    v4 = v46;
    v5 = v47;
    nullsub_1();
    v28 = v56;
    v29 = v57;
    v30 = v58;
    v31 = v59;
    v24 = v52;
    v25 = v53;
    v26 = v54;
    v27 = v55;
    v20 = v48;
    v21 = v49;
    v22 = v50;
    v23 = v51;
    v18 = v46;
    v19 = v47;
    sub_1D5F2B0D8(v2, v1);
    sub_1D6AA103C(&v18);
    v28 = v14;
    v29 = v15;
    v30 = v16;
    v31 = v17;
    v24 = v10;
    v25 = v11;
    v26 = v12;
    v27 = v13;
    v20 = v6;
    v21 = v7;
    v22 = v8;
    v23 = v9;
    v18 = v4;
    v19 = v5;

    sub_1D725B32C();

    sub_1D6AA1610();
    v28 = v56;
    v29 = v57;
    v30 = v58;
    v31 = v59;
    v24 = v52;
    v25 = v53;
    v26 = v54;
    v27 = v55;
    v20 = v48;
    v21 = v49;
    v22 = v50;
    v23 = v51;
    v18 = v46;
    v19 = v47;
    return sub_1D5F2B134(&v18);
  }

  return result;
}

uint64_t sub_1D68C506C()
{
  v0 = sub_1D7258C9C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v64 = v36;
  v65 = v37;
  v66 = v38;
  v67 = v39;
  v60 = v32;
  v61 = v33;
  v62 = v34;
  v63 = v35;
  v56 = v28;
  v57 = v29;
  v58 = v30;
  v59 = v31;
  v54 = v26;
  v55 = v27;
  result = sub_1D5DEA380(&v54);
  if (result != 1)
  {
    v50 = v64;
    v51 = v65;
    v52 = v66;
    v53 = v67;
    v46 = v60;
    v47 = v61;
    v48 = v62;
    v49 = v63;
    v42 = v56;
    v43 = v57;
    v44 = v58;
    v45 = v59;
    v40 = v54;
    v41 = v55;
    sub_1D7258C7C();
    sub_1D68C38BC(&qword_1EC88DAF0, MEMORY[0x1E6969B50]);
    v6 = sub_1D7261FBC();
    (*(v1 + 8))(v4, v0);
    if ((v6 & 1) == 0)
    {
      v7 = MEMORY[0x1E69E62F8];
      sub_1D68C3360(0, &qword_1EC8803D8, type metadata accessor for DebugFormatEditorWorkspaceGroup, MEMORY[0x1E69E62F8]);
      sub_1D68C5B48(&qword_1EC88DAD0, &qword_1EC8803D8, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      sub_1D7261F8C();
      sub_1D68C3360(0, &qword_1EC885FA0, type metadata accessor for FormatWorkspaceGroup, v7);
      sub_1D68C5B48(&qword_1EC88DAE0, &qword_1EC885FA0, type metadata accessor for FormatWorkspaceGroup);
      sub_1D7261F8C();
      v10[10] = v50;
      v10[11] = v51;
      v10[12] = v52;
      v10[6] = v46;
      v10[7] = v47;
      v10[8] = v48;
      v10[9] = v49;
      v10[2] = v42;
      v10[3] = v43;
      v10[4] = v44;
      v10[5] = v45;
      v10[0] = v40;
      v10[1] = v41;
      v22 = v50;
      v23 = v51;
      v24 = v52;
      v18 = v46;
      v19 = v47;
      v20 = v48;
      v21 = v49;
      v14 = v42;
      v15 = v43;
      v16 = v44;
      v17 = v45;
      v11 = v53;
      v25 = v53;
      v12 = v40;
      v13 = v41;
      nullsub_1();
      v36 = v22;
      v37 = v23;
      v38 = v24;
      v39 = v25;
      v32 = v18;
      v33 = v19;
      v34 = v20;
      v35 = v21;
      v28 = v14;
      v29 = v15;
      v30 = v16;
      v31 = v17;
      v26 = v12;
      v27 = v13;
      sub_1D5F2B0D8(v10, &v9);
      sub_1D6AA103C(&v26);
      v36 = v22;
      v37 = v23;
      v38 = v24;
      v39 = v25;
      v32 = v18;
      v33 = v19;
      v34 = v20;
      v35 = v21;
      v28 = v14;
      v29 = v15;
      v30 = v16;
      v31 = v17;
      v26 = v12;
      v27 = v13;

      sub_1D725B32C();

      sub_1D6AA1610();
    }

    v36 = v50;
    v37 = v51;
    v38 = v52;
    v39 = v53;
    v32 = v46;
    v33 = v47;
    v34 = v48;
    v35 = v49;
    v28 = v42;
    v29 = v43;
    v30 = v44;
    v31 = v45;
    v26 = v40;
    v27 = v41;
    return sub_1D5F2B134(&v26);
  }

  return result;
}

uint64_t sub_1D68C5524()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v71 = v43;
  v72 = v44;
  v73 = v45;
  v67 = v39;
  v68 = v40;
  v69 = v41;
  v70 = v42;
  v63 = v35;
  v64 = v36;
  v65 = v37;
  v66 = v38;
  v61 = v33;
  v74 = v46;
  v62 = v34;
  result = sub_1D5DEA380(&v61);
  if (result != 1)
  {
    v57 = v71;
    v58 = v72;
    v59 = v73;
    v60 = v74;
    v53 = v67;
    v54 = v68;
    v55 = v69;
    v56 = v70;
    v49 = v63;
    v50 = v64;
    v51 = v65;
    v52 = v66;
    v47 = v61;
    v48 = v62;
    v1 = MEMORY[0x1E69E62F8];
    sub_1D68C3360(0, &qword_1EC8803D8, type metadata accessor for DebugFormatEditorWorkspaceGroup, MEMORY[0x1E69E62F8]);
    sub_1D68C5B48(&qword_1EC88DAD0, &qword_1EC8803D8, type metadata accessor for DebugFormatEditorWorkspaceGroup);
    sub_1D68C5B48(&qword_1EC88DAD8, &qword_1EC8803D8, type metadata accessor for DebugFormatEditorWorkspaceGroup);
    sub_1D7262D3C();
    sub_1D68C3360(0, &qword_1EC885FA0, type metadata accessor for FormatWorkspaceGroup, v1);
    sub_1D68C5B48(&qword_1EC88DAE0, &qword_1EC885FA0, type metadata accessor for FormatWorkspaceGroup);
    sub_1D68C5B48(&qword_1EC88DAE8, &qword_1EC885FA0, type metadata accessor for FormatWorkspaceGroup);
    sub_1D7262D3C();
    v3[10] = v57;
    v3[11] = v58;
    v3[12] = v59;
    v3[6] = v53;
    v3[7] = v54;
    v3[8] = v55;
    v3[9] = v56;
    v3[2] = v49;
    v3[3] = v50;
    v3[4] = v51;
    v3[5] = v52;
    v3[0] = v47;
    v3[1] = v48;
    v15 = v57;
    v16 = v58;
    v17 = v59;
    v11 = v53;
    v12 = v54;
    v13 = v55;
    v14 = v56;
    v7 = v49;
    v8 = v50;
    v9 = v51;
    v10 = v52;
    v4 = v60;
    v18 = v60;
    v5 = v47;
    v6 = v48;
    nullsub_1();
    v29 = v57;
    v30 = v58;
    v31 = v59;
    v32 = v60;
    v25 = v53;
    v26 = v54;
    v27 = v55;
    v28 = v56;
    v21 = v49;
    v22 = v50;
    v23 = v51;
    v24 = v52;
    v19 = v47;
    v20 = v48;
    sub_1D5F2B0D8(v3, v2);
    sub_1D6AA103C(&v19);
    v29 = v15;
    v30 = v16;
    v31 = v17;
    v32 = v18;
    v25 = v11;
    v26 = v12;
    v27 = v13;
    v28 = v14;
    v21 = v7;
    v22 = v8;
    v23 = v9;
    v24 = v10;
    v19 = v5;
    v20 = v6;

    sub_1D725B32C();

    sub_1D6AA1610();
    v29 = v57;
    v30 = v58;
    v31 = v59;
    v32 = v60;
    v25 = v53;
    v26 = v54;
    v27 = v55;
    v28 = v56;
    v21 = v49;
    v22 = v50;
    v23 = v51;
    v24 = v52;
    v19 = v47;
    v20 = v48;
    return sub_1D5F2B134(&v19);
  }

  return result;
}

uint64_t sub_1D68C59B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D68C5A18()
{
  v1 = *(type metadata accessor for DebugFormatEditorWorkspaceGroup() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = (v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));

  return sub_1D68C2FAC(v2, v3, v4, v5, v6);
}

uint64_t sub_1D68C5AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D68C5B48(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D68C3360(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D68C5BA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D68C5D9C(255, &qword_1EC886038, &type metadata for FormatWorkspacePackage, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D68C5C28()
{
  result = qword_1EC88DB18;
  if (!qword_1EC88DB18)
  {
    sub_1D68C3360(255, &qword_1EC88DB20, sub_1D68C4284, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DB18);
  }

  return result;
}

void sub_1D68C5CCC()
{
  if (!qword_1EC88DB30)
  {
    sub_1D68C5D44();
    sub_1D5F257F0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC88DB30);
    }
  }
}

void sub_1D68C5D44()
{
  if (!qword_1EC88DB38)
  {
    v0 = sub_1D726198C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88DB38);
    }
  }
}

void sub_1D68C5D9C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D68C5DEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1D68C3360(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D68C5E48()
{
  if (!qword_1EC88DB40)
  {
    sub_1D68C5EE8();
    sub_1D68C6004(255, &qword_1EC89AE80, sub_1D5F25AA0, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v0 = sub_1D726101C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88DB40);
    }
  }
}

void sub_1D68C5EE8()
{
  if (!qword_1EC88DB48)
  {
    sub_1D68C3360(255, &qword_1EC88DB28, sub_1D68C5CCC, MEMORY[0x1E6981F40]);
    sub_1D68C5F7C();
    v0 = sub_1D726197C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88DB48);
    }
  }
}

unint64_t sub_1D68C5F7C()
{
  result = qword_1EC88DB50;
  if (!qword_1EC88DB50)
  {
    sub_1D68C3360(255, &qword_1EC88DB28, sub_1D68C5CCC, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DB50);
  }

  return result;
}

void sub_1D68C6004(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D68C606C()
{
  result = qword_1EC88DB58;
  if (!qword_1EC88DB58)
  {
    sub_1D68C5E48();
    sub_1D68C38BC(&qword_1EC88DB60, sub_1D68C5EE8);
    sub_1D68C611C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DB58);
  }

  return result;
}

unint64_t sub_1D68C611C()
{
  result = qword_1EC881138;
  if (!qword_1EC881138)
  {
    sub_1D68C6004(255, &qword_1EC89AE80, sub_1D5F25AA0, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881138);
  }

  return result;
}

uint64_t sub_1D68C61AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static FormatCommandAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t FormatCommandAction.deinit()
{

  return v0;
}

uint64_t FormatCommandAction.__deallocating_deinit()
{
  FormatCommandAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t FormatGroupBindExpression.init(identifier:kinds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t FormatGroupBindExpression.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatGroupBindExpression.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FormatGroupBindExpression.kinds.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void sub_1D68C64CC(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];

  v88 = sub_1D6E8DD40(v4, v3);
  v89 = v6;

  v7 = (v5 + 56);
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 56);
  v11 = (a1 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext);

  swift_beginAccess();
  v12 = 0;
  v13 = (v8 + 63) >> 6;
  while (1)
  {
    if (!v10)
    {
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
          goto LABEL_40;
        }

        v10 = v7[v14];
        ++v12;
        if (v10)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_61;
    }

    v14 = v12;
LABEL_10:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = *(*(v5 + 48) + (v15 | (v14 << 6)));
    v17 = v11[8];
    if (v16 <= 2)
    {
      if (!v16)
      {
        if (!*(v17 + 16))
        {
          goto LABEL_50;
        }

        v18 = sub_1D5B69D90(0x756F724764656546, 0xEC00000067615470);
        if (v22)
        {
          goto LABEL_4;
        }

LABEL_50:
        v92 = 0;
        v90 = 0u;
        v91 = 0u;
        sub_1D68C74D0(&v90);
        type metadata accessor for FormatLayoutError();
        sub_1D5D285FC();
        v85 = swift_allocError();
        v56 = v55;
        v57 = v11[8];
        v58 = *(v57 + 16);
        if (v58)
        {
          v59 = sub_1D5B9A6D8(v58, 0);
          v60 = sub_1D5E2A8BC(&v90, v59 + 4, v58, v57);

          sub_1D5B87E38();
          if (v60 != v58)
          {
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

          v61 = v89;
          v63 = v85;
          v62 = v88;
        }

        else
        {
          v59 = MEMORY[0x1E69E7CC0];
          v61 = v89;
          v63 = v85;
          v62 = v88;
        }

        strcpy(v56, "FeedGroupTag");
        *(v56 + 13) = 0;
        *(v56 + 14) = -5120;
        *(v56 + 16) = v59;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v90 = xmmword_1D7302AE0;
        v91 = 0uLL;
        LOBYTE(v92) = 2;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v93 = *(a1 + 56);
        *(a1 + 56) = 0x8000000000000000;
        sub_1D6D77438(&v90, v62, v61, isUniquelyReferenced_nonNull_native);

        *(a1 + 56) = v93;
        swift_endAccess();
        sub_1D725BC1C();

        v78 = v63;
LABEL_77:

        return;
      }

      if (v16 == 1)
      {
        if (!*(v17 + 16))
        {
          goto LABEL_57;
        }

        v18 = sub_1D5B69D90(0x7461655764656546, 0xEB00000000726568);
        if ((v20 & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (!*(v17 + 16))
        {
          goto LABEL_47;
        }

        v18 = sub_1D5B69D90(0x7779615064656546, 0xEB000000006C6C61);
        if ((v23 & 1) == 0)
        {

LABEL_47:
          v92 = 0;
          v90 = 0u;
          v91 = 0u;
          sub_1D68C74D0(&v90);
          type metadata accessor for FormatLayoutError();
          sub_1D5D285FC();
          v48 = swift_allocError();
          v50 = v49;
          v51 = v11[8];
          v52 = *(v51 + 16);
          v84 = v48;
          if (v52)
          {
            v53 = sub_1D5B9A6D8(v52, 0);
            v54 = sub_1D5E2A8BC(&v90, v53 + 4, v52, v51);

            sub_1D5B87E38();
            if (v54 != v52)
            {
LABEL_81:
              __break(1u);
              goto LABEL_82;
            }

            v40 = v89;
            v41 = v88;
          }

          else
          {
            v53 = MEMORY[0x1E69E7CC0];
            v40 = v89;
            v41 = v88;
          }

          *v50 = 0x7779615064656546;
          v50[1] = 0xEB000000006C6C61;
          v50[2] = v53;
          swift_storeEnumTagMultiPayload();
          v26 = v84;
          swift_willThrow();
          v76 = xmmword_1D7302AC0;
          goto LABEL_75;
        }
      }

      goto LABEL_4;
    }

    if (v16 > 4)
    {
      break;
    }

    if (v16 != 3)
    {
      if (!*(v17 + 16))
      {
        goto LABEL_41;
      }

      v18 = sub_1D5B69D90(0x7573734964656546, 0xE900000000000065);
      if (v24)
      {
        goto LABEL_4;
      }

LABEL_41:
      v92 = 0;
      v90 = 0u;
      v91 = 0u;
      sub_1D68C74D0(&v90);
      type metadata accessor for FormatLayoutError();
      sub_1D5D285FC();
      v34 = swift_allocError();
      v7 = v35;
      v36 = v11[8];
      v37 = *(v36 + 16);
      v82 = v34;
      if (v37)
      {
        v38 = sub_1D5B9A6D8(v37, 0);
        v39 = sub_1D5E2A8BC(&v90, v38 + 4, v37, v36);

        sub_1D5B87E38();
        if (v39 != v37)
        {
          __break(1u);
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        v40 = v89;
        v41 = v88;
LABEL_62:
        *v7 = 0x7573734964656546;
        v7[1] = 0xE900000000000065;
        v7[2] = v38;
        swift_storeEnumTagMultiPayload();
        v26 = v82;
        swift_willThrow();
        v76 = xmmword_1D7302AA0;
LABEL_75:
        v90 = v76;
        v91 = 0uLL;
        LOBYTE(v92) = 2;
        swift_beginAccess();
        v81 = swift_isUniquelyReferenced_nonNull_native();
        v93 = *(a1 + 56);
        *(a1 + 56) = 0x8000000000000000;
        sub_1D6D77438(&v90, v41, v40, v81);

        *(a1 + 56) = v93;
        swift_endAccess();
        goto LABEL_76;
      }

LABEL_61:
      v38 = MEMORY[0x1E69E7CC0];
      v40 = v89;
      v41 = v88;
      goto LABEL_62;
    }

    if (!*(v17 + 16))
    {
      goto LABEL_44;
    }

    v18 = sub_1D5B69D90(0x6461654864656546, 0xEC000000656E696CLL);
    if ((v19 & 1) == 0)
    {

LABEL_44:
      v92 = 0;
      v90 = 0u;
      v91 = 0u;
      sub_1D68C74D0(&v90);
      type metadata accessor for FormatLayoutError();
      sub_1D5D285FC();
      v83 = swift_allocError();
      v43 = v42;
      v44 = v11[8];
      v45 = *(v44 + 16);
      if (!v45)
      {
        v46 = MEMORY[0x1E69E7CC0];
        v40 = v89;
        v41 = v88;
        goto LABEL_64;
      }

      v46 = sub_1D5B9A6D8(v45, 0);
      v47 = sub_1D5E2A8BC(&v90, v46 + 4, v45, v44);

      sub_1D5B87E38();
      if (v47 == v45)
      {
        v40 = v89;
        v41 = v88;
LABEL_64:
        strcpy(v43, "FeedHeadline");
        *(v43 + 13) = 0;
        *(v43 + 14) = -5120;
        *(v43 + 16) = v46;
        swift_storeEnumTagMultiPayload();
        v26 = v83;
        swift_willThrow();
        v76 = xmmword_1D7302AB0;
        goto LABEL_75;
      }

      goto LABEL_80;
    }

LABEL_4:
    sub_1D5B68374(*(v17 + 56) + 40 * v18, &v90);

    sub_1D68C74D0(&v90);
    v12 = v14;
  }

  if (v16 == 5)
  {
    if (!*(v17 + 16))
    {
      goto LABEL_53;
    }

    v18 = sub_1D5B69D90(0x4562655764656546, 0xEC0000006465626DLL);
    if (v21)
    {
      goto LABEL_4;
    }

LABEL_53:
    v92 = 0;
    v90 = 0u;
    v91 = 0u;
    sub_1D68C74D0(&v90);
    type metadata accessor for FormatLayoutError();
    sub_1D5D285FC();
    v64 = swift_allocError();
    v66 = v65;
    v67 = v11[8];
    v68 = *(v67 + 16);
    if (v68)
    {
      v11 = sub_1D5B9A6D8(*(v67 + 16), 0);
      v86 = sub_1D5E2A8BC(&v90, v11 + 4, v68, v67);

      sub_1D5B87E38();
      if (v86 != v68)
      {
        __break(1u);
LABEL_56:

LABEL_57:
        v92 = 0;
        v90 = 0u;
        v91 = 0u;
        sub_1D68C74D0(&v90);
        type metadata accessor for FormatLayoutError();
        sub_1D5D285FC();
        v69 = swift_allocError();
        v71 = v70;
        v72 = v11[8];
        v73 = *(v72 + 16);
        v87 = v69;
        if (v73)
        {
          v74 = sub_1D5B9A6D8(v73, 0);
          v75 = sub_1D5E2A8BC(&v90, v74 + 4, v73, v72);

          sub_1D5B87E38();
          if (v75 != v73)
          {
LABEL_83:
            __break(1u);
            return;
          }

          v40 = v89;
          v41 = v88;
        }

        else
        {
          v74 = MEMORY[0x1E69E7CC0];
          v40 = v89;
          v41 = v88;
        }

        *v71 = 0x7461655764656546;
        v71[1] = 0xEB00000000726568;
        v71[2] = v74;
        swift_storeEnumTagMultiPayload();
        v26 = v87;
        swift_willThrow();
        v76 = xmmword_1D7302AD0;
        goto LABEL_75;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    strcpy(v66, "FeedWebEmbed");
    *(v66 + 13) = 0;
    *(v66 + 14) = -5120;
    *(v66 + 16) = v11;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v90 = xmmword_1D7302A90;
    v91 = 0uLL;
    LOBYTE(v92) = 2;
    swift_beginAccess();
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v93 = *(a1 + 56);
    *(a1 + 56) = 0x8000000000000000;
    sub_1D6D77438(&v90, v88, v89, v80);

    *(a1 + 56) = v93;
    swift_endAccess();
    sub_1D725BC1C();

    v78 = v64;
    goto LABEL_77;
  }

  if (!*(v17 + 16))
  {
    goto LABEL_37;
  }

  v18 = sub_1D5B69D90(0x6373654464656546, 0xEE00726F74706972);
  if (v25)
  {
    goto LABEL_4;
  }

LABEL_37:
  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  sub_1D68C74D0(&v90);
  type metadata accessor for FormatLayoutError();
  sub_1D5D285FC();
  v26 = swift_allocError();
  v28 = v27;
  v29 = v11[8];
  v30 = *(v29 + 16);
  if (!v30)
  {
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_70;
  }

  v31 = sub_1D5B9A6D8(*(v29 + 16), 0);
  v32 = sub_1D5E2A8BC(&v90, v31 + 4, v30, v29);

  sub_1D5B87E38();
  if (v32 == v30)
  {
LABEL_70:
    strcpy(v28, "FeedDescriptor");
    *(v28 + 15) = -18;
    *(v28 + 16) = v31;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v90 = xmmword_1D7302A80;
    v91 = 0uLL;
    LOBYTE(v92) = 2;
    swift_beginAccess();
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v93 = *(a1 + 56);
    *(a1 + 56) = 0x8000000000000000;
    sub_1D6D77438(&v90, v88, v89, v79);

    *(a1 + 56) = v93;
    swift_endAccess();
LABEL_76:
    sub_1D725BC1C();

    v78 = v26;
    goto LABEL_77;
  }

  __break(1u);
LABEL_40:

  v90 = 0u;
  v91 = 0u;
  LOBYTE(v92) = -1;
  swift_beginAccess();
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *(a1 + 56);
  *(a1 + 56) = 0x8000000000000000;
  sub_1D6D77438(&v90, v88, v89, v33);

  *(a1 + 56) = v93;
  swift_endAccess();
  sub_1D725BC1C();
}

uint64_t sub_1D68C7210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D6E8DD40(a2, a3);
  v6 = *(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32);
  if (*(v6 + 16))
  {
    v7 = sub_1D5B69D90(v4, v5);
    v9 = v8;

    if ((v9 & 1) != 0 && *(*(v6 + 56) + 40 * v7 + 32) == 255)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t static FormatGroupBindExpression.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D5E21434(v2, v3);
}

unint64_t sub_1D68C732C(uint64_t a1)
{
  result = sub_1D68C7354();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D68C7354()
{
  result = qword_1EC88DB68;
  if (!qword_1EC88DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DB68);
  }

  return result;
}

unint64_t sub_1D68C73A8(void *a1)
{
  a1[1] = sub_1D5C9B0CC();
  a1[2] = sub_1D66FED10();
  result = sub_1D68C73E0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D68C73E0()
{
  result = qword_1EC88DB70;
  if (!qword_1EC88DB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DB70);
  }

  return result;
}

uint64_t sub_1D68C744C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D5E21434(v2, v3);
}

uint64_t sub_1D68C74D0(uint64_t a1)
{
  sub_1D68C752C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D68C752C()
{
  if (!qword_1EDF38BD0[0])
  {
    sub_1D5B7EFE8();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF38BD0);
    }
  }
}

uint64_t sub_1D68C7584()
{
  v1 = sub_1D72585BC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v13 - v8;
  v10 = [objc_opt_self() sportsDataVisualizationBaseURLForConfiguration_];
  swift_unknownObjectRelease();
  if (v10)
  {
    sub_1D72584EC();

    (*(v2 + 32))(v9, v5, v1);
    sub_1D725849C();
    return (*(v2 + 8))(v9, v1);
  }

  else
  {
    sub_1D5F82C30();
    swift_allocError();
    *v12 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1D68C7760(void *a1)
{
  v3 = v1;
  sub_1D68CA970(0, &qword_1EC88DC40, sub_1D68CA91C, &type metadata for A12_V6.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D68CA91C();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D68CA9D8(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D68C79A8(uint64_t a1)
{
  v2 = sub_1D68CA91C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D68C79E4(uint64_t a1)
{
  v2 = sub_1D68CA91C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D68C7A20@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D68CA67C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D68C7A80()
{
  sub_1D68CA328();

  return sub_1D725A24C();
}

uint64_t sub_1D68C7AFC@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D68CA970(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D68C7BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v83 = a2;
  v71 = a3;
  v7 = type metadata accessor for FeedHeadline(0);
  v80 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v91 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v84 = &v71 - v12;
  v13 = sub_1D725895C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for GroupLayoutContext();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v18);
  v81 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v71 - v22;
  v75 = &v71 - v22;
  v85 = type metadata accessor for GroupLayoutBindingContext();
  v76 = *(v85 - 1);
  MEMORY[0x1EEE9AC00](v85, v24);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v5;
  v28 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  v82 = a1;
  sub_1D5BE3ED8(a1, v26, type metadata accessor for GroupLayoutBindingContext);
  v77 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v83, v23, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v74 = sub_1D725893C();
  v73 = v29;
  (*(v14 + 8))(v17, v13);
  v89 = &type metadata for A12_V6;
  v30 = sub_1D5ECEA18();
  v90 = v30;
  LOBYTE(v87) = v27;
  LOBYTE(v23) = v27;
  *(&v87 + 1) = v28;
  v88 = v5;
  type metadata accessor for GroupLayoutKey();
  v31 = swift_allocObject();
  sub_1D5BEE8A0(v28, v5);
  v86[0] = sub_1D7264C5C();
  v86[1] = v32;
  v86[9] = 95;
  v86[10] = 0xE100000000000000;
  v86[7] = 45;
  v86[8] = 0xE100000000000000;
  sub_1D5BF4D9C();
  v33 = sub_1D7263A6C();
  v35 = v34;

  *(v31 + 16) = v33;
  *(v31 + 24) = v35;
  v36 = (v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v37 = v73;
  *v36 = v74;
  v36[1] = v37;
  sub_1D5B68374(&v87, v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v38 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v26, v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v76 + 56))(v31 + v38, 0, 1, v85);
  v39 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v75, v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v78 + 56))(v31 + v39, 0, 1, v79);
  __swift_destroy_boxed_opaque_existential_1(&v87);
  v89 = &type metadata for A12_V6;
  v90 = v30;
  v40 = v81;
  LOBYTE(v87) = v23;
  *(&v87 + 1) = v28;
  v88 = v5;
  sub_1D5BE3ED8(v83, v81, v77);
  sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  inited = swift_initStackObject();
  v42 = MEMORY[0x1E69E7CC0];
  v83 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v43 = inited + 16;
  swift_beginAccess();
  sub_1D5BEE8A0(v28, v5);
  v44 = sub_1D5C0F8FC(0, 1, 1, v42);
  v46 = v44[2];
  v45 = v44[3];
  v47 = v46 + 1;
  if (v46 >= v45 >> 1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v44[2] = v47;
    v48 = &v44[2 * v46];
    v48[4] = sub_1D63106DC;
    v48[5] = 0;
    *v43 = v44;
    swift_endAccess();
    if (!*(*&v82[v85[14]] + 16) || (sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v49 & 1) == 0) || (v50 = , v47 = sub_1D5C14D80(v50), , !v47))
    {
      if (!qword_1F5113930)
      {

        v60 = MEMORY[0x1E69E7CC0];
        goto LABEL_29;
      }

      v86[0] = &unk_1F5113910;
      v4 = v72;
      sub_1D5E239F4(v86);
      if (v4)
      {
        goto LABEL_38;
      }

      v56 = v86[0];
      if (*(v86[0] + 2))
      {
LABEL_19:
        v57 = *(v56 + 4);

        sub_1D5ED8048();
        swift_allocError();
        strcpy(v58, "FeedHeadline");
        v58[13] = 0;
        *(v58 + 7) = -5120;
        *(v58 + 2) = 0;
        *(v58 + 3) = 0;
        *(v58 + 4) = 4;
        *(v58 + 5) = v57;
        *(v58 + 6) = 0;
        *(v58 + 7) = 0;
        v58[64] = 0;
        swift_willThrow();
        swift_setDeallocating();

        sub_1D5BE780C(v40, type metadata accessor for GroupLayoutContext);
        return __swift_destroy_boxed_opaque_existential_1(&v87);
      }

      __break(1u);
      goto LABEL_36;
    }

    v79 = v31;
    v40 = *(v47 + 16);
    if (!v40)
    {
      break;
    }

    v51 = 0;
    v52 = MEMORY[0x1E69E7CC0];
    v43 = v80;
    v44 = v84;
    while (1)
    {
      v45 = *(v47 + 16);
      if (v51 >= v45)
      {
        break;
      }

      v53 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v46 = *(v43 + 72);
      sub_1D5BE3ED8(v47 + v53 + v46 * v51, v44, type metadata accessor for FeedHeadline);
      if ((v44[4] & 4) != 0)
      {
        sub_1D5BDA904(v44, v91, type metadata accessor for FeedHeadline);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v86[0] = v52;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5C0F91C(0, *(v52 + 2) + 1, 1);
          v43 = v80;
          v52 = v86[0];
        }

        v31 = *(v52 + 2);
        v55 = *(v52 + 3);
        if (v31 >= v55 >> 1)
        {
          sub_1D5C0F91C(v55 > 1, v31 + 1, 1);
          v43 = v80;
          v52 = v86[0];
        }

        *(v52 + 2) = v31 + 1;
        sub_1D5BDA904(v91, &v52[v53 + v31 * v46], type metadata accessor for FeedHeadline);
        v44 = v84;
      }

      else
      {
        sub_1D5BE780C(v44, type metadata accessor for FeedHeadline);
      }

      if (v40 == ++v51)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_34:
    v44 = sub_1D5C0F8FC((v45 > 1), v47, 1, v44);
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v61 = v82;
  if ((*v82 & 1) == 0)
  {

    v62 = sub_1D62F071C(v52);

    v52 = v62;
  }

  v63 = *&v61[v85[18]];
  v64 = *&v61[v85[19]];
  if (__OFSUB__(v63, v64))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v65 = sub_1D5C0FAD4(v52, v63 - v64);
  v60 = sub_1D5C11E10(&unk_1F5113910, v65, v47);

  if (v60)
  {

    goto LABEL_28;
  }

  v60 = sub_1D5C11E10(&unk_1F5113910, v52, v47);

  if (!v60)
  {
    v86[0] = &unk_1F5113910;
    v4 = v72;
    sub_1D5E239F4(v86);
    if (v4)
    {
LABEL_38:

      __break(1u);
      return result;
    }

    v56 = v86[0];
    v40 = v81;
    if (*(v86[0] + 2))
    {
      goto LABEL_19;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_28:
  strcpy(v86, "FeedHeadline");
  BYTE5(v86[1]) = 0;
  HIWORD(v86[1]) = -5120;
  v86[2] = 0;
  v86[3] = 0;

  v67 = sub_1D5C107C4(v66);

  sub_1D5BDACA8(v86, v67);
  swift_setDeallocating();

  v40 = v81;
  v31 = v79;
LABEL_29:
  v68 = type metadata accessor for A12_V6.Bound();
  v69 = v71;
  v71[3] = v68;
  v69[4] = sub_1D68CA9D8(&qword_1EC88DBA0, type metadata accessor for A12_V6.Bound);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v69);
  *boxed_opaque_existential_1 = v31;
  sub_1D5B63F14(&v87, (boxed_opaque_existential_1 + 1));
  result = sub_1D5BDA904(v40, boxed_opaque_existential_1 + *(v68 + 24), type metadata accessor for GroupLayoutContext);
  *(boxed_opaque_existential_1 + *(v68 + 28)) = v60;
  return result;
}

uint64_t sub_1D68C870C@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_1D725A36C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for A12_V6.Bound();
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext();
  v11 = *(*(v9 + *(v10 + 40)) + 16);
  v12 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v11 + 16, v36);
  sub_1D5B68374(v11 + 56, v35);
  v13 = v12 * *(v11 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(v36, inited + 16);
  sub_1D5B63F14(v35, inited + 56);
  *(inited + 96) = v13;
  v34[0] = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v34, v38);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(inited + 16);
  __swift_destroy_boxed_opaque_existential_1(inited + 56);
  v15 = *(v2 + *(v8 + 28));
  v33[2] = v2;
  v33[3] = v38;
  v16 = sub_1D5ECA650(sub_1D68CA2AC, v33, v15);
  v17 = *MEMORY[0x1E69D7130];
  v18 = sub_1D7259D1C();
  (*(*(v18 - 8) + 104))(v7, v17, v18);
  (*(v4 + 104))(v7, *MEMORY[0x1E69D7370], v3);
  v32 = v16;
  sub_1D68CA3D0(0, &qword_1EC88DBC0, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v30 = sub_1D725A4CC();
  sub_1D725A4DC();
  v19 = v37;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D5B49714(0, &qword_1EDF1B268);
  sub_1D5BD48FC();
  v20 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268);
  v28 = v36[1];
  v29 = v36[0];
  *&v36[0] = v16;
  *&v35[0] = v19;
  MEMORY[0x1EEE9AC00](v20, v21);

  v22 = sub_1D725C00C();

  v23 = v31;
  *v31 = 0;
  v24 = v29;
  *(v23 + 24) = v28;
  *(v23 + 8) = v24;
  *&v36[0] = v22;
  sub_1D5B49714(0, &qword_1EDF1B4C8);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8);
  sub_1D5BDEFF8();
  v25 = sub_1D72623BC();

  v26 = MEMORY[0x1E69E7CC0];
  *(v23 + 5) = v25;
  *(v23 + 6) = v26;
  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t sub_1D68C8B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D68C8C50(uint64_t a1, uint64_t a2)
{
  sub_1D68CA970(0, &qword_1EC88DBD8, sub_1D68CA2D4, &type metadata for A12_V6.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13[-v8];
  v15 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 12;
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D7490], v5);
  v14 = a2;
  v11 = MEMORY[0x1E69D7150];
  sub_1D68CA3D0(0, &qword_1EC88DBE0, MEMORY[0x1E69D7150]);
  sub_1D68CA38C(&qword_1EC88DBE8, &qword_1EC88DBE0, v11);
  sub_1D7259A2C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D68C8E3C(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v23 = sub_1D68CA2D4;
  sub_1D68CA970(0, &qword_1EC88DBD8, sub_1D68CA2D4, &type metadata for A12_V6.Layout, MEMORY[0x1E69D74B0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (v22 - v7);
  v26 = a1;
  v9 = sub_1D725994C();
  v10 = swift_allocBox();
  (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69D6F50], v9);
  *v8 = v10;
  v12 = *(v5 + 104);
  v12(v8, *MEMORY[0x1E69D73C0], v4);
  v13 = MEMORY[0x1E69D6F38];
  sub_1D68CA3D0(0, &qword_1EC88DBF0, MEMORY[0x1E69D6F38]);
  v22[1] = v14;
  sub_1D68CA38C(&qword_1EC88DBF8, &qword_1EC88DBF0, v13);
  sub_1D7259A9C();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v26 = a1;
  v12(v8, *MEMORY[0x1E69D74A8], v4);
  sub_1D68CA454();
  sub_1D68CA970(0, &qword_1EC88DC08, v23, &type metadata for A12_V6.Layout, MEMORY[0x1E69D70D8]);
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7273AE0;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x1E69D7098], v17);
  v25 = v24;
  sub_1D72599EC();

  return (v15)(v8, v4);
}

uint64_t sub_1D68C91A8(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  sub_1D68CA970(0, &qword_1EC88DBD8, sub_1D68CA2D4, &type metadata for A12_V6.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v17 - v8);
  v21 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 6;
  *v9 = v10;
  v11 = *MEMORY[0x1E69D7490];
  v12 = *(v6 + 104);
  v12(v9, v11, v5);
  v20 = a2;
  v13 = MEMORY[0x1E69D6F38];
  sub_1D68CA3D0(0, &qword_1EC88DBF0, MEMORY[0x1E69D6F38]);
  sub_1D68CA38C(&qword_1EC88DBF8, &qword_1EC88DBF0, v13);
  sub_1D7259A2C();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v21 = v18;
  v15 = swift_allocObject();
  *(v15 + 16) = 6;
  *v9 = v15;
  v12(v9, v11, v5);
  v19 = v17;
  sub_1D7259A2C();
  return (v14)(v9, v5);
}

uint64_t sub_1D68C944C(uint64_t a1, uint64_t a2)
{
  KeyPath = a1;
  v3 = sub_1D725A36C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725A19C();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadlineViewLayout.Context(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68CA970(0, &qword_1EC88DBD8, sub_1D68CA2D4, &type metadata for A12_V6.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v39 - v23;
  v46 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D7460], v20);
  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  v39 = v6;
  v40 = v20;
  sub_1D5BE3ED8(a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v18, type metadata accessor for HeadlineViewLayout.Context);
  v25 = v10[5];
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v13[v25], v26, v27);
  (*(v28 + 56))(&v13[v25], 0, 1, v27);
  v29 = MEMORY[0x1E69DDC70];
  *v13 = 0;
  *&v13[v10[6]] = 5;
  v30 = *v29;
  *&v13[v10[7]] = v30;
  v31 = qword_1EDF386E8;
  v32 = v30;
  if (v31 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  *(&v39 - 4) = v18;
  *(&v39 - 3) = v13;
  v38 = v9;
  (*(v41 + 104))(v43, *MEMORY[0x1E69D7378], v42, v35);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v44 + 8))(v9, v39);
  sub_1D5BE780C(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D68CA3D0(0, &qword_1EC88DBF0, MEMORY[0x1E69D6F38]);
  sub_1D68CA38C(&qword_1EC88DBF8, &qword_1EC88DBF0, v36);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

uint64_t sub_1D68C9A20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68CA970(0, &qword_1EC88DBD8, sub_1D68CA2D4, &type metadata for A12_V6.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v48 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v41 = KeyPath;
  v42 = v21;
  sub_1D5BE3ED8(a2 + *(v16 + 72) + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 0;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v41 - 4) = v19;
  *(&v41 - 3) = v14;
  v40 = v10;
  (*(v43 + 104))(v45, *MEMORY[0x1E69D7378], v44, v37);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v46 + 8))(v10, v47);
  sub_1D5BE780C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D68CA3D0(0, &qword_1EC88DBF0, MEMORY[0x1E69D6F38]);
  sub_1D68CA38C(&qword_1EC88DBF8, &qword_1EC88DBF0, v38);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D68C9FF4@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28();
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A12_V6.Bound() + 24);
  result = type metadata accessor for GroupLayoutContext();
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D68CA108(uint64_t a1)
{
  *(a1 + 8) = sub_1D68CA138();
  result = sub_1D68CA18C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D68CA138()
{
  result = qword_1EC88DB90;
  if (!qword_1EC88DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DB90);
  }

  return result;
}

unint64_t sub_1D68CA18C()
{
  result = qword_1EC88DB98;
  if (!qword_1EC88DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DB98);
  }

  return result;
}

uint64_t type metadata accessor for A12_V6.Bound()
{
  result = qword_1EC88DBA8;
  if (!qword_1EC88DBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D68CA254(uint64_t a1)
{
  result = sub_1D68CA9D8(&qword_1EC88DBB8, type metadata accessor for A12_V6.Bound);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D68CA2D4()
{
  result = qword_1EC88DBC8;
  if (!qword_1EC88DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DBC8);
  }

  return result;
}

unint64_t sub_1D68CA328()
{
  result = qword_1EC88DBD0;
  if (!qword_1EC88DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DBD0);
  }

  return result;
}

uint64_t sub_1D68CA38C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D68CA3D0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D68CA3D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V6.Layout;
    v8[1] = &type metadata for A12_V6.Layout.Attributes;
    v8[2] = sub_1D68CA2D4();
    v8[3] = sub_1D68CA328();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D68CA454()
{
  if (!qword_1EC88DC00)
  {
    sub_1D68CA970(255, &qword_1EC88DC08, sub_1D68CA2D4, &type metadata for A12_V6.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88DC00);
    }
  }
}

unint64_t sub_1D68CA520()
{
  result = qword_1EC88DC10;
  if (!qword_1EC88DC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DC10);
  }

  return result;
}

unint64_t sub_1D68CA578()
{
  result = qword_1EC88DC18;
  if (!qword_1EC88DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DC18);
  }

  return result;
}

unint64_t sub_1D68CA5D0()
{
  result = qword_1EC88DC20;
  if (!qword_1EC88DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DC20);
  }

  return result;
}

unint64_t sub_1D68CA628()
{
  result = qword_1EC88DC28;
  if (!qword_1EC88DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DC28);
  }

  return result;
}

uint64_t sub_1D68CA67C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D68CA970(0, &qword_1EC88DC30, sub_1D68CA91C, &type metadata for A12_V6.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D68CA91C();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D68CA9D8(&qword_1EDF1A740, type metadata accessor for CGRect);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D68CA91C()
{
  result = qword_1EC88DC38;
  if (!qword_1EC88DC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DC38);
  }

  return result;
}

void sub_1D68CA970(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D68CA9D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D68CAA34()
{
  result = qword_1EC88DC48;
  if (!qword_1EC88DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DC48);
  }

  return result;
}

unint64_t sub_1D68CAA8C()
{
  result = qword_1EC88DC50;
  if (!qword_1EC88DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DC50);
  }

  return result;
}

unint64_t sub_1D68CAAE4()
{
  result = qword_1EC88DC58;
  if (!qword_1EC88DC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DC58);
  }

  return result;
}

uint64_t FeedChannelHeadlinesCluster.headlines.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    v4 = v1 + 32;
    do
    {
      v4 += 16;
      swift_unknownObjectRetain();
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t FeedChannelHeadlinesCluster.init(tag:scoredHeadlines:clusteringRules:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t FeedChannelHeadlinesCluster.replacing(headlines:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[2];
  *a2 = v4;
  a2[1] = a1;
  a2[2] = v5;
  swift_unknownObjectRetain();
  v6 = v5;
}

uint64_t sub_1D68CAC60(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1D69993D8(0, v1, 0);
  v2 = v24;
  v4 = a1 + 64;
  result = sub_1D7263B7C();
  v6 = result;
  v7 = 0;
  v23 = *(a1 + 36);
  v21 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v22 = *(*(a1 + 48) + v6);
    v10 = *(*(a1 + 56) + 8 * v6);
    v11 = *(v24 + 16);
    v12 = *(v24 + 24);

    if (v11 >= v12 >> 1)
    {
      result = sub_1D69993D8((v12 > 1), v11 + 1, 1);
    }

    *(v24 + 16) = v11 + 1;
    v13 = v24 + 16 * v11;
    *(v13 + 32) = v22;
    *(v13 + 40) = v10;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v14 = *(a1 + 64 + 8 * v9);
    if ((v14 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v15 = v14 & (-2 << (v6 & 0x3F));
    if (v15)
    {
      v8 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v9 << 6;
      v17 = v9 + 1;
      v18 = (a1 + 72 + 8 * v9);
      while (v17 < (v8 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_1D5C25E1C(v6, v23, 0);
          v8 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_1D5C25E1C(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v21)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t FormatOption.init(identifier:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v5 = *a3;
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = v5;
  *(a4 + 3) = 1;
  v6 = *(type metadata accessor for FormatOption() + 28);
  v7 = type metadata accessor for FormatVersionRequirement(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a4[v6], 1, 1, v7);
}

uint64_t FormatOption.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D68CAFC4(uint64_t a1)
{
  v86 = type metadata accessor for FormatOption();
  v82 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v2);
  v99 = (&v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4, v5);
  v98 = (&v80 - v6);
  v103 = type metadata accessor for FormatInspectionItem(0);
  v7 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103, v8);
  v97 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v80 - v12;
  sub_1D5B558C4(0, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6720]);
  v101 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = (&v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v19);
  v88 = &v80 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v96 = &v80 - v23;
  v107 = a1;
  sub_1D5B558C4(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
  sub_1D68CC118();
  sub_1D5E2A690();
  v24 = sub_1D72623DC();
  sub_1D68CAC60(v24);

  sub_1D68CC1A0();
  v25 = sub_1D72626EC();

  v26 = *(v25 + 16);
  if (!v26)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v109 = MEMORY[0x1E69E7CC0];
  result = sub_1D69993A8(0, v26, 0);
  v28 = 0;
  v29 = v109;
  v83 = v25 + 32;
  v94 = (v7 + 48);
  v95 = (v7 + 56);
  v30 = v88;
  v85 = v25;
  v81 = v7;
  v80 = v13;
  v84 = v26;
  while (v28 < *(v25 + 16))
  {
    v31 = (v83 + 16 * v28);
    v32 = *v31;
    v33 = *(v31 + 1);
    v90 = v29;
    v91 = v28;
    if (v32 > 5)
    {
      if (v32 > 8)
      {
        if (v32 == 9)
        {
          v34 = 0xE500000000000000;
          v35 = 0x6F65646976;
        }

        else if (v32 == 10)
        {
          v34 = 0xE400000000000000;
          v35 = 1953394534;
        }

        else
        {
          v35 = 0x616C506F65646976;
          v34 = 0xEB00000000726579;
        }
      }

      else if (v32 == 6)
      {
        v34 = 0xE300000000000000;
        v35 = 7107189;
      }

      else
      {
        v34 = 0xE500000000000000;
        if (v32 == 7)
        {
          v35 = 0x726F6C6F63;
        }

        else
        {
          v35 = 0x6567616D69;
        }
      }
    }

    else if (v32 > 2)
    {
      if (v32 == 3)
      {
        v34 = 0xE500000000000000;
        v35 = 0x74616F6C66;
      }

      else if (v32 == 4)
      {
        v34 = 0xE700000000000000;
        v35 = 0x72656765746E69;
      }

      else
      {
        v34 = 0xE600000000000000;
        v35 = 0x676E69727473;
      }
    }

    else if (v32)
    {
      v34 = 0xE400000000000000;
      if (v32 == 1)
      {
        v35 = 1702125924;
      }

      else
      {
        v35 = 1836412517;
      }
    }

    else
    {
      v34 = 0xE700000000000000;
      v35 = 0x6E61656C6F6F62;
    }

    v93 = v33;
    if ((v34 & 0xF00000000000000) != 0)
    {
      v107 = sub_1D726233C();
      v108 = v36;
      sub_1D5BF4D9C();
      v104 = sub_1D7263A0C();
      v38 = v37;

      v39 = sub_1D5FD24A4(1uLL, v35, v34);
      v41 = v40;
      v43 = v42;
      v45 = v44;

      v46 = MEMORY[0x1DA6F97E0](v39, v41, v43, v45);
      v48 = v47;

      v105 = v104;
      v106 = v38;

      MEMORY[0x1DA6F9910](v46, v48);
      v30 = v88;

      v35 = v105;
      v34 = v106;
    }

    v89 = v35;
    v49 = sub_1D72626EC();
    v50 = *(v49 + 16);
    v92 = v34;
    if (v50)
    {
      v107 = MEMORY[0x1E69E7CC0];
      v104 = v50;
      sub_1D69972A4(0, v50, 0);
      v51 = v107;
      v52 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v87 = v49;
      v53 = v49 + v52;
      v100 = *(v82 + 72);
      do
      {
        v54 = v98;
        sub_1D5D2477C(v53, v98);
        v55 = v99;
        sub_1D5D2477C(v54, v99);
        v56 = v97;
        sub_1D68B1FA4(v55, v97);
        v57 = v54[1];
        v102 = *v54;

        sub_1D5D289E4(v54, type metadata accessor for FormatOption);
        v59 = *v56;
        v58 = *(v56 + 1);
        v60 = *(v56 + 2);
        v61 = *(v56 + 3);
        v62 = v103;
        sub_1D68CC23C(&v56[*(v103 + 24)], v17 + *(v103 + 24), &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value);

        sub_1D5D289E4(v56, type metadata accessor for FormatInspectionItem);
        *v17 = v59;
        v17[1] = v58;
        v17[2] = v60;
        v17[3] = v61;
        v63 = v17 + *(v62 + 28);
        *v63 = v102;
        *(v63 + 1) = v57;
        v63[16] = 0;
        (*v95)(v17, 0, 1, v62);
        v107 = v51;
        v65 = *(v51 + 16);
        v64 = *(v51 + 24);
        if (v65 >= v64 >> 1)
        {
          sub_1D69972A4(v64 > 1, v65 + 1, 1);
          v51 = v107;
        }

        *(v51 + 16) = v65 + 1;
        sub_1D5E4F52C(v17, v51 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v65);
        v53 += v100;
        --v104;
      }

      while (v104);

      v7 = v81;
      v13 = v80;
      v30 = v88;
      v34 = v92;
      v66 = *(v51 + 16);
      if (v66)
      {
LABEL_35:
        v67 = *(v101 + 80);
        v104 = v51;
        v68 = v51 + ((v67 + 32) & ~v67);
        v69 = *(v101 + 72);
        v70 = MEMORY[0x1E69E7CC0];
        do
        {
          v71 = v96;
          sub_1D68CC23C(v68, v96, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem);
          sub_1D5E4F52C(v71, v30);
          if ((*v94)(v30, 1, v103) == 1)
          {
            sub_1D68CC2BC(v30, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem);
          }

          else
          {
            sub_1D5D5E474(v30, v13, type metadata accessor for FormatInspectionItem);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v70 = sub_1D698BAE0(0, v70[2] + 1, 1, v70);
            }

            v73 = v70[2];
            v72 = v70[3];
            if (v73 >= v72 >> 1)
            {
              v70 = sub_1D698BAE0(v72 > 1, v73 + 1, 1, v70);
            }

            v70[2] = v73 + 1;
            sub_1D5D5E474(v13, v70 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v73, type metadata accessor for FormatInspectionItem);
          }

          v68 += v69;
          --v66;
        }

        while (v66);

        v34 = v92;
        goto LABEL_47;
      }
    }

    else
    {

      v51 = MEMORY[0x1E69E7CC0];
      v66 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v66)
      {
        goto LABEL_35;
      }
    }

    v70 = MEMORY[0x1E69E7CC0];
LABEL_47:
    v29 = v90;
    v74 = v91;
    v109 = v90;
    v76 = *(v90 + 16);
    v75 = *(v90 + 24);
    if (v76 >= v75 >> 1)
    {
      v78 = v91;
      result = sub_1D69993A8((v75 > 1), v76 + 1, 1);
      v74 = v78;
      v30 = v88;
      v29 = v109;
    }

    v28 = v74 + 1;
    *(v29 + 16) = v76 + 1;
    v77 = (v29 + 40 * v76);
    v77[4] = v89;
    v77[5] = v34;
    v77[6] = 0;
    v77[7] = 0;
    v77[8] = v70;
    v25 = v85;
    if (v28 == v84)
    {
      v79 = v29;

      return v79;
    }
  }

  __break(1u);
  return result;
}

_BYTE *sub_1D68CBAD4@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  if (v2 > 5)
  {
    v11 = 0xE500000000000000;
    v12 = 0x6F65646976;
    v13 = 0xE400000000000000;
    v14 = 1953394534;
    if (v2 != 10)
    {
      v14 = 0x616C506F65646976;
      v13 = 0xEB00000000726579;
    }

    if (v2 != 9)
    {
      v12 = v14;
      v11 = v13;
    }

    v15 = 0xE300000000000000;
    v16 = 7107189;
    v17 = 0x726F6C6F63;
    if (v2 != 7)
    {
      v17 = 0x6567616D69;
    }

    if (v2 != 6)
    {
      v16 = v17;
      v15 = 0xE500000000000000;
    }

    if (*result <= 8u)
    {
      v18 = v16;
    }

    else
    {
      v18 = v12;
    }

    if (*result <= 8u)
    {
      v11 = v15;
    }

    *a2 = v18;
    a2[1] = v11;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E61656C6F6F62;
    v5 = 0xE500000000000000;
    v6 = 0x74616F6C66;
    v7 = 0xE700000000000000;
    v8 = 0x72656765746E69;
    if (v2 != 4)
    {
      v8 = 0x676E69727473;
      v7 = 0xE600000000000000;
    }

    if (v2 != 3)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = 1702125924;
    if (v2 != 1)
    {
      v9 = 1836412517;
    }

    if (*result)
    {
      v4 = v9;
      v3 = 0xE400000000000000;
    }

    if (*result <= 2u)
    {
      v10 = v4;
    }

    else
    {
      v10 = v6;
    }

    if (*result > 2u)
    {
      v3 = v5;
    }

    *a2 = v10;
    a2[1] = v3;
  }

  return result;
}

BOOL _s8NewsFeed12FormatOptionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B558C4(0, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v28 - v11;
  sub_1D5EA4248();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v18 = a1[2];
  v28 = a2[2];
  v29 = v18;

  LOBYTE(v18) = static FormatOptionValue.== infix(_:_:)(&v29, &v28);

  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v19 = a1[3];
  v20 = a2[3];
  if (v19 == 1)
  {
    if (v20 != 1)
    {
      return 0;
    }
  }

  else
  {
    if (v20 == 1)
    {
      return 0;
    }

    if (v19)
    {
      if (!v20)
      {
        return 0;
      }

      v25 = sub_1D5BFC390(v19, v20);
      sub_1D66A5FF8(v20);
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v20)
    {
      return 0;
    }
  }

  v21 = *(type metadata accessor for FormatOption() + 28);
  v22 = a1 + v21;
  v23 = *(v14 + 48);
  sub_1D68CC23C(v22, v17, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
  sub_1D68CC23C(a2 + v21, &v17[v23], &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
  v24 = *(v5 + 48);
  if (v24(v17, 1, v4) == 1)
  {
    if (v24(&v17[v23], 1, v4) == 1)
    {
      sub_1D68CC2BC(v17, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
      return 1;
    }

    goto LABEL_17;
  }

  sub_1D68CC23C(v17, v12, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
  if (v24(&v17[v23], 1, v4) == 1)
  {
    sub_1D5D289E4(v12, type metadata accessor for FormatVersionRequirement);
LABEL_17:
    sub_1D5D289E4(v17, sub_1D5EA4248);
    return 0;
  }

  sub_1D5D5E474(&v17[v23], v8, type metadata accessor for FormatVersionRequirement);
  v26 = sub_1D6024840(v12, v8);
  sub_1D5D289E4(v8, type metadata accessor for FormatVersionRequirement);
  sub_1D5D289E4(v12, type metadata accessor for FormatVersionRequirement);
  sub_1D68CC2BC(v17, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
  return (v26 & 1) != 0;
}

uint64_t sub_1D68CC048(uint64_t a1)
{
  result = sub_1D5CB6B48(&qword_1EC88DC60);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D68CC08C(void *a1)
{
  a1[1] = sub_1D5CB6B48(&unk_1EDF45930);
  a1[2] = sub_1D5CB6B48(&qword_1EDF45940);
  result = sub_1D5CB6B48(&qword_1EC88DC68);
  a1[3] = result;
  return result;
}

unint64_t sub_1D68CC118()
{
  result = qword_1EDF050A8;
  if (!qword_1EDF050A8)
  {
    sub_1D5B558C4(255, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF050A8);
  }

  return result;
}

void sub_1D68CC1A0()
{
  if (!qword_1EC88DC70)
  {
    sub_1D5B558C4(255, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88DC70);
    }
  }
}

uint64_t sub_1D68CC23C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B558C4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D68CC2BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B558C4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::Void __swiftcall FormatBlueprintViewCellProvider.register(in:)(UICollectionView *in)
{
  v3 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  (*(v3 + 56))(in, ObjectType, v3);
}

id FormatBlueprintViewCellProvider.cell(for:with:in:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  sub_1D5E2C2C8();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6, v10);
  sub_1D68CC5EC();
  sub_1D725DDEC();

  v11 = *(v4 + 40);
  ObjectType = swift_getObjectType();
  v24 = 0;
  v23 = v25[1];
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v13 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  (*(v8 + 32))(v14 + v13, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v15 = *(v11 + 72);

  v15(v25, v21, v22, &v24, &v23, sub_1D68CC70C, v14, ObjectType, v11);

  v16 = (v25[0] & 0xFFFFFFFFFFFFFFFLL);
  v17 = sub_1D5BE5B1C();

  return v17;
}

unint64_t sub_1D68CC594()
{
  result = qword_1EDF128E0;
  if (!qword_1EDF128E0)
  {
    type metadata accessor for FormatModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF128E0);
  }

  return result;
}

void sub_1D68CC5EC()
{
  if (!qword_1EDF170B0)
  {
    sub_1D5B53E88();
    v0 = sub_1D725DDFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF170B0);
    }
  }
}

uint64_t sub_1D68CC648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 24);
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(v6, a1, a3, ObjectType, v7);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D68CC70C(uint64_t a1)
{
  sub_1D5E2C2C8();
  v4 = *(v1 + 16);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80));

  return sub_1D68CC648(a1, v4, v5);
}

uint64_t FormatBlueprintViewCellProvider.deinit()
{
  sub_1D5B87E10(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t FormatBlueprintViewCellProvider.__deallocating_deinit()
{
  sub_1D5B87E10(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D68CC7E8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*v1 + 40);
  ObjectType = swift_getObjectType();
  return (*(v3 + 56))(v2, ObjectType, v3);
}

id sub_1D68CC840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = FormatBlueprintViewCellProvider.cell(for:with:in:at:)(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_1D68CC8C4(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v177 = a5;
  v202 = a3;
  v189 = a2;
  v190 = a1;
  v185 = *v5;
  v7 = MEMORY[0x1E69E6720];
  sub_1D68D0BC8(0, qword_1EDF403D0, type metadata accessor for GroupLayoutContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v194 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v199 = &v176 - v13;
  v198 = type metadata accessor for GroupLayoutContext();
  v181 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198, v14);
  v183 = &v176 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v187 = &v176 - v18;
  sub_1D68D0BC8(0, qword_1EDF3ECD8, type metadata accessor for GroupLayoutBindingContext, v7);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v188 = (&v176 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v192 = (&v176 - v24);
  v204 = type metadata accessor for GroupLayoutBindingContext();
  v180 = *(v204 - 1);
  MEMORY[0x1EEE9AC00](v204, v25);
  v203 = &v176 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v200 = &v176 - v29;
  v30 = sub_1D7261ACC();
  v184 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = (&v176 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D68D0BC8(0, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey, v7);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = (&v176 - v36);
  v38 = type metadata accessor for DebugGroupLayoutKey();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38, v41);
  v182 = (&v176 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v42, v43);
  v201 = &v176 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v178 = &v176 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v186 = (&v176 - v50);
  MEMORY[0x1EEE9AC00](v51, v52);
  v195 = (&v176 - v53);
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = &v176 - v56;
  MEMORY[0x1EEE9AC00](v58, v59);
  v61 = &v176 - v60;
  v191 = a4;
  sub_1D6AEA8E8(v37);
  v197 = v39;
  v62 = *(v39 + 48);
  v196 = v38;
  if (v62(v37, 1, v38) == 1)
  {
    return sub_1D68D6ECC(v37, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey, MEMORY[0x1E69E6720], sub_1D68D0BC8);
  }

  v179 = v61;
  sub_1D68D0D38(v37, v61, type metadata accessor for DebugGroupLayoutKey);
  sub_1D725F82C();
  if (qword_1EDF3B0C0 != -1)
  {
    goto LABEL_81;
  }

LABEL_4:
  v64 = sub_1D725F7FC();
  v65 = v199;
  v66 = v203;
  if (v64)
  {
    v204 = swift_allocBox();
    LOBYTE(v214) = 2;
    v67 = v179;
    sub_1D62EFCE4(0, &v214, v68);
    sub_1D5B5A498(0, &qword_1EDF1AA30);
    v69 = v184;
    (*(v184 + 104))(v33, *MEMORY[0x1E69E7F88], v30);
    v70 = sub_1D72630CC();
    (*(v69 + 8))(v33, v30);
    sub_1D5BE4010(v67, v57, type metadata accessor for DebugGroupLayoutKey);
    v71 = (*(v197 + 80) + 16) & ~*(v197 + 80);
    v72 = (v40 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    sub_1D68D0D38(v57, v73 + v71, type metadata accessor for DebugGroupLayoutKey);
    *(v73 + v72) = v204;

    v203 = sub_1D725BDAC();

    v74 = sub_1D726308C();
    sub_1D5BE4010(v67, v57, type metadata accessor for DebugGroupLayoutKey);
    sub_1D5B68374(v191 + 16, &v214);
    v75 = (v72 + 47) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    sub_1D68D0D38(v57, v76 + v71, type metadata accessor for DebugGroupLayoutKey);
    sub_1D5B63F14(&v214, v76 + v72);
    *(v76 + v75) = v204;
    v77 = (v76 + ((v75 + 15) & 0xFFFFFFFFFFFFFFF8));
    v78 = v189;
    *v77 = v190;
    v77[1] = v78;

    swift_unknownObjectRetain();
    sub_1D725BAAC();

    v79 = sub_1D725B92C();
    sub_1D725BACC();

    sub_1D68D6E6C(v67, type metadata accessor for DebugGroupLayoutKey);
  }

  if (qword_1EDF3B108 != -1)
  {
    swift_once();
  }

  v80 = sub_1D725F7FC();
  v33 = v198;
  if ((v80 & 1) == 0)
  {
    if (qword_1EDF3B140 != -1)
    {
      swift_once();
    }

    v111 = sub_1D725F7FC();
    v112 = v179;
    if (v111)
    {
      v113 = v191;
      v114 = sub_1D5B68374(v191 + 16, &v214);
      v30 = *(v113 + 8);
      MEMORY[0x1EEE9AC00](v114, v115);
      v175[2] = v113;

      v116 = sub_1D630BB9C(sub_1D68D0C2C, v175, v30);
      v117 = v116;
      if (v116 >> 62)
      {
        v118 = sub_1D7263BFC();
      }

      else
      {
        v118 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v57 = v194;
      v119 = v188;
      if (v118)
      {
        v120 = 0;
        v202 = v117 & 0xC000000000000001;
        v200 = v117 & 0xFFFFFFFFFFFFFF8;
        v199 = (v180 + 48);
        v192 = (v181 + 48);
        v195 = MEMORY[0x1E69E7CC0];
        v191 = v117;
        v187 = v118;
        do
        {
          if (v202)
          {
            v30 = MEMORY[0x1DA6FB460](v120, v117);
            v40 = v120 + 1;
            if (__OFADD__(v120, 1))
            {
              goto LABEL_79;
            }
          }

          else
          {
            if (v120 >= *(v200 + 16))
            {
              goto LABEL_80;
            }

            v30 = *(v117 + 8 * v120 + 32);

            v40 = v120 + 1;
            if (__OFADD__(v120, 1))
            {
              goto LABEL_79;
            }
          }

          sub_1D608489C(v30 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory, &v210);
          if (v211)
          {
            sub_1D5B63F14(&v210, &v212);
            sub_1D68D0CB8(v30 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, v119, qword_1EDF3ECD8, type metadata accessor for GroupLayoutBindingContext);
            if ((*v199)(v119, 1, v204) == 1)
            {

              __swift_destroy_boxed_opaque_existential_1(&v212);
              sub_1D68D6ECC(v119, qword_1EDF3ECD8, type metadata accessor for GroupLayoutBindingContext, MEMORY[0x1E69E6720], sub_1D68D0BC8);
            }

            else
            {
              sub_1D68D0D38(v119, v66, type metadata accessor for GroupLayoutBindingContext);
              sub_1D68D0CB8(v30 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, v57, qword_1EDF403D0, type metadata accessor for GroupLayoutContext);
              if ((*v192)(v57, 1, v33) == 1)
              {

                sub_1D68D6E6C(v66, type metadata accessor for GroupLayoutBindingContext);
                __swift_destroy_boxed_opaque_existential_1(&v212);
                sub_1D68D6ECC(v57, qword_1EDF403D0, type metadata accessor for GroupLayoutContext, MEMORY[0x1E69E6720], sub_1D68D0BC8);
              }

              else
              {
                v121 = v183;
                sub_1D68D0D38(v57, v183, type metadata accessor for GroupLayoutContext);
                v122 = v182;
                sub_1D5B68374(&v212, (v182 + 2));
                v123 = v196;
                sub_1D5BE4010(v66, v122 + *(v196 + 24), type metadata accessor for GroupLayoutBindingContext);
                sub_1D7259EAC();
                v124 = v122 + *(v123 + 28);
                sub_1D7259F4C();
                v125 = v33[5];
                v126 = sub_1D7259CFC();
                (*(*(v126 - 8) + 16))(&v124[v125], v121 + v125, v126);
                v127 = *(v121 + v33[10]);
                sub_1D5BE4010(v121 + v33[6], &v124[v33[6]], type metadata accessor for FeedLayoutSolverOptions);
                v128 = *(v121 + v33[7]);
                v129 = *(v121 + v33[8]);
                v130 = *(v121 + v33[9]);
                v131 = *(v121 + v33[11]);
                v132 = *(v121 + v33[12]);
                *&v124[v33[10]] = v127;
                *&v124[v33[7]] = v128;
                *&v124[v33[8]] = v129;
                v124[v33[9]] = v130;
                v124[v33[11]] = v131;
                *&v124[v33[12]] = v132;
                __swift_project_boxed_opaque_existential_1(v122 + 2, v122[5]);

                v66 = v203;

                v133 = _s8NewsFeed22GroupLayoutFactoryTypePAAE11descriptionSSvg_0();
                v135 = v134;

                sub_1D68D6E6C(v121, type metadata accessor for GroupLayoutContext);
                sub_1D68D6E6C(v66, type metadata accessor for GroupLayoutBindingContext);
                __swift_destroy_boxed_opaque_existential_1(&v212);
                *v122 = v133;
                v122[1] = v135;
                sub_1D68D0D38(v122, v201, type metadata accessor for DebugGroupLayoutKey);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v195 = sub_1D69952B8(0, v195[2] + 1, 1, v195);
                }

                v137 = v195[2];
                v136 = v195[3];
                v30 = v137 + 1;
                v33 = v198;
                v57 = v194;
                v119 = v188;
                v117 = v191;
                v118 = v187;
                if (v137 >= v136 >> 1)
                {
                  v195 = sub_1D69952B8(v136 > 1, v137 + 1, 1, v195);
                }

                v138 = v195;
                v195[2] = v30;
                sub_1D68D0D38(v201, v138 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v137, type metadata accessor for DebugGroupLayoutKey);
              }
            }
          }

          else
          {

            sub_1D68D64DC(&v210, &unk_1EDF27C10, &qword_1EDF3FA20, &protocol descriptor for GroupLayoutFactoryType);
          }

          ++v120;
        }

        while (v40 != v118);
      }

      else
      {
        v195 = MEMORY[0x1E69E7CC0];
      }

      v112 = v179;
      sub_1D68D5970(v179, &v214, v190, v189, v195);

      __swift_destroy_boxed_opaque_existential_1(&v214);
    }

    else
    {
      if (qword_1EDF3B0F0 != -1)
      {
        swift_once();
      }

      if (sub_1D725F7FC())
      {
        sub_1D68CEAB8(v112, v190, v189);
      }
    }

    goto LABEL_75;
  }

  v81 = *(v191 + 8);
  if (v81 >> 62)
  {
    v82 = sub_1D7263BFC();
  }

  else
  {
    v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v83 = v204;
  v57 = v192;
  if (v82)
  {
    v30 = 0;
    v203 = v81 & 0xC000000000000001;
    v202 = v81 & 0xFFFFFFFFFFFFFF8;
    v194 = (v180 + 48);
    v185 = (v181 + 48);
    v188 = MEMORY[0x1E69E7CC0];
    v201 = v82;
    v184 = v81;
    while (1)
    {
      if (v203)
      {
        v84 = MEMORY[0x1DA6FB460](v30, v81);
        v85 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_77;
        }
      }

      else
      {
        if (v30 >= *(v202 + 16))
        {
          goto LABEL_78;
        }

        v84 = *(v81 + 8 * v30 + 32);

        v85 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          swift_once();
          goto LABEL_4;
        }
      }

      sub_1D608489C(v84 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory, &v212);
      if (v213)
      {
        sub_1D5B63F14(&v212, &v214);
        v86 = qword_1EDF3ECD8;
        sub_1D68D0CB8(v84 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, v57, qword_1EDF3ECD8, type metadata accessor for GroupLayoutBindingContext);
        if ((*v194)(v57, 1, v83) == 1)
        {

          __swift_destroy_boxed_opaque_existential_1(&v214);
          v87 = type metadata accessor for GroupLayoutBindingContext;
          v88 = MEMORY[0x1E69E6720];
          v89 = v57;
        }

        else
        {
          v40 = v200;
          sub_1D68D0D38(v57, v200, type metadata accessor for GroupLayoutBindingContext);
          v86 = qword_1EDF403D0;
          sub_1D68D0CB8(v84 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, v65, qword_1EDF403D0, type metadata accessor for GroupLayoutContext);
          if ((*v185)(v65, 1, v33) != 1)
          {
            v90 = v65;
            v91 = v187;
            sub_1D68D0D38(v90, v187, type metadata accessor for GroupLayoutContext);
            v92 = v186;
            sub_1D5B68374(&v214, (v186 + 2));
            v93 = v196;
            sub_1D5BE4010(v40, v92 + *(v196 + 24), type metadata accessor for GroupLayoutBindingContext);
            sub_1D7259EAC();
            v94 = v92 + *(v93 + 28);
            sub_1D7259F4C();
            v95 = v33[5];
            v96 = sub_1D7259CFC();
            (*(*(v96 - 8) + 16))(&v94[v95], v91 + v95, v96);
            v97 = *(v91 + v33[10]);
            sub_1D5BE4010(v91 + v33[6], &v94[v33[6]], type metadata accessor for FeedLayoutSolverOptions);
            v98 = *(v91 + v33[7]);
            v99 = *(v91 + v33[8]);
            v100 = v33[10];
            v101 = *(v91 + v33[9]);
            v102 = *(v91 + v33[11]);
            v103 = v33;
            v104 = *(v91 + v33[12]);
            *&v94[v100] = v97;
            *&v94[v103[7]] = v98;
            *&v94[v103[8]] = v99;
            v94[v103[9]] = v101;
            v94[v103[11]] = v102;
            *&v94[v103[12]] = v104;
            v40 = v92[5];
            __swift_project_boxed_opaque_existential_1(v92 + 2, v40);

            v105 = _s8NewsFeed22GroupLayoutFactoryTypePAAE11descriptionSSvg_0();
            v107 = v106;

            sub_1D68D6E6C(v91, type metadata accessor for GroupLayoutContext);
            sub_1D68D6E6C(v200, type metadata accessor for GroupLayoutBindingContext);
            __swift_destroy_boxed_opaque_existential_1(&v214);
            *v92 = v105;
            v92[1] = v107;
            sub_1D68D0D38(v92, v195, type metadata accessor for DebugGroupLayoutKey);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v188 = sub_1D69952B8(0, v188[2] + 1, 1, v188);
            }

            v109 = v188[2];
            v108 = v188[3];
            v33 = v198;
            v57 = v192;
            v65 = v199;
            v81 = v184;
            if (v109 >= v108 >> 1)
            {
              v188 = sub_1D69952B8(v108 > 1, v109 + 1, 1, v188);
            }

            v110 = v188;
            v188[2] = v109 + 1;
            sub_1D68D0D38(v195, v110 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v109, type metadata accessor for DebugGroupLayoutKey);
            v83 = v204;
            goto LABEL_14;
          }

          sub_1D68D6E6C(v40, type metadata accessor for GroupLayoutBindingContext);
          __swift_destroy_boxed_opaque_existential_1(&v214);
          v87 = type metadata accessor for GroupLayoutContext;
          v88 = MEMORY[0x1E69E6720];
          v89 = v65;
        }

        sub_1D68D6ECC(v89, v86, v87, v88, sub_1D68D0BC8);
      }

      else
      {

        sub_1D68D64DC(&v212, &unk_1EDF27C10, &qword_1EDF3FA20, &protocol descriptor for GroupLayoutFactoryType);
      }

LABEL_14:
      ++v30;
      if (v85 == v201)
      {
        goto LABEL_62;
      }
    }
  }

  v188 = MEMORY[0x1E69E7CC0];
LABEL_62:
  v139 = v193;
  __swift_project_boxed_opaque_existential_1(v193 + 22, v193[25]);
  v140 = sub_1D725DA4C();
  if (!v140)
  {
    sub_1D68D6E6C(v179, type metadata accessor for DebugGroupLayoutKey);
  }

  v141 = v140;
  v142 = [v140 rootViewController];

  v112 = v179;
  if (!v142)
  {

LABEL_75:
    v174 = v112;
    return sub_1D68D6E6C(v174, type metadata accessor for DebugGroupLayoutKey);
  }

  v143 = sub_1D7262FCC();

  sub_1D5BE4010(v112, v178, type metadata accessor for DebugGroupLayoutKey);
  __swift_project_boxed_opaque_existential_1(v139 + 2, v139[5]);
  sub_1D5B483C4(0, &qword_1EDF1FE20);
  sub_1D5B68374(v191 + 16, &v212);
  v144 = swift_allocObject();
  sub_1D5B63F14(&v212, v144 + 16);
  sub_1D725AAAC();

  if (!v215)
  {
    __break(1u);
    goto LABEL_85;
  }

  v145 = v139[7];
  sub_1D5B68374((v139 + 27), &v212);
  __swift_project_boxed_opaque_existential_1(v139 + 2, v139[5]);
  sub_1D5B483C4(0, &qword_1EDF405B0);

  result = sub_1D725AACC();
  if (!v211)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  __swift_project_boxed_opaque_existential_1(v139 + 2, v139[5]);
  type metadata accessor for FormatSystemFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v146 = result;
  __swift_project_boxed_opaque_existential_1(v139 + 2, v139[5]);
  sub_1D5B483C4(0, qword_1EDF42C90);
  result = sub_1D725AACC();
  if (!v209)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  __swift_project_boxed_opaque_existential_1(v139 + 2, v139[5]);
  type metadata accessor for FeedModelFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v147 = result;
  v203 = v145;
  v204 = v143;
  __swift_project_boxed_opaque_existential_1(v139 + 2, v139[5]);
  sub_1D5B483C4(0, &unk_1EDF42D70);
  result = sub_1D725AACC();
  v148 = v205[0];
  if (v205[0])
  {
    v149 = v205[1];
    type metadata accessor for DebugFormatModelFactory();
    v150 = swift_allocObject();
    v150[2] = v147;
    v150[3] = v148;
    v150[4] = v149;
    v151 = v139[8];
    v152 = __swift_mutable_project_boxed_opaque_existential_1(&v214, v215);
    v153 = MEMORY[0x1EEE9AC00](v152, v152);
    v155 = (&v176 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v156 + 16))(v155, v153);
    v157 = *v155;
    v158 = type metadata accessor for DebugGroupLayoutViewFactory();
    v207 = &off_1F51E3AE8;
    v206 = v158;
    v205[0] = v157;
    v159 = objc_allocWithZone(type metadata accessor for DebugFormatMainViewController());
    v160 = __swift_mutable_project_boxed_opaque_existential_1(v205, v206);
    v161 = MEMORY[0x1EEE9AC00](v160, v160);
    v163 = (&v176 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v164 + 16))(v163, v161);
    v165 = *v163;
    v166 = v177;

    v167 = v190;
    swift_unknownObjectRetain();
    v168 = v151;
    v169 = sub_1D68D4048(v178, v188, v165, v203, v167, v189, v166, &v212, &v210, v146, v208, v150, v168, v159);

    __swift_destroy_boxed_opaque_existential_1(v205);
    __swift_destroy_boxed_opaque_existential_1(&v214);
    [v169 setMinimumPrimaryColumnWidth_];
    [v169 setPreferredPrimaryColumnWidth_];
    [v169 setMaximumPrimaryColumnWidth_];
    v170 = objc_allocWithZone(type metadata accessor for DebugFormatDockViewController());
    v171 = v169;
    v172 = sub_1D6E91CAC(v171);
    [v172 setModalPresentationStyle_];
    v173 = v204;
    [v204 presentViewController:v172 animated:1 completion:0];

    v174 = v179;
    return sub_1D68D6E6C(v174, type metadata accessor for DebugGroupLayoutKey);
  }

LABEL_89:
  __break(1u);
  return result;
}

uint64_t sub_1D68CE670(uint64_t *a1, uint64_t *a2)
{
  v5 = type metadata accessor for GroupLayoutBindingContext();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v36 = (&v33[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D68D0BC8(0, qword_1EDF3ECD8, type metadata accessor for GroupLayoutBindingContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v33[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v33[-1] - v15;
  v17 = *a1;
  v18 = *a2;
  v19 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24);
  if (v19 || (sub_1D72646CC() & 1) != 0)
  {
    v20 = *(v17 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier) == *(v18 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier) && *(v17 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier + 8) == *(v18 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier + 8);
    if (v20 || (sub_1D72646CC() & 1) != 0)
    {
      LOBYTE(v21) = 0;
      return v21 & 1;
    }
  }

  v32 = v2;
  v22 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D68D0CB8(v17 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, v16, qword_1EDF3ECD8, type metadata accessor for GroupLayoutBindingContext);
  v23 = *(v6 + 48);
  if (v23(v16, 1, v5) == 1)
  {
    sub_1D68D6ECC(v16, qword_1EDF3ECD8, type metadata accessor for GroupLayoutBindingContext, MEMORY[0x1E69E6720], sub_1D68D0BC8);
    goto LABEL_16;
  }

  sub_1D5B68374((v16 + 8), v33);
  sub_1D68D6E6C(v16, type metadata accessor for GroupLayoutBindingContext);
  v24 = v34;
  v25 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v21 = *((*(v25 + 16))(v24, v25) + 16);

  __swift_destroy_boxed_opaque_existential_1(v33);
  if (!v21)
  {
    return v21 & 1;
  }

  sub_1D68D0CB8(v17 + v22, v12, qword_1EDF3ECD8, type metadata accessor for GroupLayoutBindingContext);
  if (v23(v12, 1, v5) == 1)
  {
LABEL_16:
    LOBYTE(v21) = 0;
    return v21 & 1;
  }

  v27 = v36;
  sub_1D68D0D38(v12, v36, type metadata accessor for GroupLayoutBindingContext);
  v28 = v27[4];
  v29 = v27[5];
  __swift_project_boxed_opaque_existential_1(v27 + 1, v28);
  (*(v29 + 88))(v28, v29);
  LOBYTE(v28) = sub_1D726230C();

  if (v28)
  {
    LOBYTE(v21) = 1;
  }

  else
  {
    v30 = v27[4];
    v31 = v27[5];
    __swift_project_boxed_opaque_existential_1(v27 + 1, v30);
    (*(v31 + 88))(v30, v31);
    LOBYTE(v21) = sub_1D726230C();
  }

  sub_1D68D6E6C(v27, type metadata accessor for GroupLayoutBindingContext);
  return v21 & 1;
}

void sub_1D68CEAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v104 = a3;
  v5 = sub_1D725D7FC();
  v101 = *(v5 - 8);
  v102 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v100 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  sub_1D68D0BC8(0, &unk_1EDF3B6E0, MEMORY[0x1E69D77E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v98 = &v83 - v11;
  sub_1D68D0BC8(0, &unk_1EC88DF00, MEMORY[0x1E69D8750], v8);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v103 = &v83 - v14;
  v105 = sub_1D725D52C();
  v15 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105, v16);
  v86 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v93 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D725895C();
  v91 = *(v21 - 8);
  v92 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v90 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DebugGroupLayoutKey();
  v25 = (a1 + *(v24 + 24));
  v26 = *(v25 + 4);
  v27 = *(v25 + 5);
  v89 = v25;
  __swift_project_boxed_opaque_existential_1(v25 + 1, v26);
  (*(v27 + 64))(&v123, v26, v27);
  v28 = *(&v124 + 1);
  if (*(&v124 + 1))
  {
    v29 = v125;
    __swift_project_boxed_opaque_existential_1(&v123, *(&v124 + 1));
    v107 = (*(v29 + 16))(v28, v29);
    v97 = v30;
    __swift_destroy_boxed_opaque_existential_1(&v123);
  }

  else
  {
    sub_1D68D64DC(&v123, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
    v97 = 0xEA00000000007075;
    v107 = 0x6F72472064656546;
  }

  v108 = a2;
  v31 = *(v24 + 28);
  v99 = a1;
  v32 = a1 + v31;
  v33 = *(type metadata accessor for GroupLayoutContext() + 44);
  v88 = v32;
  LOBYTE(v123) = *(v32 + v33);
  FeedKind.rawValue.getter();
  v95 = sub_1D726213C();
  v96 = v34;

  sub_1D68D0BC8(0, &unk_1EDF19AF0, MEMORY[0x1E69D7970], MEMORY[0x1E69E6F90]);
  v35 = *(v15 + 72);
  v36 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1D7279960;
  v106 = v37;
  v84 = v36;
  v38 = (v37 + v36);
  v39 = swift_allocObject();
  v40 = [objc_opt_self() sharedApplication];
  v41 = [v40 key_window];

  *(v39 + 16) = v41;
  *v38 = v39;
  v42 = *MEMORY[0x1E69D7938];
  v85 = v15;
  v45 = *(v15 + 104);
  v43 = v15 + 104;
  v44 = v45;
  v46 = v105;
  v45(v38, v42, v105);
  v47 = swift_allocObject();
  if (qword_1EDF3CA50 != -1)
  {
    swift_once();
  }

  v48 = sub_1D725BD1C();
  __swift_project_value_buffer(v48, qword_1EDF3CA58);
  v47[2] = sub_1D725BC9C();
  v47[3] = v49;
  v47[4] = 0xD000000000000013;
  v47[5] = 0x80000001D73DABA0;
  *&v35[v38] = v47;
  v50 = *MEMORY[0x1E69D7940];
  v44(&v35[v38], v50, v46);
  v51 = swift_allocObject();
  v87 = v43;
  v52 = v44;
  v53 = v46;
  v54 = v51;
  if (qword_1EDF3CA98 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v48, qword_1EDF3CAA0);
  v54[2] = sub_1D725BC9C();
  v54[3] = v55;
  v54[4] = 0xD000000000000017;
  v54[5] = 0x80000001D73DABC0;
  *(v38 + 2 * v35) = v54;
  v52(v38 + 2 * v35, v50, v53);
  static RadarAttachment.feedGroup(_:)(v89 + 1, (v38 + 3 * v35));
  v89 = v35;
  static RadarAttachment.feedGroupLayoutContext(_:)(v88, (v38 + 4 * v35));
  v56 = v90;
  sub_1D725894C();
  v57 = sub_1D725893C();
  v59 = v58;
  (*(v91 + 8))(v56, v92);
  v60 = v94[11];
  ObjectType = swift_getObjectType();
  v62 = v93;
  FeedContextFactoryType.createFeedContext()(ObjectType, v60);
  v63 = v99;
  v64 = v97;
  sub_1D60C4E8C(v57, v59, v99, v107, v97, v62, &v110);

  sub_1D68D6E6C(v62, type metadata accessor for FeedContext);
  v121[8] = v118;
  v121[9] = v119;
  v122[0] = v120[0];
  v121[4] = v114;
  v121[5] = v115;
  v121[6] = v116;
  v121[7] = v117;
  v121[0] = v110;
  v121[1] = v111;
  v121[2] = v112;
  v121[3] = v113;
  v131 = v118;
  v132 = v119;
  v133[0] = v120[0];
  v127 = v114;
  v128 = v115;
  v129 = v116;
  v130 = v117;
  v123 = v110;
  v124 = v111;
  *(v122 + 15) = *(v120 + 15);
  *(v133 + 15) = *(v120 + 15);
  v125 = v112;
  v126 = v113;
  if (sub_1D60CFDF0(&v123) == 1)
  {
    v94 = 0;
    v65 = v103;
  }

  else
  {
    type metadata accessor for FormatJSONEncoder();
    swift_allocObject();
    sub_1D6BCED58(&unk_1F5119070);
    v118 = v131;
    v119 = v132;
    v120[0] = v133[0];
    *(v120 + 15) = *(v133 + 15);
    v114 = v127;
    v115 = v128;
    v116 = v129;
    v117 = v130;
    v110 = v123;
    v111 = v124;
    v112 = v125;
    v113 = v126;
    sub_1D5E3303C();
    v66 = sub_1D72578BC();
    v65 = v103;
    v68 = v67;
    v94 = 0;

    v69 = swift_allocObject();
    v69[2] = v66;
    v69[3] = v68;
    v69[4] = 0xD000000000000015;
    v69[5] = 0x80000001D73DAC20;
    v69[6] = 1852797802;
    v69[7] = 0xE400000000000000;
    v70 = v86;
    *v86 = v69;
    v52(v70, *MEMORY[0x1E69D7948], v105);
    sub_1D5E3E824(v66, v68);
    v71 = v106;
    v73 = v106[2];
    v72 = v106[3];
    if (v73 >= v72 >> 1)
    {
      v71 = sub_1D69932BC(v72 > 1, v73 + 1, 1, v106);
    }

    v74 = v85;
    sub_1D68D6ECC(v121, &qword_1EC883588, &type metadata for FormatWorkspace, MEMORY[0x1E69E6720], sub_1D68D6F2C);
    sub_1D5B952F8(v66, v68);
    v71[2] = v73 + 1;
    v106 = v71;
    (*(v74 + 32))(v71 + v84 + v73 * v89, v86, v105);
  }

  swift_getObjectType();
  sub_1D725F82C();
  sub_1D725F7DC();
  if (qword_1EDF3B6F0 != -1)
  {
    swift_once();
  }

  v75 = sub_1D725D19C();
  v76 = __swift_project_value_buffer(v75, qword_1EDF3B6F8);
  v77 = *(v75 - 8);
  v78 = v98;
  (*(v77 + 16))(v98, v76, v75);
  (*(v77 + 56))(v78, 0, 1, v75);
  *&v110 = 0;
  *(&v110 + 1) = 0xE000000000000000;
  sub_1D7263D4C();

  *&v110 = 0x2074756F79614C5BLL;
  *(&v110 + 1) = 0xEF205D6575737349;
  MEMORY[0x1DA6F9910](v95, v96);

  MEMORY[0x1DA6F9910](2108704, 0xE300000000000000);
  MEMORY[0x1DA6F9910](v107, v64);

  *&v110 = 0x5D74756F79614C5BLL;
  *(&v110 + 1) = 0xE900000000000020;
  MEMORY[0x1DA6F9910](*v63, v63[1]);
  (*(v101 + 104))(v100, *MEMORY[0x1E69D79C8], v102);
  sub_1D725F61C();
  v79 = sub_1D725F62C();
  (*(*(v79 - 8) + 56))(v65, 0, 1, v79);
  v80 = v94;
  sub_1D725D9CC();
  if (v80)
  {
    sub_1D68D6ECC(v65, &unk_1EC88DF00, MEMORY[0x1E69D8750], MEMORY[0x1E69E6720], sub_1D68D0BC8);

    if (qword_1EC87DC18 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D68D0C4C(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1D7273AE0;
    *&v110 = 0;
    *(&v110 + 1) = 0xE000000000000000;
    v109 = v80;
    sub_1D5B483C4(0, &qword_1EDF3C5D0);
    sub_1D7263F9C();
    v82 = v110;
    *(v81 + 56) = MEMORY[0x1E69E6158];
    *(v81 + 64) = sub_1D5B7E2C0();
    *(v81 + 32) = v82;
    sub_1D725C30C();
  }

  else
  {
    sub_1D68D6ECC(v65, &unk_1EC88DF00, MEMORY[0x1E69D8750], MEMORY[0x1E69E6720], sub_1D68D0BC8);
  }
}

uint64_t sub_1D68CF8BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugGroupLayoutKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  sub_1D68D6F2C(0, &unk_1EC88DC80, &type metadata for GroupLayoutAttributes, MEMORY[0x1E69D6B18]);
  sub_1D5BE4010(a1, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugGroupLayoutKey);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1D68D0D38(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for DebugGroupLayoutKey);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  return sub_1D725BABC();
}

uint64_t sub_1D68CFA40(char *a1)
{
  type metadata accessor for GroupLayoutBindingContext();
  v3 = swift_projectBox();
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  v6 = *(type metadata accessor for DebugGroupLayoutKey() + 28);
  swift_beginAccess();
  (*(v5 + 56))(v10, v3, &a1[v6], v4, v5);
  result = swift_endAccess();
  if (!v1)
  {
    v8 = v11;
    v9 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v9 + 32))(v8, v9);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return result;
}

void sub_1D68CFB54(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v92 = a7;
  v95 = a6;
  v103 = a4;
  v102 = type metadata accessor for DebugInspectViewResult();
  MEMORY[0x1EEE9AC00](v102, v10);
  v94 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v91 - v14;
  v96 = type metadata accessor for DebugGroupLayoutKey();
  MEMORY[0x1EEE9AC00](v96, v16);
  v104 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v93 = &v91 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v91 - v23;
  LODWORD(v97) = *a1;
  v25 = *(a1 + 8);
  v98 = *(a1 + 24);
  v99 = v25;
  v26 = *(a1 + 6);
  v100 = *(a1 + 5);
  v101 = v26;
  type metadata accessor for GroupLayoutBindingContext();
  v27 = swift_projectBox();
  v28 = a2[9];
  v91 = a2[8];
  v128 = v28;
  v105 = v24;
  sub_1D5BE4010(a3, v24, type metadata accessor for DebugGroupLayoutKey);
  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  sub_1D5B483C4(0, &qword_1EDF1FE20);
  sub_1D5B68374(v103, v125);
  v29 = swift_allocObject();
  sub_1D5B63F14(v125, v29 + 16);
  sub_1D725AAAC();

  if (!v127)
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_1D63327EC();
  v31 = &v15[*(v30 + 48)];
  swift_beginAccess();
  sub_1D5BE4010(v27, v15, type metadata accessor for GroupLayoutBindingContext);
  *v31 = v97;
  v32 = v99;
  *(v31 + 24) = v98;
  *(v31 + 8) = v32;
  v33 = v101;
  *(v31 + 5) = v100;
  *(v31 + 6) = v33;
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);

  sub_1D725AACC();
  if (!*&v125[0])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v34 = v15;
  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  sub_1D5B483C4(0, &unk_1EDF3FFB0);
  sub_1D725AACC();
  if (!v124)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  sub_1D5B483C4(0, &qword_1EDF40588);
  sub_1D725AACC();
  if (!v122[3])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  sub_1D5B483C4(0, &qword_1EDF412B0);
  sub_1D725AACC();
  if (!v121[3])
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  sub_1D5B483C4(0, &unk_1EDF3DE10);
  sub_1D725AACC();
  if (!v120[3])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1D5B68374((a2 + 32), v119);
  v35 = a2[5];
  v103 = a2;
  __swift_project_boxed_opaque_existential_1(a2 + 2, v35);
  sub_1D5B483C4(0, &qword_1EDF25C80);
  sub_1D725AACC();
  if (!v118[3])
  {
LABEL_24:
    __break(1u);
    return;
  }

  v36 = __swift_mutable_project_boxed_opaque_existential_1(v126, v127);
  v101 = &v91;
  v37 = MEMORY[0x1EEE9AC00](v36, v36);
  v39 = (&v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39, v37);
  v41 = *v39;
  v42 = type metadata accessor for DebugGroupLayoutViewFactory();
  v116 = v42;
  v117 = &off_1F51E3AE8;
  v115[0] = v41;
  *&v99 = type metadata accessor for DebugInspectViewController();
  v43 = objc_allocWithZone(v99);
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v115, v116);
  v100 = &v91;
  v45 = MEMORY[0x1EEE9AC00](v44, v44);
  v47 = (&v91 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47, v45);
  v49 = *v47;
  v114[3] = v42;
  v114[4] = &off_1F51E3AE8;
  v114[0] = v49;
  v50 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tableView;
  *&v43[v50] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v51 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_searchController;
  *&v43[v51] = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
  v52 = v91;
  *&v43[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_cloudContext] = v91;
  *&v43[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_feedPersonalizer] = v128;
  v53 = v105;
  sub_1D5BE4010(v105, &v43[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_key], type metadata accessor for DebugGroupLayoutKey);
  sub_1D5B68374(v114, &v43[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_factory]);
  sub_1D5BE4010(v34, &v43[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_result], type metadata accessor for DebugInspectViewResult);
  v54 = &v43[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_commandCenter];
  v55 = v92;
  *v54 = v95;
  *(v54 + 1) = v55;
  v56 = v34;
  v57 = v93;
  sub_1D5BE4010(v53, v93, type metadata accessor for DebugGroupLayoutKey);
  v102 = v56;
  v58 = v56;
  v59 = v94;
  sub_1D5BE4010(v58, v94, type metadata accessor for DebugInspectViewResult);
  sub_1D6330700(v125, v113);
  sub_1D5B68374(v123, v112);
  sub_1D5B68374(v122, v111);
  type metadata accessor for DebugInspectViewDataSource();
  swift_allocObject();
  v97 = v52;
  v60 = v128;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v61 = sub_1D632A918(v57, v59, v113, v112, v111);
  *&v98 = v43;
  *&v43[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_dataSource] = v61;
  sub_1D5B68374(v121, v113);
  sub_1D5B68374(v120, v112);
  v62 = v104;
  sub_1D5BE4010(v53, v104, type metadata accessor for DebugGroupLayoutKey);
  sub_1D5B68374(v118, v111);
  type metadata accessor for DebugInspector();
  v63 = swift_allocObject();
  v64 = v97;
  *(v63 + 16) = 0;
  *(v63 + 24) = v64;
  *(v63 + 32) = v60;
  sub_1D5B68374(v113, v63 + 40);
  sub_1D5B68374(v112, v63 + 128);
  v65 = (v62 + *(v96 + 24));
  v67 = v65[4];
  v66 = v65[5];
  __swift_project_boxed_opaque_existential_1(v65 + 1, v67);
  v68 = *(v66 + 16);
  v69 = v64;
  swift_unknownObjectRetain();
  *(v63 + 80) = v68(v67, v66);
  v70 = v65[4];
  v71 = v65[5];
  __swift_project_boxed_opaque_existential_1(v65 + 1, v70);
  (*(v71 + 64))(v107, v70, v71);
  sub_1D68160C0(v107, v110);
  v72 = v110[1];
  *(v63 + 96) = v110[0];
  *(v63 + 112) = v72;
  v73 = v65[4];
  v74 = v65[5];
  __swift_project_boxed_opaque_existential_1(v65 + 1, v73);
  (*(v74 + 64))(v107, v73, v74);
  v75 = v108;
  if (!v108)
  {
    sub_1D68D64DC(v107, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
LABEL_13:
    v80 = v102;
    v79 = v103;
    v81 = v99;
    v82 = v98;
    v78 = MEMORY[0x1E69E7CD0];
    goto LABEL_14;
  }

  v76 = v109;
  __swift_project_boxed_opaque_existential_1(v107, v108);
  v77 = (*(v76 + 32))(v75, v76);
  if (!v77)
  {
    __swift_destroy_boxed_opaque_existential_1(v107);
    goto LABEL_13;
  }

  v78 = *(v77 + 32);

  __swift_destroy_boxed_opaque_existential_1(v107);
  v80 = v102;
  v79 = v103;
  v81 = v99;
  v82 = v98;
LABEL_14:
  *(v63 + 88) = v78;
  sub_1D5B68374(v111, v63 + 168);
  sub_1D6C6DDB0();
  v83 = sub_1D725B92C();
  sub_1D725BB2C();

  __swift_destroy_boxed_opaque_existential_1(v111);
  __swift_destroy_boxed_opaque_existential_1(v112);
  __swift_destroy_boxed_opaque_existential_1(v113);
  sub_1D68D6E6C(v104, type metadata accessor for DebugGroupLayoutKey);
  *&v82[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_inspector] = v63;
  sub_1D6330700(v125, &v82[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_inventory]);
  sub_1D5B68374(v123, &v82[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_headlineService]);
  sub_1D5B68374(v122, &v82[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_recipeService]);
  sub_1D5B68374(v121, &v82[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tagService]);
  sub_1D5B68374(v120, &v82[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_webEmbedDataSourceService]);
  sub_1D5B68374(v119, &v82[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_radarAttachmentProvider]);
  sub_1D5B68374(v118, &v82[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_history]);
  v106.receiver = v82;
  v106.super_class = v81;
  v84 = objc_msgSendSuper2(&v106, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v119);
  sub_1D68D6E6C(v80, type metadata accessor for DebugInspectViewResult);
  sub_1D68D6E6C(v105, type metadata accessor for DebugGroupLayoutKey);
  __swift_destroy_boxed_opaque_existential_1(v118);
  __swift_destroy_boxed_opaque_existential_1(v120);
  __swift_destroy_boxed_opaque_existential_1(v121);
  __swift_destroy_boxed_opaque_existential_1(v122);
  __swift_destroy_boxed_opaque_existential_1(v123);
  sub_1D6084EA8(v125);
  __swift_destroy_boxed_opaque_existential_1(v114);
  __swift_destroy_boxed_opaque_existential_1(v115);
  __swift_destroy_boxed_opaque_existential_1(v126);
  v85 = [objc_allocWithZone(type metadata accessor for DebugNavigationController()) initWithRootViewController_];

  v86 = [v85 navigationBar];
  v87 = [objc_opt_self() systemGrayColor];
  [v86 setTintColor_];

  __swift_project_boxed_opaque_existential_1((v79 + 176), *(v79 + 200));
  v88 = sub_1D725DA4C();
  if (v88)
  {
    v89 = v88;
    v90 = [v88 rootViewController];

    if (v90)
    {
      [v90 presentViewController:v85 animated:1 completion:0];

      v85 = v90;
    }
  }
}

uint64_t sub_1D68D0814()
{
  if (qword_1EDF1BB50 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D68D0C4C(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D7273AE0;
  sub_1D5B483C4(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D5B7E2C0();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1D725C30C();
}

uint64_t sub_1D68D0970(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3B4F8);
  return sub_1D725A85C();
}

uint64_t sub_1D68D09DC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1(v0 + 216);
  __swift_destroy_boxed_opaque_existential_1(v0 + 256);
  return v0;
}

uint64_t sub_1D68D0A44()
{
  sub_1D68D09DC();

  return swift_deallocClassInstance();
}

BOOL sub_1D68D0A9C()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1D68D0BC8(0, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v8 - v3;
  sub_1D6AEA8E8((&v8 - v3));
  v5 = type metadata accessor for DebugGroupLayoutKey();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5) != 1;
  sub_1D68D6ECC(v4, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey, v0, sub_1D68D0BC8);
  return v6;
}

void sub_1D68D0BC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D68D0C4C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B483C4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D68D0CB8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D68D0BC8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D68D0D38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *sub_1D68D0DA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, void *a14, uint64_t *a15)
{
  v242 = a6;
  v243 = a8;
  v231 = a7;
  v244 = a5;
  v245 = a1;
  v241 = a4;
  v229 = a2;
  v247 = *a15;
  v16 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v234 = &v210 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for FormatDerivedDataCompilerSettings();
  MEMORY[0x1EEE9AC00](v230, v19);
  v232 = &v210 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v233 = (&v210 - v23);
  v240 = sub_1D726307C();
  v228 = *(v240 - 1);
  MEMORY[0x1EEE9AC00](v240, v24);
  v227 = &v210 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = sub_1D726304C();
  v224 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226, v26);
  v225 = &v210 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D7261B2C();
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v239 = &v210 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6195740(0);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v222 = &v210 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v223 = &v210 - v36;
  sub_1D68D696C(0);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  *&v220 = &v210 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v221 = &v210 - v42;
  sub_1D68D69A0(0);
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v237 = &v210 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46, v47);
  v238 = &v210 - v48;
  sub_1D68D69D4(0);
  MEMORY[0x1EEE9AC00](v49 - 8, v50);
  v246 = &v210 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v210 - v54;
  v56 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v56, v57);
  v58 = type metadata accessor for DebugGroupLayoutViewFactory();
  v263[4] = &off_1F51E3AE8;
  v263[3] = v58;
  v263[0] = a3;
  v59 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_imageCache;
  type metadata accessor for DebugFormatImageCache();
  swift_allocObject();
  *(a15 + v59) = sub_1D6F8DCF4();
  v236 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_resizingProvider;
  type metadata accessor for FormatLayoutResizingProvider();
  v60 = swift_allocObject();
  *&v266[0] = MEMORY[0x1E69E7CC0];
  sub_1D68D6DE4(&qword_1EDF3BDF0, MEMORY[0x1E69D6388]);
  v61 = MEMORY[0x1E69D6388];
  sub_1D68D0BC8(0, &qword_1EDF1B5D0, MEMORY[0x1E69D6388], MEMORY[0x1E69E62F8]);
  sub_1D5B6D4CC(&qword_1EDF1B5C0, &qword_1EDF1B5D0, v61);
  sub_1D7263B6C();
  sub_1D725A7BC();
  swift_allocObject();
  v62 = sub_1D725A7AC();
  v63 = MEMORY[0x1E69E7CC8];
  v60[2] = v62;
  v60[3] = v63;
  v60[4] = 0;
  v60[5] = 0;
  *(a15 + v236) = v60;
  v64 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__metadata;
  v65 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  (*(*(v65 - 8) + 56))(v55, 1, 1, v65);
  sub_1D5BE4010(v55, v246, sub_1D68D69D4);
  sub_1D68D0BC8(0, &qword_1EC88DD28, sub_1D68D69D4, MEMORY[0x1E69D6748]);
  swift_allocObject();
  v66 = sub_1D725B2FC();
  sub_1D68D6E6C(v55, sub_1D68D69D4);
  *(a15 + v64) = v66;
  v67 = (a15 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_sourceTheme);
  sub_1D6AADE84(v264);
  v67[3] = &type metadata for DebugFormatDebuggerSourceTheme.Cora;
  v67[4] = &off_1F51AAAC8;
  v68 = swift_allocObject();
  *v67 = v68;
  v69 = v264[5];
  v68[5] = v264[4];
  v68[6] = v69;
  v68[7] = v264[6];
  v70 = v264[1];
  v68[1] = v264[0];
  v68[2] = v70;
  v71 = v264[3];
  v68[3] = v264[2];
  v68[4] = v71;
  v72 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__showSource;
  LOBYTE(v266[0]) = 0;
  sub_1D68D6F2C(0, &qword_1EC88DD30, MEMORY[0x1E69E6370], MEMORY[0x1E69D6748]);
  v246 = v73;
  swift_allocObject();
  *(a15 + v72) = sub_1D725B2FC();
  v74 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__sourceFile;
  sub_1D607F0A4(v265);
  v266[4] = v265[4];
  v266[5] = v265[5];
  v266[6] = v265[6];
  v266[7] = v265[7];
  v266[0] = v265[0];
  v266[1] = v265[1];
  v266[2] = v265[2];
  v266[3] = v265[3];
  v75 = MEMORY[0x1E69E6720];
  sub_1D68D6A08(0, &qword_1EC88DD38, &qword_1EC88DD40, &type metadata for DebugFormatFileSource, MEMORY[0x1E69E6720]);
  swift_allocObject();
  *(a15 + v74) = sub_1D725B2FC();
  v76 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__sourcePath;
  *&v266[0] = MEMORY[0x1E69E7CC0];
  sub_1D68D6A08(0, &unk_1EC88DD48, &qword_1EDF1B2E0, &type metadata for FormatSourceMap, MEMORY[0x1E69E62F8]);
  swift_allocObject();
  *(a15 + v76) = sub_1D725B2FC();
  v77 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__sourceError;
  sub_1D68D6A08(0, &qword_1EC88DD58, &qword_1EC88DD60, &type metadata for DebugFormatFileSourceError, v75);
  memset(v266, 0, 40);
  swift_allocObject();
  *(a15 + v77) = sub_1D725B2FC();
  v78 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__showSourceMetrics;
  if (qword_1EC87D748 != -1)
  {
    swift_once();
  }

  sub_1D68D6BF8(0, &qword_1EC88DD68);
  swift_allocObject();

  *(a15 + v78) = sub_1D725977C();
  v79 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__packages;
  sub_1D7168A94(MEMORY[0x1E69E7CC0], v266);
  memcpy(v262, v266, sizeof(v262));
  v80 = MEMORY[0x1E69D6748];
  sub_1D68D6F2C(0, &unk_1EC88DD70, &type metadata for DebugFormatPackages, MEMORY[0x1E69D6748]);
  swift_allocObject();
  *(a15 + v79) = sub_1D725B2FC();
  v81 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__statusMessage;
  *&v262[0] = 0x2E676E6964616F4CLL;
  *(&v262[0] + 1) = 0xEA00000000002E2ELL;
  sub_1D68D6F2C(0, &qword_1EC883498, MEMORY[0x1E69E6158], v80);
  swift_allocObject();
  *(a15 + v81) = sub_1D725B2FC();
  v82 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__statusProgress;
  LODWORD(v262[0]) = 0;
  sub_1D68D6F2C(0, &qword_1EC88DD80, MEMORY[0x1E69E6448], v80);
  swift_allocObject();
  *(a15 + v82) = sub_1D725B2FC();
  v83 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__uploadMessage;
  *&v262[0] = 0x2E676E6964616F4CLL;
  *(&v262[0] + 1) = 0xEA00000000002E2ELL;
  swift_allocObject();
  *(a15 + v83) = sub_1D725B2FC();
  v84 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__uploadProgress;
  LODWORD(v262[0]) = 0;
  swift_allocObject();
  *(a15 + v84) = sub_1D725B2FC();
  v85 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__reloadQueueDepth;
  *&v262[0] = 0;
  sub_1D68D6F2C(0, &qword_1EC88DD88, MEMORY[0x1E69E6530], v80);
  swift_allocObject();
  *(a15 + v85) = sub_1D725B2FC();
  v86 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__canvasContentSizeCategory;
  if (qword_1EC87D6B0 != -1)
  {
    swift_once();
  }

  sub_1D68D6D74(0, &unk_1EC88DD90, sub_1D62C54C0, &type metadata for DebugFormatContentSizeCategory, MEMORY[0x1E69D6D90]);
  swift_allocObject();

  *(a15 + v86) = sub_1D725977C();
  v87 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__canvasIncreaseContrast;
  if (qword_1EC87D6B8 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v87) = sub_1D725977C();
  v88 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__canvasBoldText;
  if (qword_1EC87D6C0 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v88) = sub_1D725977C();
  v89 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__consoleTrackingNow;
  LOBYTE(v262[0]) = 1;
  swift_allocObject();
  *(a15 + v89) = sub_1D725B2FC();
  v90 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__consoleAnimating;
  LOBYTE(v262[0]) = 0;
  swift_allocObject();
  *(a15 + v90) = sub_1D725B2FC();
  v91 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__consoleDisplay;
  if (qword_1EC87D628 != -1)
  {
    swift_once();
  }

  sub_1D68D6D74(0, &unk_1EC88DDA0, sub_1D62C546C, &type metadata for DebugFormatConsoleDisplay, MEMORY[0x1E69D6D90]);
  swift_allocObject();

  *(a15 + v91) = sub_1D725977C();
  v92 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__consolePaneDisplay;
  if (qword_1EC87D630 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v92) = sub_1D725977C();
  v93 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__consoleFilterTerm;
  if (qword_1EC87D638 != -1)
  {
    swift_once();
  }

  sub_1D68D6BF8(0, &qword_1EC88DDB0);
  v95 = v94;
  swift_allocObject();

  *(a15 + v93) = sub_1D725977C();
  v96 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__allowSelection;
  if (qword_1EC87D6E0 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v96) = sub_1D725977C();
  v97 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__alwaysBounceVertical;
  if (qword_1EC87D668 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v97) = sub_1D725977C();
  v98 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__alwaysBounceHorizontal;
  if (qword_1EC87D670 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v98) = sub_1D725977C();
  v99 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__showColumns;
  if (qword_1EC87D5E8 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v99) = sub_1D725977C();
  v100 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__showSeparators;
  if (qword_1EC87D6D0 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v100) = sub_1D725977C();
  v101 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__showLayoutMargins;
  if (qword_1EC87D5F0 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v101) = sub_1D725977C();
  v102 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__showLayoutPaneOnSnapshot;
  if (qword_1EC87D608 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v102) = sub_1D725977C();
  v103 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__userInterfaceStyle;
  if (qword_1EC87D650 != -1)
  {
    swift_once();
  }

  sub_1D68D6A98(0, &qword_1EC88DDB8, type metadata accessor for UIUserInterfaceStyle, sub_1D68D6A64);
  swift_allocObject();

  *(a15 + v103) = sub_1D725977C();
  v104 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__interfaceLayoutDirection;
  if (qword_1EC87D658 != -1)
  {
    swift_once();
  }

  sub_1D68D6A98(0, &qword_1EC88DDC8, type metadata accessor for UIUserInterfaceLayoutDirection, sub_1D68D6B08);
  swift_allocObject();

  *(a15 + v104) = sub_1D725977C();
  v105 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__showRulers;
  if (qword_1EC87D6C8 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v105) = sub_1D725977C();
  v106 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__showToolbar;
  if (qword_1EC87D6D8 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v106) = sub_1D725977C();
  v107 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__showDock;
  if (qword_1EC87D758 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v107) = sub_1D725977C();
  v108 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__viewFlattening;
  if (qword_1EC87D760 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v108) = sub_1D725977C();
  v109 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__inventoryShowDeprecatedPackages;
  if (qword_1EC87D620 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v109) = sub_1D725977C();
  v110 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__debuggerSearchTerm;
  if (qword_1EC87D740 != -1)
  {
    swift_once();
  }

  v219 = v95;
  swift_allocObject();

  *(a15 + v110) = sub_1D725977C();
  v111 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__history;
  *&v262[0] = MEMORY[0x1E69E7CC0];
  v112 = MEMORY[0x1E69E7CC0];
  sub_1D68D6A08(0, &qword_1EC88DDD8, &unk_1EC88DDE0, &type metadata for DebugFormatHistory, MEMORY[0x1E69E62F8]);
  swift_allocObject();
  *(a15 + v111) = sub_1D725B2FC();
  v113 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__isCompiling;
  LOBYTE(v262[0]) = 0;
  swift_allocObject();
  *(a15 + v113) = sub_1D725B2FC();
  v114 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__isStatusReady;
  LOBYTE(v262[0]) = 0;
  swift_allocObject();
  *(a15 + v114) = sub_1D725B2FC();
  v115 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__isSnapshotDebugging;
  LOBYTE(v262[0]) = 0;
  swift_allocObject();
  *(a15 + v115) = sub_1D725B2FC();
  v116 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__isConnected;
  LOBYTE(v262[0]) = 0;
  swift_allocObject();
  *(a15 + v116) = sub_1D725B2FC();
  v117 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__compilerResult;
  *&v262[0] = v112;
  sub_1D68D0BC8(0, &qword_1EC88AAE8, type metadata accessor for DebugFormatCompilerResultEntry, MEMORY[0x1E69E62F8]);
  sub_1D5B6D4CC(&qword_1EC88DDF0, &qword_1EC88AAE8, type metadata accessor for DebugFormatCompilerResultEntry);
  v118 = sub_1D72623DC();
  *&v262[0] = v112;
  *(&v262[0] + 1) = v118;
  v119 = MEMORY[0x1E69D6748];
  sub_1D68D6F2C(0, &qword_1EC88DDF8, &type metadata for DebugFormatCompilerResult, MEMORY[0x1E69D6748]);
  swift_allocObject();
  *(a15 + v117) = sub_1D725B2FC();
  v120 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__compilerProgress;
  v121 = MEMORY[0x1E69E7CC0];
  v122 = sub_1D605D81C(MEMORY[0x1E69E7CC0]);
  *&v262[0] = v121;
  v123 = sub_1D72623DC();
  *&v262[0] = MEMORY[0x1E69E7CC0];
  *(&v262[0] + 1) = v123;
  *&v262[1] = v122;
  sub_1D68D6F2C(0, &qword_1EC88DE00, &type metadata for DebugFormatCompilerProgress, v119);
  swift_allocObject();
  *(a15 + v120) = sub_1D725B2FC();
  v124 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__layoutContext;
  v125 = type metadata accessor for DebugFormatEditorLayoutContext();
  v126 = v238;
  (*(*(v125 - 8) + 56))(v238, 1, 1, v125);
  sub_1D5BE4010(v126, v237, sub_1D68D69A0);
  sub_1D68D0BC8(0, &qword_1EC88DE08, sub_1D68D69A0, MEMORY[0x1E69D6748]);
  swift_allocObject();
  v127 = sub_1D725B2FC();
  sub_1D68D6E6C(v126, sub_1D68D69A0);
  *(a15 + v124) = v127;
  v128 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__debuggerWatchSelectors;
  if (qword_1EC87D718 != -1)
  {
    swift_once();
  }

  sub_1D68D6B3C();
  swift_allocObject();

  *(a15 + v128) = sub_1D725977C();
  v129 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__debuggerWatchOptionsIdentifiers;
  if (qword_1EC87D720 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v129) = sub_1D725977C();
  v130 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__uploadEnabled;
  LOBYTE(v262[0]) = 0;
  swift_allocObject();
  *(a15 + v130) = sub_1D725B2FC();
  v131 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__uploadTarget;
  if (qword_1EC87D678 != -1)
  {
    swift_once();
  }

  sub_1D68D6D74(0, &qword_1EC88DE28, sub_1D5F5D990, &type metadata for DebugFormatUploadTarget, MEMORY[0x1E69D6D90]);
  swift_allocObject();

  *(a15 + v131) = sub_1D725977C();
  v132 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__uploadEnvironment;
  if (qword_1EC87D690 != -1)
  {
    swift_once();
  }

  sub_1D68D6D74(0, &qword_1EC88DE38, sub_1D5F5D93C, &type metadata for DebugFormatBackendEnvironment, MEMORY[0x1E69D6D90]);
  swift_allocObject();

  *(a15 + v132) = sub_1D725977C();
  v133 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__uploadUsername;
  if (qword_1EC87D698 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v133) = sub_1D725977C();
  v134 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__uploadPassword;
  if (qword_1EC87D6A0 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v134) = sub_1D725977C();
  v135 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__uploadDiffingEnabled;
  if (qword_1EC87D680 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v135) = sub_1D725977C();
  v136 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__uploadGitBranchValidation;
  if (qword_1EC87D688 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v136) = sub_1D725977C();
  v137 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__featureAppleNews;
  if (qword_1EC87D6E8 != -1)
  {
    swift_once();
  }

  sub_1D68D6A98(0, &unk_1EC88DE48, MEMORY[0x1E69D6D20], sub_1D68D6BC4);
  swift_allocObject();

  *(a15 + v137) = sub_1D725977C();
  v138 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__featureAppleNewsPrivateData;
  if (qword_1EC87D6F0 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v138) = sub_1D725977C();
  v139 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__featureAppleNewsAudio;
  if (qword_1EC87D6F8 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v139) = sub_1D725977C();
  v140 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__featureAppleNewsMagazines;
  if (qword_1EC87D700 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v140) = sub_1D725977C();
  v141 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__videoInFeed;
  if (qword_1EDF18718 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v141) = sub_1D725977C();
  v142 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__metricsEnabled;
  if (qword_1EC87D708 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v142) = sub_1D725977C();
  v143 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__weather;
  if (qword_1EC87D660 != -1)
  {
    swift_once();
  }

  sub_1D68D6D74(0, &qword_1EC88DE58, sub_1D62C52C0, &type metadata for DebugFormatWeather, MEMORY[0x1E69D6D90]);
  swift_allocObject();

  *(a15 + v143) = sub_1D725977C();
  v144 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__historyGraphRelativeTimeInMilliseconds;
  if (qword_1EC87D710 != -1)
  {
    swift_once();
  }

  sub_1D68D6BF8(0, &qword_1EDF181C0);
  swift_allocObject();

  *(a15 + v144) = sub_1D725977C();
  v145 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__hiddenInventoryIdentifier;
  if (qword_1EC87D640 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v145) = sub_1D725977C();
  v146 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__clearCacheOnNextLaunch;
  if (qword_1EC87D610 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v146) = sub_1D725977C();
  v147 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__versioningMode;
  if (qword_1EC87D510 != -1)
  {
    swift_once();
  }

  v217 = a14;
  v246 = a13;
  v238 = a12;
  v237 = a11;
  v236 = a10;
  v218 = a9;
  v148 = qword_1EC9BA7C0;
  sub_1D68D6A98(0, &qword_1EC88DE70, type metadata accessor for FormatVersioningModeSelection, sub_1D68D6C48);
  swift_allocObject();

  v235 = v148;
  *(a15 + v147) = sub_1D725977C();
  *(a15 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_alertManager) = 0;
  v149 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__viewResult;
  *&v262[0] = 0;
  v150 = MEMORY[0x1E69D6748];
  sub_1D68D0BC8(0, &qword_1EC88DE80, sub_1D68D6C7C, MEMORY[0x1E69D6748]);
  swift_allocObject();
  *(a15 + v149) = sub_1D725B2FC();
  v151 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__overlayView;
  *&v262[0] = 0;
  sub_1D68D0BC8(0, &qword_1EC88DE90, sub_1D68D6CB0, v150);
  swift_allocObject();
  *(a15 + v151) = sub_1D725B2FC();
  v152 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__layoutModelSelection;
  v153 = type metadata accessor for DebugFormatLayoutModelSelection();
  v154 = v221;
  (*(*(v153 - 8) + 56))(v221, 1, 1, v153);
  sub_1D5BE4010(v154, v220, sub_1D68D696C);
  sub_1D68D0BC8(0, &qword_1EC88DEA0, sub_1D68D696C, v150);
  swift_allocObject();
  v155 = sub_1D725B2FC();
  sub_1D68D6E6C(v154, sub_1D68D696C);
  *(a15 + v152) = v155;
  v156 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__workspace;
  sub_1D60CF378(v262);
  v258 = v262[10];
  v259 = v262[11];
  v260 = v262[12];
  v261 = *&v262[13];
  v254 = v262[6];
  v255 = v262[7];
  v256 = v262[8];
  v257 = v262[9];
  v250 = v262[2];
  v251 = v262[3];
  v252 = v262[4];
  v253 = v262[5];
  v248 = v262[0];
  v249 = v262[1];
  sub_1D68D6A08(0, &unk_1EC88DEA8, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, MEMORY[0x1E69E6720]);
  swift_allocObject();
  *(a15 + v156) = sub_1D725B2FC();
  v157 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__workspaceGroup;
  v158 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  v159 = v223;
  (*(*(v158 - 8) + 56))(v223, 1, 1, v158);
  sub_1D5BE4010(v159, v222, sub_1D6195740);
  sub_1D68D0BC8(0, &qword_1EC88DEB8, sub_1D6195740, v150);
  swift_allocObject();
  v160 = sub_1D725B2FC();
  sub_1D68D6E6C(v159, sub_1D6195740);
  *(a15 + v157) = v160;
  v161 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__workspaceSearchTerm;
  if (qword_1EC87D6A8 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(a15 + v161) = sub_1D725977C();
  v162 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__canvasInteractionButtonStateMasks;
  *&v248 = MEMORY[0x1E69E7CD0];
  sub_1D68D6CE4();
  swift_allocObject();
  *(a15 + v162) = sub_1D725B2FC();
  v163 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_compiler;
  type metadata accessor for DebugFormatCompiler();
  *(a15 + v163) = swift_allocObject();
  v212 = sub_1D5B5A498(0, &qword_1EDF1AA30);
  v210 = " to bind layout, error=%@";
  sub_1D7261B0C();
  v164 = MEMORY[0x1E69E8030];
  sub_1D68D0BC8(0, &unk_1EC88DEC8, MEMORY[0x1E69E8030], MEMORY[0x1E69E6F90]);
  v165 = v224[9];
  v222 = v166;
  v223 = v165;
  v221 = *(v224 + 80);
  v219 = (v221 + 32) & ~v221;
  v167 = swift_allocObject();
  v220 = xmmword_1D7273AE0;
  *(v167 + 16) = xmmword_1D7273AE0;
  sub_1D726303C();
  *&v248 = v167;
  v215 = sub_1D68D6DE4(&qword_1EDF1AA50, MEMORY[0x1E69E8030]);
  sub_1D68D0BC8(0, &unk_1EDF1AE90, v164, MEMORY[0x1E69E62F8]);
  v214 = v168;
  v216 = sub_1D5B6D4CC(&qword_1EDF1AE80, &unk_1EDF1AE90, v164);
  sub_1D7263B6C();
  v213 = *MEMORY[0x1E69E8090];
  v169 = v227;
  v211 = v228[13];
  v211(v227);
  v170 = sub_1D72630BC();
  *(a15 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_compileQueue) = v170;
  v171 = objc_allocWithZone(MEMORY[0x1E696ADC8]);
  v172 = v170;
  v173 = [v171 init];
  v174 = sub_1D726203C();
  [v173 setName_];

  [v173 setMaxConcurrentOperationCount_];
  v228 = v172;
  [v173 setUnderlyingQueue_];
  *(a15 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_compilerOperationQueue) = v173;
  v224 = v173;
  sub_1D7261AFC();
  v175 = swift_allocObject();
  *(v175 + 16) = v220;
  sub_1D726303C();
  *&v248 = v175;
  sub_1D7263B6C();
  (v211)(v169, v213, v240);
  v176 = sub_1D72630BC();
  *(a15 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_uploadQueue) = v176;
  v177 = objc_allocWithZone(MEMORY[0x1E696ADC8]);
  v178 = v176;
  v179 = [v177 init];
  v180 = sub_1D726203C();
  [v179 setName_];

  [v179 setMaxConcurrentOperationCount_];
  v240 = v178;
  [v179 setUnderlyingQueue_];
  *(a15 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_uploaderOperationQueue) = v179;
  sub_1D5BE4010(v245, a15 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_key, type metadata accessor for DebugGroupLayoutKey);
  *(a15 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_feedKeys) = v229;
  sub_1D5B68374(v263, a15 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_factory);
  *(a15 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_fontManager) = v241;
  sub_1D5B68374(v244, a15 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_featureAvailability);
  v181 = v237;
  *(a15 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_cacheManager) = v236;
  *(a15 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_formatManager) = v181;
  *(a15 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager) = v238;
  *(a15 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_bindingService) = v246;
  v182 = v217;
  *(a15 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_cloudContext) = v217;
  type metadata accessor for FormatDebugger();
  swift_allocObject();
  v239 = v179;

  v229 = v182;
  *(a15 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_debugger) = sub_1D6D2D0E4();
  v183 = (a15 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_commandCenter);
  v184 = v243;
  v185 = v231;
  *v183 = v242;
  v183[1] = v185;
  *(a15 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_commandSource) = v184;
  v186 = &OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__consoleFilterTerm;
  *(a15 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_hiddenInventoryIdentifiers) = MEMORY[0x1E69E7CD0];
  v187 = v218;
  *(a15 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_defaultSystemFactory) = v218;

  v231 = v187;
  swift_unknownObjectRetain();
  v188 = sub_1D5F606AC();
  sub_1D72596FC();
  sub_1D72596DC();
  v189 = v233;
  sub_1D72596CC();

  *v189 = v188;
  v190 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__compilerSettings;
  swift_beginAccess();
  sub_1D5BE4010(v189, v232, type metadata accessor for FormatDerivedDataCompilerSettings);
  sub_1D68D0BC8(0, &unk_1EC88DED8, type metadata accessor for FormatDerivedDataCompilerSettings, MEMORY[0x1E69D6748]);
  swift_allocObject();
  v191 = sub_1D725B2FC();
  sub_1D68D6E6C(v189, type metadata accessor for FormatDerivedDataCompilerSettings);
  *(a15 + v190) = v191;
  swift_endAccess();

  sub_1D725972C();

  sub_1D5BF4D9C();
  v192 = sub_1D7263ACC();

  v193 = *(v192 + 16);
  if (v193)
  {
    *&v248 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v193, 0);
    v194 = v248;
    v195 = (v192 + 56);
    do
    {
      v196 = *(v195 - 3);
      v197 = *(v195 - 2);
      v198 = *(v195 - 1);
      v199 = *v195;

      v200 = MEMORY[0x1DA6F97E0](v196, v197, v198, v199);
      v202 = v201;

      *&v248 = v194;
      v204 = *(v194 + 16);
      v203 = *(v194 + 24);
      if (v204 >= v203 >> 1)
      {
        sub_1D5BFC364((v203 > 1), v204 + 1, 1);
        v194 = v248;
      }

      *(v194 + 16) = v204 + 1;
      v205 = v194 + 16 * v204;
      *(v205 + 32) = v200;
      *(v205 + 40) = v202;
      v195 += 4;
      --v193;
    }

    while (v193);

    v186 = &OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__consoleFilterTerm;
  }

  else
  {

    v194 = MEMORY[0x1E69E7CC0];
  }

  v206 = sub_1D5B86020(v194);

  *(a15 + v186[57]) = v206;

  sub_1D725972C();

  LOBYTE(v248) = v248 != 0;

  sub_1D725973C();

  for (i = 0; ; ++i)
  {
    if (byte_1F5119020[i + 32])
    {
      if (byte_1F5119020[i + 32] == 1)
      {
        if (qword_1EC87D4A8 == -1)
        {
          goto LABEL_100;
        }

LABEL_96:
        swift_once();
        goto LABEL_100;
      }

      if (qword_1EC87D4B0 != -1)
      {
        goto LABEL_96;
      }
    }

    else if (qword_1EC87D4A0 != -1)
    {
      goto LABEL_96;
    }

LABEL_100:
    swift_allocObject();
    swift_weakInit();
    sub_1D68D6DE4(&qword_1EC88DEE8, type metadata accessor for DebugFormatEditor);

    sub_1D725965C();

    if (i == 2)
    {
      break;
    }
  }

  swift_allocObject();
  swift_weakInit();

  v208 = v234;
  sub_1D725965C();

  sub_1D68D6E6C(v208, type metadata accessor for FormatVersioningModeSelection);

  sub_1D725972C();

  if (v248)
  {
    LOBYTE(v248) = 0;

    sub_1D725973C();

    sub_1D711145C();
  }

  if (qword_1EC87D728 != -1)
  {
    swift_once();
  }

  sub_1D725964C();

  sub_1D725B32C();

  sub_1D725B33C();

  sub_1D725B35C();

  sub_1D725B33C();

  sub_1D725B35C();

  sub_1D725974C();

  sub_1D725975C();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v244);
  sub_1D68D6E6C(v245, type metadata accessor for DebugGroupLayoutKey);
  __swift_destroy_boxed_opaque_existential_1(v263);
  return a15;
}

char *sub_1D68D4048(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, char *a14)
{
  v204 = a8;
  v205 = a1;
  v200 = a5;
  v201 = a7;
  v193 = a2;
  v194 = a6;
  v199 = a4;
  v202 = a11;
  v203 = a9;
  ObjectType = swift_getObjectType();
  v198 = ObjectType;
  v16 = sub_1D725EDAC();
  v190 = *(v16 - 1);
  v191 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v189 = &v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DebugGroupLayoutKey();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v197 = &v176 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = type metadata accessor for DebugGroupLayoutViewFactory();
  v223 = &off_1F51E3AE8;
  v188 = v222;
  v221[0] = a3;
  v22 = OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_styler;
  v195 = type metadata accessor for DebugFormatStyler();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *&a14[v22] = v23;
  v192 = a14;
  *&a14[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_debuggerRestoreState] = 0;
  sub_1D5B5A498(0, &qword_1EDF04590);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1D68D0BC8(0, &qword_1EC88DC90, sub_1D68D68C0, MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  v206 = xmmword_1D7273AE0;
  *(v25 + 16) = xmmword_1D7273AE0;
  *(v25 + 32) = ObjectType;
  sub_1D68D68C0();
  v26 = sub_1D726265C();

  v27 = [ObjCClassFromMetadata appearanceWhenContainedInInstancesOfClasses_];

  v28 = objc_opt_self();
  v29 = [v28 secondaryLabelColor];
  [v27 setTintColor_];

  v30 = swift_allocObject();
  *(v30 + 16) = v206;
  *(v30 + 32) = type metadata accessor for DebugNavigationController();
  v31 = sub_1D726265C();

  v32 = [ObjCClassFromMetadata appearanceWhenContainedInInstancesOfClasses_];

  v33 = [v28 secondaryLabelColor];
  [v32 setTintColor_];

  v34 = swift_allocObject();
  *(v34 + 16) = v206;
  *(v34 + 32) = sub_1D725EDBC();
  v35 = sub_1D726265C();

  v36 = [ObjCClassFromMetadata appearanceWhenContainedInInstancesOfClasses_];

  v37 = [v28 secondaryLabelColor];
  [v36 setTintColor_];

  v38 = objc_opt_self();
  v39 = swift_allocObject();
  *(v39 + 16) = v206;
  *(v39 + 32) = sub_1D5B5A498(0, &qword_1EC88DCA8);
  v40 = sub_1D726265C();

  v41 = [v38 appearanceWhenContainedInInstancesOfClasses_];

  v42 = [v28 systemBlueColor];
  [v41 setTintColor_];

  sub_1D5B5A498(0, &qword_1EC88DCB0);
  v43 = swift_getObjCClassFromMetadata();
  v44 = swift_allocObject();
  *(v44 + 16) = v206;
  *(v44 + 32) = sub_1D725E42C();
  v45 = sub_1D726265C();

  v46 = [v43 appearanceWhenContainedInInstancesOfClasses_];

  v47 = [v28 systemBlueColor];
  [v46 setTintColor_];

  sub_1D5B5A498(0, &qword_1EC88DCB8);
  v48 = swift_getObjCClassFromMetadata();
  v49 = swift_allocObject();
  *(v49 + 16) = v206;
  *(v49 + 32) = v198;
  v50 = sub_1D726265C();

  v51 = [v48 appearanceWhenContainedInInstancesOfClasses_];

  v52 = [v28 secondaryLabelColor];
  [v51 setTintColor_];

  if (qword_1EDF16528 != -1)
  {
    swift_once();
  }

  v53 = qword_1EDFFC6E8;
  sub_1D725A76C();
  swift_beginAccess();
  *(v53 + 16) = MEMORY[0x1E69E7CC8];

  sub_1D725A77C();
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  sub_1D725BFFC();

  sub_1D5B68374(v203, &v219);
  sub_1D5B68374(v202, v218);
  type metadata accessor for DebugFormatBindingService();
  v54 = swift_allocObject();
  type metadata accessor for DebugFormatService();
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  v54[13] = v55;
  sub_1D5B63F14(&v219, (v54 + 2));
  sub_1D5B63F14(v218, (v54 + 7));
  v54[12] = a12;
  v54[14] = a13;
  type metadata accessor for DebugFormatWorkspaceManager();
  swift_allocObject();

  v187 = a13;

  *&v206 = sub_1D60CAED0(v56);

  if (qword_1EC87DD18 != -1)
  {
    swift_once();
  }

  v57 = qword_1EC9BADF8;
  type metadata accessor for DebugFormatManager();
  swift_allocObject();
  v58 = v199;

  v59 = sub_1D6D308DC(v58, v57);
  sub_1D5BE4010(v205, v197, type metadata accessor for DebugGroupLayoutKey);
  sub_1D5B68374(v221, &v219);
  sub_1D5B68374(v204, v218);
  v60 = __swift_mutable_project_boxed_opaque_existential_1(&v219, v220);
  v186 = &v176;
  v61 = MEMORY[0x1EEE9AC00](v60, v60);
  v63 = (&v176 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v64 + 16))(v63, v61);
  v65 = *v63;
  v66 = v188;
  v217[3] = v188;
  v217[4] = &off_1F51E3AE8;
  v217[0] = v65;
  type metadata accessor for DebugFormatEditor();
  v184 = swift_allocObject();
  v67 = __swift_mutable_project_boxed_opaque_existential_1(v217, v66);
  v185 = &v176;
  v68 = MEMORY[0x1EEE9AC00](v67, v67);
  v70 = (&v176 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v71 + 16))(v70, v68);
  v183 = *v70;
  v72 = v201;

  v73 = a10;
  v188 = v73;
  v196 = v59;

  v74 = v206;

  v75 = v187;

  v76 = v200;
  swift_unknownObjectRetain();
  v77 = sub_1D68D0DA0(v197, v193, v183, v58, v218, v76, v194, v72, v73, v57, v59, v74, v54, v75, v184);
  v187 = v54;
  v78 = v77;
  __swift_destroy_boxed_opaque_existential_1(v217);
  __swift_destroy_boxed_opaque_existential_1(&v219);
  v79 = v192;
  *&v192[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_editor] = v78;
  v80 = objc_allocWithZone(type metadata accessor for DebugFormatSocketServer());

  *&v79[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_socketServer] = sub_1D718074C(v81);
  v82 = objc_allocWithZone(type metadata accessor for DebugFormatInventoryTreeViewController());

  v84 = sub_1D6C8354C(v83);
  *&v79[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_inventoryViewController] = v84;
  v85 = objc_allocWithZone(type metadata accessor for DebugFormatLayoutTreeViewController());

  v197 = v84;
  v86 = sub_1D6B5BD90(v78);
  *&v79[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_layoutTreeViewController] = v86;
  v87 = type metadata accessor for DebugFormatBindingTreeViewController();
  v88 = objc_allocWithZone(v87);
  v89 = OBJC_IVAR____TtC8NewsFeed36DebugFormatBindingTreeViewController_styler;
  v90 = swift_allocObject();
  *(v90 + 16) = 0;
  *&v88[v89] = v90;
  *&v88[OBJC_IVAR____TtC8NewsFeed36DebugFormatBindingTreeViewController____lazy_storage___bindingTreeViewController] = 0;
  *&v88[OBJC_IVAR____TtC8NewsFeed36DebugFormatBindingTreeViewController____lazy_storage___model] = 0;
  *&v88[OBJC_IVAR____TtC8NewsFeed36DebugFormatBindingTreeViewController_editor] = v78;
  v216.receiver = v88;
  v216.super_class = v87;

  v184 = v86;
  v91 = objc_msgSendSuper2(&v216, sel_initWithNibName_bundle_, 0, 0);
  *&v79[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_bindingViewController] = v91;
  v92 = objc_allocWithZone(type metadata accessor for DebugFormatCompilerViewController());

  v195 = v91;
  v93 = sub_1D72107C0(v78);

  *&v79[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_compilerViewController] = v93;
  v94 = objc_allocWithZone(type metadata accessor for DebugFormatDebuggerViewController());

  v183 = v93;
  v95 = sub_1D6CBF818(v78);
  *&v79[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_debuggerViewController] = v95;
  v96 = objc_allocWithZone(type metadata accessor for DebugFormatFileViewController());

  v182 = v95;
  v97 = sub_1D6C28264(v78);
  *&v79[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_fileViewController] = v97;
  v98 = objc_allocWithZone(type metadata accessor for DebugFormatDebuggerSourceViewController());

  v181 = v97;
  v99 = sub_1D6919E88(v78);
  *&v79[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_sourceViewController] = v99;
  v100 = type metadata accessor for DebugFormatInspectorViewController();
  v101 = objc_allocWithZone(v100);
  v102 = OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController_coverViewManager;
  sub_1D725D7AC();
  swift_allocObject();

  v186 = v99;
  *&v101[v102] = sub_1D725D79C();
  *&v101[OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController____lazy_storage___paneViewController] = 0;
  v101[OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController_pane] = 0;
  *&v101[OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController_editor] = v78;
  v215.receiver = v101;
  v215.super_class = v100;
  v103 = objc_msgSendSuper2(&v215, sel_initWithNibName_bundle_, 0, 0);
  *&v79[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_styleViewController] = v103;
  v104 = objc_allocWithZone(v100);
  v105 = OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController_coverViewManager;
  swift_allocObject();

  v180 = v103;
  *&v104[v105] = sub_1D725D79C();
  *&v104[OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController____lazy_storage___paneViewController] = 0;
  v104[OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController_pane] = 1;
  *&v104[OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController_editor] = v78;
  v214.receiver = v104;
  v214.super_class = v100;
  v106 = objc_msgSendSuper2(&v214, sel_initWithNibName_bundle_, 0, 0);
  *&v79[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_optionViewController] = v106;
  v107 = objc_allocWithZone(v100);
  v108 = OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController_coverViewManager;
  swift_allocObject();

  v194 = v106;
  *&v107[v108] = sub_1D725D79C();
  *&v107[OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController____lazy_storage___paneViewController] = 0;
  v107[OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController_pane] = 2;
  *&v107[OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController_editor] = v78;
  v213.receiver = v107;
  v213.super_class = v100;
  v109 = objc_msgSendSuper2(&v213, sel_initWithNibName_bundle_, 0, 0);
  *&v79[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_selectorViewController] = v109;
  v110 = objc_allocWithZone(v100);
  v111 = OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController_coverViewManager;
  swift_allocObject();

  v193 = v109;
  *&v110[v111] = sub_1D725D79C();
  *&v110[OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController____lazy_storage___paneViewController] = 0;
  v110[OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController_pane] = 3;
  *&v110[OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController_editor] = v78;
  v212.receiver = v110;
  v212.super_class = v100;
  v112 = objc_msgSendSuper2(&v212, sel_initWithNibName_bundle_, 0, 0);
  *&v79[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_animationViewController] = v112;
  v113 = objc_allocWithZone(type metadata accessor for DebugFormatInspectorMaskViewController());

  v114 = v112;
  v179 = v114;
  v115 = sub_1D67C5470(v78);
  *&v79[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_maskViewController] = v115;
  v116 = type metadata accessor for DebugFormatHistoryViewController();
  v117 = objc_allocWithZone(v116);
  *&v117[OBJC_IVAR____TtC8NewsFeed32DebugFormatHistoryViewController_sections] = MEMORY[0x1E69E7CC0];
  v118 = OBJC_IVAR____TtC8NewsFeed32DebugFormatHistoryViewController_tableView;
  v119 = objc_allocWithZone(MEMORY[0x1E69DD020]);

  v120 = v115;
  v178 = v120;
  *&v117[v118] = [v119 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *&v117[OBJC_IVAR____TtC8NewsFeed32DebugFormatHistoryViewController_editor] = v78;
  v211.receiver = v117;
  v211.super_class = v116;
  v121 = objc_msgSendSuper2(&v211, sel_initWithNibName_bundle_, 0, 0);
  *&v79[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_historyViewController] = v121;
  v176 = type metadata accessor for DebugFormatSidebarViewController();
  sub_1D68D0BC8(0, &qword_1EC88DCC0, sub_1D5F77290, MEMORY[0x1E69E6F90]);
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_1D73032E0;
  v123 = sub_1D68D6DE4(&qword_1EC88DCC8, type metadata accessor for DebugFormatInventoryTreeViewController);
  *(v122 + 32) = v197;
  *(v122 + 40) = v123;
  v124 = sub_1D68D6DE4(&qword_1EC88DCD0, type metadata accessor for DebugFormatBindingTreeViewController);
  *(v122 + 48) = v195;
  *(v122 + 56) = v124;
  v125 = sub_1D68D6DE4(&qword_1EC88DCD8, type metadata accessor for DebugFormatLayoutTreeViewController);
  v126 = v184;
  *(v122 + 64) = v184;
  *(v122 + 72) = v125;
  v127 = sub_1D68D6DE4(&qword_1EC88DCE0, type metadata accessor for DebugFormatInspectorViewController);
  v128 = v180;
  *(v122 + 80) = v180;
  *(v122 + 88) = v127;
  v129 = v193;
  *(v122 + 96) = v194;
  *(v122 + 104) = v127;
  *(v122 + 112) = v129;
  *(v122 + 120) = v127;
  *(v122 + 128) = v114;
  *(v122 + 136) = v127;
  v130 = sub_1D68D6DE4(&qword_1EC88DCE8, type metadata accessor for DebugFormatInspectorMaskViewController);
  *(v122 + 144) = v120;
  *(v122 + 152) = v130;
  v131 = sub_1D68D6DE4(&qword_1EC88DCF0, type metadata accessor for DebugFormatFileViewController);
  v132 = v181;
  *(v122 + 160) = v181;
  *(v122 + 168) = v131;
  v133 = sub_1D68D6DE4(&qword_1EC88DCF8, type metadata accessor for DebugFormatCompilerViewController);
  v134 = v183;
  *(v122 + 176) = v183;
  *(v122 + 184) = v133;
  v135 = sub_1D68D6DE4(&qword_1EC88DD00, type metadata accessor for DebugFormatDebuggerViewController);
  v136 = v182;
  *(v122 + 192) = v182;
  *(v122 + 200) = v135;
  v137 = sub_1D68D6DE4(&qword_1EC88DD08, type metadata accessor for DebugFormatHistoryViewController);
  *(v122 + 208) = v121;
  *(v122 + 216) = v137;
  v138 = v121;
  v185 = v197;
  v177 = v126;
  v184 = v195;
  v183 = v134;
  v197 = v136;
  v181 = v132;
  v182 = v128;
  v194 = v194;
  v193 = v193;
  v180 = v179;
  v179 = v178;
  v178 = v138;
  v139 = sub_1D725E65C();
  (v190[13])(v189, *MEMORY[0x1E69D8390], v191);
  sub_1D725E6AC();
  *&v79[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_sidebarViewController] = v139;
  v140 = type metadata accessor for DebugFormatNavigationController();
  v141 = objc_allocWithZone(v140);
  *&v141[OBJC_IVAR____TtC8NewsFeed31DebugFormatNavigationController_section] = 1;
  v210.receiver = v141;
  v210.super_class = v140;
  v191 = v139;
  v142 = objc_msgSendSuper2(&v210, sel_initWithRootViewController_, v191);
  *&v79[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_sidebarNavigationController] = v142;
  v143 = objc_allocWithZone(type metadata accessor for DebugFormatEditorViewController());
  v144 = v196;

  v145 = v186;
  v195 = v142;
  v190 = v145;
  v146 = sub_1D6A13480(v78, v144, v145);

  v147 = objc_allocWithZone(v140);
  *&v147[OBJC_IVAR____TtC8NewsFeed31DebugFormatNavigationController_section] = 3;
  v209.receiver = v147;
  v209.super_class = v140;
  v148 = objc_msgSendSuper2(&v209, sel_initWithRootViewController_, v146);
  *&v79[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_editorViewController] = v146;
  *&v79[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_editorNavigationController] = v148;
  v149 = v79;
  v150 = objc_allocWithZone(type metadata accessor for DebugFormatLogViewController());

  v151 = v146;
  v152 = v148;
  v153 = sub_1D6E334B8(v78);

  *&v79[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_logViewController] = v153;
  v154 = *&v197[OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerViewController_debuggerPaneViewController];
  v155 = objc_allocWithZone(type metadata accessor for DebugFormatConsolePaneViewController());
  swift_retain_n();
  v156 = v153;
  v157 = v151;
  v158 = v152;
  v189 = v156;
  v159 = sub_1D6EE346C(v78, v189, v154);
  v160 = type metadata accessor for DebugFormatConsoleViewController();
  v161 = objc_allocWithZone(v160);
  v162 = &v161[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consoleHeight];
  *v162 = 0;
  v162[8] = 1;
  v163 = &v161[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consolePanSession];
  *(v163 + 1) = 0;
  *(v163 + 2) = 0;
  *v163 = 0;
  v163[24] = 1;
  *&v161[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController____lazy_storage___panGestureRecognizer] = 0;
  *&v161[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_editor] = v78;
  *&v161[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_editorNavigationController] = v158;
  *&v161[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_editorViewController] = v157;
  *&v161[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consoleContainerController] = v159;
  v208.receiver = v161;
  v208.super_class = v160;

  v164 = v157;
  v165 = v158;
  v166 = v159;
  v167 = objc_msgSendSuper2(&v208, sel_initWithNibName_bundle_, 0, 0);
  [v167 addChildViewController_];
  v186 = v165;
  [v165 didMoveToParentViewController_];
  [v167 addChildViewController_];
  [v166 didMoveToParentViewController_];

  v176 = v164;
  *&v149[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_consoleViewController] = v167;
  v207.receiver = v149;
  v207.super_class = v198;
  v168 = v167;
  v169 = objc_msgSendSuper2(&v207, sel_initWithStyle_, 1);
  *&v164[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_delegate + 8] = &off_1F51A9390;
  swift_unknownObjectWeakAssign();
  v170 = v177;
  *(v177 + OBJC_IVAR____TtC8NewsFeed35DebugFormatLayoutTreeViewController_delegate + 8) = &off_1F51A9380;
  swift_unknownObjectWeakAssign();
  v171 = v169;
  [v171 setViewController:v195 forColumn:0];
  [v171 setViewController:v168 forColumn:2];
  [v171 setViewController:v168 forColumn:3];

  type metadata accessor for DebugFormatAlertManager();
  v172 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v172 + 24) = 0;
  *(v172 + 32) = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakAssign();
  v173 = *&v171[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_editor];
  v174 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_alertManager;
  swift_beginAccess();
  *(v173 + v174) = v172;

  sub_1D725B33C();

  sub_1D725B35C();

  sub_1D725B33C();

  sub_1D725B35C();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v202);
  __swift_destroy_boxed_opaque_existential_1(v203);
  __swift_destroy_boxed_opaque_existential_1(v204);
  sub_1D68D6E6C(v205, type metadata accessor for DebugGroupLayoutKey);
  __swift_destroy_boxed_opaque_existential_1(v221);
  return v171;
}

void sub_1D68D5970(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v81 = a5;
  v10 = type metadata accessor for GroupLayoutBindingContext();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DebugGroupLayoutKey();
  MEMORY[0x1EEE9AC00](v14, v15);
  v82 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v73 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v23 = v6[9];
  v80 = v6[8];
  v83 = v23;
  v84 = &v73 - v24;
  sub_1D5BE4010(a1, &v73 - v24, type metadata accessor for DebugGroupLayoutKey);
  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  sub_1D725AACC();
  if (!v101[0])
  {
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  sub_1D5B483C4(0, &unk_1EDF3FFB0);
  sub_1D725AACC();
  if (!v100)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  sub_1D5B483C4(0, &qword_1EDF40588);
  sub_1D725AACC();
  if (!v98)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  sub_1D5B483C4(0, &qword_1EDF412B0);
  sub_1D725AACC();
  if (!v96[3])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v79 = a4;
  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  sub_1D5B483C4(0, &unk_1EDF3DE10);
  sub_1D725AACC();
  if (!v95[3])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v76 = v20;
  v77 = v13;
  v25 = v14;
  sub_1D5B68374((v6 + 32), v94);
  v26 = v6[5];
  v78 = v6;
  __swift_project_boxed_opaque_existential_1(v6 + 2, v26);
  sub_1D5B483C4(0, &qword_1EDF25C80);
  sub_1D725AACC();
  if (!v93[3])
  {
LABEL_22:
    __break(1u);
    return;
  }

  v75 = type metadata accessor for DebugPersonalizationInspectViewController();
  v27 = objc_allocWithZone(v75);
  v28 = OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewController_tableView;
  *&v27[v28] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v29 = OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewController_submitView;
  type metadata accessor for DebugPersonalizationSubmitView();
  *&v27[v29] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v30 = OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewController_submitContainerView;
  *&v27[v30] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v31 = OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewController_submitButton;
  *&v27[v31] = [objc_opt_self() buttonWithType_];
  v32 = OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewController_header;
  *&v27[v32] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v33 = OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewController_titleView;
  *&v27[v33] = sub_1D716B5F0();
  v34 = v79;
  v35 = v80;
  *&v27[OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewController_cloudContext] = v80;
  v36 = v83;
  *&v27[OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewController_feedPersonalizer] = v83;
  v74 = v27;
  v37 = &v27[OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewController_commandCenter];
  *v37 = a3;
  *(v37 + 1) = v34;
  v38 = v84;
  v39 = v76;
  sub_1D5BE4010(v84, v76, type metadata accessor for DebugGroupLayoutKey);
  v73 = v25;
  v92[0] = 2;
  v40 = v35;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v41 = v77;
  sub_1D62EFCE4(0, v92, v77);
  sub_1D6330700(v101, v92);
  sub_1D5B68374(v99, v91);
  sub_1D5B68374(v97, v90);
  type metadata accessor for DebugPersonalizationInspectViewDataSource();
  swift_allocObject();
  v80 = sub_1D6AA8CE8(v39, v41, v92, v91, v90);
  sub_1D5B68374(v96, v92);
  sub_1D5B68374(v95, v91);
  v42 = v82;
  sub_1D5BE4010(v38, v82, type metadata accessor for DebugGroupLayoutKey);
  sub_1D5B68374(v93, v90);
  type metadata accessor for DebugInspector();
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = v40;
  *(v43 + 32) = v36;
  sub_1D5B68374(v92, v43 + 40);
  sub_1D5B68374(v91, v43 + 128);
  v44 = (v42 + *(v73 + 24));
  v46 = v44[4];
  v45 = v44[5];
  __swift_project_boxed_opaque_existential_1(v44 + 1, v46);
  v47 = *(v45 + 16);
  v79 = v40;
  swift_unknownObjectRetain();
  *(v43 + 80) = v47(v46, v45);
  v48 = v44[4];
  v49 = v44[5];
  __swift_project_boxed_opaque_existential_1(v44 + 1, v48);
  (*(v49 + 64))(v86, v48, v49);
  sub_1D68160C0(v86, v89);
  v50 = v89[1];
  *(v43 + 96) = v89[0];
  *(v43 + 112) = v50;
  v51 = v44[4];
  v52 = v44[5];
  __swift_project_boxed_opaque_existential_1(v44 + 1, v51);
  (*(v52 + 64))(v86, v51, v52);
  v53 = v87;
  if (!v87)
  {
    sub_1D68D64DC(v86, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
    v56 = v81;
LABEL_12:
    v58 = v78;
    v59 = v80;
    v60 = v74;
    v57 = MEMORY[0x1E69E7CD0];
    goto LABEL_13;
  }

  v54 = v88;
  __swift_project_boxed_opaque_existential_1(v86, v87);
  v55 = (*(v54 + 32))(v53, v54);
  v56 = v81;
  if (!v55)
  {
    __swift_destroy_boxed_opaque_existential_1(v86);
    goto LABEL_12;
  }

  v57 = *(v55 + 32);

  __swift_destroy_boxed_opaque_existential_1(v86);
  v58 = v78;
  v59 = v80;
  v60 = v74;
LABEL_13:
  *(v43 + 88) = v57;
  sub_1D5B68374(v90, v43 + 168);
  sub_1D6C6DDB0();
  v61 = sub_1D725B92C();
  sub_1D725BB2C();

  __swift_destroy_boxed_opaque_existential_1(v90);
  __swift_destroy_boxed_opaque_existential_1(v91);
  __swift_destroy_boxed_opaque_existential_1(v92);
  sub_1D68D6E6C(v82, type metadata accessor for DebugGroupLayoutKey);
  v62 = &v60[OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewController_targetGroupData];
  v63 = v84;
  sub_1D5BE4010(v84, &v60[OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewController_targetGroupData], type metadata accessor for DebugGroupLayoutKey);
  sub_1D5ECEDF4();
  *&v62[*(v64 + 48)] = v59;
  *&v62[*(v64 + 64)] = v43;
  sub_1D5B68374(v99, &v60[OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewController_headlineService]);
  sub_1D5B68374(v96, &v60[OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewController_tagService]);
  sub_1D5B68374(v95, &v60[OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewController_webEmbedDataSourceService]);
  v65 = sub_1D5B68374(v94, &v60[OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewController_radarAttachmentProvider]);
  MEMORY[0x1EEE9AC00](v65, v66);
  *(&v73 - 8) = v101;
  *(&v73 - 7) = v99;
  *(&v73 - 6) = v97;
  v67 = v83;
  *(&v73 - 5) = v79;
  *(&v73 - 4) = v67;
  *(&v73 - 3) = v96;
  *(&v73 - 2) = v95;
  *(&v73 - 1) = v93;
  *&v60[OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewController_extraDebugKeys] = sub_1D5ECD2E0(sub_1D68D6E34, (&v73 - 10), v56);
  v85.receiver = v60;
  v85.super_class = v75;
  v68 = objc_msgSendSuper2(&v85, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v94);
  sub_1D68D6E6C(v63, type metadata accessor for DebugGroupLayoutKey);
  __swift_destroy_boxed_opaque_existential_1(v93);
  __swift_destroy_boxed_opaque_existential_1(v95);
  __swift_destroy_boxed_opaque_existential_1(v96);
  __swift_destroy_boxed_opaque_existential_1(v97);
  __swift_destroy_boxed_opaque_existential_1(v99);
  sub_1D6084EA8(v101);
  v69 = [objc_allocWithZone(type metadata accessor for DebugNavigationController()) initWithRootViewController_];

  __swift_project_boxed_opaque_existential_1(v58 + 22, v58[25]);
  v70 = sub_1D725DA4C();
  if (v70)
  {
    v71 = v70;
    v72 = [v70 rootViewController];

    if (v72)
    {
      [v72 presentViewController:v69 animated:1 completion:0];

      v69 = v72;
    }
  }
}

uint64_t sub_1D68D6364()
{
  v1 = *(type metadata accessor for DebugGroupLayoutKey() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_1D68CF8BC(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1D68D63F4(unsigned __int8 *a1, void *a2)
{
  v5 = *(type metadata accessor for DebugGroupLayoutKey() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D68CFB54(a1, a2, v2 + v6, v2 + v7, *(v2 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1D68D64DC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D68D0C4C(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t objectdestroy_3Tm_1()
{
  v1 = (type metadata accessor for DebugGroupLayoutKey() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + 16);
  v3 = v0 + v2 + v1[8];
  __swift_destroy_boxed_opaque_existential_1(v3 + 8);

  v4 = *(type metadata accessor for GroupLayoutBindingContext() + 52);
  v5 = sub_1D725A0AC();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  v6 = v0 + v2 + v1[9];
  v7 = sub_1D7259F5C();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = type metadata accessor for GroupLayoutContext();
  v9 = *(v8 + 20);
  v10 = sub_1D7259CFC();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  v11 = v6 + *(v8 + 24);
  if (*(v11 + 24) >= 2uLL)
  {
  }

  v12 = type metadata accessor for FeedLayoutSolverOptions(0);
  v13 = *(v12 + 36);
  v14 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  if (!(*(*(v14 - 8) + 48))(v11 + v13, 1, v14))
  {
    v15 = sub_1D725E23C();
    (*(*(v15 - 8) + 8))(v11 + v13, v15);
  }

  if (*(v11 + *(v12 + 40) + 8) != 1)
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1D68D68C0()
{
  result = qword_1EC88DC98;
  if (!qword_1EC88DC98)
  {
    sub_1D68D6908();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EC88DC98);
  }

  return result;
}

unint64_t sub_1D68D6908()
{
  result = qword_1EC88DCA0;
  if (!qword_1EC88DCA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC88DCA0);
  }

  return result;
}

void sub_1D68D6A08(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    sub_1D68D6F2C(255, a3, a4, a5);
    v6 = sub_1D725B36C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D68D6A98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_1D725976C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D68D6B3C()
{
  if (!qword_1EC88DE10)
  {
    sub_1D68D6F2C(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D62C53F0();
    v0 = sub_1D725976C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88DE10);
    }
  }
}

void sub_1D68D6BF8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D725976C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D68D6CE4()
{
  if (!qword_1EC88DEC0)
  {
    sub_1D68D6D74(255, &qword_1EDF04818, sub_1D5C95CB4, &type metadata for FormatButtonNodeState, MEMORY[0x1E69E64E8]);
    v0 = sub_1D725B36C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88DEC0);
    }
  }
}

void sub_1D68D6D74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D68D6DE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D68D6E6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D68D6ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D68D6F2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id SharingIssueURLActivityItemSource.__allocating_init(issue:linkPresentationSource:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1D68D8434(a1, a2);

  return v6;
}

id SharingIssueURLActivityItemSource.init(issue:linkPresentationSource:)(void *a1, uint64_t a2)
{
  v3 = sub_1D68D8434(a1, a2);

  return v3;
}

id SharingIssueURLActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingIssueURLActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_OWORD *SharingIssueURLActivityItemSource.activityViewControllerPlaceholderItem(_:)@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B54350(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v13 - v5 + 16;
  v7 = OBJC_IVAR____TtC8NewsFeed33SharingIssueURLActivityItemSource_issueURL;
  swift_beginAccess();
  sub_1D5EB84C0(v1 + v7, v6);
  v8 = sub_1D72585BC();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    result = sub_1D5B6EE3C(v6, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    *(a1 + 24) = MEMORY[0x1E69E6158];
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
  }

  else
  {
    v14 = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
    (*(v9 + 32))(boxed_opaque_existential_1, v6, v8);
    return sub_1D5B7C390(v13, a1);
  }

  return result;
}

void SharingIssueURLActivityItemSource.activityViewController(_:itemForActivityType:)(void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D5B54350(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v35 - v11;
  if (a1)
  {
    v13 = sub_1D726207C();
    v15 = v14;
    if (v13 == sub_1D726207C() && v15 == v16)
    {
      v28 = a1;
    }

    else
    {
      v18 = sub_1D72646CC();
      v19 = a1;

      if ((v18 & 1) == 0)
      {
        v20 = OBJC_IVAR____TtC8NewsFeed33SharingIssueURLActivityItemSource_issueURL;
        swift_beginAccess();
        sub_1D5EB84C0(v2 + v20, v12);
        v21 = sub_1D72585BC();
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(v12, 1, v21) != 1)
        {
          *(a2 + 24) = v21;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
          (*(v22 + 32))(boxed_opaque_existential_1, v12, v21);

          return;
        }

        v23 = MEMORY[0x1E6968FB0];
        v24 = v12;
        goto LABEL_11;
      }
    }

    type metadata accessor for SharingHTMLBuilder();
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0xE000000000000000;
    swift_beginAccess();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0xE000000000000000;
    v30 = sub_1D68D7950(v29, v2);
    v32 = v31;

    if (v32)
    {
      *(a2 + 24) = MEMORY[0x1E69E6158];

      *a2 = v30;
      *(a2 + 8) = v32;
      return;
    }

    goto LABEL_17;
  }

  v25 = OBJC_IVAR____TtC8NewsFeed33SharingIssueURLActivityItemSource_issueURL;
  swift_beginAccess();
  sub_1D5EB84C0(v2 + v25, v8);
  v26 = sub_1D72585BC();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v8, 1, v26) != 1)
  {
    *(a2 + 24) = v26;
    v33 = __swift_allocate_boxed_opaque_existential_1(a2);
    (*(v27 + 32))(v33, v8, v26);
    return;
  }

  v23 = MEMORY[0x1E6968FB0];
  v24 = v8;
LABEL_11:
  sub_1D5B6EE3C(v24, &qword_1EDF45B40, v23);
LABEL_17:
  *a2 = 0u;
  *(a2 + 16) = 0u;
}

LPLinkMetadata_optional __swiftcall SharingIssueURLActivityItemSource.activityViewControllerLinkMetadata(_:)(UIActivityViewController *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed33SharingIssueURLActivityItemSource_linkPresentationSource))
  {
    sub_1D725B77C();
    v2 = [v5 linkMetadata];
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

uint64_t sub_1D68D7950(uint64_t a1, uint64_t a2)
{
  sub_1D5B54350(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v90 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v91 = &v87 - v9;
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SharingHTMLBuilder();
  v103 = v15;
  v104 = &off_1F51B62F0;
  v102[0] = a1;
  __swift_project_boxed_opaque_existential_1(v102, v15);
  v16 = off_1F51B6300[0];

  (v16)(v15, &off_1F51B62F0, v99);
  v17 = *(a2 + OBJC_IVAR____TtC8NewsFeed33SharingIssueURLActivityItemSource_issueCoverDate);
  v18 = *(a2 + OBJC_IVAR____TtC8NewsFeed33SharingIssueURLActivityItemSource_issueCoverDate + 8);
  v19 = v100;
  v20 = v101;
  __swift_project_boxed_opaque_existential_1(v99, v100);
  (*(v20 + 24))(&v96, v17, v18, v19, v20);
  __swift_destroy_boxed_opaque_existential_1(v99);
  sub_1D5B63F14(&v96, v99);
  v21 = v100;
  v22 = v101;
  __swift_project_boxed_opaque_existential_1(v99, v100);
  (*(v22 + 16))(&v96, v21, v22);
  __swift_destroy_boxed_opaque_existential_1(v99);
  sub_1D5B63F14(&v96, v99);
  v23 = v100;
  v24 = v101;
  __swift_project_boxed_opaque_existential_1(v99, v100);
  (*(v24 + 56))(&v96, *(a2 + OBJC_IVAR____TtC8NewsFeed33SharingIssueURLActivityItemSource_issueDescription), *(a2 + OBJC_IVAR____TtC8NewsFeed33SharingIssueURLActivityItemSource_issueDescription + 8), v23, v24);
  __swift_destroy_boxed_opaque_existential_1(v99);
  sub_1D5B63F14(&v96, v99);
  v25 = OBJC_IVAR____TtC8NewsFeed33SharingIssueURLActivityItemSource_issueURL;
  swift_beginAccess();
  v92 = v11;
  v26 = *(v11 + 48);
  v93 = v10;
  v89 = v26;
  if (!v26(a2 + v25, 1, v10))
  {
    v27 = v92;
    v28 = v93;
    (*(v92 + 16))(v14, a2 + v25, v93);
    v88 = sub_1D72583DC();
    v30 = v29;
    (*(v27 + 8))(v14, v28);
    __swift_project_boxed_opaque_existential_1(v102, v103);
    DynamicType = swift_getDynamicType();
    v32 = v104;
    v33 = v104[1];
    v97 = DynamicType;
    v98 = v104;
    __swift_allocate_boxed_opaque_existential_1(&v96);
    v33(DynamicType, v32);
    v34 = v97;
    v35 = v98;
    __swift_project_boxed_opaque_existential_1(&v96, v97);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v37 = [objc_opt_self() bundleForClass_];
    v38 = sub_1D725811C();
    v40 = v39;

    (v35[7])(v95, v38, v40, v34, v35);

    __swift_destroy_boxed_opaque_existential_1(&v96);
    sub_1D5B63F14(v95, &v96);
    v41 = v97;
    v42 = v98;
    __swift_project_boxed_opaque_existential_1(&v96, v97);
    (v42[7])(v95, *(a2 + OBJC_IVAR____TtC8NewsFeed33SharingIssueURLActivityItemSource_issueTitle), *(a2 + OBJC_IVAR____TtC8NewsFeed33SharingIssueURLActivityItemSource_issueTitle + 8), v41, v42);
    __swift_destroy_boxed_opaque_existential_1(&v96);
    sub_1D5B63F14(v95, &v96);
    v43 = v97;
    v44 = v98;
    __swift_project_boxed_opaque_existential_1(&v96, v97);
    (v44[7])(v95, 8250, 0xE200000000000000, v43, v44);
    __swift_destroy_boxed_opaque_existential_1(&v96);
    sub_1D5B63F14(v95, &v96);
    v45 = v97;
    v46 = v98;
    __swift_project_boxed_opaque_existential_1(&v96, v97);
    (v46[6])(v95, v88, v30, v88, v30, v45, v46);

    __swift_destroy_boxed_opaque_existential_1(&v96);
    sub_1D5B63F14(v95, &v96);
    v47 = v100;
    v48 = v101;
    __swift_project_boxed_opaque_existential_1(v99, v100);
    sub_1D5B68374(&v96, v94);
    (*(v48 + 32))(v95, v94, v47, v48);
    sub_1D5B6EE3C(v94, &qword_1EC884F40, sub_1D5EB8714);
    __swift_destroy_boxed_opaque_existential_1(v99);
    sub_1D5B63F14(v95, v99);
    __swift_destroy_boxed_opaque_existential_1(&v96);
  }

  __swift_project_boxed_opaque_existential_1(v102, v103);
  v49 = 1;
  v50 = swift_getDynamicType();
  v51 = v104;
  v52 = v104[1];
  v97 = v50;
  v98 = v104;
  __swift_allocate_boxed_opaque_existential_1(&v96);
  v52(v50, v51);
  v53 = v97;
  v54 = v98;
  __swift_project_boxed_opaque_existential_1(&v96, v97);
  (v54[2])(v95, v53, v54);
  __swift_destroy_boxed_opaque_existential_1(&v96);
  sub_1D5B63F14(v95, &v96);
  v55 = v97;
  v56 = v98;
  __swift_project_boxed_opaque_existential_1(&v96, v97);
  type metadata accessor for Localized();
  v57 = swift_getObjCClassFromMetadata();
  v58 = objc_opt_self();
  v59 = [v58 bundleForClass_];
  v60 = sub_1D725811C();
  v62 = v61;

  (v56[7])(v95, v60, v62, v55, v56);

  __swift_destroy_boxed_opaque_existential_1(&v96);
  sub_1D5B63F14(v95, &v96);
  v63 = v97;
  v64 = v98;
  __swift_project_boxed_opaque_existential_1(&v96, v97);
  (v64[7])(v95, 32, 0xE100000000000000, v63, v64);
  __swift_destroy_boxed_opaque_existential_1(&v96);
  sub_1D5B63F14(v95, &v96);
  v65 = [objc_opt_self() nss_MarketingPageURL];
  if (v65)
  {
    v66 = v90;
    v67 = v65;
    sub_1D72584EC();

    v49 = 0;
    v68 = v92;
  }

  else
  {
    v68 = v92;
    v66 = v90;
  }

  v69 = v49;
  v70 = v93;
  (*(v68 + 56))(v66, v69, 1, v93);
  v71 = v91;
  sub_1D5EB8540(v66, v91);
  if (v89(v71, 1, v70) == 1)
  {
    sub_1D5B6EE3C(v71, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v72 = sub_1D72583DC();
    v74 = v73;
    (*(v68 + 8))(v71, v70);
    v75 = v97;
    v76 = v98;
    __swift_project_boxed_opaque_existential_1(&v96, v97);
    v77 = [v58 bundleForClass_];
    v78 = sub_1D725811C();
    v80 = v79;

    (v76[6])(v95, v78, v80, v72, v74, v75, v76);

    __swift_destroy_boxed_opaque_existential_1(&v96);
    sub_1D5B63F14(v95, &v96);
  }

  v81 = v100;
  v82 = v101;
  __swift_project_boxed_opaque_existential_1(v99, v100);
  sub_1D5B68374(&v96, v94);
  (*(v82 + 32))(v95, v94, v81, v82);
  sub_1D5B6EE3C(v94, &qword_1EC884F40, sub_1D5EB8714);
  __swift_destroy_boxed_opaque_existential_1(v99);
  sub_1D5B63F14(v95, v99);
  v83 = v100;
  v84 = v101;
  __swift_project_boxed_opaque_existential_1(v99, v100);
  v85 = (*(v84 + 64))(v83, v84);
  __swift_destroy_boxed_opaque_existential_1(v99);
  __swift_destroy_boxed_opaque_existential_1(&v96);
  __swift_destroy_boxed_opaque_existential_1(v102);
  return v85;
}

id sub_1D68D8434(void *a1, uint64_t a2)
{
  v31 = a2;
  ObjectType = swift_getObjectType();
  sub_1D5B54350(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v31 - v7;
  v9 = OBJC_IVAR____TtC8NewsFeed33SharingIssueURLActivityItemSource_issueURL;
  v10 = sub_1D72585BC();
  v11 = *(*(v10 - 8) + 56);
  v11(&v2[v9], 1, 1, v10);
  v12 = [a1 identifier];
  if (!v12)
  {
    sub_1D726207C();
    v12 = sub_1D726203C();
  }

  v13 = [objc_opt_self() nss:v12 NewsURLForIssueID:?];

  if (v13)
  {
    sub_1D72584EC();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v11(v8, v14, 1, v10);
  swift_beginAccess();
  sub_1D61366E0(v8, &v2[v9]);
  swift_endAccess();
  v15 = [a1 title];
  v16 = sub_1D726207C();
  v18 = v17;

  v19 = &v2[OBJC_IVAR____TtC8NewsFeed33SharingIssueURLActivityItemSource_issueTitle];
  *v19 = v16;
  v19[1] = v18;
  v20 = [a1 coverDate];
  v21 = sub_1D726207C();
  v23 = v22;

  v24 = &v2[OBJC_IVAR____TtC8NewsFeed33SharingIssueURLActivityItemSource_issueCoverDate];
  *v24 = v21;
  v24[1] = v23;
  v25 = [a1 issueDescription];
  v26 = sub_1D726207C();
  v28 = v27;

  v29 = &v2[OBJC_IVAR____TtC8NewsFeed33SharingIssueURLActivityItemSource_issueDescription];
  *v29 = v26;
  v29[1] = v28;
  *&v2[OBJC_IVAR____TtC8NewsFeed33SharingIssueURLActivityItemSource_linkPresentationSource] = v31;
  v32.receiver = v2;
  v32.super_class = ObjectType;
  return objc_msgSendSuper2(&v32, sel_init);
}

uint64_t type metadata accessor for SharingIssueURLActivityItemSource()
{
  result = qword_1EC88DF48;
  if (!qword_1EC88DF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D68D8724()
{
  sub_1D5B54350(319, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D68D8814(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D7261ACC();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + *(type metadata accessor for DebugGroupLayoutKey() + 24));
  v10 = v9[4];
  v11 = v9[5];
  __swift_project_boxed_opaque_existential_1(v9 + 1, v10);
  (*(v11 + 64))(v64, v10, v11);
  v12 = v65;
  v13 = MEMORY[0x1E69E7CC0];
  if (v65)
  {
    v14 = v66;
    __swift_project_boxed_opaque_existential_1(v64, v65);
    v15 = (*(v14 + 32))(v12, v14);
    if (v15)
    {
      v55 = v8;
      v16 = *(v15 + 16);

      v63 = v13;
      if (v16 >> 62)
      {
        goto LABEL_57;
      }

      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v57 = v4;
      v58 = v2;
      v56 = v5;
      if (v17)
      {
        v5 = 0;
        v2 = v16 & 0xC000000000000001;
        v13 = v16 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v2)
          {
            MEMORY[0x1DA6FB460](v5, v16);
            v4 = (v5 + 1);
            if (__OFADD__(v5, 1))
            {
LABEL_17:
              __break(1u);
              goto LABEL_18;
            }
          }

          else
          {
            if (v5 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_53:
              __break(1u);
LABEL_54:
              __break(1u);
LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
LABEL_57:
              v17 = sub_1D7263BFC();
              goto LABEL_5;
            }

            v4 = (v5 + 1);
            if (__OFADD__(v5, 1))
            {
              goto LABEL_17;
            }
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
          {
            sub_1D7263E9C();
            sub_1D7263EDC();
            sub_1D7263EEC();
            sub_1D7263EAC();
          }

          else
          {
          }

          ++v5;
          if (v4 == v17)
          {
            v18 = v63;
            v13 = MEMORY[0x1E69E7CC0];
            goto LABEL_22;
          }
        }
      }

      v18 = MEMORY[0x1E69E7CC0];
LABEL_22:

      __swift_destroy_boxed_opaque_existential_1(v64);
      v19 = (v18 >> 62) & 1;
      if (v18 < 0)
      {
        LODWORD(v19) = 1;
      }

      v54 = v19;
      if (v19 == 1)
      {
        v61 = sub_1D7263BFC();
        if (v61)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v61 = *(v18 + 16);
        if (v61)
        {
LABEL_26:
          v5 = 0;
          v60 = v18 & 0xC000000000000001;
          v4 = MEMORY[0x1E69E7CC8];
          v59 = v18;
          while (1)
          {
            if (v60)
            {
              v13 = MEMORY[0x1DA6FB460](v5, v18);
              v22 = v5 + 1;
              if (__OFADD__(v5, 1))
              {
                goto LABEL_53;
              }
            }

            else
            {
              if (v5 >= *(v18 + 16))
              {
                goto LABEL_54;
              }

              v13 = *(v18 + 8 * v5 + 32);

              v22 = v5 + 1;
              if (__OFADD__(v5, 1))
              {
                goto LABEL_53;
              }
            }

            v62 = v22;
            v23 = [*(v13 + 32) itemID];
            v24 = sub_1D726207C();
            v26 = v25;

            v27 = *(v13 + 40);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v64[0] = v4;
            v2 = sub_1D5B69D90(v24, v26);
            v30 = v4[2];
            v31 = (v29 & 1) == 0;
            v32 = v30 + v31;
            if (__OFADD__(v30, v31))
            {
              goto LABEL_55;
            }

            v16 = v29;
            if (v4[3] >= v32)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                if ((v29 & 1) == 0)
                {
                  goto LABEL_39;
                }
              }

              else
              {
                sub_1D6D8193C();
                if ((v16 & 1) == 0)
                {
                  goto LABEL_39;
                }
              }
            }

            else
            {
              sub_1D6D6C83C(v32, isUniquelyReferenced_nonNull_native);
              v33 = sub_1D5B69D90(v24, v26);
              if ((v16 & 1) != (v34 & 1))
              {
                result = sub_1D726493C();
                __break(1u);
                return result;
              }

              v2 = v33;
              if ((v16 & 1) == 0)
              {
LABEL_39:
                v4 = v64[0];
                *(v64[0] + 8 * (v2 >> 6) + 64) |= 1 << v2;
                v35 = (v4[6] + 16 * v2);
                *v35 = v24;
                v35[1] = v26;
                *(v4[7] + 8 * v2) = v27;

                v36 = v4[2];
                v37 = __OFADD__(v36, 1);
                v38 = v36 + 1;
                if (v37)
                {
                  goto LABEL_56;
                }

                v4[2] = v38;
                goto LABEL_28;
              }
            }

            v4 = v64[0];
            v20 = *(v64[0] + 56);
            v21 = *(v20 + 8 * v2);
            *(v20 + 8 * v2) = v27;

LABEL_28:
            ++v5;
            v18 = v59;
            if (v62 == v61)
            {
              if (qword_1EC87DC18 != -1)
              {
                swift_once();
              }

              sub_1D5BFB840(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v39 = swift_allocObject();
              *(v39 + 16) = xmmword_1D7273AE0;
              v40 = v57;
              v41 = v58;
              v42 = v56;
              if (v54)
              {
                v43 = sub_1D7263BFC();
              }

              else
              {
                v43 = *(v18 + 16);
              }

              v44 = MEMORY[0x1E69E65A8];
              *(v39 + 56) = MEMORY[0x1E69E6530];
              *(v39 + 64) = v44;
              *(v39 + 32) = v43;
              sub_1D7262EDC();
              sub_1D725C30C();

              sub_1D5B5DA7C();
              v45 = v55;
              (*(v42 + 104))(v55, *MEMORY[0x1E69E7F88], v40);
              v46 = sub_1D72630CC();
              (*(v42 + 8))(v45, v40);
              v47 = swift_allocObject();
              *(v47 + 16) = v41;
              *(v47 + 24) = v18;
              sub_1D5B498FC(0, &qword_1EDF3C810, sub_1D5B5D6A0, MEMORY[0x1E69E62F8]);

              sub_1D725BDAC();

              v48 = swift_allocObject();
              *(v48 + 16) = v4;
              *(v48 + 24) = v18;

              v49 = sub_1D725B92C();
              sub_1D725BA7C();

              *(swift_allocObject() + 16) = v18;
              v50 = sub_1D725B92C();
              v51 = sub_1D725BB5C();

              return v51;
            }
          }
        }
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v64);
    }
  }

  else
  {
LABEL_18:
    sub_1D6330678(v64);
  }

  if (qword_1EC87DC18 != -1)
  {
    swift_once();
  }

  sub_1D7262EDC();
  sub_1D725C30C();
  v64[0] = v13;
  v64[1] = v13;
  v64[2] = 0;
  sub_1D6726A04(0, &qword_1EC8830F0, &type metadata for DebugInspectHeadlineCandidateFetch, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

char *sub_1D68D904C(uint64_t a1, unint64_t a2)
{
  sub_1D5B68374(a1 + 16, v33);
  v3 = v34;
  v4 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  if (a2 >> 62)
  {
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
LABEL_16:
    v29 = HeadlineServiceType.fetchHeadlines(for:feedPersonalizer:purpose:)(v6, 0, *MEMORY[0x1E69B5078], v3, v4);

    __swift_destroy_boxed_opaque_existential_1(v33);
    return v29;
  }

  v36 = MEMORY[0x1E69E7CC0];
  result = sub_1D6997D30(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v30 = v4;
    v31 = v3;
    v6 = v36;
    v8 = a2;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v9 = 0;
      v32 = a2;
      do
      {
        v10 = MEMORY[0x1DA6FB460](v9, v8);
        swift_beginAccess();
        v11 = v10[4];
        v12 = v10[5];
        v13 = v10[6];
        v14 = v13;
        swift_unknownObjectRetain();
        v15 = v12;
        swift_unknownObjectRelease();
        v36 = v6;
        v17 = *(v6 + 16);
        v16 = *(v6 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1D6997D30((v16 > 1), v17 + 1, 1);
          v6 = v36;
        }

        ++v9;
        *(v6 + 16) = v17 + 1;
        v18 = (v6 + 24 * v17);
        v18[4] = v11;
        v18[5] = v15;
        v18[6] = v13;
        v8 = v32;
      }

      while (v5 != v9);
    }

    else
    {
      v19 = (a2 + 32);
      do
      {
        v20 = *v19;
        swift_beginAccess();
        v21 = v20[4];
        v22 = v20[5];
        v23 = v20[6];
        v36 = v6;
        v25 = *(v6 + 16);
        v24 = *(v6 + 24);
        swift_unknownObjectRetain();
        v26 = v22;
        v27 = v23;
        if (v25 >= v24 >> 1)
        {
          sub_1D6997D30((v24 > 1), v25 + 1, 1);
          v6 = v36;
        }

        *(v6 + 16) = v25 + 1;
        v28 = (v6 + 24 * v25);
        v28[4] = v21;
        v28[5] = v26;
        v28[6] = v23;
        ++v19;
        --v5;
      }

      while (v5);
    }

    v3 = v31;
    v4 = v30;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_1D68D92A8(char **a1, uint64_t a2, unint64_t a3)
{
  v127 = a3;
  *&v144 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v144, v5);
  v133 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for FeedHeadline.State(0);
  MEMORY[0x1EEE9AC00](v134, v7);
  v143 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B498FC(0, &qword_1EDF43990, MEMORY[0x1E69B3E58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v142 = (&v125 - v11);
  v132 = type metadata accessor for FeedItem(0);
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132, v12);
  v130 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  result = [objc_opt_self() mapTableWithKeyOptions:512 valueOptions:512];
  v135 = result;
  v145 = v14;
  v146 = v14 >> 62;
  if (v14 >> 62)
  {
    result = sub_1D7263BFC();
    v16 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_3:
      if (v16 >= 1)
      {
        v17 = 0;
        v18 = v145 & 0xC000000000000001;
        while (1)
        {
          if (v18)
          {
            v20 = MEMORY[0x1DA6FB460](v17, v145);
          }

          else
          {
            v20 = *(v145 + 8 * v17 + 32);
            swift_unknownObjectRetain();
          }

          v21 = [v20 identifier];
          v22 = sub_1D726207C();
          v24 = v23;

          if (*(a2 + 16))
          {
            v25 = sub_1D5B69D90(v22, v24);
            v27 = v26;

            if (v27)
            {
              v19 = *(*(a2 + 56) + 8 * v25);
              goto LABEL_7;
            }
          }

          else
          {
          }

          v19 = 0;
LABEL_7:
          ++v17;
          [v135 setObject:v19 forKey:v20];

          swift_unknownObjectRelease();
          if (v16 == v17)
          {
            goto LABEL_15;
          }
        }
      }

      __break(1u);
      goto LABEL_99;
    }
  }

LABEL_15:
  sub_1D5B5D6A0();
  v28 = v145;
  v29 = sub_1D726265C();
  FCAssignPersonalizationScoresFromProfiles();

  if (v146)
  {
    v30 = sub_1D7263BFC();
  }

  else
  {
    v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = v127;
  v32 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    v147 = MEMORY[0x1E69E7CC0];
    result = sub_1D69992E8(0, v30 & ~(v30 >> 63), 0);
    if (v30 < 0)
    {
LABEL_99:
      __break(1u);
      return result;
    }

    v126 = v30 & ~(v30 >> 63);
    v33 = 0;
    v146 = v147;
    v141 = v28 & 0xC000000000000001;
    v128 = xmmword_1D727C330;
    v129 = v30;
    do
    {
      v140 = v33;
      if (v141)
      {
        v34 = MEMORY[0x1DA6FB460](v33, v28);
      }

      else
      {
        v34 = *(v28 + 8 * v33 + 32);
        swift_unknownObjectRetain();
      }

      v35 = sub_1D726045C();
      v36 = v142;
      (*(*(v35 - 8) + 56))(v142, 1, 1, v35);
      v37 = v134;
      v38 = *(v134 + 24);
      v39 = type metadata accessor for SharedItem();
      v40 = v143;
      (*(*(v39 - 8) + 56))(&v143[v38], 1, 1, v39);
      *v40 = 258;
      v41 = v37[7];
      *(v40 + v41) = 1;
      v42 = v37[8];
      *(v40 + v42) = 0;
      v136 = v37[9];
      *(v40 + v136) = 0;
      v138 = v37[10];
      v139 = v41;
      *(v40 + v138) = 0;
      v43 = v144;
      v44 = v133;
      *&v133[*(v144 + 48)] = v128;
      ObjectType = swift_getObjectType();
      v45 = [v34 identifier];
      v46 = sub_1D726207C();
      v48 = v47;

      *v44 = v46;
      *(v44 + 8) = v48;
      *(v44 + 40) = v34;
      *(v44 + 48) = 0;
      sub_1D5BC7A6C(v36, v44 + v43[11]);
      sub_1D5D20F80(v40, v44 + v43[10]);
      *(v44 + v43[14]) = 0;
      *(v44 + 56) = 0;
      v49 = [swift_unknownObjectRetain() title];
      v52 = 0;
      if (v49)
      {
        v50 = v49;
        v51 = [v49 ne_isNaturallyRTL];

        if (v51)
        {
          v52 = 1;
        }
      }

      *(v44 + 16) = v52;
      *(v44 + 24) = 0;
      sub_1D5BC7BD4(&v150);
      swift_unknownObjectRelease();
      v53 = v143;
      v54 = v129;
      v55 = v140;
      if (v143[v42] - 1 <= 1 && (v150 & 0x1000) == 0)
      {
        v150 |= 0x1000uLL;
      }

      v56 = v143[v138];
      v57 = 0x80000000;
      if (!v143[v138])
      {
        v57 = 0x100000000;
      }

      if ((v150 & v57) != 0)
      {
        v57 = 0;
      }

      *(v44 + 32) = v150 | v57;
      if (*(v53 + v139))
      {
        v28 = v145;
        if (*(v53 + v136))
        {
          sub_1D5BFA590(v53);
          sub_1D68DA4F4(v142);
          v58 = 1;
        }

        else if (v56)
        {
          v64 = v53;
          v65 = [v34 sourceChannel];
          sub_1D5BFA590(v64);
          sub_1D68DA4F4(v142);
          v58 = 2;
          if (v65)
          {
            v58 = v65;
          }
        }

        else
        {
          sub_1D5BFA590(v53);
          sub_1D68DA4F4(v142);
          v58 = 2;
        }
      }

      else
      {
        sub_1D5BFA590(v53);
        sub_1D68DA4F4(v142);
        v58 = 0;
        v28 = v145;
      }

      *(v44 + *(v144 + 52)) = v58;
      v59 = v130;
      sub_1D5BE2F84(v44, v130, type metadata accessor for FeedHeadline);
      swift_storeEnumTagMultiPayload();
      v60 = v146;
      v147 = v146;
      v62 = *(v146 + 16);
      v61 = *(v146 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1D69992E8(v61 > 1, v62 + 1, 1);
        v60 = v147;
      }

      v33 = v55 + 1;
      *(v60 + 16) = v62 + 1;
      v63 = (*(v131 + 80) + 32) & ~*(v131 + 80);
      v146 = v60;
      sub_1D5BE2F84(v59, v60 + v63 + *(v131 + 72) * v62, type metadata accessor for FeedItem);
    }

    while (v54 != v33);
    v147 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v126, 0);
    v66 = 0;
    v32 = v147;
    do
    {
      if (v141)
      {
        MEMORY[0x1DA6FB460](v66, v28);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v67 = [swift_unknownObjectRetain() identifier];
      v68 = sub_1D726207C();
      v70 = v69;
      swift_unknownObjectRelease_n();

      v147 = v32;
      v71 = *(v32 + 16);
      v72 = *(v32 + 24);
      if (v71 >= v72 >> 1)
      {
        sub_1D5BFC364((v72 > 1), v71 + 1, 1);
        v32 = v147;
      }

      ++v66;
      *(v32 + 16) = v71 + 1;
      v73 = v32 + 16 * v71;
      *(v73 + 32) = v68;
      *(v73 + 40) = v70;
    }

    while (v54 != v66);
    v31 = v127;
  }

  else
  {
    v146 = MEMORY[0x1E69E7CC0];
  }

  v74 = sub_1D5B86020(v32);

  v141 = v31 >> 62;
  if (v31 >> 62)
  {
    goto LABEL_82;
  }

  v75 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v75)
  {
LABEL_58:
    v76 = 0;
    v143 = (v31 & 0xFFFFFFFFFFFFFF8);
    *&v144 = v31 & 0xC000000000000001;
    v142 = (v31 + 32);
    v31 = v74 + 56;
    v145 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v144)
      {
        v77 = MEMORY[0x1DA6FB460](v76, v127);
        v78 = __OFADD__(v76++, 1);
        if (v78)
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (v76 >= *(v143 + 2))
        {
          goto LABEL_81;
        }

        v77 = v142[v76];

        v78 = __OFADD__(v76++, 1);
        if (v78)
        {
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          v75 = sub_1D7263BFC();
          if (!v75)
          {
            break;
          }

          goto LABEL_58;
        }
      }

      v79 = [*(v77 + 32) itemID];
      v80 = sub_1D726207C();
      v82 = v81;

      if (*(v74 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v83 = sub_1D7264A5C(), v84 = -1 << *(v74 + 32), v85 = v83 & ~v84, ((*(v31 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85) & 1) != 0))
      {
        v86 = ~v84;
        while (1)
        {
          v87 = (*(v74 + 48) + 16 * v85);
          v88 = *v87 == v80 && v87[1] == v82;
          if (v88 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v85 = (v85 + 1) & v86;
          if (((*(v31 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85) & 1) == 0)
          {
            goto LABEL_73;
          }
        }
      }

      else
      {
LABEL_73:

        v89 = *(v77 + 32);
        v90 = *(v77 + 40);
        v91 = *(v77 + 48);
        v92 = v91;
        swift_unknownObjectRetain();
        v93 = v90;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v145 = sub_1D698BF70(0, *(v145 + 16) + 1, 1, v145);
        }

        v95 = *(v145 + 16);
        v94 = *(v145 + 24);
        if (v95 >= v94 >> 1)
        {
          v145 = sub_1D698BF70((v94 > 1), v95 + 1, 1, v145);
        }

        v96 = v145;
        *(v145 + 16) = v95 + 1;
        v97 = &v96[24 * v95];
        *(v97 + 4) = v89;
        *(v97 + 5) = v93;
        *(v97 + 6) = v91;
      }

      if (v76 == v75)
      {
        goto LABEL_84;
      }
    }
  }

  v145 = MEMORY[0x1E69E7CC0];
LABEL_84:

  if (qword_1EC87DC18 != -1)
  {
    swift_once();
  }

  v98 = qword_1EC9BAD28;
  sub_1D5BFB840(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v99 = swift_allocObject();
  v144 = xmmword_1D7270C10;
  *(v99 + 16) = xmmword_1D7270C10;
  v100 = MEMORY[0x1E69E6530];
  v101 = v145;
  v102 = *(v146 + 16);
  v103 = MEMORY[0x1E69E65A8];
  *(v99 + 56) = MEMORY[0x1E69E6530];
  *(v99 + 64) = v103;
  *(v99 + 32) = v102;
  if (v141)
  {
    v104 = sub_1D7263BFC();
  }

  else
  {
    v104 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v99 + 96) = v100;
  *(v99 + 104) = v103;
  *(v99 + 72) = v104;
  sub_1D7262EDC();
  sub_1D725C30C();

  if (*(v101 + 2))
  {
    v105 = swift_allocObject();
    v106 = v105;
    *(v105 + 16) = v144;
    v107 = *(v101 + 2);
    *(v105 + 56) = v100;
    *(v105 + 64) = v103;
    *(v105 + 32) = v107;
    v108 = MEMORY[0x1E69E7CC0];
    if (v107)
    {
      v142 = v105;
      v143 = v104;
      *&v144 = v98;
      v147 = MEMORY[0x1E69E7CC0];
      sub_1D5BFC364(0, v107, 0);
      v108 = v147;
      v109 = (v101 + 48);
      do
      {
        v110 = *(v109 - 2);
        v111 = *(v109 - 1);
        v112 = *v109;
        swift_unknownObjectRetain();
        v113 = v111;
        v114 = v112;
        swift_unknownObjectRetain();
        v115 = v113;
        v116 = [v110 itemID];
        v117 = sub_1D726207C();
        v119 = v118;

        swift_unknownObjectRelease_n();
        v147 = v108;
        v121 = *(v108 + 16);
        v120 = *(v108 + 24);
        if (v121 >= v120 >> 1)
        {
          sub_1D5BFC364((v120 > 1), v121 + 1, 1);
          v108 = v147;
        }

        v109 += 3;
        *(v108 + 16) = v121 + 1;
        v122 = v108 + 16 * v121;
        *(v122 + 32) = v117;
        *(v122 + 40) = v119;
        --v107;
      }

      while (v107);
      v101 = v145;
      v104 = v143;
      v106 = v142;
    }

    sub_1D6726A04(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v106[12] = v123;
    v106[13] = sub_1D60655A0();
    v106[9] = v108;
    sub_1D7262EDC();
    sub_1D725C30C();
  }

  v147 = v146;
  v148 = v101;
  v149 = v104;
  sub_1D6726A04(0, &qword_1EC8830F0, &type metadata for DebugInspectHeadlineCandidateFetch, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v124 = sub_1D725BB1C();

  return v124;
}

char *sub_1D68DA114(uint64_t a1, unint64_t a2)
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
    sub_1D6726A04(0, &qword_1EC8830F0, &type metadata for DebugInspectHeadlineCandidateFetch, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1D68DA4F4(uint64_t a1)
{
  sub_1D5B498FC(0, &qword_1EDF43990, MEMORY[0x1E69B3E58], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D68DA580()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1 = [objc_opt_self() systemFontOfSize_];
  [v0 setFont_];

  v2 = [objc_opt_self() grayColor];
  [v0 setTextColor_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setLineBreakMode_];
  [v0 setNumberOfLines_];
  return v0;
}

void sub_1D68DA674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v4 = &v3[OBJC_IVAR____TtC8NewsFeed40DebugPersonalizationArticleTableViewCell_identifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC8NewsFeed40DebugPersonalizationArticleTableViewCell_thumbnailImageView;
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v7 = [v6 layer];
  [v7 setCornerRadius_];

  [v6 setContentMode_];
  [v6 setClipsToBounds_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v3[v5] = v6;
  v8 = OBJC_IVAR____TtC8NewsFeed40DebugPersonalizationArticleTableViewCell_publisherTitle;
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v10 = [objc_opt_self() systemFontOfSize_];
  [v9 setFont_];

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setNumberOfLines_];
  *&v3[v8] = v9;
  v11 = OBJC_IVAR____TtC8NewsFeed40DebugPersonalizationArticleTableViewCell_articleTitle;
  *&v3[v11] = sub_1D68DA580();
  type metadata accessor for DebugPersonalizationSelectionButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = sub_1D726203C();
  [v13 setTitle:v14 forState:0];

  v15 = *&v13[qword_1EC88E148];
  v16 = sub_1D726203C();
  v17 = objc_opt_self();
  v18 = [v17 systemImageNamed_];

  if (!v18)
  {
    __break(1u);
    goto LABEL_8;
  }

  v19 = OBJC_IVAR____TtC8NewsFeed40DebugPersonalizationArticleTableViewCell_yesButton;
  [v15 setImage_];

  *&v3[v19] = v13;
  v20 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v21 = sub_1D726203C();
  [v20 setTitle:v21 forState:0];

  v22 = *&v20[qword_1EC88E148];
  v23 = sub_1D726203C();
  v24 = [v17 systemImageNamed_];

  if (!v24)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v25 = OBJC_IVAR____TtC8NewsFeed40DebugPersonalizationArticleTableViewCell_noButton;
  [v22 setImage_];

  *&v3[v25] = v20;
  if (a3)
  {
    v26 = sub_1D726203C();
  }

  else
  {
    v26 = 0;
  }

  v102.receiver = v3;
  v102.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v102, sel_initWithStyle_reuseIdentifier_, a1, v26, a2);

  v28 = v27;
  v29 = [v28 contentView];
  v30 = OBJC_IVAR____TtC8NewsFeed40DebugPersonalizationArticleTableViewCell_thumbnailImageView;
  [v29 addSubview_];

  v31 = [v28 &selRef_navigationChromeSeparatorColor];
  v32 = OBJC_IVAR____TtC8NewsFeed40DebugPersonalizationArticleTableViewCell_publisherTitle;
  [v31 addSubview_];

  v33 = [v28 &selRef_navigationChromeSeparatorColor];
  v95 = OBJC_IVAR____TtC8NewsFeed40DebugPersonalizationArticleTableViewCell_articleTitle;
  [v33 addSubview_];

  v34 = [v28 &selRef_navigationChromeSeparatorColor];
  v97 = OBJC_IVAR____TtC8NewsFeed40DebugPersonalizationArticleTableViewCell_yesButton;
  [v34 addSubview_];

  v35 = [v28 &selRef_navigationChromeSeparatorColor];
  v99 = OBJC_IVAR____TtC8NewsFeed40DebugPersonalizationArticleTableViewCell_noButton;
  [v35 addSubview_];

  v101 = objc_opt_self();
  sub_1D5E42B34();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1D73034E0;
  v37 = [*&v28[v30] leadingAnchor];
  v38 = [v28 &selRef_navigationChromeSeparatorColor];
  v39 = [v38 &off_1E84D3528 + 1];

  v40 = [v37 constraintEqualToAnchor:v39 constant:16.0];
  *(v36 + 32) = v40;
  v41 = [*&v28[v30] topAnchor];
  v42 = [v28 &selRef_navigationChromeSeparatorColor];
  v43 = [v42 &selRef_dataProvider];

  v44 = [v41 &selRef_primaryColor + 6];
  *(v36 + 40) = v44;
  v45 = [*&v28[v30] bottomAnchor];
  v46 = [v28 &selRef_navigationChromeSeparatorColor];
  v47 = [v46 &selRef_setNeedsLayout + 5];

  v48 = [v45 &selRef_primaryColor + 6];
  *(v36 + 48) = v48;
  v49 = [*&v28[v30] widthAnchor];
  v50 = [v49 constraintEqualToConstant_];

  *(v36 + 56) = v50;
  v51 = [*&v28[v30] heightAnchor];
  v52 = [*&v28[v30] widthAnchor];
  v53 = [v51 constraintEqualToAnchor_];

  *(v36 + 64) = v53;
  v54 = [*&v28[v32] &selRef_dataProvider];
  v55 = [v28 &selRef_navigationChromeSeparatorColor];
  v56 = [v55 &selRef_dataProvider];

  v57 = [v54 &selRef_primaryColor + 6];
  *(v36 + 72) = v57;
  v58 = [*&v28[v32] leadingAnchor];
  v59 = [*&v28[v30] trailingAnchor];
  v60 = [v58 &selRef_primaryColor + 6];

  *(v36 + 80) = v60;
  v61 = [*&v28[v32] &selRef_setAxis_ + 4];
  v62 = [v28 contentView];
  v63 = [v62 &selRef_setAxis_ + 4];

  v64 = [v61 &selRef_primaryColor + 6];
  *(v36 + 88) = v64;
  v65 = [*&v28[v95] topAnchor];
  v66 = [*&v28[v32] bottomAnchor];
  v67 = [v65 &selRef_primaryColor + 6];

  *(v36 + 96) = v67;
  v68 = [*&v28[v95] leadingAnchor];
  v69 = [*&v28[v30] trailingAnchor];
  v70 = [v68 &selRef_primaryColor + 6];

  *(v36 + 104) = v70;
  v71 = [*&v28[v95] trailingAnchor];
  v72 = [v28 contentView];
  v73 = [v72 &selRef_setAxis_ + 4];

  v74 = [v71 &selRef_primaryColor + 6];
  *(v36 + 112) = v74;
  v75 = [*&v28[v95] bottomAnchor];
  v76 = [v28 contentView];
  v77 = [v76 bottomAnchor];

  v78 = [v75 constraintLessThanOrEqualToAnchor:v77 constant:-48.0];
  *(v36 + 120) = v78;
  v79 = [*&v28[v97] &selRef_setNeedsLayout + 5];
  v80 = [v28 &selRef_navigationChromeSeparatorColor];
  v81 = [v80 &selRef_setNeedsLayout + 5];

  v82 = [v79 constraintEqualToAnchor:v81 constant:-16.0];
  *(v36 + 128) = v82;
  v83 = [*&v28[v97] leadingAnchor];
  v84 = [*&v28[v30] &selRef_setAxis_ + 4];
  v85 = [v83 constraintEqualToAnchor:v84 constant:16.0];

  *(v36 + 136) = v85;
  v86 = [*&v28[v99] &selRef_setNeedsLayout + 5];
  v87 = [v28 contentView];

  v88 = [v87 &selRef_setNeedsLayout + 5];
  v89 = [v86 constraintEqualToAnchor:v88 constant:-16.0];

  *(v36 + 144) = v89;
  v90 = [*&v28[v99] leadingAnchor];
  v91 = [*&v28[v97] &selRef_setAxis_ + 4];
  v92 = [v90 constraintEqualToAnchor:v91 constant:10.0];

  *(v36 + 152) = v92;
  sub_1D60D0DF4();
  v93 = sub_1D726265C();

  [v101 activateConstraints_];
}

void sub_1D68DB2E4(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = &v1[OBJC_IVAR____TtC8NewsFeed40DebugPersonalizationArticleTableViewCell_identifier];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = OBJC_IVAR____TtC8NewsFeed40DebugPersonalizationArticleTableViewCell_thumbnailImageView;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v5 = [v4 layer];
  [v5 setCornerRadius_];

  [v4 setContentMode_];
  [v4 setClipsToBounds_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v1[v3] = v4;
  v6 = OBJC_IVAR____TtC8NewsFeed40DebugPersonalizationArticleTableViewCell_publisherTitle;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v8 = [objc_opt_self() systemFontOfSize_];
  [v7 setFont_];

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setNumberOfLines_];
  *&v1[v6] = v7;
  v9 = OBJC_IVAR____TtC8NewsFeed40DebugPersonalizationArticleTableViewCell_articleTitle;
  *&v1[v9] = sub_1D68DA580();
  type metadata accessor for DebugPersonalizationSelectionButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v12 = sub_1D726203C();
  [v11 setTitle:v12 forState:0];

  v13 = *&v11[qword_1EC88E148];
  v14 = sub_1D726203C();
  v15 = objc_opt_self();
  v16 = [v15 systemImageNamed_];

  if (!v16)
  {
    __break(1u);
    goto LABEL_7;
  }

  v17 = OBJC_IVAR____TtC8NewsFeed40DebugPersonalizationArticleTableViewCell_yesButton;
  [v13 setImage_];

  *&v1[v17] = v11;
  v18 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v19 = sub_1D726203C();
  [v18 setTitle:v19 forState:0];

  v20 = *&v18[qword_1EC88E148];
  v21 = sub_1D726203C();
  v22 = [v15 systemImageNamed_];

  if (!v22)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v23 = OBJC_IVAR____TtC8NewsFeed40DebugPersonalizationArticleTableViewCell_noButton;
  [v20 setImage_];

  *&v1[v23] = v18;
  v27.receiver = v1;
  v27.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v27, sel_initWithCoder_, a1);

  if (v24)
  {
  }
}

uint64_t sub_1D68DB680()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_prepareForReuse);
  v2 = &v0[OBJC_IVAR____TtC8NewsFeed40DebugPersonalizationArticleTableViewCell_identifier];
  *v2 = 0;
  *(v2 + 1) = 0;

  v3 = objc_opt_self();
  v4 = [v3 systemBackgroundColor];
  [v1 setBackgroundColor_];

  v5 = *&v1[OBJC_IVAR____TtC8NewsFeed40DebugPersonalizationArticleTableViewCell_yesButton];
  v6 = [v3 labelColor];
  [v5 setTitleColor:v6 forState:0];

  v7 = *&v5[qword_1EC88E148];
  v8 = [v3 labelColor];
  [v7 setTintColor_];

  v9 = [v3 secondarySystemBackgroundColor];
  [v5 setBackgroundColor_];

  v10 = *&v1[OBJC_IVAR____TtC8NewsFeed40DebugPersonalizationArticleTableViewCell_noButton];
  v11 = [v3 labelColor];
  [v10 setTitleColor:v11 forState:0];

  v12 = *&v10[qword_1EC88E148];
  v13 = [v3 labelColor];
  [v12 setTintColor_];

  v14 = [v3 secondarySystemBackgroundColor];
  [v10 setBackgroundColor_];

  sub_1D725CCDC();
  return sub_1D725CCDC();
}

uint64_t SportsDataServiceError.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D68DBA3C()
{
  result = qword_1EC88DF88;
  if (!qword_1EC88DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DF88);
  }

  return result;
}

uint64_t sub_1D68DBAA0(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69D63E8];
  v5 = MEMORY[0x1E69E6720];
  sub_1D68FD964(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v15 - v8;
  v10 = *MEMORY[0x1E69D63D0];
  v11 = sub_1D725A82C();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v9, v10, v11);
  (*(v12 + 56))(v9, 0, 1, v11);
  v13 = (*(a2 + 8))(v9, a1, a2);
  sub_1D6900328(v9, &unk_1EDF3BDC0, v4, v5, sub_1D68FD964);
  return v13;
}

uint64_t sub_1D68DBC34(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69D63E8];
  v5 = MEMORY[0x1E69E6720];
  sub_1D68FD964(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13 - v8;
  v10 = sub_1D725A82C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = (*(a2 + 8))(v9, a1, a2);
  sub_1D6900328(v9, &unk_1EDF3BDC0, v4, v5, sub_1D68FD964);
  return v11;
}

uint64_t sub_1D68DBDB0(uint64_t a1)
{
  v38 = *v1;
  v3 = type metadata accessor for SportsDataServiceResourceRequest(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D72585BC();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SportsDataServiceURLRequest(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SportsDataServiceRequest(0);
  v35 = *(v15 - 8);
  v16 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v18 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v35 - v21;
  sub_1D68FF774(a1, &v35 - v21, type metadata accessor for SportsDataServiceRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D68FFE38(v22, v14, type metadata accessor for SportsDataServiceURLRequest);
    v31 = sub_1D68DCF00(&v14[*(v11 + 24)], v14, 1);
    v32 = type metadata accessor for SportsDataServiceURLRequest;
    v33 = v14;
LABEL_6:
    sub_1D68FF714(v33, v32);
    return v31;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1D68FFE38(v22, v6, type metadata accessor for SportsDataServiceResourceRequest);
    v31 = sub_1D68DEA98(v6, a1);
    v32 = type metadata accessor for SportsDataServiceResourceRequest;
    v33 = v6;
    goto LABEL_6;
  }

  v25 = v36;
  v24 = v37;
  v26 = (*(v36 + 32))(v10, v22, v37);
  MEMORY[0x1EEE9AC00](v26, v27);
  *(&v35 - 2) = v1;
  *(&v35 - 1) = v10;
  sub_1D725BDCC();
  sub_1D68FF774(a1, v18, type metadata accessor for SportsDataServiceRequest);
  v28 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v29 = swift_allocObject();
  sub_1D68FFE38(v18, v29 + v28, type metadata accessor for SportsDataServiceRequest);
  v30 = sub_1D725B92C();
  sub_1D6900A04(0, &qword_1EDF0BCE8, sub_1D6900A98, sub_1D6900AEC);
  v31 = sub_1D725BAAC();

  (*(v25 + 8))(v10, v24);
  return v31;
}

uint64_t sub_1D68DC220(uint64_t a1)
{
  v38 = *v1;
  v3 = type metadata accessor for SportsDataServiceResourceRequest(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D72585BC();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SportsDataServiceURLRequest(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SportsDataServiceRequest(0);
  v35 = *(v15 - 8);
  v16 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v18 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v35 - v21;
  sub_1D68FF774(a1, &v35 - v21, type metadata accessor for SportsDataServiceRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D68FFE38(v22, v14, type metadata accessor for SportsDataServiceURLRequest);
    v31 = sub_1D68DD3B4(&v14[*(v11 + 24)], v14, 1);
    v32 = type metadata accessor for SportsDataServiceURLRequest;
    v33 = v14;
LABEL_6:
    sub_1D68FF714(v33, v32);
    return v31;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1D68FFE38(v22, v6, type metadata accessor for SportsDataServiceResourceRequest);
    v31 = sub_1D68DF0E4(v6, a1);
    v32 = type metadata accessor for SportsDataServiceResourceRequest;
    v33 = v6;
    goto LABEL_6;
  }

  v25 = v36;
  v24 = v37;
  v26 = (*(v36 + 32))(v10, v22, v37);
  MEMORY[0x1EEE9AC00](v26, v27);
  *(&v35 - 2) = v1;
  *(&v35 - 1) = v10;
  sub_1D725BDCC();
  sub_1D68FF774(a1, v18, type metadata accessor for SportsDataServiceRequest);
  v28 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v29 = swift_allocObject();
  sub_1D68FFE38(v18, v29 + v28, type metadata accessor for SportsDataServiceRequest);
  v30 = sub_1D725B92C();
  sub_1D6900A04(0, qword_1EDF0BCF0, sub_1D6900768, sub_1D69007BC);
  v31 = sub_1D725BAAC();

  (*(v25 + 8))(v10, v24);
  return v31;
}

uint64_t sub_1D68DC690(uint64_t a1)
{
  v38 = *v1;
  v3 = type metadata accessor for SportsDataServiceResourceRequest(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D72585BC();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SportsDataServiceURLRequest(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SportsDataServiceRequest(0);
  v35 = *(v15 - 8);
  v16 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v18 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v35 - v21;
  sub_1D68FF774(a1, &v35 - v21, type metadata accessor for SportsDataServiceRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D68FFE38(v22, v14, type metadata accessor for SportsDataServiceURLRequest);
    v31 = sub_1D68DD868(&v14[*(v11 + 24)], v14, 1);
    v32 = type metadata accessor for SportsDataServiceURLRequest;
    v33 = v14;
LABEL_6:
    sub_1D68FF714(v33, v32);
    return v31;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1D68FFE38(v22, v6, type metadata accessor for SportsDataServiceResourceRequest);
    v31 = sub_1D68DF730(v6, a1);
    v32 = type metadata accessor for SportsDataServiceResourceRequest;
    v33 = v6;
    goto LABEL_6;
  }

  v25 = v36;
  v24 = v37;
  v26 = (*(v36 + 32))(v10, v22, v37);
  MEMORY[0x1EEE9AC00](v26, v27);
  *(&v35 - 2) = v1;
  *(&v35 - 1) = v10;
  sub_1D725BDCC();
  sub_1D68FF774(a1, v18, type metadata accessor for SportsDataServiceRequest);
  v28 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v29 = swift_allocObject();
  sub_1D68FFE38(v18, v29 + v28, type metadata accessor for SportsDataServiceRequest);
  v30 = sub_1D725B92C();
  sub_1D690042C(0);
  v31 = sub_1D725BAAC();

  (*(v25 + 8))(v10, v24);
  return v31;
}

uint64_t sub_1D68DCAC8(uint64_t a1)
{
  v38 = *v1;
  v3 = type metadata accessor for SportsDataServiceResourceRequest(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D72585BC();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SportsDataServiceURLRequest(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SportsDataServiceRequest(0);
  v35 = *(v15 - 8);
  v16 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v18 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v35 - v21;
  sub_1D68FF774(a1, &v35 - v21, type metadata accessor for SportsDataServiceRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D68FFE38(v22, v14, type metadata accessor for SportsDataServiceURLRequest);
    v31 = sub_1D68DE60C(&v14[*(v11 + 24)], v14, 1);
    v32 = type metadata accessor for SportsDataServiceURLRequest;
    v33 = v14;
LABEL_6:
    sub_1D68FF714(v33, v32);
    return v31;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1D68FFE38(v22, v6, type metadata accessor for SportsDataServiceResourceRequest);
    v31 = sub_1D68E0978(v6, a1);
    v32 = type metadata accessor for SportsDataServiceResourceRequest;
    v33 = v6;
    goto LABEL_6;
  }

  v25 = v36;
  v24 = v37;
  v26 = (*(v36 + 32))(v10, v22, v37);
  MEMORY[0x1EEE9AC00](v26, v27);
  *(&v35 - 2) = v1;
  *(&v35 - 1) = v10;
  sub_1D725BDCC();
  sub_1D68FF774(a1, v18, type metadata accessor for SportsDataServiceRequest);
  v28 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v29 = swift_allocObject();
  sub_1D68FFE38(v18, v29 + v28, type metadata accessor for SportsDataServiceRequest);
  v30 = sub_1D725B92C();
  sub_1D68FFF2C(0);
  v31 = sub_1D725BAAC();

  (*(v25 + 8))(v10, v24);
  return v31;
}

uint64_t sub_1D68DCF00(uint64_t a1, uint64_t a2, int a3)
{
  v45 = a3;
  v43 = a1;
  v6 = *v3;
  v7 = v3;
  v47 = v3;
  v48 = v6;
  v8 = type metadata accessor for SportsDataServiceURLRequest(0);
  v41 = *(v8 - 8);
  v46 = *(v41 + 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D72585BC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v40 = v14;
  v51 = v7;
  v52 = a2;
  v50 = a2;
  sub_1D725BF2C();
  v36 = sub_1D725BDCC();
  v37 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(v13 + 16);
  v44 = v13 + 16;
  v16 = a1;
  v17 = v12;
  v38 = v12;
  v42(v37, v16, v12);
  v49 = type metadata accessor for SportsDataServiceURLRequest;
  sub_1D68FF774(a2, v11, type metadata accessor for SportsDataServiceURLRequest);
  v18 = *(v13 + 80);
  v19 = (v18 + 16) & ~v18;
  v20 = *(v41 + 80);
  v21 = swift_allocObject();
  v22 = *(v13 + 32);
  v39 = v13 + 32;
  v41 = v22;
  v22(v21 + v19, &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v23 = v11;
  sub_1D68FFE38(v11, v21 + ((v14 + v20 + v19) & ~v20), type metadata accessor for SportsDataServiceURLRequest);
  v24 = sub_1D725B92C();
  v35 = sub_1D725BA9C();

  sub_1D68FF774(v50, v11, v49);
  v36 = v20 | 7;
  v25 = swift_allocObject();
  sub_1D68FFE38(v11, v25 + ((v20 + 16) & ~v20), type metadata accessor for SportsDataServiceURLRequest);
  v26 = sub_1D725B92C();
  sub_1D6900A04(0, &qword_1EDF0BCE8, sub_1D6900A98, sub_1D6900AEC);
  sub_1D725BAAC();

  sub_1D68FF774(v50, v23, v49);
  v28 = v37;
  v27 = v38;
  v42(v37, v43, v38);
  v29 = (v20 + 17) & ~v20;
  v30 = (v46 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = v45;
  sub_1D68FFE38(v23, v31 + v29, type metadata accessor for SportsDataServiceURLRequest);
  *(v31 + v30) = v47;
  v41(v31 + ((v18 + v30 + 8) & ~v18), v28, v27);

  v32 = sub_1D725B92C();
  v33 = sub_1D725BB7C();

  return v33;
}

uint64_t sub_1D68DD3B4(uint64_t a1, uint64_t a2, int a3)
{
  v45 = a3;
  v43 = a1;
  v6 = *v3;
  v7 = v3;
  v47 = v3;
  v48 = v6;
  v8 = type metadata accessor for SportsDataServiceURLRequest(0);
  v41 = *(v8 - 8);
  v46 = *(v41 + 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D72585BC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v40 = v14;
  v51 = v7;
  v52 = a2;
  v50 = a2;
  sub_1D725BF2C();
  v36 = sub_1D725BDCC();
  v37 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(v13 + 16);
  v44 = v13 + 16;
  v16 = a1;
  v17 = v12;
  v38 = v12;
  v42(v37, v16, v12);
  v49 = type metadata accessor for SportsDataServiceURLRequest;
  sub_1D68FF774(a2, v11, type metadata accessor for SportsDataServiceURLRequest);
  v18 = *(v13 + 80);
  v19 = (v18 + 16) & ~v18;
  v20 = *(v41 + 80);
  v21 = swift_allocObject();
  v22 = *(v13 + 32);
  v39 = v13 + 32;
  v41 = v22;
  v22(v21 + v19, &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v23 = v11;
  sub_1D68FFE38(v11, v21 + ((v14 + v20 + v19) & ~v20), type metadata accessor for SportsDataServiceURLRequest);
  v24 = sub_1D725B92C();
  v35 = sub_1D725BA9C();

  sub_1D68FF774(v50, v11, v49);
  v36 = v20 | 7;
  v25 = swift_allocObject();
  sub_1D68FFE38(v11, v25 + ((v20 + 16) & ~v20), type metadata accessor for SportsDataServiceURLRequest);
  v26 = sub_1D725B92C();
  sub_1D6900A04(0, qword_1EDF0BCF0, sub_1D6900768, sub_1D69007BC);
  sub_1D725BAAC();

  sub_1D68FF774(v50, v23, v49);
  v28 = v37;
  v27 = v38;
  v42(v37, v43, v38);
  v29 = (v20 + 17) & ~v20;
  v30 = (v46 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = v45;
  sub_1D68FFE38(v23, v31 + v29, type metadata accessor for SportsDataServiceURLRequest);
  *(v31 + v30) = v47;
  v41(v31 + ((v18 + v30 + 8) & ~v18), v28, v27);

  v32 = sub_1D725B92C();
  v33 = sub_1D725BB7C();

  return v33;
}

uint64_t sub_1D68DD868(uint64_t a1, uint64_t a2, int a3)
{
  v50 = a3;
  v5 = v3;
  v52 = *v3;
  v53 = a1;
  v6 = type metadata accessor for SportsDataServiceURLRequest(0);
  v47 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v51 = v8;
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v13;
  v45 = v13;
  v15 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v5;
  v55 = a2;
  sub_1D725BF2C();
  v40 = sub_1D725BDCC();
  v48 = *(v11 + 16);
  v49 = v11 + 16;
  v16 = v15;
  v43 = v15;
  v44 = v10;
  v48(v15, v53, v10);
  v41 = type metadata accessor for SportsDataServiceURLRequest;
  v37 = a2;
  sub_1D68FF774(a2, v9, type metadata accessor for SportsDataServiceURLRequest);
  v17 = *(v11 + 80);
  v18 = (v17 + 16) & ~v17;
  v19 = v47[80];
  v20 = swift_allocObject();
  v21 = *(v11 + 32);
  v46 = v11 + 32;
  v47 = v21;
  (v21)(v20 + v18, v16, v10);
  v22 = v9;
  v39 = type metadata accessor for SportsDataServiceURLRequest;
  sub_1D68FFE38(v9, v20 + ((v14 + v19 + v18) & ~v19), type metadata accessor for SportsDataServiceURLRequest);
  v23 = sub_1D725B92C();
  v24 = v42;
  v36 = sub_1D725BA9C();

  v25 = v41;
  sub_1D68FF774(a2, v9, v41);
  v38 = v19 | 7;
  v26 = swift_allocObject();
  sub_1D68FFE38(v9, v26 + ((v19 + 16) & ~v19), type metadata accessor for SportsDataServiceURLRequest);
  v27 = sub_1D725B92C();
  sub_1D690042C(0);
  v40 = sub_1D725BAAC();

  sub_1D68FF774(v37, v9, v25);
  v28 = v43;
  v29 = v44;
  v48(v43, v53, v44);
  v30 = (v19 + 17) & ~v19;
  v31 = (v51 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = v50;
  sub_1D68FFE38(v22, v32 + v30, v39);
  *(v32 + v31) = v24;
  (v47)(v32 + ((v17 + v31 + 8) & ~v17), v28, v29);

  v33 = sub_1D725B92C();
  v34 = sub_1D725BB7C();

  return v34;
}

uint64_t sub_1D68DDCF4(uint64_t a1, uint64_t a2, int a3)
{
  v50 = a3;
  v5 = v3;
  v52 = *v3;
  v53 = a1;
  v6 = type metadata accessor for SportsDataServiceURLRequest(0);
  v47 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v51 = v8;
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v13;
  v45 = v13;
  v15 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v5;
  v55 = a2;
  sub_1D725BF2C();
  v40 = sub_1D725BDCC();
  v48 = *(v11 + 16);
  v49 = v11 + 16;
  v16 = v15;
  v43 = v15;
  v44 = v10;
  v48(v15, v53, v10);
  v41 = type metadata accessor for SportsDataServiceURLRequest;
  v37 = a2;
  sub_1D68FF774(a2, v9, type metadata accessor for SportsDataServiceURLRequest);
  v17 = *(v11 + 80);
  v18 = (v17 + 16) & ~v17;
  v19 = v47[80];
  v20 = swift_allocObject();
  v21 = *(v11 + 32);
  v46 = v11 + 32;
  v47 = v21;
  (v21)(v20 + v18, v16, v10);
  v22 = v9;
  v39 = type metadata accessor for SportsDataServiceURLRequest;
  sub_1D68FFE38(v9, v20 + ((v14 + v19 + v18) & ~v19), type metadata accessor for SportsDataServiceURLRequest);
  v23 = sub_1D725B92C();
  v24 = v42;
  v36 = sub_1D725BA9C();

  v25 = v41;
  sub_1D68FF774(a2, v9, v41);
  v38 = v19 | 7;
  v26 = swift_allocObject();
  sub_1D68FFE38(v9, v26 + ((v19 + 16) & ~v19), type metadata accessor for SportsDataServiceURLRequest);
  v27 = sub_1D725B92C();
  sub_1D68FF208(0);
  v40 = sub_1D725BAAC();

  sub_1D68FF774(v37, v9, v25);
  v28 = v43;
  v29 = v44;
  v48(v43, v53, v44);
  v30 = (v19 + 17) & ~v19;
  v31 = (v51 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = v50;
  sub_1D68FFE38(v22, v32 + v30, v39);
  *(v32 + v31) = v24;
  (v47)(v32 + ((v17 + v31 + 8) & ~v17), v28, v29);

  v33 = sub_1D725B92C();
  v34 = sub_1D725BB7C();

  return v34;
}

uint64_t sub_1D68DE180(uint64_t a1, uint64_t a2, int a3)
{
  v50 = a3;
  v5 = v3;
  v52 = *v3;
  v53 = a1;
  v6 = type metadata accessor for SportsDataServiceURLRequest(0);
  v47 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v51 = v8;
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v13;
  v45 = v13;
  v15 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v5;
  v55 = a2;
  sub_1D725BF2C();
  v40 = sub_1D725BDCC();
  v48 = *(v11 + 16);
  v49 = v11 + 16;
  v16 = v15;
  v43 = v15;
  v44 = v10;
  v48(v15, v53, v10);
  v41 = type metadata accessor for SportsDataServiceURLRequest;
  v37 = a2;
  sub_1D68FF774(a2, v9, type metadata accessor for SportsDataServiceURLRequest);
  v17 = *(v11 + 80);
  v18 = (v17 + 16) & ~v17;
  v19 = v47[80];
  v20 = swift_allocObject();
  v21 = *(v11 + 32);
  v46 = v11 + 32;
  v47 = v21;
  (v21)(v20 + v18, v16, v10);
  v22 = v9;
  v39 = type metadata accessor for SportsDataServiceURLRequest;
  sub_1D68FFE38(v9, v20 + ((v14 + v19 + v18) & ~v19), type metadata accessor for SportsDataServiceURLRequest);
  v23 = sub_1D725B92C();
  v24 = v42;
  v36 = sub_1D725BA9C();

  v25 = v41;
  sub_1D68FF774(a2, v9, v41);
  v38 = v19 | 7;
  v26 = swift_allocObject();
  sub_1D68FFE38(v9, v26 + ((v19 + 16) & ~v19), type metadata accessor for SportsDataServiceURLRequest);
  v27 = sub_1D725B92C();
  sub_1D68FECB4(0);
  v40 = sub_1D725BAAC();

  sub_1D68FF774(v37, v9, v25);
  v28 = v43;
  v29 = v44;
  v48(v43, v53, v44);
  v30 = (v19 + 17) & ~v19;
  v31 = (v51 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = v50;
  sub_1D68FFE38(v22, v32 + v30, v39);
  *(v32 + v31) = v24;
  (v47)(v32 + ((v17 + v31 + 8) & ~v17), v28, v29);

  v33 = sub_1D725B92C();
  v34 = sub_1D725BB7C();

  return v34;
}

uint64_t sub_1D68DE60C(uint64_t a1, uint64_t a2, int a3)
{
  v50 = a3;
  v5 = v3;
  v52 = *v3;
  v53 = a1;
  v6 = type metadata accessor for SportsDataServiceURLRequest(0);
  v47 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v51 = v8;
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v13;
  v45 = v13;
  v15 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v5;
  v55 = a2;
  sub_1D725BF2C();
  v40 = sub_1D725BDCC();
  v48 = *(v11 + 16);
  v49 = v11 + 16;
  v16 = v15;
  v43 = v15;
  v44 = v10;
  v48(v15, v53, v10);
  v41 = type metadata accessor for SportsDataServiceURLRequest;
  v37 = a2;
  sub_1D68FF774(a2, v9, type metadata accessor for SportsDataServiceURLRequest);
  v17 = *(v11 + 80);
  v18 = (v17 + 16) & ~v17;
  v19 = v47[80];
  v20 = swift_allocObject();
  v21 = *(v11 + 32);
  v46 = v11 + 32;
  v47 = v21;
  (v21)(v20 + v18, v16, v10);
  v22 = v9;
  v39 = type metadata accessor for SportsDataServiceURLRequest;
  sub_1D68FFE38(v9, v20 + ((v14 + v19 + v18) & ~v19), type metadata accessor for SportsDataServiceURLRequest);
  v23 = sub_1D725B92C();
  v24 = v42;
  v36 = sub_1D725BA9C();

  v25 = v41;
  sub_1D68FF774(a2, v9, v41);
  v38 = v19 | 7;
  v26 = swift_allocObject();
  sub_1D68FFE38(v9, v26 + ((v19 + 16) & ~v19), type metadata accessor for SportsDataServiceURLRequest);
  v27 = sub_1D725B92C();
  sub_1D68FFF2C(0);
  v40 = sub_1D725BAAC();

  sub_1D68FF774(v37, v9, v25);
  v28 = v43;
  v29 = v44;
  v48(v43, v53, v44);
  v30 = (v19 + 17) & ~v19;
  v31 = (v51 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = v50;
  sub_1D68FFE38(v22, v32 + v30, v39);
  *(v32 + v31) = v24;
  (v47)(v32 + ((v17 + v31 + 8) & ~v17), v28, v29);

  v33 = sub_1D725B92C();
  v34 = sub_1D725BB7C();

  return v34;
}

uint64_t sub_1D68DEA98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = a2;
  v5 = type metadata accessor for SportsDataServiceRequest(0);
  v55 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v56 = v7;
  v57 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68FD964(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v54 = v49 - v11;
  v53 = type metadata accessor for SportsDataServiceResourceRequest(0);
  v59 = *(v53 - 8);
  v12 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v53, v13);
  v14 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v49 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (v49 - v21);
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725C42C();
  __swift_project_value_buffer(v23, qword_1EDF17598);
  sub_1D68FF774(a1, v22, type metadata accessor for SportsDataServiceResourceRequest);
  sub_1D68FF774(a1, v18, type metadata accessor for SportsDataServiceResourceRequest);
  v24 = sub_1D725C3FC();
  v25 = sub_1D7262EDC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v49[2] = v12;
    v27 = v26;
    v28 = swift_slowAlloc();
    v49[1] = v9;
    v29 = v28;
    v60 = v28;
    *v27 = 136446466;
    v51 = v3;
    v52 = a1;
    v31 = *v22;
    v30 = v22[1];

    v50 = v14;
    sub_1D68FF714(v22, type metadata accessor for SportsDataServiceResourceRequest);
    v32 = sub_1D5BC5100(v31, v30, &v60);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2082;
    sub_1D5C41360(&v18[*(v53 + 20)], v54);
    v33 = sub_1D72620FC();
    v35 = v34;
    v14 = v50;
    sub_1D68FF714(v18, type metadata accessor for SportsDataServiceResourceRequest);
    v36 = v33;
    a1 = v52;
    v37 = sub_1D5BC5100(v36, v35, &v60);
    v3 = v51;

    *(v27 + 14) = v37;
    _os_log_impl(&dword_1D5B42000, v24, v25, "Sports data service fetching resource %{public}s, cachePolicy=%{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v29, -1, -1);
    MEMORY[0x1DA6FD500](v27, -1, -1);
  }

  else
  {

    sub_1D68FF714(v18, type metadata accessor for SportsDataServiceResourceRequest);
    v38 = sub_1D68FF714(v22, type metadata accessor for SportsDataServiceResourceRequest);
  }

  MEMORY[0x1EEE9AC00](v38, v39);
  v49[-2] = v3;
  v49[-1] = a1;
  sub_1D5F7DC80();
  sub_1D725BDCC();
  v40 = v57;
  sub_1D68FF774(v58, v57, type metadata accessor for SportsDataServiceRequest);
  v41 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v42 = swift_allocObject();
  sub_1D68FFE38(v40, v42 + v41, type metadata accessor for SportsDataServiceRequest);
  v43 = sub_1D725B92C();
  sub_1D6900A04(0, &qword_1EDF0BCE8, sub_1D6900A98, sub_1D6900AEC);
  sub_1D725BAAC();

  sub_1D68FF774(a1, v14, type metadata accessor for SportsDataServiceResourceRequest);
  v44 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v45 = swift_allocObject();
  sub_1D68FFE38(v14, v45 + v44, type metadata accessor for SportsDataServiceResourceRequest);
  v46 = sub_1D725B92C();
  v47 = sub_1D725BACC();

  return v47;
}

uint64_t sub_1D68DF0E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = a2;
  v5 = type metadata accessor for SportsDataServiceRequest(0);
  v55 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v56 = v7;
  v57 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68FD964(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v54 = v49 - v11;
  v53 = type metadata accessor for SportsDataServiceResourceRequest(0);
  v59 = *(v53 - 8);
  v12 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v53, v13);
  v14 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v49 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (v49 - v21);
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725C42C();
  __swift_project_value_buffer(v23, qword_1EDF17598);
  sub_1D68FF774(a1, v22, type metadata accessor for SportsDataServiceResourceRequest);
  sub_1D68FF774(a1, v18, type metadata accessor for SportsDataServiceResourceRequest);
  v24 = sub_1D725C3FC();
  v25 = sub_1D7262EDC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v49[2] = v12;
    v27 = v26;
    v28 = swift_slowAlloc();
    v49[1] = v9;
    v29 = v28;
    v60 = v28;
    *v27 = 136446466;
    v51 = v3;
    v52 = a1;
    v31 = *v22;
    v30 = v22[1];

    v50 = v14;
    sub_1D68FF714(v22, type metadata accessor for SportsDataServiceResourceRequest);
    v32 = sub_1D5BC5100(v31, v30, &v60);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2082;
    sub_1D5C41360(&v18[*(v53 + 20)], v54);
    v33 = sub_1D72620FC();
    v35 = v34;
    v14 = v50;
    sub_1D68FF714(v18, type metadata accessor for SportsDataServiceResourceRequest);
    v36 = v33;
    a1 = v52;
    v37 = sub_1D5BC5100(v36, v35, &v60);
    v3 = v51;

    *(v27 + 14) = v37;
    _os_log_impl(&dword_1D5B42000, v24, v25, "Sports data service fetching resource %{public}s, cachePolicy=%{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v29, -1, -1);
    MEMORY[0x1DA6FD500](v27, -1, -1);
  }

  else
  {

    sub_1D68FF714(v18, type metadata accessor for SportsDataServiceResourceRequest);
    v38 = sub_1D68FF714(v22, type metadata accessor for SportsDataServiceResourceRequest);
  }

  MEMORY[0x1EEE9AC00](v38, v39);
  v49[-2] = v3;
  v49[-1] = a1;
  sub_1D5F7DC80();
  sub_1D725BDCC();
  v40 = v57;
  sub_1D68FF774(v58, v57, type metadata accessor for SportsDataServiceRequest);
  v41 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v42 = swift_allocObject();
  sub_1D68FFE38(v40, v42 + v41, type metadata accessor for SportsDataServiceRequest);
  v43 = sub_1D725B92C();
  sub_1D6900A04(0, qword_1EDF0BCF0, sub_1D6900768, sub_1D69007BC);
  sub_1D725BAAC();

  sub_1D68FF774(a1, v14, type metadata accessor for SportsDataServiceResourceRequest);
  v44 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v45 = swift_allocObject();
  sub_1D68FFE38(v14, v45 + v44, type metadata accessor for SportsDataServiceResourceRequest);
  v46 = sub_1D725B92C();
  v47 = sub_1D725BACC();

  return v47;
}

uint64_t sub_1D68DF730(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for SportsDataServiceRequest(0);
  v60 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v61 = v9;
  v62 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68FD964(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  v59 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v58 = &v51 - v12;
  v57 = type metadata accessor for SportsDataServiceResourceRequest(0);
  v63 = *(v57 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v57, v14);
  v15 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v51 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v51 - v22);
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725C42C();
  __swift_project_value_buffer(v24, qword_1EDF17598);
  sub_1D68FF774(a1, v23, type metadata accessor for SportsDataServiceResourceRequest);
  sub_1D68FF774(a1, v19, type metadata accessor for SportsDataServiceResourceRequest);
  v25 = sub_1D725C3FC();
  v26 = sub_1D7262EDC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v53 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = v27;
    v29 = swift_slowAlloc();
    v55 = v3;
    v30 = v29;
    v64 = v29;
    *v28 = 136446466;
    v52 = a2;
    v56 = a1;
    v31 = *v23;
    v32 = v23[1];

    v54 = v6;
    sub_1D68FF714(v23, type metadata accessor for SportsDataServiceResourceRequest);
    v33 = sub_1D5BC5100(v31, v32, &v64);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2082;
    sub_1D5C41360(&v19[*(v57 + 20)], v58);
    v34 = sub_1D72620FC();
    v36 = v35;
    sub_1D68FF714(v19, type metadata accessor for SportsDataServiceResourceRequest);
    v37 = sub_1D5BC5100(v34, v36, &v64);
    a1 = v56;

    *(v28 + 14) = v37;
    a2 = v52;
    _os_log_impl(&dword_1D5B42000, v25, v26, "Sports data service fetching resource %{public}s, cachePolicy=%{public}s", v28, 0x16u);
    swift_arrayDestroy();
    v38 = v30;
    v3 = v55;
    MEMORY[0x1DA6FD500](v38, -1, -1);
    v39 = v28;
    v15 = v53;
    MEMORY[0x1DA6FD500](v39, -1, -1);
  }

  else
  {

    sub_1D68FF714(v19, type metadata accessor for SportsDataServiceResourceRequest);
    v40 = sub_1D68FF714(v23, type metadata accessor for SportsDataServiceResourceRequest);
  }

  MEMORY[0x1EEE9AC00](v40, v41);
  *(&v51 - 2) = v3;
  *(&v51 - 1) = a1;
  sub_1D5F7DC80();
  sub_1D725BDCC();
  v42 = v62;
  sub_1D68FF774(a2, v62, type metadata accessor for SportsDataServiceRequest);
  v43 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v44 = swift_allocObject();
  sub_1D68FFE38(v42, v44 + v43, type metadata accessor for SportsDataServiceRequest);
  v45 = sub_1D725B92C();
  sub_1D690042C(0);
  sub_1D725BAAC();

  sub_1D68FF774(a1, v15, type metadata accessor for SportsDataServiceResourceRequest);
  v46 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v47 = swift_allocObject();
  sub_1D68FFE38(v15, v47 + v46, type metadata accessor for SportsDataServiceResourceRequest);
  v48 = sub_1D725B92C();
  v49 = sub_1D725BACC();

  return v49;
}