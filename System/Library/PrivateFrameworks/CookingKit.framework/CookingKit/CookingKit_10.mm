void *sub_21A22C500(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFFF80);
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v16 - v6);
  v8 = *(a2 + *(type metadata accessor for StepSection() + 24));
  result = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = 0;
    while (v11 < *(v8 + 16))
    {
      v12 = *(type metadata accessor for Step() - 8);
      v13 = v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11;
      v14 = *(v4 + 48);
      *v7 = v11;
      sub_21A22D1A4(v13, v7 + v14, type metadata accessor for Step);
      v15 = sub_21A22C6A8(v11, v7 + v14, a1);
      sub_21A1427A8(v7, &qword_27CCFFF80);
      result = sub_21A2C6C78(v15);
      if (v10 == ++v11)
      {
        return v17;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21A22C6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Step();
  v5 = *(a2 + *(result + 24));
  v18 = *(v5 + 16);
  if (v18)
  {
    v6 = 0;
    v7 = (v5 + 64);
    v8 = MEMORY[0x277D84F90];
    v17 = v5;
    while (v6 < *(v5 + 16))
    {
      v9 = *(v7 - 4);
      v10 = *(v7 - 3);
      v12 = *(v7 - 2);
      v11 = *(v7 - 1);
      v13 = *v7;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_21A1B77DC(0, v8[2] + 1, 1, v8);
      }

      v15 = v8[2];
      v14 = v8[3];
      if (v15 >= v14 >> 1)
      {
        v8 = sub_21A1B77DC((v14 > 1), v15 + 1, 1, v8);
      }

      v8[2] = v15 + 1;
      v16 = &v8[8 * v15];
      v16[4] = a3;
      v16[5] = a1;
      v16[6] = v6;
      v16[7] = v9;
      v16[8] = v10;
      v16[9] = v12;
      v7 += 5;
      ++v6;
      v16[10] = v11;
      v16[11] = v13;
      v5 = v17;
      if (v18 == v6)
      {
        return v8;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t _s10CookingKit11StepSectionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Duration();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A176C98(&qword_27CCFF3D0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v35 - v11;
  v13 = sub_21A176C98(&qword_27CCFF3D8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v35 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (sub_21A2F8394() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = type metadata accessor for StepSection();
  v20 = a1;
  v21 = a2;
  v35 = v19;
  v36 = v20;
  v22 = *(v19 + 20);
  v23 = *(v13 + 48);
  sub_21A183960(v20 + v22, v16, &qword_27CCFF3D0);
  v24 = v21 + v22;
  v25 = v21;
  sub_21A183960(v24, &v16[v23], &qword_27CCFF3D0);
  v26 = *(v5 + 48);
  if (v26(v16, 1, v4) != 1)
  {
    sub_21A183960(v16, v12, &qword_27CCFF3D0);
    if (v26(&v16[v23], 1, v4) != 1)
    {
      sub_21A22D13C(&v16[v23], v8, type metadata accessor for Duration);
      v27 = _s10CookingKit8DurationO2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_21A22D0DC(v8, type metadata accessor for Duration);
      sub_21A22D0DC(v12, type metadata accessor for Duration);
      sub_21A1427A8(v16, &qword_27CCFF3D0);
      if ((v27 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    sub_21A22D0DC(v12, type metadata accessor for Duration);
LABEL_13:
    sub_21A1427A8(v16, &qword_27CCFF3D8);
    return 0;
  }

  if (v26(&v16[v23], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_21A1427A8(v16, &qword_27CCFF3D0);
LABEL_15:
  v29 = v35;
  v28 = v36;
  if (sub_21A19E928(*(v36 + *(v35 + 24)), *(v25 + *(v35 + 24))))
  {
    v30 = *(v29 + 28);
    v31 = *(v28 + v30);
    v32 = *(v25 + v30);
    if (v31)
    {
      if (v32)
      {
        sub_21A2F5434();
        v33 = sub_21A19D640(v31, v32);

        if (v33)
        {
          return 1;
        }
      }
    }

    else if (!v32)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_21A22CBDC()
{
  result = qword_27CD023D8;
  if (!qword_27CD023D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD023D8);
  }

  return result;
}

uint64_t sub_21A22CC30(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(&qword_27CD02400);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A22CCA8()
{
  result = qword_27CD02410;
  if (!qword_27CD02410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02410);
  }

  return result;
}

uint64_t sub_21A22CCFC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(&qword_27CD023E8);
    sub_21A22CD98(a2, type metadata accessor for Step);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A22CD98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21A22CDE0()
{
  result = qword_27CD02440;
  if (!qword_27CD02440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02440);
  }

  return result;
}

unint64_t sub_21A22CE70()
{
  result = qword_27CD02448;
  if (!qword_27CD02448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02448);
  }

  return result;
}

unint64_t sub_21A22CEC8()
{
  result = qword_27CD02450;
  if (!qword_27CD02450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02450);
  }

  return result;
}

unint64_t sub_21A22CF20()
{
  result = qword_27CD02458;
  if (!qword_27CD02458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02458);
  }

  return result;
}

uint64_t sub_21A22CF74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_21A2F8394() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D69546C61746F74 && a2 == 0xE900000000000065 || (sub_21A2F8394() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7370657473 && a2 == 0xE500000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6569646572676E69 && a2 == 0xEB0000000073746ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_21A2F8394();

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

uint64_t sub_21A22D0DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A22D13C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A22D1A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Yield.text.getter()
{
  v1 = *v0;
  sub_21A2F5434();
  return v1;
}

uint64_t Yield.textMeasurement.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v7[0] = v1[1];
  v7[1] = v2;
  v8[0] = v1[3];
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 57);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_21A22D288(v7, &v6);
}

uint64_t sub_21A22D288(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFF3C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A22D2FC()
{
  if (*v0)
  {
    return 0x7361654D74786574;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_21A22D33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_21A2F8394() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7361654D74786574 && a2 == 0xEF746E656D657275)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A2F8394();

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

uint64_t sub_21A22D420(uint64_t a1)
{
  v2 = sub_21A22DCB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A22D45C(uint64_t a1)
{
  v2 = sub_21A22DCB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Yield.encode(to:)(void *a1)
{
  v4 = sub_21A176C98(&qword_27CD02468);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v15 - v7;
  v9 = v1[2];
  v21 = v1[1];
  v22 = v9;
  v23[0] = v1[3];
  *(v23 + 9) = *(v1 + 57);
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  sub_21A142764(v11, v10);
  sub_21A22DCB0();
  sub_21A2F84B4();
  LOBYTE(v18) = 0;
  sub_21A2F82E4();
  if (!v2)
  {
    v18 = v21;
    v19 = v22;
    v20[0] = v23[0];
    *(v20 + 9) = *(v23 + 9);
    v17 = 1;
    sub_21A22D288(&v21, v15);
    sub_21A20A574();
    sub_21A2F82D4();
    v15[0] = v18;
    v15[1] = v19;
    *v16 = v20[0];
    *&v16[9] = *(v20 + 9);
    sub_21A1427A8(v15, &qword_27CCFF3C0);
  }

  return (*(v5 + 8))(v8, v13);
}

uint64_t Yield.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v30 = a2;
  v4 = sub_21A176C98(&qword_27CD02478);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v22 - v7;
  sub_21A142764(a1, a1[3]);
  sub_21A22DCB0();
  sub_21A2F8494();
  if (v2)
  {
    sub_21A142808(a1);
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    LOBYTE(v42) = -2;
    return sub_21A1427A8(&v38, &qword_27CCFF3C0);
  }

  else
  {
    v9 = v5;
    v10 = v30;
    LOBYTE(v38) = 0;
    v11 = sub_21A2F8244();
    v13 = v12;
    v29 = v11;
    v52 = 1;
    sub_21A20A7D8();
    sub_21A2F8234();
    (*(v9 + 8))(v8, v4);
    v14 = v45;
    v27 = v45;
    v15 = v46;
    v25 = v47;
    v26 = v46;
    v28 = v48;
    v23 = v50;
    v24 = v49;
    LOBYTE(v9) = v51;
    memset(v31, 0, sizeof(v31));
    v32 = 0;
    v33 = -2;
    sub_21A1427A8(v31, &qword_27CCFF3C0);
    *&v34 = v29;
    *(&v34 + 1) = v13;
    v35 = v14;
    v17 = v24;
    v16 = v25;
    *&v36 = v15;
    *(&v36 + 1) = v25;
    *&v37[0] = v28;
    *(&v37[0] + 1) = v24;
    v18 = v23;
    *&v37[1] = v23;
    BYTE8(v37[1]) = v9;
    v19 = v37[0];
    v10[2] = v36;
    v10[3] = v19;
    *(v10 + 57) = *(v37 + 9);
    v20 = v35;
    *v10 = v34;
    v10[1] = v20;
    sub_21A1A3854(&v34, &v38);
    sub_21A142808(a1);
    *&v38 = v29;
    *(&v38 + 1) = v13;
    v39 = v27;
    *&v40 = v26;
    *(&v40 + 1) = v16;
    v41 = v28;
    v42 = v17;
    v43 = v18;
    v44 = v9;
    return sub_21A1A38B0(&v38);
  }
}

BOOL _s10CookingKit5YieldV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 2);
  v38[0] = *(a1 + 1);
  v38[1] = v6;
  *v39 = *(a1 + 3);
  *&v39[9] = *(a1 + 57);
  v7 = *a2;
  v8 = a2[1];
  *&v41[9] = *(a2 + 57);
  v9 = *(a2 + 3);
  v40[1] = *(a2 + 2);
  *v41 = v9;
  v40[0] = *(a2 + 1);
  if (v4 == v7 && v5 == v8 || (v10 = 0, (sub_21A2F8394() & 1) != 0))
  {
    v11 = v39[24];
    v12 = *(a2 + 2);
    *&v37[7] = *(a2 + 1);
    *&v37[23] = v12;
    *&v37[39] = *(a2 + 3);
    *&v37[55] = a2[8];
    v13 = v41[24];
    if (v39[24] == 254)
    {
      if (v41[24] == 254)
      {
        v14 = *(a1 + 2);
        v30 = *(a1 + 1);
        v31 = v14;
        *v32 = *(a1 + 3);
        *&v32[16] = a1[8];
        v32[24] = -2;
        sub_21A22D288(v38, &v27);
        sub_21A22D288(v40, &v27);
        sub_21A1427A8(&v30, &qword_27CCFF3C0);
        return 1;
      }

      sub_21A22D288(v38, &v30);
      sub_21A22D288(v40, &v30);
    }

    else
    {
      v15 = *(a1 + 3);
      v31 = *(a1 + 2);
      *v32 = v15;
      *&v32[16] = a1[8];
      v30 = *(a1 + 1);
      v32[24] = v39[24];
      v27 = v30;
      v28 = v31;
      v29[0] = v15;
      *(v29 + 9) = *&v32[9];
      if (v41[24] != 254)
      {
        v17 = *(a2 + 2);
        v24 = *(a2 + 1);
        v25 = v17;
        *v26 = *(a2 + 3);
        *&v26[16] = a2[8];
        v26[24] = v41[24];
        sub_21A22D288(v38, v22);
        sub_21A22D288(v40, v22);
        sub_21A22D288(&v30, v22);
        v10 = _s10CookingKit17InTextMeasurementV2eeoiySbAC_ACtFZ_0(&v27, &v24);
        v20[0] = v24;
        v20[1] = v25;
        v21[0] = *v26;
        *(v21 + 9) = *&v26[9];
        sub_21A1A37CC(v20);
        v22[0] = v27;
        v22[1] = v28;
        v23[0] = v29[0];
        *(v23 + 9) = *(v29 + 9);
        sub_21A1A37CC(v22);
        v18 = *(a1 + 2);
        v24 = *(a1 + 1);
        v25 = v18;
        *v26 = *(a1 + 3);
        *&v26[16] = a1[8];
        v26[24] = v11;
        sub_21A1427A8(&v24, &qword_27CCFF3C0);
        return v10;
      }

      v24 = v30;
      v25 = v31;
      *v26 = *v32;
      *&v26[9] = *&v32[9];
      sub_21A22D288(v38, v22);
      sub_21A22D288(v40, v22);
      sub_21A22D288(&v30, v22);
      sub_21A1A37CC(&v24);
    }

    v16 = *(a1 + 2);
    v30 = *(a1 + 1);
    v31 = v16;
    *v32 = *(a1 + 3);
    v33 = *v37;
    *&v32[16] = a1[8];
    v32[24] = v11;
    v34 = *&v37[16];
    *v35 = *&v37[32];
    *&v35[15] = *&v37[47];
    v36 = v13;
    sub_21A1427A8(&v30, &qword_27CCFF3C8);
    return 0;
  }

  return v10;
}

unint64_t sub_21A22DCB0()
{
  result = qword_27CD02470;
  if (!qword_27CD02470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02470);
  }

  return result;
}

uint64_t sub_21A22DD04(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A22DD18(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 <= 3)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

__n128 sub_21A22DD2C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21A22DD50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_21A22DD98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21A22DE00()
{
  result = qword_27CD02480;
  if (!qword_27CD02480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02480);
  }

  return result;
}

unint64_t sub_21A22DE58()
{
  result = qword_27CD02488;
  if (!qword_27CD02488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02488);
  }

  return result;
}

unint64_t sub_21A22DEB0()
{
  result = qword_27CD02490;
  if (!qword_27CD02490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02490);
  }

  return result;
}

BOOL sub_21A22DF04()
{
  v1 = v0;
  v2 = type metadata accessor for ExternalImageAsset(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageAsset(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RecipeTheme();
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = (&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13, v16);
  v18 = (&v41 - v17);
  v19 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v41 - v21;
  v42 = v1;
  sub_21A22F4A0(v1, v18, type metadata accessor for RecipeTheme);
  LODWORD(v1) = swift_getEnumCaseMultiPayload();

  if (v1 == 1)
  {
    v23 = sub_21A176C98(&qword_27CCFEB90);
    sub_21A22F430(v18 + *(v23 + 48), v22);
  }

  else
  {

    v24 = sub_21A176C98(&qword_27CCFEEA8);
    sub_21A22F508(v18 + *(v24 + 64), v22, type metadata accessor for ImageAsset);
    (*(v7 + 56))(v22, 0, 1, v6);
  }

  if ((*(v7 + 48))(v22, 1, v6) == 1)
  {
    sub_21A1427A8(v22, &qword_27CCFEDC0);
  }

  else
  {
    sub_21A22F4A0(v22, v10, type metadata accessor for ImageAsset);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_21A22F570(v10, type metadata accessor for ImageAsset);
      sub_21A22F570(v22, type metadata accessor for ImageAsset);
    }

    else
    {
      sub_21A22F508(v10, v5, type metadata accessor for ExternalImageAsset);
      v39 = &v5[*(v2 + 24)];
      v34 = *v39;
      v37 = *(v39 + 1);
      v40 = v39[16];
      sub_21A22F570(v5, type metadata accessor for ExternalImageAsset);
      sub_21A22F570(v22, type metadata accessor for ImageAsset);
      if ((v40 & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  sub_21A22F4A0(v42, v15, type metadata accessor for RecipeTheme);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v26 = *v15;
  if (EnumCaseMultiPayload == 1)
  {
    v27 = sub_21A176C98(&qword_27CCFEB90);
    sub_21A1427A8(v15 + *(v27 + 48), &qword_27CCFEDC0);
    if (!v26)
    {
      return 1;
    }
  }

  else
  {

    v26 = v15[1];
    v28 = sub_21A176C98(&qword_27CCFEEA8);
    sub_21A22F570(v15 + *(v28 + 64), type metadata accessor for ImageAsset);
    if (!v26)
    {
      return 1;
    }
  }

  [v26 size];
  v30 = v29;
  v32 = v31;
  [v26 scale];
  v34 = v30 * v33;
  [v26 scale];
  v36 = v35;

  v37 = v32 * v36;
LABEL_13:
  if (v34 < 280.0)
  {
    return 1;
  }

  return v37 < 280.0;
}

BOOL sub_21A22E3D4()
{
  v1 = v0;
  v2 = type metadata accessor for ExternalImageAsset(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageAsset(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RecipeTheme();
  MEMORY[0x28223BE20](v11, v12);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15, v16);
  v18 = (&v44 - v17);
  v19 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v44 - v21;
  v45 = v1;
  sub_21A22F4A0(v1, v18, type metadata accessor for RecipeTheme);
  LODWORD(v1) = swift_getEnumCaseMultiPayload();

  if (v1 == 1)
  {
    v23 = sub_21A176C98(&qword_27CCFEB90);
    sub_21A22F430(v18 + *(v23 + 48), v22);
  }

  else
  {

    v24 = sub_21A176C98(&qword_27CCFEEA8);
    sub_21A22F508(v18 + *(v24 + 64), v22, type metadata accessor for ImageAsset);
    (*(v7 + 56))(v22, 0, 1, v6);
  }

  if ((*(v7 + 48))(v22, 1, v6) == 1)
  {
    sub_21A1427A8(v22, &qword_27CCFEDC0);
  }

  else
  {
    sub_21A22F4A0(v22, v10, type metadata accessor for ImageAsset);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_21A22F570(v10, type metadata accessor for ImageAsset);
      sub_21A22F570(v22, type metadata accessor for ImageAsset);
    }

    else
    {
      sub_21A22F508(v10, v5, type metadata accessor for ExternalImageAsset);
      v42 = &v5[*(v2 + 24)];
      v34 = *v42;
      v37 = *(v42 + 1);
      v43 = v42[16];
      sub_21A22F570(v5, type metadata accessor for ExternalImageAsset);
      sub_21A22F570(v22, type metadata accessor for ImageAsset);
      if ((v43 & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  sub_21A22F4A0(v45, v14, type metadata accessor for RecipeTheme);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v26 = *v14;
  if (EnumCaseMultiPayload == 1)
  {
    v27 = sub_21A176C98(&qword_27CCFEB90);
    sub_21A1427A8(v14 + *(v27 + 48), &qword_27CCFEDC0);
    if (!v26)
    {
      return 0;
    }
  }

  else
  {

    v26 = v14[1];
    v28 = sub_21A176C98(&qword_27CCFEEA8);
    sub_21A22F570(v14 + *(v28 + 64), type metadata accessor for ImageAsset);
    if (!v26)
    {
      return 0;
    }
  }

  [v26 size];
  v30 = v29;
  v32 = v31;
  [v26 scale];
  v34 = v30 * v33;
  [v26 scale];
  v36 = v35;

  v37 = v32 * v36;
LABEL_13:
  v38 = [objc_opt_self() currentDevice];
  v39 = [v38 userInterfaceIdiom];

  if (v39)
  {
    v40 = 1024.0;
  }

  else
  {
    v40 = 600.0;
  }

  if (v34 < v40)
  {
    return 0;
  }

  return v40 <= v37;
}

BOOL sub_21A22E8E4()
{
  v1 = v0;
  v2 = type metadata accessor for RecipeTheme();
  MEMORY[0x28223BE20](v2, v3);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v20 - v12;
  sub_21A22F4A0(v1, v5, type metadata accessor for RecipeTheme);
  LODWORD(v1) = swift_getEnumCaseMultiPayload();

  if (v1 == 1)
  {
    v14 = sub_21A176C98(&qword_27CCFEB90);
    sub_21A22F430(v5 + *(v14 + 48), v9);
  }

  else
  {

    v15 = sub_21A176C98(&qword_27CCFEEA8);
    sub_21A22F508(v5 + *(v15 + 64), v9, type metadata accessor for ImageAsset);
    v16 = type metadata accessor for ImageAsset(0);
    (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  }

  sub_21A22F430(v9, v13);
  v17 = type metadata accessor for ImageAsset(0);
  v18 = (*(*(v17 - 8) + 48))(v13, 1, v17) != 1;
  sub_21A1427A8(v13, &qword_27CCFEDC0);
  return v18;
}

BOOL sub_21A22EB2C(uint64_t a1, uint64_t a2)
{
  v70 = sub_21A176C98(&qword_27CCFEE00);
  MEMORY[0x28223BE20](v70, v4);
  v73 = &v69 - v5;
  v6 = sub_21A176C98(&qword_27CCFEDC0);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v72 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v74 = &v69 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v76 = &v69 - v14;
  v15 = type metadata accessor for ImageAsset(0);
  v71 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v69 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v75 = &v69 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v69 - v23;
  v25 = type metadata accessor for RecipeTheme();
  v27 = MEMORY[0x28223BE20](v25, v26);
  v29 = (&v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27, v30);
  v32 = (&v69 - v31);
  v33 = sub_21A176C98(&qword_27CD024A8);
  v35 = MEMORY[0x28223BE20](v33 - 8, v34);
  v37 = &v69 - v36;
  v38 = (&v69 + *(v35 + 56) - v36);
  sub_21A22F4A0(a1, &v69 - v36, type metadata accessor for RecipeTheme);
  sub_21A22F4A0(a2, v38, type metadata accessor for RecipeTheme);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21A22F4A0(v37, v32, type metadata accessor for RecipeTheme);
    v39 = *v32;
    v47 = v32[1];
    v48 = *(sub_21A176C98(&qword_27CCFEEA8) + 64);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21A22F570(v32 + v48, type metadata accessor for ImageAsset);

LABEL_10:
      sub_21A1427A8(v37, &qword_27CD024A8);
      return 0;
    }

    v49 = *v38;
    v50 = v38[1];
    v51 = v32 + v48;
    v52 = v24;
    sub_21A22F508(v51, v24, type metadata accessor for ImageAsset);
    v53 = v75;
    sub_21A22F508(v38 + v48, v75, type metadata accessor for ImageAsset);
    if (v39)
    {
      if (!v49)
      {
LABEL_20:

LABEL_37:
        sub_21A22F570(v53, type metadata accessor for ImageAsset);
        sub_21A22F570(v52, type metadata accessor for ImageAsset);
        goto LABEL_38;
      }

      sub_21A141A6C(0, &qword_2811B3BC0);
      v54 = v39;
      v55 = v49;
      v56 = sub_21A2F7E74();

      if ((v56 & 1) == 0)
      {

        v39 = v55;
        goto LABEL_20;
      }
    }

    else if (v49)
    {
      v39 = v50;
      v50 = v47;
      v47 = v49;
      goto LABEL_20;
    }

    if (v47)
    {
      if (!v50)
      {
        v62 = v49;
        v49 = v39;
        goto LABEL_36;
      }

      sub_21A141A6C(0, &qword_2811B3BA8);
      v61 = v47;
      v62 = v50;
      v63 = sub_21A2F7E74();

      if ((v63 & 1) == 0)
      {

        v47 = v39;
LABEL_36:

        goto LABEL_37;
      }
    }

    else
    {
      if (v50)
      {
        v62 = v49;
        v49 = v39;
        v47 = v50;
        goto LABEL_36;
      }

      v61 = 0;
      v62 = 0;
    }

    v67 = _s10CookingKit10ImageAssetO2eeoiySbAC_ACtFZ_0(v52, v53);

    sub_21A22F570(v53, type metadata accessor for ImageAsset);
    sub_21A22F570(v52, type metadata accessor for ImageAsset);
    sub_21A22F570(v37, type metadata accessor for RecipeTheme);
    return v67;
  }

  sub_21A22F4A0(v37, v29, type metadata accessor for RecipeTheme);
  v39 = *v29;
  v40 = *(sub_21A176C98(&qword_27CCFEB90) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21A1427A8(v29 + v40, &qword_27CCFEDC0);
    goto LABEL_10;
  }

  v41 = *v38;
  v42 = v76;
  sub_21A22F430(v29 + v40, v76);
  v43 = v74;
  sub_21A22F430(v38 + v40, v74);
  if (v39)
  {
    if (!v41)
    {
LABEL_17:

      sub_21A1427A8(v43, &qword_27CCFEDC0);
      sub_21A1427A8(v42, &qword_27CCFEDC0);
LABEL_38:
      sub_21A22F570(v37, type metadata accessor for RecipeTheme);
      return 0;
    }

    sub_21A141A6C(0, &qword_2811B3BA8);
    v44 = v39;
    v45 = v41;
    v46 = sub_21A2F7E74();

    if ((v46 & 1) == 0)
    {

      v39 = v45;
      goto LABEL_17;
    }
  }

  else if (v41)
  {
    v39 = v41;
    goto LABEL_17;
  }

  v57 = *(v70 + 48);
  v58 = v73;
  sub_21A17FE58(v42, v73);
  sub_21A17FE58(v43, v58 + v57);
  v59 = *(v71 + 48);
  if (v59(v58, 1, v15) == 1)
  {

    sub_21A1427A8(v43, &qword_27CCFEDC0);
    v60 = v73;
    sub_21A1427A8(v42, &qword_27CCFEDC0);
    if (v59(v60 + v57, 1, v15) == 1)
    {
      sub_21A1427A8(v60, &qword_27CCFEDC0);
      goto LABEL_34;
    }

LABEL_30:
    sub_21A1427A8(v60, &qword_27CCFEE00);
    goto LABEL_38;
  }

  sub_21A17FE58(v58, v72);
  if (v59(v58 + v57, 1, v15) == 1)
  {

    sub_21A1427A8(v43, &qword_27CCFEDC0);
    v60 = v73;
    sub_21A1427A8(v42, &qword_27CCFEDC0);
    sub_21A22F570(v72, type metadata accessor for ImageAsset);
    goto LABEL_30;
  }

  v64 = v58 + v57;
  v65 = v69;
  sub_21A22F508(v64, v69, type metadata accessor for ImageAsset);
  v66 = v72;
  LODWORD(v75) = _s10CookingKit10ImageAssetO2eeoiySbAC_ACtFZ_0(v72, v65);

  sub_21A22F570(v65, type metadata accessor for ImageAsset);
  sub_21A1427A8(v43, &qword_27CCFEDC0);
  sub_21A1427A8(v42, &qword_27CCFEDC0);
  sub_21A22F570(v66, type metadata accessor for ImageAsset);
  sub_21A1427A8(v58, &qword_27CCFEDC0);
  if ((v75 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_34:
  sub_21A22F570(v37, type metadata accessor for RecipeTheme);
  return 1;
}

uint64_t sub_21A22F430(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFEDC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A22F4A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A22F508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A22F570(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A22F5D0()
{
  sub_21A14E5B0();
  sub_21A14E604();

  return sub_21A2F7624();
}

uint64_t sub_21A22F62C()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 136);
    v5 = *(v2 + 144);

    return MEMORY[0x2822009F8](sub_21A22F740, v4, v5);
  }

  return result;
}

uint64_t sub_21A22F740()
{
  v1 = *(v0 + 168);
  if (v1 == 2 || (Strong = swift_weakLoadStrong()) == 0)
  {

    sub_21A142808(v0 + 16);
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    *(Strong + 16) = v1 & 1;
    *(v0 + 96) = Strong;
    type metadata accessor for OfflineStatusSource();
    sub_21A14EA40(&qword_2811B6C40);
    sub_21A2F75C4();

    v3 = sub_21A2F7C24();
    *(v0 + 152) = v3;
    sub_21A143D8C(v0 + 16, *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 160) = v4;
    *v4 = v0;
    v4[1] = sub_21A22F62C;
    v5 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v0 + 168, v3, v5);
  }
}

uint64_t sub_21A22F8F4()
{
  sub_21A22F9A0(v0 + 24);
  v1 = OBJC_IVAR____TtC10CookingKit19OfflineStatusSource___scope;
  v2 = sub_21A2F7614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21A22F9A0(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD024B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for RecipeCardLowResHeroView()
{
  result = qword_27CD024B8;
  if (!qword_27CD024B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A22FA8C()
{
  type metadata accessor for RecipeCardViewModel(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_21A22FB94(319, &qword_27CCFF428);
      if (v2 <= 0x3F)
      {
        sub_21A19370C();
        if (v3 <= 0x3F)
        {
          sub_21A22FB94(319, &qword_27CD024C8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21A22FB94(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21A2F5664();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_21A22FBFC()
{
  v1 = v0;
  v2 = type metadata accessor for RecipeTheme();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_21A2F5ED4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v0 + 88);
  if (*(v1 + 96) == 1)
  {
    if (v11)
    {
      return;
    }
  }

  else
  {

    sub_21A2F7DE4();
    v12 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1478E8(v11, 0);
    (*(v7 + 8))(v10, v6);
    if (v18[15])
    {
      return;
    }
  }

  v13 = type metadata accessor for RecipeCardLowResHeroView();
  sub_21A1AC424(v5);
  v14 = sub_21A22DF04();
  sub_21A232E20(v5, type metadata accessor for RecipeTheme);
  if (!v14)
  {
    v15 = v1 + *(v13 + 48);
    v16 = *v15;
    if (*(v15 + 8) != 1)
    {

      sub_21A2F7DE4();
      v17 = sub_21A2F65B4();
      sub_21A2F53B4();

      sub_21A2F5EC4();
      swift_getAtKeyPath();
      sub_21A1478E8(v16, 0);
      (*(v7 + 8))(v10, v6);
    }
  }
}

uint64_t sub_21A22FEE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_21A2F5ED4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_21A176C98(&qword_27CD02558);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v43[-v10];
  v12 = sub_21A176C98(&qword_27CD02560);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v43[-v14];
  v48 = sub_21A176C98(&qword_27CD02568);
  MEMORY[0x28223BE20](v48, v16);
  v47 = &v43[-v17];
  *v11 = sub_21A2F7334();
  v11[1] = v18;
  v19 = sub_21A176C98(&qword_27CD02570);
  sub_21A23045C(v2, v11 + *(v19 + 44));
  LODWORD(v20) = sub_21A2F6624();
  v21 = *(v2 + 88);
  v46 = *(v2 + 96);
  v45 = v7;
  if (v46 != 1)
  {

    sub_21A2F7DE4();
    v22 = sub_21A2F65B4();
    v44 = v20;
    v20 = v4;
    v23 = v3;
    v24 = v22;
    sub_21A2F53B4();

    v3 = v23;
    v4 = v20;
    LOBYTE(v20) = v44;
    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1478E8(v21, 0);
    (*(v4 + 8))(v7, v3);
  }

  sub_21A2F55A4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_21A149B18(v11, v15, &qword_27CD02558);
  v33 = &v15[*(v12 + 36)];
  *v33 = v20;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v34 = *v2;
  swift_getKeyPath();
  *&v50 = v34;
  sub_21A23301C(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v35 = v47;
  sub_21A2F7344();
  sub_21A2F57C4();
  sub_21A149B18(v15, v35, &qword_27CD02560);
  v36 = (v35 + *(v48 + 36));
  v37 = v51;
  *v36 = v50;
  v36[1] = v37;
  v36[2] = v52;
  if (!v46)
  {

    sub_21A2F7DE4();
    v38 = sub_21A2F65B4();
    sub_21A2F53B4();

    v39 = v45;
    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1478E8(v21, 0);
    (*(v4 + 8))(v39, v3);
  }

  v40 = sub_21A2F72F4();
  MEMORY[0x28223BE20](v40, v41);
  sub_21A176C98(&qword_27CD02578);
  sub_21A2327A4();
  sub_21A2328E8();
  sub_21A2F6E94();
  return sub_21A1427A8(v35, &qword_27CD02568);
}

uint64_t sub_21A23045C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v52 = sub_21A176C98(&qword_27CD025A8);
  MEMORY[0x28223BE20](v52, v3);
  v49 = (&v48 - v4);
  v5 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v48 - v7;
  v50 = sub_21A176C98(&qword_27CD025B0);
  MEMORY[0x28223BE20](v50, v9);
  v11 = &v48 - v10;
  v12 = sub_21A176C98(&qword_27CD025B8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v48 - v14;
  v16 = type metadata accessor for RecipeTheme();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21A2F5ED4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a1 + 88);
  v51 = a1;
  if (*(a1 + 96) == 1)
  {
    v26 = v51;
    if (v25)
    {
      goto LABEL_6;
    }
  }

  else
  {

    sub_21A2F7DE4();
    v27 = sub_21A2F65B4();
    v48 = v11;
    v28 = v27;
    sub_21A2F53B4();

    v11 = v48;
    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1478E8(v25, 0);
    (*(v21 + 8))(v24, v20);
    v26 = v51;
    if (v55)
    {
LABEL_6:
      *v15 = sub_21A2F6014();
      *(v15 + 1) = 0;
      v15[16] = 0;
      v30 = sub_21A176C98(&qword_27CD025F8);
      sub_21A230A68(v26, &v15[*(v30 + 44)]);
      v31 = &qword_27CD025B8;
      sub_21A183960(v15, v11, &qword_27CD025B8);
      swift_storeEnumTagMultiPayload();
      sub_21A1772F8(&qword_27CD025D0, &qword_27CD025B8);
      sub_21A2329A4();
      sub_21A2F6114();
      v32 = v15;
      return sub_21A1427A8(v32, v31);
    }
  }

  type metadata accessor for RecipeCardLowResHeroView();
  sub_21A1AC424(v19);
  v29 = sub_21A22DF04();
  sub_21A232E20(v19, type metadata accessor for RecipeTheme);
  if (v29)
  {
    goto LABEL_6;
  }

  v33 = *(v26 + 48);
  v34 = *v26;
  swift_getKeyPath();
  v54 = v34;
  sub_21A23301C(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v31 = &qword_27CCFEDC0;
  sub_21A183960(v34 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__heroImageAsset, v8, &qword_27CCFEDC0);
  v35 = sub_21A2F5F24();
  v36 = 0x4044000000000000;
  if (v33)
  {
    v36 = 0x404E000000000000;
  }

  v37 = v49;
  *v49 = v35;
  *(v37 + 8) = v36;
  *(v37 + 16) = 0;
  v38 = sub_21A176C98(&qword_27CD025C0);
  sub_21A231258(v8, v26, v37 + *(v38 + 44));
  v39 = *(v26 + 8);
  v40 = v37 + *(sub_21A176C98(&qword_27CD025C8) + 36);
  *v40 = v39;
  *(v40 + 8) = 0;
  *(v40 + 16) = 257;
  v41 = sub_21A2F6634();
  sub_21A2F55A4();
  v42 = v37 + *(v52 + 36);
  *v42 = v41;
  *(v42 + 8) = v43;
  *(v42 + 16) = v44;
  *(v42 + 24) = v45;
  *(v42 + 32) = v46;
  *(v42 + 40) = 0;
  sub_21A183960(v37, v11, &qword_27CD025A8);
  swift_storeEnumTagMultiPayload();
  sub_21A1772F8(&qword_27CD025D0, &qword_27CD025B8);
  sub_21A2329A4();
  sub_21A2F6114();
  sub_21A1427A8(v37, &qword_27CD025A8);
  v32 = v8;
  return sub_21A1427A8(v32, v31);
}

uint64_t sub_21A230A68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v85 = a2;
  *&v87.f64[0] = sub_21A176C98(&qword_27CD02600);
  MEMORY[0x28223BE20](*&v87.f64[0], v3);
  v5 = &v78[-v4];
  v6 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v78[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v78[-v12];
  v14 = type metadata accessor for ImageAsset(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  *&v86 = &v78[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_21A176C98(&qword_27CD02608);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v83 = &v78[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21, v22);
  v88 = &v78[-v23];
  v24 = *a1;
  swift_getKeyPath();
  v98 = v24;
  sub_21A23301C(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v84 = v24;
  sub_21A183960(v24 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__heroImageAsset, v13, &qword_27CCFEDC0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_21A1427A8(v13, &qword_27CCFEDC0);
    v25 = 1;
    v26 = v88;
  }

  else
  {
    v27 = v86;
    sub_21A232EE8(v13, v86, type metadata accessor for ImageAsset);
    sub_21A232E80(v27, v9, type metadata accessor for ImageAsset);
    (*(v15 + 56))(v9, 0, 1, v14);
    sub_21A183960(v9, v5, &qword_27CCFEDC0);
    v28 = &v5[*(sub_21A176C98(&qword_27CCFEFE0) + 52)];
    sub_21A2F72B4();
    *&v28[*(sub_21A176C98(&qword_27CCFEFE8) + 56)] = 256;
    sub_21A1427A8(v9, &qword_27CCFEDC0);
    sub_21A22FBFC();
    sub_21A22FBFC();
    sub_21A2F7344();
    sub_21A2F57C4();
    v29 = &v5[*(sub_21A176C98(&qword_27CCFEFF0) + 36)];
    v30 = v114;
    *v29 = v113;
    v29[1] = v30;
    v29[2] = v115;
    v31 = &v5[*(sub_21A176C98(&qword_27CCFEFF8) + 36)];
    v32 = *(sub_21A2F5BC4() + 20);
    v33 = *MEMORY[0x277CE0118];
    v34 = sub_21A2F5F64();
    (*(*(v34 - 8) + 104))(&v31[v32], v33, v34);
    __asm { FMOV            V0.2D, #16.0 }

    *v31 = _Q0;
    *&v31[*(sub_21A176C98(&qword_27CCFEF18) + 36)] = 256;
    LOBYTE(v33) = sub_21A2F65F4();
    sub_21A2F55A4();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v48 = &v5[*(sub_21A176C98(&qword_27CCFEF80) + 36)];
    *v48 = v33;
    *(v48 + 1) = v41;
    *(v48 + 2) = v43;
    *(v48 + 3) = v45;
    *(v48 + 4) = v47;
    v48[40] = 0;
    LOBYTE(v33) = sub_21A2F6624();
    sub_21A2F55A4();
    v49 = &v5[*(*&v87.f64[0] + 36)];
    *v49 = v33;
    *(v49 + 1) = v50;
    *(v49 + 2) = v51;
    *(v49 + 3) = v52;
    *(v49 + 4) = v53;
    v49[40] = 0;
    sub_21A232B98();
    v54 = v88;
    sub_21A2F6C84();
    sub_21A1427A8(v5, &qword_27CD02600);
    sub_21A232E20(v27, type metadata accessor for ImageAsset);
    v25 = 0;
    v26 = v54;
  }

  v55 = sub_21A176C98(&qword_27CD02610);
  (*(*(v55 - 8) + 56))(v26, v25, 1, v55);
  v56 = (a1 + 5);
  *&v57 = a1[1];
  v58 = a1[3];
  v59 = a1[4];
  v82 = *(a1 + 48);
  v60 = a1[8];
  *(&v57 + 1) = a1[2];
  v86 = v57;
  v61 = vld1q_dup_f64(v56);
  v87 = v61;
  KeyPath = swift_getKeyPath();
  v62 = swift_getKeyPath();
  v63 = swift_getKeyPath();
  v80 = v63;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v64 = v83;
  sub_21A183960(v26, v83, &qword_27CD02608);
  v65 = v91;
  v66 = v90;
  v79 = v90;
  v67 = v85;
  *v85 = 0;
  *(v67 + 8) = 0;
  v68 = v89;
  v69 = sub_21A176C98(&qword_27CD02618);
  sub_21A183960(v64, v67 + *(v69 + 48), &qword_27CD02608);
  v70 = v67 + *(v69 + 64);
  v71 = v84;
  *&v92[0] = v84;
  *(v92 + 8) = v87;
  *(&v92[1] + 8) = v86;
  *(&v92[2] + 1) = v58;
  *&v93 = v59;
  WORD4(v93) = 1;
  BYTE10(v93) = 0;
  LOBYTE(v69) = v82;
  BYTE11(v93) = v82;
  *&v94 = v60;
  v72 = KeyPath;
  *(&v94 + 1) = KeyPath;
  LOBYTE(v95) = v65;
  *(&v95 + 1) = v62;
  LOBYTE(v96) = v66;
  *(&v96 + 1) = v63;
  v97 = v68;
  v70[112] = v68;
  v73 = v92[0];
  v74 = v92[1];
  v75 = v93;
  *(v70 + 2) = v92[2];
  *(v70 + 3) = v75;
  *v70 = v73;
  *(v70 + 1) = v74;
  v76 = v95;
  *(v70 + 4) = v94;
  *(v70 + 5) = v76;
  *(v70 + 6) = v96;

  sub_21A232AE8(v92, &v98);
  sub_21A1427A8(v88, &qword_27CD02608);
  v98 = v71;
  v100 = v86;
  v99 = v87;
  v101 = v58;
  v102 = v59;
  v103 = 1;
  v104 = 0;
  v105 = v69;
  v106 = v60;
  v107 = v72;
  v108 = v65;
  v109 = v62;
  v110 = v79;
  v111 = v80;
  v112 = v68;
  sub_21A232B44(&v98);
  return sub_21A1427A8(v64, &qword_27CD02608);
}

uint64_t sub_21A231258@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a3;
  *&v73 = sub_21A176C98(&qword_27CCFEFF8);
  *&v74 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v5);
  v7 = &v64 - v6;
  v8 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v64 - v14;
  v16 = type metadata accessor for ImageAsset(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21A176C98(&qword_27CD02640);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v71 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v64 - v26;
  sub_21A183960(a1, v15, &qword_27CCFEDC0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_21A1427A8(v15, &qword_27CCFEDC0);
    v28 = 1;
    v29 = v73;
  }

  else
  {
    sub_21A232EE8(v15, v20, type metadata accessor for ImageAsset);
    sub_21A232E80(v20, v11, type metadata accessor for ImageAsset);
    (*(v17 + 56))(v11, 0, 1, v16);
    sub_21A183960(v11, v7, &qword_27CCFEDC0);
    v30 = &v7[*(sub_21A176C98(&qword_27CCFEFE0) + 52)];
    sub_21A2F72B4();
    *&v30[*(sub_21A176C98(&qword_27CCFEFE8) + 56)] = 256;
    sub_21A1427A8(v11, &qword_27CCFEDC0);
    sub_21A22FBFC();
    sub_21A22FBFC();
    sub_21A2F7344();
    sub_21A2F57C4();
    sub_21A232E20(v20, type metadata accessor for ImageAsset);
    v31 = &v7[*(sub_21A176C98(&qword_27CCFEFF0) + 36)];
    v32 = v101;
    *v31 = v100;
    *(v31 + 1) = v32;
    *(v31 + 2) = v102;
    v33 = v73;
    v34 = &v7[*(v73 + 36)];
    v35 = v27;
    v36 = *(sub_21A2F5BC4() + 20);
    v37 = *MEMORY[0x277CE0118];
    v38 = sub_21A2F5F64();
    v39 = &v34[v36];
    v27 = v35;
    (*(*(v38 - 8) + 104))(v39, v37, v38);
    __asm { FMOV            V0.2D, #16.0 }

    *v34 = _Q0;
    *&v34[*(sub_21A176C98(&qword_27CCFEF18) + 36)] = 256;
    sub_21A149B18(v7, v35, &qword_27CCFEFF8);
    v28 = 0;
    v29 = v33;
  }

  v69 = v27;
  (*(v74 + 56))(v27, v28, 1, v29);
  v45 = *a2;
  *&v46 = a2[2];
  v48 = a2[4];
  *&v47 = a2[5];
  v70 = *(a2 + 48);
  v49 = a2[8];
  *(&v46 + 1) = a2[3];
  *(&v47 + 1) = a2[1];
  v73 = v47;
  v74 = v46;
  KeyPath = swift_getKeyPath();
  v50 = swift_getKeyPath();
  v65 = swift_getKeyPath();
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v51 = v71;
  sub_21A183960(v27, v71, &qword_27CD02640);
  v52 = v77;
  v53 = v76;
  v66 = v77;
  v67 = v76;
  v54 = v75;
  v55 = v72;
  sub_21A183960(v51, v72, &qword_27CD02640);
  v56 = v55 + *(sub_21A176C98(&qword_27CD02648) + 48);
  v78 = v45;
  v79 = v73;
  v80 = v74;
  *&v81 = v48;
  WORD4(v81) = 0;
  BYTE10(v81) = 0;
  LOBYTE(v55) = v70;
  BYTE11(v81) = v70;
  *&v82 = v49;
  v57 = KeyPath;
  *(&v82 + 1) = KeyPath;
  LOBYTE(v83) = v52;
  *(&v83 + 1) = v50;
  LOBYTE(v84) = v53;
  v58 = v65;
  *(&v84 + 1) = v65;
  v85 = v54;
  *(v56 + 112) = v54;
  v59 = v83;
  *(v56 + 64) = v82;
  *(v56 + 80) = v59;
  *(v56 + 96) = v84;
  v60 = v78;
  v61 = v79;
  v62 = v81;
  *(v56 + 32) = v80;
  *(v56 + 48) = v62;
  *v56 = v60;
  *(v56 + 16) = v61;

  sub_21A232AE8(&v78, v86);
  sub_21A1427A8(v69, &qword_27CD02640);
  v86[0] = v45;
  v86[1] = 0;
  v87 = v73;
  v88 = v74;
  v89 = v48;
  v90 = 0;
  v91 = 0;
  v92 = v55;
  v93 = v49;
  v94 = v57;
  v95 = v66;
  v96 = v50;
  v97 = v67;
  v98 = v58;
  v99 = v54;
  sub_21A232B44(v86);
  return sub_21A1427A8(v51, &qword_27CD02640);
}

uint64_t sub_21A2318F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v3 = type metadata accessor for RecipeCardHeroBackgroundView();
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A176C98(&qword_27CD02650);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v30 - v10;
  v12 = *v1;
  swift_getKeyPath();
  *&v33 = v12;
  sub_21A23301C(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  sub_21A232E80(v12 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__recipeTheme, v7, type metadata accessor for RecipeTheme);
  v13 = &v7[*(v4 + 28)];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = *(v4 + 32);
  *&v7[v14] = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFECD8);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  *&v33 = v12;
  sub_21A2F5094();

  sub_21A2F7354();
  sub_21A2F57C4();
  sub_21A232EE8(v7, v11, type metadata accessor for RecipeCardHeroBackgroundView);
  v15 = &v11[*(v8 + 36)];
  v16 = v34;
  *v15 = v33;
  *(v15 + 1) = v16;
  *(v15 + 2) = v35;
  v17 = v2[1];
  sub_21A176C98(&qword_27CD00138);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A2FEED0;
  LOBYTE(v4) = sub_21A2F65C4();
  *(inited + 32) = v4;
  v19 = sub_21A2F65E4();
  *(inited + 33) = v19;
  v20 = sub_21A2F65D4();
  sub_21A2F65D4();
  if (sub_21A2F65D4() != v4)
  {
    v20 = sub_21A2F65D4();
  }

  sub_21A2F65D4();
  if (sub_21A2F65D4() != v19)
  {
    v20 = sub_21A2F65D4();
  }

  v21 = swift_allocObject();
  *(v21 + 16) = 1;
  *(v21 + 24) = -v17;
  *(v21 + 32) = v20;
  v22 = sub_21A176C98(&qword_27CD02658);
  v23 = sub_21A232F60();
  v24 = sub_21A176D98(&qword_27CCFF238);
  v25 = sub_21A2F5C84();
  v26 = sub_21A23301C(&qword_27CCFF220, MEMORY[0x277CDFCB0]);
  v31 = v25;
  v32 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v24;
  v32 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CED5600](sub_21A232F50, v21, v8, v22, v23, v28);

  return sub_21A1427A8(v11, &qword_27CD02650);
}

uint64_t sub_21A231D68@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v49 = sub_21A176C98(&qword_27CD024D0);
  MEMORY[0x28223BE20](v49, v1);
  v48 = v46 - v2;
  v47 = sub_21A176C98(&qword_27CD024D8);
  MEMORY[0x28223BE20](v47, v3);
  v5 = v46 - v4;
  v6 = sub_21A2F6134();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v46 - v13;
  v15 = sub_21A176C98(&qword_27CD024E0);
  v46[1] = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = v46 - v17;
  *v18 = sub_21A2F7354();
  *(v18 + 1) = v19;
  v20 = sub_21A176C98(&qword_27CD024E8);
  sub_21A232180(&v18[*(v20 + 44)]);
  v21 = sub_21A2F6614();
  sub_21A2F55A4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = &v18[*(sub_21A176C98(&qword_27CD024F0) + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = sub_21A2F6614();
  sub_21A2F55A4();
  v32 = &v18[*(v15 + 36)];
  *v32 = v31;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  v46[0] = v14;
  sub_21A2F6304();
  v37 = sub_21A2F7344();
  v39 = v38;
  v40 = v14;
  v41 = v6;
  (*(v7 + 16))(v10, v40, v6);
  v42 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = 1869768040;
  *(v43 + 24) = 0xE400000000000000;
  (*(v7 + 32))(v43 + v42, v10, v41);
  sub_21A183960(v18, v5, &qword_27CD024E0);
  v44 = &v5[*(v47 + 36)];
  *v44 = sub_21A23251C;
  v44[1] = v43;
  v44[2] = v37;
  v44[3] = v39;
  sub_21A183960(v5, v48, &qword_27CD024D8);
  swift_storeEnumTagMultiPayload();
  sub_21A2325A0();
  sub_21A232658();
  sub_21A2F6114();
  sub_21A1427A8(v5, &qword_27CD024D8);
  sub_21A1427A8(v18, &qword_27CD024E0);
  return (*(v7 + 8))(v46[0], v41);
}

uint64_t sub_21A232180@<X0>(char *a1@<X8>)
{
  v32 = a1;
  v1 = sub_21A176C98(&qword_27CD02540);
  v2 = *(v1 - 8);
  v29 = v1;
  v30 = v2;
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v29 - v8;
  v10 = sub_21A176C98(&qword_27CD02548);
  v31 = *(v10 - 8);
  v11 = v31;
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v29 - v17;
  sub_21A2318F8(&v29 - v17);
  sub_21A22FEE4(v9);
  v19 = *(v11 + 16);
  v19(v14, v18, v10);
  v20 = *(v2 + 16);
  v20(v5, v9, v1);
  v21 = v32;
  v19(v32, v14, v10);
  v22 = &v21[*(sub_21A176C98(&qword_27CD02550) + 48)];
  v23 = v29;
  v20(v22, v5, v29);
  v24 = *(v30 + 8);
  v25 = v9;
  v26 = v23;
  v24(v25, v23);
  v27 = *(v31 + 8);
  v27(v18, v10);
  v24(v5, v26);
  return (v27)(v14, v10);
}

uint64_t sub_21A23242C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = sub_21A2F6F14();
  sub_21A176C98(&qword_27CD02530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A2FC020;
  *(inited + 32) = v4;
  *(inited + 40) = v3;
  sub_21A2F6134();
  sub_21A2F5434();
  sub_21A2F5824();
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v11 = sub_21A2602A8(inited);
  swift_setDeallocating();
  result = sub_21A1427A8(inited + 32, &qword_27CD02538);
  *a2 = v5;
  a2[1] = v11;
  return result;
}

uint64_t sub_21A23251C@<X0>(uint64_t *a1@<X8>)
{
  sub_21A2F6134();

  return sub_21A23242C((v1 + 16), a1);
}

unint64_t sub_21A2325A0()
{
  result = qword_27CD024F8;
  if (!qword_27CD024F8)
  {
    sub_21A176D98(&qword_27CD024D8);
    sub_21A232658();
    sub_21A1772F8(&qword_27CD02520, &qword_27CD02528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD024F8);
  }

  return result;
}

unint64_t sub_21A232658()
{
  result = qword_27CD02500;
  if (!qword_27CD02500)
  {
    sub_21A176D98(&qword_27CD024E0);
    sub_21A2326E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02500);
  }

  return result;
}

unint64_t sub_21A2326E4()
{
  result = qword_27CD02508;
  if (!qword_27CD02508)
  {
    sub_21A176D98(&qword_27CD024F0);
    sub_21A1772F8(&qword_27CD02510, &qword_27CD02518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02508);
  }

  return result;
}

unint64_t sub_21A2327A4()
{
  result = qword_27CD02580;
  if (!qword_27CD02580)
  {
    sub_21A176D98(&qword_27CD02568);
    sub_21A232830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02580);
  }

  return result;
}

unint64_t sub_21A232830()
{
  result = qword_27CD02588;
  if (!qword_27CD02588)
  {
    sub_21A176D98(&qword_27CD02560);
    sub_21A1772F8(&qword_27CD02590, &qword_27CD02558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02588);
  }

  return result;
}

unint64_t sub_21A2328E8()
{
  result = qword_27CD02598;
  if (!qword_27CD02598)
  {
    sub_21A176D98(&qword_27CD02578);
    sub_21A2327A4();
    sub_21A23301C(&qword_27CD025A0, type metadata accessor for HorizontalParallaxViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02598);
  }

  return result;
}

unint64_t sub_21A2329A4()
{
  result = qword_27CD025D8;
  if (!qword_27CD025D8)
  {
    sub_21A176D98(&qword_27CD025A8);
    sub_21A232A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD025D8);
  }

  return result;
}

unint64_t sub_21A232A30()
{
  result = qword_27CD025E0;
  if (!qword_27CD025E0)
  {
    sub_21A176D98(&qword_27CD025C8);
    sub_21A1772F8(&qword_27CD025E8, &qword_27CD025F0);
    sub_21A1CBAD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD025E0);
  }

  return result;
}

unint64_t sub_21A232B98()
{
  result = qword_27CD02620;
  if (!qword_27CD02620)
  {
    sub_21A176D98(&qword_27CD02600);
    sub_21A232C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02620);
  }

  return result;
}

unint64_t sub_21A232C24()
{
  result = qword_27CD02628;
  if (!qword_27CD02628)
  {
    sub_21A176D98(&qword_27CCFEF80);
    sub_21A232CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02628);
  }

  return result;
}

unint64_t sub_21A232CB0()
{
  result = qword_27CD02630;
  if (!qword_27CD02630)
  {
    sub_21A176D98(&qword_27CCFEFF8);
    sub_21A232D68();
    sub_21A1772F8(&qword_27CCFEF10, &qword_27CCFEF18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02630);
  }

  return result;
}

unint64_t sub_21A232D68()
{
  result = qword_27CD02638;
  if (!qword_27CD02638)
  {
    sub_21A176D98(&qword_27CCFEFF0);
    sub_21A1772F8(&qword_27CCFF778, &qword_27CCFEFE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02638);
  }

  return result;
}

uint64_t sub_21A232E20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A232E80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A232EE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A232F60()
{
  result = qword_27CD02660;
  if (!qword_27CD02660)
  {
    sub_21A176D98(&qword_27CD02650);
    sub_21A23301C(&qword_27CD02668, type metadata accessor for RecipeCardHeroBackgroundView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02660);
  }

  return result;
}

uint64_t sub_21A23301C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21A233064()
{
  result = qword_27CD02670;
  if (!qword_27CD02670)
  {
    sub_21A176D98(&qword_27CD02678);
    sub_21A2325A0();
    sub_21A232658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02670);
  }

  return result;
}

void sub_21A23313C()
{
  type metadata accessor for IngredientsViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_21A2332A0(319, &qword_27CD02690, type metadata accessor for IngredientsViewModel.Ingredient, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_21A2332A0(319, &qword_2811B3DC8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21A2F6874();
        if (v3 <= 0x3F)
        {
          sub_21A2332A0(319, &qword_27CCFEE48, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21A2332A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21A233320(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x277D84F90];
  sub_21A25D894(0, v5, 0);
  v6 = v17;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *i;
    v15[0] = *(i - 1);
    v15[1] = v10;
    sub_21A2F5434();
    a1(&v16, v15);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v16;
    v17 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_21A25D894((v12 > 1), v13 + 1, 1);
      v6 = v17;
    }

    *(v6 + 16) = v13 + 1;
    *(v6 + 8 * v13 + 32) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A233454(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v20 = MEMORY[0x277D84F90];
  sub_21A25D8B4(0, v4, 0);
  v5 = v20;
  v7 = *(type metadata accessor for IngredientsViewModel.Ingredient(0) - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v16 = *(v7 + 72);
  while (1)
  {
    a1(v18, v8);
    if (v3)
    {
      break;
    }

    v10 = v18[0];
    v9 = v18[1];
    v11 = v19;
    v20 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_21A25D8B4((v12 > 1), v13 + 1, 1);
      v5 = v20;
    }

    *(v5 + 16) = v13 + 1;
    v14 = v5 + 24 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v9;
    *(v14 + 48) = v11;
    v8 += v16;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A2335C4@<X0>(void *a1@<X8>)
{
  sub_21A2377D8();
  result = sub_21A2F5EE4();
  *a1 = v3;
  return result;
}

uint64_t sub_21A233614()
{
  sub_21A2377D8();

  return sub_21A2F5EF4();
}

uint64_t sub_21A233674(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_21A2336B8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v87 = a2;
  v3 = sub_21A176C98(&qword_27CD004F8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v77 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v78 = &v76 - v8;
  v81 = sub_21A176C98(&qword_27CD026A0);
  MEMORY[0x28223BE20](v81, v9);
  v80 = &v76 - v10;
  v11 = sub_21A176C98(&qword_27CD026A8);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v86 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v85 = &v76 - v16;
  v17 = type metadata accessor for IngredientStackView(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v79 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v76 - v23;
  v25 = sub_21A176C98(&qword_27CD026B0);
  v82 = *(v25 - 8);
  v83 = v25;
  MEMORY[0x28223BE20](v25, v26);
  v84 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v76 - v30;
  v32 = sub_21A234164();
  v34 = v33;
  v35 = a1[1];
  v89 = v35;
  sub_21A237880(a1, v24, type metadata accessor for IngredientStackView);
  v36 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v37 = swift_allocObject();
  sub_21A237ACC(v24, v37 + v36, type metadata accessor for IngredientStackView);
  v38 = v37 + ((v19 + v36 + 7) & 0xFFFFFFFFFFFFFFF8);
  v39 = v31;
  *v38 = v32;
  *(v38 + 8) = v34 & 1;
  sub_21A2F5434();
  sub_21A176C98(&qword_27CD026B8);
  sub_21A176C98(&qword_27CD026C0);
  sub_21A1772F8(&qword_27CD026C8, &qword_27CD026B8);
  sub_21A234CF0();
  v74 = sub_21A234DFC(&qword_27CD026E0, type metadata accessor for IngredientsViewModel.Ingredient);
  sub_21A2F7214();
  v40 = *a1;
  swift_getKeyPath();
  v89 = v40;
  sub_21A234DFC(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
  sub_21A2F5094();

  if (*(v40 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__isGroceryListEnabled) == 1 && (*(a1 + *(v17 + 28)) & 1) == 0)
  {
    MEMORY[0x28223BE20](v41, v42);
    v74 = a1;
    v76 = sub_21A233454(sub_21A234E44, (&v76 - 4), v35);
    sub_21A183960(a1 + *(v17 + 24), &v80[*(v81 + 52)], &qword_27CCFEA80);
    sub_21A237880(a1, v79, type metadata accessor for IngredientStackView);
    swift_getKeyPath();
    sub_21A234DFC(&qword_27CD00468, type metadata accessor for GroceriesButtonViewModel);
    sub_21A2F7754();
    sub_21A1D13A8();
    sub_21A2F55F4();
    v45 = type metadata accessor for ExportToGroceryListUtility.RemindersListDetails();
    v46 = *(*(v45 - 8) + 56);
    v47 = v78;
    v46(v78, 1, 1, v45);
    type metadata accessor for GroceryExportState();
    v48 = swift_allocObject();
    v46((v48 + OBJC_IVAR____TtC10CookingKit18GroceryExportState__remindersListDetails), 1, 1, v45);
    swift_unknownObjectWeakInit();
    v49 = (v48 + OBJC_IVAR____TtC10CookingKit18GroceryExportState__recipeID);
    *v49 = 0;
    v49[1] = 0;
    sub_21A2F50C4();
    *(v48 + 16) = 0;
    v50 = v77;
    sub_21A183960(v47, v77, &qword_27CD004F8);
    sub_21A27E7A0(v50);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      KeyPath = swift_getKeyPath();
      v77 = v39;
      MEMORY[0x28223BE20](KeyPath, v53);
      v74 = v48;
      v75 = 0;
      v89 = v48;
      sub_21A234DFC(&qword_27CD004E8, type metadata accessor for GroceryExportState);
      sub_21A2F5084();

      v39 = v77;
    }

    else
    {
      swift_unknownObjectWeakAssign();
    }

    v55 = v80;
    v54 = v81;
    v56 = &v80[*(v81 + 40)];
    sub_21A1427A8(v47, &qword_27CD004F8);
    v88 = v48;
    sub_21A2F7014();
    v57 = v90;
    *v56 = v89;
    *(v56 + 1) = v57;
    v58 = v76;
    *(v55 + *(v54 + 48)) = v76;
    v59 = v55 + *(v54 + 44);
    v60 = *(v17 + 24);
    v61 = type metadata accessor for GroceriesLabelView(0);
    v62 = v79;
    sub_21A183960(v79 + v60, v59 + v61[8], &qword_27CCFEA80);
    sub_21A2F5434();
    sub_21A2378E8(v62, type metadata accessor for IngredientStackView);
    *(v59 + v61[6]) = swift_getKeyPath();
    sub_21A176C98(&qword_27CCFED70);
    swift_storeEnumTagMultiPayload();
    *v59 = swift_getKeyPath();
    *(v59 + 8) = 0;
    v63 = v61[5];
    *(v59 + v63) = swift_getKeyPath();
    sub_21A176C98(&qword_27CCFECD8);
    swift_storeEnumTagMultiPayload();
    *(v59 + v61[7]) = v58;
    sub_21A1772F8(&qword_27CD026F8, &qword_27CD026A0);
    sub_21A237784();
    v44 = v85;
    sub_21A2F6AD4();
    sub_21A1427A8(v55, &qword_27CD026A0);
    v43 = 0;
  }

  else
  {
    v43 = 1;
    v44 = v85;
  }

  v64 = sub_21A176C98(&qword_27CD026E8);
  (*(*(v64 - 8) + 56))(v44, v43, 1, v64);
  v66 = v82;
  v65 = v83;
  v67 = *(v82 + 16);
  v68 = v84;
  v67(v84, v39, v83);
  v69 = v86;
  sub_21A1639F0(v44, v86);
  v70 = v87;
  v67(v87, v68, v65);
  v71 = sub_21A176C98(&qword_27CD026F0);
  sub_21A1639F0(v69, &v70[*(v71 + 48)]);
  sub_21A1427A8(v44, &qword_27CD026A8);
  v72 = *(v66 + 8);
  v72(v39, v65);
  sub_21A1427A8(v69, &qword_27CD026A8);
  return (v72)(v68, v65);
}

uint64_t sub_21A234164()
{
  v1 = v0;
  v2 = type metadata accessor for IngredientsViewModel.Ingredient(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A2F5A64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v39 - v14;
  type metadata accessor for IngredientStackView(0);
  sub_21A1AC3FC(v15);
  (*(v8 + 104))(v11, *MEMORY[0x277CDF988], v7);
  v16 = sub_21A2F5A54();
  v17 = *(v8 + 8);
  v17(v11, v7);
  isUniquelyReferenced_nonNull_native = (v17)(v15, v7);
  v20 = 0.0;
  if (v16)
  {
    v39[0] = v1;
    v21 = *(v1 + 8);
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v24 = *(v3 + 72);
      v25 = MEMORY[0x277D84F90];
      do
      {
        sub_21A237880(v23, v6, type metadata accessor for IngredientsViewModel.Ingredient);
        v28 = *(v6 + 2);
        v27 = *(v6 + 3);
        sub_21A2F5434();
        isUniquelyReferenced_nonNull_native = sub_21A2378E8(v6, type metadata accessor for IngredientsViewModel.Ingredient);
        if (v27)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_21A1B6970(0, *(v25 + 16) + 1, 1, v25);
            v25 = isUniquelyReferenced_nonNull_native;
          }

          v30 = *(v25 + 16);
          v29 = *(v25 + 24);
          if (v30 >= v29 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_21A1B6970((v29 > 1), v30 + 1, 1, v25);
            v25 = isUniquelyReferenced_nonNull_native;
          }

          *(v25 + 16) = v30 + 1;
          v26 = v25 + 16 * v30;
          *(v26 + 32) = v28;
          *(v26 + 40) = v27;
        }

        v23 += v24;
        --v22;
      }

      while (v22);
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v19);
    v39[-2] = v39[0];
    v31 = sub_21A233320(sub_21A237948, &v39[-4], v25);

    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = *(v31 + 32);
      v34 = v32 - 1;
      if (v34)
      {
        v35 = (v31 + 40);
        do
        {
          v36 = *v35++;
          v37 = v36;
          if (v33 < v36)
          {
            v33 = v37;
          }

          --v34;
        }

        while (v34);
      }

      v20 = v33;
    }

    else
    {
      v20 = 0.0;
    }
  }

  return *&v20;
}

uint64_t sub_21A2344D8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v24 = a4;
  v26 = a5;
  v25 = sub_21A2F5FD4();
  v8 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v9);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for IngredientRowView(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *a2;
  sub_21A237880(a1, v15 + *(v17 + 20), type metadata accessor for IngredientsViewModel.Ingredient);
  v18 = *(a2 + *(type metadata accessor for IngredientStackView(0) + 28));
  *v15 = v16;
  v19 = v15 + *(v12 + 24);
  *v19 = a3;
  v19[8] = v24 & 1;
  *(v15 + *(v12 + 28)) = v18;
  sub_21A176C98(&qword_27CD02718);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21A2FC020;

  sub_21A2F5FA4();
  v27 = v20;
  sub_21A234DFC(&qword_27CD02720, MEMORY[0x277CE01F0]);
  sub_21A176C98(&qword_27CD02728);
  sub_21A1772F8(&qword_27CD02730, &qword_27CD02728);
  v21 = v25;
  sub_21A2F7F34();
  sub_21A234DFC(&qword_27CD026D8, type metadata accessor for IngredientRowView);
  sub_21A2F6D14();
  (*(v8 + 8))(v11, v21);
  return sub_21A2378E8(v15, type metadata accessor for IngredientRowView);
}

uint64_t sub_21A2347D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[4];
  v5 = a1[5];
  v7 = *a2;
  swift_getKeyPath();
  sub_21A234DFC(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
  sub_21A2F5434();
  sub_21A2F5094();

  v8 = *(v7 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__selectedIngredientIDs);
  v9 = *a1;
  v10 = a1[1];
  sub_21A2F5434();
  LOBYTE(v10) = sub_21A2D655C(v9, v10, v8);

  *a3 = v6;
  *(a3 + 8) = v5;
  *(a3 + 16) = v10 & 1;
  return result;
}

uint64_t sub_21A2348E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v36 = a3;
  v35 = a2;
  v4 = sub_21A176C98(&qword_27CD02738);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v32 = v31 - v6;
  v7 = sub_21A176C98(&qword_27CD02740);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v31[0] = v31 - v9;
  v10 = sub_21A2F6854();
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v14 = a1[1];
  v31[1] = *(type metadata accessor for IngredientStackView(0) + 32);
  v37 = v15;
  v38 = v14;
  sub_21A1834FC();
  sub_21A2F5434();
  v16 = sub_21A2F69B4();
  v18 = v17;
  v20 = v19;
  sub_21A2F6724();
  v21 = sub_21A2F6814();
  v23 = v22;
  v25 = v24;
  sub_21A1834EC(v16, v18, v20 & 1);

  v26 = sub_21A2F6824();
  (*(*(v26 - 8) + 56))(v31[0], 1, 1, v26);
  v27 = sub_21A2F6974();
  (*(*(v27 - 8) + 56))(v32, 1, 1, v27);
  sub_21A2F6844();
  sub_21A2F6834();
  v29 = v28;
  sub_21A1834EC(v21, v23, v25 & 1);

  result = (*(v33 + 8))(v13, v34);
  *v36 = v29;
  return result;
}

uint64_t sub_21A234BE8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21A2F6004();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v3 = sub_21A176C98(&qword_27CD02698);
  return sub_21A2336B8(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_21A234C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for IngredientStackView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_21A2344D8(a1, (v2 + v6), v8, v9, a2);
}

unint64_t sub_21A234CF0()
{
  result = qword_27CD026D0;
  if (!qword_27CD026D0)
  {
    sub_21A176D98(&qword_27CD026C0);
    sub_21A234DFC(&qword_27CD026D8, type metadata accessor for IngredientRowView);
    sub_21A234DFC(&qword_27CCFF558, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD026D0);
  }

  return result;
}

uint64_t sub_21A234DFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A234E64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v109 = a1;
  v107 = sub_21A2F5854();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v3);
  v103 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IngredientRowView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v9 = sub_21A176C98(&qword_27CD02770);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v81 - v12;
  v93 = sub_21A176C98(&qword_27CD02778);
  v90 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v14);
  v16 = &v81 - v15;
  v87 = sub_21A176C98(&qword_27CD02780);
  MEMORY[0x28223BE20](v87, v17);
  v88 = &v81 - v18;
  v94 = sub_21A176C98(&qword_27CD02788);
  MEMORY[0x28223BE20](v94, v19);
  v21 = &v81 - v20;
  v22 = sub_21A176C98(&qword_27CD02790);
  v97 = *(v22 - 8);
  v98 = v22;
  MEMORY[0x28223BE20](v22, v23);
  v96 = &v81 - v24;
  v99 = sub_21A176C98(&qword_27CD02798);
  MEMORY[0x28223BE20](v99, v25);
  v85 = &v81 - v26;
  v104 = sub_21A176C98(&qword_27CD027A0);
  v101 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v27);
  v100 = &v81 - v28;
  v108 = sub_21A176C98(&qword_27CD027A8);
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108, v29);
  v110 = &v81 - v30;
  sub_21A237880(v2, &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IngredientRowView);
  v31 = *(v6 + 80);
  v32 = (v31 + 16) & ~v31;
  v92 = v31;
  v91 = v32 + v7;
  v33 = swift_allocObject();
  v95 = v32;
  v102 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A237ACC(v102, v33 + v32, type metadata accessor for IngredientRowView);
  v111 = v2;
  sub_21A176C98(&qword_27CD027B0);
  sub_21A237BA8();
  sub_21A2F7094();
  v34 = (v2 + *(v5 + 20));
  v35 = *(type metadata accessor for IngredientsViewModel.Ingredient(0) + 28);
  v36 = sub_21A1772F8(&qword_27CD02800, &qword_27CD02770);
  v89 = v16;
  MEMORY[0x21CED5470](v34 + v35, v9, v36);
  (*(v10 + 8))(v13, v9);
  v37 = *v2;
  swift_getKeyPath();
  v38 = v37 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel___observationRegistrar;
  v112 = v37;
  sub_21A234DFC(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
  v86 = v38;
  sub_21A2F5094();

  v82 = OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__selectedIngredientIDs;
  v39 = *(v37 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__selectedIngredientIDs);
  v40 = *v34;
  v41 = v34[1];
  sub_21A2F5434();
  v84 = v40;
  v83 = v41;
  LOBYTE(v35) = sub_21A2D655C(v40, v41, v39);

  if (v35)
  {
    v42 = *(v2 + *(v5 + 28));
    v43 = objc_opt_self();
    v44 = &selRef_secondaryLabelColor;
    if (v42)
    {
      v44 = &selRef_tertiaryLabelColor;
    }
  }

  else
  {
    v43 = objc_opt_self();
    v44 = &selRef_labelColor;
  }

  v45 = [v43 *v44];
  v46 = sub_21A2F6EF4();
  v47 = v88;
  (*(v90 + 32))(v88, v89, v93);
  *(v47 + *(v87 + 36)) = v46;
  v48 = *(v5 + 28);
  v81 = v2;
  v49 = *(v2 + v48);
  v50 = &v21[*(v94 + 36)];
  *v50 = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFEEA0);
  swift_storeEnumTagMultiPayload();
  *(v50 + *(type metadata accessor for RecipeLabelVibrancyViewModifier() + 20)) = v49;
  sub_21A163CF4(v47, v21);
  sub_21A237DA4();
  sub_21A237784();
  v51 = v96;
  sub_21A2F6AD4();
  sub_21A1427A8(v21, &qword_27CD02788);
  v52 = v99;
  v53 = v85;
  v54 = &v85[*(v99 + 36)];
  v55 = sub_21A176C98(&qword_27CCFEF30);
  sub_21A2F5C44();
  v56 = *(sub_21A2F5BC4() + 20);
  v57 = *MEMORY[0x277CE0118];
  v58 = sub_21A2F5F64();
  (*(*(v58 - 8) + 104))(&v54[v56], v57, v58);
  __asm { FMOV            V0.2D, #16.0 }

  *v54 = _Q0;
  v54[*(v55 + 36)] = 0;
  (*(v97 + 32))(v53, v51, v98);
  swift_getKeyPath();
  v112 = v37;
  sub_21A2F5094();

  v64 = sub_21A237F88();
  v65 = v100;
  sub_21A2F6EB4();
  sub_21A1427A8(v53, &qword_27CD02798);
  v66 = v103;
  sub_21A2F5844();
  v67 = v102;
  sub_21A237880(v81, v102, type metadata accessor for IngredientRowView);
  v68 = swift_allocObject();
  sub_21A237ACC(v67, v68 + v95, type metadata accessor for IngredientRowView);
  v112 = v52;
  v113 = v64;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v70 = v104;
  v102 = OpaqueTypeConformance2;
  sub_21A2F6A94();

  (*(v105 + 8))(v66, v107);
  (*(v101 + 8))(v65, v70);
  swift_getKeyPath();
  v112 = v37;
  sub_21A2F5094();

  v71 = *(v37 + v82);
  sub_21A2F5434();
  LOBYTE(v53) = sub_21A2D655C(v84, v83, v71);

  if (v53)
  {
    sub_21A2F5F54();
    if (qword_27CCFE760 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  sub_21A2F5F54();
  if (qword_27CCFE760 != -1)
  {
LABEL_11:
    swift_once();
  }

LABEL_10:
  v72 = qword_27CD23BB8;
  v73 = sub_21A2F69A4();
  v75 = v74;
  v77 = v76;
  v112 = v70;
  v113 = v102;
  swift_getOpaqueTypeConformance2();
  v78 = v108;
  v79 = v110;
  sub_21A2F6C14();
  sub_21A1834EC(v73, v75, v77 & 1);

  return (*(v106 + 8))(v79, v78);
}

uint64_t sub_21A235B54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21A176C98(&qword_27CD027E8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (&v47 - v6);
  v8 = sub_21A176C98(&qword_27CD027D8);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v47 - v11;
  v13 = sub_21A176C98(&qword_27CD027C8);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v47 - v16;
  *v7 = sub_21A2F7344();
  v7[1] = v18;
  v19 = sub_21A176C98(&qword_27CD02820);
  sub_21A235F70(a1, v7 + *(v19 + 44));
  sub_21A2F7354();
  sub_21A2F5C14();
  sub_21A149B18(v7, v12, &qword_27CD027E8);
  v20 = &v12[*(v9 + 44)];
  v21 = v55;
  *(v20 + 4) = v54;
  *(v20 + 5) = v21;
  *(v20 + 6) = v56;
  v22 = v51;
  *v20 = v50;
  *(v20 + 1) = v22;
  v23 = v53;
  *(v20 + 2) = v52;
  *(v20 + 3) = v23;
  LOBYTE(v9) = sub_21A2F6604();
  sub_21A2F55A4();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_21A149B18(v12, v17, &qword_27CD027D8);
  v32 = &v17[*(v14 + 44)];
  *v32 = v9;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v48 = sub_21A2F7344();
  v34 = v33;
  v35 = (a2 + *(sub_21A176C98(&qword_27CD027B0) + 36));
  v36 = a2;
  v37 = type metadata accessor for IngredientRowView(0);
  LOBYTE(v7) = *(a1 + *(v37 + 28));
  v38 = *a1;
  swift_getKeyPath();
  v49 = v38;
  sub_21A234DFC(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
  sub_21A2F5094();

  v39 = *(v38 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__selectedIngredientIDs);
  v40 = (a1 + *(v37 + 20));
  v41 = *v40;
  v42 = v40[1];
  sub_21A2F5434();
  LOBYTE(v41) = sub_21A2D655C(v41, v42, v39);

  *v35 = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFECD8);
  swift_storeEnumTagMultiPayload();
  v43 = type metadata accessor for PlatterBackgroundView();
  v44 = v43[5];
  *(v35 + v44) = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFEEA0);
  swift_storeEnumTagMultiPayload();
  *(v35 + v43[6]) = v7;
  *(v35 + v43[7]) = v41 & 1;
  v45 = (v35 + *(sub_21A176C98(&qword_27CD027F8) + 36));
  *v45 = v48;
  v45[1] = v34;
  return sub_21A149B18(v17, v36, &qword_27CD027C8);
}

uint64_t sub_21A235F70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = sub_21A2F5FD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v96 = v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A176C98(&qword_27CD02828);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v88 - v9;
  v11 = sub_21A176C98(&qword_27CD02830);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v88 - v13;
  v15 = sub_21A176C98(&qword_27CD02838);
  MEMORY[0x28223BE20](v15, v16);
  v18 = v88 - v17;
  v19 = type metadata accessor for IngredientRowView(0);
  v20 = (a1 + *(v19 + 24));
  if ((v20[1] & 1) == 0)
  {
    v39 = *v20;
    *v18 = sub_21A2F5F24();
    *(v18 + 1) = 0x4028000000000000;
    v18[16] = 0;
    v40 = sub_21A176C98(&qword_27CD02858);
    sub_21A236AB0(a1, &v18[*(v40 + 44)], v39);
    sub_21A183960(v18, v14, &qword_27CD02838);
    swift_storeEnumTagMultiPayload();
    sub_21A1772F8(&qword_27CD02848, &qword_27CD02838);
    sub_21A238258();
    sub_21A2F6114();
    v41 = v18;
    v42 = &qword_27CD02838;
    return sub_21A1427A8(v41, v42);
  }

  v21 = v19;
  v92 = v4;
  v93 = v3;
  v88[1] = v11;
  v89 = v10;
  v94 = v15;
  v90 = v14;
  v91 = v7;
  sub_21A176C98(&qword_27CD02840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A2FEED0;
  v23 = (a1 + *(v21 + 20));
  v24 = v23[3];
  v100 = a1;
  v95 = v23;
  if (v24)
  {
    v110 = v23[2];
    v111 = v24;
    sub_21A1834FC();
    swift_bridgeObjectRetain_n();
    v25 = sub_21A2F69B4();
    v27 = v26;
    v29 = v28;
    sub_21A2F6724();
    v30 = sub_21A2F6814();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    sub_21A1834EC(v25, v27, v29 & 1);

    v37 = v100;

    v23 = v95;
    v38 = v34 & 1;
  }

  else
  {
    v37 = a1;
    v30 = 0;
    v32 = 0;
    v38 = 0;
    v36 = 0;
  }

  *(inited + 32) = v30;
  *(inited + 40) = v32;
  *(inited + 48) = v38;
  *(inited + 56) = v36;
  v43 = v23[5];
  v110 = v23[4];
  v111 = v43;
  sub_21A1834FC();
  sub_21A2F5434();
  v44 = 0;
  *(inited + 64) = sub_21A2F69B4();
  *(inited + 72) = v46;
  *(inited + 80) = v45 & 1;
  *(inited + 88) = v47;
  v48 = MEMORY[0x277D84F90];
LABEL_7:
  v49 = 32 * v44 + 56;
  while (++v44 != 3)
  {
    v50 = v49 + 32;
    v51 = *(inited + v49);
    v49 += 32;
    if (v51)
    {
      v52 = *(inited + v50 - 56);
      v53 = *(inited + v50 - 48);
      v54 = *(inited + v50 - 40);
      sub_21A176C88(v52, v53, v54 & 1);
      sub_21A2F5434();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_21A1B7CB0(0, *(v48 + 2) + 1, 1, v48);
      }

      v56 = *(v48 + 2);
      v55 = *(v48 + 3);
      if (v56 >= v55 >> 1)
      {
        v48 = sub_21A1B7CB0((v55 > 1), v56 + 1, 1, v48);
      }

      *(v48 + 2) = v56 + 1;
      v57 = &v48[32 * v56];
      *(v57 + 4) = v52;
      *(v57 + 5) = v53;
      v57[48] = v54 & 1;
      *(v57 + 7) = v51;
      goto LABEL_7;
    }
  }

  v99 = *(v48 + 2);
  if (!v99)
  {
    v108 = 0;
    v105 = 0;
    v107 = 0xE000000000000000;
    v106 = MEMORY[0x277D84F90];
LABEL_21:

    KeyPath = swift_getKeyPath();
    v110 = v108;
    v111 = v107;
    v78 = v105;
    v112 = v105 & 1;
    v113 = v106;
    v114 = KeyPath;
    v115 = 0;
    v79 = *v37;
    swift_getKeyPath();
    v109 = v79;
    sub_21A234DFC(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
    sub_21A2F5094();

    v80 = *(v79 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__selectedIngredientIDs);
    v81 = *v95;
    v82 = v95[1];
    sub_21A2F5434();
    LOBYTE(v81) = sub_21A2D655C(v81, v82, v80);

    if (v81)
    {
      sub_21A176C98(&qword_27CD02718);
      v83 = v92;
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_21A2FC020;
      sub_21A2F5F94();
      v109 = v84;
      sub_21A234DFC(&qword_27CD02720, MEMORY[0x277CE01F0]);
      sub_21A176C98(&qword_27CD02728);
      sub_21A1772F8(&qword_27CD02730, &qword_27CD02728);
      v85 = v96;
      v86 = v93;
      sub_21A2F7F34();
    }

    else
    {
      v109 = MEMORY[0x277D84F90];
      sub_21A234DFC(&qword_27CD02720, MEMORY[0x277CE01F0]);
      sub_21A176C98(&qword_27CD02728);
      sub_21A1772F8(&qword_27CD02730, &qword_27CD02728);
      v85 = v96;
      v86 = v93;
      sub_21A2F7F34();
      v83 = v92;
    }

    sub_21A176C98(&qword_27CCFF9D0);
    sub_21A1AF27C();
    v87 = v89;
    sub_21A2F6D14();
    (*(v83 + 8))(v85, v86);
    sub_21A1834EC(v108, v107, v78 & 1);

    sub_21A183960(v87, v90, &qword_27CD02828);
    swift_storeEnumTagMultiPayload();
    sub_21A1772F8(&qword_27CD02848, &qword_27CD02838);
    sub_21A238258();
    sub_21A2F6114();
    v41 = v87;
    v42 = &qword_27CD02828;
    return sub_21A1427A8(v41, v42);
  }

  v105 = 0;
  v108 = 0;
  v59 = 0;
  v60 = (v48 + 56);
  v107 = 0xE000000000000000;
  v106 = MEMORY[0x277D84F90];
  v98 = v48;
  while (v59 < *(v48 + 2))
  {
    ++v59;
    v101 = *v60;
    v104 = *(v60 - 8);
    v61 = *(v60 - 3);
    v103 = *(v60 - 2);
    v102 = v61;
    sub_21A176C88(v61, v103, v104);
    sub_21A2F5434();
    v62 = v105;
    v63 = v108;
    v64 = v107;
    v65 = sub_21A2F68C4();
    v67 = v66;
    v69 = v68;
    sub_21A1834EC(v63, v64, v62 & 1);

    v70 = v102;
    v71 = v103;
    v72 = v104;
    v108 = sub_21A2F68C4();
    v107 = v73;
    v105 = v74;
    v106 = v75;
    LOBYTE(v74) = v69 & 1;
    v48 = v98;
    sub_21A1834EC(v65, v67, v74);

    v76 = v72;
    v37 = v100;
    sub_21A1834EC(v70, v71, v76);

    v60 += 4;
    if (v99 == v59)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A236AB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_21A2F5FD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21A176C98(&qword_27CD02828);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v72 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v70 = v6;
  v71 = &v61 - v16;
  v68 = v10;
  v69 = v7;
  if (a3 <= 0.0)
  {
    v66 = 0;
    v67 = 0;
    v75 = 0u;
    v76 = 0u;
    v65 = 255;
    v73 = 0u;
    v74 = 0u;
  }

  else
  {
    v17 = a1 + *(type metadata accessor for IngredientRowView(0) + 20);
    v18 = *(v17 + 3);
    if (v18)
    {
      *&v84 = *(v17 + 2);
      *(&v84 + 1) = v18;
      sub_21A1834FC();
      sub_21A2F5434();
      v19 = sub_21A2F69B4();
      v21 = v20;
      v23 = v22;
      sub_21A2F6724();
      v24 = sub_21A2F6814();
      v64 = a1;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      sub_21A1834EC(v19, v21, v23 & 1);

      sub_21A2F7344();
      sub_21A2F57C4();
      LOBYTE(v97) = 0;
      *&v79 = v25;
      *(&v79 + 1) = v27;
      a1 = v64;
      LOBYTE(v80) = v29 & 1;
      *(&v80 + 1) = v31;
      v83 = 0;
    }

    else
    {
      v32 = sub_21A2F6F14();
      sub_21A2F7344();
      sub_21A2F57C4();
      LOBYTE(v91) = v98;
      v78 = v100;
      v77 = 1;
      *&v79 = v32;
      *(&v79 + 1) = v97;
      LOBYTE(v80) = v98;
      *(&v80 + 1) = v99;
      LOBYTE(v81[0]) = v100;
      *(v81 + 8) = v101;
      v83 = 1;
    }

    sub_21A176C98(&qword_27CD02870);
    sub_21A176C98(&qword_27CD02878);
    sub_21A238314(&qword_27CD02880, &qword_27CD02870);
    sub_21A238314(&qword_27CD02888, &qword_27CD02878);
    sub_21A2F6114();
    v75 = v87;
    v76 = v84;
    v74 = v85;
    v73 = v86;
    v66 = v89;
    v67 = v88;
    v65 = v90;
  }

  v33 = (a1 + *(type metadata accessor for IngredientRowView(0) + 20));
  v34 = v33[5];
  *&v84 = v33[4];
  *(&v84 + 1) = v34;
  sub_21A1834FC();
  sub_21A2F5434();
  v35 = sub_21A2F69B4();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  KeyPath = swift_getKeyPath();
  v62 = v37;
  v63 = v35;
  v91 = v35;
  v92 = v37;
  v93 = v39 & 1;
  v64 = v41;
  v94 = v41;
  v95 = KeyPath;
  v96 = 0;
  v43 = *a1;
  swift_getKeyPath();
  *&v84 = v43;
  sub_21A234DFC(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
  sub_21A2F5094();

  v44 = *(v43 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__selectedIngredientIDs);
  v45 = *v33;
  v46 = v33[1];
  sub_21A2F5434();
  LOBYTE(v45) = sub_21A2D655C(v45, v46, v44);

  if (v45)
  {
    sub_21A176C98(&qword_27CD02718);
    v47 = v69;
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_21A2FC020;
    sub_21A2F5F94();
    *&v84 = v48;
    sub_21A234DFC(&qword_27CD02720, MEMORY[0x277CE01F0]);
    sub_21A176C98(&qword_27CD02728);
    sub_21A1772F8(&qword_27CD02730, &qword_27CD02728);
    v49 = v68;
    v50 = v70;
    sub_21A2F7F34();
  }

  else
  {
    *&v84 = MEMORY[0x277D84F90];
    sub_21A234DFC(&qword_27CD02720, MEMORY[0x277CE01F0]);
    sub_21A176C98(&qword_27CD02728);
    sub_21A1772F8(&qword_27CD02730, &qword_27CD02728);
    v49 = v68;
    v50 = v70;
    sub_21A2F7F34();
    v47 = v69;
  }

  sub_21A176C98(&qword_27CCFF9D0);
  sub_21A1AF27C();
  v51 = v71;
  sub_21A2F6D14();
  (*(v47 + 8))(v49, v50);
  sub_21A1834EC(v63, v62, v39 & 1);

  v52 = v72;
  sub_21A183960(v51, v72, &qword_27CD02828);
  v79 = v76;
  v80 = v74;
  v81[0] = v73;
  v81[1] = v75;
  v54 = v66;
  v53 = v67;
  *&v82 = v67;
  *(&v82 + 1) = v66;
  v55 = v65;
  v83 = v65;
  *(a2 + 80) = v65;
  v56 = v81[1];
  *(a2 + 32) = v81[0];
  *(a2 + 48) = v56;
  *(a2 + 64) = v82;
  v57 = v80;
  *a2 = v79;
  *(a2 + 16) = v57;
  v58 = sub_21A176C98(&qword_27CD02860);
  sub_21A183960(v52, a2 + *(v58 + 48), &qword_27CD02828);
  v59 = a2 + *(v58 + 64);
  *v59 = 0;
  *(v59 + 8) = 1;
  sub_21A183960(&v79, &v84, &qword_27CD02868);
  sub_21A1427A8(v51, &qword_27CD02828);
  sub_21A1427A8(v52, &qword_27CD02828);
  v84 = v76;
  v85 = v74;
  v86 = v73;
  v87 = v75;
  v88 = v53;
  v89 = v54;
  v90 = v55;
  return sub_21A1427A8(&v84, &qword_27CD02868);
}

uint64_t sub_21A237364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IngredientRowView(0);
  sub_21A1B12A4(*(a1 + *(v4 + 20)), *(a1 + *(v4 + 20) + 8));
  v5 = *MEMORY[0x277CDF120];
  v6 = sub_21A2F72A4();
  v7 = *(*(v6 - 8) + 104);

  return v7(a2, v5, v6);
}

uint64_t sub_21A237404@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A2F63A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A176C98(&qword_27CD02890);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v22 - v10;
  sub_21A2F63B4();
  if (sub_21A2F63C4())
  {
    v12 = 0.96;
  }

  else
  {
    v12 = 1.0;
  }

  sub_21A2F7454();
  v14 = v13;
  v16 = v15;
  (*(v3 + 32))(v11, v6, v2);
  v17 = &v11[*(v8 + 44)];
  *v17 = v12;
  *(v17 + 1) = v12;
  *(v17 + 2) = v14;
  *(v17 + 3) = v16;
  sub_21A2F63C4();
  v18 = sub_21A2F7384();
  v19 = sub_21A2F63C4();
  sub_21A149B18(v11, a1, &qword_27CD02890);
  result = sub_21A176C98(&qword_27CD02898);
  v21 = a1 + *(result + 36);
  *v21 = v18;
  *(v21 + 8) = v19 & 1;
  return result;
}

uint64_t sub_21A237604@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_21A234DFC(&qword_27CD004E8, type metadata accessor for GroceryExportState);
  sub_21A2F5094();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void sub_21A2376B8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21A27E340(v1);
}

uint64_t sub_21A2376E8()
{
  sub_21A23782C();

  return sub_21A2F7654();
}

id sub_21A237748@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  *a1 = result;
  return result;
}

unint64_t sub_21A237784()
{
  result = qword_27CD02700;
  if (!qword_27CD02700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02700);
  }

  return result;
}

unint64_t sub_21A2377D8()
{
  result = qword_27CD02708;
  if (!qword_27CD02708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02708);
  }

  return result;
}

unint64_t sub_21A23782C()
{
  result = qword_27CD02710;
  if (!qword_27CD02710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02710);
  }

  return result;
}

uint64_t sub_21A237880(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A2378E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21A2379A0()
{
  type metadata accessor for IngredientsViewModel(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for IngredientsViewModel.Ingredient(319);
    if (v1 <= 0x3F)
    {
      sub_21A237A44();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21A237A44()
{
  if (!qword_27CD02758)
  {
    v0 = sub_21A2F7EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD02758);
    }
  }
}

uint64_t sub_21A237ACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A237B34()
{
  v1 = type metadata accessor for IngredientRowView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  return sub_21A1B12A4(*(v2 + *(v1 + 20)), *(v2 + *(v1 + 20) + 8));
}

unint64_t sub_21A237BA8()
{
  result = qword_27CD027B8;
  if (!qword_27CD027B8)
  {
    sub_21A176D98(&qword_27CD027B0);
    sub_21A237C60();
    sub_21A1772F8(&qword_27CD027F0, &qword_27CD027F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD027B8);
  }

  return result;
}

unint64_t sub_21A237C60()
{
  result = qword_27CD027C0;
  if (!qword_27CD027C0)
  {
    sub_21A176D98(&qword_27CD027C8);
    sub_21A237CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD027C0);
  }

  return result;
}

unint64_t sub_21A237CEC()
{
  result = qword_27CD027D0;
  if (!qword_27CD027D0)
  {
    sub_21A176D98(&qword_27CD027D8);
    sub_21A1772F8(&qword_27CD027E0, &qword_27CD027E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD027D0);
  }

  return result;
}

unint64_t sub_21A237DA4()
{
  result = qword_27CD02808;
  if (!qword_27CD02808)
  {
    sub_21A176D98(&qword_27CD02788);
    sub_21A237E60();
    sub_21A234DFC(&qword_27CCFEFC8, type metadata accessor for RecipeLabelVibrancyViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02808);
  }

  return result;
}

unint64_t sub_21A237E60()
{
  result = qword_27CD02810;
  if (!qword_27CD02810)
  {
    sub_21A176D98(&qword_27CD02780);
    sub_21A176D98(&qword_27CD02770);
    sub_21A1772F8(&qword_27CD02800, &qword_27CD02770);
    swift_getOpaqueTypeConformance2();
    sub_21A1772F8(&qword_27CCFE938, &qword_27CCFE940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02810);
  }

  return result;
}

unint64_t sub_21A237F88()
{
  result = qword_27CD02818;
  if (!qword_27CD02818)
  {
    sub_21A176D98(&qword_27CD02798);
    sub_21A176D98(&qword_27CD02788);
    sub_21A237DA4();
    sub_21A237784();
    swift_getOpaqueTypeConformance2();
    sub_21A1772F8(&qword_27CCFEF48, &qword_27CCFEF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02818);
  }

  return result;
}

uint64_t sub_21A238098()
{
  v1 = (type metadata accessor for IngredientRowView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[7];

  v4 = *(type metadata accessor for IngredientsViewModel.Ingredient(0) + 28);
  v5 = sub_21A2F4404();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_21A2381E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IngredientRowView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21A237364(v4, a1);
}

unint64_t sub_21A238258()
{
  result = qword_27CD02850;
  if (!qword_27CD02850)
  {
    sub_21A176D98(&qword_27CD02828);
    sub_21A1AF27C();
    sub_21A234DFC(&qword_27CCFF558, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02850);
  }

  return result;
}

uint64_t sub_21A238314(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A238384()
{
  result = qword_27CD028A0;
  if (!qword_27CD028A0)
  {
    sub_21A176D98(&qword_27CD028A8);
    sub_21A176D98(&qword_27CD027A0);
    sub_21A176D98(&qword_27CD02798);
    sub_21A237F88();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21A234DFC(&qword_27CCFF558, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD028A0);
  }

  return result;
}

unint64_t sub_21A2384C0()
{
  result = qword_27CD028B0;
  if (!qword_27CD028B0)
  {
    sub_21A176D98(&qword_27CD02898);
    sub_21A238578();
    sub_21A1772F8(&qword_27CD009B0, &qword_27CD009B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD028B0);
  }

  return result;
}

unint64_t sub_21A238578()
{
  result = qword_27CD028B8;
  if (!qword_27CD028B8)
  {
    sub_21A176D98(&qword_27CD02890);
    sub_21A234DFC(&qword_27CCFF830, MEMORY[0x277CDE278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD028B8);
  }

  return result;
}

uint64_t sub_21A238634()
{
  sub_21A1772A4();
  sub_21A2F7644();
  return v1;
}

uint64_t sub_21A238670()
{
  swift_getKeyPath();
  sub_21A238E58(&qword_27CD01718, type metadata accessor for CookingModeTipState);
  sub_21A2F5094();

  return *(v0 + 16);
}

uint64_t sub_21A238710@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A238E58(&qword_27CD01718, type metadata accessor for CookingModeTipState);
  sub_21A2F5094();

  *a2 = *(v3 + 16);
  return result;
}

unsigned __int8 *sub_21A2387B8(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  if (v2 == *(*a2 + 16))
  {
    *(*a2 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v4);
    sub_21A238E58(&qword_27CD01718, type metadata accessor for CookingModeTipState);
    sub_21A2F5084();
  }

  return result;
}

uint64_t sub_21A2388CC()
{
  v1 = OBJC_IVAR____TtC10CookingKit19CookingModeTipState___observationRegistrar;
  v2 = sub_21A2F50D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21A2389B8()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_21A2F50C4();
  return v0;
}

uint64_t sub_21A238A38@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CookingModeTipState(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  result = sub_21A2F50C4();
  *a1 = v2;
  return result;
}

uint64_t sub_21A238A88@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD028D0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for CookingModeTipStateSource(0);
  sub_21A2F7694();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    result = sub_21A238EA0(v5);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v6;
    *(a1 + 32) = sub_21A238E58(&qword_27CD028D8, type metadata accessor for CookingModeTipStateSource);
    v8 = sub_21A156050(a1);
    return sub_21A238F08(v5, v8);
  }

  return result;
}

uint64_t sub_21A238BC0()
{
  v1 = type metadata accessor for CookingModeTipStateSource(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A238F6C(v0, v4);
  sub_21A176C98(&qword_27CD028C0);
  sub_21A2F7594();
  sub_21A238FD0(v4);
  if (v11 == 1 && (sub_21A238F6C(v0, v4), sub_21A176C98(&qword_27CCFF118), sub_21A2F7594(), sub_21A238FD0(v4), (v11 & 1) == 0))
  {
    sub_21A238F6C(v0, v4);
    sub_21A2F7594();
    sub_21A238FD0(v4);
    v5 = v11;
  }

  else
  {
    v5 = 0;
  }

  v6 = *v0;
  swift_getKeyPath();
  v11 = v6;
  sub_21A238E58(&qword_27CD01718, type metadata accessor for CookingModeTipState);
  sub_21A2F5094();

  if (v5 != *(v6 + 16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v9);
    *(&v10 - 2) = v6;
    *(&v10 - 8) = v5;
    v11 = v6;
    sub_21A2F5084();
  }

  return result;
}

uint64_t sub_21A238E58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A238EA0(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD028D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A238F08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CookingModeTipStateSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A238F6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CookingModeTipStateSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A238FD0(uint64_t a1)
{
  v2 = type metadata accessor for CookingModeTipStateSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A239060()
{
  sub_21A147E00();
  sub_21A2F5434();
  sub_21A2F75F4();
}

uint64_t sub_21A2390D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_21A239114(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_21A239178(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  HIDWORD(v18[0]) = a4;
  v18[1] = a3;
  v4 = sub_21A2F5A04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A2F5894();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F5934();
  sub_21A2399C8();
  sub_21A2F7D04();
  sub_21A2F7D54();
  if (sub_21A2F7D44() == 2)
  {
    sub_21A2F5944();
    v20 = 0;
    v19 = BYTE4(v18[0]) & 1;
    sub_21A2F5864();
    sub_21A2F59F4();
    (*(v5 + 8))(v8, v4);
    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    sub_21A176C98(&qword_27CCFFF88);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21A2FC020;
    sub_21A2F7D04();
    sub_21A2F7D54();
    v16 = sub_21A2F7D44();
    v17 = MEMORY[0x277D83C10];
    *(v15 + 56) = MEMORY[0x277D83B88];
    *(v15 + 64) = v17;
    *(v15 + 32) = v16;
    MEMORY[0x21CED3C90]("2 and only 2 views should be supplied to RecipeCardRegularHeroLayout: %ld recieved", v18[0]);
  }
}

void (*sub_21A2394B0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21A2F5544();
  return sub_21A21B044;
}

unint64_t sub_21A23953C()
{
  result = qword_27CD028E0;
  if (!qword_27CD028E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD028E0);
  }

  return result;
}

uint64_t sub_21A239590(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v27 = sub_21A2F5A04();
  v8 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21A2F5894();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v26 - v19;
  sub_21A2F5934();
  sub_21A2399C8();
  sub_21A2F7D04();
  sub_21A2F7D54();
  if (sub_21A2F7D44() == 2)
  {
    sub_21A2F5944();
    sub_21A2F5944();
    v30.origin.x = a1;
    v30.origin.y = a2;
    v30.size.width = a3;
    v30.size.height = a4;
    CGRectGetWidth(v30);
    v29 = 0;
    v28 = 1;
    sub_21A2F5864();
    v31.origin.x = a1;
    v31.origin.y = a2;
    v31.size.width = a3;
    v31.size.height = a4;
    CGRectGetHeight(v31);
    v32.origin.x = a1;
    v32.origin.y = a2;
    v32.size.width = a3;
    v32.size.height = a4;
    CGRectGetMaxX(v32);
    v33.origin.x = a1;
    v33.origin.y = a2;
    v33.size.width = a3;
    v33.size.height = a4;
    CGRectGetMinY(v33);
    sub_21A2F7424();
    v29 = 0;
    v28 = 0;
    sub_21A2F5884();
    v34.origin.x = a1;
    v34.origin.y = a2;
    v34.size.width = a3;
    v34.size.height = a4;
    CGRectGetMinX(v34);
    v35.origin.x = a1;
    v35.origin.y = a2;
    v35.size.width = a3;
    v35.size.height = a4;
    CGRectGetMinY(v35);
    sub_21A2F59F4();
    sub_21A2F7414();
    v29 = 0;
    v28 = 0;
    sub_21A2F5884();
    (*(v8 + 8))(v11, v27);
    v21 = *(v13 + 8);
    v21(v16, v12);
    return (v21)(v20, v12);
  }

  else
  {
    sub_21A176C98(&qword_27CCFFF88);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_21A2FC020;
    sub_21A2F7D04();
    sub_21A2F7D54();
    v24 = sub_21A2F7D44();
    v25 = MEMORY[0x277D83C10];
    *(v23 + 56) = MEMORY[0x277D83B88];
    *(v23 + 64) = v25;
    *(v23 + 32) = v24;
    MEMORY[0x21CED3C90]("2 and only 2 views should be supplied to RecipeCardRegularHeroLayout: %ld recieved", v26);
  }
}

unint64_t sub_21A2399C8()
{
  result = qword_27CD01C48;
  if (!qword_27CD01C48)
  {
    sub_21A2F5934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01C48);
  }

  return result;
}

__n128 sub_21A239A34(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_21A239A70(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 185))
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

uint64_t sub_21A239AB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_21A239B54()
{
  v1 = sub_21A2F5ED4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v0 + 96);
  v6 = *(v0 + 88);
  v10 = v6;
  if (v11 != 1)
  {

    sub_21A2F7DE4();
    v7 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1427A8(&v10, &qword_27CD00098);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v9[15];
  }

  return (v6 & 1) == 0;
}

uint64_t sub_21A239CB8@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v63 = sub_21A176C98(&qword_27CD028E8);
  MEMORY[0x28223BE20](v63, v2);
  v62 = &v52 - v3;
  v61 = sub_21A176C98(&qword_27CD028F0);
  MEMORY[0x28223BE20](v61, v4);
  v59 = &v52 - v5;
  *&v67 = sub_21A2F6134();
  v57 = *(v67 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v67, v6);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  *&v66 = &v52 - v10;
  v54 = sub_21A2F6144();
  v11 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21A176C98(&qword_27CD028F8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = (&v52 - v17);
  v65 = sub_21A176C98(&qword_27CD02900);
  MEMORY[0x28223BE20](v65, v19);
  v21 = &v52 - v20;
  v60 = sub_21A176C98(&qword_27CD02908);
  MEMORY[0x28223BE20](v60, v22);
  v56 = &v52 - v23;
  *v18 = sub_21A2F7344();
  v18[1] = v24;
  v25 = sub_21A176C98(&qword_27CD02910);
  sub_21A23A390(v1, v18 + *(v25 + 44));
  v73[0] = 0xD000000000000012;
  v73[1] = 0x800000021A318680;
  sub_21A2F6324();
  sub_21A1772F8(&qword_27CD02918, &qword_27CD028F8);
  sub_21A2F6BB4();
  (*(v11 + 8))(v14, v54);
  sub_21A1427A8(v18, &qword_27CD028F8);
  v26 = swift_allocObject();
  v27 = v1[9];
  v26[9] = v1[8];
  v26[10] = v27;
  v26[11] = v1[10];
  *(v26 + 185) = *(v1 + 169);
  v28 = v1[5];
  v26[5] = v1[4];
  v26[6] = v28;
  v29 = v1[7];
  v26[7] = v1[6];
  v26[8] = v29;
  v30 = v1[1];
  v26[1] = *v1;
  v26[2] = v30;
  v31 = v1[2];
  v32 = v1[3];
  v53 = v1;
  v26[3] = v31;
  v26[4] = v32;
  v33 = v21;
  v34 = &v21[*(v65 + 36)];
  *v34 = sub_21A1A5EAC;
  *(v34 + 1) = 0;
  *(v34 + 2) = sub_21A23DC54;
  *(v34 + 3) = v26;
  sub_21A23DCAC(v1, v73);
  v35 = v66;
  sub_21A2F6304();
  v36 = sub_21A2F7344();
  v38 = v37;
  v39 = v57;
  v40 = v55;
  v41 = v67;
  (*(v57 + 16))(v55, v35, v67);
  v42 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = 1869768040;
  *(v43 + 24) = 0xE400000000000000;
  (*(v39 + 32))(v43 + v42, v40, v41);
  v44 = v59;
  sub_21A183960(v33, v59, &qword_27CD02900);
  v45 = v62;
  v46 = (v44 + *(v61 + 36));
  *v46 = sub_21A23251C;
  v46[1] = v43;
  v46[2] = v36;
  v46[3] = v38;
  sub_21A183960(v44, v45, &qword_27CD028F0);
  swift_storeEnumTagMultiPayload();
  sub_21A23E6DC();
  sub_21A23E794();
  v47 = v56;
  sub_21A2F6114();
  sub_21A1427A8(v44, &qword_27CD028F0);
  sub_21A1427A8(v33, &qword_27CD02900);
  (*(v39 + 8))(v66, v67);
  v48 = v53;
  v49 = sub_21A23BE1C();
  v50 = *(v48 + 8);
  v66 = *(v48 + 24);
  v67 = v50;
  sub_21A2F72F4();
  v69 = v47;
  v70 = v49;
  v71 = v67;
  v72 = v66;
  v68 = v47;
  sub_21A176C98(&qword_27CD02930);
  sub_21A23E900();
  sub_21A23E98C();
  sub_21A2F7304();
  return sub_21A1427A8(v47, &qword_27CD02908);
}

uint64_t sub_21A23A390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v33 = sub_21A176C98(&qword_27CD02958);
  MEMORY[0x28223BE20](v33, v3);
  v5 = &v30 - v4;
  v6 = sub_21A176C98(&qword_27CD02960);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v30 - v8;
  v32 = sub_21A176C98(&qword_27CD02968);
  MEMORY[0x28223BE20](v32, v10);
  v12 = &v30 - v11;
  v13 = sub_21A2F5ED4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(a1 + 96);
  v18 = *(a1 + 88);
  v38 = v18;
  if (v39 != 1)
  {

    sub_21A2F7DE4();
    v24 = sub_21A2F65B4();
    v31 = v5;
    v25 = v9;
    v26 = v24;
    sub_21A2F53B4();

    v9 = v25;
    v5 = v31;
    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1427A8(&v38, &qword_27CD00098);
    (*(v14 + 8))(v17, v13);
    if (v36 != 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v27 = *(a1 + 184);
    v28 = *(a1 + 24);
    *v12 = *(a1 + 8);
    *(v12 + 1) = v28;
    *(v12 + 2) = *(a1 + 56);
    v12[48] = v27;
    sub_21A23A814(&v12[*(v32 + 44)]);
    v22 = &qword_27CD02968;
    sub_21A183960(v12, v9, &qword_27CD02968);
    swift_storeEnumTagMultiPayload();
    sub_21A23EBCC();
    sub_21A23ECB0();
    sub_21A2F6114();
    v23 = v12;
    return sub_21A1427A8(v23, v22);
  }

  if (v18)
  {
    goto LABEL_7;
  }

LABEL_3:
  v37 = *(a1 + 112);
  v19 = *(a1 + 104);
  v36 = v19;
  if (v37 != 1)
  {

    sub_21A2F7DE4();
    v20 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1427A8(&v36, &qword_27CD02970);
    (*(v14 + 8))(v17, v13);
    LOBYTE(v19) = v35;
  }

  v21 = *(a1 + 24);
  *v5 = *(a1 + 8);
  *(v5 + 1) = v21;
  *(v5 + 2) = *(a1 + 56);
  v5[48] = v19;
  sub_21A23A814(&v5[*(v33 + 44)]);
  v22 = &qword_27CD02958;
  sub_21A183960(v5, v9, &qword_27CD02958);
  swift_storeEnumTagMultiPayload();
  sub_21A23EBCC();
  sub_21A23ECB0();
  sub_21A2F6114();
  v23 = v5;
  return sub_21A1427A8(v23, v22);
}

uint64_t sub_21A23A814@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v194 = a1;
  v3 = sub_21A176C98(&qword_27CD029B8);
  v187 = *(v3 - 8);
  v188 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v186 = &v170 - v5;
  v185 = sub_21A176C98(&qword_27CD029C0);
  MEMORY[0x28223BE20](v185, v6);
  v191 = &v170 - v7;
  v190 = sub_21A176C98(&qword_27CD029C8);
  MEMORY[0x28223BE20](v190, v8);
  v193 = &v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v189 = &v170 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v192 = &v170 - v15;
  v195 = sub_21A2F5ED4();
  v199 = *(v195 - 8);
  MEMORY[0x28223BE20](v195, v16);
  v198 = &v170 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v179 = &v170 - v20;
  v181 = sub_21A176C98(&qword_27CD029D0) - 8;
  MEMORY[0x28223BE20](v181, v21);
  v23 = &v170 - v22;
  v180 = sub_21A176C98(&qword_27CD029D8);
  MEMORY[0x28223BE20](v180, v24);
  v173 = &v170 - v25;
  *(&v196 + 1) = sub_21A176C98(&qword_27CD029E0);
  MEMORY[0x28223BE20](*(&v196 + 1), v26);
  *&v196 = &v170 - v27;
  v28 = sub_21A176C98(&qword_27CD029E8);
  v175 = *(v28 - 8);
  v176 = v28;
  MEMORY[0x28223BE20](v28, v29);
  v197 = &v170 - v30;
  v177 = sub_21A176C98(&qword_27CD029F0);
  MEMORY[0x28223BE20](v177, v31);
  KeyPath = &v170 - v32;
  v33 = sub_21A176C98(&qword_27CD029F8);
  v183 = *(v33 - 8);
  v184 = v33;
  MEMORY[0x28223BE20](v33, v34);
  v182 = &v170 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37);
  v200 = &v170 - v38;
  v39 = sub_21A2F6F14();
  v40 = sub_21A2F7344();
  v42 = v41;
  v43 = &v23[*(sub_21A176C98(&qword_27CD02A00) + 36)];
  sub_21A23C230(v2, v43);
  v44 = (v43 + *(sub_21A176C98(&qword_27CD02A08) + 36));
  *v44 = v40;
  v44[1] = v42;
  *v23 = v39;
  *(v23 + 4) = 256;
  *&v23[*(sub_21A176C98(&qword_27CD02A10) + 36)] = 0;
  v45 = sub_21A2F7344();
  v47 = v46;
  sub_21A23C45C(v2, &v203);
  v48 = v203;
  v49 = v204;
  v50 = v205;
  v51 = *(v181 + 44);
  v172 = v23;
  v52 = &v23[v51];
  *v52 = v203;
  *(v52 + 1) = v49;
  *(v52 + 16) = v50;
  *(v52 + 5) = v45;
  *(v52 + 6) = v47;
  sub_21A23ED94(v48, SBYTE8(v48));
  v53 = v179;
  sub_21A23EDAC(v48, SBYTE8(v48));
  v54 = sub_21A239B54();
  v227 = *(v2 + 136);
  v228 = *(v2 + 152);
  v203 = *(v2 + 136);
  *&v204 = *(v2 + 152);
  v55 = sub_21A176C98(&qword_27CD02950);
  sub_21A2F7024();
  v171 = *(&v201[0] + 1);
  v56 = *&v201[0];
  v57 = *v2;
  swift_getKeyPath();
  *&v203 = v57;
  sub_21A23F9F0(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);

  sub_21A2F5094();

  sub_21A183960(v57 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__heroImageAsset, v53, &qword_27CCFEDC0);
  v203 = *(v2 + 160);
  *&v204 = *(v2 + 176);
  v174 = v55;
  sub_21A2F7024();
  v58 = v201[0];
  swift_getKeyPath();
  *&v203 = v57;
  sub_21A2F5094();

  v181 = v57;
  v59 = *(v57 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__isHorizontalParallaxEnabled);
  v60 = 0.0;
  if (!sub_21A239B54())
  {
    v60 = sub_21A23BE1C();
  }

  v61 = *(v2 + 8);
  v62 = *(v2 + 16);
  v64 = *(v2 + 24);
  v63 = *(v2 + 32);
  v65 = v173;
  v66 = &v173[*(v180 + 36)];
  v67 = type metadata accessor for RecipeCardHeroTiledImageModifier(0);
  sub_21A183960(v53, &v66[v67[7]], &qword_27CCFEDC0);
  *&v201[0] = 0;
  sub_21A2F7014();
  sub_21A1427A8(v53, &qword_27CCFEDC0);
  v68 = *(&v203 + 1);
  *v66 = v203;
  *(v66 + 1) = v68;
  v66[16] = v54;
  v69 = v171;
  *(v66 + 3) = v56;
  *(v66 + 4) = v69;
  *&v66[v67[8]] = v58;
  v70 = &v66[v67[9]];
  *v70 = v61;
  *(v70 + 1) = v62;
  v179 = v63;
  v180 = v62;
  *(v70 + 2) = v64;
  *(v70 + 3) = v63;
  v66[v67[10]] = v59;
  *&v66[v67[11]] = v60;
  sub_21A149B18(v172, v65, &qword_27CD029D0);
  v71 = swift_allocObject();
  v72 = *(v2 + 144);
  v71[9] = *(v2 + 128);
  v71[10] = v72;
  v71[11] = *(v2 + 160);
  *(v71 + 185) = *(v2 + 169);
  v73 = *(v2 + 80);
  v71[5] = *(v2 + 64);
  v71[6] = v73;
  v74 = *(v2 + 112);
  v71[7] = *(v2 + 96);
  v71[8] = v74;
  v75 = *(v2 + 16);
  v71[1] = *v2;
  v71[2] = v75;
  v76 = *(v2 + 48);
  v71[3] = *(v2 + 32);
  v71[4] = v76;
  v77 = v196;
  sub_21A149B18(v65, v196, &qword_27CD029D8);
  v78 = (v77 + *(*(&v196 + 1) + 36));
  *v78 = sub_21A23FE94;
  v78[1] = 0;
  v78[2] = sub_21A23EDC4;
  v78[3] = v71;
  sub_21A176C98(&qword_27CD00138);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_21A2FEED0;
  sub_21A23DCAC(v2, &v203);
  v80 = sub_21A2F65C4();
  *(v79 + 32) = v80;
  v81 = sub_21A2F65E4();
  *(v79 + 33) = v81;
  v82 = sub_21A2F65D4();
  sub_21A2F65D4();
  if (sub_21A2F65D4() != v80)
  {
    v82 = sub_21A2F65D4();
  }

  sub_21A2F65D4();
  if (sub_21A2F65D4() != v81)
  {
    v82 = sub_21A2F65D4();
  }

  v83 = v61;
  v84 = -v61;
  v85 = swift_allocObject();
  *(v85 + 16) = 1;
  *(v85 + 24) = -v61;
  *(v85 + 32) = v82;
  v86 = sub_21A176C98(&qword_27CD02658);
  v171 = v86;
  v87 = sub_21A23EDCC();
  v88 = sub_21A176D98(&qword_27CCFF238);
  v89 = sub_21A2F5C84();
  v173 = v89;
  v172 = sub_21A23F9F0(&qword_27CCFF220, MEMORY[0x277CDFCB0]);
  *&v203 = v89;
  *(&v203 + 1) = v172;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v203 = v88;
  *(&v203 + 1) = OpaqueTypeConformance2;
  v91 = swift_getOpaqueTypeConformance2();
  v92 = *(&v196 + 1);
  v93 = v196;
  MEMORY[0x21CED5600](sub_21A232F50, v85, *(&v196 + 1), v86, v87, v91);

  sub_21A1427A8(v93, &qword_27CD029E0);
  LOBYTE(v86) = sub_21A23C078();
  v226 = *(v2 + 120);
  v203 = *(v2 + 120);
  sub_21A176C98(&qword_27CCFF4D8);
  sub_21A2F7024();
  *&v196 = *(v2 + 64);
  v94 = -(v61 + *v201 - *&v196 - v64);
  v95 = swift_allocObject();
  *(v95 + 16) = v86 & 1;
  *(v95 + 24) = sub_21A193264;
  *(v95 + 32) = 0;
  *(v95 + 40) = 0;
  *(v95 + 48) = v84;
  *(v95 + 56) = v94;
  *(v95 + 64) = 0;
  *(v95 + 72) = 0;
  *(v95 + 80) = 1;
  v96 = sub_21A176C98(&qword_27CD02A70);
  *&v203 = v92;
  *(&v203 + 1) = v171;
  *&v204 = v87;
  *(&v204 + 1) = v91;
  v97 = swift_getOpaqueTypeConformance2();
  v98 = sub_21A176D98(&qword_27CCFF218);
  *&v203 = v173;
  *(&v203 + 1) = v172;
  v99 = swift_getOpaqueTypeConformance2();
  *&v203 = v98;
  *(&v203 + 1) = v99;
  v100 = swift_getOpaqueTypeConformance2();
  v101 = KeyPath;
  v102 = v176;
  v103 = v96;
  v104 = v197;
  MEMORY[0x21CED5600](sub_21A23F194, v95, v176, v103, v97, v100);

  (*(v175 + 8))(v104, v102);
  v105 = v177;
  *(v101 + *(v177 + 36)) = 0;
  v203 = v226;
  sub_21A2F7024();
  v106 = *v201;
  v203 = v227;
  *&v204 = v228;
  sub_21A2F7024();
  v107 = *(v201 + 1);
  v225 = *(v2 + 96);
  v108 = *(v2 + 88);
  v224 = v108;
  LODWORD(v197) = v225;
  if (v225 == 1)
  {
    v109 = v108;
    v110 = v195;
  }

  else
  {

    sub_21A2F7DE4();
    v111 = sub_21A2F65B4();
    sub_21A2F53B4();

    v112 = v198;
    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1427A8(&v224, &qword_27CD00098);
    v110 = v195;
    (*(v199 + 8))(v112, v195);
    v109 = v203;
  }

  v113 = swift_allocObject();
  *(v113 + 16) = v109 & 1;
  *(v113 + 24) = v84;
  *(v113 + 32) = 0x3FE999999999999ALL;
  *(v113 + 40) = v84 - (v106 - v107);
  v114 = sub_21A23F1EC();
  MEMORY[0x21CED5600](sub_21A23F1DC, v113, v105, v98, v114, v99);

  sub_21A1427A8(v101, &qword_27CD029F0);
  v115 = v197;
  if (v197)
  {
    v116 = *(v2 + 40);
    v117 = v116;
    if (v108)
    {
      goto LABEL_17;
    }
  }

  else
  {

    sub_21A2F7DE4();
    v118 = sub_21A2F65B4();
    sub_21A2F53B4();

    v119 = v198;
    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1427A8(&v224, &qword_27CD00098);
    (*(v199 + 8))(v119, v110);
    v116 = *(v2 + 40);
    v117 = v116;
    if (v203)
    {
      goto LABEL_17;
    }
  }

  if (*(v2 + 48))
  {
    v117 = 30.0;
  }

  else
  {
    v117 = 20.0;
  }

LABEL_17:
  *(&v196 + 1) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v177 = swift_getKeyPath();
  LODWORD(v176) = sub_21A2F6614();
  if (!v115)
  {

    sub_21A2F7DE4();
    v120 = sub_21A2F65B4();
    sub_21A2F53B4();

    v115 = v197;
    v121 = v198;
    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1427A8(&v224, &qword_27CD00098);
    (*(v199 + 8))(v121, v110);
  }

  LODWORD(v175) = *(v2 + 48);
  v219 = 0;
  v218 = 0;
  v217 = 0;
  sub_21A2F55A4();
  v123 = v122;
  v125 = v124;
  v127 = v126;
  v129 = v128;
  v130 = v219;
  v131 = v218;
  v132 = v217;
  v220 = 0;
  v133 = sub_21A2F6624();
  if (!v115)
  {

    sub_21A2F7DE4();
    v134 = sub_21A2F65B4();
    sub_21A2F53B4();

    v110 = v195;
    v135 = v198;
    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1427A8(&v224, &qword_27CD00098);
    v136 = v135;
    v115 = v197;
    (*(v199 + 8))(v136, v110);
  }

  sub_21A2F55A4();
  v221 = 0;
  *&v203 = v181;
  *(&v203 + 1) = v116;
  *&v204 = v117;
  *(&v204 + 1) = v83;
  *&v205 = v180;
  *(&v205 + 1) = v64;
  *&v206 = v179;
  WORD4(v206) = 257;
  BYTE10(v206) = 1;
  BYTE11(v206) = v175;
  v207 = v196;
  LOBYTE(v208) = v130;
  *(&v208 + 1) = KeyPath;
  LOBYTE(v209) = v131;
  *(&v209 + 1) = v177;
  LOBYTE(v210) = v132;
  BYTE8(v210) = v176;
  *&v211 = v123;
  *(&v211 + 1) = v125;
  *&v212 = v127;
  *(&v212 + 1) = v129;
  LOBYTE(v213) = 0;
  DWORD1(v213) = *&v223[3];
  *(&v213 + 1) = *v223;
  BYTE8(v213) = v133;
  HIDWORD(v213) = *&v222[3];
  *(&v213 + 9) = *v222;
  *&v214 = v137;
  *(&v214 + 1) = v138;
  *&v215 = v139;
  *(&v215 + 1) = v140;
  v216 = 0;
  if (!v115)
  {

    sub_21A2F7DE4();
    v141 = sub_21A2F65B4();
    sub_21A2F53B4();

    v142 = v198;
    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1427A8(&v224, &qword_27CD00098);
    (*(v199 + 8))(v142, v110);
  }

  v201[10] = v213;
  v201[11] = v214;
  v201[12] = v215;
  v202 = v216;
  v201[6] = v209;
  v201[7] = v210;
  v201[8] = v211;
  v201[9] = v212;
  v201[2] = v205;
  v201[3] = v206;
  v201[4] = v207;
  v201[5] = v208;
  v201[0] = v203;
  v201[1] = v204;
  v143 = sub_21A2F72F4();
  MEMORY[0x28223BE20](v143, v144);
  sub_21A176C98(&qword_27CD02A90);
  sub_21A176C98(&qword_27CD02A98);
  sub_21A23F470();
  sub_21A23F5DC();
  v145 = v186;
  sub_21A2F6E94();
  sub_21A1427A8(&v203, &qword_27CD02A90);
  v146 = sub_21A2F7344();
  v148 = v147;
  v149 = v191;
  v150 = &v191[*(v185 + 36)];
  sub_21A23C804(v2, v150);
  v151 = (v150 + *(sub_21A176C98(&qword_27CD02AC8) + 36));
  *v151 = v146;
  v151[1] = v148;
  (*(v187 + 32))(v149, v145, v188);
  v152 = swift_allocObject();
  v153 = *(v2 + 144);
  v152[9] = *(v2 + 128);
  v152[10] = v153;
  v152[11] = *(v2 + 160);
  *(v152 + 185) = *(v2 + 169);
  v154 = *(v2 + 80);
  v152[5] = *(v2 + 64);
  v152[6] = v154;
  v155 = *(v2 + 112);
  v152[7] = *(v2 + 96);
  v152[8] = v155;
  v156 = *(v2 + 16);
  v152[1] = *v2;
  v152[2] = v156;
  v157 = *(v2 + 48);
  v152[3] = *(v2 + 32);
  v152[4] = v157;
  v158 = v189;
  sub_21A149B18(v149, v189, &qword_27CD029C0);
  v159 = (v158 + *(v190 + 36));
  *v159 = sub_21A23FE94;
  v159[1] = 0;
  v159[2] = sub_21A23F698;
  v159[3] = v152;
  v160 = v192;
  v199 = v2;
  sub_21A149B18(v158, v192, &qword_27CD029C8);
  v162 = v182;
  v161 = v183;
  v163 = *(v183 + 16);
  v164 = v184;
  v163(v182, v200, v184);
  v165 = v193;
  sub_21A183960(v160, v193, &qword_27CD029C8);
  v166 = v194;
  v163(v194, v162, v164);
  v167 = sub_21A176C98(&qword_27CD02AD0);
  sub_21A183960(v165, &v166[*(v167 + 48)], &qword_27CD029C8);
  sub_21A23DCAC(v199, v201);
  sub_21A1427A8(v160, &qword_27CD029C8);
  v168 = *(v161 + 8);
  v168(v200, v164);
  sub_21A1427A8(v165, &qword_27CD029C8);
  return (v168)(v162, v164);
}

double sub_21A23BE1C()
{
  v1 = v0;
  v2 = sub_21A2F5ED4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = 0.0;
  if (sub_21A2F72E4())
  {
    v17 = *(v1 + 96);
    v8 = *(v1 + 88);
    v16 = v8;
    if (v17 == 1)
    {
      if ((v8 & 1) == 0)
      {
        return v7;
      }
    }

    else
    {

      sub_21A2F7DE4();
      v9 = sub_21A2F65B4();
      sub_21A2F53B4();

      sub_21A2F5EC4();
      swift_getAtKeyPath();
      sub_21A1427A8(&v16, &qword_27CD00098);
      (*(v3 + 8))(v6, v2);
      if (v14 != 1)
      {
        return v7;
      }
    }

    v14 = *(v1 + 160);
    v15 = *(v1 + 176);
    sub_21A176C98(&qword_27CD02950);
    sub_21A2F7024();
    if (v13 > 0.0 || (v14 = *(v1 + 136), v15 = *(v1 + 152), sub_21A2F7024(), v13 > 0.0))
    {
      v14 = *(v1 + 160);
      v15 = *(v1 + 176);
      sub_21A2F7024();
      v10 = v13;
      v14 = *(v1 + 136);
      v15 = *(v1 + 152);
      sub_21A2F7024();
      if (*(v1 + 80) - (v10 + v13 + -80.0) < 0.0)
      {
        return 0.0;
      }

      else
      {
        return *(v1 + 80) - (v10 + v13 + -80.0);
      }
    }
  }

  return v7;
}

BOOL sub_21A23C078()
{
  v1 = sub_21A2F5ED4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 96);
  v6 = *(v0 + 88);
  v11 = v6;
  if (v12 == 1)
  {
    if (v6)
    {
      return 0;
    }
  }

  else
  {

    sub_21A2F7DE4();
    v8 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1427A8(&v11, &qword_27CD00098);
    (*(v2 + 8))(v5, v1);
    if (v10)
    {
      return 0;
    }
  }

  v10 = *(v0 + 120);
  sub_21A176C98(&qword_27CCFF4D8);
  sub_21A2F7024();
  return *(v0 + 64) + *(v0 + 24) < v9[1];
}

uint64_t sub_21A23C230@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14[0] = a2;
  v3 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v14 - v5;
  v7 = sub_21A176C98(&qword_27CCFEFE0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v14 - v9;
  v11 = *a1;
  swift_getKeyPath();
  v14[1] = v11;
  sub_21A23F9F0(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  sub_21A183960(v11 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__heroImageAsset, v6, &qword_27CCFEDC0);
  sub_21A183960(v6, v10, &qword_27CCFEDC0);
  v12 = &v10[*(v7 + 52)];
  sub_21A2F72B4();
  *&v12[*(sub_21A176C98(&qword_27CCFEFE8) + 56)] = 256;
  sub_21A1427A8(v6, &qword_27CCFEDC0);
  sub_21A1772F8(&qword_27CCFF778, &qword_27CCFEFE0);
  sub_21A2F6C84();
  return sub_21A1427A8(v10, &qword_27CCFEFE0);
}

uint64_t sub_21A23C45C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v24 - v6;
  v8 = sub_21A2F5ED4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + 96);
  v13 = a1[11];
  v26 = v13;
  if (v27 != 1)
  {

    sub_21A2F7DE4();
    v18 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1427A8(&v26, &qword_27CD00098);
    (*(v9 + 8))(v12, v8);
    if (v25)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = *a1;
    swift_getKeyPath();
    v25 = v19;
    sub_21A23F9F0(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5094();

    sub_21A183960(v19 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__heroImageAsset, v7, &qword_27CCFEDC0);
    v20 = type metadata accessor for ImageAsset(0);
    if ((*(*(v20 - 8) + 48))(v7, 1, v20) == 1)
    {
      sub_21A1427A8(v7, &qword_27CCFEDC0);
    }

    else
    {
      v21 = sub_21A244B20();
      sub_21A183894(v7);
      if (v21)
      {
        [v21 _luminance];
        v23 = v22 > 0.7;

        result = swift_getKeyPath();
        v15 = a1[1];
        v17 = v23 << 8;
LABEL_10:
        v16 = 256;
        goto LABEL_11;
      }
    }

    result = swift_getKeyPath();
    v17 = 0;
    v15 = a1[1];
    goto LABEL_10;
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  result = 0;
  v15 = 0;
  v16 = 0;
  v17 = 255;
LABEL_11:
  *a2 = result;
  *(a2 + 8) = v17;
  *(a2 + 16) = v15;
  *(a2 + 24) = 0;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_21A23C804@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = sub_21A2F5ED4();
  v85 = *(v3 - 8);
  v86 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v84 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v74 - v8;
  v10 = sub_21A176C98(&qword_27CD02AD8);
  v88 = *(v10 - 8);
  v89 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v87 = &v74 - v12;
  v13 = *a1;
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel___observationRegistrar;
  v96[0] = v13;
  v91 = sub_21A23F9F0(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  v92 = v14;
  sub_21A2F5094();

  sub_21A183960(v13 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__heroImageAsset, v9, &qword_27CCFEDC0);
  v15 = type metadata accessor for ImageAsset(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_21A1427A8(v9, &qword_27CCFEDC0);
  }

  else
  {
    v16 = sub_21A244B20();
    sub_21A183894(v9);
    if (v16)
    {
      [v16 _luminance];
      v18 = v17;

      v83 = v18 > 0.7;
      goto LABEL_6;
    }
  }

  v83 = 0;
LABEL_6:
  KeyPath = swift_getKeyPath();
  v19 = sub_21A2F7344();
  v21 = v20;
  sub_21A23D15C(v95);
  v97[7] = *&v95[96];
  v97[8] = *&v95[112];
  v97[3] = *&v95[32];
  v97[4] = *&v95[48];
  v97[5] = *&v95[64];
  v97[6] = *&v95[80];
  v97[1] = *v95;
  v97[2] = *&v95[16];
  *&v109[102] = *&v95[80];
  *&v109[38] = *&v95[16];
  *&v109[118] = *&v95[96];
  *&v109[134] = *&v95[112];
  *&v109[54] = *&v95[32];
  *&v97[0] = v19;
  *(&v97[0] + 1) = v21;
  *&v109[70] = *&v95[48];
  *&v109[86] = *&v95[64];
  *&v109[6] = v97[0];
  *&v109[22] = *v95;
  v106 = *&v95[96];
  v107 = *&v95[112];
  v102 = *&v95[32];
  v103 = *&v95[48];
  v98 = v95[128];
  v110 = 0;
  v109[150] = v95[128];
  v99[0] = v19;
  v99[1] = v21;
  v108 = v95[128];
  v104 = *&v95[64];
  v105 = *&v95[80];
  v100 = *v95;
  v101 = *&v95[16];
  sub_21A183960(v97, v96, &qword_27CD02AE0);
  sub_21A1427A8(v99, &qword_27CD02AE0);
  v80 = v110;
  v81 = sub_21A2F6614();
  sub_21A239B54();
  sub_21A2F55A4();
  v78 = v23;
  v79 = v22;
  v76 = v25;
  v77 = v24;
  v111 = 0;
  v75 = sub_21A2F6654();
  v116 = *(a1 + 96);
  v26 = a1[11];
  v115 = v26;
  v27 = v116;
  if (v116 != 1)
  {

    sub_21A2F7DE4();
    v28 = sub_21A2F65B4();
    sub_21A2F53B4();

    v29 = v84;
    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1427A8(&v115, &qword_27CD00098);
    (*(v85 + 8))(v29, v86);
  }

  v30 = 0;
  sub_21A2F55A4();
  v74 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v112 = 0;
  v38 = sub_21A2F6634();
  swift_getKeyPath();
  v96[0] = v13;
  sub_21A2F5094();

  v39 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__isHorizontalParallaxEnabled;
  sub_21A2F55A4();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v113 = 0;
  swift_getKeyPath();
  v96[0] = v13;
  sub_21A2F5094();

  if (*(v13 + v39) == 1)
  {
    v30 = a1[2];
  }

  *(&v96[13] + 2) = *&v109[96];
  *(&v96[15] + 2) = *&v109[112];
  *(&v96[17] + 2) = *&v109[128];
  *(&v96[5] + 2) = *&v109[32];
  *(&v96[7] + 2) = *&v109[48];
  *(&v96[9] + 2) = *&v109[64];
  *(&v96[11] + 2) = *&v109[80];
  *(&v96[1] + 2) = *v109;
  v96[0] = KeyPath;
  LOBYTE(v96[1]) = v80;
  BYTE1(v96[1]) = v83;
  *(&v96[19] + 1) = *&v109[143];
  *(&v96[3] + 2) = *&v109[16];
  LOBYTE(v96[21]) = v81;
  v96[22] = v79;
  v96[23] = v78;
  v96[24] = v77;
  v96[25] = v76;
  LOBYTE(v96[26]) = 0;
  LOBYTE(v96[27]) = v75;
  v96[28] = v74;
  v96[29] = v33;
  v96[30] = v35;
  v96[31] = v37;
  LOBYTE(v96[32]) = 0;
  LOBYTE(v96[33]) = v38;
  v96[34] = v41;
  v96[35] = v43;
  v96[36] = v45;
  v96[37] = v47;
  LOBYTE(v96[38]) = 0;
  *(&v96[38] + 1) = *v114;
  HIDWORD(v96[38]) = *&v114[3];
  v96[39] = v30;
  v96[40] = 0;
  if (!v27)
  {

    sub_21A2F7DE4();
    v48 = sub_21A2F65B4();
    sub_21A2F53B4();

    v49 = v84;
    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1427A8(&v115, &qword_27CD00098);
    (*(v85 + 8))(v49, v86);
    LOBYTE(v26) = v95[0];
  }

  v50 = -*(a1 + 1);
  v51 = sub_21A2F65E4();
  memcpy(v95, v96, sizeof(v95));
  v52 = swift_allocObject();
  *(v52 + 16) = (v26 & 1) == 0;
  *(v52 + 24) = v50;
  *(v52 + 32) = v51;
  v53 = sub_21A176C98(&qword_27CD02AE8);
  v54 = sub_21A176C98(&qword_27CD02658);
  v55 = sub_21A23F6A0();
  v56 = sub_21A176D98(&qword_27CCFF238);
  v57 = sub_21A2F5C84();
  v58 = sub_21A23F9F0(&qword_27CCFF220, MEMORY[0x277CDFCB0]);
  v93 = v57;
  v94 = v58;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v93 = v56;
  v94 = OpaqueTypeConformance2;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = v87;
  MEMORY[0x21CED5600](sub_21A23FE90, v52, v53, v54, v55, v60);
  sub_21A1427A8(v96, &qword_27CD02AE8);

  v62 = sub_21A2F6624();
  sub_21A23BE1C();
  sub_21A2F55A4();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v90;
  (*(v88 + 32))(v90, v61, v89);
  result = sub_21A176C98(&qword_27CD02B48);
  v73 = v71 + *(result + 36);
  *v73 = v62;
  *(v73 + 8) = v64;
  *(v73 + 16) = v66;
  *(v73 + 24) = v68;
  *(v73 + 32) = v70;
  *(v73 + 40) = 0;
  return result;
}

double sub_21A23D15C@<D0>(uint64_t a1@<X8>)
{
  if (sub_21A239B54())
  {
    v2 = sub_21A2F5F34();
    sub_21A23D4C0(&v33);
    v15 = v37;
    v16 = v38;
    v17 = v39;
    v11 = v33;
    v12 = v34;
    v13 = v35;
    v14 = v36;
    v18 = v33;
    v19 = v34;
    v20 = v35;
    v21 = v36;
    v22 = v37;
    v23 = v38;
    v24 = v39;
    sub_21A183960(&v11, &v25, &qword_27CD02B50);
    sub_21A1427A8(&v18, &qword_27CD02B50);
    *&v10[55] = v14;
    *&v10[71] = v15;
    *&v10[87] = v16;
    *&v10[103] = v17;
    *&v10[7] = v11;
    *&v10[23] = v12;
    *&v10[39] = v13;
    v25 = v2;
    v26 = 0;
    v29 = *&v10[32];
    v28 = *&v10[16];
    v27 = *v10;
    *&v32[15] = *&v10[95];
    *v32 = *&v10[80];
    v31 = *&v10[64];
    v30 = *&v10[48];
    sub_21A23F9DC(&v25);
  }

  else
  {
    v3 = sub_21A2F6014();
    sub_21A23DA3C(&v33);
    v15 = v37;
    v16 = v38;
    v17 = v39;
    v11 = v33;
    v12 = v34;
    v13 = v35;
    v14 = v36;
    v18 = v33;
    v19 = v34;
    v20 = v35;
    v21 = v36;
    v22 = v37;
    v23 = v38;
    v24 = v39;
    sub_21A183960(&v11, &v25, &qword_27CD02B78);
    sub_21A1427A8(&v18, &qword_27CD02B78);
    *&v9[55] = v14;
    *&v9[71] = v15;
    *&v9[87] = v16;
    *&v9[103] = v17;
    *&v9[7] = v11;
    *&v9[23] = v12;
    *&v9[39] = v13;
    v25 = v3;
    v26 = 0;
    v29 = *&v9[32];
    v28 = *&v9[16];
    v27 = *v9;
    *&v32[15] = *&v9[95];
    *v32 = *&v9[80];
    v31 = *&v9[64];
    v30 = *&v9[48];
    sub_21A23F9E4(&v25);
  }

  sub_21A176C98(&qword_27CD02B58);
  sub_21A176C98(&qword_27CD02B60);
  sub_21A1772F8(&qword_27CD02B68, &qword_27CD02B58);
  sub_21A1772F8(&qword_27CD02B70, &qword_27CD02B60);
  sub_21A2F6114();
  v4 = v38;
  v5 = v40;
  *(a1 + 96) = v39;
  *(a1 + 112) = v5;
  *(a1 + 128) = v41;
  v6 = v34;
  v7 = v36;
  *(a1 + 32) = v35;
  *(a1 + 48) = v7;
  *(a1 + 64) = v37;
  *(a1 + 80) = v4;
  result = *&v33;
  *a1 = v33;
  *(a1 + 16) = v6;
  return result;
}

uint64_t sub_21A23D4C0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A2F6F04();
  sub_21A23D63C(v16);
  v3 = v16[0];
  v4 = v16[1];
  v5 = v16[2];
  v6 = v16[3];
  v7 = v16[4];
  sub_21A2F7344();
  sub_21A2F57C4();
  *&v15[6] = v17;
  *&v15[22] = v18;
  *&v15[38] = v19;
  *&v20 = v3;
  *(&v20 + 1) = v4;
  *&v21 = v5;
  *(&v21 + 1) = v6;
  *v22 = v7;
  *&v22[8] = 256;
  *&v22[56] = *(&v19 + 1);
  *&v22[42] = *&v15[32];
  v8 = *&v15[16];
  *&v22[26] = *&v15[16];
  v9 = *v15;
  *&v22[10] = *v15;
  *a1 = v2;
  v10 = v20;
  *(a1 + 24) = v21;
  *(a1 + 8) = v10;
  v11 = *&v22[32];
  *(a1 + 88) = *&v22[48];
  *(a1 + 72) = v11;
  v12 = *v22;
  *(a1 + 56) = *&v22[16];
  *(a1 + 40) = v12;
  v23[0] = v3;
  v23[1] = v4;
  v23[2] = v5;
  v23[3] = v6;
  v23[4] = v7;
  v24 = 256;
  *&v27[14] = *&v15[46];
  *v27 = *&v15[32];
  v26 = v8;
  v25 = v9;

  sub_21A183960(&v20, &v14, &qword_27CD02B80);
  sub_21A1427A8(v23, &qword_27CD02B80);
}

double sub_21A23D63C@<D0>(uint64_t a1@<X8>)
{
  sub_21A176C98(&qword_27CD02B88);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21A309690;
  sub_21A2F6F04();
  sub_21A2F6F44();

  *(v2 + 32) = sub_21A2F7274();
  *(v2 + 40) = v3;
  sub_21A2F6F04();
  sub_21A2F6F44();

  *(v2 + 48) = sub_21A2F7274();
  *(v2 + 56) = v4;
  sub_21A2F6F04();
  sub_21A2F6F44();

  *(v2 + 64) = sub_21A2F7274();
  *(v2 + 72) = v5;
  sub_21A2F6F04();
  sub_21A2F6F44();

  *(v2 + 80) = sub_21A2F7274();
  *(v2 + 88) = v6;
  sub_21A2F6F04();
  sub_21A2F6F44();

  *(v2 + 96) = sub_21A2F7274();
  *(v2 + 104) = v7;
  sub_21A2F6F04();
  sub_21A2F6F44();

  *(v2 + 112) = sub_21A2F7274();
  *(v2 + 120) = v8;
  sub_21A2F6F04();
  sub_21A2F6F44();

  *(v2 + 128) = sub_21A2F7274();
  *(v2 + 136) = v9;
  sub_21A2F6F04();
  sub_21A2F6F44();

  *(v2 + 144) = sub_21A2F7274();
  *(v2 + 152) = v10;
  sub_21A2F6F04();
  sub_21A2F6F44();

  *(v2 + 160) = sub_21A2F7274();
  *(v2 + 168) = v11;
  sub_21A2F6F04();
  sub_21A2F6F44();

  *(v2 + 176) = sub_21A2F7274();
  *(v2 + 184) = v12;
  sub_21A2F6F04();
  sub_21A2F6F44();

  *(v2 + 192) = sub_21A2F7274();
  *(v2 + 200) = v13;
  sub_21A2F6F04();
  sub_21A2F6F44();

  *(v2 + 208) = sub_21A2F7274();
  *(v2 + 216) = v14;
  sub_21A2F6F04();
  sub_21A2F6F44();

  *(v2 + 224) = sub_21A2F7274();
  *(v2 + 232) = v15;
  sub_21A2F6F04();
  sub_21A2F6F44();

  *(v2 + 240) = sub_21A2F7274();
  *(v2 + 248) = v16;
  sub_21A2F7284();
  if (sub_21A239B54())
  {
    sub_21A2F7474();
    sub_21A2F7464();
  }

  else
  {
    sub_21A2F7434();
    sub_21A2F7444();
  }

  sub_21A2F5954();
  result = *&v18;
  *a1 = v18;
  *(a1 + 16) = v19;
  *(a1 + 32) = v20;
  return result;
}

uint64_t sub_21A23DA3C@<X0>(uint64_t a1@<X8>)
{
  sub_21A23D63C(v14);
  v2 = v14[0];
  v3 = v14[1];
  v4 = v14[2];
  v5 = v14[3];
  v6 = v14[4];
  sub_21A2F7344();
  sub_21A2F57C4();
  *&v13[6] = v15;
  *&v13[22] = v16;
  *&v13[38] = v17;
  v7 = sub_21A2F6F04();
  *&v18 = v2;
  *(&v18 + 1) = v3;
  *&v19 = v4;
  *(&v19 + 1) = v5;
  *v20 = v6;
  *&v20[8] = 256;
  *&v20[10] = *v13;
  *&v20[56] = *&v13[46];
  *&v20[42] = *&v13[32];
  *&v20[26] = *&v13[16];
  v8 = v19;
  *a1 = v18;
  *(a1 + 16) = v8;
  v9 = *v20;
  v10 = *&v20[16];
  v11 = *&v20[48];
  *(a1 + 64) = *&v20[32];
  *(a1 + 80) = v11;
  *(a1 + 32) = v9;
  *(a1 + 48) = v10;
  *(a1 + 96) = v7;
  sub_21A183960(&v18, v21, &qword_27CD02B80);
  v21[0] = v2;
  v21[1] = v3;
  v21[2] = v4;
  v21[3] = v5;
  v21[4] = v6;
  v22 = 256;
  v23 = *v13;
  v24 = *&v13[16];
  *v25 = *&v13[32];
  *&v25[14] = *&v13[46];
  return sub_21A1427A8(v21, &qword_27CD02B80);
}

uint64_t sub_21A23DCE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  sub_21A2F7014();
  sub_21A183960(a1, a2, &qword_27CD02908);
  result = sub_21A176C98(&qword_27CD02930);
  v15 = a2 + *(result + 36);
  *v15 = v16;
  *(v15 + 8) = v17;
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  *(v15 + 40) = a6;
  *(v15 + 48) = a7;
  return result;
}

uint64_t sub_21A23DDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v61[0] = *v2;
  sub_21A176C98(&qword_27CCFF4D8);
  sub_21A2F7024();
  v6 = swift_allocObject();
  v7 = *(v3 + 16);
  *(v6 + 16) = *v3;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v3 + 32);
  *(v6 + 64) = *(v3 + 48);
  v8 = sub_21A176C98(&qword_27CD02BA8);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(sub_21A176C98(&qword_27CD02BB0) + 36));
  *v9 = sub_21A23E0BC;
  v9[1] = 0;
  v9[2] = sub_21A23FBD4;
  v9[3] = v6;
  sub_21A23FC2C(v3, v61);
  v10 = sub_21A2F7344();
  v12 = v11;
  sub_21A23E1DC(v3, &v32);
  *&v46 = v10;
  *(&v46 + 1) = v12;
  v59 = v44;
  v60[0] = v45[0];
  *(v60 + 9) = *(v45 + 9);
  v55 = v40;
  v56 = v41;
  v57 = v42;
  v58 = v43;
  v51 = v36;
  v52 = v37;
  v53 = v38;
  v54 = v39;
  v47 = v32;
  v48 = v33;
  v49 = v34;
  v50 = v35;
  v13 = (a2 + *(sub_21A176C98(&qword_27CD02BB8) + 36));
  v14 = v59;
  v13[12] = v58;
  v13[13] = v14;
  v13[14] = v60[0];
  *(v13 + 233) = *(v60 + 9);
  v15 = v55;
  v13[8] = v54;
  v13[9] = v15;
  v16 = v57;
  v13[10] = v56;
  v13[11] = v16;
  v17 = v51;
  v13[4] = v50;
  v13[5] = v17;
  v18 = v53;
  v13[6] = v52;
  v13[7] = v18;
  v19 = v47;
  *v13 = v46;
  v13[1] = v19;
  v20 = v49;
  v13[2] = v48;
  v13[3] = v20;
  *&v61[0] = v10;
  *(&v61[0] + 1) = v12;
  v61[13] = v44;
  v62[0] = v45[0];
  *(v62 + 9) = *(v45 + 9);
  v61[9] = v40;
  v61[10] = v41;
  v61[11] = v42;
  v61[12] = v43;
  v61[5] = v36;
  v61[6] = v37;
  v61[7] = v38;
  v61[8] = v39;
  v61[1] = v32;
  v61[2] = v33;
  v61[3] = v34;
  v61[4] = v35;
  sub_21A183960(&v46, &v31, &qword_27CD02BC0);
  sub_21A1427A8(v61, &qword_27CD02BC0);
  LOBYTE(v10) = sub_21A2F6624();
  sub_21A2F55A4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  result = sub_21A176C98(&qword_27CD02BC8);
  v30 = a2 + *(result + 36);
  *v30 = v10;
  *(v30 + 8) = v22;
  *(v30 + 16) = v24;
  *(v30 + 24) = v26;
  *(v30 + 32) = v28;
  *(v30 + 40) = 0;
  return result;
}

CGFloat sub_21A23E0BC@<D0>(double *a1@<X8>)
{
  v2 = sub_21A2F6144();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F6314();
  sub_21A2F5824();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  v17.origin.x = v8;
  v17.origin.y = v10;
  v17.size.width = v12;
  v17.size.height = v14;
  result = -CGRectGetMinY(v17);
  *a1 = result;
  return result;
}

uint64_t sub_21A23E1DC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21A2F6004();
  v34 = 0;
  sub_21A23E3F4(&v25);
  v39 = v29;
  v40 = v30;
  v41 = v31;
  v42 = v32;
  v35 = v25;
  v36 = v26;
  v37 = v27;
  v38 = v28;
  v43[0] = v25;
  v43[1] = v26;
  v43[2] = v27;
  v43[3] = v28;
  v43[4] = v29;
  v43[5] = v30;
  v43[6] = v31;
  v44 = v32;
  sub_21A183960(&v35, &v24, &qword_27CD02BD0);
  sub_21A1427A8(v43, &qword_27CD02BD0);
  *(&v33[4] + 7) = v39;
  *(&v33[5] + 7) = v40;
  *(&v33[6] + 7) = v41;
  *(v33 + 7) = v35;
  *(&v33[1] + 7) = v36;
  *(&v33[2] + 7) = v37;
  *(&v33[7] + 7) = v42;
  *(&v33[3] + 7) = v38;
  v5 = v34;
  v6 = sub_21A2F6614();
  v25 = *a1;
  sub_21A176C98(&qword_27CCFF4D8);
  sub_21A2F7024();
  sub_21A2F55A4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  LOBYTE(v24) = 0;
  v15 = sub_21A2F6624();
  result = sub_21A2F55A4();
  v17 = v33[5];
  *(a2 + 81) = v33[4];
  *(a2 + 97) = v17;
  *(a2 + 113) = v33[6];
  *(a2 + 128) = *(&v33[6] + 15);
  v18 = v33[1];
  *(a2 + 17) = v33[0];
  *(a2 + 33) = v18;
  v19 = v33[3];
  *(a2 + 49) = v33[2];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 65) = v19;
  *(a2 + 144) = v6;
  *(a2 + 152) = v8;
  *(a2 + 160) = v10;
  *(a2 + 168) = v12;
  *(a2 + 176) = v14;
  *(a2 + 184) = 0;
  *(a2 + 192) = v15;
  *(a2 + 200) = v20;
  *(a2 + 208) = v21;
  *(a2 + 216) = v22;
  *(a2 + 224) = v23;
  *(a2 + 232) = 0;
  return result;
}

double sub_21A23E3F4@<D0>(uint64_t a1@<X8>)
{
  v5 = sub_21A2F6F04();
  v2 = sub_21A2F6F04();
  sub_21A2F7344();
  sub_21A2F57C4();
  v3 = sub_21A2F6F14();
  sub_21A2F7344();
  sub_21A2F57C4();
  *a1 = v5;
  *(a1 + 8) = v2;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v3;
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  *(a1 + 88) = v14;
  *(a1 + 96) = v15;
  result = *&v16;
  *(a1 + 104) = v16;
  return result;
}

uint64_t sub_21A23E56C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A23F9F0(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  return sub_21A183960(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__heroImageAsset, a2, &qword_27CCFEDC0);
}

uint64_t sub_21A23E630(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - v4;
  sub_21A183960(a1, &v7 - v4, &qword_27CCFEDC0);
  return sub_21A28C950(v5);
}

unint64_t sub_21A23E6DC()
{
  result = qword_27CD02920;
  if (!qword_27CD02920)
  {
    sub_21A176D98(&qword_27CD028F0);
    sub_21A23E794();
    sub_21A1772F8(&qword_27CD02520, &qword_27CD02528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02920);
  }

  return result;
}

unint64_t sub_21A23E794()
{
  result = qword_27CD02928;
  if (!qword_27CD02928)
  {
    sub_21A176D98(&qword_27CD02900);
    sub_21A176D98(&qword_27CD028F8);
    sub_21A1772F8(&qword_27CD02918, &qword_27CD028F8);
    swift_getOpaqueTypeConformance2();
    sub_21A1772F8(&qword_27CCFF610, &qword_27CCFF618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02928);
  }

  return result;
}

unint64_t sub_21A23E900()
{
  result = qword_27CD02938;
  if (!qword_27CD02938)
  {
    sub_21A176D98(&qword_27CD02930);
    sub_21A23E98C();
    sub_21A23EA18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02938);
  }

  return result;
}

unint64_t sub_21A23E98C()
{
  result = qword_27CD02940;
  if (!qword_27CD02940)
  {
    sub_21A176D98(&qword_27CD02908);
    sub_21A23E6DC();
    sub_21A23E794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02940);
  }

  return result;
}

unint64_t sub_21A23EA18()
{
  result = qword_27CD02948;
  if (!qword_27CD02948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02948);
  }

  return result;
}

uint64_t sub_21A23EA6C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 176);
  v21[10] = *(a1 + 160);
  v21[11] = v6;
  v21[12] = *(a1 + 192);
  v22 = *(a1 + 208);
  v7 = *(a1 + 112);
  v21[6] = *(a1 + 96);
  v21[7] = v7;
  v8 = *(a1 + 144);
  v21[8] = *(a1 + 128);
  v21[9] = v8;
  v9 = *(a1 + 48);
  v21[2] = *(a1 + 32);
  v21[3] = v9;
  v10 = *(a1 + 80);
  v21[4] = *(a1 + 64);
  v21[5] = v10;
  v11 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v11;
  v12 = a3 + *(sub_21A176C98(&qword_27CD02A98) + 36);
  swift_getKeyPath();
  sub_21A23F9F0(&qword_27CD02B90, type metadata accessor for HorizontalParallaxOffset);
  sub_21A2F7754();
  *(v12 + *(type metadata accessor for HorizontalParallaxViewModifier() + 20)) = a2;
  v13 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v13;
  v14 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v14;
  v15 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v15;
  v16 = *(a1 + 144);
  *(a3 + 128) = *(a1 + 128);
  *(a3 + 144) = v16;
  v17 = *(a1 + 112);
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = v17;
  *(a3 + 208) = *(a1 + 208);
  v18 = *(a1 + 192);
  *(a3 + 176) = *(a1 + 176);
  *(a3 + 192) = v18;
  *(a3 + 160) = *(a1 + 160);
  return sub_21A183960(v21, v20, &qword_27CD02A90);
}

unint64_t sub_21A23EBCC()
{
  result = qword_27CD02978;
  if (!qword_27CD02978)
  {
    sub_21A176D98(&qword_27CD02968);
    sub_21A1772F8(&qword_27CD02980, &qword_27CD02988);
    sub_21A1772F8(&qword_27CD02990, &qword_27CD02998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02978);
  }

  return result;
}

unint64_t sub_21A23ECB0()
{
  result = qword_27CD029A0;
  if (!qword_27CD029A0)
  {
    sub_21A176D98(&qword_27CD02958);
    sub_21A1772F8(&qword_27CD029A8, &qword_27CD029B0);
    sub_21A1772F8(&qword_27CD02990, &qword_27CD02998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD029A0);
  }

  return result;
}

uint64_t sub_21A23ED94(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_21A1B5814(result, a2 & 1);
  }

  return result;
}

uint64_t sub_21A23EDAC(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_21A1478E8(result, a2 & 1);
  }

  return result;
}

