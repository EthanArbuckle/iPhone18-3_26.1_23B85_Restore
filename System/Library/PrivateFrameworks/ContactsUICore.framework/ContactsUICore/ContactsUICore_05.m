uint64_t sub_1A32CFB88()
{
  sub_1A32D0A64(&qword_1EB0C5C60, type metadata accessor for MonogramRecipe_Font);

  return sub_1A34CA0F0();
}

uint64_t sub_1A32CFC08()
{
  v0 = sub_1A34CA1C0();
  __swift_allocate_value_buffer(v0, qword_1EB0EDBB8);
  __swift_project_value_buffer(v0, qword_1EB0EDBB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6198) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A34DE7A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "initials";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1A34CA190();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "font";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "containerDiameter";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "path";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_1A34CA1A0();
}

uint64_t sub_1A32CFE4C()
{
  while (1)
  {
    result = sub_1A34CA010();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1A34CA070();
      }

      else if (result == 4)
      {
        sub_1A32CFFDC();
      }
    }

    else if (result == 1)
    {
      sub_1A34CA080();
    }

    else if (result == 2)
    {
      sub_1A32CFF28();
    }
  }

  return result;
}

uint64_t sub_1A32CFF28()
{
  type metadata accessor for MonogramRecipe_Recipe(0);
  type metadata accessor for MonogramRecipe_Font(0);
  sub_1A32D0A64(&qword_1EB0C5C60, type metadata accessor for MonogramRecipe_Font);
  return sub_1A34CA0A0();
}

uint64_t sub_1A32CFFDC()
{
  type metadata accessor for MonogramRecipe_Recipe(0);
  type metadata accessor for MonogramRecipe_Path(0);
  sub_1A32D0A64(&qword_1EB0C5BA0, type metadata accessor for MonogramRecipe_Path);
  return sub_1A34CA0A0();
}

uint64_t sub_1A32D0090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1A34CA160(), !v4))
  {
    result = sub_1A32D017C(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 16) != 0.0)
      {
        sub_1A34CA150();
      }

      sub_1A32D038C(v3, a1, a2, a3);
      type metadata accessor for MonogramRecipe_Recipe(0);
      return sub_1A34C9F90();
    }
  }

  return result;
}

uint64_t sub_1A32D017C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C18);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for MonogramRecipe_Font(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MonogramRecipe_Recipe(0);
  sub_1A328D790(a1 + *(v12 + 28), v7, &qword_1EB0C5C18);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1A3288FDC(v7, &qword_1EB0C5C18);
  }

  sub_1A32D17AC(v7, v11, type metadata accessor for MonogramRecipe_Font);
  sub_1A32D0A64(&qword_1EB0C5C60, type metadata accessor for MonogramRecipe_Font);
  sub_1A34CA180();
  return sub_1A32D1814(v11, type metadata accessor for MonogramRecipe_Font);
}

uint64_t sub_1A32D038C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for MonogramRecipe_Path(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MonogramRecipe_Recipe(0);
  sub_1A328D790(a1 + *(v12 + 32), v7, &qword_1EB0C5C10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1A3288FDC(v7, &qword_1EB0C5C10);
  }

  sub_1A32D17AC(v7, v11, type metadata accessor for MonogramRecipe_Path);
  sub_1A32D0A64(&qword_1EB0C5BA0, type metadata accessor for MonogramRecipe_Path);
  sub_1A34CA180();
  return sub_1A32D1814(v11, type metadata accessor for MonogramRecipe_Path);
}

uint64_t sub_1A32D059C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  sub_1A34C9FA0();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for MonogramRecipe_Font(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(a1 + 32);
  v7 = type metadata accessor for MonogramRecipe_Path(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_1A32D0674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1A34C9FB0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1A32D06E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1A34C9FB0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1A32D078C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A32D0A64(&qword_1EB0C6510, type metadata accessor for MonogramRecipe_Recipe);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1A32D082C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1A34CA1C0();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1A32D08C8(uint64_t a1)
{
  v2 = sub_1A32D0A64(&qword_1EB0C5C20, type metadata accessor for MonogramRecipe_Recipe);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1A32D0934()
{
  sub_1A32D0A64(&qword_1EB0C5C20, type metadata accessor for MonogramRecipe_Recipe);

  return sub_1A34CA0F0();
}

uint64_t sub_1A32D0A64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A32D0FF4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A32D1090(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for MonogramRecipe_Point(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C63C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C64E8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if ((sub_1A3426508(*a1, *a2) & 1) == 0)
  {
    goto LABEL_15;
  }

  v21 = type metadata accessor for MonogramRecipe_Path(0);
  v22 = a2;
  v14 = *(v21 + 24);
  v15 = *(v11 + 48);
  sub_1A328D790(a1 + v14, v13, &qword_1EB0C63C8);
  sub_1A328D790(v22 + v14, &v13[v15], &qword_1EB0C63C8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1A328D790(v13, v10, &qword_1EB0C63C8);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1A32D17AC(&v13[v15], v7, type metadata accessor for MonogramRecipe_Point);
      if (*v10 == *v7 && v10[1] == v7[1])
      {
        sub_1A34C9FB0();
        sub_1A32D0A64(&qword_1EB0CB300, MEMORY[0x1E69AAC08]);
        v19 = sub_1A34CD040();
        sub_1A32D1814(v7, type metadata accessor for MonogramRecipe_Point);
        sub_1A32D1814(v10, type metadata accessor for MonogramRecipe_Point);
        sub_1A3288FDC(v13, &qword_1EB0C63C8);
        if (v19)
        {
          goto LABEL_5;
        }

LABEL_15:
        v17 = 0;
        return v17 & 1;
      }

      sub_1A32D1814(v7, type metadata accessor for MonogramRecipe_Point);
      sub_1A32D1814(v10, type metadata accessor for MonogramRecipe_Point);
      v18 = &qword_1EB0C63C8;
LABEL_14:
      sub_1A3288FDC(v13, v18);
      goto LABEL_15;
    }

    sub_1A32D1814(v10, type metadata accessor for MonogramRecipe_Point);
LABEL_8:
    v18 = &qword_1EB0C64E8;
    goto LABEL_14;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_1A3288FDC(v13, &qword_1EB0C63C8);
LABEL_5:
  sub_1A34C9FB0();
  sub_1A32D0A64(&qword_1EB0CB300, MEMORY[0x1E69AAC08]);
  v17 = sub_1A34CD040();
  return v17 & 1;
}

unint64_t sub_1A32D14B4()
{
  result = qword_1EB0C64F8;
  if (!qword_1EB0C64F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C64F8);
  }

  return result;
}

uint64_t sub_1A32D1508(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_1A34DF238[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        if (v2 != 3)
        {
          return 0;
        }
      }

      else if (v2 != 4)
      {
        return 0;
      }
    }

    else if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (sub_1A34269B0(a1[2], *(a2 + 16)))
  {
    type metadata accessor for MonogramRecipe_Path.Command(0);
    sub_1A34C9FB0();
    sub_1A32D0A64(&qword_1EB0CB300, MEMORY[0x1E69AAC08]);
    return sub_1A34CD040() & 1;
  }

  return 0;
}

unint64_t sub_1A32D1620()
{
  result = qword_1EB0C6508;
  if (!qword_1EB0C6508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6508);
  }

  return result;
}

uint64_t sub_1A32D1674(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3 > 2)
    {
      if (v3 == 3)
      {
        if (*&v2 != 3)
        {
          return 0;
        }
      }

      else if (v3 == 4)
      {
        if (*&v2 != 4)
        {
          return 0;
        }
      }

      else if (*&v2 != 5)
      {
        return 0;
      }
    }

    else if (v3)
    {
      if (v3 == 1)
      {
        if (*&v2 != 1)
        {
          return 0;
        }
      }

      else if (*&v2 != 2)
      {
        return 0;
      }
    }

    else if (v2 != 0.0)
    {
      return 0;
    }
  }

  else if (*&v2 != v3)
  {
    return 0;
  }

  if (a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24))
  {
    type metadata accessor for MonogramRecipe_Font(0);
    sub_1A34C9FB0();
    sub_1A32D0A64(&qword_1EB0CB300, MEMORY[0x1E69AAC08]);
    return sub_1A34CD040() & 1;
  }

  return 0;
}

uint64_t sub_1A32D17AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A32D1814(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A32D1874(double *a1, double *a2)
{
  v4 = type metadata accessor for MonogramRecipe_Path(0);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v39 - v8);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6518);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v39 - v10;
  v11 = type metadata accessor for MonogramRecipe_Font(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C18);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v39 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6520);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  if ((*a1 != *a2 || *(a1 + 1) != *(a2 + 1)) && (sub_1A34CDE30() & 1) == 0)
  {
    goto LABEL_11;
  }

  v39 = v6;
  v40 = v9;
  v21 = type metadata accessor for MonogramRecipe_Recipe(0);
  v22 = a2;
  v23 = *(v21 + 28);
  v24 = *(v18 + 48);
  v41 = v21;
  v42 = a1;
  sub_1A328D790(a1 + v23, v20, &qword_1EB0C5C18);
  sub_1A328D790(v22 + v23, &v20[v24], &qword_1EB0C5C18);
  v25 = *(v12 + 48);
  if (v25(v20, 1, v11) == 1)
  {
    if (v25(&v20[v24], 1, v11) == 1)
    {
      sub_1A3288FDC(v20, &qword_1EB0C5C18);
      goto LABEL_14;
    }

LABEL_9:
    v26 = &qword_1EB0C6520;
    v27 = v20;
LABEL_10:
    sub_1A3288FDC(v27, v26);
    goto LABEL_11;
  }

  sub_1A328D790(v20, v17, &qword_1EB0C5C18);
  if (v25(&v20[v24], 1, v11) == 1)
  {
    sub_1A32D1814(v17, type metadata accessor for MonogramRecipe_Font);
    goto LABEL_9;
  }

  sub_1A32D17AC(&v20[v24], v14, type metadata accessor for MonogramRecipe_Font);
  v30 = sub_1A32D1674(v17, v14);
  sub_1A32D1814(v14, type metadata accessor for MonogramRecipe_Font);
  sub_1A32D1814(v17, type metadata accessor for MonogramRecipe_Font);
  sub_1A3288FDC(v20, &qword_1EB0C5C18);
  if ((v30 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (v42[2] != v22[2])
  {
    goto LABEL_11;
  }

  v31 = *(v41 + 32);
  v32 = *(v43 + 48);
  v33 = v46;
  sub_1A328D790(v42 + v31, v46, &qword_1EB0C5C10);
  sub_1A328D790(v22 + v31, v33 + v32, &qword_1EB0C5C10);
  v34 = v45;
  v35 = *(v44 + 48);
  if (v35(v33, 1, v45) == 1)
  {
    if (v35(v33 + v32, 1, v34) == 1)
    {
      sub_1A3288FDC(v33, &qword_1EB0C5C10);
LABEL_22:
      sub_1A34C9FB0();
      sub_1A32D0A64(&qword_1EB0CB300, MEMORY[0x1E69AAC08]);
      v28 = sub_1A34CD040();
      return v28 & 1;
    }

    goto LABEL_20;
  }

  v36 = v40;
  sub_1A328D790(v33, v40, &qword_1EB0C5C10);
  if (v35(v33 + v32, 1, v34) == 1)
  {
    sub_1A32D1814(v36, type metadata accessor for MonogramRecipe_Path);
LABEL_20:
    v26 = &qword_1EB0C6518;
    v27 = v33;
    goto LABEL_10;
  }

  v37 = v39;
  sub_1A32D17AC(v33 + v32, v39, type metadata accessor for MonogramRecipe_Path);
  v38 = sub_1A32D1090(v36, v37);
  sub_1A32D1814(v37, type metadata accessor for MonogramRecipe_Path);
  sub_1A32D1814(v36, type metadata accessor for MonogramRecipe_Path);
  sub_1A3288FDC(v33, &qword_1EB0C5C10);
  if (v38)
  {
    goto LABEL_22;
  }

LABEL_11:
  v28 = 0;
  return v28 & 1;
}

unint64_t sub_1A32D1EC8(unint64_t result)
{
  v1 = 3;
  v2 = 2;
  if (result != 3)
  {
    v2 = result;
  }

  if (result != 4)
  {
    v1 = v2;
  }

  if (result >= 2)
  {
    return v1;
  }

  return result;
}

uint64_t sub_1A32D1F44()
{
  result = sub_1A34C9FB0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1A32D1FF8()
{
  sub_1A34C9FB0();
  if (v0 <= 0x3F)
  {
    sub_1A32CD678(319, &qword_1EB0C6548, type metadata accessor for MonogramRecipe_Font, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A32CD678(319, &qword_1EB0C6550, type metadata accessor for MonogramRecipe_Path, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A32D2110()
{
  result = qword_1EB0C6558;
  if (!qword_1EB0C6558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6558);
  }

  return result;
}

unint64_t sub_1A32D2168()
{
  result = qword_1EB0C6560;
  if (!qword_1EB0C6560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6560);
  }

  return result;
}

unint64_t sub_1A32D21C0()
{
  result = qword_1EB0C6568;
  if (!qword_1EB0C6568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6568);
  }

  return result;
}

double sub_1A32D225C(int8x16_t a1, double a2, double a3, int8x16_t a4)
{
  v4 = a3;
  v5 = a2;
  if (a2 <= *a1.i64)
  {
    v7 = a3 == *a1.i64;
    v6 = a3 >= *a1.i64;
  }

  else
  {
    v6 = 1;
    v7 = 0;
  }

  if (!v7 && v6)
  {
    if (a2 >= *a1.i64)
    {
      a2 = *a1.i64;
    }

    if (*a1.i64 < a3)
    {
      a3 = *a1.i64;
    }

    if (*a1.i64 <= v5)
    {
      v9 = v4 == v5;
      v8 = v4 >= v5;
    }

    else
    {
      v8 = 1;
      v9 = 0;
    }

    if (!v9 && v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = a3;
    }

    if (!v9 && v8)
    {
      v11 = v4;
    }

    else
    {
      v11 = v5;
    }
  }

  else
  {
    if (a2 >= a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = a2;
    }

    v11 = *a1.i64;
  }

  v12 = 0.0;
  if (v11 > 0.0)
  {
    v13 = v11 - v10;
    if ((v11 - v10) / v11 != 0.0)
    {
      v14 = (v11 - v5) / v13;
      v15 = (v11 - v4) / v13;
      if (v11 == *a1.i64)
      {
        if (v10 == v5)
        {
          v12 = v15 + 5.0;
        }

        else
        {
          v12 = 1.0 - v14;
        }
      }

      else
      {
        v7 = v11 == v5;
        v17 = (v11 - *a1.i64) / v13;
        if (v7)
        {
          if (v10 == v4)
          {
            v12 = v17 + 1.0;
          }

          else
          {
            v12 = 3.0 - v15;
          }
        }

        else if (v10 == *a1.i64)
        {
          v12 = v14 + 3.0;
        }

        else
        {
          v12 = 5.0 - v17;
        }
      }
    }
  }

  *a1.i64 = v12 / 6.0;
  *a4.i64 = v12 / 6.0 - trunc(v12 / 6.0);
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  a1.i64[0] = vbslq_s8(vnegq_f64(v16), a4, a1).u64[0];
  return *a1.i64;
}

void sub_1A32D2368(int8x16_t a1, double a2, double a3, int8x16_t a4)
{
  v5 = *a1.i64;
  v7 = *v4;
  v6 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  a1.i64[0] = *v4;
  sub_1A32D225C(a1, v6, v8, a4);
  v11 = v5 / v10;
  v12 = sub_1A32D2660(v7, v6, v8, v9);
  if (v7 <= 0.0)
  {
    v13 = -v7;
  }

  else
  {
    v13 = v7;
  }

  if (v13 <= 0.04045)
  {
    v14 = v13 * 0.0773993808;
  }

  else
  {
    v14 = 1.0;
    if (v13 != 1.0)
    {
      v14 = pow(v13 * 0.947867299 + 0.0521327014, 2.4);
    }
  }

  if (v7 <= 0.0)
  {
    v14 = -v14;
  }

  v15 = v12 + v11 * (v14 - v12);
  v16 = -v15;
  if (v15 > 0.0)
  {
    v16 = v15;
  }

  if (v16 <= 0.0031308)
  {
    v17 = v16 * 12.92;
  }

  else
  {
    v17 = 1.0;
    if (v16 != 1.0)
    {
      v17 = pow(v16, 0.416666667) * 1.055 + -0.055;
    }
  }

  v18 = -v17;
  if (v15 > 0.0)
  {
    v18 = v17;
  }

  *v4 = v18;
  if (v6 <= 0.0)
  {
    v19 = -v6;
  }

  else
  {
    v19 = v6;
  }

  if (v19 <= 0.04045)
  {
    v20 = v19 * 0.0773993808;
  }

  else
  {
    v20 = 1.0;
    if (v19 != 1.0)
    {
      v20 = pow(v19 * 0.947867299 + 0.0521327014, 2.4);
    }
  }

  if (v6 <= 0.0)
  {
    v20 = -v20;
  }

  v21 = v12 + v11 * (v20 - v12);
  v22 = -v21;
  if (v21 > 0.0)
  {
    v22 = v21;
  }

  if (v22 <= 0.0031308)
  {
    v23 = v22 * 12.92;
  }

  else
  {
    v23 = 1.0;
    if (v22 != 1.0)
    {
      v23 = pow(v22, 0.416666667) * 1.055 + -0.055;
    }
  }

  v24 = -v23;
  if (v21 > 0.0)
  {
    v24 = v23;
  }

  v4[1] = v24;
  if (v8 <= 0.0)
  {
    v25 = -v8;
  }

  else
  {
    v25 = v8;
  }

  if (v25 <= 0.04045)
  {
    v26 = v25 * 0.0773993808;
  }

  else
  {
    v26 = 1.0;
    if (v25 != 1.0)
    {
      v26 = pow(v25 * 0.947867299 + 0.0521327014, 2.4);
    }
  }

  if (v8 <= 0.0)
  {
    v26 = -v26;
  }

  v27 = v12 + v11 * (v26 - v12);
  v28 = -v27;
  if (v27 > 0.0)
  {
    v28 = v27;
  }

  if (v28 <= 0.0031308)
  {
    v29 = v28 * 12.92;
  }

  else
  {
    v29 = 1.0;
    if (v28 != 1.0)
    {
      v29 = pow(v28, 0.416666667) * 1.055 + -0.055;
    }
  }

  v30 = -v29;
  if (v27 > 0.0)
  {
    v30 = v29;
  }

  v4[2] = v30;
}

double sub_1A32D2660(double a1, double a2, double a3, double a4)
{
  v8 = -a1;
  if (a1 > 0.0)
  {
    v8 = a1;
  }

  if (v8 <= 0.04045)
  {
    v9 = v8 * 0.0773993808;
  }

  else
  {
    v9 = 1.0;
    if (v8 != 1.0)
    {
      v9 = pow(v8 * 0.947867299 + 0.0521327014, 2.4);
    }
  }

  v10 = -a2;
  if (a2 > 0.0)
  {
    v10 = a2;
  }

  if (v10 <= 0.04045)
  {
    v11 = v10 * 0.0773993808;
  }

  else
  {
    v11 = 1.0;
    if (v10 != 1.0)
    {
      v11 = pow(v10 * 0.947867299 + 0.0521327014, 2.4);
    }
  }

  if (a3 <= 0.0)
  {
    v12 = -a3;
  }

  else
  {
    v12 = a3;
  }

  if (v12 <= 0.04045)
  {
    v13 = v12 * 0.0773993808;
  }

  else
  {
    v13 = 1.0;
    if (v12 != 1.0)
    {
      v13 = pow(v12 * 0.947867299 + 0.0521327014, 2.4);
    }
  }

  v14 = -v11;
  if (a2 > 0.0)
  {
    v14 = v11;
  }

  v15 = -v9;
  if (a1 > 0.0)
  {
    v15 = v9;
  }

  if (a3 <= 0.0)
  {
    v13 = -v13;
  }

  v16 = (v15 * 0.2126 + v14 * 0.7152 + v13 * 0.0722) * a4;
  if (v16 < 0.0)
  {
    v16 = 0.0;
  }

  return fmin(v16, 1.0);
}

void sub_1A32D2824(double a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = sub_1A32D2660(*v1, v3, v5, v1[3]);
  v7 = -v4;
  if (v4 > 0.0)
  {
    v7 = v4;
  }

  v8 = a1 / v6;
  if (v7 <= 0.04045)
  {
    v9 = v7 * 0.0773993808;
  }

  else
  {
    v9 = 1.0;
    if (v7 != 1.0)
    {
      v9 = pow(v7 * 0.947867299 + 0.0521327014, 2.4);
    }
  }

  if (v4 <= 0.0)
  {
    v9 = -v9;
  }

  v10 = v8 * v9;
  v11 = -(v8 * v9);
  if (v10 > 0.0)
  {
    v11 = v10;
  }

  if (v11 <= 0.0031308)
  {
    v12 = v11 * 12.92;
  }

  else
  {
    v12 = 1.0;
    if (v11 != 1.0)
    {
      v12 = pow(v11, 0.416666667) * 1.055 + -0.055;
    }
  }

  v13 = -v12;
  if (v10 > 0.0)
  {
    v13 = v12;
  }

  *v1 = v13;
  if (v3 <= 0.0)
  {
    v14 = -v3;
  }

  else
  {
    v14 = v3;
  }

  if (v14 <= 0.04045)
  {
    v15 = v14 * 0.0773993808;
  }

  else
  {
    v15 = 1.0;
    if (v14 != 1.0)
    {
      v15 = pow(v14 * 0.947867299 + 0.0521327014, 2.4);
    }
  }

  if (v3 <= 0.0)
  {
    v15 = -v15;
  }

  v16 = v8 * v15;
  v17 = -(v8 * v15);
  if (v16 > 0.0)
  {
    v17 = v16;
  }

  if (v17 <= 0.0031308)
  {
    v18 = v17 * 12.92;
  }

  else
  {
    v18 = 1.0;
    if (v17 != 1.0)
    {
      v18 = pow(v17, 0.416666667) * 1.055 + -0.055;
    }
  }

  v19 = -v18;
  if (v16 > 0.0)
  {
    v19 = v18;
  }

  v1[1] = v19;
  if (v5 <= 0.0)
  {
    v20 = -v5;
  }

  else
  {
    v20 = v5;
  }

  if (v20 <= 0.04045)
  {
    v21 = v20 * 0.0773993808;
  }

  else
  {
    v21 = 1.0;
    if (v20 != 1.0)
    {
      v21 = pow(v20 * 0.947867299 + 0.0521327014, 2.4);
    }
  }

  if (v5 <= 0.0)
  {
    v21 = -v21;
  }

  v22 = v8 * v21;
  v23 = -(v8 * v21);
  if (v22 > 0.0)
  {
    v23 = v22;
  }

  if (v23 <= 0.0031308)
  {
    v24 = v23 * 12.92;
  }

  else
  {
    v24 = 1.0;
    if (v23 != 1.0)
    {
      v24 = pow(v23, 0.416666667) * 1.055 + -0.055;
    }
  }

  v25 = -v24;
  if (v22 > 0.0)
  {
    v25 = v24;
  }

  v1[2] = v25;
}

uint64_t sub_1A32D2AE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6580);
  sub_1A32D3898();
  return sub_1A34CCA00();
}

uint64_t sub_1A32D2B54(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ActionSection(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = *(*(a1 + *(v7 + 28)) + 16);
  v13[0] = 0;
  v13[1] = v8;
  swift_getKeyPath();
  sub_1A32D3B24(a1, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionSection);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_1A32D3B8C(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ActionSection);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v11 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8EA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6588);
  sub_1A32D3A44();
  sub_1A3284D0C(&qword_1EB0C0528, &qword_1EB0C6588);
  return sub_1A34CC9C0();
}

uint64_t sub_1A32D2D44(unint64_t *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for ContactCardActionRow();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = *a1;
  result = type metadata accessor for ActionSection(0);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v15 = *(a2 + *(result + 20));
    if (v13 < *(v15 + 16))
    {
      v16 = *(v7 + 80);
      sub_1A32D3B24(v15 + ((v16 + 32) & ~v16) + *(v7 + 72) * v13, v12, type metadata accessor for ContactCardActionRow);
      sub_1A32D3B24(v12, v9, type metadata accessor for ContactCardActionRow);
      v17 = swift_allocObject();
      *(v17 + 16) = a3;
      v18 = sub_1A32D3B8C(v9, v17 + ((v16 + 24) & ~v16), type metadata accessor for ContactCardActionRow);
      MEMORY[0x1EEE9AC00](v18);
      *(&v20 - 2) = v12;
      v19 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6590);
      sub_1A32D3C60();
      sub_1A34CC790();
      return sub_1A32D3FF8(v12);
    }
  }

  __break(1u);
  return result;
}

