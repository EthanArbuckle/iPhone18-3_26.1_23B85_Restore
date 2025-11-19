uint64_t getEnumTagSinglePayload for LoadedRecoverableMessagesMetadataBroadcast.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LoadedRecoverableMessagesMetadataBroadcast.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_1A871D5AC(void *a1, int64_t a2, char a3)
{
  result = sub_1A871DE14(a1, a2, a3, *v3, &qword_1EB3034D8, &unk_1A88E34F0, &qword_1EB303100);
  *v3 = result;
  return result;
}

void *sub_1A871D5EC(void *a1, int64_t a2, char a3)
{
  result = sub_1A871DE14(a1, a2, a3, *v3, &qword_1EB303458, &unk_1A88F7290, &qword_1EB303320);
  *v3 = result;
  return result;
}

char *sub_1A871D62C(char *a1, int64_t a2, char a3)
{
  result = sub_1A871DA6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A871D64C(size_t a1, int64_t a2, char a3)
{
  result = sub_1A8604228(a1, a2, a3, *v3, &qword_1EB3034B8, &unk_1A88E34D0, type metadata accessor for RemoteIntentUnreadCountReport);
  *v3 = result;
  return result;
}

void *sub_1A871D690(void *a1, int64_t a2, char a3)
{
  result = sub_1A871DB94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A871D6B0(size_t a1, int64_t a2, char a3)
{
  result = sub_1A8604228(a1, a2, a3, *v3, &qword_1EB3034C0, &unk_1A88E9070, MEMORY[0x1EEE789E0]);
  *v3 = result;
  return result;
}

size_t sub_1A871D6E8(size_t a1, int64_t a2, char a3)
{
  result = sub_1A8604228(a1, a2, a3, *v3, &qword_1EB3034A8, &unk_1A88E34C0, type metadata accessor for TranslationLanguage);
  *v3 = result;
  return result;
}

size_t sub_1A871D72C(size_t a1, int64_t a2, char a3)
{
  result = sub_1A8604228(a1, a2, a3, *v3, &qword_1EB3034A0, &unk_1A88E34B8, type metadata accessor for RemoteIntentMirrorFileRepresentation);
  *v3 = result;
  return result;
}

size_t sub_1A871D770(size_t a1, int64_t a2, char a3)
{
  result = sub_1A8604228(a1, a2, a3, *v3, &qword_1EB303480, &unk_1A88E3498, MEMORY[0x1EEE78820]);
  *v3 = result;
  return result;
}

char *sub_1A871D7A8(char *a1, int64_t a2, char a3)
{
  result = sub_1A871DD18(a1, a2, a3, *v3, &qword_1EB303498);
  *v3 = result;
  return result;
}

void *sub_1A871D7D8(void *a1, int64_t a2, char a3)
{
  result = sub_1A871DE14(a1, a2, a3, *v3, &qword_1EB303468, &unk_1A88E3478, &qword_1EB303470);
  *v3 = result;
  return result;
}

char *sub_1A871D818(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A870CCE0(&unk_1EB306530);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1A871D924(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1A870CCE0(&qword_1EB3034E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A870CCE0(&qword_1EB3034E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A871DA6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A870CCE0(&qword_1EB303490);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A871DB94(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1A870CCE0(&qword_1EB3034C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A870CCE0(&qword_1EB3034D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A871DD18(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1A870CCE0(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

void *sub_1A871DE14(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    sub_1A870CCE0(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A870CCE0(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t sub_1A871DF50(uint64_t a1)
{
  v2 = sub_1A870CCE0(&unk_1EB3052E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A871DFB8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t *sub_1A871E00C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1A871E07C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1A88C8978();
  if (!v19)
  {
    return sub_1A88C8648();
  }

  v41 = v19;
  v45 = sub_1A88C8F48();
  v32 = sub_1A88C8F58();
  sub_1A88C8EF8();
  result = sub_1A88C8968();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1A88C8998();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1A88C8F38();
      result = sub_1A88C8988();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A871E4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1A88C8BE8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = v21 - v14;
  (*(v9 + 16))(v12, a1, v8);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v16 = 1;
    v17 = v22;
  }

  else
  {
    (*(v13 + 32))(v15, v12, AssociatedTypeWitness);
    v18 = v22;
    v19 = v21[1];
    (*(a3 + 16))(v15, a2, a3);
    if (v19)
    {
      return (*(v13 + 8))(v15, AssociatedTypeWitness);
    }

    (*(v13 + 8))(v15, AssociatedTypeWitness);
    v17 = v18;
    v16 = 0;
  }

  return (*(*(a2 - 8) + 56))(v17, v16, 1, a2);
}

uint64_t sub_1A871E73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v14, a1);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v6 + 8))(v9, a1);
    v15 = 1;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    (*(a2 + 24))(v10, a2);
    (*(v11 + 8))(v13, v10);
    v15 = 0;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a3, v15, 1, AssociatedTypeWitness);
}

uint64_t sub_1A871E9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[2] = a1;
  v8[2] = a2;
  v8[3] = a3;
  swift_getAssociatedTypeWitness();
  v4 = sub_1A88C86B8();
  v5 = sub_1A870CCE0(&unk_1EB3037B0);
  WitnessTable = swift_getWitnessTable();
  return sub_1A871E07C(sub_1A871FD80, v8, v4, a2, v5, WitnessTable, MEMORY[0x1E69E7288], v9);
}

uint64_t sub_1A871EA98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1A871E9A8(*a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1A871EAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1A871F160(*v3, *(a1 + 16), *(a2 - 8), &protocol descriptor for RemoteIntentRepresentable.NumRequirements, &unk_1A8956924, sub_1A871FD3C);
  *a3 = result;
  return result;
}

uint64_t sub_1A871EB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1A88C8BE8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  (*(v9 + 16))(v12, a1, v8);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    v19 = *(v9 + 8);
    v19(a1, v8);
    v19(v12, v8);
    v20 = 1;
    v21 = v25;
  }

  else
  {
    (*(v13 + 32))(v18, v12, AssociatedTypeWitness);
    (*(v13 + 16))(v16, v18, AssociatedTypeWitness);
    v22 = v25;
    (*(a3 + 16))(v16, a2, a3);
    (*(v9 + 8))(a1, v8);
    (*(v13 + 8))(v18, AssociatedTypeWitness);
    v20 = 0;
    v21 = v22;
  }

  return (*(*(a2 - 8) + 56))(v21, v20, 1, a2);
}

uint64_t sub_1A871EDF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v14, a1);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v6 + 8))(v9, a1);
    v15 = 1;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    (*(a2 + 24))(v10, a2);
    (*(v11 + 8))(v13, v10);
    v15 = 0;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a3, v15, 1, AssociatedTypeWitness);
}

uint64_t sub_1A871F050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  return (*(a3 + 16))(v8, a2, a3);
}

uint64_t sub_1A871F160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, char *))
{
  v12[5] = a1;
  v12[2] = a2;
  v12[3] = a3;
  v7 = sub_1A88C86B8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  return sub_1A871E07C(a6, v12, v7, AssociatedTypeWitness, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);
}

uint64_t sub_1A871F224@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = sub_1A871FC58(*a1, *(a2 + 16), *(a3 - 8));

  *a4 = v5;
  return result;
}

uint64_t sub_1A871F270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1A871F160(*v3, *(a1 + 16), *(a2 - 8), &protocol descriptor for RemoteIntentCollectionRepresentable.NumRequirements, &unk_1A8956998, sub_1A871FC14);
  *a3 = result;
  return result;
}

uint64_t sub_1A871F2CC(uint64_t a1, int a2)
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

uint64_t sub_1A871F314(uint64_t result, int a2, int a3)
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

__n128 sub_1A871F360@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  sub_1A87A3794(*a1, v10);
  v3 = v10[13];
  a2[12] = v10[12];
  a2[13] = v3;
  a2[14].n128_u32[0] = v11;
  v4 = v10[9];
  a2[8] = v10[8];
  a2[9] = v4;
  v5 = v10[11];
  a2[10] = v10[10];
  a2[11] = v5;
  v6 = v10[5];
  a2[4] = v10[4];
  a2[5] = v6;
  v7 = v10[7];
  a2[6] = v10[6];
  a2[7] = v7;
  v8 = v10[1];
  *a2 = v10[0];
  a2[1] = v8;
  result = v10[3];
  a2[2] = v10[2];
  a2[3] = result;
  return result;
}

uint64_t sub_1A871F3F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A87A2A24();
  *a1 = result;
  return result;
}

uint64_t sub_1A871F46C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A87BDD50(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A871F498@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A87BDC40(*v1, v1[1]);
  *a1 = result;
  return result;
}

unint64_t sub_1A871F4C4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1A87C622C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A871F4F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A87C5C00(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1A871F51C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A87C6094(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6 & 1;
  return result;
}

uint64_t sub_1A871F55C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A87C5E9C(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t sub_1A871F5AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A87CD7E0();
  *a1 = result;
  return result;
}

uint64_t sub_1A871F5D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A87DDE0C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A871F600@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A87DDCA4(*v1);
  *a1 = result;
  return result;
}

double sub_1A871F62C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A8804D4C(*a1, v7);
  v3 = v11;
  *(a2 + 64) = v10;
  *(a2 + 80) = v3;
  *(a2 + 96) = v12;
  *(a2 + 112) = v13;
  v4 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v4;
  result = *&v8;
  v6 = v9;
  *(a2 + 32) = v8;
  *(a2 + 48) = v6;
  return result;
}

uint64_t sub_1A871F694@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A88041B8();
  *a1 = result;
  return result;
}

uint64_t sub_1A871F6F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A8819974(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A871F71C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A8819330(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_1A871F748@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1A881B848(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A871F774@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A881ADEC(*v1);
  *a1 = result;
  return result;
}

double sub_1A871F7A0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A881B544(*a1, v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t sub_1A871F7E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A881B150();
  *a1 = result;
  return result;
}

uint64_t sub_1A871F830@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A881DC2C();
  *a1 = result;
  return result;
}

unint64_t sub_1A871F89C@<X0>(unint64_t *a1@<X8>)
{
  result = RemoteIntentFileTransfer.dictionaryRepresentation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1A871F8CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A88342C4();
  *a1 = result;
  return result;
}

id sub_1A871F914@<X0>(void *a1@<X8>)
{
  result = sub_1A88377B8();
  *a1 = result;
  return result;
}

unint64_t sub_1A871F968@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1A884B02C();
  *a1 = result;
  return result;
}

unint64_t sub_1A871F998@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1A88401B8();
  *a1 = result;
  return result;
}

uint64_t sub_1A871F9C8@<X0>(uint64_t *a1@<X8>)
{
  result = RemoteIntentRecoverableMessageMetadata.dictionaryRepresentation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1A871FA0C@<X0>(uint64_t *a1@<X8>)
{
  result = RemoteIntentRecoverableMetadata.dictionaryRepresentation.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1A871FA60@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1A8602DD4(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t sub_1A871FAD4@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  result = sub_1A88925A8();
  *a1 = result;
  return result;
}

__n128 sub_1A871FB20@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A88A4340(*a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1A871FB74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A88A3A70();
  *a1 = result;
  return result;
}

uint64_t sub_1A871FBC8@<X0>(uint64_t *a1@<X8>)
{
  result = RemoteIntentServiceInfo.dictionaryRepresentation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1A871FC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[5] = a1;
  v8[2] = a2;
  v8[3] = a3;
  swift_getAssociatedTypeWitness();
  v4 = sub_1A88C86B8();
  WitnessTable = swift_getWitnessTable();
  return sub_1A871E07C(sub_1A871FD1C, v8, v4, a2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);
}

uint64_t sub_1A871FD80(uint64_t a1, void *a2)
{
  result = (*(*(v2 + 24) + 16))();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

void sub_1A871FDC8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A88C6F18();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v27 = v7;
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 queryItems];
  if (v9)
  {
    v23 = v8;
    v10 = v9;
    v11 = sub_1A88C85F8();

    v24 = *(v11 + 16);
    if (v24)
    {
      v13 = 0;
      v25 = v6 + 16;
      v26 = (v6 + 8);
      while (v13 < *(v11 + 16))
      {
        MEMORY[0x1EEE9AC00](v12);
        v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v6 + 16))(v15);
        if (sub_1A88C6EF8() == a1 && v16 == a2)
        {

LABEL_14:

          v21 = v23;
          (*(v6 + 32))(v23, v15, v5);
          sub_1A88C6F08();
          (*(v6 + 8))(v21, v5);
          return;
        }

        v18 = a1;
        v19 = a2;
        v20 = sub_1A88C9398();

        if (v20)
        {
          goto LABEL_14;
        }

        ++v13;
        v12 = (*v26)(v15, v5);
        a2 = v19;
        a1 = v18;
        if (v24 == v13)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_11:
    }
  }
}

