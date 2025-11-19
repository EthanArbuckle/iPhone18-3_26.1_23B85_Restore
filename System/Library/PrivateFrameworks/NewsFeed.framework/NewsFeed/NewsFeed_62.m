uint64_t sub_1D60DECCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a2;
  v54 = sub_1D725A36C();
  v51 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v5);
  v56 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1D725A19C();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v7);
  v49 = &KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HeadlineViewLayout.Context(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &KeyPath - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&KeyPath - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D60DFD44(0, &qword_1EC8837C8, sub_1D60DF5CC, &type metadata for A12_V17.Layout, MEMORY[0x1E69D74B0]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &KeyPath - v22;
  v58 = a1;
  KeyPath = swift_getKeyPath();
  v24 = *MEMORY[0x1E69D7460];
  v50 = v20;
  v25 = *(v20 + 104);
  v48 = v23;
  v53 = v19;
  v25(v23, v24, v19);
  v26 = 0;
  v27 = *(a3 + 16);
  while (v27 != v26)
  {
    sub_1D5BE3ED8(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v26++, v13, type metadata accessor for HeadlineViewLayout.Context);
    v28 = *&v13[*(v9 + 20) + 32];
    sub_1D5BE792C(v13, type metadata accessor for HeadlineViewLayout.Context);
    if ((v28 & 4) == 0)
    {
      v29 = 2;
      goto LABEL_6;
    }
  }

  v29 = 0;
LABEL_6:
  v30 = v14[5];
  v31 = *MEMORY[0x1E69D7348];
  v32 = sub_1D725A34C();
  v33 = *(v32 - 8);
  (*(v33 + 104))(v17 + v30, v31, v32);
  (*(v33 + 56))(v17 + v30, 0, 1, v32);
  v34 = MEMORY[0x1E69DDC70];
  *v17 = v29;
  *(v17 + v14[6]) = 5;
  v35 = *v34;
  *(v17 + v14[7]) = v35;
  v36 = qword_1EDF386E8;
  v37 = v35;
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = v49;
  sub_1D725972C();

  v41 = MEMORY[0x1EEE9AC00](v39, v40);
  v42 = v51;
  *(&KeyPath - 4) = v52;
  *(&KeyPath - 3) = v17;
  v46 = v38;
  (*(v42 + 104))(v56, *MEMORY[0x1E69D7378], v54, v41);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v55 + 8))(v38, v57);
  sub_1D5BE792C(v17, type metadata accessor for HeadlineViewLayout.Options);
  v43 = MEMORY[0x1E69D6F38];
  sub_1D60DF73C(0, &qword_1EC8837E0, MEMORY[0x1E69D6F38]);
  sub_1D60DF6F8(&qword_1EC8837E8, &qword_1EC8837E0, v43);
  v46 = sub_1D5BE8850();
  v44 = v48;
  sub_1D7259A4C();

  return (*(v50 + 8))(v44, v53);
}

uint64_t sub_1D60DF304@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
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
  v16 = a4 + *(type metadata accessor for A12_V17.Bound() + 24);
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

unint64_t sub_1D60DF418(uint64_t a1)
{
  *(a1 + 8) = sub_1D60DF448();
  result = sub_1D60DF49C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D60DF448()
{
  result = qword_1EC883780;
  if (!qword_1EC883780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883780);
  }

  return result;
}

unint64_t sub_1D60DF49C()
{
  result = qword_1EC883788;
  if (!qword_1EC883788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883788);
  }

  return result;
}

uint64_t type metadata accessor for A12_V17.Bound()
{
  result = qword_1EC883798;
  if (!qword_1EC883798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D60DF564(uint64_t a1)
{
  result = sub_1D60DFDAC(&qword_1EC8837A8, type metadata accessor for A12_V17.Bound);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D60DF5CC()
{
  result = qword_1EC8837B8;
  if (!qword_1EC8837B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8837B8);
  }

  return result;
}

unint64_t sub_1D60DF620()
{
  result = qword_1EC8837C0;
  if (!qword_1EC8837C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8837C0);
  }

  return result;
}

uint64_t sub_1D60DF67C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5BD3920(255, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D60DF6F8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D60DF73C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D60DF73C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V17.Layout;
    v8[1] = &type metadata for A12_V17.Layout.Attributes;
    v8[2] = sub_1D60DF5CC();
    v8[3] = sub_1D60DF620();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D60DF7C0()
{
  if (!qword_1EDF1AC88)
  {
    sub_1D725A34C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1AC88);
    }
  }
}

void sub_1D60DF830()
{
  if (!qword_1EC8837F0)
  {
    sub_1D60DFD44(255, &qword_1EC8837F8, sub_1D60DF5CC, &type metadata for A12_V17.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8837F0);
    }
  }
}

uint64_t sub_1D60DF8D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D60DFD44(0, &qword_1EC883820, sub_1D60DFCF0, &type metadata for A12_V17.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60DFCF0();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D60DFDAC(&qword_1EDF1A740, type metadata accessor for CGRect);
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

unint64_t sub_1D60DFB94()
{
  result = qword_1EC883800;
  if (!qword_1EC883800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883800);
  }

  return result;
}

unint64_t sub_1D60DFBEC()
{
  result = qword_1EC883808;
  if (!qword_1EC883808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883808);
  }

  return result;
}

unint64_t sub_1D60DFC44()
{
  result = qword_1EC883810;
  if (!qword_1EC883810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883810);
  }

  return result;
}

unint64_t sub_1D60DFC9C()
{
  result = qword_1EC883818;
  if (!qword_1EC883818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883818);
  }

  return result;
}

unint64_t sub_1D60DFCF0()
{
  result = qword_1EC883828;
  if (!qword_1EC883828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883828);
  }

  return result;
}

void sub_1D60DFD44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D60DFDAC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D60DFE08()
{
  result = qword_1EC883838;
  if (!qword_1EC883838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883838);
  }

  return result;
}

unint64_t sub_1D60DFE60()
{
  result = qword_1EC883840;
  if (!qword_1EC883840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883840);
  }

  return result;
}

unint64_t sub_1D60DFEB8()
{
  result = qword_1EC883848;
  if (!qword_1EC883848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883848);
  }

  return result;
}

BOOL sub_1D60DFF0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = a1 + 32;
  do
  {
    v5 = v1;
    v6 = v1-- != 0;
    if (!v6 || *v2 >> 60)
    {
      break;
    }

    v7 = *(*v2 + 16);
    swift_beginAccess();
    if (*(v7 + 76) >> 9 <= 0x7EuLL)
    {
      v8 = *(v7 + 72) | (*(v7 + 76) << 32);
      if ((v8 >> 45) - 1 >= 5)
      {
        v9 = v8 >> 45 == 6 && v8 == 0xC00000000000;
        v10 = v9 && *(v7 + 32) == 1;
        if (!v10 || (*(v7 + 48) | *(v7 + 40) | *(v7 + 56) | *(v7 + 64)) != 0)
        {
          break;
        }
      }
    }

    v4 = sub_1D60DFF0C(v3);

    v2 += 8;
  }

  while ((v4 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_1D60E0028(void *a1, unint64_t a2)
{
  v5 = type metadata accessor for FormatDerivedDataOption();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v51 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v47 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B5C();
  switch(a2 >> 60)
  {
    case 1uLL:
      v35 = swift_projectBox();
      sub_1D5EB9A4C(v35, v8);
      LOBYTE(v50) = 1;
      sub_1D60E285C();
      v47 = 0uLL;
      sub_1D726443C();
      if (!v2)
      {
        v47 = xmmword_1D7279980;
        sub_1D5C75DC4(&qword_1EC8838D8, type metadata accessor for FormatDerivedDataOption);
        sub_1D726443C();
      }

      sub_1D60E13EC(v8);
      return (*(v51 + 8))(v13, v10);
    case 2uLL:
      v24 = a2 & 0xFFFFFFFFFFFFFFFLL;
      v26 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *(v24 + 24);
      v27 = *(v24 + 32);
      LOBYTE(v50) = 2;
      v47 = 0uLL;
      sub_1D60E285C();

      sub_1D726443C();
      if (!v2)
      {
        *&v47 = v26;
        *(&v47 + 1) = v25;
        v48 = v27;
        v50 = xmmword_1D7279980;
        sub_1D60E2A54();
        sub_1D726443C();
      }

      (*(v51 + 8))(v13, v10);

    case 3uLL:
      v28 = (a2 & 0xFFFFFFFFFFFFFFFLL);
      v30 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v29 = v28[3];
      v31 = v28[4];
      v32 = v28[5];
      LOBYTE(v50) = 3;
      v47 = 0uLL;
      sub_1D60E285C();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_29;
      }

      *&v47 = v30;
      *(&v47 + 1) = v29;
      v48 = v31;
      v49 = v32;
      v50 = xmmword_1D7279980;
      sub_1D60E2A00();
      goto LABEL_28;
    case 4uLL:
      v17 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v16 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v18 = 4;
      goto LABEL_31;
    case 5uLL:
      v36 = a2 & 0xFFFFFFFFFFFFFFFLL;
      v38 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v37 = *(v36 + 24);
      v39 = *(v36 + 32);
      LOBYTE(v50) = 5;
      v47 = 0uLL;
      sub_1D6007D98(v38, v37, v39);
      sub_1D60E285C();
      sub_1D726443C();
      if (!v2)
      {
        *&v47 = v38;
        *(&v47 + 1) = v37;
        LOBYTE(v48) = v39;
        v50 = xmmword_1D7279980;
        sub_1D60E29AC();
        sub_1D726443C();
      }

      (*(v51 + 8))(v13, v10);
      return sub_1D6007D9C(v38, v37, v39);
    case 6uLL:
      v41 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v40 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v42 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      LOBYTE(v50) = 6;
      v47 = 0uLL;
      sub_1D60E285C();

      sub_1D726443C();
      if (!v2)
      {
        *&v47 = v41;
        *(&v47 + 1) = v40;
        LOBYTE(v48) = v42;
        v50 = xmmword_1D7279980;
        sub_1D60E2958();
        sub_1D726443C();
      }

      goto LABEL_32;
    case 7uLL:
      v34 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v33 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(v50) = 7;
      v47 = 0uLL;
      sub_1D5CBA110(v34, v33);
      sub_1D60E285C();
      sub_1D726443C();
      if (!v2)
      {
        *&v47 = v34;
        *(&v47 + 1) = v33;
        v50 = xmmword_1D7279980;
        sub_1D5B4C410();
        sub_1D726443C();
      }

      (*(v51 + 8))(v13, v10);
      return sub_1D5CBA0FC(v34, v33);
    case 8uLL:
      v17 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v16 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v18 = 8;
      goto LABEL_31;
    case 9uLL:
      v19 = (a2 & 0xFFFFFFFFFFFFFFFLL);
      v21 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v20 = v19[3];
      v23 = v19[4];
      v22 = v19[5];
      LOBYTE(v50) = 9;
      v47 = 0uLL;
      sub_1D60E285C();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_29;
      }

      *&v47 = v21;
      *(&v47 + 1) = v20;
      v48 = v23;
      v49 = v22;
      v50 = xmmword_1D7279980;
      sub_1D60E2904();
      goto LABEL_28;
    case 0xAuLL:
      v43 = a2 & 0xFFFFFFFFFFFFFFFLL;
      v45 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v44 = *(v43 + 24);
      v46 = *(v43 + 32);
      LOBYTE(v50) = 10;
      v47 = 0uLL;
      sub_1D60E285C();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_29;
      }

      *&v47 = v45;
      *(&v47 + 1) = v44;
      v48 = v46;
      v50 = xmmword_1D7279980;
      sub_1D60E28B0();
LABEL_28:
      sub_1D726443C();
LABEL_29:
      (*(v51 + 8))(v13, v10);

    case 0xBuLL:
      v17 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v16 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v18 = 11;
LABEL_31:
      LOBYTE(v50) = v18;
      v47 = 0uLL;
      sub_1D60E285C();

      sub_1D726443C();
      if (v2)
      {
LABEL_32:
        (*(v51 + 8))(v13, v10);
      }

      else
      {
        *&v47 = v17;
        *(&v47 + 1) = v16;
        v50 = xmmword_1D7279980;
        sub_1D5C947A8();
        sub_1D5C75DC4(&qword_1EDF12710, sub_1D5C947A8);
        sub_1D726443C();

        return (*(v51 + 8))(v13, v10);
      }

    case 0xCuLL:
      LOBYTE(v50) = 12;
      sub_1D60E285C();
      v47 = 0uLL;
      sub_1D726443C();
      return (*(v51 + 8))(v13, v10);
    default:
      v14 = *(a2 + 16);
      LOBYTE(v50) = 0;
      v47 = 0uLL;
      sub_1D60E285C();

      sub_1D726443C();
      if (!v2)
      {
        *&v50 = v14;
        v47 = xmmword_1D7279980;
        sub_1D60E2AA8();
        sub_1D726443C();
      }

      (*(v51 + 8))(v13, v10);
  }
}

unint64_t sub_1D60E0930(char a1)
{
  result = 1752397168;
  switch(a1)
  {
    case 1:
      result = 0x4F656469766F7270;
      break;
    case 2:
      result = 0x42656469766F7270;
      break;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
      result = 0x636E657265666572;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x696F706B61657262;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D60E0AA4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D60E0930(*a1);
  v5 = v4;
  if (v3 == sub_1D60E0930(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D60E0B2C()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D60E0930(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D60E0B90()
{
  sub_1D60E0930(*v0);
  sub_1D72621EC();
}

uint64_t sub_1D60E0BE4()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D60E0930(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D60E0C44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D60E1B90();
  *a1 = result;
  return result;
}

unint64_t sub_1D60E0C74@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D60E0930(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D60E0D50@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1D60E1BDC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D60E0DA4(unint64_t a1)
{
  v2 = type metadata accessor for FormatDerivedDataOption();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 28770;
  switch(a1 >> 60)
  {
    case 1uLL:
      v17 = swift_projectBox();
      sub_1D5EB9A4C(v17, v5);
      *&v50 = 0;
      *(&v50 + 1) = 0xE000000000000000;
      sub_1D7263D4C();

      v48 = 0x2074706F20636564;
      v49 = 0xEA0000000000202DLL;
      MEMORY[0x1DA6F9910](*v5, *(v5 + 1));
      MEMORY[0x1DA6F9910](2251552, 0xE300000000000000);
      v18 = *(v5 + 4);
      v19 = v5[40];
      v50 = *(v5 + 1);
      v51 = v18;
      LOBYTE(v52) = v19;
      v20 = FormatDerivedDataOptionType.description.getter();
      MEMORY[0x1DA6F9910](v20);

      MEMORY[0x1DA6F9910](23842, 0xE200000000000000);
      v21 = v48;
      sub_1D60E13EC(v5);
      return v21;
    case 2uLL:
      v22 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v23 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      strcpy(&v50, "dec block - ");
      BYTE13(v50) = 0;
      HIWORD(v50) = -5120;

      MEMORY[0x1DA6F9910](v22, v23);

      goto LABEL_23;
    case 3uLL:
      v12 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v13 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v14 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      *&v50 = 0x2074706F20666572;
      *(&v50 + 1) = 0xEA0000000000202DLL;

      MEMORY[0x1DA6F9910](v12, v13);

      MEMORY[0x1DA6F9910](32, 0xE100000000000000);
      v48 = v14;
      sub_1D60E1398();
      v8 = sub_1D72644BC();
      v9 = v15;

      goto LABEL_22;
    case 4uLL:
      v29 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v30 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      *&v50 = 0x2072747320666572;
      *(&v50 + 1) = 0xEB0000000022202DLL;

      MEMORY[0x1DA6F9910](v29, v30);

      MEMORY[0x1DA6F9910](34, 0xE100000000000000);
      goto LABEL_24;
    case 5uLL:
      v31 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v32 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v33 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1D6007D98(v31, v32, v33);
      MEMORY[0x1DA6F9910](0x656C696620666572, 0xEB00000000202D20);
      *&v50 = v31;
      *(&v50 + 1) = v32;
      LOBYTE(v51) = v33;
      sub_1D7263F9C();
      sub_1D6007D9C(v31, v32, v33);
      return v48;
    case 6uLL:
      v24 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v26 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      *&v50 = 0;
      *(&v50 + 1) = 0xE000000000000000;

      sub_1D7263D4C();

      strcpy(&v50, "ref block - ");
      BYTE13(v50) = 0;
      HIWORD(v50) = -5120;

      MEMORY[0x1DA6F9910](v24, v25);
      swift_bridgeObjectRelease_n();
      if (v26)
      {
        v27 = 0x73776F72687420;
      }

      else
      {
        v27 = 0;
      }

      if (v26)
      {
        v28 = 0xE700000000000000;
      }

      else
      {
        v28 = 0xE000000000000000;
      }

      MEMORY[0x1DA6F9910](v27, v28);
      goto LABEL_23;
    case 7uLL:
      v34 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v35 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      *&v50 = 0;
      *(&v50 + 1) = 0xE000000000000000;
      sub_1D5CBA110(v34, v35);
      MEMORY[0x1DA6F9910](0x6D65746920666572, 0xEB00000000202D20);
      sub_1D609C9E4(v34, v35);
      sub_1D5CBA0FC(v34, v35);
      goto LABEL_24;
    case 8uLL:
      v8 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v9 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v16 = 0x2E7320666572;
      goto LABEL_20;
    case 9uLL:
      v8 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v9 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v16 = 0x2E6220666572;
LABEL_20:
      v10 = v16 & 0xFFFFFFFFFFFFLL | 0x6D69000000000000;
      v11 = 0xEC000000202D2067;
      goto LABEL_21;
    case 0xAuLL:
      v8 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v9 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v10 = 0x616D2E7320666572;
      v11 = 0xED0000202D206863;
      goto LABEL_21;
    case 0xBuLL:
      v8 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v9 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v10 = 0x6E662E6320666572;
      v11 = 0xEC000000202D2074;
LABEL_21:
      *&v50 = v10;
      *(&v50 + 1) = v11;

LABEL_22:
      MEMORY[0x1DA6F9910](v8, v9);
LABEL_23:

LABEL_24:
      result = v50;
      break;
    case 0xCuLL:
      return result;
    default:
      v7 = *(a1 + 16);
      swift_beginAccess();
      if (*(v7 + 76) >> 9 <= 0x7EuLL)
      {
        v36 = *(v7 + 72) | (*(v7 + 76) << 32);
        v38 = *(v7 + 56);
        v37 = *(v7 + 64);
        v40 = *(v7 + 40);
        v39 = *(v7 + 48);
        *&v50 = *(v7 + 32);
        v41 = v50;
        *(&v50 + 1) = v40;
        v51 = v39;
        v52 = v38;
        v53 = v37;
        v54 = v36;
        v55 = WORD2(v36);
        v46 = 0x202D20687370;
        v47 = 0xE600000000000000;

        sub_1D60E1448(v41, v40, v39, v38, v37, v36);
        v42 = sub_1D71F28AC();
        v44 = v43;
        sub_1D60E1478(v41, v40, v39, v38, v37, v36);
        MEMORY[0x1DA6F9910](v42, v44);

        result = v46;
      }

      else
      {
        result = 6845296;
      }

      break;
  }

  return result;
}

unint64_t sub_1D60E1398()
{
  result = qword_1EC883850;
  if (!qword_1EC883850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883850);
  }

  return result;
}

uint64_t sub_1D60E13EC(uint64_t a1)
{
  v2 = type metadata accessor for FormatDerivedDataOption();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D60E1448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (((a6 >> 41) & 0x7F) != 0x7F)
  {
    return sub_1D60E145C(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_1D60E145C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = (a6 >> 45) & 7;
  if (v6 <= 5)
  {
  }

  return result;
}

uint64_t sub_1D60E1478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (((a6 >> 41) & 0x7F) != 0x7F)
  {
    return sub_1D60E148C(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_1D60E148C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = (a6 >> 45) & 7;
  if (v6 <= 5)
  {
  }

  return result;
}

uint64_t sub_1D60E14A8(unint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for FormatDerivedDataOption();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v68[-v10];
  switch(a1 >> 60)
  {
    case 1uLL:
      if (a2 >> 60 != 1)
      {
        goto LABEL_81;
      }

      v49 = swift_projectBox();
      v50 = swift_projectBox();
      sub_1D5EB9A4C(v49, v11);
      sub_1D5EB9A4C(v50, v7);
      v16 = sub_1D69E18D4(v11, v7);
      sub_1D60E13EC(v7);
      sub_1D60E13EC(v11);
      return v16 & 1;
    case 2uLL:
      if (a2 >> 60 == 2)
      {
        v26 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v27 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v29 = a2 & 0xFFFFFFFFFFFFFFFLL;
        v30 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v31 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v32 = *(v29 + 32);
        v33 = v26 == v30 && v27 == v31;
        if (v33 || (sub_1D72646CC() & 1) != 0)
        {
          swift_beginAccess();
          v34 = v28[2];
          v69 = v28[1];
          v70 = v34;
          v71[0] = v28[3];
          *(v71 + 14) = *(v28 + 62);
          swift_beginAccess();
          v35 = v32[2];
          v72 = v32[1];
          v73 = v35;
          v74[0] = v32[3];
          *(v74 + 14) = *(v32 + 62);

          sub_1D5EB9AB0(&v69, v68);
          sub_1D5EB9AB0(&v72, v68);
          v36 = sub_1D6C4E038(&v69, &v72);
          sub_1D60E1A40(&v72);
          sub_1D60E1A40(&v69);

          if (v36)
          {
            goto LABEL_79;
          }
        }
      }

      goto LABEL_81;
    case 3uLL:
      if (a2 >> 60 != 3)
      {
        goto LABEL_81;
      }

      v37 = a1 & 0xFFFFFFFFFFFFFFFLL;
      v38 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v39 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v40 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v41 = *(v37 + 40);
      v42 = a2 & 0xFFFFFFFFFFFFFFFLL;
      v43 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v44 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v45 = *(v42 + 32);
      v46 = *(v42 + 40);
      v47 = v38 == v43 && v39 == v44;
      if (!v47 && (sub_1D72646CC() & 1) == 0)
      {
        goto LABEL_81;
      }

      v48 = sub_1D5E1E5A4(v40, v45);

      if ((v48 & 1) == 0 || v41 != v46)
      {
        goto LABEL_81;
      }

      goto LABEL_79;
    case 4uLL:
      if (a2 >> 60 != 4)
      {
        goto LABEL_81;
      }

      goto LABEL_64;
    case 5uLL:
      if (a2 >> 60 != 5)
      {
        goto LABEL_81;
      }

      v51 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20))
      {
        if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20) == 1)
        {
          if (v51 != 1)
          {
            goto LABEL_81;
          }
        }

        else if (v51 != 2)
        {
          goto LABEL_81;
        }
      }

      else if (*((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20))
      {
        goto LABEL_81;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) != *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) || *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) != *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18))
      {
        goto LABEL_78;
      }

      goto LABEL_79;
    case 6uLL:
      if (a2 >> 60 != 6)
      {
        goto LABEL_81;
      }

      v52 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v53 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v54 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v55 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v56 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v57 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v52 == v55 && v53 == v56)
      {
        if (v54 == v57)
        {
          goto LABEL_79;
        }
      }

      else if ((sub_1D72646CC() & 1) != 0 && ((v54 ^ v57) & 1) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_81;
    case 7uLL:
      if (a2 >> 60 != 7)
      {
        goto LABEL_81;
      }

      v72 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v69 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v16 = _s8NewsFeed14FormatItemKindO2eeoiySbAC_ACtFZ_0(&v72, &v69);
      return v16 & 1;
    case 8uLL:
      if (a2 >> 60 == 8)
      {
        goto LABEL_64;
      }

      goto LABEL_81;
    case 9uLL:
      if (a2 >> 60 != 9)
      {
        goto LABEL_81;
      }

      v17 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v18 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v20 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v19 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v21 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v22 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v24 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v23 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v25 = v17 == v21 && v18 == v22;
      if (!v25 && (sub_1D72646CC() & 1) == 0)
      {
        goto LABEL_81;
      }

      if (v19)
      {
        if (v23)
        {
          if (v20 == v24 && v19 == v23)
          {
            goto LABEL_79;
          }

LABEL_78:
          if (sub_1D72646CC())
          {
LABEL_79:
            v16 = 1;
            return v16 & 1;
          }
        }
      }

      else if (!v23)
      {
        goto LABEL_79;
      }

LABEL_81:
      v16 = 0;
      return v16 & 1;
    case 0xAuLL:
      if (a2 >> 60 != 10)
      {
        goto LABEL_81;
      }

      v59 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v60 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v61 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v62 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v63 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v64 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v65 = v59 == v62 && v60 == v63;
      if (!v65 && (sub_1D72646CC() & 1) == 0 || (sub_1D5BF1C0C(v61, v64) & 1) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_79;
    case 0xBuLL:
      if (a2 >> 60 != 11)
      {
        goto LABEL_81;
      }

LABEL_64:
      if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) && *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18))
      {
        goto LABEL_79;
      }

      return sub_1D72646CC();
    case 0xCuLL:
      if (a2 != 0xC000000000000000)
      {
        goto LABEL_81;
      }

      goto LABEL_79;
    default:
      if (a2 >> 60)
      {
        goto LABEL_81;
      }

      v12 = *(a1 + 16);
      v13 = *(a2 + 16);
      swift_beginAccess();
      v14 = v12[2];
      v69 = v12[1];
      v70 = v14;
      v71[0] = v12[3];
      *(v71 + 14) = *(v12 + 62);
      swift_beginAccess();
      v15 = v13[2];
      v72 = v13[1];
      v73 = v15;
      v74[0] = v13[3];
      *(v74 + 14) = *(v13 + 62);

      sub_1D5EB9AB0(&v69, v68);
      sub_1D5EB9AB0(&v72, v68);
      v16 = sub_1D6C4E038(&v69, &v72);
      sub_1D60E1A40(&v72);
      sub_1D60E1A40(&v69);

      return v16 & 1;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed28FormatDerivedDataInstructionO(void *a1)
{
  if (*a1 >> 62 == 3)
  {
    return (*a1 >> 3) + 12;
  }

  else
  {
    return *a1 >> 60;
  }
}

uint64_t sub_1D60E1AB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x74 && *(a1 + 8))
  {
    return (*a1 + 116);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x73)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D60E1B04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x73)
  {
    *result = a2 - 116;
    if (a3 >= 0x74)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x74)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1D60E1B54(void *result, uint64_t a2)
{
  if (a2 < 0xC)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (8 * (a2 - 12)) | 0xC000000000000000;
  }

  return result;
}

