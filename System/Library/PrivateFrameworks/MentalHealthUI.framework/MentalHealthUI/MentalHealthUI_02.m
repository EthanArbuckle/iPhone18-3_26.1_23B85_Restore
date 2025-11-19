void sub_2589DB718()
{
  if (!qword_27F96D128)
  {
    sub_2589DB778();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D128);
    }
  }
}

void sub_2589DB778()
{
  if (!qword_27F96D130)
  {
    sub_2589DB83C(255, &qword_27F96CA20, MEMORY[0x277CDFC38], MEMORY[0x277CE0BD8], MEMORY[0x277CDFAB8]);
    sub_2589DB8A8(255, &qword_27F96C8C0, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D130);
    }
  }
}

void sub_2589DB83C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_2589DB8A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2589DB8F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2589DB6B0();
    v7 = v6;
    sub_2589DB994(255, &qword_27F96D140, &qword_27F96D148, sub_2589DBA34, &qword_27F96D158);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2589DB994(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_2589DC5CC(255, a3, a4, MEMORY[0x277CE14B8]);
    sub_2589DBB50(a5, a3, a4);
    v9 = sub_258B022D4();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2589DBA34()
{
  if (!qword_27F96D150)
  {
    sub_2589DC8AC(255, &qword_27F96C7B8);
    sub_2589DB6B0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96D150);
    }
  }
}

void sub_2589DBABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    sub_2589DB994(255, &qword_27F96D140, &qword_27F96D148, sub_2589DBA34, &qword_27F96D158);
    v7 = a3(a1, MEMORY[0x277CE1428], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2589DBB50(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2589DC5CC(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2589DBBB4()
{
  if (!qword_27F96D170)
  {
    sub_2589DB994(255, &qword_27F96D0F0, &qword_27F96D0F8, sub_2589DB514, &qword_27F96D168);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D170);
    }
  }
}

uint64_t sub_2589DBC40(uint64_t a1, uint64_t a2)
{
  sub_2589DB994(0, &qword_27F96D0F0, &qword_27F96D0F8, sub_2589DB514, &qword_27F96D168);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2589DBCD0()
{
  result = qword_27F96D188;
  if (!qword_27F96D188)
  {
    sub_2589DB994(255, &qword_27F96D0F0, &qword_27F96D0F8, sub_2589DB514, &qword_27F96D168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D188);
  }

  return result;
}

uint64_t sub_2589DBD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2589DBDB4(uint64_t a1, uint64_t a2)
{
  sub_2589DB83C(0, &qword_27F96D118, sub_2589DB6B0, MEMORY[0x277CE1428], MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589DBE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void))
{
  v6 = a4(0, a3, MEMORY[0x277CE0338]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2589DBED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, void))
{
  v4 = a3(0, a2, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2589DBF48(uint64_t a1)
{
  sub_2589DB83C(0, &qword_27F96D118, sub_2589DB6B0, MEMORY[0x277CE1428], MEMORY[0x277CE0338]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2589DBFDC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2589DC5CC(255, a3, a4, MEMORY[0x277CE14B8]);
    v5 = sub_258B00974();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2589DC058(uint64_t a1, uint64_t a2)
{
  sub_2589DB994(0, &qword_27F96D140, &qword_27F96D148, sub_2589DBA34, &qword_27F96D158);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2589DC0E8()
{
  result = qword_27F96D1A0;
  if (!qword_27F96D1A0)
  {
    sub_2589DB994(255, &qword_27F96D140, &qword_27F96D148, sub_2589DBA34, &qword_27F96D158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D1A0);
  }

  return result;
}

uint64_t sub_2589DC16C(uint64_t a1)
{
  sub_2589DB994(0, &qword_27F96D140, &qword_27F96D148, sub_2589DBA34, &qword_27F96D158);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2589DC1F4(uint64_t a1, uint64_t a2)
{
  sub_2589DB83C(0, &qword_27F96CA20, MEMORY[0x277CDFC38], MEMORY[0x277CE0BD8], MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589DC290(uint64_t a1, uint64_t a2)
{
  sub_2589DB778();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589DC2F4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2589DC374()
{
  result = qword_27F96D1B0;
  if (!qword_27F96D1B0)
  {
    sub_2589DB778();
    sub_2589C6AE0();
    sub_2589DC3F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D1B0);
  }

  return result;
}

unint64_t sub_2589DC3F4()
{
  result = qword_27F96D1B8;
  if (!qword_27F96D1B8)
  {
    sub_2589DB8A8(255, &qword_27F96C8C0, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D1B8);
  }

  return result;
}

uint64_t sub_2589DC470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2589DC4D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2589DC538(uint64_t a1, uint64_t a2)
{
  sub_2589DC5CC(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2589DC5CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2589DC630()
{
  result = qword_27F96D1D0;
  if (!qword_27F96D1D0)
  {
    sub_2589DB6B0();
    sub_2589DC2F4(&qword_27F96D1A8, sub_2589DB718, sub_2589DC374);
    sub_2589DC6E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D1D0);
  }

  return result;
}

unint64_t sub_2589DC6E8()
{
  result = qword_280DF8950;
  if (!qword_280DF8950)
  {
    sub_258B017D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DF8950);
  }

  return result;
}

unint64_t sub_2589DC740()
{
  result = qword_27F96D1E0;
  if (!qword_27F96D1E0)
  {
    sub_2589DC8AC(255, &qword_27F96D110);
    sub_2589DC7D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D1E0);
  }

  return result;
}

unint64_t sub_2589DC7D8()
{
  result = qword_27F96D1E8;
  if (!qword_27F96D1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D1E8);
  }

  return result;
}

unint64_t sub_2589DC82C()
{
  result = qword_27F96D1F0;
  if (!qword_27F96D1F0)
  {
    sub_2589BFBAC();
    sub_2589DC3F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D1F0);
  }

  return result;
}

void sub_2589DC8AC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_258B00B04();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_2589DC8FC()
{
  result = qword_27F96D200[0];
  if (!qword_27F96D200[0])
  {
    sub_2589DC8AC(255, &qword_27F96D1F8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F96D200);
  }

  return result;
}

void sub_2589DC994(uint64_t a1)
{
  sub_2589DE924(319, &qword_27F96D288, &type metadata for StateOfMindEntryPhaseButtonConfiguration, MEMORY[0x277D83D88]);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_2589DE104(319, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2589DCA88(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_258B01504() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  v12 = sub_258B00AA4();
  v13 = *(*(v12 - 8) + 80);
  v14 = *(v6 + 80);
  if (v10)
  {
    v15 = v11;
  }

  else
  {
    v15 = v11 + 1;
  }

  v16 = 8;
  if (((v15 + v13) & ~v13) + *(*(v12 - 8) + 64) > 8)
  {
    v16 = ((v15 + v13) & ~v13) + *(*(v12 - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_31;
  }

  v17 = (*(v9 + 80) | v13) & 0xF8 | 7u;
  v18 = v16 + ((((v14 + 80) & ~v14) + *(v6 + 64) + v17) & ~v17) + 1;
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v8 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v22 < 2)
    {
LABEL_31:
      if (v7 > 0x7FFFFFFE)
      {
        v25 = *(v6 + 48);

        return v25((a1 + v14 + 80) & ~v14, v7, v5);
      }

      else
      {
        v24 = *(a1 + 1);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        if ((v24 + 1) >= 2)
        {
          return v24;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_31;
  }

LABEL_20:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 > 3)
    {
      LODWORD(v18) = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        LODWORD(v18) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v18) = *a1;
      }
    }

    else if (v18 == 1)
    {
      LODWORD(v18) = *a1;
    }

    else
    {
      LODWORD(v18) = *a1;
    }
  }

  return v8 + (v18 | v23) + 1;
}

void sub_2589DCD74(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v29 = *(a4 + 16);
  v7 = *(v29 - 8);
  v30 = v7;
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(sub_258B01504() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 64);
  v13 = *(sub_258B00AA4() - 8);
  v14 = *(v13 + 80);
  v15 = *(v13 + 64);
  v16 = *(v7 + 80);
  v17 = (*(v10 + 80) | *(v13 + 80)) & 0xF8 | 7u;
  v18 = (((v16 + 80) & ~v16) + *(v7 + 64) + v17) & ~v17;
  if (v11)
  {
    v19 = v12;
  }

  else
  {
    v19 = v12 + 1;
  }

  v20 = ((v19 + v14) & ~v14) + v15;
  if (v20 <= 8)
  {
    v20 = 8;
  }

  v21 = v20 + v18 + 1;
  if (a3 <= v9)
  {
    v22 = 0;
  }

  else if (v21 <= 3)
  {
    v25 = ((a3 - v9 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v25))
    {
      v22 = 4;
    }

    else
    {
      if (v25 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v25 >= 2)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 1;
  }

  if (v9 < a2)
  {
    v23 = ~v9 + a2;
    if (v21 < 4)
    {
      v24 = (v23 >> (8 * v21)) + 1;
      if (v21)
      {
        v27 = v23 & ~(-1 << (8 * v21));
        bzero(a1, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *a1 = v27;
            if (v22 > 1)
            {
LABEL_51:
              if (v22 == 2)
              {
                *(a1 + v21) = v24;
              }

              else
              {
                *(a1 + v21) = v24;
              }

              return;
            }
          }

          else
          {
            *a1 = v23;
            if (v22 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v27;
        *(a1 + 2) = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v22)
    {
      *(a1 + v21) = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v21) = 0;
  }

  else if (v22)
  {
    *(a1 + v21) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v8 > 0x7FFFFFFE)
  {
    v28 = *(v30 + 56);

    v28((a1 + v16 + 80) & ~v16, a2, v8, v29);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 1) = a2;
  }
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

uint64_t sub_2589DD12C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2589DD174(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2589DD21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v57 = a2;
  v5 = sub_258B024B4();
  v45 = v5;
  v56 = *(v5 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v5);
  v55 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(a1 + 16);
  sub_258B00B04();
  sub_258B00B04();
  sub_258B00B04();
  v8 = sub_258B00B04();
  v53 = *(v8 - 8);
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v8);
  v52 = &v42 - v10;
  v50 = *(a1 + 24);
  v11 = MEMORY[0x277CDFC60];
  v74 = v50;
  v75 = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  v13 = MEMORY[0x277CDF918];
  v72 = WitnessTable;
  v73 = MEMORY[0x277CDF918];
  v70 = swift_getWitnessTable();
  v71 = v13;
  v68 = swift_getWitnessTable();
  v69 = v11;
  v48 = swift_getWitnessTable();
  v62 = v8;
  v63 = MEMORY[0x277D837D0];
  v64 = v48;
  v65 = MEMORY[0x277D837E0];
  v14 = sub_258B021E4();
  v44 = v14;
  v51 = *(v14 - 8);
  v15 = *(v51 + 64);
  MEMORY[0x28223BE20](v14);
  v43 = &v42 - v16;
  sub_2589DE104(255, &qword_27F96D298, sub_2589DE168, MEMORY[0x277D83D88]);
  v18 = v17;
  v47 = v17;
  v19 = swift_getWitnessTable();
  v46 = v19;
  v42 = sub_2589DE538();
  v62 = v14;
  v63 = v18;
  v64 = v5;
  v65 = v19;
  v66 = v42;
  v67 = MEMORY[0x277CE1320];
  v20 = type metadata accessor for ScrollableWithPinnedFooter();
  v49 = *(v20 - 8);
  v21 = *(v49 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v42 - v25;
  v27 = *(a1 + 36);
  v65 = type metadata accessor for AssociationSelectionPhaseSpecs();
  v66 = &off_2869D8358;
  v28 = __swift_allocate_boxed_opaque_existential_1(&v62);
  v29 = v3 + *(a1 + 40);
  sub_258AC1B28(v28);
  v30 = v52;
  v31 = v54;
  v32 = v50;
  sub_258A55DDC(v50, v52);
  __swift_destroy_boxed_opaque_existential_1(&v62);
  v62 = 0xD000000000000023;
  v63 = 0x8000000258B36680;
  v33 = v43;
  sub_258B01E34();
  (*(v53 + 8))(v30, v8);
  v34 = *(v3 + 8) != 0;
  v59 = v31;
  v60 = v32;
  v61 = v3;
  v35 = v55;
  sub_258B024A4();
  v36 = *&v44;
  v37 = v45;
  v38 = sub_258A4B280(v34, sub_2589DE6C0, v58, *&v44, v47, v45, v46, v24, v42, MEMORY[0x277CE1320]);
  (*(v56 + 8))(v35, v37, v38);
  (*(v51 + 8))(v33, COERCE_DOUBLE(*&v36));
  v39 = swift_getWitnessTable();
  sub_258A4DFD4(v24, v20, v39);
  v40 = *(v49 + 8);
  v40(v24, v20);
  sub_258A4DFD4(v26, v20, v39);
  return v40(v26, v20);
}

uint64_t sub_2589DD850@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2589DE168();
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[1];
  v29[0] = *a1;
  v29[1] = v10;
  v11 = a1[3];
  v29[2] = a1[2];
  v29[3] = v11;
  v29[4] = a1[4];
  if (*(&v29[0] + 1))
  {
    v24 = v29[0];
    v12 = a1[2];
    v13 = a1[3];
    v14 = *a1;
    v25 = a1[1];
    v26 = v12;
    v15 = a1[4];
    v27 = v13;
    v28 = v15;
    v23[2] = v12;
    v23[3] = v13;
    v23[4] = v15;
    v23[0] = v14;
    v23[1] = v25;
    v21 = v7;
    sub_2589DE6CC(v23, &v22);
    v16 = type metadata accessor for StateOfMindEntryPhase_iOS();
    sub_2589DDA6C(&v24, v16, v9);
    sub_2589DE704(v29);
    v17 = *(v5 + 36);
    *&v9[v17] = swift_getKeyPath();
    sub_2589DE104(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    sub_2589A5D04(v9, a2);
    return (*(v21 + 56))(a2, 0, 1, v5);
  }

  else
  {
    v19 = *(v7 + 56);

    return v19(a2, 1, 1, v5);
  }
}

uint64_t sub_2589DDA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v5 = sub_258B00AA4();
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AssociationSelectionPhaseSpecs();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v53 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2589D5AFC();
  v47 = v11;
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DE234();
  v48 = *(v15 - 8);
  v49 = v15;
  v16 = *(v48 + 64);
  MEMORY[0x28223BE20](v15);
  v46 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v62 = *(a1 + 32);
  v63 = *(a1 + 40);
  v64 = v18;
  v58[3] = v8;
  v58[4] = &off_2869D8358;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
  v21 = *(a2 + 40);

  sub_2589DE784(&v64, v55);
  sub_258AC1B28(boxed_opaque_existential_1);
  v22 = swift_allocObject();
  v23 = *(a1 + 48);
  v22[3] = *(a1 + 32);
  v22[4] = v23;
  v22[5] = *(a1 + 64);
  v24 = *(a1 + 16);
  v22[1] = *a1;
  v22[2] = v24;
  v25 = swift_allocObject();
  v26 = *(a1 + 48);
  v25[3] = *(a1 + 32);
  v25[4] = v26;
  v25[5] = *(a1 + 64);
  v27 = *(a1 + 16);
  v25[1] = *a1;
  v25[2] = v27;
  v58[5] = v18;
  v58[6] = v19;
  v28 = v53;
  v58[7] = v62;
  v59 = v63;
  v56 = sub_2589DE7E0;
  v57 = v22;
  v60 = sub_2589DE860;
  v61 = v25;
  sub_2589DE6CC(a1, v55);
  sub_2589DE6CC(a1, v55);
  sub_258AC1B28(v28);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v30 = result;
    homeButtonType = MobileGestalt_get_homeButtonType();

    sub_2589DE868(v28, type metadata accessor for AssociationSelectionPhaseSpecs);
    v33 = v51;
    v32 = v52;
    v34 = MEMORY[0x277CDF998];
    if (homeButtonType != 2)
    {
      v34 = MEMORY[0x277CDF988];
    }

    (*(v51 + 104))(v52, *v34, v5);
    (*(v33 + 32))(v14, v32, v5);
    sub_2589DE390(&qword_27F96D048, MEMORY[0x277CDFA28]);
    result = sub_258B02AA4();
    if (result)
    {
      sub_2589DE338();
      v53 = v35;
      v36 = sub_2589DE390(&qword_27F96D2C0, sub_2589DE338);
      v37 = sub_2589DE390(&qword_27F96D030, sub_2589D5AFC);
      v38 = v46;
      v39 = v47;
      sub_258B01C84();
      sub_2589DE868(v14, sub_2589D5AFC);
      sub_2589DE868(&v56, sub_2589DE338);
      v40 = MEMORY[0x277D837D0];
      sub_2589DE924(0, &qword_280DF88F0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_258B2C470;
      v55[0] = *(a1 + 48);
      *(inited + 32) = v55[0];
      v54 = &unk_2869D4670;
      sub_2589DE8C8(v55, &v56);
      v42 = sub_258B003E4();
      sub_2589FC8C8(v42);
      v56 = v54;
      sub_2589DE924(0, &qword_280DF8948, v40, MEMORY[0x277D83940]);
      sub_2589C6824();
      sub_258B02A34();

      swift_setDeallocating();
      v43 = *(inited + 16);
      swift_arrayDestroy();
      v56 = v53;
      v57 = v39;
      v58[0] = v36;
      v58[1] = v37;
      swift_getOpaqueTypeConformance2();
      v44 = v49;
      sub_258B01DD4();

      return (*(v48 + 8))(v38, v44);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2589DE094@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  sub_2589BFF58();
  sub_258B003E4();
  result = sub_258B01B44();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

void sub_2589DE104(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2589DE168()
{
  if (!qword_27F96D2A0)
  {
    sub_2589DE1CC();
    sub_2589DE3D8();
    v0 = type metadata accessor for StateOfMindEntryButtonTray();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D2A0);
    }
  }
}

void sub_2589DE1CC()
{
  if (!qword_27F96D2A8)
  {
    sub_2589DE234();
    sub_258B017D4();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D2A8);
    }
  }
}

void sub_2589DE234()
{
  if (!qword_27F96D2B0)
  {
    sub_2589DE338();
    sub_2589D5AFC();
    sub_2589DE390(&qword_27F96D2C0, sub_2589DE338);
    sub_2589DE390(&qword_27F96D030, sub_2589D5AFC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D2B0);
    }
  }
}

void sub_2589DE338()
{
  if (!qword_27F96D2B8)
  {
    v0 = type metadata accessor for ActionButton();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D2B8);
    }
  }
}

uint64_t sub_2589DE390(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2589DE3D8()
{
  result = qword_27F96D2C8;
  if (!qword_27F96D2C8)
  {
    sub_2589DE1CC();
    sub_2589DE338();
    sub_2589D5AFC();
    sub_2589DE390(&qword_27F96D2C0, sub_2589DE338);
    sub_2589DE390(&qword_27F96D030, sub_2589D5AFC);
    swift_getOpaqueTypeConformance2();
    sub_2589DE390(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D2C8);
  }

  return result;
}

unint64_t sub_2589DE538()
{
  result = qword_27F96D2D0;
  if (!qword_27F96D2D0)
  {
    sub_2589DE104(255, &qword_27F96D298, sub_2589DE168, MEMORY[0x277D83D88]);
    sub_2589DE390(&qword_27F96D2D8, sub_2589DE168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D2D0);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2589DE6C0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2589DD850(*(v1 + 32), a1);
}

uint64_t sub_2589DE704(uint64_t a1)
{
  sub_2589DE924(0, &qword_27F96D288, &type metadata for StateOfMindEntryPhaseButtonConfiguration, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2589DE7E0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  return v1();
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[9];

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_2589DE868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2589DE924(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for CustomReminderRow()
{
  result = qword_27F96D2F0;
  if (!qword_27F96D2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589DEA18()
{
  sub_2589DEB08();
  if (v0 <= 0x3F)
  {
    sub_2589E16B0(319, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_2589E1660(319, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2589DEB08()
{
  if (!qword_27F96D300)
  {
    type metadata accessor for NotificationSettingsModel();
    sub_2589E0FA8(&qword_27F96D308, type metadata accessor for NotificationSettingsModel);
    v0 = sub_258B00A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D300);
    }
  }
}

uint64_t sub_2589DEBB8@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = type metadata accessor for CustomReminderModel();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v53 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_258B00C14();
  v52 = *(v58 - 8);
  v5 = *(v52 + 64);
  MEMORY[0x28223BE20](v58);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CustomReminderRow();
  v8 = *(v7 - 8);
  v59 = v7 - 8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_2589E05A8();
  v49 = v10;
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589E0FF0();
  v57 = v14;
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v48 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589E1180();
  v54 = v17;
  v55 = *(v17 - 8);
  v18 = *(v55 + 64);
  MEMORY[0x28223BE20](v17);
  v60 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589E1A2C(v1, &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustomReminderRow);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  sub_2589E1384(&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v61 = v1;
  sub_2589E060C();
  sub_2589E0E68();
  sub_258B02174();
  v22 = v1 + *(v59 + 32);
  v47 = v1;
  v23 = *v22;
  v24 = *(v22 + 8);
  LOBYTE(v66) = v23;
  v67 = v24;
  sub_2589E1660(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  sub_2589E1A2C(v1, &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustomReminderRow);
  v25 = swift_allocObject();
  sub_2589E1384(&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v20);
  type metadata accessor for CustomReminderView();
  sub_2589E0FA8(&qword_27F96D3F0, sub_2589E05A8);
  sub_2589E0FA8(&qword_27F96D3F8, type metadata accessor for CustomReminderView);
  v26 = v48;
  v27 = v49;
  sub_258B01E94();

  (*(v50 + 8))(v13, v27);
  v28 = *(v47 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  LOBYTE(v13) = v62;
  KeyPath = swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = v13;
  v31 = (v26 + v57[9]);
  *v31 = KeyPath;
  v31[1] = sub_2589E1658;
  v31[2] = v30;
  v32 = v51;
  sub_258B00C04();
  v50 = sub_2589E1254();
  v49 = sub_2589E0FA8(&qword_27F96D410, MEMORY[0x277CDDB18]);
  v33 = v58;
  sub_258B01BD4();
  (*(v52 + 8))(v32, v33);
  sub_2589E1938(v26, sub_2589E0FF0);
  sub_2589E1660(0, &qword_280DF88F0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B2BE60;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x8000000258B36130;
  v35 = *(v59 + 28);
  sub_2589E16B0(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
  v36 = v53;
  sub_258B02124();
  v37 = *v36;
  sub_2589E1A94(v36, type metadata accessor for CustomReminderModel);
  v66 = v37;
  v62 = sub_258B03414();
  v63 = v38;
  MEMORY[0x259C931B0](58, 0xE100000000000000);
  sub_258B02124();
  v39 = *v36;
  sub_2589E1A94(v36, type metadata accessor for CustomReminderModel);
  v66 = v39;
  v40 = sub_258B03414();
  MEMORY[0x259C931B0](v40);

  v41 = v63;
  *(inited + 48) = v62;
  *(inited + 56) = v41;
  v62 = &unk_2869D4670;
  v42 = sub_258B003E4();
  sub_2589FC8C8(v42);
  sub_2589E1660(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  swift_setDeallocating();
  v43 = *(inited + 16);
  swift_arrayDestroy();
  v62 = v57;
  v63 = v58;
  v64 = v50;
  v65 = v49;
  swift_getOpaqueTypeConformance2();
  v44 = v54;
  v45 = v60;
  sub_258B01DD4();

  return (*(v55 + 8))(v45, v44);
}

uint64_t sub_2589DF4DC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for CustomReminderRow() + 24));
  v2 = *v1;
  v3 = *(v1 + 1);
  sub_2589E1660(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);

  sub_258B02124();
  sub_258B02134();
}

void sub_2589DF5A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_258B01004();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_2589E1714();
  sub_2589DF600(a1, (a2 + *(v4 + 44)));
  sub_2589E060C();
  *(a2 + *(v5 + 36)) = 0;
}

uint64_t sub_2589DF600@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v30 = a2;
  sub_2589E0B98();
  v4 = v3;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2589E0A80();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v27[-v14];
  v29 = sub_258B01004();
  v32 = 1;
  sub_2589DF9A0(a1, v36);
  memcpy(v33, v36, 0x141uLL);
  memcpy(v34, v36, 0x141uLL);
  sub_2589E17AC(v33, v35, &qword_27F96D348, sub_2589E07E4);
  sub_2589E182C(v34, &qword_27F96D348, sub_2589E07E4);
  memcpy(&v31[7], v33, 0x141uLL);
  v28 = v32;
  v16 = sub_258B02084();
  v17 = (v7 + *(v4 + 36));
  sub_2589E16B0(0, &qword_27F96D398, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
  v19 = *(v18 + 28);
  v20 = *MEMORY[0x277CE1050];
  v21 = sub_258B020B4();
  (*(*(v21 - 8) + 104))(v17 + v19, v20, v21);
  *v17 = swift_getKeyPath();
  *v7 = v16;
  sub_258B01994();
  sub_2589E0C28();
  sub_258B01BB4();
  sub_2589E1A94(v7, sub_2589E0B98);
  v22 = [objc_opt_self() tertiaryLabelColor];
  *&v15[*(v9 + 44)] = sub_258B01F94();
  sub_2589A6130(v15, v13);
  v23 = v29;
  v35[0] = v29;
  v35[1] = 0;
  LOBYTE(v9) = v28;
  LOBYTE(v35[2]) = v28;
  memcpy(&v35[2] + 1, v31, 0x148uLL);
  v24 = v30;
  memcpy(v30, v35, 0x159uLL);
  v24[44] = 0;
  *(v24 + 360) = 1;
  sub_2589E06AC();
  sub_2589A6130(v13, v24 + *(v25 + 64));
  sub_2589E189C(v35, v36);
  sub_2589E1938(v15, sub_2589E0A80);
  sub_2589E1938(v13, sub_2589E0A80);
  v36[0] = v23;
  v36[1] = 0;
  LOBYTE(v36[2]) = v9;
  memcpy(&v36[2] + 1, v31, 0x148uLL);
  return sub_2589E1998(v36);
}

uint64_t sub_2589DF9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258B01194();
  v6[0] = 1;
  sub_2589DFB10(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v9, __src, sizeof(v9));
  sub_2589E17AC(__dst, v10, &qword_27F96D360, sub_2589E08E0);
  sub_2589E182C(v9, &qword_27F96D360, sub_2589E08E0);
  memcpy(&v7[7], __dst, 0x120uLL);
  v10[0] = v4;
  v10[1] = 0;
  LOBYTE(v10[2]) = 1;
  memcpy(&v10[2] + 1, v7, 0x127uLL);
  v6[312] = 1;
  memcpy(a2, v10, 0x138uLL);
  *(a2 + 312) = 0;
  *(a2 + 320) = 1;
  *__src = v4;
  *&__src[8] = 0;
  __src[16] = 1;
  memcpy(&__src[17], v7, 0x127uLL);
  sub_2589E1A2C(v10, v6, sub_2589E084C);
  return sub_2589E1A94(__src, sub_2589E084C);
}

uint64_t sub_2589DFB10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v53 = a2;
  v54 = a1;
  v55 = sub_258AFFE84();
  v2 = *(v55 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v55);
  v5 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_258AFFEA4();
  v6 = *(v52 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v52);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_258B00084();
  v10 = *(v51 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v51);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CustomReminderModel();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[1] = *(type metadata accessor for CustomReminderRow() + 20);
  sub_2589E16B0(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
  v49[0] = v18;
  sub_258B02124();
  sub_258A29A78(v13);
  sub_258AFFE94();
  sub_258AFFE74();
  v19 = sub_258B00054();
  v21 = v20;
  (*(v2 + 8))(v5, v55);
  (*(v6 + 8))(v9, v52);
  (*(v10 + 8))(v13, v51);
  sub_2589E1A94(v17, type metadata accessor for CustomReminderModel);
  v93 = v19;
  v94 = v21;
  sub_2589BFF58();
  v22 = sub_258B01B44();
  v50 = v23;
  v51 = v22;
  LOBYTE(v19) = v24;
  v52 = v25;
  sub_258B02504();
  sub_258B00C94();
  LODWORD(v55) = v19 & 1;
  v115 = v19 & 1;
  v26 = v54;
  sub_258B02124();
  v27 = *(v26 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v28 = sub_258A29974(v93);
  v30 = v29;
  sub_2589E1A94(v17, type metadata accessor for CustomReminderModel);
  v93 = v28;
  v94 = v30;
  v31 = sub_258B01B44();
  v33 = v32;
  LOBYTE(v21) = v34;
  sub_258B018F4();
  v35 = sub_258B01AE4();
  v37 = v36;
  LOBYTE(v26) = v38;

  sub_2589BFFAC(v31, v33, v21 & 1);

  LODWORD(v93) = sub_258B014B4();
  v39 = sub_258B01AB4();
  v41 = v40;
  LOBYTE(v33) = v42;
  v44 = v43;
  sub_2589BFFAC(v35, v37, v26 & 1);

  sub_258B02504();
  sub_258B00C94();
  LOBYTE(v33) = v33 & 1;
  v45 = v50;
  v46 = v51;
  *&v64 = v51;
  *(&v64 + 1) = v50;
  LOBYTE(v65) = v55;
  *(&v65 + 1) = *v114;
  DWORD1(v65) = *&v114[3];
  v47 = v52;
  *(&v65 + 1) = v52;
  v70 = v111;
  v71 = v112;
  v72 = v113;
  v66 = v107;
  v67 = v108;
  v68 = v109;
  v69 = v110;
  v56[6] = v111;
  v56[7] = v112;
  v56[2] = v107;
  v56[3] = v108;
  v56[4] = v109;
  v56[5] = v110;
  v56[0] = v64;
  v56[1] = v65;
  *&v73 = v39;
  *(&v73 + 1) = v41;
  LOBYTE(v74) = v33;
  *(&v74 + 1) = *v105;
  DWORD1(v74) = *&v105[3];
  *(&v74 + 1) = v44;
  v79 = v61;
  v80 = v62;
  v81 = v63;
  v75 = v57;
  v76 = v58;
  v77 = v59;
  v78 = v60;
  v56[12] = v58;
  v56[13] = v59;
  v56[10] = v74;
  v56[11] = v57;
  v56[14] = v60;
  v56[15] = v61;
  v56[16] = v62;
  v56[17] = v63;
  v106 = v33;
  v56[8] = v113;
  v56[9] = v73;
  memcpy(v53, v56, 0x120uLL);
  v82[0] = v39;
  v82[1] = v41;
  v83 = v33;
  *v84 = *v105;
  *&v84[3] = *&v105[3];
  v85 = v44;
  v90 = v61;
  v91 = v62;
  v92 = v63;
  v86 = v57;
  v87 = v58;
  v88 = v59;
  v89 = v60;
  sub_2589E1AF4(&v64, &v93);
  sub_2589E1AF4(&v73, &v93);
  sub_2589E1B84(v82);
  v93 = v46;
  v94 = v45;
  v95 = v55;
  *v96 = *v114;
  *&v96[3] = *&v114[3];
  v97 = v47;
  v102 = v111;
  v103 = v112;
  v104 = v113;
  v98 = v107;
  v99 = v108;
  v100 = v109;
  v101 = v110;
  return sub_2589E1B84(&v93);
}

uint64_t sub_2589E01E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = sub_258B00084();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v38);
  v37 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v9 = &v32[-v8];
  v36 = type metadata accessor for CustomReminderModel();
  v10 = *(*(v36 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v36);
  v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v32[-v14];
  v16 = *(a1 + 8);
  v17 = type metadata accessor for CustomReminderRow();
  v18 = *(v17 + 20);
  sub_2589E16B0(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
  v35 = v16;
  sub_258B02124();
  sub_258B02124();
  sub_258A29A78(v9);
  sub_2589E1A94(v13, type metadata accessor for CustomReminderModel);
  v19 = (a1 + *(v17 + 24));
  v20 = *v19;
  v21 = *(v19 + 1);
  v42 = v20;
  v43 = v21;
  sub_2589E1660(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  v22 = v39;
  v34 = v40;
  v33 = v41;
  KeyPath = swift_getKeyPath();
  v24 = type metadata accessor for CustomReminderView();
  *(a2 + v24[8]) = KeyPath;
  sub_2589E16B0(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NotificationSettingsModel();
  sub_2589E0FA8(&qword_27F96D308, type metadata accessor for NotificationSettingsModel);
  *a2 = sub_258B00A24();
  a2[1] = v25;
  v26 = v24[5];
  sub_2589E1A2C(v15, v13, type metadata accessor for CustomReminderModel);
  sub_258B02114();
  sub_2589E1A94(v15, type metadata accessor for CustomReminderModel);
  v27 = v24[6];
  v28 = v38;
  (*(v4 + 16))(v37, v9, v38);
  sub_258B02114();
  result = (*(v4 + 8))(v9, v28);
  v30 = a2 + v24[7];
  v31 = v34;
  *v30 = v22;
  *(v30 + 1) = v31;
  v30[16] = v33;
  return result;
}

void sub_2589E05A8()
{
  if (!qword_27F96D318)
  {
    sub_2589E060C();
    sub_2589E0E68();
    v0 = sub_258B021B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D318);
    }
  }
}

void sub_2589E060C()
{
  if (!qword_27F96D320)
  {
    sub_2589E075C(255, &qword_27F96D328, &qword_27F96D330, sub_2589E06AC, sub_2589E0D30);
    sub_2589E0DB8();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D320);
    }
  }
}

void sub_2589E06AC()
{
  if (!qword_27F96D338)
  {
    sub_2589E075C(255, &qword_27F96D340, &qword_27F96D348, sub_2589E07E4, sub_2589E09F8);
    sub_2589E0A80();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96D338);
    }
  }
}

void sub_2589E075C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    sub_2589E16B0(255, a3, a4, MEMORY[0x277CE14B8]);
    a5();
    v7 = sub_258B021D4();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2589E07E4()
{
  if (!qword_27F96D350)
  {
    sub_2589E084C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96D350);
    }
  }
}

void sub_2589E084C()
{
  if (!qword_27F96D358)
  {
    sub_2589E16B0(255, &qword_27F96D360, sub_2589E08E0, MEMORY[0x277CE14B8]);
    sub_2589E0970();
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D358);
    }
  }
}

void sub_2589E08E0()
{
  if (!qword_27F96D368)
  {
    sub_2589BF7E8(255, &qword_27F96CF28, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96D368);
    }
  }
}

unint64_t sub_2589E0970()
{
  result = qword_27F96D370;
  if (!qword_27F96D370)
  {
    sub_2589E16B0(255, &qword_27F96D360, sub_2589E08E0, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D370);
  }

  return result;
}

unint64_t sub_2589E09F8()
{
  result = qword_27F96D378;
  if (!qword_27F96D378)
  {
    sub_2589E16B0(255, &qword_27F96D348, sub_2589E07E4, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D378);
  }

  return result;
}

void sub_2589E0A80()
{
  if (!qword_27F96D380)
  {
    sub_2589E0B14();
    sub_2589BF7E8(255, &qword_27F96C860, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D380);
    }
  }
}

void sub_2589E0B14()
{
  if (!qword_27F96D388)
  {
    sub_2589E0B98();
    sub_2589E0C28();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D388);
    }
  }
}

void sub_2589E0B98()
{
  if (!qword_27F96D390)
  {
    sub_2589E16B0(255, &qword_27F96D398, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D390);
    }
  }
}

unint64_t sub_2589E0C28()
{
  result = qword_27F96D3A0;
  if (!qword_27F96D3A0)
  {
    sub_2589E0B98();
    sub_2589E0CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D3A0);
  }

  return result;
}

unint64_t sub_2589E0CA8()
{
  result = qword_27F96D3A8;
  if (!qword_27F96D3A8)
  {
    sub_2589E16B0(255, &qword_27F96D398, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D3A8);
  }

  return result;
}

unint64_t sub_2589E0D30()
{
  result = qword_27F96D3B0;
  if (!qword_27F96D3B0)
  {
    sub_2589E16B0(255, &qword_27F96D330, sub_2589E06AC, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D3B0);
  }

  return result;
}

void sub_2589E0DB8()
{
  if (!qword_27F96D3B8)
  {
    sub_2589E0E14();
    v0 = sub_258B01444();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D3B8);
    }
  }
}

unint64_t sub_2589E0E14()
{
  result = qword_27F96D3C0;
  if (!qword_27F96D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D3C0);
  }

  return result;
}

unint64_t sub_2589E0E68()
{
  result = qword_27F96D3C8;
  if (!qword_27F96D3C8)
  {
    sub_2589E060C();
    sub_2589E0F18();
    sub_2589E0FA8(&qword_27F96D3D8, sub_2589E0DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D3C8);
  }

  return result;
}

unint64_t sub_2589E0F18()
{
  result = qword_27F96D3D0;
  if (!qword_27F96D3D0)
  {
    sub_2589E075C(255, &qword_27F96D328, &qword_27F96D330, sub_2589E06AC, sub_2589E0D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D3D0);
  }

  return result;
}

uint64_t sub_2589E0FA8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2589E0FF0()
{
  if (!qword_27F96D3E0)
  {
    sub_2589E107C();
    sub_2589E1660(255, &qword_27F96CDD0, MEMORY[0x277D839B0], MEMORY[0x277CE0898]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D3E0);
    }
  }
}

