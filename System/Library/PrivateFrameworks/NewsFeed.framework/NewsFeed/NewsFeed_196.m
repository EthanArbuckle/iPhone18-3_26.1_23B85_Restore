uint64_t sub_1D6D32DCC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v40 = a4;
  LODWORD(v43) = a2;
  v42 = sub_1D72585BC();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v42, v8);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v37 - v11;
  v44 = type metadata accessor for DebugFormatManagerIndex();
  MEMORY[0x1EEE9AC00](v44, v13);
  v39 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D4635C(0, &qword_1EC8954A8, type metadata accessor for DebugFormatFileDirectory, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v37 - v17;
  v19 = type metadata accessor for DebugFormatFileDirectory(0);
  v20 = *(v19 - 8);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v43)
  {
    v38 = a1;
    LODWORD(v43) = a3;
    sub_1D71117E0(a3 & 1, &unk_1F5119808, v18);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_1D6D494BC(v18, &qword_1EC8954A8, type metadata accessor for DebugFormatFileDirectory);
    }

    else
    {
      sub_1D6D47A1C(v18, v24);
      if (*(*v24 + 16))
      {
        sub_1D6D49454(v24, v39, type metadata accessor for DebugFormatFileDirectory);
        swift_storeEnumTagMultiPayload();
        sub_1D6D4635C(0, &qword_1EC895490, type metadata accessor for DebugFormatManagerIndex, MEMORY[0x1E69D6B18]);
        swift_allocObject();
        v25 = sub_1D725BB1C();
        sub_1D6D49218(v24, type metadata accessor for DebugFormatFileDirectory);
        return v25;
      }

      sub_1D6D49218(v24, type metadata accessor for DebugFormatFileDirectory);
    }

    LOBYTE(a3) = v43;
    a1 = v38;
  }

  v26 = *(a1 + 48);
  if (a3)
  {
    v27 = sub_1D725849C();
    v29 = v42;
  }

  else
  {
    v29 = v42;
    v27 = (*(v6 + 16))(v12, v40, v42, v22);
  }

  MEMORY[0x1EEE9AC00](v27, v28);
  *(&v37 - 4) = v26;
  *(&v37 - 3) = v12;
  v43 = v26;
  *(&v37 - 2) = &unk_1F5119830;
  sub_1D725BDCC();
  *(swift_allocObject() + 16) = &unk_1F5119830;
  v30 = sub_1D725B92C();
  sub_1D6D48B84(0);
  sub_1D725BA8C();

  v31 = v41;
  (*(v6 + 16))(v41, v12, v29);
  v32 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = 10;
  (*(v6 + 32))(v33 + v32, v31, v29);
  *(v33 + ((v7 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = &unk_1F5119830;
  v34 = sub_1D725B92C();
  type metadata accessor for DebugFormatService();
  sub_1D725BB7C();

  (*(v6 + 8))(v12, v29);
  v35 = sub_1D725B92C();
  v25 = sub_1D725BA8C();

  return v25;
}

uint64_t sub_1D6D333A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6D49454(a1, a2, type metadata accessor for DebugFormatFileDirectory);
  type metadata accessor for DebugFormatManagerIndex();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6D33400(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v7 = type metadata accessor for DebugFormatManagerIndex();
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v24 - v13;
  v15 = type metadata accessor for DebugFormatFileDirectory(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    sub_1D6D49454(a1, v14, type metadata accessor for DebugFormatManagerIndex);
    sub_1D6D47A1C(v14, v18);
    sub_1D6D336A8(v18, a4 & 1);
    sub_1D6D49218(v18, type metadata accessor for DebugFormatFileDirectory);
    sub_1D6D49454(a1, v10, type metadata accessor for DebugFormatManagerIndex);
    v19 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v20 = swift_allocObject();
    sub_1D6D491B0(v10, v20 + v19, type metadata accessor for DebugFormatManagerIndex);
    v21 = sub_1D725B92C();
    v22 = sub_1D725BA8C();

    return v22;
  }

  else
  {
    sub_1D6D49454(a1, v10, type metadata accessor for DebugFormatManagerIndex);
    sub_1D6D4635C(0, &qword_1EC895490, type metadata accessor for DebugFormatManagerIndex, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }
}

uint64_t sub_1D6D336A8(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1D7263D4C();

    type metadata accessor for DebugFormatFileDirectory(0);
    v2 = sub_1D6E56610();
    MEMORY[0x1DA6F9910](v2);

    if (qword_1EC87D498 != -1)
    {
      swift_once();
    }

    sub_1D5F5EBA0(2, 0, 0, 0xD00000000000002BLL, 0x80000001D73F1C20);

    MEMORY[0x1EEE9AC00](v3, v4);
    sub_1D6D4635C(0, &qword_1EC895498, sub_1D6D47994, MEMORY[0x1E69E6720]);
    sub_1D725BDCC();
    v5 = sub_1D725B92C();
  }

  else
  {
    sub_1D7263D4C();

    type metadata accessor for DebugFormatFileDirectory(0);
    v6 = sub_1D6E56610();
    MEMORY[0x1DA6F9910](v6);

    if (qword_1EC87D498 != -1)
    {
      swift_once();
    }

    sub_1D5F5EBA0(2, 0, 0, 0xD000000000000024, 0x80000001D73F1C50);

    MEMORY[0x1EEE9AC00](v7, v8);
    sub_1D6D4635C(0, &qword_1EC895498, sub_1D6D47994, MEMORY[0x1E69E6720]);
    sub_1D725BDCC();
    v5 = sub_1D725B92C();
  }

  v9 = sub_1D725BAAC();

  return v9;
}

uint64_t sub_1D6D33A14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = type metadata accessor for DebugFormatManagerIndex();
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v24 - v13;
  v15 = type metadata accessor for DebugFormatFileDirectory(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = (&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6D49454(a1, v14, type metadata accessor for DebugFormatManagerIndex);
  sub_1D6D47A1C(v14, v18);
  sub_1D6D33C7C(a3, v18, a4 & 1);
  sub_1D6D49218(v18, type metadata accessor for DebugFormatFileDirectory);
  sub_1D6D49454(a1, v10, type metadata accessor for DebugFormatManagerIndex);
  v19 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v20 = swift_allocObject();
  sub_1D6D491B0(v10, v20 + v19, type metadata accessor for DebugFormatManagerIndex);
  v21 = sub_1D725B92C();
  sub_1D6D48490(0, &qword_1EC895460, type metadata accessor for DebugFormatManagerIndex, sub_1D6D47FBC);
  v22 = sub_1D725BA8C();

  return v22;
}

uint64_t sub_1D6D33C7C(uint64_t a1, uint64_t *a2, char a3)
{
  v7 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v31 - v14;
  v16 = type metadata accessor for DebugFormatCacheFileMetadata();
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DebugFormatFileDirectory(0);
  sub_1D6D49454(a2 + *(v21 + 20), v15, type metadata accessor for DebugFormatFileDirectoryMetadata);
  v22 = sub_1D725BD1C();
  (*(*(v22 - 8) + 16))(v20, v15, v22);
  sub_1D6D49454(v15, v11, type metadata accessor for DebugFormatFileDirectoryMetadata);
  if (v11[*(v8 + 44)])
  {
    v23 = &unk_1F5119858;
  }

  else
  {
    v23 = &unk_1F5119880;
  }

  sub_1D6D49218(v11, type metadata accessor for DebugFormatFileDirectoryMetadata);
  sub_1D6D49218(v15, type metadata accessor for DebugFormatFileDirectoryMetadata);
  *&v20[*(v17 + 28)] = v23;
  v24 = a3 & 1;
  v25 = sub_1D6D34CA0(a2, v24, v20);
  v27 = v26;
  if (*(v25 + 16))
  {
    MEMORY[0x1EEE9AC00](v25, v26);
    v31[-6] = v28;
    LOBYTE(v31[-5]) = v24;
    v31[-4] = a1;
    v31[-3] = v3;
    v31[-2] = v20;
    v31[-1] = v27;
    sub_1D6D4818C();
    v29 = sub_1D725BDCC();
  }

  else
  {

    v31[1] = MEMORY[0x1E69E7CC0];
    v31[2] = v27;
    v31[3] = MEMORY[0x1E69E7CC0];
    sub_1D6D4635C(0, &qword_1EC895478, sub_1D6D4818C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v29 = sub_1D725BB1C();
  }

  sub_1D6D49218(v20, type metadata accessor for DebugFormatCacheFileMetadata);
  return v29;
}

uint64_t sub_1D6D33F70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  sub_1D6D48490(0, &qword_1EC895460, type metadata accessor for DebugFormatManagerIndex, sub_1D6D47FBC);
  v9 = (a3 + *(v8 + 48));
  sub_1D6D49454(a2, a3, type metadata accessor for DebugFormatManagerIndex);
  *v9 = v5;
  v9[1] = v6;
  v9[2] = v7;
}

uint64_t sub_1D6D3403C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v49 = a6;
  v57 = a5;
  v58 = a3;
  v51 = a4;
  v55 = a2;
  v56 = a1;
  v54 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  MEMORY[0x1EEE9AC00](v54, v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DebugFormatFileDirectory(0);
  MEMORY[0x1EEE9AC00](v53, v9);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v48 - v13;
  sub_1D6D48490(0, &qword_1EC895460, type metadata accessor for DebugFormatManagerIndex, sub_1D6D47FBC);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v48 - v18;
  v52 = type metadata accessor for DebugFormatManagerIndex();
  MEMORY[0x1EEE9AC00](v52, v20);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v48 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v48 - v29;
  sub_1D6D485F4(v56, v19, &qword_1EC895460, type metadata accessor for DebugFormatManagerIndex, sub_1D6D47FBC, sub_1D6D48490);
  v31 = &v19[*(v16 + 56)];
  v33 = *v31;
  v32 = v31[1];
  v34 = v31[2];
  sub_1D6D491B0(v19, v30, type metadata accessor for DebugFormatManagerIndex);
  if ((v58 & 1) != 0 || (v51 & 1) != 0 || *(v33 + 16))
  {
  }

  else
  {
    v46 = *(v32 + 16);

    if (!v46)
    {

      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      sub_1D6D49454(v30, v47, type metadata accessor for DebugFormatManagerIndex);
      swift_storeEnumTagMultiPayload();
      goto LABEL_14;
    }
  }

  sub_1D6D49454(v30, v26, type metadata accessor for DebugFormatManagerIndex);
  sub_1D6D47A1C(v26, v14);
  sub_1D6D49454(&v14[*(v53 + 20)], v8, type metadata accessor for DebugFormatFileDirectoryMetadata);
  sub_1D6D49218(v14, type metadata accessor for DebugFormatFileDirectory);
  if (v8[*(v54 + 36)])
  {
    v35 = &unk_1F51198A8;
  }

  else
  {
    v35 = &unk_1F51198D0;
  }

  sub_1D6D49218(v8, type metadata accessor for DebugFormatFileDirectoryMetadata);
  sub_1D6D49454(v30, v22, type metadata accessor for DebugFormatManagerIndex);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = v50;
    sub_1D6D47A1C(v22, v50);
    v37 = v57 & 1;
    sub_1D7111E38(v36, v37, v35);
    sub_1D6D49218(v36, type metadata accessor for DebugFormatFileDirectory);
  }

  else
  {
    sub_1D6D49218(v22, type metadata accessor for DebugFormatManagerIndex);
    v37 = v57 & 1;
  }

  v38 = sub_1D6D345A0(v33, v37, v35);

  if (*(v34 + 16))
  {

    if (*(v34 + 16))
    {
      v40 = *(v34 + 32);

LABEL_14:
      swift_willThrow();
      return sub_1D6D49218(v30, type metadata accessor for DebugFormatManagerIndex);
    }

    __break(1u);
  }

  else
  {

    sub_1D6D478DC();
    v42 = *(v41 + 48);
    v43 = *(v41 + 64);
    v44 = v30;
    v45 = v49;
    result = sub_1D6D491B0(v44, v49, type metadata accessor for DebugFormatManagerIndex);
    *(v45 + v42) = v38;
    *(v45 + v43) = v33;
  }

  return result;
}

uint64_t sub_1D6D345A0(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v64 = a3;
  LODWORD(v5) = a2;
  v7 = type metadata accessor for DebugFormatCacheFile();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v65 = &v59 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v59 - v16);
  v18 = *(v3 + 16);
  sub_1D725A76C();
  v19 = *(a1 + 16);
  if (v19)
  {
    v59 = v18;
    v62 = (v4 + 32);
    v63 = (v4 + 24);
    v20 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v21 = *(v8 + 72);
    v60 = v5;
    v61 = v21;
    do
    {
      sub_1D6D49454(v20, v17, type metadata accessor for DebugFormatCacheFile);
      v23 = *v17;
      v22 = v17[1];
      if (v5)
      {
        v24 = v62;
        swift_beginAccess();
        sub_1D6D49454(v17, v66, type metadata accessor for DebugFormatCacheFile);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = *v24;
        v26 = v67;
        *v24 = 0x8000000000000000;
        v27 = sub_1D5B69D90(v23, v22);
        v29 = v26[2];
        v30 = (v28 & 1) == 0;
        v31 = __OFADD__(v29, v30);
        v32 = v29 + v30;
        if (v31)
        {
          goto LABEL_35;
        }

        v33 = v28;
        if (v26[3] >= v32)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v55 = v27;
            sub_1D6D83E4C();
            v27 = v55;
          }
        }

        else
        {
          sub_1D6D70CA4(v32, isUniquelyReferenced_nonNull_native);
          v27 = sub_1D5B69D90(v23, v22);
          if ((v33 & 1) != (v34 & 1))
          {
            goto LABEL_38;
          }
        }

        v46 = v61;
        v47 = v67;
        if (v33)
        {
          sub_1D67D381C(v66, v67[7] + v27 * v61);
        }

        else
        {
          v67[(v27 >> 6) + 8] |= 1 << v27;
          v48 = (v47[6] + 16 * v27);
          *v48 = v23;
          v48[1] = v22;
          sub_1D6D491B0(v66, v47[7] + v27 * v46, type metadata accessor for DebugFormatCacheFile);
          v49 = v47[2];
          v31 = __OFADD__(v49, 1);
          v50 = v49 + 1;
          if (v31)
          {
            goto LABEL_36;
          }

          v47[2] = v50;
        }

        *v62 = v47;

        swift_endAccess();
      }

      else
      {
        v5 = v4;
        v35 = v63;
        swift_beginAccess();
        sub_1D6D49454(v17, v65, type metadata accessor for DebugFormatCacheFile);
        v36 = swift_isUniquelyReferenced_nonNull_native();
        v67 = *v35;
        v37 = v67;
        *v35 = 0x8000000000000000;
        v39 = sub_1D5B69D90(v23, v22);
        v40 = v37[2];
        v41 = (v38 & 1) == 0;
        v42 = v40 + v41;
        if (__OFADD__(v40, v41))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          result = sub_1D726493C();
          __break(1u);
          return result;
        }

        v43 = v38;
        if (v37[3] >= v42)
        {
          if ((v36 & 1) == 0)
          {
            sub_1D6D83E4C();
          }
        }

        else
        {
          sub_1D6D70CA4(v42, v36);
          v44 = sub_1D5B69D90(v23, v22);
          if ((v43 & 1) != (v45 & 1))
          {
            goto LABEL_38;
          }

          v39 = v44;
        }

        v46 = v61;
        v51 = v67;
        if (v43)
        {
          sub_1D67D381C(v65, v67[7] + v39 * v61);
        }

        else
        {
          v67[(v39 >> 6) + 8] |= 1 << v39;
          v52 = (v51[6] + 16 * v39);
          *v52 = v23;
          v52[1] = v22;
          sub_1D6D491B0(v65, v51[7] + v39 * v46, type metadata accessor for DebugFormatCacheFile);
          v53 = v51[2];
          v31 = __OFADD__(v53, 1);
          v54 = v53 + 1;
          if (v31)
          {
            goto LABEL_37;
          }

          v51[2] = v54;
        }

        *v63 = v51;

        swift_endAccess();
        v4 = v5;
        LOBYTE(v5) = v60;
      }

      sub_1D7113024(v17, v5 & 1, v64);
      sub_1D6D49218(v17, type metadata accessor for DebugFormatCacheFile);
      v20 += v46;
      --v19;
    }

    while (v19);
    if (v5)
    {
      v56 = v62;
    }

    else
    {
      v56 = v63;
    }
  }

  else if (v5)
  {
    v56 = (v4 + 32);
  }

  else
  {
    v56 = (v4 + 24);
  }

  swift_beginAccess();
  v57 = *v56;

  sub_1D725A77C();
  return v57;
}

uint64_t *sub_1D6D34AB8(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    sub_1D725A76C();
    swift_beginAccess();
    type metadata accessor for DebugFormatCacheFile();
    sub_1D725B73C();
    swift_endAccess();
    sub_1D6D2F930(v1);
    swift_beginAccess();
    sub_1D725B73C();
    swift_endAccess();

    return sub_1D725A77C();
  }

  return result;
}

uint64_t *sub_1D6D34BAC(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    sub_1D725A76C();
    swift_beginAccess();
    type metadata accessor for DebugFormatCacheFile();
    sub_1D725B73C();
    swift_endAccess();
    sub_1D6D2F930(v1);
    swift_beginAccess();
    sub_1D725B73C();
    swift_endAccess();

    return sub_1D725A77C();
  }

  return result;
}

