unint64_t sub_1D5C4FF98()
{
  result = qword_1EDF29C00;
  if (!qword_1EDF29C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29C00);
  }

  return result;
}

unint64_t sub_1D5C4FFEC()
{
  result = qword_1EDF29C08;
  if (!qword_1EDF29C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29C08);
  }

  return result;
}

unint64_t sub_1D5C50044()
{
  result = qword_1EDF29BF0;
  if (!qword_1EDF29BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29BF0);
  }

  return result;
}

unint64_t sub_1D5C5009C()
{
  result = qword_1EDF29C10;
  if (!qword_1EDF29C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29C10);
  }

  return result;
}

void sub_1D5C50108()
{
  if (!qword_1EDF25300)
  {
    sub_1D5C5018C();
    sub_1D5C8F718();
    sub_1D5C501E0();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25300);
    }
  }
}

unint64_t sub_1D5C5018C()
{
  result = qword_1EDF29C30;
  if (!qword_1EDF29C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29C30);
  }

  return result;
}

unint64_t sub_1D5C501E0()
{
  result = qword_1EDF29C40;
  if (!qword_1EDF29C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29C40);
  }

  return result;
}

uint64_t sub_1D5C50238()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1D5C50270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5C502D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5C50340(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void sub_1D5C5039C()
{
  if (!qword_1EDF419B0)
  {
    sub_1D72585BC();
    sub_1D5B58B84(&qword_1EDF45B80, MEMORY[0x1E6968FB0]);
    v0 = type metadata accessor for FormatValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF419B0);
    }
  }
}

uint64_t sub_1D5C504A4()
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

unint64_t sub_1D5C50508()
{
  result = qword_1EDF415E0;
  if (!qword_1EDF415E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF415E0);
  }

  return result;
}

unint64_t sub_1D5C50560()
{
  result = qword_1EDF415D0;
  if (!qword_1EDF415D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF415D0);
  }

  return result;
}

uint64_t sub_1D5C505B8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B5A0D4();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5C50624(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B59B80(255, &qword_1EDF43B98, sub_1D5B5C29C, &type metadata for FeedPlatform, MEMORY[0x1E69E64E8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5C506C8()
{
  result = qword_1EDF0E340;
  if (!qword_1EDF0E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E340);
  }

  return result;
}

unint64_t sub_1D5C50734()
{
  result = qword_1EDF0E390;
  if (!qword_1EDF0E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E390);
  }

  return result;
}

unint64_t sub_1D5C50788()
{
  result = qword_1EDF0E318;
  if (!qword_1EDF0E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E318);
  }

  return result;
}

unint64_t sub_1D5C507F8()
{
  result = qword_1EDF0E328;
  if (!qword_1EDF0E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E328);
  }

  return result;
}

unint64_t sub_1D5C5084C()
{
  result = qword_1EDF0E330;
  if (!qword_1EDF0E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E330);
  }

  return result;
}

unint64_t sub_1D5C508A0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x736E6F6974636573;
  if (v1 != 6)
  {
    v3 = 0x737265746C6966;
  }

  v4 = 0x726F7463656C6573;
  if (v1 != 4)
  {
    v4 = 0x73746E65746E6F63;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x74756F79616CLL;
  if (v1 != 2)
  {
    v5 = 0x736E6F6974706FLL;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

void sub_1D5C509A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D5C8F9E0();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D5C50A04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

unint64_t sub_1D5C50A4C()
{
  result = qword_1EDF28928;
  if (!qword_1EDF28928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28928);
  }

  return result;
}

unint64_t sub_1D5C50AA0()
{
  result = qword_1EDF315E0;
  if (!qword_1EDF315E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF315E0);
  }

  return result;
}

unint64_t sub_1D5C50AF4()
{
  result = qword_1EDF315F0;
  if (!qword_1EDF315F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF315F0);
  }

  return result;
}

unint64_t sub_1D5C50B48()
{
  result = qword_1EDF2BF78;
  if (!qword_1EDF2BF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BF78);
  }

  return result;
}

void sub_1D5C50B9C()
{
  if (!qword_1EDF24CE0)
  {
    sub_1D5C50C20();
    sub_1D5C50C74();
    sub_1D5C50D78();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24CE0);
    }
  }
}

unint64_t sub_1D5C50C20()
{
  result = qword_1EDF341F8;
  if (!qword_1EDF341F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF341F8);
  }

  return result;
}

unint64_t sub_1D5C50C74()
{
  result = qword_1EDF34200;
  if (!qword_1EDF34200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34200);
  }

  return result;
}

unint64_t sub_1D5C50CCC()
{
  result = qword_1EDF341E8;
  if (!qword_1EDF341E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF341E8);
  }

  return result;
}

unint64_t sub_1D5C50D24()
{
  result = qword_1EDF341F0;
  if (!qword_1EDF341F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF341F0);
  }

  return result;
}

unint64_t sub_1D5C50D78()
{
  result = qword_1EDF34208;
  if (!qword_1EDF34208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34208);
  }

  return result;
}

unint64_t sub_1D5C50DD4(char a1)
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
      result = 0x797469726F697270;
      break;
    case 4:
      result = 0x736E6D756C6F63;
      break;
    case 5:
      result = 0x79536E6D756C6F63;
      break;
    case 6:
      result = 0x6E6572646C696863;
      break;
    case 7:
      result = 0x73656C797473;
      break;
    case 8:
      result = 0x794274726F73;
      break;
    case 9:
      result = 0x726F7463656C6573;
      break;
    case 10:
      result = 0x736E6F6974706FLL;
      break;
    case 11:
      result = 0x7365707974;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x6D65726975716572;
      break;
    case 14:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1D5C50FA4()
{
  if (!qword_1EDF21388)
  {
    v0 = type metadata accessor for FormatCodingColumnSetStrategy.SetOrSingle();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF21388);
    }
  }
}

uint64_t sub_1D5C5104C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t FormatCodingColumnSetStrategy.SetOrSingle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X7>, uint64_t *a4@<X8>, uint64_t a5, uint64_t a6)
{
  v20 = a4;
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a5;
  v22 = a6;
  v8 = sub_1D725A75C();
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v23;
  sub_1D7264AEC();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = a3;
  v18 = a6;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  swift_getWitnessTable();
  sub_1D726472C();
  v14 = sub_1D725A74C();
  (*(v19 + 8))(v11, v8);
  v15 = v20;

  v16 = sub_1D7262B7C();

  if ((v16 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
    *v15 = v14;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D5E2D970();
  swift_allocError();
  *v17 = 1;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = 0x8000000000000000;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C51470()
{
  result = qword_1EDF3BD00;
  if (!qword_1EDF3BD00)
  {
    sub_1D5C2E60C(255, &qword_1EDF3BCF8, sub_1D5C91044, sub_1D5C50B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BD00);
  }

  return result;
}

uint64_t sub_1D5C51500(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1D5C5156C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t FormatSourceMapNode.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5C51A0C(0, &qword_1EDF19C20, sub_1D5C51A74, &type metadata for FormatSourceMapNode.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v33 - v9;
  sub_1D5B68374(a1, &v45);
  FormatNode.init(from:)(&v45, &v38);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v58 = v38;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.allowSourceMaps.getter(v12);

  if (v13)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5C51A74();
    sub_1D7264B0C();
    LOBYTE(v38) = 0;
    sub_1D61E52C4();
    sub_1D726427C();
    v20 = v45;
    v37 = v46;
    v21 = v48;
    v36 = v47;
    LOBYTE(v38) = 1;
    sub_1D6F6030C();
    sub_1D726427C();
    (*(v7 + 8))(v10, v6);
    v22 = v45;
    v23 = v46;
    v25 = v47;
    v24 = v48;
    v26 = v49;
    v27 = v50;
    v28 = v51;
    v29 = v52;
    v30 = v37;
    v31 = v36;
    v32 = v20;
  }

  else
  {
    v31 = 0;
    v30 = 0;
    v32 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v25 = 0;
    v24 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
  }

  v33 = v24;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  v37 = v29;
  *&v38 = v58;
  *(&v38 + 1) = v32;
  *&v39 = v30;
  *(&v39 + 1) = v31;
  *&v40 = v21;
  *(&v40 + 1) = v22;
  *&v41 = v23;
  *(&v41 + 1) = v25;
  *&v42 = v24;
  *(&v42 + 1) = v26;
  *&v43 = v27;
  *(&v43 + 1) = v28;
  v44 = v29;
  *(a2 + 96) = v29;
  v14 = v43;
  *(a2 + 64) = v42;
  *(a2 + 80) = v14;
  v15 = v39;
  *a2 = v38;
  *(a2 + 16) = v15;
  v16 = v41;
  *(a2 + 32) = v40;
  *(a2 + 48) = v16;
  v17 = v30;
  v18 = v21;
  v19 = v32;
  sub_1D5C5C4CC(&v38, &v45);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v45 = v58;
  v46 = v19;
  v47 = v17;
  v48 = v31;
  v49 = v18;
  v50 = v22;
  v51 = v23;
  v52 = v25;
  v53 = v33;
  v54 = v34;
  v55 = v35;
  v56 = v36;
  v57 = v37;
  return sub_1D5C5C540(&v45);
}

void sub_1D5C51A0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D5C51A74()
{
  result = qword_1EDF2BF90;
  if (!qword_1EDF2BF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BF90);
  }

  return result;
}

unint64_t sub_1D5C51ACC()
{
  result = qword_1EDF2BF80;
  if (!qword_1EDF2BF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BF80);
  }

  return result;
}

unint64_t sub_1D5C51B24()
{
  result = qword_1EDF2BF88;
  if (!qword_1EDF2BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BF88);
  }

  return result;
}

uint64_t FormatNode.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v102 = a2;
  v105 = sub_1D725895C();
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105, v4);
  v6 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v103 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v98 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v12 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v12);
    swift_willThrow();

    v28 = a1;
  }

  else
  {
    v13 = v104;
    v14 = a1[3];
    v101 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v14);
    v15 = sub_1D7264AFC();
    LOBYTE(v14) = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v16 = v103;
    v17 = v8;
    v18 = v105;
    v19 = v6;
    v20 = v17;
    if (v14)
    {
      v21 = sub_1D726433C();
      v22 = (v21 + 40);
      v23 = *(v21 + 16) + 1;
      while (--v23)
      {
        v24 = v22 + 2;
        v25 = *v22;
        v22 += 2;
        if (v25 >= 4)
        {
          v26 = *(v24 - 3);

          sub_1D5E2D970();
          v12 = swift_allocError();
          *v27 = v26;
          *(v27 + 8) = v25;
          *(v27 + 16) = &unk_1F5116188;
          *(v27 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v16 + 8))(v11, v20);
          a1 = v101;
          goto LABEL_9;
        }
      }
    }

    sub_1D5C53E88();
    v107 = 0uLL;
    sub_1D726431C();
    switch(v106)
    {
      case 1:
        type metadata accessor for FormatVBoxNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF32048, type metadata accessor for FormatVBoxNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v62 = v106;
        v63 = swift_allocObject();
        *(v63 + 16) = v62;
        v31 = v63 | 2;
        break;
      case 2:
        type metadata accessor for FormatHOverlayNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF2DF78, type metadata accessor for FormatHOverlayNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v56 = v106;
        v57 = swift_allocObject();
        *(v57 + 16) = v56;
        v31 = v57 | 4;
        break;
      case 3:
        type metadata accessor for FormatVOverlayNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF2D970, type metadata accessor for FormatVOverlayNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v59 = v106;
        v60 = swift_allocObject();
        *(v60 + 16) = v59;
        v31 = v60 | 6;
        break;
      case 4:
        type metadata accessor for FormatViewNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF31DA0, type metadata accessor for FormatViewNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v47 = v106;
        v48 = swift_allocObject();
        *(v48 + 16) = v47;
        v31 = v48 | 0x1000000000000000;
        break;
      case 5:
        type metadata accessor for FormatTextNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF321C8, type metadata accessor for FormatTextNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v67 = v106;
        v33 = swift_allocObject();
        *(v33 + 16) = v67;
        v34 = 0x1000000000000002;
        goto LABEL_56;
      case 6:
        type metadata accessor for FormatImageNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF31738, type metadata accessor for FormatImageNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v70 = v106;
        v33 = swift_allocObject();
        *(v33 + 16) = v70;
        v41 = 0x1000000000000002;
        goto LABEL_55;
      case 7:
        type metadata accessor for FormatItemNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF32660, type metadata accessor for FormatItemNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v61 = v106;
        v36 = swift_allocObject();
        *(v36 + 16) = v61;
        v37 = 0x1000000000000002;
        goto LABEL_50;
      case 8:
        type metadata accessor for FormatSpaceNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF311E0, type metadata accessor for FormatSpaceNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v73 = v106;
        v74 = swift_allocObject();
        *(v74 + 16) = v73;
        v31 = v74 | 0x2000000000000000;
        break;
      case 9:
        type metadata accessor for FormatSnippetNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF2F1D8, type metadata accessor for FormatSnippetNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v52 = v106;
        v33 = swift_allocObject();
        *(v33 + 16) = v52;
        v34 = 0x2000000000000002;
        goto LABEL_56;
      case 10:
        type metadata accessor for FormatSupplementaryNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF26FD0, type metadata accessor for FormatSupplementaryNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v72 = v106;
        v33 = swift_allocObject();
        *(v33 + 16) = v72;
        v41 = 0x2000000000000002;
        goto LABEL_55;
      case 11:
        type metadata accessor for FormatSwitchNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF2FD80, type metadata accessor for FormatSwitchNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v46 = v106;
        v36 = swift_allocObject();
        *(v36 + 16) = v46;
        v37 = 0x2000000000000002;
        goto LABEL_50;
      case 12:
        type metadata accessor for FormatSlotNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF323F0, type metadata accessor for FormatSlotNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v50 = v106;
        v51 = swift_allocObject();
        *(v51 + 16) = v50;
        v31 = v51 | 0x3000000000000000;
        break;
      case 13:
        type metadata accessor for FormatAccessibilityNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF27850, type metadata accessor for FormatAccessibilityNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v69 = v106;
        v33 = swift_allocObject();
        *(v33 + 16) = v69;
        v34 = 0x3000000000000002;
        goto LABEL_56;
      case 14:
        type metadata accessor for FormatButtonNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF308A0, type metadata accessor for FormatButtonNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v44 = v106;
        v33 = swift_allocObject();
        *(v33 + 16) = v44;
        v41 = 0x3000000000000002;
        goto LABEL_55;
      case 15:
        type metadata accessor for FormatGroupNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF31870, type metadata accessor for FormatGroupNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v58 = v106;
        v36 = swift_allocObject();
        *(v36 + 16) = v58;
        v37 = 0x3000000000000002;
        goto LABEL_50;
      case 16:
        type metadata accessor for FormatWebEmbedNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF2D738, type metadata accessor for FormatWebEmbedNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v42 = v106;
        v43 = swift_allocObject();
        *(v43 + 16) = v42;
        v31 = v43 | 0x4000000000000000;
        break;
      case 17:
        type metadata accessor for FormatFrameNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF31958, type metadata accessor for FormatFrameNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v65 = v106;
        v33 = swift_allocObject();
        *(v33 + 16) = v65;
        v34 = 0x4000000000000002;
        goto LABEL_56;
      case 18:
        type metadata accessor for FormatRepeatNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF300E0, type metadata accessor for FormatRepeatNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v71 = v106;
        v33 = swift_allocObject();
        *(v33 + 16) = v71;
        v41 = 0x4000000000000002;
        goto LABEL_55;
      case 19:
        type metadata accessor for FormatOptionsNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF2F2F0, type metadata accessor for FormatOptionsNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v81 = v106;
        v36 = swift_allocObject();
        *(v36 + 16) = v81;
        v37 = 0x4000000000000002;
        goto LABEL_50;
      case 20:
        type metadata accessor for FormatStateViewNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF2BF40, type metadata accessor for FormatStateViewNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v66 = v106;
        v33 = swift_allocObject();
        *(v33 + 16) = v66;
        v34 = 0x5000000000000000;
        goto LABEL_56;
      case 21:
        type metadata accessor for FormatCustomNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF30648, type metadata accessor for FormatCustomNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v68 = v106;
        v33 = swift_allocObject();
        *(v33 + 16) = v68;
        v34 = 0x5000000000000002;
        goto LABEL_56;
      case 22:
        v78 = type metadata accessor for FormatPrintNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EC886FB0, type metadata accessor for FormatPrintNode);
        v100 = v78;
        sub_1D726427C();
        v79 = v116;
        if (v116)
        {
          (*(v16 + 8))(v11, v20);
        }

        else
        {
          sub_1D725894C();
          v99 = sub_1D725893C();
          v93 = v19;
          v95 = v94;
          (*(v13 + 8))(v93, v18);
          v96 = sub_1D5E28984(&unk_1F51161D8);
          (*(v16 + 8))(v11, v20);
          v79 = swift_allocObject();
          swift_beginAccess();
          v79[2] = v99;
          v79[3] = v95;
          v79[4] = 0;
          v79[5] = 0;
          swift_beginAccess();
          v79[6] = v96;
        }

        v91 = v102;
        v97 = swift_allocObject();
        *(v97 + 16) = v79;
        v31 = v97 | 0x5000000000000004;
        goto LABEL_58;
      case 23:
        type metadata accessor for FormatAdMetricsNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF2CDC0, type metadata accessor for FormatAdMetricsNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v82 = v106;
        v36 = swift_allocObject();
        *(v36 + 16) = v82;
        v37 = 0x5000000000000002;
        goto LABEL_50;
      case 24:
        type metadata accessor for FormatMicaNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EC886FA8, type metadata accessor for FormatMicaNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v54 = v106;
        v55 = swift_allocObject();
        *(v55 + 16) = v54;
        v31 = v55 | 0x6000000000000000;
        break;
      case 25:
        type metadata accessor for FormatLayeredMediaNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF28720, type metadata accessor for FormatLayeredMediaNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v53 = v106;
        v33 = swift_allocObject();
        *(v33 + 16) = v53;
        v34 = 0x6000000000000002;
        goto LABEL_56;
      case 26:
        type metadata accessor for FormatVideoNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF117A8, type metadata accessor for FormatVideoNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v90 = v106;
        v33 = swift_allocObject();
        *(v33 + 16) = v90;
        v41 = 0x6000000000000002;
        goto LABEL_55;
      case 27:
        type metadata accessor for FormatIssueCoverNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF0EF90, type metadata accessor for FormatIssueCoverNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v39 = v106;
        v36 = swift_allocObject();
        *(v36 + 16) = v39;
        v37 = 0x6000000000000002;
        goto LABEL_50;
      case 28:
        v106 = xmmword_1D7279980;
        sub_1D66A5604();
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v85 = swift_allocObject();
        v86 = v114;
        *(v85 + 112) = v113;
        *(v85 + 128) = v86;
        *(v85 + 144) = v115;
        v87 = v110;
        *(v85 + 48) = v109;
        *(v85 + 64) = v87;
        v88 = v112;
        *(v85 + 80) = v111;
        *(v85 + 96) = v88;
        v89 = v108;
        v31 = v85 | 0x7000000000000000;
        *(v85 + 16) = v107;
        *(v85 + 32) = v89;
        break;
      case 29:
        type metadata accessor for FormatBlockNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF31A98, type metadata accessor for FormatBlockNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v83 = v106;
        v33 = swift_allocObject();
        *(v33 + 16) = v83;
        v34 = 0x7000000000000002;
        goto LABEL_56;
      case 30:
        type metadata accessor for FormatGeometryNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF2E110, type metadata accessor for FormatGeometryNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v75 = v106;
        v33 = swift_allocObject();
        *(v33 + 16) = v75;
        v41 = 0x7000000000000002;
        goto LABEL_55;
      case 31:
        type metadata accessor for FormatVideoPlayerNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF28FE0, type metadata accessor for FormatVideoPlayerNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v64 = v106;
        v36 = swift_allocObject();
        *(v36 + 16) = v64;
        v37 = 0x7000000000000002;
        goto LABEL_50;
      case 32:
        type metadata accessor for FormatProgressViewNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF28128, type metadata accessor for FormatProgressViewNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v76 = v106;
        v77 = swift_allocObject();
        *(v77 + 16) = v76;
        v31 = v77 | 0x8000000000000000;
        break;
      case 33:
        type metadata accessor for FormatItemBindingsNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF0DAC8, type metadata accessor for FormatItemBindingsNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v45 = v106;
        v33 = swift_allocObject();
        *(v33 + 16) = v45;
        v34 = 0x8000000000000002;
        goto LABEL_56;
      case 34:
        type metadata accessor for FormatAuxiliaryNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF2CBC0, type metadata accessor for FormatAuxiliaryNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v40 = v106;
        v33 = swift_allocObject();
        *(v33 + 16) = v40;
        v41 = 0x8000000000000002;
        goto LABEL_55;
      case 35:
        type metadata accessor for FormatResetNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF31300, type metadata accessor for FormatResetNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v35 = v106;
        v36 = swift_allocObject();
        *(v36 + 16) = v35;
        v37 = 0x8000000000000002;
        goto LABEL_50;
      case 36:
        type metadata accessor for FormatVariableNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF10158, type metadata accessor for FormatVariableNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v38 = v106;
        v33 = swift_allocObject();
        *(v33 + 16) = v38;
        v34 = 0x9000000000000000;
        goto LABEL_56;
      case 37:
        type metadata accessor for FormatBreakpointNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EC881F98, type metadata accessor for FormatBreakpointNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v32 = v106;
        v33 = swift_allocObject();
        *(v33 + 16) = v32;
        v34 = 0x9000000000000002;
        goto LABEL_56;
      case 38:
        type metadata accessor for FormatPuzzleEmbedNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF0E098, type metadata accessor for FormatPuzzleEmbedNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v84 = v106;
        v33 = swift_allocObject();
        *(v33 + 16) = v84;
        v41 = 0x9000000000000002;