void sub_1A32D2F58(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ContactCardActionRow();
  v4 = *(a2 + *(v3 + 72));
  if (v4)
  {
    if (*(a2 + *(v3 + 68) + 8))
    {
      v5 = sub_1A34CD0E0();
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    [v4 performActionForContactIdentifier_sourceView_];
  }
}

__n128 sub_1A32D3008@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C65A8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-v6];
  v14 = a1;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C65B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C65C0);
  sub_1A32D3D78();
  sub_1A32D3E30();
  sub_1A34CA9A0();
  sub_1A34CCC80();
  sub_1A34CADA0();
  (*(v5 + 32))(a2, v7, v4);
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6590) + 36);
  v9 = v20;
  *(v8 + 64) = v19;
  *(v8 + 80) = v9;
  *(v8 + 96) = v21;
  v10 = v16;
  *v8 = v15;
  *(v8 + 16) = v10;
  result = v18;
  *(v8 + 32) = v17;
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_1A32D31FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for ContactCardActionRow();
  if (*(a1 + *(result + 36) + 8))
  {
    if (*(a1 + *(result + 40)))
    {

      sub_1A34C9010();
    }

    else
    {
    }

    sub_1A34CC5E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C65D0);
    sub_1A32D3F40();
    result = sub_1A34CB3E0();
    v5 = v8;
    v6 = v9;
    v7 = v10;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = -1;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  return result;
}

id sub_1A32D3300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A328A95C();

  v4 = sub_1A34CBE30();
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for ContactCardActionRow();
  sub_1A34C9010();
  v20 = sub_1A34CBDF0();
  v21 = v10;
  v12 = v11;
  v14 = v13;
  sub_1A328A9B0(v4, v6, v8 & 1);

  result = sub_1A34CCC80();
  v16 = result;
  v18 = v17;
  v19 = 0;
  if (*(a1 + *(v9 + 84)) == 1)
  {
    v19 = *(a1 + *(v9 + 92));
    result = v19;
  }

  *a2 = v20;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v21;
  *(a2 + 32) = v19;
  *(a2 + 40) = v16;
  *(a2 + 48) = v18;
  return result;
}

uint64_t sub_1A32D3444()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A32D3948(&qword_1EB0C1560, type metadata accessor for ContactCardCustomActionsViewModel);
  sub_1A34C99A0();

  *(swift_allocObject() + 16) = v1;

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6570);
  sub_1A34C9780();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6578);
  sub_1A3284D0C(&qword_1EB0C02A0, &qword_1EB0C6570);
  sub_1A32D3808();
  sub_1A32D3948(&qword_1EB0C2878, type metadata accessor for ActionSection);
  return sub_1A34CC9D0();
}

NSObject *sub_1A32D3614(void *a1)
{
  v1 = qword_1EB0C12B0;
  v2 = a1;
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = sub_1A34CA250();
  __swift_project_value_buffer(v3, qword_1EB0ED050);
  v4 = v2;
  v5 = sub_1A34CA230();
  v6 = sub_1A34CD660();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138477827;
    v9 = *(&v4->isa + OBJC_IVAR____TtC14ContactsUICore33ContactCardCustomActionsViewModel_contact);

    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_1A31E6000, v5, v6, "[ContactCardCustomActions] init for %{private}@", v7, 0xCu);
    sub_1A32D376C(v8);
    MEMORY[0x1A58F1010](v8, -1, -1);
    MEMORY[0x1A58F1010](v7, -1, -1);
  }

  else
  {

    v5 = v4;
  }

  return v4;
}

uint64_t sub_1A32D376C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A32D3808()
{
  result = qword_1EB0C03A0;
  if (!qword_1EB0C03A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6578);
    sub_1A32D3898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C03A0);
  }

  return result;
}

unint64_t sub_1A32D3898()
{
  result = qword_1EB0C0410;
  if (!qword_1EB0C0410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6580);
    sub_1A3284D0C(&qword_1EB0C0528, &qword_1EB0C6588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0410);
  }

  return result;
}

uint64_t sub_1A32D3948(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A32D3998(unint64_t *a1)
{
  v3 = *(type metadata accessor for ActionSection(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A32D2D44(a1, v1 + v4, v5);
}

unint64_t sub_1A32D3A44()
{
  result = qword_1EB0C0250;
  if (!qword_1EB0C0250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8EA0);
    sub_1A32D3AD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0250);
  }

  return result;
}

unint64_t sub_1A32D3AD0()
{
  result = qword_1EB0C02F0;
  if (!qword_1EB0C02F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C02F0);
  }

  return result;
}

uint64_t sub_1A32D3B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A32D3B8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A32D3BF4()
{
  v1 = *(type metadata accessor for ContactCardActionRow() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1A32D2F58(v2, v3);
}

unint64_t sub_1A32D3C60()
{
  result = qword_1EB0C6598;
  if (!qword_1EB0C6598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6590);
    sub_1A32D3CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6598);
  }

  return result;
}

unint64_t sub_1A32D3CEC()
{
  result = qword_1EB0C65A0;
  if (!qword_1EB0C65A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C65A8);
    sub_1A32D3D78();
    sub_1A32D3E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C65A0);
  }

  return result;
}

unint64_t sub_1A32D3D78()
{
  result = qword_1EB0C65B0;
  if (!qword_1EB0C65B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C65B8);
    sub_1A3284D0C(&qword_1EB0C0920, &unk_1EB0C8FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C65B0);
  }

  return result;
}

unint64_t sub_1A32D3E30()
{
  result = qword_1EB0C08B0;
  if (!qword_1EB0C08B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C65C0);
    sub_1A32D3EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C08B0);
  }

  return result;
}

unint64_t sub_1A32D3EB4()
{
  result = qword_1EB0C08B8;
  if (!qword_1EB0C08B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C65C8);
    sub_1A32D3F40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C08B8);
  }

  return result;
}

unint64_t sub_1A32D3F40()
{
  result = qword_1EB0C0D40;
  if (!qword_1EB0C0D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C65D0);
    sub_1A3284D0C(&qword_1ED854EA0, &qword_1EB0C9000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0D40);
  }

  return result;
}

uint64_t sub_1A32D3FF8(uint64_t a1)
{
  v2 = type metadata accessor for ContactCardActionRow();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A32D4064()
{
  result = qword_1EB0C0430;
  if (!qword_1EB0C0430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C65D8);
    sub_1A32D3808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0430);
  }

  return result;
}

double sub_1A32D40E8()
{
  sub_1A34CA750();
  xmmword_1EB0C6600 = v3;
  unk_1EB0C6610 = v4;
  xmmword_1EB0C6620 = v5;
  result = *&v2;
  xmmword_1EB0C65E0 = v1;
  *algn_1EB0C65F0 = v2;
  return result;
}

double sub_1A32D41B8()
{
  sub_1A34CA750();
  xmmword_1EB0C6650 = v3;
  unk_1EB0C6660 = v4;
  xmmword_1EB0C6670 = v5;
  result = *&v2;
  xmmword_1EB0C6630 = v1;
  unk_1EB0C6640 = v2;
  return result;
}

double sub_1A32D4288()
{
  sub_1A34CA750();
  xmmword_1EB0C66A0 = v3;
  unk_1EB0C66B0 = v4;
  xmmword_1EB0C66C0 = v5;
  result = *&v2;
  xmmword_1EB0C6680 = v1;
  *algn_1EB0C6690 = v2;
  return result;
}

uint64_t sub_1A32D4358()
{
  swift_getKeyPath();
  sub_1A32D6288(&qword_1EB0C1478, type metadata accessor for VisualIdentityEditorStyleProvider);
  sub_1A34C99A0();

  return sub_1A34C9010();
}

uint64_t sub_1A32D43FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A32D6288(&qword_1EB0C1478, type metadata accessor for VisualIdentityEditorStyleProvider);
  sub_1A34C99A0();

  *a2 = *(v3 + 24);
  return sub_1A34C9010();
}

uint64_t sub_1A32D44D4(uint64_t a1)
{
  sub_1A34C9010();
  v3 = sub_1A34CC460();

  if (v3)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A32D6288(&qword_1EB0C1478, type metadata accessor for VisualIdentityEditorStyleProvider);
    sub_1A34C9990();
  }
}

uint64_t sub_1A32D4628()
{
  swift_getKeyPath();
  sub_1A32D6288(&qword_1EB0C1478, type metadata accessor for VisualIdentityEditorStyleProvider);
  sub_1A34C99A0();

  return sub_1A34C9010();
}

uint64_t sub_1A32D46CC(uint64_t a1)
{
  sub_1A34C9010();
  v3 = sub_1A34CC460();

  if (v3)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A32D6288(&qword_1EB0C1478, type metadata accessor for VisualIdentityEditorStyleProvider);
    sub_1A34C9990();
  }
}

uint64_t sub_1A32D4820()
{
  swift_getKeyPath();
  sub_1A32D6288(&qword_1EB0C1478, type metadata accessor for VisualIdentityEditorStyleProvider);
  sub_1A34C99A0();

  return sub_1A34C9010();
}

uint64_t sub_1A32D48C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A32D6288(&qword_1EB0C1478, type metadata accessor for VisualIdentityEditorStyleProvider);
  sub_1A34C99A0();

  *a2 = *(v3 + 40);
  return sub_1A34C9010();
}

uint64_t sub_1A32D4970(uint64_t a1)
{
  sub_1A34C9010();
  v3 = sub_1A34CC460();

  if (v3)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A32D6288(&qword_1EB0C1478, type metadata accessor for VisualIdentityEditorStyleProvider);
    sub_1A34C9990();
  }
}

uint64_t sub_1A32D4AC4()
{
  swift_getKeyPath();
  sub_1A32D6288(&qword_1EB0C1478, type metadata accessor for VisualIdentityEditorStyleProvider);
  sub_1A34C99A0();

  return sub_1A34C9010();
}

uint64_t sub_1A32D4B68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A32D6288(&qword_1EB0C1478, type metadata accessor for VisualIdentityEditorStyleProvider);
  sub_1A34C99A0();

  *a2 = *(v3 + 48);
  return sub_1A34C9010();
}

uint64_t sub_1A32D4C40(uint64_t a1)
{
  sub_1A34C9010();
  v3 = sub_1A34CC460();

  if (v3)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A32D6288(&qword_1EB0C1478, type metadata accessor for VisualIdentityEditorStyleProvider);
    sub_1A34C9990();
  }
}

uint64_t sub_1A32D4D94@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1A32D6288(&qword_1EB0C1478, type metadata accessor for VisualIdentityEditorStyleProvider);
  sub_1A34C99A0();

  v3 = OBJC_IVAR____TtC14ContactsUICore33VisualIdentityEditorStyleProvider__preferredColorScheme;
  swift_beginAccess();
  v4 = sub_1A34CA5D0();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1A32D4E8C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A34CA5D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC14ContactsUICore33VisualIdentityEditorStyleProvider__preferredColorScheme;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1A32D6288(&qword_1EB0C11A0, MEMORY[0x1E697DBD0]);
  v14[0] = a1;
  LOBYTE(a1) = sub_1A34CD040();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_1A32D6288(&qword_1EB0C1478, type metadata accessor for VisualIdentityEditorStyleProvider);
    sub_1A34C9990();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_1A32D512C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14ContactsUICore33VisualIdentityEditorStyleProvider__preferredColorScheme;
  swift_beginAccess();
  v5 = sub_1A34CA5D0();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1A32D51C8()
{
  v0 = sub_1A34CC450();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A34CA5D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A34C9010();
  sub_1A32D44D4(v8);
  sub_1A31EC930();
  sub_1A34C9010();
  v9 = sub_1A34CD800();
  v10 = sub_1A31EC6B0();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = sub_1A32D2660(v10, v12, v14, v16);
  v18 = *(v5 + 104);
  if (v17 <= 0.9)
  {
    v18(v7, *MEMORY[0x1E697DBA8], v4);
    sub_1A32D4E8C(v7);
    if (qword_1EB0C47C8 != -1)
    {
      swift_once();
    }

    v29[2] = xmmword_1EB0C6600;
    v29[3] = unk_1EB0C6610;
    v29[4] = xmmword_1EB0C6620;
    v29[0] = xmmword_1EB0C65E0;
    v29[1] = *algn_1EB0C65F0;
    sub_1A31EC734(v29, v10, v12, v14, v16);
    v22 = *MEMORY[0x1E69814D8];
    v23 = *(v1 + 104);
    v23(v3, v22, v0);
    v24 = sub_1A34CC580();
    sub_1A32D46CC(v24);
    if (qword_1EB0C47D0 != -1)
    {
      swift_once();
    }

    v28[2] = xmmword_1EB0C6650;
    v28[3] = unk_1EB0C6660;
    v28[4] = xmmword_1EB0C6670;
    v28[1] = unk_1EB0C6640;
    v28[0] = xmmword_1EB0C6630;
    sub_1A31EC734(v28, v10, v12, v14, v16);
    v23(v3, v22, v0);
    v25 = sub_1A34CC580();
    sub_1A32D4970(v25);
    if (qword_1EB0C47D8 != -1)
    {
      swift_once();
    }

    v27[2] = xmmword_1EB0C66A0;
    v27[3] = unk_1EB0C66B0;
    v27[4] = xmmword_1EB0C66C0;
    v27[1] = *algn_1EB0C6690;
    v27[0] = xmmword_1EB0C6680;
    sub_1A31EC734(v27, v10, v12, v14, v16);
    v23(v3, v22, v0);
    v21 = sub_1A34CC580();
  }

  else
  {
    v18(v7, *MEMORY[0x1E697DBB8], v4);
    sub_1A32D4E8C(v7);
    v19 = sub_1A34CC4D0();
    sub_1A32D46CC(v19);
    sub_1A34CC4D0();
    v20 = sub_1A34CC540();

    sub_1A32D4970(v20);
    v21 = sub_1A34CC4D0();
  }

  return sub_1A32D4C40(v21);
}

uint64_t sub_1A32D5670(uint64_t a1)
{
  v2 = sub_1A34CC450();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A34CCA70();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 8);
  if (v10 < 2)
  {
    sub_1A31EE004(*a1, v10);
  }

  else if (v10 - 2 >= 2)
  {
    type metadata accessor for CGColor(0);
    sub_1A34C9A00();
    sub_1A34CC590();
  }

  else
  {
    if (*(*a1 + 16))
    {
      sub_1A34C9010();
      sub_1A34C9010();
    }

    else
    {
      sub_1A34CC4E0();
      sub_1A34CC4E0();
    }

    sub_1A34CCA60();
    sub_1A34CC480();

    (*(v7 + 8))(v9, v6);
  }

  sub_1A31EC930();
  sub_1A34C9010();
  v11 = sub_1A34CD800();
  v12 = sub_1A31EC6B0();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v27 = v12;
  v28 = v14;
  v29 = v16;
  v30 = *&v18;
  *v19.i64 = v12;
  v20.i64[0] = v18;
  sub_1A32D225C(v19, v14, v16, v20);
  *v22.i64 = v21 / (v21 * (v21 * 0.5) + 1.0);
  sub_1A32D2368(v22, v21, v23, v24);
  v25 = sub_1A32D2660(v27, v28, v29, v30);
  sub_1A32D2824(v25 / (v25 * (v25 * 0.2) + 1.0));
  (*(v3 + 104))(v5, *MEMORY[0x1E69814D8], v2);
  sub_1A34CC580();
  sub_1A32D51C8();
}

uint64_t sub_1A32D5A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 193) = a5;
  *(v6 + 136) = a4;
  *(v6 + 144) = a6;
  sub_1A34CD450();
  *(v6 + 152) = sub_1A34CD440();
  v8 = sub_1A34CD3E0();
  *(v6 + 160) = v8;
  *(v6 + 168) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A32D5AB0, v8, v7);
}

uint64_t sub_1A32D5AB0()
{
  v21 = v0;
  v1 = *(v0 + 193);
  v2 = type metadata accessor for VisualIdentity(0);
  v3 = *(v0 + 136);
  if (v1)
  {
    sub_1A31EE4BC(v3 + *(v2 + 32), v0 + 56);
  }

  else
  {
    v4 = (v3 + *(v2 + 28));
    v5 = v4[3];
    v6 = v4[4];
    v7 = __swift_project_boxed_opaque_existential_1(v4, v5);
    *(v0 + 80) = v5;
    *(v0 + 88) = *(v6 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v7, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAD00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C66D0);
  if (swift_dynamicCast())
  {

    sub_1A31EE568((v0 + 96), v0 + 16);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
    (*(v10 + 8))(&v17, v9, v10);
    v11 = v17;
    LOBYTE(v10) = v18;
    v19 = v17;
    v20 = v18;
    sub_1A32D5670(&v19);
    sub_1A31ECC9C(v11, v10);
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 193);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    sub_1A32D6110(v0 + 96);
    *(v0 + 192) = v14 & 1;
    v15 = swift_task_alloc();
    *(v0 + 176) = v15;
    *v15 = v0;
    v15[1] = sub_1A32D5D00;
    v16 = *(v0 + 136);

    return sub_1A33C4ACC(v16, (v0 + 192));
  }
}

uint64_t sub_1A32D5D00(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 184) = a1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1A32D5E28, v4, v3);
}

uint64_t sub_1A32D5E28()
{
  v1 = *(v0 + 184);

  if (*(v1 + 16))
  {
    sub_1A34C9010();
  }

  else
  {

    sub_1A34CC500();
  }

  sub_1A32D51C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A32D5ED4()
{

  v1 = OBJC_IVAR____TtC14ContactsUICore33VisualIdentityEditorStyleProvider__preferredColorScheme;
  v2 = sub_1A34CA5D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ContactsUICore33VisualIdentityEditorStyleProvider___observationRegistrar;
  v4 = sub_1A34C99E0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VisualIdentityEditorStyleProvider()
{
  result = qword_1EB0C1468;
  if (!qword_1EB0C1468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A32D602C()
{
  result = sub_1A34CA5D0();
  if (v1 <= 0x3F)
  {
    result = sub_1A34C99E0();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A32D6110(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C66D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1A32D6178()
{
  type metadata accessor for ProminentColorCache();
  v1 = swift_allocObject();
  *(v1 + 16) = sub_1A33E967C(MEMORY[0x1E69E7CC0]);
  *(v0 + 2) = v1;
  *(v0 + 3) = sub_1A34CC500();
  *(v0 + 4) = sub_1A34CC4D0();
  sub_1A34CC4D0();
  v2 = sub_1A34CC540();

  *(v0 + 5) = v2;
  *(v0 + 6) = sub_1A34CC4D0();
  v3 = OBJC_IVAR____TtC14ContactsUICore33VisualIdentityEditorStyleProvider__preferredColorScheme;
  v4 = *MEMORY[0x1E697DBB8];
  v5 = sub_1A34CA5D0();
  (*(*(v5 - 8) + 104))(&v0[v3], v4, v5);
  sub_1A34C99D0();
  return v0;
}

uint64_t sub_1A32D6288(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A32D62D0()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
  sub_1A34C9010();
}

uint64_t sub_1A32D630C()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
  sub_1A34C9010();
}

uint64_t sub_1A32D637C()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
  sub_1A34C9010();
}

uint64_t RemoteCatalystPosterHostConnection.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_1EB0EDBD0;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*RemoteCatalystPosterHostConnection.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_1EB0EDBD0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A32BDC04;
}

Swift::Void __swiftcall RemoteCatalystPosterHostConnection.handleHostConnectionInvalidated()()
{
  if (qword_1EB0C4BA0 != -1)
  {
    swift_once();
  }

  v1 = sub_1A34CA250();
  __swift_project_value_buffer(v1, qword_1EB0CC9C0);
  v2 = v0;
  v3 = sub_1A34CA230();
  v4 = sub_1A34CD660();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_1A31E6000, v3, v4, "handleHostConnectionInvalidated: %@", v5, 0xCu);
    sub_1A32D376C(v6);
    MEMORY[0x1A58F1010](v6, -1, -1);
    MEMORY[0x1A58F1010](v5, -1, -1);
  }

  v8 = &v2[qword_1EB0EDBD0];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(ObjectType, v9);
    swift_unknownObjectRelease();
  }
}

char *RemoteCatalystPosterHostConnection.__allocating_init(connection:queue:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[qword_1EB0EDBD0 + 8] = 0;
  swift_unknownObjectWeakInit();
  return sub_1A32D6758(a1, a2);
}

char *RemoteCatalystPosterHostConnection.init(connection:queue:)(void *a1, void *a2)
{
  *(v2 + qword_1EB0EDBD0 + 8) = 0;
  swift_unknownObjectWeakInit();

  return sub_1A32D6758(a1, a2);
}

char *sub_1A32D6758(void *a1, void *a2)
{
  sub_1A34C8A90();
  *&v2[qword_1EB0EE0F0] = a1;
  *&v2[qword_1EB0EE0F8] = a2;
  v29 = a1;
  v5 = a2;
  v36.receiver = v2;
  v36.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C66F0);
  v6 = objc_msgSendSuper2(&v36, sel_init);
  v7 = qword_1EB0EE0F0;
  v8 = *&v6[qword_1EB0EE0F0];
  v9 = v6;
  [v8 setExportedObject_];
  v10 = qword_1EB0C4A60;
  v11 = *&v6[v7];
  if (v10 != -1)
  {
    swift_once();
  }

  [v11 setExportedInterface_];

  v12 = qword_1EB0C4A68;
  v13 = *&v6[v7];
  if (v12 != -1)
  {
    swift_once();
  }

  [v13 setRemoteObjectInterface_];

  [*&v6[v7] _setQueue_];
  v14 = *&v6[v7];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = sub_1A32D71B0;
  v35 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1A32A5AB4;
  v33 = &block_descriptor_4;
  v16 = _Block_copy(&aBlock);
  v17 = v14;

  [v17 setInterruptionHandler_];
  _Block_release(v16);

  v18 = *&v6[v7];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = sub_1A32D71C0;
  v35 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1A32A5AB4;
  v33 = &block_descriptor_5;
  v20 = _Block_copy(&aBlock);
  v21 = v18;

  [v21 setInvalidationHandler_];
  _Block_release(v20);

  [*&v6[v7] resume];
  if (qword_1EB0C4BA0 != -1)
  {
    swift_once();
  }

  v22 = sub_1A34CA250();
  __swift_project_value_buffer(v22, qword_1EB0CC9C0);
  v23 = sub_1A34CA230();
  v24 = sub_1A34CD660();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v9;
    *v26 = v6;
    v27 = v9;
    _os_log_impl(&dword_1A31E6000, v23, v24, "Created %@", v25, 0xCu);
    sub_1A32D376C(v26);
    MEMORY[0x1A58F1010](v26, -1, -1);
    MEMORY[0x1A58F1010](v25, -1, -1);
  }

  return v9;
}

id RemoteCatalystPosterHostConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall RemoteCatalystPosterHostConnection.setContact(_:salientContentRectangle:)(CNContact _, __C::CGRect salientContentRectangle)
{
  height = salientContentRectangle.size.height;
  width = salientContentRectangle.size.width;
  y = salientContentRectangle.origin.y;
  x = salientContentRectangle.origin.x;
  v8 = v2 + qword_1EB0EDBD0;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(_.super.isa, ObjectType, v9, x, y, width, height);
    swift_unknownObjectRelease();
  }
}

