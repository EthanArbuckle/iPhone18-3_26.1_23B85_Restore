uint64_t sub_1D1823224()
{
  v2 = *(type metadata accessor for AccessoryDetailsBasicInfo() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D17C4CF0;

  return sub_1D1810A08();
}

uint64_t Color.init(_:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 16) && (v2 = sub_1D171D2F0(114, 0xE100000000000000), (v3 & 1) != 0) && *(v1 + 16) && (v4 = *(*(v1 + 56) + 8 * v2), v5 = sub_1D171D2F0(103, 0xE100000000000000), (v6 & 1) != 0) && *(v1 + 16) && (v7 = *(*(v1 + 56) + 8 * v5), v8 = sub_1D171D2F0(98, 0xE100000000000000), (v9 & 1) != 0))
    {
      v10 = *(*(v1 + 56) + 8 * v8);

      v11 = sub_1D1E6731C();
      v12 = *(*(v11 - 8) + 64);
      MEMORY[0x1EEE9AC00](v11);
      (*(v14 + 104))(&v15 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D0]);
      return sub_1D1E6744C();
    }

    else
    {

      return 0;
    }
  }

  return result;
}

unint64_t Color.colorDictionary.getter()
{
  v0 = sub_1D1E6721C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6720C();
  sub_1D1E6740C();
  (*(v1 + 8))(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644940, &qword_1D1E76910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E6F900;
  *(inited + 32) = 114;
  *(inited + 40) = 0xE100000000000000;
  sub_1D1E6741C();
  *(inited + 48) = v6;
  *(inited + 56) = 103;
  *(inited + 64) = 0xE100000000000000;
  sub_1D1E6743C();
  *(inited + 72) = v7;
  *(inited + 80) = 98;
  *(inited + 88) = 0xE100000000000000;
  sub_1D1E6742C();
  *(inited + 96) = v8;
  v9 = sub_1D18D8D08(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC644948, &qword_1D1E76918);
  swift_arrayDestroy();
  return v9;
}

uint64_t sub_1D1823680()
{
  result = sub_1D1E673EC();
  qword_1EC644938 = result;
  return result;
}

uint64_t static Color.homeAccentColor.getter()
{
  if (qword_1EC642158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static Color.homeAccentColor.setter(uint64_t a1)
{
  if (qword_1EC642158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EC644938 = a1;
}

uint64_t (*static Color.homeAccentColor.modify())()
{
  if (qword_1EC642158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t Color.resolve(for:)(uint64_t a1)
{
  v2 = sub_1D1E6721C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6720C();
  v7 = sub_1D1E671BC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  (*(v10 + 16))(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1D1E671FC();
  sub_1D1E6740C();
  v11 = sub_1D1E6745C();
  (*(v3 + 8))(v6, v2);
  return v11;
}

uint64_t DynamicColor.init(light:dark:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(*(a3 - 8) + 32);
  v9(a3 - 8, a4, a1);
  v7 = a4 + *(type metadata accessor for DynamicColor() + 36);

  return v9(v7, a2, a3);
}

uint64_t DynamicColor.resolve(in:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E671BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = sub_1D1E671EC();
  MEMORY[0x1EEE9AC00](v7);
  v8 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E697DBC0], v4);
  v9 = sub_1D1E671AC();
  v10 = *(v5 + 8);
  v10(v8, v4);
  v10(v8, v4);
  if ((v9 & 1) == 0)
  {
    v11 = v2 + *(a2 + 36);
  }

  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  return sub_1D1E6715C();
}

uint64_t OnOffColor.on.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1D16EEE20(a1, v1);
}

uint64_t OnOffColor.off.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_1D16EEE20(a1, v1 + 40);
}

uint64_t OnOffColor.init(on:off:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D16EEE20(a1, a3);

  return sub_1D16EEE20(a2, a3 + 40);
}

uint64_t OnOffColor.init<A, B>(onLight:onDark:offLight:offDark:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v12 = type metadata accessor for DynamicColor();
  a7[3] = v12;
  a7[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a7);
  v14 = *(*(a5 - 8) + 32);
  v14(boxed_opaque_existential_1, a1, a5);
  v14((boxed_opaque_existential_1 + *(v12 + 36)), a2, a5);
  v15 = type metadata accessor for DynamicColor();
  a7[8] = v15;
  a7[9] = swift_getWitnessTable();
  v16 = __swift_allocate_boxed_opaque_existential_1(a7 + 5);
  v21 = *(*(a6 - 8) + 32);
  v21(v16, a3, a6);
  v17 = v16 + *(v15 + 36);

  return (v21)(v17, a4, a6);
}

uint64_t OnOffColor.init<A>(on:offLight:offDark:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1D16EEE20(a1, a5);
  v9 = type metadata accessor for DynamicColor();
  a5[8] = v9;
  a5[9] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5 + 5);
  v13 = *(*(a4 - 8) + 32);
  v13(boxed_opaque_existential_1, a2, a4);
  v11 = boxed_opaque_existential_1 + *(v9 + 36);

  return (v13)(v11, a3, a4);
}

uint64_t OnOffColor.init<A>(onLight:onDark:off:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for DynamicColor();
  a5[3] = v10;
  a5[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  v12 = *(*(a4 - 8) + 32);
  v12(boxed_opaque_existential_1, a1, a4);
  v12((boxed_opaque_existential_1 + *(v10 + 36)), a2, a4);

  return sub_1D16EEE20(a3, (a5 + 5));
}

uint64_t OnOffColor.resolve(for:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v4 = v2[3];
    v5 = v2[4];
    v6 = v2;
  }

  else
  {
    v4 = v2[8];
    v7 = v2[9];
    v6 = v2 + 5;
  }

  v8 = __swift_project_boxed_opaque_existential_1(v6, v4);
  v9 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_1D1E671CC();
  *a2 = result;
  return result;
}

uint64_t ColorWithSchemeOverride.init(color:overrideColorScheme:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for ColorWithSchemeOverride() + 20);
  v6 = sub_1D1E671BC();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t ColorWithSchemeOverride.resolve(in:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D1E6721C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  v11 = *(type metadata accessor for ColorWithSchemeOverride() + 20);
  v12 = sub_1D1E671BC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  (*(v15 + 16))(&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), &v3[v11]);
  sub_1D1E671FC();
  v16 = *v3;
  sub_1D1E6740C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  result = (*(v7 + 8))(v10, v6);
  *a2 = v18;
  a2[1] = v20;
  a2[2] = v22;
  a2[3] = v24;
  return result;
}

uint64_t sub_1D18244B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v5 = v3;
  v8 = sub_1D1E6721C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  v13 = *(a2 + 20);
  v14 = sub_1D1E671BC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  (*(v17 + 16))(&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), &v5[v13]);
  sub_1D1E671FC();
  v18 = *v5;
  sub_1D1E6740C();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  result = (*(v9 + 8))(v12, v8);
  *a3 = v20;
  a3[1] = v22;
  a3[2] = v24;
  a3[3] = v26;
  return result;
}

uint64_t static ShapeStyle<>.dynamic<A>(light:dark:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  v14 = v7[2];
  v14(&v18 - v12);
  (v14)(v11, a2, a3);
  v15 = v7[4];
  v15(a4, v13, a3);
  v16 = type metadata accessor for DynamicColor();
  return (v15)(a4 + *(v16 + 36), v11, a3);
}

uint64_t View.foregroundStyle(_:isOn:)(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1[3];
    v3 = a1[4];
  }

  else
  {
    v2 = a1[8];
    v4 = a1[9];
    a1 += 5;
  }

  v5 = __swift_project_boxed_opaque_existential_1(a1, v2);
  v6 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 16))(v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10[1] = sub_1D1E671CC();
  sub_1D1E672FC();
}

uint64_t View.background(_:isOn:)(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1[3];
    v3 = a1[4];
  }

  else
  {
    v2 = a1[8];
    v4 = a1[9];
    a1 += 5;
  }

  v5 = __swift_project_boxed_opaque_existential_1(a1, v2);
  v6 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 16))(v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10[1] = sub_1D1E671CC();
  sub_1D1E6729C();
  sub_1D1E672CC();
}

uint64_t View.background<A>(_:in:isOn:fillStyle:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16[1] = a7;
  if (a3)
  {
    v7 = a1[3];
    v8 = __swift_project_boxed_opaque_existential_1(a1, v7);
    v9 = *(*(v7 - 8) + 64);
  }

  else
  {
    v12 = a1[8];
    v13 = a1[9];
    v8 = __swift_project_boxed_opaque_existential_1(a1 + 5, v12);
    v14 = *(*(v12 - 8) + 64);
  }

  MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16[3] = sub_1D1E671CC();
  sub_1D1E672DC();
}

uint64_t type metadata accessor for ColorWithSchemeOverride()
{
  result = qword_1EC6449D0;
  if (!qword_1EC6449D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1824D2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D1824D9C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_1D1824EEC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_1D1825120(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D1825168(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1D18251F4()
{
  result = sub_1D1E671BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA24_ForegroundStyleModifierVyAA08AnyShapeG0VGGAaBHPxAaBHD1__AiA0cH0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v7 = *a1;
  v8 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_1D1E671DC();
  sub_1D17D8EA8(a4, a2, a3);
  return swift_getWitnessTable();
}

HomeDataModel::DeviceDisplayNames __swiftcall DeviceDisplayNames.init(name:roomName:)(Swift::String name, Swift::String_optional roomName)
{
  v2->value = name;
  v2[1] = roomName;
  result.roomName = roomName;
  result.name = name;
  return result;
}

uint64_t DeviceDisplayNames.displayName.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if (!v0[3])
  {
    goto LABEL_11;
  }

  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_1D1E678AC();
  v7 = v6;
  if (v5 == sub_1D1E678AC() && v7 == v8)
  {

    goto LABEL_11;
  }

  v10 = sub_1D1E6904C();

  if (v10)
  {
    goto LABEL_11;
  }

  sub_1D1E678AC();
  sub_1D1E678AC();
  MEMORY[0x1D3890F70](32, 0xE100000000000000);
  v11 = sub_1D1E679AC();

  if (v11)
  {
    result = sub_1D1E678FC();
    if (!__OFADD__(result, 1))
    {
      v13 = sub_1D1E6792C();

      v14 = sub_1D1825860(v13, v2, v1);
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v2 = MEMORY[0x1D3890F10](v14, v16, v18, v20);
LABEL_16:

      return v2;
    }

    __break(1u);
    goto LABEL_18;
  }

  sub_1D1E678AC();
  v21 = sub_1D1E678AC();
  MEMORY[0x1D3890F70](v21);

  v22 = sub_1D1E679BC();

  if ((v22 & 1) == 0)
  {
LABEL_11:

    return v2;
  }

  result = sub_1D1E678FC();
  if (!__OFADD__(result, 1))
  {
    sub_1D1E6792C();
    v23 = sub_1D1E67A0C();
    v2 = MEMORY[0x1D3890F10](v23);
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t DeviceDisplayNames.displayRoomName.getter()
{
  if (!v0[3])
  {
    return 0;
  }

  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_1D1E678AC();
  v7 = v6;
  if (v5 == sub_1D1E678AC() && v7 == v8)
  {

    goto LABEL_10;
  }

  v10 = sub_1D1E6904C();

  if (v10)
  {
    goto LABEL_10;
  }

  DeviceDisplayNames.displayName.getter();
  sub_1D1E678AC();

  sub_1D1E678AC();
  v12 = sub_1D1E679AC();

  if (v12)
  {
    DeviceDisplayNames.displayName.getter();
    sub_1D1E678AC();

    sub_1D1E678AC();
    MEMORY[0x1D3890F70](32, 0xE100000000000000);
    v13 = sub_1D1E679AC();

    v14 = v13 ^ 1;
  }

  else
  {
    v14 = 0;
  }

  DeviceDisplayNames.displayName.getter();
  sub_1D1E678AC();

  sub_1D1E678AC();
  v15 = sub_1D1E679BC();

  if ((v15 & 1) == 0)
  {
    if ((v14 & 1) == 0)
    {
      return v3;
    }

    goto LABEL_10;
  }

  DeviceDisplayNames.displayName.getter();
  sub_1D1E678AC();

  v16 = sub_1D1E678AC();
  MEMORY[0x1D3890F70](v16);

  v17 = sub_1D1E679BC();

  if ((v14 & 1) != 0 || (v17 & 1) == 0)
  {
LABEL_10:

    return 0;
  }

  return v3;
}

unint64_t sub_1D1825860(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1D1E67A0C();
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D18258B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D1825900(uint64_t result, int a2, int a3)
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

uint64_t SliderAlignment.alignment.getter()
{
  if (*v0 == 1)
  {
    return sub_1D1E674AC();
  }

  else
  {
    return sub_1D1E674BC();
  }
}

uint64_t StaticAlignment.alignment.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    if (*v0 > 1u)
    {
      if (v1 == 2)
      {
        return sub_1D1E674AC();
      }

      else
      {
        return sub_1D1E674DC();
      }
    }

    else if (*v0)
    {
      return sub_1D1E6747C();
    }

    else
    {
      return sub_1D1E6746C();
    }
  }

  else if (*v0 <= 5u)
  {
    if (v1 == 4)
    {
      return sub_1D1E674CC();
    }

    else
    {
      return sub_1D1E674EC();
    }
  }

  else if (v1 == 6)
  {
    return sub_1D1E6748C();
  }

  else if (v1 == 7)
  {
    return sub_1D1E674BC();
  }

  else
  {
    return sub_1D1E6749C();
  }
}

uint64_t StaticAlignment.description.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x696461654C706F74;
    v7 = 7368564;
    if (v1 != 2)
    {
      v7 = 0x654C7265746E6563;
    }

    if (*v0)
    {
      v6 = 0x6C69617254706F74;
    }

    if (*v0 <= 1u)
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
    v2 = 0x654C6D6F74746F62;
    v3 = 0x6D6F74746F62;
    if (v1 != 7)
    {
      v3 = 0x72546D6F74746F62;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x7265746E6563;
    if (v1 != 4)
    {
      v4 = 0x72547265746E6563;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

BOOL static StateValueType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      v5 = *a1;
      v6 = *a2;
      if (v2 == v3)
      {
        return *(a1 + 8) == *(a2 + 8);
      }
    }
  }

  else if ((*(a2 + 16) & 1) == 0)
  {
    v8 = *a1;
    v9 = *a2;
    if (v2 == v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t StateValueType.hash(into:)()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    MEMORY[0x1D3892850](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1D3892890](v3);
    v1 = v2;
  }

  else
  {
    MEMORY[0x1D3892850](0);
  }

  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  return MEMORY[0x1D3892890](v4);
}

uint64_t StateValueType.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1D1E6920C();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v1 = 0;
  }

  if (v3)
  {
    MEMORY[0x1D3892850](1);
    MEMORY[0x1D3892890](v1);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v1 = v2;
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    MEMORY[0x1D3892850](0);
  }

  MEMORY[0x1D3892890](v1);
  return sub_1D1E6926C();
}

BOOL sub_1D1825D68(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      v5 = *a1;
      v6 = *a2;
      if (v2 == v3)
      {
        return *(a1 + 8) == *(a2 + 8);
      }
    }
  }

  else if ((*(a2 + 16) & 1) == 0)
  {
    v8 = *a1;
    v9 = *a2;
    if (v2 == v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D1825DD0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1D1E6920C();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v1 = 0;
  }

  if (v3)
  {
    MEMORY[0x1D3892850](1);
    MEMORY[0x1D3892890](v1);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v1 = v2;
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    MEMORY[0x1D3892850](0);
  }

  MEMORY[0x1D3892890](v1);
  return sub_1D1E6926C();
}

unint64_t sub_1D1825E60()
{
  result = qword_1EC644A00;
  if (!qword_1EC644A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644A00);
  }

  return result;
}

unint64_t sub_1D1825EB8()
{
  result = qword_1EC644A08;
  if (!qword_1EC644A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644A08);
  }

  return result;
}

unint64_t sub_1D1825F10()
{
  result = qword_1EC644A10;
  if (!qword_1EC644A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644A18, &qword_1D1E76C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644A10);
  }

  return result;
}

unint64_t sub_1D1825F78()
{
  result = qword_1EC644A20;
  if (!qword_1EC644A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644A20);
  }

  return result;
}

uint64_t _s10SystemModeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10SystemModeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateValueType(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StateValueType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t StaticRenderingMode.symbolRenderingMode.getter()
{
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      return sub_1D1E6722C();
    }

    else
    {
      return sub_1D1E6725C();
    }
  }

  else if (*v0)
  {
    return sub_1D1E6723C();
  }

  else
  {
    return sub_1D1E6724C();
  }
}

uint64_t sub_1D1826250()
{
  v1 = 0x6863726172656968;
  v2 = 0x6F7268636F6E6F6DLL;
  if (*v0 != 2)
  {
    v2 = 0x657474656C6170;
  }

  if (*v0)
  {
    v1 = 0x6C6F6369746C756DLL;
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

uint64_t sub_1D18262D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D18276C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1826300(uint64_t a1)
{
  v2 = sub_1D182699C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D182633C(uint64_t a1)
{
  v2 = sub_1D182699C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1826384(uint64_t a1)
{
  v2 = sub_1D1826AEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18263C0(uint64_t a1)
{
  v2 = sub_1D1826AEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18263FC(uint64_t a1)
{
  v2 = sub_1D1826A44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1826438(uint64_t a1)
{
  v2 = sub_1D1826A44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1826474(uint64_t a1)
{
  v2 = sub_1D1826A98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18264B0(uint64_t a1)
{
  v2 = sub_1D1826A98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18264EC(uint64_t a1)
{
  v2 = sub_1D18269F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1826528(uint64_t a1)
{
  v2 = sub_1D18269F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticRenderingMode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644A28, &qword_1D1E76D20);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644A30, &qword_1D1E76D28);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644A38, &qword_1D1E76D30);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644A40, &qword_1D1E76D38);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644A48, &qword_1D1E76D40);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D182699C();
  sub_1D1E6930C();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_1D1826A44();
      v24 = v33;
      sub_1D1E68DFC();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_1D18269F0();
      v24 = v36;
      sub_1D1E68DFC();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_1D1826A98();
    v24 = v30;
    sub_1D1E68DFC();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_1D1826AEC();
  sub_1D1E68DFC();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

unint64_t sub_1D182699C()
{
  result = qword_1EC644A50;
  if (!qword_1EC644A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644A50);
  }

  return result;
}

unint64_t sub_1D18269F0()
{
  result = qword_1EC644A58;
  if (!qword_1EC644A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644A58);
  }

  return result;
}

unint64_t sub_1D1826A44()
{
  result = qword_1EC644A60;
  if (!qword_1EC644A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644A60);
  }

  return result;
}

unint64_t sub_1D1826A98()
{
  result = qword_1EC644A68;
  if (!qword_1EC644A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644A68);
  }

  return result;
}

unint64_t sub_1D1826AEC()
{
  result = qword_1EC644A70;
  if (!qword_1EC644A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644A70);
  }

  return result;
}

uint64_t StaticRenderingMode.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t StaticRenderingMode.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644A78, &qword_1D1E76D48);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644A80, &qword_1D1E76D50);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644A88, &qword_1D1E76D58);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644A90, &qword_1D1E76D60);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644A98, &unk_1D1E76D68);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D182699C();
  v21 = v53;
  sub_1D1E692FC();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_1D1E68DDC();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_1D18085BC();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_1D1E688EC();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v34 = &type metadata for StaticRenderingMode;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_1D1826A98();
        v39 = v42;
        sub_1D1E68C4C();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_1D1826AEC();
        v31 = v42;
        sub_1D1E68C4C();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_1D1826A44();
      v38 = v42;
      sub_1D1E68C4C();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_1D18269F0();
      v40 = v42;
      sub_1D1E68C4C();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

unint64_t sub_1D1827214()
{
  result = qword_1EC644AA0;
  if (!qword_1EC644AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644AA0);
  }

  return result;
}

unint64_t sub_1D18272FC()
{
  result = qword_1EC644AA8;
  if (!qword_1EC644AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644AA8);
  }

  return result;
}

