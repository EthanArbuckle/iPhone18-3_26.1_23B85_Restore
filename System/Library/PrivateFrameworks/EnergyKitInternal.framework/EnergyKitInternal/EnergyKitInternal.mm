uint64_t sub_20DEB0A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20DF47564();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_20DF473B4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_20DEB0B78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20DF47564();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_20DF473B4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20DEB0C80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20DF47B14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_20DEB0DDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20DEB0E78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 56);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20DEB0EC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 56) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20DEB0F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20DF474E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20DEB0FE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20DF474E4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20DEB109C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20DF474E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_20DEB115C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20DF474E4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20DEB122C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20DEB1278()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_20DF474E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_20DEB13E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA28, &qword_20DF49F68);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20DEB150C()
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA48, &qword_20DF49FA8);
  v1 = *(v26 - 8);
  v2 = *(v1 + 80);
  v22 = (v2 + 48) & ~v2;
  v23 = (*(v1 + 64) + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v3 = sub_20DF474E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v5;
  v7 = *(v4 + 64);
  v8 = (v7 + v5 + v6) & ~v5;
  v24 = sub_20DF47604();
  v9 = *(v24 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + v8) & ~v10;
  v12 = v2 | v5 | v10;
  v13 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + 16);
  swift_unknownObjectRelease();
  v15 = *(v0 + 40);

  (*(v1 + 8))(v0 + v22, v26);
  v16 = *(v0 + v23 + 8);

  v17 = *(v0 + v25 + 8);

  v18 = *(v0 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  v19 = *(v4 + 8);
  v19(v0 + v6, v3);
  v19(v0 + v8, v3);
  (*(v9 + 8))(v0 + v11, v24);
  v20 = *(v0 + v13 + 8);

  return MEMORY[0x2821FE8E8](v0, v13 + 16, v12 | 7);
}

uint64_t sub_20DEB178C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA48, &qword_20DF49FA8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20DEB1884()
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  v1 = *(v22 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = sub_20DF474E4();
  v7 = *(v23 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8;
  v24 = v2 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v3, v22);
  v13 = *(v0 + v4);

  v14 = *(v0 + v5 + 8);

  v15 = *(v0 + v6 + 8);

  v16 = *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  (*(v7 + 8))(v0 + v9, v23);
  v17 = *(v0 + v10 + 8);

  v18 = *(v0 + v11 + 8);

  v19 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v0 + v19 + 8);

  return MEMORY[0x2821FE8E8](v0, v19 + 16, v24 | 7);
}

uint64_t sub_20DEB1A90()
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  v1 = *(v21 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = sub_20DF474E4();
  v8 = *(v22 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 + v7 + 16) & ~v9;
  v23 = v2 | v9;
  v11 = (*(v8 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v3, v21);
  v13 = *(v0 + v4);

  v14 = *(v0 + v5 + 8);

  v15 = *(v0 + v6 + 8);

  v16 = *(v0 + v7 + 8);

  (*(v8 + 8))(v0 + v10, v22);
  v17 = *(v0 + v11 + 8);

  v18 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v0 + v18 + 8);

  return MEMORY[0x2821FE8E8](v0, v18 + 16, v23 | 7);
}

uint64_t sub_20DEB1C80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v11 = *(v0 + v5);

  v12 = *(v0 + v6 + 8);

  v13 = *(v0 + v7 + 8);

  v14 = *(v0 + v8 + 8);

  v15 = *(v0 + v9 + 8);

  return MEMORY[0x2821FE8E8](v0, v9 + 16, v3 | 7);
}

uint64_t sub_20DEB1DC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  v2 = *(v1 - 8);
  v33 = *(v2 + 80);
  v3 = (v33 + 32) & ~v33;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C988, &qword_20DF4AD10) - 8);
  v32 = *(v9 + 80);
  v10 = (v32 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v32;
  v31 = *(v9 + 64);
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v12 = *(v0 + v4);

  v13 = *(v0 + v5 + 8);

  v14 = *(v0 + v6 + 8);

  v15 = *(v0 + v7 + 8);

  v16 = *(v0 + v8 + 8);

  v17 = *(v0 + v26 + 8);

  v18 = *(v0 + v27 + 8);

  v19 = *(v0 + v28 + 8);

  v20 = *(v0 + v29 + 8);

  v21 = *(v0 + v30 + 8);

  v22 = *(v0 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  v23 = sub_20DF474E4();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v0 + v10, 1, v23))
  {
    (*(v24 + 8))(v0 + v10, v23);
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v31, v33 | v32 | 7);
}

uint64_t sub_20DEB20A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_20DEB21A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 9, v3 | 7);
}

uint64_t sub_20DEB2288()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_20DEB23C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20DEB2414(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20DEB246C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA88, &unk_20DF4A178);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20DEB253C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA88, &unk_20DF4A178);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20DEB25D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20DF473B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20DEB263C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20DF473B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20DEB26B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20DEB26E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20DF474E4();
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

uint64_t sub_20DEB27A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20DF474E4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20DEB2860()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20DEB28B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20DF474E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20DEB2970(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20DF474E4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20DEB2A2C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_20DF47604();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_20DF475D4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_20DEB2B50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_20DF47604();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_20DF475D4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20DEB2C74(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22[1] = a1;
    v23 = v15;
    *v14 = 136446210;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "Enable next clean energy forecast failed.%{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  return sub_20DF47ED4();
}

uint64_t sub_20DEB2EF4(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22[1] = a1;
    v23 = v15;
    *v14 = 136446210;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "Disable next clean energy forecast failed.%{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  return sub_20DF47ED4();
}

uint64_t sub_20DEB3170(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22[1] = a1;
    v23 = v15;
    *v14 = 136446210;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to disable cache for energy forecast.%{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  return sub_20DF47ED4();
}

uint64_t sub_20DEB3478()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v18 = (v3 + 32) & ~v3;
  v19 = v1;
  v4 = *(v2 + 64);
  v5 = sub_20DF47564();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v18 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = sub_20DF474E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v17 = *(v11 + 64);
  v14 = v3 | v7 | v12;
  v15 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v18, v19);
  (*(v6 + 8))(v0 + v8, v5);
  (*(v11 + 8))(v0 + v13, v10);

  return MEMORY[0x2821FE8E8](v0, v13 + v17, v14 | 7);
}

uint64_t sub_20DEB3660()
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v1 = *(v21 - 8);
  v2 = *(v1 + 80);
  v17 = (v2 + 32) & ~v2;
  v3 = *(v1 + 64);
  v20 = sub_20DF47564();
  v4 = *(v20 - 8);
  v5 = *(v4 + 80);
  v6 = (v17 + v3 + v5) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = sub_20DF473B4();
  v9 = *(v19 - 8);
  v10 = *(v9 + 80);
  v11 = (v8 + v10 + 16) & ~v10;
  v18 = *(v9 + 64);
  v12 = v2 | v5 | v10;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v17, v21);
  (*(v4 + 8))(v0 + v6, v20);
  v14 = *(v0 + v7 + 8);

  v15 = *(v0 + v8 + 8);

  (*(v9 + 8))(v0 + v11, v19);

  return MEMORY[0x2821FE8E8](v0, v11 + v18, v12 | 7);
}

uint64_t sub_20DEB38A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_20DF474E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = v3 | v8;
  v11 = *(v7 + 64) + v9;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5 + 8);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 2, v10 | 7);
}

uint64_t sub_20DEB3A1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE68, &qword_20DF4B2E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v18 = (v3 + 32) & ~v3;
  v19 = v1;
  v4 = *(v2 + 64);
  v5 = sub_20DF47564();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v18 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = sub_20DF473B4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = v3 | v7 | v12;
  v15 = (*(v11 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v18, v19);
  (*(v6 + 8))(v0 + v8, v5);
  (*(v11 + 8))(v0 + v13, v10);

  return MEMORY[0x2821FE8E8](v0, v15 + 8, v14 | 7);
}

uint64_t sub_20DEB3CD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_20DEB3DD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 9, v3 | 7);
}

uint64_t sub_20DEB3EE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20DF47564();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v11 + 8);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_20DEB407C()
{
  v1 = sub_20DF473B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEB8, &qword_20DF4B3E8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = *(v7 + 64) + v9;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 1, v10 | 7);
}

uint64_t sub_20DEB4238()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEE0, &qword_20DF4B448);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20DF47644();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v19 = v3 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  v14 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v15 = *(v0 + v10 + 8);

  v16 = *(v0 + v11 + 8);

  v17 = *(v0 + v12 + 8);

  return MEMORY[0x2821FE8E8](v0, v12 + 17, v19 | 7);
}

uint64_t sub_20DEB4414()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v5 + 24);

  v10 = *(v0 + v5 + 40);

  v11 = *(v0 + v5 + 56);

  return MEMORY[0x2821FE8E8](v0, v5 + 65, v3 | 7);
}

uint64_t sub_20DEB4544()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20DEB4628()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE58, &qword_20DF4B258);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6 + 8);

  v10 = *(v0 + v6 + 24);

  v11 = *(v0 + v6 + 40);

  v12 = *(v0 + v6 + 56);

  return MEMORY[0x2821FE8E8](v0, v6 + 65, v3 | 7);
}

uint64_t sub_20DEB4744()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C988, &qword_20DF4AD10) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 17) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v11 = *(v0 + v5 + 8);

  v12 = sub_20DF474E4();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v8, 1, v12))
  {
    (*(v13 + 8))(v0 + v8, v12);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_20DEB493C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF08, &qword_20DF4B528);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20DEB4B1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF88, &qword_20DF4B790);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20DEB4C0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 17, v3 | 7);
}

uint64_t sub_20DEB4D28()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20DEB4D74()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20DEB4DAC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20DEB4DE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D010, &qword_20DF4BBF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v6 + 10, v3 | 7);
}

uint64_t sub_20DEB4EE0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20DEB4F18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D010, &qword_20DF4BBF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 42) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20DEB4FF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20DEB5028()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D010, &qword_20DF4BBF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 66) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 6);

  v9 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20DEB5110()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D010, &qword_20DF4BBF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_20DF47564();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = *(v7 + 64) + v9;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 2, v10 | 7);
}

uint64_t sub_20DEB5284()
{
  v1 = sub_20DF47564();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D010, &qword_20DF4BBF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = *(v7 + 64) + v9;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 2, v10 | 7);
}

uint64_t sub_20DEB53E4()
{
  v1 = sub_20DF47564();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D010, &qword_20DF4BBF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v14 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 10, v10 | 7);
}

uint64_t sub_20DEB5564()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE90, &qword_20DF4B340);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20DEB563C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE90, &qword_20DF4B340);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20DEB570C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5);

  v11 = *(v0 + v6 + 8);

  v12 = *(v0 + v7 + 8);

  v13 = *(v0 + v8 + 8);

  return MEMORY[0x2821FE8E8](v0, ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_20DEB584C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (((v6 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v11 = *(v0 + v5);

  v12 = *(v0 + v6 + 8);

  v13 = *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  v14 = *(v0 + v8 + 8);

  return MEMORY[0x2821FE8E8](v0, v9 + 9, v3 | 7);
}

uint64_t sub_20DEB59B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_20DEB5AB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20DEB5B4C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20DEB5B8C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_20DEB5C38(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20DF47564();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_20DF474E4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[8] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[15];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_20DEB5DBC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_20DF47564();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_20DF474E4();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[15];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_20DEB6040@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_20DEB6090@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t getEnumTagSinglePayload for EKSandboxExtension.State(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for EKSandboxExtension.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_20DEB61A0(uint64_t a1)
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

uint64_t sub_20DEB61BC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_20DEB6214()
{
  result = qword_27C84C780;
  if (!qword_27C84C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84C780);
  }

  return result;
}

unint64_t sub_20DEB626C()
{
  result = qword_27C84C788;
  if (!qword_27C84C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84C788);
  }

  return result;
}

unint64_t sub_20DEB6370()
{
  result = qword_27C84C790;
  if (!qword_27C84C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84C790);
  }

  return result;
}

uint64_t sub_20DEB63C4()
{
  v1 = *v0;
  sub_20DF48494();
  MEMORY[0x20F329080](v1);
  return sub_20DF484D4();
}

uint64_t sub_20DEB6438()
{
  v1 = *v0;
  sub_20DF48494();
  MEMORY[0x20F329080](v1);
  return sub_20DF484D4();
}

unint64_t sub_20DEB6480()
{
  result = qword_27C84C798;
  if (!qword_27C84C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84C798);
  }

  return result;
}

BOOL sub_20DEB6510(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_20DEB6540@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_20DEB656C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_20DEB6644@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for GuidanceOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GuidanceOptions(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_20DEB66D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20DEB66F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CLLocationCoordinate2D()
{
  if (!qword_27C84C800)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27C84C800);
    }
  }
}

uint64_t Guidance.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20DF47564();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Guidance.siteID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Guidance() + 20);
  v4 = sub_20DF47564();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Guidance()
{
  result = qword_27C84C8A8;
  if (!qword_27C84C8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Guidance.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Guidance();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t Guidance.interval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Guidance() + 28);
  v4 = sub_20DF473B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Guidance.values.getter()
{
  v1 = *(v0 + *(type metadata accessor for Guidance() + 32));
}

uint64_t Guidance.options.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for Guidance();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t Guidance.init(hsgf:siteID:token:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a2;
  v59 = a1;
  v57 = a5;
  v7 = type metadata accessor for GuidanceValue();
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = *(v62 + 64);
  (MEMORY[0x28223BE20])();
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_20DF47674();
  v51 = *(v61 - 8);
  v11 = *(v51 + 64);
  (MEMORY[0x28223BE20])();
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20DF47644();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = (MEMORY[0x28223BE20])();
  v60 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v51 - v19;
  v55 = *a4;
  v21 = sub_20DF47564();
  v52 = *(v21 - 8);
  v22 = *(v52 + 16);
  v23 = v57;
  v56 = a3;
  v22(v57, a3, v21);
  v24 = type metadata accessor for Guidance();
  v25 = v23 + v24[5];
  v54 = v21;
  v22(v25, v58, v21);
  sub_20DF47684();
  v26 = v60;
  (*(v15 + 104))(v60, *MEMORY[0x277D17EF0], v14);
  sub_20DEB8D18(&qword_27C84C808, MEMORY[0x277D17EF8]);
  sub_20DF47DD4();
  sub_20DF47DD4();
  v27 = *(v15 + 8);
  v27(v26, v14);
  v27(v20, v14);
  *(v23 + v24[6]) = v65 == v64;
  v53 = v24;
  v28 = v59;
  v29 = v23 + v24[7];
  sub_20DF476A4();
  v30 = sub_20DF47694();
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = v51 + 16;
    v60 = *(v51 + 16);
    v33 = *(v51 + 80);
    v51 = v30;
    v34 = v30 + ((v33 + 32) & ~v33);
    v35 = *(v32 + 56);
    v36 = (v32 - 8);
    v37 = MEMORY[0x277D84F90];
    v38 = v32;
    do
    {
      v39 = v61;
      v40 = v38;
      v41 = (v60)(v13, v34, v61);
      MEMORY[0x20F328240](v41);
      sub_20DF47654();
      v43 = v42;
      (*v36)(v13, v39);
      *&v10[*(v63 + 20)] = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_20DEB84DC(0, v37[2] + 1, 1, v37, &qword_27C84C908, &qword_20DF49770, type metadata accessor for GuidanceValue);
      }

      v45 = v37[2];
      v44 = v37[3];
      if (v45 >= v44 >> 1)
      {
        v37 = sub_20DEB84DC(v44 > 1, v45 + 1, 1, v37, &qword_27C84C908, &qword_20DF49770, type metadata accessor for GuidanceValue);
      }

      v37[2] = v45 + 1;
      sub_20DEB81D0(v10, v37 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v45);
      v34 += v35;
      --v31;
      v38 = v40;
    }

    while (v31);

    v23 = v57;
    v28 = v59;
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  v46 = *(v52 + 8);
  v47 = v54;
  v46(v56, v54);
  v46(v58, v47);
  v48 = sub_20DF476B4();
  result = (*(*(v48 - 8) + 8))(v28, v48);
  v50 = v53;
  *(v23 + v53[8]) = v37;
  *(v23 + v50[9]) = v55;
  return result;
}

uint64_t sub_20DEB6F4C()
{
  v1 = *v0;
  sub_20DF48494();
  MEMORY[0x20F329080](v1);
  return sub_20DF484D4();
}

uint64_t sub_20DEB6F94()
{
  v1 = *v0;
  sub_20DF48494();
  MEMORY[0x20F329080](v1);
  return sub_20DF484D4();
}