unint64_t sub_21A23EDCC()
{
  result = qword_27CD02A18;
  if (!qword_27CD02A18)
  {
    sub_21A176D98(&qword_27CD029E0);
    sub_21A23EE84();
    sub_21A1772F8(&qword_27CD02A60, &qword_27CD02A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02A18);
  }

  return result;
}

unint64_t sub_21A23EE84()
{
  result = qword_27CD02A20;
  if (!qword_27CD02A20)
  {
    sub_21A176D98(&qword_27CD029D8);
    sub_21A23EF40();
    sub_21A23F9F0(&qword_27CD02A58, type metadata accessor for RecipeCardHeroTiledImageModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02A20);
  }

  return result;
}

unint64_t sub_21A23EF40()
{
  result = qword_27CD02A28;
  if (!qword_27CD02A28)
  {
    sub_21A176D98(&qword_27CD029D0);
    sub_21A23EFF8();
    sub_21A1772F8(&qword_27CD02A48, &qword_27CD02A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02A28);
  }

  return result;
}

unint64_t sub_21A23EFF8()
{
  result = qword_27CD02A30;
  if (!qword_27CD02A30)
  {
    sub_21A176D98(&qword_27CD02A10);
    sub_21A23F0B0();
    sub_21A1772F8(&qword_27CCFF7B0, &qword_27CCFF7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02A30);
  }

  return result;
}

