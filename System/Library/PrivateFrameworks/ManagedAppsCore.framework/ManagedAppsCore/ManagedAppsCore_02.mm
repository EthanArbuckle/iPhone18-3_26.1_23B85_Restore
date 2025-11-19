uint64_t sub_2580087CC()
{
  v1 = *v0;
  sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord);
  return sub_258049ED0();
}

uint64_t sub_258008844()
{
  v1 = *v0;
  sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord);
  return sub_258049E90();
}

void (*sub_2580088D0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_257FDA854(v1 + 24, v4);
  return sub_258008504;
}

uint64_t sub_258008964()
{
  v1 = *v0;
  sub_258009670(&qword_27F915278, type metadata accessor for DataAssetRecord);
  return sub_258049ED0();
}

uint64_t sub_2580089D8()
{
  v1 = *v0;
  sub_258009670(&qword_27F915278, type metadata accessor for DataAssetRecord);
  return sub_258049E90();
}

void (*sub_258008A64(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_257FDA854(v1 + 24, v4);
  return sub_258008504;
}

uint64_t sub_258008AF8()
{
  v1 = *v0;
  sub_258009670(&qword_27F915258, type metadata accessor for CredentialAssetRecord);
  return sub_258049ED0();
}

uint64_t sub_258008B6C()
{
  v1 = *v0;
  sub_258009670(&qword_27F915258, type metadata accessor for CredentialAssetRecord);
  return sub_258049E90();
}

void (*sub_258008BF8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_257FDA854(v1 + 24, v4);
  return sub_258008504;
}

uint64_t sub_258008C8C()
{
  v1 = *v0;
  sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord);
  return sub_258049ED0();
}

uint64_t sub_258008D00()
{
  v1 = *v0;
  sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord);
  return sub_258049E90();
}

uint64_t sub_258008D8C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = *(v4 + 48);
  v8 = *(v4 + 52);
  v9 = swift_allocObject();
  a4(a1);
  return v9;
}

void (*sub_258008DDC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_257FDA854(v1 + 24, v4);
  return sub_258008504;
}

uint64_t sub_258008E70()
{
  v2 = *v0;
  sub_25804A600();
  sub_25804A0E0();
  return sub_25804A620();
}

uint64_t sub_258008ED4()
{
  v1 = *v0;
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord);
  return sub_258049ED0();
}

uint64_t sub_258008F48()
{
  v2 = *v0;
  sub_25804A600();
  sub_25804A0E0();
  return sub_25804A620();
}

uint64_t sub_258008FA8()
{
  v1 = *v0;
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord);
  return sub_258049E90();
}

void (*sub_258009048(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_257FDA854(v1 + 24, v4);
  return sub_258008504;
}

uint64_t sub_258009158()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_258049ED0();
}

uint64_t sub_25800923C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v7 = a4(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  a5(a1);
  return v10;
}

uint64_t sub_258009298(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v4 + 24));
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_258009300(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_257FDA854(v1 + 24, v4);
  return sub_258008504;
}

uint64_t sub_258009410(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *v5;
  sub_25804A600();
  a3(0);
  sub_258009670(a4, a5);
  sub_258049ED0();
  return sub_25804A620();
}

uint64_t sub_25800949C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_258049ED0();
}

uint64_t sub_25800950C()
{
  sub_25804A600();
  v1 = *v0;
  swift_getWitnessTable();
  sub_258049ED0();
  return sub_25804A620();
}

uint64_t sub_2580095B8(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *v5;
  a3(0);
  sub_258009670(a4, a5);
  return sub_258049E90();
}

uint64_t sub_258009670(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258009E98(uint64_t a1)
{
  result = sub_258009670(&qword_27F9158E8, type metadata accessor for ExtensionCodeIdentityRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258009EF0(uint64_t a1)
{
  result = sub_258009670(&qword_27F915900, type metadata accessor for AppCodeIdentityRecord);
  *(a1 + 8) = result;
  return result;
}

char *sub_25800A2A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A78, &unk_25804E110);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_25800A3B4(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159A8, &qword_25804D8F0);
  v10 = *(sub_25804A030() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
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
  v15 = *(sub_25804A030() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

uint64_t sub_25800A58C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_25804A480();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_25804A3D0();
  *v1 = result;
  return result;
}

uint64_t sub_25800A62C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25804A480();
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
      result = sub_25804A480();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_257FECB0C(&qword_27F915A80, &qword_27F9152B8, &qword_25804B490);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152B8, &qword_25804B490);
            v9 = sub_2580362C4(v13, i, a3);
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
        type metadata accessor for CredentialRecord(0);
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

uint64_t sub_25800A7D0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25804A480();
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
      result = sub_25804A480();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_257FECB0C(&qword_27F915A88, &qword_27F9152A0, &qword_25804B460);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152A0, &qword_25804B460);
            v9 = sub_258036344(v13, i, a3);
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
        type metadata accessor for DataRecord(0);
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

uint64_t sub_25800A974(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25804A480();
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
      result = sub_25804A480();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_257FECB0C(&qword_27F915A98, &qword_27F9152D0, &qword_25804B4C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152D0, &qword_25804B4C0);
            v9 = sub_2580362C4(v13, i, a3);
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
        type metadata accessor for ExtensionRecord(0);
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

uint64_t sub_25800AB18(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915270, type metadata accessor for DataAssetRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915278, type metadata accessor for DataAssetRecord);
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_25804A560();
  }

  return v3 & 1;
}

uint64_t sub_25800ACDC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord);
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {
  }

  else
  {
    v3 = sub_25804A560();

    if ((v3 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v4 = sub_258004F04();
  v6 = v5;
  v7 = sub_258004F04();
  v9 = v8;
  if (!v6)
  {
    if (v8)
    {

      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v8)
  {
    if (v4 == v7 && v6 == v8)
    {
    }

    else
    {
      v10 = sub_25804A560();

      if ((v10 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

LABEL_13:
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258009670(&qword_27F915278, type metadata accessor for DataAssetRecord);
    v11 = sub_258049EE0();

    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    v12 = sub_258049EE0();

    if (v11)
    {
      if (v12)
      {
        v9 = sub_25800AB18(v11, v12);

        return v9 & 1;
      }
    }

    else if (!v12)
    {
      v9 = 1;
      return v9 & 1;
    }

LABEL_18:
    v9 = 0;
    return v9 & 1;
  }

  return v9 & 1;
}

uint64_t sub_25800B08C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915250, type metadata accessor for CredentialAssetRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915258, type metadata accessor for CredentialAssetRecord);
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {
  }

  else
  {
    v4 = sub_25804A560();

    v5 = 0;
    if ((v4 & 1) == 0)
    {
      return v5 & 1;
    }
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_25804A560();
  }

  return v5 & 1;
}

uint64_t sub_25800B374(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord);
  sub_258049F00();

  v4 = sub_257FF644C();
  if (v4 == 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  v6 = sub_257FF644C();
  if (v6 == 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if ((sub_257FFDE00(v5, v7) & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {
  }

  else
  {
    v8 = sub_25804A560();

    if ((v8 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v9 = sub_257FFC028();
  v11 = v10;
  v12 = sub_257FFC028();
  if (!v11)
  {
    if (!v13)
    {
      goto LABEL_20;
    }

LABEL_17:

    goto LABEL_28;
  }

  if (!v13)
  {
    goto LABEL_17;
  }

  if (v9 == v12 && v11 == v13)
  {
  }

  else
  {
    v14 = sub_25804A560();

    if ((v14 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

LABEL_20:
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {

    goto LABEL_23;
  }

  v15 = sub_25804A560();

  if ((v15 & 1) == 0)
  {
LABEL_28:
    v18 = 0;
    return v18 & 1;
  }

LABEL_23:
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915258, type metadata accessor for CredentialAssetRecord);
  v16 = sub_258049EE0();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v17 = sub_258049EE0();

  if (!v16)
  {
    if (!v17)
    {
      v18 = 1;
      return v18 & 1;
    }

    goto LABEL_27;
  }

  if (!v17)
  {
LABEL_27:

    goto LABEL_28;
  }

  v18 = sub_25800B08C(v16, v17);

  return v18 & 1;
}

uint64_t sub_25800B93C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915908, type metadata accessor for AppCodeIdentityRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord);
  v4 = sub_258049EE0();

  if (v4)
  {
    swift_getKeyPath();
    sub_258009670(&qword_27F915288, type metadata accessor for AppRecord);
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    v5 = v4;
    v4 = v12;
  }

  else
  {
    v5 = 0;
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v6 = sub_258049EE0();

  if (!v6)
  {
    if (!v4)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (!v4)
  {
    if (!v12)
    {
      goto LABEL_17;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  if (v5 == v6 && v4 == v12)
  {
  }

  else
  {
    v9 = sub_25804A560();

    if ((v9 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {
  }

  else
  {
    v10 = sub_25804A560();

    if ((v10 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {

    goto LABEL_23;
  }

  v11 = sub_25804A560();

  if ((v11 & 1) == 0)
  {
LABEL_14:
    v7 = 0;
    return v7 & 1;
  }

LABEL_23:
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_25804A560();
  }

  return v7 & 1;
}

uint64_t sub_25800C010(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915518, type metadata accessor for ExtensionCodeIdentityRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord);
  v4 = sub_258049EE0();

  if (v4)
  {
    swift_getKeyPath();
    sub_258009670(&qword_27F915288, type metadata accessor for AppRecord);
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    v5 = v4;
    v4 = v12;
  }

  else
  {
    v5 = 0;
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v6 = sub_258049EE0();

  if (!v6)
  {
    if (!v4)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (!v4)
  {
    if (!v12)
    {
      goto LABEL_17;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  if (v5 == v6 && v4 == v12)
  {
  }

  else
  {
    v9 = sub_25804A560();

    if ((v9 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {
  }

  else
  {
    v10 = sub_25804A560();

    if ((v10 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {

    goto LABEL_23;
  }

  v11 = sub_25804A560();

  if ((v11 & 1) == 0)
  {
LABEL_14:
    v7 = 0;
    return v7 & 1;
  }

LABEL_23:
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_25804A560();
  }

  return v7 & 1;
}

uint64_t sub_25800C6E4(unint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord);
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {
  }

  else
  {
    v4 = sub_25804A560();

    if ((v4 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {
  }

  else
  {
    v5 = sub_25804A560();

    if ((v5 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258012034(&qword_27F915520);
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (v17)
  {
    if (a1 == a2)
    {
    }

    else
    {
      v6 = sub_25804A560();

      if ((v6 & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for DataRecord(0);
  sub_257FDAD00();
  sub_258049EF0();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049EF0();

  v7 = sub_257FFF4A8(a1, a2, sub_25800ACDC);

  if ((v7 & 1) == 0)
  {
    goto LABEL_19;
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for CredentialRecord(0);
  sub_257FDAE04();
  sub_258049EF0();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049EF0();

  v8 = sub_257FFF4A8(a1, a2, sub_25800B374);

  if ((v8 & 1) == 0)
  {
    goto LABEL_19;
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for ExtensionRecord(0);
  sub_257FDAEC0();
  sub_258049EF0();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049EF0();

  v9 = sub_257FFF294(a1, a2);

  if ((v9 & 1) == 0)
  {
    goto LABEL_19;
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 != a2)
  {
    goto LABEL_19;
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (v17)
  {
    if (a1 == a2)
    {
    }

    else
    {
      v12 = sub_25804A560();

      if ((v12 & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord);
  v13 = sub_258049EE0();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v14 = sub_258049EE0();

  if (!v13)
  {
    if (!v14)
    {
LABEL_28:
      swift_getKeyPath();
      sub_258049A90();

      swift_getKeyPath();
      type metadata accessor for ExtensionCodeIdentityRecord(0);
      sub_258011E3C();
      sub_258049EF0();

      swift_getKeyPath();
      sub_258049A90();

      swift_getKeyPath();
      sub_258049EF0();

      v10 = sub_257FFF4A8(a1, a2, sub_25800C010);

      return v10 & 1;
    }

    goto LABEL_29;
  }

  if (!v14)
  {
LABEL_29:

    goto LABEL_19;
  }

  v15 = sub_25800B93C(v13, v14);

  if (v15)
  {
    goto LABEL_28;
  }

LABEL_19:
  v10 = 0;
  return v10 & 1;
}

uint64_t sub_25800D3B8(void *a1)
{
  sub_258049CB0();
  v2 = v1;
  sub_258049CA0();
  v3 = type metadata accessor for ExtensionRecord(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  *(v6 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159F8, &qword_25804DD90);
  v118[0] = v3;
  v118[1] = v3;
  v119 = sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord);
  v120 = v119;
  *(v6 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v6 + 24));
  sub_258049EA0();
  *(v6 + 16) = 257;
  *(v6 + 18) = 1;
  v7 = *(v6 + 56);
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  v118[0] = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152A0, &qword_25804B460);
  v9 = type metadata accessor for DataRecord(0);
  sub_257FDAD00();
  sub_258049D40();

  v10 = *(v6 + 56);
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  v118[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152B8, &qword_25804B490);
  v113 = type metadata accessor for CredentialRecord(0);
  sub_257FDAE04();
  sub_258049D40();

  sub_258049AA0();
  v11 = *(v6 + 56);
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  type metadata accessor for AppRecord(0);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord);
  sub_258049D60();

  *(v6 + 16) = 0;
  v12 = *(v6 + 56);
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  v118[1] = v2;
  sub_258049D50();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152E0, type metadata accessor for ExtensionRecord);
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049EF0();

  sub_257FF9784(MEMORY[0x277D84F90], sub_25800A7D0);
  swift_getKeyPath();
  sub_258049A80();

  v118[0] = v6;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049EF0();

  v13 = MEMORY[0x277D84F90];
  sub_257FF9784(MEMORY[0x277D84F90], sub_25800A62C);
  swift_getKeyPath();
  sub_258049A80();

  v14 = v13;
  v15 = a1;

  v93 = v6;

  sub_258049C60();
  if (v16)
  {
    v17 = v16;
    v18 = *(v9 + 48);
    v19 = *(v9 + 52);
    v20 = swift_allocObject();
    *(v20 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159F0, &qword_25804DC98);
    v118[0] = v9;
    v118[1] = v9;
    v119 = sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord);
    v120 = v119;
    *(v20 + 56) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v20 + 24));
    sub_258049EA0();
    *(v20 + 16) = 16843009;
    *(v20 + 20) = 1;
    sub_258049AA0();
    v21 = *(v20 + 56);
    __swift_project_boxed_opaque_existential_1((v20 + 24), *(v20 + 48));
    swift_getKeyPath();
    sub_258049D60();

    *(v20 + 16) = 0;
    v22 = *(v20 + 56);
    __swift_project_boxed_opaque_existential_1((v20 + 24), *(v20 + 48));
    swift_getKeyPath();
    sub_258049D60();

    *(v20 + 17) = 0;
    v23 = *(v20 + 56);
    __swift_project_boxed_opaque_existential_1((v20 + 24), *(v20 + 48));
    swift_getKeyPath();
    strcpy(v118, "configDetails");
    HIWORD(v118[1]) = -4864;
    sub_258049D50();

    v24 = *(v20 + 56);
    __swift_project_boxed_opaque_existential_1((v20 + 24), *(v20 + 48));
    swift_getKeyPath();
    v118[1] = v17;
    sub_258049D50();

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord);
    sub_258049A80();

    v26 = swift_getKeyPath();
    MEMORY[0x28223BE20](v26);
    sub_258049A80();

    v118[0] = v20;
    v27 = swift_getKeyPath();
    MEMORY[0x28223BE20](v27);
    sub_258049A80();

    MEMORY[0x259C766C0](v28);
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v51 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_25804A210();
    }

    sub_25804A220();
    v29 = v14;
    v15 = a1;
    v30 = MEMORY[0x277D84F90];
    if (!(v14 >> 62))
    {
LABEL_5:
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v29 = v14;
    v30 = v14;
    if (!(v14 >> 62))
    {
      goto LABEL_5;
    }
  }

  if (sub_25804A480() >= 1)
  {
LABEL_6:
    v118[0] = v93;
    v31 = swift_getKeyPath();
    MEMORY[0x28223BE20](v31);
    sub_258049A80();
  }

LABEL_7:
  v117 = v30;
  v32 = sub_258049C80();
  if (!v32)
  {
    goto LABEL_21;
  }

  v33 = v32;
  if (!(v32 >> 62))
  {
    v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34 >= 1)
    {
      goto LABEL_10;
    }

LABEL_20:

    goto LABEL_21;
  }

  v34 = sub_25804A480();
  if (v34 < 1)
  {
    goto LABEL_20;
  }

LABEL_10:
  v114 = v30;
  sub_25804A430();
  v35 = 0;
  v95 = v33 & 0xC000000000000001;
  v98 = v33;
  do
  {
    if (v95)
    {
      v36 = MEMORY[0x259C768B0](v35, v33);
    }

    else
    {
      v36 = *(v33 + 8 * v35 + 32);
    }

    ++v35;
    v110 = v36;
    v101 = sub_258049B40();
    v38 = v37;
    v107 = sub_258049B30();
    v104 = v39;
    v40 = *(v113 + 48);
    v41 = *(v113 + 52);
    v42 = swift_allocObject();
    *(v42 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A60, &qword_25804E0F8);
    v43 = sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord);
    v118[0] = v113;
    v118[1] = v113;
    v119 = v43;
    v120 = v43;
    *(v42 + 56) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v42 + 24));
    sub_258049EA0();
    *(v42 + 16) = 257;
    *(v42 + 18) = 1;
    sub_258049AA0();
    v44 = *(v42 + 56);
    __swift_project_boxed_opaque_existential_1((v42 + 24), *(v42 + 48));
    swift_getKeyPath();
    sub_258049D60();

    *(v42 + 16) = 0;
    v45 = *(v42 + 56);
    __swift_project_boxed_opaque_existential_1((v42 + 24), *(v42 + 48));
    swift_getKeyPath();
    sub_258049D60();

    *(v42 + 17) = 0;
    v46 = *(v42 + 56);
    __swift_project_boxed_opaque_existential_1((v42 + 24), *(v42 + 48));
    swift_getKeyPath();
    strcpy(v118, "password");
    BYTE1(v118[1]) = 0;
    WORD1(v118[1]) = 0;
    HIDWORD(v118[1]) = -402653184;
    sub_258049D50();

    v47 = *(v42 + 56);
    __swift_project_boxed_opaque_existential_1((v42 + 24), *(v42 + 48));
    swift_getKeyPath();
    v118[0] = v101;
    v118[1] = v38;
    sub_258049D50();

    v48 = *(v42 + 56);
    __swift_project_boxed_opaque_existential_1((v42 + 24), *(v42 + 48));
    swift_getKeyPath();
    v118[0] = v107;
    v118[1] = v104;
    sub_258049D50();

    v118[0] = v42;
    v49 = swift_getKeyPath();
    MEMORY[0x28223BE20](v49);
    sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord);
    sub_258049A80();

    sub_25804A410();
    v50 = *(v114 + 16);
    sub_25804A440();
    sub_25804A450();
    sub_25804A420();
    v33 = v98;
  }

  while (v34 != v35);

  sub_257FF9784(v114, sub_25800A62C);
  v15 = a1;
  v30 = MEMORY[0x277D84F90];
LABEL_21:
  v52 = sub_258049C90();
  if (!v52)
  {
    goto LABEL_32;
  }

  v53 = v52;
  if (!(v52 >> 62))
  {
    v54 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54 >= 1)
    {
      goto LABEL_24;
    }

LABEL_31:

    goto LABEL_32;
  }

  v54 = sub_25804A480();
  if (v54 < 1)
  {
    goto LABEL_31;
  }

LABEL_24:
  v115 = v30;
  sub_25804A430();
  v55 = 0;
  v96 = v53 & 0xC000000000000001;
  v99 = v53;
  do
  {
    if (v96)
    {
      v56 = MEMORY[0x259C768B0](v55, v53);
    }

    else
    {
      v56 = *(v53 + 8 * v55 + 32);
    }

    ++v55;
    v111 = v56;
    v102 = sub_258049B40();
    v58 = v57;
    v108 = sub_258049B30();
    v105 = v59;
    v60 = *(v113 + 48);
    v61 = *(v113 + 52);
    v62 = swift_allocObject();
    *(v62 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A60, &qword_25804E0F8);
    v63 = sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord);
    v118[0] = v113;
    v118[1] = v113;
    v119 = v63;
    v120 = v63;
    *(v62 + 56) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v62 + 24));
    sub_258049EA0();
    *(v62 + 16) = 257;
    *(v62 + 18) = 1;
    sub_258049AA0();
    v64 = *(v62 + 56);
    __swift_project_boxed_opaque_existential_1((v62 + 24), *(v62 + 48));
    swift_getKeyPath();
    sub_258049D60();

    *(v62 + 16) = 0;
    v65 = *(v62 + 56);
    __swift_project_boxed_opaque_existential_1((v62 + 24), *(v62 + 48));
    swift_getKeyPath();
    sub_258049D60();

    *(v62 + 17) = 0;
    v66 = *(v62 + 56);
    __swift_project_boxed_opaque_existential_1((v62 + 24), *(v62 + 48));
    swift_getKeyPath();
    strcpy(v118, "certificate");
    HIDWORD(v118[1]) = -352321536;
    sub_258049D50();

    v67 = *(v62 + 56);
    __swift_project_boxed_opaque_existential_1((v62 + 24), *(v62 + 48));
    swift_getKeyPath();
    v118[0] = v102;
    v118[1] = v58;
    sub_258049D50();

    v68 = *(v62 + 56);
    __swift_project_boxed_opaque_existential_1((v62 + 24), *(v62 + 48));
    swift_getKeyPath();
    v118[0] = v108;
    v118[1] = v105;
    sub_258049D50();

    v118[0] = v62;
    v69 = swift_getKeyPath();
    MEMORY[0x28223BE20](v69);
    sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord);
    sub_258049A80();

    sub_25804A410();
    v70 = *(v115 + 16);
    sub_25804A440();
    sub_25804A450();
    sub_25804A420();
    v53 = v99;
  }

  while (v54 != v55);

  sub_257FF9784(v115, sub_25800A62C);
  v15 = a1;
  v30 = MEMORY[0x277D84F90];
LABEL_32:
  v71 = sub_258049C70();
  if (!v71)
  {
LABEL_43:

    goto LABEL_44;
  }

  v72 = v71;
  if (!(v71 >> 62))
  {
    v73 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v73 >= 1)
    {
      goto LABEL_35;
    }

    goto LABEL_42;
  }

  v73 = sub_25804A480();
  if (v73 < 1)
  {
LABEL_42:

    goto LABEL_43;
  }

LABEL_35:
  v116 = v30;
  sub_25804A430();
  v74 = 0;
  v97 = v72 & 0xC000000000000001;
  v100 = v72;
  do
  {
    if (v97)
    {
      v75 = MEMORY[0x259C768B0](v74, v72);
    }

    else
    {
      v75 = *(v72 + 8 * v74 + 32);
    }

    ++v74;
    v112 = v75;
    v103 = sub_258049B40();
    v77 = v76;
    v109 = sub_258049B30();
    v106 = v78;
    v79 = *(v113 + 48);
    v80 = *(v113 + 52);
    v81 = swift_allocObject();
    *(v81 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A60, &qword_25804E0F8);
    v82 = sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord);
    v118[0] = v113;
    v118[1] = v113;
    v119 = v82;
    v120 = v82;
    *(v81 + 56) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v81 + 24));
    sub_258049EA0();
    *(v81 + 16) = 257;
    *(v81 + 18) = 1;
    sub_258049AA0();
    v83 = *(v81 + 56);
    __swift_project_boxed_opaque_existential_1((v81 + 24), *(v81 + 48));
    swift_getKeyPath();
    sub_258049D60();

    *(v81 + 16) = 0;
    v84 = *(v81 + 56);
    __swift_project_boxed_opaque_existential_1((v81 + 24), *(v81 + 48));
    swift_getKeyPath();
    sub_258049D60();

    *(v81 + 17) = 0;
    v85 = *(v81 + 56);
    __swift_project_boxed_opaque_existential_1((v81 + 24), *(v81 + 48));
    swift_getKeyPath();
    strcpy(v118, "identity");
    BYTE1(v118[1]) = 0;
    WORD1(v118[1]) = 0;
    HIDWORD(v118[1]) = -402653184;
    sub_258049D50();

    v86 = *(v81 + 56);
    __swift_project_boxed_opaque_existential_1((v81 + 24), *(v81 + 48));
    swift_getKeyPath();
    v118[0] = v103;
    v118[1] = v77;
    sub_258049D50();

    v87 = *(v81 + 56);
    __swift_project_boxed_opaque_existential_1((v81 + 24), *(v81 + 48));
    swift_getKeyPath();
    v118[0] = v109;
    v118[1] = v106;
    sub_258049D50();

    v118[0] = v81;
    v88 = swift_getKeyPath();
    MEMORY[0x28223BE20](v88);
    sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord);
    sub_258049A80();

    sub_25804A410();
    v89 = *(v116 + 16);
    sub_25804A440();
    sub_25804A450();
    sub_25804A420();
    v72 = v100;
  }

  while (v73 != v74);

  sub_257FF9784(v116, sub_25800A62C);
  v15 = a1;
LABEL_44:
  if (v117 >> 62)
  {
    if (sub_25804A480() >= 1)
    {
      goto LABEL_46;
    }

LABEL_48:

    v90 = v93;

    return v90;
  }

  if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_48;
  }

LABEL_46:
  v90 = v93;
  v118[0] = v93;
  v91 = swift_getKeyPath();
  MEMORY[0x28223BE20](v91);
  sub_258049A80();

  return v90;
}

uint64_t sub_25800EF1C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_258049BD0();
  v3 = type metadata accessor for AppRecord(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  *(v6 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159E8, &unk_25804DB98);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord);
  *(v6 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v6 + 24));

  sub_258049EA0();
  v7 = *(v6 + 56);
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915528, &qword_25804BFA0);
  sub_258012034(&qword_27F9159E0);
  sub_258049D50();

  *(v6 + 16) = 0;
  v8 = *(v6 + 56);
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152A0, &qword_25804B460);
  v112 = type metadata accessor for DataRecord(0);
  sub_257FDAD00();
  sub_258049D40();

  v9 = *(v6 + 56);
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152B8, &qword_25804B490);
  v117 = type metadata accessor for CredentialRecord(0);
  sub_257FDAE04();
  sub_258049D40();

  v10 = *(v6 + 56);
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152D0, &qword_25804B4C0);
  type metadata accessor for ExtensionRecord(0);
  sub_257FDAEC0();
  sub_258049D40();

  v11 = *(v6 + 56);
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  sub_258049D50();

  v12 = *(v6 + 56);
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  sub_258049D50();

  v13 = *(v6 + 56);
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  sub_258049D50();

  *(v6 + 17) = 256;
  v14 = *(v6 + 56);
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159D8, &unk_25804DB88);
  type metadata accessor for ExtensionCodeIdentityRecord(0);
  sub_258011E3C();
  sub_258049D40();

  sub_258049AA0();
  v15 = *(v6 + 56);
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  sub_258049D50();

  v16 = *(v6 + 56);
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  sub_258049D50();

  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049EF0();

  sub_257FF9784(MEMORY[0x277D84F90], sub_25800A7D0);
  swift_getKeyPath();
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049EF0();

  sub_257FF9784(MEMORY[0x277D84F90], sub_25800A62C);
  swift_getKeyPath();
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049EF0();

  sub_257FF9784(MEMORY[0x277D84F90], sub_25800A974);
  swift_getKeyPath();
  sub_258049A80();

  v17 = sub_258049BE0();
  v104 = v6;
  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = v17;
  if (v17 >> 62)
  {
    v19 = sub_25804A480();
  }

  else
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19 < 1)
  {

LABEL_12:

    goto LABEL_13;
  }

  v123 = MEMORY[0x277D84F90];
  sub_25804A430();
  v20 = 0;
  do
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x259C768B0](v20, v18);
    }

    else
    {
      v21 = *(v18 + 8 * v20 + 32);
    }

    v22 = v21;
    ++v20;

    sub_25800D3B8(v22);
    sub_25804A410();
    v23 = *(v123 + 16);
    sub_25804A440();
    sub_25804A450();
    sub_25804A420();
  }

  while (v19 != v20);

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_258049A80();

LABEL_13:
  v25 = MEMORY[0x277D84F90];
  v122 = MEMORY[0x277D84F90];
  sub_258049BB0();
  v26 = 0x27F915000uLL;
  if (v27)
  {
    v28 = *(v112 + 48);
    v29 = *(v112 + 52);
    v30 = swift_allocObject();
    *(v30 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159F0, &qword_25804DC98);
    sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord);
    *(v30 + 56) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v30 + 24));
    sub_258049EA0();
    *(v30 + 16) = 16843009;
    *(v30 + 20) = 1;
    sub_258049AA0();
    v31 = *(v30 + 56);
    __swift_project_boxed_opaque_existential_1((v30 + 24), *(v30 + 48));
    swift_getKeyPath();
    sub_258049D60();

    *(v30 + 16) = 0;
    v32 = *(v30 + 56);
    __swift_project_boxed_opaque_existential_1((v30 + 24), *(v30 + 48));
    swift_getKeyPath();
    sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord);
    sub_258049D60();

    *(v30 + 17) = 0;
    v33 = *(v30 + 56);
    __swift_project_boxed_opaque_existential_1((v30 + 24), *(v30 + 48));
    swift_getKeyPath();
    sub_258049D50();

    v34 = *(v30 + 56);
    __swift_project_boxed_opaque_existential_1((v30 + 24), *(v30 + 48));
    swift_getKeyPath();
    sub_258049D50();

    v35 = swift_getKeyPath();
    MEMORY[0x28223BE20](v35);
    sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord);
    sub_258049A80();

    v36 = swift_getKeyPath();
    MEMORY[0x28223BE20](v36);
    sub_258049A80();

    v37 = swift_getKeyPath();
    MEMORY[0x28223BE20](v37);
    sub_258049A80();

    MEMORY[0x259C766C0](v38);
    if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v70 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_25804A210();
    }

    sub_25804A220();
    v39 = v122;
    v25 = MEMORY[0x277D84F90];
    v26 = 0x27F915000;
  }

  else
  {
    v39 = v25;
  }

  sub_258049BC0();
  if (v40)
  {
    v41 = *(v112 + 48);
    v42 = *(v112 + 52);
    v43 = swift_allocObject();
    *(v43 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159F0, &qword_25804DC98);
    sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord);
    *(v43 + 56) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v43 + 24));
    sub_258049EA0();
    *(v43 + 16) = 16843009;
    *(v43 + 20) = 1;
    v113 = *(v26 + 2176);
    sub_258049AA0();
    v44 = *(v43 + 56);
    __swift_project_boxed_opaque_existential_1((v43 + 24), *(v43 + 48));
    swift_getKeyPath();
    sub_258049D60();

    *(v43 + 16) = 0;
    v45 = *(v43 + 56);
    __swift_project_boxed_opaque_existential_1((v43 + 24), *(v43 + 48));
    swift_getKeyPath();
    sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord);
    sub_258049D60();

    *(v43 + 17) = 0;
    v46 = *(v43 + 56);
    __swift_project_boxed_opaque_existential_1((v43 + 24), *(v43 + 48));
    swift_getKeyPath();
    sub_258049D50();

    v47 = *(v43 + 56);
    __swift_project_boxed_opaque_existential_1((v43 + 24), *(v43 + 48));
    swift_getKeyPath();
    sub_258049D50();

    v48 = swift_getKeyPath();
    MEMORY[0x28223BE20](v48);
    sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord);
    sub_258049A80();

    v49 = swift_getKeyPath();
    MEMORY[0x28223BE20](v49);
    sub_258049A80();

    v50 = swift_getKeyPath();
    MEMORY[0x28223BE20](v50);
    sub_258049A80();

    MEMORY[0x259C766C0](v51);
    if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v71 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_25804A210();
    }

    sub_25804A220();
    v52 = v122;
    v25 = MEMORY[0x277D84F90];
    if (!(v122 >> 62))
    {
      goto LABEL_22;
    }
  }

  else
  {
    v52 = v39;
    if (!(v39 >> 62))
    {
LABEL_22:
      v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_23;
    }
  }

  v53 = sub_25804A480();
