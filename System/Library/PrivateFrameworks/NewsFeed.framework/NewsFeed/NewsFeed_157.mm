size_t sub_1D69A41C4(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1D69A76BC();
  sub_1D5C28DE4(0, &qword_1EC88F168, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for DebugFormatObject);
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
  sub_1D5C28DE4(0, &qword_1EC88F168, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for DebugFormatObject);
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

size_t sub_1D69A4400(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1D69A774C();
  sub_1D5C28DE4(0, &qword_1EC88F178, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for DebugFormatObject);
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
  sub_1D5C28DE4(0, &qword_1EC88F178, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for DebugFormatObject);
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

size_t sub_1D69A463C(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1D69A7824();
  sub_1D5C28DE4(0, &qword_1EC88F198, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for DebugFormatObject);
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
  sub_1D5C28DE4(0, &qword_1EC88F198, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for DebugFormatObject);
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

size_t sub_1D69A4878(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1D69A78B4();
  sub_1D5C28DE4(0, &qword_1EC88F1A8, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for DebugFormatObject);
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
  sub_1D5C28DE4(0, &qword_1EC88F1A8, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for DebugFormatObject);
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

void *sub_1D69A4AB4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D5B5AB24(0, &unk_1EDF01D20, sub_1D69A7D4C, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D69A7D4C(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D69A4C00(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D5B5A7F0(0, &qword_1EC88EEB0, &type metadata for DebugFormatWorkspaceDevice, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1D69A4D14(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D5B5A7F0(0, &qword_1EC88EEB8, &type metadata for DebugFormatWorkspaceDeviceSection, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1D69A4E4C(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1D69A5938();
  sub_1D5C28DE4(0, &qword_1EDF170B0, sub_1D5B53E88, &type metadata for FormatLayoutModel, MEMORY[0x1E69D7BF0]);
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
  sub_1D5C28DE4(0, &qword_1EDF170B0, sub_1D5B53E88, &type metadata for FormatLayoutModel, MEMORY[0x1E69D7BF0]);
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

char *sub_1D69A5088(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D5B5A7F0(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 40);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[40 * v10])
    {
      memmove(v14, v15, 40 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

unint64_t sub_1D69A5214()
{
  result = qword_1EDF1B0D0;
  if (!qword_1EDF1B0D0)
  {
    sub_1D5B5A7F0(255, &qword_1EDF3C8C0, &type metadata for FormatContentSubgroup.ResolvedContainer, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B0D0);
  }

  return result;
}

unint64_t sub_1D69A52B0()
{
  result = qword_1EDF0E350;
  if (!qword_1EDF0E350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E350);
  }

  return result;
}

unint64_t sub_1D69A5408()
{
  result = qword_1EDF138A0;
  if (!qword_1EDF138A0)
  {
    sub_1D5B5A7F0(255, &qword_1EDF428F8, &type metadata for FeedSubscriptionPaidAccess, MEMORY[0x1E69E6720]);
    sub_1D69A54A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF138A0);
  }

  return result;
}

unint64_t sub_1D69A54A4()
{
  result = qword_1EDF138B8[0];
  if (!qword_1EDF138B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF138B8);
  }

  return result;
}

unint64_t sub_1D69A5520()
{
  result = qword_1EC88EAC0;
  if (!qword_1EC88EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88EAC0);
  }

  return result;
}

uint64_t sub_1D69A55A4()
{
  v0 = sub_1D72648CC();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

void sub_1D69A55F8()
{
  if (!qword_1EC88EB38)
  {
    sub_1D5B5A7F0(255, &qword_1EC88EB40, &type metadata for FormatInspectionGroup, MEMORY[0x1E69E62F8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88EB38);
    }
  }
}

void sub_1D69A5674()
{
  if (!qword_1EC8803C0)
  {
    sub_1D5B483C4(255, &qword_1EC880AD0);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8803C0);
    }
  }
}

void sub_1D69A56E0()
{
  if (!qword_1EC88EB60)
  {
    sub_1D5B7EB5C(255, &qword_1EDF1B790);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88EB60);
    }
  }
}

void sub_1D69A574C()
{
  if (!qword_1EDF01DD8)
  {
    sub_1D5B5A7F0(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF01DD8);
    }
  }
}

void sub_1D69A57C8()
{
  if (!qword_1EC87FA98)
  {
    sub_1D5C829EC(255, &qword_1EC88EC60);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC87FA98);
    }
  }
}

void sub_1D69A5840()
{
  if (!qword_1EC88EC78)
  {
    sub_1D5B5A7F0(255, &unk_1EC88EC80, &type metadata for DebugFormatWeather, MEMORY[0x1E69D6EA8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88EC78);
    }
  }
}

void sub_1D69A58BC()
{
  if (!qword_1EDF17050)
  {
    sub_1D5B4E1A4();
    sub_1D5B53E88();
    v0 = sub_1D725E28C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17050);
    }
  }
}

void sub_1D69A5938()
{
  if (!qword_1EDF02388)
  {
    sub_1D5C28DE4(255, &qword_1EDF170B0, sub_1D5B53E88, &type metadata for FormatLayoutModel, MEMORY[0x1E69D7BF0]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02388);
    }
  }
}

void sub_1D69A59C8()
{
  if (!qword_1EC88ED08)
  {
    sub_1D5BE1330(255, &qword_1EC881770);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88ED08);
    }
  }
}

void sub_1D69A5A38()
{
  if (!qword_1EC88ED18)
  {
    sub_1D5C829EC(255, &qword_1EC88ED20);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88ED18);
    }
  }
}

uint64_t sub_1D69A5AB0(uint64_t a1, uint64_t a2)
{
  sub_1D5C829EC(0, &qword_1EC88ED20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D69A5B34()
{
  if (!qword_1EC88ED28)
  {
    sub_1D5C829EC(255, &qword_1EC88ED20);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88ED28);
    }
  }
}

void sub_1D69A5BAC()
{
  if (!qword_1EDF19720)
  {
    sub_1D5B5A7F0(255, &qword_1EDF264C8, &type metadata for FormatImage, type metadata accessor for FormatCommandActionValue.CaseValue);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19720);
    }
  }
}

void sub_1D69A5C28()
{
  if (!qword_1EDF19678)
  {
    sub_1D5C28DE4(255, &qword_1EDF21820, sub_1D69A5CB8, &type metadata for FormatTextNodeStyle.Selector, type metadata accessor for FormatNodeStyleSelectorOrder);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19678);
    }
  }
}

unint64_t sub_1D69A5CB8()
{
  result = qword_1EDF2BD88;
  if (!qword_1EDF2BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BD88);
  }

  return result;
}

void sub_1D69A5D0C()
{
  if (!qword_1EDF19658)
  {
    sub_1D5C28DE4(255, &qword_1EDF21800, sub_1D69A5D9C, &type metadata for FormatImageNodeStyle.Selector, type metadata accessor for FormatNodeStyleSelectorOrder);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19658);
    }
  }
}

unint64_t sub_1D69A5D9C()
{
  result = qword_1EDF2B0E8;
  if (!qword_1EDF2B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B0E8);
  }

  return result;
}

void sub_1D69A5DF0()
{
  if (!qword_1EDF01EC8)
  {
    sub_1D5C28DE4(255, &qword_1EDF0A920, sub_1D69A5E80, &type metadata for FormatAnimationNodeStyle.Selector, type metadata accessor for FormatNodeStyleSelectorOrder);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF01EC8);
    }
  }
}

unint64_t sub_1D69A5E80()
{
  result = qword_1EDF0D0A8;
  if (!qword_1EDF0D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D0A8);
  }

  return result;
}

void sub_1D69A5ED4()
{
  if (!qword_1EDF19668)
  {
    sub_1D5C28DE4(255, &qword_1EDF21810, sub_1D679B868, &type metadata for FormatViewNodeStyle.Selector, type metadata accessor for FormatNodeStyleSelectorOrder);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19668);
    }
  }
}

void sub_1D69A5F64()
{
  if (!qword_1EDF19580)
  {
    sub_1D5BE1330(255, &qword_1EDF1B630);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19580);
    }
  }
}

void sub_1D69A604C()
{
  if (!qword_1EDF19B80)
  {
    sub_1D5C28DE4(255, &qword_1EDF3C0D8, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19B80);
    }
  }
}

void sub_1D69A60DC()
{
  if (!qword_1EDF19690)
  {
    sub_1D5C28DE4(255, qword_1EDF21838, sub_1D69A616C, &type metadata for FormatSupplementaryNodeStyle.Selector, type metadata accessor for FormatNodeStyleSelectorOrder);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19690);
    }
  }
}

unint64_t sub_1D69A616C()
{
  result = qword_1EDF21700;
  if (!qword_1EDF21700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21700);
  }

  return result;
}

void sub_1D69A61C0()
{
  if (!qword_1EDF01FD8)
  {
    sub_1D5B5A7F0(255, &qword_1EDF0D050, &type metadata for FormatAccessibilityData, type metadata accessor for FormatCommandActionValue.CaseValue);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF01FD8);
    }
  }
}

void sub_1D69A623C()
{
  if (!qword_1EDF0D040)
  {
    sub_1D5B5A498(255, &qword_1EDF1A690);
    v0 = type metadata accessor for FormatCommandActionValue.CaseValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0D040);
    }
  }
}

void sub_1D69A62A4()
{
  if (!qword_1EDF01FD0)
  {
    sub_1D5B5A7F0(255, &qword_1EDF0D048, MEMORY[0x1E69E6158], type metadata accessor for FormatCommandActionValue.CaseValue);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF01FD0);
    }
  }
}

void sub_1D69A6320()
{
  if (!qword_1EC88ED80)
  {
    sub_1D5B5A7F0(255, &qword_1EC88ED88, &type metadata for FormatMenuGroupableData, type metadata accessor for FormatCommandActionValue.CaseValue);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88ED80);
    }
  }
}

void sub_1D69A639C()
{
  if (!qword_1EDF01EE8)
  {
    sub_1D5C28DE4(255, &qword_1EDF0A950, sub_1D6735B80, &type metadata for FormatGroupNodeMaskStyle.Selector, type metadata accessor for FormatNodeStyleSelectorOrder);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF01EE8);
    }
  }
}

void sub_1D69A642C()
{
  if (!qword_1EC88ED98)
  {
    sub_1D5C28DE4(255, &qword_1EDF0A940, sub_1D6010264, &type metadata for FormatGroupNodeStyle.Selector, type metadata accessor for FormatNodeStyleSelectorOrder);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88ED98);
    }
  }
}

void sub_1D69A64BC()
{
  if (!qword_1EDF01ED8)
  {
    sub_1D5C28DE4(255, &qword_1EDF0A930, sub_1D61939F0, &type metadata for FormatWebEmbedNodeStyle.Selector, type metadata accessor for FormatNodeStyleSelectorOrder);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF01ED8);
    }
  }
}

void sub_1D69A654C()
{
  if (!qword_1EDF19730)
  {
    sub_1D5B5A7F0(255, qword_1EDF264D0, &type metadata for FormatStateMachineEvent, type metadata accessor for FormatCommandActionValue.CaseValue);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19730);
    }
  }
}

void sub_1D69A65C8()
{
  if (!qword_1EDF19650)
  {
    sub_1D5C28DE4(255, &unk_1EDF217F0, sub_1D615ADFC, &type metadata for FormatCustomNodeStyle.Selector, type metadata accessor for FormatNodeStyleSelectorOrder);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19650);
    }
  }
}

void sub_1D69A6658()
{
  if (!qword_1EC88EDC0)
  {
    sub_1D5C28DE4(255, &qword_1EC88EDC8, sub_1D69A66E8, &type metadata for FormatMicaNodeStyle.Selector, type metadata accessor for FormatNodeStyleSelectorOrder);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88EDC0);
    }
  }
}

unint64_t sub_1D69A66E8()
{
  result = qword_1EC88EDD0;
  if (!qword_1EC88EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88EDD0);
  }

  return result;
}

void sub_1D69A673C()
{
  if (!qword_1EDF01F00)
  {
    sub_1D5C28DE4(255, &qword_1EDF0A970, sub_1D67AE808, &type metadata for FormatLayeredMediaNodeStyle.Selector, type metadata accessor for FormatNodeStyleSelectorOrder);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF01F00);
    }
  }
}

void sub_1D69A67CC()
{
  if (!qword_1EC88EE00)
  {
    sub_1D5C28DE4(255, &qword_1EC88D4E0, sub_1D68890C8, &type metadata for FormatVideoNodeStyle.Selector, type metadata accessor for FormatNodeStyleSelectorOrder);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88EE00);
    }
  }
}

void sub_1D69A685C()
{
  if (!qword_1EC88EE20)
  {
    sub_1D5C28DE4(255, &qword_1EC8846F8, sub_1D615EB64, &type metadata for FormatIssueCoverNodeStyle.Selector, type metadata accessor for FormatNodeStyleSelectorOrder);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88EE20);
    }
  }
}

void sub_1D69A68EC()
{
  if (!qword_1EC88EE40)
  {
    sub_1D5C28DE4(255, &qword_1EC88EE48, sub_1D69A697C, &type metadata for FormatVideoPlayerNodeStyle.Selector, type metadata accessor for FormatNodeStyleSelectorOrder);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88EE40);
    }
  }
}

unint64_t sub_1D69A697C()
{
  result = qword_1EC88EE50;
  if (!qword_1EC88EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88EE50);
  }

  return result;
}

void sub_1D69A69D0()
{
  if (!qword_1EDF01EF0)
  {
    sub_1D5C28DE4(255, &qword_1EDF0A968, sub_1D6180558, &type metadata for FormatProgressViewNodeStyle.Selector, type metadata accessor for FormatNodeStyleSelectorOrder);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF01EF0);
    }
  }
}

void sub_1D69A6A60()
{
  if (!qword_1EDF01F08)
  {
    sub_1D5C28DE4(255, &qword_1EDF0A980, sub_1D69A6AF0, &type metadata for FormatPuzzleEmbedNodeStyle.Selector, type metadata accessor for FormatNodeStyleSelectorOrder);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF01F08);
    }
  }
}

unint64_t sub_1D69A6AF0()
{
  result = qword_1EDF0B4B8;
  if (!qword_1EDF0B4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B4B8);
  }

  return result;
}

void sub_1D69A6B44()
{
  if (!qword_1EC88EE68)
  {
    sub_1D5C28DE4(255, &qword_1EDF0A960, sub_1D69A6BD4, &type metadata for FormatSponsoredBannerNodeStyle.Selector, type metadata accessor for FormatNodeStyleSelectorOrder);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88EE68);
    }
  }
}

unint64_t sub_1D69A6BD4()
{
  result = qword_1EDF09B48[0];
  if (!qword_1EDF09B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF09B48);
  }

  return result;
}

void sub_1D69A6C28()
{
  if (!qword_1EC88EED0)
  {
    sub_1D69A6CB0(255, &qword_1EC87FAD0, type metadata accessor for AttributeName);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88EED0);
    }
  }
}

void sub_1D69A6CB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D69A6D54()
{
  if (!qword_1EC88EF70)
  {
    sub_1D5B5A7F0(255, &qword_1EC88EF78, &type metadata for DebugInspectionDataSection, MEMORY[0x1E69E62F8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88EF70);
    }
  }
}

void sub_1D69A6DD0()
{
  if (!qword_1EC88EFA0)
  {
    sub_1D69A6CB0(255, &qword_1EC88EFA8, type metadata accessor for DebugFormatLayoutTreeItem);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88EFA0);
    }
  }
}

void sub_1D69A6E54()
{
  if (!qword_1EC88F000)
  {
    sub_1D5C28DE4(255, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F000);
    }
  }
}

void sub_1D69A6EE4()
{
  if (!qword_1EC88F010)
  {
    sub_1D5C28DE4(255, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F010);
    }
  }
}

void sub_1D69A6F74()
{
  if (!qword_1EC88F018)
  {
    sub_1D5C28DE4(255, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F018);
    }
  }
}

void sub_1D69A7004()
{
  if (!qword_1EC88F028)
  {
    sub_1D5C28DE4(255, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F028);
    }
  }
}

void sub_1D69A7094()
{
  if (!qword_1EC88F030)
  {
    sub_1D5C28DE4(255, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F030);
    }
  }
}

void sub_1D69A7124()
{
  if (!qword_1EC88F038)
  {
    sub_1D5C28DE4(255, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F038);
    }
  }
}

void sub_1D69A71B4()
{
  if (!qword_1EC88F040)
  {
    sub_1D5C28DE4(255, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F040);
    }
  }
}

void sub_1D69A7274()
{
  if (!qword_1EC88F088)
  {
    sub_1D5C28DE4(255, &qword_1EDF3A6C0, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatSelectorValueSelector);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F088);
    }
  }
}

void sub_1D69A7304()
{
  if (!qword_1EC88F090)
  {
    sub_1D5B5AE40(255, &qword_1EDF3A6A0, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatSelectorValueSelector);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F090);
    }
  }
}

void sub_1D69A7388()
{
  if (!qword_1EC88F0A0)
  {
    sub_1D5B5AE40(255, &qword_1EDF3A6B8, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatSelectorValueSelector);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F0A0);
    }
  }
}

void sub_1D69A740C()
{
  if (!qword_1EC88F0D8)
  {
    sub_1D69A8A40(255, &qword_1EC88F0E0, type metadata accessor for FormatDerivedDataResultOptionReference);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F0D8);
    }
  }
}

void sub_1D69A7488()
{
  if (!qword_1EC88F120)
  {
    sub_1D5B5AE40(255, &qword_1EDF43B90, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F120);
    }
  }
}

void sub_1D69A750C()
{
  if (!qword_1EC88F130)
  {
    sub_1D5C28DE4(255, &qword_1EC88F138, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for DebugFormatObject);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F130);
    }
  }
}

void sub_1D69A759C()
{
  if (!qword_1EC88F140)
  {
    sub_1D5C28DE4(255, &qword_1EC88F148, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for DebugFormatObject);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F140);
    }
  }
}

void sub_1D69A762C()
{
  if (!qword_1EC88F150)
  {
    sub_1D5C28DE4(255, &qword_1EC88F158, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for DebugFormatObject);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F150);
    }
  }
}

void sub_1D69A76BC()
{
  if (!qword_1EC88F160)
  {
    sub_1D5C28DE4(255, &qword_1EC88F168, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for DebugFormatObject);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F160);
    }
  }
}

void sub_1D69A774C()
{
  if (!qword_1EC88F170)
  {
    sub_1D5C28DE4(255, &qword_1EC88F178, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for DebugFormatObject);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F170);
    }
  }
}

void sub_1D69A7824()
{
  if (!qword_1EC88F190)
  {
    sub_1D5C28DE4(255, &qword_1EC88F198, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for DebugFormatObject);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F190);
    }
  }
}

void sub_1D69A78B4()
{
  if (!qword_1EC88F1A0)
  {
    sub_1D5C28DE4(255, &qword_1EC88F1A8, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for DebugFormatObject);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F1A0);
    }
  }
}

void sub_1D69A7944()
{
  if (!qword_1EC88F1B0)
  {
    sub_1D5B483C4(255, &qword_1EC8941B0);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F1B0);
    }
  }
}

void sub_1D69A79B0()
{
  if (!qword_1EC88F1F8)
  {
    sub_1D5B5AE40(255, &qword_1EC88F200, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E5F90]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F1F8);
    }
  }
}

void sub_1D69A7A68()
{
  if (!qword_1EC88F240)
  {
    sub_1D5BE1330(255, &qword_1EC88F248);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F240);
    }
  }
}

void sub_1D69A7AD8()
{
  if (!qword_1EC88F250)
  {
    sub_1D5B7EB5C(255, &qword_1EDF1B810);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F250);
    }
  }
}

void sub_1D69A7B40()
{
  if (!qword_1EC88F260)
  {
    sub_1D5B5A7F0(255, &qword_1EC88F268, &type metadata for DebugFormatWorkspaceSnapshotManifestLayout, MEMORY[0x1E69E62F8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F260);
    }
  }
}

void sub_1D69A7BBC()
{
  if (!qword_1EDF1AC98)
  {
    sub_1D5B5A7F0(255, &qword_1EDF3C7C0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    type metadata accessor for CGRect(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDF1AC98);
    }
  }
}

void sub_1D69A7C60()
{
  if (!qword_1EC88F2F0)
  {
    sub_1D5B483C4(255, &qword_1EDF13418);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F2F0);
    }
  }
}

void sub_1D69A7CCC()
{
  if (!qword_1EDF04608)
  {
    sub_1D5B5A498(255, &unk_1EDF04620);
    sub_1D5B9EE48();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF04608);
    }
  }
}