uint64_t sub_1A8720058(void *a1)
{
  v1 = a1;
  sub_1A871FDC8(0x692D656372756F73, 0xE900000000000064);
  if (v3)
  {
    if (v2 == 0x6163696669746F6ELL && v3 == 0xEC0000006E6F6974)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_1A88C9398();
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1A87201C4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1A87200FC(*a1);
  if (v3 == sub_1A87200FC(v2))
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1A88C9398();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1A8720234()
{
  v1 = *v0;
  sub_1A88C9528();
  sub_1A87200FC(v1);
  sub_1A88C8268();

  return sub_1A88C9578();
}

uint64_t sub_1A8720290()
{
  sub_1A87200FC(*v0);
  sub_1A88C8268();
}

uint64_t sub_1A87202DC()
{
  v1 = *v0;
  sub_1A88C9528();
  sub_1A87200FC(v1);
  sub_1A88C8268();

  return sub_1A88C9578();
}

uint64_t sub_1A8720334@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A8721AEC();
  *a1 = result;
  return result;
}

uint64_t sub_1A8720364@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A87200FC(*v1);
  *a1 = result;
  a1[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_1A87203B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A8721AEC();
  *a1 = result;
  return result;
}

uint64_t sub_1A87203E8(uint64_t a1)
{
  v2 = sub_1A87207FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8720424(uint64_t a1)
{
  v2 = sub_1A87207FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteIntentUnreadCountReport.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB3034F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1A870C278(a1, a1[3]);
  sub_1A87207FC();
  sub_1A88C95C8();
  LOBYTE(v11) = 0;
  sub_1A88C9278();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_1A88C91C8();
    LOBYTE(v11) = 2;
    sub_1A88C91C8();
    LOBYTE(v11) = 3;
    sub_1A88C91C8();
    LOBYTE(v11) = 4;
    sub_1A88C91C8();
    LOBYTE(v11) = 5;
    sub_1A88C92E8();
    LOBYTE(v11) = 6;
    sub_1A88C9288();
    LOBYTE(v11) = 7;
    sub_1A88C9288();
    v11 = *(v3 + 96);
    v10[7] = 8;
    sub_1A870CCE0(&qword_1EB303100);
    sub_1A8716048(&qword_1EB303120);
    sub_1A88C92C8();
    type metadata accessor for RemoteIntentUnreadCountReport();
    LOBYTE(v11) = 9;
    sub_1A88C7478();
    sub_1A8720F18(&qword_1EB303500);
    sub_1A88C9228();
    LOBYTE(v11) = 10;
    sub_1A88C92A8();
    LOBYTE(v11) = 11;
    sub_1A88C92A8();
    LOBYTE(v11) = 12;
    sub_1A88C9288();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1A87207FC()
{
  result = qword_1EB3034F8;
  if (!qword_1EB3034F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3034F8);
  }

  return result;
}

uint64_t type metadata accessor for RemoteIntentUnreadCountReport()
{
  result = qword_1EB303518;
  if (!qword_1EB303518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RemoteIntentUnreadCountReport.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = sub_1A870CCE0(&qword_1EB303508);
  v5 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v7 = v28 - v6;
  v8 = type metadata accessor for RemoteIntentUnreadCountReport();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v33 = a1;
  sub_1A870C278(a1, v11);
  sub_1A87207FC();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(v33);
  }

  v30 = a2;
  v31 = v8;
  v12 = v5;
  LOBYTE(v35) = 0;
  v13 = v32;
  *v10 = sub_1A88C9108();
  *(v10 + 1) = v15;
  v28[1] = v15;
  LOBYTE(v35) = 1;
  *(v10 + 2) = sub_1A88C9058();
  *(v10 + 3) = v16;
  LOBYTE(v35) = 2;
  *(v10 + 4) = sub_1A88C9058();
  *(v10 + 5) = v17;
  LOBYTE(v35) = 3;
  *(v10 + 6) = sub_1A88C9058();
  *(v10 + 7) = v18;
  LOBYTE(v35) = 4;
  *(v10 + 8) = sub_1A88C9058();
  *(v10 + 9) = v19;
  LOBYTE(v35) = 5;
  *(v10 + 10) = sub_1A88C9178();
  LOBYTE(v35) = 6;
  v10[88] = sub_1A88C9118() & 1;
  LOBYTE(v35) = 7;
  v20 = sub_1A88C9118();
  v29 = 0;
  v10[89] = v20 & 1;
  sub_1A870CCE0(&qword_1EB303100);
  v34 = 8;
  sub_1A8716048(&qword_1EB303108);
  v21 = v29;
  sub_1A88C9158();
  v29 = v21;
  if (v21)
  {
    (*(v12 + 8))(v7, v13);
    sub_1A85F1084(v33);
  }

  else
  {
    *(v10 + 12) = v35;
    v22 = sub_1A870CCE0(&unk_1EB3052E0);
    MEMORY[0x1EEE9AC00](v22 - 8);
    v24 = v28 - v23;
    sub_1A88C7478();
    LOBYTE(v35) = 9;
    sub_1A8720F18(&qword_1EB303510);
    v25 = v29;
    sub_1A88C90B8();
    if (v25)
    {
      (*(v12 + 8))(v7, v32);
      sub_1A85F1084(v33);
    }

    else
    {
      sub_1A8720F5C(v24, &v10[v31[13]]);
      LOBYTE(v35) = 10;
      *&v10[v31[14]] = sub_1A88C9138();
      LOBYTE(v35) = 11;
      *&v10[v31[15]] = sub_1A88C9138();
      LOBYTE(v35) = 12;
      v26 = sub_1A88C9118();
      (*(v12 + 8))(v7, v32);
      v27 = v30;
      v10[v31[16]] = v26 & 1;
      sub_1A8720FCC(v10, v27);
      sub_1A85F1084(v33);
      return sub_1A8721030(v10);
    }
  }
}

uint64_t sub_1A8720F18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A88C7478();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A8720F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&unk_1EB3052E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8720FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteIntentUnreadCountReport();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8721030(uint64_t a1)
{
  v2 = type metadata accessor for RemoteIntentUnreadCountReport();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id IMUnreadCountReport.init(remoteIntentRepresentation:)(uint64_t a1)
{
  v29 = sub_1A88C82A8();
  if (*(a1 + 24))
  {
    v28 = sub_1A88C82A8();
    if (*(a1 + 40))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v28 = 0;
    if (*(a1 + 40))
    {
LABEL_3:
      v27 = sub_1A88C82A8();
      if (*(a1 + 56))
      {
        goto LABEL_4;
      }

LABEL_8:
      v2 = 0;
      if (*(a1 + 72))
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v27 = 0;
  if (!*(a1 + 56))
  {
    goto LABEL_8;
  }

LABEL_4:
  v2 = sub_1A88C82A8();
  if (*(a1 + 72))
  {
LABEL_5:
    v3 = sub_1A88C82A8();
    goto LABEL_10;
  }

LABEL_9:
  v3 = 0;
LABEL_10:
  v26 = *(a1 + 80);
  v4 = *(a1 + 88);
  v24 = *(a1 + 89);
  v25 = v4;
  v5 = sub_1A88C85E8();
  v6 = type metadata accessor for RemoteIntentUnreadCountReport();
  v7 = v6[13];
  v8 = sub_1A870CCE0(&unk_1EB3052E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  sub_1A8721348(a1 + v7, &v24 - v9);
  v11 = sub_1A88C7478();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v13 = sub_1A88C73D8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  LOBYTE(v23) = *(a1 + v6[16]);
  v21 = *(a1 + v6[14]);
  v22 = *(a1 + v6[15]);
  BYTE1(v20) = v24;
  LOBYTE(v20) = v25;
  v16 = v28;
  v15 = v29;
  v17 = v27;
  v18 = [v14 initWithGUID:v29 groupID:v28 originalGroupID:v27 lastAddressedHandleID:v2 lastAddressedSIMID:v3 isFiltered:v26 isBlackholed:v20 isArchived:v5 participants:v13 timeSensitiveRefreshDate:v21 timeSensitiveMessageCount:v22 unreadCount:v23 isPendingReview:?];

  sub_1A8721030(a1);
  return v18;
}

uint64_t sub_1A8721348(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&unk_1EB3052E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t IMUnreadCountReport.remoteIntentRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 guid];
  v4 = sub_1A88C82E8();
  v50 = v5;
  v51 = v4;

  v6 = [v1 groupID];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1A88C82E8();
    v48 = v9;
    v49 = v8;
  }

  else
  {
    v48 = 0;
    v49 = 0;
  }

  v10 = [v1 originalGroupID];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1A88C82E8();
    v46 = v13;
    v47 = v12;
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  v14 = [v1 lastAddressedHandleID];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1A88C82E8();
    v44 = v17;
    v45 = v16;
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  v18 = [v1 lastAddressedSIMID];
  if (v18)
  {
    v19 = v18;
    v43 = sub_1A88C82E8();
    v21 = v20;
  }

  else
  {
    v43 = 0;
    v21 = 0;
  }

  v22 = [v1 isFiltered];
  v23 = [v1 isBlackholed];
  v24 = [v1 isArchived];
  v25 = [v1 participants];
  v26 = sub_1A88C85F8();

  v27 = [v1 timeSensitiveRefreshDate];
  v28 = sub_1A870CCE0(&unk_1EB3052E0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v42 - v29;
  if (v27)
  {
    sub_1A88C7448();

    v31 = sub_1A88C7478();
    (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  }

  else
  {
    v32 = sub_1A88C7478();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
  }

  v33 = [v1 timeSensitiveMessageCount];
  v34 = [v1 unreadCount];
  v35 = [v1 isPendingReview];
  v36 = v50;
  *a1 = v51;
  *(a1 + 8) = v36;
  v37 = v48;
  *(a1 + 16) = v49;
  *(a1 + 24) = v37;
  v38 = v46;
  *(a1 + 32) = v47;
  *(a1 + 40) = v38;
  v39 = v44;
  *(a1 + 48) = v45;
  *(a1 + 56) = v39;
  *(a1 + 64) = v43;
  *(a1 + 72) = v21;
  *(a1 + 80) = v22;
  *(a1 + 88) = v23;
  *(a1 + 89) = v24;
  *(a1 + 96) = v26;
  v40 = type metadata accessor for RemoteIntentUnreadCountReport();
  result = sub_1A8720F5C(v30, a1 + v40[13]);
  *(a1 + v40[14]) = v33;
  *(a1 + v40[15]) = v34;
  *(a1 + v40[16]) = v35;
  return result;
}

void sub_1A872172C()
{
  sub_1A8721840(319, &qword_1EB303528, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A8721840(319, &qword_1EB303530, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1A85ED6EC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A8721840(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RemoteIntentUnreadCountReport.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteIntentUnreadCountReport.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A87219E8()
{
  result = qword_1EB303538;
  if (!qword_1EB303538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303538);
  }

  return result;
}

unint64_t sub_1A8721A40()
{
  result = qword_1EB303540;
  if (!qword_1EB303540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303540);
  }

  return result;
}

unint64_t sub_1A8721A98()
{
  result = qword_1EB303548;
  if (!qword_1EB303548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303548);
  }

  return result;
}

uint64_t sub_1A8721AEC()
{
  v0 = sub_1A88C9028();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1A8721B38()
{
  result = qword_1EB303550;
  if (!qword_1EB303550)
  {
    type metadata accessor for IMMessageFilterActionResponse(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303550);
  }

  return result;
}

uint64_t sub_1A8721B90()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB303558);
  sub_1A85EF0E4(v0, qword_1EB303558);
  return sub_1A88C7E48();
}

uint64_t sub_1A8721C44()
{
  if ([v0 isFromMe])
  {
    if (qword_1EB3020C0 != -1)
    {
      swift_once();
    }

    v1 = sub_1A88C7E58();
    sub_1A85EF0E4(v1, qword_1EB303558);
    v2 = sub_1A88C7E38();
    v3 = sub_1A88C89D8();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_47;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Not processing possible availability reply for message from me";
LABEL_46:
    _os_log_impl(&dword_1A85E5000, v2, v3, v5, v4, 2u);
    MEMORY[0x1AC571F20](v4, -1, -1);
LABEL_47:

    return 0;
  }

  if ([v0 isEmote])
  {
    if (qword_1EB3020C0 != -1)
    {
      swift_once();
    }

    v6 = sub_1A88C7E58();
    sub_1A85EF0E4(v6, qword_1EB303558);
    v2 = sub_1A88C7E38();
    v3 = sub_1A88C89D8();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_47;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Not processing possible availability reply for emote message";
    goto LABEL_46;
  }

  if ([v0 isEmpty])
  {
    if (qword_1EB3020C0 != -1)
    {
      swift_once();
    }

    v7 = sub_1A88C7E58();
    sub_1A85EF0E4(v7, qword_1EB303558);
    v2 = sub_1A88C7E38();
    v3 = sub_1A88C89D8();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_47;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Not processing possible availability reply for empty message";
    goto LABEL_46;
  }

  if ([v0 isTypingMessage])
  {
    if (qword_1EB3020C0 != -1)
    {
      swift_once();
    }

    v8 = sub_1A88C7E58();
    sub_1A85EF0E4(v8, qword_1EB303558);
    v2 = sub_1A88C7E38();
    v3 = sub_1A88C89D8();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_47;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Not processing possible availability reply for typing message";
    goto LABEL_46;
  }

  if ([v0 isLocatingMessage])
  {
    if (qword_1EB3020C0 != -1)
    {
      swift_once();
    }

    v9 = sub_1A88C7E58();
    sub_1A85EF0E4(v9, qword_1EB303558);
    v2 = sub_1A88C7E38();
    v3 = sub_1A88C89D8();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_47;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Not processing possible availability reply for locating message";
    goto LABEL_46;
  }

  if ([v0 isAutoReply])
  {
    if (qword_1EB3020C0 != -1)
    {
      swift_once();
    }

    v10 = sub_1A88C7E58();
    sub_1A85EF0E4(v10, qword_1EB303558);
    v2 = sub_1A88C7E38();
    v3 = sub_1A88C89D8();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_47;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Not processing possible availability reply for auto reply message";
    goto LABEL_46;
  }

  if ([v0 isUnfinished])
  {
    if (qword_1EB3020C0 != -1)
    {
      swift_once();
    }

    v11 = sub_1A88C7E58();
    sub_1A85EF0E4(v11, qword_1EB303558);
    v2 = sub_1A88C7E38();
    v3 = sub_1A88C89D8();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_47;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Not processing possible availability reply for unfinished message";
    goto LABEL_46;
  }

  if ([v0 isSystemMessage])
  {
    if (qword_1EB3020C0 != -1)
    {
      swift_once();
    }

    v12 = sub_1A88C7E58();
    sub_1A85EF0E4(v12, qword_1EB303558);
    v2 = sub_1A88C7E38();
    v3 = sub_1A88C89D8();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_47;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Not processing possible availability reply for system message";
    goto LABEL_46;
  }

  if ([v0 hasLegacyUrgentTriggerMatchInText])
  {
    if (qword_1EB3020C0 != -1)
    {
      swift_once();
    }

    v13 = sub_1A88C7E58();
    sub_1A85EF0E4(v13, qword_1EB303558);
    v2 = sub_1A88C7E38();
    v3 = sub_1A88C89D8();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_47;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Not processing possible availability reply for message that is a legacy urgent trigger";
    goto LABEL_46;
  }

  return 1;
}

uint64_t sub_1A8722290()
{
  v1 = [v0 body];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 string];

  v4 = sub_1A88C82E8();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

LABEL_7:
    v25 = 0;
    return v25 & 1;
  }

  sub_1A87225D4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [objc_opt_self() bundleForClass_];
  v9 = sub_1A88C82A8();
  v10 = sub_1A88C82A8();
  v11 = sub_1A88C82A8();
  v12 = [v30 localizedStringForKey:v9 value:v10 table:v11];

  v13 = sub_1A88C82E8();
  v28 = v14;
  v29 = v13;

  v33 = v4;
  v34 = v6;
  v15 = sub_1A88C6ED8();
  v27 = &v27;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v18);
  v19 = sub_1A88C6EB8();
  MEMORY[0x1EEE9AC00](v19);
  v20 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C6EA8();
  sub_1A88C6EC8();
  v21 = *(v16 + 8);
  v21(v20, v15);
  v21(v20, v15);
  sub_1A8722620();
  v22 = sub_1A88C8C58();
  v24 = v23;
  v21(v20, v15);

  v33 = v22;
  v34 = v24;
  v31 = v29;
  v32 = v28;
  v25 = sub_1A88C8C68();

  return v25 & 1;
}

unint64_t sub_1A87225D4()
{
  result = qword_1ED8C9380;
  if (!qword_1ED8C9380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8C9380);
  }

  return result;
}

unint64_t sub_1A8722620()
{
  result = qword_1EB300848;
  if (!qword_1EB300848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB300848);
  }

  return result;
}

id sub_1A87226E4(uint64_t a1, uint64_t a2, void *a3, void *a4, SEL *a5)
{
  v8 = objc_opt_self();
  v9 = a3;
  v10 = a4;
  v11 = [v8 sharedManager];
  v12 = [v11 *a5];

  return v12;
}

id sub_1A8722860(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  if (a4)
  {
    sub_1A88C82E8();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_opt_self();
  v10 = a3;
  v11 = [v9 sharedManager];
  if (v8)
  {
    v12 = sub_1A88C82A8();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v11 *a5];

  return v13;
}

IMCTRCSUtilities __swiftcall IMCTRCSUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IMCTRCSUtilities()
{
  result = qword_1EB303570;
  if (!qword_1EB303570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB303570);
  }

  return result;
}

id sub_1A8722AB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [objc_opt_self() sharedManager];
  v7 = a2;
  v8 = v6;
  if (!v7)
  {
    v9 = 0;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = sub_1A88C82A8();
  if (a4)
  {
LABEL_3:
    a4 = sub_1A88C82A8();
  }

LABEL_4:
  v10 = [v8 enabledForPhoneNumber:v9 simID:a4];

  return v10;
}

__n128 sub_1A8722B6C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A8722B90(uint64_t a1)
{
  v2 = sub_1A8723304();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8722BCC(uint64_t a1)
{
  v2 = sub_1A8723304();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8722C08()
{
  v0 = qword_1EB303578;

  return v0;
}

unint64_t sub_1A8722CFC()
{
  result = qword_1EB303598;
  if (!qword_1EB303598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303598);
  }

  return result;
}

unint64_t sub_1A8722D50()
{
  result = qword_1EB3035A0;
  if (!qword_1EB3035A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3035A0);
  }

  return result;
}

unint64_t sub_1A8722DA4(uint64_t a1)
{
  result = sub_1A8722DCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8722DCC()
{
  result = qword_1EB3035A8;
  if (!qword_1EB3035A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3035A8);
  }

  return result;
}

unint64_t sub_1A8722E20(uint64_t a1)
{
  result = sub_1A8722E48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8722E48()
{
  result = qword_1EB3035B0;
  if (!qword_1EB3035B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3035B0);
  }

  return result;
}

uint64_t sub_1A8722E9C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v14[1] = a3;
  v8 = sub_1A870CCE0(a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - v10;
  sub_1A870C278(a1, a1[3]);
  a6();
  sub_1A88C95C8();
  v16 = 0;
  v12 = v14[2];
  sub_1A88C9278();
  if (!v12)
  {
    v15 = 1;
    sub_1A88C9298();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1A8723034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449554774616863 && a2 == 0xE800000000000000;
  if (v6 || (sub_1A88C9398() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A89173C0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A88C9398();

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

uint64_t sub_1A8723118(uint64_t a1)
{
  v2 = sub_1A8723900();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8723154(uint64_t a1)
{
  v2 = sub_1A8723900();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8723190()
{
  v0 = qword_1EB303588;

  return v0;
}

void sub_1A87231C8(void *a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1A88C82A8();
  [a1 chat:v4 lastMessageTimeStampOnLoadUpdated:v3];
}

void sub_1A8723278(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X4>, void (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v9 = sub_1A8723710(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = v7;
    *(a5 + 8) = v8;
    *(a5 + 16) = v9;
  }
}

unint64_t sub_1A8723304()
{
  result = qword_1EB3035C0;
  if (!qword_1EB3035C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3035C0);
  }

  return result;
}

uint64_t sub_1A8723358(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1A87233A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A8723404()
{
  result = qword_1EB3035D0;
  if (!qword_1EB3035D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3035D0);
  }

  return result;
}

uint64_t sub_1A8723484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A87234C0()
{
  result = qword_1EB3035D8;
  if (!qword_1EB3035D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3035D8);
  }

  return result;
}

unint64_t sub_1A8723514()
{
  result = qword_1EB3035E0;
  if (!qword_1EB3035E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3035E0);
  }

  return result;
}

unint64_t sub_1A8723568(uint64_t a1)
{
  result = sub_1A8723590();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8723590()
{
  result = qword_1EB3035E8;
  if (!qword_1EB3035E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3035E8);
  }

  return result;
}

unint64_t sub_1A87235E4(uint64_t a1)
{
  result = sub_1A872360C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A872360C()
{
  result = qword_1EB3035F0;
  if (!qword_1EB3035F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3035F0);
  }

  return result;
}

unint64_t sub_1A8723664()
{
  result = qword_1EB3035F8;
  if (!qword_1EB3035F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3035F8);
  }

  return result;
}

unint64_t sub_1A87236BC()
{
  result = qword_1EB303600;
  if (!qword_1EB303600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303600);
  }

  return result;
}

double sub_1A8723710(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v8 = sub_1A870CCE0(a2);
  v14 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1A870C278(a1, a1[3]);
  a4();
  sub_1A88C95A8();
  if (!v4)
  {
    v11 = v14;
    v16 = 0;
    sub_1A88C9108();
    v15 = 1;
    sub_1A88C9128();
    v5 = v13;
    (*(v11 + 8))(v10, v8);
  }

  sub_1A85F1084(a1);
  return v5;
}

unint64_t sub_1A8723900()
{
  result = qword_1EB303610;
  if (!qword_1EB303610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303610);
  }

  return result;
}

unint64_t sub_1A8723968()
{
  result = qword_1EB303620;
  if (!qword_1EB303620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303620);
  }

  return result;
}

unint64_t sub_1A87239C0()
{
  result = qword_1EB303628;
  if (!qword_1EB303628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303628);
  }

  return result;
}

unint64_t sub_1A8723A18()
{
  result = qword_1EB303630;
  if (!qword_1EB303630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303630);
  }

  return result;
}

id IMActionOpenApp.init(dictionary:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1A88C8188();

  v2 = [v0 initWithDictionary_];

  return v2;
}

id IMActionOpenApp.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_1A85F5F40(7107189, 0xE300000000000000), (v5 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v4, v9);

    if (swift_dynamicCast())
    {
      v6 = sub_1A88C82A8();

      v7 = [v2 initWithUrl_];

      return v7;
    }
  }

  else
  {
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id IMActionOpenApp.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IMActionOpenApp()
{
  result = qword_1EB303710;
  if (!qword_1EB303710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB303710);
  }

  return result;
}

