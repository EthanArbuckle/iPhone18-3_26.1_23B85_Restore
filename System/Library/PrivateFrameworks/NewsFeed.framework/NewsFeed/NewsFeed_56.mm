uint64_t sub_1D60531A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D60531E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_1D5D559EC(a3, a4);
  }

  return result;
}

uint64_t sub_1D6053258(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    sub_1D60531A0(a3, a4);
  }

  return result;
}

uint64_t FormatOptionExpression.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatOptionExpression.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v29 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v15 = *(v1 + 16);
  if (v15 < 0)
  {
    v24 = a1[3];
    v36 = a1[4];
    v29[1] = __swift_project_boxed_opaque_existential_1(a1, v24);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v25 = sub_1D725BD1C();
    v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
    (*(*(v25 - 8) + 16))(v7, v26, v25);
    type metadata accessor for FormatVersionRequirement.Value(0);
    v27 = swift_storeEnumTagMultiPayload();
    MEMORY[0x1EEE9AC00](v27, v28);
    v29[-4] = v12;
    v29[-3] = v13;
    LOBYTE(v29[-2]) = v14;
    BYTE1(v29[-2]) = BYTE1(v14) & 1;
    sub_1D5D2BEC4(v7, sub_1D60564D0, &v29[-6], v24, v36);
    result = sub_1D5D2CEC8(v7, type metadata accessor for FormatVersionRequirement);
    if (!v2)
    {
      *&v30 = v12;
      *(&v30 + 1) = v13;
      LOWORD(v31) = v14 & 0x1FF;
      return FormatOptionExpression.Exists.encode(to:)(a1);
    }
  }

  else
  {
    v16 = v1[3];
    *&v33 = *v1;
    *(&v33 + 1) = v13;
    *&v34 = v14;
    *(&v34 + 1) = v16;
    v35 = v15 & 0xFF01;
    v17 = a1[3];
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v17);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v19 = sub_1D725BD1C();
    v20 = __swift_project_value_buffer(v19, qword_1EDFFCD30);
    (*(*(v19 - 8) + 16))(v11, v20, v19);
    type metadata accessor for FormatVersionRequirement.Value(0);
    v21 = swift_storeEnumTagMultiPayload();
    MEMORY[0x1EEE9AC00](v21, v22);
    v29[-2] = &v33;
    sub_1D5D2BEC4(v11, sub_1D60564F0, &v29[-4], v17, v18);
    result = sub_1D5D2CEC8(v11, type metadata accessor for FormatVersionRequirement);
    if (!v2)
    {
      v30 = v33;
      v31 = v34;
      v32 = v35;
      return FormatOptionExpression.Compare.encode(to:)(a1);
    }
  }

  return result;
}

unint64_t sub_1D6053694(void *a1)
{
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](*a1, a1[1]);
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0xD00000000000001FLL;
}