uint64_t sub_1D60E1B90()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D60E1BDC(void *a1)
{
  v3 = type metadata accessor for FormatDerivedDataOption();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v50[-v11 - 16];
  v13 = a1[3];
  v53 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v1)
  {
    sub_1D60E24FC();
    *v50 = 0uLL;
    sub_1D726431C();
    switch(v52)
    {
      case 1:
        *v50 = xmmword_1D7279980;
        sub_1D5C75DC4(&qword_1EC883890, type metadata accessor for FormatDerivedDataOption);
        sub_1D726431C();
        (*(v9 + 8))(v12, v8);
        v34 = swift_allocBox();
        sub_1D60E27A4(v6, v35);
        v14 = v34 | 0x1000000000000000;
        break;
      case 2:
        v52 = xmmword_1D7279980;
        sub_1D60E26F4();
        sub_1D726431C();
        (*(v9 + 8))(v12, v8);
        v26 = *v50;
        v49 = *&v50[8];
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        *(v27 + 24) = v49;
        v14 = v27 | 0x2000000000000000;
        break;
      case 3:
        v52 = xmmword_1D7279980;
        sub_1D60E26A0();
        sub_1D726431C();
        (*(v9 + 8))(v12, v8);
        v28 = *v50;
        v29 = v51;
        v49 = *&v50[8];
        v30 = swift_allocObject();
        *(v30 + 16) = v28;
        *(v30 + 24) = v49;
        *(v30 + 40) = v29;
        v14 = v30 | 0x3000000000000000;
        break;
      case 4:
        sub_1D5C947A8();
        v52 = xmmword_1D7279980;
        sub_1D5C75DC4(&qword_1EDF419A8, sub_1D5C947A8);
        sub_1D726431C();
        (*(v9 + 8))(v12, v8);
        v21 = *&v50[8];
        v20 = *v50;
        v22 = swift_allocObject();
        *(v22 + 16) = v20;
        *(v22 + 24) = v21;
        v14 = v22 | 0x4000000000000000;
        break;
      case 5:
        v52 = xmmword_1D7279980;
        sub_1D60E264C();
        sub_1D726431C();
        (*(v9 + 8))(v12, v8);
        v37 = *&v50[8];
        v36 = *v50;
        v38 = v50[16];
        v39 = swift_allocObject();
        *(v39 + 16) = v36;
        *(v39 + 24) = v37;
        *(v39 + 32) = v38;
        v14 = v39 | 0x5000000000000000;
        break;
      case 6:
        v52 = xmmword_1D7279980;
        sub_1D60E25F8();
        sub_1D726431C();
        (*(v9 + 8))(v12, v8);
        v41 = *&v50[8];
        v40 = *v50;
        v42 = v50[16];
        v43 = swift_allocObject();
        *(v43 + 16) = v40;
        *(v43 + 24) = v41;
        *(v43 + 32) = v42;
        v14 = v43 | 0x6000000000000000;
        break;
      case 7:
        v52 = xmmword_1D7279980;
        sub_1D5B4CCC0();
        sub_1D726431C();
        (*(v9 + 8))(v12, v8);
        v32 = *&v50[8];
        v31 = *v50;
        v33 = swift_allocObject();
        *(v33 + 16) = v31;
        *(v33 + 24) = v32;
        v14 = v33 | 0x7000000000000000;
        break;
      case 8:
        sub_1D5C947A8();
        v52 = xmmword_1D7279980;
        sub_1D5C75DC4(&qword_1EDF419A8, sub_1D5C947A8);
        sub_1D726431C();
        (*(v9 + 8))(v12, v8);
        v47 = *&v50[8];
        v46 = *v50;
        v48 = swift_allocObject();
        *(v48 + 16) = v46;
        *(v48 + 24) = v47;
        v14 = v48 | 0x8000000000000000;
        break;
      case 9:
        v52 = xmmword_1D7279980;
        sub_1D60E25A4();
        sub_1D726431C();
        (*(v9 + 8))(v12, v8);
        v49 = *v50;
        v23 = *&v50[16];
        v24 = v51;
        v25 = swift_allocObject();
        *(v25 + 16) = v49;
        *(v25 + 32) = v23;
        *(v25 + 40) = v24;
        v14 = v25 | 0x9000000000000000;
        break;
      case 10:
        v52 = xmmword_1D7279980;
        sub_1D60E2550();
        sub_1D726431C();
        (*(v9 + 8))(v12, v8);
        v44 = *v50;
        v49 = *&v50[8];
        v45 = swift_allocObject();
        *(v45 + 16) = v44;
        *(v45 + 24) = v49;
        v14 = v45 | 0xA000000000000000;
        break;
      case 11:
        sub_1D5C947A8();
        v52 = xmmword_1D7279980;
        sub_1D5C75DC4(&qword_1EDF419A8, sub_1D5C947A8);
        sub_1D726431C();
        (*(v9 + 8))(v12, v8);
        v18 = *&v50[8];
        v17 = *v50;
        v19 = swift_allocObject();
        *(v19 + 16) = v17;
        *(v19 + 24) = v18;
        v14 = v19 | 0xB000000000000000;
        break;
      case 12:
        (*(v9 + 8))(v12, v8);
        v14 = 0xC000000000000000;
        break;
      default:
        *v50 = xmmword_1D7279980;
        sub_1D60E2808();
        sub_1D726431C();
        (*(v9 + 8))(v12, v8);
        v16 = v52;
        v14 = swift_allocObject();
        *(v14 + 16) = v16;
        break;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v53);
  return v14;
}

unint64_t sub_1D60E24FC()
{
  result = qword_1EC883858;
  if (!qword_1EC883858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883858);
  }

  return result;
}

unint64_t sub_1D60E2550()
{
  result = qword_1EC883860;
  if (!qword_1EC883860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883860);
  }

  return result;
}

unint64_t sub_1D60E25A4()
{
  result = qword_1EC883868;
  if (!qword_1EC883868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883868);
  }

  return result;
}

unint64_t sub_1D60E25F8()
{
  result = qword_1EC883870;
  if (!qword_1EC883870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883870);
  }

  return result;
}

unint64_t sub_1D60E264C()
{
  result = qword_1EC883878;
  if (!qword_1EC883878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883878);
  }

  return result;
}

unint64_t sub_1D60E26A0()
{
  result = qword_1EC883880;
  if (!qword_1EC883880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883880);
  }

  return result;
}

unint64_t sub_1D60E26F4()
{
  result = qword_1EC883888;
  if (!qword_1EC883888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883888);
  }

  return result;
}

uint64_t objectdestroy_3Tm_0(void (*a1)(void))
{

  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D60E27A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatDerivedDataOption();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D60E2808()
{
  result = qword_1EC883898;
  if (!qword_1EC883898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883898);
  }

  return result;
}

unint64_t sub_1D60E285C()
{
  result = qword_1EC8838A0;
  if (!qword_1EC8838A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8838A0);
  }

  return result;
}

unint64_t sub_1D60E28B0()
{
  result = qword_1EC8838A8;
  if (!qword_1EC8838A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8838A8);
  }

  return result;
}

unint64_t sub_1D60E2904()
{
  result = qword_1EC8838B0;
  if (!qword_1EC8838B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8838B0);
  }

  return result;
}

unint64_t sub_1D60E2958()
{
  result = qword_1EC8838B8;
  if (!qword_1EC8838B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8838B8);
  }

  return result;
}

unint64_t sub_1D60E29AC()
{
  result = qword_1EC8838C0;
  if (!qword_1EC8838C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8838C0);
  }

  return result;
}

unint64_t sub_1D60E2A00()
{
  result = qword_1EC8838C8;
  if (!qword_1EC8838C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8838C8);
  }

  return result;
}

unint64_t sub_1D60E2A54()
{
  result = qword_1EC8838D0;
  if (!qword_1EC8838D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8838D0);
  }

  return result;
}

unint64_t sub_1D60E2AA8()
{
  result = qword_1EC8838E0;
  if (!qword_1EC8838E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8838E0);
  }

  return result;
}

unint64_t sub_1D60E2B10()
{
  result = qword_1EC8838E8;
  if (!qword_1EC8838E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8838E8);
  }

  return result;
}

unint64_t sub_1D60E2B64()
{
  result = qword_1EC8838F0;
  if (!qword_1EC8838F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8838F0);
  }

  return result;
}

uint64_t sub_1D60E2BC8(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = a3;
  sub_1D5C2FFF8(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B5C();
  sub_1D60E3678();
  v14 = 0;
  v15 = 0;
  sub_1D726443C();
  if (!v3)
  {
    v14 = a2;
    v15 = v16;
    v13 = xmmword_1D7279980;
    sub_1D60E36CC();
    sub_1D726443C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D60E2D8C()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D60E2DF0()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D60E2E3C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

void *sub_1D60E2F58@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D60E33C8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1D60E2FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
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

uint64_t sub_1D60E3038(uint64_t a1)
{
  v2 = sub_1D60E37EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60E3074(uint64_t a1)
{
  v2 = sub_1D60E37EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D60E30B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  sub_1D5C2FFF8(0, &qword_1EC883928, sub_1D60E37EC, &type metadata for DebugFormatSocketServerReloadMessage.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60E37EC();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v16;
  v11 = sub_1D72642BC();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v11;
  v10[1] = v13;
  return result;
}

uint64_t sub_1D60E3260(void *a1)
{
  sub_1D5C2FFF8(0, &qword_1EC883938, sub_1D60E37EC, &type metadata for DebugFormatSocketServerReloadMessage.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60E37EC();
  sub_1D7264B5C();
  sub_1D72643FC();
  return (*(v4 + 8))(v7, v3);
}

void *sub_1D60E33C8(void *a1)
{
  sub_1D5C2FFF8(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v10 = v9;
  sub_1D7264B0C();
  if (!v1)
  {
    sub_1D60E35D0();
    v13 = 0;
    v14 = 0;
    sub_1D726431C();
    v12 = xmmword_1D7279980;
    sub_1D60E3624();
    sub_1D726431C();
    (*(v5 + 8))(v8, v4);
    v10 = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

unint64_t sub_1D60E35D0()
{
  result = qword_1EC8838F8;
  if (!qword_1EC8838F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8838F8);
  }

  return result;
}

unint64_t sub_1D60E3624()
{
  result = qword_1EC883900;
  if (!qword_1EC883900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883900);
  }

  return result;
}

unint64_t sub_1D60E3678()
{
  result = qword_1EC883908;
  if (!qword_1EC883908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883908);
  }

  return result;
}

unint64_t sub_1D60E36CC()
{
  result = qword_1EC883910;
  if (!qword_1EC883910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883910);
  }

  return result;
}

unint64_t sub_1D60E3744()
{
  result = qword_1EC883918;
  if (!qword_1EC883918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883918);
  }

  return result;
}

unint64_t sub_1D60E3798()
{
  result = qword_1EC883920;
  if (!qword_1EC883920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883920);
  }

  return result;
}

unint64_t sub_1D60E37EC()
{
  result = qword_1EC883930;
  if (!qword_1EC883930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883930);
  }

  return result;
}

unint64_t sub_1D60E3854()
{
  result = qword_1EC883940;
  if (!qword_1EC883940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883940);
  }

  return result;
}

unint64_t sub_1D60E38AC()
{
  result = qword_1EC883948;
  if (!qword_1EC883948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883948);
  }

  return result;
}

unint64_t sub_1D60E3904()
{
  result = qword_1EC883950;
  if (!qword_1EC883950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883950);
  }

  return result;
}