LABEL_23:
  if (v53 >= 1)
  {
    v54 = swift_getKeyPath();
    MEMORY[0x28223BE20](v54);
    sub_258049A80();

    v25 = MEMORY[0x277D84F90];
  }

  v121 = v25;
  v55 = sub_258049C00();
  if (v55)
  {
    v56 = v55;
    if (v55 >> 62)
    {
      v57 = sub_25804A480();
      if (v57 >= 1)
      {
LABEL_28:
        v118 = v25;
        sub_25804A430();
        v58 = 0;
        v106 = v56 & 0xC000000000000001;
        v109 = v56;
        do
        {
          if (v106)
          {
            v59 = MEMORY[0x259C768B0](v58, v56);
          }

          else
          {
            v59 = *(v56 + 8 * v58 + 32);
          }

          ++v58;
          v114 = v59;
          sub_258049B40();
          sub_258049B30();
          v60 = *(v117 + 48);
          v61 = *(v117 + 52);
          v62 = swift_allocObject();
          *(v62 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A60, &qword_25804E0F8);
          sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord);
          *(v62 + 56) = swift_getOpaqueTypeConformance2();
          __swift_allocate_boxed_opaque_existential_1((v62 + 24));
          sub_258049EA0();
          *(v62 + 16) = 257;
          *(v62 + 18) = 1;
          sub_258049AA0();
          v63 = *(v62 + 56);
          __swift_project_boxed_opaque_existential_1((v62 + 24), *(v62 + 48));
          swift_getKeyPath();
          sub_258049D60();

          *(v62 + 16) = 0;
          v64 = *(v62 + 56);
          __swift_project_boxed_opaque_existential_1((v62 + 24), *(v62 + 48));
          swift_getKeyPath();
          sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord);
          sub_258049D60();

          *(v62 + 17) = 0;
          v65 = *(v62 + 56);
          __swift_project_boxed_opaque_existential_1((v62 + 24), *(v62 + 48));
          swift_getKeyPath();
          sub_258049D50();

          v66 = *(v62 + 56);
          __swift_project_boxed_opaque_existential_1((v62 + 24), *(v62 + 48));
          swift_getKeyPath();
          sub_258049D50();

          v67 = *(v62 + 56);
          __swift_project_boxed_opaque_existential_1((v62 + 24), *(v62 + 48));
          swift_getKeyPath();
          sub_258049D50();

          v68 = swift_getKeyPath();
          MEMORY[0x28223BE20](v68);
          sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord);
          sub_258049A80();

          sub_25804A410();
          v69 = *(v118 + 16);
          sub_25804A440();
          sub_25804A450();
          sub_25804A420();
          v56 = v109;
        }

        while (v57 != v58);

        sub_257FF9784(v118, sub_25800A62C);
        v6 = v104;
        v25 = MEMORY[0x277D84F90];
        goto LABEL_39;
      }
    }

    else
    {
      v57 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v57 >= 1)
      {
        goto LABEL_28;
      }
    }
  }

LABEL_39:
  v72 = sub_258049C10();
  if (!v72)
  {
    goto LABEL_50;
  }

  v73 = v72;
  if (!(v72 >> 62))
  {
    v74 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v74 >= 1)
    {
      goto LABEL_42;
    }

LABEL_49:

    goto LABEL_50;
  }

  v74 = sub_25804A480();
  if (v74 < 1)
  {
    goto LABEL_49;
  }

LABEL_42:
  v119 = v25;
  sub_25804A430();
  v75 = 0;
  v107 = v73 & 0xC000000000000001;
  v110 = v73;
  do
  {
    if (v107)
    {
      v76 = MEMORY[0x259C768B0](v75, v73);
    }

    else
    {
      v76 = *(v73 + 8 * v75 + 32);
    }

    ++v75;
    v115 = v76;
    sub_258049B40();
    sub_258049B30();
    v77 = *(v117 + 48);
    v78 = *(v117 + 52);
    v79 = swift_allocObject();
    *(v79 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A60, &qword_25804E0F8);
    sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord);
    *(v79 + 56) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v79 + 24));
    sub_258049EA0();
    *(v79 + 16) = 257;
    *(v79 + 18) = 1;
    sub_258049AA0();
    v80 = *(v79 + 56);
    __swift_project_boxed_opaque_existential_1((v79 + 24), *(v79 + 48));
    swift_getKeyPath();
    sub_258049D60();

    *(v79 + 16) = 0;
    v81 = *(v79 + 56);
    __swift_project_boxed_opaque_existential_1((v79 + 24), *(v79 + 48));
    swift_getKeyPath();
    sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord);
    sub_258049D60();

    *(v79 + 17) = 0;
    v82 = *(v79 + 56);
    __swift_project_boxed_opaque_existential_1((v79 + 24), *(v79 + 48));
    swift_getKeyPath();
    sub_258049D50();

    v83 = *(v79 + 56);
    __swift_project_boxed_opaque_existential_1((v79 + 24), *(v79 + 48));
    swift_getKeyPath();
    sub_258049D50();

    v84 = *(v79 + 56);
    __swift_project_boxed_opaque_existential_1((v79 + 24), *(v79 + 48));
    swift_getKeyPath();
    sub_258049D50();

    v85 = swift_getKeyPath();
    MEMORY[0x28223BE20](v85);
    sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord);
    sub_258049A80();

    sub_25804A410();
    v86 = *(v119 + 16);
    sub_25804A440();
    sub_25804A450();
    sub_25804A420();
    v73 = v110;
  }

  while (v74 != v75);

  sub_257FF9784(v119, sub_25800A62C);
  v6 = v104;
  v25 = MEMORY[0x277D84F90];
LABEL_50:
  v87 = sub_258049BF0();
  if (!v87)
  {
    goto LABEL_62;
  }

  v88 = v87;
  if (!(v87 >> 62))
  {
    v89 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v89 >= 1)
    {
      goto LABEL_53;
    }

    goto LABEL_61;
  }

  v89 = sub_25804A480();
  if (v89 < 1)
  {
LABEL_61:

LABEL_62:

    goto LABEL_63;
  }

LABEL_53:
  v120 = v25;
  sub_25804A430();
  v90 = 0;
  v108 = v88 & 0xC000000000000001;
  v111 = v88;
  do
  {
    if (v108)
    {
      v91 = MEMORY[0x259C768B0](v90, v88);
    }

    else
    {
      v91 = *(v88 + 8 * v90 + 32);
    }

    ++v90;
    v116 = v91;
    sub_258049B40();
    sub_258049B30();
    v92 = *(v117 + 48);
    v93 = *(v117 + 52);
    v94 = swift_allocObject();
    *(v94 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A60, &qword_25804E0F8);
    sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord);
    *(v94 + 56) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v94 + 24));
    sub_258049EA0();
    *(v94 + 16) = 257;
    *(v94 + 18) = 1;
    sub_258049AA0();
    v95 = *(v94 + 56);
    __swift_project_boxed_opaque_existential_1((v94 + 24), *(v94 + 48));
    swift_getKeyPath();
    sub_258049D60();

    *(v94 + 16) = 0;
    v96 = *(v94 + 56);
    __swift_project_boxed_opaque_existential_1((v94 + 24), *(v94 + 48));
    swift_getKeyPath();
    sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord);
    sub_258049D60();

    *(v94 + 17) = 0;
    v97 = *(v94 + 56);
    __swift_project_boxed_opaque_existential_1((v94 + 24), *(v94 + 48));
    swift_getKeyPath();
    sub_258049D50();

    v98 = *(v94 + 56);
    __swift_project_boxed_opaque_existential_1((v94 + 24), *(v94 + 48));
    swift_getKeyPath();
    sub_258049D50();

    v99 = *(v94 + 56);
    __swift_project_boxed_opaque_existential_1((v94 + 24), *(v94 + 48));
    swift_getKeyPath();
    sub_258049D50();

    v100 = swift_getKeyPath();
    MEMORY[0x28223BE20](v100);
    sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord);
    sub_258049A80();

    sub_25804A410();
    v101 = *(v120 + 16);
    sub_25804A440();
    sub_25804A450();
    sub_25804A420();
    v88 = v111;
  }

  while (v89 != v90);

  sub_257FF9784(v120, sub_25800A62C);
  v6 = v104;
