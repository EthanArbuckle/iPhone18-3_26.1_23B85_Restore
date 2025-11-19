uint64_t sub_1D24A6D90()
{
  swift_getKeyPath();
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  return sub_1D2870F68();
}

uint64_t sub_1D24A6E34()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  v1 = *(v0 + 32);
  sub_1D2478190(v1, *(v3 + 40));
  return v1;
}

uint64_t sub_1D24A6EFC()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  result = sub_1D2870F68();
  if (v2)
  {
    v4 = 0;
    v5 = (v1 + 56);
    while (1)
    {
      if (v4 >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      v7 = *(v5 - 3);
      v6 = *(v5 - 2);
      v9 = *(v5 - 1);
      v8 = *v5;
      v10 = qword_1ED8A5A28;
      sub_1D2870F68();
      sub_1D2870F68();
      if (v10 != -1)
      {
        swift_once();
      }

      v11 = v7 == qword_1ED8B0260 && v6 == *algn_1ED8B0268;
      if (!v11 && (sub_1D2879618() & 1) == 0)
      {
        break;
      }

      ++v4;

      v5 += 4;
      if (v2 == v4)
      {
        goto LABEL_13;
      }
    }

    return sub_1D24A7798(v7, v6, v9, v8);
  }

  else
  {
LABEL_13:
  }
}

uint64_t sub_1D24A706C()
{
  swift_getKeyPath();
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1D2478190(v1, v2);
  if (qword_1ED8A5A28 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED8B0260;
  v4 = *algn_1ED8B0268;
  v5 = qword_1ED8B0270;
  v6 = unk_1ED8B0278;
  if (!v2)
  {
    sub_1D2870F68();
    sub_1D2870F68();
    sub_1D22D70A8(v1, 0);
    sub_1D22D70A8(v3, v4);
    goto LABEL_11;
  }

  if (v1 == qword_1ED8B0260 && v2 == *algn_1ED8B0268)
  {
    return sub_1D22D70A8(v1, v2);
  }

  v8 = sub_1D2879618();
  result = sub_1D22D70A8(v1, v2);
  if ((v8 & 1) == 0)
  {
LABEL_11:
    sub_1D2870F68();
    sub_1D2870F68();
    return sub_1D24A7798(v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_1D24A723C()
{
  swift_getKeyPath();
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  return *(v0 + 25);
}

BOOL sub_1D24A72DC()
{
  swift_getKeyPath();
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1D2478190(v1, v2);
  if (qword_1ED8A5A28 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED8B0260;
  v4 = *algn_1ED8B0268;
  if (!v2)
  {
    sub_1D2870F68();
    sub_1D2870F68();
    sub_1D22D70A8(v1, 0);
    sub_1D22D70A8(v3, v4);
    goto LABEL_11;
  }

  if (v1 == qword_1ED8B0260 && v2 == *algn_1ED8B0268)
  {
    sub_1D22D70A8(v1, v2);
    return 0;
  }

  v6 = sub_1D2879618();
  sub_1D22D70A8(v1, v2);
  result = 0;
  if ((v6 & 1) == 0)
  {
LABEL_11:
    swift_getKeyPath();
    sub_1D28719E8();

    return *(v0 + 40) != 0;
  }

  return result;
}

uint64_t sub_1D24A74D4()
{
  swift_getKeyPath();
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  return *(v0 + 24);
}

uint64_t sub_1D24A7574(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D24A7684@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[7];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_1D2478190(v4, v5);
}

uint64_t sub_1D24A7738(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  sub_1D2478190(*a1, v2);
  return sub_1D24A7798(v1, v2, v3, v4);
}

uint64_t sub_1D24A7798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  v12 = v4[7];
  sub_1D2478190(v9, v10);
  v13 = sub_1D24AE918(v9, v10, v11, v12, a1, a2);
  sub_1D22D70A8(v9, v10);
  if (v13)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
    sub_1D28719D8();
    sub_1D22D70A8(a1, a2);
  }

  else
  {
    v16 = v4[4];
    v17 = v4[5];
    v4[4] = a1;
    v4[5] = a2;
    v4[6] = a3;
    v4[7] = a4;
    sub_1D22D70A8(v16, v17);
    __swift_project_boxed_opaque_existential_1(v4 + 17, v4[20]);
    return sub_1D22D0838();
  }
}

void *sub_1D24A7950()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC4D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v17 - v3;
  v5 = type metadata accessor for Bubble(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v21[0] = v0;
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  v9 = *(v0 + 16);
  v10 = *(v9 + 16);
  if (!v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = *(v1 + 176);
  v12 = v9 + 32;
  v17[1] = v9;
  sub_1D2870F68();
  v13 = MEMORY[0x1E69E7CC0];
  v18 = v5;
  do
  {
    sub_1D22D7044(v12, v21);
    sub_1D22D7044(v21, v20);
    v19 = v11;
    sub_1D2847FA8(v20, &v19, v4);
    __swift_destroy_boxed_opaque_existential_0(v21);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_1D22BD238(v4, &qword_1EC6DC4D0);
    }

    else
    {
      sub_1D24ADF1C(v4, v8, type metadata accessor for Bubble);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1D27CCBF4(0, v13[2] + 1, 1, v13);
      }

      v15 = v13[2];
      v14 = v13[3];
      if (v15 >= v14 >> 1)
      {
        v13 = sub_1D27CCBF4(v14 > 1, v15 + 1, 1, v13);
      }

      v13[2] = v15 + 1;
      sub_1D24ADF1C(v8, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, type metadata accessor for Bubble);
      v5 = v18;
    }

    v12 += 40;
    --v10;
  }

  while (v10);

  return v13;
}

uint64_t sub_1D24A7C48()
{
  swift_getKeyPath();
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  v2 = v0[5];
  if (v2)
  {
    result = sub_1D2439B10(v0[4], v2, v0[8]);
    if ((v3 & 1) == 0 && result >= 1)
    {
      v4 = v0[8];
      if (result > *(v4 + 16))
      {
        __break(1u);
      }

      else
      {
        v5 = (v4 + 32 * result);
        v6 = *v5;
        v7 = v5[1];
        v8 = v5[2];
        v9 = v5[3];
        sub_1D2870F68();
        sub_1D2870F68();
        return sub_1D24A7798(v6, v7, v8, v9);
      }
    }
  }

  return result;
}

uint64_t sub_1D24A7D54()
{
  swift_getKeyPath();
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  v2 = v0[5];
  if (v2)
  {
    result = sub_1D2439B10(v0[4], v2, v0[8]);
    if ((v3 & 1) == 0)
    {
      v4 = result + 1;
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v5 = v0[8];
        if (v4 >= *(v5 + 16))
        {
          return result;
        }

        if ((v4 & 0x8000000000000000) == 0)
        {
          v6 = (v5 + 32 * v4);
          v7 = v6[4];
          v8 = v6[5];
          v9 = v6[6];
          v10 = v6[7];
          sub_1D2870F68();
          sub_1D2870F68();
          return sub_1D24A7798(v7, v8, v9, v10);
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D24A7E68()
{
  sub_1D284786C(&v11);
  if (v12)
  {
    sub_1D227268C(&v11, v14);
    swift_getKeyPath();
    *&v11 = v0;
    sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
    sub_1D28719E8();

    v1 = *(v0 + 16);
    v2 = *(v1 + 16);
    sub_1D2870F68();
    result = v1 + 32;
    v4 = -v2;
    v5 = -1;
    while (1)
    {
      v6 = v4 + v5 != -1;
      if (v4 + v5 == -1)
      {
LABEL_6:

        __swift_destroy_boxed_opaque_existential_0(v14);
        return v6;
      }

      if (++v5 >= *(v1 + 16))
      {
        break;
      }

      v7 = result + 40;
      sub_1D22D7044(result, &v11);
      v8 = v12;
      v9 = v13;
      __swift_project_boxed_opaque_existential_1(&v11, v12);
      v10 = (*(v9 + 56))(v14, v8, v9);
      __swift_destroy_boxed_opaque_existential_0(&v11);
      result = v7;
      if (v10)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1D22BD238(&v11, &unk_1EC6E1D30);
    return 0;
  }

  return result;
}

uint64_t sub_1D24A8000()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  sub_1D284786C(&v14);
  if (!v15)
  {
    return sub_1D22BD238(&v14, &unk_1EC6E1D30);
  }

  sub_1D227268C(&v14, v18);
  sub_1D22D7044(v18, v17);
  v5 = *(v0 + 104);
  type metadata accessor for RemoveImageConditioningRepresentationOperation();
  v6 = swift_allocObject();
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 112) = 1;
  sub_1D227268C(v17, &v14);
  v16 = v5;
  swift_beginAccess();
  sub_1D2870F78();
  sub_1D22D3E98(&v14, v6 + 16);
  swift_endAccess();
  v7 = *(v1 + 112);
  v8 = sub_1D28785F8();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_1D2878568();
  swift_retain_n();
  sub_1D2870F78();
  v9 = sub_1D2878558();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = v6;
  *(v10 + 40) = &off_1EEC2DA38;
  *(v10 + 48) = 1;
  *(v10 + 56) = v7;
  *(v10 + 64) = sub_1D24A9520;
  *(v10 + 72) = 0;
  sub_1D22AE01C(0, 0, v4, &unk_1D288CB00, v10);

  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t sub_1D24A8244@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal32ImageConditioningPickerViewModel__currentStyle;
  swift_beginAccess();
  v4 = sub_1D2872008();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1D24A833C(uint64_t result)
{
  if (*(v1 + 25) == (result & 1))
  {
    *(v1 + 25) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D24A844C(uint64_t a1)
{
  v3 = sub_1D2870F68();
  v4 = sub_1D2337F24(v3, a1);

  if (v4)
  {
    *(v1 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D24A85A0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal32ImageConditioningPickerViewModel__requestedReloadBeforePromptManagerReady) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal32ImageConditioningPickerViewModel__requestedReloadBeforePromptManagerReady) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D24A86B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2872008();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal32ImageConditioningPickerViewModel__currentStyle;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1D24AF050(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
  v9 = sub_1D2877F98();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
    sub_1D28719D8();
  }

  return (v10)(a1, v4);
}

uint64_t sub_1D24A8938(uint64_t a1)
{
  if (*(v1 + 120) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D24A8A6C(uint64_t a1)
{
  if (*(v1 + 128) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D24A8BA0()
{
  swift_getKeyPath();
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  return sub_1D2870F78();
}

uint64_t sub_1D24A8C44(int a1)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26[-v8];
  sub_1D2872658();
  sub_1D2870F78();
  v10 = sub_1D2873CA8();
  v11 = sub_1D2878A08();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_1D23D7C84(v2[10], v2[11], &v28);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1D23D7C84(0xD00000000000001ELL, 0x80000001D28B8A00, &v28);
    _os_log_impl(&dword_1D226E000, v10, v11, "%s - %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v13, -1, -1);
    MEMORY[0x1D38A3520](v12, -1, -1);
  }

  v14 = *(v4 + 8);
  v14(v9, v3);
  swift_getKeyPath();
  v28 = v2;
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  v15 = v2[15];
  swift_getKeyPath();
  v28 = v2;
  sub_1D2870F78();
  sub_1D28719E8();

  v16 = v2[16];
  sub_1D2870F78();
  v17 = sub_1D24AE004(v15, v16);

  if (!*(v2[8] + 16) || (sub_1D2337F78(v17, v2[8]) & 1) == 0)
  {
    v2[8] = v17;
  }

  v18 = sub_1D23C7E2C();
  swift_getKeyPath();
  v28 = v18;
  sub_1D24AF050(&qword_1ED8A54D8, type metadata accessor for ImageConditioningRepresentationsSource);
  sub_1D28719E8();

  v19 = *(v18 + 16);
  sub_1D2870F68();

  v20 = *(v19 + 16);

  if (!v20 || (v27 & 1) != 0)
  {
    sub_1D23C7E2C();
    sub_1D2530974();

    sub_1D24AC700();
    sub_1D2872658();
    sub_1D2870F78();
    v22 = sub_1D2873CA8();
    v23 = sub_1D2878A08();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_1D23D7C84(v2[10], v2[11], &v28);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_1D23D7C84(0xD00000000000001ELL, 0x80000001D28B8A00, &v28);
      _os_log_impl(&dword_1D226E000, v22, v23, "%s - %s - did refresh store", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v25, -1, -1);
      MEMORY[0x1D38A3520](v24, -1, -1);
    }

    return (v14)(v7, v3);
  }

  return result;
}

uint64_t sub_1D24A9138()
{
  v1 = v0;
  sub_1D284786C(&v15);
  if (!v16)
  {
    return sub_1D22BD238(&v15, &unk_1EC6E1D30);
  }

  sub_1D227268C(&v15, v18);
  v2 = type metadata accessor for AddImageConditioningRepresentationOperation();
  sub_1D22D7044(v18, &v15);
  v3 = *(v1 + 104);
  v4 = v16;
  v5 = v17;
  v6 = __swift_mutable_project_boxed_opaque_existential_1(&v15, v16);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  sub_1D2870F78();
  v11 = sub_1D27FDCE0(v9, v3, 0, v2, v4, v5);
  __swift_destroy_boxed_opaque_existential_0(&v15);
  v12 = *(v1 + 112);
  sub_1D2870F78();
  sub_1D27FDB14();
  sub_1D27DF058(v11, v12);

  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t sub_1D24A9304()
{
  swift_getKeyPath();
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  return sub_1D2870F68();
}

uint64_t sub_1D24A93A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 16);
  return sub_1D2870F68();
}

uint64_t sub_1D24A9454()
{
  swift_getKeyPath();
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719D8();
}

void sub_1D24A952C(void *a1, const char *a2)
{
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    sub_1D28725B8();
    v9 = a1;
    v10 = sub_1D2873CA8();
    v11 = sub_1D2878A18();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1D226E000, v10, v11, a2, v12, 0xCu);
      sub_1D22BD238(v13, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v13, -1, -1);
      MEMORY[0x1D38A3520](v12, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    if (qword_1EC6D8968 != -1)
    {
      swift_once();
    }

    sub_1D25428EC(a1);
  }
}

uint64_t sub_1D24A9730(uint64_t a1, uint64_t a2, int a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA210);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v37 - v8;
  v10 = type metadata accessor for CuratedPrompt();
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal32ImageConditioningPickerViewModel___observationRegistrar;
  v50[0] = a2;
  v43 = sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  v44 = v12;
  sub_1D28719E8();

  v46 = a2;
  v13 = *(a2 + 16);
  v14 = *(v13 + 16);
  if (!v14)
  {
    v20 = 0;
    v21 = v46;
LABEL_12:
    v22 = sub_1D24A9D2C();
    sub_1D284786C(v50);
    v23 = (v41 + 56);
    if (v51)
    {
      v24 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
      v25 = v42;
      v26 = swift_dynamicCast();
      (*(v24 + 56))(v9, v26 ^ 1u, 1, v25);
      if ((*(v24 + 48))(v9, 1, v25) != 1)
      {
        v27 = v40;
        sub_1D24ADF1C(v9, v40, type metadata accessor for CuratedPrompt);
        v28 = *(v27 + 48);
        sub_1D2870F78();
        sub_1D24ADF84(v27, type metadata accessor for CuratedPrompt);
        v29 = *(v28 + 64);

LABEL_17:
        sub_1D284786C(v50);
        if (v51)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
          v30 = type metadata accessor for PhotosPersonAsset();
          v31 = v45;
          v32 = swift_dynamicCast();
          (*(*(v30 - 8) + 56))(v31, v32 ^ 1u, 1, v30);
        }

        else
        {
          sub_1D22BD238(v50, &unk_1EC6E1D30);
          v30 = type metadata accessor for PhotosPersonAsset();
          v31 = v45;
          (*(*(v30 - 8) + 56))(v45, 1, 1, v30);
        }

        type metadata accessor for PhotosPersonAsset();
        v33 = (*(*(v30 - 8) + 48))(v31, 1, v30);
        sub_1D22BD238(v31, &unk_1EC6DDDC0);
        v34 = a3 & (v29 | (v33 == 0));
        swift_getKeyPath();
        v50[0] = v21;
        sub_1D28719E8();

        sub_1D2870F78();
        v35 = sub_1D27ED8C8();

        if (v35)
        {
          v36 = v20 | v22 | v34;
        }

        else if ((v20 | v29))
        {
          v36 = 1;
        }

        else
        {
          v36 = v22 | v34 | (v33 == 0);
        }

        return v36 & 1;
      }
    }

    else
    {
      sub_1D22BD238(v50, &unk_1EC6E1D30);
      (*v23)(v9, 1, 1, v42);
    }

    sub_1D22BD238(v9, &qword_1EC6DA210);
    v29 = 0;
    goto LABEL_17;
  }

  v38 = v9;
  v39 = a3;
  v15 = v13 + 32;
  result = sub_1D2870F68();
  v17 = 0;
  while (v17 < *(v13 + 16))
  {
    sub_1D22D7044(v15, v50);
    sub_1D284786C(v47);
    v18 = v48;
    if (v48)
    {
      v19 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      LOBYTE(v19) = (*(v19 + 56))(v50, v18, v19);
      __swift_destroy_boxed_opaque_existential_0(v50);
      result = __swift_destroy_boxed_opaque_existential_0(v47);
      if (v19)
      {
        v20 = 1;
LABEL_10:

        v21 = v46;
        LOBYTE(a3) = v39;
        v9 = v38;
        goto LABEL_12;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v50);
      result = sub_1D22BD238(v47, &unk_1EC6E1D30);
    }

    ++v17;
    v15 += 40;
    if (v14 == v17)
    {
      v20 = 0;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D24A9D2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v49 = &v43 - v4;
  v5 = type metadata accessor for CharacterAsset();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - v14;
  v16 = type metadata accessor for PhotosPersonAsset();
  v51 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (&v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v43 - v20);
  sub_1D284786C(v58);
  if (!v58[3])
  {
    sub_1D22BD238(v58, &unk_1EC6E1D30);
    v55 = 0u;
    v56 = 0u;
    v57 = 0;
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    goto LABEL_10;
  }

  if (!*(&v56 + 1))
  {
LABEL_10:
    sub_1D22BD238(&v55, &qword_1EC6D9A58);
    goto LABEL_11;
  }

  v44 = v6;
  v45 = v5;
  v46 = v3;
  sub_1D227268C(&v55, v58);
  v22 = sub_1D23C6DDC();
  v52 = v22;
  v23 = off_1F4DCA938[0];
  type metadata accessor for _PeopleRetrieval();
  v24 = v23();
  MEMORY[0x1EEE9AC00](v24);
  *(&v43 - 2) = v58;
  sub_1D274BE58(sub_1D24ADFE4, v24, &v53);

  if (v54)
  {
    sub_1D227268C(&v53, &v55);
    sub_1D22D7044(v58, &v53);
    v25 = swift_dynamicCast();
    v26 = *(v51 + 56);
    v27 = v46;
    v28 = v44;
    if (v25)
    {
      v26(v15, 0, 1, v16);
      sub_1D24ADF1C(v15, v21, type metadata accessor for PhotosPersonAsset);
      sub_1D22D7044(&v55, &v53);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08);
      v29 = swift_dynamicCast();
      v30 = v45;
      if (v29)
      {
        v26(v13, 0, 1, v16);
        sub_1D24ADF1C(v13, v19, type metadata accessor for PhotosPersonAsset);
        v31 = _s23ImagePlaygroundInternal17PhotosPersonAssetV2eeoiySbAC_ACtFZ_0(v21, v19);
        sub_1D24ADF84(v19, type metadata accessor for PhotosPersonAsset);
        sub_1D24ADF84(v21, type metadata accessor for PhotosPersonAsset);
        __swift_destroy_boxed_opaque_existential_0(&v55);
        v32 = v31 ^ 1;
LABEL_19:
        __swift_destroy_boxed_opaque_existential_0(v58);
        return v32 & 1;
      }

      sub_1D24ADF84(v21, type metadata accessor for PhotosPersonAsset);
      v26(v13, 1, 1, v16);
      sub_1D22BD238(v13, &unk_1EC6DDDC0);
    }

    else
    {
      v26(v15, 1, 1, v16);
      sub_1D22BD238(v15, &unk_1EC6DDDC0);
      v30 = v45;
    }

    sub_1D22D7044(v58, &v53);
    v36 = v49;
    v37 = swift_dynamicCast();
    v38 = v50;
    if (v37)
    {
      v39 = *(v28 + 56);
      v39(v36, 0, 1, v30);
      sub_1D24ADF1C(v36, v38, type metadata accessor for CharacterAsset);
      sub_1D22D7044(&v55, &v53);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08);
      if (swift_dynamicCast())
      {
        v39(v27, 0, 1, v30);
        v40 = v27;
        v41 = v48;
        sub_1D24ADF1C(v40, v48, type metadata accessor for CharacterAsset);
        v42 = _s23ImagePlaygroundInternal14CharacterAssetV2eeoiySbAC_ACtFZ_0(v38, v41);
        sub_1D24ADF84(v41, type metadata accessor for CharacterAsset);
        sub_1D24ADF84(v38, type metadata accessor for CharacterAsset);
        __swift_destroy_boxed_opaque_existential_0(&v55);
        v32 = v42 ^ 1;
        goto LABEL_19;
      }

      sub_1D24ADF84(v38, type metadata accessor for CharacterAsset);
      __swift_destroy_boxed_opaque_existential_0(&v55);
      v39(v27, 1, 1, v30);
      v34 = &unk_1EC6DDDA0;
      v35 = v27;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(&v55);
      (*(v28 + 56))(v36, 1, 1, v30);
      v34 = &unk_1EC6DDDA0;
      v35 = v36;
    }
  }

  else
  {
    v34 = &unk_1EC6DAD30;
    v35 = &v53;
  }

  sub_1D22BD238(v35, v34);
  __swift_destroy_boxed_opaque_existential_0(v58);
LABEL_11:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_1D24AA50C(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  sub_1D22D7044(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  if (swift_dynamicCast())
  {
    v8 = *(&v18 + 1);
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
    v10 = (*(v9 + 16))(v8, v9);
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_0(&v17);
    if (v7)
    {
      if (v12)
      {
        if (v5 == v10 && v7 == v12)
        {

          v14 = 1;
        }

        else
        {
          v14 = sub_1D2879618();
        }

        goto LABEL_15;
      }

      goto LABEL_10;
    }

    if (v12)
    {
      v14 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_1D22BD238(&v17, &qword_1EC6D9A58);
    if (v7)
    {
LABEL_10:
      v14 = 0;
LABEL_15:

      return v14 & 1;
    }
  }

  v14 = 1;
  return v14 & 1;
}

uint64_t sub_1D24AA6B4()
{
  swift_getKeyPath();
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  return sub_1D2870F78();
}

uint64_t sub_1D24AA758(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v95 = a7;
  v96 = a5;
  v92 = a4;
  v98 = a1;
  v9 = type metadata accessor for Bubble(0);
  v94 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v100 = v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v91 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA210);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v91 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v91 - v21;
  v23 = type metadata accessor for CuratedPrompt();
  v97 = *(v23 - 1);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v93 = v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = v91 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = v91 - v29;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  if (a3)
  {
    sub_1D22D7044(v98, v105);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
    v31 = swift_dynamicCast();
    v32 = *(v97 + 56);
    if (v31)
    {
      v32(v22, 0, 1, v23);
      sub_1D24ADF1C(v22, v30, type metadata accessor for CuratedPrompt);
      if (*(*(v30 + 6) + 64) == 1)
      {

        v33 = v30;
LABEL_19:
        sub_1D24ADF84(v33, type metadata accessor for CuratedPrompt);
        return 0;
      }

      sub_1D24ADF84(v30, type metadata accessor for CuratedPrompt);
    }

    else
    {
      v32(v22, 1, 1, v23);
      sub_1D22BD238(v22, &qword_1EC6DA210);
    }
  }

  swift_getKeyPath();
  v105[0] = Strong;
  v91[1] = sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  sub_1D2870F78();
  v35 = sub_1D27ED8C8();

  v36 = v97;
  if ((v35 & 1) == 0)
  {
    sub_1D22D7044(v98, v105);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
    v37 = swift_dynamicCast();
    v38 = *(v36 + 56);
    if (v37)
    {
      v38(v20, 0, 1, v23);
      sub_1D24ADF1C(v20, v28, type metadata accessor for CuratedPrompt);
      if (*(*(v28 + 6) + 64) == 1)
      {

        v33 = v28;
        goto LABEL_19;
      }

      sub_1D24ADF84(v28, type metadata accessor for CuratedPrompt);
    }

    else
    {
      v38(v20, 1, 1, v23);
      sub_1D22BD238(v20, &qword_1EC6DA210);
    }
  }

  sub_1D22D7044(v98, v105);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
  v39 = swift_dynamicCast();
  v40 = *(v36 + 56);
  if (v39)
  {
    v40(v17, 0, 1, v23);
    v41 = v93;
    sub_1D24ADF1C(v17, v93, type metadata accessor for CuratedPrompt);
    if ((*(v41 + v23[25]) & 1) != 0 || *(v41 + v23[26]) == 1)
    {

      v33 = v41;
      goto LABEL_19;
    }

    if (v92)
    {
      sub_1D24ADF84(v41, type metadata accessor for CuratedPrompt);
    }

    else
    {
      v84 = v41 + v23[23];
      v85 = *(v84 + 8);
      v86 = *(v84 + 16);
      v87 = *(v84 + 24);
      v88 = *(v84 + 32);
      v89 = *(v84 + 40);
      v90 = *(v84 + 48);
      v97 = *v84;
      sub_1D23B7D24(v97, v85, v86, v87, v88, v89, v90);
      sub_1D24ADF84(v41, type metadata accessor for CuratedPrompt);
      if (v90 != 255)
      {
        sub_1D23B7D88(v97, v85, v86, v87, v88, v89, v90);

        return 0;
      }
    }
  }

  else
  {
    v40(v17, 1, 1, v23);
    sub_1D22BD238(v17, &qword_1EC6DA210);
  }

  swift_getKeyPath();
  v42 = Strong;
  v105[0] = Strong;
  sub_1D28719E8();

  v43 = *(v42 + 16);
  sub_1D2870F68();
  v44 = v96;
  v45 = sub_1D2870F68();
  v46 = sub_1D24ADB48(v45, (a6 + 16));

  v47 = *(v46 + 16);
  if (v47)
  {
    v97 = v43;
    v48 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v93 = v46;
    v49 = v46 + v48;
    v50 = *(v94 + 72);
    v51 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D24AE5B4(v49, v13, type metadata accessor for Bubble);
      sub_1D284786C(&v102);
      sub_1D24ADF84(v13, type metadata accessor for Bubble);
      if (v103)
      {
        sub_1D227268C(&v102, v105);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v104 = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v51 = sub_1D27CCA74(0, v51[2] + 1, 1, v51);
          v104 = v51;
        }

        v54 = v51[2];
        v53 = v51[3];
        if (v54 >= v53 >> 1)
        {
          v51 = sub_1D27CCA74((v53 > 1), v54 + 1, 1, v51);
          v104 = v51;
        }

        v55 = v106;
        v56 = v107;
        v57 = __swift_mutable_project_boxed_opaque_existential_1(v105, v106);
        MEMORY[0x1EEE9AC00](v57);
        v59 = v91 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v60 + 16))(v59);
        sub_1D254D5D8(v54, v59, &v104, v55, v56);
        __swift_destroy_boxed_opaque_existential_0(v105);
      }

      else
      {
        sub_1D22BD238(&v102, &unk_1EC6E1D30);
      }

      v49 += v50;
      --v47;
    }

    while (v47);

    v44 = v96;
    v43 = v97;
  }

  else
  {

    v51 = MEMORY[0x1E69E7CC0];
  }

  v105[0] = v43;
  sub_1D274DE40(v51);
  v61 = v105[0];
  v104 = v105[0];
  if (v95)
  {
    v62 = *(v44 + 16);
    if (v62)
    {
      v63 = v44 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
      v64 = *(v94 + 72);
      v65 = MEMORY[0x1E69E7CC0];
      do
      {
        v66 = v100;
        sub_1D24AE5B4(v63, v100, type metadata accessor for Bubble);
        sub_1D284786C(&v102);
        sub_1D24ADF84(v66, type metadata accessor for Bubble);
        if (v103)
        {
          sub_1D227268C(&v102, v105);
          v67 = swift_isUniquelyReferenced_nonNull_native();
          v101 = v65;
          if ((v67 & 1) == 0)
          {
            v65 = sub_1D27CCA74(0, v65[2] + 1, 1, v65);
            v101 = v65;
          }

          v69 = v65[2];
          v68 = v65[3];
          if (v69 >= v68 >> 1)
          {
            v65 = sub_1D27CCA74((v68 > 1), v69 + 1, 1, v65);
            v101 = v65;
          }

          v70 = v106;
          v71 = v107;
          v72 = __swift_mutable_project_boxed_opaque_existential_1(v105, v106);
          MEMORY[0x1EEE9AC00](v72);
          v74 = v91 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v75 + 16))(v74);
          sub_1D254D5D8(v69, v74, &v101, v70, v71);
          __swift_destroy_boxed_opaque_existential_0(v105);
        }

        else
        {
          sub_1D22BD238(&v102, &unk_1EC6E1D30);
        }

        v63 += v64;
        --v62;
      }

      while (v62);
    }

    else
    {
      v65 = MEMORY[0x1E69E7CC0];
    }

    sub_1D274DE40(v65);
    v61 = v104;
  }

  result = v61 + 32;
  v77 = -*(v61 + 16);
  v78 = -1;
  v79 = v98;
  while (1)
  {
    v34 = v77 + v78 == -1;
    if (v77 + v78 == -1)
    {
LABEL_52:

      return v34;
    }

    if (++v78 >= *(v61 + 16))
    {
      break;
    }

    v80 = result + 40;
    sub_1D22D7044(result, v105);
    v81 = v106;
    v82 = v107;
    __swift_project_boxed_opaque_existential_1(v105, v106);
    v83 = (*(v82 + 56))(v79, v81, v82);
    __swift_destroy_boxed_opaque_existential_0(v105);
    result = v80;
    if (v83)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D24AB36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Bubble(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v31[0] = a1;
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  v9 = *(a1 + 16);
  sub_1D2870F68();
  v10 = sub_1D2870F68();
  v11 = sub_1D24ADB48(v10, (a3 + 16));

  v12 = v11;
  v13 = *(v11 + 16);
  if (v13)
  {
    v27 = v12;
    v28 = v9;
    v14 = v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v15 = *(v6 + 72);
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D24AE5B4(v14, v8, type metadata accessor for Bubble);
      sub_1D284786C(&v29);
      sub_1D24ADF84(v8, type metadata accessor for Bubble);
      if (v30)
      {
        sub_1D227268C(&v29, v31);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = sub_1D27CCA74(0, v16[2] + 1, 1, v16);
          v34 = v16;
        }

        v19 = v16[2];
        v18 = v16[3];
        if (v19 >= v18 >> 1)
        {
          v16 = sub_1D27CCA74((v18 > 1), v19 + 1, 1, v16);
          v34 = v16;
        }

        v20 = v32;
        v21 = v33;
        v22 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
        MEMORY[0x1EEE9AC00](v22);
        v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v25 + 16))(v24);
        sub_1D254D5D8(v19, v24, &v34, v20, v21);
        __swift_destroy_boxed_opaque_existential_0(v31);
      }

      else
      {
        sub_1D22BD238(&v29, &unk_1EC6E1D30);
      }

      v14 += v15;
      --v13;
    }

    while (v13);

    v9 = v28;
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v31[0] = v9;
  sub_1D274DE40(v16);
  return v31[0];
}

id sub_1D24AB6CC()
{
  sub_1D23C7B7C();
  v0 = sub_1D22BF738();

  if (v0)
  {
    return 0;
  }

  v4 = sub_1D23C6DDC();
  v2 = off_1F4DCA900;
  type metadata accessor for _PeopleRetrieval();
  v3 = v2();

  if (v3)
  {
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    return sub_1D23CD888();
  }

  else
  {
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    return sub_1D23CD9F8();
  }
}

uint64_t sub_1D24AB7D0(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v3 = type metadata accessor for PhotosPersonAsset();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v52 = (&v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC478);
  MEMORY[0x1EEE9AC00](v58);
  v62 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = (&v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v7);
  v63 = &v50 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v50 - v11;
  v12 = type metadata accessor for CharacterAsset();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC4D8);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v50 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v50 - v26;
  v57 = a1;
  sub_1D22D7044(a1, v65);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  v28 = swift_dynamicCast();
  v29 = *(v13 + 56);
  v29(v27, v28 ^ 1u, 1, v12);
  sub_1D22D7044(v66, v64);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08);
  v30 = swift_dynamicCast();
  v29(v25, v30 ^ 1u, 1, v12);
  v31 = *(v16 + 56);
  sub_1D22BD1D0(v27, v18, &unk_1EC6DDDA0);
  sub_1D22BD1D0(v25, &v18[v31], &unk_1EC6DDDA0);
  v32 = *(v13 + 48);
  if (v32(v18, 1, v12) == 1)
  {
    v33 = v32(&v18[v31], 1, v12);
    v34 = v62;
    v35 = v63;
    v36 = v61;
    if (v33 == 1)
    {
      sub_1D22BD238(v18, &unk_1EC6DDDA0);
      v56 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1D22BD1D0(v18, v22, &unk_1EC6DDDA0);
  if (v32(&v18[v31], 1, v12) == 1)
  {
    sub_1D24ADF84(v22, type metadata accessor for CharacterAsset);
    v34 = v62;
    v35 = v63;
    v36 = v61;
LABEL_6:
    sub_1D22BD238(v18, &qword_1EC6DC4D8);
    v56 = 0;
    goto LABEL_8;
  }

  v37 = v51;
  sub_1D24ADF1C(&v18[v31], v51, type metadata accessor for CharacterAsset);
  v56 = _s23ImagePlaygroundInternal14CharacterAssetV2eeoiySbAC_ACtFZ_0(v22, v37);
  sub_1D24ADF84(v37, type metadata accessor for CharacterAsset);
  sub_1D24ADF84(v22, type metadata accessor for CharacterAsset);
  sub_1D22BD238(v18, &unk_1EC6DDDA0);
  v34 = v62;
  v35 = v63;
  v36 = v61;
LABEL_8:
  sub_1D22BD238(v25, &unk_1EC6DDDA0);
  sub_1D22BD238(v27, &unk_1EC6DDDA0);
  sub_1D22D7044(v57, v65);
  v38 = v60;
  v39 = swift_dynamicCast();
  v40 = v59;
  v41 = *(v59 + 56);
  v41(v36, v39 ^ 1u, 1, v38);
  sub_1D22D7044(v66, v64);
  v42 = swift_dynamicCast();
  v41(v35, v42 ^ 1u, 1, v38);
  v43 = *(v58 + 48);
  sub_1D22BD1D0(v36, v34, &unk_1EC6DDDC0);
  sub_1D22BD1D0(v35, v34 + v43, &unk_1EC6DDDC0);
  v44 = *(v40 + 48);
  if (v44(v34, 1, v38) != 1)
  {
    v46 = v53;
    sub_1D22BD1D0(v34, v53, &unk_1EC6DDDC0);
    if (v44(v34 + v43, 1, v38) != 1)
    {
      v47 = v34 + v43;
      v48 = v52;
      sub_1D24ADF1C(v47, v52, type metadata accessor for PhotosPersonAsset);
      v45 = _s23ImagePlaygroundInternal17PhotosPersonAssetV2eeoiySbAC_ACtFZ_0(v46, v48);
      sub_1D24ADF84(v48, type metadata accessor for PhotosPersonAsset);
      sub_1D24ADF84(v46, type metadata accessor for PhotosPersonAsset);
      sub_1D22BD238(v34, &unk_1EC6DDDC0);
      goto LABEL_15;
    }

    sub_1D24ADF84(v46, type metadata accessor for PhotosPersonAsset);
    goto LABEL_13;
  }

  if (v44(v34 + v43, 1, v38) != 1)
  {
LABEL_13:
    sub_1D22BD238(v34, &qword_1EC6DC478);
    v45 = 0;
    goto LABEL_15;
  }

  sub_1D22BD238(v34, &unk_1EC6DDDC0);
  v45 = 1;
LABEL_15:
  sub_1D22BD238(v35, &unk_1EC6DDDC0);
  sub_1D22BD238(v36, &unk_1EC6DDDC0);
  return (v56 | v45) & 1;
}

uint64_t sub_1D24AC000()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1((result + 136), *(result + 160));
    swift_getKeyPath();
    sub_1D24AF050(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719E8();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D22F8384();

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D24AC110@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 25);
  return result;
}

