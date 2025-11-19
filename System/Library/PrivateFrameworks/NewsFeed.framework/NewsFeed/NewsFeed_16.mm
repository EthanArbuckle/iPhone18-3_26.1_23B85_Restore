void sub_1D5CBC450()
{
  if (!qword_1EDF24D10)
  {
    sub_1D5CBC568();
    sub_1D5CBC5BC();
    sub_1D5CBC6C0();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24D10);
    }
  }
}

void sub_1D5CBC4D4()
{
  if (!qword_1EDF19D98)
  {
    sub_1D5CBC450();
    sub_1D5B58B84(&qword_1EDF24D18, sub_1D5CBC450);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19D98);
    }
  }
}

unint64_t sub_1D5CBC568()
{
  result = qword_1EDF34660;
  if (!qword_1EDF34660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34660);
  }

  return result;
}

unint64_t sub_1D5CBC5BC()
{
  result = qword_1EDF34668;
  if (!qword_1EDF34668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34668);
  }

  return result;
}

unint64_t sub_1D5CBC614()
{
  result = qword_1EDF34650;
  if (!qword_1EDF34650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34650);
  }

  return result;
}

unint64_t sub_1D5CBC66C()
{
  result = qword_1EDF34658;
  if (!qword_1EDF34658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34658);
  }

  return result;
}

unint64_t sub_1D5CBC6C0()
{
  result = qword_1EDF34670;
  if (!qword_1EDF34670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34670);
  }

  return result;
}

unint64_t sub_1D5CBC71C(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x7470697263736564;
      break;
    case 3:
      result = 1684957547;
      break;
    case 4:
      result = 0x737469617274;
      break;
    case 5:
      result = 0x6E6572646C696863;
      break;
    case 6:
      result = 0x656C797473;
      break;
    case 7:
      result = 0x73656C797473;
      break;
    case 8:
      result = 0x726F7463656C6573;
      break;
    case 9:
      result = 0x736E6F6974706FLL;
      break;
    case 10:
      result = 0x7365707974;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D5CBC898()
{
  result = qword_1EDF29788;
  if (!qword_1EDF29788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29788);
  }

  return result;
}

uint64_t sub_1D5CBC8EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 49))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 48);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D5CBC934(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t FormatHeadlineBinding.Text.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v29 - v8;
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
    v11 = v6;
    v12 = v34;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    v15 = v9;
    if (v14)
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
          *(v22 + 16) = &unk_1F51156E8;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D5CBD1CC();
    v30 = 0uLL;
    sub_1D726431C();
    switch(v29)
    {
      case 1:
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0;
        v26 = xmmword_1D728CF30;
        goto LABEL_35;
      case 2:
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0;
        v26 = xmmword_1D7297410;
        goto LABEL_35;
      case 3:
        v29 = xmmword_1D7279980;
        sub_1D5CCD298();
        sub_1D726427C();
        (*(v11 + 8))(v15, v5);
        v24 = v31;
        if (v31 == 3)
        {
          v25 = 0;
          v27 = 0;
          v26 = 0uLL;
          v24 = 1;
          goto LABEL_37;
        }

        v27 = 0;
        v25 = v33;
        v28 = v32;
        v26 = v30;
        break;
      case 4:
        v29 = xmmword_1D7279980;
        sub_1D5CCD298();
        sub_1D726427C();
        (*(v11 + 8))(v15, v5);
        v24 = v31;
        if (v31 == 3)
        {
          v25 = 0;
          v26 = 0uLL;
          v24 = 1;
          v27 = 1;
          goto LABEL_37;
        }

        v25 = v33;
        v28 = v32;
        v27 = 1;
        v26 = v30;
        break;
      case 5:
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0;
        v26 = xmmword_1D72BAA60;
        goto LABEL_35;
      case 6:
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0;
        v26 = xmmword_1D72BAA70;
        goto LABEL_35;
      case 7:
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0;
        v26 = xmmword_1D72BAA80;
        goto LABEL_35;
      case 8:
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0;
        v26 = xmmword_1D72BAA90;
        goto LABEL_35;
      case 9:
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0;
        v26 = xmmword_1D72BAAB0;
        goto LABEL_35;
      case 10:
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0;
        v26 = xmmword_1D72BAAC0;
        goto LABEL_35;
      case 11:
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0;
        v26 = xmmword_1D72BAAD0;
        goto LABEL_35;
      case 12:
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0;
        v26 = xmmword_1D72BAAE0;
        goto LABEL_35;
      case 13:
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0;
        v26 = xmmword_1D72BAAF0;
        goto LABEL_35;
      case 14:
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0;
        v26 = xmmword_1D72BAAA0;
        goto LABEL_35;
      case 15:
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0;
        v26 = xmmword_1D7282A80;
        goto LABEL_35;
      case 16:
        v30 = xmmword_1D7279980;
        sub_1D6695430();
        sub_1D726427C();
        (*(v11 + 8))(v15, v5);
        v27 = v29;
        if (v29 == 2)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0uLL;
LABEL_37:
          v28 = 0uLL;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v28 = 0uLL;
          v26 = v29 & 1;
          v27 = 2;
        }

        break;
      case 17:
        v30 = xmmword_1D7279980;
        sub_1D66953DC();
        sub_1D726427C();
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0;
        v26 = 0uLL;
        v27 = 3;
        goto LABEL_37;
      case 18:
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0;
        v26 = xmmword_1D72BAB00;
        goto LABEL_35;
      case 19:
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0;
        v26 = xmmword_1D72BAB10;
LABEL_35:
        v28 = 0uLL;
        v27 = 4;
        break;
      default:
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0;
        v26 = 0uLL;
        v27 = 4;
        goto LABEL_37;
    }

    *v12 = v26;
    *(v12 + 16) = v24;
    *(v12 + 24) = v28;
    *(v12 + 40) = v25;
    *(v12 + 48) = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CBD1CC()
{
  result = qword_1EDF29790;
  if (!qword_1EDF29790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29790);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FormatFontTrait(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D5CBD330()
{
  result = qword_1EDF29798;
  if (!qword_1EDF29798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29798);
  }

  return result;
}

uint64_t sub_1D5CBD384@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CBD3B4();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CBD3B4()
{
  v0 = sub_1D72648CC();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for FormatFontTrait(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1D5CBD498()
{
  result = qword_1EDF21B18;
  if (!qword_1EDF21B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21B18);
  }

  return result;
}

uint64_t sub_1D5CBD4EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D5CBD53C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t FormatBindingImageExpression.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  sub_1D5CBD9FC();
  v7 = v6;
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CBD978();
  sub_1D5B58B84(&qword_1EDF24F08, sub_1D5CBD978);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v37;
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

      v23 = *(v16 - 2);
      v22 = *(v16 - 1);

      v24 = sub_1D6627E68(0x676E69646E6962, 0xE700000000000000, 0x6369676F6CLL, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v10, v7);
      goto LABEL_11;
    }

LABEL_7:
  }

  sub_1D5CBDC54();
  v38 = 0uLL;
  v39 = 0;
  sub_1D726431C();
  v17 = v7;
  v18 = v13;
  v19 = *(&v40 + 1);
  v35 = v41;
  v33 = v40;
  v34 = v42;
  v20 = v43;
  v21 = v44;
  v32 = xmmword_1D728CF30;
  v40 = xmmword_1D728CF30;
  LOBYTE(v41) = 0;
  if (sub_1D726434C())
  {
    v38 = v32;
    v39 = 0;
    sub_1D5EEC080();
    sub_1D726431C();
    (*(v18 + 8))(v10, v17);
    v27 = v45;
  }

  else
  {
    (*(v18 + 8))(v10, v17);
    v27 = 1;
  }

  v28 = v34;
  v29 = v35;
  v30 = v19;
  v31 = v36;
  *v36 = v33;
  v31[1] = v30;
  v31[2] = v29;
  v31[3] = v28;
  v31[4] = v20;
  *(v31 + 40) = v21;
  *(v31 + 41) = v27;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CBD978()
{
  if (!qword_1EDF24F00)
  {
    sub_1D5CBDAA8();
    sub_1D5CBDAFC();
    sub_1D5CBDC00();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24F00);
    }
  }
}

void sub_1D5CBD9FC()
{
  if (!qword_1EDF19E90)
  {
    sub_1D5CBD978();
    sub_1D5B58B84(&qword_1EDF24F08, sub_1D5CBD978);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19E90);
    }
  }
}

unint64_t sub_1D5CBDAA8()
{
  result = qword_1EDF21B30;
  if (!qword_1EDF21B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21B30);
  }

  return result;
}

unint64_t sub_1D5CBDAFC()
{
  result = qword_1EDF21B38;
  if (!qword_1EDF21B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21B38);
  }

  return result;
}

unint64_t sub_1D5CBDB54()
{
  result = qword_1EDF21B20;
  if (!qword_1EDF21B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21B20);
  }

  return result;
}

unint64_t sub_1D5CBDBAC()
{
  result = qword_1EDF21B28;
  if (!qword_1EDF21B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21B28);
  }

  return result;
}

unint64_t sub_1D5CBDC00()
{
  result = qword_1EDF21B40;
  if (!qword_1EDF21B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21B40);
  }

  return result;
}

unint64_t sub_1D5CBDC54()
{
  result = qword_1EDF28910;
  if (!qword_1EDF28910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28910);
  }

  return result;
}

uint64_t sub_1D5CBDCA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 7 && *(a1 + 41))
  {
    return (*a1 + 7);
  }

  v3 = ~(*(a1 + 40) >> 1) & 0xF;
  if (v3 >= 6)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D5CBDCF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 6)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 7;
    if (a3 >= 7)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 7)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = (-2 * a2) & 0x1E;
    }
  }

  return result;
}

uint64_t FormatImageNodeBinding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v29[-v9 - 16];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    v11 = v7;
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
          *(v21 + 16) = &unk_1F51158C8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D5CBE48C();
    *v29 = 0uLL;
    sub_1D726431C();
    a1 = v12;
    if (v28 > 4u)
    {
      v23 = v32;
      if (v28 <= 6u)
      {
        *v29 = xmmword_1D7279980;
        if (v28 == 5)
        {
          sub_1D6696768();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = 0;
          v25 = 0uLL;
          v26 = 10;
        }

        else
        {
          sub_1D6696714();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v28;
          v25 = 0uLL;
          v26 = 12;
        }
      }

      else
      {
        if (v28 == 7)
        {
          v28 = xmmword_1D7279980;
          sub_1D5C6A164();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = *v29;
          v25 = *&v29[8];
          v27 = 0uLL;
          v26 = 14;
          goto LABEL_31;
        }

        if (v28 == 8)
        {
          v28 = xmmword_1D7279980;
          sub_1D668F67C();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = *v29;
          v25 = *&v29[8];
          v27 = v30;
          v26 = v31 | 0x10;
          goto LABEL_31;
        }

        *v29 = xmmword_1D7279980;
        sub_1D668F628();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v28;
        v25 = 0uLL;
        v26 = 18;
      }
    }

    else
    {
      v23 = v32;
      if (v28 <= 1u)
      {
        *v29 = xmmword_1D7279980;
        if (v28)
        {
          sub_1D5CD3BE8();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v28;
          v25 = 0uLL;
          v26 = 2;
        }

        else
        {
          sub_1D5CBE610();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v26 = 0;
          v24 = v28;
          v25 = 0uLL;
        }
      }

      else
      {
        if (v28 == 2)
        {
          v28 = xmmword_1D7279980;
          sub_1D6696810();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = *v29;
          v25 = *&v29[8];
          v27 = v30;
          v26 = v31 | 4;
          goto LABEL_31;
        }

        if (v28 == 3)
        {
          v28 = xmmword_1D7279980;
          sub_1D668F6D0();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = *v29;
          v25 = *&v29[8];
          v26 = 6;
          *&v27 = v30;
LABEL_31:
          *v23 = v24;
          *(v23 + 8) = v25;
          *(v23 + 24) = v27;
          *(v23 + 40) = v26;
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        *v29 = xmmword_1D7279980;
        sub_1D66967BC();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v28;
        v25 = 0uLL;
        v26 = 8;
      }
    }

    v27 = 0uLL;
    goto LABEL_31;
  }

LABEL_9:
  sub_1D61E4FBC(a1, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CBE48C()
{
  result = qword_1EDF28918;
  if (!qword_1EDF28918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28918);
  }

  return result;
}

unint64_t sub_1D5CBE540()
{
  result = qword_1EDF28920;
  if (!qword_1EDF28920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28920);
  }

  return result;
}

uint64_t sub_1D5CBE594@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CBE5C4();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CBE5C4()
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

unint64_t sub_1D5CBE610()
{
  result = qword_1EDF29740;
  if (!qword_1EDF29740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29740);
  }

  return result;
}

unint64_t sub_1D5CBE6B8()
{
  result = qword_1EDF29748;
  if (!qword_1EDF29748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29748);
  }

  return result;
}

unint64_t sub_1D5CBE76C()
{
  result = qword_1EDF29750;
  if (!qword_1EDF29750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29750);
  }

  return result;
}

uint64_t sub_1D5CBE7C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CBE7F0();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CBE7F0()
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

unint64_t sub_1D5CBE83C()
{
  result = qword_1EDF26178;
  if (!qword_1EDF26178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26178);
  }

  return result;
}

uint64_t sub_1D5CBE890(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5CBE8D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t FormatEdgeInsetsEquation.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  sub_1D5CBEE08();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CBED84();
  sub_1D5B58B84(&qword_1EDF25138, sub_1D5CBED84);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v7;
  v11 = v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v10;
  if (v13)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    v17 = v31;
    if (v16)
    {
      v18 = (v15 + 48);
      while (*v18 != 1)
      {
        v18 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v18 - 2);
      v20 = *(v18 - 1);

      v22 = sub_1D5CD9618();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v17 + 8))(v14, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D5C35368();
  v33 = 0uLL;
  v34 = 0;
  sub_1D726431C();
  v19 = v35;
  v33 = xmmword_1D728CF30;
  v34 = 0;
  sub_1D726431C();
  v24 = v35;
  v33 = xmmword_1D7297410;
  v34 = 0;
  sub_1D726431C();
  v29 = v35;
  v30 = v24;
  v33 = xmmword_1D72BAA60;
  v34 = 0;
  sub_1D726431C();
  (*(v31 + 8))(v14, v6);
  v26 = v35;
  v27 = v29;
  v28 = v30;
  *v11 = v19;
  v11[1] = v28;
  v11[2] = v27;
  v11[3] = v26;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CBED84()
{
  if (!qword_1EDF25130)
  {
    sub_1D5CBEEB4();
    sub_1D5CBEF08();
    sub_1D5CBF00C();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25130);
    }
  }
}

void sub_1D5CBEE08()
{
  if (!qword_1EDF19FA8)
  {
    sub_1D5CBED84();
    sub_1D5B58B84(&qword_1EDF25138, sub_1D5CBED84);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19FA8);
    }
  }
}

unint64_t sub_1D5CBEEB4()
{
  result = qword_1EDF26190;
  if (!qword_1EDF26190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26190);
  }

  return result;
}

unint64_t sub_1D5CBEF08()
{
  result = qword_1EDF26198;
  if (!qword_1EDF26198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26198);
  }

  return result;
}

unint64_t sub_1D5CBEF60()
{
  result = qword_1EDF26180;
  if (!qword_1EDF26180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26180);
  }

  return result;
}

unint64_t sub_1D5CBEFB8()
{
  result = qword_1EDF26188;
  if (!qword_1EDF26188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26188);
  }

  return result;
}

unint64_t sub_1D5CBF00C()
{
  result = qword_1EDF261A0;
  if (!qword_1EDF261A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF261A0);
  }

  return result;
}

uint64_t sub_1D5CBF064()
{
  v1 = *v0;
  v2 = 7368564;
  v3 = 0x6D6F74746F62;
  v4 = 0x7468676972;
  if (v1 != 3)
  {
    v4 = 1885433183;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1952867692;
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

unint64_t sub_1D5CBF0E0()
{
  result = qword_1EDF270A0;
  if (!qword_1EDF270A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF270A0);
  }

  return result;
}

uint64_t sub_1D5CBF134(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1D5CBF190(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 17))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 3;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t FormatPublisherLogoSize.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D5CBF5FC();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CBF578();
  sub_1D5B58B84(&qword_1EDF25198, sub_1D5CBF578);
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

      v21 = *(v17 - 2);
      v20 = *(v17 - 1);

      v22 = sub_1D662106C();
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

  sub_1D5CBF854();
  v28 = 0uLL;
  v29 = 0;
  sub_1D726431C();
  v18 = v30;
  v28 = xmmword_1D728CF30;
  v29 = 0;
  sub_1D5CBFAE4();
  sub_1D726431C();
  v19 = v30;
  v28 = xmmword_1D7297410;
  v29 = 0;
  sub_1D5CA9754();
  sub_1D726427C();
  (*(v14 + 8))(v10, v6);
  v25 = v30;
  *v13 = v18;
  *(v13 + 8) = v19;
  *(v13 + 16) = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CBF568(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

void sub_1D5CBF578()
{
  if (!qword_1EDF25190)
  {
    sub_1D5CBF6A8();
    sub_1D5CBF6FC();
    sub_1D5CBF800();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25190);
    }
  }
}