void sub_1D69A7D80()
{
  if (!qword_1EDF02358)
  {
    sub_1D5B483C4(255, &qword_1EDF3B480);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02358);
    }
  }
}

void sub_1D69A7DEC()
{
  if (!qword_1EDF19A80)
  {
    sub_1D5B5AE40(255, &qword_1EDF43710, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatSelectorValueSelector);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19A80);
    }
  }
}

void sub_1D69A7EB8()
{
  if (!qword_1EC88F380)
  {
    sub_1D5B5534C(255, &qword_1EDF04500);
    sub_1D69A7F34();
    v0 = type metadata accessor for FeedItemFilterWrapperMatcher();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F380);
    }
  }
}

unint64_t sub_1D69A7F34()
{
  result = qword_1EC88F390;
  if (!qword_1EC88F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F390);
  }

  return result;
}

void sub_1D69A804C()
{
  if (!qword_1EC88F3C0)
  {
    sub_1D5C28DE4(255, &qword_1EC88F3C8, sub_1D69A7F34, &type metadata for FeedItemFilterTagMatcher, type metadata accessor for FeedItemFilterResultEntry);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F3C0);
    }
  }
}

void sub_1D69A80DC()
{
  if (!qword_1EC88F3D0)
  {
    sub_1D5C28DE4(255, &qword_1EC88F3D8, sub_1D69A7F34, &type metadata for FeedItemFilterTagMatcher, type metadata accessor for FeedItemFilterApplicator);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F3D0);
    }
  }
}

void sub_1D69A8278()
{
  if (!qword_1EC88F418)
  {
    type metadata accessor for FeedItemFilterHeadlineMatcher();
    sub_1D69A82E4();
    v0 = type metadata accessor for FeedItemFilterWrapperMatcher();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F418);
    }
  }
}

void sub_1D69A846C()
{
  if (!qword_1EC88F440)
  {
    sub_1D5B483C4(255, &qword_1EC88F448);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F440);
    }
  }
}

void sub_1D69A84E4()
{
  if (!qword_1EDF19A90)
  {
    sub_1D5B483C4(255, &qword_1EDF3A6E8);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19A90);
    }
  }
}

unint64_t sub_1D69A8550()
{
  result = qword_1EDF1ADC8;
  if (!qword_1EDF1ADC8)
  {
    sub_1D630B744();
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_1EDF1ADC8);
  }

  return result;
}

uint64_t sub_1D69A85B0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    sub_1D5BE1330(255, a3);
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1D69A8678(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  if (!*a2)
  {
    sub_1D69A85B0(255, a3, a4);
    v5 = sub_1D72644CC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D69A87DC()
{
  result = qword_1EDF194A0;
  if (!qword_1EDF194A0)
  {
    type metadata accessor for FormatLayoutView();
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EDF194A0);
  }

  return result;
}

void sub_1D69A883C()
{
  if (!qword_1EDF19AC8)
  {
    sub_1D5B483C4(255, &qword_1EDF3B4A0);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19AC8);
    }
  }
}

void sub_1D69A88A8()
{
  if (!qword_1EDF19AB8)
  {
    sub_1D5B483C4(255, &qword_1EDF3B490);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19AB8);
    }
  }
}

void sub_1D69A8948()
{
  if (!qword_1EC88F538)
  {
    sub_1D69A8A40(255, &qword_1EC8830E0, type metadata accessor for DebugGroupLayoutKey);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F538);
    }
  }
}

void sub_1D69A89C4()
{
  if (!qword_1EC88F548)
  {
    sub_1D69A8A40(255, &qword_1EC88F550, type metadata accessor for GroupLayoutKey);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F548);
    }
  }
}

void sub_1D69A8A40(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D69A8AAC()
{
  if (!qword_1EDF19AD0)
  {
    sub_1D5B483C4(255, &qword_1EDF3B4D8);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19AD0);
    }
  }
}

void sub_1D69A8B18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1D69A8B98()
{
  if (!qword_1EDF02380)
  {
    sub_1D5B483C4(255, &qword_1EDF170A8);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02380);
    }
  }
}

uint64_t LayeredMediaViewProvider.view(for:filters:)(uint64_t a1, uint64_t a2)
{
  sub_1D5B49714(0, &qword_1EDF3C8E8);
  sub_1D725BDCC();

  v4 = sub_1D725B92C();
  sub_1D5B49714(0, &qword_1EDF04C00);
  sub_1D725BA8C();

  v5 = sub_1D725A95C();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  type metadata accessor for LayeredMediaView(0);

  v7 = sub_1D725BA8C();

  return v7;
}

uint64_t sub_1D69A8DB4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = *(*result + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v35 = a2;
    v74 = MEMORY[0x1E69E7CC0];
    sub_1D6997E60(0, v3, 0);
    v5 = (v2 + 32);
    v4 = v74;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v8 = v5[3];
      v68 = v5[2];
      v69 = v8;
      v66 = v6;
      v67 = v7;
      v9 = v5[4];
      v10 = v5[5];
      v11 = v5[6];
      *(v72 + 9) = *(v5 + 105);
      v71 = v10;
      v72[0] = v11;
      v70 = v9;
      memmove(__dst, v5, 0x79uLL);
      if (sub_1D5ED9718(__dst) == 1)
      {
        v12 = sub_1D5D6EF44(__dst);
        v13 = objc_allocWithZone(MEMORY[0x1E69CE110]);
        v40 = v70;
        v41 = v71;
        *v42 = v72[0];
        *&v42[9] = *(v72 + 9);
        v36 = v66;
        v37 = v67;
        v38 = v68;
        v39 = v69;
        v14 = sub_1D5D6EF44(&v36);
        sub_1D5ED9724(&v66, &v58);
        sub_1D5ED9780(v14, &v58);
        v15 = [v13 init];
        sub_1D5ED98AC(0, &qword_1EDF17318, &qword_1EDF045A8);
        objc_allocWithZone(v16);
        v17 = v15;
        v18 = sub_1D725CB8C();
        sub_1D5ED97DC(&v66);
        v47 = v12[4];
        v48 = v12[5];
        v49[0] = v12[6];
        *(v49 + 9) = *(v12 + 105);
        v43 = *v12;
        v44 = v12[1];
        v45 = v12[2];
        v46 = v12[3];
        *&v50 = v18;
        *(&v50 + 1) = v17;
        v55 = v47;
        v56 = v48;
        v57[0] = v49[0];
        *(v57 + 9) = *(v49 + 9);
        v51 = v43;
        v52 = v44;
        v53 = v45;
        v54 = v46;
        result = sub_1D5ED9830(&v50);
      }

      else
      {
        v19 = sub_1D5D6EF44(__dst);
        v20 = objc_allocWithZone(MEMORY[0x1E69CE100]);
        v47 = v70;
        v48 = v71;
        v49[0] = v72[0];
        *(v49 + 9) = *(v72 + 9);
        v43 = v66;
        v44 = v67;
        v45 = v68;
        v46 = v69;
        v21 = sub_1D5D6EF44(&v43);
        sub_1D5ED9724(&v66, &v58);
        sub_1D5ED9850(v21, &v58);
        v22 = [v20 init];
        sub_1D5ED98AC(0, &qword_1EDF17328, &qword_1EDF04638);
        objc_allocWithZone(v23);
        v24 = v22;
        v25 = sub_1D725CB8C();
        sub_1D5ED97DC(&v66);
        v40 = *(v19 + 64);
        v41 = *(v19 + 80);
        *v42 = *(v19 + 96);
        v42[16] = *(v19 + 112);
        v36 = *v19;
        v37 = *(v19 + 16);
        v38 = *(v19 + 32);
        v39 = *(v19 + 48);
        *&v50 = v25;
        *(&v50 + 1) = v24;
        v55 = v40;
        v56 = v41;
        v57[0] = *v42;
        LOBYTE(v57[1]) = v42[16];
        v51 = v36;
        v52 = v37;
        v53 = v38;
        v54 = v39;
        result = sub_1D5ED9904(&v50);
      }

      v64 = v56;
      v65[0] = v57[0];
      *(v65 + 9) = *(v57 + 9);
      v60 = v52;
      v61 = v53;
      v62 = v54;
      v63 = v55;
      v58 = v50;
      v59 = v51;
      v74 = v4;
      v27 = *(v4 + 16);
      v26 = *(v4 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_1D6997E60((v26 > 1), v27 + 1, 1);
        v4 = v74;
      }

      *(v4 + 16) = v27 + 1;
      v28 = (v4 + 144 * v27);
      v28[2] = v58;
      v29 = v59;
      v30 = v60;
      v31 = v62;
      v28[5] = v61;
      v28[6] = v31;
      v28[3] = v29;
      v28[4] = v30;
      v32 = v63;
      v33 = v64;
      v34 = v65[0];
      *(v28 + 153) = *(v65 + 9);
      v28[8] = v33;
      v28[9] = v34;
      v28[7] = v32;
      v5 += 8;
      --v3;
    }

    while (v3);
    a2 = v35;
  }

  *a2 = v4;
  return result;
}

char *sub_1D69A91B0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v6 = *a1;
  v7 = a2[5];
  v8 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v7);
  v9 = (*(v8 + 8))(v7, v8);
  v11 = v10;
  type metadata accessor for LayeredMediaViewModel();
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = v11;
  v12[4] = v6;
  v12[5] = a3;
  v13 = objc_allocWithZone(type metadata accessor for LayeredMediaView(0));

  result = sub_1D6F666C4(v12);
  *a4 = result;
  return result;
}

uint64_t LayeredMediaViewProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id FormatSystemColor.color.getter()
{
  switch(*v0)
  {
    case 1:
      v1 = [objc_opt_self() blackColor];
      goto LABEL_50;
    case 2:
      v1 = [objc_opt_self() clearColor];
      goto LABEL_50;
    case 3:
      v1 = [objc_opt_self() systemRedColor];
      goto LABEL_50;
    case 4:
      v1 = [objc_opt_self() systemGreenColor];
      goto LABEL_50;
    case 5:
      v1 = [objc_opt_self() systemBlueColor];
      goto LABEL_50;
    case 6:
      v1 = [objc_opt_self() systemOrangeColor];
      goto LABEL_50;
    case 7:
      v1 = [objc_opt_self() systemYellowColor];
      goto LABEL_50;
    case 8:
      v1 = [objc_opt_self() systemPinkColor];
      goto LABEL_50;
    case 9:
      v1 = [objc_opt_self() systemPurpleColor];
      goto LABEL_50;
    case 0xA:
      v1 = [objc_opt_self() systemMintColor];
      goto LABEL_50;
    case 0xB:
      v1 = [objc_opt_self() systemTealColor];
      goto LABEL_50;
    case 0xC:
      v1 = [objc_opt_self() systemCyanColor];
      goto LABEL_50;
    case 0xD:
      v1 = [objc_opt_self() systemIndigoColor];
      goto LABEL_50;
    case 0xE:
      v1 = [objc_opt_self() systemBrownColor];
      goto LABEL_50;
    case 0xF:
      v1 = [objc_opt_self() systemGrayColor];
      goto LABEL_50;
    case 0x10:
      v1 = [objc_opt_self() systemGray2Color];
      goto LABEL_50;
    case 0x11:
      v1 = [objc_opt_self() systemGray3Color];
      goto LABEL_50;
    case 0x12:
      v1 = [objc_opt_self() systemGray4Color];
      goto LABEL_50;
    case 0x13:
      v1 = [objc_opt_self() systemGray5Color];
      goto LABEL_50;
    case 0x14:
      v1 = [objc_opt_self() systemGray6Color];
      goto LABEL_50;
    case 0x15:
      v1 = [objc_opt_self() labelColor];
      goto LABEL_50;
    case 0x16:
      v1 = [objc_opt_self() secondaryLabelColor];
      goto LABEL_50;
    case 0x17:
      v1 = [objc_opt_self() tertiaryLabelColor];
      goto LABEL_50;
    case 0x18:
      v1 = [objc_opt_self() quaternaryLabelColor];
      goto LABEL_50;
    case 0x19:
      v1 = [objc_opt_self() linkColor];
      goto LABEL_50;
    case 0x1A:
      v1 = [objc_opt_self() placeholderTextColor];
      goto LABEL_50;
    case 0x1B:
      v1 = [objc_opt_self() separatorColor];
      goto LABEL_50;
    case 0x1C:
      v1 = [objc_opt_self() opaqueSeparatorColor];
      goto LABEL_50;
    case 0x1D:
      v1 = [objc_opt_self() systemBackgroundColor];
      goto LABEL_50;
    case 0x1E:
      v1 = [objc_opt_self() secondarySystemBackgroundColor];
      goto LABEL_50;
    case 0x1F:
      v1 = [objc_opt_self() tertiarySystemBackgroundColor];
      goto LABEL_50;
    case 0x20:
      v1 = [objc_opt_self() systemGroupedBackgroundColor];
      goto LABEL_50;
    case 0x21:
      v1 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
      goto LABEL_50;
    case 0x22:
      v1 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];
      goto LABEL_50;
    case 0x23:
      v1 = [objc_opt_self() systemFillColor];
      goto LABEL_50;
    case 0x24:
      v1 = [objc_opt_self() secondarySystemFillColor];
      goto LABEL_50;
    case 0x25:
      v1 = [objc_opt_self() tertiarySystemFillColor];
      goto LABEL_50;
    case 0x26:
      v1 = [objc_opt_self() quaternarySystemFillColor];
      goto LABEL_50;
    case 0x27:
      if (qword_1EC87D4B8 != -1)
      {
        swift_once();
      }

      v2 = *(qword_1EC9BA748 + 16);
      goto LABEL_41;
    case 0x28:
      if (qword_1EC87D4B8 != -1)
      {
        swift_once();
      }

      v2 = *(qword_1EC9BA748 + 24);
LABEL_41:

      result = v2;
      break;
    default:
      v1 = [objc_opt_self() whiteColor];
LABEL_50:

      result = v1;
      break;
  }

  return result;
}

uint64_t sub_1D69A98A8()
{
  sub_1D7264A0C();
  FormatSystemColor.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69A9910()
{
  FormatSystemColor.rawValue.getter();
  sub_1D72621EC();
}

uint64_t sub_1D69A9974()
{
  sub_1D7264A0C();
  FormatSystemColor.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D69A99D8@<X0>(unint64_t *a1@<X8>)
{
  result = FormatSystemColor.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D69A9A00(uint64_t a1)
{
  *(a1 + 8) = sub_1D69A9A30();
  result = sub_1D5C7A05C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D69A9A30()
{
  result = qword_1EC88F5D8;
  if (!qword_1EC88F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F5D8);
  }

  return result;
}

uint64_t sub_1D69A9A84()
{
  v0 = FormatSystemColor.rawValue.getter();
  v2 = v1;
  if (v0 == FormatSystemColor.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

unint64_t sub_1D69A9B20(uint64_t a1)
{
  result = sub_1D5C48F64();
  *(a1 + 8) = result;
  return result;
}

void sub_1D69A9B58(uint64_t a1)
{
  v3 = *v1;
  if (!*(v1 + 8))
  {
    v7 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v8 = v7();
    v9 = sub_1D5E02AFC(v8, v3);

    if (v2)
    {
      return;
    }

    v10 = v9;
    goto LABEL_10;
  }

  if (*(v1 + 8) != 1)
  {
    sub_1D6D2E874(a1, *v1);
    if (v2)
    {
      return;
    }

    v10 = v11;
LABEL_10:
    v12 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    *&v13 = v10;
    [v12 initWithFloat_];
    return;
  }

  v4 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext();
  v5 = v4();
  v6 = sub_1D5E03020(v5, v3);

  if (!v2)
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }
}

uint64_t _s8NewsFeed12FormatNumberO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      sub_1D5F2C6D4(*a2, 0);
      sub_1D5F2C6D4(v2, 0);
      v6 = sub_1D633A310(v2, v4);
      sub_1D5F2C6E8(v2, 0);
      v7 = v4;
      v8 = 0;
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      sub_1D5F2C6D4(*a2, 1u);
      sub_1D5F2C6D4(v2, 1u);
      LOBYTE(v6) = sub_1D633D10C(v2, v4);
      sub_1D5F2C6E8(v2, 1u);
      v7 = v4;
      v8 = 1;
LABEL_16:
      sub_1D5F2C6E8(v7, v8);
      return v6 & 1;
    }

LABEL_6:

LABEL_13:
    sub_1D5F2C6D4(v4, v5);
    sub_1D5F2C6E8(v2, v3);
    sub_1D5F2C6E8(v4, v5);
    return 0;
  }

  if (v5 != 2)
  {
    goto LABEL_13;
  }

  sub_1D5F2C6E8(*a1, 2u);
  sub_1D5F2C6E8(v4, 2u);
  v9 = (v2 >> 5) & 3;
  v10 = v4 & 0x60;
  if (v9)
  {
    if (v9 == 1)
    {
      if (v10 != 32 || ((v4 ^ v2) & 0x9FLL) != 0)
      {
        return 0;
      }
    }

    else
    {
      if (v10 != 64)
      {
        return 0;
      }

      if (v2 < 0)
      {
        if ((v4 & 0x80) == 0 || ((v4 ^ v2) & 0x1F) != 0)
        {
          return 0;
        }
      }

      else if ((v4 & 0x80) != 0 || ((v4 ^ v2) & 0x1F) != 0)
      {
        return 0;
      }
    }
  }

  else if ((v4 & 0x60) != 0 || v4 != v2)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_1D69A9EA4(uint64_t a1)
{
  result = sub_1D69A9ECC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D69A9ECC()
{
  result = qword_1EC88F5E0;
  if (!qword_1EC88F5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F5E0);
  }

  return result;
}

unint64_t sub_1D69A9F20(void *a1)
{
  a1[1] = sub_1D665BB40();
  a1[2] = sub_1D665BCBC();
  result = sub_1D69A9F58();
  a1[3] = result;
  return result;
}

unint64_t sub_1D69A9F58()
{
  result = qword_1EC88F5E8;
  if (!qword_1EC88F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F5E8);
  }

  return result;
}

NewsFeed::FormatVideoGravity_optional __swiftcall FormatVideoGravity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D69AA018(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7341657A69736572;
  v4 = 0xEC00000074636570;
  v5 = 0x80000001D73BA2F0;
  if (v2 != 1)
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000001D73BA2F0;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x657A69736572;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x7341657A69736572;
  if (*a2 == 1)
  {
    v5 = 0xEC00000074636570;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x657A69736572;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D69AA120()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69AA1CC()
{
  sub_1D72621EC();
}

uint64_t sub_1D69AA264()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D69AA318(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEC00000074636570;
  v5 = 0x7341657A69736572;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001D73BA2F0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x657A69736572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatVideoGravity.description.getter()
{
  v1 = 0x7341657A69736572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657A69736572;
  }
}

unint64_t sub_1D69AA460()
{
  result = qword_1EC88F5F0;
  if (!qword_1EC88F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F5F0);
  }

  return result;
}

unint64_t sub_1D69AA4B4(uint64_t a1)
{
  *(a1 + 8) = sub_1D69AA4E4();
  result = sub_1D69AA538();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D69AA4E4()
{
  result = qword_1EC88F5F8;
  if (!qword_1EC88F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F5F8);
  }

  return result;
}

unint64_t sub_1D69AA538()
{
  result = qword_1EC88F600;
  if (!qword_1EC88F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F600);
  }

  return result;
}

unint64_t sub_1D69AA58C(uint64_t a1)
{
  result = sub_1D69AA5B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D69AA5B4()
{
  result = qword_1EC88F608;
  if (!qword_1EC88F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F608);
  }

  return result;
}

unint64_t sub_1D69AA608(void *a1)
{
  a1[1] = sub_1D666B688();
  a1[2] = sub_1D666BA8C();
  result = sub_1D69AA460();
  a1[3] = result;
  return result;
}

uint64_t sub_1D69AA640()
{
  v1 = 0x7341657A69736572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657A69736572;
  }
}

void sub_1D69AA6B8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatOption();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for FormatDerivedDataOption();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v15 = *(v5 + 72);
    do
    {
      sub_1D69AB4C0(v14, v8, type metadata accessor for FormatOption);
      sub_1D69DFAF0(v8, v12);
      if (v2)
      {
        break;
      }

      sub_1D69AA824(v12);
      sub_1D60E13EC(v12);
      v2 = 0;
      v14 += v15;
      --v13;
    }

    while (v13);
  }
}

