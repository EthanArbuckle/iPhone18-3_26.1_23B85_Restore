uint64_t FormatStateMachineInlineInput.Scope.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v23 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v22[1] = v22 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v22 - v11;
  v24 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCD18);
  v17 = *(*(v15 - 8) + 16);
  v17(v12, v16, v15);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v18 = v28;
  sub_1D5D2BEC4(v12, sub_1D5B4AA6C, 0, v13, v14);
  result = sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);
  if (!v18)
  {
    v20 = v25[3];
    v28 = v25[4];
    __swift_project_boxed_opaque_existential_1(v25, v20);
    v21 = v23;
    v17(v23, v16, v15);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v21, sub_1D5B4AA6C, 0, v20, v28);
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  return result;
}

uint64_t FormatStateMachineInlineInput.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D665D754();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D665D7E8();
  sub_1D5B58B84(&qword_1EC886108, sub_1D665D7E8);
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

  v13 = v29;
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

      v23 = *(v17 - 2);
      v22 = *(v17 - 1);

      v24 = sub_1D6627E68(0x536C616974696E69, 0xEC00000065746174, 0x65706F6373, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_11;
    }

LABEL_7:
  }

  v32 = 0uLL;
  v33 = 0;
  v18 = sub_1D72642BC();
  v20 = v19;
  v21 = v18;
  v28 = xmmword_1D728CF30;
  v32 = xmmword_1D728CF30;
  v33 = 0;
  if (sub_1D726434C())
  {
    v30 = v28;
    v31 = 0;
    sub_1D5F84D20();
    sub_1D726431C();
    (*(v14 + 8))(v10, v6);
    v27 = v34;
  }

  else
  {
    (*(v14 + 8))(v10, v6);
    v27 = 0;
  }

  *v13 = v21;
  *(v13 + 8) = v20;
  *(v13 + 16) = v27;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatStateMachineInlineInput.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v73 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v66 - v8;
  sub_1D665D968();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v85 = *(v1 + 16);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D665D7E8();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EC886108, sub_1D665D7E8);
  sub_1D5D2EE70(&type metadata for FormatStateMachineInlineInput, v20, v22, v17, &type metadata for FormatStateMachineInlineInput, v20, &type metadata for FormatVersions.JazzkonG, v18, v14, v21, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD18);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v75 = v24;
  v71 = v26;
  v72 = v23;
  v70 = v25 + 16;
  (v26)(v9);
  v69 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v82 = v15;
  v83 = v16;
  v80 = 0uLL;
  v81 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v84 = 0;
  v30 = swift_allocObject();
  *&v78 = &v66;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v84;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *(&v66 - 4) = sub_1D5B4AA6C;
  *(&v66 - 3) = 0;
  v64 = sub_1D6708898;
  v65 = v32;
  v84 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v84;
  v68 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D665D9FC();
  v77 = v9;
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EC886120, sub_1D665D9FC);
  swift_retain_n();
  v74 = v35;
  v76 = v36;
  v37 = sub_1D72647CC();
  v84 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v84;
  v39 = v14;
  v40 = &v14[*(v11 + 36)];
  v41 = __swift_project_boxed_opaque_existential_1(v40, *(v40 + 3));
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v66 - 4) = sub_1D615B4A4;
  *(&v66 - 3) = (&v66 - 6);
  v45 = v77;
  v64 = sub_1D6708898;
  v65 = v33;
  v46 = v79;
  sub_1D5D2BC70(v77, sub_1D615B49C, v47, sub_1D615B4A4, (&v66 - 6));
  if (v46)
  {
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

    v48 = v39;
  }

  else
  {
    v67 = v40;
    v49 = v45;
    v50 = v75;
    v79 = v29;
    v51 = v49;

    sub_1D72647EC();
    v48 = v39;
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

    v52 = v73;
    v71(v73, v50, v72);
    swift_storeEnumTagMultiPayload();
    if (v85)
    {
      v53 = sub_1D72646CC();

      if ((v53 & 1) == 0)
      {
        LOBYTE(v80) = 0;
        v54 = swift_allocObject();
        v78 = xmmword_1D728CF30;
        *(v54 + 16) = xmmword_1D728CF30;
        *(v54 + 32) = v80;
        *(v54 + 40) = v68;
        *(v54 + 48) = v79;

        v55 = sub_1D72647CC();
        LOBYTE(v80) = 0;
        v56 = swift_allocObject();
        *(v56 + 16) = v55;
        *(v56 + 24) = v78;
        *(v56 + 40) = v80;
        v57 = __swift_project_boxed_opaque_existential_1(v67, *(v67 + 3));
        MEMORY[0x1EEE9AC00](v57, v58);
        MEMORY[0x1EEE9AC00](v59, v60);
        *(&v66 - 4) = sub_1D5B4AA6C;
        *(&v66 - 3) = 0;
        v64 = sub_1D665DA90;
        v65 = v54;
        v63 = sub_1D5D2F7A4(v52, sub_1D615B49C, v61, sub_1D615B4A4, (&v66 - 6));

        if (v63)
        {
          v80 = v78;
          v81 = 0;
          LOBYTE(v82) = 1;
          sub_1D5F84D74();
          sub_1D72647EC();
        }
      }
    }

    else
    {
    }

    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v48, sub_1D665D968);
}

uint64_t sub_1D63857EC(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67092D0;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67042BC();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    type metadata accessor for FormatAbsoluteURL();
    sub_1D5B58B84(qword_1EDF10E68, type metadata accessor for FormatAbsoluteURL);
    sub_1D72647EC();
  }
}

uint64_t sub_1D63859C0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D67092D0;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67042BC();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D6704310();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6385B58(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D67092D0;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67042BC();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D670438C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6385CEC(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66F6EF0;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F6E9C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C71DC8();
    sub_1D5B58B84(&qword_1EDF12740, sub_1D5C71DC8);
    sub_1D72647EC();
  }
}

