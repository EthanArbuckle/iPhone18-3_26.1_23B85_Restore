void *sub_2515F22D8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2515F2340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2515F8380(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_2515F8408(0, &qword_27F446BD0, MEMORY[0x277D84ED8]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2515F244C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2515F8380(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_2515F8408(0, &qword_27F446BD0, MEMORY[0x277D84ED8]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_2515F2564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25163516C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2515F261C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25163516C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_2515F26D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2516350BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_25163522C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2515F27C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2516350BC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_25163522C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2515F28C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_251601E2C(0, &qword_280DD70C0, &qword_280DD7318, MEMORY[0x277CC9590], MEMORY[0x277D83638]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_2515F29B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_251601E2C(0, &qword_280DD70C0, &qword_280DD7318, MEMORY[0x277CC9590], MEMORY[0x277D83638]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_2515F2AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25163516C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 32);
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2515F2B60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25163516C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 32) = a2 + 2;
  }

  return result;
}

uint64_t sub_2515F2C1C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2515F2CBC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_2516046C8();
  (*(*(v3 - 8) + 8))(v0 + 16, v3);
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  v4 = sub_25163525C();
  (*(*(v4 - 8) + 8))(v0 + 24, v4);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2515F2D9C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2515F2DDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ClassificationAxisTimeline();
  sub_2516041EC();
  v3 = sub_25163551C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6, v3);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_2515F2FC4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(*(a1 + a2 - 8) + 32);
  result = sub_2516356BC();
  *a3 = v7;
  a3[1] = v8;
  return result;
}