LABEL_55:
        v34 = v41 + 2;
        goto LABEL_56;
      case 39:
        type metadata accessor for FormatSponsoredBannerNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF24368, type metadata accessor for FormatSponsoredBannerNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v80 = v106;
        v36 = swift_allocObject();
        *(v36 + 16) = v80;
        v37 = 0x9000000000000002;
LABEL_50:
        v31 = v36 | v37 | 4;
        break;
      case 40:
        type metadata accessor for FormatFlexBoxNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF2F6B8, type metadata accessor for FormatFlexBoxNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v49 = v106;
        v33 = swift_allocObject();
        *(v33 + 16) = v49;
        v34 = 0xA000000000000000;
LABEL_56:
        v31 = v33 | v34;
        break;
      default:
        type metadata accessor for FormatHBoxNode();
        v107 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF327C8, type metadata accessor for FormatHBoxNode);
        sub_1D726431C();
        (*(v16 + 8))(v11, v20);
        v30 = v106;
        v31 = swift_allocObject();
        *(v31 + 16) = v30;
        break;
    }

    v91 = v102;
LABEL_58:
    v92 = v101;
    *v91 = v31;
    v28 = v92;
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_1D5C53DEC()
{

  sub_1D5C92A8C(v0[4]);

  sub_1D5EB15C4(v0[8]);

  if (v0[13])
  {

    if (v0[17] >= 3)
    {
    }
  }

  return swift_deallocObject();
}

unint64_t sub_1D5C53E88()
{
  result = qword_1EDF34608;
  if (!qword_1EDF34608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34608);
  }

  return result;
}

unint64_t sub_1D5C53F3C()
{
  result = qword_1EDF34610;
  if (!qword_1EDF34610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34610);
  }

  return result;
}

uint64_t sub_1D5C53F90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C53FC0();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C53FC0()
{
  v0 = sub_1D72648CC();

  if (v0 >= 0x29)
  {
    return 41;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D5C54038(void *a1)
{
  sub_1D5C2E528();
  v3 = *(v2 - 8);
  v62 = v2;
  v63 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v58 = &v53[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5C8CD38();
  v59 = v6;
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v60 = &v53[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5C2E60C(0, &qword_1EDF3BCF8, sub_1D5C91044, sub_1D5C50B48);
  v10 = v9;
  v61 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v53[-v12];
  sub_1D5C54974();
  v15 = v14;
  v70 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v53[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C548F0();
  v20 = v19;
  sub_1D5B58B84(&qword_1EDF24C08, sub_1D5C548F0);
  v21 = v64;
  sub_1D7264B0C();
  v22 = v21;
  if (v21)
  {
LABEL_17:
    sub_1D61E4FBC(a1, v22);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v20;
  }

  v23 = v13;
  *&v64 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = sub_1D7264AFC();
  v25 = Dictionary<>.errorOnUnknownKeys.getter(v24);

  if (v25)
  {
    v26 = sub_1D726433C();
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = (v26 + 48);
      while (*v28 != 1)
      {
        v28 += 24;
        if (!--v27)
        {
          goto LABEL_7;
        }
      }

      v31 = a1;
      v32 = v18;
      v33 = v15;
      v35 = *(v28 - 2);
      v34 = *(v28 - 1);

      v20 = sub_1D662300C();
      sub_1D5E2D970();
      v22 = swift_allocError();
      *v36 = v35;
      *(v36 + 8) = v34;
      *(v36 + 16) = v20;
      *(v36 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      v37 = v32;
      a1 = v31;
      (*(v70 + 8))(v37, v33);
      goto LABEL_17;
    }

LABEL_7:
  }

  v68 = 0uLL;
  v69 = 0;
  v29 = sub_1D72642BC();
  v56 = v30;
  v55 = xmmword_1D728CF30;
  v68 = xmmword_1D728CF30;
  v69 = 0;
  if (sub_1D726434C())
  {
    v66 = v55;
    v67 = 0;
    sub_1D726431C();
    *&v55 = v29;
    v54 = v65;
  }

  else
  {
    v54 = 0;
    *&v55 = v29;
  }

  v68 = xmmword_1D7297410;
  v69 = 0;
  sub_1D5C51470();
  v38 = v64;
  sub_1D726431C();
  v39 = sub_1D725A74C();
  (*(v61 + 8))(v23, v38);
  v64 = xmmword_1D72BAA60;
  v68 = xmmword_1D72BAA60;
  v69 = 0;
  if (sub_1D726434C())
  {
    v61 = v39;
    v66 = v64;
    v67 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38);
    v40 = v59;
    v41 = v60;
    sub_1D726431C();
    v42 = v62;
    v43 = v63;
    v44 = v41;
    v45 = v40;
    v46 = v15;
    v47 = sub_1D725A74C();
    (*(v57 + 8))(v44, v45);
    v39 = v61;
  }

  else
  {
    v46 = v15;
    v47 = MEMORY[0x1E69E7CD0];
    v42 = v62;
    v43 = v63;
  }

  v64 = xmmword_1D72BAA70;
  v68 = xmmword_1D72BAA70;
  v69 = 0;
  if (sub_1D726434C())
  {
    v63 = v47;
    v66 = v64;
    v67 = 0;
    sub_1D5B58B84(&qword_1EDF3BD80, sub_1D5C2E528);
    v48 = v58;
    sub_1D726431C();
    v50 = sub_1D725A74C();
    (*(v43 + 8))(v48, v42);
    v51 = v70;
    v47 = v63;
  }

  else
  {
    v50 = MEMORY[0x1E69E7CC0];
    v51 = v70;
  }

  (*(v51 + 8))(v18, v46);
  type metadata accessor for FormatSlotNode();
  v20 = swift_allocObject();
  v52 = v56;
  *(v20 + 16) = v55;
  *(v20 + 24) = v52;
  swift_beginAccess();
  *(v20 + 32) = v54;
  swift_beginAccess();
  *(v20 + 40) = v39;
  swift_beginAccess();
  *(v20 + 48) = v47;
  swift_beginAccess();
  *(v20 + 56) = v50;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v20;
}

uint64_t sub_1D5C548C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5C54038(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1D5C548F0()
{
  if (!qword_1EDF24C00)
  {
    sub_1D5C54A08();
    sub_1D5C54A5C();
    sub_1D5C54B60();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24C00);
    }
  }
}

void sub_1D5C54974()
{
  if (!qword_1EDF19D10)
  {
    sub_1D5C548F0();
    sub_1D5B58B84(&qword_1EDF24C08, sub_1D5C548F0);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19D10);
    }
  }
}

unint64_t sub_1D5C54A08()
{
  result = qword_1EDF32408;
  if (!qword_1EDF32408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32408);
  }

  return result;
}

unint64_t sub_1D5C54A5C()
{
  result = qword_1EDF32410;
  if (!qword_1EDF32410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32410);
  }

  return result;
}

unint64_t sub_1D5C54AB4()
{
  result = qword_1EDF323F8;
  if (!qword_1EDF323F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF323F8);
  }

  return result;
}

unint64_t sub_1D5C54B0C()
{
  result = qword_1EDF32400;
  if (!qword_1EDF32400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32400);
  }

  return result;
}

unint64_t sub_1D5C54B60()
{
  result = qword_1EDF32418;
  if (!qword_1EDF32418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32418);
  }

  return result;
}

uint64_t sub_1D5C54BB4()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x726F7463656C6573;
  v4 = 0x736E6F6974706FLL;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6465646E65747865;
  if (v1 != 1)
  {
    v5 = 0x6E6572646C696863;
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

uint64_t sub_1D5C54C94(void *a1)
{
  v2 = v1;
  sub_1D5C552B8();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C5534C();
  sub_1D5B58B84(&qword_1EDF25678, sub_1D5C5534C);
  sub_1D7264B0C();
  if (v1)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v2);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v5;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1D7264AFC();
  v11 = Dictionary<>.errorOnUnknownKeys.getter(v10);

  if (v11)
  {
    v12 = sub_1D726433C();
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = (v12 + 48);
      while (*v14 != 1)
      {
        v14 += 24;
        if (!--v13)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v14 - 2);
      v18 = *(v14 - 1);

      v20 = sub_1D6624844();
      sub_1D5E2D970();
      v2 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
      goto LABEL_10;
    }

LABEL_7:
  }

  v15 = sub_1D5C31D18(v9, 0, 0, 0, sub_1D5C552B8);
  v17 = v16;
  sub_1D5B5BF78(0, &qword_1EDF1B0E8, type metadata accessor for FormatSwitchNodeCase, MEMORY[0x1E69E62F8]);
  v38 = xmmword_1D728CF30;
  LOBYTE(v39) = 0;
  sub_1D5C55690();
  sub_1D726431C();
  v22 = v36;
  type metadata accessor for FormatSwitchNodeDefault();
  v38 = xmmword_1D7297410;
  LOBYTE(v39) = 0;
  sub_1D5B58B84(&qword_1EDF26EB0, type metadata accessor for FormatSwitchNodeDefault);
  sub_1D726427C();
  v42 = v36;
  v34 = xmmword_1D72BAA60;
  v38 = xmmword_1D72BAA60;
  LOBYTE(v39) = 0;
  if (sub_1D726434C())
  {
    v36 = v34;
    v37 = 0;
    sub_1D726431C();
    v24 = v35;
  }

  else
  {
    v24 = 0;
  }

  LODWORD(v34) = v24;
  v38 = xmmword_1D72BAA70;
  LOBYTE(v39) = 0;
  v32 = sub_1D726422C();
  v33 = v25;
  v36 = xmmword_1D72BAA80;
  v37 = 0;
  sub_1D5C5C5C0();
  sub_1D726427C();
  (*(v6 + 8))(v9, v5);
  v26 = v40;
  v27 = v41;
  type metadata accessor for FormatSwitchNode();
  v31 = v38;
  v30 = v39;
  v5 = swift_allocObject();
  *(v5 + 64) = 0;
  *(v5 + 56) = 0;
  swift_beginAccess();
  *(v5 + 16) = v15;
  *(v5 + 24) = v17;
  v28 = v42;
  *(v5 + 32) = v22;
  *(v5 + 40) = v28;
  swift_beginAccess();
  *(v5 + 48) = v34;
  swift_beginAccess();
  v29 = v33;
  *(v5 + 56) = v32;
  *(v5 + 64) = v29;
  *(v5 + 88) = v30;
  *(v5 + 72) = v31;
  *(v5 + 104) = v26;
  *(v5 + 112) = v27;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

void sub_1D5C552B8()
{
  if (!qword_1EDF1A248)
  {
    sub_1D5C5534C();
    sub_1D5B58B84(&qword_1EDF25678, sub_1D5C5534C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A248);
    }
  }
}

void sub_1D5C5534C()
{
  if (!qword_1EDF25670)
  {
    sub_1D5C553FC();
    sub_1D5C55450();
    sub_1D5C55554();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25670);
    }
  }
}

uint64_t sub_1D5C553D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5C54C94(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D5C553FC()
{
  result = qword_1EDF2FD98;
  if (!qword_1EDF2FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FD98);
  }

  return result;
}

unint64_t sub_1D5C55450()
{
  result = qword_1EDF2FDA0;
  if (!qword_1EDF2FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FDA0);
  }

  return result;
}

unint64_t sub_1D5C554A8()
{
  result = qword_1EDF2FD88;
  if (!qword_1EDF2FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FD88);
  }

  return result;
}

unint64_t sub_1D5C55500()
{
  result = qword_1EDF2FD90;
  if (!qword_1EDF2FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FD90);
  }

  return result;
}

unint64_t sub_1D5C55554()
{
  result = qword_1EDF2FDA8;
  if (!qword_1EDF2FDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FDA8);
  }

  return result;
}

uint64_t sub_1D5C555A8()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 2019912806;
  if (v1 != 5)
  {
    v3 = 1885433183;
  }

  v4 = 0x73776F726874;
  if (v1 != 3)
  {
    v4 = 0x776F726874;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7365736163;
  if (v1 != 1)
  {
    v5 = 0x746C7561666564;
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

unint64_t sub_1D5C55690()
{
  result = qword_1EDF1B0E0;
  if (!qword_1EDF1B0E0)
  {
    sub_1D5B5BF78(255, &qword_1EDF1B0E8, type metadata accessor for FormatSwitchNodeCase, MEMORY[0x1E69E62F8]);
    sub_1D5B58B84(&qword_1EDF2AA38, type metadata accessor for FormatSwitchNodeCase);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B0E0);
  }

  return result;
}

uint64_t sub_1D5C55768(void *a1)
{
  v2 = v1;
  sub_1D5C2E60C(0, &qword_1EDF3BCF8, sub_1D5C91044, sub_1D5C50B48);
  v30 = v4;
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v27 - v6;
  sub_1D5C55C7C();
  v9 = v8;
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C55BF8();
  sub_1D5B58B84(&qword_1EDF25368, sub_1D5C55BF8);
  sub_1D7264B0C();
  if (v1)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v2);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v13;
  }

  v14 = v29;
  v15 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v16 = sub_1D7264AFC();
  LOBYTE(v15) = Dictionary<>.errorOnUnknownKeys.getter(v16);

  v17 = v30;
  if (v15)
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
      v13 = *(v20 - 1);

      v23 = sub_1D6627E68(0x6973736572707865, 0xEA00000000006E6FLL, 0x6E6572646C696863, 0xE800000000000000);
      sub_1D5E2D970();
      v2 = swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v13;
      *(v24 + 16) = v23;
      *(v24 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v14 + 8))(v12, v9);
      a1 = v27;
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C55EBC();
  v31 = 0uLL;
  v32 = 0;
  sub_1D726431C();
  v21 = v33;
  v31 = xmmword_1D728CF30;
  v32 = 0;
  sub_1D5C51470();
  sub_1D726431C();
  v26 = sub_1D725A74C();
  (*(v28 + 8))(v7, v17);
  (*(v14 + 8))(v12, v9);
  type metadata accessor for FormatSwitchNodeCase();
  v13 = swift_allocObject();
  *(v13 + 16) = v21;
  swift_beginAccess();
  *(v13 + 24) = v26;
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v13;
}

uint64_t sub_1D5C55BCC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5C55768(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1D5C55BF8()
{
  if (!qword_1EDF25360)
  {
    sub_1D5C55D10();
    sub_1D5C55D64();
    sub_1D5C55E68();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25360);
    }
  }
}

void sub_1D5C55C7C()
{
  if (!qword_1EDF1A0C0)
  {
    sub_1D5C55BF8();
    sub_1D5B58B84(&qword_1EDF25368, sub_1D5C55BF8);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A0C0);
    }
  }
}

unint64_t sub_1D5C55D10()
{
  result = qword_1EDF2AA58;
  if (!qword_1EDF2AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2AA58);
  }

  return result;
}

unint64_t sub_1D5C55D64()
{
  result = qword_1EDF2AA50;
  if (!qword_1EDF2AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2AA50);
  }

  return result;
}

unint64_t sub_1D5C55DBC()
{
  result = qword_1EDF2AA40;
  if (!qword_1EDF2AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2AA40);
  }

  return result;
}