uint64_t sub_1A8723F2C(uint64_t a1)
{
  v2 = sub_1A870CCE0(&qword_1EB303720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A8723F94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1A8723FDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A872402C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v7 = sub_1A870CCE0(&qword_1EB303780);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  sub_1A870C278(a1, a1[3]);
  sub_1A87248FC();
  sub_1A88C95C8();
  v15 = a2;
  v14 = 0;
  sub_1A870CCE0(&qword_1EB303770);
  sub_1A8724950(&qword_1EB303788);
  sub_1A88C92C8();
  if (!v4)
  {
    v13 = 1;
    sub_1A88C9278();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1A8724204()
{
  if (*v0)
  {
    return 0x44497972657571;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_1A8724244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001BLL && 0x80000001A8917480 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x44497972657571 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A88C9398();

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

uint64_t sub_1A872432C(uint64_t a1)
{
  v2 = sub_1A87248FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8724368(uint64_t a1)
{
  v2 = sub_1A87248FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A87243A4()
{
  v0 = qword_1EB303728;

  return v0;
}

void sub_1A87243DC(void *a1)
{
  if (sub_1A88762CC(*v1))
  {
    sub_1A870CCE0(&qword_1EB303758);
    v3 = sub_1A88C8188();

    v4 = sub_1A88C82A8();
    [a1 loadedRecoverableMessagesMetadata:v3 queryID:v4];
  }
}

uint64_t sub_1A87244BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A87246DC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1A872450C(uint64_t a1)
{
  *(a1 + 8) = sub_1A872453C();
  result = sub_1A8724590();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A872453C()
{
  result = qword_1EB303738;
  if (!qword_1EB303738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303738);
  }

  return result;
}

unint64_t sub_1A8724590()
{
  result = qword_1EB303740;
  if (!qword_1EB303740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303740);
  }

  return result;
}

unint64_t sub_1A87245E4(uint64_t a1)
{
  result = sub_1A872460C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A872460C()
{
  result = qword_1EB303748;
  if (!qword_1EB303748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303748);
  }

  return result;
}

unint64_t sub_1A8724660(uint64_t a1)
{
  result = sub_1A8724688();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8724688()
{
  result = qword_1EB303750;
  if (!qword_1EB303750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303750);
  }

  return result;
}

uint64_t sub_1A87246DC(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB303760);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_1A870C278(a1, v7);
  sub_1A87248FC();
  sub_1A88C95A8();
  if (!v1)
  {
    sub_1A870CCE0(&qword_1EB303770);
    v9[7] = 0;
    sub_1A8724950(&qword_1EB303778);
    sub_1A88C9158();
    v7 = v10;
    v9[6] = 1;
    sub_1A88C9108();
    (*(v4 + 8))(v6, v3);
  }

  sub_1A85F1084(a1);
  return v7;
}

unint64_t sub_1A87248FC()
{
  result = qword_1EB303768;
  if (!qword_1EB303768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303768);
  }

  return result;
}

uint64_t sub_1A8724950(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB303770);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A87249B4()
{
  result = qword_1EB303790;
  if (!qword_1EB303790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303790);
  }

  return result;
}

unint64_t sub_1A8724A0C()
{
  result = qword_1EB303798;
  if (!qword_1EB303798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303798);
  }

  return result;
}

unint64_t sub_1A8724A64()
{
  result = qword_1EB3037A0;
  if (!qword_1EB3037A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3037A0);
  }

  return result;
}

uint64_t sub_1A8724AB8()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB300380);
  sub_1A85EF0E4(v0, qword_1EB300380);
  return sub_1A88C7E48();
}

uint64_t sub_1A8724B3C()
{
  type metadata accessor for RemoteIntentBroadcastCenter();
  v0 = swift_allocObject();
  result = sub_1A87267E0();
  qword_1EB300468 = v0;
  return result;
}

uint64_t static RemoteIntentBroadcastCenter.shared.getter()
{
  if (qword_1EB300460 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A8724BD8()
{
  v0 = sub_1A88C7EA8();
  sub_1A85EFC04(v0, qword_1EB300480);
  *sub_1A85EF0E4(v0, qword_1EB300480) = 50;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t static RemoteIntentBroadcastCenter.defaultRateLimitInterval.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB300478 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7EA8();
  v3 = sub_1A85EF0E4(v2, qword_1EB300480);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A8724D10()
{
  sub_1A870CCE0(&qword_1EB3037E0);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  off_1EB3004C8 = result;
  return result;
}

uint64_t static RemoteIntentBroadcastCenter.hasObserver.getter()
{
  if (qword_1EB3004C0 != -1)
  {
    swift_once();
  }

  v0 = off_1EB3004C8;
  os_unfair_lock_lock(off_1EB3004C8 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v0[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v0 + 5);
  return os_unfair_lock_opaque_low;
}

void sub_1A8724DC0(char a1)
{
  if (qword_1EB3004C0 != -1)
  {
    swift_once();
  }

  v2 = off_1EB3004C8;
  os_unfair_lock_lock(off_1EB3004C8 + 5);
  *(v2 + 16) = a1 & 1;
  os_unfair_lock_unlock(v2 + 5);
  if (qword_1EB300378 != -1)
  {
    swift_once();
  }

  v3 = sub_1A88C7E58();
  sub_1A85EF0E4(v3, qword_1EB300380);
  v4 = sub_1A88C7E38();
  v5 = sub_1A88C89D8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a1 & 1;
    _os_log_impl(&dword_1A85E5000, v4, v5, "DaemonBroadCastEntity.hasObserver changed to: %{BOOL}d", v6, 8u);
    MEMORY[0x1AC571F20](v6, -1, -1);
  }

  if ((a1 & 1) == 0)
  {
    v7 = sub_1A88C7E38();
    v8 = sub_1A88C89D8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A85E5000, v7, v8, "We no longer have an observer, resetting all state.", v9, 2u);
      MEMORY[0x1AC571F20](v9, -1, -1);
    }

    sub_1A872886C();
  }
}

uint64_t sub_1A8724F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 184) = a1;
  *(v4 + 192) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A8724FBC, 0, 0);
}

uint64_t sub_1A8724FBC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[25] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[26] = v2;
    v0[27] = sub_1A8728DE8();
    *v2 = v0;
    v2[1] = sub_1A87250D8;

    return MEMORY[0x1EEDB2C30]();
  }

  else
  {
    *(v0[23] + 24) = MEMORY[0x1E69E7CA8] + 8;
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1A87250D8(char a1)
{
  v3 = *v2;
  *(v3 + 361) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = sub_1A8725F0C;
  }

  else
  {
    v4 = sub_1A87251F0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A87251F0()
{
  if (qword_1EB300378 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB300380);
  v2 = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 361);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1A85E5000, v2, v3, "Started listening for observation changes with initial hasObserver value: %{BOOL}d", v5, 8u);
    MEMORY[0x1AC571F20](v5, -1, -1);
  }

  *(v0 + 232) = sub_1A88C8768();
  *(v0 + 240) = sub_1A88C8758();
  v7 = sub_1A88C86D8();

  return MEMORY[0x1EEE6DFA0](sub_1A8725354, v7, v6);
}

uint64_t sub_1A8725354()
{
  v1 = *(v0 + 361);

  sub_1A8724DC0(v1);
  v2 = swift_task_alloc();
  *(v0 + 248) = v2;
  *v2 = v0;
  v2[1] = sub_1A8725414;

  return MEMORY[0x1EEDB2C40](v0 + 16);
}

uint64_t sub_1A8725414()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_1A87260D8;
  }

  else
  {
    v2 = sub_1A8725528;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A8725528()
{
  v1 = v0[5];
  v2 = sub_1A870C278(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_1A871E00C(v0 + 7);
  sub_1A88C8898();

  v5 = v0[10];
  v6 = v0[11];
  v0[33] = v5;
  v0[34] = v6;
  sub_1A8606088((v0 + 7), v5);
  v0[35] = swift_getAssociatedTypeWitness();
  v7 = sub_1A88C8BE8();
  v0[36] = v7;
  v0[37] = *(v7 - 8);
  v8 = swift_task_alloc();
  v0[38] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[39] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v0[40] = v10;
  v0[41] = *(v10 + 64);
  v11 = swift_task_alloc();
  v0[42] = v11;
  v12 = swift_task_alloc();
  v0[43] = v12;
  *v12 = v0;
  v12[1] = sub_1A87257F4;

  return MEMORY[0x1EEE6D8D0](v8, 0, 0, v11, v5, v6);
}

uint64_t sub_1A87257F4()
{

  if (v0)
  {
    v1 = sub_1A87262A4;
  }

  else
  {

    v1 = sub_1A872590C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A872590C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 288);
    v5 = *(v0 + 296);

    (*(v5 + 8))(v1, v4);

    sub_1A85F1084(v0 + 56);
    sub_1A85F1084(v0 + 16);
    *(*(v0 + 184) + 24) = MEMORY[0x1E69E7CA8] + 8;
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    *(v0 + 120) = v2;
    v8 = sub_1A871E00C((v0 + 96));
    (*(v3 + 32))(v8, v1, v2);

    sub_1A85E99B0((v0 + 96), (v0 + 128));
    if (swift_dynamicCast())
    {
      *(v0 + 362) = *(v0 + 360);
      *(v0 + 352) = sub_1A88C8758();
      v10 = sub_1A88C86D8();

      return MEMORY[0x1EEE6DFA0](sub_1A8725CB8, v10, v9);
    }

    else
    {
      v11 = *(v0 + 80);
      v12 = *(v0 + 88);
      *(v0 + 264) = v11;
      *(v0 + 272) = v12;
      sub_1A8606088(v0 + 56, v11);
      *(v0 + 280) = swift_getAssociatedTypeWitness();
      v13 = sub_1A88C8BE8();
      *(v0 + 288) = v13;
      *(v0 + 296) = *(v13 - 8);
      v14 = swift_task_alloc();
      *(v0 + 304) = v14;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      *(v0 + 312) = AssociatedTypeWitness;
      v16 = *(AssociatedTypeWitness - 8);
      *(v0 + 320) = v16;
      *(v0 + 328) = *(v16 + 64);
      v17 = swift_task_alloc();
      *(v0 + 336) = v17;
      v18 = swift_task_alloc();
      *(v0 + 344) = v18;
      *v18 = v0;
      v18[1] = sub_1A87257F4;

      return MEMORY[0x1EEE6D8D0](v14, 0, 0, v17, v11, v12);
    }
  }
}

uint64_t sub_1A8725CB8()
{
  v1 = *(v0 + 362);

  sub_1A8724DC0(v1);

  return MEMORY[0x1EEE6DFA0](sub_1A8725D30, 0, 0);
}

uint64_t sub_1A8725D30()
{
  v1 = v0[10];
  v2 = v0[11];
  v0[33] = v1;
  v0[34] = v2;
  sub_1A8606088((v0 + 7), v1);
  v0[35] = swift_getAssociatedTypeWitness();
  v3 = sub_1A88C8BE8();
  v0[36] = v3;
  v0[37] = *(v3 - 8);
  v4 = swift_task_alloc();
  v0[38] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[39] = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  v0[40] = v6;
  v0[41] = *(v6 + 64);
  v7 = swift_task_alloc();
  v0[42] = v7;
  v8 = swift_task_alloc();
  v0[43] = v8;
  *v8 = v0;
  v8[1] = sub_1A87257F4;

  return MEMORY[0x1EEE6D8D0](v4, 0, 0, v7, v1, v2);
}

uint64_t sub_1A8725F0C()
{
  v1 = v0[28];
  if (qword_1EB300378 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB300380);
  v3 = v1;
  v4 = sub_1A88C7E38();
  v5 = sub_1A88C89C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1A85E5000, v4, v5, "Caught error while setting up observation. Broadcasts will not function correctly: %@", v6, 0xCu);
    sub_1A85EF638(v7, &qword_1EB306540);
    MEMORY[0x1AC571F20](v7, -1, -1);
    MEMORY[0x1AC571F20](v6, -1, -1);
  }

  else
  {
  }

  *(v0[23] + 24) = MEMORY[0x1E69E7CA8] + 8;
  v10 = v0[1];

  return v10();
}

uint64_t sub_1A87260D8()
{
  v1 = v0[32];
  if (qword_1EB300378 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB300380);
  v3 = v1;
  v4 = sub_1A88C7E38();
  v5 = sub_1A88C89C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1A85E5000, v4, v5, "Caught error while setting up observation. Broadcasts will not function correctly: %@", v6, 0xCu);
    sub_1A85EF638(v7, &qword_1EB306540);
    MEMORY[0x1AC571F20](v7, -1, -1);
    MEMORY[0x1AC571F20](v6, -1, -1);
  }

  else
  {
  }

  *(v0[23] + 24) = MEMORY[0x1E69E7CA8] + 8;
  v10 = v0[1];

  return v10();
}

uint64_t sub_1A87262A4()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[40];
  v4 = swift_task_alloc();
  v5 = *(v3 + 32);
  v5(v4, v1, v2);
  swift_getAssociatedConformanceWitness();
  v6 = sub_1A88C9378();
  if (v6)
  {
    v7 = v6;
    (*(v0[40] + 8))(v4, v0[39]);
  }

  else
  {
    v8 = v0[39];
    v7 = swift_allocError();
    v5(v9, v4, v8);
  }

  sub_1A85F1084((v0 + 7));
  sub_1A85F1084((v0 + 2));
  if (qword_1EB300378 != -1)
  {
    swift_once();
  }

  v10 = sub_1A88C7E58();
  sub_1A85EF0E4(v10, qword_1EB300380);
  v11 = v7;
  v12 = sub_1A88C7E38();
  v13 = sub_1A88C89C8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v7;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_1A85E5000, v12, v13, "Caught error while setting up observation. Broadcasts will not function correctly: %@", v14, 0xCu);
    sub_1A85EF638(v15, &qword_1EB306540);
    MEMORY[0x1AC571F20](v15, -1, -1);
    MEMORY[0x1AC571F20](v14, -1, -1);
  }

  else
  {
  }

  *(v0[23] + 24) = MEMORY[0x1E69E7CA8] + 8;
  v18 = v0[1];

  return v18();
}

