void sub_1D5CD2488()
{
  if (!qword_1EDF19D28)
  {
    sub_1D5CD251C();
    sub_1D5B58B84(&qword_1EDF24C38, sub_1D5CD251C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19D28);
    }
  }
}

void sub_1D5CD251C()
{
  if (!qword_1EDF24C30)
  {
    sub_1D5CD25A0();
    sub_1D5CD25F4();
    sub_1D5CD26F8();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24C30);
    }
  }
}

unint64_t sub_1D5CD25A0()
{
  result = qword_1EDF32678;
  if (!qword_1EDF32678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32678);
  }

  return result;
}

unint64_t sub_1D5CD25F4()
{
  result = qword_1EDF32680;
  if (!qword_1EDF32680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32680);
  }

  return result;
}

unint64_t sub_1D5CD264C()
{
  result = qword_1EDF32668;
  if (!qword_1EDF32668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32668);
  }

  return result;
}

unint64_t sub_1D5CD26A4()
{
  result = qword_1EDF32670;
  if (!qword_1EDF32670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32670);
  }

  return result;
}

unint64_t sub_1D5CD26F8()
{
  result = qword_1EDF32688;
  if (!qword_1EDF32688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32688);
  }

  return result;
}

uint64_t sub_1D5CD2754(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x6E6564496D657469;
      break;
    case 2:
      result = 1702521203;
      break;
    case 3:
      result = 0x657A69736572;
      break;
    case 4:
      result = 0x656D7473756A6461;
      break;
    case 5:
      result = 0x73656C797473;
      break;
    case 6:
      result = 0x726F7463656C6573;
      break;
    case 7:
      result = 0x736E6F6974706FLL;
      break;
    case 8:
      result = 0x736B636F6C62;
      break;
    case 9:
      result = 0x7865646E497ALL;
      break;
    case 10:
      result = 0x696C696269736976;
      break;
    case 11:
      result = 0x7449656372756F73;
      break;
    case 12:
      result = 2019912806;
      break;
    case 13:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5CD2924(void *a1)
{
  sub_1D5C2E60C(0, &qword_1EDF3BCF8, sub_1D5C91044, sub_1D5C50B48);
  v3 = v2;
  v48 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v36 - v5;
  sub_1D5CD30B4();
  v8 = v7;
  v47 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CD3148();
  sub_1D5B58B84(&qword_1EDF256A8, sub_1D5CD3148);
  v12 = v53;
  sub_1D7264B0C();
  v13 = v12;
  if (v12)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v13);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v3;
  }

  v46 = v6;
  v14 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v15 = sub_1D7264AFC();
  LOBYTE(v14) = Dictionary<>.errorOnUnknownKeys.getter(v15);

  v17 = v47;
  v16 = v48;
  if (v14)
  {
    v18 = sub_1D726433C();
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 48);
      while (*v20 != 1)
      {
        v20 += 24;
        if (!--v19)
        {
          goto LABEL_7;
        }
      }

      v24 = *(v20 - 2);
      v23 = *(v20 - 1);

      v25 = sub_1D6622240();
      sub_1D5E2D970();
      v13 = swift_allocError();
      *v26 = v24;
      *(v26 + 8) = v23;
      *(v26 + 16) = v25;
      *(v26 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v17 + 8))(v11, v8);
      a1 = v53;
      goto LABEL_10;
    }

LABEL_7:
  }

  v21 = sub_1D5C31D18(v11, 0, 0, 0, sub_1D5CD30B4);
  v45 = v22;
  v51 = xmmword_1D728CF30;
  v52 = 0;
  sub_1D5CD345C();
  sub_1D726431C();
  v28 = v17;
  v42 = v21;
  v43 = v49;
  v44 = v50;
  sub_1D5C30060(0, &qword_1EDF32838, sub_1D5C5A3D0, &type metadata for FormatInteger, type metadata accessor for FormatEquation);
  v51 = xmmword_1D7297410;
  v52 = 0;
  sub_1D5CD3B58();
  sub_1D726427C();
  v41 = v49;
  v51 = xmmword_1D72BAA60;
  v52 = 0;
  sub_1D726427C();
  v40 = v49;
  v51 = xmmword_1D72BAA70;
  v52 = 0;
  sub_1D726427C();
  v39 = v49;
  v51 = xmmword_1D72BAA80;
  v52 = 0;
  v37 = sub_1D726422C();
  v38 = v29;
  v51 = xmmword_1D72BAA90;
  v52 = 0;
  sub_1D5C51470();
  v30 = v46;
  sub_1D726431C();
  v31 = sub_1D725A74C();
  (*(v16 + 8))(v30, v3);
  (*(v28 + 8))(v11, v8);
  type metadata accessor for FormatRepeatNode();
  v3 = swift_allocObject();
  swift_beginAccess();
  v32 = v45;
  *(v3 + 16) = v42;
  *(v3 + 24) = v32;
  *(v3 + 32) = v43;
  *(v3 + 40) = v44;
  v33 = v40;
  *(v3 + 48) = v41;
  *(v3 + 56) = v33;
  v35 = v37;
  v34 = v38;
  *(v3 + 64) = v39;
  *(v3 + 72) = v35;
  *(v3 + 80) = v34;
  swift_beginAccess();
  *(v3 + 88) = v31;
  __swift_destroy_boxed_opaque_existential_1(v53);
  return v3;
}

uint64_t sub_1D5CD3088@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5CD2924(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1D5CD30B4()
{
  if (!qword_1EDF1A260)
  {
    sub_1D5CD3148();
    sub_1D5B58B84(&qword_1EDF256A8, sub_1D5CD3148);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A260);
    }
  }
}

void sub_1D5CD3148()
{
  if (!qword_1EDF256A0)
  {
    sub_1D5CD31CC();
    sub_1D5CD3220();
    sub_1D5CD3324();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF256A0);
    }
  }
}

unint64_t sub_1D5CD31CC()
{
  result = qword_1EDF300F8;
  if (!qword_1EDF300F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF300F8);
  }

  return result;
}

unint64_t sub_1D5CD3220()
{
  result = qword_1EDF30100;
  if (!qword_1EDF30100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30100);
  }

  return result;
}

unint64_t sub_1D5CD3278()
{
  result = qword_1EDF300E8;
  if (!qword_1EDF300E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF300E8);
  }

  return result;
}

unint64_t sub_1D5CD32D0()
{
  result = qword_1EDF300F0;
  if (!qword_1EDF300F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF300F0);
  }

  return result;
}

unint64_t sub_1D5CD3324()
{
  result = qword_1EDF30108;
  if (!qword_1EDF30108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30108);
  }

  return result;
}

uint64_t sub_1D5CD3378()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6E6572646C696863;
  if (v1 != 6)
  {
    v3 = 1885433183;
  }

  v4 = 0x656469727473;
  if (v1 != 4)
  {
    v4 = 0x65706F6373;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 7235949;
  if (v1 != 2)
  {
    v5 = 7889261;
  }

  if (*v0)
  {
    v2 = 0x6F69746172657469;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1D5CD345C()
{
  result = qword_1EDF247F8;
  if (!qword_1EDF247F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF247F8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for GroupLayoutDimensionSizeSpec(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupLayoutDimensionSizeSpec(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t FormatRepeatNodeIteration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_1D5C303A0(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v24 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v10 = sub_1D7264AFC();
    v11 = Dictionary<>.errorOnUnknownKeys.getter(v10);

    v12 = v25;
    v13 = v9;
    if (v11)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F51189C0;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v6 + 8))(v13, v5);
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }
      }
    }

    sub_1D5CD39AC();
    v26 = 0uLL;
    sub_1D726431C();
    v22 = v27;
    if (v27)
    {
      sub_1D5C5A334();
      v26 = xmmword_1D7279980;
      sub_1D5CD3B14(&qword_1EDF33F20);
      sub_1D726431C();
      (*(v6 + 8))(v13, v5);
      v23 = v27;
    }

    else
    {
      sub_1D5C303A0(0, &qword_1EDF33F48, sub_1D71F0DCC, &type metadata for FormatRepeatNodeBindIteration, type metadata accessor for FormatValue);
      v24 = xmmword_1D7279980;
      v26 = xmmword_1D7279980;
      sub_1D71F0EC8(&qword_1EDF33F50);
      sub_1D726431C();
      (*(v6 + 8))(v13, v5);
      v23 = v27;
    }

    *v12 = v23;
    *(v12 + 8) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CD39AC()
{
  result = qword_1EDF24800;
  if (!qword_1EDF24800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24800);
  }

  return result;
}

unint64_t sub_1D5CD3A60()
{
  result = qword_1EDF24808;
  if (!qword_1EDF24808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24808);
  }

  return result;
}

uint64_t sub_1D5CD3AB4@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D5CD3B14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5C5A334();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5CD3B58()
{
  result = qword_1EDF32840;
  if (!qword_1EDF32840)
  {
    sub_1D5C30060(255, &qword_1EDF32838, sub_1D5C5A3D0, &type metadata for FormatInteger, type metadata accessor for FormatEquation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32840);
  }

  return result;
}

unint64_t sub_1D5CD3BE8()
{
  result = qword_1EDF2DD48;
  if (!qword_1EDF2DD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DD48);
  }

  return result;
}

unint64_t sub_1D5CD3C90()
{
  result = qword_1EDF2DD50;
  if (!qword_1EDF2DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DD50);
  }

  return result;
}

unint64_t sub_1D5CD3D44()
{
  result = qword_1EDF2DD58;
  if (!qword_1EDF2DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DD58);
  }

  return result;
}

uint64_t sub_1D5CD3D98@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

unint64_t sub_1D5CD3DF8()
{
  result = qword_1EDF2DD60;
  if (!qword_1EDF2DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DD60);
  }

  return result;
}

unint64_t sub_1D5CD3EA0()
{
  result = qword_1EDF2DD68;
  if (!qword_1EDF2DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DD68);
  }

  return result;
}

unint64_t sub_1D5CD3F54()
{
  result = qword_1EDF2DD70;
  if (!qword_1EDF2DD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DD70);
  }

  return result;
}

uint64_t sub_1D5CD3FA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CD3FD8();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CD3FD8()
{
  v0 = sub_1D72641CC();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D5CD4024()
{
  result = qword_1EDF34040;
  if (!qword_1EDF34040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34040);
  }

  return result;
}

unint64_t sub_1D5CD40CC()
{
  result = qword_1EDF34048;
  if (!qword_1EDF34048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34048);
  }

  return result;
}

unint64_t sub_1D5CD4180()
{
  result = qword_1EDF34050[0];
  if (!qword_1EDF34050[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF34050);
  }

  return result;
}

uint64_t sub_1D5CD41D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CD4204();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CD4204()
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

uint64_t sub_1D5CD4250(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 65))
  {
    return (*a1 + 126);
  }

  v3 = *(a1 + 64);
  if ((v3 & 0x7E) != 0)
  {
    v4 = 126 - (v3 & 0x7E | (v3 >> 7));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t FormatPreviewParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D5CD4674();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CD4708();
  sub_1D5B58B84(&qword_1EDF251A8, sub_1D5CD4708);
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

      v21 = sub_1D6620874();
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
  v32 = 0uLL;
  LOBYTE(v33) = 0;
  sub_1D726427C();
  v18 = v30;
  v30 = xmmword_1D728CF30;
  v31 = 0;
  sub_1D5CD49DC();
  sub_1D726427C();
  v27 = v33;
  v28 = v32;
  v24 = v34;
  v30 = xmmword_1D7297410;
  v31 = 0;
  sub_1D5C8C780();
  sub_1D726427C();
  (*(v14 + 8))(v10, v6);
  v25 = v33;
  v35 = v24;
  *v13 = v18;
  v26 = v28;
  *(v13 + 24) = v27;
  *(v13 + 8) = v26;
  *(v13 + 40) = v24;
  *(v13 + 41) = *v36;
  *(v13 + 44) = *&v36[3];
  *(v13 + 48) = v32;
  *(v13 + 64) = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CD4674()
{
  if (!qword_1EDF19FE0)
  {
    sub_1D5CD4708();
    sub_1D5B58B84(&qword_1EDF251A8, sub_1D5CD4708);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19FE0);
    }
  }
}

void sub_1D5CD4708()
{
  if (!qword_1EDF251A0)
  {
    sub_1D5CD47A4();
    sub_1D5CD47F8();
    sub_1D5CD48FC();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF251A0);
    }
  }
}

unint64_t sub_1D5CD47A4()
{
  result = qword_1EDF270F0;
  if (!qword_1EDF270F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF270F0);
  }

  return result;
}

unint64_t sub_1D5CD47F8()
{
  result = qword_1EDF270F8;
  if (!qword_1EDF270F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF270F8);
  }

  return result;
}

unint64_t sub_1D5CD4850()
{
  result = qword_1EDF270E0;
  if (!qword_1EDF270E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF270E0);
  }

  return result;
}

unint64_t sub_1D5CD48A8()
{
  result = qword_1EDF270E8;
  if (!qword_1EDF270E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF270E8);
  }

  return result;
}

unint64_t sub_1D5CD48FC()
{
  result = qword_1EDF27100;
  if (!qword_1EDF27100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27100);
  }

  return result;
}

uint64_t sub_1D5CD4950()
{
  v1 = 0x756F72676B636162;
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

unint64_t sub_1D5CD49DC()
{
  result = qword_1EDF304F8;
  if (!qword_1EDF304F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF304F8);
  }

  return result;
}

uint64_t sub_1D5CD4A30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t FormatCornerRadius.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - v9;
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
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v10;
    if (v12)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F5114928;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D5CD4E34();
    v28 = 0uLL;
    sub_1D726431C();
    if (v27)
    {
      v28 = xmmword_1D7279980;
      sub_1D5CD89F8();
      sub_1D726427C();
      v22 = v30;
      v23 = ((v27 == 2) | v27);
      (*(v7 + 8))(v13, v6);
      v24 = 0;
      v25 = v23 & 1;
      v26 = 0x80;
    }

    else
    {
      v27 = xmmword_1D7279980;
      sub_1D5CD4F48();
      sub_1D726431C();
      v22 = v30;
      (*(v7 + 8))(v13, v6);
      v24 = *(&v28 + 1);
      v25 = v28;
      v26 = v29;
    }

    *v22 = v25;
    *(v22 + 8) = v24;
    *(v22 + 16) = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CD4E34()
{
  result = qword_1EDF2E1C8;
  if (!qword_1EDF2E1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2E1C8);
  }

  return result;
}

unint64_t sub_1D5CD4EE8()
{
  result = qword_1EDF2E1D0;
  if (!qword_1EDF2E1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2E1D0);
  }

  return result;
}

unint64_t sub_1D5CD4F48()
{
  result = qword_1EDF2E168;
  if (!qword_1EDF2E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2E168);
  }

  return result;
}

uint64_t sub_1D5CD4F9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1D5CD4FE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FormatCornerRadius.Value.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  sub_1D5CD54E4();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CD5460();
  sub_1D5B58B84(&qword_1EDF255C8, sub_1D5CD5460);
  sub_1D7264B0C();
  if (v2)
  {
    v18 = v2;
LABEL_16:
    sub_1D61E4FBC(a1, v18);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1D7264AFC();
  v11 = Dictionary<>.errorOnUnknownKeys.getter(v10);

  v12 = v26;
  if (v11)
  {
    v13 = sub_1D726433C();
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = (v13 + 48);
      while (*v15 != 1)
      {
        v15 += 24;
        if (!--v14)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v15 - 2);
      v20 = *(v15 - 1);

      v22 = sub_1D661A084();
      sub_1D5E2D970();
      v18 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
      goto LABEL_16;
    }

LABEL_7:
  }

  v30 = 0uLL;
  v31 = 0;
  v16 = 0;
  if (sub_1D726434C())
  {
    v28 = 0uLL;
    v29 = 0;
    sub_1D5B57870();
    sub_1D726431C();
    v16 = v27;
  }

  v25 = xmmword_1D728CF30;
  v30 = xmmword_1D728CF30;
  v31 = 0;
  if (sub_1D726434C())
  {
    v28 = v25;
    v29 = 0;
    sub_1D5C34D84(0, &qword_1EDF1B3C0, &type metadata for FormatCorner, MEMORY[0x1E69E62F8]);
    sub_1D5CD7870();
    sub_1D726431C();
    v17 = v27;
  }

  else
  {
    v17 = &unk_1F5114978;
  }

  v25 = xmmword_1D7297410;
  v30 = xmmword_1D7297410;
  v31 = 0;
  if (sub_1D726434C())
  {
    v28 = v25;
    v29 = 0;
    sub_1D726431C();
    (*(v6 + 8))(v9, v5);
    v24 = v27;
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    v24 = 1;
  }

  *v12 = v16;
  *(v12 + 8) = v17;
  *(v12 + 16) = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CD5460()
{
  if (!qword_1EDF255C0)
  {
    sub_1D5CD5590();
    sub_1D5CD55E4();
    sub_1D5CD56E8();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF255C0);
    }
  }
}

void sub_1D5CD54E4()
{
  if (!qword_1EDF1A1F0)
  {
    sub_1D5CD5460();
    sub_1D5B58B84(&qword_1EDF255C8, sub_1D5CD5460);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A1F0);
    }
  }
}

unint64_t sub_1D5CD5590()
{
  result = qword_1EDF2E180;
  if (!qword_1EDF2E180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2E180);
  }

  return result;
}