unint64_t sub_21A23F0B0()
{
  result = qword_27CD02A38;
  if (!qword_27CD02A38)
  {
    sub_21A176D98(&qword_27CD02A00);
    sub_21A1772F8(&qword_27CCFF758, &qword_27CCFF760);
    sub_21A1772F8(&qword_27CD02A40, &qword_27CD02A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02A38);
  }

  return result;
}

unint64_t sub_21A23F1EC()
{
  result = qword_27CD02A78;
  if (!qword_27CD02A78)
  {
    sub_21A176D98(&qword_27CD029F0);
    sub_21A176D98(&qword_27CD029E8);
    sub_21A176D98(&qword_27CD02A70);
    sub_21A176D98(&qword_27CD029E0);
    sub_21A176D98(&qword_27CD02658);
    sub_21A23EDCC();
    sub_21A176D98(&qword_27CCFF238);
    sub_21A2F5C84();
    sub_21A23F9F0(&qword_27CCFF220, MEMORY[0x277CDFCB0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21A176D98(&qword_27CCFF218);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21A1772F8(&qword_27CD02A80, &qword_27CD02A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02A78);
  }

  return result;
}

unint64_t sub_21A23F470()
{
  result = qword_27CD02AA0;
  if (!qword_27CD02AA0)
  {
    sub_21A176D98(&qword_27CD02A90);
    sub_21A23F4FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02AA0);
  }

  return result;
}

unint64_t sub_21A23F4FC()
{
  result = qword_27CD02AA8;
  if (!qword_27CD02AA8)
  {
    sub_21A176D98(&qword_27CD02AB0);
    sub_21A23F588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02AA8);
  }

  return result;
}