uint64_t sub_1A8726564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1A8728D80(a3, v22 - v9, &unk_1EB3090D0);
  v11 = sub_1A88C87A8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1A85EF638(v10, &unk_1EB3090D0);
  }

  else
  {
    sub_1A88C8798();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1A88C86D8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1A88C8358() + 32;

      sub_1A870CCE0(&qword_1EB3037A8);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A870CCE0(&qword_1EB3037A8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1A87267E0()
{
  v1 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = OBJC_IVAR____TtC17IMSharedUtilities27RemoteIntentBroadcastCenter_lastRequestTime;
  v5 = sub_1A88C7F28();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC17IMSharedUtilities27RemoteIntentBroadcastCenter_rateLimitInterval;
  if (qword_1EB300478 != -1)
  {
    swift_once();
  }

  v7 = sub_1A88C7EA8();
  v8 = sub_1A85EF0E4(v7, qword_1EB300480);
  (*(*(v7 - 8) + 16))(v0 + v6, v8, v7);
  *(v0 + OBJC_IVAR____TtC17IMSharedUtilities27RemoteIntentBroadcastCenter_nextNotificationTimer) = 0;
  v9 = OBJC_IVAR____TtC17IMSharedUtilities27RemoteIntentBroadcastCenter_broadcastCache;
  type metadata accessor for RemoteIntentBroadcastCache();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = 50;
  *(v10 + 24) = v11;
  *(v0 + v9) = v10;
  v12 = OBJC_IVAR____TtC17IMSharedUtilities27RemoteIntentBroadcastCenter_observerTask;
  *(v0 + OBJC_IVAR____TtC17IMSharedUtilities27RemoteIntentBroadcastCenter_observerTask) = 0;
  v13 = sub_1A88C87A8();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v14;
  v16 = sub_1A8726564(0, 0, v3, &unk_1A88E40A0, v15);
  sub_1A85EF638(v3, &unk_1EB3090D0);
  *(v0 + v12) = v16;

  return v0;
}

uint64_t RemoteIntentBroadcastCenter.deinit()
{
  if (*(v0 + OBJC_IVAR____TtC17IMSharedUtilities27RemoteIntentBroadcastCenter_observerTask))
  {

    sub_1A870CCE0(&qword_1EB3037A8);
    sub_1A870CCE0(&unk_1EB3037B0);
    sub_1A88C8848();
  }

  sub_1A85EF638(v0 + OBJC_IVAR____TtC17IMSharedUtilities27RemoteIntentBroadcastCenter_lastRequestTime, &unk_1EB3037C0);
  v1 = OBJC_IVAR____TtC17IMSharedUtilities27RemoteIntentBroadcastCenter_rateLimitInterval;
  v2 = sub_1A88C7EA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t RemoteIntentBroadcastCenter.__deallocating_deinit()
{
  if (*(v0 + OBJC_IVAR____TtC17IMSharedUtilities27RemoteIntentBroadcastCenter_observerTask))
  {

    sub_1A870CCE0(&qword_1EB3037A8);
    sub_1A870CCE0(&unk_1EB3037B0);
    sub_1A88C8848();
  }

  sub_1A85EF638(v0 + OBJC_IVAR____TtC17IMSharedUtilities27RemoteIntentBroadcastCenter_lastRequestTime, &unk_1EB3037C0);
  v1 = OBJC_IVAR____TtC17IMSharedUtilities27RemoteIntentBroadcastCenter_rateLimitInterval;
  v2 = sub_1A88C7EA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1A8726CA0(uint64_t a1)
{
  if (qword_1EB3004C0 != -1)
  {
    swift_once();
  }

  v2 = off_1EB3004C8;
  os_unfair_lock_lock(off_1EB3004C8 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v2[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v2 + 5);
  if (os_unfair_lock_opaque_low == 1)
  {
    if (qword_1EB300378 != -1)
    {
      swift_once();
    }

    v4 = sub_1A88C7E58();
    sub_1A85EF0E4(v4, qword_1EB300380);
    sub_1A86061B4(a1, v18);
    v5 = sub_1A88C7E38();
    v6 = sub_1A88C89B8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      sub_1A870C278(v18, v18[3]);
      swift_getDynamicType();
      v9 = sub_1A88C96D8();
      v11 = v10;
      sub_1A85F1084(v18);
      v12 = sub_1A85F0394(v9, v11, &v17);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1A85E5000, v5, v6, "Recording broadcast for payload type: %s", v7, 0xCu);
      sub_1A85F1084(v8);
      MEMORY[0x1AC571F20](v8, -1, -1);
      MEMORY[0x1AC571F20](v7, -1, -1);
    }

    else
    {

      sub_1A85F1084(v18);
    }

    sub_1A8758348(a1);

    sub_1A8727AB8();
  }

  else
  {
    if (qword_1EB300378 != -1)
    {
      swift_once();
    }

    v13 = sub_1A88C7E58();
    sub_1A85EF0E4(v13, qword_1EB300380);
    oslog = sub_1A88C7E38();
    v14 = sub_1A88C89B8();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1A85E5000, oslog, v14, "Broadcast requested, but we don't have an observer. Bailing.", v15, 2u);
      MEMORY[0x1AC571F20](v15, -1, -1);
    }
  }
}

void sub_1A8726F94()
{
  v35 = sub_1A88C6C48();
  isa = v35[-1].isa;
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1A88C6C68();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC17IMSharedUtilities27RemoteIntentBroadcastCenter_nextNotificationTimer;
  if (*(v0 + OBJC_IVAR____TtC17IMSharedUtilities27RemoteIntentBroadcastCenter_nextNotificationTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1A88C8AF8();
    swift_unknownObjectRelease();
  }

  *(v0 + v5) = 0;
  swift_unknownObjectRelease();
  v6 = sub_1A8727498();
  v31 = *(v6 + 16);
  if (v31)
  {
    if (qword_1EB300378 != -1)
    {
LABEL_19:
      swift_once();
    }

    v7 = sub_1A88C7E58();
    sub_1A85EF0E4(v7, qword_1EB300380);

    v8 = sub_1A88C7E38();
    v9 = sub_1A88C89D8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v36 = v11;
      *v10 = 136315138;
      v12 = sub_1A870CCE0(&unk_1EB3037D0);
      v13 = MEMORY[0x1AC56EED0](v6, v12);
      v15 = sub_1A85F0394(v13, v14, &v36);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1A85E5000, v8, v9, "Posting notification event for entities: %s", v10, 0xCu);
      sub_1A85F1084(v11);
      MEMORY[0x1AC571F20](v11, -1, -1);
      MEMORY[0x1AC571F20](v10, -1, -1);
    }

    v16 = 0;
    v30 = *MEMORY[0x1E6959DC8];
    v29 = isa + 13;
    v17 = isa + 1;
    v18 = (v3 + 8);
    v19 = v6 + 40;
    v20 = v32;
    do
    {
      if (v16 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      ++v16;
      v3 = *(v19 - 8);
      v21 = v6;
      v22 = v34;
      isa = v35;
      (v29->isa)(v34, v30, v35);
      sub_1A88C6C88();
      v23 = v22;
      v6 = v21;
      (v17->isa)(v23, isa);
      sub_1A88C6C58();
      (*v18)(v20, v33);
      v19 += 16;
    }

    while (v31 != v16);
  }

  else
  {

    if (qword_1EB300378 != -1)
    {
      swift_once();
    }

    v24 = sub_1A88C7E58();
    sub_1A85EF0E4(v24, qword_1EB300380);
    v35 = sub_1A88C7E38();
    v25 = sub_1A88C89D8();
    if (os_log_type_enabled(v35, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1A85F0394(0x2928796669746F6ELL, 0xE800000000000000, &v36);
      _os_log_impl(&dword_1A85E5000, v35, v25, "%s Didn't have any app entities for posting notifications.", v26, 0xCu);
      sub_1A85F1084(v27);
      MEMORY[0x1AC571F20](v27, -1, -1);
      MEMORY[0x1AC571F20](v26, -1, -1);
    }

    else
    {
      v28 = v35;
    }
  }
}

uint64_t sub_1A8727498()
{
  v1 = *(v0 + OBJC_IVAR____TtC17IMSharedUtilities27RemoteIntentBroadcastCenter_broadcastCache);
  swift_beginAccess();
  v2 = *(v1 + 24);
  v38 = *(v2 + 16);
  if (!v38)
  {
    goto LABEL_18;
  }

  v3 = v2 + 32;

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC8];
  v37 = v4;
  do
  {
    if (v5 >= *(v4 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      result = sub_1A88C9488();
      __break(1u);
      return result;
    }

    v39 = v5;
    v40 = v3;
    sub_1A86061B4(v3, v41);
    sub_1A870C278(v41, v41[3]);
    DynamicType = swift_getDynamicType();
    v9 = v42;
    v10 = *(v42 + 40);
    v10(DynamicType, v42);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v12 = *(AssociatedConformanceWitness + 16);
    v13 = swift_checkMetadataState();
    v14 = v12(v13, AssociatedConformanceWitness);
    v16 = v15;
    v17 = (v10)(DynamicType, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_1A85F5F40(v14, v16);
    v21 = v6[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_22;
    }

    v24 = v19;
    if (v6[3] >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A87B1690();
      }
    }

    else
    {
      sub_1A8879614(v23, isUniquelyReferenced_nonNull_native);
      v25 = sub_1A85F5F40(v14, v16);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_24;
      }

      v20 = v25;
    }

    v27 = *(*(AssociatedConformanceWitness + 8) + 8);
    if (v24)
    {

      v7 = (v6[7] + 16 * v20);
      *v7 = v17;
      v7[1] = v27;
      sub_1A85F1084(v41);
    }

    else
    {
      v6[(v20 >> 6) + 8] |= 1 << v20;
      v28 = (v6[6] + 16 * v20);
      *v28 = v14;
      v28[1] = v16;
      v29 = (v6[7] + 16 * v20);
      *v29 = v17;
      v29[1] = v27;
      sub_1A85F1084(v41);
      v30 = v6[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_23;
      }

      v6[2] = v32;
    }

    v5 = v39 + 1;
    v3 = v40 + 40;
    v4 = v37;
  }

  while (v38 != v39 + 1);

  v33 = v6[2];
  if (v33)
  {
    while (1)
    {
      v34 = sub_1A8736610(v33, 0);
      v35 = sub_1A8737700(v41, v34 + 2, v33, v6);
      sub_1A85EF290();
      if (v35 == v33)
      {
        break;
      }

      __break(1u);
LABEL_18:
      v6 = MEMORY[0x1E69E7CC8];
      v33 = *(MEMORY[0x1E69E7CC8] + 16);
      if (!v33)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:

    return MEMORY[0x1E69E7CC0];
  }

  return v34;
}

uint64_t sub_1A87277D0(uint64_t a1, unint64_t a2)
{
  v5 = OBJC_IVAR____TtC17IMSharedUtilities27RemoteIntentBroadcastCenter_broadcastCache;

  v6 = sub_1A875885C(a1, a2);

  if (qword_1EB300378 != -1)
  {
    swift_once();
  }

  v7 = sub_1A88C7E58();
  sub_1A85EF0E4(v7, qword_1EB300380);

  v8 = sub_1A88C7E38();
  v9 = sub_1A88C89A8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_1A85F0394(0xD000000000000018, 0x80000001A8917550, v19);
    *(v10 + 12) = 2048;
    *(v10 + 14) = *(v6 + 16);

    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_1A85F0394(a1, a2, v19);
    _os_log_impl(&dword_1A85E5000, v8, v9, "%s: returning %ld cached broadcasts matching identifier: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v11, -1, -1);
    MEMORY[0x1AC571F20](v10, -1, -1);
  }

  else
  {
  }

  v12 = *(v2 + v5);
  swift_beginAccess();
  if (!*(*(v12 + 24) + 16))
  {
    v13 = sub_1A88C7E38();
    v14 = sub_1A88C89A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1A85F0394(0xD000000000000018, 0x80000001A8917550, &v18);
      _os_log_impl(&dword_1A85E5000, v13, v14, "%s: there are no remaining cached broadcasts. Resetting state.", v15, 0xCu);
      sub_1A85F1084(v16);
      MEMORY[0x1AC571F20](v16, -1, -1);
      MEMORY[0x1AC571F20](v15, -1, -1);
    }

    sub_1A872886C();
  }

  return v6;
}

void sub_1A8727AB8()
{
  v1 = sub_1A88C7EA8();
  isa = v1[-1].isa;
  v52 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v50 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A870CCE0(&unk_1EB3037C0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v47 - v7;
  v9 = sub_1A88C7F28();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v47 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v47 - v17;
  if (qword_1EB3004C0 != -1)
  {
    swift_once();
  }

  v19 = off_1EB3004C8;
  os_unfair_lock_lock(off_1EB3004C8 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v19[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v19 + 5);
  if (os_unfair_lock_opaque_low == 1)
  {
    sub_1A88C7F08();
    v21 = OBJC_IVAR____TtC17IMSharedUtilities27RemoteIntentBroadcastCenter_lastRequestTime;
    swift_beginAccess();
    sub_1A8728D80(v0 + v21, v8, &unk_1EB3037C0);
    v22 = (*(v10 + 48))(v8, 1, v9);
    v49 = v13;
    if (v22 == 1)
    {
      sub_1A85EF638(v8, &unk_1EB3037C0);
      v23 = 1;
    }

    else
    {
      (*(v10 + 32))(v16, v8, v9);
      v29 = isa;
      v28 = v52;
      v30 = *(isa + 2);
      v48 = v10;
      v31 = v50;
      v30(v50, v0 + OBJC_IVAR____TtC17IMSharedUtilities27RemoteIntentBroadcastCenter_rateLimitInterval, v52);
      MEMORY[0x1AC56E810](v16, v31);
      v32 = v31;
      v10 = v48;
      (*(v29 + 1))(v32, v28);
      sub_1A8728C74();
      v33 = sub_1A88C8288();
      v34 = v13;
      v23 = v33;
      v35 = v18;
      v36 = *(v10 + 8);
      v36(v34, v9);
      v36(v16, v9);
      v18 = v35;
    }

    (*(v10 + 16))(v6, v18, v9);
    (*(v10 + 56))(v6, 0, 1, v9);
    swift_beginAccess();
    sub_1A8728C04(v6, v0 + v21);
    swift_endAccess();
    if (v23)
    {
      v37 = v18;
      if (qword_1EB300378 != -1)
      {
        swift_once();
      }

      v38 = sub_1A88C7E58();
      sub_1A85EF0E4(v38, qword_1EB300380);
      v39 = sub_1A88C7E38();
      v40 = sub_1A88C89A8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1A85E5000, v39, v40, "Posting broadcast notification immediately.", v41, 2u);
        MEMORY[0x1AC571F20](v41, -1, -1);
      }

      sub_1A8726F94();
      (*(v10 + 8))(v37, v9);
    }

    else
    {
      v43 = v50;
      v42 = isa;
      v44 = v52;
      (*(isa + 2))(v50, v0 + OBJC_IVAR____TtC17IMSharedUtilities27RemoteIntentBroadcastCenter_rateLimitInterval, v52);
      v45 = v49;
      MEMORY[0x1AC56E810](v18, v43);
      (*(v42 + 1))(v43, v44);
      sub_1A8728128(v45);
      v46 = *(v10 + 8);
      v46(v45, v9);
      v46(v18, v9);
    }
  }

  else
  {
    if (qword_1EB300378 != -1)
    {
      swift_once();
    }

    v24 = sub_1A88C7E58();
    sub_1A85EF0E4(v24, qword_1EB300380);
    v52 = sub_1A88C7E38();
    v25 = sub_1A88C89B8();
    if (os_log_type_enabled(v52, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1A85E5000, v52, v25, "notifyWhenAllowed() called, but we don't have an observer. Bailing.", v26, 2u);
      MEMORY[0x1AC571F20](v26, -1, -1);
    }

    v27 = v52;
  }
}

void sub_1A8728128(uint64_t a1)
{
  v55 = a1;
  v2 = sub_1A88C7EA8();
  v56 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v44 - v6;
  v8 = sub_1A88C7EC8();
  v54 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A88C7EF8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A88C8AB8();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC17IMSharedUtilities27RemoteIntentBroadcastCenter_nextNotificationTimer))
  {
    if (qword_1EB300378 != -1)
    {
      swift_once();
    }

    v20 = sub_1A88C7E58();
    sub_1A85EF0E4(v20, qword_1EB300380);
    v56 = sub_1A88C7E38();
    v21 = sub_1A88C89A8();
    if (os_log_type_enabled(v56, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1A85E5000, v56, v21, "Rate limiting broadcast. A timer is running.", v22, 2u);
      MEMORY[0x1AC571F20](v22, -1, -1);
    }

    v23 = v56;
  }

  else
  {
    v44 = v17;
    v45 = v16;
    v46 = v14;
    v47 = v12;
    v48 = v10;
    v49 = OBJC_IVAR____TtC17IMSharedUtilities27RemoteIntentBroadcastCenter_nextNotificationTimer;
    v50 = v8;
    v51 = v7;
    v52 = v2;
    v53 = v1;
    if (qword_1EB300378 != -1)
    {
      swift_once();
    }

    v24 = sub_1A88C7E58();
    sub_1A85EF0E4(v24, qword_1EB300380);
    v25 = sub_1A88C7E38();
    v26 = sub_1A88C89A8();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v5;
    v29 = v11;
    v30 = v47;
    v31 = v48;
    if (v27)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1A85E5000, v25, v26, "Rate limiting broadcast. Scheduling a new timer.", v32, 2u);
      MEMORY[0x1AC571F20](v32, -1, -1);
    }

    sub_1A85E9718(0, &qword_1EB3007E0);
    sub_1A88C8AA8();
    sub_1A85E9718(0, &qword_1ED8C95A0);
    v33 = sub_1A88C8A38();
    v34 = sub_1A88C8AC8();

    (*(v44 + 8))(v19, v45);
    ObjectType = swift_getObjectType();
    v36 = swift_allocObject();
    v37 = v53;
    swift_weakInit();
    aBlock[4] = sub_1A8728BFC;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A85EB8C0;
    aBlock[3] = &unk_1F1BAB4F0;
    v38 = _Block_copy(aBlock);

    v39 = v46;
    j___s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
    sub_1A88A76AC();
    sub_1A88C8AE8();
    _Block_release(v38);
    (*(v54 + 8))(v31, v50);
    (*(v30 + 8))(v39, v29);

    v40 = v56;
    v42 = v51;
    v41 = v52;
    (v56[13].isa)(v51, *MEMORY[0x1E69E7F40], v52);
    sub_1A88A7768(v28);
    MEMORY[0x1AC56F410](v55, v42, v28, ObjectType);
    isa = v40[1].isa;
    isa(v28, v41);
    isa(v42, v41);
    sub_1A88C8B08();
    *(v37 + v49) = v34;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1A8728758()
{
  if (qword_1EB300378 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB300380);
  v1 = sub_1A88C7E38();
  v2 = sub_1A88C89A8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1A85E5000, v1, v2, "Timer fired. Sending notification.", v3, 2u);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A8726F94();
  }

  return result;
}

uint64_t sub_1A872886C()
{
  v1 = v0;
  if (qword_1EB300378 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB300380);
  v3 = sub_1A88C7E38();
  v4 = sub_1A88C89A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1A85F0394(0x29287465736572, 0xE700000000000000, v10);
    _os_log_impl(&dword_1A85E5000, v3, v4, "%s Removing all cached payloads, and cancelling any active timers", v5, 0xCu);
    sub_1A85F1084(v6);
    MEMORY[0x1AC571F20](v6, -1, -1);
    MEMORY[0x1AC571F20](v5, -1, -1);
  }

  v7 = OBJC_IVAR____TtC17IMSharedUtilities27RemoteIntentBroadcastCenter_nextNotificationTimer;
  if (*(v1 + OBJC_IVAR____TtC17IMSharedUtilities27RemoteIntentBroadcastCenter_nextNotificationTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1A88C8AF8();
    swift_unknownObjectRelease();
  }

  *(v1 + v7) = 0;
  swift_unknownObjectRelease();
  v8 = *(v1 + OBJC_IVAR____TtC17IMSharedUtilities27RemoteIntentBroadcastCenter_broadcastCache);
  swift_beginAccess();
  *(v8 + 24) = MEMORY[0x1E69E7CC0];
}

uint64_t type metadata accessor for RemoteIntentBroadcastCenter()
{
  result = qword_1EB300448;
  if (!qword_1EB300448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A8728A7C()
{
  sub_1A8728BA4();
  if (v0 <= 0x3F)
  {
    sub_1A88C7EA8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A8728BA4()
{
  if (!qword_1EB300338)
  {
    sub_1A88C7F28();
    v0 = sub_1A88C8BE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB300338);
    }
  }
}

uint64_t sub_1A8728C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&unk_1EB3037C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A8728C74()
{
  result = qword_1EB3007E8;
  if (!qword_1EB3007E8)
  {
    sub_1A88C7F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3007E8);
  }

  return result;
}

uint64_t sub_1A8728CCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A8714B6C;

  return sub_1A8724F9C(a1, v4, v5, v6);
}

uint64_t sub_1A8728D80(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1A870CCE0(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A8728DE8()
{
  result = qword_1EB3005D0;
  if (!qword_1EB3005D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3005D0);
  }

  return result;
}

id sub_1A8728E3C()
{
  result = sub_1A8728EB0(0, 1);
  qword_1EB3037E8 = result;
  return result;
}

id sub_1A8728E88()
{
  result = sub_1A8728EB0(4, 3);
  qword_1EB3037F0 = result;
  return result;
}

id sub_1A8728EB0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v4 setNumberStyle_];
  [v4 setMinimumFractionDigits_];
  [v4 setMaximumFractionDigits_];
  [v4 setMinimumSignificantDigits_];
  [v4 setMaximumSignificantDigits_];
  sub_1A85FC408();
  v5 = sub_1A88C8B88();
  [v4 setRoundingIncrement_];

  [v4 setRoundingMode_];
  return v4;
}

