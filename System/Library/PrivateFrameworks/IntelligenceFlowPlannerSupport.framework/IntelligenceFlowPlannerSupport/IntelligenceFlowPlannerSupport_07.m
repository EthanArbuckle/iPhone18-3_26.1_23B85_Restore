uint64_t sub_22BEAB2A8()
{
  v2 = *v0;
  sub_22C274154();
  AST.Expr.hash(into:)();
  return sub_22C2741A4();
}

unint64_t sub_22BEAB320()
{
  result = qword_27D9083F8;
  if (!qword_27D9083F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9083F8);
  }

  return result;
}

unint64_t sub_22BEAB374()
{
  result = qword_27D908400;
  if (!qword_27D908400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908400);
  }

  return result;
}

unint64_t sub_22BEAB3C8()
{
  result = qword_27D908408;
  if (!qword_27D908408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908408);
  }

  return result;
}

unint64_t sub_22BEAB41C()
{
  result = qword_27D908410;
  if (!qword_27D908410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908410);
  }

  return result;
}

unint64_t sub_22BEAB470()
{
  result = qword_27D908418;
  if (!qword_27D908418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908418);
  }

  return result;
}

unint64_t sub_22BEAB4C4()
{
  result = qword_27D908420;
  if (!qword_27D908420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908420);
  }

  return result;
}

unint64_t sub_22BEAB518()
{
  result = qword_27D908428;
  if (!qword_27D908428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908428);
  }

  return result;
}

unint64_t sub_22BEAB56C()
{
  result = qword_27D908438;
  if (!qword_27D908438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908438);
  }

  return result;
}

unint64_t sub_22BEAB5C0()
{
  result = qword_27D908440;
  if (!qword_27D908440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908440);
  }

  return result;
}

unint64_t sub_22BEAB614()
{
  result = qword_27D908458;
  if (!qword_27D908458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908458);
  }

  return result;
}

unint64_t sub_22BEAB668()
{
  result = qword_27D908460;
  if (!qword_27D908460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908460);
  }

  return result;
}

unint64_t sub_22BEAB6BC()
{
  result = qword_27D908468;
  if (!qword_27D908468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908468);
  }

  return result;
}

unint64_t sub_22BEAB710()
{
  result = qword_27D908470;
  if (!qword_27D908470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908470);
  }

  return result;
}

unint64_t sub_22BEAB764()
{
  result = qword_27D908478;
  if (!qword_27D908478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908478);
  }

  return result;
}

unint64_t sub_22BEAB7B8()
{
  result = qword_27D908480;
  if (!qword_27D908480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908480);
  }

  return result;
}

unint64_t sub_22BEAB80C()
{
  result = qword_27D908488;
  if (!qword_27D908488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908488);
  }

  return result;
}

unint64_t sub_22BEAB860()
{
  result = qword_27D908490;
  if (!qword_27D908490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908490);
  }

  return result;
}

unint64_t sub_22BEAB8B4()
{
  result = qword_27D908498;
  if (!qword_27D908498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908498);
  }

  return result;
}

unint64_t sub_22BEAB908()
{
  result = qword_27D9084A0;
  if (!qword_27D9084A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9084A0);
  }

  return result;
}

unint64_t sub_22BEAB95C()
{
  result = qword_27D9084A8;
  if (!qword_27D9084A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9084A8);
  }

  return result;
}

uint64_t sub_22BEAB9B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F54646573726170 && a2 == 0xEE00656D614E6C6FLL;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000022C2D3770 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BEABA88(char a1)
{
  if (a1)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0x6F54646573726170;
  }
}

uint64_t sub_22BEABAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEAB9B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEABB00(uint64_t a1)
{
  v2 = sub_22BEB9BF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEABB3C(uint64_t a1)
{
  v2 = sub_22BEB9BF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEABB78(uint64_t a1)
{
  v2 = sub_22BEB9CF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEABBB4(uint64_t a1)
{
  v2 = sub_22BEB9CF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEABBF0(uint64_t a1)
{
  v2 = sub_22BEB9C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEABC2C(uint64_t a1)
{
  v2 = sub_22BEB9C48();

  return MEMORY[0x2821FE720](a1, v2);
}

void AST.CallFn.encode(to:)()
{
  sub_22BE19130();
  v2 = v1;
  v3 = sub_22BE5CE4C(&qword_27D908568, &qword_22C27AC50);
  sub_22BE179D8(v3);
  v31 = v4;
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A174();
  sub_22BE32BE4(v8);
  v9 = sub_22BE5CE4C(&qword_27D908570, &qword_22C27AC58);
  sub_22BE179D8(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE23E58();
  v34 = sub_22BE5CE4C(&qword_27D908578, &qword_22C27AC60);
  sub_22BE179D8(v34);
  v14 = v13;
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE234F4();
  v32 = *v0;
  v33 = v0[1];
  v29 = v0[3];
  v30 = v0[2];
  v18 = *(v0 + 32);
  v19 = v2[4];
  sub_22BE26950(v2, v2[3]);
  sub_22BEB9BF4();
  sub_22BE48270();
  sub_22C274234();
  if (v18 < 0)
  {
    sub_22BEB9C48();
    sub_22BE1AF00();
    sub_22C273EE4();
    sub_22BEB9C9C();
    sub_22BEC077C();
    sub_22C273FA4();
    v25 = *(v31 + 8);
    v26 = sub_22BE392D4();
    v27(v26);
    v28 = *(v14 + 8);
    v23 = sub_22BE33560();
  }

  else
  {
    sub_22BEB9CF0();
    sub_22BE27168();
    sub_22C273EE4();
    sub_22C273F54();
    v20 = sub_22BE3408C();
    v21(v20, v9);
    v22 = *(v14 + 8);
    v23 = sub_22BE1B5E0();
  }

  v24(v23);
  sub_22BE18478();
}

void AST.CallFn.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[4] < 0)
  {
    v4 = v0[2];
    v5 = v0[3];
    MEMORY[0x2318AC860](1);
    sub_22BE376A8();
    sub_22C272F44();
    sub_22C274174();
    if (v5)
    {
      sub_22BE25C08();
      sub_22C272F44();
    }

    sub_22C274174();
    sub_22BE267B8();
  }

  else
  {
    MEMORY[0x2318AC860](0);
    sub_22BE376A8();
    sub_22BE267B8();

    sub_22C272F44();
  }
}

uint64_t AST.CallFn.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_22BE25DAC();
  if (v5 < 0)
  {
    MEMORY[0x2318AC860](1);
    sub_22C272F44();
    sub_22C274174();
    if (v4)
    {
      sub_22BE376A8();
      sub_22C272F44();
    }

    sub_22C274174();
  }

  else
  {
    MEMORY[0x2318AC860](0);
    sub_22C272F44();
  }

  return sub_22C2741A4();
}

void AST.CallFn.init(from:)()
{
  sub_22BE19130();
  v3 = v2;
  v59 = v4;
  v5 = sub_22BE5CE4C(&qword_27D9085A0, &qword_22C27AC68);
  v57 = sub_22BE179D8(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE19E64();
  v9 = sub_22BE5CE4C(&qword_27D9085A8, &qword_22C27AC70);
  sub_22BE179D8(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE234F4();
  v13 = sub_22BE5CE4C(&qword_27D9085B0, &qword_22C27AC78);
  sub_22BE179D8(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE1B01C();
  v17 = v3[3];
  v18 = v3[4];
  v19 = sub_22BE38FD8();
  sub_22BE26950(v19, v20);
  sub_22BEB9BF4();
  sub_22C274214();
  if (!v0)
  {
    v64 = v3;
    sub_22BEC0924();
    v21 = sub_22C273ED4();
    sub_22BE7C5C4(v21, 0);
    if (v23 != v22 >> 1)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v30 == v31)
      {
        __break(1u);
        return;
      }

      v56 = *(v29 + v28);
      v32 = sub_22BEC0558(v24, v25, v26, v27, v28);
      sub_22BE7C5C0(v32);
      v34 = v33;
      v36 = v35;
      swift_unknownObjectRelease();
      if (v34 == v36 >> 1)
      {
        if (v56)
        {
          LOBYTE(v60) = 1;
          sub_22BEB9C48();
          sub_22BEC000C();
          sub_22C273DE4();
          sub_22BEB9D44();
          sub_22C273EB4();
          swift_unknownObjectRelease();
          v44 = sub_22BE3408C();
          v45(v44, v57);
          v46 = sub_22BE3E3DC();
          v47(v46);
          v48 = v61;
          v58 = v60;
          v49 = v62;
          v50 = v63 | 0x80;
        }

        else
        {
          sub_22BEB9CF0();
          sub_22BEC000C();
          sub_22C273DE4();
          v58 = sub_22C273E64();
          v48 = v51;
          swift_unknownObjectRelease();
          v52 = sub_22BE2399C();
          v53(v52, v9);
          v54 = sub_22BE3E3DC();
          v55(v54);
          v50 = 0;
          v49 = 0uLL;
        }

        *v59 = v58;
        *(v59 + 8) = v48;
        *(v59 + 16) = v49;
        *(v59 + 32) = v50;
        sub_22BE26B64(v3);
        goto LABEL_10;
      }
    }

    v37 = sub_22C273B34();
    sub_22BE196B4();
    v39 = v38;
    v40 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v39 = &type metadata for AST.CallFn;
    sub_22BEC0924();
    sub_22C273DF4();
    sub_22BEC0930();
    sub_22BE1B198();
    v41 = *MEMORY[0x277D84160];
    sub_22BE1BC24(v37);
    (*(v42 + 104))(v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_22BE37778();
    v43(v1, v13);
    v3 = v64;
  }

  sub_22BE26B64(v3);
LABEL_10:
  sub_22BE18478();
}

uint64_t sub_22BEAC5E0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  sub_22C274154();
  AST.CallFn.hash(into:)();
  return sub_22C2741A4();
}

uint64_t AST.ParameterKey.parameterName.getter()
{
  v1 = *v0;
  if (*(v0 + 24) >= 2u)
  {
    sub_22BEC07E8();
    v9 = sub_22C273FD4();
    MEMORY[0x2318AB8D0](v9);

    MEMORY[0x2318AB8D0](93, 0xE100000000000000);
  }

  else
  {
    v4 = v0 + 1;
    v3 = v0[1];
    v2 = v4[1];
    v5 = sub_22BE19454();
    sub_22BE6355C(v5, v6, v7, v8);
  }

  return sub_22BE19454();
}

uint64_t AST.ParameterKey.parameterLhsIndex.getter()
{
  if (*(v0 + 24) == 1)
  {
    return *(v0 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t AST.ParameterKey.updatingName(to:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result;
  v7 = *(v3 + 24);
  v8 = *(v3 + 24);
  if (*(v3 + 24) && (v8 = *(v3 + 16), v7 != 1))
  {
    v5 = *v3;
    a2 = *(v3 + 8);
  }

  else
  {
  }

  *a3 = v5;
  *(a3 + 8) = a2;
  *(a3 + 16) = v8;
  *(a3 + 24) = v7;
  return result;
}

void static AST.ParameterKey.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      v39 = v2 == v6 && v3 == v7;
      if (v39 || (sub_22BE29454(), sub_22BE48850(), (sub_22C274014() & 1) != 0))
      {
        v40 = sub_22BEBFF00();
        sub_22BE6355C(v40, v41, v42, 0);
        v43 = sub_22BE22DA0();
        sub_22BE6355C(v43, v44, v45, 0);
        v46 = sub_22BE22DA0();
        sub_22BE635AC(v46, v47, v48, 0);
        v49 = sub_22BEBFF00();
        sub_22BE635AC(v49, v50, v51, 0);
        goto LABEL_16;
      }

      sub_22BE29454();
      sub_22BE48850();
      sub_22C274014();
      v65 = sub_22BEBFF00();
      sub_22BE6355C(v65, v66, v67, 0);
      v68 = sub_22BE22DA0();
      sub_22BE6355C(v68, v69, v70, 0);
      v71 = sub_22BE22DA0();
      sub_22BE635AC(v71, v72, v73, 0);
      v61 = sub_22BEBFF00();
      v64 = 0;
LABEL_25:
      sub_22BE635AC(v61, v62, v63, v64);
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if (v5 != 1)
  {
    if (v9 == 2)
    {
      v24 = sub_22BE22DA0();
      sub_22BE635AC(v24, v25, v26, 2u);
      v27 = sub_22BEBFF00();
      sub_22BE635AC(v27, v28, v29, 2u);
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v9 != 1)
  {
LABEL_11:
    v23 = a1[1];

LABEL_15:
    v30 = sub_22BEBFF00();
    sub_22BE6355C(v30, v31, v32, v9);
    v33 = sub_22BE22DA0();
    sub_22BE635AC(v33, v34, v35, v5);
    v36 = sub_22BEBFF00();
    sub_22BE635AC(v36, v37, v38, v9);
    goto LABEL_16;
  }

  if (v2 != v6 || v3 != v7)
  {
    sub_22BE29454();
    sub_22BE48850();
    if ((sub_22C274014() & 1) == 0)
    {
      sub_22BE29454();
      sub_22BE48850();
      sub_22C274014();
      v52 = sub_22BEBFF00();
      sub_22BE6355C(v52, v53, v54, 1u);
      v55 = sub_22BE22DA0();
      sub_22BE6355C(v55, v56, v57, 1u);
      v58 = sub_22BE22DA0();
      sub_22BE635AC(v58, v59, v60, 1u);
      v61 = sub_22BEBFF00();
      v64 = 1;
      goto LABEL_25;
    }
  }

  v11 = sub_22BEBFF00();
  sub_22BE6355C(v11, v12, v13, 1u);
  v14 = sub_22BE22DA0();
  sub_22BE6355C(v14, v15, v16, 1u);
  v17 = sub_22BE22DA0();
  sub_22BE635AC(v17, v18, v19, 1u);
  v20 = sub_22BEBFF00();
  sub_22BE635AC(v20, v21, v22, 1u);
LABEL_16:
  sub_22BE267B8();
}

void static AST.ParameterKey.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v5 != 1)
    {
      if (v9 == 2)
      {
        v25 = sub_22BE28728();
        sub_22BE635AC(v25, v26, v27, 2u);
        v28 = sub_22BEBFFAC();
        sub_22BE635AC(v28, v29, v30, 2u);
        goto LABEL_20;
      }

LABEL_13:
      v31 = sub_22BEBFFAC();
      sub_22BE6355C(v31, v32, v33, v9);
      v34 = sub_22BE28728();
      sub_22BE635AC(v34, v35, v36, v5);
      v37 = sub_22BEBFFAC();
      sub_22BE635AC(v37, v38, v39, v9);
      goto LABEL_20;
    }

    if (v9 == 1)
    {
      v10 = *a1;
      if (v2 == v6 && v3 == v7)
      {
        sub_22BE6355C(v10, v3, v8, 1u);
        v54 = sub_22BE28728();
        sub_22BE6355C(v54, v55, v56, 1u);
        v57 = sub_22BE28728();
        sub_22BE635AC(v57, v58, v59, 1u);
        v60 = sub_22BE191CC();
        sub_22BE635AC(v60, v61, v8, 1u);
      }

      else
      {
        sub_22BEC06EC();
        v12 = sub_22BEBFFAC();
        sub_22BE6355C(v12, v13, v14, 1u);
        v15 = sub_22BE28728();
        sub_22BE6355C(v15, v16, v17, 1u);
        v18 = sub_22BE28728();
        sub_22BE635AC(v18, v19, v20, 1u);
        v21 = sub_22BEBFFAC();
        sub_22BE635AC(v21, v22, v23, 1u);
      }

      goto LABEL_20;
    }

LABEL_10:
    v24 = *(a1 + 8);

    goto LABEL_13;
  }

  if (*(a2 + 24))
  {
    goto LABEL_10;
  }

  v40 = *a1;
  if (v2 == v6 && v3 == v7)
  {
    sub_22BE6355C(v40, v3, v8, 0);
    v62 = sub_22BE28728();
    sub_22BE6355C(v62, v63, v64, 0);
    v65 = sub_22BE28728();
    sub_22BE635AC(v65, v66, v67, 0);
    v68 = sub_22BE191CC();
    sub_22BE635AC(v68, v69, v8, 0);
  }

  else
  {
    sub_22BEC06EC();
    v42 = sub_22BEBFFAC();
    sub_22BE6355C(v42, v43, v44, 0);
    v45 = sub_22BE28728();
    sub_22BE6355C(v45, v46, v47, 0);
    v48 = sub_22BE28728();
    sub_22BE635AC(v48, v49, v50, 0);
    v51 = sub_22BEBFFAC();
    sub_22BE635AC(v51, v52, v53, 0);
  }

LABEL_20:
  sub_22BE267B8();
}

uint64_t sub_22BEACB34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xED0000656D614E72;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x800000022C2D3790 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x756F6D796E6F6E61 && a2 == 0xE900000000000073)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22BEACC5C(char a1)
{
  if (!a1)
  {
    return 0x6574656D61726170;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0x756F6D796E6F6E61;
}

uint64_t sub_22BEACCC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_22BE19114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    sub_22BE19114();
    sub_22BE417C8();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BEACD68(uint64_t a1)
{
  v2 = sub_22BEB9DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEACDA4(uint64_t a1)
{
  v2 = sub_22BEB9DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEACDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEACB34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEACE10(uint64_t a1)
{
  v2 = sub_22BEB9D98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEACE4C(uint64_t a1)
{
  v2 = sub_22BEB9D98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEACE88(uint64_t a1)
{
  v2 = sub_22BEB9E40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEACEC4(uint64_t a1)
{
  v2 = sub_22BEB9E40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEACF00(uint64_t a1)
{
  v2 = sub_22BEB9E94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEACF3C(uint64_t a1)
{
  v2 = sub_22BEB9E94();

  return MEMORY[0x2821FE720](a1, v2);
}

void AST.ParameterKey.encode(to:)()
{
  sub_22BE19130();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D9085C0, &qword_22C27AC80);
  sub_22BE179D8(v4);
  v36 = v5;
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE2BA30(v9, v33);
  v10 = sub_22BE5CE4C(&qword_27D9085C8, &qword_22C27AC88);
  sub_22BE179D8(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1A8B4();
  v14 = sub_22BE5CE4C(&qword_27D9085D0, &qword_22C27AC90);
  sub_22BE179D8(v14);
  v35 = v15;
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1B01C();
  v19 = sub_22BE5CE4C(&qword_27D9085D8, &qword_22C27AC98);
  sub_22BE179D8(v19);
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE25CD0();
  v37 = v0[1];
  v38 = *v0;
  v34 = v0[2];
  v23 = *(v0 + 24);
  v24 = v3[4];
  sub_22BE26950(v3, v3[3]);
  sub_22BEB9D98();
  sub_22BEC046C();
  sub_22C274234();
  if (v23)
  {
    if (v23 != 1)
    {
      sub_22BE39E24();
      sub_22BEB9DEC();
      sub_22C273EE4();
      sub_22C273F94();
      v30 = *(v36 + 8);
      v31 = sub_22BE25C08();
      v32(v31);
      sub_22BE1B940();
      v28 = sub_22BE200D4();
      goto LABEL_9;
    }

    sub_22BEB9E40();
    sub_22BE27168();
    sub_22C273EE4();
    sub_22C273F54();
    if (!v1)
    {
      sub_22C273F94();
    }

    sub_22BE37778();
    v25 = sub_22BE194C4();
  }

  else
  {
    sub_22BEB9E94();
    sub_22BE27168();
    sub_22C273EE4();
    sub_22C273F54();
    v27 = *(v35 + 8);
    v25 = sub_22BE291B0();
  }

  v26(v25);
  v28 = sub_22BEBFED4();
LABEL_9:
  v29(v28);
  sub_22BE18478();
}

uint64_t AST.ParameterKey.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      v3 = v0[2];
      MEMORY[0x2318AC860](1);
      sub_22BE1AB74();
      sub_22C272F44();
      v4 = v3;
    }

    else
    {
      MEMORY[0x2318AC860](2);
      v4 = v1;
    }

    return MEMORY[0x2318AC860](v4);
  }

  else
  {
    MEMORY[0x2318AC860](0);
    sub_22BE1AB74();

    return sub_22C272F44();
  }
}

uint64_t AST.ParameterKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_22BE25DAC();
  if (v4)
  {
    if (v4 == 1)
    {
      MEMORY[0x2318AC860](1);
      sub_22BE376A8();
      sub_22C272F44();
      v5 = v3;
    }

    else
    {
      MEMORY[0x2318AC860](2);
      v5 = sub_22BEC03B0();
    }

    MEMORY[0x2318AC860](v5);
  }

  else
  {
    v6 = sub_22BEC0490();
    MEMORY[0x2318AC860](v6);
    sub_22BE376A8();
    sub_22C272F44();
  }

  return sub_22C2741A4();
}

void AST.ParameterKey.init(from:)()
{
  sub_22BE19130();
  v3 = v2;
  v72 = v4;
  v5 = sub_22BE5CE4C(&qword_27D908600, &qword_22C27ACA0);
  v70 = sub_22BE179D8(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE29250(v9, v67);
  v73 = sub_22BE5CE4C(&qword_27D908608, &qword_22C27ACA8);
  sub_22BE179D8(v73);
  v71 = v10;
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE19E64();
  v14 = sub_22BE5CE4C(&qword_27D908610, &qword_22C27ACB0);
  sub_22BE179D8(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE23E58();
  v18 = sub_22BE5CE4C(&qword_27D908618, &qword_22C27ACB8);
  sub_22BE179D8(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE25CD0();
  v24 = v3[3];
  v25 = v3[4];
  v74 = v3;
  v26 = sub_22BE18944();
  sub_22BE26950(v26, v27);
  sub_22BEB9D98();
  sub_22BEC046C();
  sub_22C274214();
  if (!v0)
  {
    v75 = v20;
    v69 = v1;
    v28 = sub_22C273ED4();
    sub_22BE7C5C4(v28, 0);
    if (v30 != v29 >> 1)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v33 == v34)
      {
        __break(1u);
        return;
      }

      v35 = v18;
      v36 = *(v32 + v31);
      sub_22BE7C5C0(v31 + 1);
      v38 = v37;
      v40 = v39;
      swift_unknownObjectRelease();
      if (v38 == v40 >> 1)
      {
        if (v36)
        {
          if (v36 == 1)
          {
            sub_22BEB9E40();
            sub_22BE33B04();
            sub_22C273DE4();
            v41 = v72;
            v68 = 1;
            v48 = sub_22C273E64();
            v50 = v49;
            v60 = sub_22C273EA4();
            swift_unknownObjectRelease();
            v61 = *(v71 + 8);
            v62 = sub_22BE1AB74();
            v63(v62);
            v64 = sub_22BE41EAC();
            v65(v64);
            v66 = v74;
          }

          else
          {
            sub_22BE39E24();
            sub_22BEB9DEC();
            sub_22BE33B04();
            sub_22C273DE4();
            v66 = v74;
            v41 = v72;
            v68 = v36;
            v54 = sub_22C273EA4();
            swift_unknownObjectRelease();
            v55 = sub_22BE3408C();
            v56(v55, v70);
            v57 = *(v75 + 8);
            v58 = sub_22BE3AF28();
            v59(v58);
            v50 = 0;
            v60 = 0;
            v48 = v54;
          }
        }

        else
        {
          sub_22BEB9E94();
          sub_22BE33B04();
          sub_22C273DE4();
          v68 = 0;
          v66 = v74;
          v48 = sub_22C273E64();
          v50 = v51;
          swift_unknownObjectRelease();
          v52 = sub_22BE2399C();
          v53(v52, v14);
          (*(v75 + 8))(v1, v35);
          v60 = 0;
          v41 = v72;
        }

        *v41 = v48;
        *(v41 + 8) = v50;
        *(v41 + 16) = v60;
        *(v41 + 24) = v68;
        sub_22BE26B64(v66);
        goto LABEL_12;
      }

      v18 = v35;
    }

    v42 = sub_22C273B34();
    sub_22BE196B4();
    v44 = v43;
    v45 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v44 = &type metadata for AST.ParameterKey;
    sub_22C273DF4();
    sub_22BE1B198();
    v46 = *MEMORY[0x277D84160];
    sub_22BE1BC24(v42);
    (*(v47 + 104))(v44);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v75 + 8))(v69, v18);
  }

  sub_22BE26B64(v74);
LABEL_12:
  sub_22BE18478();
}

BOOL sub_22BEADB90(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v13 = a4;
  v10[0] = a5;
  v10[1] = a6;
  v10[2] = a7;
  v11 = a8;
  static AST.ParameterKey.< infix(_:_:)(v10, v12);
  return (v8 & 1) == 0;
}

BOOL sub_22BEADBF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v13 = a4;
  v10[0] = a5;
  v10[1] = a6;
  v10[2] = a7;
  v11 = a8;
  static AST.ParameterKey.< infix(_:_:)(v12, v10);
  return (v8 & 1) == 0;
}

uint64_t sub_22BEADC7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v13 = a4;
  v10[0] = a5;
  v10[1] = a6;
  v10[2] = a7;
  v11 = a8;
  static AST.ParameterKey.< infix(_:_:)(v10, v12);
  return v8 & 1;
}

uint64_t sub_22BEADCC8()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_22C274154();
  AST.ParameterKey.hash(into:)();
  return sub_22C2741A4();
}

uint64_t AST.UpdateParameters.statementId.getter()
{
  v0 = sub_22C26E684();
  sub_22BE18000(v0);
  v2 = *(v1 + 16);
  v3 = sub_22BE19454();

  return v4(v3);
}

uint64_t AST.UpdateParameters.statementId.setter()
{
  sub_22BE17BC4();
  v0 = sub_22C26E684();
  sub_22BE18000(v0);
  v2 = *(v1 + 40);
  v3 = sub_22BE18944();

  return v4(v3);
}

uint64_t AST.UpdateParameters.parameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for AST.UpdateParameters() + 20));
}