__n128 sub_2515F301C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2515F3028(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_251609618();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2515F30D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_251609618();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2515F318C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2515F8380(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_2515F3248(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2515F8380(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_2515F3300(uint64_t a1, uint64_t a2)
{
  v4 = sub_25163516C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2515F336C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25163516C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2515F33DC()
{
  sub_251611730(0, &qword_27F4471D8, MEMORY[0x277D85670]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2515F348C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for ClassificationFactorTimeline(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  sub_2515F8380(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = v3 | v7 | v12;
  v15 = (((*(*(v10 - 8) + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);
  v17 = sub_25163516C();
  v18 = *(*(v17 - 8) + 8);
  v18(v0 + v8, v17);
  v18(v0 + v8 + *(v11 + 44), v17);
  v19 = *(v0 + v8 + v6[8]);

  v18(v0 + v13, v17);
  v18(v0 + v13 + *(v11 + 44), v17);
  v20 = *(v0 + v15 + 8);

  return MEMORY[0x2821FE8E8](v0, v15 + 16, v14 | 7);
}

uint64_t sub_2515F370C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  sub_2516041EC();
  sub_25163558C();

  return swift_getWitnessTable();
}

uint64_t sub_2515F3828()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_25163522C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5 + 8);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_2515F3980()
{
  sub_25161F1F4(0, &qword_27F446E38, type metadata accessor for os_unfair_lock_s);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);
  sub_25161F1F4(0, &qword_27F447378, sub_25161F248);
  (*(*(v2 - 8) + 8))(v0 + 24, v2);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2515F3A58()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2515F3A90()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2515F3ACC()
{
  v21 = *(v0 + 16);
  v1 = *(v21 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  sub_2515F8380(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(*(v5 - 8) + 64);
  v20 = (v9 + v7 + v8) & ~v7;
  v22 = sub_25163522C();
  v10 = *(v22 - 8);
  v11 = *(v10 + 80);
  v12 = (v20 + v9 + v11) & ~v11;
  v13 = v2 | v7 | v11;
  v14 = (*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + 40);

  (*(v1 + 8))(v0 + v3, v21);
  v16 = v0 + v8;
  v17 = sub_25163516C();
  v18 = *(*(v17 - 8) + 8);
  v18(v16, v17);
  v18(v16 + *(v6 + 44), v17);
  v18(v0 + v20, v17);
  v18(v0 + v20 + *(v6 + 44), v17);
  (*(v10 + 8))(v0 + v12, v22);

  return MEMORY[0x2821FE8E8](v0, v14 + 8, v13 | 7);
}

uint64_t sub_2515F3D24()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_25163522C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_2515F3E6C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v0 + v6, AssociatedTypeWitness);
  v8 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v5 | 7);
}

uint64_t sub_2515F3F24()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v23 = *(v2 + 80);
  v3 = *(v2 + 64);
  sub_2515F8380(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 80);
  v19 = (((v23 + 48) & ~v23) + v3 + v6) & ~v6;
  v7 = *(*(v4 - 8) + 64);
  v24 = sub_25163522C();
  v8 = *(v24 - 8);
  v9 = *(v8 + 80);
  v20 = (v19 + v7 + v9) & ~v9;
  v10 = *(v8 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 80);
  v13 = (v20 + v10 + v12) & ~v12;
  v21 = *(v11 + 64);
  v14 = v23 | v6 | v9 | v12;
  v15 = *(v0 + 40);

  (*(v2 + 8))(v0 + ((v23 + 48) & ~v23), v1);
  v16 = sub_25163516C();
  v17 = *(*(v16 - 8) + 8);
  v17(v0 + v19, v16);
  v17(v0 + v19 + *(v5 + 44), v16);
  (*(v8 + 8))(v0 + v20, v24);
  (*(v11 + 8))(v0 + v13, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v13 + v21, v14 | 7);
}

uint64_t sub_2515F41E8()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2515F4220()
{
  v25 = *(v0 + 3);
  v19 = *(v0 + 2);
  v1 = *(v19 - 8);
  v2 = *(v1 + 80);
  v23 = (v2 + 48) & ~v2;
  v3 = *(v1 + 64);
  sub_2515F8380(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 80);
  v7 = (v23 + v3 + v6) & ~v6;
  v20 = v7;
  v22 = *(*(v4 - 8) + 64);
  v27 = sub_25163522C();
  v8 = *(v27 - 8);
  v9 = *(v8 + 80);
  v21 = (v7 + v22 + v9) & ~v9;
  v10 = *(v8 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 80);
  v26 = v2 | v6 | v9 | v12;
  v13 = (v21 + v10 + v12) & ~v12;
  v14 = (*(v11 + 64) + v6 + v13) & ~v6;
  v15 = *(v0 + 5);

  (*(v1 + 8))(&v0[v23], v19);
  v16 = sub_25163516C();
  v17 = *(*(v16 - 8) + 8);
  v17(&v0[v20], v16);
  v17(&v0[v20 + *(v5 + 44)], v16);
  (*(v8 + 8))(&v0[v21], v27);
  (*(v11 + 8))(&v0[v13], AssociatedTypeWitness);
  v17(&v0[v14], v16);
  v17(&v0[v14 + *(v5 + 44)], v16);

  return MEMORY[0x2821FE8E8](v0, ((v22 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v26 | 7);
}

uint64_t sub_2515F4544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84) == a2)
  {
    v4 = *(v3 + 48);
    v5 = *(a3 + 16);

    return v4();
  }

  else
  {
    v7 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13 = *(AssociatedConformanceWitness + 8);
    v14 = *(AssociatedConformanceWitness + 24);
    sub_2516352AC();
    v12 = sub_25163563C();
    return (*(*(v12 - 8) + 48))(a1 + *(a3 + 36), a2, v12);
  }
}

uint64_t sub_2515F46AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  if (*(v6 + 84) == a3)
  {
    v7 = *(v6 + 56);
    v5 = *(a4 + 16);

    return v7(a1, a2, a2, v5);
  }

  else
  {
    v9 = *(a4 + 24);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14 = *(AssociatedConformanceWitness + 8);
    v15 = *(AssociatedConformanceWitness + 24);
    sub_2516352AC();
    v13 = sub_25163563C();
    return (*(*(v13 - 8) + 56))(a1 + *(a4 + 36), a2, a2, v13);
  }
}

uint64_t sub_2515F4824(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_getAssociatedTypeWitness();
  sub_2516041EC();
  sub_25163558C();

  return swift_getWitnessTable();
}

uint64_t sub_2515F48AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  sub_2515F8380(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_2515F4924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  sub_2515F8380(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_2515F49A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2515F8380(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = *(a3 + 16);
  v12 = *(a3 + 24);
  v13 = type metadata accessor for ClassificationAxis();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v16 = *(a1 + *(a3 + 40));
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_2515F4AB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2515F8380(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = *(a4 + 16);
    v14 = *(a4 + 24);
    result = type metadata accessor for ClassificationAxis();
    v16 = *(result - 8);
    if (*(v16 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v16 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2515F4BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25163516C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a3 + 16);
    v11 = *(a3 + 24);
    v12 = type metadata accessor for ClassificationAxis();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 36);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2515F4CB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25163516C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = *(a4 + 16);
    v13 = *(a4 + 24);
    v14 = type metadata accessor for ClassificationAxis();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 36);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_2515F4DB0(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for MapMeasurementEnumerator();
  return swift_getWitnessTable();
}

uint64_t sub_2515F4DFC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2515F4E3C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_2515F4E84@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EmptyClassificationFactorTimelineProvider(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
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

  return *a1;
}

_WORD *storeEnumTagSinglePayload for EmptyClassificationFactorTimelineProvider(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2515F505C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2515F507C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_2515F50B8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2515F514C()
{
  v1 = *v0;
  sub_25163590C();
  MEMORY[0x25307C1E0](v1);
  return sub_25163594C();
}

uint64_t sub_2515F5194()
{
  v1 = *v0;
  sub_25163590C();
  MEMORY[0x25307C1E0](v1);
  return sub_25163594C();
}

uint64_t sub_2515F5220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ClassificationQualityGroup.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ClassificationQualityGroup.rawValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2515F5344@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_2515F5350()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25163590C();
  sub_25163539C();
  return sub_25163594C();
}

uint64_t sub_2515F539C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_25163539C();
}

uint64_t sub_2515F53A4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25163590C();
  sub_25163539C();
  return sub_25163594C();
}

uint64_t sub_2515F549C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2516358DC();
  }
}

BOOL static ClassificationQualityGroup.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = *a1 == 0x6E656C6C65637865 && v3 == 0xE900000000000074;
  if (!v6 && (sub_2516358DC() & 1) == 0)
  {
    if (v2 == 1685024615 && v3 == 0xE400000000000000)
    {
      v9 = 0;
      if (v4 != 0x6E656C6C65637865)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = (sub_2516358DC() & 1) - 1;
      if (v4 != 0x6E656C6C65637865)
      {
        goto LABEL_10;
      }
    }

    if (v5 == 0xE900000000000074)
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  v7 = 1;
  v8 = v4 == 0x6E656C6C65637865 && v5 == 0xE900000000000074;
  v9 = 1;
  if (!v8)
  {
LABEL_10:
    if ((sub_2516358DC() & 1) == 0)
    {
      if (v4 == 1685024615 && v5 == 0xE400000000000000)
      {
        v7 = 0;
      }

      else
      {
        v7 = (sub_2516358DC() & 1) - 1;
      }

      return v9 < v7;
    }

LABEL_23:
    v7 = 1;
  }

  return v9 < v7;
}

unint64_t sub_2515F5660()
{
  result = qword_27F446B98;
  if (!qword_27F446B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446B98);
  }

  return result;
}

BOOL sub_2515F56B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = *a1 == 0x6E656C6C65637865 && v3 == 0xE900000000000074;
  if (!v6 && (sub_2516358DC() & 1) == 0)
  {
    if (v2 == 1685024615 && v3 == 0xE400000000000000)
    {
      v9 = 0;
      if (v4 != 0x6E656C6C65637865)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = (sub_2516358DC() & 1) - 1;
      if (v4 != 0x6E656C6C65637865)
      {
        goto LABEL_10;
      }
    }

    if (v5 == 0xE900000000000074)
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  v7 = 1;
  v8 = v4 == 0x6E656C6C65637865 && v5 == 0xE900000000000074;
  v9 = 1;
  if (!v8)
  {
LABEL_10:
    if ((sub_2516358DC() & 1) == 0)
    {
      if (v4 == 1685024615 && v5 == 0xE400000000000000)
      {
        v7 = 0;
      }

      else
      {
        v7 = (sub_2516358DC() & 1) - 1;
      }

      return v9 < v7;
    }

LABEL_23:
    v7 = 1;
  }

  return v9 < v7;
}

BOOL sub_2515F5814(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = *a2 == 0x6E656C6C65637865 && v5 == 0xE900000000000074;
  if (!v6 && (sub_2516358DC() & 1) == 0)
  {
    if (v4 == 1685024615 && v5 == 0xE400000000000000)
    {
      v9 = 0;
      if (v2 != 0x6E656C6C65637865)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = (sub_2516358DC() & 1) - 1;
      if (v2 != 0x6E656C6C65637865)
      {
        goto LABEL_10;
      }
    }

    if (v3 == 0xE900000000000074)
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  v7 = 1;
  v8 = v2 == 0x6E656C6C65637865 && v3 == 0xE900000000000074;
  v9 = 1;
  if (!v8)
  {
LABEL_10:
    if ((sub_2516358DC() & 1) == 0)
    {
      if (v2 == 1685024615 && v3 == 0xE400000000000000)
      {
        v7 = 0;
      }

      else
      {
        v7 = (sub_2516358DC() & 1) - 1;
      }

      return v9 >= v7;
    }

LABEL_23:
    v7 = 1;
  }

  return v9 >= v7;
}

BOOL sub_2515F5974(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = *a1 == 0x6E656C6C65637865 && v3 == 0xE900000000000074;
  if (!v6 && (sub_2516358DC() & 1) == 0)
  {
    if (v2 == 1685024615 && v3 == 0xE400000000000000)
    {
      v9 = 0;
      if (v4 != 0x6E656C6C65637865)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = (sub_2516358DC() & 1) - 1;
      if (v4 != 0x6E656C6C65637865)
      {
        goto LABEL_10;
      }
    }

    if (v5 == 0xE900000000000074)
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  v7 = 1;
  v8 = v4 == 0x6E656C6C65637865 && v5 == 0xE900000000000074;
  v9 = 1;
  if (!v8)
  {
LABEL_10:
    if ((sub_2516358DC() & 1) == 0)
    {
      if (v4 == 1685024615 && v5 == 0xE400000000000000)
      {
        v7 = 0;
      }

      else
      {
        v7 = (sub_2516358DC() & 1) - 1;
      }

      return v9 >= v7;
    }

LABEL_23:
    v7 = 1;
  }

  return v9 >= v7;
}

BOOL sub_2515F5AD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = *a2 == 0x6E656C6C65637865 && v5 == 0xE900000000000074;
  if (!v6 && (sub_2516358DC() & 1) == 0)
  {
    if (v4 == 1685024615 && v5 == 0xE400000000000000)
    {
      v9 = 0;
      if (v2 != 0x6E656C6C65637865)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = (sub_2516358DC() & 1) - 1;
      if (v2 != 0x6E656C6C65637865)
      {
        goto LABEL_10;
      }
    }

    if (v3 == 0xE900000000000074)
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  v7 = 1;
  v8 = v2 == 0x6E656C6C65637865 && v3 == 0xE900000000000074;
  v9 = 1;
  if (!v8)
  {
LABEL_10:
    if ((sub_2516358DC() & 1) == 0)
    {
      if (v2 == 1685024615 && v3 == 0xE400000000000000)
      {
        v7 = 0;
      }

      else
      {
        v7 = (sub_2516358DC() & 1) - 1;
      }

      return v9 < v7;
    }

LABEL_23:
    v7 = 1;
  }

  return v9 < v7;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2515F5C40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2515F5C88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2515F5CD4()
{
  result = qword_27F446BA0;
  if (!qword_27F446BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446BA0);
  }

  return result;
}

uint64_t PregnancyTimeline.ChangeMoment.init(date:pregnancyStatus:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_25163516C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for PregnancyTimeline.ChangeMoment(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

BOOL static PregnancyTimeline.ChangeMoment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_25163514C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PregnancyTimeline.ChangeMoment(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t PregnancyTimeline.ChangeMoment.hash(into:)()
{
  sub_25163516C();
  sub_2515F83A0(&qword_27F446BA8, MEMORY[0x277CC9578]);
  sub_2516352CC();
  v1 = type metadata accessor for PregnancyTimeline.ChangeMoment(0);
  return MEMORY[0x25307C1E0](*(v0 + *(v1 + 20)));
}

uint64_t PregnancyTimeline.ChangeMoment.hashValue.getter()
{
  sub_25163590C();
  sub_25163516C();
  sub_2515F83A0(&qword_27F446BA8, MEMORY[0x277CC9578]);
  sub_2516352CC();
  v1 = type metadata accessor for PregnancyTimeline.ChangeMoment(0);
  MEMORY[0x25307C1E0](*(v0 + *(v1 + 20)));
  return sub_25163594C();
}

uint64_t sub_2515F5F58(uint64_t a1)
{
  sub_25163590C();
  sub_25163516C();
  sub_2515F83A0(&qword_27F446BA8, MEMORY[0x277CC9578]);
  sub_2516352CC();
  MEMORY[0x25307C1E0](*(v1 + *(a1 + 20)));
  return sub_25163594C();
}

uint64_t sub_2515F5FFC(uint64_t a1, uint64_t a2)
{
  sub_25163516C();
  sub_2515F83A0(&qword_27F446BA8, MEMORY[0x277CC9578]);
  sub_2516352CC();
  return MEMORY[0x25307C1E0](*(v2 + *(a2 + 20)));
}

uint64_t sub_2515F6088(uint64_t a1, uint64_t a2)
{
  sub_25163590C();
  sub_25163516C();
  sub_2515F83A0(&qword_27F446BA8, MEMORY[0x277CC9578]);
  sub_2516352CC();
  MEMORY[0x25307C1E0](*(v2 + *(a2 + 20)));
  return sub_25163594C();
}

void *PregnancyTimeline.changeMoments.getter()
{
  v1 = sub_25163516C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v81 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v93 = &v79 - v7;
  MEMORY[0x28223BE20](v6);
  v85 = &v79 - v8;
  v95 = type metadata accessor for PregnancyTimeline.ChangeMoment(0);
  v98 = *(v95 - 8);
  v9 = *(v98 + 64);
  v10 = MEMORY[0x28223BE20](v95);
  v79 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v83 = &v79 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v92 = &v79 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v99 = &v79 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v84 = &v79 - v19;
  MEMORY[0x28223BE20](v18);
  v87 = &v79 - v20;
  sub_2515F83E8(0);
  v91 = v21;
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v90 = &v79 - v26;
  sub_2515F84A4(0);
  v28 = v27;
  v29 = *(v27 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  v32 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2515F84C4();
  v34 = v33 - 8;
  v35 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v79 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(type metadata accessor for PregnancyTimeline(0) + 20);
  sub_2515F8408(0, &qword_27F446BD0, MEMORY[0x277D84ED8]);
  v80 = v0;
  sub_25163599C();
  (*(v29 + 16))(v37, v32, v28);
  v39 = *(v34 + 44);
  sub_2515F83A0(&qword_27F446BC8, sub_2515F84A4);
  sub_2516355AC();
  (*(v29 + 8))(v32, v28);
  v94 = v28;
  sub_2516355CC();
  v40 = *&v37[v39] == v100[0];
  v82 = v2;
  if (!v40)
  {
    v86 = 0;
    v96 = (v2 + 8);
    v52 = MEMORY[0x277D84F90];
    v97 = (v2 + 16);
    v88 = v39;
    v89 = v1;
    v53 = v95;
    while (1)
    {
      v54 = sub_2516355FC();
      v55 = v90;
      sub_2515F85B0(v56, v90, sub_2515F83E8);
      v54(v100, 0);
      sub_2516355DC();
      sub_2515F8618(v55, v25, sub_2515F83E8);
      v57 = v52[2];
      if (v57)
      {
        v58 = (*(v98 + 80) + 32) & ~*(v98 + 80);
        v59 = *(v98 + 72);
        v60 = v87;
        sub_2515F85B0(v52 + v58 + v59 * (v57 - 1), v87, type metadata accessor for PregnancyTimeline.ChangeMoment);
        if (*(v60 + *(v53 + 20)) == 2)
        {
          v61 = v85;
          sub_25163510C();
          if (sub_25163512C())
          {
            v62 = v84;
            (*v97)(v84, v61, v1);
            *(v62 + *(v53 + 20)) = 0;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v52 = sub_2515F8B90(0, v52[2] + 1, 1, v52, &qword_27F446C58, type metadata accessor for PregnancyTimeline.ChangeMoment, type metadata accessor for PregnancyTimeline.ChangeMoment);
            }

            v64 = v52[2];
            v63 = v52[3];
            if (v64 >= v63 >> 1)
            {
              v52 = sub_2515F8B90(v63 > 1, v64 + 1, 1, v52, &qword_27F446C58, type metadata accessor for PregnancyTimeline.ChangeMoment, type metadata accessor for PregnancyTimeline.ChangeMoment);
            }

            (*v96)();
            sub_2515F8680(v87, type metadata accessor for PregnancyTimeline.ChangeMoment);
            v52[2] = v64 + 1;
            sub_2515F8618(v84, v52 + v58 + v64 * v59, type metadata accessor for PregnancyTimeline.ChangeMoment);
            goto LABEL_24;
          }

          (*v96)(v61, v1);
        }

        sub_2515F8680(v60, type metadata accessor for PregnancyTimeline.ChangeMoment);
      }

LABEL_24:
      v65 = *v97;
      v66 = v99;
      (*v97)(v99, v25, v1);
      *(v66 + *(v53 + 20)) = 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_2515F8B90(0, v52[2] + 1, 1, v52, &qword_27F446C58, type metadata accessor for PregnancyTimeline.ChangeMoment, type metadata accessor for PregnancyTimeline.ChangeMoment);
      }

      v68 = v52[2];
      v67 = v52[3];
      if (v68 >= v67 >> 1)
      {
        v52 = sub_2515F8B90(v67 > 1, v68 + 1, 1, v52, &qword_27F446C58, type metadata accessor for PregnancyTimeline.ChangeMoment, type metadata accessor for PregnancyTimeline.ChangeMoment);
      }

      v52[2] = v68 + 1;
      v69 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v70 = *(v98 + 72);
      sub_2515F8618(v99, v52 + v69 + v70 * v68, type metadata accessor for PregnancyTimeline.ChangeMoment);
      v71 = *(v91 + 36);
      v72 = v93;
      sub_2516350FC();
      v73 = sub_25163514C();
      v74 = v72;
      v1 = v89;
      (*v96)(v74, v89);
      if (v73)
      {
        sub_2515F8680(v25, sub_2515F83E8);
        v86 = 1;
        v53 = v95;
      }

      else
      {
        v75 = v92;
        v65(v92, &v25[v71], v1);
        v53 = v95;
        *(v75 + *(v95 + 20)) = 2;
        v77 = v52[2];
        v76 = v52[3];
        if (v77 >= v76 >> 1)
        {
          v52 = sub_2515F8B90(v76 > 1, v77 + 1, 1, v52, &qword_27F446C58, type metadata accessor for PregnancyTimeline.ChangeMoment, type metadata accessor for PregnancyTimeline.ChangeMoment);
        }

        sub_2515F8680(v25, sub_2515F83E8);
        v52[2] = v77 + 1;
        sub_2515F8618(v92, v52 + v69 + v77 * v70, type metadata accessor for PregnancyTimeline.ChangeMoment);
      }

      sub_2516355CC();
      if (*&v37[v88] == v100[0])
      {
        goto LABEL_4;
      }
    }
  }

  v86 = 0;
  v52 = MEMORY[0x277D84F90];
LABEL_4:
  sub_2515F8680(v37, sub_2515F84C4);
  v41 = v52[2];
  if (v41)
  {
    v42 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v43 = *(v98 + 72);
    v44 = v83;
    sub_2515F85B0(v52 + v42 + v43 * (v41 - 1), v83, type metadata accessor for PregnancyTimeline.ChangeMoment);
    if ((v86 & 1) == 0)
    {
      v45 = v81;
      sub_25163510C();
      sub_2515F8380(0);
      v47 = *(v46 + 36);
      sub_2515F83A0(&qword_280DD7318, MEMORY[0x277CC9578]);
      if (sub_25163530C())
      {
        v48 = v82;
        v49 = v79;
        (*(v82 + 16))(v79, v45, v1);
        *(v49 + *(v95 + 20)) = 0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_2515F8B90(0, v52[2] + 1, 1, v52, &qword_27F446C58, type metadata accessor for PregnancyTimeline.ChangeMoment, type metadata accessor for PregnancyTimeline.ChangeMoment);
        }

        v51 = v52[2];
        v50 = v52[3];
        if (v51 >= v50 >> 1)
        {
          v52 = sub_2515F8B90(v50 > 1, v51 + 1, 1, v52, &qword_27F446C58, type metadata accessor for PregnancyTimeline.ChangeMoment, type metadata accessor for PregnancyTimeline.ChangeMoment);
        }

        (*(v48 + 8))(v45, v1);
        sub_2515F8680(v44, type metadata accessor for PregnancyTimeline.ChangeMoment);
        v52[2] = v51 + 1;
        sub_2515F8618(v49, v52 + v42 + v51 * v43, type metadata accessor for PregnancyTimeline.ChangeMoment);
        return v52;
      }

      (*(v82 + 8))(v45, v1);
    }

    sub_2515F8680(v44, type metadata accessor for PregnancyTimeline.ChangeMoment);
  }

  return v52;
}

uint64_t PregnancyTimeline.init<A>(dateRange:pregnancyIntervals:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2515F85B0(a1, a5, sub_2515F8380);
  sub_2515F83E8(0);
  sub_2515F74C0(sub_2515F6FB4, 0, a3, v9, MEMORY[0x277D84A98], a4, MEMORY[0x277D84AC0], v10);
  v11 = *(type metadata accessor for PregnancyTimeline(0) + 20);
  sub_25163516C();
  sub_2515F86E0(0);
  sub_2515F83A0(&qword_280DD7318, MEMORY[0x277CC9578]);
  sub_2515F83A0(&qword_27F446BE0, sub_2515F86E0);
  sub_2516359AC();
  (*(*(a3 - 1) + 8))(a2, a3);
  return sub_2515F8680(a1, sub_2515F8380);
}

uint64_t sub_2515F6FB4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_2515F8380(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2515F85B0(a1, v7, sub_2515F8380);
  return sub_2515F705C(v7, a2);
}

uint64_t sub_2515F705C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  sub_2515F8E44();
  v43 = v3;
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = &v37 - v7;
  v8 = sub_25163516C();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v38 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v37 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  sub_2515F8380(0);
  v22 = *(v21 + 36);
  sub_2516350FC();
  v23 = a1;
  LOBYTE(a1) = sub_25163514C();
  v40 = v9[1];
  v41 = v9 + 1;
  v40(v20, v8);
  v24 = v9[2];
  if (a1)
  {
    v24(v20, v23, v8);
    v24(v18, v23 + v22, v8);
    sub_2515F83A0(&qword_280DD7318, MEMORY[0x277CC9578]);
    v25 = sub_25163530C();
    sub_2515F8680(v23, sub_2515F8380);
    v15 = v20;
    if (v25)
    {
LABEL_5:
      v28 = v9[4];
      v29 = v42;
      v28(v42, v15, v8);
      v30 = v43;
      v28((v29 + *(v43 + 48)), v18, v8);
      v31 = v39;
      sub_2515F85B0(v29, v39, sub_2515F8E44);
      v32 = *(v30 + 48);
      v33 = v44;
      v28(v44, v31, v8);
      v34 = v40;
      v40((v31 + v32), v8);
      sub_2515F8618(v29, v31, sub_2515F8E44);
      v35 = *(v30 + 48);
      sub_2515F83E8(0);
      v28(&v33[*(v36 + 36)], (v31 + v35), v8);
      return v34(v31, v8);
    }

    __break(1u);
  }

  v24(v15, v23, v8);
  sub_2516350DC();
  v18 = v38;
  sub_2516350CC();
  sub_2515F83A0(&qword_280DD7318, MEMORY[0x277CC9578]);
  v26 = sub_25163530C();
  result = sub_2515F8680(v23, sub_2515F8380);
  if (v26)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_2515F74C0(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v49 - v21;
  v22 = sub_25163563C();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x28223BE20](v69);
  v38 = &v49 - v37;
  v39 = sub_2516353CC();
  v70 = sub_25163572C();
  v65 = sub_25163573C();
  sub_25163570C();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_2516353BC();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_25163565C();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_25163571C();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_25163565C();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_25163571C();
      sub_25163565C();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t sub_2515F7BB4()
{
  sub_25163516C();
  sub_2515F83A0(&qword_280DD7318, MEMORY[0x277CC9578]);
  return sub_25163530C() & 1;
}

uint64_t static PregnancyTimeline.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_25163516C();
  sub_2515F83A0(&qword_27F446BE8, MEMORY[0x277CC9578]);
  if ((sub_25163532C() & 1) == 0)
  {
    return 0;
  }

  sub_2515F8380(0);
  v6 = *(v5 + 36);
  if ((sub_25163532C() & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for PregnancyTimeline(0) + 20);
  v8 = sub_2515F83A0(&qword_280DD7318, MEMORY[0x277CC9578]);

  return MEMORY[0x2821FE698](a1 + v7, a2 + v7, v4, v8);
}

uint64_t PregnancyTimeline.hash(into:)()
{
  sub_25163516C();
  sub_2515F83A0(&qword_27F446BA8, MEMORY[0x277CC9578]);
  sub_2516352CC();
  sub_2515F8380(0);
  v2 = v0 + *(v1 + 36);
  sub_2516352CC();
  LODWORD(v2) = *(type metadata accessor for PregnancyTimeline(0) + 20);
  sub_2515F8408(0, &qword_27F446BD0, MEMORY[0x277D84ED8]);
  sub_2515F8714();
  return sub_2516352CC();
}

uint64_t PregnancyTimeline.hashValue.getter()
{
  sub_25163590C();
  sub_25163516C();
  sub_2515F83A0(&qword_27F446BA8, MEMORY[0x277CC9578]);
  sub_2516352CC();
  sub_2515F8380(0);
  v2 = v0 + *(v1 + 36);
  sub_2516352CC();
  LODWORD(v2) = *(type metadata accessor for PregnancyTimeline(0) + 20);
  sub_2515F8408(0, &qword_27F446BD0, MEMORY[0x277D84ED8]);
  sub_2515F8714();
  sub_2516352CC();
  return sub_25163594C();
}

uint64_t sub_2515F7F5C(uint64_t a1)
{
  sub_25163590C();
  sub_25163516C();
  sub_2515F83A0(&qword_27F446BA8, MEMORY[0x277CC9578]);
  sub_2516352CC();
  sub_2515F8380(0);
  v4 = v1 + *(v3 + 36);
  sub_2516352CC();
  v5 = *(a1 + 20);
  sub_2515F8408(0, &qword_27F446BD0, MEMORY[0x277D84ED8]);
  sub_2515F8714();
  sub_2516352CC();
  return sub_25163594C();
}

uint64_t sub_2515F8064(uint64_t a1, uint64_t a2)
{
  sub_25163516C();
  sub_2515F83A0(&qword_27F446BA8, MEMORY[0x277CC9578]);
  sub_2516352CC();
  sub_2515F8380(0);
  v5 = v2 + *(v4 + 36);
  sub_2516352CC();
  v6 = *(a2 + 20);
  sub_2515F8408(0, &qword_27F446BD0, MEMORY[0x277D84ED8]);
  sub_2515F8714();
  return sub_2516352CC();
}

uint64_t sub_2515F8154(uint64_t a1, uint64_t a2)
{
  sub_25163590C();
  sub_25163516C();
  sub_2515F83A0(&qword_27F446BA8, MEMORY[0x277CC9578]);
  sub_2516352CC();
  sub_2515F8380(0);
  v5 = v2 + *(v4 + 36);
  sub_2516352CC();
  v6 = *(a2 + 20);
  sub_2515F8408(0, &qword_27F446BD0, MEMORY[0x277D84ED8]);
  sub_2515F8714();
  sub_2516352CC();
  return sub_25163594C();
}

uint64_t sub_2515F8258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25163516C();
  sub_2515F83A0(&qword_27F446BE8, MEMORY[0x277CC9578]);
  if ((sub_25163532C() & 1) == 0)
  {
    return 0;
  }

  sub_2515F8380(0);
  v8 = *(v7 + 36);
  if ((sub_25163532C() & 1) == 0)
  {
    return 0;
  }

  v9 = *(a3 + 20);
  v10 = sub_2515F83A0(&qword_280DD7318, MEMORY[0x277CC9578]);

  return MEMORY[0x2821FE698](a1 + v9, a2 + v9, v6, v10);
}

uint64_t sub_2515F83A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2515F8408(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_25163516C();
    v7 = sub_2515F83A0(&qword_280DD7318, MEMORY[0x277CC9578]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2515F84C4()
{
  if (!qword_27F446BC0)
  {
    sub_2515F84A4(255);
    sub_2515F83A0(&qword_27F446BC8, sub_2515F84A4);
    v0 = sub_25163574C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F446BC0);
    }
  }
}

uint64_t sub_2515F8578(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2515F85B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2515F8618(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2515F8680(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2515F8714()
{
  result = qword_27F446BF0;
  if (!qword_27F446BF0)
  {
    sub_2515F8408(255, &qword_27F446BD0, MEMORY[0x277D84ED8]);
    sub_2515F83A0(&qword_27F446BA8, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446BF0);
  }

  return result;
}

void sub_2515F8890()
{
  sub_2515F8380(319);
  if (v0 <= 0x3F)
  {
    sub_2515F8408(319, &qword_27F446BD0, MEMORY[0x277D84ED8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2515F8958()
{
  result = sub_25163516C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

char *sub_2515F89CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2515F8D84(0, &qword_27F446C38, sub_2515F8DEC, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_2515F8B90(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2515F8D84(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_2515F8D84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2515F8DEC()
{
  if (!qword_27F446C40)
  {
    v0 = sub_25163560C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F446C40);
    }
  }
}

void sub_2515F8E44()
{
  if (!qword_27F446C50)
  {
    sub_25163516C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F446C50);
    }
  }
}

HealthDomains::DomainIdentifier_optional __swiftcall DomainRegistry.domainIdentifier(for:)(HealthDomains::MeasureIdentifier a1)
{
  v3 = v2;
  v4 = *a1.identifier._countAndFlagsBits;
  v5 = *(a1.identifier._countAndFlagsBits + 8);
  v6 = (*(v1 + 16))(a1.identifier._object);
  sub_2515F9034(sub_2515F900C, v6, v3);

  result.value.identifier._object = v8;
  result.value.identifier._countAndFlagsBits = v7;
  result.is_nil = v9;
  return result;
}

uint64_t sub_2515F8F54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1[1];
  v13[0] = *a1;
  v9 = (*(a6 + 64))(v13, a5, a6);
  v13[0] = a3;
  v13[1] = a4;
  v12[2] = v13;
  v10 = sub_2515F92E4(sub_2515F9390, v12, v9);

  return v10 & 1;
}

uint64_t sub_2515F9034@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = (a2 + 40);
    while (1)
    {
      v8 = *v7;
      v10 = *(v7 - 1);
      v11 = v8;

      result = v6(&v10);
      if (v3)
      {
      }

      if (result)
      {
        break;
      }

      v7 += 2;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v9 = v11;
    *a3 = v10;
    a3[1] = v9;
  }

  else
  {
LABEL_6:
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_2515F9168@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  result = (*(v5 + 32))(v9, v4);
  *a2 = result;
  return result;
}

uint64_t sub_2515F91CC(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v7[0] = a3;
  v7[1] = a4;

  a1(&v8, v7);
  if (v4)
  {

    __break(1u);
  }

  else
  {

    return v8;
  }

  return result;
}

uint64_t sub_2515F92E4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = v6;
      v9 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v9;

      v10 = a1(v12);

      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 2;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_2515F9390(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2516358DC() & 1;
  }
}

uint64_t BirthdayTimeline.init(dateOfBirthComponents:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2515FA1AC(0, &qword_27F446C60, MEMORY[0x277CC99E8]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_2516350BC();
  v11 = *(v10 - 8);
  (*(v11 + 16))(a3, a1, v10);
  v12 = sub_25163522C();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v9, a2, v12);
  (*(v13 + 56))(v9, 0, 1, v12);
  sub_2516350AC();
  (*(v11 + 8))(a1, v10);
  v14 = type metadata accessor for BirthdayTimeline();
  return (*(v13 + 32))(a3 + *(v14 + 20), a2, v12);
}

uint64_t type metadata accessor for BirthdayTimeline()
{
  result = qword_27F446C88;
  if (!qword_27F446C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BirthdayTimeline.birthdays(in:)(uint64_t a1)
{
  v103 = a1;
  sub_2515FA080();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v90 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2515FA14C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v91 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2516351CC();
  v84 = *(v85 - 8);
  v8 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v83 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2516351EC();
  v88 = *(v10 - 8);
  v89 = v10;
  v11 = *(v88 + 64);
  MEMORY[0x28223BE20](v10);
  v87 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_25163520C();
  v106 = *(v102 - 8);
  v13 = *(v106 + 64);
  MEMORY[0x28223BE20](v102);
  v101 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_2516351FC();
  v95 = *(v99 - 8);
  v15 = *(v95 + 64);
  MEMORY[0x28223BE20](v99);
  v98 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25163519C();
  v18 = *(v17 - 8);
  v19 = v18;
  v104 = v17;
  v105 = v18;
  v20 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2515FA1AC(0, &qword_27F446C78, MEMORY[0x277CC9A70]);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v75 - v25;
  sub_2515FA1AC(0, &qword_27F446C60, MEMORY[0x277CC99E8]);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v75 - v29;
  v31 = sub_2516350BC();
  v96 = *(v31 - 8);
  v97 = v31;
  v32 = *(v96 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2515FA1AC(0, &qword_27F446C80, MEMORY[0x277CC9578]);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v92 = &v75 - v37;
  v38 = sub_25163516C();
  v93 = *(v38 - 8);
  v94 = v38;
  v39 = *(v93 + 64);
  MEMORY[0x28223BE20](v38);
  v81 = &v75 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = *(type metadata accessor for BirthdayTimeline() + 20);
  v41 = sub_25163522C();
  (*(*(v41 - 8) + 56))(v30, 1, 1, v41);
  v42 = sub_25163523C();
  (*(*(v42 - 8) + 56))(v26, 1, 1, v42);
  sub_25163508C();
  sub_25163507C();
  LOBYTE(v74) = 1;
  v73 = 0;
  LOBYTE(v72) = 1;
  v71 = 0;
  sub_25163509C();
  v43 = *MEMORY[0x277CC9870];
  v44 = *(v19 + 104);
  v80 = v19 + 104;
  v79 = v44;
  v44(v22, v43, v104);
  v45 = v95;
  v46 = v98;
  v47 = v99;
  (*(v95 + 104))(v98, *MEMORY[0x277CC98F0], v99);
  v48 = v106;
  v49 = *(v106 + 104);
  v50 = v101;
  v77 = *MEMORY[0x277CC9900];
  v51 = v102;
  v78 = v106 + 104;
  v76 = v49;
  v49(v101);
  v86 = v1;
  v52 = v92;
  sub_25163521C();
  v53 = *(v48 + 8);
  v106 = v48 + 8;
  v82 = v53;
  v53(v50, v51);
  (*(v45 + 8))(v46, v47);
  v54 = *(v105 + 8);
  v105 += 8;
  v54(v22, v104);
  (*(v96 + 8))(v34, v97);
  v55 = v93;
  v56 = v94;
  if ((*(v93 + 48))(v52, 1) == 1)
  {
    sub_2515FA200(v52);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v58 = v55;
    v59 = v81;
    (*(v55 + 32))(v81, v52, v56);
    sub_2515FA278(0, &qword_280DD70C0, MEMORY[0x277D83638]);
    v61 = v103 + *(v60 + 36);
    v62 = v83;
    sub_2516351BC();
    v63 = v104;
    v79(v22, *MEMORY[0x277CC9868], v104);
    v65 = v101;
    v64 = v102;
    v76(v101, v77, v102);
    v73 = MEMORY[0x277D84F90];
    v74 = MEMORY[0x277D84F90];
    v71 = MEMORY[0x277D84F90];
    v72 = MEMORY[0x277D84F90];
    v66 = v87;
    sub_2516351DC();
    v82(v65, v64);
    v54(v22, v63);
    (*(v84 + 8))(v62, v85);
    sub_2515FA278(0, &qword_27F446BB0, MEMORY[0x277D83D00]);
    v68 = v90;
    (*(*(v67 - 8) + 56))(v90, 1, 1, v67);
    sub_2516351AC();
    v69 = sub_2515FA2E4(v68);
    MEMORY[0x28223BE20](v69);
    v73 = v103;
    v70 = sub_2515FA410(sub_2515FA3F0, &v71);
    (*(v88 + 8))(v66, v89);
    (*(v58 + 8))(v59, v56);
    return v70;
  }
}

void sub_2515FA080()
{
  if (!qword_27F446C68)
  {
    sub_2515FA278(255, &qword_27F446BB0, MEMORY[0x277D83D00]);
    v0 = sub_25163563C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F446C68);
    }
  }
}

unint64_t sub_2515FA0F4()
{
  result = qword_280DD7318;
  if (!qword_280DD7318)
  {
    sub_25163516C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DD7318);
  }

  return result;
}

void sub_2515FA14C()
{
  if (!qword_27F446C70)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F446C70);
    }
  }
}

void sub_2515FA1AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25163563C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2515FA200(uint64_t a1)
{
  sub_2515FA1AC(0, &qword_27F446C80, MEMORY[0x277CC9578]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2515FA278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_25163516C();
    v7 = sub_2515FA0F4();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2515FA2E4(uint64_t a1)
{
  sub_2515FA080();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2515FA340()
{
  sub_25163516C();
  sub_2515FA0F4();
  if ((sub_2516352FC() & 1) == 0)
  {
    return 0;
  }

  sub_2515FA278(0, &qword_280DD70C0, MEMORY[0x277D83638]);
  v1 = *(v0 + 36);
  return sub_25163530C() & 1;
}

uint64_t sub_2515FA410(uint64_t (*a1)(char *), uint64_t a2)
{
  v36 = a1;
  sub_2515FA1AC(0, &qword_27F446C80, MEMORY[0x277CC9578]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = v28 - v6;
  v7 = sub_25163516C();
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v35 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  sub_2515FA958();
  v14 = v13;
  v28[0] = *(v13 - 8);
  v15 = *(v28[0] + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2515FA14C();
  swift_getOpaqueTypeConformance2();
  sub_2516353BC();
  v18 = v31;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = v17;
  v38 = v14;
  v20 = v30;
  v34 = AssociatedConformanceWitness;
  sub_25163565C();
  v32 = *(v20 + 48);
  v33 = v20 + 48;
  if (v32(v18, 1, v7) == 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_3:
    (*(v28[0] + 8))(v37, v38);
    sub_2515FA200(v18);
  }

  else
  {
    v22 = *(v20 + 32);
    v29 = (v20 + 8);
    v21 = MEMORY[0x277D84F90];
    v28[1] = a2;
    v22(v12, v18, v7);
    while (1)
    {
      v23 = v36(v12);
      if (v2)
      {
        break;
      }

      if (v23)
      {
        v22(v35, v12, v7);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2515FD56C(0, *(v21 + 16) + 1, 1);
          v21 = v39;
        }

        v26 = *(v21 + 16);
        v25 = *(v21 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_2515FD56C(v25 > 1, v26 + 1, 1);
          v21 = v39;
        }

        *(v21 + 16) = v26 + 1;
        v22((v21 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26), v35, v7);
        v18 = v31;
      }

      else
      {
        (*v29)(v12, v7);
      }

      sub_25163565C();
      if (v32(v18, 1, v7) == 1)
      {
        goto LABEL_3;
      }

      v22(v12, v18, v7);
    }

    (*v29)(v12, v7);
    (*(v28[0] + 8))(v37, v38);
  }

  return v21;
}

id BirthdayTimeline.age(on:)()
{
  v0 = sub_25163506C();
  v1 = sub_25163511C();
  v2 = [v0 hk:v1 ageWithCurrentDate:?];

  return v2;
}

uint64_t sub_2515FA8D4()
{
  result = sub_2516350BC();
  if (v1 <= 0x3F)
  {
    result = sub_25163522C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2515FA958()
{
  if (!qword_27F446C98)
  {
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeMetadata2();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (!v1)
    {
      atomic_store(AssociatedTypeWitness, &qword_27F446C98);
    }
  }
}

uint64_t sub_2515FAA78@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  for (i = *(a2 + 16) - 1; i != -1; --i)
  {
    v10 = a3(0);
    v11 = *(v10 - 8);
    v12 = v11;
    v13 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v11 + 72) * i;
    result = a1(v13);
    if (v5)
    {
      return result;
    }

    if (result)
    {
      sub_2516017F0(v13, a5, a4);
      return (*(v12 + 56))(a5, 0, 1, v10);
    }
  }

  v15 = a3(0);
  return (*(*(v15 - 8) + 56))(a5, 1, 1, v15);
}

uint64_t ClassificationFactorTimeline.ChangeMoment.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25163516C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ClassificationFactorTimeline.ChangeMoment.date.setter(uint64_t a1)
{
  v3 = sub_25163516C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ClassificationFactorTimeline.ChangeMoment.init(date:factors:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = a2[2];
  v8 = a2[3];
  v9 = *(a2 + 32);
  v10 = sub_25163516C();
  (*(*(v10 - 8) + 32))(a3, a1, v10);
  result = type metadata accessor for ClassificationFactorTimeline.ChangeMoment(0);
  v12 = a3 + *(result + 20);
  *v12 = v5;
  *(v12 + 8) = v6;
  *(v12 + 16) = v7;
  *(v12 + 24) = v8;
  *(v12 + 32) = v9;
  return result;
}

BOOL static ClassificationFactorTimeline.ChangeMoment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_25163514C())
  {
    v4 = type metadata accessor for ClassificationFactorTimeline.ChangeMoment(0);
    v5 = (a1 + *(v4 + 20));
    v6 = *(v5 + 8);
    v7 = *(v5 + 32);
    v17 = *v5;
    v18 = v6;
    v19 = *(v5 + 1);
    v20 = v7;
    v8 = (a2 + *(v4 + 20));
    v9 = *(v8 + 8);
    v10 = *(v8 + 32);
    v13 = *v8;
    v14 = v9;
    v15 = *(v8 + 1);
    v16 = v10;
    return _s13HealthDomains23ClassificationFactorSetV2eeoiySbAC_ACtFZ_0(&v17, &v13);
  }

  else
  {
    return 0;
  }
}

uint64_t ClassificationFactorTimeline.ChangeMoment.hash(into:)()
{
  sub_25163516C();
  sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578]);
  sub_2516352CC();
  v1 = (v0 + *(type metadata accessor for ClassificationFactorTimeline.ChangeMoment(0) + 20));
  v3 = v1[2];
  v2 = v1[3];
  v4 = *(v1 + 32);
  if (*(v1 + 8) == 1)
  {
    sub_25163592C();
  }

  else
  {
    v5 = *v1;
    sub_25163592C();
    MEMORY[0x25307C1E0](v5);
  }

  MEMORY[0x25307C1E0](v3);
  MEMORY[0x25307C1E0](v2);
  return MEMORY[0x25307C1E0](v4);
}

uint64_t ClassificationFactorTimeline.ChangeMoment.hashValue.getter()
{
  sub_25163590C();
  sub_25163516C();
  sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578]);
  sub_2516352CC();
  v1 = (v0 + *(type metadata accessor for ClassificationFactorTimeline.ChangeMoment(0) + 20));
  v3 = v1[2];
  v2 = v1[3];
  v4 = *(v1 + 32);
  if (*(v1 + 8) == 1)
  {
    sub_25163592C();
  }

  else
  {
    v5 = *v1;
    sub_25163592C();
    MEMORY[0x25307C1E0](v5);
  }

  MEMORY[0x25307C1E0](v3);
  MEMORY[0x25307C1E0](v2);
  MEMORY[0x25307C1E0](v4);
  return sub_25163594C();
}

uint64_t sub_2515FB0B8(uint64_t a1, uint64_t a2)
{
  sub_25163516C();
  sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578]);
  sub_2516352CC();
  v4 = (v2 + *(a2 + 20));
  v6 = v4[2];
  v5 = v4[3];
  v7 = *(v4 + 32);
  if (*(v4 + 8) == 1)
  {
    sub_25163592C();
  }

  else
  {
    v8 = *v4;
    sub_25163592C();
    MEMORY[0x25307C1E0](v8);
  }

  MEMORY[0x25307C1E0](v6);
  MEMORY[0x25307C1E0](v5);
  return MEMORY[0x25307C1E0](v7);
}

uint64_t sub_2515FB19C(uint64_t a1, uint64_t a2)
{
  sub_25163590C();
  sub_25163516C();
  sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578]);
  sub_2516352CC();
  v4 = (v2 + *(a2 + 20));
  v6 = v4[2];
  v5 = v4[3];
  v7 = *(v4 + 32);
  if (*(v4 + 8) == 1)
  {
    sub_25163592C();
  }

  else
  {
    v8 = *v4;
    sub_25163592C();
    MEMORY[0x25307C1E0](v8);
  }

  MEMORY[0x25307C1E0](v6);
  MEMORY[0x25307C1E0](v5);
  MEMORY[0x25307C1E0](v7);
  return sub_25163594C();
}

BOOL sub_2515FB2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_25163514C())
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6 + 8);
    v8 = *(a1 + v6 + 32);
    v18 = *(a1 + v6);
    v19 = v7;
    v20 = *(a1 + v6 + 16);
    v21 = v8;
    v9 = (a2 + v6);
    v10 = *(v9 + 8);
    v11 = *(v9 + 32);
    v14 = *v9;
    v15 = v10;
    v16 = *(v9 + 1);
    v17 = v11;
    return _s13HealthDomains23ClassificationFactorSetV2eeoiySbAC_ACtFZ_0(&v18, &v14);
  }

  else
  {
    return 0;
  }
}