uint64_t static NSNumberFormatter.percentString(forTotal:count:)(double a1, double a2)
{
  v2 = a2 / a1;
  v3 = a1 == 0.0;
  v4 = 1.0;
  if (!v3)
  {
    v4 = v2;
  }

  return sub_1A8728FDC(v4);
}

uint64_t sub_1A8728FDC(double a1)
{
  if (a1 <= 0.0)
  {
    if (qword_1EB3020C8 != -1)
    {
      swift_once();
    }

    v4 = qword_1EB3037E8;
    sub_1A85FC408();
    v2 = sub_1A88C8B88();
    v3 = [v4 stringFromNumber_];
  }

  else
  {
    if (qword_1EB3020D0 != -1)
    {
      swift_once();
    }

    v1 = qword_1EB3037F0;
    v2 = sub_1A88C7758();
    v3 = [v1 stringFromNumber_];
  }

  v5 = v3;

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1A88C82E8();

  return v6;
}

__n128 sub_1A872912C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A8729158(uint64_t *a1, int a2)
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

uint64_t sub_1A87291A0(uint64_t result, int a2, int a3)
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

__n128 sub_1A87291F0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A8729204(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1A872924C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1A87292A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A87292B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1A8729300(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A872935C(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB303A80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A872D224();
  sub_1A88C95C8();
  v13 = *v3;
  v12 = 0;
  sub_1A870CCE0(&qword_1EB303100);
  sub_1A8716048(&qword_1EB303120);
  sub_1A88C92C8();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v13) = 1;
  sub_1A88C92F8();
  v13 = v3[2];
  v12 = 2;
  sub_1A88C92C8();
  v10 = v3[3];
  v12 = 3;
  if (v10)
  {
    v13 = v10;

    sub_1A870CCE0(&qword_1EB303A50);
    sub_1A85FB520(&qword_1EB303A68, &qword_1EB303A50);
    sub_1A88C9228();
  }

  LOBYTE(v13) = 4;
  sub_1A88C92A8();
  LOBYTE(v13) = 5;
  sub_1A88C9288();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A8729668()
{
  v1 = *v0;
  v2 = 7562345;
  v3 = 0x736567617373656DLL;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C79745374616863;
  if (v1 != 1)
  {
    v5 = 0x4E65636976726573;
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

uint64_t sub_1A8729734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A872BF7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A872975C(uint64_t a1)
{
  v2 = sub_1A872D224();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8729798(uint64_t a1)
{
  v2 = sub_1A872D224();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A87297D4()
{
  v0 = qword_1EB3037F8;

  return v0;
}

uint64_t sub_1A872980C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v3 + 16) = a2;
  *(v3 + 24) = v4;
  *(v3 + 56) = *(v2 + 8);
  *(v3 + 32) = v2[2];
  *(v3 + 40) = *(v2 + 3);
  *(v3 + 57) = *(v2 + 40);
  return MEMORY[0x1EEE6DFA0](sub_1A8729850, 0, 0);
}

uint64_t sub_1A8729850()
{
  v1 = *(v0 + 40);
  v2 = sub_1A88C85E8();
  v3 = sub_1A88C85E8();
  if (v1)
  {
    sub_1A870CCE0(&qword_1EB303320);
    v4 = sub_1A88C85E8();
  }

  else
  {
    v4 = 0;
  }

  [*(v0 + 16) markReadForIDs:v2 style:*(v0 + 56) onServices:v3 messages:v4 clientUnreadCount:*(v0 + 48) setUnreadCountToZero:*(v0 + 57)];

  v5 = *(v0 + 8);

  return v5();
}

double sub_1A8729948@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A872C194(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

unint64_t sub_1A87299D0()
{
  result = qword_1EB303848;
  if (!qword_1EB303848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303848);
  }

  return result;
}

unint64_t sub_1A8729A24()
{
  result = qword_1EB303850;
  if (!qword_1EB303850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303850);
  }

  return result;
}

unint64_t sub_1A8729A78(uint64_t a1)
{
  result = sub_1A8729AA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8729AA0()
{
  result = qword_1EB303858;
  if (!qword_1EB303858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303858);
  }

  return result;
}

uint64_t sub_1A8729B00(uint64_t a1)
{
  v2 = sub_1A872BED4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8729B3C(uint64_t a1)
{
  v2 = sub_1A872BED4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8729BBC(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB303A60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A872D1C0();
  sub_1A88C95C8();
  v13 = *v3;
  v12 = 0;
  sub_1A870CCE0(&qword_1EB303100);
  sub_1A8716048(&qword_1EB303120);
  sub_1A88C92C8();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v13) = 1;
  sub_1A88C92F8();
  v13 = v3[2];
  v12 = 2;
  sub_1A88C92C8();
  v10 = v3[3];
  v12 = 3;
  if (v10)
  {
    v13 = v10;

    sub_1A870CCE0(&qword_1EB303A50);
    sub_1A85FB520(&qword_1EB303A68, &qword_1EB303A50);
    sub_1A88C9228();
  }

  LOBYTE(v13) = 4;
  sub_1A88C92A8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A8729EA8()
{
  v1 = *v0;
  v2 = 7562345;
  v3 = 0x4E65636976726573;
  v4 = 0x736567617373656DLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C79745374616863;
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

uint64_t sub_1A8729F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A872C56C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A8729F88(uint64_t a1)
{
  v2 = sub_1A872D1C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8729FC4(uint64_t a1)
{
  v2 = sub_1A872D1C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A872A000()
{
  v0 = *aMarkread;

  return v0;
}

uint64_t sub_1A872A038(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v3 + 16) = a2;
  *(v3 + 24) = v4;
  *(v3 + 56) = *(v2 + 8);
  *(v3 + 32) = v2[2];
  *(v3 + 40) = *(v2 + 3);
  return MEMORY[0x1EEE6DFA0](sub_1A872A074, 0, 0);
}

uint64_t sub_1A872A074()
{
  v1 = *(v0 + 40);
  v2 = sub_1A88C85E8();
  v3 = sub_1A88C85E8();
  if (v1)
  {
    sub_1A870CCE0(&qword_1EB303320);
    v4 = sub_1A88C85E8();
  }

  else
  {
    v4 = 0;
  }

  [*(v0 + 16) markReadForIDs:v2 style:*(v0 + 56) onServices:v3 messages:v4 clientUnreadCount:*(v0 + 48)];

  v5 = *(v0 + 8);

  return v5();
}

double sub_1A872A168@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A872C734(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1A872A1F4()
{
  result = qword_1EB303860;
  if (!qword_1EB303860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303860);
  }

  return result;
}

unint64_t sub_1A872A248()
{
  result = qword_1EB303868;
  if (!qword_1EB303868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303868);
  }

  return result;
}

unint64_t sub_1A872A29C(uint64_t a1)
{
  result = sub_1A872A2C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A872A2C4()
{
  result = qword_1EB303870;
  if (!qword_1EB303870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303870);
  }

  return result;
}

uint64_t sub_1A872A318(uint64_t a1)
{
  v2 = sub_1A872D16C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A872A354(uint64_t a1)
{
  v2 = sub_1A872D16C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A872A390()
{
  v0 = qword_1EB303818;

  return v0;
}

uint64_t sub_1A872A3C8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v3 + 16) = a2;
  *(v3 + 24) = v4;
  *(v3 + 48) = *(v2 + 8);
  *(v3 + 32) = *(v2 + 1);
  return MEMORY[0x1EEE6DFA0](sub_1A872A3FC, 0, 0);
}

uint64_t sub_1A872A3FC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = sub_1A88C85E8();
  v5 = sub_1A88C85E8();
  [v3 markPlayedForIDs:v4 style:v2 onServices:v5 message:v1];

  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_1A872A58C()
{
  result = qword_1EB303878;
  if (!qword_1EB303878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303878);
  }

  return result;
}

unint64_t sub_1A872A5E0()
{
  result = qword_1EB303880;
  if (!qword_1EB303880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303880);
  }

  return result;
}

unint64_t sub_1A872A634(uint64_t a1)
{
  result = sub_1A872A65C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A872A65C()
{
  result = qword_1EB303888;
  if (!qword_1EB303888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303888);
  }

  return result;
}

uint64_t sub_1A872A6B0(uint64_t a1)
{
  v2 = sub_1A872BE80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A872A6EC(uint64_t a1)
{
  v2 = sub_1A872BE80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A872A76C(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, void (*a8)(void))
{
  v20 = a4;
  v21 = a5;
  v22 = a3;
  v11 = sub_1A870CCE0(a6);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  sub_1A870C278(a1, a1[3]);
  a8();
  sub_1A88C95C8();
  v25 = a2;
  v24 = 0;
  sub_1A870CCE0(&qword_1EB303100);
  sub_1A8716048(&qword_1EB303120);
  v15 = v23;
  sub_1A88C92C8();
  if (!v15)
  {
    v17 = v20;
    v16 = v21;
    LOBYTE(v25) = 1;
    sub_1A88C92F8();
    v25 = v17;
    v24 = 2;
    sub_1A88C92C8();
    v25 = v16;
    v24 = 3;
    sub_1A870CCE0(&qword_1EB3039F0);
    sub_1A85FB520(&qword_1EB303A08, &qword_1EB3039F0);
    sub_1A88C92C8();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1A872AA1C()
{
  v1 = 7562345;
  v2 = 0x4E65636976726573;
  if (*v0 != 2)
  {
    v2 = 0x446567617373656DLL;
  }

  if (*v0)
  {
    v1 = 0x6C79745374616863;
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

uint64_t sub_1A872AAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A872CAC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A872AACC(uint64_t a1)
{
  v2 = sub_1A872D118();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A872AB08(uint64_t a1)
{
  v2 = sub_1A872D118();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A872AB44()
{
  v0 = qword_1EB303828;

  return v0;
}

uint64_t sub_1A872AB7C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v3 + 16) = a2;
  *(v3 + 24) = v4;
  *(v3 + 48) = *(v2 + 8);
  *(v3 + 32) = *(v2 + 1);
  return MEMORY[0x1EEE6DFA0](sub_1A872ABB0, 0, 0);
}

uint64_t sub_1A872ABB0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = sub_1A88C85E8();
  v5 = sub_1A88C85E8();
  [v3 markPlayedExpressiveSendForIDs:v4 style:v2 onServices:v5 message:v1];

  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_1A872AD40()
{
  result = qword_1EB303890;
  if (!qword_1EB303890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303890);
  }

  return result;
}

unint64_t sub_1A872AD94()
{
  result = qword_1EB303898;
  if (!qword_1EB303898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303898);
  }

  return result;
}

unint64_t sub_1A872ADE8(uint64_t a1)
{
  result = sub_1A872AE10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A872AE10()
{
  result = qword_1EB3038A0;
  if (!qword_1EB3038A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3038A0);
  }

  return result;
}

uint64_t sub_1A872AE64(uint64_t a1)
{
  v2 = sub_1A872D0C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A872AEA0(uint64_t a1)
{
  v2 = sub_1A872D0C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A872AEDC()
{
  v0 = qword_1EB303838;

  return v0;
}

uint64_t sub_1A872AF14(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v3 + 16) = a2;
  *(v3 + 24) = v4;
  *(v3 + 48) = *(v2 + 8);
  *(v3 + 32) = *(v2 + 1);
  return MEMORY[0x1EEE6DFA0](sub_1A872AF48, 0, 0);
}

uint64_t sub_1A872AF48()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = sub_1A88C85E8();
  v5 = sub_1A88C85E8();
  [v3 markSavedForIDs:v4 style:v2 onServices:v5 message:v1];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A872B050@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X4>, void (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  result = sub_1A872CC38(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    *(a5 + 8) = v8;
    *(a5 + 16) = v9;
    *(a5 + 24) = v10;
  }

  return result;
}

unint64_t sub_1A872B11C()
{
  result = qword_1EB3038A8;
  if (!qword_1EB3038A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3038A8);
  }

  return result;
}

unint64_t sub_1A872B170()
{
  result = qword_1EB3038B0;
  if (!qword_1EB3038B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3038B0);
  }

  return result;
}

unint64_t sub_1A872B1C4(uint64_t a1)
{
  result = sub_1A872B1EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A872B1EC()
{
  result = qword_1EB3038B8;
  if (!qword_1EB3038B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3038B8);
  }

  return result;
}

unint64_t sub_1A872B288()
{
  result = qword_1EB3038D0;
  if (!qword_1EB3038D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3038D0);
  }

  return result;
}

unint64_t sub_1A872B2DC(uint64_t a1)
{
  result = sub_1A872B304();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A872B304()
{
  result = qword_1EB3038D8;
  if (!qword_1EB3038D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3038D8);
  }

  return result;
}

uint64_t sub_1A872B358(uint64_t a1)
{
  v2 = sub_1A872BF28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A872B394(uint64_t a1)
{
  v2 = sub_1A872BF28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A872B3D0(uint64_t a1)
{
  result = sub_1A872B3F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A872B3F8()
{
  result = qword_1EB3038E0;
  if (!qword_1EB3038E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3038E0);
  }

  return result;
}

unint64_t sub_1A872B44C(uint64_t a1)
{
  result = sub_1A872B474();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A872B474()
{
  result = qword_1EB3038E8;
  if (!qword_1EB3038E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3038E8);
  }

  return result;
}

unint64_t sub_1A872B4F4()
{
  result = qword_1EB3038F0;
  if (!qword_1EB3038F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3038F0);
  }

  return result;
}

unint64_t sub_1A872B548()
{
  result = qword_1EB3038F8;
  if (!qword_1EB3038F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3038F8);
  }

  return result;
}

uint64_t sub_1A872B5E0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v8 = sub_1A870CCE0(a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  sub_1A870C278(a1, a1[3]);
  a6();
  sub_1A88C95C8();
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1A872B744()
{
  result = qword_1EB303910;
  if (!qword_1EB303910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303910);
  }

  return result;
}

unint64_t sub_1A872B798(uint64_t a1)
{
  result = sub_1A872B7C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A872B7C0()
{
  result = qword_1EB303918;
  if (!qword_1EB303918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303918);
  }

  return result;
}

unint64_t sub_1A872B814(uint64_t a1)
{
  result = sub_1A872B83C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A872B83C()
{
  result = qword_1EB303920;
  if (!qword_1EB303920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303920);
  }

  return result;
}

unint64_t sub_1A872B890(uint64_t a1)
{
  result = sub_1A872B8B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A872B8B8()
{
  result = qword_1EB303928;
  if (!qword_1EB303928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303928);
  }

  return result;
}

unint64_t sub_1A872B938()
{
  result = qword_1EB303930;
  if (!qword_1EB303930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303930);
  }

  return result;
}

unint64_t sub_1A872B98C()
{
  result = qword_1EB303938;
  if (!qword_1EB303938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303938);
  }

  return result;
}

unint64_t sub_1A872BA28()
{
  result = qword_1EB303950;
  if (!qword_1EB303950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303950);
  }

  return result;
}

unint64_t sub_1A872BA7C(uint64_t a1)
{
  result = sub_1A872BAA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A872BAA4()
{
  result = qword_1EB303958;
  if (!qword_1EB303958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303958);
  }

  return result;
}

unint64_t sub_1A872BAF8(uint64_t a1)
{
  result = sub_1A872BB20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A872BB20()
{
  result = qword_1EB303960;
  if (!qword_1EB303960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303960);
  }

  return result;
}

unint64_t sub_1A872BB74(uint64_t a1)
{
  result = sub_1A872BB9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A872BB9C()
{
  result = qword_1EB303968;
  if (!qword_1EB303968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303968);
  }

  return result;
}

uint64_t sub_1A872BC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A872BC58()
{
  result = qword_1EB303970;
  if (!qword_1EB303970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303970);
  }

  return result;
}

unint64_t sub_1A872BCAC()
{
  result = qword_1EB303978;
  if (!qword_1EB303978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303978);
  }

  return result;
}

unint64_t sub_1A872BD44(uint64_t a1)
{
  result = sub_1A872BD6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A872BD6C()
{
  result = qword_1EB303990;
  if (!qword_1EB303990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303990);
  }

  return result;
}

unint64_t sub_1A872BE04(uint64_t a1)
{
  result = sub_1A872BE2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A872BE2C()
{
  result = qword_1EB3039A8;
  if (!qword_1EB3039A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3039A8);
  }

  return result;
}

unint64_t sub_1A872BE80()
{
  result = qword_1EB3039B8;
  if (!qword_1EB3039B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3039B8);
  }

  return result;
}

unint64_t sub_1A872BED4()
{
  result = qword_1EB3039C8;
  if (!qword_1EB3039C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3039C8);
  }

  return result;
}

unint64_t sub_1A872BF28()
{
  result = qword_1EB3039D8;
  if (!qword_1EB3039D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3039D8);
  }

  return result;
}

uint64_t sub_1A872BF7C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7562345 && a2 == 0xE300000000000000;
  if (v3 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C79745374616863 && a2 == 0xE900000000000065 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E65636976726573 && a2 == 0xEC00000073656D61 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xEC00000061746144 || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A89175F0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8917610 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A88C9398();

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

uint64_t sub_1A872C194@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB303A70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A872D224();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  sub_1A870CCE0(&qword_1EB303100);
  v18 = 0;
  sub_1A8716048(&qword_1EB303108);
  sub_1A88C9158();
  v17 = v19;
  LOBYTE(v19) = 1;
  v16 = sub_1A88C9188();
  v18 = 2;
  sub_1A88C9158();
  v15 = v19;
  sub_1A870CCE0(&qword_1EB303A50);
  v18 = 3;
  sub_1A85FB520(&qword_1EB303A58, &qword_1EB303A50);
  sub_1A88C90B8();
  if (v19 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v19;
  }

  LOBYTE(v19) = 4;
  v14 = sub_1A88C9138();
  LOBYTE(v19) = 5;
  v11 = sub_1A88C9118();
  (*(v6 + 8))(v8, v5);
  result = sub_1A85F1084(a1);
  *a2 = v17;
  *(a2 + 8) = v16;
  v12 = v14;
  *(a2 + 16) = v15;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v11 & 1;
  return result;
}