uint64_t sub_20DEB6FD8()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6C61767265746E69;
  v4 = 0x7365756C6176;
  if (v1 != 4)
  {
    v4 = 0x736E6F6974706FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x444965746973;
  if (v1 != 1)
  {
    v5 = 1701869940;
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

uint64_t sub_20DEB7088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DEB90FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DEB70C8(uint64_t a1)
{
  v2 = sub_20DEB89FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DEB7104(uint64_t a1)
{
  v2 = sub_20DEB89FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Guidance.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C810, &qword_20DF49500);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DEB89FC();
  sub_20DF484F4();
  LOBYTE(v16) = 0;
  sub_20DF47564();
  sub_20DEB8D18(&qword_27C84C820, MEMORY[0x277CC95F0]);
  sub_20DF48384();
  if (!v2)
  {
    v11 = type metadata accessor for Guidance();
    v12 = v11[5];
    LOBYTE(v16) = 1;
    sub_20DF48384();
    LOBYTE(v16) = *(v3 + v11[6]);
    v17 = 2;
    sub_20DEB8A50();
    sub_20DF48384();
    v13 = v11[7];
    LOBYTE(v16) = 3;
    sub_20DF473B4();
    sub_20DEB8D18(&qword_27C84C830, MEMORY[0x277CC88A8]);
    sub_20DF48384();
    v16 = *(v3 + v11[8]);
    v17 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C838, &qword_20DF49508);
    sub_20DEB8BE0(&qword_27C84C840, &qword_27C84C848);
    sub_20DF48384();
    v16 = *(v3 + v11[9]);
    v17 = 5;
    sub_20DEB8AEC();
    sub_20DF48384();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Guidance.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_20DF47564();
  sub_20DEB8D18(&qword_27C84C858, MEMORY[0x277CC95F0]);
  sub_20DF47CA4();
  v4 = type metadata accessor for Guidance();
  v5 = v1 + v4[5];
  sub_20DF47CA4();
  v6 = *(v2 + v4[6]);
  sub_20DF484B4();
  v7 = v4[7];
  sub_20DF473B4();
  sub_20DEB8D18(&qword_27C84C860, MEMORY[0x277CC88A8]);
  sub_20DF47CA4();
  sub_20DEB86B8(a1, *(v2 + v4[8]));
  return MEMORY[0x20F329080](*(v2 + v4[9]));
}

uint64_t Guidance.hashValue.getter()
{
  v1 = v0;
  sub_20DF48494();
  sub_20DF47564();
  sub_20DEB8D18(&qword_27C84C858, MEMORY[0x277CC95F0]);
  sub_20DF47CA4();
  v2 = type metadata accessor for Guidance();
  v3 = v0 + v2[5];
  sub_20DF47CA4();
  v4 = *(v1 + v2[6]);
  sub_20DF484B4();
  v5 = v2[7];
  sub_20DF473B4();
  sub_20DEB8D18(&qword_27C84C860, MEMORY[0x277CC88A8]);
  sub_20DF47CA4();
  sub_20DEB86B8(v7, *(v1 + v2[8]));
  MEMORY[0x20F329080](*(v1 + v2[9]));
  return sub_20DF484D4();
}

uint64_t Guidance.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_20DF473B4();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20DF47564();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v33 = &v27 - v11;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C868, &qword_20DF49510);
  v34 = *(v36 - 8);
  v12 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v14 = &v27 - v13;
  v15 = type metadata accessor for Guidance();
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DEB89FC();
  v35 = v14;
  v20 = v37;
  sub_20DF484E4();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v18;
  LOBYTE(v38) = 0;
  sub_20DEB8D18(&qword_27C84C870, MEMORY[0x277CC95F0]);
  v21 = v33;
  sub_20DF482E4();
  v33 = *(v32 + 32);
  (v33)(v37, v21, v6);
  LOBYTE(v38) = 1;
  v22 = v10;
  sub_20DF482E4();
  v23 = v37;
  (v33)(&v37[v15[5]], v22, v6);
  v39 = 2;
  sub_20DEB8B8C();
  v33 = 0;
  sub_20DF482E4();
  v24 = v34;
  *(v23 + v15[6]) = v38;
  LOBYTE(v38) = 3;
  sub_20DEB8D18(&qword_27C84C880, MEMORY[0x277CC88A8]);
  v25 = v31;
  sub_20DF482E4();
  (*(v30 + 32))(v23 + v15[7], v29, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C838, &qword_20DF49508);
  v39 = 4;
  sub_20DEB8BE0(&qword_27C84C888, &qword_27C84C890);
  sub_20DF482E4();
  *(v23 + v15[8]) = v38;
  v39 = 5;
  sub_20DEB8C7C();
  sub_20DF482E4();
  (*(v24 + 8))(v35, v36);
  *(v23 + v15[9]) = v38;
  sub_20DEB92FC(v23, v28, type metadata accessor for Guidance);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_20DEB9364(v23, type metadata accessor for Guidance);
}

uint64_t sub_20DEB7E20(int *a1)
{
  v3 = v1;
  sub_20DF48494();
  sub_20DF47564();
  sub_20DEB8D18(&qword_27C84C858, MEMORY[0x277CC95F0]);
  sub_20DF47CA4();
  v4 = v1 + a1[5];
  sub_20DF47CA4();
  v5 = *(v3 + a1[6]);
  sub_20DF484B4();
  v6 = a1[7];
  sub_20DF473B4();
  sub_20DEB8D18(&qword_27C84C860, MEMORY[0x277CC88A8]);
  sub_20DF47CA4();
  sub_20DEB86B8(v8, *(v3 + a1[8]));
  MEMORY[0x20F329080](*(v3 + a1[9]));
  return sub_20DF484D4();
}

uint64_t sub_20DEB7F64(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_20DF47564();
  sub_20DEB8D18(&qword_27C84C858, MEMORY[0x277CC95F0]);
  sub_20DF47CA4();
  v6 = v2 + a2[5];
  sub_20DF47CA4();
  v7 = *(v4 + a2[6]);
  sub_20DF484B4();
  v8 = a2[7];
  sub_20DF473B4();
  sub_20DEB8D18(&qword_27C84C860, MEMORY[0x277CC88A8]);
  sub_20DF47CA4();
  sub_20DEB86B8(a1, *(v4 + a2[8]));
  return MEMORY[0x20F329080](*(v4 + a2[9]));
}

uint64_t sub_20DEB8090(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_20DF48494();
  sub_20DF47564();
  sub_20DEB8D18(&qword_27C84C858, MEMORY[0x277CC95F0]);
  sub_20DF47CA4();
  v5 = v2 + a2[5];
  sub_20DF47CA4();
  v6 = *(v4 + a2[6]);
  sub_20DF484B4();
  v7 = a2[7];
  sub_20DF473B4();
  sub_20DEB8D18(&qword_27C84C860, MEMORY[0x277CC88A8]);
  sub_20DF47CA4();
  sub_20DEB86B8(v9, *(v4 + a2[8]));
  MEMORY[0x20F329080](*(v4 + a2[9]));
  return sub_20DF484D4();
}

uint64_t sub_20DEB81D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GuidanceValue();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_20DEB8234(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C8F8, &qword_20DF49760);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_20DEB8338(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C8D8, &qword_20DF49740);
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

size_t sub_20DEB84DC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

uint64_t sub_20DEB86B8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GuidanceValue();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x20F329080](v8);
  if (v8)
  {
    v10 = *(v3 + 20);
    v11 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_20DEB92FC(v11, v7, type metadata accessor for GuidanceValue);
      sub_20DF473B4();
      sub_20DEB8D18(&qword_27C84C860, MEMORY[0x277CC88A8]);
      sub_20DF47CA4();
      v13 = *&v7[v10];
      if (v13 == 0.0)
      {
        v13 = 0.0;
      }

      MEMORY[0x20F3290A0](*&v13);
      result = sub_20DEB9364(v7, type metadata accessor for GuidanceValue);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_20DEB885C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x20F329080](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 == 0.0)
      {
        v7 = 0.0;
      }

      result = MEMORY[0x20F3290A0](*&v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL _s17EnergyKitInternal8GuidanceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_20DF47534() & 1) != 0 && (v4 = type metadata accessor for Guidance(), v5 = v4[5], (sub_20DF47534()) && *(a1 + v4[6]) == *(a2 + v4[6]) && (v6 = v4[7], (sub_20DF47394()) && (sub_20DEE07F4(*(a1 + v4[8]), *(a2 + v4[8])))
  {
    return *(a1 + v4[9]) == *(a2 + v4[9]);
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
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

unint64_t sub_20DEB89FC()
{
  result = qword_27C84C818;
  if (!qword_27C84C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84C818);
  }

  return result;
}

unint64_t sub_20DEB8A50()
{
  result = qword_27C84C828;
  if (!qword_27C84C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84C828);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_20DEB8AEC()
{
  result = qword_27C84C850;
  if (!qword_27C84C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84C850);
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

unint64_t sub_20DEB8B8C()
{
  result = qword_27C84C878;
  if (!qword_27C84C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84C878);
  }

  return result;
}

uint64_t sub_20DEB8BE0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C84C838, &qword_20DF49508);
    sub_20DEB8D18(a2, type metadata accessor for GuidanceValue);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20DEB8C7C()
{
  result = qword_27C84C898;
  if (!qword_27C84C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84C898);
  }

  return result;
}

uint64_t sub_20DEB8D18(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20DEB8D88()
{
  sub_20DF47564();
  if (v0 <= 0x3F)
  {
    sub_20DF473B4();
    if (v1 <= 0x3F)
    {
      sub_20DEB8E3C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20DEB8E3C()
{
  if (!qword_27C84C8B8)
  {
    type metadata accessor for GuidanceValue();
    v0 = sub_20DF47EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C84C8B8);
    }
  }
}

uint64_t getEnumTagSinglePayload for Guidance.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Guidance.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20DEB8FF8()
{
  result = qword_27C84C8C0;
  if (!qword_27C84C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84C8C0);
  }

  return result;
}

unint64_t sub_20DEB9050()
{
  result = qword_27C84C8C8;
  if (!qword_27C84C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84C8C8);
  }

  return result;
}

unint64_t sub_20DEB90A8()
{
  result = qword_27C84C8D0;
  if (!qword_27C84C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84C8D0);
  }

  return result;
}

uint64_t sub_20DEB90FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_20DF483D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444965746973 && a2 == 0xE600000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_20DF483D4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_20DEB92FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20DEB9364(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20DEB93E4()
{
  v1 = v0[2];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  sub_20DF3C9D8();

  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_20DEB94F8;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_20DEB94F8()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_20DEB962C;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_20DEB9614;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DEB962C()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_20DEB9690(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = sub_20DF47B14();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v21 - v14;
  v16 = sub_20DF47F04();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v8 + 16))(v11, a1, v7);
  (*(v4 + 16))(v6, v22, v3);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = (v9 + *(v4 + 80) + v17) & ~*(v4 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  (*(v8 + 32))(v19 + v17, v11, v7);
  (*(v4 + 32))(v19 + v18, v6, v3);
  sub_20DEBB534(0, 0, v15, &unk_20DF497A0, v19);
}

uint64_t sub_20DEB9944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v5[22] = *(v7 + 64);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEB9A18, 0, 0);
}

uint64_t sub_20DEB9A18()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[24] = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v6, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v1, v3);
  v9 = sub_20DF3D598(sub_20DEBA260, v8);
  v0[25] = v9;

  v10 = sub_20DF47B04();
  v0[2] = v0;
  v0[3] = sub_20DEB9C10;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C920, &qword_20DF4B250);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF2B4C4;
  v0[13] = &block_descriptor;
  v0[14] = v11;
  [v9 setMockOptionsWithOptions:v10 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEB9C10()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DEB9CF0, 0, 0);
}

uint64_t sub_20DEB9CF0()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[18];
  swift_unknownObjectRelease();
  [*(v2 + 16) invalidate];
  sub_20DF47EE4();

  v6 = v0[1];

  return v6();
}

uint64_t sub_20DEB9D8C(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27C851F48);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22[1] = a1;
    v23 = v15;
    *v14 = 136315138;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to submit test task. %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  return sub_20DF47ED4();
}

uint64_t sub_20DEBA010(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20DF47B14() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20DEBA16C;

  return sub_20DEB9944(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_20DEBA16C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20DEBA260(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20DEB9D8C(a1, v4);
}

uint64_t sub_20DEBA2EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t EnergySite.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_20DF479B4();

  return v2;
}

uint64_t EnergySite.name.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_20DF479E4();

  return v2;
}

void sub_20DEBA418(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = sub_20DF479E4();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_20DEBA464(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a2 + 16);

  v5 = v4;
  sub_20DF479F4();
}

void EnergySite.name.setter()
{
  v1 = *(v0 + 16);
  sub_20DF479F4();
}

void (*EnergySite.name.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 16);
  v4 = sub_20DF479E4();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  return sub_20DEBA5A4;
}

void sub_20DEBA5A4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  v6 = *(a1[2] + 16);
  if (a2)
  {

    v4 = v6;
    sub_20DF479F4();
  }

  else
  {
    v5 = v6;
    sub_20DF479F4();
  }
}

void *EnergySite.location.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_20DF479D4();

  if (v2)
  {
    [v2 coordinate];
    if (!CLLocationCoordinate2DIsValid(v4))
    {

      return 0;
    }
  }

  return v2;
}

uint64_t EnergySite.timeZone.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_20DF47A04();

  return v2;
}

uint64_t sub_20DEBA700()
{
  v1 = *(v0[4] + 16);
  v2 = sub_20DF479D4();
  v0[5] = v2;

  if (v2)
  {
    [v2 coordinate];
    if (CLLocationCoordinate2DIsValid(v14))
    {
      if (qword_281122950 != -1)
      {
        swift_once();
      }

      [v2 coordinate];
      v4 = v3;
      v6 = v5;
      v7 = swift_task_alloc();
      v0[6] = v7;
      *(v7 + 16) = v4;
      *(v7 + 24) = v6;
      v8 = *(MEMORY[0x277D85A40] + 4);
      v9 = swift_task_alloc();
      v0[7] = v9;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C930, qword_20DF4AFB0);
      *v9 = v0;
      v9[1] = sub_20DEBA8D4;

      return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000010, 0x800000020DF4E7D0, sub_20DEBB23C, v7, v10);
    }
  }

  v11 = v0[1];

  return v11(0, 0);
}

uint64_t sub_20DEBA8D4()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  v5 = *(v2 + 48);
  if (v0)
  {

    v6 = sub_20DEBAA88;
  }

  else
  {

    v6 = sub_20DEBAA1C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20DEBAA1C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_20DEBAA88()
{
  v1 = *(v0 + 8);

  return v1(0, 0);
}

uint64_t EnergySite.ckZoneName.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_20DF47854();

  return v2;
}

BOOL EnergySite.cloudkitEnabled.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_20DF47854();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  return v5 != 0;
}

uint64_t EnergySite.utilitySubscriptionID.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_20DF478C4();
  v4 = v3;

  if (v4)
  {
    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (!v5)
    {

      return 0;
    }
  }

  return v2;
}

BOOL EnergySite.utilityOnboarded.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_20DF478C4();
  v4 = v3;

  if (!v4)
  {
    return 0;
  }

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  return v5 != 0;
}

uint64_t EnergySite.subscriptionErrorState.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_20DF47994();

  return v2;
}

uint64_t EnergySite.subscriptionState.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_20DF47994();

  return v2;
}

void EnergySite.accessTokenExpirationDate.getter()
{
  v1 = *(v0 + 16);
  sub_20DF47964();
}

uint64_t EnergySite.accessToken.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_20DF47864();

  return v2;
}

uint64_t EnergySite.refreshToken.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_20DF47894();

  return v2;
}

uint64_t EnergySite.ckFunctionToken.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_20DF478D4();

  return v2;
}

uint64_t EnergySite.accountName.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_20DF47874();

  return v2;
}

uint64_t EnergySite.accountNumber.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_20DF478A4();

  return v2;
}

uint64_t EnergySite.serviceAddress.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_20DF479C4();

  return v2;
}

uint64_t EnergySite.serviceLocationID.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_20DF47904();

  return v2;
}

uint64_t EnergySite.utilityID.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_20DF47A14();

  return v2;
}

uint64_t EnergySite.alternateSupplier.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_20DF478F4();

  return v2;
}

void EnergySite.utilitySupportedCheckDate.getter()
{
  v1 = *(v0 + 16);
  sub_20DF47984();
}

uint64_t EnergySite.hasExportedEnergy.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_20DF47844();

  return v2 & 1;
}

void EnergySite.subscriptionCreationDate.getter()
{
  v1 = *(v0 + 16);
  sub_20DF47954();
}

void EnergySite.subscriptionStartDate.getter()
{
  v1 = *(v0 + 16);
  sub_20DF47944();
}

void EnergySite.siteTombstone.getter()
{
  v1 = *(v0 + 16);
  sub_20DF478B4();
}