uint64_t sub_1D60E3970@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v235 = a3;
  v197 = a5;
  v198 = a6;
  v234 = a2;
  v8 = sub_1D725ABCC();
  v188 = *(v8 - 8);
  v189 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v217 = v187 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D725789C();
  v195 = *(v11 - 8);
  v196 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v194 = (v187 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v219 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v187[1] = swift_getAssociatedConformanceWitness();
  v187[2] = AssociatedTypeWitness;
  v216 = swift_getAssociatedTypeWitness();
  v218 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216, v15);
  v193 = v187 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v191 = v187 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v190 = v187 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v192 = v187 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v215 = v187 - v28;
  sub_1D60E73F8(0, &qword_1EDF174A0, sub_1D60E72D0);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v213 = v187 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v212 = v187 - v34;
  sub_1D60E73F8(0, &qword_1EDF17420, sub_1D60E744C);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v220 = v187 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v211 = v187 - v40;
  sub_1D60E73F8(0, &qword_1EDF17470, sub_1D60E74FC);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v221 = v187 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v210 = v187 - v46;
  sub_1D60E73F8(0, &qword_1EDF17400, sub_1D60E7750);
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v223 = v187 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50, v51);
  v222 = v187 - v52;
  sub_1D5B99940(0, &qword_1EDF17410, &qword_1EDF17418, MEMORY[0x1E69E63B0], MEMORY[0x1E69D62F0]);
  MEMORY[0x1EEE9AC00](v53 - 8, v54);
  v224 = v187 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56, v57);
  v203 = v187 - v58;
  sub_1D60E73F8(0, &qword_1EDF17450, sub_1D5BA2088);
  MEMORY[0x1EEE9AC00](v59 - 8, v60);
  v62 = v187 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63, v64);
  v233 = v187 - v65;
  v66 = MEMORY[0x1E69E6158];
  v67 = MEMORY[0x1E69D62D0];
  sub_1D5B99940(0, &qword_1EDF17440, &qword_1EDF17448, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0]);
  MEMORY[0x1EEE9AC00](v68 - 8, v69);
  v71 = v187 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72, v73);
  v75 = v187 - v74;
  v214 = *a1;
  v202 = MEMORY[0x1E69D6200];
  sub_1D60E78B0(0, &qword_1EDF17448, v66, v67, MEMORY[0x1E69D6200]);
  v77 = v76;
  v78 = *(v76 - 8);
  v79 = *(v78 + 56);
  v229 = v79;
  v260 = v78 + 56;
  v237 = v75;
  v79(v75, 1, 1, v76);
  v231 = v71;
  v79(v71, 1, 1, v77);
  v201 = MEMORY[0x1E69D6208];
  sub_1D60E78B0(0, &qword_1EDF173B0, v66, v67, MEMORY[0x1E69D6208]);
  v81 = v80;
  swift_allocObject();
  sub_1D725C71C();
  v200 = MEMORY[0x1E69D6160];
  sub_1D60E78B0(0, &qword_1EDF17538, v66, v67, MEMORY[0x1E69D6160]);
  v83 = v82;
  swift_allocObject();
  v228 = sub_1D725C4BC();
  sub_1D5BA2088();
  v85 = v84;
  v207 = v84;
  v86 = *(v84 - 8);
  v87 = *(v86 + 56);
  v209 = (v86 + 56);
  v87(v233, 1, 1, v84);
  v208 = v87;
  v204 = v62;
  v87(v62, 1, 1, v85);
  sub_1D60E7800();
  v206 = v88;
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2374();
  v205 = v89;
  swift_allocObject();
  v227 = sub_1D725C4BC();
  v90 = v237;
  v91 = v77;
  v92 = v77;
  v93 = v229;
  v229(v237, 1, 1, v92);
  v94 = v231;
  v93(v231, 1, 1, v91);
  v230 = v81;
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v226 = sub_1D725C4BC();
  v232 = v91;
  v93(v90, 1, 1, v91);
  v93(v94, 1, 1, v91);
  swift_allocObject();
  v95 = v94;
  sub_1D725C71C();
  v199 = v83;
  swift_allocObject();
  v225 = sub_1D725C4BC();
  v96 = MEMORY[0x1E69E63B0];
  v97 = MEMORY[0x1E69D62F0];
  sub_1D60E78B0(0, &qword_1EDF17418, MEMORY[0x1E69E63B0], MEMORY[0x1E69D62F0], v202);
  v99 = v98;
  v100 = *(*(v98 - 8) + 56);
  v100(v203, 1, 1, v98);
  v100(v224, 1, 1, v99);
  sub_1D60E78B0(0, &qword_1EDF17398, v96, v97, v201);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E78B0(0, &qword_1EDF17520, v96, v97, v200);
  swift_allocObject();
  v224 = sub_1D725C4BC();
  sub_1D60E7750();
  v102 = v101;
  v103 = *(*(v101 - 8) + 56);
  v103(v222, 1, 1, v101);
  v103(v223, 1, 1, v102);
  sub_1D60E7904();
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E79B4();
  swift_allocObject();
  v223 = sub_1D725C4BC();
  v104 = v232;
  v105 = v229;
  v229(v237, 1, 1, v232);
  v105(v95, 1, 1, v104);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v222 = sub_1D725C4BC();
  v107 = v207;
  v106 = v208;
  v208(v233, 1, 1, v207);
  v106(v204, 1, 1, v107);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v233 = sub_1D725C4BC();
  sub_1D60E74FC(0);
  v109 = v108;
  v110 = *(*(v108 - 8) + 56);
  v110(v210, 1, 1, v108);
  v110(v221, 1, 1, v109);
  v209 = MEMORY[0x1E69D6208];
  sub_1D60E7A84(0, &qword_1EDF173C0, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E7A64(0);
  swift_allocObject();
  v221 = sub_1D725C4BC();
  sub_1D60E744C();
  v112 = v111;
  v113 = *(*(v111 - 8) + 56);
  v113(v211, 1, 1, v111);
  v113(v220, 1, 1, v112);
  sub_1D60E7B20();
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E7BD0();
  swift_allocObject();
  v220 = sub_1D725C4BC();
  v114 = v232;
  v105(v237, 1, 1, v232);
  v105(v231, 1, 1, v114);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v232 = sub_1D725C4BC();
  sub_1D60E72D0(0);
  v116 = v115;
  v117 = *(*(v115 - 8) + 56);
  v118 = v212;
  v117(v212, 1, 1, v115);
  v119 = v213;
  v117(v213, 1, 1, v116);
  sub_1D60E7CA0(0, &qword_1EDF173D0, v209);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E7C80(0);
  swift_allocObject();
  v231 = sub_1D725C4BC();
  v117(v118, 1, 1, v116);
  v117(v119, 1, 1, v116);
  v120 = v219;
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v230 = sub_1D725C4BC();
  sub_1D725C4CC();
  v121 = v235;
  v122 = v235[1];
  v246 = *v235;
  v247 = v122;

  sub_1D725C74C();

  sub_1D725C4CC();
  v246 = (v121[29])();
  v247 = v123;
  sub_1D725C74C();

  sub_1D725C4CC();
  v124 = v234[1];
  v246 = *v234;
  v247 = v124;

  sub_1D725C74C();

  sub_1D725C4CC();
  v125 = *(v120 + 24);
  v246 = *(v120 + 16);
  v247 = v125;

  sub_1D725C74C();

  sub_1D725C4CC();
  v246 = v121[28];
  LOBYTE(v247) = 0;
  sub_1D725C74C();

  sub_1D725C4CC();
  FeedJournalGroupResult.kind.getter(&v240);
  v126 = qword_1D729A210[v240];
  v246 = *&aNext_3[8 * v240];
  v247 = v126;
  sub_1D725C74C();

  sub_1D725C4CC();
  v246 = FeedJournalGroupResultOutput.reason.getter();
  v247 = v127;
  sub_1D725C74C();

  v229 = sub_1D725C4CC();
  v128 = v121[9];
  v129 = *(v128 + 16);
  v130 = MEMORY[0x1E69E7CC0];
  if (v129)
  {
    v259 = MEMORY[0x1E69E7CC0];
    sub_1D6998584(0, v129, 0);
    v130 = v259;
    v131 = v128 + 32;
    do
    {
      sub_1D5EAE324(v131, &v246);
      sub_1D5EAE324(&v246, &v240);
      __swift_project_boxed_opaque_existential_1(&v240, *(&v241 + 1));
      v132 = sub_1D72644BC();
      v260 = v133;
      if (v242[24])
      {
        if (v242[24] == 1)
        {
          v238 = 0x202C70696B53;
          v239 = 0xE600000000000000;
          MEMORY[0x1DA6F9910](*&v242[8], *&v242[16]);
          v134 = v239;
          v237 = v238;
          v135 = 2;
        }

        else
        {
          if (*&v242[8] == 0)
          {
            v135 = 0;
          }

          else
          {
            v135 = 3;
          }

          v136 = 0x746E552070696B53;
          if (*&v242[8] == 0)
          {
            v136 = 0x776F6C6C41;
          }

          v237 = v136;
          if (*&v242[8] == 0)
          {
            v134 = 0xE500000000000000;
          }

          else
          {
            v134 = 0xEF7473614C206C69;
          }
        }
      }

      else
      {
        v238 = 0x202C65766F6D6552;
        v239 = 0xE800000000000000;
        MEMORY[0x1DA6F9910](*&v242[8], *&v242[16]);
        v134 = v239;
        v237 = v238;
        v135 = 1;
      }

      sub_1D5EAE380(&v246);
      sub_1D5EAE380(&v240);
      v259 = v130;
      v138 = *(v130 + 16);
      v137 = *(v130 + 24);
      if (v138 >= v137 >> 1)
      {
        sub_1D6998584((v137 > 1), v138 + 1, 1);
        v130 = v259;
      }

      *(v130 + 16) = v138 + 1;
      v139 = v130 + 40 * v138;
      v140 = v260;
      *(v139 + 32) = v132;
      *(v139 + 40) = v140;
      *(v139 + 48) = v135;
      *(v139 + 56) = v237;
      *(v139 + 64) = v134;
      v131 += 64;
      --v129;
    }

    while (v129);
    v120 = v219;
  }

  v246 = v130;
  sub_1D60E751C();
  swift_allocObject();
  v246 = sub_1D725C88C();
  sub_1D725C74C();

  sub_1D725C4CC();
  v141 = v235;
  v246 = FeedJournalGroupResultOutput.score.getter();
  LOWORD(v247) = v142 & 1;
  sub_1D725C74C();

  sub_1D725C4CC();
  v143 = v141[3];
  v246 = v141[2];
  v247 = v143;

  sub_1D725C74C();

  v144 = v214;
  if (v214 >= 2)
  {
    sub_1D725C4CC();
    v145 = *(v144 + 16);
    if (v145)
    {
      v146 = *(v144 + 32);
    }

    else
    {
      v146 = 0;
    }

    v246 = v146;
    LOWORD(v247) = v145 == 0;
    sub_1D725C74C();

    sub_1D5C08648(v144);
  }

  else
  {
    sub_1D725C4CC();
    v246 = 0;
    LOWORD(v247) = 256;
    sub_1D725C74C();
  }

  sub_1D5C034F0((v141 + 16), &v246);
  v147 = v215;
  v148 = v216;
  v149 = v218;
  if (v254 > 2u)
  {
    if (v254 > 4u)
    {
      v152 = v230;
      v151 = v231;
      sub_1D5BC3420(&v246);
LABEL_40:
      sub_1D725C4CC();
      v246 = 1;
      sub_1D725C74C();

      sub_1D725C4CC();
      v246 = 1;
      sub_1D725C74C();

      sub_1D60E9D6C(v234);
      sub_1D60E9D6C(v141);
      goto LABEL_41;
    }

    if (v254 != 3)
    {
      sub_1D5BC3420(&v246);
      v152 = v230;
      v151 = v231;
      goto LABEL_40;
    }

    sub_1D60E9DC0();
    v150 = v191;
    goto LABEL_34;
  }

  if (!v254)
  {
    sub_1D60E9DC0();
    v150 = v192;
LABEL_34:
    if (swift_dynamicCast())
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  if (v254 == 1)
  {
    sub_1D60E9DC0();
    v150 = v190;
    goto LABEL_34;
  }

  sub_1D60E9DC0();
  v150 = v193;
  if (!swift_dynamicCast())
  {
LABEL_38:
    __swift_destroy_boxed_opaque_existential_1(&v246);
    v152 = v230;
    v151 = v231;
    goto LABEL_40;
  }

LABEL_35:
  (*(v149 + 32))(v147, v150, v148);
  __swift_destroy_boxed_opaque_existential_1(&v246);
  sub_1D725B06C();
  swift_allocObject();
  v153 = sub_1D72578DC();
  v154 = v194;
  *v194 = 0x7974696E69666E69;
  v154[1] = 0xE800000000000000;
  v154[2] = 0x74696E69666E692DLL;
  v154[3] = 0xE900000000000079;
  v154[4] = 7233902;
  v154[5] = 0xE300000000000000;
  (*(v195 + 104))(v154, *MEMORY[0x1E6967FE0], v196);
  sub_1D72578AC();
  v155 = v147;
  v156 = v148;
  v157 = v236;
  sub_1D725B04C();
  v236 = v157;
  if (!v157)
  {
    v260 = sub_1D725C4CC();
    v246 = 0x2D617461642E6ALL;
    v247 = 0xE700000000000000;
    v229 = *(*(swift_getAssociatedConformanceWitness() + 8) + 24);
    v164 = sub_1D725AA4C();
    MEMORY[0x1DA6F9910](v164);

    v165 = v120;
    v166 = v246;
    v167 = v247;
    v237 = v153;
    v169 = *(v165 + 16);
    v168 = *(v165 + 24);

    v170 = sub_1D725ABAC();
    v246 = sub_1D60F2034(v166, v167, v169, v168, v170, v171);
    v247 = v172;
    v248 = v173;
    sub_1D5BA1E10(0, &qword_1EDF174F8, sub_1D5B9FEBC, &type metadata for FeedBlobEntity, MEMORY[0x1E69D6178]);
    swift_allocObject();
    v246 = sub_1D725C56C();
    sub_1D725C74C();

    v260 = sub_1D725C4CC();
    v246 = 0x2D6C6F6F702E6ALL;
    v247 = 0xE700000000000000;
    v174 = sub_1D725AA4C();
    v176 = v175;
    v177 = v156;
    v178 = v217;
    (*(v218 + 8))(v155, v177);
    MEMORY[0x1DA6F9910](v174, v176);

    v218 = v246;
    v229 = v247;
    v179 = *(v165 + 24);
    v216 = *(v165 + 16);

    v246 = sub_1D725ABBC();
    sub_1D725B4FC();
    sub_1D5B9DF24(&unk_1EDF17B58, MEMORY[0x1E69D6878]);
    v180 = v236;
    v181 = sub_1D72578BC();
    v236 = v180;
    if (v180)
    {

      sub_1D60E9D6C(v234);

      (*(v188 + 8))(v178, v189);
      v158 = v235;
      goto LABEL_44;
    }

    v183 = v181;
    v184 = v182;

    v246 = sub_1D60F2034(v218, v229, v216, v179, v183, v184);
    v247 = v185;
    v248 = v186;
    swift_allocObject();
    v246 = sub_1D725C56C();
    sub_1D725C74C();

    sub_1D60E9D6C(v234);
    (*(v188 + 8))(v178, v189);
    sub_1D60E9D6C(v235);
    v152 = v230;
    v151 = v231;
LABEL_41:
    *&v240 = v228;
    *(&v240 + 1) = v227;
    *&v241 = v226;
    *(&v241 + 1) = v225;
    *v242 = v224;
    *&v242[8] = v223;
    *&v242[16] = v222;
    *&v242[24] = v233;
    *&v243 = v221;
    *(&v243 + 1) = v220;
    *&v244 = v232;
    *(&v244 + 1) = v151;
    v245 = v152;
    v246 = v228;
    v247 = v227;
    v248 = v226;
    v249 = v225;
    v250 = v224;
    v251 = v223;
    v252 = v222;
    v253 = v233;
    v254 = v221;
    v255 = v220;
    v256 = v232;
    v257 = v151;
    v258 = v152;
    sub_1D60E9C2C(&v240, &v238);
    result = sub_1D5FD67C8(&v246);
    v160 = v244;
    v161 = v198;
    *(v198 + 64) = v243;
    *(v161 + 80) = v160;
    *(v161 + 96) = v245;
    v162 = v241;
    *v161 = v240;
    *(v161 + 16) = v162;
    v163 = *&v242[16];
    *(v161 + 32) = *v242;
    *(v161 + 48) = v163;
    return result;
  }

  sub_1D60E9D6C(v234);
  (*(v218 + 8))(v147, v148);
  v158 = v141;
LABEL_44:
  sub_1D60E9D6C(v158);
  v246 = v228;
  v247 = v227;
  v248 = v226;
  v249 = v225;
  v250 = v224;
  v251 = v223;
  v252 = v222;
  v253 = v233;
  v254 = v221;
  v255 = v220;
  v256 = v232;
  v257 = v231;
  v258 = v230;
  return sub_1D5FD67C8(&v246);
}

uint64_t sub_1D60E5634()
{
  if (qword_1EC87D4E0 != -1)
  {
    swift_once();
  }

  qword_1EC9BA7C8 = qword_1EC881F18;
  unk_1EC9BA7D0 = unk_1EC881F20;
}

unint64_t sub_1D60E56A0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x64496E65736F6863;
      break;
    case 3:
      result = 0x6449726F73727563;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 1953459315;
      break;
    case 6:
      result = 0x746C75736572;
      break;
    case 7:
      result = 0x6E6F73616572;
      break;
    case 8:
      result = 0x73656C7572;
      break;
    case 9:
      result = 0x65726F6373;
      break;
    case 10:
      result = 0x64496769666E6F63;
      break;
    case 11:
      result = 0x74614470756F7267;
      break;
    case 12:
      result = 0x617461446C6F6F70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D60E57D8(void *a1)
{
  v3 = v1;
  sub_1D5BA1E10(0, &qword_1EC883998, sub_1D60E9AD0, &type metadata for FeedGroupJournalEntity.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60E9AD0();
  sub_1D7264B5C();
  v19 = *v3;
  v18 = 0;
  sub_1D60E78B0(0, &qword_1EDF17538, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0], MEMORY[0x1E69D6160]);
  sub_1D60E9C64();
  sub_1D726443C();
  if (!v2)
  {
    v17 = v3;
    v19 = v3[1];
    v18 = 1;
    sub_1D5BA2374();
    v12 = v11;
    v13 = sub_1D5B9DF24(&qword_1EC8828C0, sub_1D5BA2374);
    sub_1D726443C();
    v16[0] = v13;
    v16[1] = v12;
    v14 = v17;
    v19 = v17[2];
    v18 = 2;
    sub_1D726443C();
    v19 = v14[3];
    v18 = 3;
    sub_1D726443C();
    v19 = v14[4];
    v18 = 4;
    sub_1D60E78B0(0, &qword_1EDF17520, MEMORY[0x1E69E63B0], MEMORY[0x1E69D62F0], MEMORY[0x1E69D6160]);
    sub_1D60E9CE8();
    sub_1D726443C();
    v19 = v14[5];
    v18 = 5;
    sub_1D60E79B4();
    sub_1D5B9DF24(&qword_1EC8839A8, sub_1D60E79B4);
    sub_1D726443C();
    v19 = v14[6];
    v18 = 6;
    sub_1D726443C();
    v19 = v14[7];
    v18 = 7;
    sub_1D726443C();
    v19 = v14[8];
    v18 = 8;
    sub_1D60E7A64(0);
    sub_1D5B9DF24(&qword_1EC8839B0, sub_1D60E7A64);
    sub_1D726443C();
    v19 = v14[9];
    v18 = 9;
    sub_1D60E7BD0();
    sub_1D5B9DF24(&qword_1EC8839B8, sub_1D60E7BD0);
    sub_1D726443C();
    v19 = v14[10];
    v18 = 10;
    sub_1D726443C();
    v19 = v17[11];
    v18 = 11;
    sub_1D60E7C80(0);
    sub_1D5B9DF24(&qword_1EC8839C0, sub_1D60E7C80);
    sub_1D726443C();
    v19 = v17[12];
    v18 = 12;
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D60E5DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D60E7D0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D60E5DFC(uint64_t a1)
{
  v2 = sub_1D60E9AD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60E5E38(uint64_t a1)
{
  v2 = sub_1D60E9AD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D60E5E74()
{
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4FC();
  swift_allocObject();
  return sub_1D725C50C();
}

uint64_t sub_1D60E5FE4()
{
  if (qword_1EC87D520 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC9BA7C8;

  return v0;
}

uint64_t sub_1D60E604C(uint64_t a1)
{
  v2 = sub_1D5B9FD64();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1D60E6098(uint64_t a1)
{
  v2 = sub_1D5B9FD64();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1D60E60E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5B9FD64();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

__n128 sub_1D60E6148@<Q0>(uint64_t a1@<X8>)
{
  sub_1D60E637C(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

__n128 sub_1D60E61A4@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result.n128_u64[0] = sub_1D60E8114(a1, v7).n128_u64[0];
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_1D60E621C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5B9FD64();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1D60E6268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5B9FD64();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1D60E62BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5B9FD64();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

unint64_t sub_1D60E6328()
{
  result = qword_1EC883958;
  if (!qword_1EC883958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883958);
  }

  return result;
}

uint64_t sub_1D60E637C@<X0>(uint64_t *a1@<X8>)
{
  v123 = a1;
  sub_1D60E73F8(0, &qword_1EDF174A0, sub_1D60E72D0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v122 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v121 = &v97 - v6;
  sub_1D60E73F8(0, &qword_1EDF17420, sub_1D60E744C);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v120 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v119 = &v97 - v12;
  sub_1D60E73F8(0, &qword_1EDF17470, sub_1D60E74FC);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v116 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v115 = &v97 - v18;
  sub_1D60E73F8(0, &qword_1EDF17400, sub_1D60E7750);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v111 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = &v97 - v24;
  sub_1D5B99940(0, &qword_1EDF17410, &qword_1EDF17418, MEMORY[0x1E69E63B0], MEMORY[0x1E69D62F0]);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v112 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v104 = &v97 - v30;
  sub_1D60E73F8(0, &qword_1EDF17450, sub_1D5BA2088);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v127 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v97 - v36;
  v38 = MEMORY[0x1E69E6158];
  v39 = MEMORY[0x1E69D62D0];
  sub_1D5B99940(0, &qword_1EDF17440, &qword_1EDF17448, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0]);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v43 = &v97 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v97 - v46;
  v102 = MEMORY[0x1E69D6200];
  sub_1D60E78B0(0, &qword_1EDF17448, v38, v39, MEMORY[0x1E69D6200]);
  v49 = v48;
  v50 = *(v48 - 8);
  v51 = *(v50 + 56);
  v52 = v50 + 56;
  v98 = v47;
  v51(v47, 1, 1, v48);
  v124 = v43;
  v51(v43, 1, 1, v49);
  v101 = MEMORY[0x1E69D6208];
  sub_1D60E78B0(0, &qword_1EDF173B0, v38, v39, MEMORY[0x1E69D6208]);
  v54 = v53;
  swift_allocObject();
  sub_1D725C71C();
  v100 = MEMORY[0x1E69D6160];
  sub_1D60E78B0(0, &qword_1EDF17538, v38, v39, MEMORY[0x1E69D6160]);
  swift_allocObject();
  v118 = sub_1D725C4BC();
  sub_1D5BA2088();
  v56 = v55;
  v107 = v55;
  v57 = *(v55 - 8);
  v58 = *(v57 + 56);
  v108 = v58;
  v109 = (v57 + 56);
  v103 = v37;
  v58(v37, 1, 1, v55);
  v58(v127, 1, 1, v56);
  sub_1D60E7800();
  v106 = v59;
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2374();
  v105 = v60;
  swift_allocObject();
  v117 = sub_1D725C4BC();
  v61 = v98;
  v51(v98, 1, 1, v49);
  v62 = v124;
  v51(v124, 1, 1, v49);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v114 = sub_1D725C4BC();
  v125 = v49;
  v126 = v52;
  v51(v61, 1, 1, v49);
  v51(v62, 1, 1, v49);
  v99 = v54;
  swift_allocObject();
  v63 = v61;
  sub_1D725C71C();
  swift_allocObject();
  v113 = sub_1D725C4BC();
  v64 = MEMORY[0x1E69E63B0];
  v65 = MEMORY[0x1E69D62F0];
  sub_1D60E78B0(0, &qword_1EDF17418, MEMORY[0x1E69E63B0], MEMORY[0x1E69D62F0], v102);
  v67 = v66;
  v68 = *(*(v66 - 8) + 56);
  v68(v104, 1, 1, v66);
  v68(v112, 1, 1, v67);
  sub_1D60E78B0(0, &qword_1EDF17398, v64, v65, v101);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E78B0(0, &qword_1EDF17520, v64, v65, v100);
  swift_allocObject();
  v112 = sub_1D725C4BC();
  sub_1D60E7750();
  v70 = v69;
  v71 = *(*(v69 - 8) + 56);
  v71(v110, 1, 1, v69);
  v71(v111, 1, 1, v70);
  sub_1D60E7904();
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E79B4();
  swift_allocObject();
  v111 = sub_1D725C4BC();
  v72 = v125;
  v51(v63, 1, 1, v125);
  v73 = v124;
  v51(v124, 1, 1, v72);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v110 = sub_1D725C4BC();
  v74 = v107;
  v75 = v108;
  v108(v103, 1, 1, v107);
  v75(v127, 1, 1, v74);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v127 = sub_1D725C4BC();
  sub_1D60E74FC(0);
  v77 = v76;
  v78 = *(*(v76 - 8) + 56);
  v78(v115, 1, 1, v76);
  v78(v116, 1, 1, v77);
  v109 = MEMORY[0x1E69D6208];
  sub_1D60E7A84(0, &qword_1EDF173C0, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E7A64(0);
  swift_allocObject();
  v116 = sub_1D725C4BC();
  sub_1D60E744C();
  v80 = v79;
  v81 = *(*(v79 - 8) + 56);
  v81(v119, 1, 1, v79);
  v81(v120, 1, 1, v80);
  sub_1D60E7B20();
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E7BD0();
  swift_allocObject();
  v120 = sub_1D725C4BC();
  v82 = v125;
  v51(v63, 1, 1, v125);
  v51(v73, 1, 1, v82);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v83 = sub_1D725C4BC();
  sub_1D60E72D0(0);
  v85 = v84;
  v86 = *(*(v84 - 8) + 56);
  v87 = v121;
  v86(v121, 1, 1, v84);
  v88 = v122;
  v86(v122, 1, 1, v85);
  sub_1D60E7CA0(0, &qword_1EDF173D0, v109);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E7C80(0);
  swift_allocObject();
  v89 = sub_1D725C4BC();
  v86(v87, 1, 1, v85);
  v86(v88, 1, 1, v85);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  result = sub_1D725C4BC();
  v91 = v123;
  v92 = v117;
  *v123 = v118;
  v91[1] = v92;
  v93 = v113;
  v91[2] = v114;
  v91[3] = v93;
  v94 = v111;
  v91[4] = v112;
  v91[5] = v94;
  v95 = v127;
  v91[6] = v110;
  v91[7] = v95;
  v96 = v120;
  v91[8] = v116;
  v91[9] = v96;
  v91[10] = v83;
  v91[11] = v89;
  v91[12] = result;
  return result;
}

void sub_1D60E72F0()
{
  if (!qword_1EDF174F0)
  {
    sub_1D5BA1E10(255, &qword_1EDF174F8, sub_1D5B9FEBC, &type metadata for FeedBlobEntity, MEMORY[0x1E69D6178]);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF174F0);
    }
  }
}

unint64_t sub_1D60E7380()
{
  result = qword_1EDF174E8;
  if (!qword_1EDF174E8)
  {
    sub_1D60E72F0();
    sub_1D5BA1FF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF174E8);
  }

  return result;
}

void sub_1D60E73F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1D60E744C()
{
  if (!qword_1EDF17428)
  {
    v0 = MEMORY[0x1E69E63B0];
    sub_1D5B9946C(255, &unk_1EDF3C800, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    sub_1D5BA2138(&qword_1EDF04848, &unk_1EDF3C800, v0);
    v1 = sub_1D725C72C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17428);
    }
  }
}

void sub_1D60E751C()
{
  if (!qword_1EDF17358)
  {
    sub_1D5B9946C(255, &qword_1EDF051F0, &type metadata for FeedGroupEmitterRuleOutputDescription, MEMORY[0x1E69E62F8]);
    sub_1D60E7618(&qword_1EDF051E0, sub_1D60E76A8);
    sub_1D60E7618(&qword_1EDF051E8, sub_1D60E76FC);
    v0 = sub_1D725C8AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17358);
    }
  }
}

uint64_t sub_1D60E7618(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B9946C(255, &qword_1EDF051F0, &type metadata for FeedGroupEmitterRuleOutputDescription, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D60E76A8()
{
  result = qword_1EDF13120;
  if (!qword_1EDF13120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13120);
  }

  return result;
}

unint64_t sub_1D60E76FC()
{
  result = qword_1EDF13128;
  if (!qword_1EDF13128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13128);
  }

  return result;
}

void sub_1D60E7750()
{
  if (!qword_1EDF17408)
  {
    v0 = MEMORY[0x1E69E6530];
    sub_1D5B9946C(255, &qword_1EDF3C7C0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    sub_1D5BA2138(&qword_1EDF04700, &qword_1EDF3C7C0, v0);
    v1 = sub_1D725C72C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17408);
    }
  }
}

void sub_1D60E7800()
{
  if (!qword_1EDF173A8)
  {
    v0 = MEMORY[0x1E69E6158];
    sub_1D5B9946C(255, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1D5BA2138(&qword_1EDF054F8, &qword_1EDF43BE0, v0);
    v1 = sub_1D725C75C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF173A8);
    }
  }
}

void sub_1D60E78B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D60E7904()
{
  if (!qword_1EDF17380)
  {
    v0 = MEMORY[0x1E69E6530];
    sub_1D5B9946C(255, &qword_1EDF3C7C0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    sub_1D5BA2138(&qword_1EDF04700, &qword_1EDF3C7C0, v0);
    v1 = sub_1D725C75C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17380);
    }
  }
}

void sub_1D60E79B4()
{
  if (!qword_1EDF17508)
  {
    v0 = MEMORY[0x1E69E6530];
    sub_1D5B9946C(255, &qword_1EDF3C7C0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    sub_1D5BA2138(&qword_1EDF04700, &qword_1EDF3C7C0, v0);
    v1 = sub_1D725C4EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17508);
    }
  }
}

