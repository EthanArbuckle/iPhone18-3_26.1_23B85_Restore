uint64_t sub_1D60C63E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for DebugFormatWorkspaceKind();
  MEMORY[0x1EEE9AC00](v8, v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 144);
  v17[8] = *(a1 + 128);
  v17[9] = v11;
  v18[0] = *(a1 + 160);
  *(v18 + 15) = *(a1 + 175);
  v12 = *(a1 + 80);
  v17[4] = *(a1 + 64);
  v17[5] = v12;
  v13 = *(a1 + 112);
  v17[6] = *(a1 + 96);
  v17[7] = v13;
  v14 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v14;
  v15 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v15;
  swift_storeEnumTagMultiPayload();
  sub_1D60B8884(a2, v10, v17, a3, a4);
  return sub_1D60CBC50(v10, type metadata accessor for DebugFormatWorkspaceKind);
}

uint64_t sub_1D60C6504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for DebugFormatWorkspaceKind();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6902994(a1, v11);
  v12 = *(a1 + 144);
  v13 = *(a1 + 112);
  v42 = *(a1 + 128);
  v43 = v12;
  v14 = *(a1 + 144);
  v44[0] = *(a1 + 160);
  v15 = *(a1 + 80);
  v16 = *(a1 + 48);
  v38 = *(a1 + 64);
  v39 = v15;
  v17 = *(a1 + 80);
  v18 = *(a1 + 112);
  v40 = *(a1 + 96);
  v41 = v18;
  v19 = *(a1 + 16);
  v35[0] = *a1;
  v35[1] = v19;
  v20 = *(a1 + 48);
  v22 = *a1;
  v21 = *(a1 + 16);
  v36 = *(a1 + 32);
  v37 = v20;
  v32 = v42;
  v33 = v14;
  v34[0] = *(a1 + 160);
  v28 = v38;
  v29 = v17;
  v30 = v40;
  v31 = v13;
  v24 = v22;
  v25 = v21;
  *(v44 + 15) = *(a1 + 175);
  *(v34 + 15) = *(a1 + 175);
  v26 = v36;
  v27 = v16;
  sub_1D5ECF1C0(v35, v45);
  sub_1D60B8884(a2, v11, &v24, a3, a4);
  v45[8] = v32;
  v45[9] = v33;
  v46[0] = v34[0];
  *(v46 + 15) = *(v34 + 15);
  v45[4] = v28;
  v45[5] = v29;
  v45[6] = v30;
  v45[7] = v31;
  v45[0] = v24;
  v45[1] = v25;
  v45[2] = v26;
  v45[3] = v27;
  sub_1D5ECF21C(v45);
  return sub_1D60CBC50(v11, type metadata accessor for DebugFormatWorkspaceKind);
}

uint64_t sub_1D60C66B8()
{
  sub_1D5B54578(0, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v17[-v2];
  v4 = type metadata accessor for DebugFormatEditorLayoutContext();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {

      return 0;
    }

    v12 = Strong;

    sub_1D725B31C();

    v47[10] = v43;
    v47[11] = v44;
    v47[12] = v45;
    v48 = v46;
    v47[6] = v39;
    v47[7] = v40;
    v47[8] = v41;
    v47[9] = v42;
    v47[2] = v35;
    v47[3] = v36;
    v47[4] = v37;
    v47[5] = v38;
    v47[0] = v33;
    v47[1] = v34;
    if (sub_1D5DEA380(v47) == 1)
    {

      v29 = v43;
      v30 = v44;
      v31 = v45;
      v32 = v46;
      v25 = v39;
      v26 = v40;
      v27 = v41;
      v28 = v42;
      v21 = v35;
      v22 = v36;
      v23 = v37;
      v24 = v38;
      v19 = v33;
      v20 = v34;
      sub_1D60CB8FC(&v19, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
      return 0;
    }

    v13 = BYTE3(v45);
    v18 = BYTE4(v45);
    v29 = v43;
    v30 = v44;
    v31 = v45;
    v32 = v46;
    v25 = v39;
    v26 = v40;
    v27 = v41;
    v28 = v42;
    v21 = v35;
    v22 = v36;
    v23 = v37;
    v24 = v38;
    v19 = v33;
    v20 = v34;
    sub_1D60CB8FC(&v19, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);

    sub_1D725B31C();

    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_1D60CB820(v3, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext);
      return 0;
    }

    sub_1D60CBDE4(v3, v8, type metadata accessor for DebugFormatEditorLayoutContext);
    v14 = swift_beginAccess();
    if (!*(*(v10 + 112) + 16))
    {

      sub_1D60CBC50(v8, type metadata accessor for DebugFormatEditorLayoutContext);
      return 0;
    }

    MEMORY[0x1EEE9AC00](v14, v15);
    *&v17[-32] = v10;
    *&v17[-24] = v12;
    v17[-16] = v13;
    v17[-15] = v18;
    *&v17[-8] = v8;
    if (sub_1D5FBD55C(sub_1D60CF610, &v17[-48], &unk_1F5111660) >> 62)
    {
      sub_1D5B5A498(0, &qword_1EC883280);
      sub_1D726403C();
    }

    else
    {

      sub_1D726479C();
      sub_1D5B5A498(0, &qword_1EC883280);
    }

    sub_1D5B5A498(0, &qword_1EC885090);
    v16 = sub_1D72633FC();

    sub_1D60CBC50(v8, type metadata accessor for DebugFormatEditorLayoutContext);
    return v16;
  }

  return result;
}

uint64_t sub_1D60C6BB4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a1;
  swift_beginAccess();
  v12 = *(a2 + 112);
  if (*(v12 + 16) && (v13 = sub_1D5BEFB80(v11), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
    swift_endAccess();
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v26 = 0x80000001D73C9470;
        v16 = 0xD000000000000011;
      }

      else
      {
        v26 = 0xEF7365636170736BLL;
        v16 = 0x726F572064656546;
      }
    }

    else if (v11)
    {
      v26 = 0xED00007365636170;
      v16 = 0x736B726F5720794DLL;
    }

    else
    {
      v26 = 0xEA00000000007365;
      v16 = 0x636170736B726F57;
    }

    v25 = v16;
    v24 = v11 == 0;
    v18 = sub_1D5B5A498(0, &qword_1EC885090);
    MEMORY[0x1EEE9AC00](v18, v19);
    v21[2] = a3;
    v21[3] = a2;
    LOWORD(v22) = a4 & 0x1FF;
    v23 = a5;

    v20 = sub_1D5ECB924(sub_1D60CF648, v21, v15);

    v22 = v20;
    result = sub_1D726340C();
  }

  else
  {
    swift_endAccess();
    result = 0;
  }

  *a6 = result;
  return result;
}

uint64_t sub_1D60C6DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v51 = a4;
  v52 = a3;
  v54 = a6;
  v9 = type metadata accessor for DebugFormatEditorLayoutContext();
  v49 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v44 = v11;
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DebugFormatWorkspace();
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v48 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 28);
  v50 = a1;
  v18 = (a1 + v17);
  v20 = *(a1 + v17);
  v19 = v18[1];
  v53 = a2;

  sub_1D725B31C();

  v83[10] = v79;
  v83[11] = v80;
  v83[12] = v81;
  v84 = v82;
  v83[6] = v75;
  v83[7] = v76;
  v83[8] = v77;
  v83[9] = v78;
  v83[2] = v71;
  v83[3] = v72;
  v83[4] = v73;
  v83[5] = v74;
  v83[0] = v69;
  v83[1] = v70;
  if (sub_1D5DEA380(v83) == 1)
  {
    v65 = v79;
    v66 = v80;
    v67 = v81;
    v68 = v82;
    v61 = v75;
    v62 = v76;
    v63 = v77;
    v64 = v78;
    v57 = v71;
    v58 = v72;
    v59 = v73;
    v60 = v74;
    v55 = v69;
    v56 = v70;
    sub_1D60CB8FC(&v55, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
    v21 = v18[3];
    v45 = v18[2];
    v46 = 0;
    v22 = v18[5];
    v42 = v18[4];
    v43 = v21;
    v41 = v22;
  }

  else
  {
    v40 = a5;
    v23 = v69;
    v65 = v79;
    v66 = v80;
    v67 = v81;
    v68 = v82;
    v61 = v75;
    v62 = v76;
    v63 = v77;
    v64 = v78;
    v57 = v71;
    v58 = v72;
    v59 = v73;
    v60 = v74;
    v55 = v69;
    v56 = v70;

    sub_1D60CB8FC(&v55, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
    if (__PAIR128__(v19, v20) == v23)
    {

      v24 = v18[2];
      v25 = v18[3];
      v26 = v18[4];
      v27 = v18[5];
    }

    else
    {
      v28 = sub_1D72646CC();

      v24 = v18[2];
      v25 = v18[3];
      v26 = v18[4];
      v27 = v18[5];
      if ((v28 & 1) == 0)
      {
        v45 = v18[2];
        v46 = 0;
        a5 = v40;
        v42 = v26;
        v43 = v25;
        v41 = v27;
        goto LABEL_8;
      }
    }

    a5 = v40;
    v41 = v27;
    v42 = v26;
    v43 = v25;
    v45 = v24;
    v46 = 1;
  }

LABEL_8:
  v40 = sub_1D5B5A498(0, &qword_1EDF04350);
  v29 = v48;
  sub_1D60CBBE8(v50, v48, type metadata accessor for DebugFormatWorkspace);
  sub_1D60CBBE8(a5, v12, type metadata accessor for DebugFormatEditorLayoutContext);
  v30 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v31 = v30 + v14;
  v32 = v12;
  v33 = (*(v49 + 80) + v31 + 2) & ~*(v49 + 80);
  v34 = swift_allocObject();
  v35 = v53;
  *(v34 + 16) = v52;
  *(v34 + 24) = v35;
  sub_1D60CBDE4(v29, v34 + v30, type metadata accessor for DebugFormatWorkspace);
  v36 = (v34 + v31);
  v37 = BYTE1(v51);
  *v36 = v51;
  v36[1] = v37 & 1;
  sub_1D60CBDE4(v32, v34 + v33, type metadata accessor for DebugFormatEditorLayoutContext);

  result = sub_1D726375C();
  *v54 = result;
  return result;
}

uint64_t sub_1D60C728C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6)
{
  v32 = a3;
  v10 = type metadata accessor for DebugFormatEditorLayoutContext();
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v13 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DebugFormatWorkspace();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v17);
  v18 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54578(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v31 - v21;
  v23 = sub_1D726294C();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  sub_1D60CBBE8(a4, v18, type metadata accessor for DebugFormatWorkspace);
  sub_1D60CBBE8(a6, v13, type metadata accessor for DebugFormatEditorLayoutContext);
  v24 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v25 = v24 + v16;
  v26 = (*(v31 + 80) + v24 + v16 + 2) & ~*(v31 + 80);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v28 = v32;
  v27[4] = a2;
  v27[5] = v28;
  sub_1D60CBDE4(v18, v27 + v24, type metadata accessor for DebugFormatWorkspace);
  v29 = v27 + v25;
  *v29 = a5;
  v29[1] = HIBYTE(a5) & 1;
  sub_1D60CBDE4(v13, v27 + v26, type metadata accessor for DebugFormatEditorLayoutContext);

  sub_1D6736BD4(0, 0, v22, &unk_1D7298AD8, v27);
}

uint64_t sub_1D60C758C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_1D5B64684;

  return (sub_1D60CBE4C)(a5, a6, a7 & 0x1FF, a8);
}