unint64_t sub_1D5C55E14()
{
  result = qword_1EDF2AA48;
  if (!qword_1EDF2AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2AA48);
  }

  return result;
}

unint64_t sub_1D5C55E68()
{
  result = qword_1EDF2AA60;
  if (!qword_1EDF2AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2AA60);
  }

  return result;
}

unint64_t sub_1D5C55EBC()
{
  result = qword_1EDF304E0;
  if (!qword_1EDF304E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF304E0);
  }

  return result;
}

uint64_t sub_1D5C55F10()
{
  v1 = 0x6E6572646C696863;
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
    return 0x6973736572707865;
  }
}

uint64_t sub_1D5C55F68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x72 && *(a1 + 8))
  {
    return (*a1 + 114);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x71)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D5C55FB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x71)
  {
    *result = a2 - 114;
    if (a3 >= 0x72)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x72)
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

uint64_t FormatExpression.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v75 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v67 - v9;
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
    v11 = v7;
    v12 = v75;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    v15 = v10;
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
          v3 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F5114C38;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C56C7C();
    *v69 = 0uLL;
    sub_1D726431C();
    v24 = v12;
    switch(v74)
    {
      case 1:
        v74 = xmmword_1D7279980;
        sub_1D5C576C4();
        sub_1D726431C();
        (*(v11 + 8))(v15, v6);
        v47 = v70;
        v67 = *&v69[16];
        v68 = *v69;
        v48 = swift_allocObject();
        v49 = v67;
        *(v48 + 16) = v68;
        *(v48 + 32) = v49;
        *(v48 + 48) = v47;
        v26 = v48 | 0x1000000000000000;
        break;
      case 2:
        *v69 = xmmword_1D7279980;
        sub_1D5C5FD84();
        sub_1D726431C();
        (*(v11 + 8))(v15, v6);
        v37 = v74;
        v38 = BYTE8(v74);
        v39 = swift_allocObject();
        *(v39 + 16) = v37;
        *(v39 + 24) = v38;
        v26 = v39 | 0x2000000000000000;
        break;
      case 3:
        v74 = xmmword_1D7279980;
        sub_1D5CB7230();
        sub_1D726431C();
        (*(v11 + 8))(v15, v6);
        v40 = *v69;
        v41 = a1;
        v42 = *&v69[24];
        v43 = v70;
        v68 = *&v69[8];
        v44 = swift_allocObject();
        *(v44 + 16) = v40;
        *(v44 + 24) = v68;
        *(v44 + 40) = v42;
        *(v44 + 48) = v43;
        a1 = v41;
        v26 = v44 | 0x3000000000000000;
        break;
      case 4:
        v74 = xmmword_1D7279980;
        sub_1D5C96924();
        sub_1D726431C();
        (*(v11 + 8))(v15, v6);
        v61 = swift_allocObject();
        v62 = v73[0];
        *(v61 + 80) = v72;
        *(v61 + 96) = v62;
        *(v61 + 107) = *(v73 + 11);
        v63 = *&v69[16];
        *(v61 + 16) = *v69;
        *(v61 + 32) = v63;
        v64 = v71;
        *(v61 + 48) = v70;
        *(v61 + 64) = v64;
        v26 = v61 | 0x4000000000000000;
        break;
      case 5:
        v74 = xmmword_1D7279980;
        sub_1D5C5F698();
        sub_1D726431C();
        (*(v11 + 8))(v15, v6);
        v50 = *v69;
        v51 = swift_allocObject();
        *(v51 + 16) = v50;
        v26 = v51 | 0x5000000000000000;
        break;
      case 6:
        v74 = xmmword_1D7279980;
        sub_1D5EBE5E0();
        sub_1D726431C();
        (*(v11 + 8))(v15, v6);
        v54 = *v69;
        v55 = swift_allocObject();
        *(v55 + 16) = v54;
        v26 = v55 | 0x6000000000000000;
        break;
      case 7:
        *v69 = xmmword_1D7279980;
        sub_1D5C79000();
        sub_1D726431C();
        (*(v11 + 8))(v15, v6);
        v45 = v74;
        v46 = swift_allocObject();
        *(v46 + 16) = v45;
        v26 = v46 | 0x7000000000000000;
        break;
      case 8:
        v74 = xmmword_1D7279980;
        sub_1D5C56F50();
        sub_1D726431C();
        (*(v11 + 8))(v15, v6);
        v65 = *v69;
        v66 = swift_allocObject();
        *(v66 + 16) = v65;
        v26 = v66 | 0x8000000000000000;
        break;
      case 9:
        v74 = xmmword_1D7279980;
        sub_1D5C5C660();
        sub_1D726431C();
        (*(v11 + 8))(v15, v6);
        v35 = *v69;
        v36 = swift_allocObject();
        *(v36 + 16) = v35;
        v26 = v36 | 0x9000000000000000;
        break;
      case 10:
        *v69 = xmmword_1D7279980;
        sub_1D5C97E4C();
        sub_1D726431C();
        (*(v11 + 8))(v15, v6);
        v56 = v74;
        v57 = WORD4(v74);
        v58 = a1;
        v59 = BYTE10(v74);
        v60 = swift_allocObject();
        *(v60 + 16) = v56;
        *(v60 + 24) = v57;
        *(v60 + 26) = v59;
        a1 = v58;
        v26 = v60 | 0xA000000000000000;
        break;
      case 11:
        *v69 = xmmword_1D7279980;
        sub_1D66871A8();
        sub_1D726431C();
        (*(v11 + 8))(v15, v6);
        v29 = v74;
        v30 = swift_allocObject();
        *(v30 + 16) = v29;
        v26 = v30 | 0xB000000000000000;
        break;
      case 12:
        v74 = xmmword_1D7279980;
        sub_1D6687154();
        sub_1D726431C();
        (*(v11 + 8))(v15, v6);
        v67 = *&v69[16];
        v68 = *v69;
        v31 = v70;
        v32 = BYTE8(v70);
        v33 = swift_allocObject();
        v34 = v67;
        *(v33 + 16) = v68;
        *(v33 + 32) = v34;
        *(v33 + 48) = v31;
        *(v33 + 56) = v32;
        v26 = v33 | 0xC000000000000000;
        break;
      case 13:
        v74 = xmmword_1D7279980;
        sub_1D5C9B0CC();
        sub_1D726431C();
        (*(v11 + 8))(v15, v6);
        v52 = *v69;
        v68 = *&v69[8];
        v53 = swift_allocObject();
        *(v53 + 16) = v52;
        *(v53 + 24) = v68;
        v26 = v53 | 0xD000000000000000;
        break;
      case 14:
        v74 = xmmword_1D7279980;
        sub_1D66870B0();
        sub_1D726431C();
        (*(v11 + 8))(v15, v6);
        v27 = *v69;
        v28 = swift_allocObject();
        *(v28 + 16) = v27;
        v26 = v28 | 0xE000000000000000;
        break;
      default:
        *v69 = xmmword_1D7279980;
        sub_1D5CC8F98();
        sub_1D726427C();
        (*(v11 + 8))(v15, v6);
        if (v74 == 4)
        {
          v25 = 3;
        }

        else
        {
          v25 = v74;
        }

        v26 = swift_allocObject();
        *(v26 + 16) = v25;
        break;
    }

    *v24 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5C56B0C()
{

  sub_1D6057D74(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1D5C56B54()
{
  sub_1D66871FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120) | (*(v0 + 122) << 16));

  return swift_deallocObject();
}

uint64_t sub_1D5C56BC0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C56C08()
{
  sub_1D60576D0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

unint64_t sub_1D5C56C7C()
{
  result = qword_1EDF304E8;
  if (!qword_1EDF304E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF304E8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FormatBlurEffectStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D5C56DE8()
{
  result = qword_1EDF304F0;
  if (!qword_1EDF304F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF304F0);
  }

  return result;
}

uint64_t sub_1D5C56E3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C56E6C();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C56E6C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for FormatBlurEffectStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1D5C56F50()
{
  result = qword_1EDF2CCA8;
  if (!qword_1EDF2CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CCA8);
  }

  return result;
}

uint64_t sub_1D5C56FA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x71)
  {
    *result = a2 - 114;
    *(result + 8) = 0;
    if (a3 >= 0x72)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x72)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D5C56FF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x72 && *(a1 + 16))
  {
    return (*a1 + 114);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x71)
  {
    v3 = -1;
  }

  return v3 + 1;
}

void sub_1D5C57044()
{
  if (!qword_1EDF25510)
  {
    sub_1D5C574C4();
    sub_1D5C57518();
    sub_1D5C5761C();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25510);
    }
  }
}

uint64_t FormatAndExpression.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  sub_1D5C57418();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C57044();
  sub_1D5B58B84(&qword_1EDF25518, sub_1D5C57044);
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

  v13 = v26;
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

      v21 = sub_1D6627E68(0x657270784573686CLL, 0xED00006E6F697373, 0x6572707845736872, 0xED00006E6F697373);
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

  sub_1D5C55EBC();
  v27 = 0uLL;
  v28 = 0;
  sub_1D726431C();
  v18 = v29;
  v27 = xmmword_1D728CF30;
  v28 = 0;
  sub_1D726431C();
  (*(v14 + 8))(v10, v6);
  v24 = v29;
  *v13 = v18;
  v13[1] = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C57418()
{
  if (!qword_1EDF1A198)
  {
    sub_1D5C57044();
    sub_1D5B58B84(&qword_1EDF25518, sub_1D5C57044);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A198);
    }
  }
}

unint64_t sub_1D5C574C4()
{
  result = qword_1EDF2CCC0;
  if (!qword_1EDF2CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CCC0);
  }

  return result;
}

unint64_t sub_1D5C57518()
{
  result = qword_1EDF2CCC8;
  if (!qword_1EDF2CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CCC8);
  }

  return result;
}

unint64_t sub_1D5C57570()
{
  result = qword_1EDF2CCB0;
  if (!qword_1EDF2CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CCB0);
  }

  return result;
}

unint64_t sub_1D5C575C8()
{
  result = qword_1EDF2CCB8;
  if (!qword_1EDF2CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CCB8);
  }

  return result;
}

unint64_t sub_1D5C5761C()
{
  result = qword_1EDF2CCD0;
  if (!qword_1EDF2CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CCD0);
  }

  return result;
}

uint64_t sub_1D5C57674()
{
  v1 = 0x6572707845736872;
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
    return 0x657270784573686CLL;
  }
}

unint64_t sub_1D5C576C4()
{
  result = qword_1EDF28328;
  if (!qword_1EDF28328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28328);
  }

  return result;
}

uint64_t sub_1D5C57718(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FF && *(a1 + 34))
  {
    return (*a1 + 2047);
  }

  v3 = (*(a1 + 32) & 0xFE | (*(a1 + 32) >> 15) | (*(a1 + 32) >> 4) & 0x700) ^ 0x7FF;
  if (v3 >= 0x7FE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D5C57774(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 2047;
    *(result + 8) = 0;
    if (a3 >= 0x7FF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x3FF) - (a2 << 10);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (32 * v3) & 0xF000 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

void FormatOptionExpression.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B68374(a1, v11);
  FormatOptionExpression.Compare.init(from:)(v11, &v12);
  if (v2)
  {
    sub_1D5B68374(a1, v11);
    FormatOptionExpression.Exists.init(from:)(v11, &v12);
    __swift_destroy_boxed_opaque_existential_1(a1);

    v5 = 0;
    v6 = v12;
    v7 = v13;
    v8 = 256;
    if (!BYTE1(v14))
    {
      v8 = 0;
    }

    v9 = v8 | v14;
    v10 = 0x8000;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v6 = v12;
    v7 = v13;
    v9 = v14;
    v5 = v15;
    v10 = v16 | (v17 << 8);
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v5;
  *(a2 + 32) = v10;
}

uint64_t FormatOptionExpression.Compare.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5C57B9C(0, &qword_1EDF19C00, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C57C00();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v24[0]) = 0;
  v12 = sub_1D72642BC();
  v14 = v13;
  sub_1D5B68374(a1, v24);
  FormatOptionCompareValue.init(from:)(v24, v25);
  v21 = v25[0];
  v22 = v25[1];
  v23 = v14;
  v27 = v26;
  LOBYTE(v25[0]) = 2;
  sub_1D5C5813C();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v15 = v24[0];
  if (LOBYTE(v24[0]) == 12)
  {
    v15 = 0;
  }

  v16 = v27;
  v18 = v22;
  v17 = v23;
  *a2 = v12;
  *(a2 + 8) = v17;
  v19 = v21;
  *(a2 + 16) = v21;
  *(a2 + 24) = v18;
  *(a2 + 32) = v16;
  *(a2 + 33) = v15;

  sub_1D5C58190(v19, v18, v16);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_1D5C581A4(v19, v18, v16);
}

void sub_1D5C57B9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5C57C00();
    v7 = a3(a1, &type metadata for FormatOptionExpression.Compare.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5C57C00()
{
  result = qword_1EDF28340;
  if (!qword_1EDF28340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28340);
  }

  return result;
}

unint64_t sub_1D5C57C58()
{
  result = qword_1EDF28330;
  if (!qword_1EDF28330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28330);
  }

  return result;
}

unint64_t sub_1D5C57CB0()
{
  result = qword_1EDF28338;
  if (!qword_1EDF28338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28338);
  }

  return result;
}

uint64_t sub_1D5C57D04()
{
  v1 = 0x696669746E656469;
  v2 = 0x726F74617265706FLL;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6974706FLL;
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

uint64_t FormatOptionCompareValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5C57FA0(0, &qword_1EDF19BF0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C58004();
  sub_1D7264B0C();
  if (!v2)
  {
    v13 = 0;
    sub_1D5C8DE68();
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C57FA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5C58004();
    v7 = a3(a1, &type metadata for FormatOptionCompareValue.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5C58004()
{
  result = qword_1EDF25D20;
  if (!qword_1EDF25D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25D20);
  }

  return result;
}

unint64_t sub_1D5C5805C()
{
  result = qword_1EDF25D10;
  if (!qword_1EDF25D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25D10);
  }

  return result;
}

unint64_t sub_1D5C580B4()
{
  result = qword_1EDF25D18;
  if (!qword_1EDF25D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25D18);
  }

  return result;
}

uint64_t sub_1D5C58108()
{
  if (*v0)
  {
    return 0x6E6F6974706FLL;
  }

  else
  {
    return 0x65756C6176;
  }
}

unint64_t sub_1D5C5813C()
{
  result = qword_1EDF32468;
  if (!qword_1EDF32468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32468);
  }

  return result;
}

uint64_t sub_1D5C58190(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1D5C581A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1D5C581DC(void *a1)
{
  sub_1D5C2E60C(0, &qword_1EDF3BCF8, sub_1D5C91044, sub_1D5C50B48);
  v50 = v2;
  v48 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v43 - v4;
  sub_1D5C2E60C(0, &qword_1EDF3BC20, sub_1D5C588A4, sub_1D5C588F8);
  v59 = v6;
  v49 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v43 - v8;
  sub_1D5C5894C();
  v11 = v10;
  *&v51 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C589E0();
  sub_1D5B58B84(&qword_1EDF25618, sub_1D5C589E0);
  v15 = v52;
  sub_1D7264B0C();
  v16 = v15;
  if (v15)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v16);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v16;
  }

  *&v52 = v9;
  v47 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_1D7264AFC();
  v18 = Dictionary<>.errorOnUnknownKeys.getter(v17);

  v19 = v59;
  if (v18)
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

      v28 = *(v22 - 2);
      v27 = *(v22 - 1);

      v29 = sub_1D662023C();
      sub_1D5E2D970();
      v30 = swift_allocError();
      *v31 = v28;
      *(v31 + 8) = v27;
      *(v31 + 16) = v29;
      v16 = v30;
      *(v31 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v51 + 8))(v14, v11);
      goto LABEL_10;
    }

LABEL_7:
  }

  v23 = sub_1D5C31D18(v14, 0, 0, 0, sub_1D5C5894C);
  v46 = v24;
  v55 = xmmword_1D728CF30;
  LOBYTE(v56) = 0;
  sub_1D5C58CA0();
  v25 = v52;
  sub_1D726431C();
  v26 = v51;
  v44 = v23;
  v45 = sub_1D725A74C();
  (*(v49 + 8))(v25, v19);
  v55 = xmmword_1D7297410;
  LOBYTE(v56) = 0;
  sub_1D5C51470();
  v33 = v47;
  v34 = v50;
  sub_1D726431C();
  v35 = v45;
  v36 = sub_1D725A74C();
  v37 = v33;
  v38 = v36;
  (*(v48 + 8))(v37, v34);
  v53 = xmmword_1D72BAA60;
  v54 = 0;
  sub_1D5C5C5C0();
  sub_1D726427C();
  (*(v26 + 8))(v14, v11);
  v39 = v57;
  v40 = v58;
  type metadata accessor for FormatOptionsNode();
  v51 = v56;
  v52 = v55;
  v16 = swift_allocObject();
  swift_beginAccess();
  v41 = v46;
  *(v16 + 16) = v44;
  *(v16 + 24) = v41;
  swift_beginAccess();
  *(v16 + 32) = v35;
  swift_beginAccess();
  *(v16 + 40) = v38;
  v42 = v51;
  *(v16 + 48) = v52;
  *(v16 + 64) = v42;
  *(v16 + 80) = v39;
  *(v16 + 88) = v40;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v16;
}

uint64_t sub_1D5C58878@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5C581DC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D5C588A4()
{
  result = qword_1EDF232B0;
  if (!qword_1EDF232B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF232B0);
  }

  return result;
}

unint64_t sub_1D5C588F8()
{
  result = qword_1EDF232B8;
  if (!qword_1EDF232B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF232B8);
  }

  return result;
}

void sub_1D5C5894C()
{
  if (!qword_1EDF1A218)
  {
    sub_1D5C589E0();
    sub_1D5B58B84(&qword_1EDF25618, sub_1D5C589E0);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A218);
    }
  }
}

void sub_1D5C589E0()
{
  if (!qword_1EDF25610)
  {
    sub_1D5C58A64();
    sub_1D5C58AB8();
    sub_1D5C58BBC();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25610);
    }
  }
}

unint64_t sub_1D5C58A64()
{
  result = qword_1EDF2F308;
  if (!qword_1EDF2F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F308);
  }

  return result;
}

unint64_t sub_1D5C58AB8()
{
  result = qword_1EDF2F310;
  if (!qword_1EDF2F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F310);
  }

  return result;
}

unint64_t sub_1D5C58B10()
{
  result = qword_1EDF2F2F8;
  if (!qword_1EDF2F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F2F8);
  }

  return result;
}