void sub_1D60E7A84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D60E751C();
    v7 = v6;
    v8 = sub_1D5B9DF24(&qword_1EDF17360, sub_1D60E751C);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D60E7B20()
{
  if (!qword_1EDF17390)
  {
    v0 = MEMORY[0x1E69E63B0];
    sub_1D5B9946C(255, &unk_1EDF3C800, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    sub_1D5BA2138(&qword_1EDF04848, &unk_1EDF3C800, v0);
    v1 = sub_1D725C75C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17390);
    }
  }
}

void sub_1D60E7BD0()
{
  if (!qword_1EDF17518)
  {
    v0 = MEMORY[0x1E69E63B0];
    sub_1D5B9946C(255, &unk_1EDF3C800, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    sub_1D5BA2138(&qword_1EDF04848, &unk_1EDF3C800, v0);
    v1 = sub_1D725C4EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17518);
    }
  }
}

void sub_1D60E7CA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1D60E72F0();
    v7 = v6;
    v8 = sub_1D60E7380();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D60E7D0C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64496E65736F6863 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449726F73727563 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73C96E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1953459315 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x73656C7572 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x64496769666E6F63 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_1D72646CC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x617461446C6F6F70 && a2 == 0xE800000000000000)
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

__n128 sub_1D60E8114@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v143 = a1;
  v127 = a2;
  sub_1D5BA1E10(0, &qword_1EC883960, sub_1D60E9AD0, &type metadata for FeedGroupJournalEntity.CodingKeys, MEMORY[0x1E69E6F48]);
  v129 = v2;
  v128 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v146 = &v126 - v4;
  sub_1D60E73F8(0, &qword_1EDF174A0, sub_1D60E72D0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v145 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v144 = &v126 - v10;
  sub_1D60E73F8(0, &qword_1EDF17420, sub_1D60E744C);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v149 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v142 = &v126 - v16;
  sub_1D60E73F8(0, &qword_1EDF17470, sub_1D60E74FC);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v141 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v140 = &v126 - v22;
  sub_1D60E73F8(0, &qword_1EDF17400, sub_1D60E7750);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v151 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v150 = &v126 - v28;
  sub_1D5B99940(0, &qword_1EDF17410, &qword_1EDF17418, MEMORY[0x1E69E63B0], MEMORY[0x1E69D62F0]);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v152 = &v126 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v136 = &v126 - v34;
  sub_1D60E73F8(0, &qword_1EDF17450, sub_1D5BA2088);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v162 = &v126 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v126 - v40;
  v42 = MEMORY[0x1E69E6158];
  v43 = MEMORY[0x1E69D62D0];
  sub_1D5B99940(0, &qword_1EDF17440, &qword_1EDF17448, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0]);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v47 = &v126 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v126 - v50;
  v134 = MEMORY[0x1E69D6200];
  sub_1D60E78B0(0, &qword_1EDF17448, v42, v43, MEMORY[0x1E69D6200]);
  v53 = v52;
  v54 = *(v52 - 8);
  v55 = *(v54 + 56);
  v163 = v55;
  v56 = v54 + 56;
  v159 = v51;
  v55(v51, 1, 1, v52);
  v130 = v47;
  v55(v47, 1, 1, v53);
  v133 = MEMORY[0x1E69D6208];
  sub_1D60E78B0(0, &qword_1EDF173B0, v42, v43, MEMORY[0x1E69D6208]);
  v58 = v57;
  swift_allocObject();
  sub_1D725C71C();
  v132 = MEMORY[0x1E69D6160];
  sub_1D60E78B0(0, &qword_1EDF17538, v42, v43, MEMORY[0x1E69D6160]);
  v60 = v59;
  swift_allocObject();
  v156 = sub_1D725C4BC();
  sub_1D5BA2088();
  v62 = v61;
  v138 = v61;
  v63 = *(v61 - 8);
  v64 = *(v63 + 56);
  v147 = v64;
  v65 = v63 + 56;
  v135 = v41;
  v64(v41, 1, 1, v61);
  v139 = v65;
  v64(v162, 1, 1, v62);
  sub_1D60E7800();
  v137 = v66;
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2374();
  v157 = v67;
  swift_allocObject();
  v155 = sub_1D725C4BC();
  v68 = v159;
  v69 = v163;
  v163(v159, 1, 1, v53);
  v70 = v130;
  v69(v130, 1, 1, v53);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v154 = sub_1D725C4BC();
  v160 = v53;
  v161 = v56;
  v69(v68, 1, 1, v53);
  v69(v70, 1, 1, v53);
  v131 = v58;
  swift_allocObject();
  v71 = v70;
  sub_1D725C71C();
  swift_allocObject();
  v153 = sub_1D725C4BC();
  v72 = MEMORY[0x1E69E63B0];
  v73 = MEMORY[0x1E69D62F0];
  sub_1D60E78B0(0, &qword_1EDF17418, MEMORY[0x1E69E63B0], MEMORY[0x1E69D62F0], v134);
  v75 = v74;
  v76 = *(*(v74 - 8) + 56);
  v76(v136, 1, 1, v74);
  v76(v152, 1, 1, v75);
  sub_1D60E78B0(0, &qword_1EDF17398, v72, v73, v133);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E78B0(0, &qword_1EDF17520, v72, v73, v132);
  v136 = v77;
  swift_allocObject();
  v152 = sub_1D725C4BC();
  sub_1D60E7750();
  v79 = v78;
  v80 = *(*(v78 - 8) + 56);
  v80(v150, 1, 1, v78);
  v80(v151, 1, 1, v79);
  sub_1D60E7904();
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E79B4();
  v134 = v81;
  swift_allocObject();
  v151 = sub_1D725C4BC();
  v82 = v159;
  v83 = v160;
  v84 = v163;
  v163(v159, 1, 1, v160);
  v85 = v71;
  v84(v71, 1, 1, v83);
  swift_allocObject();
  sub_1D725C71C();
  v158 = v60;
  swift_allocObject();
  v150 = sub_1D725C4BC();
  v86 = v138;
  v87 = v147;
  v147(v135, 1, 1, v138);
  v87(v162, 1, 1, v86);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v147 = sub_1D725C4BC();
  sub_1D60E74FC(0);
  v89 = v88;
  v90 = *(*(v88 - 8) + 56);
  v90(v140, 1, 1, v88);
  v90(v141, 1, 1, v89);
  v91 = MEMORY[0x1E69D6208];
  sub_1D60E7A84(0, &qword_1EDF173C0, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E7A64(0);
  v141 = v92;
  swift_allocObject();
  v162 = sub_1D725C4BC();
  sub_1D60E744C();
  v94 = v93;
  v95 = *(*(v93 - 8) + 56);
  v95(v142, 1, 1, v93);
  v95(v149, 1, 1, v94);
  sub_1D60E7B20();
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E7BD0();
  v142 = v96;
  swift_allocObject();
  v149 = sub_1D725C4BC();
  v97 = v160;
  v98 = v163;
  v163(v82, 1, 1, v160);
  v98(v85, 1, 1, v97);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v163 = sub_1D725C4BC();
  sub_1D60E72D0(0);
  v100 = v99;
  v101 = *(*(v99 - 8) + 56);
  v102 = v144;
  v101(v144, 1, 1, v99);
  v103 = v145;
  v101(v145, 1, 1, v100);
  sub_1D60E7CA0(0, &qword_1EDF173D0, v91);
  swift_allocObject();
  v104 = v103;
  sub_1D725C71C();
  sub_1D60E7C80(0);
  v106 = v105;
  swift_allocObject();
  v161 = sub_1D725C4BC();
  v101(v102, 1, 1, v100);
  v101(v104, 1, 1, v100);
  swift_allocObject();
  v107 = v143;
  sub_1D725C71C();
  swift_allocObject();
  v108 = sub_1D725C4BC();
  __swift_project_boxed_opaque_existential_1(v107, v107[3]);
  sub_1D60E9AD0();
  v109 = v146;
  v110 = v148;
  sub_1D7264B0C();
  if (v110)
  {
    v113 = v147;
    __swift_destroy_boxed_opaque_existential_1(v107);
    v172 = v156;
    v173 = v155;
    v174 = v154;
    v175 = v153;
    v176 = v152;
    v177 = v151;
    v178 = v150;
    v179 = v113;
    v180 = v162;
    v181 = v149;
    v182 = v163;
    v183 = v161;
    v184 = v108;
    sub_1D5FD67C8(&v172);
  }

  else
  {
    v160 = v106;
    LOBYTE(v164) = 0;
    v111 = sub_1D60E9B24();
    sub_1D726431C();

    v156 = v172;
    LOBYTE(v164) = 1;
    v112 = sub_1D5B9DF24(&qword_1EC882888, sub_1D5BA2374);
    sub_1D726431C();
    v159 = v112;

    v155 = v172;
    LOBYTE(v164) = 2;
    sub_1D726431C();

    v154 = v172;
    LOBYTE(v164) = 3;
    sub_1D726431C();
    v148 = v111;

    v153 = v172;
    LOBYTE(v164) = 4;
    sub_1D60E9BA8();
    sub_1D726431C();

    v152 = v172;
    LOBYTE(v164) = 5;
    sub_1D5B9DF24(&qword_1EC883978, sub_1D60E79B4);
    sub_1D726431C();

    v151 = v172;
    LOBYTE(v164) = 6;
    sub_1D726431C();

    v150 = v172;
    LOBYTE(v164) = 7;
    sub_1D726431C();

    v114 = v172;
    LOBYTE(v164) = 8;
    sub_1D5B9DF24(&qword_1EC883980, sub_1D60E7A64);
    sub_1D726431C();
    v115 = v107;

    v162 = v172;
    LOBYTE(v164) = 9;
    sub_1D5B9DF24(&qword_1EC883988, sub_1D60E7BD0);
    sub_1D726431C();

    v149 = v172;
    LOBYTE(v164) = 10;
    sub_1D726431C();

    v163 = v172;
    LOBYTE(v164) = 11;
    sub_1D5B9DF24(&qword_1EC883990, sub_1D60E7C80);
    sub_1D726431C();

    v161 = v172;
    v171 = 12;
    sub_1D726431C();
    (*(v128 + 8))(v109, v129);

    v160 = v185;
    v116 = v156;
    *&v164 = v156;
    v117 = v155;
    *(&v164 + 1) = v155;
    v118 = v154;
    *&v165 = v154;
    v119 = v153;
    *(&v165 + 1) = v153;
    v120 = v152;
    *&v166 = v152;
    *(&v166 + 1) = v151;
    v121 = v150;
    v167.n128_u64[0] = v150;
    v167.n128_u64[1] = v114;
    *&v168 = v162;
    *(&v168 + 1) = v149;
    *&v169 = v163;
    *(&v169 + 1) = v161;
    v170 = v185;
    sub_1D60E9C2C(&v164, &v172);
    __swift_destroy_boxed_opaque_existential_1(v115);
    v172 = v116;
    v173 = v117;
    v174 = v118;
    v175 = v119;
    v176 = v120;
    v177 = v151;
    v178 = v121;
    v179 = v114;
    v180 = v162;
    v181 = v149;
    v182 = v163;
    v183 = v161;
    v184 = v160;
    sub_1D5FD67C8(&v172);
    v122 = v169;
    v123 = v127;
    *(v127 + 64) = v168;
    *(v123 + 80) = v122;
    *(v123 + 96) = v170;
    v124 = v165;
    *v123 = v164;
    *(v123 + 16) = v124;
    result = v167;
    *(v123 + 32) = v166;
    *(v123 + 48) = result;
  }

  return result;
}

unint64_t sub_1D60E9AD0()
{
  result = qword_1EC883968;
  if (!qword_1EC883968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883968);
  }

  return result;
}

unint64_t sub_1D60E9B24()
{
  result = qword_1EC882880;
  if (!qword_1EC882880)
  {
    sub_1D60E78B0(255, &qword_1EDF17538, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0], MEMORY[0x1E69D6160]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882880);
  }

  return result;
}

unint64_t sub_1D60E9BA8()
{
  result = qword_1EC883970;
  if (!qword_1EC883970)
  {
    sub_1D60E78B0(255, &qword_1EDF17520, MEMORY[0x1E69E63B0], MEMORY[0x1E69D62F0], MEMORY[0x1E69D6160]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883970);
  }

  return result;
}

unint64_t sub_1D60E9C64()
{
  result = qword_1EC8828B8;
  if (!qword_1EC8828B8)
  {
    sub_1D60E78B0(255, &qword_1EDF17538, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0], MEMORY[0x1E69D6160]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8828B8);
  }

  return result;
}

unint64_t sub_1D60E9CE8()
{
  result = qword_1EC8839A0;
  if (!qword_1EC8839A0)
  {
    sub_1D60E78B0(255, &qword_1EDF17520, MEMORY[0x1E69E63B0], MEMORY[0x1E69D62F0], MEMORY[0x1E69D6160]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8839A0);
  }

  return result;
}

unint64_t sub_1D60E9DC0()
{
  result = qword_1EDF34950;
  if (!qword_1EDF34950)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF34950);
  }

  return result;
}

unint64_t sub_1D60E9E38()
{
  result = qword_1EC8839C8;
  if (!qword_1EC8839C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8839C8);
  }

  return result;
}

unint64_t sub_1D60E9E90()
{
  result = qword_1EC8839D0;
  if (!qword_1EC8839D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8839D0);
  }

  return result;
}

unint64_t sub_1D60E9EE8()
{
  result = qword_1EC8839D8;
  if (!qword_1EC8839D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8839D8);
  }

  return result;
}

uint64_t PuzzleBarButtonItems.allItems.getter()
{
  v3 = *v0;

  sub_1D6986F4C(v1);
  return v3;
}

uint64_t PuzzleBarButtonItem.toolbarItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PuzzleBarButtonItem(0) + 24);

  return sub_1D60E9FDC(v3, a1);
}

uint64_t sub_1D60E9FDC(uint64_t a1, uint64_t a2)
{
  sub_1D5B915C4(0, qword_1EDF10A30, type metadata accessor for PuzzleToolbarItem);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PuzzleBarButtonItem.init(identifier:barButtonItem:toolbarItem:iconThemeInverted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  v9 = type metadata accessor for PuzzleBarButtonItem(0);
  result = sub_1D60EA0DC(a4, a6 + *(v9 + 24));
  *(a6 + *(v9 + 28)) = a5;
  return result;
}

uint64_t sub_1D60EA0DC(uint64_t a1, uint64_t a2)
{
  sub_1D5B915C4(0, qword_1EDF10A30, type metadata accessor for PuzzleToolbarItem);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PuzzleToolbarItem.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PuzzleToolbarItem.template.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleToolbarItem(0) + 20);
  v4 = sub_1D725DF2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id PuzzleToolbarItem.toolbarItemType.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleToolbarItem(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_1D60EA258(v4, v5);
}

id sub_1D60EA258(uint64_t a1, void *a2)
{
  if (a1 < 0)
  {
  }

  else
  {

    return a2;
  }
}

uint64_t PuzzleToolbarItem.handler.getter()
{
  v1 = *(v0 + *(type metadata accessor for PuzzleToolbarItem(0) + 28));
  sub_1D5DEA510(v1);
  return v1;
}

__n128 PuzzleToolbarItem.init(identifier:template:toolbarItemType:handler:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v18 = *a4;
  v11 = a4[1].n128_u64[0];
  *a7 = a1;
  *(a7 + 1) = a2;
  v12 = type metadata accessor for PuzzleToolbarItem(0);
  v13 = v12[5];
  v14 = sub_1D725DF2C();
  (*(*(v14 - 8) + 32))(&a7[v13], a3, v14);
  v15 = &a7[v12[6]];
  result = v18;
  *v15 = v18;
  v15[1].n128_u64[0] = v11;
  v17 = &a7[v12[7]];
  *v17 = a5;
  *(v17 + 1) = a6;
  return result;
}

uint64_t static FeedItemFilter.apply(items:title:logger:filters:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v45 = a8;
  v40 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1D726279C();

  v42 = a4;
  v15 = sub_1D725C3FC();
  v16 = sub_1D7262EDC();
  v46 = a3;

  v43 = v14;
  v44 = a2;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v47.n128_u64[0] = v18;
    *v17 = 136446722;
    *(v17 + 4) = sub_1D5BC5100(a2, v46, &v47);
    *(v17 + 12) = 2050;
    type metadata accessor for FeedItemFilter();
    *(v17 + 14) = sub_1D726279C();

    *(v17 + 22) = 2050;
    *(v17 + 24) = v14;
    _os_log_impl(&dword_1D5B42000, v15, v16, "%{public}s applying %{public}ld filters to %{public}ld items.", v17, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1DA6FD500](v18, -1, -1);
    MEMORY[0x1DA6FD500](v17, -1, -1);
  }

  else
  {
  }

  type metadata accessor for FeedItemFilterResultEntry();
  v48 = sub_1D726275C();
  v47.n128_u64[0] = a5;
  MEMORY[0x1EEE9AC00](v48, v19);
  v38 = a6;
  v39 = a7;
  type metadata accessor for FeedItemFilter();
  v20 = sub_1D72627FC();
  v21 = type metadata accessor for FeedItemFilterApplicator();
  WitnessTable = swift_getWitnessTable();
  v24 = sub_1D5B874E4(sub_1D60EB7C8, v37, v20, v21, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v23);
  v47.n128_u64[0] = v40;
  MEMORY[0x1EEE9AC00](v24, v25);
  v37[0] = a6;
  v37[1] = a7;
  v38 = v26;
  v39 = &v48;
  sub_1D72627FC();

  swift_getWitnessTable();
  v27 = sub_1D7263E7C();

  v28 = v46;

  v29 = sub_1D725C3FC();
  v30 = sub_1D7262EDC();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v47.n128_u64[0] = v32;
    *v31 = 136446722;
    v33 = v44;
    *(v31 + 4) = sub_1D5BC5100(v44, v46, &v47);
    *(v31 + 12) = 2050;
    v34 = v43;
    *(v31 + 14) = v43;
    *(v31 + 22) = 2050;
    *(v31 + 24) = sub_1D726279C();

    _os_log_impl(&dword_1D5B42000, v29, v30, "%{public}s filtered %{public}ld items to %{public}ld items.", v31, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1DA6FD500](v32, -1, -1);
    v35 = v31;
    v28 = v46;
    MEMORY[0x1DA6FD500](v35, -1, -1);
  }

  else
  {

    v34 = v43;
    v33 = v44;
  }

  FeedItemFilterResultJournal.init(title:initialCount:entries:)(v33, v28, v34, v48, &v47);
  sub_1D7046D54(v27, &v47, v45);
}

uint64_t sub_1D60EA908(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1, v1);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v25 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v23 - v14;
  v16 = *(v8 + 16);
  v24 = v17;
  v16(&v23 - v14, v13);
  swift_getEnumCaseMultiPayload();
  (*(v4 + 32))(v6, v15, v3);
  v18 = *(a1 + 24);
  (*(v18 + 24))(&v26, v3, v18);
  (*(v4 + 8))(v6, v3);
  v23 = v26;
  v19 = v25;
  (v16)(v25, v24, a1);
  v20 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  *(v21 + 24) = v18;
  *(v21 + 32) = v23;
  (*(v8 + 32))(v21 + v20, v19, a1);
  return nullsub_1();
}

uint64_t sub_1D60EAC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a1;
  v50 = type metadata accessor for FeedItemFilterResultEntry();
  v10 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v11);
  v40 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v36 - v15;
  v17 = type metadata accessor for FeedItemFilter.Result();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v49 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v45 = &v36 - v23;
  v47 = a4;
  v48 = a5;
  type metadata accessor for FeedItemFilterApplicator();
  if (!sub_1D726279C())
  {
    return 1;
  }

  v36 = v16;
  v37 = v10;
  v38 = a3;
  v39 = v5;
  v24 = 0;
  v42 = (v18 + 16);
  v43 = v17;
  v41 = (v10 + 48);
  v44 = (v18 + 8);
  for (i = a2 + 40; ; i += 16)
  {
    v26 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v26 & 1) == 0)
    {
      break;
    }

    v28 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_11;
    }

    v29 = *(i - 8);

    v30 = v45;
    sub_1D67616C8(v46, v29);
    v31 = v43;
    v32 = v49;
    (*v42)(v49, v30, v43);
    if ((*v41)(v32, 1, v50) != 1)
    {
      v34 = v36;
      v33 = v37;
      v35 = v50;
      (*(v37 + 32))(v36, v49, v50);
      (*(v33 + 16))(v40, v34, v35);
      sub_1D72627FC();
      sub_1D72627BC();

      (*(v33 + 8))(v34, v35);
      (*v44)(v30, v31);
      return 0;
    }

    (*v44)(v30, v31);

    ++v24;
    if (v28 == sub_1D726279C())
    {
      return 1;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1D60EAFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a4;
  v29 = a5;
  v8 = type metadata accessor for FeedItemFilter();
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v25 = &v25 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v13);
  v15 = &v25 - v14;
  v16 = type metadata accessor for FeedItemFilterResultEntry();
  v30 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v25 - v18;
  v31 = a2;
  v32 = a3;
  type metadata accessor for FeedItemFilterMatcherApplicator();
  if (FeedItemFilterMatcherApplicator.matches(_:)())
  {
    v20 = v29;
    v21 = *(v30 + 56);

    return v21(v20, 1, 1, v16);
  }

  else
  {
    (*(v12 + 16))(v15, a1, AssociatedTypeWitness);
    v23 = v25;
    (*(v26 + 16))(v25, v28, v27);
    sub_1D6AB7DA8(v15, v23, v19);
    v24 = v29;
    (*(v30 + 32))(v29, v19, v16);
    return (*(v30 + 56))(v24, 0, 1, v16);
  }
}