uint64_t EnergySite.siteVersion.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_20DF47884();

  return v2;
}

BOOL EnergySite.includesRatePlanInGuidance.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_20DF47974();

  return (v2 & 0x1FFFFFFFFLL) != 0xFFFFFFFFLL;
}

void EnergySite.amiLastRefreshDate.getter()
{
  v1 = *(v0 + 16);
  sub_20DF47924();
}

EnergyKitInternal::EnergyFlowDirection_optional __swiftcall EnergyFlowDirection.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_20DEBB278()
{
  result = qword_27C84C938;
  if (!qword_27C84C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84C938);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EnergyFlowDirection(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EnergyFlowDirection(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20DEBB4E0()
{
  result = qword_27C84C940;
  if (!qword_27C84C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84C940);
  }

  return result;
}

uint64_t sub_20DEBB534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_20DED8804(a3, v27 - v11, &qword_27C84C918, &qword_20DF49EE0);
  v13 = sub_20DF47F04();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_20DED8730(v12, &qword_27C84C918, &qword_20DF49EE0);
  }

  else
  {
    sub_20DF47EF4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_20DF47EC4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_20DF47D44() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_20DED8730(a3, &qword_27C84C918, &qword_20DF49EE0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20DED8730(a3, &qword_27C84C918, &qword_20DF49EE0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_20DEBB840()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 56);
  return result;
}

uint64_t sub_20DEBB87C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_20DEBB8DC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 56);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_20DEBB970;
}

void sub_20DEBB970(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 56) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t EnergySite.__allocating_init(siteID:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20DEBBAA8;

  return (sub_20DED49C4)(a1, a2);
}

uint64_t sub_20DEBBAA8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t EnergySite.__allocating_init(clientProvidedID:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_20DF47564();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEBBC64, 0, 0);
}

uint64_t sub_20DEBBC64()
{
  v1 = v0[3];
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];
    v6 = v0[3];
    sub_20DF47D34();

    sub_20DF47A24();
    sub_20DF47914();
    sub_20DF474F4();
    v7 = sub_20DF47514();
    v9 = v8;
    (*(v4 + 8))(v3, v5);
    v10 = swift_task_alloc();
    v0[7] = v10;
    *v10 = v0;
    v10[1] = sub_20DEBBDF8;

    return (sub_20DED49C4)(v7, v9);
  }

  else
  {
    v12 = v0[3];

    v13 = v0[6];

    v14 = v0[1];

    return v14(0);
  }
}

uint64_t sub_20DEBBDF8(uint64_t a1)
{
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_20DEBBF08, 0, 0);
}

uint64_t sub_20DEBBF08()
{
  if (v0[8])
  {

    v1 = v0[8];
  }

  else
  {
    v1 = 0;
  }

  v2 = v0[6];

  v3 = v0[1];

  return v3(v1);
}

uint64_t static EnergySite.generateSiteID(clientID:)()
{
  v0 = sub_20DF47564();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DF47D34();
  sub_20DF47A24();
  sub_20DF47914();
  sub_20DF474F4();
  v5 = sub_20DF47514();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_20DEBC0A0(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_20DF47BD4();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEBC16C, 0, 0);
}

uint64_t sub_20DEBC16C()
{
  v53 = v0;
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v1 = v0[5].i64[1];
  v2 = v0[4].i64[0];
  v3 = v0[4].i64[1];
  v4 = v0[3].i64[0];
  v5 = v0[3].i64[1];
  v6 = __swift_project_value_buffer(v2, qword_281122F18);
  swift_beginAccess();
  v7 = *(v3 + 16);
  v7(v1, v6, v2);

  v8 = v4;
  v9 = sub_20DF47BB4();
  v10 = sub_20DF47FE4();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[5].i64[1];
  v14 = v0[4].i64[0];
  v13 = v0[4].i64[1];
  if (v11)
  {
    v49 = v0[5].i64[1];
    v51 = v6;
    v16 = v0[3].i64[0];
    v15 = v0[3].i64[1];
    v17 = swift_slowAlloc();
    v50 = v7;
    v18 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v52 = v47;
    *v17 = 136315394;
    v19 = *(v15 + 16);
    v48 = v14;
    v20 = sub_20DF479E4();
    v22 = v21;

    v23 = sub_20DED38E8(v20, v22, &v52);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v16;
    *v18 = v16;
    v24 = v16;
    v6 = v51;
    _os_log_impl(&dword_20DEAF000, v9, v10, "update location for site %s to %@", v17, 0x16u);
    sub_20DED8730(v18, &qword_27C84C948, qword_20DF49940);
    v25 = v18;
    v7 = v50;
    MEMORY[0x20F329700](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x20F329700](v47, -1, -1);
    MEMORY[0x20F329700](v17, -1, -1);

    v26 = *(v13 + 8);
    v26(v49, v48);
  }

  else
  {

    v26 = *(v13 + 8);
    v26(v12, v14);
  }

  v27 = *(v0[3].i64[1] + 16);
  v28 = sub_20DF479B4();
  v30 = v29;

  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
    v32 = swift_task_alloc();
    v0[6].i64[0] = v32;
    v32[1] = vextq_s8(v0[3], v0[3], 8uLL);
    v33 = *(MEMORY[0x277D85A40] + 4);
    v34 = swift_task_alloc();
    v0[6].i64[1] = v34;
    v35 = sub_20DF47A24();
    *v34 = v0;
    v34[1] = sub_20DEBC600;

    return MEMORY[0x2822008A0](&v0[2].u64[1], 0, 0, 0xD000000000000012, 0x800000020DF4E7F0, sub_20DED4D64, v32, v35);
  }

  else
  {
    v7(v0[5].i64[0], v6, v0[4].i64[0]);
    v36 = sub_20DF47BB4();
    v37 = sub_20DF47FF4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_20DEAF000, v36, v37, "Failed to update location. Site ID is empty.", v38, 2u);
      MEMORY[0x20F329700](v38, -1, -1);
    }

    v40 = v0[4].i64[1];
    v39 = v0[5].i64[0];
    v41 = v0[4].i64[0];

    v26(v39, v41);
    sub_20DED4D6C();
    swift_allocError();
    *v42 = 28;
    swift_willThrow();
    v44 = v0[5].i64[0];
    v43 = v0[5].i64[1];

    v45 = v0->i64[1];

    return v45();
  }
}

uint64_t sub_20DEBC600()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_20DEBC7A0;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_20DEBC71C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DEBC71C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  v4 = *(v3 + 16);
  *(v3 + 16) = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_20DEBC7A0()
{
  v1 = v0[12];

  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_20DEBC814(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_20DF47F04();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  (*(v7 + 32))(v18 + v16, v10, v6);
  *(v18 + v17) = a2;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;

  v19 = a3;
  sub_20DEBB534(0, 0, v14, &unk_20DF4A0A0, v18);
}

uint64_t sub_20DEBCA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[21] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  v6[24] = v7;
  v8 = *(v7 - 8);
  v6[25] = v8;
  v6[26] = *(v8 + 64);
  v6[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEBCB00, 0, 0);
}

uint64_t sub_20DEBCB00()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v14 = v0[23];
  v6 = v0[21];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[28] = sub_20DF3C9D8();
  (*(v3 + 16))(v1, v6, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v4);
  v9 = sub_20DF3D598(sub_20DEDA920, v8);
  v0[29] = v9;

  v10 = *(v5 + 16);
  sub_20DF479B4();

  v11 = sub_20DF47D04();
  v0[30] = v11;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DEBCD38;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA70, &unk_20DF4AC20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEE5F98;
  v0[13] = &block_descriptor_298;
  v0[14] = v12;
  [v9 updateLocationWithSiteID:v11 location:v14 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEBCD38()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_20DEBCEFC;
  }

  else
  {
    v3 = sub_20DEBCE48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DEBCE48()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  v4 = v0[24];
  v5 = v0[21];
  v6 = v0[18];
  swift_unknownObjectRelease();

  [*(v3 + 16) invalidate];
  v0[20] = v6;
  sub_20DF47EE4();

  v7 = v0[27];

  v8 = v0[1];

  return v8();
}

uint64_t sub_20DEBCEFC()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[24];
  v6 = v0[21];
  swift_willThrow();

  swift_unknownObjectRelease();

  v0[19] = v1;
  sub_20DF47ED4();
  v7 = v0[27];

  v8 = v0[1];

  return v8();
}

uint64_t sub_20DEBCFB0(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20DED38E8(0xD000000000000012, 0x800000020DF4E7F0, &v23);
    *(v14 + 12) = 2080;
    v22[1] = a1;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "%s error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  return sub_20DF47ED4();
}

uint64_t sub_20DEBD26C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_20DF47BD4();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEBD33C, 0, 0);
}

uint64_t sub_20DEBD33C()
{
  v55 = v0;
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  v7 = *(v2 + 16);
  v7(v1, v6, v3);

  v8 = sub_20DF47BB4();
  v9 = sub_20DF47FE4();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[12];
  v12 = v0[9];
  v13 = v0[10];
  if (v10)
  {
    v51 = v0[12];
    v14 = v0[8];
    v48 = v0[6];
    v49 = v0[7];
    v53 = v6;
    v15 = swift_slowAlloc();
    v52 = v7;
    v16 = swift_slowAlloc();
    v54[0] = v16;
    *v15 = 136315394;
    v17 = *(v14 + 16);
    v18 = sub_20DF479E4();
    v50 = v12;
    v20 = v19;

    v21 = sub_20DED38E8(v18, v20, v54);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_20DED38E8(v48, v49, v54);
    _os_log_impl(&dword_20DEAF000, v8, v9, "update time zone for site %s to %s", v15, 0x16u);
    swift_arrayDestroy();
    v22 = v16;
    v7 = v52;
    MEMORY[0x20F329700](v22, -1, -1);
    v23 = v15;
    v6 = v53;
    MEMORY[0x20F329700](v23, -1, -1);

    v24 = *(v13 + 8);
    v24(v51, v50);
  }

  else
  {

    v24 = *(v13 + 8);
    v24(v11, v12);
  }

  v25 = *(v0[8] + 16);
  v26 = sub_20DF479B4();
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    v31 = v0[7];
    v30 = v0[8];
    v32 = v0[6];
    v33 = swift_task_alloc();
    v0[13] = v33;
    v33[2] = v30;
    v33[3] = v32;
    v33[4] = v31;
    v34 = *(MEMORY[0x277D85A40] + 4);
    v35 = swift_task_alloc();
    v0[14] = v35;
    v36 = sub_20DF47A24();
    *v35 = v0;
    v35[1] = sub_20DEBD7B0;

    return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD000000000000012, 0x800000020DF4E810, sub_20DED4DC0, v33, v36);
  }

  else
  {
    v7(v0[11], v6, v0[9]);
    v37 = sub_20DF47BB4();
    v38 = sub_20DF47FF4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_20DEAF000, v37, v38, "Failed to update timezone. Site ID is empty.", v39, 2u);
      MEMORY[0x20F329700](v39, -1, -1);
    }

    v41 = v0[10];
    v40 = v0[11];
    v42 = v0[9];

    v24(v40, v42);
    sub_20DED4D6C();
    swift_allocError();
    *v43 = 28;
    swift_willThrow();
    v45 = v0[11];
    v44 = v0[12];

    v46 = v0[1];

    return v46();
  }
}

uint64_t sub_20DEBD7B0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_20DEBD950;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_20DEBD8CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DEBD8CC()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  v4 = *(v3 + 16);
  *(v3 + 16) = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_20DEBD950()
{
  v1 = v0[13];

  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];

  v5 = v0[1];

  return v5();
}

uint64_t sub_20DEBD9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEBDA9C, 0, 0);
}

uint64_t sub_20DEBDA9C()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v15 = v0[23];
  v16 = v0[24];
  v5 = v0[21];
  v6 = v0[22];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[29] = sub_20DF3C9D8();
  (*(v3 + 16))(v2, v5, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v2, v4);
  v9 = sub_20DF3D598(sub_20DEDA6AC, v8);
  v0[30] = v9;

  v10 = *(v6 + 16);
  sub_20DF479B4();

  v11 = sub_20DF47D04();
  v0[31] = v11;

  v12 = sub_20DF47D04();
  v0[32] = v12;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DEBDCE8;
  v13 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA70, &unk_20DF4AC20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEE5F98;
  v0[13] = &block_descriptor_287;
  v0[14] = v13;
  [v9 updateTimezoneWithSiteID:v11 timezone:v12 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEBDCE8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_20DEDA978;
  }

  else
  {
    v3 = sub_20DEDA9C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DEBDDF8(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20DED38E8(0xD000000000000012, 0x800000020DF4E810, &v23);
    *(v14 + 12) = 2080;
    v22[1] = a1;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "%s error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  return sub_20DF47ED4();
}

uint64_t sub_20DEBE0B4(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_20DF47BD4();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEBE178, 0, 0);
}

uint64_t sub_20DEBE178()
{
  v1 = *(v0[8] + 16);
  v2 = sub_20DF479B4();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v7 = v0[7];
    v6 = v0[8];
    v8 = v0[6];
    v9 = swift_task_alloc();
    v0[12] = v9;
    v9[2] = v6;
    v9[3] = v8;
    v9[4] = v7;
    v10 = *(MEMORY[0x277D85A40] + 4);
    v11 = swift_task_alloc();
    v0[13] = v11;
    v12 = sub_20DF47A24();
    *v11 = v0;
    v11[1] = sub_20DEBE43C;

    return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0x7453657461647075, 0xEF293A5F28657461, sub_20DED4DFC, v9, v12);
  }

  else
  {
    if (qword_281122988 != -1)
    {
      swift_once();
    }

    v14 = v0[10];
    v13 = v0[11];
    v15 = v0[9];
    v16 = __swift_project_value_buffer(v15, qword_281122F18);
    swift_beginAccess();
    (*(v14 + 16))(v13, v16, v15);
    v17 = sub_20DF47BB4();
    v18 = sub_20DF47FF4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20DEAF000, v17, v18, "Failed to update state. Site ID is empty.", v19, 2u);
      MEMORY[0x20F329700](v19, -1, -1);
    }

    v21 = v0[10];
    v20 = v0[11];
    v22 = v0[9];

    (*(v21 + 8))(v20, v22);
    sub_20DED4D6C();
    swift_allocError();
    *v23 = 28;
    swift_willThrow();
    v24 = v0[11];

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_20DEBE43C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_20DEBE5D4;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_20DEBE558;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DEBE558()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = *(v2 + 16);
  *(v2 + 16) = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_20DEBE5D4()
{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_20DEBE640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a3;
  v25 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v24 - v16;
  v18 = sub_20DF47F04();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v10 + 16))(v13, a1, v9);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  (*(v10 + 32))(v21 + v19, v13, v9);
  *(v21 + v20) = a2;
  v22 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v24;
  v22[1] = a4;

  sub_20DEBB534(0, 0, v17, v25, v21);
}

uint64_t sub_20DEBE858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEBE930, 0, 0);
}

uint64_t sub_20DEBE930()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v15 = v0[23];
  v16 = v0[24];
  v5 = v0[21];
  v6 = v0[22];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[29] = sub_20DF3C9D8();
  (*(v3 + 16))(v2, v5, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v2, v4);
  v9 = sub_20DF3D598(sub_20DEDA444, v8);
  v0[30] = v9;

  v10 = *(v6 + 16);
  sub_20DF479B4();

  v11 = sub_20DF47D04();
  v0[31] = v11;

  v12 = sub_20DF47D04();
  v0[32] = v12;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DEBEB7C;
  v13 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA70, &unk_20DF4AC20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEE5F98;
  v0[13] = &block_descriptor_277;
  v0[14] = v13;
  [v9 updateStateWithSiteID:v11 state:v12 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEBEB7C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_20DEBED44;
  }

  else
  {
    v3 = sub_20DEBEC8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DEBEC8C()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[25];
  v6 = v0[21];
  v7 = v0[18];
  swift_unknownObjectRelease();

  [*(v4 + 16) invalidate];
  v0[20] = v7;
  sub_20DF47EE4();

  v8 = v0[28];

  v9 = v0[1];

  return v9();
}

uint64_t sub_20DEBED44()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  v5 = v0[29];
  v6 = v0[25];
  v7 = v0[21];
  swift_willThrow();

  swift_unknownObjectRelease();

  v0[19] = v1;
  sub_20DF47ED4();
  v8 = v0[28];

  v9 = v0[1];

  return v9();
}

uint64_t sub_20DEBEE08(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20DED38E8(0x7453657461647075, 0xEF293A5F28657461, &v23);
    *(v14 + 12) = 2080;
    v22[1] = a1;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "%s error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  return sub_20DF47ED4();
}

uint64_t sub_20DEBF0CC(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 104) = a1;
  v3 = sub_20DF47BD4();
  *(v2 + 56) = v3;
  v4 = *(v3 - 8);
  *(v2 + 64) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEBF190, 0, 0);
}