uint64_t FormatOptionExpression.Compare.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v74 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v66 - v8;
  sub_1D60564F8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 8);
  v17 = *(v1 + 16);
  v75 = *(v1 + 24);
  v76 = v17;
  v86 = *(v1 + 32);
  v73 = *(v1 + 33);
  v18 = a1[3];
  v19 = a1[4];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = sub_1D5C57C00();
  sub_1D5D2EE70(&type metadata for FormatOptionExpression.Compare, &type metadata for FormatOptionExpression.Compare.CodingKeys, v21, v18, &type metadata for FormatOptionExpression.Compare, &type metadata for FormatOptionExpression.Compare.CodingKeys, &type metadata for FormatVersions.JazzkonC, v19, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v71 = v23;
  v72 = v22;
  v69 = v24 + 16;
  v70 = v25;
  (v25)(v9);
  v68 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v83 = v15;
  v84 = v16;
  v87 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v29 = swift_allocObject();
  v80 = &v66;
  *(v29 + 16) = 0;
  *(v29 + 24) = v27;
  *(v29 + 32) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v82 = v9;
  *(&v66 - 4) = sub_1D5B4AA6C;
  *(&v66 - 3) = 0;
  v64 = sub_1D60577EC;
  v65 = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v67 = v27;
  *(v32 + 24) = v27;
  *(v32 + 32) = v28;
  sub_1D5C57B9C(0, &qword_1EDF02640, MEMORY[0x1E69E6F58]);
  v34 = v33;
  v35 = sub_1D6056578();
  swift_retain_n();
  v78 = v35;
  v79 = v34;
  v36 = sub_1D72647CC();
  v37 = v14;
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = 0;
  v39 = &v37[*(v11 + 36)];
  v40 = __swift_project_boxed_opaque_existential_1(v39, *(v39 + 3));
  MEMORY[0x1EEE9AC00](v40, v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  *(&v66 - 4) = sub_1D60565EC;
  *(&v66 - 3) = (&v66 - 6);
  v44 = v81;
  v45 = v82;
  v64 = sub_1D60577EC;
  v65 = v32;
  sub_1D5D2BC70(v82, sub_1D60566B0, v46, sub_1D60565EC, (&v66 - 6));
  if (v44)
  {
    sub_1D5D2CEC8(v45, type metadata accessor for FormatVersionRequirement);

    v47 = v37;
  }

  else
  {
    v81 = v28;

    sub_1D72647EC();
    v47 = v37;
    sub_1D5D2CEC8(v45, type metadata accessor for FormatVersionRequirement);

    v83 = v76;
    v84 = v75;
    v85 = v86;
    sub_1D5C58190(v76, v75, v86);
    FormatOptionCompareValue.encode(to:)(v77);
    sub_1D5C581A4(v83, v84, v85);
    v48 = v74;
    v70(v74, v71, v72);
    swift_storeEnumTagMultiPayload();
    v49 = v73;
    LOBYTE(v83) = v73;
    if (FormatOperator.rawValue.getter() == 0x6C61757165 && v50 == 0xE500000000000000)
    {
    }

    else
    {
      v82 = 0;
      v51 = sub_1D72646CC();

      if ((v51 & 1) == 0)
      {
        v53 = swift_allocObject();
        *(v53 + 16) = 2;
        *(v53 + 24) = v67;
        *(v53 + 32) = v81;

        v54 = sub_1D72647CC();
        v55 = swift_allocObject();
        *(v55 + 16) = v54;
        *(v55 + 24) = 2;
        v56 = __swift_project_boxed_opaque_existential_1(v39, *(v39 + 3));
        MEMORY[0x1EEE9AC00](v56, v57);
        MEMORY[0x1EEE9AC00](v58, v59);
        *(&v66 - 4) = sub_1D5B4AA6C;
        *(&v66 - 3) = 0;
        v64 = sub_1D60566B8;
        v65 = v53;
        v60 = v82;
        v62 = sub_1D5D2F7A4(v48, sub_1D60566B0, v61, sub_1D60565EC, (&v66 - 6));
        if (v60)
        {
          sub_1D5D2CEC8(v48, type metadata accessor for FormatVersionRequirement);

          return sub_1D5D2CEC8(v47, sub_1D60564F8);
        }

        v63 = v62;

        if (v63)
        {
          LOBYTE(v83) = 2;
          v87 = v49;
          sub_1D60566E4();
          sub_1D72647EC();
        }
      }
    }

    sub_1D5D2CEC8(v48, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CEC8(v47, sub_1D60564F8);
}

unint64_t sub_1D6053EE4(uint64_t a1, uint64_t a2)
{
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](a1, a2);
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

uint64_t sub_1D6053F74@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v75 = a2;
  sub_1D5D27D64(0, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v69 = &v67 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v67 - v13;
  v15 = type metadata accessor for FormatOption();
  v73 = *(v15 - 8);
  v74 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v68 = (&v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v19);
  v70 = (&v67 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v67 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v67 = (&v67 - v27);
  v28 = *v2;
  v29 = *(v2 + 8);
  v30 = *(v2 + 16);
  v71 = *(v2 + 24);
  v72 = v30;
  v31 = *(v2 + 32);
  v32 = a1;
  sub_1D725A7EC();

  v78 = MEMORY[0x1E69E7CD0];
  LOBYTE(a1) = sub_1D6F62DA8(v28, v29, &v78);

  if (a1)
  {
    v33 = *MEMORY[0x1E69D6B30];
    v34 = sub_1D725BC7C();
    return (*(*(v34 - 8) + 104))(v75, v33, v34);
  }

  if (v31 < 0)
  {
    sub_1D6057620();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v39 = v72;
    *(inited + 32) = v72;
    v40 = v31;
    v41 = sub_1D5E26E28(inited);
    swift_setDeallocating();

    FormatOptionCollection.subscript.getter(v28, v29, v7);
    sub_1D60576D0(v28, v29, v39, v71, v40);
    v43 = v73;
    v42 = v74;
    v44 = *(v73 + 48);
    if (v44(v7, 1, v74) == 1)
    {

      sub_1D5F873CC(v7);
      v45 = 1;
      v46 = v69;
    }

    else
    {
      v51 = v68;
      sub_1D5D247E0(v7, v68);
      v78 = v51[2];

      FormatOptionValue.type.getter(&v77);
      if ((sub_1D6183C84(v77, v41) & 1) == 0)
      {
        type metadata accessor for FormatDerivedDataError();
        sub_1D6057738(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
        swift_allocError();
        v59 = v58;
        v61 = *v51;
        v60 = v51[1];
        v78 = v51[2];

        FormatOptionValue.type.getter(&v77);
        v62 = v77;
        *v59 = v61;
        *(v59 + 8) = v60;
        *(v59 + 16) = v62;
        *(v59 + 24) = v41;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        return sub_1D5D2CEC8(v51, type metadata accessor for FormatOption);
      }

      swift_bridgeObjectRelease_n();
      v46 = v69;
      sub_1D5D247E0(v51, v69);
      v45 = 0;
    }

    (*(v43 + 56))(v46, v45, 1, v42);
    v44(v46, 1, v42);
    sub_1D725BC1C();
    return sub_1D5F873CC(v46);
  }

  if (qword_1EDF1AD88 != -1)
  {
    swift_once();
  }

  v36 = qword_1EDF1AD90;
  v37 = v32;

  FormatOptionCollection.subscript.getter(v28, v29, v14);
  if ((*(v73 + 48))(v14, 1, v74) == 1)
  {
    sub_1D5F873CC(v14);
    if (*(v32 + 48))
    {

      return sub_1D725BC1C();
    }

    else
    {
      type metadata accessor for FormatLayoutError();
      sub_1D6057738(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      *v52 = v28;
      v52[1] = v29;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  else
  {
    v47 = v70;
    sub_1D5D247E0(v14, v70);
    v78 = v47[2];

    FormatOptionValue.type.getter(&v77);
    if (sub_1D6183C84(v77, v36))
    {

      sub_1D5D247E0(v47, v24);
      v48 = v24;
      v49 = v67;
      sub_1D5D247E0(v48, v67);
      v50 = v76;
      sub_1D6B755A8(v37, &v78);
      if (!v50)
      {
        v63 = v78;
        v65 = v71;
        v64 = v72;
        sub_1D5C58190(v72, v71, v31 & 1);
        sub_1D6054840(v37, v64, v65, v31 & 1, &OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options, sub_1D6B755A8, &v78);
        sub_1D5C581A4(v64, v65, v31 & 1);
        v66 = v78;
        v78 = v63;
        v77 = v66;
        sub_1D6BE54C8(&v77, *(v37 + 16), *v49, v49[1]);
        sub_1D6054BB8(v63, v66, BYTE1(v31));
        sub_1D725BC1C();
      }

      return sub_1D5D2CEC8(v49, type metadata accessor for FormatOption);
    }

    else
    {
      type metadata accessor for FormatDerivedDataError();
      sub_1D6057738(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
      swift_allocError();
      v54 = v53;
      v56 = *v47;
      v55 = v47[1];
      v78 = v47[2];

      FormatOptionValue.type.getter(&v77);
      v57 = v77;
      *v54 = v56;
      *(v54 + 8) = v55;
      *(v54 + 16) = v57;
      *(v54 + 24) = v36;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return sub_1D5D2CEC8(v47, type metadata accessor for FormatOption);
    }
  }
}

uint64_t sub_1D6054840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t, __n128)@<X5>, void *a7@<X8>)
{
  v40 = a5;
  v41 = a3;
  v9 = v7;
  v42 = a1;
  sub_1D5D27D64(0, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v37 - v15;
  v17 = type metadata accessor for FormatOption();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v23 = MEMORY[0x1EEE9AC00](v20, v21);
  v25 = (&v37 - v24);
  if ((a4 & 1) == 0)
  {
    return a6(v42, a2, v23);
  }

  v38 = v22;
  v39 = a6;
  v26 = v41;

  FormatOptionCollection.subscript.getter(a2, v26, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1D5F873CC(v16);
    type metadata accessor for FormatLayoutError();
    sub_1D6057738(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v27 = a2;
    v27[1] = v26;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    sub_1D5C581A4(a2, v26, 1);
    sub_1D5D247E0(v16, v25);
    v30 = *v25;
    v29 = v25[1];
    v31 = v25[2];

    v39(&v43, v42, v31);
    if (v9)
    {

      return sub_1D5D2CEC8(v25, type metadata accessor for FormatOption);
    }

    else
    {
      v32 = v43;
      v33 = v38;
      *v38 = v30;
      *(v33 + 1) = v29;
      *(v33 + 2) = v32;
      *(v33 + 3) = 1;
      v34 = *(v17 + 28);
      v35 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v35 - 8) + 56))(&v33[v34], 1, 1, v35);
      sub_1D5D2CEC8(v25, type metadata accessor for FormatOption);
      v36 = *(v33 + 2);

      result = sub_1D5D2CEC8(v33, type metadata accessor for FormatOption);
      *a7 = v36;
    }
  }

  return result;
}

uint64_t sub_1D6054BB8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v11 = a1;
  v10 = a2;
  if (a3 > 5u)
  {
    if (a3 <= 8u)
    {
      if (a3 != 6)
      {
        if (a3 != 7)
        {
          goto LABEL_5;
        }

        goto LABEL_9;
      }

LABEL_16:
      v3 = static FormatOptionValue.== infix(_:_:)(&v11, &v10);
      return v3 & 1;
    }

    if (a3 != 9)
    {
      if (a3 != 10)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

LABEL_17:
    v8 = a2;
    v9 = a1;
    v5 = &v8;
    v6 = &v9;
    goto LABEL_18;
  }

  if (a3 > 2u)
  {
    if (a3 != 3)
    {
      if (a3 != 4)
      {
LABEL_12:
        v8 = a2;
        v9 = a1;
        v5 = &v9;
        v6 = &v8;
LABEL_18:
        v4 = static FormatOptionValue.< infix(_:_:)(v5, v6);
        goto LABEL_19;
      }

LABEL_15:
      v8 = a2;
      v9 = a1;
      v3 = static FormatOptionValue.< infix(_:_:)(&v8, &v9);
      return v3 & 1;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if (a3 == 1)
  {
LABEL_9:
    v4 = static FormatOptionValue.== infix(_:_:)(&v11, &v10);
LABEL_19:
    v3 = v4 ^ 1;
    return v3 & 1;
  }

LABEL_5:
  v3 = static FormatOptionValue.< infix(_:_:)(&v11, &v10);
  return v3 & 1;
}

BOOL sub_1D6054CA0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 5u)
  {
    if (a3 <= 8u)
    {
      if (a3 != 6)
      {
        if (a3 != 7)
        {
          goto LABEL_5;
        }

LABEL_9:
        sub_1D725891C();
        sub_1D6057738(&qword_1EDF45B10, MEMORY[0x1E6969530]);
        return (sub_1D7261FBC() & 1) == 0;
      }

LABEL_16:
      sub_1D725891C();
      sub_1D6057738(&qword_1EDF45B10, MEMORY[0x1E6969530]);
      v3 = sub_1D7261FBC();
      return v3 & 1;
    }

    if (a3 != 9)
    {
      if (a3 != 10)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

LABEL_17:
    sub_1D725891C();
    sub_1D6057738(&qword_1EDF3C3C0, MEMORY[0x1E6969530]);
    v3 = sub_1D7261F7C();
    return v3 & 1;
  }

  if (a3 > 2u)
  {
    if (a3 != 3)
    {
      if (a3 != 4)
      {
LABEL_12:
        sub_1D725891C();
        sub_1D6057738(&qword_1EDF3C3C0, MEMORY[0x1E6969530]);
        v3 = sub_1D7261F6C();
        return v3 & 1;
      }

LABEL_15:
      sub_1D725891C();
      sub_1D6057738(&qword_1EDF3C3C0, MEMORY[0x1E6969530]);
      v3 = sub_1D7261F4C();
      return v3 & 1;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if (a3 == 1)
  {
    goto LABEL_9;
  }

LABEL_5:
  sub_1D725891C();
  sub_1D6057738(&qword_1EDF3C3C0, MEMORY[0x1E6969530]);
  v3 = sub_1D7261F5C();
  return v3 & 1;
}

BOOL FormatOperator.evaluate<A>(lhs:rhs:)()
{
  v1 = *v0;
  if (v1 > 5)
  {
    if (*v0 <= 8u)
    {
      if (v1 != 6)
      {
        if (v1 != 7)
        {
          goto LABEL_5;
        }

        return (sub_1D7261FBC() & 1) == 0;
      }

LABEL_16:
      v2 = sub_1D7261FBC();
      return v2 & 1;
    }

    if (v1 != 9)
    {
      if (v1 != 10)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

LABEL_17:
    v2 = sub_1D7261F7C();
    return v2 & 1;
  }

  if (*v0 > 2u)
  {
    if (v1 != 3)
    {
      if (v1 != 4)
      {
LABEL_12:
        v2 = sub_1D7261F6C();
        return v2 & 1;
      }

LABEL_15:
      v2 = sub_1D7261F4C();
      return v2 & 1;
    }

    goto LABEL_17;
  }

  if (!*v0)
  {
    goto LABEL_16;
  }

  if (v1 == 1)
  {
    return (sub_1D7261FBC() & 1) == 0;
  }

LABEL_5:
  v2 = sub_1D7261F5C();
  return v2 & 1;
}

uint64_t sub_1D6055060(uint64_t a1)
{
  v39 = a1;
  sub_1D5D27D64(0, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v37 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v37 - v12;
  v14 = type metadata accessor for FormatOption();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v37 - v20;
  v22 = *v1;
  v23 = *(v1 + 8);
  v24 = *(v1 + 16);
  v37 = *(v1 + 24);
  v38 = *(v1 + 32);
  if (v38 < 0)
  {
    v27 = v19;

    v28 = (v15 + 48);
    if ((v24 & 0x100) != 0)
    {
      FormatOptionCollection.subscript.getter(v22, v23, v5);
      sub_1D60576D0(v22, v23, v24, v37, v38);
      v26 = (*v28)(v5, 1, v14) == 1;
      sub_1D5F873CC(v5);
    }

    else
    {
      FormatOptionCollection.subscript.getter(v22, v23, v9);
      sub_1D60576D0(v22, v23, v24, v37, v38);
      if ((*v28)(v9, 1, v14) == 1)
      {
        sub_1D5F873CC(v9);
      }

      else
      {
        sub_1D5D247E0(v9, v27);
        v41 = *(v27 + 16);
        FormatOptionValue.type.getter(&v40);
        LOBYTE(v41) = v24;
        v32 = FormatOptionType.rawValue.getter();
        v34 = v33;
        if (v32 == FormatOptionType.rawValue.getter() && v34 == v35)
        {

          sub_1D5D2CEC8(v27, type metadata accessor for FormatOption);
          v26 = 1;
          return v26 & 1;
        }

        v36 = sub_1D72646CC();

        sub_1D5D2CEC8(v27, type metadata accessor for FormatOption);
        if (v36)
        {
          v26 = 1;
          return v26 & 1;
        }
      }

      v26 = 0;
    }
  }

  else
  {
    v25 = v39;

    FormatOptionCollection.subscript.getter(v22, v23, v13);

    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_1D5F873CC(v13);
      v26 = 0;
    }

    else
    {
      sub_1D5D247E0(v13, v21);
      sub_1D6B744A8(v25, &v41);
      v29 = v41;
      v30 = BYTE1(v38);
      sub_1D6054840(v25, v24, v37, v38 & 1, &OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options, sub_1D6B744A8, &v41);
      v26 = sub_1D6054BB8(v29, v41, v30);

      sub_1D5D2CEC8(v21, type metadata accessor for FormatOption);
    }
  }

  return v26 & 1;
}

uint64_t FormatOptionExpression.Compare.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatOptionExpression.Compare.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1D5C58190(v2, v3, v4);
}

uint64_t sub_1D60555BC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D605567C()
{
  sub_1D72621EC();
}

uint64_t sub_1D6055728()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D60557E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D60575D4();
  *a1 = result;
  return result;
}

void sub_1D6055814(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = 0xE800000000000000;
  v5 = 0x726F74617265706FLL;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6974706FLL;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x65756C6176;
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

uint64_t sub_1D6055890@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D60575D4();
  *a1 = result;
  return result;
}

uint64_t sub_1D60558B8(uint64_t a1)
{
  v2 = sub_1D5C57C00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60558F4(uint64_t a1)
{
  v2 = sub_1D5C57C00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatOptionExpression.Exists.identifier.getter()
{
  v1 = *v0;

  return v1;
}

NewsFeed::FormatOptionExpression::Exists::Operator_optional __swiftcall FormatOptionExpression.Exists.Operator.init(rawValue:)(Swift::String rawValue)
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

uint64_t FormatOptionExpression.Exists.Operator.rawValue.getter()
{
  if (*v0)
  {
    return 0x7473697845746F6ELL;
  }

  else
  {
    return 0x737473697865;
  }
}

uint64_t sub_1D6055A50(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7473697845746F6ELL;
  }

  else
  {
    v3 = 0x737473697865;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE900000000000073;
  }

  if (*a2)
  {
    v5 = 0x7473697845746F6ELL;
  }

  else
  {
    v5 = 0x737473697865;
  }

  if (*a2)
  {
    v6 = 0xE900000000000073;
  }

  else
  {
    v6 = 0xE600000000000000;
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

uint64_t sub_1D6055AF8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6055B7C()
{
  sub_1D72621EC();
}

uint64_t sub_1D6055BEC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6055C6C(uint64_t *a1@<X8>)
{
  v2 = 0x737473697865;
  if (*v1)
  {
    v2 = 0x7473697845746F6ELL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_1D6055D1C(uint64_t *a1)
{
  v4 = type metadata accessor for FormatDerivedDataOption();
  MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v12 = *(v1 + 16);
  if (v12 < 0)
  {
    v16 = *(v6 + 28);
    v17 = type metadata accessor for FormatVersionRequirement(0);
    (*(*(v17 - 8) + 56))(&v8[v16], 1, 1, v17);
    *v8 = v10;
    *(v8 + 1) = v9;
    *(v8 + 3) = 0;
    *(v8 + 4) = 0;
    *(v8 + 2) = v11;
    v8[40] = 0;
    *(v8 + 6) = MEMORY[0x1E69E7CC0];
    v18 = swift_allocBox();
    sub_1D5EB9A4C(v8, v19);

    sub_1D6C4D24C(v18 | 0x1000000000000000);

    sub_1D5D2CEC8(v8, type metadata accessor for FormatDerivedDataOption);
    sub_1D6057620();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    *(inited + 32) = v11;
    v21 = sub_1D5E26E28(inited);
    swift_setDeallocating();
    v22 = swift_allocObject();
    *(v22 + 16) = v10;
    *(v22 + 24) = v9;
    *(v22 + 32) = v21;
    *(v22 + 40) = 0;

    sub_1D6C4D24C(v22 | 0x3000000000000000);
  }

  else
  {
    v13 = v1[3];
    if (v12)
    {

      v14 = sub_1D6056020(a1, v11, v13);
      sub_1D5C581A4(v11, v13, 1);
      if (!v2)
      {
        v15 = swift_allocObject();
        *(v15 + 16) = v10;
        *(v15 + 24) = v9;
        *(v15 + 32) = v14;
        *(v15 + 40) = 0;

        sub_1D6C4D24C(v15 | 0x3000000000000000);
      }
    }

    else
    {
      v29 = v1[2];

      FormatOptionValue.type.getter(&v28);
      v23 = v28;
      sub_1D6057620();
      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_1D7273AE0;
      *(v24 + 32) = v23;
      v25 = sub_1D5E26E28(v24);
      swift_setDeallocating();
      v26 = swift_allocObject();
      *(v26 + 16) = v10;
      *(v26 + 24) = v9;
      *(v26 + 32) = v25;
      *(v26 + 40) = 0;

      sub_1D6C4D24C(v26 | 0x3000000000000000);

      sub_1D5C581A4(v11, v13, 0);
      v29 = v11;
      sub_1D629C93C(a1);
    }
  }
}

uint64_t sub_1D6056020(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v13 = MEMORY[0x1E69E7CD0];

  sub_1D6C4DDF4(a2, a3, &v13, v6, v11);
  v7 = v3;

  if (!v3)
  {
    if (v12 <= 1u)
    {
      v8 = v11[0];
      if (!v12)
      {
        sub_1D6057620();
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D7273AE0;
        *(inited + 32) = v8;
        v7 = sub_1D5E26E28(inited);
        swift_setDeallocating();
        return v7;
      }

      sub_1D6057670(v11[0], v11[1], v11[2], 1);
    }

    if (qword_1EDF1AD88 != -1)
    {
      swift_once();
    }

    v7 = qword_1EDF1AD90;
  }

  return v7;
}

uint64_t FormatOperator.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 6648940;
    v8 = 29799;
    if (v1 != 10)
    {
      v8 = 6648935;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 29029;
    v10 = 7431534;
    if (v1 != 7)
    {
      v10 = 29804;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6C61757165;
    v3 = 0x6E6168547373656CLL;
    v4 = 0x5472657461657267;
    if (v1 != 4)
    {
      v4 = 0xD000000000000012;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x6C61757145746F6ELL;
    if (v1 != 1)
    {
      v5 = 0x6E6168547373656CLL;
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
}

uint64_t sub_1D60562C4()
{
  v0 = FormatOperator.rawValue.getter();
  v2 = v1;
  if (v0 == FormatOperator.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D6056360()
{
  sub_1D7264A0C();
  FormatOperator.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D60563C8()
{
  FormatOperator.rawValue.getter();
  sub_1D72621EC();
}

uint64_t sub_1D605642C()
{
  sub_1D7264A0C();
  FormatOperator.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6056490@<X0>(uint64_t *a1@<X8>)
{
  result = FormatOperator.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1D60564F8()
{
  if (!qword_1EDF087A8)
  {
    sub_1D5C57B9C(255, &qword_1EDF02640, MEMORY[0x1E69E6F58]);
    sub_1D6056578();
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF087A8);
    }
  }
}

unint64_t sub_1D6056578()
{
  result = qword_1EDF02648;
  if (!qword_1EDF02648)
  {
    sub_1D5C57B9C(255, &qword_1EDF02640, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF02648);
  }

  return result;
}

uint64_t sub_1D60565F8(uint64_t a1, char *a2)
{
  v3 = *a2;
  sub_1D5D27D64(0, &qword_1EDF01CF0, sub_1D5D29154, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 56) = &type metadata for FormatOptionExpression.Compare.CodingKeys;
  *(inited + 64) = sub_1D5C57C00();
  *(inited + 32) = v3;

  sub_1D5D291B8(inited);
  return a1;
}

unint64_t sub_1D60566E4()
{
  result = qword_1EDF11B68;
  if (!qword_1EDF11B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11B68);
  }

  return result;
}

uint64_t _s8NewsFeed22FormatOptionExpressionO6ExistsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 17);
  v3 = *(a2 + 17);
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_25;
  }

  v5 = FormatOptionType.rawValue.getter();
  v7 = v6;
  if (v5 != FormatOptionType.rawValue.getter() || v7 != v8)
  {
    v9 = sub_1D72646CC();

    if (v9)
    {
      goto LABEL_10;
    }

LABEL_25:
    v14 = 0;
    return v14 & 1;
  }

LABEL_10:
  if (v2)
  {
    v10 = 0x7473697845746F6ELL;
  }

  else
  {
    v10 = 0x737473697865;
  }

  if (v2)
  {
    v11 = 0xE900000000000073;
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  if (v3)
  {
    v12 = 0x7473697845746F6ELL;
  }

  else
  {
    v12 = 0x737473697865;
  }

  if (v3)
  {
    v13 = 0xE900000000000073;
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  if (v10 == v12 && v11 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1D72646CC();
  }

  return v14 & 1;
}

uint64_t _s8NewsFeed22FormatOptionExpressionO7CompareV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v4)
  {
    if ((v8 & 1) == 0 || (v2 != v6 || v3 != v7) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v8 & 1) != 0 || (v16 = v6, v17 = v2, (static FormatOptionValue.== infix(_:_:)(&v17, &v16) & 1) == 0))
  {
LABEL_15:
    v14 = 0;
    return v14 & 1;
  }

  LOBYTE(v17) = v5;
  LOBYTE(v16) = v9;
  v10 = FormatOperator.rawValue.getter();
  v12 = v11;
  if (v10 == FormatOperator.rawValue.getter() && v12 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1D72646CC();
  }

  return v14 & 1;
}

uint64_t _s8NewsFeed22FormatOptionExpressionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v6 < 0)
  {
    if (v11 < 0)
    {
      v21 = *a1;
      v22 = v2;
      LOWORD(v23) = v5 & 0x1FF;
      v16 = v8;
      v17 = v7;
      LOWORD(v18) = v10 & 0x1FF;
      sub_1D6057780(v8, v7, v10, v9, v11);
      sub_1D6057780(v3, v2, v5, v4, v6);
      sub_1D6057780(v3, v2, v5, v4, v6);
      sub_1D6057780(v8, v7, v10, v9, v11);
      exists = _s8NewsFeed22FormatOptionExpressionO6ExistsV2eeoiySbAE_AEtFZ_0(&v21, &v16);
      goto LABEL_7;
    }
  }

  else if ((v11 & 0x80000000) == 0)
  {
    v21 = *a1;
    v22 = v2;
    v23 = v5;
    v24 = v4;
    v25 = v6 & 0xFF01;
    v16 = v8;
    v17 = v7;
    v18 = v10;
    v19 = v9;
    v20 = v11 & 0xFF01;
    sub_1D6057780(v8, v7, v10, v9, v11);
    sub_1D6057780(v3, v2, v5, v4, v6);
    sub_1D6057780(v3, v2, v5, v4, v6);
    sub_1D6057780(v8, v7, v10, v9, v11);
    exists = _s8NewsFeed22FormatOptionExpressionO7CompareV2eeoiySbAE_AEtFZ_0(&v21, &v16);
LABEL_7:
    v15 = exists;
    sub_1D60576D0(v3, v2, v5, v4, v6);
    sub_1D60576D0(v8, v7, v10, v9, v11);
    sub_1D60576D0(v8, v7, v10, v9, v11);
    sub_1D60576D0(v3, v2, v5, v4, v6);
    v13 = v15;
    return v13 & 1;
  }

  sub_1D6057780(*a1, v2, v5, v4, v6);
  sub_1D6057780(v8, v7, v10, v9, v11);
  sub_1D60576D0(v3, v2, v5, v4, v6);
  sub_1D60576D0(v8, v7, v10, v9, v11);
  v13 = 0;
  return v13 & 1;
}

unint64_t sub_1D6056C98()
{
  result = qword_1EC882C88;
  if (!qword_1EC882C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882C88);
  }

  return result;
}

unint64_t sub_1D6056CEC()
{
  result = qword_1EC882C90;
  if (!qword_1EC882C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882C90);
  }

  return result;
}

unint64_t sub_1D6056D40()
{
  result = qword_1EC882C98;
  if (!qword_1EC882C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882C98);
  }

  return result;
}

unint64_t sub_1D6056D98()
{
  result = qword_1EC882CA0;
  if (!qword_1EC882CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882CA0);
  }

  return result;
}

unint64_t sub_1D6056E18()
{
  result = qword_1EC882CA8;
  if (!qword_1EC882CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882CA8);
  }

  return result;
}

unint64_t sub_1D6056E6C(uint64_t a1)
{
  result = sub_1D6056E94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6056E94()
{
  result = qword_1EC882CB0;
  if (!qword_1EC882CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882CB0);
  }

  return result;
}

unint64_t sub_1D6056F28()
{
  result = qword_1EDF0DAA0;
  if (!qword_1EDF0DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DAA0);
  }

  return result;
}

unint64_t sub_1D6056F7C(uint64_t a1)
{
  result = sub_1D6056FA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6056FA4()
{
  result = qword_1EC882CB8;
  if (!qword_1EC882CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882CB8);
  }

  return result;
}

unint64_t sub_1D6057038()
{
  result = qword_1EC882CC0;
  if (!qword_1EC882CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882CC0);
  }

  return result;
}

unint64_t sub_1D605708C()
{
  result = qword_1EC882CC8;
  if (!qword_1EC882CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882CC8);
  }

  return result;
}

unint64_t sub_1D60570E0()
{
  result = qword_1EC882CD0;
  if (!qword_1EC882CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882CD0);
  }

  return result;
}

unint64_t sub_1D6057174()
{
  result = qword_1EDF0DA98;
  if (!qword_1EDF0DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DA98);
  }

  return result;
}

unint64_t sub_1D60571C8()
{
  result = qword_1EC882CD8;
  if (!qword_1EC882CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882CD8);
  }

  return result;
}

unint64_t sub_1D6057220()
{
  result = qword_1EC882CE0;
  if (!qword_1EC882CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882CE0);
  }

  return result;
}

uint64_t sub_1D60572A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D60572DC()
{
  result = qword_1EC882CE8;
  if (!qword_1EC882CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882CE8);
  }

  return result;
}

unint64_t sub_1D6057330(uint64_t a1)
{
  result = sub_1D6057358();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6057358()
{
  result = qword_1EC882CF0;
  if (!qword_1EC882CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882CF0);
  }

  return result;
}

uint64_t sub_1D60573EC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D60574B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1D60574FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D6057580()
{
  result = qword_1EC882CF8;
  if (!qword_1EC882CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882CF8);
  }

  return result;
}

uint64_t sub_1D60575D4()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

void sub_1D6057620()
{
  if (!qword_1EDF198A0)
  {
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF198A0);
    }
  }
}