uint64_t sub_1A872C56C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7562345 && a2 == 0xE300000000000000;
  if (v3 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C79745374616863 && a2 == 0xE900000000000065 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E65636976726573 && a2 == 0xEC00000073656D61 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xEC00000061746144 || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A89175F0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A88C9398();

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

uint64_t sub_1A872C734@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB303A40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A872D1C0();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  v9 = a2;
  sub_1A870CCE0(&qword_1EB303100);
  v17 = 0;
  sub_1A8716048(&qword_1EB303108);
  sub_1A88C9158();
  v16 = v18;
  LOBYTE(v18) = 1;
  v15 = sub_1A88C9188();
  v17 = 2;
  sub_1A88C9158();
  v14 = v18;
  sub_1A870CCE0(&qword_1EB303A50);
  v17 = 3;
  sub_1A85FB520(&qword_1EB303A58, &qword_1EB303A50);
  sub_1A88C90B8();
  v11 = v18;
  LOBYTE(v18) = 4;
  v12 = sub_1A88C9138();
  if (v11 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  (*(v6 + 8))(v8, v5);
  result = sub_1A85F1084(a1);
  *v9 = v16;
  *(v9 + 8) = v15;
  *(v9 + 16) = v14;
  *(v9 + 24) = v13;
  *(v9 + 32) = v12;
  return result;
}

uint64_t sub_1A872CAC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7562345 && a2 == 0xE300000000000000;
  if (v3 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C79745374616863 && a2 == 0xE900000000000065 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E65636976726573 && a2 == 0xEC00000073656D61 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446567617373656DLL && a2 == 0xEB00000000617461)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A88C9398();

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

uint64_t sub_1A872CC38(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v14 = sub_1A870CCE0(a2);
  v6 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v8 = &v12 - v7;
  sub_1A870C278(a1, a1[3]);
  a4();
  sub_1A88C95A8();
  v13 = v6;
  sub_1A870CCE0(&qword_1EB303100);
  v15 = 0;
  sub_1A8716048(&qword_1EB303108);
  v9 = v14;
  sub_1A88C9158();
  v11 = v16;
  LOBYTE(v16) = 1;
  sub_1A88C9188();
  v15 = 2;
  sub_1A88C9158();
  sub_1A870CCE0(&qword_1EB3039F0);
  v15 = 3;
  sub_1A85FB520(&qword_1EB3039F8, &qword_1EB3039F0);
  sub_1A88C9158();
  (*(v13 + 8))(v8, v9);
  sub_1A85F1084(a1);
  return v11;
}

uint64_t sub_1A872CF54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7562345 && a2 == 0xE300000000000000;
  if (v3 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C79745374616863 && a2 == 0xE900000000000065 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E65636976726573 && a2 == 0xEC00000073656D61 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A88C9398();

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

unint64_t sub_1A872D0C4()
{
  result = qword_1EB3039E8;
  if (!qword_1EB3039E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3039E8);
  }

  return result;
}

unint64_t sub_1A872D118()
{
  result = qword_1EB303A18;
  if (!qword_1EB303A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303A18);
  }

  return result;
}

unint64_t sub_1A872D16C()
{
  result = qword_1EB303A30;
  if (!qword_1EB303A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303A30);
  }

  return result;
}

unint64_t sub_1A872D1C0()
{
  result = qword_1EB303A48;
  if (!qword_1EB303A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303A48);
  }

  return result;
}

uint64_t sub_1A872D214(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_1A872D224()
{
  result = qword_1EB303A78;
  if (!qword_1EB303A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303A78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteIntentMessageItemScheduleState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RemoteIntentMessageItemScheduleState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RemoteIntentChatJoinState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteIntentChatJoinState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A872D5AC()
{
  result = qword_1EB303A88;
  if (!qword_1EB303A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303A88);
  }

  return result;
}

unint64_t sub_1A872D604()
{
  result = qword_1EB303A90;
  if (!qword_1EB303A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303A90);
  }

  return result;
}

unint64_t sub_1A872D65C()
{
  result = qword_1EB303A98;
  if (!qword_1EB303A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303A98);
  }

  return result;
}

unint64_t sub_1A872D6B4()
{
  result = qword_1EB303AA0;
  if (!qword_1EB303AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303AA0);
  }

  return result;
}

unint64_t sub_1A872D70C()
{
  result = qword_1EB303AA8;
  if (!qword_1EB303AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303AA8);
  }

  return result;
}

unint64_t sub_1A872D764()
{
  result = qword_1EB303AB0;
  if (!qword_1EB303AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303AB0);
  }

  return result;
}

unint64_t sub_1A872D7BC()
{
  result = qword_1EB303AB8;
  if (!qword_1EB303AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303AB8);
  }

  return result;
}

unint64_t sub_1A872D814()
{
  result = qword_1EB303AC0;
  if (!qword_1EB303AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303AC0);
  }

  return result;
}

unint64_t sub_1A872D86C()
{
  result = qword_1EB303AC8;
  if (!qword_1EB303AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303AC8);
  }

  return result;
}

unint64_t sub_1A872D8C4()
{
  result = qword_1EB303AD0;
  if (!qword_1EB303AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303AD0);
  }

  return result;
}

unint64_t sub_1A872D91C()
{
  result = qword_1EB303AD8;
  if (!qword_1EB303AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303AD8);
  }

  return result;
}

unint64_t sub_1A872D974()
{
  result = qword_1EB303AE0;
  if (!qword_1EB303AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303AE0);
  }

  return result;
}

unint64_t sub_1A872D9CC()
{
  result = qword_1EB303AE8;
  if (!qword_1EB303AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303AE8);
  }

  return result;
}

unint64_t sub_1A872DA24()
{
  result = qword_1EB303AF0;
  if (!qword_1EB303AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303AF0);
  }

  return result;
}

unint64_t sub_1A872DA7C()
{
  result = qword_1EB303AF8;
  if (!qword_1EB303AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303AF8);
  }

  return result;
}

unint64_t sub_1A872DAD4()
{
  result = qword_1EB303B00;
  if (!qword_1EB303B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303B00);
  }

  return result;
}

unint64_t sub_1A872DB2C()
{
  result = qword_1EB303B08;
  if (!qword_1EB303B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303B08);
  }

  return result;
}

unint64_t sub_1A872DB84()
{
  result = qword_1EB303B10;
  if (!qword_1EB303B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303B10);
  }

  return result;
}

unint64_t sub_1A872DBDC()
{
  result = qword_1EB303B18;
  if (!qword_1EB303B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303B18);
  }

  return result;
}

unint64_t sub_1A872DC34()
{
  result = qword_1EB303B20;
  if (!qword_1EB303B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303B20);
  }

  return result;
}

unint64_t sub_1A872DC8C()
{
  result = qword_1EB303B28;
  if (!qword_1EB303B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303B28);
  }

  return result;
}

id IMPersistentMenu.init(dictionary:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1A88C8188();

  v2 = [v0 initWithDictionary_];

  return v2;
}