uint64_t sub_1D6D34CA0(uint64_t *a1, char a2, uint64_t a3)
{
  v4 = v3;
  sub_1D6D4635C(0, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v88 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v87 = &v86 - v13;
  v90 = *(v3 + 16);
  sub_1D725A76C();
  v100 = MEMORY[0x1E69E7CD0];
  v14 = *a1;
  v95 = &v100;
  v96 = a2 & 1;
  v97 = v4;
  v98 = a3;

  v89 = sub_1D62EE328(sub_1D6D48870, v94, v14);
  v91 = v4;
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    v51 = *(v4 + 24);
    v54 = *(v51 + 64);
    v53 = v51 + 64;
    v52 = v54;
    v55 = 1 << *(*(v4 + 24) + 32);
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    else
    {
      v56 = -1;
    }

    v57 = v56 & v52;
    v58 = (v55 + 63) >> 6;
    v92 = *(v4 + 24);

    v59 = 0;
    v93 = MEMORY[0x1E69E7CC0];
    if (v57)
    {
      goto LABEL_43;
    }

    do
    {
LABEL_39:
      v60 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        goto LABEL_66;
      }

      if (v60 >= v58)
      {
LABEL_64:

        sub_1D725A77C();
        return v89;
      }

      v57 = *(v53 + 8 * v60);
      ++v59;
    }

    while (!v57);
    v59 = v60;
LABEL_43:
    while (1)
    {
      v61 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
      v62 = (*(v92 + 48) + ((v59 << 10) | (16 * v61)));
      v64 = *v62;
      v63 = v62[1];
      v65 = v100;
      if (!*(v100 + 16))
      {
        break;
      }

      sub_1D7264A0C();

      sub_1D72621EC();
      v66 = sub_1D7264A5C();
      v67 = -1 << *(v65 + 32);
      v68 = v66 & ~v67;
      if ((*(v65 + 56 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68))
      {
        v69 = ~v67;
        while (1)
        {
          v70 = (*(v65 + 48) + 16 * v68);
          v71 = *v70 == v64 && v70[1] == v63;
          if (v71 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v68 = (v68 + 1) & v69;
          if (((*(v65 + 56 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        if (!v57)
        {
          goto LABEL_39;
        }
      }

      else
      {
LABEL_52:
        v72 = v91;
        swift_beginAccess();
        v73 = sub_1D5B69D90(v64, v63);
        if (v74)
        {
          v75 = v73;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v77 = *(v72 + 24);
          v99 = v77;
          *(v72 + 24) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1D6D83E4C();
            v77 = v99;
          }

          v78 = *(v77 + 56);
          v88 = type metadata accessor for DebugFormatCacheFile();
          v86 = *(v88 - 8);
          v79 = v78 + *(v86 + 72) * v75;
          v80 = v87;
          sub_1D6D491B0(v79, v87, type metadata accessor for DebugFormatCacheFile);
          sub_1D6714B34(v75, v77);
          *(v72 + 24) = v77;

          (*(v86 + 56))(v80, 0, 1, v88);
        }

        else
        {
          v81 = type metadata accessor for DebugFormatCacheFile();
          v80 = v87;
          (*(*(v81 - 8) + 56))(v87, 1, 1, v81);
        }

        swift_endAccess();
        sub_1D6D494BC(v80, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D5B858EC(0, *(v93 + 2) + 1, 1, v93);
          v93 = result;
        }

        v83 = *(v93 + 2);
        v82 = *(v93 + 3);
        if (v83 >= v82 >> 1)
        {
          result = sub_1D5B858EC((v82 > 1), v83 + 1, 1, v93);
          v93 = result;
        }

        v84 = v93;
        *(v93 + 2) = v83 + 1;
        v85 = &v84[16 * v83];
        *(v85 + 4) = v64;
        *(v85 + 5) = v63;
        if (!v57)
        {
          goto LABEL_39;
        }
      }
    }

    goto LABEL_52;
  }

  swift_beginAccess();
  v15 = *(v4 + 32);
  v18 = *(v15 + 64);
  v17 = v15 + 64;
  v16 = v18;
  v19 = 1 << *(*(v4 + 32) + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v92 = *(v4 + 32);

  v24 = 0;
  v93 = MEMORY[0x1E69E7CC0];
  if (!v21)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
LABEL_12:
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v27 = (*(v92 + 48) + ((v24 << 10) | (16 * v26)));
      v29 = *v27;
      v28 = v27[1];
      v30 = v100;
      if (!*(v100 + 16))
      {

        goto LABEL_21;
      }

      sub_1D7264A0C();

      sub_1D72621EC();
      v31 = sub_1D7264A5C();
      v32 = -1 << *(v30 + 32);
      v33 = v31 & ~v32;
      if ((*(v30 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
      {
        break;
      }

LABEL_21:
      v37 = v91;
      swift_beginAccess();
      v38 = sub_1D5B69D90(v29, v28);
      if (v39)
      {
        v40 = v38;
        v41 = swift_isUniquelyReferenced_nonNull_native();
        v42 = *(v37 + 32);
        v99 = v42;
        *(v37 + 32) = 0x8000000000000000;
        if (!v41)
        {
          sub_1D6D83E4C();
          v42 = v99;
        }

        v43 = *(v42 + 56);
        v87 = type metadata accessor for DebugFormatCacheFile();
        v86 = *(v87 - 8);
        v44 = v43 + *(v86 + 72) * v40;
        v45 = v88;
        sub_1D6D491B0(v44, v88, type metadata accessor for DebugFormatCacheFile);
        sub_1D6714B34(v40, v42);
        *(v37 + 32) = v42;

        (*(v86 + 56))(v45, 0, 1, v87);
      }

      else
      {
        v46 = type metadata accessor for DebugFormatCacheFile();
        v45 = v88;
        (*(*(v46 - 8) + 56))(v88, 1, 1, v46);
      }

      swift_endAccess();
      sub_1D6D494BC(v45, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D5B858EC(0, *(v93 + 2) + 1, 1, v93);
        v93 = result;
      }

      v48 = *(v93 + 2);
      v47 = *(v93 + 3);
      if (v48 >= v47 >> 1)
      {
        result = sub_1D5B858EC((v47 > 1), v48 + 1, 1, v93);
        v93 = result;
      }

      v49 = v93;
      *(v93 + 2) = v48 + 1;
      v50 = &v49[16 * v48];
      *(v50 + 4) = v29;
      *(v50 + 5) = v28;
      if (!v21)
      {
        goto LABEL_8;
      }
    }

    v34 = ~v32;
    while (1)
    {
      v35 = (*(v30 + 48) + 16 * v33);
      v36 = *v35 == v29 && v35[1] == v28;
      if (v36 || (sub_1D72646CC() & 1) != 0)
      {
        break;
      }

      v33 = (v33 + 1) & v34;
      if (((*(v30 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  while (v21);
LABEL_8:
  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v22)
    {
      goto LABEL_64;
    }

    v21 = *(v17 + 8 * v25);
    ++v24;
    if (v21)
    {
      v24 = v25;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_1D6D355B4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1D72626EC();
  v16[16] = a2 & 1;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  sub_1D5ECD96C(sub_1D6D48298, v16, v11);

  v12 = sub_1D725B92C();
  type metadata accessor for DebugFormatCacheFile();
  sub_1D725BEFC();

  *(swift_allocObject() + 16) = a6;

  v13 = sub_1D725B92C();
  sub_1D6D4818C();
  v14 = sub_1D725BA8C();

  return v14;
}

uint64_t sub_1D6D35734@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v82 = a5;
  v89 = a4;
  v90 = a3;
  v7 = type metadata accessor for DebugFormatCacheFileMetadata();
  v77 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v87 = v9;
  v80 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1D72585BC();
  v76 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v10);
  v75 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v68 - v14;
  v86 = v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v68 - v19;
  v21 = *a1;
  v22 = a1[1];
  v23 = a1[2];
  v88 = *(a1 + 24);
  v91 = 0;
  v92 = 0xE000000000000000;
  sub_1D7263D4C();

  v91 = 0x676E696863746546;
  v92 = 0xE900000000000020;
  v81 = a2;
  if (a2)
  {
    v24 = 0x636170736B726F77;
  }

  else
  {
    v24 = 0x6567616B636170;
  }

  if (a2)
  {
    v25 = 0xEA00000000007365;
  }

  else
  {
    v25 = 0xE700000000000000;
  }

  MEMORY[0x1DA6F9910](v24, v25);

  MEMORY[0x1DA6F9910](0x2F3D68746170202CLL, 0xE800000000000000);
  MEMORY[0x1DA6F9910](v21, v22);
  v26 = v91;
  v27 = v92;
  if (qword_1EC87D498 != -1)
  {
    v67 = v91;
    swift_once();
    v26 = v67;
  }

  sub_1D5F5EBA0(2, 0, 0, v26, v27);

  v84 = v21;
  v72 = v22;
  sub_1D725849C();
  v28 = v75;
  sub_1D725849C();
  sub_1D725849C();
  v29 = v76;
  v30 = *(v76 + 8);
  v78 = v76 + 8;
  v79 = v30;
  v31 = v83;
  v32 = v30(v28, v83);
  v73 = *(v90 + 48);
  v33 = *(v89 + *(v7 + 20));
  MEMORY[0x1EEE9AC00](v32, v34);
  v68[-4] = v35;
  v68[-3] = v15;
  v68[-2] = v33;
  sub_1D725BDCC();
  v36 = swift_allocObject();
  v85 = v20;
  *(v36 + 16) = v33;

  v37 = sub_1D725B92C();
  v38 = v15;
  v74 = v15;
  v39 = v37;
  sub_1D6D48318();
  v68[1] = sub_1D725BA8C();

  v69 = *(v29 + 16);
  v40 = v28;
  v69(v28, v38, v31);
  v41 = *(v29 + 80);
  v42 = (v41 + 24) & ~v41;
  v71 = v41 | 7;
  v43 = (v86 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = 10;
  v70 = *(v29 + 32);
  v70(v44 + v42, v40, v31);
  *(v44 + v43) = v33;

  v45 = sub_1D725B92C();
  type metadata accessor for DebugFormatService();
  v76 = sub_1D725BB7C();

  v46 = v40;
  v47 = v31;
  v69(v40, v85, v31);
  v73 = type metadata accessor for DebugFormatCacheFileMetadata;
  v48 = v80;
  sub_1D6D49454(v89, v80, type metadata accessor for DebugFormatCacheFileMetadata);
  v49 = (v41 + 41) & ~v41;
  v50 = *(v77 + 80);
  v51 = (v49 + v86 + v50) & ~v50;
  v52 = swift_allocObject();
  v53 = v72;
  *(v52 + 16) = v84;
  *(v52 + 24) = v53;
  *(v52 + 32) = v23;
  *(v52 + 40) = v88;
  v70(v52 + v49, v46, v47);
  sub_1D6D491B0(v48, v52 + v51, type metadata accessor for DebugFormatCacheFileMetadata);
  v54 = v53;

  v55 = sub_1D725B92C();
  sub_1D6D48490(0, &qword_1EC895488, sub_1D60CF7A4, sub_1D6D48318);
  v86 = type metadata accessor for DebugFormatManager();
  sub_1D725BA9C();

  sub_1D6D49454(v89, v48, v73);
  v56 = (v50 + 49) & ~v50;
  v57 = swift_allocObject();
  LOBYTE(v53) = v81 & 1;
  *(v57 + 16) = v81 & 1;
  v58 = v84;
  *(v57 + 24) = v84;
  *(v57 + 32) = v54;
  v59 = v54;
  *(v57 + 40) = v23;
  LOBYTE(v54) = v88;
  *(v57 + 48) = v88;
  sub_1D6D491B0(v48, v57 + v56, type metadata accessor for DebugFormatCacheFileMetadata);

  v60 = sub_1D725B92C();
  type metadata accessor for DebugFormatCacheFile();
  sub_1D725BAAC();

  v61 = swift_allocObject();
  *(v61 + 16) = v53;
  *(v61 + 24) = v58;
  *(v61 + 32) = v59;
  *(v61 + 40) = v23;
  *(v61 + 48) = v54;

  v62 = sub_1D725B92C();
  v63 = sub_1D725BACC();

  v64 = v83;
  v65 = v79;
  v79(v85, v83);
  result = v65(v74, v64);
  *v82 = v63;
  return result;
}

uint64_t sub_1D6D35F58(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, double a8)
{
  v32 = a6;
  v34 = sub_1D72585BC();
  v15 = *(v34 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v34, v17);
  v18 = a1[1];
  v45 = *a1;
  v46 = v18;
  v47 = *(a1 + 4);
  v44[0] = *(a2 + 16);
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a8;
  v42 = a5;
  v43 = &v45;
  sub_1D725A7BC();

  sub_1D725B7CC();

  v33 = *(a2 + 48);
  v19 = v33;
  v20 = *(a7 + *(type metadata accessor for DebugFormatCacheFileMetadata() + 20));
  v35 = v19;
  v21 = v32;
  v36 = v32;
  v37 = v20;
  sub_1D725BDCC();
  *(swift_allocObject() + 16) = v20;

  v22 = sub_1D725B92C();
  sub_1D60CF7A4();
  sub_1D725BA8C();

  v23 = v34;
  (*(v15 + 16))(&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v34);
  v24 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 10;
  (*(v15 + 32))(v25 + v24, &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  *(v25 + ((v16 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;

  v26 = sub_1D725B92C();
  type metadata accessor for DebugFormatService();
  sub_1D725BB7C();

  v27 = swift_allocObject();
  v28 = v46;
  *(v27 + 16) = v45;
  *(v27 + 32) = v28;
  *(v27 + 48) = v47;
  sub_1D6D49454(&v45, v44, sub_1D6D48318);
  v29 = sub_1D725B92C();
  sub_1D6D48490(0, &qword_1EC895488, sub_1D60CF7A4, sub_1D6D48318);
  v30 = sub_1D725BA8C();

  return v30;
}

uint64_t sub_1D6D36354(uint64_t a1, uint64_t a2, uint64_t a3, char a4, __int128 *a5, double a6)
{
  v13 = *a5;
  *&v12[7] = v13;
  *&v14 = a2;
  *(&v14 + 1) = a3;
  v15 = a6;
  v16 = a4;
  *v17 = *v12;
  *&v17[15] = *(&v13 + 1);
  memset(&v17[23], 0, 32);
  v19 = 0u;
  v20 = 0u;
  v18 = MEMORY[0x1E69E7CC0];
  v21 = 0;
  swift_beginAccess();

  sub_1D5E422A8(&v13, &v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a1 + 40);
  *(a1 + 40) = 0x8000000000000000;
  sub_1D6D7C178(&v14, a2, a3, isUniquelyReferenced_nonNull_native);
  *(a1 + 40) = v11;
  return swift_endAccess();
}

uint64_t sub_1D6D36448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D6D48490(0, &qword_1EC895488, sub_1D60CF7A4, sub_1D6D48318);
  v7 = a3 + *(v6 + 48);
  sub_1D6D49454(a1, a3, sub_1D60CF7A4);
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  return sub_1D6D49454(a2, v10, sub_1D6D48318);
}

uint64_t sub_1D6D36520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v67 = a7;
  v70 = a6;
  v65 = a4;
  v62 = a3;
  v60 = a8;
  v61 = a2;
  v12 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v72 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DebugFormatCacheFile();
  MEMORY[0x1EEE9AC00](v66, v15);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DebugFormatCacheFileMetadata();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v74 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D48490(0, &qword_1EC895488, sub_1D60CF7A4, sub_1D6D48318);
  v22 = v21 - 8;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v60 - v24;
  sub_1D60CF7A4();
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v60 - v32;
  sub_1D6D485F4(a1, v25, &qword_1EC895488, sub_1D60CF7A4, sub_1D6D48318, sub_1D6D48490);
  v34 = &v25[*(v22 + 56)];
  v35 = *(v34 + 1);
  v63 = *v34;
  v64 = v35;
  v36 = *(v34 + 3);
  v68 = *(v34 + 2);
  v69 = v36;
  v71 = *(v34 + 4);
  sub_1D6D491B0(v25, v33, sub_1D60CF7A4);
  v76 = 0;
  v77 = 0xE000000000000000;
  sub_1D7263D4C();

  v76 = 0xD000000000000015;
  v77 = 0x80000001D73F1B90;
  if (v62)
  {
    v37 = 0x636170736B726F77;
  }

  else
  {
    v37 = 0x6567616B636170;
  }

  if (v62)
  {
    v38 = 0xEA00000000007365;
  }

  else
  {
    v38 = 0xE700000000000000;
  }

  MEMORY[0x1DA6F9910](v37, v38);

  MEMORY[0x1DA6F9910](0x3D646E696B202CLL, 0xE700000000000000);
  FormatFile.kind.getter(&v75);
  v39 = FormatFileKind.rawValue.getter();
  MEMORY[0x1DA6F9910](v39);

  MEMORY[0x1DA6F9910](0x2F3D68746170202CLL, 0xE800000000000000);
  v40 = v65;
  MEMORY[0x1DA6F9910]();
  v41 = v76;
  v42 = v77;
  if (qword_1EC87D498 != -1)
  {
    v59 = v76;
    swift_once();
    v41 = v59;
  }

  sub_1D5F5EBA0(2, 0, 0, v41, v42);

  v43 = v74;
  sub_1D6D49454(v67, v74, type metadata accessor for DebugFormatCacheFileMetadata);
  sub_1D6D49454(v33, v29, sub_1D60CF7A4);
  v67 = v33;
  v44 = v66;
  v45 = *(v66 + 28);
  sub_1D6D49454(v43, &v17[v45], type metadata accessor for DebugFormatCacheFileMetadata);
  v46 = *(v44 + 32);
  sub_1D6D49454(v29, &v17[v46], sub_1D60CF7A4);
  v47 = v40;
  *v17 = v40;
  *(v17 + 1) = a5;
  *(v17 + 2) = a9;
  v17[24] = v70 & 1;
  v48 = v64;
  *(v17 + 4) = v63;
  *(v17 + 5) = v48;
  v49 = v72;
  sub_1D6D49454(v29, v72, type metadata accessor for FormatFile);
  v76 = 47;
  v77 = 0xE100000000000000;

  MEMORY[0x1DA6F9910](v47, a5);
  v50 = v73;
  v51 = sub_1D70E46A0(v49, v76, v77);
  if (v50)
  {

    sub_1D5B952F8(v68, v69);

    sub_1D6D49218(v29, sub_1D60CF7A4);
    sub_1D6D49218(v74, type metadata accessor for DebugFormatCacheFileMetadata);
    sub_1D6D49218(v67, sub_1D60CF7A4);

    sub_1D6D49218(&v17[v45], type metadata accessor for DebugFormatCacheFileMetadata);
    v52 = &v17[v46];
  }

  else
  {
    v53 = v51;
    sub_1D6D49218(v29, sub_1D60CF7A4);
    sub_1D6D49218(v74, type metadata accessor for DebugFormatCacheFileMetadata);
    *(v17 + 6) = v53;
    v54 = v60;
    v55 = sub_1D6D491B0(v17, v60, type metadata accessor for DebugFormatCacheFile);
    v76 = *(v61 + 16);
    MEMORY[0x1EEE9AC00](v55, v56);
    *(&v60 - 2) = v57;
    *(&v60 - 1) = v54;
    sub_1D725A7BC();

    sub_1D725B7CC();

    sub_1D5B952F8(v68, v69);

    v52 = v67;
  }

  return sub_1D6D49218(v52, sub_1D60CF7A4);
}

uint64_t sub_1D6D36BB4(uint64_t a1, uint64_t *a2)
{
  v32 = a1;
  v3 = type metadata accessor for DebugFormatCacheFile();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  sub_1D6D4635C(0, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v29 - v15;
  v17 = a2[1];
  v31 = *a2;
  sub_1D6D49454(a2, &v29 - v15, type metadata accessor for DebugFormatCacheFile);
  (*(v4 + 56))(v16, 0, 1, v3);
  sub_1D6D485F4(v16, v12, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, v8, sub_1D6D4635C);
  if ((*(v4 + 48))(v12, 1, v3) == 1)
  {

    sub_1D6D494BC(v16, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    sub_1D6D494BC(v12, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    sub_1D607F0A4(&v41);
    v18 = v17;
  }

  else
  {
    v18 = v17;
    sub_1D6D491B0(v12, v7, type metadata accessor for DebugFormatCacheFile);
    v20 = *v7;
    v19 = *(v7 + 1);
    v21 = *(v7 + 2);
    v22 = v7[24];
    v23 = *(v7 + 5);
    v30 = *(v7 + 4);
    if (*(v7 + 6))
    {
      swift_beginAccess();

      v25 = sub_1D6C4CF94(v24);
    }

    else
    {

      v25 = MEMORY[0x1E69E7CC0];
    }

    sub_1D6D494BC(v16, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    sub_1D6D49218(v7, type metadata accessor for DebugFormatCacheFile);
    *&v35 = v20;
    *(&v35 + 1) = v19;
    *&v36 = v21;
    BYTE8(v36) = v22;
    *&v37 = v30;
    *(&v37 + 1) = v23;
    v38 = 0u;
    v39 = 0u;
    *(v40 + 8) = 0u;
    *(&v40[1] + 8) = 0u;
    *&v40[0] = v25;
    *(&v40[2] + 1) = 0;
    nullsub_1();
    v45 = v39;
    v46 = v40[0];
    v47 = v40[1];
    v48 = v40[2];
    v41 = v35;
    v42 = v36;
    v43 = v37;
    v44 = v38;
  }

  v26 = v32;
  swift_beginAccess();
  v34[4] = v45;
  v34[5] = v46;
  v34[6] = v47;
  v34[7] = v48;
  v34[0] = v41;
  v34[1] = v42;
  v34[2] = v43;
  v34[3] = v44;
  if (sub_1D5DEA380(v34) == 1)
  {
    sub_1D607EB94(v31, v18, v33);

    v39 = v33[4];
    v40[0] = v33[5];
    v40[1] = v33[6];
    v40[2] = v33[7];
    v35 = v33[0];
    v36 = v33[1];
    v37 = v33[2];
    v38 = v33[3];
    sub_1D6D48668(&v35, &qword_1EC88DD40, &type metadata for DebugFormatFileSource);
  }

  else
  {
    v39 = v45;
    v40[0] = v46;
    v40[1] = v47;
    v40[2] = v48;
    v35 = v41;
    v36 = v42;
    v37 = v43;
    v38 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v33[0] = *(v26 + 40);
    sub_1D6D7C178(&v35, v31, v18, isUniquelyReferenced_nonNull_native);

    *(v26 + 40) = *&v33[0];
  }

  return swift_endAccess();
}

uint64_t sub_1D6D370A8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73F1C00);
  if (a2)
  {
    v8 = 0x636170736B726F77;
  }

  else
  {
    v8 = 0x6567616B636170;
  }

  if (a2)
  {
    v9 = 0xEA00000000007365;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  MEMORY[0x1DA6F9910](v8, v9);

  MEMORY[0x1DA6F9910](0x2F3D68746170202CLL, 0xE800000000000000);
  MEMORY[0x1DA6F9910](a3, a4);
  MEMORY[0x1DA6F9910](0x3D726F727265202CLL, 0xE800000000000000);
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  sub_1D5F5EBA0(a1, 0, 0, 0, 0xE000000000000000);
}

uint64_t sub_1D6D37258@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  a3[1] = a2;
  a3[2] = v3;
}

uint64_t sub_1D6D3729C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v30 = a5;
  v33 = a4;
  v32 = a3;
  v34 = type metadata accessor for DebugFormatCacheFile();
  v6 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v7);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6720];
  sub_1D6D4635C(0, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v30 - v16;
  v18 = *a1;
  v19 = *(a1 + 8);
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);

  sub_1D5B860D0(&v35, v18, v19);

  sub_1D6D37608(v32 & 1, v33, v18, v19, v17);
  v22 = v9;
  v23 = v34;
  sub_1D6D485F4(v17, v13, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, v22, sub_1D6D4635C);
  if ((*(v6 + 48))(v13, 1, v23) == 1)
  {
    sub_1D6D494BC(v17, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    sub_1D6D494BC(v13, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
  }

  else
  {
    v24 = v31;
    sub_1D6D491B0(v13, v31, type metadata accessor for DebugFormatCacheFile);
    if (*(v24 + 16) == v20 && v21 == *(v24 + 24) && (v25 = v24 + *(v23 + 28), v26 = v30, (sub_1D725BCBC() & 1) != 0))
    {
      v27 = type metadata accessor for DebugFormatCacheFileMetadata();
      v28 = sub_1D670933C(*(v25 + *(v27 + 20)), *(v26 + *(v27 + 20)));
      sub_1D6D494BC(v17, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
      if (v28)
      {
        sub_1D6D49218(v24, type metadata accessor for DebugFormatCacheFile);
        return 0;
      }
    }

    else
    {
      sub_1D6D494BC(v17, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    }

    sub_1D6D49218(v24, type metadata accessor for DebugFormatCacheFile);
  }

  return 1;
}

uint64_t sub_1D6D37608@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a1)
  {
    swift_beginAccess();
    v9 = *(a2 + 32);
    if (!*(v9 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(a2 + 24);
    if (!*(v9 + 16))
    {
LABEL_7:
      v16 = type metadata accessor for DebugFormatCacheFile();
      (*(*(v16 - 8) + 56))(a5, 1, 1, v16);
      return swift_endAccess();
    }
  }

  v10 = sub_1D5B69D90(a3, a4);
  if ((v11 & 1) == 0)
  {
    goto LABEL_7;
  }

  v12 = v10;
  v13 = *(v9 + 56);
  v14 = type metadata accessor for DebugFormatCacheFile();
  v15 = *(v14 - 8);
  sub_1D6D49454(v13 + *(v15 + 72) * v12, a5, type metadata accessor for DebugFormatCacheFile);
  (*(v15 + 56))(a5, 0, 1, v14);
  return swift_endAccess();
}

uint64_t sub_1D6D37788(uint64_t a1, void *a2)
{
  v46 = a2;
  v42 = *a2;
  v3 = type metadata accessor for FormatPackage();
  v41 = *(v3 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v45 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v44 = &v34 - v8;
  v47 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v47, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DebugFormatCacheFile();
  v48 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v43 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v34 - v17;
  v19 = *(a1 + 64);
  v49 = MEMORY[0x1E69E7CC0];
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v39 = v4 + 7;

  v25 = 0;
  while (1)
  {
    v26 = v25;
    if (!v22)
    {
      break;
    }

LABEL_8:
    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    sub_1D6D49454(*(a1 + 56) + *(v48 + 72) * (v27 | (v25 << 6)), v18, type metadata accessor for DebugFormatCacheFile);
    sub_1D6D49454(&v18[*(v12 + 32)], v11, type metadata accessor for FormatFile);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v37 = type metadata accessor for FormatPackage;
      v28 = v44;
      sub_1D6D491B0(v11, v44, type metadata accessor for FormatPackage);
      v38 = v46[10];
      sub_1D6D49454(v28, v45, type metadata accessor for FormatPackage);
      sub_1D6D49454(v18, v43, type metadata accessor for DebugFormatCacheFile);
      v34 = (*(v41 + 80) + 16) & ~*(v41 + 80);
      v35 = (v39 + v34) & 0xFFFFFFFFFFFFFFF8;
      v36 = (*(v48 + 80) + v35 + 8) & ~*(v48 + 80);
      v29 = swift_allocObject();
      sub_1D6D491B0(v45, v29 + v34, v37);
      v30 = v36;
      *(v29 + v35) = a1;
      sub_1D6D491B0(v43, v29 + v30, type metadata accessor for DebugFormatCacheFile);
      type metadata accessor for DebugFormatPackageInventory();

      v38 = sub_1D725BDBC();

      sub_1D6D49218(v44, type metadata accessor for FormatPackage);
      v31 = sub_1D6D49218(v18, type metadata accessor for DebugFormatCacheFile);
      MEMORY[0x1DA6F9CE0](v31);
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v37 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D726272C();
      }

      result = sub_1D726278C();
    }

    else
    {
      sub_1D6D49218(v18, type metadata accessor for DebugFormatCacheFile);
      result = sub_1D6D49218(v11, type metadata accessor for FormatFile);
    }
  }

  while (1)
  {
    v25 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v25 >= v23)
    {

      v32 = sub_1D725B92C();
      type metadata accessor for DebugFormatPackageInventory();
      v33 = sub_1D725BEFC();

      return v33;
    }

    v22 = *(a1 + 64 + 8 * v25);
    ++v26;
    if (v22)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6D37CD0()
{
  sub_1D6D4635C(0, &qword_1EC8954D8, type metadata accessor for DebugFormatPackageInventory, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

uint64_t sub_1D6D37D68(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v21 = a3;
  sub_1D6D4635C(0, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v21 - v16;
  v23[0] = MEMORY[0x1E69E7CD0];
  sub_1D6D49454(a8, &v21 - v16, type metadata accessor for DebugFormatCacheFile);
  v18 = type metadata accessor for DebugFormatCacheFile();
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  v19 = sub_1D6D38070(a6, a7, v17, v23);
  sub_1D6D494BC(v17, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);

  v22 = v19;
  a1(&v22);
}

uint64_t sub_1D6D38070(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v730 = a4;
  v660 = a3;
  v729 = a2;
  v733 = a1;
  v4 = MEMORY[0x1E69E6720];
  sub_1D6D4635C(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v675 = &v628 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v662 = &v628 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v661 = &v628 - v13;
  v680 = sub_1D725BD1C();
  v678 = *(v680 - 8);
  MEMORY[0x1EEE9AC00](v680, v14);
  v670 = &v628 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v674 = &v628 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v673 = &v628 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v677 = &v628 - v24;
  sub_1D5C2AFF4(0, &qword_1EDF450D0, sub_1D5B5931C, &type metadata for FormatCodingEmptyNewsroomStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v697 = &v628 - v27;
  sub_1D6D4635C(0, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, v4);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v684 = &v628 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v681 = &v628 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v686 = &v628 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v687 = &v628 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v690 = &v628 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v692 = &v628 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v693 = &v628 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v696 = &v628 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v659 = &v628 - v54;
  v728 = type metadata accessor for DebugFormatCacheFile();
  v726 = *(v728 - 1);
  MEMORY[0x1EEE9AC00](v728, v55);
  v683 = &v628 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57, v58);
  v682 = &v628 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v685 = &v628 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v688 = &v628 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v689 = &v628 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v691 = &v628 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v694 = &v628 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v695 = &v628 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v649 = &v628 - v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  v648 = &v628 - v83;
  sub_1D5C2AFF4(0, &qword_1EC88F138, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for DebugFormatObject);
  v651 = v84;
  v663 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v85);
  v700 = &v628 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87, v88);
  v698 = &v628 - v89;
  sub_1D5C2AFF4(0, &qword_1EDF338D0, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatObject);
  v699 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90 - 8, v91);
  v708 = &v628 - v92;
  v658 = type metadata accessor for FormatCompilerOptions(0);
  v664 = *(v658 - 1);
  MEMORY[0x1EEE9AC00](v658, v93);
  v647 = &v628 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v95, v96);
  v676 = &v628 - v97;
  MEMORY[0x1EEE9AC00](v98, v99);
  v712 = (&v628 - v100);
  MEMORY[0x1EEE9AC00](v101, v102);
  v646 = &v628 - v103;
  MEMORY[0x1EEE9AC00](v104, v105);
  v657 = &v628 - v106;
  MEMORY[0x1EEE9AC00](v107, v108);
  v727 = (&v628 - v109);
  MEMORY[0x1EEE9AC00](v110, v111);
  v679 = &v628 - v112;
  sub_1D5C2AFF4(0, &qword_1EC88F168, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for DebugFormatObject);
  v655 = v113;
  v665 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v114);
  v703 = &v628 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v116, v117);
  v707 = &v628 - v118;
  sub_1D5C2AFF4(0, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
  v709 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119 - 8, v120);
  v715 = &v628 - v121;
  sub_1D5C2AFF4(0, &qword_1EC88F158, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for DebugFormatObject);
  v656 = v122;
  v666 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122, v123);
  v702 = &v628 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v125, v126);
  v710 = &v628 - v127;
  sub_1D5C2AFF4(0, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
  v711 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128 - 8, v129);
  v717 = &v628 - v130;
  sub_1D5C2AFF4(0, &qword_1EC88F148, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for DebugFormatObject);
  v650 = v131;
  v667 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131, v132);
  v701 = &v628 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v134, v135);
  v713 = &v628 - v136;
  sub_1D5C2AFF4(0, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
  *&v714 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137 - 8, v138);
  v720 = (&v628 - v139);
  sub_1D5C2AFF4(0, &qword_1EC88F178, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for DebugFormatObject);
  v654 = v140;
  v668 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140, v141);
  v704 = &v628 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v143, v144);
  v716 = &v628 - v145;
  sub_1D5C2AFF4(0, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
  v718 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146 - 8, v147);
  v724 = &v628 - v148;
  sub_1D6D48FEC(0, &qword_1EC88F188, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for DebugFormatObject);
  v653 = v149;
  v669 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149, v150);
  v705 = &v628 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v152, v153);
  v719 = &v628 - v154;
  sub_1D6D48FEC(0, &unk_1EDF33820, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for FormatObject);
  v721 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155 - 8, v156);
  v725 = &v628 - v157;
  sub_1D5C2AFF4(0, &qword_1EC88F198, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for DebugFormatObject);
  v652 = v158;
  v671 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158, v159);
  v706 = &v628 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v161, v162);
  v722 = &v628 - v163;
  sub_1D5C2AFF4(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  v723 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164 - 8, v165);
  v167 = (&v628 - v166);
  sub_1D5C2AFF4(0, &qword_1EC88F1A8, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for DebugFormatObject);
  v169 = v168;
  v672 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168, v170);
  v172 = &v628 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v173, v174);
  v176 = &v628 - v175;
  sub_1D5C2AFF4(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
  v178 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177 - 8, v179);
  v181 = &v628 - v180;
  v755 = MEMORY[0x1E69E7CD0];
  v182 = *(v733 + 7);
  v183 = v732;

  v184 = v729;

  v185 = v182;
  v186 = v183;
  v187 = v184;
  v188 = v731;
  v189 = sub_1D6D2F8E0(v185, v186, v184, &v755, v730);
  if (v188)
  {
    v732 = v188;
    goto LABEL_5;
  }

  *&v731 = v181;
  v644 = v172;
  v645 = v178;
  v190 = v176;
  v730 = v167;
  v643 = v169;
  v191 = v189;
  v192 = v733;
  v193 = v187;
  v194 = v732;
  v195 = sub_1D6D43ACC(*(v733 + 8), v187);
  v196 = sub_1D6D43E50(v192[9], v187);
  v197 = sub_1D6D441D4(v192[11], v187);
  v198 = sub_1D6D44540(v192[10], v193);
  v642 = v195;
  v200 = v198;
  v201 = sub_1D6D448C4(v192[14], v193);
  v640 = v196;
  v202 = v201;
  v203 = sub_1D6D44C48(v192[13], v193);
  v634 = v200;
  v635 = v197;
  v204 = v203;
  v205 = sub_1D6D44FCC(v192[12], v193);
  v633 = v202;
  v206 = v205;
  v207 = sub_1D6D45350(v192[19], v193);
  v732 = 0;
  v208 = v207;
  v209 = sub_1D60A5CA4(v191);
  v210 = MEMORY[0x1E69E7CC0];
  v641 = v191;
  v630 = v208;
  v631 = v204;
  v632 = v206;
  v729 = v209;
  if (v209)
  {
    v211 = v209;
    v754[0] = MEMORY[0x1E69E7CC0];
    sub_1D6E76F94(v209);
    if ((v211 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_549;
    }

    if ((v191 & 0xC000000000000001) != 0)
    {
      v214 = 0;
      v215 = v754[0];
      do
      {
        v194 = MEMORY[0x1DA6FB460](v214, v191);
        v216 = (v194[2] + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups);
        swift_beginAccess();
        v217 = v216[1];
        v218 = v216[2];
        v639 = *v216;

        swift_unknownObjectRelease();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v194 = v754;
          sub_1D5D5AEFC(0, *(v215 + 16) + 1, 1);
          v215 = v754[0];
        }

        v220 = *(v215 + 16);
        v219 = *(v215 + 24);
        v193 = v220 + 1;
        if (v220 >= v219 >> 1)
        {
          v194 = v754;
          sub_1D5D5AEFC((v219 > 1), v220 + 1, 1);
          v215 = v754[0];
        }

        ++v214;
        *(v215 + 16) = v193;
        v221 = (v215 + 24 * v220);
        v221[4] = v639;
        v221[5] = v217;
        v221[6] = v218;
        v191 = v641;
      }

      while (v729 != v214);
    }

    else
    {
      v222 = v191 + 32;
      v215 = v754[0];
      v193 = v729;
      do
      {
        v223 = (*(*v222 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups);
        swift_beginAccess();
        v225 = *v223;
        v224 = v223[1];
        v194 = v223[2];

        v639 = v224;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D5D5AEFC(0, *(v215 + 16) + 1, 1);
          v215 = v754[0];
        }

        v191 = *(v215 + 16);
        v226 = *(v215 + 24);
        if (v191 >= v226 >> 1)
        {
          sub_1D5D5AEFC((v226 > 1), v191 + 1, 1);
          v215 = v754[0];
        }

        *(v215 + 16) = v191 + 1;
        v227 = (v215 + 24 * v191);
        v228 = v639;
        v227[4] = v225;
        v227[5] = v228;
        v227[6] = v194;
        v222 += 8;
        --v193;
      }

      while (v193);
    }

    v210 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v215 = MEMORY[0x1E69E7CC0];
  }

  v754[0] = v210;
  v206 = *(v215 + 16);
  if (v206)
  {
    v191 = 0;
    v229 = v215 + 32;
    do
    {
      if (v191 >= *(v215 + 16))
      {
        goto LABEL_532;
      }

      ++v191;
      v229 += 24;

      v194 = v754;
      sub_1D6985AC4(v230);
    }

    while (v206 != v191);
  }

  v629 = v754[0];
  v206 = v642;
  v231 = *(v642 + 16);
  v232 = MEMORY[0x1E69E7CC0];
  if (v231)
  {
    v754[0] = MEMORY[0x1E69E7CC0];
    v639 = v231;
    sub_1D6E77084(v231);
    v206 += (*(v672 + 80) + 32) & ~*(v672 + 80);
    v637 = *(v672 + 72);
    v232 = v754[0];
    v193 = &type metadata for FormatGroup;
    v636 = v190;
    v191 = v731;
    do
    {
      v638 = v232;
      v233 = v636;
      sub_1D6D4906C(v206, v636, &qword_1EC88F1A8, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for DebugFormatObject);
      sub_1D6D4906C(v233, v191, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
      v234 = v233;
      v232 = v638;
      sub_1D6D490E0(v234, &qword_1EC88F1A8, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for DebugFormatObject);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D699A27C(0, *(v232 + 16) + 1, 1);
        v232 = v754[0];
      }

      v236 = *(v232 + 16);
      v235 = *(v232 + 24);
      if (v236 >= v235 >> 1)
      {
        sub_1D699A27C(v235 > 1, v236 + 1, 1);
        v232 = v754[0];
      }

      *(v232 + 16) = v236 + 1;
      v191 = v731;
      sub_1D6D4913C(v731, v232 + ((*(v645 + 80) + 32) & ~*(v645 + 80)) + *(v645 + 72) * v236, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
      v206 += v637;
      --v639;
    }

    while (v639);
  }

  v211 = v729;
  v754[0] = v629;
  v194 = v754;
  sub_1D6985AC4(v232);
  v638 = v754[0];
  v237 = MEMORY[0x1E69E7CC0];
  if (!v211)
  {
    v215 = MEMORY[0x1E69E7CC0];
    goto LABEL_47;
  }

  v753[0] = MEMORY[0x1E69E7CC0];
  sub_1D6E76F7C(v211);
  if ((v211 & 0x8000000000000000) != 0)
  {
LABEL_549:
    __break(1u);
    goto LABEL_550;
  }

  v238 = v641;
  if (sub_1D716A854(v641))
  {
    v206 = v238 + 32;
    v215 = v753[0];
    v193 = v729;
    do
    {
      v194 = *(*v206 + 16);
      v239 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items;
      swift_beginAccess();
      v731 = *(v194 + v239);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = v753;
        sub_1D5D5B830(0, *(v215 + 16) + 1, 1);
        v215 = v753[0];
      }

      v241 = *(v215 + 16);
      v240 = *(v215 + 24);
      v191 = v241 + 1;
      if (v241 >= v240 >> 1)
      {
        v194 = v753;
        sub_1D5D5B830((v240 > 1), v241 + 1, 1);
        v215 = v753[0];
      }

      *(v215 + 16) = v191;
      *(v215 + 16 * v241 + 32) = v731;
      v206 += 8;
      --v193;
    }

    while (v193);
  }

  else
  {
    v191 = 0;
    v193 = v238 & 0xC000000000000001;
    do
    {
      if (v193)
      {
        v194 = MEMORY[0x1DA6FB460](v191, v641);
      }

      else
      {
        v194 = *(v641 + 8 * v191 + 32);
      }

      v410 = v194[2];
      v411 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items;
      swift_beginAccess();
      v731 = *(v410 + v411);

      v215 = v753[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = v753;
        sub_1D5D5B830(0, *(v215 + 16) + 1, 1);
        v215 = v753[0];
      }

      v413 = *(v215 + 16);
      v412 = *(v215 + 24);
      v206 = v413 + 1;
      if (v413 >= v412 >> 1)
      {
        v194 = v753;
        sub_1D5D5B830((v412 > 1), v413 + 1, 1);
        v215 = v753[0];
      }

      ++v191;
      *(v215 + 16) = v206;
      *(v215 + 16 * v413 + 32) = v731;
    }

    while (v729 != v191);
  }

LABEL_47:
  v753[0] = v237;
  v242 = sub_1D60A7ADC(v215);
  if (v242)
  {
    v191 = v242;
    v206 = 0;
    v243 = v215 + 32;
    do
    {
      if (v206 >= *(v215 + 16))
      {
        goto LABEL_533;
      }

      ++v206;
      v243 += 16;

      v194 = v753;
      sub_1D6985A88(v244);
    }

    while (v191 != v206);
  }

  v245 = v753[0];
  v246 = sub_1D60A7ADC(v640);
  if (!v246)
  {
    v258 = MEMORY[0x1E69E7CC0];
    v211 = v729;
    goto LABEL_62;
  }

  v637 = v245;
  v753[0] = MEMORY[0x1E69E7CC0];
  v211 = v246;
  sub_1D6E7706C(v246);
  *&v731 = v211;
  if ((v211 & 0x8000000000000000) != 0)
  {
LABEL_550:
    __break(1u);
    goto LABEL_551;
  }

  v247 = v640 + ((*(v671 + 80) + 32) & ~*(v671 + 80));
  v639 = *(v671 + 72);
  v191 = v753[0];
  v248 = &type metadata for FormatItem;
  v249 = v730;
  do
  {
    v645 = v247;
    v250 = v722;
    sub_1D6D4906C(v247, v722, &qword_1EC88F198, sub_1D5B4AD74, v248, type metadata accessor for DebugFormatObject);
    sub_1D6D4906C(v250, v249, &qword_1EDF338A0, sub_1D5B4AD74, v248, type metadata accessor for FormatObject);
    sub_1D6D490E0(v250, &qword_1EC88F198, sub_1D5B4AD74, v248, type metadata accessor for DebugFormatObject);
    v251 = v248;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D699A25C(0, *(v191 + 16) + 1, 1);
      v191 = v753[0];
    }

    v252 = v723;
    v253 = v731;
    v255 = *(v191 + 16);
    v254 = *(v191 + 24);
    v206 = v255 + 1;
    v249 = v730;
    if (v255 >= v254 >> 1)
    {
      sub_1D699A25C(v254 > 1, v255 + 1, 1);
      v249 = v730;
      v252 = v723;
      v191 = v753[0];
    }

    *(v191 + 16) = v206;
    sub_1D6D4913C(v249, v191 + ((*(v252 + 80) + 32) & ~*(v252 + 80)) + *(v252 + 72) * v255, &qword_1EDF338A0, sub_1D5B4AD74, v251, type metadata accessor for FormatObject);
    v247 = v645 + v639;
    v257 = v253 - 1;
    v256 = v257 == 0;
    *&v731 = v257;
    v248 = v251;
  }

  while (!v256);
  v258 = v191;
  v211 = v729;
  v245 = v637;
LABEL_62:
  v753[0] = v245;
  v194 = v753;
  sub_1D6985A88(v258);
  v259 = MEMORY[0x1E69E7CC0];
  v645 = v753[0];
  if (!v211)
  {
    v215 = MEMORY[0x1E69E7CC0];
    goto LABEL_73;
  }

  v752[0] = MEMORY[0x1E69E7CC0];
  sub_1D6E76F64(v211);
  if ((v211 & 0x8000000000000000) != 0)
  {
LABEL_551:
    __break(1u);
    goto LABEL_552;
  }

  v260 = v641;
  if (sub_1D716A854(v641))
  {
    v206 = v260 + 32;
    v215 = v752[0];
    v261 = v729;
    do
    {
      v194 = *(*v206 + 16);
      v262 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__snippets;
      swift_beginAccess();
      v731 = *(v194 + v262);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = v752;
        sub_1D5D5BEA8(0, *(v215 + 16) + 1, 1);
        v215 = v752[0];
      }

      v264 = *(v215 + 16);
      v263 = *(v215 + 24);
      v191 = v264 + 1;
      if (v264 >= v263 >> 1)
      {
        v194 = v752;
        sub_1D5D5BEA8((v263 > 1), v264 + 1, 1);
        v215 = v752[0];
      }

      *(v215 + 16) = v191;
      *(v215 + 16 * v264 + 32) = v731;
      v206 += 8;
      --v261;
    }

    while (v261);
  }

  else
  {
    v191 = 0;
    v414 = v260 & 0xC000000000000001;
    do
    {
      if (v414)
      {
        v194 = MEMORY[0x1DA6FB460](v191, v641);
      }

      else
      {
        v194 = *(v641 + 8 * v191 + 32);
      }

      v415 = v194[2];
      v416 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__snippets;
      swift_beginAccess();
      v731 = *(v415 + v416);

      v215 = v752[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = v752;
        sub_1D5D5BEA8(0, *(v215 + 16) + 1, 1);
        v215 = v752[0];
      }

      v418 = *(v215 + 16);
      v417 = *(v215 + 24);
      v206 = v418 + 1;
      if (v418 >= v417 >> 1)
      {
        v194 = v752;
        sub_1D5D5BEA8((v417 > 1), v418 + 1, 1);
        v215 = v752[0];
      }

      ++v191;
      *(v215 + 16) = v206;
      *(v215 + 16 * v418 + 32) = v731;
    }

    while (v729 != v191);
  }

LABEL_73:
  v193 = v635;
  v752[0] = v259;
  v265 = sub_1D60A7ADC(v215);
  if (v265)
  {
    v191 = v265;
    v206 = 0;
    v266 = v215 + 32;
    do
    {
      if (v206 >= *(v215 + 16))
      {
        goto LABEL_534;
      }

      ++v206;
      v266 += 16;

      v194 = v752;
      sub_1D6985A40(v267);
    }

    while (v191 != v206);
  }

  v268 = v752[0];
  v269 = sub_1D60A7ADC(v193);
  v270 = MEMORY[0x1E69E7CC0];
  if (!v269)
  {
    v211 = v729;
    goto LABEL_87;
  }

  v211 = v269;
  v730 = v268;
  v752[0] = MEMORY[0x1E69E7CC0];
  sub_1D6E77054(v269);
  if ((v211 & 0x8000000000000000) != 0)
  {
LABEL_552:
    __break(1u);
    goto LABEL_553;
  }

  v191 = v193 + ((*(v669 + 80) + 32) & ~*(v669 + 80));
  *&v731 = *(v669 + 72);
  v270 = v752[0];
  v206 = &qword_1EC88F188;
  v271 = v725;
  do
  {
    v272 = v719;
    sub_1D6D49278(v191, v719, &qword_1EC88F188, type metadata accessor for DebugFormatObject);
    sub_1D6D49278(v272, v271, &unk_1EDF33820, type metadata accessor for FormatObject);
    sub_1D6D493F8(v272, &qword_1EC88F188, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for DebugFormatObject);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D699A20C(0, *(v270 + 16) + 1, 1);
      v270 = v752[0];
    }

    v273 = v721;
    v275 = *(v270 + 16);
    v274 = *(v270 + 24);
    v193 = v275 + 1;
    if (v275 >= v274 >> 1)
    {
      sub_1D699A20C(v274 > 1, v275 + 1, 1);
      v273 = v721;
      v270 = v752[0];
    }

    *(v270 + 16) = v193;
    v276 = v270 + ((*(v273 + 80) + 32) & ~*(v273 + 80)) + *(v273 + 72) * v275;
    v271 = v725;
    sub_1D6D49310(v725, v276, &unk_1EDF33820, type metadata accessor for FormatObject);
    v191 += v731;
    --v211;
  }

  while (v211);
  v211 = v729;
  v268 = v730;