void sub_1A32D6D9C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1EB0C4BA0 != -1)
    {
      swift_once();
    }

    v2 = sub_1A34CA250();
    __swift_project_value_buffer(v2, qword_1EB0CC9C0);
    v3 = v1;
    v4 = sub_1A34CA230();
    v5 = sub_1A34CD660();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v1;
      v8 = v3;
      _os_log_impl(&dword_1A31E6000, v4, v5, "Connection interrupted for host connection: %@", v6, 0xCu);
      sub_1A32D376C(v7);
      MEMORY[0x1A58F1010](v7, -1, -1);
      MEMORY[0x1A58F1010](v6, -1, -1);
    }

    [*&v3[qword_1EB0EE0F0] invalidate];
  }
}

void sub_1A32D6F14()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1EB0C4BA0 != -1)
    {
      swift_once();
    }

    v2 = sub_1A34CA250();
    __swift_project_value_buffer(v2, qword_1EB0CC9C0);
    v3 = v1;
    v4 = sub_1A34CA230();
    v5 = sub_1A34CD660();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412546;
      *(v6 + 4) = v3;
      *v7 = v1;
      *(v6 + 12) = 2112;
      v8 = *(v3 + qword_1EB0EE0F8);
      *(v6 + 14) = v8;
      v7[1] = v8;
      v9 = v3;
      v10 = v8;
      _os_log_impl(&dword_1A31E6000, v4, v5, "Connection invalidated for host connection: %@ on queue = %@", v6, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6C40);
      swift_arrayDestroy();
      MEMORY[0x1A58F1010](v7, -1, -1);
      MEMORY[0x1A58F1010](v6, -1, -1);
    }

    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x88))();
  }
}

uint64_t type metadata accessor for RemoteCatalystPosterHostConnection()
{
  result = qword_1EB0C66E0;
  if (!qword_1EB0C66E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A32D71FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C66F8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v11 - v1;
  v11[0] = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000018, 0x80000001A350C790);
  v11[1] = v3;
  sub_1A328A95C();
  sub_1A34CC6C0();
  if (qword_1EB0C1E18 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB0ED2C8;
  KeyPath = swift_getKeyPath();
  v6 = &v2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6700) + 36)];
  *v6 = KeyPath;
  v6[1] = v4;
  sub_1A34C9010();
  v7 = sub_1A34CBBF0();
  v8 = swift_getKeyPath();
  v9 = &v2[*(v0 + 36)];
  *v9 = v8;
  v9[1] = v7;
  v11[0] = 0x4000000000000000;
  sub_1A32D76B4();
  sub_1A32D7850();
  sub_1A34CBE70();
  return sub_1A32D78A4(v2);
}

uint64_t sub_1A32D73C4@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_1A34CB6A0();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = sub_1A34CB680();
  v27 = *(v8 - 8);
  v9 = v27;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  sub_1A34CB690();
  sub_1A34CB6B0();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6728) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

uint64_t sub_1A32D7654@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_1A34CB110();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6720);
  return sub_1A32D73C4((a1 + *(v4 + 44)));
}

unint64_t sub_1A32D76B4()
{
  result = qword_1EB0C6708;
  if (!qword_1EB0C6708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C66F8);
    sub_1A32D776C();
    sub_1A3284D0C(&unk_1ED8534A0, &unk_1EB0C8FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6708);
  }

  return result;
}

unint64_t sub_1A32D776C()
{
  result = qword_1EB0C6710;
  if (!qword_1EB0C6710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6700);
    sub_1A3284D0C(&unk_1EB0C0590, &unk_1EB0C5660);
    sub_1A3284D0C(&qword_1EB0C0688, &unk_1EB0C93C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6710);
  }

  return result;
}

unint64_t sub_1A32D7850()
{
  result = qword_1EB0C6718;
  if (!qword_1EB0C6718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6718);
  }

  return result;
}

uint64_t sub_1A32D78A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C66F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1A32D7938()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.658823529 green:0.678431373 blue:0.729411765 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.529411765 green:0.549019608 blue:0.588235294 alpha:1.0];
  qword_1EB0EDBD8 = v0;
  unk_1EB0EDBE0 = result;
  return result;
}

id sub_1A32D79CC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.839215686 green:0.803921569 blue:0.97254902 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.709803922 green:0.643137255 blue:0.949019608 alpha:1.0];
  qword_1EB0EDBE8 = v0;
  unk_1EB0EDBF0 = result;
  return result;
}

id sub_1A32D7A64()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.701960784 green:0.835294118 blue:0.937254902 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.454901961 green:0.698039216 blue:0.88627451 alpha:1.0];
  qword_1EB0EDBF8 = v0;
  unk_1EB0EDC00 = result;
  return result;
}

id sub_1A32D7AF8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.964705882 green:0.721568627 blue:0.8 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.937254902 green:0.490196078 blue:0.639215686 alpha:1.0];
  qword_1EB0EDC08 = v0;
  unk_1EB0EDC10 = result;
  return result;
}

id sub_1A32D7B8C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.960784314 green:0.850980392 blue:0.68627451 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.929411765 green:0.725490196 blue:0.431372549 alpha:1.0];
  qword_1EB0EDC18 = v0;
  unk_1EB0EDC20 = result;
  return result;
}

id sub_1A32D7C20()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.792156863 green:0.949019608 blue:0.741176471 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.623529412 green:0.905882353 blue:0.529411765 alpha:1.0];
  qword_1EB0EDC28 = v0;
  unk_1EB0EDC30 = result;
  return result;
}

id sub_1A32D7CB4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.882352941 green:0.776470588 blue:0.764705882 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.788235294 green:0.592156863 blue:0.57254902 alpha:1.0];
  qword_1EB0EDC38 = v0;
  unk_1EB0EDC40 = result;
  return result;
}

id sub_1A32D7D50()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.941176471 green:0.764705882 blue:0.662745098 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.894117647 green:0.568627451 blue:0.388235294 alpha:1.0];
  qword_1EB0EDC48 = v0;
  unk_1EB0EDC50 = result;
  return result;
}

id sub_1A32D7DEC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.839215686 green:0.807843137 blue:0.870588235 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.705882353 green:0.647058824 blue:0.764705882 alpha:1.0];
  qword_1EB0EDC58 = v0;
  unk_1EB0EDC60 = result;
  return result;
}

id sub_1A32D7E84()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.780392157 green:0.843137255 blue:0.905882353 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.603921569 green:0.717647059 blue:0.82745098 alpha:1.0];
  qword_1EB0EDC68 = v0;
  unk_1EB0EDC70 = result;
  return result;
}

id sub_1A32D7F18()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.815686275 green:0.909803922 blue:0.917647059 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.666666667 green:0.835294118 blue:0.847058824 alpha:1.0];
  qword_1EB0EDC78 = v0;
  unk_1EB0EDC80 = result;
  return result;
}

id sub_1A32D7FB0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.941176471 green:0.717647059 blue:0.925490196 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.890196078 green:0.48627451 blue:0.866666667 alpha:1.0];
  qword_1EB0EDC88 = v0;
  unk_1EB0EDC90 = result;
  return result;
}

id sub_1A32D8050()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.666666667 green:0.941176471 blue:0.949019608 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.396078431 green:0.894117647 blue:0.905882353 alpha:1.0];
  qword_1EB0EDC98 = v0;
  unk_1EB0EDCA0 = result;
  return result;
}

id sub_1A32D80EC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.694117647 green:0.956862745 blue:0.764705882 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.443137255 green:0.921568627 blue:0.568627451 alpha:1.0];
  qword_1EB0EDCA8 = v0;
  unk_1EB0EDCB0 = result;
  return result;
}

id sub_1A32D8184()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.850980392 green:0.831372549 blue:0.811764706 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.725490196 green:0.694117647 blue:0.654901961 alpha:1.0];
  qword_1EB0EDCB8 = v0;
  unk_1EB0EDCC0 = result;
  return result;
}

id sub_1A32D8218()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.901960784 green:0.839215686 blue:0.749019608 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.819607843 green:0.705882353 blue:0.541176471 alpha:1.0];
  qword_1EB0EDCC8 = v0;
  unk_1EB0EDCD0 = result;
  return result;
}

id sub_1A32D82AC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.831372549 green:0.866666667 blue:0.815686275 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.690196078 green:0.760784314 blue:0.666666667 alpha:1.0];
  qword_1EB0EDCD8 = v0;
  unk_1EB0EDCE0 = result;
  return result;
}

id sub_1A32D8344()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.560784314 green:0.560784314 blue:0.560784314 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
  qword_1EB0EDCE8 = v0;
  unk_1EB0EDCF0 = result;
  return result;
}

id sub_1A32D83C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6740);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34DFAA0;
  if (qword_1EB0C47E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB0EDBD8;
  v2 = unk_1EB0EDBE0;
  *(v0 + 32) = qword_1EB0EDBD8;
  *(v0 + 40) = v2;
  v3 = qword_1EB0C47F8;
  v4 = v1;
  v5 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v6 = qword_1EB0EDC08;
  v7 = unk_1EB0EDC10;
  *(v0 + 48) = qword_1EB0EDC08;
  *(v0 + 56) = v7;
  v8 = qword_1EB0C4810;
  v9 = v6;
  v10 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v11 = qword_1EB0EDC38;
  v12 = unk_1EB0EDC40;
  *(v0 + 64) = qword_1EB0EDC38;
  *(v0 + 72) = v12;
  v13 = qword_1EB0C4818;
  v14 = v11;
  v15 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v16 = qword_1EB0EDC48;
  v17 = unk_1EB0EDC50;
  *(v0 + 80) = qword_1EB0EDC48;
  *(v0 + 88) = v17;
  v18 = qword_1EB0C4800;
  v19 = v16;
  v20 = v17;
  if (v18 != -1)
  {
    swift_once();
  }

  v21 = qword_1EB0EDC18;
  v22 = unk_1EB0EDC20;
  *(v0 + 96) = qword_1EB0EDC18;
  *(v0 + 104) = v22;
  v23 = qword_1EB0C4808;
  v24 = v21;
  v25 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v26 = qword_1EB0EDC28;
  v27 = unk_1EB0EDC30;
  *(v0 + 112) = qword_1EB0EDC28;
  *(v0 + 120) = v27;
  v28 = qword_1EB0C47F0;
  v29 = v26;
  v30 = v27;
  if (v28 != -1)
  {
    swift_once();
  }

  v31 = qword_1EB0EDBF8;
  v32 = unk_1EB0EDC00;
  *(v0 + 128) = qword_1EB0EDBF8;
  *(v0 + 136) = v32;
  v33 = qword_1EB0C47E8;
  v34 = v31;
  v35 = v32;
  if (v33 != -1)
  {
    swift_once();
  }

  v36 = qword_1EB0EDBE8;
  v37 = unk_1EB0EDBF0;
  *(v0 + 144) = qword_1EB0EDBE8;
  *(v0 + 152) = v37;
  v38 = qword_1EB0C4820;
  v39 = v36;
  v40 = v37;
  if (v38 != -1)
  {
    swift_once();
  }

  v41 = qword_1EB0EDC58;
  v42 = unk_1EB0EDC60;
  *(v0 + 160) = qword_1EB0EDC58;
  *(v0 + 168) = v42;
  v43 = qword_1EB0C4828;
  v44 = v41;
  v45 = v42;
  if (v43 != -1)
  {
    swift_once();
  }

  v46 = qword_1EB0EDC68;
  v47 = unk_1EB0EDC70;
  *(v0 + 176) = qword_1EB0EDC68;
  *(v0 + 184) = v47;
  v48 = qword_1EB0C4830;
  v49 = v46;
  v50 = v47;
  if (v48 != -1)
  {
    swift_once();
  }

  v51 = qword_1EB0EDC78;
  v52 = unk_1EB0EDC80;
  *(v0 + 192) = qword_1EB0EDC78;
  *(v0 + 200) = v52;
  v53 = qword_1EB0C4838;
  v54 = v51;
  v55 = v52;
  if (v53 != -1)
  {
    swift_once();
  }

  v56 = qword_1EB0EDC88;
  v57 = unk_1EB0EDC90;
  *(v0 + 208) = qword_1EB0EDC88;
  *(v0 + 216) = v57;
  v58 = qword_1EB0C4840;
  v59 = v56;
  v60 = v57;
  if (v58 != -1)
  {
    swift_once();
  }

  v61 = qword_1EB0EDC98;
  v62 = unk_1EB0EDCA0;
  *(v0 + 224) = qword_1EB0EDC98;
  *(v0 + 232) = v62;
  v63 = qword_1EB0C4848;
  v64 = v61;
  v65 = v62;
  if (v63 != -1)
  {
    swift_once();
  }

  v66 = qword_1EB0EDCA8;
  v67 = unk_1EB0EDCB0;
  *(v0 + 240) = qword_1EB0EDCA8;
  *(v0 + 248) = v67;
  v68 = qword_1EB0C4850;
  v69 = v66;
  v70 = v67;
  if (v68 != -1)
  {
    swift_once();
  }

  v71 = qword_1EB0EDCB8;
  v72 = unk_1EB0EDCC0;
  *(v0 + 256) = qword_1EB0EDCB8;
  *(v0 + 264) = v72;
  v73 = qword_1EB0C4858;
  v74 = v71;
  v75 = v72;
  if (v73 != -1)
  {
    swift_once();
  }

  v76 = qword_1EB0EDCC8;
  v77 = unk_1EB0EDCD0;
  *(v0 + 272) = qword_1EB0EDCC8;
  *(v0 + 280) = v77;
  v78 = qword_1EB0C4860;
  v79 = v76;
  v80 = v77;
  if (v78 != -1)
  {
    swift_once();
  }

  v81 = qword_1EB0EDCD8;
  v82 = unk_1EB0EDCE0;
  *(v0 + 288) = qword_1EB0EDCD8;
  *(v0 + 296) = v82;
  v83 = qword_1EB0C4868;
  v84 = v81;
  v85 = v82;
  if (v83 != -1)
  {
    swift_once();
  }

  v87 = qword_1EB0EDCE8;
  v86 = unk_1EB0EDCF0;
  v90 = unk_1EB0EDCF0;
  *(v0 + 304) = qword_1EB0EDCE8;
  *(v0 + 312) = v86;
  qword_1EB0EDCF8 = v0;
  v88 = v87;

  return v90;
}

uint64_t AvatarView.Model.Recipe.data.getter()
{
  v2 = type metadata accessor for AvatarViewRecipe_Recipe(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 80);
  v12[4] = *(v0 + 64);
  v12[5] = v5;
  v12[6] = *(v0 + 96);
  v13 = *(v0 + 112);
  v6 = *(v0 + 16);
  v12[0] = *v0;
  v12[1] = v6;
  v7 = *(v0 + 48);
  v12[2] = *(v0 + 32);
  v12[3] = v7;
  v11 = v12;
  sub_1A32E37C0(&qword_1EB0C6750, type metadata accessor for AvatarViewRecipe_Recipe);
  v8 = v2;
  sub_1A34CA100();
  if (!v1)
  {
    v8 = sub_1A34CA0C0();
    sub_1A32E3808(v4, type metadata accessor for AvatarViewRecipe_Recipe);
  }

  return v8;
}

uint64_t *sub_1A32D8ACC()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  return v0;
}

uint64_t sub_1A32D8B4C()
{
  sub_1A32D8ACC();

  return swift_deallocClassInstance();
}

uint64_t sub_1A32D8BA4()
{
  result = sub_1A32D8BC4();
  qword_1ED857E30 = result;
  return result;
}

uint64_t sub_1A32D8BC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34DFB00;
  v1 = *MEMORY[0x1E695C400];
  v2 = *MEMORY[0x1E695C1C8];
  *(v0 + 32) = *MEMORY[0x1E695C400];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E695C1E8];
  v4 = *MEMORY[0x1E695C410];
  *(v0 + 48) = *MEMORY[0x1E695C1E8];
  *(v0 + 56) = v4;
  v5 = objc_opt_self();
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  *(v0 + 64) = [v5 descriptorForRequiredKeysForStyle_];
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A34DAA30;
  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
  v12 = sub_1A34CD350();

  v13 = sub_1A34CD0E0();
  v14 = [v11 descriptorWithKeyDescriptors:v12 description:v13];

  *(v10 + 32) = v14;
  return v10;
}

uint64_t sub_1A32D8D54()
{
  v1 = 0x7465756F686C6973;
  v2 = 0x6567616D69;
  if (*v0 != 2)
  {
    v2 = 0x696A6F6D65;
  }

  if (*v0)
  {
    v1 = 0x6D6172676F6E6F6DLL;
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

uint64_t sub_1A32D8DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A32E3084(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A32D8E00(uint64_t a1)
{
  v2 = sub_1A32DB344();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A32D8E3C(uint64_t a1)
{
  v2 = sub_1A32DB344();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A32D8E84(uint64_t a1)
{
  v2 = sub_1A32DB398();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A32D8EC0(uint64_t a1)
{
  v2 = sub_1A32DB398();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A32D8F08(uint64_t a1)
{
  v2 = sub_1A32DB440();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A32D8F44(uint64_t a1)
{
  v2 = sub_1A32DB440();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A32D8F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A34CDE30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A32D9000(uint64_t a1)
{
  v2 = sub_1A32DB494();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A32D903C(uint64_t a1)
{
  v2 = sub_1A32DB494();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A32D9078(uint64_t a1)
{
  v2 = sub_1A32DB53C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A32D90B4(uint64_t a1)
{
  v2 = sub_1A32DB53C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AvatarView.Model.Provider.encode(to:)(void *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6758);
  v35 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v34 = &v27 - v3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6760);
  v31 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v30 = &v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6768);
  v33 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6770);
  v28 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6778);
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = *v1;
  v39 = v1[1];
  v44 = v13;
  v14 = v1[2];
  v38 = v1[3];
  v37 = v14;
  v15 = v1[4].i64[0];
  v16 = v1[4].i64[1];
  v17 = v1[5].u64[0];
  v42 = v1[5].i64[1];
  v43 = v15;
  v18 = v1[6].i64[0];
  v40 = v16;
  v41 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A32DB344();
  sub_1A34CDFA0();
  if (v17 >> 62)
  {
    if (v17 >> 62 == 1)
    {
      v47.i8[0] = 3;
      sub_1A32DB398();
      v19 = v34;
      v20 = v46;
      sub_1A34CDD50();
      v47 = v44;
      sub_1A32DB3EC();
      v21 = v36;
      sub_1A34CDDC0();
      (*(v35 + 8))(v19, v21);
      return (*(v45 + 8))(v12, v20);
    }

    else
    {
      if (v17 != 0x8000000000000000 || (v24 = vorrq_s8(vorrq_s8(v37, v44), vorrq_s8(v38, v39)), v40 | *&vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL)) | v42 | v41 | v43))
      {
        v47.i8[0] = 2;
        sub_1A32DB440();
        v26 = v30;
        v25 = v46;
        sub_1A34CDD50();
        (*(v31 + 8))(v26, v32);
      }

      else
      {
        v47.i8[0] = 0;
        sub_1A32DB53C();
        v25 = v46;
        sub_1A34CDD50();
        (*(v28 + 8))(v9, v29);
      }

      return (*(v45 + 8))(v12, v25);
    }
  }

  else
  {
    v47.i8[0] = 1;
    sub_1A32DB494();
    v23 = v46;
    sub_1A34CDD50();
    v47 = v44;
    v48 = v39;
    v49 = v37;
    v50 = v38;
    v51 = v43;
    v52 = v40;
    v53 = v17 & 0x3FFFFFFFFFFFFFFFLL;
    v54 = v42;
    v55 = v41;
    sub_1A32DB4E8();
    sub_1A34CDDC0();
    (*(v33 + 8))(v7, v5);
    return (*(v45 + 8))(v12, v23);
  }
}

uint64_t AvatarView.Model.Provider.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C67B8);
  v56 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v48 - v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C67C0);
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v58 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C67C8);
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C67D0);
  v52 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C67D8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - v14;
  v16 = a1[3];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1A32DB344();
  v17 = v61;
  sub_1A34CDF90();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0(v71);
  }

  v49 = v9;
  v18 = v8;
  v20 = v58;
  v19 = v59;
  v50 = 0;
  v21 = v60;
  v61 = v13;
  v22 = sub_1A34CDD40();
  v23 = *(v22 + 16);
  if (!v23 || ((v24 = *(v22 + 32), v23 == 1) ? (v25 = v24 == 4) : (v25 = 1), v25))
  {
    v26 = v12;
    v27 = sub_1A34CDB20();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C67E0);
    *v29 = &type metadata for AvatarView.Model.Provider;
    sub_1A34CDCB0();
    sub_1A34CDB10();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
    swift_willThrow();
    (*(v61 + 8))(v15, v26);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v71);
  }

  if (*(v22 + 32) > 1u)
  {
    if (v24 == 2)
    {
      LOBYTE(v62) = 2;
      sub_1A32DB440();
      v33 = v50;
      sub_1A34CDCA0();
      if (v33)
      {
LABEL_15:
        (*(v61 + 8))(v15, v12);
        goto LABEL_24;
      }

      (*(v51 + 8))(v20, v53);
      (*(v61 + 8))(v15, v12);
      swift_unknownObjectRelease();
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0uLL;
      v42 = 0x8000000000000000;
      v41 = 0uLL;
      v36 = 1;
      v43 = 0uLL;
      v44 = 0uLL;
    }

    else
    {
      v58 = v22;
      LOBYTE(v62) = 3;
      sub_1A32DB398();
      v35 = v50;
      sub_1A34CDCA0();
      if (v35)
      {
        goto LABEL_15;
      }

      sub_1A32DB590();
      sub_1A34CDD30();
      v46 = v61;
      (*(v56 + 8))(v19, v21);
      (*(v46 + 8))(v15, v12);
      swift_unknownObjectRelease();
      v38 = 0;
      v36 = v62;
      v37 = v63;
      v42 = 0x4000000000000000;
    }

    v32 = v57;
    goto LABEL_27;
  }

  v30 = v61;
  if (*(v22 + 32))
  {
    LOBYTE(v62) = 1;
    sub_1A32DB494();
    v34 = v50;
    sub_1A34CDCA0();
    v32 = v57;
    if (!v34)
    {
      sub_1A32DB5E4();
      v45 = v54;
      sub_1A34CDD30();
      (*(v55 + 8))(v18, v45);
      (*(v30 + 8))(v15, v12);
      swift_unknownObjectRelease();
      v36 = v62;
      v37 = v63;
      v40 = v65;
      v41 = v66;
      v43 = v67;
      v39 = v68;
      v44 = v70;
      v38 = v64 & 7;
      v42 = v69 & 7;
      goto LABEL_27;
    }

    (*(v30 + 8))(v15, v12);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v71);
  }

  LOBYTE(v62) = 0;
  sub_1A32DB53C();
  v31 = v50;
  sub_1A34CDCA0();
  v32 = v57;
  if (v31)
  {
    (*(v30 + 8))(v15, v12);
LABEL_24:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v71);
  }

  (*(v52 + 8))(v11, v49);
  (*(v30 + 8))(v15, v12);
  swift_unknownObjectRelease();
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0uLL;
  v41 = 0uLL;
  v42 = 0x8000000000000000;
  v43 = 0uLL;
  v44 = 0uLL;
LABEL_27:
  *v32 = v36;
  *(v32 + 8) = v37;
  *(v32 + 16) = v38;
  *(v32 + 24) = v40;
  *(v32 + 40) = v41;
  *(v32 + 56) = v43;
  *(v32 + 72) = v39;
  *(v32 + 80) = v42;
  *(v32 + 88) = v44;
  return __swift_destroy_boxed_opaque_existential_0(v71);
}

uint64_t sub_1A32D9FB0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
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