LABEL_63:
  if (v121 >> 62)
  {
    if (sub_25804A480() >= 1)
    {
      goto LABEL_65;
    }

LABEL_67:

    return v6;
  }

  if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_67;
  }

LABEL_65:
  v102 = swift_getKeyPath();
  MEMORY[0x28223BE20](v102);
  sub_258049A80();

  return v6;
}

uint64_t sub_2580113AC()
{
  v60 = sub_258049FE0();
  v62 = *(v60 - 8);
  v0 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  v56 = &v51 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159A8, &qword_25804D8F0);
  v2 = *(sub_25804A030() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v57 = v5;
  *(v5 + 16) = xmmword_25804CBE0;
  v6 = v5 + v4;
  swift_getKeyPath();
  v66 = 0u;
  v67 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159B0, &qword_25804D920);
  v7 = *(sub_25804A080() - 8);
  v8 = *(v7 + 72);
  v9 = *(v7 + 80);
  v10 = swift_allocObject();
  v61 = xmmword_25804B660;
  *(v10 + 16) = xmmword_25804B660;
  sub_25804A070();
  v11 = sub_25804A090();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_25804A0A0();
  *(&v64 + 1) = v11;
  v15 = sub_258009670(&qword_27F9159B8, MEMORY[0x277CDD5E8]);
  v65 = v15;
  *&v63 = v14;
  sub_25804A020();
  swift_getKeyPath();
  v66 = 0u;
  v67 = 0u;
  *(swift_allocObject() + 16) = v61;
  sub_25804A070();
  v16 = *(v11 + 48);
  v17 = *(v11 + 52);
  swift_allocObject();
  v18 = sub_25804A0A0();
  *(&v64 + 1) = v11;
  v65 = v15;
  *&v63 = v18;
  v19 = v6;
  sub_25804A020();
  swift_getKeyPath();
  v66 = 0u;
  v67 = 0u;
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  sub_25804A020();
  v53 = 3 * v3;
  v58 = v3;
  KeyPath = swift_getKeyPath();
  *(&v67 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159C0, &qword_25804D9A0);
  v20 = *(&v67 + 1);
  *&v66 = MEMORY[0x277D84F90];
  v21 = *MEMORY[0x277CDD5A0];
  v52 = *(v62 + 104);
  v62 += 104;
  v22 = v56;
  LODWORD(v61) = v21;
  v23 = v60;
  v52(v56, v21, v60);
  swift_getKeyPath();
  v24 = sub_258049FF0();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_25804A000();
  *(&v64 + 1) = v24;
  v59 = sub_258009670(&qword_27F9159C8, MEMORY[0x277CDD5B8]);
  v65 = v59;
  *&v63 = v27;
  v51 = v19;
  sub_25804A020();
  v28 = 4 * v3;
  KeyPath = "_parentCredentialRecords";
  v53 = swift_getKeyPath();
  *(&v67 + 1) = v20;
  v29 = v20;
  v55 = v20;
  *&v66 = MEMORY[0x277D84F90];
  v30 = v52;
  v52(v22, v21, v23);
  swift_getKeyPath();
  v31 = *(v24 + 48);
  v32 = *(v24 + 52);
  swift_allocObject();
  v33 = sub_25804A000();
  v34 = v59;
  *(&v64 + 1) = v24;
  v65 = v59;
  *&v63 = v33;
  sub_25804A020();
  KeyPath = (v28 + v58);
  v53 = "credentialRecords";
  swift_getKeyPath();
  *(&v67 + 1) = v29;
  *&v66 = MEMORY[0x277D84F90];
  v30(v22, v61, v23);
  swift_getKeyPath();
  v35 = *(v24 + 48);
  v36 = *(v24 + 52);
  swift_allocObject();
  v37 = v22;
  v38 = sub_25804A000();
  *(&v64 + 1) = v24;
  v65 = v34;
  *&v63 = v38;
  v39 = v51;
  sub_25804A020();
  swift_getKeyPath();
  v40 = MEMORY[0x277D839B0];
  *(&v67 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v66) = 0;
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  sub_25804A020();
  swift_getKeyPath();
  *(&v67 + 1) = v40;
  LOBYTE(v66) = 0;
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  sub_25804A020();
  swift_getKeyPath();
  v66 = 0u;
  v67 = 0u;
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  sub_25804A020();
  KeyPath = swift_getKeyPath();
  v66 = 0u;
  v67 = 0u;
  v41 = v60;
  v30(v37, v61, v60);
  swift_getKeyPath();
  v42 = *(v24 + 48);
  v43 = *(v24 + 52);
  swift_allocObject();
  v44 = MEMORY[0x277D84F90];
  v45 = sub_25804A000();
  v46 = v59;
  *(&v64 + 1) = v24;
  v65 = v59;
  *&v63 = v45;
  sub_25804A020();
  v58 = v39 + 10 * v58;
  swift_getKeyPath();
  *(&v67 + 1) = v55;
  *&v66 = v44;
  v30(v37, v61, v41);
  swift_getKeyPath();
  v47 = *(v24 + 48);
  v48 = *(v24 + 52);
  swift_allocObject();
  v49 = sub_25804A000();
  *(&v64 + 1) = v24;
  v65 = v46;
  *&v63 = v49;
  sub_25804A020();
  return v57;
}

uint64_t sub_258011E04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2580033E4();
}

uint64_t sub_258011E20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_257FFF1D8();
}

unint64_t sub_258011E3C()
{
  result = qword_27F9159D0;
  if (!qword_27F9159D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9159D8, &unk_25804DB88);
    sub_258009670(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9159D0);
  }

  return result;
}

uint64_t sub_258011EF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_258001F3C();
}

uint64_t sub_258011F0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_257FFEDFC();
}

uint64_t sub_258011F28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_257FFE9D4();
}

uint64_t sub_258011F50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_258000820();
}

uint64_t sub_258011F6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_258005548();
}

uint64_t sub_258011F88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_257FFE81C();
}

uint64_t sub_258011FA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_258004518();
}

uint64_t sub_258011FC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_257FFE574();
}

uint64_t sub_258012034(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915528, &qword_25804BFA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258012150()
{
  v0 = sub_258049FE0();
  v24 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159A8, &qword_25804D8F0);
  v5 = *(sub_25804A030() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  v27 = v8;
  *(v8 + 16) = xmmword_25804CBF0;
  v9 = v8 + v7;
  swift_getKeyPath();
  v31 = 0u;
  v32 = 0u;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  sub_25804A020();
  swift_getKeyPath();
  v31 = 0u;
  v32 = 0u;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  sub_25804A020();
  swift_getKeyPath();
  v31 = 0u;
  v32 = 0u;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = v9;
  sub_25804A020();
  swift_getKeyPath();
  v31 = 0u;
  v32 = 0u;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  sub_25804A020();
  KeyPath = swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159C0, &qword_25804D9A0);
  *(&v32 + 1) = v10;
  *&v31 = MEMORY[0x277D84F90];
  v11 = *MEMORY[0x277CDD5A0];
  v12 = *(v1 + 104);
  v23[1] = v1 + 104;
  v12(v4, v11, v0);
  swift_getKeyPath();
  v13 = sub_258049FF0();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = v4;
  v17 = sub_25804A000();
  *(&v29 + 1) = v13;
  v18 = sub_258009670(&qword_27F9159C8, MEMORY[0x277CDD5B8]);
  v30 = v18;
  *&v28 = v17;
  sub_25804A020();
  KeyPath = "_parentCredentialRecords";
  swift_getKeyPath();
  *(&v32 + 1) = v10;
  *&v31 = MEMORY[0x277D84F90];
  v12(v16, v11, v24);
  swift_getKeyPath();
  v19 = *(v13 + 48);
  v20 = *(v13 + 52);
  swift_allocObject();
  v21 = sub_25804A000();
  *(&v29 + 1) = v13;
  v30 = v18;
  *&v28 = v21;
  sub_25804A020();
  return v27;
}

uint64_t sub_2580125F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159A8, &qword_25804D8F0);
  v0 = *(sub_25804A030() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25804CC00;
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  return v3;
}

uint64_t sub_2580127E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159A8, &qword_25804D8F0);
  v0 = *(sub_25804A030() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25804CC10;
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  return v3;
}

uint64_t sub_258012BB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2580045F0();
}

uint64_t sub_258012C00()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_258005620();
}

uint64_t sub_258012C1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_258001200();
}

uint64_t sub_258012C38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_258000F58();
}

uint64_t sub_25801318C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159A8, &qword_25804D8F0);
  v0 = *(sub_25804A030() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25804CBF0;
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  swift_getKeyPath();
  sub_25804A020();
  return v3;
}

uint64_t sub_258013438()
{
  v0 = sub_258049FE0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159A8, &qword_25804D8F0);
  v5 = *(sub_25804A030() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25804CC00;
  swift_getKeyPath();
  v24 = 0u;
  v25 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159B0, &qword_25804D920);
  v9 = *(sub_25804A080() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_25804B660;
  sub_25804A070();
  v12 = sub_25804A090();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_25804A0A0();
  *(&v22 + 1) = v12;
  v23 = sub_258009670(&qword_27F9159B8, MEMORY[0x277CDD5E8]);
  *&v21 = v15;
  sub_25804A020();
  swift_getKeyPath();
  *(&v25 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159C0, &qword_25804D9A0);
  *&v24 = MEMORY[0x277D84F90];
  (*(v1 + 104))(v4, *MEMORY[0x277CDD5A8], v0);
  swift_getKeyPath();
  v16 = sub_258049FF0();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_25804A000();
  *(&v22 + 1) = v16;
  v23 = sub_258009670(&qword_27F9159C8, MEMORY[0x277CDD5B8]);
  *&v21 = v19;
  sub_25804A020();
  swift_getKeyPath();
  v24 = 0u;
  v25 = 0u;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  sub_25804A020();
  swift_getKeyPath();
  *(&v25 + 1) = &type metadata for DataResolveStatus;
  v24 = xmmword_25804CBD0;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  sub_25804A020();
  return v8;
}

unint64_t sub_25801393C()
{
  result = qword_27F915A00;
  if (!qword_27F915A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915A00);
  }

  return result;
}

uint64_t sub_258013990(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915268, &qword_25804F1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258013A00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915268, &qword_25804F1E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258013A68()
{
  result = qword_27F915A08;
  if (!qword_27F915A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915268, &qword_25804F1E0);
    sub_258009670(&qword_27F915A10, type metadata accessor for DataPersistenceValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915A08);
  }

  return result;
}

uint64_t sub_258013B1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_258006308();
}

uint64_t sub_258013B38()
{
  v32 = sub_25804A030();
  v0 = *(v32 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v32);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_258049FE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159A8, &qword_25804D8F0);
  v9 = *(v0 + 72);
  v31 = v0;
  v10 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v28[1] = 4 * v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25804CC20;
  v29 = v10;
  v30 = v11;
  swift_getKeyPath();
  v36 = 0u;
  v37 = 0u;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  sub_25804A020();
  swift_getKeyPath();
  v36 = 0u;
  v37 = 0u;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  sub_25804A020();
  swift_getKeyPath();
  *(&v37 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159C0, &qword_25804D9A0);
  *&v36 = MEMORY[0x277D84F90];
  (*(v5 + 104))(v8, *MEMORY[0x277CDD5A8], v4);
  swift_getKeyPath();
  v12 = sub_258049FF0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_25804A000();
  *(&v34 + 1) = v12;
  v35 = sub_258009670(&qword_27F9159C8, MEMORY[0x277CDD5B8]);
  *&v33 = v15;
  sub_25804A020();
  swift_getKeyPath();
  v36 = 0u;
  v37 = 0u;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  sub_25804A020();
  swift_getKeyPath();
  *(&v37 + 1) = &type metadata for DataResolveStatus;
  v36 = xmmword_25804CBD0;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  sub_25804A020();
  swift_getKeyPath();
  v36 = 0u;
  v37 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A20, &qword_25804E0D0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25804B660;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A28, &qword_25804E0D8);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25804CC30;
  *(v17 + 32) = swift_getKeyPath();
  *(v17 + 40) = swift_getKeyPath();
  *(v16 + 32) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A30, &qword_25804E0E0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_25804A040();
  *(&v34 + 1) = v18;
  v35 = sub_257FECB0C(&qword_27F915A38, &qword_27F915A30, &qword_25804E0E0);
  *&v33 = v21;
  sub_25804A020();
  v22 = sub_25800A3B4(0, 1, 1, MEMORY[0x277D84F90]);
  v24 = v22[2];
  v23 = v22[3];
  if (v24 >= v23 >> 1)
  {
    v22 = sub_25800A3B4(v23 > 1, v24 + 1, 1, v22);
  }

  v22[2] = v24 + 1;
  v25 = v22 + v29 + v24 * v9;
  v26 = v22;
  (*(v31 + 32))(v25, v3, v32);
  *&v33 = v30;
  sub_257FF987C(v26);
  return v33;
}

uint64_t sub_2580141BC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915A48, &qword_25804E0E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258014234()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_258007428();
}

uint64_t sub_258014250(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2580142C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915608, &qword_25804BDB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25801432C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_257FFE9D4();
}

uint64_t sub_2580143AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_257FFE8D8();
}

uint64_t sub_2580143C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_258004AFC();
}

void *sub_258014598()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA0, &qword_25804EED0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x444964726F636572;
  *(inited + 16) = xmmword_25804E120;
  *(inited + 40) = 0xE800000000000000;
  swift_getKeyPath();
  sub_258019AA8(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A90();
  v2 = v0;

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915290, type metadata accessor for AppRecord);
  sub_258049F00();

  v3 = *(&v46 + 1);
  v4 = MEMORY[0x277D837D0];
  *(inited + 48) = v0;
  *(inited + 56) = v3;
  *(inited + 72) = v4;
  strcpy((inited + 80), "managementKey");
  v5 = v4;
  *(inited + 94) = -4864;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  v6 = *(&v46 + 1);
  *(inited + 96) = v0;
  *(inited + 104) = v6;
  *(inited + 120) = v5;
  *(inited + 128) = 0x49616E6F73726570;
  *(inited + 136) = 0xE900000000000044;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE6B4(&qword_27F915520, &qword_27F915528, &qword_25804BFA0);
  sub_258049F00();

  v7 = v0;
  v8 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    v7 = 7104878;
    v8 = 0xE300000000000000;
  }

  *(inited + 144) = v7;
  *(inited + 152) = v8;
  *(inited + 168) = MEMORY[0x277D837D0];
  *(inited + 176) = 0x4449656C646E7562;
  *(inited + 184) = 0xE800000000000000;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  v9 = v0;
  v10 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    v9 = 7104878;
    v10 = 0xE300000000000000;
  }

  v11 = MEMORY[0x277D837D0];
  *(inited + 192) = v9;
  *(inited + 200) = v10;
  *(inited + 216) = v11;
  strcpy((inited + 224), "codeIdentity");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  *&v46 = v0;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord);
  v12 = sub_258049EE0();

  if (v12)
  {
    v13 = sub_25801593C();

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AB8, &qword_25804EC40);
    *&v46 = v13;
    sub_258019BBC(&v46, (inited + 240));
  }

  else
  {
    *(inited + 264) = v11;
    *(inited + 240) = 7104878;
    *(inited + 248) = 0xE300000000000000;
  }

  *(inited + 272) = 0xD000000000000017;
  *(inited + 280) = 0x8000000258050A00;
  *&v46 = v2;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for ExtensionCodeIdentityRecord(0);
  sub_258011E3C();
  sub_258049EF0();

  v14 = v46;
  if (v46 >> 62)
  {
    v15 = sub_25804A480();
  }

  else
  {
    v15 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15)
  {
    *&v46 = MEMORY[0x277D84F90];
    result = sub_258033244(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
      goto LABEL_57;
    }

    v17 = 0;
    v18 = v46;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        MEMORY[0x259C768B0](v17, v14);
      }

      else
      {
        v19 = *(v14 + 8 * v17 + 32);
      }

      v20 = sub_258015D8C();

      *&v46 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_258033244((v21 > 1), v22 + 1, 1);
        v18 = v46;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      *(v18 + 8 * v22 + 32) = v20;
    }

    while (v15 != v17);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AB0, &qword_25804E958);
  *(inited + 288) = v18;
  v45 = v23;
  *(inited + 312) = v23;
  *(inited + 320) = 0x6576697463417369;
  *(inited + 328) = 0xE800000000000000;
  *&v46 = v2;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  v24 = MEMORY[0x277D839B0];
  *(inited + 336) = v46;
  *(inited + 360) = v24;
  strcpy((inited + 368), "pendingRemoval");
  *(inited + 383) = -18;
  *&v46 = v2;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  *(inited + 384) = v46;
  *(inited + 408) = v24;
  *(inited + 416) = 0xD000000000000013;
  *(inited + 424) = 0x8000000258050D20;
  if (sub_25801BF90(1))
  {
    v25 = sub_2580161DC();

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AB8, &qword_25804EC40);
    *&v46 = v25;
    sub_258019BBC(&v46, (inited + 432));
    v26 = MEMORY[0x277D837D0];
  }

  else
  {
    v26 = MEMORY[0x277D837D0];
    *(inited + 456) = MEMORY[0x277D837D0];
    *(inited + 432) = 7104878;
    *(inited + 440) = 0xE300000000000000;
  }

  *(inited + 464) = 0xD000000000000013;
  *(inited + 472) = 0x8000000258050D40;
  if (sub_25801BF90(2))
  {
    v27 = sub_2580161DC();

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AB8, &qword_25804EC40);
    *&v46 = v27;
    sub_258019BBC(&v46, (inited + 480));
  }

  else
  {
    *(inited + 504) = v26;
    *(inited + 480) = 7104878;
    *(inited + 488) = 0xE300000000000000;
  }

  *(inited + 512) = 0xD000000000000011;
  *(inited + 520) = 0x80000002580509C0;
  *&v46 = v2;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for CredentialRecord(0);
  sub_257FDAE04();
  sub_258049EF0();

  v28 = v46;
  if (v46 >> 62)
  {
    v29 = sub_25804A480();
  }

  else
  {
    v29 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v29)
  {

    v31 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  *&v46 = MEMORY[0x277D84F90];
  result = sub_258033244(0, v29 & ~(v29 >> 63), 0);
  if (v29 < 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v30 = 0;
  v31 = v46;
  do
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      MEMORY[0x259C768B0](v30, v28);
    }

    else
    {
      v32 = *(v28 + 8 * v30 + 32);
    }

    v33 = sub_258016CCC();

    *&v46 = v31;
    v35 = *(v31 + 16);
    v34 = *(v31 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_258033244((v34 > 1), v35 + 1, 1);
      v31 = v46;
    }

    ++v30;
    *(v31 + 16) = v35 + 1;
    *(v31 + 8 * v35 + 32) = v33;
  }

  while (v29 != v30);

LABEL_40:
  *(inited + 552) = v45;
  *(inited + 528) = v31;
  *(inited + 560) = 0xD000000000000010;
  *(inited + 568) = 0x80000002580509E0;
  *&v46 = v2;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for ExtensionRecord(0);
  sub_257FDAEC0();
  sub_258049EF0();

  v36 = v46;
  if (!(v46 >> 62))
  {
    v37 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      goto LABEL_42;
    }