void sub_1D5CBF5FC()
{
  if (!qword_1EDF19FD8)
  {
    sub_1D5CBF578();
    sub_1D5B58B84(&qword_1EDF25198, sub_1D5CBF578);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19FD8);
    }
  }
}

unint64_t sub_1D5CBF6A8()
{
  result = qword_1EDF270B8;
  if (!qword_1EDF270B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF270B8);
  }

  return result;
}

unint64_t sub_1D5CBF6FC()
{
  result = qword_1EDF270C0;
  if (!qword_1EDF270C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF270C0);
  }

  return result;
}

unint64_t sub_1D5CBF754()
{
  result = qword_1EDF270A8;
  if (!qword_1EDF270A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF270A8);
  }

  return result;
}

unint64_t sub_1D5CBF7AC()
{
  result = qword_1EDF270B0;
  if (!qword_1EDF270B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF270B0);
  }

  return result;
}

unint64_t sub_1D5CBF800()
{
  result = qword_1EDF270C8;
  if (!qword_1EDF270C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF270C8);
  }

  return result;
}

unint64_t sub_1D5CBF854()
{
  result = qword_1EDF20710;
  if (!qword_1EDF20710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20710);
  }

  return result;
}

uint64_t sub_1D5CBF8A8()
{
  v1 = 0x676E69646E6962;
  v2 = 0x656C797473;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 1702521203;
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

unint64_t sub_1D5CBF960()
{
  result = qword_1EDF20718;
  if (!qword_1EDF20718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20718);
  }

  return result;
}

unint64_t sub_1D5CBFA14()
{
  result = qword_1EDF20720;
  if (!qword_1EDF20720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20720);
  }

  return result;
}

uint64_t sub_1D5CBFA68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CBFA98();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CBFA98()
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

unint64_t sub_1D5CBFAE4()
{
  result = qword_1EDF24848;
  if (!qword_1EDF24848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24848);
  }

  return result;
}

uint64_t sub_1D5CBFB38(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5CBFBAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v31 = a2;
  v32 = a4;
  v29 = a5;
  v30 = a3;
  v6 = v5;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v29 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v5)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v6);
    swift_willThrow();
  }

  else
  {
    v14 = v31;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v18 = v13;
    if (v16)
    {
      v19 = sub_1D726433C();
      v20 = (v19 + 40);
      v21 = *(v19 + 16) + 1;
      while (--v21)
      {
        v22 = v20 + 2;
        v23 = *v20;
        v20 += 2;
        if (v23 >= 4)
        {
          v24 = *(v22 - 3);

          sub_1D5E2D970();
          v6 = swift_allocError();
          *v25 = v24;
          *(v25 + 8) = v23;
          *(v25 + 16) = v14;
          *(v25 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v10 + 8))(v18, v9);
          goto LABEL_9;
        }
      }
    }

    v30(v17);
    v33 = 0uLL;
    sub_1D726431C();
    if (v34 > 1u)
    {
      if (v34 == 2)
      {
        (*(v10 + 8))(v18, v9);
        v28 = 2;
      }

      else
      {
        sub_1D5C71DC8();
        v33 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v10 + 8))(v18, v9);
        v28 = v34;
      }

      v27 = v29;
    }

    else
    {
      v27 = v29;
      if (v34)
      {
        (*(v10 + 8))(v18, v9);
        v28 = 1;
      }

      else
      {
        (*(v10 + 8))(v18, v9);
        v28 = 0;
      }
    }

    *v27 = v28;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CBFFAC()
{
  result = qword_1EDF24850;
  if (!qword_1EDF24850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24850);
  }

  return result;
}

unint64_t sub_1D5CC0060()
{
  result = qword_1EDF24858;
  if (!qword_1EDF24858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24858);
  }

  return result;
}

uint64_t sub_1D5CC00B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CC00E4();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CC00E4()
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

unint64_t sub_1D5CC0190()
{
  result = qword_1EDF2CE90[0];
  if (!qword_1EDF2CE90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF2CE90);
  }

  return result;
}

NewsFeed::FormatAccessibility_optional __swiftcall FormatAccessibility.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D5CC0270(void *a1)
{
  sub_1D5C2E60C(0, &qword_1EDF3BCF8, sub_1D5C91044, sub_1D5C50B48);
  v74 = v2;
  v73 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  *&v76 = &v64 - v4;
  sub_1D5C2E60C(0, &qword_1EDF3BD38, sub_1D5C62464, sub_1D5C624B8);
  *&v77 = v5;
  v72 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v75 = &v64 - v7;
  sub_1D5CC11B8(0, &qword_1EDF3BB80);
  v9 = v8;
  v78 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v64 - v11;
  sub_1D5CC120C();
  v14 = v13;
  *&v79 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CC12A0();
  sub_1D5B58B84(&qword_1EDF25548, sub_1D5CC12A0);
  v18 = v89;
  sub_1D7264B0C();
  v19 = v18;
  if (v18)
  {
    goto LABEL_10;
  }

  v89 = v12;
  v20 = v79;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = sub_1D7264AFC();
  v22 = Dictionary<>.errorOnUnknownKeys.getter(v21);

  if (v22)
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

      v30 = v17;
      v31 = sub_1D6625F3C();
      sub_1D5E2D970();
      v32 = swift_allocError();
      *v33 = v29;
      *(v33 + 8) = v28;
      v19 = v32;
      *(v33 + 16) = v31;
      *(v33 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v20 + 8))(v30, v14);
      goto LABEL_10;
    }

LABEL_7:
  }

  v26 = sub_1D5C31D18(v17, 0, 0, 0, sub_1D5CC120C);
  v71 = v27;
  v85 = xmmword_1D728CF30;
  LOBYTE(v86) = 0;
  v68 = sub_1D72642BC();
  v70 = v35;
  v69 = xmmword_1D7297410;
  v85 = xmmword_1D7297410;
  LOBYTE(v86) = 0;
  v36 = sub_1D726434C();
  if (v36)
  {
    v83 = v69;
    v84 = 0;
    sub_1D66F5F58();
    sub_1D726431C();
    *&v69 = v26;
    v37 = v89;
    v38 = sub_1D725A74C();
    (*(v78 + 8))(v37, v9);
  }

  else
  {
    *&v69 = v26;
    v38 = MEMORY[0x1E69E7CC0];
  }

  v85 = xmmword_1D72BAA60;
  LOBYTE(v86) = 0;
  v78 = sub_1D726422C();
  v89 = v39;
  v85 = xmmword_1D72BAA70;
  LOBYTE(v86) = 0;
  v65 = sub_1D726422C();
  v67 = v40;
  v66 = xmmword_1D72BAA80;
  v85 = xmmword_1D72BAA80;
  LOBYTE(v86) = 0;
  if (sub_1D726434C())
  {
    v83 = v66;
    v84 = 0;
    sub_1D5C62940();
    sub_1D726431C();
    v41 = v80;
    sub_1D5C82CD8(v80);
    *&v66 = v41;
    sub_1D5C92A8C(v41);
  }

  else
  {
    *&v66 = 0xB000000000000000;
  }

  v64 = xmmword_1D72BAA90;
  v85 = xmmword_1D72BAA90;
  LOBYTE(v86) = 0;
  v42 = sub_1D726434C();
  v43 = v77;
  if (v42)
  {
    v83 = v64;
    v84 = 0;
    sub_1D5C9EEC4();
    sub_1D726431C();
    v44 = v75;
    *&v64 = sub_1D725A74C();
    (*(v72 + 8))(v44, v43);
  }

  else
  {
    *&v64 = MEMORY[0x1E69E7CC0];
  }

  v85 = xmmword_1D72BAAA0;
  LOBYTE(v86) = 0;
  sub_1D5C51470();
  v9 = v74;
  sub_1D726431C();
  *&v77 = 0;
  v75 = v38;
  v45 = v76;
  v46 = sub_1D725A74C();
  (*(v73 + 8))(v45, v9);
  v76 = xmmword_1D72BAAB0;
  v85 = xmmword_1D72BAAB0;
  LOBYTE(v86) = 0;
  v47 = v17;
  if (sub_1D726434C())
  {
    v83 = v76;
    v84 = 0;
    v48 = v77;
    sub_1D726431C();
    *&v77 = v48;
    if (v48)
    {
      (*(v20 + 8))(v17, v14);

      sub_1D5C92A8C(v66);

LABEL_22:
      v19 = v77;
      goto LABEL_10;
    }

    v49 = v80;
  }

  else
  {
    v49 = 0;
  }

  v76 = xmmword_1D72BAAC0;
  v85 = xmmword_1D72BAAC0;
  LOBYTE(v86) = 0;
  if (sub_1D726434C())
  {
    v83 = v76;
    v84 = 0;
    sub_1D5CDCE98();
    v50 = v77;
    sub_1D726431C();
    *&v77 = v50;
    if (v50)
    {

      sub_1D5C92A8C(v66);

      (*(v20 + 8))(v47, v14);
      goto LABEL_22;
    }

    *&v76 = v46;
    v51 = v47;
    v9 = v80;
    v52 = v81;
    v53 = v49;
    v54 = v82;
    sub_1D5C75A4C(v80, v81, v82);
    v74 = v52;
    LODWORD(v73) = v54;
    v55 = v54;
    v49 = v53;
    sub_1D5D2F2C8(v9, v52, v55);
  }

  else
  {
    *&v76 = v46;
    v51 = v47;
    v9 = 0;
    v74 = 0;
    LODWORD(v73) = 0;
  }

  v83 = xmmword_1D72BAAD0;
  v84 = 0;
  sub_1D5C5C5C0();
  v56 = v77;
  sub_1D726427C();
  if (!v56)
  {
    (*(v20 + 8))(v51, v14);
    v57 = v87;
    v58 = v88;
    type metadata accessor for FormatVOverlayNode();
    v79 = v85;
    v77 = v86;
    v59 = v9;
    v9 = swift_allocObject();
    *(v9 + 72) = 0u;
    *(v9 + 56) = 0u;
    swift_beginAccess();
    v60 = v71;
    *(v9 + 16) = v69;
    *(v9 + 24) = v60;
    v61 = v70;
    *(v9 + 32) = v68;
    *(v9 + 40) = v61;
    swift_beginAccess();
    *(v9 + 48) = v75;
    swift_beginAccess();
    *(v9 + 56) = v78;
    *(v9 + 64) = v89;

    swift_beginAccess();
    *(v9 + 72) = v65;
    *(v9 + 80) = v67;

    swift_beginAccess();
    *(v9 + 88) = v66;
    swift_beginAccess();
    *(v9 + 96) = v64;
    swift_beginAccess();
    *(v9 + 104) = v76;
    swift_beginAccess();
    *(v9 + 112) = v49;
    swift_beginAccess();
    v62 = v74;
    *(v9 + 120) = v59;
    *(v9 + 128) = v62;
    *(v9 + 136) = v73;
    v63 = v77;
    *(v9 + 144) = v79;
    *(v9 + 160) = v63;
    *(v9 + 176) = v57;
    *(v9 + 184) = v58;
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v9;
  }

  (*(v20 + 8))(v51, v14);
  sub_1D5C92A8C(v66);

  sub_1D5D2F2C8(v9, v74, v73);
  v19 = v56;
LABEL_10:
  sub_1D61E4FBC(a1, v19);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D5CC118C@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1D5CC0270(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1D5CC11B8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D725AAEC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D5CC120C()
{
  if (!qword_1EDF1A1B0)
  {
    sub_1D5CC12A0();
    sub_1D5B58B84(&qword_1EDF25548, sub_1D5CC12A0);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A1B0);
    }
  }
}

void sub_1D5CC12A0()
{
  if (!qword_1EDF25540)
  {
    sub_1D5CC1324();
    sub_1D5CC1378();
    sub_1D5CC147C();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25540);
    }
  }
}

unint64_t sub_1D5CC1324()
{
  result = qword_1EDF2D988;
  if (!qword_1EDF2D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D988);
  }

  return result;
}

unint64_t sub_1D5CC1378()
{
  result = qword_1EDF2D990;
  if (!qword_1EDF2D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D990);
  }

  return result;
}

unint64_t sub_1D5CC13D0()
{
  result = qword_1EDF2D978;
  if (!qword_1EDF2D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D978);
  }

  return result;
}

unint64_t sub_1D5CC1428()
{
  result = qword_1EDF2D980;
  if (!qword_1EDF2D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D980);
  }

  return result;
}

unint64_t sub_1D5CC147C()
{
  result = qword_1EDF2D998;
  if (!qword_1EDF2D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D998);
  }

  return result;
}

unint64_t sub_1D5CC14F0(char a1)
{
  result = 0x656C626978656C66;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6974706FLL;
      break;
    case 2:
      result = 0x74756F79616CLL;
      break;
    case 3:
      result = 1684957538;
      break;
    case 4:
      result = 0x676E69646E6962;
      break;
    case 5:
      result = 0x726F7463656C6573;
      break;
    case 6:
      result = 0x726F7463656C6573;
      break;
    case 7:
      result = 7630702;
      break;
    case 8:
      result = 6581857;
      break;
    case 9:
      result = 29295;
      break;
    case 10:
      result = 1819242338;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x656D617266;
      break;
    case 13:
      result = 0x6E694270756F7267;
      break;
    case 14:
      result = 0x6B636F6C62;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5CC1688(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x65737265766572;
    v7 = 2019912806;
    if (a1 != 10)
    {
      v7 = 1885433183;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x656D7473756A6461;
    v9 = 0x6E6572646C696863;
    if (a1 != 7)
    {
      v9 = 0x6465737265766572;
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
    v1 = 0x696669746E656469;
    v2 = 1701667182;
    v3 = 0x7470697263736564;
    if (a1 != 4)
    {
      v3 = 1702521203;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000010;
    if (a1 != 1)
    {
      v4 = 0x6150746567726174;
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

unint64_t sub_1D5CC17FC()
{
  result = qword_1EDF297B8;
  if (!qword_1EDF297B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF297B8);
  }

  return result;
}

uint64_t FormatHeadlineBinding.Bool.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v22 - v9;
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

    v13 = v23;
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
          *(v20 + 16) = &unk_1F5115418;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D5CC1B48();
    v24 = 0;
    v25 = 0;
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    *v13 = byte_1D72E0BDA[v26];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CC1B48()
{
  result = qword_1EDF297C0;
  if (!qword_1EDF297C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF297C0);
  }

  return result;
}

unint64_t sub_1D5CC1BFC()
{
  result = qword_1EDF297C8;
  if (!qword_1EDF297C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF297C8);
  }

  return result;
}

uint64_t sub_1D5CC1C50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CC1C80();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CC1C80()
{
  v0 = sub_1D72648CC();

  if (v0 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D5CC1CF8(void *a1)
{
  sub_1D5C2E60C(0, &qword_1EDF3BD38, sub_1D5C62464, sub_1D5C624B8);
  v3 = v2;
  v49 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v37 - v5;
  sub_1D5CC22C0();
  v8 = v7;
  *&v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CC2354();
  sub_1D5B58B84(&qword_1EDF24BB8, sub_1D5CC2354);
  v12 = v42;
  sub_1D7264B0C();
  v13 = v12;
  if (!v12)
  {
    *&v42 = v6;
    v14 = v41;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    if (v16)
    {
      v17 = sub_1D726433C();
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = (v17 + 48);
        while (*v19 != 1)
        {
          v19 += 24;
          if (!--v18)
          {
            goto LABEL_7;
          }
        }

        v24 = *(v19 - 2);
        v23 = *(v19 - 1);

        v25 = sub_1D5C9E7E0();
        sub_1D5E2D970();
        v26 = swift_allocError();
        *v27 = v24;
        *(v27 + 8) = v23;
        *(v27 + 16) = v25;
        v13 = v26;
        *(v27 + 24) = xmmword_1D72874E0;
        swift_willThrow();
        (*(v14 + 8))(v11, v8);
        goto LABEL_10;
      }

LABEL_7:
    }

    v13 = 0;
    v20 = sub_1D5C31D18(v11, 0, 0, 0, sub_1D5CC22C0);
    v22 = v21;
    v40 = v20;
    v45 = xmmword_1D728CF30;
    LOBYTE(v46) = 0;
    sub_1D5C62940();
    sub_1D726431C();
    v29 = v43;
    v39 = xmmword_1D7297410;
    v45 = xmmword_1D7297410;
    LOBYTE(v46) = 0;
    if (sub_1D726434C())
    {
      v43 = v39;
      v44 = 0;
      sub_1D5C9EEC4();
      v30 = v42;
      sub_1D726431C();
      v38 = 0;
      *&v39 = v29;
      v31 = sub_1D725A74C();
      v32 = v3;
      v33 = v31;
      (*(v49 + 8))(v30, v32);
      v13 = v38;
    }

    else
    {
      *&v39 = v29;
      v33 = MEMORY[0x1E69E7CC0];
    }

    v43 = xmmword_1D72BAA60;
    v44 = 0;
    sub_1D5C5C5C0();
    sub_1D726427C();
    if (!v13)
    {
      (*(v14 + 8))(v11, v8);
      v34 = v47;
      v35 = v48;
      type metadata accessor for FormatFrameNode();
      v41 = v46;
      v42 = v45;
      v8 = swift_allocObject();
      swift_beginAccess();
      *(v8 + 16) = v40;
      *(v8 + 24) = v22;
      *(v8 + 32) = v39;
      swift_beginAccess();
      *(v8 + 40) = v33;
      v36 = v41;
      *(v8 + 48) = v42;
      *(v8 + 64) = v36;
      *(v8 + 80) = v34;
      *(v8 + 88) = v35;
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v8;
    }

    (*(v14 + 8))(v11, v8);
    sub_1D5C92A8C(v39);
  }

LABEL_10:
  sub_1D61E4FBC(a1, v13);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1D5CC2294@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5CC1CF8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1D5CC22C0()
{
  if (!qword_1EDF19CE8)
  {
    sub_1D5CC2354();
    sub_1D5B58B84(&qword_1EDF24BB8, sub_1D5CC2354);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19CE8);
    }
  }
}

void sub_1D5CC2354()
{
  if (!qword_1EDF24BB0)
  {
    sub_1D5CC23D8();
    sub_1D5CC242C();
    sub_1D5CC2530();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24BB0);
    }
  }
}

unint64_t sub_1D5CC23D8()
{
  result = qword_1EDF31970;
  if (!qword_1EDF31970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31970);
  }

  return result;
}