uint64_t sub_1D24AC1E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[4];
  v7 = a1[5];
  a1[4] = a2;
  a1[5] = a3;
  a1[6] = a4;
  a1[7] = a5;
  sub_1D2478190(a2, a3);
  sub_1D22D70A8(v6, v7);
  __swift_project_boxed_opaque_existential_1(a1 + 17, a1[20]);
  return sub_1D22D0838();
}

uint64_t sub_1D24AC264@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 72);
  return sub_1D2870F68();
}

uint64_t sub_1D24AC33C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 128);
  return sub_1D2870F78();
}

uint64_t sub_1D24AC3E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal32ImageConditioningPickerViewModel__currentStyle;
  swift_beginAccess();
  v5 = sub_1D2872008();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1D24AC4E0(uint64_t a1)
{
  v2 = sub_1D2872008();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1D24A86B8(v5);
}

uint64_t sub_1D24AC5AC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal32ImageConditioningPickerViewModel__currentStyle;
  swift_beginAccess();
  v5 = sub_1D2872008();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1D24AC648()
{
  swift_getKeyPath();
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal32ImageConditioningPickerViewModel__requestedReloadBeforePromptManagerReady);
}

uint64_t sub_1D24AC700()
{
  v1 = type metadata accessor for CuratedPrompt();
  v24 = *(v1 - 8);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v23 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  swift_getKeyPath();
  v26 = v0;
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  sub_1D2870F78();
  v6 = sub_1D26D12B8();

  swift_getKeyPath();
  v26 = v0;
  sub_1D28719E8();

  v25 = v0;
  v7 = *(v6 + 16);
  v21 = *(*(v0 + 120) + 96);
  result = sub_1D2870F68();
  v22 = v7;
  if (v7)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    while (v9 < *(v6 + 16))
    {
      v11 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v12 = *(v24 + 72);
      v13 = sub_1D24AE5B4(v6 + v11 + v12 * v9, v5, type metadata accessor for CuratedPrompt);
      v14 = *(v25 + 64);
      MEMORY[0x1EEE9AC00](v13);
      *(&v20 - 2) = v5;
      sub_1D2870F68();
      v15 = sub_1D28643B8(sub_1D24AE61C, (&v20 - 4), v14);

      if (v15)
      {
        sub_1D24ADF1C(v5, v23, type metadata accessor for CuratedPrompt);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D23D838C(0, *(v10 + 16) + 1, 1);
          v10 = v26;
        }

        v18 = *(v10 + 16);
        v17 = *(v10 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1D23D838C(v17 > 1, v18 + 1, 1);
          v10 = v26;
        }

        *(v10 + 16) = v18 + 1;
        result = sub_1D24ADF1C(v23, v10 + v11 + v18 * v12, type metadata accessor for CuratedPrompt);
      }

      else
      {
        result = sub_1D24ADF84(v5, type metadata accessor for CuratedPrompt);
      }

      if (v22 == ++v9)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_13:

    sub_1D23C7E2C();
    v26 = v10;
    sub_1D274E418(v21);
    v19 = sub_1D2679220(v26);

    sub_1D2530A5C(v19);
  }

  return result;
}

uint64_t sub_1D24ACAB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (*(a1 + 16) == *(v2 + 24) && *(a1 + 24) == *(v2 + 32))
  {
    return 1;
  }

  else
  {
    return sub_1D2879618() & 1;
  }
}

uint64_t sub_1D24ACB14()
{
  v2 = sub_1D23C6DDC();
  v0 = off_1F4DCA918[0];
  type metadata accessor for _PeopleRetrieval();
  v0();
}

uint64_t (*sub_1D24ACB94())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1D24AE7D4;
}

uint64_t sub_1D24ACBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1D2878568();
  *(v4 + 48) = sub_1D2878558();
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D24ACC88, v6, v5);
}

uint64_t sub_1D24ACC88()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1D24A3810(0, *(Strong + 176) - 5 < 2);
    sub_1D28719C8();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D24ACD6C()
{
  swift_getKeyPath();
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  sub_1D2870F78();
  sub_1D27ED8C8();
}

uint64_t (*sub_1D24ACE20())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1D24AE690;
}

uint64_t sub_1D24ACE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_1D28785F8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1D2878568();
  sub_1D2870F78();
  v9 = sub_1D2878558();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a1;
  sub_1D22AE01C(0, 0, v7, a3, v10);
}

uint64_t sub_1D24ACF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1D2878568();
  *(v4 + 48) = sub_1D2878558();
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D24AD034, v6, v5);
}

uint64_t sub_1D24AD034()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D24A3688(1);
    sub_1D28719C8();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D24AD108()
{

  sub_1D22D70A8(*(v0 + 32), *(v0 + 40));

  __swift_destroy_boxed_opaque_existential_0(v0 + 136);
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal32ImageConditioningPickerViewModel__currentStyle;
  v2 = sub_1D2872008();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal32ImageConditioningPickerViewModel___observationRegistrar;
  v4 = sub_1D2871A28();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1D24AD204()
{
  sub_1D24AD108();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ImageConditioningPickerViewModel()
{
  result = qword_1ED8A5850;
  if (!qword_1ED8A5850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D24AD2B0()
{
  result = sub_1D2872008();
  if (v1 <= 0x3F)
  {
    result = sub_1D2871A28();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D24AD3E4()
{
  v1 = *(*v0 + 80);
  sub_1D2870F68();
  return v1;
}

uint64_t sub_1D24AD418()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v57 = &v51 - v3;
  v61 = sub_1D2872008();
  v56 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v53 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v51 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v51 - v8;
  swift_getKeyPath();
  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal32ImageConditioningPickerViewModel___observationRegistrar;
  v64[0] = v1;
  v58 = sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  v59 = v9;
  sub_1D28719E8();

  v10 = *(v1 + 16);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    *&v63[0] = MEMORY[0x1E69E7CC0];
    sub_1D2870F68();
    sub_1D23D81B8(0, v11, 0);
    v12 = *&v63[0];
    v13 = v10 + 32;
    do
    {
      sub_1D22D7044(v13, v64);
      v14 = v65;
      v15 = v66;
      __swift_project_boxed_opaque_existential_1(v64, v65);
      v16 = (*(*(v15 + 8) + 16))(v14);
      v18 = v17;
      __swift_destroy_boxed_opaque_existential_0(v64);
      *&v63[0] = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D23D81B8((v19 > 1), v20 + 1, 1);
        v12 = *&v63[0];
      }

      *(v12 + 16) = v20 + 1;
      v21 = v12 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      v13 += 40;
      --v11;
    }

    while (v11);
  }

  v22 = *(v1 + 104);
  v23 = *(v22 + 32);
  v24 = *(v23 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v54 = *(v1 + 104);
    v55 = v1;
    *&v63[0] = MEMORY[0x1E69E7CC0];
    sub_1D2870F68();
    sub_1D23D81B8(0, v24, 0);
    v25 = *&v63[0];
    v26 = v23 + 32;
    do
    {
      sub_1D22D7044(v26, v64);
      v27 = v65;
      v28 = v66;
      __swift_project_boxed_opaque_existential_1(v64, v65);
      v29 = (*(*(v28 + 8) + 16))(v27);
      v31 = v30;
      __swift_destroy_boxed_opaque_existential_0(v64);
      *&v63[0] = v25;
      v33 = *(v25 + 16);
      v32 = *(v25 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1D23D81B8((v32 > 1), v33 + 1, 1);
        v25 = *&v63[0];
      }

      *(v25 + 16) = v33 + 1;
      v34 = v25 + 16 * v33;
      *(v34 + 32) = v29;
      *(v34 + 40) = v31;
      v26 += 40;
      --v24;
    }

    while (v24);

    v1 = v55;
    v22 = v54;
  }

  v35 = sub_1D2339170(v12, v25);

  v37 = v60;
  v36 = v61;
  if ((v35 & 1) == 0)
  {
    v38 = *(v22 + 32);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v51 - 2) = v1;
    *(&v51 - 1) = v38;
    v64[0] = v1;
    sub_1D2870F68();
    sub_1D28719D8();
  }

  swift_getKeyPath();
  *&v63[0] = v1;
  sub_1D28719E8();

  v40 = *(v1 + 16);
  v41 = *(v40 + 16);
  result = sub_1D2870F68();
  if (v41)
  {
    v43 = 0;
    v44 = v40 + 32;
    while (1)
    {
      if (v43 >= *(v40 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1D22D7044(v44, v63);
      sub_1D22D7044(v63, v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
      if (swift_dynamicCast())
      {
        break;
      }

      ++v43;
      result = __swift_destroy_boxed_opaque_existential_0(v63);
      v44 += 40;
      if (v41 == v43)
      {
        goto LABEL_20;
      }
    }

    v46 = v56;
    v47 = *(v56 + 8);
    v47(v37, v36);
    sub_1D227268C(v63, v64);
    v45 = v57;
    v48 = swift_dynamicCast();
    (*(v46 + 56))(v45, v48 ^ 1u, 1, v36);
    if ((*(v46 + 48))(v45, 1, v36) == 1)
    {
      return sub_1D22BD238(v45, &qword_1EC6D9A30);
    }

    v49 = v52;
    (*(v46 + 32))(v52, v45, v36);
    v50 = v53;
    (*(v46 + 16))(v53, v49, v36);
    sub_1D24A86B8(v50);
    return (v47)(v49, v36);
  }

  else
  {
LABEL_20:

    v45 = v57;
    (*(v56 + 56))(v57, 1, 1, v36);
    return sub_1D22BD238(v45, &qword_1EC6D9A30);
  }
}

uint64_t sub_1D24ADAF4()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
  sub_1D2870F68();
}

uint64_t sub_1D24ADB48(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Bubble(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = *(a1 + 16);
  v28 = a2;
  swift_beginAccess();
  v27 = v13;
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = 0;
  v15 = *(v5 + 72);
  v29 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v26 = a1 + v29;
  v16 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D24AE5B4(v26 + v15 * v14, v12, type metadata accessor for Bubble);
    v17 = *v28;
    v18 = *(*v28 + 16);
    sub_1D2870F68();
    if (v18)
    {
      v19 = v17 + v29;
      while (1)
      {
        sub_1D24AE5B4(v19, v10, type metadata accessor for Bubble);
        v20 = sub_1D2849278(v10, v12);
        sub_1D24ADF84(v10, type metadata accessor for Bubble);
        if (v20)
        {
          break;
        }

        v19 += v15;
        if (!--v18)
        {
          goto LABEL_9;
        }
      }

      sub_1D24ADF84(v12, type metadata accessor for Bubble);
    }

    else
    {
LABEL_9:

      sub_1D24ADF1C(v12, v30, type metadata accessor for Bubble);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D23D8628(0, *(v16 + 16) + 1, 1);
        v16 = v31;
      }

      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D23D8628(v22 > 1, v23 + 1, 1);
        v16 = v31;
      }

      *(v16 + 16) = v23 + 1;
      sub_1D24ADF1C(v30, v16 + v29 + v23 * v15, type metadata accessor for Bubble);
    }

    ++v14;
  }

  while (v14 != v27);
  return v16;
}

uint64_t sub_1D24ADE30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Bubble(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24ADEA4()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
  sub_1D2870F68();
}

uint64_t sub_1D24ADEE0()
{
  *(*(v0 + 16) + 128) = *(v0 + 24);
  sub_1D2870F78();
}

uint64_t sub_1D24ADF1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D24ADF84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1D24AE004(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  if (v3 >> 62)
  {
LABEL_56:
    v36 = v3 & 0xFFFFFFFFFFFFFF8;
    v4 = sub_1D2879368();
  }

  else
  {
    v36 = v3 & 0xFFFFFFFFFFFFFF8;
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D2870F68();
  if (!v4)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_48;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    v35 = v6;
    v7 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D38A1C30](v7, v3);
        v5 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v7 >= *(v36 + 16))
        {
          goto LABEL_55;
        }

        v8 = *(v3 + 8 * v7 + 32);
        sub_1D2870F78();
        v5 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }
      }

      if (*(v8 + 64) != 1)
      {
        break;
      }

      v9 = [objc_opt_self() mainBundle];
      v10 = [v9 bundleIdentifier];

      if (v10)
      {
        v11 = sub_1D28780A8();
        v13 = v12;

        if (v11 == 0xD000000000000015 && 0x80000001D28B8A20 == v13)
        {

LABEL_24:
          *(&v38 + 1) = &type metadata for NotesFeatures;
          v39 = sub_1D22D7288();
          LOBYTE(v37) = 0;
          v19 = sub_1D2871AA8();
          __swift_destroy_boxed_opaque_existential_0(&v37);
          if ((v19 & 1) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        v15 = sub_1D2879618();

        if (v15)
        {
          goto LABEL_24;
        }
      }

      if (qword_1ED8A4928 != -1)
      {
        swift_once();
      }

      sub_1D23B7BB8();
      v16 = sub_1D2878A58();
      v17 = sub_1D2878068();
      v18 = [v16 objectForKey_];

      if (v18)
      {
        sub_1D2879008();
        swift_unknownObjectRelease();
      }

      else
      {
        v41 = 0u;
        v42 = 0u;
      }

      v37 = v41;
      v38 = v42;
      if (!*(&v42 + 1))
      {
        goto LABEL_6;
      }

      if ((swift_dynamicCast() & 1) != 0 && (v40 & 1) == 0)
      {
        v20 = sub_1D2878A58();
        v21 = sub_1D2878068();
        v22 = [v20 objectForKey_];

        if (v22)
        {
          sub_1D2879008();
          swift_unknownObjectRelease();
        }

        else
        {
          v41 = 0u;
          v42 = 0u;
        }

        v37 = v41;
        v38 = v42;
        if (*(&v42 + 1))
        {
          if ((swift_dynamicCast() & 1) != 0 && (v40 & 1) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

LABEL_6:
        sub_1D22BD238(&v37, &qword_1EC6E1900);
      }

LABEL_7:
      swift_getKeyPath();
      *&v37 = a2;
      sub_1D24AF050(&qword_1ED8A04F8, type metadata accessor for PersonalizationFeatures);
      sub_1D28719E8();

      if (*(a2 + 16))
      {
        break;
      }

LABEL_8:

      ++v7;
      if (v5 == v4)
      {
        v6 = v35;
        goto LABEL_48;
      }
    }

    v23 = *(v8 + 24);
    v24 = *(v8 + 32);
    swift_bridgeObjectRetain_n();

    v6 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D27CCC1C(0, *(v35 + 2) + 1, 1, v35);
    }

    v26 = *(v6 + 2);
    v25 = *(v6 + 3);
    if (v26 >= v25 >> 1)
    {
      v6 = sub_1D27CCC1C((v25 > 1), v26 + 1, 1, v6);
    }

    *(v6 + 2) = v26 + 1;
    v27 = &v6[32 * v26];
    *(v27 + 4) = v23;
    *(v27 + 5) = v24;
    *(v27 + 6) = v23;
    *(v27 + 7) = v24;
  }

  while (v5 != v4);
LABEL_48:

  if (qword_1ED8A5A28 != -1)
  {
    swift_once();
  }

  v28 = qword_1ED8B0260;
  v29 = *algn_1ED8B0268;
  v30 = qword_1ED8B0270;
  v31 = unk_1ED8B0278;
  v32 = *(v6 + 2);
  sub_1D2870F68();
  sub_1D2870F68();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v37 = v6;
  if (!isUniquelyReferenced_nonNull_native || v32 >= *(v6 + 3) >> 1)
  {
    v6 = sub_1D27CCC1C(isUniquelyReferenced_nonNull_native, v32 + 1, 1, v6);
    *&v37 = v6;
  }

  sub_1D278C0DC(0, 0, 1, v28, v29, v30, v31);
  return v6;
}