unint64_t sub_21A23F588()
{
  result = qword_27CD02AB8;
  if (!qword_27CD02AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02AB8);
  }

  return result;
}

unint64_t sub_21A23F5DC()
{
  result = qword_27CD02AC0;
  if (!qword_27CD02AC0)
  {
    sub_21A176D98(&qword_27CD02A98);
    sub_21A23F470();
    sub_21A23F9F0(&qword_27CD025A0, type metadata accessor for HorizontalParallaxViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02AC0);
  }

  return result;
}

unint64_t sub_21A23F6A0()
{
  result = qword_27CD02AF0;
  if (!qword_27CD02AF0)
  {
    sub_21A176D98(&qword_27CD02AE8);
    sub_21A23F72C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02AF0);
  }

  return result;
}

unint64_t sub_21A23F72C()
{
  result = qword_27CD02AF8;
  if (!qword_27CD02AF8)
  {
    sub_21A176D98(&qword_27CD02B00);
    sub_21A23F7B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02AF8);
  }

  return result;
}

unint64_t sub_21A23F7B8()
{
  result = qword_27CD02B08;
  if (!qword_27CD02B08)
  {
    sub_21A176D98(&qword_27CD02B10);
    sub_21A23F844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02B08);
  }

  return result;
}

unint64_t sub_21A23F844()
{
  result = qword_27CD02B18;
  if (!qword_27CD02B18)
  {
    sub_21A176D98(&qword_27CD02B20);
    sub_21A23F8D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02B18);
  }

  return result;
}