uint64_t sub_1D69AA824(uint64_t a1)
{
  sub_1D69AB468();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for FormatDerivedDataOption();
  v7 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v34 - v13;
  v15 = *a1;
  v16 = *(a1 + 8);
  swift_beginAccess();
  v17 = *(v1 + 56);
  if (!*(v17 + 16) || (v18 = sub_1D5B69D90(v15, v16), (v19 & 1) == 0))
  {
    swift_endAccess();
    sub_1D69AB4C0(a1, v6, type metadata accessor for FormatDerivedDataOption);
    (*(v7 + 56))(v6, 0, 1, v36);
    swift_beginAccess();

    sub_1D6D60D3C(v6, v15, v16);
    return swift_endAccess();
  }

  v35 = v15;
  sub_1D69AB4C0(*(v17 + 56) + *(v7 + 72) * v18, v10, type metadata accessor for FormatDerivedDataOption);
  v20 = v14;
  sub_1D60E27A4(v10, v14);
  swift_endAccess();
  if (!v14[40] && !*(a1 + 40))
  {
    v21 = *(a1 + 16);
    v38 = v14[16];
    v37 = v38;
    v34 = v21;
    v39 = v21;
    v22 = FormatOptionType.rawValue.getter();
    v24 = v23;
    if (v22 == FormatOptionType.rawValue.getter() && v24 == v25)
    {
    }

    else
    {
      v27 = sub_1D72646CC();

      if ((v27 & 1) == 0)
      {
        type metadata accessor for FormatDerivedDataError();
        sub_1D5E40444();
        swift_allocError();
        v29 = v28;
        v31 = *v20;
        v30 = v20[1];
        sub_1D6057620();
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D7273AE0;
        *(inited + 32) = v34;

        v33 = sub_1D5E26E28(inited);
        swift_setDeallocating();
        *v29 = v31;
        *(v29 + 8) = v30;
        *(v29 + 16) = v38;
        *(v29 + 24) = v33;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return sub_1D60E13EC(v20);
      }
    }
  }

  sub_1D69AB4C0(a1, v6, type metadata accessor for FormatDerivedDataOption);
  (*(v7 + 56))(v6, 0, 1, v36);
  swift_beginAccess();

  sub_1D6D60D3C(v6, v35, v16);
  swift_endAccess();
  return sub_1D60E13EC(v20);
}