unint64_t sub_1D5CD55E4()
{
  result = qword_1EDF2E188;
  if (!qword_1EDF2E188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2E188);
  }

  return result;
}

unint64_t sub_1D5CD563C()
{
  result = qword_1EDF2E170;
  if (!qword_1EDF2E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2E170);
  }

  return result;
}

unint64_t sub_1D5CD5694()
{
  result = qword_1EDF2E178;
  if (!qword_1EDF2E178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2E178);
  }

  return result;
}

unint64_t sub_1D5CD56E8()
{
  result = qword_1EDF2E190;
  if (!qword_1EDF2E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2E190);
  }

  return result;
}

uint64_t sub_1D5CD573C()
{
  v1 = 0x737569646172;
  v2 = 0x6F756E69746E6F63;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x7372656E726F63;
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

uint64_t FormatCellSelection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v27 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v28;
    if (v12)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F5114608;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v6 + 8))(v9, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D5CD5B8C();
    v34 = 0;
    v35 = 0;
    sub_1D726431C();
    v22 = v36;
    if (v36)
    {
      if (v36 == 1)
      {
        v30 = xmmword_1D7279980;
        sub_1D667D5B8();
        sub_1D726427C();
        (*(v6 + 8))(v9, v5);
        *&v26 = v29;
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v23 = 0;
        v26 = 0uLL;
        v24 = 0uLL;
        v25 = 0uLL;
      }
    }

    else
    {
      v29 = xmmword_1D7279980;
      sub_1D5CD9A38();
      sub_1D726427C();
      (*(v6 + 8))(v9, v5);
      v26 = v30;
      v24 = v31;
      v25 = v32;
      v23 = v33;
    }

    *v13 = v26;
    *(v13 + 16) = v24;
    *(v13 + 32) = v25;
    *(v13 + 48) = v23;
    *(v13 + 56) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CD5B8C()
{
  result = qword_1EDF2CAD0;
  if (!qword_1EDF2CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CAD0);
  }

  return result;
}

unint64_t sub_1D5CD5C40()
{
  result = qword_1EDF2CAD8;
  if (!qword_1EDF2CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CAD8);
  }

  return result;
}

NewsFeed::FormatCellSelection::CodingType_optional __swiftcall FormatCellSelection.CodingType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D5CD5D14()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D5CD5D84()
{
  result = qword_1EDF3F048[0];
  if (!qword_1EDF3F048[0])
  {
    sub_1D5C30060(255, &qword_1EDF3F040, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatUserInterfaceValue);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF3F048);
  }

  return result;
}

char *sub_1D5CD5E14(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1D5CD602C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

uint64_t FormatUserInterfaceValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v59 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v55 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v54 = &v51 - v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v58 = &v51 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v61 = &v51 - v14;
  v62 = v13;
  v64 = v15;
  v16 = _s10CodingKeysOMa_13();
  WitnessTable = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  *&v65 = v16;
  *(&v65 + 1) = WitnessTable;
  v60 = WitnessTable;
  v57 = v18;
  v66 = v18;
  v67 = v19;
  v20 = type metadata accessor for FormatCodingKeysContainer();
  swift_getWitnessTable();
  v21 = sub_1D726435C();
  v63 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v51 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v25 = v68;
  sub_1D7264B0C();
  v26 = v25;
  if (v25)
  {
    goto LABEL_13;
  }

  v52 = v19;
  v53 = 0;
  v68 = v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = sub_1D7264AFC();
  v28 = Dictionary<>.errorOnUnknownKeys.getter(v27);

  v29 = v64;
  if ((v28 & 1) == 0)
  {
LABEL_10:
    v65 = 0uLL;
    LOBYTE(v66) = 0;
    v42 = v61;
    v43 = v68;
    v44 = v53;
    sub_1D726431C();
    if (!v44)
    {
      v65 = xmmword_1D728CF30;
      LOBYTE(v66) = 0;
      v45 = v58;
      sub_1D726431C();
      (*(v63 + 8))(v43, v21);
      v46 = v29;
      v47 = v42;
      v48 = *(v59 + 32);
      v49 = v54;
      v48(v54, v47, v46);
      v50 = v55;
      v48(v55, v45, v46);
      FormatUserInterfaceValue.init(light:dark:)(v49, v50, v46, v56);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    (*(v63 + 8))(v43, v21);
    v26 = v44;
LABEL_13:
    sub_1D61E4FBC(a1, v26);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  v31 = (sub_1D726433C() + 48);
  v32 = v60;
  while (1)
  {
    if (v30 == sub_1D726279C())
    {

      v29 = v64;
      goto LABEL_10;
    }

    v33 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v33 & 1) == 0)
    {
      break;
    }

    v35 = *v31;
    v65 = *(v31 - 1);
    LOBYTE(v66) = v35;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_16;
    }

    v36 = sub_1D6AFC82C(v20);
    ++v30;
    v31 += 24;
    if (v37)
    {
      v38 = v36;
      v39 = v37;

      v40 = sub_1D6AFC690(v16, v32, v57, v52);
      sub_1D5E2D970();
      v26 = swift_allocError();
      *v41 = v38;
      *(v41 + 8) = v39;
      *(v41 + 16) = v40;
      *(v41 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v63 + 8))(v68, v21);
      goto LABEL_13;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D5CD6780(char a1)
{
  if (!a1)
  {
    return 0x746867696CLL;
  }

  if (a1 == 1)
  {
    return 1802658148;
  }

  return 1885433183;
}

uint64_t FormatUserInterfaceValue.init(light:dark:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(*(a3 - 8) + 32);
  v9(a3 - 8, a4, a1);
  v7 = a4 + *(type metadata accessor for FormatUserInterfaceValue() + 36);

  return v9(v7, a2, a3);
}

void sub_1D5CD6874()
{
  if (!qword_1EDF24C80)
  {
    sub_1D5CD6EB0();
    sub_1D5CD6F04();
    sub_1D5CD7008();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24C80);
    }
  }
}

void sub_1D5CD68F8()
{
  if (!qword_1EDF19D50)
  {
    sub_1D5CD6874();
    sub_1D5B58B84(&qword_1EDF24C88, sub_1D5CD6874);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19D50);
    }
  }
}

uint64_t FormatShadow.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  sub_1D5CD68F8();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CD6874();
  sub_1D5B58B84(&qword_1EDF24C88, sub_1D5CD6874);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_20:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v41;
  v14 = v10;
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

      v24 = *(v17 - 2);
      v23 = *(v17 - 1);

      v25 = sub_1D6622784();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v26 = v24;
      *(v26 + 8) = v23;
      *(v26 + 16) = v25;
      *(v26 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v14, v6);
      goto LABEL_20;
    }

LABEL_7:
  }

  v37 = 0uLL;
  LOBYTE(v38) = 0;
  v18 = 0;
  if (sub_1D726434C())
  {
    v35 = 0uLL;
    v36 = 0;
    sub_1D5B57870();
    sub_1D726431C();
    v18 = v33;
  }

  v32 = xmmword_1D728CF30;
  v37 = xmmword_1D728CF30;
  LOBYTE(v38) = 0;
  v19 = 0;
  if (sub_1D726434C())
  {
    v35 = v32;
    v36 = 0;
    sub_1D726431C();
    v19 = v33;
  }

  v32 = xmmword_1D7297410;
  v37 = xmmword_1D7297410;
  LOBYTE(v38) = 0;
  if (sub_1D726434C())
  {
    v35 = v32;
    v36 = 0;
    sub_1D5CD7100();
    sub_1D726431C();
    v20 = v33;
    v21 = v34;
  }

  else
  {
    if (qword_1EDF33738 != -1)
    {
      swift_once();
    }

    v21 = *(&xmmword_1EDF33740 + 1);
    v20 = xmmword_1EDF33740;
  }

  v32 = xmmword_1D72BAA60;
  v37 = xmmword_1D72BAA60;
  LOBYTE(v38) = 0;
  if (sub_1D726434C())
  {
    v35 = v32;
    v36 = 0;
    sub_1D5B570F8();
    sub_1D726431C();
    v22 = v33;
  }

  else
  {
    v28 = swift_allocObject();
    *(v28 + 16) = 2;
    *(v28 + 24) = 0x3FF0000000000000;
    *(v28 + 32) = 0;
    v22 = v28 | 0x1000000000000000;
  }

  v35 = xmmword_1D72BAA70;
  v36 = 0;
  sub_1D5CD77CC();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v29 = v39;
  v30 = v40;
  *v13 = v18;
  *(v13 + 8) = v19;
  *(v13 + 16) = v20;
  *(v13 + 24) = v21;
  *(v13 + 32) = v22;
  v31 = v38;
  *(v13 + 40) = v37;
  *(v13 + 56) = v31;
  *(v13 + 72) = v29;
  *(v13 + 80) = v30;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CD6EB0()
{
  result = qword_1EDF33788;
  if (!qword_1EDF33788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33788);
  }

  return result;
}

unint64_t sub_1D5CD6F04()
{
  result = qword_1EDF33790;
  if (!qword_1EDF33790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33790);
  }

  return result;
}

unint64_t sub_1D5CD6F5C()
{
  result = qword_1EDF33778;
  if (!qword_1EDF33778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33778);
  }

  return result;
}

unint64_t sub_1D5CD6FB4()
{
  result = qword_1EDF33780;
  if (!qword_1EDF33780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33780);
  }

  return result;
}

unint64_t sub_1D5CD7008()
{
  result = qword_1EDF33798;
  if (!qword_1EDF33798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33798);
  }

  return result;
}

uint64_t sub_1D5CD705C()
{
  v1 = *v0;
  v2 = 0x737569646172;
  v3 = 0x726F6C6F63;
  v4 = 0x6E6F69746F6DLL;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7974696361706FLL;
  if (v1 != 1)
  {
    v5 = 0x74657366666FLL;
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

unint64_t sub_1D5CD7100()
{
  result = qword_1EDF33728;
  if (!qword_1EDF33728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33728);
  }

  return result;
}

uint64_t FormatShadow.Offset.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *&v26 = a2;
  sub_1D5CD7508();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CD759C();
  sub_1D5B58B84(&qword_1EDF24C78, sub_1D5CD759C);
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
  v11 = v26;
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

      v23 = sub_1D6627E68(0x746867696568, 0xE600000000000000, 0x6874646977, 0xE500000000000000);
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

  v30 = 0uLL;
  v31 = 0;
  v18 = 0;
  if (sub_1D726434C())
  {
    v28 = 0uLL;
    v29 = 0;
    sub_1D5B57870();
    sub_1D726431C();
    v18 = v27;
  }

  v26 = xmmword_1D728CF30;
  v30 = xmmword_1D728CF30;
  v31 = 0;
  if (sub_1D726434C())
  {
    v28 = v26;
    v29 = 0;
    sub_1D5B57870();
    sub_1D726431C();
    (*(v10 + 8))(v9, v5);
    v25 = v27;
  }

  else
  {
    (*(v10 + 8))(v9, v5);
    v25 = 0;
  }

  *v11 = v18;
  v11[1] = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CD7508()
{
  if (!qword_1EDF19D48)
  {
    sub_1D5CD759C();
    sub_1D5B58B84(&qword_1EDF24C78, sub_1D5CD759C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19D48);
    }
  }
}

void sub_1D5CD759C()
{
  if (!qword_1EDF24C70)
  {
    sub_1D5CD7620();
    sub_1D5CD7674();
    sub_1D5CD7778();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24C70);
    }
  }
}

unint64_t sub_1D5CD7620()
{
  result = qword_1EDF33760;
  if (!qword_1EDF33760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33760);
  }

  return result;
}

unint64_t sub_1D5CD7674()
{
  result = qword_1EDF33768;
  if (!qword_1EDF33768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33768);
  }

  return result;
}

unint64_t sub_1D5CD76CC()
{
  result = qword_1EDF33750;
  if (!qword_1EDF33750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33750);
  }

  return result;
}

unint64_t sub_1D5CD7724()
{
  result = qword_1EDF33758;
  if (!qword_1EDF33758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33758);
  }

  return result;
}

unint64_t sub_1D5CD7778()
{
  result = qword_1EDF33770;
  if (!qword_1EDF33770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33770);
  }

  return result;
}

unint64_t sub_1D5CD77CC()
{
  result = qword_1EDF33960;
  if (!qword_1EDF33960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33960);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FormatMotion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D5CD7870()
{
  result = qword_1EDF1B3B8;
  if (!qword_1EDF1B3B8)
  {
    sub_1D5C34D84(255, &qword_1EDF1B3C0, &type metadata for FormatCorner, MEMORY[0x1E69E62F8]);
    sub_1D5CD790C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B3B8);
  }

  return result;
}

unint64_t sub_1D5CD790C()
{
  result = qword_1EDF33A28;
  if (!qword_1EDF33A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33A28);
  }

  return result;
}

unint64_t sub_1D5CD79C0()
{
  result = qword_1EDF33A30;
  if (!qword_1EDF33A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33A30);
  }

  return result;
}

NewsFeed::FormatCorner_optional __swiftcall FormatCorner.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatBorder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a2;
  sub_1D5CC11B8(0, &qword_1EDF3BB78);
  v6 = v5;
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v40 = &v33 - v8;
  sub_1D5CD818C();
  v10 = v9;
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CD8108();
  sub_1D5B58B84(&qword_1EDF24CB8, sub_1D5CD8108);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    v25 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v36 = v6;
  v14 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_1D7264AFC();
  v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

  v17 = v39;
  if (v16)
  {
    v18 = sub_1D726433C();
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 48);
      while (*v20 != 1)
      {
        v20 += 24;
        if (!--v19)
        {
          goto LABEL_7;
        }
      }

      v22 = *(v20 - 2);
      v21 = *(v20 - 1);

      v23 = sub_1D6616CB0();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v21;
      *(v24 + 16) = v23;
      *(v24 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v38 + 8))(v13, v10);
      goto LABEL_10;
    }

LABEL_7:
  }

  v35 = sub_1D5CD83CC();
  v43 = xmmword_1D728CF30;
  v44 = 0;
  sub_1D5B570F8();
  sub_1D726431C();
  v27 = v41;
  v43 = xmmword_1D7297410;
  v44 = 0;
  sub_1D5C35218();
  sub_1D726431C();
  v28 = v41;
  v34 = xmmword_1D72BAA60;
  v43 = xmmword_1D72BAA60;
  v44 = 0;
  if (sub_1D726434C())
  {
    v41 = v34;
    v42 = 0;
    sub_1D6182504();
    sub_1D726431C();
    *&v34 = v28;
    v29 = v46;
  }

  else
  {
    *&v34 = v28;
    v29 = 1;
  }

  v45 = v29;
  v33 = xmmword_1D72BAA70;
  v43 = xmmword_1D72BAA70;
  v44 = 0;
  if (sub_1D726434C())
  {
    v41 = v33;
    v42 = 0;
    sub_1D666B130();
    sub_1D726431C();
    v30 = v46;
  }

  else
  {
    v30 = 0;
  }

  v33 = xmmword_1D72BAA80;
  v43 = xmmword_1D72BAA80;
  v44 = 0;
  if (sub_1D726434C())
  {
    v41 = v33;
    v42 = 0;
    sub_1D666B0B8();
    v31 = v36;
    sub_1D726431C();
    v32 = sub_1D725A74C();
    (*(v37 + 8))(v40, v31);
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  (*(v38 + 8))(v13, v10);
  *v17 = v35;
  *(v17 + 8) = v27;
  *(v17 + 16) = v34;
  *(v17 + 24) = v45;
  *(v17 + 25) = v30;
  *(v17 + 32) = v32;
  v25 = v14;
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

void sub_1D5CD8108()
{
  if (!qword_1EDF24CB0)
  {
    sub_1D5CD8220();
    sub_1D5CD8274();
    sub_1D5CD8378();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24CB0);
    }
  }
}

void sub_1D5CD818C()
{
  if (!qword_1EDF19D68)
  {
    sub_1D5CD8108();
    sub_1D5B58B84(&qword_1EDF24CB8, sub_1D5CD8108);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19D68);
    }
  }
}

unint64_t sub_1D5CD8220()
{
  result = qword_1EDF33A88;
  if (!qword_1EDF33A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33A88);
  }

  return result;
}

unint64_t sub_1D5CD8274()
{
  result = qword_1EDF33A90;
  if (!qword_1EDF33A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33A90);
  }

  return result;
}

unint64_t sub_1D5CD82CC()
{
  result = qword_1EDF33A78;
  if (!qword_1EDF33A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33A78);
  }

  return result;
}

unint64_t sub_1D5CD8324()
{
  result = qword_1EDF33A80;
  if (!qword_1EDF33A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33A80);
  }

  return result;
}

unint64_t sub_1D5CD8378()
{
  result = qword_1EDF33A98;
  if (!qword_1EDF33A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33A98);
  }

  return result;
}

uint64_t sub_1D5CD83CC()
{
  sub_1D5CD818C();
  if ((sub_1D726434C() & 1) == 0)
  {
    return sub_1D5CD85B0(&unk_1F5111F38);
  }

  sub_1D5C30060(0, &qword_1EDF1AD40, sub_1D5CD8948, &type metadata for FormatBorderEdge, MEMORY[0x1E69E64E8]);
  sub_1D6703874();
  result = sub_1D726431C();
  if (!v0)
  {
    v2 = sub_1D7015A30(v3);

    return v2;
  }

  return result;
}

