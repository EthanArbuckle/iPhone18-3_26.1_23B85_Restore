uint64_t sub_1D6FD5540@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = off_1F513B080[0];
  type metadata accessor for FormatDecorationContext();
  v8 = v7();
  v9 = sub_1D5E02AFC(v8, a1);

  if (!v3)
  {
    v16 = a3;
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    sub_1D5F3FE24();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7273AE0;
    *(v12 + 32) = v11;
    *(v12 + 40) = 0;
    v13 = v7();
    v14 = sub_1D5E02AFC(v13, a2);

    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    result = swift_allocObject();
    *(result + 16) = xmmword_1D7273AE0;
    *(result + 32) = v15;
    *(result + 40) = 0;
    *v16 = v12;
    v16[1] = result;
  }

  return result;
}

uint64_t sub_1D6FD56DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *, uint64_t))
{
  v62 = a3;
  v63 = a4;
  v8 = type metadata accessor for FormatOption();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D69D6904(*(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks));
  if (!v5)
  {
    v61 = a1;
    v58 = v9;
    v68 = v12;
    v57 = v8;
    v60 = v4;
    if (result)
    {
      v56 = 0;
      v14 = v60;
      v15 = result;
      swift_beginAccess();
      v16 = v14[2];
      v17 = v14[3];

      sub_1D6B0A84C(v16, v17);

      v18 = v14[2];
      v19 = v14[3];

      v55[1] = sub_1D6B0B228(v18, v19);

      swift_beginAccess();
      v20 = *(v15 + 40);
      v21 = *(v20 + 16);
      v22 = MEMORY[0x1E69E7CC0];
      v59 = v15;
      if (v21)
      {
        v65[0] = MEMORY[0x1E69E7CC0];

        sub_1D5D24610(0, v21, 0);
        v22 = v65[0];
        v23 = *(v58 + 80);
        v55[0] = v20;
        v24 = v20 + ((v23 + 32) & ~v23);
        v64 = *(v58 + 72);
        v25 = v68;
        do
        {
          sub_1D5BE4148(v24, v25, type metadata accessor for FormatOption);
          v26 = swift_allocBox();
          sub_1D5BDAB74(v25, v27, type metadata accessor for FormatOption);
          v65[0] = v22;
          v29 = *(v22 + 16);
          v28 = *(v22 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_1D5D24610((v28 > 1), v29 + 1, 1);
            v22 = v65[0];
          }

          *(v22 + 16) = v29 + 1;
          *(v22 + 8 * v29 + 32) = v26 | 0xB000000000000004;
          v24 += v64;
          --v21;
        }

        while (v21);

        v15 = v59;
        v14 = v60;
      }

      else
      {
        v25 = v68;
      }

      v30 = v58;
      swift_beginAccess();
      v31 = v14[7];
      v32 = *(v31 + 16);
      v33 = MEMORY[0x1E69E7CC0];
      if (v32)
      {
        v65[0] = MEMORY[0x1E69E7CC0];

        sub_1D5D24610(0, v32, 0);
        v33 = v65[0];
        v34 = *(v30 + 80);
        v58 = v31;
        v35 = v31 + ((v34 + 32) & ~v34);
        v64 = *(v30 + 72);
        do
        {
          sub_1D5BE4148(v35, v25, type metadata accessor for FormatOption);
          v36 = swift_allocBox();
          sub_1D5BDAB74(v25, v37, type metadata accessor for FormatOption);
          v65[0] = v33;
          v39 = *(v33 + 16);
          v38 = *(v33 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_1D5D24610((v38 > 1), v39 + 1, 1);
            v33 = v65[0];
          }

          *(v33 + 16) = v39 + 1;
          *(v33 + 8 * v39 + 32) = v36 | 0x7000000000000000;
          v35 += v64;
          --v32;
          v25 = v68;
        }

        while (v32);

        v40 = v59;
      }

      else
      {
        v40 = v15;
      }

      v65[0] = v22;
      sub_1D6985C44(v33);
      sub_1D6B0C068(v65[0]);

      swift_beginAccess();
      v41 = *(v40 + 48);
      swift_beginAccess();

      v43 = sub_1D5D6021C(v42, v41);
      v44 = sub_1D6B0ACE8(v43, 0);

      swift_beginAccess();
      v45 = *(v40 + 32);
      v46 = *(v45 + 16);

      if (v46)
      {
        v47 = 0;
        v48 = 32;
        v49 = v56;
        while (v47 < *(v45 + 16))
        {
          v50 = *(v45 + v48);
          v51 = *(v45 + v48 + 32);
          v66[1] = *(v45 + v48 + 16);
          v66[2] = v51;
          v66[0] = v50;
          v52 = *(v45 + v48 + 48);
          v53 = *(v45 + v48 + 64);
          v54 = *(v45 + v48 + 80);
          v67 = *(v45 + v48 + 96);
          v66[4] = v53;
          v66[5] = v54;
          v66[3] = v52;
          sub_1D5C5C4CC(v66, v65);
          v63(v61, v44, v62);
          if (v49)
          {

            return sub_1D5C5C540(v66);
          }

          ++v47;
          result = sub_1D5C5C540(v66);
          v48 += 104;
          if (v46 == v47)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_22:
      }
    }
  }

  return result;
}

uint64_t sub_1D6FD5C60@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (!*(v2 + 56))
  {
    v12 = *(v2 + 8);
    v11 = *(v2 + 16);
    v14 = *(v2 + 24);
    v13 = *(v2 + 32);
    v16 = *(v2 + 40);
    v15 = *(v2 + 48);
    v17 = v15 & 0xF000000000000007;
    if ((v15 & 0xF000000000000007) == 0xD000000000000007)
    {
      *a2 = v4;
      *(a2 + 8) = v12;
      *(a2 + 16) = v11;
      *(a2 + 24) = v14;
      *(a2 + 32) = v13;
      *(a2 + 40) = v16;
      *(a2 + 48) = v15;
      *(a2 + 56) = 0;
      return result;
    }

    if ((~v4 & 0xF000000000000007) != 0)
    {
      v23 = result;
      v25 = a2;
      result = sub_1D5FA6CB0(result, v4, &v28);
      if (v3)
      {
        return result;
      }

      v27 = 0;
      v4 = v28;
      result = v23;
      a2 = v25;
      if (v17 == 0xF000000000000007)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v27 = v3;
      if (v17 == 0xF000000000000007)
      {
LABEL_20:
        *a2 = v4;
        *(a2 + 8) = v12;
        *(a2 + 16) = v11;
        *(a2 + 24) = v14;
        *(a2 + 32) = v13;
        *(a2 + 40) = v16 & 1;
        *(a2 + 48) = v15;
        *(a2 + 56) = 0;
        return result;
      }
    }

    v26 = a2;
    v28 = result;
    v24 = swift_allocObject();
    v19 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v20 = v19();
    FormatFloat.value(contextLayoutOptions:)(v20);
    if (v27)
    {
      sub_1D5C84FF4(v4);

      return swift_deallocUninitializedObject();
    }

    v22 = v21;

    v15 = v24;
    a2 = v26;
    *(v24 + 16) = v22;
    goto LABEL_20;
  }

  if (*(v2 + 56) == 1)
  {
    if ((v4 & 0xF000000000000007) != 0xD000000000000007 && (v4 & 0xF000000000000007) != 0xF000000000000007)
    {
      v5 = a2;
      v28 = result;
      v6 = swift_allocObject();
      v7 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v8 = v7();
      FormatFloat.value(contextLayoutOptions:)(v8);
      v10 = v9;

      if (v3)
      {
        return swift_deallocUninitializedObject();
      }

      *(v6 + 16) = v10;
      v4 = v6;
      a2 = v5;
    }

    *a2 = v4;
    *(a2 + 56) = 1;
  }

  else
  {
    v18 = *(v2 + 16);
    *a2 = *v2;
    *(a2 + 16) = v18;
    *(a2 + 32) = *(v2 + 32);
    *(a2 + 41) = *(v2 + 41);
  }

  return result;
}

uint64_t sub_1D6FD5EE8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v84 = a7;
  v83 = a6;
  v82 = a5;
  v81 = a4;
  v8 = v7;
  v98 = a3;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v86 = v11;
  v85 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v87 = (v79 - v13);
  v14 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v93 = v79 - v17;
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v14);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v90 = v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v91 = v79 - v23;
  v89 = type metadata accessor for FormatNodeStateData.Data();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89, v24);
  v26 = v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for FormatShareAttributionData();
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v95 = v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SharedItem();
  v79[0] = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v80 = v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79[1] = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v99 = v79 - v35;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v14);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = (v79 - v38);
  v105 = a1;
  v40 = sub_1D6B0ACE8(v8[10], 0);
  v41 = *v8;
  v42 = v8[1];
  v92 = v8;
  v43 = sub_1D6E8DD40(v41, v42);
  v45 = v44;
  if (*(*(v98 + 24) + 16))
  {
    *v39 = v40;
    v46 = type metadata accessor for FormatSourceMapContext();
    swift_storeEnumTagMultiPayload();
    (*(*(v46 - 8) + 56))(v39, 0, 1, v46);
    swift_beginAccess();

    sub_1D6D60828(v39, v43, v45);
    swift_endAccess();
  }

  v94 = v43;
  v98 = v45;
  v97 = v40;
  v101 = type metadata accessor for FormatNodeContext();
  v102 = &off_1F51AF328;
  v100[0] = a2;

  v47 = v99;
  v48 = v96;
  sub_1D6D9723C(v100, v99);
  if (v48)
  {

    return __swift_destroy_boxed_opaque_existential_1(v100);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v100);
    v50 = v47;
    v51 = v95;
    sub_1D5BE4148(v50, v95, type metadata accessor for SharedItem);
    sub_1D5BE4148(v51, v26, type metadata accessor for FormatShareAttributionData);
    v52 = v89;
    swift_storeEnumTagMultiPayload();
    v53 = v91;
    sub_1D5BE4148(v26, v91, type metadata accessor for FormatNodeStateData.Data);
    (*(v88 + 56))(v53, 0, 1, v52);
    v54 = MEMORY[0x1E69E6720];
    v55 = v90;
    sub_1D6FFC87C(v53, v90, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    swift_beginAccess();
    v56 = v98;

    sub_1D6D60A18(v55, v94, v56);
    swift_endAccess();
    sub_1D6FFCA9C(v53, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v54, sub_1D5D27F7C);
    sub_1D6FFC9A0(v26, type metadata accessor for FormatNodeStateData.Data);
    v57 = v92;
    if (v92[11])
    {
      v59 = v92[15];
      v58 = v92[16];
      v61 = v92[13];
      v60 = v92[14];
      v62 = v92[12];
      v100[0] = v92[11];
      v100[1] = v62;
      v100[2] = v61;
      v101 = v60;
      v102 = v59;
      v103 = v58;

      sub_1D5DEA234(v59);

      v63 = v93;
      sub_1D68687FC(v97, v93);
      v64 = v102;

      sub_1D5CBF568(v64);

      v65 = 0;
    }

    else
    {
      v63 = v93;
      v65 = 1;
    }

    v66 = sub_1D7259B8C();
    (*(*(v66 - 8) + 56))(v63, v65, 1, v66);
    swift_getKeyPath();
    v106 = *(v57 + 16);
    v100[0] = v106;
    v67 = v98;

    sub_1D6FF9454(&v106, v104, &qword_1EC8992B8, sub_1D5F2C75C, &type metadata for FormatCodingSizeToFitStrategy, type metadata accessor for FormatCodingDefault);
    v68 = v97;
    v69 = v94;
    sub_1D5BEB9F4(v97, v94, v67, v87);
    sub_1D5C92A8C(v100[0]);
    v96 = sub_1D618EFB4(v68, *(v57 + 32));
    v70 = v80;
    sub_1D5BE4148(v99, v80, type metadata accessor for SharedItem);
    v71 = (*(v79[0] + 80) + 176) & ~*(v79[0] + 80);
    v72 = swift_allocObject();
    v73 = *(v57 + 64);
    *(v72 + 104) = *(v57 + 80);
    v74 = *(v57 + 112);
    *(v72 + 120) = *(v57 + 96);
    *(v72 + 136) = v74;
    v75 = *v57;
    *(v72 + 40) = *(v57 + 16);
    v76 = *(v57 + 48);
    *(v72 + 56) = *(v57 + 32);
    *(v72 + 72) = v76;
    *(v72 + 88) = v73;
    *(v72 + 16) = v68;
    v77 = *(v57 + 128);
    *(v72 + 24) = v75;
    *(v72 + 152) = v77;
    *(v72 + 160) = v69;
    *(v72 + 168) = v67;
    sub_1D5BDAB74(v70, v72 + v71, type metadata accessor for SharedItem);

    sub_1D62B60B4(v57, v100);
    v82(0);
    v83();
    v78 = v87;
    sub_1D7259B1C();

    (*(v85 + 8))(v78, v86);
    sub_1D6FFCA9C(v63, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    sub_1D6FFC9A0(v95, type metadata accessor for FormatShareAttributionData);
    return sub_1D6FFC9A0(v99, type metadata accessor for SharedItem);
  }
}

uint64_t sub_1D6FD6B80@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v6 = v2[5];
  v59[4] = v2[4];
  v59[5] = v6;
  v7 = v2[7];
  v59[6] = v2[6];
  v59[7] = v7;
  v8 = v2[1];
  v59[0] = *v2;
  v59[1] = v8;
  v9 = v2[3];
  v59[2] = v2[2];
  v59[3] = v9;
  v10 = sub_1D5CFD35C(v59);
  v11 = sub_1D5CFD34C(v59);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v16 = *(v11 + 80);
      *&v65[16] = *(v11 + 64);
      *&v65[32] = v16;
      *&v65[48] = *(v11 + 96);
      v17 = *(v11 + 16);
      v62 = *v11;
      v63 = v17;
      v18 = *(v11 + 48);
      v64 = *(v11 + 32);
      *v65 = v18;
      v45[0] = a1;
      v19 = *(v11 + 120);
      MEMORY[0x1EEE9AC00](v11, v12);
      v44 = v45;
      result = sub_1D5EC9E90(sub_1D6FF93D0, v43, v20);
      if (!v3)
      {
        v47 = v62;
        v48 = v63;
        v49 = v64;
        LOBYTE(v50[0]) = v65[0];
        *(v50 + 8) = *&v65[8];
        *(&v50[1] + 8) = *&v65[24];
        *(&v50[2] + 8) = *&v65[40];
        BYTE8(v50[3]) = v65[56];
        v66 = v19;
        v56 = v50[2];
        v57 = v50[3];
        v54 = v50[0];
        v55 = v50[1];
        v52 = v63;
        v53 = v64;
        v51 = v62;
        *&v58 = result;
        *(&v58 + 1) = v19;
        sub_1D5C326F0(&v51);
        v21 = v56;
        a2[4] = v55;
        a2[5] = v21;
        v22 = v58;
        a2[6] = v57;
        a2[7] = v22;
        v23 = v52;
        *a2 = v51;
        a2[1] = v23;
        v24 = v54;
        a2[2] = v53;
        a2[3] = v24;
        return sub_1D6FFC87C(&v66, &v46, &unk_1EC8992B0, &unk_1EDF1B5E0, MEMORY[0x1E69E7DE0], sub_1D6FF93E8);
      }
    }

    else
    {
      result = sub_1D6FD6FB8(a1, *v11, v45);
      if (!v3)
      {
        *&v51 = v45[0];
        result = sub_1D5C49D78(&v51);
        v30 = v56;
        a2[4] = v55;
        a2[5] = v30;
        v31 = v58;
        a2[6] = v57;
        a2[7] = v31;
        v32 = v52;
        *a2 = v51;
        a2[1] = v32;
        v33 = v54;
        a2[2] = v53;
        a2[3] = v33;
      }
    }
  }

  else if (v10)
  {
    v25 = *(v11 + 8);
    v26 = *(v11 + 32);
    v60 = *(v11 + 16);
    v61 = v26;
    v28 = *(v11 + 48);
    v27 = *(v11 + 56);
    *&v51 = a1;
    MEMORY[0x1EEE9AC00](v11, v12);
    v44 = &v51;
    result = sub_1D5EC9E90(sub_1D6FFCBEC, v43, v29);
    if (!v3)
    {
      v68 = result;
      v67[0] = v25;
      sub_1D6FFC87C(v67, &v51, &unk_1EDF1AEF0, &qword_1EDF1AF00, MEMORY[0x1E69E63B0], sub_1D6FF93E8);
      if (v28)
      {
        sub_1D6FCAC74(v28, v27, v45);
        v38 = v45[0];
        v27 = v45[1];
      }

      else
      {
        v38 = 0;
      }

      v52 = v60;
      v53 = v61;
      *&v51 = v68;
      *(&v51 + 1) = v67[0];
      *&v54 = v38;
      *(&v54 + 1) = v27;
      result = sub_1D6687774(&v51);
      v39 = v56;
      a2[4] = v55;
      a2[5] = v39;
      v40 = v58;
      a2[6] = v57;
      a2[7] = v40;
      v41 = v52;
      *a2 = v51;
      a2[1] = v41;
      v42 = v54;
      a2[2] = v53;
      a2[3] = v42;
    }
  }

  else
  {
    v13 = *(v11 + 8);
    result = sub_1D5FA6CB0(a1, *v11, v45);
    if (!v3)
    {
      v15 = v45[0];
      sub_1D5FA6CB0(a1, v13, &v46);
      *&v51 = v15;
      *(&v51 + 1) = v46;
      result = sub_1D5C32704(&v51);
      v34 = v56;
      a2[4] = v55;
      a2[5] = v34;
      v35 = v58;
      a2[6] = v57;
      a2[7] = v35;
      v36 = v52;
      *a2 = v51;
      a2[1] = v36;
      v37 = v54;
      a2[2] = v53;
      a2[3] = v37;
    }
  }

  return result;
}

uint64_t sub_1D6FD6FB8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2 & 7;
  if (v5 <= 1)
  {
    if ((a2 & 7) != 0)
    {
      result = sub_1D5FA6CB0(a1, a2 & 0xFFFFFFFFFFFFFFF8, &v8);
      if (v3)
      {
        return result;
      }

      v7 = v8 | 1;
    }

    else
    {
      result = sub_1D5FA6CB0(a1, a2, &v8);
      if (v3)
      {
        return result;
      }

      v7 = v8;
    }
  }

  else if (v5 == 2)
  {
    result = sub_1D5FA6CB0(a1, a2 & 0xFFFFFFFFFFFFFFF8, &v8);
    if (v3)
    {
      return result;
    }

    v7 = v8 | 2;
  }

  else if (v5 == 3)
  {
    result = sub_1D5FA6CB0(a1, a2 & 0xFFFFFFFFFFFFFFF8, &v8);
    if (v3)
    {
      return result;
    }

    v7 = v8 | 3;
  }

  else
  {
    result = sub_1D5FA6CB0(a1, a2 & 0xFFFFFFFFFFFFFFF8, &v8);
    if (v3)
    {
      return result;
    }

    v7 = v8 | 4;
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D6FD707C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = a2 & 7;
  if (v5 <= 1)
  {
    if ((a2 & 7) != 0)
    {
      result = sub_1D5FA8D3C(a1, a2 & 0xFFFFFFFFFFFFFFF8, &v8);
      if (v3)
      {
        return result;
      }

      v7 = v8 | 1;
    }

    else
    {
      result = sub_1D5FA8D3C(a1, a2, &v8);
      if (v3)
      {
        return result;
      }

      v7 = v8;
    }
  }

  else if (v5 == 2)
  {
    result = sub_1D5FA8D3C(a1, a2 & 0xFFFFFFFFFFFFFFF8, &v8);
    if (v3)
    {
      return result;
    }

    v7 = v8 | 2;
  }

  else if (v5 == 3)
  {
    result = sub_1D5FA8D3C(a1, a2 & 0xFFFFFFFFFFFFFFF8, &v8);
    if (v3)
    {
      return result;
    }

    v7 = v8 | 3;
  }

  else
  {
    result = sub_1D5FA8D3C(a1, a2 & 0xFFFFFFFFFFFFFFF8, &v8);
    if (v3)
    {
      return result;
    }

    v7 = v8 | 4;
  }

  *a3 = v7;
  return result;
}