uint64_t sub_1D69AAC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, unint64_t a4@<X8>)
{
  swift_beginAccess();
  v9 = *(v4 + 48);
  if (*(v9 + 16) && (v10 = sub_1D5B69D90(a1, a2), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    result = swift_endAccess();
    v14 = *(v12 + 16);
    v15 = 0uLL;
    v68 = v14;
    if (v14)
    {
      v56 = a4;
      v67 = v12 + 32;

      v16 = 0;
      v64 = a2;
      v65 = a3;
      v63 = a1;
      v66 = v12;
      while (1)
      {
        v17 = (v67 + 72 * v16);
        v76 = *v17;
        v19 = v17[2];
        v18 = v17[3];
        v20 = v17[1];
        v80 = *(v17 + 8);
        v78 = v19;
        v79 = v18;
        v77 = v20;
        a4 = v20;
        if (v76 == __PAIR128__(a2, a1) || (sub_1D72646CC() & 1) != 0)
        {
          swift_beginAccess();
          v21 = *(a4 + 32);
          v70 = *(a4 + 16);
          v22 = *(a4 + 48);
          v71 = v21;
          *v72 = v22;
          *&v72[14] = *(a4 + 62);
          swift_beginAccess();
          *&v75[14] = *(a3 + 62);
          v23 = a3[3];
          v74 = a3[2];
          *v75 = v23;
          v73 = a3[1];
          v24 = v70;
          v25 = v73;
          v26 = *(v70 + 16);
          if (v26 == *(v73 + 16))
          {
            break;
          }
        }

LABEL_45:
        if (++v16 == v68)
        {

          v14 = 0;
          v52 = 0uLL;
          v53 = 0uLL;
          v54 = 0uLL;
          a4 = v56;
          v15 = 0uLL;
          goto LABEL_50;
        }

        if (v16 >= *(v12 + 16))
        {
          __break(1u);
          goto LABEL_48;
        }
      }

      if (v26 && v70 != v73)
      {
        sub_1D670E798(&v76, v69);
        sub_1D5EB9AB0(&v70, v69);
        result = sub_1D5EB9AB0(&v73, v69);
        v27 = 0;
        while (v27 < *(v24 + 16))
        {
          if (v27 >= *(v25 + 16))
          {
            goto LABEL_54;
          }

          a4 = *(v24 + 32 + 8 * v27);
          v28 = *(v25 + 32 + 8 * v27);

          v29 = sub_1D60E14A8(a4, v28);

          if ((v29 & 1) == 0)
          {
            sub_1D670E7F4(&v76);
            sub_1D60E1A40(&v73);
            sub_1D60E1A40(&v70);
            a2 = v64;
            a3 = v65;
            a1 = v63;
            v12 = v66;
            goto LABEL_45;
          }

          if (v26 == ++v27)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
        __break(1u);
        return result;
      }

      sub_1D670E798(&v76, v69);
      sub_1D5EB9AB0(&v70, v69);
      sub_1D5EB9AB0(&v73, v69);
LABEL_17:
      a4 = *(*(&v70 + 1) + 16);
      if (a4 == *(*(&v73 + 1) + 16))
      {
        if (a4 && *(&v70 + 1) != *(&v73 + 1))
        {
          v30 = (*(&v73 + 1) + 56);
          v31 = (*(&v70 + 1) + 56);
          do
          {
            v34 = *(v31 - 1);
            v33 = *v31;
            v36 = *(v30 - 1);
            v35 = *v30;
            if (*(v31 - 3) == *(v30 - 3) && *(v31 - 2) == *(v30 - 2))
            {
              if (v34 != v36 || v33 != v35)
              {
                goto LABEL_34;
              }
            }

            else if ((sub_1D72646CC() & 1) == 0 || v34 != v36 || v33 != v35)
            {
              goto LABEL_34;
            }

            v30 += 4;
            v31 += 4;
            --a4;
          }

          while (a4);
        }

        v38 = v71;
        a4 = *v72;
        v40 = *v75;
        v39 = *&v75[8];
        v41 = *&v75[24] | (*&v75[28] << 32);
        v61 = *&v72[16];
        v62 = *&v72[24] | (*&v72[28] << 32);
        if (*&v72[28] >> 9 <= 0x7EuLL)
        {
          if (((v41 >> 41) & 0x7F) != 0x7F)
          {
            v87 = v74;
            v88 = *v75;
            v89 = *&v75[8];
            v90 = *&v75[16];
            v91 = *&v75[24];
            v92 = WORD2(v41);
            v81 = v71;
            v82 = *v72;
            v83 = *&v72[8];
            v84 = *&v72[16];
            v85 = *&v72[24];
            v86 = *&v72[28];
            v58 = *(&v71 + 1);
            v60 = *&v72[8];
            v47 = *&v75[24] | (*&v75[28] << 32);
            v48 = *&v75[8];
            v49 = *(&v74 + 1);
            v50 = v74;
            v51 = *&v75[16];
            v55 = sub_1D71F2BCC(&v81, &v87);
            sub_1D60E1448(v50, v49, v40, v48, v51, v47);
            sub_1D60E1448(v38, v58, a4, v60, v61, v62);
            sub_1D60E1A40(&v73);
            sub_1D60E1A40(&v70);
            sub_1D60E1478(v50, v49, v40, v48, v51, v47);
            sub_1D60E1478(v38, v58, a4, v60, v61, v62);
            if (v55)
            {
LABEL_52:

              v15 = v76;
              v52 = v77;
              v53 = v78;
              v54 = v79;
              v14 = v80;
              a4 = v56;
              goto LABEL_50;
            }

            sub_1D670E7F4(&v76);
            goto LABEL_44;
          }

          v57 = v71;
          v59 = *v72;
          v43 = *(&v71 + 1);
          v42 = *&v72[8];
          v44 = *v75;
          v45 = *(&v74 + 1);
          v46 = v74;
          a4 = *&v75[16];
          sub_1D60E145C(v71, *(&v71 + 1), *v72, *&v72[8], *&v72[16], *&v72[24] | (*&v72[28] << 32));
          sub_1D60E1A40(&v73);
          sub_1D60E1A40(&v70);
        }

        else
        {
          v57 = v71;
          v59 = *v72;
          v42 = *&v72[8];
          v43 = *(&v71 + 1);
          v44 = *v75;
          v45 = *(&v74 + 1);
          v46 = v74;
          a4 = *&v75[16];
          sub_1D60E1448(v74, *(&v74 + 1), *v75, *&v75[8], *&v75[16], *&v75[24] | (*&v75[28] << 32));
          sub_1D60E1A40(&v73);
          sub_1D60E1A40(&v70);
          if (((v41 >> 41) & 0x7F) == 0x7F)
          {
            goto LABEL_52;
          }
        }

        sub_1D670E7F4(&v76);
        sub_1D60E1478(v57, v43, v59, v42, v61, v62);
        sub_1D60E1478(v46, v45, v44, v39, a4, v41);
      }

      else
      {
LABEL_34:
        sub_1D670E7F4(&v76);
        sub_1D60E1A40(&v73);
        sub_1D60E1A40(&v70);
      }

LABEL_44:
      a2 = v64;
      a3 = v65;
      a1 = v63;
      v12 = v66;
      goto LABEL_45;
    }
  }

  else
  {
LABEL_48:
    result = swift_endAccess();
    v14 = 0;
    v15 = 0uLL;
  }

  v52 = 0uLL;
  v53 = 0uLL;
  v54 = 0uLL;
LABEL_50:
  *a4 = v15;
  *(a4 + 16) = v52;
  *(a4 + 32) = v53;
  *(a4 + 48) = v54;
  *(a4 + 64) = v14;
  return result;
}

uint64_t sub_1D69AB1D4(uint64_t a1)
{
  v2 = v1;
  v5 = *a1;
  v4 = *(a1 + 8);
  swift_beginAccess();
  v6 = *(v1 + 48);
  v7 = *(v6 + 16);

  if (v7 && (v8 = sub_1D5B69D90(v5, v4), (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 8 * v8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  swift_endAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1D699232C(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1D699232C((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[72 * v12];
  *(v13 + 2) = *a1;
  v14 = *(a1 + 16);
  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  *(v13 + 12) = *(a1 + 64);
  *(v13 + 4) = v15;
  *(v13 + 5) = v16;
  *(v13 + 3) = v14;
  swift_beginAccess();
  sub_1D670E798(a1, v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19[0] = *(v2 + 48);
  *(v2 + 48) = 0x8000000000000000;
  sub_1D6D79BF8(v10, v5, v4, isUniquelyReferenced_nonNull_native);

  *(v2 + 48) = v19[0];
  return swift_endAccess();
}

uint64_t sub_1D69AB368()
{
  if (*(*(v0 + 24) + 16) && (v1 = *(v0 + 16), v2 = *(v1 + 16), v3 = *(v1 + 24), , sub_1D6D62FB0(v2, v3, 7u), v5 = v4, , (v5 & 1) != 0))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D69AB3E4()
{

  return swift_deallocClassInstance();
}

void sub_1D69AB468()
{
  if (!qword_1EC8801B8)
  {
    type metadata accessor for FormatDerivedDataOption();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8801B8);
    }
  }
}

uint64_t sub_1D69AB4C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void __swiftcall FeedGroupBindingOptionsVariant.init(maxNoAccessArticles:minNoAccessArticles:)(NewsFeed::FeedGroupBindingOptionsVariant *__return_ptr retstr, Swift::Int_optional maxNoAccessArticles, Swift::Int_optional minNoAccessArticles)
{
  value = 0x7FFFFFFFFFFFFFFFLL;
  if (!maxNoAccessArticles.is_nil)
  {
    value = maxNoAccessArticles.value;
  }

  if (!minNoAccessArticles.is_nil)
  {
    if (value >= minNoAccessArticles.value)
    {
      v4 = 0;
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (value < 0)
  {
LABEL_7:
    minNoAccessArticles.value = 0;
    maxNoAccessArticles.value = 0;
    maxNoAccessArticles.is_nil = 1;
  }

  v4 = 1;
LABEL_10:
  retstr->maxNoAccessArticles.value = maxNoAccessArticles.value;
  retstr->maxNoAccessArticles.is_nil = maxNoAccessArticles.is_nil;
  *(&retstr->minNoAccessArticles.value + 7) = minNoAccessArticles.value;
  BYTE6(retstr[1].maxNoAccessArticles.value) = v4;
}

void __swiftcall FeedGroupBindingOptions.init(small:large:)(NewsFeed::FeedGroupBindingOptions *__return_ptr retstr, NewsFeed::FeedGroupBindingOptionsVariant *small, NewsFeed::FeedGroupBindingOptionsVariant *large)
{
  v4 = *(&small->minNoAccessArticles.value + 7);
  value = large->maxNoAccessArticles.value;
  v6 = *(&large->minNoAccessArticles.value + 7);
  is_nil = small->maxNoAccessArticles.is_nil;
  v9 = BYTE6(small[1].maxNoAccessArticles.value);
  v8 = large->maxNoAccessArticles.is_nil;
  v7 = BYTE6(large[1].maxNoAccessArticles.value);
  retstr->small.maxNoAccessArticles.value = small->maxNoAccessArticles.value;
  retstr->small.maxNoAccessArticles.is_nil = is_nil;
  *(&retstr->small.minNoAccessArticles.value + 7) = v4;
  BYTE6(retstr->large.maxNoAccessArticles.value) = v9;
  *(&retstr->large.minNoAccessArticles.value + 5) = value;
  BYTE4(retstr[1].small.maxNoAccessArticles.value) = v8;
  *(&retstr[1].small.minNoAccessArticles.value + 3) = v6;
  BYTE2(retstr[1].large.maxNoAccessArticles.value) = v7;
}

uint64_t sub_1D69AB5D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D69AB5F4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_1D69AB634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = sub_1D725C9DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LayeredMediaImageVariant();
  MEMORY[0x1EEE9AC00](v10, v11);
  v42 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v34 - v16;
  v18 = *(a2 + 16);
  v46[0] = *a2;
  v46[1] = v18;
  v47 = *(a2 + 32);
  v19 = *(a1 + 16);
  v34 = a1;
  v35 = v19;
  if (v19)
  {
    v20 = *(v15 + 80);
    v44 = *(v15 + 72);
    v38 = (v20 + 32) & ~v20;
    v21 = a1 + v38;
    v43 = *MEMORY[0x1E69D7568];
    v41 = *MEMORY[0x1E69D7560];
    v22 = MEMORY[0x1E69E7CC0];
    v23 = v19;
    v39 = v10;
    v40 = v5;
    while (1)
    {
      sub_1D69298C0(v21, v17);
      (*(v6 + 16))(v9, &v17[*(v10 + 24)], v5);
      v24 = (*(v6 + 88))(v9, v5);
      if (v24 == v43)
      {
        goto LABEL_3;
      }

      if (v24 != v41)
      {
        result = sub_1D726402C();
        __break(1u);
        return result;
      }

      sub_1D725A9FC();
      if ((sub_1D725A9DC() & 1) == 0)
      {
LABEL_3:
        sub_1D69ABA7C(v17);
      }

      else
      {
        sub_1D610D154(v17, v42);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6997DF0(0, *(v22 + 16) + 1, 1);
          v22 = v45;
        }

        v27 = *(v22 + 16);
        v26 = *(v22 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1D6997DF0(v26 > 1, v27 + 1, 1);
          v22 = v45;
        }

        *(v22 + 16) = v27 + 1;
        sub_1D610D154(v42, v22 + v38 + v27 * v44);
        v10 = v39;
        v5 = v40;
      }

      v21 += v44;
      if (!--v23)
      {
        goto LABEL_14;
      }
    }
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_14:
  if (qword_1EDF11618 != -1)
  {
    swift_once();
  }

  sub_1D5C384A0();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D7270C10;
  v29 = *(v22 + 16);
  v30 = MEMORY[0x1E69E6530];
  v31 = MEMORY[0x1E69E65A8];
  *(v28 + 56) = MEMORY[0x1E69E6530];
  *(v28 + 64) = v31;
  *(v28 + 32) = v29;
  *(v28 + 96) = v30;
  *(v28 + 104) = v31;
  *(v28 + 72) = v35;
  sub_1D7262EDC();
  sub_1D725C30C();

  if (!*(v22 + 16))
  {

    v22 = v34;
  }

  v32 = v37;
  __swift_project_boxed_opaque_existential_1((v36 + 16), *(v36 + 40));
  sub_1D6E45504(v22, v46, v32);
}

uint64_t sub_1D69ABA7C(uint64_t a1)
{
  v2 = type metadata accessor for LayeredMediaImageVariant();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1D69ABAE8(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 112);
  v34 = *(a1 + 96);
  v35 = v2;
  v36 = *(a1 + 128);
  v37 = *(a1 + 144);
  v3 = *(a1 + 48);
  v30 = *(a1 + 32);
  v31 = v3;
  v4 = *(a1 + 80);
  v32 = *(a1 + 64);
  v33 = v4;
  v5 = *(a1 + 16);
  v28 = *a1;
  v29 = v5;
  v6 = a2[1];
  v38 = *a2;
  v39 = v6;
  v7 = a2[3];
  v40 = a2[2];
  v41 = v7;
  sub_1D5B56150(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  v22 = v34;
  v23 = v35;
  v24 = v36;
  v25 = v37;
  v18 = v30;
  v19 = v31;
  v20 = v32;
  v21 = v33;
  v16 = v28;
  v17 = v29;
  v15[0] = v38;
  v15[1] = v39;
  v15[2] = v40;
  v15[3] = v41;
  sub_1D7012D50(&v16, v15, v26);
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v9 = swift_allocObject();
  *(inited + 32) = v9;
  *(v9 + 48) = v27;
  v10 = v26[1];
  *(v9 + 16) = v26[0];
  *(v9 + 32) = v10;
  sub_1D6AFE37C(&v38, &v16);
  *(inited + 96) = &type metadata for FormatInspectionGroup;
  *(inited + 104) = &off_1F518B2C0;
  v11 = swift_allocObject();
  *(inited + 72) = v11;
  *(v11 + 48) = v18;
  v12 = v17;
  *(v11 + 16) = v16;
  *(v11 + 32) = v12;
  v13 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  return v13;
}

void sub_1D69ABCB4(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CD0];
  *a1 = MEMORY[0x1E69E7CD0];
  a1[1] = v1;
  a1[2] = v1;
  a1[3] = v1;
  a1[4] = v1;
  a1[5] = v1;
  a1[6] = v1;
  a1[7] = v1;
  a1[8] = v1;
  a1[9] = v1;
}

uint64_t sub_1D69ABCD4(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v4 = type metadata accessor for FormatArrangementTemplateResult();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  result = sub_1D726279C();
  if (result)
  {
    v11 = 0;
    v15 = v6;
    v16 = (v5 + 16);
    v12 = (v5 + 8);
    do
    {
      v13 = sub_1D726277C();
      sub_1D726271C();
      if (v13)
      {
        (*(v5 + 16))(v9, a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v4);
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = sub_1D7263DBC();
        if (v15 != 8)
        {
          __break(1u);
          return result;
        }

        v18 = result;
        (*v16)(v9, &v18, v4);
        swift_unknownObjectRelease();
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_11:
          __break(1u);
          return (*v12)(v9, v4);
        }
      }

      sub_1D69ABEE8(v9, v17);
      if (v2)
      {
        return (*v12)(v9, v4);
      }

      (*v12)(v9, v4);
      result = sub_1D726279C();
      ++v11;
    }

    while (v14 != result);
  }

  return result;
}

uint64_t sub_1D69ABEE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FormatCustomItem();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for FormatWebEmbed();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = (&v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = type metadata accessor for FormatContentSlotItemObject();
  MEMORY[0x1EEE9AC00](v104, v14);
  v16 = (&v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for FormatContentSlotItem();
  v105 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for FormatContentSubgroup();
  v97 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v21);
  v98 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a2 + 16);
  v24 = *(a2 + 24);
  v25 = *(a1 + *(type metadata accessor for FormatArrangementTemplateResult() + 36));
  v94 = v23;
  v93 = v24;
  v26 = type metadata accessor for FormatArrangementComponentResult();

  if (!sub_1D726279C())
  {
  }

  v27 = 0;
  v89 = v25 + 32;
  v96 = v9;
  v95 = v13;
  v88 = v25;
  v83 = v26;
  while (1)
  {
    v28 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v28 & 1) == 0)
    {
      goto LABEL_74;
    }

    if (__OFADD__(v27, 1))
    {
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      return result;
    }

    v84 = v27 + 1;
    v30 = (v89 + 32 * v27);
    v31 = v30[3];
    v33 = *v30;
    v32 = v30[1];
    v34 = sub_1D70CE91C(v32, *(v30 + 16));
    v35 = *(v34 + 16);

    v92 = v32;

    v91 = v31;

    if (v35)
    {
      break;
    }

    v43 = v109;
LABEL_12:

    v82 = *(v33 + 16);
    if (v82)
    {
      v44 = v33 + ((*(v97 + 80) + 32) & ~*(v97 + 80));

      v45 = 0;
      v78 = v44;
      while (1)
      {
        if (v45 >= *(v33 + 16))
        {
          goto LABEL_76;
        }

        v46 = v98;
        sub_1D69ADCE8(v44 + *(v97 + 72) * v45, v98, type metadata accessor for FormatContentSubgroup);
        v47 = *(v46 + *(v90 + 32));
        v48 = *(v47 + 16);
        if (v48)
        {
          break;
        }

LABEL_57:
        ++v45;
        result = sub_1D69ADDB8(v98, type metadata accessor for FormatContentSubgroup);
        v44 = v78;
        if (v45 == v82)
        {

          goto LABEL_60;
        }
      }

      v49 = 0;
      v50 = v47 + 32;
      v87 = v45;
      v81 = v47;
      v80 = v48;
      v79 = v47 + 32;
      while (1)
      {
        if (v49 >= *(v47 + 16))
        {
          goto LABEL_73;
        }

        v51 = *(v50 + 48 * v49 + 32);
        v103 = *(v51 + 16);
        if (v103)
        {
          break;
        }

LABEL_18:
        ++v49;
        v45 = v87;
        if (v49 == v48)
        {
          goto LABEL_57;
        }
      }

      v85 = v49;
      v86 = v3;
      v102 = v51 + ((*(v105 + 80) + 32) & ~*(v105 + 80));

      v52 = 0;
      v101 = v51;
      while (2)
      {
        if (v52 >= *(v51 + 16))
        {
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          result = sub_1D7263DBC();
          __break(1u);
          goto LABEL_75;
        }

        sub_1D69ADCE8(v102 + *(v105 + 72) * v52, v20, type metadata accessor for FormatContentSlotItem);
        sub_1D69ADCE8(v20, v16, type metadata accessor for FormatContentSlotItemObject);
        sub_1D69ADDB8(v20, type metadata accessor for FormatContentSlotItem);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 5)
        {
          if (EnumCaseMultiPayload > 2)
          {
            if (EnumCaseMultiPayload != 3)
            {
              if (EnumCaseMultiPayload != 5)
              {
                goto LABEL_22;
              }

              v56 = v95;
              sub_1D69ADD50(v16, v95, type metadata accessor for FormatWebEmbed);
              v63 = *v56;
              v62 = v56[1];
              if (sub_1D5BE240C(*v56, v62, v43[8]))
              {

                sub_1D609C50C();
                swift_allocError();
                *v75 = v63;
                *(v75 + 8) = v62;
                *(v75 + 16) = 3;
                swift_willThrow();

                sub_1D69ADDB8(v98, type metadata accessor for FormatContentSubgroup);
                v76 = type metadata accessor for FormatWebEmbed;
LABEL_69:
                v73 = v76;
                v74 = v56;
                return sub_1D69ADDB8(v74, v73);
              }

              sub_1D5B860D0(v108, v63, v62);
              v43 = v109;

              v59 = type metadata accessor for FormatWebEmbed;
LABEL_42:
              v53 = v59;
              v54 = v56;
LABEL_23:
              sub_1D69ADDB8(v54, v53);
              goto LABEL_24;
            }

            v61 = *(*v16 + 16);
            v60 = *(*v16 + 24);
            if (sub_1D5BE240C(v61, v60, v43[2]))
            {
              goto LABEL_63;
            }
          }

          else if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload != 2)
            {
              goto LABEL_22;
            }

            v61 = *(*v16 + 16);
            v60 = *(*v16 + 24);
            if (sub_1D5BE240C(v61, v60, v43[3]))
            {
              goto LABEL_63;
            }
          }

          else
          {
            v61 = *(*v16 + 16);
            v60 = *(*v16 + 24);
            if (sub_1D5BE240C(v61, v60, v43[1]))
            {
              goto LABEL_63;
            }
          }
        }

        else
        {
          if (EnumCaseMultiPayload > 7)
          {
            if (EnumCaseMultiPayload != 8)
            {
              if (EnumCaseMultiPayload != 9)
              {
                v43 = v109;
                if (EnumCaseMultiPayload == 12)
                {
                  v56 = v96;
                  sub_1D69ADD50(v16, v96, type metadata accessor for FormatCustomItem);
                  v58 = *v56;
                  v57 = v56[1];
                  if (sub_1D5BE240C(*v56, v57, v43[7]))
                  {

                    sub_1D609C50C();
                    swift_allocError();
                    *v77 = v58;
                    *(v77 + 8) = v57;
                    *(v77 + 16) = 3;
                    swift_willThrow();

                    sub_1D69ADDB8(v98, type metadata accessor for FormatContentSubgroup);
                    v76 = type metadata accessor for FormatCustomItem;
                    goto LABEL_69;
                  }

                  sub_1D5B860D0(v108, v58, v57);
                  v43 = v109;

                  v59 = type metadata accessor for FormatCustomItem;
                  goto LABEL_42;
                }

LABEL_22:
                v53 = type metadata accessor for FormatContentSlotItemObject;
                v54 = v16;
                goto LABEL_23;
              }

              v69 = *(*v16 + 16);
              v60 = *(*v16 + 24);
              v43 = v109;
              if (sub_1D5BE240C(v69, v60, *v109))
              {

                sub_1D609C50C();
                swift_allocError();
                *v71 = v69;
                goto LABEL_64;
              }

              sub_1D5B860D0(v108, v69, v60);

LABEL_24:
              if (v103 == ++v52)
              {

                v3 = v86;
                v47 = v81;
                v48 = v80;
                v49 = v85;
                v50 = v79;
                goto LABEL_18;
              }

              continue;
            }

            v65 = *v16;
            v64 = v16[1];
            v66 = v16[2];
            v100 = v16[3];
            v99 = v16[4];
            v67 = *(v65 + 24);
            *&v108[0] = *(v65 + 16);
            *(&v108[0] + 1) = v67;

            MEMORY[0x1DA6F9910](v64, v66);
            v68 = v108[0];
            if (sub_1D5BE240C(*&v108[0], *(&v108[0] + 1), v109[6]))
            {

              sub_1D609C50C();
              swift_allocError();
              *v72 = v68;
              *(v72 + 16) = 3;
              swift_willThrow();

              v73 = type metadata accessor for FormatContentSubgroup;
              v74 = v98;
              return sub_1D69ADDB8(v74, v73);
            }

            sub_1D5B860D0(v108, v68, *(&v68 + 1));
            v43 = v109;

LABEL_54:
            v51 = v101;
            goto LABEL_24;
          }

          if (EnumCaseMultiPayload == 6)
          {
            v61 = *(*v16 + 16);
            v60 = *(*v16 + 24);
            if (sub_1D5BE240C(v61, v60, v43[4]))
            {
LABEL_63:

              sub_1D609C50C();
              swift_allocError();
              *v71 = v61;
LABEL_64:
              *(v71 + 8) = v60;
              *(v71 + 16) = 3;
              swift_willThrow();

              sub_1D69ADDB8(v98, type metadata accessor for FormatContentSubgroup);
            }
          }

          else
          {
            v61 = *(*v16 + 16);
            v60 = *(*v16 + 24);
            if (sub_1D5BE240C(v61, v60, v43[5]))
            {
              goto LABEL_63;
            }
          }
        }

        break;
      }

      sub_1D5B860D0(v108, v61, v60);
      v43 = v109;

      goto LABEL_54;
    }

LABEL_60:

    v70 = sub_1D726279C();
    v27 = v84;
    if (v84 == v70)
    {
    }
  }

  v36 = 0;
  v37 = 32;
  while (1)
  {
    if (v36 >= *(v34 + 16))
    {
      goto LABEL_72;
    }

    v38 = *(v34 + v37);
    v39 = *(v34 + v37 + 16);
    v40 = *(v34 + v37 + 48);
    v108[2] = *(v34 + v37 + 32);
    v108[3] = v40;
    v108[0] = v38;
    v108[1] = v39;
    v41 = *(v34 + v37 + 16);
    v107[0] = *(v34 + v37);
    v107[1] = v41;
    v42 = *(v34 + v37 + 48);
    v107[2] = *(v34 + v37 + 32);
    v107[3] = v42;
    sub_1D5E2A788(v108, v106);
    sub_1D69AD0B0(v107);
    if (v3)
    {
      break;
    }

    ++v36;
    sub_1D5ECF270(v108);
    v37 += 64;
    v43 = v109;
    if (v35 == v36)
    {
      goto LABEL_12;
    }
  }

  return sub_1D5ECF270(v108);
}

uint64_t sub_1D69ACCC4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  v6 = v3[3];
  v29[2] = v3[2];
  v29[3] = v6;
  v29[4] = v3[4];
  v7 = v3[1];
  v29[0] = *v3;
  v29[1] = v7;
  if ((v5 & 0x1000) != 0)
  {
    return 0;
  }

  v9 = v3[3];
  v26 = v3[2];
  v27 = v9;
  v28 = v3[4];
  v10 = v3[1];
  v24 = *v3;
  v25 = v10;
  v11 = *(v4 + 16);
  v12 = *(a3 - 8);
  result = (*(v12 + 16))(v23, v29);
  if (!v11)
  {
LABEL_6:
    v23[2] = v26;
    v23[3] = v27;
    v23[4] = v28;
    v23[0] = v24;
    v23[1] = v25;
    (*(v12 + 8))(v23, a3);
    return 0;
  }

  v14 = 0;
  v15 = (v4 + 32);
  while (v14 < *(v4 + 16))
  {
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[3];
    v22[2] = v15[2];
    v22[3] = v18;
    v22[0] = v16;
    v22[1] = v17;
    v19 = v15[1];
    v21[0] = *v15;
    v21[1] = v19;
    v20 = v15[3];
    v21[2] = v15[2];
    v21[3] = v20;
    sub_1D5E2A788(v22, v23);
    sub_1D69AD0B0(v21);
    ++v14;
    result = sub_1D5ECF270(v22);
    v15 += 4;
    if (v11 == v14)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D69ACFC0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D69ACFFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1D69AD044(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1D69AD0B0(uint64_t a1)
{
  v3 = v1;
  v103 = type metadata accessor for PuzzleStatistic();
  MEMORY[0x1EEE9AC00](v103, v5);
  v7 = (&v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for FormatCustomItem.Resolved();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (&v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for FormatWebEmbed.Resolved();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = (&v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  v17 = *(v16 - 8);
  v108 = v16;
  v109 = v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v107 = (&v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v110 = *(a1 + 16);
  v106 = *(v110 + 16);
  if (!v106)
  {
    return;
  }

  v20 = 0;
  v105 = v110 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
  v96 = 0x80000001D73B7450;
  v97 = 0x80000001D73B7480;
  v94 = 0x80000001D73B7410;
  v95 = 0x80000001D73B7430;
  v93 = 0x80000001D73B73F0;
  v92 = 0xD00000000000001DLL;
  v100 = v2;
  v101 = v11;
  v104 = v15;
  v98 = v3;
  v99 = v7;
  while (v20 < *(v110 + 16))
  {
    v23 = *(v109 + 72);
    v111 = v20;
    v24 = v107;
    sub_1D69ADCE8(v105 + v23 * v20, v107, type metadata accessor for FormatContentSlotItemObject.Resolved);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v64 = *v24;
          v65 = [*v24 identifier];
          v66 = sub_1D726207C();
          v68 = v67;

          if (sub_1D5BE240C(v66, v68, v3[3]))
          {
            sub_1D609C50C();
            swift_allocError();
            *v88 = v66;
            *(v88 + 8) = v68;
            *(v88 + 16) = 3;
            swift_willThrow();

            return;
          }

          sub_1D5B860D0(&v113, v66, v68);
        }

        else
        {
          v30 = *v24;
          v31 = [*v24 identifier];
          v32 = sub_1D726207C();
          v34 = v33;

          if (sub_1D5BE240C(v32, v34, v3[1]))
          {
            goto LABEL_83;
          }

          sub_1D5B860D0(&v113, v32, v34);

          v35 = [v30 recipeIDs];
          if (!v35)
          {
            swift_unknownObjectRelease();
            v15 = v104;
            goto LABEL_5;
          }

          v36 = v35;
          v37 = sub_1D726267C();

          sub_1D5B87D50(v37);
          swift_unknownObjectRelease();
        }

        goto LABEL_43;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v40 = [*v24 identifier];
        v32 = sub_1D726207C();
        v34 = v41;

        if (sub_1D5BE240C(v32, v34, v3[2]))
        {
          goto LABEL_83;
        }

        goto LABEL_40;
      }

      if (EnumCaseMultiPayload != 3)
      {
        v62 = [*v24 identifier];
        v32 = sub_1D726207C();
        v34 = v63;

        if (sub_1D5BE240C(v32, v34, v3[4]))
        {
LABEL_83:
          sub_1D609C50C();
          swift_allocError();
          *v84 = v32;
          *(v84 + 8) = v34;
          *(v84 + 16) = 3;
          swift_willThrow();
          swift_unknownObjectRelease();
          return;
        }

LABEL_40:
        sub_1D5B860D0(&v113, v32, v34);
        swift_unknownObjectRelease();
LABEL_43:

        v15 = v104;
        goto LABEL_5;
      }

      sub_1D69ADD50(v24, v15, type metadata accessor for FormatWebEmbed.Resolved);
      v27 = *v15;
      v26 = v15[1];
      if (sub_1D5BE240C(*v15, v26, v3[8]))
      {
        sub_1D609C50C();
        swift_allocError();
        *v89 = v27;
        *(v89 + 8) = v26;
        *(v89 + 16) = 3;
        swift_willThrow();

        v86 = type metadata accessor for FormatWebEmbed.Resolved;
        v87 = v15;
        goto LABEL_89;
      }

      sub_1D5B860D0(&v113, v27, v26);

      v21 = type metadata accessor for FormatWebEmbed.Resolved;
      v22 = v15;
      goto LABEL_4;
    }

    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v42 = *v24;
        v43 = [*v24 identifier];
        v44 = sub_1D726207C();
        v46 = v45;

        if (sub_1D5BE240C(v44, v46, *v3))
        {
          sub_1D609C50C();
          swift_allocError();
          *v90 = v44;
          *(v90 + 8) = v46;
          *(v90 + 16) = 3;
          swift_willThrow();

          return;
        }

        sub_1D5B860D0(&v113, v44, v46);

        v47 = [v42 articles];
        sub_1D5B5D6A0();
        v48 = sub_1D726267C();

        if (v48 >> 62)
        {
          v49 = sub_1D7263BFC();
          v102 = v42;
          if (!v49)
          {
            goto LABEL_81;
          }

LABEL_30:
          v113 = MEMORY[0x1E69E7CC0];
          sub_1D5BFC364(0, v49 & ~(v49 >> 63), 0);
          if (v49 < 0)
          {
            goto LABEL_92;
          }

          v50 = 0;
          v51 = v113;
          v52 = v48;
          v112 = v48 & 0xC000000000000001;
          v53 = v48;
          v54 = v49;
          do
          {
            if (v112)
            {
              MEMORY[0x1DA6FB460](v50, v52);
            }

            else
            {
              swift_unknownObjectRetain();
            }

            v55 = [swift_unknownObjectRetain() identifier];
            v56 = sub_1D726207C();
            v58 = v57;
            swift_unknownObjectRelease_n();

            v113 = v51;
            v60 = *(v51 + 16);
            v59 = *(v51 + 24);
            if (v60 >= v59 >> 1)
            {
              sub_1D5BFC364((v59 > 1), v60 + 1, 1);
              v51 = v113;
            }

            ++v50;
            *(v51 + 16) = v60 + 1;
            v61 = v51 + 16 * v60;
            *(v61 + 32) = v56;
            *(v61 + 40) = v58;
            v52 = v53;
          }

          while (v54 != v50);

          v7 = v99;
          v3 = v98;
        }

        else
        {
          v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v102 = v42;
          if (v49)
          {
            goto LABEL_30;
          }

LABEL_81:

          v51 = MEMORY[0x1E69E7CC0];
        }

        sub_1D5B87D50(v51);

        v11 = v101;
        v15 = v104;
        goto LABEL_5;
      }

      if (EnumCaseMultiPayload == 8)
      {
        sub_1D69ADD50(v24, v11, type metadata accessor for FormatCustomItem.Resolved);
        v29 = *v11;
        v28 = v11[1];
        if (sub_1D5BE240C(*v11, v28, v3[7]))
        {
          sub_1D609C50C();
          swift_allocError();
          *v91 = v29;
          *(v91 + 8) = v28;
          *(v91 + 16) = 3;
          swift_willThrow();

          v86 = type metadata accessor for FormatCustomItem.Resolved;
          v87 = v11;
          goto LABEL_89;
        }

        sub_1D5B860D0(&v113, v29, v28);

        v21 = type metadata accessor for FormatCustomItem.Resolved;
        v22 = v11;
      }

      else
      {
        v21 = type metadata accessor for FormatContentSlotItemObject.Resolved;
        v22 = v24;
      }

LABEL_4:
      sub_1D69ADDB8(v22, v21);
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v38 = [*v24 identifier];
      v32 = sub_1D726207C();
      v34 = v39;

      if (sub_1D5BE240C(v32, v34, v3[5]))
      {
        goto LABEL_83;
      }

      goto LABEL_40;
    }

    sub_1D69ADD50(v24, v7, type metadata accessor for PuzzleStatistic);
    v69 = [*v7 identifier];
    v70 = sub_1D726207C();
    v72 = v71;

    PuzzleStatisticCategory.statisticType.getter(&v115);
    if (v115 <= 4u)
    {
      v79 = 0x5374636566726570;
      if (v115 != 3)
      {
        v79 = 0x74615265766C6F73;
      }

      v80 = 0xE900000000000065;
      if (v115 == 3)
      {
        v80 = 0xED00006465766C6FLL;
      }

      if (v115 == 2)
      {
        v79 = 0x5373656C7A7A7570;
        v80 = 0xED00006465766C6FLL;
      }

      v81 = 0x53747365676E6F6CLL;
      if (v115)
      {
        v81 = 0x53746E6572727563;
      }

      if (v115 <= 1u)
      {
        v77 = v81;
      }

      else
      {
        v77 = v79;
      }

      if (v115 <= 1u)
      {
        v78 = 0xED00006B61657274;
      }

      else
      {
        v78 = v80;
      }
    }

    else
    {
      v73 = 0xD000000000000015;
      if (v115 == 9)
      {
        v73 = 0x53646570756F7267;
      }

      v74 = v97;
      if (v115 == 9)
      {
        v74 = 0xEC00000073746174;
      }

      if (v115 == 8)
      {
        v73 = v92;
      }

      v75 = v95;
      if (v115 == 8)
      {
        v74 = v96;
      }

      v76 = 0xD00000000000001DLL;
      if (v115 == 6)
      {
        v76 = 0xD00000000000001CLL;
        v75 = v94;
      }

      if (v115 == 5)
      {
        v76 = 0xD00000000000001CLL;
        v75 = v93;
      }

      if (v115 <= 7u)
      {
        v77 = v76;
      }

      else
      {
        v77 = v73;
      }

      if (v115 <= 7u)
      {
        v78 = v75;
      }

      else
      {
        v78 = v74;
      }
    }

    v113 = v70;
    v114 = v72;

    MEMORY[0x1DA6F9910](v77, v78);

    v82 = v113;
    v83 = v114;
    if (sub_1D5BE240C(v113, v114, v3[6]))
    {
      sub_1D609C50C();
      swift_allocError();
      *v85 = v82;
      *(v85 + 8) = v83;
      *(v85 + 16) = 3;
      swift_willThrow();
      v86 = type metadata accessor for PuzzleStatistic;
      v87 = v7;
LABEL_89:
      sub_1D69ADDB8(v87, v86);
      return;
    }

    sub_1D5B860D0(&v113, v82, v83);

    sub_1D69ADDB8(v7, type metadata accessor for PuzzleStatistic);
    v15 = v104;
LABEL_5:
    v20 = v111 + 1;
    if (v111 + 1 == v106)
    {
      return;
    }
  }

  __break(1u);
LABEL_92:
  __break(1u);
}

uint64_t sub_1D69ADCE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D69ADD50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D69ADDB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FeedGroupDecoration.decorationItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1 >> 61;
  if (v3 <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v4 = sub_1D725EE2C();
        v5 = swift_projectBox();
        v6 = MEMORY[0x1E69D83E0];
      }

      else
      {
        v4 = sub_1D725F3FC();
        v5 = swift_projectBox();
        v6 = MEMORY[0x1E69D8688];
      }
    }

    else
    {
      v4 = sub_1D725EB9C();
      v5 = swift_projectBox();
      v6 = MEMORY[0x1E69D81D8];
    }

LABEL_13:
    a1[3] = v4;
    a1[4] = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    v12 = *(*(v4 - 8) + 16);

    return v12(boxed_opaque_existential_1, v5, v4);
  }

  if (v3 == 3)
  {
    v4 = sub_1D725ED6C();
    v5 = swift_projectBox();
    v6 = MEMORY[0x1E69D8388];
    goto LABEL_13;
  }

  if (v3 != 4)
  {
    return FeedGroupDecoration.decorationItem.getter();
  }

  v7 = type metadata accessor for FormatMicaSectionDecorationItem();
  v8 = swift_projectBox();
  a1[3] = v7;
  a1[4] = sub_1D5BBDC40();
  v9 = __swift_allocate_boxed_opaque_existential_1(a1);

  return sub_1D688DC98(v8, v9);
}