void sub_2589E107C()
{
  if (!qword_27F96D3E8)
  {
    sub_2589E05A8();
    type metadata accessor for CustomReminderView();
    sub_2589E0FA8(&qword_27F96D3F0, sub_2589E05A8);
    sub_2589E0FA8(&qword_27F96D3F8, type metadata accessor for CustomReminderView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D3E8);
    }
  }
}

void sub_2589E1180()
{
  if (!qword_27F96D400)
  {
    sub_2589E0FF0();
    sub_258B00C14();
    sub_2589E1254();
    sub_2589E0FA8(&qword_27F96D410, MEMORY[0x277CDDB18]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D400);
    }
  }
}

unint64_t sub_2589E1254()
{
  result = qword_27F96D408;
  if (!qword_27F96D408)
  {
    sub_2589E0FF0();
    sub_2589E05A8();
    type metadata accessor for CustomReminderView();
    sub_2589E0FA8(&qword_27F96D3F0, sub_2589E05A8);
    sub_2589E0FA8(&qword_27F96D3F8, type metadata accessor for CustomReminderView);
    swift_getOpaqueTypeConformance2();
    sub_2589D2560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D408);
  }

  return result;
}

uint64_t sub_2589E1384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomReminderRow();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589E13E8()
{
  v1 = *(type metadata accessor for CustomReminderRow() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2589DF4DC(v2);
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for CustomReminderRow();
  v2 = *(*(v1 - 8) + 64);
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v4 = v3 + *(v1 + 20);
  v5 = *(type metadata accessor for CustomReminderModel() + 32);
  v6 = sub_258AFFD44();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v4 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  sub_2589E16B0(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
  v9 = *(v4 + *(v8 + 28));

  v10 = *(v3 + *(v1 + 24) + 8);

  return swift_deallocObject();
}

uint64_t sub_2589E15E8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for CustomReminderRow() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2589E01E4(v4, a1);
}

void sub_2589E1660(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2589E16B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2589E1714()
{
  if (!qword_27F96D418)
  {
    sub_2589E16B0(255, &qword_27F96D330, sub_2589E06AC, MEMORY[0x277CE14B8]);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D418);
    }
  }
}