uint64_t AvatarView.Model.Recipe.backgroundRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_1A31EE004(v2, v3);
}

uint64_t AvatarView.Model.Recipe.backgroundRepresentation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_1A31ECC9C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t AvatarView.Model.Recipe.provider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 96);
  v13 = *(v1 + 80);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 112);
  v4 = v15;
  v5 = *(v1 + 32);
  v10[0] = *(v1 + 16);
  v10[1] = v5;
  v6 = *(v1 + 64);
  v11 = *(v1 + 48);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_1A3288E7C(v10, v9);
}

__n128 AvatarView.Model.Recipe.provider.setter(uint64_t a1)
{
  v3 = *(v1 + 96);
  v9[4] = *(v1 + 80);
  v9[5] = v3;
  v10 = *(v1 + 112);
  v4 = *(v1 + 32);
  v9[0] = *(v1 + 16);
  v9[1] = v4;
  v5 = *(v1 + 64);
  v9[2] = *(v1 + 48);
  v9[3] = v5;
  sub_1A3288F88(v9);
  v6 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v6;
  *(v1 + 112) = *(a1 + 96);
  v7 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v7;
  result = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = result;
  return result;
}

__n128 static AvatarView.Model.Recipe.recipe(from:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a3;
  v60 = type metadata accessor for AvatarViewRecipe_Provider(0);
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation(0);
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C67F8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6800);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  v20 = sub_1A34C9FD0();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v21 = type metadata accessor for AvatarViewRecipe_Recipe(0);
  MEMORY[0x1EEE9AC00](v21);
  v69 = a1;
  v70 = a2;
  v68 = 0;
  memset(v67, 0, sizeof(v67));
  v62 = a1;
  v23 = a1;
  v24 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a2;
  sub_1A31EC1E0(v23, a2);
  sub_1A34C9FC0();
  sub_1A32E37C0(&qword_1EB0C6750, type metadata accessor for AvatarViewRecipe_Recipe);
  v25 = v64;
  sub_1A34CA0D0();
  v64 = v25;
  if (v25)
  {
    v26 = v64;
LABEL_8:
    sub_1A34C90B0();
    swift_allocObject();
    sub_1A34C90A0();
    sub_1A32E2144();
    sub_1A34C9090();

    return result;
  }

  v54 = v10;
  v55 = v16;
  v52 = *(v21 + 20);
  sub_1A328D790(&v24[v52], v19, &qword_1EB0C6800);
  v27 = v61 + 48;
  v53 = *(v61 + 48);
  v28 = v53(v19, 1, v60);
  v56 = v24;
  v29 = v28;
  sub_1A3288FDC(v19, &qword_1EB0C6800);
  if (v29 == 1)
  {
    sub_1A32E2198();
    v26 = swift_allocError();
    *v30 = 0;
LABEL_7:
    swift_willThrow();
    sub_1A32E3808(v56, type metadata accessor for AvatarViewRecipe_Recipe);
    goto LABEL_8;
  }

  v61 = v27;
  v31 = *(v21 + 24);
  sub_1A328D790(&v56[v31], v13, &qword_1EB0C67F8);
  v32 = *(v59 + 48);
  v33 = v58;
  v34 = v32(v13, 1, v58);
  sub_1A3288FDC(v13, &qword_1EB0C67F8);
  if (v34 == 1)
  {
    sub_1A32E2198();
    v26 = swift_allocError();
    *v35 = 1;
    goto LABEL_7;
  }

  v37 = v56;
  v38 = v54;
  sub_1A328D790(&v56[v31], v54, &qword_1EB0C67F8);
  v39 = v37;
  if (v32(v38, 1, v33) == 1)
  {
    v40 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation(0);
    (*(*(v40 - 8) + 56))(v7, 1, 1, v40);
    sub_1A34C9FA0();
    v41 = v32(v38, 1, v33);
    v42 = v55;
    v43 = v53;
    if (v41 != 1)
    {
      sub_1A3288FDC(v38, &qword_1EB0C67F8);
    }
  }

  else
  {
    sub_1A32E35D4(v38, v7, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation);
    v42 = v55;
    v43 = v53;
  }

  v44 = v64;
  sub_1A32E90CC(v7, v67);
  v26 = v44;
  v45 = v71;
  if (v44)
  {
    sub_1A32E3808(v37, type metadata accessor for AvatarViewRecipe_Recipe);
    goto LABEL_8;
  }

  v46 = *&v67[0];
  LODWORD(v64) = BYTE8(v67[0]);
  sub_1A328D790(v37 + v52, v42, &qword_1EB0C6800);
  v47 = v60;
  if (v43(v42, 1, v60) == 1)
  {
    v48 = type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider(0);
    v49 = v57;
    (*(*(v48 - 8) + 56))(v57, 1, 1, v48);
    sub_1A34C9FA0();
    if (v43(v42, 1, v47) != 1)
    {
      sub_1A3288FDC(v42, &qword_1EB0C6800);
    }
  }

  else
  {
    v49 = v57;
    sub_1A32E35D4(v42, v57, type metadata accessor for AvatarViewRecipe_Provider);
  }

  sub_1A32DAA30(v49, v65);
  sub_1A32E3808(v39, type metadata accessor for AvatarViewRecipe_Recipe);
  *v45 = v46;
  *(v45 + 8) = v64;
  v50 = v65[5];
  *(v45 + 80) = v65[4];
  *(v45 + 96) = v50;
  *(v45 + 112) = v66;
  v51 = v65[1];
  *(v45 + 16) = v65[0];
  *(v45 + 32) = v51;
  result = v65[3];
  *(v45 + 48) = v65[2];
  *(v45 + 64) = result;
  return result;
}

uint64_t sub_1A32DAA30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for AvatarViewRecipe_Provider.Emoji(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v39 - v6;
  v7 = type metadata accessor for AvatarViewRecipe_Provider.Monogram(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69C8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - v20;
  sub_1A328D790(a1, v14, &qword_1EB0C69C8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1A3288FDC(v14, &qword_1EB0C69C8);
    sub_1A32E3580();
    swift_allocError();
    swift_willThrow();
    return sub_1A32E3808(a1, type metadata accessor for AvatarViewRecipe_Provider);
  }

  sub_1A32E35D4(v14, v21, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
  sub_1A32E363C(v21, v18, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1A32E3808(a1, type metadata accessor for AvatarViewRecipe_Provider);
      sub_1A32E3808(v21, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
      result = sub_1A32E3808(v18, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0uLL;
      v30 = 0x8000000000000000;
      v29 = 0uLL;
      v24 = 1;
      goto LABEL_8;
    }

    v36 = v42;
    sub_1A32E35D4(v18, v42, type metadata accessor for AvatarViewRecipe_Provider.Emoji);
    v37 = v41;
    sub_1A32E363C(v36, v41, type metadata accessor for AvatarViewRecipe_Provider.Emoji);
    v38 = v53;
    sub_1A328A664(v37, &v44);
    sub_1A32E3808(a1, type metadata accessor for AvatarViewRecipe_Provider);
    sub_1A32E3808(v36, type metadata accessor for AvatarViewRecipe_Provider.Emoji);
    result = sub_1A32E3808(v21, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
    if (!v38)
    {
      v26 = 0;
      v24 = v44;
      v25 = v45;
      v30 = 0x4000000000000000;
      goto LABEL_9;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1A32E3808(a1, type metadata accessor for AvatarViewRecipe_Provider);
      sub_1A32E3808(v21, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
      result = sub_1A32E3808(v18, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0x8000000000000000;
LABEL_8:
      v31 = 0uLL;
      v32 = 0uLL;
LABEL_9:
      v33 = v43;
      *v43 = v24;
      v33[1] = v25;
      v33[2] = v26;
      *(v33 + 3) = v28;
      *(v33 + 5) = v29;
      *(v33 + 7) = v31;
      v33[9] = v27;
      v33[10] = v30;
      *(v33 + 11) = v32;
      return result;
    }

    v34 = v40;
    sub_1A32E35D4(v18, v40, type metadata accessor for AvatarViewRecipe_Provider.Monogram);
    sub_1A32E363C(v34, v9, type metadata accessor for AvatarViewRecipe_Provider.Monogram);
    v35 = v53;
    sub_1A32AB340(v9, &v44);
    sub_1A32E3808(a1, type metadata accessor for AvatarViewRecipe_Provider);
    sub_1A32E3808(v34, type metadata accessor for AvatarViewRecipe_Provider.Monogram);
    result = sub_1A32E3808(v21, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
    if (!v35)
    {
      v24 = v44;
      v25 = v45;
      v28 = v47;
      v29 = v48;
      v31 = v49;
      v27 = v50;
      v32 = v52;
      v26 = v46 & 7;
      v30 = v51 & 7;
      goto LABEL_9;
    }
  }

  return result;
}

__n128 AvatarView.Model.Recipe.init(backgroundRepresentation:provider:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  *a3 = *a1;
  *(a3 + 8) = v3;
  v4 = *(a2 + 80);
  *(a3 + 80) = *(a2 + 64);
  *(a3 + 96) = v4;
  *(a3 + 112) = *(a2 + 96);
  v5 = *(a2 + 16);
  *(a3 + 16) = *a2;
  *(a3 + 32) = v5;
  result = *(a2 + 48);
  *(a3 + 48) = *(a2 + 32);
  *(a3 + 64) = result;
  return result;
}

uint64_t sub_1A32DB000(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AvatarViewRecipe_Provider(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 96);
  v27[4] = *(a2 + 80);
  v27[5] = v13;
  v28 = *(a2 + 112);
  v14 = *(a2 + 32);
  v27[0] = *(a2 + 16);
  v27[1] = v14;
  v15 = *(a2 + 64);
  v27[2] = *(a2 + 48);
  v27[3] = v15;
  v26 = v27;
  sub_1A32E37C0(&qword_1EB0C69E8, type metadata accessor for AvatarViewRecipe_Provider);
  result = sub_1A34CA100();
  if (!v2)
  {
    v25 = v6;
    v29 = 0;
    v17 = type metadata accessor for AvatarViewRecipe_Recipe(0);
    v18 = *(v17 + 20);
    sub_1A3288FDC(a1 + v18, &qword_1EB0C6800);
    sub_1A32E35D4(v12, a1 + v18, type metadata accessor for AvatarViewRecipe_Provider);
    v19 = (*(v10 + 56))(a1 + v18, 0, 1, v9);
    MEMORY[0x1EEE9AC00](v19);
    *(&v24 - 2) = v20;
    *(&v24 - 8) = v21;
    sub_1A32E37C0(&qword_1EB0C69F0, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation);
    v22 = v29;
    result = sub_1A34CA100();
    if (!v22)
    {
      v23 = *(v17 + 24);
      sub_1A3288FDC(a1 + v23, &qword_1EB0C67F8);
      sub_1A32E35D4(v8, a1 + v23, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation);
      return (*(v25 + 56))(a1 + v23, 0, 1, v5);
    }
  }

  return result;
}

unint64_t sub_1A32DB344()
{
  result = qword_1EB0C6780;
  if (!qword_1EB0C6780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6780);
  }

  return result;
}

unint64_t sub_1A32DB398()
{
  result = qword_1EB0C6788;
  if (!qword_1EB0C6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6788);
  }

  return result;
}

unint64_t sub_1A32DB3EC()
{
  result = qword_1EB0C6790;
  if (!qword_1EB0C6790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6790);
  }

  return result;
}

unint64_t sub_1A32DB440()
{
  result = qword_1EB0C6798;
  if (!qword_1EB0C6798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6798);
  }

  return result;
}

unint64_t sub_1A32DB494()
{
  result = qword_1EB0C67A0;
  if (!qword_1EB0C67A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C67A0);
  }

  return result;
}

unint64_t sub_1A32DB4E8()
{
  result = qword_1EB0C67A8;
  if (!qword_1EB0C67A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C67A8);
  }

  return result;
}

unint64_t sub_1A32DB53C()
{
  result = qword_1EB0C67B0;
  if (!qword_1EB0C67B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C67B0);
  }

  return result;
}

unint64_t sub_1A32DB590()
{
  result = qword_1EB0C67E8;
  if (!qword_1EB0C67E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C67E8);
  }

  return result;
}

unint64_t sub_1A32DB5E4()
{
  result = qword_1EB0C67F0;
  if (!qword_1EB0C67F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C67F0);
  }

  return result;
}

uint64_t sub_1A32DB638()
{
  if (*v0)
  {
    return 0x72656469766F7270;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_1A32DB678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x80000001A350C8B0 == a2 || (sub_1A34CDE30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A34CDE30();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1A32DB760(uint64_t a1)
{
  v2 = sub_1A32E21EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A32DB79C(uint64_t a1)
{
  v2 = sub_1A32E21EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AvatarView.Model.Recipe.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6818);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - v5;
  v7 = *v1;
  v8 = *(v1 + 96);
  v32 = *(v1 + 80);
  v33 = v8;
  v34 = *(v1 + 112);
  v9 = *(v1 + 32);
  v28 = *(v1 + 16);
  v29 = v9;
  v10 = *(v1 + 64);
  v30 = *(v1 + 48);
  v31 = v10;
  v11 = a1[3];
  v12 = *(v1 + 8);
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v11);
  sub_1A31EE004(v7, v12);
  sub_1A32E21EC();
  sub_1A34CDFA0();
  *&v21 = v7;
  BYTE8(v21) = v12;
  LOBYTE(v19[0]) = 0;
  sub_1A32E2240();
  v16 = v18[1];
  sub_1A34CDDC0();
  sub_1A31ECC9C(v21, BYTE8(v21));
  if (!v16)
  {
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v24 = v31;
    v35 = 1;
    sub_1A3288E7C(&v28, v19);
    sub_1A32E2294();
    sub_1A34CDDC0();
    v19[4] = v25;
    v19[5] = v26;
    v20 = v27;
    v19[0] = v21;
    v19[1] = v22;
    v19[2] = v23;
    v19[3] = v24;
    sub_1A3288F88(v19);
  }

  return (*(v4 + 8))(v6, v15);
}

uint64_t AvatarView.Model.Recipe.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6838);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20[-v6 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A32E21EC();
  sub_1A34CDF90();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v8 = v5;
  v9 = v38;
  v20[0] = 0;
  sub_1A32E22E8();
  sub_1A34CDD30();
  v10 = v21;
  HIDWORD(v19) = v22;
  v29 = 1;
  sub_1A32E233C();
  sub_1A34CDD30();
  (*(v8 + 8))(v7, v4);
  *&v37[23] = v31;
  *&v37[7] = v30;
  *&v37[39] = v32;
  *&v37[103] = v36;
  *&v37[87] = v35;
  *&v37[71] = v34;
  *&v37[55] = v33;
  v11 = v10;
  *v20 = v10;
  LOBYTE(v10) = BYTE4(v19);
  v20[8] = BYTE4(v19);
  *&v20[9] = *v37;
  *&v20[41] = *&v37[32];
  *&v20[25] = *&v37[16];
  *&v20[104] = *&v37[95];
  *&v20[89] = *&v37[80];
  *&v20[73] = *&v37[64];
  *&v20[57] = *&v37[48];
  v12 = *v20;
  v13 = *&v20[16];
  v14 = *&v20[48];
  *(v9 + 32) = *&v20[32];
  *(v9 + 48) = v14;
  *v9 = v12;
  *(v9 + 16) = v13;
  v15 = *&v20[64];
  v16 = *&v20[80];
  v17 = *&v20[96];
  *(v9 + 112) = *&v20[112];
  *(v9 + 80) = v16;
  *(v9 + 96) = v17;
  *(v9 + 64) = v15;
  sub_1A32E2390(v20, &v21);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v26 = *&v37[48];
  v27 = *&v37[64];
  v28[0] = *&v37[80];
  *(v28 + 15) = *&v37[95];
  v23 = *v37;
  v24 = *&v37[16];
  v21 = v11;
  v22 = v10;
  v25 = *&v37[32];
  return sub_1A3288E28(&v21);
}

uint64_t sub_1A32DBD74(uint64_t a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1A3287998(v31);
  v5 = a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe;
  v6 = *(a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 80);
  v33[4] = *(a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 64);
  v33[5] = v6;
  v33[6] = *(a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 96);
  v34 = *(a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 112);
  v7 = *(a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 16);
  v33[0] = *(a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe);
  v33[1] = v7;
  v8 = *(a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 48);
  v33[2] = *(a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 32);
  v33[3] = v8;
  v9 = v31[3];
  *(v5 + 32) = v31[2];
  *(v5 + 48) = v9;
  v10 = v31[1];
  *v5 = v31[0];
  *(v5 + 16) = v10;
  *(v5 + 112) = v32;
  v11 = v31[6];
  *(v5 + 80) = v31[5];
  *(v5 + 96) = v11;
  *(v5 + 64) = v31[4];
  sub_1A3288FDC(v33, &qword_1EB0CBDB0);
  v12 = OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model__representation;
  swift_beginAccess();
  v13 = *(a1 + v12);
  v30 = *(a3 + 96);
  v14 = *(a3 + 80);
  v28 = *(a3 + 64);
  v29 = v14;
  v15 = *(a3 + 48);
  v26 = *(a3 + 32);
  v27 = v15;
  v16 = *(a3 + 16);
  v24 = *a3;
  v25 = v16;
  v17 = *(v13 + 24);
  v18 = *(v13 + 40);
  v19 = *(v13 + 56);
  v20 = *(v13 + 72);
  v21 = *(v13 + 88);
  v22 = *(v13 + 104);
  v36 = *(v13 + 120);
  v35[0] = v17;
  v35[1] = v18;
  v35[4] = v21;
  v35[5] = v22;
  v35[2] = v19;
  v35[3] = v20;
  sub_1A34C9010();
  sub_1A32E31E8(a3, v39);
  v37[4] = v28;
  v37[5] = v29;
  v38 = v30;
  v37[0] = v24;
  v37[1] = v25;
  v37[2] = v26;
  v37[3] = v27;
  memmove((v13 + 24), &v24, 0x68uLL);
  sub_1A32E33A0(v35);
  sub_1A32E31E8(v37, v39);
  sub_1A34C9010();
  sub_1A34CA2D0();

  v39[4] = v28;
  v39[5] = v29;
  v40 = v30;
  v39[0] = v24;
  v39[1] = v25;
  v39[2] = v26;
  v39[3] = v27;
  return sub_1A32E33A0(v39);
}

void sub_1A32DBF5C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A34C9780();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  *&v51 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v49 = sub_1A34CA250();
  *&v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  *&v50 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v1;
  sub_1A32F2D5C(&v72);
  v8 = v72;
  if (v72)
  {
    v9 = WORD4(v72);
    sub_1A32F2CA8(&v79);
    if ((v80 & 1) == 0)
    {
      v10 = CGImageCreateWithImageInRect(v8, v79);
      if (v10)
      {
        v11 = v10;

        v8 = v11;
      }
    }

    v12 = v9 & 0x1FF;
    v76 = v8;
    v77 = v12;
  }

  else
  {
    sub_1A32F2D78(&v76);
    v8 = v76;
    v12 = v77;
  }

  sub_1A3287998(&v66);
  v70[4] = *&v67[48];
  v70[5] = v68[0];
  v70[6] = v68[1];
  v73 = *v67;
  v74[0] = *&v67[16];
  v74[1] = *&v67[32];
  v74[2] = *&v67[48];
  v74[3] = v68[0];
  v75[0] = v68[1];
  v71 = v69;
  v70[0] = v66;
  v70[1] = *v67;
  v70[2] = *&v67[16];
  v70[3] = *&v67[32];
  v72 = v66;
  *&v75[1] = v69;
  if (*&v67[16] >> 3 != 0xFFFFFFFFLL || *&v75[0] >= 8uLL)
  {
    v46 = v4;
    v47 = v5;
    sub_1A3288E7C(&v73, v53);
    sub_1A3288FDC(v70, &qword_1EB0CBDB0);
    v61 = v74[3];
    v62 = v75[0];
    v57 = v73;
    v58 = v74[0];
    v59 = v74[1];
    v60 = v74[2];
    v63 = *&v75[1];
    v64 = v8;
    v65 = v12;
    v22 = *(&v73 + 1);
    v23 = v73;
    v24 = *(&v74[3] + 1);
    if (*&v75[0] >> 62)
    {
      if (*&v75[0] >> 62 == 1)
      {

        sub_1A3288FDC(&v57, &qword_1EB0C52E8);
        v29 = 0;
        v30 = 0x8000000000000000;
      }

      else
      {
        v5 = v47;
        if (*&v75[0] != 0x8000000000000000 || (v32 = vorrq_s8(vorrq_s8(*(v75 + 8), *(&v74[1] + 8)), vorrq_s8(*(&v74[2] + 8), *(v74 + 8))), *&v74[0] | *&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | *(&v74[3] + 1) | v73 | *(&v73 + 1)))
        {
          if (!v8)
          {
            sub_1A3288FDC(&v57, &qword_1EB0C52E8);
            v4 = v46;
            goto LABEL_9;
          }

          v37 = v8;
          sub_1A3288FDC(&v57, &qword_1EB0C52E8);
          v29 = 0;
          v22 = v12 & 0x1FF;
          v30 = 0x4000000000000000;
          v23 = v8;
        }

        else
        {
          sub_1A3288FDC(&v57, &qword_1EB0C52E8);
          v22 = 0;
          v29 = 0;
          v24 = 0;
          v25 = 0uLL;
          v30 = 0xC000000000000000;
          v26 = 0uLL;
          v23 = 1;
          v27 = 0uLL;
          v28 = 0uLL;
        }
      }
    }

    else
    {
      v29 = v74[0] & 7;
      v30 = v75[0] & 7;
      v50 = *(&v74[1] + 8);
      v51 = *(v74 + 8);
      v53[4] = v74[3];
      v55 = *(&v75[0] + 1);
      v53[0] = v73;
      v53[1] = v74[0];
      v53[2] = v74[1];
      v53[3] = v74[2];
      v56 = *&v75[1];
      v54 = *&v75[0] & 0x3FFFFFFFFFFFFFFFLL;
      v48 = *(v75 + 8);
      v49 = *(&v74[2] + 8);
      sub_1A31FA9C4(v53, &v52);
      sub_1A3288FDC(&v57, &qword_1EB0C52E8);
      v28 = v48;
      v27 = v49;
      v26 = v50;
      v25 = v51;
    }

    *a1 = v23;
    *(a1 + 8) = v22;
    *(a1 + 16) = v29;
    *(a1 + 24) = v25;
    *(a1 + 40) = v26;
    *(a1 + 56) = v27;
    *(a1 + 72) = v24;
    *(a1 + 80) = v30;
    *(a1 + 88) = v28;
    return;
  }

LABEL_9:
  if ([*(v2 + 16) hasBeenPersisted])
  {
    v46 = v4;
    v47 = v5;
    v45 = v12;
    if (qword_1ED854B30 != -1)
    {
      swift_once();
    }

    v13 = qword_1ED857E30;
    v14 = sub_1A32E37C0(&qword_1ED8547B0, type metadata accessor for CNContactAvatarContact);
    v15 = *(v14 + 80);
    v43 = type metadata accessor for CNContactAvatarContact();
    v44 = v14;
    if (v15(v13))
    {
      v16 = v47;
      if (qword_1ED854BB8 != -1)
      {
        swift_once();
      }

      v17 = v49;
      v18 = __swift_project_value_buffer(v49, qword_1ED857E68);
      (*(v48 + 16))(v50, v18, v17);
      sub_1A34C9F00();
      swift_allocObject();
      sub_1A34C9E90();
      v19 = v51;
      sub_1A32F2928(v51);
      sub_1A34C9740();
      (*(v16 + 8))(v19, v46);
      sub_1A34C9ED0();

      sub_1A34C9EA0();
      if (v8)
      {
        v20 = v8;
        v21 = v45;
        if ((v45 & 0x100) != 0)
        {
          sub_1A34831A0();
        }

        *a1 = v8;
        *(a1 + 8) = v21 & 0x1FF;
        *(a1 + 16) = 0;
        *(a1 + 80) = 0x4000000000000000;
        sub_1A34C9E80();
      }

      else
      {
        *(&v58 + 1) = v43;
        *&v59 = v44;
        *&v57 = v2;
        sub_1A34C9010();
        sub_1A31F3238(&v57, &v66);
        v38 = *(&v66 + 1);
        if (*(&v66 + 1))
        {
          v39 = *&v67[56];
          v40 = v67[0] & 7;
          v41 = v68[0] & 7;
          *a1 = v66;
          *(a1 + 8) = v38;
          *(a1 + 16) = v40;
          *(a1 + 24) = *&v67[8];
          *(a1 + 40) = *&v67[24];
          *(a1 + 56) = *&v67[40];
          *(a1 + 72) = v39;
          *(a1 + 80) = v41;
          *(a1 + 88) = *(v68 + 8);
        }

        else
        {
          *a1 = 1;
          *(a1 + 8) = 0u;
          *(a1 + 24) = 0u;
          *(a1 + 40) = 0u;
          *(a1 + 56) = 0u;
          *(a1 + 72) = 0;
          *(a1 + 80) = 0xC000000000000000;
          *(a1 + 88) = 0;
          *(a1 + 96) = 0;
        }

        sub_1A34C9E80();
      }

      return;
    }

LABEL_33:
    *a1 = 1;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0xC000000000000000;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    return;
  }

  if (!v8)
  {
    *(&v58 + 1) = type metadata accessor for CNContactAvatarContact();
    *&v59 = sub_1A32E37C0(&qword_1ED8547B0, type metadata accessor for CNContactAvatarContact);
    *&v57 = v2;
    sub_1A34C9010();
    sub_1A31F3238(&v57, &v66);
    v33 = *(&v66 + 1);
    if (*(&v66 + 1))
    {
      v34 = *&v67[56];
      v35 = v67[0] & 7;
      v36 = v68[0] & 7;
      *a1 = v66;
      *(a1 + 8) = v33;
      *(a1 + 16) = v35;
      *(a1 + 24) = *&v67[8];
      *(a1 + 40) = *&v67[24];
      *(a1 + 56) = *&v67[40];
      *(a1 + 72) = v34;
      *(a1 + 80) = v36;
      *(a1 + 88) = *(v68 + 8);
      return;
    }

    goto LABEL_33;
  }

  if ((v12 & 0x100) != 0)
  {
    v31 = v8;
    sub_1A34831A0();
  }

  *a1 = v8;
  *(a1 + 8) = v12 & 0x1FF;
  *(a1 + 16) = 0;
  *(a1 + 80) = 0x4000000000000000;
}

