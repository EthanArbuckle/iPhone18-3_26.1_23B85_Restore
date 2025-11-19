uint64_t FormatVersioningError.errorDescription.getter()
{
  v1 = (v0 + *(type metadata accessor for FormatVersioningError(0) + 24));
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    sub_1D7263D4C();

    strcpy(v16, "Compiling for ");
    HIBYTE(v16[1]) = -18;
    sub_1D725BD1C();
    sub_1D60247F8(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
    v4 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v4);

    MEMORY[0x1DA6F9910](0x272074756220, 0xE600000000000000);
    MEMORY[0x1DA6F9910](v3, v2);
  }

  else
  {
    FormatVersioningError.failingIndex.getter();
    if ((v5 & 1) == 0)
    {
      sub_1D7263D4C();

      strcpy(v16, "Compiling for ");
      HIBYTE(v16[1]) = -18;
      sub_1D725BD1C();
      sub_1D60247F8(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
      v11 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v11);

      MEMORY[0x1DA6F9910](0x6574692074756220, 0xEB0000000027206DLL);
      v12 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v12);

      MEMORY[0x1DA6F9910](0x7269757165722027, 0xEB00000000207365);
      goto LABEL_9;
    }

    v6 = FormatVersioningError.failingProperty.getter();
    if (!v7)
    {
      sub_1D7263D4C();

      strcpy(v16, "Compiling for ");
      HIBYTE(v16[1]) = -18;
      sub_1D725BD1C();
      sub_1D60247F8(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
      v13 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v13);

      MEMORY[0x1DA6F9910](0x7465642074756220, 0xEE00206465746365);
      goto LABEL_9;
    }

    v8 = v6;
    v9 = v7;
    sub_1D7263D4C();

    strcpy(v16, "Compiling for ");
    HIBYTE(v16[1]) = -18;
    sub_1D725BD1C();
    sub_1D60247F8(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
    v10 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v10);

    MEMORY[0x1DA6F9910](0x6F72702074756220, 0xEF27207974726570);
    MEMORY[0x1DA6F9910](v8, v9);
  }

  MEMORY[0x1DA6F9910](0x7269757165722027, 0xEB00000000207365);
LABEL_9:
  v14 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v14);

  return v16[0];
}

uint64_t _s8NewsFeed21FormatVersioningErrorV15detectedVersion13TeaFoundation0G0Vvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D725BD1C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s8NewsFeed21FormatVersioningErrorV15detectedVersion13TeaFoundation0G0Vvs_0(uint64_t a1)
{
  v3 = sub_1D725BD1C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1D6022D24@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1D725BD1C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D6022DC0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1D725BD1C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D6022EA0(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 24));

  return v2;
}

uint64_t sub_1D6022F00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t FormatDeprecationWarning.feature.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatDeprecationWarning(0) + 32));

  return v1;
}

uint64_t FormatDeprecationWarning.feature.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FormatDeprecationWarning(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1D6023154(uint64_t a1)
{
  v2 = sub_1D725A90C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v40 - v8;
  v44 = sub_1D725A8FC();
  v10 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v11);
  v42 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v40 - v15;
  v17 = *(type metadata accessor for FormatDeprecationWarning(0) + 28);
  v18 = *(v3 + 48);
  if (!v18(a1 + v17, 1, v2))
  {
    (*(v3 + 16))(v9, a1 + v17, v2);
    v20 = sub_1D725A89C();
    (*(v3 + 8))(v9, v2);
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * (v21 - 1);
      v23 = *(v10 + 16);
      v41 = v10;
      v24 = v44;
      v23(v16, v22, v44);

      v25 = sub_1D725A8CC();
      v27 = v26;
      v28 = v24;
      v10 = v41;
      (*(v41 + 8))(v16, v28);
      if ((v27 & 1) == 0)
      {
        v46 = 0x5B206D657469;
        v47 = 0xE600000000000000;
        v45 = v25;
        v29 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v29);

        v30 = 93;
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  if (v18(a1 + v17, 1, v2))
  {
    return 0;
  }

  v31 = a1 + v17;
  v32 = v43;
  (*(v3 + 16))(v43, v31, v2);
  v33 = sub_1D725A89C();
  (*(v3 + 8))(v32, v2);
  v34 = *(v33 + 16);
  if (!v34)
  {

    return 0;
  }

  v35 = v42;
  v36 = v44;
  (*(v10 + 16))(v42, v33 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * (v34 - 1), v44);

  v37 = sub_1D725A8BC();
  v39 = v38;
  (*(v10 + 8))(v35, v36);
  v46 = 0x79747265706F7270;
  v47 = 0xEA00000000002720;
  MEMORY[0x1DA6F9910](v37, v39);

  v30 = 39;
LABEL_9:
  MEMORY[0x1DA6F9910](v30, 0xE100000000000000);
  return v46;
}

uint64_t FormatDeprecationWarning.message.getter()
{
  v1 = (v0 + *(type metadata accessor for FormatDeprecationWarning(0) + 32));
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    sub_1D7263D4C();

    strcpy(v8, "Compiling for ");
    HIBYTE(v8[1]) = -18;
    sub_1D725BD1C();
    sub_1D60247F8(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
    v4 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v4);

    MEMORY[0x1DA6F9910](0x272074756220, 0xE600000000000000);
    MEMORY[0x1DA6F9910](v3, v2);
    MEMORY[0x1DA6F9910](0xD000000000000016, 0x80000001D73C6160);
  }

  else
  {
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0x6E696C69706D6F43, 0xEE0020726F662067);
    sub_1D725BD1C();
    sub_1D60247F8(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
    v5 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v5);

    MEMORY[0x1DA6F9910](0xD00000000000002ALL, 0x80000001D73C6130);
  }

  v6 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v6);

  return v8[0];
}

uint64_t sub_1D60237A8()
{
  v1 = *v0;
  v2 = 0x746567726174;
  v3 = 0x6D6563616C706572;
  v4 = 0x6150676E69646F63;
  if (v1 != 3)
  {
    v4 = 0x65727574616566;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7461636572706564;
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

uint64_t sub_1D6023854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6025CD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D602387C(uint64_t a1)
{
  v2 = sub_1D602557C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60238B8(uint64_t a1)
{
  v2 = sub_1D602557C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatDeprecationWarning.encode(to:)(void *a1)
{
  sub_1D6026A28(0, &qword_1EC8824E0, sub_1D602557C, &type metadata for FormatDeprecationWarning.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D602557C();
  sub_1D7264B5C();
  v15 = 0;
  sub_1D725BD1C();
  sub_1D60247F8(&qword_1EDF178C0, MEMORY[0x1E69D6B38]);
  sub_1D726443C();
  if (!v1)
  {
    type metadata accessor for FormatDeprecationWarning(0);
    v14 = 1;
    sub_1D726443C();
    v13 = 2;
    sub_1D726437C();
    v12 = 3;
    sub_1D725A90C();
    sub_1D60247F8(&qword_1EC8824F0, MEMORY[0x1E69D6400]);
    sub_1D72643BC();
    v11 = 4;
    sub_1D726437C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t FormatDeprecationWarning.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  sub_1D5C2ECB0(0, &qword_1EDF17F38, MEMORY[0x1E69D6400], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v43 = &v40 - v5;
  v44 = sub_1D725BD1C();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v46 = &v40 - v11;
  sub_1D6026A28(0, &qword_1EC8824F8, sub_1D602557C, &type metadata for FormatDeprecationWarning.CodingKeys, MEMORY[0x1E69E6F48]);
  v48 = v12;
  v45 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v40 - v14;
  v16 = type metadata accessor for FormatDeprecationWarning(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 28);
  v22 = sub_1D725A90C();
  v23 = *(*(v22 - 8) + 56);
  v50 = v21;
  v51 = v19;
  v23(&v19[v21], 1, 1, v22);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D602557C();
  v47 = v15;
  v24 = v49;
  sub_1D7264B0C();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1D5D2CCD8(&v51[v50], &qword_1EDF17F38, MEMORY[0x1E69D6400]);
  }

  else
  {
    v49 = v22;
    v25 = v43;
    v40 = v16;
    v56 = 0;
    sub_1D60247F8(&qword_1EDF43A48, MEMORY[0x1E69D6B38]);
    v26 = v44;
    sub_1D726431C();
    v27 = *(v42 + 32);
    v27(v51, v46, v26);
    v55 = 1;
    sub_1D726431C();
    v28 = v40;
    v27(&v51[*(v40 + 20)], v8, v26);
    v54 = 2;
    v46 = 0;
    v29 = sub_1D726422C();
    v30 = *(v28 + 24);
    v31 = v51;
    v32 = &v51[v30];
    *v32 = v29;
    v32[1] = v33;
    v53 = 3;
    sub_1D60247F8(&qword_1EC882500, MEMORY[0x1E69D6400]);
    sub_1D726427C();
    v34 = v40;
    sub_1D6026144(v25, v31 + v50, &qword_1EDF17F38, MEMORY[0x1E69D6400]);
    v52 = 4;
    v35 = sub_1D726422C();
    v37 = v36;
    v38 = (v31 + *(v34 + 32));
    (*(v45 + 8))(v47, v48);
    *v38 = v35;
    v38[1] = v37;
    sub_1D6026904(v31, v41, type metadata accessor for FormatDeprecationWarning);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1D60262D0(v31, type metadata accessor for FormatDeprecationWarning);
  }
}

uint64_t FormatVersioningError.debugDescription.getter()
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73C6180);
  FormatVersioningError.errorDescription.getter();
  v0 = sub_1D726217C();
  v2 = v1;

  MEMORY[0x1DA6F9910](v0, v2);

  MEMORY[0x1DA6F9910](0x676E69646F63202CLL, 0xEE00203A68746150);
  v3 = FormatVersioningError.readableCodingPath.getter();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v3 = 7104878;
    v5 = 0xE300000000000000;
  }

  MEMORY[0x1DA6F9910](v3, v5);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D602437C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a3;
  v33 = a5;
  v31 = a1;
  v5 = sub_1D725BD1C();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FormatVersionInfo(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2ECB0(0, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v28 - v20;
  v22 = sub_1D7264B4C();
  Dictionary<>.formatCodingVersionInfo.getter(v22, v21);

  if ((*(v14 + 48))(v21, 1, v13))
  {
    sub_1D5D2CCD8(v21, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
    sub_1D5D2F20C(v31, v32, v33);
    v23 = sub_1D7264B4C();
    Dictionary<>.formatVersion.getter(v23, v8);

    v24 = sub_1D601D6C4();
    (*(v29 + 8))(v8, v30);
    v25 = type metadata accessor for FormatVersionRequirement;
    v26 = v12;
  }

  else
  {
    sub_1D6026904(v21, v17, type metadata accessor for FormatVersionInfo);
    sub_1D5D2CCD8(v21, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
    v24 = sub_1D6021D14(v31, v32, v33);
    v25 = type metadata accessor for FormatVersionInfo;
    v26 = v17;
  }

  sub_1D60262D0(v26, v25);
  return v24 & 1;
}

uint64_t sub_1D60246E0(uint64_t a1, uint64_t a2)
{
  sub_1D5C2ECB0(0, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6024774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60247F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6024840(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725BD1C();
  v98 = *(v4 - 8);
  v99 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v97 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v95 = &v90 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v96 = &v90 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v90 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v90 - v19;
  v21 = type metadata accessor for FormatVersionRequirement.Value(0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v90 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v90 - v31;
  sub_1D6025EE4();
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v37 = &v90 + *(v36 + 56) - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  v39 = &v90 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6026904(v38, v39, type metadata accessor for FormatVersionRequirement.Value);
  sub_1D6026904(a2, v37, type metadata accessor for FormatVersionRequirement.Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D6026904(v39, v28, type metadata accessor for FormatVersionRequirement.Value);
      sub_1D5B580C0(0, &qword_1EDF45AB8);
      v42 = *(v41 + 48);
      v44 = *&v28[v42];
      v43 = *&v28[v42 + 8];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v94 = v39;
        v46 = *&v37[v42];
        v45 = *&v37[v42 + 8];
        v48 = v98;
        v47 = v99;
        (*(v98 + 32))(v16, v37, v99);
        v49 = sub_1D725BCBC();
        v50 = *(v48 + 8);
        v50(v28, v47);
        if (v49)
        {
          if (v43)
          {
            if (v45)
            {
              if (v44 == v46 && v43 == v45)
              {

                v50(v16, v47);
LABEL_20:
                v72 = 1;
LABEL_31:
                v76 = type metadata accessor for FormatVersionRequirement.Value;
                v39 = v94;
                goto LABEL_43;
              }

              v85 = sub_1D72646CC();

              v50(v16, v47);
              goto LABEL_45;
            }

            v50(v16, v47);
          }

          else
          {
            v50(v16, v47);
            v76 = type metadata accessor for FormatVersionRequirement.Value;
            if (!v45)
            {
              v72 = 1;
              v39 = v94;
              goto LABEL_43;
            }
          }

          goto LABEL_40;
        }

        v50(v16, v47);

        goto LABEL_30;
      }

      (*(v98 + 8))(v28, v99);
    }

    else
    {
      sub_1D6026904(v39, v24, type metadata accessor for FormatVersionRequirement.Value);
      sub_1D5B58478();
      v52 = *(v51 + 48);
      v53 = *(v51 + 64);
      v54 = *&v24[v53];
      v55 = *&v24[v53 + 8];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v56 = *&v37[v53 + 8];
        v91 = *&v37[v53];
        v92 = v54;
        v93 = v56;
        v94 = v39;
        v58 = v98;
        v57 = v99;
        v59 = *(v98 + 32);
        v60 = v96;
        v59(v96, v37, v99);
        v61 = v95;
        v59(v95, &v24[v52], v57);
        v62 = &v37[v52];
        v63 = v60;
        v64 = v97;
        v59(v97, v62, v57);
        v65 = sub_1D725BCBC();
        v66 = *(v58 + 8);
        v66(v24, v57);
        if (v65)
        {
          v67 = v93;
          v68 = v64;
          v69 = v61;
          if (sub_1D725BCBC())
          {
            v70 = v67;
            if (!v55)
            {
              v86 = v99;
              v66(v97, v99);
              v66(v69, v86);
              v66(v63, v86);
              v76 = type metadata accessor for FormatVersionRequirement.Value;
              v39 = v94;
              if (!v70)
              {
LABEL_46:
                v72 = 1;
                goto LABEL_43;
              }

              goto LABEL_41;
            }

            if (v67)
            {
              if (v92 == v91 && v55 == v67)
              {

                v71 = v99;
                v66(v97, v99);
                v66(v69, v71);
                v66(v63, v71);
                goto LABEL_20;
              }

              v85 = sub_1D72646CC();

              v89 = v99;
              v66(v97, v99);
              v66(v69, v89);
              v66(v63, v89);
LABEL_45:
              v76 = type metadata accessor for FormatVersionRequirement.Value;
              v39 = v94;
              if (v85)
              {
                goto LABEL_46;
              }

              goto LABEL_41;
            }

            v87 = v99;
            v66(v97, v99);
            v66(v69, v87);
            v66(v63, v87);
LABEL_40:
            v39 = v94;
LABEL_41:
            v72 = 0;
            goto LABEL_42;
          }

          v83 = v68;
          v84 = v99;
          v66(v83, v99);
          v66(v61, v84);
          v81 = v63;
          v82 = v84;
        }

        else
        {

          v66(v64, v57);
          v66(v61, v57);
          v81 = v63;
          v82 = v57;
        }

        v66(v81, v82);
LABEL_30:
        v72 = 0;
        goto LABEL_31;
      }

      v73 = *(v98 + 8);
      v74 = &v24[v52];
      v75 = v99;
      v73(v74, v99);
      v73(v24, v75);
    }
  }

  else
  {
    sub_1D6026904(v39, v32, type metadata accessor for FormatVersionRequirement.Value);
    if (!swift_getEnumCaseMultiPayload())
    {
      v77 = v98;
      v78 = v37;
      v79 = v99;
      (*(v98 + 32))(v20, v78, v99);
      v72 = sub_1D725BCBC();
      v80 = *(v77 + 8);
      v80(v20, v79);
      v80(v32, v79);
LABEL_42:
      v76 = type metadata accessor for FormatVersionRequirement.Value;
      goto LABEL_43;
    }

    (*(v98 + 8))(v32, v99);
  }

  v72 = 0;
  v76 = sub_1D6025EE4;
LABEL_43:
  sub_1D60262D0(v39, v76);
  return v72 & 1;
}

uint64_t _s8NewsFeed24FormatDeprecationWarningV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A90C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2ECB0(0, &qword_1EDF17F38, MEMORY[0x1E69D6400], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v39 - v11;
  sub_1D60261C4();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D725BCBC() & 1) == 0)
  {
    return 0;
  }

  v18 = type metadata accessor for FormatDeprecationWarning(0);
  if ((sub_1D725BCBC() & 1) == 0)
  {
    return 0;
  }

  v19 = v18[6];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v22[1];
  if (v21)
  {
    if (!v23)
    {
      return 0;
    }

    v24 = *v20 == *v22 && v21 == v23;
    if (!v24 && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v39 = v5;
  v25 = v18[7];
  v26 = *(v14 + 48);
  v27 = MEMORY[0x1E69D6400];
  sub_1D5D2C7C0(a1 + v25, v17, &qword_1EDF17F38, MEMORY[0x1E69D6400]);
  v28 = a2 + v25;
  v29 = v39;
  v40 = v26;
  sub_1D5D2C7C0(v28, &v17[v26], &qword_1EDF17F38, v27);
  v30 = *(v29 + 48);
  if (v30(v17, 1, v4) != 1)
  {
    sub_1D5D2C7C0(v17, v12, &qword_1EDF17F38, MEMORY[0x1E69D6400]);
    if (v30(&v17[v40], 1, v4) != 1)
    {
      (*(v29 + 32))(v8, &v17[v40], v4);
      sub_1D60247F8(&qword_1EC882670, MEMORY[0x1E69D6400]);
      v32 = sub_1D7261FBC();
      v33 = *(v29 + 8);
      v33(v8, v4);
      v33(v12, v4);
      sub_1D5D2CCD8(v17, &qword_1EDF17F38, MEMORY[0x1E69D6400]);
      if ((v32 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_21;
    }

    (*(v29 + 8))(v12, v4);
LABEL_17:
    sub_1D60262D0(v17, sub_1D60261C4);
    return 0;
  }

  if (v30(&v17[v40], 1, v4) != 1)
  {
    goto LABEL_17;
  }

  sub_1D5D2CCD8(v17, &qword_1EDF17F38, MEMORY[0x1E69D6400]);
LABEL_21:
  v34 = v18[8];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = v37[1];
  if (v36)
  {
    if (v38 && (*v35 == *v37 && v36 == v38 || (sub_1D72646CC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v38)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1D602557C()
{
  result = qword_1EC8824E8;
  if (!qword_1EC8824E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8824E8);
  }

  return result;
}

uint64_t sub_1D60255D0(uint64_t a1)
{
  result = sub_1D60247F8(qword_1EC882508, type metadata accessor for FormatVersioningError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6025628()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D60256E4()
{
  sub_1D725BD1C();
  if (v0 <= 0x3F)
  {
    sub_1D5B58244(319, &qword_1EDF43BE0, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D5C2ECB0(319, &qword_1EC8825A0, sub_1D60257CC, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D60257CC()
{
  if (!qword_1EC8825A8)
  {
    sub_1D5B49474(255, &qword_1EDF01CC8);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8825A8);
    }
  }
}

uint64_t sub_1D60258B4(void *a1)
{
  a1[1] = sub_1D60247F8(qword_1EDF25B50, type metadata accessor for FormatVersionRequirement);
  a1[2] = sub_1D60247F8(&qword_1EC8825B8, type metadata accessor for FormatVersionRequirement);
  result = sub_1D60247F8(&qword_1EC8825B0, type metadata accessor for FormatVersionRequirement);
  a1[3] = result;
  return result;
}

uint64_t sub_1D60259A8(void *a1)
{
  a1[1] = sub_1D60247F8(&qword_1EC8825C8, type metadata accessor for FormatVersionRequirement.Value);
  a1[2] = sub_1D60247F8(&qword_1EC8825D0, type metadata accessor for FormatVersionRequirement.Value);
  result = sub_1D60247F8(&qword_1EC8825C0, type metadata accessor for FormatVersionRequirement.Value);
  a1[3] = result;
  return result;
}

unint64_t sub_1D6025A58()
{
  result = qword_1EC8825D8;
  if (!qword_1EC8825D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8825D8);
  }

  return result;
}

unint64_t sub_1D6025AB0()
{
  result = qword_1EC8825E0;
  if (!qword_1EC8825E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8825E0);
  }

  return result;
}

unint64_t sub_1D6025B08()
{
  result = qword_1EC8825E8;
  if (!qword_1EC8825E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8825E8);
  }

  return result;
}

uint64_t sub_1D6025B5C()
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

uint64_t sub_1D6025BA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6375646F72746E69 && a2 == 0xEA00000000006465;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461636572706564 && a2 == 0xEA00000000006465 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6563616C706572 && a2 == 0xEB00000000746E65)
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

uint64_t sub_1D6025CD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746567726174 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461636572706564 && a2 == 0xEC0000006E496465 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6563616C706572 && a2 == 0xEB00000000746E65 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6150676E69646F63 && a2 == 0xEA00000000006874 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65727574616566 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1D6025E90()
{
  result = qword_1EC8825F8;
  if (!qword_1EC8825F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8825F8);
  }

  return result;
}

void sub_1D6025EE4()
{
  if (!qword_1EC882608)
  {
    type metadata accessor for FormatVersionRequirement.Value(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC882608);
    }
  }
}

unint64_t sub_1D6025FA8()
{
  result = qword_1EC882610;
  if (!qword_1EC882610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882610);
  }

  return result;
}

unint64_t sub_1D6025FFC()
{
  result = qword_1EC882630;
  if (!qword_1EC882630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882630);
  }

  return result;
}

void sub_1D6026050()
{
  if (!qword_1EC882650)
  {
    sub_1D5B580C0(255, &qword_1EC882658);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC882650);
    }
  }
}

void sub_1D60260B8()
{
  if (!qword_1EC882660)
  {
    sub_1D725BD1C();
    sub_1D5B58244(255, &qword_1EDF43BE0, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC882660);
    }
  }
}

uint64_t sub_1D6026144(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5C2ECB0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_1D60261C4()
{
  if (!qword_1EC882668)
  {
    sub_1D5C2ECB0(255, &qword_1EDF17F38, MEMORY[0x1E69D6400], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC882668);
    }
  }
}

uint64_t sub_1D60262D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D60263A8()
{
  sub_1D725BD1C();
  if (v0 <= 0x3F)
  {
    sub_1D5B58244(319, &qword_1EDF43BE0, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_11Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725BD1C();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_12Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D725BD1C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_1D60265F8()
{
  sub_1D725BD1C();
  if (v0 <= 0x3F)
  {
    sub_1D5B58244(319, &qword_1EDF43BE0, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D60266AC()
{
  result = qword_1EC8826A8;
  if (!qword_1EC8826A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8826A8);
  }

  return result;
}

unint64_t sub_1D6026704()
{
  result = qword_1EC8826B0;
  if (!qword_1EC8826B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8826B0);
  }

  return result;
}

unint64_t sub_1D602675C()
{
  result = qword_1EC8826B8;
  if (!qword_1EC8826B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8826B8);
  }

  return result;
}

unint64_t sub_1D60267B4()
{
  result = qword_1EC8826C0;
  if (!qword_1EC8826C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8826C0);
  }

  return result;
}

unint64_t sub_1D6026808()
{
  result = qword_1EC8826C8;
  if (!qword_1EC8826C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8826C8);
  }

  return result;
}

unint64_t sub_1D602685C()
{
  result = qword_1EC8826D8;
  if (!qword_1EC8826D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8826D8);
  }

  return result;
}

unint64_t sub_1D60268B0()
{
  result = qword_1EC8826E8;
  if (!qword_1EC8826E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8826E8);
  }

  return result;
}

uint64_t sub_1D6026904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D602696C()
{
  result = qword_1EC8826F8;
  if (!qword_1EC8826F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8826F8);
  }

  return result;
}

uint64_t sub_1D60269C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D6026A28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D6026AC4()
{
  result = qword_1EC882718;
  if (!qword_1EC882718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882718);
  }

  return result;
}

unint64_t sub_1D6026B1C()
{
  result = qword_1EC882720;
  if (!qword_1EC882720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882720);
  }

  return result;
}

unint64_t sub_1D6026B74()
{
  result = qword_1EC882728;
  if (!qword_1EC882728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882728);
  }

  return result;
}