unint64_t sub_21A23F8D0()
{
  result = qword_27CD02B28;
  if (!qword_27CD02B28)
  {
    sub_21A176D98(&qword_27CD02B30);
    sub_21A23F988();
    sub_21A1772F8(&qword_27CD02B40, &qword_27CD02AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02B28);
  }

  return result;
}

unint64_t sub_21A23F988()
{
  result = qword_27CD02B38;
  if (!qword_27CD02B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02B38);
  }

  return result;
}

uint64_t sub_21A23F9F0(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_21A23FA38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21A23FA54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_21A23FAB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_21A23FB20()
{
  result = qword_27CD02B98;
  if (!qword_27CD02B98)
  {
    sub_21A176D98(&qword_27CD02BA0);
    sub_21A23E900();
    sub_21A23E98C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02B98);
  }

  return result;
}

unint64_t sub_21A23FC64()
{
  result = qword_27CD02BD8;
  if (!qword_27CD02BD8)
  {
    sub_21A176D98(&qword_27CD02BC8);
    sub_21A23FCF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02BD8);
  }

  return result;
}

unint64_t sub_21A23FCF0()
{
  result = qword_27CD02BE0;
  if (!qword_27CD02BE0)
  {
    sub_21A176D98(&qword_27CD02BB8);
    sub_21A23FDA8();
    sub_21A1772F8(&qword_27CD02BF8, &qword_27CD02BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02BE0);
  }

  return result;
}