uint64_t sub_1A32DC7A8()
{
  v1 = OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_isObservationEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A32DC7EC(char a1)
{
  v3 = OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_isObservationEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AvatarView.Model.__allocating_init(contact:listener:notifyObservableObject:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = type metadata accessor for CNContactAvatarContact();
  swift_allocObject();
  v9 = sub_1A32F27E4(a1, 1);
  v19[3] = v8;
  v19[4] = sub_1A32E37C0(&qword_1ED8547B0, type metadata accessor for CNContactAvatarContact);
  v19[0] = v9;
  type metadata accessor for AvatarView.Model();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v19, v8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v19[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = sub_1A32E0314(*v14, a2, a3, 1, a4, v10);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v16;
}

void sub_1A32DCA2C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A34C9780();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v46 = sub_1A34CA250();
  *&v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  *&v47 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v1;
  sub_1A32F2D5C(&v69);
  v9 = v69;
  if (v69)
  {
    v10 = WORD4(v69);
    sub_1A32F2CA8(&v76);
    if ((v77 & 1) == 0)
    {
      v11 = CGImageCreateWithImageInRect(v9, v76);
      if (v11)
      {
        v12 = v11;

        v9 = v12;
      }
    }

    v13 = v10 & 0x1FF;
    v73 = v9;
    v74 = v13;
  }

  else
  {
    sub_1A32F2D78(&v73);
    v9 = v73;
    v13 = v74;
  }

  sub_1A3287998(v62);
  v71[3] = v66;
  v72[0] = v67;
  *&v72[1] = v68;
  v69 = v62[0];
  v70 = v62[1];
  v71[0] = v63;
  v71[1] = v64;
  v71[2] = v65;
  if (v63 >> 3 != 0xFFFFFFFF || *&v72[0] >= 8uLL)
  {
    v42 = v7;
    v43 = v4;
    sub_1A3288E7C(&v70, &v49);
    sub_1A3288FDC(v62, &qword_1EB0CBDB0);
    v58[3] = v71[3];
    *v59 = v72[0];
    v57 = v70;
    v58[0] = v71[0];
    v58[1] = v71[1];
    v58[2] = v71[2];
    *&v59[16] = *&v72[1];
    v60 = v9;
    LODWORD(v44) = v13;
    v61 = v13;
    v22 = *(&v70 + 1);
    v23 = v70;
    v24 = *(&v71[3] + 1);
    if (*&v72[0] >> 62)
    {
      if (*&v72[0] >> 62 == 1)
      {

        sub_1A3288FDC(&v57, &qword_1EB0C52E8);
        v29 = 0;
        v30 = 0x8000000000000000;
      }

      else if (*&v72[0] != 0x8000000000000000 || (v32 = vorrq_s8(vorrq_s8(*(v72 + 8), *(&v71[1] + 8)), vorrq_s8(*(&v71[2] + 8), *(v71 + 8))), *&v71[0] | *&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | *(&v71[3] + 1) | v70 | *(&v70 + 1)))
      {
        if (!v9)
        {
          sub_1A3288FDC(&v57, &qword_1EB0C52E8);
          v7 = v42;
          v4 = v43;
          v13 = v44;
          goto LABEL_9;
        }

        v33 = v9;
        sub_1A3288FDC(&v57, &qword_1EB0C52E8);
        v29 = 0;
        v22 = v44 & 0x1FF;
        v30 = 0x4000000000000000;
        v23 = v9;
      }

      else
      {
        sub_1A3288FDC(&v57, &qword_1EB0C52E8);
        v22 = 0;
        v29 = 0;
        v24 = 0;
        v25 = 0uLL;
        v30 = 0xC000000000000000;
        v26 = 0uLL;
        v23 = 1;
        v27 = 0uLL;
        v28 = 0uLL;
      }
    }

    else
    {
      v29 = v71[0] & 7;
      v30 = v72[0] & 7;
      v46 = *(&v71[1] + 8);
      v47 = *(v71 + 8);
      v53 = v71[3];
      v55 = *(&v72[0] + 1);
      v49 = v70;
      v50 = v71[0];
      v51 = v71[1];
      v52 = v71[2];
      v56 = *&v72[1];
      v54 = *&v72[0] & 0x3FFFFFFFFFFFFFFFLL;
      v44 = *(v72 + 8);
      v45 = *(&v71[2] + 8);
      sub_1A31FA9C4(&v49, &v48);
      sub_1A3288FDC(&v57, &qword_1EB0C52E8);
      v28 = v44;
      v27 = v45;
      v26 = v46;
      v25 = v47;
    }

    *a1 = v23;
    *(a1 + 8) = v22;
    *(a1 + 16) = v29;
    *(a1 + 24) = v25;
    *(a1 + 40) = v26;
    *(a1 + 56) = v27;
    *(a1 + 72) = v24;
    *(a1 + 80) = v30;
    *(a1 + 88) = v28;
    return;
  }

LABEL_9:
  if ([*(v2 + 16) hasBeenPersisted])
  {
    v41 = v5;
    v42 = v7;
    LODWORD(v44) = v13;
    v43 = v4;
    if (qword_1ED854B30 != -1)
    {
      swift_once();
    }

    v14 = qword_1ED857E30;
    v15 = sub_1A32E37C0(&qword_1ED8547B0, type metadata accessor for CNContactAvatarContact);
    v16 = *(v15 + 80);
    v39 = type metadata accessor for CNContactAvatarContact();
    v40 = v15;
    if (v16(v14))
    {
      if (qword_1ED854BB8 != -1)
      {
        swift_once();
      }

      v17 = v46;
      v18 = __swift_project_value_buffer(v46, qword_1ED857E68);
      (*(v45 + 16))(v47, v18, v17);
      sub_1A34C9F00();
      swift_allocObject();
      sub_1A34C9E90();
      v19 = v42;
      sub_1A32F2928(v42);
      sub_1A34C9740();
      (*(v41 + 8))(v19, v43);
      sub_1A34C9ED0();

      sub_1A34C9EA0();
      if (v9)
      {
        v20 = v9;
        if ((v44 & 0x100) != 0)
        {
          sub_1A34831A0();
        }

        v21 = v44 & 0x1FF;
        *a1 = v9;
        *(a1 + 8) = v21;
        *(a1 + 16) = 0;
        *(a1 + 80) = 0x4000000000000000;
        sub_1A34C9E80();
      }

      else
      {
        *(&v50 + 1) = v39;
        *&v51 = v40;
        *&v49 = v2;
        sub_1A34C9010();
        sub_1A31F3238(&v49, &v57);
        v34 = *(&v57 + 1);
        if (*(&v57 + 1))
        {
          v35 = *(&v58[3] + 1);
          v36 = v58[0] & 7;
          v37 = v59[0] & 7;
          *a1 = v57;
          *(a1 + 8) = v34;
          *(a1 + 16) = v36;
          *(a1 + 24) = *(v58 + 8);
          *(a1 + 40) = *(&v58[1] + 8);
          *(a1 + 56) = *(&v58[2] + 8);
          *(a1 + 72) = v35;
          *(a1 + 80) = v37;
          *(a1 + 88) = *&v59[8];
        }

        else
        {
          *(a1 + 48) = 0u;
          *(a1 + 64) = 0u;
          *(a1 + 16) = 0u;
          *(a1 + 32) = 0u;
          *a1 = 0u;
          *(a1 + 88) = 0;
          *(a1 + 96) = 0;
          *(a1 + 80) = 0xC000000000000000;
        }

        sub_1A34C9E80();
      }

      return;
    }

LABEL_31:
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 80) = 0xC000000000000000;
    return;
  }

  if (!v9)
  {
    goto LABEL_31;
  }

  if ((v13 & 0x100) != 0)
  {
    v31 = v9;
    sub_1A34831A0();
  }

  *a1 = v9;
  *(a1 + 8) = v13 & 0x1FF;
  *(a1 + 16) = 0;
  *(a1 + 80) = 0x4000000000000000;
}

uint64_t sub_1A32DD18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[33] = a4;
  v5[34] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6998);
  v5[35] = v6;
  v5[36] = *(v6 - 8);
  v5[37] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69A0);
  v5[38] = v7;
  v5[39] = *(v7 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = sub_1A34CD450();
  v5[42] = sub_1A34CD440();
  v9 = sub_1A34CD3E0();
  v5[43] = v9;
  v5[44] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A32DD2F8, v9, v8);
}

uint64_t sub_1A32DD2F8()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v0[31] = v0[33];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69A8);
  v5 = sub_1A3284D0C(&qword_1ED853D10, &qword_1EB0C69A8);
  MEMORY[0x1A58EBC10](v4, v5);
  sub_1A34CA2B0();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v0[45] = sub_1A34CD440();
  v6 = sub_1A3284D0C(&unk_1EB0C1228, &qword_1EB0C69A0);
  v7 = swift_task_alloc();
  v0[46] = v7;
  *v7 = v0;
  v7[1] = sub_1A32DD4A8;
  v8 = v0[38];

  return MEMORY[0x1EEE6D8C8](v0 + 2, v8, v6);
}

uint64_t sub_1A32DD4A8()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 360);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1A34CD3E0();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1A32DD8D8;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1A34CD3E0();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1A32DD640;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1A32DD640()
{

  v1 = *(v0 + 344);
  v2 = *(v0 + 352);

  return MEMORY[0x1EEE6DFA0](sub_1A32DD6A4, v1, v2);
}

uint64_t sub_1A32DD6A4()
{
  v1 = *(v0 + 16);
  *(v0 + 136) = *(v0 + 32);
  v2 = *(v0 + 80);
  *(v0 + 200) = *(v0 + 96);
  v3 = *(v0 + 48);
  *(v0 + 168) = *(v0 + 64);
  *(v0 + 184) = v2;
  *(v0 + 120) = v1;
  *(v0 + 216) = *(v0 + 112);
  *(v0 + 152) = v3;
  if (*(v0 + 136) >> 3 == 0xFFFFFFFFLL && *(v0 + 200) < 8uLL || (sub_1A3288FDC(v0 + 120, &unk_1EB0C69B8), !swift_weakLoadStrong()))
  {
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    type metadata accessor for AvatarView.Model();
    sub_1A32E37C0(&qword_1ED854E50, type metadata accessor for AvatarView.Model);
    sub_1A34CA2C0();
    sub_1A34CA2F0();

    *(v0 + 360) = sub_1A34CD440();
    v4 = sub_1A3284D0C(&unk_1EB0C1228, &qword_1EB0C69A0);
    v5 = swift_task_alloc();
    *(v0 + 368) = v5;
    *v5 = v0;
    v5[1] = sub_1A32DD4A8;
    v6 = *(v0 + 304);

    return MEMORY[0x1EEE6D8C8](v0 + 16, v6, v4);
  }
}

uint64_t sub_1A32DD8D8()
{
  *(v0 + 256) = *(v0 + 376);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69B0);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1A32DD964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v6 = sub_1A34C9780();
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  v7 = sub_1A34CA250();
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A32DDA80, 0, 0);
}

uint64_t sub_1A32DDA80()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 200), *(*(v0 + 200) + 24));
  sub_1A32F3104((v0 + 16));
  v1 = *(v0 + 40);
  v2 = __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  *(v0 + 80) = swift_getAssociatedTypeWitness();
  *(v0 + 88) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  sub_1A34CD510();

  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, *(v0 + 80));
  v5 = swift_task_alloc();
  *(v0 + 264) = v5;
  *v5 = v0;
  v5[1] = sub_1A32DDC64;

  return MEMORY[0x1EEE6D8D0](v0 + 96, 0, 0);
}

uint64_t sub_1A32DDC64()
{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A32DDD74, 0, 0);
  }

  return result;
}

uint64_t sub_1A32DDD74()
{
  if (*(v0 + 120))
  {
    sub_1A31EE568((v0 + 96), v0 + 136);
    Strong = swift_weakLoadStrong();
    *(v0 + 272) = Strong;
    if (Strong)
    {
      v2 = Strong;
      if (qword_1ED854BB8 != -1)
      {
        swift_once();
      }

      v4 = *(v0 + 248);
      v3 = *(v0 + 256);
      v5 = *(v0 + 232);
      v6 = *(v0 + 240);
      v7 = *(v0 + 216);
      v8 = *(v0 + 224);
      v9 = __swift_project_value_buffer(v6, qword_1ED857E68);
      (*(v4 + 16))(v3, v9, v6);
      sub_1A34C9F00();
      swift_allocObject();
      sub_1A34C9E90();
      __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
      sub_1A32F2928(v5);
      sub_1A34C9740();
      (*(v8 + 8))(v5, v7);
      *(v0 + 280) = sub_1A34C9ED0();

      v10 = swift_task_alloc();
      *(v0 + 288) = v10;
      *(v10 + 16) = v2;
      *(v10 + 24) = v0 + 136;
      v14 = (*MEMORY[0x1E6996450] + MEMORY[0x1E6996450]);
      v11 = swift_task_alloc();
      *(v0 + 296) = v11;
      *v11 = v0;
      v11[1] = sub_1A32DE02C;

      return v14();
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 136);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v13 = *(v0 + 8);

  return v13();
}

void sub_1A32DE02C()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1A32DE170, 0, 0);
  }
}

uint64_t sub_1A32DE170()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 136);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, *(v0 + 80));
  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  *v1 = v0;
  v1[1] = sub_1A32DDC64;

  return MEMORY[0x1EEE6D8D0](v0 + 96, 0, 0);
}

uint64_t sub_1A32DE244(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A32C600C;

  return sub_1A32DFA58(v5, a2);
}

uint64_t sub_1A32DE304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(v5 + 16) = a4;
  v7 = *__swift_project_boxed_opaque_existential_1(a5, a5[3]);
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_1A32DE3C8;

  return sub_1A32E12B4(v7, a4);
}

uint64_t sub_1A32DE3C8()
{

  return MEMORY[0x1EEE6DFA0](sub_1A32DE4C4, 0, 0);
}

uint64_t sub_1A32DE4C4()
{
  sub_1A34CD450();
  *(v0 + 32) = sub_1A34CD440();
  v2 = sub_1A34CD3E0();

  return MEMORY[0x1EEE6DFA0](sub_1A32DE558, v2, v1);
}

uint64_t sub_1A32DE558()
{
  v1 = v0[2];

  v2 = v1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_listener;
  v0[5] = swift_unknownObjectWeakLoadStrong();
  v0[6] = *(v2 + 8);

  return MEMORY[0x1EEE6DFA0](sub_1A32DE5E4, 0, 0);
}

uint64_t sub_1A32DE5E4()
{
  if (v0[5])
  {
    v1 = v0[6];
    ObjectType = swift_getObjectType();
    (*(v1 + 8))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  v3 = v0[1];

  return v3();
}

uint64_t AvatarView.Model.deinit()
{
  v1 = OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_contactID;
  v2 = sub_1A34C9780();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1A31EFD1C(*(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe), *(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 8), *(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 16), *(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 24), *(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 32), *(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 40), *(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 48), *(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 56), *(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 64), *(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 72), *(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 80), *(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 88), *(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 96));

  sub_1A31F08B0(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_listener);
  return v0;
}

uint64_t sub_1A32DE768()
{
  if (*v0)
  {
    return 0x617A696E6167726FLL;
  }

  else
  {
    return 0x6E6F73726570;
  }
}

uint64_t sub_1A32DE7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
  if (v6 || (sub_1A34CDE30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617A696E6167726FLL && a2 == 0xEC0000006E6F6974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A34CDE30();

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

uint64_t sub_1A32DE884(uint64_t a1)
{
  v2 = sub_1A32E23C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A32DE8C0(uint64_t a1)
{
  v2 = sub_1A32E23C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A32DE8FC(uint64_t a1)
{
  v2 = sub_1A32E241C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A32DE938(uint64_t a1)
{
  v2 = sub_1A32E241C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A32DE974(uint64_t a1)
{
  v2 = sub_1A32E2470();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A32DE9B0(uint64_t a1)
{
  v2 = sub_1A32E2470();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AvatarView.ContactType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6858);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6860);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6868);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A32E23C8();
  sub_1A34CDFA0();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A32E241C();
    v14 = v18;
    sub_1A34CDD50();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A32E2470();
    sub_1A34CDD50();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t AvatarView.ContactType.hashValue.getter()
{
  v1 = *v0;
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](v1);
  return sub_1A34CDF70();
}

uint64_t AvatarView.ContactType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6888);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6890);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6898);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A32E23C8();
  v13 = v31;
  sub_1A34CDF90();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1A34CDD40();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1A34CDB20();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C67E0);
    *v21 = &type metadata for AvatarView.ContactType;
    sub_1A34CDCB0();
    sub_1A34CDB10();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1A32E241C();
    sub_1A34CDCA0();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A32E2470();
    sub_1A34CDCA0();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t sub_1A32DF194(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69C8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27[-1] - v7;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  v14 = a2[5];
  v16 = a2[6];
  v15 = a2[7];
  v18 = a2[8];
  v17 = a2[9];
  v20 = a2[10];
  v19 = a2[11];
  v21 = a2[12];
  if (v20 >> 62)
  {
    if (v20 >> 62 == 1)
    {
      v22 = type metadata accessor for AvatarViewRecipe_Provider.Emoji(0);
      MEMORY[0x1EEE9AC00](v22);
      *(&v26 - 2) = v9;
      *(&v26 - 1) = v10;
      sub_1A32E37C0(&qword_1EB0C69F8, type metadata accessor for AvatarViewRecipe_Provider.Emoji);
      result = sub_1A34CA100();
      if (v3)
      {
        return result;
      }
    }

    else
    {
      sub_1A34C9FA0();
    }
  }

  else
  {
    v27[0] = *a2;
    v27[1] = v10;
    v27[2] = v11;
    v27[3] = v12;
    v27[4] = v13;
    v27[5] = v14;
    v27[6] = v16;
    v27[7] = v15;
    v27[8] = v18;
    v27[9] = v17;
    v27[10] = v20 & 0x3FFFFFFFFFFFFFFFLL;
    v27[11] = v19;
    v27[12] = v21;
    v24 = type metadata accessor for AvatarViewRecipe_Provider.Monogram(0);
    MEMORY[0x1EEE9AC00](v24);
    *(&v26 - 2) = v27;
    sub_1A32E37C0(&unk_1EB0C6A00, type metadata accessor for AvatarViewRecipe_Provider.Monogram);
    result = sub_1A34CA100();
    if (v3)
    {
      return result;
    }
  }

  v25 = type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v25 - 8) + 56))(v8, 0, 1, v25);
  return sub_1A32E36FC(v8, a1);
}

uint64_t sub_1A32DF474(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MonogramRecipe_Recipe(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a2;
  sub_1A32E37C0(&qword_1EB0C5C20, type metadata accessor for MonogramRecipe_Recipe);
  result = sub_1A34CA100();
  if (!v2)
  {
    v9 = sub_1A34CA0C0();
    v11 = v10;
    sub_1A32E3808(v7, type metadata accessor for MonogramRecipe_Recipe);
    result = sub_1A31EC234(*a1, *(a1 + 8));
    *a1 = v9;
    *(a1 + 8) = v11;
  }

  return result;
}

uint64_t sub_1A32DF5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for EmojiRecipe_Recipe();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a2;
  v17 = a3;
  sub_1A32E37C0(&qword_1EB0C6A10, type metadata accessor for EmojiRecipe_Recipe);
  sub_1A34CA100();
  v10 = sub_1A34CA0C0();
  if (v3)
  {
    return sub_1A32E3808(v9, type metadata accessor for EmojiRecipe_Recipe);
  }

  v13 = v10;
  v14 = v11;
  sub_1A32E3808(v9, type metadata accessor for EmojiRecipe_Recipe);
  result = sub_1A31EC234(*a1, *(a1 + 8));
  *a1 = v13;
  *(a1 + 8) = v14;
  return result;
}

uint64_t sub_1A32DF748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A34C9780();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A34CA250();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CNContactAvatarContact();
  v21 = sub_1A32E37C0(&qword_1ED8547B0, type metadata accessor for CNContactAvatarContact);
  v19[0] = a1;
  v14 = qword_1ED854BB8;
  sub_1A34C9010();
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_1ED857E68);
  (*(v11 + 16))(v13, v15, v10);
  sub_1A34C9F00();
  swift_allocObject();
  sub_1A34C9E90();
  __swift_project_boxed_opaque_existential_1(v19, v20);
  sub_1A32F2928(v9);
  sub_1A34C9740();
  (*(v7 + 8))(v9, v6);
  sub_1A34C9ED0();

  MEMORY[0x1EEE9AC00](v16);
  *(&v18 - 4) = a3;
  *(&v18 - 3) = v19;
  *(&v18 - 2) = a2;
  sub_1A34C9EC0();

  return __swift_destroy_boxed_opaque_existential_0(v19);
}

uint64_t sub_1A32DFA58(uint64_t a1, uint64_t a2)
{
  v2[20] = a2;
  v4 = sub_1A34CCF40();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  v5 = type metadata accessor for CNContactAvatarContact();
  v2[24] = v5;
  v2[18] = v5;
  v2[19] = sub_1A32E37C0(&qword_1ED8547B0, type metadata accessor for CNContactAvatarContact);
  v2[15] = a1;
  sub_1A34C9010();

  return MEMORY[0x1EEE6DFA0](sub_1A32DFB74, 0, 0);
}