uint64_t sub_1D5CD84E4()
{
  v1 = *v0;
  v2 = 0x7365676465;
  v3 = 0x74746150656E696CLL;
  if (v1 != 5)
  {
    v3 = 1885433183;
  }

  v4 = 0x7465736E69;
  if (v1 != 3)
  {
    v4 = 0x706143656E696CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x726F6C6F63;
  if (v1 != 1)
  {
    v5 = 0x6874646977;
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

uint64_t sub_1D5CD85B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5CD88E8(0, &qword_1EDF1A5C0, sub_1D5CD8948);
    v3 = sub_1D7263CDC();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    while (1)
    {
      v6 = *(v25 + v4);
      v26 = v4 + 1;
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          if (v13 <= 1)
          {
            if (*(*(v3 + 48) + v9))
            {
              v14 = 0x676E696461656CLL;
            }

            else
            {
              v14 = 7368564;
            }

            if (*(*(v3 + 48) + v9))
            {
              v15 = 0xE700000000000000;
            }

            else
            {
              v15 = 0xE300000000000000;
            }

            if (v6 > 1)
            {
LABEL_23:
              v16 = 0x6D6F74746F62;
              if (v6 == 3)
              {
                v17 = 0xE600000000000000;
              }

              else
              {
                v16 = 7105633;
                v17 = 0xE300000000000000;
              }

              if (v6 == 2)
              {
                v18 = 0x676E696C69617274;
              }

              else
              {
                v18 = v16;
              }

              if (v6 == 2)
              {
                v19 = 0xE800000000000000;
              }

              else
              {
                v19 = v17;
              }

              if (v14 != v18)
              {
                goto LABEL_40;
              }

              goto LABEL_39;
            }
          }

          else if (v13 == 2)
          {
            v15 = 0xE800000000000000;
            v14 = 0x676E696C69617274;
            if (v6 > 1)
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v13 == 3)
            {
              v14 = 0x6D6F74746F62;
            }

            else
            {
              v14 = 7105633;
            }

            if (v13 == 3)
            {
              v15 = 0xE600000000000000;
            }

            else
            {
              v15 = 0xE300000000000000;
            }

            if (v6 > 1)
            {
              goto LABEL_23;
            }
          }

          if (v6)
          {
            v19 = 0xE700000000000000;
            if (v14 != 0x676E696461656CLL)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v19 = 0xE300000000000000;
            if (v14 != 7368564)
            {
              goto LABEL_40;
            }
          }

LABEL_39:
          if (v15 == v19)
          {

            goto LABEL_4;
          }

LABEL_40:
          v20 = sub_1D72646CC();

          if (v20)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      *(v3 + 16) = v23;
LABEL_4:
      v4 = v26;
      if (v26 == v24)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1D5CD88E8(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D7263CEC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D5CD8948()
{
  result = qword_1EDF308E0;
  if (!qword_1EDF308E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF308E0);
  }

  return result;
}

unint64_t sub_1D5CD89A4()
{
  result = qword_1EDF308D8;
  if (!qword_1EDF308D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF308D8);
  }

  return result;
}

unint64_t sub_1D5CD89F8()
{
  result = qword_1EDF2E198;
  if (!qword_1EDF2E198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2E198);
  }

  return result;
}

uint64_t FormatImageRenderingMode.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();
  }

  else
  {
    v11 = a2;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v30;
    v15 = v9;
    if (v13)
    {
      v16 = sub_1D726433C();
      v17 = (v16 + 40);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        v20 = *v17;
        v17 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F5115968;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v14 + 8))(v15, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D5CD8E94();
    v28 = 0;
    v29 = 0;
    sub_1D726431C();
    if (v27 > 1u)
    {
      if (v27 == 2)
      {
        (*(v14 + 8))(v15, v6);
        v24 = 2;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EDF25C00, sub_1D5CD9018, &type metadata for FormatImageRenderingMode, type metadata accessor for FormatUserInterfaceValue);
        v27 = xmmword_1D7279980;
        sub_1D5CD914C();
        sub_1D726431C();
        (*(v14 + 8))(v15, v6);
        v25 = v28;
        v26 = v29;
        v24 = swift_allocObject();
        *(v24 + 16) = v25;
        *(v24 + 24) = v26;
      }
    }

    else if (v27)
    {
      (*(v14 + 8))(v15, v6);
      v24 = 1;
    }

    else
    {
      (*(v14 + 8))(v15, v6);
      v24 = 0;
    }

    *v11 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5CD8E2C()
{
  if (*(v0 + 16) >= 3uLL)
  {
  }

  if (*(v0 + 24) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1D5CD8E94()
{
  result = qword_1EDF25ED8;
  if (!qword_1EDF25ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25ED8);
  }

  return result;
}

unint64_t sub_1D5CD8F48()
{
  result = qword_1EDF25EE0;
  if (!qword_1EDF25EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25EE0);
  }

  return result;
}

uint64_t sub_1D5CD8F9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CD8FCC();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CD8FCC()
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

unint64_t sub_1D5CD9018()
{
  result = qword_1EDF25EB8;
  if (!qword_1EDF25EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25EB8);
  }

  return result;
}

unint64_t sub_1D5CD906C(void *a1)
{
  a1[1] = sub_1D5C86C08();
  a1[2] = sub_1D5CD90A4();
  result = sub_1D5CD90F8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5CD90A4()
{
  result = qword_1EDF25ED0;
  if (!qword_1EDF25ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25ED0);
  }

  return result;
}

unint64_t sub_1D5CD90F8()
{
  result = qword_1EDF25EC8;
  if (!qword_1EDF25EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25EC8);
  }

  return result;
}

unint64_t sub_1D5CD914C()
{
  result = qword_1EDF25C08;
  if (!qword_1EDF25C08)
  {
    sub_1D5C30060(255, &qword_1EDF25C00, sub_1D5CD9018, &type metadata for FormatImageRenderingMode, type metadata accessor for FormatUserInterfaceValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25C08);
  }

  return result;
}

void sub_1D5CD91DC()
{
  if (!qword_1EDF256C0)
  {
    sub_1D5CD988C();
    sub_1D5CD98E0();
    sub_1D5CD99E4();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF256C0);
    }
  }
}

uint64_t FormatEdgeInsets.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D5CD97E0();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CD91DC();
  sub_1D5B58B84(&qword_1EDF256C8, sub_1D5CD91DC);
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

      v22 = sub_1D5CD9618();
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

  sub_1D5B57870();
  v28 = 0uLL;
  v29 = 0;
  sub_1D726431C();
  v17 = v30;
  v28 = xmmword_1D728CF30;
  v29 = 0;
  sub_1D726431C();
  v18 = v30;
  v28 = xmmword_1D7297410;
  v29 = 0;
  sub_1D726431C();
  v19 = v30;
  v28 = xmmword_1D72BAA60;
  v29 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v25 = v30;
  *v13 = v17;
  v13[1] = v18;
  v13[2] = v19;
  v13[3] = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5CD9618()
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 5, 0);
  v0 = v19;
  v2 = *(v19 + 16);
  v1 = *(v19 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v19;
    v1 = *(v19 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 7368564;
  *(v5 + 40) = 0xE300000000000000;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v19;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 1952867692;
  *(v7 + 40) = 0xE400000000000000;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v19;
  *(v19 + 16) = v10;
  v12 = v19 + 16 * v9;
  *(v12 + 32) = 0x6D6F74746F62;
  *(v12 + 40) = 0xE600000000000000;
  v13 = *(v19 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v19;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 0x7468676972;
  *(v15 + 40) = 0xE500000000000000;
  v17 = *(result + 16);
  v16 = *(result + 24);
  if (v17 >= v16 >> 1)
  {
    sub_1D5BFC364((v16 > 1), v17 + 1, 1);
    result = v19;
  }

  *(result + 16) = v17 + 1;
  v18 = result + 16 * v17;
  *(v18 + 32) = 1885433183;
  *(v18 + 40) = 0xE400000000000000;
  return result;
}

void sub_1D5CD97E0()
{
  if (!qword_1EDF1A270)
  {
    sub_1D5CD91DC();
    sub_1D5B58B84(&qword_1EDF256C8, sub_1D5CD91DC);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A270);
    }
  }
}

unint64_t sub_1D5CD988C()
{
  result = qword_1EDF30510;
  if (!qword_1EDF30510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30510);
  }

  return result;
}

unint64_t sub_1D5CD98E0()
{
  result = qword_1EDF30518;
  if (!qword_1EDF30518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30518);
  }

  return result;
}

unint64_t sub_1D5CD9938()
{
  result = qword_1EDF30500;
  if (!qword_1EDF30500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30500);
  }

  return result;
}

unint64_t sub_1D5CD9990()
{
  result = qword_1EDF30508;
  if (!qword_1EDF30508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30508);
  }

  return result;
}

unint64_t sub_1D5CD99E4()
{
  result = qword_1EDF30520;
  if (!qword_1EDF30520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30520);
  }

  return result;
}

unint64_t sub_1D5CD9A38()
{
  result = qword_1EDF2CAE0;
  if (!qword_1EDF2CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CAE0);
  }

  return result;
}

uint64_t sub_1D5CD9A8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = ((16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3) | (((16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3)) << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1D5CD9AEC()
{
  result = qword_1EDF2E540;
  if (!qword_1EDF2E540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2E540);
  }

  return result;
}

uint64_t sub_1D5CD9B40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

uint64_t sub_1D5CD9B88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 25))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 24);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t FormatColorBinding.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v10;
    v11 = a1;
    if (v13)
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
          *(v21 + 16) = &unk_1F51146A8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v14, v6);
          goto LABEL_10;
        }
      }
    }

    sub_1D5CDA0BC();
    v29 = 0uLL;
    sub_1D726431C();
    v23 = v28;
    if (v28 <= 3u)
    {
      if (v28 <= 1u)
      {
        v29 = xmmword_1D7279980;
        if (v28)
        {
          sub_1D5FCE1E0();
        }

        else
        {
          sub_1D5CDAA88();
        }

        goto LABEL_28;
      }

      if (v28 == 2)
      {
        v29 = xmmword_1D7279980;
        sub_1D63281C4();
LABEL_28:
        sub_1D726431C();
        (*(v7 + 8))(v14, v6);
        v26 = 0;
        v24 = 0;
        v25 = v28;
        goto LABEL_29;
      }

      v28 = xmmword_1D7279980;
      sub_1D5C6A164();
      sub_1D726431C();
      (*(v7 + 8))(v14, v6);
      v26 = *(&v29 + 1);
      v25 = v29;
      v24 = v30;
LABEL_29:
      v27 = v31;
      *v31 = v25;
      v27[1] = v26;
      v27[2] = v24;
      *(v27 + 24) = v23;
      return __swift_destroy_boxed_opaque_existential_1(v11);
    }

    if (v28 > 5u)
    {
      if (v28 != 6)
      {
        v29 = xmmword_1D7279980;
        sub_1D5E473E4();
        goto LABEL_28;
      }

      v29 = xmmword_1D7279980;
      sub_1D667EB18();
    }

    else
    {
      if (v28 == 4)
      {
        v29 = xmmword_1D7279980;
        sub_1D667EBC0();
        sub_1D726431C();
        (*(v7 + 8))(v14, v6);
        v24 = 0;
        v25 = v28;
        v26 = WORD4(v28);
        goto LABEL_29;
      }

      v29 = xmmword_1D7279980;
      sub_1D667EB6C();
    }

    sub_1D726431C();
    (*(v7 + 8))(v14, v6);
    v24 = 0;
    v25 = v28;
    v26 = BYTE8(v28);
    goto LABEL_29;
  }

  v11 = a1;
LABEL_10:
  sub_1D61E4FBC(v11, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

unint64_t sub_1D5CDA0BC()
{
  result = qword_1EDF2E548;
  if (!qword_1EDF2E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2E548);
  }

  return result;
}

unint64_t sub_1D5CDA170()
{
  result = qword_1EDF2E550;
  if (!qword_1EDF2E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2E550);
  }

  return result;
}

uint64_t sub_1D5CDA1C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CDA1F4();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CDA1F4()
{
  v0 = sub_1D72641CC();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D5CDA2A0()
{
  result = qword_1EDF319A0;
  if (!qword_1EDF319A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF319A0);
  }

  return result;
}

NewsFeed::FormatFontTrait_optional __swiftcall FormatFontTrait.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72648CC();

  v5 = 0;
  v6 = 2;
  switch(v3)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v5 = 1;
LABEL_3:
      v6 = v5;
      break;
    case 2:
      break;
    case 3:
      v6 = 3;
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    default:
      v6 = 20;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D5CDA474()
{
  sub_1D7264A0C();
  FormatFontTrait.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t FormatFontTrait.rawValue.getter()
{
  result = 0x63696C617469;
  switch(*v0)
  {
    case 1:
      return 1684828002;
    case 2:
      return 0x6465646E61707865;
    case 3:
      return 0x65736E65646E6F63;
    case 4:
      return 0x636170536F6E6F6DLL;
    case 5:
      return 0x6C61636974726576;
    case 6:
      return 0x696D6974704F6975;
    case 7:
      v3 = 0x4C7468676974;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6165000000000000;
    case 8:
      v3 = 0x4C65736F6F6CLL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6165000000000000;
    case 9:
      return 1802723693;
    case 0xA:
      return 0x656C797453646C6FLL;
    case 0xB:
      return 0xD000000000000012;
    case 0xC:
      return 0x65536E7265646F6DLL;
    case 0xD:
      return 0x6F646E6572616C63;
    case 0xE:
      v2 = 1650551923;
      goto LABEL_5;
    case 0xF:
      return 0x6D726F6665657266;
    case 0x10:
      v2 = 1936613747;
LABEL_5:
      result = v2 | 0x6972655300000000;
      break;
    case 0x11:
      result = 0x746E656D616E726FLL;
      break;
    case 0x12:
      result = 0x73747069726373;
      break;
    case 0x13:
      result = 0x63696C6F626D7973;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D5CDA754()
{
  result = qword_1EDF113C8;
  if (!qword_1EDF113C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF113C8);
  }

  return result;
}

unint64_t sub_1D5CDA7A8(void *a1)
{
  a1[1] = sub_1D5CDA7E0();
  a1[2] = sub_1D5CDA834();
  result = sub_1D5CDA888();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5CDA7E0()
{
  result = qword_1EDF304D0;
  if (!qword_1EDF304D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF304D0);
  }

  return result;
}

unint64_t sub_1D5CDA834()
{
  result = qword_1EDF113D8;
  if (!qword_1EDF113D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF113D8);
  }

  return result;
}

unint64_t sub_1D5CDA888()
{
  result = qword_1EDF113D0;
  if (!qword_1EDF113D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF113D0);
  }

  return result;
}

unint64_t sub_1D5CDA8DC()
{
  result = qword_1EDF115F8;
  if (!qword_1EDF115F8)
  {
    sub_1D5C30060(255, &qword_1EDF115F0, sub_1D5CDA754, &type metadata for FormatFixedColor, type metadata accessor for FormatAlphaColor);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF115F8);
  }

  return result;
}

unint64_t sub_1D5CDA9CC()
{
  result = qword_1EDF304D8;
  if (!qword_1EDF304D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF304D8);
  }

  return result;
}

NewsFeed::FormatFixedColor_optional __swiftcall FormatFixedColor.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D5CDAA88()
{
  result = qword_1EDF29770;
  if (!qword_1EDF29770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29770);
  }

  return result;
}

unint64_t sub_1D5CDAB30()
{
  result = qword_1EDF29778;
  if (!qword_1EDF29778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29778);
  }

  return result;
}

unint64_t sub_1D5CDABE4()
{
  result = qword_1EDF29780;
  if (!qword_1EDF29780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29780);
  }

  return result;
}

uint64_t sub_1D5CDAC38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CDAC6C();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CDAC6C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D5CDACDC(void *a1)
{
  sub_1D5C2E60C(0, &qword_1EDF3BBF0, sub_1D5CDB9F8, sub_1D5CDBA4C);
  v3 = v2;
  v62 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v47 - v5;
  sub_1D5CDBAA0();
  v8 = *(v7 - 8);
  v63 = v7;
  v64 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CDBB34();
  sub_1D5B58B84(&qword_1EDF24F58, sub_1D5CDBB34);
  v13 = v83;
  sub_1D7264B0C();
  v14 = v13;
  if (v13)
  {
LABEL_14:
    sub_1D61E4FBC(a1, v14);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v12;
  }

  v61 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_1D7264AFC();
  v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

  v17 = v63;
  if (v16)
  {
    v18 = sub_1D726433C();
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 48);
      while (*v20 != 1)
      {
        v20 += 24;
        if (!--v19)
        {
          goto LABEL_7;
        }
      }

      v22 = v11;
      v23 = *(v20 - 2);
      v12 = *(v20 - 1);

      v24 = sub_1D661E834();
      sub_1D5E2D970();
      v25 = swift_allocError();
      *v26 = v23;
      *(v26 + 8) = v12;
      *(v26 + 16) = v24;
      v14 = v25;
      *(v26 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v64 + 8))(v22, v17);
      goto LABEL_14;
    }