unint64_t sub_21A23FDA8()
{
  result = qword_27CD02BE8;
  if (!qword_27CD02BE8)
  {
    sub_21A176D98(&qword_27CD02BB0);
    sub_21A1772F8(&qword_27CD02BF0, &qword_27CD02BA8);
    sub_21A1772F8(&qword_27CCFF610, &qword_27CCFF618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02BE8);
  }

  return result;
}

uint64_t ImageAsset.Color.hashValue.getter()
{
  sub_21A2F8434();
  sub_21A2F7E84();
  return sub_21A2F8474();
}

uint64_t Decodable<>.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_21A142764(a1, a1[3]);
  sub_21A2F8484();
  if (!v2)
  {
    sub_21A142764(v10, v10[3]);
    sub_21A240344();
    sub_21A2F83A4();
    sub_21A141A6C(0, &qword_27CD02C08);
    sub_21A141A6C(0, &qword_2811B3BC0);
    v5 = sub_21A2F7E04();
    if (v5)
    {
      v6 = v5;
      sub_21A180748(v8, v9);
      *a2 = v6;
    }

    else
    {
      sub_21A240398();
      swift_allocError();
      swift_willThrow();
      sub_21A180748(v8, v9);
    }

    sub_21A142808(v10);
  }

  return sub_21A142808(a1);
}