unint64_t sub_1D1827354()
{
  result = qword_1EC644AB0;
  if (!qword_1EC644AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644AB0);
  }

  return result;
}

unint64_t sub_1D18273AC()
{
  result = qword_1EC644AB8;
  if (!qword_1EC644AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644AB8);
  }

  return result;
}

unint64_t sub_1D1827404()
{
  result = qword_1EC644AC0;
  if (!qword_1EC644AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644AC0);
  }

  return result;
}

unint64_t sub_1D182745C()
{
  result = qword_1EC644AC8;
  if (!qword_1EC644AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644AC8);
  }

  return result;
}

unint64_t sub_1D18274B4()
{
  result = qword_1EC644AD0;
  if (!qword_1EC644AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644AD0);
  }

  return result;
}

unint64_t sub_1D182750C()
{
  result = qword_1EC644AD8;
  if (!qword_1EC644AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644AD8);
  }

  return result;
}

unint64_t sub_1D1827564()
{
  result = qword_1EC644AE0;
  if (!qword_1EC644AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644AE0);
  }

  return result;
}

unint64_t sub_1D18275BC()
{
  result = qword_1EC644AE8;
  if (!qword_1EC644AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644AE8);
  }

  return result;
}

unint64_t sub_1D1827614()
{
  result = qword_1EC644AF0;
  if (!qword_1EC644AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644AF0);
  }

  return result;
}

unint64_t sub_1D182766C()
{
  result = qword_1EC644AF8;
  if (!qword_1EC644AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644AF8);
  }

  return result;
}

uint64_t sub_1D18276C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6863726172656968 && a2 == 0xEC0000006C616369;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F6369746C756DLL && a2 == 0xEA0000000000726FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F7268636F6E6F6DLL && a2 == 0xEA0000000000656DLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657474656C6170 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1827838(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 64);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = *(v6 - 1);
    v9 = *v6;
    v11 = *(v6 - 3);
    v12 = *(v6 - 2);
    v27[0] = *(v6 - 4);
    v27[1] = v11;
    v27[2] = v12;
    v27[3] = v10;
    v27[4] = v9;

    a1(&v28, v27);
    if (v4)
    {

      return v7;
    }

    v13 = v28;
    v14 = *(v28 + 16);
    v15 = v7[2];
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v16 <= v7[3] >> 1)
    {
      if (*(v13 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v18 = v15 + v14;
      }

      else
      {
        v18 = v15;
      }

      v7 = sub_1D177DC54(isUniquelyReferenced_nonNull_native, v18, 1, v7);
      if (*(v13 + 16))
      {
LABEL_15:
        v19 = (v7[3] >> 1) - v7[2];
        result = type metadata accessor for StaticServiceCharacteristicDoublet();
        v20 = *(result - 8);
        if (v19 < v14)
        {
          goto LABEL_24;
        }

        v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v22 = *(v20 + 72);
        swift_arrayInitWithCopy();

        if (v14)
        {
          v23 = v7[2];
          v24 = __OFADD__(v23, v14);
          v25 = v23 + v14;
          if (v24)
          {
            goto LABEL_25;
          }

          v7[2] = v25;
        }

        goto LABEL_4;
      }
    }

    if (v14)
    {
      goto LABEL_23;
    }

LABEL_4:
    v6 += 5;
    if (!--v5)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t StaticServiceCharacteristicDoublet.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticServiceCharacteristicDoublet() + 24);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for StaticServiceCharacteristicDoublet()
{
  result = qword_1EC644B48;
  if (!qword_1EC644B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticServiceCharacteristicDoublet.staticAccessoryID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticServiceCharacteristicDoublet.staticServiceID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticServiceCharacteristicDoublet() + 20);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

BOOL static StaticServiceCharacteristicDoublet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v5 = *(v4 + 20);
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v4 + 24);

  return _s13HomeDataModel20StaticCharacteristicV2eeoiySbAC_ACtFZ_0(a1 + v6, a2 + v6);
}

unint64_t sub_1D1827CE0()
{
  v1 = 0x6553636974617473;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1D1827D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D182BDB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1827D74(uint64_t a1)
{
  v2 = sub_1D182BA04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1827DB0(uint64_t a1)
{
  v2 = sub_1D182BA04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticServiceCharacteristicDoublet.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B00, &qword_1D1E77270);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D182BA04();
  sub_1D1E6930C();
  v16 = 0;
  sub_1D1E66A7C();
  sub_1D182BB5C(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v1)
  {
    v9 = type metadata accessor for StaticServiceCharacteristicDoublet();
    v10 = *(v9 + 20);
    v15 = 1;
    sub_1D1E68F1C();
    v11 = *(v9 + 24);
    v14 = 2;
    type metadata accessor for StaticCharacteristic();
    sub_1D182BB5C(&qword_1EC644B10, type metadata accessor for StaticCharacteristic);
    sub_1D1E68F1C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t StaticServiceCharacteristicDoublet.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_1D1E66A7C();
  sub_1D182BB5C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v4 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v5 = v1 + *(v4 + 20);
  sub_1D1E676EC();
  v6 = v2 + *(v4 + 24);
  return StaticCharacteristic.hash(into:)(a1);
}

uint64_t StaticServiceCharacteristicDoublet.hashValue.getter()
{
  v1 = v0;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D182BB5C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v2 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v3 = v0 + *(v2 + 20);
  sub_1D1E676EC();
  v4 = v1 + *(v2 + 24);
  StaticCharacteristic.hash(into:)(v6);
  return sub_1D1E6926C();
}

uint64_t StaticServiceCharacteristicDoublet.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = type metadata accessor for StaticCharacteristic();
  v3 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1E66A7C();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v27 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B18, &qword_1D1E77278);
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  v15 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D182BA04();
  v37 = v14;
  v20 = v38;
  sub_1D1E692FC();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v15;
  v29 = v18;
  v38 = a1;
  v41 = 0;
  sub_1D182BB5C(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  v21 = v34;
  sub_1D1E68D7C();
  v34 = *(v33 + 32);
  (v34)(v29, v21, v5);
  v40 = 1;
  v22 = v9;
  sub_1D1E68D7C();
  v23 = v29;
  (v34)(&v29[*(v28 + 20)], v22, v5);
  v39 = 2;
  sub_1D182BB5C(&qword_1EC644B28, type metadata accessor for StaticCharacteristic);
  v24 = v32;
  sub_1D1E68D7C();
  v25 = v38;
  (*(v35 + 8))(v37, v36);
  sub_1D182BFE8(v24, v23 + *(v28 + 24), type metadata accessor for StaticCharacteristic);
  sub_1D182BA58(v23, v30, type metadata accessor for StaticServiceCharacteristicDoublet);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_1D182BF88(v23, type metadata accessor for StaticServiceCharacteristicDoublet);
}

BOOL sub_1D18286A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);

  return _s13HomeDataModel20StaticCharacteristicV2eeoiySbAC_ACtFZ_0(a1 + v7, a2 + v7);
}

uint64_t sub_1D1828720(uint64_t a1)
{
  v3 = v1;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D182BB5C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v4 = v1 + *(a1 + 20);
  sub_1D1E676EC();
  v5 = v3 + *(a1 + 24);
  StaticCharacteristic.hash(into:)(v7);
  return sub_1D1E6926C();
}

uint64_t sub_1D18287EC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1D1E66A7C();
  sub_1D182BB5C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v6 = v2 + *(a2 + 20);
  sub_1D1E676EC();
  v7 = v4 + *(a2 + 24);
  return StaticCharacteristic.hash(into:)(a1);
}

uint64_t sub_1D18288A0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D182BB5C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v5 = v2 + *(a2 + 20);
  sub_1D1E676EC();
  v6 = v4 + *(a2 + 24);
  StaticCharacteristic.hash(into:)(v8);
  return sub_1D1E6926C();
}

uint64_t sub_1D1828968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1D1E66A7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D1828A0C(uint64_t a1, char a2, char a3, char a4, uint64_t a5)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  v10 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v12 = &v35 - v11;
  v46 = MEMORY[0x1E69E7CC0];
  v13 = 1 << *(a5 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a5 + 64);
  v16 = (v13 + 63) >> 6;
  v37 = a4 & 1;
  v38 = a2 & 1;
  v36 = a3 & 1;

  for (i = 0; v15; result = sub_1D17A3D7C(&v47))
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = v20 | (v19 << 6);
    v22 = *(a5 + 48);
    v23 = sub_1D1E66A7C();
    (*(*(v23 - 8) + 16))(v12, v22 + *(*(v23 - 8) + 72) * v21, v23);
    v24 = *(a5 + 56);
    v25 = (type metadata accessor for StaticAccessory(0) - 8);
    v26 = v24 + *(*v25 + 72) * v21;
    v27 = &v12[*(v39 + 48)];
    sub_1D182BA58(v26, v27, type metadata accessor for StaticAccessory);
    v28 = *(v27 + v25[22]);
    v29 = swift_allocObject();
    *(v29 + 16) = v38;
    *&v42 = v28;
    *(&v42 + 1) = sub_1D182C050;
    v43 = v29;
    *(swift_allocObject() + 16) = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B78, &unk_1D1E774E0);
    sub_1D1E68B7C();

    v40 = v44;
    v41 = v45;
    *(swift_allocObject() + 16) = v36;
    sub_1D1E68B7C();

    v40 = v42;
    v41 = v43;
    v30 = swift_allocObject();
    *(v30 + 16) = a1;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1D182C068;
    *(v31 + 24) = v30;

    sub_1D1E68B7C();

    v32 = v45;
    v33 = swift_allocObject();
    *(v33 + 16) = a1;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_1D182C0C4;
    *(v34 + 24) = v33;
    v47 = v44;
    v48 = v32;
    v49 = sub_1D182C110;
    v50 = v34;

    sub_1D1741A30(v12, &qword_1EC644B30, &qword_1D1E77280);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      return v46;
    }

    v15 = *(a5 + 64 + 8 * v19);
    ++i;
    if (v15)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t Dictionary<>.staticServiceCharacteristicDoublets<A>(matching:filterOutHiddenStatusAccessories:skipNoResponseAccessories:skipCalibratingAccessories:)(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v31 = a7;
  v28 = a3;
  v29 = a4;
  HIDWORD(v27) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v32 = MEMORY[0x1E69E7CC0];
  v13 = 1 << *(a5 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a5 + 64);
  v16 = (v13 + 63) >> 6;

  for (i = 0; v15; result = sub_1D17A3D7C(v33))
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = v20 | (v19 << 6);
    v22 = *(a5 + 48);
    v23 = sub_1D1E66A7C();
    (*(*(v23 - 8) + 16))(v12, v22 + *(*(v23 - 8) + 72) * v21, v23);
    v24 = *(a5 + 56);
    v25 = v24 + *(*(type metadata accessor for StaticAccessory(0) - 8) + 72) * v21;
    v26 = *(v9 + 48);
    sub_1D182BA58(v25, &v12[v26], type metadata accessor for StaticAccessory);
    sub_1D1829054(v12, &v12[v26], BYTE4(v27) & 1, v29 & 1, v28 & 1, a1, v30, v31, v33);
    sub_1D1741A30(v12, &qword_1EC644B30, &qword_1D1E77280);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      return v32;
    }

    v15 = *(a5 + 64 + 8 * v19);
    ++i;
    if (v15)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double sub_1D1829054@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v32 = a8;
  v34 = a6;
  v37 = a9;
  v16 = *(a7 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + *(type metadata accessor for StaticAccessory(0) + 80));
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *&v40 = v18;
  *(&v40 + 1) = sub_1D182C47C;
  v41 = v19;
  *(swift_allocObject() + 16) = a4;

  *&v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B78, &unk_1D1E774E0);
  sub_1D1E68B7C();

  v38 = v42;
  v39 = v43;
  *(swift_allocObject() + 16) = a5;
  sub_1D1E68B7C();

  v38 = v40;
  v39 = v41;
  v33 = *(v16 + 16);
  v20 = v36;
  v33(v36, a6, a7);
  v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a7;
  *(v22 + 24) = a8;
  v23 = *(v16 + 32);
  v23(v22 + v21, v20, a7);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1D182C1B8;
  *(v24 + 24) = v22;
  sub_1D1E68B7C();

  v25 = v43;
  v35 = v42;
  v33(v20, v34, a7);
  v26 = swift_allocObject();
  v27 = v32;
  *(v26 + 16) = a7;
  *(v26 + 24) = v27;
  v23(v26 + v21, v20, a7);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1D182C2DC;
  *(v28 + 24) = v26;
  v29 = v37;
  result = *&v35;
  *v37 = v35;
  v29[2] = v25;
  v29[3] = sub_1D182C474;
  v29[4] = v28;
  return result;
}

uint64_t sub_1D18293BC(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  if ((a2 & 1) == 0)
  {
    return 1;
  }

  sub_1D182C148(a1, &v12 - v6);
  v8 = &v7[*(v4 + 48)];
  v9 = *(v8 + *(type metadata accessor for StaticService(0) + 96));
  sub_1D182BF88(v8, type metadata accessor for StaticService);
  v10 = sub_1D1E66A7C();
  (*(*(v10 - 8) + 8))(v7, v10);
  return v9;
}

uint64_t sub_1D18294C8(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  if (a2)
  {
    sub_1D182C148(a1, &v13 - v6);
    v8 = &v7[*(v4 + 48)];
    v9 = *(v8 + *(type metadata accessor for StaticService(0) + 36));
    sub_1D182BF88(v8, type metadata accessor for StaticService);
    v10 = sub_1D1E66A7C();
    (*(*(v10 - 8) + 8))(v7, v10);
    v11 = v9 ^ 1;
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

uint64_t sub_1D18295D8(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for StatusStrings.Options();
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    return 1;
  }

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360) + 48);
  v12 = v7[11];
  v13 = sub_1D1E669FC();
  (*(*(v13 - 8) + 56))(&v10[v12], 1, 1, v13);
  *v10 = 257;
  *(v10 + 2) = 0;
  v10[6] = 0;
  v10[v7[12]] = 2;
  v14 = &v10[v7[13]];
  v14[4] = 0;
  *v14 = 2;
  v15 = type metadata accessor for StaticMatterDevice();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  StaticService.statusString(with:associatedMatterDevice:)(v10);
  v17 = v16;
  sub_1D1741A30(v6, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D182BF88(v10, type metadata accessor for StatusStrings.Options);
  if (!v17)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D18297D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B70, &qword_1D1E774D8);
  v6 = *(a5 + 8);
  sub_1D182C3C8();
  return sub_1D1E67ACC();
}

uint64_t sub_1D1829864@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for StaticCharacteristic();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StaticService(0);
  v16 = *(a2 + *(v15 + 128));
  if (!*(v16 + 16))
  {
    (*(v11 + 56))(v9, 1, 1, v10);
LABEL_7:
    sub_1D1741A30(v9, &qword_1EC643630, &qword_1D1E71D10);
    v22 = type metadata accessor for StaticServiceCharacteristicDoublet();
    return (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
  }

  v17 = v15;
  v18 = *a1;
  v19 = *(a2 + *(v15 + 128));

  v20 = sub_1D171D140(v18);
  if (v21)
  {
    sub_1D182BA58(*(v16 + 56) + *(v11 + 72) * v20, v9, type metadata accessor for StaticCharacteristic);
    (*(v11 + 56))(v9, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_7;
  }

  sub_1D182BFE8(v9, v14, type metadata accessor for StaticCharacteristic);
  v24 = *(v17 + 44);
  v25 = sub_1D1E66A7C();
  v26 = *(*(v25 - 8) + 16);
  v26(a3, a2 + v24, v25);
  v27 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v26(a3 + *(v27 + 20), a2, v25);
  sub_1D182BFE8(v14, a3 + *(v27 + 24), type metadata accessor for StaticCharacteristic);
  return (*(*(v27 - 8) + 56))(a3, 0, 1, v27);
}

uint64_t Dictionary<>.staticServiceCharacteristicDoublets(matching:filterOutHiddenStatusAccessories:skipNoResponseAccessories:)(uint64_t *a1, char a2, char a3, uint64_t a4)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D1E739C0;
  *(v12 + 32) = v8;
  *(v12 + 40) = v7;
  *(v12 + 48) = v9;
  *(v12 + 56) = v10;
  *(v12 + 64) = v11;

  v13 = sub_1D1828A0C(v12, a2, a3, 0, a4);

  return v13;
}

