uint64_t sub_1D7124224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v25 = a3;
  if (a3 == 3)
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
LABEL_5:
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v13 = *(v7 + 28);
    goto LABEL_6;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v11 = *(v7 + 24);
    *&a4[v11] = v24;
    v12 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v12 - 8) + 56))(&a4[v11], 0, 1, v12);
    goto LABEL_5;
  }

  sub_1D5B49474(0, &qword_1EC884160);
  if (swift_dynamicCast())
  {
    sub_1D5B7DDE8(&v24, v23);
    v15 = type metadata accessor for FormatInspectionItem(0);
    v16 = &a4[*(v15 + 24)];
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    *v16 = sub_1D72644BC();
    v16[1] = v17;
    v18 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v19 = &a4[*(v15 + 28)];
    *v19 = 0;
    *(v19 + 1) = 0;
    v19[16] = -1;
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  v20 = type metadata accessor for FormatInspectionItem(0);
  v21 = &a4[*(v20 + 24)];
  *&v24 = 0;
  *(&v24 + 1) = 0xE000000000000000;
  LOBYTE(v23[0]) = v25;
  sub_1D7263F9C();
  *v21 = 0;
  *(v21 + 1) = 0xE000000000000000;
  v22 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  result = (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v13 = *(v20 + 28);
LABEL_6:
  v14 = &a4[v13];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = -1;
  return result;
}

uint64_t sub_1D7124568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void (*a6)(void)@<X5>, uint64_t *a7@<X8>)
{
  v41 = a3;
  v42 = a4;
  v43 = a5 & 1;
  if (a5)
  {
    v10 = type metadata accessor for FormatInspectionItem(0);
    v11 = *(v10 + 24);
    v12 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v12 - 8) + 56))(a7 + v11, 1, 1, v12);
LABEL_9:
    *a7 = a1;
    a7[1] = a2;
    a7[2] = 0;
    a7[3] = 0;
    v16 = *(v10 + 28);
LABEL_10:
    v17 = a7 + v16;
    *v17 = 0;
    *(v17 + 1) = 0;
    v17[16] = -1;
    return result;
  }

  a6(0);
  type metadata accessor for FormatCommandAction();
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  sub_1D7133B88(0, &qword_1EC88D750, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D73A8]);
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  type metadata accessor for DebugFormatDebuggerCallStackEntry();
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  type metadata accessor for DebugFormatDebuggerWorkspaceStackEntry();
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  sub_1D5B5A498(0, &unk_1EDF04400);
  if (swift_dynamicCast())
  {

    v18 = [v40 attributedName];
    v19 = [v18 string];

    v20 = sub_1D726207C();
    v22 = v21;

    v23 = [v40 category];
    if (v23)
    {
      v24 = v23;
      v25 = sub_1D726207C();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    v33 = type metadata accessor for FormatInspectionItem(0);
    v34 = *(v33 + 24);
    *(a7 + v34) = v40;
    v35 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v35 - 8) + 56))(a7 + v34, 0, 1, v35);
    *a7 = v20;
    a7[1] = v22;
    a7[2] = v25;
    a7[3] = v27;
    v16 = *(v33 + 28);
    goto LABEL_10;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
LABEL_8:
    v10 = type metadata accessor for FormatInspectionItem(0);
    v14 = *(v10 + 24);
    *(a7 + v14) = v40;
    v15 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v15 - 8) + 56))(a7 + v14, 0, 1, v15);
    goto LABEL_9;
  }

  sub_1D5B49474(0, &qword_1EC884160);
  if (!swift_dynamicCast())
  {
    v36 = type metadata accessor for FormatInspectionItem(0);
    v37 = (a7 + *(v36 + 24));
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    v39[0] = v41;
    v39[1] = v42;
    sub_1D7263F9C();
    *v37 = 0;
    v37[1] = 0xE000000000000000;
    v38 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
    *a7 = a1;
    a7[1] = a2;
    a7[2] = 0;
    a7[3] = 0;
    v16 = *(v36 + 28);
    goto LABEL_10;
  }

  sub_1D5B7DDE8(&v40, v39);
  v28 = type metadata accessor for FormatInspectionItem(0);
  v29 = (a7 + *(v28 + 24));
  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  *v29 = sub_1D72644BC();
  v29[1] = v30;
  v31 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v31 - 8) + 56))(v29, 0, 1, v31);
  *a7 = a1;
  a7[1] = a2;
  a7[2] = 0;
  a7[3] = 0;
  v32 = a7 + *(v28 + 28);
  *v32 = 0;
  *(v32 + 1) = 0;
  v32[16] = -1;
  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t sub_1D7124B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  v27 = a3;
  v28 = a4 & 1;
  if (a4)
  {
    v8 = type metadata accessor for FormatInspectionItem(0);
    v9 = *(v8 + 24);
    v10 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v10 - 8) + 56))(&a5[v9], 1, 1, v10);
LABEL_5:
    *a5 = a1;
    *(a5 + 1) = a2;
    *(a5 + 2) = 0;
    *(a5 + 3) = 0;
    v16 = &a5[*(v8 + 28)];
    *v16 = 0;
    *(v16 + 1) = 0;
    v16[16] = -1;
    return result;
  }

  type metadata accessor for UIAccessibilityContainerType(0);
  v13 = v12;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    v8 = type metadata accessor for FormatInspectionItem(0);
    v14 = *(v8 + 24);
    *&a5[v14] = v24;
    v15 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v15 - 8) + 56))(&a5[v14], 0, 1, v15);
    goto LABEL_5;
  }

  v25 = v13;
  v26 = sub_1D7133DA4(&qword_1EC89B218, type metadata accessor for UIAccessibilityContainerType);
  *&v24 = v27;
  sub_1D5B7DDE8(&v24, v23);
  v17 = type metadata accessor for FormatInspectionItem(0);
  v18 = &a5[*(v17 + 24)];
  v19 = __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  *v18 = UIAccessibilityContainerType.description.getter(*v19);
  v18[1] = v20;
  v21 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = 0;
  *(a5 + 3) = 0;
  v22 = &a5[*(v17 + 28)];
  *v22 = 0;
  *(v22 + 1) = 0;
  v22[16] = -1;
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_1D7124DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = *(a3 + 40);
  if (v7 == 1)
  {
    v8 = type metadata accessor for FormatInspectionItem(0);
    v9 = *(v8 + 24);
    v10 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  }

  else
  {
    v12 = *(a3 + 48);
    v13 = *(a3 + 32);
    v8 = type metadata accessor for FormatInspectionItem(0);
    v15 = &a4[*(v8 + 24)];
    v16 = *(a3 + 16);
    *v15 = *a3;
    *(v15 + 1) = v16;
    *(v15 + 4) = v13;
    *(v15 + 5) = v7;
    v15[48] = v12;
    v17 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  }

  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v18 = &a4[*(v8 + 28)];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = -1;
  return result;
}

void sub_1D7124F00(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1D71330BC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v52[-v10];
  v12 = sub_1D72585BC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v52[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a3)
  {
    v20 = type metadata accessor for FormatInspectionItem(0);
    v23 = *(v20 + 24);
    v24 = type metadata accessor for FormatInspectionItem.Value(0);
    (*(*(v24 - 8) + 56))(a4 + v23, 1, 1, v24);
LABEL_15:
    *a4 = a1;
    a4[1] = a2;
    v32 = (v20 + 28);
LABEL_16:
    a4[2] = 0;
    a4[3] = 0;
    goto LABEL_17;
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v53 = 2;
    MEMORY[0x1DA6F9ED0](v17, &v53);
    v19 = v53;
    if (v53 != 2)
    {
      v20 = type metadata accessor for FormatInspectionItem(0);
      v21 = *(v20 + 24);
      *(a4 + v21) = v19 & 1;
      v22 = type metadata accessor for FormatInspectionItem.Value(0);
LABEL_12:
      swift_storeEnumTagMultiPayload();
      (*(*(v22 - 8) + 56))(a4 + v21, 0, 1, v22);

      goto LABEL_15;
    }
  }

  else
  {
    v18 = a3;
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    (*(v13 + 56))(v11, 1, 1, v12);
    sub_1D7133DA4(&qword_1EC89B210, MEMORY[0x1E6968FB0]);
    sub_1D72641AC();
    v18 = v26;
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      v28 = *(v13 + 32);
      v28(v16, v11, v12);
      v20 = type metadata accessor for FormatInspectionItem(0);
      v21 = *(v20 + 24);
      v28(a4 + v21, v16, v12);
      v22 = type metadata accessor for FormatInspectionItem.Value(0);
      goto LABEL_12;
    }
  }

  type metadata accessor for FormatCommandAction();
  v27 = swift_dynamicCastClass();
  if (v27 || (sub_1D7133B88(0, &qword_1EC88D750, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D73A8]), (v27 = swift_dynamicCastClass()) != 0))
  {
    v29 = v27;
    v20 = type metadata accessor for FormatInspectionItem(0);
    v30 = *(v20 + 24);
    *(a4 + v30) = v29;
    v31 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v31 - 8) + 56))(a4 + v30, 0, 1, v31);
    goto LABEL_15;
  }

  Class = object_getClass(v18);
  if (Class == _TtC8NewsFeed33DebugFormatDebuggerCallStackEntry || Class == _TtC8NewsFeed38DebugFormatDebuggerWorkspaceStackEntry)
  {
    v46 = type metadata accessor for FormatInspectionItem(0);
    v47 = *(v46 + 24);
    *(a4 + v47) = v18;
    v48 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v48 - 8) + 56))(a4 + v47, 0, 1, v48);
    *a4 = a1;
    a4[1] = a2;
    v32 = (v46 + 28);
    goto LABEL_16;
  }

  v35 = a3;
  v36 = [v18 attributedName];
  v37 = [v36 string];

  v38 = sub_1D726207C();
  v40 = v39;

  v41 = [v18 category];
  if (v41)
  {
    v42 = v41;
    v43 = sub_1D726207C();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  v49 = type metadata accessor for FormatInspectionItem(0);
  v50 = *(v49 + 24);
  *(a4 + v50) = v18;
  v51 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v51 - 8) + 56))(a4 + v50, 0, 1, v51);

  *a4 = v38;
  a4[1] = v40;
  v32 = (v49 + 28);
  a4[2] = v43;
  a4[3] = v45;
LABEL_17:
  v33 = a4 + *v32;
  *v33 = 0;
  *(v33 + 1) = 0;
  v33[16] = -1;
}

uint64_t sub_1D712555C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a5)
  {
    v9 = type metadata accessor for FormatInspectionItem(0);
    v10 = *(v9 + 24);
    v11 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v11 - 8) + 56))(a6 + v10, 1, 1, v11);
    *a6 = a1;
    *(a6 + 8) = a2;
    *(a6 + 16) = 0;
    *(a6 + 24) = 0;
    v13 = a6 + *(v9 + 28);
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = -1;
  }

  else
  {
    *&v30[0] = 40;
    *(&v30[0] + 1) = 0xE100000000000000;
    v15 = sub_1D7262A9C();
    MEMORY[0x1DA6F9910](v15);

    MEMORY[0x1DA6F9910](8236, 0xE200000000000000);
    v16 = sub_1D7262A9C();
    MEMORY[0x1DA6F9910](v16);

    MEMORY[0x1DA6F9910](41, 0xE100000000000000);
    sub_1D6E0CED0(0, &qword_1EC8803C0, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    sub_1D71330BC(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    sub_1D5EA74B8();
    v19 = *(*(v18 - 8) + 72);
    v20 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D7270C10;
    v22 = v21 + v20;
    sub_1D711A80C(88, 0xE100000000000000, a3, 0, (v21 + v20));
    v23 = type metadata accessor for FormatInspectionItem(0);
    v24 = *(*(v23 - 8) + 56);
    v24(v22, 0, 1, v23);
    sub_1D711A80C(89, 0xE100000000000000, a4, 0, (v22 + v19));
    v24(v22 + v19, 0, 1, v23);
    sub_1D6795150(0x746E696F50, 0xE500000000000000, 0, 0, v21, v30);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(inited + 56) = &type metadata for FormatInspectionGroup;
    *(inited + 64) = &off_1F518B2C0;
    v25 = swift_allocObject();
    *(inited + 32) = v25;
    *(v25 + 48) = v31;
    v26 = v30[1];
    *(v25 + 16) = v30[0];
    *(v25 + 32) = v26;
    v27 = sub_1D5F62BFC(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(inited + 32);
    v28 = sub_1D7073500(v27);

    return sub_1D711AD20(a1, a2, v28, 40, 0xE100000000000000, a6);
  }

  return result;
}

uint64_t sub_1D7125900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  if (a3)
  {
    v8 = type metadata accessor for FormatInspectionItem(0);
    v9 = *(v8 + 24);
    *&a4[v9] = a3;
    v10 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v10 - 8) + 56))(&a4[v9], 0, 1, v10);
  }

  else
  {
    v8 = type metadata accessor for FormatInspectionItem(0);
    v12 = *(v8 + 24);
    v13 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v13 - 8) + 56))(&a4[v12], 1, 1, v13);
  }

  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v14 = &a4[*(v8 + 28)];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = -1;
  return result;
}

uint64_t sub_1D7125A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((~a3 & 0xF000000000000007) != 0)
  {
    v12 = a3 >> 61;
    if ((a3 >> 61) > 3)
    {
      if (v12 > 5)
      {
        v35 = a3 & 0x1FFFFFFFFFFFFFFFLL;
        if (v12 == 6)
        {
          v36 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
          v78 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
          v79 = v36;
          v80 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
          v81[0] = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
          v37 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
          v74 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
          v75 = v37;
          v38 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
          v76 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
          v77 = v38;
          v39 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v72 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v73 = v39;
          v15 = type metadata accessor for FormatInspectionItem(0);
          v41 = *(v15 + 24);
          memmove((a4 + v41), (v35 + 16), 0x91uLL);
          v42 = type metadata accessor for FormatInspectionItem.Value(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v42 - 8) + 56))(a4 + v41, 0, 1, v42);
          sub_1D62B4EA4(&v72, v71);
          result = sub_1D5C8500C(a3);
          *a4 = a1;
          *(a4 + 8) = a2;
          v18 = xmmword_1D739CF30;
        }

        else
        {
          v63 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
          v79 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
          v80 = v63;
          *v81 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
          *&v81[16] = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0xB0);
          v64 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
          v75 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
          v76 = v64;
          v65 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
          v77 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
          v78 = v65;
          v66 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v72 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v73 = v66;
          v74 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
          v15 = type metadata accessor for FormatInspectionItem(0);
          v68 = *(v15 + 24);
          memmove((a4 + v68), (v35 + 16), 0xA2uLL);
          v69 = type metadata accessor for FormatInspectionItem.Value(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v69 - 8) + 56))(a4 + v68, 0, 1, v69);
          sub_1D60864C0(&v72, v71);
          result = sub_1D5C8500C(a3);
          *a4 = a1;
          *(a4 + 8) = a2;
          v18 = xmmword_1D739CF20;
        }
      }

      else
      {
        if (v12 != 4)
        {
          v53 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v52 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v55 = type metadata accessor for FormatInspectionItem(0);
          v56 = (a4 + *(v55 + 24));
          *v56 = v53;
          v56[1] = v52;
          v57 = type metadata accessor for FormatInspectionItem.Value(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v57 - 8) + 56))(v56, 0, 1, v57);

          result = sub_1D5C8500C(a3);
          *a4 = a1;
          *(a4 + 8) = a2;
          *(a4 + 16) = xmmword_1D739CF40;
          v11 = *(v55 + 28);
          goto LABEL_19;
        }

        v19 = a3 & 0x1FFFFFFFFFFFFFFFLL;
        v20 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
        v79 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
        v80 = v20;
        *v81 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
        *&v81[9] = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0xA9);
        v21 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
        v75 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        v76 = v21;
        v22 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
        v77 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
        v78 = v22;
        v23 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v72 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v73 = v23;
        v74 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v15 = type metadata accessor for FormatInspectionItem(0);
        v25 = *(v15 + 24);
        memmove((a4 + v25), (v19 + 16), 0xA9uLL);
        v26 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v26 - 8) + 56))(a4 + v25, 0, 1, v26);
        sub_1D62B4F54(&v72, v71);
        result = sub_1D5C8500C(a3);
        *a4 = a1;
        *(a4 + 8) = a2;
        v18 = xmmword_1D739CF50;
      }
    }

    else if (v12 > 1)
    {
      if (v12 != 2)
      {
        v58 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v60 = type metadata accessor for FormatInspectionItem(0);
        v61 = *(v60 + 24);
        *(a4 + v61) = v58;
        v62 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v62 - 8) + 56))(a4 + v61, 0, 1, v62);
        sub_1D6086744(v58);
        result = sub_1D5C8500C(a3);
        *a4 = a1;
        *(a4 + 8) = a2;
        *(a4 + 16) = 0xD000000000000012;
        *(a4 + 24) = 0x80000001D73E40B0;
        v11 = *(v60 + 28);
        goto LABEL_19;
      }

      v27 = a3 & 0x1FFFFFFFFFFFFFFFLL;
      v28 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      v76 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v77 = v28;
      v29 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
      v78 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      v79 = v29;
      v30 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v72 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v73 = v30;
      v31 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v74 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v75 = v31;
      v15 = type metadata accessor for FormatInspectionItem(0);
      v33 = *(v15 + 24);
      memmove((a4 + v33), (v27 + 16), 0x80uLL);
      v34 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v34 - 8) + 56))(a4 + v33, 0, 1, v34);
      sub_1D60865E4(&v72, v71);
      result = sub_1D5C8500C(a3);
      *a4 = a1;
      *(a4 + 8) = a2;
      v18 = xmmword_1D739CEF0;
    }

    else if (v12)
    {
      v43 = (a3 & 0x1FFFFFFFFFFFFFFFLL);
      v44 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v72 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v73 = v44;
      v45 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v74 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v75 = v45;
      v15 = type metadata accessor for FormatInspectionItem(0);
      v47 = (a4 + *(v15 + 24));
      v49 = v43[3];
      v48 = v43[4];
      v50 = v43[2];
      *v47 = v43[1];
      v47[1] = v50;
      v47[2] = v49;
      v47[3] = v48;
      v51 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v51 - 8) + 56))(v47, 0, 1, v51);
      sub_1D6086694(&v72, v71);
      result = sub_1D5C8500C(a3);
      *a4 = a1;
      *(a4 + 8) = a2;
      v18 = xmmword_1D739CF00;
    }

    else
    {
      v13 = *(a3 + 16);
      v15 = type metadata accessor for FormatInspectionItem(0);
      v16 = *(v15 + 24);
      *(a4 + v16) = v13;
      v17 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v17 - 8) + 56))(a4 + v16, 0, 1, v17);

      result = sub_1D5C8500C(a3);
      *a4 = a1;
      *(a4 + 8) = a2;
      v18 = xmmword_1D72EBCC0;
    }

    *(a4 + 16) = v18;
    v11 = *(v15 + 28);
    goto LABEL_19;
  }

  v7 = type metadata accessor for FormatInspectionItem(0);
  v8 = *(v7 + 24);
  v9 = type metadata accessor for FormatInspectionItem.Value(0);
  result = (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v11 = *(v7 + 28);
LABEL_19:
  v70 = a4 + v11;
  *v70 = 0;
  *(v70 + 8) = 0;
  *(v70 + 16) = -1;
  return result;
}

uint64_t sub_1D712612C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char *a4@<X8>)
{
  v28 = *(a3 + 32);
  v7 = a3[1];
  v26 = *a3;
  v27 = v7;
  if (v28 == 1)
  {
    v8 = type metadata accessor for FormatInspectionItem(0);
    v9 = *(v8 + 24);
    v10 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
LABEL_5:
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v14 = &a4[*(v8 + 28)];
    *v14 = 0;
    *(v14 + 1) = 0;
    v14[16] = -1;
    return result;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    v8 = type metadata accessor for FormatInspectionItem(0);
    v12 = *(v8 + 24);
    *&a4[v12] = v23;
    v13 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v13 - 8) + 56))(&a4[v12], 0, 1, v13);
    goto LABEL_5;
  }

  v24 = &type metadata for FormatEdgeInsets;
  v25 = sub_1D71337F0();
  v15 = swift_allocObject();
  *&v23 = v15;
  v16 = v27;
  *(v15 + 16) = v26;
  *(v15 + 32) = v16;
  sub_1D5B7DDE8(&v23, v22);
  v17 = type metadata accessor for FormatInspectionItem(0);
  v18 = &a4[*(v17 + 24)];
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  *v18 = FormatEdgeInsets.description.getter();
  v18[1] = v19;
  v20 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v21 = &a4[*(v17 + 28)];
  *v21 = 0;
  *(v21 + 1) = 0;
  v21[16] = -1;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1D7126374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for FormatItemNodeAction();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D71330BC(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v39 - v15;
  sub_1D7133C80(a3, v39 - v15, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  if ((*(v9 + 48))(v16, 1, v8) == 1)
  {
    sub_1D7133D00(a3, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
    v17 = type metadata accessor for FormatInspectionItem(0);
    v18 = *(v17 + 24);
    v19 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v19 - 8) + 56))(&a4[v18], 1, 1, v19);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v21 = *(v17 + 28);
LABEL_3:
    v22 = &a4[v21];
    *v22 = 0;
    *(v22 + 1) = 0;
    v22[16] = -1;
    return result;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    sub_1D7133D00(a3, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
    v23 = v40;
    v24 = type metadata accessor for FormatInspectionItem(0);
    v25 = *(v24 + 24);
    *&a4[v25] = v23;
    v26 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v26 - 8) + 56))(&a4[v25], 0, 1, v26);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v27 = &a4[*(v24 + 28)];
    *v27 = 0;
    *(v27 + 1) = 0;
    v27[16] = -1;
  }

  else
  {
    sub_1D5B49474(0, &qword_1EC884160);
    if (!swift_dynamicCast())
    {
      sub_1D5CAD93C(v16, v12, type metadata accessor for FormatItemNodeAction);
      v35 = type metadata accessor for FormatInspectionItem(0);
      v36 = &a4[*(v35 + 24)];
      *&v40 = 0;
      *(&v40 + 1) = 0xE000000000000000;
      sub_1D7263F9C();
      v37 = v40;
      sub_1D7133D00(a3, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
      sub_1D7133844(v12, type metadata accessor for FormatItemNodeAction);
      *v36 = v37;
      v38 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v38 - 8) + 56))(v36, 0, 1, v38);
      *a4 = a1;
      *(a4 + 1) = a2;
      *(a4 + 2) = 0;
      *(a4 + 3) = 0;
      v21 = *(v35 + 28);
      goto LABEL_3;
    }

    sub_1D5B7DDE8(&v40, v39);
    v28 = type metadata accessor for FormatInspectionItem(0);
    v29 = &a4[*(v28 + 24)];
    __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    v30 = sub_1D72644BC();
    v32 = v31;
    sub_1D7133D00(a3, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
    *v29 = v30;
    v29[1] = v32;
    v33 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v33 - 8) + 56))(v29, 0, 1, v33);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v34 = &a4[*(v28 + 28)];
    *v34 = 0;
    *(v34 + 1) = 0;
    v34[16] = -1;
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  return sub_1D7133844(v16, type metadata accessor for FormatItemNodeAction);
}

uint64_t sub_1D71268A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a3[1];
  v40 = *a3;
  v41 = v7;
  v42 = *(a3 + 32);
  if (v42)
  {
    v8 = type metadata accessor for FormatInspectionItem(0);
    v9 = *(v8 + 24);
    v10 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
LABEL_9:
    *a4 = a1;
    a4[1] = a2;
    a4[2] = 0;
    a4[3] = 0;
    v14 = *(v8 + 28);
LABEL_10:
    v15 = a4 + v14;
    *v15 = 0;
    *(v15 + 1) = 0;
    v15[16] = -1;
    return result;
  }

  type metadata accessor for UIEdgeInsets(0);
  type metadata accessor for FormatCommandAction();
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  sub_1D7133B88(0, &qword_1EC88D750, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D73A8]);
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  type metadata accessor for DebugFormatDebuggerCallStackEntry();
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  type metadata accessor for DebugFormatDebuggerWorkspaceStackEntry();
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  sub_1D5B5A498(0, &unk_1EDF04400);
  if (swift_dynamicCast())
  {

    v16 = [v38[0] attributedName];
    v17 = [v16 string];

    v18 = sub_1D726207C();
    v20 = v19;

    v21 = [v38[0] category];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1D726207C();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v31 = type metadata accessor for FormatInspectionItem(0);
    v32 = *(v31 + 24);
    *(a4 + v32) = v38[0];
    v33 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v33 - 8) + 56))(a4 + v32, 0, 1, v33);
    *a4 = v18;
    a4[1] = v20;
    a4[2] = v23;
    a4[3] = v25;
    v14 = *(v31 + 28);
    goto LABEL_10;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
LABEL_8:
    v8 = type metadata accessor for FormatInspectionItem(0);
    v12 = *(v8 + 24);
    *(a4 + v12) = v38[0];
    v13 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v13 - 8) + 56))(a4 + v12, 0, 1, v13);
    goto LABEL_9;
  }

  sub_1D5B49474(0, &qword_1EC884160);
  if (!swift_dynamicCast())
  {
    v34 = type metadata accessor for FormatInspectionItem(0);
    v35 = (a4 + *(v34 + 24));
    v37[0] = 0;
    v37[1] = 0xE000000000000000;
    v39 = v41;
    *v38 = v40;
    sub_1D7263F9C();
    *v35 = 0;
    v35[1] = 0xE000000000000000;
    v36 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
    *a4 = a1;
    a4[1] = a2;
    a4[2] = 0;
    a4[3] = 0;
    v14 = *(v34 + 28);
    goto LABEL_10;
  }

  sub_1D5B7DDE8(v38, v37);
  v26 = type metadata accessor for FormatInspectionItem(0);
  v27 = (a4 + *(v26 + 24));
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  *v27 = sub_1D72644BC();
  v27[1] = v28;
  v29 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v29 - 8) + 56))(v27, 0, 1, v29);
  *a4 = a1;
  a4[1] = a2;
  a4[2] = 0;
  a4[3] = 0;
  v30 = a4 + *(v26 + 28);
  *v30 = 0;
  *(v30 + 1) = 0;
  v30[16] = -1;
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

void sub_1D7126ED0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t (*a6)(uint64_t)@<X5>, uint64_t *a7@<X8>)
{
  v45 = a3;
  if (!a3)
  {
    v13 = type metadata accessor for FormatInspectionItem(0);
    v14 = *(v13 + 24);
    v15 = type metadata accessor for FormatInspectionItem.Value(0);
    (*(*(v15 - 8) + 56))(a7 + v14, 1, 1, v15);
    *a7 = a1;
    a7[1] = a2;
    a7[2] = 0;
    a7[3] = 0;
    v16 = a7 + *(v13 + 28);
    *v16 = 0;
    *(v16 + 1) = 0;
    v16[16] = -1;
    return;
  }

  v12 = a4(0);
  type metadata accessor for FormatCommandAction();
  if (!swift_dynamicCast())
  {
    sub_1D7133B88(0, &qword_1EC88D750, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D73A8]);
    if (!swift_dynamicCast())
    {
      type metadata accessor for DebugFormatDebuggerCallStackEntry();
      if (!swift_dynamicCast())
      {
        type metadata accessor for DebugFormatDebuggerWorkspaceStackEntry();
        if (!swift_dynamicCast())
        {
          sub_1D5B5A498(0, &unk_1EDF04400);
          if (swift_dynamicCast())
          {

            v22 = [v44[0] attributedName];
            v23 = [v22 string];

            v24 = sub_1D726207C();
            v26 = v25;

            v27 = [v44[0] category];
            if (v27)
            {
              v28 = v27;
              v29 = sub_1D726207C();
              v31 = v30;
            }

            else
            {
              v29 = 0;
              v31 = 0;
            }

            v40 = type metadata accessor for FormatInspectionItem(0);
            v41 = *(v40 + 24);
            *(a7 + v41) = v44[0];
            v42 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v42 - 8) + 56))(a7 + v41, 0, 1, v42);
            *a7 = v24;
            a7[1] = v26;
            a7[2] = v29;
            a7[3] = v31;
            v20 = *(v40 + 28);
            goto LABEL_9;
          }

          sub_1D5B49474(0, &qword_1EDF3C5D0);
          if (!swift_dynamicCast())
          {
            v44[3] = v12;
            v32 = v45;
            v44[4] = a5();
            v44[0] = v45;
            sub_1D5B7DDE8(v44, v43);
            v33 = type metadata accessor for FormatInspectionItem(0);
            v34 = (a7 + *(v33 + 24));
            v35 = *__swift_project_boxed_opaque_existential_1(v43, v43[3]);
            v36 = v32;
            *v34 = a6(v35);
            v34[1] = v37;
            v38 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v38 - 8) + 56))(v34, 0, 1, v38);
            *a7 = a1;
            a7[1] = a2;
            a7[2] = 0;
            a7[3] = 0;
            v39 = a7 + *(v33 + 28);
            *v39 = 0;
            *(v39 + 1) = 0;
            v39[16] = -1;
            __swift_destroy_boxed_opaque_existential_1(v43);
            goto LABEL_10;
          }
        }
      }
    }
  }

  v17 = type metadata accessor for FormatInspectionItem(0);
  v18 = *(v17 + 24);
  *(a7 + v18) = v44[0];
  v19 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v19 - 8) + 56))(a7 + v18, 0, 1, v19);
  *a7 = a1;
  a7[1] = a2;
  a7[2] = 0;
  a7[3] = 0;
  v20 = *(v17 + 28);
LABEL_9:
  v21 = a7 + v20;
  *v21 = 0;
  *(v21 + 1) = 0;
  v21[16] = -1;
LABEL_10:
}

uint64_t sub_1D712741C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  v28 = a3;
  v29 = a4 & 1;
  if (a4)
  {
    v8 = type metadata accessor for FormatInspectionItem(0);
    v9 = *(v8 + 24);
    v10 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v10 - 8) + 56))(&a5[v9], 1, 1, v10);
LABEL_5:
    *a5 = a1;
    *(a5 + 1) = a2;
    *(a5 + 2) = 0;
    *(a5 + 3) = 0;
    v16 = &a5[*(v8 + 28)];
    *v16 = 0;
    *(v16 + 1) = 0;
    v16[16] = -1;
    return result;
  }

  type metadata accessor for UIUserInterfaceLayoutDirection(0);
  v13 = v12;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    v8 = type metadata accessor for FormatInspectionItem(0);
    v14 = *(v8 + 24);
    *&a5[v14] = v25;
    v15 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v15 - 8) + 56))(&a5[v14], 0, 1, v15);
    goto LABEL_5;
  }

  v26 = v13;
  v27 = sub_1D7133DA4(&qword_1EDF1A780, type metadata accessor for UIUserInterfaceLayoutDirection);
  *&v25 = v28;
  sub_1D5B7DDE8(&v25, v24);
  v17 = *__swift_project_boxed_opaque_existential_1(v24, v24[3]);
  if (v17)
  {
    if (v17 == 1)
    {
      v18 = 0xED00007466654C20;
      v19 = 0x6F74207468676952;
    }

    else
    {
      v18 = 0xE700000000000000;
      v19 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v18 = 0xED00007468676952;
    v19 = 0x206F74207466654CLL;
  }

  v20 = type metadata accessor for FormatInspectionItem(0);
  v21 = &a5[*(v20 + 24)];
  *v21 = v19;
  v21[1] = v18;
  v22 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = 0;
  *(a5 + 3) = 0;
  v23 = &a5[*(v20 + 28)];
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = -1;
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1D7127710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  v28 = a3;
  v29 = a4 & 1;
  if (a4)
  {
    v8 = type metadata accessor for FormatInspectionItem(0);
    v9 = *(v8 + 24);
    v10 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v10 - 8) + 56))(&a5[v9], 1, 1, v10);