LABEL_7:
  }

  v83 = a1;
  v59 = sub_1D5C31D18(v11, 0, 0, 0, sub_1D5CDBAA0);
  v60 = v21;
  v77 = xmmword_1D728CF30;
  LOBYTE(v78) = 0;
  v56 = sub_1D72642BC();
  v58 = v27;
  v57 = xmmword_1D7297410;
  v77 = xmmword_1D7297410;
  LOBYTE(v78) = 0;
  v28 = sub_1D726434C();
  if (v28)
  {
    v69 = v57;
    LOBYTE(v70) = 0;
    sub_1D5CDBEF4();
    v29 = v61;
    sub_1D726431C();
    v30 = sub_1D725A74C();
    (*(v62 + 8))(v29, v3);
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v77 = xmmword_1D72BAA60;
  LOBYTE(v78) = 0;
  sub_1D5C35368();
  sub_1D726427C();
  v62 = v30;
  v32 = v69;
  v77 = xmmword_1D72BAA70;
  LOBYTE(v78) = 0;
  sub_1D5C4A954();
  sub_1D726427C();
  v61 = v32;
  v33 = v69;
  sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
  v77 = xmmword_1D72BAA80;
  LOBYTE(v78) = 0;
  sub_1D5C34DD4();
  sub_1D726427C();
  *&v57 = v33;
  v34 = v69;
  v69 = xmmword_1D72BAA90;
  LOBYTE(v70) = 0;
  sub_1D5C8C780();
  sub_1D726427C();
  v54 = *(&v77 + 1);
  v35 = v77;
  v55 = v34;
  LODWORD(v34) = v78;
  v75 = xmmword_1D72BAAA0;
  v76 = 0;
  sub_1D5C34EC4();
  sub_1D726427C();
  v36 = v61;
  v52 = v35;
  v53 = v34;
  v71 = v79;
  v72 = v80;
  v73 = v81;
  v74 = v82;
  v69 = v77;
  v70 = v78;
  v65 = xmmword_1D72BAAB0;
  v66 = 0;
  sub_1D5CDCE98();
  sub_1D726427C();
  v50 = v67;
  v51 = v68;
  v65 = xmmword_1D72BAAC0;
  v66 = 0;
  sub_1D726427C();
  v48 = v67;
  v49 = v68;
  v67 = xmmword_1D72BAAD0;
  v68 = 0;
  v37 = sub_1D726423C();
  sub_1D5C34D84(0, &unk_1EDF1B040, &type metadata for FormatLayeredMediaFilter, MEMORY[0x1E69E62F8]);
  v67 = xmmword_1D72BAAE0;
  v68 = 0;
  sub_1D5CDCEEC();
  sub_1D726427C();
  (*(v64 + 8))(v11, v17);
  v38 = v65;
  type metadata accessor for FormatLayeredMediaNodeStyle();
  v12 = swift_allocObject();
  swift_beginAccess();
  v39 = v72;
  *(v12 + 136) = v71;
  *(v12 + 152) = v39;
  *(v12 + 168) = v73;
  v40 = v70;
  *(v12 + 104) = v69;
  v41 = v60;
  *(v12 + 16) = v59;
  *(v12 + 24) = v41;
  v42 = v58;
  *(v12 + 32) = v56;
  *(v12 + 40) = v42;
  v43 = v52;
  *(v12 + 72) = v55;
  *(v12 + 80) = v43;
  *(v12 + 88) = v54;
  *(v12 + 96) = v53;
  *(v12 + 184) = v74;
  *(v12 + 120) = v40;
  v44 = v57;
  *(v12 + 56) = v36;
  *(v12 + 64) = v44;
  swift_beginAccess();
  *(v12 + 48) = v62;
  v45 = *(&v50 + 1);
  *(v12 + 192) = v50;
  *(v12 + 200) = v45;
  *(v12 + 208) = v51;
  v46 = *(&v48 + 1);
  *(v12 + 216) = v48;
  *(v12 + 224) = v46;
  *(v12 + 232) = v49;
  *(v12 + 233) = v37;
  *(v12 + 240) = v38;
  __swift_destroy_boxed_opaque_existential_1(v83);
  return v12;
}

uint64_t sub_1D5CDB9CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5CDACDC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D5CDB9F8()
{
  result = qword_1EDF224B8;
  if (!qword_1EDF224B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF224B8);
  }

  return result;
}

unint64_t sub_1D5CDBA4C()
{
  result = qword_1EDF224C0;
  if (!qword_1EDF224C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF224C0);
  }

  return result;
}

void sub_1D5CDBAA0()
{
  if (!qword_1EDF19EB8)
  {
    sub_1D5CDBB34();
    sub_1D5B58B84(&qword_1EDF24F58, sub_1D5CDBB34);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19EB8);
    }
  }
}

void sub_1D5CDBB34()
{
  if (!qword_1EDF24F50)
  {
    sub_1D5CDBBB8();
    sub_1D5CDBC0C();
    sub_1D5CDBD10();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24F50);
    }
  }
}

unint64_t sub_1D5CDBBB8()
{
  result = qword_1EDF22500;
  if (!qword_1EDF22500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22500);
  }

  return result;
}

unint64_t sub_1D5CDBC0C()
{
  result = qword_1EDF22508;
  if (!qword_1EDF22508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22508);
  }

  return result;
}

unint64_t sub_1D5CDBC64()
{
  result = qword_1EDF224F0;
  if (!qword_1EDF224F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF224F0);
  }

  return result;
}

unint64_t sub_1D5CDBCBC()
{
  result = qword_1EDF224F8;
  if (!qword_1EDF224F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF224F8);
  }

  return result;
}

unint64_t sub_1D5CDBD10()
{
  result = qword_1EDF22510;
  if (!qword_1EDF22510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22510);
  }

  return result;
}

uint64_t sub_1D5CDBD6C(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x7373616C63;
      break;
    case 2:
      result = 0x726F7463656C6573;
      break;
    case 3:
      result = 0x6168706C61;
      break;
    case 4:
      result = 0x756F72676B636162;
      break;
    case 5:
      v3 = 1685221218;
      goto LABEL_11;
    case 6:
      result = 0x615272656E726F63;
      break;
    case 7:
      result = 0x776F64616873;
      break;
    case 8:
      result = 0x6F65646976;
      break;
    case 9:
      result = 0x6E6F69746F6DLL;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      v3 = 1953261926;
LABEL_11:
      result = v3 | 0x73726500000000;
      break;
    case 12:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D5CDBEF4()
{
  result = qword_1EDF3BBF8;
  if (!qword_1EDF3BBF8)
  {
    sub_1D5C2E60C(255, &qword_1EDF3BBF0, sub_1D5CDB9F8, sub_1D5CDBA4C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BBF8);
  }

  return result;
}

uint64_t sub_1D5CDBF84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_1D5CDBFCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FormatLayeredMediaNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = v2;
  v48 = a2;
  sub_1D5CDCAE4();
  v6 = v5;
  v49 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CDCA60();
  sub_1D5B58B84(&qword_1EDF24F48, sub_1D5CDCA60);
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = a1[3];
    v47 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v10);
    v11 = sub_1D7264AFC();
    LOBYTE(v10) = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v12 = v49;
    v13 = v9;
    if (v10)
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

        v20 = sub_1D661EB1C();
        sub_1D5E2D970();
        v3 = swift_allocError();
        *v21 = v19;
        *(v21 + 8) = v18;
        *(v21 + 16) = v20;
        *(v21 + 24) = xmmword_1D72874E0;
        swift_willThrow();
        (*(v12 + 8))(v9, v6);
        a1 = v47;
        goto LABEL_10;
      }

LABEL_7:
    }

    sub_1D5C36978();
    v66 = 0uLL;
    LOBYTE(v67) = 0;
    sub_1D726431C();
    v17 = v58;
    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    v66 = xmmword_1D728CF30;
    LOBYTE(v67) = 0;
    sub_1D5C35368();
    sub_1D726427C();
    v22 = v58;
    v66 = xmmword_1D7297410;
    LOBYTE(v67) = 0;
    sub_1D5C4A954();
    sub_1D726427C();
    v46 = v22;
    v23 = v58;
    sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
    v66 = xmmword_1D72BAA60;
    LOBYTE(v67) = 0;
    sub_1D5C34DD4();
    sub_1D726427C();
    v45 = v23;
    v24 = v58;
    v58 = xmmword_1D72BAA70;
    LOBYTE(v59) = 0;
    sub_1D5C8C780();
    sub_1D726427C();
    v44 = v24;
    v42 = v66;
    v43 = v67;
    v64 = xmmword_1D72BAA80;
    v65 = 0;
    sub_1D5C34EC4();
    sub_1D726427C();
    v60 = v68;
    v61 = v69;
    v62 = v70;
    v63 = v71;
    v58 = v66;
    v59 = v67;
    v54 = xmmword_1D72BAA90;
    v55 = 0;
    sub_1D5CDCE98();
    sub_1D726427C();
    v40 = v56;
    v41 = v57;
    v54 = xmmword_1D72BAAA0;
    v55 = 0;
    sub_1D726427C();
    v38 = v56;
    v39 = v57;
    v56 = xmmword_1D72BAAB0;
    v57 = 0;
    v37 = sub_1D726423C();
    sub_1D5C34D84(0, &unk_1EDF1B040, &type metadata for FormatLayeredMediaFilter, MEMORY[0x1E69E62F8]);
    v56 = xmmword_1D72BAAC0;
    v57 = 0;
    sub_1D5CDCEEC();
    sub_1D726427C();
    (*(v12 + 8))(v13, v6);
    v25 = v54;
    *&v50[55] = v61;
    *&v50[39] = v60;
    *&v50[71] = v62;
    v50[87] = v63;
    *&v50[7] = v58;
    *&v50[23] = v59;
    v26 = v48;
    *v48 = v17;
    v27 = v45;
    *(v26 + 2) = v46;
    *(v26 + 3) = v27;
    v28 = v42;
    *(v26 + 4) = v44;
    *(v26 + 40) = __PAIR128__(*(&v42 + 1), v28);
    *(v26 + 56) = v43;
    v29 = *v50;
    *(v26 + 73) = *&v50[16];
    *(v26 + 57) = v29;
    v30 = *&v50[32];
    v31 = *&v50[48];
    v32 = *&v50[64];
    *(v26 + 137) = *&v50[80];
    *(v26 + 121) = v32;
    *(v26 + 105) = v31;
    *(v26 + 89) = v30;
    LODWORD(v28) = *v72;
    *(v26 + 37) = *&v72[3];
    *(v26 + 145) = v28;
    v33 = *(&v40 + 1);
    *(v26 + 19) = v40;
    *(v26 + 20) = v33;
    *(v26 + 168) = v41;
    LODWORD(v33) = *v53;
    *(v26 + 43) = *&v53[3];
    *(v26 + 169) = v33;
    v34 = *(&v38 + 1);
    *(v26 + 22) = v38;
    *(v26 + 23) = v34;
    *(v26 + 192) = v39;
    *(v26 + 193) = v37;
    LODWORD(v34) = v51;
    *(v26 + 99) = v52;
    *(v26 + 194) = v34;
    *(v26 + 25) = v25;
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

LABEL_10:
  sub_1D61E4FBC(a1, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CDCA60()
{
  if (!qword_1EDF24F40)
  {
    sub_1D5CDCB90();
    sub_1D5CDCBE4();
    sub_1D5CDCCE8();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24F40);
    }
  }
}

void sub_1D5CDCAE4()
{
  if (!qword_1EDF19EB0)
  {
    sub_1D5CDCA60();
    sub_1D5B58B84(&qword_1EDF24F48, sub_1D5CDCA60);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19EB0);
    }
  }
}

unint64_t sub_1D5CDCB90()
{
  result = qword_1EDF224D8;
  if (!qword_1EDF224D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF224D8);
  }

  return result;
}

unint64_t sub_1D5CDCBE4()
{
  result = qword_1EDF224E0;
  if (!qword_1EDF224E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF224E0);
  }

  return result;
}

unint64_t sub_1D5CDCC3C()
{
  result = qword_1EDF224C8;
  if (!qword_1EDF224C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF224C8);
  }

  return result;
}

unint64_t sub_1D5CDCC94()
{
  result = qword_1EDF224D0;
  if (!qword_1EDF224D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF224D0);
  }

  return result;
}

unint64_t sub_1D5CDCCE8()
{
  result = qword_1EDF224E8;
  if (!qword_1EDF224E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF224E8);
  }

  return result;
}