uint64_t sub_20DEBF190()
{
  v1 = *(*(v0 + 48) + 16);
  v2 = sub_20DF479B4();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = *(v0 + 48);
    v7 = *(v0 + 104);
    v8 = swift_task_alloc();
    *(v0 + 80) = v8;
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = *(MEMORY[0x277D85A40] + 4);
    v10 = swift_task_alloc();
    *(v0 + 88) = v10;
    v11 = sub_20DF47A24();
    *v10 = v0;
    v10[1] = sub_20DEBF44C;

    return MEMORY[0x2822008A0](v0 + 40, 0, 0, 0xD00000000000002ALL, 0x800000020DF4E830, sub_20DED4E38, v8, v11);
  }

  else
  {
    if (qword_281122988 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 64);
    v12 = *(v0 + 72);
    v14 = *(v0 + 56);
    v15 = __swift_project_value_buffer(v14, qword_281122F18);
    swift_beginAccess();
    (*(v13 + 16))(v12, v15, v14);
    v16 = sub_20DF47BB4();
    v17 = sub_20DF47FF4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20DEAF000, v16, v17, "Failed to update state. Site ID is empty.", v18, 2u);
      MEMORY[0x20F329700](v18, -1, -1);
    }

    v20 = *(v0 + 64);
    v19 = *(v0 + 72);
    v21 = *(v0 + 56);

    (*(v20 + 8))(v19, v21);
    sub_20DED4D6C();
    swift_allocError();
    *v22 = 28;
    swift_willThrow();
    v23 = *(v0 + 72);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_20DEBF44C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_20DEBF5E0;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_20DEBF568;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DEBF568()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = *(v2 + 16);
  *(v2 + 16) = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_20DEBF5E0()
{
  v1 = v0[10];

  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_20DEBF64C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = sub_20DF47F04();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  (*(v7 + 32))(v17 + v16, v10, v6);
  v18 = v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v18 = a2;
  *(v18 + 8) = a3;

  sub_20DEBB534(0, 0, v14, &unk_20DF4A068, v17);
}

uint64_t sub_20DEBF858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 248) = a6;
  *(v6 + 168) = a4;
  *(v6 + 176) = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  *(v6 + 184) = v7;
  v8 = *(v7 - 8);
  *(v6 + 192) = v8;
  *(v6 + 200) = *(v8 + 64);
  *(v6 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEBF930, 0, 0);
}

uint64_t sub_20DEBF930()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v14 = *(v0 + 248);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  *(v0 + 216) = sub_20DF3C9D8();
  (*(v3 + 16))(v1, v5, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v4);
  v9 = sub_20DF3D598(sub_20DEDA2DC, v8);
  *(v0 + 224) = v9;

  v10 = *(v6 + 16);
  sub_20DF479B4();

  v11 = sub_20DF47D04();
  *(v0 + 232) = v11;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_20DEBFB6C;
  v12 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA70, &unk_20DF4AC20);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_20DEE5F98;
  *(v0 + 104) = &block_descriptor_267;
  *(v0 + 112) = v12;
  [v9 updateRatePlanInclusionInGuidanceWithSiteID:v11 toggle:v14 completionHandler:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_20DEBFB6C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_20DEDA9CC;
  }

  else
  {
    v3 = sub_20DEDA9E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DEBFC7C(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20DED38E8(0xD00000000000002ALL, 0x800000020DF4E830, &v23);
    *(v14 + 12) = 2080;
    v22[1] = a1;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "%s error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  return sub_20DF47ED4();
}

uint64_t sub_20DEBFF38(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_20DF47BD4();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEBFFF8, 0, 0);
}

uint64_t sub_20DEBFFF8()
{
  v1 = *(v0[3].i64[1] + 16);
  v2 = sub_20DF479B4();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = swift_task_alloc();
    v0[5].i64[1] = v6;
    v6[1] = vextq_s8(v0[3], v0[3], 8uLL);
    v7 = *(MEMORY[0x277D85A40] + 4);
    v8 = swift_task_alloc();
    v0[6].i64[0] = v8;
    v9 = sub_20DF47A24();
    *v8 = v0;
    v8[1] = sub_20DEC02B0;

    return MEMORY[0x2822008A0](&v0[2].u64[1], 0, 0, 0xD000000000000013, 0x800000020DF4E860, sub_20DED4E44, v6, v9);
  }

  else
  {
    if (qword_281122988 != -1)
    {
      swift_once();
    }

    v11 = v0[4].i64[1];
    v10 = v0[5].i64[0];
    v12 = v0[4].i64[0];
    v13 = __swift_project_value_buffer(v12, qword_281122F18);
    swift_beginAccess();
    (*(v11 + 16))(v10, v13, v12);
    v14 = sub_20DF47BB4();
    v15 = sub_20DF47FF4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20DEAF000, v14, v15, "Failed to update fields. Site ID is empty.", v16, 2u);
      MEMORY[0x20F329700](v16, -1, -1);
    }

    v18 = v0[4].i64[1];
    v17 = v0[5].i64[0];
    v19 = v0[4].i64[0];

    (*(v18 + 8))(v17, v19);
    sub_20DED4D6C();
    swift_allocError();
    *v20 = 28;
    swift_willThrow();
    v21 = v0[5].i64[0];

    v22 = v0->i64[1];

    return v22();
  }
}

uint64_t sub_20DEC02B0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_20DEC0448;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_20DEC03CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DEC03CC()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = *(v2 + 16);
  *(v2 + 16) = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_20DEC0448()
{
  v1 = v0[11];

  v2 = v0[13];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_20DEC04B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = sub_20DF47F04();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  (*(v7 + 32))(v18 + v16, v10, v6);
  *(v18 + v17) = a2;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;

  sub_20DEBB534(0, 0, v14, &unk_20DF4A058, v18);
}

uint64_t sub_20DEC06CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[21] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  v6[24] = v7;
  v8 = *(v7 - 8);
  v6[25] = v8;
  v6[26] = *(v8 + 64);
  v6[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEC07A4, 0, 0);
}

uint64_t sub_20DEC07A4()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[22];
  v15 = v0[23];
  v6 = v0[21];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[28] = sub_20DF3C9D8();
  (*(v4 + 16))(v2, v6, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v2, v3);
  v9 = sub_20DF3D598(sub_20DEDA180, v8);
  v0[29] = v9;

  v10 = *(v5 + 16);
  sub_20DF479B4();

  v11 = sub_20DF47D04();
  v0[30] = v11;

  v12 = sub_20DF47C24();
  v0[31] = v12;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DEC0A0C;
  v13 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA70, &unk_20DF4AC20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEE5F98;
  v0[13] = &block_descriptor_257;
  v0[14] = v13;
  [v9 updateFieldsWithSiteID:v11 from:v12 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEC0A0C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_20DEC0BD4;
  }

  else
  {
    v3 = sub_20DEC0B1C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DEC0B1C()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[24];
  v6 = v0[21];
  v7 = v0[18];
  swift_unknownObjectRelease();

  [*(v4 + 16) invalidate];
  v0[20] = v7;
  sub_20DF47EE4();

  v8 = v0[27];

  v9 = v0[1];

  return v9();
}

uint64_t sub_20DEC0BD4()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[28];
  v6 = v0[24];
  v7 = v0[21];
  swift_willThrow();

  swift_unknownObjectRelease();

  v0[19] = v1;
  sub_20DF47ED4();
  v8 = v0[27];

  v9 = v0[1];

  return v9();
}

uint64_t sub_20DEC0C98(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20DED38E8(0xD000000000000013, 0x800000020DF4E860, &v23);
    *(v14 + 12) = 2080;
    v22[1] = a1;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "%s error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  return sub_20DF47ED4();
}

uint64_t sub_20DEC0F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 208) = v21;
  *(v9 + 216) = v8;
  *(v9 + 176) = v19;
  *(v9 + 192) = v20;
  *(v9 + 144) = v17;
  *(v9 + 160) = v18;
  *(v9 + 112) = v15;
  *(v9 + 128) = v16;
  *(v9 + 96) = a7;
  *(v9 + 104) = a8;
  *(v9 + 80) = a5;
  *(v9 + 88) = a6;
  *(v9 + 64) = a3;
  *(v9 + 72) = a4;
  *(v9 + 48) = a1;
  *(v9 + 56) = a2;
  v10 = sub_20DF47BD4();
  *(v9 + 224) = v10;
  v11 = *(v10 - 8);
  *(v9 + 232) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEC1044, 0, 0);
}

uint64_t sub_20DEC1044()
{
  v1 = *(*(v0 + 216) + 16);
  v2 = sub_20DF479B4();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v7 = *(v0 + 208);
    v6 = *(v0 + 216);
    v8 = swift_task_alloc();
    *(v0 + 248) = v8;
    v10 = *(v0 + 48);
    v9 = *(v0 + 64);
    v12 = *(v0 + 80);
    v11 = *(v0 + 96);
    v14 = *(v0 + 112);
    v13 = *(v0 + 128);
    v16 = *(v0 + 144);
    v15 = *(v0 + 160);
    v18 = *(v0 + 176);
    v17 = *(v0 + 192);
    *(v8 + 16) = v6;
    *(v8 + 24) = v10;
    *(v8 + 40) = v9;
    *(v8 + 56) = v12;
    *(v8 + 72) = v11;
    *(v8 + 88) = v14;
    *(v8 + 104) = v13;
    *(v8 + 120) = v16;
    *(v8 + 136) = v15;
    *(v8 + 152) = v18;
    *(v8 + 168) = v17;
    *(v8 + 184) = v7;
    v19 = *(MEMORY[0x277D85A40] + 4);
    v20 = swift_task_alloc();
    *(v0 + 256) = v20;
    v21 = sub_20DF47A24();
    *v20 = v0;
    v20[1] = sub_20DEC1338;

    return MEMORY[0x2822008A0](v0 + 40, 0, 0, 0xD0000000000000B6, 0x800000020DF4E880, sub_20DED4E4C, v8, v21);
  }

  else
  {
    if (qword_281122988 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 232);
    v22 = *(v0 + 240);
    v24 = *(v0 + 224);
    v25 = __swift_project_value_buffer(v24, qword_281122F18);
    swift_beginAccess();
    (*(v23 + 16))(v22, v25, v24);
    v26 = sub_20DF47BB4();
    v27 = sub_20DF47FF4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_20DEAF000, v26, v27, "Failed to update subscription. Site ID is empty.", v28, 2u);
      MEMORY[0x20F329700](v28, -1, -1);
    }

    v30 = *(v0 + 232);
    v29 = *(v0 + 240);
    v31 = *(v0 + 224);

    (*(v30 + 8))(v29, v31);
    sub_20DED4D6C();
    swift_allocError();
    *v32 = 28;
    swift_willThrow();
    v33 = *(v0 + 240);

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_20DEC1338()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_20DEC14D0;
  }

  else
  {
    v5 = *(v2 + 248);

    v4 = sub_20DEC1454;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DEC1454()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = *(v2 + 16);
  *(v2 + 16) = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_20DEC14D0()
{
  v1 = v0[31];

  v2 = v0[33];
  v3 = v0[30];

  v4 = v0[1];

  return v4();
}

uint64_t sub_20DEC153C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v92 = a7;
  v93 = a8;
  v88 = a5;
  v89 = a6;
  v84 = a3;
  v85 = a4;
  v78 = a2;
  v96 = a21;
  v97 = a22;
  v98 = a18;
  v99 = a20;
  v94 = a17;
  v95 = a19;
  v90 = a15;
  v91 = a16;
  v86 = a13;
  v87 = a14;
  v82 = a11;
  v83 = a12;
  v80 = a9;
  v81 = a10;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C988, &qword_20DF4AD10);
  v77 = *(v24 - 8);
  v25 = *(v77 + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v69 - v26;
  v76 = &v69 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v69 - v31;
  v75 = &v69 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v69 - v35;
  v79 = &v69 - v35;
  v37 = sub_20DF47F04();
  (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
  v38 = v32;
  v39 = v28;
  (*(v29 + 16))(v38, a1, v28);
  sub_20DED8804(a23, v27, &qword_27C84C988, &qword_20DF4AD10);
  v40 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v41 = (v30 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v44 + 23) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 23) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v46 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v70 + 23) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v74 + 23) & 0xFFFFFFFFFFFFFFF8;
  v77 = (*(v77 + 80) + v73 + 16) & ~*(v77 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  (*(v29 + 32))(v47 + v40, v75, v39);
  *(v47 + v41) = v78;
  v48 = (v47 + v42);
  v49 = v85;
  *v48 = v84;
  v48[1] = v49;
  v50 = (v47 + v43);
  v51 = v89;
  *v50 = v88;
  v50[1] = v51;
  v52 = (v47 + v44);
  v53 = v93;
  *v52 = v92;
  v52[1] = v53;
  v54 = (v47 + v45);
  v55 = v81;
  *v54 = v80;
  v54[1] = v55;
  v56 = (v47 + v46);
  v57 = v83;
  *v56 = v82;
  v56[1] = v57;
  v58 = (v47 + v70);
  v59 = v87;
  *v58 = v86;
  v58[1] = v59;
  v60 = (v47 + v71);
  v61 = v91;
  *v60 = v90;
  v60[1] = v61;
  v62 = (v47 + v72);
  v64 = v97;
  v63 = v98;
  *v62 = v94;
  v62[1] = v63;
  v65 = (v47 + v74);
  v66 = v99;
  *v65 = v95;
  v65[1] = v66;
  v67 = (v47 + v73);
  *v67 = v96;
  v67[1] = v64;
  sub_20DED9CE8(v76, v47 + v77, &qword_27C84C988, &qword_20DF4AD10);

  sub_20DEBB534(0, 0, v79, &unk_20DF4A048, v47);
}

uint64_t sub_20DEC1A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 336) = v22;
  *(v8 + 344) = v23;
  *(v8 + 304) = v20;
  *(v8 + 320) = v21;
  *(v8 + 272) = v18;
  *(v8 + 288) = v19;
  *(v8 + 240) = v16;
  *(v8 + 256) = v17;
  *(v8 + 208) = v14;
  *(v8 + 224) = v15;
  *(v8 + 192) = a7;
  *(v8 + 200) = a8;
  *(v8 + 176) = a5;
  *(v8 + 184) = a6;
  *(v8 + 168) = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C988, &qword_20DF4AD10) - 8) + 64) + 15;
  *(v8 + 352) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  *(v8 + 360) = v10;
  v11 = *(v10 - 8);
  *(v8 + 368) = v11;
  *(v8 + 376) = *(v11 + 64);
  *(v8 + 384) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEC1B48, 0, 0);
}