uint64_t sub_1D24AE5B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D24AE63C()
{
  *(*(v0 + 16) + 120) = *(v0 + 24);
  sub_1D2870F78();
}

uint64_t sub_1D24AE6C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D24ACF9C(a1, v4, v5, v6);
}

uint64_t (*sub_1D24AE77C())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1D24AE690;
}

uint64_t sub_1D24AE80C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BC8FC;

  return sub_1D24ACBF0(a1, v4, v5, v6);
}

uint64_t (*sub_1D24AE8C0())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1D24AE7D4;
}

uint64_t sub_1D24AE918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    if (!a6)
    {
      v10 = 0;
      return v10 & 1;
    }

LABEL_9:
    sub_1D2478190(a5, a6);
    sub_1D22D70A8(a1, a2);
    sub_1D22D70A8(a5, a6);
    v10 = 1;
    return v10 & 1;
  }

  if (!a6)
  {
    sub_1D2478190(a1, a2);
    goto LABEL_9;
  }

  if (a1 == a5 && a2 == a6)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1D2879618() ^ 1;
  }

  sub_1D2478190(a1, a2);
  sub_1D2478190(a1, a2);
  sub_1D2478190(a5, a6);

  sub_1D22D70A8(a1, a2);
  return v10 & 1;
}

uint64_t sub_1D24AEAAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v44 = a2;
  v45 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC4D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v42 - v5;
  v7 = type metadata accessor for Bubble(0);
  v46 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D23C7E2C();
  swift_getKeyPath();
  *&v52 = v9;
  sub_1D24AF050(&qword_1ED8A54D8, type metadata accessor for ImageConditioningRepresentationsSource);
  sub_1D28719E8();

  if (!*(*(v9 + 16) + 16))
  {

    v15 = MEMORY[0x1E69E7CC0];
    v35 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v35)
    {
LABEL_24:
      v37 = *(v3 + 176);
      v38 = v15 + 32;
      v39 = (v46 + 48);
      v36 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1D22D7044(v38, &v52);
        sub_1D22D7044(&v52, &v49);
        LOBYTE(v55) = v37;
        sub_1D2847FA8(&v49, &v55, v6);
        __swift_destroy_boxed_opaque_existential_0(&v52);
        if ((*v39)(v6, 1, v7) == 1)
        {
          sub_1D22BD238(v6, &qword_1EC6DC4D0);
        }

        else
        {
          sub_1D24ADF1C(v6, v48, type metadata accessor for Bubble);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_1D27CCBF4(0, v36[2] + 1, 1, v36);
          }

          v41 = v36[2];
          v40 = v36[3];
          if (v41 >= v40 >> 1)
          {
            v36 = sub_1D27CCBF4(v40 > 1, v41 + 1, 1, v36);
          }

          v36[2] = v41 + 1;
          sub_1D24ADF1C(v48, v36 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v41, type metadata accessor for Bubble);
        }

        v38 += 40;
        --v35;
      }

      while (v35);

      return v36;
    }

LABEL_21:

    return MEMORY[0x1E69E7CC0];
  }

  v43 = v2;
  swift_getKeyPath();
  *&v52 = v9;
  sub_1D28719E8();

  v42 = v9;
  v10 = *(v9 + 16);
  v11 = *(v10 + 16);
  result = sub_1D2870F68();
  v47 = v11;
  if (!v11)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_23:

    v3 = v43;
    v35 = *(v15 + 16);
    if (v35)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  v13 = 0;
  v14 = v10 + 32;
  v15 = MEMORY[0x1E69E7CC0];
  v16 = v44;
  while (v13 < *(v10 + 16))
  {
    sub_1D22D7044(v14, &v52);
    v17 = v53;
    v18 = v54;
    __swift_project_boxed_opaque_existential_1(&v52, v53);
    v19 = (*(v18 + 48))(v17, v18);
    if (v20)
    {
      v21 = v19;
      v22 = v20;

      if (v21 == v45 && v22 == v16)
      {

LABEL_15:
        sub_1D227268C(&v52, &v49);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D23D8528(0, *(v15 + 16) + 1, 1);
          v15 = v55;
        }

        v27 = *(v15 + 16);
        v26 = *(v15 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1D23D8528((v26 > 1), v27 + 1, 1);
        }

        v28 = v50;
        v29 = v51;
        v30 = __swift_mutable_project_boxed_opaque_existential_1(&v49, v50);
        v31 = MEMORY[0x1EEE9AC00](v30);
        v33 = &v42 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v34 + 16))(v33, v31);
        sub_1D2564390(v27, v33, &v55, v28, v29);
        result = __swift_destroy_boxed_opaque_existential_0(&v49);
        v15 = v55;
        v16 = v44;
        goto LABEL_5;
      }

      v24 = sub_1D2879618();

      if (v24)
      {
        goto LABEL_15;
      }
    }

    result = __swift_destroy_boxed_opaque_existential_0(&v52);
LABEL_5:
    ++v13;
    v14 += 40;
    if (v47 == v13)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D24AF050(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D24AF098(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D22BDFF8;

  return sub_1D27FA39C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t type metadata accessor for CarouselFakeBlobView()
{
  result = qword_1EC6DC4E0;
  if (!qword_1EC6DC4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D24AF244()
{
  sub_1D24AF2E8();
  if (v0 <= 0x3F)
  {
    sub_1D24AF338();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D24AF2E8()
{
  if (!qword_1ED89D180)
  {
    v0 = sub_1D2877338();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89D180);
    }
  }
}

void sub_1D24AF338()
{
  if (!qword_1ED89DFE8)
  {
    sub_1D2874438();
    v0 = sub_1D28744A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89DFE8);
    }
  }
}

uint64_t sub_1D24AF3AC()
{
  v25 = sub_1D2877B48();
  v28 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v1 = &v20 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1D2877B68();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CarouselFakeBlobView();
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1D2877BA8();
  v23 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  sub_1D24614C4();
  v14 = sub_1D2878AB8();
  sub_1D2877B88();
  sub_1D2877BC8();
  v22 = *(v8 + 8);
  v22(v10, v7);
  sub_1D24B0650(v24, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v16 = swift_allocObject();
  sub_1D24B06B4(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  aBlock[4] = sub_1D24B0890;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = &block_descriptor_15;
  v17 = _Block_copy(aBlock);
  sub_1D2877B58();
  v29 = MEMORY[0x1E69E7CC0];
  sub_1D24B0908();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
  sub_1D22BB9D8(&qword_1ED89CEB0, &unk_1EC6DAE80);
  v18 = v25;
  sub_1D2879088();
  MEMORY[0x1D38A1510](v13, v4, v1, v17);
  _Block_release(v17);

  (*(v28 + 8))(v1, v18);
  (*(v26 + 8))(v4, v27);
  v22(v13, v23);
}

uint64_t sub_1D24AF7D8()
{
  sub_1D28778F8();
  sub_1D2877878();

  sub_1D2874BE8();
}

uint64_t sub_1D24AF868()
{
  v21 = sub_1D2874438();
  v0 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v20 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - v3;
  v5 = sub_1D2877028();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9F80);
  v9 = swift_allocObject();
  v19 = xmmword_1D28800F0;
  *(v9 + 16) = xmmword_1D28800F0;
  v10 = *MEMORY[0x1E69814D8];
  v11 = *(v6 + 104);
  v11(v8, v10, v5);
  *(v9 + 32) = sub_1D28770F8();
  v11(v8, v10, v5);
  *(v9 + 40) = sub_1D28770F8();
  v11(v8, v10, v5);
  *(v9 + 48) = sub_1D28770F8();
  v11(v8, v10, v5);
  *(v9 + 56) = sub_1D28770F8();
  v12 = swift_allocObject();
  *(v12 + 16) = v19;
  v11(v8, v10, v5);
  *(v12 + 32) = sub_1D28770F8();
  v11(v8, v10, v5);
  *(v12 + 40) = sub_1D28770F8();
  v11(v8, v10, v5);
  *(v12 + 48) = sub_1D28770F8();
  v11(v8, v10, v5);
  *(v12 + 56) = sub_1D28770F8();
  type metadata accessor for CarouselFakeBlobView();
  sub_1D24CC0E8(v4);
  v14 = v20;
  v13 = v21;
  (*(v0 + 104))(v20, *MEMORY[0x1E697DBA8], v21);
  v15 = sub_1D2874428();
  v16 = *(v0 + 8);
  v16(v14, v13);
  v16(v4, v13);
  if (v15)
  {
    v17 = v12;
  }

  else
  {
    v17 = v9;
  }

  return v17;
}

uint64_t sub_1D24AFCC0@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CarouselFakeBlobView();
  v35[0] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v35[1] = v5;
  v36 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v37 = v1;
  v7 = sub_1D2875188();
  v8 = *(v7 + 20);
  v9 = *MEMORY[0x1E697F468];
  v10 = sub_1D2875868();
  v11 = *(*(v10 - 8) + 104);
  v11(&a1[v8], v9, v10);
  *a1 = v6;
  *(a1 + 1) = v6;
  v12 = sub_1D2877098();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC4F0);
  *&a1[*(v13 + 52)] = v12;
  *&a1[*(v13 + 56)] = 256;
  v14 = sub_1D2877848();
  v16 = v15;
  v17 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC4F8) + 36)];
  sub_1D24B006C(v2, v17);
  v18 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC500) + 36));
  *v18 = v14;
  v18[1] = v16;
  v19 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC508) + 36)];
  *v19 = 0x3FF0000000000000;
  *(v19 + 4) = 0;
  v20 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC510) + 36)];
  v11(&v20[*(v7 + 20)], v9, v10);
  *v20 = v6;
  *(v20 + 1) = v6;
  *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC410) + 36)] = 256;
  v21 = sub_1D2877848();
  v23 = v22;
  v24 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC518) + 36)];
  v25 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC520) + 36);
  v11(&v25[*(v7 + 20)], v9, v10);
  v26 = v37;
  *v25 = v6;
  *(v25 + 1) = v6;
  *&v25[*(sub_1D2875178() + 20)] = 0x4020000000000000;
  v27 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC528) + 36)];
  *v27 = 0x4020000000000000;
  v27[8] = 0;
  *v24 = v21;
  v24[1] = v23;
  result = sub_1D24AF868();
  if (*(result + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v29 = *(result + 40);
    sub_1D2870F78();

    v30 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC530) + 36)];
    *v30 = v29;
    *(v30 + 1) = 0x4030000000000000;
    *(v30 + 2) = 0;
    *(v30 + 3) = 0;
    v31 = v36;
    sub_1D24B0650(v26, v36);
    v32 = (*(v35[0] + 80) + 16) & ~*(v35[0] + 80);
    v33 = swift_allocObject();
    sub_1D24B06B4(v31, v33 + v32);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC538);
    v34 = &a1[*(result + 36)];
    *v34 = sub_1D24B0718;
    v34[1] = v33;
    v34[2] = 0;
    v34[3] = 0;
  }

  return result;
}

double sub_1D24B006C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v50 = sub_1D28746F8();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = (&v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1D2874708();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_1D28776A8();
  v7 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = sub_1D2874718();
  v43 = *(v13 - 8);
  v44 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC540);
  MEMORY[0x1EEE9AC00](v40);
  v17 = &v40 - v16;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC548);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v40 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC550);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D28800F0;
  sub_1D24B09CC(&unk_1F4DBE180);
  *(v19 + 32) = v20;
  sub_1D24B09CC(&unk_1F4DBE1A8);
  *(v19 + 40) = v21;
  sub_1D24B09CC(&unk_1F4DBE1D0);
  *(v19 + 48) = v22;
  sub_1D24B09CC(&unk_1F4DBE1F8);
  *(v19 + 56) = v23;
  if (*(a1 + 16) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9F80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D287F500;
    *(v24 + 32) = sub_1D28770B8();
  }

  else
  {
    v24 = sub_1D24AF868();
  }

  sub_1D2877098();
  sub_1D2877698();
  *v6 = v19;
  (*(v45 + 104))(v6, *MEMORY[0x1E697DE80], v46);
  v25 = v48;
  v26 = v49;
  *v49 = v24;
  (*(v25 + 104))(v26, *MEMORY[0x1E697DE78], v50);
  v27 = v47;
  (*(v7 + 16))(v9, v12, v47);
  sub_1D28746E8();
  (*(v7 + 8))(v12, v27);
  (*(v43 + 32))(v17, v15, v44);
  *&v17[*(v40 + 56)] = 256;
  v28 = *(a1 + 32);
  *&v53 = *(a1 + 24);
  *(&v53 + 1) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
  sub_1D2877308();
  v29 = v52 * 3.14159265 + v52 * 3.14159265;
  sub_1D2877AE8();
  v31 = v30;
  v33 = v32;
  v34 = v41;
  sub_1D22EC9BC(v17, v41, &qword_1EC6DC540);
  v35 = v34 + *(v42 + 36);
  *v35 = v29;
  *(v35 + 8) = v31;
  *(v35 + 16) = v33;
  sub_1D2877848();
  sub_1D28748C8();
  v36 = v51;
  sub_1D22EC9BC(v34, v51, &qword_1EC6DC548);
  v37 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC558) + 36));
  v38 = v54;
  *v37 = v53;
  v37[1] = v38;
  result = v55[0];
  v37[2] = *v55;
  return result;
}

uint64_t sub_1D24B0650(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarouselFakeBlobView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24B06B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarouselFakeBlobView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_8()
{
  v1 = (type metadata accessor for CarouselFakeBlobView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1D2874438();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D24B0890()
{
  type metadata accessor for CarouselFakeBlobView();

  return sub_1D24AF7D8();
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

unint64_t sub_1D24B0908()
{
  result = qword_1ED89CFE0;
  if (!qword_1ED89CFE0)
  {
    sub_1D2877B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89CFE0);
  }

  return result;
}

uint64_t sub_1D24B09CC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 == 1)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

unint64_t sub_1D24B0A04()
{
  result = qword_1EC6DC560;
  if (!qword_1EC6DC560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC538);
    sub_1D24B0A90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC560);
  }

  return result;
}

unint64_t sub_1D24B0A90()
{
  result = qword_1EC6DC568;
  if (!qword_1EC6DC568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC530);
    sub_1D24B0B1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC568);
  }

  return result;
}

unint64_t sub_1D24B0B1C()
{
  result = qword_1EC6DC570;
  if (!qword_1EC6DC570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC518);
    sub_1D24B0BD4();
    sub_1D22BB9D8(&qword_1EC6DC5A0, &qword_1EC6DC520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC570);
  }

  return result;
}

unint64_t sub_1D24B0BD4()
{
  result = qword_1EC6DC578;
  if (!qword_1EC6DC578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC510);
    sub_1D24B0C8C();
    sub_1D22BB9D8(&qword_1EC6DC408, &qword_1EC6DC410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC578);
  }

  return result;
}

unint64_t sub_1D24B0C8C()
{
  result = qword_1EC6DC580;
  if (!qword_1EC6DC580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC508);
    sub_1D24B0D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC580);
  }

  return result;
}

unint64_t sub_1D24B0D18()
{
  result = qword_1EC6DC588;
  if (!qword_1EC6DC588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC4F8);
    sub_1D22BB9D8(&qword_1EC6DC590, &qword_1EC6DC4F0);
    sub_1D22BB9D8(&qword_1EC6DC598, &qword_1EC6DC500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC588);
  }

  return result;
}

uint64_t type metadata accessor for PickerSubtitleView()
{
  result = qword_1EC6D8660;
  if (!qword_1EC6D8660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D24B0E70()
{
  sub_1D24B0F0C();
  if (v0 <= 0x3F)
  {
    sub_1D22EAE8C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D24B0F0C()
{
  if (!qword_1ED8A6D20)
  {
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8A6D20);
    }
  }
}

uint64_t sub_1D24B0F78@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = sub_1D2875E18();
  v67 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v53 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0);
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v52 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v54 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v52 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860);
  MEMORY[0x1EEE9AC00](v55);
  v13 = *v1;
  v12 = v1[1];
  v14 = v1[2];
  v63 = v2;
  v64 = &v52 - v15;
  v66 = v11;
  if (v14 < 0)
  {
    v20 = qword_1ED89E0E8;
    sub_1D2870F68();
    sub_1D2870F68();
    if (v20 != -1)
    {
      swift_once();
    }

    v21 = qword_1ED8B0058;
    v16 = sub_1D2876668();
  }

  else
  {
    *&v69 = v13;
    *(&v69 + 1) = v12;
    sub_1D22BD06C();
    sub_1D2870F68();
    v16 = sub_1D2876698();
  }

  v59 = v17;
  v60 = v16;
  v22 = v18;
  v57 = v1[4];
  v58 = v19;
  v23 = *(v1 + 40);
  KeyPath = swift_getKeyPath();
  v25 = v22 & 1;
  v77 = v22 & 1;
  v76 = v23;
  v26 = v1[6];
  v27 = swift_getKeyPath();
  sub_1D2870F78();
  v28 = sub_1D2875DA8();
  v29 = swift_getKeyPath();
  v30 = sub_1D2877018();
  v31 = swift_getKeyPath();
  *&v69 = v60;
  *(&v69 + 1) = v59;
  LOBYTE(v70) = v25;
  *(&v70 + 1) = v58;
  *&v71 = KeyPath;
  *(&v71 + 1) = v57;
  LOBYTE(v72) = v23;
  *(&v72 + 1) = 256;
  *(&v72 + 1) = v27;
  *&v73 = v26;
  DWORD2(v73) = v28;
  *&v74 = v29;
  BYTE8(v74) = 1;
  *&v75 = v31;
  *(&v75 + 1) = v30;
  type metadata accessor for PickerSubtitleView();
  v32 = v66;
  sub_1D24CC0C4(v66);
  v33 = v67;
  v34 = v65;
  v35 = v63;
  (*(v67 + 104))(v65, *MEMORY[0x1E697FF38], v63);
  (*(v33 + 56))(v34, 0, 1, v35);
  v36 = v62;
  v37 = *(v61 + 48);
  sub_1D24B17B0(v32, v62);
  sub_1D24B17B0(v34, v36 + v37);
  v38 = *(v33 + 48);
  if (v38(v36, 1, v35) != 1)
  {
    v41 = v54;
    sub_1D24B17B0(v36, v54);
    v42 = v38(v36 + v37, 1, v35);
    v40 = v64;
    if (v42 != 1)
    {
      goto LABEL_14;
    }

    v37 = v41;
    sub_1D22BD238(v65, &qword_1EC6D99B8);
    sub_1D22BD238(v66, &qword_1EC6D99B8);
    (*(v67 + 8))(v41, v35);
LABEL_11:
    sub_1D22BD238(v36, &qword_1EC6E0DB0);
    while (1)
    {
      v43 = *MEMORY[0x1E697E6D8];
      v44 = sub_1D2874E88();
      (*(*(v44 - 8) + 104))(v40, v43, v44);
      sub_1D24B1820(&qword_1ED89DE70, MEMORY[0x1E697E730]);
      if (sub_1D2877F98())
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_14:
      v45 = v67;
      v46 = v53;
      (*(v67 + 32))(v53, v36 + v37, v35);
      sub_1D24B1820(&qword_1ED89D3D0, MEMORY[0x1E697FF50]);
      v47 = sub_1D2877F98();
      v48 = *(v45 + 8);
      v48(v46, v35);
      v37 = &unk_1D287E890;
      sub_1D22BD238(v65, &qword_1EC6D99B8);
      sub_1D22BD238(v66, &qword_1EC6D99B8);
      v48(v54, v35);
      sub_1D22BD238(v36, &qword_1EC6D99B8);
      if (v47)
      {
        goto LABEL_15;
      }
    }
  }

  sub_1D22BD238(v34, &qword_1EC6D99B8);
  sub_1D22BD238(v32, &qword_1EC6D99B8);
  v39 = v38(v36 + v37, 1, v35);
  v40 = v64;
  if (v39 != 1)
  {
    goto LABEL_11;
  }

  sub_1D22BD238(v36, &qword_1EC6D99B8);