uint64_t sub_1A32DFB74()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  sub_1A328B6E0();
  *v1 = sub_1A34CD750();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8018], v3);
  v4 = sub_1A34CCF60();
  v5 = (*(v2 + 8))(v1, v3);
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v0 + 15, v0[24]);
    sub_1A32DBF5C((v0 + 2));
    sub_1A34CD450();
    v0[25] = sub_1A34CD440();
    v8 = sub_1A34CD3E0();
    v10 = v9;
    v5 = sub_1A32DFC98;
    v6 = v8;
    v7 = v10;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1A32DFC98()
{
  v1 = v0[20];

  v2 = __swift_project_boxed_opaque_existential_1(v0 + 15, v0[18]);
  sub_1A32DF748(*v2, (v0 + 2), v1);
  sub_1A32E33A0((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0((v0 + 15));

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A32DFD34(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = sub_1A34C9780();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A34CA250();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CNContactAvatarContact();
  v34 = v11;
  v27 = sub_1A32E37C0(&qword_1ED8547B0, type metadata accessor for CNContactAvatarContact);
  v35 = v27;
  v33[0] = a1;
  v12 = qword_1ED854BB8;
  sub_1A34C9010();
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, qword_1ED857E68);
  (*(v8 + 16))(v10, v13, v7);
  sub_1A34C9F00();
  swift_allocObject();
  sub_1A34C9E90();
  __swift_project_boxed_opaque_existential_1(v33, v34);
  sub_1A32F2928(v6);
  sub_1A34C9740();
  v14 = *(v4 + 8);
  v26 = v3;
  v14(v6, v3);
  v15 = sub_1A34C9ED0();

  v28 = v15;
  sub_1A34C9EA0();
  v16 = *__swift_project_boxed_opaque_existential_1(v33, v34);
  if (qword_1ED854DF8 != -1)
  {
    swift_once();
  }

  v17 = *(v16 + 16);
  sub_1A3404424(v17);
  v19 = v18;

  v20 = *(v16 + 24);
  if (v20 != *(v19 + 24))
  {
    v21 = *(v19 + 16);
    swift_allocObject();
    v22 = sub_1A32F27E4(v21, v20);
    v23 = v21;

    v19 = v22;
  }

  v31 = v11;
  v32 = v27;
  v30[0] = v19;
  __swift_project_boxed_opaque_existential_1(v30, v11);
  sub_1A32DBF5C(v36);
  v24 = __swift_project_boxed_opaque_existential_1(v30, v31);
  sub_1A32DF748(*v24, v36, v29);
  sub_1A32E33A0(v36);
  __swift_destroy_boxed_opaque_existential_0(v30);
  sub_1A34C9E80();

  return __swift_destroy_boxed_opaque_existential_0(v33);
}

uint64_t sub_1A32E0314(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v106 = a4;
  v107 = a5;
  v117 = a2;
  v118 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v110 = &v97 - v9;
  v105 = sub_1A34C9780();
  v116 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v11 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A34CA250();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for CNContactAvatarContact();
  v145 = v109;
  v115 = sub_1A32E37C0(&qword_1ED8547B0, type metadata accessor for CNContactAvatarContact);
  v146 = v115;
  v144[0] = a1;
  v16 = (a6 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe);
  *v16 = 0u;
  v16[1] = 0u;
  *(v16 + 4) = 0x7FFFFFFF8;
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0u;
  v17 = OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_subscriptions;
  *(a6 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_subscriptions) = MEMORY[0x1E69E7CD0];
  v112 = OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_contactFetchingTask;
  *(a6 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_contactFetchingTask) = 0;
  v113 = OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_contactType;
  v114 = v17;
  *(a6 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_contactType) = 0;
  v103 = a6;
  v18 = a6 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_listener;
  *(v18 + 8) = 0;
  swift_unknownObjectWeakInit();
  if (qword_1ED854BB8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v12, qword_1ED857E68);
  v20 = *(v13 + 16);
  v104 = v19;
  v20(v15);
  sub_1A34C9F00();
  swift_allocObject();
  sub_1A34C9E90();
  __swift_project_boxed_opaque_existential_1(v144, v145);
  sub_1A32F2928(v11);
  sub_1A34C9740();
  v21 = v116;
  v22 = v105;
  v100 = *(v116 + 8);
  v101 = v116 + 8;
  v100(v11, v105);
  v23 = sub_1A34C9ED0();

  v111 = v23;
  sub_1A34C9EA0();
  __swift_project_boxed_opaque_existential_1(v144, v145);
  sub_1A32F2928(v11);
  v24 = *(v21 + 32);
  v98 = OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_contactID;
  v25 = v103;
  v102 = v11;
  v26 = v22;
  v24(v103 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_contactID, v11, v22);
  __swift_project_boxed_opaque_existential_1(v144, v145);
  *(v25 + v113) = sub_1A32F2C30() & 1;
  *(v18 + 8) = v118;
  v113 = v18;
  swift_unknownObjectWeakAssign();
  v27 = v106;
  *(v25 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_isObservationEnabled) = v106 & 1;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  sub_1A32DCA2C(&v136);
  v125 = v140;
  v126 = v141;
  v127 = v142;
  v121 = v136;
  v122 = v137;
  v123 = v138;
  v124 = v139;
  v28 = OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model__representation;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6978);
  v29 = swift_allocObject();
  v31 = v123;
  v30 = v124;
  *(v29 + 72) = v124;
  v32 = v125;
  v33 = v126;
  *(v29 + 88) = v125;
  *(v29 + 104) = v33;
  v34 = v127;
  *(v29 + 120) = v127;
  v35 = v121;
  v36 = v122;
  *(v29 + 24) = v121;
  *(v29 + 40) = v36;
  *(v29 + 56) = v31;
  v132 = v32;
  v133 = v33;
  *&v134 = v34;
  v128 = v35;
  v129 = v36;
  v130 = v31;
  v131 = v30;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6980);
  swift_allocObject();
  sub_1A32E31E8(&v121, &v147);
  *(v29 + 16) = sub_1A34CA2E0();
  v108 = v28;
  *(v25 + v28) = v29;
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1(v144, v145);
  sub_1A3287998(&v128);
  v37 = v16[5];
  v140 = v16[4];
  v141 = v37;
  v142 = v16[6];
  v143 = *(v16 + 14);
  v38 = v16[1];
  v136 = *v16;
  v137 = v38;
  v39 = v16[3];
  v138 = v16[2];
  v139 = v39;
  v40 = v128;
  v41 = v129;
  v42 = v131;
  v16[2] = v130;
  v16[3] = v42;
  *v16 = v40;
  v16[1] = v41;
  v43 = v132;
  v44 = v133;
  v45 = v134;
  *(v16 + 14) = v135;
  v16[5] = v44;
  v16[6] = v45;
  v16[4] = v43;
  sub_1A3288FDC(&v136, &qword_1EB0CBDB0);
  v46 = v25;
  v47 = v27;
  if (v27)
  {
    if ([*(*__swift_project_boxed_opaque_existential_1(v144 v145) + 16)])
    {
      __swift_project_boxed_opaque_existential_1(v144, v145);
      if (qword_1ED854B30 != -1)
      {
        swift_once();
      }

      LODWORD(v118) = sub_1A32F2FD8();
    }

    else
    {
      LODWORD(v118) = 0;
    }
  }

  else
  {
    LODWORD(v118) = 0;
  }

  sub_1A31EE4BC(v144, &v147);
  sub_1A34C9010();
  v48 = sub_1A34CA230();
  v49 = sub_1A34CD660();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v119[0] = v51;
    *v50 = 136316162;
    v52 = v102;
    (*(v116 + 16))(v102, v46 + v98, v26);
    sub_1A32E37C0(&qword_1ED854E60, MEMORY[0x1E69695A8]);
    v53 = sub_1A34CDDF0();
    v54 = v26;
    v56 = v55;
    v100(v52, v54);
    v57 = v53;
    v47 = v27;
    v58 = sub_1A31EE23C(v57, v56, v119);

    *(v50 + 4) = v58;
    *(v50 + 12) = 1024;
    v59 = v118;
    *(v50 + 14) = (v118 & 1) == 0;
    *(v50 + 18) = 1024;
    *(v50 + 20) = v59 & 1;
    *(v50 + 24) = 1024;
    LODWORD(v58) = [*(*__swift_project_boxed_opaque_existential_1(&v147 v148) + 16)];
    __swift_destroy_boxed_opaque_existential_0(&v147);
    *(v50 + 26) = v58;
    *(v50 + 30) = 1024;
    *(v50 + 32) = v27 & 1;
    _os_log_impl(&dword_1A31E6000, v48, v49, "Contact %s shouldListenForContactUpdates: %{BOOL}d containsRequiredKeyMutation: %{BOOL}d, hasBeenPersisted: %{BOOL}d, isObservationEnabled: %{BOOL}d", v50, 0x24u);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x1A58F1010](v51, -1, -1);
    MEMORY[0x1A58F1010](v50, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&v147);
  }

  v60 = v110;
  if (v107)
  {
    v61 = sub_1A34CD4A0();
    (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
    v62 = swift_allocObject();
    swift_weakInit();
    *&v147 = *(*(v46 + v108) + 16);
    sub_1A3284D0C(&qword_1ED853CF8, &unk_1EB0C6980);
    v63 = sub_1A34CA3A0();
    sub_1A34CD450();
    sub_1A34C9010();
    v64 = sub_1A34CD440();
    v65 = swift_allocObject();
    v66 = MEMORY[0x1E69E85E0];
    v65[2] = v64;
    v65[3] = v66;
    v65[4] = v63;
    v65[5] = v62;

    sub_1A32C2F5C(0, 0, v60, &unk_1A34E0C00, v65);
    sub_1A3288FDC(v60, &qword_1EB0C6110);
    sub_1A34CA290();
    swift_allocObject();
    sub_1A34C9010();
    v67 = sub_1A34CA2A0();
    swift_beginAccess();
    sub_1A3464528(v119, v67);
    swift_endAccess();
  }

  if ((v118 & 1) == 0)
  {
    v68 = sub_1A34CD4A0();
    (*(*(v68 - 8) + 56))(v60, 1, 1, v68);
    v69 = swift_allocObject();
    swift_weakInit();
    sub_1A31EE4BC(v144, &v147);
    v70 = swift_allocObject();
    v70[2] = 0;
    v70[3] = 0;
    sub_1A31EE568(&v147, (v70 + 4));
    v70[9] = v69;
    sub_1A32C2F5C(0, 0, v60, &unk_1A34E0BD8, v70);
    sub_1A3288FDC(v60, &qword_1EB0C6110);
    sub_1A34CA290();
    swift_allocObject();
    sub_1A34C9010();
    v71 = sub_1A34CA2A0();
    swift_beginAccess();
    sub_1A3464528(v119, v71);
    swift_endAccess();
  }

  __swift_project_boxed_opaque_existential_1(v144, v145);
  v72 = v109;
  if (qword_1ED854B30 != -1)
  {
    swift_once();
  }

  v73 = qword_1ED857E30;
  v74 = *(v115 + 80);
  v75 = v74(qword_1ED857E30, v72);
  if (v75 & v118)
  {
    v76 = *(v46 + v108);
    v77 = *(v76 + 104);
    v78 = v112;
    if (v77 >> 62 == 3 && v77 == 0xC000000000000000)
    {
      v79 = vorrq_s8(vorrq_s8(*(v76 + 40), *(v76 + 72)), vorrq_s8(*(v76 + 56), *(v76 + 88)));
      if (!(*&vorr_s8(*v79.i8, *&vextq_s8(v79, v79, 8uLL)) | *(v76 + 112) | *(v76 + 120) | *(v76 + 32) | *(v76 + 24)))
      {
        __swift_project_boxed_opaque_existential_1(v144, v145);
        sub_1A32DBF5C(&v147);
        v80 = __swift_project_boxed_opaque_existential_1(v144, v145);
        sub_1A32DF748(*v80, &v147, v46);
        sub_1A32E33A0(&v147);
      }
    }

LABEL_34:
    v82 = v46;
    v93 = *(v46 + v78);
    v83 = v113;
    if (v93)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  __swift_project_boxed_opaque_existential_1(v144, v145);
  sub_1A32F3980(&v147);
  if (!v148)
  {
    sub_1A3288FDC(&v147, &qword_1EB0C6990);
    v78 = v112;
    if ((v47 & 1) == 0)
    {
LABEL_33:
      v92 = __swift_project_boxed_opaque_existential_1(v144, v145);
      sub_1A32DFD34(*v92, v46);
      goto LABEL_34;
    }

LABEL_31:
    v88 = sub_1A34CD4A0();
    (*(*(v88 - 8) + 56))(v60, 1, 1, v88);
    sub_1A31EE4BC(v144, &v147);
    v89 = swift_allocObject();
    v89[2] = 0;
    v89[3] = 0;
    v89[4] = v46;
    sub_1A31EE568(&v147, (v89 + 5));
    sub_1A34C9010();
    v90 = sub_1A32C2F5C(0, 0, v60, &unk_1A34E0BF0, v89);
    sub_1A3288FDC(v60, &qword_1EB0C6110);
    sub_1A34CA290();
    swift_allocObject();
    sub_1A34C9010();
    v91 = sub_1A34CA2A0();
    swift_beginAccess();
    sub_1A3464528(v119, v91);
    swift_endAccess();

    *(v46 + v78) = v90;

    goto LABEL_34;
  }

  sub_1A31EE568(&v147, v119);
  __swift_project_boxed_opaque_existential_1(v119, v120);
  if (((v74)(v73, v72, v115) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v119);
    v78 = v112;
    if ((v47 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  __swift_project_boxed_opaque_existential_1(v119, v120);
  sub_1A32DBF5C(&v147);
  v81 = __swift_project_boxed_opaque_existential_1(v119, v120);
  v82 = v46;
  sub_1A32DF748(*v81, &v147, v46);
  sub_1A32E33A0(&v147);
  v83 = v113;
  Strong = swift_unknownObjectWeakLoadStrong();
  v85 = v112;
  if (Strong)
  {
    v86 = *(v83 + 8);
    ObjectType = swift_getObjectType();
    (*(v86 + 8))(ObjectType, v86);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_0(v119);
  if (!*(v82 + v85))
  {
LABEL_35:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v94 = *(v83 + 8);
      v95 = swift_getObjectType();
      (*(v94 + 8))(v95, v94);
      swift_unknownObjectRelease();
    }
  }

LABEL_37:
  sub_1A34C9E80();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v144);
  return v82;
}

uint64_t sub_1A32E12B4(uint64_t a1, uint64_t a2)
{
  v2[23] = a2;
  v4 = sub_1A34C9780();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v5 = sub_1A34CA250();
  v2[27] = v5;
  v2[28] = *(v5 - 8);
  v2[29] = swift_task_alloc();
  v6 = type metadata accessor for CNContactAvatarContact();
  v2[30] = v6;
  v2[5] = v6;
  v7 = sub_1A32E37C0(&qword_1ED8547B0, type metadata accessor for CNContactAvatarContact);
  v2[31] = v7;
  v2[6] = v7;
  v2[2] = a1;
  sub_1A34C9010();

  return MEMORY[0x1EEE6DFA0](sub_1A32E1430, 0, 0);
}

uint64_t sub_1A32E1430()
{
  if (qword_1ED854BB8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 192);
  v8 = __swift_project_value_buffer(v3, qword_1ED857E68);
  (*(v4 + 16))(v1, v8, v3);
  sub_1A34C9F00();
  swift_allocObject();
  sub_1A34C9E90();
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  sub_1A32F2928(v5);
  sub_1A34C9740();
  (*(v6 + 8))(v5, v7);
  *(v0 + 256) = sub_1A34C9ED0();

  sub_1A34C9EA0();
  v9 = *__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  if (qword_1ED854DF8 != -1)
  {
    swift_once();
  }

  v10 = *(v9 + 16);
  sub_1A3404424(v10);
  v12 = v11;
  *(v0 + 264) = 0;

  v13 = *(v9 + 24);
  if (v13 != *(v12 + 24))
  {
    v14 = *(v12 + 16);
    swift_allocObject();
    v15 = sub_1A32F27E4(v14, v13);
    v16 = v14;

    v12 = v15;
  }

  *(v0 + 120) = *(v0 + 240);
  *(v0 + 96) = v12;
  sub_1A31EE568((v0 + 96), v0 + 56);
  v17 = *__swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v18 = swift_task_alloc();
  *(v0 + 272) = v18;
  *v18 = v0;
  v18[1] = sub_1A32E1910;
  v19 = *(v0 + 184);

  return sub_1A32DFA58(v17, v19);
}

uint64_t sub_1A32E1910()
{

  return MEMORY[0x1EEE6DFA0](sub_1A32E1A0C, 0, 0);
}

uint64_t sub_1A32E1A0C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  sub_1A34C9E80();

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A32E1AA4()
{

  return MEMORY[0x1EEE6DFA0](sub_1A32E1BA0, 0, 0);
}

uint64_t sub_1A32E1BA0()
{
  sub_1A34C9E80();

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

BOOL _s14ContactsUICore10AvatarViewV5ModelC0C14RepresentationO2eeoiySbAG_AGtFZ_0(int8x16_t *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v49 = a1[4];
  *v50 = v3;
  v4 = a1[1];
  v45 = *a1;
  v46 = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v47 = a1[2];
  v48 = v5;
  v8 = a2[1];
  v51 = *a2;
  v52 = v8;
  v9 = a2[3];
  v10 = a2[5];
  v55 = a2[4];
  *v56 = v10;
  v11 = a2[3];
  v12 = *a2;
  v13 = a2[1];
  v53 = a2[2];
  v54 = v11;
  v57[0] = v7;
  v57[1] = v6;
  v14 = a1[5];
  v57[4] = v49;
  v57[5] = v14;
  v57[2] = v47;
  v57[3] = v2;
  *&v50[16] = a1[6].i64[0];
  *&v56[16] = *(a2 + 12);
  v15 = a1[6].i64[0];
  v61 = v53;
  v60 = v13;
  v59 = v12;
  v16 = a2[5];
  v17 = *(a2 + 12);
  v58 = v15;
  v65 = v17;
  v64 = v16;
  v63 = v55;
  v62 = v9;
  v18 = v45.u8[9];
  v19 = *(&v45.u32[2] + 2) | (v45.u16[7] << 32);
  v20 = *v50 >> 62;
  if ((*v50 >> 62) > 1)
  {
    v22 = v45.u8[8] | (v45.u8[9] << 8) | (v19 << 16);
    if (v20 == 2)
    {
      if (*v56 >> 62 != 2)
      {
        goto LABEL_27;
      }

      if (__PAIR128__(v22, v45.u64[0]) != v51)
      {
        v30 = sub_1A34CDE30();
        sub_1A32E31E8(&v51, &v35);
        sub_1A32E31E8(&v45, &v35);
        sub_1A3288FDC(v57, &unk_1EB0C69D8);
        v21 = 0;
        if ((v30 & 1) == 0)
        {
          return v21;
        }

        return 1;
      }

      sub_1A32E31E8(&v51, &v35);
      sub_1A32E31E8(&v45, &v35);
    }

    else if (*v50 != 0xC000000000000000 || (v26 = vorrq_s8(vorrq_s8(*&v50[8], v48), vorrq_s8(v49, v47)), v22 | *&vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL)) | v46.i64[1] | v46.i64[0] | v45.i64[0]))
    {
      if (*v56 >> 62 != 3)
      {
        goto LABEL_27;
      }

      if (*&v56[8] != 0)
      {
        goto LABEL_27;
      }

      if (*v56 != 0xC000000000000000)
      {
        goto LABEL_27;
      }

      if (v51 != 1)
      {
        goto LABEL_27;
      }

      v28 = vorrq_s8(vorrq_s8(v52, v54), vorrq_s8(v53, v55));
      if (*&vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL)) | *(&v51 + 1))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (*v56 >> 62 != 3)
      {
        goto LABEL_27;
      }

      if (*v56 != 0xC000000000000000)
      {
        goto LABEL_27;
      }

      v27 = vorrq_s8(vorrq_s8(v52, v54), vorrq_s8(v53, v55));
      if (*&vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL)) | *&v56[8] | *&v56[16] | *(&v51 + 1) | v51)
      {
        goto LABEL_27;
      }
    }

    sub_1A3288FDC(v57, &unk_1EB0C69D8);
    return 1;
  }

  if (v20)
  {
    if (*v56 >> 62 != 1)
    {
      goto LABEL_27;
    }

    v23 = BYTE9(v51);
    type metadata accessor for CGImage(0);
    sub_1A32E31E8(&v51, &v35);
    sub_1A32E31E8(&v45, &v35);
    sub_1A32E31E8(&v51, &v35);
    sub_1A32E31E8(&v45, &v35);
    sub_1A32E37C0(&qword_1EB0C0240, type metadata accessor for CGImage);
    if ((sub_1A34C9B50() & 1) == 0)
    {
      sub_1A3288FDC(v57, &unk_1EB0C69D8);
      sub_1A32E33A0(&v51);
      sub_1A32E33A0(&v45);
      return 0;
    }

    v24 = sub_1A34CC5F0();
    v25 = sub_1A34CC5F0();
    sub_1A3288FDC(v57, &unk_1EB0C69D8);
    sub_1A32E33A0(&v51);
    sub_1A32E33A0(&v45);
    return v24 == v25 && ((v18 ^ v23) & 1) == 0;
  }

  if (*v56 >> 62)
  {
LABEL_27:
    sub_1A32E31E8(&v51, &v35);
    sub_1A32E31E8(&v45, &v35);
    sub_1A3288FDC(v57, &unk_1EB0C69D8);
    return 0;
  }

  v35 = v45.i64[0];
  v36 = v45.i16[4];
  v37 = *(&v45.i32[2] + 2);
  v38 = WORD2(v19);
  v39 = v46;
  v40 = v47;
  v41 = v48;
  v42 = v49;
  v43 = *v50 & 0x3FFFFFFFFFFFFFFFLL;
  v44 = *&v50[8];
  v32[0] = v51;
  v32[1] = v52;
  v32[2] = v53;
  v32[3] = v54;
  v32[4] = v55;
  v33 = *v56;
  v34 = *&v56[8];
  sub_1A32E31E8(&v51, &v31);
  sub_1A32E31E8(&v45, &v31);
  sub_1A32E31E8(&v51, &v31);
  sub_1A32E31E8(&v45, &v31);
  v21 = _s14ContactsUICore12MonogramViewV6RecipeV2eeoiySbAE_AEtFZ_0(&v35, v32);
  sub_1A3288FDC(v57, &unk_1EB0C69D8);
  sub_1A32E33A0(&v51);
  sub_1A32E33A0(&v45);
  return v21;
}

unint64_t sub_1A32E2144()
{
  result = qword_1EB0C6808;
  if (!qword_1EB0C6808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6808);
  }

  return result;
}

unint64_t sub_1A32E2198()
{
  result = qword_1EB0C6810;
  if (!qword_1EB0C6810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6810);
  }

  return result;
}

unint64_t sub_1A32E21EC()
{
  result = qword_1EB0C6820;
  if (!qword_1EB0C6820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6820);
  }

  return result;
}

unint64_t sub_1A32E2240()
{
  result = qword_1EB0C6828;
  if (!qword_1EB0C6828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6828);
  }

  return result;
}

unint64_t sub_1A32E2294()
{
  result = qword_1EB0C6830;
  if (!qword_1EB0C6830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6830);
  }

  return result;
}

unint64_t sub_1A32E22E8()
{
  result = qword_1EB0C6840;
  if (!qword_1EB0C6840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6840);
  }

  return result;
}

unint64_t sub_1A32E233C()
{
  result = qword_1EB0C6848;
  if (!qword_1EB0C6848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6848);
  }

  return result;
}

unint64_t sub_1A32E23C8()
{
  result = qword_1EB0C6870;
  if (!qword_1EB0C6870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6870);
  }

  return result;
}

unint64_t sub_1A32E241C()
{
  result = qword_1EB0C6878;
  if (!qword_1EB0C6878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6878);
  }

  return result;
}