uint64_t sub_1D60C7658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a5;
  v44 = a1;
  v45 = a4;
  v47 = a3;
  v46 = a6;
  v48 = type metadata accessor for DebugFormatWorkspaceCanvasSection() - 8;
  MEMORY[0x1EEE9AC00](v48, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1D7259CFC();
  v10 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v13;
  v14 = sub_1D7259F5C();
  v57 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v18;
  v42 = type metadata accessor for DebugFormatWorkspaceGroup() - 8;
  MEMORY[0x1EEE9AC00](v42, v19);
  v21 = (&v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for DebugFormatWorkspace();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v41 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60CBBE8(a2, v41, type metadata accessor for DebugFormatWorkspace);
  sub_1D60CBBE8(v44, v21, type metadata accessor for DebugFormatWorkspaceGroup);
  v44 = v15;
  v39 = *(v15 + 16);
  v39(v18, v45, v14);
  v45 = v10;
  v25 = *(v10 + 16);
  v26 = v40;
  v25(v13, v43, v40);
  v27 = v21[1];
  *v9 = *v21;
  *(v9 + 1) = v27;
  v28 = v47;
  v9[17] = v47;
  LODWORD(v43) = (v28 >> 8) & 1;
  v9[18] = v43;
  v29 = v48;
  sub_1D60CBBE8(v21, &v9[*(v48 + 36)], type metadata accessor for DebugFormatWorkspaceGroup);
  v39(&v9[*(v29 + 40)], v49, v57);
  v30 = v38;
  v25(&v9[*(v29 + 44)], v38, v26);
  v31 = v41;
  v32 = *(v21 + *(v42 + 36));
  v56 = v30;

  sub_1D62ED9D8(sub_1D60CEC1C, v55, v32);
  v33 = sub_1D72626EC();

  v51 = v31;
  v52 = v21;
  v53 = v47;
  v54 = v43;
  v34 = sub_1D5ECBB04(sub_1D60CEC3C, v50, v33);

  *&v9[*(v48 + 48)] = v34;
  if (v34 >> 62)
  {
    v35 = sub_1D7263BFC();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  (*(v44 + 8))(v49, v57);
  v9[16] = v35 < 2;
  sub_1D60CBDE4(v9, v46, type metadata accessor for DebugFormatWorkspaceCanvasSection);
  (*(v45 + 8))(v30, v26);
  sub_1D60CBC50(v21, type metadata accessor for DebugFormatWorkspaceGroup);
  return sub_1D60CBC50(v31, type metadata accessor for DebugFormatWorkspace);
}

uint64_t sub_1D60C7B38@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v27 = a4;
  v7 = type metadata accessor for FormatWorkspaceGroup();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  sub_1D5B54578(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - v13;
  v15 = sub_1D726294C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v17 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1D60CBBE8(a2, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FormatWorkspaceGroup);
  v18 = (*(v8 + 80) + 227) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v16;
  *(v19 + 40) = v17;
  v20 = *(a1 + 144);
  *(v19 + 176) = *(a1 + 128);
  *(v19 + 192) = v20;
  *(v19 + 208) = *(a1 + 160);
  *(v19 + 223) = *(a1 + 175);
  v21 = *(a1 + 80);
  *(v19 + 112) = *(a1 + 64);
  *(v19 + 128) = v21;
  v22 = *(a1 + 112);
  *(v19 + 144) = *(a1 + 96);
  *(v19 + 160) = v22;
  v23 = *(a1 + 16);
  *(v19 + 48) = *a1;
  *(v19 + 64) = v23;
  v24 = *(a1 + 48);
  *(v19 + 80) = *(a1 + 32);
  *(v19 + 96) = v24;
  sub_1D60CBDE4(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for FormatWorkspaceGroup);
  *(v19 + ((v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_1D5ECF1C0(a1, v28);

  result = sub_1D6736EB8(0, 0, v14, &unk_1D7298AB0, v19);
  *v27 = result;
  return result;
}

uint64_t sub_1D60C7E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[101] = a8;
  v8[100] = a7;
  v8[99] = a6;
  v8[98] = a5;
  v8[97] = a4;
  v8[96] = a1;
  v8[102] = type metadata accessor for DebugFormatBindingRequest();
  v8[103] = swift_task_alloc();
  v8[104] = type metadata accessor for FormatContentSubgroup();
  v8[105] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D60C7F24, 0, 0);
}

uint64_t sub_1D60C7F24()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 848) = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_weakLoadStrong();
    *(v0 + 856) = v2;
    if (v2)
    {
      v3 = *(v0 + 808);
      swift_beginAccess();
      v4 = *(v3 + 16);
      v5 = *(v3 + 32);
      v6 = *(v3 + 64);
      *(v0 + 48) = *(v3 + 48);
      *(v0 + 64) = v6;
      *(v0 + 16) = v4;
      *(v0 + 32) = v5;
      v7 = *(v3 + 80);
      v8 = *(v3 + 96);
      v9 = *(v3 + 128);
      *(v0 + 112) = *(v3 + 112);
      *(v0 + 128) = v9;
      *(v0 + 80) = v7;
      *(v0 + 96) = v8;
      v10 = *(v3 + 144);
      v11 = *(v3 + 160);
      v12 = *(v3 + 192);
      *(v0 + 176) = *(v3 + 176);
      *(v0 + 192) = v12;
      *(v0 + 144) = v10;
      *(v0 + 160) = v11;
      v13 = *(v3 + 208);
      v14 = *(v3 + 224);
      v15 = *(v3 + 240);
      *(v0 + 256) = *(v3 + 256);
      *(v0 + 224) = v14;
      *(v0 + 240) = v15;
      *(v0 + 208) = v13;
      sub_1D60CB96C(v0 + 16, v0 + 264, qword_1EDF34BC0, &type metadata for FeedPaywall, MEMORY[0x1E69E6720], sub_1D60CFD84);
      type metadata accessor for FormatJSONEncoder();
      swift_allocObject();
      sub_1D6BCED58(&unk_1F5111688);
      type metadata accessor for FormatWorkspaceGroup();
      sub_1D5B737E8(&unk_1EDF0E2F0, type metadata accessor for FormatContentSubgroup);
      *(v0 + 864) = sub_1D72578BC();
      *(v0 + 872) = v16;

      type metadata accessor for FormatJSONDecoder();
      swift_allocObject();
      sub_1D5B7BACC(&unk_1F51116B0);
      sub_1D5B737E8(&qword_1EDF3FDC0, type metadata accessor for FormatContentSubgroup);
      sub_1D725A69C();
      v20 = *(v0 + 840);
      v21 = *(v0 + 824);
      v22 = *(v0 + 816);
      v23 = *(v0 + 792);

      sub_1D60CBBE8(v20, v21 + v22[5], type metadata accessor for FormatContentSubgroup);

      sub_1D725972C();

      v24 = *(v0 + 691);
      v25 = *v23;
      v26 = *(v23 + 16);
      v27 = *(v23 + 48);
      *(v21 + 32) = *(v23 + 32);
      *(v21 + 48) = v27;
      *v21 = v25;
      *(v21 + 16) = v26;
      v28 = *(v23 + 64);
      v29 = *(v23 + 80);
      v30 = *(v23 + 112);
      *(v21 + 96) = *(v23 + 96);
      *(v21 + 112) = v30;
      *(v21 + 64) = v28;
      *(v21 + 80) = v29;
      v31 = *(v23 + 128);
      v32 = *(v23 + 144);
      v33 = *(v23 + 160);
      *(v21 + 175) = *(v23 + 175);
      *(v21 + 144) = v32;
      *(v21 + 160) = v33;
      *(v21 + 128) = v31;
      *(v21 + v22[6]) = v24;
      v34 = v21 + v22[7];
      v35 = *(v0 + 16);
      v36 = *(v0 + 32);
      v37 = *(v0 + 64);
      *(v34 + 32) = *(v0 + 48);
      *(v34 + 48) = v37;
      *v34 = v35;
      *(v34 + 16) = v36;
      v38 = *(v0 + 80);
      v39 = *(v0 + 96);
      v40 = *(v0 + 128);
      *(v34 + 96) = *(v0 + 112);
      *(v34 + 112) = v40;
      *(v34 + 64) = v38;
      *(v34 + 80) = v39;
      v41 = *(v0 + 144);
      v42 = *(v0 + 160);
      v43 = *(v0 + 192);
      *(v34 + 160) = *(v0 + 176);
      *(v34 + 176) = v43;
      *(v34 + 128) = v41;
      *(v34 + 144) = v42;
      v44 = *(v0 + 208);
      v45 = *(v0 + 224);
      v46 = *(v0 + 240);
      *(v34 + 240) = *(v0 + 256);
      *(v34 + 208) = v45;
      *(v34 + 224) = v46;
      *(v34 + 192) = v44;
      sub_1D5ECF1C0(v23, v0 + 512);
      v47 = swift_task_alloc();
      *(v0 + 880) = v47;
      *v47 = v0;
      v47[1] = sub_1D60C83F4;
      v48 = *(v0 + 824);

      return sub_1D7107ACC(v48);
    }
  }

  sub_1D60CEC74();
  swift_allocError();
  *v17 = 0;
  swift_willThrow();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D60C83F4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 888) = v1;

  if (v1)
  {
    v5 = sub_1D60C8608;
  }

  else
  {
    *(v4 + 896) = a1;
    v5 = sub_1D60C851C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D60C851C()
{
  v1 = v0[112];
  v2 = v0[105];
  v3 = v0[103];
  v4 = v0[96];
  sub_1D5B952F8(v0[108], v0[109]);
  sub_1D60CBC50(v3, type metadata accessor for DebugFormatBindingRequest);
  sub_1D60CBC50(v2, type metadata accessor for FormatContentSubgroup);

  *v4 = v1;

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D60C8608()
{
  v1 = v0[105];
  v2 = v0[103];
  sub_1D5B952F8(v0[108], v0[109]);
  sub_1D60CBC50(v2, type metadata accessor for DebugFormatBindingRequest);
  sub_1D60CBC50(v1, type metadata accessor for FormatContentSubgroup);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D60C86D8(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  if (*(v2 + 16) == *(a2 + 16) && *(v2 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC() & 1;
  }
}

uint64_t sub_1D60C8730(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1D5C5DC9C(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = (&v39 - v9);
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = *(a1 + 16);
  v12 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups;
  swift_beginAccess();
  v47 = v11;
  v13 = *(v11 + v12);
  v14 = *(v13 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v44 = a2;
  v70 = MEMORY[0x1E69E7CC0];

  result = sub_1D6998B18(0, v14, 0);
  v17 = v70;
  v43 = v14;
  if (a3 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); *(v13 + 16); i = result)
  {
    v19 = 0;
    v46 = v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v39 = a3 + 32;
    v40 = a3 & 0xC000000000000001;
    v45 = *(v7 + 72);
    v20 = 1;
    v41 = a1;
    v42 = v13;
    while (1)
    {
      v49 = v20;
      v50 = v17;
      sub_1D5C5DC00(v46 + v45 * v19, v10);
      if (!i)
      {
        v25 = a1;
        goto LABEL_15;
      }

      *&v61 = v15;
      v17 = &v61;
      sub_1D7263ECC();
      if (i < 0)
      {
        break;
      }

      v21 = v39;
      v22 = i;
      if (v40)
      {
        v23 = 0;
        do
        {
          v24 = v23 + 1;
          MEMORY[0x1DA6FB460]();

          swift_unknownObjectRelease();
          sub_1D7263E9C();
          sub_1D7263EDC();
          sub_1D7263EEC();
          sub_1D7263EAC();
          v23 = v24;
        }

        while (i != v24);
      }

      else
      {
        do
        {
          v21 += 8;

          sub_1D7263E9C();
          sub_1D7263EDC();
          sub_1D7263EEC();
          sub_1D7263EAC();
          --v22;
        }

        while (v22);
      }

      v15 = v61;
      v25 = v41;
LABEL_15:
      v48 = FormatPackageInventory.merging(with:)(v15);

      v26 = v10[7];
      v58 = v10[6];
      v59 = v26;
      v60 = v10[8];
      v27 = v10[3];
      v54 = v10[2];
      v55 = v27;
      v28 = v10[5];
      v56 = v10[4];
      v57 = v28;
      v29 = v10[1];
      v52 = *v10;
      v53 = v29;

      sub_1D5D65D5C(&v52, &v51);
      sub_1D5C5E444(v10);
      v63 = v54;
      v64 = v55;
      v68 = v59;
      v69 = v60;
      v66 = v57;
      v67 = v58;
      v65 = v56;
      v61 = v52;
      v62 = v53;
      v17 = v50;
      v13 = *(v50 + 2);
      v7 = *(v50 + 3);
      v70 = v50;
      v30 = v44;

      if (v13 >= v7 >> 1)
      {
        result = sub_1D6998B18((v7 > 1), v13 + 1, 1);
        v17 = v70;
      }

      *(v17 + 2) = v13 + 1;
      v31 = v17 + 168 * v13;
      v32 = v48;
      *(v31 + 4) = v30;
      *(v31 + 5) = v32;
      *(v31 + 6) = v25;
      *(v31 + 56) = v61;
      v33 = v62;
      v34 = v63;
      v35 = v64;
      *(v31 + 120) = v65;
      *(v31 + 104) = v35;
      *(v31 + 88) = v34;
      *(v31 + 72) = v33;
      v36 = v66;
      v37 = v67;
      v38 = v68;
      *(v31 + 184) = v69;
      *(v31 + 168) = v38;
      *(v31 + 152) = v37;
      *(v31 + 136) = v36;
      v19 = v49;
      if (v49 == v43)
      {

        return v17;
      }

      a1 = v25;
      v20 = v49 + 1;
      v15 = MEMORY[0x1E69E7CC0];
      if (v49 >= *(v42 + 16))
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_25:
    result = sub_1D7263BFC();
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D60C8B80()
{

  v1 = *(v0 + 280);
  v7[8] = *(v0 + 264);
  v7[9] = v1;
  v8[0] = *(v0 + 296);
  *(v8 + 15) = *(v0 + 311);
  v2 = *(v0 + 216);
  v7[4] = *(v0 + 200);
  v7[5] = v2;
  v3 = *(v0 + 248);
  v7[6] = *(v0 + 232);
  v7[7] = v3;
  v4 = *(v0 + 152);
  v7[0] = *(v0 + 136);
  v7[1] = v4;
  v5 = *(v0 + 184);
  v7[2] = *(v0 + 168);
  v7[3] = v5;
  sub_1D60CB8FC(v7, &qword_1EC883588, &type metadata for FormatWorkspace);

  return v0;
}

uint64_t sub_1D60C8C7C()
{
  sub_1D60C8B80();

  return swift_deallocClassInstance();
}

uint64_t sub_1D60C8CD4()
{
  v11 = sub_1D726307C();
  v0 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v1);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D726304C();
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = sub_1D7261B2C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10[1] = sub_1D5B5A498(0, &qword_1EDF1AA30);
  sub_1D7261AEC();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D5B737E8(&qword_1EDF1AA50, MEMORY[0x1E69E8030]);
  v8 = MEMORY[0x1E69E8030];
  sub_1D5B54578(0, &unk_1EDF1AE90, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1D60CBA78(&qword_1EDF1AE80, &unk_1EDF1AE90, v8);
  sub_1D7263B6C();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v11);
  result = sub_1D72630BC();
  qword_1EC883478 = result;
  return result;
}

uint64_t sub_1D60C8F58()
{
  v0 = sub_1D725785C();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  type metadata accessor for FormatJSONEncoder();
  swift_allocObject();
  sub_1D6BCED58(&unk_1F51116D8);
  sub_1D725782C();
  sub_1D725786C();
  sub_1D60CBB94();
  v2 = sub_1D72578BC();
  v4 = v3;
  sub_1D725869C();
  sub_1D5B952F8(v2, v4);
}

uint64_t sub_1D60C90E4()
{
  v0 = sub_1D725785C();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  type metadata accessor for FormatJSONEncoder();
  swift_allocObject();
  sub_1D6BCED58(&unk_1F5111700);
  sub_1D725782C();
  sub_1D725786C();
  sub_1D60CBADC();
  v2 = sub_1D72578BC();
  v4 = v3;
  sub_1D725869C();
  sub_1D5B952F8(v2, v4);
}

uint64_t sub_1D60C92B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GroupLayoutBindingContext();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[1];
  v25 = *a1;
  v17 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  v18 = *(*(a1 + *(v17 + 24)) + 16);
  v19 = *(v18 + 16);
  v20 = *(v18 + 24);
  sub_1D60CBBE8(*(a1 + *(v17 + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings, v15, type metadata accessor for GroupLayoutBindingContext);
  v21 = *(a2 + 184);
  v27 = v21;
  sub_1D60CBBE8(a3, v11, type metadata accessor for FeedContext);
  v22 = *(type metadata accessor for FormatWorkspaceGroup() + 24);

  sub_1D60CF4D8(&v27, v26, &qword_1EDF45158, sub_1D5B55A8C, sub_1D60CF5DC);
  result = sub_1D6BADF0C(v15, v21, v11, (a4 + v22));
  *a4 = v25;
  a4[1] = v16;
  a4[2] = v19;
  a4[3] = v20;
  return result;
}

uint64_t sub_1D60C9480@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v44 = a3;
  v46 = a2;
  v43 = a4;
  sub_1D5B54578(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for FormatContentSubgroup();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v47 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1D725895C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[1];
  v65 = *a1;
  v66 = v17;
  v18 = a1[3];
  *v67 = a1[2];
  *&v67[16] = v18;
  *&v67[32] = a1[4];
  v60[0] = v65;
  v60[1] = v66;
  v62 = *&v67[8];
  v61 = *v67 & 0x7FFFFFFFFFFFFFFFLL;
  v63 = *(&v18 + 1);
  v45 = *&v67[32];
  v64 = *&v67[32];
  sub_1D5CE9930(&v65, &v54);
  v19 = v45;

  sub_1D5CB71DC(v60);
  if (v19[2])
  {
    v20 = v19[6];
    *&v45 = v19[5];
  }

  else
  {

    *&v45 = v65;
    v21 = v66;
    v41 = v12;
    v42 = v8;
    v22 = *&v67[8];
    v20 = *&v67[24];
    v23 = *&v67[16];
    v40 = *&v67[40];
    v24 = *&v67[32];
    v25 = *v67 & 0x7FFFFFFFFFFFFFFFLL;

    *&v54 = v45;
    *(&v54 + 1) = v26;
    *&v45 = v26;
    v55 = v21;
    v56 = v25;
    *&v57 = v22;
    *(&v57 + 1) = v23;
    *&v58 = v20;
    v12 = v41;
    v8 = v42;
    *(&v58 + 1) = v24;
    v59 = v40;
    sub_1D5CE9930(&v65, v49);

    sub_1D5CB71DC(&v54);
  }

  sub_1D725894C();
  v42 = sub_1D725893C();
  v28 = v27;
  (*(v13 + 8))(v16, v12);
  v29 = *v67 & 0x7FFFFFFFFFFFFFFFLL;
  v54 = v65;
  v55 = v66;
  v57 = *&v67[8];
  v58 = *&v67[24];
  v56 = *v67 & 0x7FFFFFFFFFFFFFFFLL;
  v59 = *&v67[40];
  sub_1D5CE9930(&v65, v49);

  sub_1D5CB71DC(&v54);
  v31 = *(v29 + 16);
  v30 = *(v29 + 24);

  v49[0] = v65;
  v49[1] = v66;
  v50 = *v67 & 0x7FFFFFFFFFFFFFFFLL;
  v51 = *&v67[8];
  v52 = *&v67[24];
  v53 = *&v67[40];
  sub_1D60CBBE8(v46, v8, type metadata accessor for FeedContext);
  v32 = type metadata accessor for FeedContext();
  (*(*(v32 - 8) + 56))(v8, 0, 1, v32);
  sub_1D5CE9930(&v65, &v48);

  v33 = v8;
  v34 = v47;
  v35 = v68;
  sub_1D6BAE998(v49, v20, v33, v47);

  if (v35)
  {

    *v44 = v35;
  }

  else
  {
    v37 = v43;
    *v43 = v42;
    v37[1] = v28;
    v37[2] = v31;
    v37[3] = v30;
    v38 = type metadata accessor for FormatWorkspaceGroup();
    return sub_1D60CBDE4(v34, v37 + *(v38 + 24), type metadata accessor for FormatContentSubgroup);
  }

  return result;
}

void sub_1D60C998C(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v46 = a8;
  v47 = a2;
  v43 = a6;
  v44 = a7;
  v45 = a1;
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v38 - v13;
  v15 = sub_1D72585BC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v19 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v38 - v22;
  sub_1D72577BC();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D60CB820(v14, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v24 = sub_1D725AA6C();
    sub_1D5B737E8(&unk_1EC896020, MEMORY[0x1E69D64B0]);
    v25 = swift_allocError();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69D64A8], v24);
    a3(v25);
  }

  else
  {
    v42 = a9;
    v39 = a4;
    v40 = a3;
    v27 = *(v16 + 32);
    v27(v23, v14, v15);
    sub_1D6E79004();
    v43 = sub_1D725ADEC();

    v41 = sub_1D725776C();
    (*(v16 + 16))(v19, v23, v15);
    v28 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v29 = (v17 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    v31 = v39;
    *(v30 + 16) = v40;
    *(v30 + 24) = v31;
    v27((v30 + v28), v19, v15);
    v32 = (v30 + v29);
    v33 = v47;
    *v32 = v45;
    v32[1] = v33;
    aBlock[4] = v46;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D60B572C;
    aBlock[3] = v42;
    v34 = _Block_copy(aBlock);

    v35 = v43;
    v36 = v41;
    v37 = [v43 dataTaskWithRequest:v41 completionHandler:v34];
    _Block_release(v34);

    [v37 resume];
    (*(v16 + 8))(v23, v15);
  }
}

void sub_1D60C9DA0(uint64_t a1, unint64_t a2, void *a3, id a4, void (*a5)(id), int a6, int a7, void (*a8)(__int128 *), uint64_t a9)
{
  if (a4)
  {
    v10 = a4;
    v11 = a4;
LABEL_5:
    a5(v10);

    return;
  }

  if (a2 >> 60 == 15)
  {
    type metadata accessor for DebugFormatServiceError();
    sub_1D5B737E8(&qword_1EC883520, type metadata accessor for DebugFormatServiceError);
    v10 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    goto LABEL_5;
  }

  if (a3 && (objc_opt_self(), (v16 = swift_dynamicCastObjCClass()) != 0))
  {
    v17 = v16;
    sub_1D5F13DE4(a1, a2);
    v18 = a3;
    if ([v17 statusCode] == 201)
    {
      sub_1D725A6CC();
      swift_allocObject();
      sub_1D725A6BC();
      sub_1D60CED80();
      sub_1D725A69C();

      a8(&v27);
      sub_1D5B952E4(a1, a2);
    }

    else
    {
      v26 = v18;
      sub_1D725A6CC();
      swift_allocObject();
      sub_1D725A6BC();
      sub_1D60CED2C();
      sub_1D725A69C();

      v22 = v28;
      v23 = v29;
      type metadata accessor for DebugFormatServiceError();
      sub_1D5B737E8(&qword_1EC883520, type metadata accessor for DebugFormatServiceError);
      v24 = swift_allocError();
      *v25 = v27;
      *(v25 + 16) = v22;
      *(v25 + 24) = v23;
      swift_storeEnumTagMultiPayload();
      a5(v24);
      sub_1D5B952E4(a1, a2);
    }
  }

  else
  {
    type metadata accessor for DebugFormatServiceError();
    sub_1D5B737E8(&qword_1EC883520, type metadata accessor for DebugFormatServiceError);
    v19 = swift_allocError();
    *v20 = a3;
    swift_storeEnumTagMultiPayload();
    sub_1D5F13DE4(a1, a2);
    v21 = a3;
    a5(v19);

    sub_1D5B952E4(a1, a2);
  }
}

void sub_1D60CA2D4(uint64_t a1, unint64_t a2, void *a3, id a4, void (*a5)(id), int a6, int a7, void (*a8)(__int128 *), uint64_t a9)
{
  if (a4)
  {
    v10 = a4;
    v11 = a4;
LABEL_5:
    a5(v10);

    return;
  }

  if (a2 >> 60 == 15)
  {
    type metadata accessor for DebugFormatServiceError();
    sub_1D5B737E8(&qword_1EC883520, type metadata accessor for DebugFormatServiceError);
    v10 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    goto LABEL_5;
  }

  if (a3 && (objc_opt_self(), (v16 = swift_dynamicCastObjCClass()) != 0))
  {
    v17 = v16;
    sub_1D5F13DE4(a1, a2);
    v18 = a3;
    if ([v17 statusCode] == 201)
    {
      sub_1D725A6CC();
      swift_allocObject();
      sub_1D725A6BC();
      sub_1D60CFD28();
      sub_1D725A69C();

      a8(&v27);
      sub_1D5B952E4(a1, a2);
    }

    else
    {
      v26 = v18;
      sub_1D725A6CC();
      swift_allocObject();
      sub_1D725A6BC();
      sub_1D60CED2C();
      sub_1D725A69C();

      v22 = v28;
      v23 = v29;
      type metadata accessor for DebugFormatServiceError();
      sub_1D5B737E8(&qword_1EC883520, type metadata accessor for DebugFormatServiceError);
      v24 = swift_allocError();
      *v25 = v27;
      *(v25 + 16) = v22;
      *(v25 + 24) = v23;
      swift_storeEnumTagMultiPayload();
      a5(v24);
      sub_1D5B952E4(a1, a2);
    }
  }

  else
  {
    type metadata accessor for DebugFormatServiceError();
    sub_1D5B737E8(&qword_1EC883520, type metadata accessor for DebugFormatServiceError);
    v19 = swift_allocError();
    *v20 = a3;
    swift_storeEnumTagMultiPayload();
    sub_1D5F13DE4(a1, a2);
    v21 = a3;
    a5(v19);

    sub_1D5B952E4(a1, a2);
  }
}

void sub_1D60CA808(uint64_t a1, unint64_t a2, void *a3, id a4, void (*a5)(id), int a6, int a7, void (*a8)(__int128 *), uint64_t a9)
{
  if (a4)
  {
    v10 = a4;
    v11 = a4;
LABEL_5:
    a5(v10);

    return;
  }

  if (a2 >> 60 == 15)
  {
    type metadata accessor for DebugFormatServiceError();
    sub_1D5B737E8(&qword_1EC883520, type metadata accessor for DebugFormatServiceError);
    v10 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    goto LABEL_5;
  }

  if (a3 && (objc_opt_self(), (v16 = swift_dynamicCastObjCClass()) != 0))
  {
    v17 = v16;
    sub_1D5F13DE4(a1, a2);
    v18 = a3;
    if ([v17 statusCode] == 201)
    {
      sub_1D725A6CC();
      swift_allocObject();
      sub_1D725A6BC();
      sub_1D60CFB0C();
      sub_1D725A69C();

      a8(&v27);
      sub_1D5B952E4(a1, a2);
    }

    else
    {
      v26 = v18;
      sub_1D725A6CC();
      swift_allocObject();
      sub_1D725A6BC();
      sub_1D60CED2C();
      sub_1D725A69C();

      v22 = v28;
      v23 = v29;
      type metadata accessor for DebugFormatServiceError();
      sub_1D5B737E8(&qword_1EC883520, type metadata accessor for DebugFormatServiceError);
      v24 = swift_allocError();
      *v25 = v27;
      *(v25 + 16) = v22;
      *(v25 + 24) = v23;
      swift_storeEnumTagMultiPayload();
      a5(v24);
      sub_1D5B952E4(a1, a2);
    }
  }

  else
  {
    type metadata accessor for DebugFormatServiceError();
    sub_1D5B737E8(&qword_1EC883520, type metadata accessor for DebugFormatServiceError);
    v19 = swift_allocError();
    *v20 = a3;
    swift_storeEnumTagMultiPayload();
    sub_1D5F13DE4(a1, a2);
    v21 = a3;
    a5(v19);

    sub_1D5B952E4(a1, a2);
  }
}

uint64_t sub_1D60CAD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[2] = a2;
  v18[3] = a3;
  v5 = type metadata accessor for DebugFormatWorkspaceCanvasSection();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v18[1] = v3;
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D6998AC8(0, v10, 0);
    v11 = v19;
    v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v13 = (a1 + v12);
    v14 = *(v6 + 72);
    do
    {
      sub_1D676EAF8(v13, v9);
      v19 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D6998AC8(v15 > 1, v16 + 1, 1);
        v11 = v19;
      }

      *(v11 + 16) = v16 + 1;
      sub_1D60CBDE4(v9, v11 + v12 + v16 * v14, type metadata accessor for DebugFormatWorkspaceCanvasSection);
      v13 = (v13 + v14);
      --v10;
    }

    while (v10);
  }

  return v11;
}

void *sub_1D60CAED0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v32 - v7;
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v32 - v15;
  v17 = type metadata accessor for DebugFormatWorkspace();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1D60CBBE8(v16, v12, sub_1D60CB67C);
  sub_1D5B54578(0, &qword_1EC883480, sub_1D60CB67C, MEMORY[0x1E69D6748]);
  swift_allocObject();
  v18 = sub_1D725B2FC();
  sub_1D60CBC50(v16, sub_1D60CB67C);
  v2[2] = v18;
  LOWORD(v47[0]) = 512;
  sub_1D60CB6B0(0, &qword_1EC883488, &qword_1EC883490, &type metadata for DebugFormatWorkspaceDevice);
  swift_allocObject();
  v2[3] = sub_1D725B2FC();
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  v19 = MEMORY[0x1E69D6748];
  sub_1D60CFD84(0, &qword_1EC883498, MEMORY[0x1E69E6158], MEMORY[0x1E69D6748]);
  swift_allocObject();
  v2[4] = sub_1D725B2FC();
  LODWORD(v47[0]) = 0;
  sub_1D60CFD84(0, &qword_1EC88DD80, MEMORY[0x1E69E6448], v19);
  swift_allocObject();
  v20 = sub_1D725B2FC();
  v2[6] = 0;
  v2[7] = 0;
  v2[5] = v20;
  if (qword_1EC87D750 != -1)
  {
    swift_once();
  }

  sub_1D5C5DC9C(0, &qword_1EC8834A0, sub_1D60CB71C, &type metadata for DebugFormatWorkspaceCanvasSort, MEMORY[0x1E69D6D90]);
  swift_allocObject();

  v2[8] = sub_1D725977C();
  sub_1D60CB770(v47);
  v44 = v47[10];
  v45 = v47[11];
  v46 = v47[12];
  v40 = v47[6];
  v41 = v47[7];
  v42 = v47[8];
  v43 = v47[9];
  v36 = v47[2];
  v37 = v47[3];
  v38 = v47[4];
  v39 = v47[5];
  v34 = v47[0];
  v35 = v47[1];
  sub_1D60CB6B0(0, &qword_1EC8834B0, &qword_1EC8834B8, &type metadata for DebugFormatWorkspaceUserData);
  swift_allocObject();
  v2[9] = sub_1D725B2FC();
  v21 = MEMORY[0x1E69E7CC0];
  *&v34 = MEMORY[0x1E69E7CC0];
  v22 = MEMORY[0x1E69D6748];
  sub_1D5B54578(0, &qword_1EC8834C0, sub_1D60CB794, MEMORY[0x1E69D6748]);
  swift_allocObject();
  v2[10] = sub_1D725B2FC();
  *&v34 = v21;
  sub_1D5B54578(0, &qword_1EC8834D0, sub_1D60CB7C8, v22);
  swift_allocObject();
  v2[12] = sub_1D725B2FC();
  v2[13] = sub_1D605C430(v21);
  v2[14] = sub_1D605C658(v21);
  type metadata accessor for DebugFormatService();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v2[16] = v23;
  sub_1D60CB7FC(v48);
  v24 = v48[9];
  *(v2 + 33) = v48[8];
  *(v2 + 35) = v24;
  *(v2 + 37) = v49[0];
  v25 = v48[5];
  *(v2 + 25) = v48[4];
  *(v2 + 27) = v25;
  v26 = v48[7];
  *(v2 + 29) = v48[6];
  *(v2 + 31) = v26;
  v27 = v48[1];
  *(v2 + 17) = v48[0];
  *(v2 + 19) = v27;
  v28 = v48[3];
  *(v2 + 21) = v48[2];
  *(v2 + 311) = *(v49 + 15);
  *(v2 + 23) = v28;
  v2[40] = 0;
  v2[15] = a1;

  sub_1D60B57F4(v8);
  sub_1D60B5B1C(v8, &v33);
  v29 = MEMORY[0x1E6968FB0];
  sub_1D60CB820(v8, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if (v33)
  {
    v30 = v33;
  }

  else
  {
    v30 = v21;
  }

  swift_beginAccess();
  *&v32[0] = v30;
  sub_1D60CFD84(0, &qword_1EC8834D8, &type metadata for DebugFormatWorkspaceFile, MEMORY[0x1E69D6748]);
  swift_allocObject();
  v2[11] = sub_1D725B2FC();
  swift_endAccess();
  sub_1D60B62F8(v8);
  sub_1D60B5EC4(v8, &v34);
  sub_1D60CB820(v8, &qword_1EDF45B40, v29);
  v32[10] = v44;
  v32[11] = v45;
  v32[12] = v46;
  v32[6] = v40;
  v32[7] = v41;
  v32[8] = v42;
  v32[9] = v43;
  v32[2] = v36;
  v32[3] = v37;
  v32[4] = v38;
  v32[5] = v39;
  v32[0] = v34;
  v32[1] = v35;

  sub_1D725B32C();

  sub_1D725B33C();

  sub_1D725B35C();

  sub_1D725B33C();

  *(swift_allocObject() + 16) = v4;
  sub_1D725B34C();

  sub_1D725B33C();

  *(swift_allocObject() + 16) = v4;
  sub_1D725B34C();

  return v2;
}

void sub_1D60CB6B0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D60CFD84(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1D725B36C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D60CB71C()
{
  result = qword_1EC8834A8;
  if (!qword_1EC8834A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8834A8);
  }

  return result;
}

double sub_1D60CB770(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_1D60CB7FC(uint64_t a1)
{
  *(a1 + 175) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1D60CB820(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B54578(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D60CB8FC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D60CFD84(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D60CB96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D60CBA78(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B54578(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D60CBADC()
{
  result = qword_1EC8834E0;
  if (!qword_1EC8834E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8834E0);
  }

  return result;
}

uint64_t sub_1D60CBB30()
{
  sub_1D72585BC();

  return sub_1D60C8F58();
}

unint64_t sub_1D60CBB94()
{
  result = qword_1EC8834E8;
  if (!qword_1EC8834E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8834E8);
  }

  return result;
}

uint64_t sub_1D60CBBE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D60CBC50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D60CBCB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatWorkspace();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D60CBD1C()
{
  result = qword_1EC8834F0;
  if (!qword_1EC8834F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8834F0);
  }

  return result;
}

unint64_t sub_1D60CBD70()
{
  result = qword_1EC8834F8;
  if (!qword_1EC8834F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8834F8);
  }

  return result;
}

uint64_t sub_1D60CBDE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D60CBE4C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  *(v4 + 1760) = a4;
  *(v4 + 1180) = a3;
  *(v4 + 1752) = a2;
  *(v4 + 1744) = a1;
  v5 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  *(v4 + 1768) = v5;
  *(v4 + 1776) = *(v5 - 8);
  *(v4 + 1784) = swift_task_alloc();
  sub_1D5B54578(0, &qword_1EC88B4D0, type metadata accessor for DebugFormatCanvasBindResult, type metadata accessor for DebugFormatWorkspaceCanvasItemState);
  *(v4 + 1792) = v6;
  *(v4 + 1800) = swift_task_alloc();
  *(v4 + 1808) = type metadata accessor for DebugFormatCanvasBindResult();
  *(v4 + 1816) = swift_task_alloc();
  v7 = type metadata accessor for DebugFormatWorkspaceCanvasSection();
  *(v4 + 1824) = v7;
  *(v4 + 1832) = *(v7 - 8);
  *(v4 + 1840) = swift_task_alloc();
  *(v4 + 1848) = swift_task_alloc();
  v8 = sub_1D7259CFC();
  *(v4 + 1856) = v8;
  *(v4 + 1864) = *(v8 - 8);
  *(v4 + 1872) = swift_task_alloc();
  v9 = sub_1D7259F5C();
  *(v4 + 1880) = v9;
  *(v4 + 1888) = *(v9 - 8);
  *(v4 + 1896) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D60CC0C8, 0, 0);
}

void sub_1D60CC0C8()
{
  v120 = v0;
  v1 = *(v0 + 1896);
  v2 = *(v0 + 1888);
  v3 = *(v0 + 1880);
  v4 = *(v0 + 1872);
  v5 = *(v0 + 1864);
  v6 = *(v0 + 1856);
  v7 = *(v0 + 1760);
  v8 = *(v0 + 1180);
  v9 = *(v0 + 1752);
  v10 = type metadata accessor for DebugFormatEditorLayoutContext();
  (*(v2 + 16))(v1, v7 + *(v10 + 20), v3);
  (*(v5 + 16))(v4, v7, v6);
  v11 = type metadata accessor for DebugFormatWorkspace();
  *(v0 + 1904) = v11;
  v12 = *(v9 + *(v11 + 36));
  v13 = swift_task_alloc();
  *(v13 + 16) = v9;
  *(v13 + 24) = v8;
  *(v13 + 25) = HIBYTE(v8) & 1;
  *(v13 + 32) = v1;
  *(v13 + 40) = v4;
  v14 = v12;
  v15 = 0;
  v16 = sub_1D5ECBA9C(sub_1D60CE9CC, v13, v14);
  *(v0 + 1912) = v16;

  type metadata accessor for DebugFormatWorkspaceCanvasLayoutGenerator();
  v17 = swift_allocObject();
  *(v0 + 1920) = v17;
  sub_1D60CEA08(0, &unk_1EC88B480, &qword_1EC883500, &unk_1EC88B490, type metadata accessor for DebugFormatCanvasBindResult);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  v19 = MEMORY[0x1E69E7CC8];
  *(v18 + 16) = MEMORY[0x1E69E7CC8];
  v17[3] = v18;
  sub_1D60CEA08(0, &unk_1EC88B4A0, &qword_1EC883508, &qword_1EC88B4B0, type metadata accessor for DebugFormatCanvasViewResult);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v19;
  v17[4] = v20;
  type metadata accessor for DebugFormatCanvasGenerator();
  swift_allocObject();

  v17[2] = sub_1D5F26CE8(v21);
  v22 = *(v16 + 16);
  *(v0 + 1928) = v22;
  if (!v22)
  {
LABEL_15:
    v38 = *(v0 + 1744);
    v39 = type metadata accessor for DebugFormatWorkspaceCanvasSorter();
    v40 = objc_allocWithZone(v39);
    *&v40[OBJC_IVAR____TtC8NewsFeed32DebugFormatWorkspaceCanvasSorter____lazy_storage___sortBarButtonItem] = 0;
    *&v40[OBJC_IVAR____TtC8NewsFeed32DebugFormatWorkspaceCanvasSorter_editor] = v38;
    *(v0 + 1704) = v40;
    *(v0 + 1712) = v39;

    v41 = objc_msgSendSuper2((v0 + 1704), sel_init);
    *(v0 + 2000) = v41;

    sub_1D725972C();

    v42 = *(v0 + 1912);
    if (*(v0 + 627) == 1)
    {
      v43 = v41;
      v15 = sub_1D60CAD44(v42, v43, v118);

      v42 = v15;
    }

    *(v0 + 2008) = v42;
    v44 = *(v42 + 16);
    *(v0 + 2016) = v44;
    v45 = MEMORY[0x1E69E7CC0];
    if (!v44)
    {
LABEL_29:

      v60 = *(v0 + 2000);
      if (*(v45 + 16))
      {
        v61 = *(v0 + 1904);
        v62 = *(v0 + 1180);
        v63 = *(v0 + 1752);
        v64 = (v63 + *(v61 + 20));
        v65 = *v64;
        v66 = v64[1];
        v67 = v64[3];
        *(v0 + 848) = v64[2];
        *(v0 + 864) = v67;
        *(v0 + 816) = v65;
        *(v0 + 832) = v66;
        v68 = v64[4];
        v69 = v64[5];
        v70 = v64[7];
        *(v0 + 912) = v64[6];
        *(v0 + 928) = v70;
        *(v0 + 880) = v68;
        *(v0 + 896) = v69;
        v71 = v64[8];
        v72 = v64[9];
        v73 = v64[10];
        *(v0 + 991) = *(v64 + 175);
        *(v0 + 960) = v72;
        *(v0 + 976) = v73;
        *(v0 + 944) = v71;
        v74 = *(v0 + 816);
        v75 = *(v0 + 824);
        v107 = v64[1];
        v108 = v64[2];
        v115 = *(v64 + 145);
        v116 = *(v64 + 161);
        v117 = *(v64 + 177);
        v111 = *(v64 + 81);
        v112 = *(v64 + 97);
        v113 = *(v64 + 113);
        v114 = *(v64 + 129);
        v109 = *(v64 + 49);
        v110 = *(v64 + 65);
        strcpy((v0 + 632), "builtin:editor");
        *(v0 + 647) = -18;
        v76 = v64[2];
        *(v0 + 648) = v64[1];
        *(v0 + 664) = v76;
        *(v0 + 680) = 0;
        *(v0 + 681) = *(v64 + 49);
        v77 = *(v64 + 65);
        v78 = *(v64 + 81);
        v79 = *(v64 + 113);
        *(v0 + 729) = *(v64 + 97);
        *(v0 + 745) = v79;
        *(v0 + 697) = v77;
        *(v0 + 713) = v78;
        v80 = *(v64 + 177);
        v81 = *(v64 + 129);
        v82 = *(v64 + 161);
        *(v0 + 777) = *(v64 + 145);
        *(v0 + 793) = v82;
        *(v0 + 761) = v81;
        *(v0 + 809) = v80;
        v83 = *(v63 + *(v61 + 32));
        v84 = *(v0 + 776);
        *(v0 + 160) = *(v0 + 760);
        *(v0 + 176) = v84;
        *(v0 + 192) = *(v0 + 792);
        *(v0 + 207) = *(v0 + 807);
        v85 = *(v0 + 712);
        *(v0 + 96) = *(v0 + 696);
        *(v0 + 112) = v85;
        v86 = *(v0 + 744);
        *(v0 + 128) = *(v0 + 728);
        *(v0 + 144) = v86;
        v87 = *(v0 + 648);
        *(v0 + 32) = *(v0 + 632);
        *(v0 + 48) = v87;
        v88 = *(v0 + 680);
        *(v0 + 64) = *(v0 + 664);
        *(v0 + 80) = v88;
        *(v0 + 16) = v74;
        *(v0 + 24) = v75;
        *(v0 + 211) = v62;
        *(v0 + 212) = HIBYTE(v62) & 1;
        *(v0 + 216) = v83;
        *(v0 + 224) = v45;
        nullsub_1();
        v89 = *(v0 + 192);
        v118[10] = *(v0 + 176);
        v118[11] = v89;
        v118[12] = *(v0 + 208);
        v119 = *(v0 + 224);
        v90 = *(v0 + 128);
        v118[6] = *(v0 + 112);
        v118[7] = v90;
        v91 = *(v0 + 160);
        v118[8] = *(v0 + 144);
        v118[9] = v91;
        v92 = *(v0 + 64);
        v118[2] = *(v0 + 48);
        v118[3] = v92;
        v93 = *(v0 + 96);
        v118[4] = *(v0 + 80);
        v118[5] = v93;
        v94 = *(v0 + 32);
        v118[0] = *(v0 + 16);
        v118[1] = v94;
        sub_1D5ECF1C0(v0 + 816, v0 + 1000);
        sub_1D5ECF1C0(v0 + 632, v0 + 1184);

        sub_1D6AA103C(v118);
        v95 = *(v0 + 192);
        *(v0 + 392) = *(v0 + 176);
        *(v0 + 408) = v95;
        *(v0 + 424) = *(v0 + 208);
        *(v0 + 440) = *(v0 + 224);
        v96 = *(v0 + 128);
        *(v0 + 328) = *(v0 + 112);
        *(v0 + 344) = v96;
        v97 = *(v0 + 160);
        *(v0 + 360) = *(v0 + 144);
        *(v0 + 376) = v97;
        v98 = *(v0 + 64);
        *(v0 + 264) = *(v0 + 48);
        *(v0 + 280) = v98;
        v99 = *(v0 + 96);
        *(v0 + 296) = *(v0 + 80);
        *(v0 + 312) = v99;
        v100 = *(v0 + 32);
        *(v0 + 232) = *(v0 + 16);
        *(v0 + 248) = v100;

        sub_1D725B32C();

        sub_1D6AA1610();

        strcpy((v0 + 448), "builtin:editor");
        *(v0 + 463) = -18;
        *(v0 + 464) = v107;
        *(v0 + 480) = v108;
        *(v0 + 496) = 0;
        *(v0 + 593) = v115;
        *(v0 + 609) = v116;
        *(v0 + 625) = v117;
        *(v0 + 529) = v111;
        *(v0 + 545) = v112;
        *(v0 + 561) = v113;
        *(v0 + 577) = v114;
        *(v0 + 497) = v109;
        *(v0 + 513) = v110;
        sub_1D5ECF21C(v0 + 448);
      }

      else
      {
      }

      v101 = *(v0 + 1896);
      v102 = *(v0 + 1888);
      v103 = *(v0 + 1880);
      (*(*(v0 + 1864) + 8))(*(v0 + 1872), *(v0 + 1856));
      (*(v102 + 8))(v101, v103);

      v104 = *(v0 + 8);

      v104();
      return;
    }

    v46 = 0;
    v47 = *(v0 + 1832);
    *(v0 + 812) = *(*(v0 + 1824) + 40);
    *(v0 + 996) = *(v47 + 80);
    while (1)
    {
      *(v0 + 2032) = v45;
      *(v0 + 2024) = v46;
      v48 = *(v0 + 2008);
      if (v46 >= *(v48 + 16))
      {
        goto LABEL_40;
      }

      v49 = *(v0 + 812);
      v50 = *(v0 + 1840);
      sub_1D60CBBE8(v48 + ((*(v0 + 996) + 32) & ~*(v0 + 996)) + *(*(v0 + 1832) + 72) * v46, v50, type metadata accessor for DebugFormatWorkspaceCanvasSection);
      v25 = *(v50 + v49);

      sub_1D60CBC50(v50, type metadata accessor for DebugFormatWorkspaceCanvasSection);
      if (v25 >> 62)
      {
        v55 = sub_1D7263BFC();
        if (v55)
        {
LABEL_25:
          if ((v25 & 0xC000000000000001) != 0)
          {
            goto LABEL_43;
          }

          if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v56 = *(v25 + 32);

            goto LABEL_28;
          }

          __break(1u);
          goto LABEL_45;
        }
      }

      else
      {
        v55 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v55)
        {
          goto LABEL_25;
        }
      }

      v46 = *(v0 + 2024) + 1;
      if (v46 == *(v0 + 2016))
      {
        goto LABEL_29;
      }
    }
  }

  *(v0 + 628) = *(*(v0 + 1832) + 80);
  *(v0 + 1936) = 0;
  v23 = *(v0 + 1912);
  if (!*(v23 + 16))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v24 = 0;
  while (1)
  {
    v25 = *(v0 + 1848);
    v26 = *(v0 + 1824);
    sub_1D60CBBE8(v23 + ((*(v0 + 628) + 32) & ~*(v0 + 628)) + *(*(v0 + 1832) + 72) * v24, v25, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    v27 = *(v25 + *(v26 + 40));
    *(v0 + 1944) = v27;
    if (v27 >> 62)
    {
      break;
    }

    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 1952) = v28;
    if (v28)
    {
      goto LABEL_10;
    }

LABEL_6:
    v29 = *(v0 + 1928);
    v30 = *(v0 + 1936) + 1;
    sub_1D60CBC50(*(v0 + 1848), type metadata accessor for DebugFormatWorkspaceCanvasSection);
    if (v30 == v29)
    {
      goto LABEL_15;
    }

    v24 = *(v0 + 1936) + 1;
    *(v0 + 1936) = v24;
    v23 = *(v0 + 1912);
    if (v24 >= *(v23 + 16))
    {
      goto LABEL_39;
    }
  }

  v31 = sub_1D7263BFC();
  *(v0 + 1952) = v31;
  if (!v31)
  {
    goto LABEL_6;
  }

LABEL_10:
  v32 = *(v0 + 1944);
  if ((v32 & 0xC000000000000001) == 0)
  {
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v33 = *(v32 + 32);

      goto LABEL_13;
    }

    __break(1u);
LABEL_43:
    v56 = MEMORY[0x1DA6FB460](0, v25);
LABEL_28:
    *(v0 + 2040) = v56;

    *(v0 + 2048) = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas;
    sub_1D725B77C();
    v57 = *(v0 + 1728);
    *(v0 + 2056) = v57;
    v58 = swift_task_alloc();
    *(v0 + 2064) = v58;
    v59 = type metadata accessor for DebugFormatBindingResult();
    v53 = sub_1D5B49474(0, &qword_1EDF3C5D0);
    *v58 = v0;
    v58[1] = sub_1D60CDFF8;
    v54 = MEMORY[0x1E69E7288];
    v55 = v0 + 1736;
    v51 = v57;
    v52 = v59;
LABEL_36:

LABEL_45:
    MEMORY[0x1EEE6DA10](v55, v51, v52, v53, v54);
    return;
  }

LABEL_41:
  v33 = MEMORY[0x1DA6FB460](0);
LABEL_13:
  *(v0 + 1960) = v33;
  *(v0 + 1968) = 1;
  v34 = *(v0 + 1920);
  v35 = *(v0 + 1848);
  v36 = *(v34 + 24);
  v37 = swift_task_alloc();
  v37[2] = v33;
  v37[3] = v35;
  v37[4] = v34;
  os_unfair_lock_lock((v36 + 24));
  sub_1D60CEB68((v36 + 16), (v0 + 1720));
  os_unfair_lock_unlock((v36 + 24));
  if (!v15)
  {
    v105 = *(v0 + 1720);
    *(v0 + 1976) = v105;

    v106 = swift_task_alloc();
    *(v0 + 1984) = v106;
    v53 = sub_1D5B49474(0, &qword_1EDF3C5D0);
    *v106 = v0;
    v106[1] = sub_1D60CCBB4;
    v55 = *(v0 + 1816);
    v52 = *(v0 + 1808);
    v54 = MEMORY[0x1E69E7288];
    v51 = v105;
    goto LABEL_36;
  }
}

uint64_t sub_1D60CCBB4()
{
  *(*v1 + 1992) = v0;

  if (v0)
  {
    v2 = sub_1D60CD66C;
  }

  else
  {
    v2 = sub_1D60CCCC8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D60CCCC8()
{
  v103 = v0;
  v1 = *(v0 + 1960);
  v2 = *(v0 + 1816);
  v3 = *(v0 + 1800);

  sub_1D60CBDE4(v2, v3, type metadata accessor for DebugFormatCanvasBindResult);
  swift_storeEnumTagMultiPayload();
  v4 = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_state;
  swift_beginAccess();
  sub_1D60CEB88(v3, v1 + v4);
  swift_endAccess();
  v5 = *(v0 + 1992);
  v6 = *(v0 + 1968);
  v7 = *(v0 + 1952);

  if (v6 != v7)
  {
    v8 = *(v0 + 1968);
LABEL_10:
    v17 = *(v0 + 1944);
    if ((v17 & 0xC000000000000001) != 0)
    {
LABEL_41:
      v18 = MEMORY[0x1DA6FB460](v8);
    }

    else
    {
      if (v8 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v18 = *(v17 + 8 * v8 + 32);
    }

    *(v0 + 1960) = v18;
    *(v0 + 1968) = v8 + 1;
    if (!__OFADD__(v8, 1))
    {
      v19 = *(v0 + 1920);
      v20 = *(v0 + 1848);
      v21 = *(v19 + 24);
      v22 = swift_task_alloc();
      v22[2] = v18;
      v22[3] = v20;
      v22[4] = v19;
      os_unfair_lock_lock((v21 + 24));
      sub_1D60CEB68((v21 + 16), (v0 + 1720));
      os_unfair_lock_unlock((v21 + 24));
      if (v5)
      {
        return;
      }

      v23 = *(v0 + 1720);
      *(v0 + 1976) = v23;

      v24 = swift_task_alloc();
      *(v0 + 1984) = v24;
      v25 = sub_1D5B49474(0, &qword_1EDF3C5D0);
      *v24 = v0;
      v24[1] = sub_1D60CCBB4;
      v26 = *(v0 + 1816);
      v27 = *(v0 + 1808);
      v28 = MEMORY[0x1E69E7288];
      v29 = v23;
      goto LABEL_30;
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v41 = MEMORY[0x1DA6FB460](0, v8);
LABEL_29:
    *(v0 + 2040) = v41;

    *(v0 + 2048) = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas;
    sub_1D725B77C();
    v42 = *(v0 + 1728);
    *(v0 + 2056) = v42;
    v43 = swift_task_alloc();
    *(v0 + 2064) = v43;
    v44 = type metadata accessor for DebugFormatBindingResult();
    v25 = sub_1D5B49474(0, &qword_1EDF3C5D0);
    *v43 = v0;
    v43[1] = sub_1D60CDFF8;
    v28 = MEMORY[0x1E69E7288];
    v26 = v0 + 1736;
    v29 = v42;
    v27 = v44;
LABEL_30:

LABEL_46:
    MEMORY[0x1EEE6DA10](v26, v29, v27, v25, v28);
    return;
  }

  while (1)
  {
    v8 = *(v0 + 1928);
    v9 = *(v0 + 1936) + 1;
    sub_1D60CBC50(*(v0 + 1848), type metadata accessor for DebugFormatWorkspaceCanvasSection);
    if (v9 == v8)
    {
      break;
    }

    v10 = *(v0 + 1936) + 1;
    *(v0 + 1936) = v10;
    v11 = *(v0 + 1912);
    if (v10 >= *(v11 + 16))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v12 = *(v0 + 1848);
    v13 = *(v0 + 1824);
    sub_1D60CBBE8(v11 + ((*(v0 + 628) + 32) & ~*(v0 + 628)) + *(*(v0 + 1832) + 72) * v10, v12, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    v14 = *(v12 + *(v13 + 40));
    *(v0 + 1944) = v14;
    if (v14 >> 62)
    {
      v16 = sub_1D7263BFC();
      *(v0 + 1952) = v16;
      if (v16)
      {
LABEL_8:
        v8 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1952) = v15;
      if (v15)
      {
        goto LABEL_8;
      }
    }
  }

  v30 = *(v0 + 1744);
  v31 = type metadata accessor for DebugFormatWorkspaceCanvasSorter();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtC8NewsFeed32DebugFormatWorkspaceCanvasSorter____lazy_storage___sortBarButtonItem] = 0;
  *&v32[OBJC_IVAR____TtC8NewsFeed32DebugFormatWorkspaceCanvasSorter_editor] = v30;
  *(v0 + 1704) = v32;
  *(v0 + 1712) = v31;

  v33 = objc_msgSendSuper2((v0 + 1704), sel_init);
  *(v0 + 2000) = v33;

  sub_1D725972C();

  v8 = *(v0 + 1912);
  if (*(v0 + 627) == 1)
  {
    v34 = v33;
    v5 = sub_1D60CAD44(v8, v34, v101);

    v8 = v5;
  }

  *(v0 + 2008) = v8;
  v35 = *(v8 + 16);
  *(v0 + 2016) = v35;
  v36 = MEMORY[0x1E69E7CC0];
  if (v35)
  {
    v37 = 0;
    v38 = *(v0 + 1832);
    *(v0 + 812) = *(*(v0 + 1824) + 40);
    *(v0 + 996) = *(v38 + 80);
    do
    {
      *(v0 + 2032) = v36;
      *(v0 + 2024) = v37;
      v39 = *(v0 + 2008);
      if (v37 >= *(v39 + 16))
      {
        goto LABEL_40;
      }

      v40 = *(v0 + 812);
      v5 = *(v0 + 1840);
      sub_1D60CBBE8(v39 + ((*(v0 + 996) + 32) & ~*(v0 + 996)) + *(*(v0 + 1832) + 72) * v37, v5, type metadata accessor for DebugFormatWorkspaceCanvasSection);
      v8 = *(v5 + v40);

      sub_1D60CBC50(v5, type metadata accessor for DebugFormatWorkspaceCanvasSection);
      if (v8 >> 62)
      {
        v26 = sub_1D7263BFC();
        if (v26)
        {
LABEL_26:
          if ((v8 & 0xC000000000000001) != 0)
          {
            goto LABEL_44;
          }

          if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v41 = *(v8 + 32);

            goto LABEL_29;
          }

          __break(1u);
          goto LABEL_46;
        }
      }

      else
      {
        v26 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v26)
        {
          goto LABEL_26;
        }
      }

      v37 = *(v0 + 2024) + 1;
    }

    while (v37 != *(v0 + 2016));
  }

  v45 = *(v0 + 2000);
  if (*(v36 + 16))
  {
    v46 = *(v0 + 1904);
    v47 = *(v0 + 1180);
    v48 = *(v0 + 1752);
    v49 = (v48 + *(v46 + 20));
    v50 = *v49;
    v51 = v49[1];
    v52 = v49[3];
    *(v0 + 848) = v49[2];
    *(v0 + 864) = v52;
    *(v0 + 816) = v50;
    *(v0 + 832) = v51;
    v53 = v49[4];
    v54 = v49[5];
    v55 = v49[7];
    *(v0 + 912) = v49[6];
    *(v0 + 928) = v55;
    *(v0 + 880) = v53;
    *(v0 + 896) = v54;
    v56 = v49[8];
    v57 = v49[9];
    v58 = v49[10];
    *(v0 + 991) = *(v49 + 175);
    *(v0 + 960) = v57;
    *(v0 + 976) = v58;
    *(v0 + 944) = v56;
    v59 = *(v0 + 816);
    v60 = *(v0 + 824);
    v90 = v49[1];
    v91 = v49[2];
    v98 = *(v49 + 145);
    v99 = *(v49 + 161);
    v100 = *(v49 + 177);
    v94 = *(v49 + 81);
    v95 = *(v49 + 97);
    v96 = *(v49 + 113);
    v97 = *(v49 + 129);
    v92 = *(v49 + 49);
    v93 = *(v49 + 65);
    strcpy((v0 + 632), "builtin:editor");
    *(v0 + 647) = -18;
    v61 = v49[2];
    *(v0 + 648) = v49[1];
    *(v0 + 664) = v61;
    *(v0 + 680) = 0;
    *(v0 + 681) = *(v49 + 49);
    v62 = *(v49 + 65);
    v63 = *(v49 + 81);
    v64 = *(v49 + 113);
    *(v0 + 729) = *(v49 + 97);
    *(v0 + 745) = v64;
    *(v0 + 697) = v62;
    *(v0 + 713) = v63;
    v65 = *(v49 + 177);
    v66 = *(v49 + 129);
    v67 = *(v49 + 161);
    *(v0 + 777) = *(v49 + 145);
    *(v0 + 793) = v67;
    *(v0 + 761) = v66;
    *(v0 + 809) = v65;
    v68 = *(v48 + *(v46 + 32));
    v69 = *(v0 + 776);
    *(v0 + 160) = *(v0 + 760);
    *(v0 + 176) = v69;
    *(v0 + 192) = *(v0 + 792);
    *(v0 + 207) = *(v0 + 807);
    v70 = *(v0 + 712);
    *(v0 + 96) = *(v0 + 696);
    *(v0 + 112) = v70;
    v71 = *(v0 + 744);
    *(v0 + 128) = *(v0 + 728);
    *(v0 + 144) = v71;
    v72 = *(v0 + 648);
    *(v0 + 32) = *(v0 + 632);
    *(v0 + 48) = v72;
    v73 = *(v0 + 680);
    *(v0 + 64) = *(v0 + 664);
    *(v0 + 80) = v73;
    *(v0 + 16) = v59;
    *(v0 + 24) = v60;
    *(v0 + 211) = v47;
    *(v0 + 212) = HIBYTE(v47) & 1;
    *(v0 + 216) = v68;
    *(v0 + 224) = v36;
    nullsub_1();
    v74 = *(v0 + 192);
    v101[10] = *(v0 + 176);
    v101[11] = v74;
    v101[12] = *(v0 + 208);
    v102 = *(v0 + 224);
    v75 = *(v0 + 128);
    v101[6] = *(v0 + 112);
    v101[7] = v75;
    v76 = *(v0 + 160);
    v101[8] = *(v0 + 144);
    v101[9] = v76;
    v77 = *(v0 + 64);
    v101[2] = *(v0 + 48);
    v101[3] = v77;
    v78 = *(v0 + 96);
    v101[4] = *(v0 + 80);
    v101[5] = v78;
    v79 = *(v0 + 32);
    v101[0] = *(v0 + 16);
    v101[1] = v79;
    sub_1D5ECF1C0(v0 + 816, v0 + 1000);
    sub_1D5ECF1C0(v0 + 632, v0 + 1184);

    sub_1D6AA103C(v101);
    v80 = *(v0 + 192);
    *(v0 + 392) = *(v0 + 176);
    *(v0 + 408) = v80;
    *(v0 + 424) = *(v0 + 208);
    *(v0 + 440) = *(v0 + 224);
    v81 = *(v0 + 128);
    *(v0 + 328) = *(v0 + 112);
    *(v0 + 344) = v81;
    v82 = *(v0 + 160);
    *(v0 + 360) = *(v0 + 144);
    *(v0 + 376) = v82;
    v83 = *(v0 + 64);
    *(v0 + 264) = *(v0 + 48);
    *(v0 + 280) = v83;
    v84 = *(v0 + 96);
    *(v0 + 296) = *(v0 + 80);
    *(v0 + 312) = v84;
    v85 = *(v0 + 32);
    *(v0 + 232) = *(v0 + 16);
    *(v0 + 248) = v85;

    sub_1D725B32C();

    sub_1D6AA1610();

    strcpy((v0 + 448), "builtin:editor");
    *(v0 + 463) = -18;
    *(v0 + 464) = v90;
    *(v0 + 480) = v91;
    *(v0 + 496) = 0;
    *(v0 + 593) = v98;
    *(v0 + 609) = v99;
    *(v0 + 625) = v100;
    *(v0 + 529) = v94;
    *(v0 + 545) = v95;
    *(v0 + 561) = v96;
    *(v0 + 577) = v97;
    *(v0 + 497) = v92;
    *(v0 + 513) = v93;
    sub_1D5ECF21C(v0 + 448);
  }

  else
  {
  }

  v86 = *(v0 + 1896);
  v87 = *(v0 + 1888);
  v88 = *(v0 + 1880);
  (*(*(v0 + 1864) + 8))(*(v0 + 1872), *(v0 + 1856));
  (*(v87 + 8))(v86, v88);

  v89 = *(v0 + 8);

  v89();
}

uint64_t sub_1D60CD66C()
{
  v105 = v0;
  v1 = *(v0 + 1992);
  v2 = *(v0 + 1960);
  v3 = *(v0 + 1800);

  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  v4 = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_state;
  swift_beginAccess();
  sub_1D60CEB88(v3, v2 + v4);
  swift_endAccess();
  v5 = *(v0 + 1968);
  v6 = *(v0 + 1952);

  if (v5 != v6)
  {
    v7 = *(v0 + 1968);
LABEL_10:
    v16 = *(v0 + 1944);
    if ((v16 & 0xC000000000000001) != 0)
    {
LABEL_40:
      v17 = MEMORY[0x1DA6FB460](v7);
    }

    else
    {
      if (v7 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v17 = *(v16 + 8 * v7 + 32);
    }

    *(v0 + 1960) = v17;
    *(v0 + 1968) = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      v18 = *(v0 + 1920);
      v19 = *(v0 + 1848);
      v20 = *(v18 + 24);
      v21 = swift_task_alloc();
      v21[2] = v17;
      v21[3] = v19;
      v21[4] = v18;
      os_unfair_lock_lock((v20 + 24));
      sub_1D60CEB68((v20 + 16), (v0 + 1720));
      os_unfair_lock_unlock((v20 + 24));
      v22 = *(v0 + 1720);
      *(v0 + 1976) = v22;

      v23 = swift_task_alloc();
      *(v0 + 1984) = v23;
      v24 = sub_1D5B49474(0, &qword_1EDF3C5D0);
      *v23 = v0;
      v23[1] = sub_1D60CCBB4;
      v25 = *(v0 + 1816);
      v26 = *(v0 + 1808);
      v27 = MEMORY[0x1E69E7288];
      v28 = v22;
      goto LABEL_29;
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    v42 = MEMORY[0x1DA6FB460](0, v7);
LABEL_28:
    *(v0 + 2040) = v42;

    *(v0 + 2048) = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas;
    sub_1D725B77C();
    v43 = *(v0 + 1728);
    *(v0 + 2056) = v43;
    v44 = swift_task_alloc();
    *(v0 + 2064) = v44;
    v45 = type metadata accessor for DebugFormatBindingResult();
    v24 = sub_1D5B49474(0, &qword_1EDF3C5D0);
    *v44 = v0;
    v44[1] = sub_1D60CDFF8;
    v27 = MEMORY[0x1E69E7288];
    v25 = v0 + 1736;
    v28 = v43;
    v26 = v45;
LABEL_29:

    return MEMORY[0x1EEE6DA10](v25, v28, v26, v24, v27);
  }

  while (1)
  {
    v7 = *(v0 + 1928);
    v8 = *(v0 + 1936) + 1;
    sub_1D60CBC50(*(v0 + 1848), type metadata accessor for DebugFormatWorkspaceCanvasSection);
    if (v8 == v7)
    {
      break;
    }

    v9 = *(v0 + 1936) + 1;
    *(v0 + 1936) = v9;
    v10 = *(v0 + 1912);
    if (v9 >= *(v10 + 16))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v11 = *(v0 + 1848);
    v12 = *(v0 + 1824);
    sub_1D60CBBE8(v10 + ((*(v0 + 628) + 32) & ~*(v0 + 628)) + *(*(v0 + 1832) + 72) * v9, v11, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    v13 = *(v11 + *(v12 + 40));
    *(v0 + 1944) = v13;
    if (v13 >> 62)
    {
      v15 = sub_1D7263BFC();
      *(v0 + 1952) = v15;
      if (v15)
      {
LABEL_8:
        v7 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1952) = v14;
      if (v14)
      {
        goto LABEL_8;
      }
    }
  }

  v29 = *(v0 + 1744);
  v30 = type metadata accessor for DebugFormatWorkspaceCanvasSorter();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC8NewsFeed32DebugFormatWorkspaceCanvasSorter____lazy_storage___sortBarButtonItem] = 0;
  *&v31[OBJC_IVAR____TtC8NewsFeed32DebugFormatWorkspaceCanvasSorter_editor] = v29;
  *(v0 + 1704) = v31;
  *(v0 + 1712) = v30;

  v32 = objc_msgSendSuper2((v0 + 1704), sel_init);
  *(v0 + 2000) = v32;

  sub_1D725972C();

  v7 = *(v0 + 1912);
  if (*(v0 + 627) == 1)
  {
    v33 = v32;
    v34 = sub_1D60CAD44(v7, v33, v103);

    v7 = v34;
  }

  *(v0 + 2008) = v7;
  v35 = *(v7 + 16);
  *(v0 + 2016) = v35;
  v36 = MEMORY[0x1E69E7CC0];
  if (v35)
  {
    v37 = 0;
    v38 = *(v0 + 1832);
    *(v0 + 812) = *(*(v0 + 1824) + 40);
    *(v0 + 996) = *(v38 + 80);
    do
    {
      *(v0 + 2032) = v36;
      *(v0 + 2024) = v37;
      v39 = *(v0 + 2008);
      if (v37 >= *(v39 + 16))
      {
        goto LABEL_39;
      }

      v40 = *(v0 + 812);
      v41 = *(v0 + 1840);
      sub_1D60CBBE8(v39 + ((*(v0 + 996) + 32) & ~*(v0 + 996)) + *(*(v0 + 1832) + 72) * v37, v41, type metadata accessor for DebugFormatWorkspaceCanvasSection);
      v7 = *(v41 + v40);

      sub_1D60CBC50(v41, type metadata accessor for DebugFormatWorkspaceCanvasSection);
      if (v7 >> 62)
      {
        v25 = sub_1D7263BFC();
        if (v25)
        {
LABEL_25:
          if ((v7 & 0xC000000000000001) != 0)
          {
            goto LABEL_43;
          }

          if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v42 = *(v7 + 32);

            goto LABEL_28;
          }

          __break(1u);
          return MEMORY[0x1EEE6DA10](v25, v28, v26, v24, v27);
        }
      }

      else
      {
        v25 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v25)
        {
          goto LABEL_25;
        }
      }

      v37 = *(v0 + 2024) + 1;
    }

    while (v37 != *(v0 + 2016));
  }

  v46 = *(v0 + 2000);
  if (*(v36 + 16))
  {
    v47 = *(v0 + 1904);
    v48 = *(v0 + 1180);
    v49 = *(v0 + 1752);
    v50 = (v49 + *(v47 + 20));
    v51 = *v50;
    v52 = v50[1];
    v53 = v50[3];
    *(v0 + 848) = v50[2];
    *(v0 + 864) = v53;
    *(v0 + 816) = v51;
    *(v0 + 832) = v52;
    v54 = v50[4];
    v55 = v50[5];
    v56 = v50[7];
    *(v0 + 912) = v50[6];
    *(v0 + 928) = v56;
    *(v0 + 880) = v54;
    *(v0 + 896) = v55;
    v57 = v50[8];
    v58 = v50[9];
    v59 = v50[10];
    *(v0 + 991) = *(v50 + 175);
    *(v0 + 960) = v58;
    *(v0 + 976) = v59;
    *(v0 + 944) = v57;
    v60 = *(v0 + 816);
    v61 = *(v0 + 824);
    v92 = v50[1];
    v93 = v50[2];
    v100 = *(v50 + 145);
    v101 = *(v50 + 161);
    v102 = *(v50 + 177);
    v96 = *(v50 + 81);
    v97 = *(v50 + 97);
    v98 = *(v50 + 113);
    v99 = *(v50 + 129);
    v94 = *(v50 + 49);
    v95 = *(v50 + 65);
    strcpy((v0 + 632), "builtin:editor");
    *(v0 + 647) = -18;
    v62 = v50[2];
    *(v0 + 648) = v50[1];
    *(v0 + 664) = v62;
    *(v0 + 680) = 0;
    *(v0 + 681) = *(v50 + 49);
    v63 = *(v50 + 65);
    v64 = *(v50 + 81);
    v65 = *(v50 + 113);
    *(v0 + 729) = *(v50 + 97);
    *(v0 + 745) = v65;
    *(v0 + 697) = v63;
    *(v0 + 713) = v64;
    v66 = *(v50 + 177);
    v67 = *(v50 + 129);
    v68 = *(v50 + 161);
    *(v0 + 777) = *(v50 + 145);
    *(v0 + 793) = v68;
    *(v0 + 761) = v67;
    *(v0 + 809) = v66;
    v69 = *(v49 + *(v47 + 32));
    v70 = *(v0 + 776);
    *(v0 + 160) = *(v0 + 760);
    *(v0 + 176) = v70;
    *(v0 + 192) = *(v0 + 792);
    *(v0 + 207) = *(v0 + 807);
    v71 = *(v0 + 712);
    *(v0 + 96) = *(v0 + 696);
    *(v0 + 112) = v71;
    v72 = *(v0 + 744);
    *(v0 + 128) = *(v0 + 728);
    *(v0 + 144) = v72;
    v73 = *(v0 + 648);
    *(v0 + 32) = *(v0 + 632);
    *(v0 + 48) = v73;
    v74 = *(v0 + 680);
    *(v0 + 64) = *(v0 + 664);
    *(v0 + 80) = v74;
    *(v0 + 16) = v60;
    *(v0 + 24) = v61;
    *(v0 + 211) = v48;
    *(v0 + 212) = HIBYTE(v48) & 1;
    *(v0 + 216) = v69;
    *(v0 + 224) = v36;
    nullsub_1();
    v75 = *(v0 + 192);
    v103[10] = *(v0 + 176);
    v103[11] = v75;
    v103[12] = *(v0 + 208);
    v104 = *(v0 + 224);
    v76 = *(v0 + 128);
    v103[6] = *(v0 + 112);
    v103[7] = v76;
    v77 = *(v0 + 160);
    v103[8] = *(v0 + 144);
    v103[9] = v77;
    v78 = *(v0 + 64);
    v103[2] = *(v0 + 48);
    v103[3] = v78;
    v79 = *(v0 + 96);
    v103[4] = *(v0 + 80);
    v103[5] = v79;
    v80 = *(v0 + 32);
    v103[0] = *(v0 + 16);
    v103[1] = v80;
    sub_1D5ECF1C0(v0 + 816, v0 + 1000);
    sub_1D5ECF1C0(v0 + 632, v0 + 1184);

    sub_1D6AA103C(v103);
    v81 = *(v0 + 192);
    *(v0 + 392) = *(v0 + 176);
    *(v0 + 408) = v81;
    *(v0 + 424) = *(v0 + 208);
    *(v0 + 440) = *(v0 + 224);
    v82 = *(v0 + 128);
    *(v0 + 328) = *(v0 + 112);
    *(v0 + 344) = v82;
    v83 = *(v0 + 160);
    *(v0 + 360) = *(v0 + 144);
    *(v0 + 376) = v83;
    v84 = *(v0 + 64);
    *(v0 + 264) = *(v0 + 48);
    *(v0 + 280) = v84;
    v85 = *(v0 + 96);
    *(v0 + 296) = *(v0 + 80);
    *(v0 + 312) = v85;
    v86 = *(v0 + 32);
    *(v0 + 232) = *(v0 + 16);
    *(v0 + 248) = v86;

    sub_1D725B32C();

    sub_1D6AA1610();

    strcpy((v0 + 448), "builtin:editor");
    *(v0 + 463) = -18;
    *(v0 + 464) = v92;
    *(v0 + 480) = v93;
    *(v0 + 496) = 0;
    *(v0 + 593) = v100;
    *(v0 + 609) = v101;
    *(v0 + 625) = v102;
    *(v0 + 529) = v96;
    *(v0 + 545) = v97;
    *(v0 + 561) = v98;
    *(v0 + 577) = v99;
    *(v0 + 497) = v94;
    *(v0 + 513) = v95;
    sub_1D5ECF21C(v0 + 448);
  }

  else
  {
  }

  v87 = *(v0 + 1896);
  v88 = *(v0 + 1888);
  v89 = *(v0 + 1880);
  (*(*(v0 + 1864) + 8))(*(v0 + 1872), *(v0 + 1856));
  (*(v88 + 8))(v87, v89);

  v90 = *(v0 + 8);

  return v90();
}

uint64_t sub_1D60CDFF8()
{
  *(*v1 + 2072) = v0;

  if (v0)
  {

    v2 = sub_1D60CE894;
  }

  else
  {

    v2 = sub_1D60CE13C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D60CE13C()
{
  v99 = v0;
  v1 = *(v0 + 2040);
  v2 = *(v0 + 1784);
  v3 = *(v0 + 1768);
  v4 = v1 + *(v0 + 2048);
  v5 = *(v0 + 1736);
  sub_1D60CBBE8(v1 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_group, v2, type metadata accessor for FormatWorkspaceGroup);
  v6 = *(v4 + 16);
  v7 = *(v4 + 152);
  v8 = *(v4 + 136);
  v9 = *(v4 + 120);
  *(v0 + 1448) = *(v4 + 104);
  *(v0 + 1464) = v9;
  *(v0 + 1480) = v8;
  *(v0 + 1496) = v7;
  v10 = *(v4 + 88);
  v11 = *(v4 + 72);
  v12 = *(v4 + 56);
  *(v0 + 1384) = *(v4 + 40);
  *(v0 + 1400) = v12;
  *(v0 + 1416) = v11;
  *(v0 + 1432) = v10;
  *(v0 + 1368) = *(v4 + 24);
  *(v2 + v3[5]) = v5;
  *(v2 + v3[6]) = v6;
  v13 = (v2 + v3[7]);
  *v13 = *(v0 + 1368);
  v14 = *(v0 + 1448);
  v15 = *(v0 + 1464);
  v16 = *(v0 + 1496);
  v13[7] = *(v0 + 1480);
  v13[8] = v16;
  v13[5] = v14;
  v13[6] = v15;
  v17 = *(v0 + 1384);
  v18 = *(v0 + 1400);
  v19 = *(v0 + 1432);
  v13[3] = *(v0 + 1416);
  v13[4] = v19;
  v13[1] = v17;
  v13[2] = v18;

  sub_1D5D65D5C(v0 + 1368, v0 + 1512);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v0 + 2032);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_24:
    v21 = sub_1D699164C(0, v21[2] + 1, 1, v21);
  }

  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1D699164C(v22 > 1, v23 + 1, 1, v21);
  }

  v24 = *(v0 + 1784);
  v25 = *(v0 + 1776);

  v21[2] = v23 + 1;
  sub_1D60CBDE4(v24, v21 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  while (1)
  {
    v26 = *(v0 + 2024) + 1;
    if (v26 == *(v0 + 2016))
    {
      break;
    }

    *(v0 + 2032) = v21;
    *(v0 + 2024) = v26;
    v27 = *(v0 + 2008);
    if (v26 >= *(v27 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    v28 = *(v0 + 812);
    v29 = *(v0 + 1840);
    sub_1D60CBBE8(v27 + ((*(v0 + 996) + 32) & ~*(v0 + 996)) + *(*(v0 + 1832) + 72) * v26, v29, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    v30 = *(v29 + v28);

    sub_1D60CBC50(v29, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    if (v30 >> 62)
    {
      v35 = sub_1D7263BFC();
      if (v35)
      {
LABEL_11:
        if ((v30 & 0xC000000000000001) == 0)
        {
          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v36 = *(v30 + 32);

LABEL_14:
            *(v0 + 2040) = v36;

            *(v0 + 2048) = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas;
            sub_1D725B77C();
            v37 = *(v0 + 1728);
            *(v0 + 2056) = v37;
            v38 = swift_task_alloc();
            *(v0 + 2064) = v38;
            v39 = type metadata accessor for DebugFormatBindingResult();
            v33 = sub_1D5B49474(0, &qword_1EDF3C5D0);
            *v38 = v0;
            v38[1] = sub_1D60CDFF8;
            v34 = MEMORY[0x1E69E7288];
            v35 = v0 + 1736;
            v31 = v37;
            v32 = v39;
          }

          else
          {
            __break(1u);
          }

          return MEMORY[0x1EEE6DA10](v35, v31, v32, v33, v34);
        }

        v36 = MEMORY[0x1DA6FB460](0, v30);
        goto LABEL_14;
      }
    }

    else
    {
      v35 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
        goto LABEL_11;
      }
    }
  }

  v40 = *(v0 + 2000);
  if (v21[2])
  {
    v41 = *(v0 + 1904);
    v42 = *(v0 + 1180);
    v43 = *(v0 + 1752);
    v44 = (v43 + *(v41 + 20));
    v45 = *v44;
    v46 = v44[1];
    v47 = v44[3];
    *(v0 + 848) = v44[2];
    *(v0 + 864) = v47;
    *(v0 + 816) = v45;
    *(v0 + 832) = v46;
    v48 = v44[4];
    v49 = v44[5];
    v50 = v44[7];
    *(v0 + 912) = v44[6];
    *(v0 + 928) = v50;
    *(v0 + 880) = v48;
    *(v0 + 896) = v49;
    v51 = v44[8];
    v52 = v44[9];
    v53 = v44[10];
    *(v0 + 991) = *(v44 + 175);
    *(v0 + 960) = v52;
    *(v0 + 976) = v53;
    *(v0 + 944) = v51;
    v54 = *(v0 + 816);
    v55 = *(v0 + 824);
    v86 = v44[1];
    v87 = v44[2];
    v94 = *(v44 + 145);
    v95 = *(v44 + 161);
    v96 = *(v44 + 177);
    v90 = *(v44 + 81);
    v91 = *(v44 + 97);
    v92 = *(v44 + 113);
    v93 = *(v44 + 129);
    v88 = *(v44 + 49);
    v89 = *(v44 + 65);
    strcpy((v0 + 632), "builtin:editor");
    *(v0 + 647) = -18;
    v56 = v44[2];
    *(v0 + 648) = v44[1];
    *(v0 + 664) = v56;
    *(v0 + 680) = 0;
    *(v0 + 681) = *(v44 + 49);
    v57 = *(v44 + 65);
    v58 = *(v44 + 81);
    v59 = *(v44 + 113);
    *(v0 + 729) = *(v44 + 97);
    *(v0 + 745) = v59;
    *(v0 + 697) = v57;
    *(v0 + 713) = v58;
    v60 = *(v44 + 177);
    v61 = *(v44 + 129);
    v62 = *(v44 + 161);
    *(v0 + 777) = *(v44 + 145);
    *(v0 + 793) = v62;
    *(v0 + 761) = v61;
    *(v0 + 809) = v60;
    v63 = *(v43 + *(v41 + 32));
    v64 = *(v0 + 776);
    *(v0 + 160) = *(v0 + 760);
    *(v0 + 176) = v64;
    *(v0 + 192) = *(v0 + 792);
    *(v0 + 207) = *(v0 + 807);
    v65 = *(v0 + 712);
    *(v0 + 96) = *(v0 + 696);
    *(v0 + 112) = v65;
    v66 = *(v0 + 744);
    *(v0 + 128) = *(v0 + 728);
    *(v0 + 144) = v66;
    v67 = *(v0 + 648);
    *(v0 + 32) = *(v0 + 632);
    *(v0 + 48) = v67;
    v68 = *(v0 + 680);
    *(v0 + 64) = *(v0 + 664);
    *(v0 + 80) = v68;
    *(v0 + 16) = v54;
    *(v0 + 24) = v55;
    *(v0 + 211) = v42;
    *(v0 + 212) = HIBYTE(v42) & 1;
    *(v0 + 216) = v63;
    *(v0 + 224) = v21;
    nullsub_1();
    v69 = *(v0 + 192);
    v97[10] = *(v0 + 176);
    v97[11] = v69;
    v97[12] = *(v0 + 208);
    v98 = *(v0 + 224);
    v70 = *(v0 + 128);
    v97[6] = *(v0 + 112);
    v97[7] = v70;
    v71 = *(v0 + 160);
    v97[8] = *(v0 + 144);
    v97[9] = v71;
    v72 = *(v0 + 64);
    v97[2] = *(v0 + 48);
    v97[3] = v72;
    v73 = *(v0 + 96);
    v97[4] = *(v0 + 80);
    v97[5] = v73;
    v74 = *(v0 + 32);
    v97[0] = *(v0 + 16);
    v97[1] = v74;
    sub_1D5ECF1C0(v0 + 816, v0 + 1000);
    sub_1D5ECF1C0(v0 + 632, v0 + 1184);

    sub_1D6AA103C(v97);
    v75 = *(v0 + 192);
    *(v0 + 392) = *(v0 + 176);
    *(v0 + 408) = v75;
    *(v0 + 424) = *(v0 + 208);
    *(v0 + 440) = *(v0 + 224);
    v76 = *(v0 + 128);
    *(v0 + 328) = *(v0 + 112);
    *(v0 + 344) = v76;
    v77 = *(v0 + 160);
    *(v0 + 360) = *(v0 + 144);
    *(v0 + 376) = v77;
    v78 = *(v0 + 64);
    *(v0 + 264) = *(v0 + 48);
    *(v0 + 280) = v78;
    v79 = *(v0 + 96);
    *(v0 + 296) = *(v0 + 80);
    *(v0 + 312) = v79;
    v80 = *(v0 + 32);
    *(v0 + 232) = *(v0 + 16);
    *(v0 + 248) = v80;

    sub_1D725B32C();

    sub_1D6AA1610();

    strcpy((v0 + 448), "builtin:editor");
    *(v0 + 463) = -18;
    *(v0 + 464) = v86;
    *(v0 + 480) = v87;
    *(v0 + 496) = 0;
    *(v0 + 593) = v94;
    *(v0 + 609) = v95;
    *(v0 + 625) = v96;
    *(v0 + 529) = v90;
    *(v0 + 545) = v91;
    *(v0 + 561) = v92;
    *(v0 + 577) = v93;
    *(v0 + 497) = v88;
    *(v0 + 513) = v89;
    sub_1D5ECF21C(v0 + 448);
  }

  else
  {
  }

  v81 = *(v0 + 1896);
  v82 = *(v0 + 1888);
  v83 = *(v0 + 1880);
  (*(*(v0 + 1864) + 8))(*(v0 + 1872), *(v0 + 1856));
  (*(v82 + 8))(v81, v83);

  v84 = *(v0 + 8);

  return v84();
}

uint64_t sub_1D60CE894()
{
  v1 = *(v0 + 1896);
  v2 = *(v0 + 1888);
  v3 = *(v0 + 1880);
  v4 = *(v0 + 1872);
  v5 = *(v0 + 1864);
  v6 = *(v0 + 1856);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D60CE9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1D60C7658(a1, *(v2 + 16), v3 | *(v2 + 24), *(v2 + 32), *(v2 + 40), a2);
}

void sub_1D60CEA08(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1D60CEA7C(255, a3, a4, a5);
    type metadata accessor for os_unfair_lock_s(255);
    v6 = sub_1D7263E4C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D60CEA7C(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D60CEAE4(255, a3, a4);
    v5 = sub_1D7261E1C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D60CEAE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D5B49474(255, &qword_1EDF3C5D0);
    v4 = sub_1D726297C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D60CEB88(uint64_t a1, uint64_t a2)
{
  sub_1D5B54578(0, &qword_1EC88B4D0, type metadata accessor for DebugFormatCanvasBindResult, type metadata accessor for DebugFormatWorkspaceCanvasItemState);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60CEC3C@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(v2 + 33))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1D676A4EC(a1, *(v2 + 16), *(v2 + 24), v3 | *(v2 + 32), a2);
}

unint64_t sub_1D60CEC74()
{
  result = qword_1EC883510;
  if (!qword_1EC883510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883510);
  }

  return result;
}

unint64_t sub_1D60CED2C()
{
  result = qword_1EC883528;
  if (!qword_1EC883528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883528);
  }

  return result;
}

unint64_t sub_1D60CED80()
{
  result = qword_1EC883530;
  if (!qword_1EC883530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883530);
  }

  return result;
}

void sub_1D60CEDD4()
{
  if (!qword_1EC883540)
  {
    sub_1D60CEE3C();
    sub_1D60CEE90();
    v0 = type metadata accessor for FormatCodingEmptyArrayStrategy();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC883540);
    }
  }
}

unint64_t sub_1D60CEE3C()
{
  result = qword_1EC883548;
  if (!qword_1EC883548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883548);
  }

  return result;
}