LABEL_15:
  v49 = *MEMORY[0x1E697E720];
  v50 = sub_1D2874E88();
  (*(*(v50 - 8) + 104))(v40, v49, v50);
  sub_1D24B1820(&qword_1ED89DE70, MEMORY[0x1E697E730]);
  result = sub_1D2877F98();
  if (result)
  {
LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA240);
    sub_1D23421B0();
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    sub_1D28769B8();
    sub_1D22BD238(v40, &unk_1EC6DE860);
    v68[4] = v73;
    v68[5] = v74;
    v68[6] = v75;
    v68[0] = v69;
    v68[1] = v70;
    v68[2] = v71;
    v68[3] = v72;
    return sub_1D22BD238(v68, &qword_1EC6DA240);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D24B17B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24B1820(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ScrollCarouselTransition(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollCarouselTransition(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D24B192C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  LODWORD(v40) = a2;
  v42 = a3;
  v43 = a1;
  v7 = sub_1D2876188();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v39 - v12;
  v14 = sub_1D2877A88();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[0] = sub_1D28761A8();
  v18 = *(v39[0] - 8);
  MEMORY[0x1EEE9AC00](v39[0]);
  v20 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v41 = v39 - v22;
  sub_1D2877A78();
  sub_1D2876148();
  (*(v15 + 8))(v17, v14);
  sub_1D2876178();
  sub_1D2876168();
  v23 = *(v8 + 8);
  v23(v10, v7);
  sub_1D2876198();
  v23(v13, v7);
  v24 = *(v18 + 8);
  v25 = v39[0];
  v24(v20, v39[0]);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  *(v26 + 32) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC5A8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC5B0);
  v39[1] = sub_1D24B2268();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC5B8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC5C0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DBEA8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DBEB0);
  v31 = sub_1D2875288();
  v32 = sub_1D24B22CC();
  v44 = v31;
  v45 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v30;
  v45 = OpaqueTypeConformance2;
  v34 = swift_getOpaqueTypeConformance2();
  v44 = v29;
  v45 = v34;
  v35 = swift_getOpaqueTypeConformance2();
  v44 = v28;
  v45 = v35;
  v36 = swift_getOpaqueTypeConformance2();
  v44 = v27;
  v45 = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v41;
  sub_1D2876A58();

  return v24(v37, v25);
}

uint64_t sub_1D24B1DA4@<X0>(int a1@<W2>, uint64_t a2@<X8>, double a3@<D1>)
{
  v42 = a1;
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBEB0);
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBEA8);
  v8 = *(v7 - 8);
  v36 = v7;
  v37 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - v9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC5C0);
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC5B8);
  v39 = *(v13 - 8);
  v40 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  sub_1D2875C88();
  v17 = -(v16 * a3);
  v18 = sub_1D2875288();
  v19 = sub_1D24B22CC();
  MEMORY[0x1D389D320](v18, v19, v17, 0.0);
  sub_1D2875C88();
  v44 = v18;
  v45 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1D28748B8();
  (*(v35 + 8))(v6, v4);
  sub_1D2875C88();
  v22 = 1.0 - fabs(v21);
  if (v22 > 0.8)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0.8;
  }

  sub_1D2877AE8();
  v25 = v24;
  v27 = v26;
  v44 = v4;
  v45 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = v36;
  MEMORY[0x1D389D2F0](v36, v28, v23, v25, v27);
  (*(v37 + 8))(v10, v29);
  if (v42)
  {
    sub_1D2875C88();
  }

  v44 = v29;
  v45 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = v41;
  sub_1D2874898();
  (*(v38 + 8))(v12, v31);
  sub_1D2875C88();
  v44 = v31;
  v45 = v30;
  swift_getOpaqueTypeConformance2();
  v32 = v40;
  sub_1D2874888();
  return (*(v39 + 8))(v15, v32);
}

unint64_t sub_1D24B2268()
{
  result = qword_1ED89D400;
  if (!qword_1ED89D400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC5A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D400);
  }

  return result;
}

unint64_t sub_1D24B22CC()
{
  result = qword_1ED89D6F8;
  if (!qword_1ED89D6F8)
  {
    sub_1D2875288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D6F8);
  }

  return result;
}

uint64_t sub_1D24B2324()
{
  v0 = sub_1D2875C08();
  __swift_allocate_value_buffer(v0, qword_1EC6E3AF8);
  __swift_project_value_buffer(v0, qword_1EC6E3AF8);
  return sub_1D2875BF8();
}

uint64_t sub_1D24B2370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[0] = a4;
  v22[1] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1D2878F18();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v22 - v17;
  (*(a3 + 40))(a2, a3, v16);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v19 = 0;
  }

  else
  {
    (*(v11 + 32))(v18, v10, AssociatedTypeWitness);
    v22[2] = a2;
    v22[3] = a3;
    v22[4] = v22[0];
    swift_getKeyPath();
    swift_getAtKeyPath();

    swift_getAssociatedConformanceWitness();
    v19 = sub_1D2877F98();
    v20 = *(v11 + 8);
    v20(v14, AssociatedTypeWitness);
    v20(v18, AssociatedTypeWitness);
  }

  return v19 & 1;
}

uint64_t sub_1D24B2614(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  LODWORD(v40) = a1;
  v6 = sub_1D28719B8();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC5C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1D2878F18();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v37 - v21;
  (*(a3 + 40))(a2, a3, v20);
  if ((*(v18 + 48))(v17, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v15 + 8))(v17, v14);
  }

  (*(v18 + 32))(v22, v17, AssociatedTypeWitness);
  sub_1D24B2AEC(a2, a3, v12);
  v25 = v42;
  v24 = v43;
  if ((*(v42 + 48))(v12, 1, v43) == 1)
  {
    (*(v18 + 8))(v22, AssociatedTypeWitness);
    return sub_1D22BD238(v12, &qword_1EC6DC5C8);
  }

  v26 = sub_1D28719A8();
  v28 = *(v25 + 8);
  v27 = v25 + 8;
  v38 = v28;
  v28(v12, v24);
  if (v40)
  {
    result = v26 - 1;
    v29 = v41;
    if (!__OFSUB__(v26, 1))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  result = v26 + 1;
  v29 = v41;
  if (__OFADD__(v26, 1))
  {
    __break(1u);
    return result;
  }

LABEL_10:
  v41 = v22;
  MEMORY[0x1D389A410](result, 0);
  v30 = v44;
  if (sub_1D24B2C54(v29, a2, a3, v44))
  {
    v31 = v42;
    v32 = *(v42 + 16);
    v33 = v39;
    v40 = v27;
    v34 = v43;
    v32(v39, v29);
    (*(v31 + 56))(v33, 0, 1, v34);
    sub_1D24B353C(v33, 1, a2, a3, v30);
    sub_1D22BD238(v33, &qword_1EC6DC5C8);
    v38(v29, v34);
  }

  else
  {
    if (UIAccessibilityIsVoiceOverRunning())
    {
      v35 = *MEMORY[0x1E69DD888];
      v36 = sub_1D2878068();
      UIAccessibilityPostNotification(v35, v36);
    }

    v38(v29, v43);
  }

  return (*(v18 + 8))(v41, AssociatedTypeWitness);
}

uint64_t sub_1D24B2AEC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(a2 + 32))(a1, a2);
  swift_getAssociatedTypeWitness();
  sub_1D28784C8();
  swift_getWitnessTable();
  sub_1D2878888();

  if (v8)
  {
    v4 = 1;
  }

  else
  {
    MEMORY[0x1D389A410](v7, 0);
    v4 = 0;
  }

  v5 = sub_1D28719B8();
  return (*(*(v5 - 8) + 56))(a3, v4, 1, v5);
}

uint64_t sub_1D24B2C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v74 = a4;
  v6 = type metadata accessor for LoadingPageControlIndicatorStyle();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v69 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v68 = v66 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v80 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v67 = v66 - v11;
  v73 = v12;
  v13 = sub_1D2878F18();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v71 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v72 = v66 - v14;
  v79 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v70 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v77 = v66 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v81 = v66 - v20;
  v21 = swift_getAssociatedTypeWitness();
  v76 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v75 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v82 = v66 - v25;
  v26 = *(a3 + 32);
  v26(a2, a3, v24);

  (v26)(a2, a3);
  v83 = v21;
  v27 = sub_1D2878498();

  if ((v27 & 0x8000000000000000) == 0)
  {
    v29 = sub_1D28719A8();
    v30 = 0;
    if (v29 < 0 || v29 >= v27)
    {
      return v30 & 1;
    }

    (v26)(a2, a3);
    sub_1D28719A8();
    sub_1D28784D8();

    v31 = *(a3 + 40);
    v32 = a3;
    v33 = v81;
    v66[2] = a2;
    v66[1] = v32;
    v31(a2);
    v34 = v13;
    v35 = v77;
    sub_1D2879178();
    v36 = v80;
    v37 = v73;
    (*(v80 + 56))(v35, 0, 1, v73);
    v38 = v79;
    v39 = *(TupleTypeMetadata2 + 48);
    v40 = *(v79 + 16);
    v41 = v72;
    v40(v72, v33, v34);
    v74 = v39;
    v40(&v41[v39], v35, v34);
    v42 = *(v36 + 48);
    if (v42(v41, 1, v37) == 1)
    {
      v43 = *(v38 + 8);
      v43(v35, v34);
      v43(v81, v34);
      v44 = v42(&v41[v74], 1, v37);
      v45 = v83;
      v46 = v41;
      if (v44 == 1)
      {
        v43(v41, v34);
        v47 = 1;
        goto LABEL_11;
      }
    }

    else
    {
      v48 = v70;
      v40(v70, v41, v34);
      v49 = v74;
      v50 = v42(&v41[v74], 1, v37);
      v46 = v41;
      v51 = v37;
      v52 = v34;
      if (v50 != 1)
      {
        v54 = v80;
        v55 = v67;
        (*(v80 + 32))(v67, &v46[v49], v51);
        swift_getAssociatedConformanceWitness();
        v56 = v48;
        v47 = sub_1D2877F98();
        v57 = *(v54 + 8);
        v57(v55, v51);
        v58 = *(v79 + 8);
        v58(v77, v52);
        v58(v81, v52);
        v57(v56, v51);
        v58(v46, v52);
        v45 = v83;
LABEL_11:
        v59 = v76;
        v60 = v82;
        (*(v76 + 16))(v75, v82, v45);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC5D0);
        if (swift_dynamicCast())
        {
          sub_1D227268C(v84, v86);
          if (v47)
          {
            (*(v59 + 8))(v60, v45);
            v30 = 0;
          }

          else
          {
            v61 = v87;
            v62 = v88;
            __swift_project_boxed_opaque_existential_1(v86, v87);
            v63 = v68;
            (*(v62 + 24))(v61, v62);
            v64 = v69;
            sub_1D2878588();
            v65 = sub_1D28785F8();
            (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
            LOBYTE(v61) = _s23ImagePlaygroundInternal32LoadingPageControlIndicatorStyleO2eeoiySbAC_ACtFZ_0(v63, v64);
            sub_1D24B4510(v64);
            sub_1D24B4510(v63);
            (*(v59 + 8))(v60, v45);
            v30 = v61 ^ 1;
          }

          __swift_destroy_boxed_opaque_existential_0(v86);
        }

        else
        {
          v30 = v47 ^ 1;
          (*(v59 + 8))(v60, v45);
          v85 = 0;
          memset(v84, 0, sizeof(v84));
          sub_1D22BD238(v84, &qword_1EC6DC5D8);
        }

        return v30 & 1;
      }

      v53 = *(v79 + 8);
      v53(v77, v34);
      v53(v81, v34);
      (*(v80 + 8))(v48, v37);
      v45 = v83;
    }

    (*(v71 + 8))(v46, TupleTypeMetadata2);
    v47 = 0;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D24B353C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v33 = a3;
  v31 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC5C8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30[-v8];
  v10 = sub_1D28719B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v32 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30[-v17];
  sub_1D22BD1D0(a1, v9, &qword_1EC6DC5C8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1D22BD238(v9, &qword_1EC6DC5C8);
  }

  v20 = *(v11 + 32);
  v20(v18, v9, v10);
  if ((sub_1D24B2C54(v18, v33, v34, v35) & 1) == 0)
  {
    return (*(v11 + 8))(v18, v10);
  }

  v21 = *(v11 + 16);
  v21(v15, v18, v10);
  v21(v32, v15, v10);
  v22 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v23 = swift_allocObject();
  v24 = v34;
  v23[2] = v33;
  v23[3] = v24;
  v23[4] = v35;
  v23[5] = v5;
  v20(v23 + v22, v15, v10);
  if (v31)
  {
    v25 = *(v11 + 8);
    swift_unknownObjectRetain();
    v25(v32, v10);
    v26 = MEMORY[0x1D38A0390](0.15, 0.85, 0.25);
    MEMORY[0x1EEE9AC00](v26);
    *&v30[-16] = sub_1D24B4310;
    *&v30[-8] = v23;
    sub_1D2874BE8();

    return (v25)(v18, v10);
  }

  else
  {
    v27 = swift_unknownObjectRetain();
    v28 = v32;
    sub_1D24B40AC(v27, v32, v33, v34, v35);

    v29 = *(v11 + 8);
    v29(v28, v10);
    return (v29)(v18, v10);
  }
}

uint64_t sub_1D24B38F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v23 = a4;
  v7 = sub_1D2874AE8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  sub_1D2877718();
  sub_1D2874AD8();
  sub_1D24B4594();
  v14 = sub_1D2877F98();
  v15 = *(v8 + 8);
  v15(v10, v7);
  if (v14)
  {
    v15(v13, v7);
    v16 = 1;
  }

  else
  {
    sub_1D2874A68();
    v17 = sub_1D2877F98();
    v15(v10, v7);
    v15(v13, v7);
    if ((v17 & 1) == 0)
    {
      v18 = MEMORY[0x1E697D778];
      goto LABEL_7;
    }

    v16 = 0;
  }

  sub_1D24B2614(v16, a1, a2, a3);
  v18 = MEMORY[0x1E697D770];
LABEL_7:
  v19 = *v18;
  v20 = sub_1D2877758();
  return (*(*(v20 - 8) + 104))(v23, v19, v20);
}

uint64_t sub_1D24B3B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC5C8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v40 = &v37 - v8;
  v44 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1D2878F18();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v45 = AssociatedTypeWitness;
  v43 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v37 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC5E0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v37 - v16;
  v18 = sub_1D2876298();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v37 - v23;
  sub_1D22BD1D0(a1, v17, &qword_1EC6DC5E0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1D22BD238(v17, &qword_1EC6DC5E0);
    v25 = v45;
    v27 = v43;
    v26 = v44;
  }

  else
  {
    (*(v19 + 32))(v24, v17, v18);
    (*(v19 + 16))(v21, v24, v18);
    v28 = (*(v19 + 88))(v21, v18);
    if (v28 == *MEMORY[0x1E697CC28])
    {
      v26 = v44;
      sub_1D24B2614(0, v44, a3, v41);
      (*(v19 + 8))(v24, v18);
      v25 = v45;
      v27 = v43;
    }

    else
    {
      v25 = v45;
      v27 = v43;
      if (v28 == *MEMORY[0x1E697CC20])
      {
        v26 = v44;
        sub_1D24B2614(1, v44, a3, v41);
        (*(v19 + 8))(v24, v18);
      }

      else
      {
        v29 = *(v19 + 8);
        v29(v24, v18);
        v29(v21, v18);
        v26 = v44;
      }
    }
  }

  (*(a3 + 40))(v26, a3);
  v30 = (*(v27 + 48))(v12, 1, v25);
  v31 = v42;
  if (v30 == 1)
  {
    (*(v38 + 8))(v12, v39);
    return -1;
  }

  (*(v27 + 32))(v42, v12, v25);
  v32 = v40;
  sub_1D24B2AEC(v26, a3, v40);
  v33 = sub_1D28719B8();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    (*(v27 + 8))(v31, v25);
    sub_1D22BD238(v32, &qword_1EC6DC5C8);
    return -1;
  }

  v36 = sub_1D28719A8();
  (*(v27 + 8))(v31, v25);
  (*(v34 + 8))(v32, v33);
  result = v36 + 1;
  if (__OFADD__(v36, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D24B40AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a2;
  v18 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v17 - v9;
  v11 = swift_getAssociatedTypeWitness();
  v12 = sub_1D2878F18();
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v17 - v14;
  (*(a4 + 32))(a3, a4, v13);
  sub_1D28719A8();
  sub_1D28784D8();

  v19 = a3;
  v20 = a4;
  v21 = v18;
  swift_getKeyPath();
  swift_getAtKeyPath();

  (*(v8 + 8))(v10, AssociatedTypeWitness);
  (*(*(v11 - 8) + 56))(v15, 0, 1, v11);
  return (*(a4 + 48))(v15, a3, a4);
}

uint64_t sub_1D24B4310()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(sub_1D28719B8() - 8);
  v5 = v0[5];
  v6 = v0 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  return sub_1D24B40AC(v5, v6, v1, v2, v3);
}

uint64_t sub_1D24B4398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v15 - v11;
  v15[0] = a4;
  v15[1] = a5;
  v15[2] = a6;
  swift_getKeyPath();
  swift_getAtKeyPath();

  swift_getAssociatedConformanceWitness();
  v13 = sub_1D2877F98();
  (*(v10 + 8))(v12, AssociatedTypeWitness);
  return v13 & 1;
}

uint64_t sub_1D24B4510(uint64_t a1)
{
  v2 = type metadata accessor for LoadingPageControlIndicatorStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D24B4594()
{
  result = qword_1ED89DEF0;
  if (!qword_1ED89DEF0)
  {
    sub_1D2874AE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DEF0);
  }

  return result;
}