unint64_t sub_1D6026BCC()
{
  result = qword_1EC882730;
  if (!qword_1EC882730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882730);
  }

  return result;
}

unint64_t sub_1D6026C24()
{
  result = qword_1EC882738;
  if (!qword_1EC882738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882738);
  }

  return result;
}

unint64_t sub_1D6026C7C()
{
  result = qword_1EC882740;
  if (!qword_1EC882740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882740);
  }

  return result;
}

unint64_t sub_1D6026CD4()
{
  result = qword_1EC882748;
  if (!qword_1EC882748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882748);
  }

  return result;
}

unint64_t sub_1D6026D2C()
{
  result = qword_1EC882750;
  if (!qword_1EC882750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882750);
  }

  return result;
}

unint64_t sub_1D6026D84()
{
  result = qword_1EC882758;
  if (!qword_1EC882758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882758);
  }

  return result;
}

uint64_t sub_1D6026E04(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        return 0xD000000000000017;
      }

      if (a1 == 6)
      {
        return 0x6B6361626C6C6166;
      }

      return 0x2D746C7561666564;
    }

    if (a1 == 8)
    {
      return 0x7469617274726F70;
    }

    if (a1 == 9)
    {
      return 0x6E6F697461636F6CLL;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x696E692D72657375;
    }

    if (a1 == 1)
    {
      return 0x682D697261666173;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 == 2)
  {
    return 0xD000000000000012;
  }

  if (a1 == 3)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000013;
}

uint64_t PuzzleStatsState.environment.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PuzzleStatsState.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleStatsState() + 28);
  v4 = sub_1D725891C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleStatsState.debugDescription.getter()
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0x6D6E6F7269766E65, 0xED0000203A746E65);
  MEMORY[0x1DA6F9910](*v0, v0[1]);
  MEMORY[0x1DA6F9910](0xD000000000000012, 0x80000001D73C6290);
  v1 = sub_1D7261D4C();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](0xD000000000000014, 0x80000001D73C62B0);
  sub_1D725891C();
  v2 = sub_1D7261D4C();
  MEMORY[0x1DA6F9910](v2);

  MEMORY[0x1DA6F9910](0x6144747261747320, 0xEC000000203A6574);
  type metadata accessor for PuzzleStatsState();
  sub_1D5CE4528(&qword_1EDF3C3B0);
  v3 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v3);

  return 0;
}

uint64_t sub_1D6027220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D602732C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6027248(uint64_t a1)
{
  v2 = sub_1D5D11ACC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6027284(uint64_t a1)
{
  v2 = sub_1D5D11ACC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D60272D8()
{
  result = qword_1EC882760;
  if (!qword_1EC882760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882760);
  }

  return result;
}

uint64_t sub_1D602732C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974616C756D7563 && a2 == 0xEF73746174536576 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C62D0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065)
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

uint64_t GenericDataVisualizationResponseItem.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GenericDataVisualizationResponseItem.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D6027918(0, &qword_1EC882768, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6027718();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v14 = v11;
  type metadata accessor for WebEmbedDataVisualizationURLDataSource();
  v18 = 1;
  sub_1D6027A10(&unk_1EDF065B0);
  v15 = sub_1D726420C();
  (*(v7 + 8))(v10, v6);
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D6027718()
{
  result = qword_1EC882770;
  if (!qword_1EC882770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882770);
  }

  return result;
}

uint64_t GenericDataVisualizationResponseItem.encode(to:)(void *a1)
{
  sub_1D6027918(0, &qword_1EC882778, MEMORY[0x1E69E6F58]);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v14 - v7;
  v14[0] = *(v1 + 16);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_1D6027718();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v14[1] = v14[0];
    v15 = 1;
    sub_1D5B4DA90();
    sub_1D602797C();
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v12);
}

void sub_1D6027918(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6027718();
    v7 = a3(a1, &type metadata for GenericDataVisualizationResponseItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D602797C()
{
  result = qword_1EDF04AC0;
  if (!qword_1EDF04AC0)
  {
    sub_1D5B4DA90();
    sub_1D6027A10(&qword_1EDF065C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04AC0);
  }

  return result;
}

uint64_t sub_1D6027A10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WebEmbedDataVisualizationURLDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6027A54()
{
  if (*v0)
  {
    return 0x53617461446C7275;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1D6027AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x53617461446C7275 && a2 == 0xEE0073656372756FLL)
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

uint64_t sub_1D6027B8C(uint64_t a1)
{
  v2 = sub_1D6027718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6027BC8(uint64_t a1)
{
  v2 = sub_1D6027718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D6027C58()
{
  result = qword_1EC882780;
  if (!qword_1EC882780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882780);
  }

  return result;
}

unint64_t sub_1D6027CB0()
{
  result = qword_1EC882788;
  if (!qword_1EC882788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882788);
  }

  return result;
}

unint64_t sub_1D6027D08()
{
  result = qword_1EC882790;
  if (!qword_1EC882790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882790);
  }

  return result;
}

uint64_t FeedGroupKind.description.getter()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    goto LABEL_4;
  }

  if (v2 == 1)
  {
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
LABEL_4:
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](*(v1 + 16), *(v1 + 24));
    return 0x472074616D726F46;
  }

  v4 = vorrq_s8(*(v0 + 3), *(v0 + 5));
  v5 = *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | v0[2] | v0[1];
  if (v1 == 0x8000000000000000 && v5 == 0)
  {
    return 7364935;
  }

  result = 0x656E696C64616548;
  if ((v1 != 0x8000000000000008 || v5) && (v1 != 0x8000000000000010 || v5))
  {
    if (v1 != 0x8000000000000018 || v5)
    {
      if (v1 != 0x8000000000000020 || v5)
      {
        if (v1 != 0x8000000000000028 || v5)
        {
          if (v1 != 0x8000000000000030 || v5)
          {
            if (v1 != 0x8000000000000038 || v5)
            {
              if (v1 != 0x8000000000000040 || v5)
              {
                if (v1 == 0x8000000000000048 && v5 == 0)
                {
                  return 0x656D656761676E45;
                }

                else
                {
                  return 0x6E6967756C50;
                }
              }

              else
              {
                return 0x69726F6765746143;
              }
            }

            else
            {
              return 25665;
            }
          }

          else
          {
            return 0xD000000000000010;
          }
        }

        else
        {
          return 0xD000000000000013;
        }
      }

      else
      {
        return 0x4720736575737349;
      }
    }

    else
    {
      return 0x5320736575737349;
    }
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_8NewsFeed0B9GroupKindO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1D6027FE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 56))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6028044(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
      *(result + 40) = 0u;
    }
  }

  return result;
}

uint64_t sub_1D60280D4(void *a1)
{
  v3 = v1;
  sub_1D602C218(0, &qword_1EC882848, sub_1D602C1C4, &type metadata for A18_V15.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D602C1C4();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D602C280(&qword_1EC8801E8, type metadata accessor for CGRect);
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

uint64_t sub_1D602831C(uint64_t a1)
{
  v2 = sub_1D602C1C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6028358(uint64_t a1)
{
  v2 = sub_1D602C1C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6028394@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D602BF24(a1, v6);
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

uint64_t sub_1D60283F4()
{
  sub_1D602BB94();

  return sub_1D725A24C();
}

uint64_t sub_1D6028470@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D602C218(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D602852C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v108 = a2;
  v110 = a1;
  v94 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v109 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v111 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v106 = &v93 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v123 = &v93 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v93 - v17;
  v19 = sub_1D725895C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for GroupLayoutContext();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104, v24);
  v107 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v93 - v28;
  v100 = &v93 - v28;
  v105 = type metadata accessor for GroupLayoutBindingContext();
  v101 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105, v30);
  v32 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v5;
  v99 = *v5;
  inited = *(v5 + 1);
  v35 = v5[16];
  sub_1D5BE3ED8(v110, v32, type metadata accessor for GroupLayoutBindingContext);
  v102 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v108, v29, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v97 = sub_1D725893C();
  v96 = v36;
  (*(v20 + 8))(v23, v19);
  v121 = &type metadata for A18_V15;
  v98 = sub_1D5ECE2E0();
  v122 = v98;
  LOBYTE(v119) = v33;
  *(&v119 + 1) = inited;
  v120 = v35;
  type metadata accessor for GroupLayoutKey();
  v37 = swift_allocObject();
  sub_1D5BEE8A0(inited, v35);
  v38 = &type metadata for A18_V15;
  v112[0] = sub_1D7264C5C();
  v112[1] = v39;
  v117 = 95;
  v118 = 0xE100000000000000;
  v115 = 45;
  v116 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v40 = sub_1D7263A6C();
  v42 = v41;

  *(v37 + 16) = v40;
  *(v37 + 24) = v42;
  v43 = (v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v44 = v96;
  *v43 = v97;
  v43[1] = v44;
  sub_1D5B68374(&v119, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v45 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v32, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  v46 = v105;
  (*(v101 + 56))(v37 + v45, 0, 1, v105);
  v47 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v100, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v48 = *(v103 + 56);
  v103 = v37;
  v48(v37 + v47, 0, 1, v104);
  __swift_destroy_boxed_opaque_existential_1(&v119);
  v121 = &type metadata for A18_V15;
  v122 = v98;
  LOBYTE(v119) = v99;
  *(&v119 + 1) = inited;
  v120 = v35;
  sub_1D5BE3ED8(v108, v107, v102);
  v49 = *(v46 + 56);
  v50 = *&v110[v49];
  v51 = *(v50 + 16);
  sub_1D5BEE8A0(inited, v35);
  if (v51 && (v52 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v53 & 1) != 0) && (v51 = *(*(v50 + 56) + 8 * v52), v54 = , v55 = sub_1D5C14D80(v54), , v55))
  {
    v104 = v49;
    v51 = *(v55 + 16);
    if (v51)
    {
      v49 = 0;
      v35 = MEMORY[0x1E69E7CC0];
      v50 = v109;
      v108 = *(v55 + 16);
      do
      {
        v56 = *(v55 + 16);
        if (v49 >= v56)
        {
          __break(1u);
          goto LABEL_62;
        }

        v57 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v38 = *(v50 + 72);
        sub_1D5BE3ED8(v55 + v57 + v38 * v49, v18, type metadata accessor for FeedHeadline);
        if ((v18[32] & 4) != 0)
        {
          sub_1D5BDA904(v18, v123, type metadata accessor for FeedHeadline);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v112[0] = v35;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D5C0F91C(0, *(v35 + 16) + 1, 1);
            v50 = v109;
            v35 = v112[0];
          }

          inited = *(v35 + 16);
          v59 = *(v35 + 24);
          if (inited >= v59 >> 1)
          {
            sub_1D5C0F91C(v59 > 1, inited + 1, 1);
            v50 = v109;
            v35 = v112[0];
          }

          *(v35 + 16) = inited + 1;
          sub_1D5BDA904(v123, v35 + v57 + inited * v38, type metadata accessor for FeedHeadline);
          v51 = v108;
        }

        else
        {
          sub_1D5BE792C(v18, type metadata accessor for FeedHeadline);
        }

        ++v49;
      }

      while (v51 != v49);
    }

    else
    {
      v35 = MEMORY[0x1E69E7CC0];
    }

    v63 = *&v110[*(v105 + 72)];
    v64 = *&v110[*(v105 + 76)];
    if (__OFSUB__(v63, v64))
    {
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v65 = sub_1D5C0FAD4(v35, v63 - v64);
    v38 = sub_1D5C11E10(&unk_1F50FC288, v65, v55);

    v49 = v104;
    if (v38)
    {

LABEL_25:
      strcpy(v112, "FeedHeadline");
      BYTE5(v112[1]) = 0;
      HIWORD(v112[1]) = -5120;
      v113 = 0;
      v114 = 0;

      v67 = sub_1D5C107C4(v66);

      sub_1D5BDACA8(v112, v67);

      goto LABEL_26;
    }

    v38 = sub_1D5C11E10(&unk_1F50FC288, v35, v55);

    if (v38)
    {
      goto LABEL_25;
    }

    v112[0] = &unk_1F50FC288;
    v4 = v95;
    sub_1D5E239F4(v112);
    if (!v4)
    {

      v60 = v112[0];
      if (!*(v112[0] + 2))
      {
        __break(1u);
LABEL_58:
        v112[0] = v38;
        v4 = v95;
        sub_1D5E239F4(v112);
        if (v4)
        {
          goto LABEL_69;
        }

        if (!*(v112[0] + 2))
        {
          goto LABEL_68;
        }

        v91 = *(v112[0] + 4);

        sub_1D5ED8048();
        swift_allocError();
        strcpy(v92, "FeedHeadline");
        v92[13] = 0;
        *(v92 + 7) = -5120;
        *(v92 + 2) = 0;
        *(v92 + 3) = 0;
        *(v92 + 4) = 0;
        *(v92 + 5) = v91;
        *(v92 + 6) = 0;
        *(v92 + 7) = 0;
        v92[64] = 0;
        swift_willThrow();
        swift_setDeallocating();
LABEL_43:

LABEL_44:
        sub_1D5BE792C(v107, type metadata accessor for GroupLayoutContext);
        return __swift_destroy_boxed_opaque_existential_1(&v119);
      }

LABEL_18:
      v61 = *(v60 + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v62, "FeedHeadline");
      v62[13] = 0;
      *(v62 + 7) = -5120;
      *(v62 + 2) = 0;
      *(v62 + 3) = 0;
      *(v62 + 4) = 4;
      *(v62 + 5) = v61;
      *(v62 + 6) = 0;
      *(v62 + 7) = 0;
      v62[64] = 0;
      swift_willThrow();
      goto LABEL_44;
    }
  }

  else
  {
    if (!qword_1F50FC2A8)
    {

      v38 = MEMORY[0x1E69E7CC0];
LABEL_26:
      sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
      inited = swift_initStackObject();
      v68 = MEMORY[0x1E69E7CC0];
      *(inited + 16) = MEMORY[0x1E69E7CC0];
      v50 = inited + 16;
      swift_beginAccess();
      v35 = sub_1D5C0F8FC(0, 1, 1, v68);
      v51 = *(v35 + 16);
      v56 = *(v35 + 24);
      v18 = (v51 + 1);
      if (v51 >= v56 >> 1)
      {
        goto LABEL_64;
      }

      while (1)
      {
        *(v35 + 16) = v18;
        v69 = v35 + 16 * v51;
        *(v69 + 32) = sub_1D63106DC;
        *(v69 + 40) = 0;
        *v50 = v35;
        swift_endAccess();
        if (!*(*&v110[v49] + 16))
        {
          break;
        }

        sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
        if ((v70 & 1) == 0)
        {
          break;
        }

        v18 = sub_1D5C14D80(v71);

        if (!v18)
        {
          break;
        }

        v123 = inited;
        v108 = v38;
        v72 = *(v18 + 2);
        if (!v72)
        {
          v35 = MEMORY[0x1E69E7CC0];
LABEL_47:
          if ((*v110 & 1) == 0)
          {

            v81 = sub_1D62F071C(v35);

            v35 = v81;
          }

          v82 = *&v110[*(v105 + 72)];
          v83 = *&v110[*(v105 + 76)];
          if (!__OFSUB__(v82, v83))
          {
            v84 = sub_1D5C0FAD4(v35, v82 - v83);
            v80 = sub_1D5C11E10(&unk_1F50FC2B0, v84, v18);

            if (v80)
            {
            }

            else
            {
              v38 = &unk_1F50FC2B0;
              v80 = sub_1D5C11E10(&unk_1F50FC2B0, v35, v18);

              if (!v80)
              {
                goto LABEL_58;
              }
            }

            strcpy(v112, "FeedHeadline");
            BYTE5(v112[1]) = 0;
            HIWORD(v112[1]) = -5120;
            v113 = 0;
            v114 = 0;

            v86 = sub_1D5C107C4(v85);

            sub_1D5BDACA8(v112, v86);
            swift_setDeallocating();

            v38 = v108;
            goto LABEL_54;
          }

          goto LABEL_67;
        }

        v38 = 0;
        v35 = MEMORY[0x1E69E7CC0];
        v50 = v109;
        while (1)
        {
          v56 = *(v18 + 2);
          if (v38 >= v56)
          {
            break;
          }

          v49 = (*(v50 + 80) + 32) & ~*(v50 + 80);
          v73 = *(v50 + 72);
          v74 = v106;
          sub_1D5BE3ED8(&v18[v49 + v73 * v38], v106, type metadata accessor for FeedHeadline);
          sub_1D5BDA904(v74, v111, type metadata accessor for FeedHeadline);
          v75 = swift_isUniquelyReferenced_nonNull_native();
          v112[0] = v35;
          if ((v75 & 1) == 0)
          {
            sub_1D5C0F91C(0, *(v35 + 16) + 1, 1);
            v50 = v109;
            v35 = v112[0];
          }

          v51 = *(v35 + 16);
          v76 = *(v35 + 24);
          inited = v51 + 1;
          if (v51 >= v76 >> 1)
          {
            sub_1D5C0F91C(v76 > 1, v51 + 1, 1);
            v50 = v109;
            v35 = v112[0];
          }

          ++v38;
          *(v35 + 16) = inited;
          sub_1D5BDA904(v111, v35 + v49 + v51 * v73, type metadata accessor for FeedHeadline);
          if (v72 == v38)
          {
            goto LABEL_47;
          }
        }

LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        v35 = sub_1D5C0F8FC((v56 > 1), v18, 1, v35);
      }

      if (!qword_1F50FC2D0)
      {

        v80 = MEMORY[0x1E69E7CC0];
LABEL_54:
        v112[0] = v38;
        sub_1D5C122E4(v80);
        v87 = v112[0];
        v88 = type metadata accessor for A18_V15.Bound();
        v89 = v94;
        v94[3] = v88;
        v89[4] = sub_1D602C280(&qword_1EC8827A8, type metadata accessor for A18_V15.Bound);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v89);
        *boxed_opaque_existential_1 = v103;
        sub_1D5B63F14(&v119, (boxed_opaque_existential_1 + 1));
        result = sub_1D5BDA904(v107, boxed_opaque_existential_1 + *(v88 + 24), type metadata accessor for GroupLayoutContext);
        *(boxed_opaque_existential_1 + *(v88 + 28)) = v87;
        return result;
      }

      v112[0] = &unk_1F50FC2B0;
      v4 = v95;
      sub_1D5E239F4(v112);
      if (v4)
      {
        goto LABEL_69;
      }

      if (*(v112[0] + 2))
      {
        v77 = *(v112[0] + 4);

        sub_1D5ED8048();
        swift_allocError();
        strcpy(v78, "FeedHeadline");
        v78[13] = 0;
        *(v78 + 7) = -5120;
        *(v78 + 2) = 0;
        *(v78 + 3) = 0;
        *(v78 + 4) = 0;
        *(v78 + 5) = v77;
        *(v78 + 6) = 0;
        *(v78 + 7) = 0;
        v78[64] = 0;
        swift_willThrow();
        goto LABEL_43;
      }

      __break(1u);
      goto LABEL_66;
    }

    v112[0] = &unk_1F50FC288;
    v4 = v95;
    sub_1D5E239F4(v112);
    if (!v4)
    {

      v60 = v112[0];
      v56 = *(v112[0] + 2);
      if (!v56)
      {
        goto LABEL_63;
      }

      goto LABEL_18;
    }
  }

LABEL_69:

  __break(1u);
  return result;
}

uint64_t sub_1D60294D8@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  *&v42 = sub_1D725A36C();
  v3 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for A18_V15.Bound();
  v8 = v1 + *(v7 + 24);
  v9 = type metadata accessor for GroupLayoutContext();
  v10 = *(v9 + 40);
  v11 = v8;
  v43 = v8;
  v12 = *(v8 + v10);
  v13 = *(v12 + 16);
  v14 = *(v11 + *(v9 + 32));
  sub_1D5B68374(v13 + 16, v54);
  sub_1D5B68374(v13 + 56, v53);
  v15 = v14 * *(v13 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(v54, inited + 16);
  sub_1D5B63F14(v53, inited + 56);
  *(inited + 96) = v15;
  v52[0] = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v52, v55);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(inited + 16);
  __swift_destroy_boxed_opaque_existential_1(inited + 56);
  sub_1D5B49474(0, &qword_1EDF27C08);
  v17 = 2;
  v18 = sub_1D726276C();
  *(v18 + 16) = 2;
  sub_1D5B68374(v55, v18 + 32);
  sub_1D5B63F14(v55, v18 + 72);
  v19 = *(v12 + 16);
  sub_1D5B68374(v19 + 16, v54);
  sub_1D5B68374(v19 + 56, v53);
  v20 = v14 * *(v19 + 96);
  v21 = swift_initStackObject();
  sub_1D5B63F14(v54, v21 + 16);
  sub_1D5B63F14(v53, v21 + 56);
  *(v21 + 96) = v20;
  v52[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v52, v55);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v21 + 16);
  __swift_destroy_boxed_opaque_existential_1(v21 + 56);
  v22 = sub_1D6F50B74(v55, *(*(v2 + *(v7 + 28)) + 16) - 1);
  *&v55[0] = v18;
  sub_1D698609C(v22);
  v23 = *&v55[0];
  v44 = v2;
  v51[2] = v2;

  v25 = sub_1D6310828(v24, v23, sub_1D602BB20, v51);

  v26 = *(v25 + 16);
  if (v26 < 2)
  {
    v17 = *(v25 + 16);
  }

  v27 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
  v28 = v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  v29 = (2 * v26) | 1;
  v30 = *MEMORY[0x1E69D7130];
  v31 = sub_1D7259D1C();
  (*(*(v31 - 8) + 104))(v6, v30, v31);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v42);
  v46 = v25;
  v47 = v25;
  v48 = v28;
  v49 = v17;
  v50 = v29;
  sub_1D602BC64(0, &qword_1EC8827C8, MEMORY[0x1E69D73B8]);
  swift_allocObject();

  v43 = sub_1D725A4CC();
  sub_1D725A4DC();
  v32 = v56;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D5B49714(0, &qword_1EDF1B268);
  sub_1D5BD48FC();
  v33 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268);
  v41 = v55[1];
  v42 = v55[0];
  *&v55[0] = v25;
  *&v54[0] = v32;
  MEMORY[0x1EEE9AC00](v33, v34);

  v35 = sub_1D725C00C();

  v36 = v45;
  *v45 = 0;
  v37 = v42;
  *(v36 + 24) = v41;
  *(v36 + 8) = v37;
  *&v55[0] = v35;
  sub_1D5B49714(0, &qword_1EDF1B4C8);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8);
  sub_1D5BDEFF8();
  v38 = sub_1D72623BC();

  v40 = MEMORY[0x1E69E7CC0];
  *(v36 + 5) = v38;
  *(v36 + 6) = v40;
  return result;
}