id sub_1D69ADFDC(double a1, double a2, double a3, double a4)
{
  v9 = *v4 >> 61;
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v10 = sub_1D725ED8C();
    }

    else
    {
      if (v9 != 4)
      {

        v14 = sub_1D69ADFDC(v13, a1, a2, a3, a4);

        return v14;
      }

      v10 = type metadata accessor for FormatMicaSectionDecorationView();
    }
  }

  else if (v9)
  {
    if (v9 == 1)
    {
      v10 = sub_1D725EE4C();
    }

    else
    {
      v10 = sub_1D725F41C();
    }
  }

  else
  {
    v10 = sub_1D725EBBC();
  }

  v11 = objc_allocWithZone(v10);

  return [v11 initWithFrame_];
}

uint64_t sub_1D69AE114()
{
  v0 = MEMORY[0x1E69E63B0];
  sub_1D5B8AFAC(0, &unk_1EDF3B410, qword_1EDF2D048, MEMORY[0x1E69E63B0], MEMORY[0x1E69D8788]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v8 - v5;
  sub_1D5B8AFAC(0, &unk_1EDF3B280, qword_1EDF2D048, v0, MEMORY[0x1E69D8790]);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D8780], v2);
  result = sub_1D725F7CC();
  qword_1EDF3AF70 = result;
  return result;
}

NewsFeed::FeedAudioPlaybackState_optional __swiftcall FeedAudioPlaybackState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedAudioPlaybackState.rawValue.getter()
{
  v1 = 0x6C616974696E69;
  v2 = 0x646573756170;
  if (*v0 != 2)
  {
    v2 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    v1 = 0x676E6979616C70;
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

uint64_t sub_1D69AE3A4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69AE468()
{
  sub_1D72621EC();
}

uint64_t sub_1D69AE518()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D69AE5E4(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6C616974696E69;
  v4 = 0xE600000000000000;
  v5 = 0x646573756170;
  if (*v1 != 2)
  {
    v5 = 0x6574656C706D6F63;
    v4 = 0xE900000000000064;
  }

  if (*v1)
  {
    v3 = 0x676E6979616C70;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D69AE664(uint64_t a1)
{
  v2 = sub_1D69B0838();

  return MEMORY[0x1EEE48380](a1, v2);
}

uint64_t AudioPlayMethod.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D69AE7F4(uint64_t a1, uint64_t a2)
{
  sub_1D5B5A664(0, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 AudioCommandContext.init(data:source:method:origin:metadata:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a2;
  v10 = *a3;
  v11 = *a4;
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  v12 = type metadata accessor for AudioCommandContext();
  *(a7 + v12[7]) = v9;
  *(a7 + v12[8]) = v10;
  *(a7 + v12[9]) = v11;
  v13 = (a7 + v12[10]);
  result = *a5;
  v15 = *(a5 + 16);
  *v13 = *a5;
  v13[1] = v15;
  return result;
}

double AudioCommandContext.copy<A>(with:)@<D0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1, a1);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v9);
  v12 = *(v4 + a2[7]);
  v13 = *(v4 + a2[8]);
  v14 = a2[10];
  LOBYTE(a2) = *(v4 + a2[9]);
  sub_1D69AE7F4(v4 + v14, v19);
  (*(v8 + 32))(a4, v11, a3);
  v15 = type metadata accessor for AudioCommandContext();
  *(a4 + v15[7]) = v12;
  *(a4 + v15[8]) = v13;
  *(a4 + v15[9]) = a2;
  v16 = (a4 + v15[10]);
  result = *v19;
  v18 = v19[1];
  *v16 = v19[0];
  v16[1] = v18;
  return result;
}

uint64_t static AudioCommandContext<A>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = [*a1 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  v8 = [*a2 identifier];
  v9 = sub_1D726207C();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
  }

  else
  {
    v13 = sub_1D72646CC();

    if ((v13 & 1) == 0)
    {
LABEL_11:
      v14 = 0;
      return v14 & 1;
    }
  }

  if (*(a1 + 10) != *(a2 + 10) || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_11;
  }

  v14 = *(a1 + 9) ^ *(a2 + 9) ^ 1;
  return v14 & 1;
}

uint64_t static ContextMenuItem.Audio.playLaterInNewsItems(headline:context:)(uint64_t a1, uint64_t a2)
{
  sub_1D5B5A664(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D72816D0;
  *(v3 + 32) = sub_1D69AEC4C(a2);
  *(v3 + 40) = sub_1D69AEE9C(a2);
  return v3;
}

uint64_t sub_1D69AEC4C(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDF16BA8 != -1)
  {
    swift_once();
  }

  sub_1D69B088C(a1, v13, sub_1D5B7DF64);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();

  v9 = [v8 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05D10 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDF05D18;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  sub_1D725D3DC();
  swift_allocObject();
  v11 = v10;
  return sub_1D725D3AC();
}

uint64_t sub_1D69AEE9C(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDF16BC0 != -1)
  {
    swift_once();
  }

  sub_1D69B088C(a1, v13, sub_1D5B7DF64);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();

  v9 = [v8 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05D28 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDF05D30;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  sub_1D725D3DC();
  swift_allocObject();
  v11 = v10;
  return sub_1D725D3AC();
}

uint64_t sub_1D69AF0EC(uint64_t a1)
{
  v2 = sub_1D725D73C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  sub_1D5B5A664(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D72816D0;
  *(inited + 32) = sub_1D69AEC4C(a1);
  *(inited + 40) = sub_1D69AEE9C(a1);
  sub_1D5F645A8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  (*(v3 + 104))(v6, *MEMORY[0x1E69D79B0], v2);
  sub_1D725D72C();
  swift_allocObject();
  return sub_1D725D70C();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE5AudioV9listenNow8headline14ignorePlaylistACSgSo19FCHeadlineProviding_p_SbtFZ_0(uint64_t a1, char a2)
{
  v4 = sub_1D725DC6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    if (qword_1EDF3AEA0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (qword_1EDF3AF18 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
  v18 = 0u;
  v19 = 0u;
  v15 = a1;
  v16 = 0;
  v17 = 0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();

  swift_unknownObjectRetain();
  v11 = [v10 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF1BB98 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDF1BBA0;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7B48], v4);
  sub_1D725D3DC();
  swift_allocObject();
  v13 = v12;
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE5AudioV07previewH08headlineACSgSo19FCHeadlineProviding_p_tFZ_0(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF3AF18 != -1)
  {
    swift_once();
  }

  v16 = 0u;
  v17 = 0u;
  v13 = a1;
  v14 = 0;
  v15 = 0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();

  swift_unknownObjectRetain();
  v9 = [v8 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF1BB98 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDF1BBA0;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  sub_1D725D3DC();
  swift_allocObject();
  v11 = v10;
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE5AudioV10listenNext8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF16A40 != -1)
  {
    swift_once();
  }

  v16 = 0u;
  v17 = 0u;
  v13 = a1;
  v14 = 0;
  v15 = 0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();

  swift_unknownObjectRetain();
  v9 = [v8 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05B20 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDF05B28;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  sub_1D725D3DC();
  swift_allocObject();
  v11 = v10;
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE5AudioV11listenLater8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF16A60 != -1)
  {
    swift_once();
  }

  v16 = 0u;
  v17 = 0u;
  v13 = a1;
  v14 = 0;
  v15 = 0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();

  swift_unknownObjectRetain();
  v9 = [v8 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05B38 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDF05B40;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  sub_1D725D3DC();
  swift_allocObject();
  v11 = v10;
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE5AudioV6remove8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF16A90 != -1)
  {
    swift_once();
  }

  v16 = 0u;
  v17 = 0u;
  v13 = a1;
  v14 = 0;
  v15 = 0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();

  swift_unknownObjectRetain();
  v9 = [v8 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05B50 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDF05B58;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B40], v2);
  sub_1D725D3DC();
  swift_allocObject();
  v11 = v10;
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE5AudioV010removeFromH7History8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF16B30 != -1)
  {
    swift_once();
  }

  v16 = 0u;
  v17 = 0u;
  v13 = a1;
  v14 = 0;
  v15 = 0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();

  swift_unknownObjectRetain();
  v9 = [v8 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05B50 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDF05B58;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B40], v2);
  sub_1D725D3DC();
  swift_allocObject();
  v11 = v10;
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE5AudioV010removeFromH8Playlist8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF16B18 != -1)
  {
    swift_once();
  }

  v16 = 0u;
  v17 = 0u;
  v13 = a1;
  v14 = 0;
  v15 = 0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();

  swift_unknownObjectRetain();
  v9 = [v8 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05B50 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDF05B58;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B40], v2);
  sub_1D725D3DC();
  swift_allocObject();
  v11 = v10;
  return sub_1D725D3AC();
}

unint64_t sub_1D69B0380()
{
  result = qword_1EC88F618;
  if (!qword_1EC88F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F618);
  }

  return result;
}

unint64_t sub_1D69B03D8()
{
  result = qword_1EC88F620;
  if (!qword_1EC88F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F620);
  }

  return result;
}

unint64_t sub_1D69B0430()
{
  result = qword_1EC88F628;
  if (!qword_1EC88F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F628);
  }

  return result;
}

uint64_t sub_1D69B050C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 10) & 0xFFFFFFFFFFFFFFF8) + 32;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 10) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_1D69B0650(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 10) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (((v8 + 10) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 10) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 10) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 10) & 0xFFFFFFFFFFFFFFF8) + 32);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v19 = (a1 + v8 + 10) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0x7FFFFFFE)
    {
      result = 0.0;
      *v19 = 0u;
      *(v19 + 16) = 0u;
      *v19 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

unint64_t sub_1D69B0838()
{
  result = qword_1EDF37320;
  if (!qword_1EDF37320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF37320);
  }

  return result;
}

uint64_t sub_1D69B088C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t FormatDataAccessibilityValue.deinit()
{

  sub_1D5BD9F54(*(v0 + 24));
  return v0;
}