uint64_t sub_1D1829C68(uint64_t a1, int a2, uint64_t a3)
{
  v57 = a2;
  v53 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v56 = &v52 - v6;
  v55 = type metadata accessor for StatusStrings.Options();
  v7 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v60 = &v52 - v11;
  v12 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 64);
  v52 = (v13 + 63) >> 6;
  v58 = a3;

  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  while (v15)
  {
    v59 = v18;
LABEL_11:
    v20 = __clz(__rbit64(v15)) | (v17 << 6);
    v21 = v58;
    v22 = *(v58 + 48);
    v23 = sub_1D1E66A7C();
    v24 = v60;
    (*(*(v23 - 8) + 16))(v60, v22 + *(*(v23 - 8) + 72) * v20, v23);
    v25 = *(v21 + 56);
    v26 = v25 + *(*(type metadata accessor for StaticService(0) - 8) + 72) * v20;
    v27 = v24 + *(v54 + 48);
    sub_1D182BA58(v26, v27, type metadata accessor for StaticService);
    v28 = v55;
    v29 = *(v55 + 44);
    v30 = sub_1D1E669FC();
    (*(*(v30 - 8) + 56))(&v9[v29], 1, 1, v30);
    *v9 = 257;
    *(v9 + 2) = 0;
    v9[6] = 0;
    v9[*(v28 + 48)] = 2;
    v31 = &v9[*(v28 + 52)];
    v31[4] = 0;
    *v31 = 2;
    v32 = type metadata accessor for StaticMatterDevice();
    v33 = v56;
    (*(*(v32 - 8) + 56))(v56, 1, 1, v32);
    StaticService.statusString(with:associatedMatterDevice:)(v9);
    v35 = v34;
    sub_1D1741A30(v33, &qword_1EC643650, &qword_1D1E71D40);
    v36 = sub_1D182BF88(v9, type metadata accessor for StatusStrings.Options);
    if (v57)
    {
      if (v35)
      {

        goto LABEL_17;
      }
    }

    else
    {
    }

    MEMORY[0x1EEE9AC00](v36);
    *(&v52 - 2) = v27;
    v37 = v53;
    v38 = sub_1D1C92714(0, sub_1D182BF50, (&v52 - 4), v53);
    if (v38)
    {
      MEMORY[0x1EEE9AC00](v38);
      *(&v52 - 2) = v27;
      v39 = sub_1D18FBBB8(MEMORY[0x1E69E7CC0], sub_1D182BF6C, (&v52 - 4), v37);
      goto LABEL_18;
    }

LABEL_17:
    v39 = MEMORY[0x1E69E7CC0];
LABEL_18:
    result = sub_1D1741A30(v60, &qword_1EC642DB0, &unk_1D1E6F360);
    v40 = *(v39 + 16);
    v18 = v59;
    v41 = v59[2];
    v42 = v41 + v40;
    if (__OFADD__(v41, v40))
    {
      goto LABEL_32;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v42 > v18[3] >> 1)
    {
      if (v41 <= v42)
      {
        v44 = v41 + v40;
      }

      else
      {
        v44 = v41;
      }

      v18 = sub_1D177DC54(isUniquelyReferenced_nonNull_native, v44, 1, v18);
    }

    v15 &= v15 - 1;
    if (*(v39 + 16))
    {
      v45 = (v18[3] >> 1) - v18[2];
      result = type metadata accessor for StaticServiceCharacteristicDoublet();
      v46 = *(result - 8);
      if (v45 < v40)
      {
        goto LABEL_34;
      }

      v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v48 = *(v46 + 72);
      swift_arrayInitWithCopy();

      if (v40)
      {
        v49 = v18[2];
        v50 = __OFADD__(v49, v40);
        v51 = v49 + v40;
        if (v50)
        {
          goto LABEL_35;
        }

        v18[2] = v51;
      }
    }

    else
    {

      if (v40)
      {
        goto LABEL_33;
      }
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v52)
    {

      return v18;
    }

    v15 = *(v12 + 8 * v19);
    ++v17;
    if (v15)
    {
      v59 = v18;
      v17 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t Dictionary<>.staticServiceCharacteristicDoublets<A>(matching:skipNoResponsServices:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v40 = a2;
  v39 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v6 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v8 = &v38 - v7;
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  v43 = a3;

  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  while (v12)
  {
LABEL_10:
    v18 = __clz(__rbit64(v12)) | (v15 << 6);
    v19 = v43;
    v20 = *(v43 + 48);
    v21 = sub_1D1E66A7C();
    (*(*(v21 - 8) + 16))(v8, v20 + *(*(v21 - 8) + 72) * v18, v21);
    v22 = *(v19 + 56);
    v23 = v22 + *(*(type metadata accessor for StaticService(0) - 8) + 72) * v18;
    v24 = *(v38 + 48);
    sub_1D182BA58(v23, &v8[v24], type metadata accessor for StaticService);
    v25 = sub_1D182A4B8(v8, &v8[v24], v40 & 1, v39, v41, v42);
    result = sub_1D1741A30(v8, &qword_1EC642DB0, &unk_1D1E6F360);
    v26 = *(v25 + 16);
    v27 = v16[2];
    v28 = v27 + v26;
    if (__OFADD__(v27, v26))
    {
      goto LABEL_24;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v28 > v16[3] >> 1)
    {
      if (v27 <= v28)
      {
        v30 = v27 + v26;
      }

      else
      {
        v30 = v27;
      }

      v16 = sub_1D177DC54(isUniquelyReferenced_nonNull_native, v30, 1, v16);
    }

    v12 &= v12 - 1;
    if (*(v25 + 16))
    {
      v31 = (v16[3] >> 1) - v16[2];
      result = type metadata accessor for StaticServiceCharacteristicDoublet();
      v32 = *(result - 8);
      if (v31 < v26)
      {
        goto LABEL_26;
      }

      v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v34 = *(v32 + 72);
      swift_arrayInitWithCopy();

      if (v26)
      {
        v35 = v16[2];
        v36 = __OFADD__(v35, v26);
        v37 = v35 + v26;
        if (v36)
        {
          goto LABEL_27;
        }

        v16[2] = v37;
      }
    }

    else
    {

      if (v26)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {

      return v16;
    }

    v12 = *(v9 + 8 * v17);
    ++v15;
    if (v12)
    {
      v15 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D182A4B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for StatusStrings.Options();
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v14[13];
  v19 = sub_1D1E669FC();
  (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);
  *v17 = 257;
  *(v17 + 2) = 0;
  v17[6] = 0;
  v17[v14[14]] = 2;
  v20 = &v17[v14[15]];
  v20[4] = 0;
  *v20 = 2;
  v21 = type metadata accessor for StaticMatterDevice();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  StaticService.statusString(with:associatedMatterDevice:)(v17);
  v23 = v22;
  sub_1D1741A30(v12, &qword_1EC643650, &qword_1D1E71D40);
  v24 = sub_1D182BF88(v17, type metadata accessor for StatusStrings.Options);
  if (a3)
  {
    if (v23)
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
  }

  LOBYTE(v28) = 0;
  MEMORY[0x1EEE9AC00](v24);
  *(&v27 - 2) = a2;
  v26 = *(a6 + 8);
  sub_1D1E67AAC();
  result = MEMORY[0x1E69E7CC0];
  if (v29 == 1)
  {
    v28 = MEMORY[0x1E69E7CC0];
    MEMORY[0x1EEE9AC00](MEMORY[0x1E69E7CC0]);
    *(&v27 - 2) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B70, &qword_1D1E774D8);
    sub_1D1E67A9C();
    return v29;
  }

  return result;
}

BOOL sub_1D182A7C4@<W0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*a1)
  {
    result = 1;
  }

  else
  {
    v8 = *(a2 + 16);
    v7 = *(a2 + 24);
    v9 = type metadata accessor for StaticService(0);
    if (sub_1D17C4E00(*(a3 + *(v9 + 104)), v8))
    {
      if (*(v7 + 16))
      {
        if (*(a3 + *(v9 + 112)) == 53)
        {
          v10 = 0;
        }

        else
        {
          v10 = *(a3 + *(v9 + 112));
        }

        result = sub_1D17C4E00(v10, v7);
      }

      else
      {
        result = 1;
      }
    }

    else
    {
      result = 0;
    }
  }

  *a4 = result;
  return result;
}

uint64_t sub_1D182A86C(void **a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v5 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for StaticCharacteristic();
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 32);
  v18 = *(v17 + 16);
  if (v18)
  {
    v40 = type metadata accessor for StaticService(0);
    v41 = v16;
    v19 = *(v47 + *(v40 + 128));
    v20 = (v17 + 32);
    v21 = (v46 + 56);
    v22 = (v46 + 48);
    v42 = v12;
    v43 = v11;
    v38 = (v46 + 56);
    v39 = v19;
    v37 = (v46 + 48);
    do
    {
      if (*(v19 + 16))
      {
        v23 = *v20;

        v24 = sub_1D171D140(v23);
        if (v25)
        {
          sub_1D182BA58(*(v19 + 56) + *(v46 + 72) * v24, v11, type metadata accessor for StaticCharacteristic);
          v26 = 0;
        }

        else
        {
          v26 = 1;
        }

        (*v21)(v11, v26, 1, v12);

        if ((*v22)(v11, 1, v12) != 1)
        {
          sub_1D182BFE8(v11, v16, type metadata accessor for StaticCharacteristic);
          v27 = *(v40 + 44);
          v28 = sub_1D1E66A7C();
          v29 = *(*(v28 - 8) + 16);
          v30 = v47;
          v31 = v48;
          v29(v48, v47 + v27, v28);
          v32 = v45;
          v29(v31 + *(v45 + 20), v30, v28);
          v16 = v41;
          sub_1D182BA58(v41, v31 + *(v32 + 24), type metadata accessor for StaticCharacteristic);
          v33 = *a1;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_1D177DC54(0, v33[2] + 1, 1, v33);
          }

          v35 = v33[2];
          v34 = v33[3];
          v21 = v38;
          if (v35 >= v34 >> 1)
          {
            v33 = sub_1D177DC54(v34 > 1, v35 + 1, 1, v33);
          }

          sub_1D182BF88(v16, type metadata accessor for StaticCharacteristic);
          v33[2] = v35 + 1;
          result = sub_1D182BFE8(v48, v33 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v35, type metadata accessor for StaticServiceCharacteristicDoublet);
          *a1 = v33;
          v12 = v42;
          v11 = v43;
          v19 = v39;
          v22 = v37;
          goto LABEL_5;
        }
      }

      else
      {
        (*v21)(v11, 1, 1, v12);
      }

      result = sub_1D1741A30(v11, &qword_1EC643630, &qword_1D1E71D10);
LABEL_5:
      ++v20;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t Dictionary<>.staticServiceCharacteristicDoublets(matching:filterOutHiddenStatusAccessories:skipNoResponseServices:)(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v7;
  *(inited + 40) = v6;
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  *(inited + 64) = v10;

  v12 = sub_1D1829C68(inited, a3, a4);
  swift_setDeallocating();
  sub_1D182BAC0(inited + 32);
  return v12;
}

uint64_t Dictionary<>.staticServiceCharacteristicDoublets<A>(matching:skipHiddenServices:skipNoResponseServices:skipCalibratingServices:)(uint64_t a1, char a2, int a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1D182AF68(a5, a2, sub_1D182B530, sub_1D182B530);
  v13 = sub_1D182AF68(v12, a4, sub_1D182B0EC, sub_1D182B0EC);

  v14 = Dictionary<>.staticServiceCharacteristicDoublets<A>(matching:skipNoResponsServices:)(a1, a3, v13, a6, a7);

  return v14;
}

uint64_t sub_1D182AE80(uint64_t a1, char a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1D182AF68(a1, a2, sub_1D182B530, sub_1D182B530);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D182AEF4(uint64_t a1, char a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1D182AF68(a1, a2, sub_1D182B0EC, sub_1D182B0EC);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D182AF68(uint64_t a1, char a2, uint64_t (*a3)(char *, unint64_t, uint64_t, void), uint64_t (*a4)(void *, uint64_t, uint64_t, void))
{
  v7 = a1;
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = ((1 << v8) + 63) >> 6;
  if ((v8 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v11 = v17 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v11, v10);
    result = a3(v11, v9, v7, a2 & 1);
    if (v4)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v15 = swift_slowAlloc();
  v16 = sub_1D182B974(v15, v9, v7, a2 & 1, a4);
  result = MEMORY[0x1D3893640](v15, -1, -1);
  if (!v4)
  {
    result = v16;
  }

LABEL_4:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D182B0EC(unint64_t *a1, uint64_t a2, void *a3, int a4)
{
  v44 = a2;
  v57 = a4;
  v45 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v5 = *(*(v56 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v56);
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v43 - v8;
  v50 = type metadata accessor for StaticService(0);
  v55 = *(v50 - 8);
  v9 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D1E66A7C();
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = 0;
  v58 = a3;
  v22 = a3[8];
  v21 = a3 + 8;
  v20 = v22;
  v23 = 1 << *(v21 - 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v47 = (v23 + 63) >> 6;
  v48 = v21;
  v53 = v15 + 16;
  v54 = v15;
  v52 = (v15 + 8);
  while (2)
  {
    v46 = v18;
    while (1)
    {
      if (!v25)
      {
        v29 = v19;
        v28 = v59;
        while (1)
        {
          v19 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if (v19 >= v47)
          {
            return sub_1D188B1C8(v45, v44, v46, v58);
          }

          v30 = v48[v19];
          ++v29;
          if (v30)
          {
            v26 = v17;
            v60 = (v30 - 1) & v30;
            v27 = __clz(__rbit64(v30)) | (v19 << 6);
            goto LABEL_12;
          }
        }

        __break(1u);
        return result;
      }

      v26 = v17;
      v60 = (v25 - 1) & v25;
      v27 = __clz(__rbit64(v25)) | (v19 << 6);
      v28 = v59;
LABEL_12:
      v31 = v58;
      v32 = *(v54 + 16);
      v32(v26, v58[6] + *(v54 + 72) * v27, v12);
      v33 = v31[7];
      v34 = *(v55 + 72);
      v49 = v27;
      sub_1D182BA58(v33 + v34 * v27, v11, type metadata accessor for StaticService);
      v32(v28, v26, v12);
      v35 = v56;
      sub_1D182BA58(v11, v28 + *(v56 + 48), type metadata accessor for StaticService);
      if ((v57 & 1) == 0)
      {
        break;
      }

      v36 = v28;
      v37 = v51;
      sub_1D182BEE0(v36, v51);
      v38 = v37 + *(v35 + 48);
      v39 = *(v38 + *(v50 + 36));
      sub_1D182BF88(v38, type metadata accessor for StaticService);
      v40 = *v52;
      (*v52)(v37, v12);
      sub_1D182BF88(v11, type metadata accessor for StaticService);
      result = v40(v26, v12);
      v17 = v26;
      v25 = v60;
      if ((v39 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    sub_1D1741A30(v28, &qword_1EC642DB0, &unk_1D1E6F360);
    sub_1D182BF88(v11, type metadata accessor for StaticService);
    result = (*v52)(v26, v12);
    v17 = v26;
    v25 = v60;
LABEL_16:
    v41 = v46;
    *(v45 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
    v42 = __OFADD__(v41, 1);
    v18 = v41 + 1;
    if (!v42)
    {
      continue;
    }

    break;
  }

  __break(1u);
  return sub_1D188B1C8(v45, v44, v46, v58);
}

uint64_t sub_1D182B530(unint64_t *a1, uint64_t a2, void *a3, int a4)
{
  v44 = a2;
  v57 = a4;
  v45 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v5 = *(*(v56 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v56);
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v43 - v8;
  v50 = type metadata accessor for StaticService(0);
  v55 = *(v50 - 8);
  v9 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D1E66A7C();
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = 0;
  v58 = a3;
  v22 = a3[8];
  v21 = a3 + 8;
  v20 = v22;
  v23 = 1 << *(v21 - 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v47 = (v23 + 63) >> 6;
  v48 = v21;
  v53 = v15 + 16;
  v54 = v15;
  v52 = (v15 + 8);
  while (2)
  {
    v46 = v18;
    while (1)
    {
      if (!v25)
      {
        v29 = v19;
        v28 = v59;
        while (1)
        {
          v19 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if (v19 >= v47)
          {
            return sub_1D188B1C8(v45, v44, v46, v58);
          }

          v30 = v48[v19];
          ++v29;
          if (v30)
          {
            v26 = v17;
            v60 = (v30 - 1) & v30;
            v27 = __clz(__rbit64(v30)) | (v19 << 6);
            goto LABEL_12;
          }
        }

        __break(1u);
        return result;
      }

      v26 = v17;
      v60 = (v25 - 1) & v25;
      v27 = __clz(__rbit64(v25)) | (v19 << 6);
      v28 = v59;
LABEL_12:
      v31 = v58;
      v32 = *(v54 + 16);
      v32(v26, v58[6] + *(v54 + 72) * v27, v12);
      v33 = v31[7];
      v34 = *(v55 + 72);
      v49 = v27;
      sub_1D182BA58(v33 + v34 * v27, v11, type metadata accessor for StaticService);
      v32(v28, v26, v12);
      v35 = v56;
      sub_1D182BA58(v11, v28 + *(v56 + 48), type metadata accessor for StaticService);
      if ((v57 & 1) == 0)
      {
        break;
      }

      v36 = v28;
      v37 = v51;
      sub_1D182BEE0(v36, v51);
      v38 = v37 + *(v35 + 48);
      v39 = *(v38 + *(v50 + 96));
      sub_1D182BF88(v38, type metadata accessor for StaticService);
      v40 = *v52;
      (*v52)(v37, v12);
      sub_1D182BF88(v11, type metadata accessor for StaticService);
      result = v40(v26, v12);
      v17 = v26;
      v25 = v60;
      if (v39)
      {
        goto LABEL_16;
      }
    }

    sub_1D1741A30(v28, &qword_1EC642DB0, &unk_1D1E6F360);
    sub_1D182BF88(v11, type metadata accessor for StaticService);
    result = (*v52)(v26, v12);
    v17 = v26;
    v25 = v60;
LABEL_16:
    v41 = v46;
    *(v45 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
    v42 = __OFADD__(v41, 1);
    v18 = v41 + 1;
    if (!v42)
    {
      continue;
    }

    break;
  }

  __break(1u);
  return sub_1D188B1C8(v45, v44, v46, v58);
}

void *sub_1D182B974(void *result, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void *, uint64_t, uint64_t, void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4 & 1);

    return v10;
  }

  return result;
}

unint64_t sub_1D182BA04()
{
  result = qword_1EC644B08;
  if (!qword_1EC644B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644B08);
  }

  return result;
}

uint64_t sub_1D182BA58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D182BB5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D182BC14()
{
  result = sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for StaticCharacteristic();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D182BCAC()
{
  result = qword_1EC644B58;
  if (!qword_1EC644B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644B58);
  }

  return result;
}

unint64_t sub_1D182BD04()
{
  result = qword_1EC644B60;
  if (!qword_1EC644B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644B60);
  }

  return result;
}

unint64_t sub_1D182BD5C()
{
  result = qword_1EC644B68;
  if (!qword_1EC644B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644B68);
  }

  return result;
}

uint64_t sub_1D182BDB0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001D1EBA1D0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6553636974617473 && a2 == 0xEF44496563697672 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EBA1F0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D1E6904C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D182BEE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D182BF88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D182BFE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D182C068(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[2] = a2;
  return sub_1D1C92714(0, sub_1D182C45C, v5, v3) & 1;
}

uint64_t sub_1D182C0C4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[2] = a2;
  return sub_1D1827838(sub_1D182C114, v5, v3);
}

uint64_t sub_1D182C148(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D182C1B8()
{
  v1 = *(*(*(v0 + 16) - 8) + 80);
  v2 = *(*(v0 + 24) + 8);
  sub_1D1E67AAC();
  return v4;
}

uint64_t objectdestroy_41Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D182C318@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  result = v6(a1, a1 + *(v7 + 48));
  *a2 = result;
  return result;
}

void *sub_1D182C374@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 32);
  v6[2] = *(v2 + 16);
  result = sub_1D1787E3C(sub_1D182C12C, v6, v4);
  *a2 = result;
  return result;
}

unint64_t sub_1D182C3C8()
{
  result = qword_1EC644B80;
  if (!qword_1EC644B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644B70, &qword_1D1E774D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644B80);
  }

  return result;
}

uint64_t static ClimateSummarizer.climateSummary(context:from:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v62 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v62 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  v13 = swift_allocObject();
  v66 = xmmword_1D1E739C0;
  *(v13 + 16) = xmmword_1D1E739C0;
  if (qword_1EC642168 != -1)
  {
    swift_once();
  }

  v14 = *algn_1EC644B98;
  v15 = qword_1EC644BA0;
  v16 = unk_1EC644BA8;
  v17 = qword_1EC644BB0;
  *(v13 + 32) = qword_1EC644B90;
  *(v13 + 40) = v14;
  *(v13 + 48) = v15;
  *(v13 + 56) = v16;
  *(v13 + 64) = v17;

  v18 = sub_1D1828A0C(v13, 1, 1, 1, a2);

  static ClimateSummarizer._temperatureGaugeData(context:from:)(v18, v12);

  v19 = type metadata accessor for IconTextValueStringDataHolder();
  v20 = *(v19 - 1);
  v65 = *(v20 + 48);
  if (v65(v12, 1, v19) == 1)
  {
    sub_1D18304D4(v12);
  }

  else
  {
    v21 = &v12[v19[7]];
    v22 = *v21;
    v23 = *(v21 + 1);

    sub_1D1831068(v12);
    if (v23)
    {
      return v22;
    }
  }

  v64 = v20 + 48;
  v24 = swift_allocObject();
  *(v24 + 16) = v66;
  if (qword_1EC642178 != -1)
  {
    swift_once();
  }

  v25 = *algn_1EC644BE8;
  v26 = qword_1EC644BF0;
  v27 = unk_1EC644BF8;
  v28 = qword_1EC644C00;
  *(v24 + 32) = qword_1EC644BE0;
  *(v24 + 40) = v25;
  *(v24 + 48) = v26;
  *(v24 + 56) = v27;
  *(v24 + 64) = v28;

  v29 = sub_1D1828A0C(v24, 1, 1, 1, a2);

  v30 = _s13HomeDataModel17ValueAccumulatorsO12doubleValues4fromSaySdGSayAA34StaticServiceCharacteristicDoubletVG_tFZ_0(v29);

  v31 = *(v30 + 16);
  if (v31)
  {
    v62 = a2;
    v63 = v7;
    if (v31 >= 4)
    {
      v32 = v31 & 0x7FFFFFFFFFFFFFFCLL;
      v34 = v30 + 48;
      v33 = 0.0;
      v35 = v31 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v36 = *v34;
        v33 = v33 + *(v34 - 16) + *(v34 - 8) + *v34 + *(v34 + 8);
        v34 += 32;
        v35 -= 4;
      }

      while (v35);
      if (v31 == v32)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v32 = 0;
      v33 = 0.0;
    }

    v37 = v31 - v32;
    v38 = (v30 + 8 * v32 + 32);
    do
    {
      v39 = *v38++;
      v33 = v33 + v39;
      --v37;
    }

    while (v37);
LABEL_18:
    v40 = v33 / v31;
    v41 = static String.hfLocalized(_:)(0xD00000000000001DLL, 0x80000001D1EBA210);
    v43 = v42;
    v44 = _s13HomeDataModel17ClimateSummarizerO19humidityRangeString_17addPercentageSignSSSgSaySdG_SbtFZ_0(v30, 1);
    v46 = v45;

    sub_1D1E66A6C();
    v47 = &v10[v19[5]];
    strcpy(v47, "humidity.fill");
    *(v47 + 7) = -4864;
    v48 = &v10[v19[6]];
    *v48 = v41;
    v48[1] = v43;
    v49 = &v10[v19[7]];
    *v49 = v44;
    v49[1] = v46;
    v50 = &v10[v19[8]];
    *v50 = v40;
    *(v50 + 8) = xmmword_1D1E774F0;
    v50[24] = 1;
    (*(v20 + 56))(v10, 0, 1, v19);
    a2 = v62;
    v7 = v63;
LABEL_19:
    v51 = &v10[v19[7]];
    v22 = *v51;
    v52 = *(v51 + 1);

    sub_1D1831068(v10);
    if (v52)
    {
      return v22;
    }

    goto LABEL_20;
  }

  (*(v20 + 56))(v10, 1, 1, v19);

  if (v65(v10, 1, v19) != 1)
  {
    goto LABEL_19;
  }

  sub_1D18304D4(v10);
LABEL_20:
  v53 = swift_allocObject();
  *(v53 + 16) = v66;
  if (qword_1EC642170 != -1)
  {
    swift_once();
  }

  v54 = unk_1EC644BC0;
  v55 = qword_1EC644BC8;
  v56 = unk_1EC644BD0;
  v57 = qword_1EC644BD8;
  *(v53 + 32) = qword_1EC644BB8;
  *(v53 + 40) = v54;
  *(v53 + 48) = v55;
  *(v53 + 56) = v56;
  *(v53 + 64) = v57;

  v58 = sub_1D1828A0C(v53, 1, 1, 0, a2);

  static ClimateSummarizer._airQualityGaugeData(from:)(v58, v7);

  if (v65(v7, 1, v19) == 1)
  {
    sub_1D18304D4(v7);
    return 0;
  }

  v59 = &v7[v19[7]];
  v22 = *v59;
  v60 = *(v59 + 1);

  sub_1D1831068(v7);
  if (!v60)
  {
    return 0;
  }

  return v22;
}

uint64_t static ClimateSummarizer.temperatureGaugeData(context:from:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D1E739C0;
  if (qword_1EC642168 != -1)
  {
    swift_once();
  }

  v5 = *algn_1EC644B98;
  v6 = qword_1EC644BA0;
  v7 = unk_1EC644BA8;
  v8 = qword_1EC644BB0;
  *(v4 + 32) = qword_1EC644B90;
  *(v4 + 40) = v5;
  *(v4 + 48) = v6;
  *(v4 + 56) = v7;
  *(v4 + 64) = v8;

  v9 = sub_1D1828A0C(v4, 1, 1, 1, a1);

  static ClimateSummarizer._temperatureGaugeData(context:from:)(v9, a2);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  if (qword_1EC642168 != -1)
  {
    swift_once();
  }

  v5 = *algn_1EC644B98;
  v6 = qword_1EC644BA0;
  v7 = unk_1EC644BA8;
  v8 = qword_1EC644BB0;
  *(inited + 32) = qword_1EC644B90;
  *(inited + 40) = v5;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 64) = v8;

  v9 = sub_1D182AE80(a1, 0);
  v10 = sub_1D182AEF4(v9, 1);

  v11 = sub_1D1829C68(inited, 1, v10);

  swift_setDeallocating();
  sub_1D182BAC0(inited + 32);
  static ClimateSummarizer._temperatureGaugeData(context:from:)(v11, a2);
}

uint64_t static ClimateSummarizer.humidityGaugeData(context:from:addPercentageSign:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D1E739C0;
  if (qword_1EC642178 != -1)
  {
    swift_once();
  }

  v7 = *algn_1EC644BE8;
  v8 = qword_1EC644BF0;
  v9 = unk_1EC644BF8;
  v10 = qword_1EC644C00;
  *(v6 + 32) = qword_1EC644BE0;
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  *(v6 + 56) = v9;
  *(v6 + 64) = v10;

  v11 = sub_1D1828A0C(v6, 1, 1, 1, a1);

  v12 = _s13HomeDataModel17ValueAccumulatorsO12doubleValues4fromSaySdGSayAA34StaticServiceCharacteristicDoubletVG_tFZ_0(v11);

  v13 = *(v12 + 16);
  if (v13)
  {
    if (v13 > 3)
    {
      v14 = v13 & 0x7FFFFFFFFFFFFFFCLL;
      v18 = v12 + 48;
      v15 = 0.0;
      v19 = v13 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v20 = *v18;
        v15 = v15 + *(v18 - 16) + *(v18 - 8) + *v18 + *(v18 + 8);
        v18 += 32;
        v19 -= 4;
      }

      while (v19);
      if (v13 == v14)
      {
LABEL_14:
        v24 = v15 / v13;
        v25 = static String.hfLocalized(_:)(0xD00000000000001DLL, 0x80000001D1EBA210);
        v27 = v26;
        v28 = _s13HomeDataModel17ClimateSummarizerO19humidityRangeString_17addPercentageSignSSSgSaySdG_SbtFZ_0(v12, a2 & 1);
        v30 = v29;

        sub_1D1E66A6C();
        v31 = type metadata accessor for IconTextValueStringDataHolder();
        v32 = a3 + v31[5];
        strcpy(v32, "humidity.fill");
        *(v32 + 14) = -4864;
        v33 = (a3 + v31[6]);
        *v33 = v25;
        v33[1] = v27;
        v34 = (a3 + v31[7]);
        *v34 = v28;
        v34[1] = v30;
        v35 = a3 + v31[8];
        *v35 = v24;
        *(v35 + 8) = xmmword_1D1E774F0;
        *(v35 + 24) = 1;
        v36 = *(*(v31 - 1) + 56);

        return v36(a3, 0, 1, v31);
      }
    }

    else
    {
      v14 = 0;
      v15 = 0.0;
    }

    v21 = v13 - v14;
    v22 = (v12 + 8 * v14 + 32);
    do
    {
      v23 = *v22++;
      v15 = v15 + v23;
      --v21;
    }

    while (v21);
    goto LABEL_14;
  }

  v16 = type metadata accessor for IconTextValueStringDataHolder();
  (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
}

uint64_t static ClimateSummarizer.airQualityGaugeData(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D1E739C0;
  if (qword_1EC642170 != -1)
  {
    swift_once();
  }

  v5 = unk_1EC644BC0;
  v6 = qword_1EC644BC8;
  v7 = unk_1EC644BD0;
  v8 = qword_1EC644BD8;
  *(v4 + 32) = qword_1EC644BB8;
  *(v4 + 40) = v5;
  *(v4 + 48) = v6;
  *(v4 + 56) = v7;
  *(v4 + 64) = v8;

  v9 = sub_1D1828A0C(v4, 1, 1, 0, a1);

  static ClimateSummarizer._airQualityGaugeData(from:)(v9, a2);
}

uint64_t static ClimateSummarizer.climateSummary(context:from:for:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v75[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v75[-v11];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v75[-v13];
  v15 = *a3;
  if (v15 == 8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    if (qword_1EC642170 != -1)
    {
      swift_once();
    }

    v40 = unk_1EC644BC0;
    v41 = qword_1EC644BC8;
    v42 = unk_1EC644BD0;
    v43 = qword_1EC644BD8;
    *(inited + 32) = qword_1EC644BB8;
    *(inited + 40) = v40;
    *(inited + 48) = v41;
    *(inited + 56) = v42;
    *(inited + 64) = v43;

    v44 = sub_1D182AE80(a2, 0);
    v45 = sub_1D182AEF4(v44, 0);

    v46 = sub_1D1829C68(inited, 1, v45);

    swift_setDeallocating();
    sub_1D182BAC0(inited + 32);
    static ClimateSummarizer._airQualityGaugeData(from:)(v46, v9);

    v47 = type metadata accessor for IconTextValueStringDataHolder();
    if ((*(*(v47 - 8) + 48))(v9, 1, v47) == 1)
    {
      v26 = v9;
      goto LABEL_21;
    }

    v48 = &v9[*(v47 + 28)];
    v16 = *v48;
    v49 = v48[1];

    v50 = v9;
LABEL_29:
    sub_1D1831068(v50);
    return v16;
  }

  if (v15 == 41)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_1D1E739C0;
    if (qword_1EC642178 != -1)
    {
      swift_once();
    }

    v28 = *algn_1EC644BE8;
    v29 = qword_1EC644BF0;
    v30 = unk_1EC644BF8;
    v31 = qword_1EC644C00;
    *(v27 + 32) = qword_1EC644BE0;
    *(v27 + 40) = v28;
    *(v27 + 48) = v29;
    *(v27 + 56) = v30;
    *(v27 + 64) = v31;

    v32 = sub_1D182AE80(a2, 0);
    v33 = sub_1D182AEF4(v32, 0);

    v34 = sub_1D1829C68(v27, 1, v33);

    swift_setDeallocating();
    sub_1D182BAC0(v27 + 32);
    v35 = _s13HomeDataModel17ValueAccumulatorsO12doubleValues4fromSaySdGSayAA34StaticServiceCharacteristicDoubletVG_tFZ_0(v34);

    v36 = *(v35 + 16);
    if (!v36)
    {
      v53 = type metadata accessor for IconTextValueStringDataHolder();
      v54 = *(v53 - 1);
      (*(v54 + 56))(v12, 1, 1, v53);

      if ((*(v54 + 48))(v12, 1, v53) == 1)
      {
        v26 = v12;
        goto LABEL_21;
      }

      goto LABEL_28;
    }

    if (v36 >= 4)
    {
      v37 = v36 & 0x7FFFFFFFFFFFFFFCLL;
      v55 = v35 + 48;
      v38 = 0.0;
      v56 = v36 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v57 = *v55;
        v38 = v38 + *(v55 - 16) + *(v55 - 8) + *v55 + *(v55 + 8);
        v55 += 32;
        v56 -= 4;
      }

      while (v56);
      if (v36 == v37)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v37 = 0;
      v38 = 0.0;
    }

    v58 = v36 - v37;
    v59 = (v35 + 8 * v37 + 32);
    do
    {
      v60 = *v59++;
      v38 = v38 + v60;
      --v58;
    }

    while (v58);
LABEL_27:
    v61 = v38 / v36;
    v62 = static String.hfLocalized(_:)(0xD00000000000001DLL, 0x80000001D1EBA210);
    v64 = v63;
    v65 = _s13HomeDataModel17ClimateSummarizerO19humidityRangeString_17addPercentageSignSSSgSaySdG_SbtFZ_0(v35, 1);
    v67 = v66;

    sub_1D1E66A6C();
    v53 = type metadata accessor for IconTextValueStringDataHolder();
    v68 = &v12[v53[5]];
    strcpy(v68, "humidity.fill");
    *(v68 + 7) = -4864;
    v69 = &v12[v53[6]];
    *v69 = v62;
    v69[1] = v64;
    v70 = &v12[v53[7]];
    *v70 = v65;
    v70[1] = v67;
    v71 = &v12[v53[8]];
    *v71 = v61;
    *(v71 + 8) = xmmword_1D1E774F0;
    v71[24] = 1;
    (*(*(v53 - 1) + 56))(v12, 0, 1, v53);
LABEL_28:
    type metadata accessor for IconTextValueStringDataHolder();
    v72 = &v12[v53[7]];
    v16 = *v72;
    v73 = v72[1];

    v50 = v12;
    goto LABEL_29;
  }

  v16 = 0;
  if (v15 == 44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_1D1E739C0;
    if (qword_1EC642168 != -1)
    {
      swift_once();
    }

    v18 = *algn_1EC644B98;
    v19 = qword_1EC644BA0;
    v20 = unk_1EC644BA8;
    v21 = qword_1EC644BB0;
    *(v17 + 32) = qword_1EC644B90;
    *(v17 + 40) = v18;
    *(v17 + 48) = v19;
    *(v17 + 56) = v20;
    *(v17 + 64) = v21;

    v22 = sub_1D182AE80(a2, 0);
    v23 = sub_1D182AEF4(v22, 1);

    v24 = sub_1D1829C68(v17, 1, v23);

    swift_setDeallocating();
    sub_1D182BAC0(v17 + 32);
    static ClimateSummarizer._temperatureGaugeData(context:from:)(v24, v14);

    v25 = type metadata accessor for IconTextValueStringDataHolder();
    if ((*(*(v25 - 8) + 48))(v14, 1, v25) == 1)
    {
      v26 = v14;
LABEL_21:
      sub_1D18304D4(v26);
      return 0;
    }

    v51 = &v14[*(v25 + 28)];
    v16 = *v51;
    v52 = v51[1];

    v50 = v14;
    goto LABEL_29;
  }

  return v16;
}

uint64_t static ClimateSummarizer.humidityGaugeData(context:from:skipHiddenServices:skipCalibratingServices:addPercentageSign:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, char a3@<W3>, char a4@<W4>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  if (qword_1EC642178 != -1)
  {
    swift_once();
  }

  v11 = *algn_1EC644BE8;
  v12 = qword_1EC644BF0;
  v13 = unk_1EC644BF8;
  v14 = qword_1EC644C00;
  *(inited + 32) = qword_1EC644BE0;
  *(inited + 40) = v11;
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  *(inited + 64) = v14;

  v15 = sub_1D182AE80(a1, a2 & 1);
  v16 = sub_1D182AEF4(v15, a3 & 1);

  v17 = sub_1D1829C68(inited, 1, v16);

  swift_setDeallocating();
  sub_1D182BAC0(inited + 32);
  v18 = _s13HomeDataModel17ValueAccumulatorsO12doubleValues4fromSaySdGSayAA34StaticServiceCharacteristicDoubletVG_tFZ_0(v17);

  v19 = *(v18 + 16);
  if (!v19)
  {
    v22 = type metadata accessor for IconTextValueStringDataHolder();
    (*(*(v22 - 8) + 56))(a5, 1, 1, v22);
  }

  if (v19 > 3)
  {
    v20 = v19 & 0x7FFFFFFFFFFFFFFCLL;
    v24 = v18 + 48;
    v21 = 0.0;
    v25 = v19 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v26 = *v24;
      v21 = v21 + *(v24 - 16) + *(v24 - 8) + *v24 + *(v24 + 8);
      v24 += 32;
      v25 -= 4;
    }

    while (v25);
    if (v19 == v20)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v20 = 0;
    v21 = 0.0;
  }

  v27 = v19 - v20;
  v28 = (v18 + 8 * v20 + 32);
  do
  {
    v29 = *v28++;
    v21 = v21 + v29;
    --v27;
  }

  while (v27);
LABEL_12:
  v30 = v21 / v19;
  v31 = static String.hfLocalized(_:)(0xD00000000000001DLL, 0x80000001D1EBA210);
  v33 = v32;
  v34 = _s13HomeDataModel17ClimateSummarizerO19humidityRangeString_17addPercentageSignSSSgSaySdG_SbtFZ_0(v18, a4 & 1);
  v36 = v35;

  sub_1D1E66A6C();
  v37 = type metadata accessor for IconTextValueStringDataHolder();
  v38 = a5 + v37[5];
  strcpy(v38, "humidity.fill");
  *(v38 + 14) = -4864;
  v39 = (a5 + v37[6]);
  *v39 = v31;
  v39[1] = v33;
  v40 = (a5 + v37[7]);
  *v40 = v34;
  v40[1] = v36;
  v41 = a5 + v37[8];
  *v41 = v30;
  *(v41 + 8) = xmmword_1D1E774F0;
  *(v41 + 24) = 1;
  return (*(*(v37 - 1) + 56))(a5, 0, 1, v37);
}

uint64_t static ClimateSummarizer.airQualityGaugeData(from:skipHiddenServices:skipCalibratingServices:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  if (qword_1EC642170 != -1)
  {
    swift_once();
  }

  v9 = unk_1EC644BC0;
  v10 = qword_1EC644BC8;
  v11 = unk_1EC644BD0;
  v12 = qword_1EC644BD8;
  *(inited + 32) = qword_1EC644BB8;
  *(inited + 40) = v9;
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  *(inited + 64) = v12;

  v13 = sub_1D182AE80(a1, a2 & 1);
  v14 = sub_1D182AEF4(v13, a3 & 1);

  v15 = sub_1D1829C68(inited, 1, v14);

  swift_setDeallocating();
  sub_1D182BAC0(inited + 32);
  static ClimateSummarizer._airQualityGaugeData(from:)(v15, a4);
}

uint64_t static ClimateSummarizer._temperatureGaugeData(context:from:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = _s13HomeDataModel17ValueAccumulatorsO12doubleValues4fromSaySdGSayAA34StaticServiceCharacteristicDoubletVG_tFZ_0(a1);
  v4 = *(v3 + 16);
  if (v4)
  {
    if (v4 > 3)
    {
      v5 = v4 & 0x7FFFFFFFFFFFFFFCLL;
      v9 = v3 + 48;
      v6 = 0.0;
      v10 = v4 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v11 = *v9;
        v6 = v6 + *(v9 - 16) + *(v9 - 8) + *v9 + *(v9 + 8);
        v9 += 32;
        v10 -= 4;
      }

      while (v10);
      if (v4 == v5)
      {
LABEL_12:
        v15 = v6 / v4;
        v16 = v3;
        v17 = _s13HomeDataModel17ClimateSummarizerO15temperatureIconySSSaySdGFZ_0(v3);
        v19 = v18;
        v20 = static String.hfLocalized(_:)(0xD000000000000020, 0x80000001D1EBA230);
        v22 = v21;
        v23 = static ClimateSummarizer.temperatureRangeString(_:)(v16);
        v25 = v24;

        sub_1D1E66A6C();
        v26 = type metadata accessor for IconTextValueStringDataHolder();
        v27 = (a2 + v26[5]);
        *v27 = v17;
        v27[1] = v19;
        v28 = (a2 + v26[6]);
        *v28 = v20;
        v28[1] = v22;
        v29 = (a2 + v26[7]);
        *v29 = v23;
        v29[1] = v25;
        v30 = a2 + v26[8];
        *v30 = v15;
        *(v30 + 8) = xmmword_1D1E77500;
        *(v30 + 24) = 1;
        v31 = *(*(v26 - 1) + 56);

        return v31(a2, 0, 1, v26);
      }
    }

    else
    {
      v5 = 0;
      v6 = 0.0;
    }

    v12 = v4 - v5;
    v13 = (v3 + 8 * v5 + 32);
    do
    {
      v14 = *v13++;
      v6 = v6 + v14;
      --v12;
    }

    while (v12);
    goto LABEL_12;
  }

  v7 = type metadata accessor for IconTextValueStringDataHolder();
  (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
}

double static ClimateSummarizer.doubleAverage(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v3 = 0.0;
    return v3 / v1;
  }

  if (v1 <= 3)
  {
    v2 = 0;
    v3 = 0.0;
LABEL_8:
    v7 = v1 - v2;
    v8 = (a1 + 8 * v2 + 32);
    do
    {
      v9 = *v8++;
      v3 = v3 + v9;
      --v7;
    }

    while (v7);
    return v3 / v1;
  }

  v2 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  v4 = (a1 + 48);
  v3 = 0.0;
  v5 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v6 = *v4;
    v3 = v3 + *(v4 - 2) + *(v4 - 1) + *v4 + v4[1];
    v4 += 4;
    v5 -= 4;
  }

  while (v5);
  if (v1 != v2)
  {
    goto LABEL_8;
  }

  return v3 / v1;
}

uint64_t static ClimateSummarizer.temperatureRangeString(_:)(uint64_t a1)
{
  v2 = 0x9380E29380E2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v91 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v103 = v91 - v10;
  v11 = sub_1D1E66ADC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C70, &unk_1D1E77550);
  v16 = a1;
  v17 = *(v15 - 8);
  v18 = *(v17 + 8);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v91 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v26 = v91 - v25;
  v27 = *(v23 + 16);
  if (v27)
  {
    v28 = *(v23 + 32);
    v29 = v27 - 1;
    v101 = v24;
    if (v29)
    {
      v30 = (v23 + 40);
      do
      {
        v31 = *v30++;
        v32 = v31;
        if (v31 < v28)
        {
          v28 = v32;
        }

        --v29;
      }

      while (v29);
    }

    sub_1D1745ACC(v23);
    if ((v33 & 1) == 0)
    {
      v94 = v4;
      v97 = v15;
      v98 = v7;
      v99 = v3;
      v96 = v17;
      v34 = sub_1D18311BC();
      sub_1D1E66ABC();
      sub_1D1E666FC();
      v35 = sub_1D1E6838C();
      v36 = objc_opt_self();
      v37 = [v36 fahrenheit];
      v38 = sub_1D1E684FC();

      if ((v38 & 1) == 0)
      {
        v39 = [v36 celsius];
        sub_1D1E684FC();

        v35 = v39;
      }

      v40 = [v36 celsius];
      sub_1D1E65F9C();
      sub_1D1E66ABC();
      v102 = v34;
      sub_1D1E666FC();
      v41 = sub_1D1E6838C();
      v42 = [v36 fahrenheit];
      v43 = sub_1D1E684FC();

      v95 = v14;
      v100 = v26;
      if ((v43 & 1) == 0)
      {
        v44 = [v36 celsius];
        sub_1D1E684FC();

        v41 = v44;
      }

      v45 = v96;

      v46 = [v36 celsius];
      sub_1D1E65F9C();
      v47 = v98;
      static ClimateSummarizer.temperatureNumberFormatStyle.getter();
      sub_1D1E66ABC();
      sub_1D1E666FC();
      v48 = sub_1D1E6838C();
      v49 = v101;
      v96 = v22;
      v50 = v97;
      sub_1D1E65FFC();

      sub_1D1E65FAC();
      v52 = v51;
      v53 = *(v45 + 1);
      v53(v49, v50);
      v107 = v52;
      v54 = v99;
      v55 = sub_1D1E6661C();
      v92 = v56;
      v93 = v55;
      v57 = *(v94 + 1);
      v57(v47, v54);
      static ClimateSummarizer.temperatureNumberFormatStyle.getter();
      sub_1D1E66ABC();
      sub_1D1E666FC();
      v58 = v57;
      v59 = sub_1D1E6838C();
      sub_1D1E65FFC();

      sub_1D1E65FAC();
      v61 = v60;
      v62 = v50;
      v63 = v53;
      v53(v49, v62);
      v107 = v61;
      v64 = sub_1D1E6661C();
      v66 = v65;
      v67 = v47;
      v68 = v92;
      v58(v67, v54);
      if (v93 == v64 && v68 == v66)
      {
      }

      else
      {
        v69 = sub_1D1E6904C();

        if ((v69 & 1) == 0)
        {
          v107 = 0;
          v108 = 0xE000000000000000;
          v93 = v58;
          sub_1D1E66ABC();
          sub_1D1E666FC();
          v78 = sub_1D1E6838C();
          v94 = v63;
          v79 = v101;
          v80 = v97;
          sub_1D1E65FFC();

          sub_1D1E65FAC();
          v82 = v81;
          v94(v79, v80);
          v104 = v82;
          v83 = v98;
          static ClimateSummarizer.temperatureNumberFormatStyle.getter();
          v92 = sub_1D173FC5C();
          v91[1] = sub_1D1831208();
          v84 = v99;
          sub_1D1E675AC();
          v93(v83, v84);
          MEMORY[0x1D3890F70](v105, v106);

          MEMORY[0x1D3890F70](9666786, 0xA300000000000000);
          sub_1D1E66ABC();
          sub_1D1E666FC();
          v85 = sub_1D1E6838C();
          v73 = v96;
          sub_1D1E65FFC();

          sub_1D1E65FAC();
          v87 = v86;
          v88 = v79;
          v63 = v94;
          v94(v88, v80);
          v104 = v87;
          static ClimateSummarizer.temperatureNumberFormatStyle.getter();
          sub_1D1E675AC();
          v89 = v83;
          v72 = v80;
          v93(v89, v84);
          goto LABEL_19;
        }
      }

      v107 = 0;
      v108 = 0xE000000000000000;
      sub_1D1E66ABC();
      sub_1D1E666FC();
      v70 = sub_1D1E6838C();
      v71 = v101;
      v73 = v96;
      v72 = v97;
      sub_1D1E65FFC();

      sub_1D1E65FAC();
      v75 = v74;
      v63(v71, v72);
      v104 = v75;
      v76 = v98;
      static ClimateSummarizer.temperatureNumberFormatStyle.getter();
      sub_1D173FC5C();
      sub_1D1831208();
      v77 = v99;
      sub_1D1E675AC();
      v58(v76, v77);
LABEL_19:
      MEMORY[0x1D3890F70](v105, v106);

      MEMORY[0x1D3890F70](45250, 0xA200000000000000);
      v2 = v107;
      v63(v73, v72);
      v63(v100, v72);
    }
  }

  return v2;
}