uint64_t sub_2589E17AC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2589E16B0(0, a3, a4, MEMORY[0x277CE14B8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2589E182C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2589E16B0(0, a2, a3, MEMORY[0x277CE14B8]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2589E189C(uint64_t a1, uint64_t a2)
{
  sub_2589E075C(0, &qword_27F96D340, &qword_27F96D348, sub_2589E07E4, sub_2589E09F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589E1938(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2589E1998(uint64_t a1)
{
  sub_2589E075C(0, &qword_27F96D340, &qword_27F96D348, sub_2589E07E4, sub_2589E09F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2589E1A2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2589E1A94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2589E1AF4(uint64_t a1, uint64_t a2)
{
  sub_2589BF7E8(0, &qword_27F96CF28, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589E1B84(uint64_t a1)
{
  sub_2589BF7E8(0, &qword_27F96CF28, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2589E1C0C()
{
  result = qword_27F96D420;
  if (!qword_27F96D420)
  {
    sub_2589E1D3C();
    sub_2589E0FF0();
    sub_258B00C14();
    sub_2589E1254();
    sub_2589E0FA8(&qword_27F96D410, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_2589E0FA8(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D420);
  }

  return result;
}

void sub_2589E1D3C()
{
  if (!qword_27F96D428)
  {
    sub_2589E1180();
    sub_258B017D4();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D428);
    }
  }
}

uint64_t sub_2589E1DA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_2589E1E00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2589E1E7C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v69 = a3;
  v73 = sub_258B01534();
  v71 = *(v73 - 8);
  v5 = *(v71 + 64);
  MEMORY[0x28223BE20](v73);
  v68 = &v62[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2589E2BC8();
  v70 = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v62[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2589E2B44();
  v74 = v11;
  v72 = *(v11 - 8);
  v12 = *(v72 + 64);
  MEMORY[0x28223BE20](v11);
  v67 = &v62[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2589E2A88();
  v76 = *(v14 - 8);
  v77 = v14;
  v15 = *(v76 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v75 = &v62[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v79 = &v62[-v18];
  v19 = type metadata accessor for StateOfMindCalendarTip();
  v20 = swift_allocBox();
  v22 = v21;
  LOBYTE(v83) = 0;
  sub_2589E3604(0, &qword_27F96D4A0, MEMORY[0x277CE19F8], MEMORY[0x277D84560]);
  v23 = *(sub_258B00404() - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  *(swift_allocObject() + 16) = xmmword_258B2C470;
  sub_258B003F4();
  sub_258B00454();
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v83 = sub_258AFFD94();
  v84 = v26;
  sub_2589BFF58();
  v27 = sub_258B01B44();
  v29 = v28;
  v31 = v30;
  v66 = sub_258B01AD4();
  v64 = v32;
  v63 = v33;
  v65 = v34;
  sub_2589BFFAC(v27, v29, v31 & 1);

  v35 = swift_allocObject();
  *(v35 + 16) = v20;
  *(v35 + 24) = a1 & 1;
  *(v35 + 32) = a2;
  sub_2589E2C94();
  sub_2589E2DAC();

  sub_258B02174();
  LODWORD(v27) = sub_258B014A4();
  v36 = sub_258B01494();
  v78 = v20;
  v37 = v70;
  v38 = &v10[*(v70 + 36)];
  *v38 = v27;
  v38[1] = v36;
  swift_beginAccess();
  v85 = v19;
  v86 = sub_2589E2FA8(&qword_27F96D4A8, type metadata accessor for StateOfMindCalendarTip);
  v39 = __swift_allocate_boxed_opaque_existential_1(&v83);
  sub_2589E3514(v22, v39);
  v81 = a1 & 1;
  v82 = a2;
  sub_2589E3A34(0, &qword_27F96D310, MEMORY[0x277CE10B8]);
  sub_258B02144();
  v40 = sub_258B02164();
  v41 = v68;
  *v68 = v40;
  v42 = v71;
  v43 = v73;
  (*(v71 + 104))(v41, *MEMORY[0x277CDE248], v73);
  v61 = sub_2589E2EC8();
  v44 = v67;
  sub_258B01B74();

  (*(v42 + 8))(v41, v43);
  sub_2589A61DC(v10);
  sub_2589E3578(&v83);

  v83 = v37;
  v84 = v61;
  swift_getOpaqueTypeConformance2();
  v45 = v79;
  v46 = v74;
  sub_258B01B64();

  (*(v72 + 8))(v44, v46);
  LOBYTE(v83) = v63 & 1;
  LOBYTE(v80) = 1;
  v81 = 0;
  v48 = v75;
  v47 = v76;
  v49 = *(v76 + 16);
  v50 = v45;
  v51 = v77;
  v49(v75, v50, v77);
  v52 = v83;
  v53 = v80;
  v54 = v81;
  v55 = v69;
  v56 = v66;
  v57 = v64;
  *v69 = v66;
  v55[1] = v57;
  *(v55 + 16) = v52;
  v55[3] = v65;
  *(v55 + 32) = v53;
  *(v55 + 33) = v54;
  sub_2589E29C0();
  v49(v55 + *(v58 + 48), v48, v51);
  sub_2589E36D4(v56, v57, v52);
  v59 = *(v47 + 8);
  sub_258B003E4();
  v59(v79, v51);
  v59(v48, v51);
  sub_2589BFFAC(v56, v57, v83);
}

uint64_t sub_2589E2680()
{
  type metadata accessor for StateOfMindCalendarTip();
  swift_projectBox();
  swift_beginAccess();
  sub_2589E36E4();
  sub_258B00434();
  swift_endAccess();
  sub_2589E3A34(0, &qword_27F96D310, MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

uint64_t sub_2589E2740@<X0>(uint64_t a1@<X8>)
{
  sub_258B02084();
  sub_258B01E44();

  sub_2589E2C94();
  v3 = (a1 + *(v2 + 36));
  sub_2589E3604(0, &qword_27F96D398, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
  v5 = *(v4 + 28);
  v6 = *MEMORY[0x277CE1048];
  v7 = sub_258B020B4();
  (*(*(v7 - 8) + 104))(v3 + v5, v6, v7);
  result = swift_getKeyPath();
  *v3 = result;
  return result;
}

uint64_t sub_2589E2860()
{
  type metadata accessor for StateOfMindCalendarTip();
  swift_projectBox();
  swift_beginAccess();
  sub_2589E36E4();
  sub_258B00434();
  return swift_endAccess();
}

uint64_t sub_2589E28CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  *a1 = sub_258B01004();
  *(a1 + 8) = 0x4008000000000000;
  *(a1 + 16) = 0;
  sub_2589E2928();
  return sub_2589E1E7C(v3, v4, (a1 + *(v5 + 44)));
}

void sub_2589E2928()
{
  if (!qword_27F96D430)
  {
    sub_2589E3604(255, &qword_27F96D438, sub_2589E29C0, MEMORY[0x277CE14B8]);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D430);
    }
  }
}

void sub_2589E29C0()
{
  if (!qword_27F96D440)
  {
    sub_2589E2A30();
    sub_2589E2A88();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96D440);
    }
  }
}

void sub_2589E2A30()
{
  if (!qword_27F96D1F8)
  {
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D1F8);
    }
  }
}

void sub_2589E2A88()
{
  if (!qword_27F96D448)
  {
    sub_2589E2B44();
    sub_2589E2BC8();
    sub_2589E2EC8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D448);
    }
  }
}

void sub_2589E2B44()
{
  if (!qword_27F96D450)
  {
    sub_2589E2BC8();
    sub_2589E2EC8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D450);
    }
  }
}

void sub_2589E2BC8()
{
  if (!qword_27F96D458)
  {
    sub_2589E2C30();
    sub_2589E2E5C();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D458);
    }
  }
}

void sub_2589E2C30()
{
  if (!qword_27F96D460)
  {
    sub_2589E2C94();
    sub_2589E2DAC();
    v0 = sub_258B021B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D460);
    }
  }
}

void sub_2589E2C94()
{
  if (!qword_27F96D468)
  {
    sub_2589E2D2C();
    sub_2589E3604(255, &qword_27F96D398, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D468);
    }
  }
}

void sub_2589E2D2C()
{
  if (!qword_27F96D470)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D470);
    }
  }
}

unint64_t sub_2589E2DAC()
{
  result = qword_27F96D478;
  if (!qword_27F96D478)
  {
    sub_2589E2C94();
    swift_getOpaqueTypeConformance2();
    sub_2589E0CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D478);
  }

  return result;
}

void sub_2589E2E5C()
{
  if (!qword_27F96D480)
  {
    v0 = sub_258B015F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D480);
    }
  }
}

unint64_t sub_2589E2EC8()
{
  result = qword_27F96D488;
  if (!qword_27F96D488)
  {
    sub_2589E2BC8();
    sub_2589E2FA8(&qword_27F96D490, sub_2589E2C30);
    sub_2589E2FA8(&qword_27F96D498, sub_2589E2E5C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D488);
  }

  return result;
}

uint64_t sub_2589E2FA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for StateOfMindCalendarTip()
{
  result = qword_27F96D4C8;
  if (!qword_27F96D4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2589E303C@<X0>(uint64_t *a1@<X8>)
{
  sub_2589E3A34(0, &qword_27F96D4F8, MEMORY[0x277CC90E8]);
  a1[3] = v2;
  a1[4] = sub_2589E3A88(&qword_27F96D500);
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_2589E3A88(&qword_27F96D508);
  return sub_258AFFDA4();
}

uint64_t sub_2589E30FC()
{
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  sub_258AFFD94();
  sub_2589BFF58();
  return sub_258B01B44();
}

uint64_t sub_2589E31A8()
{
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  sub_258AFFD94();
  sub_2589BFF58();
  return sub_258B01B44();
}

uint64_t sub_2589E3254()
{
  type metadata accessor for MentalHealthUIRepresentative();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return sub_258B020D4();
}

uint64_t sub_2589E32D4()
{
  sub_2589E36E4();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_258B00414();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v0, v2);
  sub_258B00424();
  sub_258B003D4();
  (*(v8 + 8))(v11, v7);
  v12 = sub_258B003E4();

  return v12;
}

uint64_t sub_2589E3494@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2589E2FA8(&qword_27F96D4A8, type metadata accessor for StateOfMindCalendarTip);
  result = MEMORY[0x259C909A0](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_2589E3504()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_2589E2680();
}

uint64_t sub_2589E3514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateOfMindCalendarTip();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589E3578(uint64_t a1)
{
  sub_2589E3604(0, &qword_27F96D4B0, sub_2589E3668, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2589E3604(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2589E3668()
{
  result = qword_27F96D4B8;
  if (!qword_27F96D4B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F96D4B8);
  }

  return result;
}

uint64_t sub_2589E36D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_258B003E4();
  }
}

void sub_2589E36E4()
{
  if (!qword_27F96D4C0)
  {
    v0 = sub_258B00444();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D4C0);
    }
  }
}

uint64_t sub_2589E3768(uint64_t a1)
{
  v2 = sub_258B020B4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_258B00D04();
}

void sub_2589E3858()
{
  sub_2589E36E4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2589E38C4()
{
  if (!qword_27F96D4E0)
  {
    sub_2589E3604(255, &qword_27F96D438, sub_2589E29C0, MEMORY[0x277CE14B8]);
    sub_2589E3958();
    v0 = sub_258B021D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D4E0);
    }
  }
}

unint64_t sub_2589E3958()
{
  result = qword_27F96D4E8;
  if (!qword_27F96D4E8)
  {
    sub_2589E3604(255, &qword_27F96D438, sub_2589E29C0, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D4E8);
  }

  return result;
}