LABEL_5:
    *a5 = a1;
    *(a5 + 1) = a2;
    *(a5 + 2) = 0;
    *(a5 + 3) = 0;
    v16 = &a5[*(v8 + 28)];
    *v16 = 0;
    *(v16 + 1) = 0;
    v16[16] = -1;
    return result;
  }

  type metadata accessor for UIUserInterfaceSizeClass(0);
  v13 = v12;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    v8 = type metadata accessor for FormatInspectionItem(0);
    v14 = *(v8 + 24);
    *&a5[v14] = v25;
    v15 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v15 - 8) + 56))(&a5[v14], 0, 1, v15);
    goto LABEL_5;
  }

  v26 = v13;
  v27 = sub_1D7133DA4(&qword_1EDF1A818, type metadata accessor for UIUserInterfaceSizeClass);
  *&v25 = v28;
  sub_1D5B7DDE8(&v25, v24);
  v17 = *__swift_project_boxed_opaque_existential_1(v24, v24[3]);
  if (v17)
  {
    v18 = 0xE700000000000000;
    if (v17 == 1)
    {
      v19 = 0x746361706D6F63;
    }

    else if (v17 == 2)
    {
      v19 = 0x72616C75676572;
    }

    else
    {
      v19 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v18 = 0xEB00000000646569;
    v19 = 0x6669636570736E75;
  }

  v20 = type metadata accessor for FormatInspectionItem(0);
  v21 = &a5[*(v20 + 24)];
  *v21 = v19;
  v21[1] = v18;
  v22 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = 0;
  *(a5 + 3) = 0;
  v23 = &a5[*(v20 + 28)];
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = -1;
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1D71279D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  v28 = a3;
  v29 = a4 & 1;
  if (a4)
  {
    v8 = type metadata accessor for FormatInspectionItem(0);
    v9 = *(v8 + 24);
    v10 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v10 - 8) + 56))(&a5[v9], 1, 1, v10);
LABEL_5:
    *a5 = a1;
    *(a5 + 1) = a2;
    *(a5 + 2) = 0;
    *(a5 + 3) = 0;
    v16 = &a5[*(v8 + 28)];
    *v16 = 0;
    *(v16 + 1) = 0;
    v16[16] = -1;
    return result;
  }

  type metadata accessor for UIUserInterfaceStyle(0);
  v13 = v12;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    v8 = type metadata accessor for FormatInspectionItem(0);
    v14 = *(v8 + 24);
    *&a5[v14] = v25;
    v15 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v15 - 8) + 56))(&a5[v14], 0, 1, v15);
    goto LABEL_5;
  }

  v26 = v13;
  v27 = sub_1D7133DA4(&unk_1EDF1A900, type metadata accessor for UIUserInterfaceStyle);
  *&v25 = v28;
  sub_1D5B7DDE8(&v25, v24);
  v17 = *__swift_project_boxed_opaque_existential_1(v24, v24[3]);
  if (v17)
  {
    if (v17 == 2)
    {
      v18 = 0xE400000000000000;
      v19 = 1802658148;
    }

    else if (v17 == 1)
    {
      v18 = 0xE500000000000000;
      v19 = 0x746867696CLL;
    }

    else
    {
      v18 = 0xE700000000000000;
      v19 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v18 = 0xEB00000000646569;
    v19 = 0x6669636570736E75;
  }

  v20 = type metadata accessor for FormatInspectionItem(0);
  v21 = &a5[*(v20 + 24)];
  *v21 = v19;
  v21[1] = v18;
  v22 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = 0;
  *(a5 + 3) = 0;
  v23 = &a5[*(v20 + 28)];
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = -1;
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1D7127C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  v28 = a3;
  v29 = a4 & 1;
  if (a4)
  {
    v8 = type metadata accessor for FormatInspectionItem(0);
    v9 = *(v8 + 24);
    v10 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v10 - 8) + 56))(&a5[v9], 1, 1, v10);
LABEL_5:
    *a5 = a1;
    *(a5 + 1) = a2;
    *(a5 + 2) = 0;
    *(a5 + 3) = 0;
    v16 = &a5[*(v8 + 28)];
    *v16 = 0;
    *(v16 + 1) = 0;
    v16[16] = -1;
    return result;
  }

  type metadata accessor for UIUserInterfaceIdiom(0);
  v13 = v12;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    v8 = type metadata accessor for FormatInspectionItem(0);
    v14 = *(v8 + 24);
    *&a5[v14] = v25;
    v15 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v15 - 8) + 56))(&a5[v14], 0, 1, v15);
    goto LABEL_5;
  }

  v26 = v13;
  v27 = sub_1D7133DA4(&qword_1EC89B318, type metadata accessor for UIUserInterfaceIdiom);
  *&v25 = v28;
  sub_1D5B7DDE8(&v25, v24);
  v17 = *__swift_project_boxed_opaque_existential_1(v24, v24[3]);
  if (v17 > 1)
  {
    switch(v17)
    {
      case 2:
        v18 = 0xE200000000000000;
        v19 = 30324;
        goto LABEL_20;
      case 3:
        v18 = 0xE700000000000000;
        v19 = 0x79616C50726163;
        goto LABEL_20;
      case 5:
        v18 = 0xE300000000000000;
        v19 = 6513005;
        goto LABEL_20;
    }

LABEL_17:
    v18 = 0xE700000000000000;
    v19 = 0x6E776F6E6B6E75;
    goto LABEL_20;
  }

  if (v17 == -1)
  {
    v18 = 0xEB00000000646569;
    v19 = 0x6669636570736E75;
    goto LABEL_20;
  }

  if (!v17)
  {
    v18 = 0xE500000000000000;
    v19 = 0x656E6F6870;
    goto LABEL_20;
  }

  if (v17 != 1)
  {
    goto LABEL_17;
  }

  v18 = 0xE300000000000000;
  v19 = 6578544;
LABEL_20:
  v20 = type metadata accessor for FormatInspectionItem(0);
  v21 = &a5[*(v20 + 24)];
  *v21 = v19;
  v21[1] = v18;
  v22 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = 0;
  *(a5 + 3) = 0;
  v23 = &a5[*(v20 + 28)];
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = -1;
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1D7127FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = MEMORY[0x1E69D7138];
  sub_1D71330BC(0, &unk_1EDF3C080, MEMORY[0x1E69D7138], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v35 - v11;
  sub_1D7133C80(a3, &v35 - v11, &unk_1EDF3C080, v8);
  v13 = sub_1D7259D1C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D7133D00(a3, &unk_1EDF3C080, MEMORY[0x1E69D7138]);
    v15 = type metadata accessor for FormatInspectionItem(0);
    v16 = *(v15 + 24);
    v17 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v17 - 8) + 56))(&a4[v16], 1, 1, v17);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v19 = &a4[*(v15 + 28)];
    *v19 = 0;
    *(v19 + 1) = 0;
    v19[16] = -1;
  }

  else
  {
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (swift_dynamicCast())
    {
      sub_1D7133D00(a3, &unk_1EDF3C080, MEMORY[0x1E69D7138]);
      v20 = v38;
      v21 = type metadata accessor for FormatInspectionItem(0);
      v22 = *(v21 + 24);
      *&a4[v22] = v20;
      v23 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v23 - 8) + 56))(&a4[v22], 0, 1, v23);
      *a4 = a1;
      *(a4 + 1) = a2;
      *(a4 + 2) = 0;
      *(a4 + 3) = 0;
      v24 = &a4[*(v21 + 28)];
      *v24 = 0;
      *(v24 + 1) = 0;
      v24[16] = -1;
    }

    else
    {
      v39 = v13;
      v25 = sub_1D7133DA4(&qword_1EC89B310, MEMORY[0x1E69D7138]);
      v36 = a2;
      v40 = v25;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v38);
      (*(v14 + 16))(boxed_opaque_existential_1, v12, v13);
      sub_1D5B7DDE8(&v38, v37);
      v27 = type metadata accessor for FormatInspectionItem(0);
      v28 = &a4[*(v27 + 24)];
      __swift_project_boxed_opaque_existential_1(v37, v37[3]);
      v29 = sub_1D72644BC();
      v31 = v30;
      sub_1D7133D00(a3, &unk_1EDF3C080, MEMORY[0x1E69D7138]);
      *v28 = v29;
      v28[1] = v31;
      v32 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v32 - 8) + 56))(v28, 0, 1, v32);
      v33 = v36;
      *a4 = a1;
      *(a4 + 1) = v33;
      *(a4 + 2) = 0;
      *(a4 + 3) = 0;
      v34 = &a4[*(v27 + 28)];
      *v34 = 0;
      *(v34 + 1) = 0;
      v34[16] = -1;
      __swift_destroy_boxed_opaque_existential_1(v37);
    }

    return (*(v14 + 8))(v12, v13);
  }

  return result;
}

uint64_t sub_1D71283E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, void *a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v40 = a3;
  v41 = a4 & 1;
  if (a4)
  {
    v10 = type metadata accessor for FormatInspectionItem(0);
    v11 = *(v10 + 24);
    v12 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v12 - 8) + 56))(a7 + v11, 1, 1, v12);
LABEL_9:
    *a7 = a1;
    a7[1] = a2;
    a7[2] = 0;
    a7[3] = 0;
    v18 = *(v10 + 28);
LABEL_10:
    v19 = a7 + v18;
    *v19 = 0;
    *(v19 + 1) = 0;
    v19[16] = -1;
    return result;
  }

  type metadata accessor for FormatCommandAction();
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  sub_1D7133B88(0, &qword_1EC88D750, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D73A8]);
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  type metadata accessor for DebugFormatDebuggerCallStackEntry();
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  type metadata accessor for DebugFormatDebuggerWorkspaceStackEntry();
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  sub_1D5B5A498(0, &unk_1EDF04400);
  if (swift_dynamicCast())
  {

    v20 = [v39[0] attributedName];
    v21 = [v20 string];

    v22 = sub_1D726207C();
    v24 = v23;

    v25 = [v39[0] category];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1D726207C();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v35 = type metadata accessor for FormatInspectionItem(0);
    v36 = *(v35 + 24);
    *(a7 + v36) = v39[0];
    v37 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v37 - 8) + 56))(a7 + v36, 0, 1, v37);
    *a7 = v22;
    a7[1] = v24;
    a7[2] = v27;
    a7[3] = v29;
    v18 = *(v35 + 28);
    goto LABEL_10;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
LABEL_8:
    v10 = type metadata accessor for FormatInspectionItem(0);
    v16 = *(v10 + 24);
    *(a7 + v16) = v39[0];
    v17 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v17 - 8) + 56))(a7 + v16, 0, 1, v17);
    goto LABEL_9;
  }

  v39[3] = a5;
  v39[4] = a6;
  v39[0] = v40;
  sub_1D5B7DDE8(v39, v38);
  v30 = type metadata accessor for FormatInspectionItem(0);
  v31 = (a7 + *(v30 + 24));
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  *v31 = sub_1D72644BC();
  v31[1] = v32;
  v33 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v33 - 8) + 56))(v31, 0, 1, v33);
  *a7 = a1;
  a7[1] = a2;
  a7[2] = 0;
  a7[3] = 0;
  v34 = a7 + *(v30 + 28);
  *v34 = 0;
  *(v34 + 1) = 0;
  v34[16] = -1;
  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t sub_1D712891C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, unint64_t *a5@<X4>, uint64_t (*a6)(uint64_t)@<X5>, char *a7@<X8>)
{
  v13 = a4(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v47 - v16;
  sub_1D71330BC(0, a5, a6, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v47 - v20;
  sub_1D7133C80(a3, &v47 - v20, a5, a6);
  if ((*(v14 + 48))(v21, 1, v13) == 1)
  {
    sub_1D7133D00(a3, a5, a6);
    v22 = type metadata accessor for FormatInspectionItem(0);
    v23 = a1;
    v24 = *(v22 + 24);
    v25 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v25 - 8) + 56))(&a7[v24], 1, 1, v25);
    *a7 = v23;
    *(a7 + 1) = a2;
    *(a7 + 2) = 0;
    *(a7 + 3) = 0;
    v27 = *(v22 + 28);
LABEL_3:
    v28 = &a7[v27];
    *v28 = 0;
    *(v28 + 1) = 0;
    v28[16] = -1;
    return result;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    sub_1D7133D00(a3, a5, a6);
    v29 = a1;
    v30 = v52;
    v31 = type metadata accessor for FormatInspectionItem(0);
    v32 = *(v31 + 24);
    *&a7[v32] = v30;
    v33 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v33 - 8) + 56))(&a7[v32], 0, 1, v33);
    *a7 = v29;
    *(a7 + 1) = a2;
    *(a7 + 2) = 0;
    *(a7 + 3) = 0;
    v34 = &a7[*(v31 + 28)];
    *v34 = 0;
    *(v34 + 1) = 0;
    v34[16] = -1;
  }

  else
  {
    v49 = a1;
    v50 = a2;
    sub_1D5B49474(0, &qword_1EC884160);
    if (!swift_dynamicCast())
    {
      (*(v14 + 32))(v17, v21, v13);
      v48 = type metadata accessor for FormatInspectionItem(0);
      v43 = &a7[*(v48 + 24)];
      *&v52 = 0;
      *(&v52 + 1) = 0xE000000000000000;
      sub_1D7263F9C();
      v44 = v52;
      sub_1D7133D00(a3, a5, a6);
      (*(v14 + 8))(v17, v13);
      *v43 = v44;
      v45 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v45 - 8) + 56))(v43, 0, 1, v45);
      v46 = v50;
      *a7 = v49;
      *(a7 + 1) = v46;
      *(a7 + 2) = 0;
      *(a7 + 3) = 0;
      v27 = *(v48 + 28);
      goto LABEL_3;
    }

    sub_1D5B7DDE8(&v52, v51);
    v35 = type metadata accessor for FormatInspectionItem(0);
    v36 = &a7[*(v35 + 24)];
    v47 = v51[4];
    v48 = v35;
    __swift_project_boxed_opaque_existential_1(v51, v51[3]);
    v37 = sub_1D72644BC();
    v39 = v38;
    sub_1D7133D00(a3, a5, a6);
    *v36 = v37;
    v36[1] = v39;
    v40 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v40 - 8) + 56))(v36, 0, 1, v40);
    v41 = v50;
    *a7 = v49;
    *(a7 + 1) = v41;
    *(a7 + 2) = 0;
    *(a7 + 3) = 0;
    v42 = &a7[*(v48 + 28)];
    *v42 = 0;
    *(v42 + 1) = 0;
    v42[16] = -1;
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  return (*(v14 + 8))(v21, v13);
}

uint64_t sub_1D7128E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = MEMORY[0x1E69D7220];
  sub_1D71330BC(0, &qword_1EC896690, MEMORY[0x1E69D7220], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v35 - v11;
  sub_1D7133C80(a3, &v35 - v11, &qword_1EC896690, v8);
  v13 = sub_1D725A0AC();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D7133D00(a3, &qword_1EC896690, MEMORY[0x1E69D7220]);
    v15 = type metadata accessor for FormatInspectionItem(0);
    v16 = *(v15 + 24);
    v17 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v17 - 8) + 56))(&a4[v16], 1, 1, v17);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v19 = &a4[*(v15 + 28)];
    *v19 = 0;
    *(v19 + 1) = 0;
    v19[16] = -1;
  }

  else
  {
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (swift_dynamicCast())
    {
      sub_1D7133D00(a3, &qword_1EC896690, MEMORY[0x1E69D7220]);
      v20 = v38;
      v21 = type metadata accessor for FormatInspectionItem(0);
      v22 = *(v21 + 24);
      *&a4[v22] = v20;
      v23 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v23 - 8) + 56))(&a4[v22], 0, 1, v23);
      *a4 = a1;
      *(a4 + 1) = a2;
      *(a4 + 2) = 0;
      *(a4 + 3) = 0;
      v24 = &a4[*(v21 + 28)];
      *v24 = 0;
      *(v24 + 1) = 0;
      v24[16] = -1;
    }

    else
    {
      v39 = v13;
      v25 = sub_1D7133DA4(&qword_1EC89B308, MEMORY[0x1E69D7220]);
      v36 = a2;
      v40 = v25;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v38);
      (*(v14 + 16))(boxed_opaque_existential_1, v12, v13);
      sub_1D5B7DDE8(&v38, v37);
      v27 = type metadata accessor for FormatInspectionItem(0);
      v28 = &a4[*(v27 + 24)];
      __swift_project_boxed_opaque_existential_1(v37, v37[3]);
      v29 = sub_1D72644BC();
      v31 = v30;
      sub_1D7133D00(a3, &qword_1EC896690, MEMORY[0x1E69D7220]);
      *v28 = v29;
      v28[1] = v31;
      v32 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v32 - 8) + 56))(v28, 0, 1, v32);
      v33 = v36;
      *a4 = a1;
      *(a4 + 1) = v33;
      *(a4 + 2) = 0;
      *(a4 + 3) = 0;
      v34 = &a4[*(v27 + 28)];
      *v34 = 0;
      *(v34 + 1) = 0;
      v34[16] = -1;
      __swift_destroy_boxed_opaque_existential_1(v37);
    }

    return (*(v14 + 8))(v12, v13);
  }

  return result;
}

uint64_t sub_1D7129220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a3[1];
  v40 = *a3;
  v41 = v7;
  v42 = *(a3 + 32);
  if (v42)
  {
    v8 = type metadata accessor for FormatInspectionItem(0);
    v9 = *(v8 + 24);
    v10 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
LABEL_9:
    *a4 = a1;
    a4[1] = a2;
    a4[2] = 0;
    a4[3] = 0;
    v14 = *(v8 + 28);
LABEL_10:
    v15 = a4 + v14;
    *v15 = 0;
    *(v15 + 1) = 0;
    v15[16] = -1;
    return result;
  }

  type metadata accessor for CGRect(0);
  type metadata accessor for FormatCommandAction();
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  sub_1D7133B88(0, &qword_1EC88D750, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D73A8]);
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  type metadata accessor for DebugFormatDebuggerCallStackEntry();
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  type metadata accessor for DebugFormatDebuggerWorkspaceStackEntry();
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  sub_1D5B5A498(0, &unk_1EDF04400);
  if (swift_dynamicCast())
  {

    v16 = [v38[0] attributedName];
    v17 = [v16 string];

    v18 = sub_1D726207C();
    v20 = v19;

    v21 = [v38[0] category];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1D726207C();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v31 = type metadata accessor for FormatInspectionItem(0);
    v32 = *(v31 + 24);
    *(a4 + v32) = v38[0];
    v33 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v33 - 8) + 56))(a4 + v32, 0, 1, v33);
    *a4 = v18;
    a4[1] = v20;
    a4[2] = v23;
    a4[3] = v25;
    v14 = *(v31 + 28);
    goto LABEL_10;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
LABEL_8:
    v8 = type metadata accessor for FormatInspectionItem(0);
    v12 = *(v8 + 24);
    *(a4 + v12) = v38[0];
    v13 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v13 - 8) + 56))(a4 + v12, 0, 1, v13);
    goto LABEL_9;
  }

  sub_1D5B49474(0, &qword_1EC884160);
  if (!swift_dynamicCast())
  {
    v34 = type metadata accessor for FormatInspectionItem(0);
    v35 = (a4 + *(v34 + 24));
    v37[0] = 0;
    v37[1] = 0xE000000000000000;
    v39 = v41;
    *v38 = v40;
    sub_1D7263F9C();
    *v35 = 0;
    v35[1] = 0xE000000000000000;
    v36 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
    *a4 = a1;
    a4[1] = a2;
    a4[2] = 0;
    a4[3] = 0;
    v14 = *(v34 + 28);
    goto LABEL_10;
  }

  sub_1D5B7DDE8(v38, v37);
  v26 = type metadata accessor for FormatInspectionItem(0);
  v27 = (a4 + *(v26 + 24));
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  *v27 = sub_1D72644BC();
  v27[1] = v28;
  v29 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v29 - 8) + 56))(v27, 0, 1, v29);
  *a4 = a1;
  a4[1] = a2;
  a4[2] = 0;
  a4[3] = 0;
  v30 = a4 + *(v26 + 28);
  *v30 = 0;
  *(v30 + 1) = 0;
  v30[16] = -1;
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1D7129824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X5>, uint64_t *a7@<X8>)
{
  v48 = a3;
  if (!a3)
  {
    v15 = type metadata accessor for FormatInspectionItem(0);
    v16 = *(v15 + 24);
    v17 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v17 - 8) + 56))(a7 + v16, 1, 1, v17);
    *a7 = a1;
    a7[1] = a2;
    a7[2] = 0;
    a7[3] = 0;
    v19 = a7 + *(v15 + 28);
    *v19 = 0;
    *(v19 + 1) = 0;
    v19[16] = -1;
    return result;
  }

  sub_1D71337A0(0, a4, a5, MEMORY[0x1E69E62F8]);
  v14 = v13;
  type metadata accessor for FormatCommandAction();
  if (!swift_dynamicCast())
  {
    sub_1D7133B88(0, &qword_1EC88D750, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D73A8]);
    if (!swift_dynamicCast())
    {
      type metadata accessor for DebugFormatDebuggerCallStackEntry();
      if (!swift_dynamicCast())
      {
        type metadata accessor for DebugFormatDebuggerWorkspaceStackEntry();
        if (!swift_dynamicCast())
        {
          sub_1D5B5A498(0, &unk_1EDF04400);
          if (swift_dynamicCast())
          {

            v25 = [v47[0] attributedName];
            v26 = [v25 string];

            v27 = sub_1D726207C();
            v29 = v28;

            v30 = [v47[0] category];
            if (v30)
            {
              v31 = v30;
              v32 = sub_1D726207C();
              v34 = v33;
            }

            else
            {
              v32 = 0;
              v34 = 0;
            }

            v43 = type metadata accessor for FormatInspectionItem(0);
            v44 = *(v43 + 24);
            *(a7 + v44) = v47[0];
            v45 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v45 - 8) + 56))(a7 + v44, 0, 1, v45);
            *a7 = v27;
            a7[1] = v29;
            a7[2] = v32;
            a7[3] = v34;
            v23 = *(v43 + 28);
            goto LABEL_9;
          }

          sub_1D5B49474(0, &qword_1EDF3C5D0);
          if (!swift_dynamicCast())
          {
            v47[3] = v14;
            v35 = a6;
            v36 = a5;
            v47[4] = sub_1D7133160(v35, a4, a5);
            v47[0] = v48;
            sub_1D5B7DDE8(v47, v46);
            v37 = type metadata accessor for FormatInspectionItem(0);
            v38 = (a7 + *(v37 + 24));
            v39 = *__swift_project_boxed_opaque_existential_1(v46, v46[3]);

            *v38 = MEMORY[0x1DA6F9D20](v39, v36);
            v38[1] = v40;
            v41 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v41 - 8) + 56))(v38, 0, 1, v41);
            *a7 = a1;
            a7[1] = a2;
            a7[2] = 0;
            a7[3] = 0;
            v42 = a7 + *(v37 + 28);
            *v42 = 0;
            *(v42 + 1) = 0;
            v42[16] = -1;
            __swift_destroy_boxed_opaque_existential_1(v46);
          }
        }
      }
    }
  }

  v20 = type metadata accessor for FormatInspectionItem(0);
  v21 = *(v20 + 24);
  *(a7 + v21) = v47[0];
  v22 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v22 - 8) + 56))(a7 + v21, 0, 1, v22);
  *a7 = a1;
  a7[1] = a2;
  a7[2] = 0;
  a7[3] = 0;
  v23 = *(v20 + 28);
LABEL_9:
  v24 = a7 + v23;
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = -1;
}

uint64_t sub_1D7129D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v26 = a3;
  if (a3)
  {
    v7 = type metadata accessor for SportsScoreDataVisualization();
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (swift_dynamicCast())
    {
      v8 = type metadata accessor for FormatInspectionItem(0);
      v9 = *(v8 + 24);
      *&a4[v9] = v23;
      v10 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v10 - 8) + 56))(&a4[v9], 0, 1, v10);
      *a4 = a1;
      *(a4 + 1) = a2;
      *(a4 + 2) = 0;
      *(a4 + 3) = 0;
      v11 = &a4[*(v8 + 28)];
      *v11 = 0;
      *(v11 + 1) = 0;
      v11[16] = -1;
    }

    else
    {
      v24 = v7;
      v25 = sub_1D7133DA4(&qword_1EC89B250, type metadata accessor for SportsScoreDataVisualization);
      *&v23 = v26;
      sub_1D5B7DDE8(&v23, v22);
      v17 = type metadata accessor for FormatInspectionItem(0);
      v18 = &a4[*(v17 + 24)];
      __swift_project_boxed_opaque_existential_1(v22, v22[3]);

      *v18 = SportsScoreDataVisualization.description.getter();
      v18[1] = v19;
      v20 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
      *a4 = a1;
      *(a4 + 1) = a2;
      *(a4 + 2) = 0;
      *(a4 + 3) = 0;
      v21 = &a4[*(v17 + 28)];
      *v21 = 0;
      *(v21 + 1) = 0;
      v21[16] = -1;
      __swift_destroy_boxed_opaque_existential_1(v22);
    }
  }

  else
  {
    v12 = type metadata accessor for FormatInspectionItem(0);
    v13 = *(v12 + 24);
    v14 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v14 - 8) + 56))(&a4[v13], 1, 1, v14);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v16 = &a4[*(v12 + 28)];
    *v16 = 0;
    *(v16 + 1) = 0;
    v16[16] = -1;
  }

  return result;
}

uint64_t sub_1D712A058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, char *a5@<X8>)
{
  v28 = a3;
  if (a3)
  {
    a4(0);
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (swift_dynamicCast())
    {
      v8 = type metadata accessor for FormatInspectionItem(0);
      v9 = *(v8 + 24);
      *&a5[v9] = v27;
      v10 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v10 - 8) + 56))(&a5[v9], 0, 1, v10);
      *a5 = a1;
      *(a5 + 1) = a2;
      *(a5 + 2) = 0;
      *(a5 + 3) = 0;
      v11 = &a5[*(v8 + 28)];
      *v11 = 0;
      *(v11 + 1) = 0;
      v11[16] = -1;
    }

    sub_1D5B49474(0, &qword_1EC884160);
    if (swift_dynamicCast())
    {
      sub_1D5B7DDE8(&v27, v26);
      v17 = type metadata accessor for FormatInspectionItem(0);
      v18 = &a5[*(v17 + 24)];
      __swift_project_boxed_opaque_existential_1(v26, v26[3]);
      *v18 = sub_1D72644BC();
      v18[1] = v19;
      v20 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
      *a5 = a1;
      *(a5 + 1) = a2;
      *(a5 + 2) = 0;
      *(a5 + 3) = 0;
      v21 = &a5[*(v17 + 28)];
      *v21 = 0;
      *(v21 + 1) = 0;
      v21[16] = -1;
      __swift_destroy_boxed_opaque_existential_1(v26);
    }

    v22 = type metadata accessor for FormatInspectionItem(0);
    v23 = &a5[*(v22 + 24)];
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    v26[0] = v28;
    sub_1D7263F9C();

    *v23 = 0;
    *(v23 + 1) = 0xE000000000000000;
    v24 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
    *a5 = a1;
    *(a5 + 1) = a2;
    *(a5 + 2) = 0;
    *(a5 + 3) = 0;
    v16 = *(v22 + 28);
  }

  else
  {
    v12 = type metadata accessor for FormatInspectionItem(0);
    v13 = *(v12 + 24);
    v14 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
    *a5 = a1;
    *(a5 + 1) = a2;
    *(a5 + 2) = 0;
    *(a5 + 3) = 0;
    v16 = *(v12 + 28);
  }

  v25 = &a5[v16];
  *v25 = 0;
  *(v25 + 1) = 0;
  v25[16] = -1;
  return result;
}

uint64_t sub_1D712A3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char *a4@<X8>)
{
  v7 = a3[1];
  v31 = *a3;
  v32 = v7;
  v8 = a3[3];
  v33 = a3[2];
  v34 = v8;
  if (v8)
  {
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (swift_dynamicCast())
    {
      v9 = type metadata accessor for FormatInspectionItem(0);
      v10 = *(v9 + 24);
      *&a4[v10] = v25;
      v11 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v11 - 8) + 56))(&a4[v10], 0, 1, v11);
      *a4 = a1;
      *(a4 + 1) = a2;
      *(a4 + 2) = 0;
      *(a4 + 3) = 0;
      v12 = &a4[*(v9 + 28)];
      *v12 = 0;
      *(v12 + 1) = 0;
      v12[16] = -1;
LABEL_7:
      v26 = v31;
      v27 = v32;
      v28 = v33;
      v29 = v34;
      return sub_1D5F2DE58(&v26);
    }

    sub_1D5B49474(0, &qword_1EC884160);
    if (swift_dynamicCast())
    {
      sub_1D5B7DDE8(&v30, &v26);
      v17 = type metadata accessor for FormatInspectionItem(0);
      v18 = &a4[*(v17 + 24)];
      __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
      *v18 = sub_1D72644BC();
      v18[1] = v19;
      v20 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
      *a4 = a1;
      *(a4 + 1) = a2;
      *(a4 + 2) = 0;
      *(a4 + 3) = 0;
      v21 = &a4[*(v17 + 28)];
      *v21 = 0;
      *(v21 + 1) = 0;
      v21[16] = -1;
      __swift_destroy_boxed_opaque_existential_1(&v26);
      goto LABEL_7;
    }

    v26 = v31;
    v27 = v32;
    v28 = v33;
    v29 = v34;
    v13 = type metadata accessor for FormatInspectionItem(0);
    v22 = &a4[*(v13 + 24)];
    sub_1D7263F9C();
    sub_1D5F2DE58(&v26);
    *v22 = 0;
    *(v22 + 1) = 0xE000000000000000;
    v23 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
  }

  else
  {
    v13 = type metadata accessor for FormatInspectionItem(0);
    v14 = *(v13 + 24);
    v15 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v15 - 8) + 56))(&a4[v14], 1, 1, v15);
  }

  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v24 = &a4[*(v13 + 28)];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = -1;
  return result;
}