uint64_t sub_1D60EB2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a4;
  v29 = a5;
  v8 = type metadata accessor for FeedItemFilter();
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v25 = &v25 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v13);
  v15 = &v25 - v14;
  v16 = type metadata accessor for FeedItemFilterResultEntry();
  v30 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v25 - v18;
  v31 = a2;
  v32 = a3;
  type metadata accessor for FeedItemFilterMatcherApplicator();
  if (FeedItemFilterMatcherApplicator.matches(_:)())
  {
    (*(v12 + 16))(v15, a1, AssociatedTypeWitness);
    v20 = v25;
    (*(v26 + 16))(v25, v28, v27);
    sub_1D6AB7DA8(v15, v20, v19);
    v21 = v29;
    (*(v30 + 32))(v29, v19, v16);
    return (*(v30 + 56))(v21, 0, 1, v16);
  }

  else
  {
    v23 = v29;
    v24 = *(v30 + 56);

    return v24(v23, 1, 1, v16);
  }
}

uint64_t FeedItemFilter.wrap<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17, v13);
  swift_getEnumCaseMultiPayload();
  (*(v8 + 32))(v10, v15, v7);
  FeedItemFilterMatcherType.wrap<A>(_:)(a1, a2, v7, a4);
  (*(v8 + 8))(v10, v7);
  type metadata accessor for FeedItemFilterWrapperMatcher();
  swift_getWitnessTable();
  type metadata accessor for FeedItemFilter();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D60EB7C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for FeedItemFilter();
  result = sub_1D60EA908(v2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D60EB850(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1D60EB95C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_1D60EBB38(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = *(type metadata accessor for FeedItemFilter() - 8);
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a2(a1, v7, v8, v9, v4, v5);
}

uint64_t sub_1D60EBC04()
{
  v0 = type metadata accessor for FeedItemFilterResultEntry();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1D60EBC60(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 - 8);
  v10 = *(v9 + 64);
  if (v8 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v9 + 80);
  v13 = *(*(AssociatedTypeWitness - 8) + 64) + v12;
  if (v11 - 1 >= a2)
  {
    goto LABEL_28;
  }

  v14 = v10 + (v13 & ~v12) + 1;
  v15 = 8 * v14;
  if (v14 > 3)
  {
    goto LABEL_7;
  }

  v18 = (((1 << v15) + a2 - v11) >> v15) + 1;
  if (HIWORD(v18))
  {
    v16 = *(a1 + v14);
    if (v16)
    {
      goto LABEL_15;
    }

LABEL_28:
    if (v8 < 0xFE)
    {
      v23 = *(((a1 + v13) & ~v12) + v10);
      if (v23 >= 2)
      {
        v22 = (v23 ^ 0xFF) + 1;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = (*(v7 + 48))(a1);
    }

    if (v22 >= 2)
    {
      return v22 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v18 > 0xFF)
  {
    v16 = *(a1 + v14);
    if (*(a1 + v14))
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  if (v18 < 2)
  {
    goto LABEL_28;
  }

LABEL_7:
  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_28;
  }

LABEL_15:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = v14;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return (v21 | v19) + v11;
}

void sub_1D60EBE84(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(v7 - 8) + 64);
  v11 = *(v8 + 64);
  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = v12 - 1;
  v14 = *(*(v7 - 8) + 80);
  v15 = v11 + v14;
  v16 = v10 + 1;
  v17 = ((v11 + v14) & ~v14) + v10 + 1;
  if (v12 - 1 >= a3)
  {
    v18 = 0;
    if (v13 < a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v18 = 1;
    if (v17 <= 3)
    {
      v19 = (((1 << (8 * v17)) + a3 - v12) >> (8 * v17)) + 1;
      v20 = HIWORD(v19);
      if (v19 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v19 >= 2)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      if (v20)
      {
        v18 = 4;
      }

      else
      {
        v18 = v22;
      }
    }

    if (v13 < a2)
    {
LABEL_16:
      v23 = a2 - v12;
      if (v17 < 4)
      {
        v24 = (v23 >> (8 * v17)) + 1;
        if (v17)
        {
          v25 = v23 & ~(-1 << (8 * v17));
          bzero(a1, v17);
          if (v17 != 3)
          {
            if (v17 == 2)
            {
              *a1 = v25;
              if (v18 > 1)
              {
LABEL_55:
                if (v18 == 2)
                {
                  *&a1[v17] = v24;
                }

                else
                {
                  *&a1[v17] = v24;
                }

                return;
              }
            }

            else
            {
              *a1 = v23;
              if (v18 > 1)
              {
                goto LABEL_55;
              }
            }

            goto LABEL_52;
          }

          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        if (v18 > 1)
        {
          goto LABEL_55;
        }
      }

      else
      {
        bzero(a1, v17);
        *a1 = v23;
        v24 = 1;
        if (v18 > 1)
        {
          goto LABEL_55;
        }
      }

LABEL_52:
      if (v18)
      {
        a1[v17] = v24;
      }

      return;
    }
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    *&a1[v17] = 0;
LABEL_31:
    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  if (!v18)
  {
    goto LABEL_31;
  }

  a1[v17] = 0;
  if (!a2)
  {
    return;
  }

LABEL_32:
  if (v9 < 0xFE)
  {
    v27 = (&a1[v15] & ~v14);
    if (a2 > 0xFD)
    {
      if (v16 <= 3)
      {
        v28 = ~(-1 << (8 * v16));
      }

      else
      {
        v28 = -1;
      }

      if (v10 != -1)
      {
        v29 = v28 & (a2 - 254);
        if (v16 <= 3)
        {
          v30 = v10 + 1;
        }

        else
        {
          v30 = 4;
        }

        bzero(v27, v16);
        if (v30 > 2)
        {
          if (v30 == 3)
          {
            *v27 = v29;
            v27[2] = BYTE2(v29);
          }

          else
          {
            *v27 = v29;
          }
        }

        else if (v30 == 1)
        {
          *v27 = v29;
        }

        else
        {
          *v27 = v29;
        }
      }
    }

    else
    {
      v27[v10] = ~a2;
    }
  }

  else
  {
    v26 = *(v8 + 56);

    v26(a1, a2 + 1);
  }
}

uint64_t FormatBoolean.value(contextLayoutOptions:)(uint64_t a1)
{
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatOption();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  if (*(v1 + 16))
  {
    v13 = *(v1 + 8);

    FormatOptionCollection.subscript.getter(v12, v13, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1D5D28248(v6, sub_1D5E04C00);
      type metadata accessor for FormatLayoutError();
      sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      *v14 = v12;
      v14[1] = v13;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      sub_1D5D2F2C4(v12, v13, 1);
      sub_1D5D247E0(v6, v11);
      v17 = *(v11 + 2);

      LOBYTE(v12) = sub_1D60ECADC(&v17, a1, v11);

      sub_1D5D28248(v11, type metadata accessor for FormatOption);
    }
  }

  return v12 & 1;
}

uint64_t FormatBoolean.value(context:)()
{
  sub_1D725A7EC();
  v0 = FormatBoolean.value(contextLayoutOptions:)(v2);

  return v0 & 1;
}

uint64_t FormatBoolean.init(value:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t FormatBoolean.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v27 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B3C();
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  if (v13)
  {
    if (qword_1EDF31EF8 != -1)
    {
      swift_once();
    }

    v16 = sub_1D725BD1C();
    v17 = __swift_project_value_buffer(v16, qword_1EDFFCDC8);
    (*(*(v16 - 8) + 16))(v6, v17, v16);
    type metadata accessor for FormatVersionRequirement.Value(0);
    v18 = swift_storeEnumTagMultiPayload();
    MEMORY[0x1EEE9AC00](v18, v19);
    v27[-2] = v11;
    v27[-1] = v12;
    v20 = v30;
    sub_1D5D2BEC4(v6, sub_1D60ECF00, &v27[-4], v14, v15);
    sub_1D5D28248(v6, type metadata accessor for FormatVersionRequirement);
    if (!v20)
    {
      v27[1] = 0x286E6F6974706FLL;
      v27[2] = 0xE700000000000000;
      MEMORY[0x1DA6F9910](v11, v12);
      MEMORY[0x1DA6F9910](41, 0xE100000000000000);
      __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
      sub_1D726473C();
    }
  }

  else
  {
    if (qword_1EDF31EF8 != -1)
    {
      swift_once();
    }

    v21 = sub_1D725BD1C();
    v22 = __swift_project_value_buffer(v21, qword_1EDFFCDC8);
    (*(*(v21 - 8) + 16))(v10, v22, v21);
    type metadata accessor for FormatVersionRequirement.Value(0);
    v23 = swift_storeEnumTagMultiPayload();
    MEMORY[0x1EEE9AC00](v23, v24);
    LOBYTE(v27[-2]) = v11 & 1;
    v25 = v30;
    sub_1D5D2BEC4(v10, sub_1D60ECF08, &v27[-4], v14, v15);
    sub_1D5D28248(v10, type metadata accessor for FormatVersionRequirement);
    if (!v25)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
      sub_1D726474C();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

unint64_t sub_1D60EC858(char a1)
{
  sub_1D7263D4C();

  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1DA6F9910](v2, v3);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0xD000000000000016;
}

unint64_t sub_1D60EC908(uint64_t a1, uint64_t a2)
{
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](a1, a2);
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t FormatBoolean.description.getter()
{
  v1 = *v0;
  if (v0[2])
  {
    MEMORY[0x1DA6F9910](v1, v0[1]);
    MEMORY[0x1DA6F9910](41, 0xE100000000000000);
    return 0x286E6F6974706FLL;
  }

  else if (v1)
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

uint64_t sub_1D60ECA48()
{
  v1 = *v0;
  if (v0[2])
  {
    MEMORY[0x1DA6F9910](v1, v0[1]);
    MEMORY[0x1DA6F9910](41, 0xE100000000000000);
    return 0x286E6F6974706FLL;
  }

  else if (v1)
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

uint64_t sub_1D60ECADC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a1 >> 60;
  if (((1 << v4) & 0x3EFE) != 0)
  {
    v6 = type metadata accessor for FormatLayoutError();
    sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    sub_1D5D2477C(a3, v7);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else if (v4)
  {
    v16[0] = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    swift_retain_n();

    v6 = sub_1D60ECADC(v16, a2, a3);
  }

  else
  {
    v6 = *(v3 + 16);
    v10 = *(v3 + 24);
    if (*(v10 + 16))
    {
      v11 = *(*(a2 + 40) + 16);
      swift_beginAccess();
      if (*(*(v11 + 16) + 16))
      {
        v15 = *(a2 + 56);

        v13 = sub_1D6F622E0(v12);
        sub_1D5B886D0(v13);
        v14 = v15;
      }

      else
      {

        v14 = sub_1D6E46E28();
      }

      v6 = sub_1D5FA1ACC(v14, v6, v10);
    }
  }

  return v6 & 1;
}

uint64_t sub_1D60ECCC0()
{
  if (*(v0 + 16) == 1)
  {
    v3 = v0;
    v1 = *v0;
    v2 = v3[1];
    sub_1D5E04CC4(v1);
    v4 = sub_1D5E26E28(&unk_1F51117E0);
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = v2;
    *(v5 + 32) = v4;
    *(v5 + 40) = 0;
    sub_1D6C4D24C(v5 | 0x3000000000000000);
  }

  return result;
}

uint64_t _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(void *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  if ((v4 & 1) == 0)
  {
    if ((v7 & 1) == 0)
    {
      sub_1D5D2F2C4(*a1, v3, 0);
      sub_1D5D2F2C4(v5, v6, 0);
      v11 = v5 ^ v2 ^ 1;
      return v11 & 1;
    }

LABEL_11:
    sub_1D5E04CC4(v5);
    sub_1D5D2F2C4(v2, v3, v4);
    sub_1D5D2F2C4(v5, v6, v7);
    v11 = 0;
    return v11 & 1;
  }

  if ((v7 & 1) == 0)
  {

    goto LABEL_11;
  }

  if (v2 != v5 || v3 != v6)
  {
    v9 = sub_1D72646CC();
    sub_1D5E04CC4(v5);
    sub_1D5E04CC4(v2);
    sub_1D5D2F2C4(v2, v3, 1);
    sub_1D5D2F2C4(v5, v6, 1);
    return v9 & 1;
  }

  v11 = 1;
  sub_1D5E04CC4(*a1);
  sub_1D5E04CC4(v2);
  sub_1D5D2F2C4(v2, v3, 1);
  sub_1D5D2F2C4(v2, v3, 1);
  return v11 & 1;
}

void sub_1D60ECF10(uint64_t a1)
{
  v4 = type metadata accessor for FormatOption();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v30 - v15;
  if (*(v1 + 16) == 1)
  {
    v33 = v2;
    v34 = v5;
    v17 = *v1;
    v18 = *(v1 + 8);
    v19 = sub_1D5E26E28(&unk_1F50F6580);
    v31 = v17;
    v32 = v18;
    v20 = v17;
    v21 = v34;
    FormatOptionCollection.subscript.getter(v20, v18, v12);
    if ((*(v21 + 48))(v12, 1, v4) == 1)
    {

      sub_1D5D28248(v12, sub_1D5E04C00);
      if (*(a1 + 48))
      {
        v22 = 1;
LABEL_7:
        (*(v21 + 56))(v16, v22, 1, v4);
        sub_1D5D28248(v16, sub_1D5E04C00);
        return;
      }

      type metadata accessor for FormatLayoutError();
      sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      v23 = v32;
      *v24 = v31;
      v24[1] = v23;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      sub_1D5D247E0(v12, v8);
      v35 = v8[2];

      FormatOptionValue.type.getter(&v36);
      if (sub_1D6183C84(v36, v19))
      {
        swift_bridgeObjectRelease_n();
        sub_1D5D247E0(v8, v16);
        v22 = 0;
        v21 = v34;
        goto LABEL_7;
      }

      type metadata accessor for FormatDerivedDataError();
      sub_1D5B572B8(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
      swift_allocError();
      v26 = v25;
      v28 = *v8;
      v27 = v8[1];
      v35 = v8[2];

      FormatOptionValue.type.getter(&v36);
      v29 = v36;
      *v26 = v28;
      *(v26 + 8) = v27;
      *(v26 + 16) = v29;
      *(v26 + 24) = v19;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1D5D28248(v8, type metadata accessor for FormatOption);
    }
  }
}

unint64_t sub_1D60ED2C0(uint64_t a1)
{
  result = sub_1D5FBA208();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D60ED2E8(void *a1)
{
  a1[1] = sub_1D5CDCE98();
  a1[2] = sub_1D60ED320();
  result = sub_1D60ED374();
  a1[3] = result;
  return result;
}

unint64_t sub_1D60ED320()
{
  result = qword_1EDF11E88;
  if (!qword_1EDF11E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11E88);
  }

  return result;
}

unint64_t sub_1D60ED374()
{
  result = qword_1EC8839E0;
  if (!qword_1EC8839E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8839E0);
  }

  return result;
}

uint64_t FeedPuzzleRankProgress.rawState.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  v5 = *MEMORY[0x1E69D7870];
  v6 = sub_1D725D38C();
  (*(*(v6 - 8) + 104))(a1, v5, v6);
}

uint64_t FeedPuzzleRankProgress.rankText.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static FeedPuzzleRankProgress.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t sub_1D60ED4C8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  v5 = *MEMORY[0x1E69D7870];
  v6 = sub_1D725D38C();
  (*(*(v6 - 8) + 104))(a1, v5, v6);
}

uint64_t sub_1D60ED574()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D7264A2C();
  return sub_1D7264A5C();
}

uint64_t sub_1D60ED610()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D7264A2C();
  return sub_1D7264A5C();
}

unint64_t sub_1D60ED674()
{
  result = qword_1EDF2DB98[0];
  if (!qword_1EDF2DB98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF2DB98);
  }

  return result;
}

uint64_t sub_1D60ED6C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 40);
  v5 = v1;
  do
  {
    v7 = *(v4 - 1);
    v6 = *v4;
    v11 = result;

    MEMORY[0x1DA6F9910](v7, v6);

    result = v11;
    v4 += 3;
    --v5;
  }

  while (v5);
  v8 = 0;
  v9 = (a1 + 48);
  do
  {
    v10 = *v9;
    v9 += 24;
    v8 |= v10;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t FormatViewNodeLayoutAttributes.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatViewNodeLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatViewNodeLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

unint64_t FormatViewNodeLayoutAttributes.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

void FormatViewNodeLayoutAttributes.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *a1 = *(v1 + 136);
  *(a1 + 8) = v2;
}

uint64_t FormatViewNodeLayoutAttributes.__allocating_init(identifier:layoutIdentifier:nodeIdentifier:frame:style:resizing:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t *a14, char a15, uint64_t *a16)
{
  result = swift_allocObject();
  v26 = *a8;
  v27 = *a14;
  v28 = *a16;
  v29 = *(a16 + 8);
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a9;
  *(result + 72) = a10;
  *(result + 80) = a11;
  *(result + 88) = a12;
  *(result + 96) = a7;
  *(result + 104) = v26;
  *(result + 112) = a13;
  *(result + 120) = v27;
  *(result + 128) = a15;
  *(result + 136) = v28;
  *(result + 144) = v29;
  if (a7)
  {
    v30 = result;
    sub_1D60EDBBC(0, &qword_1EDF195B8, sub_1D60D65D0, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v32 = inited;
    *(inited + 16) = xmmword_1D7273AE0;
    v33 = *(a7 + 64);
    if ((~v33 & 0xF000000000000007) != 0)
    {
      v36 = &protocol witness table for FormatBackground;
      v35 = &type metadata for FormatBackground;
      v34 = *(a7 + 64);
    }

    else
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      *(inited + 40) = 0;
      *(inited + 48) = 0;
    }

    *(inited + 32) = v34;
    *(inited + 56) = v35;
    *(inited + 64) = v36;

    sub_1D5D04BD4(v33);
    v37 = sub_1D6E27AC0(v32);
    swift_setDeallocating();
    sub_1D60EEB74(v32 + 32);

    result = v30;
  }

  else
  {
    v37 = MEMORY[0x1E69E7CD0];
  }

  *(result + 152) = v37;
  return result;
}

uint64_t FormatViewNodeLayoutAttributes.init(identifier:layoutIdentifier:nodeIdentifier:frame:style:resizing:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t *a14, char a15, uint64_t *a16)
{
  v17 = *a8;
  v18 = *a14;
  v19 = *a16;
  v20 = *(a16 + 8);
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  *(v16 + 56) = a6;
  *(v16 + 64) = a9;
  *(v16 + 72) = a10;
  *(v16 + 80) = a11;
  *(v16 + 88) = a12;
  *(v16 + 96) = a7;
  *(v16 + 104) = v17;
  *(v16 + 112) = a13;
  *(v16 + 120) = v18;
  *(v16 + 128) = a15;
  *(v16 + 136) = v19;
  *(v16 + 144) = v20;
  if (a7)
  {
    sub_1D60EDBBC(0, &qword_1EDF195B8, sub_1D60D65D0, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v23 = inited;
    *(inited + 16) = xmmword_1D7273AE0;
    v24 = *(a7 + 64);
    if ((~v24 & 0xF000000000000007) != 0)
    {
      v27 = &protocol witness table for FormatBackground;
      v26 = &type metadata for FormatBackground;
      v25 = *(a7 + 64);
    }

    else
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      *(inited + 40) = 0;
      *(inited + 48) = 0;
    }

    *(inited + 32) = v25;
    *(inited + 56) = v26;
    *(inited + 64) = v27;

    sub_1D5D04BD4(v24);
    v28 = sub_1D6E27AC0(v23);
    swift_setDeallocating();
    sub_1D60EEB74(v23 + 32);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CD0];
  }

  *(v16 + 152) = v28;
  return v16;
}

void sub_1D60EDBBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D60EDC20(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x696669746E656469;
    v6 = 0x6E65644965646F6ELL;
    v7 = 0x656D617266;
    if (a1 != 3)
    {
      v7 = 0x656C797473;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    if (a1 == 9)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000018;
    }

    v2 = 0x676E697A69736572;
    v3 = 0x7865646E497ALL;
    if (a1 != 6)
    {
      v3 = 0x696C696269736976;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D60EDD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D60EEFF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D60EDDBC(uint64_t a1)
{
  v2 = sub_1D60EEBD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60EDDF8(uint64_t a1)
{
  v2 = sub_1D60EEBD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatViewNodeLayoutAttributes.deinit()
{

  sub_1D5EB15C4(*(v0 + 120));

  return v0;
}

uint64_t FormatViewNodeLayoutAttributes.__deallocating_deinit()
{
  FormatViewNodeLayoutAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t FormatViewNodeLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D60EEC24(0, &qword_1EC8839E8, sub_1D60EEBD0, &type metadata for FormatViewNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60EEBD0();
  sub_1D7264B5C();
  LOBYTE(v14[0]) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    LOBYTE(v14[0]) = 1;
    sub_1D72643FC();
    LOBYTE(v14[0]) = 2;
    sub_1D72643FC();
    swift_beginAccess();
    v12 = *(v3 + 80);
    v14[0] = *(v3 + 64);
    v14[1] = v12;
    v15 = 3;
    type metadata accessor for CGRect(0);
    sub_1D60EF374(&qword_1EC8801E8, 255, type metadata accessor for CGRect);
    sub_1D726443C();
    *&v14[0] = *(v3 + 96);
    v15 = 4;
    type metadata accessor for FormatViewNodeStyle();
    sub_1D60EF374(&qword_1EDF2BA98, 255, type metadata accessor for FormatViewNodeStyle);
    sub_1D72643BC();
    *&v14[0] = *(v3 + 104);
    v15 = 5;
    sub_1D5F8F3E0();

    sub_1D72643BC();

    LOBYTE(v14[0]) = 6;
    sub_1D726442C();
    *&v14[0] = *(v3 + 120);
    v15 = 7;
    sub_1D5EB1500(*&v14[0]);
    sub_1D5DF6A60();
    sub_1D726443C();
    sub_1D5EB15C4(*&v14[0]);
    LOBYTE(v14[0]) = 8;
    sub_1D726440C();
    v13 = *(v3 + 144);
    *&v14[0] = *(v3 + 136);
    BYTE8(v14[0]) = v13;
    v15 = 9;
    sub_1D5F8F434();
    sub_1D72643BC();
    *&v14[0] = *(v3 + 152);
    v15 = 10;
    sub_1D60EEC24(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    sub_1D60EEC8C(&qword_1EC881AF0, sub_1D5F8F488);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t FormatViewNodeLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatViewNodeLayoutAttributes.init(from:)(a1);
  return v2;
}

uint64_t FormatViewNodeLayoutAttributes.init(from:)(void *a1)
{
  sub_1D60EEC24(0, &qword_1EC8839F8, sub_1D60EEBD0, &type metadata for FormatViewNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v16 = *(v4 - 8);
  v17 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v15 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60EEBD0();
  v18 = v7;
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v16;
    LOBYTE(v19) = 0;
    *(v1 + 16) = sub_1D72642BC();
    *(v1 + 24) = v9;
    LOBYTE(v19) = 1;
    *(v1 + 32) = sub_1D72642BC();
    *(v1 + 40) = v11;
    LOBYTE(v19) = 2;
    *(v1 + 48) = sub_1D72642BC();
    *(v1 + 56) = v12;
    type metadata accessor for CGRect(0);
    v21 = 3;
    sub_1D60EF374(&qword_1EDF1A740, 255, type metadata accessor for CGRect);
    sub_1D726431C();
    v13 = v20;
    *(v1 + 64) = v19;
    *(v1 + 80) = v13;
    type metadata accessor for FormatViewNodeStyle();
    v21 = 4;
    sub_1D60EF374(&qword_1EDF2BA90, 255, type metadata accessor for FormatViewNodeStyle);
    sub_1D726427C();
    *(v1 + 96) = v19;
    v21 = 5;
    sub_1D5F8FC50();
    sub_1D726427C();
    *(v1 + 104) = v19;
    LOBYTE(v19) = 6;
    *(v1 + 112) = sub_1D72642FC();
    v21 = 7;
    sub_1D5DF6A0C();
    sub_1D726431C();
    *(v1 + 120) = v19;
    LOBYTE(v19) = 8;
    *(v1 + 128) = sub_1D72642CC() & 1;
    v21 = 9;
    sub_1D5C6F27C();
    sub_1D726427C();
    v14 = BYTE8(v19);
    *(v1 + 136) = v19;
    *(v1 + 144) = v14;
    sub_1D60EEC24(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    v21 = 10;
    sub_1D60EEC8C(&qword_1EC881B10, sub_1D5F8FD48);
    sub_1D726431C();
    (*(v8 + 8))(v18, v17);
    *(v1 + 152) = v19;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1D60EEA4C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatViewNodeLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D60EEAC8(uint64_t a1, uint64_t a2)
{
  sub_1D60EF374(&qword_1EC883A38, a2, type metadata accessor for FormatViewNodeLayoutAttributes);

  return sub_1D725A24C();
}

uint64_t sub_1D60EEB74(uint64_t a1)
{
  sub_1D60D65D0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D60EEBD0()
{
  result = qword_1EC8839F0;
  if (!qword_1EC8839F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8839F0);
  }

  return result;
}

void sub_1D60EEC24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D60EEC8C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D60EEC24(255, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D60EEEF4()
{
  result = qword_1EC883A20;
  if (!qword_1EC883A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883A20);
  }

  return result;
}

unint64_t sub_1D60EEF4C()
{
  result = qword_1EC883A28;
  if (!qword_1EC883A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883A28);
  }

  return result;
}

unint64_t sub_1D60EEFA4()
{
  result = qword_1EC883A30;
  if (!qword_1EC883A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883A30);
  }

  return result;
}

uint64_t sub_1D60EEFF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C05F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644965646F6ELL && a2 == 0xEE00726569666974 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D617266 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E697A69736572 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7865646E497ALL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73C48A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C0340 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C48E0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1D60EF374(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

char *SportsDataVisualizationRequest.tagIds.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (!*(v0 + 32))
  {
    return SportsDataVisualizationRecentRequest.tagIds.getter();
  }

  if (*(v0 + 32) == 1)
  {
    sub_1D5C3C480();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1D7273AE0;
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    if (*(v1 + 32))
    {

      v7 = v6;
    }

    else
    {
      v11 = [swift_unknownObjectRetain() identifier];
      v12 = sub_1D726207C();
      v7 = v13;

      sub_1D5F82F20(v5, v6, 0);
      v5 = v12;
    }

    result = v4;
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
  }

  else
  {
    sub_1D5C3C480();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D7273AE0;
    if (v3)
    {

      v10 = v2;
    }

    else
    {
      v14 = [swift_unknownObjectRetain() identifier];
      v15 = sub_1D726207C();
      v10 = v16;

      sub_1D5F82F20(v1, v2, 0);
      v1 = v15;
    }

    result = v9;
    *(v9 + 32) = v1;
    *(v9 + 40) = v10;
  }

  return result;
}

uint64_t SportsDataVisualizationRequest.fetchType.getter()
{
  v1 = 5000257;
  if (*(v0 + 32) != 1)
  {
    v1 = 0x544E455645;
  }

  if (*(v0 + 32))
  {
    return v1;
  }

  else
  {
    return 0x544E45434552;
  }
}

uint64_t SportsDataVisualizationRequest.traits.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  if (*(v1 + 32) && *(v1 + 32) == 1)
  {
    v2 = *(*v1 + 48);
  }

  *a1 = v2;
}

uint64_t SportsDataVisualizationRequest.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (*(v1 + 32))
  {
    if (*(v1 + 32) == 1)
    {
      MEMORY[0x1DA6FC0B0](1);
      return SportsDataVisualizationAllRequest.hash(into:)(a1);
    }

    else
    {
      MEMORY[0x1DA6FC0B0](2);
      if (v6)
      {
      }

      else
      {
        v8 = [swift_unknownObjectRetain() identifier];
        sub_1D726207C();

        sub_1D5F82F20(v3, v4, 0);
      }

      sub_1D72621EC();

      return sub_1D5E2D298(a1, v5);
    }
  }

  else
  {
    MEMORY[0x1DA6FC0B0](0);
    return SportsDataVisualizationRecentRequest.hash(into:)(a1);
  }
}

uint64_t SportsDataVisualizationRequest.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_1D7264A0C();
  SportsDataVisualizationRequest.hash(into:)(v4);
  return sub_1D7264A5C();
}

uint64_t sub_1D60EF774()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_1D7264A0C();
  SportsDataVisualizationRequest.hash(into:)(v4);
  return sub_1D7264A5C();
}

uint64_t sub_1D60EF7CC()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_1D7264A0C();
  SportsDataVisualizationRequest.hash(into:)(v4);
  return sub_1D7264A5C();
}

uint64_t _s8NewsFeed30SportsDataVisualizationRequestO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
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
  if (!*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      v16 = *(a2 + 24);
      v17 = v3;
      LOWORD(v18) = v2 & 0x101;
      v19 = v5;
      v20 = v4;
      v13 = v8;
      LOWORD(v14) = v7 & 0x101;
      v15 = v10;
      sub_1D60EFC38(v8, v7, v10, v9, 0);
      sub_1D60EFC38(v3, v2, v5, v4, 0);
      sub_1D60EFC38(v3, v2, v5, v4, 0);
      sub_1D60EFC38(v8, v7, v10, v9, 0);
      v11 = _s8NewsFeed36SportsDataVisualizationRecentRequestV2eeoiySbAC_ACtFZ_0(&v17, &v13);
      sub_1D5F82E88(v3, v2, v5, v4, 0);
      sub_1D5F82E88(v8, v7, v10, v9, 0);
      sub_1D5F82E88(v8, v7, v10, v9, 0);
      sub_1D5F82E88(v3, v2, v5, v4, 0);
      return v11 & 1;
    }

LABEL_9:
    sub_1D60EFC38(*a1, v2, v5, v4, v6);
    sub_1D60EFC38(v8, v7, v10, v9, v11);
    sub_1D5F82E88(v3, v2, v5, v4, v6);
    sub_1D5F82E88(v8, v7, v10, v9, v11);
    LOBYTE(v11) = 0;
    return v11 & 1;
  }

  if (v6 != 1)
  {
    if (v11 == 2)
    {
      v17 = *a1;
      v18 = v2;
      LOBYTE(v19) = v5 & 1;
      v20 = v4;
      v13 = v8;
      v14 = v7;
      LOBYTE(v15) = v10 & 1;
      v16 = v9;
      sub_1D60EFC38(v8, v7, v10, v9, 2);
      sub_1D60EFC38(v3, v2, v5, v4, 2);
      sub_1D60EFC38(v3, v2, v5, v4, 2);
      sub_1D60EFC38(v8, v7, v10, v9, 2);
      LOBYTE(v11) = _s8NewsFeed35SportsDataVisualizationEventRequestV2eeoiySbAC_ACtFZ_0(&v17, &v13);
      sub_1D5F82E88(v3, v2, v5, v4, 2);
      sub_1D5F82E88(v8, v7, v10, v9, 2);
      sub_1D5F82E88(v8, v7, v10, v9, 2);
      sub_1D5F82E88(v3, v2, v5, v4, 2);
      return v11 & 1;
    }

    goto LABEL_9;
  }

  if (v11 != 1)
  {
    goto LABEL_9;
  }

  sub_1D60EFC38(*a1, v2, v5, v4, 1);
  sub_1D60EFC38(v8, v7, v10, v9, 1);
  LOBYTE(v11) = _s8NewsFeed33SportsDataVisualizationAllRequestC2eeoiySbAC_ACtFZ_0(v3, v8);
  sub_1D5F82E88(v3, v2, v5, v4, 1);
  sub_1D5F82E88(v8, v7, v10, v9, 1);
  return v11 & 1;
}

uint64_t sub_1D60EFB90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D60EFBD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D60EFC38(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
    sub_1D60EFCC8(result, a2, a3 & 1);
LABEL_9:
  }

  if (a5 != 1)
  {
    if (a5)
    {
      return result;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1D60EFCC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1D60EFCE0()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D60EFD64()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D60EFDC0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t FormatCustomItemBinding.URL.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D60EFF6C()
{
  result = qword_1EC883A40;
  if (!qword_1EC883A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883A40);
  }

  return result;
}

unint64_t sub_1D60EFFC0(uint64_t a1)
{
  result = sub_1D60EFFE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D60EFFE8()
{
  result = qword_1EC883A48;
  if (!qword_1EC883A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883A48);
  }

  return result;
}

unint64_t sub_1D60F003C(void *a1)
{
  a1[1] = sub_1D60F0074();
  a1[2] = sub_1D60F00C8();
  result = sub_1D60EFF6C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D60F0074()
{
  result = qword_1EDF27710;
  if (!qword_1EDF27710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27710);
  }

  return result;
}

unint64_t sub_1D60F00C8()
{
  result = qword_1EDF0D528;
  if (!qword_1EDF0D528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D528);
  }

  return result;
}

unint64_t sub_1D60F0170()
{
  result = qword_1EC883A50;
  if (!qword_1EC883A50)
  {
    sub_1D60F01C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883A50);
  }

  return result;
}

void sub_1D60F01C8()
{
  if (!qword_1EC883A58)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC883A58);
    }
  }
}