uint64_t sub_20DEC1B48()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[45];
  v4 = v0[46];
  v5 = v0[24];
  v6 = v0[21];
  v7 = v0[22];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[49] = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v6, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v1, v3);
  v46 = sub_20DF3D598(sub_20DEDA020, v9);
  v0[50] = v46;

  v10 = *(v7 + 16);
  sub_20DF479B4();

  v45 = sub_20DF47D04();
  v0[51] = v45;

  if (v5)
  {
    v11 = v0[23];
    v12 = v0[24];
    v13 = sub_20DF47D04();
  }

  else
  {
    v13 = 0;
  }

  v44 = v13;
  v0[52] = v13;
  if (v0[26])
  {
    v14 = v0[25];
    v15 = sub_20DF47D04();
  }

  else
  {
    v15 = 0;
  }

  v43 = v15;
  v0[53] = v15;
  if (v0[28])
  {
    v16 = v0[27];
    v17 = sub_20DF47D04();
  }

  else
  {
    v17 = 0;
  }

  v42 = v17;
  v0[54] = v17;
  if (v0[30])
  {
    v18 = v0[29];
    v19 = sub_20DF47D04();
  }

  else
  {
    v19 = 0;
  }

  v41 = v19;
  v0[55] = v19;
  if (v0[32])
  {
    v20 = v0[31];
    v21 = sub_20DF47D04();
  }

  else
  {
    v21 = 0;
  }

  v40 = v21;
  v0[56] = v21;
  if (v0[34])
  {
    v22 = v0[33];
    v23 = sub_20DF47D04();
  }

  else
  {
    v23 = 0;
  }

  v39 = v23;
  v0[57] = v23;
  if (v0[36])
  {
    v24 = v0[35];
    v25 = sub_20DF47D04();
  }

  else
  {
    v25 = 0;
  }

  v0[58] = v25;
  if (v0[38])
  {
    v26 = v0[37];
    v27 = sub_20DF47D04();
  }

  else
  {
    v27 = 0;
  }

  v0[59] = v27;
  if (v0[40])
  {
    v28 = v0[39];
    v29 = sub_20DF47D04();
  }

  else
  {
    v29 = 0;
  }

  v0[60] = v29;
  if (v0[42])
  {
    v30 = v0[41];
    v31 = sub_20DF47D04();
  }

  else
  {
    v31 = 0;
  }

  v0[61] = v31;
  v32 = v0[44];
  sub_20DED8804(v0[43], v32, &qword_27C84C988, &qword_20DF4AD10);
  v33 = sub_20DF474E4();
  v34 = *(v33 - 8);
  v35 = 0;
  if ((*(v34 + 48))(v32, 1, v33) != 1)
  {
    v36 = v0[44];
    v35 = sub_20DF47464();
    (*(v34 + 8))(v36, v33);
  }

  v0[62] = v35;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DEC1F64;
  v37 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA70, &unk_20DF4AC20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEE5F98;
  v0[13] = &block_descriptor_247;
  v0[14] = v37;
  [v46 updateSubscriptionWithSiteID:v45 utilityID:v44 subscriptionID:v43 accessToken:v42 refreshToken:v41 ckFunctionToken:v40 accountName:v39 accountNumber:v25 address:v27 serviceLocationID:v29 alternateSupplier:v31 accessTokenExpirationDate:v35 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEC1F64()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 504) = v2;
  if (v2)
  {
    v3 = sub_20DEC21A8;
  }

  else
  {
    v3 = sub_20DEC2074;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DEC2074()
{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[59];
  v4 = v0[60];
  v5 = v0[57];
  v6 = v0[58];
  v8 = v0[55];
  v7 = v0[56];
  v15 = v0[54];
  v16 = v0[53];
  v17 = v0[52];
  v18 = v0[51];
  v10 = v0[49];
  v9 = v0[50];
  v20 = v0[21];
  v21 = v0[45];
  v19 = v0[18];
  swift_unknownObjectRelease();

  [*(v10 + 16) invalidate];
  v0[20] = v19;
  sub_20DF47EE4();

  v11 = v0[48];
  v12 = v0[44];

  v13 = v0[1];

  return v13();
}

uint64_t sub_20DEC21A8()
{
  v2 = v0[62];
  v1 = v0[63];
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[58];
  v6 = v0[59];
  v13 = v0[57];
  v14 = v0[56];
  v15 = v0[55];
  v16 = v0[54];
  v17 = v0[53];
  v18 = v0[52];
  v7 = v0[50];
  v8 = v0[49];
  v21 = v0[45];
  v19 = v0[51];
  v20 = v0[21];
  swift_willThrow();

  swift_unknownObjectRelease();

  v0[19] = v1;
  sub_20DF47ED4();
  v9 = v0[48];
  v10 = v0[44];

  v11 = v0[1];

  return v11();
}

uint64_t sub_20DEC22E4(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20DED38E8(0xD0000000000000B6, 0x800000020DF4E880, &v23);
    *(v14 + 12) = 2080;
    v22[1] = a1;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "%s error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  return sub_20DF47ED4();
}

uint64_t sub_20DEC25A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[13] = a8;
  v9[14] = v8;
  v9[11] = a6;
  v9[12] = a7;
  v9[9] = a4;
  v9[10] = a5;
  v9[7] = a2;
  v9[8] = a3;
  v9[6] = a1;
  v10 = sub_20DF47BD4();
  v9[15] = v10;
  v11 = *(v10 - 8);
  v9[16] = v11;
  v12 = *(v11 + 64) + 15;
  v9[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEC2670, 0, 0);
}

uint64_t sub_20DEC2670()
{
  v1 = *(*(v0 + 112) + 16);
  v2 = sub_20DF479B4();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v8 = *(v0 + 80);
    v29 = *(v0 + 64);
    v30 = *(v0 + 88);
    v10 = *(v0 + 48);
    v9 = *(v0 + 56);
    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    *(v11 + 16) = v6;
    *(v11 + 24) = v10;
    *(v11 + 32) = v9;
    *(v11 + 40) = v29;
    *(v11 + 56) = v8;
    *(v11 + 64) = v30;
    *(v11 + 80) = v7;
    v12 = *(MEMORY[0x277D85A40] + 4);
    v13 = swift_task_alloc();
    *(v0 + 152) = v13;
    v14 = sub_20DF47A24();
    *v13 = v0;
    v13[1] = sub_20DEC2960;

    return MEMORY[0x2822008A0](v0 + 40, 0, 0, 0xD000000000000050, 0x800000020DF4E940, sub_20DED4EB0, v11, v14);
  }

  else
  {
    if (qword_281122988 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = *(v0 + 120);
    v18 = __swift_project_value_buffer(v17, qword_281122F18);
    swift_beginAccess();
    (*(v16 + 16))(v15, v18, v17);
    v19 = sub_20DF47BB4();
    v20 = sub_20DF47FF4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20DEAF000, v19, v20, "Failed to create subscription. Site ID is empty.", v21, 2u);
      MEMORY[0x20F329700](v21, -1, -1);
    }

    v23 = *(v0 + 128);
    v22 = *(v0 + 136);
    v24 = *(v0 + 120);

    (*(v23 + 8))(v22, v24);
    sub_20DED4D6C();
    swift_allocError();
    *v25 = 28;
    swift_willThrow();
    v26 = *(v0 + 136);

    v27 = *(v0 + 8);

    return v27(0);
  }
}

uint64_t sub_20DEC2960()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_20DEC2AFC;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_20DEC2A7C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DEC2A7C()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = *(v2 + 16);
  *(v2 + 16) = v0[5];

  v4 = v0[1];

  return v4(1);
}

uint64_t sub_20DEC2AFC()
{
  v1 = v0[18];

  v2 = v0[20];
  v3 = v0[17];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_20DEC2B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v45 = a7;
  v46 = a8;
  v42 = a5;
  v43 = a6;
  v39 = a3;
  v40 = a4;
  v38 = a2;
  v44 = a10;
  v41 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v37 = &v37 - v18;
  v20 = sub_20DF47F04();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v12 + 16))(v15, a1, v11);
  v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  (*(v12 + 32))(v26 + v21, v15, v11);
  v27 = v39;
  *(v26 + v22) = v38;
  v28 = (v26 + v23);
  v29 = v40;
  *v28 = v27;
  v28[1] = v29;
  v30 = (v26 + v24);
  v31 = v43;
  *v30 = v42;
  v30[1] = v31;
  v32 = (v26 + v25);
  v33 = v46;
  *v32 = v45;
  v32[1] = v33;
  v34 = (v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8));
  v35 = v44;
  *v34 = v41;
  v34[1] = v35;

  sub_20DEBB534(0, 0, v37, &unk_20DF4A038, v26);
}

uint64_t sub_20DEC2E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 240) = v15;
  *(v8 + 208) = v13;
  *(v8 + 224) = v14;
  *(v8 + 192) = a7;
  *(v8 + 200) = a8;
  *(v8 + 176) = a5;
  *(v8 + 184) = a6;
  *(v8 + 168) = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  *(v8 + 248) = v9;
  v10 = *(v9 - 8);
  *(v8 + 256) = v10;
  *(v8 + 264) = *(v10 + 64);
  *(v8 + 272) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEC2EF0, 0, 0);
}

uint64_t sub_20DEC2EF0()
{
  v1 = v0[33];
  v2 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v24 = v0[29];
  v25 = v0[30];
  v22 = v0[27];
  v23 = v0[28];
  v20 = v0[25];
  v21 = v0[26];
  v18 = v0[23];
  v19 = v0[24];
  v5 = v0[21];
  v6 = v0[22];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[35] = sub_20DF3C9D8();
  (*(v3 + 16))(v2, v5, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v2, v4);
  v9 = sub_20DF3D598(sub_20DED9CD0, v8);
  v0[36] = v9;

  v10 = *(v6 + 16);
  sub_20DF479B4();

  v11 = sub_20DF47D04();
  v0[37] = v11;

  v12 = sub_20DF47D04();
  v0[38] = v12;
  v13 = sub_20DF47D04();
  v0[39] = v13;
  v14 = sub_20DF47D04();
  v0[40] = v14;
  v15 = sub_20DF47D04();
  v0[41] = v15;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DEC3190;
  v16 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA70, &unk_20DF4AC20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEE5F98;
  v0[13] = &block_descriptor_237;
  v0[14] = v16;
  [v9 createUtilitySubscriptionWithSiteID:v11 utilityID:v12 serviceLocationID:v13 accessToken:v14 refreshToken:v15 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEC3190()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  if (v2)
  {
    v3 = sub_20DEC337C;
  }

  else
  {
    v3 = sub_20DEC32A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DEC32A0()
{
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[36];
  v6 = v0[37];
  v7 = v0[35];
  v8 = v0[31];
  v9 = v0[21];
  v10 = v0[18];
  swift_unknownObjectRelease();

  [*(v7 + 16) invalidate];
  v0[20] = v10;
  sub_20DF47EE4();

  v11 = v0[34];

  v12 = v0[1];

  return v12();
}

uint64_t sub_20DEC337C()
{
  v2 = v0[41];
  v1 = v0[42];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[37];
  v6 = v0[38];
  v8 = v0[35];
  v7 = v0[36];
  v12 = v0[21];
  v13 = v0[31];
  swift_willThrow();

  swift_unknownObjectRelease();

  v0[19] = v1;
  sub_20DF47ED4();
  v9 = v0[34];

  v10 = v0[1];

  return v10();
}

uint64_t sub_20DEC3454(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20DED38E8(0xD000000000000050, 0x800000020DF4E940, &v23);
    *(v14 + 12) = 2080;
    v22[1] = a1;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "%s error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  return sub_20DF47ED4();
}

uint64_t sub_20DEC3710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 128) = v16;
  *(v9 + 136) = v8;
  *(v9 + 112) = v15;
  *(v9 + 96) = a7;
  *(v9 + 104) = a8;
  *(v9 + 80) = a5;
  *(v9 + 88) = a6;
  *(v9 + 64) = a3;
  *(v9 + 72) = a4;
  *(v9 + 48) = a1;
  *(v9 + 56) = a2;
  v10 = sub_20DF47BD4();
  *(v9 + 144) = v10;
  v11 = *(v10 - 8);
  *(v9 + 152) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEC37F0, 0, 0);
}

uint64_t sub_20DEC37F0()
{
  v1 = *(*(v0 + 136) + 16);
  v2 = sub_20DF479B4();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = *(v0 + 120);
    v33 = *(v0 + 104);
    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);
    v13 = *(v0 + 48);
    v14 = swift_task_alloc();
    *(v0 + 168) = v14;
    v15 = *(v0 + 88);
    *(v14 + 16) = v6;
    *(v14 + 24) = v13;
    *(v14 + 32) = v12;
    *(v14 + 40) = v11;
    *(v14 + 48) = v10;
    *(v14 + 56) = v9;
    *(v14 + 64) = v15;
    *(v14 + 80) = v33;
    *(v14 + 96) = v8;
    *(v14 + 104) = v7;
    v16 = *(MEMORY[0x277D85A40] + 4);
    v17 = swift_task_alloc();
    *(v0 + 176) = v17;
    v18 = sub_20DF47A24();
    *v17 = v0;
    v17[1] = sub_20DEC3AF8;

    return MEMORY[0x2822008A0](v0 + 40, 0, 0, 0xD00000000000007ELL, 0x800000020DF4E9A0, sub_20DED4EE8, v14, v18);
  }

  else
  {
    if (qword_281122988 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 152);
    v19 = *(v0 + 160);
    v21 = *(v0 + 144);
    v22 = __swift_project_value_buffer(v21, qword_281122F18);
    swift_beginAccess();
    (*(v20 + 16))(v19, v22, v21);
    v23 = sub_20DF47BB4();
    v24 = sub_20DF47FF4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20DEAF000, v23, v24, "Failed to create subscription. Site ID is empty.", v25, 2u);
      MEMORY[0x20F329700](v25, -1, -1);
    }

    v27 = *(v0 + 152);
    v26 = *(v0 + 160);
    v28 = *(v0 + 144);

    (*(v27 + 8))(v26, v28);
    sub_20DED4D6C();
    swift_allocError();
    *v29 = 28;
    swift_willThrow();
    v30 = *(v0 + 160);

    v31 = *(v0 + 8);

    return v31(0);
  }
}

uint64_t sub_20DEC3AF8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_20DEC3C94;
  }

  else
  {
    v5 = *(v2 + 168);

    v4 = sub_20DEC3C14;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DEC3C14()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = *(v2 + 16);
  *(v2 + 16) = v0[5];

  v4 = v0[1];

  return v4(1);
}

uint64_t sub_20DEC3C94()
{
  v1 = v0[21];

  v2 = v0[23];
  v3 = v0[20];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_20DEC3D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v58 = a6;
  v59 = a7;
  v56 = a4;
  v57 = a5;
  v55 = a3;
  v63 = a12;
  v64 = a13;
  v61 = a8;
  v62 = a11;
  v60 = a10;
  v52 = a9;
  v53 = a2;
  v14 = sub_20DF474E4();
  v50 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v51 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v48 - v20;
  v49 = &v48 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v48 - v24;
  v54 = &v48 - v24;
  v26 = sub_20DF47F04();
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  v27 = v21;
  v28 = v17;
  (*(v18 + 16))(v27, a1, v17);
  v48 = v15;
  (*(v15 + 16))(&v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v52, v14);
  v29 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v30 = (v19 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
  v34 = (*(v15 + 80) + v33 + 16) & ~*(v15 + 80);
  v35 = (v16 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  (*(v18 + 32))(v36 + v29, v49, v28);
  *(v36 + v30) = v53;
  v37 = (v36 + v31);
  v38 = v56;
  *v37 = v55;
  v37[1] = v38;
  v39 = (v36 + v32);
  v40 = v58;
  *v39 = v57;
  v39[1] = v40;
  v41 = (v36 + v33);
  v42 = v61;
  *v41 = v59;
  v41[1] = v42;
  (*(v48 + 32))(v36 + v34, v51, v50);
  v43 = (v36 + v35);
  v44 = v62;
  *v43 = v60;
  v43[1] = v44;
  v45 = (v36 + v52);
  v46 = v64;
  *v45 = v63;
  v45[1] = v46;

  sub_20DEBB534(0, 0, v54, &unk_20DF4A028, v36);
}

uint64_t sub_20DEC40AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 256) = v16;
  *(v8 + 264) = v17;
  *(v8 + 224) = v14;
  *(v8 + 240) = v15;
  *(v8 + 208) = v13;
  *(v8 + 192) = a7;
  *(v8 + 200) = a8;
  *(v8 + 176) = a5;
  *(v8 + 184) = a6;
  *(v8 + 168) = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  *(v8 + 272) = v9;
  v10 = *(v9 - 8);
  *(v8 + 280) = v10;
  *(v8 + 288) = *(v10 + 64);
  *(v8 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEC41A4, 0, 0);
}

uint64_t sub_20DEC41A4()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v29 = v0[31];
  v30 = v0[33];
  v27 = v0[29];
  v28 = v0[30];
  v24 = v0[27];
  v25 = v0[28];
  v22 = v0[25];
  v23 = v0[26];
  v21 = v0[24];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[38] = sub_20DF3C9D8();
  (*(v3 + 16))(v1, v7, v4);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v1, v4);
  v31 = sub_20DF3D598(sub_20DED9B18, v9);
  v0[39] = v31;

  v10 = *(v6 + 16);
  sub_20DF479B4();

  v26 = sub_20DF47D04();
  v0[40] = v26;

  v11 = sub_20DF47D04();
  v0[41] = v11;
  v12 = sub_20DF47D04();
  v0[42] = v12;
  v13 = sub_20DF47D04();
  v0[43] = v13;
  v14 = sub_20DF47464();
  v0[44] = v14;
  v15 = sub_20DF47D04();
  v0[45] = v15;
  if (v30)
  {
    v16 = v0[32];
    v17 = v0[33];
    v18 = sub_20DF47D04();
  }

  else
  {
    v18 = 0;
  }

  v0[46] = v18;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DEC4484;
  v19 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA70, &unk_20DF4AC20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEE5F98;
  v0[13] = &block_descriptor_227;
  v0[14] = v19;
  [v31 createUtilitySubscriptionWithSiteID:v26 utilityID:v11 serviceLocationID:v12 accessToken:v13 accessTokenExpirationDate:v14 refreshToken:v15 utilityCustomerName:v18 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEC4484()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 376) = v2;
  if (v2)
  {
    v3 = sub_20DEC4680;
  }

  else
  {
    v3 = sub_20DEC4594;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DEC4594()
{
  v2 = v0[45];
  v1 = v0[46];
  v4 = v0[43];
  v3 = v0[44];
  v6 = v0[41];
  v5 = v0[42];
  v7 = v0[39];
  v8 = v0[40];
  v9 = v0[38];
  v14 = v0[21];
  v15 = v0[34];
  v10 = v0[18];
  swift_unknownObjectRelease();

  [*(v9 + 16) invalidate];
  v0[20] = v10;
  sub_20DF47EE4();

  v11 = v0[37];

  v12 = v0[1];

  return v12();
}

uint64_t sub_20DEC4680()
{
  v2 = v0[46];
  v1 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[42];
  v6 = v0[43];
  v12 = v0[41];
  v13 = v0[40];
  v8 = v0[38];
  v7 = v0[39];
  v14 = v0[21];
  v15 = v0[34];
  swift_willThrow();

  swift_unknownObjectRelease();

  v0[19] = v1;
  sub_20DF47ED4();
  v9 = v0[37];

  v10 = v0[1];

  return v10();
}

uint64_t sub_20DEC4770(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20DED38E8(0xD00000000000007ELL, 0x800000020DF4E9A0, &v23);
    *(v14 + 12) = 2080;
    v22[1] = a1;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "%s error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  return sub_20DF47ED4();
}

uint64_t sub_20DEC4A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 144) = v17;
  *(v9 + 152) = v8;
  *(v9 + 112) = v15;
  *(v9 + 128) = v16;
  *(v9 + 96) = a7;
  *(v9 + 104) = a8;
  *(v9 + 80) = a5;
  *(v9 + 88) = a6;
  *(v9 + 64) = a3;
  *(v9 + 72) = a4;
  *(v9 + 48) = a1;
  *(v9 + 56) = a2;
  v10 = sub_20DF47BD4();
  *(v9 + 160) = v10;
  v11 = *(v10 - 8);
  *(v9 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEC4B0C, 0, 0);
}