void IMPersistentMenu.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A88C82E8();
  if (*(a1 + 16))
  {
    v6 = sub_1A85F5F40(v4, v5);
    v8 = v7;

    if (v8)
    {
      sub_1A85F1028(*(a1 + 56) + 32 * v6, v24);
      sub_1A870CCE0(&unk_1EB3091D0);
      if (swift_dynamicCast())
      {

        a1 = v23;
      }
    }

    if (!*(a1 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (!*(a1 + 16))
    {
LABEL_21:

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return;
    }
  }

  v9 = sub_1A85F5F40(0x6C6576656CLL, 0xE500000000000000);
  if ((v10 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v9, v24);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

  v11 = sub_1A85F5F40(0x736D657469, 0xE500000000000000);
  if ((v12 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v11, v24);
  sub_1A870CCE0(&qword_1EB303B30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v13 = 0;
  v24[0] = MEMORY[0x1E69E7CC0];
  v14 = *(v23 + 16);
LABEL_14:
  v15 = v13;
  while (1)
  {
    if (v14 == v15)
    {

      if (*(a1 + 16) && (v19 = sub_1A85F5F40(0x5479616C70736964, 0xEB00000000747865), (v20 & 1) != 0))
      {
        sub_1A85F1028(*(a1 + 56) + 32 * v19, v24);

        if (swift_dynamicCast())
        {
          v21 = sub_1A88C82A8();

LABEL_28:
          type metadata accessor for IMPersistentMenuItem();
          v22 = sub_1A88C85E8();

          [v2 initWithLevel:v23 displayText:v21 items:v22];

          return;
        }
      }

      else
      {
      }

      v21 = 0;
      goto LABEL_28;
    }

    if (v15 >= *(v23 + 16))
    {
      break;
    }

    v13 = v15 + 1;
    v16 = objc_allocWithZone(IMPersistentMenuItem);

    v17 = sub_1A88C8188();

    v18 = [v16 initWithDictionary_];

    v15 = v13;
    if (v18)
    {
      MEMORY[0x1AC56EEA0]();
      if (*((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A88C8638();
      }

      sub_1A88C8678();
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t sub_1A872E378()
{
  sub_1A870CCE0(&qword_1EB303B58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E4F70;
  *(inited + 32) = 0x6C6576656CLL;
  *(inited + 40) = 0xE500000000000000;
  v2 = [v0 level];
  v3 = MEMORY[0x1E69E6530];
  *(inited + 48) = v2;
  *(inited + 72) = v3;
  *(inited + 80) = 0x5479616C70736964;
  *(inited + 88) = 0xEB00000000747865;
  v4 = [v0 displayText];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1A88C82E8();
    v8 = v7;

    v9 = MEMORY[0x1E69E6158];
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v9 = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v6;
  *(inited + 104) = v8;
  *(inited + 120) = v9;
  *(inited + 128) = 0x736D657469;
  *(inited + 136) = 0xE500000000000000;
  v10 = [v0 items];
  type metadata accessor for IMPersistentMenuItem();
  v11 = sub_1A88C85F8();

  if (v11 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A88C8D38())
  {
    v30 = inited;
    v31 = v0;
    if (!i)
    {
      break;
    }

    v13 = 0;
    inited = v11 & 0xC000000000000001;
    v14 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (inited)
      {
        v15 = MEMORY[0x1AC56F710](v13, v11);
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v15 = *(v11 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v18 = [v15 dictionaryRepresentation];
      v19 = sub_1A88C81A8();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1A8735464(0, v14[2] + 1, 1, v14);
      }

      v0 = v14[2];
      v20 = v14[3];
      if (v0 >= v20 >> 1)
      {
        v14 = sub_1A8735464((v20 > 1), v0 + 1, 1, v14);
      }

      v14[2] = v0 + 1;
      v14[v0 + 4] = v19;
      ++v13;
      if (v17 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_20:

  *(v30 + 168) = sub_1A870CCE0(&qword_1EB303B30);
  *(v30 + 144) = v14;
  v21 = sub_1A8738CF0(v30);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB304A50);
  swift_arrayDestroy();
  v22 = sub_1A8895CC8(v21);

  if (![v31 level])
  {
    v23 = [v31 items];
    v24 = sub_1A88C85F8();

    if (v24 >> 62)
    {
      v25 = sub_1A88C8D38();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v25)
    {
      sub_1A870CCE0(&qword_1EB303718);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_1A88E14F0;
      *(v26 + 32) = sub_1A88C82E8();
      *(v26 + 40) = v27;
      *(v26 + 72) = sub_1A870CCE0(&unk_1EB3091D0);
      *(v26 + 48) = v22;
      v22 = sub_1A8738AAC(v26);
      swift_setDeallocating();
      sub_1A85EF638(v26 + 32, &qword_1EB303720);
    }

    else
    {

      v28 = [objc_opt_self() emptyStampProperty];
      v22 = sub_1A88C81A8();
    }
  }

  return v22;
}

unint64_t sub_1A872E9A8()
{
  sub_1A870CCE0(&qword_1EB303B58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E4F70;
  *(inited + 32) = 0x6C6576656CLL;
  *(inited + 40) = 0xE500000000000000;
  v2 = [v0 level];
  v3 = MEMORY[0x1E69E6530];
  *(inited + 48) = v2;
  *(inited + 72) = v3;
  *(inited + 80) = 0x5479616C70736964;
  *(inited + 88) = 0xEB00000000747865;
  v4 = [v0 displayText];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1A88C82E8();
    v8 = v7;

    v9 = MEMORY[0x1E69E6158];
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v9 = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v6;
  *(inited + 104) = v8;
  *(inited + 120) = v9;
  *(inited + 128) = 0x736D657469;
  *(inited + 136) = 0xE500000000000000;
  v10 = [v0 items];
  type metadata accessor for IMPersistentMenuItem();
  v11 = sub_1A88C85F8();

  if (v11 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A88C8D38())
  {
    v29 = inited;
    v30 = v0;
    if (!i)
    {
      break;
    }

    v13 = 0;
    inited = v11 & 0xC000000000000001;
    v14 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (inited)
      {
        v15 = MEMORY[0x1AC56F710](v13, v11);
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v15 = *(v11 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v18 = [v15 dictionaryRepresentation];
      v19 = sub_1A88C81A8();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1A8735464(0, v14[2] + 1, 1, v14);
      }

      v0 = v14[2];
      v20 = v14[3];
      if (v0 >= v20 >> 1)
      {
        v14 = sub_1A8735464((v20 > 1), v0 + 1, 1, v14);
      }

      v14[2] = v0 + 1;
      v14[v0 + 4] = v19;
      ++v13;
      if (v17 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_20:

  *(v29 + 168) = sub_1A870CCE0(&qword_1EB303B30);
  *(v29 + 144) = v14;
  v21 = sub_1A8738CF0(v29);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB304A50);
  swift_arrayDestroy();
  v22 = sub_1A8895CC8(v21);

  if (![v30 level])
  {
    v23 = [v30 items];
    v24 = sub_1A88C85F8();

    if (v24 >> 62)
    {
      v25 = sub_1A88C8D38();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v25)
    {
      sub_1A870CCE0(&qword_1EB303718);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_1A88E14F0;
      *(v26 + 32) = 1970169197;
      *(v26 + 40) = 0xE400000000000000;
      *(v26 + 72) = sub_1A870CCE0(&unk_1EB3091D0);
      *(v26 + 48) = v22;
      v22 = sub_1A8738AAC(v26);
      swift_setDeallocating();
      sub_1A85EF638(v26 + 32, &qword_1EB303720);
    }

    else
    {

      v27 = [objc_opt_self() relayEmptyStampProperty];
      v22 = sub_1A88C81A8();
    }
  }

  return v22;
}

id sub_1A872EE5C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1A88C8188();

  return v5;
}

id IMPersistentMenu.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IMPersistentMenu()
{
  result = qword_1EB303B50;
  if (!qword_1EB303B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB303B50);
  }

  return result;
}

uint64_t sub_1A872F1AC(uint64_t a1)
{
  sub_1A87303E8(a1, v7);
  if (!v8)
  {
    sub_1A85EF638(v7, &qword_1EB3057B0);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v3 = 0;
    return v3 & 1;
  }

  if (v5 == sub_1A88C82E8() && v6 == v1)
  {

    v3 = 1;
  }

  else
  {
    v3 = sub_1A88C9398();
  }

  return v3 & 1;
}

unint64_t sub_1A872F29C()
{
  sub_1A870CCE0(&qword_1EB303718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E14F0;
  *(inited + 32) = sub_1A88C82E8();
  v80 = inited;
  v81 = inited + 32;
  *(inited + 40) = v1;
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1A88E2770;
  *(v2 + 32) = 0x6C6576656CLL;
  v79 = v2;
  v3 = MEMORY[0x1E69E6530];
  *(v2 + 40) = 0xE500000000000000;
  *(v2 + 48) = 0;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0x736D657469;
  v4 = v3;
  *(v2 + 88) = 0xE500000000000000;
  sub_1A870CCE0(&qword_1EB303B60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A88E2770;
  v6 = v5;
  v78 = v5;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1A88E2770;
  *(v7 + 32) = 1701869940;
  *(v7 + 40) = 0xE400000000000000;
  *(v7 + 48) = 0;
  *(v7 + 72) = v4;
  *(v7 + 80) = 0x746E65746E6F63;
  *(v7 + 88) = 0xE700000000000000;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1A88E2770;
  *(v8 + 32) = 1701869940;
  *(v8 + 40) = 0xE400000000000000;
  *(v8 + 48) = 0;
  *(v8 + 72) = v4;
  *(v8 + 80) = 1885956195;
  *(v8 + 88) = 0xE400000000000000;
  sub_1A870CCE0(&qword_1EB303B68);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1A88E14F0;
  *(v9 + 32) = 0x6974736567677573;
  *(v9 + 40) = 0xEA00000000006E6FLL;
  v10 = sub_1A8738BDC(&unk_1F1BA8F98);
  sub_1A870CCE0(&qword_1EB303B70);
  swift_arrayDestroy();
  *(v9 + 48) = v10;
  v11 = sub_1A8738E20(v9);
  swift_setDeallocating();
  sub_1A85EF638(v9 + 32, &qword_1EB303B78);
  v73 = sub_1A870CCE0(&qword_1EB303B80);
  *(v8 + 120) = v73;
  *(v8 + 96) = v11;
  v12 = sub_1A8738AAC(v8);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB303720);
  swift_arrayDestroy();
  v84 = sub_1A870CCE0(&unk_1EB3091D0);
  *(v7 + 120) = v84;
  *(v7 + 96) = v12;
  v13 = sub_1A8738AAC(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v6 + 32) = v13;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1A88E2770;
  *(v14 + 32) = 1701869940;
  v77 = v14;
  *(v14 + 40) = 0xE400000000000000;
  *(v14 + 48) = 1;
  v15 = MEMORY[0x1E69E6530];
  *(v14 + 72) = MEMORY[0x1E69E6530];
  *(v14 + 80) = 0x746E65746E6F63;
  *(v14 + 88) = 0xE700000000000000;
  v76 = swift_initStackObject();
  *(v76 + 16) = xmmword_1A88E4F70;
  *(v76 + 32) = 0x6C6576656CLL;
  *(v76 + 40) = 0xE500000000000000;
  *(v76 + 48) = 1;
  *(v76 + 72) = v15;
  *(v76 + 80) = 0x5479616C70736964;
  v16 = MEMORY[0x1E69E6158];
  *(v76 + 88) = 0xEB00000000747865;
  *(v76 + 96) = 0x756E654D6B636F6DLL;
  *(v76 + 104) = 0xEA0000000000314CLL;
  v17 = v16;
  *(v76 + 120) = v16;
  *(v76 + 128) = 0x736D657469;
  *(v76 + 136) = 0xE500000000000000;
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1A88E4F70;
  v18 = swift_initStackObject();
  *(v18 + 32) = 1701869940;
  v72 = v18;
  *(v18 + 16) = xmmword_1A88E2770;
  *(v18 + 40) = 0xE400000000000000;
  *(v18 + 48) = 1;
  *(v18 + 72) = v15;
  *(v18 + 80) = 0x746E65746E6F63;
  *(v18 + 88) = 0xE700000000000000;
  v19 = swift_allocObject();
  *(v19 + 32) = 0x6C6576656CLL;
  *(v19 + 16) = xmmword_1A88E4F70;
  *(v19 + 40) = 0xE500000000000000;
  *(v19 + 48) = 2;
  *(v19 + 72) = v15;
  *(v19 + 80) = 0x5479616C70736964;
  *(v19 + 88) = 0xEB00000000747865;
  strcpy((v19 + 96), "mockMenuL2_1");
  *(v19 + 109) = 0;
  *(v19 + 110) = -5120;
  *(v19 + 120) = v17;
  *(v19 + 128) = 0x736D657469;
  *(v19 + 136) = 0xE500000000000000;
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1A88E14F0;
  v20 = swift_allocObject();
  *(v20 + 32) = 1701869940;
  *(v20 + 16) = xmmword_1A88E2770;
  *(v20 + 40) = 0xE400000000000000;
  *(v20 + 48) = 0;
  *(v20 + 72) = v15;
  *(v20 + 80) = 0x746E65746E6F63;
  *(v20 + 88) = 0xE700000000000000;
  v21 = swift_allocObject();
  *(v21 + 32) = 1701869940;
  *(v21 + 16) = xmmword_1A88E2770;
  *(v21 + 40) = 0xE400000000000000;
  *(v21 + 48) = 1;
  *(v21 + 72) = v15;
  *(v21 + 80) = 1885956195;
  *(v21 + 88) = 0xE400000000000000;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1A88E4F70;
  *(v22 + 32) = 0x6974736567677573;
  *(v22 + 40) = 0xEA00000000006E6FLL;
  v23 = sub_1A8738BDC(&unk_1F1BA9018);
  swift_arrayDestroy();
  v24 = sub_1A870CCE0(&qword_1EB303B88);
  *(v22 + 48) = v23;
  *(v22 + 72) = v24;
  *(v22 + 80) = 1701869940;
  *(v22 + 88) = 0xE400000000000000;
  *(v22 + 96) = 10;
  *(v22 + 120) = v15;
  *(v22 + 128) = 0x6E6F69746361;
  *(v22 + 136) = 0xE600000000000000;
  v25 = sub_1A8738BDC(&unk_1F1BA9098);
  sub_1A85EF638(&unk_1F1BA90B8, &qword_1EB303B70);
  *(v22 + 168) = v24;
  *(v22 + 144) = v25;
  v26 = sub_1A8738AAC(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v21 + 120) = v84;
  *(v21 + 96) = v26;
  v27 = sub_1A8738AAC(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v20 + 120) = v84;
  *(v20 + 96) = v27;
  v28 = sub_1A8738AAC(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v71 + 32) = v28;
  v75 = sub_1A870CCE0(&qword_1EB303B30);
  *(v19 + 168) = v75;
  *(v19 + 144) = v71;
  v29 = sub_1A8738AAC(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v72 + 120) = v84;
  *(v72 + 96) = v29;
  v30 = sub_1A8738AAC(v72);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v82 + 32) = v30;
  v31 = swift_allocObject();
  *(v31 + 32) = 1701869940;
  *(v31 + 16) = xmmword_1A88E2770;
  *(v31 + 40) = 0xE400000000000000;
  *(v31 + 48) = 0;
  v32 = MEMORY[0x1E69E6530];
  *(v31 + 72) = MEMORY[0x1E69E6530];
  *(v31 + 80) = 0x746E65746E6F63;
  *(v31 + 88) = 0xE700000000000000;
  v33 = swift_allocObject();
  *(v33 + 32) = 1701869940;
  *(v33 + 16) = xmmword_1A88E2770;
  *(v33 + 40) = 0xE400000000000000;
  *(v33 + 48) = 0;
  *(v33 + 72) = v32;
  *(v33 + 80) = 1885956195;
  *(v33 + 88) = 0xE400000000000000;
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_1A88E14F0;
  *(v34 + 32) = 0x6974736567677573;
  *(v34 + 40) = 0xEA00000000006E6FLL;
  v35 = sub_1A8738BDC(&unk_1F1BA90D8);
  swift_arrayDestroy();
  *(v34 + 48) = v35;
  v36 = sub_1A8738E20(v34);
  swift_setDeallocating();
  sub_1A85EF638(v34 + 32, &qword_1EB303B78);
  *(v33 + 120) = v73;
  *(v33 + 96) = v36;
  v37 = sub_1A8738AAC(v33);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v31 + 120) = v84;
  *(v31 + 96) = v37;
  v38 = sub_1A8738AAC(v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v82 + 40) = v38;
  v39 = swift_allocObject();
  *(v39 + 32) = 1701869940;
  v74 = v39;
  *(v39 + 16) = xmmword_1A88E2770;
  *(v39 + 40) = 0xE400000000000000;
  *(v39 + 48) = 1;
  v40 = MEMORY[0x1E69E6530];
  *(v39 + 72) = MEMORY[0x1E69E6530];
  *(v39 + 80) = 0x746E65746E6F63;
  *(v39 + 88) = 0xE700000000000000;
  v41 = swift_allocObject();
  *(v41 + 32) = 0x6C6576656CLL;
  *(v41 + 16) = xmmword_1A88E4F70;
  *(v41 + 40) = 0xE500000000000000;
  *(v41 + 48) = 2;
  v42 = v40;
  *(v41 + 72) = v40;
  *(v41 + 80) = 0x5479616C70736964;
  *(v41 + 88) = 0xEB00000000747865;
  strcpy((v41 + 96), "mockMenuL2_2");
  *(v41 + 109) = 0;
  *(v41 + 110) = -5120;
  *(v41 + 120) = MEMORY[0x1E69E6158];
  *(v41 + 128) = 0x736D657469;
  *(v41 + 136) = 0xE500000000000000;
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1A88E2770;
  v43 = swift_allocObject();
  *(v43 + 32) = 1701869940;
  *(v43 + 16) = xmmword_1A88E2770;
  *(v43 + 40) = 0xE400000000000000;
  *(v43 + 48) = 0;
  *(v43 + 72) = v42;
  *(v43 + 80) = 0x746E65746E6F63;
  *(v43 + 88) = 0xE700000000000000;
  v44 = swift_allocObject();
  *(v44 + 32) = 1701869940;
  *(v44 + 16) = xmmword_1A88E2770;
  *(v44 + 40) = 0xE400000000000000;
  *(v44 + 48) = 1;
  *(v44 + 72) = v42;
  *(v44 + 80) = 1885956195;
  *(v44 + 88) = 0xE400000000000000;
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1A88E4F70;
  *(v45 + 32) = 0x6974736567677573;
  *(v45 + 40) = 0xEA00000000006E6FLL;
  v46 = sub_1A8738BDC(&unk_1F1BA9158);
  swift_arrayDestroy();
  *(v45 + 48) = v46;
  v47 = v24;
  *(v45 + 72) = v24;
  *(v45 + 80) = 1701869940;
  *(v45 + 88) = 0xE400000000000000;
  *(v45 + 96) = 7;
  *(v45 + 120) = MEMORY[0x1E69E6530];
  *(v45 + 128) = 0x6E6F69746361;
  *(v45 + 136) = 0xE600000000000000;
  v48 = sub_1A8738BDC(&unk_1F1BA91D8);
  swift_arrayDestroy();
  *(v45 + 168) = v24;
  *(v45 + 144) = v48;
  v49 = sub_1A8738AAC(v45);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v44 + 120) = v84;
  *(v44 + 96) = v49;
  v50 = sub_1A8738AAC(v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v43 + 120) = v84;
  *(v43 + 96) = v50;
  v51 = sub_1A8738AAC(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v83 + 32) = v51;
  v52 = swift_allocObject();
  *(v52 + 32) = 1701869940;
  *(v52 + 16) = xmmword_1A88E2770;
  *(v52 + 40) = 0xE400000000000000;
  *(v52 + 48) = 0;
  v53 = MEMORY[0x1E69E6530];
  *(v52 + 72) = MEMORY[0x1E69E6530];
  *(v52 + 80) = 0x746E65746E6F63;
  *(v52 + 88) = 0xE700000000000000;
  v54 = swift_allocObject();
  *(v54 + 32) = 1701869940;
  *(v54 + 16) = xmmword_1A88E2770;
  *(v54 + 40) = 0xE400000000000000;
  *(v54 + 48) = 1;
  *(v54 + 72) = v53;
  *(v54 + 80) = 1885956195;
  *(v54 + 88) = 0xE400000000000000;
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1A88E4F70;
  *(v55 + 32) = 0x6974736567677573;
  *(v55 + 40) = 0xEA00000000006E6FLL;
  v56 = sub_1A8738BDC(&unk_1F1BA9278);
  swift_arrayDestroy();
  *(v55 + 48) = v56;
  *(v55 + 72) = v47;
  *(v55 + 80) = 1701869940;
  *(v55 + 88) = 0xE400000000000000;
  *(v55 + 96) = 5;
  *(v55 + 120) = MEMORY[0x1E69E6530];
  *(v55 + 128) = 0x6E6F69746361;
  *(v55 + 136) = 0xE600000000000000;
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1A88E4F80;
  *(v57 + 32) = 0x656475746974616CLL;
  v58 = MEMORY[0x1E69E63B0];
  *(v57 + 40) = 0xE800000000000000;
  *(v57 + 48) = 0xC0490F5C28F5C28FLL;
  *(v57 + 72) = v58;
  *(v57 + 80) = 0x64757469676E6F6CLL;
  *(v57 + 88) = 0xE900000000000065;
  *(v57 + 96) = 0x405DB33333333333;
  *(v57 + 120) = v58;
  *(v57 + 128) = 0x7972657571;
  *(v57 + 136) = 0xE500000000000000;
  *(v57 + 144) = 0x726575516B636F6DLL;
  *(v57 + 152) = 0xE900000000000079;
  v59 = MEMORY[0x1E69E6158];
  *(v57 + 168) = MEMORY[0x1E69E6158];
  *(v57 + 176) = 0x6C6562616CLL;
  *(v57 + 184) = 0xE500000000000000;
  *(v57 + 192) = 0x6562614C6B636F6DLL;
  *(v57 + 200) = 0xE90000000000006CLL;
  *(v57 + 216) = v59;
  *(v57 + 224) = 0x6B6361626C6C6166;
  *(v57 + 264) = v59;
  *(v57 + 232) = 0xEB000000006C7255;
  *(v57 + 240) = 0xD000000000000013;
  *(v57 + 248) = 0x80000001A89176C0;
  v60 = sub_1A8738AAC(v57);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v55 + 168) = v84;
  *(v55 + 144) = v60;
  v61 = sub_1A8738AAC(v55);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v54 + 120) = v84;
  *(v54 + 96) = v61;
  v62 = sub_1A8738AAC(v54);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v52 + 120) = v84;
  *(v52 + 96) = v62;
  v63 = sub_1A8738AAC(v52);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v83 + 40) = v63;
  *(v41 + 168) = v75;
  *(v41 + 144) = v83;
  v64 = sub_1A8738AAC(v41);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v74 + 120) = v84;
  *(v74 + 96) = v64;
  v65 = sub_1A8738AAC(v74);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v82 + 48) = v65;
  *(v76 + 168) = v75;
  *(v76 + 144) = v82;
  v66 = sub_1A8738AAC(v76);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v77 + 120) = v84;
  *(v77 + 96) = v66;
  v67 = sub_1A8738AAC(v77);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v78 + 40) = v67;
  *(v79 + 120) = v75;
  *(v79 + 96) = v78;
  v68 = sub_1A8738AAC(v79);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v80 + 72) = v84;
  *(v80 + 48) = v68;
  v69 = sub_1A8738AAC(v80);
  swift_setDeallocating();
  sub_1A85EF638(v81, &qword_1EB303720);
  return v69;
}

uint64_t sub_1A87303E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB3057B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8730458(uint64_t a1, int a2)
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

uint64_t sub_1A87304A0(uint64_t result, int a2, int a3)
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

uint64_t sub_1A87304F0()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB303B90);
  sub_1A85EF0E4(v0, qword_1EB303B90);
  return sub_1A88C7E48();
}

uint64_t sub_1A8730570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A8730598, 0, 0);
}

uint64_t sub_1A8730598()
{
  if (v0[6] >= 5uLL)
  {
    if (qword_1EB3020D8 != -1)
    {
      swift_once();
    }

    v1 = sub_1A88C7E58();
    sub_1A85EF0E4(v1, qword_1EB303B90);

    v2 = sub_1A88C7E38();
    v3 = sub_1A88C89C8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[6];
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v4;

      _os_log_impl(&dword_1A85E5000, v2, v3, "Unknown cancel type: %lu", v5, 0xCu);
      MEMORY[0x1AC571F20](v5, -1, -1);
    }

    else
    {
    }
  }

  v6 = v0[6];
  v7 = v0[2];
  v8 = sub_1A88C82A8();
  v9 = sub_1A88C88C8();
  [v7 cancelScheduledMessageWithGUID:v8 destinations:v9 cancelType:v6];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A8730768(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[1] = a5;
  v13 = a4;
  v7 = sub_1A870CCE0(&qword_1EB303C40);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  sub_1A870C278(a1, a1[3]);
  sub_1A87315D8();
  sub_1A88C95C8();
  v17 = 0;
  sub_1A88C9278();
  if (!v5)
  {
    v14 = v13;
    v16 = 1;
    sub_1A870CCE0(&qword_1EB303C30);
    sub_1A873162C(&qword_1EB303C48);
    sub_1A88C92C8();
    v15 = 2;
    sub_1A88C92B8();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1A8730958()
{
  v1 = 0x74616E6974736564;
  if (*v0 != 1)
  {
    v1 = 0x79546C65636E6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x476567617373656DLL;
  }
}

uint64_t sub_1A87309C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8731220(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A87309F0(uint64_t a1)
{
  v2 = sub_1A87315D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8730A2C(uint64_t a1)
{
  v2 = sub_1A87315D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8730A68()
{
  v0 = qword_1EB303BA8;

  return v0;
}

uint64_t sub_1A8730AA0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1A8714B6C;

  return sub_1A8730570(a2, v5, v6, v8, v7);
}

uint64_t sub_1A8730B5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A8731348(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_1A8730BD8()
{
  result = qword_1EB303BB8;
  if (!qword_1EB303BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303BB8);
  }

  return result;
}

unint64_t sub_1A8730C2C()
{
  result = qword_1EB303BC0;
  if (!qword_1EB303BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303BC0);
  }

  return result;
}

unint64_t sub_1A8730C80(uint64_t a1)
{
  result = sub_1A8730CA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8730CA8()
{
  result = qword_1EB303BC8;
  if (!qword_1EB303BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303BC8);
  }

  return result;
}

unint64_t sub_1A8730D00()
{
  result = qword_1EB303BD0;
  if (!qword_1EB303BD0)
  {
    sub_1A870CD28(&qword_1EB303BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303BD0);
  }

  return result;
}

unint64_t sub_1A8730D68()
{
  result = qword_1EB303BE0;
  if (!qword_1EB303BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303BE0);
  }

  return result;
}

unint64_t sub_1A8730DBC(uint64_t a1)
{
  result = sub_1A8730DE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8730DE4()
{
  result = qword_1EB303BE8;
  if (!qword_1EB303BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303BE8);
  }

  return result;
}

uint64_t sub_1A8730E38(uint64_t a1)
{
  v2 = sub_1A87311CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8730E74(uint64_t a1)
{
  v2 = sub_1A87311CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A8730EB0(uint64_t a1)
{
  result = sub_1A8730ED8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8730ED8()
{
  result = qword_1EB303BF0;
  if (!qword_1EB303BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303BF0);
  }

  return result;
}

unint64_t sub_1A8730F2C(uint64_t a1)
{
  result = sub_1A8730F54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8730F54()
{
  result = qword_1EB303BF8;
  if (!qword_1EB303BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303BF8);
  }

  return result;
}

uint64_t sub_1A8730FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A8731010()
{
  result = qword_1EB303C00;
  if (!qword_1EB303C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303C00);
  }

  return result;
}

unint64_t sub_1A8731064()
{
  result = qword_1EB303C08;
  if (!qword_1EB303C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303C08);
  }

  return result;
}

uint64_t sub_1A87310B8(void *a1)
{
  v2 = sub_1A870CCE0(&qword_1EB303C10);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A870C278(a1, a1[3]);
  sub_1A87311CC();
  sub_1A88C95C8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A87311CC()
{
  result = qword_1EB303C18;
  if (!qword_1EB303C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303C18);
  }

  return result;
}

uint64_t sub_1A8731220(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x476567617373656DLL && a2 == 0xEB00000000444955;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEC000000736E6F69 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79546C65636E6163 && a2 == 0xEA00000000006570)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A88C9398();

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

uint64_t sub_1A8731348(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB303C20);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_1A870C278(a1, a1[3]);
  sub_1A87315D8();
  sub_1A88C95A8();
  if (!v1)
  {
    v12 = 0;
    v7 = sub_1A88C9108();
    sub_1A870CCE0(&qword_1EB303C30);
    v11 = 1;
    sub_1A873162C(&qword_1EB303C38);
    sub_1A88C9158();
    v10 = 2;
    v9 = 0;
    sub_1A88C9148();
    (*(v4 + 8))(v6, v3);
  }

  sub_1A85F1084(a1);
  return v7;
}

unint64_t sub_1A87315D8()
{
  result = qword_1EB303C28;
  if (!qword_1EB303C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303C28);
  }

  return result;
}