void sub_2589E3A34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2589E3A88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2589E3A34(255, &qword_27F96D4F8, MEMORY[0x277CC90E8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for StateOfMindEntryView_iOS()
{
  result = qword_27F96D510;
  if (!qword_27F96D510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589E3B5C()
{
  sub_2589E3D24();
  if (v0 <= 0x3F)
  {
    sub_2589C0D10();
    if (v1 <= 0x3F)
    {
      sub_2589E3DB8();
      if (v2 <= 0x3F)
      {
        sub_2589EE73C(319, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_2589EF00C(319, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_2589EF00C(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_2589EF00C(319, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_2589E3D24()
{
  if (!qword_27F96D520)
  {
    type metadata accessor for StateOfMindEntryModel(255);
    sub_2589EECE0(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel);
    v0 = sub_258B00A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D520);
    }
  }
}

void sub_2589E3DB8()
{
  if (!qword_27F96D528)
  {
    sub_2589EE73C(255, &qword_27F96C960, &type metadata for StateOfMindEntryPhaseType, MEMORY[0x277D83940]);
    v0 = sub_258B02154();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D528);
    }
  }
}

uint64_t _s14MentalHealthUI24StateOfMindVisualizationV20ValenceImageProviderV0I5ScaleO9hashValueSivg_0()
{
  v1 = *v0;
  sub_258B03514();
  MEMORY[0x259C93B20](v1);
  return sub_258B03554();
}

uint64_t sub_2589E3EA8()
{
  v1 = *v0;
  sub_258B03514();
  MEMORY[0x259C93B20](v1);
  return sub_258B03554();
}

unint64_t sub_2589E3EEC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2589EF28C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2589E3F28()
{
  result = qword_27F96D530;
  if (!qword_27F96D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D530);
  }

  return result;
}

uint64_t sub_2589E3F98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EF00C(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for StateOfMindEntryView_iOS();
  sub_2589EE78C(v1 + *(v12 + 44), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_258B008A4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_258B02E94();
    v16 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2589E41AC()
{
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  sub_2589E3DB8();
  sub_258B02124();
  v1 = *(v4 + 16);
  if (v1)
  {
    v2 = *(v4 + v1 + 31);
  }

  else
  {

    return *(v0 + *(type metadata accessor for StateOfMindEntryView_iOS() + 56));
  }

  return v2;
}

uint64_t sub_2589E4224@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  sub_2589EB894();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  MEMORY[0x28223BE20](v3);
  v54 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EB84C(0);
  v60 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 48);
  v70 = *(v1 + 40);
  *&v71 = v10;
  sub_2589E3DB8();
  sub_258B02144();
  v70 = v65;
  v71 = v66;
  v64 = v1;
  sub_2589EE73C(0, &qword_27F96C960, &type metadata for StateOfMindEntryPhaseType, MEMORY[0x277D83940]);
  v59 = v11;
  sub_2589EBBA0();
  v58 = v12;
  v57 = sub_2589EE5F0(&qword_27F96D758, &qword_27F96C960, &type metadata for StateOfMindEntryPhaseType);
  v56 = sub_2589EE5F0(&qword_27F96D760, &qword_27F96C960, &type metadata for StateOfMindEntryPhaseType);
  v55 = sub_2589EE5F0(&qword_27F96D768, &qword_27F96C960, &type metadata for StateOfMindEntryPhaseType);
  sub_2589EBE64();
  v14 = v13;
  sub_2589EC0DC();
  v53 = v15;
  sub_2589EC324();
  v52 = v16;
  sub_2589ED110(255, &qword_27F96D628, sub_2589ECCFC, sub_2589ECDD0, sub_2589EDA24);
  v18 = v17;
  sub_2589EC484();
  v20 = v19;
  sub_2589EC5AC(255);
  v22 = v21;
  sub_2589EC7FC();
  v24 = v23;
  sub_2589EC87C();
  v26 = v25;
  v27 = sub_2589EC920();
  v65 = MEMORY[0x277CE1350];
  *&v66 = MEMORY[0x277CE1340];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = sub_258B024B4();
  v65 = v22;
  *&v66 = v29;
  *(&v66 + 1) = v27;
  v67 = MEMORY[0x277CE1320];
  v30 = swift_getOpaqueTypeConformance2();
  v65 = v22;
  *&v66 = v24;
  v31 = v54;
  *(&v66 + 1) = v26;
  v67 = v27;
  v68 = OpaqueTypeConformance2;
  v69 = v30;
  v32 = swift_getOpaqueTypeConformance2();
  v65 = v20;
  *&v66 = v32;
  v33 = swift_getOpaqueTypeConformance2();
  sub_2589ECCFC(255);
  v35 = v34;
  sub_2589ECDD0();
  v37 = v36;
  v38 = sub_2589EDA24();
  v65 = v37;
  *&v66 = v38;
  v39 = swift_getOpaqueTypeConformance2();
  v65 = v35;
  *&v66 = v39;
  v40 = swift_getOpaqueTypeConformance2();
  v65 = v52;
  *&v66 = v18;
  *(&v66 + 1) = v33;
  v67 = v40;
  v41 = swift_getOpaqueTypeConformance2();
  v65 = v53;
  *&v66 = v41;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = sub_2589EDB48();
  v65 = v14;
  *&v66 = &type metadata for StateOfMindEntryPhaseType;
  *(&v66 + 1) = v14;
  v67 = v42;
  v68 = v43;
  v69 = v42;
  swift_getOpaqueTypeConformance2();
  sub_258B00B14();
  v44 = sub_2589E50FC();
  KeyPath = swift_getKeyPath();
  if (v44)
  {
    v65 = v44;

    v46 = sub_258B00864();
  }

  else
  {
    v46 = 0;
  }

  v48 = v61;
  v47 = v62;
  (*(v61 + 16))(v9, v31, v62);

  v49 = &v9[*(v60 + 36)];
  *v49 = KeyPath;
  v49[1] = v46;
  (*(v48 + 8))(v31, v47);
  v50 = *(v2 + 32);
  sub_2589EDC18();
  sub_258B01E04();
  return sub_2589EF0D8(v9, sub_2589EB84C);
}

uint64_t sub_2589E47C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for StateOfMindEntryView_iOS();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_2589EBE64();
  v8 = v7;
  v43 = *(v7 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589E4BE4(*(a1 + *(v4 + 64)), v11);
  sub_2589EF1C4(a1, &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_2589EDD50(&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_2589EC0DC();
  v42 = v14;
  sub_2589EC324();
  v41 = v15;
  sub_2589ED110(255, &qword_27F96D628, sub_2589ECCFC, sub_2589ECDD0, sub_2589EDA24);
  v17 = v16;
  sub_2589EC484();
  v19 = v18;
  sub_2589EC5AC(255);
  v21 = v20;
  sub_2589EC7FC();
  v23 = v22;
  sub_2589EC87C();
  v25 = v24;
  v26 = sub_2589EC920();
  v45 = MEMORY[0x277CE1350];
  v46 = MEMORY[0x277CE1340];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_258B024B4();
  v45 = v21;
  v46 = v28;
  v47 = v26;
  v48 = MEMORY[0x277CE1320];
  v29 = swift_getOpaqueTypeConformance2();
  v45 = v21;
  v46 = v23;
  v47 = v25;
  v48 = v26;
  v49 = OpaqueTypeConformance2;
  v50 = v29;
  v30 = swift_getOpaqueTypeConformance2();
  v45 = v19;
  v46 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  sub_2589ECCFC(255);
  v33 = v32;
  sub_2589ECDD0();
  v35 = v34;
  v36 = sub_2589EDA24();
  v45 = v35;
  v46 = v36;
  v37 = swift_getOpaqueTypeConformance2();
  v45 = v33;
  v46 = v37;
  v38 = swift_getOpaqueTypeConformance2();
  v45 = v41;
  v46 = v17;
  v47 = v31;
  v48 = v38;
  v39 = swift_getOpaqueTypeConformance2();
  v45 = v42;
  v46 = v39;
  swift_getOpaqueTypeConformance2();
  sub_2589EDB48();
  sub_258B01DA4();

  return (*(v43 + 8))(v11, v8);
}

uint64_t sub_2589E4BE4@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v53 = a1;
  sub_2589ECCFC(0);
  v5 = v4;
  v50 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EC5AC(0);
  v11 = v10;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EC0DC();
  v16 = *(v15 - 8);
  v51 = v15;
  v52 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589E5A9C(a1, v2, v14);
  v20 = *(v2 + 80);
  LOBYTE(v55) = *(v2 + 72);
  v56 = v20;
  sub_2589EE73C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02124();
  sub_2589E849C(a1, (v61 & 1) == 0, v9);
  sub_2589E89DC(v9, v19);
  (*(v6 + 8))(v9, v5);
  sub_2589EF0D8(v14, sub_2589EC5AC);
  sub_2589EF00C(0, &qword_27F96D770, MEMORY[0x277CDDB68], MEMORY[0x277D84560]);
  v21 = *(sub_258B00C74() - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_258B2C470;
  sub_258B00C64();
  sub_2589EC324();
  v26 = v25;
  sub_2589ED110(255, &qword_27F96D628, sub_2589ECCFC, sub_2589ECDD0, sub_2589EDA24);
  v28 = v27;
  sub_2589EC484();
  v30 = v29;
  sub_2589EC7FC();
  v32 = v31;
  sub_2589EC87C();
  v34 = v33;
  v35 = sub_2589EC920();
  v55 = MEMORY[0x277CE1350];
  v56 = MEMORY[0x277CE1340];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_258B024B4();
  v55 = v11;
  v56 = v37;
  v57 = v35;
  v58 = MEMORY[0x277CE1320];
  v38 = swift_getOpaqueTypeConformance2();
  v55 = v11;
  v56 = v32;
  v57 = v34;
  v58 = v35;
  v59 = OpaqueTypeConformance2;
  v60 = v38;
  v39 = swift_getOpaqueTypeConformance2();
  v55 = v30;
  v56 = v39;
  v40 = swift_getOpaqueTypeConformance2();
  sub_2589ECDD0();
  v42 = v41;
  v43 = sub_2589EDA24();
  v55 = v42;
  v56 = v43;
  v44 = swift_getOpaqueTypeConformance2();
  v55 = v50;
  v56 = v44;
  v45 = swift_getOpaqueTypeConformance2();
  v55 = v26;
  v56 = v28;
  v57 = v40;
  v58 = v45;
  v46 = swift_getOpaqueTypeConformance2();
  if (v53 == 5)
  {
    v47 = 2;
  }

  else
  {
    v47 = 1;
  }

  v48 = v51;
  MEMORY[0x259C92310](v47, v24, v51, v46);

  return (*(v52 + 8))(v19, v48);
}

uint64_t sub_2589E50FC()
{
  v1 = sub_258B006A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2589E41AC();
  if (!v6)
  {
    return v6;
  }

  if (v6 == 1)
  {
    v7 = type metadata accessor for StateOfMindEntryView_iOS();
    v8 = 0.0;
  }

  else
  {
    v10 = *(v0 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    v8 = *&v13[1];
    v7 = type metadata accessor for StateOfMindEntryView_iOS();
  }

  v11 = v0 + *(v7 + 48);
  sub_258AC14E8(v5);
  v9 = sub_258A82B60(v5, v8);
  (*(v2 + 8))(v5, v1);
  return v9;
}

uint64_t sub_2589E529C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v36 = a2;
  v5 = type metadata accessor for IntroPhaseSpecs();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_258B008E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_258B00384();
  v13 = *(v34 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v34);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00364();
  (*(v9 + 16))(v12, a1, v8);
  v17 = sub_258B00374();
  v18 = sub_258B02E74();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = a3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v32 = a1;
    v22 = v21;
    v37 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_2589F1F78(0xD000000000000018, 0x8000000258B2CB00, &v37);
    *(v20 + 12) = 2048;
    sub_258B008C4();
    v24 = v23;
    (*(v9 + 8))(v12, v8);
    *(v20 + 14) = v24;
    _os_log_impl(&dword_2589A1000, v17, v18, "[%s] Height: %f", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x259C945C0](v22, -1, -1);
    v25 = v20;
    a3 = v33;
    MEMORY[0x259C945C0](v25, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  (*(v13 + 8))(v16, v34);
  v26 = type metadata accessor for StateOfMindEntryView_iOS();
  v27 = v35;
  v28 = v36 + *(v26 + 52);
  sub_258AC151C(v35);
  sub_258B008C4();
  v30 = v29;
  result = sub_2589EF22C(v27, type metadata accessor for IntroPhaseSpecs);
  *a3 = v30 <= 600.0;
  return result;
}

uint64_t sub_2589E55F0(char *a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  v3 = *a1;
  sub_2589EE73C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

uint64_t sub_2589E5668@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StateOfMindEntryView_iOS();
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2589EB7BC(0);
  v6 = v5;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EF390(0, &qword_27F96D740, sub_2589EB804, sub_2589EB7BC, MEMORY[0x277CE0330]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v32 - v12;
  sub_2589EB804(0);
  v34 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32))
  {
    sub_2589E4224(v9);
    sub_2589EF1C4(v1, v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
    v32[1] = a1;
    v19 = *(v33 + 80);
    v33 = v6;
    v20 = (v19 + 16) & ~v19;
    v21 = swift_allocObject();
    sub_2589EDD50(v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    sub_2589EF1C4(v1, v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
    v22 = swift_allocObject();
    sub_2589EDD50(v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v20);
    v23 = &v9[*(v33 + 36)];
    *v23 = sub_2589EDDB4;
    v23[1] = v21;
    v23[2] = sub_2589EE170;
    v23[3] = v22;
    sub_2589EF070(v9, v13, sub_2589EB7BC);
    swift_storeEnumTagMultiPayload();
    sub_2589EB84C(255);
    v25 = v24;
    v26 = sub_2589EDC18();
    v35 = v25;
    v36 = v26;
    swift_getOpaqueTypeConformance2();
    sub_2589EE1E0();
    sub_258B012A4();
    return sub_2589EF0D8(v9, sub_2589EB7BC);
  }

  else
  {
    sub_2589E4224(v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = v34;
    (*(v15 + 16))(v13, v18, v34);
    swift_storeEnumTagMultiPayload();
    sub_2589EB84C(255);
    v30 = v29;
    v31 = sub_2589EDC18();
    v35 = v30;
    v36 = v31;
    swift_getOpaqueTypeConformance2();
    sub_2589EE1E0();
    sub_258B012A4();
    return (*(v15 + 8))(v18, v28);
  }
}

uint64_t sub_2589E5A9C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LODWORD(v183) = a1;
  v182 = a3;
  v171 = type metadata accessor for NotificationsSetupPhase_iOS();
  v4 = *(*(v171 - 8) + 64);
  MEMORY[0x28223BE20](v171);
  v6 = (&v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x277CE0330];
  sub_2589EF390(0, &qword_27F96D788, type metadata accessor for DomainsSelectionPhase_iOS, type metadata accessor for NotificationsSetupPhase_iOS, MEMORY[0x277CE0330]);
  v166 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v170 = &v150 - v10;
  sub_2589EC7B4(0);
  v181 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v172 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for DomainsSelectionPhase_iOS();
  v14 = *(*(v168 - 8) + 64);
  MEMORY[0x28223BE20](v168);
  v16 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for LabelsSelectionPhase_iOS();
  v17 = *(*(v165 - 8) + 64);
  MEMORY[0x28223BE20](v165);
  v155 = (&v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2589EF390(0, &qword_27F96D790, type metadata accessor for ValenceSelectionPhase_iOS, type metadata accessor for LabelsSelectionPhase_iOS, v7);
  v160 = v19;
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v164 = &v150 - v21;
  sub_2589EC76C(0);
  v177 = v22;
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v167 = &v150 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for ValenceSelectionPhase_iOS();
  v25 = *(*(v162 - 8) + 64);
  MEMORY[0x28223BE20](v162);
  v27 = &v150 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_258B00084();
  v153 = *(v154 - 8);
  v28 = *(v153 + 64);
  v29 = MEMORY[0x28223BE20](v154);
  v152 = &v150 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v151 = &v150 - v31;
  v163 = type metadata accessor for ReflectiveIntervalSelectionPhase_iOS();
  v32 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  v34 = &v150 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EC6B8();
  v169 = v35;
  v157 = *(v35 - 8);
  v36 = *(v157 + 64);
  MEMORY[0x28223BE20](v35);
  v156 = &v150 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EF390(0, &qword_27F96D798, sub_2589EC628, sub_2589EC7B4, v7);
  v179 = v38;
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v180 = &v150 - v40;
  sub_2589EF390(0, &qword_27F96D7A0, sub_2589EC670, sub_2589EC76C, v7);
  v173 = v41;
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v175 = &v150 - v43;
  sub_2589EF390(0, &qword_27F96D7A8, type metadata accessor for IntroPhase_iOS, sub_2589EC6B8, v7);
  v158 = v44;
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v159 = &v150 - v46;
  sub_2589EC670(0);
  v174 = v47;
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v161 = &v150 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EC628(0);
  v178 = v50;
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v176 = &v150 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for StateOfMindEntryView_iOS();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v56 = type metadata accessor for IntroPhase_iOS();
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x28223BE20](v56);
  v60 = (&v150 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = *(a2 + 8);
  if (v183 > 2u)
  {
    if (v183 == 3)
    {
      v116 = *(a2 + 96);
      LOBYTE(v184) = *(a2 + 88);
      *(&v184 + 1) = v116;
      sub_2589EE73C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);

      sub_258B02124();
      v117 = v186;
      v118 = *(a2 + 32);
      sub_2589EF1C4(a2, &v150 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
      v119 = (*(v54 + 80) + 16) & ~*(v54 + 80);
      v120 = swift_allocObject();
      sub_2589EDD50(&v150 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), v120 + v119);
      type metadata accessor for StateOfMindEntryModel(0);
      sub_2589EECE0(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel);
      v121 = sub_258B00A24();
      v122 = v155;
      *v155 = v121;
      *(v122 + 8) = v123;
      *(v122 + 16) = v117;
      *(v122 + 17) = v118;
      *(v122 + 24) = sub_2589EEF44;
      *(v122 + 32) = v120;
      v124 = v165;
      v125 = *(v165 + 32);
      *(v122 + v125) = swift_getKeyPath();
      v126 = MEMORY[0x277CDF458];
      sub_2589EF00C(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      v127 = *(v124 + 36);
      *(v122 + v127) = swift_getKeyPath();
      sub_2589EF00C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], v126);
      swift_storeEnumTagMultiPayload();
      sub_2589EF1C4(v122, v164, type metadata accessor for LabelsSelectionPhase_iOS);
      swift_storeEnumTagMultiPayload();
      sub_2589EECE0(&qword_27F96D600, type metadata accessor for ValenceSelectionPhase_iOS);
      sub_2589EECE0(&qword_27F96D608, type metadata accessor for LabelsSelectionPhase_iOS);
      v128 = v167;
      sub_258B012A4();
      sub_2589EF1C4(v128, v175, sub_2589EC76C);
      swift_storeEnumTagMultiPayload();
      sub_2589ECA24();
      sub_2589ECB3C();
      v129 = v176;
      sub_258B012A4();
      sub_2589EF22C(v128, sub_2589EC76C);
      sub_2589EF070(v129, v180, sub_2589EC628);
      swift_storeEnumTagMultiPayload();
      sub_2589EC9DC();
      sub_2589ECC1C();
      sub_258B012A4();
      sub_2589EF0D8(v129, sub_2589EC628);
      v104 = type metadata accessor for LabelsSelectionPhase_iOS;
      v105 = v122;
    }

    else if (v183 == 4)
    {
      v87 = *(a2 + 80);
      LOBYTE(v186) = *(a2 + 72);
      v187 = v87;
      sub_2589EE73C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);

      sub_258B02144();
      v177 = *(&v184 + 1);
      v183 = v184;
      LODWORD(v176) = v185;
      v88 = *(a2 + 96);
      LOBYTE(v184) = *(a2 + 88);
      *(&v184 + 1) = v88;
      sub_258B02124();
      v89 = v186;
      v90 = *(a2 + 32);
      sub_2589EF1C4(a2, &v150 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
      v91 = (*(v54 + 80) + 16) & ~*(v54 + 80);
      v92 = swift_allocObject();
      sub_2589EDD50(&v150 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), v92 + v91);
      type metadata accessor for StateOfMindEntryModel(0);
      sub_2589EECE0(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel);
      *v16 = sub_258B00A24();
      *(v16 + 1) = v93;
      v94 = v177;
      *(v16 + 2) = v183;
      *(v16 + 3) = v94;
      v16[32] = v176;
      v16[33] = v89;
      v16[34] = v90;
      *(v16 + 5) = sub_2589EEF3C;
      *(v16 + 6) = v92;
      v95 = v168;
      v96 = *(v168 + 36);
      *&v16[v96] = swift_getKeyPath();
      v97 = MEMORY[0x277CDF458];
      sub_2589EF00C(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      v98 = v95[10];
      *&v16[v98] = swift_getKeyPath();
      sub_2589EF00C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], v97);
      swift_storeEnumTagMultiPayload();
      v99 = &v16[v95[11]];
      v186 = 0;
      sub_258B02114();
      v100 = *(&v184 + 1);
      *v99 = v184;
      *(v99 + 1) = v100;
      v101 = &v16[v95[12]];
      v186 = 0;
      sub_258B02114();
      v102 = *(&v184 + 1);
      *v101 = v184;
      *(v101 + 1) = v102;
      sub_2589EF1C4(v16, v170, type metadata accessor for DomainsSelectionPhase_iOS);
      swift_storeEnumTagMultiPayload();
      sub_2589EECE0(&qword_27F96D618, type metadata accessor for DomainsSelectionPhase_iOS);
      sub_2589EECE0(&qword_27F96D620, type metadata accessor for NotificationsSetupPhase_iOS);
      v103 = v172;
      sub_258B012A4();
      sub_2589EF1C4(v103, v180, sub_2589EC7B4);
      swift_storeEnumTagMultiPayload();
      sub_2589EC9DC();
      sub_2589ECC1C();
      sub_258B012A4();
      sub_2589EF22C(v103, sub_2589EC7B4);
      v104 = type metadata accessor for DomainsSelectionPhase_iOS;
      v105 = v16;
    }

    else
    {
      sub_2589EF1C4(a2, &v150 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
      v142 = (*(v54 + 80) + 16) & ~*(v54 + 80);
      v143 = swift_allocObject();
      sub_2589EDD50(&v150 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), v143 + v142);
      type metadata accessor for StateOfMindEntryModel(0);
      sub_2589EECE0(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel);

      *v6 = sub_258B00A24();
      v6[1] = v144;
      v6[2] = sub_2589EEF24;
      v6[3] = v143;
      v145 = v171;
      v146 = *(v171 + 24);
      *(v6 + v146) = swift_getKeyPath();
      v147 = MEMORY[0x277CDF458];
      sub_2589EF00C(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      v148 = *(v145 + 28);
      *(v6 + v148) = swift_getKeyPath();
      sub_2589EF00C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], v147);
      swift_storeEnumTagMultiPayload();
      sub_2589EF1C4(v6, v170, type metadata accessor for NotificationsSetupPhase_iOS);
      swift_storeEnumTagMultiPayload();
      sub_2589EECE0(&qword_27F96D618, type metadata accessor for DomainsSelectionPhase_iOS);
      sub_2589EECE0(&qword_27F96D620, type metadata accessor for NotificationsSetupPhase_iOS);
      v149 = v172;
      sub_258B012A4();
      sub_2589EF1C4(v149, v180, sub_2589EC7B4);
      swift_storeEnumTagMultiPayload();
      sub_2589EC9DC();
      sub_2589ECC1C();
      sub_258B012A4();
      sub_2589EF22C(v149, sub_2589EC7B4);
      v104 = type metadata accessor for NotificationsSetupPhase_iOS;
      v105 = v6;
    }
  }

  else if (v183)
  {
    if (v183 == 1)
    {
      v62 = *(a2 + 64);
      LOBYTE(v186) = *(a2 + 56);
      v187 = v62;
      v183 = v58;
      sub_2589EE73C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);

      sub_258B02144();
      v63 = v184;
      v64 = v185;
      LODWORD(v172) = *(a2 + 32);
      sub_2589EF1C4(a2, &v150 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
      v65 = (*(v54 + 80) + 16) & ~*(v54 + 80);
      v66 = swift_allocObject();
      sub_2589EDD50(&v150 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), v66 + v65);
      type metadata accessor for StateOfMindEntryModel(0);
      sub_2589EECE0(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel);
      *v34 = sub_258B00A24();
      *(v34 + 1) = v67;
      *(v34 + 1) = v63;
      v34[32] = v64;
      v34[33] = (v172 & 1) == 0;
      *(v34 + 5) = sub_2589EEF54;
      *(v34 + 6) = v66;
      v68 = v163;
      v69 = *(v163 + 32);
      *&v34[v69] = swift_getKeyPath();
      v70 = MEMORY[0x277CDF458];
      sub_2589EF00C(0, &qword_27F96D7C0, MEMORY[0x277CC99E8], MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      v71 = v68[9];
      *&v34[v71] = swift_getKeyPath();
      sub_2589EF00C(0, &qword_27F96D7C8, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, v70);
      swift_storeEnumTagMultiPayload();
      v72 = v68[10];
      *&v34[v72] = swift_getKeyPath();
      sub_2589EF00C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], v70);
      swift_storeEnumTagMultiPayload();
      v73 = v68[11];
      v186 = 1;
      type metadata accessor for __HKStateOfMindReflectiveInterval(0);
      sub_258B02114();
      *&v34[v73] = v184;
      v74 = v68[12];
      v75 = v151;
      sub_258AFFFE4();
      v76 = v153;
      v77 = v154;
      (*(v153 + 16))(v152, v75, v154);
      sub_258B02114();
      (*(v76 + 8))(v75, v77);
      v78 = &v34[v68[13]];
      LOBYTE(v186) = 1;
      sub_258B02114();
      v79 = *(&v184 + 1);
      *v78 = v184;
      *(v78 + 1) = v79;
      v80 = sub_2589EECE0(&qword_27F96D5A8, type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
      v81 = v156;
      sub_258B01E14();
      sub_2589EF22C(v34, type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
      v82 = v157;
      v83 = v169;
      (*(v157 + 16))(v159, v81, v169);
      swift_storeEnumTagMultiPayload();
      sub_2589EECE0(&qword_27F96D5F0, type metadata accessor for IntroPhase_iOS);
      *&v184 = v68;
      *(&v184 + 1) = v80;
      swift_getOpaqueTypeConformance2();
      v84 = v161;
      sub_258B012A4();
      sub_2589EF070(v84, v175, sub_2589EC670);
      swift_storeEnumTagMultiPayload();
      sub_2589ECA24();
      sub_2589ECB3C();
      v85 = v176;
      sub_258B012A4();
      sub_2589EF0D8(v84, sub_2589EC670);
      sub_2589EF070(v85, v180, sub_2589EC628);
      swift_storeEnumTagMultiPayload();
      sub_2589EC9DC();
      sub_2589ECC1C();
      sub_258B012A4();
      sub_2589EF0D8(v85, sub_2589EC628);
      return (*(v82 + 8))(v81, v83);
    }

    v130 = *(a2 + 64);
    LOBYTE(v186) = *(a2 + 56);
    v187 = v130;
    sub_2589EE73C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);

    sub_258B02144();
    v172 = *(&v184 + 1);
    v183 = v184;
    v131 = v185;
    v132 = *(a2 + 96);
    LOBYTE(v184) = *(a2 + 88);
    *(&v184 + 1) = v132;
    sub_258B02124();
    v133 = v186;
    v134 = *(a2 + 32);
    sub_2589EF1C4(a2, &v150 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
    v135 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v136 = swift_allocObject();
    sub_2589EDD50(&v150 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), v136 + v135);
    type metadata accessor for StateOfMindEntryModel(0);
    sub_2589EECE0(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel);
    *v27 = sub_258B00A24();
    *(v27 + 1) = v137;
    v138 = v172;
    *(v27 + 2) = v183;
    *(v27 + 3) = v138;
    v27[32] = v131;
    v27[33] = v133;
    v27[34] = v134;
    *(v27 + 5) = sub_2589EEF4C;
    *(v27 + 6) = v136;
    v139 = *(v162 + 36);
    *&v27[v139] = swift_getKeyPath();
    sub_2589EF00C(0, &qword_27F96D7B8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    sub_2589EF1C4(v27, v164, type metadata accessor for ValenceSelectionPhase_iOS);
    swift_storeEnumTagMultiPayload();
    sub_2589EECE0(&qword_27F96D600, type metadata accessor for ValenceSelectionPhase_iOS);
    sub_2589EECE0(&qword_27F96D608, type metadata accessor for LabelsSelectionPhase_iOS);
    v140 = v167;
    sub_258B012A4();
    sub_2589EF1C4(v140, v175, sub_2589EC76C);
    swift_storeEnumTagMultiPayload();
    sub_2589ECA24();
    sub_2589ECB3C();
    v141 = v176;
    sub_258B012A4();
    sub_2589EF22C(v140, sub_2589EC76C);
    sub_2589EF070(v141, v180, sub_2589EC628);
    swift_storeEnumTagMultiPayload();
    sub_2589EC9DC();
    sub_2589ECC1C();
    sub_258B012A4();
    sub_2589EF0D8(v141, sub_2589EC628);
    v104 = type metadata accessor for ValenceSelectionPhase_iOS;
    v105 = v27;
  }

  else
  {
    v106 = *(a2 + 32);
    v107 = v58;
    sub_2589EF1C4(a2, &v150 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
    v108 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v109 = swift_allocObject();
    sub_2589EDD50(&v150 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), v109 + v108);
    *v60 = swift_getKeyPath();
    sub_2589EF00C(0, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v110 = (v60 + v107[5]);
    type metadata accessor for StateOfMindEntryModel(0);
    sub_2589EECE0(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel);

    *v110 = sub_258B00A24();
    v110[1] = v111;
    *(v60 + v107[6]) = (v106 & 1) == 0;
    v112 = (v60 + v107[7]);
    *v112 = sub_2589EF138;
    v112[1] = v109;
    sub_2589EF1C4(v60, v159, type metadata accessor for IntroPhase_iOS);
    swift_storeEnumTagMultiPayload();
    sub_2589EECE0(&qword_27F96D5F0, type metadata accessor for IntroPhase_iOS);
    v113 = sub_2589EECE0(&qword_27F96D5A8, type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
    *&v184 = v163;
    *(&v184 + 1) = v113;
    swift_getOpaqueTypeConformance2();
    v114 = v161;
    sub_258B012A4();
    sub_2589EF070(v114, v175, sub_2589EC670);
    swift_storeEnumTagMultiPayload();
    sub_2589ECA24();
    sub_2589ECB3C();
    v115 = v176;
    sub_258B012A4();
    sub_2589EF0D8(v114, sub_2589EC670);
    sub_2589EF070(v115, v180, sub_2589EC628);
    swift_storeEnumTagMultiPayload();
    sub_2589EC9DC();
    sub_2589ECC1C();
    sub_258B012A4();
    sub_2589EF0D8(v115, sub_2589EC628);
    v104 = type metadata accessor for IntroPhase_iOS;
    v105 = v60;
  }

  return sub_2589EF22C(v105, v104);
}

uint64_t sub_2589E78F8(void *a1)
{
  result = sub_2589E41AC();
  if (!result)
  {
    v3 = a1[1];
    sub_258A16CF4(1, 0);
    v4 = a1[5];
    v5 = a1[6];
    sub_2589E3DB8();
    sub_258B003E4();

    sub_258B02124();
    v6 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_258A74B6C(0, *(v9 + 16) + 1, 1, v9);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_258A74B6C((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v6[v8 + 32] = 1;
    sub_258B02134();
  }

  return result;
}

uint64_t sub_2589E7A1C(unsigned __int8 a1)
{
  v3 = sub_258B02624();
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = *(v63 + 64);
  MEMORY[0x28223BE20](v3);
  v61 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_258B02654();
  v60 = *(v62 - 8);
  v6 = *(v60 + 64);
  MEMORY[0x28223BE20](v62);
  v59 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StateOfMindEntryView_iOS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = sub_258B02614();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = sub_258B02674();
  v58 = *(v65 - 8);
  v16 = *(v58 + 64);
  v17 = MEMORY[0x28223BE20](v65);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v55 - v20;
  result = sub_2589E41AC();
  if (result == a1)
  {
    v57 = v9;
    v23 = *(v1 + 8);
    v24 = a1;
    if (a1 <= 2u)
    {
      if (a1)
      {
        v25 = v1;
        if (a1 == 1)
        {
          v26 = *(v1 + 8);
          sub_258A16CF4(2, 0);
          swift_getKeyPath();
          swift_getKeyPath();
          aBlock = 0;
          swift_retain_n();
          sub_258B00574();
          swift_getKeyPath();
          swift_getKeyPath();
          aBlock = 0;
          sub_258B00574();
          v28 = *(v25 + 40);
          v27 = *(v25 + 48);
          aBlock = v28;
          v71 = v27;
          sub_2589E3DB8();
          sub_258B003E4();

          sub_258B02124();
          v29 = v69;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_258A74B6C(0, *(v29 + 2) + 1, 1, v29);
          }

          v31 = *(v29 + 2);
          v30 = *(v29 + 3);
          if (v31 >= v30 >> 1)
          {
            v29 = sub_258A74B6C((v30 > 1), v31 + 1, 1, v29);
          }

          *(v29 + 2) = v31 + 1;
          v32 = &v29[v31];
          v33 = 2;
        }

        else
        {
          v51 = *(v1 + 8);
          sub_258A16CF4(3, 0);
          swift_getKeyPath();
          swift_getKeyPath();
          aBlock = MEMORY[0x277D84F90];

          sub_258B00574();
          v28 = *(v25 + 40);
          v27 = *(v25 + 48);
          aBlock = v28;
          v71 = v27;
          sub_2589E3DB8();
          sub_258B003E4();

          sub_258B02124();
          v29 = v69;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_258A74B6C(0, *(v29 + 2) + 1, 1, v29);
          }

          v53 = *(v29 + 2);
          v52 = *(v29 + 3);
          if (v53 >= v52 >> 1)
          {
            v29 = sub_258A74B6C((v52 > 1), v53 + 1, 1, v29);
          }

          *(v29 + 2) = v53 + 1;
          v32 = &v29[v53];
          v33 = 3;
        }
      }

      else
      {
        v43 = v1;
        v44 = *(v1 + 8);
        sub_258A16CF4(1, 0);
        v28 = *(v43 + 40);
        v27 = *(v43 + 48);
        aBlock = v28;
        v71 = v27;
        sub_2589E3DB8();
        sub_258B003E4();

        sub_258B02124();
        v29 = v69;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_258A74B6C(0, *(v29 + 2) + 1, 1, v29);
        }

        v46 = *(v29 + 2);
        v45 = *(v29 + 3);
        if (v46 >= v45 >> 1)
        {
          v29 = sub_258A74B6C((v45 > 1), v46 + 1, 1, v29);
        }

        *(v29 + 2) = v46 + 1;
        v32 = &v29[v46];
        v33 = 1;
      }

LABEL_28:
      v32[32] = v33;
      v67 = v28;
      v68 = v27;
      v66 = v29;
      sub_258B02134();
    }

    if (a1 == 3)
    {
      v47 = v1;
      v48 = *(v1 + 8);
      sub_258A16CF4(4, 0);
      swift_getKeyPath();
      swift_getKeyPath();
      aBlock = MEMORY[0x277D84F90];

      sub_258B00574();
      swift_getKeyPath();
      swift_getKeyPath();
      aBlock = 0;
      v71 = 0xE000000000000000;

      sub_258B00574();
      sub_258A1A924();
      v28 = *(v47 + 40);
      v27 = *(v47 + 48);
      aBlock = v28;
      v71 = v27;
      sub_2589E3DB8();
      sub_258B003E4();

      sub_258B02124();
      v29 = v69;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_258A74B6C(0, *(v29 + 2) + 1, 1, v29);
      }

      v50 = *(v29 + 2);
      v49 = *(v29 + 3);
      if (v50 >= v49 >> 1)
      {
        v29 = sub_258A74B6C((v49 > 1), v50 + 1, 1, v29);
      }

      *(v29 + 2) = v50 + 1;
      v32 = &v29[v50];
      v33 = 4;
      goto LABEL_28;
    }

    v34 = v1;
    if (v24 == 4)
    {
      v35 = *(v1 + 8);
      sub_258A16CF4(5, 0);
      sub_2589E8EFC();
      sub_2589EEBEC();
      v56 = sub_258B02F54();
      sub_258B02664();
      *v15 = 2200;
      (*(v12 + 104))(v15, *MEMORY[0x277D85178], v11);
      MEMORY[0x259C92C80](v19, v15);
      (*(v12 + 8))(v15, v11);
      v58 = *(v58 + 8);
      (v58)(v19, v65);
      sub_2589EF1C4(v34, &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
      v36 = (*(v57 + 80) + 16) & ~*(v57 + 80);
      v37 = swift_allocObject();
      sub_2589EDD50(&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36);
      v74 = sub_2589EEC38;
      v75 = v37;
      aBlock = MEMORY[0x277D85DD0];
      v71 = 1107296256;
      v72 = sub_2589E92FC;
      v73 = &block_descriptor_0;
      v38 = _Block_copy(&aBlock);

      v39 = v59;
      sub_258B02644();
      aBlock = MEMORY[0x277D84F90];
      sub_2589EECE0(&unk_27F96EBD0, MEMORY[0x277D85198]);
      sub_2589EECAC(0);
      sub_2589EECE0(&qword_27F96EBE0, sub_2589EECAC);
      v40 = v61;
      v41 = v64;
      sub_258B03114();
      v42 = v56;
      MEMORY[0x259C93530](v21, v39, v40, v38);
      _Block_release(v38);

      (*(v63 + 8))(v40, v41);
      (*(v60 + 8))(v39, v62);
      return (v58)(v21, v65);
    }

    else
    {
      v54 = *(v1 + 8);
      sub_258A16CF4(9, 0);

      return sub_2589E9340();
    }
  }

  return result;
}

uint64_t sub_2589E8450(uint64_t a1)
{
  result = sub_2589E41AC();
  if (result == 5)
  {
    v3 = *(a1 + 8);
    sub_258A16CF4(9, 0);
    return sub_2589E9340();
  }

  return result;
}

uint64_t sub_2589E849C@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v53 = a1;
  v60 = a3;
  sub_2589ED110(0, &qword_27F96D660, sub_2589ED1D4, sub_2589ED21C, sub_2589ED94C);
  v59 = v4;
  v55 = *(v4 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v52[-v6];
  sub_2589ED1D4(0);
  v9 = v8;
  v54 = *(v8 - 8);
  v10 = *(v54 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v52[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2589ED110(0, &qword_27F96D640, sub_2589ECEC0, sub_2589ECF08, sub_2589ED038);
  v58 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v52[-v16];
  sub_2589ECEC0(0);
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v52[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2589ECDD0();
  v57 = v24;
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v52[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v3 + 32))
  {
    sub_2589EA4FC(v53, v56 & 1, v12);
    sub_2589ED21C(255);
    v29 = v28;
    v30 = sub_2589ED94C();
    v61 = v29;
    v62 = v30;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x259C91A00](v12, v9, OpaqueTypeConformance2);
    sub_2589ECF08(255);
    v33 = v32;
    v34 = sub_2589ED038();
    v61 = v33;
    v62 = v34;
    v35 = swift_getOpaqueTypeConformance2();
    v61 = v19;
    v62 = v35;
    v36 = swift_getOpaqueTypeConformance2();
    v61 = v9;
    v62 = OpaqueTypeConformance2;
    v37 = swift_getOpaqueTypeConformance2();
    v38 = v59;
    MEMORY[0x259C91A20](v7, v58, v59, v36, v37);
    (*(v55 + 8))(v7, v38);
    (*(v54 + 8))(v12, v9);
  }

  else
  {
    sub_2589EA094(v56 & 1, v23);
    sub_2589ECF08(255);
    v40 = v39;
    v41 = sub_2589ED038();
    v61 = v40;
    v62 = v41;
    v42 = swift_getOpaqueTypeConformance2();
    MEMORY[0x259C91A00](v23, v19, v42);
    v61 = v19;
    v62 = v42;
    v43 = swift_getOpaqueTypeConformance2();
    sub_2589ED21C(255);
    v45 = v44;
    v46 = sub_2589ED94C();
    v61 = v45;
    v62 = v46;
    v47 = swift_getOpaqueTypeConformance2();
    v61 = v9;
    v62 = v47;
    v48 = swift_getOpaqueTypeConformance2();
    v49 = v58;
    MEMORY[0x259C91A10](v17, v58, v59, v43, v48);
    (*(v14 + 8))(v17, v49);
    (*(v20 + 8))(v23, v19);
  }

  v50 = sub_2589EDA24();
  MEMORY[0x259C91A00](v27, v57, v50);
  return sub_2589EF0D8(v27, sub_2589ECDD0);
}

uint64_t sub_2589E89DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v52 = a2;
  v48 = sub_258B00FB4();
  v47 = *(v48 - 8);
  v2 = *(v47 + 64);
  MEMORY[0x28223BE20](v48);
  v45 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EC7FC();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EC484();
  v44 = v10;
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EC324();
  v15 = *(v14 - 8);
  v50 = v14;
  v51 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v43 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B024C4();
  v18 = MEMORY[0x277CE1340];
  v19 = MEMORY[0x277CE1350];
  sub_258B010D4();
  sub_2589EC5AC(0);
  v21 = v20;
  sub_2589EC87C();
  v23 = v22;
  v24 = sub_2589EC920();
  v54 = v19;
  v55 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_258B024B4();
  v54 = v21;
  v55 = v26;
  v56 = v24;
  v57 = MEMORY[0x277CE1320];
  v41 = swift_getOpaqueTypeConformance2();
  sub_258B01F14();
  (*(v6 + 8))(v9, v5);
  v27 = v47;
  v28 = v45;
  v29 = v48;
  (*(v47 + 104))(v45, *MEMORY[0x277CDDDC0], v48);
  v54 = v21;
  v55 = v5;
  v56 = v23;
  v57 = v24;
  v58 = OpaqueTypeConformance2;
  v59 = v41;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = v43;
  v32 = v44;
  sub_258B01E24();
  (*(v27 + 8))(v28, v29);
  (*(v46 + 8))(v13, v32);
  v53 = v49;
  sub_2589ED110(0, &qword_27F96D628, sub_2589ECCFC, sub_2589ECDD0, sub_2589EDA24);
  v54 = v32;
  v55 = v30;
  swift_getOpaqueTypeConformance2();
  sub_2589ECCFC(255);
  v34 = v33;
  sub_2589ECDD0();
  v36 = v35;
  v37 = sub_2589EDA24();
  v54 = v36;
  v55 = v37;
  v38 = swift_getOpaqueTypeConformance2();
  v54 = v34;
  v55 = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v50;
  sub_258B01EE4();
  return (*(v51 + 8))(v31, v39);
}

uint64_t sub_2589E8EFC()
{
  v1 = type metadata accessor for StateOfMindEntryView_iOS();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2589EF00C(0, &qword_280DF8930, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16[-v7];
  v9 = *(v0 + 80);
  v16[16] = *(v0 + 72);
  v17 = v9;
  v16[15] = 1;
  sub_2589EE73C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02134();
  v10 = sub_258B02D44();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_2589EF1C4(v0, v4, type metadata accessor for StateOfMindEntryView_iOS);
  sub_258B02D24();
  v11 = sub_258B02D14();
  v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_2589EDD50(v4, v13 + v12);
  sub_258A8F090(0, 0, v8, &unk_258B2CE28, v13);
}

void sub_2589E9144()
{
  v14 = [objc_allocWithZone(MEMORY[0x277D280B8]) init];
  if ([v14 hasEverEnabledAStateOfMindReminderNotification])
  {
    goto LABEL_5;
  }

  v1 = [objc_opt_self() sharedBehavior];
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = [v1 isiPad];

  if ((v3 & 1) != 0 || *(v0 + 32) == 1)
  {
LABEL_5:
    sub_2589E9340();
  }

  else
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    sub_2589E3DB8();
    sub_258B003E4();

    sub_258B02124();
    v6 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_258A74B6C(0, *(v15 + 16) + 1, 1, v15);
    }

    v7 = *(v6 + 2);
    v8 = *(v6 + 3);
    v9 = v7 + 1;
    if (v7 >= v8 >> 1)
    {
      v13 = v7 + 1;
      v10 = v6;
      v11 = *(v6 + 2);
      v12 = sub_258A74B6C((v8 > 1), v7 + 1, 1, v10);
      v7 = v11;
      v9 = v13;
      v6 = v12;
    }

    *(v6 + 2) = v9;
    v6[v7 + 32] = 5;
    sub_258B02134();
  }
}

uint64_t sub_2589E92FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2589E9340()
{
  v1 = v0;
  v2 = sub_258B02624();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258B02654();
  v23 = *(v6 - 8);
  v24 = v6;
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StateOfMindEntryView_iOS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v0[2];
  v14 = v0[3];
  v15 = v0[1];
  v16 = sub_258A16BE4();
  result = v13(v16 & 1);
  if ((result & 1) == 0)
  {
    sub_2589EEBEC();
    v18 = sub_258B02F54();
    sub_2589EF1C4(v1, &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
    v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v20 = swift_allocObject();
    sub_2589EDD50(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
    aBlock[4] = sub_2589EEF0C;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2589E92FC;
    aBlock[3] = &block_descriptor_80;
    v21 = _Block_copy(aBlock);

    sub_258B02644();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2589EECE0(&unk_27F96EBD0, MEMORY[0x277D85198]);
    sub_2589EECAC(0);
    sub_2589EECE0(&qword_27F96EBE0, sub_2589EECAC);
    sub_258B03114();
    MEMORY[0x259C93560](0, v9, v5, v21);
    _Block_release(v21);

    (*(v25 + 8))(v5, v2);
    return (*(v23 + 8))(v9, v24);
  }

  return result;
}

uint64_t sub_2589E96D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_258B02D24();
  v4[4] = sub_258B02D14();
  v6 = sub_258B02CE4();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_2589E9774, v6, v5);
}

uint64_t sub_2589E9774()
{
  v1 = v0[3];
  v0[7] = *(v0[2] + 8);
  v0[8] = sub_258B02D14();
  v3 = sub_258B02CE4();
  v0[9] = v3;
  v0[10] = v2;

  return MEMORY[0x2822009F8](sub_2589E9808, v3, v2);
}

uint64_t sub_2589E9808()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_hasInitiatedSampleSave;
  if (*(v1 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_hasInitiatedSampleSave) == 1)
  {
    v3 = v0[8];

    v4 = v0[5];
    v5 = v0[6];

    return MEMORY[0x2822009F8](sub_2589E9D9C, v4, v5);
  }

  else
  {
    v6 = sub_258A1BB58();
    v0[11] = v6;
    *(v1 + v2) = 1;
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_2589E9910;
    v8 = v0[7];

    return sub_258A1BE40(v6);
  }
}

uint64_t sub_2589E9910()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_2589E9A30, v4, v3);
}

uint64_t sub_2589E9A30()
{
  v1 = *(v0 + 56);
  sub_258A16CF4(7, 0);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_2589E9AD0;
  v3 = *(v0 + 56);

  return sub_258A1CEB0();
}

uint64_t sub_2589E9AD0()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 112) = v4;
  *v4 = v3;
  v4[1] = sub_2589E9C10;
  v5 = *(v1 + 56);

  return sub_258A1D7C4();
}

uint64_t sub_2589E9C10()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v6 = *v0;

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_2589E9D30, v4, v3);
}

uint64_t sub_2589E9D30()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[5];
  v4 = v0[6];

  return MEMORY[0x2822009F8](sub_2589E9D9C, v3, v4);
}