unint64_t sub_1D5CDCD44(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x726F7463656C6573;
    v7 = 0x756F72676B636162;
    v8 = 0x73726564726F62;
    if (a1 != 3)
    {
      v8 = 0x615272656E726F63;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6168706C61;
    }

    if (a1 <= 1u)
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
    v1 = 0xD000000000000018;
    v2 = 0x737265746C6966;
    if (a1 != 9)
    {
      v2 = 1885433183;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x776F64616873;
    v4 = 0x6F65646976;
    if (a1 != 6)
    {
      v4 = 0x6E6F69746F6DLL;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_1D5CDCE98()
{
  result = qword_1EDF33220;
  if (!qword_1EDF33220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33220);
  }

  return result;
}

unint64_t sub_1D5CDCEEC()
{
  result = qword_1EDF1B038;
  if (!qword_1EDF1B038)
  {
    sub_1D5C34D84(255, &unk_1EDF1B040, &type metadata for FormatLayeredMediaFilter, MEMORY[0x1E69E62F8]);
    sub_1D5CDCF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B038);
  }

  return result;
}

unint64_t sub_1D5CDCF88()
{
  result = qword_1EDF25E70;
  if (!qword_1EDF25E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25E70);
  }

  return result;
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

unint64_t FormatBoolean.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v7 = sub_1D726470C() & 1;
    __swift_destroy_boxed_opaque_existential_1(v39);
    v8 = 0;
    v9 = 0;
LABEL_8:
    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v5 = sub_1D72646FC();
  v10 = v6;
  if (v5 == 1702195828 && v6 == 0xE400000000000000 || (v11 = v5, (sub_1D72646CC() & 1) != 0))
  {

    v8 = 0;
    v9 = 0;
    v7 = 1;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v39);
    goto LABEL_8;
  }

  if (v11 == 0x65736C6166 && v10 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_7;
  }

  v13 = sub_1D5C73AB0(v11, v10);
  if (!v14)
  {
    goto LABEL_20;
  }

  if (v13 == 36 && v14 == 0xE100000000000000)
  {
  }

  else
  {
    v15 = sub_1D72646CC();

    if ((v15 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v16 = sub_1D5FD24A4(1uLL, v11, v10);
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = MEMORY[0x1DA6F97E0](v16, v18, v20, v22);
  v25 = v24;

  MEMORY[0x1DA6F9910](v23, v25);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  v11 = 0x286E6F6974706FLL;
  v10 = 0xE700000000000000;
LABEL_20:
  sub_1D5C9299C(40, 0xE100000000000000, v11, v10);
  if (v26)
  {
    goto LABEL_30;
  }

  v27 = sub_1D5C73AF8(v11, v10);
  if (!v28)
  {
    goto LABEL_30;
  }

  if (v27 == 41 && v28 == 0xE100000000000000)
  {

    goto LABEL_26;
  }

  v29 = sub_1D72646CC();

  if ((v29 & 1) == 0)
  {
LABEL_30:
    type metadata accessor for FormatLayoutError();
    sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v35 = v11;
    v35[1] = v10;
    goto LABEL_31;
  }

LABEL_26:
  v30 = sub_1D726236C();
  v37 = MEMORY[0x1DA6F97E0](v30);
  v41 = v31;

  v32 = sub_1D726222C();
  result = sub_1D726223C();
  if (result >> 14 >= v32 >> 14)
  {
    v33 = sub_1D726236C();
    v7 = MEMORY[0x1DA6F97E0](v33);
    v8 = v34;

    if (v37 == 0x6E6F6974706FLL && v41 == 0xE600000000000000)
    {

LABEL_33:

      v9 = 1;
      goto LABEL_7;
    }

    v38 = sub_1D72646CC();

    if (v38)
    {
      goto LABEL_33;
    }

    type metadata accessor for FormatLayoutError();
    sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v36 = v11;
    v36[1] = v10;
LABEL_31:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(v39);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5CDD5E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D5B57CA0(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5CDD698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D5B57CA0(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

void sub_1D5CDD744(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t FormatSlotDefinitionItemSet.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  sub_1D5B57CA0(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CDD744(0, &qword_1EDF19BE0, sub_1D5CDDEAC, &type metadata for FormatSlotDefinitionItemSet.CodingKeys, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v37 - v10;
  v12 = type metadata accessor for FormatSlotDefinitionItemSet();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 3) = 0;
  *(v15 + 4) = 0;
  v16 = v15;
  v17 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D5CDDEAC();
  v18 = v43;
  sub_1D7264B0C();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(v44);
    return sub_1D5CDE22C(*(v16 + 24));
  }

  v20 = v41;
  v19 = v42;
  v43 = v12;
  LOBYTE(v45) = 0;
  v21 = sub_1D726428C();
  if ((v21 & 0x100000000) != 0)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  *v16 = v22;
  LOBYTE(v45) = 1;
  v23 = sub_1D726428C();
  v40 = v22;
  if ((v23 & 0x100000000) != 0)
  {
    v24 = 0x7FFFFFFFLL;
  }

  else
  {
    v24 = v23;
  }

  *(v16 + 4) = v24;
  sub_1D5CDD744(0, &qword_1EDF1AD58, sub_1D5B4B090, &type metadata for FormatItemKind, MEMORY[0x1E69E64E8]);
  v47 = 2;
  sub_1D5CDE064();
  sub_1D726431C();
  v39 = v24;
  v26 = v45;
  *(v16 + 8) = v45;
  sub_1D5B4BF00(0, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition, MEMORY[0x1E69E62F8]);
  v47 = 3;
  sub_1D5CDE114(&qword_1EDF1B020, &qword_1EDF449F0);
  sub_1D726427C();
  v27 = MEMORY[0x1E69E7CC0];
  if (v45)
  {
    v27 = v45;
  }

  *(v16 + 16) = v27;
  v47 = 4;
  sub_1D5CDE1D8();
  v38 = 0;
  sub_1D726427C();
  v29 = v45;
  v37 = v46;
  sub_1D5CDE22C(*(v16 + 24));
  v30 = v37;
  *(v16 + 24) = v29;
  *(v16 + 32) = v30;
  sub_1D725B76C();
  LOBYTE(v45) = 5;
  sub_1D5B4C464(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58]);
  sub_1D726427C();
  sub_1D5C4E9C4(v6, v16 + *(v43 + 36), sub_1D5B57CA0);
  v33 = v40;
  if ((v40 & 0x80000000) != 0)
  {
    sub_1D5E2D970();
    swift_allocError();
    *v35 = v33;
    v35[1] = 0;
    v35[2] = 0;
    v35[3] = 0;
    v36 = 0x1000000000000004;
    goto LABEL_26;
  }

  if (v39 < v40)
  {
    v34 = v40 | (v39 << 32);
    sub_1D5E2D970();
    swift_allocError();
    *v35 = v34;
    v35[1] = 0;
    v35[2] = 0;
    v35[3] = 0;
    v36 = 0x2000000000000004;
    goto LABEL_26;
  }

  if (!v39)
  {
    sub_1D5E2D970();
    swift_allocError();
    *v35 = 0u;
    *(v35 + 1) = 0u;
    v36 = 0x2000000000000000;
    goto LABEL_26;
  }

  if (!*(v26 + 16))
  {
    sub_1D5E2D970();
    swift_allocError();
    *v35 = 0u;
    *(v35 + 1) = 0u;
    v36 = 0x8000000000000000;
LABEL_26:
    v35[4] = v36;
    swift_willThrow();
    (*(v20 + 8))(v11, v8);
    v28 = v38;
    __swift_destroy_boxed_opaque_existential_1(v44);

    if (!v28)
    {
    }

    sub_1D5CDE22C(*(v16 + 24));
    v31 = sub_1D5B57CA0;
    v32 = v16 + *(v43 + 36);
    return sub_1D5CDE60C(v32, v31);
  }

  (*(v20 + 8))(v11, v8);
  sub_1D5CDE3EC(v16, v19, type metadata accessor for FormatSlotDefinitionItemSet);
  __swift_destroy_boxed_opaque_existential_1(v44);
  v31 = type metadata accessor for FormatSlotDefinitionItemSet;
  v32 = v16;
  return sub_1D5CDE60C(v32, v31);
}

unint64_t sub_1D5CDDEAC()
{
  result = qword_1EDF22070;
  if (!qword_1EDF22070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22070);
  }

  return result;
}

unint64_t sub_1D5CDDF04()
{
  result = qword_1EDF22060;
  if (!qword_1EDF22060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22060);
  }

  return result;
}

unint64_t sub_1D5CDDF5C()
{
  result = qword_1EDF22068;
  if (!qword_1EDF22068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22068);
  }

  return result;
}

uint64_t sub_1D5CDDFB0()
{
  v1 = *v0;
  v2 = 7235949;
  v3 = 0x69747265706F7270;
  v4 = 0x7261696C69787561;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 7889261;
  if (v1 != 1)
  {
    v5 = 0x73646E696BLL;
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

unint64_t sub_1D5CDE064()
{
  result = qword_1EDF1AD50;
  if (!qword_1EDF1AD50)
  {
    sub_1D5CDD744(255, &qword_1EDF1AD58, sub_1D5B4B090, &type metadata for FormatItemKind, MEMORY[0x1E69E64E8]);
    sub_1D5B4CCC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1AD50);
  }

  return result;
}

uint64_t sub_1D5CDE114(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B4BF00(255, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition, MEMORY[0x1E69E62F8]);
    sub_1D5B4C464(a2, type metadata accessor for FormatPropertyDefinition);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5CDE1D8()
{
  result = qword_1EDF1D168;
  if (!qword_1EDF1D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1D168);
  }

  return result;
}

uint64_t sub_1D5CDE22C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D5CDE26C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D610A360(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5CDE2EC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B5BF78(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5CDE36C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B4BE9C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5CDE3EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CDE454(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D6C9C9F4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5CDE4C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B4BF64(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5CDE540(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B58F2C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5CDE59C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B4BE38(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5CDE60C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CDE66C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B4BF64(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5CDE6DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B590A0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5CDE738(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatTypeCollection.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  sub_1D5CDEAB8(0, &qword_1EDF03A28, sub_1D5CDEB20, &type metadata for FormatTypeCollection.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CDEB20();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v15;
  sub_1D5CDEC24();
  v16 = 0;
  sub_1D5CDED30(&qword_1EDF050E8, &qword_1EDF12418);
  sub_1D726431C();
  v12 = v17;
  sub_1D5CE0B88();
  v16 = 1;
  sub_1D5CE0C28();
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v13 = v17;
  *v11 = v12;
  v11[1] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CDEA50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D5CDEAB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D5CDEB20()
{
  result = qword_1EDF0EC88;
  if (!qword_1EDF0EC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EC88);
  }

  return result;
}

unint64_t sub_1D5CDEB78()
{
  result = qword_1EDF0EC78;
  if (!qword_1EDF0EC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EC78);
  }

  return result;
}

unint64_t sub_1D5CDEBD0()
{
  result = qword_1EDF0EC80;
  if (!qword_1EDF0EC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EC80);
  }

  return result;
}

void sub_1D5CDEC24()
{
  if (!qword_1EDF1B388)
  {
    sub_1D5C2CA80(255, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B388);
    }
  }
}

uint64_t sub_1D5CDECB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5CDEAB8(255, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5CDED30(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5CDEC24();
    sub_1D5CDECB4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5CDEDAC()
{
  if (*v0)
  {
    return 0x4E79427365707974;
  }

  else
  {
    return 0x7365707974;
  }
}

uint64_t sub_1D5CDEDEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5CDEE44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t FormatType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D5CDF2EC();
  v7 = v6;
  *&v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CDF268();
  sub_1D5B58B84(&qword_1EDF24D08, sub_1D5CDF268);
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

  v13 = v36;
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

      v24 = *(v17 - 2);
      v23 = *(v17 - 1);

      v25 = sub_1D66170E4();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v26 = v24;
      *(v26 + 8) = v23;
      *(v26 + 16) = v25;
      *(v26 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v10, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  v39 = 0uLL;
  LOBYTE(v40) = 0;
  v18 = sub_1D72642BC();
  v20 = v19;
  v21 = v13;
  v44 = v18;
  v39 = xmmword_1D728CF30;
  LOBYTE(v40) = 0;
  v22 = sub_1D726422C();
  v29 = v28;
  v35 = v22;
  v37 = xmmword_1D7297410;
  v38 = 0;
  sub_1D5CDF5A4();
  sub_1D726431C();
  (*(v21 + 8))(v10, v14);
  v30 = v41;
  v31 = v42;
  v32 = v43;
  v36 = v39;
  v34 = v40;

  *a2 = v44;
  *(a2 + 8) = v20;
  *(a2 + 16) = v35;
  *(a2 + 24) = v29;
  v33 = v34;
  *(a2 + 32) = v36;
  *(a2 + 48) = v33;
  *(a2 + 64) = v30;
  *(a2 + 72) = v31;
  *(a2 + 80) = v32;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CDF268()
{
  if (!qword_1EDF24D00)
  {
    sub_1D5CDF380();
    sub_1D5CDF3D4();
    sub_1D5CDF4D8();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24D00);
    }
  }
}

void sub_1D5CDF2EC()
{
  if (!qword_1EDF19D90)
  {
    sub_1D5CDF268();
    sub_1D5B58B84(&qword_1EDF24D08, sub_1D5CDF268);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19D90);
    }
  }
}

unint64_t sub_1D5CDF380()
{
  result = qword_1EDF34410;
  if (!qword_1EDF34410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34410);
  }

  return result;
}

unint64_t sub_1D5CDF3D4()
{
  result = qword_1EDF34418;
  if (!qword_1EDF34418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34418);
  }

  return result;
}

unint64_t sub_1D5CDF42C()
{
  result = qword_1EDF34400;
  if (!qword_1EDF34400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34400);
  }

  return result;
}

unint64_t sub_1D5CDF484()
{
  result = qword_1EDF34408;
  if (!qword_1EDF34408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34408);
  }

  return result;
}

unint64_t sub_1D5CDF4D8()
{
  result = qword_1EDF34420;
  if (!qword_1EDF34420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34420);
  }

  return result;
}

uint64_t sub_1D5CDF52C()
{
  v1 = 1701667182;
  v2 = 0x6974696E69666564;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x7470697263736564;
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

unint64_t sub_1D5CDF5A4()
{
  result = qword_1EDF2A870;
  if (!qword_1EDF2A870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A870);
  }

  return result;
}

uint64_t sub_1D5CDF5F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 49))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 48) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 48) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D5CDF64C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t FormatTypeDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    v11 = v7;
    v12 = v35;
    v13 = a1[3];
    v29 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v13);
    v14 = sub_1D7264AFC();
    LOBYTE(v13) = Dictionary<>.errorOnUnknownKeys.getter(v14);

    if (v13)
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
          *(v21 + 16) = &unk_1F5117EA0;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v29;
          goto LABEL_9;
        }
      }
    }

    sub_1D5CDFAF0();
    v31 = 0uLL;
    sub_1D726431C();
    if (v30)
    {
      if (v30 == 1)
      {
        v30 = xmmword_1D7279980;
        sub_1D66C91DC();
        sub_1D726431C();
        a1 = v29;
        (*(v11 + 8))(v10, v6);
        v23 = *(&v31 + 1);
        v24 = v31;
        v25 = v32;
        v26 = v33;
        v27 = v34 | 0x40;
LABEL_17:
        *v12 = v24;
        *(v12 + 8) = v23;
        *(v12 + 16) = v25;
        *(v12 + 32) = v26;
        *(v12 + 48) = v27;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v31 = xmmword_1D7279980;
      sub_1D66C9188();
      sub_1D726431C();
      a1 = v29;
      (*(v11 + 8))(v10, v6);
      v23 = 0;
      v24 = v30;
      v25 = 0uLL;
      v27 = 0x80;
    }

    else
    {
      v31 = xmmword_1D7279980;
      sub_1D5CDFC74();
      sub_1D726431C();
      a1 = v29;
      (*(v11 + 8))(v10, v6);
      v23 = 0;
      v27 = 0;
      v24 = v30;
      v25 = 0uLL;
    }

    v26 = 0uLL;
    goto LABEL_17;
  }

LABEL_9:
  sub_1D61E4FBC(a1, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CDFAF0()
{
  result = qword_1EDF2A8D8;
  if (!qword_1EDF2A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A8D8);
  }

  return result;
}

unint64_t sub_1D5CDFBA4()
{
  result = qword_1EDF2A8E0;
  if (!qword_1EDF2A8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A8E0);
  }

  return result;
}

uint64_t sub_1D5CDFBF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CDFC28();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CDFC28()
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

unint64_t sub_1D5CDFC74()
{
  result = qword_1EDF2A878;
  if (!qword_1EDF2A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A878);
  }

  return result;
}

void sub_1D5CDFCC8()
{
  if (!qword_1EDF25340)
  {
    sub_1D5CE0108();
    sub_1D5CE015C();
    sub_1D5CE0260();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25340);
    }
  }
}

void sub_1D5CDFD4C()
{
  if (!qword_1EDF1A0B0)
  {
    sub_1D5CDFCC8();
    sub_1D5B58B84(&qword_1EDF25348, sub_1D5CDFCC8);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A0B0);
    }
  }
}

uint64_t FormatTypeDefinition.Enum.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22[0] = a2;
  sub_1D5CDFD4C();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CDFCC8();
  sub_1D5B58B84(&qword_1EDF25348, sub_1D5CDFCC8);
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

      v19 = sub_1D6628490(0x7365736163, 0xE500000000000000);
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

  sub_1D5C34D84(0, &qword_1EDF43BC8, &type metadata for FormatTypeDefinition.Case, MEMORY[0x1E69E62F8]);
  sub_1D5CE02B4();
  v22[1] = 0;
  v22[2] = 0;
  v23 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  *v13 = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CE0108()
{
  result = qword_1EDF2A890;
  if (!qword_1EDF2A890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A890);
  }

  return result;
}

unint64_t sub_1D5CE015C()
{
  result = qword_1EDF2A898;
  if (!qword_1EDF2A898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A898);
  }

  return result;
}

unint64_t sub_1D5CE01B4()
{
  result = qword_1EDF2A880;
  if (!qword_1EDF2A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A880);
  }

  return result;
}

unint64_t sub_1D5CE020C()
{
  result = qword_1EDF2A888;
  if (!qword_1EDF2A888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A888);
  }

  return result;
}

unint64_t sub_1D5CE0260()
{
  result = qword_1EDF2A8A0;
  if (!qword_1EDF2A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A8A0);
  }

  return result;
}

unint64_t sub_1D5CE02B4()
{
  result = qword_1EDF1B0D8;
  if (!qword_1EDF1B0D8)
  {
    sub_1D5C34D84(255, &qword_1EDF43BC8, &type metadata for FormatTypeDefinition.Case, MEMORY[0x1E69E62F8]);
    sub_1D5CE0350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B0D8);
  }

  return result;
}

unint64_t sub_1D5CE0350()
{
  result = qword_1EDF2A8A8;
  if (!qword_1EDF2A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A8A8);
  }

  return result;
}

uint64_t sub_1D5CE03A4()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x7365736163;
  }
}

uint64_t sub_1D5CE03D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5CE0420(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t FormatTypeDefinition.Case.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v42 = a2;
  sub_1D5CE08A4();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CE0820();
  sub_1D5B58B84(&qword_1EDF25358, sub_1D5CE0820);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v7;
  v12 = v42;
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

      v24 = *(v18 - 2);
      v23 = *(v18 - 1);

      v25 = sub_1D6625B1C();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v26 = v24;
      *(v26 + 8) = v23;
      *(v26 + 16) = v25;
      *(v26 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v11 + 8))(v15, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v40 = 0uLL;
  v41 = 0;
  v19 = sub_1D72642BC();
  v21 = v20;
  v35 = v19;
  v40 = xmmword_1D728CF30;
  v41 = 0;
  v22 = sub_1D72642BC();
  v29 = v28;
  v34 = v22;
  v33 = xmmword_1D7297410;
  v40 = xmmword_1D7297410;
  v41 = 0;
  v30 = sub_1D726434C();
  if (v30)
  {
    v38 = v33;
    v39 = 0;
    sub_1D726431C();
    v31 = v37;
    *&v33 = v36;
  }

  else
  {
    *&v33 = 0;
    v31 = 0xE000000000000000;
  }

  (*(v11 + 8))(v15, v6);
  v32 = v34;
  *v12 = v35;
  v12[1] = v21;
  v12[2] = v32;
  v12[3] = v29;
  v12[4] = v33;
  v12[5] = v31;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CE0820()
{
  if (!qword_1EDF25350)
  {
    sub_1D5CE0938();
    sub_1D5CE098C();
    sub_1D5CE0A90();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25350);
    }
  }
}

void sub_1D5CE08A4()
{
  if (!qword_1EDF1A0B8)
  {
    sub_1D5CE0820();
    sub_1D5B58B84(&qword_1EDF25358, sub_1D5CE0820);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A0B8);
    }
  }
}

unint64_t sub_1D5CE0938()
{
  result = qword_1EDF2A8C8;
  if (!qword_1EDF2A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A8C8);
  }

  return result;
}

unint64_t sub_1D5CE098C()
{
  result = qword_1EDF2A8C0;
  if (!qword_1EDF2A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A8C0);
  }

  return result;
}

unint64_t sub_1D5CE09E4()
{
  result = qword_1EDF2A8B0;
  if (!qword_1EDF2A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A8B0);
  }

  return result;
}

unint64_t sub_1D5CE0A3C()
{
  result = qword_1EDF2A8B8;
  if (!qword_1EDF2A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A8B8);
  }

  return result;
}

unint64_t sub_1D5CE0A90()
{
  result = qword_1EDF2A8D0;
  if (!qword_1EDF2A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A8D0);
  }

  return result;
}

uint64_t sub_1D5CE0AE4()
{
  v1 = 0x696669746E656469;
  v2 = 0x7470697263736564;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 1701667182;
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

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

void sub_1D5CE0B88()
{
  if (!qword_1EDF057A0)
  {
    sub_1D5CDEAB8(255, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF057A0);
    }
  }
}

unint64_t sub_1D5CE0C28()
{
  result = qword_1EDF05790;
  if (!qword_1EDF05790)
  {
    sub_1D5CE0B88();
    sub_1D5CDECB4(&qword_1EDF12418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05790);
  }

  return result;
}