uint64_t sub_1A873162C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB303C30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteIntentMessageItemScheduleType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RemoteIntentMessageItemScheduleType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1A873180C()
{
  result = qword_1EB303C50;
  if (!qword_1EB303C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303C50);
  }

  return result;
}

unint64_t sub_1A8731864()
{
  result = qword_1EB303C58;
  if (!qword_1EB303C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303C58);
  }

  return result;
}

unint64_t sub_1A87318BC()
{
  result = qword_1EB303C60;
  if (!qword_1EB303C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303C60);
  }

  return result;
}

unint64_t sub_1A8731914()
{
  result = qword_1EB303C68;
  if (!qword_1EB303C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303C68);
  }

  return result;
}

unint64_t sub_1A873196C()
{
  result = qword_1EB303C70;
  if (!qword_1EB303C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303C70);
  }

  return result;
}

id sub_1A87319D8()
{

  v0 = sub_1A88C82A8();

  return v0;
}

id IMActionComposeText.init(dictionary:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1A88C8188();

  v2 = [v0 initWithDictionary_];

  return v2;
}

id IMActionComposeText.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16))
  {
    v4 = sub_1A85F5F40(0x6D754E656E6F6870, 0xEB00000000726562);
    if (v5)
    {
      sub_1A85F1028(*(a1 + 56) + 32 * v4, v12);
      if (swift_dynamicCast())
      {
        if (*(a1 + 16) && (v6 = sub_1A85F5F40(1954047348, 0xE400000000000000), (v7 & 1) != 0))
        {
          sub_1A85F1028(*(a1 + 56) + 32 * v6, v12);

          if (swift_dynamicCast())
          {
            v8 = sub_1A88C82A8();

            v9 = sub_1A88C82A8();

            v10 = [v2 initWithPhoneNumber:v8 text:v9];

            return v10;
          }
        }

        else
        {
        }
      }
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_1A8731D24()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E2770;
  *(inited + 32) = 0x6D754E656E6F6870;
  *(inited + 40) = 0xEB00000000726562;
  v3 = [v1 phoneNumber];
  v4 = sub_1A88C82E8();
  v6 = v5;

  v7 = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 1954047348;
  *(inited + 88) = 0xE400000000000000;
  v8 = [v1 text];
  v9 = sub_1A88C82E8();
  v11 = v10;

  *(inited + 120) = v7;
  *(inited + 96) = v9;
  *(inited + 104) = v11;
  v12 = sub_1A8738AAC(inited);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB303720);
  swift_arrayDestroy();
  return v12;
}

id IMActionComposeText.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IMActionComposeText()
{
  result = qword_1EB303C90;
  if (!qword_1EB303C90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB303C90);
  }

  return result;
}

uint64_t RemoteIntentFileDownloadManager.batchDownloadTransfersForMessages(_:batchSize:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (qword_1EB302380 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB309050;
  v3[5] = qword_1EB309050;

  return MEMORY[0x1EEE6DFA0](sub_1A87320C0, v4, 0);
}

uint64_t sub_1A87320C0()
{
  v70 = v0;
  v1 = v0[2];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_66:
    v3 = sub_1A88C8D38();
    v4 = v0[2];
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v0[2];
  }

  v5 = MEMORY[0x1E69E7CC0];
  v0[6] = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    v1 = v5;
    if (*(v5 + 2))
    {
LABEL_47:
      if (qword_1EB3020E0 != -1)
      {
        swift_once();
      }

      v37 = sub_1A88C7E58();
      sub_1A85EF0E4(v37, qword_1EB303C98);

      v38 = sub_1A88C7E38();
      v39 = sub_1A88C89D8();

      if (os_log_type_enabled(v38, v39))
      {
        v68 = v0[3];
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v69 = v41;
        *v40 = 136315650;
        v42 = MEMORY[0x1E69E6158];
        v43 = MEMORY[0x1AC56EED0](v5, MEMORY[0x1E69E6158]);
        v45 = sub_1A85F0394(v43, v44, &v69);

        *(v40 + 4) = v45;
        *(v40 + 12) = 2080;
        v46 = MEMORY[0x1AC56EED0](v1, v42);
        v48 = v47;

        v49 = sub_1A85F0394(v46, v48, &v69);

        *(v40 + 14) = v49;
        *(v40 + 22) = 2048;
        *(v40 + 24) = v68;
        _os_log_impl(&dword_1A85E5000, v38, v39, "batchDownloadTransfersForMessages: Kicking off batch download of transfer guids: %s from message guids:%s. Batch size: %ld", v40, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC571F20](v41, -1, -1);
        MEMORY[0x1AC571F20](v40, -1, -1);
      }

      else
      {
      }

      v50 = swift_task_alloc();
      v0[7] = v50;
      *v50 = v0;
      v50[1] = sub_1A87327E0;
      v51 = v0[3];

      return RemoteIntentFileDownloadManager.batchDownloadTransfers(_:batchSize:)(v5, v51);
    }

    else
    {
LABEL_55:

      if (qword_1EB3020E0 != -1)
      {
LABEL_70:
        swift_once();
      }

      v52 = sub_1A88C7E58();
      sub_1A85EF0E4(v52, qword_1EB303C98);

      v53 = sub_1A88C7E38();
      v54 = sub_1A88C89D8();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v69 = v56;
        *v55 = 136315138;
        v57 = MEMORY[0x1AC56EED0](v1, MEMORY[0x1E69E6158]);
        v59 = v58;

        v60 = sub_1A85F0394(v57, v59, &v69);

        *(v55 + 4) = v60;
        _os_log_impl(&dword_1A85E5000, v53, v54, "batchDownloadTransfersForMessages: no attachment transfer guids to download for message guids: %s", v55, 0xCu);
        sub_1A85F1084(v56);
        MEMORY[0x1AC571F20](v56, -1, -1);
        MEMORY[0x1AC571F20](v55, -1, -1);
      }

      else
      {
      }

      v61 = sub_1A87386D4(MEMORY[0x1E69E7CC0]);
      v62 = v0[1];

      return v62(v61);
    }
  }

  v6 = 0;
  v7 = v1 & 0xC000000000000001;
  v1 = (v4 + 32);
  v8 = &selRef_attributionInfo;
  while (2)
  {
    v9 = v6;
    while (1)
    {
      if (v7)
      {
        v10 = MEMORY[0x1AC56F710](v9, v0[2]);
      }

      else
      {
        if (v9 >= *(v2 + 16))
        {
          goto LABEL_63;
        }

        v10 = *&v1[8 * v9];
      }

      v11 = v10;
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v12 = [v10 v8[507]];
      if (v12)
      {
        break;
      }

      ++v9;
      if (v6 == v3)
      {
        goto LABEL_28;
      }
    }

    v65 = v0;
    v13 = v12;
    v0 = sub_1A88C85F8();

    v14 = v0[2];
    v15 = *(v5 + 2);
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      __break(1u);
      goto LABEL_68;
    }

    v17 = v0;
    v0 = v0[2];
    v66 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v19 = *(v5 + 3) >> 1, v19 < v16))
    {
      if (v15 <= v16)
      {
        v20 = v16;
      }

      else
      {
        v20 = v15;
      }

      v5 = sub_1A85F1B30(isUniquelyReferenced_nonNull_native, v20, 1, v5);
      v19 = *(v5 + 3) >> 1;
    }

    v8 = &selRef_attributionInfo;
    v21 = v0;
    if (!v66[2])
    {
      v0 = v65;

      if (!v21)
      {
LABEL_27:

        v0[6] = v5;
        if (v6 != v3)
        {
          continue;
        }

LABEL_28:
        v64 = v5;
        v26 = 0;
        v67 = MEMORY[0x1E69E7CC0];
LABEL_29:
        v27 = v26;
        while (1)
        {
          if (v7)
          {
            v28 = MEMORY[0x1AC56F710](v27, v0[2]);
          }

          else
          {
            if (v27 >= *(v2 + 16))
            {
              goto LABEL_65;
            }

            v28 = *&v1[8 * v27];
          }

          v29 = v28;
          v26 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_64;
          }

          v30 = [v28 guid];
          if (v30)
          {
            v31 = v30;
            v32 = sub_1A88C82E8();
            v63 = v33;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v67 = sub_1A85F1B30(0, *(v67 + 2) + 1, 1, v67);
            }

            v35 = *(v67 + 2);
            v34 = *(v67 + 3);
            if (v35 >= v34 >> 1)
            {
              v67 = sub_1A85F1B30((v34 > 1), v35 + 1, 1, v67);
            }

            *(v67 + 2) = v35 + 1;
            v36 = &v67[16 * v35];
            *(v36 + 4) = v32;
            *(v36 + 5) = v63;
            if (v26 != v3)
            {
              goto LABEL_29;
            }

LABEL_46:
            v5 = v64;
            v1 = v67;
            if (!*(v64 + 2))
            {
              goto LABEL_55;
            }

            goto LABEL_47;
          }

          ++v27;
          if (v26 == v3)
          {
            goto LABEL_46;
          }
        }
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    break;
  }

  if (v19 - *(v5 + 2) < v0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  swift_arrayInitWithCopy();
  v0 = v65;

  if (!v21)
  {
    goto LABEL_27;
  }

  v23 = *(v5 + 2);
  v24 = __OFADD__(v23, v21);
  v25 = v21 + v23;
  if (!v24)
  {
    *(v5 + 2) = v25;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A87327E0(uint64_t a1)
{
  v4 = *v2;
  v4[8] = v1;

  v5 = v4[5];
  if (v1)
  {
    v6 = sub_1A8732984;
  }

  else
  {
    v4[9] = a1;
    v6 = sub_1A873291C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A873291C()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A8732984()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A87329E8()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB303C98);
  sub_1A85EF0E4(v0, qword_1EB303C98);
  return sub_1A88C7E48();
}

uint64_t RemoteIntentFileDownloadManager.batchDownloadTransfers(_:batchSize:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  if (qword_1EB302380 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB309050;
  v3[6] = qword_1EB309050;

  return MEMORY[0x1EEE6DFA0](sub_1A8732B08, v4, 0);
}

uint64_t sub_1A8732B08()
{
  v45 = v0;
  v1 = v0[3];
  v2 = *(v1 + 16);
  v0[7] = v2;
  if (v2)
  {
    v42 = v2;
    v3 = sub_1A88A8B54(v1);
    v43 = v0;
    v0[8] = v3;

    v0 = sub_1A8737F40(v4);

    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = sub_1A8736624(*(v3 + 16), 0, &unk_1EB306530);
      v7 = sub_1A8737BC4(v44, v6 + 4, v5, v3);
      v8 = v44[4];

      sub_1A85EF290();
      if (v7 != v5)
      {
        __break(1u);
        goto LABEL_32;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    v9 = sub_1A8737F40(v6);

    if (*(v9 + 16) <= v0[2] >> 3)
    {
      v44[0] = v0;
      sub_1A8736C1C(v9);

      v5 = v44[0];
    }

    else
    {
      v5 = sub_1A8736D48(v9, v0);
    }

    v10 = *(v5 + 16);
    v0 = v43;
    if (v10)
    {
      v11 = sub_1A8736624(*(v5 + 16), 0, &unk_1EB306530);
      v8 = sub_1A85F1C3C(v44, v11 + 4, v10, v5);

      sub_1A85EF290();
      if (v8 == v10)
      {
        v12 = v11[2];
        if (v12 && (v13 = v43[4], v13 > 0))
        {

          v8 = sub_1A8737FD8(0, v12, v13, v11, v13);
        }

        else
        {
          sub_1A870CCE0(&qword_1EB3034D8);
          v8 = swift_allocObject();
          *(v8 + 16) = xmmword_1A88E14F0;
          *(v8 + 32) = v11;
        }

        v43[9] = 0;
        v43[10] = v8;
        if (qword_1EB3020E0 == -1)
        {
          goto LABEL_17;
        }

        goto LABEL_33;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      swift_once();
LABEL_17:
      v14 = sub_1A88C7E58();
      v0[11] = sub_1A85EF0E4(v14, qword_1EB303C98);

      v15 = sub_1A88C7E38();
      v16 = sub_1A88C89D8();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = v0[3];
        v41 = v0[4];
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v44[0] = v19;
        *v18 = 134219010;
        *(v18 + 4) = *(v8 + 16);

        *(v18 + 12) = 2048;
        v20 = *(v5 + 16);

        *(v18 + 14) = v20;

        *(v18 + 22) = 2048;
        *(v18 + 24) = v42;

        *(v18 + 32) = 2048;
        *(v18 + 34) = v41;
        *(v18 + 42) = 2080;
        v21 = MEMORY[0x1AC56EED0](v17, MEMORY[0x1E69E6158]);
        v23 = sub_1A85F0394(v21, v22, v44);

        *(v18 + 44) = v23;
        _os_log_impl(&dword_1A85E5000, v15, v16, "batchDownloadTransfers: kicking off %ld batches for %ld total guids needing download, out of a total of %ld requested. Batch size: %ld. All requested guids: %s", v18, 0x34u);
        sub_1A85F1084(v19);
        MEMORY[0x1AC571F20](v19, -1, -1);
        MEMORY[0x1AC571F20](v18, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v36 = v0[5];
      v35 = v0[6];
      v37 = sub_1A870CCE0(&unk_1EB309080);
      v38 = sub_1A85FC56C(&qword_1EB303CB0, type metadata accessor for RemoteIntentFileDownloadActor);
      v39 = swift_task_alloc();
      v0[12] = v39;
      *(v39 + 16) = v8;
      *(v39 + 24) = v36;
      v40 = swift_task_alloc();
      v0[13] = v40;
      *v40 = v0;
      v40[1] = sub_1A87331D8;
      v47 = v37;

      return MEMORY[0x1EEE6DBF8](v0 + 2, v37, v37, v35, v38, &unk_1A88E53A0, v39, v37);
    }

    if (qword_1EB3020E0 != -1)
    {
      swift_once();
    }

    v24 = sub_1A88C7E58();
    sub_1A85EF0E4(v24, qword_1EB303C98);

    v25 = sub_1A88C7E38();
    v26 = sub_1A88C89D8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v43[3];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v44[0] = v29;
      *v28 = 136315138;
      v30 = MEMORY[0x1AC56EED0](v27, MEMORY[0x1E69E6158]);
      v32 = sub_1A85F0394(v30, v31, v44);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_1A85E5000, v25, v26, "batchDownloadTransfers: all file transfers have already been downloaded for: %s. Returning existing file urls.", v28, 0xCu);
      sub_1A85F1084(v29);
      MEMORY[0x1AC571F20](v29, -1, -1);
      MEMORY[0x1AC571F20](v28, -1, -1);
    }
  }

  else
  {
    v3 = sub_1A87386D4(MEMORY[0x1E69E7CC0]);
  }

  v33 = v0[1];

  return v33(v3);
}

uint64_t sub_1A87331D8()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1A8733328, v1, 0);
}

uint64_t sub_1A8733328()
{
  v20 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[2];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19[0] = v1;
  sub_1A8738358(v3, sub_1A87372B8, 0, isUniquelyReferenced_nonNull_native, v19);

  v5 = v19[0];
  if (v2)
  {
  }

  else
  {
    swift_retain_n();

    v7 = sub_1A88C7E38();
    v8 = sub_1A88C89D8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[7];
      v10 = v0[3];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19[0] = v12;
      *v11 = 134218754;
      v13 = *(v3 + 16);

      *(v11 + 4) = v13;

      *(v11 + 12) = 2048;
      v14 = *(v5 + 16);

      *(v11 + 14) = v14;

      *(v11 + 22) = 2048;
      *(v11 + 24) = v9;

      *(v11 + 32) = 2080;
      v15 = MEMORY[0x1AC56EED0](v10, MEMORY[0x1E69E6158]);
      v17 = sub_1A85F0394(v15, v16, v19);

      *(v11 + 34) = v17;
      _os_log_impl(&dword_1A85E5000, v7, v8, "batchDownloadTransfers: Finished with %ld newly downloaded guids, and %ld total results out of (%ld requested). All requested guids: %s", v11, 0x2Au);
      sub_1A85F1084(v12);
      MEMORY[0x1AC571F20](v12, -1, -1);
      MEMORY[0x1AC571F20](v11, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v18 = v0[1];

    return v18(v5);
  }
}

uint64_t sub_1A87335A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for RemoteIntentFileMirrorRequestTask();
  v4 = sub_1A85FC56C(&qword_1EB303E38, type metadata accessor for RemoteIntentFileMirrorRequestTask);
  result = MEMORY[0x1AC56F1E0](v2, v3, v4);
  v6 = 0;
  v15 = result;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  for (i = (v7 + 63) >> 6; v9; result = )
  {
    v11 = v6;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = *(*(a1 + 56) + ((v11 << 9) | (8 * v12)));

    sub_1A87C1A5C(&v14, v13);
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= i)
    {

      return v15;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}