uint64_t FormatDataAccessibilityValue.__deallocating_deinit()
{

  sub_1D5BD9F54(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1D69B09B4(void *a1)
{
  sub_1D69B3CC8(0, &qword_1EC88F6E0, sub_1D69B3C74, &type metadata for A12_V10.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - v7;
  memcpy(v14, v1 + 2, sizeof(v14));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69B3C74();
  sub_1D7264B5C();
  v9 = *v1;
  v13[1] = v1[1];
  v13[0] = v9;
  v15 = 0;
  type metadata accessor for CGRect(0);
  sub_1D69B37B8(&qword_1EC8801E8, type metadata accessor for CGRect);
  v10 = v12;
  sub_1D726443C();
  if (!v10)
  {
    memcpy(v13, v14, sizeof(v13));
    v15 = 1;
    sub_1D5C0B904();
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D69B0BDC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v16 = a2;
  sub_1D69B3CC8(0, &qword_1EC88F6D0, sub_1D69B3C74, &type metadata for A12_V10.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v17 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69B3C74();
  sub_1D7264B0C();
  if (!v2)
  {
    v9 = v5;
    v10 = v16;
    type metadata accessor for CGRect(0);
    v19 = 0;
    sub_1D69B37B8(&qword_1EDF1A740, type metadata accessor for CGRect);
    v11 = v17;
    sub_1D726431C();
    v14 = v18[1];
    v15 = v18[0];
    v19 = 1;
    sub_1D5BEE208();
    sub_1D726431C();
    (*(v9 + 8))(v8, v11);
    v13 = v14;
    *v10 = v15;
    v10[1] = v13;
    memcpy(v10 + 2, v18, 0x130uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D69B0E3C(uint64_t a1)
{
  v2 = sub_1D69B3C74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D69B0E78(uint64_t a1)
{
  v2 = sub_1D69B3C74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D69B0EE4()
{
  sub_1D69B385C();

  return sub_1D725A24C();
}

uint64_t sub_1D69B0F60@<X0>(uint64_t *a1@<X8>)
{
  memset(__src, 0, 32);
  __src[32] = 1;
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D69B3C3C(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1D69B3CC8(0, &qword_1EC88F6A8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D6F58]);
  swift_allocObject();
  result = sub_1D725996C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D69B103C@<X0>(uint64_t a1@<X0>, unsigned int (**a2)(unint64_t *, uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v244 = a2;
  v212 = a3;
  sub_1D5C15644(0);
  v222 = v5;
  v218 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v225 = (&v197 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1E69E6720];
  sub_1D5C143F8(0, &unk_1EDF1ACB0, sub_1D5C15644, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v208 = &v197 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v209 = (&v197 - v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v224 = &v197 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v221 = (&v197 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v215 = &v197 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v214 = (&v197 - v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v220 = &v197 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v227 = (&v197 - v32);
  sub_1D5C14518();
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v206 = &v197 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v207 = &v197 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v210 = &v197 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v211 = &v197 - v44;
  sub_1D5C143F8(0, qword_1EDF42030, type metadata accessor for FeedHeadline, v8);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v213 = &v197 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v49);
  v216 = &v197 - v50;
  v217 = type metadata accessor for FeedHeadline(0);
  v226 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217, v51);
  v219 = &v197 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v197 - v55;
  MEMORY[0x1EEE9AC00](v57, v58);
  v60 = &v197 - v59;
  MEMORY[0x1EEE9AC00](v61, v62);
  v64 = &v197 - v63;
  MEMORY[0x1EEE9AC00](v65, v66);
  v68 = &v197 - v67;
  MEMORY[0x1EEE9AC00](v69, v70);
  v72 = &v197 - v71;
  v229 = sub_1D725895C();
  v228 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229, v73);
  v75 = &v197 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for GroupLayoutContext();
  v234 = *(v76 - 8);
  v235 = v76;
  MEMORY[0x1EEE9AC00](v76, v77);
  v237 = &v197 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79, v80);
  v238 = (&v197 - v81);
  v236 = type metadata accessor for GroupLayoutBindingContext();
  v230 = *(v236 - 1);
  MEMORY[0x1EEE9AC00](v236, v82);
  v84 = &v197 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *v3;
  v233 = *(v3 + 1);
  LODWORD(v83) = v3[16];
  v231 = v85;
  LODWORD(v232) = v83;
  *&v240 = 4;
  if (GroupLayoutBindingContext.count(for:)(&v240))
  {
    sub_1D5C17350();
    swift_allocError();
    *v86 = 0u;
    *(v86 + 16) = 0u;
    *(v86 + 32) = 0;
    *(v86 + 40) = 13;
    return swift_willThrow();
  }

  v202 = v56;
  v198 = v64;
  v199 = v60;
  v200 = v68;
  v201 = v72;
  sub_1D5BE3ED8(a1, v84, type metadata accessor for GroupLayoutBindingContext);
  v205 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v244, v238, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v204 = sub_1D725893C();
  v203 = v88;
  (*(v228 + 8))(v75, v229);
  v242 = &type metadata for A12_V10;
  v229 = sub_1D5ECEAC0();
  v243 = v229;
  v90 = v231;
  v89 = v232;
  LOBYTE(v240) = v231;
  v91 = v233;
  *(&v240 + 1) = v233;
  v241 = v232;
  type metadata accessor for GroupLayoutKey();
  v92 = swift_allocObject();
  sub_1D5BEE8A0(v91, v89);
  v239[0] = sub_1D7264C5C();
  v239[1] = v93;
  v239[6] = 95;
  v239[7] = 0xE100000000000000;
  v239[4] = 45;
  v239[5] = 0xE100000000000000;
  v195 = sub_1D5BF4D9C();
  v196 = v195;
  v194[0] = MEMORY[0x1E69E6158];
  v194[1] = v195;
  v94 = sub_1D7263A6C();
  v96 = v95;
  v97 = v92;

  *(v92 + 16) = v94;
  *(v92 + 24) = v96;
  v98 = (v92 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v99 = v203;
  *v98 = v204;
  v98[1] = v99;
  sub_1D5B68374(&v240, v92 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v100 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDAB0C(v84, v92 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  v101 = v236;
  (*(v230 + 56))(v92 + v100, 0, 1, v236);
  v102 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDAB0C(v238, v92 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v234 + 56))(v92 + v102, 0, 1, v235);
  __swift_destroy_boxed_opaque_existential_1(&v240);
  v242 = &type metadata for A12_V10;
  v243 = v229;
  LOBYTE(v240) = v90;
  *(&v240 + 1) = v91;
  v241 = v89;
  v103 = v237;
  sub_1D5BE3ED8(v244, v237, v205);
  v104 = *(a1 + v101[14]);
  v105 = *(v104 + 16);
  sub_1D5BEE8A0(v91, v89);
  if (!v105 || (v106 = v101, v107 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v108 & 1) == 0) || (v109 = *(*(v104 + 56) + 8 * v107), !*(v109 + 16)))
  {

    sub_1D5ED8048();
    swift_allocError();
LABEL_9:
    strcpy(v113, "FeedHeadline");
    *(v113 + 13) = 0;
    *(v113 + 14) = -5120;
LABEL_10:
    *(v113 + 16) = 0;
    *(v113 + 24) = 0;
    *(v113 + 32) = 0;
    *(v113 + 40) = 1;
    *(v113 + 48) = 0;
    *(v113 + 56) = 0;
    *(v113 + 64) = 0;
    swift_willThrow();
    goto LABEL_11;
  }

  v111 = v223;
  v112 = sub_1D5BF08EC(v110, 0, 0);
  if (v111)
  {

LABEL_11:
    sub_1D5BE792C(v103, type metadata accessor for GroupLayoutContext);
    return __swift_destroy_boxed_opaque_existential_1(&v240);
  }

  v114 = sub_1D5C14D80(v112);

  if (!v114)
  {
LABEL_24:

    sub_1D5ED8048();
    swift_allocError();
    goto LABEL_9;
  }

  v115 = *(v114 + 16);
  if (!v115)
  {

    goto LABEL_24;
  }

  v116 = *(a1 + v106[17]);
  v232 = v106[19];
  v117 = *(a1 + v232);
  v228 = v97;
  v235 = v109;
  v233 = v117;
  if (v117 >= v116)
  {
LABEL_26:
    v132 = *(a1 + v106[18]);
    v133 = __OFSUB__(v132, v117);
    v134 = v132 - v117;
    if (v133)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v135 = *(v114 + 16);
    v136 = v217;
    v137 = v225;
    v138 = v215;
    if (v134 < 1)
    {
      v234 = a1;
      v238 = (v218 + 56);
      v244 = (v218 + 48);

      v143 = 0;
      while (1)
      {
        v144 = v224;
        if (v143 == v135)
        {
          v145 = 1;
          v143 = v135;
          v146 = v222;
        }

        else
        {
          if (v143 >= *(v114 + 16))
          {
            goto LABEL_61;
          }

          v147 = v114 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v143;
          v146 = v222;
          v148 = *(v222 + 48);
          v149 = v225;
          *v225 = v143;
          sub_1D5BE3ED8(v147, v149 + v148, type metadata accessor for FeedHeadline);
          v150 = v149;
          v144 = v224;
          sub_1D5BDAB0C(v150, v224, sub_1D5C15644);
          v145 = 0;
          ++v143;
        }

        v151 = *v238;
        (*v238)(v144, v145, 1, v146);
        v152 = v221;
        sub_1D5C1516C(v144, v221);
        v153 = *v244;
        if ((*v244)(v152, 1, v146) == 1)
        {
          break;
        }

        v154 = *v152;
        v155 = v219;
        sub_1D5BDAB0C(v152 + *(v146 + 48), v219, type metadata accessor for FeedHeadline);
        if ((*(v155 + 33) & 0x10) == 0)
        {

          v239[0] = v114;
          v178 = v155;
          v179 = v207;
          sub_1D5C17DC4(v154, v207);
          sub_1D5BE792C(v178, type metadata accessor for FeedHeadline);

          v180 = v213;
          sub_1D5BDAB0C(v179, v213, type metadata accessor for FeedHeadline);
          v161 = v226;
          v181 = *(v226 + 56);
          v136 = v217;
          v181(v180, 0, 1, v217);
          v182 = v180;
          v160 = v216;
          sub_1D5BDAB0C(v182, v216, type metadata accessor for FeedHeadline);
          v181(v160, 0, 1, v136);
          goto LABEL_46;
        }

        result = sub_1D5BE792C(v155, type metadata accessor for FeedHeadline);
      }

      v170 = v226;
      v171 = 1;
      v236 = *(v226 + 56);
      (v236)(v213, 1, 1, v217);
      if (*(v114 + 16))
      {
        v172 = (*(v170 + 80) + 32) & ~*(v170 + 80);
        v173 = v222;
        v174 = *(v222 + 48);
        v175 = v225;
        *v225 = 0;
        sub_1D5BE3ED8(v114 + v172, v175 + v174, type metadata accessor for FeedHeadline);
        v176 = v208;
        sub_1D5BDAB0C(v175, v208, sub_1D5C15644);
        v171 = 0;
        v177 = v209;
      }

      else
      {
        v173 = v222;
        v177 = v209;
        v176 = v208;
      }

      v151(v176, v171, 1, v173);
      sub_1D5C1516C(v176, v177);
      if (v153(v177, 1, v173) == 1)
      {

        v189 = 1;
        v169 = v201;
        v160 = v216;
      }

      else
      {
        v190 = *v177;
        sub_1D5BE792C(v177 + *(v173 + 48), type metadata accessor for FeedHeadline);
        v239[0] = v114;
        v191 = v206;
        sub_1D5C17DC4(v190, v206);

        v160 = v216;
        sub_1D5BDAB0C(v191, v216, type metadata accessor for FeedHeadline);
        v189 = 0;
        v169 = v201;
      }

      v168 = v200;
      v192 = v213;
      v136 = v217;
      (v236)(v160, v189, 1, v217);
      v161 = v226;
      v193 = (*(v226 + 48))(v192, 1, v136);
      a1 = v234;
      v103 = v237;
      if (v193 != 1)
      {
        sub_1D69B359C(v192);
      }
    }

    else
    {
      if (v135)
      {
        v139 = (*(v226 + 80) + 32) & ~*(v226 + 80);
        v140 = v222;
        v141 = *(v222 + 48);
        *v225 = 0;
        sub_1D5BE3ED8(v114 + v139, v137 + v141, type metadata accessor for FeedHeadline);
        sub_1D5BDAB0C(v137, v138, sub_1D5C15644);
        v142 = 0;
      }

      else
      {
        v142 = 1;
        v140 = v222;
      }

      v162 = v218;
      (*(v218 + 56))(v138, v142, 1, v140);
      v163 = v138;
      v164 = v214;
      sub_1D5C1516C(v163, v214);
      if ((*(v162 + 48))(v164, 1, v140) == 1)
      {

        v160 = v216;
        (*(v226 + 56))(v216, 1, 1, v136);
LABEL_49:
        sub_1D69B359C(v160);
        sub_1D5ED8048();
        swift_allocError();
        strcpy(v113, "FeedHeadline");
        *(v113 + 13) = 0;
        *(v113 + 14) = -5120;
        goto LABEL_10;
      }

      v165 = *v164;
      sub_1D5BE792C(v164 + *(v140 + 48), type metadata accessor for FeedHeadline);
      v239[0] = v114;
      v166 = v210;
      sub_1D5C17DC4(v165, v210);

      v167 = v166;
      v160 = v216;
      sub_1D5BDAB0C(v167, v216, type metadata accessor for FeedHeadline);
      v161 = v226;
      (*(v226 + 56))(v160, 0, 1, v136);
      v168 = v200;
      v169 = v201;
    }
  }

  else
  {
    v234 = a1;
    v244 = (v218 + 56);
    v118 = (v218 + 48);

    v119 = 0;
    v120 = v222;
    v121 = v220;
    while (1)
    {
      v122 = v227;
      if (v119 == v115)
      {
        v123 = 1;
        v119 = v115;
      }

      else
      {
        if (v119 >= *(v114 + 16))
        {
          __break(1u);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v124 = v114 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v119;
        v125 = *(v120 + 48);
        v126 = v225;
        *v225 = v119;
        sub_1D5BE3ED8(v124, v126 + v125, type metadata accessor for FeedHeadline);
        v127 = v126;
        v121 = v220;
        sub_1D5BDAB0C(v127, v220, sub_1D5C15644);
        v123 = 0;
        ++v119;
        v122 = v227;
      }

      (*v244)(v121, v123, 1, v120);
      sub_1D5C1516C(v121, v122);
      if ((*v118)(v122, 1, v120) == 1)
      {

        a1 = v234;
        v106 = v236;
        v103 = v237;
        v117 = v233;
        goto LABEL_26;
      }

      v128 = v114;
      v129 = v122;
      v130 = *v122;
      v131 = v202;
      sub_1D5BDAB0C(v129 + *(v120 + 48), v202, type metadata accessor for FeedHeadline);
      if ((*(v131 + 33) & 0x10) != 0)
      {
        break;
      }

      result = sub_1D5BE792C(v131, type metadata accessor for FeedHeadline);
      v114 = v128;
    }

    v239[0] = v128;
    v156 = v211;
    sub_1D5C17DC4(v130, v211);
    sub_1D5BE792C(v131, type metadata accessor for FeedHeadline);

    v157 = v199;
    sub_1D5BDAB0C(v156, v199, type metadata accessor for FeedHeadline);
    v158 = v157;
    v159 = v198;
    sub_1D5BDAB0C(v158, v198, type metadata accessor for FeedHeadline);
    v160 = v216;
    sub_1D5BDAB0C(v159, v216, type metadata accessor for FeedHeadline);
    v161 = v226;
    v136 = v217;
    (*(v226 + 56))(v160, 0, 1, v217);
LABEL_46:
    a1 = v234;
    v103 = v237;
    v169 = v201;
    v168 = v200;
  }

  if ((*(v161 + 48))(v160, 1, v136) == 1)
  {

    goto LABEL_49;
  }

  result = sub_1D5BDAB0C(v160, v168, type metadata accessor for FeedHeadline);
  if ((*(v168 + 33) & 0x10) == 0)
  {
    goto LABEL_53;
  }

  if (!__OFADD__(v233, 1))
  {
    *(a1 + v232) = v233 + 1;
LABEL_53:
    MEMORY[0x1EEE9AC00](result, v183);
    v195 = v168;
    v185 = sub_1D5BF5F6C(sub_1D5BF619C, v194, v184);
    strcpy(v239, "FeedHeadline");
    BYTE5(v239[1]) = 0;
    HIWORD(v239[1]) = -5120;
    v239[2] = 0;
    v239[3] = 0;
    sub_1D5BDACA8(v239, v185);

    sub_1D5BDAB0C(v168, v169, type metadata accessor for FeedHeadline);
    v186 = type metadata accessor for A12_V10.Bound();
    v187 = v212;
    v212[3] = v186;
    v187[4] = sub_1D69B37B8(&qword_1EC88F640, type metadata accessor for A12_V10.Bound);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v187);
    *boxed_opaque_existential_1 = v228;
    sub_1D5B63F14(&v240, (boxed_opaque_existential_1 + 1));
    sub_1D5BDAB0C(v103, boxed_opaque_existential_1 + *(v186 + 24), type metadata accessor for GroupLayoutContext);
    return sub_1D5BDAB0C(v169, boxed_opaque_existential_1 + *(v186 + 28), type metadata accessor for FeedHeadline);
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_1D69B275C@<X0>(_BYTE *a1@<X8>)
{
  v40 = a1;
  v2 = sub_1D725A36C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Context(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *v1;
  v16 = type metadata accessor for A12_V10.Bound();
  sub_1D5BE3ED8(v1 + *(v16 + 28), v10, type metadata accessor for FeedHeadline);
  v17 = v1 + *(v16 + 24);
  v18 = type metadata accessor for GroupLayoutContext();
  v19 = *(*&v17[v18[10]] + 16);
  v20 = *&v17[v18[8]];
  sub_1D5B68374(v19 + 16, v42);
  sub_1D5B68374(v19 + 56, v46);
  v21 = v20 * *(v19 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(v42, inited + 16);
  sub_1D5B63F14(v46, inited + 56);
  *(inited + 96) = v21;
  v45 = 2;

  FeedLayoutStylerFactory.styler(withHeading:)(&v45, v43);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(inited + 16);
  __swift_destroy_boxed_opaque_existential_1(inited + 56);
  HeadlineViewLayout.Context.init(key:model:styler:)(v15, v10, v43, v14);
  v23 = *MEMORY[0x1E69D7130];
  v24 = sub_1D7259D1C();
  (*(*(v24 - 8) + 104))(v6, v23, v24);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v2);
  v41 = v14;
  sub_1D69B38FC(0, &qword_1EC88F660, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  sub_1D725A4CC();
  sub_1D725A4DC();
  memcpy(v42, v44, sizeof(v42));
  sub_1D5BF662C(0, &qword_1EDF19A30, MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D7273AE0;
  sub_1D5BE5E28();
  v27 = v26;
  v38 = v43[1];
  v39 = v43[0];
  v28 = swift_allocBox();
  v30 = v29;
  v31 = *(v27 + 48);
  v32 = *(v27 + 64);
  sub_1D5BE3ED8(v14, v29, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v30 + v31), v42, 0x130uLL);
  *(v30 + v32) = *&v17[v18[7]];
  *(v25 + 32) = v28 | 0x4000000000000000;
  v33 = v40;
  *v40 = 0;
  v34 = v39;
  *(v33 + 24) = v38;
  *(v33 + 8) = v34;
  *&v46[0] = v25;
  sub_1D5BF662C(0, &qword_1EDF1B4C8, MEMORY[0x1E69E62F8]);
  sub_1D5C184C4();
  sub_1D5BDEFF8();
  v35 = sub_1D72623BC();

  v36 = MEMORY[0x1E69E7CC0];
  *(v33 + 5) = v35;
  *(v33 + 6) = v36;
  return sub_1D5BE792C(v14, type metadata accessor for HeadlineViewLayout.Context);
}

uint64_t sub_1D69B2C08(uint64_t a1, uint64_t a2)
{
  sub_1D69B3CC8(0, &qword_1EC88F678, sub_1D69B3808, &type metadata for A12_V10.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13[-v8];
  v15 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 12;
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D7490], v5);
  v14 = a2;
  v11 = MEMORY[0x1E69D7150];
  sub_1D69B38FC(0, &qword_1EC88F680, MEMORY[0x1E69D7150]);
  sub_1D69B38B8(&qword_1EC88F688, &qword_1EC88F680, v11);
  sub_1D7259A2C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D69B2DF4(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v44 = a1;
  v50 = sub_1D725A36C();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v3);
  v52 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1D725A19C();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v5);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HeadlineViewLayout.Options(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D69B3CC8(0, &qword_1EC88F678, sub_1D69B3808, &type metadata for A12_V10.Layout, MEMORY[0x1E69D74B0]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = (&v42 - v16);
  v54 = a1;
  v18 = sub_1D725994C();
  v19 = swift_allocBox();
  (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69D6F50], v18);
  *v17 = v19;
  v21 = *(v14 + 104);
  v21(v17, *MEMORY[0x1E69D73C0], v13);
  v22 = MEMORY[0x1E69D6F38];
  sub_1D69B38FC(0, &qword_1EC88F690, MEMORY[0x1E69D6F38]);
  v24 = v23;
  sub_1D69B38B8(&qword_1EC88F698, &qword_1EC88F690, v22);
  v47 = v24;
  sub_1D7259A9C();
  v45 = *(v14 + 8);
  v45(v17, v13);
  v54 = v44;
  swift_getKeyPath();
  v25 = *MEMORY[0x1E69D74A8];
  v44 = v13;
  v21(v17, v25, v13);
  v26 = v8[7];
  v27 = *MEMORY[0x1E69D7348];
  v28 = sub_1D725A34C();
  v29 = *(v28 - 8);
  (*(v29 + 104))(&v11[v26], v27, v28);
  (*(v29 + 56))(&v11[v26], 0, 1, v28);
  v30 = *MEMORY[0x1E69DDC70];
  *v11 = 0;
  *&v11[v8[8]] = 0;
  *&v11[v8[9]] = v30;
  v31 = *MEMORY[0x1E69DDCE0];
  v42 = *(MEMORY[0x1E69DDCE0] + 16);
  v43 = v31;
  v32 = qword_1EDF386E8;
  v33 = v30;
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = v46;
  sub_1D725972C();

  MEMORY[0x1EEE9AC00](v35, v36);
  v37 = v42;
  *(&v42 - 4) = v43;
  *(&v42 - 3) = v37;
  v38 = v48;
  v39 = v49;
  *(&v42 - 4) = v34;
  *(&v42 - 3) = v39;
  v41 = v11;
  (*(v38 + 104))(v52, *MEMORY[0x1E69D7378], v50);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v51 + 8))(v34, v53);
  sub_1D5BE792C(v11, type metadata accessor for HeadlineViewLayout.Options);
  v41 = sub_1D69B3980();
  sub_1D7259A4C();

  return (v45)(v17, v44);
}

uint64_t sub_1D69B33D8(uint64_t a1)
{
  sub_1D5BDEE4C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  v4 = *(a1 + 28);
  *(v3 + 56) = type metadata accessor for FeedHeadline(0);
  *(v3 + 64) = sub_1D69B37B8(&qword_1EDF34AD0, type metadata accessor for FeedHeadline);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 32));
  sub_1D5BE3ED8(v1 + v4, boxed_opaque_existential_1, type metadata accessor for FeedHeadline);
  return v3;
}

unint64_t sub_1D69B34C4(uint64_t a1)
{
  *(a1 + 8) = sub_1D69B34F4();
  result = sub_1D69B3548();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D69B34F4()
{
  result = qword_1EC88F630;
  if (!qword_1EC88F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F630);
  }

  return result;
}

unint64_t sub_1D69B3548()
{
  result = qword_1EC88F638;
  if (!qword_1EC88F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F638);
  }

  return result;
}

uint64_t sub_1D69B359C(uint64_t a1)
{
  sub_1D5C143F8(0, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for A12_V10.Bound()
{
  result = qword_1EC88F648;
  if (!qword_1EC88F648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D69B369C()
{
  result = type metadata accessor for GroupLayoutKey();
  if (v1 <= 0x3F)
  {
    result = sub_1D5B49474(319, &qword_1EDF3FA20);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for GroupLayoutContext();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for FeedHeadline(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D69B3760(uint64_t a1)
{
  result = sub_1D69B37B8(&qword_1EC88F658, type metadata accessor for A12_V10.Bound);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D69B37B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D69B3808()
{
  result = qword_1EC88F668;
  if (!qword_1EC88F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F668);
  }

  return result;
}

unint64_t sub_1D69B385C()
{
  result = qword_1EC88F670;
  if (!qword_1EC88F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F670);
  }

  return result;
}

uint64_t sub_1D69B38B8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D69B38FC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D69B38FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V10.Layout;
    v8[1] = &type metadata for A12_V10.Layout.Attributes;
    v8[2] = sub_1D69B3808();
    v8[3] = sub_1D69B385C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D69B3980()
{
  result = qword_1EC88F6A0;
  if (!qword_1EC88F6A0)
  {
    sub_1D69B3CC8(255, &qword_1EC88F6A8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F6A0);
  }

  return result;
}

uint64_t sub_1D69B3A18(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 336))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D69B3A38(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 336) = v3;
  return result;
}

unint64_t sub_1D69B3AE0()
{
  result = qword_1EC88F6B0;
  if (!qword_1EC88F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F6B0);
  }

  return result;
}

unint64_t sub_1D69B3B38()
{
  result = qword_1EC88F6B8;
  if (!qword_1EC88F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F6B8);
  }

  return result;
}

unint64_t sub_1D69B3B90()
{
  result = qword_1EC88F6C0;
  if (!qword_1EC88F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F6C0);
  }

  return result;
}

unint64_t sub_1D69B3BE8()
{
  result = qword_1EC88F6C8;
  if (!qword_1EC88F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F6C8);
  }

  return result;
}

double sub_1D69B3C3C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 304) = 1;
  return result;
}

unint64_t sub_1D69B3C74()
{
  result = qword_1EC88F6D8;
  if (!qword_1EC88F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F6D8);
  }

  return result;
}

void sub_1D69B3CC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D69B3D44()
{
  result = qword_1EC88F6E8;
  if (!qword_1EC88F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F6E8);
  }

  return result;
}

unint64_t sub_1D69B3D9C()
{
  result = qword_1EC88F6F0;
  if (!qword_1EC88F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F6F0);
  }

  return result;
}

unint64_t sub_1D69B3DF4()
{
  result = qword_1EC88F6F8;
  if (!qword_1EC88F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F6F8);
  }

  return result;
}

uint64_t sub_1D69B3E5C()
{
  sub_1D5B87E10(v0 + 16);
  sub_1D61E6650(v0 + OBJC_IVAR____TtC8NewsFeed37WeakWebEmbedDataSourceManagerObserver_dataVisualization);

  return swift_deallocClassInstance();
}

uint64_t sub_1D69B3ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t FeedItemDismissalRecord.dismissingIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedItemDismissalRecord.time.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedItemDismissalRecord() + 20);
  v4 = sub_1D725891C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D69B401C()
{
  if (*v0)
  {
    return 1701669236;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1D69B4054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001D73C1570 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

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

uint64_t sub_1D69B413C(uint64_t a1)
{
  v2 = sub_1D69B4368();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D69B4178(uint64_t a1)
{
  v2 = sub_1D69B4368();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedItemDismissalRecord.encode(to:)(void *a1)
{
  sub_1D69B46DC(0, &qword_1EC88F700, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69B4368();
  sub_1D7264B5C();
  v10[15] = 0;
  sub_1D72643FC();
  if (!v1)
  {
    type metadata accessor for FeedItemDismissalRecord();
    v10[14] = 1;
    sub_1D725891C();
    sub_1D5CE4528(&qword_1EDF45B18);
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D69B4368()
{
  result = qword_1EC88F708;
  if (!qword_1EC88F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F708);
  }

  return result;
}

uint64_t FeedItemDismissalRecord.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_1D725891C();
  v20 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D69B46DC(0, &qword_1EC88F710, MEMORY[0x1E69E6F48]);
  v24 = v7;
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for FeedItemDismissalRecord();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69B4368();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v11;
  v16 = v22;
  v15 = v23;
  v26 = 0;
  *v14 = sub_1D72642BC();
  v14[1] = v17;
  v25 = 1;
  sub_1D5CE4528(&qword_1EDF45B08);
  sub_1D726431C();
  (*(v16 + 8))(v10, v24);
  (*(v20 + 32))(v14 + *(v19 + 20), v6, v15);
  sub_1D60663A8(v14, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D606640C(v14);
}

void sub_1D69B46DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D69B4368();
    v7 = a3(a1, &type metadata for FeedItemDismissalRecord.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D69B47AC()
{
  result = qword_1EC88F718;
  if (!qword_1EC88F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F718);
  }

  return result;
}

unint64_t sub_1D69B4804()
{
  result = qword_1EC88F720;
  if (!qword_1EC88F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F720);
  }

  return result;
}

unint64_t sub_1D69B485C()
{
  result = qword_1EC88F728;
  if (!qword_1EC88F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F728);
  }

  return result;
}

unint64_t sub_1D69B48C4()
{
  result = qword_1EC88F730;
  if (!qword_1EC88F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F730);
  }

  return result;
}

uint64_t sub_1D69B4918(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v17 = a4;
  sub_1D69B5264(0, &qword_1EC88F758, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69B5168();
  sub_1D7264B5C();
  LOBYTE(v19) = 0;
  sub_1D72643FC();
  if (!v5)
  {
    v13 = v16;
    v19 = v17;
    v18 = 1;
    sub_1D69B52C8();
    sub_1D726443C();
    v19 = v13;
    v18 = 2;
    sub_1D69B531C();
    sub_1D726443C();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D69B4BA4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D5DF20CC();

  *a1 = v2;
  return result;
}

uint64_t sub_1D69B4BE4()
{
  v1 = 0x6F746164696C6176;
  if (*v0 != 1)
  {
    v1 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1D69B4C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D69B55F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D69B4C70(uint64_t a1)
{
  v2 = sub_1D69B5168();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D69B4CAC(uint64_t a1)
{
  v2 = sub_1D69B5168();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D69B4CE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D69B4EE8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1D69B4D38(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return sub_1D5E1E5A4(v2, v4) & (v3 == v5);
  }

  v7 = sub_1D72646CC();
  result = 0;
  if (v7)
  {
    return sub_1D5E1E5A4(v2, v4) & (v3 == v5);
  }

  return result;
}

uint64_t sub_1D69B4DB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D6C37A40(v4, v1);
  MEMORY[0x1DA6FC0B0](v2);
  return sub_1D7264A5C();
}

uint64_t sub_1D69B4E28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1D72621EC();
  sub_1D6C37A40(a1, v4);
  return MEMORY[0x1DA6FC0B0](v3);
}

uint64_t sub_1D69B4E74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D6C37A40(v4, v1);
  MEMORY[0x1DA6FC0B0](v2);
  return sub_1D7264A5C();
}

uint64_t sub_1D69B4EE8(void *a1)
{
  sub_1D69B5264(0, &qword_1EC88F738, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69B5168();
  sub_1D7264B0C();
  if (!v1)
  {
    LOBYTE(v13) = 0;
    v9 = sub_1D72642BC();
    v12 = 1;
    sub_1D69B51BC();
    sub_1D726431C();
    v12 = 2;
    sub_1D69B5210();
    v11 = 0;
    sub_1D726431C();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D69B5168()
{
  result = qword_1EC88F740;
  if (!qword_1EC88F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F740);
  }

  return result;
}

unint64_t sub_1D69B51BC()
{
  result = qword_1EC88F748;
  if (!qword_1EC88F748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F748);
  }

  return result;
}

unint64_t sub_1D69B5210()
{
  result = qword_1EC88F750;
  if (!qword_1EC88F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F750);
  }

  return result;
}

void sub_1D69B5264(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D69B5168();
    v7 = a3(a1, &type metadata for FormatDerivedDataOptionReference.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D69B52C8()
{
  result = qword_1EC88F760;
  if (!qword_1EC88F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F760);
  }

  return result;
}

unint64_t sub_1D69B531C()
{
  result = qword_1EC88F768;
  if (!qword_1EC88F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F768);
  }

  return result;
}

unint64_t sub_1D69B5390()
{
  result = qword_1EC88F770;
  if (!qword_1EC88F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F770);
  }

  return result;
}

unint64_t sub_1D69B53E8()
{
  result = qword_1EC88F778;
  if (!qword_1EC88F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F778);
  }

  return result;
}

unint64_t sub_1D69B5440()
{
  result = qword_1EC88F780;
  if (!qword_1EC88F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F780);
  }

  return result;
}

unint64_t sub_1D69B5498()
{
  result = qword_1EC88F788;
  if (!qword_1EC88F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F788);
  }

  return result;
}

unint64_t sub_1D69B54F0()
{
  result = qword_1EC88F790;
  if (!qword_1EC88F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F790);
  }

  return result;
}

unint64_t sub_1D69B5548()
{
  result = qword_1EC88F798;
  if (!qword_1EC88F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F798);
  }

  return result;
}

unint64_t sub_1D69B55A0()
{
  result = qword_1EC88F7A0;
  if (!qword_1EC88F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F7A0);
  }

  return result;
}

uint64_t sub_1D69B55F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F746164696C6176 && a2 == 0xE900000000000072 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t FormatWebEmbedData.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatWebEmbedData.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_url;
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D69B5860(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D69B58D8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v93 = a5;
  v100 = a4;
  v101 = type metadata accessor for WebEmbedDataVisualization();
  v98 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101, v10);
  v85 = (&v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v91, v12);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v90 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v89 = &v82 - v20;
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v96 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D72585BC();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v95 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C1F2DC(0);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v92 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v97 = &v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34, v35);
  v38 = &v82 - v37;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v39 = *(v25 + 16);
  v99 = a3;
  v94 = v25 + 16;
  v87 = v39;
  v88 = a1;
  (v39)(v6 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_url, a3, v24, v36);
  v40 = *(v25 + 56);
  v40(v38, 1, 1, v24);
  sub_1D5BB14F0(0, &unk_1EDF43A70, sub_1D5B4D3E0, MEMORY[0x1E69D6B18]);
  swift_allocObject();

  *(v6 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_indexFileURLPromise) = sub_1D725BB1C();
  v86 = v40;
  v40(v38, 1, 1, v24);
  swift_allocObject();
  *(v6 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_dataURLPromise) = sub_1D725BB1C();
  v41 = *(v98 + 56);
  v41(v6 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_dataVisualization, 1, 1, v101);
  *(v6 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_config) = v100;
  *(v6 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_routeOptions) = v93;
  v93 = a2;
  if (!a2)
  {
    (*(v25 + 8))(v99, v24);
    v67 = OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_feedItem;
    v68 = type metadata accessor for FeedItem(0);
    (*(*(v68 - 8) + 56))(v6 + v67, 1, 1, v68);
    return v6;
  }

  v83 = v6;
  v84 = v25;
  v42 = v87;
  v87(v95, v99, v24);
  v43 = v86;
  v86(v97, 1, 1, v24);
  v44 = type metadata accessor for FeedHeadline(0);
  (*(*(v44 - 8) + 56))(v96, 1, 1, v44);
  v45 = v89;
  v41(v89, 1, 1, v101);
  v43(v38, 1, 1, v24);
  swift_allocObject();

  v46 = sub_1D725BB1C();
  v43(v38, 1, 1, v24);
  swift_allocObject();
  v47 = sub_1D725BB1C();
  *v14 = xmmword_1D727F470;
  v14[16] = 1;
  *(v14 + 24) = xmmword_1D727F480;
  v48 = v93;
  *(v14 + 5) = v88;
  *(v14 + 6) = v48;
  v49 = v91;
  v50 = v95;
  v42(&v14[*(v91 + 32)], v95, v24);
  v51 = v97;
  sub_1D69B5860(v97, &v14[v49[9]], sub_1D5B4D3E0);
  *&v14[v49[10]] = v46;
  *&v14[v49[11]] = v47;
  v52 = v96;
  sub_1D69B5860(v96, &v14[v49[12]], sub_1D5B69BE0);
  sub_1D69B5860(v45, &v14[v49[13]], sub_1D5B4D72C);
  v14[v49[14]] = 0;
  v53 = &v14[v49[15]];
  *v53 = 0;
  *(v53 + 1) = 0;
  v54 = v90;
  sub_1D69B5860(v45, v90, sub_1D5B4D72C);
  v55 = (*(v98 + 48))(v54, 1, v101);
  v56 = sub_1D5B4D72C;
  v57 = v24;
  v58 = v51;
  v59 = v52;
  v60 = v45;
  if (v55 != 1)
  {
    v61 = v85;
    sub_1D69B5860(v54, v85, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v70 = *v61;
      sub_1D5C24C08(v54, type metadata accessor for WebEmbedDataVisualization);
      v71 = v70 >> 61;
      if ((v70 >> 61) <= 2)
      {
        if (v71)
        {
          if (v71 == 1)
          {

            v74 = *(v84 + 8);
            v74(v99, v57);
            sub_1D5C24C08(v60, sub_1D5B4D72C);
            sub_1D5C24C08(v59, sub_1D5B69BE0);
            sub_1D5C24C08(v51, sub_1D5B4D3E0);
            v74(v50, v57);
            *v14 = 8390656;
            v73 = 0x2000800800;
          }

          else
          {

            v78 = *(v84 + 8);
            v78(v99, v57);
            sub_1D5C24C08(v60, sub_1D5B4D72C);
            sub_1D5C24C08(v59, sub_1D5B69BE0);
            sub_1D5C24C08(v51, sub_1D5B4D3E0);
            v78(v50, v57);
            *v14 = 536872960;
            v73 = 0x2020000800;
          }
        }

        else
        {
          v73 = 0x2000400800;
          *v14 = 4196352;

          v76 = SportsScoreDataVisualization.isFeatured.getter();

          v77 = *(v84 + 8);
          v77(v99, v57);
          sub_1D5C24C08(v60, sub_1D5B4D72C);
          sub_1D5C24C08(v59, sub_1D5B69BE0);
          sub_1D5C24C08(v97, sub_1D5B4D3E0);
          v77(v50, v57);
          if (v76)
          {
            *v14 = 4196384;
            v73 = 0x2000400820;
          }
        }
      }

      else if (v71 > 4)
      {
        if (v71 == 5)
        {

          v75 = *(v84 + 8);
          v75(v99, v57);
          sub_1D5C24C08(v60, sub_1D5B4D72C);
          sub_1D5C24C08(v59, sub_1D5B69BE0);
          sub_1D5C24C08(v51, sub_1D5B4D3E0);
          v75(v50, v57);
          *v14 = 0x800000800;
          v73 = 0x2800000800;
        }

        else
        {

          v80 = *(v84 + 8);
          v80(v99, v57);
          sub_1D5C24C08(v60, sub_1D5B4D72C);
          sub_1D5C24C08(v59, sub_1D5B69BE0);
          sub_1D5C24C08(v51, sub_1D5B4D3E0);
          v80(v50, v57);
          *v14 = 0x1000000800;
          v73 = 0x3000000800;
        }
      }

      else if (v71 == 3)
      {

        v72 = *(v84 + 8);
        v72(v99, v57);
        sub_1D5C24C08(v60, sub_1D5B4D72C);
        sub_1D5C24C08(v59, sub_1D5B69BE0);
        sub_1D5C24C08(v51, sub_1D5B4D3E0);
        v72(v50, v57);
        *v14 = 0x200000800;
        v73 = 0x2200000800;
      }

      else
      {

        v79 = *(v84 + 8);
        v79(v99, v57);
        sub_1D5C24C08(v60, sub_1D5B4D72C);
        sub_1D5C24C08(v59, sub_1D5B69BE0);
        sub_1D5C24C08(v51, sub_1D5B4D3E0);
        v79(v50, v57);
        *v14 = 0x400000800;
        v73 = 0x2400000800;
      }

      v102 = v70;
      v81 = SportsDataVisualization.event.getter();

      if (v81)
      {
        swift_unknownObjectRelease();
        *v14 = v73;
      }

      goto LABEL_6;
    }

    sub_1D5C24C08(v61, type metadata accessor for WebEmbedDataVisualization);
    v56 = type metadata accessor for WebEmbedDataVisualization;
  }

  v62 = v84;
  v63 = v99;
  sub_1D5C24C08(v54, v56);

  v64 = *(v62 + 8);
  v64(v63, v57);
  sub_1D5C24C08(v60, sub_1D5B4D72C);
  sub_1D5C24C08(v59, sub_1D5B69BE0);
  sub_1D5C24C08(v58, sub_1D5B4D3E0);
  v64(v50, v57);
LABEL_6:
  v65 = v92;
  sub_1D69B69C4(v14, v92, type metadata accessor for FeedWebEmbed);
  v66 = type metadata accessor for FeedItem(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
  v6 = v83;
  sub_1D69B69C4(v65, v83 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_feedItem, sub_1D5C1F2DC);
  return v6;
}

uint64_t FormatWebEmbedData.deinit()
{

  sub_1D5C24C08(v0 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_feedItem, sub_1D5C1F2DC);
  v1 = OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_url;
  v2 = sub_1D72585BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1D5C24C08(v0 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_dataVisualization, sub_1D5B4D72C);

  return v0;
}

uint64_t FormatWebEmbedData.__deallocating_deinit()
{
  FormatWebEmbedData.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FormatWebEmbedData()
{
  result = qword_1EDF2D848;
  if (!qword_1EDF2D848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D69B687C()
{
  sub_1D5C1F2DC(319);
  if (v0 <= 0x3F)
  {
    sub_1D72585BC();
    if (v1 <= 0x3F)
    {
      sub_1D5B4D72C(319);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1D69B69C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t FormatGroupNodeMask.size.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *a1 = v3;
  return sub_1D5C82CD8(v3);
}

unint64_t FormatGroupNodeMask.size.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  return sub_1D5C92A8C(v3);
}

uint64_t FormatGroupNodeMask.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

void *FormatGroupNodeMask.__allocating_init(style:animation:size:adjustments:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = *a3;
  v8[2] = a1;
  v8[3] = a2;
  swift_beginAccess();
  v8[4] = v9;
  swift_beginAccess();
  v8[5] = a4;
  return v8;
}

void *FormatGroupNodeMask.init(style:animation:size:adjustments:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v4[2] = a1;
  v4[3] = a2;
  swift_beginAccess();
  v4[4] = v6;
  swift_beginAccess();
  v4[5] = a4;
  return v4;
}

uint64_t FormatGroupNodeMask.deinit()
{

  sub_1D5C92A8C(*(v0 + 32));

  return v0;
}

uint64_t FormatGroupNodeMask.__deallocating_deinit()
{

  sub_1D5C92A8C(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1D69B6D74(uint64_t a1)
{
  result = sub_1D69B6E44(&qword_1EC88F7A8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D69B6DB8(void *a1)
{
  a1[1] = sub_1D69B6E44(&qword_1EDF2C7C8);
  a1[2] = sub_1D69B6E44(&qword_1EDF0FC20);
  result = sub_1D69B6E44(&qword_1EC88F7B0);
  a1[3] = result;
  return result;
}

uint64_t sub_1D69B6E44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatGroupNodeMask();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1D69B6E84@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D6691524(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D69B6F0C(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = *(v4 + 24);
  if (*(v10 + 16) && (v11 = sub_1D5B69D90(a3, a4), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = type metadata accessor for FormatNodeStateData.Data();
    v16 = *(v15 - 8);
    sub_1D69B74F8(v14 + *(v16 + 72) * v13, a1);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v17 = type metadata accessor for FormatNodeStateData.Data();
    (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }

  swift_endAccess();
  swift_beginAccess();
  v18 = *(v5 + 32);
  if (*(v18 + 16) && (v19 = sub_1D5B69D90(a3, a4), (v20 & 1) != 0))
  {
    v21 = *(*(v18 + 56) + 8 * v19);
  }

  else
  {
    v21 = 0;
  }

  swift_endAccess();
  swift_beginAccess();
  sub_1D5EC4E14(a3, a4, *(v5 + 40), a2);
  swift_endAccess();
  return v21;
}

uint64_t sub_1D69B70E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 24);
  if (*(v7 + 16) && (v8 = sub_1D5B69D90(a1, a2), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = type metadata accessor for FormatNodeStateData.Data();
    v13 = *(v12 - 8);
    sub_1D69B74F8(v11 + *(v13 + 72) * v10, a3);
    (*(v13 + 56))(a3, 0, 1, v12);
  }

  else
  {
    v14 = type metadata accessor for FormatNodeStateData.Data();
    (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
  }

  return swift_endAccess();
}

uint64_t sub_1D69B7228(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (*(v5 + 16) && (v6 = sub_1D5B69D90(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();
  return v8;
}

uint64_t sub_1D69B72B0()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FormatNodeStateData.Data()
{
  result = qword_1EDF2C4A0;
  if (!qword_1EDF2C4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D69B7370()
{
  result = type metadata accessor for FormatAdMetricsData();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FormatText();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FormatWebEmbedData();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for FormatItemNodeData();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for FormatButtonNodeData();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for FormatViewData(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for FormatMicaData();
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for FormatVideoData(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for FormatShareAttributionData();
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for FormatVideoPlayerData();
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for FormatPuzzleEmbedData();
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for FormatSponsoredBannerData();
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                          return 0;
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

  return result;
}

uint64_t sub_1D69B74F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatNodeStateData.Data();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL static FormatMicaNodeArchive.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return static FormatURL.== infix(_:_:)(&v5, &v4);
}

unint64_t sub_1D69B7594(uint64_t a1)
{
  result = sub_1D69B75BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D69B75BC()
{
  result = qword_1EC88F7B8;
  if (!qword_1EC88F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F7B8);
  }

  return result;
}

unint64_t sub_1D69B7610(void *a1)
{
  a1[1] = sub_1D66A3A7C();
  a1[2] = sub_1D66FB2B8();
  result = sub_1D69B7648();
  a1[3] = result;
  return result;
}

unint64_t sub_1D69B7648()
{
  result = qword_1EC88F7C0;
  if (!qword_1EC88F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F7C0);
  }

  return result;
}

BOOL sub_1D69B76CC(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return static FormatURL.== infix(_:_:)(&v5, &v4);
}

void sub_1D69B7714(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D725891C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(a2 + 16);
    v11 = *(v10 + 24);
    if (v11 == 255 || (v11 & 1) == 0 && (v12 = *(v10 + 16), v13 = *(*v10 + 104), swift_beginAccess(), (*(v4 + 16))(v7, v10 + v13, v3), sub_1D725887C(), v15 = v14, (*(v4 + 8))(v7, v3), v12 >= -v15))
    {
      v16 = *(v10 + *(*v10 + 112));
    }

    else
    {
      v16 = sub_1D60D6290(v9);
    }

    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (!v17)
    {
      goto LABEL_20;
    }

    v18 = v17;
    v19 = v16;
    v20 = v18;
    v21 = [v20 attributedText];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 string];

      v24 = sub_1D726207C();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v27 = [v19 string];
    v28 = sub_1D726207C();
    v30 = v29;

    if (!v26)
    {

LABEL_19:
      [v20 setAttributedText_];

LABEL_20:

      return;
    }

    if (v24 != v28 || v26 != v30)
    {
      v32 = sub_1D72646CC();

      if (v32)
      {

        return;
      }

      goto LABEL_19;
    }
  }
}

void sub_1D69B7A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D725891C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    v11 = swift_weakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = *(a3 + 16);
      v14 = *(v13 + 24);
      if (v14 == 255 || (v14 & 1) == 0 && (v15 = *(v13 + 16), v16 = *(*v13 + 104), swift_beginAccess(), (*(v5 + 16))(v8, v13 + v16, v4), sub_1D725887C(), v18 = v17, (*(v5 + 8))(v8, v4), v15 >= -v18))
      {
        v19 = *(v13 + *(*v13 + 112));
      }

      else
      {
        v19 = sub_1D60D6290(v12);
      }

      v20 = v19;
      sub_1D72636AC();
    }

    else
    {
    }
  }
}

uint64_t sub_1D69B7C10(uint64_t a1)
{
  sub_1D69B881C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v9 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    if (qword_1EDF3AF88 != -1)
    {
      swift_once();
    }

    v7 = sub_1D72585BC();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v5, a1, v7);
    (*(v8 + 56))(v5, 0, 1, v7);
    sub_1D725D9CC();
    sub_1D5B6F26C(v5, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  return result;
}

uint64_t sub_1D69B7E04()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D69B7E44(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v70 = a7;
  v71 = a8;
  v66 = a6;
  v67 = a5;
  v13 = sub_1D725891C();
  v65 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1D726344C();
  swift_beginAccess();
  [a3 setUserInteractionEnabled_];
  [a3 setNumberOfLines_];
  v17 = *(a2 + 24);
  v18 = &a3[OBJC_IVAR____TtC8NewsFeed11FormatLabel_identifier];
  *v18 = *(a2 + 16);
  *(v18 + 1) = v17;

  v19 = *(a2 + 96);
  v72 = a4;
  if (v19)
  {
    v20 = *(v19 + 552);
  }

  else
  {
    v20 = 0;
  }

  [a3 setAccessibilityIgnoresInvertColors_];
  v21 = *(a1 + 16);
  v22 = *(v21 + 24);
  if (v22 == 255)
  {
    v32 = *(v21 + *(*v21 + 112));
    sub_1D72636AC();
  }

  else
  {
    v68 = a3;
    v69 = a1;
    v23 = *(v21 + 16);
    v24 = v73;
    v25 = *(v73 + 32);
    if (v22)
    {
      sub_1D60D6284(*(v21 + 16), 1);
      v66 = v25;
      v26 = sub_1D60D6290(v25);
      sub_1D72636AC();

      v27 = *(v24 + 16);
      v64 = *(v24 + 24);
      v65 = v27;
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      swift_weakInit();
      v30 = swift_allocObject();
      v30[2] = v28;
      v30[3] = v29;
      v30[4] = v69;
      v31 = *(v23 + 88);
      v66 = v23;

      v31(&v100, v65, v64, sub_1D69B8784, v30);

      sub_1D69B8790(&v100, &v92);
      if (*(&v93 + 1))
      {
        __swift_project_boxed_opaque_existential_1(&v92, *(&v93 + 1));
        sub_1D725A72C();
        sub_1D6047C90(v66, v22);
        sub_1D5B6F26C(&v100, &qword_1EDF3BE98, sub_1D5E4443C);
        __swift_destroy_boxed_opaque_existential_1(&v92);
      }

      else
      {
        sub_1D5B6F26C(&v100, &qword_1EDF3BE98, sub_1D5E4443C);
        sub_1D6047C90(v66, v22);
        sub_1D5B6F26C(&v92, &qword_1EDF3BE98, sub_1D5E4443C);
      }

      a3 = v68;
      a1 = v69;
    }

    else
    {
      v33 = *(v73 + 32);
      v34 = *(v21 + 16);
      v35 = *(*v21 + 104);
      swift_beginAccess();
      v36 = v65;
      (*(v65 + 16))(v16, v21 + v35, v13);
      sub_1D725887C();
      v38 = v37;
      (*(v36 + 8))(v16, v13);
      if (-v38 <= v34)
      {
        v39 = *(v21 + *(*v21 + 112));
      }

      else
      {
        v39 = sub_1D60D6290(v33);
      }

      a3 = v68;
      a1 = v69;
      [v68 setAttributedText_];
      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = swift_allocObject();
      swift_weakInit();
      v42 = swift_allocObject();
      v42[2] = v41;
      v42[3] = a1;
      v42[4] = v40;

      sub_1D6EC9D40(v34, v67, sub_1D69B8810, v42);
    }
  }

  v43 = *(a2 + 136);
  v44 = *(a2 + 144);
  [a3 setIsAccessibilityElement_];
  [a3 setAccessibilityElementsHidden_];
  if (v44 <= 0xFD)
  {
    if ((v44 & 0x80) != 0)
    {
      if (!(v43 | v44 & 0x7F))
      {
        goto LABEL_21;
      }

      v45 = &selRef_setAccessibilityElementsHidden_;
    }

    else
    {
      v45 = &selRef_setIsAccessibilityElement_;
    }

    [a3 *v45];
  }

LABEL_21:
  if (v19)
  {
    v46 = *(v19 + 192);
  }

  else
  {
    v46 = 0;
  }

  v47 = [a3 layer];
  v100 = 0uLL;
  LOBYTE(v101) = -2;
  sub_1D6D111F4(v47, v70, v46, &v100, v71, a9);

  if (v19)
  {
    v48 = *(v19 + 144);
    v88 = *(v19 + 128);
    v89 = v48;
    v49 = *(v19 + 176);
    v90 = *(v19 + 160);
    v91 = v49;
    v50 = *(v19 + 80);
    v84 = *(v19 + 64);
    v85 = v50;
    v51 = *(v19 + 112);
    v86 = *(v19 + 96);
    v87 = v51;
    memmove(&v92, (v19 + 64), 0x80uLL);
    if (sub_1D5CFD0B8(&v92) == 1)
    {
      v104 = v88;
      v105 = v89;
      v106 = v90;
      v107 = v91;
      v100 = v84;
      v101 = v85;
      v102 = v86;
      v103 = v87;
      goto LABEL_28;
    }

    v104 = v96;
    v105 = v97;
    v106 = v98;
    v107 = v99;
    v100 = v92;
    v101 = v93;
    v102 = v94;
    v103 = v95;
    v55 = sub_1D5CFD35C(&v100);
    if (v55 > 1)
    {
      if (v55 == 2)
      {
        v57 = sub_1D5CFD34C(&v100);
        v75[4] = v57[4];
        v75[5] = v57[5];
        v75[6] = v57[6];
        v75[7] = v57[7];
        v75[0] = *v57;
        v75[1] = v57[1];
        v75[2] = v57[2];
        v75[3] = v57[3];
        v80 = v88;
        v81 = v89;
        v82 = v90;
        v83 = v91;
        v76 = v84;
        v77 = v85;
        v78 = v86;
        v79 = v87;
        sub_1D5CFD190(&v76, v74);
        v54 = v72;
        sub_1D69F9E14(a3, v75, v72);
        goto LABEL_35;
      }
    }

    else if (v55)
    {
      v56 = sub_1D5CFD34C(&v100);
      v74[0] = *v56;
      v74[1] = v56[1];
      v74[2] = v56[2];
      v74[3] = v56[3];
      v80 = v88;
      v81 = v89;
      v82 = v90;
      v83 = v91;
      v76 = v84;
      v77 = v85;
      v78 = v86;
      v79 = v87;
      sub_1D5CFD190(&v76, v75);
      v54 = v72;
      sub_1D71E4008(a3, v74, v72);
LABEL_35:
      sub_1D62DFA38(&v84);
LABEL_38:

      goto LABEL_39;
    }

    sub_1D5CFD34C(&v100);
    v58 = objc_opt_self();
    v80 = v88;
    v81 = v89;
    v82 = v90;
    v83 = v91;
    v76 = v84;
    v77 = v85;
    v78 = v86;
    v79 = v87;
    sub_1D5CFD190(&v76, v75);
    v59 = [v58 clearColor];
    sub_1D726349C();

    sub_1D62DFA38(&v84);
    goto LABEL_37;
  }

  sub_1D69B875C(&v100);
LABEL_28:
  v52 = [objc_opt_self() clearColor];
  sub_1D726349C();

  sub_1D62DFA38(&v100);
  if (v19)
  {
LABEL_37:
    v54 = v72;
    goto LABEL_38;
  }

  v53 = 0;
  v54 = v72;
LABEL_39:
  *&v92 = v53;
  sub_1D613DC18(a3, &v92, v54);

  v60 = *(a1 + 24);
  v61 = swift_allocObject();
  swift_weakInit();

  sub_1D6CAB728(v60, sub_1D69B877C, v61);
}

double sub_1D69B875C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x1FFFFFFFELL;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  return result;
}

uint64_t sub_1D69B8790(uint64_t a1, uint64_t a2)
{
  sub_1D69B881C(0, &qword_1EDF3BE98, sub_1D5E4443C);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D69B881C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D69B8870@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v19 - v10;
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed31SharingTagURLActivityItemSource_linkPresentationSource) && (sub_1D725B77C(), v12 = [v19[1] linkMetadata], swift_unknownObjectRelease(), v12))
  {
    v13 = [v12 URL];

    if (v13)
    {
      sub_1D72584EC();

      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = sub_1D72585BC();
    v16 = *(v15 - 8);
    v17 = *(v16 + 56);
    v17(v7, v14, 1, v15);
    sub_1D5EB8540(v7, v11);
    if ((*(v16 + 48))(v11, 1, v15) != 1)
    {
      (*(v16 + 32))(a1, v11, v15);
      return (v17)(a1, 0, 1, v15);
    }
  }

  else
  {
    v15 = sub_1D72585BC();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  }

  sub_1D69B8B30(*(v2 + OBJC_IVAR____TtC8NewsFeed31SharingTagURLActivityItemSource_model), *(v2 + OBJC_IVAR____TtC8NewsFeed31SharingTagURLActivityItemSource_model + 8), a1);
  sub_1D72585BC();
  result = (*(*(v15 - 8) + 48))(v11, 1, v15);
  if (result != 1)
  {
    return sub_1D5E3E404(v11);
  }

  return result;
}

uint64_t sub_1D69B8B30@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    FCFeedDescriptor.feedURL.getter();
LABEL_10:
    v12 = sub_1D72585BC();
    v13 = *(*(v12 - 8) + 56);

    return v13(a3, 0, 1, v12);
  }

  if (([a1 isPublic] & 1) == 0)
  {
    v10 = [a1 identifier];
    if (!v10)
    {
      sub_1D726207C();
      v10 = sub_1D726203C();
    }

    v11 = [objc_opt_self() nss:v10 NewsURLForTagID:?];

    sub_1D72584EC();
    goto LABEL_10;
  }

  sub_1D7263D4C();

  v5 = [a1 identifier];
  v6 = sub_1D726207C();
  v8 = v7;

  MEMORY[0x1DA6F9910](v6, v8);

  sub_1D725855C();
}

uint64_t sub_1D69B8CFC()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC8NewsFeed31SharingTagURLActivityItemSource_linkPresentationSource) && (sub_1D725B77C(), v2 = [v8 linkMetadata], swift_unknownObjectRelease(), v2) && (v3 = objc_msgSend(v2, sel_title), v2, v3))
  {
    v4 = sub_1D726207C();

    return v4;
  }

  else if (*(v1 + OBJC_IVAR____TtC8NewsFeed31SharingTagURLActivityItemSource_model + 8))
  {
    return FCFeedDescriptor.feedExternalTitle.getter();
  }

  else
  {
    v6 = [*(v1 + OBJC_IVAR____TtC8NewsFeed31SharingTagURLActivityItemSource_model) name];
    v7 = sub_1D726207C();

    return v7;
  }
}

id SharingTagURLActivityItemSource.__allocating_init(tag:linkPresentationSource:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_1D69B989C(a1, a2, v2);
}

id SharingTagURLActivityItemSource.init(tag:linkPresentationSource:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_1D69B9914(a1, a2, v2);
}

id SharingTagURLActivityItemSource.__allocating_init(feedDescriptor:linkPresentationSource:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC8NewsFeed31SharingTagURLActivityItemSource_model];
  *v6 = a1;
  v6[8] = 1;
  *&v5[OBJC_IVAR____TtC8NewsFeed31SharingTagURLActivityItemSource_linkPresentationSource] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SharingTagURLActivityItemSource.init(feedDescriptor:linkPresentationSource:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC8NewsFeed31SharingTagURLActivityItemSource_model];
  *v6 = a1;
  v6[8] = 1;
  *&v2[OBJC_IVAR____TtC8NewsFeed31SharingTagURLActivityItemSource_linkPresentationSource] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SharingTagURLActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingTagURLActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_OWORD *SharingTagURLActivityItemSource.activityViewControllerPlaceholderItem(_:)@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D69B8870(v5);
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_1D5E3E404(v5);
    *(a1 + 24) = MEMORY[0x1E69E6158];
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
  }

  else
  {
    v11 = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
    (*(v7 + 32))(boxed_opaque_existential_1, v5, v6);
    return sub_1D5B7C390(v10, a1);
  }

  return result;
}

void SharingTagURLActivityItemSource.activityViewController(_:itemForActivityType:)(void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v43 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v43 - v14;
  if (a1)
  {
    v16 = sub_1D726207C();
    v18 = v17;
    if (v16 == sub_1D726207C() && v18 == v19)
    {
      v28 = a1;
    }

    else
    {
      v21 = sub_1D72646CC();
      v22 = a1;

      if ((v21 & 1) == 0)
      {
        sub_1D69B8870(v11);
        v23 = sub_1D72585BC();
        v24 = *(v23 - 8);
        if ((*(v24 + 48))(v11, 1, v23) != 1)
        {
          *(a2 + 24) = v23;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
          (*(v24 + 32))(boxed_opaque_existential_1, v11, v23);

          return;
        }

        v25 = v11;
        goto LABEL_11;
      }
    }

    type metadata accessor for SharingHTMLBuilder();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = 0xE000000000000000;
    swift_beginAccess();
    *(inited + 16) = 0;
    *(inited + 24) = 0xE000000000000000;
    v30 = sub_1D69B8CFC();
    v32 = v31;
    sub_1D69B8870(v15);
    v33 = sub_1D72585BC();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v15, 1, v33) == 1)
    {
      sub_1D5E3E404(v15);
      v35 = 0;
      v36 = 0;
    }

    else
    {
      v35 = sub_1D72583DC();
      v36 = v37;
      (*(v34 + 8))(v15, v33);
    }

    v38 = sub_1D69B9988(inited, v30, v32, v35, v36);
    v40 = v39;

    swift_setDeallocating();

    if (v40)
    {
      *(a2 + 24) = MEMORY[0x1E69E6158];

      *a2 = v38;
      *(a2 + 8) = v40;
      return;
    }

    goto LABEL_20;
  }

  sub_1D69B8870(v7);
  v26 = sub_1D72585BC();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v7, 1, v26) != 1)
  {
    *(a2 + 24) = v26;
    v41 = __swift_allocate_boxed_opaque_existential_1(a2);
    (*(v27 + 32))(v41, v7, v26);
    return;
  }

  v25 = v7;