unint64_t sub_1D60CEE90()
{
  result = qword_1EC883550;
  if (!qword_1EC883550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883550);
  }

  return result;
}

uint64_t sub_1D60CEF6C(uint64_t a1)
{
  sub_1D60CF55C(0, &qword_1EC883538, sub_1D60CEDD4, sub_1D60CEEE4, type metadata accessor for FormatCodingDefault);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D60CF00C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for FormatWorkspaceGroup() - 8);
  v4 = (*(v3 + 80) + 211) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D60C7B38(v1 + 32, v1 + v4, v5, a1);
}

void sub_1D60CF0B0()
{
  if (!qword_1EC883560)
  {
    sub_1D60CEAE4(255, &qword_1EC883568, type metadata accessor for DebugFormatBindingResult);
    v0 = sub_1D725B7BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC883560);
    }
  }
}

uint64_t sub_1D60CF144(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FormatWorkspaceGroup() - 8);
  v6 = (*(v5 + 80) + 227) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D5B64680;

  return sub_1D60C7E4C(a1, v7, v8, v9, v10, (v1 + 6), v1 + v6, v11);
}

void sub_1D60CF280()
{
  if (!qword_1EDF33878)
  {
    sub_1D5C5DC9C(255, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF33878);
    }
  }
}

void sub_1D60CF310()
{
  if (!qword_1EC883578)
  {
    type metadata accessor for FormatWorkspaceGroup();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC883578);
    }
  }
}