uint64_t static ClimateSummarizer._humidityGaugeData(context:from:addPercentageSign:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v5 = _s13HomeDataModel17ValueAccumulatorsO12doubleValues4fromSaySdGSayAA34StaticServiceCharacteristicDoubletVG_tFZ_0(a1);
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    if (v7 > 3)
    {
      v8 = v7 & 0x7FFFFFFFFFFFFFFCLL;
      v12 = v5 + 48;
      v9 = 0.0;
      v13 = v7 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v12;
        v9 = v9 + *(v12 - 16) + *(v12 - 8) + *v12 + *(v12 + 8);
        v12 += 32;
        v13 -= 4;
      }

      while (v13);
      if (v7 == v8)
      {
LABEL_12:
        v18 = v9 / v7;
        v19 = static String.hfLocalized(_:)(0xD00000000000001DLL, 0x80000001D1EBA210);
        v21 = v20;
        v22 = _s13HomeDataModel17ClimateSummarizerO19humidityRangeString_17addPercentageSignSSSgSaySdG_SbtFZ_0(v6, a2 & 1);
        v24 = v23;

        sub_1D1E66A6C();
        v25 = type metadata accessor for IconTextValueStringDataHolder();
        v26 = a3 + v25[5];
        strcpy(v26, "humidity.fill");
        *(v26 + 14) = -4864;
        v27 = (a3 + v25[6]);
        *v27 = v19;
        v27[1] = v21;
        v28 = (a3 + v25[7]);
        *v28 = v22;
        v28[1] = v24;
        v29 = a3 + v25[8];
        *v29 = v18;
        *(v29 + 8) = xmmword_1D1E774F0;
        *(v29 + 24) = 1;
        v30 = *(*(v25 - 1) + 56);

        return v30(a3, 0, 1, v25);
      }
    }

    else
    {
      v8 = 0;
      v9 = 0.0;
    }

    v15 = v7 - v8;
    v16 = (v5 + 8 * v8 + 32);
    do
    {
      v17 = *v16++;
      v9 = v9 + v17;
      --v15;
    }

    while (v15);
    goto LABEL_12;
  }

  v10 = type metadata accessor for IconTextValueStringDataHolder();
  (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
}