uint64_t sub_1D24B45EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a1)
  {
    v7 = 0x696A6F6D45;
    v8 = a1;
    v9 = sub_1D2878068();
    v38 = v8;
    v10 = [objc_opt_self() emojiTokenWithString:v9 localeData:v8];

    v37 = v10;
    if (v10 && (v11 = [v10 nameForType_]) != 0)
    {
      v12 = v11;
      sub_1D28780A8();

      sub_1D22BD06C();
      v7 = sub_1D2878F68();
      v14 = v13;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    v15 = type metadata accessor for CuratedPrompt();
    v16 = v15[8];
    v17 = type metadata accessor for PlaygroundImage();
    v18 = *(*(v17 - 8) + 56);
    v18(a4 + v16, 1, 1, v17);
    result = (v18)(a4 + v15[9], 1, 1, v17);
    v20 = (a4 + v15[11]);
    *v20 = 0;
    v20[1] = 0;
    v21 = a4 + v15[23];
    v22 = (a4 + v15[24]);
    *v22 = 0;
    v22[1] = 0;
    *(a4 + v15[25]) = 0;
    *(a4 + v15[26]) = 0;
    a4[2] = v7;
    a4[3] = v14;
    *v21 = v7;
    *(v21 + 1) = v14;
    *(v21 + 1) = 0u;
    *(v21 + 2) = 0u;
    v21[48] = 0;
    *a4 = a2;
    a4[1] = a3;
    a4[4] = v7;
    a4[5] = v14;
    v23 = (a4 + v15[13]);
    *v23 = 0;
    v23[1] = 0;
    if ((a3 & 0x2000000000000000) != 0)
    {
      if ((a3 & 0xF00000000000000) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if ((a2 & 0xFFFFFFFFFFFFLL) != 0)
      {
        if ((a2 & 0x1000000000000000) == 0)
        {
          swift_bridgeObjectRetain_n();
          sub_1D2870F68();
          a2 = sub_1D23BE880();
          a3 = v24;
LABEL_15:
          v27 = (a4 + v15[12]);
          *v27 = a2;
          v27[1] = a3;
          v28 = (a4 + v15[14]);
          *v28 = v7;
          v28[1] = v14;
          v29 = (a4 + v15[17]);
          *v29 = 0;
          v29[1] = 0;
          v30 = (a4 + v15[15]);
          *v30 = v7;
          v30[1] = v14;
          v31 = (a4 + v15[18]);
          *v31 = 0;
          v31[1] = 0;
          v32 = (a4 + v15[16]);
          *v32 = v7;
          v32[1] = v14;
          v33 = (a4 + v15[19]);
          *v33 = 0;
          v33[1] = 0;
          *(a4 + v15[10]) = 0;
          *(a4 + v15[21]) = 1;
          *(a4 + v15[20]) = 0;
          v34 = qword_1ED8A14E8;
          swift_bridgeObjectRetain_n();
          if (v34 != -1)
          {
            swift_once();
          }

          a4[6] = qword_1ED8B0138;
          v35 = qword_1ED89E0E8;
          sub_1D2870F78();
          if (v35 != -1)
          {
            swift_once();
          }

          v36 = qword_1ED8B0058;

          *(a4 + v15[22]) = v36;
          return (*(*(v15 - 1) + 56))(a4, 0, 1, v15);
        }

LABEL_14:
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        goto LABEL_15;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v25 = type metadata accessor for CuratedPrompt();
  v26 = *(*(v25 - 8) + 56);

  return v26(a4, 1, 1, v25);
}

uint64_t sub_1D24B49E8()
{
  v1[15] = v0;
  v2 = sub_1D2871818();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v3 = sub_1D2873CB8();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v4 = type metadata accessor for PlaygroundImage();
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA210);
  v1[28] = swift_task_alloc();
  v5 = type metadata accessor for CuratedPrompt();
  v1[29] = v5;
  v1[30] = *(v5 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v6 = sub_1D2877D28();
  v1[35] = v6;
  v1[36] = *(v6 - 8);
  v1[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D24B4C98, 0, 0);
}

uint64_t sub_1D24B4C98()
{
  v0[38] = *(v0[15] + 16);
  v1 = swift_task_alloc();
  v0[39] = v1;
  *v1 = v0;
  v1[1] = sub_1D24B4D40;

  return MEMORY[0x1EEE427F8](v0 + 7, 32);
}

uint64_t sub_1D24B4D40()
{
  *(*v1 + 320) = v0;

  sub_1D2877D18();
  sub_1D24B81A4();
  v3 = sub_1D28784F8();
  if (v0)
  {
    v4 = sub_1D24B60E4;
  }

  else
  {
    v4 = sub_1D24B4E94;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1D24B4E94()
{
  sub_1D227268C((v0 + 56), v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D24B4F00, 0, 0);
}

void sub_1D24B4F00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC5E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC5F0);
  if (!swift_dynamicCast())
  {
LABEL_80:
    v164 = MEMORY[0x1E69E7CC0];
LABEL_81:

    v127 = v0[1];

    v127(v164);
    return;
  }

  v1 = v0[14];
  v169 = *(v1 + 16);
  if (!v169)
  {

    goto LABEL_80;
  }

  v2 = 0;
  v3 = v0[36];
  v150 = v0[37];
  v166 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v151 = (v0[20] + 8);
  v140 = (v3 + 8);
  v167 = v3;
  v161 = (v3 + 96);
  v130 = v0[24];
  v153 = (v0[25] + 56);
  v5 = v0[29];
  v4 = v0[30];
  v146 = v4;
  v147 = (v4 + 48);
  v148 = (v4 + 56);
  v129 = (v0[17] + 8);
  v6 = MEMORY[0x1E69E7CC0];
  v165 = *MEMORY[0x1E69D46B0];
  v160 = *MEMORY[0x1E69D46A8];
  v149 = *MEMORY[0x1E69D46B8];
  v139 = v0[32];
  v159 = v0[28];
  v128 = v0[27];
  v152 = v0[14];
  v168 = v5;
  while (v2 < *(v1 + 16))
  {
    v7 = v0[37];
    v8 = v0[35];
    (*(v167 + 16))(v7, v166 + *(v167 + 72) * v2, v8);
    v9 = (*(v167 + 88))(v7, v8);
    if (v9 != v165)
    {
      if (v9 != v160)
      {
        v41 = v1;
        if (v9 == v149)
        {
          sub_1D28724D8();
          v42 = sub_1D2873CA8();
          v43 = sub_1D2878A38();
          v44 = os_log_type_enabled(v42, v43);
          v45 = v0[22];
          v46 = v0[19];
          if (v44)
          {
            v47 = swift_slowAlloc();
            *v47 = 0;
            _os_log_impl(&dword_1D226E000, v42, v43, "Unknown (.unknown) sticker type found", v47, 2u);
            MEMORY[0x1D38A3520](v47, -1, -1);
          }

          v48 = v151;
        }

        else
        {
          sub_1D28724D8();
          v57 = sub_1D2873CA8();
          v58 = sub_1D2878A38();
          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            *v59 = 0;
            _os_log_impl(&dword_1D226E000, v57, v58, "Unknown (default) sticker type found", v59, 2u);
            MEMORY[0x1D38A3520](v59, -1, -1);
          }

          v45 = v0[37];
          v46 = v0[35];
          v60 = v0[21];
          v61 = v0[19];

          (*v151)(v60, v61);
          v48 = v140;
        }

        (*v48)(v45, v46);
        v1 = v41;
        goto LABEL_6;
      }

      v27 = v0[37];
      (*v161)(v27, v0[35]);
      v28 = *v27;
      v29 = *(v150 + 8);
      if (qword_1ED89CD48 != -1)
      {
        swift_once();
      }

      v30 = qword_1ED8B0010;
      v31 = sub_1D2878068();
      v157 = v30;
      v32 = [objc_opt_self() emojiTokenWithString:v31 localeData:v30];

      v163 = v6;
      v155 = v32;
      if (v32 && (v33 = [v32 nameForType_]) != 0)
      {
        v34 = v33;
        v35 = sub_1D28780A8();
        v37 = v36;

        v0[12] = v35;
        v0[13] = v37;
        sub_1D22BD06C();
        v38 = sub_1D2878F68();
        v40 = v39;
      }

      else
      {
        v40 = 0xE500000000000000;
        v38 = 0x696A6F6D45;
      }

      v49 = v0[28];
      v50 = v0[24];
      v51 = *v153;
      (*v153)(v49 + v5[8], 1, 1, v50);
      v51(v49 + v168[9], 1, 1, v50);
      v5 = v168;
      v52 = (v49 + v168[11]);
      *v52 = 0;
      v52[1] = 0;
      v53 = v49 + v168[23];
      v54 = (v49 + v168[24]);
      *v54 = 0;
      v54[1] = 0;
      *(v49 + v168[25]) = 0;
      *(v49 + v168[26]) = 0;
      v159[2] = v38;
      v159[3] = v40;
      *v53 = v38;
      *(v53 + 1) = v40;
      *(v53 + 1) = 0u;
      *(v53 + 2) = 0u;
      v53[48] = 0;
      *v49 = v28;
      v159[1] = v29;
      v159[4] = v38;
      v159[5] = v40;
      v55 = (v49 + v168[13]);
      *v55 = 0;
      v55[1] = 0;
      if ((v29 & 0x2000000000000000) != 0)
      {
        v6 = v163;
        if ((v29 & 0xF00000000000000) == 0)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v6 = v163;
        if ((v28 & 0xFFFFFFFFFFFFLL) == 0)
        {
          goto LABEL_87;
        }

        if ((v28 & 0x1000000000000000) == 0)
        {
          swift_bridgeObjectRetain_n();
          sub_1D2870F68();
          v28 = sub_1D23BE880();
LABEL_42:
          v62 = v0[28];
          v63 = (v62 + v168[12]);
          *v63 = v28;
          v63[1] = v56;
          v64 = (v62 + v168[14]);
          *v64 = v38;
          v64[1] = v40;
          v65 = (v62 + v168[17]);
          *v65 = 0;
          v65[1] = 0;
          v66 = (v62 + v168[15]);
          *v66 = v38;
          v66[1] = v40;
          v67 = (v62 + v168[18]);
          *v67 = 0;
          v67[1] = 0;
          v68 = (v62 + v168[16]);
          *v68 = v38;
          v68[1] = v40;
          v69 = (v62 + v168[19]);
          *v69 = 0;
          v69[1] = 0;
          *(v62 + v168[10]) = 0;
          *(v62 + v168[21]) = 1;
          *(v62 + v168[20]) = 0;
          v70 = qword_1ED8A14E8;
          swift_bridgeObjectRetain_n();
          v1 = v152;
          if (v70 != -1)
          {
            swift_once();
          }

          v159[6] = qword_1ED8B0138;
          v71 = qword_1ED89E0E8;
          sub_1D2870F78();
          if (v71 != -1)
          {
            swift_once();
          }

          v72 = v0[28];
          v73 = v0[29];
          v74 = qword_1ED8B0058;

          *(v72 + v168[22]) = v74;
          (*v148)(v72, 0, 1, v73);

          if ((*v147)(v72, 1, v73) == 1)
          {
            sub_1D22BD238(v0[28], &qword_1EC6DA210);
          }

          else
          {
            v75 = v0[33];
            v76 = v0[34];
            sub_1D24B82C4(v0[28], v76, type metadata accessor for CuratedPrompt);
            sub_1D24B81FC(v76, v75, type metadata accessor for CuratedPrompt);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1D27CCA98(0, v6[2] + 1, 1, v6);
            }

            v78 = v6[2];
            v77 = v6[3];
            if (v78 >= v77 >> 1)
            {
              v6 = sub_1D27CCA98(v77 > 1, v78 + 1, 1, v6);
            }

            v79 = v0[33];
            sub_1D24B8264(v0[34], type metadata accessor for CuratedPrompt);
            v6[2] = v78 + 1;
            sub_1D24B82C4(v79, v6 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v78, type metadata accessor for CuratedPrompt);
          }

          goto LABEL_6;
        }
      }

      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v56 = v29;
      goto LABEL_42;
    }

    v10 = v0[37];
    (*v161)(v10, v0[35]);
    v11 = *v10;
    if ((sub_1D2877D38() & 1) == 0)
    {
      goto LABEL_5;
    }

    v12 = sub_1D2877DD8();
    if (v12 >> 62)
    {
      v125 = v12;
      v126 = sub_1D2879368();
      v12 = v125;
      if (!v126)
      {
LABEL_4:

LABEL_5:

        goto LABEL_6;
      }
    }

    else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1D38A1C30](0);
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_85;
      }

      v13 = *(v12 + 32);
    }

    v14 = v13;

    v15 = sub_1D2877D98();
    v17 = v16;

    v18 = sub_1D2877D58();
    if (v19)
    {
      v141 = v18;
      v156 = v19;
      v20 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      sub_1D22D6CF8(v15, v17);
      sub_1D22D6CF8(v15, v17);
      v21 = sub_1D28716D8();
      v22 = [v20 initWithData_];

      sub_1D22D6D60(v15, v17);
      if (v22)
      {
        v144 = v15;
        v23 = sub_1D28716D8();
        v24 = CGImageSourceCreateWithData(v23, 0);

        v162 = v6;
        v154 = v17;
        if (v24)
        {
          v25 = CGImageSourceCopyPropertiesAtIndex(v24, 0, 0);
          if (v25)
          {
            v26 = v25;
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              sub_1D2877E88();
            }
          }

          else
          {
          }
        }

        v90 = v0[32];
        v91 = v0[27];
        v135 = v0[26];
        v138 = v0[24];
        v92 = v0[18];
        v142 = v0[16];
        v93 = &v91[v130[9]];
        *v93 = 0u;
        *(v93 + 1) = 0u;
        *&v91[v130[10]] = xmmword_1D28809A0;
        v94 = v130[11];
        v95 = sub_1D2873AA8();
        (*(*(v95 - 8) + 56))(&v91[v94], 1, 1, v95);
        *v91 = v22;
        *(v128 + 8) = 2;
        [v22 imageOrientation];
        *(v128 + 24) = sub_1D2878C88();
        *(v128 + 16) = 0;
        *(v128 + 32) = 0;
        *(v128 + 40) = 0;
        v91[v130[12]] = 0;
        sub_1D2871808();
        sub_1D22D6D60(v144, v17);
        sub_1D2877E08();
        v96 = sub_1D28717B8();
        v132 = v97;
        v133 = v96;
        (*v129)(v92, v142);
        sub_1D24B81FC(v91, v135, type metadata accessor for PlaygroundImage);
        sub_1D2870F68();
        v98 = sub_1D2877DE8();
        v136 = v99;
        v137 = v98;
        v100 = v5[8];
        v101 = *v153;
        v143 = *v153;
        (*v153)(v90 + v100, 1, 1, v138);
        v131 = v168[9];
        v101(v90 + v131, 1, 1, v138);
        v102 = (v90 + v168[11]);
        *v102 = 0;
        v102[1] = 0;
        v134 = (v90 + v168[12]);
        v103 = v90 + v168[23];
        v104 = (v90 + v168[24]);
        *v104 = 0;
        v104[1] = 0;
        *(v90 + v168[25]) = 0;
        *(v90 + v168[26]) = 0;
        v139[2] = v141;
        v139[3] = v156;
        *v90 = v133;
        v139[1] = v132;
        v139[4] = v141;
        v139[5] = v156;
        swift_bridgeObjectRetain_n();
        sub_1D22BD238(v90 + v100, &unk_1EC6DE5A0);
        sub_1D24B81FC(v135, v90 + v100, type metadata accessor for PlaygroundImage);
        v143(v90 + v100, 0, 1, v138);
        sub_1D22BD238(v90 + v131, &unk_1EC6DE5A0);
        sub_1D24B81FC(v135, v90 + v131, type metadata accessor for PlaygroundImage);
        v143(v90 + v131, 0, 1, v138);
        v5 = v168;
        *v103 = v141;
        *(v103 + 1) = v156;
        *(v103 + 2) = v137;
        *(v103 + 3) = v136;
        *(v103 + 4) = v141;
        *(v103 + 5) = v156;
        v103[48] = 1;
        *v134 = 0;
        v134[1] = 0;
        v105 = (v90 + v168[13]);
        *v105 = 0;
        v105[1] = 0;
        if (v136)
        {
          v106 = v137;
        }

        else
        {
          v106 = v141;
        }

        if (v136)
        {
          v107 = v136;
        }

        else
        {
          v107 = v156;
        }

        v108 = (v90 + v168[14]);
        *v108 = v106;
        v108[1] = v107;
        v109 = (v90 + v168[17]);
        *v109 = 0;
        v109[1] = 0;
        v110 = (v90 + v168[15]);
        *v110 = v106;
        v110[1] = v107;
        v111 = (v90 + v168[18]);
        *v111 = 0;
        v111[1] = 0;
        v112 = (v90 + v168[16]);
        *v112 = v106;
        v112[1] = v107;
        v113 = (v90 + v168[19]);
        *v113 = 0;
        v113[1] = 0;
        *(v90 + v168[10]) = 0;
        *(v90 + v168[21]) = 1;
        *(v90 + v168[20]) = 0;
        v114 = qword_1ED8A14E8;
        swift_bridgeObjectRetain_n();
        if (v114 != -1)
        {
          swift_once();
        }

        v139[6] = qword_1ED8B0138;
        v115 = qword_1ED89E0E8;
        sub_1D2870F78();
        v6 = v162;
        if (v115 != -1)
        {
          swift_once();
        }

        v116 = v0[31];
        v117 = v0[32];
        v118 = v0[26];
        v119 = qword_1ED8B0058;
        sub_1D24B8264(v118, type metadata accessor for PlaygroundImage);
        *(v117 + v168[22]) = v119;
        sub_1D24B81FC(v117, v116, type metadata accessor for CuratedPrompt);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1D27CCA98(0, v162[2] + 1, 1, v162);
        }

        v121 = v6[2];
        v120 = v6[3];
        if (v121 >= v120 >> 1)
        {
          v6 = sub_1D27CCA98(v120 > 1, v121 + 1, 1, v6);
        }

        v123 = v0[31];
        v122 = v0[32];
        v124 = v0[27];

        sub_1D22D6D60(v144, v154);
        v6[2] = v121 + 1;
        sub_1D24B82C4(v123, v6 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v121, type metadata accessor for CuratedPrompt);
        sub_1D24B8264(v122, type metadata accessor for CuratedPrompt);
        sub_1D24B8264(v124, type metadata accessor for PlaygroundImage);
        goto LABEL_74;
      }

      sub_1D23EE050();
      v80 = swift_allocError();
      *v81 = 0;
      v82 = v15;
      swift_willThrow();
      sub_1D22D6D60(v15, v17);
      sub_1D28724D8();
      v83 = sub_1D2873CA8();
      v84 = v17;
      v85 = sub_1D2878A38();
      v86 = os_log_type_enabled(v83, v85);
      v158 = v0[23];
      v145 = v0[19];
      if (!v86)
      {

        sub_1D22D6D60(v82, v84);
        (*v151)(v158, v145);
LABEL_74:
        v1 = v152;
        goto LABEL_6;
      }

      v87 = v6;
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_1D226E000, v83, v85, "Cannot get image from sticker", v88, 2u);
      v89 = v88;
      v6 = v87;
      v5 = v168;
      MEMORY[0x1D38A3520](v89, -1, -1);

      sub_1D22D6D60(v82, v84);
      v1 = v152;
      (*v151)(v158, v145);
    }

    else
    {

      sub_1D22D6D60(v15, v17);
    }

LABEL_6:
    if (v169 == ++v2)
    {

      v164 = v6;
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
}

uint64_t sub_1D24B6100()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D24B6220@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  sub_1D2877D18();
  v3 = sub_1D2877D08();

  *(v2 + 16) = v3;
  *a1 = v2;
  return result;
}

void sub_1D24B6284()
{
  v0 = sub_1D28718F8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28718C8();
  sub_1D2871838();
  (*(v1 + 8))(v3, v0);
  v4 = sub_1D2878068();

  v5 = [objc_opt_self() emojiLocaleDataWithLocaleIdentifier_];

  if (v5)
  {
    qword_1ED8B0010 = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D24B63AC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2871158();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v29 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  aBlock = a2;
  v31 = a3;
  sub_1D2871128();
  sub_1D2871118();
  sub_1D2871138();
  v16 = *(v7 + 8);
  v16(v10, v6);
  v16(v13, v6);
  sub_1D22BD06C();
  v17 = sub_1D2878F48();
  v16(v15, v6);
  aBlock = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358);
  sub_1D238D968();
  sub_1D2877F68();

  v18 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v19 = sub_1D2878068();

  v20 = [v18 initWithString_];

  v21 = swift_allocObject();
  *(v21 + 16) = MEMORY[0x1E69E7CC0];
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = v20;
  [v23 length];
  v24 = swift_allocObject();
  v24[2] = a1;
  v24[3] = v21;
  v24[4] = v22;
  v34 = sub_1D24B83E8;
  v35 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1D27E0D28;
  v33 = &block_descriptor_16;
  v25 = _Block_copy(&aBlock);
  v26 = a1;
  sub_1D2870F78();
  sub_1D2870F78();

  CEMEnumerateEmojiTokensInStringWithBlock();
  _Block_release(v25);

  swift_beginAccess();
  [v23 length];

  swift_beginAccess();
  v27 = *(v21 + 16);
  sub_1D2870F68();

  return v27;
}

void *sub_1D24B674C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v31 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA210);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v31 - v11);
  v13 = type metadata accessor for CuratedPrompt();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - v18;
  result = CEMEmojiTokenGetString();
  if (result)
  {
    v21 = result;
    v22 = sub_1D2878108();
    sub_1D24B45EC(a5, v22, v23, v12);

    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {

      return sub_1D22BD238(v12, &qword_1EC6DA210);
    }

    sub_1D24B82C4(v12, v19, type metadata accessor for CuratedPrompt);
    sub_1D24B81FC(v19, v17, type metadata accessor for CuratedPrompt);
    swift_beginAccess();
    v24 = *(a6 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a6 + 16) = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_1D27CCA98(0, v24[2] + 1, 1, v24);
      *(a6 + 16) = v24;
    }

    v27 = v24[2];
    v26 = v24[3];
    if (v27 >= v26 >> 1)
    {
      v24 = sub_1D27CCA98(v26 > 1, v27 + 1, 1, v24);
    }

    v24[2] = v27 + 1;
    sub_1D24B82C4(v17, v24 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v27, type metadata accessor for CuratedPrompt);
    *(a6 + 16) = v24;
    swift_endAccess();

    sub_1D24B8264(v19, type metadata accessor for CuratedPrompt);
    result = swift_beginAccess();
    v28 = *(a7 + 16);
    v29 = __OFADD__(v28, v31);
    v30 = v28 + v31;
    if (!v29)
    {
      *(a7 + 16) = v30;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D24B6A60@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v181 = a1;
  v3 = sub_1D2873CB8();
  v174 = *(v3 - 1);
  v175 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v173 = v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2877D68();
  v170 = *(v5 - 8);
  v171 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v169 = v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2877CC8();
  v166 = *(v7 - 1);
  v167 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v168 = v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2871818();
  v179 = *(v9 - 8);
  v180 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v172 = v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D28780D8();
  v177 = *(v11 - 8);
  v178 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v165 = v156 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = v156 - v20;
  v22 = type metadata accessor for PlaygroundImage();
  v176 = *(v22 - 1);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v182 = v156 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v160 = v156 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v156 - v27;
  v29 = [v1 imageContent];
  v30 = sub_1D28716E8();
  v32 = v31;

  v33 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1D22D6CF8(v30, v32);
  v34 = sub_1D28716D8();
  v35 = [v33 initWithData_];

  sub_1D22D6D60(v30, v32);
  if (v35)
  {
    v36 = sub_1D2630BC0();
    v37 = &v28[v22[9]];
    *v37 = 0u;
    *(v37 + 1) = 0u;
    v38 = v22[10];
    v159 = xmmword_1D28809A0;
    *&v28[v38] = xmmword_1D28809A0;
    v183 = v28;
    v39 = v22[11];
    v40 = sub_1D2873AA8();
    v41 = *(v40 - 8);
    v42 = *(v41 + 56);
    v43 = &v183[v39];
    v44 = v183;
    v158 = v40;
    v157 = v42;
    v156[1] = v41 + 56;
    (v42)(v43, 1, 1);
    *v44 = v35;
    *(v44 + 8) = 2;
    [v35 imageOrientation];
    *(v44 + 24) = sub_1D2878C88();
    *(v44 + 16) = v36;
    *(v44 + 32) = 0;
    *(v44 + 40) = 0;
    *(v44 + v22[12]) = 0;
    v164 = v22;
    sub_1D2871808();
    sub_1D22D6D60(v30, v32);
    v45 = [v2 contentDescription];
    v161 = sub_1D28780A8();
    v163 = v46;

    v47 = [v2 contentIdentifier];
    sub_1D28780A8();

    sub_1D28717A8();

    v48 = [v2 contentIdentifier];
    v49 = sub_1D28780A8();
    v51 = v50;

    v184 = v49;
    v185 = v51;
    sub_1D28780C8();
    sub_1D22BD06C();
    v52 = sub_1D2878F78();
    (*(v177 + 8))(v13, v178);

    v53 = v2;
    if (v52 == 37)
    {
      v54 = [v2 contentIdentifier];
      sub_1D28780A8();

      v55 = sub_1D2691DF8(36);
      v57 = v56;
      v59 = v58;
      v61 = v60;

      MEMORY[0x1D38A0BC0](v55, v57, v59, v61);

      v62 = v165;
      sub_1D28717A8();

      sub_1D22BD238(v21, &qword_1EC6D8F70);
      sub_1D24B832C(v62, v21);
    }

    sub_1D22BD1D0(v21, v17, &qword_1EC6D8F70);
    v63 = v179;
    v64 = v180;
    v65 = (*(v179 + 48))(v17, 1, v180);
    v162 = v21;
    if (v65 == 1)
    {
      sub_1D22BD238(v17, &qword_1EC6D8F70);
      v170 = 0;
      v171 = 0;
      v177 = 0;
      v178 = 0;
LABEL_6:
      v66 = &off_1E83FF000;
LABEL_12:
      v81 = [v53 contentIdentifier];
      v82 = sub_1D28780A8();
      v179 = v83;
      v180 = v82;

      v84 = [v53 v66[296]];
      v174 = sub_1D28780A8();
      v86 = v85;

      v175 = type metadata accessor for PlaygroundImage;
      v87 = v182;
      sub_1D24B81FC(v44, v182, type metadata accessor for PlaygroundImage);
      v88 = type metadata accessor for CuratedPrompt();
      v89 = v88[8];
      v90 = v176[7];
      v91 = v181;
      v92 = v164;
      v90(v181 + v89, 1, 1, v164);
      v93 = v88[9];
      v90(v91 + v93, 1, 1, v92);
      v94 = (v91 + v88[11]);
      *v94 = 0;
      v94[1] = 0;
      v176 = (v91 + v88[12]);
      v95 = v91 + v88[23];
      v96 = (v91 + v88[24]);
      *v96 = 0;
      v96[1] = 0;
      *(v91 + v88[25]) = 0;
      *(v91 + v88[26]) = 0;
      v97 = v174;
      v91[2] = v174;
      v91[3] = v86;
      v98 = v179;
      *v91 = v180;
      v91[1] = v98;
      v91[4] = v97;
      v91[5] = v86;
      sub_1D2870F68();
      sub_1D22BD238(v91 + v89, &unk_1EC6DE5A0);
      v99 = v175;
      sub_1D24B81FC(v87, v91 + v89, v175);
      v90(v91 + v89, 0, 1, v92);
      sub_1D22BD238(v91 + v93, &unk_1EC6DE5A0);
      sub_1D24B81FC(v87, v91 + v93, v99);
      v90(v91 + v93, 0, 1, v92);
      v100 = v170;
      v101 = v171;
      v102 = v177;
      v103 = v178;
      *v95 = v170;
      *(v95 + 1) = v102;
      *(v95 + 2) = v101;
      *(v95 + 3) = v103;
      v104 = v161;
      v105 = v163;
      *(v95 + 4) = v161;
      *(v95 + 5) = v105;
      v95[48] = 1;
      v106 = v176;
      *v176 = 0;
      v106[1] = 0;
      v107 = (v91 + v88[13]);
      *v107 = 0;
      v107[1] = 0;
      if (v103)
      {
        v108 = (v91 + v88[14]);
        *v108 = v101;
        v108[1] = v103;
        v109 = (v91 + v88[17]);
        *v109 = 0;
        v109[1] = 0;
        v110 = (v91 + v88[15]);
        *v110 = v101;
        v110[1] = v103;
        v111 = (v91 + v88[18]);
        *v111 = 0;
        v111[1] = 0;
        swift_bridgeObjectRetain_n();
        v112 = v103;
      }

      else
      {
        v112 = v102;
        v113 = (v91 + v88[14]);
        if (v102)
        {
          *v113 = v100;
          v113[1] = v102;
          v114 = (v91 + v88[17]);
          *v114 = 0;
          v114[1] = 0;
          v115 = (v91 + v88[15]);
          *v115 = v100;
          v115[1] = v102;
          v116 = (v91 + v88[18]);
          *v116 = 0;
          v116[1] = 0;
          swift_bridgeObjectRetain_n();
          v101 = v100;
        }

        else
        {
          *v113 = v104;
          v113[1] = v105;
          v134 = (v91 + v88[17]);
          *v134 = 0;
          v134[1] = 0;
          v135 = (v91 + v88[15]);
          *v135 = v104;
          v135[1] = v105;
          v136 = (v91 + v88[18]);
          *v136 = 0;
          v136[1] = 0;
          swift_bridgeObjectRetain_n();
          v101 = v104;
          v112 = v105;
        }
      }

      v137 = v162;
      v138 = (v91 + v88[16]);
      *v138 = v101;
      v138[1] = v112;
      v139 = (v91 + v88[19]);
      *v139 = 0;
      v139[1] = 0;
      *(v91 + v88[10]) = 0;
      *(v91 + v88[21]) = 1;
      *(v91 + v88[20]) = 0;
      v140 = qword_1ED8A14E8;
      sub_1D2870F68();
      if (v140 != -1)
      {
        swift_once();
      }

      v91[6] = qword_1ED8B0138;
      v141 = qword_1ED89E0E8;
      sub_1D2870F78();
      if (v141 != -1)
      {
        swift_once();
      }

      v142 = qword_1ED8B0058;
      sub_1D24B8264(v182, type metadata accessor for PlaygroundImage);
      sub_1D22BD238(v137, &qword_1EC6D8F70);
      *(v91 + v88[22]) = v142;
      sub_1D24B8264(v183, type metadata accessor for PlaygroundImage);
      return (*(*(v88 - 1) + 56))(v91, 0, 1, v88);
    }

    v165 = v53;
    v75 = v172;
    (*(v63 + 32))(v172, v17, v64);
    (*(v166 + 104))(v168, *MEMORY[0x1E69D4638], v167);
    sub_1D2877CE8();
    swift_allocObject();
    v76 = sub_1D2877CB8();
    v78 = v170;
    v77 = v171;
    v79 = v169;
    (*(v170 + 104))(v169, *MEMORY[0x1E69D4718], v171);
    v80 = sub_1D2877CD8();
    v166 = v76;
    v167 = v80;
    (*(v78 + 8))(v79, v77);
    if (!v167)
    {
      (*(v63 + 8))(v75, v180);

      v170 = 0;
      v171 = 0;
      v177 = 0;
      v178 = 0;
      v66 = &off_1E83FF000;
      v53 = v165;
      goto LABEL_12;
    }

    v117 = sub_1D2877D58();
    v177 = v118;
    if (v118)
    {
      v119 = v117;
    }

    else
    {
      v119 = 0;
    }

    v170 = v119;
    v171 = sub_1D2877DE8();
    v178 = v120;
    v121 = sub_1D2877DD8();
    v122 = v121;
    v53 = v165;
    if (v121 >> 62)
    {
LABEL_47:
      v123 = sub_1D2879368();
      if (v123)
      {
LABEL_22:
        v124 = 0;
        v168 = (v122 & 0xFFFFFFFFFFFFFF8);
        v169 = (v122 & 0xC000000000000001);
        while (1)
        {
          if (v169)
          {
            v125 = MEMORY[0x1D38A1C30](v124, v122);
          }

          else
          {
            if (v124 >= *(v168 + 2))
            {
              goto LABEL_46;
            }

            v125 = *(v122 + 8 * v124 + 32);
          }

          v126 = v125;
          v44 = v124 + 1;
          if (__OFADD__(v124, 1))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v127 = v53;
          v128 = sub_1D2877DB8();
          v130 = v129;
          if (v128 == sub_1D2877D78() && v130 == v131)
          {
            break;
          }

          v132 = sub_1D2879618();

          if (v132)
          {
            goto LABEL_42;
          }

          ++v124;
          v133 = v44 == v123;
          v44 = v183;
          v53 = v127;
          if (v133)
          {
            goto LABEL_48;
          }
        }

LABEL_42:
        v53 = v127;

        v143 = sub_1D2877D98();
        v145 = v144;
        v146 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
        sub_1D22D6CF8(v143, v145);
        v147 = sub_1D28716D8();
        v148 = [v146 initWithData_];

        sub_1D22D6D60(v143, v145);
        v44 = v183;
        v149 = v164;
        v150 = v172;
        if (v148)
        {
          v151 = sub_1D2630BC0();
          v152 = v160;
          v153 = &v160[v149[9]];
          *v153 = 0u;
          *(v153 + 1) = 0u;
          *(v152 + v149[10]) = v159;
          v157(v152 + v149[11], 1, 1, v158);
          *v152 = v148;
          *(v152 + 8) = 2;
          v154 = v148;
          [v154 imageOrientation];
          *(v152 + 24) = sub_1D2878C88();
          *(v152 + 16) = v151;
          *(v152 + 32) = 0;
          *(v152 + 40) = 0;
          *(v152 + v149[12]) = 0;
          sub_1D2871808();

          sub_1D22D6D60(v143, v145);
          (*(v179 + 8))(v150, v180);
          sub_1D24B8264(v44, type metadata accessor for PlaygroundImage);
          sub_1D24B82C4(v152, v44, type metadata accessor for PlaygroundImage);
          goto LABEL_6;
        }

        sub_1D23EE050();
        v67 = swift_allocError();
        *v155 = 0;
        swift_willThrow();

        sub_1D22D6D60(v143, v145);
        (*(v179 + 8))(v150, v180);
        sub_1D22BD238(v162, &qword_1EC6D8F70);
        sub_1D24B8264(v44, type metadata accessor for PlaygroundImage);
        goto LABEL_8;
      }
    }

    else
    {
      v123 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v123)
      {
        goto LABEL_22;
      }
    }

LABEL_48:

    (*(v179 + 8))(v172, v180);
    goto LABEL_6;
  }

  sub_1D23EE050();
  v67 = swift_allocError();
  *v68 = 0;
  swift_willThrow();
  sub_1D22D6D60(v30, v32);