uint64_t sub_2589E9D9C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2589E9DFC(uint64_t a1)
{
  v2 = sub_258B00F84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EF00C(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v20 - v9);
  v11 = sub_258B008A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StateOfMindEntryView_iOS();
  sub_2589EE78C(a1 + *(v16 + 44), v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v17 = *v10;
    sub_258B02E94();
    v18 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_258B00894();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_2589EA094@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_2589C60B0();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258B01384();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_2589C6164();
  v13 = v12;
  v33 = *(v12 - 8);
  v14 = *(v33 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589ECF08(0);
  v35 = v17;
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v32 - v22;
  if (a1)
  {
    v24 = sub_258B01334();
    v32 = a2;
    MEMORY[0x28223BE20](v24);
    *(&v32 - 2) = v2;
    sub_2589ECFF0(0);
    sub_2589C6218();
    sub_258B00784();
    v25 = sub_2589EECE0(&qword_27F96CBA8, sub_2589C6164);
    v26 = v34;
    MEMORY[0x259C91A00](v16, v13, v25);
    (*(v7 + 16))(v21, v26, v6);
    (*(v7 + 56))(v21, 0, 1, v6);
    v36 = v13;
    v37 = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x259C91A30](v21, v6, OpaqueTypeConformance2);
    sub_2589EF0D8(v21, sub_2589ECF08);
    (*(v7 + 8))(v26, v6);
    (*(v33 + 8))(v16, v13);
  }

  else
  {
    (*(v7 + 56))(v21, 1, 1, v6);
    v28 = sub_2589EECE0(&qword_27F96CBA8, sub_2589C6164);
    v36 = v13;
    v37 = v28;
    v29 = swift_getOpaqueTypeConformance2();
    MEMORY[0x259C91A30](v21, v6, v29);
    sub_2589EF0D8(v21, sub_2589ECF08);
  }

  v30 = sub_2589ED038();
  MEMORY[0x259C91A00](v23, v35, v30);
  return sub_2589EF0D8(v23, sub_2589ECF08);
}

uint64_t sub_2589EA4FC@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_2589ED250(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v35 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_258B01384();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  sub_2589ED28C(0);
  v14 = v13;
  v34 = *(v13 - 8);
  v15 = *(v34 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589ED21C(0);
  v36 = v18;
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v33 - v23;
  if (a2)
  {
    v25 = sub_258B01334();
    v33[1] = a3;
    MEMORY[0x28223BE20](v25);
    LOBYTE(v33[-2]) = a1;
    v33[-1] = v33[2];
    sub_2589ED33C(0);
    sub_2589ED6B8();
    sub_258B00784();
    v26 = sub_2589EECE0(&qword_27F96D6F0, sub_2589ED28C);
    v27 = v35;
    MEMORY[0x259C91A00](v17, v14, v26);
    (*(v8 + 16))(v22, v27, v7);
    (*(v8 + 56))(v22, 0, 1, v7);
    v37 = v14;
    v38 = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x259C91A30](v22, v7, OpaqueTypeConformance2);
    sub_2589EF0D8(v22, sub_2589ED21C);
    (*(v8 + 8))(v27, v7);
    (*(v34 + 8))(v17, v14);
  }

  else
  {
    (*(v8 + 56))(v22, 1, 1, v7);
    v29 = sub_2589EECE0(&qword_27F96D6F0, sub_2589ED28C);
    v37 = v14;
    v38 = v29;
    v30 = swift_getOpaqueTypeConformance2();
    MEMORY[0x259C91A30](v22, v7, v30);
    sub_2589EF0D8(v22, sub_2589ED21C);
  }

  v31 = sub_2589ED94C();
  MEMORY[0x259C91A00](v24, v36, v31);
  return sub_2589EF0D8(v24, sub_2589ED21C);
}

uint64_t sub_2589EA974(uint64_t a1)
{
  v2 = type metadata accessor for StateOfMindEntryView_iOS();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_258B026D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EF1C4(a1, v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_2589EDD50(v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_258B026A4();
  v14[1] = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D4BF8);
  v12 = MEMORY[0x277D837D0];
  sub_2589EE73C(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589EE5F0(&qword_280DF8940, &qword_280DF8948, v12);
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D4C18);
  sub_2589EECE0(&qword_27F96CBA0, MEMORY[0x277D126A0]);
  sub_258B01DD4();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2589EAC40(uint64_t a1)
{
  v2 = sub_258B008A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2589E41AC();
  v8 = *(a1 + 8);
  sub_258A16CF4(0x90504030201uLL >> (8 * v7), 1);
  sub_2589E3F98(v6);
  sub_258B00894();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2589EAD44@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v5 = a1;
  sub_2589ED414();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589ED3CC(0);
  v50 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v46 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EF390(0, &qword_27F96D778, sub_2589ED384, sub_2589ED3CC, MEMORY[0x277CE0330]);
  v48 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v49 = &v42 - v14;
  v15 = type metadata accessor for StateOfMindEntryView_iOS();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = sub_258B026B4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589ED384(0);
  v47 = v23;
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EF1C4(a2, &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
  v27 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v28 = v27 + v17;
  if (v5 == 4)
  {
    v29 = swift_allocObject();
    sub_2589EDD50(&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v27);
    *(v29 + v28) = 4;
    sub_258B026A4();
    v52 = &unk_2869D4670;
    sub_2589FC8C8(&unk_2869D4C28);
    v30 = MEMORY[0x277D837D0];
    sub_2589EE73C(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2589EE5F0(&qword_280DF8940, &qword_280DF8948, v30);
    sub_258B02A34();

    sub_2589C68A0(&unk_2869D4C48);
    sub_2589EECE0(&qword_27F96D6D8, MEMORY[0x277D12688]);
    sub_258B01DD4();

    (*(v19 + 8))(v22, v18);
    sub_2589EF1C4(v26, v49, sub_2589ED384);
    swift_storeEnumTagMultiPayload();
    sub_2589ED78C();
    sub_2589ED86C();
    sub_258B012A4();
    return sub_2589EF22C(v26, sub_2589ED384);
  }

  else
  {
    v32 = swift_allocObject();
    sub_2589EDD50(&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v27);
    *(v32 + v28) = a1;
    sub_2589ED538();
    sub_2589ED63C();
    v34 = v33;
    v35 = sub_258B01034();
    v36 = sub_2589EECE0(&qword_27F96D6B8, sub_2589ED63C);
    v37 = sub_2589EECE0(&qword_27F96D6C0, MEMORY[0x277CDDE78]);
    v52 = v34;
    v53 = v35;
    v54 = v36;
    v55 = v37;
    swift_getOpaqueTypeConformance2();
    v38 = v43;
    sub_258B02174();
    v52 = &unk_2869D4670;
    sub_2589FC8C8(&unk_2869D4C58);
    v39 = MEMORY[0x277D837D0];
    sub_2589EE73C(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2589EE5F0(&qword_280DF8940, &qword_280DF8948, v39);
    sub_258B02A34();

    sub_2589C68A0(&unk_2869D4C78);
    sub_2589EECE0(&qword_27F96D6E8, sub_2589ED414);
    v40 = v45;
    v41 = v46;
    sub_258B01DD4();

    (*(v44 + 8))(v38, v40);
    sub_2589EF070(v41, v49, sub_2589ED3CC);
    swift_storeEnumTagMultiPayload();
    sub_2589ED78C();
    sub_2589ED86C();
    sub_258B012A4();
    return sub_2589EF0D8(v41, sub_2589ED3CC);
  }
}

uint64_t sub_2589EB510()
{
  v0 = sub_258B01034();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589ED63C();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v13[0] = sub_258AFFD94();
  v13[1] = v11;
  sub_2589BFF58();
  sub_258B020F4();
  sub_258B01024();
  sub_2589EECE0(&qword_27F96D6B8, sub_2589ED63C);
  sub_2589EECE0(&qword_27F96D6C0, MEMORY[0x277CDDE78]);
  sub_258B01BC4();
  (*(v1 + 8))(v4, v0);
  return (*(v7 + 8))(v10, v6);
}

void sub_2589EB894()
{
  if (!qword_27F96D550)
  {
    sub_2589EE73C(255, &qword_27F96C960, &type metadata for StateOfMindEntryPhaseType, MEMORY[0x277D83940]);
    sub_2589EBBA0();
    sub_2589EBE64();
    sub_2589EC0DC();
    sub_2589EC324();
    sub_2589ED110(255, &qword_27F96D628, sub_2589ECCFC, sub_2589ECDD0, sub_2589EDA24);
    sub_2589EC484();
    sub_2589EC5AC(255);
    sub_2589EC7FC();
    sub_2589EC87C();
    sub_2589EC920();
    swift_getOpaqueTypeConformance2();
    sub_258B024B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2589ECCFC(255);
    sub_2589ECDD0();
    sub_2589EDA24();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2589EDB48();
    swift_getOpaqueTypeConformance2();
    v0 = sub_258B00B34();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D550);
    }
  }
}

void sub_2589EBBA0()
{
  if (!qword_27F96D558)
  {
    sub_2589EBE64();
    sub_2589EC0DC();
    sub_2589EC324();
    sub_2589ED110(255, &qword_27F96D628, sub_2589ECCFC, sub_2589ECDD0, sub_2589EDA24);
    sub_2589EC484();
    sub_2589EC5AC(255);
    sub_2589EC7FC();
    sub_2589EC87C();
    sub_2589EC920();
    swift_getOpaqueTypeConformance2();
    sub_258B024B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2589ECCFC(255);
    sub_2589ECDD0();
    sub_2589EDA24();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2589EDB48();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D558);
    }
  }
}

void sub_2589EBE64()
{
  if (!qword_27F96D560)
  {
    sub_2589EC0DC();
    sub_2589EC324();
    sub_2589ED110(255, &qword_27F96D628, sub_2589ECCFC, sub_2589ECDD0, sub_2589EDA24);
    sub_2589EC484();
    sub_2589EC5AC(255);
    sub_2589EC7FC();
    sub_2589EC87C();
    sub_2589EC920();
    swift_getOpaqueTypeConformance2();
    sub_258B024B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2589ECCFC(255);
    sub_2589ECDD0();
    sub_2589EDA24();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D560);
    }
  }
}