uint64_t static ClimateSummarizer._airQualityGaugeData(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = _s13HomeDataModel17ValueAccumulatorsO9intValues4fromSaySiGSayAA34StaticServiceCharacteristicDoubletVG_tFZ_0(a1);
  v4 = v3;
  if (*(v3 + 16))
  {
    v5 = sub_1D183126C(v3);
    if ((v6 & 1) == 0)
    {
      v13 = v5;
      v14 = sub_1D1745B10(v4);
      v16 = v15;

      if (v16)
      {
        goto LABEL_4;
      }

      v17 = 6 - v13;
      if (__OFSUB__(6, v13))
      {
        __break(1u);
        return result;
      }

      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v18 = 0xE700000000000000;
          v19 = 0x776F6C2E697161;
LABEL_15:
          v20 = 0xD000000000000023;
          v21 = static String.hfLocalized(_:)(0xD00000000000001FLL, 0x80000001D1EBA260);
          v23 = v22;
          v24 = 0;
          if (v14 <= 2)
          {
            if (v14 == 1)
            {
              v26 = "ValueAirQualityGood";
              v20 = 0xD000000000000028;
              goto LABEL_27;
            }

            v25 = 0;
            if (v14 == 2)
            {
              v26 = "ValueAirQualityFair";
              goto LABEL_27;
            }
          }

          else
          {
            if (v14 == 3)
            {
              v26 = "ValueAirQualityInferior";
              goto LABEL_27;
            }

            if (v14 == 4)
            {
              v26 = "ValueAirQualityPoor";
              v20 = 0xD000000000000027;
              goto LABEL_27;
            }

            v25 = 0;
            if (v14 == 5)
            {
              v26 = "HFCharacteristicTitleAirQuality";
LABEL_27:
              v24 = static String.hfLocalized(_:)(v20, v26 | 0x8000000000000000);
              v25 = v27;
            }
          }

          sub_1D1E66A6C();
          v28 = type metadata accessor for IconTextValueStringDataHolder();
          v29 = (a2 + v28[5]);
          *v29 = v19;
          v29[1] = v18;
          v30 = (a2 + v28[6]);
          *v30 = v21;
          v30[1] = v23;
          v31 = (a2 + v28[7]);
          *v31 = v24;
          v31[1] = v25;
          v32 = a2 + v28[8];
          *v32 = v17;
          *(v32 + 8) = xmmword_1D1E77510;
          *(v32 + 24) = 1;
          v8 = *(*(v28 - 1) + 56);
          v9 = v28;
          v10 = a2;
          v11 = 0;
          goto LABEL_5;
        }
      }

      else if (v13 == 5)
      {
        v18 = 0xE800000000000000;
        v19 = 0x686769682E697161;
        goto LABEL_15;
      }

      v19 = 0x6964656D2E697161;
      v18 = 0xEA00000000006D75;
      goto LABEL_15;
    }
  }

LABEL_4:
  v7 = type metadata accessor for IconTextValueStringDataHolder();
  v8 = *(*(v7 - 8) + 56);
  v9 = v7;
  v10 = a2;
  v11 = 1;
LABEL_5:

  return v8(v10, v11, 1, v9);
}

uint64_t static ClimateSummarizer.airQualityIcon(_:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0x6964656D2E697161;
  }

  if (a1 > 2)
  {
    if (a1 == 5)
    {
      return 0x686769682E697161;
    }

    return 0x6964656D2E697161;
  }

  if (a1 != 1)
  {
    return 0x6964656D2E697161;
  }

  return 0x776F6C2E697161;
}

uint64_t static ClimateSummarizer.airQualityString(_:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0xD000000000000023;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v6 = "ValueAirQualityGood";
      v5 = 0xD000000000000028;
      return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
    }

    if (a1 == 2)
    {
      v6 = "ValueAirQualityFair";
      return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v6 = "ValueAirQualityInferior";
        return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
      case 4:
        v6 = "ValueAirQualityPoor";
        v5 = 0xD000000000000027;
        return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
      case 5:
        v6 = "HFCharacteristicTitleAirQuality";
        return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
    }
  }

  return v4;
}

uint64_t static ClimateSummarizer.airQualityRangeString(_:)(uint64_t a1)
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
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v6 = vdupq_n_s64(v2);
      v7 = (a1 + 56);
      v8 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v9 = v6;
      do
      {
        v6 = vbslq_s8(vcgtq_s64(v6, v7[-1]), v7[-1], v6);
        v9 = vbslq_s8(vcgtq_s64(v9, *v7), *v7, v9);
        v7 += 2;
        v8 -= 4;
      }

      while (v8);
      v10 = vbslq_s8(vcgtq_s64(v9, v6), v6, v9);
      v11 = vextq_s8(v10, v10, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v11, v10.i64[0]), *v10.i8, v11);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v4 = 1;
    }

    v12 = v1 - v4;
    v13 = (a1 + 8 * v4 + 32);
    do
    {
      v15 = *v13++;
      v14 = v15;
      if (v15 < v2)
      {
        v2 = v14;
      }

      --v12;
    }

    while (v12);
  }

LABEL_13:
  v16 = sub_1D1745B10(a1);
  if (v17)
  {
    return 0;
  }

  v18 = v16;
  result = 0;
  v19 = 0xD000000000000023;
  v20 = "ValueAirQualityGood";
  if (v2 <= 2)
  {
    if (v2 != 1)
    {
      if (v2 != 2)
      {
        return result;
      }

      v21 = "HFCharacteristicValueAirQualityGood";
      goto LABEL_24;
    }

    v23 = 0xD000000000000028;
    v22 = "ValueAirQualityGood";
  }

  else
  {
    if (v2 == 3)
    {
      v21 = "HFCharacteristicValueAirQualityFair";
LABEL_24:
      v22 = (v21 - 32);
      v23 = 0xD000000000000023;
      goto LABEL_27;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        return result;
      }

      v21 = "HFCharacteristicValueAirQualityPoor";
      goto LABEL_24;
    }

    v22 = "ValueAirQualityPoor";
    v23 = 0xD000000000000027;
  }

LABEL_27:
  v24 = static String.hfLocalized(_:)(v23, v22 | 0x8000000000000000);
  v26 = v25;
  if (v18 <= 2)
  {
    if (v18 != 1)
    {
      if (v18 == 2)
      {
        v27 = "HFCharacteristicValueAirQualityGood";
        goto LABEL_36;
      }

LABEL_45:

      return 0;
    }

    v19 = 0xD000000000000028;
  }

  else
  {
    if (v18 == 3)
    {
      v27 = "HFCharacteristicValueAirQualityFair";
      goto LABEL_36;
    }

    if (v18 != 4)
    {
      if (v18 == 5)
      {
        v27 = "HFCharacteristicValueAirQualityPoor";
LABEL_36:
        v20 = (v27 - 32);
        goto LABEL_39;
      }

      goto LABEL_45;
    }

    v20 = "ValueAirQualityPoor";
    v19 = 0xD000000000000027;
  }

LABEL_39:
  v29 = static String.hfLocalized(_:)(v19, v20 | 0x8000000000000000);
  if (v29 == v24 && v28 == v26 || (sub_1D1E6904C() & 1) != 0)
  {

    return v29;
  }

  else
  {
    MEMORY[0x1D3890F70](9666786, 0xA300000000000000);
    MEMORY[0x1D3890F70](v24, v26);

    return v29;
  }
}

uint64_t sub_1D182F12C(uint64_t a1)
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
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1D182F170(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  v2 = a1[4];
  v3 = a1[5];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 7;
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      if (sub_1D1E6934C())
      {
        v2 = v6;
      }

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return v2;
}

uint64_t static ClimateSummarizer.temperatureNumberFormatStyle.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1D1E6673C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E66ADC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  sub_1D1E66ABC();
  sub_1D173FC5C();
  sub_1D1E6662C();
  sub_1D18311BC();
  sub_1D1E66ABC();
  sub_1D1E666FC();
  v14 = sub_1D1E6838C();
  v15 = [objc_opt_self() celsius];
  sub_1D1E684FC();

  sub_1D1E6672C();
  MEMORY[0x1D388FCE0](v6, v9);
  (*(v3 + 8))(v6, v2);
  return (*(v10 + 8))(v13, v9);
}

uint64_t static ClimateSummarizer.preferredTemperatureUnit.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1D1E66ADC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D18311BC();
  sub_1D1E66ABC();
  sub_1D1E666FC();
  return sub_1D1E6838C();
}

uint64_t static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(unsigned __int8 *a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C88, &qword_1D1EAF050);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C90, &qword_1D1E77560);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = &v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C98, &qword_1D1E77568);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v38 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C70, &unk_1D1E77550);
  v40 = *(v15 - 8);
  v16 = *(v40 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v38 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = sub_1D1E66ADC();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = *a1;
  v43 = v12;
  v44 = v11;
  v39 = v7;
  if (v26)
  {
    if (v26 == 1)
    {
      v27 = [objc_opt_self() celsius];
    }

    else
    {
      v27 = [objc_opt_self() fahrenheit];
    }

    v28 = v27;
  }

  else
  {
    sub_1D18311BC();
    sub_1D1E66ABC();
    sub_1D1E666FC();
    v28 = sub_1D1E6838C();
  }

  v29 = v28;
  v45 = v26;
  _s13HomeDataModel17ClimateSummarizerO18roundedTemperature_16temperatureScaleS2d_AC0gI0OtFZ_0(&v45, a2);
  v30 = [objc_opt_self() celsius];
  sub_1D18311BC();
  sub_1D1E65F9C();
  sub_1D1E65FFC();
  v31 = *(v40 + 8);
  v31(v19, v15);
  sub_1D1E65FDC();
  sub_1D1E666EC();
  v32 = v39;
  static ClimateSummarizer.personalizedTemperatureNumberFormatStyle(unitTemperature:)();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  sub_1D1E66ABC();
  v34 = v41;
  sub_1D1E65FEC();
  v35 = v44;
  v36 = sub_1D1E65FCC();

  (*(v43 + 8))(v34, v35);
  v31(v21, v15);
  return v36;
}

id ClimateSummarizer.TemperatureScale.value.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1D1E66ADC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (*v0)
  {
    if (*v0 == 1)
    {
      v5 = [objc_opt_self() celsius];
    }

    else
    {
      v5 = [objc_opt_self() fahrenheit];
    }

    return v5;
  }

  else
  {
    sub_1D18311BC();
    sub_1D1E66ABC();
    sub_1D1E666FC();
    return sub_1D1E6838C();
  }
}

uint64_t static ClimateSummarizer.personalizedTemperatureNumberFormatStyle(unitTemperature:)()
{
  v0 = sub_1D1E6673C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1E66ADC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  sub_1D1E66ABC();
  sub_1D173FC5C();
  sub_1D1E6662C();
  sub_1D18311BC();
  v12 = [objc_opt_self() celsius];
  sub_1D1E684FC();

  sub_1D1E6672C();
  MEMORY[0x1D388FCE0](v4, v7);
  (*(v1 + 8))(v4, v0);
  return (*(v8 + 8))(v11, v7);
}

uint64_t static ClimateSummarizer.strippedTemperatureString(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v30 = &v28 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = sub_1D1E66ADC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C70, &unk_1D1E77550);
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - v12;
  sub_1D18311BC();
  sub_1D1E66ABC();
  sub_1D1E666FC();
  v14 = sub_1D1E6838C();
  v15 = objc_opt_self();
  v16 = [v15 fahrenheit];
  v17 = sub_1D1E684FC();

  if ((v17 & 1) == 0)
  {
    v18 = [v15 celsius];
    sub_1D1E684FC();

    v14 = v18;
  }

  v19 = [v15 celsius];
  sub_1D1E65F9C();
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_1D1E66ABC();
  sub_1D1E666FC();
  v20 = sub_1D1E6838C();
  sub_1D1E65FFC();

  sub_1D1E65FAC();
  v22 = v21;
  v23 = *(v29 + 8);
  v23(v11, v7);
  v33 = v22;
  v24 = v30;
  static ClimateSummarizer.temperatureNumberFormatStyle.getter();
  sub_1D173FC5C();
  sub_1D1831208();
  v25 = v32;
  sub_1D1E675AC();
  (*(v31 + 8))(v24, v25);
  MEMORY[0x1D3890F70](v34, v35);

  v26 = v36;
  v23(v13, v7);
  return v26;
}

double NSUnitTemperature.preferredStepSize.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 fahrenheit];
  sub_1D18311BC();
  v2 = sub_1D1E684FC();

  if (v2)
  {
    return 0.555555556;
  }

  v4 = [v0 celsius];
  sub_1D1E684FC();

  return 0.5;
}

uint64_t sub_1D183027C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D1E6F900;
  if (qword_1EC642168 != -1)
  {
    swift_once();
  }

  v1 = *algn_1EC644B98;
  v2 = qword_1EC644BA0;
  v3 = unk_1EC644BA8;
  v4 = qword_1EC644BB0;
  *(v0 + 32) = qword_1EC644B90;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  v5 = qword_1EC642170;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = unk_1EC644BC0;
  v7 = qword_1EC644BC8;
  v8 = unk_1EC644BD0;
  v9 = qword_1EC644BD8;
  *(v0 + 72) = qword_1EC644BB8;
  *(v0 + 80) = v6;
  *(v0 + 88) = v7;
  *(v0 + 96) = v8;
  *(v0 + 104) = v9;
  v10 = qword_1EC642178;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = *algn_1EC644BE8;
  v12 = qword_1EC644BF0;
  v13 = unk_1EC644BF8;
  v14 = qword_1EC644C00;
  *(v0 + 112) = qword_1EC644BE0;
  *(v0 + 120) = v11;
  *(v0 + 128) = v12;
  *(v0 + 136) = v13;
  *(v0 + 144) = v14;
  qword_1EC644B88 = v0;
}