LABEL_87:
  v752[0] = v268;
  v194 = v752;
  sub_1D6985A40(v270);
  v723 = v752[0];
  v277 = MEMORY[0x1E69E7CC0];
  if (!v211)
  {
    v215 = MEMORY[0x1E69E7CC0];
    goto LABEL_98;
  }

  v751[0] = MEMORY[0x1E69E7CC0];
  sub_1D6E76F4C(v211);
  if ((v211 & 0x8000000000000000) != 0)
  {
LABEL_553:
    __break(1u);
    goto LABEL_554;
  }

  v278 = v641;
  if (sub_1D716A854(v641))
  {
    v206 = v278 + 32;
    v215 = v751[0];
    v193 = v729;
    do
    {
      v194 = *(*v206 + 16);
      v279 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles;
      swift_beginAccess();
      v731 = *(v194 + v279);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = v751;
        sub_1D5D5C33C(0, *(v215 + 16) + 1, 1);
        v215 = v751[0];
      }

      v281 = *(v215 + 16);
      v280 = *(v215 + 24);
      v191 = v281 + 1;
      if (v281 >= v280 >> 1)
      {
        v194 = v751;
        sub_1D5D5C33C((v280 > 1), v281 + 1, 1);
        v215 = v751[0];
      }

      *(v215 + 16) = v191;
      *(v215 + 16 * v281 + 32) = v731;
      v206 += 8;
      --v193;
    }

    while (v193);
  }

  else
  {
    v191 = 0;
    v419 = v278 & 0xC000000000000001;
    v193 = &qword_1EDF3EFA0[12];
    do
    {
      if (v419)
      {
        v194 = MEMORY[0x1DA6FB460](v191, v641);
      }

      else
      {
        v194 = *(v641 + 8 * v191 + 32);
      }

      v420 = v194[2];
      v421 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles;
      swift_beginAccess();
      v731 = *(v420 + v421);

      v215 = v751[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = v751;
        sub_1D5D5C33C(0, *(v215 + 16) + 1, 1);
        v215 = v751[0];
      }

      v423 = *(v215 + 16);
      v422 = *(v215 + 24);
      v206 = v423 + 1;
      if (v423 >= v422 >> 1)
      {
        v194 = v751;
        sub_1D5D5C33C((v422 > 1), v423 + 1, 1);
        v215 = v751[0];
      }

      ++v191;
      *(v215 + 16) = v206;
      *(v215 + 16 * v423 + 32) = v731;
    }

    while (v729 != v191);
  }

LABEL_98:
  v282 = v634;
  v751[0] = v277;
  v283 = sub_1D60A7ADC(v215);
  if (v283)
  {
    v191 = v283;
    v206 = 0;
    v284 = v215 + 32;
    do
    {
      if (v206 >= *(v215 + 16))
      {
        goto LABEL_535;
      }

      ++v206;
      v284 += 16;

      v194 = v751;
      sub_1D6985A04(v285);
    }

    while (v191 != v206);
  }

  v286 = v751[0];
  v287 = sub_1D60A7ADC(v282);
  if (!v287)
  {
    v297 = MEMORY[0x1E69E7CC0];
    v211 = v729;
    goto LABEL_113;
  }

  v722 = v286;
  v751[0] = MEMORY[0x1E69E7CC0];
  v211 = v287;
  sub_1D6E7703C(v287);
  *&v731 = v211;
  if ((v211 & 0x8000000000000000) != 0)
  {
LABEL_554:
    __break(1u);
    goto LABEL_555;
  }

  v288 = (v282 + ((*(v668 + 80) + 32) & ~*(v668 + 80)));
  v725 = *(v668 + 72);
  v191 = v751[0];
  v289 = &type metadata for FormatStyle;
  v290 = v724;
  do
  {
    v730 = v288;
    v291 = v716;
    sub_1D6D4906C(v288, v716, &qword_1EC88F178, sub_1D5B4CBD8, v289, type metadata accessor for DebugFormatObject);
    sub_1D6D4906C(v291, v290, &qword_1EDF33860, sub_1D5B4CBD8, v289, type metadata accessor for FormatObject);
    sub_1D6D490E0(v291, &qword_1EC88F178, sub_1D5B4CBD8, v289, type metadata accessor for DebugFormatObject);
    v292 = v289;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D699A1EC(0, *(v191 + 16) + 1, 1);
      v191 = v751[0];
    }

    v293 = v718;
    v294 = v731;
    v206 = *(v191 + 16);
    v295 = *(v191 + 24);
    v290 = v724;
    if (v206 >= v295 >> 1)
    {
      sub_1D699A1EC(v295 > 1, v206 + 1, 1);
      v290 = v724;
      v293 = v718;
      v191 = v751[0];
    }

    *(v191 + 16) = v206 + 1;
    v193 = &qword_1EDF33860;
    sub_1D6D4913C(v290, v191 + ((*(v293 + 80) + 32) & ~*(v293 + 80)) + *(v293 + 72) * v206, &qword_1EDF33860, sub_1D5B4CBD8, v292, type metadata accessor for FormatObject);
    v288 = (v730 + v725);
    v296 = v294 - 1;
    v256 = v296 == 0;
    *&v731 = v296;
    v289 = v292;
  }

  while (!v256);
  v297 = v191;
  v211 = v729;
  v286 = v722;
LABEL_113:
  v751[0] = v286;
  v194 = v751;
  sub_1D6985A04(v297);
  v722 = v751[0];
  if (!v211)
  {
    v215 = MEMORY[0x1E69E7CC0];
    goto LABEL_124;
  }

  v750[0] = MEMORY[0x1E69E7CC0];
  sub_1D6E76F34(v211);
  if ((v211 & 0x8000000000000000) != 0)
  {
LABEL_555:
    __break(1u);
    goto LABEL_556;
  }

  v298 = v641;
  if (sub_1D716A854(v641))
  {
    v206 = v298 + 32;
    v215 = v750[0];
    v299 = v729;
    do
    {
      v194 = *(*v206 + 16);
      v300 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__slots;
      swift_beginAccess();
      v731 = *(v194 + v300);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = v750;
        sub_1D5D5C638(0, *(v215 + 16) + 1, 1);
        v215 = v750[0];
      }

      v193 = *(v215 + 16);
      v301 = *(v215 + 24);
      v191 = v193 + 1;
      if (v193 >= v301 >> 1)
      {
        v194 = v750;
        sub_1D5D5C638((v301 > 1), v193 + 1, 1);
        v215 = v750[0];
      }

      *(v215 + 16) = v191;
      *(v215 + 16 * v193 + 32) = v731;
      v206 += 8;
      --v299;
    }

    while (v299);
  }

  else
  {
    v191 = 0;
    do
    {
      if ((v298 & 0xC000000000000001) != 0)
      {
        v194 = MEMORY[0x1DA6FB460](v191, v298);
      }

      else
      {
        v194 = *(v298 + 8 * v191 + 32);
      }

      v424 = v194[2];
      v425 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__slots;
      swift_beginAccess();
      v731 = *(v424 + v425);

      v215 = v750[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = v750;
        sub_1D5D5C638(0, *(v215 + 16) + 1, 1);
        v215 = v750[0];
      }

      v193 = *(v215 + 16);
      v426 = *(v215 + 24);
      v206 = v193 + 1;
      if (v193 >= v426 >> 1)
      {
        v194 = v750;
        sub_1D5D5C638((v426 > 1), v193 + 1, 1);
        v215 = v750[0];
      }

      ++v191;
      *(v215 + 16) = v206;
      *(v215 + 16 * v193 + 32) = v731;
    }

    while (v729 != v191);
  }

LABEL_124:
  v750[0] = sub_1D663BD64(0);
  v302 = sub_1D60A7ADC(v215);
  if (v302)
  {
    v191 = v302;
    v206 = 0;
    v303 = v215 + 32;
    do
    {
      if (v206 >= *(v215 + 16))
      {
        goto LABEL_536;
      }

      ++v206;
      v303 += 16;

      v194 = v750;
      sub_1D69859BC(v304);
    }

    while (v191 != v206);
  }

  v211 = v729;
  v719 = v750[0];
  if (!v729)
  {
    v215 = sub_1D663BF04(0);
    goto LABEL_139;
  }

  v749[0] = MEMORY[0x1E69E7CC0];
  sub_1D6E76F1C(v729);
  if ((v211 & 0x8000000000000000) != 0)
  {
LABEL_556:
    __break(1u);
    goto LABEL_557;
  }

  v305 = v641;
  if (sub_1D716A854(v641))
  {
    v206 = v305 + 32;
    v215 = v749[0];
    v306 = v729;
    do
    {
      v194 = *(*v206 + 16);
      v307 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__supplementaries;
      swift_beginAccess();
      v731 = *(v194 + v307);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = v749;
        sub_1D5D5CABC(0, *(v215 + 16) + 1, 1);
        v215 = v749[0];
      }

      v193 = *(v215 + 16);
      v308 = *(v215 + 24);
      if (v193 >= v308 >> 1)
      {
        v194 = v749;
        sub_1D5D5CABC((v308 > 1), v193 + 1, 1);
        v215 = v749[0];
      }

      *(v215 + 16) = v193 + 1;
      *(v215 + 16 * v193 + 32) = v731;
      v206 += 8;
      --v306;
    }

    while (v306);
  }

  else
  {
    v427 = 0;
    do
    {
      if ((v305 & 0xC000000000000001) != 0)
      {
        v194 = MEMORY[0x1DA6FB460](v427, v305);
      }

      else
      {
        v194 = *(v305 + 8 * v427 + 32);
      }

      v428 = v194[2];
      v429 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__supplementaries;
      swift_beginAccess();
      v731 = *(v428 + v429);

      v215 = v749[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = v749;
        sub_1D5D5CABC(0, *(v215 + 16) + 1, 1);
        v215 = v749[0];
      }

      v193 = *(v215 + 16);
      v430 = *(v215 + 24);
      v206 = v193 + 1;
      if (v193 >= v430 >> 1)
      {
        v194 = v749;
        sub_1D5D5CABC((v430 > 1), v193 + 1, 1);
        v215 = v749[0];
      }

      ++v427;
      *(v215 + 16) = v206;
      *(v215 + 16 * v193 + 32) = v731;
    }

    while (v729 != v427);
  }

LABEL_139:
  v749[0] = sub_1D663BD3C(0);
  v309 = sub_1D60A7ADC(v215);
  if (v309)
  {
    v191 = v309;
    v206 = 0;
    v310 = v215 + 32;
    do
    {
      if (v206 >= *(v215 + 16))
      {
        goto LABEL_537;
      }

      ++v206;
      v310 += 16;

      v194 = v749;
      sub_1D6985980(v311);
    }

    while (v191 != v206);
  }

  v312 = v749[0];
  v191 = v632;
  v313 = sub_1D60A7ADC(v632);
  if (!v313)
  {
    v323 = sub_1D663BD3C(0);
    v211 = v729;
    goto LABEL_154;
  }

  v724 = v312;
  v749[0] = MEMORY[0x1E69E7CC0];
  v211 = v313;
  sub_1D6E77024(v313);
  *&v731 = v211;
  if ((v211 & 0x8000000000000000) != 0)
  {
LABEL_557:
    __break(1u);
    goto LABEL_558;
  }

  v314 = (v191 + ((*(v667 + 80) + 32) & ~*(v667 + 80)));
  v725 = *(v667 + 72);
  v191 = v749[0];
  v315 = &type metadata for FormatSupplementary;
  v316 = v720;
  do
  {
    v730 = v314;
    v317 = v713;
    sub_1D6D4906C(v314, v713, &qword_1EC88F148, sub_1D5B4BADC, v315, type metadata accessor for DebugFormatObject);
    sub_1D6D4906C(v317, v316, &qword_1EDF338C0, sub_1D5B4BADC, v315, type metadata accessor for FormatObject);
    sub_1D6D490E0(v317, &qword_1EC88F148, sub_1D5B4BADC, v315, type metadata accessor for DebugFormatObject);
    v318 = v315;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D699A1CC(0, *(v191 + 16) + 1, 1);
      v191 = v749[0];
    }

    v319 = v714;
    v320 = v731;
    v206 = *(v191 + 16);
    v321 = *(v191 + 24);
    v316 = v720;
    if (v206 >= v321 >> 1)
    {
      sub_1D699A1CC(v321 > 1, v206 + 1, 1);
      v316 = v720;
      v319 = v714;
      v191 = v749[0];
    }

    *(v191 + 16) = v206 + 1;
    v193 = &qword_1EDF338C0;
    sub_1D6D4913C(v316, v191 + ((*(v319 + 80) + 32) & ~*(v319 + 80)) + *(v319 + 72) * v206, &qword_1EDF338C0, sub_1D5B4BADC, v318, type metadata accessor for FormatObject);
    v314 = (v730 + v725);
    v322 = v320 - 1;
    v256 = v322 == 0;
    *&v731 = v322;
    v315 = v318;
  }

  while (!v256);
  v323 = v191;
  v211 = v729;
  v312 = v724;
LABEL_154:
  v749[0] = v312;
  v194 = v749;
  sub_1D6985980(v323);
  v721 = v749[0];
  if (!v211)
  {
    v215 = sub_1D663BEF8(0);
    goto LABEL_165;
  }

  v748[0] = MEMORY[0x1E69E7CC0];
  sub_1D6E76F04(v211);
  if ((v211 & 0x8000000000000000) != 0)
  {
LABEL_558:
    __break(1u);
    goto LABEL_559;
  }

  v324 = v641;
  if (sub_1D716A854(v641))
  {
    v206 = v324 + 32;
    v215 = v748[0];
    v325 = v729;
    do
    {
      v194 = *(*v206 + 16);
      v326 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
      swift_beginAccess();
      v731 = *(v194 + v326);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = v748;
        sub_1D5D5D1C4(0, *(v215 + 16) + 1, 1);
        v215 = v748[0];
      }

      v193 = *(v215 + 16);
      v327 = *(v215 + 24);
      v191 = v193 + 1;
      if (v193 >= v327 >> 1)
      {
        v194 = v748;
        sub_1D5D5D1C4((v327 > 1), v193 + 1, 1);
        v215 = v748[0];
      }

      *(v215 + 16) = v191;
      *(v215 + 16 * v193 + 32) = v731;
      v206 += 8;
      --v325;
    }

    while (v325);
  }

  else
  {
    v191 = 0;
    do
    {
      if ((v324 & 0xC000000000000001) != 0)
      {
        v194 = MEMORY[0x1DA6FB460](v191, v324);
      }

      else
      {
        v194 = *(v324 + 8 * v191 + 32);
      }

      v431 = v194[2];
      v432 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
      swift_beginAccess();
      v731 = *(v431 + v432);

      v215 = v748[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = v748;
        sub_1D5D5D1C4(0, *(v215 + 16) + 1, 1);
        v215 = v748[0];
      }

      v193 = *(v215 + 16);
      v433 = *(v215 + 24);
      v206 = v193 + 1;
      if (v193 >= v433 >> 1)
      {
        v194 = v748;
        sub_1D5D5D1C4((v433 > 1), v193 + 1, 1);
        v215 = v748[0];
      }

      ++v191;
      *(v215 + 16) = v206;
      *(v215 + 16 * v193 + 32) = v731;
    }

    while (v729 != v191);
  }

LABEL_165:
  v328 = v631;
  v748[0] = sub_1D663BBE8(0);
  v329 = sub_1D60A7ADC(v215);
  if (v329)
  {
    v191 = v329;
    v206 = 0;
    v330 = v215 + 32;
    do
    {
      if (v206 >= *(v215 + 16))
      {
        goto LABEL_538;
      }

      ++v206;
      v330 += 16;

      v194 = v748;
      sub_1D6985944(v331);
    }

    while (v191 != v206);
  }

  v332 = v748[0];
  v333 = sub_1D60A7ADC(v328);
  if (!v333)
  {
    v343 = sub_1D663BBE8(0);
    v211 = v729;
    goto LABEL_180;
  }

  v724 = v332;
  v748[0] = MEMORY[0x1E69E7CC0];
  v211 = v333;
  sub_1D6E7700C(v333);
  *&v731 = v211;
  if ((v211 & 0x8000000000000000) != 0)
  {
LABEL_559:
    __break(1u);
    goto LABEL_560;
  }

  v334 = (v328 + ((*(v666 + 80) + 32) & ~*(v666 + 80)));
  v725 = *(v666 + 72);
  v191 = v748[0];
  v335 = &type metadata for FormatType;
  v336 = v717;
  do
  {
    v730 = v334;
    v337 = v710;
    sub_1D6D4906C(v334, v710, &qword_1EC88F158, sub_1D5B4C700, v335, type metadata accessor for DebugFormatObject);
    sub_1D6D4906C(v337, v336, &qword_1EDF33890, sub_1D5B4C700, v335, type metadata accessor for FormatObject);
    sub_1D6D490E0(v337, &qword_1EC88F158, sub_1D5B4C700, v335, type metadata accessor for DebugFormatObject);
    v338 = v335;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D699A1AC(0, *(v191 + 16) + 1, 1);
      v191 = v748[0];
    }

    v339 = v711;
    v340 = v731;
    v206 = *(v191 + 16);
    v341 = *(v191 + 24);
    v336 = v717;
    if (v206 >= v341 >> 1)
    {
      sub_1D699A1AC(v341 > 1, v206 + 1, 1);
      v336 = v717;
      v339 = v711;
      v191 = v748[0];
    }

    *(v191 + 16) = v206 + 1;
    v193 = &qword_1EDF33890;
    sub_1D6D4913C(v336, v191 + ((*(v339 + 80) + 32) & ~*(v339 + 80)) + *(v339 + 72) * v206, &qword_1EDF33890, sub_1D5B4C700, v338, type metadata accessor for FormatObject);
    v334 = (v730 + v725);
    v342 = v340 - 1;
    v256 = v342 == 0;
    *&v731 = v342;
    v335 = v338;
  }

  while (!v256);
  v343 = v191;
  v211 = v729;
  v332 = v724;
LABEL_180:
  v748[0] = v332;
  v194 = v748;
  sub_1D6985944(v343);
  v718 = v748[0];
  if (!v211)
  {
    v215 = sub_1D663BEEC(0);
    goto LABEL_191;
  }

  v747[0] = MEMORY[0x1E69E7CC0];
  sub_1D6E76EEC(v211);
  if ((v211 & 0x8000000000000000) != 0)
  {
LABEL_560:
    __break(1u);
    goto LABEL_561;
  }

  v344 = v641;
  if (sub_1D716A854(v641))
  {
    v345 = v344 + 32;
    v215 = v747[0];
    v193 = v729;
    do
    {
      v194 = *(*v345 + 16);
      v346 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__decorations;
      swift_beginAccess();
      v347 = *(v194 + v346);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = v747;
        sub_1D5D5D874(0, *(v215 + 16) + 1, 1);
        v215 = v747[0];
      }

      v349 = *(v215 + 16);
      v348 = *(v215 + 24);
      v206 = v349 + 1;
      if (v349 >= v348 >> 1)
      {
        v194 = v747;
        sub_1D5D5D874((v348 > 1), v349 + 1, 1);
        v215 = v747[0];
      }

      *(v215 + 16) = v206;
      *(v215 + 8 * v349 + 32) = v347;
      v345 += 8;
      --v193;
    }

    while (v193);
  }

  else
  {
    v434 = 0;
    v193 = v344 & 0xC000000000000001;
    do
    {
      if (v193)
      {
        v194 = MEMORY[0x1DA6FB460](v434, v641);
      }

      else
      {
        v194 = *(v641 + 8 * v434 + 32);
      }

      v435 = v194[2];
      v436 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__decorations;
      swift_beginAccess();
      v206 = *(v435 + v436);

      v215 = v747[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = v747;
        sub_1D5D5D874(0, *(v215 + 16) + 1, 1);
        v215 = v747[0];
      }

      v438 = *(v215 + 16);
      v437 = *(v215 + 24);
      if (v438 >= v437 >> 1)
      {
        v194 = v747;
        sub_1D5D5D874((v437 > 1), v438 + 1, 1);
        v215 = v747[0];
      }

      ++v434;
      *(v215 + 16) = v438 + 1;
      *(v215 + 8 * v438 + 32) = v206;
    }

    while (v729 != v434);
  }