unint64_t sub_1D5C58B68()
{
  result = qword_1EDF2F300;
  if (!qword_1EDF2F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F300);
  }

  return result;
}

unint64_t sub_1D5C58BBC()
{
  result = qword_1EDF2F318;
  if (!qword_1EDF2F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F318);
  }

  return result;
}

uint64_t sub_1D5C58C10()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6E6572646C696863;
  v4 = 2019912806;
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
    v2 = 0x6E656D6574617473;
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

unint64_t sub_1D5C58CA0()
{
  result = qword_1EDF3BC28;
  if (!qword_1EDF3BC28)
  {
    sub_1D5C2E60C(255, &qword_1EDF3BC20, sub_1D5C588A4, sub_1D5C588F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BC28);
  }

  return result;
}

uint64_t FormatOptionsNodeStatement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  sub_1D5C2E60C(0, &qword_1EDF3BB98, sub_1D5C59290, sub_1D5C592E4);
  v6 = v5;
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v37 - v8;
  sub_1D5C59338();
  v42 = v10;
  v54 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C593CC();
  sub_1D5B58B84(&qword_1EDF24FD8, sub_1D5C593CC);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    v29 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v39 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1D7264AFC();
  v15 = Dictionary<>.errorOnUnknownKeys.getter(v14);

  v16 = v42;
  v17 = v13;
  if (v15)
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

      v26 = *(v20 - 2);
      v25 = *(v20 - 1);

      v27 = sub_1D6620414();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v28 = v26;
      *(v28 + 8) = v25;
      *(v28 + 16) = v27;
      *(v28 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v54 + 8))(v17, v16);
      goto LABEL_10;
    }

LABEL_7:
  }

  v51 = 0uLL;
  LOBYTE(v52) = 0;
  v21 = sub_1D72642BC();
  v23 = v22;
  v49[2] = xmmword_1D728CF30;
  v50 = 0;
  sub_1D5C59674();
  sub_1D726431C();
  v24 = v54;
  v38 = a1;
  v47 = v51;
  v48 = v52;
  v49[0] = *v53;
  *(v49 + 15) = *&v53[15];
  v37 = xmmword_1D7297410;
  v45 = xmmword_1D7297410;
  v46 = 0;
  if (sub_1D726434C())
  {
    v43 = v37;
    v44 = 0;
    sub_1D66A78A0();
    v31 = v39;
    sub_1D726431C();
    v32 = v41;
    *&v37 = v23;
    v33 = v17;
    v34 = sub_1D725A74C();
    (*(v40 + 8))(v31, v6);
  }

  else
  {
    *&v37 = v23;
    v33 = v17;
    v34 = MEMORY[0x1E69E7CC0];
    v32 = v41;
  }

  (*(v24 + 8))(v33, v16);
  v35 = v37;
  *v32 = v21;
  *(v32 + 8) = v35;
  v36 = v48;
  *(v32 + 16) = v47;
  *(v32 + 32) = v36;
  *(v32 + 48) = v49[0];
  *(v32 + 63) = *(v49 + 15);
  *(v32 + 67) = v43;
  *(v32 + 71) = BYTE4(v43);
  *(v32 + 72) = v34;
  v29 = v38;
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

unint64_t sub_1D5C59290()
{
  result = qword_1EDF1DD60;
  if (!qword_1EDF1DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1DD60);
  }

  return result;
}

unint64_t sub_1D5C592E4()
{
  result = qword_1EDF1DD68[0];
  if (!qword_1EDF1DD68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF1DD68);
  }

  return result;
}

void sub_1D5C59338()
{
  if (!qword_1EDF19EF8)
  {
    sub_1D5C593CC();
    sub_1D5B58B84(&qword_1EDF24FD8, sub_1D5C593CC);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19EF8);
    }
  }
}

void sub_1D5C593CC()
{
  if (!qword_1EDF24FD0)
  {
    sub_1D5C59450();
    sub_1D5C594A4();
    sub_1D5C595A8();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24FD0);
    }
  }
}

unint64_t sub_1D5C59450()
{
  result = qword_1EDF232D0;
  if (!qword_1EDF232D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF232D0);
  }

  return result;
}

unint64_t sub_1D5C594A4()
{
  result = qword_1EDF232D8;
  if (!qword_1EDF232D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF232D8);
  }

  return result;
}

unint64_t sub_1D5C594FC()
{
  result = qword_1EDF232C0;
  if (!qword_1EDF232C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF232C0);
  }

  return result;
}

unint64_t sub_1D5C59554()
{
  result = qword_1EDF232C8;
  if (!qword_1EDF232C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF232C8);
  }

  return result;
}

unint64_t sub_1D5C595A8()
{
  result = qword_1EDF232E0;
  if (!qword_1EDF232E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF232E0);
  }

  return result;
}

uint64_t sub_1D5C595FC()
{
  v1 = 0x696669746E656469;
  v2 = 0x7265696669646F6DLL;
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

unint64_t sub_1D5C59674()
{
  result = qword_1EDF1F878;
  if (!qword_1EDF1F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F878);
  }

  return result;
}

uint64_t sub_1D5C596C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3F7)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 1016;
    if (a3 >= 0x3F8)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F8)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = (-a2 & 3) << 11;
      *(result + 50) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_1D5C59738(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F8 && *(a1 + 51))
  {
    return (*a1 + 1016);
  }

  v3 = ((*(a1 + 48) >> 11) & 3 | (4 * *(a1 + 50))) ^ 0x3FF;
  if (v3 >= 0x3F7)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t FormatOptionsNodeStatementValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  sub_1D5C5A148(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v50 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v37 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
    v9 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  v10 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v11 = sub_1D7264AFC();
  LOBYTE(v10) = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v12 = v50;
  v13 = v5;
  v14 = v8;
  if (v10)
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
        swift_allocError();
        *v21 = v20;
        *(v21 + 8) = v19;
        *(v21 + 16) = &unk_1F5118BF0;
        *(v21 + 24) = xmmword_1D72874E0;
        swift_willThrow();
        (*(v12 + 8))(v8, v5);
        v9 = v38;
        return __swift_destroy_boxed_opaque_existential_1(v9);
      }
    }
  }

  sub_1D5C5A1B0();
  v47 = 0;
  v48 = 0;
  sub_1D726431C();
  if (v49 <= 3u)
  {
    if (v49 > 1u)
    {
      if (v49 != 2)
      {
        v43[0] = xmmword_1D7279980;
        sub_1D6067A14();
        sub_1D726431C();
        v31 = v39;
        (*(v12 + 8))(v8, v13);
        v28 = 0;
        v23 = *(&v45 + 1);
        v27 = v45;
        v29 = 6144;
        v24 = v46[0];
LABEL_29:
        v9 = v38;
        *v31 = v27;
        *(v31 + 8) = v23;
        *(v31 + 16) = v24;
        *(v31 + 24) = v26;
        *(v31 + 40) = v25;
        *(v31 + 48) = v29;
        *(v31 + 50) = v28;
        return __swift_destroy_boxed_opaque_existential_1(v9);
      }

      sub_1D5C71DC8();
      v45 = xmmword_1D7279980;
      sub_1D5B57420(&qword_1EDF33F30, sub_1D5C71DC8);
      sub_1D726431C();
      (*(v12 + 8))(v8, v5);
      v28 = 0;
      v27 = *&v43[0];
      v29 = 2048;
    }

    else if (v49)
    {
      sub_1D5C5A334();
      v45 = xmmword_1D7279980;
      sub_1D5B57420(&qword_1EDF33F20, sub_1D5C5A334);
      sub_1D726431C();
      (*(v12 + 8))(v8, v5);
      v29 = 0;
      v28 = 0;
      v27 = *&v43[0];
    }

    else
    {
      v43[0] = xmmword_1D7279980;
      sub_1D6D1C018();
      sub_1D726431C();
      (*(v12 + 8))(v8, v5);
      v23 = *(&v45 + 1);
      v27 = v45;
      v26 = *&v46[8];
      v24 = *v46;
      v25 = *&v46[24];
      v29 = *&v46[32] & 0xE7FF;
      v28 = 1;
    }

LABEL_28:
    v31 = v39;
    goto LABEL_29;
  }

  if (v49 > 5u)
  {
    if (v49 == 6)
    {
      v43[0] = xmmword_1D7279980;
      sub_1D5CC6C48();
      sub_1D726431C();
      (*(v12 + 8))(v8, v5);
      v23 = *(&v45 + 1);
      v27 = v45;
      v24 = *v46;
      v28 = 1;
      v29 = 2048;
      v26 = *&v46[8];
    }

    else
    {
      v45 = xmmword_1D7279980;
      if (v49 == 7)
      {
        sub_1D60344C0();
        sub_1D726431C();
        (*(v12 + 8))(v8, v5);
        v27 = *&v43[0];
        v28 = 1;
        v29 = 4096;
      }

      else
      {
        sub_1D5CA2FA0();
        sub_1D726431C();
        (*(v12 + 8))(v8, v5);
        v27 = *&v43[0];
        v28 = 1;
        v29 = 6144;
      }
    }

    goto LABEL_28;
  }

  if (v49 != 4)
  {
    v43[0] = xmmword_1D7279980;
    sub_1D667CF44();
    sub_1D726431C();
    (*(v12 + 8))(v8, v5);
    v28 = 0;
    v23 = *(&v45 + 1);
    v27 = v45;
    v26 = *&v46[8];
    v24 = *v46;
    v25 = *&v46[24];
    v29 = *&v46[32] & 0xE7FF | 0x1000;
    goto LABEL_28;
  }

  sub_1D5C5A148(0, &qword_1EDF2ED78, sub_1D62B64C0, &type metadata for FormatOptionsNodeStatementValue, type metadata accessor for FormatSwitchValue);
  v44[2] = xmmword_1D7279980;
  sub_1D6D1BE08();
  sub_1D726431C();
  v43[0] = v45;
  v43[1] = *v46;
  v44[0] = *&v46[16];
  *(v44 + 11) = *&v46[27];
  v27 = swift_allocObject();
  v30 = *v46;
  v27[1] = v45;
  v27[2] = v30;
  v27[3] = *&v46[16];
  *(v27 + 59) = *&v46[27];
  v40[8] = v27;
  v41 = 0;
  v42 = 2;
  sub_1D6D1C57C(v43, v40, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
  if (*(sub_1D6D1A9C8() + 16) == 1)
  {
    (*(v12 + 8))(v14, v5);

    sub_1D6D1A3E8(v43, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
    v29 = 0;
    v28 = 2;
    goto LABEL_28;
  }

  sub_1D5E2A458();
  v32 = sub_1D7262B1C();
  v33 = v12;
  v35 = v34;

  sub_1D5E2D970();
  swift_allocError();
  *v36 = v32;
  v36[1] = v35;
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = 0x3000000000000000;
  swift_willThrow();
  sub_1D6D1A3E8(v43, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
  (*(v33 + 8))(v14, v13);
  __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t sub_1D5C5A078()
{

  sub_1D6D1BE98(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 74));

  return swift_deallocObject();
}

void sub_1D5C5A0E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D5C5A148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D5C5A1B0()
{
  result = qword_1EDF1F8A0;
  if (!qword_1EDF1F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F8A0);
  }

  return result;
}

unint64_t sub_1D5C5A264()
{
  result = qword_1EDF1F8A8;
  if (!qword_1EDF1F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F8A8);
  }

  return result;
}

uint64_t sub_1D5C5A2B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C5A2E8();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C5A2E8()
{
  v0 = sub_1D72641CC();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

void sub_1D5C5A334()
{
  if (!qword_1EDF33F18)
  {
    sub_1D5C30060(255, &qword_1EDF32838, sub_1D5C5A3D0, &type metadata for FormatInteger, type metadata accessor for FormatEquation);
    sub_1D5C5A5B4();
    v0 = type metadata accessor for FormatValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF33F18);
    }
  }
}

unint64_t sub_1D5C5A3D0()
{
  result = qword_1EDF331E0;
  if (!qword_1EDF331E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF331E0);
  }

  return result;
}

unint64_t sub_1D5C5A424(void *a1)
{
  a1[1] = sub_1D5C5A464();
  a1[2] = sub_1D5C5A4B8();
  a1[3] = sub_1D5C5A50C();
  result = sub_1D5C5A560();
  a1[4] = result;
  return result;
}

unint64_t sub_1D5C5A464()
{
  result = qword_1EDF331E8;
  if (!qword_1EDF331E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF331E8);
  }

  return result;
}

unint64_t sub_1D5C5A4B8()
{
  result = qword_1EDF331F0;
  if (!qword_1EDF331F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF331F0);
  }

  return result;
}

unint64_t sub_1D5C5A50C()
{
  result = qword_1EDF33200;
  if (!qword_1EDF33200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33200);
  }

  return result;
}

unint64_t sub_1D5C5A560()
{
  result = qword_1EDF331F8;
  if (!qword_1EDF331F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF331F8);
  }

  return result;
}

unint64_t sub_1D5C5A5B4()
{
  result = qword_1EDF32850;
  if (!qword_1EDF32850)
  {
    sub_1D5C30060(255, &qword_1EDF32838, sub_1D5C5A3D0, &type metadata for FormatInteger, type metadata accessor for FormatEquation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32850);
  }

  return result;
}