LABEL_54:

    v39 = MEMORY[0x277D84F90];
LABEL_55:
    *(inited + 600) = v45;
    *(inited + 576) = v39;
    v44 = sub_258036B88(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA8, &qword_25804EEE0);
    swift_arrayDestroy();
    return v44;
  }

  v37 = sub_25804A480();
  if (!v37)
  {
    goto LABEL_54;
  }

LABEL_42:
  *&v46 = MEMORY[0x277D84F90];
  result = sub_258033244(0, v37 & ~(v37 >> 63), 0);
  if ((v37 & 0x8000000000000000) == 0)
  {
    v38 = 0;
    v39 = v46;
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        MEMORY[0x259C768B0](v38, v36);
      }

      else
      {
        v40 = *(v36 + 8 * v38 + 32);
      }

      v41 = sub_2580151A0();

      *&v46 = v39;
      v43 = *(v39 + 16);
      v42 = *(v39 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_258033244((v42 > 1), v43 + 1, 1);
        v39 = v46;
      }

      ++v38;
      *(v39 + 16) = v43 + 1;
      *(v39 + 8 * v43 + 32) = v41;
    }

    while (v37 != v38);

    goto LABEL_55;
  }

LABEL_58:
  __break(1u);
  return result;
}

void *sub_2580151A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA0, &qword_25804EED0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x7041746E65726170;
  *(inited + 16) = xmmword_25804CC10;
  *(inited + 40) = 0xEF64726F63655270;
  *&v28 = v0;
  swift_getKeyPath();
  sub_258019AA8(&qword_27F9152E0, type metadata accessor for ExtensionRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F9152D8, type metadata accessor for ExtensionRecord);
  sub_258019AA8(&qword_27F915290, type metadata accessor for AppRecord);
  v3 = sub_258049EE0();

  v4 = MEMORY[0x277D837D0];
  if (v3)
  {
    swift_getKeyPath();
    sub_258019AA8(&qword_27F915288, type metadata accessor for AppRecord);
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    v6 = v3;
    v5 = *(&v28 + 1);
    v7 = (inited + 48);
    *(inited + 72) = v4;
    if (v5)
    {
      v8 = v4;
      *v7 = v6;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = (inited + 48);
    *(inited + 72) = MEMORY[0x277D837D0];
  }

  v8 = v4;
  *v7 = 7104878;
  v5 = 0xE300000000000000;
LABEL_6:
  *(inited + 56) = v5;
  *(inited + 80) = 0x4449656C646E7562;
  *(inited + 88) = 0xE800000000000000;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  v9 = *(&v28 + 1);
  *(inited + 96) = v0;
  *(inited + 104) = v9;
  *(inited + 120) = v8;
  *(inited + 128) = 0x44496D616574;
  *(inited + 136) = 0xE600000000000000;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE6B4(&qword_27F915520, &qword_27F915528, &qword_25804BFA0);
  sub_258049F00();

  v10 = v0;
  v11 = *(&v28 + 1);
  if (!*(&v28 + 1))
  {
    v10 = 7104878;
    v11 = 0xE300000000000000;
  }

  *(inited + 144) = v10;
  *(inited + 152) = v11;
  *(inited + 168) = v8;
  *(inited + 176) = 0x49616E6F73726570;
  *(inited + 184) = 0xE900000000000044;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  v12 = v0;
  v13 = *(&v28 + 1);
  if (!*(&v28 + 1))
  {
    v12 = 7104878;
    v13 = 0xE300000000000000;
  }

  *(inited + 192) = v12;
  *(inited + 200) = v13;
  *(inited + 216) = v8;
  *(inited + 224) = 0xD000000000000013;
  *(inited + 232) = 0x8000000258050D20;
  if (sub_25801C304(1))
  {
    v14 = sub_2580161DC();

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AB8, &qword_25804EC40);
    *&v28 = v14;
    sub_258019BBC(&v28, (inited + 240));
  }

  else
  {
    *(inited + 264) = v8;
    *(inited + 240) = 7104878;
    *(inited + 248) = 0xE300000000000000;
  }

  *(inited + 272) = 0xD000000000000011;
  *(inited + 280) = 0x80000002580509C0;
  *&v28 = v0;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for CredentialRecord(0);
  sub_257FDAE04();
  sub_258049EF0();

  v15 = v28;
  if (v28 >> 62)
  {
    v16 = sub_25804A480();
    if (v16)
    {
      goto LABEL_15;
    }

LABEL_25:

    v19 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v16 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_15:
  *&v28 = MEMORY[0x277D84F90];
  result = sub_258033244(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
    __break(1u);
    return result;
  }

  v27 = v0;
  v18 = 0;
  v19 = v28;
  do
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      MEMORY[0x259C768B0](v18, v15);
    }

    else
    {
      v20 = *(v15 + 8 * v18 + 32);
    }

    v21 = sub_258016CCC();

    *&v28 = v19;
    v23 = *(v19 + 16);
    v22 = *(v19 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_258033244((v22 > 1), v23 + 1, 1);
      v19 = v28;
    }

    ++v18;
    *(v19 + 16) = v23 + 1;
    *(v19 + 8 * v23 + 32) = v21;
  }

  while (v16 != v18);

  v1 = v27;
LABEL_26:
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AB0, &qword_25804E958);
  *(inited + 288) = v19;
  *(inited + 312) = v24;
  *(inited + 320) = 0x64656E616870726FLL;
  *(inited + 328) = 0xE800000000000000;
  *&v28 = v1;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v25 = sub_258049EE0();

  if (v25)
  {
  }

  *(inited + 360) = MEMORY[0x277D839B0];
  *(inited + 336) = v25 == 0;
  v26 = sub_258036B88(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA8, &qword_25804EEE0);
  swift_arrayDestroy();
  return v26;
}

unint64_t sub_25801593C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA0, &qword_25804EED0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x726F636552707061;
  *(inited + 16) = xmmword_25804CC00;
  *(inited + 40) = 0xE900000000000064;
  swift_getKeyPath();
  sub_258019AA8(&qword_27F915908, type metadata accessor for AppCodeIdentityRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord);
  sub_258019AA8(&qword_27F915290, type metadata accessor for AppRecord);
  v2 = sub_258049EE0();

  v3 = MEMORY[0x277D837D0];
  if (!v2)
  {
    v5 = (inited + 48);
    *(inited + 72) = MEMORY[0x277D837D0];
    goto LABEL_5;
  }

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();
  v3 = MEMORY[0x277D837D0];

  v4 = v8;
  v5 = (inited + 48);
  *(inited + 72) = v3;
  if (!v8)
  {
LABEL_5:
    *v5 = 7104878;
    v4 = 0xE300000000000000;
    goto LABEL_6;
  }

  *v5 = v2;
LABEL_6:
  *(inited + 56) = v4;
  strcpy((inited + 80), "codeSigningID");
  *(inited + 94) = -4864;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  *(inited + 96) = v0;
  *(inited + 104) = v8;
  *(inited + 120) = v3;
  *(inited + 128) = 0x44496D616574;
  *(inited + 136) = 0xE600000000000000;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  *(inited + 144) = v0;
  *(inited + 152) = v8;
  *(inited + 168) = v3;
  *(inited + 176) = 1752457584;
  *(inited + 184) = 0xE400000000000000;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  *(inited + 216) = v3;
  *(inited + 192) = v0;
  *(inited + 200) = v8;
  v6 = sub_258036B88(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA8, &qword_25804EEE0);
  swift_arrayDestroy();
  return v6;
}

unint64_t sub_258015D8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA0, &qword_25804EED0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x726F636552707061;
  *(inited + 16) = xmmword_25804CC00;
  *(inited + 40) = 0xE900000000000064;
  swift_getKeyPath();
  sub_258019AA8(&qword_27F915518, type metadata accessor for ExtensionCodeIdentityRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord);
  sub_258019AA8(&qword_27F915290, type metadata accessor for AppRecord);
  v2 = sub_258049EE0();

  v3 = MEMORY[0x277D837D0];
  if (!v2)
  {
    v5 = (inited + 48);
    *(inited + 72) = MEMORY[0x277D837D0];
    goto LABEL_5;
  }

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();
  v3 = MEMORY[0x277D837D0];

  v4 = v8;
  v5 = (inited + 48);
  *(inited + 72) = v3;
  if (!v8)
  {
LABEL_5:
    *v5 = 7104878;
    v4 = 0xE300000000000000;
    goto LABEL_6;
  }

  *v5 = v2;
LABEL_6:
  *(inited + 56) = v4;
  strcpy((inited + 80), "codeSigningID");
  *(inited + 94) = -4864;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  *(inited + 96) = v0;
  *(inited + 104) = v8;
  *(inited + 120) = v3;
  *(inited + 128) = 0x44496D616574;
  *(inited + 136) = 0xE600000000000000;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  *(inited + 144) = v0;
  *(inited + 152) = v8;
  *(inited + 168) = v3;
  *(inited + 176) = 1752457584;
  *(inited + 184) = 0xE400000000000000;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  *(inited + 216) = v3;
  *(inited + 192) = v0;
  *(inited + 200) = v8;
  v6 = sub_258036B88(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA8, &qword_25804EEE0);
  swift_arrayDestroy();
  return v6;
}

unint64_t sub_2580161DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA0, &qword_25804EED0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6570795461746164;
  *&v19 = v0;
  *(inited + 16) = xmmword_25804CC10;
  *(inited + 40) = 0xE800000000000000;
  swift_getKeyPath();
  sub_258019AA8(&qword_27F9152E8, type metadata accessor for DataRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F9152A8, type metadata accessor for DataRecord);
  sub_258049F00();

  v3 = *(&v19 + 1);
  v4 = MEMORY[0x277D837D0];
  *(inited + 48) = v19;
  *(inited + 56) = v3;
  *(inited + 72) = v4;
  strcpy((inited + 80), "managementKey");
  *(inited + 94) = -4864;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  v5 = *(&v19 + 1);
  *(inited + 96) = v0;
  *(inited + 104) = v5;
  *(inited + 120) = v4;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x8000000258050A60;
  v6 = sub_258004F04();
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 7104878;
  }

  v9 = 0xE300000000000000;
  if (v7)
  {
    v9 = v7;
  }

  *(inited + 144) = v8;
  *(inited + 152) = v9;
  *(inited + 168) = v4;
  *(inited + 176) = 0x6365527465737361;
  *(inited + 184) = 0xEB0000000064726FLL;
  *&v19 = v0;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915278, type metadata accessor for DataAssetRecord);
  v10 = sub_258049EE0();

  if (v10)
  {

    v11 = 0xE700000000000000;
    v12 = 0x746E6573657270;
  }

  else
  {
    v11 = 0xE600000000000000;
    v12 = 0x746E65736261;
  }

  *(inited + 192) = v12;
  *(inited + 200) = v11;
  *(inited + 216) = v4;
  *(inited + 224) = 0x6F43737574617473;
  *(inited + 232) = 0xEA00000000006564;
  *&v19 = v1;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE6B4(&qword_27F915600, &qword_27F915608, &qword_25804BDB0);
  sub_258049F00();

  if (BYTE8(v19))
  {
    *(inited + 264) = v4;
    *(inited + 240) = 7104878;
    *(inited + 248) = 0xE300000000000000;
  }

  else
  {
    v20 = MEMORY[0x277D83B88];
    sub_258019BBC(&v19, (inited + 240));
  }

  strcpy((inited + 272), "statusReason");
  *(inited + 285) = 0;
  *(inited + 286) = -5120;
  *&v19 = v1;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE6B4(&qword_27F915520, &qword_27F915528, &qword_25804BFA0);
  sub_258049F00();

  v14 = *(&v19 + 1);
  v13 = v19;
  if (!*(&v19 + 1))
  {
    v13 = 7104878;
    v14 = 0xE300000000000000;
  }

  *(inited + 288) = v13;
  *(inited + 296) = v14;
  *(inited + 312) = v4;
  *(inited + 320) = 0x64656E616870726FLL;
  *(inited + 328) = 0xE800000000000000;
  sub_258004F04();
  v16 = v15;
  if (v15)
  {
  }

  *(inited + 360) = MEMORY[0x277D839B0];
  *(inited + 336) = v16 == 0;
  v17 = sub_258036B88(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA8, &qword_25804EEE0);
  swift_arrayDestroy();
  return v17;
}

unint64_t sub_25801672C()
{
  v1 = v0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915268, &qword_25804F1E0);
  v2 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v24 = v23 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA0, &qword_25804EED0);
  inited = swift_initStackObject();
  strcpy((inited + 32), "managementKey");
  *(inited + 16) = xmmword_25804CC20;
  *(inited + 46) = -4864;
  v29 = v0;
  swift_getKeyPath();
  sub_258019AA8(&qword_27F915270, type metadata accessor for DataAssetRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915278, type metadata accessor for DataAssetRecord);
  sub_258049F00();

  v5 = v30;
  v6 = MEMORY[0x277D837D0];
  *(inited + 48) = v29;
  *(inited + 56) = v5;
  *(inited + 72) = v6;
  *(inited + 80) = 0x636E657265666572;
  *(inited + 88) = 0xEA00000000007365;
  v29 = v0;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v7 = type metadata accessor for DataRecord(0);
  v23[0] = sub_257FDAD00();
  v23[1] = v7;
  sub_258049EF0();

  v26 = inited + 32;
  if (v29 >> 62)
  {
    v8 = sub_25804A480();
  }

  else
  {
    v8 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0x6465766C6F736552;

  v10 = MEMORY[0x277D83B88];
  *(inited + 96) = v8;
  *(inited + 120) = v10;
  *(inited + 128) = 0x6465766C6F736572;
  *(inited + 136) = 0xE800000000000000;
  v29 = v1;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_257FDAB10();
  sub_258049F00();

  v11 = v30;
  if (v30 == 2)
  {
    v12 = 0xE800000000000000;
  }

  else if (v30 == 1)
  {
    v9 = 0x766C6F7365726E55;
    v12 = 0xEA00000000006465;
  }

  else
  {
    v13 = v29;
    v29 = 0x203A64656C696146;
    v30 = 0xE800000000000000;
    v27 = v13;
    v28 = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915528, &qword_25804BFA0);
    v14 = sub_25804A120();
    MEMORY[0x259C76670](v14);

    sub_257FDAB64(v13, v11);
    v9 = v29;
    v12 = v30;
  }

  *(inited + 144) = v9;
  *(inited + 152) = v12;
  v15 = MEMORY[0x277D837D0];
  *(inited + 168) = MEMORY[0x277D837D0];
  *(inited + 176) = 0x65756C6176;
  *(inited + 184) = 0xE500000000000000;
  v29 = v1;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEC568();
  v16 = v24;
  sub_258049F00();

  v17 = sub_25804A330();
  v19 = v18;
  sub_258013A00(v16);
  *(inited + 192) = v17;
  *(inited + 200) = v19;
  *(inited + 216) = v15;
  *(inited + 224) = 0x64656E616870726FLL;
  *(inited + 232) = 0xE800000000000000;
  v29 = v1;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049EF0();

  if (v29 >> 62)
  {
    v20 = sub_25804A480();
  }

  else
  {
    v20 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(inited + 264) = MEMORY[0x277D839B0];
  *(inited + 240) = v20 == 0;
  v21 = sub_258036B88(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA8, &qword_25804EEE0);
  swift_arrayDestroy();
  return v21;
}

unint64_t sub_258016CCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA0, &qword_25804EED0);
  inited = swift_initStackObject();
  strcpy((inited + 32), "credentialType");
  *(inited + 16) = xmmword_25804CBF0;
  *(inited + 47) = -18;
  swift_getKeyPath();
  sub_258019AA8(&qword_27F9152F0, type metadata accessor for CredentialRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F9152C0, type metadata accessor for CredentialRecord);
  sub_258049F00();

  v2 = sub_257FF644C();
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  if (v2 <= 1)
  {
    if (v2)
    {
      v3 = 0xE800000000000000;
      v4 = 0x64726F7773736170;
    }
  }

  else if (v2 == 2)
  {
    v3 = 0xEB00000000657461;
    v4 = 0x6369666974726563;
  }

  else if (v2 == 3)
  {
    v3 = 0xE800000000000000;
    v4 = 0x797469746E656469;
  }

  v5 = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 72) = v5;
  strcpy((inited + 80), "managementKey");
  *(inited + 94) = -4864;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  *(inited + 96) = v0;
  *(inited + 104) = v17;
  *(inited + 120) = v5;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x8000000258050A60;
  v6 = sub_257FFC028();
  v8 = 7104878;
  if (v7)
  {
    v8 = v6;
  }

  v9 = 0xE300000000000000;
  if (v7)
  {
    v9 = v7;
  }

  *(inited + 144) = v8;
  *(inited + 152) = v9;
  *(inited + 168) = v5;
  strcpy((inited + 176), "appIdentifier");
  *(inited + 190) = -4864;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  *(inited + 192) = v0;
  *(inited + 200) = v17;
  *(inited + 216) = v5;
  *(inited + 224) = 0x6365527465737361;
  *(inited + 232) = 0xEB0000000064726FLL;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915258, type metadata accessor for CredentialAssetRecord);
  v10 = sub_258049EE0();

  if (v10)
  {

    v11 = 0xE700000000000000;
    v12 = 0x746E6573657270;
  }

  else
  {
    v11 = 0xE600000000000000;
    v12 = 0x746E65736261;
  }

  *(inited + 240) = v12;
  *(inited + 248) = v11;
  *(inited + 264) = v5;
  *(inited + 272) = 0x64656E616870726FLL;
  *(inited + 280) = 0xE800000000000000;
  sub_257FFC028();
  v14 = v13;
  if (v13)
  {
  }

  *(inited + 312) = MEMORY[0x277D839B0];
  *(inited + 288) = v14 == 0;
  v15 = sub_258036B88(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA8, &qword_25804EEE0);
  swift_arrayDestroy();
  return v15;
}

unint64_t sub_2580171AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA0, &qword_25804EED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25804CBF0;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000258050A60;
  swift_getKeyPath();
  sub_258019AA8(&qword_27F915250, type metadata accessor for CredentialAssetRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915258, type metadata accessor for CredentialAssetRecord);
  sub_258049F00();

  v3 = MEMORY[0x277D837D0];
  *(inited + 48) = v0;
  *(inited + 56) = v18;
  *(inited + 72) = v3;
  strcpy((inited + 80), "managementKey");
  *(inited + 94) = -4864;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  *(inited + 96) = v0;
  *(inited + 104) = v18;
  *(inited + 120) = v3;
  *(inited + 128) = 0x636E657265666572;
  *(inited + 136) = 0xEA00000000007365;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for CredentialRecord(0);
  sub_257FDAE04();
  sub_258049EF0();

  if (v0 >> 62)
  {
    v4 = sub_25804A480();
  }

  else
  {
    v4 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0x6465766C6F736552;

  v6 = MEMORY[0x277D83B88];
  *(inited + 144) = v4;
  *(inited + 168) = v6;
  *(inited + 176) = 0x6465766C6F736572;
  v7 = 0xE800000000000000;
  *(inited + 184) = 0xE800000000000000;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_257FDAB10();
  sub_258049F00();

  v8 = v18;
  if (v18 != 2)
  {
    if (v18 == 1)
    {
      v5 = 0x766C6F7365726E55;
      v7 = 0xEA00000000006465;
    }

    else
    {
      v18 = 0xE800000000000000;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915528, &qword_25804BFA0);
      v9 = sub_25804A120();
      MEMORY[0x259C76670](v9);

      sub_257FDAB64(v1, v8);
      v5 = 0x203A64656C696146;
      v7 = 0xE800000000000000;
    }
  }

  *(inited + 192) = v5;
  *(inited + 200) = v7;
  v10 = MEMORY[0x277D837D0];
  *(inited + 216) = MEMORY[0x277D837D0];
  *(inited + 224) = 0x65756C6176;
  *(inited + 232) = 0xE500000000000000;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258019B00();
  sub_258049F00();

  if (v18 >> 60 == 15)
  {
    v11 = (inited + 240);
    *(inited + 264) = v10;
  }

  else
  {
    v12 = sub_258049A50();
    v14 = v13;
    sub_257FDAAA0(v1, v18);
    v11 = (inited + 240);
    *(inited + 264) = v10;
    if (v14)
    {
      *v11 = v12;
      goto LABEL_12;
    }
  }

  *v11 = 7104878;
  v14 = 0xE300000000000000;