unint64_t sub_1D5CC242C()
{
  result = qword_1EDF31978;
  if (!qword_1EDF31978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31978);
  }

  return result;
}

unint64_t sub_1D5CC2484()
{
  result = qword_1EDF31960;
  if (!qword_1EDF31960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31960);
  }

  return result;
}

unint64_t sub_1D5CC24DC()
{
  result = qword_1EDF31968;
  if (!qword_1EDF31968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31968);
  }

  return result;
}

unint64_t sub_1D5CC2530()
{
  result = qword_1EDF31980;
  if (!qword_1EDF31980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31980);
  }

  return result;
}

uint64_t sub_1D5CC25A8(void *a1)
{
  sub_1D5C2E60C(0, &qword_1EDF3BD38, sub_1D5C62464, sub_1D5C624B8);
  v3 = v2;
  *&v51 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v46 - v5;
  sub_1D5CC3100();
  v8 = v7;
  *&v52 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CC307C();
  sub_1D5B58B84(&qword_1EDF25528, sub_1D5CC307C);
  v12 = v53;
  sub_1D7264B0C();
  v13 = v12;
  if (v12)
  {
    goto LABEL_10;
  }

  *&v53 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1D7264AFC();
  v15 = Dictionary<>.errorOnUnknownKeys.getter(v14);

  if (v15)
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

      v23 = *(v18 - 2);
      v22 = *(v18 - 1);

      v24 = sub_1D66135B4();
      sub_1D5E2D970();
      v25 = swift_allocError();
      *v26 = v23;
      *(v26 + 8) = v22;
      *(v26 + 16) = v24;
      v13 = v25;
      *(v26 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v52 + 8))(v11, v8);
      goto LABEL_10;
    }

LABEL_7:
  }

  v19 = sub_1D5C31D18(v11, 0, 0, 0, sub_1D5CC3100);
  v21 = v20;
  v57 = xmmword_1D728CF30;
  LOBYTE(v58) = 0;
  sub_1D5CC349C();
  sub_1D726431C();
  v57 = xmmword_1D7297410;
  LOBYTE(v58) = 0;
  v28 = v11;
  v29 = sub_1D72642BC();
  v61 = v30;
  v57 = xmmword_1D72BAA60;
  LOBYTE(v58) = 0;
  sub_1D5C62940();
  sub_1D726431C();
  v49 = v29;
  v31 = v55;
  v57 = xmmword_1D72BAA70;
  LOBYTE(v58) = 0;
  sub_1D5C6411C();
  sub_1D726427C();
  *&v50 = 0;
  v47 = a1;
  v48 = v55;
  v46 = xmmword_1D72BAA80;
  v57 = xmmword_1D72BAA80;
  LOBYTE(v58) = 0;
  if (sub_1D726434C())
  {
    v55 = v46;
    v56 = 0;
    sub_1D5C9EEC4();
    v32 = v53;
    v33 = v50;
    sub_1D726431C();
    *&v50 = v33;
    if (v33)
    {
      (*(v52 + 8))(v28, v8);

      sub_1D5C92A8C(v31);
LABEL_20:

LABEL_31:
      a1 = v47;
      v13 = v50;
      goto LABEL_10;
    }

    *&v46 = sub_1D725A74C();
    (*(v51 + 8))(v32, v3);
  }

  else
  {
    *&v46 = MEMORY[0x1E69E7CC0];
  }

  v53 = xmmword_1D72BAA90;
  v57 = xmmword_1D72BAA90;
  LOBYTE(v58) = 0;
  if (sub_1D726434C())
  {
    v55 = v53;
    v56 = 0;
    v34 = v50;
    sub_1D726431C();
    *&v50 = v34;
    if (v34)
    {
      (*(v52 + 8))(v28, v8);

      sub_1D5C92A8C(v31);

      goto LABEL_20;
    }

    *&v53 = v31;
    v35 = v8;
    v36 = v54;
  }

  else
  {
    *&v53 = v31;
    v35 = v8;
    v36 = 0;
  }

  v51 = xmmword_1D72BAAA0;
  v57 = xmmword_1D72BAAA0;
  LOBYTE(v58) = 0;
  if (sub_1D726434C())
  {
    v55 = v51;
    v56 = 0;
    sub_1D5DF6A0C();
    v37 = v50;
    sub_1D726431C();
    *&v50 = v37;
    if (v37)
    {

      sub_1D5C92A8C(v53);

      (*(v52 + 8))(v28, v35);
      goto LABEL_31;
    }

    v38 = v54;
    sub_1D5EB1500(v54);
    sub_1D5EB15C4(v38);
  }

  else
  {
    v38 = 0x8000000000000000;
  }

  v51 = xmmword_1D72BAAB0;
  v57 = xmmword_1D72BAAB0;
  LOBYTE(v58) = 0;
  if (sub_1D726434C())
  {
    v55 = v51;
    v56 = 0;
    v39 = v50;
    sub_1D726431C();
    *&v50 = v39;
    if (v39)
    {
      (*(v52 + 8))(v28, v35);

      sub_1D5C92A8C(v53);

      sub_1D5EB15C4(v38);

      goto LABEL_31;
    }

    v8 = v54;
  }

  else
  {
    v8 = 1;
  }

  v55 = xmmword_1D72BAAC0;
  v56 = 0;
  sub_1D5C5C5C0();
  v40 = v50;
  sub_1D726427C();
  if (!v40)
  {
    LODWORD(v51) = v8;
    (*(v52 + 8))(v28, v35);
    v42 = v59;
    v41 = v60;
    type metadata accessor for FormatAdMetricsNode();
    v52 = v57;
    v50 = v58;
    v8 = swift_allocObject();
    swift_beginAccess();
    *(v8 + 16) = v19;
    *(v8 + 24) = v21;
    v43 = v61;
    *(v8 + 32) = v49;
    *(v8 + 40) = v43;
    v44 = v48;
    *(v8 + 48) = v53;
    *(v8 + 56) = v44;
    swift_beginAccess();
    *(v8 + 64) = v46;
    swift_beginAccess();
    *(v8 + 72) = v36;
    swift_beginAccess();
    *(v8 + 80) = v38;
    swift_beginAccess();
    *(v8 + 88) = v51;
    v45 = v50;
    *(v8 + 96) = v52;
    *(v8 + 112) = v45;
    *(v8 + 128) = v42;
    *(v8 + 136) = v41;
    __swift_destroy_boxed_opaque_existential_1(v47);
    return v8;
  }

  (*(v52 + 8))(v28, v35);
  sub_1D5C92A8C(v53);

  sub_1D5EB15C4(v38);

  v13 = v40;
  a1 = v47;
LABEL_10:
  sub_1D61E4FBC(a1, v13);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1D5CC3050@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5CC25A8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1D5CC307C()
{
  if (!qword_1EDF25520)
  {
    sub_1D5CC3194();
    sub_1D5CC31E8();
    sub_1D5CC32EC();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25520);
    }
  }
}

void sub_1D5CC3100()
{
  if (!qword_1EDF1A1A0)
  {
    sub_1D5CC307C();
    sub_1D5B58B84(&qword_1EDF25528, sub_1D5CC307C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A1A0);
    }
  }
}

unint64_t sub_1D5CC3194()
{
  result = qword_1EDF2CDD8;
  if (!qword_1EDF2CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CDD8);
  }

  return result;
}

unint64_t sub_1D5CC31E8()
{
  result = qword_1EDF2CDE0;
  if (!qword_1EDF2CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CDE0);
  }

  return result;
}

unint64_t sub_1D5CC3240()
{
  result = qword_1EDF2CDC8;
  if (!qword_1EDF2CDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CDC8);
  }

  return result;
}

unint64_t sub_1D5CC3298()
{
  result = qword_1EDF2CDD0;
  if (!qword_1EDF2CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CDD0);
  }

  return result;
}

unint64_t sub_1D5CC32EC()
{
  result = qword_1EDF2CDE8;
  if (!qword_1EDF2CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CDE8);
  }

  return result;
}

unint64_t sub_1D5CC3348(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x696669746E656469;
    v7 = 0xD00000000000001CLL;
    v8 = 1702521203;
    if (a1 != 3)
    {
      v8 = 0x657A69736572;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x746E65746E6F63;
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
    v2 = 2019912806;
    if (a1 != 9)
    {
      v2 = 1885433183;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x656D7473756A6461;
    v4 = 0x7865646E497ALL;
    if (a1 != 6)
    {
      v4 = 0x696C696269736976;
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

unint64_t sub_1D5CC349C()
{
  result = qword_1EDF236C0;
  if (!qword_1EDF236C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF236C0);
  }

  return result;
}

uint64_t FormatAdMetricsNodeContent.init(from:)(void *a1)
{
  v2 = v1;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v1)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v2);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v10 = sub_1D7264AFC();
    v11 = Dictionary<>.errorOnUnknownKeys.getter(v10);

    if (v11)
    {
      v12 = sub_1D726433C();
      v13 = (v12 + 40);
      v14 = *(v12 + 16) + 1;
      while (--v14)
      {
        v15 = v13 + 2;
        v16 = *v13;
        v13 += 2;
        if (v16 >= 4)
        {
          v17 = *(v15 - 3);

          sub_1D5E2D970();
          v2 = swift_allocError();
          *v18 = v17;
          *(v18 + 8) = v16;
          *(v18 + 16) = &unk_1F51140E0;
          *(v18 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v6 + 8))(v9, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D5CC3808();
    v20 = 0uLL;
    sub_1D726431C();
    v20 = xmmword_1D7279980;
    sub_1D5CC391C();
    sub_1D726431C();
    (*(v6 + 8))(v9, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CC3808()
{
  result = qword_1EDF236C8;
  if (!qword_1EDF236C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF236C8);
  }

  return result;
}

unint64_t sub_1D5CC38BC()
{
  result = qword_1EDF236D0;
  if (!qword_1EDF236D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF236D0);
  }

  return result;
}

unint64_t sub_1D5CC391C()
{
  result = qword_1EDF236D8;
  if (!qword_1EDF236D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF236D8);
  }

  return result;
}

uint64_t sub_1D5CC3970(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v29 = a4;
  v25 = a3;
  v6 = v4;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v25 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v4)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v6);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    v16 = v26;
    if (v14)
    {
      v17 = sub_1D726433C();
      v18 = (v17 + 40);
      v19 = *(v17 + 16) + 1;
      while (--v19)
      {
        v20 = v18 + 2;
        v21 = *v18;
        v18 += 2;
        if (v21 >= 4)
        {
          v22 = *(v20 - 3);

          sub_1D5E2D970();
          v6 = swift_allocError();
          *v23 = v22;
          *(v23 + 8) = v21;
          *(v23 + 16) = a2;
          *(v23 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v16 + 8))(v12, v9);
          goto LABEL_9;
        }
      }
    }

    v25(v15);
    v27 = 0;
    v28 = 0;
    sub_1D726431C();
    (*(v16 + 8))(v12, v9);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CC3C90()
{
  result = qword_1EDF236E0;
  if (!qword_1EDF236E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF236E0);
  }

  return result;
}

unint64_t sub_1D5CC3D44()
{
  result = qword_1EDF236E8;
  if (!qword_1EDF236E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF236E8);
  }

  return result;
}

uint64_t sub_1D5CC3DC8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5CC3DF4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D5CC3DF4(void *a1)
{
  sub_1D5C8CD38();
  *&v64 = v2;
  v63 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v65 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5C2E60C(0, &qword_1EDF3BD38, sub_1D5C62464, sub_1D5C624B8);
  v6 = v5;
  *&v66 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v51[-v8];
  sub_1D5CC4D94();
  v11 = v10;
  *&v67 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CC4D10();
  sub_1D5B58B84(&qword_1EDF24BD8, sub_1D5CC4D10);
  v16 = v75;
  sub_1D7264B0C();
  v17 = v16;
  if (v16)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v17);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v15;
  }

  v18 = v9;
  v75 = v6;
  v19 = v67;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_1D7264AFC();
  v21 = Dictionary<>.errorOnUnknownKeys.getter(v20);

  if (v21)
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
      v15 = *(v24 - 1);

      v28 = sub_1D6627354();
      sub_1D5E2D970();
      v17 = swift_allocError();
      *v29 = v27;
      *(v29 + 8) = v15;
      *(v29 + 16) = v28;
      *(v29 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v19 + 8))(v14, v11);
      goto LABEL_10;
    }

LABEL_7:
  }

  v25 = sub_1D5C31D18(v14, 0, 0, 0, sub_1D5CC4D94);
  v62 = v26;
  v71 = xmmword_1D728CF30;
  LOBYTE(v72) = 0;
  sub_1D5C62940();
  sub_1D726431C();
  v30 = v69;
  v71 = xmmword_1D7297410;
  LOBYTE(v72) = 0;
  sub_1D5C6411C();
  sub_1D726427C();
  v58 = v25;
  v32 = v69;
  v60 = xmmword_1D72BAA60;
  v71 = xmmword_1D72BAA60;
  LOBYTE(v72) = 0;
  if (sub_1D726434C())
  {
    v61 = v32;
    v69 = v60;
    v70 = 0;
    sub_1D5C9EEC4();
    v33 = v75;
    sub_1D726431C();
    *&v60 = v30;
    v59 = sub_1D725A74C();
    (*(v66 + 8))(v18, v33);
    v32 = v61;
  }

  else
  {
    *&v60 = v30;
    v59 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for FormatViewNodeStyle();
  v71 = xmmword_1D72BAA70;
  LOBYTE(v72) = 0;
  sub_1D5B58B84(&qword_1EDF2BA90, type metadata accessor for FormatViewNodeStyle);
  sub_1D726427C();
  v61 = v32;
  v34 = v69;
  type metadata accessor for FormatAnimationNodeStyle();
  v71 = xmmword_1D72BAA80;
  LOBYTE(v72) = 0;
  sub_1D5B58B84(&qword_1EDF26768, type metadata accessor for FormatAnimationNodeStyle);
  sub_1D726427C();
  v75 = v34;
  v35 = v69;
  v66 = xmmword_1D72BAA90;
  v71 = xmmword_1D72BAA90;
  LOBYTE(v72) = 0;
  if (sub_1D726434C())
  {
    v69 = v66;
    v70 = 0;
    sub_1D726431C();
    v56 = v68;
  }

  else
  {
    v56 = 0;
  }

  v66 = xmmword_1D72BAAA0;
  v71 = xmmword_1D72BAAA0;
  LOBYTE(v72) = 0;
  if (sub_1D726434C())
  {
    v69 = v66;
    v70 = 0;
    sub_1D5DF6A0C();
    sub_1D726431C();
    v36 = v68;
    sub_1D5EB1500(v68);
    *&v66 = v36;
    sub_1D5EB15C4(v36);
  }

  else
  {
    *&v66 = 0x8000000000000000;
  }

  v57 = xmmword_1D72BAAB0;
  v71 = xmmword_1D72BAAB0;
  LOBYTE(v72) = 0;
  if (sub_1D726434C())
  {
    v69 = v57;
    v70 = 0;
    sub_1D726431C();
    v37 = v68;
  }

  else
  {
    v37 = 1;
  }

  v71 = xmmword_1D72BAAC0;
  LOBYTE(v72) = 0;
  sub_1D5C6F27C();
  sub_1D726427C();
  *&v57 = v35;
  v53 = v69;
  v52 = BYTE8(v69);
  v55 = xmmword_1D72BAAD0;
  v71 = xmmword_1D72BAAD0;
  LOBYTE(v72) = 0;
  v38 = sub_1D726434C();
  v54 = v37;
  if (v38)
  {
    v69 = v55;
    v70 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38);
    v39 = v65;
    v40 = v64;
    sub_1D726431C();
    v41 = sub_1D725A74C();
    (*(v63 + 8))(v39, v40);
  }

  else
  {
    v41 = MEMORY[0x1E69E7CD0];
  }

  v71 = xmmword_1D72BAAE0;
  LOBYTE(v72) = 0;
  v42 = v14;
  v43 = sub_1D726422C();
  v45 = v44;
  v65 = a1;
  v69 = xmmword_1D72BAAF0;
  v70 = 0;
  sub_1D5C5C5C0();
  sub_1D726427C();
  (*(v19 + 8))(v42, v11);
  v47 = v73;
  v46 = v74;
  type metadata accessor for FormatViewNode();
  v67 = v71;
  v64 = v72;
  v15 = swift_allocObject();
  swift_beginAccess();
  v48 = v62;
  *(v15 + 16) = v58;
  *(v15 + 24) = v48;
  v49 = v61;
  *(v15 + 32) = v60;
  *(v15 + 40) = v49;
  swift_beginAccess();
  v50 = v75;
  *(v15 + 48) = v59;
  *(v15 + 56) = v50;
  *(v15 + 64) = v57;
  swift_beginAccess();
  *(v15 + 72) = v56;
  swift_beginAccess();
  *(v15 + 80) = v66;
  swift_beginAccess();
  *(v15 + 88) = v54;
  *(v15 + 96) = v53;
  *(v15 + 104) = v52;
  swift_beginAccess();
  *(v15 + 112) = v41;
  *(v15 + 120) = v43;
  *(v15 + 128) = v45;
  *(v15 + 152) = v64;
  *(v15 + 136) = v67;
  *(v15 + 168) = v47;
  *(v15 + 176) = v46;
  __swift_destroy_boxed_opaque_existential_1(v65);
  return v15;
}