uint64_t sub_1D6057670(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1D6057684(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1D6057684(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  return result;
}

uint64_t sub_1D60576D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{

  if ((a5 & 0x8000) == 0)
  {

    return sub_1D5C581A4(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_1D6057738(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6057780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  if (a5 < 0)
  {
  }

  else
  {
    v6 = a5;

    return sub_1D5C58190(a3, a4, v6 & 1);
  }
}

uint64_t _s8NewsFeed26FormatFrameExpressionLogicO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (v5 >> 6)
  {
    if (v5 >> 6 == 1)
    {
      if ((v9 & 0xC0) != 0x40)
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }

    if ((v9 & 0xC0) == 0x80)
    {
      v17 = *a1;
      v18 = v2;
      v19 = v4;
      v20 = v5 & 1;
      v13 = v7;
      v14 = v6;
      v15 = v8;
      v16 = v9 & 1;
      sub_1D6057D14(v7, v6, v8, v9);
      sub_1D6057D14(v3, v2, v4, v5);
      sub_1D6057D14(v3, v2, v4, v5);
      sub_1D6057D14(v7, v6, v8, v9);
      v10 = _s8NewsFeed35FormatFrameExpressionLogicTextLinesV2eeoiySbAC_ACtFZ_0(&v17, &v13);
      goto LABEL_9;
    }

LABEL_10:
    sub_1D6057D14(*a1, v2, v4, v5);
    sub_1D6057D14(v7, v6, v8, v9);
    sub_1D6057D74(v3, v2, v4, v5);
    sub_1D6057D74(v7, v6, v8, v9);
    v11 = 0;
    return v11 & 1;
  }

  if (v9 >= 0x40)
  {
    goto LABEL_10;
  }

LABEL_6:
  v17 = *a1;
  v18 = v2;
  v13 = v7;
  v14 = v6;
  sub_1D6057D14(v7, v6, v8, v9);
  sub_1D6057D14(v3, v2, v4, v5);
  sub_1D6057D14(v3, v2, v4, v5);
  sub_1D6057D14(v7, v6, v8, v9);
  v10 = _s8NewsFeed30FormatTextNodeAlternativeLogicO0D5LinesV2eeoiySbAE_AEtFZ_0(&v17, &v13);
LABEL_9:
  v11 = v10;
  sub_1D6057D74(v3, v2, v4, v5);
  sub_1D6057D74(v7, v6, v8, v9);
  sub_1D6057D74(v7, v6, v8, v9);
  sub_1D6057D74(v3, v2, v4, v5);
  return v11 & 1;
}

unint64_t sub_1D6057A5C(uint64_t a1)
{
  result = sub_1D6057A84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6057A84()
{
  result = qword_1EC882D00;
  if (!qword_1EC882D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882D00);
  }

  return result;
}

unint64_t sub_1D6057AD8(void *a1)
{
  a1[1] = sub_1D6057B10();
  a1[2] = sub_1D6057B64();
  result = sub_1D6057BB8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6057B10()
{
  result = qword_1EDF0B548;
  if (!qword_1EDF0B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B548);
  }

  return result;
}

unint64_t sub_1D6057B64()
{
  result = qword_1EDF0B550;
  if (!qword_1EDF0B550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B550);
  }

  return result;
}

unint64_t sub_1D6057BB8()
{
  result = qword_1EC882D08;
  if (!qword_1EC882D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882D08);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1D6057C2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 4;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1D6057C7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *result = 0;
      *(result + 8) = 16 * -a2;
      *(result + 16) = 0;
      *(result + 24) = 0;
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_1D6057CDC(uint64_t a1, char a2)
{
  v2 = *(a1 + 24) & 1 | (a2 << 6);
  result = vandq_s8(*(a1 + 8), xmmword_1D72933D0);
  *(a1 + 8) = result;
  *(a1 + 24) = v2;
  return result;
}

uint64_t sub_1D6057D14(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a4 >> 6) > 1u)
  {
    if (a4 >> 6 == 2)
    {
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_1D6057D74(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a4 >> 6) > 1u)
  {
    if (a4 >> 6 == 2)
    {
    }
  }

  else
  {
  }

  return result;
}

void sub_1D6057DD4(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D72593CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  v46 = *a1;
  v47 = v9;
  v10 = a1[3];
  v48 = a1[2];
  v49 = v10;
  v11 = a1[5];
  v50 = a1[4];
  v51 = v11;
  v12 = v46;
  if (!v46)
  {
    goto LABEL_9;
  }

  if (v46 == 1)
  {
LABEL_10:
    *(a2 + 96) = 0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v13 = *(&v46 + 1);
  if (!*(&v46 + 1) || (v14 = v47) == 0 || (v15 = *(&v47 + 1)) == 0 || !v48)
  {
LABEL_9:
    sub_1D6060924(&v46);
    goto LABEL_10;
  }

  v16 = *(&v48 + 1);
  v43 = *(&v49 + 1);
  v44 = v49;
  v34 = *(&v50 + 1);
  v42 = v50;
  v17 = *(&v51 + 1);
  v45 = v51;
  v40 = v48;

  v41 = v15;

  v37 = v14;

  v18 = MEMORY[0x1E69E7CC0];
  v19 = sub_1D5BFC85C(MEMORY[0x1E69E7CC0], &qword_1EDF1A380, MEMORY[0x1E69E6530]);
  sub_1D6059F40();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  v21 = v44;
  v36 = v20;
  v38 = v17;
  v39 = v16;
  if (v44)
  {

    v22 = v43;

    v23 = v42;

    v24 = v34;

    v35 = v21;
  }

  else
  {

    v22 = v43;

    v24 = v34;

    sub_1D72593BC();
    sub_1D5E3A4FC();
    v25 = swift_allocObject();
    (*(v5 + 32))(v25 + *(*v25 + 112), v8, v4);
    v26 = *(*v25 + 120);
    v35 = v25;
    *(v25 + v26) = MEMORY[0x1E69E7CC0];
    v23 = v42;
  }

  if (v22)
  {
    swift_retain_n();
    v42 = v22;
    if (v23)
    {
      goto LABEL_14;
    }
  }

  else
  {
    swift_retain_n();
    sub_1D72593BC();
    sub_1D5E3A4FC();
    v32 = swift_allocObject();
    (*(v5 + 32))(v32 + *(*v32 + 112), v8, v4);
    v33 = *(*v32 + 120);
    v42 = v32;
    *(v32 + v33) = MEMORY[0x1E69E7CC0];
    if (v23)
    {
LABEL_14:

      if (v24)
      {
        goto LABEL_15;
      }

LABEL_22:

      sub_1D72593BC();
      sub_1D5E3A4FC();
      v24 = swift_allocObject();
      (*(v5 + 32))(v24 + *(*v24 + 112), v8, v4);
      *(v24 + *(*v24 + 120)) = MEMORY[0x1E69E7CC0];
      v27 = v45;
      if (v45)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  sub_1D72593BC();
  sub_1D5E3A4FC();
  v23 = swift_allocObject();
  (*(v5 + 32))(v23 + *(*v23 + 112), v8, v4);
  *(v23 + *(*v23 + 120)) = MEMORY[0x1E69E7CC0];
  if (!v24)
  {
    goto LABEL_22;
  }

LABEL_15:

  v27 = v45;
  if (!v45)
  {
LABEL_16:
    sub_1D5E3A600();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = MEMORY[0x1E69E7CC0];
  }

LABEL_17:
  sub_1D6060924(&v46);

  v28 = v38;
  if (!v38)
  {
    sub_1D5E3A600();
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = MEMORY[0x1E69E7CC0];
  }

  *a2 = v12;
  *(a2 + 8) = v13;
  v29 = v36;
  *(a2 + 16) = v37;
  *(a2 + 24) = v29;
  v30 = v40;
  *(a2 + 32) = v41;
  *(a2 + 40) = v30;
  v31 = v35;
  *(a2 + 48) = v39;
  *(a2 + 56) = v31;
  *(a2 + 64) = v42;
  *(a2 + 72) = v23;
  *(a2 + 80) = v24;
  *(a2 + 88) = v27;
  *(a2 + 96) = v28;
}

uint64_t static FeedGroupGroupingRules.noRules.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D72593CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E3A600();
  v8 = v7;
  v9 = swift_allocObject();
  v33 = v9;
  v10 = MEMORY[0x1E69E7CC0];
  *(v9 + 16) = 1000;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v32 = v11;
  *(v11 + 16) = 1000;
  *(v11 + 24) = v10;
  v28 = v8;
  v12 = swift_allocObject();
  v31 = v12;
  *(v12 + 16) = 1000;
  *(v12 + 24) = v10;
  v13 = sub_1D5BFC85C(v10, &qword_1EDF1A380, MEMORY[0x1E69E6530]);
  sub_1D6059F40();
  v14 = swift_allocObject();
  v30 = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v10;
  v15 = swift_allocObject();
  v29 = v15;
  *(v15 + 16) = 1000;
  *(v15 + 24) = v10;
  sub_1D605A160();
  v16 = swift_allocObject();
  *(v16 + 16) = 0x3FF0000000000000;
  *(v16 + 24) = 0;
  *(v16 + 32) = 1;
  *(v16 + 40) = 0;
  *(v16 + 48) = MEMORY[0x1E69E7CD0];
  *(v16 + 56) = v10;
  sub_1D72593BC();
  sub_1D5E3A4FC();
  v17 = swift_allocObject();
  v18 = *(v3 + 32);
  v18(v17 + *(*v17 + 112), v6, v2);
  *(v17 + *(*v17 + 120)) = v10;
  sub_1D72593BC();
  v19 = swift_allocObject();
  v20 = v2;
  v18(v19 + *(*v19 + 112), v6, v2);
  *(v19 + *(*v19 + 120)) = MEMORY[0x1E69E7CC0];
  sub_1D72593BC();
  v21 = swift_allocObject();
  v18(v21 + *(*v21 + 112), v6, v20);
  *(v21 + *(*v21 + 120)) = MEMORY[0x1E69E7CC0];
  sub_1D72593BC();
  v22 = swift_allocObject();
  v18(v22 + *(*v22 + 112), v6, v20);
  v23 = MEMORY[0x1E69E7CC0];
  *(v22 + *(*v22 + 120)) = MEMORY[0x1E69E7CC0];
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = v23;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v23;
  v26 = v32;
  *a1 = v33;
  a1[1] = v26;
  v27 = v30;
  a1[2] = v31;
  a1[3] = v27;
  a1[4] = v29;
  a1[5] = v16;
  a1[6] = 0;
  a1[7] = v17;
  a1[8] = v19;
  a1[9] = v21;
  a1[10] = v22;
  a1[11] = v24;
  a1[12] = result;
  return result;
}

uint64_t FeedGroupGroupingRules.merge(with:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v34 = a1[3];
  v23 = a1[4];
  v24 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v9 = a1[8];
  v8 = a1[9];
  v10 = a1[10];
  v22 = a1[11];
  v25 = v2[2];
  v26 = v2[1];
  v33 = v2[4];
  v31 = v2[7];
  v32 = v2[5];
  v29 = v2[9];
  v30 = v2[8];
  v27 = v2[11];
  v28 = v2[10];
  v19 = v2[6];
  v20 = v2[12];
  if (*a1)
  {
    v21 = *a1;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:

    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v21 = *v2;

  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v26 = v4;
  if (v5)
  {
LABEL_4:
    v25 = v5;
    goto LABEL_8;
  }

LABEL_7:

LABEL_8:

  v11 = MEMORY[0x1E69E7CC0];
  v12 = sub_1D5BFC85C(MEMORY[0x1E69E7CC0], &qword_1EDF1A380, MEMORY[0x1E69E6530]);
  sub_1D6059F40();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  if (v34)
  {
    v33 = v34;
  }

  else
  {
  }

  if (v23)
  {
    v14 = v10;
    v32 = v23;
  }

  else
  {

    v14 = v10;
  }

  v15 = v24;
  if (v24)
  {
    if (v6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v15 = v19;

    v14 = v10;
    if (v6)
    {
LABEL_16:
      v31 = v6;
      if (v7)
      {
        goto LABEL_17;
      }

      goto LABEL_22;
    }
  }

  v14 = v10;
  if (v7)
  {
LABEL_17:
    v30 = v7;
    if (v9)
    {
      goto LABEL_18;
    }

LABEL_23:

    v14 = v10;
    if (v8)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

LABEL_22:

  v14 = v10;
  if (!v9)
  {
    goto LABEL_23;
  }

LABEL_18:
  v29 = v9;
  if (v8)
  {
LABEL_19:
    v28 = v8;
    goto LABEL_25;
  }

LABEL_24:

  v14 = v10;
LABEL_25:
  if (v14)
  {
    v27 = v14;
  }

  else
  {
  }

  v16 = v15;
  if (v22)
  {
    v17 = v22;
  }

  else
  {
    v17 = v20;
  }

  *a2 = v21;
  a2[1] = v26;
  a2[2] = v25;
  a2[3] = v13;
  a2[4] = v33;
  a2[5] = v32;
  a2[6] = v16;
  a2[7] = v31;
  a2[8] = v30;
  a2[9] = v29;
  a2[10] = v28;
  a2[11] = v27;
  a2[12] = v17;
}

uint64_t FeedGroupGroupingRules.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v73 = a2;
  v3 = sub_1D72593CC();
  v75 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2BC18(0, &qword_1EDF03BC0, sub_1D605A2E0, &type metadata for FeedGroupGroupingRules.CodingKeys, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v74 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v55 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D605A2E0();
  v12 = v76;
  sub_1D7264B0C();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v70 = v6;
  v71 = v3;
  v68 = a1;
  sub_1D5E3A600();
  LOBYTE(v83) = 0;
  sub_1D5BABC90(&qword_1EDF36700, sub_1D5E3A600);
  v14 = v11;
  sub_1D726421C();
  if (v84)
  {
    v66 = v84;
  }

  else
  {
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E7CC0];
    *(v15 + 16) = 1000;
    *(v15 + 24) = v16;
    v66 = v15;
  }

  LOBYTE(v83) = 1;
  v17 = v8;
  sub_1D726421C();
  if (v84)
  {
    v64 = v84;
  }

  else
  {
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E7CC0];
    *(v18 + 16) = 1000;
    *(v18 + 24) = v19;
    v64 = v18;
  }

  LOBYTE(v83) = 2;
  sub_1D726421C();
  v67 = 0;
  if (v84)
  {
    v63 = v84;
  }

  else
  {
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E69E7CC0];
    *(v20 + 16) = 1000;
    *(v20 + 24) = v21;
    v63 = v20;
  }

  sub_1D6059F40();
  LOBYTE(v83) = 3;
  sub_1D5BABC90(&qword_1EDF13E58, sub_1D6059F40);
  sub_1D726421C();
  if (v84)
  {
    v62 = v84;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
    v23 = sub_1D5BFC85C(MEMORY[0x1E69E7CC0], &qword_1EDF1A380, MEMORY[0x1E69E6530]);
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v22;
    v62 = v24;
  }

  LOBYTE(v83) = 4;
  sub_1D726421C();
  if (v84)
  {
    v61 = v84;
  }

  else
  {
    v25 = swift_allocObject();
    v26 = MEMORY[0x1E69E7CC0];
    *(v25 + 16) = 1000;
    *(v25 + 24) = v26;
    v61 = v25;
  }

  sub_1D605A160();
  LOBYTE(v83) = 5;
  sub_1D5BABC90(&qword_1EDF13EA0, sub_1D605A160);
  sub_1D726421C();
  if (v84)
  {
    v60 = v84;
  }

  else
  {
    v27 = swift_allocObject();
    *(v27 + 16) = 0x3FF0000000000000;
    *(v27 + 24) = 0;
    *(v27 + 32) = 1;
    *(v27 + 40) = 0;
    v28 = MEMORY[0x1E69E7CC0];
    *(v27 + 48) = MEMORY[0x1E69E7CD0];
    *(v27 + 56) = v28;
    v60 = v27;
  }

  sub_1D605A334();
  LOBYTE(v83) = 6;
  sub_1D5BABC90(&qword_1EDF36710, sub_1D605A334);
  sub_1D726421C();
  v59 = v84;
  sub_1D5E3A4FC();
  LOBYTE(v82) = 7;
  sub_1D5BABC90(&qword_1EDF13ED8, sub_1D5E3A4FC);
  sub_1D726421C();
  v29 = v83;
  LOBYTE(v81) = 8;
  sub_1D726421C();
  v72 = v82;
  LOBYTE(v80) = 9;
  sub_1D726421C();
  v58 = v81;
  LOBYTE(v79) = 10;
  sub_1D726421C();
  v76 = v80;
  LOBYTE(v78) = 11;
  sub_1D726421C();
  v30 = v79;
  v77 = 12;
  sub_1D726421C();
  v69 = v30;
  v57 = v78;
  if (v29)
  {
    v65 = v29;
    v31 = v70;
    v32 = v71;
  }

  else
  {
    v31 = v70;
    sub_1D72593BC();
    v33 = swift_allocObject();
    v32 = v71;
    (*(v75 + 32))(v33 + *(*v33 + 112), v31, v71);
    v34 = *(*v33 + 120);
    v65 = v33;
    *(v33 + v34) = MEMORY[0x1E69E7CC0];
    v30 = v69;
  }

  v35 = v72;
  v36 = v76;
  if (v72)
  {

    v56 = v35;
  }

  else
  {

    sub_1D72593BC();
    v37 = swift_allocObject();
    v38 = v31;
    v39 = v37;
    (*(v75 + 32))(v37 + *(*v37 + 112), v38, v32);
    v36 = v76;
    v40 = *(*v39 + 120);
    v56 = v39;
    *(v39 + v40) = MEMORY[0x1E69E7CC0];
  }

  v41 = v58;
  if (v58)
  {

    v42 = v41;
  }

  else
  {

    v43 = v70;
    sub_1D72593BC();
    v42 = swift_allocObject();
    v30 = v69;
    (*(v75 + 32))(v42 + *(*v42 + 112), v43, v71);
    v36 = v76;
    *(v42 + *(*v42 + 120)) = MEMORY[0x1E69E7CC0];
  }

  v44 = v57;
  if (v36)
  {

    v45 = v36;
    if (v30)
    {
      goto LABEL_32;
    }

LABEL_35:
    v30 = swift_allocObject();
    v47 = MEMORY[0x1E69E7CC0];
    *(v30 + 16) = 0;
    *(v30 + 24) = v47;
    if (v44)
    {
      goto LABEL_33;
    }

LABEL_36:

    (*(v74 + 8))(v14, v17);
    v44 = swift_allocObject();
    v48 = MEMORY[0x1E69E7CC0];
    *(v44 + 16) = 0;
    *(v44 + 24) = v48;
    goto LABEL_37;
  }

  v46 = v70;
  sub_1D72593BC();
  v45 = swift_allocObject();
  v30 = v69;
  (*(v75 + 32))(v45 + *(*v45 + 112), v46, v71);
  *(v45 + *(*v45 + 120)) = MEMORY[0x1E69E7CC0];
  if (!v30)
  {
    goto LABEL_35;
  }

LABEL_32:
  if (!v44)
  {
    goto LABEL_36;
  }

LABEL_33:

  (*(v74 + 8))(v14, v17);
LABEL_37:
  v49 = v73;
  v50 = v63;
  v51 = v64;
  *v73 = v66;
  v49[1] = v51;
  v49[2] = v50;
  v52 = v61;
  v49[3] = v62;
  v49[4] = v52;
  v53 = v59;
  v49[5] = v60;
  v49[6] = v53;
  v54 = v56;
  v49[7] = v65;
  v49[8] = v54;
  v49[9] = v42;
  v49[10] = v45;
  v49[11] = v30;
  v49[12] = v44;
  return __swift_destroy_boxed_opaque_existential_1(v68);
}

unint64_t sub_1D6059470(char a1)
{
  result = 0x7669446369706F74;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      return result;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD000000000000026;
      break;
    case 8:
      result = 0xD000000000000023;
      break;
    case 9:
      result = 0xD000000000000025;
      break;
    case 10:
      result = 0xD00000000000001ELL;
      break;
    case 11:
      result = 0xD00000000000001ELL;
      break;
    case 12:
      result = 0xD00000000000001ELL;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_1D6059624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D605EEB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D605964C(uint64_t a1)
{
  v2 = sub_1D605A2E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6059688(uint64_t a1)
{
  v2 = sub_1D605A2E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedGroupGroupingRules.encode(to:)(void *a1)
{
  sub_1D5C2BC18(0, &qword_1EDF028D0, sub_1D605A2E0, &type metadata for FeedGroupGroupingRules.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v19 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v29 = v1[2];
  v30 = v9;
  v12 = v1[5];
  v27 = v1[4];
  v28 = v11;
  v13 = v1[7];
  v25 = v1[6];
  v26 = v12;
  v14 = v1[9];
  v23 = v1[8];
  v24 = v13;
  v15 = v1[11];
  v21 = v1[10];
  v22 = v14;
  v19 = v1[12];
  v20 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D605A2E0();

  sub_1D7264B5C();
  v33 = v10;
  v32 = 0;
  sub_1D5E3A600();
  sub_1D5BABC90(&qword_1EDF13E08, sub_1D5E3A600);
  v16 = v31;
  sub_1D726443C();
  if (v16)
  {

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v17 = v29;

    v33 = v30;
    v32 = 1;
    sub_1D726443C();
    v33 = v17;
    v32 = 2;
    sub_1D726443C();
    v33 = v28;
    v32 = 3;
    sub_1D6059F40();
    sub_1D5BABC90(&qword_1EDF13E60, sub_1D6059F40);
    sub_1D726443C();
    v33 = v27;
    v32 = 4;
    sub_1D726443C();
    v33 = v26;
    v32 = 5;
    sub_1D605A160();
    sub_1D5BABC90(&qword_1EDF13EA8, sub_1D605A160);
    sub_1D726443C();
    v33 = v25;
    v32 = 6;
    sub_1D605A334();
    sub_1D5BABC90(&qword_1EDF13E10, sub_1D605A334);
    sub_1D72643BC();
    v33 = v24;
    v32 = 7;
    sub_1D5E3A4FC();
    sub_1D5BABC90(&qword_1EDF13EE0, sub_1D5E3A4FC);
    v31 = v4;
    sub_1D726443C();
    v33 = v23;
    v32 = 8;
    sub_1D726443C();
    v33 = v22;
    v32 = 9;
    sub_1D726443C();
    v33 = v21;
    v32 = 10;
    sub_1D726443C();
    v33 = v20;
    v32 = 11;
    sub_1D726443C();
    v33 = v19;
    v32 = 12;
    sub_1D726443C();
    return (*(v5 + 8))(v8, v31);
  }
}

unint64_t sub_1D6059D04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D60608B0(0, &qword_1EDF1A3B8, sub_1D60603A0, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D6059E44(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    a2(0);
    v4 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1D5B69D90(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1D6059F40()
{
  if (!qword_1EDF13E48)
  {
    sub_1D5BBDECC(255, &qword_1EDF1B810, MEMORY[0x1E69E6530], MEMORY[0x1E69E5E28]);
    sub_1D605A044(&unk_1EDF05678);
    sub_1D605A044(&qword_1EDF05690);
    sub_1D605A0CC();
    v0 = type metadata accessor for FeedGroupKnobsRuleValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF13E48);
    }
  }
}

uint64_t sub_1D605A044(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5BBDECC(255, &qword_1EDF1B810, MEMORY[0x1E69E6530], MEMORY[0x1E69E5E28]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D605A0CC()
{
  result = qword_1EDF05688;
  if (!qword_1EDF05688)
  {
    sub_1D5BBDECC(255, &qword_1EDF1B810, MEMORY[0x1E69E6530], MEMORY[0x1E69E5E28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05688);
  }

  return result;
}

void sub_1D605A160()
{
  if (!qword_1EDF13E90)
  {
    sub_1D605A1E4();
    sub_1D605A238();
    sub_1D605A28C();
    v0 = type metadata accessor for FeedGroupKnobsRuleValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF13E90);
    }
  }
}

unint64_t sub_1D605A1E4()
{
  result = qword_1EDF13148;
  if (!qword_1EDF13148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13148);
  }

  return result;
}

unint64_t sub_1D605A238()
{
  result = qword_1EDF13160;
  if (!qword_1EDF13160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13160);
  }

  return result;
}

unint64_t sub_1D605A28C()
{
  result = qword_1EDF13158;
  if (!qword_1EDF13158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13158);
  }

  return result;
}

unint64_t sub_1D605A2E0()
{
  result = qword_1EDF14228;
  if (!qword_1EDF14228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14228);
  }

  return result;
}

void sub_1D605A334()
{
  if (!qword_1EDF36708)
  {
    v0 = type metadata accessor for FeedGroupKnobsRuleValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF36708);
    }
  }
}

unint64_t sub_1D605A3B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5BBDECC(0, &qword_1EDF04000, &type metadata for SportsTaxonomyGraphNode, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605A4CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5BBDECC(0, &qword_1EDF1A4F8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605A62C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D60608B0(0, &qword_1EDF03F40, sub_1D5B9EE48, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605A7A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1D60608B0(0, a2, a3, MEMORY[0x1E69E6EC8]);
    v7 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = a4(v9, v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v7[6] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      *(v7[7] + 8 * result) = v11;
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605A92C(uint64_t a1)
{
  sub_1D5C2C454(0, &qword_1EDF1B648, type metadata accessor for PuzzleStatistic);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D60608B0(0, &qword_1EDF04060, type metadata accessor for PuzzleStatistic, MEMORY[0x1E69E6EC8]);
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D6060844(v11, v7, &qword_1EDF1B648, type metadata accessor for PuzzleStatistic);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D5B69D90(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for PuzzleStatistic();
      result = sub_1D605F3F8(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for PuzzleStatistic);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605AB54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5BBDECC(0, &qword_1EDF04010, &type metadata for FormatPuzzleStatistic, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 16 * result);
      *v14 = v5;
      v14[1] = v6;
      v15 = (v3[7] + 40 * result);
      *v15 = v7;
      v15[1] = v8;
      v15[2] = v9;
      v15[3] = v10;
      v15[4] = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605AD18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D6060548(0, &qword_1EC895A50, &qword_1EDF1AE20, &qword_1EDF3C6B0, 0x1E69B5578);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605AE4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D605FD20();
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605AF40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D60608B0(0, &qword_1EDF1A328, sub_1D605FE1C, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      sub_1D5EE6588(v7);
      result = sub_1D5B69D90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605B0B0(uint64_t a1)
{
  sub_1D5C2C454(0, &qword_1EDF1B638, type metadata accessor for FormatCompilerProperty);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D60608B0(0, &qword_1EC882E00, type metadata accessor for FormatCompilerProperty, MEMORY[0x1E69E6EC8]);
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D6060844(v11, v7, &qword_1EDF1B638, type metadata accessor for FormatCompilerProperty);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D5B69D90(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for FormatCompilerProperty(0);
      result = sub_1D605F3F8(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for FormatCompilerProperty);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605B2D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D60607E0();
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 16);
      v6 = *(i - 1);
      v7 = *i;
      v8 = v6;
      result = sub_1D6D62820(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v11 = v3[7] + 16 * result;
      *v11 = v6;
      *(v11 + 8) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605B3C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D6060548(0, &unk_1EC882E98, &qword_1EDF04A60, &qword_1EDF04670, 0x1E69B5520);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605B514(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5BFFDBC(0, &qword_1EDF1A4B8, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType, sub_1D5B49474);
    v3 = sub_1D726412C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D5C16A40(v4, &v13, &unk_1EC882EA8, qword_1EDF431A0);
      v5 = v13;
      v6 = v14;
      result = sub_1D5B69D90(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D5B63F14(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605B66C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5BBDECC(0, &qword_1EDF040E0, &type metadata for FeedItemAuxiliary, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 8)
    {
      v20 = v1;
      v5 = *(i - 2);
      v6 = *(i - 1);
      v8 = *i;
      v7 = i[1];
      v9 = i[2];
      v10 = i[3];
      v11 = i[4];
      v12 = i[5];

      result = sub_1D5B69D90(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = (v3[7] + 48 * result);
      *v16 = v8;
      v16[1] = v7;
      v16[2] = v9;
      v16[3] = v10;
      v16[4] = v11;
      v16[5] = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605B7D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1D5BBDECC(0, &qword_1EDF1A3F0, &type metadata for FormatStateMachineBinding, MEMORY[0x1E69E6EC8]);
  v3 = sub_1D726412C();

  v4 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v4;
  v33 = *(a1 + 128);
  v5 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v5;
  v6 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v6;
  v8 = *(&v27 + 1);
  v7 = v27;
  sub_1D5BE12C0(&v27, v26, &qword_1EC882DF8);
  result = sub_1D5B69D90(v7, v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 136);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = v3[7] + 88 * result;
    v14 = v29;
    *v13 = v28;
    *(v13 + 16) = v14;
    v15 = v30;
    v16 = v31;
    v17 = v32;
    *(v13 + 80) = v33;
    *(v13 + 48) = v16;
    *(v13 + 64) = v17;
    *(v13 + 32) = v15;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = (v11 + 104);
    v22 = v11[5];
    v31 = v11[4];
    v32 = v22;
    v33 = *(v11 + 96);
    v23 = v11[1];
    v27 = *v11;
    v28 = v23;
    v24 = v11[3];
    v29 = v11[2];
    v30 = v24;
    v8 = *(&v27 + 1);
    v7 = v27;
    sub_1D5BE12C0(&v27, v26, &qword_1EC882DF8);
    result = sub_1D5B69D90(v7, v8);
    v11 = v21;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D605BA24(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1D5BBDECC(0, &qword_1EC882D78, &type metadata for GenericDataVisualizationResponseItem, MEMORY[0x1E69E6EC8]);
    v5 = sub_1D726412C();

    for (i = (a1 + 64); ; i += 5)
    {
      v7 = *(i - 4);
      v8 = *(i - 3);
      v10 = *(i - 2);
      v9 = *(i - 1);
      v11 = *i;

      result = a2(v7, v8);
      if (v13)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v5[6] + 16 * result);
      *v14 = v7;
      v14[1] = v8;
      v15 = (v5[7] + 24 * result);
      *v15 = v10;
      v15[1] = v9;
      v15[2] = v11;
      v16 = v5[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v5[2] = v18;
      if (!--v2)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605BB84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1D5BFFDBC(0, a2, a3, a4, sub_1D5B5A498);
    v6 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      v11 = v10;
      result = sub_1D5B69D90(v8, v9);
      if (v13)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v6[6] + 16 * result);
      *v14 = v8;
      v14[1] = v9;
      *(v6[7] + 8 * result) = v11;
      v15 = v6[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v6[2] = v17;
      if (!--v4)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605BCD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D605F460(0, &unk_1EC882D20, &qword_1EDF43BE0, MEMORY[0x1E69E6720]);
    v3 = sub_1D726412C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605BE04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1D5BBDECC(0, &qword_1EDF04050, &type metadata for PuzzleTypeStats, MEMORY[0x1E69E6EC8]);
  v3 = sub_1D726412C();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v5;
  v28 = *(a1 + 96);
  v7 = *(&v24 + 1);
  v6 = v24;
  sub_1D5BE12C0(&v24, v23, &qword_1EC882D48);
  result = sub_1D5B69D90(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = (v3[7] + (result << 6));
    v13 = v25;
    v14 = v26;
    v15 = v28;
    v12[2] = v27;
    v12[3] = v15;
    *v12 = v13;
    v12[1] = v14;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v10 + 5;
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27 = v21;
    v28 = v10[4];
    v7 = *(&v24 + 1);
    v6 = v24;
    sub_1D5BE12C0(&v24, v23, &qword_1EC882D48);
    result = sub_1D5B69D90(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D605C00C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1D605F594(0, &qword_1EC882D40, sub_1D5B81B04);
  v3 = sub_1D726412C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1D5C5E034(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1D5C5E034(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D605C134(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D605F534();
    v3 = sub_1D726412C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1D5C5E034(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605C204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D605F4D4();
    v3 = sub_1D726412C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1D5C5E034(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605C2D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5BFFDBC(0, &qword_1EC882EF0, &unk_1EC895A00, MEMORY[0x1E69E5E78], sub_1D5B49474);
    v3 = sub_1D726412C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D5C16A40(v4, &v13, &unk_1EC882F00, &unk_1EC895A00);
      v5 = v13;
      v6 = v14;
      result = sub_1D5B69D90(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D5B63F14(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605C430(uint64_t a1)
{
  sub_1D5C2C454(0, &qword_1EC882DA8, type metadata accessor for DebugFormatWorkspace);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D60608B0(0, &qword_1EC882DB0, type metadata accessor for DebugFormatWorkspace, MEMORY[0x1E69E6EC8]);
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D6060844(v11, v7, &qword_1EC882DA8, type metadata accessor for DebugFormatWorkspace);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D5B69D90(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for DebugFormatWorkspace();
      result = sub_1D605F3F8(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for DebugFormatWorkspace);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1D605C684(uint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v6 = sub_1D726412C();
  LOBYTE(v7) = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = a3(v7);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v6;
  }

  v11 = v9;
  result = v8;
  v13 = (a1 + 56);
  while (1)
  {
    *(v6 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    *(v6[6] + v11) = v7;
    *(v6[7] + 8 * v11) = result;
    v14 = v6[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v6[2] = v16;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v17 = v13 + 2;
    v7 = *(v13 - 8);
    v18 = *v13;

    v11 = a3(v7);
    v13 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

BOOL _s8NewsFeed0B18GroupGroupingRulesV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*(*a1 + 16) != *(*a2 + 16))
  {
    return 0;
  }

  v3 = a1[1];
  v2 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v26 = a1[7];
  v27 = a1[6];
  v24 = a1[8];
  v22 = a1[9];
  v20 = a1[10];
  v18 = a1[11];
  v16 = a1[12];
  v7 = a2[1];
  v8 = a2[2];
  v10 = a2[3];
  v9 = a2[4];
  v11 = a2[5];
  v28 = a2[6];
  v25 = a2[7];
  v23 = a2[8];
  v21 = a2[9];
  v19 = a2[10];
  v17 = a2[11];
  v15 = a2[12];
  if ((sub_1D635E760(*(*a1 + 24), *(*a2 + 24)) & 1) == 0 || *(v3 + 16) != *(v7 + 16) || (sub_1D635E760(*(v3 + 24), *(v7 + 24)) & 1) == 0 || *(v2 + 16) != *(v8 + 16) || (sub_1D635E760(*(v2 + 24), *(v8 + 24)) & 1) == 0 || (sub_1D5E2D074(*(v4 + 16), *(v10 + 16)) & 1) == 0 || (sub_1D635F338(*(v4 + 24), *(v10 + 24)) & 1) == 0 || *(v5 + 16) != *(v9 + 16) || (sub_1D635E760(*(v5 + 24), *(v9 + 24)) & 1) == 0 || (sub_1D6EC7100(v6, v11) & 1) == 0)
  {
    return 0;
  }

  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    if (*(v27 + 16) != *(v28 + 16))
    {
      return 0;
    }

    v12 = *(v27 + 24);
    v13 = *(v28 + 24);

    LOBYTE(v12) = sub_1D635E9D0(v12, v13);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  sub_1D72593CC();
  sub_1D5BABC90(&unk_1EDF188C0, MEMORY[0x1E69E34A8]);
  return (sub_1D7261FBC() & 1) != 0 && (sub_1D635D780(*(v26 + *(*v26 + 120)), *(v25 + *(*v25 + 120))) & 1) != 0 && (sub_1D7261FBC() & 1) != 0 && (sub_1D635D780(*(v24 + *(*v24 + 120)), *(v23 + *(*v23 + 120))) & 1) != 0 && (sub_1D7261FBC() & 1) != 0 && (sub_1D635D780(*(v22 + *(*v22 + 120)), *(v21 + *(*v21 + 120))) & 1) != 0 && (sub_1D7261FBC() & 1) != 0 && (sub_1D635D780(*(v20 + *(*v20 + 120)), *(v19 + *(*v19 + 120))) & 1) != 0 && *(v18 + 16) == *(v17 + 16) && (sub_1D635E760(*(v18 + 24), *(v17 + 24)) & 1) != 0 && *(v16 + 16) == *(v15 + 16) && (sub_1D635E760(*(v16 + 24), *(v15 + 24)) & 1) != 0;
}

uint64_t sub_1D605CC00(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D605CC48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatFixedColor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FormatFixedColor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D605CE04()
{
  result = qword_1EC882D10;
  if (!qword_1EC882D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882D10);
  }

  return result;
}

unint64_t sub_1D605CE5C()
{
  result = qword_1EDF14218;
  if (!qword_1EDF14218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14218);
  }

  return result;
}

unint64_t sub_1D605CEB4()
{
  result = qword_1EDF14220;
  if (!qword_1EDF14220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14220);
  }

  return result;
}

unint64_t sub_1D605CF08(uint64_t a1)
{
  sub_1D5BABD20(0, &unk_1EC882E28, MEMORY[0x1E69E6D30]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D5B7CB48();
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D605F6D4(v11, v7, &unk_1EC882E28, MEMORY[0x1E69E6D30]);
      result = sub_1D5B7C598(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_1D7263FCC();
      (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      result = sub_1D5B7C390(&v7[v10], (v9[7] + 32 * v15));
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605D14C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void), uint64_t (*a5)(void))
{
  v30 = a5;
  v31 = a2;
  v32 = a3;
  sub_1D5C2C454(0, a2, a3);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = (&v29 - v11);
  v13 = *(a1 + 16);
  if (v13)
  {
    a4(0);
    v14 = sub_1D726412C();
    v15 = *(v8 + 48);
    v16 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v17 = *(v9 + 72);

    while (1)
    {
      sub_1D6060844(v16, v12, v31, v32);
      v18 = *v12;
      v19 = v12[1];
      result = sub_1D5B69D90(*v12, v19);
      if (v21)
      {
        break;
      }

      v22 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v23 = (v14[6] + 16 * result);
      *v23 = v18;
      v23[1] = v19;
      v24 = v14[7];
      v25 = v30(0);
      result = (*(*(v25 - 8) + 32))(v24 + *(*(v25 - 8) + 72) * v22, v12 + v15, v25);
      v26 = v14[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_10;
      }

      v14[2] = v28;
      v16 += v17;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605D38C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D605F7C4(0, &qword_1EDF03FA0, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605D4B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D605F85C();
    v3 = sub_1D726412C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D5BE12C0(v4, v13, &qword_1EC882D70);
      result = sub_1D6D62B40(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1D5B7C390(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605D5F4(uint64_t a1)
{
  sub_1D5C2C454(0, &qword_1EDF054B0, type metadata accessor for FeedClusteringOptions);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D60608B0(0, &qword_1EC882E90, type metadata accessor for FeedClusteringOptions, MEMORY[0x1E69E6EC8]);
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D6060844(v11, v7, &qword_1EDF054B0, type metadata accessor for FeedClusteringOptions);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D5B69D90(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for FeedClusteringOptions(0);
      result = sub_1D605F3F8(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for FeedClusteringOptions);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605D81C(uint64_t a1)
{
  sub_1D5C2C454(0, &qword_1EC882D80, type metadata accessor for DebugFormatCompilingPackage);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D60608B0(0, &qword_1EC882D88, type metadata accessor for DebugFormatCompilingPackage, MEMORY[0x1E69E6EC8]);
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D6060844(v11, v7, &qword_1EC882D80, type metadata accessor for DebugFormatCompilingPackage);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D5B69D90(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for DebugFormatCompilingPackage();
      result = sub_1D605F3F8(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for DebugFormatCompilingPackage);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605DB28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D605F460(0, &unk_1EDF03F60, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605DC44(uint64_t a1)
{
  sub_1D5C2C454(0, &qword_1EDF1B640, type metadata accessor for LocalRecipeEntry);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D60608B0(0, &qword_1EC882D18, type metadata accessor for LocalRecipeEntry, MEMORY[0x1E69E6EC8]);
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D6060844(v11, v7, &qword_1EDF1B640, type metadata accessor for LocalRecipeEntry);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D5B69D90(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for LocalRecipeEntry(0);
      result = sub_1D605F3F8(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for LocalRecipeEntry);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605DE6C(uint64_t a1)
{
  sub_1D5C2C454(0, &qword_1EDF05458, type metadata accessor for SportsEventStatusResponseEmbed);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D60608B0(0, &qword_1EDF03FC0, type metadata accessor for SportsEventStatusResponseEmbed, MEMORY[0x1E69E6EC8]);
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D6060844(v11, v7, &qword_1EDF05458, type metadata accessor for SportsEventStatusResponseEmbed);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D5B69D90(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for SportsEventStatusResponseEmbed();
      result = sub_1D605F3F8(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for SportsEventStatusResponseEmbed);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605E0B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1D5BFFDBC(0, a2, a3, a4, sub_1D5B5534C);
    v6 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      swift_unknownObjectRetain();
      result = sub_1D5B69D90(v8, v9);
      if (v12)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v6[6] + 16 * result);
      *v13 = v8;
      v13[1] = v9;
      *(v6[7] + 8 * result) = v10;
      v14 = v6[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v6[2] = v16;
      if (!--v4)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605E1BC(uint64_t a1)
{
  sub_1D5C2C454(0, &qword_1EC882DD8, type metadata accessor for FeedItemDismissalRecord);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D60608B0(0, &qword_1EC882DE0, type metadata accessor for FeedItemDismissalRecord, MEMORY[0x1E69E6EC8]);
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D6060844(v11, v7, &qword_1EC882DD8, type metadata accessor for FeedItemDismissalRecord);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D5B69D90(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for FeedItemDismissalRecord();
      result = sub_1D605F3F8(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for FeedItemDismissalRecord);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605E3E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D605FBC4();
    v3 = sub_1D726412C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1D5BAA7D4(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605E4D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D60608B0(0, &unk_1EDF03F90, sub_1D60603D4, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605E60C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1D5BBDECC(0, a2, a3, MEMORY[0x1E69E6EC8]);
    v5 = sub_1D726412C();

    for (i = (a1 + 56); ; i += 4)
    {
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      result = sub_1D5B69D90(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      v14 = (v5[7] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      v15 = v5[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v5[2] = v17;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605E720(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1D60600F4();
  v3 = sub_1D726412C();
  v4 = a1[4];
  v5 = *(a1 + 5);
  result = sub_1D6D631FC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = a1 + 7;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_1D6D631FC(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D605E84C(uint64_t a1, void (*a2)(void), uint64_t (*a3)(id))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    a2(0);
    v6 = sub_1D726412C();

    for (i = (a1 + 40); ; i += 2)
    {
      v8 = *i;
      v9 = *(i - 1);

      result = a3(v9);
      if (v11)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v6[6] + 8 * result) = v9;
      *(v6[7] + 8 * result) = v8;
      v12 = v6[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v6[2] = v14;
      if (!--v3)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605E944(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5BBDECC(0, &qword_1EDF1A498, &type metadata for FamilyStatus, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605EA68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D6060548(0, &qword_1EDF03F50, &qword_1EDF04A20, &unk_1EDF04550, 0x1E69B6D00);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605EB80(uint64_t a1)
{
  sub_1D5C2C454(0, &qword_1EDF054D8, sub_1D605FEA0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D60608B0(0, &qword_1EDF04120, sub_1D605FEA0, MEMORY[0x1E69E6EC8]);
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D6060844(v11, v7, &qword_1EDF054D8, sub_1D605FEA0);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D5B69D90(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      sub_1D605FEA0();
      result = sub_1D605F3F8(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, sub_1D605FEA0);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605EDA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5C426D8();
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1D5B69D90(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D605EEB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x80000001D73C6C50 == a2;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D73C6C70 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D73C6C90 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001D73C6CB0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C6CE0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7669446369706F74 && a2 == 0xEE00797469737265 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D73C6D00 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001D73C6D20 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001D73C6D50 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001D73C6D80 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D73C6DB0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D73C6DD0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D73C6DF0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

void sub_1D605F2B8()
{
  if (!qword_1EDF04140)
  {
    type metadata accessor for WebEmbedDatastoreCacheKey();
    sub_1D5B605B8(255, &unk_1EDF1AF40, type metadata accessor for WeakWebEmbedDataSourceManagerObserver, MEMORY[0x1E69E62F8]);
    sub_1D5BABC90(qword_1EDF23AD0, type metadata accessor for WebEmbedDatastoreCacheKey);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04140);
    }
  }
}

uint64_t sub_1D605F394(uint64_t a1, uint64_t a2)
{
  sub_1D5B60444();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D605F3F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D605F460(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    sub_1D5B49DF8(255, a3, MEMORY[0x1E69E6158], a4);
    v5 = sub_1D726413C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D605F4D4()
{
  if (!qword_1EC882D30)
  {
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC882D30);
    }
  }
}

void sub_1D605F534()
{
  if (!qword_1EC895680)
  {
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC895680);
    }
  }
}

void sub_1D605F594(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726413C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D605F634()
{
  if (!qword_1EC882D50)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    sub_1D5BABC90(&qword_1EC87F1F0, type metadata accessor for OpenExternalURLOptionsKey);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC882D50);
    }
  }
}

uint64_t sub_1D605F6D4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5BABD20(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D605F740()
{
  if (!qword_1EDF03FA8)
  {
    sub_1D605F7C4(255, &qword_1EDF05710, MEMORY[0x1E69E5E28]);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03FA8);
    }
  }
}

void sub_1D605F7C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    sub_1D5BBDECC(255, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
    v7 = a3(a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D605F85C()
{
  if (!qword_1EDF1A2B0)
  {
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A2B0);
    }
  }
}

void sub_1D605F8C0()
{
  if (!qword_1EC882D90)
  {
    sub_1D5B605B8(255, &unk_1EC895710, type metadata accessor for DebugFormatWorkspace, MEMORY[0x1E69E62F8]);
    sub_1D605F95C();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC882D90);
    }
  }
}

unint64_t sub_1D605F95C()
{
  result = qword_1EC882DA0;
  if (!qword_1EC882DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882DA0);
  }

  return result;
}

void sub_1D605F9B0()
{
  if (!qword_1EC882DC0)
  {
    sub_1D60608B0(255, &qword_1EC882DC8, type metadata accessor for FeedItemDismissalRecord, MEMORY[0x1E69E5E28]);
    sub_1D605FA4C();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC882DC0);
    }
  }
}

unint64_t sub_1D605FA4C()
{
  result = qword_1EC882DD0;
  if (!qword_1EC882DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882DD0);
  }

  return result;
}

void sub_1D605FAD4()
{
  if (!qword_1EC882E08)
  {
    sub_1D5B605B8(255, &qword_1EC882E10, MEMORY[0x1E69D6B38], MEMORY[0x1E69E62F8]);
    sub_1D605FB70();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC882E08);
    }
  }
}

unint64_t sub_1D605FB70()
{
  result = qword_1EC882E18;
  if (!qword_1EC882E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882E18);
  }

  return result;
}

void sub_1D605FBC4()
{
  if (!qword_1EC882E20)
  {
    type metadata accessor for Key(255);
    sub_1D5B5A498(255, &qword_1EDF1A720);
    sub_1D5BABC90(&qword_1EDF1A8E0, type metadata accessor for Key);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC882E20);
    }
  }
}

void sub_1D605FC80()
{
  if (!qword_1EC882E38)
  {
    type metadata accessor for OptionKey(255);
    sub_1D5BABC90(&qword_1EC87F1C0, type metadata accessor for OptionKey);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC882E38);
    }
  }
}

void sub_1D605FD20()
{
  if (!qword_1EDF1A330)
  {
    sub_1D605FDB4(255, &qword_1EDF1A6E0, &qword_1EDF1A6F0, 0x1E69B5218, MEMORY[0x1E69E6720]);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A330);
    }
  }
}

void sub_1D605FDB4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B5A498(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D605FE1C()
{
  if (!qword_1EDF1A6D0)
  {
    sub_1D605FDB4(255, &qword_1EDF1A6E0, &qword_1EDF1A6F0, 0x1E69B5218, MEMORY[0x1E69E6720]);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A6D0);
    }
  }
}

void sub_1D605FEA0()
{
  if (!qword_1EDF18A70)
  {
    sub_1D5B605B8(255, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF18A70);
    }
  }
}

void sub_1D605FF3C()
{
  if (!qword_1EDF03E80)
  {
    sub_1D5B5A498(255, &qword_1EDF04658);
    sub_1D605FDB4(255, &qword_1EDF1AE20, &qword_1EDF3C6B0, 0x1E69B5578, MEMORY[0x1E69E62F8]);
    sub_1D5E2A738(&qword_1EDF04650, &qword_1EDF04658);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03E80);
    }
  }
}

void sub_1D6060048()
{
  if (!qword_1EDF03E70)
  {
    sub_1D5B5A498(255, &unk_1EDF04620);
    sub_1D5B9EE48();
    sub_1D5E2A738(&unk_1EDF04610, &unk_1EDF04620);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03E70);
    }
  }
}

void sub_1D60600F4()
{
  if (!qword_1EDF1A2E0)
  {
    sub_1D5B5A498(255, &unk_1EDF1A6B8);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A2E0);
    }
  }
}

void sub_1D606016C()
{
  if (!qword_1EDF13E20)
  {
    sub_1D5B49DF8(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5B99604(&qword_1EDF3C830);
    sub_1D5B99604(&qword_1EDF04A90);
    sub_1D5B99604(&qword_1EDF04A88);
    v0 = type metadata accessor for FeedGroupKnobsRuleValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF13E20);
    }
  }
}

void sub_1D6060284()
{
  if (!qword_1EDF36718)
  {
    v0 = type metadata accessor for FeedGroupKnobsRuleValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF36718);
    }
  }
}

void sub_1D6060300()
{
  if (!qword_1EDF1A490)
  {
    sub_1D5C2BC18(255, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A490);
    }
  }
}

void sub_1D6060408()
{
  if (!qword_1EDF04080)
  {
    sub_1D5C2BC18(255, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04080);
    }
  }
}

void sub_1D60604A8()
{
  if (!qword_1EDF040A0)
  {
    sub_1D5C2BC18(255, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF040A0);
    }
  }
}

void sub_1D6060548(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1D605FDB4(255, a3, a4, a5, MEMORY[0x1E69E62F8]);
    v6 = sub_1D726413C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D60606CC()
{
  if (!qword_1EDF04090)
  {
    sub_1D5C2BC18(255, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04090);
    }
  }
}

uint64_t sub_1D606076C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6)
{
  sub_1D5C2BB98(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1D60607E0()
{
  if (!qword_1EDF1A500)
  {
    sub_1D5E2A540();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A500);
    }
  }
}

uint64_t sub_1D6060844(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5C2C454(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D60608B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x1E69E6158], v7, MEMORY[0x1E69E6168]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D6060924(uint64_t a1)
{
  sub_1D5B49DF8(0, &qword_1EC882F10, &type metadata for FeedGroupGroupingRulesOverrides, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D60609A4()
{
  if (!qword_1EDF03F18)
  {
    sub_1D5C2BC18(255, &qword_1EDF04800, sub_1D5E9DF74, &type metadata for SportsScoreDataVisualizationTrait, MEMORY[0x1E69E64E8]);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03F18);
    }
  }
}

uint64_t FeedManagerLoadSource.hashValue.getter(unsigned __int8 a1)
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](a1);
  return sub_1D7264A5C();
}

uint64_t sub_1D6060AE0()
{
  sub_1D7264A0C();
  sub_1D5DEA28C(v2, *v0);
  return sub_1D7264A5C();
}

uint64_t FeedManager.loadingGate.getter()
{
  sub_1D5B8EF68();
}

uint64_t FeedManager.loadingSource.getter()
{
  sub_1D5B8EF70();
}

void *FeedManager.__allocating_init(feed:database:offlineDatabase:service:serviceConfigFetcher:loadingGate:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  swift_allocObject();
  v14 = sub_1D5B92CA4(a1, a2, a3, a4, a5, a6);
  (*(*(*(v7 + 80) - 8) + 8))(a5);
  (*(*(*(v7 + 88) - 8) + 8))(a4);
  v15 = sub_1D726393C();
  v16 = *(*(v15 - 8) + 8);
  v16(a3, v15);
  v16(a2, v15);
  return v14;
}

uint64_t sub_1D6060CB0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedServiceFetchResult();
  sub_1D725BC0C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v1 = sub_1D726393C();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v8 - v5;
  (*(*(TupleTypeMetadata2 - 8) + 56))(&v8 - v5, 1, 1, TupleTypeMetadata2, v4);
  sub_1D5B9786C(v6);
  return (*(v2 + 8))(v6, v1);
}

uint64_t FeedManager.save(snapshot:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v10[-v7];
  sub_1D5D10F2C(&v10[-v7]);
  (*(*(v4 + 120) + 64))(a1, v5);
  return (*(v6 + 8))(v8, v5);
}

uint64_t FeedManager.atomicRebuild<A>(context:policy:preCommit:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a1;
  v76 = a5;
  v68 = a3;
  v69 = a4;
  v77 = *v5;
  v7 = v77;
  v66 = v77[13];
  v62 = v77[10];
  v70 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v78 = *(AssociatedTypeWitness - 8);
  v63 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  v71 = &v54 - v9;
  v10 = sub_1D725895C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *a2;
  sub_1D725894C();
  v15 = sub_1D725893C();
  v73 = v15;
  v17 = v16;
  (*(v11 + 8))(v14, v10);
  v55 = v5[6];
  sub_1D5C384A0();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D7273AE0;
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 64) = sub_1D5B7E2C0();
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  v72 = v17;

  sub_1D7262EDC();
  sub_1D725C30C();

  v19 = sub_1D725B74C();
  v20 = v78;
  v21 = *(v78 + 16);
  v64 = v78 + 16;
  v65 = v21;
  v22 = v71;
  v23 = AssociatedTypeWitness;
  v21(v71, v75, AssociatedTypeWitness);
  v59 = *(v20 + 80);
  v24 = (v59 + 72) & ~v59;
  v25 = swift_allocObject();
  v26 = v62;
  *(v25 + 2) = v62;
  v61 = v7[11];
  *(v25 + 3) = v61;
  v60 = v7[12];
  v27 = v76;
  *(v25 + 4) = v60;
  *(v25 + 5) = v27;
  v28 = v66;
  *(v25 + 6) = v66;
  v57 = v7[14];
  *(v25 + 7) = v57;
  v56 = v7[15];
  *(v25 + 8) = v56;
  v29 = *(v20 + 32);
  v78 = v20 + 32;
  v58 = v29;
  v29(&v25[v24], v22, v23);
  v30 = v28;
  swift_getAssociatedTypeWitness();
  sub_1D725BDBC();

  v31 = swift_allocObject();
  v32 = v55;
  v31[2] = v27;
  v31[3] = v32;
  v33 = v73;
  v31[4] = v73;
  v34 = v67;
  v31[5] = v72;
  v31[6] = v34;

  v35 = v32;

  v36 = sub_1D725B92C();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedServiceFetchResult();
  sub_1D725BA9C();

  v37 = v71;
  v38 = AssociatedTypeWitness;
  v65(v71, v75, AssociatedTypeWitness);
  v39 = (v59 + 112) & ~v59;
  v40 = swift_allocObject();
  v41 = v60;
  v42 = v61;
  *(v40 + 2) = v26;
  *(v40 + 3) = v42;
  v43 = v76;
  *(v40 + 4) = v41;
  *(v40 + 5) = v43;
  v44 = v57;
  *(v40 + 6) = v30;
  *(v40 + 7) = v44;
  *(v40 + 8) = v56;
  *(v40 + 9) = v35;
  v45 = v72;
  *(v40 + 10) = v33;
  *(v40 + 11) = v45;
  v46 = v69;
  *(v40 + 12) = v68;
  *(v40 + 13) = v46;
  v58(&v40[v39], v37, v38);

  v47 = v35;

  v48 = sub_1D725B92C();
  sub_1D725BA9C();

  v49 = swift_allocObject();
  v49[2] = v43;
  v49[3] = v47;
  v49[4] = v73;
  v49[5] = v45;
  v50 = v47;
  v51 = sub_1D725B92C();
  v52 = sub_1D725BADC();

  return v52;
}

uint64_t sub_1D6061608(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *a2;
  sub_1D5C384A0();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7273AE0;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1D5B7E2C0();
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;

  sub_1D7262EDC();
  sub_1D725C30C();

  v12 = v10[13];
  v13 = v10[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static FeedLocation.topOfFeed(_:)(a1, AssociatedTypeWitness, AssociatedConformanceWitness, &v25);
  v16 = swift_allocObject();
  v16[2] = v13;
  v17 = v10[11];
  v16[3] = v17;
  v16[4] = v10[12];
  v16[5] = a7;
  v16[6] = v12;
  v18 = v10[14];
  v16[7] = v18;
  v16[8] = v10[15];
  v16[9] = a3;
  v16[10] = a4;
  v16[11] = a5;
  v16[12] = a6;

  v19 = a3;

  v20 = FeedServiceType.fetchAll(from:until:)(&v25, sub_1D60656C0, v16, v17, v18);

  return v20;
}

BOOL sub_1D6061868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D5C384A0();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7279970;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D5B7E2C0();
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();

  v7 = sub_1D726279C();
  v8 = MEMORY[0x1E69E6530];
  v9 = MEMORY[0x1E69E65A8];
  *(v6 + 96) = MEMORY[0x1E69E6530];
  *(v6 + 104) = v9;
  *(v6 + 72) = v7;
  sub_1D725BDDC();
  *(v6 + 136) = v8;
  *(v6 + 144) = v9;
  *(v6 + 112) = v11;
  sub_1D7262EDC();
  sub_1D725C30C();

  sub_1D725BDDC();
  return v7 >= v11;
}

uint64_t sub_1D6061A40(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v71 = a6;
  v72 = a8;
  v70 = a7;
  v64 = a4;
  v67 = a3;
  v12 = *a2;
  v13 = *(*a2 + 104);
  v14 = *(*a2 + 80);
  v73 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = *(AssociatedTypeWitness - 8);
  v68 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v16);
  v65 = &AssociatedConformanceWitness - v17;
  v18 = *a1;
  v55 = v18;
  sub_1D5C384A0();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D7270C10;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = sub_1D5B7E2C0();
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  v63 = a5;
  v20 = swift_getAssociatedTypeWitness();
  v53 = v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v54 = FeedServiceFetchResult.emittedGroups.getter(v18, v20);
  v90 = v54;
  v83 = v14;
  v59 = v14;
  v61 = a2;
  v21 = v12[11];
  v84 = v21;
  v58 = v21;
  v22 = v12[12];
  v57 = v22;
  v23 = v73;
  v85 = v22;
  v86 = v73;
  v24 = v13;
  v60 = v13;
  v87 = v13;
  v88 = v12[14];
  v25 = v88;
  v89 = v12[15];
  v26 = v89;
  v56 = v89;
  KeyPath = swift_getKeyPath();
  v75 = v14;
  v76 = v21;
  v77 = v22;
  v78 = v23;
  v79 = v24;
  v80 = v25;
  v81 = v26;
  v82 = KeyPath;
  v28 = v53;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v29 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  v31 = v29;
  v32 = MEMORY[0x1E69E6158];
  v33 = v62;
  v35 = sub_1D5B874E4(sub_1D6065574, v74, v31, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v34);
  v62 = v33;

  sub_1D5B582E8(0, &qword_1EDF43BA0, v32, MEMORY[0x1E69E62F8]);
  *(v19 + 96) = v36;
  *(v19 + 104) = sub_1D60655A0();
  *(v19 + 72) = v35;
  sub_1D7262EDC();
  v37 = v67;
  sub_1D725C30C();

  v38 = v55;
  FeedServiceFetchResult.emittedGroups.getter(v55, v28);
  v71 = v71();

  v39 = v66;
  v40 = v65;
  v41 = AssociatedTypeWitness;
  (*(v66 + 16))(v65, v72, AssociatedTypeWitness);
  v42 = (*(v39 + 80) + 112) & ~*(v39 + 80);
  v43 = swift_allocObject();
  v44 = v58;
  *(v43 + 2) = v59;
  *(v43 + 3) = v44;
  v45 = v73;
  *(v43 + 4) = v57;
  *(v43 + 5) = v45;
  *(v43 + 6) = v60;
  *(v43 + 7) = v25;
  *(v43 + 8) = v56;
  *(v43 + 9) = v37;
  v46 = v63;
  *(v43 + 10) = v64;
  *(v43 + 11) = v46;
  v47 = v61;
  *(v43 + 12) = v38;
  *(v43 + 13) = v47;
  (*(v39 + 32))(&v43[v42], v40, v41);

  v48 = v37;
  v49 = sub_1D725B92C();
  v50 = sub_1D725BA8C();

  return v50;
}

uint64_t sub_1D6062018@<X0>(uint64_t *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v2 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v3 = *(v2 + 16);
  v4 = swift_checkMetadataState();
  result = v3(v4, v2);
  *a1 = result;
  a1[1] = v6;
  return result;
}

void sub_1D606215C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v95 = a8;
  v115 = a7;
  v97 = a1;
  v96 = a9;
  v104 = *a6;
  v14 = v104;
  v112 = type metadata accessor for FeedServiceOptions(0);
  MEMORY[0x1EEE9AC00](v112, v15);
  v111 = v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v104 + 96);
  v103 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v113 = v92 - v20;
  sub_1D5B7B3C8(0, qword_1EDF34CA0, type metadata accessor for FeedContext);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v110 = v92 - v23;
  v24 = *(v14 + 104);
  v114 = a6;
  v25 = *(v14 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v117 = v25;
  v118 = v24;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v105 = swift_getAssociatedTypeWitness();
  v109 = sub_1D726393C();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v28);
  v121 = v92 - v29;
  sub_1D5B7B3C8(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v120 = v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v119 = v92 - v35;
  v107 = sub_1D726393C();
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v36);
  v38 = v92 - v37;
  sub_1D5C384A0();
  v98 = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1D7273AE0;
  *(v40 + 56) = MEMORY[0x1E69E6158];
  v99 = sub_1D5B7E2C0();
  *(v40 + 64) = v99;
  v100 = a3;
  *(v40 + 32) = a3;
  *(v40 + 40) = a4;
  v102 = a4;

  sub_1D7262EDC();
  v94 = a2;
  sub_1D725C30C();

  v41 = CACurrentMediaTime();
  v101 = a5;
  v42 = sub_1D5D0EA94(a5);
  if (v42 < 0)
  {
    v69 = *(v104 + 88);
    *&v125 = v117;
    *(&v125 + 1) = v69;
    v126 = v17;
    v127 = v118;
    v128 = *(v104 + 112);
    type metadata accessor for FeedManager.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v70 = 2;
    swift_willThrow();
    return;
  }

  v43 = v42;
  v93 = v17;
  (*(*(AssociatedTypeWitness - 8) + 56))(v38, 1, 1, AssociatedTypeWitness);
  v124 = 4;
  v44 = sub_1D725891C();
  v45 = *(*(v44 - 8) + 56);
  v45(v119, 1, 1, v44);
  v45(v120, 1, 1, v44);
  type metadata accessor for FeedGroupEmitter();

  v46 = sub_1D726275C();
  v47 = sub_1D72627FC();
  v48 = MEMORY[0x1E69E6530];
  swift_getTupleTypeMetadata2();
  v49 = sub_1D726275C();
  v92[1] = AssociatedConformanceWitness;
  v50 = v43;
  v51 = sub_1D6F78E04(v49, v48, v47, MEMORY[0x1E69E6540]);

  v52 = sub_1D726275C();
  v53 = sub_1D726275C();
  v54 = v121;
  (*(*(v105 - 8) + 56))();
  v55 = type metadata accessor for FeedContext();
  v56 = v110;
  (*(*(v55 - 8) + 56))(v110, 1, 1, v55);
  v126 = 0;
  v125 = 0u;
  v122 = 0;
  v123 = 256;
  v91 = v53;
  v92[0] = AssociatedTypeWitness;
  v57 = v119;
  v58 = v120;
  v105 = v50;
  v59 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v38, 0, &v124, v119, v120, v46, v51, v52, v91, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, v54, v56, &v125, &v122, 0, 0, 0);

  v60 = v59;

  sub_1D5BEFF30(v56, qword_1EDF34CA0, type metadata accessor for FeedContext);
  (*(v108 + 8))(v121, v109);
  v61 = MEMORY[0x1E6969530];
  sub_1D5BEFF30(v58, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  sub_1D5BEFF30(v57, &qword_1EDF45B00, v61);
  (*(v106 + 8))(v38, v107);
  v62 = swift_allocObject();
  *(v62 + 16) = FeedCursorContainer.init(cursor:)(v60);
  swift_getAssociatedTypeWitness();
  v63 = swift_getAssociatedConformanceWitness();
  v64 = *(v63 + 8);

  v65 = swift_checkMetadataState();
  v66 = v111;
  v64(v65, v63);
  LOBYTE(v63) = *(v66 + *(v112 + 28));
  sub_1D5B89A08(v66);
  LOBYTE(v125) = v63;
  v67 = v113;
  v68 = v116;
  sub_1D5B98350(&v125, v113);
  if (v68)
  {

    return;
  }

  v71 = v93;
  (*(*(v104 + 120) + 80))(v62 | 0x8000000000000000, 1, v93);
  (*(v103 + 8))(v67, v71);
  v120 = v62;
  v121 = v60;
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1D7274590;
  v73 = MEMORY[0x1E69E6158];
  v74 = v99;
  *(v72 + 56) = MEMORY[0x1E69E6158];
  *(v72 + 64) = v74;
  v75 = v102;
  *(v72 + 32) = v100;
  *(v72 + 40) = v75;
  v76 = sub_1D5D0EA94(v101);

  v77 = FeedCursorContainer.rootCursorContainer.getter(v76);

  v78 = sub_1D5BFB900(v77);
  v80 = v79;

  *(v72 + 96) = v73;
  *(v72 + 104) = v74;
  *(v72 + 72) = v78;
  *(v72 + 80) = v80;
  qos_class_self();
  v81 = FCStringFromQoSClass();
  if (!v81)
  {
    goto LABEL_13;
  }

  v82 = v81;
  v83 = sub_1D726207C();
  v85 = v84;

  *(v72 + 136) = v73;
  *(v72 + 144) = v74;
  *(v72 + 112) = v83;
  *(v72 + 120) = v85;
  v86 = (CACurrentMediaTime() - v41) * 1000.0;
  v87 = v97;
  v88 = v96;
  if ((*&v86 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    v89 = v95;
    if (v86 > -9.22337204e18)
    {
      if (v86 < 9.22337204e18)
      {
        v90 = MEMORY[0x1E69E73D8];
        *(v72 + 176) = MEMORY[0x1E69E7360];
        *(v72 + 184) = v90;
        *(v72 + 152) = v86;
        sub_1D7262EDC();
        sub_1D725C30C();

        (*(*(v89 - 8) + 16))(v88, v87, v89);
        return;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_1D6062D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D5C384A0();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7270C10;
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D5B7E2C0();
  *(v7 + 64) = v9;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  sub_1D5B49474(0, &qword_1EDF3C5D0);

  sub_1D7263F9C();
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0xE000000000000000;
  sub_1D7262EDC();
  sub_1D725C30C();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeedManager.erase(database:)(NewsFeed::FeedServiceOptions::Database database)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v5 = *(v4 - 8);
  (MEMORY[0x1EEE9AC00])(database);
  v7 = &v9 - v6;
  v10 = *v8;
  sub_1D5B98350(&v10, &v9 - v6);
  if (!v2)
  {
    (*(*(v3 + 120) + 96))(v4);
    (*(v5 + 8))(v7, v4);
  }
}

uint64_t FeedManager.fetchNextGroup(from:)(uint64_t *a1)
{
  v1 = *a1;
  sub_1D7262EDC();
  sub_1D725C30C();
  sub_1D725BDCC();
  v2 = sub_1D725B74C();
  *(swift_allocObject() + 16) = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedServiceFetchResult();

  v3 = sub_1D725BA9C();

  return v3;
}

uint64_t FeedManager.fetchReplaceGroup(from:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedServiceFetchResult();
  sub_1D725BDCC();
  v0 = sub_1D725B92C();
  v1 = sub_1D725BAAC();

  return v1;
}

uint64_t sub_1D6063368@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a2;
  v5 = *a2;
  v24 = a3;
  v25 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v7);
  v9 = &v21 - v8;
  v22 = *(v4 + 96);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v21 - v12;
  v14 = *a1;
  v15 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  FeedServiceFetchResult.serviceContext.getter(v14, v15, AssociatedConformanceWitness, v9);
  v17 = v27;
  sub_1D5D10F2C(v13);
  if (v17)
  {
    return (*(v6 + 8))(v9, AssociatedTypeWitness);
  }

  v19 = v24;
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  v20 = v22;
  (*(*(v25 + 120) + 80))(v14, 0, v22);
  (*(v23 + 8))(v13, v20);
  *v19 = v14;
}

uint64_t sub_1D6063628(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a2;
  v5 = *v3;
  v6 = *v3;
  v7 = *(*v3 + 104);
  v8 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v31 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v13 = &v25.i8[-v12];
  v11.i64[0] = v8;
  v25 = v11;
  v30 = *(v5 + 112);
  v37 = v30;
  v29 = *(v5 + 120);
  v38 = v29;
  v39 = a1;
  v28 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedCursor();
  v27 = v6;
  v26 = *(v6 + 88);
  *&v14 = vdupq_laneq_s64(v26, 1).u64[0];
  *(&v14 + 1) = v7;
  v35 = vzip1q_s64(v25, v26);
  v36 = v14;
  sub_1D725BDCC();
  v15 = sub_1D725B92C();
  sub_1D725BA9C();

  v16 = AssociatedTypeWitness;
  (*(v9 + 16))(v13, v34, AssociatedTypeWitness);
  v17 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v8;
  *(v18 + 24) = v26;
  v19 = v29;
  v20 = v30;
  *(v18 + 40) = v7;
  *(v18 + 48) = v20;
  *(v18 + 56) = v19;
  (*(v9 + 32))(v18 + v17, v13, v16);
  v21 = sub_1D725B92C();
  swift_getTupleTypeMetadata2();
  sub_1D725BA9C();

  v22 = sub_1D725B92C();
  type metadata accessor for FeedLocation();
  v23 = sub_1D725BAAC();

  return v23;
}

uint64_t sub_1D60639C4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v33 = *a2;
  v34 = v4;
  v9 = v33[13];
  v10 = v33[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  v12 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v13);
  v30 = v28 - v14;
  swift_getAssociatedConformanceWitness();
  v32 = a3;
  if (!FeedServiceContextType.canReadFromNetwork()())
  {
    swift_willThrow();
    v27 = a1;
    return a4;
  }

  v29 = a4;
  sub_1D5C384A0();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D7273AE0;
  v35 = 0;
  v36 = 0xE000000000000000;
  v37 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  v17 = v35;
  v16 = v36;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1D5B7E2C0();
  *(v15 + 32) = v17;
  *(v15 + 40) = v16;
  sub_1D7262EDC();
  sub_1D725C30C();

  LOBYTE(v35) = 2;
  sub_1D5C44F30();
  v18 = sub_1D725AE7C();
  result = MEMORY[0x1DA6F2570](v18);
  v28[1] = result;
  if (result)
  {
    v28[0] = sub_1D725B74C();
    v20 = v30;
    v21 = v31;
    (*(v31 + 16))(v30, v32, AssociatedTypeWitness);
    v22 = (*(v21 + 80) + 72) & ~*(v21 + 80);
    v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 2) = v10;
    v25 = v33;
    *(v24 + 3) = v33[11];
    *(v24 + 4) = v25[12];
    *(v24 + 5) = v9;
    *(v24 + 6) = v25[14];
    *(v24 + 7) = v25[15];
    *(v24 + 8) = a2;
    (*(v21 + 32))(&v24[v22], v20, AssociatedTypeWitness);
    *&v24[v23] = v29;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for FeedLocation();

    v26 = v28[0];
    a4 = sub_1D725BA7C();

    return a4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6063D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v5 = *a2;
  v6 = *(*a2 + 104);
  v7 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v9);
  v12 = &v20 - v11;
  v20 = &v20 - v11;
  v22 = (*(v6 + 48))(a3, v7, v6, v10);
  (*(v8 + 16))(v12, a3, AssociatedTypeWitness);
  v13 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v7;
  *(v14 + 3) = v5[11];
  *(v14 + 4) = v5[12];
  *(v14 + 5) = v6;
  *(v14 + 6) = v5[14];
  v15 = v20;
  v16 = v21;
  *(v14 + 7) = v5[15];
  *(v14 + 8) = v16;
  (*(v8 + 32))(&v14[v13], v15, AssociatedTypeWitness);

  v17 = sub_1D725B92C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedLocation();
  v18 = sub_1D725BA8C();

  return v18;
}

uint64_t sub_1D6064060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = a3;
  v20 = a1;
  v21 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v8 = &v17 - v7;
  v9 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedCursorTracker();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(TupleTypeMetadata2 + 48);
  (*(*(v9 - 8) + 16))(v12, v20, v9);
  swift_beginAccess();
  v15 = *(a2 + 16);
  if ((~v15 & 0xF000000000000007) != 0)
  {
    sub_1D6151884(v15);
  }

  else
  {
    (*(v5 + 16))(v8, v19, AssociatedTypeWitness);
    result = FeedCursorTracker.__allocating_init(context:)(v8);
  }

  *(v13 + v14) = result;
  *v21 = v11;
  return result;
}

uint64_t sub_1D6064270(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  v6 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedServiceError();
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  if (v14 != 6 || v10 != 1 || v12 | v11 | v13)
  {
    sub_1D5EAD330(v10, v11, v12, v13, v14);
    goto LABEL_8;
  }

  swift_beginAccess();
  v7 = *(a3 + 16);
  if ((~v7 & 0xF000000000000007) == 0)
  {
LABEL_8:
    swift_willThrow();
    v8 = a1;
    return a2;
  }

  sub_1D7262EDC();
  sub_1D725C30C();
  sub_1D5C45010(v7, &v15);
  a2 = sub_1D5C45170();
  sub_1D5BD9F54(v7);

  return a2;
}

uint64_t sub_1D6064458(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return FeedCursorContainer.cursor()(a1);
}

uint64_t sub_1D60644EC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1D7262EDC();
  v4 = sub_1D725C30C();
  result = MEMORY[0x1DA6F2570](v4);
  if (result)
  {
    v6 = sub_1D725B74C();
    v7 = swift_allocObject();
    v7[2] = v3[10];
    v7[3] = v3[11];
    v7[4] = v3[12];
    v7[5] = v3[13];
    v7[6] = v3[14];
    v7[7] = v3[15];
    v7[8] = v2;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for FeedCursor();

    v8 = sub_1D725BA8C();

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D606469C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a1;
  v5 = *(*a2 + 104);
  v6 = *(*a2 + 80);
  (*(v5 + 48))(a3, v6, v5);
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v3[11];
  v7[4] = v3[12];
  v7[5] = v5;
  v7[6] = v3[14];
  v7[7] = v3[15];
  v7[8] = v4;

  v8 = sub_1D725B92C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedCursor();
  swift_getTupleTypeMetadata2();
  v9 = sub_1D725BA8C();

  return v9;
}

uint64_t sub_1D6064880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(*a2 + 80);
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  *a3 = a2;
  (*(*(v6 - 8) + 16))(&a3[v7], a1, v6);
}

uint64_t sub_1D6064958@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a1;
  v49 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v41 = AssociatedConformanceWitness;
  v46 = swift_getAssociatedConformanceWitness();
  v4 = swift_getAssociatedTypeWitness();
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = v38 - v7;
  v8 = swift_checkMetadataState();
  v9 = *(v8 - 8);
  v43 = v8;
  v44 = v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v38 - v11;
  v13 = type metadata accessor for FeedCursor();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v16);
  v19 = v38 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17, v21);
  v23 = v38 - v22;
  sub_1D7262EDC();
  sub_1D725C30C();
  (*(v15 + 16))(v19, v42, TupleTypeMetadata2);
  v24 = *v19;
  v25 = *(TupleTypeMetadata2 + 48);
  v39 = v20;
  (*(v20 + 32))(v23, &v19[v25], AssociatedTypeWitness);
  strcpy(v50, "cursor serviceConfig strategy trigger ");
  v51 = v13;
  v52 = AssociatedTypeWitness;
  v53 = &type metadata for FeedRefreshStrategy;
  v54 = &type metadata for FeedRefreshTrigger;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v42 = swift_allocBox();
  v28 = v27;
  v29 = TupleTypeMetadata[12];
  v38[1] = TupleTypeMetadata[16];
  v40 = TupleTypeMetadata[20];
  *v27 = v24;
  (*(v20 + 16))(v27 + v29, v23, AssociatedTypeWitness);
  v30 = v41;
  v31 = *(v41 + 64);

  v31(AssociatedTypeWitness, v30);
  v32 = v45;
  v33 = v43;
  (*(v46 + 48))(v43, v46);
  (*(v44 + 8))(v12, v33);
  v34 = *(*v24 + 232);
  v35 = v47;
  v36 = swift_getAssociatedConformanceWitness();
  (*(v36 + 32))(v24 + v34, v35, v36);

  (*(v48 + 8))(v32, v35);
  result = (*(v39 + 8))(v23, AssociatedTypeWitness);
  *(v28 + v40) = 1;
  *v49 = v42 | 0x4000000000000000;
  return result;
}

char *FeedManager.deinit()
{
  v1 = *v0;

  v2 = *(v0 + 6);

  v3 = *(*v0 + 152);
  v4 = sub_1D726393C();
  v5 = *(*(v4 - 8) + 8);
  v5(&v0[v3], v4);
  v5(&v0[*(*v0 + 160)], v4);
  (*(*(*(v1 + 88) - 8) + 8))(&v0[*(*v0 + 168)]);
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 176)]);

  return v0;
}

uint64_t FeedManager.__deallocating_deinit()
{
  FeedManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D60652BC(unint64_t *a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1D6061A40(a1, a2, *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96), *(v2 + 104), v2 + ((*(v6 + 80) + 112) & ~*(v6 + 80)), v5);
}

uint64_t sub_1D6065374()
{
  result = MEMORY[0x1DA6F2570]();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D60655A0()
{
  result = qword_1EDF1AF20;
  if (!qword_1EDF1AF20)
  {
    sub_1D5B582E8(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1AF20);
  }

  return result;
}

void sub_1D606561C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 40);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  sub_1D606215C(a1, *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96), *(v2 + 104), v2 + ((*(v6 + 80) + 112) & ~*(v6 + 80)), v5, a2);
}

uint64_t sub_1D6065704(void *a1, void *a2)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  return sub_1D60639C4(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1D60657E0(uint64_t a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  return sub_1D6063D9C(a1, *(v1 + 64), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void *FeedDismissingManager.__allocating_init(storage:name:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v8 = swift_allocObject();
  v8[7] = 0;
  v8[8] = 0;
  v8[9] = MEMORY[0x1E69E7CC0];
  sub_1D725A78C();
  sub_1D725A7BC();
  swift_allocObject();
  v8[10] = sub_1D725A7AC();
  sub_1D5B63F14(a1, (v8 + 2));
  v8[7] = a2;
  v8[8] = a3;
  return v8;
}

void *FeedDismissingManager.init(storage:name:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v3[7] = 0;
  v3[8] = 0;
  v3[9] = MEMORY[0x1E69E7CC0];
  sub_1D725A78C();
  sub_1D725A7BC();
  swift_allocObject();
  v3[10] = sub_1D725A7AC();
  sub_1D5B63F14(a1, (v3 + 2));
  v3[7] = a2;
  v3[8] = a3;

  return v3;
}

Swift::Void __swiftcall FeedDismissingManager.dismiss(dismissingIdentifier:)(Swift::String dismissingIdentifier)
{
  v2 = v1;
  object = dismissingIdentifier._object;
  countAndFlagsBits = dismissingIdentifier._countAndFlagsBits;
  v5 = sub_1D725891C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF1BB50 != -1)
  {
LABEL_28:
    swift_once();
  }

  v10 = qword_1EDFFC828;
  sub_1D5C384A0();
  v37 = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7270C10;
  v13 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1D5B7E2C0();
  *(v12 + 32) = countAndFlagsBits;
  *(v12 + 40) = object;
  v15 = v2[7];
  v16 = v2[8];
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  if (!v16)
  {
    v15 = 0;
  }

  v17 = 0xE000000000000000;
  if (v16)
  {
    v17 = v16;
  }

  v36 = v14;
  *(v12 + 64) = v14;
  *(v12 + 72) = v15;
  *(v12 + 80) = v17;

  sub_1D7262EDC();
  v38 = v10;
  sub_1D725C30C();

  sub_1D5B68374((v2 + 2), v42);
  v18 = v43;
  v19 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  sub_1D725890C();
  (*(v19 + 8))(countAndFlagsBits, object, v9, v18, v19);
  (*(v6 + 8))(v9, v5);
  __swift_destroy_boxed_opaque_existential_1(v42);
  v5 = v2[10];
  sub_1D725A76C();
  swift_beginAccess();
  countAndFlagsBits = v2[9];
  object = *(countAndFlagsBits + 16);

  if (object)
  {
    v20 = 0;
    v6 = countAndFlagsBits + 32;
    v21 = object - 1;
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      v22 = v20;
      while (1)
      {
        if (v22 >= *(countAndFlagsBits + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v39 = *(v6 + 16 * v22);
        v20 = (v22 + 1);

        (v39)(&v40, v23);
        if (v40)
        {
          break;
        }

        ++v22;
        if (object == v20)
        {
          goto LABEL_20;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v9;
      v34 = v21;
      v35 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D6998778(0, *(v9 + 2) + 1, 1);
        v9 = v41;
      }

      v25 = v39;
      v27 = *(v9 + 2);
      v26 = *(v9 + 3);
      if (v27 >= v26 >> 1)
      {
        sub_1D6998778((v26 > 1), v27 + 1, 1);
        v25 = v39;
        v9 = v41;
      }

      *(v9 + 2) = v27 + 1;
      *&v9[16 * v27 + 32] = v25;
      v21 = v34;
      v5 = v35;
    }

    while (v34 != v22);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

LABEL_20:

  v2[9] = v9;

  if (!*(v2[9] + 16))
  {
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D7273AE0;
    v30 = v2[7];
    v29 = v2[8];
    v31 = v36;
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = v31;
    if (!v29)
    {
      v30 = 0;
    }

    v32 = 0xE000000000000000;
    if (v29)
    {
      v32 = v29;
    }

    *(v28 + 32) = v30;
    *(v28 + 40) = v32;

    sub_1D7262EDC();
    sub_1D725C30C();
  }

  sub_1D725A77C();
}

uint64_t sub_1D6066018@<X0>(void (*a1)(uint64_t, BOOL)@<X1>, char *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
    }

    a1(v5, Strong != 0);
    result = swift_unknownObjectRelease();
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t FeedDismissingManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t FeedDismissingManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall EmptyFeedDismissingManager.dismiss(dismissingIdentifier:)(Swift::String dismissingIdentifier)
{
  object = dismissingIdentifier._object;
  countAndFlagsBits = dismissingIdentifier._countAndFlagsBits;
  if (qword_1EDF1BB50 != -1)
  {
    swift_once();
  }

  sub_1D5C384A0();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D5B7E2C0();
  *(v3 + 32) = countAndFlagsBits;
  *(v3 + 40) = object;

  sub_1D7262EDC();
  sub_1D725C30C();
}

uint64_t sub_1D606628C(uint64_t a1, uint64_t a2)
{
  if (qword_1EDF1BB50 != -1)
  {
    swift_once();
  }

  sub_1D5C384A0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D5B7E2C0();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  sub_1D7262EDC();
  sub_1D725C30C();
}

uint64_t sub_1D60663A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedItemDismissalRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D606640C(uint64_t a1)
{
  v2 = type metadata accessor for FeedItemDismissalRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL _s8NewsFeed18FormatGroupBindingV4TextO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v71[0] = *a1;
  v71[1] = v3;
  v71[2] = v4;
  v71[3] = v5;
  v71[4] = v6;
  v71[5] = v7;
  v72 = v8;
  v73 = v9;
  v74 = v10;
  v75 = v11;
  v76 = v12;
  v77 = v13;
  v78 = v14;
  v79 = v15;
  switch(v8 >> 4)
  {
    case 1u:
      if ((v15 & 0xF0) == 0x10)
      {
        goto LABEL_26;
      }

      goto LABEL_42;
    case 2u:
      if ((v15 & 0xF0) != 0x20)
      {
        goto LABEL_42;
      }

      goto LABEL_26;
    case 3u:
      if ((v15 & 0xF0) == 0x30)
      {
        v64 = v2;
        v65 = v3;
        LOWORD(v66) = v4;
        v57 = v9;
        v58 = v10;
        LOWORD(v59) = v11;
        v53 = v11;
        v54 = v12;
        v49 = v4;
        v50 = v7;
        v55 = v13;
        v56 = v14;
        v51 = v6;
        v52 = v15;
        sub_1D5E1E0D4(v9, v10, v11, v12, v13, v14, v15, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        v48 = v5;
        sub_1D5E1E0D4(v2, v3, v4, v5, v51, v7, v8, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        sub_1D5E1E0D4(v2, v3, v4, v5, v51, v7, v8, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        sub_1D5E1E0D4(v9, v10, v53, v54, v55, v56, v52, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        v16 = _s8NewsFeed20FormatWeatherBindingV4TextO2eeoiySbAE_AEtFZ_0(&v64, &v57);
        goto LABEL_16;
      }

      v30 = v2;
      v31 = v3;
      v32 = v11;
      v33 = v4;
      v34 = v12;
      v35 = v4 >> 8;
      v36 = v15;
      v37 = v14;
      v38 = v13;
      sub_1D5E1DCA8(v30, v31, v33, v35);
      v11 = v32;
      v12 = v34;
      v13 = v38;
      v14 = v37;
      LOBYTE(v15) = v36;
      goto LABEL_42;
    case 4u:
      if ((v15 & 0xF0) != 0x40)
      {
        goto LABEL_42;
      }

      goto LABEL_26;
    case 5u:
      if ((v15 & 0xF0) != 0x50)
      {
        goto LABEL_42;
      }

      goto LABEL_26;
    case 6u:
      if ((v15 & 0xF0) == 0x60)
      {
        goto LABEL_26;
      }

      goto LABEL_42;
    case 7u:
      if ((v15 & 0xF0) != 0x70)
      {
        goto LABEL_42;
      }

      sub_1D60670B8(v71);
      if (v2 > 0xFBu)
      {
        return v9 > 0xFBu;
      }

      if (v9 > 0xFBu)
      {
        return 0;
      }

      if ((v2 & 0x80) == 0)
      {
        return (v9 & 0x80) == 0 && ((v9 ^ v2) & 0x7F) == 0;
      }

      return (v9 & 0x80) != 0 && ((v9 ^ v2) & 0x7F) == 0;
    case 8u:
      if ((v15 & 0xF0) != 0x80)
      {
        goto LABEL_42;
      }

      sub_1D60670B8(v71);
      if (!(v3 >> 6))
      {
        if (v10 > 0x3Fu)
        {
          return 0;
        }

        return v9 == v2;
      }

      if (v3 >> 6 == 1)
      {
        if ((v10 & 0xC0) != 0x40)
        {
          return 0;
        }

        return v9 == v2;
      }

      return (v10 & 0xC0) == 0x80 && v2 == v9 && ((v10 ^ v3) & 0x3F) == 0;
    case 9u:
      v17 = v8 & 0xF;
      if ((v15 & 0xF0) == 0x90)
      {
        v64 = v2;
        v65 = v3;
        v66 = v4;
        v67 = v5;
        v68 = v6;
        v69 = v7;
        v70 = v8 & 0xF;
        v57 = v9;
        v58 = v10;
        v59 = v11;
        v60 = v12;
        v61 = v13;
        v62 = v14;
        v63 = v15 & 0xF;
        v53 = v11;
        v54 = v12;
        v49 = v4;
        v50 = v7;
        v55 = v13;
        v56 = v14;
        v51 = v6;
        v52 = v15;
        sub_1D5E1E0D4(v9, v10, v11, v12, v13, v14, v15, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        v48 = v5;
        sub_1D5E1E0D4(v2, v3, v4, v5, v51, v7, v8, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        sub_1D5E1E0D4(v2, v3, v4, v5, v51, v7, v8, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        sub_1D5E1E0D4(v9, v10, v53, v54, v55, v56, v52, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        v16 = _s8NewsFeed19FormatPuzzleBindingV4TextO2eeoiySbAE_AEtFZ_0(&v64, &v57);
        goto LABEL_16;
      }

      v27 = v2;
      v28 = v3;
      v21 = v11;
      v29 = v4;
      v23 = v12;
      v24 = v13;
      v25 = v14;
      v26 = v15;
      sub_1D5E1DCD8(v27, v28, v29, v5, v6, v7, v17);
      goto LABEL_39;
    case 0xAu:
      if ((v15 & 0xF0) != 0xA0)
      {
        goto LABEL_42;
      }

      sub_1D60670B8(v71);
      if (v3)
      {
        if (v2)
        {
          if ((v10 & 1) == 0)
          {
            return 0;
          }

          return v9 != 0;
        }

        else
        {
          if ((v10 & 1) == 0)
          {
            return 0;
          }

          return v9 == 0;
        }
      }

      else
      {
        return !(v10 & 1 | (v2 != v9));
      }

    case 0xBu:
      if ((v15 & 0xF0) != 0xB0)
      {
        goto LABEL_42;
      }

LABEL_26:
      sub_1D60670B8(v71);
      return v9 == v2;
    case 0xCu:
      if ((v15 & 0xF0) == 0xC0)
      {
        v64 = v2;
        v65 = v3;
        v66 = v4;
        v67 = v5;
        v68 = v6;
        v69 = v7;
        v57 = v9;
        v58 = v10;
        v59 = v11;
        v60 = v12;
        v61 = v13;
        v62 = v14;
        v53 = v11;
        v54 = v12;
        v49 = v4;
        v50 = v7;
        v55 = v13;
        v56 = v14;
        v51 = v6;
        v52 = v15;
        sub_1D5E1E0D4(v9, v10, v11, v12, v13, v14, v15, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        v48 = v5;
        sub_1D5E1E0D4(v2, v3, v4, v5, v51, v7, v8, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        sub_1D5E1E0D4(v2, v3, v4, v5, v51, v7, v8, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        sub_1D5E1E0D4(v9, v10, v53, v54, v55, v56, v52, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        v16 = _s8NewsFeed19FormatRecipeBindingV4TextO2eeoiySbAE_AEtFZ_0(&v64, &v57);
        goto LABEL_16;
      }

      v19 = v2;
      v20 = v3;
      v21 = v11;
      v22 = v4;
      v23 = v12;
      v24 = v13;
      v25 = v14;
      v26 = v15;
      sub_1D5E1DCE8(v19, v20, v22);
LABEL_39:
      v11 = v21;
      v12 = v23;
      v13 = v24;
      v14 = v25;
      LOBYTE(v15) = v26;
      goto LABEL_42;
    default:
      if (v15 <= 0xF)
      {
        v64 = v2;
        v65 = v3;
        v66 = v4;
        v67 = v5;
        v68 = v6;
        v69 = v7;
        v70 = v8;
        v57 = v9;
        v58 = v10;
        v59 = v11;
        v60 = v12;
        v61 = v13;
        v62 = v14;
        v63 = v15;
        v53 = v11;
        v54 = v12;
        v49 = v4;
        v50 = v7;
        v55 = v13;
        v56 = v14;
        v51 = v6;
        v52 = v15;
        sub_1D5E1E0D4(v9, v10, v11, v12, v13, v14, v15, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        v48 = v5;
        sub_1D5E1E0D4(v2, v3, v4, v5, v51, v7, v8, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        sub_1D5E1E0D4(v2, v3, v4, v5, v51, v7, v8, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        sub_1D5E1E0D4(v9, v10, v53, v54, v55, v56, v52, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        v16 = _s8NewsFeed21FormatHeadlineBindingV4TextO2eeoiySbAE_AEtFZ_0(&v64, &v57);
LABEL_16:
        v18 = v16;
        sub_1D60670B8(v71);
        sub_1D5E1E0D4(v9, v10, v53, v54, v55, v56, v52, sub_1D5E1E074, sub_1D5E1E134, sub_1D5E1E164, sub_1D5E1E174);
        sub_1D5E1E0D4(v2, v3, v49, v48, v51, v50, v8, sub_1D5E1E074, sub_1D5E1E134, sub_1D5E1E164, sub_1D5E1E174);
        return v18;
      }

      v39 = v2;
      v40 = v3;
      v41 = v11;
      v42 = v4;
      v43 = v12;
      v44 = v13;
      v45 = v14;
      v46 = v15;
      sub_1D5E1DC48(v39, v40, v42, v5, v6, v7, v8);
      v11 = v41;
      v12 = v43;
      v13 = v44;
      v14 = v45;
      LOBYTE(v15) = v46;
LABEL_42:
      sub_1D5E1E0D4(v9, v10, v11, v12, v13, v14, v15, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
      sub_1D60670B8(v71);
      return 0;
  }
}

unint64_t sub_1D6066F28(uint64_t a1)
{
  result = sub_1D6066F50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6066F50()
{
  result = qword_1EC882F18;
  if (!qword_1EC882F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F18);
  }

  return result;
}

unint64_t sub_1D6066FA4(void *a1)
{
  a1[1] = sub_1D5CA084C();
  a1[2] = sub_1D6066FDC();
  result = sub_1D6067030();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6066FDC()
{
  result = qword_1EDF104F0;
  if (!qword_1EDF104F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF104F0);
  }

  return result;
}

unint64_t sub_1D6067030()
{
  result = qword_1EC882F20;
  if (!qword_1EC882F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F20);
  }

  return result;
}

uint64_t sub_1D60670B8(uint64_t a1)
{
  sub_1D6067114();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6067114()
{
  if (!qword_1EC882F28)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC882F28);
    }
  }
}

uint64_t sub_1D60671A4()
{
  v0 = FormatFontTrait.rawValue.getter();
  v2 = v1;
  if (v0 == FormatFontTrait.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D6067240()
{
  sub_1D7264A0C();
  FormatFontTrait.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D60672A8()
{
  FormatFontTrait.rawValue.getter();
  sub_1D72621EC();
}

uint64_t sub_1D606730C@<X0>(uint64_t *a1@<X8>)
{
  result = FormatFontTrait.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D6067380(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  for (i = v4 & *(result + 56); i; v2 = v2 | dword_1D7294830[*(*(result + 48) + (v7 | (v6 << 6)))])
  {
    v6 = v1;
LABEL_9:
    v7 = __clz(__rbit64(i));
    i &= i - 1;
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v6 >= ((v3 + 63) >> 6))
    {
      return v2;
    }

    i = *(result + 56 + 8 * v6);
    ++v1;
    if (i)
    {
      v1 = v6;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t static FormatFontTrait.< infix(_:_:)()
{
  v0 = FormatFontTrait.rawValue.getter();
  v2 = v1;
  if (v0 == FormatFontTrait.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

unint64_t sub_1D60674C0(uint64_t a1)
{
  *(a1 + 8) = sub_1D60674F0();
  result = sub_1D5CDA2A0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D60674F0()
{
  result = qword_1EC882F30;
  if (!qword_1EC882F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F30);
  }

  return result;
}

unint64_t sub_1D6067544(uint64_t a1)
{
  result = sub_1D606756C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D606756C()
{
  result = qword_1EC882F38;
  if (!qword_1EC882F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F38);
  }

  return result;
}

unint64_t sub_1D60675C0(void *a1)
{
  a1[1] = sub_1D5C48A1C();
  a1[2] = sub_1D5C48A70();
  result = sub_1D5C8ACDC();
  a1[3] = result;
  return result;
}

uint64_t sub_1D60675F8()
{
  v0 = FormatFontTrait.rawValue.getter();
  v2 = v1;
  if (v0 == FormatFontTrait.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D6067694()
{
  v0 = FormatFontTrait.rawValue.getter();
  v2 = v1;
  if (v0 == FormatFontTrait.rawValue.getter() && v2 == v3)
  {

    v6 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1D6067744()
{
  v0 = FormatFontTrait.rawValue.getter();
  v2 = v1;
  if (v0 == FormatFontTrait.rawValue.getter() && v2 == v3)
  {

    v6 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1D60677F4()
{
  v0 = FormatFontTrait.rawValue.getter();
  v2 = v1;
  if (v0 == FormatFontTrait.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t FormatOptionsNodeStatementOption.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static FormatOptionsNodeStatementOption.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1D72646CC();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

unint64_t sub_1D6067960(uint64_t a1)
{
  result = sub_1D6067988();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6067988()
{
  result = qword_1EC882F40;
  if (!qword_1EC882F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F40);
  }

  return result;
}

unint64_t sub_1D60679DC(void *a1)
{
  a1[1] = sub_1D6067A14();
  a1[2] = sub_1D6067A68();
  result = sub_1D6067ABC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6067A14()
{
  result = qword_1EDF1EF88;
  if (!qword_1EDF1EF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1EF88);
  }

  return result;
}

unint64_t sub_1D6067A68()
{
  result = qword_1EDF081E0;
  if (!qword_1EDF081E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF081E0);
  }

  return result;
}

unint64_t sub_1D6067ABC()
{
  result = qword_1EC882F48;
  if (!qword_1EC882F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F48);
  }

  return result;
}

uint64_t sub_1D6067B40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1D72646CC();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_1D6067BA0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  if (qword_1EDF1AD88 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDF1AD90;
  v5 = v3 ^ 1u;
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;

  sub_1D6C4D24C(v6 | 0x3000000000000000);
}

void sub_1D6067C78(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  v4 = type metadata accessor for FormatOptionsNodeStatementContext();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for FormatOption();
  v12 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v13);
  v41 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v41 - v17);
  v19 = *v2;
  v20 = *(v2 + 8);
  LODWORD(v45) = *(v2 + 16);
  v42 = a1;
  sub_1D606818C(a1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5EB9920();
    v22 = *(v21 + 48);

    FormatOptionCollection.subscript.getter(v19, v20, v11);

    sub_1D5EB9994();
    (*(*(v23 - 8) + 8))(&v7[v22], v23);
  }

  else
  {

    FormatOptionCollection.subscript.getter(v19, v20, v11);
  }

  v24 = v46;
  if ((*(v12 + 48))(v11, 1, v46) == 1)
  {
    sub_1D5D280B8(v11, sub_1D5E04C00);
    type metadata accessor for FormatLayoutError();
    sub_1D5D285FC();
    v25 = swift_allocError();
    *v26 = v19;
    v26[1] = v20;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {

    sub_1D5D247E0(v11, v18);
    v28 = *v18;
    v27 = v18[1];

    v29 = v43;
    sub_1D6B75E28(v42, &v47);
    if (!v29)
    {
      v31 = v47;
      v32 = v41;
      *v41 = v28;
      *(v32 + 1) = v27;
      *(v32 + 2) = v31;
      *(v32 + 3) = 1;
      v33 = *(v24 + 28);
      v34 = type metadata accessor for FormatVersionRequirement(0);
      v45 = v28;
      v35 = v34;
      v36 = *(*(v34 - 8) + 56);
      v36(&v32[v33], 1, 1, v34);
      v46 = *(v32 + 2);

      sub_1D5D280B8(v32, type metadata accessor for FormatOption);
      v37 = type metadata accessor for FormatOptionsNodeStatementResult();
      v38 = v44;
      v36(v44 + *(v37 + 24), 1, 1, v35);
      sub_1D5C3C480();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      *(inited + 32) = v45;
      *(inited + 40) = v27;

      v40 = sub_1D5BFAC38(inited);
      swift_setDeallocating();
      sub_1D5BFB68C(inited + 32);
      sub_1D5D280B8(v18, type metadata accessor for FormatOption);
      *v38 = v46;
      v38[1] = v40;
      (*(*(v37 - 8) + 56))(v38, 0, 1, v37);
      return;
    }

    sub_1D5D280B8(v18, type metadata accessor for FormatOption);
    v25 = v29;
  }

  if (v45)
  {
    swift_willThrow();
  }

  else
  {
    v30 = type metadata accessor for FormatOptionsNodeStatementResult();
    (*(*(v30 - 8) + 56))(v44, 1, 1, v30);
  }
}

uint64_t sub_1D606818C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatOptionsNodeStatementContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for FormatSourceMapContext()
{
  result = qword_1EDF27FC0;
  if (!qword_1EDF27FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D606823C()
{
  result = type metadata accessor for FormatNodeContext();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FormatDecorationContext();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D60682B0()
{
  v1 = v0;
  v2 = type metadata accessor for FormatDecorationContext();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FormatSourceMapContext();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60683F4(v1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D6068458(v9, v5);
    sub_1D725A7EC();
    v10 = v13;
    sub_1D60684BC(v5);
  }

  else
  {
    sub_1D725A7EC();

    return v13;
  }

  return v10;
}

uint64_t sub_1D60683F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatSourceMapContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6068458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatDecorationContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60684BC(uint64_t a1)
{
  v2 = type metadata accessor for FormatDecorationContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FormatDerivedDataWarning.deinit()
{
  sub_1D6068574(v0 + OBJC_IVAR____TtC8NewsFeed24FormatDerivedDataWarning_file);

  return v0;
}

uint64_t sub_1D6068574(uint64_t a1)
{
  v2 = type metadata accessor for FormatFile();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FormatDerivedDataWarning.__deallocating_deinit()
{
  sub_1D6068574(v0 + OBJC_IVAR____TtC8NewsFeed24FormatDerivedDataWarning_file);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FormatDerivedDataWarning()
{
  result = qword_1EC882F50;
  if (!qword_1EC882F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6068698()
{
  result = type metadata accessor for FormatFile();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t FormatButtonNodeState.rawValue.getter()
{
  v1 = 0x64656C6261736964;
  v2 = 0x6867696C68676968;
  if (*v0 != 2)
  {
    v2 = 0x64657463656C6573;
  }

  if (*v0)
  {
    v1 = 0x64657375636F66;
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

void sub_1D60687DC(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x64656C6261736964;
  v4 = 0xEB00000000646574;
  v5 = 0x6867696C68676968;
  if (*v1 != 2)
  {
    v5 = 0x64657463656C6573;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x64657375636F66;
    v2 = 0xE700000000000000;
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

uint64_t sub_1D6068880()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D606894C()
{
  sub_1D72621EC();
}

uint64_t FormatButtonNodeState.description.getter()
{
  v1 = 0x64656C6261736944;
  v2 = 0x6867696C68676948;
  if (*v0 != 2)
  {
    v2 = 0x64657463656C6553;
  }

  if (*v0)
  {
    v1 = 0x64657375636F46;
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

uint64_t sub_1D6068AA0()
{
  v1 = 0x64656C6261736944;
  v2 = 0x6867696C68676948;
  if (*v0 != 2)
  {
    v2 = 0x64657463656C6553;
  }

  if (*v0)
  {
    v1 = 0x64657375636F46;
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

uint64_t _s8NewsFeed21FormatButtonNodeStateO1loiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x64656C6261736964;
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = 0x6867696C68676968;
      v5 = 0xEB00000000646574;
    }

    else
    {
      v5 = 0xE800000000000000;
      v4 = 0x64657463656C6573;
    }
  }

  else
  {
    if (*a1)
    {
      v4 = 0x64657375636F66;
    }

    else
    {
      v4 = 0x64656C6261736964;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0x6867696C68676968;
  v8 = 0xEB00000000646574;
  if (*a2 != 2)
  {
    v7 = 0x64657463656C6573;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v2 = 0x64657375636F66;
    v6 = 0xE700000000000000;
  }

  if (*a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (*a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

unint64_t sub_1D6068CA4(uint64_t a1)
{
  *(a1 + 8) = sub_1D6068CD4();
  result = sub_1D5C95D64();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6068CD4()
{
  result = qword_1EC882F60;
  if (!qword_1EC882F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F60);
  }

  return result;
}

unint64_t sub_1D6068D2C()
{
  result = qword_1EC882F68;
  if (!qword_1EC882F68)
  {
    sub_1D6068D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F68);
  }

  return result;
}

void sub_1D6068D84()
{
  if (!qword_1EDF04E30)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04E30);
    }
  }
}