uint64_t static ClimateSummarizer.allClimateSummaryFetchSpecifications.getter()
{
  if (qword_1EC642160 != -1)
  {
    swift_once();
  }
}

void sub_1D183048C()
{
  qword_1EC644B90 = 0xD000000000000013;
  *algn_1EC644B98 = 0x80000001D1EBA460;
  qword_1EC644BA0 = &unk_1F4D622E8;
  unk_1EC644BA8 = MEMORY[0x1E69E7CC0];
  qword_1EC644BB0 = &unk_1F4D62310;
}

uint64_t sub_1D18304D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static ClimateSummarizer.temperatureSensorsFetchSpecification.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC642168 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_1EC644B98;
  v2 = qword_1EC644BA0;
  v3 = unk_1EC644BA8;
  v4 = qword_1EC644BB0;
  *a1 = qword_1EC644B90;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1D18305E0()
{
  qword_1EC644BB8 = 0xD000000000000013;
  unk_1EC644BC0 = 0x80000001D1EBA3D0;
  qword_1EC644BC8 = &unk_1F4D62388;
  unk_1EC644BD0 = MEMORY[0x1E69E7CC0];
  qword_1EC644BD8 = &unk_1F4D623B0;
}

uint64_t static ClimateSummarizer.airQualitySensorsFetchSpecification.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC642170 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EC644BC0;
  v2 = qword_1EC644BC8;
  v3 = unk_1EC644BD0;
  v4 = qword_1EC644BD8;
  *a1 = qword_1EC644BB8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1D18306CC()
{
  qword_1EC644BE0 = 0xD000000000000010;
  *algn_1EC644BE8 = 0x80000001D1EBA440;
  qword_1EC644BF0 = &unk_1F4D62338;
  unk_1EC644BF8 = MEMORY[0x1E69E7CC0];
  qword_1EC644C00 = &unk_1F4D62360;
}

uint64_t static ClimateSummarizer.humiditySensorsFetchSpecification.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC642178 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_1EC644BE8;
  v2 = qword_1EC644BF0;
  v3 = unk_1EC644BF8;
  v4 = qword_1EC644C00;
  *a1 = qword_1EC644BE0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1D18307B8()
{
  qword_1EC644C08 = 0xD000000000000017;
  unk_1EC644C10 = 0x80000001D1EBA390;
  qword_1EC644C18 = &unk_1F4D623D8;
  unk_1EC644C20 = MEMORY[0x1E69E7CC0];
  qword_1EC644C28 = &unk_1F4D62400;
}

uint64_t static ClimateSummarizer.carbonMonoxideSensorsFetchSpecification.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC642180 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EC644C10;
  v2 = qword_1EC644C18;
  v3 = unk_1EC644C20;
  v4 = qword_1EC644C28;
  *a1 = qword_1EC644C08;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1D18308A4()
{
  qword_1EC644C30 = 0xD000000000000016;
  *algn_1EC644C38 = 0x80000001D1EBA370;
  qword_1EC644C40 = &unk_1F4D62428;
  unk_1EC644C48 = MEMORY[0x1E69E7CC0];
  qword_1EC644C50 = &unk_1F4D62450;
}

uint64_t static ClimateSummarizer.carbonDioxideSensorsFetchSpecification.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC642188 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_1EC644C38;
  v2 = qword_1EC644C40;
  v3 = unk_1EC644C48;
  v4 = qword_1EC644C50;
  *a1 = qword_1EC644C30;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

HomeDataModel::ClimateSummarizer::TemperatureScale_optional __swiftcall ClimateSummarizer.TemperatureScale.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

double _s13HomeDataModel17ClimateSummarizerO18roundedTemperature_16temperatureScaleS2d_AC0gI0OtFZ_0(_BYTE *a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1D1E66ADC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  if (*a1)
  {
    if (*a1 == 1)
    {
      v8 = [objc_opt_self() celsius];
    }

    else
    {
      v8 = [objc_opt_self() fahrenheit];
    }

    v9 = v8;
  }

  else
  {
    sub_1D18311BC();
    sub_1D1E66ABC();
    sub_1D1E666FC();
    v9 = sub_1D1E6838C();
  }

  v10 = v9;
  v11 = objc_opt_self();
  v12 = [v11 fahrenheit];
  sub_1D18311BC();
  v13 = sub_1D1E684FC();

  if (v13)
  {
    v14 = 0.555555556;
  }

  else
  {
    v15 = [v11 celsius];
    sub_1D1E684FC();

    v14 = 0.5;
    v10 = v15;
  }

  return v14 * round(a2 / v14);
}

uint64_t _s13HomeDataModel17ClimateSummarizerO19humidityRangeString_17addPercentageSignSSSgSaySdG_SbtFZ_0(uint64_t a1, char a2)
{
  v4 = sub_1D1E66ADC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = *(a1 + 32);
  v11 = v9 - 1;
  if (v11)
  {
    v12 = (a1 + 40);
    do
    {
      v13 = *v12++;
      v14 = v13;
      if (v13 < v10)
      {
        v10 = v14;
      }

      --v11;
    }

    while (v11);
  }

  result = sub_1D1745ACC(a1);
  if (v16)
  {
    return 0;
  }

  v17 = round(v10);
  if (v17 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v18 = round(*&result);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_38;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
    return result;
  }

  v19 = v17;
  v20 = v18;
  v21 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v21 setNumberStyle_];
  [v21 setUsesSignificantDigits_];
  sub_1D1E66ACC();
  v22 = sub_1D1E66AAC();
  (*(v5 + 8))(v8, v4);
  [v21 setLocale_];

  if (v19 == v20)
  {
    if (a2)
    {
      v23 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
      [v23 setNumberStyle_];
      v24 = sub_1D1E680EC();
      v25 = [v23 stringFromNumber_];

      if (v25)
      {
        v26 = sub_1D1E6781C();

        return v26;
      }

      return 0;
    }

    v32 = sub_1D1E6821C();
    v33 = [v21 stringFromNumber_];

    if (!v33)
    {

      return 0;
    }

    v34 = sub_1D1E6781C();

    return v34;
  }

  else
  {
    v27 = sub_1D1E6821C();
    v28 = [v21 stringFromNumber_];

    if (v28)
    {
      v29 = sub_1D1E6781C();
      v31 = v30;
    }

    else
    {
      v49 = v19;
      v29 = sub_1D1E68FAC();
      v31 = v35;
    }

    v36 = sub_1D1E6821C();
    v37 = [v21 stringFromNumber_];

    if (v37)
    {
      v38 = sub_1D1E6781C();
      v40 = v39;
    }

    else
    {
      v49 = v20;
      v38 = sub_1D1E68FAC();
      v40 = v41;
    }

    if (a2)
    {
      v42 = 0xD000000000000025;
    }

    else
    {
      v42 = 0xD00000000000001BLL;
    }

    if (a2)
    {
      v43 = "HFNumberRangeFormatterRange";
    }

    else
    {
      v43 = "Air Quality Sensors";
    }

    static String.hfLocalized(_:)(v42, v43 | 0x8000000000000000);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1D1E73A90;
    v45 = MEMORY[0x1E69E6158];
    *(v44 + 56) = MEMORY[0x1E69E6158];
    v46 = sub_1D1757D20();
    *(v44 + 32) = v29;
    *(v44 + 40) = v31;
    *(v44 + 96) = v45;
    *(v44 + 104) = v46;
    *(v44 + 64) = v46;
    *(v44 + 72) = v38;
    *(v44 + 80) = v40;
    v47 = sub_1D1E6784C();

    return v47;
  }
}

uint64_t sub_1D1831068(uint64_t a1)
{
  v2 = type metadata accessor for IconTextValueStringDataHolder();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s13HomeDataModel17ClimateSummarizerO15temperatureIconySSSaySdGFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0xD000000000000012;
  }

  if (v1 <= 3)
  {
    v2 = 0;
    v3 = 0.0;
LABEL_7:
    v7 = v1 - v2;
    v8 = (a1 + 8 * v2 + 32);
    do
    {
      v9 = *v8++;
      v3 = v3 + v9;
      --v7;
    }

    while (v7);
    goto LABEL_9;
  }

  v2 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  v4 = (a1 + 48);
  v3 = 0.0;
  v5 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v6 = *v4;
    v3 = v3 + *(v4 - 2) + *(v4 - 1) + *v4 + v4[1];
    v4 += 4;
    v5 -= 4;
  }

  while (v5);
  if (v1 != v2)
  {
    goto LABEL_7;
  }

LABEL_9:
  v10 = v3 / v1;
  if (v10 < 15.0)
  {
    return 0x656D6F6D72656874;
  }

  if (v10 < 21.0)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000010;
}

unint64_t sub_1D18311BC()
{
  result = qword_1EC644C78;
  if (!qword_1EC644C78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC644C78);
  }

  return result;
}

unint64_t sub_1D1831208()
{
  result = qword_1EC644C80;
  if (!qword_1EC644C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644C60, &unk_1D1E77540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644C80);
  }

  return result;
}

uint64_t sub_1D183126C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = (a1 + 32);
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = *v3++;
      v7 = v8;
      if (v8)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D178D4BC(0, *(v4 + 16) + 1, 1);
        }

        v6 = *(v4 + 16);
        v5 = *(v4 + 24);
        if (v6 >= v5 >> 1)
        {
          sub_1D178D4BC((v5 > 1), v6 + 1, 1);
        }

        *(v4 + 16) = v6 + 1;
        *(v4 + 8 * v6 + 32) = v7;
      }

      --v1;
    }

    while (v1);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v9 = *(v4 + 16);
  if (!v9)
  {

    return 0;
  }

  sub_1D178D49C(0, v9, 0);
  v10 = 0;
  v11 = *(v2 + 16);
  do
  {
    v12 = *(v4 + 8 * v10 + 32);
    v13 = *(v2 + 24);
    if (v11 >= v13 >> 1)
    {
      sub_1D178D49C((v13 > 1), v11 + 1, 1);
    }

    ++v10;
    *(v2 + 16) = v11 + 1;
    *(v2 + 8 * v11++ + 32) = v12;
  }

  while (v9 != v10);

  v14 = *(v2 + 16);
  if (!v14)
  {
    v16 = 0.0;
    goto LABEL_26;
  }

  if (v14 <= 3)
  {
    v15 = 0;
    v16 = 0.0;
LABEL_24:
    v21 = v14 - v15;
    v22 = (v2 + 8 * v15 + 32);
    do
    {
      v23 = *v22++;
      v16 = v16 + v23;
      --v21;
    }

    while (v21);
    goto LABEL_26;
  }

  v15 = v14 & 0x7FFFFFFFFFFFFFFCLL;
  v18 = (v2 + 48);
  v16 = 0.0;
  v19 = v14 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v20 = *v18;
    v16 = v16 + *(v18 - 2) + *(v18 - 1) + *v18 + v18[1];
    v18 += 4;
    v19 -= 4;
  }

  while (v19);
  if (v14 != v15)
  {
    goto LABEL_24;
  }

LABEL_26:

  v24 = round(fmax(fmin(v16 / v9, 5.0), 1.0));
  if (v24 <= -9.22337204e18)
  {
    __break(1u);
  }

  else if (v24 < 9.22337204e18)
  {
    return v24;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18314D4()
{
  result = qword_1EC644CA0;
  if (!qword_1EC644CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644CA0);
  }

  return result;
}

double GaugeDataHolder.valueRange.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

BOOL static GaugeDataHolder.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    return a1[1] == a2[1];
  }

  return 0;
}

uint64_t sub_1D183158C()
{
  if (*v0)
  {
    result = 0x6E615265756C6176;
  }

  else
  {
    result = 0x65756C6176;
  }

  *v0;
  return result;
}

uint64_t sub_1D18315C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E615265756C6176 && a2 == 0xEA00000000006567)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D18316A8(uint64_t a1)
{
  v2 = sub_1D18318E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18316E4(uint64_t a1)
{
  v2 = sub_1D18318E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GaugeDataHolder.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644CA8, &qword_1D1E77668);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D18318E4();
  sub_1D1E6930C();
  LOBYTE(v14[0]) = 0;
  sub_1D1E68EEC();
  if (!v2)
  {
    v14[0] = v10;
    v14[1] = v11;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644CB8, &qword_1D1EAE5D0);
    sub_1D1831F90(&qword_1EC644CC0);
    sub_1D1E68F1C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D18318E4()
{
  result = qword_1EC644CB0;
  if (!qword_1EC644CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644CB0);
  }

  return result;
}

uint64_t GaugeDataHolder.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1D3892890](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1D3892890](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x1D3892890](*&v5);
}

uint64_t GaugeDataHolder.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D1E6920C();
  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x1D3892890](*&v4);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1D3892890](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1D3892890](*&v6);
  return sub_1D1E6926C();
}

uint64_t GaugeDataHolder.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644CC8, &qword_1D1E77670);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D18318E4();
  sub_1D1E692FC();
  if (!v2)
  {
    LOBYTE(v16) = 0;
    sub_1D1E68D4C();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644CB8, &qword_1D1EAE5D0);
    v15[15] = 1;
    sub_1D1831F90(&qword_1EC644CD0);
    sub_1D1E68D7C();
    (*(v6 + 8))(v9, v5);
    v13 = v16;
    *a2 = v12;
    *(a2 + 8) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1831C3C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1D3892890](*&v1);

  return sub_1D1831F40(v2, v3);
}

uint64_t sub_1D1831CA0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1D1E6920C();
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  MEMORY[0x1D3892890](*&v4);
  sub_1D1831F40(v1, v3);
  return sub_1D1E6926C();
}

BOOL sub_1D1831D44(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    return a1[1] == a2[1];
  }

  return 0;
}

uint64_t GaugeDataHolder.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EBA480);
  sub_1D1E6811C();
  MEMORY[0x1D3890F70](0x5265756C6176202CLL, 0xEE00203A65676E61);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](3026478, 0xE300000000000000);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0, 0xE000000000000000);

  MEMORY[0x1D3890F70](41, 0xE100000000000000);
  return 0;
}

uint64_t GaugeDataHolder.debugDescription.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  return GaugeDataHolder.description.getter();
}

uint64_t sub_1D1831F04()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  return GaugeDataHolder.description.getter();
}

uint64_t sub_1D1831F40(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1D3892890](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1D3892890](*&v3);
}

uint64_t sub_1D1831F90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644CB8, &qword_1D1EAE5D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1832000()
{
  result = qword_1EC644CD8;
  if (!qword_1EC644CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644CD8);
  }

  return result;
}

unint64_t sub_1D1832078()
{
  result = qword_1EC644CE0;
  if (!qword_1EC644CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644CE0);
  }

  return result;
}

unint64_t sub_1D18320D0()
{
  result = qword_1EC644CE8;
  if (!qword_1EC644CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644CE8);
  }

  return result;
}

unint64_t sub_1D1832128()
{
  result = qword_1EC644CF0;
  if (!qword_1EC644CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644CF0);
  }

  return result;
}

int *IconTextValueStringDataHolder.init(value:valueRange:iconSymbol:label:valueString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>)
{
  sub_1D1E66A6C();
  result = type metadata accessor for IconTextValueStringDataHolder();
  v21 = (a7 + result[5]);
  *v21 = a1;
  v21[1] = a2;
  v22 = (a7 + result[6]);
  *v22 = a3;
  v22[1] = a4;
  v23 = (a7 + result[7]);
  *v23 = a5;
  v23[1] = a6;
  v24 = a7 + result[8];
  *v24 = a8;
  *(v24 + 8) = a9;
  *(v24 + 16) = a10;
  *(v24 + 24) = 1;
  return result;
}