__n128 sub_2515FB390@<Q0>(uint64_t (*a1)(void)@<X0>, __n128 *a2@<X8>)
{
  v4 = (v2 + *(a1(0) + 20));
  v5 = v4->n128_u8[8];
  v6 = v4[2].n128_u8[0];
  a2->n128_u64[0] = v4->n128_u64[0];
  a2->n128_u8[8] = v5;
  result = v4[1];
  a2[1] = result;
  a2[2].n128_u8[0] = v6;
  return result;
}

uint64_t sub_2515FB400(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  result = a2(0);
  v9 = v2 + *(result + 20);
  *v9 = v3;
  *(v9 + 8) = v4;
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  *(v9 + 32) = v7;
  return result;
}

uint64_t ClassificationFactorTimeline.changeMoments.getter()
{
  v1 = *(v0 + *(type metadata accessor for ClassificationFactorTimeline(0) + 24));
}

uint64_t ClassificationFactorTimeline.changeMoments.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClassificationFactorTimeline(0) + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ClassificationFactorTimeline.init(dateRange:initialFactors:changeMoments:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = a2[2];
  v9 = a2[3];
  v10 = *(a2 + 32);
  sub_251601234(a1, a4);
  result = type metadata accessor for ClassificationFactorTimeline(0);
  v12 = a4 + *(result + 20);
  *v12 = v6;
  *(v12 + 8) = v7;
  *(v12 + 16) = v8;
  *(v12 + 24) = v9;
  *(v12 + 32) = v10;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t ClassificationFactorTimeline.init(dateRange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251601094(a1, a2);
  sub_2516012D0(a1);
  result = type metadata accessor for ClassificationFactorTimeline(0);
  v5 = a2 + *(result + 20);
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(a2 + *(result + 24)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t ClassificationFactorTimeline.factors(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251601648(0, &qword_27F446CA0, type metadata accessor for ClassificationFactorTimeline.ChangeMoment, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for ClassificationFactorTimeline.ChangeMoment(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ClassificationFactorTimeline(0);
  v15 = *(v2 + *(v14 + 24));
  v24 = a1;
  sub_2515FAA78(sub_251601364, v15, type metadata accessor for ClassificationFactorTimeline.ChangeMoment, type metadata accessor for ClassificationFactorTimeline.ChangeMoment, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_251601780(v8, &qword_27F446CA0, type metadata accessor for ClassificationFactorTimeline.ChangeMoment);
    v17 = (v2 + *(v14 + 20));
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 1);
    v21 = *(v17 + 32);
  }

  else
  {
    sub_2516013F4(v8, v13, type metadata accessor for ClassificationFactorTimeline.ChangeMoment);
    v22 = &v13[*(v9 + 20)];
    v18 = *v22;
    v19 = v22[8];
    v23 = *(v22 + 1);
    v21 = v22[32];
    result = sub_25160145C(v13, type metadata accessor for ClassificationFactorTimeline.ChangeMoment);
    v20 = v23;
  }

  *a2 = v18;
  *(a2 + 8) = v19;
  *(a2 + 16) = v20;
  *(a2 + 32) = v21;
  return result;
}

uint64_t sub_2515FB8A8()
{
  sub_25163516C();
  sub_251601130(&qword_280DD7318, MEMORY[0x277CC9578]);
  return sub_25163530C() & 1;
}

uint64_t ClassificationFactorTimeline.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_25163516C();
  sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578]);
  sub_2516352CC();
  sub_251601E2C(0, &qword_280DD70C0, &qword_280DD7318, MEMORY[0x277CC9590], MEMORY[0x277D83638]);
  v5 = v1 + *(v4 + 36);
  sub_2516352CC();
  v6 = type metadata accessor for ClassificationFactorTimeline(0);
  v7 = (v2 + *(v6 + 20));
  v9 = v7[2];
  v8 = v7[3];
  v10 = *(v7 + 32);
  if (*(v7 + 8) == 1)
  {
    sub_25163592C();
  }

  else
  {
    v11 = *v7;
    sub_25163592C();
    MEMORY[0x25307C1E0](v11);
  }

  MEMORY[0x25307C1E0](v9);
  MEMORY[0x25307C1E0](v8);
  MEMORY[0x25307C1E0](v10);
  v12 = *(v2 + *(v6 + 24));

  return sub_251600B9C(a1, v12);
}

uint64_t ClassificationFactorTimeline.hashValue.getter()
{
  v1 = v0;
  sub_25163590C();
  sub_25163516C();
  sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578]);
  sub_2516352CC();
  sub_251601E2C(0, &qword_280DD70C0, &qword_280DD7318, MEMORY[0x277CC9590], MEMORY[0x277D83638]);
  v3 = v0 + *(v2 + 36);
  sub_2516352CC();
  v4 = type metadata accessor for ClassificationFactorTimeline(0);
  v5 = (v1 + *(v4 + 20));
  v7 = v5[2];
  v6 = v5[3];
  v8 = *(v5 + 32);
  if (*(v5 + 8) == 1)
  {
    sub_25163592C();
  }

  else
  {
    v9 = *v5;
    sub_25163592C();
    MEMORY[0x25307C1E0](v9);
  }

  MEMORY[0x25307C1E0](v7);
  MEMORY[0x25307C1E0](v6);
  MEMORY[0x25307C1E0](v8);
  sub_251600B9C(v11, *(v1 + *(v4 + 24)));
  return sub_25163594C();
}