uint64_t sub_1D712A758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v39 = a3;
  if (!a3)
  {
    v9 = type metadata accessor for FormatInspectionItem(0);
    v10 = *(v9 + 24);
    v11 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v11 - 8) + 56))(a4 + v10, 1, 1, v11);
    *a4 = a1;
    a4[1] = a2;
    a4[2] = 0;
    a4[3] = 0;
    v13 = a4 + *(v9 + 28);
    *v13 = 0;
    *(v13 + 1) = 0;
    v13[16] = -1;
    return result;
  }

  sub_1D5B81B04();
  v8 = v7;
  type metadata accessor for FormatCommandAction();
  if (!swift_dynamicCast())
  {
    sub_1D7133B88(0, &qword_1EC88D750, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D73A8]);
    if (!swift_dynamicCast())
    {
      type metadata accessor for DebugFormatDebuggerCallStackEntry();
      if (!swift_dynamicCast())
      {
        type metadata accessor for DebugFormatDebuggerWorkspaceStackEntry();
        if (!swift_dynamicCast())
        {
          sub_1D5B5A498(0, &unk_1EDF04400);
          if (swift_dynamicCast())
          {

            v19 = [v38[0] attributedName];
            v20 = [v19 string];

            v21 = sub_1D726207C();
            v23 = v22;

            v24 = [v38[0] category];
            if (v24)
            {
              v25 = v24;
              v26 = sub_1D726207C();
              v28 = v27;
            }

            else
            {
              v26 = 0;
              v28 = 0;
            }

            v34 = type metadata accessor for FormatInspectionItem(0);
            v35 = *(v34 + 24);
            *(a4 + v35) = v38[0];
            v36 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v36 - 8) + 56))(a4 + v35, 0, 1, v36);
            *a4 = v21;
            a4[1] = v23;
            a4[2] = v26;
            a4[3] = v28;
            v17 = *(v34 + 28);
            goto LABEL_9;
          }

          sub_1D5B49474(0, &qword_1EDF3C5D0);
          if (!swift_dynamicCast())
          {
            v38[3] = v8;
            v38[4] = sub_1D7133DA4(&qword_1EC89B258, sub_1D5B81B04);
            v38[0] = v39;
            sub_1D5B7DDE8(v38, v37);
            v29 = type metadata accessor for FormatInspectionItem(0);
            v30 = (a4 + *(v29 + 24));
            __swift_project_boxed_opaque_existential_1(v37, v37[3]);

            *v30 = sub_1D7262B1C();
            v30[1] = v31;
            v32 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v32 - 8) + 56))(v30, 0, 1, v32);
            *a4 = a1;
            a4[1] = a2;
            a4[2] = 0;
            a4[3] = 0;
            v33 = a4 + *(v29 + 28);
            *v33 = 0;
            *(v33 + 1) = 0;
            v33[16] = -1;
            __swift_destroy_boxed_opaque_existential_1(v37);
          }
        }
      }
    }
  }

  v14 = type metadata accessor for FormatInspectionItem(0);
  v15 = *(v14 + 24);
  *(a4 + v15) = v38[0];
  v16 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(a4 + v15, 0, 1, v16);
  *a4 = a1;
  a4[1] = a2;
  a4[2] = 0;
  a4[3] = 0;
  v17 = *(v14 + 28);
LABEL_9:
  v18 = a4 + v17;
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = -1;
}

uint64_t sub_1D712ACD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v25 = a3;
  if (a3 == 4)
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
LABEL_5:
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v13 = &a4[*(v7 + 28)];
    *v13 = 0;
    *(v13 + 1) = 0;
    v13[16] = -1;
    return result;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v11 = *(v7 + 24);
    *&a4[v11] = v22;
    v12 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v12 - 8) + 56))(&a4[v11], 0, 1, v12);
    goto LABEL_5;
  }

  v23 = &type metadata for FormatImageResize;
  v24 = sub_1D71334E4();
  LOBYTE(v22) = v25;
  sub_1D5B7DDE8(&v22, v21);
  v14 = *__swift_project_boxed_opaque_existential_1(v21, v21[3]);
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = 0xE400000000000000;
      v16 = 1701603700;
    }

    else
    {
      v15 = 0xE900000000000063;
      v16 = 0x69736E6972746E69;
    }
  }

  else if (v14)
  {
    v15 = 0xE400000000000000;
    v16 = 1886351971;
  }

  else
  {
    v15 = 0xE500000000000000;
    v16 = 0x656C616373;
  }

  v17 = type metadata accessor for FormatInspectionItem(0);
  v18 = &a4[*(v17 + 24)];
  *v18 = v16;
  v18[1] = v15;
  v19 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v20 = &a4[*(v17 + 28)];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = -1;
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1D712AF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v25 = a3;
  if (a3 == 9)
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
LABEL_5:
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v13 = &a4[*(v7 + 28)];
    *v13 = 0;
    *(v13 + 1) = 0;
    v13[16] = -1;
    return result;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v11 = *(v7 + 24);
    *&a4[v11] = v22;
    v12 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v12 - 8) + 56))(&a4[v11], 0, 1, v12);
    goto LABEL_5;
  }

  v23 = &type metadata for FormatContentMode;
  v24 = sub_1D7133490();
  LOBYTE(v22) = v25;
  sub_1D5B7DDE8(&v22, v21);
  v14 = *__swift_project_boxed_opaque_existential_1(v21, v21[3]);
  if (v14 <= 3)
  {
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = 0xE600000000000000;
        v16 = 0x6D6F74746F62;
      }

      else
      {
        v15 = 0xE400000000000000;
        v16 = 1952867692;
      }
    }

    else if (v14)
    {
      v15 = 0xE300000000000000;
      v16 = 7368564;
    }

    else
    {
      v15 = 0xE600000000000000;
      v16 = 0x7265746E6563;
    }
  }

  else if (v14 <= 5)
  {
    if (v14 == 4)
    {
      v15 = 0xE500000000000000;
      v16 = 0x7468676972;
    }

    else
    {
      v15 = 0xE700000000000000;
      v16 = 0x7466654C706F74;
    }
  }

  else if (v14 == 6)
  {
    v15 = 0xE800000000000000;
    v16 = 0x7468676952706F74;
  }

  else if (v14 == 7)
  {
    v15 = 0xEA00000000007466;
    v16 = 0x654C6D6F74746F62;
  }

  else
  {
    v15 = 0xEB00000000746867;
    v16 = 0x69526D6F74746F62;
  }

  v17 = type metadata accessor for FormatInspectionItem(0);
  v18 = &a4[*(v17 + 24)];
  *v18 = v16;
  v18[1] = v15;
  v19 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v20 = &a4[*(v17 + 28)];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = -1;
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1D712B280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for FormatInspectionItem(0);
  v9 = (a4 + *(v8 + 24));
  if (a3 == 3)
  {
    v10 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    *v9 = sub_1D7133488;
    v9[1] = v12;
    v13 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  }

  *a4 = a1;
  a4[1] = a2;
  a4[2] = 0;
  a4[3] = 0;
  v14 = a4 + *(v8 + 28);
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = -1;
  return result;
}

uint64_t sub_1D712B3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v23 = a3;
  if (a3 == 15)
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
LABEL_5:
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v13 = &a4[*(v7 + 28)];
    *v13 = 0;
    *(v13 + 1) = 0;
    v13[16] = -1;
    return result;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v11 = *(v7 + 24);
    *&a4[v11] = v20;
    v12 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v12 - 8) + 56))(&a4[v11], 0, 1, v12);
    goto LABEL_5;
  }

  v21 = &type metadata for FormatBlurEffectStyle;
  v22 = sub_1D7133AA4();
  LOBYTE(v20) = v23;
  sub_1D5B7DDE8(&v20, v19);
  v14 = type metadata accessor for FormatInspectionItem(0);
  v15 = &a4[*(v14 + 24)];
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  *v15 = FormatBlurEffectStyle.description.getter();
  *(v15 + 1) = v16;
  v17 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v18 = &a4[*(v14 + 28)];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = -1;
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_1D712B5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v25 = a3;
  if (a3 == 8)
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
LABEL_5:
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v13 = &a4[*(v7 + 28)];
    *v13 = 0;
    *(v13 + 1) = 0;
    v13[16] = -1;
    return result;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v11 = *(v7 + 24);
    *&a4[v11] = v22;
    v12 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v12 - 8) + 56))(&a4[v11], 0, 1, v12);
    goto LABEL_5;
  }

  v23 = &type metadata for FormatVibrancyEffectStyle;
  v24 = sub_1D7133A50();
  LOBYTE(v22) = v25;
  sub_1D5B7DDE8(&v22, v21);
  v14 = *__swift_project_boxed_opaque_existential_1(v21, v21[3]);
  if (v14 > 3)
  {
    if (v14 <= 5)
    {
      if (v14 == 4)
      {
        v15 = 0xE400000000000000;
        v16 = 1819044198;
        goto LABEL_23;
      }

      v15 = 0xED00006C6C694679;
LABEL_20:
      v16 = 0x7261646E6F636573;
      goto LABEL_23;
    }

    if (v14 != 6)
    {
      v15 = 0xE900000000000072;
      v16 = 0x6F74617261706573;
      goto LABEL_23;
    }

    v15 = 0xEC0000006C6C6946;
LABEL_17:
    v16 = 0x7972616974726574;
    goto LABEL_23;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      v15 = 0xEF6C6562614C7972;
      v16 = 0x616E726574617571;
      goto LABEL_23;
    }

    v15 = 0xED00006C6562614CLL;
    goto LABEL_17;
  }

  if (v14)
  {
    v15 = 0xEE006C6562614C79;
    goto LABEL_20;
  }

  v15 = 0xE500000000000000;
  v16 = 0x6C6562616CLL;
LABEL_23:
  v17 = type metadata accessor for FormatInspectionItem(0);
  v18 = &a4[*(v17 + 24)];
  *v18 = v16;
  v18[1] = v15;
  v19 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v20 = &a4[*(v17 + 28)];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = -1;
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1D712B8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v28 = a3;
  if (a3)
  {
    sub_1D7133B88(0, &qword_1EDF32838, sub_1D5C5A3D0, &type metadata for FormatInteger, type metadata accessor for FormatEquation);
    v8 = v7;
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (swift_dynamicCast())
    {
      v9 = type metadata accessor for FormatInspectionItem(0);
      v10 = *(v9 + 24);
      *&a4[v10] = v25;
      v11 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v11 - 8) + 56))(&a4[v10], 0, 1, v11);
      *a4 = a1;
      *(a4 + 1) = a2;
      *(a4 + 2) = 0;
      *(a4 + 3) = 0;
      v12 = &a4[*(v9 + 28)];
      *v12 = 0;
      *(v12 + 1) = 0;
      v12[16] = -1;
    }

    else
    {
      v26 = v8;
      v27 = sub_1D7133BF0();
      *&v25 = v28;
      sub_1D5B7DDE8(&v25, v24);
      v18 = type metadata accessor for FormatInspectionItem(0);
      v19 = &a4[*(v18 + 24)];
      v20 = *__swift_project_boxed_opaque_existential_1(v24, v24[3]);

      *v19 = sub_1D6937104(v20);
      v19[1] = v21;
      v22 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v22 - 8) + 56))(v19, 0, 1, v22);
      *a4 = a1;
      *(a4 + 1) = a2;
      *(a4 + 2) = 0;
      *(a4 + 3) = 0;
      v23 = &a4[*(v18 + 28)];
      *v23 = 0;
      *(v23 + 1) = 0;
      v23[16] = -1;
      __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  else
  {
    v13 = type metadata accessor for FormatInspectionItem(0);
    v14 = *(v13 + 24);
    v15 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v15 - 8) + 56))(&a4[v14], 1, 1, v15);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v17 = &a4[*(v13 + 28)];
    *v17 = 0;
    *(v17 + 1) = 0;
    v17[16] = -1;
  }

  return result;
}

uint64_t sub_1D712BB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  v7 = a3;
  v8 = type metadata accessor for FormatInspectionItem(0);
  v9 = (a4 + *(v8 + 24));
  if (v7 == 14)
  {
    v10 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  else
  {
    sub_1D7263F9C();
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    v12 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  *a4 = a1;
  a4[1] = a2;
  a4[2] = 0;
  a4[3] = 0;
  v13 = a4 + *(v8 + 28);
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = -1;
  return result;
}

uint64_t sub_1D712BCE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v23 = a3;
  if (a3 == 2)
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  }

  else
  {
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (swift_dynamicCast())
    {
      v7 = type metadata accessor for FormatInspectionItem(0);
      v11 = *(v7 + 24);
      *&a4[v11] = v22;
      v12 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v12 - 8) + 56))(&a4[v11], 0, 1, v12);
    }

    else
    {
      sub_1D5B49474(0, &qword_1EC884160);
      if (swift_dynamicCast())
      {
        sub_1D5B7DDE8(&v22, v21);
        v13 = type metadata accessor for FormatInspectionItem(0);
        v14 = &a4[*(v13 + 24)];
        __swift_project_boxed_opaque_existential_1(v21, v21[3]);
        *v14 = sub_1D72644BC();
        v14[1] = v15;
        v16 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
        *a4 = a1;
        *(a4 + 1) = a2;
        *(a4 + 2) = 0;
        *(a4 + 3) = 0;
        v17 = &a4[*(v13 + 28)];
        *v17 = 0;
        *(v17 + 1) = 0;
        v17[16] = -1;
        return __swift_destroy_boxed_opaque_existential_1(v21);
      }

      v7 = type metadata accessor for FormatInspectionItem(0);
      v18 = &a4[*(v7 + 24)];
      *&v22 = 0;
      *(&v22 + 1) = 0xE000000000000000;
      LOBYTE(v21[0]) = v23;
      sub_1D7263F9C();
      *v18 = 0;
      *(v18 + 1) = 0xE000000000000000;
      v19 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
    }
  }

  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v20 = &a4[*(v7 + 28)];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = -1;
  return result;
}

uint64_t sub_1D712BFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  v7 = a3;
  v8 = type metadata accessor for FormatInspectionItem(0);
  v9 = (a4 + *(v8 + 24));
  if (v7 == 4)
  {
    v10 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  else
  {
    sub_1D7263F9C();
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    v12 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  *a4 = a1;
  a4[1] = a2;
  a4[2] = 0;
  a4[3] = 0;
  v13 = a4 + *(v8 + 28);
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = -1;
  return result;
}

uint64_t sub_1D712C120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  v7 = a3;
  v8 = type metadata accessor for FormatInspectionItem(0);
  v9 = (a4 + *(v8 + 24));
  if (v7 == 5)
  {
    v10 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  else
  {
    sub_1D7263F9C();
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    v12 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  *a4 = a1;
  a4[1] = a2;
  a4[2] = 0;
  a4[3] = 0;
  v13 = a4 + *(v8 + 28);
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = -1;
  return result;
}

uint64_t sub_1D712C2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t *a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void)@<X6>, void (*a8)(void)@<X7>, uint64_t *a9@<X8>)
{
  v46 = a3;
  if (!a3)
  {
    v16 = type metadata accessor for FormatInspectionItem(0);
    v17 = *(v16 + 24);
    v18 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v18 - 8) + 56))(a9 + v17, 1, 1, v18);
    *a9 = a1;
    a9[1] = a2;
    a9[2] = 0;
    a9[3] = 0;
    v20 = a9 + *(v16 + 28);
    *v20 = 0;
    *(v20 + 1) = 0;
    v20[16] = -1;
    return result;
  }

  sub_1D7133B88(0, a4, a5, a6, MEMORY[0x1E69E64E8]);
  v15 = v14;
  type metadata accessor for FormatCommandAction();
  if (!swift_dynamicCast())
  {
    sub_1D7133B88(0, &qword_1EC88D750, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D73A8]);
    if (!swift_dynamicCast())
    {
      type metadata accessor for DebugFormatDebuggerCallStackEntry();
      if (!swift_dynamicCast())
      {
        type metadata accessor for DebugFormatDebuggerWorkspaceStackEntry();
        if (!swift_dynamicCast())
        {
          sub_1D5B5A498(0, &unk_1EDF04400);
          if (swift_dynamicCast())
          {

            v26 = [v45[0] attributedName];
            v27 = [v26 string];

            v28 = sub_1D726207C();
            v30 = v29;

            v31 = [v45[0] category];
            if (v31)
            {
              v32 = v31;
              v33 = sub_1D726207C();
              v35 = v34;
            }

            else
            {
              v33 = 0;
              v35 = 0;
            }

            v41 = type metadata accessor for FormatInspectionItem(0);
            v42 = *(v41 + 24);
            *(a9 + v42) = v45[0];
            v43 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v43 - 8) + 56))(a9 + v42, 0, 1, v43);
            *a9 = v28;
            a9[1] = v30;
            a9[2] = v33;
            a9[3] = v35;
            v24 = *(v41 + 28);
            goto LABEL_9;
          }

          sub_1D5B49474(0, &qword_1EDF3C5D0);
          if (!swift_dynamicCast())
          {
            v45[3] = v15;
            v45[4] = a7();
            v45[0] = v46;
            sub_1D5B7DDE8(v45, v44);
            v36 = type metadata accessor for FormatInspectionItem(0);
            v37 = (a9 + *(v36 + 24));
            __swift_project_boxed_opaque_existential_1(v44, v44[3]);
            a8();

            *v37 = sub_1D7262B1C();
            v37[1] = v38;
            v39 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v39 - 8) + 56))(v37, 0, 1, v39);
            *a9 = a1;
            a9[1] = a2;
            a9[2] = 0;
            a9[3] = 0;
            v40 = a9 + *(v36 + 28);
            *v40 = 0;
            *(v40 + 1) = 0;
            v40[16] = -1;
            __swift_destroy_boxed_opaque_existential_1(v44);
          }
        }
      }
    }
  }

  v21 = type metadata accessor for FormatInspectionItem(0);
  v22 = *(v21 + 24);
  *(a9 + v22) = v45[0];
  v23 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v23 - 8) + 56))(a9 + v22, 0, 1, v23);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = 0;
  a9[3] = 0;
  v24 = *(v21 + 28);
LABEL_9:
  v25 = a9 + v24;
  *v25 = 0;
  *(v25 + 1) = 0;
  v25[16] = -1;
}

uint64_t sub_1D712C844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v25 = a3;
  if ((~a3 & 0xF000000000000007) == 0)
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
LABEL_3:
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v11 = &a4[*(v7 + 28)];
    *v11 = 0;
    *(v11 + 1) = 0;
    v11[16] = -1;
    return result;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    v12 = type metadata accessor for FormatInspectionItem(0);
    v13 = *(v12 + 24);
    *&a4[v13] = v24;
    v14 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v14 - 8) + 56))(&a4[v13], 0, 1, v14);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v15 = &a4[*(v12 + 28)];
    *v15 = 0;
    *(v15 + 1) = 0;
    v15[16] = -1;
  }

  else
  {
    sub_1D5B49474(0, &qword_1EC884160);
    if (!swift_dynamicCast())
    {
      v7 = type metadata accessor for FormatInspectionItem(0);
      v21 = &a4[*(v7 + 24)];
      *&v24 = 0;
      *(&v24 + 1) = 0xE000000000000000;
      v23[0] = v25;
      sub_1D7263F9C();

      *v21 = 0;
      *(v21 + 1) = 0xE000000000000000;
      v22 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
      goto LABEL_3;
    }

    sub_1D5B7DDE8(&v24, v23);
    v16 = type metadata accessor for FormatInspectionItem(0);
    v17 = &a4[*(v16 + 24)];
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    *v17 = sub_1D72644BC();
    v17[1] = v18;
    v19 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v20 = &a4[*(v16 + 28)];
    *v20 = 0;
    *(v20 + 1) = 0;
    v20[16] = -1;
    __swift_destroy_boxed_opaque_existential_1(v23);
  }
}

uint64_t sub_1D712CB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, char *a4@<X8>)
{
  v23 = a3;
  if (a3 < 0xF8u)
  {
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (swift_dynamicCast())
    {
      v7 = type metadata accessor for FormatInspectionItem(0);
      v11 = *(v7 + 24);
      *&a4[v11] = v22;
      v12 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v12 - 8) + 56))(&a4[v11], 0, 1, v12);
    }

    else
    {
      sub_1D5B49474(0, &qword_1EC884160);
      if (swift_dynamicCast())
      {
        sub_1D5B7DDE8(&v22, v21);
        v13 = type metadata accessor for FormatInspectionItem(0);
        v14 = &a4[*(v13 + 24)];
        __swift_project_boxed_opaque_existential_1(v21, v21[3]);
        *v14 = sub_1D72644BC();
        v14[1] = v15;
        v16 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
        *a4 = a1;
        *(a4 + 1) = a2;
        *(a4 + 2) = 0;
        *(a4 + 3) = 0;
        v17 = &a4[*(v13 + 28)];
        *v17 = 0;
        *(v17 + 1) = 0;
        v17[16] = -1;
        return __swift_destroy_boxed_opaque_existential_1(v21);
      }

      v7 = type metadata accessor for FormatInspectionItem(0);
      v18 = &a4[*(v7 + 24)];
      *&v22 = 0;
      *(&v22 + 1) = 0xE000000000000000;
      LOBYTE(v21[0]) = v23;
      sub_1D7263F9C();
      *v18 = 0;
      *(v18 + 1) = 0xE000000000000000;
      v19 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
    }
  }

  else
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  }

  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v20 = &a4[*(v7 + 28)];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = -1;
  return result;
}

uint64_t sub_1D712CE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  if (a3 == 4)
  {
    v10 = type metadata accessor for FormatInspectionItem(0);
    v11 = *(v10 + 24);
    v12 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v12 - 8) + 56))(&a7[v11], 1, 1, v12);
  }

  else
  {
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (swift_dynamicCast())
    {
      v10 = type metadata accessor for FormatInspectionItem(0);
      v14 = *(v10 + 24);
      *&a7[v14] = v25;
      v15 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v15 - 8) + 56))(&a7[v14], 0, 1, v15);
    }

    else
    {
      sub_1D5B49474(0, &qword_1EC884160);
      if (swift_dynamicCast())
      {
        sub_1D5B7DDE8(&v25, v24);
        v16 = type metadata accessor for FormatInspectionItem(0);
        v17 = &a7[*(v16 + 24)];
        __swift_project_boxed_opaque_existential_1(v24, v24[3]);
        *v17 = sub_1D72644BC();
        v17[1] = v18;
        v19 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
        *a7 = a1;
        *(a7 + 1) = a2;
        *(a7 + 2) = 0;
        *(a7 + 3) = 0;
        v20 = &a7[*(v16 + 28)];
        *v20 = 0;
        *(v20 + 1) = 0;
        v20[16] = -1;
        return __swift_destroy_boxed_opaque_existential_1(v24);
      }

      v10 = type metadata accessor for FormatInspectionItem(0);
      v21 = &a7[*(v10 + 24)];
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      LOBYTE(v25) = v28;
      *(&v25 + 1) = v29;
      v26 = v30;
      v27 = v31;
      sub_1D7263F9C();
      *v21 = 0;
      *(v21 + 1) = 0xE000000000000000;
      v22 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
    }
  }

  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = 0;
  *(a7 + 3) = 0;
  v23 = &a7[*(v10 + 28)];
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = -1;
  return result;
}

uint64_t sub_1D712D17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v25 = a3;
  if ((~a3 & 0xF000000000000007) == 0)
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
LABEL_3:
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v11 = &a4[*(v7 + 28)];
    *v11 = 0;
    *(v11 + 1) = 0;
    v11[16] = -1;
    return result;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    v12 = type metadata accessor for FormatInspectionItem(0);
    v13 = *(v12 + 24);
    *&a4[v13] = v24;
    v14 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v14 - 8) + 56))(&a4[v13], 0, 1, v14);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v15 = &a4[*(v12 + 28)];
    *v15 = 0;
    *(v15 + 1) = 0;
    v15[16] = -1;
  }

  else
  {
    sub_1D5B49474(0, &qword_1EC884160);
    if (!swift_dynamicCast())
    {
      v7 = type metadata accessor for FormatInspectionItem(0);
      v21 = &a4[*(v7 + 24)];
      *&v24 = 0;
      *(&v24 + 1) = 0xE000000000000000;
      v23[0] = v25;
      sub_1D7263F9C();

      *v21 = 0;
      *(v21 + 1) = 0xE000000000000000;
      v22 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
      goto LABEL_3;
    }

    sub_1D5B7DDE8(&v24, v23);
    v16 = type metadata accessor for FormatInspectionItem(0);
    v17 = &a4[*(v16 + 24)];
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    *v17 = sub_1D72644BC();
    v17[1] = v18;
    v19 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v20 = &a4[*(v16 + 28)];
    *v20 = 0;
    *(v20 + 1) = 0;
    v20[16] = -1;
    __swift_destroy_boxed_opaque_existential_1(v23);
  }
}

uint64_t sub_1D712D4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char *a4@<X8>)
{
  v8 = a3[5];
  v48 = a3[4];
  v49 = v8;
  v9 = a3[7];
  v50 = a3[6];
  v51 = v9;
  v10 = a3[1];
  v44 = *a3;
  v45 = v10;
  v11 = a3[3];
  v46 = a3[2];
  v47 = v11;
  v43[0] = v44;
  v43[1] = v10;
  v43[2] = v46;
  v43[3] = v11;
  v43[4] = v48;
  v43[5] = v8;
  v43[6] = v50;
  v43[7] = v9;
  if (sub_1D5CFD0B8(v43) == 1)
  {
    v12 = type metadata accessor for FormatInspectionItem(0);
    v13 = *(v12 + 24);
    v14 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v14 - 8) + 56))(&a4[v13], 1, 1, v14);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
  }

  else
  {
    v42[4] = v48;
    v42[5] = v49;
    v42[6] = v50;
    v42[7] = v51;
    v42[0] = v44;
    v42[1] = v45;
    v42[2] = v46;
    v42[3] = v47;
    v18 = sub_1D5CFD35C(v42);
    v19 = sub_1D5CFD34C(v42);
    v20 = v19;
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v12 = type metadata accessor for FormatInspectionItem(0);
        v26 = &a4[*(v12 + 24)];
        v28 = v20[6];
        v27 = v20[7];
        v29 = v20[5];
        *(v26 + 4) = v20[4];
        *(v26 + 5) = v29;
        *(v26 + 6) = v28;
        *(v26 + 7) = v27;
        v31 = v20[2];
        v30 = v20[3];
        v32 = v20[1];
        *v26 = *v20;
        *(v26 + 1) = v32;
        *(v26 + 2) = v31;
        *(v26 + 3) = v30;
        v33 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        result = (*(*(v33 - 8) + 56))(v26, 0, 1, v33);
        *a4 = a1;
        *(a4 + 1) = a2;
        *(a4 + 1) = xmmword_1D739CEF0;
      }

      else
      {
        v39 = *v19;
        v12 = type metadata accessor for FormatInspectionItem(0);
        v40 = *(v12 + 24);
        *&a4[v40] = v39;
        v41 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        result = (*(*(v41 - 8) + 56))(&a4[v40], 0, 1, v41);
        *a4 = a1;
        *(a4 + 1) = a2;
        *(a4 + 2) = 0xD000000000000012;
        *(a4 + 3) = 0x80000001D73E40B0;
      }
    }

    else
    {
      if (!v18)
      {
        v21 = *v19;
        v22 = v19[1];
        v23 = type metadata accessor for FormatInspectionItem(0);
        v24 = &a4[*(v23 + 24)];

        sub_1D5B88EF0(a3, &qword_1EDF34688, &type metadata for FormatFill);
        *v24 = v21;
        *(v24 + 1) = v22;
        v25 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        result = (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
        *a4 = a1;
        *(a4 + 1) = a2;
        *(a4 + 1) = xmmword_1D739CF10;
        v16 = *(v23 + 28);
        goto LABEL_4;
      }

      v12 = type metadata accessor for FormatInspectionItem(0);
      v34 = &a4[*(v12 + 24)];
      v36 = v20[2];
      v35 = v20[3];
      v37 = v20[1];
      *v34 = *v20;
      *(v34 + 1) = v37;
      *(v34 + 2) = v36;
      *(v34 + 3) = v35;
      v38 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v38 - 8) + 56))(v34, 0, 1, v38);
      *a4 = a1;
      *(a4 + 1) = a2;
      *(a4 + 1) = xmmword_1D739CF00;
    }
  }

  v16 = *(v12 + 28);
LABEL_4:
  v17 = &a4[v16];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = -1;
  return result;
}

uint64_t sub_1D712D860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v25 = a3;
  if (a3 == 8)
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
LABEL_5:
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v13 = &a4[*(v7 + 28)];
    *v13 = 0;
    *(v13 + 1) = 0;
    v13[16] = -1;
    return result;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v11 = *(v7 + 24);
    *&a4[v11] = v22;
    v12 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v12 - 8) + 56))(&a4[v11], 0, 1, v12);
    goto LABEL_5;
  }

  v23 = &type metadata for FormatUnderlineStyle;
  v24 = sub_1D7133538();
  LOBYTE(v22) = v25;
  sub_1D5B7DDE8(&v22, v21);
  v14 = *__swift_project_boxed_opaque_existential_1(v21, v21[3]);
  if (v14 > 3)
  {
    if (v14 > 5)
    {
      if (v14 == 6)
      {
        v15 = 0x80000001D73BAC00;
        v16 = 0xD000000000000011;
      }

      else
      {
        v15 = 0xE600000000000000;
        v16 = 0x64726F577962;
      }

      goto LABEL_22;
    }

    if (v14 == 4)
    {
      v15 = 0xEB00000000687361;
    }

    else
    {
      v15 = 0xEE00746F44687361;
    }

    goto LABEL_20;
  }

  if (v14 <= 1)
  {
    if (v14)
    {
      v15 = 0xE500000000000000;
      v16 = 0x6B63696874;
    }

    else
    {
      v15 = 0xE600000000000000;
      v16 = 0x656C676E6973;
    }

    goto LABEL_22;
  }

  if (v14 != 2)
  {
    v15 = 0xEA0000000000746FLL;
LABEL_20:
    v16 = 0x446E726574746170;
    goto LABEL_22;
  }

  v15 = 0xE600000000000000;
  v16 = 0x656C62756F64;
LABEL_22:
  v17 = type metadata accessor for FormatInspectionItem(0);
  v18 = &a4[*(v17 + 24)];
  *v18 = v16;
  v18[1] = v15;
  v19 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v20 = &a4[*(v17 + 28)];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = -1;
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