LABEL_12:
  *(inited + 248) = v14;
  *(inited + 272) = 0x64656E616870726FLL;
  *(inited + 280) = 0xE800000000000000;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049EF0();

  if (v1 >> 62)
  {
    v15 = sub_25804A480();
  }

  else
  {
    v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(inited + 312) = MEMORY[0x277D839B0];
  *(inited + 288) = v15 == 0;
  v16 = sub_258036B88(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA8, &qword_25804EEE0);
  swift_arrayDestroy();
  return v16;
}

uint64_t sub_2580177CC()
{
  v1 = v0;
  sub_25804A3B0();
  MEMORY[0x259C76670](0xD000000000000017, 0x8000000258050AE0);
  swift_getKeyPath();
  sub_258019AA8(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915290, type metadata accessor for AppRecord);
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](0xD000000000000011, 0x80000002580505C0);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  v3 = v0;
  v2 = v54;
  if (sub_25804A160() >= 13)
  {
    v54 = 0xE100000000000000;

    v5 = sub_2580368E4(6, v0, v2, v4);
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = MEMORY[0x259C76630](v5, v7, v9, v11);
    v14 = v13;

    MEMORY[0x259C76670](v12, v14);

    MEMORY[0x259C76670](10911970, 0xA300000000000000);

    v15 = sub_25801994C(6, v3, v2);
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v22 = MEMORY[0x259C76630](v15, v17, v19, v21);
    v24 = v23;

    MEMORY[0x259C76670](v22, v24);

    MEMORY[0x259C76670](62, 0xE100000000000000);

    v3 = 60;
    v2 = 0xE100000000000000;
  }

  v25 = 7104878;
  MEMORY[0x259C76670](v3, v2);

  MEMORY[0x259C76670](0x6E6F73726570202CLL, 0xED0000203A444961);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE6B4(&qword_27F915520, &qword_27F915528, &qword_25804BFA0);
  sub_258049F00();

  if (v54)
  {
    v26 = v1;
  }

  else
  {
    v26 = 7104878;
  }

  v27 = 0xE300000000000000;
  if (v54)
  {
    v28 = v54;
  }

  else
  {
    v28 = 0xE300000000000000;
  }

  MEMORY[0x259C76670](v26, v28);

  MEMORY[0x259C76670](0x656C646E7562202CLL, 0xEC000000203A4449);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (v54)
  {
    v29 = v1;
  }

  else
  {
    v29 = 7104878;
  }

  if (v54)
  {
    v30 = v54;
  }

  else
  {
    v30 = 0xE300000000000000;
  }

  MEMORY[0x259C76670](v29, v30);

  MEMORY[0x259C76670](0xD000000000000010, 0x8000000258050B00);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord);
  v31 = sub_258049EE0();

  if (v31)
  {
    v32 = sub_258018184();
    v27 = v33;
  }

  else
  {
    v32 = 7104878;
  }

  MEMORY[0x259C76670](v32, v27);

  MEMORY[0x259C76670](0x697463417369202CLL, 0xEC000000203A6576);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (v1)
  {
    v34 = 1702195828;
  }

  else
  {
    v34 = 0x65736C6166;
  }

  if (v1)
  {
    v35 = 0xE400000000000000;
  }

  else
  {
    v35 = 0xE500000000000000;
  }

  MEMORY[0x259C76670](v34, v35);

  MEMORY[0x259C76670](0xD000000000000017, 0x8000000258050B20);
  if (sub_25801BF90(1))
  {
    v36 = sub_258018424();
    v38 = v37;
  }

  else
  {
    v38 = 0xE300000000000000;
    v36 = 7104878;
  }

  MEMORY[0x259C76670](v36, v38);

  MEMORY[0x259C76670](0xD000000000000017, 0x8000000258050B40);
  if (sub_25801BF90(2))
  {
    v25 = sub_258018424();
    v40 = v39;
  }

  else
  {
    v40 = 0xE300000000000000;
  }

  MEMORY[0x259C76670](v25, v40);

  MEMORY[0x259C76670](0xD000000000000014, 0x8000000258050B60);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v41 = type metadata accessor for CredentialRecord(0);
  sub_257FDAE04();
  sub_258049EF0();

  v42 = MEMORY[0x259C766F0](v1, v41);
  v44 = v43;

  MEMORY[0x259C76670](v42, v44);

  MEMORY[0x259C76670](0xD000000000000014, 0x8000000258050B80);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v45 = type metadata accessor for ExtensionRecord(0);
  sub_257FDAEC0();
  sub_258049EF0();

  v46 = MEMORY[0x259C766F0](v1, v45);
  v48 = v47;

  MEMORY[0x259C76670](v46, v48);

  MEMORY[0x259C76670](0xD00000000000001BLL, 0x8000000258050BA0);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v49 = type metadata accessor for ExtensionCodeIdentityRecord(0);
  sub_258011E3C();
  sub_258049EF0();

  v50 = MEMORY[0x259C766F0](v1, v49);
  v52 = v51;

  MEMORY[0x259C76670](v50, v52);

  MEMORY[0x259C76670](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_258018184()
{
  sub_25804A3B0();
  MEMORY[0x259C76670](0xD000000000000027, 0x8000000258050C00);
  swift_getKeyPath();
  sub_258019AA8(&qword_27F915908, type metadata accessor for AppCodeIdentityRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord);
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](0x44496D616574202CLL, 0xEA0000000000203ALL);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](0x203A68746170202CLL, 0xE800000000000000);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](125, 0xE100000000000000);
  return 0;
}

unint64_t sub_258018424()
{
  sub_25804A3B0();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F9152E8, type metadata accessor for DataRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F9152A8, type metadata accessor for DataRecord);
  sub_258049F00();

  v2 = v0;
  v1 = v29;
  if (sub_25804A160() >= 13)
  {

    v4 = sub_2580368E4(6, v0, v29, v3);
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = MEMORY[0x259C76630](v4, v6, v8, v10);
    v13 = v12;

    MEMORY[0x259C76670](v11, v13);

    MEMORY[0x259C76670](10911970, 0xA300000000000000);

    v14 = sub_25801994C(6, v2, v29);
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = MEMORY[0x259C76630](v14, v16, v18, v20);
    v23 = v22;

    MEMORY[0x259C76670](v21, v23);

    MEMORY[0x259C76670](62, 0xE100000000000000);

    v2 = 60;
    v1 = 0xE100000000000000;
  }

  MEMORY[0x259C76670](v2, v1);

  MEMORY[0x259C76670](0x527465737361202CLL, 0xEF203A64726F6365);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915278, type metadata accessor for DataAssetRecord);
  v24 = sub_258049EE0();

  if (v24)
  {
    v25 = sub_258018F98();
    v27 = v26;
  }

  else
  {
    v27 = 0xE300000000000000;
    v25 = 7104878;
  }

  MEMORY[0x259C76670](v25, v27);

  MEMORY[0x259C76670](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

uint64_t sub_2580187EC()
{
  sub_25804A3B0();
  MEMORY[0x259C76670](0xD00000000000001CLL, 0x8000000258050C30);
  swift_getKeyPath();
  sub_258019AA8(&qword_27F9152E0, type metadata accessor for ExtensionRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F9152D8, type metadata accessor for ExtensionRecord);
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](0x44496D616574202CLL, 0xEA0000000000203ALL);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE6B4(&qword_27F915520, &qword_27F915528, &qword_25804BFA0);
  sub_258049F00();

  if (v14)
  {
    v1 = v0;
  }

  else
  {
    v1 = 7104878;
  }

  if (v14)
  {
    v2 = v14;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  MEMORY[0x259C76670](v1, v2);

  MEMORY[0x259C76670](0x6E6F73726570202CLL, 0xED0000203A444961);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (v14)
  {
    v3 = v0;
  }

  else
  {
    v3 = 7104878;
  }

  if (v14)
  {
    v4 = v14;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  MEMORY[0x259C76670](v3, v4);

  MEMORY[0x259C76670](0xD000000000000017, 0x8000000258050B20);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v5 = type metadata accessor for DataRecord(0);
  sub_257FDAD00();
  sub_258049EF0();

  v6 = MEMORY[0x259C766F0](v0, v5);
  v8 = v7;

  MEMORY[0x259C76670](v6, v8);

  MEMORY[0x259C76670](0xD000000000000015, 0x8000000258050C50);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v9 = type metadata accessor for CredentialRecord(0);
  sub_257FDAE04();
  sub_258049EF0();

  v10 = MEMORY[0x259C766F0](v0, v9);
  v12 = v11;

  MEMORY[0x259C76670](v10, v12);

  MEMORY[0x259C76670](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_258018CD4()
{
  sub_25804A3B0();
  MEMORY[0x259C76670](0xD00000000000002DLL, 0x8000000258050C70);
  swift_getKeyPath();
  sub_258019AA8(&qword_27F915518, type metadata accessor for ExtensionCodeIdentityRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord);
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](0x44496D616574202CLL, 0xEA0000000000203ALL);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](0x203A68746170202CLL, 0xE800000000000000);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](125, 0xE100000000000000);
  return 0;
}

unint64_t sub_258018F98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915268, &qword_25804F1E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  sub_25804A3B0();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915270, type metadata accessor for DataAssetRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915278, type metadata accessor for DataAssetRecord);
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](0x3A65756C6176202CLL, 0xE900000000000020);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEC568();
  sub_258049F00();

  v3 = sub_25804A120();
  MEMORY[0x259C76670](v3);

  return 0xD00000000000001FLL;
}

uint64_t sub_25801921C()
{
  sub_25804A3B0();
  MEMORY[0x259C76670](0xD000000000000021, 0x8000000258050CA0);
  swift_getKeyPath();
  sub_258019AA8(&qword_27F9152F0, type metadata accessor for CredentialRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F9152C0, type metadata accessor for CredentialRecord);
  sub_258049F00();

  sub_257FF644C();
  sub_25804A460();
  MEMORY[0x259C76670](0xD000000000000011, 0x80000002580505C0);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](0xD000000000000011, 0x8000000258050CD0);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](0x6552746573736120, 0xEE00203A64726F63);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915258, type metadata accessor for CredentialAssetRecord);
  v1 = sub_258049EE0();

  if (v1)
  {
    v2 = sub_2580195E4();
    v4 = v3;
  }

  else
  {
    v4 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x259C76670](v2, v4);

  MEMORY[0x259C76670](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_2580195E4()
{
  sub_25804A3B0();
  MEMORY[0x259C76670](0xD00000000000002DLL, 0x8000000258050CF0);
  swift_getKeyPath();
  sub_258019AA8(&qword_27F915250, type metadata accessor for CredentialAssetRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258019AA8(&qword_27F915258, type metadata accessor for CredentialAssetRecord);
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](2108192, 0xE300000000000000);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  MEMORY[0x259C76670](v0);

  MEMORY[0x259C76670](0x65756C6176202C29, 0xEA0000000000203ALL);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258019B00();
  sub_258049F00();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A48, &qword_25804E0E8);
  v1 = sub_25804A120();
  MEMORY[0x259C76670](v1);

  return 0;
}

uint64_t sub_25801994C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = sub_25804A170();
  if (v5)
  {
    v4 = 15;
  }

  if (4 * v3 < v4 >> 14)
  {
    goto LABEL_12;
  }

  return MEMORY[0x2821FBFB0]();
}

uint64_t sub_258019AA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_258019B00()
{
  result = qword_27F915A50;
  if (!qword_27F915A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915A48, &qword_25804E0E8);
    sub_257FF7854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915A50);
  }

  return result;
}

_OWORD *sub_258019BBC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_258019BEC(char a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 8))(a2, a3);
  v4 = v3;
  if (v3 >> 62)
  {
LABEL_35:
    v5 = sub_25804A480();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x259C768B0](v6, v4);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_35;
          }

          v7 = *(v4 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_31;
          }
        }

        swift_getKeyPath();
        sub_25801A70C(&qword_27F9152E8, type metadata accessor for DataRecord);
        sub_258049A90();

        swift_getKeyPath();
        sub_25801A70C(&qword_27F9152A8, type metadata accessor for DataRecord);
        sub_258049F00();

        v9 = sub_25804A4C0();

        if (v9 == 2)
        {
          v10 = 0x704179636167656CLL;
          v11 = 0xEF6769666E6F4370;
        }

        else
        {
          if (v9 == 1)
          {
            v10 = 0x65446769666E6F63;
          }

          else
          {
            v10 = 0x6E776F6E6B6E75;
          }

          if (v9 == 1)
          {
            v11 = 0xED0000736C696174;
          }

          else
          {
            v11 = 0xE700000000000000;
          }
        }

        if (a1)
        {
          if (a1 == 1)
          {
            v12 = 0x65446769666E6F63;
          }

          else
          {
            v12 = 0x704179636167656CLL;
          }

          if (a1 == 1)
          {
            v13 = 0xED0000736C696174;
          }

          else
          {
            v13 = 0xEF6769666E6F4370;
          }

          if (v10 != v12)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v13 = 0xE700000000000000;
          if (v10 != 0x6E776F6E6B6E75)
          {
            goto LABEL_26;
          }
        }

        if (v11 == v13)
        {
          goto LABEL_32;
        }

LABEL_26:
        v14 = sub_25804A560();

        if (v14)
        {

          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_258019F30(char a1, uint64_t a2, uint64_t a3)
{
  LOBYTE(v3) = a1;
  v4 = (*(a3 + 8))(a2, a3);
  v5 = v4;
  v22 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
LABEL_42:
    v6 = sub_25804A480();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v8 = v3;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          MEMORY[0x259C768B0](v7, v5);
          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_39:
            __break(1u);
LABEL_40:
            v20 = v22;
            goto LABEL_44;
          }
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_42;
          }

          v9 = *(v5 + 8 * v7 + 32);

          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_39;
          }
        }

        swift_getKeyPath();
        sub_25801A70C(&qword_27F9152F0, type metadata accessor for CredentialRecord);
        sub_258049A90();

        swift_getKeyPath();
        sub_25801A70C(&qword_27F9152C0, type metadata accessor for CredentialRecord);
        sub_258049F00();

        v11 = sub_25804A4C0();

        if (v11 == 3)
        {
          v14 = 0xE800000000000000;
          v13 = 0x797469746E656469;
          v12 = 0x64726F7773736170;
        }

        else
        {
          v12 = 0x64726F7773736170;
          if (v11 == 2)
          {
            v13 = 0x6369666974726563;
            v14 = 0xEB00000000657461;
          }

          else
          {
            if (v11 == 1)
            {
              v13 = 0x64726F7773736170;
            }

            else
            {
              v13 = 0x6E776F6E6B6E75;
            }

            if (v11 == 1)
            {
              v14 = 0xE800000000000000;
            }

            else
            {
              v14 = 0xE700000000000000;
            }
          }
        }

        v15 = 0x797469746E656469;
        if (v8 == 2)
        {
          v15 = 0x6369666974726563;
        }

        v16 = 0xEB00000000657461;
        if (v8 != 2)
        {
          v16 = 0xE800000000000000;
        }

        if (v8)
        {
          v17 = 0xE800000000000000;
        }

        else
        {
          v12 = 0x6E776F6E6B6E75;
          v17 = 0xE700000000000000;
        }

        if (v8 <= 1)
        {
          v18 = v12;
        }

        else
        {
          v18 = v15;
        }

        if (v8 <= 1)
        {
          v3 = v17;
        }

        else
        {
          v3 = v16;
        }

        if (v13 == v18 && v14 == v3)
        {
        }

        else
        {
          v19 = sub_25804A560();

          if ((v19 & 1) == 0)
          {

            goto LABEL_6;
          }
        }

        sub_25804A410();
        v3 = *(v22 + 16);
        sub_25804A440();
        sub_25804A450();
        sub_25804A420();
LABEL_6:
        ++v7;
        if (v10 == v6)
        {
          goto LABEL_40;
        }
      }
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_44:

  return v20;
}

uint64_t sub_25801A2C4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LOBYTE(v5) = a1;
  v6 = (*(a5 + 8))(a4, a5);
  v7 = v6;
  if (v6 >> 62)
  {
LABEL_44:
    v8 = sub_25804A480();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v26 = v7 & 0xFFFFFFFFFFFFFF8;
      v27 = v7 & 0xC000000000000001;
      v24 = v5;
      v25 = v7;
      do
      {
        if (v27)
        {
          v5 = MEMORY[0x259C768B0](v9, v7);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_40:
            __break(1u);
LABEL_41:

            return v5;
          }
        }

        else
        {
          if (v9 >= *(v26 + 16))
          {
            __break(1u);
            goto LABEL_44;
          }

          v5 = *(v7 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_40;
          }
        }

        swift_getKeyPath();
        sub_25801A70C(&qword_27F9152F0, type metadata accessor for CredentialRecord);
        sub_258049A90();

        swift_getKeyPath();
        sub_25801A70C(&qword_27F9152C0, type metadata accessor for CredentialRecord);
        sub_258049F00();

        v12 = sub_25804A4C0();

        if (v12 == 3)
        {
          v16 = 0xE800000000000000;
          v15 = 0x797469746E656469;
          v13 = 0x6E776F6E6B6E75;
          v14 = 0xE700000000000000;
        }

        else
        {
          v13 = 0x6E776F6E6B6E75;
          v14 = 0xE700000000000000;
          if (v12 == 2)
          {
            v15 = 0x6369666974726563;
            v16 = 0xEB00000000657461;
          }

          else
          {
            if (v12 == 1)
            {
              v15 = 0x64726F7773736170;
            }

            else
            {
              v15 = 0x6E776F6E6B6E75;
            }

            if (v12 == 1)
            {
              v16 = 0xE800000000000000;
            }

            else
            {
              v16 = 0xE700000000000000;
            }
          }
        }

        v17 = 0x797469746E656469;
        if (v24 == 2)
        {
          v17 = 0x6369666974726563;
        }

        v18 = 0xEB00000000657461;
        if (v24 != 2)
        {
          v18 = 0xE800000000000000;
        }

        if (v24)
        {
          v13 = 0x64726F7773736170;
          v14 = 0xE800000000000000;
        }

        if (v24 <= 1)
        {
          v19 = v13;
        }

        else
        {
          v19 = v17;
        }

        if (v24 <= 1)
        {
          v20 = v14;
        }

        else
        {
          v20 = v18;
        }

        v21 = v8;
        if (v15 == v19 && v16 == v20)
        {

          v7 = v25;
        }

        else
        {
          v22 = sub_25804A560();

          v7 = v25;
          if ((v22 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        swift_getKeyPath();
        sub_258049A90();

        swift_getKeyPath();
        sub_258049F00();

        if (v5 == a2 && v30 == a3)
        {
          goto LABEL_41;
        }

        v10 = sub_25804A560();

        if (v10)
        {

          return v5;
        }

LABEL_5:

        ++v9;
        v8 = v21;
      }

      while (v11 != v21);
    }
  }

  return 0;
}

uint64_t sub_25801A70C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25801A75C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      sub_25804A3B0();

      v7 = 0xD000000000000021;
    }

    else
    {
      sub_25804A3B0();

      v7 = 0xD000000000000020;
    }

    swift_getErrorValue();
    goto LABEL_11;
  }

  if (a3 == 2)
  {
    sub_25804A3B0();

    v7 = 0xD000000000000020;
    swift_getErrorValue();
LABEL_11:
    v5 = sub_25804A5B0();
    MEMORY[0x259C76670](v5);

    return v7;
  }

  if (a3 != 3)
  {
    sub_25804A3B0();

    v7 = 0xD000000000000029;
    swift_getErrorValue();
    goto LABEL_11;
  }

  sub_25804A3B0();

  v7 = 0xD000000000000014;
  MEMORY[0x259C76670](a1, a2);
  return v7;
}