LABEL_191:
  v747[0] = sub_1D663BC10(0);
  v350 = sub_1D60A7ADC(v215);
  if (v350)
  {
    v191 = v350;
    v351 = 0;
    v206 = v215 + 32;
    do
    {
      if (v351 >= *(v215 + 16))
      {
        goto LABEL_539;
      }

      v352 = v351 + 1;

      v194 = v747;
      sub_1D6985908(v353);
      v351 = v352;
    }

    while (v191 != v352);
  }

  v354 = v747[0];
  v191 = v633;
  v355 = sub_1D60A7ADC(v633);
  if (!v355)
  {
    v365 = sub_1D663BC10(0);
    v211 = v729;
    goto LABEL_206;
  }

  v724 = v354;
  v747[0] = MEMORY[0x1E69E7CC0];
  v211 = v355;
  sub_1D6E76FF4(v355);
  *&v731 = v211;
  if ((v211 & 0x8000000000000000) != 0)
  {
LABEL_561:
    __break(1u);
    goto LABEL_562;
  }

  v356 = (v191 + ((*(v665 + 80) + 32) & ~*(v665 + 80)));
  v725 = *(v665 + 72);
  v191 = v747[0];
  v357 = &type metadata for FormatDecoration;
  v358 = v715;
  do
  {
    v730 = v356;
    v359 = v707;
    sub_1D6D4906C(v356, v707, &qword_1EC88F168, sub_1D5B4C8E0, v357, type metadata accessor for DebugFormatObject);
    sub_1D6D4906C(v359, v358, qword_1EDF338D8, sub_1D5B4C8E0, v357, type metadata accessor for FormatObject);
    sub_1D6D490E0(v359, &qword_1EC88F168, sub_1D5B4C8E0, v357, type metadata accessor for DebugFormatObject);
    v360 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D699A18C(0, *(v191 + 16) + 1, 1);
      v191 = v747[0];
    }

    v361 = v709;
    v362 = v731;
    v206 = *(v191 + 16);
    v363 = *(v191 + 24);
    v358 = v715;
    if (v206 >= v363 >> 1)
    {
      sub_1D699A18C(v363 > 1, v206 + 1, 1);
      v358 = v715;
      v361 = v709;
      v191 = v747[0];
    }

    *(v191 + 16) = v206 + 1;
    v193 = qword_1EDF338D8;
    sub_1D6D4913C(v358, v191 + ((*(v361 + 80) + 32) & ~*(v361 + 80)) + *(v361 + 72) * v206, qword_1EDF338D8, sub_1D5B4C8E0, v360, type metadata accessor for FormatObject);
    v356 = (v730 + v725);
    v364 = v362 - 1;
    v256 = v364 == 0;
    *&v731 = v364;
    v357 = v360;
  }

  while (!v256);
  v365 = v191;
  v211 = v729;
  v354 = v724;
LABEL_206:
  v747[0] = v354;
  v194 = v747;
  sub_1D6985908(v365);
  v717 = v747[0];
  if (!v211)
  {
    v215 = sub_1D663BF74(0);
    goto LABEL_217;
  }

  v746[0] = MEMORY[0x1E69E7CC0];
  sub_1D6E76FDC(v211);
  if ((v211 & 0x8000000000000000) != 0)
  {
LABEL_562:
    __break(1u);
    goto LABEL_563;
  }

  v366 = v641;
  if (sub_1D716A854(v641))
  {
    v367 = v366 + 32;
    v215 = v746[0];
    v193 = v729;
    do
    {
      v194 = *(*v367 + 16);
      v368 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__options;
      swift_beginAccess();
      v191 = *(v194 + v368);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = v746;
        sub_1D699A13C(0, *(v215 + 16) + 1, 1);
        v215 = v746[0];
      }

      v370 = *(v215 + 16);
      v369 = *(v215 + 24);
      v206 = v370 + 1;
      if (v370 >= v369 >> 1)
      {
        v194 = v746;
        sub_1D699A13C((v369 > 1), v370 + 1, 1);
        v215 = v746[0];
      }

      *(v215 + 16) = v206;
      *(v215 + 8 * v370 + 32) = v191;
      v367 += 8;
      --v193;
    }

    while (v193);
  }

  else
  {
    v191 = 0;
    v193 = v366 & 0xC000000000000001;
    do
    {
      if (v193)
      {
        v194 = MEMORY[0x1DA6FB460](v191, v641);
      }

      else
      {
        v194 = *(v641 + 8 * v191 + 32);
      }

      v439 = v194[2];
      v440 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__options;
      swift_beginAccess();
      v206 = *(v439 + v440);

      v215 = v746[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = v746;
        sub_1D699A13C(0, *(v215 + 16) + 1, 1);
        v215 = v746[0];
      }

      v442 = *(v215 + 16);
      v441 = *(v215 + 24);
      if (v442 >= v441 >> 1)
      {
        v194 = v746;
        sub_1D699A13C((v441 > 1), v442 + 1, 1);
        v215 = v746[0];
      }

      ++v191;
      *(v215 + 16) = v442 + 1;
      *(v215 + 8 * v442 + 32) = v206;
    }

    while (v729 != v191);
  }

LABEL_217:
  v746[0] = sub_1D663BE24(0);
  v371 = sub_1D60A7ADC(v215);
  if (v371)
  {
    v191 = v371;
    v372 = 0;
    v206 = v215 + 32;
    do
    {
      if (v372 >= *(v215 + 16))
      {
        goto LABEL_540;
      }

      v373 = v372 + 1;

      v194 = v746;
      sub_1D5D505F0(v374);
      v372 = v373;
    }

    while (v191 != v373);
  }

  v194 = v746;
  sub_1D5D505F0(v375);
  v211 = v729;
  v716 = v746[0];
  if (!v729)
  {
    v215 = sub_1D663BE60(0);
    goto LABEL_232;
  }

  v745[0] = MEMORY[0x1E69E7CC0];
  sub_1D6E76E8C(v729);
  if ((v211 & 0x8000000000000000) != 0)
  {
LABEL_563:
    __break(1u);
    goto LABEL_564;
  }

  v376 = v641;
  if (sub_1D716A854(v641))
  {
    v377 = v376 + 32;
    v215 = v745[0];
    v193 = v729;
    do
    {
      v194 = *(*v377 + 16);
      v378 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__selectors;
      swift_beginAccess();
      v191 = *(v194 + v378);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = v745;
        sub_1D6997840(0, *(v215 + 16) + 1, 1);
        v215 = v745[0];
      }

      v380 = *(v215 + 16);
      v379 = *(v215 + 24);
      v206 = v380 + 1;
      if (v380 >= v379 >> 1)
      {
        v194 = v745;
        sub_1D6997840((v379 > 1), v380 + 1, 1);
        v215 = v745[0];
      }

      *(v215 + 16) = v206;
      *(v215 + 8 * v380 + 32) = v191;
      v377 += 8;
      --v193;
    }

    while (v193);
  }

  else
  {
    v191 = 0;
    v215 = v745[0];
    do
    {
      v194 = MEMORY[0x1DA6FB460](v191, v376);
      v443 = v194[2];
      v444 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__selectors;
      swift_beginAccess();
      v206 = *(v443 + v444);

      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = v745;
        sub_1D6997840(0, *(v215 + 16) + 1, 1);
        v215 = v745[0];
      }

      v193 = *(v215 + 16);
      v445 = *(v215 + 24);
      if (v193 >= v445 >> 1)
      {
        v194 = v745;
        sub_1D6997840((v445 > 1), v193 + 1, 1);
        v215 = v745[0];
      }

      ++v191;
      *(v215 + 16) = v193 + 1;
      *(v215 + 8 * v193 + 32) = v206;
    }

    while (v729 != v191);
  }

LABEL_232:
  v745[0] = sub_1D663BBC4(0);
  v381 = sub_1D60A7ADC(v215);
  if (v381)
  {
    v191 = v381;
    v382 = 0;
    v206 = v215 + 32;
    do
    {
      if (v382 >= *(v215 + 16))
      {
        goto LABEL_541;
      }

      v383 = v382 + 1;

      v194 = v745;
      sub_1D5D55274(v384);
      v382 = v383;
    }

    while (v191 != v383);
  }

  v194 = v745[0];
  v385 = sub_1D5B86020(v745[0]);

  v715 = sub_1D5D6021C(v386, v385);
  v211 = v729;
  if (!v729)
  {
    v215 = sub_1D663BEE0(0);
    goto LABEL_247;
  }

  v742[0] = MEMORY[0x1E69E7CC0];
  sub_1D6E76ED4(v729);
  if ((v211 & 0x8000000000000000) != 0)
  {
LABEL_564:
    __break(1u);
    goto LABEL_565;
  }

  v193 = v641;
  if (sub_1D716A854(v641))
  {
    v206 = v193 + 32;
    v215 = v742[0];
    v387 = v729;
    do
    {
      v194 = *(*v206 + 16);
      v388 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__localizations;
      swift_beginAccess();
      v731 = *(v194 + v388);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = v742;
        sub_1D5D5EC14(0, *(v215 + 16) + 1, 1);
        v215 = v742[0];
      }

      v193 = *(v215 + 16);
      v389 = *(v215 + 24);
      if (v193 >= v389 >> 1)
      {
        v194 = v742;
        sub_1D5D5EC14((v389 > 1), v193 + 1, 1);
        v215 = v742[0];
      }

      *(v215 + 16) = v193 + 1;
      *(v215 + 16 * v193 + 32) = v731;
      v206 += 8;
      --v387;
    }

    while (v387);
  }

  else
  {
    v446 = 0;
    v215 = v742[0];
    do
    {
      v194 = MEMORY[0x1DA6FB460](v446, v193);
      v447 = v194[2];
      v448 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__localizations;
      swift_beginAccess();
      v731 = *(v447 + v448);

      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = v742;
        sub_1D5D5EC14(0, *(v215 + 16) + 1, 1);
        v215 = v742[0];
      }

      v450 = *(v215 + 16);
      v449 = *(v215 + 24);
      v206 = v450 + 1;
      if (v450 >= v449 >> 1)
      {
        v194 = v742;
        sub_1D5D5EC14((v449 > 1), v450 + 1, 1);
        v215 = v742[0];
      }

      ++v446;
      *(v215 + 16) = v206;
      *(v215 + 16 * v450 + 32) = v731;
    }

    while (v729 != v446);
  }

LABEL_247:
  v742[0] = sub_1D663BD14(0);
  v390 = sub_1D60A7ADC(v215);
  if (v390)
  {
    v191 = v390;
    v206 = 0;
    v391 = v215 + 32;
    do
    {
      if (v206 >= *(v215 + 16))
      {
        goto LABEL_542;
      }

      ++v206;
      v391 += 16;

      v194 = v742;
      sub_1D698575C(v392);
    }

    while (v191 != v206);
  }

  v393 = v742[0];
  v191 = v630;
  v394 = sub_1D60A7ADC(v630);
  if (!v394)
  {
    v404 = sub_1D663BD14(0);
    v211 = v729;
    goto LABEL_262;
  }

  v724 = v393;
  v742[0] = MEMORY[0x1E69E7CC0];
  v211 = v394;
  sub_1D6E76FC4(v394);
  *&v731 = v211;
  if ((v211 & 0x8000000000000000) != 0)
  {
LABEL_565:
    __break(1u);
    goto LABEL_566;
  }

  v395 = (v191 + ((*(v663 + 80) + 32) & ~*(v663 + 80)));
  v725 = *(v663 + 72);
  v191 = v742[0];
  v396 = &type metadata for FormatLocalization;
  v397 = v708;
  do
  {
    v730 = v395;
    v398 = v698;
    sub_1D6D4906C(v395, v698, &qword_1EC88F138, sub_1D5B55BC8, v396, type metadata accessor for DebugFormatObject);
    sub_1D6D4906C(v398, v397, &qword_1EDF338D0, sub_1D5B55BC8, v396, type metadata accessor for FormatObject);
    sub_1D6D490E0(v398, &qword_1EC88F138, sub_1D5B55BC8, v396, type metadata accessor for DebugFormatObject);
    v399 = v396;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D699A11C(0, *(v191 + 16) + 1, 1);
      v191 = v742[0];
    }

    v400 = v699;
    v401 = v731;
    v206 = *(v191 + 16);
    v402 = *(v191 + 24);
    v397 = v708;
    if (v206 >= v402 >> 1)
    {
      sub_1D699A11C(v402 > 1, v206 + 1, 1);
      v397 = v708;
      v400 = v699;
      v191 = v742[0];
    }

    *(v191 + 16) = v206 + 1;
    sub_1D6D4913C(v397, v191 + ((*(v400 + 80) + 32) & ~*(v400 + 80)) + *(v400 + 72) * v206, &qword_1EDF338D0, sub_1D5B55BC8, v399, type metadata accessor for FormatObject);
    v395 = (v730 + v725);
    v403 = v401 - 1;
    v256 = v403 == 0;
    *&v731 = v403;
    v396 = v399;
  }

  while (!v256);
  v404 = v191;
  v211 = v729;
  v393 = v724;
LABEL_262:
  v742[0] = v393;
  sub_1D698575C(v404);
  *&v714 = v742[0];
  if (!v211)
  {
    v724 = sub_1D663BE48(0);
    goto LABEL_374;
  }

  v742[0] = MEMORY[0x1E69E7CC0];
  sub_1D6E76E74(v211);
  if ((v211 & 0x8000000000000000) != 0)
  {
LABEL_566:
    __break(1u);
    goto LABEL_567;
  }

  v405 = v641;
  if (sub_1D716A854(v641))
  {
    v206 = v405 + 32;
    v406 = v742[0];
    v191 = v664;
    v407 = v647;
    do
    {
      sub_1D6D49454(*(*v206 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, v407, type metadata accessor for FormatCompilerOptions);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D5D5F614(0, *(v406 + 16) + 1, 1);
        v406 = v742[0];
      }

      v409 = *(v406 + 16);
      v408 = *(v406 + 24);
      v211 = v409 + 1;
      if (v409 >= v408 >> 1)
      {
        sub_1D5D5F614(v408 > 1, v409 + 1, 1);
        v406 = v742[0];
      }

      *(v406 + 16) = v211;
      sub_1D6D491B0(v407, v406 + ((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v409, type metadata accessor for FormatCompilerOptions);
      v206 += 8;
      --v729;
    }

    while (v729);
  }

  else
  {
    v211 = 0;
    v406 = v742[0];
    v191 = v664;
    v451 = v646;
    do
    {
      v452 = MEMORY[0x1DA6FB460](v211, v405);
      sub_1D6D49454(*(v452 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, v451, type metadata accessor for FormatCompilerOptions);
      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D5D5F614(0, *(v406 + 16) + 1, 1);
        v406 = v742[0];
      }

      v454 = *(v406 + 16);
      v453 = *(v406 + 24);
      v206 = v454 + 1;
      if (v454 >= v453 >> 1)
      {
        sub_1D5D5F614(v453 > 1, v454 + 1, 1);
        v406 = v742[0];
      }

      ++v211;
      *(v406 + 16) = v206;
      sub_1D6D491B0(v451, v406 + ((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v454, type metadata accessor for FormatCompilerOptions);
    }

    while (v729 != v211);
  }

  v724 = v406;
LABEL_374:
  v455 = v712;
  v456 = v733;
  v457 = v727;
  v720 = type metadata accessor for FormatPackage();
  sub_1D6D49454(v456 + v720[23], v457, type metadata accessor for FormatCompilerOptions);
  v458 = sub_1D60A7ADC(v724);
  if (!v458)
  {
    goto LABEL_378;
  }

  v206 = v458;
  if (v458 < 1)
  {
LABEL_567:
    __break(1u);
LABEL_568:
    __break(1u);
LABEL_569:
    __break(1u);
LABEL_570:
    __break(1u);
LABEL_571:
    __break(1u);
LABEL_572:
    __break(1u);
LABEL_573:
    __break(1u);
LABEL_574:
    __break(1u);
LABEL_575:
    __break(1u);
    goto LABEL_576;
  }

  v191 = v657;
  v459 = v658;
  v460 = v658[7];
  *&v731 = v658[6];
  v730 = v460;
  v729 = v658[8];
  v461 = v724 + ((*(v664 + 80) + 32) & ~*(v664 + 80));
  v725 = *(v664 + 72);
  do
  {
    sub_1D6D49454(v461, v191, type metadata accessor for FormatCompilerOptions);
    v742[0] = *v457;

    sub_1D5D5F664(v462);
    v463 = v742[0];
    v742[0] = v457[1];

    sub_1D5D5F6AC(v464);
    v465 = v742[0];
    v466 = v697;
    sub_1D6D4906C(v727 + v731, v697, &qword_1EDF450D0, sub_1D5B5931C, &type metadata for FormatCodingEmptyNewsroomStrategy, type metadata accessor for FormatCodingDefault);
    sub_1D6D491B0(v466, v455 + v459[6], type metadata accessor for FormatCompilerOptions.Newsroom);
    sub_1D5D5F6F4(v730 + v727, v730 + v191, (v455 + v459[7]));
    v467 = *(v727 + v729);

    v469 = sub_1D5D5FCA0(v468, v467);
    sub_1D6D49218(v191, type metadata accessor for FormatCompilerOptions);
    v455 = v712;
    sub_1D6D49218(v727, type metadata accessor for FormatCompilerOptions);
    *v455 = v463;
    v455[1] = v465;
    v457 = v727;
    *(v455 + v459[8]) = v469;
    sub_1D6D491B0(v455, v457, type metadata accessor for FormatCompilerOptions);
    v461 += v725;
    --v206;
  }

  while (v206);
LABEL_378:

  sub_1D6D491B0(v457, v679, type metadata accessor for FormatCompilerOptions);
  v744 = MEMORY[0x1E69E7CC0];
  v470 = v659;
  sub_1D6D485F4(v660, v659, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720], sub_1D6D4635C);
  v471 = *(v726 + 48);
  *&v731 = v726 + 48;
  v730 = v471;
  if ((v471)(v470, 1, v728) != 1)
  {
    v206 = v648;
    sub_1D6D491B0(v470, v648, type metadata accessor for DebugFormatCacheFile);
    v191 = v649;
    sub_1D6D49454(v206, v649, type metadata accessor for DebugFormatCacheFile);
    sub_1D6D46BD0();
    v212 = v744;
    v211 = *(v744 + 16);
    v213 = *(v744 + 24);
    if (v211 < v213 >> 1)
    {
LABEL_381:
      sub_1D6D49218(v206, type metadata accessor for DebugFormatCacheFile);
      sub_1D6D46C1C(v211, v191);
      nullsub_1();
      goto LABEL_382;
    }

LABEL_576:
    v744 = sub_1D6996084(v213 > 1, v211 + 1, 1, v212);
    goto LABEL_381;
  }

  sub_1D6D494BC(v470, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
LABEL_382:
  v193 = v641;
  v194 = sub_1D663BF5C(0);
  v742[0] = v194;
  v729 = sub_1D60A7AA0(v193);
  if (!v729)
  {
    v474 = v194;
    goto LABEL_394;
  }

  v215 = 0;
  v206 = v193 & 0xC000000000000001;
  while (v206)
  {
    v472 = MEMORY[0x1DA6FB460](v215, v193);
    v473 = v215 + 1;
    if (__OFADD__(v215, 1))
    {
      goto LABEL_391;
    }

LABEL_387:
    v191 = *(v472 + 24);

    v194 = v742;
    sub_1D6988AB0(v191);
    ++v215;
    if (v473 == v729)
    {
      goto LABEL_392;
    }
  }

  if (v215 >= *((v193 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_543;
  }

  v472 = *(v193 + 8 * v215 + 32);

  v473 = v215 + 1;
  if (!__OFADD__(v215, 1))
  {
    goto LABEL_387;
  }

LABEL_391:
  __break(1u);
LABEL_392:
  v474 = v742[0];
LABEL_394:
  v211 = v642;
  sub_1D6988AB0(v474);
  v727 = sub_1D663BF5C(0);
  v475 = sub_1D60A7ADC(v211);
  if (v475)
  {
    v476 = v475;
    if (v475 >= 1)
    {
      v477 = v644;
      v725 = *(v643 + 36);
      v478 = v211 + ((*(v672 + 80) + 32) & ~*(v672 + 80));
      v724 = *(v672 + 72);
      do
      {
        v206 = type metadata accessor for DebugFormatObject;
        v191 = &type metadata for FormatGroup;
        sub_1D6D4906C(v478, v477, &qword_1EC88F1A8, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for DebugFormatObject);
        v479 = v696;
        sub_1D6D485F4(v477 + v725, v696, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720], sub_1D6D4635C);
        sub_1D6D490E0(v477, &qword_1EC88F1A8, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for DebugFormatObject);
        if ((v730)(v479, 1, v728) == 1)
        {
          sub_1D6D494BC(v479, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
        }

        else
        {
          sub_1D6D491B0(v479, v695, type metadata accessor for DebugFormatCacheFile);
          v191 = v727;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v191 = sub_1D6996084(0, *(v191 + 16) + 1, 1, v191);
          }

          v206 = *(v191 + 16);
          v480 = *(v191 + 24);
          if (v206 >= v480 >> 1)
          {
            v191 = sub_1D6996084(v480 > 1, v206 + 1, 1, v191);
          }

          *(v191 + 16) = v206 + 1;
          v481 = (*(v726 + 80) + 32) & ~*(v726 + 80);
          v727 = v191;
          sub_1D6D491B0(v695, v191 + v481 + *(v726 + 72) * v206, type metadata accessor for DebugFormatCacheFile);
        }

        v478 += v724;
        --v476;
        v477 = v644;
      }

      while (v476);
      goto LABEL_405;
    }

    goto LABEL_568;
  }

LABEL_405:

  sub_1D6988AB0(v727);
  v727 = sub_1D663BF5C(0);
  v211 = v640;
  v482 = sub_1D60A7ADC(v640);
  if (v482)
  {
    v483 = v482;
    if (v482 >= 1)
    {
      v725 = *(v652 + 36);
      v484 = v211 + ((*(v671 + 80) + 32) & ~*(v671 + 80));
      v724 = *(v671 + 72);
      v485 = v706;
      do
      {
        v206 = type metadata accessor for DebugFormatObject;
        v191 = &type metadata for FormatItem;
        sub_1D6D4906C(v484, v485, &qword_1EC88F198, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for DebugFormatObject);
        v486 = v693;
        sub_1D6D485F4(v485 + v725, v693, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720], sub_1D6D4635C);
        sub_1D6D490E0(v485, &qword_1EC88F198, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for DebugFormatObject);
        if ((v730)(v486, 1, v728) == 1)
        {
          sub_1D6D494BC(v486, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
        }

        else
        {
          sub_1D6D491B0(v486, v694, type metadata accessor for DebugFormatCacheFile);
          v191 = v727;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v191 = sub_1D6996084(0, *(v191 + 16) + 1, 1, v191);
          }

          v206 = *(v191 + 16);
          v487 = *(v191 + 24);
          if (v206 >= v487 >> 1)
          {
            v191 = sub_1D6996084(v487 > 1, v206 + 1, 1, v191);
          }

          *(v191 + 16) = v206 + 1;
          v488 = (*(v726 + 80) + 32) & ~*(v726 + 80);
          v727 = v191;
          sub_1D6D491B0(v694, v191 + v488 + *(v726 + 72) * v206, type metadata accessor for DebugFormatCacheFile);
        }

        v484 += v724;
        --v483;
        v485 = v706;
      }

      while (v483);
      goto LABEL_416;
    }

    goto LABEL_569;
  }

LABEL_416:

  sub_1D6988AB0(v727);
  v727 = sub_1D663BF5C(0);
  v211 = v635;
  v489 = sub_1D60A7ADC(v635);
  if (v489)
  {
    v490 = v489;
    if (v489 >= 1)
    {
      v725 = *(v653 + 36);
      v491 = v211 + ((*(v669 + 80) + 32) & ~*(v669 + 80));
      v724 = *(v669 + 72);
      v492 = v728;
      v493 = v705;
      do
      {
        v206 = type metadata accessor for DebugFormatObject;
        sub_1D6D49278(v491, v493, &qword_1EC88F188, type metadata accessor for DebugFormatObject);
        v494 = v692;
        v191 = &qword_1EC890010;
        sub_1D6D485F4(v493 + v725, v692, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720], sub_1D6D4635C);
        sub_1D6D493F8(v493, &qword_1EC88F188, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for DebugFormatObject);
        if ((v730)(v494, 1, v492) == 1)
        {
          sub_1D6D494BC(v494, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
        }

        else
        {
          sub_1D6D491B0(v494, v691, type metadata accessor for DebugFormatCacheFile);
          v191 = v727;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v191 = sub_1D6996084(0, *(v191 + 16) + 1, 1, v191);
          }

          v496 = *(v191 + 16);
          v495 = *(v191 + 24);
          if (v496 >= v495 >> 1)
          {
            v191 = sub_1D6996084(v495 > 1, v496 + 1, 1, v191);
          }

          *(v191 + 16) = v496 + 1;
          v497 = (*(v726 + 80) + 32) & ~*(v726 + 80);
          v727 = v191;
          sub_1D6D491B0(v691, v191 + v497 + *(v726 + 72) * v496, type metadata accessor for DebugFormatCacheFile);
          v492 = v728;
        }

        v491 += v724;
        --v490;
        v493 = v705;
      }

      while (v490);
      goto LABEL_427;
    }

    goto LABEL_570;
  }

LABEL_427:

  sub_1D6988AB0(v727);
  v727 = sub_1D663BF5C(0);
  v211 = v634;
  v498 = sub_1D60A7ADC(v634);
  if (v498)
  {
    v499 = v498;
    if (v498 >= 1)
    {
      v725 = *(v654 + 36);
      v500 = v211 + ((*(v668 + 80) + 32) & ~*(v668 + 80));
      v724 = *(v668 + 72);
      v501 = v704;
      do
      {
        v206 = type metadata accessor for DebugFormatObject;
        v191 = &type metadata for FormatStyle;
        sub_1D6D4906C(v500, v501, &qword_1EC88F178, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for DebugFormatObject);
        v502 = v690;
        sub_1D6D485F4(v501 + v725, v690, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720], sub_1D6D4635C);
        sub_1D6D490E0(v501, &qword_1EC88F178, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for DebugFormatObject);
        if ((v730)(v502, 1, v728) == 1)
        {
          sub_1D6D494BC(v502, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
        }

        else
        {
          sub_1D6D491B0(v502, v689, type metadata accessor for DebugFormatCacheFile);
          v191 = v727;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v191 = sub_1D6996084(0, *(v191 + 16) + 1, 1, v191);
          }

          v206 = *(v191 + 16);
          v503 = *(v191 + 24);
          if (v206 >= v503 >> 1)
          {
            v191 = sub_1D6996084(v503 > 1, v206 + 1, 1, v191);
          }

          *(v191 + 16) = v206 + 1;
          v504 = (*(v726 + 80) + 32) & ~*(v726 + 80);
          v727 = v191;
          sub_1D6D491B0(v689, v191 + v504 + *(v726 + 72) * v206, type metadata accessor for DebugFormatCacheFile);
        }

        v500 += v724;
        --v499;
        v501 = v704;
      }

      while (v499);
      goto LABEL_438;
    }

    goto LABEL_571;
  }

LABEL_438:

  sub_1D6988AB0(v727);
  v727 = sub_1D663BF5C(0);
  v211 = v633;
  v505 = sub_1D60A7ADC(v633);
  if (v505)
  {
    v506 = v505;
    if (v505 >= 1)
    {
      v725 = *(v655 + 36);
      v507 = v211 + ((*(v665 + 80) + 32) & ~*(v665 + 80));
      v724 = *(v665 + 72);
      v508 = v703;
      do
      {
        v206 = type metadata accessor for DebugFormatObject;
        v191 = &type metadata for FormatDecoration;
        sub_1D6D4906C(v507, v508, &qword_1EC88F168, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for DebugFormatObject);
        v509 = v687;
        sub_1D6D485F4(v508 + v725, v687, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720], sub_1D6D4635C);
        sub_1D6D490E0(v508, &qword_1EC88F168, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for DebugFormatObject);
        if ((v730)(v509, 1, v728) == 1)
        {
          sub_1D6D494BC(v509, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
        }

        else
        {
          sub_1D6D491B0(v509, v688, type metadata accessor for DebugFormatCacheFile);
          v191 = v727;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v191 = sub_1D6996084(0, *(v191 + 16) + 1, 1, v191);
          }

          v206 = *(v191 + 16);
          v510 = *(v191 + 24);
          if (v206 >= v510 >> 1)
          {
            v191 = sub_1D6996084(v510 > 1, v206 + 1, 1, v191);
          }

          *(v191 + 16) = v206 + 1;
          v511 = (*(v726 + 80) + 32) & ~*(v726 + 80);
          v727 = v191;
          sub_1D6D491B0(v688, v191 + v511 + *(v726 + 72) * v206, type metadata accessor for DebugFormatCacheFile);
        }

        v507 += v724;
        --v506;
        v508 = v703;
      }

      while (v506);
      goto LABEL_449;
    }

    goto LABEL_572;
  }

LABEL_449:

  sub_1D6988AB0(v727);
  v727 = sub_1D663BF5C(0);
  v211 = v631;
  v512 = sub_1D60A7ADC(v631);
  if (v512)
  {
    v513 = v512;
    if (v512 >= 1)
    {
      v725 = *(v656 + 36);
      v514 = v211 + ((*(v666 + 80) + 32) & ~*(v666 + 80));
      v724 = *(v666 + 72);
      v515 = v702;
      do
      {
        v206 = type metadata accessor for DebugFormatObject;
        v191 = &type metadata for FormatType;
        sub_1D6D4906C(v514, v515, &qword_1EC88F158, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for DebugFormatObject);
        v516 = v686;
        sub_1D6D485F4(v515 + v725, v686, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720], sub_1D6D4635C);
        sub_1D6D490E0(v515, &qword_1EC88F158, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for DebugFormatObject);
        if ((v730)(v516, 1, v728) == 1)
        {
          sub_1D6D494BC(v516, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
        }

        else
        {
          sub_1D6D491B0(v516, v685, type metadata accessor for DebugFormatCacheFile);
          v191 = v727;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v191 = sub_1D6996084(0, *(v191 + 16) + 1, 1, v191);
          }

          v206 = *(v191 + 16);
          v517 = *(v191 + 24);
          if (v206 >= v517 >> 1)
          {
            v191 = sub_1D6996084(v517 > 1, v206 + 1, 1, v191);
          }

          *(v191 + 16) = v206 + 1;
          v518 = (*(v726 + 80) + 32) & ~*(v726 + 80);
          v727 = v191;
          sub_1D6D491B0(v685, v191 + v518 + *(v726 + 72) * v206, type metadata accessor for DebugFormatCacheFile);
        }

        v514 += v724;
        --v513;
        v515 = v702;
      }

      while (v513);
      goto LABEL_460;
    }

    goto LABEL_573;
  }