void sub_1D712DBAC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v41 = a3;
  if (!a3)
  {
    v8 = type metadata accessor for FormatInspectionItem(0);
    v9 = *(v8 + 24);
    v10 = type metadata accessor for FormatInspectionItem.Value(0);
    (*(*(v10 - 8) + 56))(a5 + v9, 1, 1, v10);
    *a5 = a1;
    a5[1] = a2;
    a5[2] = 0;
    a5[3] = 0;
    v11 = *(v8 + 28);
    goto LABEL_5;
  }

  a4(0);
  type metadata accessor for FormatCommandAction();
  if (!swift_dynamicCast())
  {
    sub_1D7133B88(0, &qword_1EC88D750, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D73A8]);
    if (!swift_dynamicCast())
    {
      type metadata accessor for DebugFormatDebuggerCallStackEntry();
      if (!swift_dynamicCast())
      {
        type metadata accessor for DebugFormatDebuggerWorkspaceStackEntry();
        if (!swift_dynamicCast())
        {
          sub_1D5B5A498(0, &unk_1EDF04400);
          if (swift_dynamicCast())
          {

            v18 = [v40 attributedName];
            v19 = [v18 string];

            v20 = sub_1D726207C();
            v22 = v21;

            v23 = [v40 category];
            if (v23)
            {
              v24 = v23;
              v25 = sub_1D726207C();
              v27 = v26;
            }

            else
            {
              v25 = 0;
              v27 = 0;
            }

            v33 = type metadata accessor for FormatInspectionItem(0);
            v34 = *(v33 + 24);
            *(a5 + v34) = v40;
            v35 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v35 - 8) + 56))(a5 + v34, 0, 1, v35);
            *a5 = v20;
            a5[1] = v22;
            a5[2] = v25;
            a5[3] = v27;
            v16 = *(v33 + 28);
            goto LABEL_10;
          }

          sub_1D5B49474(0, &qword_1EDF3C5D0);
          if (!swift_dynamicCast())
          {
            sub_1D5B49474(0, &qword_1EC884160);
            if (swift_dynamicCast())
            {
              sub_1D5B7DDE8(&v40, v39);
              v28 = type metadata accessor for FormatInspectionItem(0);
              v29 = (a5 + *(v28 + 24));
              __swift_project_boxed_opaque_existential_1(v39, v39[3]);
              *v29 = sub_1D72644BC();
              v29[1] = v30;
              v31 = type metadata accessor for FormatInspectionItem.Value(0);
              swift_storeEnumTagMultiPayload();
              (*(*(v31 - 8) + 56))(v29, 0, 1, v31);
              *a5 = a1;
              a5[1] = a2;
              a5[2] = 0;
              a5[3] = 0;
              v32 = a5 + *(v28 + 28);
              *v32 = 0;
              *(v32 + 1) = 0;
              v32[16] = -1;
              __swift_destroy_boxed_opaque_existential_1(v39);
              goto LABEL_11;
            }

            v36 = type metadata accessor for FormatInspectionItem(0);
            v37 = (a5 + *(v36 + 24));
            *&v40 = 0;
            *(&v40 + 1) = 0xE000000000000000;
            v39[0] = v41;
            sub_1D7263F9C();

            *v37 = 0;
            v37[1] = 0xE000000000000000;
            v38 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
            *a5 = a1;
            a5[1] = a2;
            a5[2] = 0;
            a5[3] = 0;
            v11 = *(v36 + 28);
LABEL_5:
            v12 = a5 + v11;
            *v12 = 0;
            *(v12 + 1) = 0;
            v12[16] = -1;
            return;
          }
        }
      }
    }
  }

  v13 = type metadata accessor for FormatInspectionItem(0);
  v14 = *(v13 + 24);
  *(a5 + v14) = v40;
  v15 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v15 - 8) + 56))(a5 + v14, 0, 1, v15);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = 0;
  a5[3] = 0;
  v16 = *(v13 + 28);
LABEL_10:
  v17 = a5 + v16;
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = -1;
LABEL_11:
}

uint64_t sub_1D712E1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void (*a5)(void)@<X4>, char *a6@<X8>)
{
  v27 = a3;
  v28 = a4 & 1;
  if (a4)
  {
    v9 = type metadata accessor for FormatInspectionItem(0);
    v10 = *(v9 + 24);
    v11 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v11 - 8) + 56))(&a6[v10], 1, 1, v11);
LABEL_5:
    *a6 = a1;
    *(a6 + 1) = a2;
    *(a6 + 2) = 0;
    *(a6 + 3) = 0;
    v15 = *(v9 + 28);
    goto LABEL_6;
  }

  a5(0);
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    v9 = type metadata accessor for FormatInspectionItem(0);
    v13 = *(v9 + 24);
    *&a6[v13] = v26;
    v14 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v14 - 8) + 56))(&a6[v13], 0, 1, v14);
    goto LABEL_5;
  }

  sub_1D5B49474(0, &qword_1EC884160);
  if (swift_dynamicCast())
  {
    sub_1D5B7DDE8(&v26, v25);
    v17 = type metadata accessor for FormatInspectionItem(0);
    v18 = &a6[*(v17 + 24)];
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    *v18 = sub_1D72644BC();
    v18[1] = v19;
    v20 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
    *a6 = a1;
    *(a6 + 1) = a2;
    *(a6 + 2) = 0;
    *(a6 + 3) = 0;
    v21 = &a6[*(v17 + 28)];
    *v21 = 0;
    *(v21 + 1) = 0;
    v21[16] = -1;
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v22 = type metadata accessor for FormatInspectionItem(0);
  v23 = &a6[*(v22 + 24)];
  *&v26 = 0;
  *(&v26 + 1) = 0xE000000000000000;
  v25[0] = v27;
  sub_1D7263F9C();
  *v23 = 0;
  *(v23 + 1) = 0xE000000000000000;
  v24 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  result = (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = 0;
  *(a6 + 3) = 0;
  v15 = *(v22 + 28);
LABEL_6:
  v16 = &a6[v15];
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = -1;
  return result;
}

uint64_t sub_1D712E4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v25 = a3;
  if (a3 == 3)
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
LABEL_5:
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v13 = &a4[*(v7 + 28)];
    *v13 = 0;
    *(v13 + 1) = 0;
    v13[16] = -1;
    return result;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v11 = *(v7 + 24);
    *&a4[v11] = v22;
    v12 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v12 - 8) + 56))(&a4[v11], 0, 1, v12);
    goto LABEL_5;
  }

  v23 = &type metadata for IssueCover.Kind;
  v24 = sub_1D713374C();
  LOBYTE(v22) = v25;
  sub_1D5B7DDE8(&v22, v21);
  v14 = __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  if (*v14)
  {
    if (*v14 == 1)
    {
      v15 = 0xEC00000061696465;
      v16 = 0x4D6465726579616CLL;
    }

    else
    {
      v15 = 0xE400000000000000;
      v16 = 1701736302;
    }
  }

  else
  {
    v15 = 0xE500000000000000;
    v16 = 0x6567616D69;
  }

  v17 = type metadata accessor for FormatInspectionItem(0);
  v18 = &a4[*(v17 + 24)];
  *v18 = v16;
  v18[1] = v15;
  v19 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v20 = &a4[*(v17 + 28)];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = -1;
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1D712E78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, unint64_t *a5@<X4>, uint64_t (*a6)(uint64_t)@<X5>, int a7@<W6>, char *a8@<X8>)
{
  v32[3] = a7;
  v14 = a4(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v32 - v17;
  sub_1D71330BC(0, a5, a6, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = v32 - v21;
  sub_1D7133C80(a3, v32 - v21, a5, a6);
  if ((*(v15 + 48))(v22, 1, v14) == 1)
  {
    sub_1D7133D00(a3, a5, a6);
    v23 = type metadata accessor for FormatInspectionItem(0);
    v24 = *(v23 + 24);
    v25 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v25 - 8) + 56))(&a8[v24], 1, 1, v25);
    *a8 = a1;
    *(a8 + 1) = a2;
    *(a8 + 2) = 0;
    *(a8 + 3) = 0;
    v27 = &a8[*(v23 + 28)];
    *v27 = 0;
    *(v27 + 1) = 0;
    v27[16] = -1;
  }

  else
  {
    (*(v15 + 16))(v18, v22, v14);
    sub_1D7133D00(a3, a5, a6);
    v28 = type metadata accessor for FormatInspectionItem(0);
    v29 = *(v28 + 24);
    (*(v15 + 32))(&a8[v29], v18, v14);
    v30 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v30 - 8) + 56))(&a8[v29], 0, 1, v30);
    *a8 = a1;
    *(a8 + 1) = a2;
    *(a8 + 2) = 0;
    *(a8 + 3) = 0;
    v31 = &a8[*(v28 + 28)];
    *v31 = 0;
    *(v31 + 1) = 0;
    v31[16] = -1;
    return (*(v15 + 8))(v22, v14);
  }

  return result;
}

uint64_t sub_1D712EA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v23 = a3;
  v24 = BYTE4(a3);
  if (BYTE4(a3) == 255)
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  }

  else
  {
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (swift_dynamicCast())
    {
      v7 = type metadata accessor for FormatInspectionItem(0);
      v11 = *(v7 + 24);
      *&a4[v11] = v22;
      v12 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v12 - 8) + 56))(&a4[v11], 0, 1, v12);
    }

    else
    {
      sub_1D5B49474(0, &qword_1EC884160);
      if (swift_dynamicCast())
      {
        sub_1D5B7DDE8(&v22, v21);
        v13 = type metadata accessor for FormatInspectionItem(0);
        v14 = &a4[*(v13 + 24)];
        __swift_project_boxed_opaque_existential_1(v21, v21[3]);
        *v14 = sub_1D72644BC();
        v14[1] = v15;
        v16 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
        *a4 = a1;
        *(a4 + 1) = a2;
        *(a4 + 2) = 0;
        *(a4 + 3) = 0;
        v17 = &a4[*(v13 + 28)];
        *v17 = 0;
        *(v17 + 1) = 0;
        v17[16] = -1;
        return __swift_destroy_boxed_opaque_existential_1(v21);
      }

      v7 = type metadata accessor for FormatInspectionItem(0);
      v18 = &a4[*(v7 + 24)];
      *&v22 = 0;
      *(&v22 + 1) = 0xE000000000000000;
      LODWORD(v21[0]) = v23;
      BYTE4(v21[0]) = v24;
      sub_1D7263F9C();
      *v18 = 0;
      *(v18 + 1) = 0xE000000000000000;
      v19 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
    }
  }

  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v20 = &a4[*(v7 + 28)];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = -1;
  return result;
}

void sub_1D712ED68(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v276 = sub_1D725F88C();
  v273 = *(v276 - 8);
  MEMORY[0x1EEE9AC00](v276, v8);
  v275 = &v273 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = type metadata accessor for FormatPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v274, v10);
  *&v277 = &v273 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FormatInspectionFeedGroupItem();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v273 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D72585BC();
  v17 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v273 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = a3;
  if (!a3)
  {
    v28 = type metadata accessor for FormatInspectionItem(0);
    v29 = *(v28 + 24);
    v30 = type metadata accessor for FormatInspectionItem.Value(0);
    (*(*(v30 - 8) + 56))(a4 + v29, 1, 1, v30);
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    v31 = (a4 + *(v28 + 28));
    goto LABEL_7;
  }

  v278 = a1;
  v279 = a2;
  v280 = a4;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    goto LABEL_3;
  }

  if (swift_dynamicCast())
  {
    v32 = v303;
    v33 = (v303 >> 58) & 0x38;
    v34 = *&aSystem_6[v33];
    v35 = *(&unk_1D739CFD0 + v33);
    v36 = type metadata accessor for FormatInspectionItem(0);
    v37 = *(v36 + 24);
    v38 = v280;
    *&v280[v37] = v32;
    v39 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v39 - 8) + 56))(&v38[v37], 0, 1, v39);
    v40 = v279;
    *v38 = v278;
    *(v38 + 1) = v40;
    *(v38 + 2) = v34;
LABEL_10:
    *(v38 + 3) = v35;
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v42 = v303;
    v22 = type metadata accessor for FormatInspectionItem(0);
    v23 = *(v22 + 24);
    v24 = v280;
    v280[v23] = v42;
    v25 = type metadata accessor for FormatInspectionItem.Value(0);
    goto LABEL_4;
  }

  if (swift_dynamicCast())
  {
    v36 = type metadata accessor for FormatInspectionItem(0);
    v43 = *(v36 + 24);
    v38 = v280;
    (*(v17 + 32))(&v280[v43], v20, v16);
    v44 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v44 - 8) + 56))(&v38[v43], 0, 1, v44);
    goto LABEL_19;
  }

  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      *&v277 = v303;
      v58 = sub_1D70732C4(v303);
      v59 = v58;
      v60 = *(v58 + 16);
      if (!v60)
      {
        v63 = MEMORY[0x1E69E7CC0];
LABEL_69:

        v87 = v63[2];

        if (v87)
        {
          v88 = type metadata accessor for FormatInspectionItem(0);
          v38 = v280;
          v89 = &v280[*(v88 + 24)];
          sub_1D6E0CED0(0, &qword_1EC8803C0, MEMORY[0x1E69E6F90]);
          v90 = swift_allocObject();
          *(v90 + 16) = xmmword_1D7273AE0;
          *(v90 + 56) = &type metadata for FormatInspection;
          *(v90 + 64) = &off_1F51E3FD0;
          *(v90 + 32) = v277;
          v91 = v90 + 32;
          v92 = sub_1D5F62BFC(v90);
          swift_setDeallocating();
          __swift_destroy_boxed_opaque_existential_1(v91);
          swift_deallocClassInstance();
          v93 = sub_1D7073500(v92);

          *v89 = v93;
          v94 = type metadata accessor for FormatInspectionItem.Value(0);
          *(v89 + 1) = 0;
          *(v89 + 2) = 0;
          swift_storeEnumTagMultiPayload();
          (*(*(v94 - 8) + 56))(v89, 0, 1, v94);
        }

        else
        {

          v88 = type metadata accessor for FormatInspectionItem(0);
          v95 = *(v88 + 24);
          v96 = type metadata accessor for FormatInspectionItem.Value(0);
          v38 = v280;
          (*(*(v96 - 8) + 56))(&v280[v95], 1, 1, v96);
        }

        v97 = v279;
        *v38 = v278;
        *(v38 + 1) = v97;
        *(v38 + 2) = 0;
        *(v38 + 3) = 0;
        v41 = *(v88 + 28);
        goto LABEL_12;
      }

      v61 = 0;
      v62 = v58 + 64;
      v63 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v61 >= *(v59 + 16))
        {
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        v64 = *v62;
        v16 = *(*v62 + 16);
        v15 = v63[2];
        v65 = v16 + v15;
        if (__OFADD__(v15, v16))
        {
          goto LABEL_121;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v65 <= v63[3] >> 1)
        {
          if (!*(v64 + 16))
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v15 <= v65)
          {
            v67 = v16 + v15;
          }

          else
          {
            v67 = v15;
          }

          v63 = sub_1D698BAE0(isUniquelyReferenced_nonNull_native, v67, 1, v63);
          if (!*(v64 + 16))
          {
LABEL_42:

            if (v16)
            {
              goto LABEL_122;
            }

            goto LABEL_43;
          }
        }

        v15 = v63[2];
        v68 = (v63[3] >> 1) - v15;
        type metadata accessor for FormatInspectionItem(0);
        if (v68 < v16)
        {
          goto LABEL_126;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v69 = v63[2];
          v56 = __OFADD__(v69, v16);
          v70 = v16 + v69;
          if (v56)
          {
            __break(1u);
LABEL_130:
            if (swift_dynamicCast())
            {
              goto LABEL_160;
            }

            if (swift_dynamicCast())
            {
              v207 = v292;
              *&v303 = 40;
              *(&v303 + 1) = 0xE100000000000000;
              v208 = sub_1D7262A9C();
              MEMORY[0x1DA6F9910](v208);

              MEMORY[0x1DA6F9910](8236, 0xE200000000000000);
              v209 = sub_1D7262A9C();
              MEMORY[0x1DA6F9910](v209);

              MEMORY[0x1DA6F9910](41, 0xE100000000000000);
              v210 = *(&v303 + 1);
              *&v277 = v303;
              sub_1D6E0CED0(0, &qword_1EC8803C0, MEMORY[0x1E69E6F90]);
              v211 = swift_allocObject();
              *(v211 + 16) = xmmword_1D7273AE0;
              sub_1D71330BC(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
              sub_1D5EA74B8();
              v213 = *(*(v212 - 8) + 72);
              v214 = (*(*(v212 - 8) + 80) + 32) & ~*(*(v212 - 8) + 80);
              v215 = swift_allocObject();
              *(v215 + 16) = xmmword_1D7270C10;
              v216 = (v215 + v214);
              sub_1D711A80C(88, 0xE100000000000000, v207, 0, v216);
              v217 = type metadata accessor for FormatInspectionItem(0);
              v218 = *(*(v217 - 8) + 56);
              v218(v216, 0, 1, v217);
              sub_1D711A80C(89, 0xE100000000000000, *(&v207 + 1), 0, (v216 + v213));
              v218((v216 + v213), 0, 1, v217);
              sub_1D6795150(0x746E696F50, 0xE500000000000000, 0, 0, v215, &v303);
              swift_setDeallocating();
              swift_arrayDestroy();
              swift_deallocClassInstance();
              *(v211 + 56) = &type metadata for FormatInspectionGroup;
              *(v211 + 64) = &off_1F518B2C0;
              v219 = swift_allocObject();
              *(v211 + 32) = v219;
              v220 = v304;
              *(v219 + 16) = v303;
              *(v219 + 32) = v220;
              *(v219 + 48) = v305;
              v221 = sub_1D5F62BFC(v211);
              swift_setDeallocating();
              __swift_destroy_boxed_opaque_existential_1(v211 + 32);
              swift_deallocClassInstance();
              v222 = sub_1D7073500(v221);

              sub_1D711AD20(v278, v279, v222, v277, v210, v280);
              goto LABEL_14;
            }

            if (swift_dynamicCast())
            {
              v223 = v292;
              *&v303 = 40;
              *(&v303 + 1) = 0xE100000000000000;
              v224 = sub_1D6936F98(v292);
              MEMORY[0x1DA6F9910](v224);

              MEMORY[0x1DA6F9910](8236, 0xE200000000000000);
              v225 = sub_1D6936F98(*(&v223 + 1));
              MEMORY[0x1DA6F9910](v225);

              MEMORY[0x1DA6F9910](41, 0xE100000000000000);
              v276 = *(&v303 + 1);
              *&v277 = v303;
              sub_1D6E0CED0(0, &qword_1EC8803C0, MEMORY[0x1E69E6F90]);
              v226 = swift_allocObject();
              *(v226 + 16) = xmmword_1D7273AE0;
              sub_1D71330BC(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
              sub_1D5EA74B8();
              v275 = v227;
              v228 = *(*(v227 - 1) + 72);
              v229 = (*(*(v227 - 1) + 80) + 32) & ~*(*(v227 - 1) + 80);
              v230 = swift_allocObject();
              *(v230 + 16) = xmmword_1D7270C10;
              v231 = (v230 + v229);

              sub_1D711B070(88, 0xE100000000000000, v223, v231);
              v232 = type metadata accessor for FormatInspectionItem(0);
              v233 = *(*(v232 - 8) + 56);
              v233(v231, 0, 1, v232);

              sub_1D711B070(89, 0xE100000000000000, *(&v223 + 1), &v231[v228]);

              v233(&v231[v228], 0, 1, v232);
              sub_1D6795150(0x746E696F50, 0xE500000000000000, 0, 0, v230, &v303);
              swift_setDeallocating();
              swift_arrayDestroy();
              swift_deallocClassInstance();
              *(v226 + 56) = &type metadata for FormatInspectionGroup;
              *(v226 + 64) = &off_1F518B2C0;
              v234 = swift_allocObject();
              *(v226 + 32) = v234;
              v235 = v304;
              *(v234 + 16) = v303;
              *(v234 + 32) = v235;
              *(v234 + 48) = v305;
              v236 = sub_1D5F62BFC(v226);
              swift_setDeallocating();
              __swift_destroy_boxed_opaque_existential_1(v226 + 32);
              swift_deallocClassInstance();
              v237 = sub_1D7073500(v236);

              sub_1D711AD20(v278, v279, v237, v277, v276, v280);
              goto LABEL_14;
            }

            if (swift_dynamicCast())
            {
              goto LABEL_160;
            }

            if (swift_dynamicCast())
            {
              v22 = type metadata accessor for FormatInspectionItem(0);
              v23 = *(v22 + 24);
              v25 = type metadata accessor for FormatInspectionItem.Value(0);
              v24 = v280;
              goto LABEL_4;
            }

            type metadata accessor for FormatCommandAction();
            if (swift_dynamicCast())
            {
              goto LABEL_3;
            }

            if (swift_dynamicCast())
            {
              v238 = v303;
              v277 = *(v16 + 8);
              v239 = *(&v304 + 1);
              v240 = v305;
              v36 = type metadata accessor for FormatInspectionItem(0);
              v38 = v280;
              v163 = &v280[*(v36 + 24)];
              *v163 = v238;
              *(v163 + 8) = v277;
              *(v163 + 3) = v239;
              *(v163 + 4) = v240;
              v165 = type metadata accessor for FormatInspectionItem.Value(0);
LABEL_102:
              swift_storeEnumTagMultiPayload();
              (*(*(v165 - 8) + 56))(v163, 0, 1, v165);
LABEL_19:
              v45 = v279;
              *v38 = v278;
              *(v38 + 1) = v45;
              *(v38 + 2) = 0;
              *(v38 + 3) = 0;
LABEL_11:
              v41 = *(v36 + 28);
LABEL_12:
              v27 = &v38[v41];
              goto LABEL_13;
            }

            if (swift_dynamicCast())
            {
              v22 = type metadata accessor for FormatInspectionItem(0);
              v23 = *(v22 + 24);
              v24 = v280;
              sub_1D5CAD93C(v277, &v280[v23], type metadata accessor for FormatPropertyDefinition);
              v25 = type metadata accessor for FormatInspectionItem.Value(0);
              goto LABEL_4;
            }

            if (swift_dynamicCast())
            {
              v22 = type metadata accessor for FormatInspectionItem(0);
              v23 = *(v22 + 24);
              v24 = v280;
              (*(v273 + 32))(&v280[v23], v275, v276);
              v25 = type metadata accessor for FormatInspectionItem.Value(0);
              goto LABEL_4;
            }

            if (swift_dynamicCast())
            {
              v241 = v303;
              v242 = v307[0];
              v243 = type metadata accessor for FormatInspectionItem(0);
              v244 = &v280[*(v243 + 24)];
              *v244 = v241;
              if (v242)
              {
                *(v244 + 8) = *(v16 + 8);
                *(v244 + 24) = *(v16 + 24);
                *(v244 + 40) = *(v16 + 40);
                *(v244 + 7) = *(&v306 + 1);
              }

              v245 = type metadata accessor for FormatInspectionItem.Value(0);
              swift_storeEnumTagMultiPayload();
              (*(*(v245 - 8) + 56))(v244, 0, 1, v245);
              v246 = v280;
              v247 = v279;
              *v280 = v278;
              *(v246 + 1) = v247;
              *(v246 + 2) = 0;
              *(v246 + 3) = 0;
              v27 = &v246[*(v243 + 28)];
              goto LABEL_13;
            }

            sub_1D7133B88(0, &qword_1EC88D750, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D73A8]);
            if (swift_dynamicCast())
            {
LABEL_3:
              v21 = v303;
              v22 = type metadata accessor for FormatInspectionItem(0);
              v23 = *(v22 + 24);
              v24 = v280;
              *&v280[v23] = v21;
              v25 = type metadata accessor for FormatInspectionItem.Value(0);
LABEL_4:
              swift_storeEnumTagMultiPayload();
              (*(*(v25 - 8) + 56))(&v24[v23], 0, 1, v25);
              goto LABEL_5;
            }

            if (swift_dynamicCast())
            {
              v277 = v303;
              v249 = *(&v304 + 1);
              v248 = v304;
              v110 = type metadata accessor for FormatInspectionItem(0);
              v107 = v280;
              v201 = &v280[*(v110 + 24)];
              *v201 = v277;
              *(v201 + 1) = __PAIR128__(v249, v248);
              v204 = type metadata accessor for FormatInspectionItem.Value(0);
              goto LABEL_118;
            }

            type metadata accessor for DebugFormatDebuggerCallStackEntry();
            if (swift_dynamicCast())
            {
              goto LABEL_3;
            }

            type metadata accessor for DebugFormatDebuggerWorkspaceStackEntry();
            if (swift_dynamicCast())
            {
              goto LABEL_3;
            }

            sub_1D5B5A498(0, &unk_1EDF04400);
            if (swift_dynamicCast())
            {

              v250 = v303;
              v251 = [v303 attributedName];
              v252 = [v251 string];

              v253 = sub_1D726207C();
              v255 = v254;

              v256 = [v250 category];
              if (v256)
              {
                v257 = v256;
                v258 = sub_1D726207C();
                v260 = v259;
              }

              else
              {
                v258 = 0;
                v260 = 0;
              }

              v269 = type metadata accessor for FormatInspectionItem(0);
              v270 = *(v269 + 24);
              v271 = v280;
              *&v280[v270] = v250;
              v272 = type metadata accessor for FormatInspectionItem.Value(0);
              swift_storeEnumTagMultiPayload();
              (*(*(v272 - 8) + 56))(&v271[v270], 0, 1, v272);
              *v271 = v253;
              *(v271 + 1) = v255;
              *(v271 + 2) = v258;
              *(v271 + 3) = v260;
              v27 = &v271[*(v269 + 28)];
              goto LABEL_13;
            }

            if (swift_dynamicCast())
            {
LABEL_160:
              v262 = *(&v303 + 1);
              v261 = v303;
              v110 = type metadata accessor for FormatInspectionItem(0);
              v107 = v280;
              v201 = &v280[*(v110 + 24)];
              *v201 = __PAIR128__(v262, v261);
              v204 = type metadata accessor for FormatInspectionItem.Value(0);
LABEL_118:
              swift_storeEnumTagMultiPayload();
              (*(*(v204 - 8) + 56))(v201, 0, 1, v204);
              v205 = v279;
              *v107 = v278;
              *(v107 + 1) = v205;
              *(v107 + 2) = 0;
              *(v107 + 3) = 0;
LABEL_113:
              v27 = &v107[*(v110 + 28)];
              goto LABEL_13;
            }

            v263 = v312;
            v264 = type metadata accessor for FormatInspectionItem(0);
            v265 = *(v264 + 24);
            v266 = v280;
            *&v280[v265] = v263;
            v267 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v267 - 8) + 56))(&v266[v265], 0, 1, v267);
            v268 = v279;
            *v266 = v278;
            *(v266 + 1) = v268;
            *(v266 + 2) = 0;
            *(v266 + 3) = 0;
            v31 = &v266[*(v264 + 28)];
LABEL_7:
            *v31 = 0;
            *(v31 + 1) = 0;
            v31[16] = -1;
            return;
          }

          v63[2] = v70;
        }

LABEL_43:
        ++v61;
        v62 += 40;
        if (v60 == v61)
        {
          goto LABEL_69;
        }
      }
    }

    if (swift_dynamicCast())
    {
      v22 = type metadata accessor for FormatInspectionItem(0);
      v23 = *(v22 + 24);
      v24 = v280;
      *&v280[v23] = v303;
      v25 = type metadata accessor for FormatInspectionItem.Value(0);
      goto LABEL_4;
    }

    if (swift_dynamicCast())
    {
      v289 = v310;
      v290 = v311[0];
      v285 = v307[0];
      v286 = v307[1];
      v287 = v308;
      v288 = v309;
      v281 = v303;
      v282 = v304;
      v283 = v305;
      v284 = v306;
      v300 = v310;
      v301 = v311[0];
      v296 = v307[0];
      v297 = v307[1];
      v298 = v308;
      v299 = v309;
      v292 = v303;
      v293 = v304;
      v291 = v311[1];
      v302 = v311[1];
      v294 = v305;
      v295 = v306;
      v85 = sub_1D62B4E2C(&v292);
      if (v85 > 1)
      {
        v38 = v280;
        if (v85 != 2)
        {
          v35 = 0xEB0000000070756FLL;
          v86 = 0x7247207373616C47;
          goto LABEL_90;
        }

        v35 = 0xE500000000000000;
        v86 = 0x7373616C47;
      }

      else
      {
        v38 = v280;
        if (v85)
        {
          v35 = 0xED000079636E6172;
          v86 = 0x6269562072756C42;
        }

        else
        {
          v35 = 0xE400000000000000;
          v86 = 1920298050;
        }
      }

      sub_1D5D04BC4(&v292);
LABEL_90:
      v36 = type metadata accessor for FormatInspectionItem(0);
      v125 = &v38[*(v36 + 24)];
      v126 = v290;
      *(v125 + 8) = v289;
      *(v125 + 9) = v126;
      *(v125 + 80) = v291;
      v127 = v286;
      *(v125 + 4) = v285;
      *(v125 + 5) = v127;
      v128 = v288;
      *(v125 + 6) = v287;
      *(v125 + 7) = v128;
      v129 = v282;
      *v125 = v281;
      *(v125 + 1) = v129;
      v130 = v284;
      *(v125 + 2) = v283;
      *(v125 + 3) = v130;
      v131 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v131 - 8) + 56))(v125, 0, 1, v131);
      v132 = v279;
      *v38 = v278;
      *(v38 + 1) = v132;
      *(v38 + 2) = v86;
      goto LABEL_10;
    }

    v16 = &v303;
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (swift_dynamicCast())
      {
        v285 = v307[0];
        v286 = v307[1];
        v287 = v308;
        v288 = v309;
        v281 = v303;
        v282 = v304;
        v283 = v305;
        v284 = v306;
        v294 = v305;
        v295 = v306;
        v292 = v303;
        v293 = v304;
        v298 = v308;
        v299 = v309;
        v296 = v307[0];
        v297 = v307[1];
        v104 = sub_1D5CFD35C(&v292);
        v105 = sub_1D5CFD34C(&v292);
        v106 = v105;
        if (v104 > 1)
        {
          v107 = v280;
          if (v104 == 2)
          {
            v110 = type metadata accessor for FormatInspectionItem(0);
            v145 = &v107[*(v110 + 24)];
            v146 = *v106;
            v147 = v106[1];
            v148 = v106[3];
            *(v145 + 2) = v106[2];
            *(v145 + 3) = v148;
            *v145 = v146;
            *(v145 + 1) = v147;
            v149 = v106[4];
            v150 = v106[5];
            v151 = v106[7];
            *(v145 + 6) = v106[6];
            *(v145 + 7) = v151;
            *(v145 + 4) = v149;
            *(v145 + 5) = v150;
            v152 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v152 - 8) + 56))(v145, 0, 1, v152);
            v113 = 0xEF746E6569646172;
            v114 = 0x47206C6169646152;
          }

          else
          {
            v190 = *v105;
            v113 = 0x80000001D73E40B0;
            v110 = type metadata accessor for FormatInspectionItem(0);
            v191 = *(v110 + 24);
            *&v107[v191] = v190;
            v192 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v192 - 8) + 56))(&v107[v191], 0, 1, v192);
            v114 = 0xD000000000000012;
          }
        }

        else
        {
          v107 = v280;
          if (v104)
          {
            v110 = type metadata accessor for FormatInspectionItem(0);
            v175 = &v107[*(v110 + 24)];
            v177 = v106[2];
            v176 = v106[3];
            v178 = v106[1];
            *v175 = *v106;
            *(v175 + 1) = v178;
            *(v175 + 2) = v177;
            *(v175 + 3) = v176;
            v179 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v179 - 8) + 56))(v175, 0, 1, v179);
            v113 = 0xE800000000000000;
            v114 = 0x746E656964617247;
          }

          else
          {
            v108 = *v105;
            v109 = *(v105 + 1);
            v110 = type metadata accessor for FormatInspectionItem(0);
            v111 = &v107[*(v110 + 24)];

            sub_1D5CFD368(&v281);
            *v111 = v108;
            *(v111 + 1) = v109;
            v112 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v112 - 8) + 56))(v111, 0, 1, v112);
            v113 = 0xE500000000000000;
            v114 = 0x64696C6F53;
          }
        }

        v193 = v279;
        *v107 = v278;
        *(v107 + 1) = v193;
        *(v107 + 2) = v114;
        *(v107 + 3) = v113;
        goto LABEL_113;
      }

      if (swift_dynamicCast())
      {
        v133 = v303;
        v22 = type metadata accessor for FormatInspectionItem(0);
        v24 = v280;
        v134 = &v280[*(v22 + 24)];
        v135 = swift_allocObject();
        *(v135 + 16) = v133;
        *v134 = sub_1D7133DEC;
        *(v134 + 1) = v135;
        v136 = type metadata accessor for FormatInspectionItem.Value(0);
        goto LABEL_93;
      }

      if (swift_dynamicCast())
      {
        v161 = *(&v305 + 1);
        v160 = v305;
        v162 = v306;
        v36 = type metadata accessor for FormatInspectionItem(0);
        v38 = v280;
        v163 = &v280[*(v36 + 24)];
        v164 = v304;
        *v163 = v303;
        *(v163 + 1) = v164;
        *(v163 + 2) = __PAIR128__(v161, v160);
        v163[48] = v162;
        v165 = type metadata accessor for FormatInspectionItem.Value(0);
        goto LABEL_102;
      }

      if (swift_dynamicCast())
      {
        v110 = type metadata accessor for FormatInspectionItem(0);
        v107 = v280;
        v201 = &v280[*(v110 + 24)];
        v202 = v306;
        *(v201 + 2) = v305;
        *(v201 + 3) = v202;
        *(v201 + 4) = v307[0];
        *(v201 + 73) = *(v307 + 9);
        v203 = v304;
        *v201 = v303;
        *(v201 + 1) = v203;
        v204 = type metadata accessor for FormatInspectionItem.Value(0);
        goto LABEL_118;
      }