uint64_t sub_1D5C5A644(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t FormatEquation.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v21 = a4;
  v22 = a3;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v20 - v12;
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_1D7264AEC();
  if (!v4)
  {
    v20[1] = v7;
    v20[2] = v13;
    v20[0] = v9;
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    v15 = sub_1D72646FC();
    FormatEquation.init(value:)(v15, v16, a2, v22, &v24);
    v17 = v21;
    v18 = v24;
    __swift_destroy_boxed_opaque_existential_1(v23);
    *v17 = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t storeEnumTagSinglePayload for FormatCountLimit.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t FormatInteger.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v64, v65);
    v6 = sub_1D726471C();
    __swift_destroy_boxed_opaque_existential_1(v64);
    v7 = 0;
    v8 = 0;
LABEL_89:
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  __swift_project_boxed_opaque_existential_1(v64, v65);
  result = sub_1D72646FC();
  v9 = result;
  v11 = v10;
  v12 = HIBYTE(v10) & 0xF;
  v13 = result & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    if ((v11 & 0x1000000000000000) == 0)
    {
      if ((v11 & 0x2000000000000000) != 0)
      {
        v62 = result;
        v63 = v11 & 0xFFFFFFFFFFFFFFLL;
        if (result == 43)
        {
          if (v12)
          {
            if (--v12)
            {
              v6 = 0;
              v25 = &v62 + 1;
              while (1)
              {
                v26 = *v25 - 48;
                if (v26 > 9)
                {
                  break;
                }

                v27 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  break;
                }

                v6 = v27 + v26;
                if (__OFADD__(v27, v26))
                {
                  break;
                }

                ++v25;
                if (!--v12)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        if (result != 45)
        {
          if (v12)
          {
            v6 = 0;
            v30 = &v62;
            while (1)
            {
              v31 = *v30 - 48;
              if (v31 > 9)
              {
                break;
              }

              v32 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v32 + v31;
              if (__OFADD__(v32, v31))
              {
                break;
              }

              v30 = (v30 + 1);
              if (!--v12)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

        if (v12)
        {
          if (--v12)
          {
            v6 = 0;
            v19 = &v62 + 1;
            while (1)
            {
              v20 = *v19 - 48;
              if (v20 > 9)
              {
                break;
              }

              v21 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v21 - v20;
              if (__OFSUB__(v21, v20))
              {
                break;
              }

              ++v19;
              if (!--v12)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }
      }

      else
      {
        if ((result & 0x1000000000000000) != 0)
        {
          result = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          result = sub_1D7263E5C();
        }

        v15 = *result;
        if (v15 == 43)
        {
          if (v13 >= 1)
          {
            v12 = v13 - 1;
            if (v13 != 1)
            {
              v6 = 0;
              if (result)
              {
                v22 = (result + 1);
                while (1)
                {
                  v23 = *v22 - 48;
                  if (v23 > 9)
                  {
                    goto LABEL_63;
                  }

                  v24 = 10 * v6;
                  if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v6 = v24 + v23;
                  if (__OFADD__(v24, v23))
                  {
                    goto LABEL_63;
                  }

                  ++v22;
                  if (!--v12)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_55;
            }

            goto LABEL_63;
          }

          goto LABEL_94;
        }

        if (v15 != 45)
        {
          if (v13)
          {
            v6 = 0;
            if (result)
            {
              while (1)
              {
                v28 = *result - 48;
                if (v28 > 9)
                {
                  goto LABEL_63;
                }

                v29 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_63;
                }

                v6 = v29 + v28;
                if (__OFADD__(v29, v28))
                {
                  goto LABEL_63;
                }

                ++result;
                if (!--v13)
                {
                  goto LABEL_55;
                }
              }
            }

            goto LABEL_55;
          }

LABEL_63:
          v6 = 0;
          LOBYTE(v12) = 1;
LABEL_64:
          v66 = v12;
          if (v12)
          {
            goto LABEL_65;
          }

LABEL_87:

          v7 = 0;
          v8 = 0;
          goto LABEL_88;
        }

        if (v13 >= 1)
        {
          v12 = v13 - 1;
          if (v13 != 1)
          {
            v6 = 0;
            if (result)
            {
              v16 = (result + 1);
              while (1)
              {
                v17 = *v16 - 48;
                if (v17 > 9)
                {
                  goto LABEL_63;
                }

                v18 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_63;
                }

                v6 = v18 - v17;
                if (__OFSUB__(v18, v17))
                {
                  goto LABEL_63;
                }

                ++v16;
                if (!--v12)
                {
                  goto LABEL_64;
                }
              }
            }

LABEL_55:
            LOBYTE(v12) = 0;
            goto LABEL_64;
          }

          goto LABEL_63;
        }

        __break(1u);
      }

      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v66 = 0;

    v6 = sub_1D5FD15E0(v9, v11, 10);
    v58 = v57;

    if ((v58 & 1) == 0)
    {
      goto LABEL_87;
    }
  }

LABEL_65:
  v33 = sub_1D5C73AB0(v9, v11);
  if (!v34)
  {
    goto LABEL_71;
  }

  if (v33 == 36 && v34 == 0xE100000000000000)
  {
  }

  else
  {
    v35 = sub_1D72646CC();

    if ((v35 & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  v62 = 0x286E6F6974706FLL;
  v63 = 0xE700000000000000;
  v36 = sub_1D5FD24A4(1uLL, v9, v11);
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v43 = MEMORY[0x1DA6F97E0](v36, v38, v40, v42);
  v45 = v44;

  MEMORY[0x1DA6F9910](v43, v45);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  v9 = v62;
  v11 = v63;
LABEL_71:
  sub_1D5C9299C(40, 0xE100000000000000, v9, v11);
  if (v46)
  {
    goto LABEL_81;
  }

  v47 = sub_1D5C73AF8(v9, v11);
  if (!v48)
  {
    goto LABEL_81;
  }

  if (v47 == 41 && v48 == 0xE100000000000000)
  {

    goto LABEL_77;
  }

  v49 = sub_1D72646CC();

  if ((v49 & 1) == 0)
  {
LABEL_81:
    type metadata accessor for FormatLayoutError();
    sub_1D5B57270(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v55 = v9;
    v55[1] = v11;
    goto LABEL_82;
  }

LABEL_77:
  v50 = sub_1D726236C();
  v59 = MEMORY[0x1DA6F97E0](v50);
  v61 = v51;

  v52 = sub_1D726222C();
  result = sub_1D726223C();
  if (result >> 14 >= v52 >> 14)
  {
    v53 = sub_1D726236C();
    v6 = MEMORY[0x1DA6F97E0](v53);
    v7 = v54;

    if (v59 == 0x6E6F6974706FLL && v61 == 0xE600000000000000)
    {

LABEL_84:

      v8 = 1;
LABEL_88:
      __swift_destroy_boxed_opaque_existential_1(v64);
      goto LABEL_89;
    }

    v60 = sub_1D72646CC();

    if (v60)
    {
      goto LABEL_84;
    }

    type metadata accessor for FormatLayoutError();
    sub_1D5B57270(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v56 = v9;
    v56[1] = v11;
LABEL_82:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(v64);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

LABEL_96:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for FormatCountLimit.Errors(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t FormatEquation.init(operand:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for FormatEquationToken();
  sub_1D72644CC();
  swift_allocObject();
  v6 = sub_1D726270C();
  v7 = *(a2 - 8);
  (*(v7 + 16))(v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  v9 = sub_1D5BFCB60(v6);
  result = (*(v7 + 8))(a1, a2);
  *a3 = v9;
  return result;
}

uint64_t sub_1D5C5B2F0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1D5C5B39C(void *a1)
{
  v2 = v1;
  sub_1D5C5BDF0();
  v71 = v4;
  v72 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v70 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2E528();
  *&v74 = v7;
  v67 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v69 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8CD38();
  v11 = v10;
  *&v68 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C5BF0C();
  v73 = v15;
  v79 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C5BFA0();
  sub_1D5B58B84(&qword_1EDF25608, sub_1D5C5BFA0);
  sub_1D7264B0C();
  if (v1)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v2);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v19;
  }

  v65 = v14;
  v66 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_1D7264AFC();
  v21 = Dictionary<>.errorOnUnknownKeys.getter(v20);

  v22 = v73;
  v23 = v74;
  if (v21)
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

      v31 = *(v26 - 2);
      v30 = *(v26 - 1);

      v19 = sub_1D66231D8();
      sub_1D5E2D970();
      v2 = swift_allocError();
      *v32 = v31;
      *(v32 + 8) = v30;
      *(v32 + 16) = v19;
      *(v32 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v79 + 8))(v18, v22);
      goto LABEL_10;
    }

LABEL_7:
  }

  v27 = sub_1D5C31D18(v18, 0, 0, 0, sub_1D5C5BF0C);
  v64 = v28;
  v77 = xmmword_1D728CF30;
  v78 = 0;
  v29 = sub_1D72642BC();
  v34 = v33;
  v63 = v29;
  v77 = xmmword_1D7297410;
  v78 = 0;
  v35 = sub_1D726422C();
  v38 = v37;
  v61 = v35;
  v62 = v27;
  v77 = xmmword_1D72BAA60;
  v78 = 0;
  v56 = sub_1D726422C();
  v58 = v39;
  v59 = v34;
  v60 = v38;
  v57 = xmmword_1D72BAA70;
  v77 = xmmword_1D72BAA70;
  v78 = 0;
  v40 = sub_1D726434C();
  if (v40)
  {
    v75 = v57;
    v76 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38);
    v41 = v65;
    v42 = v66;
    sub_1D726431C();
    v43 = v72;
    *&v57 = sub_1D725A74C();
    (*(v68 + 8))(v41, v42);
    v44 = v43;
    v45 = v71;
  }

  else
  {
    *&v57 = MEMORY[0x1E69E7CD0];
    v45 = v71;
    v44 = v72;
  }

  v46 = v70;
  v68 = xmmword_1D72BAA80;
  v77 = xmmword_1D72BAA80;
  v78 = 0;
  if (sub_1D726434C())
  {
    v47 = v46;
    v75 = v68;
    v76 = 0;
    sub_1D5B58B84(&qword_1EDF3BD80, sub_1D5C2E528);
    v48 = v69;
    sub_1D726431C();
    v49 = sub_1D725A74C();
    v50 = v23;
    v51 = v49;
    (*(v67 + 8))(v48, v50);
    v46 = v47;
    v44 = v72;
  }

  else
  {
    v51 = MEMORY[0x1E69E7CC0];
  }

  v74 = xmmword_1D72BAA90;
  v77 = xmmword_1D72BAA90;
  v78 = 0;
  if (sub_1D726434C())
  {
    v75 = v74;
    v76 = 0;
    sub_1D5B58B84(&qword_1EDF3BD90, sub_1D5C5BDF0);
    sub_1D726431C();
    v52 = sub_1D725A74C();
    (*(v44 + 8))(v46, v45);
  }

  else
  {
    v52 = MEMORY[0x1E69E7CC0];
  }

  (*(v79 + 8))(v18, v22);
  type metadata accessor for FormatSnippetNode();
  v19 = swift_allocObject();
  *(v19 + 64) = 0u;
  *(v19 + 48) = 0u;
  swift_beginAccess();
  v53 = v64;
  *(v19 + 16) = v62;
  *(v19 + 24) = v53;
  v54 = v59;
  *(v19 + 32) = v63;
  *(v19 + 40) = v54;
  swift_beginAccess();
  *(v19 + 48) = v61;
  *(v19 + 56) = v60;

  swift_beginAccess();
  *(v19 + 64) = v56;
  *(v19 + 72) = v58;

  swift_beginAccess();
  *(v19 + 80) = v57;
  swift_beginAccess();
  *(v19 + 88) = v51;
  swift_beginAccess();
  *(v19 + 96) = v52;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v19;
}

void sub_1D5C5BDF0()
{
  if (!qword_1EDF3BD88)
  {
    type metadata accessor for FormatBlock();
    sub_1D5B58B84(&qword_1EDF342F0, type metadata accessor for FormatBlock);
    sub_1D5B58B84(&qword_1EDF342F8, type metadata accessor for FormatBlock);
    v0 = sub_1D725AAEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BD88);
    }
  }
}

uint64_t sub_1D5C5BEBC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5C5B39C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1D5C5BF0C()
{
  if (!qword_1EDF1A210)
  {
    sub_1D5C5BFA0();
    sub_1D5B58B84(&qword_1EDF25608, sub_1D5C5BFA0);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A210);
    }
  }
}

void sub_1D5C5BFA0()
{
  if (!qword_1EDF25600)
  {
    sub_1D5C5C024();
    sub_1D5C5C078();
    sub_1D5C5C17C();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25600);
    }
  }
}

unint64_t sub_1D5C5C024()
{
  result = qword_1EDF2F1F0;
  if (!qword_1EDF2F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F1F0);
  }

  return result;
}

unint64_t sub_1D5C5C078()
{
  result = qword_1EDF2F1F8;
  if (!qword_1EDF2F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F1F8);
  }

  return result;
}

unint64_t sub_1D5C5C0D0()
{
  result = qword_1EDF2F1E0;
  if (!qword_1EDF2F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F1E0);
  }

  return result;
}

unint64_t sub_1D5C5C128()
{
  result = qword_1EDF2F1E8;
  if (!qword_1EDF2F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F1E8);
  }

  return result;
}

unint64_t sub_1D5C5C17C()
{
  result = qword_1EDF2F200;
  if (!qword_1EDF2F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F200);
  }

  return result;
}

unint64_t sub_1D5C5C1D0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x736B636F6C62;
  if (v1 != 6)
  {
    v3 = 1885433183;
  }

  v4 = 0x726F7463656C6573;
  if (v1 != 4)
  {
    v4 = 0x736E6F6974706FLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 2)
  {
    v5 = 0x7470697263736564;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t Dictionary<>.allowSourceMaps.getter(uint64_t a1)
{
  sub_1D5C2ED14(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v14[-v4];
  v6 = sub_1D7263FCC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7263FBC();
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    if (*(a1 + 16) && (v12 = sub_1D5B7C598(v10), (v13 & 1) != 0))
    {
      sub_1D5B76B10(*(a1 + 56) + 32 * v12, v15);
      (*(v7 + 8))(v10, v6);
      if (swift_dynamicCast())
      {
        return v14[15];
      }
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    return 0;
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_1D5C5C5C0()
{
  result = qword_1EDF298C8;
  if (!qword_1EDF298C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF298C8);
  }

  return result;
}

uint64_t sub_1D5C5C614(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1D5C5C660()
{
  result = qword_1EDF2DB68;
  if (!qword_1EDF2DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DB68);
  }

  return result;
}

void sub_1D5C5C6B4()
{
  if (!qword_1EDF25580)
  {
    sub_1D5C5CB34();
    sub_1D5C5CB88();
    sub_1D5C5CC8C();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25580);
    }
  }
}

uint64_t FormatOrExpression.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  sub_1D5C5CA88();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C5C6B4();
  sub_1D5B58B84(&qword_1EDF25588, sub_1D5C5C6B4);
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

  v13 = v26;
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

      v21 = sub_1D6627E68(0x657270784573686CLL, 0xED00006E6F697373, 0x6572707845736872, 0xED00006E6F697373);
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

  sub_1D5C55EBC();
  v27 = 0uLL;
  v28 = 0;
  sub_1D726431C();
  v18 = v29;
  v27 = xmmword_1D728CF30;
  v28 = 0;
  sub_1D726431C();
  (*(v14 + 8))(v10, v6);
  v24 = v29;
  *v13 = v18;
  v13[1] = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C5CA88()
{
  if (!qword_1EDF1A1D0)
  {
    sub_1D5C5C6B4();
    sub_1D5B58B84(&qword_1EDF25588, sub_1D5C5C6B4);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A1D0);
    }
  }
}

unint64_t sub_1D5C5CB34()
{
  result = qword_1EDF2DB80;
  if (!qword_1EDF2DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DB80);
  }

  return result;
}

unint64_t sub_1D5C5CB88()
{
  result = qword_1EDF2DB88;
  if (!qword_1EDF2DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DB88);
  }

  return result;
}

unint64_t sub_1D5C5CBE0()
{
  result = qword_1EDF2DB70;
  if (!qword_1EDF2DB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DB70);
  }

  return result;
}

unint64_t sub_1D5C5CC38()
{
  result = qword_1EDF2DB78;
  if (!qword_1EDF2DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DB78);
  }

  return result;
}

unint64_t sub_1D5C5CC8C()
{
  result = qword_1EDF2DB90;
  if (!qword_1EDF2DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DB90);
  }

  return result;
}

uint64_t sub_1D5C5CD04(void *a1)
{
  v2 = v1;
  sub_1D5C2E60C(0, &qword_1EDF3BCF8, sub_1D5C91044, sub_1D5C50B48);
  v36 = v4;
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v30 - v6;
  sub_1D5C5D1B4();
  v9 = v8;
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C5D130();
  sub_1D5B58B84(&qword_1EDF25168, sub_1D5C5D130);
  sub_1D7264B0C();
  if (v1)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v2);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v13;
  }

  v30 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1D7264AFC();
  v15 = Dictionary<>.errorOnUnknownKeys.getter(v14);

  v16 = v9;
  v17 = v32;
  v18 = v36;
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
      v13 = *(v21 - 1);

      v27 = sub_1D6628490(0x6E6572646C696863, 0xE800000000000000);
      sub_1D5E2D970();
      v2 = swift_allocError();
      *v28 = v26;
      *(v28 + 8) = v13;
      *(v28 + 16) = v27;
      *(v28 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v17 + 8))(v12, v16);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C51470();
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v22 = v30;
  sub_1D726431C();
  v23 = sub_1D725A74C();
  v24 = v22;
  v25 = v23;
  (*(v31 + 8))(v24, v18);
  (*(v17 + 8))(v12, v16);
  type metadata accessor for FormatSwitchNodeDefault();
  v13 = swift_allocObject();
  swift_beginAccess();
  *(v13 + 16) = v25;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

uint64_t sub_1D5C5D104@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5C5CD04(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1D5C5D130()
{
  if (!qword_1EDF25160)
  {
    sub_1D5C5D248();
    sub_1D5C5D29C();
    sub_1D5C5D3A0();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25160);
    }
  }
}

void sub_1D5C5D1B4()
{
  if (!qword_1EDF19FC0)
  {
    sub_1D5C5D130();
    sub_1D5B58B84(&qword_1EDF25168, sub_1D5C5D130);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19FC0);
    }
  }
}

unint64_t sub_1D5C5D248()
{
  result = qword_1EDF26EC8;
  if (!qword_1EDF26EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26EC8);
  }

  return result;
}

unint64_t sub_1D5C5D29C()
{
  result = qword_1EDF26ED0;
  if (!qword_1EDF26ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26ED0);
  }

  return result;
}

unint64_t sub_1D5C5D2F4()
{
  result = qword_1EDF26EB8;
  if (!qword_1EDF26EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26EB8);
  }

  return result;
}

unint64_t sub_1D5C5D34C()
{
  result = qword_1EDF26EC0;
  if (!qword_1EDF26EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26EC0);
  }

  return result;
}

unint64_t sub_1D5C5D3A0()
{
  result = qword_1EDF26ED8[0];
  if (!qword_1EDF26ED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF26ED8);
  }

  return result;
}

uint64_t sub_1D5C5D3F4()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x6E6572646C696863;
  }
}