uint64_t type metadata accessor for IconTextValueStringDataHolder()
{
  result = qword_1EC644DC8;
  if (!qword_1EC644DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IconTextValueStringDataHolder.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t IconTextValueStringDataHolder.iconSymbol.getter()
{
  v1 = (v0 + *(type metadata accessor for IconTextValueStringDataHolder() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t IconTextValueStringDataHolder.label.getter()
{
  v1 = (v0 + *(type metadata accessor for IconTextValueStringDataHolder() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t IconTextValueStringDataHolder.valueString.getter()
{
  v1 = (v0 + *(type metadata accessor for IconTextValueStringDataHolder() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t IconTextValueStringDataHolder.attachedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IconTextValueStringDataHolder() + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = *(v3 + 24);
  *(a1 + 24) = v7;

  return sub_1D18323FC(v4, v5, v6, v7);
}

uint64_t sub_1D18323FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1D1832410(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1D1832410(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
  }

  return result;
}

uint64_t sub_1D1832424()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6C6562616CLL;
  v4 = 0x72745365756C6176;
  if (v1 != 3)
  {
    v4 = 0x6465686361747461;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x626D79536E6F6369;
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

uint64_t sub_1D18324C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1835D20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D18324EC(uint64_t a1)
{
  v2 = sub_1D18327F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1832528(uint64_t a1)
{
  v2 = sub_1D18327F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IconTextValueStringDataHolder.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644CF8, &qword_1D1E778E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D18327F0();
  sub_1D1E6930C();
  LOBYTE(v27) = 0;
  sub_1D1E66A7C();
  sub_1D18355F8(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for IconTextValueStringDataHolder();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v27) = 1;
    sub_1D1E68ECC();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v27) = 2;
    sub_1D1E68ECC();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v27) = 3;
    sub_1D1E68E0C();
    v21 = v3 + v11[8];
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
    v24 = *(v21 + 24);
    v27 = *v21;
    v28 = v22;
    v29 = v23;
    v30 = v24;
    v26[15] = 4;
    sub_1D18323FC(v27, v22, v23, v24);
    sub_1D1832844();
    sub_1D1E68E5C();
    sub_1D1832898(v27, v28, v29, v30);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D18327F0()
{
  result = qword_1EC644D00;
  if (!qword_1EC644D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644D00);
  }

  return result;
}

unint64_t sub_1D1832844()
{
  result = qword_1EC644D08;
  if (!qword_1EC644D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644D08);
  }

  return result;
}

uint64_t sub_1D1832898(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1D18328AC(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1D18328AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
  }

  return result;
}

uint64_t IconTextValueStringDataHolder.hash(into:)()
{
  sub_1D1E66A7C();
  sub_1D18355F8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for IconTextValueStringDataHolder();
  v2 = (v0 + v1[5]);
  v3 = *v2;
  v4 = v2[1];
  sub_1D1E678EC();
  v5 = (v0 + v1[6]);
  v6 = *v5;
  v7 = v5[1];
  sub_1D1E678EC();
  v8 = (v0 + v1[7]);
  if (v8[1])
  {
    v9 = *v8;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v10 = v0 + v1[8];
  v11 = *(v10 + 24);
  if (v11 == 255)
  {
    return sub_1D1E6922C();
  }

  v13 = *(v10 + 8);
  v12 = *(v10 + 16);
  v14 = *v10;
  v16 = *v10;
  sub_1D1E6922C();
  sub_1D1832410(v14, v13, v12, v11);
  IconTextValueStringDataHolder.AttachedData.hash(into:)();

  return sub_1D18328AC(v14, v13, v12, v11);
}

uint64_t IconTextValueStringDataHolder.hashValue.getter()
{
  sub_1D1E6920C();
  IconTextValueStringDataHolder.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t IconTextValueStringDataHolder.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_1D1E66A7C();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D10, &qword_1D1E778E8);
  v34 = *(v36 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v31 - v8;
  v10 = type metadata accessor for IconTextValueStringDataHolder();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D18327F0();
  v35 = v9;
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v32;
  LOBYTE(v37) = 0;
  sub_1D18355F8(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  v16 = v33;
  sub_1D1E68D7C();
  (*(v15 + 32))(v13, v16, v4);
  LOBYTE(v37) = 1;
  v17 = sub_1D1E68D2C();
  v18 = &v13[v10[5]];
  *v18 = v17;
  v18[1] = v19;
  LOBYTE(v37) = 2;
  v20 = sub_1D1E68D2C();
  v21 = v34;
  v22 = &v13[v10[6]];
  *v22 = v20;
  v22[1] = v23;
  LOBYTE(v37) = 3;
  v24 = sub_1D1E68C6C();
  v25 = &v13[v10[7]];
  *v25 = v24;
  v25[1] = v26;
  v40 = 4;
  sub_1D1834274();
  sub_1D1E68CBC();
  (*(v21 + 8))(v35, v36);
  v27 = v38;
  v28 = v39;
  v29 = &v13[v10[8]];
  *v29 = v37;
  *(v29 + 2) = v27;
  v29[24] = v28;
  sub_1D18342C8(v13, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1831068(v13);
}

uint64_t sub_1D1832F2C()
{
  sub_1D1E6920C();
  IconTextValueStringDataHolder.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1832F70()
{
  sub_1D1E6920C();
  IconTextValueStringDataHolder.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t IconTextValueStringDataHolder.AttachedData.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  if (v2 == 2)
  {
    strcpy(v7, ".serviceIDs(");
    v7[13] = 0;
    *&v7[14] = -5120;
    v5 = sub_1D1E66A7C();
    v6 = MEMORY[0x1D3891260](v1, v5);
    MEMORY[0x1D3890F70](v6);

    goto LABEL_7;
  }

  if (v2 == 1)
  {
    v8 = 0x614465677561672ELL;
    v9 = 0xEB00000000286174;
    *v7 = v1;
    *&v7[8] = *(v0 + 1);
    v3 = GaugeDataHolder.description.getter();
    MEMORY[0x1D3890F70](v3);

    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    return 0x614465677561672ELL;
  }

  if (!*(v0 + 24))
  {
    *v7 = 0;
    *&v7[8] = 0xE000000000000000;
    sub_1D1E6884C();
    MEMORY[0x1D3890F70](0x746972756365732ELL, 0xEF28657573734979);
    LOBYTE(v8) = v1;
    sub_1D1E68ABC();
LABEL_7:
    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    return *v7;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t IconTextValueStringDataHolder.AttachedData.debugDescription.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  return IconTextValueStringDataHolder.AttachedData.description.getter();
}

uint64_t sub_1D18331A8()
{
  v1 = 0x7461446567756167;
  if (*v0 != 1)
  {
    v1 = 0x4965636976726573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7974697275636573;
  }
}

uint64_t sub_1D1833218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1835ED4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1833240(uint64_t a1)
{
  v2 = sub_1D183520C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D183327C(uint64_t a1)
{
  v2 = sub_1D183520C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18332B8(uint64_t a1)
{
  v2 = sub_1D18352B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18332F4(uint64_t a1)
{
  v2 = sub_1D18352B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1833330(uint64_t a1)
{
  v2 = sub_1D183535C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D183336C(uint64_t a1)
{
  v2 = sub_1D183535C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18333A8(uint64_t a1)
{
  v2 = sub_1D1835260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18333E4(uint64_t a1)
{
  v2 = sub_1D1835260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IconTextValueStringDataHolder.AttachedData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D20, &qword_1D1E778F0);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D28, &qword_1D1E778F8);
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D30, &qword_1D1E77900);
  v28 = *(v10 - 8);
  v11 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D38, &qword_1D1E77908);
  v35 = *(v14 - 8);
  v36 = v14;
  v15 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - v16;
  v34 = *v1;
  v18 = v1[1];
  v19 = v1[2];
  v20 = *(v1 + 24);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D183520C();
  sub_1D1E6930C();
  if (v20)
  {
    if (v20 == 1)
    {
      LOBYTE(v37) = 1;
      sub_1D18352B4();
      v22 = v36;
      sub_1D1E68DFC();
      v37 = v34;
      v38 = v18;
      v39 = v19;
      sub_1D1835308();
      v23 = v30;
      sub_1D1E68F1C();
      v24 = *(v29 + 8);
      v25 = v9;
    }

    else
    {
      LOBYTE(v37) = 2;
      sub_1D1835260();
      v26 = v31;
      v22 = v36;
      sub_1D1E68DFC();
      v37 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D50, &qword_1D1E77910);
      sub_1D1835404(&qword_1EC644D58, &qword_1EE07B258);
      v23 = v33;
      sub_1D1E68F1C();
      v24 = *(v32 + 8);
      v25 = v26;
    }

    v24(v25, v23);
  }

  else
  {
    LOBYTE(v37) = 0;
    sub_1D183535C();
    v22 = v36;
    sub_1D1E68DFC();
    LOBYTE(v37) = v34;
    sub_1D18353B0();
    sub_1D1E68F1C();
    (*(v28 + 8))(v13, v10);
  }

  return (*(v35 + 8))(v17, v22);
}

uint64_t IconTextValueStringDataHolder.AttachedData.hash(into:)()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      v8 = v0[1];
      v7 = v0[2];
      MEMORY[0x1D3892850](1);
      if ((*&v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v9 = v6;
      }

      else
      {
        v9 = 0.0;
      }

      MEMORY[0x1D3892890](*&v9);

      return sub_1D1831F40(v8, v7);
    }

    else
    {
      MEMORY[0x1D3892850](2);
      result = MEMORY[0x1D3892850](*(*&v6 + 16));
      v11 = *(*&v6 + 16);
      if (v11)
      {
        v14 = *(v2 + 16);
        v12 = v2 + 16;
        v13 = v14;
        v15 = *&v6 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
        v16 = *(v12 + 56);
        do
        {
          v13(v5, v15, v1);
          sub_1D18355F8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
          sub_1D1E676EC();
          result = (*(v12 - 8))(v5, v1);
          v15 += v16;
          --v11;
        }

        while (v11);
      }
    }
  }

  else
  {
    MEMORY[0x1D3892850](0);
    return MEMORY[0x1D3892850](LOBYTE(v6));
  }

  return result;
}

uint64_t IconTextValueStringDataHolder.AttachedData.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_1D1E6920C();
  IconTextValueStringDataHolder.AttachedData.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t IconTextValueStringDataHolder.AttachedData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D80, &qword_1D1E77918);
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v38[-v6];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D88, &qword_1D1E77920);
  v42 = *(v40 - 8);
  v7 = *(v42 + 8);
  MEMORY[0x1EEE9AC00](v40);
  v9 = &v38[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D90, &qword_1D1E77928);
  v41 = *(v10 - 8);
  v11 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D98, &qword_1D1E77930);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38[-v17];
  v19 = a1[3];
  v20 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D183520C();
  v21 = v47;
  sub_1D1E692FC();
  if (!v21)
  {
    v47 = v15;
    v23 = v45;
    v22 = v46;
    v24 = sub_1D1E68DDC();
    v25 = (2 * *(v24 + 16)) | 1;
    v50 = v24;
    v51 = v24 + 32;
    v52 = 0;
    v53 = v25;
    v26 = sub_1D18085C8();
    if (v26 == 3 || v52 != v53 >> 1)
    {
      v29 = sub_1D1E688EC();
      swift_allocError();
      v30 = v18;
      v32 = v31;
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v32 = &type metadata for IconTextValueStringDataHolder.AttachedData;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v29 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v29);
      swift_willThrow();
      (*(v47 + 8))(v30, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          LOBYTE(v48) = 1;
          sub_1D18352B4();
          sub_1D1E68C4C();
          sub_1D18354A0();
          v27 = v40;
          sub_1D1E68D7C();
          v28 = v47;
          (*(v42 + 1))(v9, v27);
          (*(v28 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v36 = v48;
          v37 = v49;
        }

        else
        {
          LOBYTE(v48) = 2;
          sub_1D1835260();
          sub_1D1E68C4C();
          v42 = v18;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D50, &qword_1D1E77910);
          sub_1D1835404(&qword_1EC644DA0, &qword_1EC644B20);
          v35 = v43;
          sub_1D1E68D7C();
          (*(v44 + 8))(v23, v35);
          (*(v47 + 8))(v42, v14);
          swift_unknownObjectRelease();
          v36 = v48;
          v37 = 0uLL;
        }
      }

      else
      {
        LOBYTE(v48) = 0;
        sub_1D183535C();
        sub_1D1E68C4C();
        sub_1D18354F4();
        sub_1D1E68D7C();
        (*(v41 + 8))(v13, v10);
        (*(v47 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v36 = v48;
        v37 = 0uLL;
      }

      *v22 = v36;
      *(v22 + 8) = v37;
      *(v22 + 24) = v39;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_1D1834214()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_1D1E6920C();
  IconTextValueStringDataHolder.AttachedData.hash(into:)();
  return sub_1D1E6926C();
}

unint64_t sub_1D1834274()
{
  result = qword_1EC644D18;
  if (!qword_1EC644D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644D18);
  }

  return result;
}

uint64_t sub_1D18342C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconTextValueStringDataHolder();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D183432C()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_1D1E6920C();
  IconTextValueStringDataHolder.AttachedData.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D18343B8()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  return IconTextValueStringDataHolder.AttachedData.description.getter();
}

int *IconTextValueStringDataHolder.init(id:iconSymbol:label:valueString:attachedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v39 = a6;
  v40 = a7;
  v37 = a4;
  v38 = a5;
  v35 = a2;
  v36 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v32[-v14];
  v16 = sub_1D1E66A7C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v32[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = a8[1];
  v34 = *a8;
  v22 = a8[2];
  v33 = *(a8 + 24);
  sub_1D17783E0(a1, v15);
  v23 = *(v17 + 48);
  if (v23(v15, 1, v16) == 1)
  {
    sub_1D1E66A6C();
    sub_1D1835548(a1);
    if (v23(v15, 1, v16) != 1)
    {
      sub_1D1835548(v15);
    }
  }

  else
  {
    sub_1D1835548(a1);
    (*(v17 + 32))(v20, v15, v16);
  }

  (*(v17 + 32))(a9, v20, v16);
  result = type metadata accessor for IconTextValueStringDataHolder();
  v25 = (a9 + result[5]);
  v26 = v36;
  *v25 = v35;
  v25[1] = v26;
  v27 = (a9 + result[6]);
  v28 = v38;
  *v27 = v37;
  v27[1] = v28;
  v29 = (a9 + result[7]);
  v30 = v40;
  *v29 = v39;
  v29[1] = v30;
  v31 = a9 + result[8];
  *v31 = v34;
  *(v31 + 8) = v21;
  *(v31 + 16) = v22;
  *(v31 + 24) = v33;
  return result;
}

uint64_t IconTextValueStringDataHolder.description.getter()
{
  v1 = v0;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD000000000000023, 0x80000001D1EBA4A0);
  v2 = sub_1D1E66A1C();
  MEMORY[0x1D3890F70](v2);

  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EBA4D0);
  v3 = type metadata accessor for IconTextValueStringDataHolder();
  MEMORY[0x1D3890F70](*(v1 + v3[5]), *(v1 + v3[5] + 8));
  MEMORY[0x1D3890F70](0x6C6562616C202C22, 0xEB0000000022203ALL);
  MEMORY[0x1D3890F70](*(v1 + v3[6]), *(v1 + v3[6] + 8));
  MEMORY[0x1D3890F70](34, 0xE100000000000000);
  v4 = (v0 + v3[7]);
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    sub_1D1E6884C();

    MEMORY[0x1D3890F70](v6, v5);
    MEMORY[0x1D3890F70](34, 0xE100000000000000);
    MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EBA510);
  }

  v7 = (v0 + v3[8]);
  if (*(v7 + 24) != 255)
  {
    v8 = *(v7 + 2);
    v11 = *v7;
    sub_1D1E6884C();

    v9 = IconTextValueStringDataHolder.AttachedData.description.getter();
    MEMORY[0x1D3890F70](v9);

    MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EBA4F0);
  }

  MEMORY[0x1D3890F70](41, 0xE100000000000000);
  return 0;
}

uint64_t static IconTextValueStringDataHolder.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for IconTextValueStringDataHolder() + 24);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v5 == *v7 && v6 == v7[1];
  if (v8 || (v9 = 1, v10 = *v7, v11 = v7[1], (sub_1D1E6904C() & 1) == 0) && (v9 = 0, (sub_1D1E6904C() & 1) != 0))
  {
    v12 = sub_1D1E66A1C();
    v14 = v13;
    if (v12 == sub_1D1E66A1C() && v14 == v15)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_1D1E6904C();
    }
  }

  return v9 & 1;
}

uint64_t sub_1D1834994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(a1 + v3);
  v5 = *(a1 + v3 + 8);
  v6 = (a2 + v3);
  v7 = v4 == *v6 && v5 == v6[1];
  if (v7 || (v8 = 1, v9 = *v6, v10 = v6[1], (sub_1D1E6904C() & 1) == 0) && (v8 = 0, (sub_1D1E6904C() & 1) != 0))
  {
    v11 = sub_1D1E66A1C();
    v13 = v12;
    if (v11 == sub_1D1E66A1C() && v13 == v14)
    {
      v8 = 0;
    }

    else
    {
      v8 = sub_1D1E6904C();
    }
  }

  return v8 & 1;
}

uint64_t sub_1D1834A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(a2 + v3);
  v5 = *(a2 + v3 + 8);
  v6 = (a1 + v3);
  if (v4 == *v6 && v5 == v6[1])
  {
    goto LABEL_8;
  }

  v8 = *v6;
  v9 = v6[1];
  if ((sub_1D1E6904C() & 1) == 0)
  {
    if ((sub_1D1E6904C() & 1) == 0)
    {
LABEL_11:
      v10 = 1;
      return v10 & 1;
    }

LABEL_8:
    v11 = sub_1D1E66A1C();
    v13 = v12;
    if (v11 != sub_1D1E66A1C() || v13 != v14)
    {
      v15 = sub_1D1E6904C();

      v10 = v15 ^ 1;
      return v10 & 1;
    }

    goto LABEL_11;
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1D1834B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(a1 + v3);
  v5 = *(a1 + v3 + 8);
  v6 = (a2 + v3);
  if (v4 == *v6 && v5 == v6[1])
  {
    goto LABEL_8;
  }

  v8 = *v6;
  v9 = v6[1];
  if ((sub_1D1E6904C() & 1) == 0)
  {
    if ((sub_1D1E6904C() & 1) == 0)
    {
LABEL_11:
      v10 = 1;
      return v10 & 1;
    }

LABEL_8:
    v11 = sub_1D1E66A1C();
    v13 = v12;
    if (v11 != sub_1D1E66A1C() || v13 != v14)
    {
      v15 = sub_1D1E6904C();

      v10 = v15 ^ 1;
      return v10 & 1;
    }

    goto LABEL_11;
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1D1834CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(a2 + v3);
  v5 = *(a2 + v3 + 8);
  v6 = (a1 + v3);
  v7 = v4 == *v6 && v5 == v6[1];
  if (v7 || (v8 = 1, v9 = *v6, v10 = v6[1], (sub_1D1E6904C() & 1) == 0) && (v8 = 0, (sub_1D1E6904C() & 1) != 0))
  {
    v11 = sub_1D1E66A1C();
    v13 = v12;
    if (v11 == sub_1D1E66A1C() && v13 == v14)
    {
      v8 = 0;
    }

    else
    {
      v8 = sub_1D1E6904C();
    }
  }

  return v8 & 1;
}

BOOL _s13HomeDataModel019IconTextValueStringB6HolderV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconTextValueStringDataHolder();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v11 == *v13 && v12 == v13[1];
  if (!v14 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (!v17)
  {
    if (!v19)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (!v19)
  {
    return 0;
  }

  v20 = *v16 == *v18 && v17 == v19;
  if (!v20 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  v21 = v4[8];
  v22 = a1 + v21;
  v24 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v25 = *(a1 + v21 + 16);
  v26 = *(v22 + 24);
  v27 = a2 + v21;
  v29 = *v27;
  v28 = *(v27 + 8);
  v30 = *(v27 + 16);
  v31 = *(v27 + 24);
  if (v26 == 255)
  {
    sub_1D18323FC(v24, v23, v25, 255);
    if (v31 == 255)
    {
      sub_1D18323FC(v29, v28, v30, 255);
      sub_1D1832898(v24, v23, v25, 255);
      return 1;
    }

    sub_1D18323FC(v29, v28, v30, v31);
    goto LABEL_27;
  }

  v38 = v24;
  v39 = v23;
  v40 = v25;
  v41 = v26;
  if (v31 == 255)
  {
    sub_1D18323FC(v24, v23, v25, v26);
    sub_1D18323FC(v29, v28, v30, 255);
    sub_1D18323FC(v24, v23, v25, v26);
    sub_1D18328AC(v24, v23, v25, v26);
LABEL_27:
    sub_1D1832898(v24, v23, v25, v26);
    sub_1D1832898(v29, v28, v30, v31);
    return 0;
  }

  v34 = v29;
  v35 = v28;
  v36 = v30;
  v37 = v31;
  sub_1D18323FC(v24, v23, v25, v26);
  sub_1D18323FC(v29, v28, v30, v31);
  sub_1D18323FC(v24, v23, v25, v26);
  v32 = _s13HomeDataModel019IconTextValueStringB6HolderV08AttachedB0O2eeoiySbAE_AEtFZ_0(&v38, &v34);
  sub_1D18328AC(v34, v35, v36, v37);
  sub_1D18328AC(v38, v39, v40, v41);
  sub_1D1832898(v24, v23, v25, v26);
  return v32;
}

BOOL _s13HomeDataModel019IconTextValueStringB6HolderV08AttachedB0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      sub_1D18328AC(*a1, v3, v4, 0);
      sub_1D18328AC(v6, v7, v8, 0);
      return v6 == v2;
    }

    goto LABEL_14;
  }

  if (v5 != 1)
  {
    if (v9 == 2)
    {
      sub_1D1832410(*a2, *(a2 + 8), v8, 2);
      sub_1D1832410(v2, v3, v4, 2);
      v17 = sub_1D17796E4(v2, v6);
      sub_1D18328AC(v2, v3, v4, 2);
      sub_1D18328AC(v6, v7, v8, 2);
      return v17 & 1;
    }

    v18 = *a1;

    goto LABEL_14;
  }

  if (v9 != 1)
  {
LABEL_14:
    sub_1D1832410(v6, v7, v8, v9);
    sub_1D18328AC(v2, v3, v4, v5);
    sub_1D18328AC(v6, v7, v8, v9);
    return 0;
  }

  v10 = *(a1 + 16);
  v11 = *(a1 + 8);
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  sub_1D18328AC(*a1, v3, v4, 1);
  sub_1D18328AC(v6, v7, v8, 1);
  v15 = *&v2 == *&v6;
  if (*&v3 != *&v7)
  {
    v15 = 0;
  }

  return *&v4 == *&v8 && v15;
}

unint64_t sub_1D183520C()
{
  result = qword_1EC644D40;
  if (!qword_1EC644D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644D40);
  }

  return result;
}

unint64_t sub_1D1835260()
{
  result = qword_1EC644D48;
  if (!qword_1EC644D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644D48);
  }

  return result;
}

unint64_t sub_1D18352B4()
{
  result = qword_1EC644D60;
  if (!qword_1EC644D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644D60);
  }

  return result;
}

unint64_t sub_1D1835308()
{
  result = qword_1EC644D68;
  if (!qword_1EC644D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644D68);
  }

  return result;
}

unint64_t sub_1D183535C()
{
  result = qword_1EC644D70;
  if (!qword_1EC644D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644D70);
  }

  return result;
}

unint64_t sub_1D18353B0()
{
  result = qword_1EC644D78;
  if (!qword_1EC644D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644D78);
  }

  return result;
}

uint64_t sub_1D1835404(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644D50, &qword_1D1E77910);
    sub_1D18355F8(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D18354A0()
{
  result = qword_1EC644DA8;
  if (!qword_1EC644DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644DA8);
  }

  return result;
}

unint64_t sub_1D18354F4()
{
  result = qword_1EC644DB0;
  if (!qword_1EC644DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644DB0);
  }

  return result;
}

uint64_t sub_1D1835548(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D18355F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D1835644()
{
  result = qword_1EC644DC0;
  if (!qword_1EC644DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644DC0);
  }

  return result;
}