void sub_1D5CC4D10()
{
  if (!qword_1EDF24BD0)
  {
    sub_1D5CC4E28();
    sub_1D5CC4E7C();
    sub_1D5CC4F80();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24BD0);
    }
  }
}

void sub_1D5CC4D94()
{
  if (!qword_1EDF19CF8)
  {
    sub_1D5CC4D10();
    sub_1D5B58B84(&qword_1EDF24BD8, sub_1D5CC4D10);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19CF8);
    }
  }
}

unint64_t sub_1D5CC4E28()
{
  result = qword_1EDF31DB8;
  if (!qword_1EDF31DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31DB8);
  }

  return result;
}

unint64_t sub_1D5CC4E7C()
{
  result = qword_1EDF31DC0;
  if (!qword_1EDF31DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31DC0);
  }

  return result;
}

unint64_t sub_1D5CC4ED4()
{
  result = qword_1EDF31DA8;
  if (!qword_1EDF31DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31DA8);
  }

  return result;
}

unint64_t sub_1D5CC4F2C()
{
  result = qword_1EDF31DB0;
  if (!qword_1EDF31DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31DB0);
  }

  return result;
}

unint64_t sub_1D5CC4F80()
{
  result = qword_1EDF31DC8;
  if (!qword_1EDF31DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31DC8);
  }

  return result;
}

unint64_t sub_1D5CC4FDC(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1702521203;
      break;
    case 2:
      result = 0x657A69736572;
      break;
    case 3:
      result = 0x656D7473756A6461;
      break;
    case 4:
      result = 0x656C797473;
      break;
    case 5:
      result = 0x6F6974616D696E61;
      break;
    case 6:
      result = 0x7865646E497ALL;
      break;
    case 7:
      result = 0x696C696269736976;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x726F7463656C6573;
      break;
    case 11:
      result = 1701667182;
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

void sub_1D5CC51D4()
{
  sub_1D5CC51A0(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D5CC52B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for FormatItemNodeAction()
{
  result = qword_1EDF2AFB0;
  if (!qword_1EDF2AFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5CC5364()
{
  result = type metadata accessor for FormatCommandOpenURL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5CC53D8(void *a1)
{
  sub_1D5CC62C4();
  *&v66 = v2;
  v64 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v65 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5BF78(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v53 - v11;
  sub_1D5CC650C();
  v68 = v13;
  *&v67 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D5CC65A0();
  sub_1D5B58B84(&qword_1EDF254D8, sub_1D5CC65A0);
  v18 = v93;
  sub_1D7264B0C();
  v19 = v18;
  if (v18)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v19);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v17;
  }

  v62 = v8;
  v63 = v12;
  v20 = a1[3];
  v93 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v21 = sub_1D7264AFC();
  LOBYTE(v20) = Dictionary<>.errorOnUnknownKeys.getter(v21);

  v22 = v67;
  v23 = v68;
  if (v20)
  {
    v24 = sub_1D726433C();
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = (v24 + 48);
      while (*v26 != 1)
      {
        v26 += 24;
        if (!--v25)
        {
          goto LABEL_7;
        }
      }

      v30 = *(v26 - 2);
      v29 = *(v26 - 1);

      v17 = sub_1D661DDB8();
      sub_1D5E2D970();
      v19 = swift_allocError();
      *v31 = v30;
      *(v31 + 8) = v29;
      *(v31 + 16) = v17;
      *(v31 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v22 + 8))(v16, v23);
      a1 = v93;
      goto LABEL_10;
    }

LABEL_7:
  }

  v27 = sub_1D5C31D18(v16, 0, 0, 0, sub_1D5CC650C);
  v61 = v28;
  v88 = xmmword_1D728CF30;
  LOBYTE(v89) = 0;
  v60 = sub_1D72642BC();
  v33 = v32;
  v86 = xmmword_1D7297410;
  v87 = 0;
  sub_1D5CC69A8();
  sub_1D726427C();
  v83 = v90;
  v84 = v91;
  v85 = v92;
  v81 = v88;
  v82 = v89;
  v76[2] = xmmword_1D72BAA60;
  v77 = 0;
  sub_1D5CC6A60();
  sub_1D726427C();
  v59 = v27;
  v74 = v78;
  v75 = v79;
  v76[0] = v80[0];
  *(v76 + 9) = *(v80 + 9);
  type metadata accessor for FormatItemNodeAction();
  v71 = xmmword_1D72BAA70;
  LOBYTE(v72) = 0;
  sub_1D5B58B84(&qword_1EDF2AFC0, type metadata accessor for FormatItemNodeAction);
  sub_1D726427C();
  v71 = xmmword_1D72BAA80;
  LOBYTE(v72) = 0;
  v58 = sub_1D726423C();
  v71 = xmmword_1D72BAA90;
  LOBYTE(v72) = 0;
  v56 = sub_1D726423C();
  v71 = xmmword_1D72BAAA0;
  LOBYTE(v72) = 0;
  sub_1D5CC6B08();
  sub_1D726427C();
  v55 = v69;
  v54 = xmmword_1D72BAAB0;
  v71 = xmmword_1D72BAAB0;
  LOBYTE(v72) = 0;
  v57 = v16;
  v35 = v33;
  if (sub_1D726434C())
  {
    v69 = v54;
    v70 = 0;
    sub_1D5B58B84(&qword_1EDF3BD20, sub_1D5CC62C4);
    sub_1D726431C();
    v36 = v65;
    v37 = v66;
    *&v54 = sub_1D725A74C();
    (*(v64 + 8))(v36, v37);
  }

  else
  {
    *&v54 = MEMORY[0x1E69E7CC0];
  }

  v69 = xmmword_1D72BAAC0;
  v70 = 0;
  sub_1D5CC6BAC();
  sub_1D726427C();
  v66 = v72;
  v67 = v71;
  LODWORD(v65) = v73;
  v71 = xmmword_1D72BAAD0;
  LOBYTE(v72) = 0;
  LODWORD(v64) = sub_1D726423C();
  v71 = xmmword_1D72BAAE0;
  LOBYTE(v72) = 0;
  v38 = sub_1D726423C();
  v53[1] = 0;
  v39 = v38;
  (*(v22 + 8))(v57, v68);
  v40 = v62;
  sub_1D5C4E944(v63, v62, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  type metadata accessor for FormatItemNodeStyle(0);
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu) = 2;
  *(v17 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag) = 2;
  swift_beginAccess();
  v41 = v84;
  *(v17 + 80) = v83;
  *(v17 + 96) = v41;
  v42 = v82;
  *(v17 + 48) = v81;
  *(v17 + 64) = v42;
  v43 = v75;
  *(v17 + 120) = v74;
  v44 = v60;
  v45 = v61;
  *(v17 + 16) = v59;
  *(v17 + 24) = v45;
  *(v17 + 32) = v44;
  *(v17 + 40) = v35;
  *(v17 + 112) = v85;
  *(v17 + 136) = v43;
  *(v17 + 152) = v76[0];
  *(v17 + 161) = *(v76 + 9);
  sub_1D5C4E944(v40, v17 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  *(v17 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_clipsToBounds) = v58;
  *(v17 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_ignoresSmartInvertColors) = v56;
  v46 = (v17 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
  v47 = *(&v55 + 1);
  *v46 = v55;
  v46[1] = v47;
  v48 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
  swift_beginAccess();
  *(v17 + v48) = v54;
  v49 = v17 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters;
  v50 = v66;
  *v49 = v67;
  *(v49 + 16) = v50;
  *(v49 + 32) = v65;
  v51 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu;
  swift_beginAccess();
  *(v17 + v51) = v64;
  v52 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag;
  swift_beginAccess();
  *(v17 + v52) = v39;
  __swift_destroy_boxed_opaque_existential_1(v93);
  return v17;
}

void sub_1D5CC62C4()
{
  if (!qword_1EDF3BD18)
  {
    type metadata accessor for FormatItemNodeStyle.Selector(255);
    sub_1D5B58B84(&qword_1EDF2C5E0, type metadata accessor for FormatItemNodeStyle.Selector);
    sub_1D5B58B84(&qword_1EDF2C5E8, type metadata accessor for FormatItemNodeStyle.Selector);
    v0 = sub_1D725AAEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BD18);
    }
  }
}

uint64_t sub_1D5CC6390@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5CC53D8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1D5CC63BC()
{
  sub_1D5B49CBC(319, &qword_1EDF270D0);
  if (v0 <= 0x3F)
  {
    sub_1D5B49CBC(319, &qword_1EDF2CAB8);
    if (v1 <= 0x3F)
    {
      sub_1D5CC51A0(319);
      if (v2 <= 0x3F)
      {
        sub_1D5B49CBC(319, &qword_1EDF1ADE0);
        if (v3 <= 0x3F)
        {
          sub_1D5B49CBC(319, &qword_1EDF20768);
          if (v4 <= 0x3F)
          {
            sub_1D5B49CBC(319, &qword_1EDF29890);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D5CC650C()
{
  if (!qword_1EDF1A178)
  {
    sub_1D5CC65A0();
    sub_1D5B58B84(&qword_1EDF254D8, sub_1D5CC65A0);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A178);
    }
  }
}

void sub_1D5CC65A0()
{
  if (!qword_1EDF254D0)
  {
    sub_1D5CC6624();
    sub_1D5CC6678();
    sub_1D5CC677C();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF254D0);
    }
  }
}

unint64_t sub_1D5CC6624()
{
  result = qword_1EDF2C630;
  if (!qword_1EDF2C630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C630);
  }

  return result;
}

unint64_t sub_1D5CC6678()
{
  result = qword_1EDF2C638;
  if (!qword_1EDF2C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C638);
  }

  return result;
}

unint64_t sub_1D5CC66D0()
{
  result = qword_1EDF2C620;
  if (!qword_1EDF2C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C620);
  }

  return result;
}

unint64_t sub_1D5CC6728()
{
  result = qword_1EDF2C628;
  if (!qword_1EDF2C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C628);
  }

  return result;
}

unint64_t sub_1D5CC677C()
{
  result = qword_1EDF2C640;
  if (!qword_1EDF2C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C640);
  }

  return result;
}

unint64_t sub_1D5CC67D8(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x7373616C63;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x656C65536C6C6563;
      break;
    case 4:
      result = 0x697463416C6C6563;
      break;
    case 5:
      result = 0x426F547370696C63;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x726F7463656C6573;
      break;
    case 9:
      result = 0x7261507375636F66;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D5CC69A8()
{
  result = qword_1EDF270D8;
  if (!qword_1EDF270D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF270D8);
  }

  return result;
}

uint64_t sub_1D5CC69FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0;
      *(result + 56) = 0;
      *(result + 64) = (a2 ^ 0x7F) & 0xFE | ((a2 ^ 0x7F) << 7);
    }
  }

  return result;
}

unint64_t sub_1D5CC6A60()
{
  result = qword_1EDF2CAC0;
  if (!qword_1EDF2CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CAC0);
  }

  return result;
}

uint64_t sub_1D5CC6AB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

unint64_t sub_1D5CC6B08()
{
  result = qword_1EDF20770;
  if (!qword_1EDF20770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20770);
  }

  return result;
}

uint64_t sub_1D5CC6B5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1D5CC6BAC()
{
  result = qword_1EDF29898;
  if (!qword_1EDF29898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29898);
  }

  return result;
}

uint64_t sub_1D5CC6C00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1D5CC6C48()
{
  result = qword_1EDF409E0;
  if (!qword_1EDF409E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF409E0);
  }

  return result;
}

uint64_t FormatOptionEnum.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v47 = a2;
  sub_1D5CC7128();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CC7370();
  v10 = v9;
  v52 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CC72EC();
  sub_1D5B58B84(qword_1EDF3ED78, sub_1D5CC72EC);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    v29 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v43 = v8;
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1D7264AFC();
  v15 = Dictionary<>.errorOnUnknownKeys.getter(v14);

  v17 = v46;
  v16 = v47;
  v18 = v45;
  if (v15)
  {
    v19 = sub_1D726433C();
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (v19 + 48);
      while (*v21 != 1)
      {
        v21 += 24;
        if (!--v20)
        {
          goto LABEL_7;
        }
      }

      v26 = *(v21 - 2);
      v25 = *(v21 - 1);

      v27 = sub_1D66200B4();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v28 = v26;
      *(v28 + 8) = v25;
      *(v28 + 16) = v27;
      *(v28 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v52 + 8))(v13, v10);
      a1 = v44;
      goto LABEL_10;
    }

LABEL_7:
  }

  v50 = 0uLL;
  v51 = 0;
  v41 = sub_1D72642BC();
  v42 = v22;
  v50 = xmmword_1D728CF30;
  v51 = 0;
  v23 = sub_1D72642BC();
  v24 = v52;
  v32 = v31;
  v40 = v23;
  v39 = xmmword_1D7297410;
  v50 = xmmword_1D7297410;
  v51 = 0;
  v33 = sub_1D726434C();
  if (v33)
  {
    v38 = v32;
    v48 = v39;
    v49 = 0;
    sub_1D5B58B84(&qword_1EDF43AD8, sub_1D5CC7128);
    v34 = v43;
    sub_1D726431C();
    v35 = sub_1D725A74C();
    (*(v18 + 8))(v34, v17);
    v32 = v38;
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  (*(v24 + 8))(v13, v10);
  v36 = v42;
  *v16 = v41;
  v16[1] = v36;
  v16[2] = v40;
  v16[3] = v32;
  v16[4] = v35;
  v29 = v44;
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

void sub_1D5CC7128()
{
  if (!qword_1EDF43AD0)
  {
    sub_1D5C34074(255, &qword_1EDF43710, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatSelectorValueSelector);
    sub_1D5CC71E4();
    sub_1D5CC7268();
    v0 = sub_1D725AAEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43AD0);
    }
  }
}

unint64_t sub_1D5CC71E4()
{
  result = qword_1EDF43718;
  if (!qword_1EDF43718)
  {
    sub_1D5C34074(255, &qword_1EDF43710, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatSelectorValueSelector);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF43718);
  }

  return result;
}

unint64_t sub_1D5CC7268()
{
  result = qword_1EDF43720[0];
  if (!qword_1EDF43720[0])
  {
    sub_1D5C34074(255, &qword_1EDF43710, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatSelectorValueSelector);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF43720);
  }

  return result;
}

void sub_1D5CC72EC()
{
  if (!qword_1EDF3ED70)
  {
    sub_1D5CC7404();
    sub_1D5CC7458();
    sub_1D5CC755C();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3ED70);
    }
  }
}

void sub_1D5CC7370()
{
  if (!qword_1EDF3C690)
  {
    sub_1D5CC72EC();
    sub_1D5B58B84(qword_1EDF3ED78, sub_1D5CC72EC);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C690);
    }
  }
}

unint64_t sub_1D5CC7404()
{
  result = qword_1EDF409F8;
  if (!qword_1EDF409F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF409F8);
  }

  return result;
}

unint64_t sub_1D5CC7458()
{
  result = qword_1EDF40A00;
  if (!qword_1EDF40A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF40A00);
  }

  return result;
}

unint64_t sub_1D5CC74B0()
{
  result = qword_1EDF409E8;
  if (!qword_1EDF409E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF409E8);
  }

  return result;
}

unint64_t sub_1D5CC7508()
{
  result = qword_1EDF409F0;
  if (!qword_1EDF409F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF409F0);
  }

  return result;
}

unint64_t sub_1D5CC755C()
{
  result = qword_1EDF40A08;
  if (!qword_1EDF40A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF40A08);
  }

  return result;
}

uint64_t sub_1D5CC75B0()
{
  v1 = 1701667182;
  v2 = 0x726F7463656C6573;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x65756C6176;
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

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

unint64_t sub_1D5CC7648()
{
  result = qword_1EDF28E80;
  if (!qword_1EDF28E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28E80);
  }

  return result;
}

unint64_t sub_1D5CC76F0()
{
  result = qword_1EDF28E88;
  if (!qword_1EDF28E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28E88);
  }

  return result;
}

unint64_t sub_1D5CC77A4()
{
  result = qword_1EDF28E90;
  if (!qword_1EDF28E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28E90);
  }

  return result;
}