unint64_t sub_1A32E2470()
{
  result = qword_1EB0C6880;
  if (!qword_1EB0C6880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6880);
  }

  return result;
}

unint64_t sub_1A32E24C8()
{
  result = qword_1EB0C68A0;
  if (!qword_1EB0C68A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C68A0);
  }

  return result;
}

uint64_t sub_1A32E2520()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_14ContactsUICore10AvatarViewV5ModelC8ProviderO(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1A32E269C(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 80) & 7 | (a2 << 62);
    *(result + 16) &= 7uLL;
    *(result + 80) = v2;
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    *(result + 80) = 0x8000000000000000;
    *(result + 88) = 0;
    *(result + 96) = 0;
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

double sub_1A32E2728(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 120) = 1;
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
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 8 * -a2;
      result = 0.0;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      return result;
    }

    *(a1 + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A32E2848()
{
  result = qword_1EB0C68B0;
  if (!qword_1EB0C68B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C68B0);
  }

  return result;
}

unint64_t sub_1A32E28A0()
{
  result = qword_1EB0C68B8;
  if (!qword_1EB0C68B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C68B8);
  }

  return result;
}

unint64_t sub_1A32E28F8()
{
  result = qword_1EB0C68C0;
  if (!qword_1EB0C68C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C68C0);
  }

  return result;
}

unint64_t sub_1A32E2950()
{
  result = qword_1EB0C68C8;
  if (!qword_1EB0C68C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C68C8);
  }

  return result;
}

unint64_t sub_1A32E29A8()
{
  result = qword_1EB0C68D0;
  if (!qword_1EB0C68D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C68D0);
  }

  return result;
}

unint64_t sub_1A32E2A00()
{
  result = qword_1EB0C68D8;
  if (!qword_1EB0C68D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C68D8);
  }

  return result;
}

unint64_t sub_1A32E2A58()
{
  result = qword_1EB0C68E0;
  if (!qword_1EB0C68E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C68E0);
  }

  return result;
}

unint64_t sub_1A32E2AB0()
{
  result = qword_1EB0C68E8;
  if (!qword_1EB0C68E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C68E8);
  }

  return result;
}

unint64_t sub_1A32E2B08()
{
  result = qword_1EB0C68F0;
  if (!qword_1EB0C68F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C68F0);
  }

  return result;
}

unint64_t sub_1A32E2B60()
{
  result = qword_1EB0C68F8;
  if (!qword_1EB0C68F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C68F8);
  }

  return result;
}

unint64_t sub_1A32E2BB8()
{
  result = qword_1EB0C6900;
  if (!qword_1EB0C6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6900);
  }

  return result;
}

unint64_t sub_1A32E2C10()
{
  result = qword_1EB0C6908;
  if (!qword_1EB0C6908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6908);
  }

  return result;
}

unint64_t sub_1A32E2C68()
{
  result = qword_1EB0C6910;
  if (!qword_1EB0C6910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6910);
  }

  return result;
}

unint64_t sub_1A32E2CC0()
{
  result = qword_1EB0C6918;
  if (!qword_1EB0C6918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6918);
  }

  return result;
}

unint64_t sub_1A32E2D18()
{
  result = qword_1EB0C6920;
  if (!qword_1EB0C6920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6920);
  }

  return result;
}

unint64_t sub_1A32E2D70()
{
  result = qword_1EB0C6928;
  if (!qword_1EB0C6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6928);
  }

  return result;
}

unint64_t sub_1A32E2DC8()
{
  result = qword_1EB0C6930;
  if (!qword_1EB0C6930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6930);
  }

  return result;
}

unint64_t sub_1A32E2E20()
{
  result = qword_1EB0C6938;
  if (!qword_1EB0C6938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6938);
  }

  return result;
}

unint64_t sub_1A32E2E78()
{
  result = qword_1EB0C6940;
  if (!qword_1EB0C6940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6940);
  }

  return result;
}

unint64_t sub_1A32E2ED0()
{
  result = qword_1EB0C6948;
  if (!qword_1EB0C6948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6948);
  }

  return result;
}

unint64_t sub_1A32E2F28()
{
  result = qword_1EB0C6950;
  if (!qword_1EB0C6950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6950);
  }

  return result;
}

unint64_t sub_1A32E2F80()
{
  result = qword_1EB0C6958;
  if (!qword_1EB0C6958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6958);
  }

  return result;
}

unint64_t sub_1A32E2FD8()
{
  result = qword_1EB0C6960;
  if (!qword_1EB0C6960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6960);
  }

  return result;
}

unint64_t sub_1A32E3030()
{
  result = qword_1EB0C6968;
  if (!qword_1EB0C6968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6968);
  }

  return result;
}

uint64_t sub_1A32E3084(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465756F686C6973 && a2 == 0xEA00000000006574;
  if (v4 || (sub_1A34CDE30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6172676F6E6F6DLL && a2 == 0xE800000000000000 || (sub_1A34CDE30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (sub_1A34CDE30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A34CDE30();

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

uint64_t sub_1A32E3220(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3292050;

  return sub_1A32DD964(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1A32E32E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3292C58;

  return sub_1A32DE304(a1, v4, v5, v6, v1 + 5);
}

uint64_t sub_1A32E33D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3292C58;

  return sub_1A32DD18C(a1, v4, v5, v7, v6);
}

uint64_t sub_1A32E34D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3292050;

  return sub_1A32DE244(a1, v5, v4);
}

unint64_t sub_1A32E3580()
{
  result = qword_1EB0C69D0;
  if (!qword_1EB0C69D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C69D0);
  }

  return result;
}

uint64_t sub_1A32E35D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A32E363C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A32E36FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A32E37C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A32E3808(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A32E387C()
{
  result = qword_1EB0C6A18;
  if (!qword_1EB0C6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6A18);
  }

  return result;
}

uint64_t AvatarView.init(contact:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CNContactAvatarContact();
  swift_allocObject();
  v5 = sub_1A32F27E4(a1, 1);
  a2[3] = v4;
  result = sub_1A32E7F70(&qword_1ED8547B0, type metadata accessor for CNContactAvatarContact);
  *a2 = v5;
  a2[5] = 0;
  a2[6] = 0;
  a2[4] = result;
  return result;
}

uint64_t sub_1A32E399C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a5 - 8);
  v10 = (MEMORY[0x1EEE9AC00])();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v19 - v14;
  v16(v13);
  sub_1A3345BC8(v12, a5, a7);
  v17 = *(v9 + 8);
  v17(v12, a5);
  sub_1A3345BC8(v15, a5, a7);
  return (v17)(v15, a5);
}

uint64_t sub_1A32E3AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE2370](a1, a2, a3, WitnessTable);
}

uint64_t sub_1A32E3B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE2378](a1, a2, a3, WitnessTable);
}

uint64_t sub_1A32E3C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a6 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v19 - v15;
  v14();
  sub_1A3345BC8(v13, a6, a8);
  v17 = *(v10 + 8);
  v17(v13, a6);
  sub_1A3345BC8(v16, a6, a8);
  return (v17)(v16, a6);
}

uint64_t sub_1A32E3D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(), uint64_t a6, uint64_t a7, void *a8)
{
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a7;
  v16[5] = a8;
  v16[6] = a1;
  v16[7] = a2;
  v16[8] = a3;
  v16[9] = a4;
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v17[5] = a8;
  v17[6] = a1;
  v17[7] = a2;
  v17[8] = a3;
  v17[9] = a4;
  v21 = sub_1A32E702C;
  *&v22 = v16;
  *(&v22 + 1) = sub_1A32E7094;
  v23 = v17;
  v24 = a5;
  *&v25 = a6;
  *(&v25 + 1) = a7;
  v26 = a8;
  v18 = type metadata accessor for ArchiveableView();
  WitnessTable = swift_getWitnessTable();
  sub_1A3345BC8(&v21, v18, WitnessTable);
  swift_retain_n();
  swift_retain_n();

  v21 = v24;
  v22 = v25;
  v23 = v26;
  sub_1A3345BC8(&v21, v18, WitnessTable);
}

uint64_t sub_1A32E3ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE1CE8](a1, a2, a3, WitnessTable);
}

uint64_t sub_1A32E3F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE1CF0](a1, a2, a3, WitnessTable);
}

uint64_t sub_1A32E405C@<X0>(uint64_t a1@<X8>)
{
  v114 = a1;
  v87 = type metadata accessor for Placeholder();
  MEMORY[0x1EEE9AC00](v87);
  v86 = (&v83 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6A30);
  MEMORY[0x1EEE9AC00](v113);
  v85 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v88 = &v83 - v5;
  v92 = type metadata accessor for EmojiView(0);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6A38);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v83 - v7;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6A40);
  MEMORY[0x1EEE9AC00](v103);
  v95 = &v83 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6A48);
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v83 - v9;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6A50);
  MEMORY[0x1EEE9AC00](v109);
  v104 = &v83 - v10;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6A58);
  MEMORY[0x1EEE9AC00](v89);
  v12 = (&v83 - v11);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6A60);
  MEMORY[0x1EEE9AC00](v100);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v90 = &v83 - v16;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6A68);
  MEMORY[0x1EEE9AC00](v83);
  v18 = (&v83 - v17);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6A70);
  MEMORY[0x1EEE9AC00](v99);
  v84 = &v83 - v19;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6A78);
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v83 - v20;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6A80);
  MEMORY[0x1EEE9AC00](v105);
  v107 = &v83 - v21;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6A88);
  MEMORY[0x1EEE9AC00](v96);
  *&v97 = &v83 - v22;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6A90);
  MEMORY[0x1EEE9AC00](v106);
  v98 = &v83 - v23;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6A98);
  MEMORY[0x1EEE9AC00](v110);
  v108 = &v83 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6AA0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v83 - v27);
  v29 = *(v1 + 17);
  v30 = *(v1 + 24);
  v31 = *(v1 + 32);
  v32 = *(v1 + 56);
  *v127 = *(v1 + 40);
  *&v127[16] = v32;
  *&v128[16] = *(v1 + 136);
  v33 = *(v1 + 120);
  *&v127[64] = *(v1 + 104);
  *v128 = v33;
  v34 = *(v1 + 88);
  *&v127[32] = *(v1 + 72);
  *&v127[48] = v34;
  v35 = *v127;
  v36 = *v128 >> 62;
  if ((*v128 >> 62) > 1)
  {
    if (v36 == 2)
    {
      v99 = *&v127[8];
      v97 = *&v127[8];
      v51 = *(type metadata accessor for EmojiView.Container(0) + 20);
      KeyPath = swift_getKeyPath();
      v53 = v93;
      *&v93[v51] = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
      swift_storeEnumTagMultiPayload();
      *v53 = v30;
      *(v53 + 8) = v31;
      sub_1A32E31E8(v127, &v119);
      sub_1A31EE004(v30, v31);
      v54 = sub_1A34CCC80();
      v98 = v55;
      v56 = v53 + *(v94 + 36);
      v57 = swift_getKeyPath();
      v58 = v91;
      *&v91[*(v92 + 20)] = v57;
      swift_storeEnumTagMultiPayload();
      *v58 = v35;
      v58[1] = v97;
      sub_1A32E7F70(qword_1ED854F48, type metadata accessor for EmojiView);

      sub_1A34CC1F0();
      sub_1A32E79B0(v58, type metadata accessor for EmojiView);
      sub_1A32E33A0(v127);
      v59 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6AE8) + 36));
      v60 = v98;
      *v59 = v54;
      v59[1] = v60;
      sub_1A32E7668();
      v61 = v95;
      sub_1A34CC0F0();
      sub_1A3288FDC(v53, &qword_1EB0C6A38);
      v47 = &qword_1EB0C6A40;
      sub_1A328D790(v61, v102, &qword_1EB0C6A40);
      swift_storeEnumTagMultiPayload();
      sub_1A32E7300(&qword_1ED8542A8, &qword_1EB0C6A60, &unk_1A34E1258, sub_1A32E7580);
      sub_1A32E7300(&qword_1EB0C6AE0, &qword_1EB0C6A40, &unk_1A34E1238, sub_1A32E7668);
      v62 = v104;
      sub_1A34CB3E0();
      v63 = &qword_1EB0C6A50;
      sub_1A328D790(v62, v107, &qword_1EB0C6A50);
    }

    else
    {
      if (*v128 == 0xC000000000000000)
      {
        v70 = vorrq_s8(vorrq_s8(*&v128[8], *&v127[40]), vorrq_s8(*&v127[56], *&v127[24]));
        if (!(*&v127[72] | *&vorr_s8(*v70.i8, *&vextq_s8(v70, v70, 8uLL)) | *&v127[16] | *&v127[8] | *v127))
        {
          v71 = swift_getKeyPath();
          v72 = v86;
          *v86 = v71;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
          swift_storeEnumTagMultiPayload();
          *(v72 + *(v87 + 20)) = v29;
          sub_1A32E7F70(&unk_1ED854B10, type metadata accessor for Placeholder);
          v73 = v85;
          sub_1A34CC1F0();
          sub_1A32E79B0(v72, type metadata accessor for Placeholder);
          v74 = v88;
          sub_1A34CAC00();
          v47 = &qword_1EB0C6A30;
          sub_1A3288FDC(v73, &qword_1EB0C6A30);
          sub_1A328D790(v74, v112, &qword_1EB0C6A30);
          swift_storeEnumTagMultiPayload();
          sub_1A32E70D4();
          sub_1A32E7750();
          sub_1A34CB3E0();
          v50 = v74;
          return sub_1A3288FDC(v50, v47);
        }
      }

      *v18 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
      swift_storeEnumTagMultiPayload();
      v75 = type metadata accessor for Silhouette.Container();
      v76 = v18 + *(v75 + 20);
      *v76 = v30;
      v76[8] = v31;
      *(v18 + *(v75 + 24)) = v29;
      sub_1A31EE004(v30, v31);
      v77 = sub_1A34CCC80();
      v79 = v78;
      v80 = v18 + *(v83 + 36);
      LOBYTE(v119) = v29;
      sub_1A31EE060();
      sub_1A34CC1F0();
      v81 = &v80[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6AC8) + 36)];
      *v81 = v77;
      v81[1] = v79;
      sub_1A32E73B4();
      v61 = v84;
      sub_1A34CC0F0();
      sub_1A3288FDC(v18, &qword_1EB0C6A68);
      v47 = &qword_1EB0C6A70;
      sub_1A328D790(v61, v97, &qword_1EB0C6A70);
      swift_storeEnumTagMultiPayload();
      sub_1A32E7218();
      sub_1A32E7300(&qword_1EB0C6AC0, &qword_1EB0C6A70, &unk_1A34E1268, sub_1A32E73B4);
      v62 = v98;
      sub_1A34CB3E0();
      v63 = &qword_1EB0C6A90;
      sub_1A328D790(v62, v107, &qword_1EB0C6A90);
    }

    swift_storeEnumTagMultiPayload();
    sub_1A32E7160();
    sub_1A32E749C();
    v69 = v108;
    sub_1A34CB3E0();
    sub_1A3288FDC(v62, v63);
    sub_1A328D790(v69, v112, &qword_1EB0C6A98);
    swift_storeEnumTagMultiPayload();
    sub_1A32E70D4();
    sub_1A32E7750();
    sub_1A34CB3E0();
LABEL_12:
    sub_1A3288FDC(v69, &qword_1EB0C6A98);
    v50 = v61;
    return sub_1A3288FDC(v50, v47);
  }

  if (v36)
  {
    sub_1A32E31E8(v127, &v119);
    v64 = v35;
    v65 = sub_1A34CC5D0();
    *v12 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
    swift_storeEnumTagMultiPayload();
    v66 = type metadata accessor for AvatarImageView();
    *(v12 + *(v66 + 20)) = v29;
    *(v12 + *(v66 + 24)) = v65;
    v67 = v12 + *(v89 + 36);
    *v67 = v29;
    *(v67 + 1) = 256;
    sub_1A32E7580();
    sub_1A34CC1F0();
    sub_1A3288FDC(v12, &qword_1EB0C6A58);
    v61 = v90;
    sub_1A34CAC00();
    v47 = &qword_1EB0C6A60;
    sub_1A3288FDC(v14, &qword_1EB0C6A60);
    sub_1A328D790(v61, v102, &qword_1EB0C6A60);
    swift_storeEnumTagMultiPayload();
    sub_1A32E7300(&qword_1ED8542A8, &qword_1EB0C6A60, &unk_1A34E1258, sub_1A32E7580);
    sub_1A32E7300(&qword_1EB0C6AE0, &qword_1EB0C6A40, &unk_1A34E1238, sub_1A32E7668);
    v68 = v104;
    sub_1A34CB3E0();
    sub_1A328D790(v68, v107, &qword_1EB0C6A50);
    swift_storeEnumTagMultiPayload();
    sub_1A32E7160();
    sub_1A32E749C();
    v69 = v108;
    sub_1A34CB3E0();
    sub_1A3288FDC(v68, &qword_1EB0C6A50);
    sub_1A328D790(v69, v112, &qword_1EB0C6A98);
    swift_storeEnumTagMultiPayload();
    sub_1A32E70D4();
    sub_1A32E7750();
    sub_1A34CB3E0();
    sub_1A32E33A0(v127);
    goto LABEL_12;
  }

  v120 = *&v127[8];
  v121 = *&v127[24];
  v122 = *&v127[40];
  v123 = *&v127[56];
  v119 = *v127;
  v124 = *&v127[72];
  v125 = *v128 & 0x3FFFFFFFFFFFFFFFLL;
  v126 = *&v128[8];
  v37 = v26;
  *v28 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  swift_storeEnumTagMultiPayload();
  v38 = type metadata accessor for MonogramSolarium.Container();
  v39 = v28 + v38[5];
  v117 = 0;
  v118 = 0;
  sub_1A32E31E8(v127, &v115);
  sub_1A31EE004(v30, v31);
  type metadata accessor for CGSize(0);
  sub_1A34CC730();
  v40 = v116;
  *v39 = v115;
  *(v39 + 2) = v40;
  *(v28 + v38[6]) = 0;
  v41 = v28 + v38[7];
  *v41 = v30;
  v41[8] = v31;
  v42 = sub_1A34CCC80();
  v44 = v43;
  v45 = v28 + *(v37 + 36);
  sub_1A32E52D0(&v119);
  v46 = &v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6AB8) + 36)];
  *v46 = v42;
  v46[1] = v44;
  v47 = &qword_1EB0C6AA0;
  sub_1A328D790(v28, v97, &qword_1EB0C6AA0);
  swift_storeEnumTagMultiPayload();
  sub_1A32E7218();
  sub_1A32E7300(&qword_1EB0C6AC0, &qword_1EB0C6A70, &unk_1A34E1268, sub_1A32E73B4);
  v48 = v98;
  sub_1A34CB3E0();
  sub_1A328D790(v48, v107, &qword_1EB0C6A90);
  swift_storeEnumTagMultiPayload();
  sub_1A32E7160();
  sub_1A32E749C();
  v49 = v108;
  sub_1A34CB3E0();
  sub_1A3288FDC(v48, &qword_1EB0C6A90);
  sub_1A328D790(v49, v112, &qword_1EB0C6A98);
  swift_storeEnumTagMultiPayload();
  sub_1A32E70D4();
  sub_1A32E7750();
  sub_1A34CB3E0();
  sub_1A32E33A0(v127);
  sub_1A3288FDC(v49, &qword_1EB0C6A98);
  v50 = v28;
  return sub_1A3288FDC(v50, v47);
}

uint64_t sub_1A32E52D0(uint64_t a1)
{
  v2 = type metadata accessor for MonogramView();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6AF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v12 - v6;
  *&v4[*(v2 + 20)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  swift_storeEnumTagMultiPayload();
  v8 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v8;
  *(v4 + 12) = *(a1 + 96);
  v9 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v9;
  v10 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v10;
  sub_1A31FA9C4(a1, v12);
  sub_1A32E7F70(&qword_1ED8551B8, type metadata accessor for MonogramView);
  sub_1A34CC1F0();
  sub_1A32E79B0(v4, type metadata accessor for MonogramView);
  v12[0] = *a1;
  sub_1A328A95C();
  sub_1A34CABF0();
  return sub_1A3288FDC(v7, &qword_1EB0C6AF0);
}

double sub_1A32E54E0@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for AvatarView.Model();
  sub_1A32E7F70(&qword_1ED854E50, type metadata accessor for AvatarView.Model);
  v42 = *(sub_1A34CA650() + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_contactType);

  v2 = sub_1A34CA650();
  v3 = *(v2 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 48);
  v5 = *(v2 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe);
  v4 = *(v2 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 16);
  v54 = *(v2 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 32);
  v55 = v3;
  v52 = v5;
  v53 = v4;
  v7 = *(v2 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 80);
  v6 = *(v2 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 96);
  v8 = *(v2 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 64);
  v59 = *(v2 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 112);
  v57 = v7;
  v58 = v6;
  v56 = v8;
  v9 = OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model__representation;
  swift_beginAccess();
  v10 = *(v2 + v9);
  v11 = *(v10 + 88);
  v12 = *(v10 + 72);
  v61 = *(v10 + 104);
  v62 = *(v10 + 120);
  v13 = *(v10 + 40);
  v14 = *(v10 + 24);
  v15 = *(v10 + 56);
  v16 = v58;
  v64 = v59;
  v71 = v62;
  v17 = v54;
  v60[2] = v15;
  v60[3] = v12;
  v60[4] = v11;
  v60[0] = v14;
  v60[1] = v13;
  v63[5] = v57;
  v63[6] = v58;
  v63[3] = v55;
  v63[4] = v56;
  v63[1] = v53;
  v63[2] = v54;
  v63[0] = v52;
  v67 = v15;
  v66 = v13;
  v65 = v14;
  v70 = v61;
  v69 = v11;
  v68 = v12;
  if (v54 >> 3 == 0xFFFFFFFF && v58 < 8)
  {
    if (v61 >> 62 == 1)
    {
      v18 = *&v60[0];
      v19 = sub_1A34CC4E0();

      sub_1A3288FDC(v63, &qword_1EB0C6AF8);
      v20 = 0;
    }

    else
    {
      sub_1A32E31E8(v60, &v43);

      sub_1A3288FDC(v63, &qword_1EB0C6AF8);
      v19 = 0;
      v20 = 4;
    }
  }

  else
  {
    v39 = v57;
    v41 = v56;
    v40 = v55;
    v21 = *(&v54 + 1);
    v22 = *(&v53 + 1);
    v23 = v53;
    v24 = BYTE8(v52);
    v19 = v52;
    sub_1A32E31E8(v60, &v43);
    sub_1A328D790(&v52, &v43, &qword_1EB0CBDB0);
    v20 = v24;

    sub_1A31EE004(v19, v24);
    sub_1A32891C8(v23, v22, v17, v21, v40, *(&v40 + 1), v41, *(&v41 + 1), v39, *(&v39 + 1), v16);
    sub_1A3288FDC(v63, &qword_1EB0C6AF8);
    sub_1A31EE004(v19, v24);
    sub_1A3288FDC(&v52, &qword_1EB0CBDB0);
  }

  v25 = sub_1A34CA650();
  v26 = OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model__representation;
  swift_beginAccess();
  v27 = *(v25 + v26);
  v28 = *(v27 + 40);
  v29 = *(v27 + 24);
  v30 = *(v27 + 56);
  v31 = *(v27 + 88);
  v32 = *(v27 + 72);
  v33 = *(v27 + 104);
  v49 = *(v27 + 120);
  v45 = v30;
  v46 = v32;
  v47 = v31;
  v48 = v33;
  v43 = v29;
  v44 = v28;
  sub_1A32E31E8(&v43, v50);

  KeyPath = swift_getKeyPath();
  *&v51[55] = v46;
  *&v51[71] = v47;
  *&v51[87] = v48;
  *&v51[103] = v49;
  *&v51[7] = v43;
  *&v51[23] = v44;
  *&v51[39] = v45;
  v35 = *&v51[32];
  *(a1 + 81) = *&v51[48];
  v36 = *&v51[80];
  *(a1 + 97) = *&v51[64];
  *(a1 + 113) = v36;
  *(a1 + 128) = *&v51[95];
  result = *v51;
  v38 = *&v51[16];
  *(a1 + 33) = *v51;
  *(a1 + 49) = v38;
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 17) = v42;
  *(a1 + 24) = v19;
  *(a1 + 32) = v20;
  *(a1 + 65) = v35;
  return result;
}