void sub_2589EC0DC()
{
  if (!qword_27F96D568)
  {
    sub_2589EC324();
    sub_2589ED110(255, &qword_27F96D628, sub_2589ECCFC, sub_2589ECDD0, sub_2589EDA24);
    sub_2589EC484();
    sub_2589EC5AC(255);
    sub_2589EC7FC();
    sub_2589EC87C();
    sub_2589EC920();
    swift_getOpaqueTypeConformance2();
    sub_258B024B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2589ECCFC(255);
    sub_2589ECDD0();
    sub_2589EDA24();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D568);
    }
  }
}

void sub_2589EC324()
{
  if (!qword_27F96D570)
  {
    sub_2589EC484();
    sub_2589EC5AC(255);
    sub_2589EC7FC();
    sub_2589EC87C();
    sub_2589EC920();
    swift_getOpaqueTypeConformance2();
    sub_258B024B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D570);
    }
  }
}

void sub_2589EC484()
{
  if (!qword_27F96D578)
  {
    sub_2589EC5AC(255);
    sub_2589EC7FC();
    sub_2589EC87C();
    sub_2589EC920();
    swift_getOpaqueTypeConformance2();
    sub_258B024B4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D578);
    }
  }
}

void sub_2589EC6B8()
{
  if (!qword_27F96D5A0)
  {
    type metadata accessor for ReflectiveIntervalSelectionPhase_iOS();
    sub_2589EECE0(&qword_27F96D5A8, type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D5A0);
    }
  }
}

void sub_2589EC7FC()
{
  if (!qword_27F96D5C0)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D5C0);
    }
  }
}

void sub_2589EC87C()
{
  if (!qword_27F96D5C8)
  {
    sub_2589EC5AC(255);
    sub_258B024B4();
    sub_2589EC920();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D5C8);
    }
  }
}

unint64_t sub_2589EC920()
{
  result = qword_27F96D5D0;
  if (!qword_27F96D5D0)
  {
    sub_2589EC5AC(255);
    sub_2589ED700(&qword_27F96D5D8, sub_2589EC5E0, sub_2589EC9DC, sub_2589ECC1C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D5D0);
  }

  return result;
}

unint64_t sub_2589ECA24()
{
  result = qword_27F96D5E8;
  if (!qword_27F96D5E8)
  {
    sub_2589EC670(255);
    sub_2589EECE0(&qword_27F96D5F0, type metadata accessor for IntroPhase_iOS);
    type metadata accessor for ReflectiveIntervalSelectionPhase_iOS();
    sub_2589EECE0(&qword_27F96D5A8, type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D5E8);
  }

  return result;
}

unint64_t sub_2589ECB3C()
{
  result = qword_27F96D5F8;
  if (!qword_27F96D5F8)
  {
    sub_2589EC76C(255);
    sub_2589EECE0(&qword_27F96D600, type metadata accessor for ValenceSelectionPhase_iOS);
    sub_2589EECE0(&qword_27F96D608, type metadata accessor for LabelsSelectionPhase_iOS);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D5F8);
  }

  return result;
}

unint64_t sub_2589ECC1C()
{
  result = qword_27F96D610;
  if (!qword_27F96D610)
  {
    sub_2589EC7B4(255);
    sub_2589EECE0(&qword_27F96D618, type metadata accessor for DomainsSelectionPhase_iOS);
    sub_2589EECE0(&qword_27F96D620, type metadata accessor for NotificationsSetupPhase_iOS);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D610);
  }

  return result;
}

void sub_2589ECD44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_2589ECDD0()
{
  if (!qword_27F96D638)
  {
    sub_2589ED110(255, &qword_27F96D640, sub_2589ECEC0, sub_2589ECF08, sub_2589ED038);
    sub_2589ED110(255, &qword_27F96D660, sub_2589ED1D4, sub_2589ED21C, sub_2589ED94C);
    v0 = sub_258B012B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D638);
    }
  }
}

void sub_2589ECF3C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2589EECE0(a4, a5);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_2589ED038()
{
  result = qword_27F96D658;
  if (!qword_27F96D658)
  {
    sub_2589ECF08(255);
    sub_2589C6164();
    sub_2589EECE0(&qword_27F96CBA8, sub_2589C6164);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D658);
  }

  return result;
}

void sub_2589ED110(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    a5();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_2589ED2C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_258B00794();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2589ED414()
{
  if (!qword_27F96D6A0)
  {
    sub_2589ED538();
    sub_2589ED63C();
    sub_258B01034();
    sub_2589EECE0(&qword_27F96D6B8, sub_2589ED63C);
    sub_2589EECE0(&qword_27F96D6C0, MEMORY[0x277CDDE78]);
    swift_getOpaqueTypeConformance2();
    v0 = sub_258B021B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D6A0);
    }
  }
}

void sub_2589ED538()
{
  if (!qword_27F96D6A8)
  {
    sub_2589ED63C();
    sub_258B01034();
    sub_2589EECE0(&qword_27F96D6B8, sub_2589ED63C);
    sub_2589EECE0(&qword_27F96D6C0, MEMORY[0x277CDDE78]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D6A8);
    }
  }
}

void sub_2589ED63C()
{
  if (!qword_27F96D6B0)
  {
    v0 = sub_258B02104();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D6B0);
    }
  }
}

uint64_t sub_2589ED700(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2589ED78C()
{
  result = qword_27F96D6D0;
  if (!qword_27F96D6D0)
  {
    sub_2589ED384(255);
    sub_2589EECE0(&qword_27F96D6D8, MEMORY[0x277D12688]);
    sub_2589EECE0(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D6D0);
  }

  return result;
}

unint64_t sub_2589ED86C()
{
  result = qword_27F96D6E0;
  if (!qword_27F96D6E0)
  {
    sub_2589ED3CC(255);
    sub_2589EECE0(&qword_27F96D6E8, sub_2589ED414);
    sub_2589EECE0(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D6E0);
  }

  return result;
}

unint64_t sub_2589ED94C()
{
  result = qword_27F96D6F8;
  if (!qword_27F96D6F8)
  {
    sub_2589ED21C(255);
    sub_2589ED28C(255);
    sub_2589EECE0(&qword_27F96D6F0, sub_2589ED28C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D6F8);
  }

  return result;
}

unint64_t sub_2589EDA24()
{
  result = qword_27F96D700;
  if (!qword_27F96D700)
  {
    sub_2589ECDD0();
    sub_2589ECEC0(255);
    sub_2589ECF08(255);
    sub_2589ED038();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2589ED1D4(255);
    sub_2589ED21C(255);
    sub_2589ED94C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D700);
  }

  return result;
}

unint64_t sub_2589EDB48()
{
  result = qword_27F96D708;
  if (!qword_27F96D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D708);
  }

  return result;
}

void sub_2589EDB9C()
{
  if (!qword_27F96D710)
  {
    sub_2589EE73C(255, &qword_27F96D718, MEMORY[0x277CDF6A8], MEMORY[0x277D83D88]);
    v0 = sub_258B017C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D710);
    }
  }
}

unint64_t sub_2589EDC18()
{
  result = qword_27F96D720;
  if (!qword_27F96D720)
  {
    sub_2589EB84C(255);
    sub_2589EECE0(&qword_27F96D728, sub_2589EB894);
    sub_2589EECE0(&qword_27F96D730, sub_2589EDB9C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D720);
  }

  return result;
}

void sub_2589EDCF8()
{
  if (!qword_27F96D738)
  {
    v0 = sub_258B01584();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D738);
    }
  }
}

uint64_t sub_2589EDD50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateOfMindEntryView_iOS();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589EDDB4@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v5 = *(type metadata accessor for StateOfMindEntryView_iOS() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2589E529C(a1, v6, a2);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for StateOfMindEntryView_iOS();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *(v3 + 1);

  v5 = *(v3 + 3);

  v6 = *(v3 + 5);

  v7 = *(v3 + 6);

  v8 = *(v3 + 8);

  v9 = *(v3 + 10);

  v10 = *(v3 + 12);

  v11 = v1[11];
  sub_2589EF00C(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_258B008A4();
    (*(*(v12 - 8) + 8))(&v3[v11], v12);
  }

  else
  {
    v13 = *&v3[v11];
  }

  v14 = v1[12];
  sub_2589EF00C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_258B006A4();
    (*(*(v15 - 8) + 8))(&v3[v14], v15);
  }

  else
  {
    v16 = *&v3[v14];
  }

  v17 = &v3[v1[13]];
  sub_2589EF00C(0, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_258B01504();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v17, 1, v18))
    {
      (*(v19 + 8))(v17, v18);
    }

    v20 = *(type metadata accessor for IntroPhaseSpecs() + 20);
    v21 = sub_258B00AA4();
    (*(*(v21 - 8) + 8))(&v17[v20], v21);
  }

  else
  {
    v22 = *v17;
  }

  return swift_deallocObject();
}

uint64_t sub_2589EE170(char *a1)
{
  v3 = *(type metadata accessor for StateOfMindEntryView_iOS() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2589E55F0(a1, v4);
}

unint64_t sub_2589EE1E0()
{
  result = qword_27F96D748;
  if (!qword_27F96D748)
  {
    sub_2589EB7BC(255);
    sub_2589EB84C(255);
    sub_2589EDC18();
    swift_getOpaqueTypeConformance2();
    sub_2589EECE0(&qword_27F96D750, sub_2589EDCF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D748);
  }

  return result;
}

uint64_t sub_2589EE32C(uint64_t a1)
{
  v2 = sub_258B00224();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_258B00EE4();
}

uint64_t sub_2589EE40C@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  sub_258B00E34();
  v4 = a2 + *(a1(0) + 20);
  return sub_258B00D84();
}

uint64_t sub_2589EE458()
{
  v0 = sub_258B024B4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B024A4();
  sub_2589EC5AC(0);
  v6 = v5;
  v7 = sub_2589EC920();
  MEMORY[0x259C92300](v4, MEMORY[0x277D84F90], v6, v0, v7, MEMORY[0x277CE1320]);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2589EE560(uint64_t a1)
{
  sub_2589ECCFC(0);
  v3 = v2;
  sub_2589ECDD0();
  sub_2589EDA24();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  return MEMORY[0x259C91A00](a1, v3, OpaqueTypeConformance2);
}

uint64_t sub_2589EE5F0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2589EE73C(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2589EE648@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x259C914A0]();
  *a1 = result;
  return result;
}

uint64_t sub_2589EE674(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x259C914B0](v2);
}

uint64_t sub_2589EE6A0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for StateOfMindEntryView_iOS() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_2589E4BE4(*a1, a2);
}

void sub_2589EE73C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2589EE78C(uint64_t a1, uint64_t a2)
{
  sub_2589EF00C(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_40Tm()
{
  v1 = type metadata accessor for StateOfMindEntryView_iOS();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *(v3 + 1);

  v5 = *(v3 + 3);

  v6 = *(v3 + 5);

  v7 = *(v3 + 6);

  v8 = *(v3 + 8);

  v9 = *(v3 + 10);

  v10 = *(v3 + 12);

  v11 = v1[11];
  sub_2589EF00C(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_258B008A4();
    (*(*(v12 - 8) + 8))(&v3[v11], v12);
  }

  else
  {
    v13 = *&v3[v11];
  }

  v14 = v1[12];
  sub_2589EF00C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_258B006A4();
    (*(*(v15 - 8) + 8))(&v3[v14], v15);
  }

  else
  {
    v16 = *&v3[v14];
  }

  v17 = &v3[v1[13]];
  sub_2589EF00C(0, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_258B01504();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v17, 1, v18))
    {
      (*(v19 + 8))(v17, v18);
    }

    v20 = *(type metadata accessor for IntroPhaseSpecs() + 20);
    v21 = sub_258B00AA4();
    (*(*(v21 - 8) + 8))(&v17[v20], v21);
  }

  else
  {
    v22 = *v17;
  }

  return swift_deallocObject();
}

unint64_t sub_2589EEBEC()
{
  result = qword_280DF8F98;
  if (!qword_280DF8F98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DF8F98);
  }

  return result;
}

void sub_2589EEC38()
{
  v1 = *(type metadata accessor for StateOfMindEntryView_iOS() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_2589E9144();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2589EECE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2589EED28(uint64_t a1)
{
  v4 = *(type metadata accessor for StateOfMindEntryView_iOS() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2589EEE18;

  return sub_2589E96D8(a1, v6, v7, v1 + v5);
}

uint64_t sub_2589EEE18()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2589EEF5C(unsigned __int8 a1)
{
  v3 = *(type metadata accessor for StateOfMindEntryView_iOS() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_2589E7A1C(a1);
}

uint64_t keypath_get_85Tm@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  sub_258B00E34();
  v4 = a2 + *(a1(0) + 20);
  return sub_258B00D84();
}

void sub_2589EF00C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2589EF070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2589EF0D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2589EF150(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for StateOfMindEntryView_iOS() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2589EF1C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2589EF22C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2589EF28C(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_2589EF29C()
{
  result = qword_27F96D7D0;
  if (!qword_27F96D7D0)
  {
    sub_2589EF390(255, &qword_27F96D7D8, sub_2589EB804, sub_2589EB7BC, MEMORY[0x277CE0338]);
    sub_2589EB84C(255);
    sub_2589EDC18();
    swift_getOpaqueTypeConformance2();
    sub_2589EE1E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D7D0);
  }

  return result;
}

void sub_2589EF390(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t NotificationSettingsModel.areNotificationsDisabled.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  return v1;
}

uint64_t sub_2589EF494@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  *a2 = v5;
  return result;
}

uint64_t sub_2589EF514(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_258B00574();
}

uint64_t NotificationSettingsModel.areNotificationsDisabled.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_258B00574();
}

void (*NotificationSettingsModel.areNotificationsDisabled.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_258B00554();
  return sub_2589EF694;
}

void sub_2589EF694(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t NotificationSettingsModel.$areNotificationsDisabled.getter()
{
  swift_beginAccess();
  sub_2589F452C(0, &qword_280DF8968, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  sub_258B00534();
  return swift_endAccess();
}

uint64_t sub_2589EF788(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  sub_2589F452C(0, &qword_280DF8968, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  sub_258B00534();
  return swift_endAccess();
}

uint64_t sub_2589EF818(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x277D839B0];
  sub_2589F452C(0, &qword_27F96D7E0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v5);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  v14 = *(v7 + 16);
  v14(&v17 - v12, a1, v6);
  v15 = *a2;
  v14(v11, v13, v6);
  swift_beginAccess();
  sub_2589F452C(0, &qword_280DF8968, v4, MEMORY[0x277CBCED0]);
  sub_258B00544();
  swift_endAccess();
  return (*(v7 + 8))(v13, v6);
}

uint64_t NotificationSettingsModel.$areNotificationsDisabled.setter(uint64_t a1)
{
  v2 = MEMORY[0x277D839B0];
  sub_2589F452C(0, &qword_27F96D7E0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(&v9 - v7, a1, v4);
  swift_beginAccess();
  sub_2589F452C(0, &qword_280DF8968, v2, MEMORY[0x277CBCED0]);
  sub_258B00544();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

void (*NotificationSettingsModel.$areNotificationsDisabled.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_2589F452C(0, &qword_27F96D7E0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel__areNotificationsDisabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_2589F452C(0, &qword_280DF8968, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_258B00534();
  swift_endAccess();
  return sub_2589EFCE4;
}

void sub_2589EFCE4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_258B00544();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_258B00544();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

id NotificationSettingsModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *NotificationSettingsModel.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(MEMORY[0x277D280B8]) init];
  v4 = [objc_allocWithZone(MEMORY[0x277CE2028]) initWithBundleIdentifier_];
  v5 = objc_allocWithZone(ObjectType);
  v6 = NotificationSettingsModel.init(settingsManager:userNotificationCenter:)(v3, v4);
  swift_getObjectType();
  v7 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
  v8 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return v6;
}

char *NotificationSettingsModel.init(settingsManager:userNotificationCenter:)(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_2589F452C(0, &qword_280DF8968, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v26 - v11;
  v13 = OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel__areNotificationsDisabled;
  v28 = 0;
  sub_258B00524();
  (*(v9 + 32))(&v3[v13], v12, v8);
  *&v3[OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager] = a1;
  *&v3[OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_userNotificationCenter] = a2;
  v27.receiver = v3;
  v27.super_class = ObjectType;
  v14 = a1;
  v15 = a2;
  v16 = objc_msgSendSuper2(&v27, sel_init);
  v17 = *&v16[OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_userNotificationCenter];
  v18 = v16;
  v19 = [v17 notificationSettings];
  v20 = [v19 authorizationStatus];

  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v20 != 2;
  v21 = v18;
  sub_258B00574();
  v22 = [objc_opt_self() defaultCenter];
  [v22 addObserver:v21 selector:sel_updateNotificationAuthorizationStatus name:*MEMORY[0x277D76758] object:0];

  sub_2589F4488(0, &qword_280DF8F98, 0x277D85C78);
  v23 = v21;
  v24 = sub_258B02F54();
  [v14 addObserver:v23 queue:v24];

  return v23;
}

Swift::Void __swiftcall NotificationSettingsModel.updateNotificationAuthorizationStatus()()
{
  v1 = [*&v0[OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_userNotificationCenter] notificationSettings];
  [v1 authorizationStatus];

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v0;
  sub_258B00574();
}

id NotificationSettingsModel.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x277D76758] object:0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id (*NotificationSettingsModel.middayNotificationsEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager);
  *a1 = v3;
  if ([v3 middayNotificationsEnabled])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    v4 = *(a1 + 9) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 8) = v4 & 1;
  return sub_2589F07AC;
}

id (*NotificationSettingsModel.endOfDayNotificationsEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager);
  *a1 = v3;
  if ([v3 endOfDayNotificationsEnabled])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    v4 = *(a1 + 9) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 8) = v4 & 1;
  return sub_2589F08EC;
}

uint64_t NotificationSettingsModel.customReminderSchedule.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager) customReminderSchedule];
  sub_2589F4488(0, &qword_280DF8920, 0x277D280B0);
  sub_258B02C74();

  v2 = sub_258B003E4();
  v4 = sub_2589F3C90(v2, sub_258AEAF90, sub_2589F3D60);
  sub_2589F2550(&v4);

  return v4;
}