uint64_t AST.UpdateParameters.parameters.setter()
{
  sub_22BE17BC4();
  v2 = *(type metadata accessor for AST.UpdateParameters() + 20);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t (*AST.UpdateParameters.parameters.modify())()
{
  sub_22BE17BC4();
  v0 = *(type metadata accessor for AST.UpdateParameters() + 20);
  return nullsub_1;
}

uint64_t AST.UpdateParameters.init(statementId:parameters:)()
{
  sub_22BE18378();
  v2 = v1;
  v3 = sub_22C26E684();
  sub_22BE18000(v3);
  v5 = *(v4 + 32);
  v6 = sub_22BE1804C();
  v7(v6);
  result = type metadata accessor for AST.UpdateParameters();
  *(v2 + *(result + 20)) = v0;
  return result;
}

uint64_t sub_22BEADF18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BEADFEC(char a1)
{
  if (a1)
  {
    return 0x6574656D61726170;
  }

  else
  {
    return 0x6E656D6574617473;
  }
}

uint64_t sub_22BEAE038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEADF18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEAE060(uint64_t a1)
{
  v2 = sub_22BEB9EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEAE09C(uint64_t a1)
{
  v2 = sub_22BEB9EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AST.UpdateParameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22BE5CE4C(&qword_27D908620, &qword_22C27ACC0);
  sub_22BE179D8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE19E64();
  v11 = a1[4];
  sub_22BE26950(a1, a1[3]);
  sub_22BEB9EE8();
  sub_22C274234();
  sub_22C26E684();
  sub_22BE17BAC();
  sub_22BEBFCD4(v12);
  sub_22BEC09B4();
  if (!v2)
  {
    v17 = *(v3 + *(type metadata accessor for AST.UpdateParameters() + 20));
    sub_22BE5CE4C(&qword_27D908630, &qword_22C27ACC8);
    sub_22BEB9F3C(&unk_27D908638);
    sub_22BEC09B4();
  }

  v13 = *(v7 + 8);
  v14 = sub_22BE1AB74();
  return v15(v14);
}

uint64_t AST.UpdateParameters.hash(into:)()
{
  sub_22BE17BC4();
  sub_22C26E684();
  sub_22BE17BAC();
  sub_22BEBFCD4(v2);
  sub_22BE33FD8();
  sub_22C272EE4();
  v3 = *(v1 + *(type metadata accessor for AST.UpdateParameters() + 20));

  return sub_22BEB8A6C(v0, v3);
}

uint64_t AST.UpdateParameters.hashValue.getter()
{
  sub_22BE25DAC();
  sub_22C26E684();
  sub_22BE17BAC();
  sub_22BEBFCD4(v1);
  sub_22C272EE4();
  updated = type metadata accessor for AST.UpdateParameters();
  sub_22BEB8A6C(v4, *(v0 + *(updated + 20)));
  return sub_22C2741A4();
}

void AST.UpdateParameters.init(from:)()
{
  sub_22BE19130();
  v2 = v1;
  v26 = sub_22C26E684();
  v3 = sub_22BE179D8(v26);
  v25 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE1AB80();
  v7 = sub_22BE5CE4C(&qword_27D908648, &qword_22C27ACD0);
  sub_22BE179D8(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE23E58();
  updated = type metadata accessor for AST.UpdateParameters();
  v12 = sub_22BE18000(updated);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE179EC();
  v17 = v16 - v15;
  v18 = v2[4];
  sub_22BE26950(v2, v2[3]);
  sub_22BEB9EE8();
  sub_22C274214();
  if (v0)
  {
    sub_22BE26B64(v2);
  }

  else
  {
    sub_22BE17BAC();
    sub_22BEBFCD4(v19);
    sub_22C273EB4();
    v20 = *(v25 + 32);
    v21 = sub_22BE392D4();
    v22(v21);
    sub_22BE5CE4C(&qword_27D908630, &qword_22C27ACC8);
    sub_22BEB9F3C(&unk_27D908650);
    sub_22C273EB4();
    v23 = sub_22BE25424();
    v24(v23);
    *(v17 + *(updated + 20)) = v27;
    sub_22BE258A8();
    sub_22BEBFD70();
    sub_22BE26B64(v2);
    sub_22BE35AF4();
    sub_22BEBFDC4();
  }

  sub_22BE18478();
}

uint64_t sub_22BEAE72C(uint64_t a1, uint64_t a2)
{
  sub_22C274154();
  sub_22C26E684();
  sub_22BEBFCD4(&unk_28107F2F0);
  sub_22C272EE4();
  sub_22BEB8A6C(v5, *(v2 + *(a2 + 20)));
  return sub_22C2741A4();
}

unint64_t AST.UpdateExpr.expr.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return sub_22BEA7680(v2);
}

unint64_t AST.UpdateExpr.expr.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_22BE63574(*(v1 + 8));
  *(v1 + 8) = v2;
  return result;
}

_BYTE *AST.UpdateExpr.init(kind:expr:parameterIndex:)@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t static AST.UpdateExpr.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v3 = *(a2 + 1);
    v6 = *(a1 + 1);
    sub_22BEA7680(v6);
    sub_22BEA7680(v3);
    static AST.Expr.== infix(_:_:)();
    v2 = v4;
    sub_22BE63574(v3);
    sub_22BE63574(v6);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_22BEAE90C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1919973477 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BEAE9DC(char a1)
{
  if (a1)
  {
    return 1919973477;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_22BEAEA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEAE90C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEAEA2C(uint64_t a1)
{
  v2 = sub_22BEBA064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEAEA68(uint64_t a1)
{
  v2 = sub_22BEBA064();

  return MEMORY[0x2821FE720](a1, v2);
}

void AST.UpdateExpr.encode(to:)()
{
  sub_22BE19130();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D908660, &qword_22C27ACD8);
  sub_22BE179D8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE19E64();
  v10 = *v0;
  v11 = *(v0 + 1);
  v12 = *(v3 + 24);
  v13 = *(v3 + 32);
  v14 = sub_22BE1AEE4();
  sub_22BE26950(v14, v15);
  sub_22BEBA064();
  sub_22C274234();
  sub_22BEBA0B8();
  sub_22C273FA4();
  if (!v1)
  {
    sub_22BEA7680(v11);
    sub_22BEAB3C8();
    sub_22C273FA4();
    sub_22BE63574(v11);
  }

  v16 = *(v6 + 8);
  v17 = sub_22BE1AB74();
  v18(v17);
  sub_22BE18478();
}

void AST.UpdateExpr.hash(into:)()
{
  v1 = *(v0 + 1);
  MEMORY[0x2318AC860](*v0);
  sub_22BEC03B0();
  AST.Expr.hash(into:)();
}

uint64_t AST.UpdateExpr.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_22BE25DAC();
  v3 = sub_22BEC03B0();
  MEMORY[0x2318AC860](v3);
  AST.Expr.hash(into:)();
  return sub_22C2741A4();
}

void AST.UpdateExpr.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_22BE19130();
  v15 = v14;
  v17 = v16;
  v18 = sub_22BE5CE4C(&qword_27D908678, &qword_22C27ACE0);
  sub_22BE179D8(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE234F4();
  v24 = v15[4];
  sub_22BE26950(v15, v15[3]);
  sub_22BEBA064();
  sub_22BE48270();
  sub_22C274214();
  if (!v13)
  {
    sub_22BEBA10C();
    sub_22BE1AF00();
    sub_22C273EB4();
    sub_22BEB997C();
    sub_22BE1AF00();
    sub_22C273EB4();
    v25 = *(v20 + 8);
    v26 = sub_22BE33560();
    v27(v26);
    *v17 = a13;
    *(v17 + 8) = v28;
  }

  sub_22BE26B64(v15);
  sub_22BE18478();
}

uint64_t sub_22BEAEE4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E65707061 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6563616C706572 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BEAEF10(char a1)
{
  if (a1)
  {
    return 0x6563616C706572;
  }

  else
  {
    return 0x646E65707061;
  }
}

uint64_t sub_22BEAEF80()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_22C274154();
  MEMORY[0x2318AC860](v1);
  AST.Expr.hash(into:)();
  return sub_22C2741A4();
}

uint64_t sub_22BEAEFE0(uint64_t a1)
{
  v2 = sub_22BEBA208();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEAF01C(uint64_t a1)
{
  v2 = sub_22BEBA208();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEAF060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEAEE4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEAF088(uint64_t a1)
{
  v2 = sub_22BEBA160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEAF0C4(uint64_t a1)
{
  v2 = sub_22BEBA160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEAF100(uint64_t a1)
{
  v2 = sub_22BEBA1B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEAF13C(uint64_t a1)
{
  v2 = sub_22BEBA1B4();

  return MEMORY[0x2821FE720](a1, v2);
}

void AST.UpdateKind.encode(to:)()
{
  sub_22BE19130();
  v2 = v1;
  v3 = sub_22BE5CE4C(&qword_27D908688, &qword_22C27ACE8);
  sub_22BE179D8(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE20168(v7, v26);
  v8 = sub_22BE5CE4C(&qword_27D908690, &qword_22C27ACF0);
  sub_22BE179D8(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE23E58();
  v12 = sub_22BE5CE4C(&qword_27D908698, &qword_22C27ACF8);
  sub_22BE179D8(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1A8B4();
  v18 = *v0;
  v19 = v2[4];
  sub_22BE26950(v2, v2[3]);
  sub_22BEBA160();
  sub_22C274234();
  v20 = (v14 + 8);
  if (v18)
  {
    sub_22BE486C4();
    sub_22BEBA1B4();
    sub_22BE1B934();
    sub_22C273EE4();
    v21 = sub_22BE2399C();
  }

  else
  {
    sub_22BEBA208();
    sub_22BE1B934();
    sub_22C273EE4();
    v21 = sub_22BE3408C();
  }

  v22(v21);
  v23 = *v20;
  v24 = sub_22BE38FD8();
  v25(v24);
  sub_22BE18478();
}

uint64_t AST.UpdateKind.hashValue.getter()
{
  v1 = *v0;
  sub_22BE25DAC();
  v2 = sub_22BEC03B0();
  MEMORY[0x2318AC860](v2);
  return sub_22C2741A4();
}

void AST.UpdateKind.init(from:)()
{
  sub_22BE19130();
  v3 = v2;
  v56 = v4;
  v58 = sub_22BE5CE4C(&qword_27D9086B8, &qword_22C27AD00);
  sub_22BE179D8(v58);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1B72C();
  v8 = sub_22BE5CE4C(&qword_27D9086C0, &qword_22C27AD08);
  sub_22BE179D8(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE234F4();
  v12 = sub_22BE5CE4C(&qword_27D9086C8, &qword_22C27AD10);
  sub_22BE179D8(v12);
  v57 = v13;
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE1B01C();
  v18 = v3[3];
  v17 = v3[4];
  v19 = sub_22BE36658();
  sub_22BE26950(v19, v20);
  sub_22BEBA160();
  sub_22C274214();
  if (!v0)
  {
    v59 = v3;
    sub_22BEC0924();
    v21 = sub_22C273ED4();
    sub_22BE7C5C4(v21, 0);
    if (v23 != v22 >> 1)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v30 == v31)
      {
        __break(1u);
        return;
      }

      v32 = *(v29 + v28);
      v33 = sub_22BEC0558(v24, v25, v26, v27, v28);
      sub_22BE7C5C0(v33);
      v35 = v34;
      v37 = v36;
      swift_unknownObjectRelease();
      if (v35 == v37 >> 1)
      {
        if (v32)
        {
          sub_22BE486C4();
          sub_22BEBA1B4();
          sub_22BEC000C();
          sub_22C273DE4();
          v38 = v56;
          v39 = v57;
          swift_unknownObjectRelease();
          v40 = sub_22BE28D70();
          v42 = v58;
        }

        else
        {
          sub_22BEBA208();
          sub_22BEC000C();
          sub_22C273DE4();
          v38 = v56;
          v39 = v57;
          swift_unknownObjectRelease();
          v40 = sub_22BE28D70();
          v42 = v8;
        }

        v41(v40, v42);
        v53 = *(v39 + 8);
        v54 = sub_22BE25C08();
        v55(v54);
        *v38 = v32;
        sub_22BE26B64(v59);
        goto LABEL_10;
      }
    }

    v43 = sub_22C273B34();
    sub_22BE196B4();
    v45 = v44;
    v46 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v45 = &type metadata for AST.UpdateKind;
    sub_22BEC0924();
    sub_22C273DF4();
    sub_22BEC0930();
    sub_22BE1B198();
    v47 = *MEMORY[0x277D84160];
    sub_22BE1BC24(v43);
    v49 = *(v48 + 104);
    v50 = sub_22BEC0360();
    v51(v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_22BE1B940();
    v52(v1, v12);
    v3 = v59;
  }

  sub_22BE26B64(v3);
LABEL_10:
  sub_22BE18478();
}

uint64_t static AST.PickType.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      return 1;
    }

    return _s30IntelligenceFlowPlannerSupport20GlobalToolIdentifierV6toolId09deviceIdsI0017representsBuiltInF0ACSS_SSSgSbtcfcfA1__0();
  }

  if (a4)
  {
    return _s30IntelligenceFlowPlannerSupport20GlobalToolIdentifierV6toolId09deviceIdsI0017representsBuiltInF0ACSS_SSSgSbtcfcfA1__0();
  }

  return a1 == a3;
}

uint64_t sub_22BEAF880(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BEAF944(char a1)
{
  sub_22BE25DAC();
  MEMORY[0x2318AC860](a1 & 1);
  return sub_22C2741A4();
}

uint64_t sub_22BEAF984(char a1)
{
  if (a1)
  {
    return 1701736302;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_22BEAF9B0()
{
  v1 = *v0;
  sub_22C274154();
  v2 = sub_22BEC03B0();
  MEMORY[0x2318AC860](v2);
  return sub_22C2741A4();
}

uint64_t sub_22BEAF9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEAF880(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEAFA20(uint64_t a1)
{
  v2 = sub_22BEBA25C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEAFA5C(uint64_t a1)
{
  v2 = sub_22BEBA25C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEAFA98(uint64_t a1)
{
  v2 = sub_22BEBA304();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEAFAD4(uint64_t a1)
{
  v2 = sub_22BEBA304();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEAFB10(uint64_t a1)
{
  v2 = sub_22BEBA2B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEAFB4C(uint64_t a1)
{
  v2 = sub_22BEBA2B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void AST.PickType.encode(to:)()
{
  sub_22BE19130();
  v26 = v1;
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D9086D0, &qword_22C27AD18);
  sub_22BE179D8(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A8B4();
  v8 = sub_22BE5CE4C(&qword_27D9086D8, &qword_22C27AD20);
  sub_22BE179D8(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE19E64();
  v12 = sub_22BE5CE4C(&qword_27D9086E0, &qword_22C27AD28);
  sub_22BE179D8(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE23E58();
  v19 = *(v3 + 24);
  v18 = *(v3 + 32);
  v20 = sub_22BE261AC();
  sub_22BE26950(v20, v21);
  sub_22BEBA25C();
  sub_22C274234();
  if (v26)
  {
    sub_22BE486C4();
    sub_22BEBA2B0();
    sub_22BE1B934();
    sub_22C273EE4();
    v22 = sub_22BEC0304();
    v23(v22);
  }

  else
  {
    sub_22BEBA304();
    sub_22BE1B934();
    sub_22C273EE4();
    sub_22C273F94();
    v24 = sub_22BE2399C();
    v25(v24, v8);
  }

  (*(v14 + 8))(v0, v12);
  sub_22BE18478();
}

uint64_t AST.PickType.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
    MEMORY[0x2318AC860](0);
  }

  return MEMORY[0x2318AC860](v3);
}

uint64_t AST.PickType.hashValue.getter(uint64_t a1, char a2)
{
  sub_22BE25DAC();
  if ((a2 & 1) == 0)
  {
    v3 = sub_22BEC0490();
    MEMORY[0x2318AC860](v3);
  }

  v4 = sub_22BEC03B0();
  MEMORY[0x2318AC860](v4);
  return sub_22C2741A4();
}

void AST.PickType.init(from:)()
{
  sub_22BE19130();
  v3 = v2;
  v55 = sub_22BE5CE4C(&qword_27D908700, &qword_22C27AD30);
  sub_22BE179D8(v55);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE234F4();
  v7 = sub_22BE5CE4C(&qword_27D908708, &qword_22C27AD38);
  sub_22BE179D8(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE2C64C();
  v11 = sub_22BE5CE4C(&qword_27D908710, &qword_22C27AD40);
  sub_22BE179D8(v11);
  v56 = v12;
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE25CD0();
  v16 = v3[3];
  v17 = v3[4];
  v18 = sub_22BE25C08();
  sub_22BE26950(v18, v19);
  sub_22BEBA25C();
  sub_22BEC046C();
  sub_22C274214();
  if (!v0)
  {
    v20 = sub_22C273ED4();
    sub_22BE7C5C4(v20, 0);
    if (v22 == v21 >> 1)
    {
      goto LABEL_9;
    }

    sub_22BE38A18();
    sub_22BE3E9D8();
    if (v29 == v30)
    {
      __break(1u);
      return;
    }

    v31 = *(v28 + v27);
    v32 = sub_22BE39FEC(v23, v24, v25, v26, v27);
    sub_22BE7C5C0(v32);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 != v36 >> 1)
    {
LABEL_9:
      v37 = sub_22C273B34();
      sub_22BE196B4();
      v39 = v38;
      v40 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
      *v39 = &type metadata for AST.PickType;
      sub_22C273DF4();
      sub_22BEC0930();
      sub_22BE1B198();
      v41 = *MEMORY[0x277D84160];
      sub_22BE1BC24(v37);
      v43 = *(v42 + 104);
      v44 = sub_22BEC0360();
      v45(v44);
      swift_willThrow();
      swift_unknownObjectRelease();
      v46 = *(v56 + 8);
      v47 = sub_22BE29264();
      v48(v47);
    }

    else
    {
      if (v31)
      {
        sub_22BE486C4();
        sub_22BEBA2B0();
        sub_22C273DE4();
        swift_unknownObjectRelease();
        sub_22BE1B940();
        v49(v1, v55);
        v50 = *(v56 + 8);
        v51 = sub_22BE29264();
      }

      else
      {
        sub_22BEBA304();
        sub_22C273DE4();
        sub_22C273EA4();
        swift_unknownObjectRelease();
        v53 = sub_22BE25EE4();
        v54(v53);
        v51 = sub_22BEC04D8();
      }

      v52(v51);
    }
  }

  sub_22BE26B64(v3);
  sub_22BE18478();
}

void sub_22BEB032C(uint64_t a1@<X8>)
{
  AST.PickType.init(from:)();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4 & 1;
  }
}

void sub_22BEB0360()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  AST.PickType.encode(to:)();
}

uint64_t sub_22BEB0398()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_22C274154();
  if (v2)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x2318AC860](0);
  }

  MEMORY[0x2318AC860](v1);
  return sub_22C2741A4();
}

uint64_t sub_22BEB03F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819047278 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684631414 && a2 == 0xE400000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1819242338 && a2 == 0xE400000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7630441 && a2 == 0xE300000000000000;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C62756F64 && a2 == 0xE600000000000000;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
            if (v10 || (sub_22C274014() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7961727261 && a2 == 0xE500000000000000;
              if (v11 || (sub_22C274014() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 1952672100 && a2 == 0xE400000000000000;
                if (v12 || (sub_22C274014() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 1836412517 && a2 == 0xE400000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_22C274014();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22BEB06B8(char a1)
{
  result = 1819047278;
  switch(a1)
  {
    case 1:
      result = 1684631414;
      break;
    case 2:
      result = 1819242338;
      break;
    case 3:
      result = 7630441;
      break;
    case 4:
      result = 0x656C62756F64;
      break;
    case 5:
      result = 0x676E69727473;
      break;
    case 6:
      result = 0x7961727261;
      break;
    case 7:
      result = 1952672100;
      break;
    case 8:
      result = 1836412517;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BEB0768(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_22BE2BC78();
    sub_22BE417C8();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BEB07C8()
{
  sub_22BE25DAC();
  v0 = sub_22BEC0490();
  MEMORY[0x2318AC860](v0);
  return sub_22C2741A4();
}

uint64_t sub_22BEB0800(uint64_t a1)
{
  v2 = sub_22BEBA454();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB083C(uint64_t a1)
{
  v2 = sub_22BEBA454();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB0878(uint64_t a1)
{
  v2 = sub_22BEBA5A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB08B4(uint64_t a1)
{
  v2 = sub_22BEBA5A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB08F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEB03F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEB0920@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BEB06B0();
  *a1 = result;
  return result;
}

uint64_t sub_22BEB0948(uint64_t a1)
{
  v2 = sub_22BEBA358();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB0984(uint64_t a1)
{
  v2 = sub_22BEBA358();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB09C0(uint64_t a1)
{
  v2 = sub_22BEBA400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB09FC(uint64_t a1)
{
  v2 = sub_22BEBA400();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB0A38(uint64_t a1)
{
  v2 = sub_22BEBA4FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB0A74(uint64_t a1)
{
  v2 = sub_22BEBA4FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB0AB0(uint64_t a1)
{
  v2 = sub_22BEBA3AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB0AEC(uint64_t a1)
{
  v2 = sub_22BEBA3AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB0B28(uint64_t a1)
{
  v2 = sub_22BEBA550();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB0B64(uint64_t a1)
{
  v2 = sub_22BEBA550();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB0BA0(uint64_t a1)
{
  v2 = sub_22BEBA64C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB0BDC(uint64_t a1)
{
  v2 = sub_22BEBA64C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB0C18()
{
  sub_22C274154();
  v0 = sub_22BEC0490();
  MEMORY[0x2318AC860](v0);
  return sub_22C2741A4();
}

uint64_t sub_22BEB0C54(uint64_t a1)
{
  v2 = sub_22BEBA4A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB0C90(uint64_t a1)
{
  v2 = sub_22BEBA4A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB0CCC(uint64_t a1)
{
  v2 = sub_22BEBA5F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB0D08(uint64_t a1)
{
  v2 = sub_22BEBA5F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AST.Literal.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v91 = sub_22BE5CE4C(&qword_27D908718, &qword_22C27AD48);
  sub_22BE179D8(v91);
  v89 = v7;
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE486B0(v11, v80);
  v90 = sub_22BE5CE4C(&qword_27D908720, &qword_22C27AD50);
  sub_22BE179D8(v90);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE4104C(v15, v81);
  v16 = sub_22BE5CE4C(&qword_27D908728, &qword_22C27AD58);
  v87 = sub_22BE179D8(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1A174();
  sub_22BE39F68(v20);
  v21 = sub_22BE5CE4C(&qword_27D908730, &qword_22C27AD60);
  v22 = sub_22BE179D8(v21);
  v85 = v23;
  v86 = v22;
  v25 = *(v24 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE1A174();
  v84 = v27;
  v83 = sub_22BE5CE4C(&qword_27D908738, &qword_22C27AD68);
  sub_22BE179D8(v83);
  v82 = v28;
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE1A174();
  sub_22BE190A8(v32);
  v33 = sub_22BE5CE4C(&qword_27D908740, &qword_22C27AD70);
  sub_22BE18910(v33, &v103);
  v35 = *(v34 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE1A174();
  sub_22BE190A8(v37);
  v38 = sub_22BE5CE4C(&qword_27D908748, &qword_22C27AD78);
  sub_22BE18910(v38, &v100);
  v40 = *(v39 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22BE1A8B4();
  v42 = sub_22BE5CE4C(&qword_27D908750, &qword_22C27AD80);
  sub_22BE179D8(v42);
  v44 = *(v43 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v45);
  sub_22BE23E58();
  v46 = sub_22BE5CE4C(&qword_27D908758, &qword_22C27AD88);
  sub_22BE179D8(v46);
  v48 = *(v47 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v49);
  sub_22BE234F4();
  v96 = sub_22BE5CE4C(&qword_27D908760, &qword_22C27AD90);
  sub_22BE179D8(v96);
  v94 = v50;
  v52 = *(v51 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v53);
  sub_22BE1B72C();
  v55 = *(a1 + 24);
  v54 = *(a1 + 32);
  v56 = sub_22BE261AC();
  sub_22BE26950(v56, v57);
  sub_22BEBA358();
  sub_22C274234();
  switch(a4)
  {
    case 1:
      sub_22BEBA550();
      sub_22BE236D4(&v101);
      v60 = v96;
      sub_22BE27168();
      sub_22C273EE4();
      sub_22BEC0400(&v103);
      sub_22BEC0970();
      sub_22C273F94();
      sub_22BE1B5D4(&v102);
      v68 = sub_22BE1AB1C();
      v69(v68);
      sub_22BE37778();
      v71 = v4;
      goto LABEL_11;
    case 2:
      sub_22BEBA4FC();
      sub_22BE236D4(&v104);
      sub_22BE28EE4();
      sub_22C273EE4();
      v46 = v83;
      sub_22BEC0970();
      sub_22C273F74();
      v64 = v82;
      goto LABEL_13;
    case 3:
      sub_22BEBA4A8();
      v42 = v84;
      sub_22BE28EE4();
      sub_22C273EE4();
      v46 = v86;
      sub_22BEC0970();
      sub_22C273F54();
      v64 = v85;
      goto LABEL_13;
    case 4:
      sub_22BEBA454();
      v61 = v4;
      v60 = v96;
      sub_22BE27168();
      sub_22C273EE4();
      sub_22BE5CE4C(&qword_27D908798, &qword_22C27ADA0);
      sub_22BEC0214();
      sub_22BEBA714(v62);
      v63 = v87;
      sub_22BEC09D4();
      goto LABEL_10;
    case 5:
      sub_22BEBA400();
      v61 = v4;
      v60 = v96;
      sub_22BE27168();
      sub_22C273EE4();
      sub_22BE5CE4C(&qword_27D908780, &qword_22C27AD98);
      sub_22BEC0214();
      sub_22BEBA6A0(v72);
      v63 = v90;
      sub_22BEC09D4();
LABEL_10:
      v73 = sub_22BE28D70();
      v74(v73, v63);
      sub_22BE37778();
      v71 = v61;
LABEL_11:
      v75 = v60;
      return v70(v71, v75);
    case 6:
      sub_22BEBA3AC();
      v42 = v88;
      sub_22BE28EE4();
      sub_22C273EE4();
      v46 = v91;
      sub_22BEC0970();
      sub_22C273F54();
      v64 = v89;
LABEL_13:
      v58 = *(v64 + 8);
      v59 = v42;
      goto LABEL_14;
    case 7:
      if (a2 | a3)
      {
        sub_22BEBA5F8();
        sub_22BE27168();
        sub_22C273EE4();
        v65 = sub_22BE1AB4C(&v98);
        v67 = v42;
      }

      else
      {
        sub_22BEBA64C();
        sub_22BE27168();
        sub_22C273EE4();
        sub_22BE1B5D4(&v97);
        v65 = sub_22BE33560();
      }

      v66(v65, v67);
      v77 = *(v94 + 8);
      v78 = sub_22BE1A8C4();
      return v79(v78);
    default:
      sub_22BEBA5A4();
      sub_22BE28EE4();
      sub_22C273EE4();
      sub_22BEC0400(&v100);
      sub_22C273F64();
      sub_22BE1B5D4(&v99);
      v59 = v5;
LABEL_14:
      v58(v59, v46);
      v71 = sub_22BE25EE4();
      return v70(v71, v75);
  }
}

unint64_t AST.Literal.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BE18378();
  switch(v5)
  {
    case 1:
      MEMORY[0x2318AC860](3);
      v11 = v3;
      goto LABEL_20;
    case 2:
      MEMORY[0x2318AC860](4);
      v9 = (v3 & 0x7FFFFFFFFFFFFFFFLL) != 0 && v3;
      return MEMORY[0x2318AC890](v9);
    case 3:
      v10 = 5;
      goto LABEL_17;
    case 4:
      MEMORY[0x2318AC860](6);
      v7 = sub_22BE18944();

      return sub_22BEB98FC(v7, v8);
    case 5:
      MEMORY[0x2318AC860](7);
      v12 = sub_22BE18944();

      return sub_22BEB8910(v12, v13);
    case 6:
      v10 = 8;
LABEL_17:
      MEMORY[0x2318AC860](v10);
      sub_22BE376A8();

      result = sub_22C272F44();
      break;
    case 7:
      v11 = (v3 | a3) != 0;
LABEL_20:
      result = MEMORY[0x2318AC860](v11);
      break;
    default:
      MEMORY[0x2318AC860](2);
      result = sub_22C274174();
      break;
  }

  return result;
}

uint64_t AST.Literal.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_22BE25DAC();
  AST.Literal.hash(into:)(v5, a1, a2);
  return sub_22C2741A4();
}

void AST.Literal.init(from:)(uint64_t *a1)
{
  v116 = sub_22BE5CE4C(&qword_27D9087D8, &qword_22C27ADA8);
  sub_22BE179D8(v116);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BEBFF98(v6, v109);
  v115 = sub_22BE5CE4C(&qword_27D9087E0, &qword_22C27ADB0);
  sub_22BE179D8(v115);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE29250(v10, v110);
  v11 = sub_22BE5CE4C(&qword_27D9087E8, &qword_22C27ADB8);
  sub_22BE179D8(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A174();
  sub_22BEC03A4(v15);
  v16 = sub_22BE5CE4C(&qword_27D9087F0, &qword_22C27ADC0);
  sub_22BE179D8(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE23AA4(v20);
  v21 = sub_22BE5CE4C(&qword_27D9087F8, &qword_22C27ADC8);
  sub_22BE179D8(v21);
  v23 = *(v22 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE2BA30(v25, v111);
  v26 = sub_22BE5CE4C(&qword_27D908800, &qword_22C27ADD0);
  sub_22BE18910(v26, &v125);
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE2C638(v30, v112);
  v31 = sub_22BE5CE4C(&qword_27D908808, &qword_22C27ADD8);
  sub_22BE18910(v31, &v126);
  v33 = *(v32 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE181D0(v35, v113);
  v36 = sub_22BE5CE4C(&qword_27D908810, &qword_22C27ADE0);
  sub_22BE18910(v36, &v124);
  v38 = *(v37 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE1B01C();
  v40 = sub_22BE5CE4C(&qword_27D908818, &qword_22C27ADE8);
  sub_22BE179D8(v40);
  v42 = *(v41 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  sub_22BE23E58();
  v44 = sub_22BE5CE4C(&qword_27D908820, &qword_22C27ADF0);
  sub_22BE179D8(v44);
  v46 = v45;
  v48 = *(v47 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v49);
  sub_22BE19E64();
  v50 = a1[4];
  v118 = a1;
  sub_22BE26950(a1, a1[3]);
  sub_22BEBA358();
  sub_22C274214();
  if (!v119)
  {
    v51 = v117;
    v52 = sub_22C273ED4();
    sub_22BE7C5C4(v52, 0);
    if (v54 != v53 >> 1)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v57 == v58)
      {
        __break(1u);
        return;
      }

      v114 = *(v56 + v55);
      sub_22BE7C5C0(v55 + 1);
      v60 = v59;
      v62 = v61;
      swift_unknownObjectRelease();
      if (v60 == v62 >> 1)
      {
        switch(v114)
        {
          case 1:
            sub_22BEBA5F8();
            sub_22BE236D4(&v121);
            sub_22BE28EE4();
            sub_22C273DE4();
            swift_unknownObjectRelease();
            sub_22BE1B5D4(&v123);
            v76();
            v77 = sub_22BE25EE4();
            v78(v77);
            goto LABEL_16;
          case 2:
            sub_22BEBA5A4();
            sub_22BE28EE4();
            sub_22C273DE4();
            sub_22BE25CE0();
            sub_22C273E74();
            sub_22BE3FF0C();
            swift_unknownObjectRelease();
            v85 = sub_22BE31180();
            v86(v85);
            v87 = sub_22BE25EE4();
            v88(v87);
            break;
          case 3:
            sub_22BEBA550();
            sub_22BE28EE4();
            sub_22C273DE4();
            sub_22BEC049C();
            sub_22BE25CE0();
            sub_22C273EA4();
            sub_22BE3FF0C();
            swift_unknownObjectRelease();
            v89 = sub_22BE31180();
            v90(v89);
            v91 = sub_22BEBFED4();
            v92(v91);
            break;
          case 4:
            sub_22BEBA4FC();
            sub_22BE28EE4();
            sub_22C273DE4();
            sub_22BEC049C();
            sub_22BE25CE0();
            sub_22C273E84();
            v51 = v118;
            swift_unknownObjectRelease();
            v80 = sub_22BE31180();
            v81(v80);
            v82 = *(v46 + 8);
            v83 = sub_22BE1B328();
            v84(v83);
            break;
          case 5:
            sub_22BEBA4A8();
            sub_22BE28EE4();
            sub_22C273DE4();
            sub_22BEC049C();
            sub_22BE25CE0();
            sub_22C273E64();
            sub_22BE3FF0C();
            swift_unknownObjectRelease();
            v97 = sub_22BE31180();
            v98(v97);
            v99 = sub_22BEBFED4();
            v100(v99);
            break;
          case 6:
            sub_22BEBA454();
            sub_22BE28EE4();
            sub_22C273DE4();
            sub_22BEC049C();
            sub_22BE5CE4C(&qword_27D908798, &qword_22C27ADA0);
            sub_22BE29198();
            sub_22BEBA714(v79);
            sub_22BE35DCC();
            sub_22BE3FF0C();
            swift_unknownObjectRelease();
            v101 = sub_22BE31180();
            v102(v101);
            v103 = sub_22BEBFED4();
            v104(v103);
            break;
          case 7:
            sub_22BEBA400();
            sub_22BE28EE4();
            sub_22C273DE4();
            sub_22BEC049C();
            sub_22BE5CE4C(&qword_27D908780, &qword_22C27AD98);
            sub_22BE29198();
            sub_22BEBA6A0(v75);
            sub_22BE35DCC();
            sub_22BE3FF0C();
            swift_unknownObjectRelease();
            v93 = sub_22BE31180();
            v94(v93);
            v95 = sub_22BEBFED4();
            v96(v95);
            break;
          case 8:
            sub_22BEBA3AC();
            sub_22BE28EE4();
            sub_22C273DE4();
            sub_22BEC049C();
            sub_22BE25CE0();
            sub_22C273E64();
            sub_22BE3FF0C();
            swift_unknownObjectRelease();
            v105 = sub_22BE31180();
            v106(v105);
            v107 = sub_22BEBFED4();
            v108(v107);
            break;
          default:
            sub_22BEBA64C();
            sub_22BE236D4(&v120);
            sub_22BE28EE4();
            sub_22C273DE4();
            swift_unknownObjectRelease();
            sub_22BE1B5D4(&v122);
            v63(v117, v40);
            v64 = sub_22BE25EE4();
            v65(v64);
LABEL_16:
            v51 = v118;
            break;
        }

        goto LABEL_10;
      }
    }

    v66 = v1;
    v67 = v44;
    v68 = sub_22C273B34();
    sub_22BE196B4();
    v70 = v69;
    v71 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v70 = &type metadata for AST.Literal;
    sub_22C273DF4();
    sub_22BE1B198();
    v72 = *MEMORY[0x277D84160];
    sub_22BE1BC24(v68);
    (*(v73 + 104))(v70);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_22BE1B940();
    v74(v66, v67);
  }

  v51 = v118;
LABEL_10:
  sub_22BE26B64(v51);
  sub_22BE19454();
}

uint64_t sub_22BEB2480(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1937075312 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73756E696DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 7630702 && a2 == 0xE300000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22BEB258C(char a1)
{
  if (!a1)
  {
    return 1937075312;
  }

  if (a1 == 1)
  {
    return 0x73756E696DLL;
  }

  return 7630702;
}

void sub_22BEB25EC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  AST.Literal.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_22BEB2654()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_22C274154();
  AST.Literal.hash(into:)(v5, v1, v2);
  return sub_22C2741A4();
}

uint64_t sub_22BEB26B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEB2480(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEB26DC(uint64_t a1)
{
  v2 = sub_22BEBA784();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB2718(uint64_t a1)
{
  v2 = sub_22BEBA784();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB2754(uint64_t a1)
{
  v2 = sub_22BEBA82C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB2790(uint64_t a1)
{
  v2 = sub_22BEBA82C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB27CC(uint64_t a1)
{
  v2 = sub_22BEBA7D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB2808(uint64_t a1)
{
  v2 = sub_22BEBA7D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB2844(uint64_t a1)
{
  v2 = sub_22BEBA880();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB2880(uint64_t a1)
{
  v2 = sub_22BEBA880();

  return MEMORY[0x2821FE720](a1, v2);
}

void AST.PrefixOp.encode(to:)()
{
  sub_22BE19130();
  v41 = v1;
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D908838, &qword_22C27ADF8);
  v5 = sub_22BE179D8(v4);
  v39 = v6;
  v40 = v5;
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE20168(v10, v35);
  v11 = sub_22BE5CE4C(&qword_27D908840, &qword_22C27AE00);
  v12 = sub_22BE179D8(v11);
  v36 = v13;
  v37 = v12;
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE2C64C();
  v17 = sub_22BE5CE4C(&qword_27D908848, &qword_22C27AE08);
  sub_22BE179D8(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1A8B4();
  v21 = sub_22BE5CE4C(&qword_27D908850, &qword_22C27AE10);
  sub_22BE179D8(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE234F4();
  v27 = v3[4];
  sub_22BE26950(v3, v3[3]);
  sub_22BEBA784();
  sub_22BE48270();
  sub_22C274234();
  v28 = (v23 + 8);
  if (!v41)
  {
    sub_22BEBA880();
    sub_22BE1AF00();
    sub_22C273EE4();
    sub_22BE37778();
    v29 = sub_22BE33FCC();
LABEL_6:
    v31(v29, v30);
    goto LABEL_7;
  }

  if (v41 != 1)
  {
    sub_22BE39E24();
    sub_22BEBA7D8();
    sub_22BE1AF00();
    sub_22C273EE4();
    v30 = v40;
    v31 = *(v39 + 8);
    v29 = v38;
    goto LABEL_6;
  }

  sub_22BEBA82C();
  sub_22BE1AF00();
  sub_22C273EE4();
  (*(v36 + 8))(v0, v37);
LABEL_7:
  v32 = *v28;
  v33 = sub_22BE33560();
  v34(v33);
  sub_22BE18478();
}

void AST.PrefixOp.init(from:)()
{
  sub_22BE19130();
  v4 = v3;
  v69 = sub_22BE5CE4C(&qword_27D908878, &qword_22C27AE18);
  sub_22BE179D8(v69);
  v67 = v5;
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE23AA4(v9);
  v66 = sub_22BE5CE4C(&qword_27D908880, &qword_22C27AE20);
  sub_22BE179D8(v66);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1B01C();
  v13 = sub_22BE5CE4C(&qword_27D908888, &qword_22C27AE28);
  sub_22BE179D8(v13);
  v65 = v14;
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE234F4();
  v18 = sub_22BE5CE4C(&qword_27D908890, &qword_22C27AE30);
  sub_22BE179D8(v18);
  v68 = v19;
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE25CD0();
  v23 = v4[4];
  sub_22BE26950(v4, v4[3]);
  sub_22BEBA784();
  sub_22BEC046C();
  sub_22C274214();
  if (!v0)
  {
    v64 = v2;
    v70 = v4;
    v24 = sub_22C273ED4();
    sub_22BE7C5C4(v24, 0);
    v26 = v18;
    if (v27 != v25 >> 1)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v34 == v35)
      {
        __break(1u);
        return;
      }

      v36 = v18;
      v37 = *(v33 + v32);
      v38 = sub_22BE39FEC(v28, v29, v30, v31, v32);
      sub_22BE7C5C0(v38);
      v40 = v39;
      v42 = v41;
      swift_unknownObjectRelease();
      if (v40 == v42 >> 1)
      {
        if (v37)
        {
          if (v37 == 1)
          {
            sub_22BEBA82C();
            sub_22BE33B04();
            sub_22C273DE4();
            swift_unknownObjectRelease();
            sub_22BE37778();
            v43 = sub_22BE3CC34();
            v44(v43);
            v45 = *(v68 + 8);
          }

          else
          {
            sub_22BE39E24();
            sub_22BEBA7D8();
            sub_22BE33B04();
            sub_22C273DE4();
            swift_unknownObjectRelease();
            v60 = *(v67 + 8);
            v61 = sub_22BE33BE8();
            v62(v61);
            v63 = *(v68 + 8);
          }

          v46 = sub_22BE1B18C();
          v47(v46);
        }

        else
        {
          sub_22BEBA880();
          sub_22BE33B04();
          sub_22C273DE4();
          swift_unknownObjectRelease();
          (*(v65 + 8))(v64, v13);
          sub_22BE1B940();
          v58 = sub_22BE1B18C();
          v59(v58);
        }

        goto LABEL_12;
      }

      v26 = v36;
    }

    v48 = sub_22C273B34();
    sub_22BE196B4();
    v50 = v49;
    v51 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v50 = &type metadata for AST.PrefixOp;
    sub_22C273DF4();
    sub_22BEC0930();
    sub_22BE1B198();
    v52 = *MEMORY[0x277D84160];
    sub_22BE1BC24(v48);
    v54 = *(v53 + 104);
    v55 = sub_22BEC0360();
    v56(v55);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_22BE1B940();
    v57(v1, v26);
    v4 = v70;
  }

LABEL_12:
  sub_22BE26B64(v4);
  sub_22BE18478();
}

uint64_t sub_22BEB30C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6769737361 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 6579297 && a2 == 0xE300000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6769737341646461 && a2 == 0xE90000000000006ELL;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7463617274627573 && a2 == 0xE800000000000000;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7463617274627573 && a2 == 0xEE006E6769737341;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656469766964 && a2 == 0xE600000000000000;
            if (v10 || (sub_22C274014() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7341656469766964 && a2 == 0xEC0000006E676973;
              if (v11 || (sub_22C274014() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x796C7069746C756DLL && a2 == 0xE800000000000000;
                if (v12 || (sub_22C274014() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x796C7069746C756DLL && a2 == 0xEE006E6769737341;
                  if (v13 || (sub_22C274014() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x746E656E6F707865 && a2 == 0xE800000000000000;
                    if (v14 || (sub_22C274014() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6C61757165 && a2 == 0xE500000000000000;
                      if (v15 || (sub_22C274014() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6C61757145746F6ELL && a2 == 0xE800000000000000;
                        if (v16 || (sub_22C274014() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 28265 && a2 == 0xE200000000000000;
                          if (v17 || (sub_22C274014() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000010 && 0x800000022C2D37B0 == a2;
                            if (v18 || (sub_22C274014() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x5472657461657267 && a2 == 0xEB000000006E6168;
                              if (v19 || (sub_22C274014() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6E6168547373656CLL && a2 == 0xED00006C61757145;
                                if (v20 || (sub_22C274014() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6E6168547373656CLL && a2 == 0xE800000000000000;
                                  if (v21 || (sub_22C274014() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 6581857 && a2 == 0xE300000000000000;
                                    if (v22 || (sub_22C274014() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else if (a1 == 29295 && a2 == 0xE200000000000000)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v24 = sub_22C274014();

                                      if (v24)
                                      {
                                        return 18;
                                      }

                                      else
                                      {
                                        return 19;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22BEB3658(char a1)
{
  result = 0x6E6769737361;
  switch(a1)
  {
    case 1:
      result = 6579297;
      break;
    case 2:
      result = 0x6769737341646461;
      break;
    case 3:
      result = 0x7463617274627573;
      break;
    case 4:
      result = 0x7463617274627573;
      break;
    case 5:
      result = 0x656469766964;
      break;
    case 6:
      result = 0x7341656469766964;
      break;
    case 7:
      result = 0x796C7069746C756DLL;
      break;
    case 8:
      result = 0x796C7069746C756DLL;
      break;
    case 9:
      result = 0x746E656E6F707865;
      break;
    case 10:
      result = 0x6C61757165;
      break;
    case 11:
      result = 0x6C61757145746F6ELL;
      break;
    case 12:
      result = 28265;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0x5472657461657267;
      break;
    case 15:
    case 16:
      result = 0x6E6168547373656CLL;
      break;
    case 17:
      result = 6581857;
      break;
    case 18:
      result = 29295;
      break;
    default:
      return result;
  }

  return result;
}

void sub_22BEB3830(_BYTE *a1@<X8>)
{
  AST.PrefixOp.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_22BEB3878(uint64_t a1)
{
  v2 = sub_22BEBAE68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB38B4(uint64_t a1)
{
  v2 = sub_22BEBAE68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB38F0(uint64_t a1)
{
  v2 = sub_22BEBAEBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB392C(uint64_t a1)
{
  v2 = sub_22BEBAEBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB3968(uint64_t a1)
{
  v2 = sub_22BEBA97C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB39A4(uint64_t a1)
{
  v2 = sub_22BEBA97C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB39E0(uint64_t a1)
{
  v2 = sub_22BEBAF10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB3A1C(uint64_t a1)
{
  v2 = sub_22BEBAF10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB3A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEB30C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEB3A88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BEB3650();
  *a1 = result;
  return result;
}

uint64_t sub_22BEB3AB0(uint64_t a1)
{
  v2 = sub_22BEBA8D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB3AEC(uint64_t a1)
{
  v2 = sub_22BEBA8D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB3B28(uint64_t a1)
{
  v2 = sub_22BEBAD18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB3B64(uint64_t a1)
{
  v2 = sub_22BEBAD18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB3BA0(uint64_t a1)
{
  v2 = sub_22BEBAD6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB3BDC(uint64_t a1)
{
  v2 = sub_22BEBAD6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB3C18(uint64_t a1)
{
  v2 = sub_22BEBABC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB3C54(uint64_t a1)
{
  v2 = sub_22BEBABC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB3C90(uint64_t a1)
{
  v2 = sub_22BEBAC1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB3CCC(uint64_t a1)
{
  v2 = sub_22BEBAC1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB3D08(uint64_t a1)
{
  v2 = sub_22BEBAA78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB3D44(uint64_t a1)
{
  v2 = sub_22BEBAA78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB3D80(uint64_t a1)
{
  v2 = sub_22BEBAACC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB3DBC(uint64_t a1)
{
  v2 = sub_22BEBAACC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB3DF8(uint64_t a1)
{
  v2 = sub_22BEBAB20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB3E34(uint64_t a1)
{
  v2 = sub_22BEBAB20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB3E70(uint64_t a1)
{
  v2 = sub_22BEBA9D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB3EAC(uint64_t a1)
{
  v2 = sub_22BEBA9D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB3EE8(uint64_t a1)
{
  v2 = sub_22BEBAA24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB3F24(uint64_t a1)
{
  v2 = sub_22BEBAA24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB3F60(uint64_t a1)
{
  v2 = sub_22BEBAC70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB3F9C(uint64_t a1)
{
  v2 = sub_22BEBAC70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB3FD8(uint64_t a1)
{
  v2 = sub_22BEBACC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB4014(uint64_t a1)
{
  v2 = sub_22BEBACC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB4050(uint64_t a1)
{
  v2 = sub_22BEBAB74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB408C(uint64_t a1)
{
  v2 = sub_22BEBAB74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB40C8(uint64_t a1)
{
  v2 = sub_22BEBA928();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB4104(uint64_t a1)
{
  v2 = sub_22BEBA928();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB4140(uint64_t a1)
{
  v2 = sub_22BEBADC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB417C(uint64_t a1)
{
  v2 = sub_22BEBADC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB41B8(uint64_t a1)
{
  v2 = sub_22BEBAE14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB41F4(uint64_t a1)
{
  v2 = sub_22BEBAE14();

  return MEMORY[0x2821FE720](a1, v2);
}

void AST.InfixOp.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v21;
  a20 = v22;
  v191 = v23;
  v25 = v24;
  v26 = sub_22BE5CE4C(&qword_27D908898, &qword_22C27AE38);
  v27 = sub_22BE179D8(v26);
  v189 = v28;
  v190 = v27;
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BEBFF98(v32, v158);
  v33 = sub_22BE5CE4C(&qword_27D9088A0, &qword_22C27AE40);
  v34 = sub_22BE179D8(v33);
  v186 = v35;
  v187 = v34;
  v37 = *(v36 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BE2C638(v39, v159);
  v40 = sub_22BE5CE4C(&qword_27D9088A8, &qword_22C27AE48);
  v41 = sub_22BE179D8(v40);
  v183 = v42;
  v184 = v41;
  v44 = *(v43 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v45);
  sub_22BE486B0(v46, v160);
  v47 = sub_22BE5CE4C(&qword_27D9088B0, &qword_22C27AE50);
  v48 = sub_22BE179D8(v47);
  v180 = v49;
  v181 = v48;
  v51 = *(v50 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v52);
  sub_22BE1A174();
  v179 = v53;
  v54 = sub_22BE5CE4C(&qword_27D9088B8, &qword_22C27AE58);
  v55 = sub_22BE179D8(v54);
  v177 = v56;
  v178 = v55;
  v58 = *(v57 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v59);
  sub_22BE1A174();
  sub_22BEC0988(v60);
  v61 = sub_22BE5CE4C(&qword_27D9088C0, &qword_22C27AE60);
  v62 = sub_22BE179D8(v61);
  v174 = v63;
  v175 = v62;
  v65 = *(v64 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v66);
  sub_22BE1A174();
  sub_22BE190A8(v67);
  v68 = sub_22BE5CE4C(&qword_27D9088C8, &qword_22C27AE68);
  sub_22BE18910(v68, &a17);
  v171 = v69;
  v71 = *(v70 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v72);
  sub_22BE1A174();
  sub_22BE190A8(v73);
  v74 = sub_22BE5CE4C(&qword_27D9088D0, &qword_22C27AE70);
  sub_22BE18910(v74, &a14);
  v169 = v75;
  v77 = *(v76 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v78);
  sub_22BE1A174();
  sub_22BE190A8(v79);
  v80 = sub_22BE5CE4C(&qword_27D9088D8, &qword_22C27AE78);
  sub_22BE18910(v80, &a11);
  v168 = v81;
  v83 = *(v82 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v84);
  sub_22BE1A174();
  sub_22BE190A8(v85);
  v86 = sub_22BE5CE4C(&qword_27D9088E0, &qword_22C27AE80);
  sub_22BE18910(v86, &v195);
  v167 = v87;
  v89 = *(v88 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v90);
  sub_22BE1A174();
  sub_22BE190A8(v91);
  v92 = sub_22BE5CE4C(&qword_27D9088E8, &qword_22C27AE88);
  sub_22BE18910(v92, &v192);
  v166 = v93;
  v95 = *(v94 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v96);
  sub_22BE1A174();
  sub_22BE190A8(v97);
  v98 = sub_22BE5CE4C(&qword_27D9088F0, &qword_22C27AE90);
  sub_22BE18910(v98, &v189);
  v165 = v99;
  v101 = *(v100 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v102);
  sub_22BE1A174();
  sub_22BE190A8(v103);
  v104 = sub_22BE5CE4C(&qword_27D9088F8, &qword_22C27AE98);
  sub_22BE18910(v104, &v186);
  v164 = v105;
  v107 = *(v106 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v108);
  sub_22BE1A174();
  sub_22BE190A8(v109);
  v110 = sub_22BE5CE4C(&qword_27D908900, &qword_22C27AEA0);
  sub_22BE18910(v110, &v183);
  v163 = v111;
  v113 = *(v112 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v114);
  sub_22BE1A174();
  sub_22BE190A8(v115);
  v116 = sub_22BE5CE4C(&qword_27D908908, &qword_22C27AEA8);
  sub_22BE18910(v116, &v180);
  v162 = v117;
  v119 = *(v118 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v120);
  sub_22BE1A174();
  sub_22BE190A8(v121);
  v122 = sub_22BE5CE4C(&qword_27D908910, &qword_22C27AEB0);
  sub_22BE18910(v122, &v177);
  v161 = v123;
  v125 = *(v124 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v126);
  sub_22BE1A174();
  sub_22BE190A8(v127);
  v128 = sub_22BE5CE4C(&qword_27D908918, &qword_22C27AEB8);
  sub_22BE18910(v128, &v174);
  v130 = *(v129 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v131);
  sub_22BE1A174();
  sub_22BE190A8(v132);
  v133 = sub_22BE5CE4C(&qword_27D908920, &qword_22C27AEC0);
  sub_22BE179D8(v133);
  v135 = *(v134 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v136);
  sub_22BE19E64();
  v137 = sub_22BE5CE4C(&qword_27D908928, &qword_22C27AEC8);
  sub_22BE179D8(v137);
  v139 = *(v138 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v140);
  sub_22BE2C64C();
  v193 = sub_22BE5CE4C(&qword_27D908930, &qword_22C27AED0);
  sub_22BE179D8(v193);
  v142 = v141;
  v144 = *(v143 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v145);
  sub_22BE234F4();
  v146 = v25[4];
  sub_22BE26950(v25, v25[3]);
  sub_22BEBA8D4();
  v192 = v20;
  sub_22BE48270();
  sub_22C274234();
  v147 = (v142 + 8);
  switch(v191)
  {
    case 1:
      sub_22BE486C4();
      sub_22BEBAEBC();
      sub_22BE29E2C();
      v153 = sub_22BE194B4(&v171);
      v156 = v133;
      goto LABEL_23;
    case 2:
      sub_22BE39E24();
      sub_22BEBAE68();
      sub_22BEBFEB0(&v172);
      v153 = sub_22BE194B4(&v173);
      v155 = &v174;
      goto LABEL_22;
    case 3:
      HIBYTE(a10) = 3;
      sub_22BEBAE14();
      sub_22BEBFEB0(&v175);
      v153 = sub_22BE194B4(&v176);
      v155 = &v177;
      goto LABEL_22;
    case 4:
      HIBYTE(a10) = 4;
      sub_22BEBADC0();
      sub_22BEBFEB0(&v178);
      v153 = sub_22BE194B4(&v179);
      v155 = &v180;
      goto LABEL_22;
    case 5:
      HIBYTE(a10) = 5;
      sub_22BEBAD6C();
      sub_22BEBFEB0(&v181);
      v153 = sub_22BE194B4(&v182);
      v155 = &v183;
      goto LABEL_22;
    case 6:
      HIBYTE(a10) = 6;
      sub_22BEBAD18();
      sub_22BEBFEB0(&v184);
      v153 = sub_22BE194B4(&v185);
      v155 = &v186;
      goto LABEL_22;
    case 7:
      HIBYTE(a10) = 7;
      sub_22BEBACC4();
      sub_22BEBFEB0(&v187);
      v153 = sub_22BE194B4(&v188);
      v155 = &v189;
      goto LABEL_22;
    case 8:
      HIBYTE(a10) = 8;
      sub_22BEBAC70();
      sub_22BEBFEB0(&v190);
      v153 = sub_22BE194B4(&v191);
      v155 = &v192;
      goto LABEL_22;
    case 9:
      HIBYTE(a10) = 9;
      sub_22BEBAC1C();
      sub_22BEBFEB0(&v193);
      v153 = sub_22BE194B4(&v194);
      v155 = &v195;
      goto LABEL_22;
    case 10:
      HIBYTE(a10) = 10;
      sub_22BEBABC8();
      sub_22BEBFEB0(&a9);
      v153 = sub_22BE194B4(&a10);
      v155 = &a11;
      goto LABEL_22;
    case 11:
      HIBYTE(a10) = 11;
      sub_22BEBAB74();
      sub_22BEBFEB0(&a12);
      v153 = sub_22BE194B4(&a13);
      v155 = &a14;
      goto LABEL_22;
    case 12:
      HIBYTE(a10) = 12;
      sub_22BEBAB20();
      sub_22BEBFEB0(&a15);
      v153 = sub_22BE194B4(&a16);
      v155 = &a17;
LABEL_22:
      v156 = *(v155 - 32);
      goto LABEL_23;
    case 13:
      HIBYTE(a10) = 13;
      sub_22BEBAACC();
      sub_22BEBFEB0(&a18);
      goto LABEL_19;
    case 14:
      HIBYTE(a10) = 14;
      sub_22BEBAA78();
      sub_22BE29E2C();
      goto LABEL_19;
    case 15:
      HIBYTE(a10) = 15;
      sub_22BEBAA24();
      sub_22BE29E2C();
      goto LABEL_19;
    case 16:
      HIBYTE(a10) = 16;
      sub_22BEBA9D0();
      sub_22BE29E2C();
      goto LABEL_19;
    case 17:
      HIBYTE(a10) = 17;
      sub_22BEBA97C();
      sub_22BE29E2C();
      goto LABEL_19;
    case 18:
      HIBYTE(a10) = 18;
      sub_22BEBA928();
      sub_22BE29E2C();
LABEL_19:
      v153 = sub_22BE2399C();
LABEL_23:
      v154(v153, v156);
      v157 = *v147;
      v151 = sub_22BE18944();
      break;
    default:
      HIBYTE(a10) = 0;
      sub_22BEBAF10();
      sub_22BE27168();
      sub_22C273EE4();
      v148 = sub_22BE19698(&v170);
      v149(v148, v137);
      v150 = *v147;
      v151 = sub_22BE1A8C4();
      break;
  }

  v152(v151);
  sub_22BE18478();
}

uint64_t sub_22BEB4F84(unsigned __int8 a1)
{
  sub_22BE25DAC();
  MEMORY[0x2318AC860](a1);
  return sub_22C2741A4();
}

void AST.InfixOp.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v23;
  a20 = v24;
  v237 = v20;
  v26 = v25;
  v27 = sub_22BE5CE4C(&qword_27D9089D8, &qword_22C27AED8);
  v28 = sub_22BE179D8(v27);
  v217 = v29;
  v218 = v28;
  v31 = *(v30 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE181D0(v33, v187);
  v34 = sub_22BE5CE4C(&qword_27D9089E0, &qword_22C27AEE0);
  sub_22BE18910(v34, &a18);
  v215 = v35;
  v37 = *(v36 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BEBFF98(v39, v188);
  v40 = sub_22BE5CE4C(&qword_27D9089E8, &qword_22C27AEE8);
  sub_22BE18910(v40, &a16);
  v213[2] = v41;
  v43 = *(v42 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v44);
  sub_22BE1A174();
  sub_22BEC03A4(v45);
  v46 = sub_22BE5CE4C(&qword_27D9089F0, &qword_22C27AEF0);
  sub_22BE18910(v46, &a14);
  v213[0] = v47;
  v49 = *(v48 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v50);
  sub_22BE2BA30(v51, v189);
  v52 = sub_22BE5CE4C(&qword_27D9089F8, &qword_22C27AEF8);
  sub_22BE18910(v52, &a12);
  v212 = v53;
  v55 = *(v54 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v56);
  sub_22BE2C638(v57, v190);
  v58 = sub_22BE5CE4C(&qword_27D908A00, &qword_22C27AF00);
  sub_22BE18910(v58, &a10);
  v211 = v59;
  v61 = *(v60 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v62);
  sub_22BE1A174();
  sub_22BE32BE4(v63);
  v64 = sub_22BE5CE4C(&qword_27D908A08, &qword_22C27AF08);
  sub_22BE18910(v64, &v238);
  v210 = v65;
  v67 = *(v66 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v68);
  sub_22BE1A174();
  sub_22BE3FF64(v69);
  v70 = sub_22BE5CE4C(&qword_27D908A10, &qword_22C27AF10);
  sub_22BE18910(v70, &v236);
  v209 = v71;
  v73 = *(v72 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v74);
  sub_22BE486B0(v75, v191);
  v76 = sub_22BE5CE4C(&qword_27D908A18, &qword_22C27AF18);
  sub_22BE18910(v76, &v234);
  v208 = v77;
  v79 = *(v78 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v80);
  sub_22BE4104C(v81, v192);
  v82 = sub_22BE5CE4C(&qword_27D908A20, &qword_22C27AF20);
  sub_22BE18910(v82, &v232);
  v207 = v83;
  v85 = *(v84 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v86);
  sub_22BE1A174();
  sub_22BEC07BC(v87);
  v88 = sub_22BE5CE4C(&qword_27D908A28, &qword_22C27AF28);
  sub_22BE18910(v88, &v229);
  v206 = v89;
  v91 = *(v90 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v92);
  sub_22BE1A174();
  sub_22BEC097C(v93);
  v94 = sub_22BE5CE4C(&qword_27D908A30, &qword_22C27AF30);
  sub_22BE18910(v94, &v227);
  v205 = v95;
  v97 = *(v96 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v98);
  sub_22BE20168(v99, v193);
  v100 = sub_22BE5CE4C(&qword_27D908A38, &qword_22C27AF38);
  sub_22BE18910(v100, &v226);
  v204 = v101;
  v103 = *(v102 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v104);
  sub_22BE29250(v105, v194);
  v106 = sub_22BE5CE4C(&qword_27D908A40, &qword_22C27AF40);
  sub_22BE18910(v106, &v224);
  v203 = v107;
  v109 = *(v108 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v110);
  sub_22BE1A174();
  v222 = v111;
  v112 = sub_22BE5CE4C(&qword_27D908A48, &qword_22C27AF48);
  sub_22BE18910(v112, &v222);
  v202 = v113;
  v115 = *(v114 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v116);
  sub_22BE1A174();
  sub_22BE39F68(v117);
  v118 = sub_22BE5CE4C(&qword_27D908A50, &qword_22C27AF50);
  sub_22BE18910(v118, &v220);
  v201 = v119;
  v121 = *(v120 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v122);
  sub_22BE23AA4(v123);
  v124 = sub_22BE5CE4C(&qword_27D908A58, &qword_22C27AF58);
  sub_22BE18910(v124, &v218);
  v200 = v125;
  v127 = *(v126 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v128);
  sub_22BE1A174();
  sub_22BEC0988(v129);
  v130 = sub_22BE5CE4C(&qword_27D908A60, &qword_22C27AF60);
  sub_22BE18910(v130, &v216);
  v199 = v131;
  v133 = *(v132 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v134);
  sub_22BE23E58();
  v135 = sub_22BE5CE4C(&qword_27D908A68, &qword_22C27AF68);
  sub_22BE179D8(v135);
  v198 = v136;
  v138 = *(v137 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v139);
  sub_22BE19E64();
  v140 = sub_22BE5CE4C(&qword_27D908A70, &unk_22C27AF70);
  sub_22BE179D8(v140);
  v142 = v141;
  v144 = *(v143 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v145);
  sub_22BE25CD0();
  v147 = v26[3];
  v146 = v26[4];
  v236 = v26;
  v148 = sub_22BE261AC();
  sub_22BE26950(v148, v149);
  sub_22BEBA8D4();
  sub_22BEC046C();
  v150 = v237;
  sub_22C274214();
  if (!v150)
  {
    v196 = v21;
    v195 = v135;
    v197 = v22;
    v151 = v235;
    v237 = v142;
    v152 = sub_22C273ED4();
    sub_22BE7C5C4(v152, 0);
    if (v154 == v153 >> 1)
    {
      v155 = v237;
    }

    else
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v162 == v163)
      {
        __break(1u);
        return;
      }

      v164 = *(v161 + v160);
      v165 = sub_22BE39FEC(v156, v157, v158, v159, v160);
      sub_22BE7C5C0(v165);
      v167 = v166;
      v169 = v168;
      swift_unknownObjectRelease();
      if (v167 == v169 >> 1)
      {
        v170 = v237;
        switch(v164)
        {
          case 1:
            sub_22BE486C4();
            sub_22BEBAEBC();
            sub_22BE2899C();
            sub_22BEC03C8();
            v171 = sub_22BE194B4(&v215);
            v173 = &v216;
            goto LABEL_31;
          case 2:
            sub_22BE39E24();
            sub_22BEBAE68();
            sub_22BE2899C();
            sub_22BEC03C8();
            v171 = sub_22BE194B4(&v217);
            v173 = &v218;
            goto LABEL_31;
          case 3:
            HIBYTE(a10) = 3;
            sub_22BEBAE14();
            sub_22BE415EC();
            sub_22BEC03C8();
            v171 = sub_22BE1AB4C(&v219);
            v173 = &v220;
            goto LABEL_31;
          case 4:
            HIBYTE(a10) = 4;
            sub_22BEBADC0();
            sub_22BE2899C();
            sub_22BEC03C8();
            v171 = sub_22BE194B4(&v221);
            v173 = &v222;
            goto LABEL_31;
          case 5:
            HIBYTE(a10) = 5;
            sub_22BEBAD6C();
            sub_22BE2899C();
            sub_22BEC03C8();
            v171 = sub_22BE194B4(&v223);
            v173 = &v224;
            goto LABEL_31;
          case 6:
            HIBYTE(a10) = 6;
            sub_22BEBAD18();
            sub_22BE2899C();
            sub_22BEC03C8();
            v171 = sub_22BE194B4(&v225);
            v173 = &v226;
            goto LABEL_31;
          case 7:
            HIBYTE(a10) = 7;
            sub_22BEBACC4();
            sub_22BE415EC();
            sub_22BEC03C8();
            sub_22BE1B5D4(&v228);
            v171 = v151;
            v173 = &v227;
            goto LABEL_31;
          case 8:
            HIBYTE(a10) = 8;
            sub_22BEBAC70();
            sub_22BE2899C();
            sub_22BEC03C8();
            v171 = sub_22BE194B4(&v230);
            v173 = &v229;
            goto LABEL_31;
          case 9:
            HIBYTE(a10) = 9;
            sub_22BEBAC1C();
            sub_22BE2899C();
            sub_22BEC03C8();
            v171 = sub_22BE194B4(&v231);
            v173 = &v232;
            goto LABEL_31;
          case 10:
            HIBYTE(a10) = 10;
            sub_22BEBABC8();
            sub_22BE2899C();
            sub_22BEC03C8();
            v171 = sub_22BE194B4(&v233);
            v173 = &v234;
            goto LABEL_31;
          case 11:
            HIBYTE(a10) = 11;
            sub_22BEBAB74();
            sub_22BE2899C();
            sub_22BEC03C8();
            v171 = sub_22BE194B4(&v235);
            v173 = &v236;
            goto LABEL_31;
          case 12:
            HIBYTE(a10) = 12;
            sub_22BEBAB20();
            sub_22BE2899C();
            sub_22BEC03C8();
            v171 = sub_22BE194B4(&v237);
            v173 = &v238;
            goto LABEL_31;
          case 13:
            HIBYTE(a10) = 13;
            sub_22BEBAACC();
            sub_22BE2899C();
            sub_22BEC03C8();
            v171 = sub_22BE194B4(&a9);
            v173 = &a10;
            goto LABEL_31;
          case 14:
            HIBYTE(a10) = 14;
            sub_22BEBAA78();
            sub_22BE2899C();
            sub_22BEC03C8();
            v171 = sub_22BE194B4(&a11);
            v173 = &a12;
            goto LABEL_31;
          case 15:
            HIBYTE(a10) = 15;
            sub_22BEBAA24();
            sub_22BE2899C();
            sub_22BEC03C8();
            v171 = sub_22BE194B4(&a13);
            v173 = &a14;
            goto LABEL_31;
          case 16:
            HIBYTE(a10) = 16;
            sub_22BEBA9D0();
            sub_22BE2899C();
            sub_22BEC03C8();
            v171 = sub_22BE194B4(&a15);
            v173 = &a16;
            goto LABEL_31;
          case 17:
            HIBYTE(a10) = 17;
            sub_22BEBA97C();
            sub_22BE2899C();
            sub_22BEC03C8();
            v171 = sub_22BE194B4(&a17);
            v173 = &a18;
            goto LABEL_31;
          case 18:
            HIBYTE(a10) = 18;
            sub_22BEBA928();
            sub_22BE2899C();
            sub_22BEC03C8();
            v171 = sub_22BE2399C();
            goto LABEL_32;
          default:
            HIBYTE(a10) = 0;
            sub_22BEBAF10();
            sub_22BE2899C();
            sub_22BEC03C8();
            v171 = sub_22BE194B4(&v214);
            v173 = v213;
LABEL_31:
            v183 = *(v173 - 32);
LABEL_32:
            v172(v171, v183);
            v184 = *(v170 + 8);
            v185 = sub_22BE31038();
            v186(v185);
            sub_22BE26B64(v236);
            break;
        }

        goto LABEL_12;
      }

      v155 = v237;
    }

    v174 = sub_22C273B34();
    sub_22BE196B4();
    v176 = v175;
    v177 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v176 = &type metadata for AST.InfixOp;
    sub_22C273DF4();
    sub_22BE1B198();
    v178 = *MEMORY[0x277D84160];
    sub_22BE1BC24(v174);
    (*(v179 + 104))(v176);
    swift_willThrow();
    swift_unknownObjectRelease();
    v180 = *(v155 + 8);
    v181 = sub_22BE31038();
    v182(v181);
  }

  sub_22BE26B64(v236);
LABEL_12:
  sub_22BE18478();
}

uint64_t AST.Program.description.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v32 = MEMORY[0x277D84F90];
    sub_22BE70138();
    v3 = (v1 + 32);
    while (1)
    {
      v5 = *v3++;
      v4 = v5;
      v6 = v5 >> 62;
      if (!(v5 >> 62))
      {
        break;
      }

      if (v6 != 1)
      {
        v14 = v4 & 0x3FFFFFFFFFFFFFFFLL;
        v15 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v16 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v18 = *(v14 + 32);
        v17 = *(v14 + 40);
        sub_22BEC05EC();
        v19 = sub_22C273294();
        v21 = v20;
        sub_22C273AA4();

        v29 = v19;
        v30 = v21;
        MEMORY[0x2318AB8D0](544370534, 0xE400000000000000);
        v22 = sub_22BE29454();
        MEMORY[0x2318AB8D0](v22);
        MEMORY[0x2318AB8D0](544106784, 0xE400000000000000);
        v23 = AST.Expr.description.getter();
        MEMORY[0x2318AB8D0](v23);

        MEMORY[0x2318AB8D0](2618, 0xE200000000000000);
        v24 = sub_22BEB6374(1, v17);
        MEMORY[0x2318AB8D0](v24);

        goto LABEL_8;
      }

      v28 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v31 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v7 = sub_22BEC0490();
      v8 = sub_22BEB6BC0(v7);
      v10 = v9;
LABEL_9:
      v25 = *(v32 + 16);
      if (v25 >= *(v32 + 24) >> 1)
      {
        sub_22BE70138();
      }

      *(v32 + 16) = v25 + 1;
      v26 = v32 + 16 * v25;
      *(v26 + 32) = v8;
      *(v26 + 40) = v10;
      if (!--v2)
      {
        goto LABEL_12;
      }
    }

    v11 = *(v4 + 16);

    sub_22BEA7680(v11);
    sub_22BEC05EC();
    v29 = sub_22C273294();
    v30 = v12;
    v13 = AST.Expr.description.getter();
    MEMORY[0x2318AB8D0](v13);

    sub_22BE63574(v11);

LABEL_8:
    v10 = v30;
    v8 = v29;
    goto LABEL_9;
  }

LABEL_12:
  sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
  sub_22BEBAF64();
  sub_22C272FB4();
  sub_22BE2F120();

  return sub_22BE18040();
}

uint64_t AST.Program.encode(to:)()
{
  v2 = *v0;
  AST.Program.description.getter();
  sub_22C2731E4();
}

uint64_t AST.Program.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_22BE26B00(a1, v8);
  v5 = sub_22C273144();
  if (v2)
  {
    return sub_22BE26B64(a1);
  }

  static Parser.parse(string:)(v5, v6, v8);
  sub_22BE26B64(a1);

  *a2 = v8[0];
  return result;
}

uint64_t sub_22BEB6374(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = result;
  v4 = (a2 + 32);
  v5 = result + 0x4000000000000000;
  v6 = 2 * result;
  v27 = result;
  while (1)
  {
    v8 = *v4++;
    v7 = v8;
    v9 = v8 >> 62;
    if (!(v8 >> 62))
    {
      if (v5 < 0)
      {
        goto LABEL_16;
      }

      v13 = *(v7 + 16);

      sub_22BEA7680(v13);
      v31 = sub_22C273294();
      v32 = v14;
      v15 = AST.Expr.description.getter();
      MEMORY[0x2318AB8D0](v15);

      sub_22BE63574(v13);
      goto LABEL_10;
    }

    if (v9 != 1)
    {
      break;
    }

    v30 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v33 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);

    v10 = sub_22BEB6BC0(v3);
    v12 = v11;
LABEL_11:
    MEMORY[0x2318AB8D0](v10, v12);

    MEMORY[0x2318AB8D0](10, 0xE100000000000000);

    if (!--v2)
    {
      return 0;
    }
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v28 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v29 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    v16 = v4;
    v17 = v5;
    v19 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v18 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

    v20 = v6;
    v21 = sub_22C273294();
    v23 = v22;
    sub_22C273AA4();

    v31 = v21;
    v32 = v23;
    v6 = v20;
    MEMORY[0x2318AB8D0](544370534, 0xE400000000000000);
    v24 = v19;
    v5 = v17;
    v4 = v16;
    MEMORY[0x2318AB8D0](v24, v18);
    MEMORY[0x2318AB8D0](544106784, 0xE400000000000000);
    v3 = v27;
    v25 = AST.Expr.description.getter();
    MEMORY[0x2318AB8D0](v25);

    MEMORY[0x2318AB8D0](2618, 0xE200000000000000);
    v26 = sub_22BEB6374(v27 + 1, v29);
    MEMORY[0x2318AB8D0](v26);

LABEL_10:
    v12 = v32;
    v10 = v31;
    goto LABEL_11;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_22BEB65D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62)
  {
    v4 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v6 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    if (a2 >> 62 == 1)
    {
      return sub_22BEB6BC0(result);
    }

    else
    {
      v7 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      return sub_22BEB6D04(result);
    }
  }

  else if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    sub_22BEA7680(v2);
    sub_22BEC05EC();
    v5 = sub_22C273294();
    v3 = AST.Expr.description.getter();
    MEMORY[0x2318AB8D0](v3);

    sub_22BE63574(v2);
    return v5;
  }

  return result;
}

uint64_t AST.Expr.description.getter()
{
  updated = type metadata accessor for AST.UpdateParameters();
  v3 = sub_22BE18000(updated);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE336DC();
  v6 = sub_22C26E684();
  v7 = sub_22BE179D8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  v15 = v14 - v13;
  v16 = *v1;
  switch(*v1 >> 60)
  {
    case 1uLL:
      v42 = swift_projectBox();
      (*(v9 + 16))(v15, v42, v6);
      sub_22C26E634();
      sub_22BE2F120();
      v43 = *(v9 + 8);
      v44 = sub_22BE1B328();
      v45(v44);
      return sub_22BE18040();
    case 2uLL:
      v26 = v16 & 0xFFFFFFFFFFFFFFFLL;
      v27 = *(v26 + 16);
      v28 = *(v26 + 24);
      v29 = *(v26 + 32);
      v30 = sub_22BE260B8();
      sub_22BEA76B8(v30, v31, v29);
      v32 = sub_22BE260B8();
      AST.Literal.description.getter(v32, v33, v29);
      sub_22BE2F120();
      v34 = sub_22BE260B8();
      sub_22BEA76F8(v34, v35, v29);
      return sub_22BE18040();
    case 3uLL:
      v36 = v16 & 0xFFFFFFFFFFFFFFFLL;
      v37 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v38 = *(v36 + 24);
      if (v37)
      {
        if (v37 == 1)
        {
          v39 = 0xE100000000000000;
          v40 = 45;
        }

        else
        {
          v39 = 0xE400000000000000;
          v40 = 544501614;
        }
      }

      else
      {
        v39 = 0xE100000000000000;
        v40 = 43;
      }

      MEMORY[0x2318AB8D0](v40, v39);

      goto LABEL_23;
    case 4uLL:
      v19 = v16 & 0xFFFFFFFFFFFFFFFLL;
      v20 = *(v19 + 32);
      v21 = *(v19 + 16);
      v67 = *(v19 + 24);
      AST.Expr.description.getter(v12);
      v22 = sub_22BEC05EC();
      MEMORY[0x2318AB8D0](v22);
      v23 = AST.InfixOp.description.getter(v21);
      MEMORY[0x2318AB8D0](v23);

      v24 = sub_22BEC05EC();
      v25 = MEMORY[0x2318AB8D0](v24);
LABEL_23:
      v50 = AST.Expr.description.getter(v25);
      goto LABEL_24;
    case 5uLL:
      v46 = v16 & 0xFFFFFFFFFFFFFFFLL;
      v47 = *(v46 + 16);
      v48 = *(v46 + 32);
      sub_22BEA7680(v47);

      goto LABEL_13;
    case 6uLL:
      v51 = v16 & 0xFFFFFFFFFFFFFFFLL;
      v47 = *(v51 + 16);
      v52 = *(v51 + 24);
      if (v52 >> 60 == 2 && *((v52 & 0xFFFFFFFFFFFFFFFLL) + 0x20) == 3)
      {
        v54 = *((v52 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v53 = *((v52 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        sub_22BEA7680(v47);
        v55 = sub_22BE1B5EC();
        v49 = sub_22BEA76B8(v55, v56, 3);
LABEL_13:
        AST.Expr.description.getter(v49);
        sub_22BE63574(v47);
        MEMORY[0x2318AB8D0](46, 0xE100000000000000);
        v50 = sub_22BE1B5EC();
LABEL_24:
        MEMORY[0x2318AB8D0](v50);
      }

      else
      {
        AST.Expr.description.getter(v12);
        v64 = MEMORY[0x2318AB8D0](91, 0xE100000000000000);
        v65 = AST.Expr.description.getter(v64);
        MEMORY[0x2318AB8D0](v65);

        MEMORY[0x2318AB8D0](93, 0xE100000000000000);
      }

      break;
    case 7uLL:
      v41 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v69 = *v1;
      sub_22BEB71A0(*((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10), *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x18), *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x38));
      goto LABEL_10;
    case 8uLL:
      swift_projectBox();
      sub_22BE258A8();
      sub_22BEBFD70();
      sub_22C273AA4();

      sub_22BE25A74();
      sub_22BE17BAC();
      sub_22BEBFCD4(v60);
      v61 = sub_22C273FD4();
      MEMORY[0x2318AB8D0](v61);

      MEMORY[0x2318AB8D0](8236, 0xE200000000000000);
      v62 = *(v0 + *(updated + 20));
      sub_22BEBAFC8();
      v63 = sub_22C272E64();
      MEMORY[0x2318AB8D0](v63);

      MEMORY[0x2318AB8D0](41, 0xE100000000000000);
      sub_22BE35AF4();
      sub_22BEBFDC4();
      return sub_22BE18040();
    case 9uLL:
      v68 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      AST.Expr.description.getter(v12);
LABEL_10:
      sub_22BE2F120();
      break;
    case 0xAuLL:
      v57 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_22BEA7680(v57);
      sub_22C273AA4();

      sub_22BE25A74();
      v59 = AST.Expr.description.getter(v58);
      MEMORY[0x2318AB8D0](v59);

      MEMORY[0x2318AB8D0](41, 0xE100000000000000);
      sub_22BE63574(v57);
      break;
    case 0xBuLL:
      return sub_22BE18040();
    default:
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);

      break;
  }

  return sub_22BE18040();
}

uint64_t sub_22BEB6BC0(uint64_t result)
{
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v4 = v1[1];
    v3 = v1[2];
    v5 = *v1;
    v6 = sub_22C273294();
    v8 = v7;

    MEMORY[0x2318AB8D0](2123369, 0xE300000000000000);
    v9 = AST.Expr.description.getter();
    MEMORY[0x2318AB8D0](v9);

    MEMORY[0x2318AB8D0](2618, 0xE200000000000000);
    v10 = sub_22BEB6374(v2 + 1, v4);
    MEMORY[0x2318AB8D0](v10);

    if (v3)
    {
      MEMORY[0x2318AB8D0](0xA3A65736C65, 0xE600000000000000);
      MEMORY[0x2318AB8D0](v6, v8);

      v11 = sub_22BEB6374(v2 + 1, v3);
      MEMORY[0x2318AB8D0](v11);
    }

    return v6;
  }

  return result;
}

uint64_t sub_22BEB6D04(uint64_t result)
{
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v4 = v1[2];
    v3 = v1[3];
    v6 = *v1;
    v5 = v1[1];
    v7 = sub_22C273294();
    sub_22C273AA4();

    MEMORY[0x2318AB8D0](544370534, 0xE400000000000000);
    MEMORY[0x2318AB8D0](v6, v5);
    MEMORY[0x2318AB8D0](544106784, 0xE400000000000000);
    v8 = AST.Expr.description.getter();
    MEMORY[0x2318AB8D0](v8);

    MEMORY[0x2318AB8D0](2618, 0xE200000000000000);
    v9 = sub_22BEB6374(v2 + 1, v3);
    MEMORY[0x2318AB8D0](v9);

    return v7;
  }

  return result;
}

unint64_t AST.Literal.description.getter(void *a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      sub_22BEBB01C();
      sub_22C273964();
      return sub_22BE19454();
    case 2:
      sub_22C273664();
      return sub_22BE19454();
    case 3:
      sub_22BE19454();
      String.escapedForPython.getter();
      sub_22BEC07E8();
      MEMORY[0x2318AB8D0]();

      MEMORY[0x2318AB8D0](34, 0xE100000000000000);

      return sub_22BE19454();
    case 4:
      sub_22BEC07E8();
      v4 = a1[2];
      if (v4)
      {
        v5 = a1 + 4;
        do
        {
          v6 = *v5++;
          v7 = sub_22BEA7680(v6);
          v8 = AST.Expr.description.getter(v7);
          MEMORY[0x2318AB8D0](v8);

          MEMORY[0x2318AB8D0](8236, 0xE200000000000000);
          sub_22BE63574(v6);
          --v4;
        }

        while (v4);
        sub_22BEB790C(2);
      }

      v9 = 93;
      goto LABEL_23;
    case 5:
      sub_22BEC07E8();
      v10 = a1[8];
      v11 = 1 << *(a1 + 32);
      sub_22BE18010();
      v14 = v13 & v12;
      v16 = (v15 + 63) >> 6;

      i = 0;
      if (v14)
      {
        goto LABEL_12;
      }

      break;
    case 6:

      return sub_22BE19454();
    default:
      return sub_22BE19454();
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
      return result;
    }

    if (v19 >= v16)
    {
      break;
    }

    v14 = a1[v19 + 8];
    ++i;
    if (v14)
    {
      for (i = v19; ; v19 = i)
      {
        v20 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v21 = v20 | (v19 << 6);
        v22 = (a1[6] + 16 * v21);
        v23 = *v22;
        v24 = v22[1];
        v25 = *(a1[7] + 8 * v21);

        sub_22BEA7680(v25);
        sub_22BE1A8C4();
        String.escapedForPython.getter();

        v26 = sub_22BE29454();
        MEMORY[0x2318AB8D0](v26);

        MEMORY[0x2318AB8D0](34, 0xE100000000000000);

        MEMORY[0x2318AB8D0](34, 0xE100000000000000);

        v27 = MEMORY[0x2318AB8D0](8250, 0xE200000000000000);
        v28 = AST.Expr.description.getter(v27);
        MEMORY[0x2318AB8D0](v28);

        MEMORY[0x2318AB8D0](8236, 0xE200000000000000);
        result = sub_22BE63574(v25);
        if (!v14)
        {
          break;
        }

LABEL_12:
        ;
      }
    }
  }

  if (a1[2])
  {
    sub_22BEB790C(2);
  }

  v9 = 125;
LABEL_23:
  MEMORY[0x2318AB8D0](v9, 0xE100000000000000);
  return sub_22BE19454();
}

uint64_t sub_22BEB71A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22BEB7258(a3);
  v6 = v5;

  MEMORY[0x2318AB8D0](40, 0xE100000000000000);
  v7 = sub_22BEB7B88(v4, v6);
  v9 = v8;

  MEMORY[0x2318AB8D0](v7, v9);

  MEMORY[0x2318AB8D0](41, 0xE100000000000000);
  return a1;
}

uint64_t sub_22BEB7258(uint64_t a1)
{
  v1 = a1;
  v2 = (a1 + 64);
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v73 = MEMORY[0x277D84F90];
  v69 = v2;
  v70 = v7;
  while (1)
  {
    v9 = v8;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = *(v1 + 48) + 32 * v11;
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    v17 = *(*(v1 + 56) + 8 * v11);
    if (v16 == 2)
    {
      sub_22BEA7680(*(*(v1 + 56) + 8 * v11));
      sub_22BE635AC(v14, v13, v15, 2u);
      sub_22BE63574(v17);
    }

    else
    {
      if (*(v12 + 24))
      {
        v74[0] = *v12;
        v74[1] = v13;
        sub_22BE6355C(v14, v13, v15, 1u);
        sub_22BE6355C(v14, v13, v15, 1u);
        sub_22BEA7680(v17);
        MEMORY[0x2318AB8D0](91, 0xE100000000000000);
        v19 = sub_22C273FD4();
        MEMORY[0x2318AB8D0](v19);

        MEMORY[0x2318AB8D0](93, 0xE100000000000000);
        v18 = v13;
        v71 = v74[0];
      }

      else
      {
        sub_22BE6355C(*v12, *(v12 + 8), *(v12 + 16), 0);
        sub_22BE6355C(v14, v13, v15, 0);
        sub_22BEA7680(v17);
        v71 = v14;
        v18 = v13;
      }

      sub_22BEA7680(v17);
      sub_22BE635AC(v14, v13, v15, v16);
      sub_22BE63574(v17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = v73[2];
        sub_22BE663D4();
        v73 = v23;
      }

      v20 = v73[2];
      if (v20 >= v73[3] >> 1)
      {
        sub_22BE663D4();
        v73 = v24;
      }

      v73[2] = v20 + 1;
      v21 = &v73[3 * v20];
      v1 = v70;
      v21[4] = v71;
      v21[5] = v18;
      v21[6] = v17;
      v2 = v69;
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = v2[v8];
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  v2 = 0;
  v72 = v73[2];
  v25 = MEMORY[0x277D84F98];
  v26 = v73 + 6;
  while (v72 != v2)
  {
    if (v2 >= v73[2])
    {
      goto LABEL_54;
    }

    v28 = *(v26 - 2);
    v27 = *(v26 - 1);
    v29 = *v26;

    sub_22BEA7680(v29);

    sub_22BEA7680(v29);
    sub_22BE63574(v29);

    sub_22BEA7680(v29);

    swift_isUniquelyReferenced_nonNull_native();
    v74[0] = v25;
    v30 = sub_22BE3B674(v28, v27);
    if (__OFADD__(v25[2], (v31 & 1) == 0))
    {
      goto LABEL_55;
    }

    v32 = v30;
    v33 = v31;
    sub_22BE5CE4C(&qword_27D9092D8, &unk_22C27FEC0);
    if (sub_22C273C44())
    {
      v34 = sub_22BE3B674(v28, v27);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_57;
      }

      v32 = v34;
    }

    if (v33)
    {

      v25 = v74[0];
      v36 = *(v74[0] + 56);
      v37 = *(v36 + 8 * v32);
      *(v36 + 8 * v32) = v29;
      sub_22BE63574(v37);

      sub_22BE63574(v29);
    }

    else
    {
      v25 = v74[0];
      *(v74[0] + 8 * (v32 >> 6) + 64) |= 1 << v32;
      v38 = (v25[6] + 16 * v32);
      *v38 = v28;
      v38[1] = v27;
      *(v25[7] + 8 * v32) = v29;

      sub_22BE63574(v29);
      v39 = v25[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_56;
      }

      v25[2] = v41;
    }

    v26 += 3;
    v2 = (v2 + 1);
  }

  v42 = 1 << *(v70 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v70 + 64);
  v45 = (v42 + 63) >> 6;

  v47 = 0;
  v48 = MEMORY[0x277D84F90];
LABEL_33:
  v49 = v47;
  while (v44)
  {
    v47 = v49;
LABEL_39:
    v50 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v51 = v50 | (v47 << 6);
    v52 = *(v46 + 48) + 32 * v51;
    v53 = *v52;
    v54 = *(v52 + 24);
    v2 = *(*(v46 + 56) + 8 * v51);
    if (v54 == 2)
    {
      sub_22BEA7680(*(*(v46 + 56) + 8 * v51));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = *(v48 + 16);
        sub_22BE662E4();
        v48 = v60;
      }

      v57 = *(v48 + 16);
      if (v57 >= *(v48 + 24) >> 1)
      {
        sub_22BE662E4();
        v48 = v61;
      }

      *(v48 + 16) = v57 + 1;
      v58 = v48 + 16 * v57;
      *(v58 + 32) = v53;
      *(v58 + 40) = v2;
      v46 = v70;
      goto LABEL_33;
    }

    v56 = *(v52 + 8);
    v55 = *(v52 + 16);
    sub_22BE6355C(*v52, v56, v55, *(v52 + 24));
    sub_22BEA7680(v2);
    sub_22BE635AC(v53, v56, v55, v54);
    sub_22BE63574(v2);
    v49 = v47;
    v46 = v70;
  }

  while (1)
  {
    v47 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v47 >= v45)
    {

      v74[0] = v48;

      sub_22BE95C6C(v74);

      v62 = v74[0];
      v63 = *(v74[0] + 16);
      if (v63)
      {
        v74[0] = MEMORY[0x277D84F90];
        sub_22BE70158();
        v64 = 40;
        v65 = v74[0];
        do
        {
          v66 = *(v62 + v64);
          sub_22BEA7680(v66);
          v74[0] = v65;
          v67 = *(v65 + 16);
          if (v67 >= *(v65 + 24) >> 1)
          {
            sub_22BE70158();
            v65 = v74[0];
          }

          *(v65 + 16) = v67 + 1;
          *(v65 + 8 * v67 + 32) = v66;
          v64 += 16;
          --v63;
        }

        while (v63);
      }

      return v25;
    }

    v44 = v69[v47];
    ++v49;
    if (v44)
    {
      goto LABEL_39;
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  sub_22C2740B4();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22BEB790C(uint64_t result)
{
  if (result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v2 = v1[1];
      if ((v2 & 0x2000000000000000) != 0)
      {
        v3 = HIBYTE(v2) & 0xF;
      }

      else
      {
        v3 = *v1 & 0xFFFFFFFFFFFFLL;
      }

      *v1;
      v4 = sub_22C2731A4();
      if (v5)
      {
        goto LABEL_14;
      }

      if (4 * v3 >= v4 >> 14)
      {

        return MEMORY[0x2821FBD18]();
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBD18]();
  }

  return result;
}

uint64_t AST.PrefixOp.description.getter(char a1)
{
  if (!a1)
  {
    return 43;
  }

  if (a1 == 1)
  {
    return 45;
  }

  return 544501614;
}

uint64_t AST.InfixOp.description.getter(char a1)
{
  result = 61;
  switch(a1)
  {
    case 1:
      result = 43;
      break;
    case 2:
      result = 15659;
      break;
    case 3:
      result = 45;
      break;
    case 4:
      result = 15661;
      break;
    case 5:
      result = 47;
      break;
    case 6:
      result = 15663;
      break;
    case 7:
      result = 42;
      break;
    case 8:
      result = 15658;
      break;
    case 9:
      result = 10794;
      break;
    case 10:
      result = 15677;
      break;
    case 11:
      result = 15649;
      break;
    case 12:
      result = 28265;
      break;
    case 13:
      result = 15678;
      break;
    case 14:
      result = 62;
      break;
    case 15:
      result = 15676;
      break;
    case 16:
      result = 60;
      break;
    case 17:
      result = 6581857;
      break;
    case 18:
      result = 29295;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t AST.IfStmt.description.getter()
{
  v3 = *v0;
  v4 = *(v0 + 2);
  v1 = sub_22BEC0490();
  return sub_22BEB6BC0(v1);
}

uint64_t AST.ForInStmt.description.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  return sub_22BEB6D04(0);
}

uint64_t sub_22BEB7B88(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v17 = MEMORY[0x277D84F90];
    sub_22BE70138();
    v4 = v17;
    v7 = (a2 + 32);
    do
    {
      v8 = *v7++;
      v6 = AST.Expr.description.getter(v6);
      v9 = v6;
      v11 = v10;
      v17 = v4;
      v12 = *(v4 + 16);
      if (v12 >= *(v4 + 24) >> 1)
      {
        sub_22BE70138();
        v4 = v17;
      }

      *(v4 + 16) = v12 + 1;
      v13 = v4 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v11;
      --v3;
    }

    while (v3);
  }

  sub_22BE95CD8(a1);
  v17 = v4;
  sub_22BE6DF78(v14);

  sub_22BF1C7CC(&v17);

  sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
  sub_22BEBAF64();
  v15 = sub_22C272FB4();

  return v15;
}

uint64_t sub_22BEB7D0C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C273FC4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22BE5CE4C(&qword_27D907370, &qword_22C2752E0);
        v6 = sub_22C273534();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_22BEB7E80(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22BEB7E10(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22BEB7E10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22BEB7E80(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v85 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v80 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v15 = *v11;
        v14 = v11 + 4;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 2;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6 - 16;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = *(v24 + v12);
                *(v24 + v12) = *(v24 + v21);
                *(v24 + v21) = v25;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v26 = *a3;
            v27 = *a3 + 16 * v9 - 16;
            v28 = v7 - v9;
            do
            {
              v29 = *(v26 + 16 * v9);
              v30 = v28;
              v31 = v27;
              do
              {
                if (v29 >= *v31)
                {
                  break;
                }

                if (!v26)
                {
                  goto LABEL_111;
                }

                v32 = *(v31 + 24);
                *(v31 + 16) = *v31;
                *v31 = v29;
                *(v31 + 8) = v32;
                v31 -= 16;
              }

              while (!__CFADD__(v30++, 1));
              ++v9;
              v27 += 16;
              --v28;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v82 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = v8[2];
        sub_22BE6614C();
        v8 = v78;
      }

      v34 = v8[2];
      v35 = v34 + 1;
      if (v34 >= v8[3] >> 1)
      {
        sub_22BE6614C();
        v8 = v79;
      }

      v8[2] = v35;
      v36 = v8 + 4;
      v37 = &v8[2 * v34 + 4];
      *v37 = v7;
      v37[1] = v9;
      v83 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v34)
      {
        while (1)
        {
          v38 = v35 - 1;
          v39 = &v36[2 * v35 - 2];
          v40 = &v8[2 * v35];
          if (v35 >= 4)
          {
            break;
          }

          if (v35 == 3)
          {
            v41 = v8[4];
            v42 = v8[5];
            v51 = __OFSUB__(v42, v41);
            v43 = v42 - v41;
            v44 = v51;
LABEL_56:
            if (v44)
            {
              goto LABEL_96;
            }

            v56 = *v40;
            v55 = v40[1];
            v57 = __OFSUB__(v55, v56);
            v58 = v55 - v56;
            v59 = v57;
            if (v57)
            {
              goto LABEL_99;
            }

            v60 = v39[1];
            v61 = v60 - *v39;
            if (__OFSUB__(v60, *v39))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v58, v61))
            {
              goto LABEL_104;
            }

            if (v58 + v61 >= v43)
            {
              if (v43 < v61)
              {
                v38 = v35 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v35 < 2)
          {
            goto LABEL_98;
          }

          v63 = *v40;
          v62 = v40[1];
          v51 = __OFSUB__(v62, v63);
          v58 = v62 - v63;
          v59 = v51;
LABEL_71:
          if (v59)
          {
            goto LABEL_101;
          }

          v65 = *v39;
          v64 = v39[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_103;
          }

          if (v66 < v58)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v38 - 1 >= v35)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v70 = &v36[2 * v38 - 2];
          v71 = *v70;
          v72 = &v36[2 * v38];
          v73 = v72[1];
          sub_22BEB8480((*a3 + 16 * *v70), (*a3 + 16 * *v72), (*a3 + 16 * v73), v83);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v73 < v71)
          {
            goto LABEL_91;
          }

          v74 = v8;
          v75 = v8[2];
          if (v38 > v75)
          {
            goto LABEL_92;
          }

          *v70 = v71;
          v70[1] = v73;
          if (v38 >= v75)
          {
            goto LABEL_93;
          }

          v35 = v75 - 1;
          memmove(&v36[2 * v38], v72 + 2, 16 * (v75 - 1 - v38));
          v74[2] = v75 - 1;
          v76 = v75 > 2;
          v8 = v74;
          v5 = 0;
          if (!v76)
          {
            goto LABEL_85;
          }
        }

        v45 = &v36[2 * v35];
        v46 = *(v45 - 8);
        v47 = *(v45 - 7);
        v51 = __OFSUB__(v47, v46);
        v48 = v47 - v46;
        if (v51)
        {
          goto LABEL_94;
        }

        v50 = *(v45 - 6);
        v49 = *(v45 - 5);
        v51 = __OFSUB__(v49, v50);
        v43 = v49 - v50;
        v44 = v51;
        if (v51)
        {
          goto LABEL_95;
        }

        v52 = v40[1];
        v53 = v52 - *v40;
        if (__OFSUB__(v52, *v40))
        {
          goto LABEL_97;
        }

        v51 = __OFADD__(v43, v53);
        v54 = v43 + v53;
        if (v51)
        {
          goto LABEL_100;
        }

        if (v54 >= v48)
        {
          v68 = *v39;
          v67 = v39[1];
          v51 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v51)
          {
            goto LABEL_105;
          }

          if (v43 < v69)
          {
            v38 = v35 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v82;
      a4 = v80;
      if (v82 >= v6)
      {
        v85 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_22BEB8354(&v85, *a1, a3);
LABEL_89:
}

uint64_t sub_22BEB8354(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_22C115CA4(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_22BEB8480((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_22BEB8480(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_22BE67CB0(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_22BE67CB0(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*(v10 - 2) < *v14)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

void sub_22BEB8604()
{
  sub_22BE19460();
  v1 = v0;
  v53 = v2;
  v3 = type metadata accessor for AST.FlatValue(0);
  v4 = sub_22BE17A18(v3);
  v51 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  v56 = v8;
  v9 = sub_22BE5CE4C(&qword_27D9092B0, &unk_22C288C10);
  v10 = sub_22BE19448(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE17B98();
  v54 = v13;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v14);
  v16 = (&v50 - v15);
  v18 = v1 + 64;
  v17 = *(v1 + 64);
  v19 = 1 << *(v1 + 32);
  sub_22BE18010();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  v52 = v1;

  v25 = 0;
  v26 = 0;
  v50 = v16;
  if (v22)
  {
    while (1)
    {
      v55 = v25;
      v27 = v26;
LABEL_8:
      v29 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v30 = *(v52 + 56);
      v31 = (*(v52 + 48) + 16 * (v29 | (v27 << 6)));
      v33 = *v31;
      v32 = v31[1];
      v34 = *(v51 + 72);
      sub_22BE3E51C();
      sub_22BEBFD70();
      v35 = sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
      sub_22BE3A44C(v35);
      v36 = v54;
      *v54 = v33;
      v36[1] = v32;
      sub_22BE2540C();
      sub_22BEBFC80();
      sub_22BE187DC();
      sub_22BE19DC4(v37, v38, v39, &unk_27D907790);

      v25 = v55;
      v16 = v50;
LABEL_9:
      sub_22BEBFD18();
      v40 = sub_22BE354DC();
      v42 = sub_22BE5CE4C(v40, v41);
      sub_22BE181B0(v16);
      if (v43)
      {
        break;
      }

      v44 = *(v42 + 48);
      v45 = *v16;
      v46 = v16[1];
      sub_22BE2540C();
      sub_22BEBFC80();
      memcpy(v57, v53, sizeof(v57));
      sub_22C272F44();

      AST.FlatValue.hash(into:)(v57);
      sub_22BEBFDC4();
      v25 ^= sub_22C2741A4();
      if (!v22)
      {
        goto LABEL_3;
      }
    }

    MEMORY[0x2318AC860](v25);
    sub_22BE1AABC();
  }

  else
  {
LABEL_3:
    v28 = v54;
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v24)
      {
        v47 = sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
        sub_22BE191D8(v28, v48, v49, v47);
        v22 = 0;
        goto LABEL_9;
      }

      v22 = *(v18 + 8 * v27);
      ++v26;
      if (v22)
      {
        v55 = v25;
        v26 = v27;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22BEB8910(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = (*(a2 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(*(a2 + 56) + 8 * v13);

      sub_22BEA7680(v17);
      if (!v15)
      {
        break;
      }

      v7 &= v7 - 1;
      v19 = v17;
      memcpy(v18, a1, sizeof(v18));
      sub_22C272F44();

      AST.Expr.hash(into:)(v18);
      sub_22BE63574(v17);
      result = sub_22C2741A4();
      v10 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x2318AC860](v10);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22BEB8A6C(const void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 = result ^ v26)
  {
    v26 = v8;
LABEL_9:
    v11 = __clz(__rbit64(v5)) | (i << 6);
    v12 = *(a2 + 48) + 32 * v11;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    v17 = (*(a2 + 56) + 16 * v11);
    v18 = *v17;
    v19 = *(v17 + 1);
    sub_22BE6355C(*v12, v14, v15, *(v12 + 24));
    sub_22BEA7680(v19);
    memcpy(__dst, a1, sizeof(__dst));
    if (v16)
    {
      if (v16 != 1)
      {
        MEMORY[0x2318AC860](2);
        MEMORY[0x2318AC860](v13);
        goto LABEL_15;
      }

      MEMORY[0x2318AC860](1);
      sub_22C272F44();
      MEMORY[0x2318AC860](v15);
      v20 = v13;
      v21 = v14;
      v22 = v15;
      v23 = 1;
    }

    else
    {
      MEMORY[0x2318AC860](0);
      sub_22C272F44();
      v20 = v13;
      v21 = v14;
      v22 = v15;
      v23 = 0;
    }

    sub_22BE635AC(v20, v21, v22, v23);
LABEL_15:
    v5 &= v5 - 1;
    MEMORY[0x2318AC860](v18);
    AST.Expr.hash(into:)(__dst);
    sub_22BE63574(v19);
    result = sub_22C2741A4();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x2318AC860](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++i;
    if (v5)
    {
      v26 = v8;
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BEB8C70(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v23 = 0;
  for (i = 0; v6; v23 ^= result)
  {
LABEL_8:
    v11 = __clz(__rbit64(v6)) | (i << 6);
    v12 = *(a2 + 48) + 32 * v11;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    v17 = *(*(a2 + 56) + 8 * v11);
    sub_22BE6355C(*v12, v14, v15, *(v12 + 24));
    sub_22BEA7680(v17);
    if (v16 == 255)
    {
LABEL_17:

      return MEMORY[0x2318AC860](v23);
    }

    v25 = v17;
    memcpy(__dst, a1, sizeof(__dst));
    if (v16)
    {
      if (v16 != 1)
      {
        MEMORY[0x2318AC860](2);
        MEMORY[0x2318AC860](v13);
        goto LABEL_15;
      }

      MEMORY[0x2318AC860](1);
      sub_22C272F44();
      MEMORY[0x2318AC860](v15);
      v18 = v13;
      v19 = v14;
      v20 = v15;
      v21 = 1;
    }

    else
    {
      MEMORY[0x2318AC860](0);
      sub_22C272F44();
      v18 = v13;
      v19 = v14;
      v20 = v15;
      v21 = 0;
    }

    sub_22BE635AC(v18, v19, v20, v21);
LABEL_15:
    v6 &= v6 - 1;
    AST.Expr.hash(into:)(__dst);
    sub_22BE63574(v17);
    result = sub_22C2741A4();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      goto LABEL_17;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void sub_22BEB8E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v111 = v25;
  v110 = sub_22C26E614();
  v26 = sub_22BE17A18(v110);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE17A44();
  v103 = v31;
  v32 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  sub_22BE19448(v32);
  v34 = *(v33 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE4104C(v36, v99);
  v37 = type metadata accessor for Candidate(0);
  v38 = sub_22BE179D8(v37);
  v105 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BE17B98();
  v108 = v42;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v43);
  sub_22BE19E94();
  sub_22BEC0988(v44);
  v45 = sub_22BE5CE4C(&off_27D909000, &qword_22C27FC58);
  v46 = sub_22BE19448(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v49);
  v51 = &v99 - v50;
  v52 = *(v24 + 64);
  v112 = v24 + 64;
  v53 = 1 << *(v24 + 32);
  sub_22BE18010();
  v56 = v55 & v54;
  v100 = (v57 + 63) >> 6;
  sub_22BE25A74();
  v99 = v58;
  v102 = v28 + 32;
  v101 = v28 + 8;
  v107 = v24;

  v59 = 0;
  v60 = 0;
  v106 = v37;
  v104 = v20;
  while (1)
  {
    v113 = v59;
    if (!v56)
    {
      break;
    }

    v61 = v60;
LABEL_8:
    v62 = __clz(__rbit64(v56));
    v56 &= v56 - 1;
    v63 = *(v107 + 56);
    v64 = *(v107 + 48) + 32 * (v62 | (v61 << 6));
    v66 = *v64;
    v65 = *(v64 + 8);
    v67 = *(v64 + 16);
    v68 = *(v64 + 24);
    v69 = *(v105 + 72);
    sub_22BE40BC8();
    sub_22BEBFD70();
    v70 = sub_22BE5CE4C(&qword_27D909008, &qword_22C27FC60);
    v71 = *(v70 + 48);
    v72 = v104;
    *v104 = v66;
    v72[1] = v65;
    v72[2] = v67;
    *(v72 + 24) = v68;
    sub_22BE1949C();
    sub_22BEBFC80();
    sub_22BE187DC();
    sub_22BEC0788(v73, v74, v75, v70);
    v37 = v106;
LABEL_9:
    sub_22BE200D4();
    sub_22BEBFD18();
    v76 = sub_22BEC081C();
    v78 = sub_22BE5CE4C(v76, v77);
    sub_22BE181B0(v51);
    if (v79)
    {

      MEMORY[0x2318AC860](v113);
      sub_22BE1AABC();
      return;
    }

    v80 = *(v78 + 48);
    v81 = *v51;
    v82 = *(v51 + 1);
    v83 = *(v51 + 2);
    v84 = v51[24];
    sub_22BE1949C();
    v85 = v108;
    sub_22BEBFC80();
    memcpy(v114, v111, sizeof(v114));
    sub_22C272F44();
    sub_22C274174();
    if (v84 != 1)
    {
      MEMORY[0x2318AC860](v83);
    }

    v87 = v109;
    v86 = v110;

    sub_22C272874();
    sub_22BE23814();
    sub_22BEBFCD4(&unk_27D909010);
    sub_22C272EE4();
    switch(*(v85 + v37[5]))
    {
      case 1:
        sub_22BEC0864();
        break;
      case 4:
        sub_22BEC0850();
        break;
      default:
        break;
    }

    sub_22C272F44();

    v91 = (v85 + v37[6]);
    v92 = *v91;
    if (*(v91 + 8) == 1)
    {
      v92 = v92 != 0;
    }

    else
    {
      MEMORY[0x2318AC860](2);
    }

    MEMORY[0x2318AC860](v92);
    v93 = v37[7];
    sub_22C26E684();
    sub_22BE17BAC();
    sub_22BEBFCD4(&qword_28107F2F0);
    sub_22C272EE4();
    v94 = v37[8];
    sub_22BE22868();
    sub_22BE1AB5C(v87, 1, v86);
    if (v79)
    {
      sub_22C274174();
    }

    else
    {
      sub_22BE33554(&a18);
      v95 = sub_22BE236C8();
      v96(v95);
      sub_22C274174();
      sub_22BE251C4();
      sub_22BEBFCD4(&unk_27D909018);
      sub_22C272EE4();
      sub_22BE33554(&a17);
      v97 = sub_22BE191CC();
      v98(v97);
    }

    sub_22BEBFDC4();
    v59 = sub_22C2741A4() ^ v113;
  }

  while (1)
  {
    v61 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      break;
    }

    if (v61 >= v100)
    {
      sub_22BE5CE4C(&qword_27D909008, &qword_22C27FC60);
      v88 = sub_22BE26188();
      sub_22BE19DC4(v88, v89, 1, v90);
      v56 = 0;
      goto LABEL_9;
    }

    v56 = *(v112 + 8 * v61);
    ++v60;
    if (v56)
    {
      v60 = v61;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_22BEB9528(uint64_t a1, uint64_t a2)
{
  sub_22BE17BC4();
  v55 = sub_22C26E1D4();
  v3 = sub_22BE179D8(v55);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  v54 = v8;
  sub_22BE183BC();
  v53 = sub_22C26E684();
  v9 = sub_22BE179D8(v53);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  v16 = v15 - v14;
  v17 = type metadata accessor for AST.FlatValue(0);
  v18 = sub_22BE179D8(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE179EC();
  v25 = (v24 - v23);
  v26 = *(a2 + 16);
  result = MEMORY[0x2318AC860](v26);
  if (v26)
  {
    v28 = a2 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v29 = v5;
    v30 = *(v20 + 72);
    v51 = (v29 + 8);
    v52 = (v29 + 32);
    v50 = (v11 + 32);
    do
    {
      sub_22BE3E51C();
      sub_22BEC0664();
      sub_22BE196A8();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v43 = *v25;
          MEMORY[0x2318AC860](2);
          v34 = v43;
          goto LABEL_14;
        case 2u:
          v35 = *v25;
          MEMORY[0x2318AC860](3);
          if (v35 == 0.0)
          {
            v36 = 0.0;
          }

          else
          {
            v36 = v35;
          }

          result = MEMORY[0x2318AC890](*&v36);
          break;
        case 3u:
          v37 = *v25;
          v38 = *(v25 + 1);
          v39 = 4;
          goto LABEL_18;
        case 4u:
          v32 = *v25;
          MEMORY[0x2318AC860](5);
          v33 = sub_22BE33FD8();
          sub_22BEB9528(v33);
          goto LABEL_19;
        case 5u:
          v44 = *v25;
          MEMORY[0x2318AC860](6);
          sub_22BE33FD8();
          sub_22BEB8604();
          goto LABEL_19;
        case 6u:
          v45 = *v25;
          v46 = *(v25 + 1);
          v39 = 7;
LABEL_18:
          MEMORY[0x2318AC860](v39);
          sub_22BE33FD8();
          sub_22C272F44();
LABEL_19:

          break;
        case 7u:
          v40 = v53;
          (*v50)(v16, v25, v53);
          MEMORY[0x2318AC860](8);
          sub_22BE17BAC();
          sub_22BEBFCD4(&qword_28107F2F0);
          sub_22BE44750();
          sub_22C272EE4();
          sub_22BEC061C();
          v42 = v16;
          goto LABEL_21;
        case 8u:
          v47 = *v52;
          v40 = v55;
          v48 = sub_22BE354DC();
          v49(v48);
          MEMORY[0x2318AC860](9);
          sub_22BEBFCD4(&unk_27D9071C0);
          sub_22BE44750();
          sub_22C272EE4();
          v41 = *v51;
          v42 = v54;
LABEL_21:
          result = v41(v42, v40);
          break;
        case 9u:
          v34 = 0.0;
LABEL_14:
          result = MEMORY[0x2318AC860](*&v34);
          break;
        default:
          v31 = *v25;
          MEMORY[0x2318AC860](1);
          result = sub_22C274174();
          break;
      }

      v28 += v30;
      --v26;
    }

    while (v26);
  }

  return result;
}

unint64_t sub_22BEB98FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x2318AC860](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      v7 = *v6++;
      sub_22BEA7680(v7);
      AST.Expr.hash(into:)(a1);
      result = sub_22BE63574(v7);
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t sub_22BEB997C()
{
  result = qword_27D908520;
  if (!qword_27D908520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908520);
  }

  return result;
}

unint64_t sub_22BEB99D0()
{
  result = qword_27D908530;
  if (!qword_27D908530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908530);
  }

  return result;
}

unint64_t sub_22BEB9A24(uint64_t a1)
{
  result = sub_22BE267CC(a1);
  if (!result)
  {
    sub_22BEC0548();
    sub_22BE7431C(&qword_27D908448, &qword_22C27ABD0);
    v3();
    v2();
    sub_22BE336E8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_22BEB9AA4()
{
  result = qword_27D908540;
  if (!qword_27D908540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908540);
  }

  return result;
}

unint64_t sub_22BEB9AF8()
{
  result = qword_27D908548;
  if (!qword_27D908548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908548);
  }

  return result;
}

unint64_t sub_22BEB9B4C()
{
  result = qword_27D908550;
  if (!qword_27D908550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908550);
  }

  return result;
}

unint64_t sub_22BEB9BA0()
{
  result = qword_27D908558;
  if (!qword_27D908558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908558);
  }

  return result;
}

unint64_t sub_22BEB9BF4()
{
  result = qword_27D908580;
  if (!qword_27D908580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908580);
  }

  return result;
}

unint64_t sub_22BEB9C48()
{
  result = qword_27D908588;
  if (!qword_27D908588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908588);
  }

  return result;
}

unint64_t sub_22BEB9C9C()
{
  result = qword_27D908590;
  if (!qword_27D908590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908590);
  }

  return result;
}

unint64_t sub_22BEB9CF0()
{
  result = qword_27D908598;
  if (!qword_27D908598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908598);
  }

  return result;
}

unint64_t sub_22BEB9D44()
{
  result = qword_27D9085B8;
  if (!qword_27D9085B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9085B8);
  }

  return result;
}

unint64_t sub_22BEB9D98()
{
  result = qword_27D9085E0;
  if (!qword_27D9085E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9085E0);
  }

  return result;
}

unint64_t sub_22BEB9DEC()
{
  result = qword_27D9085E8;
  if (!qword_27D9085E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9085E8);
  }

  return result;
}

unint64_t sub_22BEB9E40()
{
  result = qword_27D9085F0;
  if (!qword_27D9085F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9085F0);
  }

  return result;
}

unint64_t sub_22BEB9E94()
{
  result = qword_27D9085F8;
  if (!qword_27D9085F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9085F8);
  }

  return result;
}

unint64_t sub_22BEB9EE8()
{
  result = qword_27D908628;
  if (!qword_27D908628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908628);
  }

  return result;
}

unint64_t sub_22BEB9F3C(uint64_t a1)
{
  result = sub_22BE267CC(a1);
  if (!result)
  {
    sub_22BEC0548();
    sub_22BE7431C(&qword_27D908630, &qword_22C27ACC8);
    v3();
    v2();
    sub_22BE336E8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_22BEB9FBC()
{
  result = qword_27D908640;
  if (!qword_27D908640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908640);
  }

  return result;
}

unint64_t sub_22BEBA010()
{
  result = qword_27D908658;
  if (!qword_27D908658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908658);
  }

  return result;
}

unint64_t sub_22BEBA064()
{
  result = qword_27D908668;
  if (!qword_27D908668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908668);
  }

  return result;
}

unint64_t sub_22BEBA0B8()
{
  result = qword_27D908670;
  if (!qword_27D908670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908670);
  }

  return result;
}

unint64_t sub_22BEBA10C()
{
  result = qword_27D908680;
  if (!qword_27D908680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908680);
  }

  return result;
}

unint64_t sub_22BEBA160()
{
  result = qword_27D9086A0;
  if (!qword_27D9086A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9086A0);
  }

  return result;
}

unint64_t sub_22BEBA1B4()
{
  result = qword_27D9086A8;
  if (!qword_27D9086A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9086A8);
  }

  return result;
}

unint64_t sub_22BEBA208()
{
  result = qword_27D9086B0;
  if (!qword_27D9086B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9086B0);
  }

  return result;
}

unint64_t sub_22BEBA25C()
{
  result = qword_27D9086E8;
  if (!qword_27D9086E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9086E8);
  }

  return result;
}

unint64_t sub_22BEBA2B0()
{
  result = qword_27D9086F0;
  if (!qword_27D9086F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9086F0);
  }

  return result;
}

unint64_t sub_22BEBA304()
{
  result = qword_27D9086F8;
  if (!qword_27D9086F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9086F8);
  }

  return result;
}

unint64_t sub_22BEBA358()
{
  result = qword_27D908768;
  if (!qword_27D908768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908768);
  }

  return result;
}

unint64_t sub_22BEBA3AC()
{
  result = qword_27D908770;
  if (!qword_27D908770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908770);
  }

  return result;
}

unint64_t sub_22BEBA400()
{
  result = qword_27D908778;
  if (!qword_27D908778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908778);
  }

  return result;
}

unint64_t sub_22BEBA454()
{
  result = qword_27D908790;
  if (!qword_27D908790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908790);
  }

  return result;
}

unint64_t sub_22BEBA4A8()
{
  result = qword_27D9087A8;
  if (!qword_27D9087A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9087A8);
  }

  return result;
}

unint64_t sub_22BEBA4FC()
{
  result = qword_27D9087B0;
  if (!qword_27D9087B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9087B0);
  }

  return result;
}

unint64_t sub_22BEBA550()
{
  result = qword_27D9087B8;
  if (!qword_27D9087B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9087B8);
  }

  return result;
}

unint64_t sub_22BEBA5A4()
{
  result = qword_27D9087C0;
  if (!qword_27D9087C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9087C0);
  }

  return result;
}

unint64_t sub_22BEBA5F8()
{
  result = qword_27D9087C8;
  if (!qword_27D9087C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9087C8);
  }

  return result;
}

unint64_t sub_22BEBA64C()
{
  result = qword_27D9087D0;
  if (!qword_27D9087D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9087D0);
  }

  return result;
}

unint64_t sub_22BEBA6A0(uint64_t a1)
{
  result = sub_22BE267CC(a1);
  if (!result)
  {
    sub_22BEC0548();
    sub_22BE7431C(&qword_27D908780, &qword_22C27AD98);
    v2();
    sub_22BE336E8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_22BEBA714(uint64_t a1)
{
  result = sub_22BE267CC(a1);
  if (!result)
  {
    v4 = v3;
    sub_22BE7431C(&qword_27D908798, &qword_22C27ADA0);
    v4();
    sub_22BE1A8C4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_22BEBA784()
{
  result = qword_27D908858;
  if (!qword_27D908858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908858);
  }

  return result;
}

unint64_t sub_22BEBA7D8()
{
  result = qword_27D908860;
  if (!qword_27D908860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908860);
  }

  return result;
}

unint64_t sub_22BEBA82C()
{
  result = qword_27D908868;
  if (!qword_27D908868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908868);
  }

  return result;
}

unint64_t sub_22BEBA880()
{
  result = qword_27D908870;
  if (!qword_27D908870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908870);
  }

  return result;
}

unint64_t sub_22BEBA8D4()
{
  result = qword_27D908938;
  if (!qword_27D908938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908938);
  }

  return result;
}

unint64_t sub_22BEBA928()
{
  result = qword_27D908940;
  if (!qword_27D908940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908940);
  }

  return result;
}

unint64_t sub_22BEBA97C()
{
  result = qword_27D908948;
  if (!qword_27D908948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908948);
  }

  return result;
}

unint64_t sub_22BEBA9D0()
{
  result = qword_27D908950;
  if (!qword_27D908950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908950);
  }

  return result;
}

unint64_t sub_22BEBAA24()
{
  result = qword_27D908958;
  if (!qword_27D908958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908958);
  }

  return result;
}

unint64_t sub_22BEBAA78()
{
  result = qword_27D908960;
  if (!qword_27D908960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908960);
  }

  return result;
}

unint64_t sub_22BEBAACC()
{
  result = qword_27D908968;
  if (!qword_27D908968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908968);
  }

  return result;
}

unint64_t sub_22BEBAB20()
{
  result = qword_27D908970;
  if (!qword_27D908970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908970);
  }

  return result;
}

unint64_t sub_22BEBAB74()
{
  result = qword_27D908978;
  if (!qword_27D908978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908978);
  }

  return result;
}

unint64_t sub_22BEBABC8()
{
  result = qword_27D908980;
  if (!qword_27D908980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908980);
  }

  return result;
}

unint64_t sub_22BEBAC1C()
{
  result = qword_27D908988;
  if (!qword_27D908988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908988);
  }

  return result;
}

unint64_t sub_22BEBAC70()
{
  result = qword_27D908990;
  if (!qword_27D908990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908990);
  }

  return result;
}

unint64_t sub_22BEBACC4()
{
  result = qword_27D908998;
  if (!qword_27D908998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908998);
  }

  return result;
}

unint64_t sub_22BEBAD18()
{
  result = qword_27D9089A0;
  if (!qword_27D9089A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9089A0);
  }

  return result;
}

unint64_t sub_22BEBAD6C()
{
  result = qword_27D9089A8;
  if (!qword_27D9089A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9089A8);
  }

  return result;
}

unint64_t sub_22BEBADC0()
{
  result = qword_27D9089B0;
  if (!qword_27D9089B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9089B0);
  }

  return result;
}

unint64_t sub_22BEBAE14()
{
  result = qword_27D9089B8;
  if (!qword_27D9089B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9089B8);
  }

  return result;
}

unint64_t sub_22BEBAE68()
{
  result = qword_27D9089C0;
  if (!qword_27D9089C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9089C0);
  }

  return result;
}

unint64_t sub_22BEBAEBC()
{
  result = qword_27D9089C8;
  if (!qword_27D9089C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9089C8);
  }

  return result;
}

unint64_t sub_22BEBAF10()
{
  result = qword_27D9089D0;
  if (!qword_27D9089D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9089D0);
  }

  return result;
}

unint64_t sub_22BEBAF64()
{
  result = qword_28106DBE0;
  if (!qword_28106DBE0)
  {
    sub_22BE7431C(&qword_27D908050, &qword_22C278EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106DBE0);
  }

  return result;
}

unint64_t sub_22BEBAFC8()
{
  result = qword_27D908A80;
  if (!qword_27D908A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908A80);
  }

  return result;
}

unint64_t sub_22BEBB01C()
{
  result = qword_27D908A88;
  if (!qword_27D908A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908A88);
  }

  return result;
}

unint64_t sub_22BEBB074()
{
  result = qword_27D908A90;
  if (!qword_27D908A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908A90);
  }

  return result;
}

unint64_t sub_22BEBB0CC()
{
  result = qword_27D908A98;
  if (!qword_27D908A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908A98);
  }

  return result;
}

unint64_t sub_22BEBB120()
{
  result = qword_27D908AA0;
  if (!qword_27D908AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908AA0);
  }

  return result;
}

unint64_t sub_22BEBB1C0()
{
  result = qword_27D908AB0;
  if (!qword_27D908AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908AB0);
  }

  return result;
}

unint64_t sub_22BEBB218()
{
  result = qword_27D908AB8;
  if (!qword_27D908AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908AB8);
  }

  return result;
}

unint64_t sub_22BEBB270()
{
  result = qword_27D908AC0;
  if (!qword_27D908AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908AC0);
  }

  return result;
}

unint64_t sub_22BEBB2C8()
{
  result = qword_27D908AC8;
  if (!qword_27D908AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908AC8);
  }

  return result;
}

unint64_t sub_22BEBB320()
{
  result = qword_27D908AD0;
  if (!qword_27D908AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908AD0);
  }

  return result;
}

unint64_t sub_22BEBB378()
{
  result = qword_27D908AD8;
  if (!qword_27D908AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908AD8);
  }

  return result;
}

uint64_t sub_22BEBB3E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_22BEBB43C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_22BEBB4C0(void *a1)
{
  v1 = *a1 >> 60;
  if (v1 <= 0xA)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 11;
  }
}

uint64_t sub_22BEBB4DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x75 && *(a1 + 8))
    {
      v2 = *a1 + 116;
    }

    else
    {
      v2 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
      if (v2 >= 0x74)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_22BEBB524(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x74)
  {
    *result = a2 - 117;
    if (a3 >= 0x75)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x75)
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

unint64_t *sub_22BEBB584(unint64_t *result, uint64_t a2)
{
  if (a2 < 0xB)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    v2 = (8 * (a2 - 11)) | 0xB000000000000000;
  }

  *result = v2;
  return result;
}

__n128 sub_22BEBB5C8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22BEBB5DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 33))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_22BEBB624(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

__n128 sub_22BEBB6C0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_22BEBB6D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BEBB714(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

void sub_22BEBB79C()
{
  sub_22C26E684();
  if (v0 <= 0x3F)
  {
    sub_22BEBB820();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22BEBB820()
{
  if (!qword_27D908AF0)
  {
    sub_22BEBAFC8();
    v0 = sub_22C272EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D908AF0);
    }
  }
}

uint64_t sub_22BEBB884(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[16])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BEBB8C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BEBB954(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BEBB980(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_22BEBB99C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && *(a1 + 17))
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 7)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BEBB9DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

uint64_t sub_22BEBBA20(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_22BEBBA68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BEBBAA8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22BEBBB08(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_22BE39E30(-1);
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
      return sub_22BE39E30((*a1 | (v4 << 8)) - 19);
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

      return sub_22BE39E30((*a1 | (v4 << 8)) - 19);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_22BE39E30((*a1 | (v4 << 8)) - 19);
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

  return sub_22BE39E30(v8);
}

_BYTE *sub_22BEBBB8C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    switch(v5)
    {
      case 1:
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BE25EF4(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_22BE22BD0(result, a2 + 18);
        }

        break;
    }
  }

  return result;
}

uint64_t _s7LiteralO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s7LiteralO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t _s4ExprO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s4ExprO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BEBC250(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BE25EF4(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_22BE22BD0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BEBC33C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BE25EF4(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_22BE22BD0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BEBC448(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return _s30IntelligenceFlowPlannerSupport20GlobalToolIdentifierV6toolId09deviceIdsI0017representsBuiltInF0ACSS_SSSgSbtcfcfA1__0();
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return sub_22BE25A30(a1);
}

_BYTE *sub_22BEBC490(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}