uint64_t sub_1D5C5D428(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1D5F33294(a1, a2);
  }

  return a1;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1D5C5D464@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v94 = a2;
  sub_1D5C8F9E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v99 = &v91 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v92 = &v91 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v93 = (&v91 - v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  v109 = &v91 - v19;
  v20 = MEMORY[0x1E69E7CC8];
  v129 = MEMORY[0x1E69E7CC8];
  sub_1D5C5DB0C(0, &qword_1EDF1B788, MEMORY[0x1E69E5E28]);
  sub_1D7261DAC();
  v128 = v20;
  sub_1D5C5DB98();
  result = sub_1D7261DAC();
  v98 = *(a1 + 16);
  if (!v98)
  {
    v28 = v128;
LABEL_38:
    v66 = v94;
    v67 = v129;
    *v94 = a1;
    v66[1] = v67;
    v66[2] = v28;
    return result;
  }

  v22 = 0;
  v23 = *(v4 + 80);
  v103 = v7;
  v104 = (v23 + 32) & ~v23;
  v96 = a1;
  v97 = a1 + v104;
  v95 = v4;
LABEL_4:
  if (v22 < *(a1 + 16))
  {
    v107 = *(v4 + 72);
    v29 = v109;
    sub_1D5C5DC00(v97 + v107 * v22, v109);
    v30 = *v29;
    v31 = v29[1];
    v32 = v128;
    if (*(v128 + 16))
    {
      v33 = sub_1D5B69D90(v30, v31);
      if (v34)
      {
        v68 = v33;

        v69 = *(v32 + 56) + v68 * v107;
        v70 = v92;
        sub_1D5C5DC00(v69, v92);
        v71 = v93;
        sub_1D5C5DFD0(v70, v93);
        type metadata accessor for FormatPackageError();
        sub_1D5C7FFAC(&qword_1EC881A40, type metadata accessor for FormatPackageError);
        swift_allocError();
        v72 = v109;
        v73 = *(v109 + 80);
        v74 = *(v109 + 112);
        v116 = *(v109 + 96);
        v117 = v74;
        v75 = *(v109 + 112);
        v118 = *(v109 + 128);
        v76 = *(v109 + 16);
        v77 = *(v109 + 48);
        v112 = *(v109 + 32);
        v113 = v77;
        v78 = *(v109 + 48);
        v79 = *(v109 + 80);
        v114 = *(v109 + 64);
        v115 = v79;
        v80 = *(v109 + 16);
        v111[0] = *v109;
        v111[1] = v80;
        v81 = v71[5];
        v82 = v71[7];
        v124 = v71[6];
        v125 = v82;
        v83 = v71[7];
        v126 = v71[8];
        v84 = v71[1];
        v85 = v71[3];
        v120 = v71[2];
        v121 = v85;
        v86 = v71[3];
        v87 = v71[5];
        v122 = v71[4];
        v123 = v87;
        v88 = v71[1];
        v119[0] = *v71;
        v119[1] = v88;
        v127[6] = v116;
        v127[7] = v75;
        v127[2] = v112;
        v127[3] = v78;
        v127[4] = v114;
        v127[5] = v73;
        v127[0] = v111[0];
        v127[1] = v76;
        v127[14] = v81;
        v127[15] = v124;
        v89 = v71[8];
        v127[16] = v83;
        v127[17] = v89;
        v127[10] = v84;
        v127[11] = v120;
        v127[12] = v86;
        v127[13] = v122;
        v127[8] = *(v109 + 128);
        v127[9] = v119[0];
        memcpy(v90, v127, 0x120uLL);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1D5D65D5C(v111, v110);
        sub_1D5D65D5C(v119, v110);
        sub_1D5C5E444(v71);
        sub_1D5C5E444(v72);
      }
    }

    v100 = v31;
    v101 = v30;
    v102 = v22 + 1;
    v35 = *(v109 + 56);
    v38 = *(v35 + 56);
    v37 = v35 + 56;
    v36 = v38;
    v39 = 1 << *(*(v109 + 56) + 32);
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v41 = v40 & v36;
    v42 = (v39 + 63) >> 6;
    v108 = *(v109 + 56);

    v43 = 0;
    v105 = v42;
    for (i = v37; ; v37 = i)
    {
      if (!v41)
      {
        while (1)
        {
          v44 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          if (v44 >= v42)
          {
            break;
          }

          v41 = *(v37 + 8 * v44);
          ++v43;
          if (v41)
          {
            v43 = v44;
            goto LABEL_18;
          }
        }

        v24 = v109;
        v25 = v99;
        sub_1D5C5DC00(v109, v99);
        v26 = v128;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v127[0] = v26;
        sub_1D5C5E038(v25, v101, v100, isUniquelyReferenced_nonNull_native);
        v28 = *&v127[0];
        v128 = *&v127[0];
        result = sub_1D5C5E444(v24);
        v22 = v102;
        v4 = v95;
        a1 = v96;
        if (v102 == v98)
        {
          goto LABEL_38;
        }

        goto LABEL_4;
      }

LABEL_18:
      v45 = *(*(v108 + 48) + ((v43 << 9) | (8 * __clz(__rbit64(v41)))));
      v46 = v129;
      if (v129[2] && (v47 = sub_1D5C5E034(v45), (v48 & 1) != 0))
      {
        v49 = *(v46[7] + 8 * v47);
      }

      else
      {
        v49 = MEMORY[0x1E69E7CC0];
      }

      sub_1D5C5DC00(v109, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_1D5C5DD04(0, v49[2] + 1, 1, v49);
      }

      v51 = v49[2];
      v50 = v49[3];
      if (v51 >= v50 >> 1)
      {
        v49 = sub_1D5C5DD04(v50 > 1, v51 + 1, 1, v49);
      }

      v49[2] = v51 + 1;
      sub_1D5C5DFD0(v7, v49 + v104 + v51 * v107);
      v52 = v129;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      *&v127[0] = v52;
      v55 = sub_1D5C5E034(v45);
      v56 = v52[2];
      v57 = (v54 & 1) == 0;
      v58 = v56 + v57;
      if (__OFADD__(v56, v57))
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

      v59 = v54;
      if (v52[3] >= v58)
      {
        if (v53)
        {
          v62 = *&v127[0];
          if (v54)
          {
            goto LABEL_11;
          }
        }

        else
        {
          sub_1D6D7E3CC();
          v62 = *&v127[0];
          if (v59)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        sub_1D6D670C0(v58, v53);
        v60 = sub_1D5C5E034(v45);
        if ((v59 & 1) != (v61 & 1))
        {
          goto LABEL_44;
        }

        v55 = v60;
        v62 = *&v127[0];
        if (v59)
        {
LABEL_11:
          *(v62[7] + 8 * v55) = v49;

          goto LABEL_12;
        }
      }

      v62[(v55 >> 6) + 8] |= 1 << v55;
      *(v62[6] + 8 * v55) = v45;
      *(v62[7] + 8 * v55) = v49;
      v63 = v62[2];
      v64 = __OFADD__(v63, 1);
      v65 = v63 + 1;
      if (v64)
      {
        goto LABEL_42;
      }

      v62[2] = v65;
LABEL_12:
      v41 &= v41 - 1;
      v129 = v62;
      v7 = v103;
      v42 = v105;
    }
  }

  __break(1u);
LABEL_44:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

void sub_1D5C5DB0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    sub_1D5C509A4(255, &qword_1EDF1B380, MEMORY[0x1E69E62F8]);
    v7 = a3(a1, MEMORY[0x1E69E6530], v6, MEMORY[0x1E69E6540]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D5C5DB98()
{
  if (!qword_1EDF1B950)
  {
    sub_1D5C8F9E0();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B950);
    }
  }
}

uint64_t sub_1D5C5DC00(uint64_t a1, uint64_t a2)
{
  sub_1D5C5DC9C(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D5C5DC9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

size_t sub_1D5C5DD04(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D5C5DF40();
  sub_1D5C28DE4(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_1D5C28DE4(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1D5C5DF40()
{
  if (!qword_1EDF19940)
  {
    sub_1D5C28DE4(255, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19940);
    }
  }
}

uint64_t sub_1D5C5DFD0(uint64_t a1, uint64_t a2)
{
  sub_1D5C8F9E0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5C5E038(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1D5B69D90(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1D6D7E75C(&qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, sub_1D6060408);
      goto LABEL_7;
    }

    sub_1D6D671F8(v15, a4 & 1, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, sub_1D6060408);
    v23 = sub_1D5B69D90(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1D726493C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    sub_1D5C5E4D8(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
    v21 = v19 + *(*(v20 - 8) + 72) * v12;

    return sub_1D6D8B04C(a1, v21);
  }

LABEL_13:
  sub_1D5C5E34C(v12, a2, a3, a1, v18);
}

uint64_t sub_1D5C5E244(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  sub_1D5C2BC18(0, a3, a4, a5, type metadata accessor for FormatObject);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D5C5E2C8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  sub_1D5C5E4D8(0, a3, a4, a5, type metadata accessor for FormatObject);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D5C5E34C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  sub_1D5C5E4D8(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
  result = sub_1D5C5E2C8(a4, v9 + *(*(v10 - 8) + 72) * a1, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1D5C5E444(uint64_t a1)
{
  sub_1D5C5DC9C(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D5C5E4D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t FormatSnippetCollection.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_1D5C5E698();
    sub_1D5C5E6F0(&qword_1EDF050B8, &qword_1EDF123E8);
    sub_1D726472C();
    sub_1D5CA3FB0(v8[6], &v7);
    v6 = v7;
    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C5E698()
{
  if (!qword_1EDF1B360)
  {
    sub_1D5C2C40C(255);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B360);
    }
  }
}

uint64_t sub_1D5C5E6F0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5C5E698();
    sub_1D5B4B9B0(a2, sub_1D5C2C40C);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5C5E780(void *a1)
{
  sub_1D5C2E60C(0, &qword_1EDF3BD98, sub_1D5B4C754, sub_1D5B4C7A8);
  v78 = v2;
  v70 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v73 = &v63 - v4;
  sub_1D5C8CD38();
  v74 = v5;
  v71 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  *&v79 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2E528();
  v76 = v8;
  v72 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v75 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2E60C(0, &qword_1EDF3BCF8, sub_1D5C91044, sub_1D5C50B48);
  v12 = v11;
  v77 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v63 - v14;
  sub_1D5C5F2DC();
  v17 = v16;
  v85 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C5F370();
  sub_1D5B58B84(&qword_1EDF24C68, sub_1D5C5F370);
  v22 = v80;
  sub_1D7264B0C();
  v23 = v22;
  if (v22)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v23);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v21;
  }

  v24 = v15;
  *&v80 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v25 = sub_1D7264AFC();
  v26 = Dictionary<>.errorOnUnknownKeys.getter(v25);

  v27 = v17;
  if (v26)
  {
    v28 = sub_1D726433C();
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = (v28 + 48);
      while (*v30 != 1)
      {
        v30 += 24;
        if (!--v29)
        {
          goto LABEL_7;
        }
      }

      v36 = *(v30 - 2);
      v35 = *(v30 - 1);

      v21 = sub_1D6612A98();
      sub_1D5E2D970();
      v23 = swift_allocError();
      *v37 = v36;
      *(v37 + 8) = v35;
      *(v37 + 16) = v21;
      *(v37 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v85 + 8))(v20, v17);
      goto LABEL_10;
    }

LABEL_7:
  }

  v83 = 0uLL;
  v84 = 0;
  v31 = sub_1D72642BC();
  v33 = v32;
  v34 = v31;
  v83 = xmmword_1D728CF30;
  v84 = 0;
  v68 = sub_1D726422C();
  v69 = v39;
  v83 = xmmword_1D7297410;
  v84 = 0;
  v64 = sub_1D726422C();
  v65 = v34;
  v66 = v40;
  v67 = v33;
  v83 = xmmword_1D72BAA60;
  v84 = 0;
  sub_1D5C51470();
  v41 = v80;
  sub_1D726431C();
  v42 = v20;
  v43 = sub_1D725A74C();
  (*(v77 + 8))(v24, v41);
  v80 = xmmword_1D72BAA70;
  v83 = xmmword_1D72BAA70;
  v84 = 0;
  v44 = sub_1D726434C();
  v63 = v43;
  if (v44)
  {
    v81 = v80;
    v82 = 0;
    sub_1D5B58B84(&qword_1EDF3BD80, sub_1D5C2E528);
    v45 = v75;
    v46 = v76;
    sub_1D726431C();
    v47 = v78;
    v48 = v79;
    *&v80 = sub_1D725A74C();
    (*(v72 + 8))(v45, v46);
    v49 = v47;
  }

  else
  {
    *&v80 = MEMORY[0x1E69E7CC0];
    v49 = v78;
    v48 = v79;
  }

  v79 = xmmword_1D72BAA80;
  v83 = xmmword_1D72BAA80;
  v84 = 0;
  if (sub_1D726434C())
  {
    v81 = v79;
    v82 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38);
    v50 = v74;
    sub_1D726431C();
    v51 = v48;
    v52 = v50;
    v53 = v27;
    v54 = sub_1D725A74C();
    (*(v71 + 8))(v51, v52);
  }

  else
  {
    v53 = v27;
    v54 = MEMORY[0x1E69E7CD0];
  }

  v79 = xmmword_1D72BAA90;
  v83 = xmmword_1D72BAA90;
  v84 = 0;
  v55 = v42;
  if (sub_1D726434C())
  {
    v81 = v79;
    v82 = 0;
    sub_1D666CDAC();
    v56 = v73;
    sub_1D726431C();
    v57 = v49;
    v58 = v70;
    v59 = v55;
    v60 = v56;
    *&v79 = a1;
    v61 = sub_1D725A74C();
    (*(v58 + 8))(v60, v57);
  }

  else
  {
    v59 = v42;
    *&v79 = a1;
    v61 = MEMORY[0x1E69E7CC0];
  }

  (*(v85 + 8))(v59, v53);
  type metadata accessor for FormatSnippet();
  v21 = swift_allocObject();
  *(v21 + 48) = 0u;
  *(v21 + 32) = 0u;
  v62 = v67;
  *(v21 + 16) = v65;
  *(v21 + 24) = v62;
  swift_beginAccess();
  *(v21 + 32) = v68;
  *(v21 + 40) = v69;

  swift_beginAccess();
  *(v21 + 48) = v64;
  *(v21 + 56) = v66;

  swift_beginAccess();
  *(v21 + 64) = v63;
  swift_beginAccess();
  *(v21 + 72) = v80;
  swift_beginAccess();
  *(v21 + 80) = v54;
  swift_beginAccess();
  *(v21 + 88) = v61;
  __swift_destroy_boxed_opaque_existential_1(v79);
  return v21;
}

uint64_t sub_1D5C5F2B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5C5E780(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1D5C5F2DC()
{
  if (!qword_1EDF19D40)
  {
    sub_1D5C5F370();
    sub_1D5B58B84(&qword_1EDF24C68, sub_1D5C5F370);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19D40);
    }
  }
}

void sub_1D5C5F370()
{
  if (!qword_1EDF24C60)
  {
    sub_1D5C5F3F4();
    sub_1D5C5F448();
    sub_1D5C5F54C();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24C60);
    }
  }
}

unint64_t sub_1D5C5F3F4()
{
  result = qword_1EDF32EB0;
  if (!qword_1EDF32EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32EB0);
  }

  return result;
}

unint64_t sub_1D5C5F448()
{
  result = qword_1EDF32EB8;
  if (!qword_1EDF32EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32EB8);
  }

  return result;
}

unint64_t sub_1D5C5F4A0()
{
  result = qword_1EDF32EA0;
  if (!qword_1EDF32EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32EA0);
  }

  return result;
}

unint64_t sub_1D5C5F4F8()
{
  result = qword_1EDF32EA8;
  if (!qword_1EDF32EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32EA8);
  }

  return result;
}

unint64_t sub_1D5C5F54C()
{
  result = qword_1EDF32EC0[0];
  if (!qword_1EDF32EC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF32EC0);
  }

  return result;
}

uint64_t sub_1D5C5F5A0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x7365707974;
  if (v1 != 6)
  {
    v3 = 1885433183;
  }

  v4 = 0x736E6F6974706FLL;
  if (v1 != 4)
  {
    v4 = 0x726F7463656C6573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7470697263736564;
  if (v1 != 2)
  {
    v5 = 0x6E6572646C696863;
  }

  if (*v0)
  {
    v2 = 1701667182;
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

unint64_t sub_1D5C5F698()
{
  result = qword_1EDF25C88;
  if (!qword_1EDF25C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25C88);
  }

  return result;
}

void sub_1D5C5F6FC()
{
  if (!qword_1EDF250C0)
  {
    sub_1D5C5FB14();
    sub_1D5C5FB68();
    sub_1D5C5FC6C();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF250C0);
    }
  }
}

uint64_t FormatSelectorExpression.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D5C5FA68();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C5F6FC();
  sub_1D5B58B84(&qword_1EDF250C8, sub_1D5C5F6FC);
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

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6628490(0x726F7463656C6573, 0xE800000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C36978();
  v23[1] = 0;
  v23[2] = 0;
  v24 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v17 = v26;
  *v13 = v25;
  v13[1] = v17;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C5FA68()
{
  if (!qword_1EDF19F70)
  {
    sub_1D5C5F6FC();
    sub_1D5B58B84(&qword_1EDF250C8, sub_1D5C5F6FC);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19F70);
    }
  }
}

unint64_t sub_1D5C5FB14()
{
  result = qword_1EDF25CA0;
  if (!qword_1EDF25CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25CA0);
  }

  return result;
}

unint64_t sub_1D5C5FB68()
{
  result = qword_1EDF25CA8;
  if (!qword_1EDF25CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25CA8);
  }

  return result;
}

unint64_t sub_1D5C5FBC0()
{
  result = qword_1EDF25C90;
  if (!qword_1EDF25C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25C90);
  }

  return result;
}

unint64_t sub_1D5C5FC18()
{
  result = qword_1EDF25C98;
  if (!qword_1EDF25C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25C98);
  }

  return result;
}

unint64_t sub_1D5C5FC6C()
{
  result = qword_1EDF25CB0;
  if (!qword_1EDF25CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25CB0);
  }

  return result;
}

uint64_t sub_1D5C5FCC0()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x726F7463656C6573;
  }
}

unint64_t sub_1D5C5FCF4()
{
  result = qword_1EDF40028;
  if (!qword_1EDF40028)
  {
    sub_1D5C30060(255, &qword_1EDF40020, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatSelectorValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF40028);
  }

  return result;
}

unint64_t sub_1D5C5FD84()
{
  result = qword_1EDF284E8;
  if (!qword_1EDF284E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF284E8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FormatLayoutExpression(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *(result + 8) = 0;
    *result = a2 - 245;
    if (a3 >= 0xF5)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 11;
    }
  }

  return result;
}

uint64_t FormatLayoutExpression.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C601BC();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C60250();
  sub_1D5B58B84(&qword_1EDF25248, sub_1D5C60250);
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

  v13 = v25;
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

      v20 = *(v16 - 2);
      v19 = *(v16 - 1);

      v21 = sub_1D6627E68(0x6E6F6974706FLL, 0xE600000000000000, 0x726F74617265706FLL, 0xE800000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_11;
    }

LABEL_7:
  }

  sub_1D5C60480();
  v28 = 0uLL;
  v29 = 0;
  sub_1D726431C();
  v17 = v26;
  v24 = xmmword_1D728CF30;
  v28 = xmmword_1D728CF30;
  v29 = 0;
  if (sub_1D726434C())
  {
    v26 = v24;
    v27 = 0;
    sub_1D5C5813C();
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v18 = v30;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v18 = 0;
  }

  *v13 = v17;
  *(v13 + 8) = v18;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C601BC()
{
  if (!qword_1EDF1A030)
  {
    sub_1D5C60250();
    sub_1D5B58B84(&qword_1EDF25248, sub_1D5C60250);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A030);
    }
  }
}

void sub_1D5C60250()
{
  if (!qword_1EDF25240)
  {
    sub_1D5C602D4();
    sub_1D5C60328();
    sub_1D5C6042C();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25240);
    }
  }
}

unint64_t sub_1D5C602D4()
{
  result = qword_1EDF28500;
  if (!qword_1EDF28500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28500);
  }

  return result;
}

unint64_t sub_1D5C60328()
{
  result = qword_1EDF28508;
  if (!qword_1EDF28508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28508);
  }

  return result;
}

unint64_t sub_1D5C60380()
{
  result = qword_1EDF284F0;
  if (!qword_1EDF284F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF284F0);
  }

  return result;
}

unint64_t sub_1D5C603D8()
{
  result = qword_1EDF284F8;
  if (!qword_1EDF284F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF284F8);
  }

  return result;
}

unint64_t sub_1D5C6042C()
{
  result = qword_1EDF28510;
  if (!qword_1EDF28510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28510);
  }

  return result;
}

unint64_t sub_1D5C60480()
{
  result = qword_1EDF2DC78;
  if (!qword_1EDF2DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DC78);
  }

  return result;
}

uint64_t sub_1D5C604D4()
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
    return 0x6E6F6974706FLL;
  }
}

uint64_t storeEnumTagSinglePayload for FeedItemTraits(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1D5C6054C(void *a1)
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

    __swift_destroy_boxed_opaque_existential_1(a1);
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
          *(v18 + 16) = &unk_1F5115EB8;
          *(v18 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v6 + 8))(v9, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C608C0();
    v20 = 0uLL;
    sub_1D726431C();
    sub_1D5C34074(0, &qword_1EDF33EE8, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatValue);
    v20 = xmmword_1D7279980;
    sub_1D5C609C4();
    sub_1D726431C();
    (*(v6 + 8))(v9, v5);
    v5 = v21;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v5;
}

uint64_t sub_1D5C60894@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5C6054C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D5C608C0()
{
  result = qword_1EDF2DC80;
  if (!qword_1EDF2DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DC80);
  }

  return result;
}

unint64_t sub_1D5C60914()
{
  result = qword_1EDF2DC88[0];
  if (!qword_1EDF2DC88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF2DC88);
  }

  return result;
}

uint64_t sub_1D5C60974@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_1D5C609C4()
{
  result = qword_1EDF33EF0;
  if (!qword_1EDF33EF0)
  {
    sub_1D5C34074(255, &qword_1EDF33EE8, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33EF0);
  }

  return result;
}

unint64_t sub_1D5C60A48()
{
  result = qword_1EDF32438;
  if (!qword_1EDF32438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32438);
  }

  return result;
}

void sub_1D5C60A9C()
{
  if (!qword_1EDF25230)
  {
    sub_1D5C60F44();
    sub_1D5C60F98();
    sub_1D5C6109C();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25230);
    }
  }
}