LABEL_460:

  sub_1D6988AB0(v727);
  v727 = sub_1D663BF5C(0);
  v211 = v632;
  v519 = sub_1D60A7ADC(v632);
  if (v519)
  {
    v520 = v519;
    if (v519 >= 1)
    {
      v725 = *(v650 + 36);
      v521 = v211 + ((*(v667 + 80) + 32) & ~*(v667 + 80));
      v724 = *(v667 + 72);
      v522 = v701;
      do
      {
        v206 = type metadata accessor for DebugFormatObject;
        v191 = &type metadata for FormatSupplementary;
        sub_1D6D4906C(v521, v522, &qword_1EC88F148, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for DebugFormatObject);
        v523 = v684;
        sub_1D6D485F4(v522 + v725, v684, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720], sub_1D6D4635C);
        sub_1D6D490E0(v522, &qword_1EC88F148, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for DebugFormatObject);
        if ((v730)(v523, 1, v728) == 1)
        {
          sub_1D6D494BC(v523, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
        }

        else
        {
          sub_1D6D491B0(v523, v683, type metadata accessor for DebugFormatCacheFile);
          v191 = v727;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v191 = sub_1D6996084(0, *(v191 + 16) + 1, 1, v191);
          }

          v206 = *(v191 + 16);
          v524 = *(v191 + 24);
          if (v206 >= v524 >> 1)
          {
            v191 = sub_1D6996084(v524 > 1, v206 + 1, 1, v191);
          }

          *(v191 + 16) = v206 + 1;
          v525 = (*(v726 + 80) + 32) & ~*(v726 + 80);
          v727 = v191;
          sub_1D6D491B0(v683, v191 + v525 + *(v726 + 72) * v206, type metadata accessor for DebugFormatCacheFile);
        }

        v521 += v724;
        --v520;
        v522 = v701;
      }

      while (v520);
      goto LABEL_471;
    }

    goto LABEL_574;
  }

LABEL_471:

  sub_1D6988AB0(v727);
  v727 = sub_1D663BF5C(0);
  v211 = v630;
  v526 = sub_1D60A7ADC(v630);
  if (v526)
  {
    v527 = v526;
    if (v526 >= 1)
    {
      v725 = *(v651 + 36);
      v528 = v211 + ((*(v663 + 80) + 32) & ~*(v663 + 80));
      v724 = *(v663 + 72);
      v529 = v700;
      do
      {
        v191 = &type metadata for FormatLocalization;
        sub_1D6D4906C(v528, v529, &qword_1EC88F138, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for DebugFormatObject);
        v530 = v681;
        sub_1D6D485F4(v529 + v725, v681, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720], sub_1D6D4635C);
        sub_1D6D490E0(v529, &qword_1EC88F138, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for DebugFormatObject);
        if ((v730)(v530, 1, v728) == 1)
        {
          sub_1D6D494BC(v530, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
        }

        else
        {
          sub_1D6D491B0(v530, v682, type metadata accessor for DebugFormatCacheFile);
          v191 = v727;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v191 = sub_1D6996084(0, *(v191 + 16) + 1, 1, v191);
          }

          v532 = *(v191 + 16);
          v531 = *(v191 + 24);
          if (v532 >= v531 >> 1)
          {
            v191 = sub_1D6996084(v531 > 1, v532 + 1, 1, v191);
          }

          *(v191 + 16) = v532 + 1;
          v533 = (*(v726 + 80) + 32) & ~*(v726 + 80);
          v727 = v191;
          sub_1D6D491B0(v682, v191 + v533 + *(v726 + 72) * v532, type metadata accessor for DebugFormatCacheFile);
        }

        v528 += v724;
        --v527;
        v529 = v700;
      }

      while (v527);
      goto LABEL_482;
    }

    goto LABEL_575;
  }