LABEL_8:
  v69 = v173;
  sub_1D2872658();
  v70 = sub_1D2873CA8();
  v71 = sub_1D2878A18();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_1D226E000, v70, v71, "Can not convert image glyph into an image", v72, 2u);
    MEMORY[0x1D38A3520](v72, -1, -1);
  }

  (*(v174 + 8))(v69, v175);
  v73 = type metadata accessor for CuratedPrompt();
  return (*(*(v73 - 8) + 56))(v181, 1, 1, v73);
}

uint64_t sub_1D24B7C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA210);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (v24 - v8);
  v10 = type metadata accessor for CuratedPrompt();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v24 - v15;
  sub_1D22BD1D0(a1, v25, &qword_1EC6E1900);
  if (!v26)
  {
    return sub_1D22BD238(v25, &qword_1EC6E1900);
  }

  sub_1D24B839C();
  result = swift_dynamicCast();
  if (result)
  {
    v18 = v24[1];
    sub_1D24B6A60(v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {

      return sub_1D22BD238(v9, &qword_1EC6DA210);
    }

    else
    {
      sub_1D24B82C4(v9, v16, type metadata accessor for CuratedPrompt);
      sub_1D24B81FC(v16, v14, type metadata accessor for CuratedPrompt);
      v19 = *a5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a5 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_1D27CCA98(0, v19[2] + 1, 1, v19);
        *a5 = v19;
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        *a5 = sub_1D27CCA98(v21 > 1, v22 + 1, 1, v19);
      }

      sub_1D24B8264(v16, type metadata accessor for CuratedPrompt);
      v23 = *a5;
      v23[2] = v22 + 1;
      return sub_1D24B82C4(v14, v23 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v22, type metadata accessor for CuratedPrompt);
    }
  }

  return result;
}

uint64_t sub_1D24B7F54()
{
  v0 = sub_1D2873CB8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D2877CC8();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 104))(&v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D4638], v5);
  sub_1D2877CE8();
  swift_allocObject();
  sub_1D2877CB8();
  v8 = sub_1D2877CD8();
  if (v8)
  {
    v13 = v8;

    return v13;
  }

  else
  {
    sub_1D2872658();
    v9 = sub_1D2873CA8();
    v10 = sub_1D2878A18();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D226E000, v9, v10, "Failed to load sticker", v11, 2u);
      MEMORY[0x1D38A3520](v11, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }
}

unint64_t sub_1D24B81A4()
{
  result = qword_1ED89CFD8;
  if (!qword_1ED89CFD8)
  {
    sub_1D2877D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89CFD8);
  }

  return result;
}

uint64_t sub_1D24B81FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D24B8264(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D24B82C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D24B832C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D24B839C()
{
  result = qword_1EC6DC5F8;
  if (!qword_1EC6DC5F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC6DC5F8);
  }

  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D24B840C()
{
  sub_1D24028B0();

  return sub_1D2875638();
}

uint64_t sub_1D24B8454@<X0>(uint64_t a1@<X8>)
{
  v18[2] = a1;
  v1 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v18[1] = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = sub_1D28714D8();
  v3 = *(v18[0] - 8);
  MEMORY[0x1EEE9AC00](v18[0]);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  v10 = sub_1D2871F38();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D2878028();
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1D2878018();
  sub_1D2878008();
  sub_1D2871F58();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D22BD238(v9, &qword_1EC6D9D58);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_1D2871ED8();
    (*(v11 + 8))(v13, v10);
  }

  sub_1D2877FF8();

  sub_1D2878008();
  sub_1D2878038();
  if (qword_1ED89E0F0 != -1)
  {
    swift_once();
  }

  v15 = v18[0];
  v16 = __swift_project_value_buffer(v18[0], qword_1ED8B0060);
  (*(v3 + 16))(v5, v16, v15);
  sub_1D28718C8();
  return sub_1D2871508();
}

uint64_t sub_1D24B883C@<X0>(uint64_t a1@<X8>)
{
  v18[2] = a1;
  v1 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v18[1] = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = sub_1D28714D8();
  v3 = *(v18[0] - 8);
  MEMORY[0x1EEE9AC00](v18[0]);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  v10 = sub_1D2871F38();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D2878028();
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1D2878018();
  sub_1D2878008();
  sub_1D2871F58();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D22BD238(v9, &qword_1EC6D9D58);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_1D2871ED8();
    (*(v11 + 8))(v13, v10);
  }

  sub_1D2877FF8();

  sub_1D2878008();
  sub_1D2878038();
  if (qword_1ED89E0F0 != -1)
  {
    swift_once();
  }

  v15 = v18[0];
  v16 = __swift_project_value_buffer(v18[0], qword_1ED8B0060);
  (*(v3 + 16))(v5, v16, v15);
  sub_1D28718C8();
  return sub_1D2871508();
}

uint64_t sub_1D24B8C2C@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v61 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D28714D8();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v53 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v53 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  v17 = sub_1D2871F38();
  v63 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v53 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v54 = &v53 - v27;
  v28 = sub_1D2878028();
  MEMORY[0x1EEE9AC00](v28 - 8);
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  v32 = type metadata accessor for PhotoSharingViewConfiguration(0);
  v33 = v32[5];
  v65 = v1;
  if (*(v1 + v33 + 8))
  {
    sub_1D2878018();
    sub_1D2878008();
    sub_1D2877FF8();
    sub_1D2878008();
    sub_1D2871F58();
    v34 = v63;
    if ((*(v63 + 48))(v16, 1, v17) == 1)
    {
      sub_1D22BD238(v16, &qword_1EC6D9D58);
    }

    else
    {
      v41 = v54;
      (*(v34 + 32))(v54, v16, v17);
      sub_1D2871ED8();
      (*(v34 + 8))(v41, v17);
    }

    goto LABEL_20;
  }

  v36 = v55;
  v35 = v56;
  v37 = v57;
  v38 = v17;
  v39 = (v63 + 48);
  if (*(v65 + v32[6]) != 1)
  {
    if (*(v65 + v32[7]) == 1)
    {
      sub_1D2878018();
      sub_1D2878008();
      v42 = v35;
      sub_1D2871F58();
      if ((*v39)(v35, 1, v17) != 1)
      {
        v48 = v63;
        (*(v63 + 32))(v22, v42, v17);
        sub_1D2871ED8();
        (*(v48 + 8))(v22, v17);
        goto LABEL_20;
      }

      v43 = v35;
    }

    else
    {
      sub_1D2878018();
      sub_1D2878008();
      v47 = v37;
      sub_1D2871F58();
      if ((*v39)(v37, 1, v17) != 1)
      {
        v49 = v63;
        (*(v63 + 32))(v19, v47, v17);
        sub_1D2871ED8();
        (*(v49 + 8))(v19, v17);
        goto LABEL_20;
      }

      v43 = v37;
    }

    sub_1D22BD238(v43, &qword_1EC6D9D58);
LABEL_20:
    sub_1D2877FF8();

    sub_1D2878008();
    sub_1D2878038();
    if (qword_1ED89E0F0 != -1)
    {
      swift_once();
    }

    v50 = v59;
    v51 = __swift_project_value_buffer(v59, qword_1ED8B0060);
    (*(v58 + 16))(v64, v51, v50);
    goto LABEL_23;
  }

  v40 = v64;
  sub_1D2878018();
  sub_1D2878008();
  sub_1D2871F58();
  if ((*v39)(v36, 1, v38) == 1)
  {
    sub_1D22BD238(v36, &qword_1EC6D9D58);
  }

  else
  {
    v44 = v63;
    (*(v63 + 32))(v25, v36, v38);
    sub_1D2871ED8();
    (*(v44 + 8))(v25, v38);
  }

  sub_1D2877FF8();

  sub_1D2878008();
  sub_1D2878038();
  if (qword_1ED89E0F0 != -1)
  {
    swift_once();
  }

  v45 = v59;
  v46 = __swift_project_value_buffer(v59, qword_1ED8B0060);
  (*(v58 + 16))(v40, v46, v45);
LABEL_23:
  sub_1D28718C8();
  return sub_1D2871508();
}

uint64_t sub_1D24B957C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v58 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v45 - v6;
  v7 = sub_1D28750A8();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhotoSharingConfirmationViewModifier(0);
  v11 = v10 - 8;
  v52 = *(v10 - 8);
  v12 = *(v52 + 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = sub_1D28714E8();
  v48 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6C0);
  v16 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v18 = &v45 - v17;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC628);
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - v21;
  v23 = *(v11 + 28);
  v47 = a1;
  v45 = a1 + v23;
  sub_1D24B883C(v15);
  sub_1D24BA534(a1, &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (v52[80] + 16) & ~v52[80];
  v25 = swift_allocObject();
  v26 = v48;
  sub_1D24BA598(&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v59 = v15;
  sub_1D2877368();
  v46 = *(v26 + 8);
  v46(v15, v13);
  sub_1D2875098();
  sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
  v52 = v22;
  v27 = v49;
  sub_1D2876A28();
  (*(v50 + 8))(v9, v51);
  (*(v16 + 8))(v18, v27);
  v28 = (v47 + *(type metadata accessor for PhotoSharingConfirmationParams(0) + 40));
  v29 = *v28;
  if (*v28)
  {
    v30 = v28[1];
    v31 = type metadata accessor for PhotoSharingViewConfiguration(0);
    (*(v26 + 16))(v15, v45 + *(v31 + 32), v13);
    v32 = swift_allocObject();
    v51 = &v45;
    *(v32 + 16) = v29;
    *(v32 + 24) = v30;
    MEMORY[0x1EEE9AC00](v32);
    *(&v45 - 2) = v15;
    sub_1D23415B4(v29, v30);
    sub_1D2870F78();
    sub_1D2877368();
    sub_1D22D7900(v29, v30);
    v46(v15, v13);
    v33 = v56;
    (*(v16 + 32))(v56, v18, v27);
    v34 = 0;
  }

  else
  {
    v34 = 1;
    v33 = v56;
  }

  (*(v16 + 56))(v33, v34, 1, v27);
  v36 = v53;
  v35 = v54;
  v37 = *(v53 + 16);
  v38 = v52;
  v39 = v55;
  v37(v54, v52, v55);
  v40 = v58;
  sub_1D24BA750(v33, v58);
  v41 = v57;
  v37(v57, v35, v39);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC630);
  sub_1D24BA750(v40, &v41[*(v42 + 48)]);
  sub_1D22BD238(v33, &qword_1EC6DC620);
  v43 = *(v36 + 8);
  v43(v38, v39);
  sub_1D22BD238(v40, &qword_1EC6DC620);
  return (v43)(v35, v39);
}

uint64_t sub_1D24B9C68@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D28714E8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotoSharingConfirmationViewModifier(0);
  sub_1D24B8C2C(v4);
  result = sub_1D2876688();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_1D24B9D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = a1;
  v3 = sub_1D28714E8();
  v24 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  sub_1D24B8454(&v19 - v8);
  v10 = (v2 + *(type metadata accessor for PhotoSharingConfirmationParams(0) + 32));
  v11 = *v10;
  v22 = v10[1];
  v23 = v11;
  v21 = *(v10 + 16);
  v28 = v2;
  v27 = v2;
  (*(v4 + 16))(v6, v9, v3);
  v12 = sub_1D2876688();
  v19 = v14;
  v20 = v13;
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC618);
  sub_1D22BB9D8(&qword_1ED89D440, &qword_1EC6DC610);
  sub_1D22BB9D8(&qword_1ED89D018, &qword_1EC6DC618);
  v17 = v20;
  sub_1D2876AE8();
  sub_1D22ED6E0(v12, v17, v16 & 1);

  return (*(v4 + 8))(v9, v24);
}