uint64_t sub_1D6029AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D6029B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D602C218(0, &qword_1EC8827E0, sub_1D602BB40, &type metadata for A18_V15.Layout, MEMORY[0x1E69D74B0]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v21[-v16];
  v27 = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = 18;
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69D7490], v13);
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v19 = MEMORY[0x1E69D7150];
  sub_1D602BC64(0, &qword_1EC8827E8, MEMORY[0x1E69D7150]);
  sub_1D602BC20(&qword_1EC8827F0, &qword_1EC8827E8, v19);
  sub_1D7259A2C();
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1D6029DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v58 = a5;
  v59 = a6;
  v56 = a3;
  v57 = a4;
  v55 = a2;
  v48 = sub_1D602BB40;
  sub_1D602C218(0, &qword_1EC8827E0, sub_1D602BB40, &type metadata for A18_V15.Layout, MEMORY[0x1E69D74B0]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = (v36 - v11);
  v66 = a1;
  v38 = a1;
  v13 = sub_1D725994C();
  v50 = v13;
  v14 = swift_allocBox();
  v53 = *MEMORY[0x1E69D6F50];
  v15 = *(v13 - 8);
  v52 = *(v15 + 104);
  v54 = v15 + 104;
  v52(v16);
  *v12 = v14;
  v51 = *MEMORY[0x1E69D73C0];
  v17 = *(v9 + 104);
  v17(v12);
  v47 = v9 + 104;
  v18 = v17;
  v46 = v17;
  v19 = MEMORY[0x1E69D6F38];
  sub_1D602BC64(0, &qword_1EC8827F8, MEMORY[0x1E69D6F38]);
  v60 = v20;
  v36[1] = sub_1D602BC20(&qword_1EC882800, &qword_1EC8827F8, v19);
  sub_1D7259A9C();
  v21 = *(v9 + 8);
  v39 = v9 + 8;
  v21(v12, v8);
  v66 = a1;
  v49 = *MEMORY[0x1E69D74A8];
  v18(v12);
  sub_1D602BCE8();
  v45 = v22;
  sub_1D602C218(0, &qword_1EC882810, v48, &type metadata for A18_V15.Layout, MEMORY[0x1E69D70D8]);
  v42 = v23;
  v24 = *(v23 - 8);
  v48 = *(v24 + 72);
  v44 = *(v24 + 80);
  v25 = (v44 + 32) & ~v44;
  v37 = v25;
  v26 = swift_allocObject();
  v43 = xmmword_1D7273AE0;
  *(v26 + 16) = xmmword_1D7273AE0;
  v41 = *MEMORY[0x1E69D7098];
  v40 = *(v24 + 104);
  v40(v26 + v25);
  v65 = v55;
  sub_1D72599EC();

  v27 = v21;
  v21(v12, v8);
  v28 = v38;
  v66 = v38;
  v29 = v50;
  v30 = swift_allocBox();
  (v52)(v31, v53, v29);
  *v12 = v30;
  v32 = v46;
  (v46)(v12, v51, v8);
  sub_1D7259A9C();
  v27(v12, v8);
  v66 = v28;
  (v32)(v12, v49, v8);
  v33 = v37;
  v34 = swift_allocObject();
  *(v34 + 16) = v43;
  (v40)(v34 + v33, v41, v42);
  v61 = v56;
  v62 = v57;
  v63 = v58;
  v64 = v59;
  sub_1D72599EC();

  return (v27)(v12, v8);
}

uint64_t sub_1D602A374(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  sub_1D602C218(0, &qword_1EC8827E0, sub_1D602BB40, &type metadata for A18_V15.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v17 - v8);
  v21 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 9;
  *v9 = v10;
  v11 = *MEMORY[0x1E69D7490];
  v12 = *(v6 + 104);
  v12(v9, v11, v5);
  v20 = a2;
  v13 = MEMORY[0x1E69D6F38];
  sub_1D602BC64(0, &qword_1EC8827F8, MEMORY[0x1E69D6F38]);
  sub_1D602BC20(&qword_1EC882800, &qword_1EC8827F8, v13);
  sub_1D7259A2C();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v21 = v18;
  v15 = swift_allocObject();
  *(v15 + 16) = 9;
  *v9 = v15;
  v12(v9, v11, v5);
  v19 = v17;
  sub_1D7259A2C();
  return (v14)(v9, v5);
}

uint64_t sub_1D602A618(uint64_t a1, uint64_t a2)
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
  sub_1D602C218(0, &qword_1EC8827E0, sub_1D602BB40, &type metadata for A18_V15.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v39 - v23;
  v46 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D74A8], v20);
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
  *&v13[v10[6]] = 0;
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
  sub_1D5BE792C(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE792C(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D602BC64(0, &qword_1EC8827F8, MEMORY[0x1E69D6F38]);
  sub_1D602BC20(&qword_1EC882800, &qword_1EC8827F8, v36);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

uint64_t sub_1D602ABE8(uint64_t a1, uint64_t a2)
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
  sub_1D602C218(0, &qword_1EC8827E0, sub_1D602BB40, &type metadata for A18_V15.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v39 - v23;
  v46 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D74A8], v20);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v39 = v6;
  v40 = v20;
  sub_1D5BE3ED8(a2 + *(v15 + 72) + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v18, type metadata accessor for HeadlineViewLayout.Context);
  v25 = v10[5];
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v13[v25], v26, v27);
  (*(v28 + 56))(&v13[v25], 0, 1, v27);
  v29 = MEMORY[0x1E69DDC70];
  *v13 = 0;
  *&v13[v10[6]] = 0;
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
  sub_1D5BE792C(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE792C(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D602BC64(0, &qword_1EC8827F8, MEMORY[0x1E69D6F38]);
  sub_1D602BC20(&qword_1EC882800, &qword_1EC8827F8, v36);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

void sub_1D602B1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_1D602C218(0, &qword_1EC8827E0, sub_1D602BB40, &type metadata for A18_V15.Layout, MEMORY[0x1E69D74B0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = (&v27 - v13);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0) - 8;
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v20 != 3)
  {
    return;
  }

  if ((a5 >> 1) <= a4)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v21 = *(v17 + 72);
  v30 = *MEMORY[0x1E69D7490];
  v28 = (v11 + 8);
  v29 = (v11 + 104);
  v31 = v21;
  v22 = a3 + v21 * a4;
  v27 = a1;
  do
  {
    sub_1D5BE3ED8(v22, v19, type metadata accessor for HeadlineViewLayout.Context);
    v32 = a1;
    v23 = swift_allocObject();
    *(v23 + 16) = 6;
    *v14 = v23;
    v24 = (*v29)(v14, v30, v10);
    MEMORY[0x1EEE9AC00](v24, v25);
    v26 = MEMORY[0x1E69D6F38];
    sub_1D602BC64(0, &qword_1EC8827F8, MEMORY[0x1E69D6F38]);
    sub_1D602BC20(&qword_1EC882800, &qword_1EC8827F8, v26);
    sub_1D7259A2C();
    a1 = v27;
    (*v28)(v14, v10);
    sub_1D5BE792C(v19, type metadata accessor for HeadlineViewLayout.Context);
    v22 += v31;
    --v20;
  }

  while (v20);
}

uint64_t sub_1D602B508(uint64_t a1, uint64_t a2)
{
  v27[0] = a2;
  v3 = type metadata accessor for HeadlineViewLayout.Options(0);
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D602C218(0, &qword_1EC8827E0, sub_1D602BB40, &type metadata for A18_V15.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v27 - v12);
  v27[1] = a1;
  swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = 0x4060E00000000000;
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69D73D8], v9);
  v15 = v4[7];
  v16 = *MEMORY[0x1E69D7348];
  v17 = sub_1D725A34C();
  v18 = *(v17 - 8);
  (*(v18 + 104))(&v7[v15], v16, v17);
  (*(v18 + 56))(&v7[v15], 0, 1, v17);
  v19 = *MEMORY[0x1E69DDC70];
  *v7 = 0;
  *&v7[v4[8]] = 0;
  *&v7[v4[9]] = v19;
  v20 = *MEMORY[0x1E69DDCE0];
  v21 = *(MEMORY[0x1E69DDCE0] + 8);
  v22 = *(MEMORY[0x1E69DDCE0] + 16);
  v23 = *(MEMORY[0x1E69DDCE0] + 24);
  v24 = v19;
  _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v27[0], v7, v20, v21, v22, v23);
  sub_1D5BE792C(v7, type metadata accessor for HeadlineViewLayout.Options);
  v25 = MEMORY[0x1E69D6F38];
  sub_1D602BC64(0, &qword_1EC8827F8, MEMORY[0x1E69D6F38]);
  sub_1D602BC20(&qword_1EC882800, &qword_1EC8827F8, v25);
  sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1D602B868@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
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
  v16 = a4 + *(type metadata accessor for A18_V15.Bound() + 24);
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

unint64_t sub_1D602B97C(uint64_t a1)
{
  *(a1 + 8) = sub_1D602B9AC();
  result = sub_1D602BA00();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D602B9AC()
{
  result = qword_1EC882798;
  if (!qword_1EC882798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882798);
  }

  return result;
}

unint64_t sub_1D602BA00()
{
  result = qword_1EC8827A0;
  if (!qword_1EC8827A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8827A0);
  }

  return result;
}

uint64_t type metadata accessor for A18_V15.Bound()
{
  result = qword_1EC8827B0;
  if (!qword_1EC8827B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D602BAC8(uint64_t a1)
{
  result = sub_1D602C280(&qword_1EC8827C0, type metadata accessor for A18_V15.Bound);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D602BB40()
{
  result = qword_1EC8827D0;
  if (!qword_1EC8827D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8827D0);
  }

  return result;
}

unint64_t sub_1D602BB94()
{
  result = qword_1EC8827D8;
  if (!qword_1EC8827D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8827D8);
  }

  return result;
}

uint64_t sub_1D602BC20(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D602BC64(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D602BC64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A18_V15.Layout;
    v8[1] = &type metadata for A18_V15.Layout.Attributes;
    v8[2] = sub_1D602BB40();
    v8[3] = sub_1D602BB94();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D602BCE8()
{
  if (!qword_1EC882808)
  {
    sub_1D602C218(255, &qword_1EC882810, sub_1D602BB40, &type metadata for A18_V15.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC882808);
    }
  }
}

unint64_t sub_1D602BDC8()
{
  result = qword_1EC882818;
  if (!qword_1EC882818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882818);
  }

  return result;
}

unint64_t sub_1D602BE20()
{
  result = qword_1EC882820;
  if (!qword_1EC882820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882820);
  }

  return result;
}

unint64_t sub_1D602BE78()
{
  result = qword_1EC882828;
  if (!qword_1EC882828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882828);
  }

  return result;
}

unint64_t sub_1D602BED0()
{
  result = qword_1EC882830;
  if (!qword_1EC882830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882830);
  }

  return result;
}

uint64_t sub_1D602BF24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D602C218(0, &qword_1EC882838, sub_1D602C1C4, &type metadata for A18_V15.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D602C1C4();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D602C280(&qword_1EDF1A740, type metadata accessor for CGRect);
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

unint64_t sub_1D602C1C4()
{
  result = qword_1EC882840;
  if (!qword_1EC882840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882840);
  }

  return result;
}

void sub_1D602C218(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D602C280(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D602C2DC()
{
  result = qword_1EC882850;
  if (!qword_1EC882850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882850);
  }

  return result;
}

unint64_t sub_1D602C334()
{
  result = qword_1EC882858;
  if (!qword_1EC882858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882858);
  }

  return result;
}

unint64_t sub_1D602C38C()
{
  result = qword_1EC882860;
  if (!qword_1EC882860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882860);
  }

  return result;
}