uint64_t sub_1D6385EB8(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66F6F18;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F6F40();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66F6F94();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638604C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D66F79B0;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F795C();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC8873E8, sub_1D66BDF14, &type metadata for FormatSponsoredBannerUserInterfaceStyle, type metadata accessor for FormatUserInterfaceValue);
    sub_1D66F79D8();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6386220(char a1, char a2, uint64_t a3)
{
  v6 = a1 & 1;
  v17 = a1 & 1;
  v16 = a2 & 1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6706038;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705FE4();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5F24048();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63863B8(char a1, char a2, uint64_t a3)
{
  v6 = a1 & 1;
  v17 = a1 & 1;
  v16 = a2 & 1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66F8894;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F88BC();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5F2B800();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6386550(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6702B88;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702BB0();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D620736C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63866E8(char a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 1;
  v17 = a1 & 1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709090;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F6FE8();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C71DC8();
    sub_1D5B58B84(&qword_1EDF12740, sub_1D5C71DC8);
    sub_1D72647EC();
  }
}

uint64_t sub_1D63868B4(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D670931C;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6706A90();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6706AE4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6386A48(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2 & 1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6706B38;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6706A90();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6706B60();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6386BE0(char a1, uint64_t a2)
{
  v15 = a1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D670931C;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6706A90();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D6328D14();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6386D6C(uint64_t a1)
{
  sub_1D5D30DC4();
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v11[2] = sub_1D670294C;
  v11[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v11);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702970();
    v12 = 0uLL;
    sub_1D72647EC();
    v12 = xmmword_1D7279980;
    sub_1D6679304();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6386EE8(uint64_t a1)
{
  sub_1D5D30DC4();
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v11[2] = sub_1D66F906C;
  v11[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v11);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9090();
    v12 = 0uLL;
    sub_1D72647EC();
    v12 = xmmword_1D7279980;
    sub_1D66F90E4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6387064(char a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D67091D8;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FAC90();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66777BC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63871FC(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67091D8;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FAC90();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6678178();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6387390(char a1, __int128 *a2, uint64_t a3)
{
  v21 = a1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  v19 = a2[2];
  v20 = *(a2 + 24);
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D67091D8;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FAC90();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5FD79B8();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6387538(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v23 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_1D5D30DC4();
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v17[2] = sub_1D66FACE4;
  v17[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v17);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FAC90();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D6089CC4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63876D4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v23 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_1D5D30DC4();
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v17[2] = sub_1D67091D8;
  v17[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v17);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FAC90();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D66FAD0C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6387870(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6700EA8;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700ED0();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D6700F24();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6387A08(uint64_t a1)
{
  sub_1D5D30DC4();
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v11[2] = sub_1D66F7BE0;
  v11[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v11);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F7C04();
    v12 = 0uLL;
    sub_1D72647EC();
    v12 = xmmword_1D7279980;
    sub_1D66F7C58();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6387B84(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709304;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705CD0();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D6705D24();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6387D18(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6705D78;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705CD0();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D6705DA0();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6387EAC(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709304;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705CD0();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6155A30();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6388040(char a1, uint64_t a2, double a3)
{
  v6 = a1 & 1;
  v17 = a1 & 1;
  v16 = a3;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6702DCC;
  v14[3] = v11;

  v12 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702DF4();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF127B8, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatValue);
    sub_1D66F8FB4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6388214(char a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v9 = a1 & 1;
  v23 = a1 & 1;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  sub_1D5D30DC4();
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v17[2] = sub_1D67090F8;
  v17[3] = v14;

  v15 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v17);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702DF4();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D668EA2C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63883AC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_1D5D30DC4();
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v17[2] = sub_1D66FC760;
  v17[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v17);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC70C();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D66FC788();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6388544(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67091FC;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC70C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C71DC8();
    sub_1D5B58B84(&qword_1EDF12740, sub_1D5C71DC8);
    sub_1D72647EC();
  }
}

uint64_t sub_1D6388710(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6703DB0;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6703D5C();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C34074(0, &qword_1EDF419A0, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatValue);
    sub_1D5D38540();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63888D8(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D67092C4;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6703D5C();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D6156DCC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6388A70(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D67092C4;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6703D5C();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D6156F84();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6388C08(char a1, __int128 *a2, uint64_t a3)
{
  v20 = a1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  *v19 = a2[2];
  *&v19[15] = *(a2 + 47);
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D67092C4;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6703D5C();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D615713C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6388DB0(char a1, uint64_t a2)
{
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v6 = (v2 + *(v5 + 44));
  v8 = *v6;
  v7 = v6[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v12[2] = sub_1D6701ED8;
  v12[3] = v9;

  v10 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v10 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701EFC();
    v13 = 0uLL;
    sub_1D72647EC();
    v13 = xmmword_1D7279980;
    sub_1D6701F50();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6388F38(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2 & 1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67092CC;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D670406C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF12750, sub_1D6666E5C, &type metadata for FormatSupplementaryNodePinEdge, type metadata accessor for FormatValue);
    sub_1D67040C0();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6389110(char a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3 & 0x1FF;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D67092CC;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D670406C();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D6704150();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63892B0(uint64_t a1, double a2, double a3)
{
  v15 = a2;
  v16 = a3;
  sub_1D5D30DC4();
  v7 = (v3 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v13[2] = sub_1D66FA9C0;
  v13[3] = v10;

  v11 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FA9E4();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5F5A70C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6389434(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709154;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4480();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C5A334();
    sub_1D5B58B84(&qword_1EDF12738, sub_1D5C5A334);
    sub_1D72647EC();
  }
}

uint64_t sub_1D6389600(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709154;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4480();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C71DC8();
    sub_1D5B58B84(&qword_1EDF12740, sub_1D5C71DC8);
    sub_1D72647EC();
  }
}

uint64_t sub_1D63897CC(char a1, __int128 *a2, uint64_t a3)
{
  v21 = a1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  v19 = a2[2];
  v20 = *(a2 + 24);
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709154;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4480();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D6686A30();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6389974(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D6709154;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4480();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D6067A68();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6389B0C(char a1, __int128 *a2, uint64_t a3)
{
  v21 = a1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  v19 = a2[2];
  v20 = *(a2 + 24);
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709154;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4480();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66F44D4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6389CB4(char a1, __int128 *a2, uint64_t a3)
{
  v20 = a1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  *v19 = a2[2];
  *&v19[11] = *(a2 + 43);
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709154;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4480();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF2ED78, sub_1D62B64C0, &type metadata for FormatOptionsNodeStatementValue, type metadata accessor for FormatSwitchValue);
    sub_1D66F4528();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6389E9C(char a1, __int128 *a2, uint64_t a3)
{
  v20 = a1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  v19 = *(a2 + 4);
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D66F45B8;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4480();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66F45E0();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638A03C(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709154;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4480();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6034514();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638A1D0(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709154;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4480();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D60B27FC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638A364(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D6709178;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F62BC();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D66F6310();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638A4FC(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D66F6364;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F62BC();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66F638C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638A694(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709178;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F62BC();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66F63E0();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638A828(char a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 1;
  v17 = a1 & 1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67090B8;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FA4D4();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C71DC8();
    sub_1D5B58B84(&qword_1EDF12740, sub_1D5C71DC8);
    sub_1D72647EC();
  }
}

uint64_t sub_1D638A9F4(char a1, char a2, uint64_t a3)
{
  v6 = a1 & 1;
  v17 = a1 & 1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66FA528;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FA4D4();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6678178();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638AB88(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v15 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D67090C4;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FB720();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D66FB774();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638AD14(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v15 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D66FB7C8;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FB720();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D66FB7F0();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638AEA0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D66FBD18;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FBCC4();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D630BD34();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638B034(char a1, char a2, uint64_t a3)
{
  v6 = a1 & 1;
  v17 = a1 & 1;
  v16 = a2 & 1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67090C8;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FB844();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5F2BDE0();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638B1CC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 & 1;
  v19 = a1 & 1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D66FB898;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FB844();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC886D80, sub_1D669E898, &type metadata for FormatLayeredMediaNodeContent, type metadata accessor for FormatSelectorValue);
    sub_1D66FB8C0();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638B3A0(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v15 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D670910C;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705DF4();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D66FB774();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638B52C(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v15 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D6705E48;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705DF4();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D66FB7F0();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638B6B8(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D670916C;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F5998();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66F59EC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638B84C(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66F5A40;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F5998();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6197110();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638B9E0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D670916C;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F5998();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D66F5218();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638BB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v16 = a1;
  v17 = a2;
  sub_1D5D30DC4();
  v8 = (v4 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v14[2] = sub_1D66F5AFC;
  v14[3] = v11;

  v12 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F5B20();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66F5218();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638BCFC(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v15 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D67090B4;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9E60();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D66F9EB4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638BE88(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 & 1;
  v19 = a1 & 1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D66F9F08;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9E60();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC8870F0, sub_1D66B04D8, &type metadata for FormatPuzzleEmbedNodeContent, type metadata accessor for FormatSelectorValue);
    sub_1D66F9F30();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638C05C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D66F4F84;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4F30();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF2C0E0, sub_1D66D3E60, &type metadata for FormatWebEmbedNodeRendering, type metadata accessor for FormatSelectorValue);
    sub_1D66F4FAC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638C230(char a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 1;
  v17 = a1 & 1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67033AC;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67033D4();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6703428();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638C3C4(__int128 *a1, uint64_t a2)
{
  v5 = a1[1];
  v15 = *a1;
  v16 = v5;
  v17[0] = a1[2];
  *(v17 + 15) = *(a1 + 47);
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v13[2] = sub_1D6703DD8;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6703DFC();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D66FF5D8();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638C55C(char a1, uint64_t a2, double a3)
{
  v17 = a1;
  v16 = a3;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6705F40;
  v14[3] = v11;

  v12 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705EEC();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF127B8, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatValue);
    sub_1D66F8FB4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638C730(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709290;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67020C8();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C801A8();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638C8C4(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D670211C;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67020C8();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF33F58, sub_1D5C671FC, &type metadata for FormatAccessibilityTrait, type metadata accessor for FormatValue);
    sub_1D6702144();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638CA98(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67091A8;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F80C4();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66F8118();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638CC2C(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2 & 1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67091A8;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F80C4();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66F816C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638CDC4(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2 & 1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66F81C0;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F80C4();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66F81E8();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638CF5C(char a1, uint64_t a2)
{
  v15 = a1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D67091A8;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F80C4();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D66F823C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638D0E8(char a1, __int128 *a2, uint64_t a3)
{
  v6 = a1 & 1;
  v29 = a1 & 1;
  v7 = a2[7];
  v26 = a2[6];
  v27 = v7;
  v28 = *(a2 + 128);
  v8 = a2[3];
  v22 = a2[2];
  v23 = v8;
  v9 = a2[5];
  v24 = a2[4];
  v25 = v9;
  v10 = a2[1];
  v20 = *a2;
  v21 = v10;
  sub_1D5D30DC4();
  v12 = (v3 + *(v11 + 44));
  v14 = *v12;
  v13 = v12[1];
  v15 = swift_allocObject();
  *(v15 + 16) = v6;
  *(v15 + 24) = v14;
  *(v15 + 32) = v13;
  v18[2] = sub_1D66FCB70;
  v18[3] = v15;

  v16 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v18);
  if (!v4 && (v16 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FCB98();
    v19 = 0uLL;
    sub_1D72647EC();
    v19 = xmmword_1D7279980;
    sub_1D66FCBEC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638D2A0(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = a1 & 1;
  v19 = a1 & 1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D67090D4;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FCB98();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66FCC40();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638D438(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D670516C;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705194();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D67051E8();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638D5D0(char a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  v23 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_1D5D30DC4();
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v17[2] = sub_1D67092E4;
  v17[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v17);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705194();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D670523C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638D770(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67092B0;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702E48();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C71DC8();
    sub_1D5B58B84(&qword_1EDF12740, sub_1D5C71DC8);
    sub_1D72647EC();
  }
}

uint64_t sub_1D638D93C(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67092B0;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702E48();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C34074(0, &qword_1EDF33EE8, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatValue);
    sub_1D66F2018();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638DB04(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67092B0;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702E48();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D61F84CC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638DC98(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6702E9C;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702E48();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66F8B88();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638DE30(char a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 1;
  v17 = a1 & 1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67090E4;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF55C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C71DC8();
    sub_1D5B58B84(&qword_1EDF12740, sub_1D5C71DC8);
    sub_1D72647EC();
  }
}

uint64_t sub_1D638DFFC(char a1, __int128 *a2, uint64_t a3)
{
  v6 = a1 & 1;
  v20 = a1 & 1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  *v19 = a2[2];
  *&v19[15] = *(a2 + 47);
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D66FF5B0;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF55C();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66FF5D8();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638E1A4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D6709288;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701BA0();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D66721CC();
    sub_1D5B58B84(qword_1EDF15FE8, sub_1D66721CC);
    sub_1D72647EC();
  }
}

uint64_t sub_1D638E374(char a1, __int128 *a2, uint64_t a3)
{
  v20 = a1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  v19 = a2[2];
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6701B78;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701BA0();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC886698, sub_1D619B420, &type metadata for FormatSizeEquation, type metadata accessor for FormatAnimationNodeKeyPathAnimation);
    sub_1D6701BF4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638E554(uint64_t a1)
{
  sub_1D5D30DC4();
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v11[2] = sub_1D6701D94;
  v11[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v11);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701DB8();
    v12 = 0uLL;
    sub_1D72647EC();
    v12 = xmmword_1D7279980;
    sub_1D6701E0C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638E6D0(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v15 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D67090E8;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701FA4();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D6701FF8();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638E85C(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v15 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D670204C;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701FA4();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D6702074();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638E9E8(char a1, __int128 *a2, uint64_t a3)
{
  v21 = a1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  v19 = a2[2];
  v20 = *(a2 + 24);
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709294;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702268();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5FD79B8();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638EB90(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D67022BC;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702268();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D5C80140(0, &qword_1EDF2E1E8, sub_1D5C6F8B4);
    sub_1D67022E4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638ED5C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709294;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702268();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C34074(0, &qword_1EDF419A0, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatValue);
    sub_1D5D38540();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638EF24(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v23 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5 & 1;
  sub_1D5D30DC4();
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v17[2] = sub_1D6709160;
  v17[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v17);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F503C();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D66F5090();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638F0C4(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709160;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F503C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C5039C();
    sub_1D5B58B84(&qword_1EDF127D0, sub_1D5C5039C);
    sub_1D72647EC();
  }
}

uint64_t sub_1D638F298(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D66F50E4;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F503C();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC887838, sub_1D66D3CE4, &type metadata for FormatWebEmbedNodeContent, type metadata accessor for FormatSelectorValue);
    sub_1D66F510C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638F46C(char a1, char a2, uint64_t a3)
{
  v6 = a1 & 1;
  v17 = a1 & 1;
  v16 = a2 & 1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709084;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F519C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5EE2FA0();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638F604(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1 & 1;
  v21 = a1 & 1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D66F51F0;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F519C();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D66F5218();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638F79C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 1;
  v17 = a1 & 1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66F7D40;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F7D68();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5B55CBC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638F930(char a1, __int128 *a2, uint64_t a3)
{
  v6 = a1 & 1;
  v22 = a1 & 1;
  v7 = a2[1];
  v18 = *a2;
  v19 = v7;
  v8 = a2[3];
  v20 = a2[2];
  v21 = v8;
  sub_1D5D30DC4();
  v10 = (v3 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D6709098;
  v16[3] = v13;

  v14 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v16);
  if (!v4 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F7D68();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D66F7DBC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638FAD0(char a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 1;
  v17 = a1 & 1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D670909C;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F7E10();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C34D84(0, &qword_1EDF1B018, &type metadata for FormatSourceItemTipTrait, MEMORY[0x1E69E62F8]);
    sub_1D66F7E64();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638FC90(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 & 1;
  v19 = a1 & 1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D66F7F54;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F7E10();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66BA464();
    sub_1D5B58B84(&qword_1EC889C10, sub_1D66BA464);
    sub_1D72647EC();
  }
}

uint64_t sub_1D638FE5C(char a1, uint64_t a2)
{
  v14 = a1;
  sub_1D5D30DC4();
  v6 = (v2 + *(v5 + 44));
  v8 = *v6;
  v7 = v6[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v12[2] = sub_1D66F7FF8;
  v12[3] = v9;

  v10 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v10 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F801C();
    v13 = 0uLL;
    sub_1D72647EC();
    v13 = xmmword_1D7279980;
    sub_1D66F8070();
    sub_1D72647EC();
  }
}

uint64_t sub_1D638FFE0(char a1, uint64_t a2, double a3)
{
  v17 = a1;
  v16 = a3;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66F8F38;
  v14[3] = v11;

  v12 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F8F60();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF127B8, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatValue);
    sub_1D66F8FB4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63901B4(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66FA430;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FA3DC();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C71DC8();
    sub_1D5B58B84(&qword_1EDF12740, sub_1D5C71DC8);
    sub_1D72647EC();
  }
}

uint64_t sub_1D6390380(char a1, char a2, uint64_t a3)
{
  v6 = a1 & 1;
  v17 = a1 & 1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6703714;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D670373C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC886438, sub_1D666B390, &type metadata for FormatMediaTimingFunctionName, type metadata accessor for FormatValue);
    sub_1D6703790();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6390554(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a1 & 1;
  v23 = a1 & 1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_1D5D30DC4();
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v17[2] = sub_1D6709104;
  v17[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v17);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D670373C();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D6703820();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63906EC(__int128 *a1, uint64_t a2)
{
  v5 = a1[1];
  v15 = *a1;
  v16 = v5;
  v17 = a1[2];
  v18 = *(a1 + 24);
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v13[2] = sub_1D66FB6A8;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FB6CC();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D6686A30();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6390884(__int128 *a1, uint64_t a2)
{
  v5 = a1[5];
  v22 = a1[4];
  v23 = v5;
  v6 = a1[7];
  v24 = a1[6];
  v25 = v6;
  v7 = a1[1];
  v18 = *a1;
  v19 = v7;
  v8 = a1[3];
  v20 = a1[2];
  v21 = v8;
  sub_1D5D30DC4();
  v10 = (v2 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  v16[2] = sub_1D66FCAF8;
  v16[3] = v13;

  v14 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v16);
  if (!v3 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FCB1C();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D6695E40();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6390A24(char a1, __int128 *a2, uint64_t a3)
{
  v6 = a1 & 1;
  v22 = a1 & 1;
  v7 = a2[1];
  v18 = *a2;
  v19 = v7;
  v8 = a2[3];
  v20 = a2[2];
  v21 = v8;
  sub_1D5D30DC4();
  v10 = (v3 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D67090DC;
  v16[3] = v13;

  v14 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v16);
  if (!v4 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FEE34();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D66F7DBC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6390BC4(char a1, __int128 *a2, uint64_t a3)
{
  v6 = a1 & 1;
  v28 = a1 & 1;
  v7 = a2[5];
  v24 = a2[4];
  v25 = v7;
  v8 = a2[7];
  v26 = a2[6];
  v27 = v8;
  v9 = a2[1];
  v20 = *a2;
  v21 = v9;
  v10 = a2[3];
  v22 = a2[2];
  v23 = v10;
  sub_1D5D30DC4();
  v12 = (v3 + *(v11 + 44));
  v14 = *v12;
  v13 = v12[1];
  v15 = swift_allocObject();
  *(v15 + 16) = v6;
  *(v15 + 24) = v14;
  *(v15 + 32) = v13;
  v18[2] = sub_1D66FEE88;
  v18[3] = v15;

  v16 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v18);
  if (!v4 && (v16 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FEE34();
    v19 = 0uLL;
    sub_1D72647EC();
    v19 = xmmword_1D7279980;
    sub_1D66FE87C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6390D74(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66F4830;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4858();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF33F08, sub_1D66F48AC, &type metadata for FormatContentSizeCategoryValue, type metadata accessor for FormatValue);
    sub_1D66F4900();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6390F48(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6701240;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701268();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D6676B58();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63910DC(char a1, __int128 *a2, uint64_t a3)
{
  v20 = a1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  v19 = a2[2];
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709278;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701268();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D67012BC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639127C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_1D5D30DC4();
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v17[2] = sub_1D6709278;
  v17[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v17);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701268();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D6701310();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6391414(char a1, __int128 *a2, uint64_t a3)
{
  v19 = a1;
  v7 = a2[1];
  v17 = *a2;
  *v18 = v7;
  *&v18[9] = *(a2 + 25);
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709278;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701268();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D6701364();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63915B4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 & 1;
  v19 = a1 & 1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D66F5B74;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F5B9C();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF2EDA8, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatSwitchValue);
    sub_1D66F5BF0();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6391788(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v9 = a1 & 1;
  v23 = a1 & 1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_1D5D30DC4();
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v17[2] = sub_1D670908C;
  v17[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v17);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F5B9C();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D66F5C80();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6391924(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D670919C;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F76F0();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D66F7744();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6391ABC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v23 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_1D5D30DC4();
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v17[2] = sub_1D66F7798;
  v17[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v17);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F76F0();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC887418, sub_1D66BE130, &type metadata for FormatTagBinding.Command, type metadata accessor for FormatArraySubscript);
    sub_1D66F77C0();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6391C98(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_1D5D30DC4();
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v17[2] = sub_1D6709198;
  v17[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v17);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F7518();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D66F756C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6391E30(char a1, __int128 *a2, uint64_t a3)
{
  v20 = a1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  v19 = *(a2 + 4);
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D66F75C0;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F7518();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC887440, sub_1D66BE2BC, &type metadata for FormatTagBinding.Image, type metadata accessor for FormatArraySubscript);
    sub_1D66F75E8();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6392010(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67091A0;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F7850();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5FCE234();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63921A4(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D66F78A4;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F7850();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC887400, sub_1D5FCE114, &type metadata for FormatTagBinding.Color, type metadata accessor for FormatArraySubscript);
    sub_1D66F78CC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639237C(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709194;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F73B8();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66F740C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6392510(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D66F7460;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F73B8();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC887460, sub_1D66BE3F4, &type metadata for FormatTagBinding.Text, type metadata accessor for FormatArraySubscript);
    sub_1D66F7488();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63926E8(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709314;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67065F8();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66FE370();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639287C(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D670664C;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67065F8();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC886080, sub_1D665AC44, &type metadata for FormatTagBinding.Bool, type metadata accessor for FormatArraySubscript);
    sub_1D6706674();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6392A54(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D67091B0;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F8910();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66F8964();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6392BE8(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66F89B8;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F8910();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    type metadata accessor for FormatSlotDefinition();
    sub_1D5B58B84(&qword_1EDF0ED20, type metadata accessor for FormatSlotDefinition);
    sub_1D72647EC();
  }
}

uint64_t sub_1D6392DBC(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6706CEC;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6706C98();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C71DC8();
    sub_1D5B58B84(&qword_1EDF12740, sub_1D5C71DC8);
    sub_1D72647EC();
  }
}

uint64_t sub_1D6392F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v16 = a1;
  v17 = a2;
  sub_1D5D30DC4();
  v8 = (v4 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v14[2] = sub_1D66FBA38;
  v14[3] = v11;

  v12 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FBA5C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66FBAB0();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639310C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D66FC654;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC600();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF25C00, sub_1D5CD9018, &type metadata for FormatImageRenderingMode, type metadata accessor for FormatUserInterfaceValue);
    sub_1D66FC67C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63932E0(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6702B60;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6666858();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF33F58, sub_1D5C671FC, &type metadata for FormatAccessibilityTrait, type metadata accessor for FormatValue);
    sub_1D6702144();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63934B4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a1 & 1;
  v23 = a1 & 1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_1D5D30DC4();
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v17[2] = sub_1D66F72B8;
  v17[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v17);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F72E0();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D5C80140(0, &qword_1EDF2E1D8, sub_1D66BEE28);
    sub_1D66F7334();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6393680(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = a1 & 1;
  v21 = a1 & 1;
  v18 = a2;
  v19 = a3;
  v20 = a4 & 1;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D6709094;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F72E0();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D5F84F2C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639381C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 1;
  v17 = a1 & 1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66F8718;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F8740();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5F343B8();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63939B0(char a1, uint64_t a2, double a3)
{
  v6 = a1 & 1;
  v17 = a1 & 1;
  v16 = a3;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66F8A34;
  v14[3] = v11;

  v12 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F89E0();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C34074(0, &qword_1EC886F48, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for FormatValue);
    sub_1D66F8A5C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6393B78(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66F9CC4;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9C70();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66F9BA4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6393D0C(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66F9B28;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9B50();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66F9BA4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6393EA0(char a1, char a2, uint64_t a3)
{
  v6 = a1 & 1;
  v17 = a1 & 1;
  v16 = a2 & 1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67090CC;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FBEE0();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66FBF34();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6394038(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 & 1;
  v19 = a1 & 1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D66FBF88;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FBEE0();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC886D68, sub_1D6698B60, &type metadata for FormatIssueCoverContent, type metadata accessor for FormatSelectorValue);
    sub_1D66FBFB0();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639420C(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v15 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D66FC040;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC068();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D66FC0BC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6394398(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v15 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D67090D0;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC068();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D66FC110();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6394524(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D67031D0;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67031F8();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D6661258();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63946BC(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67092B4;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67031F8();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D670324C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6394850(char a1, __int128 *a2, uint64_t a3)
{
  v22 = a1;
  v7 = a2[1];
  v18 = *a2;
  v19 = v7;
  v8 = a2[3];
  v20 = a2[2];
  v21 = v8;
  sub_1D5D30DC4();
  v10 = (v3 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D67092B4;
  v16[3] = v13;

  v14 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v16);
  if (!v4 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67031F8();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D66F7DBC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63949F0(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2 & 1;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D66FDAEC;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FDA98();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF2C0F0, sub_1D668FA6C, &type metadata for FormatGroupColumnSystemKind, type metadata accessor for FormatSelectorValue);
    sub_1D66FDB14();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6394BCC(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D670923C;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FEEB0();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5B55CBC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6394D60(char a1, __int128 *a2, uint64_t a3)
{
  v22 = a1;
  v7 = a2[1];
  v18 = *a2;
  v19 = v7;
  v8 = a2[3];
  v20 = a2[2];
  v21 = v8;
  sub_1D5D30DC4();
  v10 = (v3 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D670923C;
  v16[3] = v13;

  v14 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v16);
  if (!v4 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FEEB0();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D66F7DBC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6394F00(char a1, __int128 *a2, uint64_t a3)
{
  v28 = a1;
  v7 = a2[5];
  v24 = a2[4];
  v25 = v7;
  v8 = a2[7];
  v26 = a2[6];
  v27 = v8;
  v9 = a2[1];
  v20 = *a2;
  v21 = v9;
  v10 = a2[3];
  v22 = a2[2];
  v23 = v10;
  sub_1D5D30DC4();
  v12 = (v3 + *(v11 + 44));
  v14 = *v12;
  v13 = v12[1];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v14;
  *(v15 + 32) = v13;
  v18[2] = sub_1D670923C;
  v18[3] = v15;

  v16 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v18);
  if (!v4 && (v16 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FEEB0();
    v19 = 0uLL;
    sub_1D72647EC();
    v19 = xmmword_1D7279980;
    sub_1D66FE87C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63950B0(char a1, __int128 *a2, uint64_t a3)
{
  v19 = a1;
  v7 = a2[1];
  v17 = *a2;
  *v18 = v7;
  *&v18[9] = *(a2 + 25);
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D670923C;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FEEB0();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66FEF04();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6395250(char a1, __int128 *a2, uint64_t a3)
{
  v30 = a1;
  v7 = a2[7];
  v26 = a2[6];
  v27 = v7;
  v28 = a2[8];
  v29 = *(a2 + 144);
  v8 = a2[3];
  v22 = a2[2];
  v23 = v8;
  v9 = a2[5];
  v24 = a2[4];
  v25 = v9;
  v10 = a2[1];
  v20 = *a2;
  v21 = v10;
  sub_1D5D30DC4();
  v12 = (v3 + *(v11 + 44));
  v14 = *v12;
  v13 = v12[1];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v14;
  *(v15 + 32) = v13;
  v18[2] = sub_1D670923C;
  v18[3] = v15;

  v16 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v18);
  if (!v4 && (v16 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FEEB0();
    v19 = 0uLL;
    sub_1D72647EC();
    v19 = xmmword_1D7279980;
    sub_1D66FEF58();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6395418(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D670923C;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FEEB0();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5D44F04();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63955AC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D670923C;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FEEB0();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF2C100, sub_1D6686220, &type metadata for FormatDecorationContent, type metadata accessor for FormatSelectorValue);
    sub_1D66FEFAC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6395780(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D66FF03C;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FEEB0();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D6686164();
    sub_1D5B58B84(&qword_1EC889E38, sub_1D6686164);
    sub_1D72647EC();
  }
}

uint64_t sub_1D6395950(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2 & 1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709264;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67006E8();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D670073C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6395AE8(char a1, uint64_t a2)
{
  v15 = a1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D6700790;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67006E8();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D67007B8();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6395C74(char a1, uint64_t a2)
{
  v15 = a1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D6709264;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67006E8();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D670080C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6395E00(char a1, uint64_t a2)
{
  v15 = a1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D6709264;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67006E8();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D62E4FDC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6395F8C(char a1, __int128 *a2, uint64_t a3)
{
  v19 = a1;
  v7 = a2[1];
  v17 = *a2;
  *v18 = v7;
  *&v18[10] = *(a2 + 26);
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709274;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700F78();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D6700FCC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639612C(char a1, __int128 *a2, uint64_t a3)
{
  v25 = a1;
  v7 = a2[5];
  v23 = a2[4];
  *v24 = v7;
  *&v24[11] = *(a2 + 91);
  v8 = a2[1];
  v19 = *a2;
  v20 = v8;
  v9 = a2[3];
  v21 = a2[2];
  v22 = v9;
  sub_1D5D30DC4();
  v11 = (v3 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v17[2] = sub_1D6709274;
  v17[3] = v14;

  v15 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v17);
  if (!v4 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700F78();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D6701020();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63962DC(char a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a1;
  v17 = a2;
  v18 = a3;
  v19 = BYTE2(a3) & 1;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709274;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700F78();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66FEC14();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639647C(char a1, __int16 a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2 & 0x101;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709274;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700F78();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6701074();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639661C(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2 & 1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709274;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700F78();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D67010C8();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63967B4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6)
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a1;
  sub_1D5D30DC4();
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v17[2] = sub_1D670111C;
  v17[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v17);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700F78();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D6701144();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6396950(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D6709274;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700F78();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D6701198();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6396AE8(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D6709274;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700F78();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D67011EC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6396C80(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709274;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700F78();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5F94DEC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6396E14(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2 & 1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D670151C;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67014C8();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6701544();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6396FAC(char a1, __int128 *a2, uint64_t a3)
{
  v19 = a1;
  v7 = a2[1];
  v17 = *a2;
  *v18 = v7;
  *&v18[9] = *(a2 + 25);
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709284;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701614();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D6678B70();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639714C(char a1, __int128 *a2, uint64_t a3)
{
  v26 = a1;
  v7 = a2[5];
  v23 = a2[4];
  v24 = v7;
  v25 = *(a2 + 12);
  v8 = a2[1];
  v19 = *a2;
  v20 = v8;
  v9 = a2[3];
  v21 = a2[2];
  v22 = v9;
  sub_1D5D30DC4();
  v11 = (v3 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v17[2] = sub_1D6709284;
  v17[3] = v14;

  v15 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v17);
  if (!v4 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701614();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D5FB9ACC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63972FC(char a1, __int128 *a2, uint64_t a3)
{
  v21 = a1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  v19 = a2[2];
  v20 = *(a2 + 48);
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709284;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701614();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D619F6D4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63974A4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D6709284;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701614();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D5C80140(0, &qword_1EDF2E1F8, sub_1D5B57A00);
    sub_1D6701668();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6397670(char a1, __int128 *a2, uint64_t a3)
{
  v27 = a1;
  v7 = a2[5];
  v23 = a2[4];
  v24 = v7;
  v25 = a2[6];
  v26 = *(a2 + 14);
  v8 = a2[1];
  v19 = *a2;
  v20 = v8;
  v9 = a2[3];
  v21 = a2[2];
  v22 = v9;
  sub_1D5D30DC4();
  v11 = (v3 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v17[2] = sub_1D6709284;
  v17[3] = v14;

  v15 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v17);
  if (!v4 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701614();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D66FAAB4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6397828(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D67016EC;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701614();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF2EDB8, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatSwitchValue);
    sub_1D6701714();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63979FC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709284;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701614();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF25C10, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatUserInterfaceValue);
    sub_1D67017A4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6397BD0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D6709284;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701614();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D6701834();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6397D68(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709284;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701614();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF2C110, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatSelectorValue);
    sub_1D6701888();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6397F3C(char a1, __int128 *a2, uint64_t a3)
{
  v38 = a1;
  v7 = a2[13];
  v35 = a2[12];
  v36 = v7;
  v37 = a2[14];
  v8 = a2[9];
  v31 = a2[8];
  v32 = v8;
  v9 = a2[11];
  v33 = a2[10];
  v34 = v9;
  v10 = a2[5];
  v27 = a2[4];
  v28 = v10;
  v11 = a2[7];
  v29 = a2[6];
  v30 = v11;
  v12 = a2[1];
  v23 = *a2;
  v24 = v12;
  v13 = a2[3];
  v25 = a2[2];
  v26 = v13;
  sub_1D5D30DC4();
  v15 = (v3 + *(v14 + 44));
  v17 = *v15;
  v16 = v15[1];
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v17;
  *(v18 + 32) = v16;
  v21[2] = sub_1D6709310;
  v21[3] = v18;

  v19 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v21);
  if (!v4 && (v19 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67062A8();
    v22 = 0uLL;
    sub_1D72647EC();
    v22 = xmmword_1D7279980;
    sub_1D67062FC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6398114(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6706350;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67062A8();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC8860B0, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatSwitchValue);
    sub_1D6706378();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63982E8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709310;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67062A8();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF0CE58, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatUserInterfaceValue);
    sub_1D6706408();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63984BC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D6709310;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67062A8();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D6706498();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6398654(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709310;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67062A8();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC886098, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatSelectorValue);
    sub_1D67064EC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6398828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v16 = a1;
  v17 = a2;
  sub_1D5D30DC4();
  v8 = (v4 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v14[2] = sub_1D66F5E4C;
  v14[3] = v11;

  v12 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F5E70();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66F5218();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63989AC(char a1, __int128 *a2, uint64_t a3)
{
  v26 = a1;
  v7 = a2[5];
  v23 = a2[4];
  v24 = v7;
  v25 = *(a2 + 12);
  v8 = a2[1];
  v19 = *a2;
  v20 = v8;
  v9 = a2[3];
  v21 = a2[2];
  v22 = v9;
  sub_1D5D30DC4();
  v11 = (v3 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v17[2] = sub_1D6709318;
  v17[3] = v14;

  v15 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v17);
  if (!v4 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6706984();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D5FB9ACC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6398B5C(char a1, __int128 *a2, uint64_t a3)
{
  v21 = a1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  v19 = a2[2];
  v20 = *(a2 + 48);
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709318;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6706984();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D619F6D4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6398D04(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D67069D8;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6706984();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC886048, sub_1D5C9B86C, &type metadata for FormatSyncImageContent, type metadata accessor for FormatSelectorValue);
    sub_1D6706A00();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6398ED8(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67092F4;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D670581C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C34D84(0, &qword_1EDF1B418, &type metadata for FormatColor, MEMORY[0x1E69E62F8]);
    sub_1D668E990();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6399098(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67092F4;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D670581C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5B55CBC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639922C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6705870;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D670581C();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC886128, sub_1D5FB9D00, &type metadata for FormatSymbolImageColor, type metadata accessor for FormatSelectorValue);
    sub_1D6705898();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6399400(char a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 1;
  v17 = a1 & 1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66F2390;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F23B8();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C34074(0, &qword_1EDF43B90, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
    sub_1D5CB5D7C(&qword_1EDF047E0);
    sub_1D72647EC();
  }
}

uint64_t sub_1D63995EC(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709200;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC7DC();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66FC830();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6399780(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2 & 1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709200;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC7DC();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66FC884();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6399918(char a1, __int128 *a2, uint64_t a3)
{
  v19 = a1;
  v7 = a2[1];
  v17 = *a2;
  *v18 = v7;
  *&v18[9] = *(a2 + 25);
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709200;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC7DC();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66FC8D8();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6399AB8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_1D5D30DC4();
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v17[2] = sub_1D6709200;
  v17[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v17);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC7DC();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D66F756C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6399C50(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709200;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC7DC();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66FC92C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6399DE4(char a1, uint64_t a2)
{
  v15 = a1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D6709200;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC7DC();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D66FC980();
    sub_1D72647EC();
  }
}

uint64_t sub_1D6399F70(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2 & 1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709200;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC7DC();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66FC9D4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639A108(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D6709200;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC7DC();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D66F5218();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639A2A0(char a1, __int128 *a2, uint64_t a3)
{
  v19 = a1;
  v7 = a2[1];
  v17 = *a2;
  *v18 = v7;
  *&v18[9] = *(a2 + 25);
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D66FCA28;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC7DC();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66FCA50();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639A440(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2 & 1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709200;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC7DC();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66FCAA4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639A5D8(char a1, uint64_t a2, double a3)
{
  v17 = a1;
  v16 = a3;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66FD4B0;
  v14[3] = v11;

  v12 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FD4D8();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF127B8, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatValue);
    sub_1D66F8FB4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639A7AC(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709208;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FD4D8();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C34D84(0, &qword_1EDF1B3D0, &type metadata for FormatBundle, MEMORY[0x1E69E62F8]);
    sub_1D66FD52C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639A96C(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709208;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FD4D8();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C34D84(0, &qword_1EC886C70, &type metadata for FormatPlatform, MEMORY[0x1E69E62F8]);
    sub_1D66FD61C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639AB2C(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709208;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FD4D8();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C34D84(0, &qword_1EDF1AFF8, &type metadata for FormatGroupColumnSystemKind, MEMORY[0x1E69E62F8]);
    sub_1D66FD70C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639ACEC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709208;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FD4D8();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF12720, sub_1D666D9FC, &type metadata for FormatSelector, type metadata accessor for FormatValue);
    sub_1D66FD7FC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639AEC0(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709248;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF62C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C34074(0, &qword_1EDF44018, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatCompilerPrimitiveProperty);
    sub_1D66FF680();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639B090(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709248;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF62C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatCompilerPrimitiveProperty);
    sub_1D66FF704();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639B26C(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709248;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF62C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5B58AF0();
    sub_1D5B58B84(&qword_1EC889E68, sub_1D5B58AF0);
    sub_1D72647EC();
  }
}

uint64_t sub_1D639B440(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66FF794;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF62C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    type metadata accessor for FormatCompilerEnumProperty(0);
    sub_1D5B58B84(&unk_1EDF0B740, type metadata accessor for FormatCompilerEnumProperty);
    sub_1D72647EC();
  }
}

uint64_t sub_1D639B614(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709248;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF62C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF44040, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatCompilerPrimitiveProperty);
    sub_1D66FF7BC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639B7F0(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709248;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF62C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C34074(0, &qword_1EDF44010, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatCompilerPrimitiveProperty);
    sub_1D66FF84C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639B9C0(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709248;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF62C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C34074(0, &qword_1EDF44020, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatCompilerPrimitiveProperty);
    sub_1D66FF8D0();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639BB90(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709248;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF62C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5CB3BF0();
    sub_1D5B58B84(&qword_1EDF09488, sub_1D5CB3BF0);
    sub_1D72647EC();
  }
}

uint64_t sub_1D639BD64(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709248;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF62C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF44030, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatCompilerPrimitiveProperty);
    sub_1D66FF954();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639BF40(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709248;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF62C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF44038, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatCompilerPrimitiveProperty);
    sub_1D66FF9E4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639C11C(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D6709268;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700860();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D67008B4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639C2B4(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709268;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700860();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66807EC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639C448(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709268;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700860();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    type metadata accessor for FormatCommandOpenURL();
    sub_1D5B58B84(&qword_1EDF0F168, type metadata accessor for FormatCommandOpenURL);
    sub_1D72647EC();
  }
}

uint64_t sub_1D639C61C(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709268;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700860();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D61DEFCC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639C7B0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6700908;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700860();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF2EDC8, sub_1D5C68600, &type metadata for FormatButtonNodeAction, type metadata accessor for FormatSwitchValue);
    sub_1D6700930();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639C984(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_1D5D30DC4();
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v17[2] = sub_1D6709268;
  v17[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v17);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700860();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D67009C0();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639CB1C(char a1, __int128 *a2, uint64_t a3)
{
  v23 = a1;
  v7 = a2[3];
  v20 = a2[2];
  v21 = v7;
  v22 = *(a2 + 64);
  v8 = a2[1];
  v18 = *a2;
  v19 = v8;
  sub_1D5D30DC4();
  v10 = (v3 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D6709268;
  v16[3] = v13;

  v14 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v16);
  if (!v4 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700860();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D614F340();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639CCC4(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709268;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700860();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6700A14();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639CE58(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709268;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700860();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6700A68();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639CFEC(char a1, __int128 *a2, uint64_t a3)
{
  v21 = a1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  v19 = a2[2];
  v20 = *(a2 + 24);
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709268;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700860();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D6700ABC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639D194(char a1, __int128 *a2, uint64_t a3)
{
  v21 = a1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  v19 = a2[2];
  v20 = *(a2 + 24);
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709268;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700860();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D6686A30();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639D33C(char a1, char a2, uint64_t a3)
{
  v6 = a1 & 1;
  v17 = a1 & 1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66F52C0;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F52E8();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66F533C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639D4D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1 & 1;
  v21 = a1 & 1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D6709108;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67043E0();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D6704434();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639D668(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = a1 & 1;
  v21 = a1 & 1;
  v18 = a2;
  v19 = a3;
  v20 = a4 & 1;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D6704488;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67043E0();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D60ED320();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639D804(char a1, __int128 *a2, uint64_t a3)
{
  v21 = a1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  v19 = a2[2];
  v20 = *(a2 + 48);
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D67092F0;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67055E8();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D6704DFC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639D9AC(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67092F0;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67055E8();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6704E50();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639DB40(char a1, __int128 *a2, uint64_t a3)
{
  v21 = a1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  v19 = a2[2];
  v20 = *(a2 + 48);
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D67092F0;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67055E8();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D6066FDC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639DCE8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D67092F0;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67055E8();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D66F5218();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639DE80(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D670563C;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67055E8();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6705664();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639E014(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67092F0;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67055E8();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66F740C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639E1A8(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67092F0;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67055E8();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6704F4C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639E33C(char a1, __int128 *a2, uint64_t a3)
{
  v21 = a1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  v19 = a2[2];
  v20 = *(a2 + 48);
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D67092F0;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67055E8();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D670501C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639E4E4(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3 & 1;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D67092F0;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67055E8();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D6705070();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639E680(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67092F0;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67055E8();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D67050C4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639E814(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2 & 1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67092F0;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67055E8();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D67056B8();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639E9AC(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D67092F0;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67055E8();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D6704FC8();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639EB44(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67092F0;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67055E8();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6704EF8();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639ECD8(char a1, __int128 *a2, uint64_t a3)
{
  v20 = a1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  v19 = a2[2];
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D67092F0;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67055E8();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D6705118();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639EE78(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67091EC;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FB264();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66FB2B8();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639F00C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D67091EC;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FB264();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC886E68, sub_1D66A3908, &type metadata for FormatMicaNodeContent, type metadata accessor for FormatUserInterfaceValue);
    sub_1D66FB30C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639F1E0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D66FB39C;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FB264();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC886E50, sub_1D66A3908, &type metadata for FormatMicaNodeContent, type metadata accessor for FormatSelectorValue);
    sub_1D66FB3C4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639F3B4(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  sub_1D5D30DC4();
  v6 = (v2 + *(v5 + 44));
  v8 = *v6;
  v7 = v6[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v12[2] = sub_1D66FB454;
  v12[3] = v9;

  v10 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v10 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FB478();
    v13 = 0uLL;
    sub_1D72647EC();
    v13 = xmmword_1D7279980;
    sub_1D60B27FC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639F538(char a1, uint64_t a2)
{
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v6 = (v2 + *(v5 + 44));
  v8 = *v6;
  v7 = v6[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v12[2] = sub_1D66FB560;
  v12[3] = v9;

  v10 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v10 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FB584();
    v13 = 0uLL;
    sub_1D72647EC();
    v13 = xmmword_1D7279980;
    sub_1D66FB5D8();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639F6C0(char a1, uint64_t a2, uint64_t a3)
{
  v16[135] = a1;
  sub_1D5F78F40(a2, v16);
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6705B84;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705BAC();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6705C00();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639F860(char a1, __int128 *a2, uint64_t a3)
{
  v29 = a1;
  v7 = a2[7];
  v26 = a2[6];
  v27 = v7;
  v28 = *(a2 + 128);
  v8 = a2[3];
  v22 = a2[2];
  v23 = v8;
  v9 = a2[5];
  v24 = a2[4];
  v25 = v9;
  v10 = a2[1];
  v20 = *a2;
  v21 = v10;
  sub_1D5D30DC4();
  v12 = (v3 + *(v11 + 44));
  v14 = *v12;
  v13 = v12[1];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v14;
  *(v15 + 32) = v13;
  v18[2] = sub_1D67092FC;
  v18[3] = v15;

  v16 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v18);
  if (!v4 && (v16 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705BAC();
    v19 = 0uLL;
    sub_1D72647EC();
    v19 = xmmword_1D7279980;
    sub_1D6705C54();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639FA18(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3 & 1;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D67092FC;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705BAC();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5F26C30();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639FBB4(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2 & 1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709204;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FCE2C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66FA19C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639FD4C(char a1, uint64_t a2)
{
  v15 = a1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D6709204;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FCE2C();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D66FCE80();
    sub_1D72647EC();
  }
}

uint64_t sub_1D639FED8(char a1, uint64_t a2, __int16 a3, uint64_t a4, double a5)
{
  v21 = a1;
  v18 = a5;
  v19 = a2;
  v20 = a3;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D66FD138;
  v16[3] = v13;

  v14 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FD160();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D66FC3C4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A0074(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D6709240;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF0E0();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D66F5218();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A020C(char a1, uint64_t a2)
{
  v15 = a1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D6709240;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF0E0();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D66FE02C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A0398(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709240;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF0E0();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5DF40FC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A052C(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2 & 1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709240;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF0E0();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66FE080();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A06C4(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709240;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF0E0();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6139F28();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A0858(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709240;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF0E0();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66FF134();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A09EC(char a1, uint64_t a2)
{
  v15 = a1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D66FF188;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF0E0();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D66FF1B0();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A0B78(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709240;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF0E0();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66FF204();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A0D0C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709254;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FFEB4();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66FFF08();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A0EA0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D66FFF5C;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FFEB4();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66FFF84();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A1034(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709254;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FFEB4();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66FFFD8();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A11C8(char a1, __int16 a2, uint64_t a3, double a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a4;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709254;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FFEB4();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D670002C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A1368(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709254;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FFEB4();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D6700080();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A14FC(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6702858;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702880();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C71DC8();
    sub_1D5B58B84(&qword_1EDF12740, sub_1D5C71DC8);
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A16C8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D67092A0;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702880();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D619B500();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A185C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v16 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v8 = (v4 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v14[2] = sub_1D6706704;
  v14[3] = v11;

  v12 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6706728();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D665E714();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A19E4(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D66F5578;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F55A0();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D61D3D58();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A1B7C(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709174;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F611C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66F6170();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A1D10(char a1, __int128 *a2, uint64_t a3)
{
  v21 = a1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  v19 = a2[2];
  v20 = *(a2 + 48);
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709174;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F611C();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66F61C4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A1EB8(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66F6218;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F611C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66F6240();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A204C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 & 1;
  v19 = a1 & 1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6702D50;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702D78();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF12720, sub_1D666D9FC, &type metadata for FormatSelector, type metadata accessor for FormatValue);
    sub_1D66FD7FC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A2220(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D67092C8;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6703E78();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D6703F20();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A23B8(char a1, __int128 *a2, uint64_t a3)
{
  v6 = a1 & 1;
  v27 = a1 & 1;
  v7 = a2[5];
  v23 = a2[4];
  v24 = v7;
  v25 = a2[6];
  v26 = *(a2 + 14);
  v8 = a2[1];
  v19 = *a2;
  v20 = v8;
  v9 = a2[3];
  v21 = a2[2];
  v22 = v9;
  sub_1D5D30DC4();
  v11 = (v3 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = v6;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v17[2] = sub_1D66FAA38;
  v17[3] = v14;

  v15 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v17);
  if (!v4 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FAA60();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D66FAAB4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A2570(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 & 1;
  v19 = a1 & 1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D67090BC;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FAA60();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF0CE68, sub_1D66A90EC, &type metadata for FormatPatternContent, type metadata accessor for FormatUserInterfaceValue);
    sub_1D66FAB08();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A2744(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709324;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67081C0();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    type metadata accessor for FormatCommandOpenURL();
    sub_1D5B58B84(&qword_1EDF0F168, type metadata accessor for FormatCommandOpenURL);
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A2918(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709324;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67081C0();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66807EC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A2AAC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6708214;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67081C0();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF2EDD8, sub_1D5C888A0, &type metadata for FormatMenuItemAction, type metadata accessor for FormatSwitchValue);
    sub_1D670823C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A2C80(char a1, uint64_t a2, uint64_t a3)
{
  v16[55] = a1;
  sub_1D62B5F18(a2, v16);
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67091F4;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FBD40();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6151D24();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A2E20(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66FBD94;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FBD40();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    type metadata accessor for FormatCommandOpenURL();
    sub_1D5B58B84(&qword_1EDF0F168, type metadata accessor for FormatCommandOpenURL);
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A2FF4(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67091F4;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FBD40();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D61DEFCC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A3188(char a1, uint64_t a2, double a3)
{
  v17 = a1;
  v16 = a3;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67054C4;
  v14[3] = v11;

  v12 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67054EC();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6705540();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A331C(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67092F8;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705A20();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    type metadata accessor for FormatAbsoluteURL();
    sub_1D5B58B84(qword_1EDF10E68, type metadata accessor for FormatAbsoluteURL);
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A34F0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D67092F8;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705A20();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D6704310();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A3688(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D6705A74;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705A20();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D66F5218();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A3820(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v23 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_1D5D30DC4();
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v17[2] = sub_1D6709250;
  v17[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v17);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FFB74();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D62057C0();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A39BC(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709250;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FFB74();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66FFBC8();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A3B50(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2 & 1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66FFC1C;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FFB74();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66FFC44();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A3CE8(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D6709250;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FFB74();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D66F7744();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A3E80(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709250;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FFB74();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D62012E8();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A4014(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709250;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FFB74();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66FFC98();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A41A8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v23 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_1D5D30DC4();
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v17[2] = sub_1D6709250;
  v17[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v17);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FFB74();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D66FFCEC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A4344(char a1, uint64_t a2, uint64_t a3)
{
  v16[55] = a1;
  sub_1D5F58338(a2, v16);
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709250;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FFB74();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66FFD40();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A44E4(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709250;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FFB74();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66FFD94();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A4678(char a1, char a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2 & 1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709250;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FFB74();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66FFDE8();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A4810(char a1, char a2, uint64_t a3, double a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a4;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D670930C;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6706060();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D67060B4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A49A8(char a1, char a2, uint64_t a3, double a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a4;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D670930C;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6706060();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D6706108();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A4B40(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D670930C;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6706060();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D670615C();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A4CD4(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67061B0;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6706060();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5B55CBC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A4E68(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4 & 1;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D670930C;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6706060();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D67061D8();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A5004(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67091AC;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F83F0();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    type metadata accessor for FormatSlotItemCountLimit();
    sub_1D5B58B84(&qword_1EDF0CEC0, type metadata accessor for FormatSlotItemCountLimit);
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A51D8(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67091AC;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F83F0();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66B9324();
    sub_1D5B58B84(&qword_1EDF12700, sub_1D66B9324);
    sub_1D72647EC();
  }
}

uint64_t sub_1D63A53A4(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67091AC;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F83F0();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5B56404();
    sub_1D72647EC();
  }
}