uint64_t sub_1D24B9FA8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D2872008();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D24BA014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D24BA1A0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void sub_1D24BA0C0()
{
  sub_1D2872008();
  if (v0 <= 0x3F)
  {
    sub_1D24BA388(319, qword_1ED8A6D28, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D28714E8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D24BA1A0()
{
  result = qword_1EC6DC600;
  if (!qword_1EC6DC600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9A30);
    sub_1D2419DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC600);
  }

  return result;
}

void sub_1D24BA26C()
{
  sub_1D2872008();
  if (v0 <= 0x3F)
  {
    sub_1D24BA388(319, qword_1ED8A6D28, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D24BA388(319, &qword_1ED89D080, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      if (v2 <= 0x3F)
      {
        sub_1D22BFAB4();
        if (v3 <= 0x3F)
        {
          sub_1D24BA3D8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D24BA388(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D24BA3D8()
{
  if (!qword_1ED89CBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC608);
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89CBC8);
    }
  }
}

uint64_t sub_1D24BA484()
{
  result = type metadata accessor for PhotoSharingConfirmationParams(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PhotoSharingViewConfiguration(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D24BA534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoSharingConfirmationViewModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24BA598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoSharingConfirmationViewModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24BA5FC()
{
  v1 = *(type metadata accessor for PhotoSharingConfirmationViewModifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for PhotoSharingConfirmationParams(0);
  return (*(v0 + *(v3 + 36) + v2))();
}

uint64_t sub_1D24BA670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D28714E8();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  result = sub_1D2876688();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_1D24BA750(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for HorizontalScrollViewRealignment()
{
  result = qword_1ED89ED58;
  if (!qword_1ED89ED58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D24BA838()
{
  result = sub_1D2875008();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D24BA8D8@<X0>(void *a1@<X8>)
{
  result = sub_1D2874D48();
  *a1 = v3;
  return result;
}

uint64_t sub_1D24BA904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for HorizontalScrollViewRealignment();
  if (*(a3 + *(result + 24)) == 1)
  {
    return sub_1D2874FE8();
  }

  return result;
}

uint64_t sub_1D24BA95C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1D24BAABC(v4, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_1D24BAB20(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC638);
  sub_1D24BAC04();
  sub_1D2403664();
  sub_1D2876CA8();
}

uint64_t sub_1D24BAABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizontalScrollViewRealignment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24BAB20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizontalScrollViewRealignment();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24BAB84(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for HorizontalScrollViewRealignment() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D24BA904(a1, a2, v6);
}

unint64_t sub_1D24BAC04()
{
  result = qword_1ED89D460;
  if (!qword_1ED89D460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D460);
  }

  return result;
}

uint64_t sub_1D24BAC68()
{
  swift_getAssociatedTypeWitness();
  sub_1D2878F18();
  v0 = sub_1D2877538();
  return MEMORY[0x1D389FF60](v0);
}

void sub_1D24BACE0()
{
  sub_1D28784C8();
  if (v0 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_1D2878F18();
    sub_1D2877538();
    if (v1 <= 0x3F)
    {
      sub_1D22BFAB4();
      if (v2 <= 0x3F)
      {
        sub_1D24BA3D8();
        if (v3 <= 0x3F)
        {
          sub_1D24BB2F4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1D24BAE10(uint64_t *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  if (v7 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v4 + 80);
  v11 = *(v4 + 64);
  if (v6)
  {
    v12 = 6;
  }

  else
  {
    v12 = 7;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 | 7;
  if (v9 >= a2)
  {
    goto LABEL_35;
  }

  v14 = ((((((((v12 + v11 - (((-17 - v10) | v10) + ((-9 - v10) | v13))) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  v15 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2 - v9 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_35;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v14)) == 0)
  {
LABEL_35:
    if (v9 == 0x7FFFFFFF)
    {
      v23 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v23) = -1;
      }

      return (v23 + 1);
    }

    else
    {
      v24 = (*(v5 + 48))((v10 + ((((a1 + v13 + 8) & ~v13) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v10);
      if (v24 >= 2)
      {
        return v24 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    v22 = *a1;
  }

  else
  {
    v22 = 0;
  }

  return v9 + (v22 | v21) + 1;
}

void sub_1D24BB018(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  v6 = 0;
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v9;
  }

  if (v9 >= 0)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = (v10 + 16) & ~v10;
  if (!v8)
  {
    ++v11;
  }

  v15 = v14 + v11;
  v16 = ((((((((v14 + v11 + ((v10 + 8) & ~(v10 | 7))) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 < a3)
  {
    if (((((((((v14 + v11 + ((v10 + 8) & ~(v10 | 7))) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a3 - v13 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v6 = v18;
    }

    else
    {
      v6 = 0;
    }
  }

  if (a2 > v13)
  {
    if (v16)
    {
      v19 = 1;
    }

    else
    {
      v19 = a2 - v13;
    }

    if (v16)
    {
      v20 = ~v13 + a2;
      bzero(a1, v16);
      *a1 = v20;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *(a1 + v16) = v19;
      }

      else
      {
        *(a1 + v16) = v19;
      }
    }

    else if (v6)
    {
      *(a1 + v16) = v19;
    }

    return;
  }

  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *(a1 + v16) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    *(a1 + v16) = 0;
LABEL_40:
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!v6)
  {
    goto LABEL_40;
  }

  *(a1 + v16) = 0;
  if (!a2)
  {
    return;
  }

LABEL_41:
  if (v13 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v21 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v21 = a2 - 1;
    }

    *a1 = v21;
  }

  else
  {
    v22 = ((a1 + (v10 | 7) + 8) & ~(v10 | 7));
    if (v12 >= a2)
    {
      v26 = *(v7 + 56);

      v26((v10 + 8 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v10, a2 + 1);
    }

    else
    {
      if (v15 <= 3)
      {
        v23 = ~(-1 << (8 * v15));
      }

      else
      {
        v23 = -1;
      }

      if (v15)
      {
        v24 = v23 & (~v12 + a2);
        if (v15 <= 3)
        {
          v25 = v15;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v15);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }
}

void sub_1D24BB2F4()
{
  if (!qword_1ED89D190)
  {
    v0 = sub_1D2877338();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89D190);
    }
  }
}

uint64_t sub_1D24BB390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v55 = v4;
  v56 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[5];
  v58 = v4[4];
  v59 = v5;
  v57 = v7;
  v8 = v4[6];
  v64 = v5;
  v65 = v6;
  v9 = v6;
  v66 = v58;
  v67 = v7;
  v68 = v8;
  v10 = type metadata accessor for PagingContentView();
  WitnessTable = swift_getWitnessTable();
  v64 = v10;
  v65 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v64 = v10;
  v65 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  v12 = sub_1D2874398();
  v13 = swift_getWitnessTable();
  v64 = v12;
  v65 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v53 = v9;
  v54 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = v12;
  v65 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v64 = OpaqueTypeMetadata2;
  v65 = AssociatedTypeWitness;
  v66 = OpaqueTypeConformance2;
  v67 = AssociatedConformanceWitness;
  v18 = swift_getOpaqueTypeMetadata2();
  v64 = OpaqueTypeMetadata2;
  v65 = AssociatedTypeWitness;
  v66 = OpaqueTypeConformance2;
  v67 = AssociatedConformanceWitness;
  v19 = swift_getOpaqueTypeConformance2();
  v64 = v18;
  v65 = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for CGPoint(255);
  v22 = v21;
  v64 = v18;
  v65 = v19;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = sub_1D24BE2F4(&qword_1EC6DC640, type metadata accessor for CGPoint);
  v64 = v20;
  v65 = v22;
  v66 = v23;
  v67 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v64 = v20;
  v65 = v22;
  v66 = v23;
  v67 = v24;
  v26 = swift_getOpaqueTypeConformance2();
  v64 = v25;
  v65 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v28 = sub_1D28760A8();
  v64 = v25;
  v65 = v26;
  v29 = swift_getOpaqueTypeConformance2();
  v64 = v27;
  v65 = v28;
  v30 = MEMORY[0x1E697CA40];
  v66 = v29;
  v67 = MEMORY[0x1E697CA40];
  v31 = swift_getOpaqueTypeMetadata2();
  v64 = v27;
  v65 = v28;
  v66 = v29;
  v67 = v30;
  v32 = swift_getOpaqueTypeConformance2();
  v64 = v31;
  v65 = v32;
  v52[1] = swift_getOpaqueTypeMetadata2();
  v64 = v31;
  v65 = v32;
  v52[0] = swift_getOpaqueTypeConformance2();
  sub_1D28751A8();
  sub_1D2876248();
  v33 = sub_1D2874F68();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = v52 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = v52 - v39;
  v41 = v55;
  v42 = v56;
  (*(v2 + 16))(v56, v60, v55, v38);
  v43 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v44 = swift_allocObject();
  v45 = v53;
  *(v44 + 2) = v59;
  *(v44 + 3) = v45;
  v46 = v57;
  *(v44 + 4) = v58;
  *(v44 + 5) = v46;
  *(v44 + 6) = v54;
  (*(v2 + 32))(&v44[v43], v42, v41);
  v64 = sub_1D2875198();
  v65 = v47;
  v48 = swift_getWitnessTable();
  sub_1D2876CC8();

  v49 = sub_1D24BE2F4(&qword_1ED89D2B0, MEMORY[0x1E697CBE8]);
  v62 = v48;
  v63 = v49;
  swift_getWitnessTable();
  sub_1D245980C(v36);
  v50 = *(v34 + 8);
  v50(v36, v33);
  sub_1D245980C(v40);
  return (v50)(v40, v33);
}

uint64_t sub_1D24BBA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v159 = a2;
  v149 = a1;
  v152 = a8;
  v151 = sub_1D2875008();
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v147 = v13;
  v148 = v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_1D28760A8();
  v146 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v145 = v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1D2876038();
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v142 = v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = a3;
  v170 = a4;
  v156 = a3;
  v171 = a5;
  v172 = a6;
  v157 = a5;
  v162 = a6;
  v173 = a7;
  v137 = type metadata accessor for PagingView();
  v141 = *(v137 - 8);
  v158 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v140 = v104 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1D2878F18();
  v135 = sub_1D2877538();
  v133 = *(v135 - 1);
  MEMORY[0x1EEE9AC00](v135);
  v124 = v104 - v18;
  v169 = a3;
  v170 = a4;
  v153 = a4;
  v171 = a5;
  v172 = a6;
  v173 = a7;
  v161 = a7;
  v19 = type metadata accessor for PagingContentView();
  WitnessTable = swift_getWitnessTable();
  v169 = v19;
  v170 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v169 = v19;
  v170 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_1D2874398();
  v119 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v104 - v22;
  v24 = swift_getWitnessTable();
  v169 = v21;
  v170 = v24;
  v114 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v115 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v104 - v26;
  v169 = v21;
  v170 = v24;
  v28 = swift_getOpaqueTypeConformance2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v169 = v25;
  v170 = AssociatedTypeWitness;
  v109 = AssociatedTypeWitness;
  v171 = v28;
  v172 = AssociatedConformanceWitness;
  v108 = v28;
  v30 = AssociatedConformanceWitness;
  v107 = AssociatedConformanceWitness;
  v31 = swift_getOpaqueTypeMetadata2();
  v116 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v154 = v104 - v32;
  v169 = v25;
  v170 = AssociatedTypeWitness;
  v171 = v28;
  v172 = v30;
  v33 = swift_getOpaqueTypeConformance2();
  v169 = v31;
  v170 = v33;
  v110 = v31;
  v34 = v33;
  v111 = v33;
  v35 = swift_getOpaqueTypeMetadata2();
  v120 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v155 = v104 - v36;
  type metadata accessor for CGPoint(255);
  v38 = v37;
  v169 = v31;
  v170 = v34;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = sub_1D24BE2F4(&qword_1EC6DC640, type metadata accessor for CGPoint);
  v169 = v35;
  v170 = v38;
  v41 = v35;
  v112 = v35;
  v104[1] = v38;
  v171 = v39;
  v172 = v40;
  v42 = v39;
  v113 = v39;
  v43 = v40;
  v106 = v40;
  v44 = swift_getOpaqueTypeMetadata2();
  v130 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v105 = v104 - v45;
  v169 = v41;
  v170 = v38;
  v171 = v42;
  v172 = v43;
  v46 = swift_getOpaqueTypeConformance2();
  v169 = v44;
  v170 = v46;
  v47 = swift_getOpaqueTypeMetadata2();
  v125 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v123 = v104 - v48;
  v131 = v44;
  v169 = v44;
  v170 = v46;
  v122 = v46;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v160;
  v169 = v47;
  v170 = v160;
  v51 = MEMORY[0x1E697CA40];
  v171 = v49;
  v172 = MEMORY[0x1E697CA40];
  v52 = swift_getOpaqueTypeMetadata2();
  v136 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v132 = v104 - v53;
  v126 = v47;
  v169 = v47;
  v170 = v50;
  v121 = v49;
  v171 = v49;
  v172 = v51;
  v54 = swift_getOpaqueTypeConformance2();
  v139 = v52;
  v169 = v52;
  v170 = v54;
  v129 = v54;
  v138 = swift_getOpaqueTypeMetadata2();
  v134 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v127 = v104 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v128 = v104 - v57;
  sub_1D28762F8();
  v58 = v156;
  v59 = v153;
  v163 = v156;
  v164 = v153;
  v165 = v157;
  v166 = v162;
  v60 = v159;
  v167 = v161;
  v168 = v159;
  sub_1D24CC0AC();
  v61 = v137;
  sub_1D2876988();
  (*(v119 + 8))(v23, v21);
  v62 = v124;
  sub_1D24BCF48(v61, v124);
  sub_1D2876998();
  (*(v133 + 8))(v62, v135);
  (*(v115 + 8))(v27, v25);
  v63 = v141;
  v135 = *(v141 + 16);
  v64 = v140;
  v65 = v61;
  (v135)(v140, v60, v61);
  v66 = (*(v63 + 80) + 56) & ~*(v63 + 80);
  v67 = swift_allocObject();
  v67[2] = v58;
  v67[3] = v59;
  v68 = v157;
  v69 = v161;
  v70 = v162;
  v67[4] = v157;
  v67[5] = v70;
  v67[6] = v69;
  v141 = *(v63 + 32);
  v71 = v64;
  (v141)(v67 + v66, v64, v61);
  v72 = v110;
  v73 = v154;
  sub_1D2876B98();

  (*(v116 + 8))(v73, v72);
  swift_checkMetadataState();
  v74 = v65;
  (v135)(v71, v159, v65);
  v75 = v105;
  v76 = swift_allocObject();
  v77 = v153;
  v76[2] = v156;
  v76[3] = v77;
  v78 = v161;
  v79 = v162;
  v76[4] = v68;
  v76[5] = v79;
  v76[6] = v78;
  (v141)(v76 + v66, v71, v74);
  v80 = v112;
  v81 = v155;
  sub_1D2876CA8();

  v82 = v142;
  (*(v120 + 8))(v81, v80);
  sub_1D2875B68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBDD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F550;
  LOBYTE(v80) = sub_1D2876318();
  *(inited + 32) = v80;
  v84 = sub_1D28762F8();
  *(inited + 33) = v84;
  sub_1D2876308();
  sub_1D2876308();
  if (sub_1D2876308() != v80)
  {
    sub_1D2876308();
  }

  sub_1D2876308();
  if (sub_1D2876308() != v84)
  {
    sub_1D2876308();
  }

  v85 = v132;
  v86 = v123;
  v87 = v131;
  sub_1D2876A48();
  (*(v143 + 8))(v82, v144);
  (*(v130 + 8))(v75, v87);
  v88 = v145;
  sub_1D2876098();
  v89 = v126;
  v90 = v160;
  sub_1D2876C38();
  (*(v146 + 8))(v88, v90);
  (*(v125 + 8))(v86, v89);
  if (qword_1ED89DF90 != -1)
  {
    swift_once();
  }

  v91 = sub_1D2874558();
  __swift_project_value_buffer(v91, qword_1ED8B0040);
  v92 = v150;
  v93 = v148;
  v94 = v151;
  (*(v150 + 16))(v148, v149, v151);
  v95 = (*(v92 + 80) + 16) & ~*(v92 + 80);
  v96 = swift_allocObject();
  (*(v92 + 32))(v96 + v95, v93, v94);
  v97 = v127;
  v98 = v139;
  v99 = v129;
  sub_1D2876E98();

  (*(v136 + 8))(v85, v98);
  v169 = v98;
  v170 = v99;
  swift_getOpaqueTypeConformance2();
  v100 = v128;
  v101 = v138;
  sub_1D245980C(v97);
  v102 = *(v134 + 8);
  v102(v97, v101);
  sub_1D245980C(v100);
  return (v102)(v100, v101);
}

uint64_t sub_1D24BCC4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v37 = a7;
  v38 = a2;
  v30[2] = a2;
  v30[3] = a3;
  v39 = a3;
  v40 = a4;
  v30[1] = a4;
  v41 = a5;
  v42 = a6;
  v13 = type metadata accessor for PagingContentView();
  v36 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v31 = v30 - v14;
  WitnessTable = swift_getWitnessTable();
  v38 = v13;
  v39 = WitnessTable;
  v33 = WitnessTable;
  v34 = MEMORY[0x1E697D1A0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v32 = v30 - v20;
  v21 = *a1;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  v22 = type metadata accessor for PagingView();
  v23 = v22[19];
  v24 = *(a1 + v23);
  v25 = v31;
  sub_1D24F65CC(v21, *(a1 + v22[18]), *(a1 + v22[18] + 8), v24, *(a1 + v23 + 8), *(a1 + v22[16]), v31);
  sub_1D2870F68();
  sub_1D2870F78();
  sub_1D22A58B8(v24);
  v26 = v33;
  sub_1D2876B38();
  (*(v36 + 8))(v25, v13);
  v38 = v13;
  v39 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v32;
  sub_1D245980C(v18);
  v28 = *(v35 + 8);
  v28(v18, OpaqueTypeMetadata2);
  sub_1D245980C(v27);
  return (v28)(v27, OpaqueTypeMetadata2);
}

uint64_t sub_1D24BCF48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = *(a1 - 1);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 16);
  v29 = v5;
  v30 = v7;
  v7(v6, v4);
  sub_1D2878568();
  v8 = sub_1D2878558();
  v9 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 2) = v8;
  *(v10 + 3) = v11;
  v12 = a1[2];
  v27 = a1[3];
  v13 = v27;
  v28 = v12;
  *(v10 + 4) = v12;
  *(v10 + 5) = v13;
  v14 = a1[4];
  v25 = a1[5];
  v15 = v25;
  v26 = v14;
  *(v10 + 6) = v14;
  *(v10 + 7) = v15;
  v16 = a1[6];
  *(v10 + 8) = v16;
  v17 = *(v3 + 32);
  v17(&v10[v9], v6, a1);
  v30(v6, v31, a1);
  v18 = sub_1D2878558();
  v19 = swift_allocObject();
  *(v19 + 2) = v18;
  v21 = v27;
  v20 = v28;
  *(v19 + 3) = MEMORY[0x1E69E85E0];
  *(v19 + 4) = v20;
  v22 = v25;
  v23 = v26;
  *(v19 + 5) = v21;
  *(v19 + 6) = v23;
  *(v19 + 7) = v22;
  *(v19 + 8) = v16;
  v17(&v19[v9], v6, a1);
  swift_getAssociatedTypeWitness();
  sub_1D2878F18();
  return sub_1D2877528();
}

uint64_t sub_1D24BD184()
{
  sub_1D2874598();
  type metadata accessor for PagingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  return sub_1D2877318();
}

uint64_t sub_1D24BD248@<X0>(void *a1@<X8>)
{
  result = sub_1D2874D68();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D24BD274(uint64_t a1, double *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = type metadata accessor for PagingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  result = sub_1D2877308();
  if (v8 == 1)
  {
    return (*(a3 + *(v6 + 80)))(result, -v5, v4);
  }

  return result;
}

uint64_t sub_1D24BD32C(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v39 = a2;
  v42 = sub_1D2877B48();
  v45 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D2877B68();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D2875008();
  v5 = *(v32 - 8);
  v33 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2874578();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2877BA8();
  v36 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  sub_1D24614C4();
  v35 = sub_1D2878AB8();
  sub_1D2877B88();
  sub_1D2877BC8();
  v18 = *(v12 + 8);
  v34 = v12 + 8;
  v37 = v18;
  v18(v14, v11);
  (*(v8 + 16))(v10, v38, v7);
  v19 = v31;
  v20 = v32;
  (*(v5 + 16))(v31, v39, v32);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = (v9 + *(v5 + 80) + v21) & ~*(v5 + 80);
  v23 = swift_allocObject();
  (*(v8 + 32))(v23 + v21, v10, v7);
  (*(v5 + 32))(v23 + v22, v19, v20);
  aBlock[4] = sub_1D24BE210;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = &block_descriptor_17;
  v24 = _Block_copy(aBlock);
  v25 = v40;
  sub_1D2877B58();
  v46 = MEMORY[0x1E69E7CC0];
  sub_1D24BE2F4(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
  sub_1D22D5EFC();
  v27 = v41;
  v26 = v42;
  sub_1D2879088();
  v28 = v35;
  MEMORY[0x1D38A1510](v17, v25, v27, v24);
  _Block_release(v24);

  (*(v45 + 8))(v27, v26);
  (*(v43 + 8))(v25, v44);
  v37(v17, v36);
}

uint64_t sub_1D24BD87C()
{
  v0 = sub_1D2874528();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E697BED0], v0, v2);
  sub_1D2874538();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1D24BD978(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1D2878F18();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - v17;
  v39 = a5;
  v40 = a6;
  v41 = a7;
  v42 = a8;
  v43 = a9;
  v19 = type metadata accessor for PagingView();
  v35 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  v22 = sub_1D2873CB8();
  v36 = *(v22 - 8);
  v37 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v34 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a4;
  v39 = *a4;
  sub_1D28784C8();
  swift_getWitnessTable();
  v25 = sub_1D2878898();
  v26 = v38;
  if ((v25 & 1) != 0 || (*(*(AssociatedTypeWitness - 8) + 48))(v38, 1, AssociatedTypeWitness) != 1)
  {
    (*(v16 + 16))(v18, v26, v15);
    sub_1D24BE698(v18);
    return (*(v16 + 8))(v18, v15);
  }

  else
  {
    v27 = v34;
    sub_1D2872658();
    v28 = v35;
    (*(v35 + 16))(v21, v24, v19);
    v29 = sub_1D2873CA8();
    v30 = sub_1D2878A18();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      v32 = sub_1D2878498();
      (*(v28 + 8))(v21, v19);
      *(v31 + 4) = v32;
      _os_log_impl(&dword_1D226E000, v29, v30, "SwiftUI incoherency: a Scroll view with some elements (%ld elements) could not have a nil position.", v31, 0xCu);
      MEMORY[0x1D38A3520](v31, -1, -1);
    }

    else
    {
      (*(v28 + 8))(v21, v19);
    }

    return (*(v36 + 8))(v27, v37);
  }
}

uint64_t sub_1D24BDD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = *(type metadata accessor for PagingView() - 8);
  v11 = v2 + ((*(v10 + 80) + 56) & ~*(v10 + 80));

  return sub_1D24BBA38(a1, v11, v5, v6, v7, v8, v9, a2);
}

uint64_t sub_1D24BDE2C()
{
  type metadata accessor for PagingView();

  return sub_1D24BD184();
}

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for PagingView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 56) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 60);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1D2878F18();
  v5 = *(sub_1D2877538() + 32);
  v6 = *(AssociatedTypeWitness - 8);
  if (!(*(v6 + 48))(v3 + v5, 1, AssociatedTypeWitness))
  {
    (*(v6 + 8))(v3 + v5, AssociatedTypeWitness);
  }

  if (*(v2 + *(v1 + 76)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D24BE0D8(uint64_t a1, double *a2)
{
  v5 = *(type metadata accessor for PagingView() - 8);
  v6 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  return sub_1D24BD274(a1, a2, v6);
}

uint64_t sub_1D24BE1A0(uint64_t a1)
{
  v3 = *(sub_1D2875008() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D24BD32C(a1, v4);
}

uint64_t sub_1D24BE210()
{
  sub_1D2874578();
  sub_1D2875008();

  return sub_1D24BD87C();
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D24BE2F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D24BE33C()
{
  type metadata accessor for PagingView();
  type metadata accessor for PagingView();
  return sub_1D24BAC68();
}

uint64_t objectdestroy_22Tm()
{
  v1 = type metadata accessor for PagingView();
  v2 = (*(*(v1 - 8) + 80) + 72) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + *(v1 + 60);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1D2878F18();
  v5 = *(sub_1D2877538() + 32);
  v6 = *(AssociatedTypeWitness - 8);
  if (!(*(v6 + 48))(v3 + v5, 1, AssociatedTypeWitness))
  {
    (*(v6 + 8))(v3 + v5, AssociatedTypeWitness);
  }

  if (*(v0 + v2 + *(v1 + 76)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D24BE5E0(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = *(type metadata accessor for PagingView() - 8);
  return sub_1D24BD978(a1, v1[2], v1[3], (v1 + ((*(v8 + 80) + 72) & ~*(v8 + 80))), v3, v4, v5, v6, v7);
}

uint64_t sub_1D24BE698(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v2 = sub_1D2878F18();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - v4, a1, v2, v3);
  sub_1D2877538();
  return sub_1D28774F8();
}

uint64_t sub_1D24BE7C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D22BD1D0(a1, &v5 - v3, &qword_1EC6D99B8);
  return sub_1D2875438();
}

ImagePlaygroundInternal::LandscapeTrapView __swiftcall LandscapeTrapView.init()()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  return result;
}

uint64_t LandscapeTrapView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v6[1] = a1;
  v1 = sub_1D28720D8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28720C8();
  if ((*(v2 + 88))(v4, v1) == *MEMORY[0x1E696E3E8])
  {
    sub_1D2875798();
  }

  else
  {
    sub_1D2875798();
    (*(v2 + 8))(v4, v1);
  }

  sub_1D2870F68();
  return sub_1D2875D58();
}

uint64_t sub_1D24BEA58@<X0>(uint64_t a1@<X8>)
{
  v6[1] = a1;
  v1 = sub_1D28720D8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28720C8();
  if ((*(v2 + 88))(v4, v1) == *MEMORY[0x1E696E3E8])
  {
    sub_1D2875798();
  }

  else
  {
    sub_1D2875798();
    (*(v2 + 8))(v4, v1);
  }

  sub_1D2870F68();
  return sub_1D2875D58();
}

uint64_t sub_1D24BEC04(uint64_t a1, int a2)
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

uint64_t sub_1D24BEC4C(uint64_t result, int a2, int a3)
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

uint64_t sub_1D24BECC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC650);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v15 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC658);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  v11 = *(v6 + 16);
  if (v10)
  {
    v11(v4, a1, v5);
  }

  else
  {
    v11(v8, a1, v5);
    v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v13 = swift_allocObject();
    (*(v6 + 32))(v13 + v12, v8, v5);
    *v4 = sub_1D24BF20C;
    v4[1] = v13;
  }

  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC660);
  sub_1D22BB9D8(&qword_1EC6D7E28, &qword_1EC6DC660);
  sub_1D22BB9D8(&unk_1EC6D77E8, &qword_1EC6DC658);
  return sub_1D2875AF8();
}

uint64_t sub_1D24BEF5C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = sub_1D2877848();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC668);
  return sub_1D24BEFAC(a1, a2 + *(v5 + 44));
}

uint64_t sub_1D24BEFAC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC658);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC670);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v22 - v13);
  *v14 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  swift_storeEnumTagMultiPayload();
  v15 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC678) + 36));
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = sub_1D2874F98();
  v17 = sub_1D2876338();
  v18 = v14 + *(v9 + 44);
  *v18 = v16;
  v18[8] = v17;
  v19 = *(v5 + 16);
  v19(v7, a1, v4);
  sub_1D22BD1D0(v14, v11, &qword_1EC6DC670);
  v19(a2, v7, v4);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC680);
  sub_1D22BD1D0(v11, &a2[*(v20 + 48)], &qword_1EC6DC670);
  sub_1D24BF298(v14);
  sub_1D24BF298(v11);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D24BF20C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC658) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D24BEF5C(v4, a1);
}

uint64_t sub_1D24BF298(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D24BF300()
{
  result = qword_1EC6D7880;
  if (!qword_1EC6D7880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC688);
    sub_1D22BB9D8(&qword_1EC6D7E28, &qword_1EC6DC660);
    sub_1D22BB9D8(&unk_1EC6D77E8, &qword_1EC6DC658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7880);
  }

  return result;
}

uint64_t sub_1D24BF410(uint64_t a1)
{
  v2 = sub_1D2874B78();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1D2875598();
}

uint64_t sub_1D24BF4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (sub_1D2871558() == a2 && v6 == a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D2879618();
  }

  v8 = a4(v7 & 1);

  return MEMORY[0x1EEDDE398](v8);
}

uint64_t sub_1D24BF580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[3];
  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = *(v2 + 1);
  *(v8 + 40) = v6;
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC690) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC698);
  sub_1D2870F68();
  sub_1D2870F78();
  sub_1D2874B68();
  *v9 = KeyPath;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC6A0);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2, a1, v10);
}

unint64_t sub_1D24BF6D4()
{
  result = qword_1ED89DD88;
  if (!qword_1ED89DD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC690);
    sub_1D22BB9D8(&qword_1ED89D428, &qword_1EC6DC6A0);
    sub_1D22BB9D8(&qword_1ED89D318, &qword_1EC6DC698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD88);
  }

  return result;
}

uint64_t sub_1D24BF7D8()
{
  result = type metadata accessor for PlaygroundImage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D24BF88C()
{
  sub_1D24BFAAC(319, &qword_1EC6D7590, &qword_1EC6D9A48, &unk_1D2882FF0, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D24BFAAC(319, &qword_1EC6D7628, &qword_1EC6DC6B0, &unk_1D288D4F8, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D24BFAAC(319, &qword_1ED89CBC8, &qword_1EC6DC608, &unk_1D288D020, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1D24BFAAC(319, &qword_1EC6D7630, &qword_1EC6D9A70, &unk_1D2882FE0, MEMORY[0x1E6981948]);
        if (v3 <= 0x3F)
        {
          sub_1D24BFA5C();
          if (v4 <= 0x3F)
          {
            sub_1D24BFAAC(319, &unk_1ED89E050, &qword_1EC6D9A30, &unk_1D287EFC0, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D24BFA5C()
{
  if (!qword_1ED89E040)
  {
    v0 = sub_1D28744A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89E040);
    }
  }
}

void sub_1D24BFAAC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D24BFB3C(uint64_t a1)
{
  v3 = type metadata accessor for GridPickerView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1D22D7044(a1, &v15);
  sub_1D24C1FB8(v1, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GridPickerView);
  sub_1D2878568();
  v6 = sub_1D2878558();
  v7 = *(v4 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_1D227268C(&v15, v8 + 32);
  sub_1D24C1F50(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + ((v7 + 72) & ~v7), type metadata accessor for GridPickerView);
  sub_1D24C1FB8(v1, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GridPickerView);
  sub_1D22D7044(a1, &v15);
  v10 = sub_1D2878558();
  v11 = (v7 + 32) & ~v7;
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = MEMORY[0x1E69E85E0];
  sub_1D24C1F50(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for GridPickerView);
  sub_1D227268C(&v15, v12 + ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1D2877528();
  return v15;
}

uint64_t sub_1D24BFD60@<X0>(void *a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC6E8);
  MEMORY[0x1D389FF60](v23, v8);
  v9 = v24;
  if (v24)
  {
    v10 = v25;
    v11 = __swift_project_boxed_opaque_existential_1(v23, v24);
    v12 = *(v9 - 8);
    v13 = MEMORY[0x1EEE9AC00](v11);
    v15 = &v23[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v13);
    sub_1D22BD238(v23, &qword_1EC6D9A70);
    v16 = (*(v10 + 16))(v9, v10);
    v18 = v17;
    (*(v12 + 8))(v15, v9);
    if (v5 == v16 && v7 == v18)
    {

      v20 = 1;
    }

    else
    {
      v20 = sub_1D2879618();
    }
  }

  else
  {
    sub_1D22BD238(v23, &qword_1EC6D9A70);

    v20 = 0;
  }

  *a2 = v20 & 1;
  return result;
}

uint64_t sub_1D24BFF88(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a1 == 1)
  {
    sub_1D22D7044(a5, v7);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
  }

  sub_1D22BD1D0(v7, v6, &qword_1EC6D9A70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC6E8);
  sub_1D28774F8();
  return sub_1D22BD238(v7, &qword_1EC6D9A70);
}

uint64_t sub_1D24C0038(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for GridPickerView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1D22D7044(a1, &v15);
  sub_1D24C1FB8(v2, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GridPickerView);
  sub_1D2878568();
  v7 = sub_1D2878558();
  v8 = *(v5 + 80);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  *(v9 + 16) = v7;
  *(v9 + 24) = v10;
  sub_1D227268C(&v15, v9 + 32);
  sub_1D24C1F50(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + ((v8 + 72) & ~v8), type metadata accessor for GridPickerView);
  sub_1D24C1FB8(v2, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GridPickerView);
  v11 = sub_1D2878558();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  sub_1D24C1F50(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + ((v8 + 32) & ~v8), type metadata accessor for GridPickerView);
  sub_1D2877528();
  return v15;
}

uint64_t sub_1D24C022C@<X0>(void *a1@<X2>, void *a2@<X3>, _BYTE *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v9 = v8;
  v10 = a2[3];
  if (v10)
  {
    v11 = v7;
    v13 = a2[4];
    v12 = a2[5];
    v18[2] = a2[2];
    v18[3] = v10;
    v18[4] = v13;
    v18[5] = v12;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC6B0);
    MEMORY[0x1D389FF60](v18, v14);
    if (v11 == v18[0] && v9 == v18[1])
    {

      v16 = 1;
    }

    else
    {
      v16 = sub_1D2879618();
    }
  }

  else
  {

    v16 = 0;
  }

  *a3 = v16 & 1;
  return result;
}

_BYTE *sub_1D24C0340(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*result & 1) == 0)
  {
    if (*(a4 + 24))
    {
      sub_1D2870F78();
      sub_1D2870F78();
      sub_1D2870F68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC6B0);
      sub_1D28774F8();
    }
  }

  return result;
}

int *sub_1D24C03EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for GridPickerView(0);
  v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v45 - v9;
  v10 = sub_1D2875628();
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v45 - v14;
  v16 = sub_1D2872008();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D24CC4AC(v15);
  v20 = *(v17 + 48);
  v21 = v20(v15, 1, v16);
  v54 = v16;
  v55 = v19;
  v50 = v17;
  if (v21 == 1)
  {
    v22 = *(v2 + 136);
    if (*(v3 + 144) == 1)
    {
      LOBYTE(v57[0]) = v22;
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v23 = sub_1D28762E8();
      sub_1D2873BE8();

      v16 = v54;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22EE66C(v22, 0);
      (*(v52 + 8))(v12, v53);
      LOBYTE(v22) = v57[0];
    }

    if (v22 - 1 >= 4)
    {
      if (v22 - 5 >= 2)
      {
        if (v22)
        {
          MEMORY[0x1D389AA70]();
        }

        else
        {
          sub_1D2871FD8();
        }
      }

      else
      {
        sub_1D2871FC8();
      }
    }

    else
    {
      sub_1D24DE0C4();
    }

    if (v20(v15, 1, v16) != 1)
    {
      sub_1D22BD238(v15, &qword_1EC6D9A30);
    }
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
  }

  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = (*(v25 + 24))(v24, v25);
  v28 = v27;
  v52 = sub_1D24C0038(a1);
  v53 = v29;
  v51 = v30;
  v31 = v49;
  sub_1D24C1FB8(v3, v49, type metadata accessor for GridPickerView);
  sub_1D22D7044(a1, v57);
  v32 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v33 = (v47 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  sub_1D24C1F50(v31, v34 + v32, type metadata accessor for GridPickerView);
  sub_1D227268C(v57, v34 + v33);
  if (*(v3 + 64))
  {
    v35 = v3;
    v36 = v46;
    sub_1D24C1FB8(v35, v46, type metadata accessor for GridPickerView);
    sub_1D22D7044(a1, v56);
    v37 = swift_allocObject();
    sub_1D24C1F50(v36, v37 + v32, type metadata accessor for GridPickerView);
    sub_1D227268C(v56, v37 + v33);
    v38 = sub_1D24C2384;
  }

  else
  {
    v38 = 0;
    v37 = 0;
  }

  (*(v50 + 32))(a2, v55, v54);
  result = type metadata accessor for PhotoSharingConfirmationParams(0);
  v40 = (a2 + result[5]);
  *v40 = v26;
  v40[1] = v28;
  *(a2 + result[6]) = 1;
  *(a2 + result[7]) = 0;
  v41 = a2 + result[8];
  v42 = v53;
  *v41 = v52;
  *(v41 + 8) = v42;
  *(v41 + 16) = v51 & 1;
  v43 = (a2 + result[9]);
  *v43 = sub_1D24C20F0;
  v43[1] = v34;
  v44 = (a2 + result[10]);
  *v44 = v38;
  v44[1] = v37;
  return result;
}

uint64_t sub_1D24C0994@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2875C68();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1D28776E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1D28776F8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = *(v1 + *(type metadata accessor for GridPickerView(0) + 48));
  v7[1] = 0x7FF0000000000000;
  (*(v5 + 104))(v7, *MEMORY[0x1E697D748], v4);
  sub_1D2877708();
  sub_1D2583B24(v10, *(v1 + 8));
  v13 = v1;
  sub_1D2875918();
  v14 = 0;
  sub_1D24C1E88(&qword_1ED89D4C0, MEMORY[0x1E697FCB0]);
  sub_1D2879968();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC6B8);
  sub_1D24C1C5C();
  sub_1D28779B8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC6D0);
  *(a1 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1D24C0C34(void *a1)
{
  v2 = type metadata accessor for GridPickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v8[1] = *a1;
  swift_getKeyPath();
  sub_1D24C1FB8(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GridPickerView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1D24C1F50(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for GridPickerView);
  sub_1D2870F68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC6D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC6C0);
  sub_1D22BB9D8(&qword_1ED89CEE8, &qword_1EC6DC6D8);
  sub_1D24C1CE0();
  return sub_1D2877578();
}

uint64_t sub_1D24C0E18@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v117 = a3;
  v118 = a1;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC6E0);
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v98 - v4;
  v5 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v111 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1D28714D8();
  v108 = *(v110 - 1);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v107 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for PhotoSharingConfirmationParams(0);
  MEMORY[0x1EEE9AC00](v105);
  v11 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v98 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v102 = (&v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v98 - v17;
  v19 = sub_1D2872008();
  v113 = *(v19 - 8);
  v114 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v103 = &v98 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v101 = &v98 - v25;
  v112 = sub_1D28764E8();
  v26 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v28 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for GridPickerItemView();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v98 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v98 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v104 = &v98 - v39;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC6C8);
  MEMORY[0x1EEE9AC00](v119);
  MEMORY[0x1EEE9AC00](v40);
  if (*(a2 + 24))
  {
    v98 = v42;
    v99 = &v98 - v41;
    v43 = v118;
    sub_1D22D7044(v118, v121);
    v100 = a2;
    v44 = sub_1D24BFB3C(v43);
    v46 = v45;
    v48 = v47;
    *(v37 + 9) = swift_getKeyPath();
    v37[80] = 0;
    *(v37 + 11) = swift_getKeyPath();
    v37[96] = 0;
    v49 = v29[11];
    *&v37[v49] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBE98);
    swift_storeEnumTagMultiPayload();
    v50 = &v37[v29[12]];
    *v50 = 0xD000000000000020;
    *(v50 + 1) = 0x80000001D28AFF50;
    v51 = &v37[v29[13]];
    v52 = sub_1D28764A8();
    *v51 = xmmword_1D288D460;
    *(v51 + 1) = xmmword_1D288D470;
    *(v51 + 2) = xmmword_1D288D480;
    *(v51 + 6) = 0x4018000000000000;
    *(v51 + 7) = v52;
    *(v51 + 4) = xmmword_1D288D490;
    v102 = v29;
    v120[0] = 0x4052800000000000;
    (*(v26 + 104))(v28, *MEMORY[0x1E6980F20], v112);
    sub_1D22BFBB8();
    sub_1D2874748();
    sub_1D22D7044(v121, v37);
    *(v37 + 6) = v44;
    *(v37 + 7) = v46;
    v37[64] = v48 & 1;
    sub_1D22D7044(v121, v120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A48);
    v53 = v114;
    if (swift_dynamicCast())
    {
      v54 = v113;
      (*(v113 + 56))(v18, 0, 1, v53);
      v55 = v101;
      (*(v54 + 32))(v101, v18, v53);
      v37[40] = 1;
      v56 = v103;
      sub_1D2871FC8();
      v57 = MEMORY[0x1D389AA00](v55, v56);
      v58 = *(v54 + 8);
      v58(v56, v53);
      v58(v55, v53);
      __swift_destroy_boxed_opaque_existential_0(v121);
      v59 = v57 & 1;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v121);
      v54 = v113;
      (*(v113 + 56))(v18, 1, 1, v53);
      sub_1D22BD238(v18, &qword_1EC6D9A30);
      v59 = 0;
      v37[40] = 0;
    }

    v78 = v119;
    v79 = v104;
    v37[41] = v59;
    v37[42] = 0;
    sub_1D24C1F50(v37, v79, type metadata accessor for GridPickerItemView);
    v80 = v106;
    sub_1D24C03EC(v118, v106);
    sub_1D24C1FB8(v80, v11, type metadata accessor for PhotoSharingConfirmationParams);
    v81 = v98;
    v82 = v98 + *(v78 + 36);
    sub_1D24C1FB8(v11, v82, type metadata accessor for PhotoSharingConfirmationParams);
    v83 = v82 + *(type metadata accessor for PhotoSharingConfirmationViewModifier(0) + 20);
    (*(v54 + 16))(v83, v11, v53);
    v84 = &v11[v105[5]];
    v86 = *v84;
    v85 = *(v84 + 1);
    v87 = v11[v105[6]];
    v88 = v11[v105[7]];
    v89 = type metadata accessor for PhotoSharingViewConfiguration(0);
    v90 = (v83 + v89[5]);
    *v90 = v86;
    v90[1] = v85;
    *(v83 + v89[6]) = v87;
    *(v83 + v89[7]) = v88;
    sub_1D2870F68();
    sub_1D2877FE8();
    v91 = v116;
    if (qword_1ED89E0F0 != -1)
    {
      swift_once();
    }

    v92 = v110;
    v93 = __swift_project_value_buffer(v110, qword_1ED8B0060);
    (*(v108 + 16))(v109, v93, v92);
    sub_1D28718C8();
    sub_1D2871508();
    sub_1D24C2020(v11, type metadata accessor for PhotoSharingConfirmationParams);
    sub_1D24C2020(v80, type metadata accessor for PhotoSharingConfirmationParams);
    sub_1D24C1F50(v79, v81, type metadata accessor for GridPickerItemView);
    v94 = v99;
    sub_1D24C2080(v81, v99);
    sub_1D22BD1D0(v94, v91, &qword_1EC6DC6C8);
    swift_storeEnumTagMultiPayload();
    sub_1D24C1D9C();
    sub_1D24C1E88(qword_1ED8A2030, type metadata accessor for GridPickerItemView);
    sub_1D2875AF8();
    return sub_1D22BD238(v94, &qword_1EC6DC6C8);
  }

  else
  {
    v110 = v21;
    v111 = v34;
    v60 = v118;
    sub_1D22D7044(v118, v121);
    v61 = sub_1D24BFB3C(v60);
    v63 = v62;
    v65 = v64;
    *(v31 + 9) = swift_getKeyPath();
    v31[80] = 0;
    *(v31 + 11) = swift_getKeyPath();
    v31[96] = 0;
    v66 = v29[11];
    *&v31[v66] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBE98);
    swift_storeEnumTagMultiPayload();
    v67 = &v31[v29[12]];
    *v67 = 0xD000000000000020;
    *(v67 + 1) = 0x80000001D28AFF50;
    v68 = &v31[v29[13]];
    v69 = sub_1D28764A8();
    *v68 = xmmword_1D288D460;
    *(v68 + 1) = xmmword_1D288D470;
    *(v68 + 2) = xmmword_1D288D480;
    *(v68 + 6) = 0x4018000000000000;
    *(v68 + 7) = v69;
    *(v68 + 4) = xmmword_1D288D490;
    v120[0] = 0x4052800000000000;
    (*(v26 + 104))(v28, *MEMORY[0x1E6980F20], v112);
    sub_1D22BFBB8();
    sub_1D2874748();
    sub_1D22D7044(v121, v31);
    *(v31 + 6) = v61;
    *(v31 + 7) = v63;
    v31[64] = v65 & 1;
    sub_1D22D7044(v121, v120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A48);
    v70 = v102;
    v71 = v114;
    if (swift_dynamicCast())
    {
      v72 = v113;
      (*(v113 + 56))(v70, 0, 1, v71);
      v73 = v110;
      (*(v72 + 32))(v110, v70, v71);
      v31[40] = 1;
      v74 = v103;
      sub_1D2871FC8();
      v75 = MEMORY[0x1D389AA00](v73, v74);
      v76 = *(v72 + 8);
      v76(v74, v71);
      v76(v73, v71);
      __swift_destroy_boxed_opaque_existential_0(v121);
      v77 = v75 & 1;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v121);
      (*(v113 + 56))(v70, 1, 1, v71);
      sub_1D22BD238(v70, &qword_1EC6D9A30);
      v77 = 0;
      v31[40] = 0;
    }

    v96 = v116;
    v97 = v111;
    v31[41] = v77;
    v31[42] = 0;
    sub_1D24C1F50(v31, v97, type metadata accessor for GridPickerItemView);
    sub_1D24C1FB8(v97, v96, type metadata accessor for GridPickerItemView);
    swift_storeEnumTagMultiPayload();
    sub_1D24C1D9C();
    sub_1D24C1E88(qword_1ED8A2030, type metadata accessor for GridPickerItemView);
    sub_1D2875AF8();
    return sub_1D24C2020(v97, type metadata accessor for GridPickerItemView);
  }
}

unint64_t sub_1D24C1C5C()
{
  result = qword_1EC6D7610;
  if (!qword_1EC6D7610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC6B8);
    sub_1D24C1CE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7610);
  }

  return result;
}