uint64_t sub_2589F09E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [*(*a1 + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager) customReminderSchedule];
  sub_2589F4488(0, &qword_280DF8920, 0x277D280B0);
  sub_258B02C74();

  v4 = sub_258B003E4();
  v6 = sub_2589F3C90(v4, sub_258AEAF90, sub_2589F3D60);
  sub_2589F2550(&v6);

  *a2 = v6;
  return result;
}

void sub_2589F0AD8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager);
  sub_2589F4488(0, &qword_280DF8920, 0x277D280B0);
  v4 = sub_258B02C64();
  [v3 setCustomReminderSchedule_];
}

void NotificationSettingsModel.customReminderSchedule.setter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager);
  sub_2589F4488(0, &qword_280DF8920, 0x277D280B0);
  v2 = sub_258B02C64();

  [v1 setCustomReminderSchedule_];
}

uint64_t sub_2589F0BEC(void **a1, void **a2)
{
  v4 = sub_258AFFD44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v33 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = *a1;
  v18 = *a2;
  v36 = [v17 dateComponents];
  sub_258AFFCD4();
  v37 = sub_258AFFCE4();
  LOBYTE(a2) = v19;
  v20 = *(v5 + 8);
  result = v20(v16, v4);
  if (a2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v22 = [v17 dateComponents];
  sub_258AFFCD4();
  v35 = sub_258AFFD04();
  v24 = v23;
  result = v20(v14, v4);
  if (v24)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v25 = [v18 dateComponents];
  sub_258AFFCD4();
  v34 = sub_258AFFCE4();
  v27 = v26;
  result = v20(v11, v4);
  if (v27)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v28 = [v18 dateComponents];
  v29 = v38;
  sub_258AFFCD4();
  v30 = sub_258AFFD04();
  v32 = v31;
  result = v20(v29, v4);
  if (v32)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (v37 == v34)
  {
    return v35 < v30;
  }

  else
  {
    return v37 < v34;
  }
}

void (*NotificationSettingsModel.customReminderSchedule.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager);
  a1[1] = v3;
  v4 = [v3 customReminderSchedule];
  a1[2] = sub_2589F4488(0, &qword_280DF8920, 0x277D280B0);
  sub_258B02C74();

  v5 = sub_258B003E4();
  v7 = sub_2589F3C90(v5, sub_258AEAF90, sub_2589F3D60);
  sub_2589F2550(&v7);

  *a1 = v7;
  return sub_2589F0F9C;
}

void sub_2589F0F9C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_258B003E4();
    v5 = sub_258B02C64();

    [v2 setCustomReminderSchedule_];
  }

  else
  {
    v5 = sub_258B02C64();

    [v2 setCustomReminderSchedule_];
  }
}

void sub_2589F104C(uint64_t a1, int a2)
{
  v27 = a2;
  v4 = sub_258B00384();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager);
  v10 = [v9 customReminderSchedule];
  sub_2589F4488(0, &qword_280DF8920, 0x277D280B0);
  sub_258B02C74();

  v11 = sub_258B003E4();
  v28 = sub_2589F3C90(v11, sub_258AEAF90, sub_2589F3D60);
  sub_2589F2550(&v28);

  v13 = v28;
  MEMORY[0x28223BE20](v12);
  *&v26[-16] = a1;
  v14 = sub_258A7953C(sub_2589F45D0, &v26[-32], v13);

  if (v14)
  {
    sub_258B00364();
    v15 = sub_258B00374();
    v16 = sub_258B02EA4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2589A1000, v15, v16, "Attempting to add a reminder time that already exists in the schedule.", v17, 2u);
      MEMORY[0x259C945C0](v17, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v18 = objc_allocWithZone(MEMORY[0x277D280B0]);
    v19 = sub_258AFFCB4();
    v20 = [v18 initWithDateComponents:v19 isEnabled:v27 & 1];

    v21 = [v9 customReminderSchedule];
    sub_258B02C74();

    v22 = sub_258B003E4();
    v28 = sub_2589F3C90(v22, sub_258AEAF90, sub_2589F3D60);
    sub_2589F2550(&v28);

    v23 = v20;
    MEMORY[0x259C93250]();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v25 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_258B02C94();
    }

    sub_258B02CB4();
    v24 = sub_258B02C64();

    [v9 setCustomReminderSchedule_];
  }
}

void sub_2589F1408(uint64_t a1)
{
  v3 = sub_258B00384();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager);
  v9 = [v8 customReminderSchedule];
  sub_2589F4488(0, &qword_280DF8920, 0x277D280B0);
  sub_258B02C74();

  v10 = sub_258B003E4();
  v24 = sub_2589F3C90(v10, sub_258AEAF90, sub_2589F3D60);
  sub_2589F2550(&v24);

  v12 = v24;
  MEMORY[0x28223BE20](v11);
  *(&v23 - 2) = a1;
  sub_258AB3620(sub_2589F45F0, (&v23 - 4), v12);
  v14 = v13;
  v16 = v15;

  if (v16)
  {
    sub_258B00364();
    v17 = sub_258B00374();
    v18 = sub_258B02E84();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2589A1000, v17, v18, "trying to remove a component not found in the array", v19, 2u);
      MEMORY[0x259C945C0](v19, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v20 = [v8 customReminderSchedule];
    sub_258B02C74();

    v21 = sub_258B003E4();
    v24 = sub_2589F3C90(v21, sub_258AEAF90, sub_2589F3D60);
    sub_2589F2550(&v24);

    v22 = sub_258B02C64();

    [v8 setCustomReminderSchedule_];
  }
}

uint64_t sub_2589F173C(id *a1, uint64_t a2)
{
  v4 = sub_258AFFD44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*a1 dateComponents];
  sub_258AFFCD4();

  LOBYTE(a2) = MEMORY[0x259C902C0](v8, a2);
  (*(v5 + 8))(v8, v4);
  return a2 & 1;
}

uint64_t sub_2589F1848(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_2589F39C8(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_2589F18E4(SEL *a1)
{
  if ([*(v1 + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager) *a1])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    v2 = v4 ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id sub_2589F1990@<X0>(void *a1@<X0>, SEL *a2@<X3>, _BYTE *a3@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager) *a2];
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    v5 = v6 ^ 1;
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5 & 1;
  return result;
}

id (*NotificationSettingsModel.periodicPromptedAssessmentNotificationsEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager);
  *a1 = v3;
  if ([v3 periodicPromptedAssessmentNotificationsEnabled])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    v4 = *(a1 + 9) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 8) = v4 & 1;
  return sub_2589F1B48;
}

uint64_t NotificationSettingsModel.settingsManagerDidUpdateNotificationSettings(_:)()
{
  swift_getObjectType();
  sub_2589F3A58();
  sub_258B004E4();
  sub_258B00504();
}

Swift::Bool __swiftcall NotificationSettingsModel.shouldShowMindfulnessSettingsButton()()
{
  v29[1] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v0 = sub_258B00384();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCD778]) initWithBundleIdentifier_];
  v29[0] = 0;
  v6 = [v5 isWatchAppInstalledWithError_];
  if (v6)
  {
    v7 = v6;
    v8 = v29[0];
    v9 = [v7 BOOLValue];
  }

  else
  {
    v10 = v29[0];
    v11 = sub_258AFFDC4();

    swift_willThrow();
    sub_258B00364();
    v12 = v11;
    v13 = sub_258B00374();
    v14 = sub_258B02E84();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29[0] = v27;
      *v15 = 136446466;
      v16 = sub_258B035A4();
      v18 = sub_2589F1F78(v16, v17, v29);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      v28 = v11;
      v19 = v11;
      sub_2589F3AFC();
      v20 = sub_258B02B34();
      v22 = sub_2589F1F78(v20, v21, v29);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_2589A1000, v13, v14, "[%{public}s] Could not determine if Mindfulness app is installed with error: %s", v15, 0x16u);
      v23 = v27;
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v23, -1, -1);
      MEMORY[0x259C945C0](v15, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v4, v0);
    v9 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_2589F1F38@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_258B004E4();
  *a1 = result;
  return result;
}