uint64_t FormatContentSlotItemObject.Resolved.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v249 = a2;
  v241 = type metadata accessor for FormatCustomItem.Resolved();
  MEMORY[0x1EEE9AC00](v241, v3);
  v240 = &v202 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = type metadata accessor for PuzzleStatistic();
  MEMORY[0x1EEE9AC00](v239, v5);
  v238 = &v202 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B62EA0(0, qword_1EDF40980, type metadata accessor for FormatPuzzleType.Overrides);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v209 = &v202 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v230 = &v202 - v12;
  v234 = type metadata accessor for FormatPuzzleType.Overrides(0);
  v221 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234, v13);
  v252 = &v202 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CE33EC(0, &qword_1EDF176E0, &qword_1EDF3C700, &protocolRef_FCPuzzleTypeProviding, sub_1D5B5534C);
  v251 = v15;
  v224 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15, v16);
  v247 = &v202 - v17;
  sub_1D5CE33EC(0, &unk_1EDF17770, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding, sub_1D5B5534C);
  v242 = v18;
  v231 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  ObjectType = &v202 - v20;
  v236 = type metadata accessor for FormatWebEmbed.Resolved();
  MEMORY[0x1EEE9AC00](v236, v21);
  v237 = &v202 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B62EA0(0, &qword_1EDF0DF30, type metadata accessor for FormatRecipeOverrides);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v229 = &v202 - v25;
  v228 = type metadata accessor for FormatRecipeOverrides();
  v220 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228, v26);
  v213 = &v202 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CE33EC(0, &qword_1EDF17610, &qword_1EDF3C6B0, 0x1E69B5578, sub_1D5B5A498);
  v246 = v28;
  v233 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v243 = &v202 - v30;
  sub_1D5CE33EC(0, &qword_1EDF177B0, &qword_1EDF3C770, &protocolRef_FCTagProviding, sub_1D5B5534C);
  v250 = v31;
  v223 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v244 = &v202 - v33;
  sub_1D5CE33EC(0, &qword_1EDF17650, &qword_1EDF3C6C0, 0x1E69B5348, sub_1D5B5A498);
  v227 = v34;
  v219 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v35);
  v226 = &v202 - v36;
  sub_1D5CE33EC(0, &qword_1EDF17810, &qword_1EDF1AB10, 0x1E69B51C0, sub_1D5B5A498);
  v217 = v37;
  v210 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v38);
  v212 = &v202 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v208 = &v202 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v207 = &v202 - v45;
  sub_1D5CE33EC(0, &unk_1EDF176C0, &qword_1EDF1A890, &protocolRef_FCNewsAppConfiguration, sub_1D5B5534C);
  v222 = v46;
  v211 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v47);
  v216 = &v202 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49, v50);
  v215 = &v202 - v51;
  sub_1D5B62EA0(0, &qword_1EDF3FCB0, type metadata accessor for FormatArticleOverrides);
  MEMORY[0x1EEE9AC00](v52 - 8, v53);
  v225 = &v202 - v54;
  v232 = type metadata accessor for FormatArticleOverrides();
  v218 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232, v55);
  v214 = &v202 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CE33EC(0, &qword_1EDF43A20, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, sub_1D5B5534C);
  v245 = v57;
  v235 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v58);
  v60 = &v202 - v59;
  sub_1D5CE3518(0, &qword_1EDF039A8, MEMORY[0x1E69E6F48]);
  v62 = v61;
  v253 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v63);
  v65 = &v202 - v64;
  v66 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = (&v202 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = a1;
  v71 = a1[3];
  v254 = v70;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  sub_1D5CE357C();
  v72 = v255;
  sub_1D7264B0C();
  if (v72)
  {
LABEL_3:
    v78 = v254;
    return __swift_destroy_boxed_opaque_existential_1(v78);
  }

  v74 = v250;
  v73 = v251;
  v205 = v60;
  v206 = v66;
  v255 = v69;
  v75 = v252;
  v76 = v253;
  LOBYTE(v275[0]) = 0;
  sub_1D5CE3680();
  sub_1D726431C();
  v77 = v62;
  if (aBlock > 4u)
  {
    v203 = v62;
    v204 = v65;
    if (aBlock > 6u)
    {
      v81 = v249;
      if (aBlock == 7)
      {
        LOBYTE(aBlock) = 1;
        sub_1D5CE3944(&qword_1EDF114B8, type metadata accessor for FormatCustomItem.Resolved);
        v97 = v240;
        v98 = v203;
        v99 = v204;
        sub_1D726431C();
        v241 = 0;
        (*(v76 + 8))(v99, v98);
        v107 = v255;
        sub_1D5CE4A7C(v97, v255, type metadata accessor for FormatCustomItem.Resolved);
        goto LABEL_26;
      }

      if (aBlock == 8)
      {
        LOBYTE(v275[0]) = 1;
        sub_1D5B5C5E0();
        v86 = v203;
        v85 = v204;
        sub_1D726431C();
        v241 = v72;
        (*(v76 + 8))(v85, v86);
        v87 = *(&aBlock + 1);
        v88 = v277;
        v107 = v255;
        *v255 = aBlock;
        v107[1] = v87;
        *(v107 + 16) = v88;
        goto LABEL_26;
      }

      LOBYTE(aBlock) = 1;
      sub_1D6F33754();
      v101 = v243;
      sub_1D726431C();
      LOBYTE(aBlock) = 2;
      sub_1D5CE3944(&qword_1EDF0DF38, type metadata accessor for FormatRecipeOverrides);
      v108 = v228;
      v109 = v229;
      sub_1D726427C();
      v241 = 0;
      v120 = (*(v220 + 48))(v109, 1, v108);
      v121 = v233;
      if (v120 == 1)
      {
        sub_1D6F338E0(v109, &qword_1EDF0DF30, type metadata accessor for FormatRecipeOverrides);
        v122 = v246;
        sub_1D725BF7C();
        (*(v121 + 8))(v101, v122);
        (*(v76 + 8))(v204, v203);
        v107 = v255;
        *v255 = aBlock;
        goto LABEL_26;
      }

      v137 = v213;
      sub_1D5CE4A7C(v109, v213, type metadata accessor for FormatRecipeOverrides);
      LOBYTE(aBlock) = 3;
      sub_1D5CE4AE4();
      v139 = v203;
      v138 = v204;
      v140 = v241;
      sub_1D726431C();
      if (!v140)
      {
        LOBYTE(aBlock) = 4;
        sub_1D5CE4B68();
        v141 = v208;
        v142 = v217;
        sub_1D726431C();
        v241 = 0;
        sub_1D725BF7C();
        v181 = aBlock;
        sub_1D725BF7C();
        v182 = v142;
        v183 = *&v275[0];
        swift_getObjectType();
        sub_1D725BF7C();
        v184 = v266;
        v185 = sub_1D6323068(v137, v183, v266, v181);
        swift_unknownObjectRelease();

        v186 = v137;
        v81 = v249;
        (*(v210 + 8))(v141, v182);
        (*(v211 + 8))(v216, v222);
        sub_1D5CE5C1C(v186, type metadata accessor for FormatRecipeOverrides);
        (*(v233 + 8))(v243, v246);
        (*(v76 + 8))(v204, v203);
        v107 = v255;
        *v255 = v185;
        goto LABEL_26;
      }

      sub_1D5CE5C1C(v137, type metadata accessor for FormatRecipeOverrides);
      (*(v121 + 8))(v243, v246);
      (*(v76 + 8))(v138, v139);
      goto LABEL_3;
    }

    v81 = v249;
    if (aBlock != 5)
    {
      LOBYTE(aBlock) = 1;
      sub_1D5CE3944(&qword_1EC898630, type metadata accessor for PuzzleStatistic);
      v102 = v238;
      v104 = v203;
      v103 = v204;
      sub_1D726431C();
      v241 = v72;
      (*(v76 + 8))(v103, v104);
      v107 = v255;
      sub_1D5CE4A7C(v102, v255, type metadata accessor for PuzzleStatistic);
      goto LABEL_26;
    }

    LOBYTE(aBlock) = 1;
    sub_1D6F335CC();
    v91 = v73;
    v92 = v203;
    sub_1D726431C();
    LOBYTE(aBlock) = 2;
    sub_1D5CE3944(&qword_1EDF30130, type metadata accessor for FormatPuzzleType.Overrides);
    v113 = v230;
    v114 = v234;
    sub_1D726427C();
    v241 = 0;
    if ((*(v221 + 48))(v113, 1, v114) == 1)
    {
      sub_1D6F338E0(v113, qword_1EDF40980, type metadata accessor for FormatPuzzleType.Overrides);
      sub_1D725BF7C();
      v127 = aBlock;
    }

    else
    {
      v145 = v75;
      sub_1D5CE4A7C(v113, v75, type metadata accessor for FormatPuzzleType.Overrides);
      LOBYTE(aBlock) = 4;
      sub_1D5CE4B68();
      v146 = v212;
      v147 = v217;
      v148 = v204;
      v149 = v241;
      sub_1D726431C();
      v241 = v149;
      if (v149)
      {
        sub_1D5CE5C1C(v75, type metadata accessor for FormatPuzzleType.Overrides);
        (*(v224 + 8))(v247, v91);
        (*(v253 + 8))(v148, v92);
        goto LABEL_47;
      }

      sub_1D725BF7C();
      v250 = aBlock;
      ObjectType = swift_getObjectType();
      v161 = v209;
      sub_1D5CEC870(v75, v209, type metadata accessor for FormatPuzzleType.Overrides);
      (*(v221 + 56))(v161, 0, 1, v234);
      sub_1D725BF7C();
      v162 = *&v275[0];
      ObjectType = FCPuzzleTypeProviding.overridden(by:assetManager:)(v161, *&v275[0]);
      swift_unknownObjectRelease();

      v163 = v161;
      v127 = ObjectType;
      sub_1D6F338E0(v163, qword_1EDF40980, type metadata accessor for FormatPuzzleType.Overrides);
      (*(v210 + 8))(v146, v147);
      sub_1D5CE5C1C(v145, type metadata accessor for FormatPuzzleType.Overrides);
    }

    v164 = v253;
    sub_1D5CE5C7C(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    LOBYTE(v275[0]) = 5;
    sub_1D5CE5CCC(&qword_1EDF1B670);
    v165 = v203;
    v166 = v204;
    v167 = v241;
    sub_1D726427C();
    v241 = v167;
    if (v167)
    {
      swift_unknownObjectRelease();
      (*(v224 + 8))(v247, v91);
      (*(v164 + 8))(v166, v165);
      goto LABEL_47;
    }

    v168 = *(&aBlock + 1);
    if (*(&aBlock + 1) == 1)
    {
      (*(v224 + 8))(v247, v91);
      (*(v164 + 8))(v166, v203);
LABEL_109:
      v129 = v254;
      v107 = v255;
      *v255 = v127;
      goto LABEL_123;
    }

    v169 = aBlock;
    v170 = [v127 dismissingIdentifier];
    if (v170)
    {
      v171 = v170;
      v172 = sub_1D726207C();
      v174 = v173;

      if (!v168)
      {

        v195 = 0;
        v164 = v76;
LABEL_107:
        [v127 updateDismissingIdentifier_];

        goto LABEL_108;
      }

      if (v172 == v169 && v168 == v174)
      {

        v164 = v76;
LABEL_105:
        sub_1D5D25B88(v169, v168);
LABEL_108:
        (*(v224 + 8))(v247, v91);
        (*(v164 + 8))(v204, v203);
        goto LABEL_109;
      }

      v196 = sub_1D72646CC();

      v164 = v76;
      if (v196)
      {
        goto LABEL_105;
      }
    }

    else if (!v168)
    {
      goto LABEL_108;
    }

    v195 = sub_1D726203C();
    sub_1D5D25B88(v169, v168);
    goto LABEL_107;
  }

  if (aBlock <= 1u)
  {
    v89 = v65;
    v90 = v77;
    if (aBlock)
    {
      LOBYTE(v275[0]) = 2;
      sub_1D6BA7768();
      sub_1D726431C();
      v115 = *(&aBlock + 1);
      v250 = v277;
      v251 = aBlock;
      v252 = *(&v277 + 1);
      LOBYTE(aBlock) = 1;
      sub_1D6F3385C();
      v117 = v226;
      v116 = v227;
      sub_1D726431C();
      v241 = 0;
      sub_1D725BF7C();
      v128 = *&v275[0];
      *&aBlock = v251;
      *(&aBlock + 1) = v115;
      *&v277 = v250;
      *(&v277 + 1) = v252;
      v251 = sub_1D6BA62EC(&aBlock);

      (*(v219 + 8))(v117, v116);
      (*(v76 + 8))(v89, v90);

      v107 = v255;
      *v255 = v251;
      swift_storeEnumTagMultiPayload();
      v129 = v254;
LABEL_124:
      v81 = v249;
      goto LABEL_125;
    }

    LOBYTE(aBlock) = 1;
    sub_1D5CE38C0();
    sub_1D726431C();
    LOBYTE(aBlock) = 2;
    sub_1D5CE3944(&qword_1EDF3FCB8, type metadata accessor for FormatArticleOverrides);
    v110 = v225;
    v111 = v232;
    sub_1D726427C();
    v112 = v76;
    v241 = 0;
    v123 = (*(v218 + 48))(v110, 1, v111);
    v124 = v235;
    if (v123 == 1)
    {
      sub_1D6F338E0(v110, &qword_1EDF3FCB0, type metadata accessor for FormatArticleOverrides);
      sub_1D725BF7C();
      v125 = aBlock;
    }

    else
    {
      v143 = v214;
      sub_1D5CE4A7C(v110, v214, type metadata accessor for FormatArticleOverrides);
      LOBYTE(aBlock) = 3;
      sub_1D5CE4AE4();
      v144 = v241;
      sub_1D726431C();
      if (v144)
      {
        sub_1D5CE5C1C(v143, type metadata accessor for FormatArticleOverrides);
        (*(v235 + 8))(v205, v245);
        (*(v76 + 8))(v89, v90);
        v78 = v254;
        return __swift_destroy_boxed_opaque_existential_1(v78);
      }

      LOBYTE(aBlock) = 4;
      sub_1D5CE4B68();
      v160 = v207;
      sub_1D726431C();
      v241 = 0;
      sub_1D725BF7C();
      v252 = swift_getObjectType();
      sub_1D725BF7C();
      v189 = *&v275[0];
      v250 = *&v275[0];
      sub_1D725BF7C();
      v251 = v266;
      v190 = v214;
      v125 = FCHeadlineProviding.overridden(by:configuration:assetManager:routeURL:)(v214, v189, v266, v214 + *(v232 + 36));
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v191 = v160;
      v112 = v76;
      v192 = v235;
      (*(v210 + 8))(v191, v217);
      (*(v211 + 8))(v215, v222);
      v193 = v190;
      v124 = v192;
      sub_1D5CE5C1C(v193, type metadata accessor for FormatArticleOverrides);
    }

    sub_1D5CE5C7C(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    LOBYTE(v275[0]) = 5;
    sub_1D5CE5CCC(&qword_1EDF1B670);
    v126 = v241;
    sub_1D726427C();
    v241 = v126;
    if (v126)
    {
      swift_unknownObjectRelease();
      (*(v124 + 8))(v205, v245);
      (*(v112 + 8))(v89, v90);
      goto LABEL_47;
    }

    v252 = v125;
    v151 = v112;
    v203 = v90;
    v152 = *(&aBlock + 1);
    if (*(&aBlock + 1) == 1)
    {
      (*(v124 + 8))(v205, v245);
      (*(v112 + 8))(v89, v203);
LABEL_59:
      v129 = v254;
      v107 = v255;
      v153 = v252;
LABEL_122:
      *v107 = v153;
      goto LABEL_123;
    }

    v176 = aBlock;
    if ([v252 respondsToSelector_])
    {
      v177 = [v252 dismissingIdentifier];
      if (v177)
      {
        v178 = v177;
        v251 = sub_1D726207C();
        v180 = v179;

        if (v152)
        {
          v151 = v76;
          if (v180)
          {
            if (v176 == v251 && v152 == v180)
            {

              v151 = v76;
              v124 = v235;
LABEL_117:
              sub_1D5D25B88(v176, v152);
              goto LABEL_118;
            }

            v198 = sub_1D72646CC();

            v151 = v76;
            v124 = v235;
            if (v198)
            {
              goto LABEL_117;
            }
          }
        }

        else
        {
          v151 = v76;
          if (!v180)
          {
LABEL_118:
            (*(v124 + 8))(v205, v245);
            (*(v151 + 8))(v89, v203);
            goto LABEL_59;
          }
        }
      }

      else
      {
        v151 = v76;
        if (!v152)
        {
          goto LABEL_118;
        }
      }
    }

    v199 = swift_allocObject();
    *(v199 + 16) = v176;
    *(v199 + 24) = v152;
    *&v278 = sub_1D6F3393C;
    *(&v278 + 1) = v199;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v277 = sub_1D5C3BF74;
    *(&v277 + 1) = &block_descriptor_114;
    v200 = _Block_copy(&aBlock);

    v153 = v252;
    v201 = FCMutateHeadlineWithBlock();
    _Block_release(v200);
    (*(v124 + 8))(v205, v245);
    (*(v151 + 8))(v89, v203);
    if (v201)
    {
      swift_unknownObjectRelease();
      v153 = v201;
    }

    v129 = v254;
    v107 = v255;
    goto LABEL_122;
  }

  if (aBlock == 2)
  {
    LOBYTE(aBlock) = 1;
    v93 = v65;
    sub_1D6F337D8();
    v94 = v244;
    v95 = v62;
    sub_1D726431C();
    v96 = v76;
    v241 = 0;
    sub_1D725BF7C();
    v105 = aBlock;
    sub_1D5CE5C7C(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    LOBYTE(v275[0]) = 5;
    sub_1D5CE5CCC(&qword_1EDF1B670);
    v106 = v241;
    sub_1D726427C();
    v241 = v106;
    if (v106)
    {
      swift_unknownObjectRelease();
      (*(v223 + 8))(v94, v74);
      (*(v76 + 8))(v93, v95);
LABEL_47:
      v78 = v254;
      return __swift_destroy_boxed_opaque_existential_1(v78);
    }

    v203 = v95;
    v204 = v93;
    v118 = *(&aBlock + 1);
    if (*(&aBlock + 1) == 1)
    {
      (*(v223 + 8))(v244, v74);
LABEL_96:
      (*(v96 + 8))(v204, v203);
      v129 = v254;
      v107 = v255;
      *v255 = v105;
LABEL_123:
      swift_storeEnumTagMultiPayload();
      goto LABEL_124;
    }

    v130 = aBlock;
    v131 = [v105 dismissingIdentifier];
    if (v131)
    {
      v132 = v131;
      v133 = sub_1D726207C();
      v135 = v134;

      v96 = v76;
      if (!v118)
      {
        v136 = v223;
        if (!v135)
        {
LABEL_95:
          (*(v136 + 8))(v244, v74);
          goto LABEL_96;
        }

        v175 = 0;
LABEL_94:
        [v105 updateDismissingIdentifier_];

        goto LABEL_95;
      }

      v136 = v223;
      if (v135)
      {
        if (v130 == v133 && v118 == v135)
        {

LABEL_92:
          sub_1D5D25B88(v130, v118);
          goto LABEL_95;
        }

        v194 = sub_1D72646CC();

        if (v194)
        {
          goto LABEL_92;
        }
      }
    }

    else
    {
      v136 = v223;
      if (!v118)
      {
        goto LABEL_95;
      }
    }

    v175 = sub_1D726203C();
    sub_1D5D25B88(v130, v118);
    goto LABEL_94;
  }

  v204 = v65;
  v80 = v62;
  v81 = v249;
  v82 = v76;
  if (aBlock != 3)
  {
    LOBYTE(aBlock) = 1;
    sub_1D6F33650();
    v100 = v242;
    sub_1D726431C();
    v285 = 2;
    sub_1D683FB98();
    sub_1D726427C();
    v272 = v282;
    v273 = v283;
    v274 = v284;
    v268 = v278;
    v269 = v279;
    v270 = v280;
    v271 = v281;
    v266 = aBlock;
    v267 = v277;
    v275[6] = v282;
    v275[7] = v283;
    v275[8] = v284;
    v275[2] = v278;
    v275[3] = v279;
    v275[4] = v280;
    v275[5] = v281;
    v275[0] = aBlock;
    v275[1] = v277;
    if (get_enum_tag_for_layout_string_8NewsFeed0B5IssueV9OverridesVSg_0(v275) == 1)
    {
      sub_1D725BF7C();
      v119 = *&v265[0];
    }

    else
    {
      sub_1D725BF7C();
      swift_getObjectType();
      v262 = v272;
      v263 = v273;
      v264 = v274;
      v258 = v268;
      v259 = v269;
      v260 = v270;
      v261 = v271;
      v256 = v266;
      v257 = v267;
      v119 = FCPuzzleProviding.overridden(by:)(&v256);
      swift_unknownObjectRelease();
      v265[6] = v262;
      v265[7] = v263;
      v265[8] = v264;
      v265[2] = v258;
      v265[3] = v259;
      v265[4] = v260;
      v265[5] = v261;
      v265[0] = v256;
      v265[1] = v257;
      sub_1D6F336D4(v265);
    }

    sub_1D5CE5C7C(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    LOBYTE(v256) = 5;
    sub_1D5CE5CCC(&qword_1EDF1B670);
    sub_1D726427C();
    v241 = 0;
    v150 = *(&v265[0] + 1);
    if (*(&v265[0] + 1) == 1)
    {
      goto LABEL_56;
    }

    v154 = *&v265[0];
    v155 = [v119 dismissingIdentifier];
    if (v155)
    {
      v252 = v154;
      v156 = v119;
      v157 = v155;
      v251 = sub_1D726207C();
      v159 = v158;

      v82 = v76;
      v119 = v156;
      if (v150)
      {
        v154 = v252;
        if (v159)
        {
          if (v252 == v251 && v150 == v159)
          {

LABEL_111:
            sub_1D5D25B88(v154, v150);
            v100 = v242;
            goto LABEL_56;
          }

          v197 = sub_1D72646CC();

          v187 = v231;
          if (v197)
          {
            goto LABEL_111;
          }

          goto LABEL_90;
        }

LABEL_89:
        v187 = v231;
LABEL_90:
        v188 = sub_1D726203C();
        sub_1D5D25B88(v154, v150);
LABEL_101:
        [v119 updateDismissingIdentifier_];

        (*(v187 + 8))(ObjectType, v242);
        goto LABEL_102;
      }

      if (v159)
      {

        v188 = 0;
        v187 = v231;
        goto LABEL_101;
      }
    }

    else if (v150)
    {
      goto LABEL_89;
    }

LABEL_56:
    (*(v231 + 8))(ObjectType, v100);
LABEL_102:
    (*(v82 + 8))(v204, v80);
    v129 = v254;
    v107 = v255;
    *v255 = v119;
    goto LABEL_123;
  }

  LOBYTE(aBlock) = 1;
  sub_1D5CE3944(&unk_1EDF11A98, type metadata accessor for FormatWebEmbed.Resolved);
  v83 = v237;
  v84 = v204;
  sub_1D726431C();
  v241 = v72;
  (*(v76 + 8))(v84, v80);
  v107 = v255;
  sub_1D5CE4A7C(v83, v255, type metadata accessor for FormatWebEmbed.Resolved);
LABEL_26:
  swift_storeEnumTagMultiPayload();
  v129 = v254;
LABEL_125:
  sub_1D5CE4A7C(v107, v81, type metadata accessor for FormatContentSlotItemObject.Resolved);
  return __swift_destroy_boxed_opaque_existential_1(v129);
}

uint64_t sub_1D5CE32B8()
{

  return swift_deallocObject();
}

void sub_1D5CE3328()
{
  sub_1D5B5CFF8(319, &qword_1EDF41B80, &type metadata for FormatColor, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D5B544D0(319, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D5CE33EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D725BFAC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t type metadata accessor for FormatRecipeOverrides()
{
  result = qword_1EDF3FDB0;
  if (!qword_1EDF3FDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5CE3494()
{
  sub_1D5B58D88();
  if (v0 <= 0x3F)
  {
    sub_1D5B5CFA0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D5CE3518(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5CE357C();
    v7 = a3(a1, &_s14descr1F50EF869O8ResolvedO10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5CE357C()
{
  result = qword_1EDF0B070;
  if (!qword_1EDF0B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B070);
  }

  return result;
}

unint64_t sub_1D5CE35D4()
{
  result = qword_1EDF0B058;
  if (!qword_1EDF0B058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B058);
  }

  return result;
}

unint64_t sub_1D5CE362C()
{
  result = qword_1EDF0B060;
  if (!qword_1EDF0B060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B060);
  }

  return result;
}

unint64_t sub_1D5CE3680()
{
  result = qword_1EDF0B038;
  if (!qword_1EDF0B038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B038);
  }

  return result;
}

uint64_t sub_1D5CE36D4()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x69666E6F43707061;
  v4 = 0x6E614D7465737361;
  if (v1 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1635017060;
  if (v1 != 1)
  {
    v5 = 0x656469727265766FLL;
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

unint64_t sub_1D5CE37F0()
{
  result = qword_1EDF0B048;
  if (!qword_1EDF0B048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B048);
  }

  return result;
}

uint64_t sub_1D5CE3844@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CE3874();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CE3874()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D5CE38C0()
{
  result = qword_1EDF17710;
  if (!qword_1EDF17710)
  {
    sub_1D5CE33EC(255, &qword_1EDF43A20, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, sub_1D5B5534C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF17710);
  }

  return result;
}

uint64_t sub_1D5CE3944(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5CE39A0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
    return result;
  }

  sub_1D5B5B2A0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_1D5B5CFA0();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  sub_1D5B4D3E0();
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D5CE3B20(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  sub_1D5B5B2A0();
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  sub_1D5B5CFA0();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[8];
    goto LABEL_11;
  }

  sub_1D5B4D3E0();
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[9];

  return v17(v18, a2, v16);
}

uint64_t FormatArticleOverrides.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5CFA0();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CE42EC(0, &qword_1EDF3C620, MEMORY[0x1E69E6F48]);
  v33 = *(v14 - 8);
  v34 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v31 - v16;
  v18 = type metadata accessor for FormatArticleOverrides();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CE4350();
  v35 = v17;
  v22 = v36;
  sub_1D7264B0C();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = v9;
  v23 = v33;
  v43 = 0;
  *v21 = sub_1D726422C();
  v21[1] = v24;
  sub_1D725891C();
  v42 = 1;
  sub_1D5CE45B4(&qword_1EDF45B08, MEMORY[0x1E6969530]);
  sub_1D726427C();
  sub_1D5CE46AC(v13, v21 + v18[5], sub_1D5B5B2A0);
  v40 = 2;
  sub_1D5CE4714();
  sub_1D726427C();
  *(v21 + v18[6]) = v41;
  v39 = 3;
  v25 = sub_1D726422C();
  v27 = (v21 + v18[7]);
  *v27 = v25;
  v27[1] = v28;
  type metadata accessor for FormatThumbnail();
  v38 = 4;
  sub_1D5CE45B4(qword_1EDF41148, type metadata accessor for FormatThumbnail);
  v29 = v36;
  sub_1D726427C();
  sub_1D5CE46AC(v29, v21 + v18[8], sub_1D5B5CFA0);
  sub_1D72585BC();
  v37 = 5;
  sub_1D5CE45B4(&unk_1EDF45B50, MEMORY[0x1E6968FB0]);
  v30 = v32;
  sub_1D726427C();
  (*(v23 + 8))(v35, v34);
  sub_1D5CE46AC(v30, v21 + v18[9], sub_1D5B4D3E0);
  sub_1D5CE4888(v21, v31, type metadata accessor for FormatArticleOverrides);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D5CE4A1C(v21, type metadata accessor for FormatArticleOverrides);
}

void sub_1D5CE42EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5CE4350();
    v7 = a3(a1, &type metadata for FormatArticleOverrides.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5CE4350()
{
  result = qword_1EDF3FCD0;
  if (!qword_1EDF3FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3FCD0);
  }

  return result;
}

unint64_t sub_1D5CE43A8()
{
  result = qword_1EDF3FCC0;
  if (!qword_1EDF3FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3FCC0);
  }

  return result;
}

unint64_t sub_1D5CE4400()
{
  result = qword_1EDF3FCC8;
  if (!qword_1EDF3FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3FCC8);
  }

  return result;
}

uint64_t sub_1D5CE4454()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x63784574726F6873;
  v4 = 0x69616E626D756874;
  if (v1 != 4)
  {
    v4 = 0x4C52556574756F72;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x4479616C70736964;
  if (v1 != 1)
  {
    v5 = 0x70795479726F7473;
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

uint64_t sub_1D5CE4528(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D725891C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5CE456C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5CE45B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5CE45FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5CE4644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CE46AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D5CE4714()
{
  result = qword_1EDF3FCA8;
  if (!qword_1EDF3FCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3FCA8);
  }

  return result;
}

uint64_t sub_1D5CE477C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    sub_1D5B5B410();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5CE4820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CE4888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CE4904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_1D5B5B410();
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 36);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D5CE49BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CE4A1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CE4A7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D5CE4AE4()
{
  result = qword_1EDF176D0;
  if (!qword_1EDF176D0)
  {
    sub_1D5CE33EC(255, &unk_1EDF176C0, &qword_1EDF1A890, &protocolRef_FCNewsAppConfiguration, sub_1D5B5534C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF176D0);
  }

  return result;
}

unint64_t sub_1D5CE4B68()
{
  result = qword_1EDF17818;
  if (!qword_1EDF17818)
  {
    sub_1D5CE33EC(255, &qword_1EDF17810, &qword_1EDF1AB10, 0x1E69B51C0, sub_1D5B5A498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF17818);
  }

  return result;
}

uint64_t FCHeadlineProviding.overridden(by:configuration:assetManager:routeURL:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v48 = a4;
  v46 = a3;
  v47 = a2;
  v5 = type metadata accessor for FormatArticleOverrides();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B55010(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v44 - v15;
  sub_1D5B55010(0, &qword_1EDF452E0, type metadata accessor for FormatThumbnail);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v44 - v23;
  sub_1D5B55010(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v44 - v27;
  if (!*(a1 + 8))
  {
    v29 = MEMORY[0x1E6969530];
    sub_1D5B759E4(a1 + v5[5], v28, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    v30 = sub_1D725891C();
    v31 = (*(*(v30 - 8) + 48))(v28, 1, v30);
    sub_1D5B87C84(v28, &qword_1EDF45B00, v29);
    if (v31 == 1 && *(a1 + v5[6]) == 6 && !*(a1 + v5[7] + 8))
    {
      v32 = v16;
      sub_1D5B759E4(a1 + v5[8], v24, &qword_1EDF452E0, type metadata accessor for FormatThumbnail);
      v33 = type metadata accessor for FormatThumbnail();
      v34 = (*(*(v33 - 8) + 48))(v24, 1, v33);
      sub_1D5B87C84(v24, &qword_1EDF452E0, type metadata accessor for FormatThumbnail);
      if (v34 == 1)
      {
        v35 = MEMORY[0x1E6968FB0];
        sub_1D5B759E4(a1 + v5[9], v32, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        v36 = sub_1D72585BC();
        v45 = *(*(v36 - 8) + 48);
        v37 = v45(v32, 1, v36);
        sub_1D5B87C84(v32, &qword_1EDF45B40, v35);
        if (v37 == 1 && v45(v48, 1, v36) == 1)
        {
          return swift_unknownObjectRetain();
        }
      }
    }
  }

  sub_1D5CE50C4();
  sub_1D5B759E4(a1 + v5[8], v20, &qword_1EDF452E0, type metadata accessor for FormatThumbnail);
  v38 = sub_1D5CE5110(v20, v46);
  sub_1D5CE5788(a1, v8);
  sub_1D5B759E4(v48, v12, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v39 = objc_allocWithZone(type metadata accessor for FormatArticleOverridesMetadata());
  v40 = v38;
  v41 = sub_1D5CE5950(v8, v38, v12);
  v42 = FCAssignSingleHeadlineMetadata();

  result = v42;
  if (!v42)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

unint64_t sub_1D5CE50C4()
{
  result = qword_1EDF1A7A8;
  if (!qword_1EDF1A7A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF1A7A8);
  }

  return result;
}

id sub_1D5CE5110(uint64_t a1, void *a2)
{
  sub_1D5CE5734(0, qword_1EDF44EE8, type metadata accessor for FormatThumbnailImage);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v42 - v6;
  sub_1D5CE5734(0, &qword_1EDF452E0, type metadata accessor for FormatThumbnail);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v42 - v10;
  v12 = type metadata accessor for FormatThumbnail();
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CE56C8(a1, v11, &qword_1EDF452E0, type metadata accessor for FormatThumbnail);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D5CE55E8(a1);

    sub_1D5CE55E8(v11);
    return 0;
  }

  sub_1D6E0DFB4(v11, v16);
  if (sub_1D5EFA80C())
  {
    sub_1D5CE55E8(a1);

    sub_1D6E0E064(v16);
    return 0;
  }

  if (*(v16 + 9))
  {
    v18 = sub_1D726203C();
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_opt_self();
  v51 = [v19 nullableColorWithHexString_];

  if (*(v16 + 5))
  {
    v20 = sub_1D726203C();
  }

  else
  {
    v20 = 0;
  }

  v50 = [v19 nullableColorWithHexString_];

  if (*(v16 + 3))
  {
    v21 = sub_1D726203C();
  }

  else
  {
    v21 = 0;
  }

  v49 = [v19 nullableColorWithHexString_];

  v22 = *(v16 + 7);
  v48 = a1;
  if (v22)
  {
    v23 = sub_1D726203C();
  }

  else
  {
    v23 = 0;
  }

  v46 = [v19 nullableColorWithHexString_];

  v24 = *v16;
  if (v16[8])
  {
    v24 = 0;
  }

  v47 = v24;
  v44 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1D6E0E018();
  sub_1D5CE56C8(&v16[v12[9]], v7, qword_1EDF44EE8, type metadata accessor for FormatThumbnailImage);
  v25 = a2;
  v45 = sub_1D5DFA138(v7, v25);
  sub_1D5CE56C8(&v16[v12[10]], v7, qword_1EDF44EE8, type metadata accessor for FormatThumbnailImage);
  v26 = v25;
  v27 = sub_1D5DFA138(v7, v26);
  sub_1D5CE56C8(&v16[v12[11]], v7, qword_1EDF44EE8, type metadata accessor for FormatThumbnailImage);
  v28 = v26;
  v29 = sub_1D5DFA138(v7, v28);
  v43 = v29;
  sub_1D5CE56C8(&v16[v12[12]], v7, qword_1EDF44EE8, type metadata accessor for FormatThumbnailImage);
  v30 = v28;
  v31 = sub_1D5DFA138(v7, v30);
  sub_1D5CE56C8(&v16[v12[13]], v7, qword_1EDF44EE8, type metadata accessor for FormatThumbnailImage);
  v32 = v30;
  v33 = sub_1D5DFA138(v7, v32);
  v40 = v27;
  v41 = v29;
  v34 = v27;
  v35 = v45;
  v37 = v50;
  v36 = v51;
  v38 = v49;
  v39 = v46;
  v47 = [v44 initWithTextColor:v51 backgroundColor:v50 accentColor:v49 primaryColor:v46 focalFrame:v47 lowQualityImage:v45 defaultQualityImage:v40 mediumQualityImage:v41 highQualityImage:v31 ultraQualityImage:v33];

  sub_1D5CE55E8(v48);
  sub_1D6E0E064(v16);
  return v47;
}

uint64_t sub_1D5CE55E8(uint64_t a1)
{
  sub_1D5CE5734(0, &qword_1EDF452E0, type metadata accessor for FormatThumbnail);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5CE5660(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CE56C8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5CE5734(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D5CE5734(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5CE5788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatArticleOverrides();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for FormatArticleOverridesMetadata()
{
  result = qword_1EDF20978;
  if (!qword_1EDF20978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5CE5838()
{
  sub_1D5B55010(319, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_1D5B55010(319, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id sub_1D5CE5950(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = a1[1];
  v10 = &v4[OBJC_IVAR____TtC8NewsFeedP33_956832B3628B6135B83D78176B8866FE30FormatArticleOverridesMetadata_title];
  *v10 = *a1;
  *(v10 + 1) = v9;
  v11 = type metadata accessor for FormatArticleOverrides();
  sub_1D5B759E4(a1 + v11[5], &v4[OBJC_IVAR____TtC8NewsFeedP33_956832B3628B6135B83D78176B8866FE30FormatArticleOverridesMetadata_displayDate], &qword_1EDF45B00, MEMORY[0x1E6969530]);
  if (*(a1 + v11[6]) <= 2u)
  {
    if (!*(a1 + v11[6]))
    {
      v13 = 0xE400000000000000;
      v12 = 1701736302;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (*(a1 + v11[6]) <= 4u || (v12 = 0, v13 = 0, *(a1 + v11[6]) == 5))
  {
LABEL_7:
    v12 = sub_1D726207C();
  }

LABEL_8:
  v14 = &v4[OBJC_IVAR____TtC8NewsFeedP33_956832B3628B6135B83D78176B8866FE30FormatArticleOverridesMetadata_storyType];
  *v14 = v12;
  v14[1] = v13;
  v15 = (a1 + v11[7]);
  v16 = *v15;
  v17 = v15[1];
  v18 = &v4[OBJC_IVAR____TtC8NewsFeedP33_956832B3628B6135B83D78176B8866FE30FormatArticleOverridesMetadata_shortExcerpt];
  *v18 = v16;
  *(v18 + 1) = v17;
  *&v4[OBJC_IVAR____TtC8NewsFeedP33_956832B3628B6135B83D78176B8866FE30FormatArticleOverridesMetadata_formatThumbnail] = a2;
  v19 = MEMORY[0x1E6968FB0];
  sub_1D5B759E4(a3, &v4[OBJC_IVAR____TtC8NewsFeedP33_956832B3628B6135B83D78176B8866FE30FormatArticleOverridesMetadata_routeURL], &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v22.receiver = v4;
  v22.super_class = ObjectType;

  v20 = objc_msgSendSuper2(&v22, sel_init);
  sub_1D5B87C84(a3, &qword_1EDF45B40, v19);
  sub_1D5CE5B38(a1);
  return v20;
}

uint64_t sub_1D5CE5B38(uint64_t a1)
{
  v2 = type metadata accessor for FormatArticleOverrides();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D5CE5BB0(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_1D726203C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1D5CE5C1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D5CE5C7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D5CE5CCC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5CE5C7C(255, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5CE5D50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B58D88();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5CE5DB0()
{
  if (!qword_1EDF1B008)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B008);
    }
  }
}

unint64_t sub_1D5CE5E00()
{
  result = qword_1EDF1B000;
  if (!qword_1EDF1B000)
  {
    sub_1D5CE5DB0();
    sub_1D5CE5E78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B000);
  }

  return result;
}

unint64_t sub_1D5CE5E78()
{
  result = qword_1EDF24250;
  if (!qword_1EDF24250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24250);
  }

  return result;
}

void sub_1D5CE5ECC()
{
  if (!qword_1EDF25040)
  {
    sub_1D5CE6390();
    sub_1D5CE63E4();
    sub_1D5CE64E8();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25040);
    }
  }
}

uint64_t FormatTextNodeAlternative.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  sub_1D5CE62E4();
  v7 = v6;
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CE5ECC();
  sub_1D5B58B84(&qword_1EDF25048, sub_1D5CE5ECC);
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

  v13 = v30;
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

      v22 = sub_1D661384C();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v10, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  v31 = 0uLL;
  v32 = 0;
  v17 = sub_1D72642BC();
  v19 = v18;
  v29 = v17;
  v31 = xmmword_1D728CF30;
  v32 = 0;
  sub_1D5C6F1D8();
  sub_1D726431C();
  v25 = v7;
  v26 = v13;
  v27 = v33;
  v31 = xmmword_1D7297410;
  v32 = 0;
  sub_1D5CE65B0();
  sub_1D726431C();
  (*(v26 + 8))(v10, v25);
  v28 = v33;
  *a2 = v29;
  a2[1] = v19;
  a2[2] = v27;
  a2[3] = v28;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CE62E4()
{
  if (!qword_1EDF19F30)
  {
    sub_1D5CE5ECC();
    sub_1D5B58B84(&qword_1EDF25048, sub_1D5CE5ECC);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19F30);
    }
  }
}

unint64_t sub_1D5CE6390()
{
  result = qword_1EDF24268;
  if (!qword_1EDF24268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24268);
  }

  return result;
}

unint64_t sub_1D5CE63E4()
{
  result = qword_1EDF24270;
  if (!qword_1EDF24270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24270);
  }

  return result;
}

unint64_t sub_1D5CE643C()
{
  result = qword_1EDF24258;
  if (!qword_1EDF24258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24258);
  }

  return result;
}

unint64_t sub_1D5CE6494()
{
  result = qword_1EDF24260;
  if (!qword_1EDF24260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24260);
  }

  return result;
}

unint64_t sub_1D5CE64E8()
{
  result = qword_1EDF24278[0];
  if (!qword_1EDF24278[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF24278);
  }

  return result;
}

uint64_t sub_1D5CE653C()
{
  v1 = 0x696669746E656469;
  v2 = 0x6369676F6CLL;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x746E65746E6F63;
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

unint64_t sub_1D5CE65B0()
{
  result = qword_1EDF205A0;
  if (!qword_1EDF205A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF205A0);
  }

  return result;
}

uint64_t FormatTextNodeAlternativeLogic.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v33 - v9;
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
    *&v33 = v7;
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
          *(v21 + 16) = &unk_1F5117E00;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v33 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D5CE6B14();
    v34 = 0uLL;
    sub_1D726431C();
    a1 = v12;
    if (v36 > 1u)
    {
      v23 = v11;
      if (v36 == 2)
      {
        v36 = xmmword_1D7279980;
        sub_1D66C59C8();
        sub_1D726431C();
        (*(v33 + 8))(v10, v6);
        v26 = v34;
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        v25 = v27 | 0x8000000000000000;
      }

      else
      {
        v36 = xmmword_1D7279980;
        sub_1D66C59C8();
        sub_1D726431C();
        (*(v33 + 8))(v10, v6);
        v31 = v34;
        v32 = swift_allocObject();
        *(v32 + 16) = v31;
        v25 = v32 | 0xC000000000000000;
      }
    }

    else
    {
      v23 = v11;
      if (v36)
      {
        v34 = xmmword_1D7279980;
        sub_1D5CE6C98();
        sub_1D726431C();
        (*(v33 + 8))(v10, v6);
        v28 = v36;
        v29 = BYTE8(v36);
        v30 = swift_allocObject();
        *(v30 + 16) = v28;
        *(v30 + 24) = v29;
        v25 = v30 | 0x4000000000000000;
      }

      else
      {
        v36 = xmmword_1D7279980;
        sub_1D66C5A64();
        sub_1D726431C();
        (*(v33 + 8))(v10, v6);
        v33 = v34;
        v24 = v35;
        v25 = swift_allocObject();
        *(v25 + 16) = v33;
        *(v25 + 32) = v24;
      }
    }

    *v23 = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CE6B14()
{
  result = qword_1EDF205A8;
  if (!qword_1EDF205A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF205A8);
  }

  return result;
}

unint64_t sub_1D5CE6BC8()
{
  result = qword_1EDF205B0;
  if (!qword_1EDF205B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF205B0);
  }

  return result;
}

uint64_t sub_1D5CE6C1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CE6C4C();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CE6C4C()
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

unint64_t sub_1D5CE6C98()
{
  result = qword_1EDF205B8;
  if (!qword_1EDF205B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF205B8);
  }

  return result;
}

uint64_t sub_1D5CE6CEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5CE6D2C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1D5CE6DE8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, unint64_t *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
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

  v16 = v33;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_1D7264AFC();
  v18 = Dictionary<>.errorOnUnknownKeys.getter(v17);

  v20 = v34;
  v19 = v35;
  v21 = v14;
  if (v18)
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

      v28 = sub_1D6627E68(0x65756C6176, 0xE500000000000000, 0x726F74617265706FLL, 0xE800000000000000);
      sub_1D5E2D970();
      v15 = swift_allocError();
      *v29 = v27;
      *(v29 + 8) = v26;
      *(v29 + 16) = v28;
      *(v29 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v16 + 8))(v21, v20);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D5C35368();
  v36 = 0uLL;
  v37 = 0;
  sub_1D726431C();
  v25 = v38;
  v36 = xmmword_1D728CF30;
  v37 = 0;
  sub_1D5C5813C();
  sub_1D726431C();
  (*(v16 + 8))(v14, v20);
  v31 = v38;
  *v19 = v25;
  *(v19 + 8) = v31;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CE7168()
{
  if (!qword_1EDF24E70)
  {
    sub_1D5CE7280();
    sub_1D5CE72D4();
    sub_1D5CE73D8();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24E70);
    }
  }
}

void sub_1D5CE71EC()
{
  if (!qword_1EDF19E48)
  {
    sub_1D5CE7168();
    sub_1D5B58B84(&qword_1EDF24E78, sub_1D5CE7168);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19E48);
    }
  }
}

unint64_t sub_1D5CE7280()
{
  result = qword_1EDF205D0;
  if (!qword_1EDF205D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF205D0);
  }

  return result;
}

unint64_t sub_1D5CE72D4()
{
  result = qword_1EDF205D8;
  if (!qword_1EDF205D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF205D8);
  }

  return result;
}

unint64_t sub_1D5CE732C()
{
  result = qword_1EDF205C0;
  if (!qword_1EDF205C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF205C0);
  }

  return result;
}

unint64_t sub_1D5CE7384()
{
  result = qword_1EDF205C8;
  if (!qword_1EDF205C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF205C8);
  }

  return result;
}

unint64_t sub_1D5CE73D8()
{
  result = qword_1EDF205E0;
  if (!qword_1EDF205E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF205E0);
  }

  return result;
}

uint64_t sub_1D5CE7430()
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
    return 0x65756C6176;
  }
}