unint64_t sub_25801A998(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AD8, &qword_25804EC50);
    v2 = sub_25804A4B0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        swift_unknownObjectRetain();
        swift_dynamicCast();
        sub_258019BBC(&v25, v27);
        sub_258019BBC(v27, v28);
        sub_258019BBC(v28, &v26);
        result = sub_2580337E4(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_258019BBC(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_258019BBC(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25801AC40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_25801AC88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

unint64_t sub_25801ACE8()
{
  result = qword_27F915AC0;
  if (!qword_27F915AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915AC0);
  }

  return result;
}

void sub_25801AD3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v61 = *MEMORY[0x277D85DE8];
  v7 = sub_258049A20();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1;
  v13 = a2;
  v14 = sub_25804A100();
  v15 = sub_25804A100();
  v16 = _CFPreferencesCopyPathForManagedDomain();

  if (!v16)
  {
    v55 = v4;
    goto LABEL_5;
  }

  sub_25804A110();

  sub_2580499D0();

  v17 = sub_258049A30();
  if (v4)
  {

    (*(v8 + 8))(v11, v7);
    v55 = 0;
LABEL_5:
    v19 = v13;
    v20 = sub_258036B88(MEMORY[0x277D84F90]);
    goto LABEL_6;
  }

  v30 = v17;
  v31 = v18;
  v55 = 0;
  (*(v8 + 8))(v11, v7);
  v32 = objc_opt_self();
  v33 = sub_258049A40();
  *&v58[0] = 0;
  v34 = [v32 propertyListWithData:v33 options:1 format:0 error:v58];

  v35 = *&v58[0];
  if (!v34)
  {
    v51 = v35;
    v52 = sub_2580499B0();

    v55 = v52;
    swift_willThrow();
    sub_257FDAAB4(v30, v31);
    goto LABEL_26;
  }

  sub_25804A350();
  sub_257FDAAB4(v30, v31);
  swift_unknownObjectRelease();
  sub_258019BBC(&v59, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AB8, &qword_25804EC40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v20 = v56;
  v19 = v13;
LABEL_6:
  v22 = v53;
  v21 = v54;
  v57 = v20;
  if (v54 >> 60 == 15)
  {
    if (!*(v20 + 16))
    {

      goto LABEL_26;
    }

    goto LABEL_18;
  }

  v23 = v20;
  v24 = objc_opt_self();
  sub_257FECD7C(v22, v21);
  v25 = sub_258049A40();
  *&v58[0] = 0;
  v26 = [v24 propertyListWithData:v25 options:1 format:0 error:v58];

  v27 = *&v58[0];
  if (!v26)
  {
    v36 = v27;
    v37 = sub_2580499B0();

    v55 = v37;
    swift_willThrow();
    sub_257FDAAA0(v22, v21);

    goto LABEL_26;
  }

  sub_25804A350();
  swift_unknownObjectRelease();
  sub_25801BC58(&v59, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AD0, &qword_25804EC48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v59);
    sub_257FDAAA0(v22, v21);
    goto LABEL_18;
  }

  v28 = sub_25801A998(v56);
  sub_257FDAAA0(v22, v21);

  __swift_destroy_boxed_opaque_existential_1(&v59);
  if (!v28)
  {
LABEL_18:
    sub_25803385C(0xD00000000000001FLL, 0x8000000258050EA0, v58);
    sub_25801BBF0(v58);
    goto LABEL_19;
  }

  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AB8, &qword_25804EC40);
  *&v59 = v28;
  sub_258019BBC(&v59, v58);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = v23;
  sub_2580351E4(v58, 0xD00000000000001FLL, 0x8000000258050EA0, isUniquelyReferenced_nonNull_native);
  v57 = v56;
LABEL_19:
  v38 = sub_25804A0D0();
  v39 = sub_25804A100();
  v40 = sub_25804A100();
  v41 = _CFPreferencesWriteManagedDomain();

  if (!v41)
  {
    if (qword_27F915170 != -1)
    {
      swift_once();
    }

    v42 = sub_258049D30();
    __swift_project_value_buffer(v42, qword_27F919E00);
    v43 = sub_258049D10();
    v44 = sub_25804A2D0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v59 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_258032C5C(0xD000000000000017, 0x8000000258050EC0, &v59);
      _os_log_impl(&dword_257FD4000, v43, v44, "%s - failed to write managed preferences", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x259C77210](v46, -1, -1);
      MEMORY[0x259C77210](v45, -1, -1);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A78, &unk_25804E110);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_25804B660;
  *(v47 + 32) = v12;
  *(v47 + 40) = v19;

  v48 = sub_25804A1E0();
  _CFPreferencesManagementStatusChangedForDomains();

  v49 = sub_25804A1E0();

  _CFPreferencesPostValuesChangedInDomains();

LABEL_26:
  v50 = *MEMORY[0x277D85DE8];
}

void sub_25801B440(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_27F915170 != -1)
  {
    swift_once();
  }

  v9 = sub_258049D30();
  __swift_project_value_buffer(v9, qword_27F919E00);

  v10 = sub_258049D10();
  v11 = sub_25804A2C0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_258032C5C(0xD000000000000019, 0x8000000258050F30, v14);
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_258032C5C(a1, a2, v14);
    _os_log_impl(&dword_257FD4000, v10, v11, "%s - for: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v13, -1, -1);
    MEMORY[0x259C77210](v12, -1, -1);
  }

  sub_25801AD3C(a1, a2, a3, a4);
  if (v4)
  {
    v14[0] = v4;
    v14[1] = 0;
    v15 = 0;
    sub_25801ACE8();
    swift_willThrowTypedImpl();
  }
}

void sub_25801B634(uint64_t a1, unint64_t a2)
{
  if (qword_27F915170 != -1)
  {
    swift_once();
  }

  v5 = sub_258049D30();
  __swift_project_value_buffer(v5, qword_27F919E00);

  v6 = sub_258049D10();
  v7 = sub_25804A2C0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_258032C5C(0xD000000000000015, 0x8000000258050E80, v10);
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_258032C5C(a1, a2, v10);
    _os_log_impl(&dword_257FD4000, v6, v7, "%s - for: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v9, -1, -1);
    MEMORY[0x259C77210](v8, -1, -1);
  }

  sub_25801AD3C(a1, a2, 0, 0xF000000000000000);
  if (v2)
  {
    v10[0] = v2;
    v10[1] = 0;
    v11 = 1;
    sub_25801ACE8();
    swift_willThrowTypedImpl();
  }
}

unint64_t sub_25801B81C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = (a1 + *(type metadata accessor for AppRecordLookalike(0) + 32));
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
    if (a3 >> 60 == 15)
    {
      sub_25801B634(v9, v8);
      if (v3)
      {
        return v10;
      }
    }

    else
    {
      sub_257FECD7C(a2, a3);
      sub_25801B440(v9, v8, a2, a3);
      if (v3)
      {
        v4 = v16;
      }

      else
      {
        v4 = 0;
      }

      sub_257FDAAA0(a2, a3);
    }
  }

  else
  {
    if (qword_27F915170 != -1)
    {
      swift_once();
    }

    v4 = 0xD000000000000010;
    v11 = sub_258049D30();
    __swift_project_value_buffer(v11, qword_27F919E00);
    v12 = sub_258049D10();
    v13 = sub_25804A2D0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_258032C5C(0xD000000000000023, 0x8000000258050F00, v18);
      _os_log_impl(&dword_257FD4000, v12, v13, "%s - app record is missing bundleID", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x259C77210](v15, -1, -1);
      MEMORY[0x259C77210](v14, -1, -1);
    }

    v18[0] = 0xD000000000000010;
    v18[1] = 0x8000000258050EE0;
    v19 = 3;
    sub_25801ACE8();
    swift_willThrowTypedImpl();
  }

  return v4;
}

void sub_25801BA64(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AppRecordLookalike(0) + 32));
  v2 = v1[1];
  if (v2)
  {
    sub_25801B634(*v1, v2);
  }

  else
  {
    if (qword_27F915170 != -1)
    {
      swift_once();
    }

    v3 = sub_258049D30();
    __swift_project_value_buffer(v3, qword_27F919E00);
    v4 = sub_258049D10();
    v5 = sub_25804A2C0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_258032C5C(0x704165766F6D6572, 0xEF293A7070612870, &v8);
      _os_log_impl(&dword_257FD4000, v4, v5, "%s - app record has no bundleID", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x259C77210](v7, -1, -1);
      MEMORY[0x259C77210](v6, -1, -1);
    }
  }
}

uint64_t sub_25801BBF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AC8, &unk_25804EC30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25801BC58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25801BD08()
{
  v0 = sub_258049D30();
  __swift_allocate_value_buffer(v0, qword_27F919E00);
  __swift_project_value_buffer(v0, qword_27F919E00);
  return sub_258049D20();
}

uint64_t sub_25801BD88()
{
  v0 = sub_258049D30();
  __swift_allocate_value_buffer(v0, qword_27F919E18);
  __swift_project_value_buffer(v0, qword_27F919E18);
  return sub_258049D20();
}

uint64_t sub_25801BE08()
{
  v0 = sub_258049D30();
  __swift_allocate_value_buffer(v0, qword_27F919E30);
  __swift_project_value_buffer(v0, qword_27F919E30);
  return sub_258049D20();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_25801BF18(uint64_t a1, uint64_t *a2)
{
  v3 = sub_258049D30();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_258049D20();
}

uint64_t sub_25801BF90(char a1)
{
  v2 = off_2869384B8(*v1, &off_2869384B0);
  v3 = v2;
  if (v2 >> 62)
  {
LABEL_35:
    v4 = sub_25804A480();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x259C768B0](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:

            return v6;
          }
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_35;
          }

          v6 = *(v3 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_31;
          }
        }

        swift_getKeyPath();
        sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord);
        sub_258049A90();

        swift_getKeyPath();
        sub_258037F14(&qword_27F9152A8, type metadata accessor for DataRecord);
        sub_258049F00();

        v8 = sub_25804A4C0();

        if (v8 == 1)
        {
          v9 = 0x65446769666E6F63;
          v10 = 0xED0000736C696174;
        }

        else
        {
          if (v8 == 2)
          {
            v9 = 0x704179636167656CLL;
          }

          else
          {
            v9 = 0x6E776F6E6B6E75;
          }

          if (v8 == 2)
          {
            v10 = 0xEF6769666E6F4370;
          }

          else
          {
            v10 = 0xE700000000000000;
          }
        }

        if (a1)
        {
          if (a1 == 1)
          {
            v11 = 0x65446769666E6F63;
          }

          else
          {
            v11 = 0x704179636167656CLL;
          }

          if (a1 == 1)
          {
            v12 = 0xED0000736C696174;
          }

          else
          {
            v12 = 0xEF6769666E6F4370;
          }

          if (v9 != v11)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v12 = 0xE700000000000000;
          if (v9 != 0x6E776F6E6B6E75)
          {
            goto LABEL_26;
          }
        }

        if (v10 == v12)
        {
          goto LABEL_32;
        }

LABEL_26:
        v13 = sub_25804A560();

        if (v13)
        {

          return v6;
        }

        ++v5;
      }

      while (v7 != v4);
    }
  }

  return 0;
}

uint64_t sub_25801C304(char a1)
{
  v2 = off_2869384A8(*v1, &off_2869384A0);
  v3 = v2;
  if (v2 >> 62)
  {
LABEL_35:
    v4 = sub_25804A480();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x259C768B0](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:

            return v6;
          }
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_35;
          }

          v6 = *(v3 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_31;
          }
        }

        swift_getKeyPath();
        sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord);
        sub_258049A90();

        swift_getKeyPath();
        sub_258037F14(&qword_27F9152A8, type metadata accessor for DataRecord);
        sub_258049F00();

        v8 = sub_25804A4C0();

        if (v8 == 1)
        {
          v9 = 0x65446769666E6F63;
          v10 = 0xED0000736C696174;
        }

        else
        {
          if (v8 == 2)
          {
            v9 = 0x704179636167656CLL;
          }

          else
          {
            v9 = 0x6E776F6E6B6E75;
          }

          if (v8 == 2)
          {
            v10 = 0xEF6769666E6F4370;
          }

          else
          {
            v10 = 0xE700000000000000;
          }
        }

        if (a1)
        {
          if (a1 == 1)
          {
            v11 = 0x65446769666E6F63;
          }

          else
          {
            v11 = 0x704179636167656CLL;
          }

          if (a1 == 1)
          {
            v12 = 0xED0000736C696174;
          }

          else
          {
            v12 = 0xEF6769666E6F4370;
          }

          if (v9 != v11)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v12 = 0xE700000000000000;
          if (v9 != 0x6E776F6E6B6E75)
          {
            goto LABEL_26;
          }
        }

        if (v10 == v12)
        {
          goto LABEL_32;
        }

LABEL_26:
        v13 = sub_25804A560();

        if (v13)
        {

          return v6;
        }

        ++v5;
      }

      while (v7 != v4);
    }
  }

  return 0;
}