uint64_t sub_20DEC4B0C()
{
  v1 = *(*(v0 + 152) + 16);
  v2 = sub_20DF479B4();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = *(v0 + 136);
    v33 = *(v0 + 104);
    v34 = *(v0 + 120);
    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);
    v13 = *(v0 + 48);
    v14 = swift_task_alloc();
    *(v0 + 184) = v14;
    v15 = *(v0 + 88);
    *(v14 + 16) = v6;
    *(v14 + 24) = v13;
    *(v14 + 32) = v12;
    *(v14 + 40) = v11;
    *(v14 + 48) = v10;
    *(v14 + 56) = v9;
    *(v14 + 64) = v15;
    *(v14 + 80) = v33;
    *(v14 + 96) = v34;
    *(v14 + 112) = v8;
    *(v14 + 120) = v7;
    v16 = *(MEMORY[0x277D85A40] + 4);
    v17 = swift_task_alloc();
    *(v0 + 192) = v17;
    v18 = sub_20DF47A24();
    *v17 = v0;
    v17[1] = sub_20DEC4E1C;

    return MEMORY[0x2822008A0](v0 + 40, 0, 0, 0xD000000000000086, 0x800000020DF4EA20, sub_20DED4F2C, v14, v18);
  }

  else
  {
    if (qword_281122988 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 168);
    v19 = *(v0 + 176);
    v21 = *(v0 + 160);
    v22 = __swift_project_value_buffer(v21, qword_281122F18);
    swift_beginAccess();
    (*(v20 + 16))(v19, v22, v21);
    v23 = sub_20DF47BB4();
    v24 = sub_20DF47FF4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20DEAF000, v23, v24, "Failed to create subscription. Site ID is empty.", v25, 2u);
      MEMORY[0x20F329700](v25, -1, -1);
    }

    v27 = *(v0 + 168);
    v26 = *(v0 + 176);
    v28 = *(v0 + 160);

    (*(v27 + 8))(v26, v28);
    sub_20DED4D6C();
    swift_allocError();
    *v29 = 28;
    swift_willThrow();
    v30 = *(v0 + 176);

    v31 = *(v0 + 8);

    return v31(0);
  }
}

uint64_t sub_20DEC4E1C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_20DEC4FB8;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_20DEC4F38;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DEC4F38()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = *(v2 + 16);
  *(v2 + 16) = v0[5];

  v4 = v0[1];

  return v4(1);
}

uint64_t sub_20DEC4FB8()
{
  v1 = v0[23];

  v2 = v0[25];
  v3 = v0[22];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_20DEC5028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v63 = a5;
  v64 = a6;
  v61 = a3;
  v62 = a4;
  v71 = a14;
  v72 = a15;
  v70 = a13;
  v68 = a8;
  v69 = a12;
  v66 = a7;
  v67 = a11;
  v65 = a10;
  v58 = a9;
  v59 = a2;
  v16 = sub_20DF474E4();
  v56 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v57 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v52 - v22;
  v55 = &v52 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v52 - v26;
  v60 = &v52 - v26;
  v28 = sub_20DF47F04();
  (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
  v29 = v23;
  v30 = v19;
  (*(v20 + 16))(v29, a1, v19);
  v54 = v17;
  (*(v17 + 16))(&v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v58, v16);
  v31 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v32 = (v21 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = (*(v17 + 80) + v35 + 16) & ~*(v17 + 80);
  v37 = (v18 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v58 + 23) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  (*(v20 + 32))(v38 + v31, v55, v30);
  *(v38 + v32) = v59;
  v39 = (v38 + v33);
  v40 = v62;
  *v39 = v61;
  v39[1] = v40;
  v41 = (v38 + v34);
  v42 = v64;
  *v41 = v63;
  v41[1] = v42;
  v43 = (v38 + v35);
  v44 = v68;
  *v43 = v66;
  v43[1] = v44;
  (*(v54 + 32))(v38 + v36, v57, v56);
  v45 = (v38 + v37);
  v46 = v67;
  *v45 = v65;
  v45[1] = v46;
  v47 = (v38 + v58);
  v48 = v70;
  *v47 = v69;
  v47[1] = v48;
  v49 = (v38 + v53);
  v50 = v72;
  *v49 = v71;
  v49[1] = v50;

  sub_20DEBB534(0, 0, v60, &unk_20DF4A018, v38);
}

uint64_t sub_20DEC53FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 272) = v17;
  *(v8 + 280) = v18;
  *(v8 + 240) = v15;
  *(v8 + 256) = v16;
  *(v8 + 208) = v13;
  *(v8 + 224) = v14;
  *(v8 + 192) = a7;
  *(v8 + 200) = a8;
  *(v8 + 176) = a5;
  *(v8 + 184) = a6;
  *(v8 + 168) = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  *(v8 + 288) = v9;
  v10 = *(v9 - 8);
  *(v8 + 296) = v10;
  *(v8 + 304) = *(v10 + 64);
  *(v8 + 312) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEC54F4, 0, 0);
}

uint64_t sub_20DEC54F4()
{
  v2 = v0[38];
  v1 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v33 = v0[35];
  v31 = v0[32];
  v32 = v0[33];
  v29 = v0[30];
  v30 = v0[31];
  v23 = v0[27];
  v24 = v0[28];
  v22 = v0[26];
  v21 = v0[25];
  v25 = v0[24];
  v27 = v0[29];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[21];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[40] = sub_20DF3C9D8();
  (*(v3 + 16))(v1, v7, v4);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v1, v4);
  v34 = sub_20DF3D598(sub_20DED98E0, v9);
  v0[41] = v34;

  v10 = *(v5 + 16);
  sub_20DF479B4();

  v28 = sub_20DF47D04();
  v0[42] = v28;

  v26 = sub_20DF47D04();
  v0[43] = v26;
  v11 = sub_20DF47D04();
  v0[44] = v11;
  v12 = sub_20DF47D04();
  v0[45] = v12;
  v13 = sub_20DF47464();
  v0[46] = v13;
  v14 = sub_20DF47D04();
  v0[47] = v14;
  v15 = sub_20DF47D04();
  v0[48] = v15;
  if (v33)
  {
    v16 = v0[34];
    v17 = v0[35];
    v18 = sub_20DF47D04();
  }

  else
  {
    v18 = 0;
  }

  v0[49] = v18;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DEC57F4;
  v19 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA70, &unk_20DF4AC20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEE5F98;
  v0[13] = &block_descriptor_217;
  v0[14] = v19;
  [v34 createUtilitySubscriptionWithSiteID:v28 utilityID:v26 serviceLocationID:v11 accessToken:v12 accessTokenExpirationDate:v13 refreshToken:v14 address:v15 utilityCustomerName:v18 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEC57F4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 400) = v2;
  if (v2)
  {
    v3 = sub_20DEC59FC;
  }

  else
  {
    v3 = sub_20DEC5904;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DEC5904()
{
  v2 = v0[48];
  v1 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[42];
  v8 = v0[43];
  v10 = v0[40];
  v9 = v0[41];
  v15 = v0[21];
  v16 = v0[36];
  v14 = v0[18];
  swift_unknownObjectRelease();

  [*(v10 + 16) invalidate];
  v0[20] = v14;
  sub_20DF47EE4();

  v11 = v0[39];

  v12 = v0[1];

  return v12();
}

uint64_t sub_20DEC59FC()
{
  v2 = v0[49];
  v1 = v0[50];
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[45];
  v6 = v0[46];
  v12 = v0[44];
  v13 = v0[43];
  v7 = v0[41];
  v8 = v0[40];
  v16 = v0[36];
  v14 = v0[42];
  v15 = v0[21];
  swift_willThrow();

  swift_unknownObjectRelease();

  v0[19] = v1;
  sub_20DF47ED4();
  v9 = v0[39];

  v10 = v0[1];

  return v10();
}

uint64_t sub_20DEC5AFC(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20DED38E8(0xD000000000000086, 0x800000020DF4EA20, &v23);
    *(v14 + 12) = 2080;
    v22[1] = a1;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "%s error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  return sub_20DF47ED4();
}

uint64_t sub_20DEC5DD8()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = sub_20DF47A24();
  *v2 = v0;
  v2[1] = sub_20DEC5EB4;
  v4 = *(v0 + 24);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000001BLL, 0x800000020DF4EAB0, sub_20DED4F78, v4, v3);
}

uint64_t sub_20DEC5EB4()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_20DEC6038;
  }

  else
  {
    v3 = sub_20DEC5FC8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DEC5FC8()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[2];

  v3 = v0[1];

  return v3(1);
}

uint64_t sub_20DEC6054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  v5[23] = v6;
  v7 = *(v6 - 8);
  v5[24] = v7;
  v5[25] = *(v7 + 64);
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEC6128, 0, 0);
}

uint64_t sub_20DEC6128()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[21];
  v6 = v0[22];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[27] = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v5, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v1, v3);
  v9 = sub_20DF3D598(sub_20DED9684, v8);
  v0[28] = v9;

  v10 = *(v6 + 16);
  sub_20DF479B4();

  v11 = sub_20DF47D04();
  v0[29] = v11;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DEBFB6C;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA70, &unk_20DF4AC20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEE5F98;
  v0[13] = &block_descriptor_207;
  v0[14] = v12;
  [v9 revokeUtilitySubscriptionWithSiteID:v11 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEC6358(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20DED38E8(0xD00000000000001BLL, 0x800000020DF4EAB0, &v23);
    *(v14 + 12) = 2080;
    v22[1] = a1;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "%s error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  return sub_20DF47ED4();
}

uint64_t sub_20DEC6634()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = sub_20DF47A24();
  *v2 = v0;
  v2[1] = sub_20DEC6710;
  v4 = *(v0 + 24);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000019, 0x800000020DF4EAD0, sub_20DED4FC0, v4, v3);
}

uint64_t sub_20DEC6710()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_20DEC6890;
  }

  else
  {
    v3 = sub_20DEC6824;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DEC6824()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[2];

  v3 = v0[1];

  return v3();
}

uint64_t sub_20DEC68A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  v5[23] = v6;
  v7 = *(v6 - 8);
  v5[24] = v7;
  v5[25] = *(v7 + 64);
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEC697C, 0, 0);
}

uint64_t sub_20DEC697C()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[21];
  v6 = v0[22];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[27] = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v5, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v1, v3);
  v9 = sub_20DF3D598(sub_20DED946C, v8);
  v0[28] = v9;

  v10 = *(v6 + 16);
  sub_20DF479B4();

  v11 = sub_20DF47D04();
  v0[29] = v11;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DEC6BAC;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA70, &unk_20DF4AC20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEE5F98;
  v0[13] = &block_descriptor_197;
  v0[14] = v12;
  [v9 renewUtilityAccessTokenWithSiteID:v11 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEC6BAC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_20DEC6D70;
  }

  else
  {
    v3 = sub_20DEC6CBC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DEC6CBC()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[18];
  swift_unknownObjectRelease();

  [*(v3 + 16) invalidate];
  v0[20] = v6;
  sub_20DF47EE4();

  v7 = v0[26];

  v8 = v0[1];

  return v8();
}

uint64_t sub_20DEC6D70()
{
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[23];
  v6 = v0[21];
  swift_willThrow();

  swift_unknownObjectRelease();

  v0[19] = v1;
  sub_20DF47ED4();
  v7 = v0[26];

  v8 = v0[1];

  return v8();
}

uint64_t sub_20DEC6E24(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20DED38E8(0xD000000000000019, 0x800000020DF4EAD0, &v23);
    *(v14 + 12) = 2080;
    v22[1] = a1;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "%s error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  return sub_20DF47ED4();
}

uint64_t sub_20DEC70E0()
{
  sub_20DF477C4();
  v1 = sub_20DF47D04();

  v2 = v0[3];
  v3 = v0[5];
  v10[4] = sub_20DED87E4;
  v11 = v0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_20DEDA9EC;
  v10[3] = &block_descriptor_134;
  v4 = _Block_copy(v10);
  v5 = v1;
  v6 = v3;

  v7 = [v2 addObserverForName:v5 object:0 queue:v6 usingBlock:v4];

  _Block_release(v4);
  v8 = v0[4];
  v0[4] = v7;
  return swift_unknownObjectRelease();
}

uint64_t sub_20DEC7208(uint64_t a1, uint64_t a2)
{
  v3 = sub_20DF47BD4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20DF473F4();
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  v29[1] = 0xD000000000000016;
  v29[2] = 0x800000020DF4EC60;
  sub_20DF48104();
  if (!*(v9 + 16) || (v10 = sub_20DEEF9D4(v30), (v11 & 1) == 0))
  {

    sub_20DED8790(v30);
LABEL_11:
    v31 = 0u;
    v32 = 0u;
    return sub_20DED8730(&v31, &qword_27C84CA00, &qword_20DF4A170);
  }

  sub_20DEBA2EC(*(v9 + 56) + 32 * v10, &v31);
  sub_20DED8790(v30);

  if (!*(&v32 + 1))
  {
    return sub_20DED8730(&v31, &qword_27C84CA00, &qword_20DF4A170);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA08, &qword_20DF49F40);
  result = swift_dynamicCast();
  if (result)
  {
    v13 = v30[0];
    if (qword_281122988 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v3, qword_281122F18);
    swift_beginAccess();
    (*(v4 + 16))(v7, v14, v3);

    v15 = sub_20DF47BB4();
    v16 = sub_20DF48004();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29[0] = swift_slowAlloc();
      *&v31 = v29[0];
      *v17 = 136315138;
      v18 = MEMORY[0x20F328A50](v13, MEMORY[0x277D837D0]);
      v20 = v19;

      v21 = sub_20DED38E8(v18, v20, &v31);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_20DEAF000, v15, v16, "Received DidUpdateEnergyWindows for %s", v17, 0xCu);
      v22 = v29[0];
      __swift_destroy_boxed_opaque_existential_1(v29[0]);
      MEMORY[0x20F329700](v22, -1, -1);
      MEMORY[0x20F329700](v17, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v7, v3);
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v23 = *(a2 + 56);
      ObjectType = swift_getObjectType();
      v25 = *(a2 + 16);
      v26 = sub_20DF479B4();
      v28 = v27;

      (*(v23 + 8))(v26, v28, ObjectType, v23);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t static EnergySite.createSite(name:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_20DF47564();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEC7694, 0, 0);
}

uint64_t sub_20DEC7694()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_20DF47554();
  v4 = sub_20DF47514();
  v6 = v5;
  v0[7] = v5;
  (*(v2 + 8))(v1, v3);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_20DEC7778;
  v9 = v0[2];
  v8 = v0[3];

  return sub_20DED5008(v9, v8, v4, v6);
}

uint64_t sub_20DEC7778(uint64_t a1)
{
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v8 = *v1;

  v6 = *(v8 + 8);

  return v6(a1);
}

uint64_t static EnergySite.createSite(name:clientProvidedID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_20DF47564();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEC7978, 0, 0);
}

uint64_t sub_20DEC7978()
{
  v1 = v0[5];
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0[4] & 0xFFFFFFFFFFFFLL;
  }

  v3 = v0[8];
  if (v2)
  {
    v4 = v0[6];
    v5 = v0[7];
    sub_20DF47D34();
    sub_20DF47A24();
    sub_20DF47914();
    sub_20DF474F4();
    v6 = sub_20DF47514();
    v8 = v7;
    v0[9] = v6;
    v0[10] = v7;
    (*(v5 + 8))(v3, v4);

    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_20DEC7B08;

    return (sub_20DED49C4)(v6, v8);
  }

  else
  {
    v11 = v0[8];

    v12 = v0[1];

    return v12(0);
  }
}