unint64_t sub_1D5CE74E8()
{
  result = qword_1EDF32470;
  if (!qword_1EDF32470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32470);
  }

  return result;
}

NewsFeed::FormatOperator_optional __swiftcall FormatOperator.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D5CE75A4()
{
  result = qword_1EDF2BE10;
  if (!qword_1EDF2BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BE10);
  }

  return result;
}

unint64_t sub_1D5CE7658()
{
  result = qword_1EDF2BE18;
  if (!qword_1EDF2BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BE18);
  }

  return result;
}

uint64_t sub_1D5CE76AC@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

unint64_t sub_1D5CE776C()
{
  result = qword_1EDF2BDF8;
  if (!qword_1EDF2BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BDF8);
  }

  return result;
}

NewsFeed::FormatTextAlignment_optional __swiftcall FormatTextAlignment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatEnumPropertyDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v75 = &v58 - v5;
  sub_1D5C4F6F8();
  v7 = v6;
  v73 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CE8280();
  v12 = v11;
  v76 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CE8314();
  sub_1D5B58B84(&qword_1EDF24EE8, sub_1D5CE8314);
  v16 = v77;
  sub_1D7264B0C();
  v17 = v16;
  if (v16)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v17);
    swift_willThrow();

    v37 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  v77 = v10;
  v18 = v76;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = sub_1D7264AFC();
  v20 = Dictionary<>.errorOnUnknownKeys.getter(v19);

  v21 = v12;
  v22 = v15;
  if (v20)
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
          goto LABEL_7;
        }
      }

      v29 = *(v25 - 2);
      v28 = *(v25 - 1);

      v30 = sub_1D661A744();
      sub_1D5E2D970();
      v31 = swift_allocError();
      *v32 = v29;
      *(v32 + 8) = v28;
      *(v32 + 16) = v30;
      v17 = v31;
      *(v32 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v18 + 8))(v22, v12);
      goto LABEL_10;
    }