uint64_t Encodable<>.encode(to:)(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  sub_21A142764(a1, a1[3]);
  sub_21A2F84A4();
  v10[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v10];
  v4 = v10[0];
  if (v3)
  {
    v5 = sub_21A2F4814();
    v7 = v6;

    v10[0] = v5;
    v10[1] = v7;
    sub_21A143D8C(v11, v12);
    sub_21A2403EC();
    sub_21A2F83B4();
    sub_21A180748(v5, v7);
  }

  else
  {
    v8 = v4;
    sub_21A2F4654();

    swift_willThrow();
  }

  return sub_21A142808(v11);
}

uint64_t sub_21A24029C()
{
  sub_21A2F8434();
  sub_21A2F7E84();
  return sub_21A2F8474();
}

uint64_t sub_21A240304()
{
  sub_21A2F8434();
  sub_21A2F7E84();
  return sub_21A2F8474();
}

unint64_t sub_21A240344()
{
  result = qword_27CD02C00;
  if (!qword_27CD02C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02C00);
  }

  return result;
}

unint64_t sub_21A240398()
{
  result = qword_27CD02C10;
  if (!qword_27CD02C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02C10);
  }

  return result;
}

unint64_t sub_21A2403EC()
{
  result = qword_27CD02C18;
  if (!qword_27CD02C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02C18);
  }

  return result;
}

unint64_t sub_21A240444()
{
  result = qword_27CD02C20;
  if (!qword_27CD02C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02C20);
  }

  return result;
}

unint64_t sub_21A2404BC()
{
  result = qword_27CD02C28;
  if (!qword_27CD02C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02C28);
  }

  return result;
}

uint64_t sub_21A240510@<X0>(void *a1@<X8>)
{
  sub_21A240838();
  result = sub_21A2F5EE4();
  *a1 = v3;
  return result;
}

uint64_t sub_21A240560()
{
  sub_21A240838();

  return sub_21A2F5EF4();
}

uint64_t type metadata accessor for SetupScrollToTopTriggerModifier()
{
  result = qword_27CD02C38;
  if (!qword_27CD02C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A240658()
{
  sub_21A2406C4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21A2406C4()
{
  if (!qword_27CD02C48)
  {
    type metadata accessor for ScrollToTopTrigger();
    v0 = sub_21A2F73E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD02C48);
    }
  }
}

uint64_t sub_21A240734@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ScrollToTopTrigger();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_21A24076C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_21A176C98(&qword_27CD02C30);
  sub_21A2F73D4();
  v5 = sub_21A176C98(&qword_27CD02C50);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = sub_21A176C98(&qword_27CD02C58);
  v7 = (a2 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = v8;
  return result;
}

unint64_t sub_21A240838()
{
  result = qword_27CD02C60;
  if (!qword_27CD02C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02C60);
  }

  return result;
}

unint64_t sub_21A24088C()
{
  result = qword_27CD02C68;
  if (!qword_27CD02C68)
  {
    sub_21A176D98(&qword_27CD02C58);
    sub_21A1772F8(&qword_27CD02C70, &qword_27CD02C50);
    sub_21A1772F8(&qword_27CD02C78, &qword_27CD02C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02C68);
  }

  return result;
}

unint64_t sub_21A240970(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_21A2F7A94();
  }

  __break(1u);
  return result;
}

uint64_t sub_21A2409BC()
{
  result = sub_21A199214(&unk_282B2C8A0);
  qword_27CD02C88 = result;
  return result;
}

uint64_t sub_21A2409E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_21A240A04, 0, 0);
}

uint64_t sub_21A240A04()
{
  v34 = v0;
  v1 = v0[3];
  v2 = type metadata accessor for Recipe();
  v3 = v2;
  v4 = *(v1 + *(v2 + 68));
  v5 = *(v4 + 16);
  if (v5)
  {
    v25 = v2;
    v26 = v0;
    v6 = (v4 + 72);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v8 = *(v6 - 4);
      v9 = *(v6 - 3);
      v10 = *(v6 - 2);
      v12 = *(v6 - 1);
      v11 = *v6;
      v28 = *(v6 - 5);
      v29 = v8;
      v30 = v9;
      v31 = v10;
      v32 = v12;
      v33 = v11;
      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A241508(&v28);
      v13 = v28;
      v14 = v29;
      v15 = v30;
      v27 = v31;
      v17 = v32;
      v16 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21A1B7340(0, *(v7 + 2) + 1, 1, v7);
      }

      v19 = *(v7 + 2);
      v18 = *(v7 + 3);
      if (v19 >= v18 >> 1)
      {
        v7 = sub_21A1B7340((v18 > 1), v19 + 1, 1, v7);
      }

      v6 += 6;
      *(v7 + 2) = v19 + 1;
      v20 = &v7[48 * v19];
      *(v20 + 4) = v13;
      *(v20 + 5) = v14;
      *(v20 + 6) = v15;
      *(v20 + 7) = v27;
      *(v20 + 8) = v17;
      *(v20 + 9) = v16;
      --v5;
    }

    while (v5);
    v3 = v25;
    v0 = v26;
    v1 = v26[3];
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v21 = v0[2];
  sub_21A1944B0(v1, v21);
  v22 = *(v3 + 68);

  *(v21 + v22) = v7;
  v23 = v0[1];

  return v23();
}

uint64_t sub_21A240BB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if ((sub_21A2F7824() & 1) != 0 || (v3 == 40 ? (v5 = v4 == 0xE100000000000000) : (v5 = 0), v5))
  {
    result = 1;
  }

  else
  {
    result = sub_21A2F8394();
  }

  *a2 = result & 1;
  return result;
}

uint64_t sub_21A240C28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A2F7814();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21A240C5C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A145E2C;

  return sub_21A2409E4(a1, a2);
}

BOOL sub_21A240CFC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_21A2F7FE4();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_21A240DF4(uint64_t a1, void (*a2)(void *__return_ptr, unint64_t *))
{
  v86 = sub_21A2F4524();
  v88 = *(v86 - 8);
  MEMORY[0x28223BE20](v86, v4);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v77 - v9;
  MEMORY[0x28223BE20](v11, v12);
  v87 = &v77 - v13;
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v84 = a1;
  v16 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v16 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    goto LABEL_32;
  }

  v17 = 4 * v16;
  v18 = 15;
  while (1)
  {
    v92 = sub_21A2F7A74();
    v93 = v19;
    a2(v91, &v92);

    if (v91[0])
    {
      break;
    }

    v18 = sub_21A2F79C4();
    if (v17 == v18 >> 14)
    {
      goto LABEL_32;
    }
  }

  v20 = sub_21A2F7A94();
  v83 = v21;
  v92 = v20;
  v93 = v22;
  v94 = v23;
  v95 = v21;
  sub_21A2F4504();
  sub_21A2F44F4();
  v24 = v87;
  sub_21A2F4514();
  v25 = v88 + 8;
  v26 = *(v88 + 8);
  v27 = v6;
  v28 = v86;
  v26(v27, v86);
  v26(v10, v28);
  v80 = sub_21A202660();
  v29 = sub_21A2F7EE4();
  v31 = v30;
  v88 = v25;
  v81 = v26;
  v26(v24, v28);

  v32 = sub_21A25FBC4(&unk_282B2C8F0);
  sub_21A176C98(&qword_27CD02C98);
  swift_arrayDestroy();
  v33 = sub_21A25FAC0(&unk_282B2CAF0);
  sub_21A176C98(&qword_27CD02CA0);
  v34 = v29;
  swift_arrayDestroy();
  v35 = *(v33 + 16);
  v83 = v32;
  if (!v35 || (sub_21A25A4C4(v29, v31), (v36 & 1) == 0))
  {
    if (*(v32 + 16))
    {
      v37 = sub_21A25A4C4(v29, v31);
      if (v38)
      {
        v39 = v37;

        v40 = (*(v32 + 56) + 16 * v39);
        v34 = *v40;
        v31 = v40[1];
        sub_21A2F5434();
      }

      v28 = v86;
    }
  }

  if (!*(v33 + 16) || (v41 = sub_21A25A4C4(v34, v31), (v42 & 1) == 0))
  {

    v92 = 0;
    if (sub_21A240CFC(v34, v31))
    {
      v44 = v92;
      v45 = sub_21A1CC910(*&v92, 0.001);
      if ((v47 & 1) == 0)
      {
        v48 = v45;
        if (qword_27CCFE830 != -1)
        {
          goto LABEL_38;
        }

        while (1)
        {
          v49 = v46;
          if (!sub_21A2D64B4(v46, qword_27CD02C88))
          {
            break;
          }

          v82 = sub_21A1CC7A0(v48, v49);
          v85 = v46;
          v28 = 0;
          v50 = *(v83 + 64);
          v78 = v83 + 64;
          v51 = 1 << *(v83 + 32);
          v52 = -1;
          if (v51 < 64)
          {
            v52 = ~(-1 << v51);
          }

          v31 = v52 & v50;
          v53 = (v51 + 63) >> 6;
          for (i = v53; v31; v53 = i)
          {
            v54 = v28;
LABEL_29:
            v55 = __clz(__rbit64(v31));
            v31 &= v31 - 1;
            v56 = (v54 << 10) | (16 * v55);
            v57 = (*(v83 + 48) + v56);
            v58 = *v57;
            v34 = v57[1];
            v59 = (*(v83 + 56) + v56);
            v60 = *v59;
            v61 = v59[1];
            v92 = v82;
            v93 = v85;
            v91[0] = v58;
            v91[1] = v34;
            v89 = v60;
            v90 = v61;
            sub_21A1834FC();
            sub_21A2F5434();
            sub_21A2F5434();
            v82 = sub_21A2F7F04();
            v48 = v62;

            v85 = v48;
          }

          while (1)
          {
            v54 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v54 >= v53)
            {

              v28 = v86;
              goto LABEL_35;
            }

            v31 = *(v78 + 8 * v54);
            ++v28;
            if (v31)
            {
              v28 = v54;
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_38:
          v75 = v34;
          v76 = v46;
          swift_once();
          v46 = v76;
          v34 = v75;
        }
      }

      v82 = v34;
      v85 = v31;
      goto LABEL_34;
    }

LABEL_32:
    sub_21A241654();
    swift_allocError();
    return swift_willThrow();
  }

  v43 = v41;
  v82 = v34;
  v85 = v31;

  v44 = *(*(v33 + 56) + 8 * v43);
LABEL_34:

LABEL_35:
  v92 = sub_21A240970(v18, v15, v14);
  v93 = v64;
  v94 = v65;
  v95 = v66;
  v67 = v87;
  sub_21A2F4504();
  v68 = sub_21A2F7EE4();
  v70 = v69;
  v81(v67, v28);

  v92 = v82;
  v93 = v85;
  sub_21A2F5434();
  MEMORY[0x21CED6480](32, 0xE100000000000000);
  sub_21A2F5434();
  MEMORY[0x21CED6480](v68, v70);

  v71 = v93;
  v72 = v84;
  *(v84 + 16) = v92;
  *(v72 + 24) = v71;
  sub_21A176C98(&qword_27CD02CB0);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_21A2FC020;
  v74 = sub_21A2F79B4();

  *(v73 + 32) = 0;
  *(v73 + 40) = v74;
  *(v73 + 48) = v44;
  *(v73 + 56) = xmmword_21A300510;
  *(v73 + 72) = 0;
  *(v73 + 80) = 0;
  *(v73 + 88) = 0;

  *(v72 + 32) = v73;
  return result;
}

uint64_t sub_21A241508(uint64_t a1)
{
  v2 = off_282B2CC98;
  swift_retain_n();
  sub_21A240DF4(a1, v2);

  sub_21A176C98(&qword_27CD02C90);
  swift_arrayDestroy();
}

unint64_t sub_21A241654()
{
  result = qword_27CD02CA8;
  if (!qword_27CD02CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02CA8);
  }

  return result;
}

_BYTE *sub_21A2416A8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_21A241738(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
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

uint64_t sub_21A241780(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_21A2417F0@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = sub_21A176C98(&qword_27CD02CB8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v35 - v8;
  v10 = sub_21A2F5F44();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21A176C98(&qword_27CD02CC0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v35 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2 & 1;
  *(v19 + 25) = (a2 & 0x100) >> 8;
  (*(v11 + 104))(v14, *MEMORY[0x277CE00F0], v10);
  sub_21A1B5814(a1, a2 & 1);
  sub_21A2F6FB4();
  sub_21A2F6B54();

  sub_21A176C98(&qword_27CD02B88);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21A2FEED0;
  sub_21A2F6F04();
  sub_21A2F6F44();

  *(v20 + 32) = sub_21A2F7274();
  *(v20 + 40) = v21;
  sub_21A2F6F04();
  sub_21A2F6F44();

  *(v20 + 48) = sub_21A2F7274();
  *(v20 + 56) = v22;
  v23 = sub_21A2F7284();
  v24 = *(v6 + 44);
  v25 = *MEMORY[0x277CE13B0];
  v26 = sub_21A2F73B4();
  (*(*(v26 - 8) + 104))(&v9[v24], v25, v26);
  *v9 = v23;
  *(v9 + 4) = 256;
  v27 = sub_21A2F7344();
  v29 = v28;
  v30 = sub_21A176C98(&qword_27CD02CC8);
  v31 = v36;
  v32 = v36 + *(v30 + 36);
  sub_21A241F08(v9, v32);
  v33 = (v32 + *(sub_21A176C98(&qword_27CD02CD0) + 36));
  *v33 = v27;
  v33[1] = v29;
  return sub_21A16434C(v18, v31);
}

uint64_t sub_21A241BB0(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = sub_21A2F5ED4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21A2F5AC4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  sub_21A2F6804();
  sub_21A241F78();
  if ((a3 & 1) == 0)
  {

    sub_21A2F7DE4();
    v21 = v6;
    v16 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1478E8(a2, 0);
    v22 = v11;
    v17 = *(v7 + 8);
    v17(v10, v6);

    sub_21A2F7DE4();
    v18 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1478E8(a2, 0);
    v17(v10, v21);
    v11 = v22;
  }

  sub_21A2F5A94();

  sub_21A2F5A84();
  sub_21A1CC700(v24);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_21A241EB8@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_21A2417F0(*v1, v2 | *(v1 + 8), a1);
}

uint64_t sub_21A241F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD02CB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A241F78()
{
  sub_21A176C98(&qword_27CD02B88);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21A309F80;
  sub_21A2F6F04();
  sub_21A2F6F44();

  *(v0 + 32) = sub_21A2F7274();
  *(v0 + 40) = v1;
  sub_21A2F6F04();
  sub_21A2F6F44();

  *(v0 + 48) = sub_21A2F7274();
  *(v0 + 56) = v2;
  sub_21A2F6F04();
  sub_21A2F6F44();

  *(v0 + 64) = sub_21A2F7274();
  *(v0 + 72) = v3;

  return sub_21A2F7284();
}

unint64_t sub_21A24207C()
{
  result = qword_27CD02CD8;
  if (!qword_27CD02CD8)
  {
    sub_21A176D98(&qword_27CD02CC8);
    sub_21A242134();
    sub_21A1772F8(&qword_27CD02D00, &qword_27CD02CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02CD8);
  }

  return result;
}

unint64_t sub_21A242134()
{
  result = qword_27CD02CE0;
  if (!qword_27CD02CE0)
  {
    sub_21A176D98(&qword_27CD02CC0);
    sub_21A2421EC();
    sub_21A1772F8(&qword_27CD02CF0, &qword_27CD02CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02CE0);
  }

  return result;
}

unint64_t sub_21A2421EC()
{
  result = qword_27CD02CE8;
  if (!qword_27CD02CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02CE8);
  }

  return result;
}

uint64_t sub_21A242254(uint64_t a1)
{
  v2 = sub_21A2428CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A242290(uint64_t a1)
{
  v2 = sub_21A2428CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A2422CC()
{
  v1 = 0x737569736C6563;
  if (*v0 != 1)
  {
    v1 = 0x65686E6572686166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69766C656BLL;
  }
}

uint64_t sub_21A242328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A243348(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A242350(uint64_t a1)
{
  v2 = sub_21A242824();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A24238C(uint64_t a1)
{
  v2 = sub_21A242824();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A2423C8(uint64_t a1)
{
  v2 = sub_21A242878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A242404(uint64_t a1)
{
  v2 = sub_21A242878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A242440(uint64_t a1)
{
  v2 = sub_21A242920();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A24247C(uint64_t a1)
{
  v2 = sub_21A242920();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TemperatureUnit.encode(to:)(void *a1)
{
  v3 = sub_21A176C98(&qword_27CD02D08);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v28 = &v22 - v5;
  v6 = sub_21A176C98(&qword_27CD02D10);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v25 = &v22 - v8;
  v9 = sub_21A176C98(&qword_27CD02D18);
  v23 = *(v9 - 8);
  v24 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v22 - v11;
  v13 = sub_21A176C98(&qword_27CD02D20);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v22 - v16;
  v18 = *v1;
  sub_21A142764(a1, a1[3]);
  sub_21A242824();
  sub_21A2F84B4();
  if (v18)
  {
    if (v18 == 1)
    {
      v32 = 1;
      sub_21A2428CC();
      v12 = v25;
      sub_21A2F82A4();
      v20 = v26;
      v19 = v27;
    }

    else
    {
      v33 = 2;
      sub_21A242878();
      v12 = v28;
      sub_21A2F82A4();
      v20 = v29;
      v19 = v30;
    }
  }

  else
  {
    v31 = 0;
    sub_21A242920();
    sub_21A2F82A4();
    v20 = v23;
    v19 = v24;
  }

  (*(v20 + 8))(v12, v19);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_21A242824()
{
  result = qword_27CD02D28;
  if (!qword_27CD02D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02D28);
  }

  return result;
}

unint64_t sub_21A242878()
{
  result = qword_27CD02D30;
  if (!qword_27CD02D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02D30);
  }

  return result;
}

unint64_t sub_21A2428CC()
{
  result = qword_27CD02D38;
  if (!qword_27CD02D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02D38);
  }

  return result;
}

unint64_t sub_21A242920()
{
  result = qword_27CD02D40;
  if (!qword_27CD02D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02D40);
  }

  return result;
}

uint64_t TemperatureUnit.hashValue.getter()
{
  v1 = *v0;
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](v1);
  return sub_21A2F8474();
}

uint64_t TemperatureUnit.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = sub_21A176C98(&qword_27CD02D48);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v38 = &v32 - v5;
  v37 = sub_21A176C98(&qword_27CD02D50);
  v34 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v6);
  v8 = &v32 - v7;
  v9 = sub_21A176C98(&qword_27CD02D58);
  v33 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v32 - v11;
  v13 = sub_21A176C98(&qword_27CD02D60);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v32 - v16;
  v18 = a1[3];
  v41 = a1;
  sub_21A142764(a1, v18);
  sub_21A242824();
  v19 = v40;
  sub_21A2F8494();
  if (!v19)
  {
    v32 = v9;
    v40 = v14;
    v21 = v38;
    v20 = v39;
    v22 = sub_21A2F8294();
    v23 = (2 * *(v22 + 16)) | 1;
    v42 = v22;
    v43 = v22 + 32;
    v44 = 0;
    v45 = v23;
    v24 = sub_21A207C94();
    if (v24 == 3 || v44 != v45 >> 1)
    {
      v26 = sub_21A2F8064();
      swift_allocError();
      v28 = v27;
      sub_21A176C98(&qword_27CD012F0);
      *v28 = &type metadata for TemperatureUnit;
      sub_21A2F8204();
      sub_21A2F8054();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
      (*(v40 + 8))(v17, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v46 = v24;
      if (v24)
      {
        if (v24 == 1)
        {
          v47 = 1;
          sub_21A2428CC();
          sub_21A2F81F4();
          v25 = v40;
          (*(v34 + 8))(v8, v37);
          (*(v25 + 8))(v17, v13);
        }

        else
        {
          v47 = 2;
          sub_21A242878();
          v30 = v21;
          sub_21A2F81F4();
          v31 = v40;
          (*(v35 + 8))(v30, v36);
          (*(v31 + 8))(v17, v13);
        }
      }

      else
      {
        v47 = 0;
        sub_21A242920();
        sub_21A2F81F4();
        (*(v33 + 8))(v12, v32);
        (*(v40 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v20 = v46;
    }
  }

  return sub_21A142808(v41);
}

unint64_t sub_21A242F5C()
{
  result = qword_27CD02D68;
  if (!qword_27CD02D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02D68);
  }

  return result;
}

unint64_t sub_21A243034()
{
  result = qword_27CD02D70;
  if (!qword_27CD02D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02D70);
  }

  return result;
}

unint64_t sub_21A24308C()
{
  result = qword_27CD02D78;
  if (!qword_27CD02D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02D78);
  }

  return result;
}

unint64_t sub_21A2430E4()
{
  result = qword_27CD02D80;
  if (!qword_27CD02D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02D80);
  }

  return result;
}

unint64_t sub_21A24313C()
{
  result = qword_27CD02D88;
  if (!qword_27CD02D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02D88);
  }

  return result;
}

unint64_t sub_21A243194()
{
  result = qword_27CD02D90;
  if (!qword_27CD02D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02D90);
  }

  return result;
}

unint64_t sub_21A2431EC()
{
  result = qword_27CD02D98;
  if (!qword_27CD02D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02D98);
  }

  return result;
}

unint64_t sub_21A243244()
{
  result = qword_27CD02DA0;
  if (!qword_27CD02DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02DA0);
  }

  return result;
}

unint64_t sub_21A24329C()
{
  result = qword_27CD02DA8;
  if (!qword_27CD02DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02DA8);
  }

  return result;
}