unint64_t sub_1D60F021C()
{
  result = qword_1EC883A60;
  if (!qword_1EC883A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883A60);
  }

  return result;
}

unint64_t sub_1D60F0270()
{
  result = qword_1EDF27720;
  if (!qword_1EDF27720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27720);
  }

  return result;
}

uint64_t sub_1D60F02C4@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  sub_1D5B5DF44(0, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v26 - v6;
  sub_1D5B5DF44(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v26 - v10;
  v12 = type metadata accessor for FeedCustomItem();
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60F0578(a1, v16);
  v17 = *(v13 + 28);
  v18 = type metadata accessor for FormatCustomItem.Resolved();
  sub_1D60F05DC(&v16[v17 + *(v18 + 24)], v7);
  v19 = type metadata accessor for FormatCustomItem.Action();
  v20 = 1;
  v21 = (*(*(v19 - 8) + 48))(v7, 1, v19);
  v22 = sub_1D72585BC();
  v23 = *(v22 - 8);
  if (v21 != 1)
  {
    (*(*(v22 - 8) + 32))(v11, v7, v22);
    v20 = 0;
  }

  (*(v23 + 56))(v11, v20, 1, v22);
  sub_1D711FCD0(0x4F206E6F69746341, 0xEF4C5255206E6570, v11, a2);
  sub_1D60F065C(v16);
  v24 = type metadata accessor for FormatInspectionItem(0);
  return (*(*(v24 - 8) + 56))(a2, 0, 1, v24);
}

uint64_t sub_1D60F0578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedCustomItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60F05DC(uint64_t a1, uint64_t a2)
{
  sub_1D5B5DF44(0, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60F065C(uint64_t a1)
{
  v2 = type metadata accessor for FeedCustomItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 FeedWeather.location.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t FeedWeather.condition.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FeedWeather.conditionIcon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedWeather(0) + 28);
  v4 = sub_1D7261CAC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedWeather.partOfDay.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FeedWeather(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t FeedWeather.forecastDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeedWeather(0) + 40));

  return v1;
}

uint64_t sub_1D60F083C()
{
  v1 = 0x746E6572727563;
  v2 = 7827308;
  if (*v0 != 2)
  {
    v2 = 0x6B694C736C656566;
  }

  if (*v0)
  {
    v1 = 1751607656;
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

uint64_t sub_1D60F08AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D60F17B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D60F08D4(uint64_t a1)
{
  v2 = sub_1D60F0B7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60F0910(uint64_t a1)
{
  v2 = sub_1D60F0B7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedWeather.Temperature.encode(to:)(void *a1)
{
  sub_1D60F1120(0, &qword_1EC883A68, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60F0B7C();
  sub_1D7264B5C();
  v14 = 0;
  sub_1D5B7A110();
  sub_1D60F1184(&qword_1EC883A78);
  sub_1D726443C();
  if (!v1)
  {
    type metadata accessor for FeedWeather.Temperature(0);
    v13 = 1;
    sub_1D726443C();
    v12 = 2;
    sub_1D726443C();
    v11 = 3;
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D60F0B7C()
{
  result = qword_1EC883A70;
  if (!qword_1EC883A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883A70);
  }

  return result;
}

uint64_t FeedWeather.Temperature.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  sub_1D5B7A110();
  v44 = v3;
  v42 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v41 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v35 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v43 = &v35 - v16;
  sub_1D60F1120(0, &qword_1EC883A80, MEMORY[0x1E69E6F48]);
  v45 = *(v17 - 8);
  v46 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v35 - v19;
  v21 = type metadata accessor for FeedWeather.Temperature(0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60F0B7C();
  v47 = v20;
  v25 = v48;
  sub_1D7264B0C();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v9;
  v39 = v13;
  v48 = v24;
  v52 = 0;
  v26 = sub_1D60F1184(&qword_1EC883A88);
  v28 = v43;
  v27 = v44;
  v29 = v46;
  sub_1D726431C();
  v43 = *(v42 + 32);
  (v43)(v48, v28, v27);
  v51 = 1;
  v30 = v39;
  v37 = v26;
  sub_1D726431C();
  v36 = v21;
  v31 = v48;
  (v43)(&v48[*(v21 + 20)], v30, v27);
  v50 = 2;
  v32 = v38;
  sub_1D726431C();
  (v43)(v31 + *(v36 + 24), v32, v27);
  v49 = 3;
  v33 = v41;
  sub_1D726431C();
  (*(v45 + 8))(v47, v29);
  (v43)(v31 + *(v36 + 28), v33, v27);
  sub_1D60F145C(v31, v40, type metadata accessor for FeedWeather.Temperature);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D60F11C8(v31);
}

void sub_1D60F1120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D60F0B7C();
    v7 = a3(a1, &type metadata for FeedWeather.Temperature.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D60F1184(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B7A110();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D60F11C8(uint64_t a1)
{
  v2 = type metadata accessor for FeedWeather.Temperature(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FeedWeather.init(location:condition:conditionCode:conditionIcon:forecastDescription:partOfDay:temperature:highTemperature:lowTemperature:feelsLikeTemperature:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = *a4;
  v18 = *a8;
  *a9 = *a1;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = v17;
  v19 = type metadata accessor for FeedWeather(0);
  v20 = v19[7];
  v21 = sub_1D7261CAC();
  (*(*(v21 - 8) + 32))(a9 + v20, a5, v21);
  v22 = (a9 + v19[10]);
  *v22 = a6;
  v22[1] = a7;
  *(a9 + v19[8]) = v18;
  v23 = a9 + v19[9];
  sub_1D5B7A110();
  v25 = v24;
  v29 = *(*(v24 - 8) + 32);
  (v29)((v24 - 8), v23, a10, v24);
  v26 = type metadata accessor for FeedWeather.Temperature(0);
  v29(v23 + v26[5], a11, v25);
  v29(v23 + v26[6], a12, v25);
  v27 = v23 + v26[7];

  return (v29)(v27, a13, v25);
}

uint64_t FeedWeather.groupItem.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D60F145C(v1, a1, type metadata accessor for FeedWeather);
  type metadata accessor for FeedGroupItem();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D60F145C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D60F14C4@<X0>(uint64_t a1@<X8>)
{
  sub_1D60F145C(v1, a1, type metadata accessor for FeedWeather);
  type metadata accessor for FeedGroupItem();

  return swift_storeEnumTagMultiPayload();
}

uint64_t FeedWeather.identifier.getter()
{
  sub_1D7262ABC();
  MEMORY[0x1DA6F9910](47, 0xE100000000000000);
  sub_1D7262ABC();
  return 0;
}

void FeedWeather.url.getter()
{
  sub_1D5B5A498(0, &qword_1EDF043B0);
  v1 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*v0 longitude:v0[1]];
  sub_1D726324C();
}

unint64_t sub_1D60F16B0()
{
  result = qword_1EC883A90;
  if (!qword_1EC883A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883A90);
  }

  return result;
}

unint64_t sub_1D60F1708()
{
  result = qword_1EC883A98;
  if (!qword_1EC883A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883A98);
  }

  return result;
}

unint64_t sub_1D60F1760()
{
  result = qword_1EC883AA0;
  if (!qword_1EC883AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883AA0);
  }

  return result;
}

uint64_t sub_1D60F17B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6572727563 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1751607656 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7827308 && a2 == 0xE300000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B694C736C656566 && a2 == 0xE900000000000065)
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

uint64_t sub_1D60F1930()
{
  if (qword_1EC87D4E0 != -1)
  {
    swift_once();
  }

  qword_1EC9BA7D8 = qword_1EC881F18;
  unk_1EC9BA7E0 = unk_1EC881F20;
}

uint64_t sub_1D60F199C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v17 = a3;
  sub_1D5B9EB44(0, &qword_1EC883AC8, sub_1D60F2D38, &type metadata for FeedBlobEntity.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60F2D38();
  sub_1D7264B5C();
  v19 = a2;
  v18 = 0;
  sub_1D5BA2FE0(0, &qword_1EDF17538, MEMORY[0x1E69D6160]);
  sub_1D60311A0(&qword_1EC8828B8);
  sub_1D726443C();
  if (!v4)
  {
    v13 = v16;
    v19 = v17;
    v18 = 1;
    sub_1D726443C();
    v19 = v13;
    v18 = 2;
    sub_1D5B9EB44(0, &unk_1EDF17570, sub_1D5B9EC68, MEMORY[0x1E6969080], MEMORY[0x1E69D6160]);
    sub_1D60F2D8C(&qword_1EC883AD0);
    sub_1D726443C();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D60F1C38()
{
  v1 = 0x6449726F73727563;
  if (*v0 != 1)
  {
    v1 = 1635017060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D60F1C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D60F251C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D60F1CA8(uint64_t a1)
{
  v2 = sub_1D60F2D38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60F1CE4(uint64_t a1)
{
  v2 = sub_1D60F2D38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D60F1D20()
{
  if (qword_1EC87D528 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC9BA7D8;

  return v0;
}

uint64_t sub_1D60F1D88(uint64_t a1)
{
  v2 = sub_1D5B9FEBC();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1D60F1DD4(uint64_t a1)
{
  v2 = sub_1D5B9FEBC();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1D60F1E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5B9FEBC();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

char *sub_1D60F1E84@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_1D60F262C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1D60F1ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5B9FEBC();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1D60F1F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5B9FEBC();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1D60F1F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5B9FEBC();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

unint64_t sub_1D60F1FE0()
{
  result = qword_1EC883AA8;
  if (!qword_1EC883AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883AA8);
  }

  return result;
}

uint64_t sub_1D60F2034(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v38 = a5;
  v39 = a6;
  v36 = a3;
  v37 = a4;
  v34 = a1;
  v35 = a2;
  sub_1D5B9EBAC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v32 - v11;
  sub_1D5B9ECBC();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v32 - v19;
  sub_1D5BA2FE0(0, &qword_1EDF17448, MEMORY[0x1E69D6200]);
  v22 = v21;
  v23 = *(*(v21 - 8) + 56);
  v23(v20, 1, 1, v21);
  v23(v16, 1, 1, v22);
  sub_1D5BA2FE0(0, &qword_1EDF173B0, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2FE0(0, &qword_1EDF17538, MEMORY[0x1E69D6160]);
  swift_allocObject();
  v24 = sub_1D725C4BC();
  v23(v20, 1, 1, v22);
  v23(v16, 1, 1, v22);
  swift_allocObject();

  sub_1D725C71C();
  swift_allocObject();
  sub_1D725C4BC();
  v25 = MEMORY[0x1E6969080];
  sub_1D5B9EB44(0, &qword_1EDF174C8, sub_1D5B9EC68, MEMORY[0x1E6969080], MEMORY[0x1E69D6200]);
  v27 = v26;
  v28 = *(*(v26 - 8) + 56);
  v28(v12, 1, 1, v26);
  v28(v33, 1, 1, v27);
  sub_1D5B9EB44(0, &qword_1EDF173E8, sub_1D5B9EC68, v25, MEMORY[0x1E69D6208]);
  swift_allocObject();

  sub_1D725C71C();
  sub_1D5B9EB44(0, &unk_1EDF17570, sub_1D5B9EC68, v25, MEMORY[0x1E69D6160]);
  swift_allocObject();
  sub_1D725C4BC();

  sub_1D725C4CC();
  v40 = v34;
  v41 = v35;
  sub_1D725C74C();

  sub_1D725C4CC();
  v40 = v36;
  v41 = v37;
  sub_1D725C74C();

  sub_1D725C4CC();
  v30 = v38;
  v29 = v39;
  v40 = v38;
  v41 = v39;
  sub_1D5E3E824(v38, v39);
  sub_1D725C74C();

  sub_1D5B952F8(v30, v29);

  return v24;
}

uint64_t sub_1D60F251C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449726F73727563 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

char *sub_1D60F262C(void *a1)
{
  v37 = a1;
  sub_1D5B9EB44(0, &qword_1EC883AB0, sub_1D60F2D38, &type metadata for FeedBlobEntity.CodingKeys, MEMORY[0x1E69E6F48]);
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v36 = &v32 - v3;
  sub_1D5B9EBAC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v32 - v9;
  sub_1D5B9ECBC();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v32 - v17;
  sub_1D5BA2FE0(0, &qword_1EDF17448, MEMORY[0x1E69D6200]);
  v20 = v19;
  v21 = *(*(v19 - 8) + 56);
  v21(v18, 1, 1, v19);
  v21(v14, 1, 1, v20);
  sub_1D5BA2FE0(0, &qword_1EDF173B0, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2FE0(0, &qword_1EDF17538, MEMORY[0x1E69D6160]);
  swift_allocObject();
  v34 = sub_1D725C4BC();
  v21(v18, 1, 1, v20);
  v21(v14, 1, 1, v20);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v22 = sub_1D725C4BC();
  v23 = MEMORY[0x1E6969080];
  sub_1D5B9EB44(0, &qword_1EDF174C8, sub_1D5B9EC68, MEMORY[0x1E6969080], MEMORY[0x1E69D6200]);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v26(v10, 1, 1, v24);
  v26(v35, 1, 1, v25);
  v28 = v36;
  v27 = v37;
  sub_1D5B9EB44(0, &qword_1EDF173E8, sub_1D5B9EC68, v23, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9EB44(0, &unk_1EDF17570, sub_1D5B9EC68, v23, MEMORY[0x1E69D6160]);
  swift_allocObject();
  sub_1D725C4BC();
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1D60F2D38();
  v29 = v38;
  sub_1D7264B0C();
  if (v29)
  {
  }

  else
  {
    v38 = v22;
    v39 = 0;
    sub_1D60311A0(&qword_1EC882880);
    sub_1D726431C();

    v30 = v28;
    v28 = v40;
    v39 = 1;
    sub_1D726431C();

    v39 = 2;
    sub_1D60F2D8C(&qword_1EC883AC0);
    sub_1D726431C();
    (*(v32 + 8))(v30, v33);
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  return v28;
}

unint64_t sub_1D60F2D38()
{
  result = qword_1EC883AB8;
  if (!qword_1EC883AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883AB8);
  }

  return result;
}

uint64_t sub_1D60F2D8C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B9EB44(255, &unk_1EDF17570, sub_1D5B9EC68, MEMORY[0x1E6969080], MEMORY[0x1E69D6160]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D60F2E1C()
{
  result = qword_1EC883AD8;
  if (!qword_1EC883AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883AD8);
  }

  return result;
}

unint64_t sub_1D60F2E74()
{
  result = qword_1EC883AE0;
  if (!qword_1EC883AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883AE0);
  }

  return result;
}

unint64_t sub_1D60F2ECC()
{
  result = qword_1EC883AE8;
  if (!qword_1EC883AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883AE8);
  }

  return result;
}

void *sub_1D60F2F30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 112);
  v41[6] = *(a1 + 96);
  v41[7] = v3;
  v41[8] = *(a1 + 128);
  v42 = *(a1 + 144);
  v4 = *(a1 + 48);
  v41[2] = *(a1 + 32);
  v41[3] = v4;
  v5 = *(a1 + 80);
  v41[4] = *(a1 + 64);
  v41[5] = v5;
  v6 = *(a1 + 16);
  v41[0] = *a1;
  v41[1] = v6;
  sub_1D5B56150(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7274590;
  v32 = a2;
  v8 = sub_1D5ECF4A0(sub_1D60F3284, v31, &unk_1F50F7378);
  sub_1D6795150(0x6E61656C6F6F42, 0xE700000000000000, 0, 0, v8, v33);

  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v9 = swift_allocObject();
  *(inited + 32) = v9;
  *(v9 + 48) = v34;
  v10 = v33[1];
  *(v9 + 16) = v33[0];
  *(v9 + 32) = v10;
  v29 = a2;
  v30 = v41;
  v11 = sub_1D5FBCC78(sub_1D60F32A4, v28, &unk_1F50F73A0);
  sub_1D6795150(0x646E616D6D6F43, 0xE700000000000000, 0, 0, v11, v35);

  *(inited + 96) = &type metadata for FormatInspectionGroup;
  *(inited + 104) = &off_1F518B2C0;
  v12 = swift_allocObject();
  *(inited + 72) = v12;
  *(v12 + 48) = v36;
  v13 = v35[1];
  *(v12 + 16) = v35[0];
  *(v12 + 32) = v13;
  v26 = a2;
  v27 = v41;
  v14 = sub_1D7199984(sub_1D60F32C0, v25, &unk_1F50F7328);
  v15 = sub_1D5F62998(v14);

  sub_1D6795150(0x74617265706D6554, 0xEB00000000657275, 0, 0, v15, v37);

  *(inited + 136) = &type metadata for FormatInspectionGroup;
  *(inited + 144) = &off_1F518B2C0;
  v16 = swift_allocObject();
  *(inited + 112) = v16;
  *(v16 + 48) = v38;
  v17 = v37[1];
  *(v16 + 16) = v37[0];
  *(v16 + 32) = v17;
  v24[2] = a2;
  v24[3] = v41;
  v18 = sub_1D7199984(sub_1D60F32DC, v24, &unk_1F50F7350);
  v19 = sub_1D5F62998(v18);

  sub_1D6795150(1954047316, 0xE400000000000000, 0, 0, v19, v39);

  *(inited + 176) = &type metadata for FormatInspectionGroup;
  *(inited + 184) = &off_1F518B2C0;
  v20 = swift_allocObject();
  *(inited + 152) = v20;
  *(v20 + 48) = v40;
  v21 = v39[1];
  *(v20 + 16) = v39[0];
  *(v20 + 32) = v21;
  v22 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  return v22;
}

uint64_t sub_1D60F32F8@<X0>(char *a1@<X8>)
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v20 - v13;
  swift_getObjectType();
  FCTagProviding.recipeCatalogSearchURL.getter(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D5E3E404(v5);
    v15 = objc_opt_self();
    sub_1D7257B5C();
    v16 = sub_1D726265C();
    v17 = [v15 nss:v16 NewsURLForRecipeCatalog:?];

    sub_1D72584EC();
    (*(v7 + 32))(a1, v10, v6);
  }

  else
  {
    v18 = *(v7 + 32);
    v18(v14, v5, v6);
    v18(a1, v14, v6);
  }

  return (*(v7 + 56))(a1, 0, 1, v6);
}

uint64_t sub_1D60F353C@<X0>(char *a1@<X8>)
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v20 - v13;
  swift_getObjectType();
  FCTagProviding.recipeCatalogSearchURL.getter(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D5E3E404(v5);
    v15 = objc_opt_self();
    sub_1D7257B5C();
    v16 = sub_1D726265C();
    v17 = [v15 nss:v16 NewsURLForRecipeCatalog:?];

    sub_1D72584EC();
    (*(v7 + 32))(a1, v10, v6);
  }

  else
  {
    v18 = *(v7 + 32);
    v18(v14, v5, v6);
    v18(a1, v14, v6);
  }

  return (*(v7 + 56))(a1, 0, 1, v6);
}

uint64_t sub_1D60F3778()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D60F37F4()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D60F384C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

void sub_1D60F38A0(uint64_t a1@<X8>)
{
  strcpy(a1, "recipeSearch");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t FormatTagBinding.URL.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D60F39F4()
{
  result = qword_1EC883AF0;
  if (!qword_1EC883AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883AF0);
  }

  return result;
}

unint64_t sub_1D60F3A48(uint64_t a1)
{
  result = sub_1D60F3A70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D60F3A70()
{
  result = qword_1EC883AF8;
  if (!qword_1EC883AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883AF8);
  }

  return result;
}

unint64_t sub_1D60F3AC4(void *a1)
{
  a1[1] = sub_1D60F3AFC();
  a1[2] = sub_1D60F3B50();
  result = sub_1D60F39F4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D60F3AFC()
{
  result = qword_1EC883B00;
  if (!qword_1EC883B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883B00);
  }

  return result;
}

unint64_t sub_1D60F3B50()
{
  result = qword_1EC883B08;
  if (!qword_1EC883B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883B08);
  }

  return result;
}

unint64_t sub_1D60F3BF8()
{
  result = qword_1EC883B10;
  if (!qword_1EC883B10)
  {
    sub_1D60F3C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883B10);
  }

  return result;
}

void sub_1D60F3C50()
{
  if (!qword_1EC883B18)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC883B18);
    }
  }
}

unint64_t sub_1D60F3CA4()
{
  result = qword_1EC883B20;
  if (!qword_1EC883B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883B20);
  }

  return result;
}

unint64_t sub_1D60F3CF8()
{
  result = qword_1EC883B28;
  if (!qword_1EC883B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883B28);
  }

  return result;
}

uint64_t sub_1D60F3D5C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1D60F3DC8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  *(v4 + 48) = v3;

  return v4;
}

void sub_1D60F3DC8()
{
  if (!qword_1EC88EF80)
  {
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88EF80);
    }
  }
}

uint64_t sub_1D60F3E18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D60F418C(v2, v36);
      sub_1D60F418C(v36, v33);
      v4 = v34;
      if (v34)
      {
        v5 = v35;
        __swift_project_boxed_opaque_existential_1(v33, v34);
        v6 = (*(v5 + 8))(v4, v5);
        sub_1D60F42AC(v36);
        __swift_destroy_boxed_opaque_existential_1(v33);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1D69921A4(0, v3[2] + 1, 1, v3);
        }

        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          v3 = sub_1D69921A4((v7 > 1), v8 + 1, 1, v3);
        }

        v3[2] = v8 + 1;
        v3[v8 + 4] = v6;
      }

      else
      {
        sub_1D60F42AC(v36);
        sub_1D60F42AC(v33);
      }

      v2 += 40;
      --v1;
    }

    while (v1);

    v10 = v3[2];
    if (v10)
    {
      goto LABEL_12;
    }
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
    v10 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v10)
    {
LABEL_12:
      v11 = 0;
      v12 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v11 >= v3[2])
        {
          goto LABEL_43;
        }

        v13 = v3[v11 + 4];
        v14 = *(v13 + 16);
        v15 = *(v12 + 16);
        v16 = v15 + v14;
        if (__OFADD__(v15, v14))
        {
          goto LABEL_44;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v16 <= *(v12 + 24) >> 1)
        {
          if (!*(v13 + 16))
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v15 <= v16)
          {
            v17 = v15 + v14;
          }

          else
          {
            v17 = v15;
          }

          result = sub_1D6992190(result, v17, 1, v12);
          v12 = result;
          if (!*(v13 + 16))
          {
LABEL_13:

            if (v14)
            {
              goto LABEL_45;
            }

            goto LABEL_14;
          }
        }

        if ((*(v12 + 24) >> 1) - *(v12 + 16) < v14)
        {
          goto LABEL_46;
        }

        swift_arrayInitWithCopy();

        if (v14)
        {
          v18 = *(v12 + 16);
          v19 = __OFADD__(v18, v14);
          v20 = v18 + v14;
          if (v19)
          {
            goto LABEL_47;
          }

          *(v12 + 16) = v20;
        }