uint64_t sub_2589F1F78(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_258B003E4();
  v6 = sub_2589F2044(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2589F44D0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2589F2044(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2589F2150(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_258B03214();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2589F2150(uint64_t a1, unint64_t a2)
{
  v4 = sub_2589F219C(a1, a2);
  sub_2589F22CC(&unk_2869D4648);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2589F219C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2589F23B8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_258B03214();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_258B02BC4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2589F23B8(v10, 0);
        result = sub_258B031A4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2589F22CC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2589F2444(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2589F23B8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2589F452C(0, &qword_27F96D8B8, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2589F2444(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2589F452C(0, &qword_27F96D8B8, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2589F2550(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_258AEAF8C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2589F25CC(v6);
  return sub_258B03234();
}

void sub_2589F25CC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_258B03404();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2589F4488(0, &qword_280DF8920, 0x277D280B0);
        v6 = sub_258B02CA4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_2589F2A70(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2589F26E0(0, v2, 1, a1);
  }
}

void sub_2589F26E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_258AFFD44();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v59 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v60 = &v54 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v61 = &v54 - v15;
  MEMORY[0x28223BE20](v14);
  v62 = &v54 - v17;
  v55 = a2;
  if (a3 != a2)
  {
    v18 = (v16 + 8);
    v63 = *a4;
    v19 = (v63 + 8 * a3 - 8);
    v20 = a1 - a3;
    v21 = &property descriptor for StateOfMindEntryModel.valence;
LABEL_5:
    v57 = v19;
    v58 = a3;
    v22 = *(v63 + 8 * a3);
    v56 = v20;
    v23 = v20;
    while (1)
    {
      v71 = v19;
      v24 = *v19;
      v25 = v22;
      v26 = v24;
      v27 = [v25 v21[162]];
      v28 = v62;
      v69 = v27;
      sub_258AFFCD4();
      v70 = sub_258AFFCE4();
      v30 = v29;
      v31 = *v18;
      (*v18)(v28, v8);
      if (v30)
      {
        break;
      }

      v32 = [v25 v21[162]];
      v33 = v61;
      v67 = v32;
      sub_258AFFCD4();
      v68 = sub_258AFFD04();
      v35 = v34;
      v31(v33, v8);
      if (v35)
      {
        goto LABEL_20;
      }

      v66 = v25;
      v36 = [v26 v21[162]];
      v37 = v60;
      sub_258AFFCD4();
      v65 = sub_258AFFCE4();
      v39 = v38;
      v31(v37, v8);
      if (v39)
      {
        goto LABEL_19;
      }

      v64 = v23;
      v40 = [v26 v21[162]];
      v41 = v18;
      v42 = v59;
      sub_258AFFCD4();
      v43 = sub_258AFFD04();
      v44 = v8;
      v46 = v45;
      v47 = v42;
      v48 = v44;
      v18 = v41;
      v31(v47, v44);
      if (v46)
      {
        __break(1u);
        break;
      }

      v49 = v68 < v43;
      if (v70 != v65)
      {
        v49 = v70 < v65;
      }

      v8 = v48;
      v21 = &property descriptor for StateOfMindEntryModel.valence;
      v50 = v64;
      v51 = v71;
      if (v49)
      {
        if (!v63)
        {
          goto LABEL_21;
        }

        v52 = *v71;
        v22 = v71[1];
        *v71 = v22;
        v51[1] = v52;
        v19 = v51 - 1;
        v53 = __CFADD__(v50, 1);
        v23 = v50 + 1;
        if (!v53)
        {
          continue;
        }
      }

      a3 = v58 + 1;
      v19 = v57 + 1;
      v20 = v56 - 1;
      if (v58 + 1 == v55)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

void sub_2589F2A70(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v151 = a1;
  v8 = sub_258AFFD44();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v163 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v164 = &v149 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v165 = &v149 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v166 = &v149 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v154 = &v149 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v155 = &v149 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v156 = &v149 - v23;
  MEMORY[0x28223BE20](v22);
  v157 = &v149 - v25;
  v161 = a3;
  v26 = *(a3 + 8);
  if (v26 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_103:
    a3 = *v151;
    if (!*v151)
    {
      goto LABEL_150;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_105:
      v180 = v29;
      v145 = *(v29 + 2);
      if (v145 >= 2)
      {
        while (*v161)
        {
          v146 = *&v29[16 * v145];
          v147 = *&v29[16 * v145 + 24];
          sub_2589F362C((*v161 + 8 * v146), (*v161 + 8 * *&v29[16 * v145 + 16]), (*v161 + 8 * v147), a3);
          if (v5)
          {
            goto LABEL_113;
          }

          if (v147 < v146)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_258AE8CC8(v29);
          }

          if (v145 - 2 >= *(v29 + 2))
          {
            goto LABEL_130;
          }

          v148 = &v29[16 * v145];
          *v148 = v146;
          *(v148 + 1) = v147;
          v180 = v29;
          sub_258AE8C3C(v145 - 1);
          v29 = v180;
          v145 = *(v180 + 2);
          if (v145 <= 1)
          {
            goto LABEL_113;
          }
        }

        goto LABEL_148;
      }

LABEL_113:

      return;
    }

LABEL_136:
    v29 = sub_258AE8CC8(v29);
    goto LABEL_105;
  }

  v150 = a4;
  v27 = 0;
  v28 = (v24 + 8);
  v29 = MEMORY[0x277D84F90];
  v169 = v8;
  v170 = (v24 + 8);
  while (1)
  {
    v160 = v29;
    v152 = v27;
    if (v27 + 1 >= v26)
    {
      v26 = v27 + 1;
    }

    else
    {
      v30 = *v161;
      v31 = *(*v161 + 8 * (v27 + 1));
      v178 = *(*v161 + 8 * v27);
      v32 = v178;
      v179 = v31;
      v33 = v31;
      a3 = v32;
      LODWORD(v159) = sub_2589F0BEC(&v179, &v178);
      if (v5)
      {

        return;
      }

      v34 = (v27 + 2);
      v167 = 8 * v27;
      v35 = (v30 + 8 * v27 + 16);
      v158 = 0;
      v162 = v26;
      while (v26 != v34)
      {
        v177 = v34;
        v36 = *(v35 - 1);
        v37 = *v35;
        v38 = v36;
        v39 = [v37 dateComponents];
        v40 = v157;
        v175 = v39;
        sub_258AFFCD4();
        v176 = sub_258AFFCE4();
        v42 = v41;
        a3 = *v28;
        (*v28)(v40, v8);
        if (v42)
        {
          goto LABEL_143;
        }

        v173 = v37;
        v174 = v35;
        v43 = [v37 dateComponents];
        v44 = v156;
        v172 = v43;
        sub_258AFFCD4();
        v45 = sub_258AFFD04();
        v47 = v46;
        (a3)(v44, v8);
        if (v47)
        {
          goto LABEL_145;
        }

        v171 = v45;
        v48 = [v38 dateComponents];
        v49 = v155;
        sub_258AFFCD4();
        v168 = sub_258AFFCE4();
        v51 = v50;
        (a3)(v49, v8);
        if (v51)
        {
          goto LABEL_144;
        }

        v52 = [v38 dateComponents];
        v53 = v154;
        sub_258AFFCD4();
        v54 = sub_258AFFD04();
        v56 = v55;
        (a3)(v53, v8);
        if (v56)
        {
          goto LABEL_142;
        }

        v57 = v171 >= v54;
        v8 = v169;
        if (v176 != v168)
        {
          v57 = v176 >= v168;
        }

        v34 = v177 + 1;
        v35 = (v174 + 8);
        v5 = v158;
        v29 = v160;
        v28 = v170;
        v26 = v162;
        if ((v159 & 1) == v57)
        {
          v26 = v177;
          break;
        }
      }

      if (v159)
      {
        v58 = v152;
        if (v26 < v152)
        {
          goto LABEL_135;
        }

        if (v152 < v26)
        {
          v59 = 8 * v26 - 8;
          v60 = v26;
          do
          {
            if (v58 != --v60)
            {
              v62 = *v161;
              if (!*v161)
              {
                goto LABEL_147;
              }

              v61 = *(v62 + v167);
              *(v62 + v167) = *(v62 + v59);
              *(v62 + v59) = v61;
            }

            ++v58;
            v59 -= 8;
            v167 += 8;
          }

          while (v58 < v60);
        }
      }
    }

    v63 = v161[1];
    if (v26 >= v63)
    {
      goto LABEL_49;
    }

    if (__OFSUB__(v26, v152))
    {
      goto LABEL_132;
    }

    if (v26 - v152 >= v150)
    {
LABEL_49:
      v65 = v152;
LABEL_50:
      if (v26 < v65)
      {
        goto LABEL_131;
      }

      goto LABEL_51;
    }

    v64 = v152 + v150;
    if (__OFADD__(v152, v150))
    {
      goto LABEL_133;
    }

    if (v64 >= v63)
    {
      v64 = v161[1];
    }

    if (v64 < v152)
    {
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v65 = v152;
    v153 = v64;
    if (v26 == v64)
    {
      goto LABEL_50;
    }

    v66 = v28;
    v158 = v5;
    v167 = *v161;
    v67 = (v152 - v26);
    v68 = v167 + 8 * v26 - 8;
    v69 = &property descriptor for StateOfMindEntryModel.valence;
LABEL_37:
    v162 = v26;
    v71 = *(v167 + 8 * v26);
    v72 = v67;
    v159 = v68;
    v73 = v68;
    v168 = v67;
LABEL_38:
    v171 = v72;
    v74 = *v73;
    v75 = v71;
    v76 = v74;
    v77 = [v75 v69[162]];
    v78 = v166;
    v176 = v77;
    sub_258AFFCD4();
    v177 = sub_258AFFCE4();
    v80 = v79;
    a3 = *v66;
    (*v66)(v78, v8);
    if (v80)
    {
      goto LABEL_140;
    }

    v81 = v69[162];
    v175 = v75;
    v82 = [v75 v81];
    v83 = v165;
    v173 = v82;
    sub_258AFFCD4();
    v174 = sub_258AFFD04();
    v85 = v84;
    (a3)(v83, v8);
    if (v85)
    {
      goto LABEL_139;
    }

    v86 = [v76 v69[162]];
    v87 = v164;
    sub_258AFFCD4();
    v172 = sub_258AFFCE4();
    v89 = v88;
    (a3)(v87, v8);
    if (v89)
    {
      goto LABEL_138;
    }

    v90 = [v76 v69[162]];
    v91 = v163;
    sub_258AFFCD4();
    v92 = sub_258AFFD04();
    v93 = v8;
    v95 = v94;
    (a3)(v91, v93);
    if (v95)
    {
      break;
    }

    v96 = v174 < v92;
    if (v177 != v172)
    {
      v96 = v177 < v172;
    }

    if (v96)
    {
      v8 = v169;
      v66 = v170;
      v69 = &property descriptor for StateOfMindEntryModel.valence;
      v70 = v168;
      v97 = v171;
      if (!v167)
      {
        goto LABEL_141;
      }

      v98 = *v73;
      v71 = *(v73 + 8);
      *v73 = v71;
      *(v73 + 8) = v98;
      v73 -= 8;
      v99 = __CFADD__(v97, 1);
      v72 = v97 + 1;
      if (v99)
      {
        goto LABEL_36;
      }

      goto LABEL_38;
    }

    v8 = v169;
    v66 = v170;
    v69 = &property descriptor for StateOfMindEntryModel.valence;
    v70 = v168;
LABEL_36:
    v26 = v162 + 1;
    v68 = v159 + 8;
    v67 = v70 - 1;
    if (v162 + 1 != v153)
    {
      goto LABEL_37;
    }

    v5 = v158;
    v29 = v160;
    v26 = v153;
    v28 = v66;
    if (v153 < v152)
    {
      goto LABEL_131;
    }

LABEL_51:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_258A74C78(0, *(v29 + 2) + 1, 1, v29);
    }

    a3 = *(v29 + 2);
    v100 = *(v29 + 3);
    v101 = a3 + 1;
    if (a3 >= v100 >> 1)
    {
      v29 = sub_258A74C78((v100 > 1), a3 + 1, 1, v29);
    }

    *(v29 + 2) = v101;
    v102 = &v29[16 * a3];
    *(v102 + 4) = v152;
    *(v102 + 5) = v26;
    v103 = *v151;
    if (!*v151)
    {
      goto LABEL_149;
    }

    if (a3)
    {
      while (1)
      {
        a3 = v101 - 1;
        if (v101 >= 4)
        {
          break;
        }

        if (v101 == 3)
        {
          v104 = *(v29 + 4);
          v105 = *(v29 + 5);
          v114 = __OFSUB__(v105, v104);
          v106 = v105 - v104;
          v107 = v114;
LABEL_70:
          if (v107)
          {
            goto LABEL_120;
          }

          v120 = &v29[16 * v101];
          v122 = *v120;
          v121 = *(v120 + 1);
          v123 = __OFSUB__(v121, v122);
          v124 = v121 - v122;
          v125 = v123;
          if (v123)
          {
            goto LABEL_123;
          }

          v126 = &v29[16 * a3 + 32];
          v128 = *v126;
          v127 = *(v126 + 1);
          v114 = __OFSUB__(v127, v128);
          v129 = v127 - v128;
          if (v114)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v124, v129))
          {
            goto LABEL_127;
          }

          if (v124 + v129 >= v106)
          {
            if (v106 < v129)
            {
              a3 = v101 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v130 = &v29[16 * v101];
        v132 = *v130;
        v131 = *(v130 + 1);
        v114 = __OFSUB__(v131, v132);
        v124 = v131 - v132;
        v125 = v114;
LABEL_84:
        if (v125)
        {
          goto LABEL_122;
        }

        v133 = &v29[16 * a3];
        v135 = *(v133 + 4);
        v134 = *(v133 + 5);
        v114 = __OFSUB__(v134, v135);
        v136 = v134 - v135;
        if (v114)
        {
          goto LABEL_125;
        }

        if (v136 < v124)
        {
          goto LABEL_3;
        }

LABEL_91:
        v141 = a3 - 1;
        if (a3 - 1 >= v101)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v161)
        {
          goto LABEL_146;
        }

        v142 = *&v29[16 * v141 + 32];
        v143 = *&v29[16 * a3 + 40];
        sub_2589F362C((*v161 + 8 * v142), (*v161 + 8 * *&v29[16 * a3 + 32]), (*v161 + 8 * v143), v103);
        if (v5)
        {
          goto LABEL_113;
        }

        if (v143 < v142)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_258AE8CC8(v29);
        }

        if (v141 >= *(v29 + 2))
        {
          goto LABEL_117;
        }

        v144 = &v29[16 * v141];
        *(v144 + 4) = v142;
        *(v144 + 5) = v143;
        v180 = v29;
        sub_258AE8C3C(a3);
        v29 = v180;
        v101 = *(v180 + 2);
        v28 = v170;
        if (v101 <= 1)
        {
          goto LABEL_3;
        }
      }

      v108 = &v29[16 * v101 + 32];
      v109 = *(v108 - 64);
      v110 = *(v108 - 56);
      v114 = __OFSUB__(v110, v109);
      v111 = v110 - v109;
      if (v114)
      {
        goto LABEL_118;
      }

      v113 = *(v108 - 48);
      v112 = *(v108 - 40);
      v114 = __OFSUB__(v112, v113);
      v106 = v112 - v113;
      v107 = v114;
      if (v114)
      {
        goto LABEL_119;
      }

      v115 = &v29[16 * v101];
      v117 = *v115;
      v116 = *(v115 + 1);
      v114 = __OFSUB__(v116, v117);
      v118 = v116 - v117;
      if (v114)
      {
        goto LABEL_121;
      }

      v114 = __OFADD__(v106, v118);
      v119 = v106 + v118;
      if (v114)
      {
        goto LABEL_124;
      }

      if (v119 >= v111)
      {
        v137 = &v29[16 * a3 + 32];
        v139 = *v137;
        v138 = *(v137 + 1);
        v114 = __OFSUB__(v138, v139);
        v140 = v138 - v139;
        if (v114)
        {
          goto LABEL_128;
        }

        if (v106 < v140)
        {
          a3 = v101 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v27 = v26;
    v26 = v161[1];
    if (v27 >= v26)
    {
      goto LABEL_103;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
}

uint64_t sub_2589F362C(void **__dst, void **__src, void **a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_2589F0BEC(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= v21 + (v44 & 0xFFFFFFFFFFFFFFF8))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = v21 + 8;
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = &v16[-a4 + 7];
    if (&v16[-a4] >= 0)
    {
      v46 = &v16[-a4];
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = &v16[v28];
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *(v31 - 1);
    v31 -= 8;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_2589F0BEC(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = (v6 + 1);
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= &v51[v40 & 0xFFFFFFFFFFFFFFF8] || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

uint64_t sub_2589F39C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_258B032B4();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_258B031D4();
}

unint64_t sub_2589F3A58()
{
  result = qword_27F96D308;
  if (!qword_27F96D308)
  {
    type metadata accessor for NotificationSettingsModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D308);
  }

  return result;
}

uint64_t type metadata accessor for NotificationSettingsModel()
{
  result = qword_280DF8BF0;
  if (!qword_280DF8BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2589F3AFC()
{
  result = qword_27F96D800;
  if (!qword_27F96D800)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F96D800);
  }

  return result;
}

void sub_2589F3B74()
{
  sub_2589F452C(319, &qword_280DF8968, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2589F3C90(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_258B032B4();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2589F3D60(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_258B032B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_258B032B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2589F4430(0, &qword_27F96D8C0, &qword_280DF8920, 0x277D280B0);
          sub_2589F4580(&qword_27F96D8C8, &qword_27F96D8C0, &qword_280DF8920, 0x277D280B0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_258A8D89C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2589F4488(0, &qword_280DF8920, 0x277D280B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2589F3F14(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_258B032B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_258B032B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2589F4430(0, &qword_27F96D8A8, &qword_27F96D8A0, 0x277CCDA30);
          sub_2589F4580(&qword_27F96D8B0, &qword_27F96D8A8, &qword_27F96D8A0, 0x277CCDA30);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_258A8D924(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2589F4488(0, &qword_27F96D8A0, 0x277CCDA30);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2589F40C8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_258B032B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_258B032B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2589F4430(0, &qword_27F96D878, &qword_27F96D870, 0x277D12830);
          sub_2589F4580(&qword_27F96D880, &qword_27F96D878, &qword_27F96D870, 0x277D12830);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_258A8D924(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2589F4488(0, &qword_27F96D870, 0x277D12830);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2589F427C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_258B032B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_258B032B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2589F4430(0, &qword_27F96D890, &qword_27F96D888, 0x277D12A00);
          sub_2589F4580(&qword_27F96D898, &qword_27F96D890, &qword_27F96D888, 0x277D12A00);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_258A8D924(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2589F4488(0, &qword_27F96D888, 0x277D12A00);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2589F4430(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_2589F4488(255, a3, a4);
    v5 = sub_258B02CD4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2589F4488(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2589F44D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2589F452C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2589F4580(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  result = *a1;
  if (!result)
  {
    sub_2589F4430(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s22DaySummaryGradientViewVMa()
{
  result = qword_27F96D8D0;
  if (!qword_27F96D8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589F4680()
{
  sub_2589F5748(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2589F5748(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for StateOfMindTimeline.DaySummary();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2589F4798@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CDF3E0];
  v9 = MEMORY[0x277CDF458];
  sub_2589F5748(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v19 - v12);
  v14 = _s22DaySummaryGradientViewVMa();
  sub_2589F5618(v1 + *(v14 + 20), v13, &qword_27F96C908, v8, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_258B006A4();
    return (*(*(v15 - 8) + 32))(a1, v13, v15);
  }

  else
  {
    v17 = *v13;
    sub_258B02E94();
    v18 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

id sub_2589F49CC@<X0>(uint64_t a1@<X8>)
{
  v33 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
  v2 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v4 = *(*(v31 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v31);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  sub_2589F54EC();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_258B2BE60;
  *(v13 + 32) = sub_2589F4DB8();
  sub_258AC1060(v12);
  sub_2589F553C(v12, type metadata accessor for StateOfMindTimeline.Styles);
  v14 = objc_opt_self();
  v15 = [v14 secondarySystemGroupedBackgroundColor];
  v16 = [v14 tertiarySystemGroupedBackgroundColor];
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = v16;
  v17[4] = 0;
  v17[5] = v15;
  v18 = objc_allocWithZone(MEMORY[0x277D75348]);
  v40 = sub_2589C69C4;
  v41 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_258A52B54;
  v39 = &block_descriptor_1;
  v19 = _Block_copy(&aBlock);
  [v18 initWithDynamicProvider_];
  _Block_release(v19);

  *(v13 + 40) = sub_258B01F94();
  v20 = MEMORY[0x259C92A80](v13);
  sub_258AC1060(v10);
  sub_2589F553C(v10, type metadata accessor for StateOfMindTimeline.Styles);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v22 = result;
    [result isiPad];

    sub_258AC1060(v7);
    v23 = v32;
    sub_2589F55B4(&v7[*(v31 + 48)], v32);
    sub_2589F553C(v7, type metadata accessor for StateOfMindTimeline.Styles);
    v24 = *(v23 + *(v33 + 24));
    sub_2589F553C(v23, type metadata accessor for StateOfMindTimeline.Styles.Entry);
    sub_258B024F4();
    sub_258B00854();
    v25 = aBlock;
    LOBYTE(v23) = v37;
    v26 = v38;
    v27 = v39;
    v28 = v40;
    v29 = v41;
    result = sub_258B02004();
    v35 = v23;
    v34 = v27;
    *a1 = v20;
    *(a1 + 8) = v25;
    *(a1 + 16) = v23;
    *(a1 + 24) = v26;
    *(a1 + 32) = v27;
    *(a1 + 40) = v28;
    *(a1 + 48) = v29;
    *(a1 + 56) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2589F4DB8()
{
  v1 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v32 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_258B006A4();
  v4 = *(v35 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v35);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v34 = &v32 - v10;
  MEMORY[0x28223BE20](v9);
  v33 = &v32 - v11;
  v12 = MEMORY[0x277D83D88];
  sub_2589F5748(0, &qword_27F96D908, _s5EntryVMa, MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v32 - v15;
  v17 = _s5EntryVMa();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v0 + *(_s22DaySummaryGradientViewVMa() + 24);
  v23 = type metadata accessor for StateOfMindTimeline.DaySummary();
  sub_2589F5618(v22 + *(v23 + 28), v16, &qword_27F96D908, _s5EntryVMa, v12);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_2589F5688(v16, &qword_27F96D908, _s5EntryVMa, MEMORY[0x277D83D88]);
    v24 = v32;
    sub_258AC1060(v32);
    sub_2589F553C(v24, type metadata accessor for StateOfMindTimeline.Styles);
    sub_258B01FE4();
    v25 = sub_258B02024();
  }

  else
  {
    sub_2589F56E4(v16, v21);
    v26 = v33;
    sub_2589F4798(v33);
    v27 = *&v21[*(v17 + 36)];
    v29 = v34;
    v28 = v35;
    (*(v4 + 16))(v34, v26, v35);
    (*(v4 + 104))(v8, *MEMORY[0x277CDF3C0], v28);
    sub_258B00694();
    v30 = *(v4 + 8);
    v30(v8, v28);
    swift_getKeyPath();
    sub_258A84538(fmax(fmin(v27, 1.0), -1.0));

    v25 = sub_258B01F74();
    v30(v29, v28);
    v30(v26, v28);
    sub_2589F553C(v21, _s5EntryVMa);
  }

  return v25;
}

double sub_2589F520C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_258B01194();
  v14 = 1;
  sub_2589F49CC(&v9);
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19[0] = v9;
  v19[1] = v10;
  v19[2] = v11;
  v19[3] = v12;
  v3 = MEMORY[0x277CE14B8];
  sub_2589F5618(&v15, &v8, &qword_27F96D8E0, sub_2589F5328, MEMORY[0x277CE14B8]);
  sub_2589F5688(v19, &qword_27F96D8E0, sub_2589F5328, v3);
  *&v13[55] = v18;
  *&v13[39] = v17;
  *&v13[23] = v16;
  *&v13[7] = v15;
  v4 = *v13;
  *(a1 + 33) = *&v13[16];
  result = *&v13[32];
  v6 = *&v13[48];
  *(a1 + 49) = *&v13[32];
  *(a1 + 65) = v6;
  v7 = v14;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 80) = *&v13[63];
  *(a1 + 17) = v4;
  return result;
}

void sub_2589F5328()
{
  if (!qword_27F96D8E8)
  {
    sub_2589F53B8();
    sub_2589F5438(255, &qword_27F96D900, &qword_27F96C860);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96D8E8);
    }
  }
}

void sub_2589F53B8()
{
  if (!qword_27F96D8F0)
  {
    sub_2589F5438(255, &qword_27F96D8F8, &qword_27F96CA78);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D8F0);
    }
  }
}

void sub_2589F5438(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2589F549C(255, a3);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2589F549C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_258B015C4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2589F54EC()
{
  if (!qword_27F96CC10)
  {
    v0 = sub_258B03424();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CC10);
    }
  }
}

uint64_t sub_2589F553C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2589F55B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589F5618(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_2589F5748(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_2589F5688(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_2589F5748(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2589F56E4(uint64_t a1, uint64_t a2)
{
  v4 = _s5EntryVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2589F5748(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2589F57AC()
{
  result = qword_27F96D910;
  if (!qword_27F96D910)
  {
    sub_2589F5804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D910);
  }

  return result;
}

void sub_2589F5804()
{
  if (!qword_27F96D918)
  {
    sub_2589F5748(255, &qword_27F96D8E0, sub_2589F5328, MEMORY[0x277CE14B8]);
    sub_2589F5898();
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D918);
    }
  }
}

unint64_t sub_2589F5898()
{
  result = qword_27F96D920;
  if (!qword_27F96D920)
  {
    sub_2589F5748(255, &qword_27F96D8E0, sub_2589F5328, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D920);
  }

  return result;
}

uint64_t sub_2589F592C(uint64_t a1, uint64_t a2)
{
  sub_2589F5990();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2589F5990()
{
  if (!qword_280DF8998)
  {
    sub_258B002E4();
    v0 = sub_258B030C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280DF8998);
    }
  }
}

uint64_t sub_2589F59F0(uint64_t a1, uint64_t a2)
{
  sub_2589F5990();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PeriodicAssessmentPromptsFeatureStatus.init(featureStatus:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258B002E4();
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);

  return sub_2589F59F0(a1, a2);
}

uint64_t sub_2589F5AF0()
{
  v1 = v0;
  sub_2589F61D0();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589F5990();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_258B002D4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589F592C(v1, v11);
  v17 = sub_258B002E4();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    sub_2589F6220(v11, sub_2589F5990);
    return *MEMORY[0x277D27FE0];
  }

  if ((*(v18 + 88))(v11, v17) != *MEMORY[0x277D11288])
  {
    (*(v18 + 8))(v11, v17);
    return *MEMORY[0x277D27FE0];
  }

  (*(v18 + 96))(v11, v17);
  (*(v13 + 32))(v16, v11, v12);
  v19 = sub_258B002C4();
  v20 = *MEMORY[0x277D27FF8];
  sub_258B02B14();
  sub_258B02EE4();
  sub_258B02F14();

  (*(v4 + 8))(v7, v3);
  if (v24)
  {
    v21 = *MEMORY[0x277D27FE0];
  }

  else
  {
    v21 = v23;
  }

  (*(v13 + 8))(v16, v12);
  return v21;
}

Swift::Bool __swiftcall PeriodicAssessmentPromptsFeatureStatus.isSetToRecommendedPregnancySettings()()
{
  v1 = v0;
  v2 = type metadata accessor for AssessmentFeatureStatus();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589F61D0();
  v7 = v6;
  v28 = *(v6 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589F5990();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_258B002D4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589F592C(v1, v14);
  v20 = sub_258B002E4();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    sub_2589F6220(v14, sub_2589F5990);
  }

  else
  {
    if ((*(v21 + 88))(v14, v20) == *MEMORY[0x277D11288])
    {
      (*(v21 + 96))(v14, v20);
      (*(v16 + 32))(v19, v14, v15);
      v22 = sub_258B002C4();
      v23 = *MEMORY[0x277D27FF8];
      sub_258B02B14();
      sub_258B02EE4();
      sub_258B02F14();

      (*(v28 + 8))(v10, v7);
      if (v30)
      {
        v24 = *MEMORY[0x277D27FE0];
      }

      else
      {
        v24 = v29;
      }

      (*(v16 + 8))(v19, v15);
      if (v24 == 30)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    (*(v21 + 8))(v14, v20);
  }

  if (*MEMORY[0x277D27FE0] == 30)
  {
LABEL_11:
    sub_2589F592C(v1, v5);
    v25 = sub_258A8D334();
    sub_2589F6220(v5, type metadata accessor for AssessmentFeatureStatus);
    return v25 & 1;
  }

LABEL_8:
  v25 = 0;
  return v25 & 1;
}

void sub_2589F61D0()
{
  if (!qword_280DF8910)
  {
    v0 = sub_258B02F04();
    if (!v1)
    {
      atomic_store(v0, &qword_280DF8910);
    }
  }
}

uint64_t sub_2589F6220(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for PeriodicAssessmentPromptsFeatureStatus()
{
  result = qword_280DF8A08;
  if (!qword_280DF8A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589F62F4()
{
  sub_2589F5990();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

MentalHealthUI::MentalHealthAssessmentsAnalyticsStepType_optional __swiftcall MentalHealthAssessmentsAnalyticsStepType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258B03324();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MentalHealthAssessmentsAnalyticsStepType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6574614720656741;
  v3 = 0x6F72746E49;
  v4 = 0x6E6F697473657551;
  if (v1 != 3)
  {
    v4 = 0x746C75736552;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_2589F6470()
{
  v1 = *v0;
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589F6560()
{
  *v0;
  *v0;
  sub_258B02B74();
}

uint64_t sub_2589F663C()
{
  v1 = *v0;
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

void sub_2589F6734(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF6F72746E492064;
  v4 = 0x6574614720656741;
  v5 = 0xE500000000000000;
  v6 = 0x6F72746E49;
  v7 = 0xE900000000000073;
  v8 = 0x6E6F697473657551;
  if (v2 != 3)
  {
    v8 = 0x746C75736552;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000258B35DF0;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

MentalHealthUI::MentalHealthAssessmentsAnalyticsActionType_optional __swiftcall MentalHealthAssessmentsAnalyticsActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258B03324();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}