uint64_t sub_25801C678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_258034ED8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_2580337E4(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_258035608();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_2580349BC(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_25801C770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_257FDAA0C(a1, v16);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    v8 = v17;
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    v10 = *(*(v8 - 8) + 64);
    MEMORY[0x28223BE20](v9);
    v12 = (&v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    sub_258036524(*v12, a2, a3, isUniquelyReferenced_nonNull_native, &v15);

    result = __swift_destroy_boxed_opaque_existential_1(v16);
    *v3 = v15;
  }

  else
  {
    sub_257FDAB84(a1, &qword_27F915B60, &qword_25804F150);
    sub_258033900(a2, a3, v16);

    return sub_257FDAB84(v16, &qword_27F915B60, &qword_25804F150);
  }

  return result;
}

uint64_t sub_25801C8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_258035348(a1, a2, a3, isUniquelyReferenced_nonNull_native, &qword_27F915B20, &qword_25804F108);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_2580337E4(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_258035DA4(&qword_27F915B20, &qword_25804F108);
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_2580349BC(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_25801CAC0(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  type metadata accessor for AppConfigDatabaseImpl();
  sub_258037F14(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl);
  sub_258049D70();
  a2(0);
  sub_258037F14(a3, a4);
  v8 = sub_258049DE0();
  if (v4)
  {

    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v9 = sub_258049D30();
    __swift_project_value_buffer(v9, qword_27F919DE8);
    v10 = v4;
    v11 = sub_258049D10();
    v12 = sub_25804A2D0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136446210;
      v15 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
      v16 = sub_25804A120();
      v18 = sub_258032C5C(v16, v17, &v20);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_257FD4000, v11, v12, "AppConfigDatabase - fetch failed with error: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x259C77210](v14, -1, -1);
      MEMORY[0x259C77210](v13, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
  }

  return v8;
}

uint64_t sub_25801CF2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258037F14(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for ExtensionRecord(0);
  sub_258037F14(&qword_27F915290, type metadata accessor for AppRecord);
  sub_257FDAEC0();
  sub_258049EF0();

  *a2 = v4;
  return result;
}

uint64_t sub_25801D04C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_258037F14(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A80();
}

uint64_t sub_25801D118@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258037F14(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258037F14(&qword_27F915290, type metadata accessor for AppRecord);
  sub_258049F00();

  *a2 = v5;
  return result;
}

uint64_t sub_25801D224(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_258037F14(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A80();
}

double sub_25801D2F4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_258037F14(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258037F14(&qword_27F915290, type metadata accessor for AppRecord);
  sub_257FEE6B4(&qword_27F915520, &qword_27F915528, &qword_25804BFA0);
  sub_258049F00();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_25801D424(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_258037F14(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A80();
}

uint64_t sub_25801D4FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258037F14(&qword_27F9152E0, type metadata accessor for ExtensionRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258037F14(&qword_27F9152D8, type metadata accessor for ExtensionRecord);
  sub_258049F00();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_25801D608(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_258037F14(&qword_27F9152E0, type metadata accessor for ExtensionRecord);
  sub_258049A80();
}

uint64_t sub_25801D6E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258037F14(&qword_27F9152A8, type metadata accessor for DataRecord);
  sub_258049F00();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_25801D7EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord);
  sub_258049A80();
}

uint64_t sub_25801D8C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258037F14(&qword_27F9152A8, type metadata accessor for DataRecord);
  sub_257FEE6B4(&qword_27F915600, &qword_27F915608, &qword_25804BDB0);
  sub_258049F00();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_25801D9FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord);
  sub_258049A80();
}

uint64_t ManagedAppsServer.__allocating_init(scope:inMemoryDatabase:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  ManagedAppsServer.init(scope:inMemoryDatabase:)(a1, a2);
  return v4;
}

uint64_t ManagedAppsServer.init(scope:inMemoryDatabase:)(uint64_t a1, char a2)
{
  type metadata accessor for SecKeyProxyCache();
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  v6 = MEMORY[0x277D84F90];
  *(v5 + 112) = sub_258036FA4(MEMORY[0x277D84F90], &qword_27F915B20, &qword_25804F108);
  *(v5 + 120) = 0;
  *(v2 + 80) = v5;
  *(v2 + 88) = sub_258036CB8(v6);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_25801DBC4()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915220, &qword_25804EC90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19[-v5];
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v7 = sub_258049D30();
  __swift_project_value_buffer(v7, qword_27F919E48);
  v8 = sub_258049D10();
  v9 = sub_25804A2E0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_257FD4000, v8, v9, "MADaemonServer - startServer", v10, 2u);
    MEMORY[0x259C77210](v10, -1, -1);
  }

  result = sub_25801E064();
  if (!v1)
  {
    v12 = *(v2 + 16);
    if (*(v2 + 24) == 1)
    {
      v13 = sub_258049A20();
      (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    }

    else
    {
      v14 = *(v2 + 16);
      sub_258049B10();
      v15 = sub_258049A20();
      (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
    }

    v16 = sub_257FEB5A8(v12, v6, 0);
    v20[3] = type metadata accessor for AppConfigDatabaseImpl();
    v20[4] = &off_286937E20;
    v20[0] = v16;
    swift_beginAccess();
    sub_258036DEC(v20, v2 + 32);
    swift_endAccess();
    type metadata accessor for LegacyAppConfigController();
    v17 = swift_allocObject();
    *(v17 + 16) = v12;
    v18 = *(v2 + 72);
    *(v2 + 72) = v17;

    return sub_25801DE38();
  }

  return result;
}

uint64_t sub_25801DE38()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v6 = sub_258049D30();
  __swift_project_value_buffer(v6, qword_27F919E48);
  v7 = sub_258049D10();
  v8 = sub_25804A2E0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_258032C5C(0xD000000000000014, 0x8000000258051310, &v15);
    _os_log_impl(&dword_257FD4000, v7, v8, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x259C77210](v10, -1, -1);
    MEMORY[0x259C77210](v9, -1, -1);
  }

  sub_25804A240();
  v11 = sub_25804A270();
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;

  sub_258038E50(0, 0, v5, &unk_25804F3B8, v12);
}

uint64_t sub_25801E064()
{
  v1 = v0;
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = sub_258049A20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 24) & 1) == 0)
  {
    v8 = *(v1 + 16);
    sub_258049B10();
    v9 = objc_opt_self();
    v10 = [v9 defaultManager];
    sub_258049A00();
    v11 = sub_25804A100();

    v12 = [v10 fileExistsAtPath_];

    if ((v12 & 1) == 0)
    {
      v13 = [v9 defaultManager];
      v14 = sub_2580499E0();
      v20[0] = 0;
      v15 = [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:v20];

      if (!v15)
      {
        v18 = v20[0];
        sub_2580499B0();

        swift_willThrow();
        goto LABEL_7;
      }

      v16 = v20[0];
    }

    sub_258049A00();
    v17 = sub_25804A100();

    DMCSetSkipBackupAttributeToItemAtPath();

LABEL_7:
    result = (*(v3 + 8))(v7, v2);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25801E298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915220, &qword_25804EC90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  swift_beginAccess();
  v13 = *(v3 + 88);
  if (*(v13 + 16))
  {

    v14 = sub_2580337E4(a1, a2);
    if (v15)
    {
      sub_257FDA854(*(v13 + 56) + 40 * v14, &v28);

      return sub_257FDAA0C(&v28, a3);
    }
  }

  swift_beginAccess();
  result = sub_257FDA958(v5 + 32, v27, &qword_27F915AE0, &qword_25804EC98);
  if (!v27[3])
  {
    goto LABEL_13;
  }

  v17 = *(v5 + 16);
  v18 = sub_258049A20();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = type metadata accessor for AppAssetResolverImpl();
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  result = sub_257FD5578(v27, v17, v12, v25);
  if (v4)
  {
    return result;
  }

  v29 = v19;
  v30 = &off_286937DB0;
  *&v28 = result;
  swift_beginAccess();

  sub_25801C770(&v28, a1, a2);
  result = swift_endAccess();
  v22 = *(v5 + 88);
  if (!*(v22 + 16))
  {
    __break(1u);
    goto LABEL_12;
  }

  v23 = *(v5 + 88);

  result = sub_2580337E4(a1, a2);
  if ((v24 & 1) == 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  sub_257FDA854(*(v22 + 56) + 40 * result, a3);
}

uint64_t sub_25801E500(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = sub_258049D00();
  v3[18] = v4;
  v5 = *(v4 - 8);
  v3[19] = v5;
  v6 = *(v5 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v7 = type metadata accessor for ExtensionRecordLookalike(0);
  v3[22] = v7;
  v8 = *(v7 - 8);
  v3[23] = v8;
  v9 = *(v8 + 64) + 15;
  v3[24] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B78, &qword_25804F3A8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v11 = type metadata accessor for AppRecordLookalike(0);
  v3[27] = v11;
  v12 = *(v11 - 8);
  v3[28] = v12;
  v13 = *(v12 + 64) + 15;
  v3[29] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25801E710, 0, 0);
}

uint64_t sub_25801E710()
{
  v1 = v0[17];
  swift_beginAccess();
  result = sub_257FDA958(v1 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v3 = v0[5];
  if (v3)
  {
    v4 = v0[16];
    v5 = __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
    v6 = sub_258049CD0();
    v0[32] = v6;
    v7 = *v5;
    v8 = swift_task_alloc();
    v0[33] = v8;
    *v8 = v0;
    v8[1] = sub_25801E810;
    v9 = v0[31];

    return sub_257FE1B48(v9, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25801E810()
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 256);
  v6 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = sub_25801EC30;
  }

  else
  {
    v4 = sub_25801E93C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25801E93C()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[27];
  v4 = v0[28];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_257FDA958(v2, v1, &qword_27F915280, &qword_25804ED30);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[30];
  if (v5 == 1)
  {
    v7 = v0[17];
    sub_257FDAB84(v6, &qword_27F915280, &qword_25804ED30);
    result = sub_257FDA958(v7 + 32, (v0 + 7), &qword_27F915AE0, &qword_25804EC98);
    v9 = v0[10];
    if (v9)
    {
      v10 = v0[16];
      v11 = __swift_project_boxed_opaque_existential_1(v0 + 7, v9);
      v12 = sub_258049CD0();
      v0[35] = v12;
      v13 = *v11;
      v14 = swift_task_alloc();
      v0[36] = v14;
      *v14 = v0;
      v14[1] = sub_25801ECFC;
      v15 = v0[26];

      return sub_257FE3464(v15, v12);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v16 = v0[29];
    v17 = v0[16];
    sub_258037D4C(v6, v16, type metadata accessor for AppRecordLookalike);
    if (sub_2580370D0(v16, v17))
    {
      sub_258037CE4(v0[29], v0[15], type metadata accessor for AppRecordLookalike);
      v18 = type metadata accessor for LookalikeType(0);
      swift_storeEnumTagMultiPayload();
      v19 = 0;
    }

    else
    {
      v18 = type metadata accessor for LookalikeType(0);
      v19 = 1;
    }

    v20 = v0[31];
    v21 = v0[29];
    (*(*(v18 - 8) + 56))(v0[15], v19, 1, v18);
    sub_258037DB4(v21, type metadata accessor for AppRecordLookalike);
    sub_257FDAB84(v20, &qword_27F915280, &qword_25804ED30);
    v23 = v0[30];
    v22 = v0[31];
    v24 = v0[29];
    v26 = v0[25];
    v25 = v0[26];
    v27 = v0[24];
    v29 = v0[20];
    v28 = v0[21];

    v30 = v0[1];

    return v30();
  }

  return result;
}

uint64_t sub_25801EC30()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[34];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  v9 = v0[20];
  v8 = v0[21];

  v10 = v0[1];

  return v10();
}

uint64_t sub_25801ECFC()
{
  v2 = *(*v1 + 288);
  v3 = *(*v1 + 280);
  v6 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = sub_25801F25C;
  }

  else
  {
    v4 = sub_25801EE28;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25801EE28()
{
  v51 = v0;
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[23];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_257FDA958(v2, v1, &qword_27F915B78, &qword_25804F3A8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[25];
  if (v5 == 1)
  {
    sub_257FDAB84(v6, &qword_27F915B78, &qword_25804F3A8);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v7 = v0[21];
    v8 = v0[18];
    v9 = v0[19];
    v10 = v0[16];
    v11 = sub_258049D30();
    __swift_project_value_buffer(v11, qword_27F919E48);
    v12 = *(v9 + 16);
    v12(v7, v10, v8);
    v13 = sub_258049D10();
    v14 = sub_25804A2E0();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[31];
    v17 = v0[26];
    v18 = v0[21];
    if (v15)
    {
      v49 = v0[26];
      v19 = v0[19];
      v20 = v0[20];
      v21 = v0[18];
      v48 = v0[31];
      v22 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v50 = v47;
      *v22 = 136446210;
      v12(v20, v18, v21);
      v23 = sub_25804A120();
      v24 = v14;
      v26 = v25;
      (*(v19 + 8))(v18, v21);
      v27 = sub_258032C5C(v23, v26, &v50);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_257FD4000, v13, v24, "App/extension record for client %{public}s does not exist", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x259C77210](v47, -1, -1);
      MEMORY[0x259C77210](v22, -1, -1);

      sub_257FDAB84(v49, &qword_27F915B78, &qword_25804F3A8);
      v28 = v48;
    }

    else
    {
      v35 = v0[18];
      v34 = v0[19];

      (*(v34 + 8))(v18, v35);
      sub_257FDAB84(v17, &qword_27F915B78, &qword_25804F3A8);
      v28 = v16;
    }

    sub_257FDAB84(v28, &qword_27F915280, &qword_25804ED30);
    v36 = v0[15];
    v37 = type metadata accessor for LookalikeType(0);
    (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
    v39 = v0[30];
    v38 = v0[31];
    v40 = v0[29];
    v42 = v0[25];
    v41 = v0[26];
    v43 = v0[24];
    v45 = v0[20];
    v44 = v0[21];

    v46 = v0[1];

    return v46();
  }

  else
  {
    sub_258037D4C(v6, v0[24], type metadata accessor for ExtensionRecordLookalike);
    v29 = swift_task_alloc();
    v0[38] = v29;
    *v29 = v0;
    v29[1] = sub_25801F340;
    v30 = v0[24];
    v31 = v0[15];
    v32 = v0[16];

    return sub_25801F684(v31, v30, v32);
  }
}

uint64_t sub_25801F25C()
{
  sub_257FDAB84(v0[31], &qword_27F915280, &qword_25804ED30);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[37];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  v9 = v0[20];
  v8 = v0[21];

  v10 = v0[1];

  return v10();
}

uint64_t sub_25801F340()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_25801F56C;
  }

  else
  {
    v3 = sub_25801F454;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25801F454()
{
  v1 = v0[31];
  v2 = v0[26];
  sub_258037DB4(v0[24], type metadata accessor for ExtensionRecordLookalike);
  sub_257FDAB84(v2, &qword_27F915B78, &qword_25804F3A8);
  sub_257FDAB84(v1, &qword_27F915280, &qword_25804ED30);
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];
  v10 = v0[20];
  v9 = v0[21];

  v11 = v0[1];

  return v11();
}

uint64_t sub_25801F56C()
{
  v1 = v0[31];
  v2 = v0[26];
  sub_258037DB4(v0[24], type metadata accessor for ExtensionRecordLookalike);
  sub_257FDAB84(v2, &qword_27F915B78, &qword_25804F3A8);
  sub_257FDAB84(v1, &qword_27F915280, &qword_25804ED30);
  v3 = v0[39];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[24];
  v11 = v0[20];
  v10 = v0[21];

  v12 = v0[1];

  return v12();
}

uint64_t sub_25801F684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for AppRecordLookalike(0);
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25801F780, 0, 0);
}

uint64_t sub_25801F780()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = type metadata accessor for ExtensionRecordLookalike(0);
  sub_257FDA958(v4 + *(v5 + 20), v3, &qword_27F915280, &qword_25804ED30);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_257FDAB84(v0[5], &qword_27F915280, &qword_25804ED30);
  }

  else
  {
    v6 = v0[8];
    v7 = v0[4];
    sub_258037D4C(v0[5], v6, type metadata accessor for AppRecordLookalike);
    LOBYTE(v7) = sub_2580370D0(v6, v7);
    sub_258037DB4(v6, type metadata accessor for AppRecordLookalike);
    if (v7)
    {
      sub_258037CE4(v0[3], v0[2], type metadata accessor for ExtensionRecordLookalike);
      v8 = type metadata accessor for LookalikeType(0);
      swift_storeEnumTagMultiPayload();
      v9 = 0;
      goto LABEL_6;
    }
  }

  v8 = type metadata accessor for LookalikeType(0);
  v9 = 1;
LABEL_6:
  v10 = v0[8];
  v11 = v0[5];
  (*(*(v8 - 8) + 56))(v0[2], v9, 1, v8);

  v12 = v0[1];

  return v12();
}

void *ManagedAppsServer.deinit()
{
  sub_257FDAB84((v0 + 4), &qword_27F915AE0, &qword_25804EC98);
  v1 = v0[9];

  v2 = v0[10];

  v3 = v0[11];

  return v0;
}

uint64_t ManagedAppsServer.__deallocating_deinit()
{
  sub_257FDAB84((v0 + 4), &qword_27F915AE0, &qword_25804EC98);
  v1 = v0[9];

  v2 = v0[10];

  v3 = v0[11];

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t ManagedAppsServer.getConfigDetailsData(clientIdentity:)(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AE8, &qword_25804ECA8) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v2[16] = v5;
  v6 = type metadata accessor for LookalikeType(0);
  v2[17] = v6;
  v7 = *(v6 - 8);
  v2[18] = v7;
  v8 = *(v7 + 64) + 15;
  v2[19] = swift_task_alloc();
  v9 = swift_task_alloc();
  v2[20] = v9;
  *v9 = v2;
  v9[1] = sub_25801FB28;

  return sub_25801E500(v5, a1);
}

uint64_t sub_25801FB28()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_25802071C;
  }

  else
  {
    v3 = sub_25801FC3C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25801FC3C()
{
  v1 = v0[16];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    sub_257FDAB84(v1, &qword_27F915AE8, &qword_25804ECA8);
    sub_258036E5C();
    swift_allocError();
    *v2 = xmmword_25804EC70;
    *(v2 + 16) = 16;
    swift_willThrow();
    v3 = v0[19];
    v4 = v0[16];

    v5 = v0[1];

    return v5();
  }

  else
  {
    sub_258037D4C(v1, v0[19], type metadata accessor for LookalikeType);
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = sub_25801FDC4;
    v8 = v0[19];
    v9 = v0[14];
    v10 = v0[15];

    return sub_258020948((v0 + 2), v8, v9);
  }
}

uint64_t sub_25801FDC4()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 176);
  v5 = *v1;
  *(v3 + 184) = v0;
  *(v3 + 192) = *(v3 + 16);
  *(v3 + 208) = *(v2 + 32);
  *(v3 + 216) = *(v3 + 40);
  *(v3 + 232) = *(v2 + 56);

  if (v0)
  {
    v6 = sub_25802078C;
  }

  else
  {
    v6 = sub_25801FF18;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25801FF18()
{
  v25 = v0;
  if (v0[25] >> 60 == 15)
  {
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v1 = sub_258049D30();
    v0[30] = __swift_project_value_buffer(v1, qword_27F919E48);
    v2 = sub_258049D10();
    v3 = sub_25804A2C0();
    if (os_log_type_enabled(v2, v3))
    {
      v5 = v0[26];
      v4 = v0[27];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v24 = v7;
      *v6 = 136446210;

      v8 = sub_258032C5C(v5, v4, &v24);

      *(v6 + 4) = v8;
      _os_log_impl(&dword_257FD4000, v2, v3, "Data asset record %{public}s hasn't been resolved yet", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x259C77210](v7, -1, -1);
      MEMORY[0x259C77210](v6, -1, -1);
    }

    v9 = v0[27];

    v10 = swift_task_alloc();
    v0[31] = v10;
    *v10 = v0;
    v10[1] = sub_258020198;
    v11 = v0[28];
    v12 = v0[29];
    v13 = v0[26];
    v14 = v0[27];
    v15 = v0[19];
    v16 = v0[15];

    return sub_258020D40(v15, v13, v14, v11, v12);
  }

  else
  {
    v18 = v0[29];

    v19 = v0[27];
    v21 = v0[24];
    v20 = v0[25];
    v22 = v0[16];
    sub_258037DB4(v0[19], type metadata accessor for LookalikeType);

    v23 = v0[1];

    return v23(v21, v20);
  }
}

uint64_t sub_258020198()
{
  v2 = *(*v1 + 248);
  v3 = *v1;
  v3[32] = v0;

  if (v0)
  {
    v4 = v3[29];
    v5 = v3[27];

    return MEMORY[0x2822009F8](sub_258020818, 0, 0);
  }

  else
  {
    v6 = v3[29];
    v7 = v3[27];

    v8 = swift_task_alloc();
    v3[33] = v8;
    *v8 = v3;
    v8[1] = sub_258020338;
    v9 = v3[19];
    v10 = v3[14];
    v11 = v3[15];

    return sub_258020948((v3 + 8), v9, v10);
  }
}

uint64_t sub_258020338()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 264);
  v5 = *v1;
  v3[34] = v0;
  *(v3 + 35) = *(v3 + 4);
  v3[37] = v2[10];
  v3[38] = v2[11];
  v6 = v2[13];

  if (v0)
  {
    v7 = sub_2580208B0;
  }

  else
  {

    v7 = sub_2580204AC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2580204AC()
{
  v26 = v0;
  v1 = v0[36];
  v2 = v0[27];

  if (v1 >> 60 == 15)
  {
    v3 = v0[38];
    v4 = v0[30];

    v5 = sub_258049D10();
    v6 = sub_25804A2D0();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[38];
    if (v7)
    {
      v9 = v0[37];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v25 = v11;
      *v10 = 136446210;
      v12 = sub_258032C5C(v9, v8, &v25);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_257FD4000, v5, v6, "Config data is still nil after resolving data asset record %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x259C77210](v11, -1, -1);
      MEMORY[0x259C77210](v10, -1, -1);
    }

    else
    {
    }

    v19 = v0[38];
    v20 = v0[19];
    sub_258036E5C();
    swift_allocError();
    *v21 = 0;
    *(v21 + 8) = 0;
    *(v21 + 16) = 16;
    swift_willThrow();
    sub_258037DB4(v20, type metadata accessor for LookalikeType);

    v22 = v0[19];
    v23 = v0[16];

    v24 = v0[1];

    return v24();
  }

  else
  {
    v13 = v0[38];
    v15 = v0[35];
    v14 = v0[36];
    v16 = v0[16];
    sub_258037DB4(v0[19], type metadata accessor for LookalikeType);

    v17 = v0[1];

    return v17(v15, v14);
  }
}

uint64_t sub_25802071C()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[16];

  v4 = v0[1];

  return v4();
}

uint64_t sub_25802078C()
{
  sub_258037DB4(v0[19], type metadata accessor for LookalikeType);
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[16];

  v4 = v0[1];

  return v4();
}

uint64_t sub_258020818()
{
  v1 = v0[27];
  sub_258037DB4(v0[19], type metadata accessor for LookalikeType);

  v2 = v0[32];
  v3 = v0[19];
  v4 = v0[16];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2580208B0()
{
  v1 = v0[27];
  sub_258037DB4(v0[19], type metadata accessor for LookalikeType);

  v2 = v0[34];
  v3 = v0[19];
  v4 = v0[16];

  v5 = v0[1];

  return v5();
}

uint64_t sub_258020948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  return MEMORY[0x2822009F8](sub_25802096C, 0, 0);
}

uint64_t sub_25802096C()
{
  *(v0 + 80) = xmmword_25804B2B0;
  *(v0 + 96) = 0;
  *(v0 + 112) = 0;
  v1 = *(v0 + 152);
  *(v0 + 104) = 0;
  *(v0 + 120) = 0;
  swift_beginAccess();
  result = sub_257FDA958(v1 + 32, v0 + 16, &qword_27F915AE0, &qword_25804EC98);
  v3 = *(v0 + 40);
  if (v3)
  {
    v4 = *(v0 + 144);
    v5 = __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
    v6 = swift_task_alloc();
    *(v0 + 160) = v6;
    v6[2] = v4;
    v6[3] = v0 + 96;
    v6[4] = v0 + 112;
    v6[5] = v0 + 80;
    v7 = *v5;
    v8 = swift_task_alloc();
    *(v0 + 168) = v8;
    *v8 = v0;
    v8[1] = sub_258020AC0;
    v9 = *(v0 + 136);

    return sub_257FDF778(v9, sub_258038088, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258020AC0()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v6 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_258020CC4;
  }

  else
  {
    v4 = sub_258020BF0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_258020BF0()
{
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[10];
  v3 = v0[12];
  v4 = v0[13];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v0[15];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = v0[11];
  v7 = v0[16];
  v8 = v0[14];
  sub_257FECD68(v0[10], v6);
  sub_257FDAAA0(v2, v6);
  *v7 = v2;
  v7[1] = v6;
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v8;
  v7[5] = v5;
  v9 = v0[1];

  return v9();
}

uint64_t sub_258020CC4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[15];

  v2 = v0[13];

  sub_257FDAAA0(v0[10], v0[11]);
  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t sub_258020D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = type metadata accessor for AppRecordLookalike(0);
  v6[17] = v7;
  v8 = *(v7 - 8);
  v6[18] = v8;
  v9 = *(v8 + 64) + 15;
  v6[19] = swift_task_alloc();
  v10 = type metadata accessor for ExtensionRecordLookalike(0);
  v6[20] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v12 = type metadata accessor for LookalikeType(0);
  v6[22] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v6[23] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258020EAC, 0, 0);
}

uint64_t sub_258020EAC()
{
  v45 = v0;
  v1 = v0[22];
  sub_258037CE4(v0[11], v0[23], type metadata accessor for LookalikeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[25];
  v4 = v0[23];
  if (EnumCaseMultiPayload == 1)
  {
    v6 = v0[20];
    v5 = v0[21];
    sub_258037D4C(v4, v5, type metadata accessor for ExtensionRecordLookalike);
    sub_257FDA958(v5 + *(v6 + 20), v3, &qword_27F915280, &qword_25804ED30);
    sub_258037DB4(v5, type metadata accessor for ExtensionRecordLookalike);
  }

  else
  {
    v7 = v0[17];
    v8 = v0[18];
    sub_258037D4C(v4, v0[25], type metadata accessor for AppRecordLookalike);
    (*(v8 + 56))(v3, 0, 1, v7);
  }

  v9 = v0[24];
  v10 = v0[17];
  v11 = v0[18];
  sub_257FDA958(v0[25], v9, &qword_27F915280, &qword_25804ED30);
  v12 = (*(v11 + 48))(v9, 1, v10);
  v13 = v0[24];
  if (v12 == 1)
  {
    sub_257FDAB84(v13, &qword_27F915280, &qword_25804ED30);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v14 = v0[13];
    v15 = sub_258049D30();
    __swift_project_value_buffer(v15, qword_27F919E48);

    v16 = sub_258049D10();
    v17 = sub_25804A2D0();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = v0[12];
      v18 = v0[13];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v44 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_258032C5C(v19, v18, &v44);
      _os_log_impl(&dword_257FD4000, v16, v17, "Data record %{public}s is orphaned", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x259C77210](v21, -1, -1);
      MEMORY[0x259C77210](v20, -1, -1);
    }

    v22 = v0[25];
    sub_258036E5C();
    v23 = swift_allocError();
    *v24 = 0;
    *(v24 + 8) = 0;
    *(v24 + 16) = 16;
    swift_willThrow();
    sub_257FDAB84(v22, &qword_27F915280, &qword_25804ED30);
    v29 = v0[24];
    v28 = v0[25];
    v30 = v0[23];
    v31 = v0[21];
    v32 = v0[19];
    swift_getErrorValue();
    v34 = v0[7];
    v33 = v0[8];
    v35 = v0[9];
    v36 = sub_25804A5B0();
    v38 = v37;
    sub_258036E5C();
    swift_allocError();
    *v39 = v36;
    *(v39 + 8) = v38;
    *(v39 + 16) = 11;
    swift_willThrow();

    v40 = v0[1];

    return v40();
  }

  else
  {
    v25 = v0[19];
    v26 = v0[16];
    v27 = v0[17];
    sub_258037D4C(v13, v25, type metadata accessor for AppRecordLookalike);
    sub_25801E298(*(v25 + *(v27 + 20)), *(v25 + *(v27 + 20) + 8), (v0 + 2));
    v42 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v43 = *v42;
    v0[26] = *v42;

    return MEMORY[0x2822009F8](sub_258021334, v43, 0);
  }
}

uint64_t sub_258021334()
{
  v1 = v0[26];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];

  MEMORY[0x259C76670](32, 0xE100000000000000);
  MEMORY[0x259C76670](v3, v2);
  v0[27] = v4;
  v0[28] = *(v1 + OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_configTasks);
  v6 = swift_allocObject();
  v0[29] = v6;
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = v2;

  v7 = swift_task_alloc();
  v0[30] = v7;
  *v7 = v0;
  v7[1] = sub_2580214A0;

  return sub_258048C6C(v5, v4, &unk_25804F350, v6);
}