double sub_1D60CF378(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void sub_1D60CF3A0()
{
  if (!qword_1EC883580)
  {
    type metadata accessor for DebugGroupLayoutKey();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC883580);
    }
  }
}

uint64_t sub_1D60CF454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatWorkspaceGroup();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60CF4D8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  sub_1D60CF55C(0, a3, a4, a5, type metadata accessor for FormatCodingDefault);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1D60CF55C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1D60CF610@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(v2 + 33))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1D60C6BB4(a1, *(v2 + 16), *(v2 + 24), v3 | *(v2 + 32), *(v2 + 40), a2);
}

uint64_t sub_1D60CF648@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(v2 + 33))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1D60C6DD8(a1, *(v2 + 16), *(v2 + 24), v3 | *(v2 + 32), *(v2 + 40), a2);
}

unint64_t sub_1D60CF684(unint64_t result, __int16 a2, char a3)
{
  if (a3 == 2)
  {
    return sub_1D60CF6DC(result, a2);
  }

  if (a3 == 1)
  {
    return sub_1D60CF6A8(result, a2, HIBYTE(a2) & 1);
  }

  return result;
}

unint64_t sub_1D60CF6A8(unint64_t result, unsigned __int8 a2, char a3)
{
  if (a3)
  {
    return sub_1D60CF6B4(result, a2);
  }

  else
  {
  }
}

unint64_t sub_1D60CF6B4(unint64_t result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_1D60CF6C8(result, a2);
  }

  return result;
}

unint64_t sub_1D60CF6C8(unint64_t result, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    return sub_1D5C08648(result);
  }

  return result;
}

unint64_t sub_1D60CF6DC(unint64_t result, __int16 a2)
{
  if (HIBYTE(a2) != 255)
  {
    return sub_1D60CF6A8(result, a2, HIBYTE(a2) & 1);
  }

  return result;
}

void sub_1D60CF6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if ((a7 >> 6) > 1u)
  {
    if (a7 >> 6 == 2)
    {

      goto LABEL_5;
    }
  }

  else
  {
    if (!(a7 >> 6))
    {

LABEL_5:

      return;
    }

    sub_1D5E32940(a3, a4, a5, a6, a7 & 1);
  }
}

void sub_1D60CF7A4()
{
  if (!qword_1EC8857E0)
  {
    type metadata accessor for FormatFile();
    sub_1D5B737E8(&qword_1EDF34750, type metadata accessor for FormatFile);
    sub_1D5B737E8(&qword_1EC8857F0, type metadata accessor for FormatFile);
    v0 = type metadata accessor for DebugFormatServiceResult();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8857E0);
    }
  }
}

uint64_t sub_1D60CF870(uint64_t a1)
{
  v3 = *(type metadata accessor for DebugFormatWorkspace() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(type metadata accessor for DebugFormatEditorLayoutContext() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v5);
  if (*(v1 + v5 + 1))
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  v11 = v1 + ((v5 + *(v6 + 80) + 2) & ~*(v6 + 80));

  return sub_1D60C728C(a1, v7, v8, v1 + v4, v10 | v9, v11);
}

uint64_t sub_1D60CF968(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for DebugFormatWorkspace() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(type metadata accessor for DebugFormatEditorLayoutContext() - 8);
  v8 = (v6 + *(v7 + 80) + 2) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[5];
  v13 = v1 + v6;
  v14 = *(v1 + v6);
  if (v13[1])
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1D5B64684;

  return sub_1D60C758C(a1, v9, v10, v11, v12, v1 + v5, v15 | v14, v1 + v8);
}

unint64_t sub_1D60CFB0C()
{
  result = qword_1EC8835A0;
  if (!qword_1EC8835A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8835A0);
  }

  return result;
}

uint64_t objectdestroy_27Tm()
{
  v1 = sub_1D72585BC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D60CFC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, void, void, unint64_t, void, void))
{
  v11 = *(sub_1D72585BC() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = (v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  return a5(a1, a2, a3, a4, *(v5 + 16), *(v5 + 24), v5 + v12, *v13, v13[1]);
}

unint64_t sub_1D60CFD28()
{
  result = qword_1EC8835A8;
  if (!qword_1EC8835A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8835A8);
  }

  return result;
}

void sub_1D60CFD84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

char *sub_1D60CFDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_onChange];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_textField;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) initWithFrame_];
  v9 = OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_disallowedCharacterSet;
  v10 = sub_1D7257A4C();
  (*(*(v10 - 8) + 56))(&v3[v9], 1, 1, v10);
  if (a3)
  {
    v11 = sub_1D726203C();
  }

  else
  {
    v11 = 0;
  }

  v45.receiver = v3;
  v45.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v45, sel_initWithStyle_reuseIdentifier_, a1, v11);

  v13 = OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_textField;
  v14 = *&v12[OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_textField];
  v15 = v12;
  [v14 setDelegate_];
  [*&v12[v13] setTextAlignment_];
  [*&v12[v13] setClearButtonMode_];
  [*&v12[v13] setBorderStyle_];
  [*&v12[v13] setAutocorrectionType_];
  [*&v12[v13] setAutocapitalizationType_];
  v16 = *&v12[v13];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 systemBlueColor];
  [v18 setTintColor_];

  [*&v12[v13] addTarget:v15 action:sel_onTextChange forControlEvents:0x20000];
  [*&v12[v13] setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = *&v12[v13];
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 systemFontOfSize_];
  [v22 setFont_];

  v24 = [v15 contentView];
  [v24 addSubview_];

  v25 = objc_opt_self();
  sub_1D5E42B34();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D7298B00;
  v27 = [*&v12[v13] topAnchor];
  v28 = [v15 contentView];
  v29 = [v28 topAnchor];

  v30 = [v27 constraintEqualToAnchor:v29 constant:8.0];
  *(v26 + 32) = v30;
  v31 = [*&v12[v13] leadingAnchor];
  v32 = [v15 contentView];
  v33 = [v32 leadingAnchor];

  v34 = [v31 constraintEqualToAnchor:v33 constant:16.0];
  *(v26 + 40) = v34;
  v35 = [*&v12[v13] trailingAnchor];
  v36 = [v15 contentView];
  v37 = [v36 trailingAnchor];

  v38 = [v35 constraintEqualToAnchor:v37 constant:-16.0];
  *(v26 + 48) = v38;
  v39 = [*&v12[v13] bottomAnchor];
  v40 = [v15 contentView];

  v41 = [v40 bottomAnchor];
  v42 = [v39 constraintEqualToAnchor:v41 constant:-8.0];

  *(v26 + 56) = v42;
  sub_1D60D0DF4();
  v43 = sub_1D726265C();

  [v25 activateConstraints_];

  return v15;
}

uint64_t sub_1D60D045C()
{
  ObjectType = swift_getObjectType();
  sub_1D60D0A50();
  *&v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3).n128_u64[0];
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v0;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, sel_prepareForReuse, v4);
  [*&v0[OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_textField] setText_];
  v7 = &v0[OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_onChange];
  v8 = *&v0[OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_onChange];
  *v7 = 0;
  *(v7 + 1) = 0;
  sub_1D5B74328(v8);
  v9 = sub_1D7257A4C();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_disallowedCharacterSet;
  swift_beginAccess();
  sub_1D60D0D90(v6, &v0[v10]);
  return swift_endAccess();
}

id sub_1D60D05D8()
{
  result = [*(v0 + OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_textField) text];
  if (result)
  {
    v2 = result;
    v3 = sub_1D726207C();
    v5 = v4;

    v6 = *(v0 + OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_onChange);
    if (v6)
    {

      v6(v3, v5);
      sub_1D5B74328(v6);
    }
  }

  return result;
}