LABEL_123:
      if (!swift_dynamicCast())
      {
        goto LABEL_127;
      }

      v22 = type metadata accessor for FormatInspectionItem(0);
      v23 = *(v22 + 24);
      v24 = v280;
      sub_1D5CAD93C(v15, &v280[v23], type metadata accessor for FormatInspectionFeedGroupItem);
      v25 = type metadata accessor for FormatInspectionItem.Value(0);
      goto LABEL_4;
    }

    v12 = v281;
    v98 = v281 >> 61;
    if ((v281 >> 61) > 3)
    {
      v49 = v280;
      v115 = v281 & 0x1FFFFFFFFFFFFFFFLL;
      if (v98 > 5)
      {
        if (v98 == 6)
        {
          v153 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
          v308 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
          v309 = v153;
          v310 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
          LOBYTE(v311[0]) = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
          v154 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
          v305 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
          v306 = v154;
          v155 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
          v307[0] = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
          v307[1] = v155;
          v156 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v303 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v304 = v156;
          v120 = type metadata accessor for FormatInspectionItem(0);
          v157 = *(v120 + 24);
          memmove(&v49[v157], (v115 + 16), 0x91uLL);
          v158 = type metadata accessor for FormatInspectionItem.Value(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v158 - 8) + 56))(&v49[v157], 0, 1, v158);
          sub_1D62B4EA4(&v303, &v292);

          v159 = v279;
          *v49 = v278;
          *(v49 + 1) = v159;
          v124 = xmmword_1D739CF30;
        }

        else
        {
          v194 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
          v309 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
          v310 = v194;
          v311[0] = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
          LOWORD(v311[1]) = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0xB0);
          v195 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
          v306 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
          v307[0] = v195;
          v196 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
          v307[1] = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
          v308 = v196;
          v197 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v303 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v304 = v197;
          v305 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
          v120 = type metadata accessor for FormatInspectionItem(0);
          v198 = *(v120 + 24);
          memmove(&v49[v198], (v115 + 16), 0xA2uLL);
          v199 = type metadata accessor for FormatInspectionItem.Value(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v199 - 8) + 56))(&v49[v198], 0, 1, v199);
          sub_1D60864C0(&v303, &v292);

          v200 = v279;
          *v49 = v278;
          *(v49 + 1) = v200;
          v124 = xmmword_1D739CF20;
        }

        goto LABEL_115;
      }

      if (v98 == 4)
      {
        v116 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
        v309 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
        v310 = v116;
        v311[0] = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
        *(v311 + 9) = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0xA9);
        v117 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
        v306 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        v307[0] = v117;
        v118 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
        v307[1] = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
        v308 = v118;
        v119 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v303 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v304 = v119;
        v305 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v120 = type metadata accessor for FormatInspectionItem(0);
        v121 = *(v120 + 24);
        memmove(&v49[v121], (v115 + 16), 0xA9uLL);
        v122 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v122 - 8) + 56))(&v49[v121], 0, 1, v122);
        sub_1D62B4F54(&v303, &v292);

        v123 = v279;
        *v49 = v278;
        *(v49 + 1) = v123;
        v124 = xmmword_1D739CF50;
LABEL_115:
        *(v49 + 1) = v124;
        v27 = &v49[*(v120 + 28)];
        goto LABEL_13;
      }

      v181 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v180 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v182 = type metadata accessor for FormatInspectionItem(0);
      v183 = &v49[*(v182 + 24)];
      *v183 = v181;
      *(v183 + 1) = v180;
      v184 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v184 - 8) + 56))(v183, 0, 1, v184);

      v185 = v279;
      *v49 = v278;
      *(v49 + 1) = v185;
      *(v49 + 1) = xmmword_1D739CF40;
    }

    else
    {
      v49 = v280;
      if (v98 <= 1)
      {
        if (!v98)
        {
          v99 = *(v281 + 16);
          v100 = type metadata accessor for FormatInspectionItem(0);
          v101 = *(v100 + 24);
          *&v49[v101] = v99;
          v102 = type metadata accessor for FormatInspectionItem.Value(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v102 - 8) + 56))(&v49[v101], 0, 1, v102);

          v103 = v279;
          *v49 = v278;
          *(v49 + 1) = v103;
          *(v49 + 1) = xmmword_1D72EBCC0;
          v27 = &v49[*(v100 + 28)];
          goto LABEL_13;
        }

LABEL_106:
        v166 = (v12 & 0x1FFFFFFFFFFFFFFFLL);
        v167 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v303 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v304 = v167;
        v168 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        v305 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v306 = v168;
        v120 = type metadata accessor for FormatInspectionItem(0);
        v169 = &v49[*(v120 + 24)];
        v171 = v166[3];
        v170 = v166[4];
        v172 = v166[2];
        *v169 = v166[1];
        *(v169 + 1) = v172;
        *(v169 + 2) = v171;
        *(v169 + 3) = v170;
        v173 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v173 - 8) + 56))(v169, 0, 1, v173);
        sub_1D6086694(&v303, &v292);

        v174 = v279;
        *v49 = v278;
        *(v49 + 1) = v174;
        v124 = xmmword_1D739CF00;
        goto LABEL_115;
      }

      v137 = v281 & 0x1FFFFFFFFFFFFFFFLL;
      if (v98 == 2)
      {
        v138 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
        v307[0] = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
        v307[1] = v138;
        v139 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
        v308 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
        v309 = v139;
        v140 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v303 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v304 = v140;
        v141 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        v305 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v306 = v141;
        v120 = type metadata accessor for FormatInspectionItem(0);
        v142 = *(v120 + 24);
        memmove(&v49[v142], (v137 + 16), 0x80uLL);
        v143 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v143 - 8) + 56))(&v49[v142], 0, 1, v143);
        sub_1D60865E4(&v303, &v292);

        v144 = v279;
        *v49 = v278;
        *(v49 + 1) = v144;
        v124 = xmmword_1D739CEF0;
        goto LABEL_115;
      }

      v186 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v182 = type metadata accessor for FormatInspectionItem(0);
      v187 = *(v182 + 24);
      *&v49[v187] = v186;
      v188 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v188 - 8) + 56))(&v49[v187], 0, 1, v188);
      sub_1D6086744(v186);

      v189 = v279;
      *v49 = v278;
      *(v49 + 1) = v189;
      *(v49 + 2) = 0xD000000000000012;
      *(v49 + 3) = 0x80000001D73E40B0;
    }

    v27 = &v49[*(v182 + 28)];
    goto LABEL_13;
  }

  v275 = *(&v303 + 1);
  v276 = v303;
  *&v277 = v304;
  v46 = sub_1D70732C4(v303);
  v47 = v46;
  v48 = *(v46 + 16);
  if (!v48)
  {
    v50 = MEMORY[0x1E69E7CC0];
LABEL_61:

    v71 = v50[2];

    if (!v71)
    {

      v80 = type metadata accessor for FormatInspectionItem(0);
      v81 = *(v80 + 24);
      v82 = type metadata accessor for FormatInspectionItem.Value(0);
      v83 = v280;
      (*(*(v82 - 8) + 56))(&v280[v81], 1, 1, v82);
      v84 = v279;
      *v83 = v278;
      *(v83 + 1) = v84;
      *(v83 + 2) = 0;
      *(v83 + 3) = 0;
      v27 = &v83[*(v80 + 28)];
      goto LABEL_13;
    }

    v72 = type metadata accessor for FormatInspectionItem(0);
    v73 = v280;
    v74 = &v280[*(v72 + 24)];
    v75 = v275;
    *v74 = v276;
    *(v74 + 1) = v75;
    v76 = v277;
    *(v74 + 2) = v277;
    v77 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v77 - 8) + 56))(v74, 0, 1, v77);
    v78 = v279;
    *v73 = v278;
    *(v73 + 1) = v78;
    *(v73 + 2) = v75;
    *(v73 + 3) = v76;
    v79 = &v73[*(v72 + 28)];
    *v79 = 0;
    *(v79 + 1) = 0;
    v79[16] = -1;

    goto LABEL_14;
  }

  v15 = 0;
  v49 = (v46 + 64);
  v50 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v15 >= *(v47 + 16))
    {
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    v51 = *v49;
    v16 = *(*v49 + 16);
    v52 = v50[2];
    v12 = v16 + v52;
    if (__OFADD__(v52, v16))
    {
      goto LABEL_104;
    }

    v53 = swift_isUniquelyReferenced_nonNull_native();
    if (v53 && v12 <= v50[3] >> 1)
    {
      if (!*(v51 + 16))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v52 <= v12)
      {
        v54 = v16 + v52;
      }

      else
      {
        v54 = v52;
      }

      v50 = sub_1D698BAE0(v53, v54, 1, v50);
      if (!*(v51 + 16))
      {
LABEL_23:

        if (v16)
        {
          goto LABEL_105;
        }

        goto LABEL_24;
      }
    }

    v12 = (v50[3] >> 1) - v50[2];
    type metadata accessor for FormatInspectionItem(0);
    if (v12 < v16)
    {
      __break(1u);
      goto LABEL_120;
    }

    swift_arrayInitWithCopy();

    if (v16)
    {
      break;
    }

LABEL_24:
    ++v15;
    v49 += 40;
    if (v48 == v15)
    {
      goto LABEL_61;
    }
  }

  v55 = v50[2];
  v56 = __OFADD__(v55, v16);
  v57 = v16 + v55;
  if (!v56)
  {
    v50[2] = v57;
    goto LABEL_24;
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  if (!swift_dynamicCast())
  {
    goto LABEL_130;
  }

  v22 = type metadata accessor for FormatInspectionItem(0);
  v24 = v280;
  v134 = &v280[*(v22 + 24)];
  v206 = v304;
  *v134 = v303;
  *(v134 + 1) = v206;
  v136 = type metadata accessor for FormatInspectionItem.Value(0);
LABEL_93:
  swift_storeEnumTagMultiPayload();
  (*(*(v136 - 8) + 56))(v134, 0, 1, v136);
LABEL_5:
  v26 = v279;
  *v24 = v278;
  *(v24 + 1) = v26;
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v27 = &v24[*(v22 + 28)];
LABEL_13:
  *v27 = 0;
  *(v27 + 1) = 0;
  v27[16] = -1;
LABEL_14:
}

uint64_t sub_1D7131400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v41 = a3;
  if (!a3)
  {
    v9 = type metadata accessor for FormatInspectionItem(0);
    v10 = *(v9 + 24);
    v11 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v11 - 8) + 56))(a4 + v10, 1, 1, v11);
    *a4 = a1;
    a4[1] = a2;
    a4[2] = 0;
    a4[3] = 0;
    v13 = a4 + *(v9 + 28);
    *v13 = 0;
    *(v13 + 1) = 0;
    v13[16] = -1;
    return result;
  }

  sub_1D71330BC(0, &qword_1EC896E28, type metadata accessor for SportsScoreDataVisualization, MEMORY[0x1E69E62F8]);
  v8 = v7;
  type metadata accessor for FormatCommandAction();
  if (!swift_dynamicCast())
  {
    sub_1D7133B88(0, &qword_1EC88D750, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D73A8]);
    if (!swift_dynamicCast())
    {
      type metadata accessor for DebugFormatDebuggerCallStackEntry();
      if (!swift_dynamicCast())
      {
        type metadata accessor for DebugFormatDebuggerWorkspaceStackEntry();
        if (!swift_dynamicCast())
        {
          sub_1D5B5A498(0, &unk_1EDF04400);
          if (swift_dynamicCast())
          {

            v19 = [v40[0] attributedName];
            v20 = [v19 string];

            v21 = sub_1D726207C();
            v23 = v22;

            v24 = [v40[0] category];
            if (v24)
            {
              v25 = v24;
              v26 = sub_1D726207C();
              v28 = v27;
            }

            else
            {
              v26 = 0;
              v28 = 0;
            }

            v36 = type metadata accessor for FormatInspectionItem(0);
            v37 = *(v36 + 24);
            *(a4 + v37) = v40[0];
            v38 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v38 - 8) + 56))(a4 + v37, 0, 1, v38);
            *a4 = v21;
            a4[1] = v23;
            a4[2] = v26;
            a4[3] = v28;
            v17 = *(v36 + 28);
            goto LABEL_9;
          }

          sub_1D5B49474(0, &qword_1EDF3C5D0);
          if (!swift_dynamicCast())
          {
            v40[3] = v8;
            v40[4] = sub_1D71339C8();
            v40[0] = v41;
            sub_1D5B7DDE8(v40, v39);
            v29 = type metadata accessor for FormatInspectionItem(0);
            v30 = (a4 + *(v29 + 24));
            v31 = *__swift_project_boxed_opaque_existential_1(v39, v39[3]);
            v32 = type metadata accessor for SportsScoreDataVisualization();

            *v30 = MEMORY[0x1DA6F9D20](v31, v32);
            v30[1] = v33;
            v34 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v34 - 8) + 56))(v30, 0, 1, v34);
            *a4 = a1;
            a4[1] = a2;
            a4[2] = 0;
            a4[3] = 0;
            v35 = a4 + *(v29 + 28);
            *v35 = 0;
            *(v35 + 1) = 0;
            v35[16] = -1;
            __swift_destroy_boxed_opaque_existential_1(v39);
          }
        }
      }
    }
  }

  v14 = type metadata accessor for FormatInspectionItem(0);
  v15 = *(v14 + 24);
  *(a4 + v15) = v40[0];
  v16 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(a4 + v15, 0, 1, v16);
  *a4 = a1;
  a4[1] = a2;
  a4[2] = 0;
  a4[3] = 0;
  v17 = *(v14 + 28);
LABEL_9:
  v18 = a4 + v17;
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = -1;
}

size_t sub_1D713197C(void *a1)
{
  sub_1D5EA74B8();
  v186 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v180 = v172 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v178 = v172 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (v172 - v11);
  MEMORY[0x1EEE9AC00](v13, v14);
  v187 = (v172 - v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  v189 = v172 - v18;
  if (!a1)
  {
    return 0;
  }

  v19 = a1;
  if (([v19 isAccessibilityElement] & 1) == 0 && !objc_msgSend(v19, sel_accessibilityContainerType))
  {

    return 0;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (!v26)
    {
LABEL_10:
      v194 = 0;
      v195 = 0;
      goto LABEL_11;
    }

    v27 = v26;
    v22 = v19;
    v23 = [v27 accessibilityIdentifier];
    if (v23)
    {
      goto LABEL_6;
    }

LABEL_9:

    goto LABEL_10;
  }

  v21 = v20;
  v22 = v19;
  v23 = [v21 accessibilityIdentifier];
  if (!v23)
  {
    goto LABEL_9;
  }

LABEL_6:
  v24 = v23;
  v194 = sub_1D726207C();
  v195 = v25;

LABEL_11:
  v28 = [v19 accessibilityElements];
  if (v28)
  {
    v29 = v28;
    v173 = sub_1D726267C();
  }

  else
  {
    v173 = MEMORY[0x1E69E7CC0];
  }

  v30 = [v19 accessibilityCustomActions];
  v185 = v12;
  if (v30)
  {
    v31 = v30;
    sub_1D5B5A498(0, &unk_1EDF04400);
    v191 = sub_1D726267C();
  }

  else
  {
    v191 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5EF032C();
  inited = swift_initStackObject();
  v193 = xmmword_1D7284F00;
  *(inited + 16) = xmmword_1D7284F00;
  sub_1D71330BC(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  v32 = *(v3 + 72);
  v174 = *(v3 + 80);
  v175 = v33;
  v34 = (v174 + 32) & ~v174;
  v184 = 2 * v32;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1D7270C10;
  v36 = v35 + v34;
  v37 = [v19 isAccessibilityElement];
  v38 = type metadata accessor for FormatInspectionItem(0);
  v39 = *(v38 + 24);
  *(v36 + v39) = v37;
  v40 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  v41 = *(v40 - 8);
  v182 = *(v41 + 56);
  v183 = v40;
  v181 = v41 + 56;
  v182(v35 + v34 + v39, 0, 1, v40);
  *v36 = xmmword_1D739CF60;
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  v42 = v35 + v34 + *(v38 + 28);
  *v42 = 0;
  *(v42 + 8) = 0;
  *(v42 + 16) = -1;
  v43 = *(v38 - 8);
  v44 = *(v43 + 56);
  v45 = v43 + 56;
  v44((v35 + v34), 0, 1, v38);
  sub_1D7124B70(0x656E6961746E6F43, 0xEE00657079542072, [v19 accessibilityContainerType], 0, (v35 + v34 + v32));
  v44((v35 + v34 + v32), 0, 1, v38);
  sub_1D6795150(1701869908, 0xE400000000000000, 0, 0, v35, v198);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v46 = inited;
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(v46 + 64) = &off_1F518B2C0;
  v47 = swift_allocObject();
  *(v46 + 32) = v47;
  v172[1] = v46 + 32;
  *(v47 + 48) = v199;
  v48 = v198[1];
  *(v47 + 16) = v198[0];
  *(v47 + 32) = v48;
  v190 = v32;
  v49 = swift_allocObject();
  *(v49 + 16) = v193;
  v192 = v34;
  v50 = (v49 + v34);
  if (v195)
  {
    v51 = v194;
  }

  else
  {
    v51 = 0;
  }

  sub_1D7120550(0x696669746E656449, 0xEA00000000007265, v51, v195, v50);
  v194 = v44;
  v195 = v38;
  *&v193 = v45;
  v44(v50, 0, 1, v38);
  v188 = v19;
  v52 = [v19 accessibilityLabel];
  if (v52)
  {
    v53 = v52;
    v54 = sub_1D726207C();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0;
  }

  v57 = v190;
  sub_1D7120550(0x6C6562614CLL, 0xE500000000000000, v54, v56, &v50[v190]);
  v194(&v50[v57], 0, 1, v195);
  v58 = [v188 accessibilityValue];
  if (v58)
  {
    v59 = v58;
    v60 = sub_1D726207C();
    v62 = v61;
  }

  else
  {
    v60 = 0;
    v62 = 0;
  }

  v63 = v184;
  sub_1D7120550(0x65756C6156, 0xE500000000000000, v60, v62, &v50[v184]);
  v194(&v50[v63], 0, 1, v195);
  v64 = [v188 accessibilityHint];
  if (v64)
  {
    v65 = v64;
    v66 = sub_1D726207C();
    v68 = v67;
  }

  else
  {
    v66 = 0;
    v68 = 0;
  }

  v69 = v190;
  sub_1D7120550(1953392968, 0xE400000000000000, v66, v68, &v50[3 * v190]);
  v194(&v50[3 * v69], 0, 1, v195);
  v70 = [v188 accessibilityLanguage];
  if (v70)
  {
    v71 = v70;
    v72 = sub_1D726207C();
    v74 = v73;

    v69 = v190;
  }

  else
  {
    v72 = 0;
    v74 = 0;
  }

  sub_1D7120550(0x65676175676E614CLL, 0xE800000000000000, v72, v74, &v50[4 * v69]);
  v194(&v50[4 * v69], 0, 1, v195);
  v75 = [v188 ts_accessibilityElementHelp];
  if (v75)
  {
    v76 = v75;
    v77 = sub_1D726207C();
    v79 = v78;
  }

  else
  {
    v77 = 0;
    v79 = 0;
  }

  v80 = v190;
  sub_1D7120550(1886152008, 0xE400000000000000, v77, v79, &v50[5 * v190]);
  v194(&v50[5 * v80], 0, 1, v195);
  sub_1D6795150(0x69747265706F7250, 0xEA00000000007365, 0, 0, v49, v200);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v81 = inited;
  *(inited + 96) = &type metadata for FormatInspectionGroup;
  *(v81 + 104) = &off_1F518B2C0;
  v82 = swift_allocObject();
  v83 = 0;
  v84 = MEMORY[0x1E69DD9E8];
  *(v81 + 72) = v82;
  v184 = 0x80000001D73BBB50;
  *(v82 + 48) = v201;
  v179 = 0x80000001D73BBB30;
  v85 = v200[1];
  v177 = 0x80000001D73BBB10;
  v86 = MEMORY[0x1E69E7CC0];
  *(v82 + 16) = v200[0];
  *(v82 + 32) = v85;
  v87 = &selRef_setHyphenationFactor_;
  v88 = *v84;
  v89 = v188;
  v186 = *v84;
  do
  {
    v91 = byte_1F50FA7A0[v83 + 32];
    if ((**(&unk_1E84D0E00 + v91) & ~[v89 v87[349]]) == 0 && **(&unk_1E84D0E00 + v91) != v88)
    {
      v92 = 0xE400000000000000;
      v93 = 1701736302;
      switch(v91)
      {
        case 1:
          v92 = 0xE600000000000000;
          v93 = 0x6E6F74747562;
          break;
        case 2:
          v93 = 1802398060;
          break;
        case 3:
          v93 = 0x6946686372616573;
          v92 = 0xEB00000000646C65;
          break;
        case 4:
          v92 = 0xE500000000000000;
          v93 = 0x6567616D69;
          break;
        case 5:
          v92 = 0xE800000000000000;
          v93 = 0x64657463656C6573;
          break;
        case 6:
          v92 = 0xEA0000000000646ELL;
          v93 = 0x756F537379616C70;
          break;
        case 7:
          v93 = 0x6472616F6279656BLL;
          v92 = 0xEB0000000079654BLL;
          break;
        case 8:
          v92 = 0xEA00000000007478;
          v93 = 0x6554636974617473;
          break;
        case 9:
          v93 = 0x457972616D6D7573;
          v92 = 0xEE00746E656D656CLL;
          break;
        case 10:
          v93 = 0x6C62616E45746F6ELL;
          v92 = 0xEA00000000006465;
          break;
        case 11:
          v93 = 0xD000000000000011;
          v92 = v177;
          break;
        case 12:
          v93 = 0xD000000000000012;
          v92 = v179;
          break;
        case 13:
          v92 = 0xEA0000000000656CLL;
          v93 = 0x62617473756A6461;
          break;
        case 14:
          v93 = 0xD000000000000017;
          v92 = v184;
          break;
        case 15:
          v93 = 0x6150736573756163;
          v92 = 0xEE006E7275546567;
          break;
        case 16:
          v92 = 0xE600000000000000;
          v93 = 0x726564616568;
          break;
        case 17:
          v92 = 0xE600000000000000;
          v93 = 0x726142626174;
          break;
        default:
          break;
      }

      v94 = v195;
      v95 = v187;
      v96 = (v187 + *(v195 + 24));
      *v96 = 0;
      v96[1] = 0xE000000000000000;
      v97 = v183;
      swift_storeEnumTagMultiPayload();
      v182(v96, 0, 1, v97);
      *v95 = v93;
      v95[1] = v92;
      v95[2] = 0;
      v95[3] = 0;
      v98 = v95 + *(v94 + 28);
      *v98 = 0;
      *(v98 + 1) = 0;
      v98[16] = -1;
      v194(v95, 0, 1, v94);
      sub_1D5CAD93C(v95, v189, sub_1D5EA74B8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_1D698C0A8(0, v86[2] + 1, 1, v86);
      }

      v89 = v188;
      v100 = v86[2];
      v99 = v86[3];
      v87 = &selRef_setHyphenationFactor_;
      v88 = v186;
      if (v100 >= v99 >> 1)
      {
        v86 = sub_1D698C0A8(v99 > 1, v100 + 1, 1, v86);
      }

      v86[2] = v100 + 1;
      v90 = v86 + v192 + v100 * v190;
      v80 = v190;
      sub_1D5CAD93C(v189, v90, sub_1D5EA74B8);
    }

    ++v83;
  }

  while (v83 != 18);
  sub_1D6795150(0x737469617254, 0xE600000000000000, 0, 0, v86, v202);

  v101 = inited;
  *(inited + 136) = &type metadata for FormatInspectionGroup;
  *(v101 + 144) = &off_1F518B2C0;
  v102 = swift_allocObject();
  *(v101 + 112) = v102;
  *(v102 + 48) = v203;
  v103 = v202[1];
  *(v102 + 16) = v202[0];
  *(v102 + 32) = v103;
  v104 = v191;
  if (v191 >> 62)
  {
    v171 = v191;
    v105 = sub_1D7263BFC();
    v104 = v171;
  }

  else
  {
    v105 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v106 = v178;
  v107 = v185;
  if (v105)
  {
    v108 = v104;
    *&v208 = MEMORY[0x1E69E7CC0];
    result = sub_1D69972A4(0, v105 & ~(v105 >> 63), 0);
    if (v105 < 0)
    {
      __break(1u);
      return result;
    }

    v110 = 0;
    v111 = v208;
    v112 = v108;
    v113 = v108 & 0xC000000000000001;
    do
    {
      if (v113)
      {
        v114 = MEMORY[0x1DA6FB460](v110, v112);
      }

      else
      {
        v114 = *(v112 + 8 * v110 + 32);
      }

      sub_1D7124F00(0, 0xE000000000000000, v114, v107);
      v194(v107, 0, 1, v195);
      *&v208 = v111;
      v116 = *(v111 + 16);
      v115 = *(v111 + 24);
      if (v116 >= v115 >> 1)
      {
        sub_1D69972A4(v115 > 1, v116 + 1, 1);
        v111 = v208;
      }

      ++v110;
      *(v111 + 16) = v116 + 1;
      sub_1D5CAD93C(v107, v111 + v192 + v116 * v80, sub_1D5EA74B8);
      v112 = v191;
    }

    while (v105 != v110);

    v106 = v178;
  }

  else
  {

    v111 = MEMORY[0x1E69E7CC0];
  }

  sub_1D6795150(0x41206D6F74737543, 0xEE00736E6F697463, 0, 0, v111, v204);

  v117 = inited;
  *(inited + 176) = &type metadata for FormatInspectionGroup;
  *(v117 + 184) = &off_1F518B2C0;
  v118 = swift_allocObject();
  *(v117 + 152) = v118;
  *(v118 + 48) = v205;
  v119 = v204[1];
  *(v118 + 16) = v204[0];
  *(v118 + 32) = v119;
  v120 = *(v173 + 16);
  if (v120)
  {
    v121 = 0;
    v122 = v173 + 32;
    v191 = MEMORY[0x1E69E7CC0];
    v177 = v120;
    v184 = v173 + 32;
    while (1)
    {
      sub_1D5B76B10(v122 + 32 * v121, v197);
      sub_1D5B76B10(v197, &v208);
      sub_1D5B5A498(0, &qword_1EDF1A650);
      if (swift_dynamicCast())
      {
        v123 = *&v206[0];
        v124 = *&v206[0];
        v125 = sub_1D713197C(v123);
        if (v125)
        {
          v126 = v125;
          type metadata accessor for FormatAccessibilityShadowElement();
          v127 = swift_dynamicCastClass();
          if (v127)
          {
            v128 = v127;
            v129 = v126;
            v130 = v124;
            if ([v128 accessibilityContainer])
            {
              swift_getObjectType();
              *&v208 = sub_1D7264C5C();
              *(&v208 + 1) = v131;
              MEMORY[0x1DA6F9910](0x6F64616853202D20, 0xE900000000000077);

              swift_unknownObjectRelease();
              v187 = *(&v208 + 1);
              v189 = v208;
              v126 = v129;
              goto LABEL_87;
            }

            v126 = v129;
          }

          swift_getObjectType();
          v189 = sub_1D7264C5C();
          v187 = v132;
LABEL_87:
          if ([v124 isAccessibilityElement])
          {
            v185 = 0xE700000000000000;
            v186 = 0x746E656D656C45;
            v133 = *(v126 + 16);
            if (v133)
            {
LABEL_89:
              v196 = MEMORY[0x1E69E7CC0];
              sub_1D6997338(0, v133, 0);
              v134 = v196;
              v179 = v126;
              v135 = v126 + 32;
              do
              {
                sub_1D5B68374(v135, v206);
                sub_1D5B49474(0, &qword_1EC880AD0);
                sub_1D6E0CED0(0, &unk_1EC880480, MEMORY[0x1E69E6720]);
                swift_dynamicCast();
                v196 = v134;
                v137 = *(v134 + 16);
                v136 = *(v134 + 24);
                if (v137 >= v136 >> 1)
                {
                  sub_1D6997338((v136 > 1), v137 + 1, 1);
                  v134 = v196;
                }

                *(v134 + 16) = v137 + 1;
                v138 = v134 + 40 * v137;
                v139 = v208;
                v140 = v209;
                *(v138 + 64) = v210;
                *(v138 + 32) = v139;
                *(v138 + 48) = v140;
                v135 += 40;
                --v133;
              }

              while (v133);

              v106 = v178;
              goto LABEL_99;
            }
          }

          else
          {
            v141 = [v124 accessibilityContainerType];
            if (v141 >= 5)
            {
              *&v208 = 0x3A6E776F6E6B6E55;
              *(&v208 + 1) = 0xE900000000000020;
              *&v206[0] = v141;
              v143 = sub_1D72644BC();
              MEMORY[0x1DA6F9910](v143);

              v142 = *(&v208 + 1);
              v186 = v208;
            }

            else
            {
              v186 = *&aNone_29[8 * v141];
              v142 = *&aLandmarksemant[8 * v141 + 16];
            }

            v185 = v142;
            v133 = *(v126 + 16);
            if (v133)
            {
              goto LABEL_89;
            }
          }

          v134 = MEMORY[0x1E69E7CC0];
LABEL_99:
          v144 = sub_1D7073500(v134);

          v145 = v180;
          sub_1D711AD20(v189, v187, v144, v186, v185, v180);

          __swift_destroy_boxed_opaque_existential_1(v197);
          v194(v145, 0, 1, v195);
          sub_1D5CAD93C(v145, v106, sub_1D5EA74B8);
          v146 = v191;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v120 = v177;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v146 = sub_1D698C0A8(0, v146[2] + 1, 1, v146);
          }

          v149 = v146[2];
          v148 = v146[3];
          v191 = v146;
          if (v149 >= v148 >> 1)
          {
            v191 = sub_1D698C0A8(v148 > 1, v149 + 1, 1, v191);
          }

          v151 = v191;
          v150 = v192;
          *(v191 + 16) = v149 + 1;
          sub_1D5CAD93C(v106, v151 + v150 + v149 * v190, sub_1D5EA74B8);
          v122 = v184;
          goto LABEL_78;
        }

        __swift_destroy_boxed_opaque_existential_1(v197);

        v122 = v184;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v197);
      }

LABEL_78:
      if (++v121 == v120)
      {

        v152 = v191;
        goto LABEL_106;
      }
    }
  }

  v152 = MEMORY[0x1E69E7CC0];
LABEL_106:
  sub_1D6795150(0xD000000000000011, 0x80000001D73FE1C0, 0, 0, v152, v206);

  v153 = inited;
  *(inited + 216) = &type metadata for FormatInspectionGroup;
  v153[28] = &off_1F518B2C0;
  v154 = swift_allocObject();
  v153[24] = v154;
  *(v154 + 48) = v207;
  v155 = v206[1];
  *(v154 + 16) = v206[0];
  *(v154 + 32) = v155;
  v156 = v192;
  v157 = swift_allocObject();
  *(v157 + 16) = xmmword_1D7273AE0;
  v158 = v157 + v156;
  v159 = v188;
  [v188 accessibilityFrame];
  v160 = v195;
  v161 = v158 + *(v195 + 24);
  *v161 = v162;
  *(v161 + 8) = v163;
  *(v161 + 16) = v164;
  *(v161 + 24) = v165;
  *(v161 + 32) = 0;
  *(v161 + 40) = 0;
  *(v161 + 48) = 6;
  v166 = v183;
  swift_storeEnumTagMultiPayload();
  v182(v161, 0, 1, v166);
  *v158 = xmmword_1D72E27B0;
  *(v158 + 16) = 0;
  *(v158 + 24) = 0;
  v167 = v158 + *(v160 + 28);
  *v167 = 0;
  *(v167 + 8) = 0;
  *(v167 + 16) = -1;
  v194(v158, 0, 1, v160);
  sub_1D6795150(0x656D617246, 0xE500000000000000, 0, 0, v157, &v208);
  swift_setDeallocating();
  sub_1D7133844(v158, sub_1D5EA74B8);
  swift_deallocClassInstance();
  v153[32] = &type metadata for FormatInspectionGroup;
  v153[33] = &off_1F518B2C0;
  v168 = swift_allocObject();
  v153[29] = v168;
  *(v168 + 48) = v210;
  v169 = v209;
  *(v168 + 16) = v208;
  *(v168 + 32) = v169;
  v170 = sub_1D7073500(v153);
  swift_setDeallocating();
  sub_1D6E0CED0(0, &unk_1EC880480, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();

  return v170;
}

uint64_t UIAccessibilityContainerType.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 1701736270;
    }

    if (a1 == 1)
    {
      return 0x6261542061746144;
    }
  }

  else
  {
    switch(a1)
    {
      case 4:
        return 0x6369746E616D6553;
      case 3:
        return 0x6B72616D646E614CLL;
      case 2:
        return 1953720652;
    }
  }

  v2 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v2);

  return 0x3A6E776F6E6B6E55;
}