uint64_t sub_20DEC7B08(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_20DEC7C08, 0, 0);
}

uint64_t sub_20DEC7C08()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[10];

    v3 = v0[8];

    v4 = v0[1];

    return v4(v1);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_20DEC7CEC;
    v7 = v0[9];
    v8 = v0[10];
    v10 = v0[2];
    v9 = v0[3];

    return sub_20DED5008(v10, v9, v7, v8);
  }
}

uint64_t sub_20DEC7CEC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v9 = *v1;

  v5 = *(v3 + 80);

  v6 = *(v3 + 64);

  v7 = *(v9 + 8);

  return v7(a1);
}

uint64_t sub_20DEC7E24()
{
  v1[5] = v0;
  v2 = sub_20DF47BD4();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEC7EE4, 0, 0);
}

uint64_t sub_20DEC7EE4()
{
  v1 = *(v0[5] + 16);
  v2 = sub_20DF479B4();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = *(MEMORY[0x277D85A40] + 4);
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_20DEC8178;
    v8 = v0[5];
    v9 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v7, 0, 0, 0x7265747369676572, 0xEA00000000002928, sub_20DED83A0, v8, v9);
  }

  else
  {
    if (qword_281122988 != -1)
    {
      swift_once();
    }

    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[6];
    v13 = __swift_project_value_buffer(v12, qword_281122F18);
    swift_beginAccess();
    (*(v11 + 16))(v10, v13, v12);
    v14 = sub_20DF47BB4();
    v15 = sub_20DF47FF4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20DEAF000, v14, v15, "Failed to register site. Site ID is empty.", v16, 2u);
      MEMORY[0x20F329700](v16, -1, -1);
    }

    v18 = v0[7];
    v17 = v0[8];
    v19 = v0[6];

    (*(v18 + 8))(v17, v19);
    sub_20DED4D6C();
    swift_allocError();
    *v20 = 28;
    swift_willThrow();
    v21 = v0[8];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_20DEC8178()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_20DEC82F0;
  }

  else
  {
    v3 = sub_20DEC828C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DEC828C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20DEC82F0()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_20DEC8354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v6 = sub_20DF47BD4();
  v5[24] = v6;
  v7 = *(v6 - 8);
  v5[25] = v7;
  v8 = *(v7 + 64) + 15;
  v5[26] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v5[27] = v9;
  v10 = *(v9 - 8);
  v5[28] = v10;
  v5[29] = *(v10 + 64);
  v5[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEC8484, 0, 0);
}

uint64_t sub_20DEC8484()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[22];
  v6 = v0[23];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[31] = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v5, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v1, v3);
  v9 = sub_20DF3D598(sub_20DED85CC, v8);
  v0[32] = v9;

  v10 = *(v6 + 16);
  v0[33] = v10;
  v0[2] = v0;
  v0[3] = sub_20DEC8680;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9E0, &unk_20DF49F10);
  v0[14] = v11;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEC8A6C;
  v0[13] = &block_descriptor_0;
  [v9 registerEnergySiteWithSite:v10 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEC8680()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = sub_20DEC883C;
  }

  else
  {
    v3 = sub_20DEC8790;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DEC8790()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  v4 = v0[27];
  v5 = v0[22];
  swift_unknownObjectRelease();

  [*(v3 + 16) invalidate];
  sub_20DF47EE4();

  v6 = v0[30];
  v7 = v0[26];

  v8 = v0[1];

  return v8();
}

uint64_t sub_20DEC883C()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[31];
  v4 = v0[32];
  swift_willThrow();

  swift_unknownObjectRelease();

  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v5 = v0[34];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];
  v9 = __swift_project_value_buffer(v8, qword_281122F18);
  swift_beginAccess();
  (*(v7 + 16))(v6, v9, v8);
  v10 = v5;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[34];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v13;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to register site %@", v14, 0xCu);
    sub_20DED8730(v15, &qword_27C84C948, qword_20DF49940);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  v18 = v0[34];
  v20 = v0[26];
  v19 = v0[27];
  v21 = v0[24];
  v22 = v0[25];
  v23 = v0[22];

  (*(v22 + 8))(v20, v21);
  v0[21] = v18;
  sub_20DF47ED4();
  v24 = v0[30];
  v25 = v0[26];

  v26 = v0[1];

  return v26();
}

uint64_t sub_20DEC8A6C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_20DEC8B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA28, &qword_20DF49F68);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = sub_20DF47F04();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  (*(v7 + 32))(v17 + v16, v10, v6);
  v18 = (v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a2;
  v18[1] = a3;

  sub_20DEBB534(0, 0, v14, &unk_20DF49F78, v17);
}

uint64_t sub_20DEC8D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[21] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA28, &qword_20DF49F68);
  v6[24] = v7;
  v8 = *(v7 - 8);
  v6[25] = v8;
  v6[26] = *(v8 + 64);
  v6[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEC8DF8, 0, 0);
}

uint64_t sub_20DEC8DF8()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[22];
  v13 = v0[23];
  v6 = v0[21];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[28] = sub_20DF3C9D8();
  (*(v4 + 16))(v2, v6, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v2, v3);
  v9 = sub_20DF3D598(sub_20DED8C3C, v8);
  v0[29] = v9;

  v10 = sub_20DF47D04();
  v0[30] = v10;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DEC900C;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA30, &unk_20DF49F80);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEC911C;
  v0[13] = &block_descriptor_156;
  v0[14] = v11;
  [v9 siteWithSiteID:v10 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEC900C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_20DEDA9D0;
  }

  else
  {
    v3 = sub_20DEDA9E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DEC911C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_20DEC920C()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_20DEC92DC;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v2, 0, 0, 0x29286574656C6564, 0xE800000000000000, sub_20DED54F8, v3, v4);
}

uint64_t sub_20DEC92DC()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_20DEC93F0;
  }

  else
  {
    v3 = sub_20DEB9614;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DEC9408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v5[21] = v6;
  v7 = *(v6 - 8);
  v5[22] = v7;
  v5[23] = *(v7 + 64);
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEC94DC, 0, 0);
}

uint64_t sub_20DEC94DC()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[25] = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v5, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v1, v3);
  v9 = sub_20DF3D598(sub_20DED9324, v8);
  v0[26] = v9;

  v10 = *(v6 + 16);
  v0[27] = v10;
  v0[2] = v0;
  v0[3] = sub_20DEC96D8;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9E0, &unk_20DF49F10);
  v0[14] = v11;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEC8A6C;
  v0[13] = &block_descriptor_186;
  [v9 deleteEnergySiteWithSite:v10 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEC96D8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_20DEC9888;
  }

  else
  {
    v3 = sub_20DEC97E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DEC97E8()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[21];
  v5 = v0[19];
  swift_unknownObjectRelease();

  [*(v3 + 16) invalidate];
  sub_20DF47EE4();

  v6 = v0[24];

  v7 = v0[1];

  return v7();
}

uint64_t sub_20DEC9888()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[21];
  v6 = v0[19];
  swift_willThrow();

  swift_unknownObjectRelease();

  v0[18] = v1;
  sub_20DF47ED4();
  v7 = v0[24];

  v8 = v0[1];

  return v8();
}

uint64_t sub_20DEC993C(void *a1, uint64_t a2, const char *a3, uint64_t *a4, uint64_t *a5)
{
  v32 = a3;
  v8 = sub_20DF47BD4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_281122F18);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = a1;
  v15 = sub_20DF47BB4();
  v16 = sub_20DF47FF4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = v9;
    v18 = v17;
    v30 = swift_slowAlloc();
    v33 = a1;
    v34 = v30;
    *v18 = 136315138;
    v19 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v20 = sub_20DF47D24();
    v29 = v8;
    v22 = a4;
    v23 = a5;
    v24 = sub_20DED38E8(v20, v21, &v34);

    *(v18 + 4) = v24;
    a5 = v23;
    a4 = v22;
    _os_log_impl(&dword_20DEAF000, v15, v16, v32, v18, 0xCu);
    v25 = v30;
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x20F329700](v25, -1, -1);
    MEMORY[0x20F329700](v18, -1, -1);

    (*(v31 + 8))(v12, v29);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v34 = a1;
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  return sub_20DF47ED4();
}

EnergyKitInternal::EnergySite::EnergyUsageTimeInterval_optional __swiftcall EnergySite.EnergyUsageTimeInterval.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20DF48254();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EnergySite.EnergyUsageTimeInterval.rawValue.getter()
{
  v1 = *v0;
  v2 = 7954788;
  v3 = 0x68746E6F6DLL;
  v4 = 0x68746E6F4D786973;
  if (v1 != 3)
  {
    v4 = 1918985593;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1801807223;
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

void sub_20DEC9CEC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7954788;
  v5 = 0xE500000000000000;
  v6 = 0x68746E6F6DLL;
  v7 = 0xE900000000000073;
  v8 = 0x68746E6F4D786973;
  if (v2 != 3)
  {
    v8 = 1918985593;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1801807223;
    v3 = 0xE400000000000000;
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

uint64_t sub_20DEC9D74()
{
  v1 = *v0;
  sub_20DF48494();
  sub_20DF47D54();

  return sub_20DF484D4();
}

uint64_t sub_20DEC9E40()
{
  *v0;
  *v0;
  *v0;
  sub_20DF47D54();
}

uint64_t sub_20DEC9EF8()
{
  v1 = *v0;
  sub_20DF48494();
  sub_20DF47D54();

  return sub_20DF484D4();
}

uint64_t EnergySite.HistoricalEnergyUsageError.hashValue.getter()
{
  v1 = *v0;
  sub_20DF48494();
  MEMORY[0x20F329080](v1);
  return sub_20DF484D4();
}

uint64_t EnergySite.EnergyUsage.importsGroupedByPricingPeriod.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergySite.EnergyUsage(0) + 40));
}

uint64_t EnergySite.EnergyUsage.exportsGroupedByPricingPeriod.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergySite.EnergyUsage(0) + 44));
}

uint64_t EnergySite.EnergyUsage.totalGroupedByPricingPeriod.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergySite.EnergyUsage(0) + 48));
}

uint64_t EnergySite.EnergyUsage.netGroupedByPricingPeriod.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergySite.EnergyUsage(0) + 52));
}

uint64_t EnergySite.EnergyUsage.netForPricingPeriod.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergySite.EnergyUsage(0) + 56));
}

uint64_t EnergySite.EnergyUsage.importsForPricingPeriod.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergySite.EnergyUsage(0) + 60));
}

uint64_t EnergySite.EnergyUsage.exportsForPricingPeriod.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergySite.EnergyUsage(0) + 64));
}

uint64_t EnergySite.EnergyUsage.importsGroupedByGridQuality.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergySite.EnergyUsage(0) + 68));
}

uint64_t EnergySite.EnergyUsage.exportsGroupedByGridQuality.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergySite.EnergyUsage(0) + 72));
}

uint64_t EnergySite.EnergyUsage.totalGroupedByGridQuality.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergySite.EnergyUsage(0) + 76));
}

uint64_t EnergySite.EnergyUsage.netGroupedByGridQuality.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergySite.EnergyUsage(0) + 80));
}

uint64_t EnergySite.EnergyUsage.netForGridQuality.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergySite.EnergyUsage(0) + 84));
}

uint64_t EnergySite.EnergyUsage.importsForGridQuality.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergySite.EnergyUsage(0) + 88));
}

uint64_t EnergySite.EnergyUsage.exportsForGridQuality.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergySite.EnergyUsage(0) + 92));
}

uint64_t EnergySite.EnergyUsage.init(startTime:imports:exports:importsGroupedByPricingPeriod:exportsGroupedByPricingPeriod:importsGroupedByGridQuality:exportsGroupedByGridQuality:subintervalCount:isValid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v20 = sub_20DF474E4();
  v21 = *(v20 - 8);
  (*(v21 + 16))(a8, a1, v20);
  v22 = type metadata accessor for EnergySite.EnergyUsage(0);
  *(a8 + v22[8]) = a6;
  *(a8 + v22[9]) = a7;
  *(a8 + v22[5]) = a9 - a10;
  *(a8 + v22[6]) = a9;
  *(a8 + v22[7]) = a10;
  *(a8 + v22[11]) = a3;
  *(a8 + v22[10]) = a2;

  *(a8 + v22[13]) = _s17EnergyKitInternal0A4SiteC0A5UsageV027aggregateNetAndTotalImportsH17ExportsByCategory07exportslM007importslM0SDySiSdG03netL6Period_AI05totallQ0tAI_AItFZ_0(a3, a2);
  *(a8 + v22[12]) = v23;

  v25 = sub_20DED59C0(v24, 5uLL);

  *(a8 + v22[14]) = v25;
  v26 = sub_20DED59C0(a2, 5uLL);

  *(a8 + v22[15]) = v26;
  v27 = sub_20DED59C0(a3, 5uLL);

  *(a8 + v22[16]) = v27;
  *(a8 + v22[18]) = a5;
  *(a8 + v22[17]) = a4;

  *(a8 + v22[20]) = _s17EnergyKitInternal0A4SiteC0A5UsageV027aggregateNetAndTotalImportsH17ExportsByCategory07exportslM007importslM0SDySiSdG03netL6Period_AI05totallQ0tAI_AItFZ_0(a5, a4);
  *(a8 + v22[19]) = v28;

  v30 = sub_20DED59C0(v29, 3uLL);

  *(a8 + v22[21]) = v30;
  v31 = sub_20DED59C0(a4, 3uLL);

  *(a8 + v22[22]) = v31;
  v32 = sub_20DED59C0(a5, 3uLL);

  result = (*(v21 + 8))(a1, v20);
  *(a8 + v22[23]) = v32;
  return result;
}

uint64_t EnergySite.EnergyUsage.init(startTime:imports:exports:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v32 = a1;
  v6 = sub_20DF474E4();
  v31 = *(v6 - 8);
  v7 = v31[8];
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v31[2];
  v30 = v9;
  v10(v9, a1, v6);
  v11 = MEMORY[0x277D84F90];
  v12 = sub_20DED5560(MEMORY[0x277D84F90]);
  v13 = sub_20DED5560(v11);
  v14 = sub_20DED5560(v11);
  v15 = sub_20DED5560(v11);
  v10(a2, v9, v6);
  v16 = type metadata accessor for EnergySite.EnergyUsage(0);
  *&a2[v16[8]] = 1;
  a2[v16[9]] = 1;
  *&a2[v16[5]] = a3;
  *&a2[v16[6]] = a3;
  *&a2[v16[7]] = 0;
  *&a2[v16[11]] = v13;
  *&a2[v16[10]] = v12;

  *&a2[v16[13]] = _s17EnergyKitInternal0A4SiteC0A5UsageV027aggregateNetAndTotalImportsH17ExportsByCategory07exportslM007importslM0SDySiSdG03netL6Period_AI05totallQ0tAI_AItFZ_0(v13, v12);
  *&a2[v16[12]] = v17;

  v19 = sub_20DED59C0(v18, 5uLL);

  *&a2[v16[14]] = v19;
  v20 = sub_20DED59C0(v12, 5uLL);

  *&a2[v16[15]] = v20;
  v21 = sub_20DED59C0(v13, 5uLL);

  *&a2[v16[16]] = v21;
  *&a2[v16[18]] = v15;
  *&a2[v16[17]] = v14;

  *&a2[v16[20]] = _s17EnergyKitInternal0A4SiteC0A5UsageV027aggregateNetAndTotalImportsH17ExportsByCategory07exportslM007importslM0SDySiSdG03netL6Period_AI05totallQ0tAI_AItFZ_0(v15, v14);
  *&a2[v16[19]] = v22;

  v24 = sub_20DED59C0(v23, 3uLL);

  *&a2[v16[21]] = v24;
  v25 = sub_20DED59C0(v14, 3uLL);

  *&a2[v16[22]] = v25;
  v26 = sub_20DED59C0(v15, 3uLL);

  v27 = v31[1];
  v27(v32, v6);
  result = (v27)(v30, v6);
  *&a2[v16[23]] = v26;
  return result;
}