uint64_t FormatWebEmbedBinding.Bool.CodingType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  v4 = 10;
  if (v2 < 0xA)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D5CC7888@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5CC78B4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D5CC78B4(void *a1)
{
  sub_1D5C8CD38();
  v80 = v2;
  v78 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  *&v79 = &v68[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5C2E60C(0, &qword_1EDF3BCF8, sub_1D5C91044, sub_1D5C50B48);
  *&v83 = v5;
  *&v82 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v81 = &v68[-v7];
  sub_1D5C2E60C(0, &qword_1EDF3BD38, sub_1D5C62464, sub_1D5C624B8);
  v9 = v8;
  v93 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v68[-v11];
  sub_1D5CC8AC4();
  v14 = v13;
  *&v84 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v68[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CC8B58();
  sub_1D5B58B84(&qword_1EDF24BA8, sub_1D5CC8B58);
  v18 = v85;
  sub_1D7264B0C();
  v19 = v18;
  if (v18)
  {
    goto LABEL_14;
  }

  v77 = v12;
  *&v85 = v9;
  v20 = v83;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = sub_1D7264AFC();
  v22 = Dictionary<>.errorOnUnknownKeys.getter(v21);

  if (v22)
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

      v31 = *(v25 - 2);
      v30 = *(v25 - 1);

      v32 = sub_1D661BD60();
      sub_1D5E2D970();
      v33 = swift_allocError();
      *v34 = v31;
      *(v34 + 8) = v30;
      v19 = v33;
      *(v34 + 16) = v32;
      *(v34 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v84 + 8))(v17, v14);
      goto LABEL_14;
    }

LABEL_7:
  }

  v26 = sub_1D5C31D18(v17, 0, 0, 0, sub_1D5CC8AC4);
  v76 = v27;
  v75 = xmmword_1D728CF30;
  v89 = xmmword_1D728CF30;
  LOBYTE(v90) = 0;
  v28 = sub_1D726434C();
  v29 = v84;
  if (v28)
  {
    v87 = v75;
    v88 = 0;
    sub_1D5C62940();
    sub_1D726431C();
    v74 = v26;
    v35 = v86;
    sub_1D5C82CD8(v86);
    sub_1D5C92A8C(v35);
  }

  else
  {
    v74 = v26;
    v35 = 0xB000000000000008;
  }

  v89 = xmmword_1D7297410;
  LOBYTE(v90) = 0;
  sub_1D5C6411C();
  sub_1D726427C();
  *&v75 = 0;
  v73 = v87;
  v72 = xmmword_1D72BAA60;
  v89 = xmmword_1D72BAA60;
  LOBYTE(v90) = 0;
  if (sub_1D726434C())
  {
    v87 = v72;
    v88 = 0;
    sub_1D5C9EEC4();
    v37 = v77;
    v38 = v85;
    v39 = v75;
    sub_1D726431C();
    v19 = v39;
    if (v39)
    {
      (*(v29 + 8))(v17, v14);
      sub_1D5C92A8C(v35);

LABEL_19:

      goto LABEL_14;
    }

    *&v75 = 0;
    *&v72 = v35;
    v40 = sub_1D725A74C();
    (*(v93 + 8))(v37, v38);
  }

  else
  {
    *&v72 = v35;
    v40 = MEMORY[0x1E69E7CC0];
  }

  v85 = xmmword_1D72BAA70;
  v89 = xmmword_1D72BAA70;
  LOBYTE(v90) = 0;
  v41 = sub_1D726434C();
  v42 = v82;
  if (v41)
  {
    v87 = v85;
    v88 = 0;
    v43 = v75;
    sub_1D726431C();
    v19 = v43;
    if (v43)
    {
      (*(v29 + 8))(v17, v14);

      sub_1D5C92A8C(v72);

LABEL_13:

      goto LABEL_14;
    }

    *&v75 = 0;
    *&v85 = v40;
    v44 = v86;
  }

  else
  {
    *&v85 = v40;
    v44 = 0;
  }

  v83 = xmmword_1D72BAA80;
  v89 = xmmword_1D72BAA80;
  LOBYTE(v90) = 0;
  if (sub_1D726434C())
  {
    v87 = v83;
    v88 = 0;
    sub_1D5DF6A0C();
    v45 = v75;
    sub_1D726431C();
    v19 = v45;
    if (v45)
    {

      sub_1D5C92A8C(v72);

      (*(v29 + 8))(v17, v14);
      goto LABEL_14;
    }

    v93 = v44;
    *&v75 = 0;
    v46 = v86;
    sub_1D5EB1500(v86);
    sub_1D5EB15C4(v46);
  }

  else
  {
    v93 = v44;
    v46 = 0x8000000000000000;
  }

  v83 = xmmword_1D72BAA90;
  v89 = xmmword_1D72BAA90;
  LOBYTE(v90) = 0;
  if (sub_1D726434C())
  {
    v87 = v83;
    v88 = 0;
    v47 = v75;
    sub_1D726431C();
    v19 = v47;
    if (v47)
    {
      (*(v29 + 8))(v17, v14);
      sub_1D5EB15C4(v46);

      sub_1D5C92A8C(v72);

      goto LABEL_13;
    }

    *&v75 = 0;
    v48 = v86;
  }

  else
  {
    v48 = 1;
  }

  LODWORD(v83) = v48;
  type metadata accessor for FormatGroupNodeStyle();
  v89 = xmmword_1D72BAAA0;
  LOBYTE(v90) = 0;
  sub_1D5B58B84(&qword_1EDF2B240, type metadata accessor for FormatGroupNodeStyle);
  v49 = v75;
  sub_1D726427C();
  v19 = v49;
  if (v49)
  {
    (*(v29 + 8))(v17, v14);
    sub_1D5C92A8C(v72);

    sub_1D5EB15C4(v46);

    goto LABEL_13;
  }

  v71 = v46;
  v77 = v87;
  v89 = xmmword_1D72BAAB0;
  LOBYTE(v90) = 0;
  sub_1D5C51470();
  v50 = v81;
  sub_1D726431C();
  *&v75 = 0;
  v70 = sub_1D725A74C();
  (*(v42 + 8))(v50, v20);
  v89 = xmmword_1D72BAAC0;
  LOBYTE(v90) = 0;
  sub_1D5C6F27C();
  v51 = v75;
  sub_1D726427C();
  v19 = v51;
  if (v51)
  {
    (*(v29 + 8))(v17, v14);
    sub_1D5C92A8C(v72);

    v52 = v71;
LABEL_41:
    sub_1D5EB15C4(v52);

    goto LABEL_19;
  }

  *&v75 = 0;
  v81 = v87;
  v69 = BYTE8(v87);
  v82 = xmmword_1D72BAAD0;
  v89 = xmmword_1D72BAAD0;
  LOBYTE(v90) = 0;
  v53 = sub_1D726434C();
  v54 = v71;
  if (v53)
  {
    v87 = v82;
    v88 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38);
    v55 = v79;
    v56 = v80;
    v57 = v75;
    sub_1D726431C();
    v19 = v57;
    if (v57)
    {
      (*(v29 + 8))(v17, v14);
      sub_1D5C92A8C(v72);

      v52 = v54;
      goto LABEL_41;
    }

    *&v75 = 0;
    v58 = sub_1D725A74C();
    (*(v78 + 8))(v55, v56);
  }

  else
  {
    v58 = MEMORY[0x1E69E7CD0];
  }

  type metadata accessor for FormatAnimationNodeStyle();
  v89 = xmmword_1D72BAAE0;
  LOBYTE(v90) = 0;
  sub_1D5B58B84(&qword_1EDF26768, type metadata accessor for FormatAnimationNodeStyle);
  v59 = v17;
  v60 = v75;
  sub_1D726427C();
  if (!v60)
  {
    *&v82 = a1;
    v61 = v87;
    type metadata accessor for FormatGroupNodeMask();
    v89 = xmmword_1D72BAAF0;
    LOBYTE(v90) = 0;
    sub_1D5B58B84(&qword_1EDF2C7C8, type metadata accessor for FormatGroupNodeMask);
    sub_1D726427C();
    v62 = v87;
    v87 = xmmword_1D7282A80;
    v88 = 0;
    sub_1D5C5C5C0();
    sub_1D726427C();
    v80 = 0;
    (*(v84 + 8))(v59, v14);
    v64 = v91;
    v63 = v92;
    type metadata accessor for FormatGroupNode();
    v84 = v89;
    v79 = v90;
    v19 = swift_allocObject();
    *(v19 + 128) = 0;
    swift_beginAccess();
    v65 = v76;
    *(v19 + 16) = v74;
    *(v19 + 24) = v65;
    swift_beginAccess();
    v66 = v73;
    *(v19 + 32) = v72;
    *(v19 + 40) = v66;
    swift_beginAccess();
    *(v19 + 48) = v85;
    swift_beginAccess();
    *(v19 + 56) = v93;
    swift_beginAccess();
    *(v19 + 64) = v71;
    swift_beginAccess();
    *(v19 + 72) = v83;
    *(v19 + 80) = v77;
    swift_beginAccess();
    v67 = v81;
    *(v19 + 88) = v70;
    *(v19 + 96) = v67;
    *(v19 + 104) = v69;
    swift_beginAccess();
    *(v19 + 112) = v58;
    *(v19 + 120) = v61;
    swift_beginAccess();
    *(v19 + 128) = v62;
    *(v19 + 152) = v79;
    *(v19 + 136) = v84;
    *(v19 + 168) = v64;
    *(v19 + 176) = v63;
    __swift_destroy_boxed_opaque_existential_1(v82);
    return v19;
  }

  (*(v84 + 8))(v17, v14);
  sub_1D5C92A8C(v72);

  sub_1D5EB15C4(v54);

  v19 = v60;
LABEL_14:
  sub_1D61E4FBC(a1, v19);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v19;
}

void sub_1D5CC8AC4()
{
  if (!qword_1EDF19CE0)
  {
    sub_1D5CC8B58();
    sub_1D5B58B84(&qword_1EDF24BA8, sub_1D5CC8B58);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19CE0);
    }
  }
}

void sub_1D5CC8B58()
{
  if (!qword_1EDF24BA0)
  {
    sub_1D5CC8BDC();
    sub_1D5CC8C30();
    sub_1D5CC8D34();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24BA0);
    }
  }
}

unint64_t sub_1D5CC8BDC()
{
  result = qword_1EDF31888;
  if (!qword_1EDF31888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31888);
  }

  return result;
}

unint64_t sub_1D5CC8C30()
{
  result = qword_1EDF31890;
  if (!qword_1EDF31890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31890);
  }

  return result;
}

unint64_t sub_1D5CC8C88()
{
  result = qword_1EDF31878;
  if (!qword_1EDF31878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31878);
  }

  return result;
}

unint64_t sub_1D5CC8CE0()
{
  result = qword_1EDF31880;
  if (!qword_1EDF31880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31880);
  }

  return result;
}

unint64_t sub_1D5CC8D34()
{
  result = qword_1EDF31898[0];
  if (!qword_1EDF31898[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF31898);
  }

  return result;
}

unint64_t sub_1D5CC8D90(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1702521203;
      break;
    case 2:
      result = 0x657A69736572;
      break;
    case 3:
      result = 0x656D7473756A6461;
      break;
    case 4:
      result = 0x7865646E497ALL;
      break;
    case 5:
      result = 0x696C696269736976;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0x656C797473;
      break;
    case 8:
      result = 0x6E6572646C696863;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x726F7463656C6573;
      break;
    case 11:
      result = 0x6F6974616D696E61;
      break;
    case 12:
      result = 1802723693;
      break;
    case 13:
      result = 2019912806;
      break;
    case 14:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D5CC8F98()
{
  result = qword_1EDF26120;
  if (!qword_1EDF26120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26120);
  }

  return result;
}

uint64_t FormatFlexibleExpression.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22[0] = a2;
  sub_1D5CC935C();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CC92D8();
  sub_1D5B58B84(&qword_1EC886B30, sub_1D5CC92D8);
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

      v19 = sub_1D6628490(0x6F69746365726964, 0xE90000000000006ELL);
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

  sub_1D5CC95B4();
  v22[1] = 0;
  v22[2] = 0;
  v23 = 0;
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  *v13 = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CC92D8()
{
  if (!qword_1EC886B18)
  {
    sub_1D5CC9408();
    sub_1D5CC945C();
    sub_1D5CC9560();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886B18);
    }
  }
}

void sub_1D5CC935C()
{
  if (!qword_1EC886B10)
  {
    sub_1D5CC92D8();
    sub_1D5B58B84(&qword_1EC886B30, sub_1D5CC92D8);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886B10);
    }
  }
}

unint64_t sub_1D5CC9408()
{
  result = qword_1EC886B20;
  if (!qword_1EC886B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886B20);
  }

  return result;
}

unint64_t sub_1D5CC945C()
{
  result = qword_1EDF26148;
  if (!qword_1EDF26148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26148);
  }

  return result;
}

unint64_t sub_1D5CC94B4()
{
  result = qword_1EDF26138;
  if (!qword_1EDF26138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26138);
  }

  return result;
}

unint64_t sub_1D5CC950C()
{
  result = qword_1EDF26140;
  if (!qword_1EDF26140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26140);
  }

  return result;
}

unint64_t sub_1D5CC9560()
{
  result = qword_1EC886B28;
  if (!qword_1EC886B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886B28);
  }

  return result;
}

unint64_t sub_1D5CC95B4()
{
  result = qword_1EDF26128;
  if (!qword_1EDF26128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26128);
  }

  return result;
}

uint64_t sub_1D5CC9608()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x6F69746365726964;
  }
}

unint64_t sub_1D5CC96A0()
{
  result = qword_1EDF26130;
  if (!qword_1EDF26130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26130);
  }

  return result;
}

NewsFeed::FormatFlexibleExpression::Direction_optional __swiftcall FormatFlexibleExpression.Direction.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_1D5CC9780(void *a1)
{
  sub_1D5C8CD38();
  v73 = v2;
  v70 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v71 = &v55[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5C2E60C(0, &qword_1EDF3BD38, sub_1D5C62464, sub_1D5C624B8);
  v6 = v5;
  *&v72 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v55[-v8 - 8];
  sub_1D5CCAA7C();
  v11 = v10;
  v74 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v55[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CCA9F8();
  sub_1D5B58B84(&qword_1EDF25538, sub_1D5CCA9F8);
  v16 = v83;
  sub_1D7264B0C();
  v17 = v16;
  if (v16)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v17);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v15;
  }

  v18 = v9;
  v83 = v6;
  v19 = v73;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_1D7264AFC();
  v21 = Dictionary<>.errorOnUnknownKeys.getter(v20);

  if (v21)
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
      v15 = *(v24 - 1);

      v28 = sub_1D6627AF4();
      sub_1D5E2D970();
      v17 = swift_allocError();
      *v29 = v27;
      *(v29 + 8) = v15;
      *(v29 + 16) = v28;
      *(v29 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v74 + 8))(v14, v11);
      goto LABEL_10;
    }