void sub_1D71330BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7133120(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D7133160(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D71337A0(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D71331C4()
{
  result = qword_1EC89B228;
  if (!qword_1EC89B228)
  {
    sub_1D7133B88(255, &qword_1EDF1AD40, sub_1D5CD8948, &type metadata for FormatBorderEdge, MEMORY[0x1E69E64E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B228);
  }

  return result;
}

unint64_t sub_1D7133254()
{
  result = qword_1EC89B230;
  if (!qword_1EC89B230)
  {
    sub_1D7133B88(255, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B230);
  }

  return result;
}

unint64_t sub_1D71332E4()
{
  result = qword_1EC89B240;
  if (!qword_1EC89B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B240);
  }

  return result;
}

unint64_t sub_1D7133338()
{
  result = qword_1EDF3BEB8;
  if (!qword_1EDF3BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BEB8);
  }

  return result;
}

uint64_t sub_1D713338C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D71337A0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D713340C()
{
  if (!qword_1EC886F28)
  {
    v0 = type metadata accessor for FormatRange();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886F28);
    }
  }
}

unint64_t sub_1D7133490()
{
  result = qword_1EC89B268;
  if (!qword_1EC89B268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B268);
  }

  return result;
}

unint64_t sub_1D71334E4()
{
  result = qword_1EC89B270;
  if (!qword_1EC89B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B270);
  }

  return result;
}

unint64_t sub_1D7133538()
{
  result = qword_1EC89B278;
  if (!qword_1EC89B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B278);
  }

  return result;
}

unint64_t sub_1D713358C()
{
  result = qword_1EC89B280;
  if (!qword_1EC89B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B280);
  }

  return result;
}

unint64_t sub_1D71335E0()
{
  result = qword_1EC89B288;
  if (!qword_1EC89B288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B288);
  }

  return result;
}

unint64_t sub_1D7133634()
{
  result = qword_1EC89B298;
  if (!qword_1EC89B298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B298);
  }

  return result;
}

unint64_t sub_1D7133688()
{
  result = qword_1EC89B2A0;
  if (!qword_1EC89B2A0)
  {
    sub_1D7133B88(255, &qword_1EDF1AD48, sub_1D5C86238, &type metadata for FormatFontTrait, MEMORY[0x1E69E64E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B2A0);
  }

  return result;
}

unint64_t sub_1D713374C()
{
  result = qword_1EC89B2B0;
  if (!qword_1EC89B2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B2B0);
  }

  return result;
}

void sub_1D71337A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D71337F0()
{
  result = qword_1EC89B2C0;
  if (!qword_1EC89B2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B2C0);
  }

  return result;
}