uint64_t sub_2515FBC3C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_25163590C();
  sub_25163516C();
  sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578]);
  sub_2516352CC();
  sub_251601E2C(0, &qword_280DD70C0, &qword_280DD7318, MEMORY[0x277CC9590], MEMORY[0x277D83638]);
  v6 = v2 + *(v5 + 36);
  sub_2516352CC();
  v7 = (v4 + *(a2 + 20));
  v9 = v7[2];
  v8 = v7[3];
  v10 = *(v7 + 32);
  if (*(v7 + 8) == 1)
  {
    sub_25163592C();
  }

  else
  {
    v11 = *v7;
    sub_25163592C();
    MEMORY[0x25307C1E0](v11);
  }

  MEMORY[0x25307C1E0](v9);
  MEMORY[0x25307C1E0](v8);
  MEMORY[0x25307C1E0](v10);
  sub_251600B9C(v13, *(v4 + *(a2 + 24)));
  return sub_25163594C();
}

uint64_t ClassificationFactorTimeline.init(dateRange:sex:birthdayTimeline:wheelchairUseTimeline:pregnancyTimeline:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v132 = a5;
  v120 = a2;
  v10 = sub_25163516C();
  v11 = *(v10 - 8);
  v135 = v10;
  v136 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v117 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v116 = &v115 - v15;
  v16 = MEMORY[0x277D83D88];
  sub_251601648(0, &qword_27F446CA8, type metadata accessor for PregnancyTimeline.ChangeMoment, MEMORY[0x277D83D88]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v128 = &v115 - v19;
  v127 = type metadata accessor for PregnancyTimeline.ChangeMoment(0);
  v130 = *(v127 - 8);
  v20 = *(v130 + 64);
  v21 = MEMORY[0x28223BE20](v127);
  v134 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v115 = &v115 - v23;
  sub_251601648(0, &qword_27F446CB0, type metadata accessor for WheelchairUseTimeline.ChangeMoment, v16);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v115 - v26;
  v122 = type metadata accessor for WheelchairUseTimeline.ChangeMoment(0);
  v28 = *(v122 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v122);
  v133 = (&v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30);
  v33 = &v115 - v32;
  sub_251601648(0, &qword_27F446CB8, type metadata accessor for BirthdayTimeline, v16);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v126 = &v115 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v115 - v38;
  v131 = a3;
  sub_2516016AC(a3, &v115 - v38);
  v40 = type metadata accessor for BirthdayTimeline();
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  v43 = v42;
  v124 = (v41 + 48);
  v44 = v42(v39, 1, v40);
  v129 = a4;
  v121 = a6;
  v118 = v44;
  v125 = v40;
  if (v44 == 1)
  {
    sub_251601780(v39, &qword_27F446CB8, type metadata accessor for BirthdayTimeline);
    v119 = 0;
  }

  else
  {
    v45 = sub_25163506C();
    v46 = sub_25163511C();
    v119 = [v45 hk:v46 ageWithCurrentDate:?];

    a4 = v129;
    sub_25160145C(v39, type metadata accessor for BirthdayTimeline);
  }

  v47 = type metadata accessor for WheelchairUseTimeline(0);
  v48 = *(a4 + *(v47 + 20));
  MEMORY[0x28223BE20](v47);
  *(&v115 - 2) = a1;
  v123 = v49;
  sub_2515FAA78(sub_251601740, v49, type metadata accessor for WheelchairUseTimeline.ChangeMoment, type metadata accessor for WheelchairUseTimeline.ChangeMoment, v27);
  v50 = v28;
  v51 = v122;
  if ((*(v28 + 48))(v27, 1, v122) == 1)
  {
    sub_251601780(v27, &qword_27F446CB0, type metadata accessor for WheelchairUseTimeline.ChangeMoment);
    v122 = 0;
  }

  else
  {
    sub_2516013F4(v27, v33, type metadata accessor for WheelchairUseTimeline.ChangeMoment);
    v122 = *&v33[*(v51 + 20)];
    sub_25160145C(v33, type metadata accessor for WheelchairUseTimeline.ChangeMoment);
  }

  v52 = v130;
  v53 = v128;
  v54 = PregnancyTimeline.changeMoments.getter();
  MEMORY[0x28223BE20](v54);
  *(&v115 - 2) = a1;
  sub_2515FAA78(sub_251601760, v54, type metadata accessor for PregnancyTimeline.ChangeMoment, type metadata accessor for PregnancyTimeline.ChangeMoment, v53);
  v124 = 0;

  v55 = v127;
  if ((*(v52 + 48))(v53, 1, v127) == 1)
  {
    sub_251601780(v53, &qword_27F446CA8, type metadata accessor for PregnancyTimeline.ChangeMoment);
    LODWORD(v127) = 0;
  }

  else
  {
    v56 = v115;
    sub_2516013F4(v53, v115, type metadata accessor for PregnancyTimeline.ChangeMoment);
    LODWORD(v127) = *(v56 + *(v55 + 20));
    sub_25160145C(v56, type metadata accessor for PregnancyTimeline.ChangeMoment);
  }

  v57 = v126;
  v58 = v125;
  sub_2516016AC(v131, v126);
  if (v43(v57, 1, v58) == 1)
  {
    sub_251601780(v57, &qword_27F446CB8, type metadata accessor for BirthdayTimeline);
    v59 = MEMORY[0x277D84F90];
  }

  else
  {
    v59 = BirthdayTimeline.birthdays(in:)(a1);
    sub_25160145C(v57, type metadata accessor for BirthdayTimeline);
  }

  v60 = v132;
  v61 = v123;
  v128 = a1;
  v137[9] = v59;
  v62 = *(v123 + 16);
  v63 = MEMORY[0x277D84F90];
  if (v62)
  {
    v137[0] = MEMORY[0x277D84F90];
    sub_2515FD56C(0, v62, 0);
    v64 = v61 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
    v65 = *(v50 + 72);
    v66 = v137[0];
    v67 = (v136 + 16);
    v68 = v135;
    v69 = v116;
    do
    {
      v70 = v133;
      sub_2516017F0(v64, v133, type metadata accessor for WheelchairUseTimeline.ChangeMoment);
      (*v67)(v69, v70, v68);
      sub_25160145C(v70, type metadata accessor for WheelchairUseTimeline.ChangeMoment);
      v137[0] = v66;
      v72 = v66[2];
      v71 = v66[3];
      if (v72 >= v71 >> 1)
      {
        sub_2515FD56C(v71 > 1, v72 + 1, 1);
        v66 = v137[0];
      }

      v66[2] = v72 + 1;
      (*(v136 + 32))(v66 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v72, v69, v68);
      v64 += v65;
      --v62;
    }

    while (v62);
    v60 = v132;
    v63 = MEMORY[0x277D84F90];
  }

  else
  {
    v66 = MEMORY[0x277D84F90];
  }

  v137[10] = v66;
  v73 = PregnancyTimeline.changeMoments.getter();
  v74 = v73[2];
  if (v74)
  {
    v137[0] = v63;
    sub_2515FD56C(0, v74, 0);
    v75 = *(v130 + 80);
    v133 = v73;
    v76 = v73 + ((v75 + 32) & ~v75);
    v77 = *(v130 + 72);
    v78 = v137[0];
    v79 = (v136 + 16);
    v80 = v135;
    v81 = v117;
    do
    {
      v82 = v134;
      sub_2516017F0(v76, v134, type metadata accessor for PregnancyTimeline.ChangeMoment);
      (*v79)(v81, v82, v80);
      sub_25160145C(v82, type metadata accessor for PregnancyTimeline.ChangeMoment);
      v137[0] = v78;
      v84 = v78[2];
      v83 = v78[3];
      if (v84 >= v83 >> 1)
      {
        sub_2515FD56C(v83 > 1, v84 + 1, 1);
        v78 = v137[0];
      }

      v78[2] = v84 + 1;
      (*(v136 + 32))(v78 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v84, v81, v80);
      v76 += v77;
      --v74;
    }

    while (v74);

    v60 = v132;
  }

  else
  {

    v78 = MEMORY[0x277D84F90];
  }

  v137[11] = v78;
  v85 = MEMORY[0x277D84F90];
  for (i = 4; i != 7; ++i)
  {
    v87 = v137[i + 5];
    v88 = v87[2];
    v89 = v85[2];
    v90 = v89 + v88;
    if (__OFADD__(v89, v88))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v91 = v137[i + 5];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v90 <= v85[3] >> 1)
    {
      if (!v87[2])
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v89 <= v90)
      {
        v93 = v89 + v88;
      }

      else
      {
        v93 = v89;
      }

      v85 = sub_2515F8AF4(isUniquelyReferenced_nonNull_native, v93, 1, v85);
      if (!v87[2])
      {
LABEL_28:

        if (v88)
        {
          goto LABEL_50;
        }

        continue;
      }
    }

    v94 = v85[2];
    if ((v85[3] >> 1) - v94 < v88)
    {
      goto LABEL_51;
    }

    v95 = v85 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v94;
    swift_arrayInitWithCopy();

    if (v88)
    {
      v96 = v85[2];
      v97 = __OFADD__(v96, v88);
      v98 = v96 + v88;
      if (v97)
      {
        goto LABEL_52;
      }

      v85[2] = v98;
    }
  }

  sub_251601648(0, &qword_27F446CC0, MEMORY[0x277CC9578], MEMORY[0x277D83940]);
  swift_arrayDestroy();
  v99 = sub_251601858(v85);

  v100 = *(v99 + 16);
  if (v100)
  {
    v101 = sub_2515FD44C(*(v99 + 16), 0);
    v102 = sub_251600D98(v137, &v101[(*(v136 + 80) + 32) & ~*(v136 + 80)], v100, v99);

    sub_2516019F4();
    if (v102 == v100)
    {
      v60 = v132;
      goto LABEL_47;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v101 = MEMORY[0x277D84F90];
LABEL_47:
  v137[0] = v101;
  v78 = v124;
  sub_2515FDE34(v137);
  v103 = v131;
  if (!v78)
  {
    v104 = v118 == 1;

    v106 = v137[0];
    MEMORY[0x28223BE20](v105);
    v107 = v120;
    *(&v115 - 4) = v120;
    *(&v115 - 3) = v103;
    v108 = v129;
    *(&v115 - 2) = v129;
    *(&v115 - 1) = v60;
    v109 = sub_2515FCBB0(sub_2516019FC, (&v115 - 6), v106);

    v110 = v121;
    sub_251601234(v128, v121);
    v111 = type metadata accessor for ClassificationFactorTimeline(0);
    v112 = v110 + *(v111 + 20);
    *v112 = v119;
    *(v112 + 8) = v104;
    v113 = v122;
    *(v112 + 16) = v107;
    *(v112 + 24) = v113;
    *(v112 + 32) = v127;
    *(v110 + *(v111 + 24)) = v109;
    sub_25160145C(v60, type metadata accessor for PregnancyTimeline);
    sub_25160145C(v108, type metadata accessor for WheelchairUseTimeline);
    return sub_251601780(v103, &qword_27F446CB8, type metadata accessor for BirthdayTimeline);
  }

LABEL_54:

  __break(1u);
  return result;
}

uint64_t sub_2515FCBB0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for ClassificationFactorTimeline.ChangeMoment(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x277D84F90];
  sub_2515FD5BC(0, v11, 0);
  v12 = v22;
  v13 = *(sub_25163516C() - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v19 = *(v13 + 72);
  while (1)
  {
    v20(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_2515FD5BC(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    sub_2516013F4(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, type metadata accessor for ClassificationFactorTimeline.ChangeMoment);
    v14 += v19;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2515FCDAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a4;
  v63 = a5;
  v67 = a6;
  v9 = MEMORY[0x277D83D88];
  sub_251601648(0, &qword_27F446CA8, type metadata accessor for PregnancyTimeline.ChangeMoment, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v66 = &v56 - v12;
  v13 = type metadata accessor for PregnancyTimeline.ChangeMoment(0);
  v64 = *(v13 - 8);
  v65 = v13;
  v14 = *(v64 + 64);
  MEMORY[0x28223BE20](v13);
  v56 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251601648(0, &qword_27F446CB0, type metadata accessor for WheelchairUseTimeline.ChangeMoment, v9);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v56 - v18;
  v57 = type metadata accessor for WheelchairUseTimeline.ChangeMoment(0);
  v20 = *(v57 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v57);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v9;
  v25 = a1;
  sub_251601648(0, &qword_27F446CB8, type metadata accessor for BirthdayTimeline, v24);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v56 - v28;
  v30 = sub_25163516C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = *(v31 + 16);
  v61 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v35;
  v34();
  sub_2516016AC(a3, v29);
  v36 = type metadata accessor for BirthdayTimeline();
  v59 = (*(*(v36 - 8) + 48))(v29, 1, v36);
  if (v59 == 1)
  {
    sub_251601780(v29, &qword_27F446CB8, type metadata accessor for BirthdayTimeline);
    v58 = 0;
  }

  else
  {
    v37 = a2;
    v38 = sub_25163506C();
    v39 = sub_25163511C();
    v58 = [v38 hk:v39 ageWithCurrentDate:?];

    a2 = v37;
    v25 = a1;

    sub_25160145C(v29, type metadata accessor for BirthdayTimeline);
  }

  v40 = type metadata accessor for WheelchairUseTimeline(0);
  v41 = *(v60 + *(v40 + 20));
  MEMORY[0x28223BE20](v40);
  *(&v56 - 2) = v25;
  sub_2515FAA78(sub_251601EC4, v42, type metadata accessor for WheelchairUseTimeline.ChangeMoment, type metadata accessor for WheelchairUseTimeline.ChangeMoment, v19);
  v43 = v57;
  v44 = (*(v20 + 48))(v19, 1, v57);
  v45 = v66;
  if (v44 == 1)
  {
    sub_251601780(v19, &qword_27F446CB0, type metadata accessor for WheelchairUseTimeline.ChangeMoment);
    v46 = 0;
  }

  else
  {
    sub_2516013F4(v19, v23, type metadata accessor for WheelchairUseTimeline.ChangeMoment);
    v46 = *&v23[*(v43 + 20)];
    sub_25160145C(v23, type metadata accessor for WheelchairUseTimeline.ChangeMoment);
  }

  v47 = PregnancyTimeline.changeMoments.getter();
  MEMORY[0x28223BE20](v47);
  *(&v56 - 2) = a1;
  sub_2515FAA78(sub_251601EE0, v47, type metadata accessor for PregnancyTimeline.ChangeMoment, type metadata accessor for PregnancyTimeline.ChangeMoment, v45);

  v48 = v65;
  if ((*(v64 + 48))(v45, 1, v65) == 1)
  {
    sub_251601780(v45, &qword_27F446CA8, type metadata accessor for PregnancyTimeline.ChangeMoment);
    v49 = 0;
  }

  else
  {
    v50 = v45;
    v51 = v56;
    sub_2516013F4(v50, v56, type metadata accessor for PregnancyTimeline.ChangeMoment);
    v49 = *(v51 + *(v48 + 20));
    sub_25160145C(v51, type metadata accessor for PregnancyTimeline.ChangeMoment);
  }

  v52 = v59 == 1;
  v53 = v67;
  (*(v31 + 32))(v67, v61, v62);
  result = type metadata accessor for ClassificationFactorTimeline.ChangeMoment(0);
  v55 = v53 + *(result + 20);
  *v55 = v58;
  *(v55 + 8) = v52;
  *(v55 + 16) = a2;
  *(v55 + 24) = v46;
  *(v55 + 32) = v49;
  return result;
}

size_t sub_2515FD44C(uint64_t a1, uint64_t a2)
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

  sub_251601648(0, &qword_27F446C48, MEMORY[0x277CC9578], MEMORY[0x277D84560]);
  v4 = *(sub_25163516C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_2515FD56C(size_t a1, int64_t a2, char a3)
{
  result = sub_2515FD60C(a1, a2, a3, *v3, &qword_27F446C48, MEMORY[0x277CC9578], MEMORY[0x277CC9578]);
  *v3 = result;
  return result;
}

size_t sub_2515FD5BC(size_t a1, int64_t a2, char a3)
{
  result = sub_2515FD60C(a1, a2, a3, *v3, &qword_27F446D18, type metadata accessor for ClassificationFactorTimeline.ChangeMoment, type metadata accessor for ClassificationFactorTimeline.ChangeMoment);
  *v3 = result;
  return result;
}

size_t sub_2515FD60C(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_251601648(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_2515FD800(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25163516C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578]);
  v36 = a2;
  v13 = sub_2516352BC();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_251601130(&qword_27F446BE8, MEMORY[0x277CC9578]);
      v23 = sub_25163532C();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2515FFC10(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2515FDAE0(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  sub_25163590C();
  ClassificationChangeDescriptor.hash(into:)();
  v10 = sub_25163594C();
  v11 = v8 + 56;
  v12 = -1 << *(v8 + 32);
  v13 = v10 & ~v12;
  if (((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_28:
    v22 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v30;
    sub_251601D64(a2);
    sub_2515FFEB4(a2, a3, a4, v13, isUniquelyReferenced_nonNull_native);
    *v30 = v33;
    *a1 = a2;
    *(a1 + 8) = *&a3;
    *(a1 + 16) = a4;
    return 1;
  }

  v32 = ~v12;
  while (1)
  {
    v14 = *(v8 + 48) + 24 * v13;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    if (*v14 > 1)
    {
      break;
    }

    if (!v15)
    {
      if (!a2)
      {
        goto LABEL_29;
      }

      sub_251601D64(a2);
      v18 = 0;
      goto LABEL_18;
    }

    if (v15 == 1)
    {
      if (a2 == 1)
      {
        goto LABEL_29;
      }

      sub_251601D64(a2);
      v18 = 1;
      goto LABEL_18;
    }

LABEL_12:
    v19 = *v14;
    if (a2 < 4)
    {
      sub_251601D64(a2);
      sub_251601D64(v15);
      v18 = v15;
      v11 = v8 + 56;
LABEL_18:
      sub_251601D74(v18);
      sub_251601D74(a2);
      goto LABEL_19;
    }

    sub_251601D84();
    sub_251601D64(a2);
    sub_251601D64(v19);
    sub_251601D64(a2);
    sub_251601D64(v19);
    v20 = sub_25163561C();
    sub_251601D74(v19);
    sub_251601D74(a2);
    sub_251601D74(a2);
    sub_251601D74(v19);
    v11 = v8 + 56;
    if (v20)
    {
      if (v17)
      {
        if (a4)
        {
          goto LABEL_27;
        }
      }

      else if ((a4 & 1) == 0 && v16 == *&a3)
      {
LABEL_27:
        v21 = a2;
        goto LABEL_30;
      }
    }

LABEL_19:
    v13 = (v13 + 1) & v32;
    if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  if (v15 != 2)
  {
    if (v15 == 3)
    {
      if (a2 == 3)
      {
        goto LABEL_29;
      }

      sub_251601D64(a2);
      v18 = 3;
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (a2 != 2)
  {
    sub_251601D64(a2);
    v18 = 2;
    goto LABEL_18;
  }

LABEL_29:
  v25 = *(v14 + 8);
  v26 = *(v14 + 16);
  sub_251601D74(*v14);
  v21 = v15;
LABEL_30:
  sub_251601D74(v21);
  v27 = *(v8 + 48) + 24 * v13;
  v28 = *v27;
  v29 = *(v27 + 8);
  *a1 = *v27;
  *(a1 + 8) = v29;
  *(a1 + 16) = *(v27 + 16);
  sub_251601D64(v28);
  return 0;
}

uint64_t sub_2515FDE34(void **a1)
{
  v2 = *(sub_25163516C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25160103C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2515FDEDC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_2515FDEDC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2516358AC();
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
        sub_25163516C();
        v6 = sub_25163547C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25163516C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2515FE2CC(v8, v9, a1, v4);
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
    return sub_2515FE008(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2515FE008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_25163516C();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v42 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v46 = &v32 - v13;
  result = MEMORY[0x28223BE20](v12);
  v45 = &v32 - v16;
  v34 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v43 = *(v15 + 16);
    v44 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v40 = (v15 + 32);
    v41 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v39 = -v18;
    v21 = a1 - a3;
    v33 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v37 = v20;
    v38 = a3;
    v35 = v22;
    v36 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v45;
      v25 = v43;
      v43(v45, v22, v8);
      v26 = v46;
      v25(v46, v23, v8);
      sub_251601130(&qword_280DD7318, MEMORY[0x277CC9578]);
      v27 = sub_2516352EC();
      v28 = *v19;
      (*v19)(v26, v8);
      result = v28(v24, v8);
      if ((v27 & 1) == 0)
      {
LABEL_4:
        a3 = v38 + 1;
        v20 = v37 + v33;
        v21 = v36 - 1;
        v22 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v41)
      {
        break;
      }

      v29 = *v40;
      v30 = v42;
      (*v40)(v42, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v29)(v23, v30, v8);
      v23 += v39;
      v22 += v39;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2515FE2CC(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v123 = a1;
  v8 = sub_25163516C();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v128 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v135 = &v120 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v141 = &v120 - v16;
  result = MEMORY[0x28223BE20](v15);
  v140 = &v120 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_94:
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_2515FF374(v21);
      v21 = result;
    }

    v143 = v21;
    v116 = *(v21 + 2);
    if (v116 >= 2)
    {
      while (*a3)
      {
        v117 = *&v21[16 * v116];
        v118 = *&v21[16 * v116 + 24];
        sub_2515FECF4(*a3 + v9[9] * v117, *a3 + v9[9] * *&v21[16 * v116 + 16], *a3 + v9[9] * v118, v22);
        if (v5)
        {
        }

        if (v118 < v117)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_2515FF374(v21);
        }

        if (v116 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v119 = &v21[16 * v116];
        *v119 = v117;
        *(v119 + 1) = v118;
        v143 = v21;
        result = sub_2515FF2E8(v116 - 1);
        v21 = v143;
        v116 = *(v143 + 2);
        if (v116 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v120 = a4;
  v20 = 0;
  v138 = (v9 + 1);
  v139 = v9 + 2;
  v137 = (v9 + 4);
  v21 = MEMORY[0x277D84F90];
  v125 = v9;
  v142 = v8;
  v121 = a3;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v35 = v20 + 1;
    }

    else
    {
      v133 = v19;
      v122 = v5;
      v23 = *a3;
      v24 = v9[9];
      v25 = v20;
      v124 = v20;
      v26 = &v23[v24 * (v20 + 1)];
      v27 = v8;
      v28 = v9[2];
      v29 = v140;
      v28(v140, v26, v27);
      v30 = &v23[v24 * v25];
      v31 = v141;
      v132 = v28;
      v28(v141, v30, v27);
      v131 = sub_251601130(&qword_280DD7318, MEMORY[0x277CC9578]);
      LODWORD(v134) = sub_2516352EC();
      v32 = v9[1];
      v32(v31, v27);
      v130 = v32;
      result = (v32)(v29, v27);
      v33 = v124 + 2;
      v136 = v24;
      v34 = &v23[v24 * (v124 + 2)];
      while (1)
      {
        v35 = v133;
        if (v133 == v33)
        {
          break;
        }

        v36 = v140;
        v37 = v9;
        v38 = v142;
        v39 = v132;
        (v132)(v140, v34, v142);
        v40 = v141;
        v39(v141, v26, v38);
        v41 = sub_2516352EC() & 1;
        v42 = v130;
        (v130)(v40, v38);
        v43 = v38;
        v9 = v37;
        result = v42(v36, v43);
        ++v33;
        v34 += v136;
        v26 += v136;
        if ((v134 & 1) != v41)
        {
          v35 = v33 - 1;
          break;
        }
      }

      v5 = v122;
      v21 = v126;
      v8 = v142;
      a3 = v121;
      v22 = v124;
      if (v134)
      {
        if (v35 < v124)
        {
          goto LABEL_123;
        }

        if (v124 < v35)
        {
          v44 = v35;
          v45 = v136 * (v35 - 1);
          v46 = v35 * v136;
          v133 = v35;
          v47 = v124;
          v48 = v124 * v136;
          do
          {
            if (v47 != --v44)
            {
              v50 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v134 = *v137;
              v134(v128, &v50[v48], v142);
              if (v48 < v45 || &v50[v48] >= &v50[v46])
              {
                v49 = v142;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v49 = v142;
                if (v48 != v45)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v134)(&v50[v45], v128, v49);
              v9 = v125;
              v21 = v126;
            }

            ++v47;
            v45 -= v136;
            v46 -= v136;
            v48 += v136;
          }

          while (v47 < v44);
          v5 = v122;
          v8 = v142;
          v22 = v124;
          v35 = v133;
        }
      }
    }

    v51 = a3[1];
    if (v35 < v51)
    {
      if (__OFSUB__(v35, v22))
      {
        goto LABEL_122;
      }

      if (v35 - v22 < v120)
      {
        if (__OFADD__(v22, v120))
        {
          goto LABEL_124;
        }

        if (v22 + v120 >= v51)
        {
          v52 = a3[1];
        }

        else
        {
          v52 = v22 + v120;
        }

        if (v52 < v22)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v35 != v52)
        {
          break;
        }
      }
    }

    v53 = v35;
    if (v35 < v22)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2515F89CC(0, *(v21 + 2) + 1, 1, v21);
      v21 = result;
    }

    v55 = *(v21 + 2);
    v54 = *(v21 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_2515F89CC((v54 > 1), v55 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v56;
    v57 = &v21[16 * v55];
    *(v57 + 4) = v22;
    *(v57 + 5) = v53;
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_131;
    }

    v129 = v53;
    if (v55)
    {
      while (1)
      {
        v58 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v21 + 4);
          v60 = *(v21 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_52:
          if (v62)
          {
            goto LABEL_110;
          }

          v75 = &v21[16 * v56];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_113;
          }

          v81 = &v21[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_117;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v56 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v85 = &v21[16 * v56];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_66:
        if (v80)
        {
          goto LABEL_112;
        }

        v88 = &v21[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_115;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_73:
        v96 = v58 - 1;
        if (v58 - 1 >= v56)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v97 = *&v21[16 * v96 + 32];
        v98 = *&v21[16 * v58 + 40];
        sub_2515FECF4(*a3 + v9[9] * v97, *a3 + v9[9] * *&v21[16 * v58 + 32], *a3 + v9[9] * v98, v22);
        if (v5)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_2515FF374(v21);
        }

        if (v96 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v99 = &v21[16 * v96];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        v143 = v21;
        result = sub_2515FF2E8(v58);
        v21 = v143;
        v56 = *(v143 + 2);
        v8 = v142;
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v21[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_108;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_109;
      }

      v70 = &v21[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_111;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_114;
      }

      if (v74 >= v66)
      {
        v92 = &v21[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_118;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v129;
    if (v129 >= v19)
    {
      goto LABEL_94;
    }
  }

  v122 = v5;
  v100 = *a3;
  v101 = v9[9];
  v136 = v9[2];
  v102 = v100 + v101 * (v35 - 1);
  v103 = -v101;
  v124 = v22;
  v104 = v22 - v35;
  v134 = v100;
  v127 = v101;
  v105 = v100 + v35 * v101;
  v129 = v52;
LABEL_85:
  v132 = v102;
  v133 = v35;
  v130 = v105;
  v131 = v104;
  v106 = v102;
  while (1)
  {
    v107 = v140;
    v108 = v136;
    (v136)(v140, v105, v8);
    v109 = v141;
    v108(v141, v106, v142);
    sub_251601130(&qword_280DD7318, MEMORY[0x277CC9578]);
    v110 = sub_2516352EC();
    v111 = *v138;
    v112 = v109;
    v8 = v142;
    (*v138)(v112, v142);
    result = v111(v107, v8);
    if ((v110 & 1) == 0)
    {
LABEL_84:
      v35 = v133 + 1;
      v102 = &v132[v127];
      v104 = v131 - 1;
      v105 = &v130[v127];
      v53 = v129;
      if (v133 + 1 != v129)
      {
        goto LABEL_85;
      }

      v5 = v122;
      a3 = v121;
      v9 = v125;
      v21 = v126;
      v22 = v124;
      if (v129 < v124)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v134)
    {
      break;
    }

    v113 = *v137;
    v114 = v135;
    (*v137)(v135, v105, v8);
    swift_arrayInitWithTakeFrontToBack();
    v113(v106, v114, v8);
    v106 += v103;
    v105 += v103;
    if (__CFADD__(v104++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_2515FECF4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = sub_25163516C();
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v53);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v50 = &v41 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v52 = a3;
  v17 = (a2 - a1) / v15;
  v56 = a1;
  v55 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v19;
    if (v19 >= 1)
    {
      v29 = -v15;
      v44 = a4;
      v45 = (v8 + 16);
      v42 = (v8 + 8);
      v43 = a1;
      v30 = a4 + v19;
      v31 = v52;
      v46 = v29;
      do
      {
        v41 = v28;
        v32 = a2 + v29;
        v48 = a2 + v29;
        v49 = v28;
        v47 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v56 = a2;
            v28 = v41;
            goto LABEL_59;
          }

          v34 = v31;
          v52 = v31 + v29;
          v35 = v30 + v29;
          v36 = *v45;
          v37 = v50;
          v38 = v53;
          (*v45)(v50, v30 + v29, v53);
          v39 = v51;
          v36(v51, v32, v38);
          sub_251601130(&qword_280DD7318, MEMORY[0x277CC9578]);
          LOBYTE(v36) = sub_2516352EC();
          v40 = *v42;
          (*v42)(v39, v38);
          v40(v37, v38);
          if (v36)
          {
            break;
          }

          v31 = v52;
          if (v34 < v30 || v52 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v48;
            a1 = v43;
          }

          else
          {
            v32 = v48;
            a1 = v43;
            if (v34 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v49 = v35;
          v30 = v35;
          v33 = v35 > v44;
          v29 = v46;
          a2 = v47;
          if (!v33)
          {
            v28 = v49;
            goto LABEL_58;
          }
        }

        v31 = v52;
        if (v34 < v47 || v52 >= v47)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v43;
        }

        else
        {
          a2 = v48;
          a1 = v43;
          if (v34 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v49;
        v29 = v46;
      }

      while (v30 > v44);
    }

LABEL_58:
    v56 = a2;
LABEL_59:
    v54 = v28;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v18;
    v54 = a4 + v18;
    if (v18 >= 1 && a2 < v52)
    {
      v47 = *(v8 + 16);
      v48 = v8 + 16;
      v45 = v15;
      v46 = (v8 + 8);
      do
      {
        v21 = v50;
        v22 = v53;
        v23 = v47;
        v47(v50, a2, v53);
        v24 = v51;
        v23(v51, a4, v22);
        sub_251601130(&qword_280DD7318, MEMORY[0x277CC9578]);
        LOBYTE(v23) = sub_2516352EC();
        v25 = *v46;
        (*v46)(v24, v22);
        v25(v21, v22);
        if (v23)
        {
          v26 = v45;
          if (a1 < a2 || a1 >= v45 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v45;
          v27 = v45 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v55 = v27;
          a4 += v26;
        }

        a1 += v26;
        v56 = a1;
      }

      while (a4 < v49 && a2 < v52);
    }
  }

  sub_2515FF388(&v56, &v55, &v54);
  return 1;
}

uint64_t sub_2515FF2E8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2515FF374(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2515FF388(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_25163516C();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2515FF46C(char *result, int64_t a2, char a3, char *a4)
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
    sub_251601648(0, &qword_27F446C38, sub_2515F8DEC, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_2515FF594(uint64_t a1)
{
  v2 = v1;
  v41 = sub_25163516C();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_251601E2C(0, &qword_27F446D20, &qword_27F446BA8, MEMORY[0x277CC9588], MEMORY[0x277D84098]);
  result = sub_25163567C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578]);
      result = sub_2516352BC();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_2515FF91C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_251601DD0();
  result = sub_25163567C();
  v6 = result;
  if (*(v3 + 16))
  {
    v34 = v2;
    v35 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (1)
    {
      if (!v11)
      {
        v17 = v7;
        while (1)
        {
          v7 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_48;
          }

          if (v7 >= v12)
          {
            break;
          }

          v18 = v8[v7];
          ++v17;
          if (v18)
          {
            v16 = __clz(__rbit64(v18));
            v11 = (v18 - 1) & v18;
            goto LABEL_17;
          }
        }

        v33 = 1 << *(v3 + 32);
        if (v33 >= 64)
        {
          bzero(v8, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v8 = -1 << v33;
        }

        v2 = v34;
        *(v3 + 16) = 0;
        break;
      }

      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_25163590C();
      if (v20 > 1)
      {
        if (v20 == 2)
        {
          v24 = 3;
          goto LABEL_28;
        }

        if (v20 == 3)
        {
          v24 = 4;
          goto LABEL_28;
        }
      }

      else
      {
        if (!v20)
        {
          v24 = 1;
          goto LABEL_28;
        }

        if (v20 == 1)
        {
          v24 = 2;
LABEL_28:
          MEMORY[0x25307C1E0](v24);
          goto LABEL_29;
        }
      }

      MEMORY[0x25307C1E0](0);
      sub_25163562C();
      if (v22)
      {
        sub_25163592C();
      }

      else
      {
        sub_25163592C();
        if ((v21 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v32 = v21;
        }

        else
        {
          v32 = 0;
        }

        MEMORY[0x25307C200](v32);
      }

LABEL_29:
      result = sub_25163594C();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_48:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v35;
    }
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2515FFC10(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_25163516C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2515FF594(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2516001CC();
      goto LABEL_12;
    }

    sub_25160058C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578]);
  v15 = sub_2516352BC();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_251601130(&qword_27F446BE8, MEMORY[0x277CC9578]);
      v23 = sub_25163532C();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2516358FC();
  __break(1u);
  return result;
}

void sub_2515FFEB4(void *a1, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 <= v11 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_2515FF91C(v11 + 1);
    }

    else
    {
      if (v12 > v11)
      {
        sub_251600430();
        goto LABEL_34;
      }

      sub_2516008D4(v11 + 1);
    }

    v13 = *v5;
    v14 = *(*v5 + 40);
    sub_25163590C();
    ClassificationChangeDescriptor.hash(into:)();
    v15 = sub_25163594C();
    v16 = v13 + 56;
    v31 = v13;
    v17 = -1 << *(v13 + 32);
    a4 = v15 & ~v17;
    if ((*(v16 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v18 = ~v17;
      do
      {
        v21 = *(v31 + 48) + 24 * a4;
        v6 = *v21;
        v22 = *(v21 + 8);
        v23 = *(v21 + 16);
        if (*v21 > 1)
        {
          if (v6 == 2)
          {
            if (a1 == 2)
            {
              goto LABEL_37;
            }

            v6 = 2;
            goto LABEL_11;
          }

          if (v6 == 3)
          {
            if (a1 == 3)
            {
              goto LABEL_37;
            }

            v6 = 3;
            goto LABEL_11;
          }
        }

        else
        {
          if (!v6)
          {
            if (!a1)
            {
              goto LABEL_37;
            }

            v6 = 0;
            goto LABEL_11;
          }

          if (v6 == 1)
          {
            if (a1 == 1)
            {
              goto LABEL_37;
            }

            v6 = 1;
            goto LABEL_11;
          }
        }

        if (a1 < 4)
        {
          v19 = *(v21 + 8);
          v20 = *(v21 + 16);
          sub_251601D64(*v21);
LABEL_11:
          sub_251601D64(a1);
          sub_251601D74(v6);
          sub_251601D74(a1);
          goto LABEL_12;
        }

        sub_251601D84();
        sub_251601D64(v6);
        sub_251601D64(a1);
        sub_251601D64(v6);
        sub_251601D64(a1);
        v24 = sub_25163561C();
        sub_251601D74(v6);
        sub_251601D74(a1);
        sub_251601D74(a1);
        sub_251601D74(v6);
        if (v24)
        {
          if (v23)
          {
            if (a3)
            {
              goto LABEL_38;
            }
          }

          else if ((a3 & 1) == 0 && v22 == *&a2)
          {
            goto LABEL_38;
          }
        }

LABEL_12:
        a4 = (a4 + 1) & v18;
      }

      while (((*(v16 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
    }
  }

LABEL_34:
  v25 = *v30;
  *(*v30 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v26 = *(v25 + 48) + 24 * a4;
  *v26 = a1;
  *(v26 + 8) = *&a2;
  *(v26 + 16) = a3;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
LABEL_37:
    sub_251601D74(v6);
    sub_251601D74(v6);
LABEL_38:
    sub_2516358FC();
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }
}

void *sub_2516001CC()
{
  v1 = v0;
  v2 = sub_25163516C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251601E2C(0, &qword_27F446D20, &qword_27F446BA8, MEMORY[0x277CC9588], MEMORY[0x277D84098]);
  v7 = *v0;
  v8 = sub_25163566C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_251600430()
{
  v1 = v0;
  sub_251601DD0();
  v2 = *v0;
  v3 = sub_25163566C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_251601D64(v19);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_25160058C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_25163516C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_251601E2C(0, &qword_27F446D20, &qword_27F446BA8, MEMORY[0x277CC9588], MEMORY[0x277D84098]);
  v10 = sub_25163567C();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578]);
      result = sub_2516352BC();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_2516008D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_251601DD0();
  result = sub_25163567C();
  v6 = result;
  if (!*(v3 + 16))
  {

LABEL_44:
    *v2 = v6;
    return result;
  }

  v34 = v2;
  v35 = v3;
  v7 = 0;
  v8 = v3 + 56;
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  while (v11)
  {
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_17:
    v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(v6 + 40);
    sub_25163590C();
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v24 = 3;
        goto LABEL_28;
      }

      if (v20 == 3)
      {
        v24 = 4;
        goto LABEL_28;
      }
    }

    else
    {
      if (!v20)
      {
        v24 = 1;
        goto LABEL_28;
      }

      if (v20 == 1)
      {
        v24 = 2;
LABEL_28:
        MEMORY[0x25307C1E0](v24);
        goto LABEL_29;
      }
    }

    MEMORY[0x25307C1E0](0);
    v25 = v20;
    sub_25163562C();
    if (v22)
    {
      sub_25163592C();
    }

    else
    {
      sub_25163592C();
      if ((v21 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v33 = v21;
      }

      else
      {
        v33 = 0;
      }

      MEMORY[0x25307C200](v33);
    }

LABEL_29:
    result = sub_25163594C();
    v26 = -1 << *(v6 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v26) >> 6;
      while (++v28 != v30 || (v29 & 1) == 0)
      {
        v31 = v28 == v30;
        if (v28 == v30)
        {
          v28 = 0;
        }

        v29 |= v31;
        v32 = *(v13 + 8 * v28);
        if (v32 != -1)
        {
          v14 = __clz(__rbit64(~v32)) + (v28 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_46;
    }

    v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v15 = *(v6 + 48) + 24 * v14;
    *v15 = v20;
    *(v15 + 8) = v21;
    *(v15 + 16) = v22;
    ++*(v6 + 16);
    v3 = v35;
  }

  v17 = v7;
  while (1)
  {
    v7 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v7 >= v12)
    {

      v2 = v34;
      goto LABEL_44;
    }

    v18 = *(v8 + 8 * v7);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v11 = (v18 - 1) & v18;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_251600B9C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ClassificationFactorTimeline.ChangeMoment(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x25307C1E0](v8);
  if (v8)
  {
    v10 = &v7[*(v3 + 20)];
    v11 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    v20 = v7;
    do
    {
      sub_2516017F0(v11, v7, type metadata accessor for ClassificationFactorTimeline.ChangeMoment);
      sub_25163516C();
      sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578]);
      sub_2516352CC();
      v14 = *(v10 + 2);
      v13 = *(v10 + 3);
      v15 = v10[32];
      if (v10[8] == 1)
      {
        sub_25163592C();
      }

      else
      {
        v16 = v12;
        v17 = *v10;
        sub_25163592C();
        v18 = v17;
        v12 = v16;
        v7 = v20;
        MEMORY[0x25307C1E0](v18);
      }

      MEMORY[0x25307C1E0](v14);
      MEMORY[0x25307C1E0](v13);
      MEMORY[0x25307C1E0](v15);
      result = sub_25160145C(v7, type metadata accessor for ClassificationFactorTimeline.ChangeMoment);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_251600D98(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_25163516C();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_251601094(uint64_t a1, uint64_t a2)
{
  sub_251601E2C(0, &qword_280DD70C0, &qword_280DD7318, MEMORY[0x277CC9590], MEMORY[0x277D83638]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251601130(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251601178(uint64_t a1, uint64_t a2)
{
  sub_251601E2C(0, &qword_280DD70C0, &qword_280DD7318, MEMORY[0x277CC9590], MEMORY[0x277D83638]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_251601234(uint64_t a1, uint64_t a2)
{
  sub_251601E2C(0, &qword_280DD70C0, &qword_280DD7318, MEMORY[0x277CC9590], MEMORY[0x277D83638]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2516012D0(uint64_t a1)
{
  sub_251601E2C(0, &qword_280DD70C0, &qword_280DD7318, MEMORY[0x277CC9590], MEMORY[0x277D83638]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251601364()
{
  v1 = *(v0 + 16);
  sub_25163516C();
  sub_251601130(&qword_280DD7318, MEMORY[0x277CC9578]);
  return sub_25163530C() & 1;
}

uint64_t sub_2516013F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25160145C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s13HealthDomains28ClassificationFactorTimelineV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_25163516C();
  sub_251601130(&qword_27F446BE8, MEMORY[0x277CC9578]);
  if ((sub_25163532C() & 1) == 0)
  {
    return 0;
  }

  sub_251601E2C(0, &qword_280DD70C0, &qword_280DD7318, MEMORY[0x277CC9590], MEMORY[0x277D83638]);
  v5 = *(v4 + 36);
  if ((sub_25163532C() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for ClassificationFactorTimeline(0);
  v7 = (a1 + *(v6 + 20));
  v8 = *(v7 + 8);
  v9 = *(v7 + 32);
  v21 = *v7;
  v22 = v8;
  v23 = *(v7 + 1);
  v24 = v9;
  v10 = (a2 + *(v6 + 20));
  v11 = *(v10 + 8);
  v12 = *(v10 + 32);
  v17 = *v10;
  v18 = v11;
  v19 = *(v10 + 1);
  v20 = v12;
  if (!_s13HealthDomains23ClassificationFactorSetV2eeoiySbAC_ACtFZ_0(&v21, &v17))
  {
    return 0;
  }

  v13 = *(v6 + 24);
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);

  return sub_25161F5F8(v14, v15);
}

void sub_251601648(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2516016AC(uint64_t a1, uint64_t a2)
{
  sub_251601648(0, &qword_27F446CB8, type metadata accessor for BirthdayTimeline, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251601780(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251601648(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2516017F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251601858(uint64_t a1)
{
  v2 = sub_25163516C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_251601130(&qword_27F446BA8, MEMORY[0x277CC9578]);
  result = MEMORY[0x25307BE60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2515FD800(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

void sub_251601AD8()
{
  sub_251601E2C(319, &qword_280DD70C0, &qword_280DD7318, MEMORY[0x277CC9590], MEMORY[0x277D83638]);
  if (v0 <= 0x3F)
  {
    sub_251601648(319, &qword_27F446CE8, type metadata accessor for ClassificationFactorTimeline.ChangeMoment, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_251601BF4()
{
  result = sub_25163516C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_251601C68(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_251601D10();
  result = MEMORY[0x25307BE60](v2, &type metadata for ClassificationChangeDescriptor, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_251601D64(v7);
      sub_2515FDAE0(&v9, v7, v6, v8);
      sub_251601D74(v9);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_251601D10()
{
  result = qword_27F446D00;
  if (!qword_27F446D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446D00);
  }

  return result;
}

id sub_251601D64(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

void sub_251601D74(id a1)
{
  if (a1 >= 4)
  {
  }
}

unint64_t sub_251601D84()
{
  result = qword_27F446D08;
  if (!qword_27F446D08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F446D08);
  }

  return result;
}

void sub_251601DD0()
{
  if (!qword_27F446D10)
  {
    sub_251601D10();
    v0 = sub_25163568C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F446D10);
    }
  }
}

void sub_251601E2C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = sub_25163516C();
    v10 = sub_251601130(a3, MEMORY[0x277CC9578]);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t ClassificationLevelID.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ClassificationLevelID.rawValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_25160203C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2516021C0();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_251602090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2516021C0();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

unint64_t sub_25160215C()
{
  result = qword_27F446D28;
  if (!qword_27F446D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446D28);
  }

  return result;
}

unint64_t sub_2516021C0()
{
  result = qword_27F446D30;
  if (!qword_27F446D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446D30);
  }

  return result;
}

uint64_t sub_251602244(uint64_t a1)
{
  v2 = sub_251602B38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251602280(uint64_t a1)
{
  v2 = sub_251602B38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2516022BC()
{
  v1 = 6645601;
  v2 = 0x636E616E67657270;
  if (*v0 != 2)
  {
    v2 = 0x6168636C65656877;
  }

  if (*v0)
  {
    v1 = 7890291;
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

uint64_t sub_251602340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_251603C04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_251602374(uint64_t a1)
{
  v2 = sub_251602B8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2516023B0(uint64_t a1)
{
  v2 = sub_251602B8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2516023EC(uint64_t a1)
{
  v2 = sub_251602A90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251602428(uint64_t a1)
{
  v2 = sub_251602A90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251602464(uint64_t a1)
{
  v2 = sub_251602AE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2516024A0(uint64_t a1)
{
  v2 = sub_251602AE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2516024DC(uint64_t a1)
{
  v2 = sub_251602A3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251602518(uint64_t a1)
{
  v2 = sub_251602A3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClassificationFactor.encode(to:)(void *a1)
{
  v3 = MEMORY[0x277D84538];
  sub_251603498(0, &qword_27F446D38, sub_251602A3C, &type metadata for ClassificationFactor.WheelchairUseCodingKeys, MEMORY[0x277D84538]);
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v38 = &v29 - v6;
  sub_251603498(0, &qword_27F446D48, sub_251602A90, &type metadata for ClassificationFactor.PregnancyStatusCodingKeys, v3);
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7);
  v35 = &v29 - v9;
  sub_251603498(0, &qword_27F446D58, sub_251602AE4, &type metadata for ClassificationFactor.SexCodingKeys, v3);
  v33 = *(v10 - 8);
  v34 = v10;
  v11 = *(v33 + 64);
  MEMORY[0x28223BE20](v10);
  v32 = &v29 - v12;
  sub_251603498(0, &qword_27F446D68, sub_251602B38, &type metadata for ClassificationFactor.AgeCodingKeys, v3);
  v30 = *(v13 - 8);
  v31 = v13;
  v14 = *(v30 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  sub_251603498(0, &qword_27F446D78, sub_251602B8C, &type metadata for ClassificationFactor.CodingKeys, v3);
  v41 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v29 - v20;
  v22 = *v1;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251602B8C();
  sub_25163597C();
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v44 = 2;
      sub_251602A90();
      v25 = v35;
      v24 = v41;
      sub_25163582C();
      v27 = v36;
      v26 = v37;
    }

    else
    {
      v45 = 3;
      sub_251602A3C();
      v25 = v38;
      v24 = v41;
      sub_25163582C();
      v27 = v39;
      v26 = v40;
    }

    goto LABEL_8;
  }

  if (v22)
  {
    v43 = 1;
    sub_251602AE4();
    v25 = v32;
    v24 = v41;
    sub_25163582C();
    v27 = v33;
    v26 = v34;
LABEL_8:
    (*(v27 + 8))(v25, v26);
    return (*(v18 + 8))(v21, v24);
  }

  v42 = 0;
  sub_251602B38();
  v24 = v41;
  sub_25163582C();
  (*(v30 + 8))(v16, v31);
  return (*(v18 + 8))(v21, v24);
}

unint64_t sub_251602A3C()
{
  result = qword_27F446D40;
  if (!qword_27F446D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446D40);
  }

  return result;
}

unint64_t sub_251602A90()
{
  result = qword_27F446D50;
  if (!qword_27F446D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446D50);
  }

  return result;
}

unint64_t sub_251602AE4()
{
  result = qword_27F446D60;
  if (!qword_27F446D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446D60);
  }

  return result;
}

unint64_t sub_251602B38()
{
  result = qword_27F446D70;
  if (!qword_27F446D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446D70);
  }

  return result;
}

unint64_t sub_251602B8C()
{
  result = qword_27F446D80;
  if (!qword_27F446D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446D80);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t ClassificationFactor.hashValue.getter()
{
  v1 = *v0;
  sub_25163590C();
  MEMORY[0x25307C1E0](v1);
  return sub_25163594C();
}

uint64_t ClassificationFactor.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v56 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_251603498(0, &qword_27F446D88, sub_251602A3C, &type metadata for ClassificationFactor.WheelchairUseCodingKeys, MEMORY[0x277D844C8]);
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v55 = &v45 - v6;
  sub_251603498(0, &qword_27F446D90, sub_251602A90, &type metadata for ClassificationFactor.PregnancyStatusCodingKeys, v3);
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v58 = &v45 - v10;
  sub_251603498(0, &qword_27F446D98, sub_251602AE4, &type metadata for ClassificationFactor.SexCodingKeys, v3);
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = *(v49 + 64);
  MEMORY[0x28223BE20](v11);
  v57 = &v45 - v13;
  sub_251603498(0, &qword_27F446DA0, sub_251602B38, &type metadata for ClassificationFactor.AgeCodingKeys, v3);
  v15 = v14;
  v48 = *(v14 - 8);
  v16 = *(v48 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  sub_251603498(0, &qword_27F446DA8, sub_251602B8C, &type metadata for ClassificationFactor.CodingKeys, v3);
  v20 = v19;
  v59 = *(v19 - 8);
  v21 = *(v59 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v45 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251602B8C();
  v25 = v60;
  sub_25163596C();
  if (v25)
  {
    goto LABEL_9;
  }

  v46 = v15;
  v47 = v23;
  v26 = v57;
  v27 = v58;
  v60 = a1;
  v28 = sub_25163580C();
  v29 = *(v28 + 16);
  if (!v29 || ((v30 = *(v28 + 32), v29 == 1) ? (v31 = v30 == 4) : (v31 = 1), v31))
  {
    v32 = sub_2516356FC();
    swift_allocError();
    v34 = v33;
    sub_25160354C();
    v36 = *(v35 + 48);
    *v34 = &type metadata for ClassificationFactor;
    v37 = v47;
    sub_25163579C();
    sub_2516356DC();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    (*(v59 + 8))(v37, v20);
    swift_unknownObjectRelease();
    a1 = v60;
LABEL_9:
    v38 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  if (*(v28 + 32) > 1u)
  {
    v57 = v28;
    v41 = v56;
    v42 = v59;
    if (v30 == 2)
    {
      v63 = 2;
      sub_251602A90();
      v43 = v47;
      sub_25163578C();
      (*(v52 + 8))(v27, v51);
    }

    else
    {
      v64 = 3;
      sub_251602A3C();
      v44 = v55;
      v43 = v47;
      sub_25163578C();
      (*(v53 + 8))(v44, v54);
    }

    (*(v42 + 8))(v43, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    if (*(v28 + 32))
    {
      v62 = 1;
      sub_251602AE4();
      v40 = v47;
      sub_25163578C();
      (*(v49 + 8))(v26, v50);
    }

    else
    {
      v61 = 0;
      sub_251602B38();
      v40 = v47;
      sub_25163578C();
      (*(v48 + 8))(v18, v46);
    }

    (*(v59 + 8))(v40, v20);
    swift_unknownObjectRelease();
    v41 = v56;
  }

  *v41 = v30;
  v38 = v60;
  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t sub_251603378()
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

uint64_t sub_2516033AC()
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

BOOL sub_2516033E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t _s13HealthDomains13ConstellationV4KindO9hashValueSivg_0()
{
  v1 = *v0;
  sub_25163590C();
  MEMORY[0x25307C1E0](v1);
  return sub_25163594C();
}

uint64_t sub_251603454()
{
  v1 = *v0;
  sub_25163590C();
  MEMORY[0x25307C1E0](v1);
  return sub_25163594C();
}

void sub_251603498(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_25160354C()
{
  if (!qword_27F446DB0)
  {
    sub_2516035BC();
    sub_2516356EC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F446DB0);
    }
  }
}

unint64_t sub_2516035BC()
{
  result = qword_27F446DB8;
  if (!qword_27F446DB8)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27F446DB8);
  }

  return result;
}

unint64_t sub_25160360C()
{
  result = qword_27F446DC0;
  if (!qword_27F446DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446DC0);
  }

  return result;
}

uint64_t sub_2516036AC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25160373C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_251603840()
{
  result = qword_27F446DC8;
  if (!qword_27F446DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446DC8);
  }

  return result;
}

unint64_t sub_251603898()
{
  result = qword_27F446DD0;
  if (!qword_27F446DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446DD0);
  }

  return result;
}

unint64_t sub_2516038F0()
{
  result = qword_27F446DD8;
  if (!qword_27F446DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446DD8);
  }

  return result;
}

unint64_t sub_251603948()
{
  result = qword_27F446DE0;
  if (!qword_27F446DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446DE0);
  }

  return result;
}

unint64_t sub_2516039A0()
{
  result = qword_27F446DE8;
  if (!qword_27F446DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446DE8);
  }

  return result;
}

unint64_t sub_2516039F8()
{
  result = qword_27F446DF0;
  if (!qword_27F446DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446DF0);
  }

  return result;
}

unint64_t sub_251603A50()
{
  result = qword_27F446DF8;
  if (!qword_27F446DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446DF8);
  }

  return result;
}

unint64_t sub_251603AA8()
{
  result = qword_27F446E00;
  if (!qword_27F446E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446E00);
  }

  return result;
}

unint64_t sub_251603B00()
{
  result = qword_27F446E08;
  if (!qword_27F446E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446E08);
  }

  return result;
}

unint64_t sub_251603B58()
{
  result = qword_27F446E10;
  if (!qword_27F446E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446E10);
  }

  return result;
}

unint64_t sub_251603BB0()
{
  result = qword_27F446E18;
  if (!qword_27F446E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446E18);
  }

  return result;
}

uint64_t sub_251603C04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6645601 && a2 == 0xE300000000000000;
  if (v3 || (sub_2516358DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7890291 && a2 == 0xE300000000000000 || (sub_2516358DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E616E67657270 && a2 == 0xEF73757461745379 || (sub_2516358DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6168636C65656877 && a2 == 0xED00006573557269)
  {

    return 3;
  }

  else
  {
    v6 = sub_2516358DC();

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

uint64_t PregnancyStatus.hashValue.getter()
{
  v1 = *v0;
  sub_25163590C();
  MEMORY[0x25307C1E0](v1);
  return sub_25163594C();
}

unint64_t sub_251603E30()
{
  result = qword_27F446E20;
  if (!qword_27F446E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446E20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PregnancyStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PregnancyStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_251604000(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  sub_2515F8380(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25160417C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251601094(a1, v8);
  sub_251601094(v8, v12);
  sub_251604250(v8, sub_2515F8380);
  v13 = type metadata accessor for ClassificationFactorTimeline(0);
  v14 = &v12[*(v13 + 20)];
  *v14 = 0;
  v14[8] = 1;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  v14[32] = 0;
  *&v12[*(v13 + 24)] = MEMORY[0x277D84F90];
  swift_storeEnumTagMultiPayload();
  a3(v12);
  return sub_251604250(v12, sub_25160417C);
}

void sub_25160417C()
{
  if (!qword_27F446E28)
  {
    type metadata accessor for ClassificationFactorTimeline(255);
    sub_2516041EC();
    v0 = sub_25163595C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F446E28);
    }
  }
}

unint64_t sub_2516041EC()
{
  result = qword_27F446E30;
  if (!qword_27F446E30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F446E30);
  }

  return result;
}

uint64_t sub_251604250(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Classifier.classifications(over:calendar:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 32) = a5;
  *(v12 + 40) = a6;
  swift_getAssociatedTypeWitness();
  v17 = sub_25163546C();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v13 = sub_2516354CC();
  (*(*(v13 - 8) + 32))(v12 + 24, &v17, v13);
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = v12;
  v14[5] = a3;
  v14[6] = a4;
  v15 = *(a6 + 32);

  v15(a1, a2, 200, sub_251605B78, v14, a5, a6);
}

void sub_2516046C8()
{
  if (!qword_27F446E38)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_25163525C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F446E38);
    }
  }
}

uint64_t sub_251604720(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void))
{
  v10 = a1;
  v11 = a2 & 0x1FF;
  sub_251606050(a1, a2, BYTE1(a2) & 1);
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  swift_getTupleTypeMetadata2();
  sub_2516041EC();
  v6 = sub_25163595C();
  sub_25161FCE8(v6, &v9, &v12);
  v7 = v13;
  os_unfair_lock_lock((a3 + 16));
  sub_2516048CC((a3 + 24), &v10);
  j__os_unfair_lock_unlock((a3 + 16));

  if (v7)
  {
    a4(v10, 0);
  }
}

uint64_t sub_2516048CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  sub_2516354CC();

  swift_getWitnessTable();
  sub_25163549C();
  *a2 = *a1;
}

uint64_t Classifier.classifications(over:calendar:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_2516049B0, 0, 0);
}

uint64_t sub_2516049B0()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  *(v2 + 40) = v4;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  swift_getAssociatedTypeWitness();
  v7 = sub_2516354CC();
  *v6 = v0;
  v6[1] = sub_251604AEC;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000001FLL, 0x800000025163B790, sub_251605B94, v2, v7);
}

uint64_t sub_251604AEC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_251604C24;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_251604C08;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251604C24()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_251604C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[1] = a2;
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  sub_2516041EC();
  v11 = sub_25163551C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  (*(v12 + 16))(v19 - v14, a1, v11);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  (*(v12 + 32))(v17 + v16, v15, v11);
  Classifier.classifications(over:calendar:completion:)(a3, a4, sub_251605F74, v17, a5, a6);
}

uint64_t sub_251604E40(uint64_t a1, char a2)
{
  v4 = a1;
  v5 = a2 & 1;
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  sub_2516041EC();
  v2 = sub_25163551C();
  return sub_251615110(&v4, v2);
}

uint64_t Classifier.mostRecentClassification(calendar:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_251604F00, 0, 0);
}

uint64_t sub_251604F00()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  swift_getAssociatedTypeWitness();
  v7 = sub_25163563C();
  *v6 = v0;
  v6[1] = sub_251605038;
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000023, 0x800000025163B7B0, sub_251605BAC, v3, v7);
}

uint64_t sub_251605038()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_251605174, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_251605174()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_2516051D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  sub_25163563C();
  sub_2516041EC();
  v9 = sub_25163551C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  (*(v10 + 32))(v15 + v14, v13, v9);
  (*(a5 + 40))(a3, sub_251605DCC, v15, a4, a5);
}

uint64_t sub_251605390(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  sub_25163563C();
  sub_2516041EC();
  v2 = sub_25163551C();
  return sub_251615110(a1, v2);
}

uint64_t Classifier.classificationAxisTimeline(over:calendar:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_251605440, 0, 0);
}

uint64_t sub_251605440()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  *(v2 + 40) = v4;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for ClassificationAxisTimeline();
  *v6 = v0;
  v6[1] = sub_25160563C;
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD00000000000002ALL, 0x800000025163B7E0, sub_251605BB8, v2, v7);
}

uint64_t sub_25160563C()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_251604C24, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_251605778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[1] = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ClassificationAxisTimeline();
  sub_2516041EC();
  v11 = sub_25163551C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  (*(v12 + 16))(v19 - v14, a1, v11);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  (*(v12 + 32))(v17 + v16, v15, v11);
  (*(a6 + 48))(a3, a4, sub_251605C38, v17, a5, a6);
}

uint64_t sub_2516059F8(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ClassificationAxisTimeline();
  sub_2516041EC();
  v2 = sub_25163551C();
  return sub_251615110(a1, v2);
}

uint64_t sub_251605B78(void *a1, __int16 a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 48);
  return sub_251604720(a1, a2 & 0x1FF, *(v2 + 32), *(v2 + 40));
}

uint64_t sub_251605C38(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ClassificationAxisTimeline();
  sub_2516041EC();
  v5 = *(*(sub_25163551C() - 8) + 80);

  return sub_2516059F8(a1);
}

uint64_t sub_251605DCC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  sub_25163563C();
  sub_2516041EC();
  v5 = *(*(sub_25163551C() - 8) + 80);

  return sub_251605390(a1);
}

uint64_t objectdestroy_14Tm(void (*a1)(uint64_t, uint64_t))
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  a1(255, AssociatedTypeWitness);
  sub_2516041EC();
  v6 = sub_25163551C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = *(v7 + 64);
  (*(v7 + 8))(v1 + v9, v6);

  return MEMORY[0x2821FE8E8](v1, v9 + v10, v8 | 7);
}

uint64_t sub_251605F74(uint64_t a1, char a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  sub_2516041EC();
  v7 = *(*(sub_25163551C() - 8) + 80);

  return sub_251604E40(a1, a2 & 1);
}

id sub_251606050(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_25160605C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_2516355BC();
  if (!v26)
  {
    return sub_25163546C();
  }

  v48 = v26;
  v52 = sub_25163572C();
  v39 = sub_25163573C();
  sub_25163570C();
  result = sub_2516355AC();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_2516355FC();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_25163571C();
      result = sub_2516355DC();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ContributingDatum.Value.hash(into:)()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    MEMORY[0x25307C1E0](1);
    sub_25163562C();
  }

  else
  {
    MEMORY[0x25307C1E0](0);
  }

  return sub_25163562C();
}

uint64_t ContributingDatum.Value.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_25163590C();
  if (v3)
  {
    MEMORY[0x25307C1E0](1);
    sub_25163562C();
  }

  else
  {
    MEMORY[0x25307C1E0](0);
  }

  sub_25163562C();
  return sub_25163594C();
}

uint64_t sub_251606574()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_25163590C();
  if (v3)
  {
    MEMORY[0x25307C1E0](1);
    sub_25163562C();
  }

  else
  {
    MEMORY[0x25307C1E0](0);
  }

  sub_25163562C();
  return sub_25163594C();
}

uint64_t sub_2516065F8()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    MEMORY[0x25307C1E0](1);
    sub_25163562C();
  }

  else
  {
    MEMORY[0x25307C1E0](0);
  }

  return sub_25163562C();
}

uint64_t sub_251606668()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_25163590C();
  if (v3)
  {
    MEMORY[0x25307C1E0](1);
    sub_25163562C();
  }

  else
  {
    MEMORY[0x25307C1E0](0);
  }

  sub_25163562C();
  return sub_25163594C();
}

uint64_t ContributingDatum.measureIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t ContributingDatum.measureIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t ContributingDatum.level.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t ContributingDatum.level.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t ContributingDatum.scaleLevelIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t ContributingDatum.dateRange.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ContributingDatum() + 32);

  return sub_251609670(a1, v3);
}

void ContributingDatum.value.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 88);
  if (v3 == 255)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
  }

  else
  {
    v4 = *(v1 + 72);
    v5 = *(v1 + 80);
    v6 = *(v1 + 56);
    v7 = *(v1 + 64);
    v8 = *(v1 + 48);
    v9[0] = *(v1 + 40);
    v9[1] = v8;
    v9[2] = v6;
    v9[3] = v7;
    v9[4] = v4;
    v9[5] = v5;
    v10 = v3 & 1;
    sub_2516096D4(v9[0], v8, v6, v7, v4, v5, v3 & 1);
    sub_251606948(v9, a1);
  }
}

void sub_251606948(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 48);
  if (v7)
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(a1 + 24);
    v11 = objc_opt_self();
    v12 = sub_25163536C();
    v13 = objc_opt_self();
    v14 = [v13 unitFromString_];

    v15 = [v11 quantityWithUnit:v14 doubleValue:v4];
    v16 = sub_25163536C();
    v17 = [v13 unitFromString_];

    v18 = [v11 quantityWithUnit:v17 doubleValue:v10];
    sub_25160B328(a1);
  }

  else
  {
    v19 = objc_opt_self();
    v20 = sub_25163536C();
    v21 = [objc_opt_self() unitFromString_];

    v15 = [v19 quantityWithUnit:v21 doubleValue:v4];
    sub_25160B328(a1);

    v18 = 0;
  }

  *a2 = v15;
  *(a2 + 8) = v18;
  *(a2 + 16) = v7 & 1;
}

uint64_t ContributingDatum.init(measureIdentifier:level:scaleLevelIDs:value:dateRange:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *a2;
  v11 = a2[1];
  v13 = *a4;
  v12 = *(a4 + 8);
  v14 = *(a4 + 16);
  v15 = type metadata accessor for ContributingDatum();
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  v16 = *(v15 + 32);
  sub_2515F8380(0);
  v42 = v16;
  (*(*(v17 - 8) + 56))(a6 + v16, 1, 1, v17);
  *a6 = v8;
  *(a6 + 8) = v9;
  v18 = *(a6 + 24);

  *(a6 + 16) = v10;
  *(a6 + 24) = v11;
  v19 = 0;
  *(a6 + 32) = a3;
  if (v14 == 255)
  {
    v26 = 0;
    v28 = 0;
    v33 = 0;
    v35 = 0;
    v23 = 0;
    v20 = -1;
  }

  else if (v14)
  {
    v20 = 1;
    sub_251609714(v13, v12, 1);
    v21 = [v13 _unit];
    [v13 doubleValueForUnit_];
    v23 = v22;

    v24 = [v13 _unit];
    v25 = [v24 unitString];

    v26 = sub_25163537C();
    v28 = v27;

    v29 = [v12 _unit];
    [v12 doubleValueForUnit_];
    v19 = v30;

    v31 = [v12 _unit];
    v32 = [v31 unitString];

    v33 = sub_25163537C();
    v35 = v34;
    sub_251609750(v13, v12, v14);

    sub_251609750(v13, v12, v14);
  }

  else
  {
    sub_2516097C0(v13, v12, v14);
    sub_251609714(v13, v12, 0);
    v36 = [v13 _unit];
    [v13 doubleValueForUnit_];
    v23 = v37;

    v38 = [v13 _unit];
    v39 = [v38 unitString];

    v26 = sub_25163537C();
    v28 = v40;
    sub_251609750(v13, v12, v14);
    sub_251609750(v13, v12, v14);

    sub_251609750(v13, v12, v14);
    v33 = 0;
    v35 = 0;
    v20 = 0;
  }

  *(a6 + 40) = v23;
  *(a6 + 48) = v26;
  *(a6 + 56) = v28;
  *(a6 + 64) = v19;
  *(a6 + 72) = v33;
  *(a6 + 80) = v35;
  *(a6 + 88) = v20;

  return sub_251609670(a5, a6 + v42);
}

unint64_t sub_251606E4C()
{
  v1 = *v0;
  v2 = 0x6C6576656CLL;
  v3 = 0x76654C656C616373;
  v4 = 0x56656C6261646F63;
  if (v1 != 3)
  {
    v4 = 0x676E615265746164;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_251606F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25160A84C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_251606F34(uint64_t a1)
{
  v2 = sub_251609D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251606F70(uint64_t a1)
{
  v2 = sub_251609D44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContributingDatum.encode(to:)(void *a1)
{
  v3 = v1;
  sub_25160B9EC(0, &qword_27F446E40, sub_251609D44, &type metadata for ContributingDatum.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251609D44();
  sub_25163597C();
  v12 = *(v3 + 8);
  *&v18[0] = *v3;
  *(&v18[0] + 1) = v12;
  v20 = 0;
  sub_251609D98();

  sub_25163588C();
  if (v2)
  {
  }

  else
  {

    v13 = *(v3 + 24);
    *&v18[0] = *(v3 + 16);
    *(&v18[0] + 1) = v13;
    v20 = 1;
    sub_251609DEC();

    sub_25163583C();

    *&v18[0] = *(v3 + 32);
    v20 = 2;
    sub_25160A3A4(0, &qword_280DD70B0, &type metadata for ClassificationLevelID, MEMORY[0x277D83940]);
    sub_25160A034(&qword_27F446E60, sub_251609DEC);
    sub_25163588C();
    v15 = *(v3 + 88);
    v16 = *(v3 + 56);
    v18[0] = *(v3 + 40);
    v18[1] = v16;
    v18[2] = *(v3 + 72);
    v19 = v15;
    v20 = 3;
    sub_251609E40();
    sub_25163583C();
    v17 = *(type metadata accessor for ContributingDatum() + 32);
    LOBYTE(v18[0]) = 4;
    sub_2515F8380(0);
    sub_251609E94(&qword_27F446E70, &qword_27F446E78);
    sub_25163583C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t ContributingDatum.hash(into:)()
{
  v1 = v0;
  sub_2515F8380(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251609618();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  v13 = v0[1];
  sub_25163539C();
  if (v0[3])
  {
    v14 = v0[2];
    sub_25163592C();

    sub_25163539C();
  }

  else
  {
    sub_25163592C();
  }

  v15 = v0[4];
  MEMORY[0x25307C1E0](*(v15 + 16));
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = (v15 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;

      sub_25163539C();

      v17 += 2;
      --v16;
    }

    while (v16);
  }

  v20 = *(v1 + 88);
  if (v20 == 255)
  {
    sub_25163592C();
  }

  else
  {
    v21 = *(v1 + 7);
    v25[0] = *(v1 + 5);
    v25[1] = v21;
    v25[2] = *(v1 + 9);
    v26 = v20 & 1;
    sub_25163592C();
    sub_2516086D0();
  }

  v22 = type metadata accessor for ContributingDatum();
  sub_25160A118(v1 + *(v22 + 32), v11, sub_251609618);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    return sub_25163592C();
  }

  sub_251601234(v11, v7);
  sub_25163592C();
  sub_25163516C();
  sub_25160B2E0(&qword_27F446BA8, MEMORY[0x277CC9578]);
  sub_2516352CC();
  v24 = &v7[*(v3 + 36)];
  sub_2516352CC();
  return sub_25160B280(v7, sub_2515F8380);
}

uint64_t ContributingDatum.hashValue.getter()
{
  sub_25163590C();
  ContributingDatum.hash(into:)();
  return sub_25163594C();
}

uint64_t ContributingDatum.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  sub_251609618();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25160B9EC(0, &qword_27F446E80, sub_251609D44, &type metadata for ContributingDatum.CodingKeys, MEMORY[0x277D844C8]);
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v37 - v9;
  v11 = type metadata accessor for ContributingDatum();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  v16 = *(v13 + 40);
  sub_2515F8380(0);
  v18 = *(*(v17 - 8) + 56);
  v43 = v16;
  v19 = v15;
  v18(&v15[v16], 1, 1, v17);
  v20 = a1[3];
  v21 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_251609D44();
  v22 = v41;
  sub_25163596C();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
    v23 = *(v15 + 3);

    sub_251609F24(0, 0, 0, 0, 0, 0, 255);
    v35 = sub_251609618;
    v36 = &v15[v43];
  }

  else
  {
    v41 = v6;
    v51 = 0;
    sub_251609F8C();
    sub_2516357FC();
    v25 = v45;
    *v15 = v44;
    *(v15 + 1) = v25;
    v51 = 1;
    sub_251609FE0();
    sub_2516357AC();
    v26 = v44;
    v27 = v45;
    v28 = *(v19 + 24);

    *(v19 + 16) = v26;
    *(v19 + 24) = v27;
    sub_25160A3A4(0, &qword_280DD70B0, &type metadata for ClassificationLevelID, MEMORY[0x277D83940]);
    v51 = 2;
    sub_25160A034(&qword_27F446E98, sub_251609FE0);
    sub_2516357FC();
    *(v19 + 32) = v44;
    v51 = 3;
    sub_25160A0C4();
    sub_2516357AC();
    v29 = v45;
    v30 = v46;
    v31 = v47;
    v33 = v48;
    v32 = v49;
    LOBYTE(v27) = v50;
    v37[2] = v45;
    v37[3] = v44;
    *(v19 + 40) = v44;
    *(v19 + 48) = v29;
    v37[1] = v30;
    *(v19 + 56) = v30;
    *(v19 + 64) = v31;
    v37[4] = v31;
    *(v19 + 72) = v33;
    *(v19 + 80) = v32;
    *(v19 + 88) = v27;
    LOBYTE(v44) = 4;
    sub_251609E94(&qword_27F446EA8, &qword_27F446EB0);
    v34 = v41;
    sub_2516357AC();
    (*(v39 + 8))(v10, v40);
    sub_251609670(v34, v19 + v43);
    sub_25160A118(v19, v38, type metadata accessor for ContributingDatum);
    __swift_destroy_boxed_opaque_existential_1(v42);
    v35 = type metadata accessor for ContributingDatum;
    v36 = v19;
  }

  return sub_25160B280(v36, v35);
}

uint64_t sub_251607C78()
{
  sub_25163590C();
  ContributingDatum.hash(into:)();
  return sub_25163594C();
}

uint64_t sub_251607CBC()
{
  sub_25163590C();
  ContributingDatum.hash(into:)();
  return sub_25163594C();
}

uint64_t ContributingDatum.init<A>(measureIdentifier:level:value:dateRange:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v81 = a4;
  sub_251609618();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v21 = &v72 - v20;
  v22 = *a1;
  v77 = a1[1];
  v78 = v22;
  v23 = *(a3 + 8);
  v72 = *a3;
  v73 = v23;
  v74 = *(a3 + 16);
  v24 = *(a6 + 32);
  sub_2516356BC();
  v75 = v89;
  v76 = v88;
  v25 = *(a6 + 56);
  v80 = a2;
  v26 = v16;
  v27 = v81;
  v25(a5, a6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v18 + 8))(v21, AssociatedTypeWitness);
  v87 = v29;
  v85 = a5;
  v86 = a6;
  KeyPath = swift_getKeyPath();
  v83 = a6;
  v84 = KeyPath;
  v31 = sub_2516354CC();
  WitnessTable = swift_getWitnessTable();
  v34 = sub_25160605C(sub_25160A180, v82, v31, &type metadata for ClassificationLevelID, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v33);
  v35 = v74;

  v79 = v26;
  sub_25160A118(v27, v26, sub_251609618);
  v36 = type metadata accessor for ContributingDatum();
  *(a7 + 16) = 0;
  *(a7 + 24) = 0;
  v37 = *(v36 + 32);
  sub_2515F8380(0);
  (*(*(v38 - 8) + 56))(a7 + v37, 1, 1, v38);
  v39 = v77;
  *a7 = v78;
  *(a7 + 8) = v39;
  v40 = *(a7 + 24);

  v41 = v75;
  *(a7 + 16) = v76;
  *(a7 + 24) = v41;
  v42 = 0;
  *(a7 + 32) = v34;
  if (v35 == 255)
  {
    v51 = 0;
    v53 = 0;
    v58 = 0;
    v60 = 0;
    v48 = 0;
    v63 = -1;
  }

  else if (v35)
  {
    v78 = v37;
    v43 = v72;
    v44 = v73;
    sub_251609714(v72, v73, 1);
    v45 = [v43 _unit];
    v46 = v35;
    [v43 doubleValueForUnit_];
    v48 = v47;

    v49 = [v43 _unit];
    v50 = [v49 unitString];

    v51 = sub_25163537C();
    v53 = v52;

    v54 = [v44 _unit];
    [v44 doubleValueForUnit_];
    v42 = v55;

    v56 = [v44 _unit];
    v57 = [v56 unitString];

    v58 = sub_25163537C();
    v60 = v59;

    v27 = v81;
    sub_251609750(v43, v44, v46);
    v61 = v43;
    v37 = v78;
    v62 = v44;
    v63 = 1;
    sub_251609750(v61, v62, v46);
  }

  else
  {
    v64 = v72;
    v65 = v73;
    sub_251609714(v72, v73, 0);
    v66 = [v64 _unit];
    [v64 doubleValueForUnit_];
    v48 = v67;

    v68 = [v64 _unit];
    v69 = [v68 unitString];

    v51 = sub_25163537C();
    v53 = v70;

    sub_251609750(v64, v65, v35);
    sub_251609750(v64, v65, v35);
    v58 = 0;
    v60 = 0;
    v63 = 0;
  }

  sub_25160B280(v27, sub_251609618);
  (*(*(a5 - 8) + 8))(v80, a5);
  *(a7 + 40) = v48;
  *(a7 + 48) = v51;
  *(a7 + 56) = v53;
  *(a7 + 64) = v42;
  *(a7 + 72) = v58;
  *(a7 + 80) = v60;
  *(a7 + 88) = v63;
  return sub_251609670(v79, a7 + v37);
}

uint64_t sub_2516082E8(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84538];
  sub_25160B9EC(0, &qword_27F446EE8, sub_25160AA18, &type metadata for ContributingDatum.CodableValue.BloodPressureCodingKeys, MEMORY[0x277D84538]);
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v34 = &v28 - v7;
  sub_25160B9EC(0, &qword_27F446EF8, sub_25160AA6C, &type metadata for ContributingDatum.CodableValue.QuantityCodingKeys, v4);
  v9 = v8;
  v29 = *(v8 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  sub_25160B9EC(0, &qword_27F446F08, sub_25160AAC0, &type metadata for ContributingDatum.CodableValue.CodingKeys, v4);
  v14 = v13;
  v33 = *(v13 - 8);
  v15 = *(v33 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25160AAC0();
  sub_25163597C();
  v19 = *v2;
  v21 = v2[1];
  v20 = v2[2];
  if (v2[6])
  {
    v22 = v2[3];
    v23 = v2[4];
    v24 = v2[5];
    LOBYTE(v35) = 1;
    sub_25160AA18();
    sub_25163582C();
    v35 = v19;
    v36 = v21;
    v37 = v20;
    v38 = 0;
    sub_25160AB14();
    v25 = v31;
    v26 = v32;
    sub_25163588C();
    if (!v26)
    {
      v35 = v22;
      v36 = v23;
      v37 = v24;
      v38 = 1;
      sub_25163588C();
    }

    (*(v30 + 8))(v34, v25);
  }

  else
  {
    LOBYTE(v35) = 0;
    sub_25160AA6C();
    sub_25163582C();
    v35 = v19;
    v36 = v21;
    v37 = v20;
    sub_25160AB14();
    sub_25163588C();
    (*(v29 + 8))(v12, v9);
  }

  return (*(v33 + 8))(v17, v14);
}

uint64_t sub_2516086D0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*(v0 + 48))
  {
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = *(v0 + 24);
    MEMORY[0x25307C1E0](1);
    if (v1 == 0.0)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v1;
    }

    MEMORY[0x25307C200](*&v7);
    sub_25163539C();
    if (v6 == 0.0)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    MEMORY[0x25307C1E0](0);
    v8 = 0.0;
    if (v1 != 0.0)
    {
      v8 = v1;
    }
  }

  MEMORY[0x25307C200](*&v8);

  return sub_25163539C();
}

uint64_t sub_2516087B4()
{
  if (*v0)
  {
    result = 0x696C6F7473616964;
  }

  else
  {
    result = 0x63696C6F74737973;
  }

  *v0;
  return result;
}

uint64_t sub_2516087F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x63696C6F74737973 && a2 == 0xE800000000000000;
  if (v6 || (sub_2516358DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696C6F7473616964 && a2 == 0xE900000000000063)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2516358DC();

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

uint64_t sub_2516088D8(uint64_t a1)
{
  v2 = sub_25160AA18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251608914(uint64_t a1)
{
  v2 = sub_25160AA18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251608950()
{
  if (*v0)
  {
    result = 0x657250646F6F6C62;
  }

  else
  {
    result = 0x797469746E617571;
  }

  *v0;
  return result;
}

uint64_t sub_251608998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x797469746E617571 && a2 == 0xE800000000000000;
  if (v6 || (sub_2516358DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657250646F6F6C62 && a2 == 0xED00006572757373)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2516358DC();

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