unint64_t sub_1D6FD7140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v82 = a7;
  v81 = a6;
  v80 = a5;
  v79 = a4;
  v8 = v7;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v84 = v12;
  v83 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v85 = (&v77 - v14);
  v15 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v92 = &v77 - v18;
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v15);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v90 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v91 = &v77 - v24;
  v88 = type metadata accessor for FormatNodeStateData.Data();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v25);
  v89 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for FeedSponsorshipBannerAd();
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v94 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v15);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = (&v77 - v32);
  v104 = a1;
  swift_beginAccess();

  v93 = a2;
  v35 = sub_1D6B0ACE8(v34, 0);

  v36 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace;
  swift_beginAccess();
  v37 = v8[2];
  v38 = v8[3];

  v39 = sub_1D6E8DD40(v37, v38);
  v41 = v40;

  v86 = *(a3 + 24);
  if (*(v86 + 16))
  {
    *v33 = v35;
    v42 = type metadata accessor for FormatSourceMapContext();
    swift_storeEnumTagMultiPayload();
    (*(*(v42 - 8) + 56))(v33, 0, 1, v42);
    swift_beginAccess();

    sub_1D6D60828(v33, v39, v41);
    swift_endAccess();
  }

  v96 = v39;
  v97 = v41;
  v43 = *(v35 + v36);
  v44 = v8[2];
  v45 = v8[3];
  v46 = *(v43 + 40);
  if (v46)
  {
    v98 = *(v43 + 32);
    v99 = v46;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v44, v45);

    v44 = v98;
    v45 = v99;
  }

  else
  {
  }

  v47 = v96;
  v48 = (*(v35 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v49 = *v48;
  v50 = v48[1];
  swift_beginAccess();
  v51 = v8[12];

  v52 = v95;
  v53 = sub_1D6FBF074(v51, v35, v49, v50);
  if (v52)
  {
  }

  v95 = v53;

  v55 = v94;
  sub_1D67524A0(*(v93 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v94);
  v93 = 0;
  v78 = v44;
  v56 = v89;
  sub_1D5BE4148(v55, v89, type metadata accessor for FeedSponsorshipBannerAd);
  v57 = v88;
  swift_storeEnumTagMultiPayload();
  v58 = v91;
  sub_1D5BE4148(v56, v91, type metadata accessor for FormatNodeStateData.Data);
  (*(v87 + 56))(v58, 0, 1, v57);
  v88 = type metadata accessor for FormatNodeStateData.Data;
  v87 = MEMORY[0x1E69E6720];
  v59 = v90;
  sub_1D6FFC87C(v58, v90, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
  swift_beginAccess();
  v60 = v97;

  sub_1D6D60A18(v59, v47, v60);
  swift_endAccess();
  sub_1D6FFCA9C(v58, &qword_1EDF2C470, v88, v87, sub_1D5D27F7C);
  sub_1D6FFC9A0(v56, type metadata accessor for FormatNodeStateData.Data);
  sub_1D6FFC9A0(v94, type metadata accessor for FeedSponsorshipBannerAd);
  if (v8[13])
  {
    v62 = v8[17];
    v61 = v8[18];
    v64 = v8[15];
    v63 = v8[16];
    v65 = v8[14];
    v98 = v8[13];
    v99 = v65;
    v100 = v64;
    v101 = v63;
    v102 = v62;
    v103 = v61;

    sub_1D5DEA234(v62);

    v66 = v92;
    v67 = v93;
    sub_1D68687FC(v35, v92);
    if (v67)
    {

      v68 = v102;

      sub_1D5CBF568(v68);
    }

    v93 = 0;
    v70 = v102;

    sub_1D5CBF568(v70);

    v69 = 0;
  }

  else
  {
    v66 = v92;
    v69 = 1;
  }

  v71 = sub_1D7259B8C();
  (*(*(v71 - 8) + 56))(v66, v69, 1, v71);
  swift_getKeyPath();
  v98 = v8[4];
  v72 = v98;
  v73 = v97;

  sub_1D5C82CD8(v72);
  v74 = v93;
  sub_1D5BEB9F4(v35, v96, v73, v85);
  if (v74)
  {
    sub_1D6FFCA9C(v66, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);

    swift_bridgeObjectRelease_n();

    return sub_1D5C92A8C(v98);
  }

  else
  {
    sub_1D5C92A8C(v98);
    swift_beginAccess();
    v75 = v8[6];

    v94 = sub_1D618EFB4(v35, v75);

    v76 = swift_allocObject();
    v76[2] = v96;
    v76[3] = v73;
    v76[4] = v78;
    v76[5] = v45;
    v76[6] = v8;
    v76[7] = v35;
    v76[8] = v95;
    v80(0);
    v81();

    sub_1D7259B1C();

    (*(v83 + 8))(v85, v84);
    return sub_1D6FFCA9C(v66, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }
}

uint64_t sub_1D6FD7E50(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *, uint64_t))
{
  v56 = a4;
  v57 = a1;
  v6 = v5;
  v7 = v4;
  v58 = a3;
  v53 = type metadata accessor for FormatOption();
  v9 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = v7[2];
  v14 = v7[3];

  v54 = sub_1D6B0CB1C(v13, v14);

  swift_beginAccess();
  v55 = v7;
  v15 = v7[7];
  v16 = *(v15 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v51 = a2;
    v52 = v6;
    v59[0] = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v16, 0);
    v17 = v59[0];
    v18 = *(v9 + 80);
    v50 = v15;
    v19 = v15 + ((v18 + 32) & ~v18);
    v70 = *(v9 + 72);
    do
    {
      sub_1D5BE4148(v19, v12, type metadata accessor for FormatOption);
      v20 = swift_allocBox();
      sub_1D5BDAB74(v12, v21, type metadata accessor for FormatOption);
      v59[0] = v17;
      v23 = *(v17 + 16);
      v22 = *(v17 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D5D24610((v22 > 1), v23 + 1, 1);
        v17 = v59[0];
      }

      *(v17 + 16) = v23 + 1;
      *(v17 + 8 * v23 + 32) = v20 | 0x6000000000000000;
      v19 += v70;
      --v16;
    }

    while (v16);

    a2 = v51;
    v6 = v52;
  }

  v24 = (a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
  v25 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16);
  v66 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
  v67 = v25;
  v26 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48);
  v68 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32);
  v69 = v26;
  v27 = v55;
  v28 = v55[2];
  v29 = v55[3];

  v30 = sub_1D71DB6D4(v28, v29);

  v59[0] = v17;
  sub_1D6985C44(v30);
  sub_1D6B0C068(v59[0]);

  swift_beginAccess();
  v31 = v27[6];
  v32 = v24[1];
  v62 = *v24;
  v63 = v32;
  v33 = v24[3];
  v64 = v24[2];
  v65 = v33;
  v34 = v27[2];
  v35 = v27[3];

  v36 = sub_1D71DB738(v34, v35);

  v37 = sub_1D5D6021C(v36, v31);
  v38 = sub_1D6B0ACE8(v37, 0);

  swift_beginAccess();
  v39 = v27[5];
  v40 = *(v39 + 16);

  v42 = v56;
  if (v40)
  {
    v43 = 0;
    v44 = 32;
    while (v43 < *(v39 + 16))
    {
      v45 = *(v39 + v44);
      v46 = *(v39 + v44 + 32);
      v60[1] = *(v39 + v44 + 16);
      v60[2] = v46;
      v60[0] = v45;
      v47 = *(v39 + v44 + 48);
      v48 = *(v39 + v44 + 64);
      v49 = *(v39 + v44 + 80);
      v61 = *(v39 + v44 + 96);
      v60[4] = v48;
      v60[5] = v49;
      v60[3] = v47;
      sub_1D5C5C4CC(v60, v59);
      v42(v57, v38, v58);
      if (v6)
      {

        return sub_1D5C5C540(v60);
      }

      ++v43;
      result = sub_1D5C5C540(v60);
      v44 += 104;
      if (v40 == v43)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
  }

  return result;
}

unint64_t sub_1D6FD8274(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, __n128), uint64_t (*a5)(void), uint64_t a6, void (*a7)(uint64_t, uint64_t, char *, void, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v59 = a7;
  v58 = a6;
  v57 = a5;
  v56 = a4;
  v9 = v8;
  v10 = v7;
  v55 = a3;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v60 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v62 = (&v52 - v16);
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v52 - v19;
  v73 = a1;
  swift_beginAccess();
  v21 = *(v10 + 16);
  v22 = *(v10 + 24);

  v61 = sub_1D6E8DD40(v21, v22);
  v65 = v23;

  v24 = *(v10 + 32);
  v25 = *(v10 + 40);
  swift_beginAccess();
  v26 = *(v10 + 48);
  v66[0] = a2;

  v63 = sub_1D6FB9DC4(v26, v66);

  v54 = sub_1D6E8DD40(v24, v25);
  v64 = v27;

  if (*(v10 + 144))
  {
    v29 = *(v10 + 176);
    v28 = *(v10 + 184);
    v31 = *(v10 + 160);
    v30 = *(v10 + 168);
    v32 = *(v10 + 152);
    v66[0] = *(v10 + 144);
    v66[1] = v32;
    v66[2] = v31;
    v66[3] = v30;
    v67 = v29;
    v68 = v28;

    sub_1D5DEA234(v29);

    sub_1D68687FC(a2, v20);
    if (v9)
    {

      v33 = v67;

      sub_1D5CBF568(v33);
    }

    v53 = v20;
    v36 = v67;

    sub_1D5CBF568(v36);
    v20 = v53;

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v37 = sub_1D7259B8C();
  (*(*(v37 - 8) + 56))(v20, v35, 1, v37);
  swift_beginAccess();
  v38 = v65;
  if (*(v10 + 112) == 1)
  {

    LODWORD(v53) = 1;
    v39 = v62;
  }

  else
  {
    v52 = v14;
    swift_beginAccess();
    v40 = *(v10 + 128);
    v42 = *(v10 + 136);
    v70 = *(v10 + 120);
    v41 = v70;
    v71 = v40;
    v72 = v42;

    sub_1D5E04CC4(v41);
    sub_1D725A7EC();
    v43 = FormatBoolean.value(contextLayoutOptions:)(v69);
    if (v9)
    {
      sub_1D6FFCA9C(v20, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);

      swift_bridgeObjectRelease_n();

      return sub_1D5D2F2C4(v41, v40, v42);
    }

    LODWORD(v53) = v43;

    sub_1D5D2F2C4(v41, v40, v42);
    v14 = v52;
    v39 = v62;
    v38 = v65;
  }

  v44 = v61;
  swift_beginAccess();
  v69 = *(v10 + 88);
  sub_1D5C82CD8(v69);
  sub_1D5BEB9F4(a2, v44, v38, v39);
  if (v9)
  {
    sub_1D6FFCA9C(v20, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);

    swift_bridgeObjectRelease_n();
    return sub_1D5C92A8C(v69);
  }

  else
  {

    sub_1D5C92A8C(v69);
    swift_beginAccess();
    v45 = *(v10 + 96);

    v61 = sub_1D618EFB4(a2, v45);

    v52 = &v52;
    v48 = MEMORY[0x1EEE9AC00](v46, v47);
    v49 = v56(0, v48);
    v51[4] = v57();
    v51[3] = v49;
    v50 = v62;
    v51[2] = v51;
    v59(v44, v65, v20, v53 & 1, v62, v61, v54, v64, v63, v58);

    (*(v60 + 8))(v50, v14);
    return sub_1D6FFCA9C(v20, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }
}

uint64_t sub_1D6FD8AD0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v10 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext();
  v11 = v10();
  v12 = sub_1D5E02AFC(v11, a1);
  if (v5)
  {
  }

  v14 = v12;
  v31 = a5;

  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  sub_1D5F3FE24();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D7273AE0;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  v17 = v10();
  v18 = sub_1D5E02AFC(v17, a2);

  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = swift_allocObject();
  v21 = v10;
  v22 = v20;
  *(v20 + 16) = xmmword_1D7273AE0;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  v23 = v21;
  v24 = v21();
  v25 = sub_1D5E02AFC(v24, a3);

  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D7273AE0;
  *(v27 + 32) = v26;
  *(v27 + 40) = 0;
  v28 = v23();
  v29 = sub_1D5E02AFC(v28, a4);

  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  result = swift_allocObject();
  *(result + 16) = xmmword_1D7273AE0;
  *(result + 32) = v30;
  *(result + 40) = 0;
  *v31 = v16;
  v31[1] = v22;
  v31[2] = v27;
  v31[3] = result;
  return result;
}

unint64_t sub_1D6FD8DB8(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, __n128), uint64_t (*a5)(void), uint64_t a6, void (*a7)(uint64_t, uint64_t, char *, void, uint64_t, uint64_t, uint64_t, char **, uint64_t, uint64_t))
{
  v69 = a7;
  v68 = a6;
  v67 = a5;
  v66 = a4;
  v8 = v7;
  v65 = a3;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v70 = v11;
  v71 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v63 - v13);
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v63 - v17;
  v86 = a1;
  v19 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_beginAccess();
  v20 = *(v8 + 16);
  v21 = *(v8 + 24);

  v22 = sub_1D6E8DD40(v20, v21);
  v74 = v23;

  v24 = *(v8 + 80);
  if (v24)
  {
    v25 = *(v8 + 72);
    v26 = *(v19 + 24);
    if (v26)
    {
      v76 = *(v19 + 16);
      v77 = v26;
      swift_bridgeObjectRetain_n();

      MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
      MEMORY[0x1DA6F9910](v25, v24);
      swift_bridgeObjectRelease_n();
      v25 = v76;
      v24 = v77;
    }

    else
    {
    }
  }

  else
  {
    v25 = 0;
  }

  v64 = v25;
  v27 = *(v8 + 136);
  v72 = v14;
  v73 = v22;
  if (v27)
  {
    v29 = *(v8 + 168);
    v28 = *(v8 + 176);
    v30 = a2;
    v32 = *(v8 + 152);
    v31 = *(v8 + 160);
    v33 = *(v8 + 144);
    v76 = v27;
    v77 = v33;
    v78 = v32;
    v79 = v31;
    v80 = v29;
    v81 = v28;

    sub_1D5DEA234(v29);

    v34 = v75;
    sub_1D68687FC(v30, v18);
    v75 = v34;
    if (v34)
    {

      v35 = v80;

      sub_1D5CBF568(v35);
    }

    v38 = v80;

    a2 = v30;

    sub_1D5CBF568(v38);

    v37 = 0;
    v14 = v72;
    v22 = v73;
  }

  else
  {
    v37 = 1;
  }

  v39 = sub_1D7259B8C();
  (*(*(v39 - 8) + 56))(v18, v37, 1, v39);
  swift_beginAccess();
  v40 = v74;
  if (*(v8 + 104) == 1)
  {

    v41 = 1;
  }

  else
  {
    v63 = v18;
    swift_beginAccess();
    v42 = a2;
    v43 = *(v8 + 120);
    v45 = *(v8 + 128);
    v83 = *(v8 + 112);
    v44 = v83;
    v84 = v43;
    v85 = v45;

    sub_1D5E04CC4(v44);
    sub_1D725A7EC();
    v46 = v75;
    v47 = FormatBoolean.value(contextLayoutOptions:)(v82);
    v75 = v46;
    if (v46)
    {
      sub_1D6FFCA9C(v63, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
      swift_bridgeObjectRelease_n();

      return sub_1D5D2F2C4(v44, v43, v45);
    }

    v48 = v47;

    sub_1D5D2F2C4(v44, v43, v45);
    v18 = v63;
    v14 = v72;
    a2 = v42;
    v22 = v73;
    v41 = v48;
  }

  swift_beginAccess();
  v82 = *(v8 + 64);
  sub_1D5C82CD8(v82);
  v49 = v75;
  sub_1D5BEB9F4(a2, v22, v40, v14);
  v75 = v49;
  if (v49)
  {
    sub_1D6FFCA9C(v18, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    swift_bridgeObjectRelease_n();

    return sub_1D5C92A8C(v82);
  }

  else
  {

    sub_1D5C92A8C(v82);
    swift_beginAccess();
    v50 = *(v8 + 88);

    v51 = v75;
    v52 = sub_1D618EFB4(a2, v50);
    v75 = v51;
    if (v51)
    {

      (*(v71 + 8))(v14, v70);
    }

    else
    {
      v53 = a2;
      v54 = v52;

      v74 = &v63;
      v57 = MEMORY[0x1EEE9AC00](v55, v56);
      *(&v63 - 6) = v8;
      *(&v63 - 5) = v53;
      v59 = v58;
      *(&v63 - 4) = v64;
      *(&v63 - 3) = v24;
      v60 = v66(0, v57);
      v61 = v67();
      v62 = v75;
      v69(v73, v40, v18, v41 & 1, v59, v54, v68, &v63 - 8, v60, v61);
      v75 = v62;

      (*(v71 + 8))(v59, v70);
    }

    return sub_1D6FFCA9C(v18, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }
}

uint64_t sub_1D6FD9574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v83 = a7;
  v81 = a6;
  v80 = a5;
  v84 = a4;
  v85 = a3;
  v8 = v7;
  v11 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  v79 = *(v12 - 8);
  v13 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v70 - v17;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v11);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = (&v70 - v21);
  v93 = a1;
  swift_beginAccess();

  v82 = a2;
  v24 = sub_1D6B0ACE8(v23, 0);

  v25 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory;
  v26 = (*(v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v27 = *v26;
  v28 = v26[1];
  v29 = v8[7];

  v30 = v29;
  v31 = v86;
  v32 = sub_1D6FBB580(v30, v24, v27, v28);
  v86 = v31;
  if (v31)
  {
  }

  else
  {
    v77 = v25;
    v75 = v13;
    v76 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v78 = v32;
    v74 = v18;

    swift_beginAccess();
    v34 = v8[2];
    v35 = v8[3];

    v36 = sub_1D6E8DD40(v34, v35);
    v38 = v37;

    if (*(*(v85 + 24) + 16))
    {
      *v22 = v24;
      v39 = type metadata accessor for FormatSourceMapContext();
      swift_storeEnumTagMultiPayload();
      (*(*(v39 - 8) + 56))(v22, 0, 1, v39);
      swift_beginAccess();

      sub_1D6D60828(v22, v36, v38);
      swift_endAccess();
    }

    v73 = v36;
    v40 = (*(v24 + v77) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
    swift_beginAccess();
    v41 = *v40;
    v42 = v40[1];
    v43 = v8[8];

    v44 = v43;
    v45 = v86;
    v46 = sub_1D6FBAE48(v44, v24, v41, v42);
    if (v45)
    {
    }

    else
    {
      v47 = v46;
      v72 = v38;

      if (v47)
      {

        v48 = sub_1D6A45640(v24);
        v49 = v24;
        v50 = v76;
        v51 = v75;
        v86 = v49;
        v77 = v47;

        if (v48)
        {
          swift_beginAccess();

          v52 = v72;

          sub_1D6D60C08(v48, v73, v52);
          swift_endAccess();
        }
      }

      else
      {
        v77 = 0;
        v86 = v24;
        v50 = v76;
        v51 = v75;
      }

      if (v8[18])
      {
        v53 = v8[22];
        v54 = v8[23];
        v56 = v8[20];
        v55 = v8[21];
        v57 = v8[19];
        v87 = v8[18];
        v88 = v57;
        v89 = v56;
        v90 = v55;
        v91 = v53;
        v92 = v54;

        sub_1D5DEA234(v53);

        sub_1D68687FC(v86, v74);
        v58 = v91;

        sub_1D5CBF568(v58);

        v59 = 0;
        v51 = v75;
      }

      else
      {
        v59 = 1;
      }

      v60 = sub_1D7259B8C();
      v61 = v74;
      (*(*(v60 - 8) + 56))(v74, v59, 1, v60);
      v75 = MEMORY[0x1E69D6FA0];
      v71 = MEMORY[0x1E69E6720];
      sub_1D6FFC87C(v61, v50, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
      swift_unownedRetainStrong();
      v62 = v72;

      swift_unownedRetain();

      v63 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      v79 = (v51 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
      v64 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
      v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
      v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
      v67 = swift_allocObject();
      *(v67 + 16) = v73;
      *(v67 + 24) = v62;
      sub_1D6FFC410(v76, v67 + v63, &qword_1EDF3C120, v75);
      *(v67 + v79) = v8;
      v68 = v85;
      *(v67 + v64) = v86;
      *(v67 + v65) = v78;
      *(v67 + v66) = v82;
      *(v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8)) = v68;
      v80(0);
      v81();

      v69 = v74;
      sub_1D7259ACC();

      return sub_1D6FFCA9C(v69, &qword_1EDF3C120, v75, v71, sub_1D5D27F7C);
    }
  }
}

uint64_t sub_1D6FD9E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8, uint64_t a9, char *a10)
{
  v151 = a7;
  v152 = a8;
  v149 = a5;
  v150 = a6;
  v162 = a4;
  v163 = a3;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v145 = *(v12 - 8);
  v146 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v153 = (&v140 - v14);
  v15 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v158 = &v140 - v18;
  sub_1D5D27F7C(0, &qword_1EDF3B660, MEMORY[0x1E69D7A18], v15);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v157 = (&v140 - v21);
  v22 = sub_1D725D80C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v156 = &v140 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v140 - v28;
  sub_1D5D27F7C(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, v15);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v154 = &v140 - v32;
  v33 = sub_1D725A36C();
  v159 = *(v33 - 8);
  v160 = v33;
  MEMORY[0x1EEE9AC00](v33, v34);
  v161 = &v140 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v15);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = (&v140 - v38);
  sub_1D6FF9DCC(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  v165 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v155 = &v140 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v140 - v45;
  v147 = v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v140 - v50;
  v174[14] = a1;
  v166 = a2;
  v52 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items;
  swift_beginAccess();
  v53 = *(v52 + 8);
  if (!*(v53 + 16))
  {
    goto LABEL_6;
  }

  v144 = v29;
  v55 = v177[4];
  v54 = v177[5];

  v56 = sub_1D5B69D90(v55, v54);
  if ((v57 & 1) == 0)
  {

LABEL_6:
    type metadata accessor for FormatLayoutError();
    sub_1D6FFA0A0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v69 = v177;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v142 = v22;
  v143 = v39;
  v141 = v23;
  sub_1D6FF9454(*(v53 + 56) + *(v165 + 72) * v56, v46, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  v58 = v46;
  v59 = v51;
  sub_1D6FF9770(v58, v51, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem);

  v60 = v166;
  v61 = v177;
  swift_beginAccess();
  v62 = v61[2];
  v63 = v61[3];

  v64 = sub_1D6E8DD40(v62, v63);
  v66 = v65;

  if (*(v60 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 8))
  {
    v67 = v61[2];
    v68 = v61[3];
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v71 = v59;
  v72 = v164;
  v73 = sub_1D6C1F940(v59, v166, v64, v66);
  if (v72)
  {
  }

  else
  {
    v74 = v73;
    v164 = v64;
    v166 = v66;
    if (*(*(v163 + 24) + 16))
    {
      v75 = v143;
      *v143 = v73;
      v76 = type metadata accessor for FormatSourceMapContext();
      swift_storeEnumTagMultiPayload();
      (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
      swift_beginAccess();

      v77 = v166;

      sub_1D6D60828(v75, v164, v77);
      swift_endAccess();
    }

    v78 = (*(v74 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
    swift_beginAccess();
    v79 = *v78;
    v80 = v78[1];
    v81 = *(v71 + 80);

    v140 = sub_1D6FBB924(v81, v74, v79, v80);
    v143 = v74;

    v82 = *(v71 + 80);
    v175[4] = *(v71 + 64);
    v175[5] = v82;
    v176[0] = *(v71 + 96);
    *(v176 + 9) = *(v71 + 105);
    v83 = *(v71 + 16);
    v175[0] = *v71;
    v175[1] = v83;
    v84 = *(v71 + 48);
    v175[2] = *(v71 + 32);
    v175[3] = v84;
    v85 = v143;
    v86 = (*(v159 + 104))(v161, *MEMORY[0x1E69D7378], v160);
    MEMORY[0x1EEE9AC00](v86, v87);
    *(&v140 - 8) = v85;
    *(&v140 - 7) = v175;
    v88 = v164;
    *(&v140 - 6) = v163;
    *(&v140 - 5) = v67;
    v136 = v68;
    v137 = v88;
    v138 = v166;
    v139 = v177;
    sub_1D6FF9128(0, &qword_1EDF3BF38, MEMORY[0x1E69D73B8]);
    swift_allocObject();
    v162 = sub_1D725A4EC();

    sub_1D6FF9060(v85 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, &v169, &qword_1EDF34AB8, MEMORY[0x1E69E6720]);
    v89 = v140;
    if (v171)
    {
      sub_1D5B63F14(&v169, v174);
      if (v89)
      {
        v90 = v154;
        sub_1D6FFC87C(v89 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, v154, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        v91 = type metadata accessor for FormatItemNodeAction();
        v92 = (*(*(v91 - 8) + 48))(v90, 1, v91);
        v93 = v157;
        if (v92 == 1)
        {
          sub_1D6FFCA9C(v90, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, MEMORY[0x1E69E6720], sub_1D5D27F7C);
          v94 = 0;
          v95 = 3;
        }

        else
        {
          sub_1D675D4CC(v85, &v169);
          sub_1D6FFC9A0(v90, type metadata accessor for FormatItemNodeAction);
          v94 = v169;
          v95 = BYTE8(v169);
        }

        v96 = *(v89 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
        v161 = v94;
        if (v96 != 3)
        {
          v106 = *(v89 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle + 8);
          *&v169 = v96;
          *(&v169 + 1) = v106;
          v167 = v94;
          v168 = v95;
          sub_1D62B5DD0(v96);
          sub_1D6740A20(&v167, v93);
          LODWORD(v160) = v95;
          sub_1D62B5E24(v169);
          v132 = v141;
          v131 = v142;
          (*(v141 + 56))(v93, 0, 1, v142);
          (*(v132 + 32))(v144, v93, v131);
          goto LABEL_24;
        }

        LODWORD(v160) = v95;
      }

      else
      {
        v161 = 0;
        LODWORD(v160) = 3;
        v93 = v157;
      }

      v98 = v141;
      v97 = v142;
      (*(v141 + 56))(v93, 1, 1, v142);
      (*(v98 + 104))(v144, *MEMORY[0x1E69D79F8], v97);
LABEL_24:
      v99 = v177;
      if (v177[16])
      {
        v101 = v177[20];
        v100 = v177[21];
        v102 = v177;
        v104 = v177[18];
        v103 = v177[19];
        v105 = v177[17];
        *&v169 = v177[16];
        *(&v169 + 1) = v105;
        v170 = v104;
        v171 = v103;
        v172 = v101;
        v173 = v100;

        sub_1D5DEA234(v101);

        sub_1D68687FC(v143, v158);
        v159 = 0;
        v107 = v172;

        sub_1D5CBF568(v107);

        v108 = 0;
        v99 = v102;
      }

      else
      {
        v159 = 0;
        v108 = 1;
      }

      v109 = sub_1D7259B8C();
      (*(*(v109 - 8) + 56))(v158, v108, 1, v109);
      swift_unownedRetainStrong();
      swift_unownedRetain();

      sub_1D5B68374(v174, &v169);
      v157 = sub_1D5B4AD74;
      sub_1D6FF9454(v71, v155, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
      v111 = v141;
      v110 = v142;
      (*(v141 + 16))(v156, v144, v142);
      v112 = (*(v165 + 80) + 96) & ~*(v165 + 80);
      v113 = (v147 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
      v165 = (*(v111 + 80) + v113 + 9) & ~*(v111 + 80);
      v114 = swift_allocObject();
      v115 = v143;
      *(v114 + 2) = v99;
      *(v114 + 3) = v115;
      v116 = v163;
      v117 = v166;
      *(v114 + 4) = v164;
      *(v114 + 5) = v117;
      *(v114 + 6) = v116;
      sub_1D5B63F14(&v169, (v114 + 56));
      sub_1D6FF9770(v155, &v114[v112], &qword_1EDF338A0, v157, &type metadata for FormatItem);
      v118 = &v114[v113];
      v119 = v161;
      *v118 = v161;
      LODWORD(v112) = v160;
      v118[8] = v160;
      (*(v111 + 32))(&v114[v165], v156, v110);
      v120 = v166;

      v121 = v143;

      v161 = v119;
      LODWORD(v160) = v112;
      sub_1D61CA640(v119, v112);
      v122 = v150(0);
      v123 = v151();
      v163 = v122;
      v165 = v123;
      sub_1D7259ACC();

      KeyPath = swift_getKeyPath();
      *&v169 = v99[6];
      v125 = v169;

      sub_1D5C82CD8(v125);
      v126 = v159;
      sub_1D5BEB9F4(v121, v164, v120, v153);
      if (v126)
      {
        swift_bridgeObjectRelease_n();

        sub_1D61CA538(v161, v160);

        sub_1D6FFCA9C(v158, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
        (*(v141 + 8))(v144, v142);
        __swift_destroy_boxed_opaque_existential_1(v174);
        sub_1D5C92A8C(v169);
      }

      else
      {
        v127 = v165;
        v157 = KeyPath;

        sub_1D5C92A8C(v169);
        v128 = v177;
        swift_beginAccess();
        v129 = v128[8];

        v130 = v121;
        sub_1D618EFB4(v121, v129);
        v156 = a10;
        v133 = v177;
        v159 = 0;

        v134 = swift_allocObject();
        v134[2] = v140;
        v134[3] = v133;
        v134[4] = v130;

        v138 = v127;
        v136 = v134;
        v137 = v163;
        v135 = v153;
        sub_1D7259AFC();

        sub_1D61CA538(v161, v160);

        (*(v145 + 8))(v135, v146);
        sub_1D6FFCA9C(v158, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
        (*(v141 + 8))(v144, v142);
        __swift_destroy_boxed_opaque_existential_1(v174);
      }

      return sub_1D6FF94C8(v71, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
    }

    sub_1D6FF90CC(&v169, &qword_1EDF34AB8, MEMORY[0x1E69E6720]);
    type metadata accessor for FormatLayoutError();
    sub_1D6FFA0A0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return sub_1D6FF94C8(v71, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
}

uint64_t sub_1D6FDB38C(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, __n128), uint64_t (*a5)(void), uint64_t a6)
{
  v64 = a6;
  v63 = a5;
  v62 = a4;
  v8 = v7;
  v9 = v6;
  v61 = a3;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v66 = v12;
  v65 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v68 = (v57 - v14);
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v69 = v57 - v17;
  v18 = sub_1D7259DFC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a1;
  v71 = a2;
  v23 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_beginAccess();
  v24 = v9[2];
  v25 = v9[3];

  v67 = sub_1D6E8DD40(v24, v25);
  v70 = v26;

  v27 = v9[10];
  if (v27)
  {
    v28 = v19;
    v29 = v18;
    v30 = v9[9];
    v31 = *(v23 + 24);
    if (v31)
    {
      v72 = *(v23 + 16);
      v73 = v31;
      swift_bridgeObjectRetain_n();

      MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
      MEMORY[0x1DA6F9910](v30, v27);
      swift_bridgeObjectRelease_n();
      v27 = v73;
      v60 = v72;
    }

    else
    {
      v60 = v9[9];
    }

    v18 = v29;
    v19 = v28;
  }

  else
  {
    v60 = 0;
  }

  swift_beginAccess();

  v32 = v22;
  sub_1D607CFF4(v71, v22);
  if (v8)
  {
  }

  else
  {

    v34 = v9[13];
    if (v34)
    {
      v59 = v19;
      v58 = v18;
      v36 = v9[17];
      v35 = v9[18];
      v38 = v9[15];
      v37 = v9[16];
      v39 = v9[14];
      v72 = v34;
      v73 = v39;
      v74 = v38;
      v75 = v37;
      v76 = v36;
      v77 = v35;

      sub_1D5DEA234(v36);

      sub_1D68687FC(v71, v69);
      v40 = v76;

      sub_1D5CBF568(v40);

      v41 = 0;
      v18 = v58;
      v19 = v59;
      v32 = v22;
    }

    else
    {
      v41 = 1;
    }

    v42 = sub_1D7259B8C();
    (*(*(v42 - 8) + 56))(v69, v41, 1, v42);
    swift_beginAccess();
    v78 = v9[8];
    v43 = v78;
    v44 = v70;

    sub_1D5C82CD8(v43);
    sub_1D5BEB9F4(v71, v67, v44, v68);

    sub_1D5C92A8C(v78);
    swift_beginAccess();
    v45 = v9[11];

    v46 = sub_1D618EFB4(v71, v45);
    v59 = v19;

    v57[1] = v46;
    v48 = v69;
    v58 = v57;
    v50 = MEMORY[0x1EEE9AC00](v47, v49);
    v51 = v71;
    v57[-6] = v9;
    v57[-5] = v51;
    v57[-4] = v60;
    v57[-3] = v27;
    v52 = v62(0, v50);
    v53 = v63();
    v55 = v52;
    v56 = v53;
    v54 = v68;
    v71 = v32;
    sub_1D7259ADC();

    (*(v65 + 8))(v54, v66);
    sub_1D6FFCA9C(v48, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    return (*(v59 + 8))(v71, v18);
  }
}

uint64_t sub_1D6FDBBB4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *, uint64_t))
{
  v80 = a4;
  v6 = v5;
  v7 = v4;
  v83 = a1;
  v84 = a3;
  v82 = type metadata accessor for FormatOption();
  v9 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v10);
  v89 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2C40C(0);
  v85 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v75 - v18;
  v20 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__snippets;
  swift_beginAccess();
  v21 = *(v20 + 8);
  swift_beginAccess();
  if (!*(v21 + 16))
  {
    goto LABEL_10;
  }

  v78 = a2;
  v79 = v9;
  v81 = v19;
  v22 = *(v7 + 32);
  v23 = *(v7 + 40);

  v24 = sub_1D5B69D90(v22, v23);
  v25 = v7;
  v27 = v26;

  if ((v27 & 1) == 0)
  {

    v7 = v25;
LABEL_10:
    type metadata accessor for FormatLayoutError();
    sub_1D6FFA0A0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v45 = v7;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v77 = v6;
  sub_1D5BE4148(*(v21 + 56) + *(v85 + 72) * v24, v15, sub_1D5C2C40C);
  v28 = v81;
  sub_1D5BDAB74(v15, v81, sub_1D5C2C40C);

  swift_beginAccess();
  v29 = *(v25 + 16);
  v30 = *(v25 + 24);

  sub_1D6B0A84C(v29, v30);

  v31 = *(v25 + 16);
  v32 = *(v25 + 24);
  v78 = v25;

  v75[1] = sub_1D6B0B228(v31, v32);

  v33 = *v28;
  swift_beginAccess();
  v76 = v33;
  v34 = *(v33 + 72);
  v35 = *(v34 + 16);
  v36 = MEMORY[0x1E69E7CC0];
  if (v35)
  {
    v86[0] = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v35, 0);
    v36 = v86[0];
    v37 = *(v79 + 80);
    v85 = v34;
    v38 = v34 + ((v37 + 32) & ~v37);
    v39 = *(v79 + 72);
    do
    {
      v40 = v89;
      sub_1D5BE4148(v38, v89, type metadata accessor for FormatOption);
      v41 = swift_allocBox();
      sub_1D5BDAB74(v40, v42, type metadata accessor for FormatOption);
      v86[0] = v36;
      v44 = *(v36 + 16);
      v43 = *(v36 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1D5D24610((v43 > 1), v44 + 1, 1);
        v36 = v86[0];
      }

      *(v36 + 16) = v44 + 1;
      *(v36 + 8 * v44 + 32) = v41 | 0xA000000000000004;
      v38 += v39;
      --v35;
    }

    while (v35);
  }

  v47 = v78;
  swift_beginAccess();
  v48 = *(v47 + 88);
  v49 = *(v48 + 16);
  v50 = MEMORY[0x1E69E7CC0];
  if (v49)
  {
    v86[0] = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v49, 0);
    v50 = v86[0];
    v51 = *(v79 + 80);
    v75[0] = v48;
    v52 = v48 + ((v51 + 32) & ~v51);
    v85 = *(v79 + 72);
    do
    {
      v53 = v89;
      sub_1D5BE4148(v52, v89, type metadata accessor for FormatOption);
      v54 = swift_allocBox();
      sub_1D5BDAB74(v53, v55, type metadata accessor for FormatOption);
      v86[0] = v50;
      v57 = *(v50 + 16);
      v56 = *(v50 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_1D5D24610((v56 > 1), v57 + 1, 1);
        v50 = v86[0];
      }

      *(v50 + 16) = v57 + 1;
      *(v50 + 8 * v57 + 32) = v54 | 0x5000000000000004;
      v52 += v85;
      --v49;
    }

    while (v49);
  }

  v86[0] = v36;
  sub_1D6985C44(v50);
  sub_1D6B0C068(v86[0]);

  v58 = v76;
  swift_beginAccess();
  v59 = *(v58 + 80);
  swift_beginAccess();

  v61 = sub_1D5D6021C(v60, v59);
  sub_1D6B0ACE8(v61, 0);

  swift_beginAccess();

  v63 = sub_1D6B0C570(v62);

  swift_beginAccess();
  v64 = *(v58 + 64);
  v65 = *(v64 + 16);

  if (v65)
  {
    v66 = 0;
    v67 = 32;
    v68 = v77;
    v69 = v80;
    while (v66 < *(v64 + 16))
    {
      v70 = *(v64 + v67);
      v71 = *(v64 + v67 + 32);
      v87[1] = *(v64 + v67 + 16);
      v87[2] = v71;
      v87[0] = v70;
      v72 = *(v64 + v67 + 48);
      v73 = *(v64 + v67 + 64);
      v74 = *(v64 + v67 + 80);
      v88 = *(v64 + v67 + 96);
      v87[4] = v73;
      v87[5] = v74;
      v87[3] = v72;
      sub_1D5C5C4CC(v87, v86);
      v69(v83, v63, v84);
      if (v68)
      {
        sub_1D5C5C540(v87);
        goto LABEL_25;
      }

      ++v66;
      result = sub_1D5C5C540(v87);
      v67 += 104;
      if (v65 == v66)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    return sub_1D6FFC9A0(v81, sub_1D5C2C40C);
  }

  return result;
}

uint64_t sub_1D6FDC34C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *, uint64_t))
{
  v6 = v4;
  v52 = a3;
  v48 = a1;
  sub_1D6FF9DCC(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v45 - v15;
  v17 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items;
  swift_beginAccess();
  v18 = *(v17 + 8);
  if (!*(v18 + 16))
  {
    goto LABEL_6;
  }

  v45 = a4;
  v20 = v6[4];
  v19 = v6[5];

  v21 = sub_1D5B69D90(v20, v19);
  if ((v22 & 1) == 0)
  {

LABEL_6:
    type metadata accessor for FormatLayoutError();
    sub_1D6FFA0A0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v33 = v6;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v23 = *(v18 + 56) + *(v9 + 72) * v21;
  v46 = v16;
  sub_1D6FF9454(v23, v12, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  sub_1D6FF9770(v12, v46, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem);

  swift_beginAccess();
  v24 = v6[2];
  v25 = v6[3];

  v26 = sub_1D6E8DD40(v24, v25);
  v28 = v27;
  v29 = v46;

  v30 = v47;
  v31 = sub_1D6D9D98C(v29, a2, v26, v28);
  if (v30)
  {
    sub_1D6FF94C8(v29, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  }

  else
  {
    v34 = v31;

    swift_beginAccess();
    v35 = v6[9];
    v36 = *(v35 + 16);

    if (v36)
    {
      v37 = 0;
      v38 = 32;
      v39 = v45;
      while (v37 < *(v35 + 16))
      {
        v40 = *(v35 + v38);
        v41 = *(v35 + v38 + 32);
        v50[1] = *(v35 + v38 + 16);
        v50[2] = v41;
        v50[0] = v40;
        v42 = *(v35 + v38 + 48);
        v43 = *(v35 + v38 + 64);
        v44 = *(v35 + v38 + 80);
        v51 = *(v35 + v38 + 96);
        v50[4] = v43;
        v50[5] = v44;
        v50[3] = v42;
        sub_1D5C5C4CC(v50, &v49);
        v39(v48, v34, v52);
        ++v37;
        result = sub_1D5C5C540(v50);
        v38 += 104;
        if (v36 == v37)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_11:
      sub_1D6FF94C8(v46, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
    }
  }

  return result;
}

uint64_t sub_1D6FDC824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v83 = a7;
  v81 = a6;
  v80 = a5;
  v84 = a4;
  v85 = a3;
  v8 = v7;
  v11 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  v79 = *(v12 - 8);
  v13 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v70 - v17;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v11);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = (&v70 - v21);
  v93 = a1;
  swift_beginAccess();

  v82 = a2;
  v24 = sub_1D6B0ACE8(v23, 0);

  v25 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory;
  v26 = (*(v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v27 = *v26;
  v28 = v26[1];
  v29 = v8[7];

  v30 = v29;
  v31 = v86;
  v32 = sub_1D6FBE378(v30, v24, v27, v28);
  v86 = v31;
  if (v31)
  {
  }

  else
  {
    v77 = v25;
    v75 = v13;
    v76 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v78 = v32;
    v74 = v18;

    swift_beginAccess();
    v34 = v8[2];
    v35 = v8[3];

    v36 = sub_1D6E8DD40(v34, v35);
    v38 = v37;

    if (*(*(v85 + 24) + 16))
    {
      *v22 = v24;
      v39 = type metadata accessor for FormatSourceMapContext();
      swift_storeEnumTagMultiPayload();
      (*(*(v39 - 8) + 56))(v22, 0, 1, v39);
      swift_beginAccess();

      sub_1D6D60828(v22, v36, v38);
      swift_endAccess();
    }

    v73 = v36;
    v40 = (*(v24 + v77) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
    swift_beginAccess();
    v41 = *v40;
    v42 = v40[1];
    v43 = v8[8];

    v44 = v43;
    v45 = v86;
    v46 = sub_1D6FBAE48(v44, v24, v41, v42);
    if (v45)
    {
    }

    else
    {
      v47 = v46;
      v72 = v38;

      if (v47)
      {

        v48 = sub_1D6A45640(v24);
        v49 = v24;
        v50 = v76;
        v51 = v75;
        v86 = v49;
        v77 = v47;

        if (v48)
        {
          swift_beginAccess();

          v52 = v72;

          sub_1D6D60C08(v48, v73, v52);
          swift_endAccess();
        }
      }

      else
      {
        v77 = 0;
        v86 = v24;
        v50 = v76;
        v51 = v75;
      }

      if (v8[34])
      {
        v53 = v8[38];
        v54 = v8[39];
        v56 = v8[36];
        v55 = v8[37];
        v57 = v8[35];
        v87 = v8[34];
        v88 = v57;
        v89 = v56;
        v90 = v55;
        v91 = v53;
        v92 = v54;

        sub_1D5DEA234(v53);

        sub_1D68687FC(v86, v74);
        v58 = v91;

        sub_1D5CBF568(v58);

        v59 = 0;
        v51 = v75;
      }

      else
      {
        v59 = 1;
      }

      v60 = sub_1D7259B8C();
      v61 = v74;
      (*(*(v60 - 8) + 56))(v74, v59, 1, v60);
      v75 = MEMORY[0x1E69D6FA0];
      v71 = MEMORY[0x1E69E6720];
      sub_1D6FFC87C(v61, v50, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
      swift_unownedRetainStrong();
      v62 = v72;

      swift_unownedRetain();

      v63 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      v79 = (v51 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
      v64 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
      v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
      v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
      v67 = swift_allocObject();
      *(v67 + 16) = v73;
      *(v67 + 24) = v62;
      sub_1D6FFC410(v76, v67 + v63, &qword_1EDF3C120, v75);
      *(v67 + v79) = v8;
      v68 = v85;
      *(v67 + v64) = v86;
      *(v67 + v65) = v82;
      *(v67 + v66) = v68;
      *(v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8)) = v78;
      v80(0);
      v81();

      v69 = v74;
      sub_1D7259ACC();

      return sub_1D6FFCA9C(v69, &qword_1EDF3C120, v75, v71, sub_1D5D27F7C);
    }
  }
}

uint64_t sub_1D6FDD11C(void *a1, uint64_t a2)
{
  v4.i64[0] = 0x101010101010101;
  v4.i64[1] = 0x101010101010101;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 1 ? (v5 = byte_1F50F4211 == 1) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x800000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0();
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 1)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDD3C0(void *a1, uint64_t a2)
{
  v4.i64[0] = 0xD0D0D0D0D0D0D0DLL;
  v4.i64[1] = 0xD0D0D0D0D0D0D0DLL;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 13 ? (v5 = byte_1F50F4211 == 13) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x6800000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0();
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 13)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDD664(void *a1, uint64_t a2)
{
  if ((vmaxvq_u8(vceqzq_s8(xmmword_1F50F4200)) & 1) != 0 || (byte_1F50F4210 ? (v4 = byte_1F50F4211 == 0) : (v4 = 1), v4))
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    *(v5 + 64) = 0;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v7 = a1[2];
    v6 = a1[3];
    if (v7 >= v6 >> 1)
    {
      a1 = sub_1D5C4BE58((v6 > 1), v7 + 1, 1, a1);
    }

    a1[2] = v7 + 1;
    a1[v7 + 4] = v5 | 0x9000000000000000;
    sub_1D5C4BDF0();
    v8 = sub_1D72626AC();
    v9 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    v14 = MEMORY[0x1E69E7CC0];
    v10 = *(v8 + 16);
    while (v10 != v9)
    {
      if (v9 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v11 = *(v8 + 8 * v9 + 32);
      switch((v11 >> 59) & 0x1E | (v11 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v11 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v9;
      if (!(*(v11 + 64) >> 59))
      {

        MEMORY[0x1DA6F9CE0](v12);
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v5 = v14;
      }
    }

    return v5;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDD8FC(void *a1, uint64_t a2)
{
  v4.i64[0] = 0x202020202020202;
  v4.i64[1] = 0x202020202020202;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 2 ? (v5 = byte_1F50F4211 == 2) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x1000000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0();
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 2)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDDBA0(void *a1, uint64_t a2)
{
  v4.i64[0] = 0x303030303030303;
  v4.i64[1] = 0x303030303030303;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 3 ? (v5 = byte_1F50F4211 == 3) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x1800000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0();
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 3)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDDE44(void *a1, uint64_t a2)
{
  v4.i64[0] = 0x606060606060606;
  v4.i64[1] = 0x606060606060606;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 6 ? (v5 = byte_1F50F4211 == 6) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x3000000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0();
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 6)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDE0E8(void *a1, uint64_t a2)
{
  v4.i64[0] = 0xB0B0B0B0B0B0B0BLL;
  v4.i64[1] = 0xB0B0B0B0B0B0B0BLL;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 11 ? (v5 = byte_1F50F4211 == 11) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x5800000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0();
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 11)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDE38C(void *a1, uint64_t a2)
{
  v4.i64[0] = 0x404040404040404;
  v4.i64[1] = 0x404040404040404;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 4 ? (v5 = byte_1F50F4211 == 4) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x2000000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0();
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 4)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDE630(void *a1, uint64_t a2)
{
  v4.i64[0] = 0x505050505050505;
  v4.i64[1] = 0x505050505050505;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 5 ? (v5 = byte_1F50F4211 == 5) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x2800000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0();
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 5)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDE8D4(void *a1, uint64_t a2)
{
  v4.i64[0] = 0x707070707070707;
  v4.i64[1] = 0x707070707070707;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 7 ? (v5 = byte_1F50F4211 == 7) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x3800000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0();
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 7)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDEB78(void *a1, uint64_t a2)
{
  v4.i64[0] = 0x808080808080808;
  v4.i64[1] = 0x808080808080808;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 8 ? (v5 = byte_1F50F4211 == 8) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x4000000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0();
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 8)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDEE1C(void *a1, uint64_t a2)
{
  v4.i64[0] = 0x909090909090909;
  v4.i64[1] = 0x909090909090909;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 9 ? (v5 = byte_1F50F4211 == 9) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x4800000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0();
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 9)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDF0C0(void *a1, uint64_t a2)
{
  v4.i64[0] = 0xA0A0A0A0A0A0A0ALL;
  v4.i64[1] = 0xA0A0A0A0A0A0A0ALL;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 10 ? (v5 = byte_1F50F4211 == 10) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x5000000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0();
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 10)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDF364(void *a1, uint64_t a2)
{
  v4.i64[0] = 0xE0E0E0E0E0E0E0ELL;
  v4.i64[1] = 0xE0E0E0E0E0E0E0ELL;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 14 ? (v5 = byte_1F50F4211 == 14) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x7000000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0();
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 14)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDF608(void *a1, uint64_t a2)
{
  v4.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v4.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 15 ? (v5 = byte_1F50F4211 == 15) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x7800000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0();
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 15)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDF8AC(void *a1, uint64_t a2)
{
  v4.i64[0] = 0x1010101010101010;
  v4.i64[1] = 0x1010101010101010;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 16 ? (v5 = byte_1F50F4211 == 16) : (v5 = 1), v5))
  {
    v6 = *(a2 + 56);
    v7 = *(a2 + 48);
    v9 = *(a2 + 32);
    v8 = *(a2 + 40);
    v10 = swift_allocObject();
    v11 = *(a2 + 16);
    *(v10 + 16) = *a2;
    *(v10 + 32) = v11;
    *(v10 + 48) = v9;
    *(v10 + 56) = v8;
    *(v10 + 64) = v7 | 0x8000000000000000;
    *(v10 + 72) = v6;

    sub_1D6A53524(a2, v37);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_23:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v13 = a1[2];
    v12 = a1[3];
    if (v13 >= v12 >> 1)
    {
      a1 = sub_1D5C4BE58((v12 > 1), v13 + 1, 1, a1);
    }

    a1[2] = v13 + 1;
    a1[v13 + 4] = v10 | 0x9000000000000000;
    sub_1D5C4BDF0();
    v10 = sub_1D72626AC();
    v14 = 0;
    v15 = *(v10 + 16);
    v16 = MEMORY[0x1E69E7CC0];
    while (v15 != v14)
    {
      if (v14 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      v17 = *(v10 + 8 * v14 + 32);
      switch((v17 >> 59) & 0x1E | (v17 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v17 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      v18 = *(v17 + 64);
      ++v14;
      if (v18 >> 59 == 16)
      {
        v35 = a1;
        v19 = *(v17 + 72);
        v20 = *(v17 + 16);
        v21 = *(v17 + 24);
        v22 = *(v17 + 32);
        v23 = *(v17 + 40);
        v25 = *(v17 + 48);
        v24 = *(v17 + 56);
        v37[0] = v20;
        v37[1] = v21;
        v32 = v24;
        v33 = v22;
        v37[2] = v22;
        v37[3] = v23;
        v37[4] = v25;
        v37[5] = v24;
        v31 = v18 & 0x7FFFFFFFFFFFFFFLL;
        v37[6] = v18 & 0x7FFFFFFFFFFFFFFLL;
        v37[7] = v19;
        v34 = v19;
        sub_1D6A53524(v37, v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D698F4D0(0, *(v16 + 2) + 1, 1, v16);
        }

        v27 = *(v16 + 2);
        v26 = *(v16 + 3);
        v28 = v16;
        if (v27 >= v26 >> 1)
        {
          v28 = sub_1D698F4D0((v26 > 1), v27 + 1, 1, v16);
        }

        *(v28 + 2) = v27 + 1;
        v16 = v28;
        v29 = &v28[64 * v27];
        *(v29 + 4) = v20;
        *(v29 + 5) = v21;
        *(v29 + 6) = v33;
        *(v29 + 7) = v23;
        *(v29 + 8) = v25;
        *(v29 + 9) = v32;
        a1 = v35;
        *(v29 + 10) = v31;
        *(v29 + 11) = v34;
      }
    }

    return v16;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDFBD0(void *a1, uint64_t a2)
{
  v4.i64[0] = 0x1010101010101010;
  v4.i64[1] = 0x1010101010101010;
  if ((vmaxvq_u8(vcgtq_u8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 <= 0x10u ? (v5 = byte_1F50F4211 > 0x10u) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x8800000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0();
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 >= 0x11uLL)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDFE74(void *a1, uint64_t a2)
{
  v4.i64[0] = 0xC0C0C0C0C0C0C0CLL;
  v4.i64[1] = 0xC0C0C0C0C0C0C0CLL;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 12 ? (v5 = byte_1F50F4211 == 12) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x6000000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0();
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 12)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FE0118@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = a2;
  v9 = result;
  if ((~a2 & 0xF000000000000007) != 0)
  {
    result = sub_1D5FA6CB0(result, a2, &v21);
    if (v5)
    {
      return result;
    }

    v8 = v21;
  }

  if ((~a3 & 0xF000000000000007) != 0)
  {
    v21 = v9;
    v20 = swift_allocObject();
    v11 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v12 = v11();
    FormatFloat.value(contextLayoutOptions:)(v12);
    if (v5)
    {
      sub_1D5C84FF4(v8);

      return swift_deallocUninitializedObject();
    }

    v14 = v13;

    a3 = v20;
    *(v20 + 16) = v14;
  }

  if ((~a4 & 0xF000000000000007) != 0)
  {
    v21 = v9;
    v15 = swift_allocObject();
    v16 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v17 = v16();
    FormatFloat.value(contextLayoutOptions:)(v17);
    if (v5)
    {
      sub_1D5C84FF4(v8);
      sub_1D5C8500C(a3);

      return swift_deallocUninitializedObject();
    }

    v19 = v18;

    *(v15 + 16) = v19;
    a4 = v15;
  }

  *a5 = v8;
  a5[1] = a3;
  a5[2] = a4;
  return result;
}

uint64_t sub_1D6FE02FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v72 = a7;
  v69 = a6;
  v68 = a5;
  v67 = a4;
  v8 = v7;
  v12 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  v65 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v73 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v74 = &v62 - v18;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v12);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = (&v62 - v21);
  v83 = a1;
  swift_beginAccess();

  v70 = a2;
  v24 = sub_1D6B0ACE8(v23, 0);

  swift_beginAccess();
  v25 = v8[2];
  v26 = v8[3];

  v27 = sub_1D6E8DD40(v25, v26);
  v29 = v28;

  v71 = a3;
  if (*(*(a3 + 24) + 16))
  {
    *v22 = v24;
    v30 = type metadata accessor for FormatSourceMapContext();
    swift_storeEnumTagMultiPayload();
    (*(*(v30 - 8) + 56))(v22, 0, 1, v30);
    swift_beginAccess();

    sub_1D6D60828(v22, v27, v29);
    swift_endAccess();
  }

  v75 = v27;
  v31 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory;
  v32 = (*(v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v33 = *v32;
  v34 = v32[1];
  v35 = v8[7];

  v36 = v35;
  v37 = v76;
  v38 = sub_1D6FBB1DC(v36, v24, v33, v34);
  if (v37)
  {
  }

  else
  {
    v76 = v38;

    v39 = (*(v24 + v31) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
    swift_beginAccess();
    v40 = *v39;
    v41 = v39[1];
    v42 = v8[8];

    v44 = sub_1D6FBAE48(v42, v24, v40, v41);

    v45 = v29;
    if (v44)
    {

      v46 = sub_1D6A45640(v24);
      v47 = v75;
      v48 = v46;

      if (v48)
      {
        swift_beginAccess();

        sub_1D6D60C08(v48, v47, v45);
        swift_endAccess();
      }
    }

    v64 = v44;
    v49 = v74;
    if (v8[17])
    {
      v51 = v8[21];
      v50 = v8[22];
      v53 = v8[19];
      v52 = v8[20];
      v54 = v8[18];
      v77 = v8[17];
      v78 = v54;
      v79 = v53;
      v80 = v52;
      v81 = v51;
      v82 = v50;

      sub_1D5DEA234(v51);

      sub_1D68687FC(v24, v49);
      v63 = v81;

      sub_1D5CBF568(v63);

      v55 = 0;
    }

    else
    {
      v55 = 1;
    }

    v56 = sub_1D7259B8C();
    (*(*(v56 - 8) + 56))(v49, v55, 1, v56);
    v63 = MEMORY[0x1E69D6FA0];
    v62 = MEMORY[0x1E69E6720];
    sub_1D6FFC87C(v49, v73, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    swift_unownedRetainStrong();

    swift_unownedRetain();

    v57 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v66 = (v66 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    *(v60 + 16) = v75;
    *(v60 + 24) = v45;
    sub_1D6FFC410(v73, v60 + v57, &qword_1EDF3C120, v63);
    *(v60 + v66) = v8;
    *(v60 + v65) = v24;
    *(v60 + v58) = v76;
    *(v60 + v59) = v70;
    *(v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8)) = v71;
    v68(0);
    v69();

    v61 = v74;
    sub_1D7259ACC();

    return sub_1D6FFCA9C(v61, &qword_1EDF3C120, v63, v62, sub_1D5D27F7C);
  }
}

uint64_t sub_1D6FE0B78(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), unint64_t a4)
{
  switch((a4 >> 58) & 0x3C | (a4 >> 1) & 3)
  {
    case 1uLL:

      v8 = MEMORY[0x1E69D6F70];
      goto LABEL_29;
    case 2uLL:

      v21 = MEMORY[0x1E69D6F78];
      goto LABEL_26;
    case 3uLL:

      v21 = MEMORY[0x1E69D6F80];
LABEL_26:
      sub_1D6FD8274(a1, a2, a3, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCD24, v21);

    case 4uLL:

      sub_1D6FE02FC(a1, a2, a3, &unk_1F51DF320, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCB2C);

    case 5uLL:

      sub_1D6FC9BE0(a1, a2, a3, &unk_1F51DF348, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCB44);

    case 6uLL:

      sub_1D6FD9574(a1, a2, a3, &unk_1F51DF370, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCB5C);

    case 7uLL:

      sub_1D6FD9E6C(a1, a2, a3, sub_1D6FFCE04, &unk_1F51DF398, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCB74, &unk_1F51DF3C0, sub_1D6FFCD88);

    case 8uLL:

      sub_1D6FFA0E8(a1, a2, sub_1D5EB5368, sub_1D6FF91E8);

    case 9uLL:

      sub_1D6FDBBB4(a1, a2, a3, sub_1D6FBF7BC);

    case 0xAuLL:

      sub_1D6FCC208(a1, a2, a3, sub_1D6FFCE1C, &unk_1F51DF3E8, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCD3C);

    case 0xBuLL:

      sub_1D6FE5308(a1, a2, a3, &unk_1F51DF410, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCDA0);

    case 0xCuLL:

      sub_1D6FD7E50(a1, a2, a3, sub_1D6FBF7BC);

    case 0xDuLL:

      sub_1D6FC8FB0(a1, a2, a3, &unk_1F51DF438, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCB8C);

    case 0xEuLL:

      sub_1D6FBA034(a1, a2, a3, &unk_1F51DF460, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCBA4, sub_1D6FFCE34);

    case 0xFuLL:

      sub_1D6FE5778(a1, a2, a3, sub_1D6FFCE64, &unk_1F51DF488, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCD54, sub_1D6FFCE7C);

    case 0x10uLL:

      sub_1D6FE6728(a1, a2, a3, &unk_1F51DF4B0, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCC4C);

    case 0x11uLL:

      sub_1D6FC9504(a1, a2, a3, &unk_1F51DF4D8, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCEE0);

    case 0x12uLL:

      sub_1D6FE7320(a1, a2, a3, sub_1D6FBF7BC);

    case 0x13uLL:

      sub_1D6FD0868(a1, a2, a3, &unk_1F51DF500, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCDB8);

    case 0x14uLL:

      sub_1D6FE77CC(a1, a2, a3, sub_1D6FFCE94, &unk_1F51DF528, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCD0C);

    case 0x15uLL:

      sub_1D6FCD35C(a1, a2, a3, &unk_1F51DF550, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCC64);

    case 0x16uLL:
      v22 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v27[0] = a1;
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = a3;
      v23[4] = a2;
      sub_1D5EB5368(0);
      sub_1D6FF91E8();
      swift_retain_n();

      sub_1D7259AEC();

    case 0x17uLL:

      sub_1D6FC357C(a1, a2, a3, &unk_1F51DF578, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCEF8);

    case 0x18uLL:

      sub_1D6FE87E4(a1, a2, a3, &unk_1F51DF5A0, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCC7C);

    case 0x19uLL:

      sub_1D6FE9634(a1, a2, a3, &unk_1F51DF5F0, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCC94, &unk_1F51DF5C8, sub_1D6FFCDE8);

    case 0x1AuLL:

      sub_1D6FEA82C(a1, a2, a3, &unk_1F51DF618, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCBBC);

    case 0x1BuLL:

      sub_1D6FC40FC(a1, a2, a3);

    case 0x1CuLL:
      v24 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x70);
      v28[5] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v28[6] = v24;
      v28[7] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x80);
      v29 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x90);
      v25 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v28[1] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v28[2] = v25;
      v26 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v28[3] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v28[4] = v26;
      v28[0] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);
      sub_1D62B60B4(v28, v27);
      sub_1D6FD5EE8(a1, a2, a3, &unk_1F51DF668, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCCAC);
      return sub_1D62B6110(v28);
    case 0x1DuLL:

      sub_1D6FD56DC(a1, a2, a3, sub_1D6FBF7BC);

    case 0x1EuLL:

      sub_1D6FEB124(a1, a2, a3, &unk_1F51DF690, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCDD0);

    case 0x1FuLL:

      sub_1D6FDC824(a1, a2, a3, &unk_1F51DF6B8, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCBD4);

    case 0x20uLL:

      sub_1D6FD4830(a1, a2, a3, &unk_1F51DF6E0, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCCC4);

    case 0x21uLL:

      sub_1D6FDC34C(a1, a2, a3, sub_1D6FBF7BC);

    case 0x22uLL:

      sub_1D6FEB46C(a1, a2, a3, sub_1D6FBF7BC);

    case 0x23uLL:
      v9 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = sub_1D6C1BE20(a2);
      swift_beginAccess();
      v32 = v9;
      v11 = *(v9 + 48);
      v12 = *(v11 + 16);

      if (!v12)
      {
        goto LABEL_9;
      }

      v14 = 0;
      v15 = 32;
      break;
    case 0x24uLL:

      sub_1D6FFA96C(a1, a2, &unk_1F51DF708, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCEC8);

    case 0x25uLL:

      sub_1D6FC810C(a1, a2, a3);

    case 0x26uLL:

      sub_1D6FCE6E8(a1, a2, a3, &unk_1F51DF758, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCCDC);

    case 0x27uLL:

      sub_1D6FD7140(a1, a2, a3, &unk_1F51DF780, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCCF4);

    case 0x28uLL:

      sub_1D6FDB38C(a1, a2, a3, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCEB0);

    default:

      v8 = MEMORY[0x1E69D6F68];
LABEL_29:
      sub_1D6FD8DB8(a1, a2, a3, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCDEC, v8);
  }

  while (1)
  {
    if (v14 >= *(v11 + 16))
    {
      __break(1u);
      return result;
    }

    v16 = *(v11 + v15);
    v17 = *(v11 + v15 + 32);
    v30[1] = *(v11 + v15 + 16);
    v30[2] = v17;
    v30[0] = v16;
    v18 = *(v11 + v15 + 48);
    v19 = *(v11 + v15 + 64);
    v20 = *(v11 + v15 + 80);
    v31 = *(v11 + v15 + 96);
    v30[4] = v19;
    v30[5] = v20;
    v30[3] = v18;
    sub_1D5C5C4CC(v30, v27);
    sub_1D6FBF7BC(a1, v10, a3);
    if (v4)
    {
      break;
    }

    ++v14;
    result = sub_1D5C5C540(v30);
    v15 += 104;
    if (v12 == v14)
    {
LABEL_9:
    }
  }

  sub_1D5C5C540(v30);
}

uint64_t sub_1D6FE1D5C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), unint64_t a4)
{
  switch((a4 >> 58) & 0x3C | (a4 >> 1) & 3)
  {
    case 1uLL:

      v8 = sub_1D6FFCDEC;
      v9 = MEMORY[0x1E69D6F70];
      goto LABEL_29;
    case 2uLL:

      v22 = MEMORY[0x1E69D6F78];
      goto LABEL_26;
    case 3uLL:

      v22 = MEMORY[0x1E69D6F80];
LABEL_26:
      sub_1D6FD8274(a1, a2, a3, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCD24, v22);

    case 4uLL:

      sub_1D6FE02FC(a1, a2, a3, &unk_1F51DEE20, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCB2C);

    case 5uLL:

      sub_1D6FC9BE0(a1, a2, a3, &unk_1F51DEE48, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCB44);

    case 6uLL:

      sub_1D6FD9574(a1, a2, a3, &unk_1F51DEE70, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCB5C);

    case 7uLL:

      sub_1D6FD9E6C(a1, a2, a3, sub_1D6FFCE04, &unk_1F51DEE98, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCB74, &unk_1F51DEEC0, sub_1D6FFCD88);

    case 8uLL:

      sub_1D6FFA0E8(a1, a2, sub_1D5EB563C, sub_1D6FF92D8);

    case 9uLL:

      sub_1D6FDBBB4(a1, a2, a3, sub_1D6FBFE04);

    case 0xAuLL:

      sub_1D6FCC208(a1, a2, a3, sub_1D6FFCE1C, &unk_1F51DEEE8, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCD3C);

    case 0xBuLL:

      sub_1D6FE5308(a1, a2, a3, &unk_1F51DEF10, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCDA0);

    case 0xCuLL:

      sub_1D6FD7E50(a1, a2, a3, sub_1D6FBFE04);

    case 0xDuLL:

      sub_1D6FC8FB0(a1, a2, a3, &unk_1F51DEF38, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCB8C);

    case 0xEuLL:

      sub_1D6FBA034(a1, a2, a3, &unk_1F51DEF60, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCBA4, sub_1D6FFCE34);

    case 0xFuLL:

      sub_1D6FE5778(a1, a2, a3, sub_1D6FFCE64, &unk_1F51DEF88, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCD54, sub_1D6FFCE7C);

    case 0x10uLL:

      sub_1D6FE6728(a1, a2, a3, &unk_1F51DEFB0, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCC4C);

    case 0x11uLL:

      sub_1D6FC9504(a1, a2, a3, &unk_1F51DEFD8, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCEE0);

    case 0x12uLL:

      sub_1D6FE7320(a1, a2, a3, sub_1D6FBFE04);

    case 0x13uLL:

      sub_1D6FD0868(a1, a2, a3, &unk_1F51DF000, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCDB8);

    case 0x14uLL:

      sub_1D6FE77CC(a1, a2, a3, sub_1D6FFCE94, &unk_1F51DF028, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCD0C);

    case 0x15uLL:

      sub_1D6FCD35C(a1, a2, a3, &unk_1F51DF050, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCC64);

    case 0x16uLL:
      v23 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v28[0] = a1;
      v24 = swift_allocObject();
      v24[2] = v23;
      v24[3] = a3;
      v24[4] = a2;
      sub_1D5EB563C(0);
      sub_1D6FF92D8();
      swift_retain_n();

      sub_1D7259AEC();

    case 0x17uLL:

      sub_1D6FC357C(a1, a2, a3, &unk_1F51DF078, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCEF8);

    case 0x18uLL:

      sub_1D6FE87E4(a1, a2, a3, &unk_1F51DF0A0, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCC7C);

    case 0x19uLL:

      sub_1D6FE9634(a1, a2, a3, &unk_1F51DF0F0, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCC94, &unk_1F51DF0C8, sub_1D6FFCDE8);

    case 0x1AuLL:

      sub_1D6FEA82C(a1, a2, a3, &unk_1F51DF118, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCBBC);

    case 0x1BuLL:

      sub_1D6FC5100(a1, a2, a3);

    case 0x1CuLL:
      v25 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x70);
      v29[5] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v29[6] = v25;
      v29[7] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x80);
      v30 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x90);
      v26 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v29[1] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v29[2] = v26;
      v27 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v29[3] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v29[4] = v27;
      v29[0] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);
      sub_1D62B60B4(v29, v28);
      sub_1D6FD5EE8(a1, a2, a3, &unk_1F51DF168, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCCAC);
      return sub_1D62B6110(v29);
    case 0x1DuLL:

      sub_1D6FD56DC(a1, a2, a3, sub_1D6FBFE04);

    case 0x1EuLL:

      sub_1D6FEB124(a1, a2, a3, &unk_1F51DF190, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCDD0);

    case 0x1FuLL:

      sub_1D6FDC824(a1, a2, a3, &unk_1F51DF1B8, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCBD4);

    case 0x20uLL:

      sub_1D6FD4830(a1, a2, a3, &unk_1F51DF1E0, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCCC4);

    case 0x21uLL:

      sub_1D6FDC34C(a1, a2, a3, sub_1D6FBFE04);

    case 0x22uLL:

      sub_1D6FEB46C(a1, a2, a3, sub_1D6FBFE04);

    case 0x23uLL:
      v10 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v11 = sub_1D6C1BE20(a2);
      swift_beginAccess();
      v33 = v10;
      v12 = *(v10 + 48);
      v13 = *(v12 + 16);

      if (!v13)
      {
        goto LABEL_9;
      }

      v15 = 0;
      v16 = 32;
      break;
    case 0x24uLL:

      sub_1D6FFA96C(a1, a2, &unk_1F51DF258, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCEC8);

    case 0x25uLL:

      sub_1D6FC8388(a1, a2, a3);

    case 0x26uLL:

      sub_1D6FCE6E8(a1, a2, a3, &unk_1F51DF2A8, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCCDC);

    case 0x27uLL:

      sub_1D6FD7140(a1, a2, a3, &unk_1F51DF2D0, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCCF4);

    case 0x28uLL:

      sub_1D6FDB38C(a1, a2, a3, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCEB0);

    default:

      v8 = sub_1D6FF930C;
      v9 = MEMORY[0x1E69D6F68];
LABEL_29:
      sub_1D6FD8DB8(a1, a2, a3, sub_1D5EB563C, sub_1D6FF92D8, v8, v9);
  }

  while (1)
  {
    if (v15 >= *(v12 + 16))
    {
      __break(1u);
      return result;
    }

    v17 = *(v12 + v16);
    v18 = *(v12 + v16 + 32);
    v31[1] = *(v12 + v16 + 16);
    v31[2] = v18;
    v31[0] = v17;
    v19 = *(v12 + v16 + 48);
    v20 = *(v12 + v16 + 64);
    v21 = *(v12 + v16 + 80);
    v32 = *(v12 + v16 + 96);
    v31[4] = v20;
    v31[5] = v21;
    v31[3] = v19;
    sub_1D5C5C4CC(v31, v28);
    sub_1D6FBFE04(a1, v11, a3);
    if (v4)
    {
      break;
    }

    ++v15;
    result = sub_1D5C5C540(v31);
    v16 += 104;
    if (v13 == v15)
    {
LABEL_9:
    }
  }

  sub_1D5C5C540(v31);
}

uint64_t sub_1D6FE2F40(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), unint64_t a4)
{
  switch((a4 >> 58) & 0x3C | (a4 >> 1) & 3)
  {
    case 1uLL:

      v8 = sub_1D6FF930C;
      v9 = MEMORY[0x1E69D6F70];
      goto LABEL_29;
    case 2uLL:

      v22 = MEMORY[0x1E69D6F78];
      goto LABEL_26;
    case 3uLL:

      v22 = MEMORY[0x1E69D6F80];
LABEL_26:
      sub_1D6FD8274(a1, a2, a3, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF936C, v22);

    case 4uLL:

      sub_1D6FE02FC(a1, a2, a3, &unk_1F51DE308, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF938C);

    case 5uLL:

      sub_1D6FC9BE0(a1, a2, a3, &unk_1F51DE498, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF972C);

    case 6uLL:

      sub_1D6FD9574(a1, a2, a3, &unk_1F51DE4C0, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9744);

    case 7uLL:

      sub_1D6FD9E6C(a1, a2, a3, sub_1D6FF97F4, &unk_1F51DE4E8, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF980C, &unk_1F51DE510, sub_1D6FF9824);

    case 8uLL:

      sub_1D6FFA0E8(a1, a2, sub_1D5EB5290, sub_1D6FF9338);

    case 9uLL:

      sub_1D6FDBBB4(a1, a2, a3, sub_1D6FC044C);

    case 0xAuLL:

      sub_1D6FCC208(a1, a2, a3, sub_1D6FF9844, &unk_1F51DE538, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF985C);

    case 0xBuLL:

      sub_1D6FE5308(a1, a2, a3, &unk_1F51DE560, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF987C);

    case 0xCuLL:

      sub_1D6FD7E50(a1, a2, a3, sub_1D6FC044C);

    case 0xDuLL:

      sub_1D6FC8FB0(a1, a2, a3, &unk_1F51DE588, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF989C);

    case 0xEuLL:

      sub_1D6FBA034(a1, a2, a3, &unk_1F51DE5B0, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF98B4, sub_1D6FF98CC);

    case 0xFuLL:

      sub_1D6FE5778(a1, a2, a3, sub_1D6FF9910, &unk_1F51DE600, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF993C, sub_1D6FF995C);

    case 0x10uLL:

      sub_1D6FE6728(a1, a2, a3, &unk_1F51DE628, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9974);

    case 0x11uLL:

      sub_1D6FC9504(a1, a2, a3, &unk_1F51DE650, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF998C);

    case 0x12uLL:

      sub_1D6FE7320(a1, a2, a3, sub_1D6FC044C);

    case 0x13uLL:

      sub_1D6FD0868(a1, a2, a3, &unk_1F51DE678, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF99AC);

    case 0x14uLL:

      sub_1D6FE77CC(a1, a2, a3, sub_1D6FF9A20, &unk_1F51DE6A0, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9A4C);

    case 0x15uLL:

      sub_1D6FCD35C(a1, a2, a3, &unk_1F51DE6C8, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9A6C);

    case 0x16uLL:
      v23 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v28[0] = a1;
      v24 = swift_allocObject();
      v24[2] = v23;
      v24[3] = a3;
      v24[4] = a2;
      sub_1D5EB5290(0);
      sub_1D6FF9338();
      swift_retain_n();

      sub_1D7259AEC();

    case 0x17uLL:

      sub_1D6FC357C(a1, a2, a3, &unk_1F51DE6F0, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9B1C);

    case 0x18uLL:

      sub_1D6FE87E4(a1, a2, a3, &unk_1F51DE718, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9B3C);

    case 0x19uLL:

      sub_1D6FE9634(a1, a2, a3, &unk_1F51DE768, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9B6C, &unk_1F51DE740, sub_1D6FF9B68);

    case 0x1AuLL:

      sub_1D6FEA82C(a1, a2, a3, &unk_1F51DE790, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9BA4);

    case 0x1BuLL:

      sub_1D6FC6104(a1, a2, a3);

    case 0x1CuLL:
      v25 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x70);
      v29[5] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v29[6] = v25;
      v29[7] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x80);
      v30 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x90);
      v26 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v29[1] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v29[2] = v26;
      v27 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v29[3] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v29[4] = v27;
      v29[0] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);
      sub_1D62B60B4(v29, v28);
      sub_1D6FD5EE8(a1, a2, a3, &unk_1F51DE7E0, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9E34);
      return sub_1D62B6110(v29);
    case 0x1DuLL:

      sub_1D6FD56DC(a1, a2, a3, sub_1D6FC044C);

    case 0x1EuLL:

      sub_1D6FEB124(a1, a2, a3, &unk_1F51DE808, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9E4C);

    case 0x1FuLL:

      sub_1D6FDC824(a1, a2, a3, &unk_1F51DE830, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9E6C);

    case 0x20uLL:

      sub_1D6FD4830(a1, a2, a3, &unk_1F51DE858, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9EEC);

    case 0x21uLL:

      sub_1D6FDC34C(a1, a2, a3, sub_1D6FC044C);

    case 0x22uLL:

      sub_1D6FEB46C(a1, a2, a3, sub_1D6FC044C);

    case 0x23uLL:
      v10 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v11 = sub_1D6C1BE20(a2);
      swift_beginAccess();
      v33 = v10;
      v12 = *(v10 + 48);
      v13 = *(v12 + 16);

      if (!v13)
      {
        goto LABEL_9;
      }

      v15 = 0;
      v16 = 32;
      break;
    case 0x24uLL:

      sub_1D6FFA96C(a1, a2, &unk_1F51DE880, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9F04);

    case 0x25uLL:

      sub_1D6FC8604(a1, a2, a3);

    case 0x26uLL:

      sub_1D6FCE6E8(a1, a2, a3, &unk_1F51DE8D0, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9FF0);

    case 0x27uLL:

      sub_1D6FD7140(a1, a2, a3, &unk_1F51DE8F8, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FFA008);

    case 0x28uLL:

      sub_1D6FDB38C(a1, a2, a3, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FFA020);

    default:

      v8 = sub_1D6FFCDEC;
      v9 = MEMORY[0x1E69D6F68];
LABEL_29:
      sub_1D6FD8DB8(a1, a2, a3, sub_1D5EB5290, sub_1D6FF9338, v8, v9);
  }

  while (1)
  {
    if (v15 >= *(v12 + 16))
    {
      __break(1u);
      return result;
    }

    v17 = *(v12 + v16);
    v18 = *(v12 + v16 + 32);
    v31[1] = *(v12 + v16 + 16);
    v31[2] = v18;
    v31[0] = v17;
    v19 = *(v12 + v16 + 48);
    v20 = *(v12 + v16 + 64);
    v21 = *(v12 + v16 + 80);
    v32 = *(v12 + v16 + 96);
    v31[4] = v20;
    v31[5] = v21;
    v31[3] = v19;
    sub_1D5C5C4CC(v31, v28);
    sub_1D6FC044C(a1, v11, a3);
    if (v4)
    {
      break;
    }

    ++v15;
    result = sub_1D5C5C540(v31);
    v16 += 104;
    if (v13 == v15)
    {
LABEL_9:
    }
  }

  sub_1D5C5C540(v31);
}

uint64_t sub_1D6FE4124(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), unint64_t a4)
{
  switch((a4 >> 58) & 0x3C | (a4 >> 1) & 3)
  {
    case 1uLL:

      v8 = MEMORY[0x1E69D6F70];
      goto LABEL_29;
    case 2uLL:

      v21 = MEMORY[0x1E69D6F78];
      goto LABEL_26;
    case 3uLL:

      v21 = MEMORY[0x1E69D6F80];
LABEL_26:
      sub_1D6FD8274(a1, a2, a3, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCD24, v21);

    case 4uLL:

      sub_1D6FE02FC(a1, a2, a3, &unk_1F51DE998, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCB2C);

    case 5uLL:

      sub_1D6FC9BE0(a1, a2, a3, &unk_1F51DE9C0, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCB44);

    case 6uLL:

      sub_1D6FD9574(a1, a2, a3, &unk_1F51DE9E8, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCB5C);

    case 7uLL:

      sub_1D6FD9E6C(a1, a2, a3, sub_1D6FFCE04, &unk_1F51DEA10, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCB74, &unk_1F51DEA38, sub_1D6FFCD88);

    case 8uLL:

      sub_1D6FFA0E8(a1, a2, sub_1D6FFA04C, sub_1D6FFA06C);

    case 9uLL:

      sub_1D6FDBBB4(a1, a2, a3, sub_1D6FC0A94);

    case 0xAuLL:

      sub_1D6FCC208(a1, a2, a3, sub_1D6FFCE1C, &unk_1F51DEA60, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCD3C);

    case 0xBuLL:

      sub_1D6FE5308(a1, a2, a3, &unk_1F51DEA88, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCDA0);

    case 0xCuLL:

      sub_1D6FD7E50(a1, a2, a3, sub_1D6FC0A94);

    case 0xDuLL:

      sub_1D6FC8FB0(a1, a2, a3, &unk_1F51DEAB0, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCB8C);

    case 0xEuLL:

      sub_1D6FBA034(a1, a2, a3, &unk_1F51DEAD8, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCBA4, sub_1D6FFCE34);

    case 0xFuLL:

      sub_1D6FE5778(a1, a2, a3, sub_1D6FFCE64, &unk_1F51DEB00, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCD54, sub_1D6FFCE7C);

    case 0x10uLL:

      sub_1D6FE6728(a1, a2, a3, &unk_1F51DEB28, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCC4C);

    case 0x11uLL:

      sub_1D6FC9504(a1, a2, a3, &unk_1F51DEB50, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCEE0);

    case 0x12uLL:

      sub_1D6FE7320(a1, a2, a3, sub_1D6FC0A94);

    case 0x13uLL:

      sub_1D6FD0868(a1, a2, a3, &unk_1F51DEB78, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCDB8);

    case 0x14uLL:

      sub_1D6FE77CC(a1, a2, a3, sub_1D6FFCE94, &unk_1F51DEBA0, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCD0C);

    case 0x15uLL:

      sub_1D6FCD35C(a1, a2, a3, &unk_1F51DEBC8, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCC64);

    case 0x16uLL:
      v22 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v27[0] = a1;
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = a3;
      v23[4] = a2;
      sub_1D6FFA04C(0);
      sub_1D6FFA06C();
      swift_retain_n();

      sub_1D7259AEC();

    case 0x17uLL:

      sub_1D6FC357C(a1, a2, a3, &unk_1F51DEBF0, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCEF8);

    case 0x18uLL:

      sub_1D6FE87E4(a1, a2, a3, &unk_1F51DEC18, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCC7C);

    case 0x19uLL:

      sub_1D6FE9634(a1, a2, a3, &unk_1F51DEC68, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCC94, &unk_1F51DEC40, sub_1D6FFCDE8);

    case 0x1AuLL:

      sub_1D6FEA82C(a1, a2, a3, &unk_1F51DEC90, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCBBC);

    case 0x1BuLL:

      sub_1D6FC7108(a1, a2, a3);

    case 0x1CuLL:
      v24 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x70);
      v28[5] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v28[6] = v24;
      v28[7] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x80);
      v29 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x90);
      v25 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v28[1] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v28[2] = v25;
      v26 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v28[3] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v28[4] = v26;
      v28[0] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);
      sub_1D62B60B4(v28, v27);
      sub_1D6FD5EE8(a1, a2, a3, &unk_1F51DECE0, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCCAC);
      return sub_1D62B6110(v28);
    case 0x1DuLL:

      sub_1D6FD56DC(a1, a2, a3, sub_1D6FC0A94);

    case 0x1EuLL:

      sub_1D6FEB124(a1, a2, a3, &unk_1F51DED08, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCDD0);

    case 0x1FuLL:

      sub_1D6FDC824(a1, a2, a3, &unk_1F51DED30, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCBD4);

    case 0x20uLL:

      sub_1D6FD4830(a1, a2, a3, &unk_1F51DED58, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCCC4);

    case 0x21uLL:

      sub_1D6FDC34C(a1, a2, a3, sub_1D6FC0A94);

    case 0x22uLL:

      sub_1D6FEB46C(a1, a2, a3, sub_1D6FC0A94);

    case 0x23uLL:
      v9 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = sub_1D6C1BE20(a2);
      swift_beginAccess();
      v32 = v9;
      v11 = *(v9 + 48);
      v12 = *(v11 + 16);

      if (!v12)
      {
        goto LABEL_9;
      }

      v14 = 0;
      v15 = 32;
      break;
    case 0x24uLL:

      sub_1D6FFA96C(a1, a2, &unk_1F51DED80, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCEC8);

    case 0x25uLL:

      sub_1D6FC8880(a1, a2, a3);

    case 0x26uLL:

      sub_1D6FCE6E8(a1, a2, a3, &unk_1F51DEDD0, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCCDC);

    case 0x27uLL:

      sub_1D6FD7140(a1, a2, a3, &unk_1F51DEDF8, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCCF4);

    case 0x28uLL:

      sub_1D6FDB38C(a1, a2, a3, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCEB0);

    default:

      v8 = MEMORY[0x1E69D6F68];
LABEL_29:
      sub_1D6FD8DB8(a1, a2, a3, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCDEC, v8);
  }

  while (1)
  {
    if (v14 >= *(v11 + 16))
    {
      __break(1u);
      return result;
    }

    v16 = *(v11 + v15);
    v17 = *(v11 + v15 + 32);
    v30[1] = *(v11 + v15 + 16);
    v30[2] = v17;
    v30[0] = v16;
    v18 = *(v11 + v15 + 48);
    v19 = *(v11 + v15 + 64);
    v20 = *(v11 + v15 + 80);
    v31 = *(v11 + v15 + 96);
    v30[4] = v19;
    v30[5] = v20;
    v30[3] = v18;
    sub_1D5C5C4CC(v30, v27);
    sub_1D6FC0A94(a1, v10, a3);
    if (v4)
    {
      break;
    }

    ++v14;
    result = sub_1D5C5C540(v30);
    v15 += 104;
    if (v12 == v14)
    {
LABEL_9:
    }
  }

  sub_1D5C5C540(v30);
}

uint64_t sub_1D6FE5308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v46 = a7;
  v43 = a5;
  v44 = a6;
  v42[2] = a4;
  v9 = v8;
  v10 = v7;
  v14 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v42 - v17;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v14);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = (v42 - v21);
  v53 = a1;
  swift_beginAccess();
  v23 = v10[2];
  v24 = v10[3];

  v25 = sub_1D6E8DD40(v23, v24);
  v27 = v26;

  v45 = a3;
  v28 = *(a3 + 24);
  v29 = v25;
  if (*(v28 + 16))
  {
    *v22 = a2;
    v30 = type metadata accessor for FormatSourceMapContext();
    swift_storeEnumTagMultiPayload();
    (*(*(v30 - 8) + 56))(v22, 0, 1, v30);
    swift_beginAccess();

    sub_1D6D60828(v22, v29, v27);
    swift_endAccess();
  }

  v42[1] = v29;
  if (v10[9])
  {
    v32 = v10[13];
    v31 = v10[14];
    v34 = v10[11];
    v33 = v10[12];
    v35 = v10[10];
    v47 = v10[9];
    v48 = v35;
    v49 = v34;
    v50 = v33;
    v51 = v32;
    v52 = v31;

    sub_1D5DEA234(v32);

    sub_1D68687FC(a2, v18);
    if (v9)
    {

      v36 = v51;

      sub_1D5CBF568(v36);
    }

    v39 = v51;
    v42[0] = v52;

    sub_1D5CBF568(v39);

    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v40 = sub_1D7259B8C();
  (*(*(v40 - 8) + 56))(v18, v38, 1, v40);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v41 = swift_allocObject();
  v41[2] = v10;
  v41[3] = a2;
  v41[4] = v45;
  v43(0);
  v44();

  sub_1D7259ACC();

  return sub_1D6FFCA9C(v18, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
}

uint64_t sub_1D6FE5778(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(void), void (*a8)(uint64_t *, uint64_t), uint64_t a9)
{
  v107 = a8;
  v106 = a7;
  v105 = a6;
  v104 = a5;
  v114 = a4;
  v10 = v9;
  v115 = a3;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v109 = v13;
  v108 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v103 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v111 = (&v97 - v18);
  v19 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v110 = &v97 - v22;
  v113 = sub_1D725A36C();
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v23);
  v25 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v19);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = (&v97 - v28);
  v125 = a1;
  swift_beginAccess();
  v30 = v10[2];
  v31 = v10[3];

  v116 = sub_1D6E8DD40(v30, v31);
  v33 = v32;

  v34 = v10[2];
  v35 = v10[3];

  sub_1D6B0A84C(v34, v35);

  swift_beginAccess();

  sub_1D6B0ACE8(v36, 0);

  v37 = sub_1D6B0B228(0, 0);

  v38 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory;
  v39 = (*(v37 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v40 = *v39;
  v41 = v39[1];
  v42 = v10[10];

  v43 = v42;
  v44 = v117;
  v45 = sub_1D6FBC05C(v43, v37, v40, v41);
  v117 = v44;
  if (v44)
  {
  }

  v99 = v38;
  v100 = v10;
  v101 = a2;
  v102 = v45;

  v98 = *(v115 + 24);
  v47 = v115;
  v48 = v116;
  if (*(v98 + 16))
  {
    *v29 = v37;
    v49 = type metadata accessor for FormatSourceMapContext();
    swift_storeEnumTagMultiPayload();
    (*(*(v49 - 8) + 56))(v29, 0, 1, v49);
    swift_beginAccess();

    sub_1D6D60828(v29, v48, v33);
    swift_endAccess();
  }

  v50 = (*(v112 + 104))(v25, *MEMORY[0x1E69D7378], v113);
  MEMORY[0x1EEE9AC00](v50, v51);
  v52 = v100;
  v91 = v100;
  v92 = v48;
  v93 = v33;
  v94 = v101;
  v95 = v37;
  v96 = v47;
  sub_1D6FF9128(0, &qword_1EDF3BF38, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v53 = v117;
  v54 = sub_1D725A4EC();
  if (v53)
  {
  }

  else
  {
    v55 = v54;
    v56 = (*(v37 + v99) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
    swift_beginAccess();
    v57 = *v56;
    v58 = v56[1];
    v59 = v52[15];

    v60 = sub_1D6FBAE48(v59, v37, v57, v58);
    v114 = v55;

    if (v60)
    {

      v61 = v60;
      v62 = sub_1D6A45640(v37);
      v63 = v111;
      v64 = v62;
      v113 = v61;

      if (v64)
      {
        swift_beginAccess();

        sub_1D6D60C08(v64, v116, v33);
        swift_endAccess();
      }
    }

    else
    {
      v113 = 0;
      v63 = v111;
    }

    if (v52[17])
    {
      v66 = v52[21];
      v65 = v52[22];
      v68 = v52[19];
      v67 = v52[20];
      v69 = v52[18];
      v118 = v52[17];
      v119 = v69;
      v120 = v68;
      v121 = v67;
      v122 = v66;
      v123 = v65;

      sub_1D5DEA234(v66);

      sub_1D68687FC(v37, v110);
      v70 = v122;

      sub_1D5CBF568(v70);

      v71 = 0;
      v63 = v111;
    }

    else
    {
      v71 = 1;
    }

    v72 = sub_1D7259B8C();
    (*(*(v72 - 8) + 56))(v110, v71, 1, v72);
    v73 = swift_allocObject();
    *(v73 + 16) = 0u;
    *(v73 + 32) = 0u;
    *(v73 + 48) = 0u;
    *(v73 + 64) = 0u;
    *(v73 + 80) = 0;
    KeyPath = swift_getKeyPath();
    swift_beginAccess();
    v124 = v52[4];
    v75 = v124;

    sub_1D5C82CD8(v75);
    sub_1D5BEB9F4(v37, v116, v33, v63);
    v111 = KeyPath;
    v112 = v73;
    sub_1D5C92A8C(v124);
    swift_beginAccess();
    v76 = v52[6];

    v77 = sub_1D618EFB4(v37, v76);
    v117 = 0;
    v78 = v37;
    v99 = v77;

    v79 = v63;
    v80 = swift_allocObject();
    v80[2] = v112;
    v80[3] = v52;
    v81 = v102;
    v80[4] = v78;
    v80[5] = v81;
    v82 = v105(0);
    v83 = v106();
    v106 = v78;

    v104 = v83;
    v95 = v83;
    v105 = v82;
    v93 = v80;
    v94 = v82;
    v84 = v117;
    sub_1D7259AFC();
    v117 = v84;
    v85 = v108;
    v86 = v109;
    v107 = *(v108 + 8);
    v98 = v108 + 8;
    v107(v79, v109);

    swift_beginAccess();
    if (!v52[16])
    {
      sub_1D6FFCA9C(v110, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    }

    v87 = v103;
    v88 = (*(v85 + 104))(v103, *MEMORY[0x1E69D7460], v86);
    v111 = &v97;
    MEMORY[0x1EEE9AC00](v88, v89);
    *(&v97 - 8) = v116;
    *(&v97 - 7) = v33;
    v96 = v102;

    v95 = v104;
    v93 = &v97 - 10;
    v94 = v105;
    v91 = MEMORY[0x1E69E7CC0];
    v92 = a9;
    v90 = v110;
    sub_1D725999C();

    v107(v87, v86);
    sub_1D6FFCA9C(v90, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }
}

uint64_t sub_1D6FE6728(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v81 = a7;
  v80 = a6;
  v79 = a5;
  v78 = a4;
  v8 = v7;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v83 = v12;
  v82 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v84 = (v74 - v14);
  v15 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v90 = v74 - v18;
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v15);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v87 = v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v88 = v74 - v24;
  v25 = type metadata accessor for FormatNodeStateData.Data();
  v85 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v86 = (v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v15);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = (v74 - v30);
  v96 = a1;
  swift_beginAccess();

  v89 = a2;
  v33 = sub_1D6B0ACE8(v32, 0);

  swift_beginAccess();
  v34 = v8[2];
  v35 = v8[3];

  v36 = sub_1D6E8DD40(v34, v35);
  v38 = v37;

  if (*(*(a3 + 24) + 16))
  {
    *v31 = v33;
    v39 = type metadata accessor for FormatSourceMapContext();
    swift_storeEnumTagMultiPayload();
    (*(*(v39 - 8) + 56))(v31, 0, 1, v39);
    swift_beginAccess();

    sub_1D6D60828(v31, v36, v38);
    swift_endAccess();
  }

  v91 = v36;
  v40 = v38;
  v41 = (*(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v42 = *v41;
  v43 = v41[1];
  v44 = v8[11];

  v45 = v44;
  v46 = v92;
  v47 = sub_1D6FBC400(v45, v33, v42, v43);
  if (v46)
  {
  }

  else
  {
    v48 = v47;

    v49 = v8[7];
    type metadata accessor for FormatWebEmbedDataConfig();
    swift_allocObject();

    v51 = sub_1D71BCFB0(v50, v49);
    v93[0] = v8[4];

    v52 = sub_1D6D26C38(v33, v51);
    v77 = v51;
    v92 = v48;
    v54 = v52;

    v55 = v86;
    *v86 = v54;
    swift_storeEnumTagMultiPayload();
    v56 = v88;
    sub_1D5BE4148(v55, v88, type metadata accessor for FormatNodeStateData.Data);
    (*(v85 + 56))(v56, 0, 1, v25);
    v76 = type metadata accessor for FormatNodeStateData.Data;
    v75 = MEMORY[0x1E69E6720];
    v57 = v87;
    sub_1D6FFC87C(v56, v87, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    swift_beginAccess();

    v85 = v54;

    v58 = v40;
    sub_1D6D60A18(v57, v91, v40);
    swift_endAccess();
    sub_1D6FFCA9C(v56, &qword_1EDF2C470, v76, v75, sub_1D5D27F7C);
    sub_1D6FFC9A0(v55, type metadata accessor for FormatNodeStateData.Data);
    sub_1D707E9E8(v8, v89, v93);
    v59 = LOBYTE(v93[0]);
    if (v8[20])
    {
      v61 = v8[24];
      v60 = v8[25];
      v63 = v8[22];
      v62 = v8[23];
      v64 = v8[21];
      v93[0] = v8[20];
      v93[1] = v64;
      v93[2] = v63;
      v93[3] = v62;
      v94 = v61;
      v95 = v60;

      sub_1D5DEA234(v61);

      sub_1D68687FC(v33, v90);
      LODWORD(v89) = v59;
      v65 = v94;

      sub_1D5CBF568(v65);
      v66 = v90;

      v67 = 0;
      v58 = v40;
    }

    else
    {
      LODWORD(v89) = LOBYTE(v93[0]);
      v66 = v90;
      v67 = 1;
    }

    v68 = sub_1D7259B8C();
    (*(*(v68 - 8) + 56))(v66, v67, 1, v68);
    swift_getKeyPath();
    v93[0] = v8[8];
    v69 = v93[0];

    sub_1D5C82CD8(v69);
    v70 = v91;
    sub_1D5BEB9F4(v33, v91, v58, v84);
    sub_1D5C92A8C(v93[0]);
    swift_beginAccess();
    v71 = v8[10];

    v90 = sub_1D618EFB4(v33, v71);

    v72 = swift_allocObject();
    v74[1] = v58;
    *(v72 + 16) = v70;
    *(v72 + 24) = v58;
    *(v72 + 32) = v33;
    *(v72 + 40) = v8;
    v73 = v85;
    *(v72 + 48) = v92;
    *(v72 + 56) = v73;
    *(v72 + 64) = v89;
    v79(0);
    v80();

    sub_1D7259B1C();

    (*(v82 + 8))(v84, v83);
    return sub_1D6FFCA9C(v66, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }
}

uint64_t sub_1D6FE7320(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *, uint64_t))
{
  v55 = a1;
  v56 = a4;
  v6 = v5;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (&v48 - v11);
  swift_beginAccess();
  v13 = v4[2];
  v14 = v4[3];
  v54 = v4;

  v15 = sub_1D6E8DD40(v13, v14);
  v17 = v16;

  if (*(*(a3 + 24) + 16))
  {
    *v12 = a2;
    v18 = type metadata accessor for FormatSourceMapContext();
    swift_storeEnumTagMultiPayload();
    (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
    swift_beginAccess();

    sub_1D6D60828(v12, v15, v17);
    swift_endAccess();
  }

  v19 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 40);
  if (!*(v19 + 16))
  {

    goto LABEL_8;
  }

  v20 = sub_1D5B69D90(v15, v17);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_8:
    v26 = 0;
    v25 = 1;
    goto LABEL_9;
  }

  v24 = (*(v19 + 56) + 16 * v20);
  v25 = v24[1];
  if (!v25)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v26 = *v24;
LABEL_9:
  result = swift_beginAccess();
  v27 = v26 >= 0;
  if (v25 > 0)
  {
    v27 = v26 < 1;
  }

  if (!v27)
  {
    v28 = 0;
    v50 = v26;
    v51 = a2;
    v48 = a3;
    v49 = v25;
    while (1)
    {
      v30 = v28 + v25;
      if (__OFADD__(v28, v25))
      {
        v30 = ((v28 + v25) >> 63) ^ 0x8000000000000000;
      }

      v52 = v30;
      v31 = v54;
      v32 = sub_1D713ED14(v26, v25, v28);
      v53 = sub_1D714025C(v26, v25, v28);
      v33 = v31[3];
      v57 = v31[2];
      v58 = v33;

      MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
      v61 = v28;
      v34 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v34);

      sub_1D6B0A84C(v57, v58);

      v57 = v28;
      v35 = sub_1D72644BC();
      sub_1D6B0B228(v35, v36);

      sub_1D6B0C068(v32);

      v37 = sub_1D6B0ACE8(v53, 0);

      v38 = v31[11];
      v39 = *(v38 + 16);

      if (v39)
      {
        break;
      }

LABEL_13:

      v25 = v49;
      v26 = v50;
      v28 = v52;
      v29 = v50 >= v52;
      if (v49 > 0)
      {
        v29 = v52 >= v50;
      }

      if (v29)
      {
        return result;
      }
    }

    v40 = 0;
    v41 = 32;
    v42 = v48;
    while (v40 < *(v38 + 16))
    {
      v43 = *(v38 + v41);
      v44 = *(v38 + v41 + 32);
      v59[1] = *(v38 + v41 + 16);
      v59[2] = v44;
      v59[0] = v43;
      v45 = *(v38 + v41 + 48);
      v46 = *(v38 + v41 + 64);
      v47 = *(v38 + v41 + 80);
      v60 = *(v38 + v41 + 96);
      v59[4] = v46;
      v59[5] = v47;
      v59[3] = v45;
      sub_1D5C5C4CC(v59, &v57);
      v56(v55, v37, v42);
      if (v6)
      {

        return sub_1D5C5C540(v59);
      }

      ++v40;
      result = sub_1D5C5C540(v59);
      v41 += 104;
      if (v39 == v40)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  return result;
}

unint64_t sub_1D6FE77CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v129 = a7;
  v130 = a8;
  v127 = a5;
  v128 = a6;
  v135 = a4;
  v142 = a3;
  v9 = v8;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v13 = v12;
  v131 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = (&v119 - v15);
  v17 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v119 - v20;
  v22 = sub_1D725A36C();
  v132 = *(v22 - 8);
  v133 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v134 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v17);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v139 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v140 = &v119 - v30;
  v31 = type metadata accessor for FormatNodeStateData.Data();
  v136 = *(v31 - 8);
  v137 = v31;
  MEMORY[0x1EEE9AC00](v31, v32);
  v138 = (&v119 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v17);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = (&v119 - v36);
  v158 = a1;
  swift_beginAccess();
  v143 = v9;
  v38 = *(v9 + 16);
  v39 = *(v9 + 24);

  v40 = sub_1D6E8DD40(v38, v39);
  v42 = v41;

  v159 = a2;
  v43 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48);
  if (!*(v43 + 16) || (v44 = sub_1D5B69D90(v40, v42), (v45 & 1) == 0))
  {
    type metadata accessor for FormatLayoutError();
    sub_1D6FFA0A0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v66 = v40;
    v66[1] = v42;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v125 = v40;
  v126 = v42;
  v120 = v16;
  v121 = v21;
  v119 = v13;
  v46 = *(v43 + 56) + 88 * v44;
  v47 = *(v46 + 16);
  v152 = *v46;
  v153 = v47;
  v49 = *(v46 + 48);
  v48 = *(v46 + 64);
  v50 = *(v46 + 32);
  v157 = *(v46 + 80);
  v155 = v49;
  v156 = v48;
  v154 = v50;
  v148 = *(v46 + 32);
  v149 = *(v46 + 48);
  v150 = *(v46 + 64);
  v151 = *(v46 + 80);
  v146 = *v46;
  v147 = *(v46 + 16);
  sub_1D6B15D58(&v152, &v145);
  sub_1D6B13814(&v146);
  swift_beginAccess();

  v52 = sub_1D6B0ACE8(v51, 0);

  v122 = *(v142 + 24);
  if (*(v122 + 16))
  {
    *v37 = v52;
    v53 = type metadata accessor for FormatSourceMapContext();
    swift_storeEnumTagMultiPayload();
    (*(*(v53 - 8) + 56))(v37, 0, 1, v53);
    swift_beginAccess();

    v54 = v126;

    sub_1D6D60828(v37, v125, v54);
    swift_endAccess();
  }

  v55 = *(&v152 + 1);
  v123 = v152;
  v124 = v52;
  v56 = v153;
  v57 = v155;
  v58 = v156;
  v59 = v157;
  v146 = v154;
  v147 = v155;
  v148 = v156;
  LOBYTE(v149) = v157;

  sub_1D618ECBC(v57, *(&v57 + 1), v58, *(&v58 + 1), v59);
  v60 = v141;
  v61 = sub_1D6C15B90(v159, v56, *(&v56 + 1), v123, v55);
  if (v60)
  {

    v62 = v147;
    v63 = v148;
    v64 = v149;

    sub_1D5E32940(v62, *(&v62 + 1), v63, *(&v63 + 1), v64);
    return sub_1D6FF99CC(&v152);
  }

  v67 = v61;
  v68 = v147;
  v70 = *(&v148 + 1);
  v69 = v148;
  v71 = v149;

  sub_1D5E32940(v68, *(&v68 + 1), v69, v70, v71);
  v72 = v137;
  v73 = v138;
  *v138 = v67;
  swift_storeEnumTagMultiPayload();
  v74 = v140;
  sub_1D5BE4148(v73, v140, type metadata accessor for FormatNodeStateData.Data);
  (*(v136 + 56))(v74, 0, 1, v72);
  v75 = MEMORY[0x1E69E6720];
  v76 = v139;
  sub_1D6FFC87C(v74, v139, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
  swift_beginAccess();
  swift_retain_n();
  v159 = v67;
  v77 = v126;

  sub_1D6D60A18(v76, v125, v77);
  swift_endAccess();
  sub_1D6FFCA9C(v74, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v75, sub_1D5D27F7C);
  sub_1D6FFC9A0(v73, type metadata accessor for FormatNodeStateData.Data);
  type metadata accessor for FormatStateViewNodeStateMapper();
  v78 = swift_allocObject();
  *(v78 + 16) = MEMORY[0x1E69E7CC8];
  v79 = v124;
  v80 = (*(v124 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v81 = *v80;
  v82 = v80[1];
  v83 = v143;
  v84 = *(v143 + 104);

  v85 = sub_1D6FBAE48(v84, v79, v81, v82);
  v141 = v78;

  if (v85)
  {

    v86 = v79;
    v87 = sub_1D6A45640(v79);
    v88 = v141;
    v89 = v126;
    v90 = v87;

    v140 = v85;
    if (v90)
    {
      swift_beginAccess();

      sub_1D6D60C08(v90, v125, v89);
      swift_endAccess();
    }
  }

  else
  {
    v140 = 0;
    v88 = v141;
    v86 = v79;
    v89 = v126;
  }

  v91 = (*(v132 + 104))(v134, *MEMORY[0x1E69D7378], v133);
  MEMORY[0x1EEE9AC00](v91, v92);
  *(&v119 - 6) = v125;
  *(&v119 - 5) = v89;
  v115 = v86;
  v116 = v83;
  v117 = v142;
  v118 = v88;
  sub_1D6FF9128(0, &qword_1EDF3BF38, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v93 = sub_1D725A4EC();
  v94 = v89;
  v142 = 0;
  v139 = v93;
  v95 = v83[15];
  if (v95)
  {
    v97 = v83[19];
    v96 = v83[20];
    v99 = v83[17];
    v98 = v83[18];
    v100 = v83[16];
    *&v146 = v95;
    *(&v146 + 1) = v100;
    *&v147 = v99;
    *(&v147 + 1) = v98;
    *&v148 = v97;
    *(&v148 + 1) = v96;

    v101 = v124;

    sub_1D5DEA234(v97);

    v102 = v142;
    sub_1D68687FC(v101, v121);
    v142 = v102;
    if (v102)
    {

      sub_1D6FF99CC(&v152);

      v103 = v148;

      sub_1D5CBF568(v103);
    }

    v105 = v148;

    v86 = v124;
    sub_1D5CBF568(v105);
    v94 = v126;
    v83 = v143;

    v104 = 0;
  }

  else
  {
    v104 = 1;
  }

  v106 = sub_1D7259B8C();
  v107 = v121;
  (*(*(v106 - 8) + 56))(v121, v104, 1, v106);
  swift_getKeyPath();
  swift_beginAccess();
  v144 = v83[4];
  v108 = v144;

  sub_1D5C82CD8(v108);
  v109 = v142;
  sub_1D5BEB9F4(v86, v125, v94, v120);
  if (v109)
  {
    sub_1D6FFCA9C(v107, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    sub_1D6FF99CC(&v152);

    swift_bridgeObjectRelease_n();

    return sub_1D5C92A8C(v144);
  }

  else
  {

    sub_1D5C92A8C(v144);
    swift_beginAccess();
    v110 = v83[6];

    v143 = sub_1D618EFB4(v86, v110);

    v111 = swift_allocObject();
    v142 = 0;
    v112 = v111;
    *(v111 + 2) = v141;
    *(v111 + 3) = v83;
    *(v111 + 4) = v86;
    v113 = v128(0);
    v114 = v129();

    v116 = v113;
    v117 = v114;
    v115 = v112;
    sub_1D72599AC();
    sub_1D6FF99CC(&v152);

    (*(v131 + 8))(v120, v119);
    return sub_1D6FFCA9C(v121, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }
}

uint64_t sub_1D6FE87E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v95 = a6;
  v96 = a7;
  v93 = a4;
  v94 = a5;
  v8 = v7;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v97 = *(v11 - 8);
  v98 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v99 = (&v89 - v13);
  v14 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v106 = &v89 - v17;
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v14);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v104 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v105 = &v89 - v23;
  v24 = type metadata accessor for FormatNodeStateData.Data();
  v101 = *(v24 - 1);
  v102 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v103 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for FormatMicaData();
  MEMORY[0x1EEE9AC00](v100, v27);
  v108 = (&v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27F7C(0, &qword_1EDF3B668, MEMORY[0x1E69D78C0], v14);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v109 = &v89 - v31;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v14);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v35 = (&v89 - v34);
  v123[10] = a1;
  swift_beginAccess();

  v37 = sub_1D6B0ACE8(v36, 0);

  swift_beginAccess();
  v38 = *(v7 + 16);
  v39 = *(v7 + 24);

  v40 = sub_1D6E8DD40(v38, v39);
  v42 = v41;

  if (*(*(a3 + 24) + 16))
  {
    *v35 = v37;
    v43 = type metadata accessor for FormatSourceMapContext();
    swift_storeEnumTagMultiPayload();
    (*(*(v43 - 8) + 56))(v35, 0, 1, v43);
    swift_beginAccess();

    sub_1D6D60828(v35, v40, v42);
    swift_endAccess();
  }

  v107 = v40;
  v44 = (*(v37 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v45 = *v44;
  v46 = v44[1];
  v47 = *(v8 + 56);

  v48 = v47;
  v49 = v126;
  v50 = sub_1D6FBD4C0(v48, v37, v45, v46);
  if (v49)
  {
  }

  else
  {
    v126 = v50;

    sub_1D6E3ADA8(v37, *(v8 + 64), v123);
    v52 = v123[0];
    v53 = *(v8 + 152);
    v54 = *(v8 + 184);
    v113[6] = *(v8 + 168);
    v114[0] = v54;
    *(v114 + 9) = *(v8 + 193);
    v55 = *(v8 + 88);
    v56 = *(v8 + 120);
    v113[2] = *(v8 + 104);
    v113[3] = v56;
    v113[4] = *(v8 + 136);
    v113[5] = v53;
    v113[0] = *(v8 + 72);
    v113[1] = v55;
    v57 = *(v8 + 168);
    v120 = *(v8 + 152);
    v121 = v57;
    v122[0] = *(v8 + 184);
    *(v122 + 9) = *(v8 + 193);
    v58 = *(v8 + 88);
    v59 = *(v8 + 120);
    v117 = *(v8 + 104);
    v118 = v59;
    v119 = *(v8 + 136);
    v115 = *(v8 + 72);
    v116 = v58;
    if (sub_1D60486AC(&v115) == 1)
    {
      v91 = v52;
      v92 = v42;
      v60 = 1;
    }

    else
    {
      v124[5] = v120;
      v124[6] = v121;
      v125[0] = v122[0];
      *(v125 + 9) = *(v122 + 9);
      v124[2] = v117;
      v124[3] = v118;
      v124[4] = v119;
      v124[0] = v115;
      v124[1] = v116;

      sub_1D6FF924C(v113, v110, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
      sub_1D6E3A4F0(v124, v37);
      v91 = v52;
      v92 = v42;
      v60 = 0;
    }

    v61 = sub_1D725D4AC();
    v62 = v109;
    (*(*(v61 - 8) + 56))(v109, v60, 1, v61);
    v63 = v100;
    v64 = *(v100 + 20);
    v65 = MEMORY[0x1E69E6720];
    v89 = MEMORY[0x1E69E6720];
    v90 = sub_1D5D27F7C;
    v66 = v108;
    sub_1D6FFC87C(v62, v108 + v64, &qword_1EDF3B668, MEMORY[0x1E69D78C0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    swift_beginAccess();
    v67 = *(v8 + 212);
    v68 = *(v8 + 216);
    *v66 = v91;
    v69 = v66 + *(v63 + 24);
    *v69 = v67;
    v69[4] = v68;
    v70 = v103;
    sub_1D5BE4148(v66, v103, type metadata accessor for FormatMicaData);
    v71 = v102;
    swift_storeEnumTagMultiPayload();
    v72 = v105;
    sub_1D5BE4148(v70, v105, type metadata accessor for FormatNodeStateData.Data);
    (*(v101 + 56))(v72, 0, 1, v71);
    v102 = type metadata accessor for FormatNodeStateData.Data;
    v73 = v104;
    sub_1D6FFC87C(v72, v104, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v65, v90);
    swift_beginAccess();
    v74 = v92;

    v75 = v73;
    v76 = v74;
    sub_1D6D60A18(v75, v107, v74);
    swift_endAccess();
    sub_1D6FFCA9C(v72, &qword_1EDF2C470, v102, v89, sub_1D5D27F7C);
    sub_1D6FFC9A0(v70, type metadata accessor for FormatNodeStateData.Data);
    if (*(v8 + 272))
    {
      v78 = *(v8 + 304);
      v77 = *(v8 + 312);
      v80 = *(v8 + 288);
      v79 = *(v8 + 296);
      v81 = *(v8 + 280);
      v110[0] = *(v8 + 272);
      v110[1] = v81;
      v110[2] = v80;
      v110[3] = v79;
      v111 = v78;
      v112 = v77;

      sub_1D5DEA234(v78);

      sub_1D68687FC(v37, v106);
      v82 = v111;
      v105 = v112;

      sub_1D5CBF568(v82);

      v83 = 0;
    }

    else
    {
      v83 = 1;
    }

    v84 = sub_1D7259B8C();
    (*(*(v84 - 8) + 56))(v106, v83, 1, v84);
    swift_getKeyPath();
    v110[0] = *(v8 + 32);
    v85 = v110[0];

    sub_1D5C82CD8(v85);
    sub_1D5BEB9F4(v37, v107, v76, v99);
    sub_1D5C92A8C(v110[0]);
    swift_beginAccess();
    v86 = *(v8 + 48);

    v105 = sub_1D618EFB4(v37, v86);

    v87 = swift_allocObject();
    v92 = v76;
    v87[2] = v107;
    v87[3] = v76;
    v87[4] = v37;
    v87[5] = v8;
    v87[6] = v126;
    v94(0);
    v95();

    sub_1D7259B1C();

    (*(v97 + 8))(v99, v98);
    v88 = MEMORY[0x1E69E6720];
    sub_1D6FFCA9C(v106, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    sub_1D6FFC9A0(v108, type metadata accessor for FormatMicaData);
    return sub_1D6FFCA9C(v109, &qword_1EDF3B668, MEMORY[0x1E69D78C0], v88, sub_1D5D27F7C);
  }
}

uint64_t sub_1D6FE9634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v134 = a8;
  v121 = a7;
  v119 = a6;
  v118 = a5;
  v117 = a4;
  v11 = v10;
  v12 = v9;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v123 = v16;
  v122 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v124 = &v108[-v18];
  v19 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v130 = &v108[-v22];
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v19);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v108[-v25];
  v144 = a1;
  swift_beginAccess();

  v133 = a2;
  v28 = sub_1D6B0ACE8(v27, 0);

  swift_beginAccess();
  v29 = v12[2];
  v30 = v12[3];

  v31 = sub_1D6E8DD40(v29, v30);
  v33 = v32;

  v120 = a3;
  v34 = *(a3 + 24);
  if (*(v34 + 16))
  {
    *v26 = v28;
    v35 = type metadata accessor for FormatSourceMapContext();
    swift_storeEnumTagMultiPayload();
    (*(*(v35 - 8) + 56))(v26, 0, 1, v35);
    swift_beginAccess();

    sub_1D6D60828(v26, v31, v33);
    swift_endAccess();
  }

  v127 = v31;
  v36 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory;
  v37 = (*(v28 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v38 = *v37;
  v39 = v37[1];
  v40 = v12[5];

  v41 = v40;
  v42 = v11;
  v43 = sub_1D6FBD864(v41, v28, v38, v39);
  v44 = v12;
  v45 = v42;
  if (v42)
  {
  }

  v114 = v34;
  v116 = v43;

  v143 = v44[4];

  v46 = v133;
  FormatLayeredMediaNodeContent.layeredMedia(from:)(v133, &v137);
  v112 = v44;

  v113 = v137;
  v115 = v138;
  v48 = v139;
  if (v116)
  {
    v49 = *(v116 + 208);
    v50 = v130;
    if (v49 == 255)
    {
      v53 = 2;
    }

    else
    {
      v51 = *(v116 + 200);
      v137 = *(v116 + 192);
      v138 = v51;
      LOBYTE(v139) = v49 & 1;
      sub_1D5E04CC4(v137);
      sub_1D725A7EC();
      v52 = FormatBoolean.value(contextLayoutOptions:)(v143);
      sub_1D5D2F2C4(v137, v138, v139);

      v53 = v52 & 1;
    }

    v109 = v53;
  }

  else
  {
    v109 = 2;
    v50 = v130;
  }

  v110 = v36;
  v54 = *(v28 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier + 8);
  v55 = v127;
  if (v54)
  {
    v56 = *(v28 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
    v137 = v127;
    v138 = v33;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v56, v54);
    v55 = v137;
    v57 = v138;
  }

  else
  {

    v57 = v33;
  }

  type metadata accessor for LayeredMediaLoader();
  v58 = swift_allocObject();
  v59 = type metadata accessor for LayeredMediaParser();
  v60 = swift_allocObject();
  v60[2] = v55;
  v60[3] = v57;
  v61 = v115;
  v60[4] = v113;
  v60[5] = v61;
  v58[5] = v59;
  v58[6] = &protocol witness table for LayeredMediaParser;
  v111 = v58;
  v58[2] = v60;
  if (v116 && (v62 = *(v116 + 240)) != 0)
  {
  }

  else
  {

    v62 = MEMORY[0x1E69E7CC0];
  }

  v63 = *(v62 + 16);
  v131 = v33;
  if (v63)
  {
    KeyPath = 0;
    v125 = a9;
    v137 = MEMORY[0x1E69E7CC0];
    result = sub_1D6997A60(0, v63, 0);
    v64 = 0;
    v65 = v137;
    v128 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions;
    v66 = (v62 + 48);
    v132 = v28;
    v129 = v62;
    v126 = v63;
    while (v64 < *(v62 + 16))
    {
      v135 = v65;
      v67 = *(v66 - 2);
      v68 = *(v66 - 1);
      v69 = *v66;
      sub_1D5CFCFAC(v67);
      sub_1D5D04BD4(v68);
      sub_1D5D04BD4(v69);
      v70 = sub_1D725A7EC();
      v71 = v143;
      v72 = 0;
      if ((v69 & 0xF000000000000007) == 0xF000000000000007)
      {
        v73 = 0;
      }

      else
      {
        v143 = v69;

        v74 = KeyPath;
        FormatFloat.value(contextLayoutOptions:)(v71);
        KeyPath = v74;
        if (v74)
        {
          goto LABEL_38;
        }

        v73 = v75;
      }

      if ((v68 & 0xF000000000000007) != 0xF000000000000007)
      {
        v143 = v68;

        v76 = KeyPath;
        FormatFloat.value(contextLayoutOptions:)(v71);
        KeyPath = v76;
        if (v76)
        {
LABEL_38:

          sub_1D5C84FF4(v67);
          sub_1D5C8500C(v68);
          sub_1D5C8500C(v69);
        }

        v72 = v77;
      }

      if ((~v67 & 0xF000000000000007) != 0)
      {
        v143 = v67;
        v78 = FormatColor.color.getter(v70);

        sub_1D5C84FF4(v67);
        sub_1D5C8500C(v68);
        sub_1D5C8500C(v69);
      }

      else
      {

        sub_1D5C84FF4(v67);
        sub_1D5C8500C(v68);
        sub_1D5C8500C(v69);
        v78 = 0;
      }

      result = swift_allocObject();
      *(result + 16) = v73;
      *(result + 24) = (v69 & 0xF000000000000007) == 0xF000000000000007;
      *(result + 32) = v72;
      *(result + 40) = (v68 & 0xF000000000000007) == 0xF000000000000007;
      *(result + 48) = v78;
      v65 = v135;
      v137 = v135;
      v80 = *(v135 + 16);
      v79 = *(v135 + 24);
      v33 = v131;
      v28 = v132;
      if (v80 >= v79 >> 1)
      {
        v82 = result;
        sub_1D6997A60((v79 > 1), v80 + 1, 1);
        result = v82;
        v65 = v137;
      }

      ++v64;
      *(v65 + 16) = v80 + 1;
      v81 = v65 + 16 * v80;
      *(v81 + 32) = v125;
      *(v81 + 40) = result;
      v66 += 3;
      v62 = v129;
      if (v126 == v64)
      {

        v45 = KeyPath;
        v50 = v130;
        v46 = v133;
        goto LABEL_39;
      }
    }

    __break(1u);
  }

  else
  {

    v65 = MEMORY[0x1E69E7CC0];
LABEL_39:
    v83 = (*(v28 + v110) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
    swift_beginAccess();
    v84 = *v83;
    v85 = v83[1];
    v86 = v112[6];

    v87 = sub_1D6FBAE48(v86, v28, v84, v85);
    v88 = v28;
    if (v45)
    {
    }

    v89 = v87;
    v132 = v88;

    if (v89)
    {

      v90 = sub_1D6A45640(v132);

      if (v90)
      {
        swift_beginAccess();

        sub_1D6D60C08(v90, v127, v33);
        swift_endAccess();
      }
    }

    v135 = v65;
    if (v112[16])
    {
      v92 = v112[20];
      v91 = v112[21];
      v94 = v112[18];
      v93 = v112[19];
      v95 = v112[17];
      v137 = v112[16];
      v138 = v95;
      v139 = v94;
      v140 = v93;
      v141 = v92;
      v142 = v91;

      sub_1D5DEA234(v92);

      sub_1D68687FC(v132, v50);
      v96 = v141;

      sub_1D5CBF568(v96);

      v97 = 0;
      v33 = v131;
    }

    else
    {
      v97 = 1;
    }

    v98 = sub_1D7259B8C();
    (*(*(v98 - 8) + 56))(v50, v97, 1, v98);
    v99 = v46 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext;
    v100 = *(*(*(v99 + *(type metadata accessor for GroupLayoutContext() + 40)) + 24) + 48);
    KeyPath = swift_getKeyPath();
    v101 = v112;
    v137 = v112[7];
    v102 = v137;

    sub_1D5C82CD8(v102);
    v103 = v132;
    sub_1D5BEB9F4(v132, v127, v33, v124);
    sub_1D5C92A8C(v137);
    swift_beginAccess();
    v104 = v101[9];

    v134 = sub_1D618EFB4(v103, v104);

    v105 = swift_allocObject();
    *(v105 + 16) = v103;
    *(v105 + 24) = v100;
    *(v105 + 32) = v111;
    *(v105 + 40) = v109;
    v106 = v113;
    *(v105 + 48) = v135;
    *(v105 + 56) = v106;
    *(v105 + 64) = v115;
    *(v105 + 72) = v48;
    v107 = v127;
    *(v105 + 80) = v120;
    *(v105 + 88) = v107;
    *(v105 + 96) = v33;
    *(v105 + 104) = v101;
    *(v105 + 112) = v116;
    v135 = v118(0);
    v119();

    sub_1D7259B1C();

    (*(v122 + 8))(v124, v123);
    return sub_1D6FFCA9C(v130, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }

  return result;
}

uint64_t sub_1D6FEA82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v83 = a7;
  v81 = a6;
  v80 = a5;
  v84 = a4;
  v85 = a3;
  v8 = v7;
  v11 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  v79 = *(v12 - 8);
  v13 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v70 - v17;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v11);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = (&v70 - v21);
  v93 = a1;
  swift_beginAccess();

  v82 = a2;
  v24 = sub_1D6B0ACE8(v23, 0);

  v25 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory;
  v26 = (*(v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v27 = *v26;
  v28 = v26[1];
  v29 = v8[7];

  v30 = v29;
  v31 = v86;
  v32 = sub_1D6FBDC08(v30, v24, v27, v28);
  v86 = v31;
  if (v31)
  {
  }

  else
  {
    v77 = v25;
    v75 = v13;
    v76 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v78 = v32;
    v74 = v18;

    swift_beginAccess();
    v34 = v8[2];
    v35 = v8[3];

    v36 = sub_1D6E8DD40(v34, v35);
    v38 = v37;

    if (*(*(v85 + 24) + 16))
    {
      *v22 = v24;
      v39 = type metadata accessor for FormatSourceMapContext();
      swift_storeEnumTagMultiPayload();
      (*(*(v39 - 8) + 56))(v22, 0, 1, v39);
      swift_beginAccess();

      sub_1D6D60828(v22, v36, v38);
      swift_endAccess();
    }

    v73 = v36;
    v40 = (*(v24 + v77) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
    swift_beginAccess();
    v41 = *v40;
    v42 = v40[1];
    v43 = v8[8];

    v44 = v43;
    v45 = v86;
    v46 = sub_1D6FBAE48(v44, v24, v41, v42);
    if (v45)
    {
    }

    else
    {
      v47 = v46;
      v72 = v38;

      if (v47)
      {

        v48 = sub_1D6A45640(v24);
        v49 = v24;
        v50 = v76;
        v51 = v75;
        v86 = v49;
        v77 = v47;

        if (v48)
        {
          swift_beginAccess();

          v52 = v72;

          sub_1D6D60C08(v48, v73, v52);
          swift_endAccess();
        }
      }

      else
      {
        v77 = 0;
        v86 = v24;
        v50 = v76;
        v51 = v75;
      }

      if (v8[29])
      {
        v53 = v8[33];
        v54 = v8[34];
        v56 = v8[31];
        v55 = v8[32];
        v57 = v8[30];
        v87 = v8[29];
        v88 = v57;
        v89 = v56;
        v90 = v55;
        v91 = v53;
        v92 = v54;

        sub_1D5DEA234(v53);

        sub_1D68687FC(v86, v74);
        v58 = v91;

        sub_1D5CBF568(v58);

        v59 = 0;
        v51 = v75;
      }

      else
      {
        v59 = 1;
      }

      v60 = sub_1D7259B8C();
      v61 = v74;
      (*(*(v60 - 8) + 56))(v74, v59, 1, v60);
      v75 = MEMORY[0x1E69D6FA0];
      v71 = MEMORY[0x1E69E6720];
      sub_1D6FFC87C(v61, v50, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
      swift_unownedRetainStrong();
      v62 = v72;

      swift_unownedRetain();

      v63 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      v79 = (v51 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
      v64 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
      v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
      v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
      v67 = swift_allocObject();
      *(v67 + 16) = v73;
      *(v67 + 24) = v62;
      sub_1D6FFC410(v76, v67 + v63, &qword_1EDF3C120, v75);
      *(v67 + v79) = v8;
      v68 = v85;
      *(v67 + v64) = v86;
      *(v67 + v65) = v82;
      *(v67 + v66) = v68;
      *(v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8)) = v78;
      v80(0);
      v81();

      v69 = v74;
      sub_1D7259ACC();

      return sub_1D6FFCA9C(v69, &qword_1EDF3C120, v75, v71, sub_1D5D27F7C);
    }
  }
}

uint64_t sub_1D6FEB124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v38 = a5;
  v39 = a6;
  v37 = a4;
  v10 = v8;
  v11 = v7;
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v33 - v17;
  v46 = a1;
  swift_beginAccess();
  v19 = v11[2];
  v20 = v11[3];

  v36 = sub_1D6E8DD40(v19, v20);

  v21 = v11[8];
  if (v21)
  {
    v34 = a3;
    v35 = a7;
    v23 = v11[12];
    v22 = v11[13];
    v25 = v11[10];
    v24 = v11[11];
    v26 = v11[9];
    v40 = v21;
    v41 = v26;
    v42 = v25;
    v43 = v24;
    v44 = v23;
    v45 = v22;

    sub_1D5DEA234(v23);

    sub_1D68687FC(a2, v18);
    if (v10)
    {

      v27 = v44;

      sub_1D5CBF568(v27);
    }

    v30 = v44;
    v33 = v45;

    sub_1D5CBF568(v30);

    v29 = 0;
    a3 = v34;
  }

  else
  {
    v29 = 1;
  }

  v31 = sub_1D7259B8C();
  (*(*(v31 - 8) + 56))(v18, v29, 1, v31);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v32 = swift_allocObject();
  v32[2] = v11;
  v32[3] = a2;
  v32[4] = a3;
  v38(0);
  v39();

  sub_1D7259ACC();

  return sub_1D6FFCA9C(v18, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
}

uint64_t sub_1D6FEB46C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v52 = a3;
  v53 = a4;
  v51 = a1;
  v50 = type metadata accessor for FormatOption();
  v7 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v8);
  v58 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 8))
  {
    v49 = v5;
    v10 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 24);
    swift_beginAccess();
    v48 = v4;
    v11 = *(v4 + 48);
    v12 = *(v11 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v46 = v10;
      v55[0] = MEMORY[0x1E69E7CC0];

      sub_1D5D24610(0, v12, 0);
      v13 = v55[0];
      v14 = *(v7 + 80);
      v45[1] = v11;
      v15 = v11 + ((v14 + 32) & ~v14);
      v47 = v7;
      v54 = *(v7 + 72);
      do
      {
        v16 = v58;
        sub_1D5BE4148(v15, v58, type metadata accessor for FormatOption);
        v17 = swift_allocBox();
        sub_1D5BDAB74(v16, v18, type metadata accessor for FormatOption);
        v55[0] = v13;
        v20 = *(v13 + 16);
        v19 = *(v13 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1D5D24610((v19 > 1), v20 + 1, 1);
          v13 = v55[0];
        }

        *(v13 + 16) = v20 + 1;
        *(v13 + 8 * v20 + 32) = v17 | 0x7000000000000004;
        v15 += v54;
        --v12;
      }

      while (v12);

      v10 = v46;
      v7 = v47;
    }

    v21 = *(v10 + 16);
    v22 = MEMORY[0x1E69E7CC0];
    if (v21)
    {
      v47 = a2;
      v55[0] = MEMORY[0x1E69E7CC0];
      sub_1D5D24610(0, v21, 0);
      v22 = v55[0];
      v23 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v54 = *(v7 + 72);
      do
      {
        v24 = v58;
        sub_1D5BE4148(v23, v58, type metadata accessor for FormatOption);
        v25 = swift_allocBox();
        sub_1D5BDAB74(v24, v26, type metadata accessor for FormatOption);
        v55[0] = v22;
        v28 = *(v22 + 16);
        v27 = *(v22 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1D5D24610((v27 > 1), v28 + 1, 1);
          v22 = v55[0];
        }

        *(v22 + 16) = v28 + 1;
        *(v22 + 8 * v28 + 32) = v25 | 0x2000000000000000;
        v23 += v54;
        --v21;
      }

      while (v21);
    }

    v55[0] = v13;
    sub_1D6985C44(v22);
    sub_1D6B0C068(v55[0]);

    v29 = v48;
    swift_beginAccess();

    sub_1D6B0ACE8(v30, 0);

    swift_beginAccess();
    v31 = v29[2];
    v32 = v29[3];

    v33 = sub_1D6B0A84C(v31, v32);

    swift_beginAccess();
    v34 = v29[4];
    v35 = *(v34 + 16);

    if (v35)
    {
      v37 = 0;
      v38 = 32;
      v39 = v49;
      while (v37 < *(v34 + 16))
      {
        v40 = *(v34 + v38);
        v41 = *(v34 + v38 + 32);
        v56[1] = *(v34 + v38 + 16);
        v56[2] = v41;
        v56[0] = v40;
        v42 = *(v34 + v38 + 48);
        v43 = *(v34 + v38 + 64);
        v44 = *(v34 + v38 + 80);
        v57 = *(v34 + v38 + 96);
        v56[4] = v43;
        v56[5] = v44;
        v56[3] = v42;
        sub_1D5C5C4CC(v56, v55);
        v53(v51, v33, v52);
        if (v39)
        {

          return sub_1D5C5C540(v56);
        }

        ++v37;
        result = sub_1D5C5C540(v56);
        v38 += 104;
        if (v35 == v37)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_21:
    }
  }

  else
  {
    result = swift_beginAccess();
    if (*(v4 + 56))
    {
      type metadata accessor for FormatLayoutError();
      sub_1D6FFA0A0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1D6FEB9C0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  switch(*(v2 + 32))
  {
    case 1:
      *&v58[0] = result;
      v35 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v36 = v35();
      v37 = sub_1D5E02AFC(v36, v4);

      if (!v3)
      {
        v38 = swift_allocObject();
        *(v38 + 16) = v37;
        sub_1D5F3FE24();
        result = swift_allocObject();
        *(result + 16) = xmmword_1D7273AE0;
        *(result + 32) = v38;
        *(result + 40) = 0;
        *a2 = result;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 1;
      }

      break;
    case 2:
      *&v58[0] = result;
      v22 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v23 = v22();
      v24 = sub_1D5E02AFC(v23, v4);

      if (!v3)
      {
        v25 = swift_allocObject();
        *(v25 + 16) = v24;
        sub_1D5F3FE24();
        result = swift_allocObject();
        *(result + 16) = xmmword_1D7273AE0;
        *(result + 32) = v25;
        *(result + 40) = 0;
        *a2 = result;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 2;
      }

      break;
    case 3:
      *&v58[0] = result;
      v26 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v27 = v26();
      v28 = sub_1D5E02AFC(v27, v4);

      if (!v3)
      {
        v29 = swift_allocObject();
        *(v29 + 16) = v28;
        sub_1D5F3FE24();
        result = swift_allocObject();
        *(result + 16) = xmmword_1D7273AE0;
        *(result + 32) = v29;
        *(result + 40) = 0;
        *a2 = result;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 3;
      }

      break;
    case 4:
      *&v58[0] = result;
      v12 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v13 = v12();
      v14 = sub_1D5E02AFC(v13, v4);

      if (!v3)
      {
        v15 = swift_allocObject();
        *(v15 + 16) = v14;
        sub_1D5F3FE24();
        result = swift_allocObject();
        *(result + 16) = xmmword_1D7273AE0;
        *(result + 32) = v15;
        *(result + 40) = 0;
        *a2 = result;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 4;
      }

      break;
    case 5:
      *&v58[0] = result;
      v39 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v40 = v39();
      v41 = sub_1D5E02AFC(v40, v4);

      if (!v3)
      {
        v42 = swift_allocObject();
        *(v42 + 16) = v41;
        sub_1D5F3FE24();
        result = swift_allocObject();
        *(result + 16) = xmmword_1D7273AE0;
        *(result + 32) = v42;
        *(result + 40) = 0;
        *a2 = result;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 5;
      }

      break;
    case 6:
      *&v58[0] = result;
      v43 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v44 = v43();
      v45 = sub_1D5E02AFC(v44, v4);
      if (v3)
      {
        goto LABEL_26;
      }

      v46 = v45;

      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      sub_1D5F3FE24();
      result = swift_allocObject();
      *(result + 16) = xmmword_1D7273AE0;
      *(result + 32) = v47;
      *(result + 40) = 0;
      *a2 = result;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 6;
      break;
    case 7:
      *&v58[0] = result;
      v30 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v31 = v30();
      v32 = sub_1D5E02AFC(v31, v4);
      if (v3)
      {
        goto LABEL_26;
      }

      v33 = v32;

      v34 = swift_allocObject();
      *(v34 + 16) = v33;
      sub_1D5F3FE24();
      result = swift_allocObject();
      *(result + 16) = xmmword_1D7273AE0;
      *(result + 32) = v34;
      *(result + 40) = 0;
      *a2 = result;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 7;
      break;
    case 8:
      *&v58[0] = result;
      v53 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v54 = v53();
      v55 = sub_1D5E02AFC(v54, v4);
      if (v3)
      {
        goto LABEL_26;
      }

      v56 = v55;

      v57 = swift_allocObject();
      *(v57 + 16) = v56;
      sub_1D5F3FE24();
      result = swift_allocObject();
      *(result + 16) = xmmword_1D7273AE0;
      *(result + 32) = v57;
      *(result + 40) = 0;
      *a2 = result;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 8;
      break;
    case 9:
      *&v58[0] = result;
      v17 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v18 = v17();
      v19 = sub_1D5E02AFC(v18, v4);
      if (v3)
      {
        goto LABEL_26;
      }

      v20 = v19;

      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      sub_1D5F3FE24();
      result = swift_allocObject();
      *(result + 16) = xmmword_1D7273AE0;
      *(result + 32) = v21;
      *(result + 40) = 0;
      *a2 = result;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 9;
      break;
    case 0xA:
      *&v58[0] = result;
      v48 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v49 = v48();
      v50 = sub_1D5E02AFC(v49, v4);
      if (v3)
      {
        goto LABEL_26;
      }

      v51 = v50;

      v52 = swift_allocObject();
      *(v52 + 16) = v51;
      sub_1D5F3FE24();
      result = swift_allocObject();
      *(result + 16) = xmmword_1D7273AE0;
      *(result + 32) = v52;
      *(result + 40) = 0;
      *a2 = result;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 10;
      break;
    case 0xB:
      *&v58[0] = result;
      v7 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v8 = v7();
      v9 = sub_1D5E02AFC(v8, v4);
      if (v3)
      {
LABEL_26:
      }

      else
      {
        v10 = v9;

        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        sub_1D5F3FE24();
        result = swift_allocObject();
        *(result + 16) = xmmword_1D7273AE0;
        *(result + 32) = v11;
        *(result + 40) = 0;
        *a2 = result;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 11;
      }

      break;
    case 0xC:
      v16 = *(v2 + 16);
      *a2 = *v2;
      *(a2 + 16) = v16;
      *(a2 + 32) = *(v2 + 32);
      break;
    default:
      result = sub_1D6FD8AD0(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), v58);
      if (!v3)
      {
        v6 = v58[1];
        *a2 = v58[0];
        *(a2 + 16) = v6;
        *(a2 + 32) = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_1D6FEC1EC(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void *a4)
{
  v8 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = a2(v8);
    *a1 = v8;
  }

  v10 = *(v8 + 16);
  v34 = v8 + 32;
  v33[0] = v8 + 32;
  v33[1] = v10;
  v11 = sub_1D726449C();
  if (v11 >= v10)
  {
    if (v10 >= 2)
    {
      v15 = -1;
      v16 = 1;
      v17 = v34;
      do
      {
        v18 = *(v34 + 8 * v16);
        v19 = v15;
        v20 = v17;
        do
        {
          v21 = *v20;
          v22 = *(v18 + *a4);
          swift_beginAccess();
          v23 = *(v22 + 16);
          v24 = *(v22 + 24);
          v25 = *(v21 + *a4);
          swift_beginAccess();
          v26 = *(v25 + 24);
          v27 = v23 <= *(v25 + 16);
          if (v24 != v26)
          {
            v27 = v24 < v26;
          }

          if (!v27)
          {
            break;
          }

          v28 = *v20;
          v18 = v20[1];
          *v20 = v18;
          v20[1] = v28;
          --v20;
        }

        while (!__CFADD__(v19++, 1));
        ++v16;
        ++v17;
        --v15;
      }

      while (v16 != v10);
    }
  }

  else
  {
    v12 = v11;
    v13 = v10 >> 1;
    if (v10 >= 2)
    {
      a3(0);
      v14 = sub_1D726276C();
      *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    v32[0] = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
    v32[1] = v13;
    sub_1D6FF78E8(v32, v31, v33, v12, a4);
    *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_1D7263EAC();
}

uint64_t sub_1D6FEC3CC()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = 0;
    v5 = v2 - 1;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = (v1 + 48 + 24 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= *(v1 + 16))
        {
          __break(1u);
          return result;
        }

        v4 = v8 + 1;
        v9 = *(v7 - 1);
        v10 = *v7;
        v18[0] = *(v7 - 2);
        v18[1] = v9;
        v19 = v10;
        sub_1D66F4990(v18[0], v9, v10);
        sub_1D6B26C9C(v18, &v20);
        if (v21 <= 0xFDu)
        {
          break;
        }

        result = sub_1D6FFC25C(v20, v21);
        v7 += 24;
        ++v8;
        if (v2 == v4)
        {
          goto LABEL_16;
        }
      }

      v11 = v20;
      v12 = v21;
      result = swift_isUniquelyReferenced_nonNull_native();
      v17 = v5;
      if ((result & 1) == 0)
      {
        result = sub_1D6990760(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1D6990760((v13 > 1), v14 + 1, 1, v6);
        v15 = v12;
        v6 = result;
      }

      else
      {
        v15 = v12;
      }

      *(v6 + 16) = v14 + 1;
      v16 = v6 + 16 * v14;
      *(v16 + 32) = v11;
      *(v16 + 40) = v15;
      v5 = v17;
    }

    while (v17 != v8);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:

  return v6;
}

uint64_t sub_1D6FEC548@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = a1[1];
  v16[0] = *a1;
  v16[1] = v6;
  v7 = a1[3];
  v9 = *a1;
  v8 = a1[1];
  v16[2] = a1[2];
  v16[3] = v7;
  v15[0] = v9;
  v15[1] = v8;
  v10 = a1[3];
  v15[2] = a1[2];
  v15[3] = v10;
  v11 = *(a2 + 296);
  v12 = *(a3 + 96);
  type metadata accessor for FormatSlot();
  swift_allocObject();
  sub_1D5E3FA60(v16, &v14);

  result = sub_1D724FAE8(v15, v11, v12);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

char *sub_1D6FEC600(char *result, uint64_t a2)
{
  v3 = *(v2 + 136);
  v4 = *(v3 + 16);
  if (v4)
  {
    v31 = *result;
    v5 = v3 + 32;

    v6 = 0;
    while (1)
    {
      if (v6 >= *(v3 + 16))
      {
        __break(1u);
        return result;
      }

      v7 = v5 + 24 * v6;
      v9 = *v7;
      v8 = *(v7 + 8);
      v10 = *(v7 + 16);
      if (v10 == 12)
      {
        sub_1D66F4990(v9, v8, 0xCu);
        sub_1D66F4990(v9, v8, 0xCu);

        v23 = sub_1D6F622E0(v22);
        v24 = sub_1D5D6021C(v23, a2);
        v25 = FormatSelector.matches(_:)(v24);

        if (!v25)
        {

          sub_1D5C17350();
          swift_allocError();
          *v26 = v9;
          *(v26 + 8) = v8;
          v27 = 12;
LABEL_25:
          *(v26 + 40) = v27;
          swift_willThrow();
          return sub_1D62B7514(v9, v8, v10);
        }

        sub_1D62B7514(v9, v8, 0xCu);
        result = sub_1D62B7514(v9, v8, 0xCu);
      }

      else
      {
        if (v10 == 11)
        {
          v18 = *(v9 + 16);
          if (!v18)
          {
            goto LABEL_4;
          }

          sub_1D66F4990(*v7, *(v7 + 8), 0xBu);
          v19 = sub_1D5E4E308();

          v30 = MEMORY[0x1DA6FA1E0](v18, &type metadata for FormatGroupColumnSystemKind, v19);
          v20 = (v9 + 32);
          do
          {
            v21 = *v20++;
            sub_1D5FEB448(&v32, v21);
            --v18;
          }

          while (v18);
          sub_1D62B7514(v9, v8, 0xBu);
          if (sub_1D61855FC(v31, v30))
          {

            sub_1D5C17350();
            swift_allocError();
            *v26 = v31;
            *(v26 + 8) = v30;
            v27 = 11;
            goto LABEL_25;
          }

          v15 = v9;
          v16 = v8;
          v17 = 11;
        }

        else
        {
          if (v10 != 10)
          {
            goto LABEL_4;
          }

          v11 = *(v9 + 16);
          if (!v11)
          {
            goto LABEL_4;
          }

          sub_1D66F4990(*v7, *(v7 + 8), 0xAu);
          v12 = sub_1D5E4E308();

          v29 = MEMORY[0x1DA6FA1E0](v11, &type metadata for FormatGroupColumnSystemKind, v12);
          v13 = (v9 + 32);
          do
          {
            v14 = *v13++;
            sub_1D5FEB448(&v32, v14);
            --v11;
          }

          while (v11);
          sub_1D62B7514(v9, v8, 0xAu);
          if ((sub_1D61855FC(v31, v29) & 1) == 0)
          {

            sub_1D5C17350();
            swift_allocError();
            *v26 = v31;
            *(v26 + 8) = v29;
            v27 = 10;
            goto LABEL_25;
          }

          v15 = v9;
          v16 = v8;
          v17 = 10;
        }

        sub_1D62B7514(v15, v16, v17);

        v5 = v3 + 32;
      }

LABEL_4:
      if (++v6 == v4)
      {
      }
    }
  }

  return result;
}

uint64_t sub_1D6FEC93C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *(a2[10] + 16);
  result = v6 + 3;
  if (!__OFADD__(v6, 3))
  {
    sub_1D7259E0C();
    v28 = a1;
    swift_getKeyPath();
    v10 = a2[1];
    v21 = *a2;
    v24 = MEMORY[0x1E69E6158];
    v25 = MEMORY[0x1E69D74F0];
    v22 = v21;
    v23 = v10;
    sub_1D5EB5368(0);
    sub_1D6FF91E8();
    sub_1D6FFA0A0(&qword_1EDF3C168, sub_1D5EB544C);
    swift_bridgeObjectRetain_n();
    sub_1D7259A0C();

    __swift_destroy_boxed_opaque_existential_1(&v22);
    v28 = a1;
    swift_getKeyPath();
    v24 = MEMORY[0x1E69E6158];
    v25 = MEMORY[0x1E69D74F0];
    v22 = v21;
    v23 = v10;
    sub_1D7259A0C();

    __swift_destroy_boxed_opaque_existential_1(&v22);
    v28 = a1;
    swift_getKeyPath();
    v24 = MEMORY[0x1E69E6158];
    v25 = MEMORY[0x1E69D74F0];
    v22 = v21;
    v23 = v10;
    sub_1D7259A0C();

    __swift_destroy_boxed_opaque_existential_1(&v22);
    v11 = a2[10];
    v12 = *(v11 + 16);

    if (!v12)
    {
    }

    v13 = 0;
    v14 = 32;
    while (v13 < *(v11 + 16))
    {
      v15 = *(v11 + v14);
      v16 = *(v11 + v14 + 32);
      v26[1] = *(v11 + v14 + 16);
      v26[2] = v16;
      v26[0] = v15;
      v17 = *(v11 + v14 + 48);
      v18 = *(v11 + v14 + 64);
      v19 = *(v11 + v14 + 80);
      v27 = *(v11 + v14 + 96);
      v26[4] = v18;
      v26[5] = v19;
      v26[3] = v17;
      sub_1D5C5C4CC(v26, &v22);
      sub_1D6FBF7BC(a1, a3, a4);
      if (v4)
      {

        return sub_1D5C5C540(v26);
      }

      ++v13;
      result = sub_1D5C5C540(v26);
      v14 += 104;
      if (v12 == v13)
      {
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1D6FECCD4@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1D725D52C();
  v23[7] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v23[6] = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D27F7C(0, qword_1EDF3ECD8, type metadata accessor for GroupLayoutBindingContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  *&v25 = v23 - v8;
  v24 = type metadata accessor for InternalErrorViewModel();
  MEMORY[0x1EEE9AC00](v24, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  sub_1D6FF9128(0, &qword_1EDF3BF58, MEMORY[0x1E69D73B0]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v23 - v16;
  v18 = *(type metadata accessor for FormatGroupLayoutFactory.Bound() + 24);
  *&v26 = v1;
  v23[8] = v18;
  sub_1D725A4DC();
  *v31 = v34;
  sub_1D725A07C();

  sub_1D725A05C();
  type metadata accessor for FormatLayoutAttributes();
  sub_1D5EB5218();
  sub_1D6FFA0A0(&qword_1EDF28608, type metadata accessor for FormatLayoutAttributes);
  sub_1D725A47C();
  sub_1D6FED4C0(v17, v27);

  (*(v14 + 8))(v17, v13);
  *&v31[32] = v28;
  v32 = v29;
  *v31 = v27[0];
  *&v31[16] = v27[1];
  v33 = v30;
  v19 = v27[0];
  v20 = *(&v28 + 1);
  v21 = v29;

  v26 = *&v31[8];
  v25 = *&v31[24];
  sub_1D6FFC270(v31);
  *a1 = v19;
  *(a1 + 24) = v25;
  result = *&v26;
  *(a1 + 8) = v26;
  *(a1 + 40) = v20;
  *(a1 + 48) = v21;
  return result;
}

char *sub_1D6FED4C0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v3 = v2;
  v61 = type metadata accessor for FormatItemNodeLayoutContext();
  MEMORY[0x1EEE9AC00](v61, v6);
  v60 = (v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6FF9128(0, &qword_1EDF3BF58, MEMORY[0x1E69D73B0]);
  v9 = v8;
  sub_1D725A48C();
  v10 = sub_1D6FEDA30(v65);
  v12 = v11;

  sub_1D725A48C();
  v13 = v65[2];
  v14 = v65[3];
  v15 = v65[4];
  v16 = v65[5];

  v17 = v10 >> 62;
  if (v10 >> 62)
  {
    goto LABEL_21;
  }

  v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18)
  {
    while (1)
    {
      v66 = MEMORY[0x1E69E7CC0];
      result = sub_1D5BDF6B0(0, v18 & ~(v18 >> 63), 0);
      if (v18 < 0)
      {
        break;
      }

      v54 = v18;
      v64 = v66;
      v50 = a2;
      v48[2] = a1;
      v48[1] = v9;
      v48[0] = v12;
      v51 = v10 & 0xFFFFFFFFFFFFFF8;
      if (v17)
      {
        v20 = sub_1D7263BFC();
      }

      else
      {
        v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v62 = v10;
      v58 = v10 & 0xC000000000000001;
      v12 = *v3;
      v21 = type metadata accessor for FormatGroupLayoutFactory.Bound();
      v17 = *(v3 + v21[9]);
      v22 = (v3 + v21[15]);
      v23 = *v22;
      v24 = v22[1];
      a1 = v22[3];
      v56 = v22[2];
      v57 = v23;
      v25 = v21[6];
      v49 = v3;
      v10 = v3 + v25;
      v9 = 0;
      v55 = *(v3 + v25 + *(type metadata accessor for GroupLayoutContext() + 28));
      v59 = v20 & ~(v20 >> 63);
      v53 = v12;
      v52 = v17;
      while (v59 != v9)
      {
        if (v58)
        {
          v26 = MEMORY[0x1DA6FB460](v9, v62);
        }

        else
        {
          if (v9 >= *(v51 + 16))
          {
            goto LABEL_20;
          }

          v26 = *(v62 + 8 * v9 + 32);
        }

        v28 = v60;
        v27 = v61;
        sub_1D5BE4148(v26 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_feedItem, v60 + *(v61 + 28), type metadata accessor for FeedItem);
        v63 = v26;
        v29 = *(v26 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
        swift_beginAccess();
        *v28 = v12;
        v28[1] = v17;
        v30 = *(v29 + 16);
        v31 = *(v29 + 32);
        v32 = v56;
        v28[2] = v57;
        v28[3] = v24;
        v28[4] = v32;
        v28[5] = a1;
        v33 = (v28 + *(v27 + 32));
        *v33 = v30;
        v33[1] = v31;
        v34 = (v28 + *(v27 + 36));
        *v34 = v13;
        v34[1] = v14;
        v34[2] = v15;
        v34[3] = v16;
        sub_1D6CCCC8C();
        v36 = v35;
        v37 = a1;
        a1 = swift_allocBox();
        v10 = v38;
        v3 = *(v36 + 48);
        a2 = *(v36 + 64);
        sub_1D5BDAB74(v28, v38, type metadata accessor for FormatItemNodeLayoutContext);
        *(v3 + v10) = v63;
        if (__OFADD__(v9, v55))
        {
          goto LABEL_19;
        }

        *(v10 + a2) = v9 + v55;
        v3 = v64;
        v66 = v64;
        a2 = v64[2];
        v39 = v64[3];

        v10 = v37;

        if (a2 >= v39 >> 1)
        {
          sub_1D5BDF6B0((v39 > 1), a2 + 1, 1);
          v3 = v66;
        }

        ++v9;
        v3[2] = a2 + 1;
        v64 = v3;
        v3[a2 + 4] = a1 | 0x7000000000000000;
        v12 = v53;
        v17 = v52;
        a1 = v37;
        if (v54 == v9)
        {

          a2 = v50;
          v3 = v49;
          v12 = v48[0];
          v42 = v64;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v18 = sub_1D7263BFC();
      if (!v18)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:

    v42 = MEMORY[0x1E69E7CC0];
LABEL_23:
    MEMORY[0x1EEE9AC00](v40, v41);
    v48[-6] = v3;
    v48[-5] = v13;
    v48[-4] = v14;
    v48[-3] = v15;
    v48[-2] = v16;
    v43 = sub_1D5FBC900(sub_1D6FFC2C4, &v48[-8], v12);

    v67 = 0;
    v66 = v42;
    sub_1D6FFC8F0(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes, MEMORY[0x1E69E62F8]);
    sub_1D5C184C4();
    sub_1D5BDEFF8();
    v44 = sub_1D72623BC();

    v45 = v67;
    v46 = sub_1D725A49C();
    v47 = *(*(v3 + *(type metadata accessor for FormatGroupLayoutFactory.Bound() + 40)) + 16);
    *a2 = v45;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15;
    *(a2 + 32) = v16;
    *(a2 + 40) = v44;
    *(a2 + 48) = v43;
    *(a2 + 56) = v46;
    *(a2 + 64) = v47;
    *(a2 + 72) = 0;
  }

  return result;
}

uint64_t sub_1D6FEDA30(uint64_t a1)
{
  v2 = v1;
  v263 = 0;
  v4 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF43998, MEMORY[0x1E69D86D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v261 = &v239 - v7;
  sub_1D5D27F7C(0, &unk_1EDF439A0, MEMORY[0x1E69D8558], v4);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v260 = &v239 - v10;
  v258 = sub_1D725895C();
  v11 = *(v258 - 8);
  MEMORY[0x1EEE9AC00](v258, v12);
  v257 = &v239 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v243 = &v239 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v4);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v239 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v239 - v23;
  v240 = type metadata accessor for FormatItemNodeData();
  MEMORY[0x1EEE9AC00](v240, v25);
  v242 = &v239 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v239 - v29;
  v31 = MEMORY[0x1E69E7CC0];
  v290 = MEMORY[0x1E69E7CC0];
  v291 = MEMORY[0x1E69E7CC0];
  v268 = type metadata accessor for FormatGroupLayoutFactory.Bound();
  sub_1D7259E7C();
  v34 = *(a1 + 112);
  v271 = *(v34 + 16);
  if (v271)
  {
    v35 = v32;
    v36 = v33;
    v37 = 0;
    v269 = v2;
    v270 = v34 + 32;
    v256 = (v11 + 8);
    v273 = v31;
    v241 = v31;
    v262 = v20;
    v264 = v24;
    v259 = v30;
    v266 = v34;
    v38 = v24;
    v39 = v34;
    while (1)
    {
      if (v37 >= *(v39 + 16))
      {
        __break(1u);
        goto LABEL_80;
      }

      v40 = *(v270 + 8 * v37);
      v41 = (v40 >> 59) & 0x1E | (v40 >> 2) & 1;
      if (v41 == 6)
      {
        v272 = v37;
        v57 = *((v40 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v58 = *(v269 + *(v268 + 40));
        v280[0] = v40;
        v59 = FormatLayoutValue.identifier.getter();
        v61 = v60;
        swift_beginAccess();
        v62 = *(v58 + 40);
        v63 = *(v62 + 16);
        v267 = v40 & 0xFFFFFFFFFFFFFFBLL;
        if (v63)
        {

          v64 = sub_1D5B69D90(v59, v61);
          v65 = v57;
          if (v66)
          {
            v67 = (*(v62 + 56) + 24 * v64);
            v68 = *v67;
            v69 = v67[1];
            v70 = v67[2];
          }

          else
          {
            v68 = 0;
            v69 = 0;
            v70 = 0;
          }
        }

        else
        {

          v69 = 0;
          v70 = 0;
          v65 = v57;
          v68 = 0;
        }

        swift_endAccess();

        v95 = *(v65 + 2);
        v97 = *(v95 + 48);
        v96 = *(v95 + 56);
        swift_beginAccess();
        v98 = *(v58 + 24);
        if (*(v98 + 16))
        {

          v99 = sub_1D5B69D90(v97, v96);
          if (v100)
          {
            v101 = v99;
            v265 = v65;
            v102 = v70;
            v103 = v69;
            v104 = v68;
            v105 = *(v98 + 56);
            v106 = type metadata accessor for FormatNodeStateData.Data();
            v107 = *(v106 - 8);
            v31 = ((v106 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000);
            v108 = v105 + *(v107 + 72) * v101;
            v68 = v104;
            v69 = v103;
            v70 = v102;
            v65 = v265;
            v109 = v262;
            sub_1D5BE4148(v108, v262, type metadata accessor for FormatNodeStateData.Data);
            (*(v107 + 56))(v109, 0, 1, v106);
          }

          else
          {
            v106 = type metadata accessor for FormatNodeStateData.Data();
            v31 = ((v106 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000);
            v109 = v262;
            (*(*(v106 - 8) + 56))(v262, 1, 1, v106);
          }
        }

        else
        {
          v106 = type metadata accessor for FormatNodeStateData.Data();
          v31 = ((v106 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000);
          v109 = v262;
          (*(*(v106 - 8) + 56))(v262, 1, 1, v106);
        }

        swift_endAccess();

        type metadata accessor for FormatNodeStateData.Data();
        if ((*(*(v106 - 8) + 48))(v109, 1, v106) == 1)
        {

          sub_1D5EBC358(v68, v69);
          sub_1D6FFCA9C(v109, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        }

        else
        {
          if (swift_getEnumCaseMultiPayload() == 5)
          {
            v253 = v70;
            v254 = v69;
            v255 = v68;
            v110 = v109[5];
            v288 = v109[4];
            v289[0] = v110;
            *(v289 + 9) = *(v109 + 89);
            v111 = v109[3];
            v286 = v109[2];
            v287 = v111;
            v112 = v109[1];
            v284 = *v109;
            v285 = v112;

            v115 = sub_1D6FEF804(v113, v114, 0.0, 0.0, v35, v36);
            v244 = v116;

            v117 = *(v65 + 3);
            v118 = *(v65 + 4);
            v250 = *(v65 + 5);
            LODWORD(v249) = v65[48];
            v119 = MEMORY[0x1E69E6720];
            sub_1D6FFC87C(&v65[OBJC_IVAR____TtC8NewsFeed39FormatSupplementaryNodeLayoutAttributes_pinTrait], v260, &unk_1EDF439A0, MEMORY[0x1E69D8558], MEMORY[0x1E69E6720], sub_1D5D27F7C);
            sub_1D6FFC87C(&v65[OBJC_IVAR____TtC8NewsFeed39FormatSupplementaryNodeLayoutAttributes_rubberbandTrait], v261, &qword_1EDF43998, MEMORY[0x1E69D86D0], v119, sub_1D5D27F7C);
            v120 = *(v65 + 2);
            v121 = *(v120 + 16);
            v276 = *(v120 + 32);
            v277 = v121;
            v122 = *(v120 + 48);
            v273 = *(v120 + 56);
            v274 = v122;
            v123 = *(v120 + 80);
            v247 = *(v120 + 88);
            v248 = v123;
            v124 = *(v120 + 104);
            *&v246 = *(v120 + 96);
            v278 = v124;
            v125 = *(v115 + 16);
            v265 = v65;
            v251 = v118;
            v252 = v117;
            *&v245 = v115;
            if (v125)
            {
              v280[0] = MEMORY[0x1E69E7CC0];

              sub_1D6998434(0, v125, 0);
              v126 = v280[0];
              v127 = *(v280[0] + 16);
              v128 = (v115 + 40);
              do
              {
                v130 = *v128;
                v128 += 2;
                v129 = v130;
                v280[0] = v126;
                v131 = *(v126 + 24);

                if (v127 >= v131 >> 1)
                {
                  sub_1D6998434((v131 > 1), v127 + 1, 1);
                  v126 = v280[0];
                }

                *(v126 + 16) = v127 + 1;
                *(v126 + 8 * v127++ + 32) = v129;
                --v125;
              }

              while (v125);
              v65 = v265;
              v132 = v126;
              v120 = *(v265 + 2);
              v133 = MEMORY[0x1E69E7CC0];
            }

            else
            {

              v133 = MEMORY[0x1E69E7CC0];
              v132 = MEMORY[0x1E69E7CC0];
            }

            v136 = *(v120 + 120);

            v138 = v263;
            v139 = sub_1D6FB9AE4(v137);
            swift_bridgeObjectRelease_n();

            v280[0] = v136;
            sub_1D6986BE4(v139);
            sub_1D5D27F7C(0, &qword_1EDF1AFA8, type metadata accessor for FormatAccessibilityLayoutValue, MEMORY[0x1E69E62F8]);
            sub_1D6FFC2E8(&unk_1EDF1AF98);
            v140 = sub_1D72623CC();

            MEMORY[0x1EEE9AC00](v141, v142);
            *(&v239 - 2) = v269;
            v143 = sub_1D5FBC744(sub_1D6FFC35C, (&v239 - 4), v140);
            v263 = v138;

            LOBYTE(v138) = *(*(v65 + 2) + 128);
            sub_1D6FFC8F0(0, qword_1EDF23428, &type metadata for FormatSupplementary, type metadata accessor for FormatDataLayoutAttributes);
            v144 = swift_allocObject();
            v145 = v276;
            *(v144 + 16) = v277;
            *(v144 + 32) = v145;
            v146 = v273;
            *(v144 + 48) = v274;
            *(v144 + 56) = v146;
            v147 = v247;
            *(v144 + 64) = v248;
            *(v144 + 72) = v147;
            v148 = v278;
            *(v144 + 80) = v246;
            *(v144 + 88) = v148;
            v149 = v289[0];
            *(v144 + 176) = v288;
            *(v144 + 192) = v149;
            *(v144 + 201) = *(v289 + 9);
            v150 = v285;
            *(v144 + 112) = v284;
            *(v144 + 128) = v150;
            v151 = v287;
            *(v144 + 144) = v286;
            *(v144 + 160) = v151;
            *(v144 + 217) = v138;
            *(v144 + 240) = v35;
            *(v144 + 248) = v36;
            *(v144 + 96) = v132;
            *(v144 + 104) = v143;
            v248 = v144;
            v283 = v133;
            v152 = *(v132 + 16);
            if (v152)
            {
              v153 = v132;
              sub_1D62E340C(&v284, v280);
              v274 = type metadata accessor for FormatDataLayoutViewModel();

              v154 = 32;
              v155 = v133;
              v275 = v132;
              do
              {
                v156 = *(v153 + v154);
                v157 = swift_allocObject();
                *(v157 + 16) = v156;
                v279 = v156;
                swift_retain_n();
                sub_1D6EE7974(v280);
                v158 = v280[1];
                v159 = v282;
                *(v157 + 24) = v280[0];
                *(v157 + 32) = v158;
                *(v157 + 40) = v281;
                *(v157 + 56) = v159;

                MEMORY[0x1DA6F9CE0](v160);
                if (*((v283 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v283 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1D726272C();
                }

                sub_1D726278C();
                v273 = v283;
                v161 = *(v157 + 32);
                v278 = *(v157 + 24);
                v162 = *(v157 + 40);
                *&v277 = *(v157 + 48);
                LODWORD(v276) = *(v157 + 56);

                sub_1D5F33D5C(v162);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v155 = sub_1D698F980(0, *(v155 + 2) + 1, 1, v155);
                }

                v164 = *(v155 + 2);
                v163 = *(v155 + 3);
                if (v164 >= v163 >> 1)
                {
                  v155 = sub_1D698F980((v163 > 1), v164 + 1, 1, v155);
                }

                *(v155 + 2) = v164 + 1;
                v165 = &v155[40 * v164];
                *(v165 + 4) = v278;
                *(v165 + 5) = v161;
                v166 = v277;
                *(v165 + 6) = v162;
                *(v165 + 7) = v166;
                v165[64] = v276;
                v154 += 8;
                --v152;
                v153 = v275;
              }

              while (v152);

              v167 = v251;
              v133 = v273;
            }

            else
            {
              sub_1D62E340C(&v284, v280);
              v155 = v133;
              v167 = v251;
            }

            v168 = v248;
            *(v248 + 224) = v133;
            type metadata accessor for FormatDataLayoutViewKey();
            v169 = swift_allocObject();
            *(v169 + 16) = v155;
            *(v168 + 232) = v169;
            type metadata accessor for FormatSupplementaryNodeDataLayoutAttributes();
            v170 = swift_allocObject();
            *(v170 + 32) = v252;
            *(v170 + 40) = v167;
            *(v170 + 48) = v250;
            *(v170 + 56) = v249;
            v278 = MEMORY[0x1E69D8558];
            v171 = MEMORY[0x1E69E6720];
            v172 = v260;
            sub_1D6FFC87C(v260, v170 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_pinTrait, &unk_1EDF439A0, MEMORY[0x1E69D8558], MEMORY[0x1E69E6720], sub_1D5D27F7C);
            v173 = MEMORY[0x1E69D86D0];
            v31 = v261;
            sub_1D6FFC87C(v261, v170 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_rubberbandTrait, &qword_1EDF43998, MEMORY[0x1E69D86D0], v171, sub_1D5D27F7C);
            *(v170 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) = v168;

            v174 = v257;
            sub_1D725894C();
            v175 = sub_1D725893C();
            v177 = v176;
            (*v256)(v174, v258);
            *(v170 + 16) = v175;
            *(v170 + 24) = v177;
            v178 = (v170 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_sourceItemData);
            v179 = v254;
            *v178 = v255;
            v178[1] = v179;
            v178[2] = v253;
            v180 = sub_1D6EE5A3C(*(v168 + 96));
            v182 = v181;
            sub_1D6FFCA9C(v31, &qword_1EDF43998, v173, v171, sub_1D5D27F7C);
            sub_1D6FFCA9C(v172, &unk_1EDF439A0, v278, v171, sub_1D5D27F7C);

            v183 = (v170 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_reuseIdentifier);
            *v183 = v180;
            v183[1] = v182;

            MEMORY[0x1DA6F9CE0](v184);
            if (*((v290 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v290 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v31 = *((v290 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1D726272C();
            }

            sub_1D726278C();

            sub_1D62E2300(&v284);
            v273 = v290;

            v38 = v264;
            v39 = v266;
            v37 = v272;
            goto LABEL_5;
          }

          sub_1D5EBC358(v68, v69);
          sub_1D6FFC9A0(v109, type metadata accessor for FormatNodeStateData.Data);
        }

        v37 = v272;
        v38 = v264;
        v39 = v266;
      }

      else if (!v41)
      {
        v272 = v37;
        v42 = *(v40 + 16);
        v43 = *(v269 + *(v268 + 40));
        v44 = *(v42 + 2);
        v46 = *(v44 + 48);
        v45 = *(v44 + 56);
        swift_beginAccess();
        v47 = *(v43 + 24);
        if (*(v47 + 16))
        {

          v48 = v42;

          v49 = sub_1D5B69D90(v46, v45);
          if (v50)
          {
            v51 = v49;
            v52 = v38;
            v53 = *(v47 + 56);
            v54 = type metadata accessor for FormatNodeStateData.Data();
            v55 = *(v54 - 8);
            v31 = ((v54 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000);
            v56 = v53 + *(v55 + 72) * v51;
            v38 = v52;
            v39 = v266;
            sub_1D5BE4148(v56, v38, type metadata accessor for FormatNodeStateData.Data);
            (*(v55 + 56))(v38, 0, 1, v54);
          }

          else
          {
            v54 = type metadata accessor for FormatNodeStateData.Data();
            v31 = ((v54 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000);
            (*(*(v54 - 8) + 56))(v38, 1, 1, v54);
          }
        }

        else
        {
          v54 = type metadata accessor for FormatNodeStateData.Data();
          v71 = v42;
          v31 = ((v54 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000);
          (*(*(v54 - 8) + 56))(v38, 1, 1, v54);

          v48 = v71;
        }

        swift_endAccess();

        type metadata accessor for FormatNodeStateData.Data();
        if ((*(*(v54 - 8) + 48))(v38, 1, v54) == 1)
        {

          sub_1D6FFCA9C(v38, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        }

        else
        {
          v31 = v48;
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            v72 = v259;
            sub_1D5BDAB74(v38, v259, type metadata accessor for FormatItemNodeData);
            v73 = *(v31 + 2);
            v74 = *(v73 + 72);
            if (v74)
            {
              v255 = v40;
              *&v276 = *(v73 + 64);
              *&v277 = v74;

              v76 = v269;
              v78 = sub_1D6FEF804(v75, v77, 0.0, 0.0, v35, v36);
              v244 = v79;

              v80 = *(v31 + 3);
              v267 = *(v31 + 4);
              v81 = *(v31 + 6);
              v251 = *(v31 + 5);
              v82 = *(v72 + *(v240 + 36));
              LODWORD(v248) = *(v76 + *(v268 + 52));
              sub_1D5BE4148(v72, v243, type metadata accessor for FeedItem);
              v83 = *(v31 + 8);
              v253 = *(v31 + 7);
              v254 = v83;
              v84 = *(v31 + 2);
              v85 = *(v84 + 16);
              v245 = *(v84 + 32);
              v246 = v85;
              v86 = *(v84 + 80);
              v278 = *(v84 + 88);
              v87 = *(v84 + 104);
              v274 = *(v84 + 96);
              v275 = v86;
              v241 = v78;
              v88 = *(v78 + 16);
              v265 = v31;
              v252 = v80;
              v249 = v82;
              v250 = v81;
              v247 = v87;
              if (v88)
              {

                sub_1D5EB1500(v83);
                *&v284 = MEMORY[0x1E69E7CC0];

                sub_1D6998434(0, v88, 0);
                v89 = v284;
                v90 = *(v284 + 16);
                v91 = v241 + 5;
                do
                {
                  v93 = *v91;
                  v91 += 2;
                  v92 = v93;
                  *&v284 = v89;
                  v94 = *(v89 + 24);

                  if (v90 >= v94 >> 1)
                  {
                    sub_1D6998434((v94 > 1), v90 + 1, 1);
                    v89 = v284;
                  }

                  *(v89 + 16) = v90 + 1;
                  *(v89 + 8 * v90++ + 32) = v92;
                  --v88;
                }

                while (v88);
                v134 = MEMORY[0x1E69E7CC0];
                v31 = v265;
                v135 = v89;
              }

              else
              {

                sub_1D5EB1500(v83);

                v134 = MEMORY[0x1E69E7CC0];
                v135 = MEMORY[0x1E69E7CC0];
              }

              v185 = *(*(v31 + 2) + 120);

              v187 = v31;
              v188 = v263;
              v189 = sub_1D6FB9AE4(v186);
              swift_bridgeObjectRelease_n();

              *&v284 = v185;
              sub_1D6986BE4(v189);
              sub_1D5D27F7C(0, &qword_1EDF1AFA8, type metadata accessor for FormatAccessibilityLayoutValue, MEMORY[0x1E69E62F8]);
              sub_1D6FFC2E8(&unk_1EDF1AF98);
              v190 = sub_1D72623CC();

              MEMORY[0x1EEE9AC00](v191, v192);
              *(&v239 - 2) = v269;
              v193 = sub_1D5FBC744(sub_1D6FFCC34, (&v239 - 4), v190);
              v263 = v188;

              v194 = v259;
              v195 = v242;
              sub_1D5BE4148(v259, v242, type metadata accessor for FormatItemNodeData);
              LOBYTE(v188) = *(*(v187 + 2) + 128);
              sub_1D5D27F7C(0, &qword_1EDF23420, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatDataLayoutAttributes);
              v196 = swift_allocObject();
              v197 = v245;
              *(v196 + 16) = v246;
              *(v196 + 32) = v197;
              v198 = v277;
              *(v196 + 48) = v276;
              *(v196 + 56) = v198;
              v199 = v278;
              *(v196 + 64) = v275;
              *(v196 + 72) = v199;
              v200 = v247;
              *(v196 + 80) = v274;
              *(v196 + 88) = v200;
              *(v196 + 104) = v193;
              sub_1D5BE4148(v195, v196 + *(*v196 + 136), type metadata accessor for FormatItemNodeData);
              *(v196 + *(*v196 + 144)) = v188;
              v201 = (v196 + *(*v196 + 168));
              *v201 = v35;
              v201[1] = v36;
              v247 = v196;
              *(v196 + 96) = v135;
              v280[0] = v134;
              v202 = *(v135 + 16);
              if (v202)
              {
                v203 = (v135 + 32);
                v275 = type metadata accessor for FormatDataLayoutViewModel();
                *&v246 = v135;

                v204 = v134;
                do
                {
                  v205 = *v203;
                  v278 = v203 + 1;
                  v206 = swift_allocObject();
                  *(v206 + 16) = v205;
                  v283 = v205;
                  swift_retain_n();
                  sub_1D6EE7974(&v284);
                  v207 = *(&v284 + 1);
                  v208 = v286;
                  *(v206 + 24) = v284;
                  *(v206 + 32) = v207;
                  *(v206 + 40) = v285;
                  *(v206 + 56) = v208;

                  MEMORY[0x1DA6F9CE0](v209);
                  if (*((v280[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v280[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1D726272C();
                  }

                  sub_1D726278C();
                  v274 = v280[0];
                  v210 = *(v206 + 32);
                  *&v277 = *(v206 + 24);
                  v212 = *(v206 + 40);
                  v211 = *(v206 + 48);
                  LODWORD(v276) = *(v206 + 56);

                  sub_1D5F33D5C(v212);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v204 = sub_1D698F980(0, *(v204 + 2) + 1, 1, v204);
                  }

                  v214 = *(v204 + 2);
                  v213 = *(v204 + 3);
                  if (v214 >= v213 >> 1)
                  {
                    v204 = sub_1D698F980((v213 > 1), v214 + 1, 1, v204);
                  }

                  *(v204 + 2) = v214 + 1;
                  v215 = &v204[40 * v214];
                  *(v215 + 4) = v277;
                  *(v215 + 5) = v210;
                  *(v215 + 6) = v212;
                  *(v215 + 7) = v211;
                  v215[64] = v276;
                  --v202;
                  v203 = v278;
                }

                while (v202);
                v194 = v259;
                v216 = v252;
                v217 = v267;
                v219 = v249;
                v218 = v250;
                v220 = v274;
              }

              else
              {

                v204 = v134;
                v220 = v134;
                v216 = v252;
                v217 = v267;
                v219 = v249;
                v218 = v250;
              }

              sub_1D6FFC9A0(v242, type metadata accessor for FormatItemNodeData);

              v221 = v247;
              *(v247 + *(*v247 + 152)) = v220;
              type metadata accessor for FormatDataLayoutViewKey();
              v222 = swift_allocObject();
              *(v222 + 16) = v204;
              *(v221 + *(*v221 + 160)) = v222;
              type metadata accessor for FormatItemNodeDataLayoutAttributes();
              v223 = swift_allocObject();
              *(v223 + 32) = v216;
              *(v223 + 40) = v217;
              *(v223 + 48) = v251;
              *(v223 + 56) = v218;
              *(v223 + 64) = v219;
              *(v223 + 72) = v248;
              v224 = v243;
              sub_1D5BE4148(v243, v223 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_feedItem, type metadata accessor for FeedItem);
              v225 = v254;
              *(v223 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_zIndex) = v253;
              *(v223 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_visibility) = v225;
              *(v223 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes) = v221;

              v31 = v257;
              sub_1D725894C();
              v226 = sub_1D725893C();
              v228 = v227;
              (*v256)(v31, v258);
              *(v223 + 16) = v226;
              *(v223 + 24) = v228;
              v229 = sub_1D6EE5A3C(v221[12]);
              v231 = v230;
              sub_1D6FFC9A0(v224, type metadata accessor for FeedItem);

              v232 = (v223 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_reuseIdentifier);
              *v232 = v229;
              v232[1] = v231;

              MEMORY[0x1DA6F9CE0](v233);
              v234 = v264;
              if (*((v291 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v291 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v31 = *((v291 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_1D726272C();
              }

              sub_1D726278C();

              sub_1D6FFC9A0(v194, type metadata accessor for FormatItemNodeData);
              v241 = v291;

              v37 = v272;
              v38 = v234;
              v39 = v266;
              goto LABEL_5;
            }

            sub_1D6FFC9A0(v72, type metadata accessor for FormatItemNodeData);
          }

          else
          {

            sub_1D6FFC9A0(v38, type metadata accessor for FormatNodeStateData.Data);
          }
        }

        v37 = v272;
      }

LABEL_5:
      if (++v37 == v271)
      {
        goto LABEL_77;
      }
    }
  }

  v273 = v31;
  v241 = v31;
LABEL_77:

  *&v284 = sub_1D680E8CC(v235);
  v31 = v263;
  sub_1D6FEC1EC(&v284, sub_1D630BBB4, type metadata accessor for FormatItemNodeDataLayoutAttributes, &OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
  if (v31)
  {
LABEL_80:

    __break(1u);
  }

  else
  {
    v236 = v284;

    *&v284 = sub_1D680E8A0(v237);
    sub_1D6FEC1EC(&v284, sub_1D630BBB4, type metadata accessor for FormatSupplementaryNodeDataLayoutAttributes, &OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);

    return v236;
  }

  return result;
}

uint64_t sub_1D6FEF6AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v13 = *a1;
  v14 = *a2;
  v15 = type metadata accessor for FormatGroupLayoutFactory.Bound();
  v16 = *(a2 + *(v15 + 36));
  v17 = (a2 + *(v15 + 60));
  v19 = *v17;
  v18 = v17[1];
  v21 = v17[2];
  v20 = v17[3];
  v22 = *(v13 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
  swift_beginAccess();
  v23 = *(v22 + 16);
  v24 = *(v22 + 32);
  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = v19;
  *(a3 + 24) = v18;
  *(a3 + 32) = v21;
  *(a3 + 40) = v20;
  *(a3 + 48) = v23;
  *(a3 + 64) = v24;
  *(a3 + 80) = a4;
  *(a3 + 88) = a5;
  *(a3 + 96) = a6;
  *(a3 + 104) = a7;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = v13;
  v25 = type metadata accessor for FeedItemSupplementaryAttributes();
  swift_storeEnumTagMultiPayload();
  (*(*(v25 - 8) + 56))(a3, 0, 1, v25);
}

uint64_t sub_1D6FEF804(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v9 = a1;
  v12 = 0;
  v13 = 0;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v16 = v12;
    do
    {
      if (v14 == v16)
      {
        MEMORY[0x1EEE9AC00](a1, a2);
        v96[2] = v6;
        *&v96[3] = a3;
        *&v96[4] = a4;
        *&v96[5] = a5;
        *&v96[6] = a6;
        v96[7] = v15;
        v36 = sub_1D5FBC5EC(sub_1D6FFC490, v96, v9);

        type metadata accessor for FormatGroupLayoutFactory.Bound();
        v37 = sub_1D61881BC(3);
        v38 = *(v36 + 2);
        if (v37)
        {
          if (v38)
          {
            v39 = 0;
            v40 = v36 + 32;
            v41 = MEMORY[0x1E69E7CC0];
            do
            {
              if (v39 >= *(v36 + 2))
              {
                goto LABEL_110;
              }

              v42 = *v40;
              v43 = *(*v40 + 16);
              v44 = *(v41 + 2);
              v45 = v44 + v43;
              if (__OFADD__(v44, v43))
              {
                goto LABEL_112;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (isUniquelyReferenced_nonNull_native && v45 <= *(v41 + 3) >> 1)
              {
                if (!*(v42 + 16))
                {
                  goto LABEL_21;
                }
              }

              else
              {
                if (v44 <= v45)
                {
                  v47 = v44 + v43;
                }

                else
                {
                  v47 = v44;
                }

                v41 = sub_1D6991238(isUniquelyReferenced_nonNull_native, v47, 1, v41);
                if (!*(v42 + 16))
                {
LABEL_21:

                  if (v43)
                  {
                    goto LABEL_114;
                  }

                  goto LABEL_22;
                }
              }

              if ((*(v41 + 3) >> 1) - *(v41 + 2) < v43)
              {
                goto LABEL_122;
              }

              swift_arrayInitWithCopy();

              if (v43)
              {
                v48 = *(v41 + 2);
                v27 = __OFADD__(v48, v43);
                v49 = v48 + v43;
                if (v27)
                {
                  goto LABEL_126;
                }

                *(v41 + 2) = v49;
              }

LABEL_22:
              ++v39;
              v40 += 16;
            }

            while (v38 != v39);
          }

          v99 = sub_1D72626AC();

          if (v38)
          {
            v61 = 0;
            v62 = v36 + 40;
            v63 = MEMORY[0x1E69E7CC0];
            do
            {
              if (v61 >= *(v36 + 2))
              {
                goto LABEL_116;
              }

              v64 = *v62;
              v65 = *(*v62 + 16);
              v66 = *(v63 + 2);
              v67 = v66 + v65;
              if (__OFADD__(v66, v65))
              {
                goto LABEL_117;
              }

              v68 = swift_isUniquelyReferenced_nonNull_native();
              if (v68 && v67 <= *(v63 + 3) >> 1)
              {
                if (!*(v64 + 16))
                {
                  goto LABEL_57;
                }
              }

              else
              {
                if (v66 <= v67)
                {
                  v69 = v66 + v65;
                }

                else
                {
                  v69 = v66;
                }

                v63 = sub_1D6991114(v68, v69, 1, v63);
                if (!*(v64 + 16))
                {
LABEL_57:

                  if (v65)
                  {
                    goto LABEL_118;
                  }

                  goto LABEL_58;
                }
              }

              if ((*(v63 + 3) >> 1) - *(v63 + 2) < v65)
              {
                goto LABEL_124;
              }

              swift_arrayInitWithCopy();

              if (v65)
              {
                v70 = *(v63 + 2);
                v27 = __OFADD__(v70, v65);
                v71 = v70 + v65;
                if (v27)
                {
                  goto LABEL_128;
                }

                *(v63 + 2) = v71;
              }

LABEL_58:
              ++v61;
              v62 += 16;
            }

            while (v38 != v61);
          }

LABEL_106:

          sub_1D72626AC();

          return v99;
        }

        if (v38)
        {
          v50 = 0;
          v51 = v36 + 32;
          v52 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            if (v50 >= *(v36 + 2))
            {
              goto LABEL_111;
            }

            v53 = *v51;
            v54 = *(*v51 + 16);
            v55 = *(v52 + 2);
            v56 = v55 + v54;
            if (__OFADD__(v55, v54))
            {
              goto LABEL_113;
            }

            v57 = swift_isUniquelyReferenced_nonNull_native();
            if (v57 && v56 <= *(v52 + 3) >> 1)
            {
              if (!*(v53 + 16))
              {
                goto LABEL_39;
              }
            }

            else
            {
              if (v55 <= v56)
              {
                v58 = v55 + v54;
              }

              else
              {
                v58 = v55;
              }

              v52 = sub_1D6991238(v57, v58, 1, v52);
              if (!*(v53 + 16))
              {
LABEL_39:

                if (v54)
                {
                  goto LABEL_115;
                }

                goto LABEL_40;
              }
            }

            if ((*(v52 + 3) >> 1) - *(v52 + 2) < v54)
            {
              goto LABEL_123;
            }

            swift_arrayInitWithCopy();

            if (v54)
            {
              v59 = *(v52 + 2);
              v27 = __OFADD__(v59, v54);
              v60 = v59 + v54;
              if (v27)
              {
                goto LABEL_127;
              }

              *(v52 + 2) = v60;
            }

LABEL_40:
            ++v50;
            v51 += 16;
            if (v38 == v50)
            {
              goto LABEL_74;
            }
          }
        }

        v52 = MEMORY[0x1E69E7CC0];
LABEL_74:
        v72 = *(v52 + 2);
        if (v72)
        {
          v73 = 0;
          v74 = v52 + 40;
          v75 = MEMORY[0x1E69E7CC0];
          v97 = v52 + 40;
          v98 = v72;
          do
          {
            v99 = v75;
            v76 = v72 - v73;
            v77 = &v74[16 * v73];
            while (1)
            {
              if (v73 >= *(v52 + 2))
              {
                goto LABEL_109;
              }

              v78 = *(v77 - 1);
              v79 = *v77;
              v100 = *v77;

              if (sub_1D6EE6930())
              {
                break;
              }

              v77 += 16;
              ++v73;
              if (!--v76)
              {
                goto LABEL_88;
              }
            }

            v75 = v99;
            v80 = swift_isUniquelyReferenced_nonNull_native();
            v101 = v75;
            if ((v80 & 1) == 0)
            {
              sub_1D6998414(0, *(v75 + 16) + 1, 1);
              v75 = v101;
            }

            v82 = *(v75 + 16);
            v81 = *(v75 + 24);
            if (v82 >= v81 >> 1)
            {
              sub_1D6998414((v81 > 1), v82 + 1, 1);
              v75 = v101;
            }

            ++v73;
            *(v75 + 16) = v82 + 1;
            v83 = v75 + 16 * v82;
            *(v83 + 32) = v78;
            *(v83 + 40) = v79;
            v74 = v97;
            v72 = v98;
          }

          while (v76 != 1);
        }

LABEL_88:

        v99 = sub_1D72626AC();

        if (!v38)
        {
          goto LABEL_106;
        }

        v84 = 0;
        v85 = v36 + 40;
        v86 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v84 >= *(v36 + 2))
          {
            goto LABEL_119;
          }

          v87 = *v85;
          v88 = *(*v85 + 16);
          v89 = *(v86 + 2);
          v90 = v89 + v88;
          if (__OFADD__(v89, v88))
          {
            goto LABEL_120;
          }

          v91 = swift_isUniquelyReferenced_nonNull_native();
          if (v91 && v90 <= *(v86 + 3) >> 1)
          {
            if (!*(v87 + 16))
            {
              goto LABEL_90;
            }
          }

          else
          {
            if (v89 <= v90)
            {
              v92 = v89 + v88;
            }

            else
            {
              v92 = v89;
            }

            v86 = sub_1D6991114(v91, v92, 1, v86);
            if (!*(v87 + 16))
            {
LABEL_90:

              if (v88)
              {
                goto LABEL_121;
              }

              goto LABEL_91;
            }
          }

          if ((*(v86 + 3) >> 1) - *(v86 + 2) < v88)
          {
            goto LABEL_125;
          }

          swift_arrayInitWithCopy();

          if (v88)
          {
            v93 = *(v86 + 2);
            v27 = __OFADD__(v93, v88);
            v94 = v93 + v88;
            if (v27)
            {
              goto LABEL_129;
            }

            *(v86 + 2) = v94;
          }

LABEL_91:
          ++v84;
          v85 += 16;
          if (v38 == v84)
          {
            goto LABEL_106;
          }
        }
      }

      if (v16 >= v14)
      {
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
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
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
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
        goto LABEL_132;
      }

      v12 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_108;
      }

      v17 = *(v9 + 8 * v16++ + 32);
    }

    while (((v17 >> 59) & 0x1E | (v17 >> 2) & 1) != 8);
    v98 = v13;
    v99 = v6;
    v18 = v17 & 0xFFFFFFFFFFFFFFBLL;
    v19 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v20 = *(v19 + 48);
    v21 = *(v19 + 56);
    swift_retain_n();
    v97 = v18;

    v22 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v15;
    v23 = sub_1D5B69D90(v20, v21);
    v25 = v15[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_130;
    }

    v29 = v24;
    if (v15[3] < v28)
    {
      break;
    }

    if (v22)
    {
      goto LABEL_12;
    }

    v32 = v23;
    sub_1D6D80848();
    v23 = v32;
    if (v29)
    {
LABEL_13:
      v31 = v23;

      v15 = v101;
      *(v101[7] + 8 * v31) = v19;

      goto LABEL_17;
    }

LABEL_15:
    v15 = v101;
    v101[(v23 >> 6) + 8] |= 1 << v23;
    v33 = (v15[6] + 16 * v23);
    *v33 = v20;
    v33[1] = v21;
    *(v15[7] + 8 * v23) = v19;

    v34 = v15[2];
    v27 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v27)
    {
      goto LABEL_131;
    }

    v15[2] = v35;
LABEL_17:

    v13 = v98;
    v6 = v99;
  }

  sub_1D6D6A3E4(v28, v22);
  v23 = sub_1D5B69D90(v20, v21);
  if ((v29 & 1) == (v30 & 1))
  {
LABEL_12:
    if (v29)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

LABEL_132:
  result = sub_1D726493C();
  __break(1u);
  return result;
}