LABEL_11:
  sub_1D5E3E404(v25);
LABEL_20:
  *a2 = 0u;
  *(a2 + 16) = 0u;
}

LPLinkMetadata_optional __swiftcall SharingTagURLActivityItemSource.activityViewControllerLinkMetadata(_:)(UIActivityViewController *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed31SharingTagURLActivityItemSource_linkPresentationSource))
  {
    sub_1D725B77C();
    v2 = [v5 linkMetadata];
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

id sub_1D69B989C(uint64_t a1, uint64_t a2, Class a3)
{
  v5 = objc_allocWithZone(a3);
  ObjectType = swift_getObjectType();
  v7 = &v5[OBJC_IVAR____TtC8NewsFeed31SharingTagURLActivityItemSource_model];
  *v7 = a1;
  v7[8] = 0;
  *&v5[OBJC_IVAR____TtC8NewsFeed31SharingTagURLActivityItemSource_linkPresentationSource] = a2;
  v9.receiver = v5;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_1D69B9914(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v7 = &a3[OBJC_IVAR____TtC8NewsFeed31SharingTagURLActivityItemSource_model];
  *v7 = a1;
  v7[8] = 0;
  *&a3[OBJC_IVAR____TtC8NewsFeed31SharingTagURLActivityItemSource_linkPresentationSource] = a2;
  v9.receiver = a3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_1D69B9988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v54 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v55 = &v54 - v14;
  swift_beginAccess();
  MEMORY[0x1DA6F9910](0x3E2F2072623CLL, 0xE600000000000000);
  swift_endAccess();
  v58 = type metadata accessor for SharingHTMLBuilder();
  v59 = &off_1F51B62F0;
  v57[0] = a1;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  v15 = off_1F51B6308[0];

  v15(a2, v56);
  __swift_destroy_boxed_opaque_existential_1(v57);
  sub_1D5B63F14(v56, v57);
  v16 = v58;
  v17 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  (v17[2])(v56, v16, v17);
  __swift_destroy_boxed_opaque_existential_1(v57);
  sub_1D5B63F14(v56, v57);
  if (a5)
  {
    v18 = v58;
    v19 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    (v19[6])(v56, a4, a5, a4, a5, v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v57);
    sub_1D5B63F14(v56, v57);
  }

  v20 = v58;
  v21 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  (v21[2])(v56, v20, v21);
  __swift_destroy_boxed_opaque_existential_1(v57);
  sub_1D5B63F14(v56, v57);
  v22 = v58;
  v23 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  (v23[2])(v56, v22, v23);
  __swift_destroy_boxed_opaque_existential_1(v57);
  sub_1D5B63F14(v56, v57);
  v24 = v58;
  v25 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = objc_opt_self();
  v28 = [v27 bundleForClass_];
  v29 = sub_1D725811C();
  v31 = v30;

  (v25[7])(v56, v29, v31, v24, v25);

  __swift_destroy_boxed_opaque_existential_1(v57);
  sub_1D5B63F14(v56, v57);
  v32 = v58;
  v33 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  (v33[7])(v56, 32, 0xE100000000000000, v32, v33);
  __swift_destroy_boxed_opaque_existential_1(v57);
  sub_1D5B63F14(v56, v57);
  v34 = [objc_opt_self() nss_MarketingPageURL];
  if (v34)
  {
    v35 = v54;
    v36 = v34;
    sub_1D72584EC();

    v37 = 0;
  }

  else
  {
    v37 = 1;
    v35 = v54;
  }

  v38 = v55;
  v39 = sub_1D72585BC();
  v40 = *(v39 - 8);
  (*(v40 + 56))(v35, v37, 1, v39);
  sub_1D5EB8540(v35, v38);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_1D5E3E404(v38);
  }

  else
  {
    v41 = sub_1D72583DC();
    v43 = v42;
    (*(v40 + 8))(v38, v39);
    v44 = v58;
    v45 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    v46 = [v27 bundleForClass_];
    v47 = sub_1D725811C();
    v49 = v48;

    (v45[6])(v56, v47, v49, v41, v43, v44, v45);

    __swift_destroy_boxed_opaque_existential_1(v57);
    sub_1D5B63F14(v56, v57);
  }

  v50 = v58;
  v51 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  v52 = (v51[8])(v50, v51);
  __swift_destroy_boxed_opaque_existential_1(v57);
  return v52;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed28FormatDerivedDataOptionScopeO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1D69BA05C(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1D69BA088()
{
  result = qword_1EC88F7E0;
  if (!qword_1EC88F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F7E0);
  }

  return result;
}

uint64_t sub_1D69BA0DC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1D7264A0C();
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      v4 = 4;
    }

    else
    {
      if (a3 != 4)
      {
        MEMORY[0x1DA6FC0B0](0);
        return sub_1D7264A5C();
      }

      v4 = 5;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x1DA6FC0B0](v4);
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D69BA1C0()
{
  v1 = *(v0 + 16);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v2 = 4;
    }

    else
    {
      if (v1 != 4)
      {
        return MEMORY[0x1DA6FC0B0](0);
      }

      v2 = 5;
    }
  }

  else if (*(v0 + 16))
  {
    if (v1 == 1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1DA6FC0B0](v2);

  return sub_1D72621EC();
}