LABEL_482:

  sub_1D6988AB0(v727);
  v534 = v733;
  v535 = *(v733 + 1);
  v710 = *v733;
  v709 = v535;
  v536 = v678[2];
  v537 = v733 + v720[24];
  v730 = v678 + 2;
  v728 = v536;
  (v536)(v677, v537, v680);
  LODWORD(v708) = *(v534 + 48);
  LODWORD(v705) = *(v534 + 49);
  v538 = *(v534 + 3);
  v706 = *(v534 + 2);
  v539 = *(v534 + 4);
  v540 = *(v534 + 5);
  v707 = v539;
  sub_1D6D49454(v679, v676, type metadata accessor for FormatCompilerOptions);
  v727 = v540;

  v726 = v538;

  v194 = sub_1D663BE3C(0);
  v215 = 0;
  v206 = v641 & 0xC000000000000001;
  v193 = v641 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (v729 == v215)
    {

      v548 = v733;
      v215 = *(v733 + 20);
      v191 = *(v733 + 21);
      v549 = sub_1D60A7ADC(v194);
      if (v549)
      {
        v550 = v549;
        v193 = 0;
        v551 = (v194 + 5);
        v206 = v191;
        *&v731 = v215;
        while (v193 < v194[2])
        {
          if (v206 == 2)
          {
            v206 = *v551;
            *&v731 = *(v551 - 1);
            sub_1D62B5D30(v731, v206);
          }

          ++v193;
          v551 += 2;
          if (v550 == v193)
          {
            goto LABEL_503;
          }
        }

        goto LABEL_544;
      }

      *&v731 = v215;
      v206 = v191;
LABEL_503:
      sub_1D5D5FDA4(v215, v191);

      sub_1D6D4635C(0, &qword_1EDF3C600, sub_1D5C2AB28, MEMORY[0x1E69E6F90]);
      sub_1D5C2AB28(0);
      v729 = v552;
      v553 = swift_allocObject();
      v725 = sub_1D69D7B5C(v553, 1);
      v555 = v554;
      sub_1D6D49454(v548, v554, type metadata accessor for FormatPackage);
      v556 = v661;
      sub_1D725BD3C();
      v557 = v678;
      v558 = v678[6];
      v559 = v680;
      if (v558(v556, 1, v680) == 1)
      {
        sub_1D725BCDC();
        v560 = v558(v556, 1, v559);
        v561 = v674;
        v562 = v662;
        if (v560 != 1)
        {
          sub_1D6D494BC(v661, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
        }
      }

      else
      {
        (v557[4])(v673, v556, v559);
        v561 = v674;
        v562 = v662;
      }

      sub_1D725BD3C();
      if (v558(v562, 1, v559) == 1)
      {
        sub_1D725BCCC();
        if (v558(v562, 1, v559) != 1)
        {
          sub_1D6D494BC(v662, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
        }
      }

      else
      {
        (v557[4])(v561, v562, v559);
      }

      sub_1D725BD3C();
      v563 = sub_1D663BBD0(0);
      v564 = sub_1D60A7ADC(v563);
      v565 = v673;
      if (v564)
      {
        v724 = sub_1D5E26CE0(v563);
      }

      else
      {
        v724 = MEMORY[0x1E69E7CD0];
      }

      v566 = sub_1D663BBD0(0);
      if (sub_1D60A7ADC(v566))
      {
        v713 = sub_1D5E26CE0(v566);
      }

      else
      {
        v713 = MEMORY[0x1E69E7CD0];
      }

      v567 = sub_1D663BBDC(0);
      if (sub_1D60A7ADC(v567))
      {
        v711 = sub_1D5E268EC(v567);
      }

      else
      {
        v711 = MEMORY[0x1E69E7CD0];
      }

      v568 = sub_1D663BBDC(0);
      if (sub_1D60A7ADC(v568))
      {
        v569 = sub_1D5E268EC(v568);
      }

      else
      {
        v569 = MEMORY[0x1E69E7CD0];
      }

      sub_1D6D48490(0, &unk_1EC88B470, type metadata accessor for FormatPackage, type metadata accessor for FormatMetadata);
      v571 = (v555 + *(v570 + 48));
      v572 = type metadata accessor for FormatMetadata();
      *v571 = 0;
      *(v571 + 1) = 0;
      v573 = v557[4];
      v574 = v565;
      v575 = v680;
      v573(&v571[v572[5]], v574, v680);
      v573(&v571[v572[6]], v674, v575);
      sub_1D5C7F144(v675, &v571[v572[7]]);
      *&v571[v572[8]] = v724;
      *&v571[v572[9]] = v713;
      *&v571[v572[10]] = v711;
      *&v571[v572[11]] = v569;
      v576 = v575;
      swift_storeEnumTagMultiPayload();
      v193 = nullsub_1();
      v215 = *(v733 + v720[26]);

      v743 = sub_1D5F62D3C(v722);
      v577 = v638;
      v578 = sub_1D5F62D78(v638);
      sub_1D6985734(v578);
      v579 = v645;
      v580 = sub_1D5F62DB4(v645);
      sub_1D6985734(v580);
      v581 = sub_1D5F62DF0(v721);
      sub_1D6985734(v581);
      v582 = sub_1D5F62FF8(v723);
      sub_1D6985734(v582);
      v583 = v670;
      v584 = v677;
      (v728)(v670, v677, v576);
      v585 = v732;
      sub_1D5C5D464(v577, v742);
      v732 = v585;
      if (v585)
      {

        sub_1D5C5D428(v731, v206);
        v586 = v678[1];
        v586(v583, v576);
        v169 = type metadata accessor for FormatCompilerOptions;
        sub_1D6D49218(v676, type metadata accessor for FormatCompilerOptions);
        v587 = v584;
        v588 = v576;
      }

      else
      {
        v733 = v742[0];
        v191 = v742[1];
        v194 = v742[2];
        sub_1D5CCCC20(v579, v741);
        v732 = 0;
        v729 = v741[0];
        v725 = v741[1];
        sub_1D5CA3FB0(v723, v740);
        v732 = 0;
        v720 = v740[0];
        v713 = v740[1];
        sub_1D5C4B5C8(v722, v739);
        v724 = v739[0];
        v723 = v739[1];
        v590 = v732;
        sub_1D5CAF23C(v719, v738);
        v732 = v590;
        if (!v590)
        {
          v722 = v738[0];
          v719 = v738[1];
          sub_1D5CA84CC(v721, v737);
          v732 = 0;
          goto LABEL_545;
        }

        sub_1D5C5D428(v731, v206);
        v586 = v678[1];
        v589 = v680;
        v586(v670, v680);
        v169 = type metadata accessor for FormatCompilerOptions;
        sub_1D6D49218(v676, type metadata accessor for FormatCompilerOptions);
        v587 = v677;
        v588 = v589;
      }

      v586(v587, v588);
      sub_1D6D49218(v679, type metadata accessor for FormatCompilerOptions);

      goto LABEL_4;
    }

    if (v206)
    {
      v541 = MEMORY[0x1DA6FB460](v215, v641);
      v542 = v215 + 1;
      if (__OFADD__(v215, 1))
      {
        break;
      }

      goto LABEL_487;
    }

    if (v215 >= *(v193 + 16))
    {
      goto LABEL_531;
    }

    v541 = *(v641 + 8 * v215 + 32);

    v542 = v215 + 1;
    if (!__OFADD__(v215, 1))
    {
LABEL_487:
      v543 = (*(v541 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem);
      v191 = *v543;
      v544 = v543[1];
      sub_1D5D5FDA4(*v543, v544);

      ++v215;
      if (v544 != 2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v194 = sub_1D698CA40(0, v194[2] + 1, 1, v194);
        }

        v546 = v194[2];
        v545 = v194[3];
        if (v546 >= v545 >> 1)
        {
          v194 = sub_1D698CA40((v545 > 1), v546 + 1, 1, v194);
        }

        v194[2] = v546 + 1;
        v547 = &v194[2 * v546];
        v547[4] = v191;
        v547[5] = v544;
        v215 = v542;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_531:
  __break(1u);
LABEL_532:
  __break(1u);
LABEL_533:
  __break(1u);
LABEL_534:
  __break(1u);
LABEL_535:
  __break(1u);
LABEL_536:
  __break(1u);
LABEL_537:
  __break(1u);
LABEL_538:
  __break(1u);
LABEL_539:
  __break(1u);
LABEL_540:
  __break(1u);
LABEL_541:
  __break(1u);
LABEL_542:
  __break(1u);
LABEL_543:
  __break(1u);
LABEL_544:
  __break(1u);
LABEL_545:
  v721 = v737[0];
  v711 = v737[1];
  v591 = v732;
  sub_1D6F1C000(v718, v743, v736);
  v732 = v591;
  if (v591)
  {

    sub_1D5C5D428(v731, v206);
    v592 = v678[1];
    v593 = v680;
    v592(v670, v680);
    v169 = type metadata accessor for FormatCompilerOptions;
    sub_1D6D49218(v676, type metadata accessor for FormatCompilerOptions);
    v592(v677, v593);
    sub_1D6D49218(v679, type metadata accessor for FormatCompilerOptions);
LABEL_4:

LABEL_5:
  }

  else
  {
    v718 = v736[0];
    v704 = v736[1];
    sub_1D5CB13C8(v714, &v735);
    v732 = 0;
    sub_1D6D49454(v676, v712, type metadata accessor for FormatCompilerOptions);
    type metadata accessor for FormatPackageInventory();
    v594 = swift_allocObject();
    v595 = (v594 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name);
    *v595 = 0;
    v595[1] = 0;
    v596 = (v594 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__comment);
    v703 = (v594 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__comment);
    *v596 = 0;
    v596[1] = 0;
    v597 = v709;
    *(v594 + 16) = v710;
    *(v594 + 24) = v597;
    v714 = v735;
    (v728)(v594 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_version, v670, v680);
    *(v594 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) = v708;
    v598 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__direction;
    swift_beginAccess();
    *(v594 + v598) = v705;
    swift_beginAccess();
    v599 = v726;
    *v595 = v706;
    v595[1] = v599;
    v600 = v709;

    v601 = v703;
    swift_beginAccess();
    v602 = v727;
    *v601 = v707;
    v601[1] = v602;

    v603 = (v594 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups);
    swift_beginAccess();
    *v603 = v733;
    v603[1] = v191;
    v603[2] = v194;
    v604 = (v594 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items);
    swift_beginAccess();
    v605 = v725;
    *v604 = v729;
    v604[1] = v605;
    v606 = (v594 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__snippets);
    swift_beginAccess();
    v607 = v713;
    *v606 = v720;
    v606[1] = v607;
    v608 = (v594 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
    swift_beginAccess();
    v609 = v723;
    *v608 = v724;
    v608[1] = v609;
    v610 = (v594 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__slots);
    swift_beginAccess();
    v611 = v719;
    *v610 = v722;
    v610[1] = v611;
    v612 = (v594 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__supplementaries);
    swift_beginAccess();
    v613 = v711;
    *v612 = v721;
    v612[1] = v613;
    v614 = (v594 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types);
    swift_beginAccess();
    v615 = v704;
    *v614 = v718;
    v614[1] = v615;
    v616 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__decorations;
    swift_beginAccess();
    *(v594 + v616) = v717;
    v617 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__options;
    swift_beginAccess();
    *(v594 + v617) = v716;
    v734 = v708;
    v618 = sub_1D5D5FDB4(v710, v600);
    v619 = sub_1D5BA8750(v618, v715);

    v620 = v678[1];
    v621 = v680;
    v620(v670, v680);
    v733 = type metadata accessor for FormatCompilerOptions;
    sub_1D6D49218(v676, type metadata accessor for FormatCompilerOptions);
    v620(v677, v621);
    v622 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__selectors;
    swift_beginAccess();
    *(v594 + v622) = v619;
    v623 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__localizations;
    swift_beginAccess();
    *(v594 + v623) = v714;
    sub_1D6D491B0(v712, v594 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, type metadata accessor for FormatCompilerOptions);
    v624 = (v594 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem);
    *v624 = v731;
    v624[1] = v206;
    v625 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__references;
    swift_beginAccess();
    *(v594 + v625) = v193;
    v626 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__traits;
    swift_beginAccess();
    *(v594 + v626) = v215;
    v627 = v744;
    type metadata accessor for DebugFormatPackageInventory();
    swift_allocObject();
    v169 = sub_1D70CD85C(v594, v627);
    sub_1D6D49218(v679, v733);
  }

  return v169;
}

id sub_1D6D3E84C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    swift_willThrow();
    return v3;
  }

  else
  {
    *a2 = *a1;
  }
}

uint64_t sub_1D6D3E89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a3;
  *&v78 = a2;
  *&v81 = a1;
  v80 = type metadata accessor for DebugFormatCacheFile();
  v87 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v3);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v72 - v8;
  v10 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v77 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v76 = sub_1D72585BC();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v13);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AFF4(0, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v72 - v18;
  sub_1D6D4906C(v81, &v72 - v18, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5EA17B4(0, &qword_1EDF2DC48);
      v22 = *(v21 + 48);
      v23 = *v19;
      v24 = *(v19 + 1);
      v25 = *(v19 + 6);
      sub_1D5C2AFF4(0, &qword_1EDF338D0, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatObject);
      v27 = *(v26 + 36);
      v28 = *(v19 + 2);
      v81 = *(v19 + 1);
      v78 = v28;
      v29 = &v19[v22];
      v30 = v79;
      sub_1D6D491B0(v29, v79 + v27, type metadata accessor for FormatMetadata);
      *v30 = v23;
      *(v30 + 8) = v24;
      v31 = v78;
      *(v30 + 16) = v81;
      *(v30 + 32) = v31;
      *(v30 + 48) = v25;
      sub_1D5C2AFF4(0, &qword_1EC88F138, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for DebugFormatObject);
      return (*(v87 + 56))(v30 + *(v32 + 36), 1, 1, v80);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  else
  {
    v74 = v5;
    *&v81 = v9;
    sub_1D6D48490(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
    v35 = *(v34 + 48);
    v36 = v75;
    v37 = v76;
    (*(v75 + 32))(v15, v19, v76);
    v38 = v77;
    sub_1D6D491B0(&v19[v35], v77, type metadata accessor for FormatMetadata);
    v39 = sub_1D72583DC();
    v41 = sub_1D5FD24A4(1uLL, v39, v40);
    v43 = v42;
    v45 = v44;
    v47 = v46;

    v48 = MEMORY[0x1DA6F97E0](v41, v43, v45, v47);
    v50 = v49;

    v51 = v78;
    v52 = v38;
    v53 = v37;
    v54 = v36;
    v55 = v50;
    v56 = v15;
    if (*(v78 + 16) && (v57 = sub_1D5B69D90(v48, v55), (v58 & 1) != 0))
    {
      v73 = v48;
      v59 = v74;
      sub_1D6D49454(*(v51 + 56) + *(v87 + 72) * v57, v74, type metadata accessor for DebugFormatCacheFile);
      v60 = v81;
      sub_1D6D491B0(v59, v81, type metadata accessor for DebugFormatCacheFile);
      v61 = v80;
      sub_1D6BE292C(&v86);
      if (swift_dynamicCast())
      {
        if (*(&v82 + 1))
        {
          (*(v54 + 8))(v56, v53);

          v62 = v82;
          v63 = v85;
          sub_1D5C2AFF4(0, &qword_1EDF338D0, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatObject);
          v78 = v83;
          v76 = v84;
          v65 = v79;
          sub_1D6D491B0(v52, v79 + *(v64 + 36), type metadata accessor for FormatMetadata);
          *v65 = v62;
          v66 = v76;
          *(v65 + 16) = v78;
          *(v65 + 32) = v66;
          *(v65 + 48) = v63;
          sub_1D5C2AFF4(0, &qword_1EC88F138, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for DebugFormatObject);
          v68 = *(v67 + 36);
          sub_1D6D491B0(v60, v65 + v68, type metadata accessor for DebugFormatCacheFile);
          return (*(v87 + 56))(v65 + v68, 0, 1, v61);
        }

        v70 = v82;
      }

      else
      {
        v70 = 0;
        v85 = 0;
        v83 = 0u;
        v84 = 0u;
        v82 = 0u;
      }

      sub_1D5EA0890(v70, 0);
      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      *v71 = v73;
      v71[1] = v55;
      v71[2] = 0xD000000000000012;
      v71[3] = 0x80000001D73BF9B0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6D49218(v60, type metadata accessor for DebugFormatCacheFile);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      *v69 = v48;
      v69[1] = v55;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    sub_1D6D49218(v52, type metadata accessor for FormatMetadata);
    return (*(v54 + 8))(v56, v53);
  }
}

uint64_t sub_1D6D3F148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v76 = a2;
  v95 = a1;
  v77 = a3;
  v3 = type metadata accessor for DebugFormatCacheFile();
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v71 - v9;
  v11 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v75 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1D72585BC();
  v81 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v14);
  v80 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AFF4(0, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v71 - v18);
  sub_1D6D4906C(v95, &v71 - v18, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5EA17B4(0, &qword_1EDF2BE08);
      v22 = *(v21 + 48);
      v23 = v19[5];
      v93 = v19[4];
      v94[0] = v23;
      *(v94 + 9) = *(v19 + 89);
      v24 = v19[1];
      v89 = *v19;
      v90 = v24;
      v25 = v19[3];
      v91 = v19[2];
      v92 = v25;
      sub_1D5C2AFF4(0, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
      v27 = *(v26 + 36);
      v28 = v19 + v22;
      v29 = v77;
      sub_1D6D491B0(v28, v77 + v27, type metadata accessor for FormatMetadata);
      v30 = v94[0];
      v29[4] = v93;
      v29[5] = v30;
      *(v29 + 89) = *(v94 + 9);
      v31 = v90;
      *v29 = v89;
      v29[1] = v31;
      v32 = v92;
      v29[2] = v91;
      v29[3] = v32;
      sub_1D5C2AFF4(0, &qword_1EC88F148, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for DebugFormatObject);
      return (*(v78 + 56))(v29 + *(v33 + 36), 1, 1, v79);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  else
  {
    v73 = v6;
    v95 = v10;
    sub_1D6D48490(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
    v36 = *(v35 + 48);
    v37 = v80;
    v38 = v74;
    (*(v81 + 32))(v80, v19, v74);
    v39 = v75;
    sub_1D6D491B0(v19 + v36, v75, type metadata accessor for FormatMetadata);
    v40 = sub_1D72583DC();
    v42 = sub_1D5FD24A4(1uLL, v40, v41);
    v44 = v43;
    v46 = v45;
    v48 = v47;

    v49 = MEMORY[0x1DA6F97E0](v42, v44, v46, v48);
    v51 = v50;

    v52 = v76;
    v53 = v81;
    if (*(v76 + 16) && (v54 = sub_1D5B69D90(v49, v51), (v55 & 1) != 0))
    {
      v72 = v51;
      v56 = v78;
      v57 = *(v52 + 56) + *(v78 + 72) * v54;
      v58 = v73;
      sub_1D6D49454(v57, v73, type metadata accessor for DebugFormatCacheFile);
      v59 = v95;
      sub_1D6D491B0(v58, v95, type metadata accessor for DebugFormatCacheFile);
      v60 = v79;
      sub_1D6BE292C(&v88);
      if (swift_dynamicCast())
      {
        if (*(&v89 + 1))
        {
          (*(v81 + 8))(v80, v38);

          v86 = v93;
          v87[0] = v94[0];
          *(v87 + 9) = *(v94 + 9);
          v82 = v89;
          v83 = v90;
          v84 = v91;
          v85 = v92;
          sub_1D5C2AFF4(0, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
          v62 = v77;
          sub_1D6D491B0(v39, v77 + *(v61 + 36), type metadata accessor for FormatMetadata);
          v63 = v87[0];
          v62[4] = v86;
          v62[5] = v63;
          *(v62 + 89) = *(v87 + 9);
          v64 = v83;
          *v62 = v82;
          v62[1] = v64;
          v65 = v85;
          v62[2] = v84;
          v62[3] = v65;
          sub_1D5C2AFF4(0, &qword_1EC88F148, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for DebugFormatObject);
          v67 = *(v66 + 36);
          sub_1D6D491B0(v59, v62 + v67, type metadata accessor for DebugFormatCacheFile);
          return (*(v56 + 56))(v62 + v67, 0, 1, v60);
        }
      }

      else
      {
        v93 = 0u;
        memset(v94, 0, 25);
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
      }

      v86 = v93;
      v87[0] = v94[0];
      *(v87 + 9) = *(v94 + 9);
      v82 = v89;
      v83 = v90;
      v84 = v91;
      v85 = v92;
      sub_1D6D48668(&v82, &qword_1EC880150, &type metadata for FormatSupplementary);
      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      v69 = v72;
      *v70 = v49;
      v70[1] = v69;
      v70[2] = 0xD000000000000013;
      v70[3] = 0x80000001D73BF9F0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6D49218(v59, type metadata accessor for DebugFormatCacheFile);
      sub_1D6D49218(v39, type metadata accessor for FormatMetadata);
      return (*(v81 + 8))(v80, v38);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      *v68 = v49;
      v68[1] = v51;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6D49218(v39, type metadata accessor for FormatMetadata);
      return (*(v53 + 8))(v37, v38);
    }
  }
}

uint64_t sub_1D6D3FA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v93 = a1;
  v77 = a3;
  v79 = type metadata accessor for DebugFormatCacheFile();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v3);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v69 - v8;
  v10 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v75 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1D72585BC();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v13);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AFF4(0, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v69 - v18;
  sub_1D6D4906C(v93, &v69 - v18, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5EA17B4(0, &qword_1EDF343F0);
      v22 = *(v21 + 48);
      v23 = *(v19 + 4);
      v90 = *(v19 + 3);
      v91 = v23;
      v92 = v19[80];
      v24 = *(v19 + 2);
      v88 = *(v19 + 1);
      v89 = v24;
      v87 = *v19;
      sub_1D5C2AFF4(0, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
      v26 = *(v25 + 36);
      v27 = &v19[v22];
      v28 = v77;
      sub_1D6D491B0(v27, v77 + v26, type metadata accessor for FormatMetadata);
      v29 = v90;
      *(v28 + 32) = v89;
      *(v28 + 48) = v29;
      *(v28 + 64) = v91;
      *(v28 + 80) = v92;
      v30 = v88;
      *v28 = v87;
      *(v28 + 16) = v30;
      sub_1D5C2AFF4(0, &qword_1EC88F158, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for DebugFormatObject);
      return (*(v78 + 56))(v28 + *(v31 + 36), 1, 1, v79);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  else
  {
    v93 = v5;
    v72 = v9;
    sub_1D6D48490(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
    v34 = *(v33 + 48);
    v35 = v73;
    v36 = v74;
    (*(v73 + 32))(v15, v19, v74);
    v37 = v75;
    sub_1D6D491B0(&v19[v34], v75, type metadata accessor for FormatMetadata);
    v38 = sub_1D72583DC();
    v40 = sub_1D5FD24A4(1uLL, v38, v39);
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v47 = MEMORY[0x1DA6F97E0](v40, v42, v44, v46);
    v49 = v48;
    v50 = v47;

    v51 = v76;
    v52 = v36;
    if (*(v76 + 16) && (v53 = sub_1D5B69D90(v50, v49), (v54 & 1) != 0))
    {
      v69 = v50;
      v70 = v49;
      v71 = v15;
      v55 = v78;
      v56 = v93;
      sub_1D6D49454(*(v51 + 56) + *(v78 + 72) * v53, v93, type metadata accessor for DebugFormatCacheFile);
      v57 = v72;
      sub_1D6D491B0(v56, v72, type metadata accessor for DebugFormatCacheFile);
      v58 = v79;
      sub_1D6BE292C(&v86);
      if (swift_dynamicCast())
      {
        if (*(&v87 + 1))
        {
          (*(v35 + 8))(v71, v52);

          v82 = v89;
          v83 = v90;
          v84 = v91;
          v85 = v92;
          v80 = v87;
          v81 = v88;
          sub_1D5C2AFF4(0, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
          v60 = v55;
          v61 = v77;
          sub_1D6D491B0(v37, v77 + *(v59 + 36), type metadata accessor for FormatMetadata);
          v62 = v83;
          *(v61 + 32) = v82;
          *(v61 + 48) = v62;
          *(v61 + 64) = v84;
          *(v61 + 80) = v85;
          v63 = v81;
          *v61 = v80;
          *(v61 + 16) = v63;
          sub_1D5C2AFF4(0, &qword_1EC88F158, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for DebugFormatObject);
          v65 = *(v64 + 36);
          sub_1D6D491B0(v57, v61 + v65, type metadata accessor for DebugFormatCacheFile);
          return (*(v60 + 56))(v61 + v65, 0, 1, v58);
        }
      }

      else
      {
        v92 = 0;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v87 = 0u;
      }

      v82 = v89;
      v83 = v90;
      v84 = v91;
      v85 = v92;
      v80 = v87;
      v81 = v88;
      sub_1D6D48668(&v80, &qword_1EC880148, &type metadata for FormatType);
      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      v67 = v70;
      *v68 = v69;
      v68[1] = v67;
      v68[2] = 0x795474616D726F46;
      v68[3] = 0xEA00000000006570;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6D49218(v57, type metadata accessor for DebugFormatCacheFile);
      sub_1D6D49218(v37, type metadata accessor for FormatMetadata);
      return (*(v35 + 8))(v71, v52);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      *v66 = v50;
      v66[1] = v49;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6D49218(v37, type metadata accessor for FormatMetadata);
      return (*(v35 + 8))(v15, v36);
    }
  }
}

uint64_t sub_1D6D403D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v76 = a2;
  v95 = a1;
  v77 = a3;
  v3 = type metadata accessor for DebugFormatCacheFile();
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v71 - v9;
  v11 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v75 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1D72585BC();
  v81 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v14);
  v80 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AFF4(0, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v71 - v18);
  sub_1D6D4906C(v95, &v71 - v18, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5EA17B4(0, &qword_1EDF30528);
      v22 = *(v21 + 48);
      v23 = v19[5];
      v93 = v19[4];
      v94[0] = v23;
      *(v94 + 11) = *(v19 + 91);
      v24 = v19[1];
      v89 = *v19;
      v90 = v24;
      v25 = v19[3];
      v91 = v19[2];
      v92 = v25;
      sub_1D5C2AFF4(0, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
      v27 = *(v26 + 36);
      v28 = v19 + v22;
      v29 = v77;
      sub_1D6D491B0(v28, v77 + v27, type metadata accessor for FormatMetadata);
      v30 = v94[0];
      v29[4] = v93;
      v29[5] = v30;
      *(v29 + 91) = *(v94 + 11);
      v31 = v90;
      *v29 = v89;
      v29[1] = v31;
      v32 = v92;
      v29[2] = v91;
      v29[3] = v32;
      sub_1D5C2AFF4(0, &qword_1EC88F168, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for DebugFormatObject);
      return (*(v78 + 56))(v29 + *(v33 + 36), 1, 1, v79);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  else
  {
    v73 = v6;
    v95 = v10;
    sub_1D6D48490(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
    v36 = *(v35 + 48);
    v37 = v80;
    v38 = v74;
    (*(v81 + 32))(v80, v19, v74);
    v39 = v75;
    sub_1D6D491B0(v19 + v36, v75, type metadata accessor for FormatMetadata);
    v40 = sub_1D72583DC();
    v42 = sub_1D5FD24A4(1uLL, v40, v41);
    v44 = v43;
    v46 = v45;
    v48 = v47;

    v49 = MEMORY[0x1DA6F97E0](v42, v44, v46, v48);
    v51 = v50;

    v52 = v76;
    v53 = v81;
    if (*(v76 + 16) && (v54 = sub_1D5B69D90(v49, v51), (v55 & 1) != 0))
    {
      v72 = v51;
      v56 = v78;
      v57 = *(v52 + 56) + *(v78 + 72) * v54;
      v58 = v73;
      sub_1D6D49454(v57, v73, type metadata accessor for DebugFormatCacheFile);
      v59 = v95;
      sub_1D6D491B0(v58, v95, type metadata accessor for DebugFormatCacheFile);
      v60 = v79;
      sub_1D6BE292C(&v88);
      if (swift_dynamicCast())
      {
        if (*(&v89 + 1))
        {
          (*(v81 + 8))(v80, v38);

          v86 = v93;
          v87[0] = v94[0];
          *(v87 + 11) = *(v94 + 11);
          v82 = v89;
          v83 = v90;
          v84 = v91;
          v85 = v92;
          sub_1D5C2AFF4(0, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
          v62 = v77;
          sub_1D6D491B0(v39, v77 + *(v61 + 36), type metadata accessor for FormatMetadata);
          v63 = v87[0];
          v62[4] = v86;
          v62[5] = v63;
          *(v62 + 91) = *(v87 + 11);
          v64 = v83;
          *v62 = v82;
          v62[1] = v64;
          v65 = v85;
          v62[2] = v84;
          v62[3] = v65;
          sub_1D5C2AFF4(0, &qword_1EC88F168, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for DebugFormatObject);
          v67 = *(v66 + 36);
          sub_1D6D491B0(v59, v62 + v67, type metadata accessor for DebugFormatCacheFile);
          return (*(v56 + 56))(v62 + v67, 0, 1, v60);
        }
      }

      else
      {
        v93 = 0u;
        memset(v94, 0, 27);
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
      }

      v86 = v93;
      v87[0] = v94[0];
      *(v87 + 11) = *(v94 + 11);
      v82 = v89;
      v83 = v90;
      v84 = v91;
      v85 = v92;
      sub_1D6D48668(&v82, &qword_1EC880140, &type metadata for FormatDecoration);
      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      v69 = v72;
      *v70 = v49;
      v70[1] = v69;
      v70[2] = 0xD000000000000010;
      v70[3] = 0x80000001D73BF9D0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6D49218(v59, type metadata accessor for DebugFormatCacheFile);
      sub_1D6D49218(v39, type metadata accessor for FormatMetadata);
      return (*(v81 + 8))(v80, v38);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      *v68 = v49;
      v68[1] = v51;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6D49218(v39, type metadata accessor for FormatMetadata);
      return (*(v53 + 8))(v37, v38);
    }
  }
}

uint64_t sub_1D6D40CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v91 = a1;
  v77 = a3;
  v79 = type metadata accessor for DebugFormatCacheFile();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v3);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v69 - v8;
  v10 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v75 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1D72585BC();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v13);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AFF4(0, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v69 - v18;
  sub_1D6D4906C(v91, &v69 - v18, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5EA17B4(0, &qword_1EDF34010);
      v22 = *(v21 + 48);
      v90 = *(v19 + 8);
      v23 = *(v19 + 3);
      v88 = *(v19 + 2);
      v89 = v23;
      v24 = *(v19 + 1);
      v86 = *v19;
      v87 = v24;
      sub_1D5C2AFF4(0, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
      v26 = *(v25 + 36);
      v27 = &v19[v22];
      v28 = v77;
      sub_1D6D491B0(v27, v77 + v26, type metadata accessor for FormatMetadata);
      v29 = v89;
      *(v28 + 32) = v88;
      *(v28 + 48) = v29;
      *(v28 + 64) = v90;
      v30 = v87;
      *v28 = v86;
      *(v28 + 16) = v30;
      sub_1D5C2AFF4(0, &qword_1EC88F178, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for DebugFormatObject);
      return (*(v78 + 56))(v28 + *(v31 + 36), 1, 1, v79);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  else
  {
    v72 = v5;
    v91 = v9;
    sub_1D6D48490(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
    v34 = *(v33 + 48);
    v35 = v73;
    v36 = v74;
    (*(v73 + 32))(v15, v19, v74);
    v37 = v75;
    sub_1D6D491B0(&v19[v34], v75, type metadata accessor for FormatMetadata);
    v38 = sub_1D72583DC();
    v40 = sub_1D5FD24A4(1uLL, v38, v39);
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v47 = MEMORY[0x1DA6F97E0](v40, v42, v44, v46);
    v49 = v48;

    v50 = v76;
    v51 = v37;
    v52 = v36;
    v53 = v35;
    if (*(v76 + 16) && (v54 = sub_1D5B69D90(v47, v49), (v55 & 1) != 0))
    {
      v70 = v47;
      v71 = v49;
      v56 = v78;
      v57 = v72;
      sub_1D6D49454(*(v50 + 56) + *(v78 + 72) * v54, v72, type metadata accessor for DebugFormatCacheFile);
      v58 = v91;
      sub_1D6D491B0(v57, v91, type metadata accessor for DebugFormatCacheFile);
      v59 = v79;
      sub_1D6BE292C(&v85);
      if (swift_dynamicCast())
      {
        if (*(&v86 + 1))
        {
          (*(v53 + 8))(v15, v52);

          v82 = v88;
          v83 = v89;
          v84 = v90;
          v81 = v87;
          v80 = v86;
          sub_1D5C2AFF4(0, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
          v61 = v77;
          sub_1D6D491B0(v51, v77 + *(v60 + 36), type metadata accessor for FormatMetadata);
          v62 = v83;
          *(v61 + 32) = v82;
          *(v61 + 48) = v62;
          *(v61 + 64) = v84;
          v63 = v81;
          *v61 = v80;
          *(v61 + 16) = v63;
          sub_1D5C2AFF4(0, &qword_1EC88F178, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for DebugFormatObject);
          v65 = *(v64 + 36);
          sub_1D6D491B0(v58, v61 + v65, type metadata accessor for DebugFormatCacheFile);
          return (*(v56 + 56))(v61 + v65, 0, 1, v59);
        }
      }

      else
      {
        v90 = 0;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
      }

      v82 = v88;
      v83 = v89;
      v84 = v90;
      v81 = v87;
      v80 = v86;
      sub_1D6D48668(&v80, &qword_1EC880158, &type metadata for FormatStyle);
      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      v67 = v71;
      *v68 = v70;
      v68[1] = v67;
      v68[2] = 0x745374616D726F46;
      v68[3] = 0xEB00000000656C79;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6D49218(v58, type metadata accessor for DebugFormatCacheFile);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      *v66 = v47;
      v66[1] = v49;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    sub_1D6D49218(v51, type metadata accessor for FormatMetadata);
    return (*(v53 + 8))(v15, v52);
  }
}

uint64_t sub_1D6D415E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v71 = a3;
  v70 = a2;
  v74 = a1;
  v3 = type metadata accessor for DebugFormatCacheFile();
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v66 - v9;
  v11 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D72585BC();
  v69 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D48FEC(0, &qword_1EDF2C830, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v66 - v21);
  sub_1D6D49278(v74, &v66 - v21, &qword_1EDF2C830, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D6D48490(0, &qword_1EDF32E98, type metadata accessor for FormatSnippet, type metadata accessor for FormatMetadata);
      v25 = *(v24 + 48);
      v26 = *v22;
      sub_1D6D48FEC(0, &unk_1EDF33820, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for FormatObject);
      v28 = *(v27 + 36);
      v29 = v22 + v25;
      v30 = v71;
      sub_1D6D491B0(v29, &v71[v28], type metadata accessor for FormatMetadata);
      *v30 = v26;
      sub_1D6D48FEC(0, &qword_1EC88F188, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for DebugFormatObject);
      return (*(v72 + 56))(&v30[*(v31 + 36)], 1, 1, v73);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  else
  {
    v67 = v6;
    v68 = v10;
    sub_1D6D48490(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
    v34 = *(v33 + 48);
    v35 = v69;
    (*(v69 + 32))(v18, v22, v15);
    v74 = v14;
    sub_1D6D491B0(v22 + v34, v14, type metadata accessor for FormatMetadata);
    v36 = sub_1D72583DC();
    v38 = sub_1D5FD24A4(1uLL, v36, v37);
    v40 = v39;
    v42 = v41;
    v44 = v43;

    v45 = MEMORY[0x1DA6F97E0](v38, v40, v42, v44);
    v47 = v46;

    v48 = v70;
    v49 = v15;
    v50 = v35;
    v51 = v18;
    if (*(v70 + 16) && (v52 = sub_1D5B69D90(v45, v47), (v53 & 1) != 0))
    {
      v66 = v45;
      v54 = v47;
      v55 = v72;
      v56 = v67;
      sub_1D6D49454(*(v48 + 56) + *(v72 + 72) * v52, v67, type metadata accessor for DebugFormatCacheFile);
      v57 = v68;
      sub_1D6D491B0(v56, v68, type metadata accessor for DebugFormatCacheFile);
      v58 = v73;
      sub_1D6BE292C(&v75);
      type metadata accessor for FormatSnippet();
      if (swift_dynamicCast() && v76)
      {
        (*(v50 + 8))(v51, v49);

        v59 = v76;
        sub_1D6D48FEC(0, &unk_1EDF33820, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for FormatObject);
        v61 = v71;
        sub_1D6D491B0(v74, &v71[*(v60 + 36)], type metadata accessor for FormatMetadata);
        *v61 = v59;
        sub_1D6D48FEC(0, &qword_1EC88F188, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for DebugFormatObject);
        v63 = *(v62 + 36);
        sub_1D6D491B0(v57, &v61[v63], type metadata accessor for DebugFormatCacheFile);
        return (*(v55 + 56))(&v61[v63], 0, 1, v58);
      }

      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      *v65 = v66;
      *(v65 + 8) = v54;
      strcpy((v65 + 16), "FormatSnippet");
      *(v65 + 30) = -4864;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6D49218(v57, type metadata accessor for DebugFormatCacheFile);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      *v64 = v45;
      v64[1] = v47;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    sub_1D6D49218(v74, type metadata accessor for FormatMetadata);
    return (*(v50 + 8))(v51, v49);
  }
}

uint64_t sub_1D6D41E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v79 = a2;
  v103 = a1;
  v75 = a3;
  v3 = type metadata accessor for DebugFormatCacheFile();
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v70 - v9;
  v11 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v80 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D72585BC();
  v73 = *(v14 - 8);
  v74 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v78 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AFF4(0, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v70 - v19);
  sub_1D6D4906C(v103, &v70 - v19, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5EA17B4(0, &qword_1EDF34648);
      v23 = *(v22 + 48);
      v24 = v20[5];
      v100 = v20[4];
      v101 = v24;
      v102[0] = v20[6];
      *(v102 + 9) = *(v20 + 105);
      v25 = v20[1];
      v96 = *v20;
      v97 = v25;
      v26 = v20[3];
      v98 = v20[2];
      v99 = v26;
      sub_1D5C2AFF4(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
      v28 = *(v27 + 36);
      v29 = v20 + v23;
      v30 = v75;
      sub_1D6D491B0(v29, v75 + v28, type metadata accessor for FormatMetadata);
      v31 = v101;
      v30[4] = v100;
      v30[5] = v31;
      v30[6] = v102[0];
      *(v30 + 105) = *(v102 + 9);
      v32 = v97;
      *v30 = v96;
      v30[1] = v32;
      v33 = v99;
      v30[2] = v98;
      v30[3] = v33;
      sub_1D5C2AFF4(0, &qword_1EC88F198, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for DebugFormatObject);
      return (*(v76 + 56))(v30 + *(v34 + 36), 1, 1, v77);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  else
  {
    v72 = v6;
    v103 = v10;
    sub_1D6D48490(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
    v37 = *(v36 + 48);
    v38 = v73;
    v39 = v74;
    v40 = v78;
    (*(v73 + 32))(v78, v20, v74);
    sub_1D6D491B0(v20 + v37, v80, type metadata accessor for FormatMetadata);
    v41 = sub_1D72583DC();
    v43 = sub_1D5FD24A4(1uLL, v41, v42);
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v50 = MEMORY[0x1DA6F97E0](v43, v45, v47, v49);
    v52 = v51;
    v53 = v50;

    if (*(v79 + 16) && (v54 = sub_1D5B69D90(v53, v52), (v55 & 1) != 0))
    {
      v71 = v53;
      v56 = v38;
      v57 = v76;
      v58 = v72;
      sub_1D6D49454(*(v79 + 56) + *(v76 + 72) * v54, v72, type metadata accessor for DebugFormatCacheFile);
      v59 = v103;
      sub_1D6D491B0(v58, v103, type metadata accessor for DebugFormatCacheFile);
      v60 = v77;
      sub_1D6BE292C(&v95);
      if (swift_dynamicCast())
      {
        nullsub_1();
        v92 = v100;
        v93 = v101;
        v94[0] = v102[0];
        *(v94 + 9) = *(v102 + 9);
        v88 = v96;
        v89 = v97;
        v90 = v98;
        v91 = v99;
      }

      else
      {
        sub_1D5EA1584(&v81);
        v100 = v85;
        v101 = v86;
        v102[0] = v87[0];
        *(v102 + 9) = *(v87 + 9);
        v96 = v81;
        v97 = v82;
        v98 = v83;
        v99 = v84;
        v88 = v81;
        v89 = v82;
        v90 = v83;
        v91 = v84;
        v92 = v85;
        v93 = v86;
        v94[0] = v87[0];
        *(v94 + 9) = *(v87 + 9);
      }

      if (sub_1D5DEA380(&v88) == 1)
      {
        v92 = v100;
        v93 = v101;
        v94[0] = v102[0];
        *(v94 + 9) = *(v102 + 9);
        v88 = v96;
        v89 = v97;
        v90 = v98;
        v91 = v99;
        sub_1D6D48668(&v88, &qword_1EC880160, &type metadata for FormatItem);
        type metadata accessor for DebugFormatManagerError();
        sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
        swift_allocError();
        *v62 = v71;
        v62[1] = v52;
        v62[2] = 0x744974616D726F46;
        v62[3] = 0xEA00000000006D65;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1D6D49218(v59, type metadata accessor for DebugFormatCacheFile);
        sub_1D6D49218(v80, type metadata accessor for FormatMetadata);
        return (*(v56 + 8))(v78, v39);
      }

      else
      {
        (*(v56 + 8))(v78, v39);

        v92 = v100;
        v93 = v101;
        v94[0] = v102[0];
        *(v94 + 9) = *(v102 + 9);
        v88 = v96;
        v89 = v97;
        v90 = v98;
        v91 = v99;
        sub_1D5C2AFF4(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
        v64 = v75;
        sub_1D6D491B0(v80, v75 + *(v63 + 36), type metadata accessor for FormatMetadata);
        v65 = v93;
        v64[4] = v92;
        v64[5] = v65;
        v64[6] = v94[0];
        *(v64 + 105) = *(v94 + 9);
        v66 = v89;
        *v64 = v88;
        v64[1] = v66;
        v67 = v91;
        v64[2] = v90;
        v64[3] = v67;
        sub_1D5C2AFF4(0, &qword_1EC88F198, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for DebugFormatObject);
        v69 = *(v68 + 36);
        sub_1D6D491B0(v59, v64 + v69, type metadata accessor for DebugFormatCacheFile);
        return (*(v57 + 56))(v64 + v69, 0, 1, v60);
      }
    }

    else
    {
      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      *v61 = v53;
      v61[1] = v52;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6D49218(v80, type metadata accessor for FormatMetadata);
      return (*(v38 + 8))(v40, v39);
    }
  }
}

uint64_t sub_1D6D427B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v80 = a2;
  v110 = a1;
  v75 = a3;
  v3 = type metadata accessor for DebugFormatCacheFile();
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v71 - v9;
  v11 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v81 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1D72585BC();
  v79 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v14);
  v78 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AFF4(0, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v71 - v18);
  sub_1D6D4906C(v110, &v71 - v18, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5EA17B4(0, &qword_1EDF341E0);
      v22 = *(v21 + 48);
      v23 = v19[7];
      v107 = v19[6];
      v108 = v23;
      v109 = v19[8];
      v24 = v19[5];
      v105 = v19[4];
      v106 = v24;
      v25 = v19[3];
      v103 = v19[2];
      v104 = v25;
      v26 = v19[1];
      v101 = *v19;
      v102 = v26;
      sub_1D5C2AFF4(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
      v28 = *(v27 + 36);
      v29 = v19 + v22;
      v30 = v75;
      sub_1D6D491B0(v29, &v75[v28], type metadata accessor for FormatMetadata);
      v31 = v108;
      *(v30 + 6) = v107;
      *(v30 + 7) = v31;
      *(v30 + 8) = v109;
      v32 = v104;
      *(v30 + 2) = v103;
      *(v30 + 3) = v32;
      v33 = v106;
      *(v30 + 4) = v105;
      *(v30 + 5) = v33;
      v34 = v102;
      *v30 = v101;
      *(v30 + 1) = v34;
      sub_1D5C2AFF4(0, &qword_1EC88F1A8, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for DebugFormatObject);
      return (*(v76 + 56))(&v30[*(v35 + 36)], 1, 1, v77);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  else
  {
    v73 = v6;
    v110 = v10;
    sub_1D6D48490(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
    v38 = *(v37 + 48);
    v39 = v78;
    v40 = v79;
    v41 = v74;
    (*(v79 + 32))(v78, v19, v74);
    sub_1D6D491B0(v19 + v38, v81, type metadata accessor for FormatMetadata);
    v42 = sub_1D72583DC();
    v44 = sub_1D5FD24A4(1uLL, v42, v43);
    v46 = v45;
    v48 = v47;
    v50 = v49;

    v51 = MEMORY[0x1DA6F97E0](v44, v46, v48, v50);
    v53 = v52;
    v54 = v51;

    if (*(v80 + 16) && (v55 = sub_1D5B69D90(v54, v53), (v56 & 1) != 0))
    {
      v72 = v54;
      v57 = v76;
      v58 = v73;
      sub_1D6D49454(*(v80 + 56) + *(v76 + 72) * v55, v73, type metadata accessor for DebugFormatCacheFile);
      v59 = v110;
      sub_1D6D491B0(v58, v110, type metadata accessor for DebugFormatCacheFile);
      v60 = v77;
      sub_1D6BE292C(&v100);
      if (swift_dynamicCast())
      {
        nullsub_1();
        v97 = v107;
        v98 = v108;
        v99 = v109;
        v93 = v103;
        v94 = v104;
        v95 = v105;
        v96 = v106;
        v91 = v101;
        v92 = v102;
      }

      else
      {
        sub_1D5EA181C(&v82);
        v107 = v88;
        v108 = v89;
        v109 = v90;
        v103 = v84;
        v104 = v85;
        v105 = v86;
        v106 = v87;
        v101 = v82;
        v102 = v83;
        v97 = v88;
        v98 = v89;
        v99 = v90;
        v93 = v84;
        v94 = v85;
        v95 = v86;
        v96 = v87;
        v91 = v82;
        v92 = v83;
      }

      if (sub_1D5DEA380(&v91) == 1)
      {
        v97 = v107;
        v98 = v108;
        v99 = v109;
        v93 = v103;
        v94 = v104;
        v95 = v105;
        v96 = v106;
        v91 = v101;
        v92 = v102;
        sub_1D6D48668(&v91, &qword_1EC880168, &type metadata for FormatGroup);
        type metadata accessor for DebugFormatManagerError();
        sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
        swift_allocError();
        *v62 = v72;
        v62[1] = v53;
        v62[2] = 0x724774616D726F46;
        v62[3] = 0xEB0000000070756FLL;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1D6D49218(v59, type metadata accessor for DebugFormatCacheFile);
        sub_1D6D49218(v81, type metadata accessor for FormatMetadata);
        return (*(v79 + 8))(v78, v41);
      }

      else
      {
        (*(v79 + 8))(v78, v41);

        v97 = v107;
        v98 = v108;
        v99 = v109;
        v93 = v103;
        v94 = v104;
        v95 = v105;
        v96 = v106;
        v91 = v101;
        v92 = v102;
        sub_1D5C2AFF4(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
        v64 = v75;
        sub_1D6D491B0(v81, &v75[*(v63 + 36)], type metadata accessor for FormatMetadata);
        v65 = v98;
        *(v64 + 6) = v97;
        *(v64 + 7) = v65;
        *(v64 + 8) = v99;
        v66 = v94;
        *(v64 + 2) = v93;
        *(v64 + 3) = v66;
        v67 = v96;
        *(v64 + 4) = v95;
        *(v64 + 5) = v67;
        v68 = v92;
        *v64 = v91;
        *(v64 + 1) = v68;
        sub_1D5C2AFF4(0, &qword_1EC88F1A8, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for DebugFormatObject);
        v70 = *(v69 + 36);
        sub_1D6D491B0(v59, &v64[v70], type metadata accessor for DebugFormatCacheFile);
        return (*(v57 + 56))(&v64[v70], 0, 1, v60);
      }
    }

    else
    {
      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      *v61 = v54;
      v61[1] = v53;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6D49218(v81, type metadata accessor for FormatMetadata);
      return (*(v40 + 8))(v39, v41);
    }
  }
}

uint64_t sub_1D6D43150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a3;
  v78 = a2;
  v83 = a1;
  sub_1D6D4635C(0, &qword_1EDF331B8, type metadata accessor for FormatPackage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v75 = &v69 - v5;
  v6 = type metadata accessor for FormatPackage();
  v76 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DebugFormatCacheFile();
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v69 - v16;
  v18 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D72585BC();
  v77 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AB28(0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D49454(v83, v29, sub_1D5C2AB28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D6D48490(0, &unk_1EC88B470, type metadata accessor for FormatPackage, type metadata accessor for FormatMetadata);
      v32 = *(v31 + 48);
      v33 = v79;
      sub_1D6D491B0(v29, v79, type metadata accessor for FormatPackage);
      sub_1D6D48FEC(0, &qword_1EDF33848, type metadata accessor for FormatPackage, sub_1D5C2AED8, type metadata accessor for FormatObject);
      sub_1D6D491B0(&v29[v32], v33 + *(v34 + 36), type metadata accessor for FormatMetadata);
      sub_1D6D48FEC(0, &qword_1EC8954E0, type metadata accessor for FormatPackage, sub_1D5C2AED8, type metadata accessor for DebugFormatObject);
      return (*(v80 + 56))(v33 + *(v35 + 36), 1, 1, v81);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  else
  {
    v71 = v9;
    v72 = v13;
    v73 = v17;
    sub_1D6D48490(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
    v38 = *(v37 + 48);
    v39 = v77;
    (*(v77 + 32))(v25, v29, v22);
    v83 = v21;
    sub_1D6D491B0(&v29[v38], v21, type metadata accessor for FormatMetadata);
    v74 = v25;
    v40 = sub_1D72583DC();
    v42 = sub_1D5FD24A4(1uLL, v40, v41);
    v44 = v43;
    v46 = v45;
    v48 = v47;

    v49 = MEMORY[0x1DA6F97E0](v42, v44, v46, v48);
    v51 = v50;

    v52 = v78;
    v53 = v22;
    if (*(v78 + 16) && (v54 = sub_1D5B69D90(v49, v51), (v55 & 1) != 0))
    {
      v70 = v49;
      v56 = v80;
      v57 = v72;
      sub_1D6D49454(*(v52 + 56) + *(v80 + 72) * v54, v72, type metadata accessor for DebugFormatCacheFile);
      v58 = v73;
      sub_1D6D491B0(v57, v73, type metadata accessor for DebugFormatCacheFile);
      v59 = v81;
      sub_1D6BE292C(&v82);
      v60 = v75;
      if (swift_dynamicCast())
      {
        (*(v39 + 8))(v74, v53);

        (*(v76 + 56))(v60, 0, 1, v6);
        v61 = v60;
        v62 = v71;
        sub_1D6D491B0(v61, v71, type metadata accessor for FormatPackage);
        v63 = v79;
        sub_1D6D491B0(v62, v79, type metadata accessor for FormatPackage);
        sub_1D6D48FEC(0, &qword_1EDF33848, type metadata accessor for FormatPackage, sub_1D5C2AED8, type metadata accessor for FormatObject);
        sub_1D6D491B0(v83, v63 + *(v64 + 36), type metadata accessor for FormatMetadata);
        sub_1D6D48FEC(0, &qword_1EC8954E0, type metadata accessor for FormatPackage, sub_1D5C2AED8, type metadata accessor for DebugFormatObject);
        v66 = *(v65 + 36);
        sub_1D6D491B0(v58, v63 + v66, type metadata accessor for DebugFormatCacheFile);
        return (*(v56 + 56))(v63 + v66, 0, 1, v59);
      }

      (*(v76 + 56))(v60, 1, 1, v6);
      sub_1D6D494BC(v60, &qword_1EDF331B8, type metadata accessor for FormatPackage);
      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      *v68 = v70;
      *(v68 + 8) = v51;
      strcpy((v68 + 16), "FormatPackage");
      *(v68 + 30) = -4864;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6D49218(v58, type metadata accessor for DebugFormatCacheFile);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError();
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      *v67 = v49;
      v67[1] = v51;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    sub_1D6D49218(v83, type metadata accessor for FormatMetadata);
    return (*(v39 + 8))(v74, v53);
  }
}

uint64_t sub_1D6D43ACC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C2AFF4(0, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v22 - v8;
  sub_1D5C2AFF4(0, &qword_1EC88F1A8, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for DebugFormatObject);
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v22 - v12;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D699A3AC(0, v14, 0);
    v15 = v27;
    v16 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v23 = *(v6 + 72);
    v22 = v9;
    while (1)
    {
      sub_1D6D4906C(v16, v9, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
      sub_1D6D427B4(v9, v25, v13);
      if (v3)
      {
        break;
      }

      v26 = 0;
      v17 = v13;
      sub_1D6D490E0(v9, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
      v27 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D699A3AC(v18 > 1, v19 + 1, 1);
        v15 = v27;
      }

      *(v15 + 16) = v19 + 1;
      v20 = v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19;
      v13 = v17;
      sub_1D6D4913C(v17, v20, &qword_1EC88F1A8, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for DebugFormatObject);
      v16 += v23;
      --v14;
      v9 = v22;
      v3 = v26;
      if (!v14)
      {
        return v15;
      }
    }

    sub_1D6D490E0(v9, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
  }

  return v15;
}

uint64_t sub_1D6D43E50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C2AFF4(0, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v22 - v8;
  sub_1D5C2AFF4(0, &qword_1EC88F198, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for DebugFormatObject);
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = (&v22 - v12);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D699A38C(0, v14, 0);
    v15 = v27;
    v16 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v23 = *(v6 + 72);
    v22 = v9;
    while (1)
    {
      sub_1D6D4906C(v16, v9, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
      sub_1D6D41E18(v9, v25, v13);
      if (v3)
      {
        break;
      }

      v26 = 0;
      v17 = v13;
      sub_1D6D490E0(v9, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
      v27 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D699A38C(v18 > 1, v19 + 1, 1);
        v15 = v27;
      }

      *(v15 + 16) = v19 + 1;
      v20 = v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19;
      v13 = v17;
      sub_1D6D4913C(v17, v20, &qword_1EC88F198, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for DebugFormatObject);
      v16 += v23;
      --v14;
      v9 = v22;
      v3 = v26;
      if (!v14)
      {
        return v15;
      }
    }

    sub_1D6D490E0(v9, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
  }

  return v15;
}

uint64_t sub_1D6D441D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a2;
  sub_1D6D48FEC(0, &qword_1EDF2C830, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for FormatFileReference);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v20 - v8;
  sub_1D6D48FEC(0, &qword_1EC88F188, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for DebugFormatObject);
  v22 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v20 - v12;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D699A33C(0, v14, 0);
    v15 = v25;
    v16 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v21 = *(v6 + 72);
    while (1)
    {
      sub_1D6D49278(v16, v9, &qword_1EDF2C830, type metadata accessor for FormatFileReference);
      sub_1D6D415E8(v9, v23, v13);
      if (v3)
      {
        break;
      }

      v24 = 0;
      sub_1D6D493F8(v9, &qword_1EDF2C830, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for FormatFileReference);
      v25 = v15;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1D699A33C(v17 > 1, v18 + 1, 1);
        v15 = v25;
      }

      *(v15 + 16) = v18 + 1;
      sub_1D6D49310(v13, v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18, &qword_1EC88F188, type metadata accessor for DebugFormatObject);
      v16 += v21;
      --v14;
      v3 = v24;
      if (!v14)
      {
        return v15;
      }
    }

    sub_1D6D493F8(v9, &qword_1EDF2C830, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for FormatFileReference);
  }

  return v15;
}

uint64_t sub_1D6D44540(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C2AFF4(0, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v22 - v8;
  sub_1D5C2AFF4(0, &qword_1EC88F178, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for DebugFormatObject);
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v22 - v12;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D699A31C(0, v14, 0);
    v15 = v27;
    v16 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v23 = *(v6 + 72);
    v22 = v9;
    while (1)
    {
      sub_1D6D4906C(v16, v9, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
      sub_1D6D40CD0(v9, v25, v13);
      if (v3)
      {
        break;
      }

      v26 = 0;
      v17 = v13;
      sub_1D6D490E0(v9, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
      v27 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D699A31C(v18 > 1, v19 + 1, 1);
        v15 = v27;
      }

      *(v15 + 16) = v19 + 1;
      v20 = v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19;
      v13 = v17;
      sub_1D6D4913C(v17, v20, &qword_1EC88F178, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for DebugFormatObject);
      v16 += v23;
      --v14;
      v9 = v22;
      v3 = v26;
      if (!v14)
      {
        return v15;
      }
    }

    sub_1D6D490E0(v9, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  }

  return v15;
}

uint64_t sub_1D6D448C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C2AFF4(0, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v22 - v8;
  sub_1D5C2AFF4(0, &qword_1EC88F168, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for DebugFormatObject);
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = (&v22 - v12);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D699A2FC(0, v14, 0);
    v15 = v27;
    v16 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v23 = *(v6 + 72);
    v22 = v9;
    while (1)
    {
      sub_1D6D4906C(v16, v9, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
      sub_1D6D403D8(v9, v25, v13);
      if (v3)
      {
        break;
      }

      v26 = 0;
      v17 = v13;
      sub_1D6D490E0(v9, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
      v27 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D699A2FC(v18 > 1, v19 + 1, 1);
        v15 = v27;
      }

      *(v15 + 16) = v19 + 1;
      v20 = v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19;
      v13 = v17;
      sub_1D6D4913C(v17, v20, &qword_1EC88F168, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for DebugFormatObject);
      v16 += v23;
      --v14;
      v9 = v22;
      v3 = v26;
      if (!v14)
      {
        return v15;
      }
    }

    sub_1D6D490E0(v9, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
  }

  return v15;
}

uint64_t sub_1D6D44C48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C2AFF4(0, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v22 - v8;
  sub_1D5C2AFF4(0, &qword_1EC88F158, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for DebugFormatObject);
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v22 - v12;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D699A2DC(0, v14, 0);
    v15 = v27;
    v16 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v23 = *(v6 + 72);
    v22 = v9;
    while (1)
    {
      sub_1D6D4906C(v16, v9, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
      sub_1D6D3FA40(v9, v25, v13);
      if (v3)
      {
        break;
      }

      v26 = 0;
      v17 = v13;
      sub_1D6D490E0(v9, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
      v27 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D699A2DC(v18 > 1, v19 + 1, 1);
        v15 = v27;
      }

      *(v15 + 16) = v19 + 1;
      v20 = v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19;
      v13 = v17;
      sub_1D6D4913C(v17, v20, &qword_1EC88F158, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for DebugFormatObject);
      v16 += v23;
      --v14;
      v9 = v22;
      v3 = v26;
      if (!v14)
      {
        return v15;
      }
    }

    sub_1D6D490E0(v9, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
  }

  return v15;
}

uint64_t sub_1D6D44FCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C2AFF4(0, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v22 - v8;
  sub_1D5C2AFF4(0, &qword_1EC88F148, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for DebugFormatObject);
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = (&v22 - v12);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D699A2BC(0, v14, 0);
    v15 = v27;
    v16 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v23 = *(v6 + 72);
    v22 = v9;
    while (1)
    {
      sub_1D6D4906C(v16, v9, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
      sub_1D6D3F148(v9, v25, v13);
      if (v3)
      {
        break;
      }

      v26 = 0;
      v17 = v13;
      sub_1D6D490E0(v9, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
      v27 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D699A2BC(v18 > 1, v19 + 1, 1);
        v15 = v27;
      }

      *(v15 + 16) = v19 + 1;
      v20 = v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19;
      v13 = v17;
      sub_1D6D4913C(v17, v20, &qword_1EC88F148, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for DebugFormatObject);
      v16 += v23;
      --v14;
      v9 = v22;
      v3 = v26;
      if (!v14)
      {
        return v15;
      }
    }

    sub_1D6D490E0(v9, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
  }

  return v15;
}

uint64_t sub_1D6D45350(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C2AFF4(0, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v22 - v8;
  sub_1D5C2AFF4(0, &qword_1EC88F138, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for DebugFormatObject);
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v22 - v12;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D699A29C(0, v14, 0);
    v15 = v27;
    v16 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v23 = *(v6 + 72);
    v22 = v9;
    while (1)
    {
      sub_1D6D4906C(v16, v9, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
      sub_1D6D3E89C(v9, v25, v13);
      if (v3)
      {
        break;
      }

      v26 = 0;
      v17 = v13;
      sub_1D6D490E0(v9, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
      v27 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D699A29C(v18 > 1, v19 + 1, 1);
        v15 = v27;
      }

      *(v15 + 16) = v19 + 1;
      v20 = v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19;
      v13 = v17;
      sub_1D6D4913C(v17, v20, &qword_1EC88F138, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for DebugFormatObject);
      v16 += v23;
      --v14;
      v9 = v22;
      v3 = v26;
      if (!v14)
      {
        return v15;
      }
    }

    sub_1D6D490E0(v9, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
  }

  return v15;
}

uint64_t sub_1D6D456D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v61 = a3;
  v81 = sub_1D7261ABC();
  v5 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v6);
  v80 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1D7261B2C();
  v8 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v9);
  v78 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1D725891C();
  v89 = *(v77 - 8);
  v11 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v77, v12);
  v76 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v88 = &v59 - v15;
  v17 = *a1;
  v16 = a1[1];
  aBlock = 0;
  v91 = 0xE000000000000000;
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000015, 0x80000001D73F1B90);
  v60 = v17;
  v93 = *(v17 + 16);
  v18 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v18);

  MEMORY[0x1DA6F9910](0xD00000000000001CLL, 0x80000001D73F1B10);
  v19 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role;
  v20 = *(a2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
  if (v20 <= 2)
  {
    v21 = 0xE600000000000000;
    if (*(a2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
    {
      if (v20 == 1)
      {
        v22 = 0x726564616568;
      }

      else
      {
        v22 = 0x7265746F6F66;
      }
    }

    else
    {
      v22 = 0x74756F79616CLL;
    }
  }

  else if (*(a2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
  {
    if (v20 == 5)
    {
      v21 = 0xE700000000000000;
      v22 = 0x7972617262696CLL;
    }

    else
    {
      v22 = 0x756F72676B636162;
      v21 = 0xEA0000000000646ELL;
    }
  }

  else if (v20 == 3)
  {
    v21 = 0xE700000000000000;
    v22 = 0x6C6C6177796170;
  }

  else
  {
    v21 = 0xE500000000000000;
    v22 = 0x656D656874;
  }

  MEMORY[0x1DA6F9910](v22, v21);

  MEMORY[0x1DA6F9910](0x3D6469202CLL, 0xE500000000000000);
  v23 = *(a2 + 24);
  v75 = *(a2 + 16);
  v74 = v23;
  MEMORY[0x1DA6F9910]();
  v24 = aBlock;
  v25 = v91;
  if (qword_1EC87D498 != -1)
  {
    v57 = aBlock;
    swift_once();
    v24 = v57;
  }

  v87 = qword_1EC9BA710;
  sub_1D5F5EBA0(2, 0, 0, v24, v25);

  v26 = v16;
  if (!(v16 >> 62))
  {
    result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_18;
    }

LABEL_46:
    v58 = v61;
    *v61 = v60;
    v58[1] = v26;
  }

  result = sub_1D7263BFC();
  v26 = v16;
  if (!result)
  {
    goto LABEL_46;
  }

LABEL_18:
  if (result >= 1)
  {
    v28 = 0;
    v29 = *(a2 + v19);
    v70 = v26 & 0xC000000000000001;
    v69 = "Successfully fetched ";
    v68 = v89 + 16;
    v67 = v11 + 7;
    v66 = v89 + 32;
    v65 = v92;
    v64 = (v5 + 8);
    v63 = (v8 + 8);
    v62 = v89 + 8;
    v73 = v26;
    v72 = result;
    v71 = v29;
    do
    {
      if (v70)
      {
        v55 = MEMORY[0x1DA6FB460](v28);
      }

      else
      {
        v55 = *(v26 + 8 * v28 + 32);
      }

      v56 = v55;
      aBlock = 0;
      v91 = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000022, v69 | 0x8000000000000000);
      if (v29 > 2)
      {
        v30 = 0x756F72676B636162;
        if (v29 == 5)
        {
          v30 = 0x7972617262696CLL;
        }

        v31 = 0xEA0000000000646ELL;
        if (v29 == 5)
        {
          v31 = 0xE700000000000000;
        }

        v32 = 0x6C6C6177796170;
        if (v29 != 3)
        {
          v32 = 0x656D656874;
        }

        v33 = 0xE500000000000000;
        if (v29 == 3)
        {
          v33 = 0xE700000000000000;
        }

        if (v29 <= 4)
        {
          v34 = v32;
        }

        else
        {
          v34 = v30;
        }

        if (v29 <= 4)
        {
          v35 = v33;
        }

        else
        {
          v35 = v31;
        }
      }

      else if (v29)
      {
        if (v29 == 1)
        {
          v34 = 0x726564616568;
        }

        else
        {
          v34 = 0x7265746F6F66;
        }

        v35 = 0xE600000000000000;
      }

      else
      {
        v35 = 0xE600000000000000;
        v34 = 0x74756F79616CLL;
      }

      v86 = v28 + 1;
      MEMORY[0x1DA6F9910](v34, v35);

      MEMORY[0x1DA6F9910](0x3D6469202CLL, 0xE500000000000000);
      MEMORY[0x1DA6F9910](v75, v74);
      MEMORY[0x1DA6F9910](0x3D746E6F66202CLL, 0xE700000000000000);
      v36 = [v56 description];
      v37 = sub_1D726207C();
      v39 = v38;

      MEMORY[0x1DA6F9910](v37, v39);

      MEMORY[0x1DA6F9910](41, 0xE100000000000000);
      v40 = v91;
      v82 = aBlock;
      v41 = v88;
      sub_1D725890C();
      v84 = *(v87 + 40);
      v42 = v89;
      v44 = v76;
      v43 = v77;
      (*(v89 + 16))(v76, v41, v77);
      v45 = (*(v42 + 80) + 16) & ~*(v42 + 80);
      v46 = (v67 + v45) & 0xFFFFFFFFFFFFFFF8;
      v47 = (v46 + 23) & 0xFFFFFFFFFFFFFFF8;
      v85 = v56;
      v48 = swift_allocObject();
      (*(v42 + 32))(v48 + v45, v44, v43);
      v49 = (v48 + v46);
      *v49 = v82;
      v49[1] = v40;
      v83 = v40;
      *(v48 + v47) = 0;
      *(v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8)) = v87;
      v92[2] = sub_1D6D497F4;
      v92[3] = v48;
      aBlock = MEMORY[0x1E69E9820];
      v91 = 1107296256;
      v92[0] = sub_1D5B6B06C;
      v92[1] = &block_descriptor_11_4;
      v50 = _Block_copy(&aBlock);

      v28 = v86;

      v51 = v78;
      sub_1D7261AEC();
      v93 = MEMORY[0x1E69E7CC0];
      sub_1D5B71130(&qword_1EDF3A8F0, 255, MEMORY[0x1E69E7F60]);
      v52 = MEMORY[0x1E69E7F60];
      sub_1D6D4635C(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1D5B6D5F8(&qword_1EDF1B560, &qword_1EDF1B570, v52);
      v54 = v80;
      v53 = v81;
      sub_1D7263B6C();
      MEMORY[0x1DA6FA730](0, v51, v54, v50);
      _Block_release(v50);
      (*v64)(v54, v53);
      (*v63)(v51, v79);
      (*(v89 + 8))(v88, v43);

      v26 = v73;
      v29 = v71;
    }

    while (v72 != v28);
    goto LABEL_46;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6D46080(uint64_t a1, uint64_t a2)
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD00000000000002BLL, 0x80000001D73F1B60);
  v3 = *(a2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
  if (v3 <= 2)
  {
    v4 = 0xE600000000000000;
    if (*(a2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
    {
      if (v3 == 1)
      {
        v5 = 0x726564616568;
      }

      else
      {
        v5 = 0x7265746F6F66;
      }
    }

    else
    {
      v5 = 0x74756F79616CLL;
    }
  }

  else if (*(a2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
  {
    if (v3 == 5)
    {
      v4 = 0xE700000000000000;
      v5 = 0x7972617262696CLL;
    }

    else
    {
      v4 = 0xEA0000000000646ELL;
      v5 = 0x756F72676B636162;
    }
  }

  else if (v3 == 3)
  {
    v4 = 0xE700000000000000;
    v5 = 0x6C6C6177796170;
  }

  else
  {
    v4 = 0xE500000000000000;
    v5 = 0x656D656874;
  }

  MEMORY[0x1DA6F9910](v5, v4);

  MEMORY[0x1DA6F9910](0x3D6469202CLL, 0xE500000000000000);
  MEMORY[0x1DA6F9910](*(a2 + 16), *(a2 + 24));
  MEMORY[0x1DA6F9910](0x3D726F727265202CLL, 0xE800000000000000);
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  sub_1D5F5EBA0(2, 0, 0, 0, 0xE000000000000000);
}

uint64_t sub_1D6D462AC()
{

  return v0;
}

uint64_t sub_1D6D46304()
{
  sub_1D6D462AC();

  return swift_deallocClassInstance();
}

void sub_1D6D4635C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6D463C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v14 = a3 < 1;
  v15 = a3 - 1;
  if (v14 || (v16 = sub_1D6E7A118(), (v16 & 1) == 0))
  {
    swift_willThrow();
    v24 = a1;
  }

  else
  {
    v27 = a4;
    MEMORY[0x1EEE9AC00](v16, v17);
    *(&v26 - 4) = a2;
    *(&v26 - 3) = v18;
    *(&v26 - 2) = a5;
    sub_1D725BDCC();
    v28 = v15;
    *(swift_allocObject() + 16) = a5;

    v19 = sub_1D725B92C();
    v29 = a2;
    v20 = v19;
    sub_1D67465AC();
    sub_1D725BA8C();

    (*(v11 + 16))(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v10);
    v21 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v28;
    (*(v11 + 32))(v22 + v21, &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    *(v22 + ((v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;

    v23 = sub_1D725B92C();
    type metadata accessor for DebugFormatService();
    a2 = sub_1D725BB7C();
  }

  return a2;
}

uint64_t sub_1D6D46670(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v14 = a3 < 1;
  v15 = a3 - 1;
  if (v14 || (v16 = sub_1D6E7A118(), (v16 & 1) == 0))
  {
    swift_willThrow();
    v24 = a1;
  }

  else
  {
    v27 = a4;
    MEMORY[0x1EEE9AC00](v16, v17);
    *(&v26 - 4) = a2;
    *(&v26 - 3) = v18;
    *(&v26 - 2) = a5;
    sub_1D725BDCC();
    v28 = v15;
    *(swift_allocObject() + 16) = a5;

    v19 = sub_1D725B92C();
    v29 = a2;
    v20 = v19;
    sub_1D6D48B84(0);
    sub_1D725BA8C();

    (*(v11 + 16))(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v10);
    v21 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v28;
    (*(v11 + 32))(v22 + v21, &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    *(v22 + ((v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;

    v23 = sub_1D725B92C();
    type metadata accessor for DebugFormatService();
    a2 = sub_1D725BB7C();
  }

  return a2;
}

uint64_t sub_1D6D46920(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v14 = a3 < 1;
  v15 = a3 - 1;
  if (v14 || (v16 = sub_1D6E7A118(), (v16 & 1) == 0))
  {
    swift_willThrow();
    v24 = a1;
  }

  else
  {
    v27 = a4;
    MEMORY[0x1EEE9AC00](v16, v17);
    *(&v26 - 4) = a2;
    *(&v26 - 3) = v18;
    *(&v26 - 2) = a5;
    sub_1D725BDCC();
    v28 = v15;
    *(swift_allocObject() + 16) = a5;

    v19 = sub_1D725B92C();
    v29 = a2;
    v20 = v19;
    sub_1D60CF7A4();
    sub_1D725BA8C();

    (*(v11 + 16))(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v10);
    v21 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v28;
    (*(v11 + 32))(v22 + v21, &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    *(v22 + ((v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;

    v23 = sub_1D725B92C();
    type metadata accessor for DebugFormatService();
    a2 = sub_1D725BB7C();
  }

  return a2;
}

size_t sub_1D6D46BD0()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1D6996084(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

uint64_t sub_1D6D46C1C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  *(v5 + 16) = a1 + 1;
  v6 = *(type metadata accessor for DebugFormatCacheFile() - 8);
  return sub_1D6D491B0(a2, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * a1, type metadata accessor for DebugFormatCacheFile);
}

uint64_t sub_1D6D46D28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(void)@<X3>, void (*a5)(char *, uint64_t)@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v24 = a6;
  v23 = a5;
  v12 = a3(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v22 - v14;
  v16 = *a1;
  v17 = a1[1];
  type metadata accessor for FormatJSONDecoder();
  swift_allocObject();

  sub_1D5B7BACC(v18);
  a4();
  sub_1D725A69C();

  if (!v7)
  {
    v23(v15, a7);
    v20 = v24(0);
    v21 = (a7 + *(v20 + 44));
    *v21 = v16;
    v21[1] = v17;
    *(a7 + *(v20 + 48)) = a2;

    return sub_1D5E3E824(v16, v17);
  }

  return result;
}

uint64_t sub_1D6D46E88(uint64_t a1, _OWORD *a2)
{
  v40 = *(a1 + 16);
  if (!v40)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = 0;
  v39 = a1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v6 = (v39 + (v3 << 7));
    v7 = v6[5];
    v8 = v6[3];
    v51 = v6[4];
    v52 = v7;
    v9 = v6[5];
    v53[0] = v6[6];
    *(v53 + 9) = *(v6 + 105);
    v10 = v6[1];
    v48[0] = *v6;
    v48[1] = v10;
    v11 = v6[3];
    v13 = *v6;
    v12 = v6[1];
    v49 = v6[2];
    v50 = v11;
    v46[4] = v51;
    v46[5] = v9;
    v47[0] = v6[6];
    *(v47 + 9) = *(v6 + 105);
    v46[0] = v13;
    v46[1] = v12;
    v46[2] = v49;
    v46[3] = v8;
    v14 = a2[5];
    v45[4] = a2[4];
    v45[5] = v14;
    v45[6] = a2[6];
    v15 = a2[1];
    v45[0] = *a2;
    v45[1] = v15;
    v16 = a2[3];
    v45[2] = a2[2];
    v45[3] = v16;
    sub_1D5E9A920(v48, v44);
    FormatResource.loadableFonts(in:)(v45);
    if (v2)
    {
      sub_1D5E9A97C(v48);

      return v4;
    }

    v18 = v17;
    sub_1D5E9A97C(v48);
    v19 = v18 >> 62;
    if (v18 >> 62)
    {
      v20 = sub_1D7263BFC();
    }

    else
    {
      v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = v4 >> 62;
    if (v4 >> 62)
    {
      v37 = sub_1D7263BFC();
      v23 = v37 + v20;
      if (__OFADD__(v37, v20))
      {
LABEL_33:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v23 = v22 + v20;
      if (__OFADD__(v22, v20))
      {
        goto LABEL_33;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v54 = v20;
    if (result)
    {
      if (!v21)
      {
        v24 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v23 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_1D7263BFC();
      goto LABEL_16;
    }

    if (v21)
    {
      goto LABEL_15;
    }

LABEL_16:
    result = sub_1D7263DDC();
    v4 = result;
    v24 = result & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v25 = *(v24 + 16);
    v26 = *(v24 + 24);
    if (v19)
    {
      break;
    }

    v27 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v26 >> 1) - v25) < v54)
    {
      goto LABEL_38;
    }

    v42 = v3;
    v43 = v4;
    v29 = v24 + 8 * v25 + 32;
    v38 = v24;
    if (v19)
    {
      if (v27 < 1)
      {
        goto LABEL_40;
      }

      sub_1D6D47788(0, &qword_1EDF04A38, &qword_1EDF1AAF0, 0x1E69B5380, sub_1D5B5A498);
      sub_1D6D477E4();
      for (i = 0; i != v27; ++i)
      {
        v31 = sub_1D6D877E0(v46, i, v18);
        v33 = *v32;
        (v31)(v46, 0);
        *(v29 + 8 * i) = v33;
      }
    }

    else
    {
      sub_1D5B5A498(0, &qword_1EDF1AAF0);
      swift_arrayInitWithCopy();
    }

    v4 = v43;
    v3 = v42;
    if (v54 >= 1)
    {
      v34 = *(v38 + 16);
      v35 = __OFADD__(v34, v54);
      v36 = v34 + v54;
      if (v35)
      {
        goto LABEL_39;
      }

      *(v38 + 16) = v36;
    }

LABEL_4:
    if (++v3 == v40)
    {
      return v4;
    }
  }

  v28 = v24;
  result = sub_1D7263BFC();
  v24 = v28;
  v27 = result;
  if (result)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v54 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void sub_1D6D47228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v29 = a5;
  v31 = a2;
  v32 = a3;
  sub_1D6D48FEC(0, &qword_1EC8954E0, type metadata accessor for FormatPackage, sub_1D5C2AED8, type metadata accessor for DebugFormatObject);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = (v27 - v11);
  v13 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
  v30 = a1;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = 0;
    v27[0] = v10;
    v28 = v14;
    while (2)
    {
      v27[1] = v13;
      while (1)
      {
        if (v15 >= v14)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          return;
        }

        sub_1D5C2AB28(0);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_19;
        }

        sub_1D6D43150(v30 + ((*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80)) + *(*(v16 - 8) + 72) * v15, v32, v12);
        if (v5)
        {
          goto LABEL_16;
        }

        v33 = v15 + 1;
        v17 = *a4;
        v18 = *v12;
        v19 = v12[1];
        v20 = v12;

        v21 = sub_1D5BE240C(v18, v19, v17);

        if (v21)
        {
          type metadata accessor for DebugFormatManagerError();
          sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError);
          swift_allocError();
          *v26 = v18;
          v26[1] = v19;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_1D6D493F8(v20, &qword_1EC8954E0, type metadata accessor for FormatPackage, sub_1D5C2AED8, type metadata accessor for DebugFormatObject);
LABEL_16:

          return;
        }

        sub_1D5B860D0(&v34, v18, v19);

        v22 = *v29;

        v23 = sub_1D5BE240C(v18, v19, v22);

        if ((v23 & 1) == 0)
        {
          break;
        }

        v12 = v20;
        sub_1D6D493F8(v20, &qword_1EC8954E0, type metadata accessor for FormatPackage, sub_1D5C2AED8, type metadata accessor for DebugFormatObject);
        ++v15;
        v14 = v28;
        if (v33 == v28)
        {
          return;
        }
      }

      v24 = v29;
      sub_1D5B860D0(&v34, v18, v19);

      v12 = v20;
      sub_1D6D38070(v20, v32, v20 + *(v27[0] + 36), v24);
      v25 = sub_1D6D493F8(v20, &qword_1EC8954E0, type metadata accessor for FormatPackage, sub_1D5C2AED8, type metadata accessor for DebugFormatObject);
      MEMORY[0x1DA6F9CE0](v25);
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      v13 = v35;
      v14 = v28;
      v15 = v33;
      if (v33 != v28)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t objectdestroy_3Tm_3()
{
  v1 = sub_1D725891C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  v5 = *(v0 + v4);
  if ((v5 - 1) >= 4)
  {
  }

  return swift_deallocObject();
}

void sub_1D6D47788(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D72627FC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D6D477E4()
{
  result = qword_1EDF04A30;
  if (!qword_1EDF04A30)
  {
    sub_1D6D47788(255, &qword_1EDF04A38, &qword_1EDF1AAF0, 0x1E69B5380, sub_1D5B5A498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04A30);
  }

  return result;
}

uint64_t sub_1D6D47868@<X0>(BOOL *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(*(v1 + 32) + 16) == 0;
  return result;
}

void sub_1D6D478DC()
{
  if (!qword_1EC895438)
  {
    type metadata accessor for DebugFormatManagerIndex();
    sub_1D6D47994();
    sub_1D6D4635C(255, qword_1EC88E160, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC895438);
    }
  }
}

void sub_1D6D47994()
{
  if (!qword_1EC895440)
  {
    type metadata accessor for DebugFormatCacheFile();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC895440);
    }
  }
}

void *sub_1D6D47A68(uint64_t a1)
{
  v44 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v44, v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D4635C(0, &qword_1EC895458, type metadata accessor for DebugFormatWorkspaceReference, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v36 - v7;
  v9 = type metadata accessor for DebugFormatWorkspaceReference();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v39 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DebugFormatCacheFile();
  v42 = *(v13 - 8);
  v43 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 64);
  v21 = (v18 + 63) >> 6;
  v41 = (v10 + 56);
  v38 = v10;
  v22 = (v10 + 48);
  v45 = a1;

  v24 = 0;
  v40 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v25 = v24;
    if (!v20)
    {
      break;
    }

LABEL_8:
    sub_1D6D49454(*(v45 + 56) + *(v42 + 72) * (__clz(__rbit64(v20)) | (v24 << 6)), v16, type metadata accessor for DebugFormatCacheFile);
    sub_1D6D49454(&v16[*(v43 + 32)], v4, type metadata accessor for FormatFile);
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      v26 = *(v4 + 9);
      *(v8 + 8) = *(v4 + 8);
      *(v8 + 9) = v26;
      *(v8 + 10) = *(v4 + 10);
      *(v8 + 175) = *(v4 + 175);
      v27 = *(v4 + 5);
      *(v8 + 4) = *(v4 + 4);
      *(v8 + 5) = v27;
      v28 = *(v4 + 7);
      *(v8 + 6) = *(v4 + 6);
      *(v8 + 7) = v28;
      v29 = *(v4 + 3);
      *(v8 + 2) = *(v4 + 2);
      *(v8 + 3) = v29;
      v30 = *(v4 + 1);
      *v8 = *v4;
      *(v8 + 1) = v30;
      sub_1D6D491B0(v16, &v8[*(v9 + 20)], type metadata accessor for DebugFormatCacheFile);
      (*v41)(v8, 0, 1, v9);
    }

    else
    {
      sub_1D6D49218(v16, type metadata accessor for DebugFormatCacheFile);
      (*v41)(v8, 1, 1, v9);
      sub_1D6D49218(v4, type metadata accessor for FormatFile);
    }

    v20 &= v20 - 1;
    if ((*v22)(v8, 1, v9) == 1)
    {
      result = sub_1D6D494BC(v8, &qword_1EC895458, type metadata accessor for DebugFormatWorkspaceReference);
    }

    else
    {
      sub_1D6D491B0(v8, v39, type metadata accessor for DebugFormatWorkspaceReference);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1D699651C(0, v40[2] + 1, 1, v40);
      }

      v32 = v40[2];
      v31 = v40[3];
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v36 = v40[2];
        v37 = v32 + 1;
        v35 = sub_1D699651C(v31 > 1, v32 + 1, 1, v40);
        v32 = v36;
        v33 = v37;
        v40 = v35;
      }

      v34 = v40;
      v40[2] = v33;
      result = sub_1D6D491B0(v39, v34 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v32, type metadata accessor for DebugFormatWorkspaceReference);
    }
  }

  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      return v40;
    }

    v20 = *(v17 + 8 * v24);
    ++v25;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void sub_1D6D47FBC()
{
  if (!qword_1EC895468)
  {
    sub_1D6D4635C(255, qword_1EC88E160, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E62F8]);
    sub_1D6D493A8(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D6D47788(255, &qword_1EDF1AE00, &qword_1EDF3C5D0, MEMORY[0x1E69E7280], sub_1D5B49474);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC895468);
    }
  }
}

void sub_1D6D4818C()
{
  if (!qword_1EC895470)
  {
    sub_1D6D4635C(255, qword_1EC88E160, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E62F8]);
    sub_1D6D493A8(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D6D47788(255, &qword_1EDF1AE00, &qword_1EDF3C5D0, MEMORY[0x1E69E7280], sub_1D5B49474);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC895470);
    }
  }
}

void sub_1D6D48318()
{
  if (!qword_1EC895480)
  {
    v0 = type metadata accessor for DebugFormatServiceResult();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC895480);
    }
  }
}

uint64_t sub_1D6D483A4(__int128 *a1, uint64_t a2)
{
  v5 = *(sub_1D72585BC() - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for DebugFormatCacheFileMetadata() - 8);
  return sub_1D6D35F58(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 40), v2 + v6, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), *(v2 + 32));
}

void sub_1D6D48490(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D6D485F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D6D48668(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D6D493A8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6D48788(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void, unint64_t, void))
{
  v7 = *(sub_1D72585BC() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  return a3(a1, a2, *(v3 + 16), v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_29Tm_1()
{
  v1 = *(type metadata accessor for DebugFormatManagerIndex() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);

  v3 = v0 + v2 + *(type metadata accessor for DebugFormatFileDirectory(0) + 20);
  v4 = sub_1D725BD1C();
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);
  v6 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  v5(v3 + *(v6 + 20), v4);

  return swift_deallocObject();
}

void sub_1D6D48AAC()
{
  if (!qword_1EC8954A0)
  {
    type metadata accessor for DebugFormatCacheFile();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8954A0);
    }
  }
}

void sub_1D6D48BCC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void), void (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    a5();
    v8 = type metadata accessor for DebugFormatServiceResult();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D6D48CF4@<X0>(BOOL *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(*(v1 + 24) + 16) == 0;
  return result;
}

void sub_1D6D48DD8()
{
  if (!qword_1EC8954D0)
  {
    sub_1D5EF3A64(255);
    sub_1D6D47788(255, &qword_1EDF1AE00, &qword_1EDF3C5D0, MEMORY[0x1E69E7280], sub_1D5B49474);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8954D0);
    }
  }
}

uint64_t sub_1D6D48F00()
{
  type metadata accessor for FormatPackage();
  type metadata accessor for DebugFormatCacheFile();
  return sub_1D6D37CD0();
}

void sub_1D6D48FEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D6D4906C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5C2AFF4(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D6D490E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5C2AFF4(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D6D4913C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5C2AFF4(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D6D491B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6D49218(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6D49278(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1D6D48FEC(0, a3, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6D49310(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1D6D48FEC(0, a3, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1D6D493A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D6D493F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1D6D48FEC(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D6D49454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6D494BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6D4635C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_22Tm()
{
  v1 = sub_1D72585BC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D6D4962C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1D72585BC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_1D6D33A14(a1, a2, v2 + v6, *(v2 + v6 + *(v5 + 64)));
}

uint64_t objectdestroy_40Tm_0()
{
  v1 = sub_1D72585BC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed14FormatDOMErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 0xFu) <= 0xA)
  {
    return *(a1 + 24) & 0xF;
  }

  else
  {
    return (*a1 + 11);
  }
}

uint64_t sub_1D6D498A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5 && *(a1 + 25))
  {
    return (*a1 + 245);
  }

  v3 = *(a1 + 24);
  if (v3 <= 0xB)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D6D498F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 245;
    if (a3 >= 0xF5)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D6D49938(uint64_t result, unsigned int a2)
{
  v2 = a2 - 11;
  if (a2 >= 0xB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 11;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t _s8NewsFeed19FormatColumnRowSpanV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
    v3 = *(a2 + 8);
    v4 = *(a1 + 16);
    v9 = *(a1 + 8);
    v10 = v4;
    v7 = v3;
    v8 = v2;

    v5 = _s8NewsFeed11FormatRatioO2eeoiySbAC_ACtFZ_0(&v9, &v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_1D6D49A14(uint64_t a1)
{
  result = sub_1D6D49A3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D49A3C()
{
  result = qword_1EC8954E8;
  if (!qword_1EC8954E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8954E8);
  }

  return result;
}

unint64_t sub_1D6D49A90(void *a1)
{
  a1[1] = sub_1D5CBA124();
  a1[2] = sub_1D66F8CB4();
  result = sub_1D6D49AC8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6D49AC8()
{
  result = qword_1EC8954F0;
  if (!qword_1EC8954F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8954F0);
  }

  return result;
}

BOOL static FormatSourceItemTipObject.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return _s8NewsFeed26FormatSourceItemTipBindingO2eeoiySbAC_ACtFZ_0(&v5, &v4);
}

BOOL sub_1D6D49BC4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return _s8NewsFeed26FormatSourceItemTipBindingO2eeoiySbAC_ACtFZ_0(&v5, &v4);
}

unint64_t sub_1D6D49C00(uint64_t a1)
{
  result = sub_1D6D49C28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D49C28()
{
  result = qword_1EC8954F8;
  if (!qword_1EC8954F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8954F8);
  }

  return result;
}

unint64_t sub_1D6D49C7C(void *a1)
{
  a1[1] = sub_1D66B9F78();
  a1[2] = sub_1D66BA148();
  result = sub_1D6D49CB4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6D49CB4()
{
  result = qword_1EC895500;
  if (!qword_1EC895500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895500);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatSourceItemTipBinding(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD)
  {
    goto LABEL_17;
  }

  if (a2 + 243 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 243) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 243;
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

      return (*a1 | (v4 << 8)) - 243;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 243;
    }
  }

LABEL_17:
  v6 = ((2 * *a1) & 0xC | (*a1 >> 3) & 3) ^ 0xF;
  if (v6 >= 0xC)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for FormatSourceItemTipBinding(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 243 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 243) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD)
  {
    v4 = 0;
  }

  if (a2 > 0xC)
  {
    v5 = ((a2 - 13) >> 8) + 1;
    *result = a2 - 13;
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
    *result = 2 * ((((-a2 >> 2) & 3) - 4 * a2) & 0xF);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D6D49E84(uint64_t a1, uint64_t a2)
{
  sub_1D5EA74B8();
  v154 = v4;
  v164 = *(v4 - 8);
  v165 = v4 - 8;
  v166 = v164;
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for WebEmbedDataVisualization();
  v152 = *(v8 - 8);
  v153 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v146 = (&v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v145 = (&v143 - v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v144 = (&v143 - v16);
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v155 = &v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v156 = &v143 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v149 = &v143 - v25;
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v148 = &v143 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for FeedHeadline(0);
  v157 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163, v29);
  v143 = &v143 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a1 + 112);
  v196 = *(a1 + 96);
  v197 = v31;
  v198 = *(a1 + 128);
  v199 = *(a1 + 144);
  v32 = *(a1 + 48);
  v192 = *(a1 + 32);
  v193 = v32;
  v33 = *(a1 + 80);
  v194 = *(a1 + 64);
  v195 = v33;
  v34 = *(a1 + 16);
  v190 = *a1;
  v191 = v34;
  *&v159 = MEMORY[0x1E69E6F90];
  sub_1D6D4B0E0(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1D7279960;
  v169[2] = a2;
  v36 = sub_1D5ECF488(sub_1D6D4B144, v169, &unk_1F50F7420);
  sub_1D6795150(0x6E61656C6F6F42, 0xE700000000000000, 0, 0, v36, v181);

  *(v35 + 56) = &type metadata for FormatInspectionGroup;
  *(v35 + 64) = &off_1F518B2C0;
  v37 = swift_allocObject();
  *(v35 + 32) = v37;
  v147 = v35 + 32;
  v38 = v181[1];
  *(v37 + 16) = v181[0];
  *(v37 + 32) = v38;
  *(v37 + 48) = v182;
  v168[2] = a2;
  v39 = sub_1D71964DC(sub_1D6D4B164, v168, &unk_1F50F74C8);
  v40 = sub_1D5F62998(v39);

  sub_1D6795150(1954047316, 0xE400000000000000, 0, 0, v40, v183);

  *(v35 + 96) = &type metadata for FormatInspectionGroup;
  *(v35 + 104) = &off_1F518B2C0;
  v41 = swift_allocObject();
  *(v35 + 72) = v41;
  v42 = v183[1];
  *(v41 + 16) = v183[0];
  *(v41 + 32) = v42;
  *(v41 + 48) = v184;
  v167[2] = a2;
  v43 = sub_1D5ECF4A0(sub_1D6D4B180, v167, &unk_1F50F74F0);
  sub_1D6795150(5001813, 0xE300000000000000, 0, 0, v43, v185);

  *(v35 + 136) = &type metadata for FormatInspectionGroup;
  *(v35 + 144) = &off_1F518B2C0;
  v44 = swift_allocObject();
  v158 = v35;
  *(v35 + 112) = v44;
  v45 = v185[1];
  *(v44 + 16) = v185[0];
  *(v44 + 32) = v45;
  *(v44 + 48) = v186;
  v46 = v159;
  sub_1D6D4B0E0(0, &qword_1EC880490, sub_1D5EA74B8, v159);
  v47 = (*(v166 + 80) + 32) & ~*(v166 + 80);
  v166 = *(v164 + 72);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1D7279970;
  v162 = v47;
  v49 = (v48 + v47);
  v50 = v148;
  v161 = v49;
  sub_1D6D4B0E0(0, &qword_1EC8803C0, sub_1D5E4F38C, v46);
  v52 = v51;
  v53 = swift_allocObject();
  v159 = xmmword_1D7273AE0;
  *(v53 + 16) = xmmword_1D7273AE0;
  v54 = type metadata accessor for FeedWebEmbed();
  sub_1D6D4B248(a2 + *(v54 + 48), v50, sub_1D5B69BE0);
  v55 = (*(v157 + 48))(v50, 1, v163);
  v151 = v48;
  v160 = a2;
  if (v55 == 1)
  {
    sub_1D6D4B1A0(v50, sub_1D5B69BE0);
    v56 = sub_1D7073500(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v57 = v143;
    sub_1D5CAD8D4(v50, v143, type metadata accessor for FeedHeadline);
    v58 = *(a1 + 112);
    v177 = *(a1 + 96);
    v178 = v58;
    v179 = *(a1 + 128);
    v180 = *(a1 + 144);
    v59 = *(a1 + 48);
    v173 = *(a1 + 32);
    v174 = v59;
    v60 = *(a1 + 80);
    v175 = *(a1 + 64);
    v176 = v60;
    v61 = *(a1 + 16);
    v171 = *a1;
    v172 = v61;
    v56 = sub_1D5E4E6A4(&v171, v57);
    sub_1D6D4B1A0(v57, type metadata accessor for FeedHeadline);
  }

  *(v53 + 56) = &type metadata for FormatInspection;
  *(v53 + 64) = &off_1F51E3FD0;
  *(v53 + 32) = v56;
  v62 = sub_1D5F62BFC(v53);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v53 + 32);
  swift_deallocClassInstance();
  v63 = sub_1D7073500(v62);

  v64 = v161;
  sub_1D711AD20(0x656E696C64616548, 0xE800000000000000, v63, 0, 0, v161);
  v65 = type metadata accessor for FormatInspectionItem(0);
  v66 = *(v65 - 8);
  v164 = *(v66 + 56);
  v165 = v65;
  v163 = v66 + 56;
  (v164)(v64, 0, 1);
  v148 = v52;
  v67 = swift_allocObject();
  *(v67 + 16) = v159;
  v157 = *(v54 + 52);
  v68 = v149;
  sub_1D6D4B248(v160 + v157, v149, sub_1D5B4D72C);
  v69 = v153;
  v70 = *(v152 + 48);
  v71 = v70(v68, 1, v153);
  v72 = sub_1D5B4D72C;
  v73 = v156;
  v150 = v54;
  if (v71 == 1)
  {
    goto LABEL_7;
  }

  v74 = v68;
  v75 = v68;
  v76 = v144;
  sub_1D6D4B248(v74, v144, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D6D4B1A0(v76, type metadata accessor for WebEmbedDataVisualization);
    v72 = type metadata accessor for WebEmbedDataVisualization;
    v68 = v75;
LABEL_7:
    sub_1D6D4B1A0(v68, v72);
LABEL_8:
    v77 = sub_1D7073500(MEMORY[0x1E69E7CC0]);
    goto LABEL_9;
  }

  v87 = *v76;
  sub_1D6D4B1A0(v75, type metadata accessor for WebEmbedDataVisualization);
  *&v171 = v87;
  v88 = SportsDataVisualization.event.getter();
  v73 = v156;

  if (!v88)
  {
    goto LABEL_8;
  }

  v89 = [swift_unknownObjectRetain() identifier];
  v152 = sub_1D726207C();
  v91 = v90;

  swift_unknownObjectRelease();
  v177 = v196;
  v178 = v197;
  v179 = v198;
  v180 = v199;
  v173 = v192;
  v174 = v193;
  v175 = v194;
  v176 = v195;
  v171 = v190;
  v172 = v191;
  *&v187 = v152;
  *(&v187 + 1) = v91;
  v188 = v88;
  LOBYTE(v189) = 0;
  v92 = sub_1D6B19314(&v171, &v187);
  swift_unknownObjectRelease();

  v77 = v92;
  v73 = v156;
LABEL_9:
  *(v67 + 56) = &type metadata for FormatInspection;
  *(v67 + 64) = &off_1F51E3FD0;
  *(v67 + 32) = v77;
  v78 = sub_1D5F62BFC(v67);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v67 + 32);
  swift_deallocClassInstance();
  v79 = sub_1D7073500(v78);

  v80 = v166;
  v81 = v161;
  sub_1D711AD20(0x45207374726F7053, 0xEC000000746E6576, v79, 0, 0, &v161[v166]);
  (v164)(&v81[v80], 0, 1, v165);
  v82 = v160;
  v83 = v157;
  sub_1D6D4B248(v160 + v157, v73, sub_1D5B4D72C);
  if (v70(v73, 1, v69) == 1)
  {
    sub_1D6D4B1A0(v73, sub_1D5B4D72C);
    v156 = 0;
    v84 = 0;
  }

  else
  {
    v85 = v82;
    v86 = v145;
    sub_1D6D4B248(v73, v145, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D6D4B1A0(v86, type metadata accessor for WebEmbedDataVisualization);
      sub_1D6D4B1A0(v73, type metadata accessor for WebEmbedDataVisualization);
      v156 = 0;
      v84 = 0;
    }

    else
    {
      v93 = *v86;
      sub_1D6D4B1A0(v73, type metadata accessor for WebEmbedDataVisualization);

      v94 = (v93 >> 58) & 0x38;
      v156 = *&aScore_29[v94];
      v84 = *&aBoxscorelinesc[v94 + 32];
    }

    v82 = v85;
    v83 = v157;
  }

  v95 = swift_allocObject();
  *(v95 + 16) = v159;
  v177 = v196;
  v178 = v197;
  v179 = v198;
  v180 = v199;
  v173 = v192;
  v174 = v193;
  v175 = v194;
  v176 = v195;
  v171 = v190;
  v172 = v191;
  v96 = v82 + v83;
  v97 = v155;
  sub_1D6D4B248(v96, v155, sub_1D5B4D72C);
  v98 = v70(v97, 1, v69);
  v99 = sub_1D5B4D72C;
  if (v98 == 1)
  {
    goto LABEL_20;
  }

  v100 = v146;
  sub_1D6D4B248(v97, v146, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D6D4B1A0(v100, type metadata accessor for WebEmbedDataVisualization);
    v99 = type metadata accessor for WebEmbedDataVisualization;
    v97 = v155;
LABEL_20:
    v101 = 0xF000000000000007;
    goto LABEL_22;
  }

  v101 = *v100;
  v99 = type metadata accessor for WebEmbedDataVisualization;
LABEL_22:
  sub_1D6D4B1A0(v97, v99);
  v102 = &v161[2 * v166];
  *&v187 = v101;
  v103 = sub_1D6F88A40(&v171, &v187);
  sub_1D5FC5034(v187);
  *(v95 + 56) = &type metadata for FormatInspection;
  *(v95 + 64) = &off_1F51E3FD0;
  *(v95 + 32) = v103;
  v104 = sub_1D5F62BFC(v95);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v95 + 32);
  swift_deallocClassInstance();
  v105 = sub_1D7073500(v104);

  sub_1D711AD20(0xD000000000000019, 0x80000001D73F1C90, v105, v156, v84, v102);
  (v164)(v102, 0, 1, v165);
  sub_1D6795150(0x65626D4520626557, 0xE900000000000064, 0, 0, v151, &v187);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v106 = v158;
  *(v158 + 176) = &type metadata for FormatInspectionGroup;
  *(v106 + 184) = &off_1F518B2C0;
  v107 = swift_allocObject();
  *(v106 + 152) = v107;
  v108 = v188;
  *(v107 + 16) = v187;
  *(v107 + 32) = v108;
  *(v107 + 48) = v189;
  *(&v172 + 1) = v150;
  *&v173 = sub_1D6D4B200(&qword_1EDF12B88, type metadata accessor for FeedWebEmbed);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v171);
  sub_1D6D4B248(v160, boxed_opaque_existential_1, type metadata accessor for FeedWebEmbed);
  sub_1D713A66C(&v171, &v170);
  __swift_destroy_boxed_opaque_existential_1(&v171);
  v110 = v170;
  v170 = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, 0, 0);
  v111 = v170;
  if (v110)
  {
    while (1)
    {
      v112 = v110 & -v110;
      *&v171 = 91;
      *(&v171 + 1) = 0xE100000000000000;
      v169[4] = v112;
      v169[3] = sub_1D713AFE4();
      sub_1D5BBE0A8();
      sub_1D6D4B200(&qword_1EDF3C840, sub_1D5BBE0A8);
      v113 = sub_1D7261F3C();
      v115 = v114;

      MEMORY[0x1DA6F9910](v113, v115);

      MEMORY[0x1DA6F9910](93, 0xE100000000000000);
      v116 = sub_1D5FD24A4(1uLL, v171, *(&v171 + 1));
      v118 = v117;

      result = sub_1D726398C();
      if (__OFSUB__(result, 1))
      {
        break;
      }

      result = sub_1D726396C();
      if (v120)
      {
        v121 = v118;
      }

      else
      {
        v121 = result;
      }

      if (v121 >> 14 < v116 >> 14)
      {
        goto LABEL_34;
      }

      v122 = sub_1D72639BC();
      v124 = v123;
      v126 = v125;
      v128 = v127;

      v129 = MEMORY[0x1DA6F97E0](v122, v124, v126, v128);
      v131 = v130;

      v132 = v165;
      v133 = (v7 + *(v165 + 24));
      *v133 = 0;
      v133[1] = 0xE000000000000000;
      v134 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v134 - 8) + 56))(v133, 0, 1, v134);
      *v7 = v129;
      v7[1] = v131;
      v7[2] = 0;
      v7[3] = 0;
      v135 = v7 + *(v132 + 28);
      *v135 = 0;
      *(v135 + 1) = 0;
      v135[16] = -1;
      (v164)(v7, 0, 1, v132);
      v170 = v111;
      v137 = *(v111 + 16);
      v136 = *(v111 + 24);
      if (v137 >= v136 >> 1)
      {
        sub_1D69972A4(v136 > 1, v137 + 1, 1);
        v111 = v170;
      }

      *(v111 + 16) = v137 + 1;
      sub_1D5CAD8D4(v7, v111 + v162 + v137 * v166, sub_1D5EA74B8);
      v138 = v112 == v110;
      v110 ^= v112;
      if (v138)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_32:
    sub_1D6795150(0x737469617254, 0xE600000000000000, 0, 0, v111, &v171);

    v139 = v158;
    *(v158 + 216) = &type metadata for FormatInspectionGroup;
    *(v139 + 224) = &off_1F518B2C0;
    v140 = swift_allocObject();
    *(v139 + 192) = v140;
    v141 = v172;
    *(v140 + 16) = v171;
    *(v140 + 32) = v141;
    *(v140 + 48) = v173;
    v142 = sub_1D7073500(v139);
    swift_setDeallocating();
    sub_1D5E4F358(0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v142;
  }

  return result;
}

void sub_1D6D4B0E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6D4B1A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6D4B200(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6D4B248(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t FormatModelContext.dragItem.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B76B10(v1, v7);
  sub_1D5B49474(0, &qword_1EC895508);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v5, v8);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_1D725FB2C();
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_1D5BFB774(v5, &qword_1EC895510, &qword_1EC895508);
    v4 = sub_1D725F84C();
    return (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
  }
}

uint64_t FormatModelContext.rankValue.getter()
{
  sub_1D5B76B10(v0, v5);
  sub_1D5B49474(0, &unk_1EDF17078);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v3, v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v1 = sub_1D725DF9C();
    __swift_destroy_boxed_opaque_existential_1(v6);
    return v1;
  }

  else
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    sub_1D5BFB774(v3, &qword_1EC895518, &unk_1EDF17078);
    return 0;
  }
}

uint64_t FormatModelContext.keyCommands.getter()
{
  sub_1D5B76B10(v0, v5);
  sub_1D5B49474(0, &qword_1EC895520);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v3, v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v1 = sub_1D725EA2C();
    __swift_destroy_boxed_opaque_existential_1(v6);
    return v1;
  }

  else
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    sub_1D5BFB774(v3, &qword_1EC895528, &qword_1EC895520);
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t FormatModelContext.isImpressionable.getter()
{
  sub_1D5B76B10(v0, v5);
  sub_1D5B49474(0, &unk_1EDF17240);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v3, v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v1 = sub_1D725D10C();
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    sub_1D5BFB774(v3, &qword_1EC895530, &unk_1EDF17240);
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t FormatModelContext.selectionStyle.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B76B10(v1, v8);
  sub_1D5B49474(0, &qword_1EC895538);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v6, v9);
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_1D725CA4C();
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1D5BFB774(v6, &qword_1EC895540, &qword_1EC895538);
    v4 = *MEMORY[0x1E69D77F8];
    v5 = sub_1D725D20C();
    return (*(*(v5 - 8) + 104))(a1, v4, v5);
  }
}

uint64_t FormatModelContext.highlightStyle.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B76B10(v1, v8);
  sub_1D5B49474(0, &qword_1EC895548);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v6, v9);
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_1D725CF0C();
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1D5BFB774(v6, &qword_1EC895550, &qword_1EC895548);
    v4 = *MEMORY[0x1E69D77A0];
    v5 = sub_1D725D08C();
    return (*(*(v5 - 8) + 104))(a1, v4, v5);
  }
}

uint64_t FormatModelContext.contextMenu.getter()
{
  sub_1D5B76B10(v0, v5);
  sub_1D5B49474(0, &qword_1EC895558);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v3, v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v1 = sub_1D725DF6C();
    __swift_destroy_boxed_opaque_existential_1(v6);
    return v1;
  }

  else
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    sub_1D5BFB774(v3, &qword_1EC895560, &qword_1EC895558);
    return 0;
  }
}

uint64_t sub_1D6D4BA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_1D5B76B10(v10, v25);
  sub_1D5B49474(0, &qword_1EC895558);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v23, v26);
    v20 = v27;
    v19 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v21 = a10(a1, a2, a3, a4, a5, a6, a7, a8, a9, v20, v19);
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v21;
  }

  else
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    sub_1D5BFB774(v23, &qword_1EC895560, &qword_1EC895558);
    return 0;
  }
}

void sub_1D6D4BBDC(void *a1, char a2, void **a3, double a4)
{
  v8 = *a3;
  v9 = v4[2];
  v10 = v4[3];
  v11 = v4[4];
  v12 = v4[5];
  v13 = swift_allocObject();
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = v10;
  v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v28[4] = sub_1D5E46A8C;
  v28[5] = v13;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 1107296256;
  v28[2] = sub_1D6E0CD34;
  v28[3] = &block_descriptor_96;
  v15 = _Block_copy(v28);
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v8;
  v21 = v16;
  v22 = v17;
  v23 = [v14 initWithDynamicProvider_];
  _Block_release(v15);

  [a1 setBackgroundColor_];

  v24 = [a1 layer];
  [v24 setCornerRadius_];

  v25 = [a1 layer];
  v26 = v25;
  if (a2)
  {
    if ((a2 & 2) != 0)
    {
      v27 = 3;
      if ((a2 & 4) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v27 = 1;
      if ((a2 & 4) == 0)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

  if ((a2 & 2) == 0)
  {
    v27 = 0;
    if ((a2 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v27 |= 4uLL;
    goto LABEL_8;
  }

  v27 = 2;
  if ((a2 & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((a2 & 8) != 0)
  {
    v27 |= 8uLL;
  }

  [v25 setMaskedCorners_];
}