uint64_t sub_1D602C3F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v199 = a3;
  v218 = a2;
  v202 = a1;
  v178 = a4;
  v4 = *a1;
  v195 = *(*a1 + 88);
  v193 = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = swift_getAssociatedTypeWitness();
  v176 = *(v5 - 8);
  v177 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v175 = &v174 - v7;
  v8 = sub_1D725ABCC();
  v179 = *(v8 - 8);
  v180 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v217 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D725789C();
  v197 = *(v11 - 8);
  v198 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v196 = (&v174 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5BA2E54(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v192 = &v174 - v16;
  sub_1D5BA2E54(0, &qword_1EDF17460, sub_1D5B9E4F4);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v191 = &v174 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v190 = &v174 - v22;
  sub_1D5BA2E54(0, &qword_1EDF17480, sub_1D5B9A9C8);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v189 = &v174 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v188 = &v174 - v28;
  v205 = MEMORY[0x1E69D6200];
  sub_1D5B998E4(0, &qword_1EDF17490, &qword_1EDF17498, MEMORY[0x1E69D6200], sub_1D5B9E588);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v237 = &v174 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v201 = &v174 - v34;
  sub_1D5BA2E54(0, &qword_1EDF174B0, sub_1D5BA21B0);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v206 = &v174 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v204 = &v174 - v40;
  sub_1D5B9D284();
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v44 = &v174 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v174 - v47;
  v49 = MEMORY[0x1E69D6200];
  sub_1D5B998E4(0, &qword_1EDF17440, &qword_1EDF17448, MEMORY[0x1E69D6200], sub_1D5BA2FE0);
  MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v53 = &v174 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = &v174 - v56;
  sub_1D5BA2FE0(0, &qword_1EDF17448, v49);
  v59 = v58;
  v215 = v58;
  v60 = *(v58 - 8);
  v61 = *(v60 + 56);
  v214 = v61;
  v216 = v60 + 56;
  v210 = v57;
  (v61)(v57, 1, 1, v58);
  v211 = v53;
  (v61)(v53, 1, 1, v59);
  sub_1D5BA2FE0(0, &qword_1EDF173B0, MEMORY[0x1E69D6208]);
  v213 = v62;
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2FE0(0, &qword_1EDF17538, MEMORY[0x1E69D6160]);
  v212 = v63;
  swift_allocObject();
  v209 = sub_1D725C4BC();
  sub_1D5B9E048(0, &qword_1EDF17458, MEMORY[0x1E69D6200]);
  v65 = v64;
  v185 = v64;
  v66 = *(v64 - 8);
  v67 = *(v66 + 56);
  v186 = v67;
  v187 = v66 + 56;
  v181 = v48;
  v67(v48, 1, 1, v64);
  v182 = v44;
  v67(v44, 1, 1, v65);
  sub_1D5B9E048(0, &qword_1EDF173A8, MEMORY[0x1E69D6208]);
  v184 = v68;
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9E048(0, &qword_1EDF17530, MEMORY[0x1E69D6160]);
  v183 = v69;
  swift_allocObject();
  v208 = sub_1D725C4BC();
  sub_1D5BA21B0();
  v71 = v70;
  v72 = *(*(v70 - 8) + 56);
  v73 = v204;
  v72(v204, 1, 1, v70);
  v74 = v206;
  v72(v206, 1, 1, v71);
  sub_1D5B99A0C();
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9DFB4();
  swift_allocObject();
  v207 = sub_1D725C4BC();
  v72(v73, 1, 1, v71);
  v72(v74, 1, 1, v71);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v206 = sub_1D725C4BC();
  v76 = v214;
  v75 = v215;
  v214(v210, 1, 1, v215);
  v76(v211, 1, 1, v75);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v204 = sub_1D725C4BC();
  sub_1D5B9E588(0, &qword_1EDF17498, v205);
  v78 = v77;
  v79 = *(*(v77 - 8) + 56);
  v80 = v201;
  v79(v201, 1, 1, v77);
  v81 = v237;
  v79(v237, 1, 1, v78);
  sub_1D5B9E588(0, &qword_1EDF173D8, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9E588(0, &qword_1EDF17560, MEMORY[0x1E69D6160]);
  swift_allocObject();
  v205 = sub_1D725C4BC();
  v79(v80, 1, 1, v78);
  v79(v81, 1, 1, v78);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v237 = sub_1D725C4BC();
  v82 = v210;
  v84 = v214;
  v83 = v215;
  v214(v210, 1, 1, v215);
  v85 = v211;
  v84(v211, 1, 1, v83);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v201 = sub_1D725C4BC();
  v84(v82, 1, 1, v83);
  v84(v85, 1, 1, v83);
  v86 = AssociatedConformanceWitness;
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v213 = sub_1D725C4BC();
  sub_1D5B9A9C8();
  v88 = v87;
  v89 = *(*(v87 - 8) + 56);
  v89(v188, 1, 1, v87);
  v89(v189, 1, 1, v88);
  sub_1D5B9ABAC();
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA4D44();
  swift_allocObject();
  v212 = sub_1D725C4BC();
  v90 = v185;
  v91 = v186;
  v186(v181, 1, 1, v185);
  v91(v182, 1, 1, v90);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v211 = sub_1D725C4BC();
  sub_1D5B9E4F4();
  v93 = v92;
  v94 = *(*(v92 - 8) + 56);
  v94(v190, 1, 1, v92);
  v94(v191, 1, 1, v93);
  sub_1D5BA6158();
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B99B3C();
  swift_allocObject();
  v210 = sub_1D725C4BC();
  sub_1D725C4CC();
  v95 = type metadata accessor for FeedCursorGroup();
  v96 = v218;
  *&v226 = FeedCursorGroup.identifier.getter();
  *(&v226 + 1) = v97;
  sub_1D725C74C();

  sub_1D725C4CC();
  v214 = v95;
  v216 = *(v95 + 36);
  v98 = *(v86 + 72);
  v215 = swift_checkMetadataState();
  *&v226 = v98(v215, v86);
  *(&v226 + 1) = v99;
  sub_1D725C74C();

  sub_1D725C4CC();
  v100 = sub_1D725891C();
  v101 = *(v100 - 8);
  v102 = *(v101 + 16);
  v103 = v192;
  v102(v192, v96, v100);
  v104 = *(v101 + 56);
  v104(v103, 0, 1, v100);
  v105 = v103;
  sub_1D725C74C();

  sub_1D725C4CC();
  v106 = v202;
  v102(v105, v202 + qword_1EDFFCF50, v100);
  v104(v105, 0, 1, v100);
  v107 = v204;
  v108 = v218;
  sub_1D725C74C();

  sub_1D725C4CC();
  v109 = v106[3];
  *&v226 = v106[2];
  *(&v226 + 1) = v109;

  sub_1D725C74C();

  sub_1D725B06C();
  swift_allocObject();
  v110 = sub_1D72578DC();
  v111 = v196;
  *v196 = 0x7974696E69666E69;
  v111[1] = 0xE800000000000000;
  v111[2] = 0x74696E69666E692DLL;
  v111[3] = 0xE900000000000079;
  v111[4] = 7233902;
  v111[5] = 0xE300000000000000;
  (*(v197 + 104))(v111, *MEMORY[0x1E6967FE0], v198);
  sub_1D72578AC();
  v112 = v200;
  sub_1D725B04C();
  if (v112)
  {
    (*(*(v214 - 1) + 8))(v108);

    v113 = v206;
LABEL_5:
    *&v226 = v209;
    *(&v226 + 1) = v208;
    v227 = v207;
    v228 = v113;
    v229 = v107;
    v230 = v205;
    v231 = v237;
    v232 = v201;
    v233 = v213;
    v234 = v212;
    v235 = v211;
    v236 = v210;
    return sub_1D5BA705C(&v226);
  }

  v200 = 0;
  sub_1D725C4CC();
  *&v226 = 0x2D617461642E67;
  *(&v226 + 1) = 0xE700000000000000;
  v199 = v110;
  v114 = v106[2];
  v115 = v106[3];

  MEMORY[0x1DA6F9910](v114, v115);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v116 = FeedCursorGroup.identifier.getter();
  MEMORY[0x1DA6F9910](v116);

  v117 = v226;
  v118 = v106[2];
  v119 = v106[3];

  v120 = sub_1D725ABAC();
  *&v226 = sub_1D60F2034(v117, *(&v117 + 1), v118, v119, v120, v121);
  *(&v226 + 1) = v122;
  v227 = v123;
  sub_1D5BA1DA8(0, &qword_1EDF174F8, sub_1D5B9FEBC, &type metadata for FeedBlobEntity, MEMORY[0x1E69D6178]);
  swift_allocObject();
  *&v226 = sub_1D725C56C();
  sub_1D725C74C();

  v198 = sub_1D725C4CC();
  *&v226 = 0x2D6C6F6F702E67;
  *(&v226 + 1) = 0xE700000000000000;
  v124 = v106[2];
  v125 = v106[3];

  MEMORY[0x1DA6F9910](v124, v125);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v126 = v218;
  v127 = FeedCursorGroup.identifier.getter();
  MEMORY[0x1DA6F9910](v127);

  v128 = *(&v226 + 1);
  v129 = v106[3];
  v196 = v106[2];
  v197 = v226;

  *&v226 = sub_1D725ABBC();
  sub_1D725B4FC();
  sub_1D5B9DE94(&unk_1EDF17B58, MEMORY[0x1E69D6878]);
  v130 = v200;
  v131 = sub_1D72578BC();
  if (v130)
  {

    (*(*(v214 - 1) + 8))(v126);

    (*(v179 + 8))(v217, v180);
    v113 = v206;
    v107 = v204;
    goto LABEL_5;
  }

  v200 = 0;
  v134 = v131;
  v135 = v132;

  *&v226 = sub_1D60F2034(v197, v128, v196, v129, v134, v135);
  *(&v226 + 1) = v136;
  v227 = v137;
  swift_allocObject();
  *&v226 = sub_1D725C56C();
  sub_1D725C74C();

  sub_1D725C4CC();
  v138 = (v126 + *(v214 + 10));
  v139 = v138[1];
  *&v226 = *v138;
  *(&v226 + 1) = v139;

  sub_1D725C74C();

  sub_1D725C4CC();
  v140 = AssociatedConformanceWitness;
  v141 = v215;
  v142 = v175;
  (*(AssociatedConformanceWitness + 64))(v215, AssociatedConformanceWitness);
  v143 = v177;
  swift_getAssociatedConformanceWitness();
  sub_1D726257C();
  (*(v176 + 8))(v142, v143);
  v220 = v226;
  sub_1D725C74C();

  sub_1D725C4CC();
  (*(v140 + 88))(&v226, v141, v140);
  sub_1D5B9AA5C();
  swift_allocObject();
  *&v226 = sub_1D725C88C();
  sub_1D725C74C();

  sub_1D725C4CC();
  v144 = v141;
  v145 = (*(v140 + 104))(v141, v140);
  if (v145)
  {
    v146 = [v145 identifier];
    swift_unknownObjectRelease();
    v147 = sub_1D726207C();
    v149 = v148;
  }

  else
  {
    v147 = 0;
    v149 = 1;
  }

  v150 = v178;
  v151 = v217;
  v152 = v205;
  *&v226 = v147;
  *(&v226 + 1) = v149;
  sub_1D725C74C();

  v198 = sub_1D725C4CC();
  v153 = (*(*(v140 + 8) + 32))(v144);
  v155 = v179;
  v154 = v180;
  if (!(v153 >> 62))
  {
    v156 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v157 = v237;
    if (v156)
    {
      goto LABEL_11;
    }

LABEL_21:

    v159 = MEMORY[0x1E69E7CC0];
LABEL_22:
    *&v226 = v159;
    sub_1D5BA2EFC();
    swift_allocObject();
    *&v226 = sub_1D725C88C();
    sub_1D725C74C();

    (*(*(v214 - 1) + 8))(v218);
    (*(v155 + 8))(v151, v154);
    *&v220 = v209;
    *(&v220 + 1) = v208;
    *&v221 = v207;
    *(&v221 + 1) = v206;
    *&v222 = v204;
    *(&v222 + 1) = v152;
    *&v223 = v157;
    *(&v223 + 1) = v201;
    *&v224 = v213;
    *(&v224 + 1) = v212;
    *&v225 = v211;
    *(&v225 + 1) = v210;
    *&v226 = v209;
    *(&v226 + 1) = v208;
    v227 = v207;
    v228 = v206;
    v229 = v204;
    v230 = v152;
    v231 = v157;
    v232 = v201;
    v233 = v213;
    v234 = v212;
    v235 = v211;
    v236 = v210;
    sub_1D5BA6C4C(&v220, &v219);
    result = sub_1D5BA705C(&v226);
    v171 = v223;
    v150[2] = v222;
    v150[3] = v171;
    v172 = v225;
    v150[4] = v224;
    v150[5] = v172;
    v173 = v221;
    *v150 = v220;
    v150[1] = v173;
    return result;
  }

  v170 = v153;
  v156 = sub_1D7263BFC();
  v153 = v170;
  v157 = v237;
  if (!v156)
  {
    goto LABEL_21;
  }

LABEL_11:
  v216 = v153;
  *&v226 = MEMORY[0x1E69E7CC0];
  result = sub_1D5BFC364(0, v156 & ~(v156 >> 63), 0);
  v215 = v156;
  if ((v156 & 0x8000000000000000) == 0)
  {
    v158 = 0;
    v159 = v226;
    v160 = v216;
    v161 = v216 & 0xC000000000000001;
    do
    {
      if (v161)
      {
        v162 = MEMORY[0x1DA6FB460](v158);
      }

      else
      {
        v162 = *(v160 + 8 * v158 + 32);
        swift_unknownObjectRetain();
      }

      v163 = [v162 itemID];
      v164 = sub_1D726207C();
      v166 = v165;
      swift_unknownObjectRelease();

      *&v226 = v159;
      v168 = *(v159 + 16);
      v167 = *(v159 + 24);
      if (v168 >= v167 >> 1)
      {
        sub_1D5BFC364((v167 > 1), v168 + 1, 1);
        v159 = v226;
      }

      ++v158;
      *(v159 + 16) = v168 + 1;
      v169 = v159 + 16 * v168;
      *(v169 + 32) = v164;
      *(v169 + 40) = v166;
      v160 = v216;
      v157 = v237;
    }

    while (v215 != v158);

    v150 = v178;
    v155 = v179;
    v154 = v180;
    v151 = v217;
    v152 = v205;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D602DF30()
{
  if (qword_1EC87D4E0 != -1)
  {
    swift_once();
  }

  qword_1EDFFC6D8 = qword_1EC881F18;
  unk_1EDFFC6E0 = unk_1EC881F20;
}

uint64_t sub_1D602DF9C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v80 = a5;
  v78 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76 = *(AssociatedTypeWitness - 8);
  v77 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  v10 = &v71 - v9;
  v11 = sub_1D725ABCC();
  v79 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D725789C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = (&v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D725B06C();
  swift_allocObject();
  v20 = sub_1D72578DC();
  *v19 = 0x7974696E69666E69;
  v19[1] = 0xE800000000000000;
  v19[2] = 0x74696E69666E692DLL;
  v19[3] = 0xE900000000000079;
  v19[4] = 7233902;
  v19[5] = 0xE300000000000000;
  (*(v16 + 104))(v19, *MEMORY[0x1E6967FE0], v15);
  v21 = v14;
  sub_1D72578AC();
  v22 = v81;
  sub_1D725B04C();
  if (v22)
  {
  }

  v72 = v10;
  v73 = a1;
  v74 = a2;
  v75 = v11;
  v81 = 0;
  sub_1D725C4CC();
  v82 = 0x2D617461642E67;
  v83 = 0xE700000000000000;
  sub_1D725C4CC();
  sub_1D725C73C();

  if (!v86)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v80 = v20;
  MEMORY[0x1DA6F9910](v85, v86);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  sub_1D725C4CC();
  sub_1D725C73C();

  if (!v86)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  MEMORY[0x1DA6F9910](v85, v86);

  v24 = v82;
  v25 = v83;
  sub_1D725C4CC();
  sub_1D725C73C();

  v26 = v83;
  if (!v83)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v27 = v82;
  v28 = sub_1D725ABAC();
  v82 = sub_1D60F2034(v24, v25, v27, v26, v28, v29);
  v83 = v30;
  v84 = v31;
  sub_1D5BA1DA8(0, &qword_1EDF174F8, sub_1D5B9FEBC, &type metadata for FeedBlobEntity, MEMORY[0x1E69D6178]);
  swift_allocObject();
  v82 = sub_1D725C56C();
  sub_1D725C74C();

  sub_1D725C4CC();
  v82 = 0x2D6C6F6F702E67;
  v83 = 0xE700000000000000;
  sub_1D725C4CC();
  sub_1D725C73C();

  if (!v86)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  MEMORY[0x1DA6F9910](v85, v86);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  sub_1D725C4CC();
  sub_1D725C73C();

  if (!v86)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  MEMORY[0x1DA6F9910](v85, v86);

  v33 = v82;
  v32 = v83;
  sub_1D725C4CC();
  sub_1D725C73C();

  v34 = v83;
  if (v83)
  {
    v35 = v82;
    v85 = sub_1D725ABBC();
    sub_1D725B4FC();
    sub_1D5B9DE94(&unk_1EDF17B58, MEMORY[0x1E69D6878]);
    v36 = v81;
    v37 = sub_1D72578BC();
    if (v36)
    {

      return (*(v79 + 8))(v21, v75);
    }

    v81 = 0;
    v39 = v37;
    v40 = v38;

    v82 = sub_1D60F2034(v33, v32, v35, v34, v39, v40);
    v83 = v41;
    v84 = v42;
    swift_allocObject();
    v82 = sub_1D725C56C();
    sub_1D725C74C();

    sub_1D725C4CC();
    v43 = v78;
    v44 = v72;
    v45 = v74;
    (*(v78 + 8))(v74, v78);
    v46 = v77;
    swift_getAssociatedConformanceWitness();
    sub_1D726257C();
    (*(v76 + 8))(v44, v46);
    v85 = v82;
    v86 = v83;
    sub_1D725C74C();

    sub_1D725C4CC();
    (*(v43 + 11))(&v82, v45, v43);
    sub_1D5B9AA5C();
    swift_allocObject();
    v82 = sub_1D725C88C();
    sub_1D725C74C();

    sub_1D725C4CC();
    v47 = (*(v43 + 13))(v45, v43);
    if (v47)
    {
      v48 = [v47 identifier];
      swift_unknownObjectRelease();
      v49 = sub_1D726207C();
      v51 = v50;
    }

    else
    {
      v49 = 0;
      v51 = 1;
    }

    v82 = v49;
    v83 = v51;
    sub_1D725C74C();

    v77 = sub_1D725C4CC();
    v52 = (*(*(v43 + 1) + 32))(v45);
    v53 = v75;
    v54 = v79;
    if (v52 >> 62)
    {
      v70 = v52;
      v55 = sub_1D7263BFC();
      v52 = v70;
      if (v55)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v55 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v55)
      {
LABEL_16:
        v56 = v52;
        v78 = v21;
        v82 = MEMORY[0x1E69E7CC0];
        result = sub_1D5BFC364(0, v55 & ~(v55 >> 63), 0);
        if ((v55 & 0x8000000000000000) == 0)
        {
          v57 = 0;
          v58 = v82;
          v59 = v56;
          v87 = v56 & 0xC000000000000001;
          v60 = v56;
          v61 = v55;
          do
          {
            if (v87)
            {
              v62 = MEMORY[0x1DA6FB460](v57, v59);
            }

            else
            {
              v62 = *(v59 + 8 * v57 + 32);
              swift_unknownObjectRetain();
            }

            v63 = [v62 itemID];
            v64 = sub_1D726207C();
            v66 = v65;
            swift_unknownObjectRelease();

            v82 = v58;
            v68 = *(v58 + 16);
            v67 = *(v58 + 24);
            if (v68 >= v67 >> 1)
            {
              sub_1D5BFC364((v67 > 1), v68 + 1, 1);
              v58 = v82;
            }

            ++v57;
            *(v58 + 16) = v68 + 1;
            v69 = v58 + 16 * v68;
            *(v69 + 32) = v64;
            *(v69 + 40) = v66;
            v59 = v60;
          }

          while (v61 != v57);

          v53 = v75;
          v21 = v78;
          v54 = v79;
          goto LABEL_27;
        }

        __break(1u);
        goto LABEL_29;
      }
    }

    v58 = MEMORY[0x1E69E7CC0];
LABEL_27:
    v82 = v58;
    sub_1D5BA2EFC();
    swift_allocObject();
    v82 = sub_1D725C88C();
    sub_1D725C74C();

    return (*(v54 + 8))(v21, v53);
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1D602E964(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6E696C6F6F706572;
    v7 = 0x6449676174;
    if (a1 != 10)
    {
      v7 = 0x7364496D657469;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x617461446C6F6F70;
    v9 = 0x64496769666E6F63;
    if (a1 != 7)
    {
      v9 = 1684957547;
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
    v1 = 25705;
    v2 = 0x446873696C627570;
    v3 = 0x6449726F73727563;
    if (a1 != 4)
    {
      v3 = 0x74614470756F7267;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6449646E696BLL;
    if (a1 != 1)
    {
      v4 = 0x4464657461657263;
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

uint64_t sub_1D602EAE0(void *a1)
{
  sub_1D5BA1DA8(0, &qword_1EC8828B0, sub_1D603114C, &type metadata for FeedGroupEntity.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D603114C();
  sub_1D7264B5C();
  v22 = *v1;
  v21 = 0;
  sub_1D5BA2FE0(0, &qword_1EDF17538, MEMORY[0x1E69D6160]);
  v11 = v10;
  sub_1D60311A0(&qword_1EC8828B8);
  sub_1D726443C();
  if (!v2)
  {
    v20 = v11;
    v22 = v1[1];
    v21 = 1;
    sub_1D5B9E048(0, &qword_1EDF17530, MEMORY[0x1E69D6160]);
    v13 = v12;
    v14 = sub_1D6031200(&qword_1EC8828C0);
    sub_1D726443C();
    v18[1] = v14;
    v18[2] = v13;
    v19 = v1;
    v22 = v1[2];
    v21 = 2;
    sub_1D5B9DFB4();
    sub_1D5B9DE94(&qword_1EC8828C8, sub_1D5B9DFB4);
    sub_1D726443C();
    v22 = v19[3];
    v21 = 3;
    sub_1D726443C();
    v15 = v19;
    v22 = v19[4];
    v21 = 4;
    sub_1D726443C();
    v22 = v15[5];
    v21 = 5;
    sub_1D5B9E588(0, &qword_1EDF17560, MEMORY[0x1E69D6160]);
    sub_1D6031260(&qword_1EC8828D0);
    sub_1D726443C();
    v22 = v19[6];
    v21 = 6;
    sub_1D726443C();
    v16 = v19;
    v22 = v19[7];
    v21 = 7;
    sub_1D726443C();
    v22 = v16[8];
    v21 = 8;
    sub_1D726443C();
    v22 = v16[9];
    v21 = 9;
    sub_1D5BA4D44();
    sub_1D5B9DE94(&qword_1EC8828D8, sub_1D5BA4D44);
    sub_1D726443C();
    v22 = v16[10];
    v21 = 10;
    sub_1D726443C();
    v22 = v19[11];
    v21 = 11;
    sub_1D5B99B3C();
    sub_1D5B9DE94(&qword_1EC8828E0, sub_1D5B99B3C);
    sub_1D726443C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D602F098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D602F654(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D602F0C0(uint64_t a1)
{
  v2 = sub_1D603114C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D602F0FC(uint64_t a1)
{
  v2 = sub_1D603114C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D602F15C()
{
  if (qword_1EDF15398 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDFFC6D8;

  return v0;
}

uint64_t sub_1D602F1C4(uint64_t a1)
{
  v2 = sub_1D5B98F74();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1D602F210(uint64_t a1)
{
  v2 = sub_1D5B98F74();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1D602F25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5B98F74();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

double sub_1D602F2C0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1D602FA18(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_1D602F324(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5B98F74();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1D602F370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5B98F74();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1D602F3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5B98F74();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

unint64_t sub_1D602F430()
{
  result = qword_1EC882868;
  if (!qword_1EC882868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882868);
  }

  return result;
}

uint64_t sub_1D602F484@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BA2E54(0, &qword_1EDF17460, sub_1D5B9E4F4);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v14 - v8;
  sub_1D5B9E4F4();
  v11 = v10;
  v12 = *(*(v10 - 8) + 56);
  v12(v9, 1, 1, v10);
  v12(v5, 1, 1, v11);
  sub_1D5BA6158();
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B99B3C();
  swift_allocObject();
  result = sub_1D725C4BC();
  *a1 = result;
  return result;
}

uint64_t sub_1D602F60C()
{
  sub_1D725C4DC();
  sub_1D725C4FC();
  swift_allocObject();
  return sub_1D725C55C();
}

uint64_t sub_1D602F654(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449646E696BLL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4464657461657263 && a2 == 0xEB00000000657461 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446873696C627570 && a2 == 0xEB00000000657461 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6449726F73727563 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x617461446C6F6F70 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64496769666E6F63 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E696C6F6F706572 && a2 == 0xE900000000000067 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6449676174 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7364496D657469 && a2 == 0xE700000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

double sub_1D602FA18@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v119 = a1;
  v108 = a2;
  sub_1D5BA1DA8(0, &qword_1EC882870, sub_1D603114C, &type metadata for FeedGroupEntity.CodingKeys, MEMORY[0x1E69E6F48]);
  v112 = v2;
  v111 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v124 = &v107 - v4;
  sub_1D5BA2E54(0, &qword_1EDF17460, sub_1D5B9E4F4);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v123 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v122 = &v107 - v10;
  sub_1D5BA2E54(0, &qword_1EDF17480, sub_1D5B9A9C8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v121 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v120 = &v107 - v16;
  v128 = MEMORY[0x1E69D6200];
  sub_1D5B998E4(0, &qword_1EDF17490, &qword_1EDF17498, MEMORY[0x1E69D6200], sub_1D5B9E588);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v127 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v126 = &v107 - v22;
  sub_1D5BA2E54(0, &qword_1EDF174B0, sub_1D5BA21B0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v130 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v107 - v28;
  sub_1D5B9D284();
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v107 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v107 - v36;
  v38 = MEMORY[0x1E69D6200];
  sub_1D5B998E4(0, &qword_1EDF17440, &qword_1EDF17448, MEMORY[0x1E69D6200], sub_1D5BA2FE0);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v42 = &v107 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v107 - v45;
  sub_1D5BA2FE0(0, &qword_1EDF17448, v38);
  v48 = v47;
  v139 = v47;
  v49 = *(v47 - 8);
  v50 = *(v49 + 56);
  v138 = v50;
  v140 = v49 + 56;
  v135 = v46;
  v50(v46, 1, 1, v47);
  v136 = v42;
  v50(v42, 1, 1, v48);
  sub_1D5BA2FE0(0, &qword_1EDF173B0, MEMORY[0x1E69D6208]);
  v137 = v51;
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2FE0(0, &qword_1EDF17538, MEMORY[0x1E69D6160]);
  v53 = v52;
  swift_allocObject();
  v134 = sub_1D725C4BC();
  sub_1D5B9E048(0, &qword_1EDF17458, MEMORY[0x1E69D6200]);
  v55 = v54;
  v116 = v54;
  v56 = *(v54 - 8);
  v57 = *(v56 + 56);
  v117 = v57;
  v118 = v56 + 56;
  v113 = v37;
  v57(v37, 1, 1, v54);
  v114 = v33;
  v57(v33, 1, 1, v55);
  sub_1D5B9E048(0, &qword_1EDF173A8, MEMORY[0x1E69D6208]);
  v115 = v58;
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9E048(0, &qword_1EDF17530, MEMORY[0x1E69D6160]);
  v133 = v59;
  swift_allocObject();
  v132 = sub_1D725C4BC();
  sub_1D5BA21B0();
  v61 = v60;
  v62 = *(*(v60 - 8) + 56);
  v63 = v29;
  v62(v29, 1, 1, v60);
  v64 = v130;
  v62(v130, 1, 1, v61);
  sub_1D5B99A0C();
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9DFB4();
  v66 = v65;
  swift_allocObject();
  v131 = sub_1D725C4BC();
  v62(v63, 1, 1, v61);
  v62(v64, 1, 1, v61);
  swift_allocObject();
  sub_1D725C71C();
  v110 = v66;
  swift_allocObject();
  v130 = sub_1D725C4BC();
  v67 = v139;
  v68 = v138;
  v138(v135, 1, 1, v139);
  v68(v136, 1, 1, v67);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v129 = sub_1D725C4BC();
  sub_1D5B9E588(0, &qword_1EDF17498, v128);
  v70 = v69;
  v71 = *(*(v69 - 8) + 56);
  v72 = v126;
  v71(v126, 1, 1, v69);
  v73 = v127;
  v71(v127, 1, 1, v70);
  sub_1D5B9E588(0, &qword_1EDF173D8, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9E588(0, &qword_1EDF17560, MEMORY[0x1E69D6160]);
  v75 = v74;
  swift_allocObject();
  v128 = sub_1D725C4BC();
  v71(v72, 1, 1, v70);
  v71(v73, 1, 1, v70);
  swift_allocObject();
  sub_1D725C71C();
  v109 = v75;
  swift_allocObject();
  v127 = sub_1D725C4BC();
  v76 = v135;
  v77 = v139;
  v78 = v138;
  v138(v135, 1, 1, v139);
  v79 = v136;
  v78(v136, 1, 1, v77);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v126 = sub_1D725C4BC();
  v78(v76, 1, 1, v77);
  v78(v79, 1, 1, v77);
  swift_allocObject();
  sub_1D725C71C();
  v136 = v53;
  swift_allocObject();
  v140 = sub_1D725C4BC();
  sub_1D5B9A9C8();
  v81 = v80;
  v82 = *(*(v80 - 8) + 56);
  v82(v120, 1, 1, v80);
  v82(v121, 1, 1, v81);
  sub_1D5B9ABAC();
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA4D44();
  v84 = v83;
  swift_allocObject();
  v139 = sub_1D725C4BC();
  v85 = v116;
  v86 = v117;
  v117(v113, 1, 1, v116);
  v86(v114, 1, 1, v85);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v138 = sub_1D725C4BC();
  sub_1D5B9E4F4();
  v88 = v87;
  v89 = *(*(v87 - 8) + 56);
  v89(v122, 1, 1, v87);
  v89(v123, 1, 1, v88);
  sub_1D5BA6158();
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B99B3C();
  swift_allocObject();
  v137 = sub_1D725C4BC();
  v90 = v119;
  __swift_project_boxed_opaque_existential_1(v119, v119[3]);
  sub_1D603114C();
  v91 = v124;
  v92 = v125;
  sub_1D7264B0C();
  if (v92)
  {
    v94 = v127;
    __swift_destroy_boxed_opaque_existential_1(v90);
    v148 = v134;
    v149 = v132;
    v150 = v131;
    v151 = v130;
    v152 = v129;
    v153 = v128;
    v154 = v94;
    v155 = v126;
    v156 = v140;
    v157 = v139;
    v158 = v138;
    v159 = v137;
    sub_1D5BA705C(&v148);
  }

  else
  {
    LOBYTE(v141) = 0;
    sub_1D60311A0(&qword_1EC882880);
    sub_1D726431C();

    v134 = v148;
    LOBYTE(v141) = 1;
    v93 = sub_1D6031200(&qword_1EC882888);
    sub_1D726431C();
    v135 = v93;

    v132 = v148;
    LOBYTE(v141) = 2;
    sub_1D5B9DE94(&qword_1EC882890, sub_1D5B9DFB4);
    sub_1D726431C();

    v131 = v148;
    LOBYTE(v141) = 3;
    sub_1D726431C();

    v130 = v148;
    LOBYTE(v141) = 4;
    sub_1D726431C();
    v125 = v84;

    v129 = v148;
    LOBYTE(v141) = 5;
    sub_1D6031260(&qword_1EC882898);
    sub_1D726431C();

    v128 = v148;
    LOBYTE(v141) = 6;
    sub_1D726431C();

    v127 = v148;
    LOBYTE(v141) = 7;
    sub_1D726431C();

    v126 = v148;
    LOBYTE(v141) = 8;
    sub_1D726431C();

    v140 = v148;
    LOBYTE(v141) = 9;
    sub_1D5B9DE94(&qword_1EC8828A0, sub_1D5BA4D44);
    sub_1D726431C();

    v139 = v148;
    LOBYTE(v141) = 10;
    sub_1D726431C();

    v138 = v148;
    v147 = 11;
    sub_1D5B9DE94(&qword_1EC8828A8, sub_1D5B99B3C);
    sub_1D726431C();
    (*(v111 + 8))(v91, v112);

    v137 = v160;
    v95 = v134;
    *&v141 = v134;
    v96 = v132;
    *(&v141 + 1) = v132;
    v97 = v131;
    *&v142 = v131;
    v98 = v130;
    *(&v142 + 1) = v130;
    v99 = v129;
    v100 = v128;
    *&v143 = v129;
    *(&v143 + 1) = v128;
    v101 = v127;
    *&v144 = v127;
    *(&v144 + 1) = v126;
    *&v145 = v140;
    *(&v145 + 1) = v139;
    *&v146 = v138;
    *(&v146 + 1) = v160;
    sub_1D5BA6C4C(&v141, &v148);
    __swift_destroy_boxed_opaque_existential_1(v90);
    v148 = v95;
    v149 = v96;
    v150 = v97;
    v151 = v98;
    v152 = v99;
    v153 = v100;
    v154 = v101;
    v155 = v126;
    v156 = v140;
    v157 = v139;
    v158 = v138;
    v159 = v137;
    sub_1D5BA705C(&v148);
    v102 = v144;
    v103 = v108;
    v108[2] = v143;
    v103[3] = v102;
    v104 = v146;
    v103[4] = v145;
    v103[5] = v104;
    result = *&v141;
    v106 = v142;
    *v103 = v141;
    v103[1] = v106;
  }

  return result;
}

unint64_t sub_1D603114C()
{
  result = qword_1EC882878;
  if (!qword_1EC882878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882878);
  }

  return result;
}

uint64_t sub_1D60311A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5BA2FE0(255, &qword_1EDF17538, MEMORY[0x1E69D6160]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6031200(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B9E048(255, &qword_1EDF17530, MEMORY[0x1E69D6160]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6031260(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B9E588(255, &qword_1EDF17560, MEMORY[0x1E69D6160]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D60312F4()
{
  result = qword_1EC8828E8;
  if (!qword_1EC8828E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8828E8);
  }

  return result;
}

unint64_t sub_1D603134C()
{
  result = qword_1EDF153B8;
  if (!qword_1EDF153B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF153B8);
  }

  return result;
}

unint64_t sub_1D60313A4()
{
  result = qword_1EDF153C8;
  if (!qword_1EDF153C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF153C8);
  }

  return result;
}

unint64_t sub_1D60313FC()
{
  result = qword_1EC8828F0;
  if (!qword_1EC8828F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8828F0);
  }

  return result;
}

unint64_t sub_1D6031454()
{
  result = qword_1EC8828F8;
  if (!qword_1EC8828F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8828F8);
  }

  return result;
}

uint64_t SharingActivityTypeProvider.__allocating_init(supportedActivityTypes:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SharingActivityTypeProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::OpaquePointer_optional __swiftcall FCPuzzlesConfiguration.leaderboardDifficultyLevels(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = [v2 puzzleTypeLeaderboards];
  sub_1D5B5A498(0, &qword_1EDF04448);
  v6 = sub_1D7261D3C();

  if (*(v6 + 16))
  {
    v7 = sub_1D5B69D90(countAndFlagsBits, object);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      v10 = [v9 leaderboards];
      sub_1D5B5A498(0, &qword_1EDF044E0);
      v11 = sub_1D726267C();

      if (v11 >> 62)
      {
LABEL_24:
        v12 = sub_1D7263BFC();
        if (v12)
        {
LABEL_5:
          v13 = 0;
          v14 = MEMORY[0x1E69E7CC0];
          do
          {
            v15 = v13;
            while (1)
            {
              if ((v11 & 0xC000000000000001) != 0)
              {
                v16 = MEMORY[0x1DA6FB460](v15, v11);
              }

              else
              {
                if (v15 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_23;
                }

                v16 = *(v11 + 8 * v15 + 32);
              }

              v17 = v16;
              v13 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                __break(1u);
LABEL_23:
                __break(1u);
                goto LABEL_24;
              }

              v18 = [v16 difficulty];
              if (v18)
              {
                break;
              }

              ++v15;
              if (v13 == v12)
              {
                goto LABEL_26;
              }
            }

            v25 = v9;
            v19 = v18;
            v20 = [v18 integerValue];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_1D698BE40(0, *(v14 + 2) + 1, 1, v14);
            }

            v22 = *(v14 + 2);
            v21 = *(v14 + 3);
            if (v22 >= v21 >> 1)
            {
              v14 = sub_1D698BE40((v21 > 1), v22 + 1, 1, v14);
            }

            *(v14 + 2) = v22 + 1;
            *&v14[8 * v22 + 32] = v20;
            v9 = v25;
          }

          while (v13 != v12);
          goto LABEL_26;
        }
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12)
        {
          goto LABEL_5;
        }
      }

      v14 = MEMORY[0x1E69E7CC0];
LABEL_26:

      goto LABEL_27;
    }
  }

  v14 = 0;
LABEL_27:
  v24 = v14;
  result.value._rawValue = v24;
  result.is_nil = v23;
  return result;
}

uint64_t sub_1D6031858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x697461726F636564 && a2 == 0xEB00000000736E6FLL)
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

uint64_t sub_1D60318E4(uint64_t a1)
{
  v2 = sub_1D5C4C500();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6031920(uint64_t a1)
{
  v2 = sub_1D5C4C500();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1D6031990(uint64_t a1, __int128 *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  sub_1D5CF7F4C(a1, v7, *v2);
  return result;
}

unint64_t sub_1D60319FC()
{
  result = qword_1EC882900[0];
  if (!qword_1EC882900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC882900);
  }

  return result;
}

uint64_t FeedItemFilterMatcherType.wrap<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v4, v9);
  FeedItemFilterWrapperMatcher.init(matcher:translator:)(v11, a1, a2, a3, a4);
}

void sub_1D6031B74()
{
  type metadata accessor for FormatObject();
  if (v0 <= 0x3F)
  {
    sub_1D6032A5C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D6031BFC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v55 = *(a3 + 16);
  v60 = *(v55 - 8);
  v3 = *(v60 + 84);
  v56 = sub_1D725BD1C();
  v4 = *(v56 - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v54 = v6;
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v57 = v3;
  if (v7 <= v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(sub_1D725891C() - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_1D72608BC() - 8);
  v13 = *(v12 + 80);
  v14 = *(v12 + 84);
  v59 = *(v12 + 64);
  v15 = *(sub_1D725B76C() - 8);
  if (v7 - 1 <= v8)
  {
    v16 = v8;
  }

  else
  {
    v16 = v7 - 1;
  }

  v17 = *(v4 + 64);
  if (v5)
  {
    v18 = v17 + 7;
  }

  else
  {
    v18 = v17 + 8;
  }

  v19 = *(v15 + 80);
  v20 = v19 | 7;
  v21 = *(v15 + 84);
  v22 = *(v15 + 64);
  if (v14)
  {
    v23 = v59;
  }

  else
  {
    v23 = v59 + 1;
  }

  v24 = *(v4 + 80);
  v25 = ((((((((((((((((v23 + ((v13 + ((((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v21)
  {
    v26 = v22;
  }

  else
  {
    v26 = v22 + 1;
  }

  v27 = ((v26 + 7 + ((v17 + v19 + ((((v19 + 176) & ~(v19 | 7)) + v24 + ((v26 + 7 + ((v19 + v26 - (((-49 - v19) | v19) + ((-17 - v19) | v20)) - 2) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v24)) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v25 > v27)
  {
    v27 = ((((((((((((((((v23 + ((v13 + ((((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v28 = v25 + (((v13 | v10) & 0xF8 ^ 0x1F8) & ((v13 | v10) + 48));
  if (v27 <= v28)
  {
    v27 = v28;
  }

  if (v27 <= 0xB3)
  {
    v29 = 179;
  }

  else
  {
    v29 = v27;
  }

  if (!a2)
  {
    return 0;
  }

  v30 = v24 | 7;
  v31 = (v24 | 7) + *(v60 + 64);
  v32 = v24 + 16;
  v33 = v17 + v24;
  v34 = v20 | v13 | v10 | v24;
  v35 = (v31 & ~(v24 | 7)) + v34 + ((((((((v18 + ((v17 + v24 + ((v17 + v24 + ((v24 + 16) & ~v24)) & ~v24)) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v36 = a1;
  if (a2 <= v16)
  {
    goto LABEL_52;
  }

  v37 = ((((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v24 + 56) & ~v30) + v34 + 8) & ~v34) + (v35 & ~v34) + (((v29 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v38 = 8 * v37;
  if (v37 > 3)
  {
    goto LABEL_31;
  }

  v41 = ((a2 - v16 + ~(-1 << v38)) >> v38) + 1;
  if (HIWORD(v41))
  {
    v39 = *(a1 + v37);
    if (v39)
    {
      goto LABEL_39;
    }
  }

  else
  {
    if (v41 <= 0xFF)
    {
      if (v41 < 2)
      {
        goto LABEL_52;
      }

LABEL_31:
      v39 = *(a1 + v37);
      if (!*(a1 + v37))
      {
        goto LABEL_52;
      }

LABEL_39:
      v42 = (v39 - 1) << v38;
      if (v37 > 3)
      {
        v42 = 0;
      }

      if (v37)
      {
        if (v37 <= 3)
        {
          v43 = v37;
        }

        else
        {
          v43 = 4;
        }

        if (v43 > 2)
        {
          if (v43 == 3)
          {
            v44 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v44 = *a1;
          }
        }

        else if (v43 == 1)
        {
          v44 = *a1;
        }

        else
        {
          v44 = *a1;
        }
      }

      else
      {
        v44 = 0;
      }

      return v16 + (v44 | v42) + 1;
    }

    v39 = *(a1 + v37);
    if (*(a1 + v37))
    {
      goto LABEL_39;
    }
  }

LABEL_52:
  v45 = ~v30;
  if (v8 < v7 - 1)
  {
    if ((v5 & 0x80000000) != 0)
    {
      v47 = (*(v4 + 48))((v24 + ((((a1 + v35) & ~v34) + 55) & 0xFFFFFFFFFFFFFFF8) + 8) & v45, v5, v56);
    }

    else
    {
      v46 = *(((a1 + v35) & ~v34) + 8);
      if (v46 >= 0xFFFFFFFF)
      {
        LODWORD(v46) = -1;
      }

      v47 = v46 + 1;
    }

    goto LABEL_67;
  }

  v48 = v57;
  if (v57 >= v7)
  {
    v51 = v55;
    v50 = *(v60 + 48);
    goto LABEL_61;
  }

  v49 = ~v24;
  v36 = ((v32 + ((a1 + v31) & v45)) & v49);
  if (v5 >= 0x7FFFFFFF)
  {
    v50 = *(v4 + 48);
    v48 = v5;
    v51 = v56;
LABEL_61:

    return v50(v36, v48, v51);
  }

  v52 = (v33 + ((v36 + v33) & v49)) & v49;
  if (v54 == v7)
  {
    v47 = (*(v4 + 48))(v52, v5, v56);
LABEL_67:
    if (v47 >= 2)
    {
      return v47 - 1;
    }

    else
    {
      return 0;
    }
  }

  v53 = *((v52 + v17 + (v5 == 0) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v53 >= 0xFFFFFFFF)
  {
    LODWORD(v53) = -1;
  }

  return (v53 + 1);
}

void sub_1D6032230(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v67 = *(a4 + 16);
  v72 = *(v67 - 8);
  v4 = *(v72 + 84);
  v66 = sub_1D725BD1C();
  v5 = *(v66 - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  v65 = v7;
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v68 = v4;
  if (v8 <= v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_1D725891C() - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_1D72608BC() - 8);
  v14 = *(v13 + 80);
  v15 = *(v13 + 84);
  v71 = *(v13 + 64);
  v76 = 0;
  v16 = *(sub_1D725B76C() - 8);
  v69 = v8;
  v70 = v9;
  v17 = v8 - 1;
  v18 = v6;
  if (v8 - 1 <= v9)
  {
    v19 = v9;
  }

  else
  {
    v19 = v8 - 1;
  }

  v20 = (v14 + ((((((((((v12 + ((v11 + 16) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v14;
  v21 = *(v5 + 64);
  if (v6)
  {
    v22 = *(v5 + 64);
  }

  else
  {
    v22 = v21 + 1;
  }

  v23 = *(v16 + 80);
  v24 = v23 | 7;
  v25 = *(v16 + 64);
  if (v15)
  {
    v26 = v71;
  }

  else
  {
    v26 = v71 + 1;
  }

  v27 = *(v16 + 84) == 0;
  v28 = *(v5 + 80);
  v29 = ((v14 | v11) & 0xF8 ^ 0x1F8) & ((v14 | v11) + 48);
  v30 = (v28 | 7) + *(v72 + 64);
  v31 = v28 + 16;
  v32 = v21 + v28;
  v33 = v22 + ((v21 + v28 + ((v21 + v28 + ((v28 + 16) & ~v28)) & ~v28)) & ~v28);
  v34 = (v30 & ~(v28 | 7)) + 8;
  v35 = v24 | v14 | v11 | v28;
  v36 = v34 + v35 + ((((((((v33 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  v37 = (((v21 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v28 + 56) & ~(v28 | 7)) + v35 + 8) & ~v35;
  v38 = ((((((((((((((((v26 + v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v27)
  {
    ++v25;
  }

  v39 = ((v25 + 7 + ((v21 + v23 + ((((v23 + 176) & ~(v23 | 7)) + v28 + ((v25 + 7 + ((v23 + v25 - (((-49 - v23) | v23) + ((-17 - v23) | v24)) - 2) & ~v23)) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v28)) & ~v23)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v38 > v39)
  {
    v39 = v38;
  }

  if (v39 <= v38 + v29)
  {
    v39 = v38 + v29;
  }

  if (v39 <= 0xB3)
  {
    v39 = 179;
  }

  v40 = v37 + 8 + (v36 & ~v35) + (((v39 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  if (a3 > v19)
  {
    if (v40 <= 3)
    {
      v42 = ((a3 - v19 + ~(-1 << (8 * v40))) >> (8 * v40)) + 1;
      if (HIWORD(v42))
      {
        v41 = 4;
      }

      else
      {
        if (v42 < 0x100)
        {
          v43 = 1;
        }

        else
        {
          v43 = 2;
        }

        if (v42 >= 2)
        {
          v41 = v43;
        }

        else
        {
          v41 = 0;
        }
      }
    }

    else
    {
      v41 = 1;
    }

    v76 = v41;
  }

  if (v19 < a2)
  {
    v44 = ~v19 + a2;
    if (v40 < 4)
    {
      v45 = (v44 >> (8 * v40)) + 1;
      if (v40)
      {
        v47 = v44 & ~(-1 << (8 * v40));
        bzero(a1, v40);
        if (v40 != 3)
        {
          v48 = v76;
          if (v40 == 2)
          {
            *a1 = v47;
            if (v76 <= 1)
            {
              goto LABEL_83;
            }
          }

          else
          {
            *a1 = v44;
            if (v76 <= 1)
            {
LABEL_83:
              if (v48)
              {
                a1[v40] = v45;
              }

              return;
            }
          }

          goto LABEL_49;
        }

        *a1 = v47;
        a1[2] = BYTE2(v47);
      }
    }

    else
    {
      bzero(a1, v40);
      *a1 = v44;
      v45 = 1;
    }

    v48 = v76;
    if (v76 <= 1)
    {
      goto LABEL_83;
    }

LABEL_49:
    if (v48 == 2)
    {
      *&a1[v40] = v45;
    }

    else
    {
      *&a1[v40] = v45;
    }

    return;
  }

  v46 = a1;
  if (v76 > 1)
  {
    if (v76 != 2)
    {
      *&a1[v40] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_54;
    }

    *&a1[v40] = 0;
  }

  else if (v76)
  {
    a1[v40] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_54;
  }

  if (!a2)
  {
    return;
  }

LABEL_54:
  v49 = ~(v28 | 7);
  if (v70 >= v17)
  {
    if (v70 < a2)
    {
      v50 = v34 + ((((((((v33 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8);
      if (!v50)
      {
        return;
      }

      v54 = v70;
LABEL_69:
      v52 = ~v54 + a2;
      goto LABEL_92;
    }

    if (v68 >= v69)
    {
      v58 = v67;
      v59 = *(v72 + 56);
      v60 = a1;
      v61 = a2;
      v18 = v68;
    }

    else
    {
      v46 = (&a1[v30] & v49);
      if (a2 > v69)
      {
        v56 = (((((((v33 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8;
        v50 = (v56 + 8);
        if (v56 == -8)
        {
          return;
        }

        v54 = v69;
        goto LABEL_69;
      }

      v62 = ~v28;
      v60 = (&v46[v31] & v62);
      if (v18 < 0x7FFFFFFF)
      {
        v60 = ((v32 + (&v60[v32] & v62)) & v62);
        if (v65 != v69)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v64 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v64 = a2 - 1;
          }

          *(&v60[v22 + 7] & 0xFFFFFFFFFFFFFFF8) = v64;
          return;
        }

        v59 = *(v5 + 56);
        v61 = a2 + 1;
      }

      else
      {
        v59 = *(v5 + 56);
        v61 = a2;
      }

      v58 = v66;
    }

    v59(v60, v61, v18, v58);
    return;
  }

  v46 = (&a1[v36] & ~v35);
  v50 = v37 + 8 + (((v39 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8);
  if (v17 >= a2)
  {
    if (a2 < v69)
    {
      v55 = a2 + 1;
      if ((v18 & 0x80000000) != 0)
      {
        v63 = *(v5 + 56);

        v63((v28 + ((v46 + 55) & 0xFFFFFFFFFFFFFFF8) + 8) & v49, v55);
      }

      else if ((v55 & 0x80000000) != 0)
      {
        *(v46 + 1) = 0;
        *(v46 + 2) = 0;
        v46[24] = 0;
        *v46 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *(v46 + 1) = a2;
      }

      return;
    }

    if (!v50)
    {
      return;
    }

    if (v50 <= 3)
    {
      v57 = ~(-1 << (8 * (v37 + 8 + (((v39 & 0xF8) + 31) & 0xF8))));
    }

    else
    {
      v57 = -1;
    }

    v52 = v57 & (a2 - v69);
LABEL_92:
    bzero(v46, v50);
    goto LABEL_93;
  }

  if (v50 <= 3)
  {
    v51 = ~(-1 << (8 * (v37 + 8 + (((v39 & 0xF8) + 31) & 0xF8))));
  }

  else
  {
    v51 = -1;
  }

  if (v50)
  {
    v52 = v51 & (a2 - v69);
    if (v50 <= 3)
    {
      v53 = v37 + 8 + (((v39 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8);
    }

    else
    {
      v53 = 4;
    }

    bzero(v46, v50);
    if (v53 <= 2)
    {
      if (v53 == 1)
      {
        *v46 = v52;
      }

      else
      {
        *v46 = v52;
      }

      return;
    }

    if (v53 == 3)
    {
      *v46 = v52;
      v46[2] = BYTE2(v52);
      return;
    }

LABEL_93:
    *v46 = v52;
  }
}

void sub_1D6032A5C()
{
  if (!qword_1EC890010)
  {
    type metadata accessor for DebugFormatCacheFile();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC890010);
    }
  }
}

uint64_t sub_1D6032AB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A626FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C69466568636163 && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D6032B84(char a1)
{
  if (a1)
  {
    return 0x6C69466568636163;
  }

  else
  {
    return 0x7463656A626FLL;
  }
}

uint64_t sub_1D6032BBC(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v11[0] = a2;
  v11[1] = v3;
  type metadata accessor for DebugFormatObject.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1D726446C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B5C();
  v13 = 0;
  type metadata accessor for FormatObject();
  swift_getWitnessTable();
  v9 = v11[3];
  sub_1D726443C();
  if (!v9)
  {
    v12 = 1;
    type metadata accessor for DebugFormatCacheFile();
    sub_1D60333B4(qword_1EC882990);
    sub_1D72643BC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D6032DCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_1D6032A5C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v30 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for FormatObject();
  v29 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v6);
  v31 = &v26 - v7;
  type metadata accessor for DebugFormatObject.CodingKeys();
  swift_getWitnessTable();
  v34 = sub_1D726435C();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for DebugFormatObject();
  v27 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v26 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v35;
  sub_1D7264B0C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v35 = v11;
  v18 = v29;
  v17 = v30;
  v37 = 0;
  v19 = v33;
  swift_getWitnessTable();
  v20 = v31;
  sub_1D726431C();
  v21 = *(v18 + 32);
  v26 = v16;
  v21(v16, v20, v19);
  type metadata accessor for DebugFormatCacheFile();
  v36 = 1;
  sub_1D60333B4(&qword_1EC882988);
  sub_1D726427C();
  (*(v32 + 8))(v10, v34);
  v22 = v35;
  v23 = v26;
  sub_1D6033350(v17, &v26[*(v35 + 36)]);
  v24 = v27;
  (*(v27 + 16))(v28, v23, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v24 + 8))(v23, v22);
}

uint64_t sub_1D6033228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6032AB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6033258(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D60332AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D6033350(uint64_t a1, uint64_t a2)
{
  sub_1D6032A5C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60333B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DebugFormatCacheFile();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id FeedLayoutFailure.error.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t FeedLayoutFailure.explanation.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1D60334E0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3DE28);
  result = sub_1D725AACC();
  if (v16)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x1EEE9AC00](v2, v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for UserActionObservationManager();
    v14[3] = v7;
    v14[4] = &off_1F51C5A20;
    v14[0] = v6;
    type metadata accessor for UserActionsCommandHandler();
    v8 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v14, v7);
    MEMORY[0x1EEE9AC00](v9, v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v8[5] = v7;
    v8[6] = &off_1F51C5A20;
    v8[2] = v13;
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D60336F0()
{
  if (!qword_1EDF2D128[0])
  {
    v0 = type metadata accessor for SaveCommandContext();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF2D128);
    }
  }
}

uint64_t type metadata accessor for FormatJsonKeyValue()
{
  result = qword_1EDF10420;
  if (!qword_1EDF10420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D60337B4()
{
  result = type metadata accessor for FormatJson();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static FormatDateTime.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v3 >> 62 != 2)
      {
        goto LABEL_25;
      }

      if (*((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) != *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) || *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) != *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
      {
        v9 = sub_1D72646CC();
        sub_1D5F33D5C(v3);
        sub_1D5F33D5C(v2);
        goto LABEL_12;
      }

      sub_1D5F33D5C(v3);
      sub_1D5F33D5C(v2);
      sub_1D5F33D8C(v2);
      v16 = v3;
    }

    else if (v2 == 0xC000000000000000)
    {
      if (v3 != 0xC000000000000000)
      {
        goto LABEL_25;
      }

      sub_1D5F33D8C(0xC000000000000000);
      v16 = 0xC000000000000000;
    }

    else if (v2 == 0xC000000000000008)
    {
      if (v3 != 0xC000000000000008)
      {
        goto LABEL_25;
      }

      sub_1D5F33D8C(0xC000000000000008);
      v16 = 0xC000000000000008;
    }

    else
    {
      if (v3 != 0xC000000000000010)
      {
        goto LABEL_25;
      }

      sub_1D5F33D8C(0xC000000000000010);
      v16 = 0xC000000000000010;
    }

    sub_1D5F33D8C(v16);
LABEL_30:
    v9 = 1;
    return v9 & 1;
  }

  if (v4)
  {
    if (v3 >> 62 != 1)
    {
      goto LABEL_25;
    }

    v12 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v11 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v14 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v13 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5F33D5C(*a2);
    sub_1D5F33D5C(v2);
    if ((sub_1D633A310(v12, v14) & 1) == 0)
    {
LABEL_26:
      sub_1D5F33D8C(v2);
      sub_1D5F33D8C(v3);
      goto LABEL_27;
    }

    *&v21 = v11;
    *&v18 = v13;
    sub_1D5F33D5C(v11);
    sub_1D5F33D5C(v13);
    v15 = static FormatDateTime.== infix(_:_:)(&v21, &v18);
    sub_1D5F33D8C(v13);
    sub_1D5F33D8C(v11);
    sub_1D5F33D8C(v2);
    sub_1D5F33D8C(v3);
    if ((v15 & 1) == 0)
    {
LABEL_27:
      v9 = 0;
      return v9 & 1;
    }

    goto LABEL_30;
  }

  if (v3 >> 62)
  {
LABEL_25:
    sub_1D5F33D5C(*a2);
    sub_1D5F33D5C(v2);
    goto LABEL_26;
  }

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  v21 = *(v2 + 16);
  v22 = v6;
  v23 = v5;
  v18 = *(v3 + 16);
  v19 = v7;
  v20 = v8;
  sub_1D5F33D5C(v3);
  sub_1D5F33D5C(v2);
  v9 = _s8NewsFeed21FormatDateTimeBindingO2eeoiySbAC_ACtFZ_0(&v21, &v18);
LABEL_12:
  sub_1D5F33D8C(v2);
  sub_1D5F33D8C(v3);
  return v9 & 1;
}

unint64_t sub_1D6033ABC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v91 = a1;
  v94 = a2;
  sub_1D5B7B374(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v87 - v6;
  v8 = sub_1D725891C();
  v92 = *(v8 - 8);
  v93 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v87 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v87 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v87 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v87 - v26;
  sub_1D5B7B374(0, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v87 - v30;
  v32 = *v3;
  v33 = *v3 >> 62;
  if (v33 <= 1)
  {
    if (!v33)
    {
      v34 = *(v32 + 16);
      v35 = *(v32 + 24);
      v36 = *(v32 + 32);
      v37 = *(v32 + 40);
      v38 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v38 - 8) + 56))(v31, 1, 1, v38);
      sub_1D5D27950(v34, v35, v36, v37);
      v39 = v95;
      sub_1D6F44504(v91, v34, v35, v36, v37, v27);
      v40 = v94;
      if (v39)
      {
        sub_1D5B879C0(v31, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
        return sub_1D5D28C84(v34, v35, v36, v37);
      }

      else
      {
        sub_1D5D28C84(v34, v35, v36, v37);
        sub_1D5C8E028();
        v66 = v65;
        v67 = swift_allocBox();
        v69 = v68;
        (*(v92 + 32))(v68, v27, v93);
        *(v69 + *(v66 + 36)) = MEMORY[0x1E69E7CC0];
        *v40 = v67 | 0x2000000000000000;
        v40[1] = 0;
        v70 = type metadata accessor for FormatOptionsNodeStatementResult();
        sub_1D5EA3AFC(v31, v40 + *(v70 + 24));
        return (*(*(v70 - 8) + 56))(v40, 0, 1, v70);
      }
    }

    v58 = *((v32 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

    sub_1D5F33D5C(v58);
    sub_1D5F33D5C(v58);
    v59 = v95;
    sub_1D6F41FBC(v91, v58, v7);
    v95 = v59;
    if (v59)
    {

      sub_1D5F33D8C(v58);
      return sub_1D5F33D8C(v58);
    }

    sub_1D5F33D8C(v58);
    v72 = v92;
    v71 = v93;
    if ((*(v92 + 48))(v7, 1, v93) != 1)
    {
      v79 = *(v72 + 32);
      v89 = v72 + 32;
      v90 = v79;
      v79(v23, v7, v71);
      v91 = type metadata accessor for FormatOptionsNodeStatementResult();
      v80 = *(v91 + 24);
      v81 = type metadata accessor for FormatVersionRequirement(0);
      v82 = v94;
      (*(*(v81 - 8) + 56))(v94 + v80, 1, 1, v81);
      sub_1D5C8E028();
      v88 = v83;
      v84 = swift_allocBox();
      v86 = v85;
      (*(v72 + 16))(v19, v23, v71);

      sub_1D5F33D8C(v58);
      (*(v72 + 8))(v23, v71);
      v90(v86, v19, v71);
      *(v86 + *(v88 + 36)) = MEMORY[0x1E69E7CC0];
      *v82 = v84 | 0x2000000000000000;
      v82[1] = 1;
      return (*(*(v91 - 8) + 56))(v82, 0, 1, v91);
    }

    sub_1D5F33D8C(v58);
    sub_1D5B879C0(v7, &qword_1EDF45B00, MEMORY[0x1E6969530]);
LABEL_18:
    v73 = type metadata accessor for FormatOptionsNodeStatementResult();
    return (*(*(v73 - 8) + 56))(v94, 1, 1, v73);
  }

  if (v33 == 2)
  {
    v42 = qword_1EDF272B0;

    if (v42 != -1)
    {
      swift_once();
    }

    v43 = qword_1EDFFCAA0;
    v44 = sub_1D726203C();

    v45 = [v43 dateFromString_];

    if (v45)
    {
      sub_1D72588BC();

      v46 = *(v92 + 32);
      v47 = v11;
      v48 = v93;
      v46(v15, v47, v93);
      v49 = type metadata accessor for FormatOptionsNodeStatementResult();
      v50 = *(v49 + 24);
      v51 = type metadata accessor for FormatVersionRequirement(0);
      v52 = v94;
      (*(*(v51 - 8) + 56))(v94 + v50, 1, 1, v51);
      sub_1D5C8E028();
      v54 = v53;
      v55 = swift_allocBox();
      v57 = v56;
      v46(v56, v15, v48);
      *&v57[*(v54 + 36)] = MEMORY[0x1E69E7CC0];
      *v52 = v55 | 0x2000000000000000;
      v52[1] = 1;
      return (*(*(v49 - 8) + 56))(v52, 0, 1, v49);
    }

    goto LABEL_18;
  }

  v60 = type metadata accessor for FormatOptionsNodeStatementResult();
  v61 = *(v60 + 24);
  v62 = type metadata accessor for FormatVersionRequirement(0);
  v63 = v94;
  (*(*(v62 - 8) + 56))(v94 + v61, 1, 1, v62);
  v64 = (v92 + 32);
  if (v32 == 0xC000000000000000)
  {
    sub_1D72588CC();
  }

  else if (v32 == 0xC000000000000008)
  {
    sub_1D72587DC();
  }

  else
  {
    sub_1D72587BC();
  }

  sub_1D5C8E028();
  v75 = v74;
  v76 = swift_allocBox();
  v78 = v77;
  (*v64)(v77, v19, v93);
  *(v78 + *(v75 + 36)) = MEMORY[0x1E69E7CC0];
  *v63 = v76 | 0x2000000000000000;
  v63[1] = 1;
  return (*(*(v60 - 8) + 56))(v63, 0, 1, v60);
}

uint64_t _s8NewsFeed20FormatDateTimeOffsetV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (sub_1D633A310(*a1, *a2))
  {
    v6 = v3;
    v7 = v2;
    sub_1D5F33D5C(v2);
    sub_1D5F33D5C(v3);
    v4 = static FormatDateTime.== infix(_:_:)(&v7, &v6);
    sub_1D5F33D8C(v3);
    sub_1D5F33D8C(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

unint64_t sub_1D6034404(uint64_t a1)
{
  result = sub_1D603442C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D603442C()
{
  result = qword_1EC882A18;
  if (!qword_1EC882A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A18);
  }

  return result;
}

unint64_t sub_1D60344C0()
{
  result = qword_1EDF328F8;
  if (!qword_1EDF328F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF328F8);
  }

  return result;
}

unint64_t sub_1D6034514()
{
  result = qword_1EDF11BA8;
  if (!qword_1EDF11BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11BA8);
  }

  return result;
}

unint64_t sub_1D6034568()
{
  result = qword_1EC882A20;
  if (!qword_1EC882A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A20);
  }

  return result;
}

unint64_t sub_1D60345BC(uint64_t a1)
{
  result = sub_1D60345E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D60345E4()
{
  result = qword_1EC882A28;
  if (!qword_1EC882A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A28);
  }

  return result;
}

uint64_t sub_1D6034678(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D60346CC()
{
  result = qword_1EDF2B358;
  if (!qword_1EDF2B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B358);
  }

  return result;
}

unint64_t sub_1D6034720()
{
  result = qword_1EDF0F158;
  if (!qword_1EDF0F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F158);
  }

  return result;
}

unint64_t sub_1D6034774()
{
  result = qword_1EC882A30;
  if (!qword_1EC882A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A30);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed14FormatDateTimeO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D6034814(void *a1)
{
  sub_1D6034EE8(0, &qword_1EC882A68, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6034E3C();
  sub_1D7264B5C();
  v11[1] = v9;
  sub_1D6034F4C();
  sub_1D6034FC0();
  sub_1D6035010();

  sub_1D72647EC();
  (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D6034998@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  sub_1D6034D2C();
  v5 = v4;
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6034EE8(0, &qword_1EC882A50, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v19 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v18 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6034E3C();
  sub_1D7264B0C();
  if (!v2)
  {
    v14 = v19;
    v15 = v20;
    sub_1D6034E90();
    sub_1D726431C();
    v16 = sub_1D725A74C();
    (*(v15 + 8))(v8, v5);
    (*(v14 + 8))(v13, v10);
    *v18 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D6034BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74697465706D6F63 && a2 == 0xEB0000000073726FLL)
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

uint64_t sub_1D6034C84(uint64_t a1)
{
  v2 = sub_1D6034E3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6034CC0(uint64_t a1)
{
  v2 = sub_1D6034E3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D6034D2C()
{
  if (!qword_1EC882A38)
  {
    sub_1D6034D94();
    sub_1D6034DE8();
    v0 = sub_1D725AAEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC882A38);
    }
  }
}

unint64_t sub_1D6034D94()
{
  result = qword_1EC882A40;
  if (!qword_1EC882A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A40);
  }

  return result;
}

unint64_t sub_1D6034DE8()
{
  result = qword_1EC882A48;
  if (!qword_1EC882A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A48);
  }

  return result;
}

unint64_t sub_1D6034E3C()
{
  result = qword_1EC882A58;
  if (!qword_1EC882A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A58);
  }

  return result;
}

unint64_t sub_1D6034E90()
{
  result = qword_1EC882A60;
  if (!qword_1EC882A60)
  {
    sub_1D6034D2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A60);
  }

  return result;
}

void sub_1D6034EE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6034E3C();
    v7 = a3(a1, &type metadata for SportsStandingRecordEmbed.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6034F4C()
{
  result = qword_1EC882A70;
  if (!qword_1EC882A70)
  {
    sub_1D6034EE8(255, &qword_1EC882A68, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A70);
  }

  return result;
}

void sub_1D6034FC0()
{
  if (!qword_1EC882A78)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC882A78);
    }
  }
}

unint64_t sub_1D6035010()
{
  result = qword_1EC882A80;
  if (!qword_1EC882A80)
  {
    sub_1D6034FC0();
    sub_1D6034DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A80);
  }

  return result;
}

unint64_t sub_1D603509C()
{
  result = qword_1EC882A88;
  if (!qword_1EC882A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A88);
  }

  return result;
}

unint64_t sub_1D60350F4()
{
  result = qword_1EC882A90;
  if (!qword_1EC882A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A90);
  }

  return result;
}

unint64_t sub_1D603514C()
{
  result = qword_1EC882A98;
  if (!qword_1EC882A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A98);
  }

  return result;
}

uint64_t FollowingPosition.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t FollowingManager.toggleFollowing(for:autoEnableNotifications:)(void *a1, char a2)
{
  if ([*(v2 + 24) hasSubscriptionToTag_])
  {

    return FollowingManager.unfollow(tag:)(a1);
  }

  else
  {

    return FollowingManager.follow(tag:autoEnableNotifications:source:)(a1, a2 & 1);
  }
}

uint64_t FollowingManager.unfollow(tag:)(void *a1)
{
  [*(v1 + 24) removeSubscriptionToTag_];
  [a1 isSports];
  sub_1D5C3978C(0, &qword_1EC882AA0);
  swift_allocObject();
  sub_1D725BB1C();

  sub_1D5C3978C(0, &qword_1EC882AA0);
  swift_allocObject();
  return sub_1D725BB1C();
}

uint64_t FollowingManager.follow(tag:autoEnableNotifications:source:)(void *a1, char a2)
{
  v13[5] = *MEMORY[0x1E69E9840];
  v5 = v2[3];
  v13[0] = 0;
  [v5 addSubscriptionToTag:a1 notificationsEnabled:0 error:v13];
  if (!v13[0])
  {
    return sub_1D60355F4(a1, a2 & 1);
  }

  v6 = v13[0];
  if ([v6 code] == 1)
  {
    __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
    v7 = sub_1D725DA4C();
    if (v7)
    {
      v8 = v7;
      v9 = [v7 rootViewController];

      if (v9)
      {
        v10 = sub_1D7262FCC();

        v13[3] = &type metadata for AlertSubscriptionLimitReached;
        v13[4] = sub_1D6035850();
        sub_1D725F60C();
        swift_allocObject();
        sub_1D725F5CC();
        sub_1D725F5DC();
      }
    }
  }

  sub_1D5C3978C(0, &qword_1EC882AA0);
  swift_allocObject();
  v11 = sub_1D725BAFC();

  return v11;
}

uint64_t FollowingManager.toggleFollowing(for:autoEnableNotifications:source:)(void *a1, char a2)
{
  if ([*(v2 + 24) hasSubscriptionToTag_])
  {

    return FollowingManager.unfollow(tag:)(a1);
  }

  else
  {

    return FollowingManager.follow(tag:autoEnableNotifications:source:)(a1, a2 & 1);
  }
}

uint64_t sub_1D60355F4(void *a1, char a2)
{
  v4 = [a1 tagType];
  if (v4 == 1)
  {
    [a1 isSports];
  }

  else if (v4 == 2)
  {
    MEMORY[0x1EEE9AC00](2, v5);
    v6 = a2 & 1;
    sub_1D725BDCC();
    v7 = sub_1D725A95C();
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = v6;
    swift_unknownObjectRetain();
    sub_1D725BA9C();

    v9 = sub_1D725B92C();
    v10 = sub_1D725BACC();

    return v10;
  }

  sub_1D5C3978C(0, &qword_1EC882AA0);
  swift_allocObject();
  return sub_1D725BB1C();
}

unint64_t sub_1D6035850()
{
  result = qword_1EC882AA8;
  if (!qword_1EC882AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882AA8);
  }

  return result;
}

uint64_t sub_1D60358A4(void *a1, void *a2, char a3)
{
  if (a1[2])
  {
    __swift_project_boxed_opaque_existential_1(a1 + 4, a1[7]);
    swift_unknownObjectRetain();
    v5 = sub_1D725DA4C();
    if (v5 && (v6 = v5, v7 = [v5 rootViewController], v6, v7))
    {
      v8 = sub_1D7262FCC();
    }

    else
    {
      v8 = 0;
    }

    swift_getObjectType();
    v9 = sub_1D703B1F0(a2, v8, a3 & 1);
    swift_unknownObjectRelease();

    return v9;
  }

  else
  {
    sub_1D5C3978C(0, &qword_1EC8997B0);
    swift_allocObject();

    return sub_1D725BB1C();
  }
}

uint64_t sub_1D60359E0(_BYTE *a1, uint64_t a2, uint64_t a3, char a4)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a1[1];
  if (*a1 == 1)
  {
    v6 = *(a2 + 24);
    v10[0] = 0;
    if (![v6 setNotificationsEnabled:1 forTag:a3 error:v10])
    {
      v9 = v10[0];
      sub_1D725829C();

      return swift_willThrow();
    }

    v7 = v10[0];
  }

  if (a4)
  {
    LOBYTE(v10[0]) = 0;
  }

  else
  {
    LOBYTE(v10[0]) = 0x2040103u >> (8 * v5);
  }

  sub_1D5C3978C(0, &qword_1EC882AA0);
  swift_allocObject();
  return sub_1D725BB1C();
}

uint64_t sub_1D6035AF4()
{
  if (qword_1EDF1BB50 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D5C384A0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D7273AE0;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D5B7E2C0();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1D725C30C();
}

uint64_t FollowingManager.deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  return v0;
}

uint64_t FollowingManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t sub_1D6035C9C()
{
  result = qword_1EC882AB0;
  if (!qword_1EC882AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882AB0);
  }

  return result;
}

uint64_t sub_1D6035CF0(void *a1, char a2)
{
  if ([*(*v2 + 24) hasSubscriptionToTag_])
  {
    return FollowingManager.unfollow(tag:)(a1);
  }

  else
  {
    return FollowingManager.follow(tag:autoEnableNotifications:source:)(a1, a2 & 1);
  }
}

uint64_t sub_1D6035D54(void *a1, char a2)
{
  if ([*(*v2 + 24) hasSubscriptionToTag_])
  {
    return FollowingManager.unfollow(tag:)(a1);
  }

  else
  {
    return FollowingManager.follow(tag:autoEnableNotifications:source:)(a1, a2 & 1);
  }
}

NewsFeed::PuzzleStatisticType_optional __swiftcall PuzzleStatisticType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PuzzleStatisticType.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v6 = 0x53747365676E6F6CLL;
    v7 = 0x5373656C7A7A7570;
    v8 = 0x5374636566726570;
    if (v1 != 3)
    {
      v8 = 0x74615265766C6F73;
    }

    if (v1 != 2)
    {
      v7 = v8;
    }

    if (*v0)
    {
      v6 = 0x53746E6572727563;
    }

    if (*v0 <= 1u)
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
    v2 = 0xD000000000000015;
    if (v1 == 9)
    {
      v2 = 0x53646570756F7267;
    }

    if (v1 == 8)
    {
      v2 = 0xD00000000000001DLL;
    }

    v3 = 0xD00000000000001CLL;
    v4 = 0xD00000000000001CLL;
    if (v1 != 6)
    {
      v4 = 0xD00000000000001DLL;
    }

    if (v1 != 5)
    {
      v3 = v4;
    }

    if (*v0 <= 7u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D60360FC()
{
  sub_1D7264A0C();
  sub_1D694EF50();
  return sub_1D7264A5C();
}

uint64_t sub_1D603614C()
{
  sub_1D7264A0C();
  sub_1D694EF50();
  return sub_1D7264A5C();
}

unint64_t sub_1D603619C@<X0>(unint64_t *a1@<X8>)
{
  result = PuzzleStatisticType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D6036274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6043B20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D603629C(uint64_t a1)
{
  v2 = sub_1D5D124C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60362D8(uint64_t a1)
{
  v2 = sub_1D5D124C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PuzzleTypeStats.debugDescription.getter()
{
  v10 = *(v0 + 56);
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73C6490);
  sub_1D5B81B04();
  v1 = sub_1D7261D4C();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](0xD000000000000011, 0x80000001D73C64C0);
  v2 = sub_1D7261D4C();
  MEMORY[0x1DA6F9910](v2);

  MEMORY[0x1DA6F9910](0xD000000000000018, 0x80000001D73C64E0);
  v3 = sub_1D7261D4C();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](0xD000000000000019, 0x80000001D73C6500);
  v4 = sub_1D7261D4C();
  MEMORY[0x1DA6F9910](v4);

  MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73C6520);
  v5 = sub_1D7261D4C();
  MEMORY[0x1DA6F9910](v5);

  MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73C6540);
  v6 = sub_1D7261D4C();
  MEMORY[0x1DA6F9910](v6);

  MEMORY[0x1DA6F9910](0x736B616572747320, 0xEA0000000000203ALL);
  v7 = type metadata accessor for PuzzleStreak();
  v8 = MEMORY[0x1DA6F9D20](v10, v7);
  MEMORY[0x1DA6F9910](v8);

  return 0;
}

unint64_t sub_1D60365B0()
{
  result = qword_1EC882AC0;
  if (!qword_1EC882AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882AC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PuzzleStatisticType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PuzzleStatisticType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of PuzzleStatsServiceType.updateStats(verbose:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5B64680;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PuzzleStatsServiceType.puzzleStatistic(for:puzzleType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D5B64680;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PuzzleStatsServiceType.puzzleStatistics(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D6036AEC;

  return v9(a1, a2, a3);
}

uint64_t sub_1D6036AEC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of PuzzleStatsServiceType.hasSolvedPuzzles(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5E97EA8;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PuzzleStatsServiceType.resetAccumulatedStats()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64680;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PuzzleStatsServiceType.debugStats(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5B64684;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1D6036F6C(void *a1)
{
  v3 = v1;
  sub_1D5D12440(0, &qword_1EC882B60, sub_1D6044E4C, &type metadata for PuzzleTypeDebugStats.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6044E4C();
  sub_1D7264B5C();
  v17 = *v3;
  v16 = 0;
  sub_1D5D125C4();
  sub_1D5D1C3F4();
  sub_1D726443C();
  if (!v2)
  {
    v17 = v3[1];
    v16 = 1;
    sub_1D726443C();
    v17 = v3[2];
    v16 = 2;
    sub_1D5D127FC(0, &unk_1EDF055A0);
    sub_1D5D12850(&qword_1EDF05598);
    sub_1D726443C();
    v17 = v3[3];
    v16 = 3;
    sub_1D5D127FC(0, &qword_1EDF055F0);
    v13 = v12;
    v14 = sub_1D5D128D4(&qword_1EDF055E8);
    v15[2] = v13;
    sub_1D726443C();
    v15[1] = v14;
    v17 = v3[4];
    v16 = 4;
    sub_1D726443C();
    v17 = v3[5];
    v16 = 5;
    sub_1D726443C();
    v17 = v3[6];
    v16 = 6;
    sub_1D5B49DA8(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5B99580(&qword_1EDF04A90);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6037364()
{
  v1 = *v0;
  v2 = 0x4264657472617473;
  v3 = 0x5365676172657661;
  if (v1 != 5)
  {
    v3 = 0x736B6165727473;
  }

  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0x5374736568676968;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000015;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_1D6037474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D60442A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D603749C(uint64_t a1)
{
  v2 = sub_1D6044E4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60374D8(uint64_t a1)
{
  v2 = sub_1D6044E4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6037514@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6044504(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1D603757C()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D603768C, v1, 0);
}

uint64_t sub_1D603768C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D60376F4()
{
  v13 = v0;
  v1 = v0[51];
  (*(v0[44] + 8))(v0[47], v0[43]);
  v2 = v1;
  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EBC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1D726497C();
    v9 = sub_1D5BC5100(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D5B42000, v3, v4, "PuzzleStatsService: error updating stats: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA6FD500](v6, -1, -1);
    MEMORY[0x1DA6FD500](v5, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D60378D0()
{
  v13 = v0;
  v1 = v0[56];
  (*(v0[44] + 8))(v0[47], v0[43]);
  v2 = v1;
  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EBC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1D726497C();
    v9 = sub_1D5BC5100(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D5B42000, v3, v4, "PuzzleStatsService: error updating stats: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA6FD500](v6, -1, -1);
    MEMORY[0x1DA6FD500](v5, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D6037AAC()
{
  v41 = v0;
  v1 = *(v0 + 520);

  v2 = v1;
  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EBC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 520);
    v7 = *(v0 + 496);
    v6 = *(v0 + 504);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v40 = v9;
    *v8 = 136315394;
    v10 = sub_1D5BC5100(v7, v6, &v40);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v11 = sub_1D726497C();
    v13 = sub_1D5BC5100(v11, v12, &v40);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_1D5B42000, v3, v4, "PuzzleStatsService: error updating stats for %s: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v9, -1, -1);
    MEMORY[0x1DA6FD500](v8, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = *(v0 + 520);

    swift_unknownObjectRelease();
  }

  v15 = *(v0 + 480) + 1;
  if (v15 == *(v0 + 472))
  {

    v16 = *(v0 + 336);
    v17 = *(v0 + 272);
    v18 = *(v17 + 280);
    v19 = *(v17 + 288);
    __swift_project_boxed_opaque_existential_1((v17 + 256), v18);
    (*(v19 + 24))(v16, v18, v19);
    *(v17 + 312) = 0;
    v20 = sub_1D725C3FC();
    v21 = sub_1D7262EDC();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 376);
    v24 = *(v0 + 344);
    v25 = *(v0 + 352);
    v26 = *(v0 + 336);
    if (v22)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1D5B42000, v20, v21, "PuzzleStatsService: completed updating stats", v27, 2u);
      MEMORY[0x1DA6FD500](v27, -1, -1);
    }

    sub_1D5D12CE8(v26, type metadata accessor for PuzzleStatsState);
    (*(v25 + 8))(v23, v24);

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    *(v0 + 480) = v15;
    v30 = *(v0 + 440);
    if ((v30 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1DA6FB460]();
    }

    else
    {
      v31 = *(v30 + 8 * v15 + 32);
      swift_unknownObjectRetain();
    }

    *(v0 + 488) = v31;
    v32 = [v31 identifier];
    v33 = sub_1D726207C();
    v35 = v34;

    *(v0 + 496) = v33;
    *(v0 + 504) = v35;
    v36 = swift_task_alloc();
    *(v0 + 512) = v36;
    *v36 = v0;
    v36[1] = sub_1D5D1AFF4;
    v37 = *(v0 + 376);
    v38 = *(v0 + 296);
    v39 = *(v0 + 532);

    return sub_1D5D12E18(v38, v31, v37, v39);
  }
}

uint64_t sub_1D6037EF4()
{
  sub_1D726290C();
  *(v0 + 120) = sub_1D72628FC();
  v2 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D6037F88, v2, v1);
}

uint64_t sub_1D6037F88()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);

  v3 = sub_1D725881C();
  [v1 setPuzzleStatsStartDate_];

  return MEMORY[0x1EEE6DFA0](sub_1D6038024, v2, 0);
}

uint64_t sub_1D6038024()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v5[35];
  v7 = v5[36];
  __swift_project_boxed_opaque_existential_1(v5 + 32, v6);
  (*(v7 + 16))(v6, v7);
  v1(v2, v3);
  (*(v4 + 32))(v0[2], v0[11], v0[5]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D6038134()
{
  v1 = v0[59];
  v2 = v0[55];
  v3 = v0[53];
  v4 = v0[49];
  sub_1D5D12CE8(v0[45], sub_1D5B5B2A0);
  v1(v3, v4);
  v1(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D6038290(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 40) = type metadata accessor for PuzzleStatisticCategory(0);
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  sub_1D60441D0(0);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 120) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1D603838C, v3, 0);
}

uint64_t sub_1D603838C()
{
  v63 = v0;
  v1 = *(v0 + 120);
  if (v1 <= 4)
  {
    if (*(v0 + 120) > 1u)
    {
      if (v1 == 2)
      {
        v25 = sub_1D603E964(*(v0 + 24));
        v14 = *(v0 + 64);
        v16 = *(v0 + 16);
        v15 = *(v0 + 24);
        *v14 = v25;
        type metadata accessor for PuzzleStatisticValue(0);
      }

      else
      {
        if (v1 == 3)
        {
          v13 = sub_1D603EABC(*(v0 + 24));
          v14 = *(v0 + 56);
          v16 = *(v0 + 16);
          v15 = *(v0 + 24);
          *v14 = v13;
        }

        else
        {
          v46 = sub_1D603EC14(*(v0 + 24));
          v14 = *(v0 + 48);
          v16 = *(v0 + 16);
          v15 = *(v0 + 24);
          *v14 = v46;
          *(v14 + 8) = v47 & 1;
        }

        type metadata accessor for PuzzleStatisticValue(0);
      }

      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      *v16 = v15;
      v48 = type metadata accessor for PuzzleStatistic();
      sub_1D5D12DB0(v14, v16 + *(v48 + 20), type metadata accessor for PuzzleStatisticCategory);
      goto LABEL_32;
    }

    if (!*(v0 + 120))
    {
      sub_1D603EE1C(*(v0 + 24), *(v0 + 80));
      v21 = *(v0 + 80);
      v23 = *(v0 + 16);
      v22 = *(v0 + 24);
      v24 = type metadata accessor for PuzzleStatistic();
      sub_1D5D12DB0(v21, v23 + *(v24 + 20), sub_1D60441D0);
      type metadata accessor for PuzzleStatisticValue(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      *v23 = v22;
LABEL_32:
      swift_unknownObjectRetain();

      v55 = *(v0 + 8);

      return v55();
    }

    v49 = swift_task_alloc();
    *(v0 + 88) = v49;
    *v49 = v0;
    v49[1] = sub_1D6038A98;
    v50 = *(v0 + 72);
    v51 = *(v0 + 24);

    return sub_1D603F108(v50, v51);
  }

  else
  {
    if (*(v0 + 120) <= 7u)
    {
      if (v1 == 5)
      {
        sub_1D603FFA0(*(v0 + 24), &v57);
        v2 = *(v0 + 16);
        v56 = *(v0 + 24);
        v26 = v57;
        v27 = v58;
        v28 = v59;
        v29 = v60;
        v30 = v61;
        v31 = v62;
        v32 = v2 + *(type metadata accessor for PuzzleStatistic() + 20);
        *v32 = v26;
        v32[8] = v27;
        type metadata accessor for PuzzleStatisticValue(0);
        swift_storeEnumTagMultiPayload();
        v33 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
        v34 = &v32[*(v33 + 20)];
        *v34 = v28;
        v34[8] = v29;
        swift_storeEnumTagMultiPayload();
        v35 = &v32[*(v33 + 24)];
        *v35 = v30;
        v35[8] = v31;
      }

      else
      {
        if (v1 == 6)
        {
          sub_1D6040100(*(v0 + 24), &v57);
        }

        else
        {
          sub_1D6040260(*(v0 + 24), &v57);
        }

        v2 = *(v0 + 16);
        v56 = *(v0 + 24);
        v3 = v57;
        v4 = v58;
        v5 = v59;
        v6 = v60;
        v7 = v61;
        v8 = v62;
        v9 = v2 + *(type metadata accessor for PuzzleStatistic() + 20);
        *v9 = v3;
        v9[8] = v4;
        type metadata accessor for PuzzleStatisticValue(0);
        swift_storeEnumTagMultiPayload();
        v10 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
        v11 = &v9[*(v10 + 20)];
        *v11 = v5;
        v11[8] = v6;
        swift_storeEnumTagMultiPayload();
        v12 = &v9[*(v10 + 24)];
        *v12 = v7;
        v12[8] = v8;
      }

      goto LABEL_31;
    }

    if (v1 == 8)
    {
      sub_1D60403C0(*(v0 + 24), &v57);
      v2 = *(v0 + 16);
      v56 = *(v0 + 24);
      v36 = v57;
      v37 = v58;
      v38 = v59;
      v39 = v60;
      v40 = v61;
      v41 = v62;
      v42 = v2 + *(type metadata accessor for PuzzleStatistic() + 20);
      *v42 = v36;
      v42[8] = v37;
      type metadata accessor for PuzzleStatisticValue(0);
      swift_storeEnumTagMultiPayload();
      v43 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
      v44 = &v42[*(v43 + 20)];
      *v44 = v38;
      v44[8] = v39;
      swift_storeEnumTagMultiPayload();
      v45 = &v42[*(v43 + 24)];
      *v45 = v40;
      v45[8] = v41;
LABEL_31:
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      *v2 = v56;
      goto LABEL_32;
    }

    if (v1 == 9)
    {
      v17 = swift_task_alloc();
      *(v0 + 112) = v17;
      *v17 = v0;
      v17[1] = sub_1D6038EFC;
      v18 = *(v0 + 24);
      v19 = *(v0 + 16);

      return sub_1D603AC80(v19, v18);
    }

    else
    {
      v52 = swift_task_alloc();
      *(v0 + 104) = v52;
      *v52 = v0;
      v52[1] = sub_1D6038D6C;
      v53 = *(v0 + 24);
      v54 = *(v0 + 16);

      return sub_1D603908C(v54, v53);
    }
  }
}

uint64_t sub_1D6038A98()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1D6038CD0;
  }

  else
  {
    v4 = sub_1D6038BC4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D6038BC4()
{
  v1 = v0[9];
  v3 = v0[2];
  v2 = v0[3];
  v4 = type metadata accessor for PuzzleStatistic();
  sub_1D5D12DB0(v1, v3 + *(v4 + 20), sub_1D60441D0);
  type metadata accessor for PuzzleStatisticValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v3 = v2;
  swift_unknownObjectRetain();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D6038CD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6038D6C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D6038EFC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D603908C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1D6044204(0);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  sub_1D6044238(0);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for PuzzleLeaderboardResult(0);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6039228, v2, 0);
}

uint64_t sub_1D6039228()
{
  v1 = *(v0 + 32);
  *(v0 + 128) = *(v1 + 240);
  v2 = *(v1 + 248);
  *(v0 + 136) = v2;
  *(v0 + 144) = swift_getObjectType();
  if ((*(v2 + 24))())
  {
    v3 = [*(v0 + 24) identifier];
    v4 = sub_1D726207C();
    v6 = v5;

    *(v0 + 152) = v4;
    *(v0 + 160) = v6;
    ObjectType = swift_getObjectType();
    v8 = swift_task_alloc();
    *(v0 + 168) = v8;
    *v8 = v0;
    v8[1] = sub_1D6039434;

    return FCNewsAppConfigurationManager.fetchConfiguration(cachedOnly:)(0, ObjectType);
  }

  else
  {
    v11 = *(v0 + 56);
    v10 = *(v0 + 64);
    v12 = *(v0 + 16);
    v13 = type metadata accessor for PuzzleStatistic();
    (*(v10 + 56))(v12 + *(v13 + 20), 1, 1, v11);
    type metadata accessor for PuzzleStatisticCategory(0);
    swift_storeEnumTagMultiPayload();
    **(v0 + 16) = *(v0 + 24);
    swift_unknownObjectRetain();

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1D6039434(uint64_t a1)
{
  v4 = *v2;
  v4[22] = v1;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = v4[4];
    v4[23] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D60395E0, v7, 0);
  }
}

void sub_1D60395E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v31 = v10;
  v12 = *(v10 + 152);
  v11 = *(v10 + 160);
  v13 = [*(v10 + 184) puzzlesConfig];
  swift_unknownObjectRelease();
  v14._countAndFlagsBits = v12;
  v14._object = v11;
  v15 = FCPuzzlesConfiguration.leaderboardDifficultyLevels(for:)(v14);

  if (v15)
  {
    v16 = *(v10 + 176);
    v30 = v15;

    sub_1D6041FC0(&v30);
    if (v16)
    {

      return;
    }

    v17 = v30;
    *(v10 + 192) = v30;
    v18 = *(v17 + 2);
    *(v10 + 200) = v18;
    if (v18)
    {
      *(v10 + 208) = 0;
      if (!*(v17 + 2))
      {
        __break(1u);
        return;
      }

      v19 = *(v17 + 4);
      *(v10 + 216) = v19;
      *(v10 + 273) = 1;
      v20 = swift_task_alloc();
      *(v10 + 224) = v20;
      *v20 = v10;
      v20[1] = sub_1D6039800;
      v21 = *(v10 + 152);
      v22 = *(v10 + 160);
      v23 = *(v10 + 136);
      v24 = *(v10 + 88);
      v33 = *(v10 + 144);
      v34 = v23;
      v25 = (v10 + 273);
      v26 = v19;
      v27 = 0;
      goto LABEL_11;
    }
  }

  *(v10 + 272) = 1;
  v28 = swift_task_alloc();
  *(v10 + 240) = v28;
  *v28 = v10;
  v28[1] = sub_1D603A08C;
  v21 = *(v10 + 152);
  v22 = *(v10 + 160);
  v29 = *(v10 + 136);
  v24 = *(v10 + 80);
  v33 = *(v10 + 144);
  v34 = v29;
  v25 = (v10 + 272);
  v26 = 0;
  v27 = 1;
LABEL_11:

  PuzzleGameCenterServiceType.leaderboard(for:difficulty:scope:range:)(v24, v21, v22, v26, v27, v25, 1, 10, a9, a10);
}

uint64_t sub_1D6039800()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 32);

    v4 = sub_1D603A648;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 32);
    v4 = sub_1D6039934;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

void sub_1D6039934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10 + 96);
  v12 = *(v10 + 88);
  if ((*(*(v10 + 104) + 48))(v12, 1, v11) == 1)
  {
    v13 = sub_1D6044238;
    v14 = v12;
    goto LABEL_8;
  }

  v15 = *(v10 + 120);
  sub_1D5D12DB0(v12, v15, type metadata accessor for PuzzleLeaderboardResult);
  if (*(v15 + *(v11 + 24)) < 2)
  {
    v14 = *(v10 + 120);
    v13 = type metadata accessor for PuzzleLeaderboardResult;
LABEL_8:
    sub_1D5D12CE8(v14, v13);
    v21 = *(v10 + 208) + 1;
    if (v21 == *(v10 + 200))
    {
      v22 = *(v10 + 56);
      v23 = *(v10 + 64);
      v24 = *(v10 + 16);

      v25 = type metadata accessor for PuzzleStatistic();
      (*(v23 + 56))(v24 + *(v25 + 20), 1, 1, v22);
      type metadata accessor for PuzzleStatisticCategory(0);
      swift_storeEnumTagMultiPayload();
      **(v10 + 16) = *(v10 + 24);
      swift_unknownObjectRetain();

      v26 = *(v10 + 8);

      v26();
    }

    else
    {
      *(v10 + 208) = v21;
      v27 = *(v10 + 192);
      if (v21 >= *(v27 + 16))
      {
        __break(1u);
      }

      else
      {
        v28 = *(v27 + 8 * v21 + 32);
        *(v10 + 216) = v28;
        *(v10 + 273) = 1;
        v29 = swift_task_alloc();
        *(v10 + 224) = v29;
        *v29 = v10;
        v29[1] = sub_1D6039800;
        v30 = *(v10 + 152);
        v31 = *(v10 + 160);
        v32 = *(v10 + 88);

        PuzzleGameCenterServiceType.leaderboard(for:difficulty:scope:range:)(v32, v30, v31, v28, 0, (v10 + 273), 1, 10, a9, a10);
      }
    }

    return;
  }

  v16 = swift_task_alloc();
  *(v10 + 232) = v16;
  *v16 = v10;
  v16[1] = sub_1D6039C5C;
  v17 = *(v10 + 216);
  v18 = *(v10 + 120);
  v19 = *(v10 + 48);
  v20 = *(v10 + 24);

  sub_1D6040520(v19, v20, v17, 0, v18);
}

uint64_t sub_1D6039C5C()
{
  v2 = *v1;

  v3 = *(v2 + 32);
  if (v0)
  {

    v4 = sub_1D603A88C;
  }

  else
  {
    v4 = sub_1D6039D94;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1D6039D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10 + 56);
  v12 = *(v10 + 64);
  v13 = *(v10 + 48);
  sub_1D5D12CE8(*(v10 + 120), type metadata accessor for PuzzleLeaderboardResult);
  if ((*(v12 + 48))(v13, 1, v11) != 1)
  {
    v20 = *(v10 + 64);
    v19 = *(v10 + 72);
    v22 = *(v10 + 48);
    v21 = *(v10 + 56);
    v23 = *(v10 + 16);

    sub_1D5D12DB0(v22, v19, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    v24 = v23 + *(type metadata accessor for PuzzleStatistic() + 20);
    sub_1D5D12DB0(v19, v24, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    (*(v20 + 56))(v24, 0, 1, v21);
    goto LABEL_5;
  }

  sub_1D5D12CE8(*(v10 + 48), sub_1D6044204);
  v14 = *(v10 + 208) + 1;
  if (v14 == *(v10 + 200))
  {
    v15 = *(v10 + 56);
    v16 = *(v10 + 64);
    v17 = *(v10 + 16);

    v18 = type metadata accessor for PuzzleStatistic();
    (*(v16 + 56))(v17 + *(v18 + 20), 1, 1, v15);
LABEL_5:
    type metadata accessor for PuzzleStatisticCategory(0);
    swift_storeEnumTagMultiPayload();
    **(v10 + 16) = *(v10 + 24);
    swift_unknownObjectRetain();

    v25 = *(v10 + 8);

    v25();
    return;
  }

  *(v10 + 208) = v14;
  v26 = *(v10 + 192);
  if (v14 >= *(v26 + 16))
  {
    __break(1u);
  }

  else
  {
    v27 = *(v26 + 8 * v14 + 32);
    *(v10 + 216) = v27;
    *(v10 + 273) = 1;
    v28 = swift_task_alloc();
    *(v10 + 224) = v28;
    *v28 = v10;
    v28[1] = sub_1D6039800;
    v29 = *(v10 + 152);
    v30 = *(v10 + 160);
    v31 = *(v10 + 88);

    PuzzleGameCenterServiceType.leaderboard(for:difficulty:scope:range:)(v31, v29, v30, v27, 0, (v10 + 273), 1, 10, a9, a10);
  }
}

uint64_t sub_1D603A08C()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);

    v4 = sub_1D603AAF4;
  }

  else
  {
    v3 = *(v2 + 32);

    v4 = sub_1D603A1B8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D603A1B8()
{
  v1 = v0[12];
  v2 = v0[10];
  if ((*(v0[13] + 48))(v2, 1, v1) == 1)
  {
    v3 = sub_1D6044238;
    v4 = v2;
LABEL_8:
    sub_1D5D12CE8(v4, v3);
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[2];
    v14 = type metadata accessor for PuzzleStatistic();
    (*(v11 + 56))(v13 + *(v14 + 20), 1, 1, v12);
    type metadata accessor for PuzzleStatisticCategory(0);
    swift_storeEnumTagMultiPayload();
    *v0[2] = v0[3];
    swift_unknownObjectRetain();

    v15 = v0[1];

    return v15();
  }

  v5 = v0[14];
  sub_1D5D12DB0(v2, v5, type metadata accessor for PuzzleLeaderboardResult);
  if (*(v5 + *(v1 + 24)) < 2)
  {
    v4 = v0[14];
    v3 = type metadata accessor for PuzzleLeaderboardResult;
    goto LABEL_8;
  }

  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = sub_1D603A3EC;
  v7 = v0[14];
  v8 = v0[5];
  v9 = v0[3];

  return sub_1D6040520(v8, v9, 0, 1, v7);
}

uint64_t sub_1D603A3EC()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1D603ABAC;
  }

  else
  {
    v4 = sub_1D603A518;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D603A518()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_1D5D12CE8(v0[14], type metadata accessor for PuzzleLeaderboardResult);
  v3 = type metadata accessor for PuzzleStatistic();
  sub_1D5D12DB0(v1, v2 + *(v3 + 20), sub_1D6044204);
  type metadata accessor for PuzzleStatisticCategory(0);
  swift_storeEnumTagMultiPayload();
  *v0[2] = v0[3];
  swift_unknownObjectRetain();

  v4 = v0[1];

  return v4();
}

void sub_1D603A648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  (*(*(v10 + 104) + 56))(*(v10 + 88), 1, 1, *(v10 + 96));
  sub_1D5D12CE8(*(v10 + 88), sub_1D6044238);
  v11 = *(v10 + 208) + 1;
  if (v11 == *(v10 + 200))
  {
    v12 = *(v10 + 56);
    v13 = *(v10 + 64);
    v14 = *(v10 + 16);

    v15 = type metadata accessor for PuzzleStatistic();
    (*(v13 + 56))(v14 + *(v15 + 20), 1, 1, v12);
    type metadata accessor for PuzzleStatisticCategory(0);
    swift_storeEnumTagMultiPayload();
    **(v10 + 16) = *(v10 + 24);
    swift_unknownObjectRetain();

    v16 = *(v10 + 8);

    v16();
  }

  else
  {
    *(v10 + 208) = v11;
    v17 = *(v10 + 192);
    if (v11 >= *(v17 + 16))
    {
      __break(1u);
    }

    else
    {
      v18 = *(v17 + 8 * v11 + 32);
      *(v10 + 216) = v18;
      *(v10 + 273) = 1;
      v19 = swift_task_alloc();
      *(v10 + 224) = v19;
      *v19 = v10;
      v19[1] = sub_1D6039800;
      v20 = *(v10 + 152);
      v21 = *(v10 + 160);
      v22 = *(v10 + 88);

      PuzzleGameCenterServiceType.leaderboard(for:difficulty:scope:range:)(v22, v20, v21, v18, 0, (v10 + 273), 1, 10, a9, a10);
    }
  }
}

void sub_1D603A88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10 + 56);
  v12 = *(v10 + 64);
  v13 = *(v10 + 48);
  sub_1D5D12CE8(*(v10 + 120), type metadata accessor for PuzzleLeaderboardResult);
  (*(v12 + 56))(v13, 1, 1, v11);
  sub_1D5D12CE8(*(v10 + 48), sub_1D6044204);
  v14 = *(v10 + 208) + 1;
  if (v14 == *(v10 + 200))
  {
    v15 = *(v10 + 56);
    v16 = *(v10 + 64);
    v17 = *(v10 + 16);

    v18 = type metadata accessor for PuzzleStatistic();
    (*(v16 + 56))(v17 + *(v18 + 20), 1, 1, v15);
    type metadata accessor for PuzzleStatisticCategory(0);
    swift_storeEnumTagMultiPayload();
    **(v10 + 16) = *(v10 + 24);
    swift_unknownObjectRetain();

    v19 = *(v10 + 8);

    v19();
  }

  else
  {
    *(v10 + 208) = v14;
    v20 = *(v10 + 192);
    if (v14 >= *(v20 + 16))
    {
      __break(1u);
    }

    else
    {
      v21 = *(v20 + 8 * v14 + 32);
      *(v10 + 216) = v21;
      *(v10 + 273) = 1;
      v22 = swift_task_alloc();
      *(v10 + 224) = v22;
      *v22 = v10;
      v22[1] = sub_1D6039800;
      v23 = *(v10 + 152);
      v24 = *(v10 + 160);
      v25 = *(v10 + 88);

      PuzzleGameCenterServiceType.leaderboard(for:difficulty:scope:range:)(v25, v23, v24, v21, 0, (v10 + 273), 1, 10, a9, a10);
    }
  }
}

uint64_t sub_1D603AAF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D603ABAC()
{
  sub_1D5D12CE8(*(v0 + 112), type metadata accessor for PuzzleLeaderboardResult);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D603AC80(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  sub_1D60441D0(0);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for PuzzleStatisticsGroupedValue(0);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D603AD50, v2, 0);
}

uint64_t sub_1D603AD50()
{
  *(v0 + 88) = sub_1D603E964(*(v0 + 40));
  *(v0 + 96) = sub_1D603EABC(*(v0 + 40));
  v1 = sub_1D603EC14(*(v0 + 40));
  *(v0 + 24) = v2;
  *(v0 + 16) = v1;
  sub_1D603EE1C(*(v0 + 40), *(v0 + 64));
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_1D603AE8C;
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);

  return sub_1D603F108(v4, v5);
}

uint64_t sub_1D603AE8C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    sub_1D5D12CE8(*(v2 + 64), sub_1D60441D0);
    v4 = sub_1D603B324;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 48);
    v4 = sub_1D603AFC8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1D603AFC8()
{
  v75 = v0;
  v1 = *(v0 + 112);
  sub_1D603FFA0(*(v0 + 40), &v51);
  if (v1)
  {
    v18 = *(v0 + 64);
    sub_1D5D12CE8(*(v0 + 56), sub_1D60441D0);
    sub_1D5D12CE8(v18, sub_1D60441D0);

    v19 = *(v0 + 8);
  }

  else
  {
    v2 = v51;
    v3 = v52;
    v4 = v53;
    v5 = v54;
    v6 = v55;
    v7 = v56;
    sub_1D6040100(*(v0 + 40), &v57);
    v46 = v3;
    v47 = v2;
    v48 = v7;
    v49 = v6;
    v50 = v57;
    v8 = v58;
    v9 = v59;
    v10 = v60;
    v11 = v61;
    v12 = v62;
    sub_1D6040260(*(v0 + 40), &v63);
    v41 = v12;
    v42 = v11;
    v43 = v10;
    v44 = v9;
    v45 = v8;
    v13 = v63;
    v14 = v64;
    v15 = v65;
    v16 = v66;
    v17 = v67;
    v40 = v68;
    sub_1D60403C0(*(v0 + 40), &v69);
    v21 = *(v0 + 24);
    v22 = *(v0 + 16);
    v23 = *(v0 + 72);
    v24 = *(v0 + 80);
    v39 = *(v0 + 56);
    v37 = *(v0 + 64);
    v38 = *(v0 + 40);
    v36 = *(v0 + 32);
    v35 = v69;
    v34 = v70;
    v33 = v71;
    v32 = v72;
    v31 = v73;
    v30 = v74;
    *v24 = *(v0 + 88);
    *(v24 + 16) = v22;
    *(v24 + 24) = v21 & 1;
    sub_1D5D12DB0(v37, v24 + v23[7], sub_1D60441D0);
    sub_1D5D12DB0(v39, v24 + v23[8], sub_1D60441D0);
    v25 = v24 + v23[9];
    *v25 = v47;
    *(v25 + 8) = v46;
    *(v25 + 16) = v4;
    *(v25 + 24) = v5;
    *(v25 + 32) = v49;
    *(v25 + 40) = v48;
    v26 = v24 + v23[10];
    *v26 = v50;
    *(v26 + 8) = v45;
    *(v26 + 16) = v44;
    *(v26 + 24) = v43;
    *(v26 + 32) = v42;
    *(v26 + 40) = v41;
    v27 = v24 + v23[11];
    *v27 = v13;
    *(v27 + 8) = v14;
    *(v27 + 16) = v15;
    *(v27 + 24) = v16;
    *(v27 + 32) = v17;
    *(v27 + 40) = v40;
    v28 = v24 + v23[12];
    *v28 = v35;
    *(v28 + 8) = v34;
    *(v28 + 16) = v33;
    *(v28 + 24) = v32;
    *(v28 + 32) = v31;
    *(v28 + 40) = v30;
    v29 = type metadata accessor for PuzzleStatistic();
    sub_1D5D12DB0(v24, v36 + *(v29 + 20), type metadata accessor for PuzzleStatisticsGroupedValue);
    type metadata accessor for PuzzleStatisticCategory(0);
    swift_storeEnumTagMultiPayload();
    *v36 = v38;
    swift_unknownObjectRetain();

    v19 = *(v0 + 8);
  }

  return v19();
}

uint64_t sub_1D603B324()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D603B3A4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for PuzzleStatistic();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for PuzzleStatisticCategory(0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  sub_1D60441D0(0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  sub_1D5D54424(0);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D603B5C4, v1, 0);
}

uint64_t sub_1D603B5C4()
{
  v54 = v0;
  sub_1D603EE1C(*(v0 + 16), *(v0 + 96));
  v1 = *(v0 + 208);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  sub_1D5D12DB0(*(v0 + 96), v1 + *(v2 + 20), sub_1D60441D0);
  type metadata accessor for PuzzleStatisticValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v1 = v4;
  v5 = *(v3 + 56);
  v5(v1, 0, 1, v2);
  swift_unknownObjectRetain();
  *(v0 + 216) = v5;
  v6 = sub_1D603E964(*(v0 + 16));
  v7 = *(v0 + 200);
  v8 = *(v0 + 80);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);
  *v8 = v6;
  type metadata accessor for PuzzleStatisticValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v7 = v10;
  sub_1D5D12DB0(v8, v7 + *(v9 + 20), type metadata accessor for PuzzleStatisticCategory);
  v5(v7, 0, 1, v9);
  swift_unknownObjectRetain();
  v11 = sub_1D603EABC(*(v0 + 16));
  v12 = *(v0 + 192);
  v13 = *(v0 + 72);
  v14 = *(v0 + 32);
  v15 = *(v0 + 16);
  *v13 = v11;
  type metadata accessor for PuzzleStatisticValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v12 = v15;
  sub_1D5D12DB0(v13, v12 + *(v14 + 20), type metadata accessor for PuzzleStatisticCategory);
  v5(v12, 0, 1, v14);
  swift_unknownObjectRetain();
  v16 = sub_1D603EC14(*(v0 + 16));
  v17 = *(v0 + 184);
  v18 = *(v0 + 64);
  v19 = *(v0 + 32);
  v20 = *(v0 + 16);
  *v18 = v16;
  *(v18 + 8) = v21 & 1;
  type metadata accessor for PuzzleStatisticValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v17 = v20;
  sub_1D5D12DB0(v18, v17 + *(v19 + 20), type metadata accessor for PuzzleStatisticCategory);
  v5(v17, 0, 1, v19);
  swift_unknownObjectRetain();
  sub_1D603FFA0(*(v0 + 16), &v48);
  v22 = *(v0 + 176);
  v23 = *(v0 + 32);
  v24 = *(v0 + 16);
  v25 = v49;
  v26 = v50;
  LOBYTE(v19) = v51;
  v46 = v52;
  v44 = v53;
  v27 = v22 + *(v23 + 20);
  *v27 = v48;
  v27[8] = v25;
  type metadata accessor for PuzzleStatisticValue(0);
  swift_storeEnumTagMultiPayload();
  v28 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  v29 = &v27[*(v28 + 20)];
  *v29 = v26;
  v29[8] = v19;
  swift_storeEnumTagMultiPayload();
  v30 = &v27[*(v28 + 24)];
  *v30 = v46;
  v30[8] = v44;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v22 = v24;
  v5(v22, 0, 1, v23);
  swift_unknownObjectRetain();
  sub_1D6040100(*(v0 + 16), &v48);
  v31 = *(v0 + 168);
  v32 = *(v0 + 32);
  v33 = *(v0 + 16);
  v34 = v49;
  v35 = v50;
  LOBYTE(v19) = v51;
  v47 = v52;
  v45 = v53;
  v36 = v31 + *(v32 + 20);
  *v36 = v48;
  v36[8] = v34;
  type metadata accessor for PuzzleStatisticValue(0);
  swift_storeEnumTagMultiPayload();
  v37 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  v38 = &v36[*(v37 + 20)];
  *v38 = v35;
  v38[8] = v19;
  swift_storeEnumTagMultiPayload();
  v39 = &v36[*(v37 + 24)];
  *v39 = v47;
  v39[8] = v45;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v31 = v33;
  v5(v31, 0, 1, v32);
  swift_unknownObjectRetain();
  v40 = swift_task_alloc();
  *(v0 + 224) = v40;
  *v40 = v0;
  v40[1] = sub_1D603BC20;
  v41 = *(v0 + 88);
  v42 = *(v0 + 16);

  return sub_1D603F108(v41, v42);
}

uint64_t sub_1D603BC20()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {

    v4 = sub_1D603C0E8;
  }

  else
  {
    v4 = sub_1D603BD58;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D603BD58()
{
  v43 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 160);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  sub_1D5D12DB0(*(v0 + 88), v2 + *(v3 + 20), sub_1D60441D0);
  type metadata accessor for PuzzleStatisticValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v2 = v4;
  swift_unknownObjectRetain();
  v1(v2, 0, 1, v3);
  v5 = *(v0 + 232);
  sub_1D6040260(*(v0 + 16), &v37);
  v6 = *(v0 + 216);
  v7 = *(v0 + 152);
  if (v5)
  {
    v8 = *(v0 + 32);

    v6(v7, 1, 1, v8);
  }

  else
  {
    v9 = *(v0 + 32);
    v35 = *(v0 + 16);
    v10 = v38;
    v11 = v39;
    v12 = v40;
    v13 = v41;
    v33 = v42;
    v14 = v7 + *(v9 + 20);
    *v14 = v37;
    v14[8] = v10;
    swift_storeEnumTagMultiPayload();
    v15 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
    v16 = &v14[*(v15 + 20)];
    *v16 = v11;
    v16[8] = v12;
    swift_storeEnumTagMultiPayload();
    v17 = &v14[*(v15 + 24)];
    *v17 = v13;
    v17[8] = v33;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    *v7 = v35;
    v6(v7, 0, 1, v9);
    swift_unknownObjectRetain();
  }

  sub_1D60403C0(*(v0 + 16), &v37);
  v18 = *(v0 + 216);
  v19 = *(v0 + 144);
  v20 = *(v0 + 32);
  v36 = *(v0 + 16);
  v21 = v38;
  v22 = v39;
  v23 = v40;
  v24 = v41;
  v34 = v42;
  v25 = v19 + *(v20 + 20);
  *v25 = v37;
  v25[8] = v21;
  swift_storeEnumTagMultiPayload();
  v26 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  v27 = &v25[*(v26 + 20)];
  *v27 = v22;
  v27[8] = v23;
  swift_storeEnumTagMultiPayload();
  v28 = &v25[*(v26 + 24)];
  *v28 = v24;
  v28[8] = v34;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v19 = v36;
  v18(v19, 0, 1, v20);
  swift_unknownObjectRetain();
  v29 = swift_task_alloc();
  *(v0 + 240) = v29;
  *v29 = v0;
  v29[1] = sub_1D603C42C;
  v30 = *(v0 + 136);
  v31 = *(v0 + 16);

  return sub_1D603908C(v30, v31);
}

uint64_t sub_1D603C0E8()
{
  v37 = v0;
  (*(v0 + 216))(*(v0 + 160), 1, 1, *(v0 + 32));
  sub_1D6040260(*(v0 + 16), &v31);
  v1 = *(v0 + 216);
  v2 = *(v0 + 152);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = v32;
  v6 = v33;
  v7 = v34;
  v29 = v35;
  v27 = v36;
  v8 = v2 + *(v3 + 20);
  *v8 = v31;
  v8[8] = v5;
  type metadata accessor for PuzzleStatisticValue(0);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  v10 = &v8[*(v9 + 20)];
  *v10 = v6;
  v10[8] = v7;
  swift_storeEnumTagMultiPayload();
  v11 = &v8[*(v9 + 24)];
  *v11 = v29;
  v11[8] = v27;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v2 = v4;
  v1(v2, 0, 1, v3);
  swift_unknownObjectRetain();
  sub_1D60403C0(*(v0 + 16), &v31);
  v12 = *(v0 + 216);
  v13 = *(v0 + 144);
  v14 = *(v0 + 32);
  v15 = *(v0 + 16);
  v16 = v32;
  v17 = v33;
  v18 = v34;
  v30 = v35;
  v28 = v36;
  v19 = v13 + *(v14 + 20);
  *v19 = v31;
  v19[8] = v16;
  type metadata accessor for PuzzleStatisticValue(0);
  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  v21 = &v19[*(v20 + 20)];
  *v21 = v17;
  v21[8] = v18;
  swift_storeEnumTagMultiPayload();
  v22 = &v19[*(v20 + 24)];
  *v22 = v30;
  v22[8] = v28;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v13 = v15;
  v12(v13, 0, 1, v14);
  swift_unknownObjectRetain();
  v23 = swift_task_alloc();
  *(v0 + 240) = v23;
  *v23 = v0;
  v23[1] = sub_1D603C42C;
  v24 = *(v0 + 136);
  v25 = *(v0 + 16);

  return sub_1D603908C(v24, v25);
}

uint64_t sub_1D603C42C()
{
  v2 = *v1;

  v3 = *(v2 + 24);
  if (v0)
  {

    v4 = sub_1D603CA68;
  }

  else
  {
    v4 = sub_1D603C564;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D603C564()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);
  v31 = *(v0 + 192);
  v32 = *(v0 + 184);
  v33 = *(v0 + 176);
  v3 = *(v0 + 160);
  v34 = *(v0 + 168);
  v35 = *(v0 + 152);
  v36 = *(v0 + 144);
  v4 = *(v0 + 136);
  v5 = *(v0 + 40);
  v6 = *(v0 + 112);
  (*(v0 + 216))(v4, 0, 1, *(v0 + 32));
  sub_1D5BC3F04(0, &qword_1EDF02110, sub_1D5D54424, MEMORY[0x1E69E6F90]);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = 10;
  v10 = swift_allocObject() + v8;
  sub_1D5D12D48(v4, v10, sub_1D5D54424);
  sub_1D5D12D48(v3, v10 + v7, sub_1D5D54424);
  sub_1D5D12D48(v1, v10 + 2 * v7, sub_1D5D54424);
  sub_1D5D12D48(v2, v10 + 3 * v7, sub_1D5D54424);
  sub_1D5D12D48(v31, v10 + 4 * v7, sub_1D5D54424);
  sub_1D5D12D48(v32, v10 + 5 * v7, sub_1D5D54424);
  sub_1D5D12D48(v33, v10 + 6 * v7, sub_1D5D54424);
  sub_1D5D12D48(v34, v10 + 7 * v7, sub_1D5D54424);
  sub_1D5D12D48(v35, v10 + 8 * v7, sub_1D5D54424);
  sub_1D5D12D48(v36, v10 + 9 * v7, sub_1D5D54424);
  v11 = MEMORY[0x1E69E7CC0];
  do
  {
    v13 = *(v0 + 120);
    v12 = *(v0 + 128);
    v14 = *(v0 + 32);
    sub_1D5D12D48(v10, v12, sub_1D5D54424);
    sub_1D5D12DB0(v12, v13, sub_1D5D54424);
    v15 = (*(v5 + 48))(v13, 1, v14);
    v16 = *(v0 + 120);
    if (v15 == 1)
    {
      sub_1D5D12CE8(v16, sub_1D5D54424);
    }

    else
    {
      sub_1D5D12DB0(v16, *(v0 + 48), type metadata accessor for PuzzleStatistic);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1D698C9D8(0, v11[2] + 1, 1, v11);
      }

      v18 = v11[2];
      v17 = v11[3];
      if (v18 >= v17 >> 1)
      {
        v11 = sub_1D698C9D8(v17 > 1, v18 + 1, 1, v11);
      }

      v19 = *(v0 + 48);
      v11[2] = v18 + 1;
      sub_1D5D12DB0(v19, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, type metadata accessor for PuzzleStatistic);
    }

    v10 += v7;
    --v9;
  }

  while (v9);
  v20 = *(v0 + 200);
  v21 = *(v0 + 192);
  v22 = *(v0 + 176);
  v28 = *(v0 + 168);
  v23 = *(v0 + 152);
  v24 = *(v0 + 160);
  v29 = *(v0 + 184);
  v25 = *(v0 + 144);
  v30 = *(v0 + 208);
  v37 = *(v0 + 136);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D5D12CE8(v37, sub_1D5D54424);
  sub_1D5D12CE8(v25, sub_1D5D54424);
  sub_1D5D12CE8(v23, sub_1D5D54424);
  sub_1D5D12CE8(v24, sub_1D5D54424);
  sub_1D5D12CE8(v28, sub_1D5D54424);
  sub_1D5D12CE8(v22, sub_1D5D54424);
  sub_1D5D12CE8(v29, sub_1D5D54424);
  sub_1D5D12CE8(v21, sub_1D5D54424);
  sub_1D5D12CE8(v20, sub_1D5D54424);
  sub_1D5D12CE8(v30, sub_1D5D54424);

  v26 = *(v0 + 8);

  return v26(v11);
}

uint64_t sub_1D603CA68()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);
  v31 = *(v0 + 192);
  v32 = *(v0 + 184);
  v33 = *(v0 + 176);
  v3 = *(v0 + 160);
  v34 = *(v0 + 168);
  v35 = *(v0 + 152);
  v36 = *(v0 + 144);
  v4 = *(v0 + 136);
  v5 = *(v0 + 40);
  v6 = *(v0 + 112);
  (*(v0 + 216))(v4, 1, 1, *(v0 + 32));
  sub_1D5BC3F04(0, &qword_1EDF02110, sub_1D5D54424, MEMORY[0x1E69E6F90]);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = 10;
  v10 = swift_allocObject() + v8;
  sub_1D5D12D48(v4, v10, sub_1D5D54424);
  sub_1D5D12D48(v3, v10 + v7, sub_1D5D54424);
  sub_1D5D12D48(v1, v10 + 2 * v7, sub_1D5D54424);
  sub_1D5D12D48(v2, v10 + 3 * v7, sub_1D5D54424);
  sub_1D5D12D48(v31, v10 + 4 * v7, sub_1D5D54424);
  sub_1D5D12D48(v32, v10 + 5 * v7, sub_1D5D54424);
  sub_1D5D12D48(v33, v10 + 6 * v7, sub_1D5D54424);
  sub_1D5D12D48(v34, v10 + 7 * v7, sub_1D5D54424);
  sub_1D5D12D48(v35, v10 + 8 * v7, sub_1D5D54424);
  sub_1D5D12D48(v36, v10 + 9 * v7, sub_1D5D54424);
  v11 = MEMORY[0x1E69E7CC0];
  do
  {
    v13 = *(v0 + 120);
    v12 = *(v0 + 128);
    v14 = *(v0 + 32);
    sub_1D5D12D48(v10, v12, sub_1D5D54424);
    sub_1D5D12DB0(v12, v13, sub_1D5D54424);
    v15 = (*(v5 + 48))(v13, 1, v14);
    v16 = *(v0 + 120);
    if (v15 == 1)
    {
      sub_1D5D12CE8(v16, sub_1D5D54424);
    }

    else
    {
      sub_1D5D12DB0(v16, *(v0 + 48), type metadata accessor for PuzzleStatistic);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1D698C9D8(0, v11[2] + 1, 1, v11);
      }

      v18 = v11[2];
      v17 = v11[3];
      if (v18 >= v17 >> 1)
      {
        v11 = sub_1D698C9D8(v17 > 1, v18 + 1, 1, v11);
      }

      v19 = *(v0 + 48);
      v11[2] = v18 + 1;
      sub_1D5D12DB0(v19, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, type metadata accessor for PuzzleStatistic);
    }

    v10 += v7;
    --v9;
  }

  while (v9);
  v20 = *(v0 + 200);
  v21 = *(v0 + 192);
  v22 = *(v0 + 176);
  v28 = *(v0 + 168);
  v23 = *(v0 + 152);
  v24 = *(v0 + 160);
  v29 = *(v0 + 184);
  v25 = *(v0 + 144);
  v30 = *(v0 + 208);
  v37 = *(v0 + 136);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D5D12CE8(v37, sub_1D5D54424);
  sub_1D5D12CE8(v25, sub_1D5D54424);
  sub_1D5D12CE8(v23, sub_1D5D54424);
  sub_1D5D12CE8(v24, sub_1D5D54424);
  sub_1D5D12CE8(v28, sub_1D5D54424);
  sub_1D5D12CE8(v22, sub_1D5D54424);
  sub_1D5D12CE8(v29, sub_1D5D54424);
  sub_1D5D12CE8(v21, sub_1D5D54424);
  sub_1D5D12CE8(v20, sub_1D5D54424);
  sub_1D5D12CE8(v30, sub_1D5D54424);

  v26 = *(v0 + 8);

  return v26(v11);
}

uint64_t sub_1D603CF6C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  v2[4] = swift_task_alloc();
  v2[5] = type metadata accessor for PuzzleStatisticValue(0);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for PuzzleStatisticCategory(0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for PuzzleStatistic();
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D603D098, v1, 0);
}

uint64_t sub_1D603D098()
{
  v1 = sub_1D603E964(*(v0 + 16));
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = *(v0 + 16);
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v2 = v6;
  v7 = *(v4 + 20);
  sub_1D5D12DB0(v3, v2 + v7, type metadata accessor for PuzzleStatisticCategory);
  sub_1D5D12D48(v2 + v7, v5, type metadata accessor for PuzzleStatisticCategory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = type metadata accessor for PuzzleStatisticValue;
  v10 = type metadata accessor for PuzzleStatisticValue;
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v9 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
      v10 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
      v16 = 32;
    }

    else
    {
      v16 = 48;
    }

    v17 = *(v0 + v16);
    sub_1D5D12DB0(*(v0 + 64), v17, v10);
    swift_unknownObjectRetain();
    v13 = PuzzleStatisticValue.primaryValue.getter();
    sub_1D5D12CE8(v17, v9);
    result = sub_1D5D12CE8(*(v0 + 88), type metadata accessor for PuzzleStatistic);
    if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v13 > -9.22337204e18)
      {
        if (v13 < 9.22337204e18)
        {
          goto LABEL_3;
        }

        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v11 = *(v0 + 88);
  v12 = *(v0 + 64);
  swift_unknownObjectRetain();
  sub_1D5D12CE8(v11, type metadata accessor for PuzzleStatistic);
  sub_1D5D12CE8(v12, type metadata accessor for PuzzleStatisticCategory);
  v13 = -1.0;
LABEL_3:

  v14 = *(v0 + 8);

  return v14(v13 > 0);
}

uint64_t sub_1D603D394()
{
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v1 = sub_1D725C42C();
  __swift_project_value_buffer(v1, qword_1EDFFCFA8);
  v2 = sub_1D725C3FC();
  v3 = sub_1D7262EDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D5B42000, v2, v3, "PuzzleStatsService: Will discard accumulated stats in next calculation", v4, 2u);
    MEMORY[0x1DA6FD500](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  *(v5 + 312) = 1;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D603D4B4(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  sub_1D5BC4580(0);
  v3[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D603D548, v2, 0);
}

unint64_t sub_1D603D548()
{
  v50 = v0;
  v1 = *(v0 + 208);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC8];
LABEL_19:
    v41 = *(v0 + 200);
    sub_1D5D127FC(0, &qword_1EC882B48);
    v41[3] = v42;
    v41[4] = sub_1D60440DC();
    *v41 = v4;

    v43 = *(v0 + 8);
LABEL_23:

    return v43();
  }

  v45 = *(v0 + 224);
  v46 = *(v0 + 216);
  v3 = (v1 + 40);
  v4 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v47 = v3;
    v48 = v2;
    v6 = *(v0 + 224);
    v8 = *(v3 - 1);
    v7 = *v3;
    v9 = v46[35];
    v10 = v46[36];
    __swift_project_boxed_opaque_existential_1(v46 + 32, v9);
    v11 = *(v10 + 8);

    v11(v9, v10);
    v12 = type metadata accessor for PuzzleStatsState();
    v13 = (*(*(v12 - 8) + 48))(v6, 1, v12);
    v14 = *(v0 + 224);
    if (v13 == 1)
    {

      sub_1D5D12CE8(v14, sub_1D5BC4580);
      goto LABEL_22;
    }

    v15 = *(v45 + 16);

    sub_1D5D12CE8(v14, type metadata accessor for PuzzleStatsState);
    if (!*(v15 + 16) || (v16 = sub_1D5B69D90(v8, v7), (v17 & 1) == 0))
    {

LABEL_22:
      sub_1D5E9E58C();
      swift_allocError();
      *v44 = 0;
      v44[1] = 0;
      swift_willThrow();

      v43 = *(v0 + 8);
      goto LABEL_23;
    }

    v18 = (*(v15 + 56) + (v16 << 6));
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[3];
    *(v0 + 48) = v18[2];
    *(v0 + 64) = v21;
    *(v0 + 16) = v19;
    *(v0 + 32) = v20;
    sub_1D5D12A1C(v0 + 16, v0 + 80);

    v22 = *(v0 + 32);
    v49[0] = *(v0 + 16);
    v49[1] = v22;
    v23 = *(v0 + 64);
    v49[2] = *(v0 + 48);
    v49[3] = v23;
    sub_1D6043DD0(v49, (v0 + 144));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v49[0] = v4;
    result = sub_1D5B69D90(v8, v7);
    v27 = v4[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      break;
    }

    v31 = v26;
    if (v4[3] < v30)
    {
      sub_1D6D6BE98(v30, isUniquelyReferenced_nonNull_native);
      result = sub_1D5B69D90(v8, v7);
      if ((v31 & 1) != (v32 & 1))
      {

        return sub_1D726493C();
      }

LABEL_13:
      if (v31)
      {
        goto LABEL_3;
      }

      goto LABEL_14;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v40 = result;
    sub_1D6D813D4();
    result = v40;
    if (v31)
    {
LABEL_3:
      v5 = result;

      v4 = *&v49[0];
      sub_1D60440A4(v0 + 144, *(*&v49[0] + 56) + 56 * v5);
      goto LABEL_4;
    }

LABEL_14:
    v4 = *&v49[0];
    *(*&v49[0] + 8 * (result >> 6) + 64) |= 1 << result;
    v33 = (v4[6] + 16 * result);
    *v33 = v8;
    v33[1] = v7;
    v34 = v4[7] + 56 * result;
    v35 = *(v0 + 192);
    v37 = *(v0 + 160);
    v36 = *(v0 + 176);
    *v34 = *(v0 + 144);
    *(v34 + 16) = v37;
    *(v34 + 32) = v36;
    *(v34 + 48) = v35;
    v38 = v4[2];
    v29 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v29)
    {
      goto LABEL_30;
    }

    v4[2] = v39;
LABEL_4:
    v3 = v47 + 2;
    v2 = v48 - 1;
    if (v48 == 1)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}