uint64_t sub_1D60D06DC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_28:
    v18 = 1;
    return v18 & 1;
  }

  v9 = 0;
  v10 = a4 & 0xFFFFFFFFFFFFFFLL;
  v11 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v14 = sub_1D7263D3C();
      v16 = v15;
      goto LABEL_15;
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v21[0] = a3;
      v21[1] = v10;
      v13 = v21 + v9;
    }

    else
    {
      v12 = v11;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v12 = sub_1D7263E5C();
      }

      v13 = (v12 + v9);
    }

    v14 = *v13;
    if ((*v13 & 0x80000000) == 0)
    {
LABEL_14:
      v16 = 1;
      goto LABEL_15;
    }

    v19 = (__clz(v14 ^ 0xFF) - 24);
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v14 = ((v14 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
        v16 = 3;
      }

      else
      {
        v14 = ((v14 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
        v16 = 4;
      }
    }

    else
    {
      if (v19 == 1)
      {
        goto LABEL_14;
      }

      v14 = v13[1] & 0x3F | ((v14 & 0x1F) << 6);
      v16 = 2;
    }

LABEL_15:
    LODWORD(v21[0]) = v14;
    v17 = a1(v21);
    if (v4)
    {
      return v18 & 1;
    }

    if ((v17 & 1) == 0)
    {
      break;
    }

    v9 += v16;
    if (v9 >= v5)
    {
      goto LABEL_28;
    }
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t type metadata accessor for DebugFormatCreatePackageTableViewCell()
{
  result = qword_1EC883628;
  if (!qword_1EC883628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D60D09A8()
{
  sub_1D60D0A50();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D60D0A50()
{
  if (!qword_1EDF3C480)
  {
    sub_1D7257A4C();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C480);
    }
  }
}

uint64_t sub_1D60D0AA8(uint64_t a1, unint64_t a2)
{
  sub_1D60D0A50();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7257A4C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_disallowedCharacterSet;
  swift_beginAccess();
  sub_1D60D0C98(v2 + v14, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D60D0CFC(v8);
    v15 = 1;
  }

  else
  {
    v16 = (*(v10 + 32))(v13, v8, v9);
    MEMORY[0x1EEE9AC00](v16, v17);
    *(&v19 - 2) = v13;
    v15 = sub_1D60D06DC(sub_1D60D0D58, (&v19 - 4), a1, a2);
    (*(v10 + 8))(v13, v9);
  }

  return v15 & 1;
}

uint64_t sub_1D60D0C98(uint64_t a1, uint64_t a2)
{
  sub_1D60D0A50();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60D0CFC(uint64_t a1)
{
  sub_1D60D0A50();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D60D0D90(uint64_t a1, uint64_t a2)
{
  sub_1D60D0A50();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D60D0DF4()
{
  result = qword_1EC87FF48;
  if (!qword_1EC87FF48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC87FF48);
  }

  return result;
}

char *sub_1D60D0E40(uint64_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_label;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v6 = OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_bubbleLayer;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v7 = &v2[OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_bubbleInsets];
  __asm { FMOV            V0.2D, #8.0 }

  *v7 = _Q0;
  *(v7 + 1) = _Q0;
  *&v2[OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_bubbleTipSize] = 0x4018000000000000;
  v13 = *a1;
  v55 = a1[1];
  v14 = v55;
  v56 = v13;
  v15 = a1[4];
  v54 = a1[3];
  v16 = &v2[OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_metric];
  v17 = *(a1 + 1);
  *v16 = *a1;
  *(v16 + 1) = v17;
  *(v16 + 4) = v15;
  sub_1D60D1804(&v56, v53, sub_1D5B81B04);
  sub_1D60D1804(&v55, v53, sub_1D60D186C);
  sub_1D60D1804(&v54, v53, sub_1D60D186C);
  v52.receiver = v2;
  v52.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v52, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  if (v14 >> 62)
  {
    v19 = sub_1D7263BFC();
  }

  else
  {
    v19 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = v54;
  v21 = v54 >> 62;
  if (v54 >> 62)
  {
    v22 = sub_1D7263BFC();
  }

  else
  {
    v22 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19)
  {
    v23 = objc_opt_self();
    v24 = v18;
    if (v22)
    {
      v25 = &selRef_systemBlueColor;
    }

    else
    {
      v25 = &selRef_systemOrangeColor;
    }
  }

  else
  {
    v23 = objc_opt_self();
    v26 = v18;
    v25 = &selRef_systemGray2Color;
  }

  v27 = [v23 *v25];
  [v18 setBackgroundColor_];

  v28 = [v18 layer];
  [v28 setCornerRadius_];

  v29 = OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_label;
  v30 = *&v18[OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_label];
  v31 = objc_opt_self();
  v32 = *MEMORY[0x1E69DB980];
  v33 = v30;
  v34 = [v31 monospacedSystemFontOfSize:10.0 weight:v32];
  [v33 setFont_];

  v35 = *&v18[v29];
  v36 = objc_opt_self();
  v37 = v35;
  v38 = [v36 whiteColor];
  [v37 setTextColor_];

  [*&v18[v29] setNumberOfLines_];
  v39 = *&v18[v29];
  sub_1D6BECEC0();
  v40 = sub_1D726203C();

  [v39 setText_];

  [v18 addSubview_];
  v41 = OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_bubbleLayer;
  v42 = *&v18[OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_bubbleLayer];
  if (v14 >> 62)
  {
    v43 = sub_1D7263BFC();
  }

  else
  {
    v43 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21)
  {
    v44 = sub_1D7263BFC();
  }

  else
  {
    v44 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v43)
  {
    v45 = v42;
    if (v44)
    {
      v46 = &selRef_systemBlueColor;
    }

    else
    {
      v46 = &selRef_systemOrangeColor;
    }
  }

  else
  {
    v47 = v42;
    v46 = &selRef_systemGray2Color;
  }

  v48 = [v36 *v46];
  sub_1D60D18C4(&v56, sub_1D5B81B04);
  sub_1D60D18C4(&v55, sub_1D60D186C);
  sub_1D60D18C4(&v54, sub_1D60D186C);
  v49 = [v48 CGColor];

  [v42 setFillColor_];
  [*&v18[v41] setPosition_];
  v50 = [v18 layer];

  [v50 addSublayer_];
  return v18;
}

void sub_1D60D144C()
{
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_label];
  [v0 bounds];
  [v1 setFrame_];
  [v0 bounds];
  CGRectGetWidth(v19);
  [v0 bounds];
  CGRectGetHeight(v20);
  sub_1D726350C();
  v4 = v3;
  v6 = v5;
  sub_1D726350C();
  v8 = v7;
  v10 = v9;
  sub_1D726351C();
  v12 = v11;
  v14 = v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  [v15 moveToPoint_];
  [v15 addLineToPoint_];
  [v15 addLineToPoint_];
  [v15 addLineToPoint_];
  [v15 closePath];
  v16 = *&v0[OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_bubbleLayer];
  v17 = [v15 CGPath];
  [v16 setPath_];
}

uint64_t sub_1D60D1804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D60D186C()
{
  if (!qword_1EC883660)
  {
    type metadata accessor for FormatNodeDebugRecord();
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC883660);
    }
  }
}

uint64_t sub_1D60D18C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

NewsFeed::FeedTopicHeadlineClusteringResult __swiftcall FeedTopicHeadlineClusteringResult.init(clusters:orphanedHeadlines:)(Swift::OpaquePointer clusters, Swift::OpaquePointer orphanedHeadlines)
{
  v2->_rawValue = clusters._rawValue;
  v2[1]._rawValue = orphanedHeadlines._rawValue;
  result.orphanedHeadlines = orphanedHeadlines;
  result.clusters = clusters;
  return result;
}

void static FeedTopicHeadlineClusteringResult.empty.getter(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
}

void FeedTopicHeadlineClusteringResult.scoredHeadlines.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
LABEL_19:

    sub_1D6986E58(v15);
    return;
  }

  v3 = 0;
  v4 = (v1 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = *(v5 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      goto LABEL_21;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= *(v5 + 3) >> 1)
    {
      if (*(v6 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v5 = sub_1D698FB64(isUniquelyReferenced_nonNull_native, v11, 1, v5);
      if (*(v6 + 16))
      {
LABEL_15:
        if ((*(v5 + 3) >> 1) - *(v5 + 2) < v7)
        {
          goto LABEL_23;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v12 = *(v5 + 2);
          v13 = __OFADD__(v12, v7);
          v14 = v12 + v7;
          if (v13)
          {
            goto LABEL_24;
          }

          *(v5 + 2) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_22;
    }

LABEL_4:
    ++v3;
    v4 += 3;
    if (v2 == v3)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t static FeedTopicHeadlineClusteringResult.- infix(_:_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = *a1;
  v63 = *(a1 + 8);
  if (a2 >> 62)
  {
    goto LABEL_64;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v76 = MEMORY[0x1E69E7CC0];

      result = sub_1D5BFC364(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v73 = v4;
      v8 = 0;
      v9 = v76;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1DA6FB460](v8, v3);
        }

        else
        {
          v10 = *(v3 + 8 * v8 + 32);
          swift_unknownObjectRetain();
        }

        v11 = [v10 identifier];
        v12 = sub_1D726207C();
        v14 = v13;
        swift_unknownObjectRelease();

        v16 = *(v76 + 16);
        v15 = *(v76 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1D5BFC364((v15 > 1), v16 + 1, 1);
        }

        ++v8;
        *(v76 + 16) = v16 + 1;
        v17 = v76 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
      }

      while (i != v8);
      v6 = MEMORY[0x1E69E7CC0];
      v4 = v73;
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
    }

    v3 = sub_1D5B86020(v9);

    v18 = v4[2];
    if (v18)
    {

      sub_1D6998B38(0, v18, 0);
      v19 = 0;
      v20 = v6;
      v61 = v18;
      v62 = v4 + 4;
      v21 = v3 + 56;
      while (1)
      {
        v66 = v19;
        v67 = v20;
        v22 = &v62[3 * v19];
        v4 = v22[1];
        v64 = v22[2];
        v65 = *v22;
        v23 = v4[2];
        swift_unknownObjectRetain();
        swift_bridgeObjectRetain_n();
        v71 = v23;
        if (v23)
        {
          break;
        }

        v68 = MEMORY[0x1E69E7CC0];
LABEL_36:

        v20 = v67;
        v42 = *(v67 + 16);
        v41 = *(v67 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_1D6998B38((v41 > 1), v42 + 1, 1);
          v20 = v67;
        }

        v19 = v66 + 1;
        *(v20 + 16) = v42 + 1;
        v43 = (v20 + 24 * v42);
        v43[4] = v65;
        v43[5] = v68;
        v43[6] = v64;
        if (v66 + 1 == v61)
        {
          goto LABEL_41;
        }
      }

      v24 = 0;
      v70 = v4 + 4;
      v68 = MEMORY[0x1E69E7CC0];
      while (v24 < v4[2])
      {
        v25 = v4;
        v74 = *&v70[2 * v24++];
        swift_unknownObjectRetain();
        v26 = *(&v74 + 1);
        v27 = [v74 articleID];
        v28 = sub_1D726207C();
        v30 = v29;

        if (*(v3 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v31 = sub_1D7264A5C(), v32 = -1 << *(v3 + 32), v33 = v31 & ~v32, ((*(v21 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
        {
          v34 = ~v32;
          while (1)
          {
            v35 = (*(v3 + 48) + 16 * v33);
            v36 = *v35 == v28 && v35[1] == v30;
            if (v36 || (sub_1D72646CC() & 1) != 0)
            {
              break;
            }

            v33 = (v33 + 1) & v34;
            if (((*(v21 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          swift_unknownObjectRelease();

          v4 = v25;
          if (v24 == v71)
          {
            goto LABEL_36;
          }
        }

        else
        {
LABEL_29:

          v37 = v68;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D6997CD0(0, *(v68 + 16) + 1, 1);
            v37 = v68;
          }

          v4 = v25;
          v39 = *(v37 + 16);
          v38 = *(v37 + 24);
          v40 = v37;
          if (v39 >= v38 >> 1)
          {
            sub_1D6997CD0((v38 > 1), v39 + 1, 1);
            v40 = v68;
          }

          *(v40 + 16) = v39 + 1;
          v68 = v40;
          *(v40 + 16 * v39 + 32) = v74;
          if (v24 == v71)
          {
            goto LABEL_36;
          }
        }
      }

      __break(1u);
      goto LABEL_63;
    }

    v20 = MEMORY[0x1E69E7CC0];
LABEL_41:
    v72 = *(v63 + 16);
    if (!v72)
    {
      break;
    }

    v44 = 0;
    v45 = v3 + 56;
    v69 = MEMORY[0x1E69E7CC0];
    while (v44 < *(v63 + 16))
    {
      v75 = *(v63 + 32 + 16 * v44++);
      swift_unknownObjectRetain();
      v4 = *(&v75 + 1);
      v46 = [v75 articleID];
      v47 = sub_1D726207C();
      v49 = v48;

      if (*(v3 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v50 = sub_1D7264A5C(), v51 = -1 << *(v3 + 32), v52 = v50 & ~v51, ((*(v45 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) != 0))
      {
        v53 = ~v51;
        while (1)
        {
          v54 = (*(v3 + 48) + 16 * v52);
          v55 = *v54 == v47 && v54[1] == v49;
          if (v55 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v52 = (v52 + 1) & v53;
          if (((*(v45 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        swift_unknownObjectRelease();

        if (v44 == v72)
        {
          goto LABEL_61;
        }
      }

      else
      {
LABEL_54:

        v56 = v69;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D6997CD0(0, *(v69 + 16) + 1, 1);
          v56 = v69;
        }

        v58 = *(v56 + 16);
        v57 = *(v56 + 24);
        v59 = v56;
        if (v58 >= v57 >> 1)
        {
          sub_1D6997CD0((v57 > 1), v58 + 1, 1);
          v59 = v69;
        }

        *(v59 + 16) = v58 + 1;
        v69 = v59;
        *(v59 + 16 * v58 + 32) = v75;
        if (v44 == v72)
        {
          goto LABEL_61;
        }
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    ;
  }

  v69 = MEMORY[0x1E69E7CC0];
LABEL_61:
  swift_bridgeObjectRelease_n();

  *a3 = v20;
  a3[1] = v69;
  return result;
}

uint64_t FeedTopicHeadlineClusteringResult.next(filterAgainst:)(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v6 = a3;
  v8 = *v3;
  v45 = v3[1];
  if (a3 >> 62)
  {
LABEL_51:
    v9 = sub_1D7263BFC();
  }

  else
  {
    v9 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x1E69E7CC0];
  v49 = v8;
  if (v9)
  {
    v50 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v9 & ~(v9 >> 63), 0);
    if (v9 < 0)
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v5 = 0;
    v10 = v50;
    v4 = (v6 & 0xC000000000000001);
    do
    {
      if (v4)
      {
        v11 = MEMORY[0x1DA6FB460](v5, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      v12 = [v11 identifier];
      v13 = sub_1D726207C();
      v15 = v14;
      swift_unknownObjectRelease();

      v17 = *(v50 + 16);
      v16 = *(v50 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D5BFC364((v16 > 1), v17 + 1, 1);
      }

      ++v5;
      *(v50 + 16) = v17 + 1;
      v18 = v50 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
    }

    while (v9 != v5);
    v8 = v49;
  }

  v6 = sub_1D5B86020(v10);

  v47 = *(v8 + 16);
  if (!v47)
  {

LABEL_31:
    result = v45;
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    if (!*(v45 + 16))
    {
      *a2 = 0;
      a2[1] = 0;
      return result;
    }

    *a2 = MEMORY[0x1E69E7CC0];
    a2[1] = v45;
    goto LABEL_44;
  }

  v44 = a2;
  v48 = v8 + 32;
  a2 = (v6 + 56);

  v19 = 0;
  while (1)
  {
    if (v19 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_51;
    }

    v4 = (v48 + 24 * v19);
    v9 = *v4;
    v5 = v4[1];
    swift_unknownObjectRetain();

    v20 = [v9 identifier];
    v21 = sub_1D726207C();
    v23 = v22;

    if (!*(v6 + 16))
    {
      break;
    }

    sub_1D7264A0C();
    sub_1D72621EC();
    v24 = sub_1D7264A5C();
    v25 = -1 << *(v6 + 32);
    v26 = v24 & ~v25;
    if (((*(a2 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      break;
    }

    v27 = ~v25;
    while (1)
    {
      v28 = (*(v6 + 48) + 16 * v26);
      v29 = *v28 == v21 && v28[1] == v23;
      if (v29 || (sub_1D72646CC() & 1) != 0)
      {
        break;
      }

      v26 = (v26 + 1) & v27;
      if (((*(a2 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    swift_unknownObjectRelease();

    ++v19;
    v8 = v49;
    if (v19 == v47)
    {

      a2 = v44;
      goto LABEL_31;
    }
  }

LABEL_26:

  swift_unknownObjectRelease();

  v30 = v19 + 1;
  if (__OFADD__(v19, 1))
  {
    goto LABEL_53;
  }

  v31 = *v4;
  v32 = v4[1];
  v33 = v4[2];
  a2 = sub_1D5FD2BFC(v30, v49);
  v37 = v36 >> 1;
  *a1 = v31;
  a1[1] = v32;
  a1[2] = v33;
  if (v35 != v36 >> 1)
  {
    v9 = v35;
    v5 = v34;
    v4 = v36;
    if ((v36 & 1) == 0)
    {
      swift_unknownObjectRetain_n();
      swift_bridgeObjectRetain_n();
      goto LABEL_35;
    }

    sub_1D72647AC();
    swift_unknownObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain_n();
    v41 = swift_dynamicCastClass();
    if (!v41)
    {
      swift_unknownObjectRelease();
      v41 = MEMORY[0x1E69E7CC0];
    }

    v42 = *(v41 + 16);

    if (!__OFSUB__(v37, v9))
    {
      if (v42 != v37 - v9)
      {
        goto LABEL_55;
      }

      v40 = swift_dynamicCastClass();
      if (!v40)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v43 = MEMORY[0x1E69E7CC0];
        goto LABEL_43;
      }

      goto LABEL_42;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    swift_unknownObjectRelease();
LABEL_35:
    sub_1D5EC2E60(a2, v5, v9, v4);
LABEL_42:
    v43 = v40;
    swift_unknownObjectRelease();

LABEL_43:
    swift_unknownObjectRelease();
    *v44 = v43;
    v44[1] = v45;
LABEL_44:
  }

  v38 = *(v45 + 16);
  swift_unknownObjectRetain();

  result = swift_unknownObjectRelease();
  if (v38)
  {
    *v44 = MEMORY[0x1E69E7CC0];
    v44[1] = v45;
    goto LABEL_44;
  }

  *v44 = 0;
  v44[1] = 0;
  return result;
}

uint64_t FeedTopicHeadlineClusteringResult.stealHeadlines(from:count:consumedIdentifiers:)(char **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v49 = v4[1];
  v8 = *(*v4 + 16);
  v53 = *v4;

  if (!v8)
  {
LABEL_34:

    *a1 = v53;
    a1[1] = v49;

    a4 = 0;
LABEL_46:

    return a4;
  }

  v10 = 0;
  v11 = v53 + 32;
  while (1)
  {
    v12 = *(v53 + 16);
    if (v10 >= v12)
    {
      goto LABEL_48;
    }

    v54 = v10;
    v13 = *v11;
    v5 = *(v11 + 8);
    swift_unknownObjectRetain();

    v14 = [v13 identifier];
    v15 = sub_1D726207C();
    v17 = v16;

    v18 = [a2 identifier];
    v19 = sub_1D726207C();
    v6 = v20;

    if (v15 == v19 && v17 == v6)
    {
      break;
    }

    v22 = sub_1D72646CC();

    swift_unknownObjectRelease();

    if (v22)
    {
      goto LABEL_12;
    }

    v10 = v54 + 1;
    v11 += 24;
    if (v8 == v54 + 1)
    {
      goto LABEL_34;
    }
  }

  swift_unknownObjectRelease();

LABEL_12:
  v23 = *(v11 + 8);
  v45 = *(v11 + 16);
  v46 = *v11;
  v24 = *(v23 + 16);
  swift_unknownObjectRetain();

  v52 = v24;
  if (v24)
  {
    v25 = 0;
    v50 = v23 + 32;
    v26 = a4 + 56;
    v6 = MEMORY[0x1E69E7CC0];
    v51 = v23;
    while (1)
    {
      v12 = *(v23 + 16);
      if (v25 >= v12)
      {
        break;
      }

      v8 = v6;
      *v56 = *(v50 + 16 * v25++);
      swift_unknownObjectRetain();
      v27 = v56[1];
      v28 = [v56[0] articleID];
      v29 = sub_1D726207C();
      v5 = v30;

      if (*(a4 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v31 = sub_1D7264A5C(), v32 = -1 << *(a4 + 32), v33 = v31 & ~v32, ((*(v26 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
      {
        v34 = ~v32;
        while (1)
        {
          v35 = (*(a4 + 48) + 16 * v33);
          v36 = *v35 == v29 && v35[1] == v5;
          if (v36 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v33 = (v33 + 1) & v34;
          if (((*(v26 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        swift_unknownObjectRelease();
        v23 = v51;
        if (v25 == v52)
        {
          goto LABEL_32;
        }
      }

      else
      {
LABEL_25:

        v58 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D6997CD0(0, *(v6 + 16) + 1, 1);
          v6 = v58;
        }

        v23 = v51;
        v5 = *(v6 + 16);
        v37 = *(v6 + 24);
        if (v5 >= v37 >> 1)
        {
          sub_1D6997CD0((v37 > 1), v5 + 1, 1);
          v6 = v58;
        }

        *(v6 + 16) = v5 + 1;
        *(v6 + 16 * v5 + 32) = *v56;
        if (v25 == v52)
        {
          goto LABEL_32;
        }
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v12 = *(v6 + 16);
  if (v12 < a3)
  {

    swift_unknownObjectRelease();

    goto LABEL_34;
  }

  v5 = v46;
  if (a3 < 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v8 = v54;
  if (v12 == a3)
  {

    v9 = a3;
    a4 = v6;
    v12 = a3;
  }

  else
  {
    sub_1D5EC2F60(v6, v6 + 32, 0, (2 * a3) | 1);
    v12 = *(v6 + 16);
    if (v12 < a3)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    a4 = v38;
    v9 = a3;
  }

  if (!v9)
  {
    goto LABEL_41;
  }

LABEL_51:
  sub_1D5EC2F60(v6, v6 + 32, v9, (2 * v12) | 1);
  v44 = v43;

  v6 = v44;
LABEL_41:
  v58 = v53;
  swift_unknownObjectRetain();
  sub_1D5EC2230(v8, &v57);

  result = swift_unknownObjectRelease();
  v40 = v58;
  v41 = *(v58 + 16);
  if (v41 >= v8)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v41 >= *(v40 + 3) >> 1)
    {
      v40 = sub_1D6992148(isUniquelyReferenced_nonNull_native, v41 + 1, 1, v40);
      v58 = v40;
    }

    sub_1D5EC401C(v8, v8, 1, v5, v6, v45);

    swift_unknownObjectRelease_n();
    *a1 = v40;
    a1[1] = v49;
    goto LABEL_46;
  }

  __break(1u);
  return result;
}

uint64_t FeedOptionsProviderSection.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D60D2C38()
{
  result = qword_1EC883668;
  if (!qword_1EC883668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883668);
  }

  return result;
}

uint64_t dispatch thunk of FeedOptionsProviderType.results(desiredSections:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5B64684;

  return v11(a1, a2, a3, a4);
}

uint64_t FormatTextNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatTextNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

unint64_t FormatTextNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_1D5D085B4(v2);
}

uint64_t FormatTextNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t FormatTextNode.invalidation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = *(v1 + 130);
  v9 = *(v1 + 128);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 50) = v8;
  *(a1 + 48) = v9;
  return sub_1D6046038(v2, v3, v4, v5, v6, v7, v9 | (v8 << 16));
}

uint64_t FormatTextNode.zIndex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 136) = a1;
  return result;
}

unint64_t FormatTextNode.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

unint64_t sub_1D60D3104(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 144);
  sub_1D5EB1500(v2);
  *(v3 + 144) = v2;
  return sub_1D5EB15C4(v4);
}

unint64_t FormatTextNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 144);
  *(v1 + 144) = v2;
  return sub_1D5EB15C4(v3);
}

uint64_t FormatTextNode.isUserInteractionEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 152) = a1;
  return result;
}

void FormatTextNode.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  *a1 = *(v1 + 160);
  *(a1 + 8) = v2;
}

uint64_t FormatTextNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 176) = a1;
}

uint64_t FormatTextNode.sourceItems.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 184) = a1;
}

uint64_t FormatTextNode.name.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t FormatTextNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[26];
  v3 = v1[27];
  v4 = v1[28];
  v5 = v1[29];
  v6 = v1[30];
  v7 = v1[31];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6);
}

uint64_t FormatTextNode.deinit()
{

  sub_1D5D05694(*(v0 + 32));

  sub_1D5C67600(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128) | (*(v0 + 130) << 16));
  sub_1D5EB15C4(*(v0 + 144));

  sub_1D5EB2398(*(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240));
  return v0;
}

uint64_t FormatTextNode.__deallocating_deinit()
{
  FormatTextNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D60D35A0(uint64_t a1, uint64_t a2)
{
  result = sub_1D60D69A4(&qword_1EC883670, a2, type metadata accessor for FormatTextNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D60D35F8(void *a1, uint64_t a2)
{
  a1[1] = sub_1D60D69A4(&qword_1EDF321C8, a2, type metadata accessor for FormatTextNode);
  a1[2] = sub_1D60D69A4(&qword_1EDF11B40, v3, type metadata accessor for FormatTextNode);
  result = sub_1D60D69A4(&qword_1EC883678, v4, type metadata accessor for FormatTextNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D60D36D4(uint64_t a1, uint64_t a2)
{
  result = sub_1D60D69A4(&qword_1EC883680, a2, type metadata accessor for FormatTextNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D60D372C(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v98 = a1;
  sub_1D5BEB610(0, &qword_1EDF3BF10, MEMORY[0x1E69D74B0]);
  v99 = v15;
  v100 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v109 = (&v92 - v17);
  sub_1D6047B58();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v102 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v103 = &v92 - v23;
  v101 = type metadata accessor for FormatNodeStateData.Data();
  v111 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101, v24);
  v26 = (&v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_unownedRetainStrong();
  v27 = a3[9];

  v113 = v27;
  v106 = a4;
  v107 = a5;
  sub_1D6E5B0C8(a4, a5, a6);

  v104 = a7;
  v28 = *(a7 + 32);

  v110 = a6;
  v108 = a2;
  v105 = a8;
  v29 = v112;
  sub_1D60D44E4(a3, a6, a2, a8);
  v112 = v29;
  if (v29)
  {
  }

  v32 = v30;

  *v26 = v32;
  v33 = v101;
  swift_storeEnumTagMultiPayload();
  v34 = *(v104 + 24);
  v35 = v103;
  sub_1D6047CB4(v26, v103, type metadata accessor for FormatNodeStateData.Data);
  v36 = *(v111 + 56);
  v111 += 56;
  v95 = v36;
  v36(v35, 0, 1, v33);
  v97 = v28;
  v37 = v102;
  sub_1D6047CB4(v35, v102, sub_1D6047B58);
  swift_beginAccess();

  v38 = v107;

  v96 = v34;
  v39 = v37;
  v40 = v106;
  sub_1D6D60A18(v39, v106, v38);
  swift_endAccess();
  sub_1D60D60DC(v35, sub_1D6047B58);
  sub_1D60D60DC(v26, type metadata accessor for FormatNodeStateData.Data);
  swift_unownedRetainStrong();
  v41 = a3[4];
  sub_1D5D085B4(v41);

  v113 = v41;
  v42 = v110;
  sub_1D6CAC330(v40, v38, v110);
  sub_1D5D05694(v113);

  v43 = v112;
  sub_1D60D4BA0(v32, v42, v108, v105, v40, v38, v109);
  if (v43)
  {

    v112 = v43;
    return result;
  }

  v94 = v32;

  v44 = v110;
  v45 = (*(v110 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v46 = *v45;
  v47 = v45[1];
  swift_unownedRetainStrong();
  v48 = a3[8];

  v49 = sub_1D6FBAE48(v48, v44, v46, v47);
  v112 = 0;
  v50 = v49;
  v51 = v110;
  v97 = a3;

  if (v50)
  {

    v52 = v112;
    v53 = sub_1D6A45640(v51);
    v54 = v96;
    v112 = v52;
    if (v52)
    {
      (*(v100 + 8))(v109, v99);
    }

    v55 = v53;

    if (v55)
    {
      swift_beginAccess();

      v56 = v107;

      sub_1D6D60C08(v55, v106, v56);
      swift_endAccess();
    }
  }

  else
  {
    v54 = v96;
  }

  v57 = v97;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v58 = v57[23];

  MEMORY[0x1EEE9AC00](v59, v60);
  v90 = v51;
  v91 = v108;
  v61 = v112;
  v62 = sub_1D5FBC110(sub_1D5EB5908, (&v92 - 4), v58);
  v112 = v61;
  if (v61)
  {
    (*(v100 + 8))(v109, v99);
  }

  v108 = v50;
  v63 = v62;

  swift_beginAccess();
  v64 = v107;
  swift_bridgeObjectRetain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v117 = *(v54 + 40);
  *(v54 + 40) = 0x8000000000000000;
  v66 = v106;
  sub_1D6D77BEC(v106, v64, v63, v106, v64, isUniquelyReferenced_nonNull_native);
  *(v54 + 40) = v117;
  swift_endAccess();

  v113 = v98;
  swift_getKeyPath();
  swift_unownedRetainStrong();
  swift_beginAccess();
  v67 = v57[6];

  v68 = v112;
  sub_1D618EFB4(v51, v67);
  v112 = v68;
  if (v68)
  {
    (*(v100 + 8))(v109, v99);

LABEL_32:
  }

  v93 = v26;

  v69 = swift_allocObject();
  v69[2] = v66;
  v69[3] = v64;
  v69[4] = v104;
  v69[5] = v94;
  v69[6] = v51;
  v70 = v105;
  v69[7] = v57;
  v69[8] = v70;

  swift_unownedRetain();
  sub_1D5EB563C(0);
  v72 = v71;
  v73 = sub_1D60D69A4(&qword_1EDF3C118, 255, sub_1D5EB563C);

  v90 = v72;
  v91 = v73;
  v74 = v112;
  sub_1D72599BC();
  v112 = v74;

  swift_unownedRetainStrong();
  v75 = *(v57 + 153);

  v76 = v66;
  if (v75 > 3)
  {
    if (v75 > 5)
    {
      goto LABEL_31;
    }

    v77 = v94;
    if (v75 != 4)
    {
      goto LABEL_31;
    }

    v78 = 22;
  }

  else if (v75 > 1)
  {
    v77 = v94;
    if (v75 == 2)
    {
      v78 = 20;
    }

    else
    {
      v78 = 21;
    }
  }

  else
  {
    v77 = v94;
    if (v75)
    {
      v78 = 19;
    }

    else
    {
      v78 = 18;
    }
  }

  swift_unownedRetainStrong();
  sub_1D60D5DD4(v77, &v113);

  v79 = v113;
  if ((~v113 & 0xF000000000000007) == 0)
  {
LABEL_31:
    (*(v100 + 8))(v109, v99);
    goto LABEL_32;
  }

  v113 = 0;
  v114 = 0xE000000000000000;
  sub_1D7263D4C();
  v80 = v107;

  v113 = v76;
  v114 = v80;
  MEMORY[0x1DA6F9910](0x697373656363612DLL, 0xEE007974696C6962);
  v81 = v78;
  v82 = v113;
  v83 = v114;
  v84 = type metadata accessor for FormatAccessibilityLayoutValue();
  v85 = swift_allocObject();
  *(v85 + 16) = v82;
  *(v85 + 24) = v83;
  *(v85 + 32) = v81;
  v118 = v98;
  swift_getKeyPath();
  v115 = v84;
  v116 = sub_1D60D69A4(&qword_1EDF20A78, 255, type metadata accessor for FormatAccessibilityLayoutValue);
  v113 = v85;
  sub_1D60D69A4(&qword_1EDF3BFE0, 255, sub_1D6047BF8);

  sub_1D72599FC();

  __swift_destroy_boxed_opaque_existential_1(&v113);
  v86 = v93;
  *v93 = v79;
  v87 = v101;
  swift_storeEnumTagMultiPayload();
  v88 = v103;
  sub_1D6047CB4(v86, v103, type metadata accessor for FormatNodeStateData.Data);
  v95(v88, 0, 1, v87);
  v89 = v102;
  sub_1D6047CB4(v88, v102, sub_1D6047B58);
  swift_beginAccess();

  sub_1D6D60A18(v89, v82, v83);
  swift_endAccess();
  sub_1D5BD9F54(v79);

  sub_1D60D60DC(v88, sub_1D6047B58);
  sub_1D60D60DC(v86, type metadata accessor for FormatNodeStateData.Data);
  return (*(v100 + 8))(v109, v99);
}

void sub_1D60D44E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D725891C();
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v68 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BEB610(0, &qword_1EDF3BEE0, MEMORY[0x1E69D74C0]);
  v12 = v11;
  v67 = *(v11 - 8);
  v13 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v56 - v15;
  swift_unownedRetainStrong();
  v17 = *(a1 + 72);

  v72 = v17;
  v18 = v71;
  v19 = sub_1D6E5B35C(a2, a3, a4, 0);

  if (!v18)
  {
    v61 = v12;
    v62 = v13;
    v65 = v19;
    v66 = a2;
    v71 = 0;
    v63 = a4;
    v64 = a3;
    swift_unownedRetainStrong();
    v21 = *(a1 + 80);
    v20 = *(a1 + 88);
    v22 = *(a1 + 104);
    v24 = *(a1 + 112);
    v23 = *(a1 + 120);
    v25 = *(a1 + 130);
    v26 = *(a1 + 128) | (*(a1 + 130) << 16);
    v27 = v20;
    v59 = *(a1 + 96);
    v60 = v22;
    sub_1D6046038(v21, v20, v59, v22, v24, v23, v26);

    if ((v25 >> 1) <= 0x7Eu)
    {
      v58 = v16;
      if ((v26 & 0x800000) != 0)
      {
        v80 = BYTE2(v26) & 1;
        v72 = v21;
        v73 = v27;
        v35 = v59;
        v74 = v59;
        v75 = v60;
        v36 = v60;
        v76 = v24;
        v77 = v23;
        v78 = v26;
        v79 = BYTE2(v26) & 1;
        v37 = v71;
        v38 = sub_1D688DD04(v66);
        v39 = v23;
        v28 = v64;
        v71 = v37;
        if (v37)
        {

          sub_1D5C67600(v21, v27, v35, v36, v24, v39, v26);
          return;
        }

        v57 = v38;
        sub_1D5C67600(v21, v27, v35, v36, v24, v39, v26);
        LODWORD(v60) = 1;
        v30 = *&v57;
      }

      else
      {
        v72 = v66;
        v57 = off_1F51AF338[0];
        v31 = type metadata accessor for FormatNodeContext();
        v32 = (v57)(v31, &off_1F51AF328);
        v33 = v71;
        v34 = sub_1D5E02AFC(v32, v21);
        sub_1D5C67600(v21, v27, v59, v60, v24, v23, v26);

        if (v33)
        {

          return;
        }

        v71 = 0;
        LODWORD(v60) = 0;
        v30 = v34;
        v28 = v64;
      }

      v29 = v58;
    }

    else
    {
      LODWORD(v60) = 255;
      v28 = v64;
      v29 = v16;
      v30 = 0.0;
    }

    LODWORD(v66) = v26 >> 17;
    v40 = sub_1D6B0B700();
    v41 = swift_allocObject();
    swift_unownedRetainStrong();
    swift_weakInit();

    v42 = v67;
    v43 = v28;
    v44 = v61;
    (*(v67 + 16))(v29, v43, v61);
    v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v46 = (v62 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    *(v47 + 16) = v41;
    *(v47 + 24) = v40;
    (*(v42 + 32))(v47 + v45, v29, v44);
    *(v47 + v46) = v63;

    v48 = v68;
    sub_1D725890C();
    sub_1D60D6828();
    v49 = swift_allocObject();
    v50 = v65;
    *(v49 + 4) = v65;
    *&v49[*(*v49 + 112)] = v50;
    (*(v69 + 32))(&v49[*(*v49 + 104)], v48, v70);
    *(v49 + 2) = v30;
    v49[24] = v60;
    if (v66 <= 0x7E)
    {
      v53 = v50;
      v52 = sub_1D60D68DC;
    }

    else
    {
      v51 = v50;

      v52 = 0;
      v47 = 0;
    }

    v54 = &v49[*(*v49 + 120)];
    *v54 = v52;
    *(v54 + 1) = v47;
    type metadata accessor for FormatText();
    v55 = swift_allocObject();
    *(v55 + 16) = v49;
    *(v55 + 24) = 0;
  }
}

uint64_t sub_1D60D4A5C@<X0>(char *a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v11 = sub_1D6E5B35C(a2, a3, a4, a1);

    if (!v5)
    {
      *a5 = v11;
    }
  }

  else
  {
    type metadata accessor for FormatLayoutError();
    sub_1D60D69A4(&qword_1EDF2F560, 255, type metadata accessor for FormatLayoutError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

id sub_1D60D4BA0@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v70 = a7;
  v13 = *(swift_unownedRetainStrong() + 32);
  sub_1D5D085B4(v13);

  v16 = *(*(a1 + 16) + 32);
  v17 = v13 >> 61;
  if ((v13 >> 61) <= 2)
  {
    if (v17)
    {
      if (v17 == 1)
      {
        v26 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v25 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v27 = swift_allocObject();
        v28 = swift_allocObject();
        v28[2] = v26;
        v28[3] = v25;
        v28[4] = a2;
        v28[5] = v16;
        v28[6] = a4;
        v28[7] = a5;
        v28[8] = a6;
        *(v27 + 16) = sub_1D60D68B4;
        *(v27 + 24) = v28;
        v29 = v70;
        *v70 = v27;
        v30 = *MEMORY[0x1E69D7498];
        sub_1D5BEB610(0, &qword_1EDF3BF10, MEMORY[0x1E69D74B0]);
        (*(*(v31 - 8) + 104))(v29, v30, v31);
        v32 = v16;

        sub_1D5D085B4(v25);

        return sub_1D5D05694(v13);
      }

      v39 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1EEE9AC00](v14, v15);
      v67 = a2;
      v68 = a3;
      v69 = a4;
      v19 = v16;

      v40 = v71;
      v41 = sub_1D5ECBE6C(sub_1D60D6890, v66, v39);

      if (!v40)
      {
        v46 = swift_allocObject();
        *(v46 + 16) = v19;
        *(v46 + 24) = v41;
        v23 = v70;
        *v70 = v46;
        v24 = MEMORY[0x1E69D7420];
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    v72 = *(v13 + 16);
    v38 = v16;
    sub_1D5C82CD8(v72);
    sub_1D5BEB9F4(a2, a5, a6, v70);

    sub_1D5C92A8C(v72);
    return sub_1D5D05694(v13);
  }

  if (v17 <= 4)
  {
    if (v17 == 3)
    {
      v18 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1EEE9AC00](v14, v15);
      v67 = a2;
      v68 = a3;
      v69 = a4;
      v19 = v16;

      v20 = v71;
      v21 = sub_1D5ECBE6C(sub_1D60D6890, v66, v18);

      if (!v20)
      {
        v22 = swift_allocObject();
        *(v22 + 16) = v19;
        *(v22 + 24) = v21;
        v23 = v70;
        *v70 = v22;
        v24 = MEMORY[0x1E69D7448];
LABEL_22:
        v49 = *v24;
        sub_1D5BEB610(0, &qword_1EDF3BF10, MEMORY[0x1E69D74B0]);
        (*(*(v50 - 8) + 104))(v23, v49, v50);
        return sub_1D5D05694(v13);
      }

LABEL_14:

      return sub_1D5D05694(v13);
    }

    v72 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    v34 = v16;
    v42 = sub_1D6E5B35C(a2, a3, a4, 0);
    if (!v71)
    {
      v47 = v42;

      v48 = swift_allocObject();
      *(v48 + 16) = v47;
      v23 = v70;
      *v70 = v48;
      v24 = MEMORY[0x1E69D7440];
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (v17 == 5)
  {
    v72 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    v34 = v16;
    v35 = sub_1D6E5B35C(a2, a3, a4, 0);
    if (!v71)
    {
      v36 = v35;

      v37 = swift_allocObject();
      *(v37 + 16) = v36;
      v23 = v70;
      *v70 = v37;
      v24 = MEMORY[0x1E69D73E8];
      goto LABEL_22;
    }

LABEL_16:

    return sub_1D5D05694(v13);
  }

  if (v13 == 0xC000000000000000)
  {
    v51 = swift_allocObject();
    *(v51 + 16) = v16;
    v44 = v70;
    *v70 = v51;
    v45 = MEMORY[0x1E69D7440];
    goto LABEL_25;
  }

  if (v13 == 0xC000000000000008)
  {
    v43 = swift_allocObject();
    *(v43 + 16) = v16;
    v44 = v70;
    *v70 = v43;
    v45 = MEMORY[0x1E69D73E8];
LABEL_25:
    v52 = *v45;
    sub_1D5BEB610(0, &qword_1EDF3BF10, MEMORY[0x1E69D74B0]);
    (*(*(v53 - 8) + 104))(v44, v52, v53);
    return v16;
  }

  v54 = v16;
  if ([v54 length] <= 0)
  {

    v62 = swift_allocObject();
    *(v62 + 16) = 0;
  }

  else
  {
    v55 = [v54 attributesAtIndex:0 effectiveRange:0];
    type metadata accessor for Key(0);
    sub_1D60D69A4(&qword_1EDF1A8E0, 255, type metadata accessor for Key);
    sub_1D7261D3C();

    v56 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v57 = sub_1D726203C();
    v58 = sub_1D7261D2C();

    v59 = [v56 initWithString:v57 attributes:v58];

    [v59 boundingRectWithSize:33 options:0 context:{1.79769313e308, 1.79769313e308}];
    v61 = v60;

    v62 = swift_allocObject();
    *(v62 + 16) = v61;
  }

  v63 = v70;
  *v70 = v62;
  v64 = *MEMORY[0x1E69D7488];
  sub_1D5BEB610(0, &qword_1EDF3BF10, MEMORY[0x1E69D74B0]);
  return (*(*(v65 - 8) + 104))(v63, v64, v65);
}

uint64_t sub_1D60D533C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, _OWORD *a7@<X7>, uint64_t *a8@<X8>, CGFloat a9@<D0>, CGFloat a10@<D1>, CGFloat a11@<D2>, CGFloat a12@<D3>)
{
  v107 = a5;
  v105 = a7;
  v106 = a8;
  v102 = a4;
  v100 = a3;
  sub_1D6047B58();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v101 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v104 = &v95 - v24;
  v25 = type metadata accessor for FormatNodeStateData.Data();
  v98 = *(v25 - 8);
  v99 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v103 = (&v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_1D725891C();
  v96 = *(v28 - 8);
  v97 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D725A2AC();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = &v95 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = a1;
  v109 = a2;
  v37 = sub_1D7259E2C();
  if (!v37)
  {
    goto LABEL_8;
  }

  v38 = v37;
  (*(v33 + 104))(v36, *MEMORY[0x1E69D72E8], v32);
  if (!*(v38 + 16) || (v39 = sub_1D6D62EE0(v36), (v40 & 1) == 0))
  {

    (*(v33 + 8))(v36, v32);
LABEL_8:
    v112 = 0u;
    v113 = 0u;
    goto LABEL_9;
  }

  sub_1D5B76B10(*(v38 + 56) + 32 * v39, &v112);
  (*(v33 + 8))(v36, v32);

  if (!*(&v113 + 1))
  {
LABEL_9:
    sub_1D5EBD03C(&v112);
    v43 = v103;
    v42 = v104;
    goto LABEL_10;
  }

  sub_1D5B5A498(0, &qword_1EDF3C730);
  v41 = swift_dynamicCast();
  v43 = v103;
  v42 = v104;
  if (v41)
  {
    v44 = *&v111[0];
    sub_1D725890C();
    sub_1D60D6828();
    v45 = swift_allocObject();
    *(v45 + 4) = v44;
    *&v45[*(*v45 + 112)] = v44;
    (*(v96 + 32))(&v45[*(*v45 + 104)], v31, v97);
    *(v45 + 2) = 0;
    v45[24] = -1;
    v46 = &v45[*(*v45 + 120)];
    type metadata accessor for FormatTextLink();
    *v46 = 0;
    *(v46 + 1) = 0;
    swift_allocObject();
    v47 = v44;
    v48 = sub_1D613DE0C(v47, a9, a10, a11, a12);
    type metadata accessor for FormatText();
    v49 = swift_allocObject();
    *(v49 + 16) = v45;
    *(v49 + 24) = v48;
    *v43 = v49;
    v50 = v99;
    swift_storeEnumTagMultiPayload();
    sub_1D6047CB4(v43, v42, type metadata accessor for FormatNodeStateData.Data);
    (*(v98 + 56))(v42, 0, 1, v50);
    v51 = v101;
    sub_1D6047CB4(v42, v101, sub_1D6047B58);
    swift_beginAccess();

    v52 = v109;

    sub_1D6D60A18(v51, v108, v52);
    swift_endAccess();

    v53 = v107;
    goto LABEL_12;
  }

LABEL_10:
  v54 = *(v102 + 16);
  v55 = *(v54 + 32);
  type metadata accessor for FormatTextLink();
  swift_allocObject();
  v56 = sub_1D613DE0C(v55, a9, a10, a11, a12);
  v53 = v107;
  if (!v56)
  {
    goto LABEL_13;
  }

  v57 = v56;
  type metadata accessor for FormatText();
  v58 = swift_allocObject();
  *(v58 + 16) = v54;
  *(v58 + 24) = v57;
  *v43 = v58;
  v59 = v99;
  swift_storeEnumTagMultiPayload();
  sub_1D6047CB4(v43, v42, type metadata accessor for FormatNodeStateData.Data);
  (*(v98 + 56))(v42, 0, 1, v59);
  v60 = v101;
  sub_1D6047CB4(v42, v101, sub_1D6047B58);
  swift_beginAccess();

  v61 = v109;

  v62 = v60;
  v53 = v107;
  sub_1D6D60A18(v62, v108, v61);
  swift_endAccess();

LABEL_12:

  sub_1D60D60DC(v42, sub_1D6047B58);
  sub_1D60D60DC(v43, type metadata accessor for FormatNodeStateData.Data);
LABEL_13:
  v63 = *(v53 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v65 = *(a6 + 16);
  v64 = *(a6 + 24);

  v66 = *(v63 + 40);
  if (v66)
  {
    *&v112 = *(v63 + 32);
    *(&v112 + 1) = v66;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v65, v64);

    v64 = *(&v112 + 1);
    v65 = v112;
  }

  swift_unownedRetainStrong();
  swift_beginAccess();
  v67 = *(a6 + 24);
  v101 = *(a6 + 16);
  v102 = v67;

  swift_unownedRetainStrong();
  v68 = *(a6 + 40);

  v103 = v65;
  v104 = v64;
  if (v68)
  {
    v69 = *(v68 + 16);
    swift_beginAccess();
    if (*(*(v69 + 16) + 16))
    {

      goto LABEL_20;
    }
  }

  v69 = 0;
LABEL_20:
  swift_unownedRetainStrong();
  swift_beginAccess();
  v100 = *(a6 + 136);

  swift_unownedRetainStrong();
  swift_beginAccess();
  v70 = *(a6 + 144);
  sub_1D5EB1500(v70);

  *&v112 = v70;
  sub_1D615B4A8(v53, &v120);
  sub_1D5EB15C4(v112);
  v107 = v120;
  swift_unownedRetainStrong();
  swift_beginAccess();
  LODWORD(v99) = *(a6 + 152);

  swift_unownedRetainStrong();
  v71 = *(a6 + 160);
  v72 = *(a6 + 168);

  swift_unownedRetainStrong();
  v73 = *(a6 + 192);
  v74 = *(a6 + 200);

  type metadata accessor for FormatTextNodeLayoutAttributes();
  v75 = swift_allocObject();
  v76 = v109;
  *(v75 + 16) = v108;
  *(v75 + 24) = v76;
  v77 = v104;
  *(v75 + 32) = v103;
  *(v75 + 40) = v77;
  v78 = v102;
  *(v75 + 48) = v101;
  *(v75 + 56) = v78;
  *(v75 + 64) = a9;
  *(v75 + 72) = a10;
  *(v75 + 80) = a11;
  *(v75 + 88) = a12;
  v79 = v105;
  *(v75 + 96) = v105;
  *(v75 + 104) = v69;
  v80 = v107;
  *(v75 + 112) = v100;
  *(v75 + 120) = v80;
  swift_beginAccess();
  *(v75 + 128) = v99;
  *(v75 + 136) = v71;
  *(v75 + 144) = v72;
  *(v75 + 152) = v73;
  *(v75 + 160) = v74;
  if (v79)
  {
    sub_1D60D656C(0, &qword_1EDF195B8, sub_1D60D65D0, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v82 = v79[5];
    v83 = v79[7];
    v84 = v79[8];
    v111[2] = v79[6];
    v111[3] = v83;
    v85 = v79[9];
    v86 = v79[10];
    v111[4] = v84;
    v111[5] = v85;
    v87 = v79[11];
    v111[6] = v86;
    v111[7] = v87;
    v111[0] = v79[4];
    v111[1] = v82;
    memmove(&v112, v79 + 4, 0x80uLL);
    if (sub_1D5CFD0B8(&v112) == 1)
    {
      *(inited + 64) = 0;
      *(inited + 32) = 0u;
      *(inited + 48) = 0u;
    }

    else
    {
      *(inited + 56) = &type metadata for FormatFill;
      *(inited + 64) = &protocol witness table for FormatFill;
      v89 = swift_allocObject();
      *(inited + 32) = v89;
      v90 = v113;
      v89[1] = v112;
      v89[2] = v90;
      v91 = v115;
      v89[3] = v114;
      v89[4] = v91;
      v92 = v117;
      v89[5] = v116;
      v89[6] = v92;
      v93 = v119;
      v89[7] = v118;
      v89[8] = v93;
    }

    sub_1D60D6668(v111, &v110);
    v88 = sub_1D6E27AC0(inited);
    swift_setDeallocating();
    sub_1D60D60DC(inited + 32, sub_1D60D65D0);
  }

  else
  {

    v88 = MEMORY[0x1E69E7CD0];
  }

  result = swift_allocObject();
  *(v75 + 168) = v88;
  *(result + 16) = v75;
  *v106 = result | 0x2000000000000000;
  return result;
}

void sub_1D60D5DD4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1D725891C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 153) >= 5u)
  {
    *a2 = 0xF000000000000007;
  }

  else
  {
    v27 = a2;
    v10 = *(a1 + 16);
    v11 = *(v10 + *(*v10 + 112));
    v12 = [v11 string];
    v13 = sub_1D726207C();
    v15 = v14;

    v16 = *(*v10 + 104);
    swift_beginAccess();
    (*(v6 + 16))(v9, v10 + v16, v5);
    v17 = *(v10 + 16);
    v18 = *(v10 + 24);
    v19 = swift_allocObject();
    v19[2] = sub_1D60D613C;
    v19[3] = 0;
    v19[4] = sub_1D60D61BC;
    v19[5] = v10;
    sub_1D60D66F0(0, qword_1EDF32918, MEMORY[0x1E69E6158], type metadata accessor for FormatComputed);
    v20 = swift_allocObject();
    *(v20 + 4) = v13;
    *(v20 + 5) = v15;
    v21 = &v20[*(*v20 + 112)];
    *v21 = v13;
    v21[1] = v15;
    v22 = v5;
    v23 = v17;
    (*(v6 + 32))(&v20[*(*v20 + 104)], v9, v22);
    *(v20 + 2) = v17;
    v20[24] = v18;

    if (v18 == 255)
    {

      v24 = 0;
      v19 = 0;
    }

    else
    {
      v24 = sub_1D60D61F4;
    }

    v25 = swift_allocObject();
    v26 = &v20[*(*v20 + 120)];
    *v26 = v24;
    *(v26 + 1) = v19;
    *(v25 + 16) = v20;
    *v27 = v25;
    sub_1D60D626C(v23, v18);
  }
}

uint64_t sub_1D60D60DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D60D613C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 string];
  v4 = sub_1D726207C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id sub_1D60D61BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_1D60D6290(a1);
  *a2 = v3;

  return v3;
}

void sub_1D60D61F4(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  (*(v1 + 32))(&v6);
  v3(v5, &v6);

  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
}

uint64_t sub_1D60D626C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1D60D6284(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1D60D6284(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D60D6290(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D725891C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7261B9C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  *v13 = sub_1D726308C();
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
  v14 = sub_1D7261BBC();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v16 = *v2;
    if (v2[24] == 255 || (v17 = *&v2[*(v16 + 120)]) == 0)
    {
      v18 = &v2[*(v16 + 112)];
    }

    else
    {

      v17(v21, a1);
      v18 = &v2[*(*v2 + 112)];
      v19 = *v18;
      *v18 = v21[0];

      sub_1D725890C();
      sub_1D5B74328(v17);
      v20 = *(*v2 + 104);
      swift_beginAccess();
      (*(v5 + 40))(&v2[v20], v8, v4);
      swift_endAccess();
    }

    return *v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D60D656C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D60D6604()
{
  result = qword_1EDF1C7E0;
  if (!qword_1EDF1C7E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF1C7E0);
  }

  return result;
}

uint64_t sub_1D60D6668(uint64_t a1, uint64_t a2)
{
  sub_1D60D66F0(0, &qword_1EDF34688, &type metadata for FormatFill, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D60D66F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D60D6740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v14 = a14 >> 62;
  if ((a14 >> 62) > 1)
  {
    if (v14 == 2)
    {
    }

    else
    {

      return sub_1D6086768(a1);
    }
  }

  else if (v14)
  {

    return sub_1D5CDE22C(a7);
  }

  else
  {
  }
}

void sub_1D60D6828()
{
  if (!qword_1EDF32910)
  {
    sub_1D5B5A498(255, &qword_1EDF3C730);
    v0 = type metadata accessor for FormatComputed();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF32910);
    }
  }
}

uint64_t sub_1D60D68DC@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  sub_1D5BEB610(0, &qword_1EDF3BEE0, MEMORY[0x1E69D74C0]);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  return sub_1D60D4A5C(a1, *(v2 + 24), v2 + v6, *(v2 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_1D60D69A4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D60D69EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D725891C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7261B9C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  *v13 = sub_1D726308C();
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
  v14 = sub_1D7261BBC();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v16 = *v2;
    if (v2[24] == 255 || (v17 = *&v2[*(v16 + 120)]) == 0)
    {
      v18 = &v2[*(v16 + 112)];
    }

    else
    {

      v17(v21, a1);
      v18 = &v2[*(*v2 + 112)];
      v19 = v21[1];
      *v18 = v21[0];
      *(v18 + 1) = v19;

      sub_1D725890C();
      sub_1D5B74328(v17);
      v20 = *(*v2 + 104);
      swift_beginAccess();
      (*(v5 + 40))(&v2[v20], v8, v4);
      swift_endAccess();
    }

    return *v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static FormatVersioningModeRelease.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FormatVersioningModeRelease(0);

  return sub_1D725BCBC();
}

uint64_t sub_1D60D6D4C()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0x656D614E65646F63;
  }
}

uint64_t sub_1D60D6D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D614E65646F63 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
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

uint64_t sub_1D60D6E64(uint64_t a1)
{
  v2 = sub_1D60DAF7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60D6EA0(uint64_t a1)
{
  v2 = sub_1D60DAF7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatVersioningModeRelease.encode(to:)(void *a1)
{
  sub_1D60DB7A0(0, &qword_1EC883690, sub_1D60DAF7C, &type metadata for FormatVersioningModeRelease.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60DAF7C();
  sub_1D7264B5C();
  v12 = 0;
  sub_1D72643FC();
  if (!v1)
  {
    type metadata accessor for FormatVersioningModeRelease(0);
    v11 = 1;
    sub_1D725BD1C();
    sub_1D60DAFD0(&qword_1EDF178C0, MEMORY[0x1E69D6B38]);
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t FormatVersioningModeRelease.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_1D725BD1C();
  v22 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60DB7A0(0, &qword_1EC8836A0, sub_1D60DAF7C, &type metadata for FormatVersioningModeRelease.CodingKeys, MEMORY[0x1E69E6F48]);
  v26 = v6;
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v21 - v8;
  v10 = type metadata accessor for FormatVersioningModeRelease(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60DAF7C();
  v14 = v27;
  sub_1D7264B0C();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = a1;
  v16 = v24;
  v15 = v25;
  v29 = 0;
  *v13 = sub_1D72642BC();
  v13[1] = v17;
  v21[0] = v13;
  v21[1] = v17;
  v28 = 1;
  sub_1D60DAFD0(&qword_1EDF43A48, MEMORY[0x1E69D6B38]);
  sub_1D726431C();
  (*(v16 + 8))(v9, v26);
  v18 = *(v10 + 20);
  v19 = v21[0];
  (*(v22 + 32))(v21[0] + v18, v5, v15);
  sub_1D60DB808(v19, v23, type metadata accessor for FormatVersioningModeRelease);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_1D60DB8C4(v19, type metadata accessor for FormatVersioningModeRelease);
}

uint64_t sub_1D60D743C(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D725BCBC();
}

uint64_t sub_1D60D74F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersioningModeRelease(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60DBA60(0, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v28 - v10;
  v12 = sub_1D725ACBC();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v14 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60DB808(v2, v17, type metadata accessor for FormatVersioningModeSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
    {
      if (qword_1EDF3CA50 != -1)
      {
        swift_once();
      }

      v20 = sub_1D725BD1C();
      v21 = __swift_project_value_buffer(v20, qword_1EDF3CA58);
      return (*(*(v20 - 8) + 16))(a1, v21, v20);
    }

    else
    {
      if (qword_1EDF3CA50 != -1)
      {
        swift_once();
      }

      v26 = sub_1D725BD1C();
      __swift_project_value_buffer(v26, qword_1EDF3CA58);
      sub_1D725BCFC();
      v27 = sub_1D725B17C();
      (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
      return sub_1D725BCEC();
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D60DB924(v17, v7, type metadata accessor for FormatVersioningModeRelease);
      v23 = *(v4 + 20);
      v24 = sub_1D725BD1C();
      (*(*(v24 - 8) + 16))(a1, &v7[v23], v24);
      return sub_1D60DB8C4(v7, type metadata accessor for FormatVersioningModeRelease);
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1D60DB924(v17, v7, type metadata accessor for FormatVersioningModeRelease);
      sub_1D725BCFC();
      v19 = sub_1D725B17C();
      (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
      sub_1D725BCEC();
      return sub_1D60DB8C4(v7, type metadata accessor for FormatVersioningModeRelease);
    }

    v25 = sub_1D725BD1C();
    return (*(*(v25 - 8) + 32))(a1, v17, v25);
  }
}

uint64_t FormatVersioningModeSelection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  sub_1D60DB624();
  v70 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v64 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for FormatVersioningModeRelease(0);
  MEMORY[0x1EEE9AC00](v69, v6);
  v65 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v63 - v10;
  sub_1D60DB7A0(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v67 = *(v12 - 8);
  v68 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v63 - v14;
  v16 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v20 = v75;
  sub_1D7264B0C();
  if (!v20)
  {
    v63[0] = v11;
    v63[1] = v16;
    v75 = v19;
    v21 = v67;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v22 = sub_1D7264AFC();
    v23 = Dictionary<>.errorOnUnknownKeys.getter(v22);

    v24 = v68;
    if (v23)
    {
      v25 = sub_1D726433C();
      v26 = (v25 + 40);
      v27 = *(v25 + 16) + 1;
      while (--v27)
      {
        v28 = v26 + 2;
        v29 = *v26;
        v26 += 2;
        if (v29 >= 4)
        {
          v30 = *(v28 - 3);

          sub_1D5E2D970();
          swift_allocError();
          *v31 = v30;
          *(v31 + 8) = v29;
          *(v31 + 16) = &unk_1F5111728;
          *(v31 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v21 + 8))(v15, v24);
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }
      }
    }

    sub_1D60DB6D8();
    v74[0] = 0uLL;
    sub_1D726431C();
    if (v71 > 2u)
    {
      if (v71 == 3)
      {
        v74[0] = xmmword_1D7279980;
        sub_1D60DAFD0(&qword_1EC8836C8, type metadata accessor for FormatVersioningModeRelease);
        v47 = sub_1D726431C();
        v49 = v21;
        if (qword_1EDF31F20 != -1)
        {
          v47 = swift_once();
        }

        MEMORY[0x1EEE9AC00](v47, v48);
        v50 = v63[0];
        v63[-2] = v63[0];
        sub_1D5E3EB3C(sub_1D60DC080, v51, &v71);
        if (!v72)
        {
          sub_1D5BFB774(&v71, &qword_1EC8836D0, &qword_1EDF331B0);
          sub_1D60DB74C();
          swift_allocError();
          *v61 = 3;
          swift_willThrow();
          (*(v49 + 8))(v15, v24);
          sub_1D60DB8C4(v50, type metadata accessor for FormatVersioningModeRelease);
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        sub_1D5B63F14(&v71, v74);
        sub_1D5B68374(v74, &v71);
        v52 = v72;
        v53 = v73;
        __swift_project_boxed_opaque_existential_1(&v71, v72);
        v54 = sub_1D722A00C(v52, v53);
        v55 = v75;
        *v75 = v54;
        v55[1] = v56;
        v57 = v72;
        v58 = v73;
        __swift_project_boxed_opaque_existential_1(&v71, v72);
        sub_1D5D2F260(v57, v58);
        __swift_destroy_boxed_opaque_existential_1(v74);
        v34 = v55;
        (*(v49 + 8))(v15, v24);
        __swift_destroy_boxed_opaque_existential_1(&v71);
        swift_storeEnumTagMultiPayload();
        v46 = v63[0];
      }

      else
      {
        if (v71 != 4)
        {
          v74[0] = xmmword_1D7279980;
          sub_1D60DAFD0(&qword_1EC8836C0, sub_1D60DB624);
          v59 = v64;
          sub_1D726431C();
          (*(v21 + 8))(v15, v24);
          v60 = sub_1D725BD1C();
          v34 = v75;
          (*(*(v60 - 8) + 32))(v75, v59, v60);
          swift_storeEnumTagMultiPayload();
          v33 = v66;
          goto LABEL_23;
        }

        v74[0] = xmmword_1D7279980;
        sub_1D60DAFD0(&qword_1EC8836C8, type metadata accessor for FormatVersioningModeRelease);
        v35 = sub_1D726431C();
        if (qword_1EDF31F20 != -1)
        {
          v35 = swift_once();
        }

        MEMORY[0x1EEE9AC00](v35, v36);
        v37 = v65;
        v63[-2] = v65;
        sub_1D5E3EB3C(sub_1D60DB72C, v38, &v71);
        if (!v72)
        {
          sub_1D5BFB774(&v71, &qword_1EC8836D0, &qword_1EDF331B0);
          sub_1D60DB74C();
          swift_allocError();
          *v62 = 3;
          swift_willThrow();
          (*(v21 + 8))(v15, v24);
          sub_1D60DB8C4(v37, type metadata accessor for FormatVersioningModeRelease);
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        sub_1D5B63F14(&v71, v74);
        sub_1D5B68374(v74, &v71);
        v39 = v72;
        v40 = v73;
        __swift_project_boxed_opaque_existential_1(&v71, v72);
        v41 = sub_1D722A00C(v39, v40);
        v42 = v75;
        *v75 = v41;
        v42[1] = v43;
        v44 = v72;
        v45 = v73;
        __swift_project_boxed_opaque_existential_1(&v71, v72);
        sub_1D5D2F260(v44, v45);
        __swift_destroy_boxed_opaque_existential_1(v74);
        v34 = v42;
        (*(v21 + 8))(v15, v24);
        __swift_destroy_boxed_opaque_existential_1(&v71);
        swift_storeEnumTagMultiPayload();
        v46 = v65;
      }

      sub_1D60DB8C4(v46, type metadata accessor for FormatVersioningModeRelease);
      v33 = v66;
    }

    else
    {
      v33 = v66;
      (*(v21 + 8))(v15, v24);
      v34 = v75;
      swift_storeEnumTagMultiPayload();
    }

LABEL_23:
    sub_1D60DB924(v34, v33, type metadata accessor for FormatVersioningModeSelection);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D60D833C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  if (sub_1D722A00C(v3, v4) == *a2 && v5 == a2[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D72646CC();
  }

  return v7 & 1;
}

uint64_t FormatVersioningModeSelection.encode(to:)(void *a1)
{
  sub_1D60DB624();
  v37[1] = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v38 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725BD1C();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v42 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for FormatVersioningModeRelease(0);
  MEMORY[0x1EEE9AC00](v39, v8);
  v41 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v40 = v37 - v12;
  v13 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60DB7A0(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
  v18 = v17;
  v46 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v37 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B5C();
  sub_1D60DB808(v47, v16, type metadata accessor for FormatVersioningModeSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v49 = 0;
      sub_1D60DB870();
      v48 = 0uLL;
      v27 = v21;
    }

    else
    {
      v27 = v21;
      if (EnumCaseMultiPayload == 4)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      v49 = v28;
      sub_1D60DB870();
      v48 = 0uLL;
    }

    sub_1D726443C();
    return (*(v46 + 8))(v27, v18);
  }

  if (!EnumCaseMultiPayload)
  {
    v29 = v40;
    sub_1D60DB924(v16, v40, type metadata accessor for FormatVersioningModeRelease);
    v49 = 3;
    sub_1D60DB870();
    v48 = 0uLL;
    v27 = v21;
    v30 = v45;
    sub_1D726443C();
    if (!v30)
    {
      v48 = xmmword_1D7279980;
      sub_1D60DAFD0(&qword_1EC8836F0, type metadata accessor for FormatVersioningModeRelease);
      sub_1D726443C();
    }

    sub_1D60DB8C4(v29, type metadata accessor for FormatVersioningModeRelease);
    return (*(v46 + 8))(v27, v18);
  }

  v23 = v18;
  v24 = v21;
  if (EnumCaseMultiPayload == 1)
  {
    v25 = v41;
    sub_1D60DB924(v16, v41, type metadata accessor for FormatVersioningModeRelease);
    v49 = 4;
    sub_1D60DB870();
    v48 = 0uLL;
    v26 = v45;
    sub_1D726443C();
    if (!v26)
    {
      v48 = xmmword_1D7279980;
      sub_1D60DAFD0(&qword_1EC8836F0, type metadata accessor for FormatVersioningModeRelease);
      sub_1D726443C();
    }

    sub_1D60DB8C4(v25, type metadata accessor for FormatVersioningModeRelease);
  }

  else
  {
    v32 = v42;
    v31 = v43;
    v33 = v44;
    (*(v43 + 32))(v42, v16, v44);
    v49 = 5;
    sub_1D60DB870();
    v48 = 0uLL;
    v34 = v45;
    sub_1D726443C();
    if (!v34)
    {
      v35 = v38;
      (*(v31 + 16))(v38, v32, v33);
      v48 = xmmword_1D7279980;
      sub_1D60DAFD0(&qword_1EC8836E8, sub_1D60DB624);
      sub_1D726443C();
      sub_1D60DB8C4(v35, sub_1D60DB624);
    }

    (*(v31 + 8))(v32, v33);
  }

  return (*(v46 + 8))(v24, v23);
}

uint64_t sub_1D60D8A5C()
{
  sub_1D72621EC();
}

uint64_t sub_1D60D8B7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D60DBEFC();
  *a1 = result;
  return result;
}

void sub_1D60D8BAC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006D756D696ELL;
  v4 = 0x694D746365746564;
  v5 = 0xEF746E6572727543;
  v6 = 0x6E6F4E6465786966;
  v7 = 0x80000001D73BC8D0;
  v8 = 0xD00000000000001CLL;
  if (v2 != 4)
  {
    v8 = 0x6465786966;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC000000746E6572;
  v10 = 0x7275436465786966;
  if (v2 != 1)
  {
    v10 = 0xD000000000000019;
    v9 = 0x80000001D73BC8A0;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1D60D8C94()
{
  v1 = *v0;
  v2 = 0x694D746365746564;
  v3 = 0x6E6F4E6465786966;
  v4 = 0xD00000000000001CLL;
  if (v1 != 4)
  {
    v4 = 0x6465786966;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7275436465786966;
  if (v1 != 1)
  {
    v5 = 0xD000000000000019;
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

uint64_t sub_1D60D8D78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D60DBEFC();
  *a1 = result;
  return result;
}

uint64_t sub_1D60D8E50(uint64_t a1)
{
  v2 = sub_1D60DBF48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60D8E8C(uint64_t a1)
{
  v2 = sub_1D60DBF48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D60D8EF8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v10, v10);
  swift_storeEnumTagMultiPayload();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6EA0], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  sub_1D60DBE68();
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA7C0 = result;
  return result;
}

uint64_t static FormatVersioningModeSelection.dataType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D6EC0];
  v3 = sub_1D725988C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t static FormatVersioningModeSelection.convert(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B76B10(a1, v12);
  if (swift_dynamicCast())
  {
    v3 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v3 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      v4 = sub_1D6011D6C(v10, v11);
      v6 = v5;
      type metadata accessor for FormatJSONDecoder();
      swift_allocObject();
      sub_1D5B7BACC(MEMORY[0x1E69E7CC0]);
      v7 = type metadata accessor for FormatVersioningModeSelection(0);
      sub_1D60DAFD0(&qword_1EC8836F8, type metadata accessor for FormatVersioningModeSelection);
      sub_1D725A69C();
      sub_1D5B952F8(v4, v6);

      return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
    }
  }

  v8 = type metadata accessor for FormatVersioningModeSelection(0);
  return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
}

uint64_t FormatVersioningModeSelection.toData()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FormatJSONEncoder();
  swift_allocObject();
  sub_1D6BCED58(MEMORY[0x1E69E7CC0]);
  type metadata accessor for FormatVersioningModeSelection(0);
  sub_1D60DAFD0(&qword_1EC883700, type metadata accessor for FormatVersioningModeSelection);
  v2 = sub_1D72578BC();
  v4 = v3;

  sub_1D5E3E824(v2, v4);
  v5 = sub_1D60DA9EC(v2, v4);
  if (v6)
  {
    goto LABEL_8;
  }

  v12 = v2;
  v13 = v4;
  sub_1D5E3E824(v2, v4);
  sub_1D5B49474(0, &qword_1EC883708);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_1D5BFB774(v10, &qword_1EC89A1E0, &qword_1EC883708);
LABEL_7:
    v5 = sub_1D60DA7C8(v2, v4);
LABEL_8:
    v7 = v5;
    v8 = v6;
    sub_1D5B952F8(v2, v4);
    goto LABEL_9;
  }

  sub_1D5B63F14(v10, v14);
  __swift_project_boxed_opaque_existential_1(v14, v15);
  if ((sub_1D726415C() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    goto LABEL_7;
  }

  sub_1D5B952F8(v2, v4);
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_1D726414C();
  v8 = *(&v10[0] + 1);
  v7 = *&v10[0];
  __swift_destroy_boxed_opaque_existential_1(v14);
LABEL_9:
  a1[3] = MEMORY[0x1E69E6158];
  result = sub_1D5B952F8(v2, v4);
  *a1 = v7;
  a1[1] = v8;
  return result;
}

uint64_t sub_1D60D95C0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D6EC0];
  v3 = sub_1D725988C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D60D9640()
{
  v1 = v0;
  v2 = type metadata accessor for FormatVersioningModeRelease(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60DBA60(0, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v27 - v8;
  v10 = sub_1D725ACBC();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1D725BD1C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60DB808(v1, v20, type metadata accessor for FormatVersioningModeSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D60DB924(v20, v5, type metadata accessor for FormatVersioningModeRelease);
      sub_1D60DAFD0(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
      v25 = sub_1D72644BC();
      sub_1D60DB8C4(v5, type metadata accessor for FormatVersioningModeRelease);
      return v25;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1D60DB924(v20, v5, type metadata accessor for FormatVersioningModeRelease);
      sub_1D725BCFC();
      v22 = sub_1D725B17C();
      (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
      sub_1D725BCEC();
      sub_1D60DAFD0(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
      v23 = sub_1D72644BC();
      (*(v13 + 8))(v16, v12);
      sub_1D60DB8C4(v5, type metadata accessor for FormatVersioningModeRelease);
      return v23;
    }

    (*(v13 + 32))(v16, v20, v12);
LABEL_16:
    sub_1D60DAFD0(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
    v23 = sub_1D72644BC();
    (*(v13 + 8))(v16, v12);
    return v23;
  }

  if (EnumCaseMultiPayload == 3)
  {
    return 0x746365746544;
  }

  if (EnumCaseMultiPayload != 4)
  {
    if (qword_1EDF3CA50 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, qword_1EDF3CA58);
    sub_1D725BCFC();
    v26 = sub_1D725B17C();
    (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
    sub_1D725BCEC();
    goto LABEL_16;
  }

  if (qword_1EDF3CA50 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EDF3CA58);
  sub_1D60DAFD0(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
  return sub_1D72644BC();
}

uint64_t sub_1D60D9BFC()
{
  v1 = v0;
  v2 = type metadata accessor for FormatVersioningModeRelease(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1D725BD1C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v32[-v13];
  v15 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v32[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D60DB808(v1, v18, type metadata accessor for FormatVersioningModeSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 3) >= 2)
    {
      if (qword_1EDF3CA50 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v6, qword_1EDF3CA58);
      if (qword_1EDF31E88 != -1)
      {
        swift_once();
      }

      v22 = qword_1EDFFCCD8;
      v23 = unk_1EDFFCCE0;
      __swift_project_boxed_opaque_existential_1(qword_1EDFFCCC0, qword_1EDFFCCD8);
      sub_1D5D2F260(v22, v23);
      LOBYTE(v22) = sub_1D725BCBC();
      (*(v7 + 8))(v10, v6);
      if (v22)
      {
        v24 = qword_1EDFFCCD8;
        v25 = unk_1EDFFCCE0;
        __swift_project_boxed_opaque_existential_1(qword_1EDFFCCC0, qword_1EDFFCCD8);
        return sub_1D722A00C(v24, v25);
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D60DB924(v18, v5, type metadata accessor for FormatVersioningModeRelease);
      v20 = *v5;

      sub_1D60DB8C4(v5, type metadata accessor for FormatVersioningModeRelease);
      return v20;
    }

    v26 = (*(v7 + 32))(v14, v18, v6);
    if (qword_1EDF31F18 != -1)
    {
      v26 = swift_once();
    }

    MEMORY[0x1EEE9AC00](v26, v27);
    *&v32[-16] = v14;
    sub_1D5E3EB3C(sub_1D60DBF9C, v28, &v33);
    if (v34)
    {
      sub_1D5B63F14(&v33, v35);
      v29 = v36;
      v30 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v31 = sub_1D722A00C(v29, v30);
      __swift_destroy_boxed_opaque_existential_1(v35);
      (*(v7 + 8))(v14, v6);
      return v31;
    }

    sub_1D5BFB774(&v33, &qword_1EC8836D0, &qword_1EDF331B0);
    (*(v7 + 8))(v14, v6);
  }

  else
  {
    sub_1D60DB8C4(v18, type metadata accessor for FormatVersioningModeSelection);
  }

  return 0;
}

uint64_t sub_1D60DA05C(void *a1)
{
  v2 = sub_1D725BD1C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_1D5D2F260(v7, v8);
  LOBYTE(a1) = sub_1D725BCBC();
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t sub_1D60DA16C()
{
  v0 = type metadata accessor for FormatVersioningModeSelection(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60DBA60(0, &qword_1EC88F510, type metadata accessor for FormatVersioningModeSelection, MEMORY[0x1E69E6F90]);
  v5 = *(v1 + 72);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7279970;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  if (qword_1EDF31F18 != -1)
  {
    swift_once();
  }

  sub_1D5B49474(0, &qword_1EDF331B0);
  sub_1D725BD1C();
  sub_1D60DAFD0(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);

  v8 = sub_1D72626DC();

  v9 = *(v8 + 16);
  if (v9)
  {
    v18 = v7;
    v22 = MEMORY[0x1E69E7CC0];
    sub_1D6997204(0, v9, 0);
    v10 = v22;
    v17 = v8;
    v11 = v8 + 32;
    do
    {
      sub_1D5B68374(v11, v19);
      v12 = v20;
      v13 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      sub_1D5D2F260(v12, v13);
      swift_storeEnumTagMultiPayload();
      __swift_destroy_boxed_opaque_existential_1(v19);
      v22 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D6997204(v14 > 1, v15 + 1, 1);
        v10 = v22;
      }

      *(v10 + 16) = v15 + 1;
      sub_1D60DB924(v4, v10 + v6 + v15 * v5, type metadata accessor for FormatVersioningModeSelection);
      v11 += 40;
      --v9;
    }

    while (v9);

    v7 = v18;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v19[0] = v7;
  result = sub_1D6985254(v10);
  off_1EC883688 = v19[0];
  return result;
}

uint64_t sub_1D60DA4F4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return sub_1D5D2F260(v1, v2);
}

uint64_t sub_1D60DA540()
{
  sub_1D725BD1C();
  sub_1D60DAFD0(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
  return sub_1D7261F4C() & 1;
}

uint64_t static FormatVersioningModeSelection.allCases.getter()
{
  if (qword_1EC87D518 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static FormatVersioningModeSelection.allCases.setter(void *a1)
{
  if (qword_1EC87D518 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_1EC883688 = a1;
}

uint64_t (*static FormatVersioningModeSelection.allCases.modify())()
{
  if (qword_1EC87D518 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D60DA748@<X0>(void *a1@<X8>)
{
  if (qword_1EC87D518 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = off_1EC883688;
}

uint64_t sub_1D60DA7C8(uint64_t a1, unint64_t a2)
{
  sub_1D5E3E824(a1, a2);
  sub_1D60DA870(a1, a2);
  v4 = sub_1D72621CC();

  return v4;
}

uint64_t sub_1D60DA834@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D72621CC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1D60DA870(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D72586BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_1D5B952F8(a1, a2);
      return;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      sub_1D5C42524(v10, 0);
      v13 = sub_1D72585EC();
      sub_1D5B952F8(a1, a2);
      v14 = *(v5 + 8);
      v5 += 8;
      v14(v8, v4);
      if (v13 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v15 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v15;
      if (!v15)
      {
        goto LABEL_12;
      }
    }
  }
}

uint64_t sub_1D60DA9EC(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_1D72621CC();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_1D72621CC();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_1D7257CAC();
  if (a1)
  {
    a1 = sub_1D7257CDC();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_1D7257CAC() || !__OFSUB__(v5, sub_1D7257CDC()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_1D7257CCC();
  return sub_1D72621CC();
}

uint64_t _s8NewsFeed20FormatVersioningModeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725BD1C();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for FormatVersioningMode(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v35 - v18;
  sub_1D60DBFBC(0, &qword_1EC883778, type metadata accessor for FormatVersioningMode);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v35 - v22;
  v25 = *(v24 + 56);
  sub_1D60DB808(a1, &v35 - v22, type metadata accessor for FormatVersioningMode);
  sub_1D60DB808(a2, &v23[v25], type metadata accessor for FormatVersioningMode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D60DB808(v23, v19, type metadata accessor for FormatVersioningMode);
    if (!swift_getEnumCaseMultiPayload())
    {
      v32 = v35;
      v31 = v36;
      (*(v35 + 32))(v11, &v23[v25], v36);
      v29 = sub_1D725BCBC();
      v33 = *(v32 + 8);
      v33(v11, v31);
      v33(v19, v31);
      goto LABEL_12;
    }

    v15 = v19;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D60DB808(v23, v15, type metadata accessor for FormatVersioningMode);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = v35;
      v27 = v36;
      (*(v35 + 32))(v7, &v23[v25], v36);
      v29 = sub_1D725BCBC();
      v30 = *(v28 + 8);
      v30(v7, v27);
      v30(v15, v27);
LABEL_12:
      sub_1D60DB8C4(v23, type metadata accessor for FormatVersioningMode);
      return v29 & 1;
    }

LABEL_7:
    (*(v35 + 8))(v15, v36);
LABEL_10:
    sub_1D60DC01C(v23, &qword_1EC883778, type metadata accessor for FormatVersioningMode);
    v29 = 0;
    return v29 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_10;
  }

  sub_1D60DB8C4(v23, type metadata accessor for FormatVersioningMode);
  v29 = 1;
  return v29 & 1;
}

unint64_t sub_1D60DAF7C()
{
  result = qword_1EC883698;
  if (!qword_1EC883698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883698);
  }

  return result;
}

uint64_t sub_1D60DAFD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8NewsFeed29FormatVersioningModeSelectionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725BD1C();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for FormatVersioningModeRelease(0);
  MEMORY[0x1EEE9AC00](v46, v8);
  v45 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v11);
  v44 = (&v43 - v12);
  v13 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v43 - v19);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (&v43 - v23);
  sub_1D60DBFBC(0, &qword_1EC883770, type metadata accessor for FormatVersioningModeSelection);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v43 - v27;
  v30 = *(v29 + 56);
  sub_1D60DB808(a1, &v43 - v27, type metadata accessor for FormatVersioningModeSelection);
  sub_1D60DB808(a2, &v28[v30], type metadata accessor for FormatVersioningModeSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_36;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_36;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 5)
    {
      goto LABEL_36;
    }

    goto LABEL_26;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1D60DB808(v28, v24, type metadata accessor for FormatVersioningModeSelection);
    if (!swift_getEnumCaseMultiPayload())
    {
      v39 = v44;
      sub_1D60DB924(&v28[v30], v44, type metadata accessor for FormatVersioningModeRelease);
      v40 = *v24 == *v39 && v24[1] == v39[1];
      if (v40 || (sub_1D72646CC()) && (sub_1D725BCBC())
      {
        sub_1D60DB8C4(v39, type metadata accessor for FormatVersioningModeRelease);
        v34 = v24;
        goto LABEL_35;
      }

      sub_1D60DB8C4(v39, type metadata accessor for FormatVersioningModeRelease);
      v42 = v24;
      goto LABEL_40;
    }

    sub_1D60DB8C4(v24, type metadata accessor for FormatVersioningModeRelease);
LABEL_26:
    sub_1D60DC01C(v28, &qword_1EC883770, type metadata accessor for FormatVersioningModeSelection);
LABEL_27:
    v37 = 0;
    return v37 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D60DB808(v28, v20, type metadata accessor for FormatVersioningModeSelection);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = v45;
      sub_1D60DB924(&v28[v30], v45, type metadata accessor for FormatVersioningModeRelease);
      v33 = *v20 == *v32 && v20[1] == v32[1];
      if (v33 || (sub_1D72646CC()) && (sub_1D725BCBC())
      {
        sub_1D60DB8C4(v32, type metadata accessor for FormatVersioningModeRelease);
        v34 = v20;
LABEL_35:
        sub_1D60DB8C4(v34, type metadata accessor for FormatVersioningModeRelease);
LABEL_36:
        sub_1D60DB8C4(v28, type metadata accessor for FormatVersioningModeSelection);
        v37 = 1;
        return v37 & 1;
      }

      sub_1D60DB8C4(v32, type metadata accessor for FormatVersioningModeRelease);
      v42 = v20;
LABEL_40:
      sub_1D60DB8C4(v42, type metadata accessor for FormatVersioningModeRelease);
      sub_1D60DB8C4(v28, type metadata accessor for FormatVersioningModeSelection);
      goto LABEL_27;
    }

    sub_1D60DB8C4(v20, type metadata accessor for FormatVersioningModeRelease);
    goto LABEL_26;
  }

  sub_1D60DB808(v28, v16, type metadata accessor for FormatVersioningModeSelection);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v47 + 8))(v16, v48);
    goto LABEL_26;
  }

  v36 = v47;
  v35 = v48;
  (*(v47 + 32))(v7, &v28[v30], v48);
  v37 = sub_1D725BCBC();
  v38 = *(v36 + 8);
  v38(v7, v35);
  v38(v16, v35);
  sub_1D60DB8C4(v28, type metadata accessor for FormatVersioningModeSelection);
  return v37 & 1;
}

void sub_1D60DB624()
{
  if (!qword_1EC8836A8)
  {
    sub_1D725BD1C();
    sub_1D60DAFD0(&qword_1EC8836B0, MEMORY[0x1E69D6B38]);
    v0 = type metadata accessor for FormatValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8836A8);
    }
  }
}

unint64_t sub_1D60DB6D8()
{
  result = qword_1EC8836B8;
  if (!qword_1EC8836B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8836B8);
  }

  return result;
}

unint64_t sub_1D60DB74C()
{
  result = qword_1EC8836D8;
  if (!qword_1EC8836D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8836D8);
  }

  return result;
}

void sub_1D60DB7A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D60DB808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D60DB870()
{
  result = qword_1EC8836E0;
  if (!qword_1EC8836E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8836E0);
  }

  return result;
}

uint64_t sub_1D60DB8C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D60DB924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D60DB9D8()
{
  result = qword_1EC883718;
  if (!qword_1EC883718)
  {
    sub_1D60DBA60(255, &qword_1EC883720, type metadata accessor for FormatVersioningModeSelection, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883718);
  }

  return result;
}

void sub_1D60DBA60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D60DBAEC()
{
  result = sub_1D725BD1C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D60DBB68()
{
  type metadata accessor for FormatVersioningModeRelease(319);
  if (v0 <= 0x3F)
  {
    sub_1D5D2C0E8(319, &qword_1EDF178D0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t sub_1D60DBC08()
{
  result = qword_1EC883728;
  if (!qword_1EC883728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883728);
  }

  return result;
}

unint64_t sub_1D60DBC60()
{
  result = qword_1EC883730;
  if (!qword_1EC883730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883730);
  }

  return result;
}

unint64_t sub_1D60DBCB8()
{
  result = qword_1EC883738;
  if (!qword_1EC883738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883738);
  }

  return result;
}

unint64_t sub_1D60DBD10()
{
  result = qword_1EC883740;
  if (!qword_1EC883740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883740);
  }

  return result;
}

unint64_t sub_1D60DBD68()
{
  result = qword_1EC883748;
  if (!qword_1EC883748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883748);
  }

  return result;
}

unint64_t sub_1D60DBDC0()
{
  result = qword_1EC883750;
  if (!qword_1EC883750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883750);
  }

  return result;
}

unint64_t sub_1D60DBE14()
{
  result = qword_1EC883758;
  if (!qword_1EC883758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883758);
  }

  return result;
}

void sub_1D60DBE68()
{
  if (!qword_1EC883760)
  {
    type metadata accessor for FormatVersioningModeSelection(255);
    sub_1D60DAFD0(&unk_1EC8858D0, type metadata accessor for FormatVersioningModeSelection);
    v0 = sub_1D725986C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC883760);
    }
  }
}

uint64_t sub_1D60DBEFC()
{
  v0 = sub_1D72641CC();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D60DBF48()
{
  result = qword_1EC883768;
  if (!qword_1EC883768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883768);
  }

  return result;
}

void sub_1D60DBFBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D60DC01C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D60DBFBC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D60DC0B0(void *a1)
{
  v3 = v1;
  sub_1D60DFD44(0, &qword_1EC883830, sub_1D60DFCF0, &type metadata for A12_V17.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60DFCF0();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D60DFDAC(&qword_1EC8801E8, type metadata accessor for CGRect);
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

uint64_t sub_1D60DC2F8(uint64_t a1)
{
  v2 = sub_1D60DFCF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60DC334(uint64_t a1)
{
  v2 = sub_1D60DFCF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D60DC370@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D60DF8D0(a1, v6);
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

uint64_t sub_1D60DC3D0()
{
  sub_1D60DF620();

  return sub_1D725A24C();
}

uint64_t sub_1D60DC44C@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D60DFD44(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D60DC508@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v118 = a2;
  v135 = a1;
  v107 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v119 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v122 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v117 = &v106 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v123 = &v106 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v120 = &v106 - v17;
  v18 = sub_1D725895C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for GroupLayoutContext();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v23);
  v116 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v106 - v27;
  v112 = &v106 - v27;
  v121 = type metadata accessor for GroupLayoutBindingContext();
  v29 = *(v121 - 1);
  MEMORY[0x1EEE9AC00](v121, v30);
  v32 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v5;
  v111 = *v5;
  v34 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  sub_1D5BE3ED8(v135, v32, type metadata accessor for GroupLayoutBindingContext);
  v113 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v118, v28, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v110 = sub_1D725893C();
  v109 = v35;
  (*(v19 + 8))(v22, v18);
  v133 = &type metadata for A12_V17;
  v36 = sub_1D5ECEC10();
  v134 = v36;
  LOBYTE(v131) = v33;
  *(&v131 + 1) = v34;
  v132 = v5;
  type metadata accessor for GroupLayoutKey();
  v37 = swift_allocObject();
  v38 = v34;
  sub_1D5BEE8A0(v34, v5);
  v124[0] = sub_1D7264C5C();
  v124[1] = v39;
  v129 = 95;
  v130 = 0xE100000000000000;
  v127 = 45;
  v128 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v40 = sub_1D7263A6C();
  v42 = v41;
  v43 = v116;

  *(v37 + 16) = v40;
  *(v37 + 24) = v42;
  v44 = (v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v45 = v109;
  *v44 = v110;
  v44[1] = v45;
  sub_1D5B68374(&v131, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v46 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v32, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v29 + 56))(v37 + v46, 0, 1, v121);
  v47 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v112, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v48 = *(v114 + 56);
  v114 = v37;
  v48(v37 + v47, 0, 1, v115);
  __swift_destroy_boxed_opaque_existential_1(&v131);
  v133 = &type metadata for A12_V17;
  v134 = v36;
  LOBYTE(v131) = v111;
  v49 = v38;
  *(&v131 + 1) = v38;
  v132 = v5;
  sub_1D5BE3ED8(v118, v43, v113);
  sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  v118 = v50;
  inited = swift_initStackObject();
  v52 = MEMORY[0x1E69E7CC0];
  v115 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v53 = inited + 16;
  swift_beginAccess();
  sub_1D5BEE8A0(v49, v5);
  v54 = sub_1D5C0F8FC(0, 1, 1, v52);
  v56 = *(v54 + 16);
  v55 = *(v54 + 24);
  v57 = (v56 + 1);
  if (v56 >= v55 >> 1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    *(v54 + 16) = v57;
    v58 = v54 + 16 * v56;
    *(v58 + 32) = sub_1D63106DC;
    *(v58 + 40) = 0;
    *v53 = v54;
    swift_endAccess();
    v56 = v121[14];
    v59 = v135;
    v60 = *&v135[v56];
    if (v60[2])
    {
      v61 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
      if (v62)
      {
        v60 = *&v60[7][8 * v61];

        v57 = sub_1D5C14D80(v63);

        if (v57)
        {
          break;
        }
      }
    }

    if (qword_1F5111798)
    {
      v124[0] = &unk_1F5111778;
      v4 = v108;
      sub_1D5E239F4(v124);
      if (v4)
      {
        goto LABEL_75;
      }

      v67 = *(v124[0] + 2);
      if (v67)
      {
        v68 = *(v124[0] + 4);

        sub_1D5ED8048();
        swift_allocError();
        strcpy(v69, "FeedHeadline");
        v69[13] = 0;
        *(v69 + 7) = -5120;
        *(v69 + 2) = 0;
        *(v69 + 3) = 0;
        *(v69 + 4) = 4;
        *(v69 + 5) = v68;
        *(v69 + 6) = 0;
        *(v69 + 7) = 0;
        v69[64] = 0;
        swift_willThrow();
        goto LABEL_64;
      }

      __break(1u);
LABEL_69:
      v57 = sub_1D5C0F8FC((v67 > 1), v37, 1, v57);
      goto LABEL_30;
    }

    v42 = MEMORY[0x1E69E7CC0];
LABEL_29:
    v76 = swift_initStackObject();
    v123 = v76;
    *(v76 + 16) = v52;
    v60 = (v76 + 16);
    swift_beginAccess();
    v57 = sub_1D5C0F8FC(0, 1, 1, v52);
    v54 = *(v57 + 2);
    v67 = *(v57 + 3);
    v37 = v54 + 1;
    if (v54 >= v67 >> 1)
    {
      goto LABEL_69;
    }

LABEL_30:
    *(v57 + 2) = v37;
    v77 = &v57[16 * v54];
    *(v77 + 4) = sub_1D63106DC;
    *(v77 + 5) = 0;
    *v60 = v57;
    swift_endAccess();
    if (!*(*&v59[v56] + 16) || (sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v78 & 1) == 0) || (v79 = , v37 = sub_1D5C14D80(v79), , !v37))
    {
      if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqzq_s64(xmmword_1F51117C0), vceqzq_s64(unk_1F51117D0)))))
      {

        v84 = MEMORY[0x1E69E7CC0];
LABEL_56:
        v124[0] = v42;
        sub_1D5C122E4(v84);
        v97 = v124[0];
        v98 = type metadata accessor for A12_V17.Bound();
        v99 = v107;
        v107[3] = v98;
        v99[4] = sub_1D60DFDAC(&qword_1EC883790, type metadata accessor for A12_V17.Bound);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v99);
        *boxed_opaque_existential_1 = v114;
        sub_1D5B63F14(&v131, (boxed_opaque_existential_1 + 1));
        result = sub_1D5BDA904(v43, boxed_opaque_existential_1 + *(v98 + 24), type metadata accessor for GroupLayoutContext);
        *(boxed_opaque_existential_1 + *(v98 + 28)) = v97;
        return result;
      }

      v124[0] = &unk_1F51117A0;
      v4 = v108;
      sub_1D5E239F4(v124);
      if (v4)
      {
        goto LABEL_75;
      }

      if (!*(v124[0] + 2))
      {
        goto LABEL_71;
      }

      v85 = *(v124[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v86, "FeedHeadline");
      v86[13] = 0;
      *(v86 + 7) = -5120;
      *(v86 + 2) = 0;
      *(v86 + 3) = 0;
      *(v86 + 4) = 0;
      *(v86 + 5) = v85;
      *(v86 + 6) = 0;
      *(v86 + 7) = 0;
      v86[64] = 0;
      swift_willThrow();
LABEL_64:

      sub_1D5BE792C(v43, type metadata accessor for GroupLayoutContext);
      return __swift_destroy_boxed_opaque_existential_1(&v131);
    }

    v120 = v42;
    v43 = *(v37 + 16);
    if (!v43)
    {
      v57 = MEMORY[0x1E69E7CC0];
LABEL_48:
      if ((*v59 & 1) == 0)
      {

        v87 = sub_1D62F071C(v57);

        v57 = v87;
      }

      v42 = v120;
      v88 = *&v59[v121[18]];
      v89 = *&v59[v121[19]];
      if (__OFSUB__(v88, v89))
      {
        goto LABEL_72;
      }

      v90 = sub_1D5C0FAD4(v57, v88 - v89);
      v91 = sub_1D5C11E10(&unk_1F51117A0, v90, v37);

      if (v91)
      {

        strcpy(v124, "FeedHeadline");
        BYTE5(v124[1]) = 0;
        HIWORD(v124[1]) = -5120;
        v125 = 0;
        v126 = 0;

        v93 = sub_1D5C107C4(v92);

        sub_1D5BDACA8(v124, v93);
        swift_setDeallocating();

        v84 = v91;
LABEL_55:
        v43 = v116;
        goto LABEL_56;
      }

      v94 = sub_1D5C11E10(&unk_1F51117A0, v57, v37);

      if (v94)
      {
        strcpy(v124, "FeedHeadline");
        BYTE5(v124[1]) = 0;
        HIWORD(v124[1]) = -5120;
        v125 = 0;
        v126 = 0;

        v96 = sub_1D5C107C4(v95);

        sub_1D5BDACA8(v124, v96);
        swift_setDeallocating();

        v84 = v94;
        goto LABEL_55;
      }

      v124[0] = &unk_1F51117A0;
      v4 = v108;
      sub_1D5E239F4(v124);
      if (v4)
      {
        goto LABEL_75;
      }

      v43 = v116;
      if (!*(v124[0] + 2))
      {
        goto LABEL_74;
      }

      v104 = *(v124[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v105, "FeedHeadline");
      v105[13] = 0;
      *(v105 + 7) = -5120;
      *(v105 + 2) = 0;
      *(v105 + 3) = 0;
      *(v105 + 4) = 0;
      *(v105 + 5) = v104;
      *(v105 + 6) = 0;
      *(v105 + 7) = 0;
      v105[64] = 0;
      swift_willThrow();
      goto LABEL_63;
    }

    v42 = 0;
    v57 = MEMORY[0x1E69E7CC0];
    v53 = v119;
    while (1)
    {
      v55 = *(v37 + 16);
      if (v42 >= v55)
      {
        break;
      }

      v80 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v52 = *(v53 + 72);
      v81 = v117;
      sub_1D5BE3ED8(v37 + v80 + v52 * v42, v117, type metadata accessor for FeedHeadline);
      sub_1D5BDA904(v81, v122, type metadata accessor for FeedHeadline);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v124[0] = v57;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D5C0F91C(0, *(v57 + 2) + 1, 1);
        v53 = v119;
        v57 = v124[0];
      }

      v54 = *(v57 + 2);
      v83 = *(v57 + 3);
      v56 = v54 + 1;
      if (v54 >= v83 >> 1)
      {
        sub_1D5C0F91C(v83 > 1, v54 + 1, 1);
        v53 = v119;
        v57 = v124[0];
      }

      ++v42;
      *(v57 + 2) = v56;
      sub_1D5BDA904(v122, &v57[v80 + v54 * v52], type metadata accessor for FeedHeadline);
      v59 = v135;
      if (v43 == v42)
      {
        goto LABEL_48;
      }
    }

LABEL_66:
    __break(1u);
LABEL_67:
    v54 = sub_1D5C0F8FC((v55 > 1), v57, 1, v54);
  }

  v113 = v56;
  v52 = *(v57 + 2);
  if (v52)
  {
    v43 = 0;
    v56 = MEMORY[0x1E69E7CC0];
    v53 = v119;
    v54 = v120;
    while (1)
    {
      v55 = *(v57 + 2);
      if (v43 >= v55)
      {
        break;
      }

      v64 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v42 = *(v53 + 72);
      sub_1D5BE3ED8(&v57[v64 + v42 * v43], v54, type metadata accessor for FeedHeadline);
      if ((*(v54 + 32) & 4) != 0)
      {
        sub_1D5BDA904(v54, v123, type metadata accessor for FeedHeadline);
        v65 = swift_isUniquelyReferenced_nonNull_native();
        v124[0] = v56;
        if ((v65 & 1) == 0)
        {
          sub_1D5C0F91C(0, *(v56 + 16) + 1, 1);
          v53 = v119;
          v56 = v124[0];
        }

        v37 = *(v56 + 16);
        v66 = *(v56 + 24);
        if (v37 >= v66 >> 1)
        {
          sub_1D5C0F91C(v66 > 1, v37 + 1, 1);
          v53 = v119;
          v56 = v124[0];
        }

        *(v56 + 16) = v37 + 1;
        sub_1D5BDA904(v123, v56 + v64 + v37 * v42, type metadata accessor for FeedHeadline);
        v54 = v120;
      }

      else
      {
        sub_1D5BE792C(v54, type metadata accessor for FeedHeadline);
      }

      if (v52 == ++v43)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_66;
  }

  v56 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v59 = v135;
  if ((*v135 & 1) == 0)
  {

    v70 = sub_1D62F071C(v56);

    v56 = v70;
  }

  v43 = v116;
  v52 = MEMORY[0x1E69E7CC0];
  v71 = *&v59[v121[18]];
  v72 = *&v59[v121[19]];
  if (!__OFSUB__(v71, v72))
  {
    v73 = sub_1D5C0FAD4(v56, v71 - v72);
    v42 = sub_1D5C11E10(&unk_1F5111778, v73, v57);

    if (v42)
    {
    }

    else
    {
      v42 = sub_1D5C11E10(&unk_1F5111778, v56, v57);

      if (!v42)
      {
        v124[0] = &unk_1F5111778;
        v4 = v108;
        sub_1D5E239F4(v124);
        if (v4)
        {
          goto LABEL_75;
        }

        if (!*(v124[0] + 2))
        {
          goto LABEL_73;
        }

        v102 = *(v124[0] + 4);

        sub_1D5ED8048();
        swift_allocError();
        strcpy(v103, "FeedHeadline");
        v103[13] = 0;
        *(v103 + 7) = -5120;
        *(v103 + 2) = 0;
        *(v103 + 3) = 0;
        *(v103 + 4) = 4;
        *(v103 + 5) = v102;
        *(v103 + 6) = 0;
        *(v103 + 7) = 0;
        v103[64] = 0;
        swift_willThrow();
LABEL_63:
        swift_setDeallocating();
        goto LABEL_64;
      }
    }

    strcpy(v124, "FeedHeadline");
    BYTE5(v124[1]) = 0;
    HIWORD(v124[1]) = -5120;
    v125 = 0;
    v126 = 0;

    v75 = sub_1D5C107C4(v74);

    sub_1D5BDACA8(v124, v75);
    swift_setDeallocating();

    v56 = v113;
    goto LABEL_29;
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:

  __break(1u);
  return result;
}

uint64_t sub_1D60DD754@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  *&v42 = sub_1D725A36C();
  v3 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5ED811C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v8 = type metadata accessor for A12_V17.Bound();
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext();
  v11 = *(v9 + *(v10 + 40));
  v12 = *(v11 + 16);
  v13 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v12 + 16, v49);
  sub_1D5B68374(v12 + 56, v48);
  v14 = v13 * *(v12 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  v15 = swift_initStackObject();
  sub_1D5B63F14(v49, v15 + 16);
  sub_1D5B63F14(v48, v15 + 56);
  *(v15 + 96) = v14;
  LOBYTE(v47[0]) = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v47, (inited + 32));
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v15 + 16);
  __swift_destroy_boxed_opaque_existential_1(v15 + 56);
  v16 = *(v11 + 16);
  sub_1D5B68374(v16 + 16, v48);
  sub_1D5B68374(v16 + 56, v47);
  v17 = v13 * *(v16 + 96);
  v18 = swift_initStackObject();
  sub_1D5B63F14(v48, v18 + 16);
  sub_1D5B63F14(v47, v18 + 56);
  *(v18 + 96) = v17;
  v46[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v46, v49);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v18 + 16);
  __swift_destroy_boxed_opaque_existential_1(v18 + 56);
  v19 = sub_1D6F50B74(v49, *(*(v2 + *(v8 + 28)) + 16) - 1);
  *&v49[0] = inited;
  sub_1D698609C(v19);
  v20 = *&v49[0];
  v43 = v2;
  v45[2] = v2;

  v22 = sub_1D6310828(v21, v20, sub_1D60DF5BC, v45);

  v23 = *(v22 + 16);
  if (v23)
  {
    v38 = (2 * v23) | 1;
    v39 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    sub_1D5EC2DC4(v22, v22 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), 1, v38);
    v24 = v40;
  }

  else
  {

    v24 = v22;
  }

  *&v49[0] = v24;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D60DF67C(&qword_1EC880610);
  sub_1D7262C1C();

  v25 = *MEMORY[0x1E69D7130];
  v26 = sub_1D7259D1C();
  (*(*(v26 - 8) + 104))(v6, v25, v26);
  v27 = (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v42);
  MEMORY[0x1EEE9AC00](v27, v28);
  sub_1D60DF73C(0, &qword_1EC8837B0, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  sub_1D725A4CC();

  sub_1D725A4DC();
  v29 = v50;
  sub_1D5B49714(0, &qword_1EDF1B268);
  sub_1D60DF67C(&qword_1EDF1B248);
  v30 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268);
  v41 = v49[1];
  v42 = v49[0];
  *&v49[0] = v22;
  *&v48[0] = v29;
  MEMORY[0x1EEE9AC00](v30, v31);

  v32 = sub_1D725C00C();

  v33 = v44;
  *v44 = 0;
  v34 = v42;
  *(v33 + 24) = v41;
  *(v33 + 8) = v34;
  *&v49[0] = v32;
  sub_1D5B49714(0, &qword_1EDF1B4C8);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8);
  sub_1D5BDEFF8();
  v35 = sub_1D72623BC();

  v37 = MEMORY[0x1E69E7CC0];
  *(v33 + 5) = v35;
  *(v33 + 6) = v37;
  return result;
}

uint64_t sub_1D60DDDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D60DDE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D60DFD44(0, &qword_1EC8837C8, sub_1D60DF5CC, &type metadata for A12_V17.Layout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15[-v10];
  v18 = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = 12;
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D7490], v7);
  v16 = a2;
  v17 = a3;
  v13 = MEMORY[0x1E69D7150];
  sub_1D60DF73C(0, &qword_1EC8837D0, MEMORY[0x1E69D7150]);
  sub_1D60DF6F8(&qword_1EC8837D8, &qword_1EC8837D0, v13);
  sub_1D7259A2C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D60DE064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a2;
  v70 = a3;
  sub_1D60DFD44(0, &qword_1EC8837C8, sub_1D60DF5CC, &type metadata for A12_V17.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v54 - v8);
  v74 = a1;
  v10 = sub_1D725994C();
  v11 = swift_allocBox();
  v12 = *(v10 - 8);
  v13 = *(v12 + 104);
  v66 = *MEMORY[0x1E69D6F50];
  v67 = v10;
  v64 = v12 + 104;
  v65 = v13;
  v13(v14);
  *v9 = v11;
  v15 = *MEMORY[0x1E69D73C0];
  v16 = v6 + 104;
  v68 = *(v6 + 104);
  v63 = v15;
  v68(v9);
  v17 = MEMORY[0x1E69D6F38];
  sub_1D60DF73C(0, &qword_1EC8837E0, MEMORY[0x1E69D6F38]);
  v55 = v18;
  v72 = sub_1D60DF6F8(&qword_1EC8837E8, &qword_1EC8837E0, v17);
  sub_1D7259A9C();
  v20 = *(v6 + 8);
  v19 = v6 + 8;
  v20(v9, v5);
  v21 = a1;
  v74 = a1;
  sub_1D60DF7C0();
  v23 = v22;
  v24 = swift_allocBox();
  v26 = v25;
  v27 = *(v23 + 48);
  *v25 = 7;
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = v26 + v27;
  v31 = v20;
  (*(*(v29 - 8) + 104))(v30, v28, v29);
  *v9 = v24;
  v32 = *MEMORY[0x1E69D73E0];
  v62 = v16;
  (v68)(v9, v32, v5);
  v33 = v55;
  v73 = v69;
  sub_1D72599EC();
  v34 = v5;
  result = (v20)(v9, v5);
  v36 = *(v70 + 16);
  if (v36)
  {
    v37 = (v70 + 32);
    v58 = *MEMORY[0x1E69D74A8];
    v57 = *MEMORY[0x1E69D7098];
    v56 = xmmword_1D7273AE0;
    v60 = v5;
    v61 = v19;
    v59 = v21;
    v71 = v31;
    do
    {
      v38 = *v37++;
      v69 = v38;
      v70 = v36;
      v74 = v21;
      v39 = v67;
      v40 = swift_allocBox();
      v65(v41, v66, v39);
      *v9 = v40;
      v42 = v33;
      v43 = v68;
      (v68)(v9, v63, v34);

      sub_1D7259A9C();
      v71(v9, v34);
      v74 = v21;
      (v43)(v9, v58, v34);
      sub_1D60DF830();
      sub_1D60DFD44(0, &qword_1EC8837F8, sub_1D60DF5CC, &type metadata for A12_V17.Layout, MEMORY[0x1E69D70D8]);
      v45 = v44;
      v46 = v9;
      v47 = *(v44 - 8);
      v48 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v49 = swift_allocObject();
      *(v49 + 16) = v56;
      v50 = v45;
      v33 = v42;
      v51 = (*(v47 + 104))(v49 + v48, v57, v50);
      v9 = v46;
      MEMORY[0x1EEE9AC00](v51, v52);
      sub_1D72599EC();
      v53 = v71;

      v21 = v59;
      v34 = v60;
      result = v53(v46);
      v36 = v70 - 1;
    }

    while (v70 != 1);
  }

  return result;
}

uint64_t sub_1D60DE63C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60DFD44(0, &qword_1EC8837C8, sub_1D60DF5CC, &type metadata for A12_V17.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v27 - v12;
  v30 = a1;
  swift_getKeyPath();
  result = (*(v10 + 104))(v13, *MEMORY[0x1E69D7460], v9);
  if (*(a2 + 16))
  {
    v15 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v17 = v4[5];
    v18 = *MEMORY[0x1E69D7348];
    v19 = sub_1D725A34C();
    v28 = v13;
    v29 = v9;
    v20 = v10;
    v21 = v19;
    v22 = *(v19 - 8);
    (*(v22 + 104))(&v7[v17], v18, v19);
    (*(v22 + 56))(&v7[v17], 0, 1, v21);
    v23 = *MEMORY[0x1E69DDC70];
    *v7 = 0;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v23;
    v24 = v23;
    sub_1D61F750C(a2 + v16, v7);
    sub_1D5BE792C(v7, type metadata accessor for HeadlineViewLayout.Options);
    v25 = MEMORY[0x1E69D6F38];
    sub_1D60DF73C(0, &qword_1EC8837E0, MEMORY[0x1E69D6F38]);
    sub_1D60DF6F8(&qword_1EC8837E8, &qword_1EC8837E0, v25);
    sub_1D5BE8850();
    v26 = v28;
    sub_1D7259A4C();

    return (*(v20 + 8))(v26, v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D60DE99C(uint64_t a1, uint64_t a2)
{
  sub_1D60DFD44(0, &qword_1EC8837C8, sub_1D60DF5CC, &type metadata for A12_V17.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v21 - v8);
  v10 = type metadata accessor for HeadlineViewLayout.Context(0) - 8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2;
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = v27 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    v25 = *MEMORY[0x1E69D7490];
    v23 = (v6 + 8);
    v24 = (v6 + 104);
    v22 = v5;
    do
    {
      sub_1D5BE3ED8(v16, v14, type metadata accessor for HeadlineViewLayout.Context);
      v28 = a1;
      v17 = swift_allocObject();
      *(v17 + 16) = 6;
      *v9 = v17;
      v18 = (*v24)(v9, v25, v5);
      MEMORY[0x1EEE9AC00](v18, v19);
      v20 = MEMORY[0x1E69D6F38];
      sub_1D60DF73C(0, &qword_1EC8837E0, MEMORY[0x1E69D6F38]);
      sub_1D60DF6F8(&qword_1EC8837E8, &qword_1EC8837E0, v20);
      sub_1D7259A2C();
      v5 = v22;
      (*v23)(v9, v22);
      sub_1D5BE792C(v14, type metadata accessor for HeadlineViewLayout.Context);
      v16 += v26;
      --v15;
    }

    while (v15);
  }
}