LABEL_7:
  }

  v25 = sub_1D5C31D18(v14, 0, 0, 0, sub_1D5CCAA7C);
  v69 = v26;
  v78 = xmmword_1D728CF30;
  LOBYTE(v79) = 0;
  sub_1D5CCAEC8();
  sub_1D726431C();
  v31 = v76;
  v78 = xmmword_1D7297410;
  LOBYTE(v79) = 0;
  v67 = sub_1D726422C();
  v68 = v32;
  type metadata accessor for FormatJsonConfig();
  v78 = xmmword_1D72BAA60;
  LOBYTE(v79) = 0;
  sub_1D5B58B84(&qword_1EDF30470, type metadata accessor for FormatJsonConfig);
  sub_1D726427C();
  v66 = v25;
  v33 = v76;
  v78 = xmmword_1D72BAA70;
  LOBYTE(v79) = 0;
  sub_1D5C62940();
  sub_1D726431C();
  v65 = v76;
  v78 = xmmword_1D72BAA80;
  LOBYTE(v79) = 0;
  sub_1D5C6411C();
  sub_1D726427C();
  v64 = v33;
  *&v63 = v76;
  v62 = xmmword_1D72BAA90;
  v78 = xmmword_1D72BAA90;
  LOBYTE(v79) = 0;
  if (sub_1D726434C())
  {
    v76 = v62;
    v77 = 0;
    sub_1D5C9EEC4();
    v34 = v83;
    sub_1D726431C();
    *&v62 = sub_1D725A74C();
    (*(v72 + 8))(v18, v34);
  }

  else
  {
    *&v62 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for FormatWebEmbedNodeStyle();
  v78 = xmmword_1D72BAAA0;
  LOBYTE(v79) = 0;
  sub_1D5B58B84(&qword_1EDF26D80, type metadata accessor for FormatWebEmbedNodeStyle);
  sub_1D726427C();
  v83 = v76;
  v72 = xmmword_1D72BAAB0;
  v78 = xmmword_1D72BAAB0;
  LOBYTE(v79) = 0;
  if (sub_1D726434C())
  {
    v76 = v72;
    v77 = 0;
    sub_1D726431C();
    v35 = v14;
    v61 = v75;
  }

  else
  {
    v35 = v14;
    v61 = 0;
  }

  v72 = xmmword_1D72BAAC0;
  v78 = xmmword_1D72BAAC0;
  LOBYTE(v79) = 0;
  if (sub_1D726434C())
  {
    v76 = v72;
    v77 = 0;
    sub_1D5DF6A0C();
    sub_1D726431C();
    v36 = v63;
    *&v72 = a1;
    v37 = v75;
    sub_1D5EB1500(v75);
    v38 = v37;
    sub_1D5EB15C4(v37);
  }

  else
  {
    v36 = v63;
    *&v72 = a1;
    v38 = 0x8000000000000000;
  }

  v63 = xmmword_1D72BAAD0;
  v78 = xmmword_1D72BAAD0;
  LOBYTE(v79) = 0;
  if (sub_1D726434C())
  {
    v76 = v63;
    v77 = 0;
    sub_1D726431C();
    v60 = v75;
  }

  else
  {
    v60 = 1;
  }

  v78 = xmmword_1D72BAAE0;
  LOBYTE(v79) = 0;
  sub_1D5C6F27C();
  sub_1D726427C();
  v58 = v76;
  v57 = BYTE8(v76);
  v78 = xmmword_1D72BAAF0;
  LOBYTE(v79) = 0;
  *&v63 = v11;
  v39 = v35;
  v56 = sub_1D726422C();
  v59 = v40;
  *&v55[8] = xmmword_1D7282A80;
  v78 = xmmword_1D7282A80;
  LOBYTE(v79) = 0;
  if (sub_1D726434C())
  {
    v76 = *&v55[8];
    v77 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38);
    sub_1D726431C();
    v41 = v19;
    v42 = v71;
    v43 = sub_1D725A74C();
    (*(v70 + 8))(v42, v41);
  }

  else
  {
    v43 = MEMORY[0x1E69E7CD0];
  }

  v76 = xmmword_1D72BAB00;
  v77 = 0;
  sub_1D5C5C5C0();
  sub_1D726427C();
  *v55 = v78;
  v70 = v79;
  v71 = v80;
  v44 = v82;
  v73 = v81;
  v78 = xmmword_1D72BAB10;
  LOBYTE(v79) = 0;
  sub_1D66F526C();
  sub_1D726427C();
  (*(v74 + 8))(v39, v63);
  v45 = v76;
  type metadata accessor for FormatWebEmbedNode();
  v15 = swift_allocObject();
  swift_beginAccess();
  v46 = v69;
  *(v15 + 16) = v66;
  *(v15 + 24) = v46;
  v47 = v67;
  *(v15 + 32) = v31;
  *(v15 + 40) = v47;
  v48 = v64;
  *(v15 + 48) = v68;
  *(v15 + 56) = v48;
  *(v15 + 64) = v65;
  *(v15 + 72) = v36;
  swift_beginAccess();
  v49 = v83;
  *(v15 + 80) = v62;
  *(v15 + 88) = v49;
  swift_beginAccess();
  *(v15 + 96) = v61;
  swift_beginAccess();
  *(v15 + 104) = v38;
  swift_beginAccess();
  *(v15 + 112) = v60;
  *(v15 + 120) = v58;
  *(v15 + 128) = v57;
  v50 = v59;
  *(v15 + 136) = v56;
  *(v15 + 144) = v50;
  swift_beginAccess();
  v51 = *v55;
  *(v15 + 152) = v43;
  *(v15 + 160) = v51;
  v52 = v70;
  *(v15 + 168) = *&v55[8];
  *(v15 + 176) = v52;
  v53 = v73;
  *(v15 + 184) = v71;
  *(v15 + 192) = v53;
  *(v15 + 200) = v44;
  *(v15 + 208) = v45;
  __swift_destroy_boxed_opaque_existential_1(v72);
  return v15;
}

uint64_t sub_1D5CCA9CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5CC9780(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1D5CCA9F8()
{
  if (!qword_1EDF25530)
  {
    sub_1D5CCAB10();
    sub_1D5CCAB64();
    sub_1D5CCAC68();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25530);
    }
  }
}

void sub_1D5CCAA7C()
{
  if (!qword_1EDF1A1A8)
  {
    sub_1D5CCA9F8();
    sub_1D5B58B84(&qword_1EDF25538, sub_1D5CCA9F8);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A1A8);
    }
  }
}

unint64_t sub_1D5CCAB10()
{
  result = qword_1EDF2D750;
  if (!qword_1EDF2D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D750);
  }

  return result;
}

unint64_t sub_1D5CCAB64()
{
  result = qword_1EDF2D758;
  if (!qword_1EDF2D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D758);
  }

  return result;
}

unint64_t sub_1D5CCABBC()
{
  result = qword_1EDF2D740;
  if (!qword_1EDF2D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D740);
  }

  return result;
}

unint64_t sub_1D5CCAC14()
{
  result = qword_1EDF2D748;
  if (!qword_1EDF2D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D748);
  }

  return result;
}

unint64_t sub_1D5CCAC68()
{
  result = qword_1EDF2D760;
  if (!qword_1EDF2D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D760);
  }

  return result;
}

unint64_t sub_1D5CCACC4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x746E65746E6F63;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x6769666E6F63;
      break;
    case 4:
      result = 1702521203;
      break;
    case 5:
      result = 0x657A69736572;
      break;
    case 6:
      result = 0x656D7473756A6461;
      break;
    case 7:
      result = 0x656C797473;
      break;
    case 8:
      result = 0x7865646E497ALL;
      break;
    case 9:
      result = 0x696C696269736976;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x6E6F697461636F6CLL;
      break;
    case 13:
      result = 0x726F7463656C6573;
      break;
    case 14:
      result = 2019912806;
      break;
    case 15:
      result = 0x6E697265646E6572;
      break;
    case 16:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D5CCAEC8()
{
  result = qword_1EDF24178;
  if (!qword_1EDF24178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24178);
  }

  return result;
}

uint64_t FormatWebEmbedNodeContent.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v37 = a2;
  sub_1D5C5039C();
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v36 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v13 = v38;
  sub_1D7264B0C();
  v14 = v13;
  if (v13)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v14);
    swift_willThrow();
  }

  else
  {
    *&v38 = v6;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v17 = v12;
    if (v16)
    {
      v18 = sub_1D726433C();
      v19 = (v18 + 40);
      v20 = *(v18 + 16) + 1;
      while (--v20)
      {
        v21 = v19 + 2;
        v22 = *v19;
        v19 += 2;
        if (v22 >= 4)
        {
          v23 = *(v21 - 3);

          sub_1D5E2D970();
          v14 = swift_allocError();
          *v24 = v23;
          *(v24 + 8) = v22;
          *(v24 + 16) = &unk_1F51183A0;
          *(v24 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v9 + 8))(v17, v8);
          goto LABEL_9;
        }
      }
    }

    sub_1D5CCB4B0();
    v39 = 0uLL;
    sub_1D726431C();
    if (v42)
    {
      if (v42 == 1)
      {
        v39 = xmmword_1D7279980;
        sub_1D5B58B84(qword_1EDF419B8, sub_1D5C5039C);
        v26 = v38;
        sub_1D726431C();
        (*(v9 + 8))(v17, v8);
        v27 = sub_1D72585BC();
        v28 = swift_allocBox();
        (*(*(v27 - 8) + 32))(v29, v26, v27);
        v30 = v28 | 0x4000000000000000;
        v31 = v37;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EC887838, sub_1D66D3CE4, &type metadata for FormatWebEmbedNodeContent, type metadata accessor for FormatSelectorValue);
        v42 = xmmword_1D7279980;
        sub_1D66D3D38();
        sub_1D726431C();
        v31 = v37;
        (*(v9 + 8))(v17, v8);
        v34 = v39;
        v35 = swift_allocObject();
        *(v35 + 16) = v34;
        v30 = v35 | 0x8000000000000000;
      }
    }

    else
    {
      v42 = xmmword_1D7279980;
      sub_1D5CCB634();
      sub_1D726431C();
      (*(v9 + 8))(v17, v8);
      v38 = v39;
      v32 = v40;
      v33 = v41;
      v30 = swift_allocObject();
      *(v30 + 16) = v38;
      *(v30 + 32) = v32;
      *(v30 + 40) = v33;
      v31 = v37;
    }

    *v31 = v30;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5CCB454()
{
  sub_1D62B61A8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

unint64_t sub_1D5CCB4B0()
{
  result = qword_1EDF24180;
  if (!qword_1EDF24180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24180);
  }

  return result;
}

unint64_t sub_1D5CCB564()
{
  result = qword_1EDF24188;
  if (!qword_1EDF24188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24188);
  }

  return result;
}

uint64_t sub_1D5CCB5B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CCB5E8();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CCB5E8()
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

unint64_t sub_1D5CCB634()
{
  result = qword_1EDF24190;
  if (!qword_1EDF24190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24190);
  }

  return result;
}

uint64_t FormatWebEmbedNodeBinding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26[-1] - v9;
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

    v13 = v27;
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
          *(v20 + 16) = &unk_1F5118350;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D5CCBA30();
    v26[0] = 0uLL;
    sub_1D726431C();
    v22 = v25;
    if (v25)
    {
      v25 = xmmword_1D7279980;
      sub_1D5C6A164();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v23 = *&v26[0];
      v24 = *(v26 + 8);
    }

    else
    {
      v26[0] = xmmword_1D7279980;
      sub_1D5CCBB44();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v23 = v25;
      v24 = 0uLL;
    }

    *v13 = v23;
    *(v13 + 8) = v24;
    *(v13 + 24) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CCBA30()
{
  result = qword_1EDF24198;
  if (!qword_1EDF24198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24198);
  }

  return result;
}

unint64_t sub_1D5CCBAE4()
{
  result = qword_1EDF241A0;
  if (!qword_1EDF241A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF241A0);
  }

  return result;
}

unint64_t sub_1D5CCBB44()
{
  result = qword_1EDF28E98;
  if (!qword_1EDF28E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28E98);
  }

  return result;
}

uint64_t sub_1D5CCBB98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27[0] = a5;
  v27[1] = a4;
  v29 = a3;
  v7 = v5;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v28 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v27 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v5)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v7);
    swift_willThrow();
  }

  else
  {
    v14 = v29;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v18 = v28;
    if (v16)
    {
      v19 = sub_1D726433C();
      v20 = (v19 + 40);
      v21 = *(v19 + 16) + 1;
      while (--v21)
      {
        v22 = v20 + 2;
        v23 = *v20;
        v20 += 2;
        if (v23 >= 4)
        {
          v24 = *(v22 - 3);

          sub_1D5E2D970();
          v7 = swift_allocError();
          *v25 = v24;
          *(v25 + 8) = v23;
          *(v25 + 16) = a2;
          *(v25 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v18 + 8))(v13, v10);
          goto LABEL_9;
        }
      }
    }

    v14(v17);
    v30 = 0;
    v31 = 0;
    sub_1D726431C();
    (*(v18 + 8))(v13, v10);
    *v27[0] = v32;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CCBEC4()
{
  result = qword_1EDF28EA0;
  if (!qword_1EDF28EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28EA0);
  }

  return result;
}

unint64_t sub_1D5CCBF78()
{
  result = qword_1EDF28EA8[0];
  if (!qword_1EDF28EA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF28EA8);
  }

  return result;
}

uint64_t sub_1D5CCBFCC@<X0>(char *a1@<X8>)
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

uint64_t sub_1D5CCC074(void *a1)
{
  sub_1D5C2E60C(0, &qword_1EDF3BC70, sub_1D5CCC7A8, sub_1D5CCC7FC);
  v3 = v2;
  v52 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v41 - v5;
  sub_1D5CCC850();
  v8 = v7;
  v53 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CCC8E4();
  sub_1D5B58B84(&qword_1EDF25158, sub_1D5CCC8E4);
  v12 = v58;
  sub_1D7264B0C();
  v13 = v12;
  if (v12)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v13);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v8;
  }

  v58 = v6;
  v14 = v53;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_1D7264AFC();
  v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

  if (v16)
  {
    v17 = sub_1D726433C();
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = (v17 + 48);
      while (*v19 != 1)
      {
        v19 += 24;
        if (!--v18)
        {
          goto LABEL_7;
        }
      }

      v23 = *(v19 - 2);
      v22 = *(v19 - 1);

      v24 = sub_1D6617278();
      sub_1D5E2D970();
      v25 = swift_allocError();
      *v26 = v23;
      *(v26 + 8) = v22;
      v13 = v25;
      *(v26 + 16) = v24;
      *(v26 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v14 + 8))(v11, v8);
      goto LABEL_10;
    }

LABEL_7:
  }

  v20 = sub_1D5C31D18(v11, 0, 0, 0, sub_1D5CCC850);
  v51 = v21;
  v56 = xmmword_1D728CF30;
  v57 = 0;
  v27 = sub_1D72642BC();
  v50 = v28;
  v54 = xmmword_1D7297410;
  v55 = 0;
  sub_1D5C8C780();
  sub_1D726427C();
  v47 = v27;
  v48 = *(&v56 + 1);
  v30 = v56;
  v49 = v57;
  v54 = xmmword_1D72BAA60;
  v55 = 0;
  sub_1D726427C();
  v46 = v56;
  v31 = v57;
  v56 = xmmword_1D72BAA70;
  v57 = 0;
  v43 = sub_1D726423C();
  v44 = v31;
  v45 = v30;
  v56 = xmmword_1D72BAA80;
  v57 = 0;
  v42 = sub_1D726423C();
  v41 = xmmword_1D72BAA90;
  v56 = xmmword_1D72BAA90;
  v57 = 0;
  v32 = v14;
  if (sub_1D726434C())
  {
    v54 = v41;
    v55 = 0;
    sub_1D670331C();
    v33 = v58;
    sub_1D726431C();
    v34 = sub_1D725A74C();
    (*(v52 + 8))(v33, v3);
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
  }

  v35 = v49;
  v36 = v48;
  (*(v32 + 8))(v11, v8);
  type metadata accessor for FormatWebEmbedNodeStyle();
  v8 = swift_allocObject();
  swift_beginAccess();
  v37 = v51;
  *(v8 + 16) = v20;
  *(v8 + 24) = v37;
  v38 = v50;
  *(v8 + 32) = v47;
  *(v8 + 40) = v38;
  v39 = v46;
  *(v8 + 48) = v45;
  *(v8 + 56) = v36;
  *(v8 + 64) = v35;
  v40 = *(&v46 + 1);
  *(v8 + 72) = v39;
  *(v8 + 80) = v40;
  LOBYTE(v40) = v43;
  *(v8 + 88) = v44;
  *(v8 + 89) = v40;
  *(v8 + 90) = v42;
  swift_beginAccess();
  *(v8 + 96) = v34;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1D5CCC77C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5CCC074(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D5CCC7A8()
{
  result = qword_1EDF26D88;
  if (!qword_1EDF26D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26D88);
  }

  return result;
}

unint64_t sub_1D5CCC7FC()
{
  result = qword_1EDF26D90;
  if (!qword_1EDF26D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26D90);
  }

  return result;
}

void sub_1D5CCC850()
{
  if (!qword_1EDF19FB8)
  {
    sub_1D5CCC8E4();
    sub_1D5B58B84(&qword_1EDF25158, sub_1D5CCC8E4);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19FB8);
    }
  }
}

void sub_1D5CCC8E4()
{
  if (!qword_1EDF25150)
  {
    sub_1D5CCC968();
    sub_1D5CCC9BC();
    sub_1D5CCCAC0();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25150);
    }
  }
}

unint64_t sub_1D5CCC968()
{
  result = qword_1EDF26DD0;
  if (!qword_1EDF26DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26DD0);
  }

  return result;
}

unint64_t sub_1D5CCC9BC()
{
  result = qword_1EDF26DD8;
  if (!qword_1EDF26DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26DD8);
  }

  return result;
}

unint64_t sub_1D5CCCA14()
{
  result = qword_1EDF26DC0;
  if (!qword_1EDF26DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26DC0);
  }

  return result;
}

unint64_t sub_1D5CCCA6C()
{
  result = qword_1EDF26DC8;
  if (!qword_1EDF26DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26DC8);
  }

  return result;
}

unint64_t sub_1D5CCCAC0()
{
  result = qword_1EDF26DE0;
  if (!qword_1EDF26DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26DE0);
  }

  return result;
}