uint64_t sub_1A32E593C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A34CB0B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AvatarView.LayerBase(0);
  sub_1A328D790(v1 + *(v10 + 20), v9, &unk_1EB0CA420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A34CA5D0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A34CD650();
    v13 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_1A32E5B44()
{
  v1 = sub_1A34CB0B0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for AvatarView.LayerBase(0) + 28));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_1A34C9010();
  sub_1A34CD650();
  v8 = sub_1A34CBA30();
  sub_1A34CA210();

  sub_1A34CB0A0();
  swift_getAtKeyPath();
  sub_1A32141EC(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_1A32E5CA4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_1A31EE4BC(a1, v24);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v8);
  v12 = *v10;
  v13 = type metadata accessor for CNContactAvatarContact();
  v23[3] = v13;
  v23[4] = sub_1A32E7F70(&qword_1ED8547B0, type metadata accessor for CNContactAvatarContact);
  v23[0] = v12;
  type metadata accessor for AvatarView.Model();
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v23, v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = *v18;
  swift_unknownObjectRetain();
  v21 = sub_1A32E0314(v20, a2, a3, 1, a4, v14);
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v21;
}

uint64_t sub_1A32E5EC0(uint64_t a1, uint64_t *a2)
{
  v81 = a1;
  v3 = sub_1A34CB0B0();
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v73 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A34CA5D0();
  v78 = *(v5 - 8);
  v79 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for AvatarViewLayer.RenderSpec(0);
  MEMORY[0x1EEE9AC00](v80);
  v9 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v7;
  sub_1A32E593C(v7);
  v10 = *a2;
  v11 = a2[1];
  v87 = a2;
  v12 = *(a2 + 16);
  v13 = type metadata accessor for AvatarView.Model();
  v14 = sub_1A32E7F70(&qword_1ED854E50, type metadata accessor for AvatarView.Model);
  v15 = sub_1A34CA650();
  v16 = OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model__representation;
  swift_beginAccess();
  v17 = *(v15 + v16);
  v18 = *(v17 + 40);
  v19 = *(v17 + 24);
  v20 = *(v17 + 56);
  v21 = *(v17 + 88);
  v22 = *(v17 + 72);
  v23 = *(v17 + 104);
  v95 = *(v17 + 120);
  v91 = v20;
  v92 = v22;
  v93 = v21;
  v94 = v23;
  v89 = v19;
  v90 = v18;
  sub_1A32E31E8(&v89, v107);

  v86 = v10;
  v83 = v11;
  v84 = v13;
  v85 = v12;
  v82 = v14;
  v24 = sub_1A34CA650();
  v25 = *(v24 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 48);
  v27 = *(v24 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe);
  v26 = *(v24 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 16);
  v98 = *(v24 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 32);
  v99 = v25;
  v96 = v27;
  v97 = v26;
  v29 = *(v24 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 80);
  v28 = *(v24 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 96);
  v30 = *(v24 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 64);
  v103 = *(v24 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 112);
  v101 = v29;
  v102 = v28;
  v100 = v30;
  v31 = OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model__representation;
  swift_beginAccess();
  v32 = *(v24 + v31);
  v33 = *(v32 + 88);
  v34 = *(v32 + 72);
  v105 = *(v32 + 104);
  v106 = *(v32 + 120);
  v35 = *(v32 + 40);
  v36 = *(v32 + 24);
  v37 = *(v32 + 56);
  v108 = v103;
  v115 = v106;
  v38 = v98;
  v39 = v102;
  v104[2] = v37;
  v104[3] = v34;
  v104[4] = v33;
  v104[0] = v36;
  v104[1] = v35;
  v107[5] = v101;
  v107[6] = v102;
  v107[3] = v99;
  v107[4] = v100;
  v107[1] = v97;
  v107[2] = v98;
  v107[0] = v96;
  v111 = v37;
  v110 = v35;
  v109 = v36;
  v114 = v105;
  v113 = v33;
  v112 = v34;
  if (v98 >> 3 == 0xFFFFFFFF && v102 < 8)
  {
    if (v105 >> 62 == 1)
    {
      v40 = *&v104[0];
      v41 = sub_1A34CC4E0();

      sub_1A3288FDC(v107, &qword_1EB0C6AF8);
      LODWORD(v76) = 0;
    }

    else
    {
      sub_1A32E31E8(v104, v88);

      sub_1A3288FDC(v107, &qword_1EB0C6AF8);
      v41 = 0;
      LODWORD(v76) = 4;
    }
  }

  else
  {
    v69[1] = *(&v102 + 1);
    v69[2] = v103;
    v70 = v101;
    v76 = *(&v100 + 1);
    v72 = v100;
    v71 = v99;
    v69[0] = *(&v98 + 1);
    v43 = *(&v97 + 1);
    v42 = v97;
    v44 = BYTE8(v96);
    v45 = v96;
    sub_1A32E31E8(v104, v88);
    sub_1A328D790(&v96, v88, &qword_1EB0CBDB0);

    sub_1A31EE004(v45, v44);
    v46 = v43;
    v41 = v45;
    sub_1A32891C8(v42, v46, v38, v69[0], v71, *(&v71 + 1), v72, v76, v70, *(&v70 + 1), v39);
    sub_1A3288FDC(v107, &qword_1EB0C6AF8);
    LODWORD(v76) = v44;
    sub_1A31EE004(v45, v44);
    sub_1A3288FDC(&v96, &qword_1EB0CBDB0);
  }

  v47 = *(sub_1A34CA650() + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_contactType);

  v48 = v87 + *(type metadata accessor for AvatarView.LayerBase(0) + 24);
  v49 = *v48;
  v50 = *(v48 + 8);
  if (*(v48 + 16))
  {
    sub_1A32C7DE4(v49);
    v51 = *&v50;
  }

  else
  {
    sub_1A34C9010();
    sub_1A34CD650();
    v52 = sub_1A34CBA30();
    sub_1A34CA210();

    v53 = v73;
    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A32E78A0(v49, v50, 0);
    (*(v74 + 8))(v53, v75);
    v49 = v88[0];
    v51 = *&v88[1];
  }

  if (v49 == 1)
  {
    v54 = 0.0;
  }

  else
  {
    v54 = v51;
  }

  if (v49 == 1)
  {
    v55 = 0;
  }

  else
  {
    v55 = v49;
  }

  v56 = sub_1A32E5B44();
  result = (*(v78 + 32))(v9, v77, v79);
  v58 = v80;
  v59 = &v9[*(v80 + 20)];
  v60 = v94;
  *(v59 + 4) = v93;
  *(v59 + 5) = v60;
  *(v59 + 12) = v95;
  v61 = v90;
  *v59 = v89;
  *(v59 + 1) = v61;
  v62 = v92;
  *(v59 + 2) = v91;
  *(v59 + 3) = v62;
  v63 = &v9[v58[6]];
  *v63 = v41;
  v63[8] = v76;
  v9[v58[7]] = v47;
  v64 = &v9[v58[8]];
  *v64 = v55;
  *(v64 + 1) = v54;
  *&v9[v58[9]] = v56;
  v65 = v81;
  v66 = *(v81 + OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_model);
  if (v66)
  {
    v67 = v66;
    sub_1A32FB324(v9);

    sub_1A32E79B0(v9, type metadata accessor for AvatarViewLayer.RenderSpec);
    v68 = sub_1A34CA650();
    sub_1A32E7A10(v68, v65);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A32E65E0(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  type metadata accessor for AvatarViewLayer(0);
  sub_1A32E783C(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_1A32E78AC(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  return sub_1A34CA740();
}

uint64_t AvatarView.init(contact:listener:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for CNContactAvatarContact();
  swift_allocObject();
  v9 = sub_1A32F27E4(a1, 1);
  a4[3] = v8;
  result = sub_1A32E7F70(&qword_1ED8547B0, type metadata accessor for CNContactAvatarContact);
  *a4 = v9;
  a4[4] = result;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1A32E679C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1A31EE4BC(a1, v16);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = a2(0);
  v11 = v10[5];
  *(a4 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  swift_storeEnumTagMultiPayload();
  v12 = a4 + v10[6];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  v13 = a4 + v10[7];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = swift_allocObject();
  sub_1A31EE568(v16, v14 + 16);
  *(v14 + 56) = v8;
  *(v14 + 64) = v9;
  *a4 = a3;
  *(a4 + 8) = v14;
  *(a4 + 16) = 0;
  return swift_unknownObjectRetain();
}

unint64_t sub_1A32E6958()
{
  result = qword_1ED8539E0;
  if (!qword_1ED8539E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6A28);
    sub_1A3284D0C(qword_1ED853A08, &qword_1EB0C6A20);
    sub_1A32E7F70(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8539E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14ContactsUICore17AvatarBorderStyleVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
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

uint64_t sub_1A32E6A9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56) >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1A32E6AEC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 144) = 1;
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
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 8 * -a2;
      result = 0.0;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      return result;
    }

    *(a1 + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A32E6BB0()
{
  if (!qword_1ED8539F0)
  {
    type metadata accessor for AvatarView.Model();
    sub_1A32E7F70(&qword_1ED854E50, type metadata accessor for AvatarView.Model);
    v0 = sub_1A34CA660();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8539F0);
    }
  }
}

void sub_1A32E6C44()
{
  if (!qword_1ED8539F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6218);
    v0 = sub_1A34CA5F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8539F8);
    }
  }
}

void sub_1A32E6CA8()
{
  if (!qword_1ED853A00)
  {
    v0 = sub_1A34CA5F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED853A00);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1A32E6EA0()
{
  sub_1A32E6BB0();
  if (v0 <= 0x3F)
  {
    sub_1A31EF4D8();
    if (v1 <= 0x3F)
    {
      sub_1A32E6C44();
      if (v2 <= 0x3F)
      {
        sub_1A32E6CA8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A32E6F54()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t objectdestroy_31Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1A32E70D4()
{
  result = qword_1EB0C6AA8;
  if (!qword_1EB0C6AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6A98);
    sub_1A32E7160();
    sub_1A32E749C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6AA8);
  }

  return result;
}

unint64_t sub_1A32E7160()
{
  result = qword_1EB0C6AB0;
  if (!qword_1EB0C6AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6A90);
    sub_1A32E7218();
    sub_1A32E7300(&qword_1EB0C6AC0, &qword_1EB0C6A70, &unk_1A34E1268, sub_1A32E73B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6AB0);
  }

  return result;
}

unint64_t sub_1A32E7218()
{
  result = qword_1ED8542B8;
  if (!qword_1ED8542B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6AA0);
    sub_1A32E7F70(qword_1ED855080, type metadata accessor for MonogramSolarium.Container);
    sub_1A3284D0C(&qword_1ED854298, &qword_1EB0C6AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8542B8);
  }

  return result;
}

uint64_t sub_1A32E7300(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1A32E7F70(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A32E73B4()
{
  result = qword_1ED8542D0;
  if (!qword_1ED8542D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6A68);
    sub_1A32E7F70(&qword_1ED855260, type metadata accessor for Silhouette.Container);
    sub_1A3284D0C(&qword_1ED8542A0, &qword_1EB0C6AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8542D0);
  }

  return result;
}

unint64_t sub_1A32E749C()
{
  result = qword_1EB0C6AD0;
  if (!qword_1EB0C6AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6A50);
    sub_1A32E7300(&qword_1ED8542A8, &qword_1EB0C6A60, &unk_1A34E1258, sub_1A32E7580);
    sub_1A32E7300(&qword_1EB0C6AE0, &qword_1EB0C6A40, &unk_1A34E1238, sub_1A32E7668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6AD0);
  }

  return result;
}

unint64_t sub_1A32E7580()
{
  result = qword_1ED854A58;
  if (!qword_1ED854A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6A58);
    sub_1A32E7F70(qword_1ED855120, type metadata accessor for AvatarImageView);
    sub_1A3284D0C(&qword_1ED854A60, &qword_1EB0C6AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854A58);
  }

  return result;
}

unint64_t sub_1A32E7668()
{
  result = qword_1ED8542B0;
  if (!qword_1ED8542B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6A38);
    sub_1A32E7F70(qword_1ED854FE0, type metadata accessor for EmojiView.Container);
    sub_1A3284D0C(&qword_1ED854290, &qword_1EB0C6AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8542B0);
  }

  return result;
}

unint64_t sub_1A32E7750()
{
  result = qword_1ED8542C0;
  if (!qword_1ED8542C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6A30);
    sub_1A32E7F70(&unk_1ED854B10, type metadata accessor for Placeholder);
    sub_1A32E7F70(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8542C0);
  }

  return result;
}

uint64_t sub_1A32E783C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvatarView.LayerBase(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A32E78A0(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1A32C7DF4(a1);
  }

  else
  {
  }
}

uint64_t sub_1A32E78AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvatarView.LayerBase(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A32E7910(uint64_t a1)
{
  v3 = *(type metadata accessor for AvatarView.LayerBase(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1A32E5EC0(a1, v4);
}

uint64_t sub_1A32E79B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A32E7A10(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6B00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v25 = &v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6B08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6B10);
  v10 = *(v9 - 8);
  v26 = v9;
  v27 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v24 = &v24 - v11;
  v12 = OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model__representation;
  swift_beginAccess();
  v30 = *(*(a1 + v12) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6980);
  sub_1A3284D0C(&qword_1ED853CF8, &unk_1EB0C6980);
  v30 = sub_1A34CA3A0();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6B18);
  sub_1A3284D0C(&qword_1ED853D10, &qword_1EB0C69A8);
  sub_1A34CA3B0();

  sub_1A3284D0C(&qword_1ED853D28, &qword_1EB0C6B08);
  v13 = sub_1A34CA3A0();
  (*(v6 + 8))(v8, v5);
  v30 = v13;
  sub_1A328B6E0();
  v14 = sub_1A34CD750();
  v29 = v14;
  v15 = sub_1A34CD730();
  v16 = v25;
  (*(*(v15 - 8) + 56))(v25, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6B20);
  sub_1A3284D0C(&qword_1ED853D18, &qword_1EB0C6B20);
  sub_1A32E7F70(&unk_1ED853CE8, sub_1A328B6E0);
  v17 = v24;
  sub_1A34CA3D0();
  sub_1A3288FDC(v16, &qword_1EB0C6B00);

  v18 = swift_allocObject();
  v19 = v28;
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1A32E7FB8;
  *(v20 + 24) = v18;
  sub_1A3284D0C(&qword_1ED853D20, &qword_1EB0C6B10);
  v21 = v26;
  v22 = sub_1A34CA3E0();

  (*(v27 + 8))(v17, v21);
  *(v19 + OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_modelListener) = v22;
}

uint64_t sub_1A32E7F70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A32E8034()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A32E8070(uint64_t *a1, int a2)
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

uint64_t sub_1A32E80B8(uint64_t result, int a2, int a3)
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

unint64_t sub_1A32E80F8()
{
  result = qword_1EB0C6B28;
  if (!qword_1EB0C6B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6B30);
    sub_1A32E70D4();
    sub_1A32E7750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6B28);
  }

  return result;
}

uint64_t sub_1A32E821C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A34CA5D0();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 8);
  if (v11 <= 2)
  {
    v12 = *v2;
    if (v11 >= 2)
    {
    }

    else
    {
      *&v22 = *v2;
      v12 = TonalGradientStyle.colors.getter();
    }

    goto LABEL_15;
  }

  if (v11 == 3)
  {
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1A34DAA10;
    *(v12 + 32) = sub_1A34CC4E0();
LABEL_15:
    sub_1A34CCDE0();
    sub_1A34CCE00();
    MEMORY[0x1A58EE2C0](v12);
    result = sub_1A34CA9D0();
    v20 = v23;
    *a2 = v22;
    *(a2 + 16) = v20;
    *(a2 + 32) = v24;
    return result;
  }

  v13 = v7;
  (*(v6 + 16))(v10, a1, v7, v8);
  v14 = (*(v6 + 88))(v10, v13);
  if (v14 == *MEMORY[0x1E697DBB8])
  {
    v15 = &byte_1ED857E28;
    v16 = &qword_1ED857E20;
    if (qword_1ED854B20 != -1)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (v14 == *MEMORY[0x1E697DBA8])
  {
    v15 = &byte_1ED857D98;
    v16 = &qword_1ED857D90;
    if (qword_1ED853EA8 != -1)
    {
LABEL_18:
      swift_once();
    }

LABEL_12:
    v12 = *v16;
    v17 = *v15;

    sub_1A31EE004(v12, v17);
    sub_1A31EE004(v12, v17);

    sub_1A31ECC9C(v12, v17);
    if (v17 <= 2)
    {
      if (v17 < 2)
      {
        *&v22 = v12;
        v18 = TonalGradientStyle.colors.getter();
        sub_1A31ECC9C(v12, v17);
        v12 = v18;
      }

      goto LABEL_15;
    }

    if (v17 == 3)
    {
      sub_1A31ECC9C(v12, 3u);
    }

    goto LABEL_5;
  }

  result = sub_1A34CDE20();
  __break(1u);
  return result;
}

uint64_t sub_1A32E8514(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x63696D616E7964;
    }

    else
    {
      v3 = 0x64696C6F73;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v3 = 0x72477261656E696CLL;
      v5 = 0x746E65696461;
    }

    else
    {
      if (a1 == 3)
      {
        v3 = 0x616C6F53656B6166;
        v4 = 0xEC0000006D756972;
        goto LABEL_14;
      }

      v3 = 0x4E746C7561666564;
      v5 = 0x6C6172757461;
    }

    v4 = v5 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    if (a2)
    {
      v10 = 0x63696D616E7964;
    }

    else
    {
      v10 = 0x64696C6F73;
    }

    if (a2)
    {
      v9 = 0xE700000000000000;
    }

    else
    {
      v9 = 0xE500000000000000;
    }

    if (v3 != v10)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v6 = 0x616C6F53656B6166;
    v7 = 0xEC0000006D756972;
    if (a2 != 3)
    {
      v6 = 0x4E746C7561666564;
      v7 = 0xEE006C6172757461;
    }

    if (a2 == 2)
    {
      v8 = 0x72477261656E696CLL;
    }

    else
    {
      v8 = v6;
    }

    if (a2 == 2)
    {
      v9 = 0xEE00746E65696461;
    }

    else
    {
      v9 = v7;
    }

    if (v3 != v8)
    {
      goto LABEL_34;
    }
  }

  if (v4 != v9)
  {
LABEL_34:
    v11 = sub_1A34CDE30();
    goto LABEL_35;
  }

  v11 = 1;
LABEL_35:

  return v11 & 1;
}

uint64_t sub_1A32E86D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006574;
  v3 = 0x7465756F686C6973;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6D6172676F6E6F6DLL;
    }

    else
    {
      v5 = 0x7465756F686C6973;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEA00000000006574;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x6D49726174617661;
    v6 = 0xEB00000000656761;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x657069636572;
    }

    else
    {
      v5 = 0x726574736F70;
    }

    v6 = 0xE600000000000000;
  }

  v7 = 0x6D49726174617661;
  v8 = 0xEB00000000656761;
  v9 = 0x657069636572;
  if (a2 != 3)
  {
    v9 = 0x726574736F70;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 0x6D6172676F6E6F6DLL;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v7;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v8;
  }

  if (v5 == v10 && v6 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1A34CDE30();
  }

  return v12 & 1;
}

uint64_t sub_1A32E885C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6579570;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1702194274;
    }

    else
    {
      v4 = 0x6168706C61;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E65657267;
    }

    else
    {
      v4 = 6579570;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE400000000000000;
  v8 = 1702194274;
  if (a2 != 2)
  {
    v8 = 0x6168706C61;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6E65657267;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A34CDE30();
  }

  return v11 & 1;
}

uint64_t sub_1A32E8974(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x726574656D616964;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEA00000000007375;
    v4 = 0xE700000000000000;
    if (a1 == 2)
    {
      v6 = 0x6964615272756C62;
    }

    else
    {
      v6 = 0x7974696361706FLL;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xE500000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x726F6C6F63;
    }

    else
    {
      v6 = 0x726574656D616964;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6964615272756C62;
  v10 = 0xEA00000000007375;
  if (a2 != 2)
  {
    v9 = 0x7974696361706FLL;
    v10 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x726F6C6F63;
    v8 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1A34CDE30();
  }

  return v13 & 1;
}

uint64_t sub_1A32E8AB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x596D756D6978616DLL;
  if (a1 != 6)
  {
    v5 = 0x506C61636F467369;
    v4 = 0xEC000000746E696FLL;
  }

  v6 = 0x586D756D6978616DLL;
  if (a1 != 4)
  {
    v6 = 0x596D756D696E696DLL;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = 0xE800000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1936941421;
  if (a1 != 2)
  {
    v8 = 0x586D756D696E696DLL;
    v7 = 0xE800000000000000;
  }

  v9 = 0x726F6C6F63;
  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v9 = 0x6E6F697461636F6CLL;
  }

  if (a1 > 1u)
  {
    v3 = v7;
  }

  else
  {
    v8 = v9;
  }

  if (a1 <= 3u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 3)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v12 = 0xE500000000000000;
        if (v10 != 0x726F6C6F63)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x6E6F697461636F6CLL)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_43;
    }

    if (a2 == 2)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1936941421)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v12 = 0xE800000000000000;
    v13 = 1768843629;
LABEL_40:
    if (v10 != (v13 | 0x586D756D00000000))
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (a2 <= 5u)
  {
    v12 = 0xE800000000000000;
    if (a2 == 4)
    {
      v13 = 1769496941;
      goto LABEL_40;
    }

    v14 = 1768843629;
LABEL_37:
    if (v10 != (v14 | 0x596D756D00000000))
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (a2 == 6)
  {
    v12 = 0xE800000000000000;
    v14 = 1769496941;
    goto LABEL_37;
  }

  v12 = 0xEC000000746E696FLL;
  if (v10 != 0x506C61636F467369)
  {
LABEL_45:
    v15 = sub_1A34CDE30();
    goto LABEL_46;
  }

LABEL_43:
  if (v11 != v12)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

uint64_t sub_1A32E8CFC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000726562;
  v3 = 0x6D754E656E6F6870;
  v4 = a1;
  v5 = 0xE400000000000000;
  v6 = 1702129518;
  if (a1 != 5)
  {
    v6 = 0x6D6F74737563;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7961646874726962;
  if (a1 != 3)
  {
    v8 = 0x52746361746E6F63;
    v7 = 0xEF6E6F6974616C65;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6464416C69616D65;
  v10 = 0xEC00000073736572;
  if (a1 != 1)
  {
    v9 = 0x64416C6174736F70;
    v10 = 0xED00007373657264;
  }

  if (!a1)
  {
    v9 = 0x6D754E656E6F6870;
    v10 = 0xEB00000000726562;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEC00000073736572;
        if (v11 != 0x6464416C69616D65)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xED00007373657264;
        if (v11 != 0x64416C6174736F70)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE400000000000000;
        if (v11 != 1702129518)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x6D6F74737563)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x7961646874726962)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v3 = 0x52746361746E6F63;
    v2 = 0xEF6E6F6974616C65;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_1A34CDE30();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_1A32E8F48(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1752457584;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0x80000001A350ACD0;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x7265746E6563;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x736C616974696E69;
    }

    else
    {
      v3 = 1953394534;
    }

    if (v2 == 3)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 1752457584;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (a2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0x80000001A350ACD0;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE600000000000000;
    if (v3 != 0x7265746E6563)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x736C616974696E69)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    if (v3 != 1953394534)
    {
LABEL_34:
      v7 = sub_1A34CDE30();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}