uint64_t FormatOptionExpression.Exists.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D5C60EB0();
  v7 = v6;
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C60A9C();
  sub_1D5B58B84(&qword_1EDF25238, sub_1D5C60A9C);
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

      v22 = sub_1D66151DC();
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
  sub_1D5C6115C();
  sub_1D726431C();
  v25 = v7;
  v26 = v13;
  v27 = v33;
  v31 = xmmword_1D7297410;
  v32 = 0;
  sub_1D5C612CC();
  sub_1D726431C();
  (*(v26 + 8))(v10, v25);
  v28 = v33;
  *a2 = v29;
  *(a2 + 8) = v19;
  *(a2 + 16) = v27;
  *(a2 + 17) = v28;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C60EB0()
{
  if (!qword_1EDF1A028)
  {
    sub_1D5C60A9C();
    sub_1D5B58B84(&qword_1EDF25238, sub_1D5C60A9C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A028);
    }
  }
}

unint64_t sub_1D5C60F44()
{
  result = qword_1EDF28368;
  if (!qword_1EDF28368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28368);
  }

  return result;
}

unint64_t sub_1D5C60F98()
{
  result = qword_1EDF28370;
  if (!qword_1EDF28370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28370);
  }

  return result;
}

unint64_t sub_1D5C60FF0()
{
  result = qword_1EDF28358;
  if (!qword_1EDF28358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28358);
  }

  return result;
}

unint64_t sub_1D5C61048()
{
  result = qword_1EDF28360;
  if (!qword_1EDF28360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28360);
  }

  return result;
}

unint64_t sub_1D5C6109C()
{
  result = qword_1EDF28378;
  if (!qword_1EDF28378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28378);
  }

  return result;
}

uint64_t sub_1D5C610F0()
{
  v1 = 0x696669746E656469;
  v2 = 0x726F74617265706FLL;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 1701869940;
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

unint64_t sub_1D5C6115C()
{
  result = qword_1EDF30150;
  if (!qword_1EDF30150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30150);
  }

  return result;
}

unint64_t sub_1D5C61210()
{
  result = qword_1EDF30158;
  if (!qword_1EDF30158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30158);
  }

  return result;
}

NewsFeed::FormatOptionType_optional __swiftcall FormatOptionType.init(rawValue:)(Swift::String rawValue)
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

unint64_t sub_1D5C612CC()
{
  result = qword_1EDF28348;
  if (!qword_1EDF28348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28348);
  }

  return result;
}

unint64_t sub_1D5C61380()
{
  result = qword_1EDF28350;
  if (!qword_1EDF28350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28350);
  }

  return result;
}

uint64_t sub_1D5C613D4@<X0>(char *a1@<X8>)
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

uint64_t sub_1D5C61458(void *a1)
{
  sub_1D5C5BDF0();
  v82 = v2;
  v75 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v95 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2E528();
  v79 = v5;
  v76 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  *&v83 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8CD38();
  v81 = v8;
  v77 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  *&v84 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2E60C(0, &qword_1EDF3BD48, sub_1D5C2E688, sub_1D5C2E6DC);
  *&v87 = v11;
  v78 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  *&v85 = &v68 - v13;
  sub_1D5C2E60C(0, &qword_1EDF3BD38, sub_1D5C62464, sub_1D5C624B8);
  v15 = v14;
  v80 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v68 - v17;
  sub_1D5C6250C();
  v20 = v19;
  *&v86 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C625A0();
  sub_1D5B58B84(&qword_1EDF25178, sub_1D5C625A0);
  v24 = v88;
  sub_1D7264B0C();
  v25 = v24;
  if (v24)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v25);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v15;
  }

  *&v88 = v18;
  v26 = v87;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = sub_1D7264AFC();
  v28 = Dictionary<>.errorOnUnknownKeys.getter(v27);

  v29 = v86;
  if (v28)
  {
    v30 = sub_1D726433C();
    v31 = *(v30 + 16);
    if (v31)
    {
      v32 = (v30 + 48);
      while (*v32 != 1)
      {
        v32 += 24;
        if (!--v31)
        {
          goto LABEL_7;
        }
      }

      v36 = *(v32 - 2);
      v35 = *(v32 - 1);

      v37 = sub_1D66180D0();
      sub_1D5E2D970();
      v25 = swift_allocError();
      *v38 = v36;
      *(v38 + 8) = v35;
      *(v38 + 16) = v37;
      *(v38 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v29 + 8))(v23, v20);
      goto LABEL_10;
    }

LABEL_7:
  }

  v73 = sub_1D5C31D18(v23, 0, 0, 0, sub_1D5C6250C);
  v74 = v33;
  v91 = xmmword_1D728CF30;
  LOBYTE(v92) = 0;
  v34 = sub_1D72642BC();
  v40 = v39;
  v72 = v34;
  v91 = xmmword_1D7297410;
  LOBYTE(v92) = 0;
  sub_1D5C62940();
  sub_1D726431C();
  v71 = v89;
  v91 = xmmword_1D72BAA60;
  LOBYTE(v92) = 0;
  sub_1D5C6411C();
  sub_1D726427C();
  v69 = v40;
  v70 = v89;
  v68 = xmmword_1D72BAA70;
  v91 = xmmword_1D72BAA70;
  LOBYTE(v92) = 0;
  if (sub_1D726434C())
  {
    v89 = v68;
    v90 = 0;
    sub_1D5C9EEC4();
    v42 = v15;
    sub_1D726431C();
    v43 = v85;
    v44 = v88;
    *&v68 = sub_1D725A74C();
    (*(v80 + 8))(v44, v42);
    v45 = v43;
    v46 = v84;
  }

  else
  {
    *&v68 = MEMORY[0x1E69E7CC0];
    v46 = v84;
    v45 = v85;
  }

  v88 = xmmword_1D72BAA80;
  v91 = xmmword_1D72BAA80;
  LOBYTE(v92) = 0;
  if (sub_1D726434C())
  {
    v89 = v88;
    v90 = 0;
    sub_1D5C2F040();
    sub_1D726431C();
    *&v88 = sub_1D725A74C();
    (*(v78 + 8))(v45, v26);
    v46 = v84;
  }

  else
  {
    *&v88 = MEMORY[0x1E69E7CC0];
  }

  v87 = xmmword_1D72BAA90;
  v91 = xmmword_1D72BAA90;
  LOBYTE(v92) = 0;
  if (sub_1D726434C())
  {
    v89 = v87;
    v90 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38);
    v47 = v81;
    sub_1D726431C();
    *&v87 = sub_1D725A74C();
    (*(v77 + 8))(v46, v47);
  }

  else
  {
    *&v87 = MEMORY[0x1E69E7CD0];
  }

  v85 = xmmword_1D72BAAA0;
  v91 = xmmword_1D72BAAA0;
  LOBYTE(v92) = 0;
  v48 = sub_1D726434C();
  v49 = v83;
  v50 = v95;
  if (v48)
  {
    v89 = v85;
    v90 = 0;
    sub_1D5B58B84(&qword_1EDF3BD80, sub_1D5C2E528);
    v51 = v79;
    sub_1D726431C();
    v52 = v82;
    *&v85 = sub_1D725A74C();
    (*(v76 + 8))(v49, v51);
    v50 = v95;
  }

  else
  {
    *&v85 = MEMORY[0x1E69E7CC0];
    v52 = v82;
  }

  v84 = xmmword_1D72BAAB0;
  v91 = xmmword_1D72BAAB0;
  LOBYTE(v92) = 0;
  v53 = sub_1D726434C();
  v54 = v71;
  if (v53)
  {
    v89 = v84;
    v90 = 0;
    sub_1D5B58B84(&qword_1EDF3BD90, sub_1D5C5BDF0);
    sub_1D726431C();
    v55 = sub_1D725A74C();
    v56 = v52;
    v57 = v55;
    (*(v75 + 8))(v50, v56);
  }

  else
  {
    v57 = MEMORY[0x1E69E7CC0];
  }

  v91 = xmmword_1D72BAAC0;
  LOBYTE(v92) = 0;
  v58 = sub_1D726425C();
  *&v84 = a1;
  v59 = v20;
  v60 = v29;
  LODWORD(v95) = v61;
  v62 = v58;
  v89 = xmmword_1D72BAAD0;
  v90 = 0;
  sub_1D5C5C5C0();
  sub_1D726427C();
  (*(v60 + 8))(v23, v59);
  v64 = v93;
  v63 = v94;
  type metadata accessor for FormatSupplementaryNode();
  v86 = v91;
  v83 = v92;
  v15 = swift_allocObject();
  swift_beginAccess();
  v65 = v74;
  *(v15 + 16) = v73;
  *(v15 + 24) = v65;
  v66 = v69;
  *(v15 + 32) = v72;
  *(v15 + 40) = v66;
  v67 = v70;
  *(v15 + 48) = v54;
  *(v15 + 56) = v67;
  swift_beginAccess();
  *(v15 + 64) = v68;
  swift_beginAccess();
  *(v15 + 72) = v88;
  swift_beginAccess();
  *(v15 + 80) = v87;
  swift_beginAccess();
  *(v15 + 88) = v85;
  swift_beginAccess();
  *(v15 + 96) = v57;
  *(v15 + 104) = v62;
  *(v15 + 112) = v95 & 1;
  *(v15 + 136) = v83;
  *(v15 + 120) = v86;
  *(v15 + 152) = v64;
  *(v15 + 160) = v63;
  __swift_destroy_boxed_opaque_existential_1(v84);
  return v15;
}

uint64_t sub_1D5C62438@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5C61458(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D5C62464()
{
  result = qword_1EDF30AF8;
  if (!qword_1EDF30AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30AF8);
  }

  return result;
}

unint64_t sub_1D5C624B8()
{
  result = qword_1EDF30B08;
  if (!qword_1EDF30B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30B08);
  }

  return result;
}

void sub_1D5C6250C()
{
  if (!qword_1EDF19FC8)
  {
    sub_1D5C625A0();
    sub_1D5B58B84(&qword_1EDF25178, sub_1D5C625A0);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19FC8);
    }
  }
}

void sub_1D5C625A0()
{
  if (!qword_1EDF25170)
  {
    sub_1D5C62624();
    sub_1D5C62678();
    sub_1D5C6277C();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25170);
    }
  }
}

unint64_t sub_1D5C62624()
{
  result = qword_1EDF26FE8;
  if (!qword_1EDF26FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26FE8);
  }

  return result;
}

unint64_t sub_1D5C62678()
{
  result = qword_1EDF26FF0;
  if (!qword_1EDF26FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26FF0);
  }

  return result;
}

unint64_t sub_1D5C626D0()
{
  result = qword_1EDF26FD8;
  if (!qword_1EDF26FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26FD8);
  }

  return result;
}

unint64_t sub_1D5C62728()
{
  result = qword_1EDF26FE0;
  if (!qword_1EDF26FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26FE0);
  }

  return result;
}

unint64_t sub_1D5C6277C()
{
  result = qword_1EDF26FF8;
  if (!qword_1EDF26FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26FF8);
  }

  return result;
}