uint64_t EnergySite.EnergyUsage.init(imports:exports:start:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v34 = a1;
  v8 = sub_20DF474E4();
  v33 = *(v8 - 8);
  v9 = v33[8];
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v33[2];
  v32 = v11;
  v12(v11, a1, v8);
  v13 = MEMORY[0x277D84F90];
  v14 = sub_20DED5560(MEMORY[0x277D84F90]);
  v15 = sub_20DED5560(v13);
  v16 = sub_20DED5560(v13);
  v17 = sub_20DED5560(v13);
  v12(a2, v11, v8);
  v18 = type metadata accessor for EnergySite.EnergyUsage(0);
  *&a2[v18[8]] = 1;
  a2[v18[9]] = 1;
  *&a2[v18[5]] = a3 - a4;
  *&a2[v18[6]] = a3;
  *&a2[v18[7]] = a4;
  *&a2[v18[11]] = v15;
  *&a2[v18[10]] = v14;

  *&a2[v18[13]] = _s17EnergyKitInternal0A4SiteC0A5UsageV027aggregateNetAndTotalImportsH17ExportsByCategory07exportslM007importslM0SDySiSdG03netL6Period_AI05totallQ0tAI_AItFZ_0(v15, v14);
  *&a2[v18[12]] = v19;

  v21 = sub_20DED59C0(v20, 5uLL);

  *&a2[v18[14]] = v21;
  v22 = sub_20DED59C0(v14, 5uLL);

  *&a2[v18[15]] = v22;
  v23 = sub_20DED59C0(v15, 5uLL);

  *&a2[v18[16]] = v23;
  *&a2[v18[18]] = v17;
  *&a2[v18[17]] = v16;

  *&a2[v18[20]] = _s17EnergyKitInternal0A4SiteC0A5UsageV027aggregateNetAndTotalImportsH17ExportsByCategory07exportslM007importslM0SDySiSdG03netL6Period_AI05totallQ0tAI_AItFZ_0(v17, v16);
  *&a2[v18[19]] = v24;

  v26 = sub_20DED59C0(v25, 3uLL);

  *&a2[v18[21]] = v26;
  v27 = sub_20DED59C0(v16, 3uLL);

  *&a2[v18[22]] = v27;
  v28 = sub_20DED59C0(v17, 3uLL);

  v29 = v33[1];
  v29(v34, v8);
  result = (v29)(v32, v8);
  *&a2[v18[23]] = v28;
  return result;
}

uint64_t EnergySite.EnergyUsage.init(imports:exports:start:importsGroupedByPricingPeriod:exportsGroupedByPricingPeriod:importsGroupedByGridQuality:exportsGroupedByGridQuality:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v36 = a5;
  v38 = a1;
  v15 = sub_20DF474E4();
  v16 = *(v15 - 8);
  v17 = v16[8];
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v16[2];
  v37 = v19;
  v20(v19, a1, v15);
  v20(a6, v19, v15);
  v21 = type metadata accessor for EnergySite.EnergyUsage(0);
  *&a6[v21[8]] = 1;
  a6[v21[9]] = 1;
  *&a6[v21[5]] = a7 - a8;
  *&a6[v21[6]] = a7;
  *&a6[v21[7]] = a8;
  *&a6[v21[11]] = a3;
  *&a6[v21[10]] = a2;

  *&a6[v21[13]] = _s17EnergyKitInternal0A4SiteC0A5UsageV027aggregateNetAndTotalImportsH17ExportsByCategory07exportslM007importslM0SDySiSdG03netL6Period_AI05totallQ0tAI_AItFZ_0(a3, a2);
  *&a6[v21[12]] = v22;

  v24 = sub_20DED59C0(v23, 5uLL);

  *&a6[v21[14]] = v24;
  v25 = sub_20DED59C0(a2, 5uLL);

  *&a6[v21[15]] = v25;
  v26 = sub_20DED59C0(a3, 5uLL);

  *&a6[v21[16]] = v26;
  v27 = v36;
  *&a6[v21[18]] = v36;
  *&a6[v21[17]] = a4;

  *&a6[v21[20]] = _s17EnergyKitInternal0A4SiteC0A5UsageV027aggregateNetAndTotalImportsH17ExportsByCategory07exportslM007importslM0SDySiSdG03netL6Period_AI05totallQ0tAI_AItFZ_0(v27, a4);
  *&a6[v21[19]] = v28;

  v30 = sub_20DED59C0(v29, 3uLL);

  *&a6[v21[21]] = v30;
  v31 = sub_20DED59C0(a4, 3uLL);

  *&a6[v21[22]] = v31;
  v32 = sub_20DED59C0(v27, 3uLL);

  v33 = v16[1];
  v33(v38, v15);
  result = (v33)(v37, v15);
  *&a6[v21[23]] = v32;
  return result;
}

uint64_t EnergySite.EnergyUsage.description.getter()
{
  sub_20DF48154();
  v1 = sub_20DF474C4();
  MEMORY[0x20F328950](v1);

  MEMORY[0x20F328950](3819785, 0xE300000000000000);
  v2 = type metadata accessor for EnergySite.EnergyUsage(0);
  v3 = *(v0 + v2[6]);
  sub_20DF47F64();
  MEMORY[0x20F328950](977608748, 0xE400000000000000);
  v4 = *(v0 + v2[7]);
  sub_20DF47F64();
  MEMORY[0x20F328950](0xD000000000000010, 0x800000020DF4EAF0);
  v5 = *(v0 + v2[10]);
  v6 = sub_20DF47C44();
  MEMORY[0x20F328950](v6);

  MEMORY[0x20F328950](977608748, 0xE400000000000000);
  v7 = *(v0 + v2[11]);
  v8 = sub_20DF47C44();
  MEMORY[0x20F328950](v8);

  return 0;
}

uint64_t sub_20DECB0B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20DF474E4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EnergySite.HistoricalEnergyUsage.init(interval:start:usages:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for EnergySite.HistoricalEnergyUsage(0);
  v9 = &a4[v8[7]];
  *v9 = 0;
  v9[8] = 1;
  v10 = &a4[v8[8]];
  *v10 = 0;
  v10[8] = 1;
  *a4 = v7;
  v11 = v8[5];
  v12 = sub_20DF474E4();
  result = (*(*(v12 - 8) + 32))(&a4[v11], a2, v12);
  *&a4[v8[6]] = a3;
  return result;
}

uint64_t EnergySite.HistoricalEnergyUsage.start.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EnergySite.HistoricalEnergyUsage(0) + 20);
  v4 = sub_20DF474E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EnergySite.HistoricalEnergyUsage.usages.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergySite.HistoricalEnergyUsage(0) + 24));
}

uint64_t EnergySite.HistoricalEnergyUsage.totalImports.getter()
{
  v1 = (v0 + *(type metadata accessor for EnergySite.HistoricalEnergyUsage(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t EnergySite.HistoricalEnergyUsage.totalImports.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for EnergySite.HistoricalEnergyUsage(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t EnergySite.HistoricalEnergyUsage.totalExports.getter()
{
  v1 = (v0 + *(type metadata accessor for EnergySite.HistoricalEnergyUsage(0) + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t EnergySite.HistoricalEnergyUsage.totalExports.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for EnergySite.HistoricalEnergyUsage(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t static EnergySite.HistoricalEnergyUsage.subintervalFor(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = **(&unk_277E1A258 + *a1);
  v4 = sub_20DF475C4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_20DECB484(uint64_t a1, _BYTE *a2, uint64_t a3, char a4)
{
  *(v5 + 24) = a3;
  *(v5 + 32) = v4;
  *(v5 + 113) = a4;
  *(v5 + 16) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C950, &qword_20DF499C0) - 8) + 64) + 15;
  *(v5 + 40) = swift_task_alloc();
  *(v5 + 48) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C958, qword_20DF499C8) - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  v9 = sub_20DF47604();
  *(v5 + 64) = v9;
  v10 = *(v9 - 8);
  *(v5 + 72) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 114) = *a2;

  return MEMORY[0x2822009F8](sub_20DECB5D4, 0, 0);
}

uint64_t sub_20DECB5D4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  sub_20DF47A04();
  v4 = v3;

  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = *(v1 + 16);
  v6 = sub_20DF47A14();
  v8 = v7;

  *(v0 + 88) = v8;
  if (!v8)
  {
LABEL_8:

LABEL_9:
    sub_20DED5B4C();
    swift_allocError();
    *v18 = 0;
    goto LABEL_10;
  }

  v9 = *(v1 + 16);
  v10 = sub_20DF478C4();
  v12 = v11;

  *(v0 + 96) = v12;
  if (!v12)
  {

    goto LABEL_8;
  }

  v14 = *(v0 + 64);
  v13 = *(v0 + 72);
  v15 = *(v0 + 56);
  sub_20DF475E4();

  if ((*(v13 + 48))(v15, 1, v14) == 1)
  {
    v16 = *(v0 + 56);

    sub_20DED8730(v16, &qword_27C84C958, qword_20DF499C8);
    sub_20DED5B4C();
    swift_allocError();
    *v17 = 1;
LABEL_10:
    swift_willThrow();
    v19 = *(v0 + 80);
    v21 = *(v0 + 48);
    v20 = *(v0 + 56);
    v22 = *(v0 + 40);

    v23 = *(v0 + 8);

    return v23();
  }

  v25 = *(v0 + 114);
  (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
  *(v0 + 112) = v25;
  v26 = swift_task_alloc();
  *(v0 + 104) = v26;
  *v26 = v0;
  v26[1] = sub_20DECB890;
  v27 = *(v0 + 80);
  v28 = *(v0 + 48);
  v29 = *(v0 + 24);
  v30 = *(v0 + 32);
  v32 = *(v0 + 113);

  return EnergySite.historicalEnergyUsage(interval:start:timezone:utilityID:subscriptionID:bulk:)(v28, (v0 + 112), v29, v27, v6, v8, v10, v12);
}

uint64_t sub_20DECB890()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_20DECB9C4, 0, 0);
}

uint64_t sub_20DECB9C4()
{
  v1 = v0[5];
  sub_20DED8804(v0[6], v1, &qword_27C84C950, &qword_20DF499C0);
  v2 = type metadata accessor for EnergySite.HistoricalEnergyUsage(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[9];
    v3 = v0[10];
    v5 = v0[8];
    v6 = v0[6];
    sub_20DED8730(v0[5], &qword_27C84C950, &qword_20DF499C0);
    sub_20DED5B4C();
    swift_allocError();
    *v7 = 4;
    swift_willThrow();
    sub_20DED8730(v6, &qword_27C84C950, &qword_20DF499C0);
    (*(v4 + 8))(v3, v5);
    v8 = v0[10];
    v9 = v0[6];
    v10 = v0[7];
    v11 = v0[5];
  }

  else
  {
    v14 = v0[9];
    v13 = v0[10];
    v16 = v0[7];
    v15 = v0[8];
    v17 = v0[5];
    v18 = v0[2];
    sub_20DED8730(v0[6], &qword_27C84C950, &qword_20DF499C0);
    (*(v14 + 8))(v13, v15);
    sub_20DED5BA0(v17, v18);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_20DECBBC4(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v3 + 32) = *a2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20DECBC80;

  return sub_20DECB484(a1, (v3 + 32), a3, 0);
}

uint64_t sub_20DECBC80()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20DECBDB4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_20DECBDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = a8;
  v9[11] = v8;
  v9[8] = a6;
  v9[9] = a7;
  v9[6] = a4;
  v9[7] = a5;
  v9[4] = a2;
  v9[5] = a3;
  v9[3] = a1;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C958, qword_20DF499C8) - 8) + 64) + 15;
  v9[12] = swift_task_alloc();
  v11 = sub_20DF47604();
  v9[13] = v11;
  v12 = *(v11 - 8);
  v9[14] = v12;
  v13 = *(v12 + 64) + 15;
  v9[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DECBED4, 0, 0);
}

uint64_t sub_20DECBED4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v4 + 16);
  v8 = sub_20DF47854();
  v10 = v9;

  *(v0 + 128) = v10;
  sub_20DF475E4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v11 = *(v0 + 96);

    sub_20DED8730(v11, &qword_27C84C958, qword_20DF499C8);
LABEL_10:
    sub_20DED5B4C();
    swift_allocError();
    *v33 = 4;
    swift_willThrow();
    v34 = *(v0 + 120);
    v35 = *(v0 + 96);

    v36 = *(v0 + 8);

    return v36();
  }

  (*(*(v0 + 112) + 32))(*(v0 + 120), *(v0 + 96), *(v0 + 104));
  v12 = *(v4 + 16);
  v13 = sub_20DF47A14();
  v15 = v14;

  *(v0 + 136) = v15;
  if (!v15)
  {
    v28 = *(v0 + 112);
    v27 = *(v0 + 120);
    v29 = *(v0 + 104);

    (*(v28 + 8))(v27, v29);
    goto LABEL_10;
  }

  v16 = *(v4 + 16);
  v17 = sub_20DF478C4();
  v19 = v18;

  *(v0 + 144) = v19;
  if (!v19)
  {
    v31 = *(v0 + 112);
    v30 = *(v0 + 120);
    v32 = *(v0 + 104);

    (*(v31 + 8))(v30, v32);
    goto LABEL_10;
  }

  v39 = *(v0 + 120);
  v40 = *(v0 + 80);
  v38 = *(v0 + 72);
  v20 = *(v0 + 48);
  v21 = *(v0 + 24);
  v22 = swift_task_alloc();
  *(v0 + 152) = v22;
  v23 = *(v0 + 32);
  *(v22 + 16) = v8;
  *(v22 + 24) = v10;
  *(v22 + 32) = v17;
  *(v22 + 40) = v19;
  *(v22 + 48) = v13;
  *(v22 + 56) = v15;
  *(v22 + 64) = v21;
  *(v22 + 72) = v23;
  *(v22 + 88) = v20;
  *(v22 + 96) = v39;
  *(v22 + 104) = v38;
  *(v22 + 112) = v40;
  v24 = *(MEMORY[0x277D85A40] + 4);
  v25 = swift_task_alloc();
  *(v0 + 160) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C968, qword_20DF499E0);
  *v25 = v0;
  v25[1] = sub_20DECC1FC;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000045, 0x800000020DF4EB10, sub_20DED5C04, v22, v26);
}

uint64_t sub_20DECC1FC()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v10 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_20DECC3D4;
  }

  else
  {
    v6 = v2[18];
    v5 = v2[19];
    v7 = v2[16];
    v8 = v2[17];

    v4 = sub_20DECC33C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DECC33C()
{
  v1 = v0[12];
  v2 = v0[2];
  (*(v0[14] + 8))(v0[15], v0[13]);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_20DECC3D4()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];

  (*(v6 + 8))(v5, v7);
  v8 = v0[21];
  v9 = v0[15];
  v10 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_20DECC498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14)
{
  v75 = a7;
  v76 = a8;
  v73 = a5;
  v74 = a6;
  v69 = a2;
  v70 = a3;
  v77 = a13;
  v78 = a14;
  v67 = a12;
  v65 = a11;
  v71 = a9;
  v72 = a4;
  v63 = a1;
  v64 = a10;
  v14 = sub_20DF47604();
  v80 = *(v14 - 8);
  v81 = v14;
  v68 = *(v80 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v16;
  v79 = sub_20DF474E4();
  v17 = *(v79 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v79);
  v61 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v57 - v20;
  v60 = &v57 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA48, &qword_20DF49FA8);
  v58 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v57 - v25;
  v59 = &v57 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v57 - v29;
  v66 = &v57 - v29;
  v31 = sub_20DF47F04();
  (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
  (*(v23 + 16))(v26, v63, v22);
  v57 = v17;
  v32 = *(v17 + 16);
  v33 = v79;
  v32(v21, v64, v79);
  v32(&v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v65, v33);
  v34 = v80;
  (*(v80 + 16))(v16, v67, v81);
  v35 = (*(v23 + 80) + 48) & ~*(v23 + 80);
  v36 = (v24 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
  v39 = *(v17 + 80);
  v40 = (v39 + v38 + 16) & ~v39;
  v41 = (v18 + v39 + v40) & ~v39;
  v67 = (v18 + *(v34 + 80) + v41) & ~*(v34 + 80);
  v42 = (v68 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 2) = 0;
  *(v43 + 3) = 0;
  v44 = v70;
  *(v43 + 4) = v69;
  *(v43 + 5) = v44;
  (*(v23 + 32))(&v43[v35], v59, v58);
  v45 = &v43[v36];
  v46 = v73;
  *v45 = v72;
  *(v45 + 1) = v46;
  v47 = &v43[v37];
  v48 = v75;
  *v47 = v74;
  *(v47 + 1) = v48;
  v49 = &v43[v38];
  v50 = v71;
  *v49 = v76;
  *(v49 + 1) = v50;
  v51 = *(v57 + 32);
  v52 = &v43[v40];
  v53 = v79;
  v51(v52, v60, v79);
  v51(&v43[v41], v61, v53);
  (*(v80 + 32))(&v43[v67], v62, v81);
  v54 = &v43[v42];
  v55 = v78;
  *v54 = v77;
  *(v54 + 1) = v55;

  sub_20DEBB534(0, 0, v66, &unk_20DF49FB8, v43);
}