unint64_t sub_1D24C1CE0()
{
  result = qword_1ED89D620;
  if (!qword_1ED89D620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC6C0);
    sub_1D24C1D9C();
    sub_1D24C1E88(qword_1ED8A2030, type metadata accessor for GridPickerItemView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D620);
  }

  return result;
}

unint64_t sub_1D24C1D9C()
{
  result = qword_1ED89DE00;
  if (!qword_1ED89DE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC6C8);
    sub_1D24C1E88(qword_1ED8A2030, type metadata accessor for GridPickerItemView);
    sub_1D24C1E88(qword_1ED89E730, type metadata accessor for PhotoSharingConfirmationViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DE00);
  }

  return result;
}

uint64_t sub_1D24C1E88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D24C1ED0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GridPickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D24C0E18(a1, v6, a2);
}

uint64_t sub_1D24C1F50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D24C1FB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D24C2020(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D24C2080(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC6C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24C20F0()
{
  v1 = type metadata accessor for GridPickerView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(v0 + v4 + 48);
  if (v6)
  {
    return v6(v0 + ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  }

  return result;
}

uint64_t objectdestroy_25Tm_0()
{
  v1 = type metadata accessor for GridPickerView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;

  if (*(v0 + v2 + 24))
  {
  }

  if (*(v4 + 48))
  {
  }

  if (*(v4 + 64))
  {
  }

  if (*(v4 + 120))
  {
    __swift_destroy_boxed_opaque_existential_0(v4 + 96);
  }

  sub_1D22EE66C(*(v4 + 136), *(v4 + 144));
  v5 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1D2872008();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v4 + v5, 1, v6))
    {
      (*(v7 + 8))(v4 + v5, v6);
    }
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1D24C2384()
{
  v1 = type metadata accessor for GridPickerView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(v0 + v4 + 64);
  if (v6)
  {
    return v6(v0 + ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  }

  return result;
}

_BYTE *sub_1D24C2438(_BYTE *a1)
{
  v3 = *(type metadata accessor for GridPickerView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1D24C0340(a1, v4, v5, v6);
}

uint64_t objectdestroy_31Tm()
{
  v1 = type metadata accessor for GridPickerView(0);
  v2 = (*(*(v1 - 8) + 80) + 72) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  v3 = v0 + v2;

  if (*(v0 + v2 + 24))
  {
  }

  if (*(v3 + 48))
  {
  }

  if (*(v3 + 64))
  {
  }

  if (*(v3 + 120))
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 96);
  }

  sub_1D22EE66C(*(v3 + 136), *(v3 + 144));
  v4 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D2872008();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D24C26B8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for GridPickerView(0) - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 72) & ~*(v2 + 80));

  return a1(v3, v4, v1 + 32, v5);
}

uint64_t sub_1D24C2744(_BYTE *a1)
{
  v3 = *(type metadata accessor for GridPickerView(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1D24BFF88(a1, v5, v6, v1 + v4, v7);
}

unint64_t sub_1D24C27E4()
{
  result = qword_1EC6D7C08;
  if (!qword_1EC6D7C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC6D0);
    sub_1D22BB9D8(&qword_1EC6D75F0, &qword_1EC6DC6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7C08);
  }

  return result;
}

uint64_t sub_1D24C289C(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1D2877A68();
}

uint64_t sub_1D24C2A6C@<X0>(_BYTE *a1@<X8>)
{
  sub_1D245CA04();
  result = sub_1D28749B8();
  *a1 = v3;
  return result;
}

uint64_t LoadingPageControlView.init(_:selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a4;
  v28 = a2;
  sub_1D2878F18();
  v8 = sub_1D2877538();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for LoadingPageControlView();
  v13 = a5 + v12[11];
  *v13 = sub_1D28742D8() & 1;
  *(v13 + 8) = v14;
  *(v13 + 16) = v15 & 1;
  swift_getKeyPath();
  sub_1D28746D8();
  v16 = (a5 + v12[13]);
  sub_1D24C9220(v29);
  v17 = v29[3];
  v16[2] = v29[2];
  v16[3] = v17;
  v18 = v29[5];
  v16[4] = v29[4];
  v16[5] = v18;
  v19 = v29[1];
  *v16 = v29[0];
  v16[1] = v19;
  *(a5 + v12[9]) = a1;
  v20 = v12[10];
  v21 = *(v9 + 16);
  v22 = v28;
  v21(a5 + v20, v28, v8);
  v21(v11, v22, v8);
  v23 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v24 = swift_allocObject();
  v25 = v27;
  *(v24 + 2) = a3;
  *(v24 + 3) = v25;
  *(v24 + 4) = a1;
  (*(v9 + 32))(&v24[v23], v11, v8);
  type metadata accessor for LoadingPageControlView.ViewModel();
  sub_1D2870F68();
  sub_1D2874328();
  return (*(v9 + 8))(v28, v8);
}

uint64_t sub_1D24C2D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char **a4@<X8>)
{
  v26 = a1;
  v27 = a4;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v23 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2878F18();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = sub_1D2878F18();
  v13 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v15 = &v22 - v14;
  v16 = sub_1D2877538();
  MEMORY[0x1D389FF60](v16);
  if ((*(v6 + 48))(v11, 1, a2))
  {
    (*(v9 + 8))(v11, v8);
    v17 = 1;
  }

  else
  {
    v18 = v23;
    (*(v6 + 16))(v23, v11, a2);
    (*(v9 + 8))(v11, v8);
    sub_1D2879178();
    (*(v6 + 8))(v18, a2);
    v17 = 0;
  }

  (*(*(AssociatedTypeWitness - 8) + 56))(v15, v17, 1, AssociatedTypeWitness);
  type metadata accessor for LoadingPageControlView.ViewModel();
  swift_allocObject();
  v19 = sub_1D2870F68();
  v20 = sub_1D24C9380(v19, v15);
  result = (*(v13 + 8))(v15, v24);
  *v27 = v20;
  return result;
}

uint64_t sub_1D24C3090(uint64_t a1)
{
  sub_1D28784C8();
  swift_getWitnessTable();
  v3 = sub_1D2877F98();
  if (v3)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v3);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D24C32D0();
  }
}

uint64_t sub_1D24C3208()
{
  sub_1D24C8EE8();

  return sub_1D2870F68();
}

uint64_t sub_1D24C33A8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1D24C3230();

  v3 = *(*v1 + 104);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1D2878F18();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1D24C3504(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 104);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v5 = sub_1D2878F18();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1D24C3600()
{

  v1 = *(*v0 + 104);
  swift_getAssociatedTypeWitness();
  v2 = sub_1D2878F18();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 112);
  v4 = sub_1D2871A28();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1D24C3714()
{
  sub_1D24C3600();

  return swift_deallocClassInstance();
}

uint64_t sub_1D24C376C()
{
  type metadata accessor for LoadingPageControlView.ViewModel();
  sub_1D2874368();
  sub_1D2874338();
  return v1;
}

uint64_t sub_1D24C37AC()
{
  sub_1D2878F18();
  v0 = sub_1D2877538();
  return MEMORY[0x1D389FF60](v0);
}

uint64_t sub_1D24C3868()
{
  sub_1D24C8F5C();

  return sub_1D2870F68();
}

uint64_t sub_1D24C3894(uint64_t a1)
{
  sub_1D24C8F60(a1);
  swift_getAssociatedTypeWitness();
  v2 = sub_1D2878F18();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_1D24C392C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC718);
  sub_1D28742C8();
  return v1;
}

uint64_t sub_1D24C3998()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0);
  sub_1D28746B8();
  result = v1;
  if (v2 != 1)
  {
    sub_1D2273818(v1, 0);
    return 3;
  }

  return result;
}

BOOL sub_1D24C39FC()
{
  sub_1D24C376C();
  sub_1D24C8EE8();
  sub_1D2870F68();

  v0 = sub_1D2878498();

  return v0 > 12;
}

uint64_t sub_1D24C3A60()
{
  v0 = sub_1D2874FC8();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1D2874D18();
  MEMORY[0x1EEE9AC00](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC750);
  MEMORY[0x1EEE9AC00](v2);
  sub_1D24C376C();
  sub_1D24C8EE8();
  sub_1D2870F68();

  v3 = sub_1D2878498();

  if (v3 < 2)
  {
    sub_1D2877AE8();
    sub_1D2874FD8();
    sub_1D24CA53C(&qword_1EC6D7960, MEMORY[0x1E697E898]);
  }

  else
  {
    v4 = sub_1D24C39FC();
    sub_1D2874D08();
    if (v4)
    {
      sub_1D2877AE8();
      sub_1D2874FD8();
      sub_1D24CA53C(&qword_1ED89DE88, MEMORY[0x1E697E470]);
      sub_1D24CA53C(&qword_1EC6D7960, MEMORY[0x1E697E898]);
      sub_1D2875B18();
      sub_1D22BB9D8(&qword_1EC6DC758, &qword_1EC6DC750);
    }

    else
    {
      sub_1D24CA53C(&qword_1ED89DE88, MEMORY[0x1E697E470]);
    }
  }

  return sub_1D2874988();
}