unint64_t sub_1D5CCCB14()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x726F7463656C6573;
    if (v1 != 6)
    {
      v5 = 1885433183;
    }

    v6 = 0xD000000000000013;
    if (v1 == 4)
    {
      v6 = 0xD000000000000018;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x696669746E656469;
    v3 = 0x615272656E726F63;
    if (v1 != 2)
    {
      v3 = 0xD000000000000011;
    }

    if (*v0)
    {
      v2 = 0x7373616C63;
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
}

uint64_t sub_1D5CCCC20@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v73 = a2;
  sub_1D5CBB26C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v107 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v72 = &v70 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v70 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v70 - v16;
  v106 = MEMORY[0x1E69E7CC8];
  sub_1D5CCD10C();
  result = sub_1D7261DAC();
  v78 = *(a1 + 16);
  if (!v78)
  {
    v21 = v106;
LABEL_20:
    v41 = v73;
    *v73 = a1;
    v41[1] = v21;
    return result;
  }

  v71 = v13;
  v19 = 0;
  v20 = *(v4 + 80);
  v76 = a1;
  v77 = a1 + ((v20 + 32) & ~v20);
  v21 = v106;
  v74 = v17;
  v75 = v4;
  while (v19 < *(a1 + 16))
  {
    v22 = *(v4 + 72);
    sub_1D5CCD174(v77 + v22 * v19, v17);
    v23 = *v17;
    v24 = *(v17 + 1);
    if (v21[2])
    {
      v25 = sub_1D5B69D90(*v17, *(v17 + 1));
      if (v26)
      {
        v106 = v21;
        v42 = v25;

        v43 = v21[7] + v42 * v22;
        v44 = v72;
        sub_1D5CCD174(v43, v72);
        v45 = v71;
        sub_1D5CCD1D8(v44, v71);
        type metadata accessor for FormatPackageError();
        sub_1D5CBB224(&qword_1EC881A40, type metadata accessor for FormatPackageError);
        swift_allocError();
        v46 = *(v17 + 3);
        v47 = *(v17 + 5);
        v83 = *(v17 + 4);
        v84 = v47;
        v48 = *(v17 + 5);
        v85[0] = *(v17 + 6);
        *(v85 + 9) = *(v17 + 105);
        v49 = *(v17 + 1);
        v80[0] = *v17;
        v80[1] = v49;
        v50 = *(v17 + 3);
        v52 = *v17;
        v51 = *(v17 + 1);
        v81 = *(v17 + 2);
        v82 = v50;
        v53 = v45[1];
        v54 = v45[3];
        v87 = v45[2];
        v88 = v54;
        v55 = v45[1];
        v86[0] = *v45;
        v86[1] = v55;
        *(v91 + 9) = *(v45 + 105);
        v56 = v45[5];
        v91[0] = v45[6];
        v57 = v45[3];
        v58 = v45[5];
        v89 = v45[4];
        v90 = v58;
        v94 = v81;
        v95 = v46;
        v92 = v52;
        v93 = v51;
        *(v98 + 9) = *(v17 + 105);
        v96 = v83;
        v97 = v48;
        v100 = v53;
        v101 = v87;
        v98[0] = *(v17 + 6);
        v99 = v86[0];
        *(v105 + 9) = *(v45 + 105);
        v59 = v45[6];
        v104 = v56;
        v105[0] = v59;
        v102 = v57;
        v103 = v89;
        v60[2] = v81;
        v60[3] = v46;
        *v60 = v52;
        v60[1] = v51;
        v61 = v96;
        v62 = v97;
        v63 = v98[1];
        v60[6] = v98[0];
        v60[7] = v63;
        v60[4] = v61;
        v60[5] = v62;
        v64 = v99;
        v65 = v100;
        v66 = v102;
        v60[10] = v101;
        v60[11] = v66;
        v60[8] = v64;
        v60[9] = v65;
        v67 = v103;
        v68 = v104;
        v69 = v105[0];
        *(v60 + 233) = *(v105 + 9);
        v60[13] = v68;
        v60[14] = v69;
        v60[12] = v67;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1D5F8A3DC(v80, v79);
        sub_1D5F8A3DC(v86, v79);
        sub_1D5CCD23C(v45);
        sub_1D5CCD23C(v17);
      }
    }

    sub_1D5CCD174(v17, v107);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v92 = v21;
    v28 = v23;
    v30 = sub_1D5B69D90(v23, v24);
    v31 = v21[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_24;
    }

    v34 = v29;
    if (v21[3] >= v33)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v21 = v92;
        if (v29)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1D6D7E3E4();
        v21 = v92;
        if (v34)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1D6D670D8(v33, isUniquelyReferenced_nonNull_native);
      v35 = sub_1D5B69D90(v28, v24);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_26;
      }

      v30 = v35;
      v21 = v92;
      if (v34)
      {
LABEL_3:
        sub_1D5F8A378(v107, v21[7] + v30 * v22);
        goto LABEL_4;
      }
    }

    v21[(v30 >> 6) + 8] |= 1 << v30;
    v37 = (v21[6] + 16 * v30);
    *v37 = v28;
    v37[1] = v24;
    sub_1D5CCD1D8(v107, v21[7] + v30 * v22);
    v38 = v21[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_25;
    }

    v21[2] = v40;

LABEL_4:
    ++v19;
    v17 = v74;
    result = sub_1D5CCD23C(v74);
    v4 = v75;
    a1 = v76;
    if (v78 == v19)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

void sub_1D5CCD10C()
{
  if (!qword_1EDF1B958)
  {
    sub_1D5CBB26C();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B958);
    }
  }
}

uint64_t sub_1D5CCD174(uint64_t a1, uint64_t a2)
{
  sub_1D5CBB26C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5CCD1D8(uint64_t a1, uint64_t a2)
{
  sub_1D5CBB26C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5CCD23C(uint64_t a1)
{
  sub_1D5CBB26C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D5CCD298()
{
  result = qword_1EDF3A858;
  if (!qword_1EDF3A858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A858);
  }

  return result;
}

uint64_t sub_1D5CCD2EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1D5CCD344(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 51))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 50) & 0x7E | (*(a1 + 50) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D5CCD398@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a3;
  v37 = a4;
  v42 = a2;
  v6 = v5;
  v35 = a5;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v34 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v5)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v6);
    swift_willThrow();
  }

  else
  {
    v14 = v42;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v18 = v13;
    if (v16)
    {
      v19 = sub_1D726433C();
      v20 = (v19 + 40);
      v21 = *(v19 + 16) + 1;
      while (--v21)
      {
        v22 = v20 + 2;
        v23 = *v20;
        v20 += 2;
        if (v23 >= 4)
        {
          v24 = *(v22 - 3);

          sub_1D5E2D970();
          v6 = swift_allocError();
          *v25 = v24;
          *(v25 + 8) = v23;
          *(v25 + 16) = v14;
          *(v25 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v10 + 8))(v18, v9);
          goto LABEL_9;
        }
      }
    }

    v36(v17);
    *v39 = 0uLL;
    sub_1D726431C();
    v27 = v10;
    if (v38)
    {
      v38 = xmmword_1D7279980;
      sub_1D5C6CE4C();
      sub_1D726431C();
      v28 = v35;
      (*(v27 + 8))(v18, v9);
      v29 = v39[0];
      v30 = *&v39[1];
      v31 = *&v39[3];
      v32 = v39[5];
      v33 = (v40 | (v41 << 16)) & 0x1FFFF | 0xFF800000;
    }

    else
    {
      sub_1D5C71DC8();
      *v39 = xmmword_1D7279980;
      sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
      sub_1D726431C();
      v28 = v35;
      (*(v27 + 8))(v18, v9);
      v32 = 0;
      v33 = 0;
      v29 = v38;
      v30 = 0uLL;
      v31 = 0uLL;
    }

    *v28 = v29;
    *(v28 + 8) = v30;
    *(v28 + 24) = v31;
    *(v28 + 40) = v32;
    *(v28 + 48) = v33;
    *(v28 + 50) = BYTE2(v33);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CCD7EC()
{
  result = qword_1EDF235B8;
  if (!qword_1EDF235B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF235B8);
  }

  return result;
}

unint64_t sub_1D5CCD8A0()
{
  result = qword_1EDF235C0;
  if (!qword_1EDF235C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF235C0);
  }

  return result;
}

uint64_t sub_1D5CCD900(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 48))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t FormatDateFormat.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v27 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (!v2)
  {
    v11 = v6;
    v12 = v32;
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
          v10 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F51149F0;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v9, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D5CCDD1C();
    v28 = 0;
    *&v29 = 0;
    sub_1D726431C();
    if (v27)
    {
      if (v27 != 1)
      {
        v27 = xmmword_1D7279980;
        sub_1D66857A8();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v25 = v29;
        v24 = v30;
        v26 = v31;
        v23 = v28;
        goto LABEL_16;
      }

      (*(v11 + 8))(v9, v5);
      v23 = 0;
      v24 = 0;
      v25 = xmmword_1D72830B0;
    }

    else
    {
      (*(v11 + 8))(v9, v5);
      v23 = 0;
      v24 = 0;
      v25 = xmmword_1D7279980;
    }

    v26 = 0uLL;
LABEL_16:
    *v12 = v23;
    *(v12 + 8) = v25;
    *(v12 + 24) = v24;
    *(v12 + 32) = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

LABEL_9:
  sub_1D61E4FBC(a1, v10);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CCDD1C()
{
  result = qword_1EDF3A8A8;
  if (!qword_1EDF3A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A8A8);
  }

  return result;
}

unint64_t sub_1D5CCDDD0()
{
  result = qword_1EDF3A8B0;
  if (!qword_1EDF3A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A8B0);
  }

  return result;
}

uint64_t sub_1D5CCDE24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CCDE54();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CCDE54()
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

unint64_t sub_1D5CCDEA0()
{
  result = qword_1EDF296F8;
  if (!qword_1EDF296F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF296F8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for SportsDataServiceError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t FormatHeadlineBinding.Command.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v22 - v9;
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

    v13 = v23;
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
          *(v20 + 16) = &unk_1F5115468;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D5CCE2A4();
    v24 = 0;
    v25 = 0;
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    *v13 = byte_1D72E0BF1[v26];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CCE2A4()
{
  result = qword_1EDF29700;
  if (!qword_1EDF29700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29700);
  }

  return result;
}

unint64_t sub_1D5CCE358()
{
  result = qword_1EDF29708;
  if (!qword_1EDF29708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29708);
  }

  return result;
}

uint64_t sub_1D5CCE3AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CCE3DC();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CCE3DC()
{
  v0 = sub_1D72648CC();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for SportsDataServiceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1D5CCE4C8()
{
  result = qword_1EDF2FDC0;
  if (!qword_1EDF2FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FDC0);
  }

  return result;
}

uint64_t FormatStyleImage.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v47 = a2;
  sub_1D5C8CD38();
  v6 = v5;
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CCEAB8();
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CCEA34();
  sub_1D5B58B84(&qword_1EDF25688, sub_1D5CCEA34);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v9;
  v39 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1D7264AFC();
  v15 = Dictionary<>.errorOnUnknownKeys.getter(v14);

  v16 = v41;
  v17 = v42;
  v18 = v47;
  v19 = v13;
  if (v15)
  {
    v20 = sub_1D726433C();
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = (v20 + 48);
      while (*v22 != 1)
      {
        v22 += 24;
        if (!--v21)
        {
          goto LABEL_7;
        }
      }

      v24 = v17;
      v25 = v16;
      v27 = *(v22 - 2);
      v26 = *(v22 - 1);

      v28 = sub_1D66242CC();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v29 = v27;
      *(v29 + 8) = v26;
      *(v29 + 16) = v28;
      *(v29 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v25 + 8))(v19, v24);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5B57A54();
  v45 = 0uLL;
  v46 = 0;
  sub_1D726431C();
  v23 = v43;
  type metadata accessor for FormatImageNodeStyle();
  v45 = xmmword_1D728CF30;
  v46 = 0;
  sub_1D5B58B84(&unk_1EDF2B0D8, type metadata accessor for FormatImageNodeStyle);
  sub_1D726431C();
  v31 = v43;
  v37 = xmmword_1D7297410;
  v45 = xmmword_1D7297410;
  v46 = 0;
  if (sub_1D726434C())
  {
    v35 = v23;
    v36 = v31;
    v43 = v37;
    v44 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38);
    v32 = v38;
    v33 = v39;
    sub_1D726431C();
    v34 = sub_1D725A74C();
    (*(v40 + 8))(v32, v33);
    v23 = v35;
    v31 = v36;
  }

  else
  {
    v34 = MEMORY[0x1E69E7CD0];
  }

  (*(v16 + 8))(v13, v17);
  *v18 = v23;
  v18[1] = v31;
  v18[2] = v34;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CCEA34()
{
  if (!qword_1EDF25680)
  {
    sub_1D5CCEB4C();
    sub_1D5CCEBA0();
    sub_1D5CCECA4();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25680);
    }
  }
}

void sub_1D5CCEAB8()
{
  if (!qword_1EDF1A250)
  {
    sub_1D5CCEA34();
    sub_1D5B58B84(&qword_1EDF25688, sub_1D5CCEA34);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A250);
    }
  }
}

unint64_t sub_1D5CCEB4C()
{
  result = qword_1EDF2FDD8;
  if (!qword_1EDF2FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FDD8);
  }

  return result;
}

unint64_t sub_1D5CCEBA0()
{
  result = qword_1EDF2FDE0;
  if (!qword_1EDF2FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FDE0);
  }

  return result;
}

unint64_t sub_1D5CCEBF8()
{
  result = qword_1EDF2FDC8;
  if (!qword_1EDF2FDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FDC8);
  }

  return result;
}

unint64_t sub_1D5CCEC50()
{
  result = qword_1EDF2FDD0;
  if (!qword_1EDF2FDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FDD0);
  }

  return result;
}

unint64_t sub_1D5CCECA4()
{
  result = qword_1EDF2FDE8;
  if (!qword_1EDF2FDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FDE8);
  }

  return result;
}

uint64_t sub_1D5CCECF8()
{
  v1 = 0x746E65746E6F63;
  v2 = 0x726F7463656C6573;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x656C797473;
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

unint64_t sub_1D5CCED6C()
{
  result = qword_1EDF33F00;
  if (!qword_1EDF33F00)
  {
    sub_1D5C34074(255, &qword_1EDF33EF8, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33F00);
  }

  return result;
}

unint64_t sub_1D5CCEDF0()
{
  result = qword_1EDF25C30;
  if (!qword_1EDF25C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25C30);
  }

  return result;
}

uint64_t sub_1D5CCEE44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D5CCEE8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t FormatTextNodeAttachment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  sub_1D5CCF2F4();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CCF388();
  sub_1D5B58B84(&qword_1EDF250B8, sub_1D5CCF388);
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_14:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v36;
  v14 = v6;
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

      v21 = *(v17 - 2);
      v20 = *(v17 - 1);

      v22 = sub_1D66252DC();
      sub_1D5E2D970();
      v10 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
      goto LABEL_14;
    }

LABEL_7:
  }

  sub_1D5C87F74();
  v34 = 0uLL;
  v35 = 0;
  sub_1D726431C();
  v18 = v32;
  v28 = xmmword_1D728CF30;
  v34 = xmmword_1D728CF30;
  v35 = 0;
  if (sub_1D726434C())
  {
    v32 = v28;
    v33 = 0;
    sub_1D5CCFE64();
    sub_1D726431C();
    v19 = v29;
  }

  else
  {
    v19 = 0;
  }

  v28 = xmmword_1D7297410;
  v34 = xmmword_1D7297410;
  v35 = 0;
  if (sub_1D726434C())
  {
    v32 = v28;
    v33 = 0;
    sub_1D5CDCE98();
    sub_1D726431C();
    *&v28 = v18;
    (*(v14 + 8))(v9, v5);
    v26 = v29;
    v25 = v30;
    v27 = v31;
    sub_1D5C75A4C(v29, v30, v31);
    sub_1D5D2F2C8(v26, v25, v27);
  }

  else
  {
    *&v28 = v18;
    (*(v14 + 8))(v9, v5);
    v25 = 0;
    v27 = 0;
    v26 = 1;
  }

  *v13 = v28;
  *(v13 + 8) = v19;
  *(v13 + 16) = v26;
  *(v13 + 24) = v25;
  *(v13 + 32) = v27;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CCF2F4()
{
  if (!qword_1EDF19F68)
  {
    sub_1D5CCF388();
    sub_1D5B58B84(&qword_1EDF250B8, sub_1D5CCF388);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19F68);
    }
  }
}

void sub_1D5CCF388()
{
  if (!qword_1EDF250B0)
  {
    sub_1D5CCF424();
    sub_1D5CCF478();
    sub_1D5CCF57C();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF250B0);
    }
  }
}

unint64_t sub_1D5CCF424()
{
  result = qword_1EDF25C48;
  if (!qword_1EDF25C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25C48);
  }

  return result;
}

unint64_t sub_1D5CCF478()
{
  result = qword_1EDF25C50;
  if (!qword_1EDF25C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25C50);
  }

  return result;
}

unint64_t sub_1D5CCF4D0()
{
  result = qword_1EDF25C38;
  if (!qword_1EDF25C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25C38);
  }

  return result;
}

unint64_t sub_1D5CCF528()
{
  result = qword_1EDF25C40;
  if (!qword_1EDF25C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25C40);
  }

  return result;
}

unint64_t sub_1D5CCF57C()
{
  result = qword_1EDF25C58;
  if (!qword_1EDF25C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25C58);
  }

  return result;
}

uint64_t sub_1D5CCF5D0()
{
  v1 = 0x6567616D69;
  v2 = 0x64656C616373;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x6E656D6E67696C61;
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

unint64_t sub_1D5CCF640()
{
  result = qword_1EDF2F7F0;
  if (!qword_1EDF2F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F7F0);
  }

  return result;
}