LABEL_14:
        if (v10 == ++v11)
        {
          goto LABEL_31;
        }
      }
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_31:

  v21 = 0;
  v22 = *(v12 + 16);
  v23 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v24 = v12 + 48 + 24 * v21;
  while (1)
  {
    if (v22 == v21)
    {

      return v23;
    }

    if (v21 >= *(v12 + 16))
    {
      break;
    }

    ++v21;
    v25 = v24 + 24;
    v26 = *v24;
    v27 = *(*v24 + 16);
    v24 += 24;
    if (v27)
    {
      v29 = *(v25 - 40);
      v28 = *(v25 - 32);

      result = swift_isUniquelyReferenced_nonNull_native();
      v36[0] = v23;
      if ((result & 1) == 0)
      {
        result = sub_1D6998C08(0, *(v23 + 16) + 1, 1);
        v23 = v36[0];
      }

      v31 = *(v23 + 16);
      v30 = *(v23 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_1D6998C08((v30 > 1), v31 + 1, 1);
        v23 = v36[0];
      }

      *(v23 + 16) = v31 + 1;
      v32 = (v23 + 24 * v31);
      v32[4] = v29;
      v32[5] = v28;
      v32[6] = v26;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1D60F418C(uint64_t a1, uint64_t a2)
{
  sub_1D60F41F0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D60F41F0()
{
  if (!qword_1EC88EF90)
  {
    sub_1D60F4248();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88EF90);
    }
  }
}

unint64_t sub_1D60F4248()
{
  result = qword_1EC883B30;
  if (!qword_1EC883B30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC883B30);
  }

  return result;
}