unint64_t sub_21A2432F4()
{
  result = qword_27CD02DB0;
  if (!qword_27CD02DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02DB0);
  }

  return result;
}

uint64_t sub_21A243348(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69766C656BLL && a2 == 0xE600000000000000;
  if (v4 || (sub_21A2F8394() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737569736C6563 && a2 == 0xE700000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65686E6572686166 && a2 == 0xEA00000000007469)
  {

    return 2;
  }

  else
  {
    v6 = sub_21A2F8394();

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

uint64_t sub_21A24346C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v82 = sub_21A2F4C24();
  v4 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v5);
  v81 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_21A2F4DA4();
  v83 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v7);
  v79 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v78 = &v66 - v11;
  v12 = sub_21A2F4F54();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v66 - v19;
  v21 = sub_21A2F4C54();
  v23 = v22;
  v24 = sub_21A2F4C64();
  v73 = v25;
  v26 = sub_21A2F4C44();
  if (v26)
  {
    v77 = v4;
    v27 = *(v26 + 16);
    if (v27)
    {
      v67 = v24;
      v68 = v23;
      v69 = v21;
      v70 = a1;
      v71 = a2;
      v28 = v26;
      v91 = MEMORY[0x277D84F90];
      sub_21A25D854(0, v27, 0);
      v29 = v91;
      v30 = v13 + 16;
      v31 = *(v13 + 16);
      v32 = (*(v30 + 64) + 32) & ~*(v30 + 64);
      v76 = v28;
      v33 = v28 + v32;
      v84 = *(v30 + 56);
      v85 = v30;
      v34 = (v30 - 8);
      for (i = v27 - 1; ; --i)
      {
        v31(v20, v33, v12);
        v31(v16, v20, v12);
        sub_21A266200(v16, v86);
        (*v34)(v20, v12);
        *&v90[9] = *&v87[9];
        v89 = v86[1];
        *v90 = *v87;
        v88 = v86[0];
        v91 = v29;
        v37 = *(v29 + 16);
        v36 = *(v29 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_21A25D854((v36 > 1), v37 + 1, 1);
          v29 = v91;
        }

        *(v29 + 16) = v37 + 1;
        v38 = (v29 + (v37 << 6));
        v39 = v88;
        v40 = v89;
        v41 = *v90;
        *(v38 + 73) = *&v90[9];
        v38[3] = v40;
        v38[4] = v41;
        v38[2] = v39;
        if (!i)
        {
          break;
        }

        v33 += v84;
      }

      v72 = v29;

      a2 = v71;
      a1 = v70;
      v21 = v69;
      v23 = v68;
      v24 = v67;
    }

    else
    {

      v72 = MEMORY[0x277D84F90];
    }

    v4 = v77;
    v42 = sub_21A2F4C34();
    if (v42)
    {
      goto LABEL_13;
    }

LABEL_10:
    v43 = sub_21A2F4C74();
    result = (*(*(v43 - 8) + 8))(a1, v43);
    v45 = 0;
    goto LABEL_20;
  }

  v72 = 0;
  v42 = sub_21A2F4C34();
  if (!v42)
  {
    goto LABEL_10;
  }

LABEL_13:
  v46 = *(v42 + 16);
  if (v46)
  {
    v67 = v24;
    v68 = v23;
    v69 = v21;
    v70 = a1;
    v71 = a2;
    *&v88 = MEMORY[0x277D84F90];
    v47 = v42;
    sub_21A25D834(0, v46, 0);
    v45 = v88;
    v77 = *(v83 + 16);
    v48 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v66 = v47;
    v49 = v47 + v48;
    v76 = *(v83 + 72);
    v75 = (v4 + 8);
    v83 += 16;
    v74 = (v83 - 8);
    v50 = v78;
    do
    {
      v51 = v80;
      v52 = v77;
      (v77)(v50, v49, v80);
      v53 = v79;
      (v52)(v79, v50, v51);
      v54 = v81;
      sub_21A2F4D94();
      v85 = sub_21A2F4C04();
      v84 = sub_21A2F4C14();
      (*v75)(v54, v82);
      v55 = sub_21A2F4D84();
      v57 = v56;
      v58 = *v74;
      (*v74)(v53, v51);
      v58(v50, v51);
      *&v88 = v45;
      v60 = *(v45 + 16);
      v59 = *(v45 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_21A25D834((v59 > 1), v60 + 1, 1);
        v45 = v88;
      }

      *(v45 + 16) = v60 + 1;
      v61 = (v45 + 32 * v60);
      v61[4] = v55;
      v61[5] = v57;
      v62 = v84;
      v61[6] = v85;
      v61[7] = v62;
      v49 += v76;
      --v46;
    }

    while (v46);
    v63 = sub_21A2F4C74();
    (*(*(v63 - 8) + 8))(v70, v63);

    a2 = v71;
    v21 = v69;
    v23 = v68;
    v24 = v67;
  }

  else
  {

    v64 = sub_21A2F4C74();
    result = (*(*(v64 - 8) + 8))(a1, v64);
    v45 = MEMORY[0x277D84F90];
  }

LABEL_20:
  *a2 = v21;
  a2[1] = v23;
  v65 = v73;
  a2[2] = v24;
  a2[3] = v65;
  a2[4] = v72;
  a2[5] = v45;
  return result;
}

uint64_t Ingredient.id.getter()
{
  v1 = *v0;
  sub_21A2F5434();
  return v1;
}

uint64_t Ingredient.text.getter()
{
  v1 = *(v0 + 16);
  sub_21A2F5434();
  return v1;
}

unint64_t sub_21A243BE0()
{
  v1 = 25705;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x72676E4974786574;
  }

  if (*v0)
  {
    v1 = 1954047348;
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

uint64_t sub_21A243C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A2446A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A243C80(uint64_t a1)
{
  v2 = sub_21A2444A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A243CBC(uint64_t a1)
{
  v2 = sub_21A2444A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Ingredient.encode(to:)(void *a1)
{
  v3 = sub_21A176C98(&qword_27CD02DB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14 - v6;
  v8 = v1[2];
  v16 = v1[3];
  v17 = v8;
  v9 = v1[4];
  v14 = v1[5];
  v15 = v9;
  sub_21A142764(a1, a1[3]);
  sub_21A2444A0();
  sub_21A2F84B4();
  LOBYTE(v20) = 0;
  v10 = v18;
  sub_21A2F82E4();
  if (!v10)
  {
    v12 = v14;
    v13 = v15;
    LOBYTE(v20) = 1;
    sub_21A2F82E4();
    v20 = v13;
    v19 = 2;
    sub_21A176C98(&qword_27CD01440);
    sub_21A20A760(&qword_27CD01448, sub_21A20A574);
    sub_21A2F82D4();
    v20 = v12;
    v19 = 3;
    sub_21A176C98(&qword_27CD01458);
    sub_21A20A5C8(&qword_27CD01460, sub_21A20A640);
    sub_21A2F82D4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t Ingredient.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_21A176C98(&qword_27CD02DC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - v8;
  sub_21A142764(a1, a1[3]);
  sub_21A2444A0();
  sub_21A2F8494();
  if (v2)
  {
    return sub_21A142808(a1);
  }

  LOBYTE(v24) = 0;
  v10 = sub_21A2F8244();
  v22 = v11;
  LOBYTE(v24) = 1;
  v20 = sub_21A2F8244();
  v21 = v12;
  sub_21A176C98(&qword_27CD01440);
  v23 = 2;
  sub_21A20A760(&qword_27CD01488, sub_21A20A7D8);
  sub_21A2F8234();
  v19 = v24;
  sub_21A176C98(&qword_27CD01458);
  v23 = 3;
  sub_21A20A5C8(&qword_27CD01498, sub_21A20A82C);
  sub_21A2F8234();
  (*(v6 + 8))(v9, v5);
  v14 = v24;
  v16 = v21;
  v15 = v22;
  *a2 = v10;
  a2[1] = v15;
  v17 = v19;
  a2[2] = v20;
  a2[3] = v16;
  a2[4] = v17;
  a2[5] = v14;
  sub_21A2F5434();
  sub_21A2F5434();
  sub_21A2F5434();
  sub_21A2F5434();
  sub_21A142808(a1);
}

uint64_t _s10CookingKit10IngredientV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_21A2F8394() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_21A2F8394() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v9)
    {
      return 0;
    }

    sub_21A2F5434();
    v10 = sub_21A19B4E0(v3, v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      sub_21A2F5434();
      v11 = sub_21A19C1F8(v5, v8);

      if (v11)
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_21A2444A0()
{
  result = qword_27CD02DC0;
  if (!qword_27CD02DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02DC0);
  }

  return result;
}

uint64_t sub_21A2444F4(uint64_t a1, int a2)
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

uint64_t sub_21A24453C(uint64_t result, int a2, int a3)
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

unint64_t sub_21A24459C()
{
  result = qword_27CD02DD0;
  if (!qword_27CD02DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02DD0);
  }

  return result;
}

unint64_t sub_21A2445F4()
{
  result = qword_27CD02DD8;
  if (!qword_27CD02DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02DD8);
  }

  return result;
}

unint64_t sub_21A24464C()
{
  result = qword_27CD02DE0;
  if (!qword_27CD02DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02DE0);
  }

  return result;
}

uint64_t sub_21A2446A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_21A2F8394() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021A3193C0 == a2 || (sub_21A2F8394() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72676E4974786574 && a2 == 0xEF73746E65696465)
  {

    return 3;
  }

  else
  {
    v6 = sub_21A2F8394();

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

uint64_t ImageAsset.id.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LocalImageAsset(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WebImageAsset(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ExternalImageAsset(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for ImageAsset(0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A249340(v2, v19, type metadata accessor for ImageAsset);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21A244A58(v19, v11, type metadata accessor for WebImageAsset);
      v21 = sub_21A2F46A4();
      v23 = v22;
      v24 = v11;
      v25 = type metadata accessor for WebImageAsset;
    }

    else
    {
      sub_21A244A58(v19, v7, type metadata accessor for LocalImageAsset);
      v21 = sub_21A2F46A4();
      v23 = v26;
      v24 = v7;
      v25 = type metadata accessor for LocalImageAsset;
    }
  }

  else
  {
    sub_21A244A58(v19, v15, type metadata accessor for ExternalImageAsset);
    v21 = *v15;
    v23 = v15[1];
    sub_21A2F5434();
    v24 = v15;
    v25 = type metadata accessor for ExternalImageAsset;
  }

  result = sub_21A244AC0(v24, v25);
  *a1 = v21;
  a1[1] = v23;
  return result;
}

uint64_t sub_21A244A58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A244AC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_21A244B20()
{
  v1 = v0;
  v2 = type metadata accessor for LocalImageAsset(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebImageAsset(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ExternalImageAsset(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ImageAsset(0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A249340(v1, v17, type metadata accessor for ImageAsset);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21A244A58(v17, v9, type metadata accessor for WebImageAsset);
      v19 = *&v9[*(v6 + 20)];
      v20 = v19;
      v21 = v9;
      v22 = type metadata accessor for WebImageAsset;
    }

    else
    {
      sub_21A244A58(v17, v5, type metadata accessor for LocalImageAsset);
      v19 = *&v5[*(v2 + 20)];
      v24 = v19;
      v21 = v5;
      v22 = type metadata accessor for LocalImageAsset;
    }
  }

  else
  {
    sub_21A244A58(v17, v13, type metadata accessor for ExternalImageAsset);
    v19 = *&v13[*(v10 + 40)];
    v23 = v19;
    v21 = v13;
    v22 = type metadata accessor for ExternalImageAsset;
  }

  sub_21A244AC0(v21, v22);
  return v19;
}

uint64_t sub_21A244D84@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LocalImageAsset(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WebImageAsset(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ExternalImageAsset(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ImageAsset(0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A249340(v2, v19, type metadata accessor for ImageAsset);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21A244A58(v19, v11, type metadata accessor for WebImageAsset);
      v21 = sub_21A2F4794();
      (*(*(v21 - 8) + 16))(a1, v11, v21);
      v22 = v11;
      v23 = type metadata accessor for WebImageAsset;
    }

    else
    {
      sub_21A244A58(v19, v7, type metadata accessor for LocalImageAsset);
      v26 = sub_21A2F4794();
      (*(*(v26 - 8) + 16))(a1, v7, v26);
      v22 = v7;
      v23 = type metadata accessor for LocalImageAsset;
    }
  }

  else
  {
    sub_21A244A58(v19, v15, type metadata accessor for ExternalImageAsset);
    v24 = *(v12 + 20);
    v25 = sub_21A2F4794();
    (*(*(v25 - 8) + 16))(a1, &v15[v24], v25);
    v22 = v15;
    v23 = type metadata accessor for ExternalImageAsset;
  }

  sub_21A244AC0(v22, v23);
  type metadata accessor for ImageResource();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ImageAsset.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LocalImageAsset(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WebImageAsset(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ExternalImageAsset(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ImageAsset(0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A249340(v2, v19, type metadata accessor for ImageAsset);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21A244A58(v19, v11, type metadata accessor for WebImageAsset);
      v21 = sub_21A2F4794();
      (*(*(v21 - 8) + 16))(a1, v11, v21);
      v22 = v11;
      v23 = type metadata accessor for WebImageAsset;
    }

    else
    {
      sub_21A244A58(v19, v7, type metadata accessor for LocalImageAsset);
      v26 = sub_21A2F4794();
      (*(*(v26 - 8) + 16))(a1, v7, v26);
      v22 = v7;
      v23 = type metadata accessor for LocalImageAsset;
    }
  }

  else
  {
    sub_21A244A58(v19, v15, type metadata accessor for ExternalImageAsset);
    v24 = *(v12 + 20);
    v25 = sub_21A2F4794();
    (*(*(v25 - 8) + 16))(a1, &v15[v24], v25);
    v22 = v15;
    v23 = type metadata accessor for ExternalImageAsset;
  }

  return sub_21A244AC0(v22, v23);
}

uint64_t sub_21A2453C4()
{
  v1 = 6448503;
  if (*v0 != 1)
  {
    v1 = 0x6C69466C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616E7265747865;
  }
}

uint64_t sub_21A24541C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A249F34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A245444(uint64_t a1)
{
  v2 = sub_21A2490AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A245480(uint64_t a1)
{
  v2 = sub_21A2490AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A2454BC(uint64_t a1)
{
  v2 = sub_21A2491F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A2454F8(uint64_t a1)
{
  v2 = sub_21A2491F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A245534(uint64_t a1)
{
  v2 = sub_21A249100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A245570(uint64_t a1)
{
  v2 = sub_21A249100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A2455AC(uint64_t a1)
{
  v2 = sub_21A249154();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A2455E8(uint64_t a1)
{
  v2 = sub_21A249154();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageAsset.encode(to:)(void *a1)
{
  v2 = sub_21A176C98(&qword_27CD02DE8);
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v48 = &v38 - v4;
  v46 = type metadata accessor for LocalImageAsset(0);
  MEMORY[0x28223BE20](v46, v5);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A176C98(&qword_27CD02DF0);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v43 = &v38 - v9;
  v41 = type metadata accessor for WebImageAsset(0);
  MEMORY[0x28223BE20](v41, v10);
  v42 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21A176C98(&qword_27CD02DF8);
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v38 - v14;
  v38 = type metadata accessor for ExternalImageAsset(0);
  MEMORY[0x28223BE20](v38, v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ImageAsset(0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_21A176C98(&qword_27CD02E00);
  v23 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v24);
  v26 = &v38 - v25;
  sub_21A142764(a1, a1[3]);
  sub_21A2490AC();
  sub_21A2F84B4();
  sub_21A249340(v51, v22, type metadata accessor for ImageAsset);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v28 = (v23 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = type metadata accessor for WebImageAsset;
      v30 = v42;
      sub_21A244A58(v22, v42, type metadata accessor for WebImageAsset);
      v54 = 1;
      sub_21A249154();
      v31 = v43;
      v32 = v52;
      sub_21A2F82A4();
      sub_21A2491A8(&qword_27CD02E28, type metadata accessor for WebImageAsset);
      v33 = v45;
      sub_21A2F8324();
      v34 = v44;
    }

    else
    {
      v29 = type metadata accessor for LocalImageAsset;
      v30 = v47;
      sub_21A244A58(v22, v47, type metadata accessor for LocalImageAsset);
      v55 = 2;
      sub_21A249100();
      v31 = v48;
      v32 = v52;
      sub_21A2F82A4();
      sub_21A2491A8(&qword_27CD02E18, type metadata accessor for LocalImageAsset);
      v33 = v50;
      sub_21A2F8324();
      v34 = v49;
    }

    (*(v34 + 8))(v31, v33);
    sub_21A244AC0(v30, v29);
    return (*v28)(v26, v32);
  }

  else
  {
    sub_21A244A58(v22, v18, type metadata accessor for ExternalImageAsset);
    v53 = 0;
    sub_21A2491F0();
    v35 = v52;
    sub_21A2F82A4();
    sub_21A2491A8(&qword_27CD02E38, type metadata accessor for ExternalImageAsset);
    v36 = v40;
    sub_21A2F8324();
    (*(v39 + 8))(v15, v36);
    sub_21A244AC0(v18, type metadata accessor for ExternalImageAsset);
    return (*v28)(v26, v35);
  }
}

uint64_t ImageAsset.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = sub_21A176C98(&qword_27CD02E40);
  v4 = *(v3 - 8);
  v71 = v3;
  v72 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v75 = &v62 - v6;
  v7 = sub_21A176C98(&qword_27CD02E48);
  v8 = *(v7 - 8);
  v69 = v7;
  v70 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v74 = &v62 - v10;
  v11 = sub_21A176C98(&qword_27CD02E50);
  v67 = *(v11 - 8);
  v68 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v73 = &v62 - v13;
  v14 = sub_21A176C98(&qword_27CD02E58);
  v77 = *(v14 - 8);
  v78 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v62 - v16;
  v18 = type metadata accessor for ImageAsset(0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v62 - v24;
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v62 - v28;
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v62 - v32;
  v34 = a1[3];
  v80 = a1;
  sub_21A142764(a1, v34);
  sub_21A2490AC();
  v35 = v79;
  sub_21A2F8494();
  if (!v35)
  {
    v63 = v25;
    v64 = v29;
    v65 = v21;
    v37 = v73;
    v36 = v74;
    v79 = 0;
    v66 = v18;
    v39 = v75;
    v38 = v76;
    v40 = v78;
    v41 = sub_21A2F8294();
    v42 = (2 * *(v41 + 16)) | 1;
    v81 = v41;
    v82 = v41 + 32;
    v83 = 0;
    v84 = v42;
    v43 = sub_21A207C94();
    if (v43 == 3 || v83 != v84 >> 1)
    {
      v47 = sub_21A2F8064();
      swift_allocError();
      v49 = v48;
      sub_21A176C98(&qword_27CD012F0);
      *v49 = v66;
      sub_21A2F8204();
      sub_21A2F8054();
      (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84160], v47);
      swift_willThrow();
    }

    else
    {
      if (v43)
      {
        if (v43 == 1)
        {
          v85 = 1;
          sub_21A249154();
          v44 = v79;
          sub_21A2F81F4();
          v45 = v38;
          v46 = v77;
          if (v44)
          {
            goto LABEL_9;
          }

          v79 = v33;
          type metadata accessor for WebImageAsset(0);
          sub_21A2491A8(&qword_27CD02E68, type metadata accessor for WebImageAsset);
          v59 = v63;
          v60 = v69;
          sub_21A2F8284();
          (*(v70 + 8))(v36, v60);
          (*(v46 + 8))(v17, v78);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v52 = v59;
        }

        else
        {
          v85 = 2;
          sub_21A249100();
          v54 = v39;
          v55 = v79;
          sub_21A2F81F4();
          v56 = v77;
          if (v55)
          {
            goto LABEL_9;
          }

          v45 = v38;
          v79 = v33;
          type metadata accessor for LocalImageAsset(0);
          sub_21A2491A8(&qword_27CD02E60, type metadata accessor for LocalImageAsset);
          v57 = v65;
          v58 = v71;
          sub_21A2F8284();
          (*(v72 + 8))(v54, v58);
          (*(v56 + 8))(v17, v40);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v52 = v57;
        }

LABEL_17:
        v61 = v79;
        sub_21A244A58(v52, v79, type metadata accessor for ImageAsset);
        sub_21A244A58(v61, v45, type metadata accessor for ImageAsset);
        return sub_21A142808(v80);
      }

      v85 = 0;
      sub_21A2491F0();
      v51 = v79;
      sub_21A2F81F4();
      if (!v51)
      {
        v79 = v33;
        type metadata accessor for ExternalImageAsset(0);
        sub_21A2491A8(&qword_27CD02E70, type metadata accessor for ExternalImageAsset);
        v52 = v64;
        v53 = v68;
        sub_21A2F8284();
        (*(v67 + 8))(v37, v53);
        (*(v77 + 8))(v17, v40);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v45 = v38;
        goto LABEL_17;
      }
    }

LABEL_9:
    (*(v77 + 8))(v17, v40);
    swift_unknownObjectRelease();
  }

  return sub_21A142808(v80);
}

uint64_t ImageAsset.ID.id.getter()
{
  v1 = *v0;
  sub_21A2F5434();
  return v1;
}

uint64_t static ImageAsset.ID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21A2F8394();
  }
}

uint64_t ImageAsset.ID.hashValue.getter()
{
  sub_21A2F8434();
  sub_21A2F79A4();
  return sub_21A2F8474();
}

uint64_t sub_21A24663C()
{
  sub_21A2F8434();
  sub_21A2F79A4();
  return sub_21A2F8474();
}

uint64_t sub_21A246690()
{
  sub_21A2F8434();
  sub_21A2F79A4();
  return sub_21A2F8474();
}

uint64_t ExternalImageAsset.id.getter()
{
  v1 = *v0;
  sub_21A2F5434();
  return v1;
}

uint64_t ExternalImageAsset.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ExternalImageAsset(0) + 20);
  v4 = sub_21A2F4794();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id ExternalImageAsset.primaryColor.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ExternalImageAsset(0) + 28));
  *a1 = v3;

  return v3;
}

id ExternalImageAsset.textColor.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ExternalImageAsset(0) + 32));
  *a1 = v3;

  return v3;
}

id ExternalImageAsset.accentColor.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ExternalImageAsset(0) + 36));
  *a1 = v3;

  return v3;
}

id ExternalImageAsset.backgroundColor.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ExternalImageAsset(0) + 40));
  *a1 = v3;

  return v3;
}

__n128 ExternalImageAsset.focalFrame.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExternalImageAsset(0) + 44);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 ExternalImageAsset.init(id:url:sizeInPixels:primaryColor:textColor:accentColor:backgroundColor:focalFrame:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = type metadata accessor for ExternalImageAsset(0);
  v16 = v15[7];
  v17 = &a9[v15[6]];
  *&a9[v16] = 0;
  v18 = v15[8];
  *&a9[v18] = 0;
  v19 = v15[9];
  *&a9[v19] = 0;
  v20 = v15[10];
  *&a9[v20] = 0;
  *a9 = a1;
  *(a9 + 1) = a2;
  v21 = v15[5];
  v22 = sub_21A2F4794();
  (*(*(v22 - 8) + 32))(&a9[v21], a3, v22);
  *v17 = a4;
  *(v17 + 1) = a5;
  v17[16] = a6 & 1;

  *&a9[v16] = a7;
  *&a9[v18] = a8;

  *&a9[v19] = a10;
  v23 = &a9[v15[11]];

  *&a9[v20] = a11;
  result = *a12;
  v25 = *(a12 + 16);
  *v23 = *a12;
  *(v23 + 1) = v25;
  v23[32] = *(a12 + 32);
  return result;
}

uint64_t sub_21A246A58()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x756F72676B636162;
  if (v1 != 6)
  {
    v3 = 0x6172466C61636F66;
  }

  v4 = 0x6F6C6F4374786574;
  if (v1 != 4)
  {
    v4 = 0x6F43746E65636361;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x69506E49657A6973;
  if (v1 != 2)
  {
    v5 = 0x437972616D697270;
  }

  if (*v0)
  {
    v2 = 7107189;
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

uint64_t sub_21A246B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A24A054(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A246BA0(uint64_t a1)
{
  v2 = sub_21A249244();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A246BDC(uint64_t a1)
{
  v2 = sub_21A249244();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExternalImageAsset.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_21A176C98(&qword_27CD02E78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - v8;
  sub_21A142764(a1, a1[3]);
  sub_21A249244();
  sub_21A2F84B4();
  LOBYTE(v22) = 0;
  sub_21A2F82E4();
  if (!v2)
  {
    v10 = type metadata accessor for ExternalImageAsset(0);
    LOBYTE(v22) = 1;
    sub_21A2F4794();
    sub_21A2491A8(&qword_27CD02E88, MEMORY[0x277CC9260]);
    sub_21A2F8324();
    v11 = (v3 + v10[6]);
    v12 = *(v11 + 16);
    v22 = *v11;
    LOBYTE(v23) = v12;
    v25 = 2;
    type metadata accessor for CGSize(0);
    sub_21A2491A8(&qword_27CD02E90, type metadata accessor for CGSize);
    sub_21A2F82D4();
    *&v22 = *(v3 + v10[7]);
    v13 = v22;
    v25 = 3;
    sub_21A249298();
    v14 = v13;
    sub_21A2F82D4();

    *&v22 = *(v3 + v10[8]);
    v25 = 4;
    v15 = v22;
    sub_21A2F82D4();

    *&v22 = *(v3 + v10[9]);
    v25 = 5;
    v17 = v22;
    sub_21A2F82D4();

    *&v22 = *(v3 + v10[10]);
    v25 = 6;
    v18 = v22;
    sub_21A2F82D4();

    v19 = (v3 + v10[11]);
    v20 = *(v19 + 32);
    v21 = v19[1];
    v22 = *v19;
    v23 = v21;
    v24 = v20;
    v25 = 7;
    type metadata accessor for CGRect(0);
    sub_21A2491A8(&qword_27CD02EA0, type metadata accessor for CGRect);
    sub_21A2F82D4();
  }

  return (*(v6 + 8))(v9, v5);
}