uint64_t sub_1D5CCF694(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1D5CCF6DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FormatBundleImage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D5CCFB50();
  v7 = v6;
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CCFACC();
  sub_1D5B58B84(&qword_1EDF25648, sub_1D5CCFACC);
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

  v13 = v39;
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

      v25 = sub_1D6617B7C();
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

  v37 = 0uLL;
  v38 = 0;
  v18 = sub_1D72642BC();
  v20 = v19;
  v21 = v13;
  v34 = v18;
  v37 = xmmword_1D728CF30;
  v38 = 0;
  v22 = sub_1D726422C();
  v29 = v28;
  v33 = v22;
  v35 = xmmword_1D7297410;
  v36 = 0;
  sub_1D5CCFE10();
  sub_1D726427C();
  (*(v21 + 8))(v10, v14);
  v30 = v38;
  v31 = v37;
  v32 = v33;
  *a2 = v34;
  *(a2 + 8) = v20;
  *(a2 + 16) = v32;
  *(a2 + 24) = v29;
  *(a2 + 32) = v31;
  *(a2 + 48) = v30;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CCFACC()
{
  if (!qword_1EDF25640)
  {
    sub_1D5CCFBFC();
    sub_1D5CCFC50();
    sub_1D5CCFD54();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25640);
    }
  }
}

void sub_1D5CCFB50()
{
  if (!qword_1EDF1A230)
  {
    sub_1D5CCFACC();
    sub_1D5B58B84(&qword_1EDF25648, sub_1D5CCFACC);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A230);
    }
  }
}

unint64_t sub_1D5CCFBFC()
{
  result = qword_1EDF2F808;
  if (!qword_1EDF2F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F808);
  }

  return result;
}

unint64_t sub_1D5CCFC50()
{
  result = qword_1EDF2F810;
  if (!qword_1EDF2F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F810);
  }

  return result;
}

unint64_t sub_1D5CCFCA8()
{
  result = qword_1EDF2F7F8;
  if (!qword_1EDF2F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F7F8);
  }

  return result;
}

unint64_t sub_1D5CCFD00()
{
  result = qword_1EDF2F800;
  if (!qword_1EDF2F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F800);
  }

  return result;
}

unint64_t sub_1D5CCFD54()
{
  result = qword_1EDF2F818[0];
  if (!qword_1EDF2F818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF2F818);
  }

  return result;
}

unint64_t sub_1D5CCFDA8()
{
  v1 = 1701667182;
  v2 = 1702521203;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

unint64_t sub_1D5CCFE10()
{
  result = qword_1EDF29CC0;
  if (!qword_1EDF29CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29CC0);
  }

  return result;
}

unint64_t sub_1D5CCFE64()
{
  result = qword_1EDF1E408;
  if (!qword_1EDF1E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E408);
  }

  return result;
}

unint64_t sub_1D5CCFF18()
{
  result = qword_1EDF1E410;
  if (!qword_1EDF1E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E410);
  }

  return result;
}

uint64_t sub_1D5CCFF6C@<X0>(char *a1@<X8>)
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

void sub_1D5CCFFEC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_1D5CD023C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

uint64_t FormatSelectorValueSelector.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v48 = a3;
  v47 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v46 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v50 = &v43 - v8;
  v51 = v7;
  v54 = v9;
  v10 = _s10CodingKeysOMa_249();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  *&v57 = v10;
  *(&v57 + 1) = WitnessTable;
  v52 = WitnessTable;
  v49 = v12;
  v58 = v12;
  v59 = v13;
  v14 = type metadata accessor for FormatCodingKeysContainer();
  swift_getWitnessTable();
  v15 = sub_1D726435C();
  v53 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v43 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v60;
  sub_1D7264B0C();
  v20 = v19;
  if (v19)
  {
    goto LABEL_12;
  }

  v43 = v13;
  v44 = v10;
  v45 = 0;
  v60 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = sub_1D7264AFC();
  v22 = Dictionary<>.errorOnUnknownKeys.getter(v21);

  if ((v22 & 1) == 0)
  {
LABEL_10:
    sub_1D5C36978();
    v57 = 0uLL;
    LOBYTE(v58) = 0;
    v36 = v60;
    v37 = v45;
    sub_1D726431C();
    v20 = v37;
    if (!v37)
    {
      v39 = v55;
      v38 = v56;
      v57 = xmmword_1D728CF30;
      LOBYTE(v58) = 0;
      v41 = v50;
      v40 = v51;
      sub_1D726431C();
      (*(v53 + 8))(v36, v15);
      *&v57 = v39;
      *(&v57 + 1) = v38;
      v42 = v46;
      (*(v47 + 32))(v46, v41, v40);
      FormatSelectorValueSelector.init(selector:value:)(&v57, v42, v40, v48);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    (*(v53 + 8))(v36, v15);
LABEL_12:
    sub_1D61E4FBC(a1, v20);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v24 = (sub_1D726433C() + 48);
  v25 = v52;
  v26 = v44;
  while (1)
  {
    if (v23 == sub_1D726279C())
    {

      goto LABEL_10;
    }

    v27 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v27 & 1) == 0)
    {
      break;
    }

    v29 = *v24;
    v57 = *(v24 - 1);
    LOBYTE(v58) = v29;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_16;
    }

    v30 = sub_1D6AFC82C(v14);
    ++v23;
    v24 += 24;
    if (v31)
    {
      v32 = v30;
      v33 = v31;

      v34 = sub_1D6AFC690(v26, v25, v49, v43);
      sub_1D5E2D970();
      v20 = swift_allocError();
      *v35 = v32;
      *(v35 + 8) = v33;
      *(v35 + 16) = v34;
      *(v35 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v53 + 8))(v60, v15);
      goto LABEL_12;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D5CD0940(char a1)
{
  if (!a1)
  {
    return 0x726F7463656C6573;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 1885433183;
}

uint64_t FormatSelectorValueSelector.init(selector:value:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a1[1];
  *a4 = *a1;
  a4[1] = v7;
  v8 = type metadata accessor for FormatSelectorValueSelector();
  v9 = *(*(a3 - 8) + 32);
  v10 = a4 + *(v8 + 36);

  return v9(v10, a2, a3);
}

uint64_t sub_1D5CD0A44@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t, void, void, void)@<X3>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2[2], a2[3], a2[4]);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

unint64_t sub_1D5CD0AB8()
{
  result = qword_1EDF3BD60;
  if (!qword_1EDF3BD60)
  {
    sub_1D5C2E60C(255, &qword_1EDF3BD58, sub_1D5C50AA0, sub_1D5C50AF4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BD60);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FormatItemTrait(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 49) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCF)
  {
    v4 = 0;
  }

  if (a2 > 0xCE)
  {
    v5 = ((a2 - 207) >> 8) + 1;
    *result = a2 + 49;
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
    *result = a2 + 49;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D5CD0C58()
{
  result = qword_1EDF315E8;
  if (!qword_1EDF315E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF315E8);
  }

  return result;
}

NewsFeed::FormatItemTrait_optional __swiftcall FormatItemTrait.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72648CC();

  v5 = 0;
  v6 = 32;
  switch(v3)
  {
    case 0:
      goto LABEL_49;
    case 1:
      v5 = 1;
      goto LABEL_49;
    case 2:
      v5 = 2;
      goto LABEL_49;
    case 3:
      v5 = 3;
      goto LABEL_49;
    case 4:
      v5 = 4;
      goto LABEL_49;
    case 5:
      v5 = 5;
      goto LABEL_49;
    case 6:
      v5 = 6;
      goto LABEL_49;
    case 7:
      v5 = 7;
      goto LABEL_49;
    case 8:
      v5 = 8;
      goto LABEL_49;
    case 9:
      v5 = 9;
      goto LABEL_49;
    case 10:
      v5 = 10;
      goto LABEL_49;
    case 11:
      v5 = 11;
      goto LABEL_49;
    case 12:
      v5 = 12;
      goto LABEL_49;
    case 13:
      v5 = 13;
      goto LABEL_49;
    case 14:
      v5 = 14;
      goto LABEL_49;
    case 15:
      v5 = 15;
      goto LABEL_49;
    case 16:
      v5 = 16;
      goto LABEL_49;
    case 17:
      v5 = 17;
      goto LABEL_49;
    case 18:
      v5 = 18;
      goto LABEL_49;
    case 19:
      v5 = 19;
      goto LABEL_49;
    case 20:
      v5 = 20;
      goto LABEL_49;
    case 21:
      v5 = 21;
      goto LABEL_49;
    case 22:
      v5 = 22;
      goto LABEL_49;
    case 23:
      v5 = 23;
      goto LABEL_49;
    case 24:
      v5 = 24;
      goto LABEL_49;
    case 25:
      v5 = 25;
      goto LABEL_49;
    case 26:
      v5 = 26;
      goto LABEL_49;
    case 27:
      v5 = 27;
      goto LABEL_49;
    case 28:
      v5 = 28;
      goto LABEL_49;
    case 29:
      v5 = 29;
      goto LABEL_49;
    case 30:
      v5 = 30;
      goto LABEL_49;
    case 31:
      v5 = 31;
LABEL_49:
      v6 = v5;
      break;
    case 32:
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    case 48:
      v6 = 48;
      break;
    case 49:
      v6 = 49;
      break;
    default:
      v6 = 50;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for FormatItemTrait(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCF)
  {
    goto LABEL_17;
  }

  if (a2 + 49 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 49) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 49;
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

      return (*a1 | (v4 << 8)) - 49;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 49;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x32;
  v8 = v6 - 50;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D5CD1024@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5CD1050(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D5CD1050(void *a1)
{
  sub_1D5C2E60C(0, &qword_1EDF3BD28, sub_1D5C6590C, sub_1D5C65960);
  v85 = v2;
  v84 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v88 = &v77 - v4;
  sub_1D5C5BDF0();
  v90 = v5;
  v86 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  *&v94 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2E528();
  *&v98 = v8;
  v87 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v92 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8CD38();
  v95 = v11;
  v89 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  *&v97 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2E60C(0, &qword_1EDF3BD48, sub_1D5C2E688, sub_1D5C2E6DC);
  v108 = v14;
  v91 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  *&v96 = &v77 - v16;
  sub_1D5C2E60C(0, &qword_1EDF3BD38, sub_1D5C62464, sub_1D5C624B8);
  v18 = v17;
  v93 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v77 - v20;
  sub_1D5CD2488();
  v23 = v22;
  *&v99 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CD251C();
  sub_1D5B58B84(&qword_1EDF24C38, sub_1D5CD251C);
  v27 = v100;
  sub_1D7264B0C();
  v28 = v27;
  if (v27)
  {
    v29 = a1;
LABEL_11:
    sub_1D61E4FBC(v29, v28);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(v29);
    return v29;
  }

  *&v100 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v30 = sub_1D7264AFC();
  v31 = Dictionary<>.errorOnUnknownKeys.getter(v30);

  v29 = a1;
  v32 = v23;
  if (v31)
  {
    v33 = sub_1D726433C();
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = (v33 + 48);
      while (*v35 != 1)
      {
        v35 += 24;
        if (!--v34)
        {
          goto LABEL_8;
        }
      }

      v39 = *(v35 - 2);
      v38 = *(v35 - 1);

      v40 = sub_1D661DABC();
      sub_1D5E2D970();
      v28 = swift_allocError();
      *v41 = v39;
      *(v41 + 8) = v38;
      *(v41 + 16) = v40;
      *(v41 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v99 + 8))(v26, v23);
      goto LABEL_11;
    }

LABEL_8:
  }

  v36 = sub_1D5C31D18(v26, 0, 0, 0, sub_1D5CD2488);
  v83 = v37;
  v104 = xmmword_1D728CF30;
  LOBYTE(v105) = 0;
  v42 = sub_1D72642BC();
  v82 = v43;
  v104 = xmmword_1D7297410;
  LOBYTE(v105) = 0;
  sub_1D5C62940();
  sub_1D726431C();
  v81 = v42;
  v44 = v102;
  v104 = xmmword_1D72BAA60;
  LOBYTE(v105) = 0;
  sub_1D5C6411C();
  sub_1D726427C();
  v77 = v36;
  v80 = v102;
  v79 = xmmword_1D72BAA70;
  v104 = xmmword_1D72BAA70;
  LOBYTE(v105) = 0;
  if (sub_1D726434C())
  {
    v102 = v79;
    v103 = 0;
    sub_1D5C9EEC4();
    v46 = v18;
    sub_1D726431C();
    v47 = v98;
    v78 = v44;
    v48 = v100;
    *&v79 = sub_1D725A74C();
    (*(v93 + 8))(v48, v46);
  }

  else
  {
    v78 = v44;
    *&v79 = MEMORY[0x1E69E7CC0];
    v47 = v98;
  }

  v100 = xmmword_1D72BAA80;
  v104 = xmmword_1D72BAA80;
  LOBYTE(v105) = 0;
  v49 = sub_1D726434C();
  v50 = v97;
  v51 = v96;
  if (v49)
  {
    v102 = v100;
    v103 = 0;
    sub_1D5C2F040();
    v52 = v108;
    sub_1D726431C();
    *&v100 = sub_1D725A74C();
    (*(v91 + 8))(v51, v52);
    v50 = v97;
    v47 = v98;
  }

  else
  {
    *&v100 = MEMORY[0x1E69E7CC0];
  }

  v96 = xmmword_1D72BAA90;
  v104 = xmmword_1D72BAA90;
  LOBYTE(v105) = 0;
  if (sub_1D726434C())
  {
    v102 = v96;
    v103 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38);
    v53 = v50;
    v54 = v95;
    sub_1D726431C();
    *&v96 = sub_1D725A74C();
    (*(v89 + 8))(v53, v54);
  }

  else
  {
    *&v96 = MEMORY[0x1E69E7CD0];
  }

  v97 = xmmword_1D72BAAA0;
  v104 = xmmword_1D72BAAA0;
  LOBYTE(v105) = 0;
  if (sub_1D726434C())
  {
    v102 = v97;
    v103 = 0;
    sub_1D5B58B84(&qword_1EDF3BD80, sub_1D5C2E528);
    v55 = v92;
    sub_1D726431C();
    v56 = sub_1D725A74C();
    v57 = v55;
    v58 = v56;
    (*(v87 + 8))(v57, v47);
  }

  else
  {
    v58 = MEMORY[0x1E69E7CC0];
  }

  v97 = xmmword_1D72BAAB0;
  v104 = xmmword_1D72BAAB0;
  LOBYTE(v105) = 0;
  v59 = sub_1D726434C();
  *&v98 = v26;
  v60 = v94;
  if (v59)
  {
    v108 = v58;
    v102 = v97;
    v103 = 0;
    sub_1D5B58B84(&qword_1EDF3BD90, sub_1D5C5BDF0);
    v61 = v90;
    sub_1D726431C();
    v62 = sub_1D725A74C();
    (*(v86 + 8))(v60, v61);
    v58 = v108;
  }

  else
  {
    v62 = MEMORY[0x1E69E7CC0];
  }

  v97 = xmmword_1D72BAAC0;
  v104 = xmmword_1D72BAAC0;
  LOBYTE(v105) = 0;
  if (sub_1D726434C())
  {
    v102 = v97;
    v103 = 0;
    sub_1D726431C();
    v95 = v101;
  }

  else
  {
    v95 = 0;
  }

  v97 = xmmword_1D72BAAD0;
  v104 = xmmword_1D72BAAD0;
  LOBYTE(v105) = 0;
  if (sub_1D726434C())
  {
    v102 = v97;
    v103 = 0;
    sub_1D5DF6A0C();
    sub_1D726431C();
    *&v97 = v62;
    v63 = v101;
    sub_1D5EB1500(v101);
    v108 = v63;
    sub_1D5EB15C4(v63);
  }

  else
  {
    *&v97 = v62;
    v108 = 0x8000000000000000;
  }

  v94 = xmmword_1D72BAAE0;
  v104 = xmmword_1D72BAAE0;
  LOBYTE(v105) = 0;
  v64 = sub_1D726434C();
  v65 = v88;
  if (v64)
  {
    v102 = v94;
    v103 = 0;
    sub_1D66FBDBC();
    v66 = v85;
    sub_1D726431C();
    v67 = v58;
    *&v94 = sub_1D725A74C();
    (*(v84 + 8))(v65, v66);
  }

  else
  {
    v67 = v58;
    *&v94 = MEMORY[0x1E69E7CC0];
  }

  v102 = xmmword_1D72BAAF0;
  v103 = 0;
  sub_1D5C5C5C0();
  v68 = v98;
  sub_1D726427C();
  v69 = v80;
  v70 = v97;
  (*(v99 + 8))(v68, v32);
  v71 = v29;
  v73 = v106;
  v72 = v107;
  type metadata accessor for FormatItemNode();
  v99 = v104;
  v98 = v105;
  v29 = swift_allocObject();
  swift_beginAccess();
  v74 = v83;
  *(v29 + 16) = v77;
  *(v29 + 24) = v74;
  v75 = v82;
  *(v29 + 32) = v81;
  *(v29 + 40) = v75;
  *(v29 + 48) = v78;
  *(v29 + 56) = v69;
  swift_beginAccess();
  *(v29 + 64) = v79;
  swift_beginAccess();
  *(v29 + 72) = v100;
  swift_beginAccess();
  *(v29 + 80) = v96;
  swift_beginAccess();
  *(v29 + 88) = v67;
  swift_beginAccess();
  *(v29 + 96) = v70;
  swift_beginAccess();
  *(v29 + 104) = v95;
  swift_beginAccess();
  *(v29 + 112) = v108;
  swift_beginAccess();
  *(v29 + 120) = v94;
  v76 = v98;
  *(v29 + 128) = v99;
  *(v29 + 144) = v76;
  *(v29 + 160) = v73;
  *(v29 + 168) = v72;
  __swift_destroy_boxed_opaque_existential_1(v71);
  return v29;
}