uint64_t sub_1D69BA278()
{
  v1 = *(v0 + 16);
  sub_1D7264A0C();
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v2 = 4;
    }

    else
    {
      if (v1 != 4)
      {
        MEMORY[0x1DA6FC0B0](0);
        return sub_1D7264A5C();
      }

      v2 = 5;
    }
  }

  else if (v1)
  {
    if (v1 == 1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1DA6FC0B0](v2);
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D69BA33C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      sub_1D7263D4C();

      MEMORY[0x1DA6F9910](a1, a2);
      v6 = 0x80000001D73DDC60;
      v5 = 0xD000000000000010;
    }

    else
    {
      if (a3 != 4)
      {
        return 1953460082;
      }

      sub_1D7263D4C();

      MEMORY[0x1DA6F9910](a1, a2);
      v5 = 0xD000000000000015;
      v6 = 0x80000001D73DDC40;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      sub_1D7263D4C();

      MEMORY[0x1DA6F9910](a1, a2);
      v5 = 0x69426D6574692F29;
      v6 = 0xEE0073676E69646ELL;
    }

    else
    {
      sub_1D7263D4C();

      MEMORY[0x1DA6F9910](a1, a2);
      v5 = 0x6D6574692F29;
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    MEMORY[0x1DA6F9910]();
    v5 = 41;
    v6 = 0xE100000000000000;
  }

  MEMORY[0x1DA6F9910](v5, v6);
  return 0x6F6C732F746F6F72;
}

uint64_t sub_1D69BA5A0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      if (a6 == 3)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1D72646CC();
      }
    }

    else if (a3 == 4)
    {
      if (a6 == 4)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1D72646CC();
      }
    }

    else if (a6 == 5 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1D72646CC();
      }
    }

    else if (a6 == 2)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_1D72646CC();
    }
  }

  else if (!a6)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return sub_1D72646CC();
  }

  return 0;
}

uint64_t sub_1D69BA6AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v2 = 0;
LABEL_38:

    return v2;
  }

  v2 = 0;
  v3 = 0;
  v4 = (a1 + 48);
  v5 = 5;
  while (1)
  {
    v7 = *(v4 - 2);
    v6 = *(v4 - 1);
    v8 = *v4;
    if (!(v8 >> 6))
    {

      if (v5 != 5 || v3 | v2)
      {
        goto LABEL_41;
      }

      v5 = 0;
      v2 = v7;
      v3 = v6;
      goto LABEL_5;
    }

    if (v8 >> 6 == 1)
    {
      if (v5 >= 2u)
      {
        if (v5 != 3)
        {
          sub_1D5CBA110(*(v4 - 2), *(v4 - 1));
          goto LABEL_41;
        }

        v5 = 4;
      }

      else
      {
        v5 = 2;
      }

      goto LABEL_5;
    }

    if (!(v6 | v7) && v8 == 128)
    {
      goto LABEL_5;
    }

    v9 = v7 == 1 && v6 == 0;
    if (v9 && v8 == 128 || v7 == 2 && !v6 && v8 == 128 || v7 == 3 && !v6 && v8 == 128)
    {
      goto LABEL_5;
    }

    if (v7 != 4 || v6 || v8 != 128)
    {
      break;
    }

    if (v5 != 2)
    {
      v6 = 0;
      v7 = 4;
      goto LABEL_41;
    }

    v5 = 3;
LABEL_5:
    v4 += 24;
    if (!--v1)
    {
      goto LABEL_38;
    }
  }

  if (v7 == 5 && !v6 && v8 == 128)
  {
    goto LABEL_5;
  }

  if (v5 < 2u)
  {
    v5 = 1;
    goto LABEL_5;
  }

  v6 = 0;
  v7 = 6;
LABEL_41:

  type metadata accessor for FormatDerivedDataError();
  sub_1D5E40444();
  swift_allocError();
  *v11 = v2;
  *(v11 + 8) = v3;
  *(v11 + 16) = v5;
  *(v11 + 24) = v7;
  *(v11 + 32) = v6;
  *(v11 + 40) = v8;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return v2;
}