uint64_t sub_1D5C627D8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7865646E497ALL;
    v7 = 2019912806;
    if (a1 != 10)
    {
      v7 = 1885433183;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x726F7463656C6573;
    v9 = 0x736E6F6974706FLL;
    if (a1 != 7)
    {
      v9 = 0x736B636F6C62;
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
    v2 = 0x657A69736572;
    v3 = 0x656D7473756A6461;
    if (a1 != 4)
    {
      v3 = 0x73656C797473;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000017;
    if (a1 != 1)
    {
      v4 = 1702521203;
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

unint64_t sub_1D5C62940()
{
  result = qword_1EDF345B8;
  if (!qword_1EDF345B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF345B8);
  }

  return result;
}

uint64_t sub_1D5C62994(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x69)
  {
    *result = a2 - 106;
    if (a3 >= 0x6A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x6A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D5C629E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x6A && *(a1 + 8))
  {
    return (*a1 + 106);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x69)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t FormatSize.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v71 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v67 - v8;
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
    v12 = v71;
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
          *(v21 + 16) = &unk_1F5117298;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v9, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C63E40();
    v68 = 0uLL;
    sub_1D726431C();
    v23 = v12;
    switch(v70)
    {
      case 1:
        sub_1D5C71DC8();
        v68 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v49 = v70;
        v24 = swift_allocObject();
        *(v24 + 16) = v49;
        break;
      case 2:
        v70 = xmmword_1D7279980;
        sub_1D5DF9260();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v39 = *(&v68 + 1);
        v38 = v68;
        v40 = swift_allocObject();
        *(v40 + 16) = v38;
        *(v40 + 24) = v39;
        v24 = v40 | 4;
        break;
      case 3:
        v70 = xmmword_1D7279980;
        sub_1D5C9221C();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v45 = *(&v68 + 1);
        v44 = v68;
        v46 = swift_allocObject();
        *(v46 + 16) = v44;
        *(v46 + 24) = v45;
        v24 = v46 | 0x1000000000000000;
        break;
      case 4:
        v24 = 0xB000000000000008;
        (*(v11 + 8))(v9, v5);
        break;
      case 5:
        (*(v11 + 8))(v9, v5);
        v24 = 0xB000000000000010;
        break;
      case 6:
        sub_1D5C71DC8();
        v68 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v57 = v70;
        v26 = swift_allocObject();
        *(v26 + 16) = v57;
        v27 = 0x1000000000000004;
        goto LABEL_43;
      case 7:
        sub_1D5C71DC8();
        v68 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v47 = v70;
        v48 = swift_allocObject();
        *(v48 + 16) = v47;
        v24 = v48 | 0x2000000000000000;
        break;
      case 8:
        sub_1D5C71DC8();
        v68 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v60 = v70;
        v26 = swift_allocObject();
        *(v26 + 16) = v60;
        v27 = 0x2000000000000004;
        goto LABEL_43;
      case 9:
        sub_1D5C71DC8();
        v68 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v36 = v70;
        v37 = swift_allocObject();
        *(v37 + 16) = v36;
        v24 = v37 | 0x3000000000000000;
        break;
      case 10:
        v68 = xmmword_1D7279980;
        sub_1D666D900();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v58 = v70;
        v59 = BYTE8(v70);
        v26 = swift_allocObject();
        *(v26 + 16) = v58;
        *(v26 + 24) = v59;
        v27 = 0x3000000000000004;
        goto LABEL_43;
      case 11:
        v68 = xmmword_1D7279980;
        sub_1D666D900();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v32 = v70;
        v33 = BYTE8(v70);
        v34 = swift_allocObject();
        *(v34 + 16) = v32;
        *(v34 + 24) = v33;
        v24 = v34 | 0x4000000000000000;
        break;
      case 12:
        v70 = xmmword_1D7279980;
        sub_1D66B6AA8();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v35 = v68;
        v26 = swift_allocObject();
        *(v26 + 16) = v35;
        v27 = 0x4000000000000004;
        goto LABEL_43;
      case 13:
        v68 = xmmword_1D7279980;
        sub_1D5CBA7C4();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v55 = v70;
        v56 = BYTE8(v70);
        v26 = swift_allocObject();
        *(v26 + 16) = v55;
        *(v26 + 24) = v56;
        v27 = 0x5000000000000000;
        goto LABEL_43;
      case 14:
        sub_1D5C34074(0, &qword_1EDF2FE20, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatSizeColumn);
        v68 = xmmword_1D7279980;
        sub_1D5CB89D0();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v30 = v70;
        v31 = BYTE8(v70);
        v26 = swift_allocObject();
        *(v26 + 16) = v30;
        *(v26 + 24) = v31;
        v27 = 0x5000000000000004;
        goto LABEL_43;
      case 15:
        sub_1D5CBAD9C();
        v68 = xmmword_1D7279980;
        sub_1D5B58B84(qword_1EDF2FE38, sub_1D5CBAD9C);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v41 = v70;
        v42 = BYTE8(v70);
        v43 = swift_allocObject();
        *(v43 + 16) = v41;
        *(v43 + 24) = v42;
        v24 = v43 | 0x6000000000000000;
        break;
      case 16:
        v70 = xmmword_1D7279980;
        sub_1D5CBA124();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v28 = v68;
        v29 = v69;
        v26 = swift_allocObject();
        *(v26 + 16) = v28;
        *(v26 + 32) = v29;
        v27 = 0x6000000000000004;
        goto LABEL_43;
      case 17:
        (*(v11 + 8))(v9, v5);
        v24 = 0xB000000000000018;
        break;
      case 18:
        (*(v11 + 8))(v9, v5);
        v24 = 0xB000000000000020;
        break;
      case 19:
        (*(v11 + 8))(v9, v5);
        v24 = 0xB000000000000028;
        break;
      case 20:
        v70 = xmmword_1D7279980;
        sub_1D5CBF0E0();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v50 = v68;
        v51 = *(&v68 + 1);
        v52 = v69;
        v53 = swift_allocObject();
        *(v53 + 16) = v50;
        *(v53 + 24) = v51;
        *(v53 + 32) = v52;
        v24 = v53 | 0x7000000000000000;
        break;
      case 21:
        v70 = xmmword_1D7279980;
        sub_1D66B6A54();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v54 = v68;
        v26 = swift_allocObject();
        *(v26 + 16) = v54;
        v27 = 0x7000000000000004;
        goto LABEL_43;
      case 22:
        sub_1D5C30060(0, &qword_1EDF2ED98, sub_1D5CA1E04, &type metadata for FormatSize, type metadata accessor for FormatSwitchValue);
        v70 = xmmword_1D7279980;
        sub_1D5CA1F38();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v63 = *(&v68 + 1);
        v62 = v68;
        v64 = swift_allocObject();
        *(v64 + 16) = v62;
        *(v64 + 24) = v63;
        v24 = v64 | 0x8000000000000000;
        break;
      case 23:
        (*(v11 + 8))(v9, v5);
        v24 = 0xB000000000000030;
        break;
      case 24:
        (*(v11 + 8))(v9, v5);
        v24 = 0xB000000000000038;
        break;
      case 25:
        (*(v11 + 8))(v9, v5);
        v24 = 0xB000000000000040;
        break;
      case 26:
        sub_1D5C71DC8();
        v68 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v66 = v70;
        v26 = swift_allocObject();
        *(v26 + 16) = v66;
        v27 = 0x8000000000000004;
        goto LABEL_43;
      case 27:
        sub_1D5C71DC8();
        v68 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v25 = v70;
        v26 = swift_allocObject();
        *(v26 + 16) = v25;
        v27 = 0x9000000000000000;
        goto LABEL_43;
      case 28:
        sub_1D5C71DC8();
        v68 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v65 = v70;
        v26 = swift_allocObject();
        *(v26 + 16) = v65;
        v27 = 0x9000000000000004;
        goto LABEL_43;
      case 29:
        v70 = xmmword_1D7279980;
        sub_1D619B4AC();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v67 = v68;
        v26 = swift_allocObject();
        *(v26 + 16) = v67;
        v27 = 0xA000000000000000;
        goto LABEL_43;
      case 30:
        v68 = xmmword_1D7279980;
        sub_1D66B6A00();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v61 = v70;
        v26 = swift_allocObject();
        *(v26 + 16) = v61;
        v27 = 0xA000000000000004;
LABEL_43:
        v24 = v26 | v27;
        break;
      default:
        (*(v11 + 8))(v9, v5);
        v24 = 0xB000000000000000;
        break;
    }

    *v23 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5C63C80()
{

  sub_1D5C92A8C(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D5C63CC0()
{
  sub_1D5C92A8C(*(v0 + 16));
  v1 = *(v0 + 24);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    sub_1D5C92A8C(v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5C63D0C()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5C63D4C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C63DA0()
{
  sub_1D5D09FB0(*(v0 + 16));
  sub_1D5D09FB0(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D5C63DE0()
{

  if (*(v0 + 24) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1D5C63E40()
{
  result = qword_1EDF345D0;
  if (!qword_1EDF345D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF345D0);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for DebugInspectionArticleData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D5C63FAC()
{
  result = qword_1EDF345D8;
  if (!qword_1EDF345D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF345D8);
  }

  return result;
}

uint64_t sub_1D5C64000@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C64030();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C64030()
{
  v0 = sub_1D72648CC();

  if (v0 >= 0x1F)
  {
    return 31;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for DebugInspectionArticleData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1D5C6411C()
{
  result = qword_1EDF337A0;
  if (!qword_1EDF337A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF337A0);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FormatQueryValue(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5C641D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5C641FC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D5C641FC(void *a1)
{
  sub_1D5C2E60C(0, &qword_1EDF3BD28, sub_1D5C6590C, sub_1D5C65960);
  *&v96 = v2;
  v93 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v95 = &v85 - v4;
  sub_1D5C659B4();
  *&v98 = v5;
  v94 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v97 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8CD38();
  v101 = v8;
  *&v99 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v100 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2E60C(0, &qword_1EDF3BC30, sub_1D5C65A80, sub_1D5C65AD4);
  v104 = v11;
  v102 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v103 = &v85 - v13;
  sub_1D5C2E60C(0, &qword_1EDF3BCF8, sub_1D5C91044, sub_1D5C50B48);
  v107 = v14;
  v105 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  *&v108 = &v85 - v16;
  sub_1D5C2E60C(0, &qword_1EDF3BD38, sub_1D5C62464, sub_1D5C624B8);
  v18 = v17;
  *&v106 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v85 - v20;
  sub_1D5C65BAC();
  v118 = v22;
  *&v109 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v27 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C65B28();
  sub_1D5B58B84(&qword_1EDF256F8, sub_1D5C65B28);
  v28 = v110;
  sub_1D7264B0C();
  v29 = v28;
  if (v28)
  {
    v30 = v26;
LABEL_12:
    sub_1D61E4FBC(v30, v29);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(v30);
    return v27;
  }

  v92 = v21;
  *&v110 = v18;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v31 = sub_1D7264AFC();
  v32 = Dictionary<>.errorOnUnknownKeys.getter(v31);

  v30 = v26;
  v33 = v118;
  if (v32)
  {
    v34 = sub_1D726433C();
    v35 = *(v34 + 16);
    if (v35)
    {
      v36 = (v34 + 48);
      while (*v36 != 1)
      {
        v36 += 24;
        if (!--v35)
        {
          goto LABEL_8;
        }
      }

      v39 = v25;
      v40 = *(v36 - 2);
      v27 = *(v36 - 1);

      v41 = sub_1D6612CCC();
      sub_1D5E2D970();
      v29 = swift_allocError();
      *v42 = v40;
      *(v42 + 8) = v27;
      *(v42 + 16) = v41;
      *(v42 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v109 + 8))(v39, v33);
      goto LABEL_12;
    }

LABEL_8:
  }

  v37 = sub_1D5C31D18(v25, 0, 0, 0, sub_1D5C65BAC);
  v91 = v38;
  v90 = xmmword_1D728CF30;
  v114 = xmmword_1D728CF30;
  LOBYTE(v115) = 0;
  if (sub_1D726434C())
  {
    v112 = v90;
    v113 = 0;
    sub_1D5C62940();
    sub_1D726431C();
    v44 = v111;
    sub_1D5C82CD8(v111);
    sub_1D5C92A8C(v44);
  }

  else
  {
    v44 = 0xB000000000000008;
  }

  v114 = xmmword_1D7297410;
  LOBYTE(v115) = 0;
  sub_1D5C6411C();
  sub_1D726427C();
  v45 = v112;
  v89 = xmmword_1D72BAA60;
  v114 = xmmword_1D72BAA60;
  LOBYTE(v115) = 0;
  v46 = sub_1D726434C();
  *&v90 = v45;
  if (v46)
  {
    v88 = v44;
    v112 = v89;
    v113 = 0;
    sub_1D5C9EEC4();
    v47 = v92;
    v48 = v110;
    sub_1D726431C();
    v87 = v37;
    *&v89 = sub_1D725A74C();
    (*(v106 + 8))(v47, v48);
    v44 = v88;
  }

  else
  {
    v87 = v37;
    *&v89 = MEMORY[0x1E69E7CC0];
  }

  v110 = xmmword_1D72BAA70;
  v114 = xmmword_1D72BAA70;
  LOBYTE(v115) = 0;
  v49 = sub_1D726434C();
  v50 = v108;
  if (v49)
  {
    v112 = v110;
    v113 = 0;
    sub_1D726431C();
    v92 = v111;
  }

  else
  {
    v92 = 0;
  }

  v110 = xmmword_1D72BAA80;
  v114 = xmmword_1D72BAA80;
  LOBYTE(v115) = 0;
  if (sub_1D726434C())
  {
    v112 = v110;
    v113 = 0;
    sub_1D5DF6A0C();
    sub_1D726431C();
    v51 = v111;
    sub_1D5EB1500(v111);
    *&v110 = v51;
    sub_1D5EB15C4(v51);
  }

  else
  {
    *&v110 = 0x8000000000000000;
  }

  v106 = xmmword_1D72BAA90;
  v114 = xmmword_1D72BAA90;
  LOBYTE(v115) = 0;
  if (sub_1D726434C())
  {
    v112 = v106;
    v113 = 0;
    sub_1D726431C();
    v52 = v25;
    v53 = v33;
    v54 = v111;
  }

  else
  {
    v52 = v25;
    v53 = v33;
    v54 = 1;
  }

  LODWORD(v106) = v54;
  v114 = xmmword_1D72BAAA0;
  LOBYTE(v115) = 0;
  sub_1D5C51470();
  v55 = v50;
  v56 = v107;
  sub_1D726431C();
  v118 = sub_1D725A74C();
  (*(v105 + 8))(v55, v56);
  v108 = xmmword_1D72BAAB0;
  v114 = xmmword_1D72BAAB0;
  LOBYTE(v115) = 0;
  if (sub_1D726434C())
  {
    v112 = v108;
    v113 = 0;
    sub_1D5C7618C();
    v57 = v103;
    v58 = v104;
    sub_1D726431C();
    v88 = v44;
    v59 = v52;
    v60 = v53;
    *&v108 = sub_1D725A74C();
    (*(v102 + 8))(v57, v58);
  }

  else
  {
    v88 = v44;
    v59 = v52;
    v60 = v53;
    *&v108 = MEMORY[0x1E69E7CC0];
  }

  v114 = xmmword_1D72BAAC0;
  LOBYTE(v115) = 0;
  sub_1D5C67614();
  v61 = v59;
  sub_1D726431C();
  v107 = v30;
  v62 = v112;
  v114 = xmmword_1D72BAAD0;
  LOBYTE(v115) = 0;
  sub_1D5C6F1D8();
  sub_1D726427C();
  v63 = v88;
  v105 = v62;
  v64 = v112;
  v114 = xmmword_1D72BAAE0;
  LOBYTE(v115) = 0;
  sub_1D726427C();
  v65 = v64;
  v66 = v112;
  v114 = xmmword_1D72BAAF0;
  LOBYTE(v115) = 0;
  sub_1D726427C();
  v104 = v112;
  v114 = xmmword_1D7282A80;
  LOBYTE(v115) = 0;
  sub_1D5C6F27C();
  v67 = v60;
  v68 = v61;
  sub_1D726427C();
  v103 = v112;
  LODWORD(v102) = BYTE8(v112);
  type metadata accessor for FormatAnimationNodeStyle();
  v114 = xmmword_1D72BAB00;
  LOBYTE(v115) = 0;
  sub_1D5B58B84(&qword_1EDF26768, type metadata accessor for FormatAnimationNodeStyle);
  sub_1D726427C();
  v86 = v112;
  v85 = xmmword_1D72BAB10;
  v114 = xmmword_1D72BAB10;
  LOBYTE(v115) = 0;
  if (sub_1D726434C())
  {
    v112 = v85;
    v113 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38);
    sub_1D726431C();
    v69 = v100;
    v70 = v101;
    *&v85 = sub_1D725A74C();
    (*(v99 + 8))(v69, v70);
  }

  else
  {
    *&v85 = MEMORY[0x1E69E7CD0];
  }

  v114 = xmmword_1D72BAB20;
  LOBYTE(v115) = 0;
  v100 = sub_1D726422C();
  v101 = v71;
  v99 = xmmword_1D72BAB30;
  v114 = xmmword_1D72BAB30;
  LOBYTE(v115) = 0;
  if (sub_1D726434C())
  {
    v112 = v99;
    v113 = 0;
    sub_1D5B58B84(&qword_1EC88A0C0, sub_1D5C659B4);
    sub_1D726431C();
    v72 = v97;
    v73 = v98;
    *&v99 = sub_1D725A74C();
    (*(v94 + 8))(v72, v73);
  }

  else
  {
    *&v99 = MEMORY[0x1E69E7CC0];
  }

  v98 = xmmword_1D72BAB40;
  v114 = xmmword_1D72BAB40;
  LOBYTE(v115) = 0;
  if (sub_1D726434C())
  {
    v112 = v98;
    v113 = 0;
    sub_1D66FBDBC();
    sub_1D726431C();
    v74 = v95;
    v75 = v96;
    v97 = sub_1D725A74C();
    (*(v93 + 8))(v74, v75);
  }

  else
  {
    v97 = MEMORY[0x1E69E7CC0];
  }

  v112 = xmmword_1D72BAB50;
  v113 = 0;
  sub_1D5C5C5C0();
  sub_1D726427C();
  *&v98 = 0;
  (*(v109 + 8))(v68, v67);
  v76 = v116;
  v77 = v117;
  type metadata accessor for FormatButtonNode();
  v109 = v114;
  v96 = v115;
  v27 = swift_allocObject();
  *(v27 + 168) = 0;
  *(v27 + 160) = 0;
  swift_beginAccess();
  v78 = v91;
  *(v27 + 16) = v87;
  *(v27 + 24) = v78;
  swift_beginAccess();
  v79 = v90;
  *(v27 + 32) = v63;
  *(v27 + 40) = v79;
  swift_beginAccess();
  *(v27 + 48) = v89;
  swift_beginAccess();
  *(v27 + 56) = v92;
  swift_beginAccess();
  *(v27 + 64) = v110;
  swift_beginAccess();
  *(v27 + 72) = v106;
  swift_beginAccess();
  *(v27 + 80) = v118;
  swift_beginAccess();
  v81 = v104;
  v80 = v105;
  *(v27 + 88) = v108;
  *(v27 + 96) = v80;
  *(v27 + 104) = v65;
  *(v27 + 112) = v66;
  v82 = v103;
  *(v27 + 120) = v81;
  *(v27 + 128) = v82;
  *(v27 + 136) = v102;
  *(v27 + 144) = v86;
  swift_beginAccess();
  *(v27 + 152) = v85;
  swift_beginAccess();
  v83 = v101;
  *(v27 + 160) = v100;
  *(v27 + 168) = v83;
  swift_beginAccess();
  *(v27 + 176) = v99;
  swift_beginAccess();
  *(v27 + 184) = v97;
  v84 = v96;
  *(v27 + 192) = v109;
  *(v27 + 208) = v84;
  *(v27 + 224) = v76;
  *(v27 + 232) = v77;
  __swift_destroy_boxed_opaque_existential_1(v107);
  return v27;
}

unint64_t sub_1D5C6590C()
{
  result = qword_1EDF2FDF8;
  if (!qword_1EDF2FDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FDF8);
  }

  return result;
}

unint64_t sub_1D5C65960()
{
  result = qword_1EDF2FE08;
  if (!qword_1EDF2FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FE08);
  }

  return result;
}

void sub_1D5C659B4()
{
  if (!qword_1EDF3BB90)
  {
    sub_1D725B76C();
    v0 = MEMORY[0x1E69D6A58];
    sub_1D5B58B84(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58]);
    sub_1D5B58B84(&qword_1EDF3BAA8, v0);
    v1 = sub_1D725AAEC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3BB90);
    }
  }
}

unint64_t sub_1D5C65A80()
{
  result = qword_1EDF25710;
  if (!qword_1EDF25710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25710);
  }

  return result;
}

unint64_t sub_1D5C65AD4()
{
  result = qword_1EDF25728;
  if (!qword_1EDF25728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25728);
  }

  return result;
}

void sub_1D5C65B28()
{
  if (!qword_1EDF256F0)
  {
    sub_1D5C65C40();
    sub_1D5C65C94();
    sub_1D5C65D98();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF256F0);
    }
  }
}

void sub_1D5C65BAC()
{
  if (!qword_1EDF1A288)
  {
    sub_1D5C65B28();
    sub_1D5B58B84(&qword_1EDF256F8, sub_1D5C65B28);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A288);
    }
  }
}

unint64_t sub_1D5C65C40()
{
  result = qword_1EDF308B8;
  if (!qword_1EDF308B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF308B8);
  }

  return result;
}

unint64_t sub_1D5C65C94()
{
  result = qword_1EDF308C0;
  if (!qword_1EDF308C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF308C0);
  }

  return result;
}

unint64_t sub_1D5C65CEC()
{
  result = qword_1EDF308A8;
  if (!qword_1EDF308A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF308A8);
  }

  return result;
}

unint64_t sub_1D5C65D44()
{
  result = qword_1EDF308B0;
  if (!qword_1EDF308B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF308B0);
  }

  return result;
}

unint64_t sub_1D5C65D98()
{
  result = qword_1EDF308C8;
  if (!qword_1EDF308C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF308C8);
  }

  return result;
}

uint64_t sub_1D5C65DF4(char a1)
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
      result = 0x6E6572646C696863;
      break;
    case 8:
      result = 0x73614D6574617473;
      break;
    case 9:
      result = 0x6E6F69746361;
      break;
    case 10:
      result = 0x614E6E6F69746361;
      break;
    case 11:
      result = 0x73657250676E6F6CLL;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x6F6974616D696E61;
      break;
    case 15:
      v3 = 0x7463656C6573;
      goto LABEL_14;
    case 16:
      result = 1701667182;
      break;
    case 17:
      v3 = 0x697661686562;
LABEL_14:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x726F000000000000;
      break;
    case 18:
      result = 0x7449656372756F73;
      break;
    case 19:
      result = 2019912806;
      break;
    case 20:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1D5C660A4()
{
  if (!qword_1EDF1A008)
  {
    sub_1D5C66670();
    sub_1D5B58B84(&qword_1EDF251F8, sub_1D5C66670);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A008);
    }
  }
}

uint64_t sub_1D5C66138(void *a1)
{
  v2 = v1;
  sub_1D5C660A4();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C66670();
  sub_1D5B58B84(&qword_1EDF251F8, sub_1D5C66670);
  sub_1D7264B0C();
  if (v1)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v2);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v5;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1D7264AFC();
  v11 = Dictionary<>.errorOnUnknownKeys.getter(v10);

  if (v11)
  {
    v12 = sub_1D726433C();
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = (v12 + 48);
      while (*v14 != 1)
      {
        v14 += 24;
        if (!--v13)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v14 - 2);
      v18 = *(v14 - 1);

      v20 = sub_1D6614FFC();
      sub_1D5E2D970();
      v2 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
      goto LABEL_10;
    }

LABEL_7:
  }

  v15 = sub_1D5C31D18(v9, 0, 0, 0, sub_1D5C660A4);
  v17 = v16;
  v53 = v15;
  v47 = xmmword_1D728CF30;
  LOBYTE(v48) = 0;
  sub_1D5C66964();
  sub_1D726431C();
  v22 = v45;
  v23 = BYTE8(v45);
  v45 = xmmword_1D7297410;
  v46 = 0;
  sub_1D5C67538();
  sub_1D726427C();
  v44 = v23;
  v40 = v47;
  v41 = v48;
  v25 = v50;
  v42 = v49;
  v43 = v22;
  LODWORD(v22) = v51 | (v52 << 16);
  v45 = xmmword_1D72BAA60;
  v46 = 0;
  sub_1D5C5C5C0();
  sub_1D726427C();
  (*(v6 + 8))(v9, v5);
  v26 = v50;
  v39 = v49;
  type metadata accessor for FormatAccessibilityNode();
  v38 = v47;
  v37 = v48;
  v5 = swift_allocObject();
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0;
  *(v5 + 98) = -2;
  swift_beginAccess();
  *(v5 + 16) = v53;
  *(v5 + 24) = v17;
  *(v5 + 32) = v43;
  *(v5 + 40) = v44;
  swift_beginAccess();
  v27 = *(v5 + 48);
  v28 = *(v5 + 56);
  v29 = *(v5 + 64);
  v30 = *(v5 + 72);
  v31 = *(v5 + 80);
  v32 = *(v5 + 88);
  v33 = *(v5 + 96) | (*(v5 + 98) << 16);
  v34 = *(&v40 + 1);
  *(v5 + 48) = v40;
  v35 = v41;
  *(v5 + 56) = v34;
  *(v5 + 64) = v35;
  v36 = v42;
  *(v5 + 72) = *(&v35 + 1);
  *(v5 + 80) = v36;
  *(v5 + 88) = v25;
  *(v5 + 96) = v22;
  *(v5 + 98) = BYTE2(v22);
  sub_1D5C67600(v27, v28, v29, v30, v31, v32, v33);
  *(v5 + 120) = v37;
  *(v5 + 104) = v38;
  *(v5 + 136) = v39;
  *(v5 + 144) = v26;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}