uint64_t sub_1D7133844(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_8Tm_1()
{
  if (*(v0 + 16) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1D71338E4()
{
  result = qword_1EC89B2C8;
  if (!qword_1EC89B2C8)
  {
    sub_1D7133B88(255, &qword_1EDF04800, sub_1D5E9DF74, &type metadata for SportsScoreDataVisualizationTrait, MEMORY[0x1E69E64E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B2C8);
  }

  return result;
}

unint64_t sub_1D7133974()
{
  result = qword_1EC89B2D0;
  if (!qword_1EC89B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B2D0);
  }

  return result;
}

unint64_t sub_1D71339C8()
{
  result = qword_1EC89B2D8;
  if (!qword_1EC89B2D8)
  {
    sub_1D71330BC(255, &qword_1EC896E28, type metadata accessor for SportsScoreDataVisualization, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B2D8);
  }

  return result;
}

unint64_t sub_1D7133A50()
{
  result = qword_1EC89B2E0;
  if (!qword_1EC89B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B2E0);
  }

  return result;
}

unint64_t sub_1D7133AA4()
{
  result = qword_1EC89B2E8;
  if (!qword_1EC89B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B2E8);
  }

  return result;
}

unint64_t sub_1D7133AF8()
{
  result = qword_1EC89B2F8;
  if (!qword_1EC89B2F8)
  {
    sub_1D7133B88(255, &qword_1EC89B2F0, sub_1D668E3A8, &type metadata for FormatGlassEffectOption, MEMORY[0x1E69E64E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B2F8);
  }

  return result;
}

void sub_1D7133B88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D7133BF0()
{
  result = qword_1EC89B300;
  if (!qword_1EC89B300)
  {
    sub_1D7133B88(255, &qword_1EDF32838, sub_1D5C5A3D0, &type metadata for FormatInteger, type metadata accessor for FormatEquation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B300);
  }

  return result;
}

uint64_t sub_1D7133C80(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D71330BC(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7133D00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D71330BC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7133DA4(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_1D7133DF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerCallStackEntry_callStackFrame + 8);
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerCallStackEntry_callStackFrame + 16);
  v4 = *(v0 + OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerCallStackEntry_callStackFrame + 24);
  v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerCallStackEntry_callStackFrame + 32);
  v5 = *(v0 + OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerCallStackEntry_selectedCallStackFrame + 8);
  v6 = *(v0 + OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerCallStackEntry_selectedCallStackFrame + 16);
  v8 = *(v0 + OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerCallStackEntry_selectedCallStackFrame + 24);
  v7 = *(v0 + OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerCallStackEntry_selectedCallStackFrame + 32);
  if (v1 == v5 && v2 == v6)
  {
    if (v4 != v8)
    {
      return 0;
    }

    return v3 == v7;
  }

  v10 = sub_1D72646CC();
  result = 0;
  if ((v10 & 1) != 0 && v4 == v8)
  {
    return v3 == v7;
  }

  return result;
}

uint64_t sub_1D7133E80()
{
  sub_1D7133FFC(v0 + OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerCallStackEntry_callStackFrame);

  sub_1D7133FFC(v0 + OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerCallStackEntry_selectedCallStackFrame);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatDebuggerCallStackEntry()
{
  result = qword_1EC89B328;
  if (!qword_1EC89B328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7133F5C()
{
  result = type metadata accessor for FormatDebuggerCallStackFrame(319);
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

uint64_t sub_1D7133FFC(uint64_t a1)
{
  v2 = type metadata accessor for FormatDebuggerCallStackFrame(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7134058(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 32);

  v5(v6, a2, a3);
}

uint64_t sub_1D71340EC@<X0>(uint64_t a1@<X8>)
{
  sub_1D7262EBC();
  sub_1D5C384A0();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7273AE0;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D5B7E2C0();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_1D5B5F6D0();
  v3 = sub_1D72638FC();
  sub_1D725C30C();

  sub_1D5BB60D4();
  v5 = *(v4 + 48);
  v6 = sub_1D72585BC();
  v7 = *(*(v6 - 8) + 56);
  v7(a1, 1, 1, v6);
  return (v7)(a1 + v5, 1, 1, v6);
}

uint64_t sub_1D7134270(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, double a5, double a6)
{
  v68[1] = a4;
  v72 = a3;
  v75 = a2;
  sub_1D5B54F68(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v73 = v68 - v11;
  v12 = sub_1D72585BC();
  v77 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v71 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v68 - v17;
  sub_1D7138B64();
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = (v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x1E6968FB0];
  sub_1D5B54F68(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v68[0] = v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v78 = v68 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = v68 - v33;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = v68 - v37;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = v68 - v41;
  sub_1D7138C60(a1, v23, sub_1D7138B64);
  v70 = *v23;
  v43 = v23 + *(v20 + 56);
  sub_1D5BB60D4();
  v45 = *(v44 + 48);
  sub_1D5EB8540(v43, v42);
  v74 = v38;
  v46 = v38;
  v47 = v77;
  sub_1D5EB8540(v43 + v45, v46);
  v76 = v42;
  sub_1D5C00FEC(v42, v34, &qword_1EDF45B40, v24);
  v48 = *(v47 + 48);
  if (v48(v34, 1, v12) == 1)
  {
    (*(v47 + 16))(v18, v75 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_url, v12);
    if (v48(v34, 1, v12) != 1)
    {
      sub_1D5B6F5C8(v34, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    }
  }

  else
  {
    (*(v47 + 32))(v18, v34, v12);
  }

  v49 = v48(v76, 1, v12);
  v50 = v68[0];
  if (v49 == 1)
  {
    (*(v47 + 56))(v78, 1, 1, v12);
  }

  else
  {
    sub_1D5C00FEC(v74, v78, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  (*(v47 + 56))(v50, 1, 1, v12);

  v51 = sub_1D726203C();

  if (v48(v50, 1, v12) == 1)
  {
    v52 = 0;
  }

  else
  {
    v52 = sub_1D725844C();
    (*(v47 + 8))(v50, v12);
  }

  v53 = v73;
  v54 = v71;
  v55 = v75;
  v56 = [objc_allocWithZone(MEMORY[0x1E69CE190]) initWithContext:v51 URL:v52];

  (*(v47 + 16))(v54, v55 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_url, v12);
  sub_1D5C00FEC(v55 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_dataVisualization, v53, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
  v57 = *(v55 + 24);
  v69 = v12;
  if (v57)
  {
    v58 = *(v55 + 16);
    v59 = v57;
  }

  else
  {
    v58 = 0;
    v59 = 0xE000000000000000;
  }

  v60 = *(*(v55 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_config) + 16);

  v61 = v60;
  v62 = v70;
  v63 = v78;
  sub_1D7134FD4(v18, v72, v78, v56, v54, v53, v58, v59, a5, a6, v61, v70);

  sub_1D5B6F5C8(v53, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
  v64 = *(v77 + 8);
  v65 = v69;
  v64(v54, v69);
  v66 = MEMORY[0x1E6968FB0];
  sub_1D5B6F5C8(v63, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v64(v18, v65);
  sub_1D5B6F5C8(v74, &qword_1EDF45B40, v66);
  return sub_1D5B6F5C8(v76, &qword_1EDF45B40, v66);
}

uint64_t sub_1D7134938(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D5B54F68(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - v13;
  v15 = sub_1D725E84C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    (*(v16 + 104))(v19, *MEMORY[0x1E69D7FB8], v15);
    v22 = *(v21 + 48);
    sub_1D5EBC314(a4, a5);

    v23 = a1;
    sub_1D7134D70(a4, a5, a6, v19, v22, a1);
    swift_getObjectType();
    if (qword_1EDF3AF88 != -1)
    {
      swift_once();
    }

    v24 = sub_1D72585BC();
    v25 = *(v24 - 8);
    (*(v25 + 16))(v14, a2, v24);
    (*(v25 + 56))(v14, 0, 1, v24);

    sub_1D725D97C();
    sub_1D5B6F5C8(v14, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  return result;
}

uint64_t FormatWebEmbedNodeRenderer.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t FormatWebEmbedNodeRenderer.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7134D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v24[1] = a3;
  v11 = sub_1D725E84C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v24 - v18;
  sub_1D725E36C();
  v26[3] = sub_1D725A60C();
  v26[4] = sub_1D7138D94(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
  v26[0] = a5;
  if (a2)
  {
    (*(v12 + 16))(v19, a4, v11);
    sub_1D5B68374(v26, v25);
    v27 = 0u;
    v28 = 0u;
    v29 = 1;

    v20 = a6;
    v21 = sub_1D725E2FC();
    sub_1D5EBC358(a1, a2);
  }

  else
  {
    (*(v12 + 16))(v15, a4, v11);
    sub_1D5B68374(v26, v25);
    v27 = 0u;
    v28 = 0u;
    v29 = 1;
    v22 = a6;
    v21 = sub_1D725E33C();
  }

  (*(v12 + 8))(a4, v11);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v21;
}

void sub_1D7134FD4(uint64_t a1, void *a2, uint64_t a3, void *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, char *a12)
{
  v381 = a8;
  v380 = a7;
  v383 = a5;
  v389 = a4;
  v382 = a3;
  v384 = a2;
  v16 = a11;
  ObjectType = swift_getObjectType();
  sub_1D5BB60D4();
  v362 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v370 = v345 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54F68(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v368 = v345 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v386 = v345 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v365 = v345 - v28;
  v367 = type metadata accessor for WebEmbedDataVisualization();
  v366 = *(v367 - 8);
  MEMORY[0x1EEE9AC00](v367, v29);
  v361 = v345 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v356 = v345 - v33;
  v392 = sub_1D72585BC();
  v34 = *(v392 - 8);
  MEMORY[0x1EEE9AC00](v392, v35);
  v354 = v345 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v353 = v345 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v391 = v345 - v42;
  v379 = sub_1D7258AAC();
  v378 = *(v379 - 8);
  MEMORY[0x1EEE9AC00](v379, v43);
  v390 = v345 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for FormatPictureInPictureModel();
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v363 = v345 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v49);
  v375 = (v345 - v50);
  sub_1D5B54F68(0, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate);
  MEMORY[0x1EEE9AC00](v51 - 8, v52);
  v372 = v345 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54, v55);
  v373 = v345 - v56;
  sub_1D5B54F68(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v57 - 8, v58);
  v357 = v345 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60, v61);
  v63 = v345 - v62;
  MEMORY[0x1EEE9AC00](v64, v65);
  v369 = v345 - v66;
  MEMORY[0x1EEE9AC00](v67, v68);
  v70 = v345 - v69;
  MEMORY[0x1EEE9AC00](v71, v72);
  v364 = v345 - v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v387 = v345 - v76;
  MEMORY[0x1EEE9AC00](v77, v78);
  v388 = v345 - v79;
  v80 = &a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_viewportSize];
  *v80 = a9;
  v80[1] = a10;
  v374 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_preferredContentSizeCategoryOnPopulate;
  v81 = *&a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_preferredContentSizeCategoryOnPopulate];
  v393 = v34;
  if (v81)
  {
    v377 = a11;
    v82 = objc_opt_self();
    v83 = v81;
    v84 = [v82 sharedApplication];
    v85 = [v84 preferredContentSizeCategory];

    v86 = sub_1D726207C();
    v88 = v87;
    if (v86 == sub_1D726207C() && v88 == v89)
    {

      v34 = v393;
    }

    else
    {
      v385 = a6;
      v90 = a1;
      v91 = sub_1D72646CC();

      if (v91)
      {

        a1 = v90;
        v34 = v393;
      }

      else
      {
        [*&a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController] prewarm];

        v34 = v393;
        v92 = v388;
        (*(v393 + 56))(v388, 1, 1, v392);
        v93 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
        swift_beginAccess();
        sub_1D61366E0(v92, &a12[v93]);
        swift_endAccess();
        a1 = v90;
      }

      a6 = v385;
    }

    v16 = v377;
  }

  if ((sub_1D612BE20(a1, a6, v16) & 1) == 0)
  {
    if (qword_1EDF17580 != -1)
    {
      swift_once();
    }

    v141 = sub_1D725C42C();
    __swift_project_value_buffer(v141, qword_1EDFFC6F0);
    v142 = a12;
    v143 = sub_1D725C3FC();
    v144 = sub_1D7262EDC();

    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v394 = v146;
      *v145 = 136315138;
      sub_1D5C384A0();
      v147 = swift_allocObject();
      *(v147 + 16) = xmmword_1D7273AE0;
      *(v147 + 56) = ObjectType;
      *(v147 + 64) = sub_1D7138D94(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController);
      *(v147 + 32) = v142;
      v148 = v142;
      v149 = sub_1D72620BC();
      v151 = v150;
      v152 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
      swift_beginAccess();
      v153 = v388;
      sub_1D5C00FEC(&v148[v152], v388, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v154 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
      swift_beginAccess();
      v155 = &v148[v154];
      v156 = v386;
      sub_1D5C00FEC(v155, v386, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
      v157 = sub_1D613520C(v149, v151, v153, v156);
      v159 = sub_1D5BC5100(v157, v158, &v394);

      *(v145 + 4) = v159;
      _os_log_impl(&dword_1D5B42000, v143, v144, "Blocked reloading web embed based on configuration, %s", v145, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v146);
      MEMORY[0x1DA6FD500](v146, -1, -1);
      MEMORY[0x1DA6FD500](v145, -1, -1);
    }

    goto LABEL_88;
  }

  v385 = a6;
  v348 = v70;
  v351 = v63;
  sub_1D612BCA0(v384);
  a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutGuideDidChange] = 0;
  v95 = v34 + 16;
  v94 = *(v34 + 16);
  v96 = v388;
  v358 = a1;
  v97 = a1;
  v98 = v16;
  v99 = v392;
  v94(v388, v97, v392);
  v100 = v34 + 56;
  v101 = *(v34 + 56);
  v101(v96, 0, 1, v99);
  v102 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_embedURL;
  swift_beginAccess();
  v355 = v102;
  sub_1D61366E0(v96, &a12[v102]);
  swift_endAccess();
  v103 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataFeedURL;
  swift_beginAccess();
  sub_1D7138CC8(v382, &a12[v103], &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  swift_endAccess();
  v104 = v389;
  *&a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_location] = v389;
  swift_unknownObjectRelease();
  v360 = v95;
  v359 = v94;
  v94(v96, v383, v99);
  v377 = v100;
  v376 = v101;
  v101(v96, 0, 1, v99);
  v105 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_sourceURL;
  swift_beginAccess();
  v106 = v104;
  sub_1D61366E0(v96, &a12[v105]);
  swift_endAccess();
  v107 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_feedConfiguration;
  swift_beginAccess();
  v108 = *&a12[v107];
  *&a12[v107] = v98;
  v352 = v98;

  v109 = [a12 view];
  if (!v109)
  {
    __break(1u);
    goto LABEL_97;
  }

  v110 = v109;
  v350 = v106;
  [v109 setNeedsLayout];

  v111 = type metadata accessor for WebEmbedDatastoreUpdate();
  v112 = *(v111 - 8);
  v113 = *(v112 + 56);
  v114 = 1;
  v115 = v373;
  v347 = v111;
  v346 = v113;
  v345[2] = v112 + 56;
  v113(v373, 1, 1);
  v345[1] = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController__lastDatastoreUpdate;
  sub_1D5C00FEC(v115, v372, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate);

  sub_1D725B97C();

  sub_1D5B6F5C8(v115, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate);
  v116 = (*&a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_delegate] + OBJC_IVAR____TtC8NewsFeed26WebEmbedURLHandlerDelegate_webEmbedIdentifier);
  v117 = v381;
  *v116 = v380;
  v116[1] = v117;

  v118 = objc_opt_self();

  v119 = [v118 sharedApplication];
  v120 = [v119 preferredContentSizeCategory];

  v121 = *&a12[v374];
  *&a12[v374] = v120;

  v389 = *&a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController];
  v122 = __swift_project_boxed_opaque_existential_1(&a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_configurationProvider], *&a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_configurationProvider + 24]);
  v123 = v375;
  sub_1D725ADCC();
  v124 = v363;
  sub_1D7138BF8(v123, v363, type metadata accessor for FormatPictureInPictureModel);
  v125 = v393;
  v126 = *(v393 + 48);
  v374 = v393 + 48;
  v375 = v126;
  if (v126(v124, 1, v99) != 1)
  {
    (*(v125 + 32))(v387, v124, v99);
    v114 = 0;
  }

  v127 = v387;
  v376(v387, v114, 1, v99);
  v128 = *&a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager + 24];
  v129 = *&a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager + 32];
  v363 = &a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager];
  __swift_project_boxed_opaque_existential_1(&a12[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_liveActivityWebEmbedDatastoreManager], v128);
  v349 = (*(v129 + 8))(v128, v129);
  v130 = *v122;
  v131 = sub_1D6D5A438(v382);
  v132 = *(v130 + OBJC_IVAR____TtC8NewsFeed29WebEmbedConfigurationProvider_storeFront + 8);
  (*(v378 + 16))(v390, v130 + OBJC_IVAR____TtC8NewsFeed29WebEmbedConfigurationProvider_locale, v379);
  v133 = v130 + OBJC_IVAR____TtC8NewsFeed29WebEmbedConfigurationProvider_contentEnvironment;
  v134 = v392;
  v135 = *(v133 + 8);
  v136 = [v118 sharedApplication];
  v137 = [v136 preferredContentSizeCategory];

  v359(v391, v383, v134);
  v138 = v127;
  v139 = v364;
  sub_1D5C00FEC(v138, v364, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if (v132)
  {
    v140 = sub_1D726203C();
  }

  else
  {
    v140 = 0;
  }

  v160 = sub_1D72589DC();
  if (v135)
  {
    v161 = sub_1D726203C();
    if (v131)
    {
LABEL_23:
      v162 = sub_1D7261D2C();

      goto LABEL_26;
    }
  }

  else
  {
    v161 = 0;
    if (v131)
    {
      goto LABEL_23;
    }
  }

  v162 = 0;
LABEL_26:
  v383 = a12;
  v163 = sub_1D725844C();
  if (v375(v139, 1, v134) == 1)
  {
    v164 = 0;
    v165 = v393;
  }

  else
  {
    v164 = sub_1D725844C();
    v165 = v393;
    (*(v393 + 8))(v139, v134);
  }

  v166 = objc_allocWithZone(MEMORY[0x1E69CE140]);
  LOBYTE(v344) = v349 & 1;
  v167 = v137;
  v168 = [v166 initWithStoreFront:v140 locale:v160 contentEnvironment:v161 contentSizeCategory:v137 layoutGuide:v384 dataSources:v162 location:v350 sourceURL:v163 activePictureInPictureURL:v164 feedConfiguration:v352 supportsLiveActivities:v344];

  v169 = v391;
  v384 = *(v165 + 8);
  v391 = v165 + 8;
  (v384)(v169, v134);
  (*(v378 + 8))(v390, v379);
  sub_1D5B6F5C8(v387, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  [v389 setConfiguration_];

  sub_1D725891C();
  v170 = swift_allocBox();
  sub_1D725890C();
  v171 = v383;
  v172 = *&v383[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_presentationManager];
  v173 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v174 = swift_allocObject();
  v175 = v380;
  v174[2] = v173;
  v174[3] = v175;
  v176 = v381;
  v174[4] = v381;
  v174[5] = v170;
  v399 = sub_1D6136814;
  v400 = v174;
  aBlock = MEMORY[0x1E69E9820];
  v396 = 1107296256;
  v397 = sub_1D6A208B4;
  v398 = &block_descriptor_138;
  v177 = _Block_copy(&aBlock);

  [v172 onPresentable_];
  _Block_release(v177);
  v178 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v179 = swift_allocObject();
  *(v179 + 16) = v178;
  *(v179 + 24) = v170;
  v399 = sub_1D6136820;
  v400 = v179;
  aBlock = MEMORY[0x1E69E9820];
  v396 = 1107296256;
  v397 = sub_1D5B6B06C;
  v398 = &block_descriptor_15_1;
  v180 = _Block_copy(&aBlock);

  [v172 onLoad_];
  _Block_release(v180);
  v181 = *&v171[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_interactionProvider];
  v182 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v399 = sub_1D6136828;
  v400 = v182;
  aBlock = MEMORY[0x1E69E9820];
  v396 = 1107296256;
  v397 = sub_1D5B6B06C;
  v398 = &block_descriptor_19_3;
  v183 = _Block_copy(&aBlock);

  [v181 setInteractionBlock_];
  _Block_release(v183);
  v184 = *&v171[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorProvider];
  v185 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v186 = swift_allocObject();
  v186[2] = v185;
  v186[3] = v175;
  v186[4] = v176;
  v186[5] = v170;
  v399 = sub_1D6136830;
  v400 = v186;
  aBlock = MEMORY[0x1E69E9820];
  v396 = 1107296256;
  v397 = sub_1D6A20930;
  v398 = &block_descriptor_26_3;
  v187 = _Block_copy(&aBlock);

  v390 = v170;

  [v184 onError_];
  _Block_release(v187);
  v188 = *&v171[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_failureProvider];
  v189 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v399 = sub_1D613683C;
  v400 = v189;
  aBlock = MEMORY[0x1E69E9820];
  v396 = 1107296256;
  v397 = sub_1D6A20938;
  v398 = &block_descriptor_30_0;
  v190 = _Block_copy(&aBlock);

  [v188 onEvent_];
  _Block_release(v190);
  v191 = *&v171[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_navigationBarConfigurationProvider];
  v192 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v399 = sub_1D6136844;
  v400 = v192;
  aBlock = MEMORY[0x1E69E9820];
  v396 = 1107296256;
  v397 = sub_1D6A21D50;
  v398 = &block_descriptor_34;
  v193 = _Block_copy(&aBlock);

  [v191 setNavigationBarConfigurationBlock_];
  _Block_release(v193);
  v194 = *&v171[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_preferredSizeManager];
  v195 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v399 = sub_1D613684C;
  v400 = v195;
  aBlock = MEMORY[0x1E69E9820];
  v396 = 1107296256;
  v397 = sub_1D7134058;
  v398 = &block_descriptor_38_1;
  v196 = _Block_copy(&aBlock);

  [v194 onPreferredSize_];
  _Block_release(v196);
  v197 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_dataVisualization;
  swift_beginAccess();
  v198 = *(v366 + 48);
  v199 = v367;
  v200 = 0;
  v201 = 0;
  if (!v198(&v171[v197], 1, v367))
  {
    v202 = v356;
    sub_1D7138C60(&v171[v197], v356, type metadata accessor for WebEmbedDataVisualization);
    v200 = WebEmbedDataVisualization.identifier.getter();
    v201 = v203;
    sub_1D7138D34(v202, type metadata accessor for WebEmbedDataVisualization);
  }

  v387 = v197;
  v204 = v365;
  sub_1D5C00FEC(v385, v365, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
  if (v198(v204, 1, v199) == 1)
  {
    sub_1D5B6F5C8(v204, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    v205 = v392;
    if (!v201)
    {
      goto LABEL_42;
    }

LABEL_39:
    LODWORD(v381) = 0;
    goto LABEL_44;
  }

  v206 = WebEmbedDataVisualization.identifier.getter();
  v208 = v207;
  sub_1D7138D34(v204, type metadata accessor for WebEmbedDataVisualization);
  v205 = v392;
  if (v201)
  {
    if (v208)
    {
      if (v200 == v206 && v201 == v208)
      {

        LODWORD(v381) = 1;
      }

      else
      {
        LODWORD(v381) = sub_1D72646CC();
      }

      goto LABEL_44;
    }

    goto LABEL_39;
  }

  if (!v208)
  {
LABEL_42:
    LODWORD(v381) = 1;
    goto LABEL_45;
  }

  LODWORD(v381) = 0;
LABEL_44:

LABEL_45:
  v209 = v385;
  v210 = v386;
  sub_1D5C00FEC(v385, v386, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
  sub_1D61289C4(v210);
  v380 = *&v171[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_stateMachine];
  sub_1D725AB5C();
  LODWORD(v382) = aBlock;
  v211 = v368;
  sub_1D5C00FEC(v209, v368, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
  if (v198(v211, 1, v199) == 1)
  {
    sub_1D5B6F5C8(v211, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    v212 = v393;
    goto LABEL_57;
  }

  v213 = v361;
  sub_1D7138BF8(v211, v361, type metadata accessor for WebEmbedDataVisualization);
  v214 = &v171[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager];
  v215 = *&v171[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager + 24];
  v216 = *&v171[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager + 32];
  __swift_project_boxed_opaque_existential_1(&v171[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webEmbedDataSourceManager], v215);
  v217 = (*(v216 + 32))(v213, v215, v216);
  if (!v217)
  {
    v217 = _s8NewsFeed17WebEmbedDatastoreC5empty3forAcA0cD17DataVisualizationO_tFZ_0(v213);
  }

  v218 = v217;
  v219 = v213;
  v220 = v373;
  sub_1D7138C60(v219, v373, type metadata accessor for WebEmbedDataVisualization);
  *(v220 + *(v347 + 20)) = v218;
  v346(v220, 0, 1);
  sub_1D5C00FEC(v220, v372, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate);
  v385 = v218;

  sub_1D725B97C();

  sub_1D5B6F5C8(v220, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate);
  if (qword_1EDF17580 != -1)
  {
    swift_once();
  }

  v221 = sub_1D725C42C();
  __swift_project_value_buffer(v221, qword_1EDFFC6F0);
  v222 = v171;
  v223 = sub_1D725C3FC();
  v224 = sub_1D7262EDC();

  v225 = os_log_type_enabled(v223, v224);
  v226 = v382;
  if (v225)
  {
    v227 = v382 == 2;
    v228 = swift_slowAlloc();
    v379 = swift_slowAlloc();
    aBlock = v379;
    *v228 = 67109378;
    *(v228 + 4) = v227;
    *(v228 + 8) = 2080;
    sub_1D5C384A0();
    v229 = swift_allocObject();
    *(v229 + 16) = xmmword_1D7273AE0;
    *(v229 + 56) = ObjectType;
    *(v229 + 64) = sub_1D7138D94(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController);
    *(v229 + 32) = v222;
    v230 = v222;
    v231 = sub_1D72620BC();
    v233 = v232;
    v234 = v388;
    sub_1D5C00FEC(&v171[v355], v388, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v235 = v386;
    sub_1D5C00FEC(&v171[v387], v386, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    v236 = v234;
    v205 = v392;
    v237 = sub_1D613520C(v231, v233, v236, v235);
    v239 = sub_1D5BC5100(v237, v238, &aBlock);

    *(v228 + 10) = v239;
    _os_log_impl(&dword_1D5B42000, v223, v224, "Will load data visualization data store, isInitialized=%{BOOL}d, %s", v228, 0x12u);
    v240 = v379;
    __swift_destroy_boxed_opaque_existential_1(v379);
    MEMORY[0x1DA6FD500](v240, -1, -1);
    v241 = v228;
    v226 = v382;
    MEMORY[0x1DA6FD500](v241, -1, -1);
  }

  v242 = v381;
  if (!((v226 != 2) | v381 & 1))
  {
    v243 = [v389 view];
    if (v243)
    {
      v244 = v243;
      [v243 setHidden_];

      goto LABEL_56;
    }

LABEL_97:
    __break(1u);
    return;
  }

LABEL_56:
  v245 = v226 == 2;
  v246 = *(v385 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore);
  v247 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v248 = swift_allocObject();
  *(v248 + 16) = v247;
  *(v248 + 24) = v245;
  *(v248 + 25) = (v242 ^ 1) & 1;
  v399 = sub_1D613685C;
  v400 = v248;
  aBlock = MEMORY[0x1E69E9820];
  v396 = 1107296256;
  v397 = sub_1D5B6B06C;
  v398 = &block_descriptor_46_0;
  v249 = _Block_copy(&aBlock);
  v250 = v246;

  [v389 loadLocalDatastore:v250 options:1 completion:v249];
  _Block_release(v249);

  v251 = *(v214 + 3);
  v252 = *(v214 + 4);
  __swift_project_boxed_opaque_existential_1(v214, v251);
  v253 = v361;
  (*(v252 + 16))(v222, &protocol witness table for WebEmbedViewController, v361, v251, v252);

  sub_1D7138D34(v253, type metadata accessor for WebEmbedDataVisualization);
  v212 = v393;
LABEL_57:
  v254 = v363;
  v255 = *(v363 + 3);
  v256 = *(v363 + 4);
  __swift_project_boxed_opaque_existential_1(v363, v255);
  (*(v256 + 48))(v171, &protocol witness table for WebEmbedViewController, v255, v256);
  v257 = *(v254 + 3);
  v258 = *(v254 + 4);
  __swift_project_boxed_opaque_existential_1(v254, v257);
  v259 = (*(v258 + 8))(v257, v258);
  v260 = v370;
  v261 = v369;
  v262 = v375;
  if (v259)
  {
    v263 = v348;
    sub_1D5C00FEC(&v171[v355], v348, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    if (v262(v263, 1, v205) == 1)
    {
      sub_1D5B6F5C8(v263, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    }

    else
    {
      v264 = v353;
      (*(v212 + 32))(v353, v263, v205);
      v265 = sub_1D725847C();
      (v384)(v264, v205);
      if (v265)
      {
        v266 = *(v363 + 3);
        v267 = *(v363 + 4);
        __swift_project_boxed_opaque_existential_1(v363, v266);
        v268 = (*(v267 + 24))(v266, v267);
        if (qword_1EDF17580 != -1)
        {
          swift_once();
        }

        v269 = sub_1D725C42C();
        __swift_project_value_buffer(v269, qword_1EDFFC6F0);
        v270 = v171;
        v271 = sub_1D725C3FC();
        v272 = sub_1D7262EDC();

        if (os_log_type_enabled(v271, v272))
        {
          v273 = swift_slowAlloc();
          v385 = v273;
          v391 = swift_slowAlloc();
          aBlock = v391;
          *v273 = 136315138;
          sub_1D5C384A0();
          v274 = swift_allocObject();
          *(v274 + 16) = xmmword_1D7273AE0;
          *(v274 + 56) = ObjectType;
          *(v274 + 64) = sub_1D7138D94(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController);
          *(v274 + 32) = v270;
          v275 = v270;
          v276 = sub_1D72620BC();
          v278 = v277;
          v279 = v268;
          v280 = v388;
          sub_1D5C00FEC(&v171[v355], v388, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          v281 = v272;
          v282 = v386;
          sub_1D5C00FEC(&v171[v387], v386, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
          v283 = v280;
          v268 = v279;
          v284 = sub_1D613520C(v276, v278, v283, v282);
          v286 = sub_1D5BC5100(v284, v285, &aBlock);

          v287 = v385;
          *(v385 + 1) = v286;
          _os_log_impl(&dword_1D5B42000, v271, v281, "Will load live activity data store, %s", v287, 0xCu);
          v288 = v391;
          __swift_destroy_boxed_opaque_existential_1(v391);
          MEMORY[0x1DA6FD500](v288, -1, -1);
          v205 = v392;
          MEMORY[0x1DA6FD500](v287, -1, -1);
        }

        v289 = swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_1D612EF3C(v268, sub_1D6136854, v289);

        v290 = *(v363 + 3);
        v291 = *(v363 + 4);
        __swift_project_boxed_opaque_existential_1(v363, v290);
        (*(v291 + 40))(v270, &protocol witness table for WebEmbedViewController, v290, v291);

        v260 = v370;
        v261 = v369;
      }
    }
  }

  v359(v261, v358, v205);
  v292 = 1;
  v376(v261, 0, 1, v205);
  v293 = [v389 loadedURL];
  v294 = v351;
  if (v293)
  {
    v295 = v293;
    sub_1D72584EC();

    v292 = 0;
  }

  v376(v294, v292, 1, v205);
  v296 = *(v362 + 48);
  v297 = MEMORY[0x1E6968FB0];
  sub_1D5C00FEC(v261, v260, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D5C00FEC(v294, v260 + v296, &qword_1EDF45B40, v297);
  v298 = v375;
  if (v375(v260, 1, v205) == 1)
  {
    v299 = v298;
    v300 = MEMORY[0x1E6968FB0];
    sub_1D5B6F5C8(v294, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    sub_1D5B6F5C8(v261, &qword_1EDF45B40, v300);
    v301 = &dword_1EDF0D000;
    if (v299(v260 + v296, 1, v205) == 1)
    {
      sub_1D5B6F5C8(v260, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v302 = &dword_1EDF0D000;
      goto LABEL_75;
    }

LABEL_73:
    sub_1D7138D34(v260, sub_1D5BB60D4);
    v302 = &dword_1EDF0D000;
    goto LABEL_78;
  }

  v303 = v357;
  sub_1D5C00FEC(v260, v357, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if (v298(v260 + v296, 1, v205) == 1)
  {
    v304 = MEMORY[0x1E6968FB0];
    sub_1D5B6F5C8(v294, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    sub_1D5B6F5C8(v261, &qword_1EDF45B40, v304);
    (v384)(v303, v205);
    v301 = &dword_1EDF0D000;
    goto LABEL_73;
  }

  v305 = v260 + v296;
  v306 = v354;
  (*(v393 + 32))(v354, v305, v205);
  sub_1D7138D94(&unk_1EDF45B60, MEMORY[0x1E6968FB0]);
  LODWORD(v393) = sub_1D7261FBC();
  v307 = v384;
  (v384)(v306, v205);
  v308 = MEMORY[0x1E6968FB0];
  sub_1D5B6F5C8(v294, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D5B6F5C8(v261, &qword_1EDF45B40, v308);
  v307(v303, v205);
  sub_1D5B6F5C8(v260, &qword_1EDF45B40, v308);
  v301 = &dword_1EDF0D000;
  v302 = &dword_1EDF0D000;
  if ((v393 & 1) == 0)
  {
    goto LABEL_78;
  }

LABEL_75:
  if (*(v302 + 238) != -1)
  {
    swift_once();
    if (*(v301 + 1921))
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (*(v301 + 1921))
  {
LABEL_78:
    if (qword_1EDF17580 != -1)
    {
      swift_once();
    }

    v309 = sub_1D725C42C();
    __swift_project_value_buffer(v309, qword_1EDFFC6F0);
    v310 = v171;
    v311 = sub_1D725C3FC();
    v312 = sub_1D7262EDC();

    if (os_log_type_enabled(v311, v312))
    {
      v313 = swift_slowAlloc();
      v314 = swift_slowAlloc();
      aBlock = v314;
      *v313 = 136315138;
      sub_1D5C384A0();
      v315 = swift_allocObject();
      *(v315 + 16) = xmmword_1D7273AE0;
      *(v315 + 56) = ObjectType;
      *(v315 + 64) = sub_1D7138D94(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController);
      *(v315 + 32) = v310;
      v316 = v310;
      v317 = sub_1D72620BC();
      v319 = v318;
      v320 = v388;
      sub_1D5C00FEC(&v171[v355], v388, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v321 = &v171[v387];
      v322 = v386;
      sub_1D5C00FEC(v321, v386, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
      v323 = sub_1D613520C(v317, v319, v320, v322);
      v325 = sub_1D5BC5100(v323, v324, &aBlock);

      *(v313 + 4) = v325;
      _os_log_impl(&dword_1D5B42000, v311, v312, "Load embed web view with URL, %s", v313, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v314);
      MEMORY[0x1DA6FD500](v314, -1, -1);
      MEMORY[0x1DA6FD500](v313, -1, -1);
    }

    if (*(v302 + 238) != -1)
    {
      swift_once();
    }

    v326 = *(v301 + 1921);
    v143 = sub_1D725844C();
    if (v326 == 1)
    {
      [v389 loadURL:v143 cachePolicy:4];
    }

    else
    {
      [v389 loadURL_];
    }

LABEL_88:

    return;
  }

LABEL_77:
  sub_1D725AB5C();
  if (aBlock == 3)
  {
    goto LABEL_78;
  }

  if (qword_1EDF17580 != -1)
  {
    swift_once();
  }

  v327 = sub_1D725C42C();
  __swift_project_value_buffer(v327, qword_1EDFFC6F0);
  v328 = v171;
  v329 = sub_1D725C3FC();
  v330 = sub_1D7262EDC();

  if (os_log_type_enabled(v329, v330))
  {
    v331 = swift_slowAlloc();
    v332 = swift_slowAlloc();
    aBlock = v332;
    *v331 = 136315138;
    sub_1D5C384A0();
    v333 = swift_allocObject();
    *(v333 + 16) = xmmword_1D7273AE0;
    *(v333 + 56) = ObjectType;
    *(v333 + 64) = sub_1D7138D94(&unk_1EDF0D738, type metadata accessor for WebEmbedViewController);
    *(v333 + 32) = v328;
    v334 = v328;
    v335 = sub_1D72620BC();
    v337 = v336;
    v338 = v388;
    sub_1D5C00FEC(&v171[v355], v388, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v339 = &v171[v387];
    v340 = v386;
    sub_1D5C00FEC(v339, v386, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    v341 = sub_1D613520C(v335, v337, v338, v340);
    v343 = sub_1D5BC5100(v341, v342, &aBlock);

    *(v331 + 4) = v343;
    _os_log_impl(&dword_1D5B42000, v329, v330, "Already loaded, %s", v331, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v332);
    MEMORY[0x1DA6FD500](v332, -1, -1);
    MEMORY[0x1DA6FD500](v331, -1, -1);
  }

  [v389 webViewSetNeedsLayout];
}

uint64_t sub_1D7137C9C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void *a5, uint64_t *a6)
{
  v69 = a5;
  v75 = a1;
  sub_1D5B54F68(0, &qword_1EDF29E98, sub_1D61CAB60);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v73 = &v66 - v12;
  sub_1D5B54F68(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v66 - v15;
  v17 = sub_1D72585BC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for WebEmbedImageRequest();
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a6[1];
  v72 = *a6;
  v71 = v26;
  v70 = a6[2];
  if (*(a3 + 32))
  {
    swift_beginAccess();
    v27 = *(a2 + 80);
    v28 = *(a2 + 88);
    v29 = 0.0;
    v30 = 0.0;
  }

  else
  {
    swift_beginAccess();
    CGRectGetMinX(*(a2 + 64));
    sub_1D726328C();
    CGRectGetMinY(*(a2 + 64));
    sub_1D726329C();
    v29 = v31;
    v30 = v32;
    v27 = v33;
    v28 = v34;
  }

  [a4 bounds];
  v67 = [objc_allocWithZone(MEMORY[0x1E69CE188]) initWithBounds:v35 contentFrame:v36 contentSafeAreaFrame:v37 systemSafeAreaFrame:{v38, v29, v30, v27, v28, *&v29, *&v30, *&v27, *&v28, *&v29, *&v30, *&v27, *&v28}];
  v39 = *(v18 + 16);
  v68 = v21;
  v39(v21, v75 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_url, v17);
  (*(v18 + 56))(v16, 1, 1, v17);

  v40 = sub_1D726203C();

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v41 = 0;
  }

  else
  {
    v41 = sub_1D725844C();
    (*(v18 + 8))(v16, v17);
  }

  v42 = [objc_allocWithZone(MEMORY[0x1E69CE190]) initWithContext:v40 URL:v41];

  v43 = *(*(v75 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_config) + 16);
  sub_1D5C00FEC(v75 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_dataVisualization, &v25[v22[8]], qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
  (*(v18 + 32))(v25, v68, v17);
  *&v25[v22[5]] = v67;
  *&v25[v22[6]] = v42;
  *&v25[v22[7]] = v43;
  v44 = v22[9];
  v45 = v69;
  *&v25[v44] = v69;
  v47 = *(a2 + 16);
  v46 = *(a2 + 24);
  v48 = &a4[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_identifier];
  swift_beginAccess();
  *v48 = v47;
  *(v48 + 1) = v46;
  v49 = v43;
  v50 = v45;

  [a4 setUserInteractionEnabled_];
  v51 = *(a2 + 96);
  if (v51)
  {
    [a4 setAccessibilityIgnoresInvertColors_];
    v52 = (*(v51 + 90) == 2) | *(v51 + 90);
  }

  else
  {
    [a4 setAccessibilityIgnoresInvertColors_];
    v52 = 1;
  }

  a4[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_showSpinner] = v52 & 1;
  sub_1D61CAB60();
  v54 = v53;
  v55 = *(v53 + 48);
  v56 = v73;
  sub_1D7138C60(v25, v73, type metadata accessor for WebEmbedImageRequest);
  *(v56 + v55) = *(v74 + 24);
  (*(*(v54 - 8) + 56))(v56, 0, 1, v54);
  v57 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_loader;
  swift_beginAccess();

  sub_1D7138CC8(v56, &a4[v57], &qword_1EDF29E98, sub_1D61CAB60);
  swift_endAccess();
  sub_1D6F27384();
  sub_1D5B6F5C8(v56, &qword_1EDF29E98, sub_1D61CAB60);
  sub_1D7138D34(v25, type metadata accessor for WebEmbedImageRequest);
  v58 = swift_allocObject();
  swift_weakInit();
  v59 = swift_allocObject();
  v60 = v72;
  *(v59 + 2) = v58;
  *(v59 + 3) = v60;
  v61 = v71;
  v62 = v70;
  *(v59 + 4) = v71;
  *(v59 + 5) = v62;
  v63 = &a4[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedLinkInteraction];
  v64 = *&a4[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedLinkInteraction];
  *v63 = sub_1D61CC4B0;
  v63[1] = v59;

  sub_1D5EBC314(v60, v61);
  sub_1D613694C(v64);
}

void sub_1D7138410(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, double a5, double a6)
{
  if (*(a3 + 32))
  {
    swift_beginAccess();
    v11 = *(a2 + 80);
    v12 = *(a2 + 88);
    v13 = 0.0;
    v14 = 0.0;
  }

  else
  {
    swift_beginAccess();
    CGRectGetMinX(*(a2 + 64));
    sub_1D726328C();
    CGRectGetMinY(*(a2 + 64));
    sub_1D726329C();
    v13 = v15;
    v14 = v16;
    v11 = v17;
    v12 = v18;
  }

  v19 = [a4 view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_32;
  }

  v20 = v19;
  swift_beginAccess();
  sub_1D726344C();

  v21 = [a4 view];
  if (!v21)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v22 = v21;
  [v21 setUserInteractionEnabled_];

  v23 = [a4 view];
  if (!v23)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v24 = v23;
  v25 = *(a2 + 96);
  if (v25)
  {
    v26 = *(v25 + 89);
  }

  else
  {
    v26 = 0;
  }

  [v23 setAccessibilityIgnoresInvertColors_];

  v27 = [a4 view];
  if (!v27)
  {
    goto LABEL_34;
  }

  v28 = v27;
  v29 = *(a2 + 152);
  v30 = *(a2 + 160);
  [v27 setIsAccessibilityElement_];
  [v28 setAccessibilityElementsHidden_];
  if (v30 > 0xFD)
  {
    goto LABEL_17;
  }

  if ((v30 & 0x80) != 0)
  {
    if (!(v29 | v30 & 0x7F))
    {
      goto LABEL_17;
    }

    v31 = &selRef_setAccessibilityElementsHidden_;
  }

  else
  {
    v31 = &selRef_setIsAccessibilityElement_;
  }

  [v28 *v31];
LABEL_17:

  if (v25)
  {
    v32 = (*(v25 + 90) == 2) | *(v25 + 90);
  }

  else
  {
    v32 = 1;
  }

  v33 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_showsLoadingSpinner;
  swift_beginAccess();
  a4[v33] = v32 & 1;
  v34 = 0.0;
  if (v32)
  {
    v34 = 1.0;
  }

  [*&a4[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_activityIndicator] setAlpha_];
  v35 = [a4 view];
  if (!v35)
  {
    goto LABEL_35;
  }

  v36 = v35;
  v74 = a1;
  if (v25)
  {
    v37 = *(v25 + 48);
    v38 = *(v25 + 56);
    v39 = *(v25 + 64);
    sub_1D5ED34B0(v37, v38, v39);
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v39 = -2;
  }

  v40 = [v36 layer];
  [v36 bounds];
  v75 = v37;
  v76 = v38;
  v77 = v39;
  sub_1D6E549E4(v40, &v75, v41, v42, v43, v44);

  sub_1D5ED348C(v37, v38, v39);
  v45 = *&a4[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_errorView];
  if (v25)
  {
    v46 = *(v25 + 72);
    v47 = *(v25 + 80);
    v48 = *(v25 + 88);
    sub_1D5ED34B0(v46, v47, v48);
  }

  else
  {
    v46 = 0;
    v47 = 0;
    v48 = -2;
  }

  v72 = a5;
  v73 = a6;
  v49 = [v45 layer];
  [v45 bounds];
  v75 = v46;
  v76 = v47;
  v77 = v48;
  sub_1D6E549E4(v49, &v75, v50, v51, v52, v53);

  sub_1D5ED348C(v46, v47, v48);
  v54 = [a4 view];
  if (v54)
  {
    v55 = v54;
    [v54 bounds];
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;

    v64 = [objc_allocWithZone(MEMORY[0x1E69CE188]) initWithBounds:v57 contentFrame:v59 contentSafeAreaFrame:v61 systemSafeAreaFrame:{v63, v13, v14, v11, v12, *&v13, *&v14, *&v11, *&v12, *&v13, *&v14, *&v11, *&v12}];
    v65 = *(a2 + 161);
    sub_1D612BCA0(v64);
    a4[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_isResizable] = v65;
    [*&a4[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController] setPocketsEnabled_];
    sub_1D725BD9C();
    v66 = sub_1D725B92C();
    sub_1D725BB6C();

    MEMORY[0x1EEE9AC00](v67, v68);
    sub_1D7138B64();
    sub_1D725BDCC();
    v69 = swift_allocObject();
    *(v69 + 2) = v74;
    *(v69 + 3) = v64;
    *(v69 + 4) = a2;
    v69[5] = v72;
    v69[6] = v73;

    v70 = v64;

    v71 = sub_1D725B92C();
    sub_1D725BA8C();

    return;
  }

LABEL_36:
  __break(1u);
}

uint64_t dispatch thunk of FormatWebEmbedNodeRendererType.render<A>(context:for:with:contentFrame:in:viewportSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a9 + 8);
  v10 = *(a4 + 32);
  v11 = *(a4 + 16);
  v13[0] = *a4;
  v13[1] = v11;
  v14 = v10;
  return v9(a1, a2, a3, v13);
}

uint64_t dispatch thunk of FormatWebEmbedNodeRendererType.render<A>(context:webEmbedData:layoutAttributes:contentFrame:webEmbedImageView:traitCollection:sourceItemData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = *(a11 + 16);
  v12 = *(a4 + 32);
  v13 = *(a4 + 16);
  v15[0] = *a4;
  v15[1] = v13;
  v16 = v12;
  return v11(a1, a2, a3, v15);
}

void sub_1D7138B64()
{
  if (!qword_1EDF0D728)
  {
    type metadata accessor for WebEmbedViewController();
    sub_1D5BB60D4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF0D728);
    }
  }
}

uint64_t sub_1D7138BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7138C60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7138CC8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5B54F68(0, a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7138D34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7138D94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SportsDataVisualizationAllRequest.__allocating_init(tagId:includeFeaturedEvents:traits:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  v9 = *a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = 1;
  *(v8 + 33) = a3;
  *(v8 + 48) = v9;
  sub_1D5C3C480();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v11 = sub_1D5B86020(inited);
  swift_setDeallocating();
  sub_1D5BFB68C(inited + 32);
  *(v8 + 40) = v11;
  return v8;
}

uint64_t SportsDataVisualizationAllRequest.tagId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 32))
  {
  }

  else
  {
    v3 = [swift_unknownObjectRetain() identifier];
    v4 = sub_1D726207C();

    sub_1D5F82F20(v1, v2, 0);
    return v4;
  }

  return v1;
}

uint64_t SportsDataVisualizationAllRequest.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1D60EFCC8(v2, v3, v4);
}

uint64_t SportsDataVisualizationAllRequest.init(tagId:includeFeaturedEvents:traits:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v7 = *a4;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = 1;
  *(v4 + 33) = a3;
  *(v4 + 48) = v7;
  sub_1D5C3C480();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v9 = sub_1D5B86020(inited);
  swift_setDeallocating();
  sub_1D5BFB68C(inited + 32);
  *(v4 + 40) = v9;
  return v4;
}

uint64_t SportsDataVisualizationAllRequest.__allocating_init(tag:includeFeaturedEvents:traits:)(uint64_t a1, char a2, uint64_t *a3)
{
  swift_allocObject();
  v6 = sub_1D71395F8(a1, a2, a3);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t SportsDataVisualizationAllRequest.init(tag:includeFeaturedEvents:traits:)(uint64_t a1, char a2, uint64_t *a3)
{
  v3 = sub_1D71395F8(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t SportsDataVisualizationAllRequest.deinit()
{
  sub_1D5F82F20(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t SportsDataVisualizationAllRequest.__deallocating_deinit()
{
  sub_1D5F82F20(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t SportsDataVisualizationAllRequest.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  if (*(v2 + 32))
  {
  }

  else
  {
    v6 = [swift_unknownObjectRetain() identifier];
    sub_1D726207C();

    sub_1D5F82F20(v4, v5, 0);
  }

  sub_1D72621EC();

  sub_1D7264A2C();
  v7 = *(v2 + 48);

  return sub_1D5E2D298(a1, v7);
}

uint64_t SportsDataVisualizationAllRequest.hashValue.getter()
{
  v1 = v0;
  sub_1D7264A0C();
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  if (*(v1 + 32))
  {
  }

  else
  {
    v4 = [swift_unknownObjectRetain() identifier];
    sub_1D726207C();

    sub_1D5F82F20(v2, v3, 0);
  }

  sub_1D72621EC();

  sub_1D7264A2C();
  sub_1D5E2D298(v6, *(v1 + 48));
  return sub_1D7264A5C();
}

uint64_t sub_1D7139370()
{
  v1 = *v0;
  sub_1D7264A0C();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (*(v1 + 32))
  {
  }

  else
  {
    v4 = [swift_unknownObjectRetain() identifier];
    sub_1D726207C();

    sub_1D5F82F20(v2, v3, 0);
  }

  sub_1D72621EC();

  sub_1D7264A2C();
  sub_1D5E2D298(v6, *(v1 + 48));
  return sub_1D7264A5C();
}

uint64_t _s8NewsFeed33SportsDataVisualizationAllRequestC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (*(a1 + 32))
  {

    v6 = v5;
  }

  else
  {
    v7 = [swift_unknownObjectRetain() identifier];
    v8 = sub_1D726207C();
    v6 = v9;

    sub_1D5F82F20(v4, v5, 0);
    v4 = v8;
  }

  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  if (*(a2 + 32))
  {

    v12 = v11;
    if (v4 != v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v13 = [swift_unknownObjectRetain() identifier];
    v14 = sub_1D726207C();
    v12 = v15;

    sub_1D5F82F20(v10, v11, 0);
    if (v4 != v14)
    {
      goto LABEL_10;
    }
  }

  if (v6 == v12)
  {

    goto LABEL_11;
  }

LABEL_10:
  v16 = sub_1D72646CC();

  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  if (*(a1 + 33) != *(a2 + 33))
  {
    return 0;
  }

  v18 = *(a1 + 48);
  v19 = *(a2 + 48);

  v20 = sub_1D5E2C8D8(v18, v19);

  return v20 & 1;
}

uint64_t sub_1D71395F8(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = *a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 33) = a2;
  *(v3 + 48) = v4;
  sub_1D5C3C480();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v6 = [swift_unknownObjectRetain() identifier];
  v7 = sub_1D726207C();
  v9 = v8;

  *(inited + 32) = v7;
  *(inited + 40) = v9;
  v10 = sub_1D5B86020(inited);
  swift_setDeallocating();
  sub_1D5BFB68C(inited + 32);
  *(v3 + 40) = v10;
  return v3;
}

unint64_t sub_1D71396C8()
{
  result = qword_1EC89B338;
  if (!qword_1EC89B338)
  {
    type metadata accessor for SportsDataVisualizationAllRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B338);
  }

  return result;
}

id sub_1D71397AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v47 = a7;
  v49 = a6;
  v50 = a5;
  v48 = a10;
  v15 = type metadata accessor for DebugGroupLayoutKey();
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B68374(a3, v58);
  sub_1D5B68374(a4, v57);
  sub_1D7139D48(a9, v19, type metadata accessor for DebugGroupLayoutKey);
  sub_1D5B68374(a8, v56);
  type metadata accessor for DebugInspector();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = a1;
  *(v20 + 32) = a2;
  sub_1D5B68374(v58, v20 + 40);
  sub_1D5B68374(v57, v20 + 128);
  v21 = &v19[*(v16 + 32)];
  v22 = *(v21 + 4);
  v23 = *(v21 + 5);
  __swift_project_boxed_opaque_existential_1(v21 + 1, v22);
  v24 = *(v23 + 16);
  v25 = a1;
  swift_unknownObjectRetain();
  *(v20 + 80) = v24(v22, v23);
  v26 = *(v21 + 4);
  v27 = *(v21 + 5);
  __swift_project_boxed_opaque_existential_1(v21 + 1, v26);
  (*(v27 + 64))(v52, v26, v27);
  sub_1D68160C0(v52, v55);
  v28 = v55[1];
  *(v20 + 96) = v55[0];
  *(v20 + 112) = v28;
  v29 = *(v21 + 4);
  v30 = *(v21 + 5);
  __swift_project_boxed_opaque_existential_1(v21 + 1, v29);
  (*(v30 + 64))(v52, v29, v30);
  v31 = v53;
  if (!v53)
  {
    sub_1D7139CE8(v52, sub_1D5D6013C);
LABEL_6:
    v34 = MEMORY[0x1E69E7CD0];
    goto LABEL_7;
  }

  v32 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  v33 = (*(v32 + 32))(v31, v32);
  if (!v33)
  {
    __swift_destroy_boxed_opaque_existential_1(v52);
    goto LABEL_6;
  }

  v34 = *(v33 + 32);

  __swift_destroy_boxed_opaque_existential_1(v52);
LABEL_7:
  *(v20 + 88) = v34;
  sub_1D5B68374(v56, v20 + 168);
  sub_1D6C6DDB0();
  v35 = sub_1D725B92C();
  sub_1D725BB2C();

  __swift_destroy_boxed_opaque_existential_1(v56);
  __swift_destroy_boxed_opaque_existential_1(v57);
  __swift_destroy_boxed_opaque_existential_1(v58);
  sub_1D7139CE8(v19, type metadata accessor for DebugGroupLayoutKey);
  sub_1D5B68374(v47, v58);
  v57[3] = type metadata accessor for FeedItem(0);
  v57[4] = sub_1D67256F8();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
  sub_1D7139D48(v48, boxed_opaque_existential_1, type metadata accessor for FeedItem);
  v37 = type metadata accessor for DebugInspectionViewController();
  v38 = objc_allocWithZone(v37);
  v39 = OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_tableView;
  *&v38[v39] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  *&v38[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_sections] = MEMORY[0x1E69E7CC0];
  v40 = OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_coverViewManager;
  sub_1D725D7AC();
  swift_allocObject();
  *&v38[v40] = sub_1D725D79C();
  *&v38[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_inspector] = v20;
  sub_1D5B68374(v57, &v38[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem]);
  v41 = &v38[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_commandCenter];
  v42 = v49;
  *v41 = v50;
  *(v41 + 1) = v42;
  *&v38[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_cloudContext] = v25;
  sub_1D5B68374(v58, &v38[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_radarAttachmentProvider]);
  v51.receiver = v38;
  v51.super_class = v37;
  v43 = v25;
  swift_unknownObjectRetain();
  v44 = objc_msgSendSuper2(&v51, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v58);
  __swift_destroy_boxed_opaque_existential_1(v57);
  return v44;
}

uint64_t sub_1D7139C58()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1(v0 + 192);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7139CE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7139D48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7139DB0(uint64_t a1, uint64_t a2, uint64_t (**a3)(void, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v3;
  v5 = (*a3)(*(v3 + 56), *(v3 + 64), v3 + 72, v3 + 112, a1, a2, v3 + 152, v3 + 192);
  v11 = [objc_allocWithZone(type metadata accessor for DebugNavigationController()) initWithRootViewController_];

  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v6 = sub_1D725DA4C();
  if (v6 && (v7 = v6, v8 = [v6 rootViewController], v7, v8))
  {
    v9 = sub_1D7262FCC();

    [v9 presentViewController:v11 animated:1 completion:0];
    v10 = v9;
  }

  else
  {
    v10 = v11;
  }
}

uint64_t static FormatTemperatureFormat.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  sub_1D5E04CC4(v11);
  sub_1D5E04CC4(v4);
  LOBYTE(v4) = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v11, &v8);
  sub_1D5D2F2C4(v8, v9, v10);
  sub_1D5D2F2C4(v11, v12, v13);
  return v4 & 1;
}

double static FormatTemperatureFormat.default.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_1D728CF30;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1D7139F6C(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  sub_1D5E04CC4(v11);
  sub_1D5E04CC4(v4);
  LOBYTE(v4) = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v11, &v8);
  sub_1D5D2F2C4(v8, v9, v10);
  sub_1D5D2F2C4(v11, v12, v13);
  return v4 & 1;
}

unint64_t sub_1D713A030(uint64_t a1)
{
  result = sub_1D713A058();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D713A058()
{
  result = qword_1EC89B340;
  if (!qword_1EC89B340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B340);
  }

  return result;
}

unint64_t sub_1D713A0AC(void *a1)
{
  a1[1] = sub_1D61D3AF8();
  a1[2] = sub_1D61D4084();
  result = sub_1D713A0E4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D713A0E4()
{
  result = qword_1EC89B348;
  if (!qword_1EC89B348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B348);
  }

  return result;
}

uint64_t sub_1D713A148()
{

  v1 = *(v0 + 64);
  *(v0 + 64) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 64);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t sub_1D713A1D0()
{
  sub_1D713A148();

  return swift_deallocClassInstance();
}

uint64_t sub_1D713A238@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D66ED978(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D713A294@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D66EE008(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_1D713A2E0(void *a1)
{
  a1[1] = sub_1D66F3F04();
  a1[2] = sub_1D66F40FC();
  result = sub_1D713A318();
  a1[3] = result;
  return result;
}

unint64_t sub_1D713A318()
{
  result = qword_1EC89B350;
  if (!qword_1EC89B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B350);
  }

  return result;
}

unint64_t sub_1D713A36C(uint64_t a1)
{
  result = sub_1D713A394();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D713A394()
{
  result = qword_1EC89B358;
  if (!qword_1EC89B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B358);
  }

  return result;
}

uint64_t sub_1D713A3EC(void *a1)
{
  a1[1] = sub_1D713A4BC(&qword_1EC889760);
  a1[2] = sub_1D713A4BC(&qword_1EC889878);
  result = sub_1D713A4BC(&qword_1EC89B360);
  a1[3] = result;
  return result;
}

uint64_t sub_1D713A478(uint64_t a1)
{
  result = sub_1D713A4BC(&qword_1EC89B368);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D713A4BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatWorkspaceFeedDescriptor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D713A4FC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = [objc_msgSend(result backingTag)];
    swift_unknownObjectRelease();
    v3 = sub_1D726207C();
    v5 = v4;

    v6 = [FCFeedDescriptor.feedTag.getter() displayName];
    swift_unknownObjectRelease();
    v7 = sub_1D726207C();
    v9 = v8;

    v10 = [objc_msgSend(v1 backingTag)];
    swift_unknownObjectRelease();
    if (v10)
    {
      swift_unknownObjectRelease();
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v1 feedConfiguration];
    v13 = sub_1D713A4FC([v1 alternativeFeedDescriptor]);

    type metadata accessor for FormatWorkspaceFeedDescriptor();
    result = swift_allocObject();
    *(result + 16) = v3;
    *(result + 24) = v5;
    *(result + 32) = v7;
    *(result + 40) = v9;
    *(result + 48) = v11;
    *(result + 56) = v12;
    *(result + 64) = v13;
  }

  return result;
}

void *sub_1D713A66C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D713CB5C(0, qword_1EDF34968, type metadata accessor for FeedWebEmbed);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v43 - v6;
  v8 = type metadata accessor for FeedWebEmbed();
  v46 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v45 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D713CB5C(0, qword_1EDF42030, type metadata accessor for FeedHeadline);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v43 - v17;
  v19 = type metadata accessor for FeedHeadline(0);
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v44 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v43 - v24;
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  (*(v27 + 24))(&v52, v26, v27);
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  result = (*(v29 + 40))(&v50, v28, v29);
  if (v51 - 5 >= 0xD && v51 >= 3)
  {
    if (v51 == 4)
    {
      sub_1D5B68374(a1, v49);
      sub_1D5EFF46C();
      v36 = swift_dynamicCast();
      v37 = *(v46 + 56);
      if (v36)
      {
        v37(v7, 0, 1, v8);
        v38 = v45;
        sub_1D713CC8C(v7, v45, type metadata accessor for FeedWebEmbed);
        sub_1D713CBB0(v38 + *(v8 + 48), v14);
        if ((*(v47 + 48))(v14, 1, v48) == 1)
        {
          sub_1D5C0AFC0(v38, type metadata accessor for FeedWebEmbed);
          result = sub_1D713CC30(v14, qword_1EDF42030, type metadata accessor for FeedHeadline);
        }

        else
        {
          v39 = v44;
          sub_1D713CC8C(v14, v44, type metadata accessor for FeedHeadline);
          v40 = *(v39 + 40);
          v41 = v52 | *(v39 + 32);
          v52 = v41;
          if (([v40 respondsToSelector_] & 1) != 0 && (v42 = objc_msgSend(v40, sel_parentIssue)) != 0)
          {

            sub_1D5C0AFC0(v38, type metadata accessor for FeedWebEmbed);
            if ((v41 & 0x40) == 0)
            {
              v52 = v41 | 0x40;
            }
          }

          else
          {
            sub_1D5C0AFC0(v38, type metadata accessor for FeedWebEmbed);
          }

          result = sub_1D5C0AFC0(v39, type metadata accessor for FeedHeadline);
        }
      }

      else
      {
        v37(v7, 1, 1, v8);
        result = sub_1D713CC30(v7, qword_1EDF34968, type metadata accessor for FeedWebEmbed);
      }
    }

    else if (v51 == 3)
    {
      sub_1D5B68374(a1, v49);
      sub_1D5EFF46C();
      v31 = v48;
      v32 = swift_dynamicCast();
      v33 = *(v47 + 56);
      if (v32)
      {
        v33(v18, 0, 1, v31);
        sub_1D713CC8C(v18, v25, type metadata accessor for FeedHeadline);
        v34 = *(v25 + 5);
        if ([v34 respondsToSelector_])
        {
          v35 = [v34 parentIssue];
          if (v35)
          {

            if ((v52 & 0x40) == 0)
            {
              v52 |= 0x40uLL;
            }
          }
        }

        if (*&v25[*(v31 + 56)] && (v52 & 0x200000) == 0)
        {
          v52 |= 0x200000uLL;
        }

        result = sub_1D5C0AFC0(v25, type metadata accessor for FeedHeadline);
      }

      else
      {
        v33(v18, 1, 1, v31);
        result = sub_1D713CC30(v18, qword_1EDF42030, type metadata accessor for FeedHeadline);
      }
    }

    else
    {
      result = sub_1D5BF6680(v50, v51);
    }
  }

  *a2 = v52;
  return result;
}

uint64_t FeedItemTraits.description.getter()
{
  sub_1D713AFE4();
  sub_1D5BBE0A8();
  sub_1D5BB0AB8();
  v0 = sub_1D7261F3C();
  v2 = v1;

  MEMORY[0x1DA6F9910](v0, v2);

  MEMORY[0x1DA6F9910](93, 0xE100000000000000);
  return 91;
}

char *sub_1D713AFE4()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1D5B858EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1D5B858EC((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 1835365481;
  *(v5 + 5) = 0xE400000000000000;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1D5B858EC((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 7364967;
    *(v8 + 5) = 0xE300000000000000;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_1D5B858EC((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x69616E626D756874;
    *(v11 + 5) = 0xE90000000000006CLL;
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_35;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_1D5B858EC((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x6F65646976;
  *(v14 + 5) = 0xE500000000000000;
  if ((v1 & 0x10) == 0)
  {
LABEL_15:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_35:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_1D5B858EC((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 0x656E696C66666FLL;
  *(v17 + 5) = 0xE700000000000000;
  if ((v1 & 0x20) == 0)
  {
LABEL_16:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_40:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_1D5B858EC((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 0x6465727574616566;
  *(v20 + 5) = 0xE800000000000000;
  if ((v1 & 0x40) == 0)
  {
LABEL_17:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_45:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_1D5B858EC((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0x7265766F63;
  *(v23 + 5) = 0xE500000000000000;
  if ((v1 & 0x80) == 0)
  {
LABEL_18:
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_50:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_1D5B858EC((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 0x656E696C64616568;
  *(v26 + 5) = 0xE800000000000000;
  if ((v1 & 0x100) == 0)
  {
LABEL_19:
    if ((v1 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

LABEL_55:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_1D5B858EC((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0x7469617274726F70;
  *(v29 + 5) = 0xE800000000000000;
  if ((v1 & 0x200) == 0)
  {
LABEL_20:
    if ((v1 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_65;
  }

LABEL_60:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_1D5B858EC((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  *(v32 + 4) = 0x70616373646E616CLL;
  *(v32 + 5) = 0xE900000000000065;
  if ((v1 & 0x400) == 0)
  {
LABEL_21:
    if ((v1 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_70;
  }

LABEL_65:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_1D5B858EC((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  *(v35 + 4) = 0x657261757173;
  *(v35 + 5) = 0xE600000000000000;
  if ((v1 & 0x800) == 0)
  {
LABEL_22:
    if ((v1 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_75;
  }

LABEL_70:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v37 = *(v2 + 2);
  v36 = *(v2 + 3);
  if (v37 >= v36 >> 1)
  {
    v2 = sub_1D5B858EC((v36 > 1), v37 + 1, 1, v2);
  }

  *(v2 + 2) = v37 + 1;
  v38 = &v2[16 * v37];
  *(v38 + 4) = 6448503;
  *(v38 + 5) = 0xE300000000000000;
  if ((v1 & 0x1000) == 0)
  {
LABEL_23:
    if ((v1 & 0x2000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_80;
  }

LABEL_75:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v40 = *(v2 + 2);
  v39 = *(v2 + 3);
  if (v40 >= v39 >> 1)
  {
    v2 = sub_1D5B858EC((v39 > 1), v40 + 1, 1, v2);
  }

  *(v2 + 2) = v40 + 1;
  v41 = &v2[16 * v40];
  *(v41 + 4) = 0x73656363612D6F6ELL;
  *(v41 + 5) = 0xE900000000000073;
  if ((v1 & 0x2000) != 0)
  {
LABEL_80:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
    }

    v43 = *(v2 + 2);
    v42 = *(v2 + 3);
    if (v43 >= v42 >> 1)
    {
      v2 = sub_1D5B858EC((v42 > 1), v43 + 1, 1, v2);
    }

    *(v2 + 2) = v43 + 1;
    v44 = &v2[16 * v43];
    *(v44 + 4) = 25697;
    *(v44 + 5) = 0xE200000000000000;
  }

LABEL_85:
  if ((v1 & 0x8000) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
    }

    v46 = *(v2 + 2);
    v45 = *(v2 + 3);
    if (v46 >= v45 >> 1)
    {
      v2 = sub_1D5B858EC((v45 > 1), v46 + 1, 1, v2);
    }

    *(v2 + 2) = v46 + 1;
    v47 = &v2[16 * v46];
    *(v47 + 4) = 0xD000000000000016;
    *(v47 + 5) = 0x80000001D73FE530;
    if ((v1 & 0x10000) == 0)
    {
LABEL_87:
      if ((v1 & 0x20000) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_104;
    }
  }

  else if ((v1 & 0x10000) == 0)
  {
    goto LABEL_87;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v49 = *(v2 + 2);
  v48 = *(v2 + 3);
  if (v49 >= v48 >> 1)
  {
    v2 = sub_1D5B858EC((v48 > 1), v49 + 1, 1, v2);
  }

  *(v2 + 2) = v49 + 1;
  v50 = &v2[16 * v49];
  *(v50 + 4) = 0xD000000000000017;
  *(v50 + 5) = 0x80000001D73FE510;
  if ((v1 & 0x20000) == 0)
  {
LABEL_88:
    if ((v1 & 0x40000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_109;
  }

LABEL_104:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v52 = *(v2 + 2);
  v51 = *(v2 + 3);
  if (v52 >= v51 >> 1)
  {
    v2 = sub_1D5B858EC((v51 > 1), v52 + 1, 1, v2);
  }

  *(v2 + 2) = v52 + 1;
  v53 = &v2[16 * v52];
  *(v53 + 4) = 0xD000000000000014;
  *(v53 + 5) = 0x80000001D73FE4F0;
  if ((v1 & 0x40000) == 0)
  {
LABEL_89:
    if ((v1 & 0x100000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_114;
  }

LABEL_109:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v55 = *(v2 + 2);
  v54 = *(v2 + 3);
  if (v55 >= v54 >> 1)
  {
    v2 = sub_1D5B858EC((v54 > 1), v55 + 1, 1, v2);
  }

  *(v2 + 2) = v55 + 1;
  v56 = &v2[16 * v55];
  *(v56 + 4) = 0x79726F6765746163;
  *(v56 + 5) = 0xE800000000000000;
  if ((v1 & 0x100000) == 0)
  {
LABEL_90:
    if ((v1 & 0x200000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_119;
  }

LABEL_114:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v58 = *(v2 + 2);
  v57 = *(v2 + 3);
  if (v58 >= v57 >> 1)
  {
    v2 = sub_1D5B858EC((v57 > 1), v58 + 1, 1, v2);
  }

  *(v2 + 2) = v58 + 1;
  v59 = &v2[16 * v58];
  *(v59 + 4) = 0x6E6967756C70;
  *(v59 + 5) = 0xE600000000000000;
  if ((v1 & 0x200000) == 0)
  {
LABEL_91:
    if ((v1 & 0x400000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_124;
  }

LABEL_119:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v61 = *(v2 + 2);
  v60 = *(v2 + 3);
  if (v61 >= v60 >> 1)
  {
    v2 = sub_1D5B858EC((v60 > 1), v61 + 1, 1, v2);
  }

  *(v2 + 2) = v61 + 1;
  v62 = &v2[16 * v61];
  *(v62 + 4) = 0x72742D6F69647561;
  *(v62 + 5) = 0xEB000000006B6361;
  if ((v1 & 0x400000) == 0)
  {
LABEL_92:
    if ((v1 & 0x800000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_129;
  }

LABEL_124:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v64 = *(v2 + 2);
  v63 = *(v2 + 3);
  if (v64 >= v63 >> 1)
  {
    v2 = sub_1D5B858EC((v63 > 1), v64 + 1, 1, v2);
  }

  *(v2 + 2) = v64 + 1;
  v65 = &v2[16 * v64];
  strcpy(v65 + 32, "sports-score");
  v65[45] = 0;
  *(v65 + 23) = -5120;
  if ((v1 & 0x800000) != 0)
  {
LABEL_129:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
    }

    v67 = *(v2 + 2);
    v66 = *(v2 + 3);
    if (v67 >= v66 >> 1)
    {
      v2 = sub_1D5B858EC((v66 > 1), v67 + 1, 1, v2);
    }

    *(v2 + 2) = v67 + 1;
    v68 = &v2[16 * v67];
    *(v68 + 4) = 0xD000000000000010;
    *(v68 + 5) = 0x80000001D73FE4D0;
  }

LABEL_134:
  if ((v1 & 0x20000000) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
    }

    v70 = *(v2 + 2);
    v69 = *(v2 + 3);
    if (v70 >= v69 >> 1)
    {
      v2 = sub_1D5B858EC((v69 > 1), v70 + 1, 1, v2);
    }

    *(v2 + 2) = v70 + 1;
    v71 = &v2[16 * v70];
    strcpy(v71 + 32, "sports-bracket");
    v71[47] = -18;
    if ((v1 & 0x1000000) == 0)
    {
LABEL_136:
      if ((v1 & 0x2000000) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_162;
    }
  }

  else if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_136;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v73 = *(v2 + 2);
  v72 = *(v2 + 3);
  if (v73 >= v72 >> 1)
  {
    v2 = sub_1D5B858EC((v72 > 1), v73 + 1, 1, v2);
  }

  *(v2 + 2) = v73 + 1;
  v74 = &v2[16 * v73];
  *(v74 + 4) = 0x726F70732D676174;
  *(v74 + 5) = 0xEA00000000007374;
  if ((v1 & 0x2000000) == 0)
  {
LABEL_137:
    if ((v1 & 0x4000000) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_167;
  }

LABEL_162:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v76 = *(v2 + 2);
  v75 = *(v2 + 3);
  if (v76 >= v75 >> 1)
  {
    v2 = sub_1D5B858EC((v75 > 1), v76 + 1, 1, v2);
  }

  *(v2 + 2) = v76 + 1;
  v77 = &v2[16 * v76];
  strcpy(v77 + 32, "tag-local-news");
  v77[47] = -18;
  if ((v1 & 0x4000000) == 0)
  {
LABEL_138:
    if ((v1 & 0x8000000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_172;
  }

LABEL_167:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v79 = *(v2 + 2);
  v78 = *(v2 + 3);
  if (v79 >= v78 >> 1)
  {
    v2 = sub_1D5B858EC((v78 > 1), v79 + 1, 1, v2);
  }

  *(v2 + 2) = v79 + 1;
  v80 = &v2[16 * v79];
  strcpy(v80 + 32, "tag-newspaper");
  *(v80 + 23) = -4864;
  if ((v1 & 0x8000000) == 0)
  {
LABEL_139:
    if ((v1 & 0x10000000) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_177;
  }

LABEL_172:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v82 = *(v2 + 2);
  v81 = *(v2 + 3);
  if (v82 >= v81 >> 1)
  {
    v2 = sub_1D5B858EC((v81 > 1), v82 + 1, 1, v2);
  }

  *(v2 + 2) = v82 + 1;
  v83 = &v2[16 * v82];
  *(v83 + 4) = 0x69706F742D676174;
  *(v83 + 5) = 0xE900000000000063;
  if ((v1 & 0x10000000) == 0)
  {
LABEL_140:
    if ((v1 & 0x20000000) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_182;
  }

LABEL_177:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v85 = *(v2 + 2);
  v84 = *(v2 + 3);
  if (v85 >= v84 >> 1)
  {
    v2 = sub_1D5B858EC((v84 > 1), v85 + 1, 1, v2);
  }

  *(v2 + 2) = v85 + 1;
  v86 = &v2[16 * v85];
  *(v86 + 4) = 0x6E6168632D676174;
  *(v86 + 5) = 0xEB000000006C656ELL;
  if ((v1 & 0x20000000) == 0)
  {
LABEL_141:
    if ((v1 & 0x40000000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_187;
  }

LABEL_182:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v88 = *(v2 + 2);
  v87 = *(v2 + 3);
  if (v88 >= v87 >> 1)
  {
    v2 = sub_1D5B858EC((v87 > 1), v88 + 1, 1, v2);
  }

  *(v2 + 2) = v88 + 1;
  v89 = &v2[16 * v88];
  strcpy(v89 + 32, "sports-bracket");
  v89[47] = -18;
  if ((v1 & 0x40000000) == 0)
  {
LABEL_142:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_192;
  }

LABEL_187:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v91 = *(v2 + 2);
  v90 = *(v2 + 3);
  if (v91 >= v90 >> 1)
  {
    v2 = sub_1D5B858EC((v90 > 1), v91 + 1, 1, v2);
  }

  *(v2 + 2) = v91 + 1;
  v92 = &v2[16 * v91];
  *(v92 + 4) = 0x7463657269646572;
  *(v92 + 5) = 0xE900000000000073;
  if ((v1 & 0x80000000) == 0)
  {
LABEL_143:
    if ((v1 & 0x100000000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_197;
  }

LABEL_192:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v94 = *(v2 + 2);
  v93 = *(v2 + 3);
  if (v94 >= v93 >> 1)
  {
    v2 = sub_1D5B858EC((v93 > 1), v94 + 1, 1, v2);
  }

  *(v2 + 2) = v94 + 1;
  v95 = &v2[16 * v94];
  *(v95 + 4) = 0x64656B636F6C62;
  *(v95 + 5) = 0xE700000000000000;
  if ((v1 & 0x100000000) == 0)
  {
LABEL_144:
    if ((v1 & 0x200000000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_202;
  }

LABEL_197:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v97 = *(v2 + 2);
  v96 = *(v2 + 3);
  if (v97 >= v96 >> 1)
  {
    v2 = sub_1D5B858EC((v96 > 1), v97 + 1, 1, v2);
  }

  *(v2 + 2) = v97 + 1;
  v98 = &v2[16 * v97];
  *(v98 + 4) = 0x636F6C622D746F6ELL;
  *(v98 + 5) = 0xEB0000000064656BLL;
  if ((v1 & 0x200000000) == 0)
  {
LABEL_145:
    if ((v1 & 0x400000000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_207;
  }

LABEL_202:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v100 = *(v2 + 2);
  v99 = *(v2 + 3);
  if (v100 >= v99 >> 1)
  {
    v2 = sub_1D5B858EC((v99 > 1), v100 + 1, 1, v2);
  }

  *(v2 + 2) = v100 + 1;
  v101 = &v2[16 * v100];
  *(v101 + 4) = 0xD000000000000010;
  *(v101 + 5) = 0x80000001D73FE4B0;
  if ((v1 & 0x400000000) == 0)
  {
LABEL_146:
    if ((v1 & 0x800000000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_212;
  }

LABEL_207:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v103 = *(v2 + 2);
  v102 = *(v2 + 3);
  if (v103 >= v102 >> 1)
  {
    v2 = sub_1D5B858EC((v102 > 1), v103 + 1, 1, v2);
  }

  *(v2 + 2) = v103 + 1;
  v104 = &v2[16 * v103];
  *(v104 + 4) = 0xD000000000000011;
  *(v104 + 5) = 0x80000001D73FE490;
  if ((v1 & 0x800000000) == 0)
  {
LABEL_147:
    if ((v1 & 0x1000000000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_217;
  }

LABEL_212:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v106 = *(v2 + 2);
  v105 = *(v2 + 3);
  if (v106 >= v105 >> 1)
  {
    v2 = sub_1D5B858EC((v105 > 1), v106 + 1, 1, v2);
  }

  *(v2 + 2) = v106 + 1;
  v107 = &v2[16 * v106];
  *(v107 + 4) = 0xD000000000000014;
  *(v107 + 5) = 0x80000001D73FE470;
  if ((v1 & 0x1000000000) == 0)
  {
LABEL_148:
    if ((v1 & 0x2000000000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_222;
  }

LABEL_217:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v109 = *(v2 + 2);
  v108 = *(v2 + 3);
  if (v109 >= v108 >> 1)
  {
    v2 = sub_1D5B858EC((v108 > 1), v109 + 1, 1, v2);
  }

  *(v2 + 2) = v109 + 1;
  v110 = &v2[16 * v109];
  *(v110 + 4) = 0xD000000000000012;
  *(v110 + 5) = 0x80000001D73FE450;
  if ((v1 & 0x2000000000) == 0)
  {
LABEL_149:
    if ((v1 & 0x4000000000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_227;
  }

LABEL_222:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v112 = *(v2 + 2);
  v111 = *(v2 + 3);
  if (v112 >= v111 >> 1)
  {
    v2 = sub_1D5B858EC((v111 > 1), v112 + 1, 1, v2);
  }

  *(v2 + 2) = v112 + 1;
  v113 = &v2[16 * v112];
  strcpy(v113 + 32, "sports-event");
  v113[45] = 0;
  *(v113 + 23) = -5120;
  if ((v1 & 0x4000000000) == 0)
  {
LABEL_150:
    if ((v1 & 0x8000000000) == 0)
    {
      goto LABEL_237;
    }

    goto LABEL_232;
  }

LABEL_227:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v115 = *(v2 + 2);
  v114 = *(v2 + 3);
  if (v115 >= v114 >> 1)
  {
    v2 = sub_1D5B858EC((v114 > 1), v115 + 1, 1, v2);
  }

  *(v2 + 2) = v115 + 1;
  v116 = &v2[16 * v115];
  strcpy(v116 + 32, "has-auxiliary");
  *(v116 + 23) = -4864;
  if ((v1 & 0x8000000000) != 0)
  {
LABEL_232:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
    }

    v118 = *(v2 + 2);
    v117 = *(v2 + 3);
    if (v118 >= v117 >> 1)
    {
      v2 = sub_1D5B858EC((v117 > 1), v118 + 1, 1, v2);
    }

    *(v2 + 2) = v118 + 1;
    v119 = &v2[16 * v118];
    *(v119 + 4) = 0x656C7A7A7570;
    *(v119 + 5) = 0xE600000000000000;
  }

LABEL_237:
  if ((v1 & 0x10000000000) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
    }

    v121 = *(v2 + 2);
    v120 = *(v2 + 3);
    if (v121 >= v120 >> 1)
    {
      v2 = sub_1D5B858EC((v120 > 1), v121 + 1, 1, v2);
    }

    *(v2 + 2) = v121 + 1;
    v122 = &v2[16 * v121];
    *(v122 + 4) = 0x742D656C7A7A7570;
    *(v122 + 5) = 0xEB00000000657079;
    if ((v1 & 0x20000000000) == 0)
    {
LABEL_239:
      if ((v1 & 0x40000000000) == 0)
      {
        goto LABEL_240;
      }

      goto LABEL_259;
    }
  }

  else if ((v1 & 0x20000000000) == 0)
  {
    goto LABEL_239;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v124 = *(v2 + 2);
  v123 = *(v2 + 3);
  if (v124 >= v123 >> 1)
  {
    v2 = sub_1D5B858EC((v123 > 1), v124 + 1, 1, v2);
  }

  *(v2 + 2) = v124 + 1;
  v125 = &v2[16 * v124];
  strcpy(v125 + 32, "puzzle-teaser");
  *(v125 + 23) = -4864;
  if ((v1 & 0x40000000000) == 0)
  {
LABEL_240:
    if ((v1 & 0x80000000000) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_264;
  }

LABEL_259:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v127 = *(v2 + 2);
  v126 = *(v2 + 3);
  if (v127 >= v126 >> 1)
  {
    v2 = sub_1D5B858EC((v126 > 1), v127 + 1, 1, v2);
  }

  *(v2 + 2) = v127 + 1;
  v128 = &v2[16 * v127];
  *(v128 + 4) = 0x68742D656772616CLL;
  *(v128 + 5) = 0xEF6C69616E626D75;
  if ((v1 & 0x80000000000) == 0)
  {
LABEL_241:
    if ((v1 & 0x100000000000) == 0)
    {
      goto LABEL_242;
    }

    goto LABEL_269;
  }

LABEL_264:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v130 = *(v2 + 2);
  v129 = *(v2 + 3);
  if (v130 >= v129 >> 1)
  {
    v2 = sub_1D5B858EC((v129 > 1), v130 + 1, 1, v2);
  }

  *(v2 + 2) = v130 + 1;
  v131 = &v2[16 * v130];
  *(v131 + 4) = 0xD000000000000010;
  *(v131 + 5) = 0x80000001D73FE430;
  if ((v1 & 0x100000000000) == 0)
  {
LABEL_242:
    if ((v1 & 0x200000000000) == 0)
    {
      goto LABEL_243;
    }

    goto LABEL_274;
  }

LABEL_269:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v133 = *(v2 + 2);
  v132 = *(v2 + 3);
  if (v133 >= v132 >> 1)
  {
    v2 = sub_1D5B858EC((v132 > 1), v133 + 1, 1, v2);
  }

  *(v2 + 2) = v133 + 1;
  v134 = &v2[16 * v133];
  *(v134 + 4) = 0xD000000000000016;
  *(v134 + 5) = 0x80000001D73FE410;
  if ((v1 & 0x200000000000) == 0)
  {
LABEL_243:
    if ((v1 & 0x400000000000) == 0)
    {
      goto LABEL_244;
    }

    goto LABEL_279;
  }

LABEL_274:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v136 = *(v2 + 2);
  v135 = *(v2 + 3);
  if (v136 >= v135 >> 1)
  {
    v2 = sub_1D5B858EC((v135 > 1), v136 + 1, 1, v2);
  }

  *(v2 + 2) = v136 + 1;
  v137 = &v2[16 * v136];
  *(v137 + 4) = 0xD000000000000015;
  *(v137 + 5) = 0x80000001D73FE3F0;
  if ((v1 & 0x400000000000) == 0)
  {
LABEL_244:
    if ((v1 & 0x800000000000) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_284;
  }

LABEL_279:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v139 = *(v2 + 2);
  v138 = *(v2 + 3);
  if (v139 >= v138 >> 1)
  {
    v2 = sub_1D5B858EC((v138 > 1), v139 + 1, 1, v2);
  }

  *(v2 + 2) = v139 + 1;
  v140 = &v2[16 * v139];
  *(v140 + 4) = 0xD00000000000001ALL;
  *(v140 + 5) = 0x80000001D73FE3D0;
  if ((v1 & 0x800000000000) == 0)
  {
LABEL_245:
    if ((v1 & 0x1000000000000) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_289;
  }

LABEL_284:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v142 = *(v2 + 2);
  v141 = *(v2 + 3);
  if (v142 >= v141 >> 1)
  {
    v2 = sub_1D5B858EC((v141 > 1), v142 + 1, 1, v2);
  }

  *(v2 + 2) = v142 + 1;
  v143 = &v2[16 * v142];
  *(v143 + 4) = 0xD000000000000017;
  *(v143 + 5) = 0x80000001D73FE3B0;
  if ((v1 & 0x1000000000000) == 0)
  {
LABEL_246:
    if ((v1 & 0x2000000000000) == 0)
    {
      goto LABEL_247;
    }

    goto LABEL_294;
  }

LABEL_289:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v145 = *(v2 + 2);
  v144 = *(v2 + 3);
  if (v145 >= v144 >> 1)
  {
    v2 = sub_1D5B858EC((v144 > 1), v145 + 1, 1, v2);
  }

  *(v2 + 2) = v145 + 1;
  v146 = &v2[16 * v145];
  *(v146 + 4) = 0xD00000000000001CLL;
  *(v146 + 5) = 0x80000001D73FE390;
  if ((v1 & 0x2000000000000) == 0)
  {
LABEL_247:
    if ((v1 & 0x4000000000000) == 0)
    {
      return v2;
    }

    goto LABEL_299;
  }

LABEL_294:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
  }

  v148 = *(v2 + 2);
  v147 = *(v2 + 3);
  if (v148 >= v147 >> 1)
  {
    v2 = sub_1D5B858EC((v147 > 1), v148 + 1, 1, v2);
  }

  *(v2 + 2) = v148 + 1;
  v149 = &v2[16 * v148];
  *(v149 + 4) = 0x6C6C6177796170;
  *(v149 + 5) = 0xE700000000000000;
  if ((v1 & 0x4000000000000) != 0)
  {
LABEL_299:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D5B858EC(0, *(v2 + 2) + 1, 1, v2);
    }

    v151 = *(v2 + 2);
    v150 = *(v2 + 3);
    if (v151 >= v150 >> 1)
    {
      v2 = sub_1D5B858EC((v150 > 1), v151 + 1, 1, v2);
    }

    *(v2 + 2) = v151 + 1;
    v152 = &v2[16 * v151];
    *(v152 + 4) = 0x657069636572;
    *(v152 + 5) = 0xE600000000000000;
  }

  return v2;
}