void sub_1D18356C0()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D17BDF80(319, qword_1EE07D1F8);
    if (v1 <= 0x3F)
    {
      sub_1D17BDF80(319, &qword_1EC644DD8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D18357FC()
{
  result = qword_1EC644DE0;
  if (!qword_1EC644DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644DE0);
  }

  return result;
}

unint64_t sub_1D1835854()
{
  result = qword_1EC644DE8;
  if (!qword_1EC644DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644DE8);
  }

  return result;
}

unint64_t sub_1D18358AC()
{
  result = qword_1EC644DF0;
  if (!qword_1EC644DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644DF0);
  }

  return result;
}

unint64_t sub_1D1835904()
{
  result = qword_1EC644DF8;
  if (!qword_1EC644DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644DF8);
  }

  return result;
}

unint64_t sub_1D183595C()
{
  result = qword_1EC644E00;
  if (!qword_1EC644E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E00);
  }

  return result;
}

unint64_t sub_1D18359B4()
{
  result = qword_1EC644E08;
  if (!qword_1EC644E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E08);
  }

  return result;
}

unint64_t sub_1D1835A0C()
{
  result = qword_1EC644E10;
  if (!qword_1EC644E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E10);
  }

  return result;
}

unint64_t sub_1D1835A64()
{
  result = qword_1EC644E18;
  if (!qword_1EC644E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E18);
  }

  return result;
}

unint64_t sub_1D1835ABC()
{
  result = qword_1EC644E20;
  if (!qword_1EC644E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E20);
  }

  return result;
}

unint64_t sub_1D1835B14()
{
  result = qword_1EC644E28;
  if (!qword_1EC644E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E28);
  }

  return result;
}

unint64_t sub_1D1835B6C()
{
  result = qword_1EC644E30;
  if (!qword_1EC644E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E30);
  }

  return result;
}

unint64_t sub_1D1835BC4()
{
  result = qword_1EC644E38;
  if (!qword_1EC644E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E38);
  }

  return result;
}

unint64_t sub_1D1835C1C()
{
  result = qword_1EC644E40;
  if (!qword_1EC644E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E40);
  }

  return result;
}

unint64_t sub_1D1835C74()
{
  result = qword_1EC644E48;
  if (!qword_1EC644E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E48);
  }

  return result;
}

unint64_t sub_1D1835CCC()
{
  result = qword_1EC644E50;
  if (!qword_1EC644E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E50);
  }

  return result;
}

uint64_t sub_1D1835D20(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x626D79536E6F6369 && a2 == 0xEA00000000006C6FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72745365756C6176 && a2 == 0xEB00000000676E69 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465686361747461 && a2 == 0xEC00000061746144)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D1835ED4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697275636573 && a2 == 0xED00006575737349;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446567756167 && a2 == 0xE900000000000061 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4965636976726573 && a2 == 0xEA00000000007344)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t static LightbulbColor.convertKelvinToMired(_:)(uint64_t a1)
{
  if (a1 <= 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = a1;
  }

  v2 = 0xF4240 / v1;
  if (a1 < 16)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v2;
  }
}

uint64_t static LightbulbColor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if (v9 == 2)
      {
        v17 = *a1;
        sub_1D1780640(*a1, v2, v4, 2);
        sub_1D1780640(v7, v6, v8, 2);
        return v17 == v7;
      }
    }

    else
    {
      if (v9 == 3)
      {
        v21 = *(v3 + 16);
        v20 = *(v3 + 24);
        v22 = *(v3 + 32);
        v23 = *(v3 + 40);
        v25 = *(v7 + 16);
        v24 = *(v7 + 24);
        v26 = *(v7 + 32);
        v27 = *(v7 + 40);
        v44 = v24;
        v45 = v26;
        v42 = v27;
        v43 = v25;
        if (v23 == 255)
        {
          sub_1D178062C(v7, v6, v8, 3);
          sub_1D178062C(v3, v2, v4, 3);
          if (v42 == 255)
          {
            sub_1D1836504(v43, v44, v45, 255);
            sub_1D1836504(v21, v20, v22, 255);
            sub_1D1836518(v21, v20, v22, 255);
            sub_1D1780640(v3, v2, v4, 3);
            sub_1D1780640(v7, v6, v8, 3);
            return 1;
          }

          sub_1D1836504(v43, v44, v45, v42);
          sub_1D1836504(v21, v20, v22, 255);
        }

        else
        {
          v48[0] = *(v3 + 16);
          v48[1] = v20;
          v48[2] = v22;
          v49 = v23;
          if (v27 != 255)
          {
            v46[0] = v25;
            v46[1] = v24;
            v46[2] = v26;
            v47 = v27;
            v40 = v23;
            v28 = v25;
            v38 = v20;
            v39 = v22;
            v29 = v24;
            v30 = v26;
            v37 = v21;
            v31 = v27;
            sub_1D178062C(v7, v6, v8, 3);
            sub_1D178062C(v3, v2, v4, 3);
            sub_1D1836504(v28, v29, v30, v31);
            sub_1D1836504(v37, v38, v39, v40);
            sub_1D1836504(v37, v38, v39, v40);
            v41 = static LightbulbColor.== infix(_:_:)(v48, v46);
            sub_1D1780640(v43, v44, v45, v42);
            sub_1D1780640(v37, v38, v39, v40);
            sub_1D1836518(v37, v38, v39, v40);
            sub_1D1780640(v3, v2, v4, 3);
            sub_1D1780640(v7, v6, v8, 3);
            return (v41 & 1) != 0;
          }

          sub_1D178062C(v7, v6, v8, 3);
          sub_1D178062C(v3, v2, v4, 3);
          sub_1D1836504(v43, v44, v45, 255);
          sub_1D1836504(v21, v20, v22, v23);
          sub_1D1836504(v21, v20, v22, v23);
          sub_1D1780640(v21, v20, v22, v23);
        }

        sub_1D1836518(v21, v20, v22, v23);
        sub_1D1836518(v43, v44, v45, v42);
        sub_1D1780640(v3, v2, v4, 3);
        v33 = v7;
        v34 = v6;
        v35 = v8;
        v36 = 3;
LABEL_23:
        sub_1D1780640(v33, v34, v35, v36);
        return 0;
      }

      v32 = *a1;
    }

    goto LABEL_22;
  }

  if (*(a1 + 24))
  {
    if (v9 == 1)
    {
      v18 = *(a1 + 8);
      v19 = *a2;
      sub_1D1780640(*a1, v2, v4, 1);
      sub_1D1780640(v7, v6, v8, 1);
      return *&v3 == *&v7 && *&v2 == *&v6;
    }

    goto LABEL_22;
  }

  if (*(a2 + 24))
  {
LABEL_22:
    sub_1D178062C(v7, v6, v8, v9);
    sub_1D1780640(v3, v2, v4, v5);
    v33 = v7;
    v34 = v6;
    v35 = v8;
    v36 = v9;
    goto LABEL_23;
  }

  v10 = *(a1 + 16);
  v11 = *(a1 + 8);
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  sub_1D1780640(*a1, v2, v4, 0);
  sub_1D1780640(v7, v6, v8, 0);
  v15 = *&v3 == *&v7;
  if (*&v2 != *&v6)
  {
    v15 = 0;
  }

  return *&v4 == *&v8 && v15;
}

uint64_t sub_1D1836504(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1D178062C(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1D1836518(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1D1780640(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1D183652C(uint64_t a1)
{
  v2 = sub_1D1836F5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1836568(uint64_t a1)
{
  v2 = sub_1D1836F5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18365A4()
{
  v1 = 4343634;
  v2 = 0x74617265706D6554;
  if (*v0 != 2)
  {
    v2 = 0x6576697470616461;
  }

  if (*v0)
  {
    v1 = 5657416;
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

uint64_t sub_1D1836624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D183A160(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D183664C(uint64_t a1)
{
  v2 = sub_1D1836F08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1836688(uint64_t a1)
{
  v2 = sub_1D1836F08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18366C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D1836790(uint64_t a1)
{
  v2 = sub_1D1837058();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18367CC(uint64_t a1)
{
  v2 = sub_1D1837058();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1836808(uint64_t a1)
{
  v2 = sub_1D18370AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1836844(uint64_t a1)
{
  v2 = sub_1D18370AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1836880(uint64_t a1)
{
  v2 = sub_1D1837004();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18368BC(uint64_t a1)
{
  v2 = sub_1D1837004();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LightbulbColor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644E58, &qword_1D1E78240);
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v41 - v5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644E60, &qword_1D1E78248);
  v44 = *(v46 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v41 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644E68, &qword_1D1E78250);
  v45 = *(v47 - 8);
  v8 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644E70, &qword_1D1E78258);
  v42 = *(v11 - 8);
  v12 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644E78, &qword_1D1E78260);
  v52 = *(v15 - 8);
  v53 = v15;
  v16 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = *v1;
  v51 = *(v1 + 8);
  v18 = *(v1 + 16);
  v19 = *(v1 + 24);
  v21 = a1[3];
  v20 = a1[4];
  v22 = a1;
  v24 = &v41 - v23;
  __swift_project_boxed_opaque_existential_1(v22, v21);
  sub_1D1836F08();
  sub_1D1E6930C();
  if (v19 > 1)
  {
    if (v19 == 2)
    {
      LOBYTE(v55) = 2;
      sub_1D1837004();
      v27 = v43;
      v28 = v53;
      sub_1D1E68DFC();
      v29 = v46;
      sub_1D1E68F4C();
      (*(v44 + 8))(v27, v29);
      return (*(v52 + 8))(v24, v28);
    }

    else
    {
      v33 = *(v17 + 16);
      v34 = *(v17 + 24);
      v35 = v24;
      v36 = *(v17 + 32);
      v37 = *(v17 + 40);
      LOBYTE(v55) = 3;
      sub_1D1836504(v33, v34, v36, v37);
      sub_1D1836F5C();
      v38 = v48;
      v39 = v53;
      sub_1D1E68DFC();
      v55 = v33;
      v56 = v34;
      v57 = v36;
      v58 = v37;
      sub_1D1836FB0();
      v40 = v50;
      sub_1D1E68E5C();
      (*(v49 + 8))(v38, v40);
      (*(v52 + 8))(v35, v39);
      return sub_1D1836518(v33, v34, v36, v37);
    }
  }

  else if (v19)
  {
    LOBYTE(v55) = 1;
    sub_1D1837058();
    v30 = v53;
    sub_1D1E68DFC();
    LOBYTE(v55) = 0;
    v31 = v47;
    v32 = v54;
    sub_1D1E68EEC();
    if (!v32)
    {
      LOBYTE(v55) = 1;
      sub_1D1E68EEC();
    }

    (*(v45 + 8))(v10, v31);
    return (*(v52 + 8))(v24, v30);
  }

  else
  {
    LOBYTE(v55) = 0;
    sub_1D18370AC();
    v25 = v53;
    sub_1D1E68DFC();
    v55 = v17;
    v56 = v51;
    v57 = v18;
    sub_1D1837100();
    sub_1D1E68F1C();
    (*(v42 + 8))(v14, v11);
    return (*(v52 + 8))(v24, v25);
  }
}

unint64_t sub_1D1836F08()
{
  result = qword_1EC644E80;
  if (!qword_1EC644E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E80);
  }

  return result;
}

unint64_t sub_1D1836F5C()
{
  result = qword_1EC644E88;
  if (!qword_1EC644E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E88);
  }

  return result;
}

unint64_t sub_1D1836FB0()
{
  result = qword_1EC644E90;
  if (!qword_1EC644E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E90);
  }

  return result;
}

unint64_t sub_1D1837004()
{
  result = qword_1EC644E98;
  if (!qword_1EC644E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E98);
  }

  return result;
}

unint64_t sub_1D1837058()
{
  result = qword_1EC644EA0;
  if (!qword_1EC644EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644EA0);
  }

  return result;
}

unint64_t sub_1D18370AC()
{
  result = qword_1EC644EA8;
  if (!qword_1EC644EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644EA8);
  }

  return result;
}

unint64_t sub_1D1837100()
{
  result = qword_1EC644EB0;
  if (!qword_1EC644EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644EB0);
  }

  return result;
}

uint64_t LightbulbColor.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 24) > 1u)
  {
    if (*(v1 + 24) == 2)
    {
      MEMORY[0x1D3892850](2);
      return sub_1D1E6923C();
    }

    else
    {
      v9 = *(v3 + 16);
      v10 = *(v3 + 24);
      v11 = *(v3 + 32);
      v12 = *(v3 + 40);
      MEMORY[0x1D3892850](3);
      if (v12 == 255)
      {
        return sub_1D1E6922C();
      }

      else
      {
        sub_1D1E6922C();
        sub_1D178062C(v9, v10, v11, v12);
        LightbulbColor.hash(into:)(a1);
        return sub_1D1780640(v9, v10, v11, v12);
      }
    }
  }

  else
  {
    v4 = v1[1];
    if (*(v1 + 24))
    {
      MEMORY[0x1D3892850](1);
      if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = v3;
      }

      else
      {
        v7 = 0;
      }

      MEMORY[0x1D3892890](v7);
      if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = 0;
      }

      return MEMORY[0x1D3892890](v8);
    }

    else
    {
      v5 = v1[2];
      MEMORY[0x1D3892850](0);
      return RGBColor.hash(into:)();
    }
  }
}

uint64_t LightbulbColor.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_1D1E6920C();
  LightbulbColor.hash(into:)(v4);
  return sub_1D1E6926C();
}

uint64_t LightbulbColor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644EB8, &qword_1D1E78268);
  v63 = *(v61 - 8);
  v3 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v66 = &v54[-v4];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644EC0, &qword_1D1E78270);
  v60 = *(v58 - 8);
  v5 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v65 = &v54[-v6];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644EC8, &qword_1D1E78278);
  v62 = *(v64 - 8);
  v7 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v9 = &v54[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644ED0, &qword_1D1E78280);
  v59 = *(v10 - 8);
  v11 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644ED8, &qword_1D1E78288);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v54[-v17];
  v20 = a1[3];
  v19 = a1[4];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D1836F08();
  v21 = v68;
  sub_1D1E692FC();
  if (!v21)
  {
    v22 = v13;
    v56 = v10;
    v23 = v64;
    v24 = v65;
    v57 = 0;
    v68 = v15;
    v26 = v66;
    v25 = v67;
    v27 = sub_1D1E68DDC();
    v28 = (2 * *(v27 + 16)) | 1;
    v72 = v27;
    v73 = v27 + 32;
    v74 = 0;
    v75 = v28;
    v29 = sub_1D18085BC();
    if (v29 == 4 || v74 != v75 >> 1)
    {
      v37 = sub_1D1E688EC();
      swift_allocError();
      v39 = v38;
      v40 = v18;
      v41 = v14;
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v39 = &type metadata for LightbulbColor;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
      swift_willThrow();
      (*(v68 + 8))(v40, v41);
    }

    else
    {
      v55 = v29;
      if (v29 > 1u)
      {
        if (v29 == 2)
        {
          LOBYTE(v69) = 2;
          sub_1D1837004();
          v44 = v57;
          sub_1D1E68C4C();
          if (!v44)
          {
            v45 = v58;
            v50 = sub_1D1E68DAC();
            (*(v60 + 8))(v24, v45);
            (*(v68 + 8))(v18, v14);
            swift_unknownObjectRelease();
            v36 = 0;
            v34 = v50;
            v35 = 0;
            goto LABEL_21;
          }
        }

        else
        {
          LOBYTE(v69) = 3;
          sub_1D1836F5C();
          v48 = v57;
          sub_1D1E68C4C();
          if (!v48)
          {
            v34 = swift_allocObject();
            sub_1D183840C();
            v49 = v61;
            sub_1D1E68CBC();
            (*(v63 + 8))(v26, v49);
            (*(v68 + 8))(v18, v14);
            swift_unknownObjectRelease();
            v36 = 0;
            v35 = 0;
            goto LABEL_21;
          }
        }

        v32 = v68;
      }

      else
      {
        if (v29)
        {
          LOBYTE(v69) = 1;
          sub_1D1837058();
          v46 = v57;
          sub_1D1E68C4C();
          v47 = v68;
          if (!v46)
          {
            LOBYTE(v69) = 0;
            sub_1D1E68D4C();
            v52 = v51;
            LOBYTE(v69) = 1;
            sub_1D1E68D4C();
            v35 = v53;
            (*(v62 + 8))(v9, v23);
            (*(v47 + 8))(v18, v14);
            swift_unknownObjectRelease();
            v36 = 0;
            v34 = v52;
            goto LABEL_21;
          }

          (*(v68 + 8))(v18, v14);
          goto LABEL_9;
        }

        LOBYTE(v69) = 0;
        sub_1D18370AC();
        v30 = v22;
        v31 = v57;
        sub_1D1E68C4C();
        v32 = v68;
        if (!v31)
        {
          sub_1D1838460();
          v33 = v56;
          sub_1D1E68D7C();
          (*(v59 + 8))(v30, v33);
          (*(v32 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v34 = v69;
          v35 = v70;
          v36 = v71;
LABEL_21:
          *v25 = v34;
          *(v25 + 8) = v35;
          *(v25 + 16) = v36;
          *(v25 + 24) = v55;
          return __swift_destroy_boxed_opaque_existential_1(v76);
        }
      }

      (*(v32 + 8))(v18, v14);
    }

LABEL_9:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v76);
}

uint64_t sub_1D1837BF8()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_1D1E6920C();
  LightbulbColor.hash(into:)(v4);
  return sub_1D1E6926C();
}

uint64_t sub_1D1837C58()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_1D1E6920C();
  LightbulbColor.hash(into:)(v4);
  return sub_1D1E6926C();
}

__n128 RGBColor.id.getter()
{
  v4 = *v0;
  v1 = v0[1].n128_u64[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643480, &qword_1D1E71900);
  v2 = swift_allocObject();
  result = v4;
  *(v2 + 16) = xmmword_1D1E6F900;
  *(v2 + 32) = v4;
  *(v2 + 48) = v1;
  return result;
}

int8x16_t RGBColor.init(_:_:_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4.i64[0] = a1;
  v4.i64[1] = a2;
  v5 = vcvtq_f64_s64(v4);
  v6 = vdupq_n_s64(0x406FE00000000000uLL);
  v7 = a3 / 255.0;
  if (v7 <= 0.0)
  {
    v7 = 0.0;
  }

  if (v7 > 1.0)
  {
    v7 = 1.0;
  }

  v8 = vdivq_f64(v5, v6);
  v9 = vbicq_s8(v8, vclezq_f64(v8));
  __asm { FMOV            V2.2D, #1.0 }

  result = vbslq_s8(vcgtq_f64(v9, _Q2), _Q2, v9);
  *a4 = result;
  *(a4 + 16) = v7;
  return result;
}

int8x16_t RGBColor.init(red:green:blue:)@<Q0>(uint64_t a1@<X8>, float64x2_t a2@<Q0>, float64_t a3@<D1>, double a4@<D2>)
{
  a2.f64[1] = a3;
  v4 = vclezq_f64(a2);
  if (a4 <= 0.0)
  {
    a4 = 0.0;
  }

  if (a4 > 1.0)
  {
    a4 = 1.0;
  }

  v5 = vbicq_s8(a2, v4);
  __asm { FMOV            V1.2D, #1.0 }

  result = vbslq_s8(vcgtq_f64(v5, _Q1), _Q1, v5);
  *a1 = result;
  *(a1 + 16) = a4;
  return result;
}

uint64_t sub_1D1837E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D183A2D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1837E84(uint64_t a1)
{
  v2 = sub_1D18384B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1837EC0(uint64_t a1)
{
  v2 = sub_1D18384B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RGBColor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644EF0, &qword_1D1E78290);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D18384B4();
  sub_1D1E6930C();
  v16 = v10;
  v15 = 0;
  sub_1D1838508();
  sub_1D1E68F1C();
  if (!v2)
  {
    v16 = v9;
    v15 = 1;
    sub_1D1E68F1C();
    v16 = v11;
    v15 = 2;
    sub_1D1E68F1C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t RGBColor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1D3892890](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1D3892890](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x1D3892890](*&v5);
}

uint64_t RGBColor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D1E6920C();
  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x1D3892890](*&v4);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1D3892890](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1D3892890](*&v6);
  return sub_1D1E6926C();
}