uint64_t sub_1D60F42AC(uint64_t a1)
{
  sub_1D60F41F0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_s23CustomStringConvertible_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D60F433C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D60F4378(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D60F43C8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t type metadata accessor for DebugFormatWorkspaceGroup()
{
  result = qword_1EC883B38;
  if (!qword_1EC883B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D60F4478()
{
  type metadata accessor for FormatWorkspaceGroup();
  if (v0 <= 0x3F)
  {
    sub_1D60F458C(319, &qword_1EC883B48, type metadata accessor for DebugFormatPackageInventory, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D60F458C(319, &qword_1EC883560, sub_1D60F45F0, MEMORY[0x1E69D6A80]);
      if (v2 <= 0x3F)
      {
        sub_1D60F4660();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D60F458C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D60F45F0()
{
  if (!qword_1EC883568)
  {
    type metadata accessor for DebugFormatBindingResult();
    sub_1D5BA6EF4();
    v0 = sub_1D726297C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC883568);
    }
  }
}

void sub_1D60F4660()
{
  if (!qword_1EC883B50)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC883B50);
    }
  }
}

unint64_t sub_1D60F46C4()
{
  v1 = *v0;
  v2 = 0xD000000000000030;
  v3 = 0xD000000000000027;
  if (v1 != 3)
  {
    v3 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000028;
  if (!*v0)
  {
    v4 = 0xD000000000000025;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D60F4754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D60F92EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D60F477C(uint64_t a1)
{
  v2 = sub_1D60F5AF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60F47B8(uint64_t a1)
{
  v2 = sub_1D60F5AF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D60F47F4(uint64_t a1)
{
  v2 = sub_1D60F5954();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60F4830(uint64_t a1)
{
  v2 = sub_1D60F5954();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D60F486C()
{
  v1 = 0x65676175676E616CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1D60F48C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D60F949C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D60F48E8(uint64_t a1)
{
  v2 = sub_1D60F59A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60F4924(uint64_t a1)
{
  v2 = sub_1D60F59A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D60F4960(uint64_t a1)
{
  v2 = sub_1D60F59FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60F499C(uint64_t a1)
{
  v2 = sub_1D60F59FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D60F49D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D6E6F7269766E65 && a2 == 0xEC00000073746E65;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C9AE0 == a2)
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

uint64_t sub_1D60F4AC0(uint64_t a1)
{
  v2 = sub_1D60F5A50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60F4AFC(uint64_t a1)
{
  v2 = sub_1D60F5A50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D60F4B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C9AE0 == a2)
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

uint64_t sub_1D60F4C14(uint64_t a1)
{
  v2 = sub_1D60F5900();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60F4C50(uint64_t a1)
{
  v2 = sub_1D60F5900();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatDerivedDataWarningError.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1D60F6BE0(0, &qword_1EC883B58, sub_1D60F5900, &type metadata for FormatDerivedDataWarningError.UsedDeprecatedFeatureCodingKeys, MEMORY[0x1E69E6F58]);
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v73 = &v66 - v5;
  v67 = type metadata accessor for FormatDeprecationWarning(0);
  MEMORY[0x1EEE9AC00](v67, v6);
  v74 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60F6BE0(0, &qword_1EC883B68, sub_1D60F5954, &type metadata for FormatDerivedDataWarningError.MalformedNewsroomEnvironmentsIdentifierCodingKeys, v2);
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v66 = &v66 - v10;
  sub_1D60F6BE0(0, &qword_1EC883B78, sub_1D60F59A8, &type metadata for FormatDerivedDataWarningError.MissingLanguageLocalizationsForStringIdentifiersCodingKeys, v2);
  v71 = *(v11 - 8);
  v72 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v68 = &v66 - v13;
  sub_1D60F6BE0(0, &qword_1EC883B88, sub_1D60F59FC, &type metadata for FormatDerivedDataWarningError.MissingLocalizationsForStringIdentifiersCodingKeys, v2);
  v79 = *(v14 - 8);
  v80 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v78 = &v66 - v16;
  sub_1D60F6BE0(0, &qword_1EC883B98, sub_1D60F5A50, &type metadata for FormatDerivedDataWarningError.MissingNewsroomEnvironmentsIdentifierCodingKeys, v2);
  v18 = v17;
  v77 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v66 - v20;
  v22 = type metadata accessor for FormatDerivedDataWarningError();
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = (&v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D60F6BE0(0, &qword_1EC883BA8, sub_1D60F5AF0, &type metadata for FormatDerivedDataWarningError.CodingKeys, v2);
  v83 = *(v26 - 8);
  v84 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v66 - v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60F5AF0();
  v85 = v29;
  sub_1D7264B5C();
  sub_1D60F95B4(v81, v25, type metadata accessor for FormatDerivedDataWarningError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v37 = v21;
    v38 = v18;
    v39 = v77;
    v40 = v78;
    v41 = v79;
    v42 = v80;
    if (EnumCaseMultiPayload)
    {
      v59 = *v25;
      v81 = v25[1];
      LOBYTE(v87) = 1;
      sub_1D60F59FC();
      v60 = v40;
      v61 = v84;
      v62 = v85;
      sub_1D726436C();
      v87 = v59;
      v86 = 0;
      sub_1D5BBE0A8();
      sub_1D5B99688(&qword_1EDF04A90);
      v63 = v82;
      sub_1D726443C();

      if (v63)
      {
        (*(v41 + 8))(v60, v42);
        (*(v83 + 8))(v62, v61);
      }

      else
      {
        LOBYTE(v87) = 1;
        sub_1D72643FC();

        (*(v41 + 8))(v60, v42);
        return (*(v83 + 8))(v62, v61);
      }
    }

    else
    {
      v43 = *v25;
      v81 = v25[1];
      LOBYTE(v87) = 0;
      sub_1D60F5A50();
      v44 = v84;
      v45 = v85;
      sub_1D726436C();
      v87 = v43;
      v86 = 0;
      sub_1D5BBE0A8();
      sub_1D5B99688(&qword_1EDF04A90);
      v46 = v82;
      sub_1D726443C();
      if (v46)
      {

        (*(v39 + 8))(v37, v38);
        (*(v83 + 8))(v45, v44);
      }

      LOBYTE(v87) = 1;
      sub_1D72643FC();

      (*(v39 + 8))(v37, v38);
      return (*(v83 + 8))(v85, v44);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v49 = *v25;
    v48 = v25[1];
    v80 = v25[3];
    v81 = v48;
    LOBYTE(v87) = 2;
    sub_1D60F59A8();
    v50 = v68;
    v52 = v84;
    v51 = v85;
    sub_1D726436C();
    v87 = v49;
    v86 = 0;
    sub_1D5BBE0A8();
    sub_1D5B99688(&qword_1EDF04A90);
    v53 = v72;
    v54 = v82;
    sub_1D726443C();

    if (v54)
    {

      (*(v71 + 8))(v50, v53);
      (*(v83 + 8))(v51, v52);
    }

    else
    {
      LOBYTE(v87) = 1;
      sub_1D72643FC();

      LOBYTE(v87) = 2;
      sub_1D72643FC();
      v64 = v84;
      v65 = v85;

      (*(v71 + 8))(v50, v53);
      return (*(v83 + 8))(v65, v64);
    }
  }

  else
  {
    v31 = v85;
    if (EnumCaseMultiPayload == 3)
    {
      v32 = *v25;
      LOBYTE(v87) = 3;
      sub_1D60F5954();
      v33 = v66;
      v34 = v84;
      sub_1D726436C();
      v87 = v32;
      v86 = 0;
      sub_1D5BBE0A8();
      sub_1D5B99688(&qword_1EDF04A90);
      v35 = v70;
      v36 = v82;
      sub_1D726443C();
      if (v36)
      {

        (*(v69 + 8))(v33, v35);
        (*(v83 + 8))(v31, v34);
      }

      LOBYTE(v87) = 1;
      sub_1D72643FC();

      (*(v69 + 8))(v33, v35);
    }

    else
    {
      sub_1D60F81B0(0, &qword_1EC883BB8, type metadata accessor for FormatDeprecationWarning);
      v55 = v74;
      sub_1D60F6D80(v25, v74, type metadata accessor for FormatDeprecationWarning);
      LOBYTE(v87) = 4;
      sub_1D60F5900();
      v56 = v73;
      v34 = v84;
      sub_1D726436C();
      LOBYTE(v87) = 0;
      sub_1D60F805C(&qword_1EC883BC0, type metadata accessor for FormatDeprecationWarning);
      v57 = v76;
      v58 = v82;
      sub_1D726443C();
      if (!v58)
      {
        LOBYTE(v87) = 1;
        sub_1D72643FC();
      }

      (*(v75 + 8))(v56, v57);
      sub_1D60F7F38(v55, type metadata accessor for FormatDeprecationWarning);
    }

    return (*(v83 + 8))(v31, v34);
  }
}

unint64_t sub_1D60F5900()
{
  result = qword_1EC883B60;
  if (!qword_1EC883B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883B60);
  }

  return result;
}

unint64_t sub_1D60F5954()
{
  result = qword_1EC883B70;
  if (!qword_1EC883B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883B70);
  }

  return result;
}

unint64_t sub_1D60F59A8()
{
  result = qword_1EC883B80;
  if (!qword_1EC883B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883B80);
  }

  return result;
}

unint64_t sub_1D60F59FC()
{
  result = qword_1EC883B90;
  if (!qword_1EC883B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883B90);
  }

  return result;
}

unint64_t sub_1D60F5A50()
{
  result = qword_1EC883BA0;
  if (!qword_1EC883BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883BA0);
  }

  return result;
}

uint64_t type metadata accessor for FormatDerivedDataWarningError()
{
  result = qword_1EC883C08;
  if (!qword_1EC883C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D60F5AF0()
{
  result = qword_1EC883BB0;
  if (!qword_1EC883BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883BB0);
  }

  return result;
}

uint64_t FormatDerivedDataWarningError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D60F6BE0(0, &qword_1EC883BC8, sub_1D60F5900, &type metadata for FormatDerivedDataWarningError.UsedDeprecatedFeatureCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = *(v4 - 8);
  v133 = v4;
  v134 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v136 = &v119 - v7;
  sub_1D60F6BE0(0, &qword_1EC883BD0, sub_1D60F5954, &type metadata for FormatDerivedDataWarningError.MalformedNewsroomEnvironmentsIdentifierCodingKeys, v3);
  v132 = v8;
  v130 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v141 = &v119 - v10;
  sub_1D60F6BE0(0, &qword_1EC883BD8, sub_1D60F59A8, &type metadata for FormatDerivedDataWarningError.MissingLanguageLocalizationsForStringIdentifiersCodingKeys, v3);
  v131 = v11;
  v135 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v140 = &v119 - v13;
  sub_1D60F6BE0(0, &qword_1EC883BE0, sub_1D60F59FC, &type metadata for FormatDerivedDataWarningError.MissingLocalizationsForStringIdentifiersCodingKeys, v3);
  v128 = *(v14 - 8);
  v129 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v139 = &v119 - v16;
  sub_1D60F6BE0(0, &qword_1EC883BE8, sub_1D60F5A50, &type metadata for FormatDerivedDataWarningError.MissingNewsroomEnvironmentsIdentifierCodingKeys, v3);
  v127 = v17;
  v125 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v138 = &v119 - v19;
  sub_1D60F6BE0(0, &qword_1EC883BF0, sub_1D60F5AF0, &type metadata for FormatDerivedDataWarningError.CodingKeys, v3);
  v143 = *(v20 - 8);
  v144 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v119 - v22;
  v137 = type metadata accessor for FormatDerivedDataWarningError();
  MEMORY[0x1EEE9AC00](v137, v24);
  v126 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v119 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v119 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v119 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v119 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v119 - v44;
  v46 = a1[3];
  v146 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v46);
  sub_1D60F5AF0();
  v47 = v145;
  sub_1D7264B0C();
  if (!v47)
  {
    v120 = v41;
    v121 = v37;
    v122 = v29;
    v119 = v33;
    v48 = v138;
    v124 = 0;
    v49 = v139;
    v50 = v141;
    v123 = v45;
    v51 = v142;
    v52 = v144;
    v145 = v23;
    v53 = sub_1D726433C();
    if (*(v53 + 16) != 1 || (v54 = *(v53 + 32), v54 == 5))
    {
      v59 = sub_1D7263E3C();
      swift_allocError();
      v61 = v60;
      sub_1D5EEA608();
      *v61 = v137;
      v62 = v145;
      sub_1D72641FC();
      sub_1D7263DFC();
      (*(*(v59 - 8) + 104))(v61, *MEMORY[0x1E69E6AF8], v59);
      swift_willThrow();
      (*(v143 + 8))(v62, v52);
LABEL_22:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v146);
    }

    if (*(v53 + 32) > 1u)
    {
      if (v54 == 2)
      {
        LOBYTE(v148) = 2;
        sub_1D60F59A8();
        v65 = v145;
        v66 = v124;
        sub_1D72641EC();
        if (!v66)
        {
          sub_1D5BBE0A8();
          v147 = 0;
          sub_1D5B99688(&qword_1EDF3C830);
          v73 = v131;
          sub_1D726431C();
          v76 = v148;
          v147 = 1;
          v77 = sub_1D72642BC();
          v94 = v93;
          v141 = v77;
          v147 = 2;
          v113 = sub_1D72642BC();
          v114 = *(v135 + 8);
          v140 = v115;
          v114(0, v73);
          (*(v143 + 8))(v145, v52);
          swift_unknownObjectRelease();
          v116 = v119;
          v117 = v140;
          v118 = v141;
          *v119 = v76;
          v116[1] = v118;
          v116[2] = v94;
          v116[3] = v113;
          v116[4] = v117;
          swift_storeEnumTagMultiPayload();
          v100 = v116;
          goto LABEL_25;
        }

        (*(v143 + 8))(v65, v52);
        goto LABEL_22;
      }

      v140 = v53;
      v55 = v124;
      if (v54 == 3)
      {
        LOBYTE(v148) = 3;
        sub_1D60F5954();
        v56 = v50;
        v57 = v145;
        sub_1D72641EC();
        if (!v55)
        {
          sub_1D5BBE0A8();
          v147 = 0;
          sub_1D5B99688(&qword_1EDF3C830);
          v58 = v132;
          sub_1D726431C();
          v79 = v148;
          v147 = 1;
          v80 = sub_1D72642BC();
          v81 = (v143 + 8);
          v95 = v80;
          v96 = v56;
          v98 = v97;
          (*(v130 + 8))(v96, v58);
          (*v81)(v145, v52);
          swift_unknownObjectRelease();
          v99 = v122;
          *v122 = v79;
          v99[1] = v95;
          v99[2] = v98;
          swift_storeEnumTagMultiPayload();
          v100 = v99;
LABEL_25:
          v105 = v123;
          sub_1D60F6D80(v100, v123, type metadata accessor for FormatDerivedDataWarningError);
          v68 = v51;
          goto LABEL_26;
        }

        goto LABEL_13;
      }

      LOBYTE(v148) = 4;
      sub_1D60F5900();
      v67 = v145;
      sub_1D72641EC();
      if (!v55)
      {
        v68 = v51;
        type metadata accessor for FormatDeprecationWarning(0);
        LOBYTE(v148) = 0;
        sub_1D60F805C(&qword_1EC883BF8, type metadata accessor for FormatDeprecationWarning);
        v69 = v126;
        v70 = v133;
        v71 = v136;
        sub_1D726431C();
        LOBYTE(v148) = 1;
        v82 = sub_1D72642BC();
        v83 = v71;
        v84 = v134;
        v141 = v101;
        v139 = v82;
        sub_1D60F81B0(0, &qword_1EC883BB8, type metadata accessor for FormatDeprecationWarning);
        v103 = (v69 + *(v102 + 48));
        (*(v84 + 8))(v83, v70);
        (*(v143 + 8))(v67, v52);
        swift_unknownObjectRelease();
        v104 = v141;
        *v103 = v139;
        v103[1] = v104;
        swift_storeEnumTagMultiPayload();
        v105 = v123;
        sub_1D60F6D80(v69, v123, type metadata accessor for FormatDerivedDataWarningError);
LABEL_26:
        sub_1D60F6D80(v105, v68, type metadata accessor for FormatDerivedDataWarningError);
        return __swift_destroy_boxed_opaque_existential_1(v146);
      }

LABEL_19:
      (*(v143 + 8))(v67, v52);
      goto LABEL_22;
    }

    v140 = v53;
    if (v54)
    {
      LOBYTE(v148) = 1;
      sub_1D60F59FC();
      v67 = v145;
      v72 = v124;
      sub_1D72641EC();
      if (v72)
      {
        goto LABEL_19;
      }

      sub_1D5BBE0A8();
      v74 = v49;
      v147 = 0;
      sub_1D5B99688(&qword_1EDF3C830);
      v75 = v129;
      sub_1D726431C();
      v89 = v143;
      v90 = v148;
      v147 = 1;
      v91 = sub_1D72642BC();
      v92 = v75;
      v110 = *(v128 + 8);
      v111 = v91;
      v143 = v112;
      v110(v74, v92);
      (*(v89 + 8))(v145, v144);
      swift_unknownObjectRelease();
      v109 = v121;
      *v121 = v90;
      v109[1] = v111;
      v109[2] = v143;
    }

    else
    {
      LOBYTE(v148) = 0;
      sub_1D60F5A50();
      v57 = v145;
      v63 = v124;
      sub_1D72641EC();
      if (v63)
      {
LABEL_13:
        (*(v143 + 8))(v57, v52);
        goto LABEL_22;
      }

      sub_1D5BBE0A8();
      v147 = 0;
      sub_1D5B99688(&qword_1EDF3C830);
      v64 = v127;
      sub_1D726431C();
      v85 = v148;
      v147 = 1;
      v86 = v48;
      v87 = sub_1D72642BC();
      v88 = (v143 + 8);
      v106 = *(v125 + 8);
      v107 = v87;
      v143 = v108;
      v106(v86, v64);
      (*v88)(v145, v52);
      swift_unknownObjectRelease();
      v109 = v120;
      *v120 = v85;
      v109[1] = v107;
      v109[2] = v143;
    }

    swift_storeEnumTagMultiPayload();
    v100 = v109;
    goto LABEL_25;
  }

  return __swift_destroy_boxed_opaque_existential_1(v146);
}

void sub_1D60F6BE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D60F6C48(uint64_t a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  if (v4 == v3 >> 1)
  {
    v5 = type metadata accessor for FormatSlotDefinitionItemSet();
    v6 = *(*(v5 - 8) + 56);
    v7 = v5;
    v8 = a1;
    v9 = 1;
  }

  else
  {
    if (v4 >= (v3 >> 1))
    {
      __break(1u);
      return;
    }

    v10 = v1[1];
    v11 = type metadata accessor for FormatSlotDefinitionItemSet();
    v12 = *(v11 - 8);
    sub_1D60F95B4(v10 + *(v12 + 72) * v4, a1, type metadata accessor for FormatSlotDefinitionItemSet);
    v1[1] = v10;
    v1[2] = v4 + 1;
    v1[3] = v3;
    v6 = *(v12 + 56);
    v8 = a1;
    v9 = 0;
    v7 = v11;
  }

  v6(v8, v9, 1, v7);
}

uint64_t sub_1D60F6D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D60F6DE8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D60F6E1C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D60F6E50()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D60F6E84()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D60F6EB8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D60F6EEC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 11;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FormatDerivedDataWarningError.errorDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FormatDeprecationWarning(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FormatDerivedDataWarningError();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D60F95B4(v1, v9, type metadata accessor for FormatDerivedDataWarningError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v18 = *v9;
    if (EnumCaseMultiPayload)
    {

      v39 = 0;
      v40 = 0xE000000000000000;
      sub_1D7263D4C();
      v33 = *(v18 + 16);

      v38 = v33;
      v34 = sub_1D72644BC();
      v36 = v35;

      v39 = v34;
      v40 = v36;
      v16 = "' localizations for strings";
      v17 = 0xD00000000000002ALL;
    }

    else
    {

      v39 = 0;
      v40 = 0xE000000000000000;
      sub_1D7263D4C();
      v19 = *(v18 + 16);

      v38 = v19;
      v20 = sub_1D72644BC();
      v22 = v21;

      v39 = v20;
      v40 = v22;
      v16 = "ations entries for strings";
      v17 = 0xD00000000000001DLL;
    }

LABEL_10:
    v30 = v16 | 0x8000000000000000;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      sub_1D60F81B0(0, &qword_1EC883BB8, type metadata accessor for FormatDeprecationWarning);

      sub_1D60F6D80(v9, v5, type metadata accessor for FormatDeprecationWarning);
      v31 = FormatDeprecationWarning.message.getter();
      sub_1D60F7F38(v5, type metadata accessor for FormatDeprecationWarning);
      return v31;
    }

    v11 = *v9;

    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1D7263D4C();
    v12 = *(v11 + 16);

    v38 = v12;
    v13 = sub_1D72644BC();
    v15 = v14;

    v39 = v13;
    v40 = v15;
    v16 = "f keys found, expected one.";
    v17 = 0xD00000000000001FLL;
    goto LABEL_10;
  }

  v24 = *v9;
  v23 = v9[1];
  v25 = v9[2];

  v39 = 0;
  v40 = 0xE000000000000000;
  sub_1D7263D4C();
  v26 = *(v24 + 16);

  v38 = v26;
  v27 = sub_1D72644BC();
  v29 = v28;

  v39 = v27;
  v40 = v29;
  MEMORY[0x1DA6F9910](0x676E697373696D20, 0xEA00000000002720);
  MEMORY[0x1DA6F9910](v23, v25);

  v30 = 0x80000001D73C9800;
  v17 = 0xD00000000000001BLL;
LABEL_11:
  MEMORY[0x1DA6F9910](v17, v30);
  return v39;
}

unint64_t FormatDerivedDataWarningError.errorHint.getter()
{
  v1 = v0;
  sub_1D60F7EE0();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v94 - v8;
  v10 = type metadata accessor for FormatDeprecationWarning(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FormatDerivedDataWarningError();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D60F95B4(v1, v17, type metadata accessor for FormatDerivedDataWarningError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v66 = *v17;

      v100 = 0;
      v101 = 0xE000000000000000;
      sub_1D7263D4C();

      v100 = 0xD000000000000024;
      v101 = 0x80000001D73C99F0;
      v97 = v66;

      sub_1D60F7F98(&v97);

      v67 = v97;
      v68 = *(v97 + 16);
      if (v68)
      {
        v99 = MEMORY[0x1E69E7CC0];
        sub_1D5BFC364(0, v68, 0);
        v22 = v99;
        v96 = v67;
        v69 = (v67 + 40);
        do
        {
          v70 = *(v69 - 1);
          v71 = *v69;
          v97 = 0x2220A280E2;
          v98 = 0xA500000000000000;

          MEMORY[0x1DA6F9910](v70, v71);
          MEMORY[0x1DA6F9910](34, 0xE100000000000000);

          v72 = v97;
          v73 = v98;
          v99 = v22;
          v75 = *(v22 + 16);
          v74 = *(v22 + 24);
          if (v75 >= v74 >> 1)
          {
            sub_1D5BFC364((v74 > 1), v75 + 1, 1);
            v22 = v99;
          }

          *(v22 + 16) = v75 + 1;
          v76 = v22 + 16 * v75;
          *(v76 + 32) = v72;
          *(v76 + 40) = v73;
          v69 += 2;
          --v68;
        }

        while (v68);
        goto LABEL_31;
      }
    }

    else
    {
      v31 = *v17;

      v100 = 0;
      v101 = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD00000000000007BLL, 0x80000001D73C9A20);
      v97 = v31;

      sub_1D60F7F98(&v97);

      v32 = v97;
      v33 = *(v97 + 16);
      if (v33)
      {
        v99 = MEMORY[0x1E69E7CC0];
        sub_1D5BFC364(0, v33, 0);
        v22 = v99;
        v96 = v32;
        v34 = (v32 + 40);
        do
        {
          v35 = *(v34 - 1);
          v36 = *v34;
          v97 = 547520738;
          v98 = 0xA400000000000000;

          MEMORY[0x1DA6F9910](v35, v36);

          v37 = v97;
          v38 = v98;
          v99 = v22;
          v40 = *(v22 + 16);
          v39 = *(v22 + 24);
          if (v40 >= v39 >> 1)
          {
            sub_1D5BFC364((v39 > 1), v40 + 1, 1);
            v22 = v99;
          }

          *(v22 + 16) = v40 + 1;
          v41 = v22 + 16 * v40;
          *(v41 + 32) = v37;
          *(v41 + 40) = v38;
          v34 += 2;
          --v33;
        }

        while (v33);
        goto LABEL_31;
      }
    }

LABEL_32:

    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v43 = *v17;
    v42 = v17[1];
    v44 = v17[2];

    v100 = 0;
    v101 = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0x20676E697373694DLL, 0xE900000000000027);
    MEMORY[0x1DA6F9910](v42, v44);
    MEMORY[0x1DA6F9910](0xD00000000000001ELL, 0x80000001D73C9930);
    v97 = v43;

    sub_1D60F7F98(&v97);

    v45 = v97;
    v46 = *(v97 + 16);
    if (v46)
    {
      v95 = v42;
      v96 = v44;
      v99 = MEMORY[0x1E69E7CC0];
      sub_1D5BFC364(0, v46, 0);
      v47 = v99;
      v94[1] = v45;
      v48 = (v45 + 40);
      do
      {
        v49 = *(v48 - 1);
        v50 = *v48;
        v97 = 0x2220A280E2;
        v98 = 0xA500000000000000;

        MEMORY[0x1DA6F9910](v49, v50);
        MEMORY[0x1DA6F9910](34, 0xE100000000000000);

        v52 = v97;
        v51 = v98;
        v99 = v47;
        v54 = *(v47 + 16);
        v53 = *(v47 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_1D5BFC364((v53 > 1), v54 + 1, 1);
          v47 = v99;
        }

        *(v47 + 16) = v54 + 1;
        v55 = v47 + 16 * v54;
        *(v55 + 32) = v52;
        *(v55 + 40) = v51;
        v48 += 2;
        --v46;
      }

      while (v46);

      v42 = v95;
      v44 = v96;
    }

    else
    {

      v47 = MEMORY[0x1E69E7CC0];
    }

    v97 = v47;
    sub_1D5BBE0A8();
    sub_1D60F805C(&qword_1EDF3C840, sub_1D5BBE0A8);
    v80 = sub_1D7261F3C();
    v82 = v81;

    MEMORY[0x1DA6F9910](v80, v82);

    MEMORY[0x1DA6F9910](0xD000000000000071, 0x80000001D73C9950);
    MEMORY[0x1DA6F9910](v42, v44);

    MEMORY[0x1DA6F9910](0xD000000000000016, 0x80000001D73C99D0);
    return v100;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v19 = *v17;

    v100 = 0;
    v101 = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD000000000000061, 0x80000001D73C98C0);
    v97 = v19;

    sub_1D60F7F98(&v97);

    v20 = v97;
    v21 = *(v97 + 16);
    if (v21)
    {
      v99 = MEMORY[0x1E69E7CC0];
      sub_1D5BFC364(0, v21, 0);
      v22 = v99;
      v96 = v20;
      v23 = (v20 + 40);
      do
      {
        v24 = *(v23 - 1);
        v25 = *v23;
        v97 = 547520738;
        v98 = 0xA400000000000000;

        MEMORY[0x1DA6F9910](v24, v25);

        v26 = v97;
        v27 = v98;
        v99 = v22;
        v29 = *(v22 + 16);
        v28 = *(v22 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1D5BFC364((v28 > 1), v29 + 1, 1);
          v22 = v99;
        }

        *(v22 + 16) = v29 + 1;
        v30 = v22 + 16 * v29;
        *(v30 + 32) = v26;
        *(v30 + 40) = v27;
        v23 += 2;
        --v21;
      }

      while (v21);
LABEL_31:

LABEL_33:
      v97 = v22;
      sub_1D5BBE0A8();
      sub_1D60F805C(&qword_1EDF3C840, sub_1D5BBE0A8);
      v77 = sub_1D7261F3C();
      v79 = v78;

      MEMORY[0x1DA6F9910](v77, v79);

      return v100;
    }

    goto LABEL_32;
  }

  sub_1D60F81B0(0, &qword_1EC883BB8, type metadata accessor for FormatDeprecationWarning);

  sub_1D60F6D80(v17, v13, type metadata accessor for FormatDeprecationWarning);
  v56 = &v13[*(v10 + 24)];
  v57 = *(v56 + 1);
  if (v57)
  {
    v58 = *v56;
    v100 = 0;
    v101 = 0xE000000000000000;
    sub_1D7263D4C();
    v59 = FormatDeprecationWarning.message.getter();
    v61 = v60;

    v100 = v59;
    v101 = v61;
    MEMORY[0x1DA6F9910](0x2074410A0A3ALL, 0xE600000000000000);
    sub_1D60F95B4(&v13[*(v10 + 28)], v9, sub_1D60F7EE0);
    v62 = sub_1D725A90C();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v9, 1, v62) == 1)
    {
      v64 = 7104878;
      sub_1D60F7F38(v9, sub_1D60F7EE0);
      v65 = 0xE300000000000000;
    }

    else
    {
      v64 = sub_1D725A8AC();
      v65 = v89;
      (*(v63 + 8))(v9, v62);
    }

    MEMORY[0x1DA6F9910](v64, v65);

    MEMORY[0x1DA6F9910](0x657361656C500A0ALL, 0xED00002065737520);
    MEMORY[0x1DA6F9910](v58, v57);
    v90 = 0x64616574736E6920;
    v91 = 0xE90000000000002ELL;
  }

  else
  {
    v100 = 0;
    v101 = 0xE000000000000000;
    sub_1D7263D4C();
    v84 = FormatDeprecationWarning.message.getter();
    MEMORY[0x1DA6F9910](v84);

    MEMORY[0x1DA6F9910](0x2074410A0A3ALL, 0xE600000000000000);
    sub_1D60F95B4(&v13[*(v10 + 28)], v5, sub_1D60F7EE0);
    v85 = sub_1D725A90C();
    v86 = *(v85 - 8);
    if ((*(v86 + 48))(v5, 1, v85) == 1)
    {
      v87 = 7104878;
      sub_1D60F7F38(v5, sub_1D60F7EE0);
      v88 = 0xE300000000000000;
    }

    else
    {
      v87 = sub_1D725A8AC();
      v88 = v92;
      (*(v86 + 8))(v5, v85);
    }

    MEMORY[0x1DA6F9910](v87, v88);

    v90 = 0xD000000000000044;
    v91 = 0x80000001D73C9870;
  }

  MEMORY[0x1DA6F9910](v90, v91);
  v93 = v100;
  sub_1D60F7F38(v13, type metadata accessor for FormatDeprecationWarning);
  return v93;
}