LABEL_7:
  }

  v80 = 0uLL;
  v81 = 0;
  v26 = sub_1D72642BC();
  v72 = v27;
  v80 = xmmword_1D728CF30;
  v81 = 0;
  v33 = sub_1D72642BC();
  v71 = v34;
  v80 = xmmword_1D7297410;
  v81 = 0;
  v69 = sub_1D72642BC();
  v70 = v33;
  v36 = v35;
  v80 = xmmword_1D72BAA60;
  v81 = 0;
  v67 = sub_1D726422C();
  v68 = v26;
  v40 = v39;
  v80 = xmmword_1D72BAA70;
  v81 = 0;
  v65 = sub_1D72642BC();
  v66 = v41;
  v80 = xmmword_1D72BAA80;
  v81 = 0;
  v82 = sub_1D72642CC();
  v64 = v36;
  v80 = xmmword_1D72BAA90;
  v81 = 0;
  v62 = sub_1D726422C();
  v63 = v42;
  sub_1D5C34D84(0, &qword_1EDF43BC8, &type metadata for FormatTypeDefinition.Case, MEMORY[0x1E69E62F8]);
  v80 = xmmword_1D72BAAA0;
  v81 = 0;
  sub_1D5CE02B4();
  sub_1D726431C();
  v59 = v78;
  v58 = xmmword_1D72BAAB0;
  v80 = xmmword_1D72BAAB0;
  v81 = 0;
  v43 = sub_1D726434C();
  v61 = a1;
  v60 = v40;
  if (v43)
  {
    v78 = v58;
    v79 = 0;
    sub_1D726431C();
    v44 = v83;
  }

  else
  {
    v44 = 0;
  }

  v58 = xmmword_1D72BAAC0;
  v80 = xmmword_1D72BAAC0;
  v81 = 0;
  if (sub_1D726434C())
  {
    v78 = v58;
    v79 = 0;
    sub_1D5B58B84(&qword_1EDF3BE60, sub_1D5C4F6F8);
    v45 = v21;
    v46 = v22;
    sub_1D726431C();
    v47 = v7;
    v48 = v77;
    v49 = sub_1D725A74C();
    (*(v73 + 8))(v48, v47);
  }

  else
  {
    v46 = v15;
    v45 = v21;
    v49 = MEMORY[0x1E69E7CD0];
  }

  sub_1D725B76C();
  v80 = xmmword_1D72BAAD0;
  v81 = 0;
  sub_1D5B58B84(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58]);
  sub_1D726427C();
  (*(v18 + 8))(v46, v45);
  v50 = type metadata accessor for FormatEnumPropertyDefinition(0);
  v51 = v74;
  sub_1D5C4E944(v75, v74 + *(v50 + 56), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v52 = v72;
  *v51 = v68;
  *(v51 + 8) = v52;
  v53 = v71;
  *(v51 + 16) = v70;
  *(v51 + 24) = v53;
  v54 = v64;
  *(v51 + 32) = v69;
  *(v51 + 40) = v54;
  v55 = v60;
  *(v51 + 48) = v67;
  *(v51 + 56) = v55;
  v56 = v66;
  *(v51 + 64) = v65;
  *(v51 + 72) = v56;
  *(v51 + 80) = v82 & 1;
  v57 = v63;
  *(v51 + 88) = v62;
  *(v51 + 96) = v57;
  *(v51 + 104) = v59;
  *(v51 + 112) = v44;
  *(v51 + 120) = v49;
  v37 = v61;
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

void sub_1D5CE8280()
{
  if (!qword_1EDF19E80)
  {
    sub_1D5CE8314();
    sub_1D5B58B84(&qword_1EDF24EE8, sub_1D5CE8314);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19E80);
    }
  }
}