uint64_t sub_2580214A0()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = v2[29];
  v6 = v2[28];
  v7 = v2[27];
  if (v0)
  {

    v8 = sub_258021710;
  }

  else
  {

    v8 = sub_258021630;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_258021630()
{
  v1 = v0[24];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[19];
  sub_257FDAB84(v0[25], &qword_27F915280, &qword_25804ED30);
  sub_258037DB4(v4, type metadata accessor for AppRecordLookalike);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_258021710()
{
  v1 = v0[19];
  sub_257FDAB84(v0[25], &qword_27F915280, &qword_25804ED30);
  sub_258037DB4(v1, type metadata accessor for AppRecordLookalike);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[31];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v6 = v0[21];
  v7 = v0[19];
  swift_getErrorValue();
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[9];
  v11 = sub_25804A5B0();
  v13 = v12;
  sub_258036E5C();
  swift_allocError();
  *v14 = v11;
  *(v14 + 8) = v13;
  *(v14 + 16) = 11;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t ManagedAppsServer.getPasswordIdentifiers(clientIdentity:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258038214;

  return sub_258021900(1, a1);
}

uint64_t sub_258021900(char a1, uint64_t a2)
{
  *(v3 + 136) = a2;
  *(v3 + 144) = v2;
  *(v3 + 248) = a1;
  v5 = sub_258049D00();
  *(v3 + 152) = v5;
  v6 = *(v5 - 8);
  *(v3 + 160) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AE8, &qword_25804ECA8) - 8) + 64) + 15;
  v9 = swift_task_alloc();
  *(v3 + 184) = v9;
  v10 = type metadata accessor for LookalikeType(0);
  *(v3 + 192) = v10;
  v11 = *(v10 - 8);
  *(v3 + 200) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  v13 = swift_task_alloc();
  *(v3 + 216) = v13;
  *v13 = v3;
  v13[1] = sub_258021AAC;

  return sub_25801E500(v9, a2);
}

uint64_t sub_258021AAC()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_2580222E8;
  }

  else
  {
    v3 = sub_258021BC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258021BC0()
{
  v1 = *(v0 + 184);
  if ((*(*(v0 + 200) + 48))(v1, 1, *(v0 + 192)) == 1)
  {
    sub_257FDAB84(v1, &qword_27F915AE8, &qword_25804ECA8);
    v2 = *(v0 + 208);
    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    v5 = *(v0 + 168);

    v6 = *(v0 + 8);
    v7 = MEMORY[0x277D84F90];

    return v6(v7);
  }

  else
  {
    v9 = *(v0 + 144);
    sub_258037D4C(v1, *(v0 + 208), type metadata accessor for LookalikeType);
    *(v0 + 128) = 0;
    swift_beginAccess();
    result = sub_257FDA958(v9 + 32, v0 + 16, &qword_27F915AE0, &qword_25804EC98);
    v10 = *(v0 + 40);
    if (v10)
    {
      v11 = *__swift_project_boxed_opaque_existential_1((v0 + 16), v10);
      v12 = swift_task_alloc();
      *(v0 + 232) = v12;
      *v12 = v0;
      v12[1] = sub_258021D94;
      v13 = *(v0 + 208);
      v14 = *(v0 + 248);

      return sub_257FDFFF4(v13, v11, v0 + 128, v14);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_258021D94()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_258022230;
  }

  else
  {
    v3 = sub_258021EA8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258021EA8()
{
  v42 = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = sub_258049D30();
  __swift_project_value_buffer(v5, qword_27F919E48);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_258049D10();
  v8 = sub_25804A2C0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v41 = v10;
    *v9 = 134218498;
    result = swift_beginAccess();
    v12 = *(v0 + 128);
    if (!v12)
    {
LABEL_22:
      __break(1u);
      return result;
    }

    v38 = v6;
    v39 = v10;
    v40 = v8;
    v13 = *(v0 + 248);
    v14 = 0xE700000000000000;
    *(v9 + 4) = *(v12 + 16);
    *(v9 + 12) = 2080;
    v15 = 0x6E776F6E6B6E75;
    v16 = 0xEB00000000657461;
    v17 = 0x6369666974726563;
    if (v13 != 2)
    {
      v17 = 0x797469746E656469;
      v16 = 0xE800000000000000;
    }

    if (v13)
    {
      v15 = 0x64726F7773736170;
      v14 = 0xE800000000000000;
    }

    if (v13 <= 1)
    {
      v18 = v15;
    }

    else
    {
      v18 = v17;
    }

    if (v13 <= 1)
    {
      v19 = v14;
    }

    else
    {
      v19 = v16;
    }

    v21 = *(v0 + 168);
    v20 = *(v0 + 176);
    v23 = *(v0 + 152);
    v22 = *(v0 + 160);
    v24 = sub_258032C5C(v18, v19, &v41);

    *(v9 + 14) = v24;
    *(v9 + 22) = 2082;
    v38(v21, v20, v23);
    v25 = sub_25804A120();
    v27 = v26;
    (*(v22 + 8))(v20, v23);
    v28 = sub_258032C5C(v25, v27, &v41);

    *(v9 + 24) = v28;
    _os_log_impl(&dword_257FD4000, v7, v40, "Returning %ld %s identifiers for client %{public}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v39, -1, -1);
    MEMORY[0x259C77210](v9, -1, -1);
  }

  else
  {
    v29 = *(v0 + 176);
    v30 = *(v0 + 152);
    v31 = *(v0 + 160);

    (*(v31 + 8))(v29, v30);
  }

  result = swift_beginAccess();
  v32 = *(v0 + 128);
  if (!v32)
  {
    __break(1u);
    goto LABEL_22;
  }

  sub_258037DB4(*(v0 + 208), type metadata accessor for LookalikeType);
  v33 = *(v0 + 208);
  v35 = *(v0 + 176);
  v34 = *(v0 + 184);
  v36 = *(v0 + 168);

  v37 = *(v0 + 8);

  return v37(v32);
}

uint64_t sub_258022230()
{
  sub_258037DB4(v0[26], type metadata accessor for LookalikeType);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[16];

  v2 = v0[30];
  v3 = v0[26];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2580222E8()
{
  v1 = v0[28];
  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];

  v6 = v0[1];

  return v6();
}

uint64_t ManagedAppsServer.getPassword(with:clientIdentity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v8 = sub_258049D00();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[10] = v11;
  *v11 = v4;
  v11[1] = sub_25802249C;

  return sub_258022A2C(a1, a2, 1, a3);
}

uint64_t sub_25802249C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 80);
  v6 = *v3;
  v4[11] = a1;
  v4[12] = a2;

  if (v2)
  {
    v8 = v4[8];
    v7 = v4[9];

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2580225F4, 0, 0);
  }
}

uint64_t sub_2580225F4()
{
  v56 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[5];
  v4 = objc_opt_self();
  v5 = sub_258049A40();
  v6 = *(v3 + 16);
  v7 = sub_258049B20();
  v8 = [v4 copyPasswordWithPersistentID:v5 useSystemKeychain:v7 == sub_258049B20() enforcePersonalPersona:0];

  if (v8)
  {
    v9 = sub_25804A110();
    v54 = v10;

    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v11 = v0[9];
    v12 = v0[6];
    v13 = v0[7];
    v14 = v0[4];
    v15 = sub_258049D30();
    __swift_project_value_buffer(v15, qword_27F919E48);
    v16 = *(v13 + 16);
    v16(v11, v14, v12);
    v17 = sub_258049D10();
    v18 = sub_25804A2C0();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[9];
    if (v19)
    {
      v22 = v0[7];
      v21 = v0[8];
      v52 = v0[12];
      v53 = v9;
      v23 = v0[6];
      v51 = v0[11];
      v50 = v18;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v55 = v25;
      *v24 = 136446210;
      v16(v21, v20, v23);
      v26 = sub_25804A120();
      v27 = v17;
      v29 = v28;
      v30 = v23;
      v9 = v53;
      (*(v22 + 8))(v20, v30);
      v31 = sub_258032C5C(v26, v29, &v55);

      *(v24 + 4) = v31;
      _os_log_impl(&dword_257FD4000, v27, v50, "Returning password for client %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x259C77210](v25, -1, -1);
      MEMORY[0x259C77210](v24, -1, -1);
      sub_257FDAAB4(v51, v52);
    }

    else
    {
      v45 = v0[6];
      v46 = v0[7];
      sub_257FDAAB4(v0[11], v0[12]);

      (*(v46 + 8))(v20, v45);
    }

    v48 = v0[8];
    v47 = v0[9];

    v49 = v0[1];

    return v49(v9, v54);
  }

  else
  {
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v32 = sub_258049D30();
    __swift_project_value_buffer(v32, qword_27F919E48);
    v33 = sub_258049D10();
    v34 = sub_25804A2D0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_257FD4000, v33, v34, "Failed to find password from keychain", v35, 2u);
      MEMORY[0x259C77210](v35, -1, -1);
    }

    v37 = v0[11];
    v36 = v0[12];
    v38 = v0[2];
    v39 = v0[3];

    sub_258036E5C();
    swift_allocError();
    *v40 = v38;
    *(v40 + 8) = v39;
    *(v40 + 16) = 15;
    swift_willThrow();

    sub_257FDAAB4(v37, v36);
    v42 = v0[8];
    v41 = v0[9];

    v43 = v0[1];

    return v43();
  }
}

uint64_t sub_258022A2C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 232) = a4;
  *(v5 + 240) = v4;
  *(v5 + 384) = a3;
  *(v5 + 216) = a1;
  *(v5 + 224) = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AE8, &qword_25804ECA8) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  *(v5 + 248) = v8;
  v9 = type metadata accessor for LookalikeType(0);
  *(v5 + 256) = v9;
  v10 = *(v9 - 8);
  *(v5 + 264) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 272) = swift_task_alloc();
  v12 = swift_task_alloc();
  *(v5 + 280) = v12;
  *v12 = v5;
  v12[1] = sub_258022B74;

  return sub_25801E500(v8, a4);
}

uint64_t sub_258022B74()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_258023AE4;
  }

  else
  {
    v3 = sub_258022C88;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258022C88()
{
  v1 = *(v0 + 248);
  if ((*(*(v0 + 264) + 48))(v1, 1, *(v0 + 256)) == 1)
  {
    sub_257FDAB84(v1, &qword_27F915AE8, &qword_25804ECA8);
    sub_258036E5C();
    swift_allocError();
    *v2 = xmmword_25804EC70;
    *(v2 + 16) = 16;
    swift_willThrow();
    v3 = *(v0 + 272);
    v4 = *(v0 + 248);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 240);
    sub_258037D4C(v1, *(v0 + 272), type metadata accessor for LookalikeType);
    *(v0 + 120) = xmmword_25804B2B0;
    *(v0 + 136) = 0;
    *(v0 + 144) = 0;
    *(v0 + 152) = 0;
    *(v0 + 160) = 0;
    swift_beginAccess();
    result = sub_257FDA958(v7 + 32, v0 + 16, &qword_27F915AE0, &qword_25804EC98);
    v8 = *(v0 + 40);
    if (v8)
    {
      v9 = *(v0 + 384);
      v10 = *(v0 + 216);
      v16 = *(v0 + 224);
      v11 = __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
      v12 = swift_task_alloc();
      *(v0 + 296) = v12;
      *(v12 + 16) = v9;
      *(v12 + 24) = v10;
      *(v12 + 32) = v16;
      *(v12 + 48) = v0 + 136;
      *(v12 + 56) = v0 + 152;
      *(v12 + 64) = v0 + 120;
      v13 = *v11;
      v14 = swift_task_alloc();
      *(v0 + 304) = v14;
      *v14 = v0;
      v14[1] = sub_258022EE0;
      v15 = *(v0 + 272);

      return sub_257FE0874(v15, sub_258037CA4, v12);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_258022EE0()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 296);

  if (v0)
  {
    v6 = sub_2580232E4;
  }

  else
  {
    v6 = sub_258023014;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_258023014()
{
  v20 = v0;
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[18];
  v0[40] = v4;
  v5 = v0[17];
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = v0[19];
  v6 = v0[20];
  v0[41] = v6;
  if (!v6)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_257FECD68(v2, v3);
  sub_257FDAAA0(v2, v3);
  if (v3 >> 60 == 15)
  {
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v8 = sub_258049D30();
    v0[42] = __swift_project_value_buffer(v8, qword_27F919E48);
    v9 = sub_258049D10();
    v10 = sub_25804A2C0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136446210;

      v13 = sub_258032C5C(v5, v4, &v19);

      *(v11 + 4) = v13;
      _os_log_impl(&dword_257FD4000, v9, v10, "Credential asset record %{public}s hasn't been resolved yet", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x259C77210](v12, -1, -1);
      MEMORY[0x259C77210](v11, -1, -1);
    }

    v14 = swift_task_alloc();
    v0[43] = v14;
    *v14 = v0;
    v14[1] = sub_258023394;
    v15 = v0[34];
    v16 = v0[30];

    return sub_258026528(v15, v5, v4, v7, v6);
  }

  else
  {

    v17 = v0[31];
    sub_258037DB4(v0[34], type metadata accessor for LookalikeType);

    v18 = v0[1];

    return v18(v2, v3);
  }
}

uint64_t sub_2580232E4()
{
  v1 = v0[34];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[20];

  v3 = v0[18];

  sub_257FDAAA0(v0[15], v0[16]);
  sub_258037DB4(v1, type metadata accessor for LookalikeType);
  v4 = v0[39];
  v5 = v0[34];
  v6 = v0[31];

  v7 = v0[1];

  return v7();
}

uint64_t sub_258023394()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = v0;

  v5 = *(v2 + 328);
  v6 = *(v2 + 320);

  if (v0)
  {
    v7 = sub_258023B54;
  }

  else
  {
    v7 = sub_2580234E4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2580234E4()
{
  *(v0 + 168) = xmmword_25804B2B0;
  *(v0 + 184) = 0;
  *(v0 + 200) = 0;
  v1 = *(v0 + 240);
  *(v0 + 192) = 0;
  *(v0 + 208) = 0;
  result = sub_257FDA958(v1 + 32, v0 + 56, &qword_27F915AE0, &qword_25804EC98);
  v3 = *(v0 + 80);
  if (v3)
  {
    v4 = *(v0 + 384);
    v5 = *(v0 + 216);
    v11 = *(v0 + 224);
    v6 = __swift_project_boxed_opaque_existential_1((v0 + 56), v3);
    v7 = swift_task_alloc();
    *(v0 + 360) = v7;
    *(v7 + 16) = v4;
    *(v7 + 24) = v5;
    *(v7 + 32) = v11;
    *(v7 + 48) = v0 + 184;
    *(v7 + 56) = v0 + 200;
    *(v7 + 64) = v0 + 168;
    v8 = *v6;
    v9 = swift_task_alloc();
    *(v0 + 368) = v9;
    *v9 = v0;
    v9[1] = sub_258023648;
    v10 = *(v0 + 272);

    return sub_257FE0874(v10, sub_2580381F4, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258023648()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 360);

  if (v0)
  {
    v6 = sub_258023A28;
  }

  else
  {
    v6 = sub_25802377C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25802377C()
{
  v21 = v0;
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v2 = v0[21];
  v3 = v0[23];
  v4 = v0[24];
  if (!v4)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (!v0[26])
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v5 = v0[22];
  v6 = v0[40];
  sub_257FECD68(v0[21], v5);

  sub_257FDAAA0(v0[21], v0[22]);

  if (v5 >> 60 == 15)
  {
    v7 = v0[42];

    v8 = sub_258049D10();
    v9 = sub_25804A2D0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136446210;
      v12 = sub_258032C5C(v3, v4, &v20);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_257FD4000, v8, v9, "Credential data is still nil after resolving data asset record %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x259C77210](v11, -1, -1);
      MEMORY[0x259C77210](v10, -1, -1);
    }

    else
    {
    }

    v15 = v0[34];
    sub_258036E5C();
    swift_allocError();
    *v16 = 0;
    *(v16 + 8) = 0;
    *(v16 + 16) = 16;
    swift_willThrow();
    sub_258037DB4(v15, type metadata accessor for LookalikeType);

    v17 = v0[34];
    v18 = v0[31];

    v19 = v0[1];

    return v19();
  }

  else
  {
    v13 = v0[31];
    sub_258037DB4(v0[34], type metadata accessor for LookalikeType);

    v14 = v0[1];

    return v14(v2, v5);
  }
}

uint64_t sub_258023A28()
{
  v1 = v0[40];
  v2 = v0[34];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v3 = v0[26];

  v4 = v0[24];

  sub_257FDAAA0(v0[21], v0[22]);
  sub_258037DB4(v2, type metadata accessor for LookalikeType);

  v5 = v0[47];
  v6 = v0[34];
  v7 = v0[31];

  v8 = v0[1];

  return v8();
}

uint64_t sub_258023AE4()
{
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[31];

  v4 = v0[1];

  return v4();
}

uint64_t sub_258023B54()
{
  v1 = v0[40];
  sub_258037DB4(v0[34], type metadata accessor for LookalikeType);

  v2 = v0[44];
  v3 = v0[34];
  v4 = v0[31];

  v5 = v0[1];

  return v5();
}