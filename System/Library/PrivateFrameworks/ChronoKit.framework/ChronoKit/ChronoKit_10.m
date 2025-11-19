void sub_1BF47A2C8(void *a1, uint64_t a2, unint64_t a3, const char *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (qword_1EDC9EFF0 != -1)
  {
    swift_once();
  }

  v12 = sub_1BF4E7B54();
  __swift_project_value_buffer(v12, qword_1EDCA6A90);
  v13 = a1;
  v14 = sub_1BF4E7B34();
  v15 = sub_1BF4E8E54();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = a7;
    v18 = swift_slowAlloc();
    *v16 = 138543362;
    *(v16 + 4) = v13;
    *v18 = v13;
    v19 = v13;
    _os_log_impl(&dword_1BF389000, v14, v15, a4, v16, 0xCu);
    sub_1BF38C9B4(v18, &unk_1EBDD9260, &qword_1BF4EC380);
    v20 = v18;
    a7 = v17;
    MEMORY[0x1BFB5A5D0](v20, -1, -1);
    MEMORY[0x1BFB5A5D0](v16, -1, -1);
  }

  v21 = *(a2 + 16);
  v22 = sub_1BF4E88E4();
  PLLogRegisteredEvent();

  oslog = sub_1BF4E7B34();
  v23 = sub_1BF4E8E84();
  if (os_log_type_enabled(oslog, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134349056;
    if (a3 >> 62)
    {
      v25 = sub_1BF4E9204();
    }

    else
    {
      v25 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v24 + 4) = v25;

    _os_log_impl(&dword_1BF389000, oslog, v23, a7, v24, 0xCu);
    MEMORY[0x1BFB5A5D0](v24, -1, -1);
  }

  else
  {
  }
}

void sub_1BF47A574(uint64_t a1)
{
  v3 = sub_1BF4E7FF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BF4E8064();
  isa = v8[-1].isa;
  v10 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BF47D02C(a1);
  if (v13)
  {
    v14 = v13;
    v24 = v4;
    v25 = v8;
    v15 = *(v1 + 24);
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v1;
    v16[4] = a1;
    aBlock[4] = sub_1BF47D470;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF38E868;
    aBlock[3] = &block_descriptor_12;
    v17 = _Block_copy(aBlock);
    v18 = v15;
    v23 = v14;

    sub_1BF4E8014();
    v26 = MEMORY[0x1E69E7CC0];
    sub_1BF47E878(&qword_1EDC9F980, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
    sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890);
    sub_1BF4E91A4();
    MEMORY[0x1BFB591B0](0, v12, v7, v17);
    _Block_release(v17);

    (*(v24 + 8))(v7, v3);
    (*(isa + 1))(v12, v25);
  }

  else
  {
    if (qword_1EDC9EFF0 != -1)
    {
      swift_once();
    }

    v19 = sub_1BF4E7B54();
    __swift_project_value_buffer(v19, qword_1EDCA6A90);
    v25 = sub_1BF4E7B34();
    v20 = sub_1BF4E8E84();
    if (os_log_type_enabled(v25, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1BF389000, v25, v20, "No powerlog suggestion entries to flush.", v21, 2u);
      MEMORY[0x1BFB5A5D0](v21, -1, -1);
    }

    v22 = v25;
  }
}

void sub_1BF47A964(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDC9EFF0 != -1)
  {
    swift_once();
  }

  v6 = sub_1BF4E7B54();
  __swift_project_value_buffer(v6, qword_1EDCA6A90);
  v7 = a1;
  v8 = sub_1BF4E7B34();
  v9 = sub_1BF4E8E54();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_1BF389000, v8, v9, "Flushing suggestions to powerlog: %{public}@", v10, 0xCu);
    sub_1BF38C9B4(v11, &unk_1EBDD9260, &qword_1BF4EC380);
    MEMORY[0x1BFB5A5D0](v11, -1, -1);
    MEMORY[0x1BFB5A5D0](v10, -1, -1);
  }

  v13 = *(a2 + 16);
  v14 = sub_1BF4E88E4();
  PLLogRegisteredEvent();

  oslog = sub_1BF4E7B34();
  v15 = sub_1BF4E8E84();
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134349056;
    *(v16 + 4) = *(a3 + 16);

    _os_log_impl(&dword_1BF389000, oslog, v15, "Flushed %{public}ld powerlog suggestion entries.", v16, 0xCu);
    MEMORY[0x1BFB5A5D0](v16, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_1BF47ABD4()
{
  result = qword_1EBDD98F0;
  if (!qword_1EBDD98F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD98F0);
  }

  return result;
}

unint64_t sub_1BF47AC2C()
{
  result = qword_1EBDD98F8;
  if (!qword_1EBDD98F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD98F8);
  }

  return result;
}

double sub_1BF47ACEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1BF3CD5D0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BF4A2624();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1BF38EB2C((*(v12 + 56) + 32 * v9), a3);
    sub_1BF47B688(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1BF47AD90(__int128 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1BF3EC3EC(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v18 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1BF4A2ADC();
    v9 = v18;
  }

  v10 = (*(v9 + 48) + (v6 << 6));
  v11 = *(v10 + 41);
  v12 = v10[2];
  v13 = *v10;
  v16[1] = v10[1];
  v17[0] = v12;
  v16[0] = v13;
  *(v17 + 9) = v11;
  sub_1BF3EE248(v16);
  v14 = *(*(v9 + 56) + 8 * v6);
  sub_1BF47B838(v6, v9);
  *v2 = v9;
  return v14;
}

uint64_t sub_1BF47AE40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1BF3EC470(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v15 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1BF4A2C80();
    v9 = v15;
  }

  v10 = *(v9 + 48) + 40 * v6;
  v11 = *v10;
  v12 = *(v10 + 16);

  v13 = *(*(v9 + 56) + 8 * v6);
  sub_1BF47BAC8(v6, v9);
  *v2 = v9;
  return v13;
}

double sub_1BF47AEE4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1BF3EC540(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BF4A2E1C();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
    sub_1BF38C9B4(v12 + *(*(v13 - 8) + 72) * v8, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    sub_1BF38E610((*(v11 + 56) + 40 * v8), a2);
    sub_1BF47BD1C(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BF47AFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1BF3CD5D0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BF4A31C8();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_1BF4E7404();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_1BF47C64C(v9, v12, MEMORY[0x1E6959B98]);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1BF4E7404();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

double sub_1BF47B158@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1BF38C890(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BF4A3A84();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_1BF38E610((*(v11 + 56) + 40 * v8), a2);
    sub_1BF47C320(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BF47B248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1BF3CD5D0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BF4A3D14();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for RemoteActivityArchiveBudget();
    v22 = *(v15 - 8);
    sub_1BF43C744(v14 + *(v22 + 72) * v9, a3, type metadata accessor for RemoteActivityArchiveBudget);
    sub_1BF47C64C(v9, v12, type metadata accessor for RemoteActivityArchiveBudget);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for RemoteActivityArchiveBudget();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

double sub_1BF47B3C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1BF3916CC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BF4A3F6C();
      v11 = v13;
    }

    sub_1BF38E610((*(v11 + 56) + 40 * v8), a2);
    sub_1BF47C840(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BF47B470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1BF3916CC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BF4A4A00();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for ExtensionMetadata();
    v20 = *(v13 - 8);
    sub_1BF43C744(v12 + *(v20 + 72) * v8, a2, type metadata accessor for ExtensionMetadata);
    sub_1BF47C9D8(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for ExtensionMetadata();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1BF47B5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  result = sub_1BF3CD5D0(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v16 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BF4A4C38();
      v12 = v16;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 24 * v9;
    v15 = *(v14 + 16);
    *a3 = *v14;
    *(a3 + 16) = v15;
    result = sub_1BF47CBA0(v9, v12);
    *v4 = v12;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t sub_1BF47B688(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BF4E91C4() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1BF4E9804();

      sub_1BF4E89F4();
      v14 = sub_1BF4E9844();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BF47B838(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v33 = v4;
    v32 = ~v5;
    v7 = (sub_1BF4E91C4() + 1) & ~v5;
    while (1)
    {
      v8 = v6 << 6;
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + (v6 << 6));
      v12 = v10[1];
      v11 = v10[2];
      v13 = *v10;
      *&v36[9] = *(v10 + 41);
      v35[1] = v12;
      *v36 = v11;
      v35[0] = v13;
      sub_1BF4E9804();
      v14 = *v36;
      sub_1BF3EE1EC(v35, v34);
      sub_1BF4E90B4();
      sub_1BF4E89F4();
      sub_1BF4E9824();
      if (v14)
      {
        sub_1BF4E89F4();
      }

      v15 = *&v36[16];
      v16 = v36[24];
      sub_1BF4E9824();
      if (v16)
      {
        v15 = qword_1BF4F3D48[v15];
      }

      else
      {
        MEMORY[0x1BFB59A70](3);
      }

      MEMORY[0x1BFB59A70](v15);
      v17 = sub_1BF4E9844();
      result = sub_1BF3EE248(v35);
      v18 = v17 & v32;
      if (v3 >= v7)
      {
        v19 = v33;
        if (v18 < v7)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v19 = v33;
        if (v18 >= v7)
        {
          goto LABEL_15;
        }
      }

      if (v3 >= v18)
      {
LABEL_15:
        v20 = *(a2 + 48);
        v21 = (v20 + (v3 << 6));
        v22 = (v20 + v8);
        if (v3 << 6 != v8 || v21 >= v22 + 4)
        {
          v23 = *v22;
          v24 = v22[1];
          v25 = v22[3];
          v21[2] = v22[2];
          v21[3] = v25;
          *v21 = v23;
          v21[1] = v24;
        }

        v26 = *(a2 + 56);
        v27 = (v26 + 8 * v3);
        v28 = (v26 + 8 * v6);
        if (v3 != v6 || v27 >= v28 + 1)
        {
          *v27 = *v28;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v32;
      if (((*(v19 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        *(v19 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
        goto LABEL_23;
      }
    }
  }

  *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
LABEL_23:
  v29 = *(a2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v31;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1BF47BAC8(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v32 = ~v5;
    v33 = a2 + 64;
    v31 = (sub_1BF4E91C4() + 1) & ~v5;
    do
    {
      v34 = v3;
      v7 = 40 * v6;
      v8 = *(v2 + 40);
      v9 = v2;
      v10 = *(v2 + 48) + 40 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
      v15 = *(v10 + 32);
      v16 = *(v10 + 33);
      sub_1BF4E9804();
      v17 = v11;

      sub_1BF4E90B4();
      sub_1BF4E89F4();
      if (v15)
      {
        v14 = qword_1BF4F3D48[v14];
      }

      else
      {
        MEMORY[0x1BFB59A70](3);
      }

      MEMORY[0x1BFB59A70](v14);
      sub_1BF4E9824();
      v18 = sub_1BF4E9844();

      v19 = v18 & v32;
      v3 = v34;
      v2 = v9;
      if (v34 >= v31)
      {
        v4 = v33;
        if (v19 < v31)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v33;
        if (v19 >= v31)
        {
          goto LABEL_13;
        }
      }

      if (v34 >= v19)
      {
LABEL_13:
        v20 = *(v9 + 48);
        v21 = v20 + 40 * v34;
        v22 = (v20 + v7);
        if (40 * v34 < v7 || v21 >= v22 + 40 || v34 != v6)
        {
          v23 = *v22;
          v24 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v23;
          *(v21 + 16) = v24;
        }

        v25 = *(v9 + 56);
        v26 = (v25 + 8 * v34);
        v27 = (v25 + 8 * v6);
        if (v34 != v6 || v26 >= v27 + 1)
        {
          *v26 = *v27;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v32;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v28 = *(v2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v30;
    ++*(v2 + 36);
  }
}

void sub_1BF47BD1C(int64_t a1, uint64_t a2)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  v4 = *(v42 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v7 = (&v38 - v6);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_1BF4E91C4();
    v13 = *(v4 + 72);
    v40 = a2;
    v41 = a2 + 64;
    v38 = v13;
    v39 = (v12 + 1) & v11;
    do
    {
      v14 = v13 * v10;
      sub_1BF471254(*(a2 + 48) + v13 * v10, v7);
      v15 = *(a2 + 40);
      sub_1BF4E9804();
      v16 = *v7;
      sub_1BF4E90B4();
      v17 = type metadata accessor for ActivityKey();
      v18 = *(v17 + 20);
      sub_1BF4E7454();
      sub_1BF47E878(&qword_1EDC9F0A8, MEMORY[0x1E6959BC8]);
      sub_1BF4E8884();
      v19 = (v7 + *(v17 + 24));
      v20 = *v19;
      v21 = v19[1];
      sub_1BF4E89F4();
      v22 = v7 + *(v42 + 68);
      sub_1BF4E8674();
      sub_1BF47E878(&unk_1EDC9D760, MEMORY[0x1E6985AA8]);
      sub_1BF4E8884();
      v23 = type metadata accessor for ActivityVariantKey();
      v24 = *(v23 + 20);
      sub_1BF4E8364();
      sub_1BF47E878(&qword_1EDC9D798, MEMORY[0x1E69858D8]);
      sub_1BF4E8884();
      v25 = *(v23 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
      sub_1BF38C8B4(&unk_1EDC9F018, &unk_1EBDD85B0, &unk_1BF4EA9E0);
      v26 = v39;
      sub_1BF4E8884();
      v27 = sub_1BF4E9844();
      sub_1BF38C9B4(v7, &qword_1EBDD87A8, &unk_1BF4EB2C0);
      v28 = v27 & v11;
      if (a1 >= v26)
      {
        if (v28 < v26)
        {
          a2 = v40;
          v8 = v41;
          v13 = v38;
          goto LABEL_4;
        }

        a2 = v40;
        v13 = v38;
        if (a1 >= v28)
        {
          goto LABEL_11;
        }
      }

      else
      {
        a2 = v40;
        v13 = v38;
        if (v28 >= v26 || a1 >= v28)
        {
LABEL_11:
          if (v13 * a1 < v14 || *(a2 + 48) + v13 * a1 >= (*(a2 + 48) + v14 + v13))
          {
            swift_arrayInitWithTakeFrontToBack();
            v8 = v41;
          }

          else
          {
            v29 = v13 * a1 == v14;
            v8 = v41;
            if (!v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 = *(a2 + 56);
          v31 = v30 + 40 * a1;
          v32 = (v30 + 40 * v10);
          if (a1 != v10 || v31 >= v32 + 40)
          {
            v33 = *v32;
            v34 = v32[1];
            *(v31 + 32) = *(v32 + 4);
            *v31 = v33;
            *(v31 + 16) = v34;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      v8 = v41;
LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }
}

uint64_t sub_1BF47C170(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BF4E91C4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1BF4E9804();

      sub_1BF4E89F4();
      v13 = sub_1BF4E9844();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BF47C320(int64_t a1, uint64_t a2)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v45);
  v44 = &v39 - v8;
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v46 = v7;
    v13 = sub_1BF4E91C4();
    v14 = v45;
    v7 = v46;
    v15 = v12;
    v43 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v41 = a2 + 64;
    v42 = v17;
    v18 = *(v16 + 56);
    v40 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v44;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v42(v44, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0);
      v26 = sub_1BF4E8874();
      result = (*v40)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v43)
      {
        if (v27 >= v43 && a1 >= v27)
        {
LABEL_15:
          v7 = v46;
          v30 = *(v46 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v46;
            v18 = v19;
            v15 = v22;
            v9 = v41;
          }

          else
          {
            v9 = v41;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v46;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = v31 + 40 * a1;
          v33 = (v31 + 40 * v11);
          if (a1 != v11 || v32 >= v33 + 40)
          {
            v34 = *v33;
            v35 = v33[1];
            *(v32 + 32) = *(v33 + 4);
            *v32 = v34;
            *(v32 + 16) = v35;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v43 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v41;
      v18 = v19;
      v7 = v46;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(v7 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v38;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_1BF47C64C(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1BF4E91C4() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_1BF4E9804();

      sub_1BF4E89F4();
      v15 = sub_1BF4E9844();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1BF47C840(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BF4E91C4() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v6);
      v13 = sub_1BF4E9094();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = *(a2 + 48);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
          }

          v20 = *(a2 + 56);
          v21 = v20 + 40 * v3;
          v22 = (v20 + 40 * v6);
          if (v3 != v6 || v21 >= v22 + 40)
          {
            v9 = *v22;
            v10 = v22[1];
            *(v21 + 32) = *(v22 + 4);
            *v21 = v9;
            *(v21 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

void sub_1BF47C9D8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BF4E91C4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_1BF4E9094();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for ExtensionMetadata() - 8) + 72);
      v20 = v19 * v3;
      v21 = v18 + v19 * v3;
      v22 = v19 * v6;
      v23 = v18 + v19 * v6 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

uint64_t sub_1BF47CBA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BF4E91C4() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1BF4E9804();

      sub_1BF4E89F4();
      v14 = sub_1BF4E9844();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = v19 + 24 * v3;
        v21 = (v19 + 24 * v6);
        if (v3 != v6 || v20 >= v21 + 24)
        {
          v9 = *v21;
          *(v20 + 16) = *(v21 + 2);
          *v20 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1BF47CD5C(uint64_t a1)
{
  if ((a1 - 1) > 0xC)
  {
    return 0;
  }

  else
  {
    return byte_1BF4F3D3A[a1 - 1];
  }
}

uint64_t sub_1BF47CD80(uint64_t a1)
{
  v1 = *a1;
  v27 = *(a1 + 8);
  v2 = *(a1 + 16);

  v3 = [v1 extensionIdentity];
  v4 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v5 = sub_1BF4E76B4();
  v6 = MEMORY[0x1E69E6158];
  v30 = MEMORY[0x1E69E6158];
  *&v29 = v5;
  *(&v29 + 1) = v7;
  swift_endAccess();

  sub_1BF38EB2C(&v29, v28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v28, 0x4449656C646E7562, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v9 = [v1 kind];
  v10 = sub_1BF4E8914();
  v12 = v11;

  v30 = MEMORY[0x1E69E67B0];
  v13 = swift_allocObject();
  *&v29 = v13;
  v14 = sub_1BF39DC9C(6uLL, v10, v12);
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v13[2] = v14;
  v13[3] = v16;
  v13[4] = v18;
  v13[5] = v20;
  sub_1BF38EB2C(&v29, v28);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v28, 1684957547, 0xE400000000000000, v21);
  v22 = sub_1BF47CD5C([v1 family]);
  v30 = MEMORY[0x1E69E6530];
  *&v29 = v22;
  sub_1BF38EB2C(&v29, v28);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v28, 1702521203, 0xE400000000000000, v23);
  v30 = v6;
  *&v29 = v27;
  *(&v29 + 1) = v2;
  sub_1BF38EB2C(&v29, v28);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v28, 0xD000000000000014, 0x80000001BF4FC820, v24);
  v25 = sub_1BF4E8744();

  return v25;
}

uint64_t sub_1BF47D02C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  v4 = v2;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 48);
    v7 = &off_1E80BD000;
    p_info = &OBJC_METACLASS____TtC9ChronoKit22WidgetPowerlogProvider.info;
    *&v3 = 136446210;
    v33 = v3;
    v34 = v2;
    do
    {
      v18 = *(v6 - 1);
      v19 = *v6;
      v39 = *(v6 - 2);
      v40 = v18;
      v37 = v18;
      v41 = v19;
      v20 = v39;

      v21 = sub_1BF47CD80(&v39);
      [v4 v7[99]];

      if (p_info[510] != -1)
      {
        swift_once();
      }

      v22 = sub_1BF4E7B54();
      __swift_project_value_buffer(v22, qword_1EDCA6A90);
      v23 = v20;

      v24 = sub_1BF4E7B34();
      v25 = sub_1BF4E8E54();

      if (os_log_type_enabled(v24, v25))
      {
        v9 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v38 = v36;
        v39 = 0;
        *v9 = v33;
        v40 = 0xE000000000000000;
        v35 = v23;

        sub_1BF4E92E4();
        MEMORY[0x1BFB58C90](0xD000000000000020, 0x80000001BF4FC6B0);
        v10 = [v35 description];
        v11 = p_info;
        v12 = sub_1BF4E8914();
        v14 = v13;

        v15 = v12;
        p_info = v11;
        MEMORY[0x1BFB58C90](v15, v14);

        MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4F9D70);
        MEMORY[0x1BFB58C90](v37, v19);
        MEMORY[0x1BFB58C90](62, 0xE100000000000000);

        v16 = sub_1BF38D65C(v39, v40, &v38);
        v7 = &off_1E80BD000;

        *(v9 + 4) = v16;
        _os_log_impl(&dword_1BF389000, v24, v25, "Flushing powerlog suggestion entry: %{public}s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        MEMORY[0x1BFB5A5D0](v36, -1, -1);
        v17 = v9;
        v4 = v34;
        MEMORY[0x1BFB5A5D0](v17, -1, -1);
      }

      else
      {
      }

      v6 += 3;
      --v5;
    }

    while (v5);
  }

  if ([v4 count])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9348, &qword_1BF4F0B98);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1BF4ECFE0;
    v27 = MEMORY[0x1E69E6158];
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 32) = 0x7374617473;
    *(v26 + 40) = 0xE500000000000000;
    [v4 copy];
    sub_1BF4E9164();
    swift_unknownObjectRelease();
    *(v26 + 120) = v27;
    *(v26 + 96) = 0x6D617473656D6974;
    *(v26 + 104) = 0xE900000000000070;
    v28 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
    [v28 timeIntervalSince1970];
    v30 = v29;

    *(v26 + 152) = MEMORY[0x1E69E63B0];
    *(v26 + 128) = v30;
    sub_1BF43E550();
    v31 = sub_1BF4E8E14();
  }

  else
  {

    return 0;
  }

  return v31;
}

uint64_t sub_1BF47D47C(uint64_t a1)
{
  v2 = [*(a1 + 16) extensionIdentity];
  v3 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v4 = sub_1BF4E76B4();
  v5 = MEMORY[0x1E69E6158];
  v47 = MEMORY[0x1E69E6158];
  *&v46 = v4;
  *(&v46 + 1) = v6;
  swift_endAccess();

  sub_1BF38EB2C(&v46, v45);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v45, 0x4449656C646E7562, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v8 = [*(a1 + 16) kind];
  v9 = sub_1BF4E8914();
  v11 = v10;

  v47 = MEMORY[0x1E69E67B0];
  v12 = swift_allocObject();
  *&v46 = v12;
  v13 = sub_1BF39DC9C(6uLL, v9, v11);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v12[2] = v13;
  v12[3] = v15;
  v12[4] = v17;
  v12[5] = v19;
  sub_1BF38EB2C(&v46, v45);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v45, 1684957547, 0xE400000000000000, v20);
  v21 = sub_1BF47CD5C([*(a1 + 16) family]);
  v22 = MEMORY[0x1E69E6530];
  v47 = MEMORY[0x1E69E6530];
  *&v46 = v21;
  sub_1BF38EB2C(&v46, v45);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v45, 1702521203, 0xE400000000000000, v23);
  v24 = *(a1 + 56);
  v47 = MEMORY[0x1E69E6370];
  LOBYTE(v46) = v24;
  sub_1BF38EB2C(&v46, v45);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v45, 0x636174536E497369, 0xE90000000000006BLL, v25);
  if (*(a1 + 72) == 1)
  {
    v26 = qword_1BF4F3D48[*(a1 + 64)];
  }

  else
  {
    v26 = 3;
  }

  v47 = v22;
  *&v46 = v26;
  sub_1BF38EB2C(&v46, v45);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v45, 0x6E6F697461636F6CLL, 0xE800000000000000, v27);
  if (*(a1 + 72))
  {
    v28 = -1;
  }

  else
  {
    v28 = *(a1 + 64);
  }

  v47 = v22;
  *&v46 = v28;
  sub_1BF38EB2C(&v46, v45);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v45, 1701273968, 0xE400000000000000, v29);
  v30 = *(a1 + 48);
  if (v30)
  {
    v31 = *(a1 + 40);
    v47 = v5;
    *&v46 = v31;
    *(&v46 + 1) = v30;
    sub_1BF38EB2C(&v46, v45);

    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_1BF3D67F0(v45, 0xD000000000000014, 0x80000001BF4FC820, v32);
  }

  v33 = *(a1 + 24);
  v34 = *(a1 + 32);
  v47 = v5;
  *&v46 = v33;
  *(&v46 + 1) = v34;
  sub_1BF38EB2C(&v46, v45);

  v35 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v45, 0x696669746E656469, 0xEA00000000007265, v35);
  v36 = *(a1 + 112);
  v37 = MEMORY[0x1E69E63B0];
  v47 = MEMORY[0x1E69E63B0];
  *&v46 = v36;
  sub_1BF38EB2C(&v46, v45);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v45, 0xD000000000000016, 0x80000001BF4FB490, v38);
  v39 = *(a1 + 88);
  v47 = v37;
  *&v46 = v39;
  sub_1BF38EB2C(&v46, v45);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v45, 0xD000000000000013, 0x80000001BF4FC840, v40);
  v41 = *(a1 + 96);
  v47 = v22;
  *&v46 = v41;
  sub_1BF38EB2C(&v46, v45);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v45, 0xD000000000000013, 0x80000001BF4FC860, v42);
  v43 = sub_1BF4E8744();

  return v43;
}

id sub_1BF47D994(unint64_t a1)
{
  result = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  v3 = result;
  if (a1 >> 62)
  {
    result = sub_1BF4E9204();
    v4 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_20:
    if ([v3 count])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9348, &qword_1BF4F0B98);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1BF4ECFE0;
      v30 = MEMORY[0x1E69E6158];
      *(v29 + 56) = MEMORY[0x1E69E6158];
      *(v29 + 32) = 0x7374617473;
      *(v29 + 40) = 0xE500000000000000;
      [v3 copy];
      sub_1BF4E9164();
      swift_unknownObjectRelease();
      *(v29 + 120) = v30;
      *(v29 + 96) = 0x6D617473656D6974;
      *(v29 + 104) = 0xE900000000000070;
      v31 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
      [v31 timeIntervalSince1970];
      v33 = v32;

      *(v29 + 152) = MEMORY[0x1E69E63B0];
      *(v29 + 128) = v33;
      sub_1BF43E550();
      v34 = sub_1BF4E8E14();
    }

    else
    {

      return 0;
    }

    return v34;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = a1 & 0xC000000000000001;
    v35 = v3;
    while (1)
    {
      if (v6)
      {
        v8 = MEMORY[0x1BFB59570](v5, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v5 + 32);
      }

      if (*(v8 + 112) <= 0.0)
      {
        if (qword_1EDC9EFF0 != -1)
        {
          swift_once();
        }

        v18 = sub_1BF4E7B54();
        __swift_project_value_buffer(v18, qword_1EDCA6A90);

        v11 = sub_1BF4E7B34();
        v19 = sub_1BF4E8E54();

        if (!os_log_type_enabled(v11, v19))
        {
          goto LABEL_6;
        }

        v13 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v13 = 136446210;
        v21 = *(v8 + 16);
        v22 = *(v8 + 32);
        v23 = *(v8 + 48);
        *(v43 + 9) = *(v8 + 57);
        v24 = *(v43 + 9);
        v42 = v22;
        v43[0] = v23;
        v40 = v20;
        v41 = v21;
        *&v39[9] = v24;
        v37 = *(v8 + 16);
        v38 = *(v8 + 32);
        *v39 = *(v8 + 48);
        sub_1BF3EE1EC(&v41, &v44);
        v25 = PowerlogWidgetViewIdentity.description.getter();
        v27 = v26;
        v44 = v37;
        v45 = v38;
        v46[0] = *v39;
        *(v46 + 9) = *&v39[9];
        sub_1BF3EE248(&v44);
        v28 = sub_1BF38D65C(v25, v27, &v40);

        *(v13 + 4) = v28;
        v6 = a1 & 0xC000000000000001;
        _os_log_impl(&dword_1BF389000, v11, v19, "Dropped view entry for identity: [%{public}s] because it was incomplete.", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
      }

      else
      {
        v9 = sub_1BF47D47C(v8);
        [v3 addObject_];

        if (qword_1EDC9EFF0 != -1)
        {
          swift_once();
        }

        v10 = sub_1BF4E7B54();
        __swift_project_value_buffer(v10, qword_1EDCA6A90);

        v11 = sub_1BF4E7B34();
        v12 = sub_1BF4E8E54();

        if (!os_log_type_enabled(v11, v12))
        {
          goto LABEL_6;
        }

        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v40 = v14;
        *v13 = 136446210;
        *&v44 = 0;
        *(&v44 + 1) = 0xE000000000000000;
        sub_1BF4E92E4();
        v36 = v44;
        MEMORY[0x1BFB58C90](0xD00000000000001CLL, 0x80000001BF4F9FB0);
        *(v46 + 9) = *(v8 + 57);
        v46[0] = *(v8 + 48);
        v45 = *(v8 + 32);
        v44 = *(v8 + 16);
        v41 = v44;
        v42 = v45;
        v43[0] = v46[0];
        *(v43 + 9) = *(v46 + 9);
        sub_1BF4E9404();
        MEMORY[0x1BFB58C90](0x7363697274656D20, 0xE90000000000003DLL);
        v15 = *(v8 + 96);
        v46[2] = *(v8 + 80);
        v46[3] = v15;
        v47 = *(v8 + 112);
        v16 = sub_1BF408590();
        MEMORY[0x1BFB58C90](v16);

        MEMORY[0x1BFB58C90](62, 0xE100000000000000);
        v17 = sub_1BF38D65C(v36, *(&v36 + 1), &v40);
        v6 = a1 & 0xC000000000000001;

        *(v13 + 4) = v17;
        _os_log_impl(&dword_1BF389000, v11, v12, "Flushing powerlog view entry: %{public}s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v14);
      }

      MEMORY[0x1BFB5A5D0]();
      v7 = v13;
      v3 = v35;
      MEMORY[0x1BFB5A5D0](v7, -1, -1);
LABEL_6:

      if (v4 == ++v5)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF47DFAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 extensionIdentity];
  v4 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v5 = sub_1BF4E76B4();
  v6 = MEMORY[0x1E69E6158];
  v48 = MEMORY[0x1E69E6158];
  *&v47 = v5;
  *(&v47 + 1) = v7;
  swift_endAccess();

  sub_1BF38EB2C(&v47, v46);
  v8 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v46, 0x4449656C646E7562, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v49 = v8;
  v10 = [v2 kind];
  v11 = sub_1BF4E8914();
  v13 = v12;

  v48 = MEMORY[0x1E69E67B0];
  v14 = swift_allocObject();
  *&v47 = v14;
  v15 = sub_1BF39DC9C(6uLL, v11, v13);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v14[2] = v15;
  v14[3] = v17;
  v14[4] = v19;
  v14[5] = v21;
  sub_1BF38EB2C(&v47, v46);
  v22 = v49;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v46, 1684957547, 0xE400000000000000, v23);
  v24 = *(a1 + 40);
  v25 = *(a1 + 48);
  v48 = v6;
  *&v47 = v24;
  *(&v47 + 1) = v25;
  sub_1BF38EB2C(&v47, v46);

  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v46, 0x696669746E656469, 0xEA00000000007265, v26);
  v49 = v22;
  v27 = *(a1 + 96);
  if (!v27)
  {
    sub_1BF47ACEC(1953722216, 0xE400000000000000, &v47);
    sub_1BF38C9B4(&v47, &qword_1EBDD8AD0, &unk_1BF4F53F0);
    v30 = *(a1 + 64);
    if (!v30)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v28 = *(a1 + 88);
  v48 = v6;
  *&v47 = v28;
  *(&v47 + 1) = v27;
  sub_1BF38EB2C(&v47, v46);

  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v46, 1953722216, 0xE400000000000000, v29);
  v49 = v22;
  v30 = *(a1 + 64);
  if (v30)
  {
LABEL_3:
    v31 = *(a1 + 56);
    v48 = v6;
    *&v47 = v31;
    *(&v47 + 1) = v30;
    sub_1BF38EB2C(&v47, v46);

    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_1BF3D67F0(v46, 0xD000000000000014, 0x80000001BF4FC820, v32);
  }

LABEL_5:
  v33 = *(a1 + 112);
  v34 = MEMORY[0x1E69E6530];
  v48 = MEMORY[0x1E69E6530];
  *&v47 = v33;
  sub_1BF38EB2C(&v47, v46);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v46, 0x6E696E69616D6572, 0xEF74656764754267, v35);
  v36 = (*(a1 + 104) & 1) == 0;
  v48 = v34;
  *&v47 = v36;
  sub_1BF38EB2C(&v47, v46);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v46, 1953722211, 0xE400000000000000, v37);
  v38 = qword_1BF4F3D90[*(a1 + 105)];
  v48 = v34;
  *&v47 = v38;
  sub_1BF38EB2C(&v47, v46);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v46, 0x6E6F73616572, 0xE600000000000000, v39);
  v40 = *(a1 + 120);
  v48 = MEMORY[0x1E69E63B0];
  *&v47 = v40;
  sub_1BF38EB2C(&v47, v46);
  v41 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v46, 0x6F69747563657865, 0xED0000656D69546ELL, v41);
  v42 = *(a1 + 128);
  v48 = v34;
  *&v47 = v42;
  sub_1BF38EB2C(&v47, v46);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v46, 0x616552726F727265, 0xEB000000006E6F73, v43);
  v44 = sub_1BF4E8744();

  return v44;
}

id sub_1BF47E4BC(unint64_t a1)
{
  result = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  v4 = result;
  if (a1 >> 62)
  {
    result = sub_1BF4E9204();
    v5 = result;
    if (!result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = a1 & 0xC000000000000001;
  v8 = &off_1E80BD000;
  *&v3 = 136446210;
  v29 = v3;
  v30 = v4;
  v31 = v5;
  do
  {
    if (v7)
    {
      v9 = MEMORY[0x1BFB59570](v6, a1);
    }

    else
    {
      v9 = *(a1 + 8 * v6 + 32);
    }

    v10 = sub_1BF47DFAC(v9);
    [v4 v8[99]];

    if (qword_1EDC9EFF0 != -1)
    {
      swift_once();
    }

    v11 = sub_1BF4E7B54();
    __swift_project_value_buffer(v11, qword_1EDCA6A90);

    v12 = sub_1BF4E7B34();
    v13 = sub_1BF4E8E54();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32 = v15;
      *v14 = v29;
      v16 = sub_1BF479478();
      v18 = v7;
      v19 = a1;
      v20 = sub_1BF38D65C(v16, v17, &v32);

      *(v14 + 4) = v20;
      a1 = v19;
      v7 = v18;
      _os_log_impl(&dword_1BF389000, v12, v13, "Flushing powerlog update entry: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      v21 = v15;
      v4 = v30;
      v5 = v31;
      MEMORY[0x1BFB5A5D0](v21, -1, -1);
      v22 = v14;
      v8 = &off_1E80BD000;
      MEMORY[0x1BFB5A5D0](v22, -1, -1);
    }

    ++v6;
  }

  while (v5 != v6);
LABEL_14:
  if ([v4 count])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9348, &qword_1BF4F0B98);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1BF4ECFE0;
    v24 = MEMORY[0x1E69E6158];
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 32) = 0x7374617473;
    *(v23 + 40) = 0xE500000000000000;
    [v4 copy];
    sub_1BF4E9164();
    swift_unknownObjectRelease();
    *(v23 + 120) = v24;
    *(v23 + 96) = 0x6D617473656D6974;
    *(v23 + 104) = 0xE900000000000070;
    v25 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
    [v25 timeIntervalSince1970];
    v27 = v26;

    *(v23 + 152) = MEMORY[0x1E69E63B0];
    *(v23 + 128) = v27;
    sub_1BF43E550();
    v28 = sub_1BF4E8E14();
  }

  else
  {

    return 0;
  }

  return v28;
}

uint64_t sub_1BF47E878(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF47E8D0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BF47ECA0(0);
  }

  return result;
}

uint64_t sub_1BF47E92C(void *a1, uint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  v5 = *(a2 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionIdentity);
  MEMORY[0x1EEE9AC00](a1);
  v4[2] = &v5;
  return sub_1BF4B93C4(sub_1BF480590, v4, v2) & 1;
}

uint64_t sub_1BF47E9CC(uint64_t a1, uint64_t a2)
{
  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v3 = sub_1BF4E7B54();
  __swift_project_value_buffer(v3, qword_1EDCA6AA8);

  v4 = sub_1BF4E7B34();
  v5 = sub_1BF4E8E84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = *(a2 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionIdentity);
    *(v6 + 4) = v8;
    *v7 = v8;
    v9 = v8;
    _os_log_impl(&dword_1BF389000, v4, v5, "Per app language override changed for extension: %{public}@", v6, 0xCu);
    sub_1BF38C9B4(v7, &unk_1EBDD9260, &qword_1BF4EC380);
    MEMORY[0x1BFB5A5D0](v7, -1, -1);
    MEMORY[0x1BFB5A5D0](v6, -1, -1);
  }

  return sub_1BF47ECA0(0);
}

uint64_t sub_1BF47EB24(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionIdentity;
      v7 = v1 + 32;
      while (v5 < *(v1 + 16))
      {
        sub_1BF38E49C(v7, v13);
        sub_1BF3F1508();
        v8 = v14;
        v9 = v15;
        __swift_project_boxed_opaque_existential_1(v13, v14);
        v10 = (*(v9 + 40))(v8, v9);
        v11 = *(v3 + v6);
        v12 = sub_1BF4E90A4();

        if (v12)
        {
          sub_1BF38E60C(v13, v16);
          sub_1BF38C9B4(v16, &unk_1EBDD91B0, &unk_1BF4F0720);
          sub_1BF47ECA0(0);
        }

        ++v5;
        result = __swift_destroy_boxed_opaque_existential_1Tm(v13);
        v7 += 40;
        if (v4 == v5)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      v17 = 0;
      memset(v16, 0, sizeof(v16));
      return sub_1BF38C9B4(v16, &unk_1EBDD91B0, &unk_1BF4F0720);
    }
  }

  return result;
}

uint64_t sub_1BF47ECA0(int a1)
{
  v2 = v1;
  v43 = a1;
  v3 = sub_1BF4E7F64();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9290, &qword_1BF4EE4B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  v17 = *(v2 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionIdentity);
  v18 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  sub_1BF40A05C(v17 + v18, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BF38C9B4(v11, &qword_1EBDD9290, &qword_1BF4EE4B0);
    goto LABEL_13;
  }

  (*(v13 + 32))(v16, v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A30, &qword_1BF4F3E50);
  v19 = *(v13 + 72);
  v20 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BF4EBEF0;
  (*(v13 + 16))(v21 + v20, v16, v12);
  v22 = _sSo8NSLocaleC9ChronoKitE18currentLocaleToken3forSDy0B8Services15TypedIdentifierVyAF0J4TypeO6BundleO9ContainerOGAC0eF10DescriptorVGSayAOG_tFZ_0(v21);
  swift_setDeallocating();
  v23 = v21 + v20;
  v24 = *(v13 + 8);
  v24(v23, v12);
  swift_deallocClassInstance();
  if (!*(v22 + 16) || (v25 = sub_1BF3EC78C(v16), (v26 & 1) == 0))
  {

LABEL_12:
    v24(v16, v12);
    goto LABEL_13;
  }

  v27 = (*(v22 + 56) + 24 * v25);
  v28 = v27[1];
  v29 = v27[2];
  v41 = *v27;
  v42 = v28;
  sub_1BF3D8864(v41, v28);

  strcpy(v44, "AppleLanguages");
  HIBYTE(v44[1]) = -18;
  sub_1BF4E9274();
  if (!*(v29 + 16) || (v30 = sub_1BF3EC854(v45), (v31 & 1) == 0))
  {
    sub_1BF3B03C0(v41, v42);

    sub_1BF3EE198(v45);
    goto LABEL_12;
  }

  sub_1BF38D324(*(v29 + 56) + 32 * v30, v46);
  sub_1BF3EE198(v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  if (swift_dynamicCast())
  {
    v32 = *(v44[0] + 16);

    if (v32)
    {
      v33 = *(v2 + 24);
      os_unfair_lock_lock(*(v33 + 16));
      v40 = v24;
      v34 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
      swift_beginAccess();
      (*(v4 + 16))(v7, v2 + v34, v3);
      sub_1BF47F310(v7, v2, v41, v42, v29, v43 & 1);
      swift_beginAccess();
      (*(v4 + 40))(v2 + v34, v7, v3);
      swift_endAccess();
      os_unfair_lock_unlock(*(v33 + 16));
      v35 = *(v2 + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
      sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0);
      sub_1BF4E7C74();

      sub_1BF3B03C0(v41, v42);

      return v40(v16, v12);
    }
  }

  v24(v16, v12);
  sub_1BF3B03C0(v41, v42);

LABEL_13:
  v37 = *(v2 + 24);
  os_unfair_lock_lock(*(v37 + 16));
  v38 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  (*(v4 + 16))(v7, v2 + v38, v3);
  sub_1BF47F310(v7, v2, 0, 0, 0, v43 & 1);
  swift_beginAccess();
  (*(v4 + 40))(v2 + v38, v7, v3);
  swift_endAccess();
  os_unfair_lock_unlock(*(v37 + 16));
  v39 = *(v2 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF4E7C74();
}

uint64_t sub_1BF47F310(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  v68 = sub_1BF4E7F64();
  v12 = *(v68 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a2;
  v16 = (a2 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__systemProvider);
  v18 = *(a2 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__systemProvider + 24);
  v17 = *(a2 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__systemProvider + 32);
  __swift_project_boxed_opaque_existential_1(v16, v18);
  (*(v17 + 8))(v18, v17);
  v70 = a1;
  v19 = sub_1BF4E7EF4();
  if (!a5)
  {
    if (v20 >> 60 == 15)
    {
      goto LABEL_6;
    }

    v24 = 0;
    v23 = 0xF000000000000000;
    goto LABEL_11;
  }

  v21 = v19;
  v22 = v20;
  sub_1BF3D8864(a3, a4);
  v20 = v22;
  if (v22 >> 60 == 15)
  {
    v23 = a4;
    v24 = a3;
    v19 = v21;
    if (a4 >> 60 != 15)
    {
      goto LABEL_11;
    }

LABEL_6:
    sub_1BF3DB210(v19, v20);
    goto LABEL_19;
  }

  v23 = a4;
  v24 = a3;
  v19 = v21;
  if (a4 >> 60 == 15)
  {
LABEL_11:
    sub_1BF3DB210(v19, v20);
    sub_1BF3DB210(v24, v23);
    if (a5)
    {
      goto LABEL_12;
    }

    if ((a6 & 1) == 0)
    {
      v66 = sub_1BF4E7EF4();
      v47 = v46;
      v48 = v70;
      v49 = sub_1BF4E7EF4();
      v51 = v50;
      v67 = *(v12 + 8);
      v67(v48, v68);
      v52 = v66;
      LODWORD(v65) = sub_1BF408374(v66, v47, v49, v51);
      sub_1BF3B03C0(v49, v51);
      sub_1BF3B03C0(v52, v47);
      if ((v65 & 1) == 0)
      {
        if (qword_1EDC9EFF8 != -1)
        {
          swift_once();
        }

        v53 = sub_1BF4E7B54();
        __swift_project_value_buffer(v53, qword_1EDCA6AA8);
        v54 = v69;

        v55 = sub_1BF4E7B34();
        v56 = sub_1BF4E8E84();

        v66 = v55;
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *v57 = 138543362;
          v59 = *(v54 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionIdentity);
          *(v57 + 4) = v59;
          *v58 = v59;
          v60 = v59;
          v61 = v56;
          v62 = v66;
          _os_log_impl(&dword_1BF389000, v66, v61, "No language override found for %{public}@", v57, 0xCu);
          sub_1BF38C9B4(v58, &unk_1EBDD9260, &qword_1BF4EC380);
          MEMORY[0x1BFB5A5D0](v58, -1, -1);
          MEMORY[0x1BFB5A5D0](v57, -1, -1);
        }

        else
        {
        }
      }

      v28 = v68;
      goto LABEL_17;
    }

LABEL_19:
    v43 = *(v12 + 8);
    v44 = v70;
    v28 = v68;
    v43(v70, v68);
    goto LABEL_20;
  }

  v25 = v20;
  sub_1BF3D8864(v21, v20);
  sub_1BF48055C(a3, a4);
  v26 = sub_1BF408374(v21, v25, a3, a4);
  sub_1BF3DB210(a3, a4);
  sub_1BF3B03C0(v21, v25);
  sub_1BF3DB210(a3, a4);
  sub_1BF3DB210(v21, v25);
  if (v26)
  {
    goto LABEL_19;
  }

LABEL_12:
  sub_1BF3D8864(a3, a4);
  v27 = *(v12 + 8);

  v28 = v68;
  v67 = v27;
  v27(v70, v68);
  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v29 = sub_1BF4E7B54();
  __swift_project_value_buffer(v29, qword_1EDCA6AA8);
  sub_1BF4804DC(a3, a4, a5);

  v30 = sub_1BF4E7B34();
  v31 = sub_1BF4E8E84();

  sub_1BF48051C(a3, a4, a5);
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v65 = v30;
    v33 = v64;
    v66 = swift_slowAlloc();
    v71 = v66;
    v72[0] = 0;
    *v32 = 138543618;
    v34 = *(v69 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionIdentity);
    *(v32 + 4) = v34;
    *v33 = v34;
    *(v32 + 12) = 2082;
    v72[1] = 0xE000000000000000;
    sub_1BF4804DC(a3, a4, a5);
    v35 = v34;
    LOBYTE(v33) = v31;
    sub_1BF4E92E4();

    strcpy(v72, "<LocaleToken: ");
    HIBYTE(v72[1]) = -18;
    v36 = sub_1BF4E71B4();
    MEMORY[0x1BFB58C90](v36);

    MEMORY[0x1BFB58C90](8250, 0xE200000000000000);
    v37 = sub_1BF4E8774();
    MEMORY[0x1BFB58C90](v37);

    MEMORY[0x1BFB58C90](62, 0xE100000000000000);
    sub_1BF48051C(a3, a4, a5);
    v38 = sub_1BF38D65C(v72[0], v72[1], &v71);

    *(v32 + 14) = v38;
    v39 = v33;
    v30 = v65;
    _os_log_impl(&dword_1BF389000, v65, v39, "Language override detected for %{public}@: %{public}s", v32, 0x16u);
    v40 = v64;
    sub_1BF38C9B4(v64, &unk_1EBDD9260, &qword_1BF4EC380);
    MEMORY[0x1BFB5A5D0](v40, -1, -1);
    v41 = v66;
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    MEMORY[0x1BFB5A5D0](v41, -1, -1);
    v42 = v32;
    v28 = v68;
    MEMORY[0x1BFB5A5D0](v42, -1, -1);
  }

  sub_1BF48051C(a3, a4, a5);

LABEL_17:
  v43 = v67;
  v44 = v70;
LABEL_20:
  (*(v12 + 16))(v44, v15, v28);
  v72[0] = a3;
  v72[1] = a4;
  v72[2] = a5;
  sub_1BF47FA44(v72);
  return (v43)(v15, v28);
}

uint64_t sub_1BF47FA44(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = (v1 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionManager);
  v6 = *(v1 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionManager + 24);
  v7 = *(v1 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionManager + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionManager), v6);
  ExtensionManaging.extension(for:)(*(v1 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionIdentity), v6, v7);
  if (!v22)
  {
    return sub_1BF38C9B4(v21, &unk_1EBDD91B0, &unk_1BF4F0720);
  }

  sub_1BF38E60C(v21, v24);
  if (v4)
  {
    sub_1BF3D8864(v2, v3);
    sub_1BF4E7F04();
  }

  sub_1BF4E8194();
  v8 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  sub_1BF4E76B4();
  swift_endAccess();
  v9 = v25;
  v10 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v10 + 224))(v9, v10);
  v12 = v25;
  v11 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v11 + 232))(v12, v11);
  sub_1BF4E8184();

  sub_1BF4E7E94();
  v13 = v5[3];
  v14 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v13);
  swift_beginAccess();
  v15 = sub_1BF4E76B4();
  v17 = v16;
  swift_endAccess();
  (*(v14 + 40))(v21, v15, v17, v13, v14);

  v18 = v22;
  if (v22)
  {
    v19 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(v19 + 216))(v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    sub_1BF38C9B4(v21, &unk_1EBDD91B0, &unk_1BF4F0720);
  }

  sub_1BF4E7EE4();

  return __swift_destroy_boxed_opaque_existential_1Tm(v24);
}

uint64_t sub_1BF47FD0C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionManager));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__systemProvider));
  v1 = *(v0 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__subscriptions);
}

uint64_t sub_1BF47FD6C()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  v4 = sub_1BF4E7F64();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionManager;

  __swift_destroy_boxed_opaque_existential_1Tm(&v0[v5]);

  __swift_destroy_boxed_opaque_existential_1Tm(&v0[OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__systemProvider]);
  v6 = *&v0[OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__subscriptions];

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BundleEnvironmentProvider()
{
  result = qword_1EDC985F8;
  if (!qword_1EDC985F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF47FF20(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97F8, &unk_1BF4F2B88);
  v8 = *(v26 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v11 = &v25 - v10;
  *(v4 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__subscriptions) = MEMORY[0x1E69E7CD0];
  *(v4 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionIdentity) = a1;
  sub_1BF38E49C(a2, v4 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__systemProvider);
  sub_1BF38E49C(a3, v4 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionManager);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = a1;
  *(v4 + 16) = sub_1BF4E7C34();
  type metadata accessor for UnfairLock();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *v17 = 0;
  *(v16 + 16) = v17;
  *(v4 + 24) = v16;
  sub_1BF4E7F54();
  v18 = a2[3];
  v19 = a2[4];
  v27 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v18);
  v20 = *(v19 + 16);
  swift_retain_n();
  v28 = v20(v18, v19);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F30, &unk_1BF4EF080);
  sub_1BF38C8B4(&qword_1EDC9EF90, &qword_1EBDD8F30, &unk_1BF4EF080);
  sub_1BF4E7D14();

  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  if (qword_1EDC99408 != -1)
  {
    swift_once();
  }

  v28 = qword_1EDC99410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9808, &qword_1BF4F7200);
  sub_1BF38C8B4(&qword_1EDC9D3B8, &qword_1EBDD9808, &qword_1BF4F7200);
  v28 = sub_1BF4E7C84();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9810, &qword_1BF4F2D00);
  sub_1BF38C8B4(&qword_1EDC9D3E8, &qword_1EBDD9810, &qword_1BF4F2D00);
  sub_1BF4E7CD4();

  sub_1BF38C8B4(&qword_1EDC9D440, &qword_1EBDD97F8, &unk_1BF4F2B88);
  v21 = v26;
  sub_1BF4E7D14();

  (*(v8 + 8))(v11, v21);
  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  v22 = a3[3];
  v23 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v22);
  v28 = (*(v23 + 64))(v22, v23);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C0, &unk_1BF4F1A68);
  sub_1BF38C8B4(&qword_1EDC9D3F0, &qword_1EBDD95C0, &unk_1BF4F1A68);
  sub_1BF4E7D14();

  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  sub_1BF47ECA0(1);

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  return v4;
}

uint64_t sub_1BF4804DC(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1BF3D8864(result, a2);
  }

  return result;
}

uint64_t sub_1BF48051C(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1BF3B03C0(result, a2);
  }

  return result;
}

uint64_t sub_1BF48055C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BF3D8864(a1, a2);
  }

  return a1;
}

uint64_t sub_1BF480590(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_1BF4E9034();
  return sub_1BF4E90A4() & 1;
}

uint64_t sub_1BF48063C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 64);
  v6 = *(a3 + 16) + 1;
  while (--v6)
  {
    v7 = *(v5 - 2);
    v8 = *(v5 - 1);
    v9 = *v5;
    if (*(v5 - 4) != a1 || *(v5 - 3) != a2)
    {
      v5 += 40;
      if ((sub_1BF4E9734() & 1) == 0)
      {
        continue;
      }
    }

    sub_1BF3D8840(v7, v8, v9);

    return v7;
  }

  return 0;
}

void (*sub_1BF48070C(void (**a1)(uint64_t *a1), void *a2))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  v6 = result;
  *a1 = result;
  if (*a2 >= *(*v2 + 16))
  {
    __break(1u);
  }

  else
  {
    v7 = *v2 + 40 * *a2;
    v8 = *(v7 + 40);
    v9 = *(v7 + 48);
    *(result + 3) = v9;
    v10 = *(v7 + 56);
    *(result + 4) = v10;
    v11 = *(v7 + 64);
    *(result + 17) = v11;

    sub_1BF3D8840(v9, v10, v11);

    *v6 = v9;
    *(v6 + 1) = v10;
    *(v6 + 16) = v11;
    return sub_1BF4807E4;
  }

  return result;
}

void sub_1BF4807E4(uint64_t *a1)
{
  v1 = *a1;
  sub_1BF3D88B8(*(*a1 + 24), *(v1 + 32), *(v1 + 17));

  free(v1);
}

uint64_t *sub_1BF480824@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, (*v2)[2] < v4))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3;
    a2[1] = v4;
    a2[2] = result;
  }

  return result;
}

uint64_t sub_1BF480850@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = *v1;
  a1[1] = 0;
  a1[2] = v2;
}

uint64_t *sub_1BF480878@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF4808A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1BF4810F4(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1BF4808E0(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = __OFSUB__(v2, v3);
  v6 = v2 - v3;
  if (!v6)
  {
    return 0;
  }

  if (v6 < 0 == v5)
  {
    goto LABEL_9;
  }

  if (v6 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t *sub_1BF480920(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_1BF48093C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1BF480958(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_1BF480974@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_1BF48098C(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void *sub_1BF4809B8()
{
  v1 = sub_1BF3FEAB0(*v0);

  return v1;
}

unint64_t sub_1BF480A20()
{
  result = qword_1EBDD9910;
  if (!qword_1EBDD9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9910);
  }

  return result;
}

unint64_t sub_1BF480B08(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1BF3E147C(0, v1, 0);
    v2 = v21;
    for (i = a1 + 32; ; i += 48)
    {
      sub_1BF38C94C(i, v20, &qword_1EBDD90E8, &qword_1BF4F06C0);
      sub_1BF38C94C(v20, &v18, &qword_1EBDD90E8, &qword_1BF4F06C0);

      v5 = sub_1BF4296A8(v19);
      if (v7 == -1)
      {
        break;
      }

      v8 = v5;
      v9 = v6;
      v10 = v7;
      v18 = v20[0];
      v19[0] = v20[1];
      v19[1] = v20[2];
      v11 = v20[0];
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      v21 = v2;
      v13 = *(v2 + 16);
      v12 = *(v2 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1BF3E147C((v12 > 1), v13 + 1, 1);
        v2 = v21;
      }

      *(v2 + 16) = v13 + 1;
      v14 = v2 + 40 * v13;
      *(v14 + 32) = v11;
      *(v14 + 48) = v8;
      *(v14 + 56) = v9;
      *(v14 + 64) = v10;
      if (!--v1)
      {
        return v2;
      }
    }

    sub_1BF38C94C(v20, &v18, &qword_1EBDD90E8, &qword_1BF4F06C0);

    sub_1BF4E92E4();

    v15 = sub_1BF4E9894();
    MEMORY[0x1BFB58C90](v15);

    v2 = 0x80000001BF4FC9D0;
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    sub_1BF4811C4();
    swift_allocError();
    *v16 = 0xD00000000000002ELL;
    v16[1] = 0x80000001BF4FC9D0;
    swift_willThrow();
    sub_1BF38C9B4(v20, &qword_1EBDD90E8, &qword_1BF4F06C0);
  }

  return v2;
}

unint64_t sub_1BF480D60(void *a1)
{
  v3 = [a1 count];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;
    sub_1BF4E92E4();
    MEMORY[0x1BFB58C90](0xD000000000000035, 0x80000001BF4FC920);
    *&v20 = v1;
    v17 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v17);

    goto LABEL_17;
  }

  v4 = v3;
  if (v3)
  {
    v1 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v6 = [a1 keyAtIndex_];
      if (!v6)
      {
        goto LABEL_15;
      }

      v7 = v6;
      v8 = sub_1BF4E8914();
      v10 = v9;

      if (![a1 objectAtIndex_])
      {
        break;
      }

      sub_1BF4E9164();
      swift_unknownObjectRelease();
      sub_1BF38EB2C(&v22, v24);
      *&v22 = v8;
      *(&v22 + 1) = v10;
      sub_1BF38D324(v24, &v23);
      sub_1BF38C94C(&v22, &v20, &qword_1EBDD87D0, &qword_1BF4EB2E8);
      v18 = v20;
      sub_1BF38EB2C(&v21, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1BF43209C(0, v5[2] + 1, 1, v5);
      }

      v12 = v5[2];
      v11 = v5[3];
      if (v12 >= v11 >> 1)
      {
        v5 = sub_1BF43209C((v11 > 1), v12 + 1, 1, v5);
      }

      ++v1;
      sub_1BF38C9B4(&v22, &qword_1EBDD87D0, &qword_1BF4EB2E8);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      v5[2] = v12 + 1;
      v13 = &v5[6 * v12];
      v14 = v19[1];
      v13[3] = v19[0];
      v13[4] = v14;
      v13[2] = v18;
      if (v4 == v1)
      {
        goto LABEL_13;
      }
    }

    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;
    sub_1BF4E92E4();
    MEMORY[0x1BFB58C90](0xD000000000000031, 0x80000001BF4FC960);
    MEMORY[0x1BFB58C90](v8, v10);
    while (1)
    {
LABEL_17:
      sub_1BF4E9464();
      __break(1u);
      *&v22 = 0;
      *(&v22 + 1) = 0xE000000000000000;
      sub_1BF4E92E4();
      MEMORY[0x1BFB58C90](0xD000000000000027, 0x80000001BF4FC9A0);
      *&v20 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
      sub_1BF4E9404();
    }
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_13:
  v15 = sub_1BF480B08(v5);

  return v15;
}

uint64_t sub_1BF4810F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= (a2 - 1))
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFuLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 >= 5)
    {
      v7 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v7 = 4;
      }

      v5 = v4 - v7;
      v8 = 0uLL;
      v9 = result;
      v10 = vdupq_n_s64(1uLL);
      v11 = v5;
      do
      {
        v8 = vaddq_s64(v8, v10);
        v9 = vaddq_s64(v9, v10);
        v11 -= 4;
      }

      while (v11);
      v6 = vaddvq_s64(vpaddq_s64(v9, v8));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v12 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v13 = v5 + result - a3;
    v14 = a2 - v5;
    result = v6;
    while (1)
    {
      if (!v13)
      {
        return 0;
      }

      if (!v12)
      {
        break;
      }

      ++result;
      ++v12;
      ++v13;
      if (!--v14)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

unint64_t sub_1BF4811C4()
{
  result = qword_1EBDD9938;
  if (!qword_1EBDD9938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9938);
  }

  return result;
}

unint64_t sub_1BF48123C()
{
  result = qword_1EBDD9940;
  if (!qword_1EBDD9940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9940);
  }

  return result;
}

uint64_t static CHDMonotonicTime.distantFuture.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDC9AA48 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_1EDC9AA50;
  return result;
}

uint64_t static CHDMonotonicTime.earlier(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  v5 = *a2;
  if (*(result + 8))
  {
    v6 = *a2;
  }

  else
  {
    v6 = *result;
  }

  v7 = *(result + 8) & *(a2 + 8);
  if ((*(result + 8) & 1) == 0 && (*(a2 + 8) & 1) == 0)
  {
    result = CHDMonotonicTimeLessThan(*a2, v4);
    v7 = 0;
    if (result)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }
  }

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t CHDMonotonicTime.earlier(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if ((*(result + 8) & 1) == 0)
  {
    v5 = *result;
    result = CHDMonotonicTimeLessThan(*result, v4);
    if (result)
    {
      v4 = v5;
    }
  }

  *a2 = v4;
  return result;
}

uint64_t CHDMonotonicTime.description.getter()
{
  v1 = *v0;
  if (qword_1EDC9AA48 != -1)
  {
    swift_once();
  }

  if (CHDMonotonicTimeEqual(v1, qword_1EDC9AA50))
  {
    return 0x46746E6174736964;
  }

  else
  {
    return sub_1BF4E96A4();
  }
}

uint64_t sub_1BF481584()
{
  v1 = *v0;
  if (qword_1EDC9AA48 != -1)
  {
    swift_once();
  }

  if (CHDMonotonicTimeEqual(v1, qword_1EDC9AA50))
  {
    return 0x46746E6174736964;
  }

  else
  {
    return sub_1BF4E96A4();
  }
}

uint64_t CHDMonotonicTimer.__allocating_init(repeat:)(double a1)
{
  if (a1 <= 0.0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = a1 * 1000000000.0;
  if (*&v2 >> 52 > 0x7FEuLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v2 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v2 >= 1.84467441e19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v1 = v2;
  if ((v2 & 0x8000000000000000) != 0)
  {
    if (qword_1EDC9AA48 == -1)
    {
LABEL_8:
      v3 = qword_1EDC9AA50;
      goto LABEL_9;
    }

LABEL_14:
    swift_once();
    goto LABEL_8;
  }

  v3 = CHDMonotonicTimeFromNow(v2);
LABEL_9:
  type metadata accessor for CHDMonotonicTimer();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *v6 = 0;
  *(v5 + 16) = v6;
  *(v4 + 24) = v5;
  *(v4 + 32) = 0;
  *(v4 + 40) = v3;
  *(v4 + 48) = v1 & ~(v1 >> 63);
  return v4;
}

uint64_t sub_1BF481764()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(v0 + 32);
  os_unfair_lock_unlock(*(v1 + 16));
  return v2;
}

uint64_t CHDMonotonicTimer.deinit()
{
  if (*(v0 + 32) == 1)
  {

    v1 = *(v0 + 24);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BF4817E0()
{
  result = qword_1EDC9AA38;
  if (!qword_1EDC9AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9AA38);
  }

  return result;
}

void *WidgetCacheURLProvider.__allocating_init(subdirectory:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[3] = 0;
  v4[2] = 0;
  swift_beginAccess();
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = 0x742D6F6E6F726863;
  v4[5] = 0xEF656E696C656D69;
  return v4;
}

void *WidgetCacheURLProvider.init(subdirectory:)(uint64_t a1, uint64_t a2)
{
  v2[3] = 0;
  v2[2] = 0;
  swift_beginAccess();
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = 0x742D6F6E6F726863;
  v2[5] = 0xEF656E696C656D69;
  return v2;
}

size_t sub_1BF4819A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BF4E7194();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25[-v13];
  swift_beginAccess();
  if (*(v2 + 24))
  {
    v15 = *(v2 + 16);
    (*(v5 + 16))(v11, a1, v4);

    sub_1BF4E70A4();

    v16 = *(a1 + *(type metadata accessor for WidgetCacheKey() + 20));
    if (v16)
    {
      v17 = v16;
      sub_1BF39D74C(v17);
      sub_1BF4E70A4();
    }

    (*(v5 + 32))(v14, v11, v4);
  }

  else
  {
    (*(v5 + 16))(v14, a1, v4);
  }

  v26 = MEMORY[0x1E69E7CC0];
  v18 = type metadata accessor for WidgetCacheKey();
  if (*(a1 + *(v18 + 24)) && *(a1 + *(v18 + 20)))
  {
    sub_1BF39E3D8(a1, v8);
    v19 = sub_1BF4323F4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v21 = v19[2];
    v20 = v19[3];
    if (v21 >= v20 >> 1)
    {
      v19 = sub_1BF4323F4(v20 > 1, v21 + 1, 1, v19);
    }

    (*(v5 + 8))(v14, v4);
    v19[2] = v21 + 1;
    (*(v5 + 32))(v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, v8, v4);
    return v19;
  }

  else
  {
    v22 = [objc_opt_self() defaultManager];
    v23 = sub_1BF4E8E34();

    if (v23)
    {

      sub_1BF481D7C(v23, v2, &v26);
    }

    (*(v5 + 8))(v14, v4);
  }

  return v26;
}

uint64_t WidgetCacheURLProvider.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t WidgetCacheURLProvider.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF481D7C(uint64_t a1, uint64_t a2, size_t *a3)
{
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v37 - v6;
  v8 = sub_1BF4E7194();
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1BF4E7004();
  v38 = *(v14 - 8);
  v15 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF4E8E24();
  v46 = a2;
  swift_beginAccess();
  v18 = sub_1BF48238C();
  sub_1BF4E9104();
  if (v51)
  {
    v19 = (v41 + 56);
    v52 = (v41 + 32);
    v42 = (v41 + 8);
    v39 = (v41 + 16);
    v40 = v13;
    v43 = v18;
    v44 = v17;
    do
    {
      sub_1BF38EB2C(&v50, v49);
      sub_1BF38D324(v49, v48);
      v20 = swift_dynamicCast();
      v21 = *v19;
      if (v20)
      {
        v22 = v14;
        v21(v7, 0, 1, v8);
        v23 = *v52;
        (*v52)(v13, v7, v8);
        sub_1BF4E7174();
        v24 = v13;
        v26 = *(v46 + 32);
        v25 = *(v46 + 40);

        LOBYTE(v26) = sub_1BF4E8A74();

        if (v26)
        {
          (*v39)(v45, v24, v8);
          v27 = v47;
          v28 = *v47;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v27 = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v28 = sub_1BF4323F4(0, v28[2] + 1, 1, v28);
            *v47 = v28;
          }

          v31 = v28[2];
          v30 = v28[3];
          if (v31 >= v30 >> 1)
          {
            v35 = sub_1BF4323F4(v30 > 1, v31 + 1, 1, v28);
            *v47 = v35;
          }

          v32 = v41;
          v33 = v40;
          (*(v41 + 8))(v40, v8);
          v34 = *v47;
          *(v34 + 16) = v31 + 1;
          v13 = v33;
          v23((v34 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31), v45, v8);
          v14 = v22;
          v17 = v44;
        }

        else
        {
          (*v42)(v24, v8);
          v14 = v22;
          v17 = v44;
          v13 = v24;
        }
      }

      else
      {
        v21(v7, 1, 1, v8);
        sub_1BF3FA9B4(v7);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      sub_1BF4E9104();
    }

    while (v51);
  }

  return (*(v38 + 8))(v17, v14);
}

unint64_t sub_1BF48238C()
{
  result = qword_1EDC9D628;
  if (!qword_1EDC9D628)
  {
    sub_1BF4E7004();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9D628);
  }

  return result;
}

uint64_t static ActivityVariantKey.mock()@<X0>(uint64_t a1@<X8>)
{
  sub_1BF4E8654();
  v2 = type metadata accessor for ActivityVariantKey();
  v3 = a1 + *(v2 + 20);
  sub_1BF4E8344();
  if (qword_1EDC9F028 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v5 = __swift_project_value_buffer(v4, qword_1EDC9F030);
  v6 = *(*(v4 - 8) + 16);
  v7 = a1 + *(v2 + 24);

  return v6(v7, v5, v4);
}

uint64_t ControlArchive.copyWithUpdatedAssetLibraryPaths(for:cacheManager:)@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = v7;
  v9 = v6;
  v114 = a3;
  v110 = a2;
  v89 = sub_1BF4E83F4();
  v100 = *(v89 - 8);
  v14 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v98 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v83 - v17;
  v116 = sub_1BF4E7194();
  v112 = *(v116 - 8);
  v19 = v112[8];
  MEMORY[0x1EEE9AC00](v116);
  v104 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v102 = &v83 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v115 = &v83 - v24;
  v25 = type metadata accessor for ControlEntryKey();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = a1;
  v30 = [*a1 extensionIdentity];
  v31 = &v30[*MEMORY[0x1E69941A8]];
  swift_beginAccess();
  v32 = *(v31 + 1);

  if (v32)
  {
    v94 = a6;

    v99 = sub_1BF4E83B4();
    v118 = v99;
    if (qword_1EBDD8578 != -1)
    {
LABEL_33:
      swift_once();
    }

    v33 = sub_1BF4E7B54();
    v34 = __swift_project_value_buffer(v33, qword_1EBDE1ED8);
    sub_1BF4700C0(v113, v29);
    v106 = v34;
    v35 = sub_1BF4E7B34();
    v36 = sub_1BF4E8E54();
    v37 = os_log_type_enabled(v35, v36);
    v97 = a5;
    v87 = v18;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = v8;
      v40 = swift_slowAlloc();
      *v38 = 134349314;
      *(v38 + 4) = *(v99 + 16);
      *(v38 + 12) = 2114;
      v18 = *v29;
      sub_1BF39ABC8(v29);
      *(v38 + 14) = v18;
      *v40 = v18;
      _os_log_impl(&dword_1BF389000, v35, v36, "updating %{public}ld templates for %{public}@", v38, 0x16u);
      sub_1BF38C9B4(v40, &unk_1EBDD9260, &qword_1BF4EC380);
      v41 = v40;
      v8 = v39;
      MEMORY[0x1BFB5A5D0](v41, -1, -1);
      MEMORY[0x1BFB5A5D0](v38, -1, -1);
    }

    else
    {

      sub_1BF39ABC8(v29);
    }

    v44 = v112;
    v95 = v9;
    v96 = a4;
    v45 = sub_1BF4E8394();
    v47 = v45 + 64;
    v46 = *(v45 + 64);
    v111 = v45;
    v48 = 1 << *(v45 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    a5 = v49 & v46;
    swift_beginAccess();
    a4 = 0;
    v50 = (v48 + 63) >> 6;
    v109 = v114 + 24;
    v105 = (v44 + 2);
    v112 = v44 + 1;
    v93 = v100 + 16;
    v92 = (v100 + 8);
    v91 = (v100 + 32);
    *&v51 = 136315138;
    v101 = v51;
    v107 = v50;
    v108 = v47;
LABEL_10:
    v52 = a4;
    while (1)
    {
      if (!a5)
      {
        while (1)
        {
          a4 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            break;
          }

          if (a4 >= v50)
          {

            static ControlArchive.verifyGraphicLocations(for:)(v82);

            sub_1BF4E8384();
            return swift_bridgeObjectRelease_n();
          }

          a5 = *(v47 + 8 * a4);
          ++v52;
          if (a5)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_33;
      }

      a4 = v52;
LABEL_17:
      v18 = *(*(v111 + 48) + ((a4 << 9) | (8 * __clz(__rbit64(a5)))));
      ObjectType = swift_getObjectType();
      v54 = v114;
      v55 = *(v114 + 24);

      v56 = v115;
      v55(v113, v18, ObjectType, v54);
      if (v8)
      {
        break;
      }

      a5 &= a5 - 1;
      v57 = sub_1BF4E7124();
      v8 = 0;
      v29 = v116;
      if (v57)
      {
        v68 = v56;
        v69 = [objc_allocWithZone(MEMORY[0x1E696AAE8]) init];
        v9 = sub_1BF4E7094();
        v70 = [v69 _initUniqueWithURL_];

        v71 = *(v99 + 16);
        if (v71)
        {
          v103 = 0;
          v117 = MEMORY[0x1E69E7CC0];
          v72 = v99;

          v90 = v71;
          sub_1BF3E15C0(0, v71, 0);
          v73 = v117;
          v86 = (*(v100 + 80) + 32) & ~*(v100 + 80);
          v74 = v70;
          v75 = v72 + v86;
          v85 = *(v100 + 72);
          v84 = *(v100 + 16);
          v76 = v89;
          v77 = v87;
          v88 = v74;
          do
          {
            v78 = v73;
            v79 = v98;
            v84(v98, v75, v76);
            sub_1BF4E83E4();
            v80 = v79;
            v73 = v78;
            (*v92)(v80, v76);
            v117 = v78;
            v29 = *(v78 + 16);
            v81 = *(v73 + 24);
            if (v29 >= v81 >> 1)
            {
              sub_1BF3E15C0(v81 > 1, v29 + 1, 1);
              v73 = v117;
            }

            *(v73 + 16) = v29 + 1;
            v9 = v85;
            (*v91)(v73 + v86 + v29 * v85, v77, v76);
            v75 += v9;
            v90 = (v90 - 1);
          }

          while (v90);
          (*v112)(v115, v116);

          v8 = v103;
        }

        else
        {

          (*v112)(v68, v29);
          v73 = MEMORY[0x1E69E7CC0];
        }

        v118 = v73;

        v99 = v73;
        v50 = v107;
        v47 = v108;
        goto LABEL_10;
      }

      v18 = v102;
      (*v105)(v102, v56, v29);
      v9 = v56;
      v58 = sub_1BF4E7B34();
      v59 = sub_1BF4E8E64();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v103 = 0;
        v61 = v60;
        v62 = v18;
        v90 = swift_slowAlloc();
        v117 = v90;
        *v61 = v101;
        v88 = sub_1BF4E7174();
        v29 = v63;
        v18 = v112;
        v9 = *v112;
        (*v112)(v62, v116);
        v64 = sub_1BF38D65C(v88, v29, &v117);

        *(v61 + 4) = v64;
        _os_log_impl(&dword_1BF389000, v58, v59, "no bundle found at %s", v61, 0xCu);
        v65 = v90;
        __swift_destroy_boxed_opaque_existential_1Tm(v90);
        MEMORY[0x1BFB5A5D0](v65, -1, -1);
        v66 = v61;
        v8 = v103;
        MEMORY[0x1BFB5A5D0](v66, -1, -1);

        (v9)(v115, v116);
      }

      else
      {

        v67 = *v112;
        (*v112)(v18, v29);
        v67(v9, v29);
      }

      v52 = a4;
      v50 = v107;
      v47 = v108;
    }
  }

  else
  {
    a6[3] = a4;
    a6[4] = a5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a6);
    return (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, v9, a4);
  }
}

void static ControlArchive.verifyGraphicLocations(for:)(uint64_t a1)
{
  v49 = sub_1BF4E84A4();
  v2 = *(v49 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1BF4E84D4();
  v5 = *(v61 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9948, qword_1BF4F4290);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v63 = &v42 - v10;
  v60 = sub_1BF4E8514();
  v11 = *(v60 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1BF4E8524();
  v14 = *(v58 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BF4E83F4();
  v18 = *(*(v17 - 8) + 64);
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v24 = *(a1 + 16);
  if (v24)
  {
    v26 = *(v19 + 16);
    v25 = v19 + 16;
    v66 = (v25 + 72);
    v67 = v26;
    v65 = *MEMORY[0x1E6985978];
    v55 = *MEMORY[0x1E6985968];
    v46 = *MEMORY[0x1E6985970];
    v45 = (v25 - 8);
    v62 = (v25 + 80);
    v44 = (v5 + 32);
    v43 = (v2 + 8);
    v42 = (v5 + 8);
    v53 = (v11 + 8);
    v54 = (v14 + 32);
    v51 = (v14 + 8);
    v52 = v22;
    v27 = v23 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v68 = v25;
    v64 = *(v25 + 56);
    v56 = v17;
    v26(v22, v27, v17, v20);
    while (1)
    {
      v37 = (*v66)(v22, v17);
      if (v37 == v65)
      {
        (*v62)(v22, v17);
        v29 = v57;
        v28 = v58;
        (*v54)(v57, v22, v58);
        v30 = v59;
        sub_1BF4E84E4();
        v31 = v63;
        sub_1BF4E8504();
        v32 = *v53;
        v33 = v60;
        (*v53)(v30, v60);
        sub_1BF483720(v31);
        sub_1BF38C9B4(v31, &qword_1EBDD9948, qword_1BF4F4290);
        sub_1BF4E84F4();
        sub_1BF4E8504();
        v32(v30, v33);
        sub_1BF483720(v31);
        v34 = v31;
        v22 = v52;
        sub_1BF38C9B4(v34, &qword_1EBDD9948, qword_1BF4F4290);
        v35 = v28;
        v17 = v56;
        (*v51)(v29, v35);
      }

      else if (v37 == v55)
      {
        (*v62)(v22, v17);
        v38 = v47;
        (*v44)(v47, v22, v61);
        v39 = v48;
        sub_1BF4E84B4();
        v40 = v63;
        sub_1BF4E8494();
        v50 = *v43;
        v41 = v49;
        v50(v39, v49);
        sub_1BF483720(v40);
        sub_1BF38C9B4(v40, &qword_1EBDD9948, qword_1BF4F4290);
        sub_1BF4E84C4();
        sub_1BF4E8494();
        v50(v39, v41);
        sub_1BF483720(v40);
        sub_1BF38C9B4(v40, &qword_1EBDD9948, qword_1BF4F4290);
        (*v42)(v38, v61);
      }

      else
      {
        if (v37 != v46)
        {
          sub_1BF4E9724();
          __break(1u);
          return;
        }

        (*v45)(v22, v17);
      }

      v27 += v64;
      if (!--v24)
      {
        return;
      }

      v67(v22, v27, v17, v36);
    }
  }
}

uint64_t sub_1BF483720(uint64_t a1)
{
  v101 = sub_1BF4E7194();
  v98 = *(v101 - 8);
  v2 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v97 = &v93 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v102 = &v93 - v7;
  v8 = sub_1BF4E7FA4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1BF4E7FC4();
  v13 = *(v104 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v99 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v96 = &v93 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v103 = &v93 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9948, qword_1BF4F4290);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v93 - v22;
  v24 = sub_1BF4E7FD4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v93 - v30;
  sub_1BF484DFC(a1, v23);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    return sub_1BF38C9B4(v23, &qword_1EBDD9948, qword_1BF4F4290);
  }

  (*(v25 + 32))(v31, v23, v24);
  (*(v25 + 16))(v28, v31, v24);
  if ((*(v25 + 88))(v28, v24) == *MEMORY[0x1E697CB08])
  {
    v95 = v31;
    (*(v25 + 96))(v28, v24);
    v33 = v104;
    v34 = v103;
    (*(v13 + 32))();
    sub_1BF4E7FB4();
    if ((*(v9 + 88))(v12, v8) == *MEMORY[0x1E697CAF0])
    {
      (*(v9 + 96))(v12, v8);
      v35 = v98;
      v37 = v101;
      v36 = v102;
      (*(v98 + 32))(v102, v12, v101);
      v107[0] = sub_1BF4E7174();
      v107[1] = v38;
      v105 = 0xD00000000000001BLL;
      v106 = 0x80000001BF4FCB30;
      sub_1BF399080();
      v39 = sub_1BF4E9154();

      v40 = 0x1EBDD8000uLL;
      v41 = v13;
      v42 = v99;
      if ((v39 & 1) == 0)
      {
        v43 = v37;
        if (qword_1EBDD8578 != -1)
        {
          swift_once();
        }

        v44 = sub_1BF4E7B54();
        __swift_project_value_buffer(v44, qword_1EBDE1ED8);
        v45 = v96;
        v46 = v34;
        v47 = v104;
        (*(v41 + 16))(v96, v46, v104);
        v48 = v97;
        (*(v35 + 16))(v97, v36, v43);
        v49 = v41;
        v50 = sub_1BF4E7B34();
        v94 = sub_1BF4E8E64();
        if (os_log_type_enabled(v50, v94))
        {
          v51 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v107[0] = v93;
          *v51 = 136446466;
          v52 = v49;
          v53 = sub_1BF4E7F94();
          v55 = v54;
          (*(v52 + 8))(v45, v47);
          v56 = sub_1BF38D65C(v53, v55, v107);
          v57 = v98;

          *(v51 + 4) = v56;
          *(v51 + 12) = 2082;
          v58 = sub_1BF4E7174();
          v60 = v59;
          v61 = v48;
          v37 = v101;
          (*(v57 + 8))(v61, v101);
          v62 = sub_1BF38D65C(v58, v60, v107);

          *(v51 + 14) = v62;
          v42 = v99;
          _os_log_impl(&dword_1BF389000, v50, v94, "ERROR! graphic from template for %{public}s contains old path %{public}s", v51, 0x16u);
          v63 = v93;
          swift_arrayDestroy();
          MEMORY[0x1BFB5A5D0](v63, -1, -1);
          v64 = v51;
          v35 = v57;
          v36 = v102;
          MEMORY[0x1BFB5A5D0](v64, -1, -1);

          v41 = v52;
          v34 = v103;
          v40 = 0x1EBDD8000;
        }

        else
        {

          (*(v35 + 8))(v48, v43);
          (*(v49 + 8))(v45, v47);
          v41 = v49;
          v34 = v103;
          v37 = v43;
          v40 = 0x1EBDD8000uLL;
          v42 = v99;
        }
      }

      v66 = v100;
      if (*(v40 + 1400) != -1)
      {
        swift_once();
      }

      v67 = sub_1BF4E7B54();
      __swift_project_value_buffer(v67, qword_1EBDE1ED8);
      v68 = v34;
      v69 = v104;
      (*(v41 + 16))(v42, v68, v104);
      (*(v35 + 16))(v66, v36, v37);
      v70 = v42;
      v71 = sub_1BF4E7B34();
      v72 = sub_1BF4E8E54();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = v41;
        v74 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v107[0] = v97;
        *v74 = 136446466;
        LODWORD(v96) = v72;
        v75 = v70;
        v76 = sub_1BF4E7F94();
        v77 = v69;
        v78 = v35;
        v80 = v79;
        v98 = *(v73 + 8);
        (v98)(v75, v77);
        v81 = sub_1BF38D65C(v76, v80, v107);

        *(v74 + 4) = v81;
        *(v74 + 12) = 2082;
        v82 = v100;
        v83 = sub_1BF4E7174();
        v85 = v84;
        v86 = *(v78 + 8);
        v87 = v82;
        v88 = v101;
        v86(v87, v101);
        v89 = sub_1BF38D65C(v83, v85, v107);

        *(v74 + 14) = v89;
        _os_log_impl(&dword_1BF389000, v71, v96, "Graphic from template for %{public}s is at %{public}s", v74, 0x16u);
        v90 = v97;
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v90, -1, -1);
        MEMORY[0x1BFB5A5D0](v74, -1, -1);

        v86(v102, v88);
        (v98)(v103, v104);
      }

      else
      {

        v91 = *(v35 + 8);
        v91(v66, v37);
        v92 = *(v41 + 8);
        v92(v70, v69);
        v91(v102, v37);
        v92(v103, v69);
      }

      return (*(v25 + 8))(v95, v24);
    }

    else
    {
      (*(v13 + 8))(v34, v33);
      (*(v25 + 8))(v95, v24);
      return (*(v9 + 8))(v12, v8);
    }
  }

  else
  {
    v65 = *(v25 + 8);
    v65(v31, v24);
    return (v65)(v28, v24);
  }
}

void static ControlArchive.saveEncodedVectorGlyphAssetLibs(key:content:cacheManager:)(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v73 = a6;
  v72 = a5;
  v74 = a4;
  v82 = sub_1BF4E7194();
  v9 = *(v82 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v71 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v65 - v13;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v65 - v16;
  v18 = [*a1 extensionIdentity];
  v19 = &v18[*MEMORY[0x1E69941A8]];
  swift_beginAccess();
  v20 = *(v19 + 1);

  if (v20)
  {
    v69 = a1;
    v70 = a3;

    swift_beginAccess();
    sub_1BF38E49C(a2 + 16, v83);
    __swift_project_boxed_opaque_existential_1(v83, v83[3]);
    v21 = sub_1BF4E8394();
    v23 = v21 + 64;
    v22 = *(v21 + 64);
    v75 = v21;
    v24 = 1 << *(v21 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v22;
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    v27 = 0;
    v28 = (v24 + 63) >> 6;
    v68 = (v9 + 16);
    v80 = (v9 + 8);
    *&v29 = 136315394;
    v65 = v29;
    v67 = v23;
    v66 = v28;
    v76 = v17;
    if (v26)
    {
      while (1)
      {
        v30 = v27;
LABEL_9:
        v31 = __clz(__rbit64(v26)) | (v30 << 6);
        v32 = *(*(v75 + 48) + 8 * v31);
        v33 = (*(v75 + 56) + 16 * v31);
        v35 = *v33;
        v34 = v33[1];
        ObjectType = swift_getObjectType();
        v37 = *(v74 + 8);
        v77 = *(v37 + 16);

        v78 = v35;
        v79 = v34;
        sub_1BF3D8864(v35, v34);
        v38 = v76;
        v39 = v69;
        v40 = v84;
        v77(v69, v32, ObjectType, v37);
        if (v40)
        {

          sub_1BF3B03C0(v78, v79);

          return;
        }

        (*(v37 + 24))(v39, v32, ObjectType, v37);
        v84 = 0;
        v41 = v82;
        v42 = v38;
        if (qword_1EBDD8578 != -1)
        {
          swift_once();
        }

        v43 = sub_1BF4E7B54();
        __swift_project_value_buffer(v43, qword_1EBDE1ED8);
        v44 = v71;
        (*v68)(v71, v42, v41);

        v45 = sub_1BF4E7B34();
        v46 = sub_1BF4E8E84();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v83[0] = swift_slowAlloc();
          v48 = v83[0];
          *v47 = v65;
          v49 = sub_1BF4E8D34();
          v51 = v50;

          v52 = sub_1BF38D65C(v49, v51, v83);

          *(v47 + 4) = v52;
          *(v47 + 12) = 2080;
          sub_1BF426950();
          v53 = sub_1BF4E96A4();
          v54 = v44;
          v56 = v55;
          v57 = *v80;
          (*v80)(v54, v82);
          v58 = sub_1BF38D65C(v53, v56, v83);

          *(v47 + 14) = v58;
          _os_log_impl(&dword_1BF389000, v45, v46, "writing vector glyphs asset library for %s to %s", v47, 0x16u);
          swift_arrayDestroy();
          v59 = v48;
          v42 = v76;
          MEMORY[0x1BFB5A5D0](v59, -1, -1);
          v60 = v47;
          v41 = v82;
          MEMORY[0x1BFB5A5D0](v60, -1, -1);
        }

        else
        {

          v57 = *v80;
          (*v80)(v44, v41);
        }

        v62 = v78;
        v61 = v79;
        v63 = v81;
        v64 = v84;
        sub_1BF484860(v78, v79);
        v84 = v64;
        if (v64)
        {
          break;
        }

        v26 &= v26 - 1;
        sub_1BF3B03C0(v62, v61);
        v57(v63, v41);
        v57(v42, v41);
        v27 = v30;
        v23 = v67;
        v28 = v66;
        if (!v26)
        {
          goto LABEL_6;
        }
      }

      sub_1BF3B03C0(v62, v61);

      v57(v63, v41);
      v57(v42, v41);
    }

    else
    {
LABEL_6:
      while (1)
      {
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v30 >= v28)
        {

          return;
        }

        v26 = *(v23 + 8 * v30);
        ++v27;
        if (v26)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1BF484860(uint64_t a1, uint64_t a2)
{
  v41[1] = a1;
  v41[2] = a2;
  v49 = *MEMORY[0x1E69E9840];
  v2 = sub_1BF4E7194();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v42 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v41 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v41 - v10;
  sub_1BF4E7104();
  v44 = v11;
  sub_1BF4E7114();
  v12 = *(v3 + 8);
  v12(v8, v2);
  sub_1BF4E70D4();
  v13 = sub_1BF4E7084();
  v15 = v14;
  v45 = v2;
  v46 = v12;
  v12(v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A18, &qword_1BF4EBF08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF4F4280;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001BF4FCA80;
  v47 = 0xD000000000000027;
  v48 = 0x80000001BF4FCAA0;
  MEMORY[0x1BFB58C90](v13, v15);
  v17 = MEMORY[0x1E69E6158];
  v18 = v48;
  *(inited + 48) = v47;
  *(inited + 56) = v18;
  *(inited + 72) = v17;
  *(inited + 80) = 0xD00000000000001DLL;
  v19 = MEMORY[0x1E69E6530];
  *(inited + 88) = 0x80000001BF4FCAD0;
  *(inited + 96) = 6;
  *(inited + 120) = v19;
  strcpy((inited + 128), "CFBundleName");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = v13;
  *(inited + 152) = v15;
  *(inited + 168) = v17;
  *(inited + 176) = 0xD000000000000013;
  *(inited + 184) = 0x80000001BF4FCAF0;
  *(inited + 192) = 1279544898;
  *(inited + 200) = 0xE400000000000000;
  *(inited + 216) = v17;
  *(inited + 224) = 0xD00000000000001ALL;
  *(inited + 232) = 0x80000001BF4FCB10;
  *(inited + 240) = 3157553;
  *(inited + 248) = 0xE300000000000000;
  *(inited + 264) = v17;
  *(inited + 272) = 0x656C646E75424643;
  *(inited + 312) = v17;
  *(inited + 280) = 0xEF6E6F6973726556;
  *(inited + 288) = 49;
  *(inited + 296) = 0xE100000000000000;
  sub_1BF3DA488(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87D0, &qword_1BF4EB2E8);
  swift_arrayDestroy();
  v20 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v21 = sub_1BF4E7094();
  v47 = 0;
  v22 = [v20 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:&v47];

  v23 = v47;
  if (v22)
  {
    v24 = v44;
    v25 = v45;
    v26 = objc_opt_self();
    v27 = v23;
    v28 = sub_1BF4E8744();

    v47 = 0;
    v29 = [v26 dataWithPropertyList:v28 format:200 options:0 error:&v47];

    v30 = v47;
    if (v29)
    {
      v31 = sub_1BF4E71C4();
      v33 = v32;

      v34 = v42;
      sub_1BF4E7104();
      v35 = v43;
      sub_1BF4E71D4();
      v36 = v46;
      if (v35)
      {
        sub_1BF3B03C0(v31, v33);
        v36(v34, v25);
        result = (v36)(v24, v25);
      }

      else
      {
        v46(v34, v25);
        sub_1BF4E71D4();
        v36(v24, v25);
        result = sub_1BF3B03C0(v31, v33);
      }
    }

    else
    {
      v39 = v30;
      sub_1BF4E6FF4();

      swift_willThrow();
      result = (v46)(v24, v25);
    }
  }

  else
  {
    v38 = v47;

    sub_1BF4E6FF4();

    swift_willThrow();
    result = (v46)(v44, v45);
  }

  v40 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF484DFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9948, qword_1BF4F4290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF484F48(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 160) - 8) + 32))(v5 + *(*v5 + 176), a1);
  return v5;
}

uint64_t sub_1BF485024()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1BF485044()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4852A8(uint64_t a1)
{
  v1 = *(a1 + 160);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF485450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = *(*v5 + 160);
  v13 = *(v12 - 8);
  v14 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v16 = &v18 - v15;
  (*(v13 + 16))(&v18 - v15, v5 + *(v11 + 176), v12);
  (*(*(v11 + 168) + 64))(a1, a2, a3, a4, a5, v12);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1BF48560C()
{
  (*(*(*(*v0 + 160) - 8) + 8))(v0 + *(*v0 + 176));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4856D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _AnyReloadConfigurationPolicyBox();
  (*(v6 + 16))(v9, a1, a2);
  *(v3 + 16) = sub_1BF484F48(v9);
  return v3;
}

uint64_t StatefulStoreReloadVariantsEvent.init(key:variantKeys:configuration:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for StatefulStoreReloadVariantsEvent();
  v13 = v12[11];
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  *(a6 + v12[9]) = a2;
  result = sub_1BF3B4B88(a3, a6 + v12[10]);
  *(a6 + v13) = a4;
  return result;
}

uint64_t StatefulStoreReloadEvent.init(key:configuration:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for StatefulStoreReloadEvent();
  v11 = *(v10 + 48);
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = sub_1BF3B4B88(a2, a5 + *(v10 + 44));
  *(a5 + v11) = a3;
  return result;
}

uint64_t sub_1BF485984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for VariantIdentifier();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for VariantReloadResult();
  *(a3 + *(result + 68)) = a2;
  return result;
}

uint64_t VariantIdentifier.description.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  sub_1BF4E96F4();
  MEMORY[0x1BFB58C90](58, 0xE100000000000000);
  v4 = *(a1 + 68);
  v5 = *(a1 + 24);
  v6 = *(a1 + 48);
  sub_1BF4E96F4();
  return 0;
}

uint64_t static VariantIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a6 + 8);
  if (sub_1BF4E88C4())
  {
    v10 = *(type metadata accessor for VariantIdentifier() + 68);
    v11 = *(a8 + 8);
    v12 = sub_1BF4E88C4();
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t VariantIdentifier.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 40);
  sub_1BF4E8884();
  v6 = *(a2 + 24);
  v7 = *(a2 + 56);
  v8 = v2 + *(a2 + 68);
  return sub_1BF4E8884();
}

uint64_t VariantIdentifier.hashValue.getter(uint64_t a1)
{
  sub_1BF4E9804();
  VariantIdentifier.hash(into:)(v3, a1);
  return sub_1BF4E9844();
}

uint64_t sub_1BF485C54(uint64_t a1, uint64_t a2)
{
  sub_1BF4E9804();
  VariantIdentifier.hash(into:)(v4, a2);
  return sub_1BF4E9844();
}

uint64_t VariantReloadResult.variantIdentifier.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v4 = type metadata accessor for VariantIdentifier();
  return (*(*(v4 - 8) + 16))(a2, v2, v4);
}

void *VariantReloadResult.error.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 68));
  v3 = v2;
  return v2;
}

uint64_t (*StatefulStoreReloadEvent.configuration.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

void *StatefulStoreReloadEvent.error.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));
  v3 = v2;
  return v2;
}

void StatefulStoreReloadEvent.error.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);

  *(v2 + v4) = a1;
}

uint64_t (*StatefulStoreReloadEvent.error.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t StatefulStoreReloadVariantsEvent.variantKeys.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*StatefulStoreReloadVariantsEvent.variantKeys.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t (*StatefulStoreReloadVariantsEvent.configuration.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

void *StatefulStoreReloadVariantsEvent.error.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));
  v3 = v2;
  return v2;
}

void StatefulStoreReloadVariantsEvent.error.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);

  *(v2 + v4) = a1;
}

uint64_t (*StatefulStoreReloadVariantsEvent.error.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t sub_1BF4860F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF486184(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1BF486360(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

void sub_1BF48661C(_OWORD *a1)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  type metadata accessor for VariantIdentifier();
  if (v1 <= 0x3F)
  {
    sub_1BF486B9C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BF4866B4(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v13 = (v12 & ~v9) + *(*(v6 - 8) + 64);
  if (v11 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = a2 - v11;
  v16 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15 + 1;
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
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v11 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v14);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v10 < 0x7FFFFFFE)
  {
    v24 = *((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
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

  else if (v5 >= v8)
  {
    return (*(v4 + 48))();
  }

  else
  {
    return (*(v7 + 48))((a1 + v12) & ~v9, v8, v6);
  }
}

void sub_1BF486894(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v14 = v10 + v11;
  v15 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v16 = ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 >= a3)
  {
    v20 = 0;
    v21 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v17 = a3 - v13;
    if (((v15 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v16) = 0;
      }

      else if (v20)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if (v12 < 0x7FFFFFFE)
        {
          v29 = ((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            *v29 = 0;
            *v29 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *v29 = a2;
          }
        }

        else if (v12 >= a2)
        {
          if (v6 >= v9)
          {
            v32 = *(v5 + 56);

            v32();
          }

          else
          {
            v30 = *(v8 + 56);
            v31 = (a1 + v14) & ~v11;

            v30(v31);
          }
        }

        else
        {
          if (v15 <= 3)
          {
            v25 = ~(-1 << (8 * v15));
          }

          else
          {
            v25 = -1;
          }

          if (v15)
          {
            v26 = v25 & (~v12 + a2);
            if (v15 <= 3)
            {
              v27 = v15;
            }

            else
            {
              v27 = 4;
            }

            v28 = a1;
            bzero(a1, v15);
            if (v27 > 2)
            {
              if (v27 == 3)
              {
                *v28 = v26;
                *(v28 + 2) = BYTE2(v26);
              }

              else
              {
                *v28 = v26;
              }
            }

            else if (v27 == 1)
            {
              *v28 = v26;
            }

            else
            {
              *v28 = v26;
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((v15 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if (((v15 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v23 = ~v13 + a2;
    v24 = a1;
    bzero(a1, ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    a1 = v24;
    *v24 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v16) = v22;
    }

    else
    {
      *(a1 + v16) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v16) = v22;
  }
}

void sub_1BF486B9C()
{
  if (!qword_1EDC962C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD91C0, &unk_1BF4ED510);
    v0 = sub_1BF4E90F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC962C0);
    }
  }
}

void sub_1BF486C08(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for ReloadConfiguration(319);
    if (v3 <= 0x3F)
    {
      sub_1BF486B9C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BF486CA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 24);
    sub_1BF4E8CA4();
    if (v5 <= 0x3F)
    {
      type metadata accessor for ReloadConfiguration(319);
      if (v6 <= 0x3F)
      {
        sub_1BF486B9C();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1BF486D64(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1BF4E7334();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v6 + 64);
  if (v11)
  {
    v16 = *(*(v8 - 8) + 64);
  }

  else
  {
    v16 = *(*(v8 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v9 + 80) & 0xF8 | 7;
  if (v14 >= a2)
  {
    goto LABEL_35;
  }

  v18 = ((((v17 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v17) + (((v16 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 8;
  v19 = v18 & 0xFFFFFFF8;
  if ((v18 & 0xFFFFFFF8) != 0)
  {
    v20 = 2;
  }

  else
  {
    v20 = a2 - v14 + 1;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = *(a1 + v18);
      if (!v23)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v23 = *(a1 + v18);
      if (!v23)
      {
        goto LABEL_35;
      }
    }

LABEL_32:
    v25 = v23 - 1;
    if (v19)
    {
      v25 = 0;
      v26 = *a1;
    }

    else
    {
      v26 = 0;
    }

    return v14 + (v26 | v25) + 1;
  }

  if (v22)
  {
    v23 = *(a1 + v18);
    if (v23)
    {
      goto LABEL_32;
    }
  }

LABEL_35:
  if (v7 == v14)
  {
    v27 = *(v6 + 48);

    return v27(a1, v7, v5);
  }

  else
  {
    v28 = ((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v13 & 0x80000000) != 0)
    {
      v30 = (*(v10 + 48))((v28 + v17 + 8) & ~v17);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v29 = *v28;
      if (*v28 >= 0xFFFFFFFF)
      {
        LODWORD(v29) = -1;
      }

      return (v29 + 1);
    }
  }
}

void sub_1BF486FDC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v26 = *(v7 - 8);
  v8 = *(v26 + 84);
  v9 = 0;
  v10 = *(sub_1BF4E7334() - 8);
  v11 = *(v10 + 84);
  v12 = *(v26 + 64);
  v13 = v11 - 1;
  if (!v11)
  {
    v13 = 0;
  }

  v14 = *(v10 + 64);
  if (v13 <= v8)
  {
    v13 = v8;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v13;
  }

  v16 = *(v10 + 80) & 0xF8 | 7;
  if (!v11)
  {
    ++v14;
  }

  v17 = ((((v16 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16) + (((v14 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v15 < a3)
  {
    if (((((v16 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v16) + (((v14 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 17) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a3 - v15 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v9 = v19;
    }

    else
    {
      v9 = 0;
    }
  }

  if (a2 > v15)
  {
    if (v17)
    {
      v20 = 1;
    }

    else
    {
      v20 = a2 - v15;
    }

    if (v17)
    {
      v21 = ~v15 + a2;
      bzero(a1, v17);
      *a1 = v21;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        *(a1 + v17) = v20;
      }

      else
      {
        *(a1 + v17) = v20;
      }
    }

    else if (v9)
    {
      *(a1 + v17) = v20;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v17) = 0;
  }

  else if (v9)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v8 == v15)
  {
    v22 = *(v26 + 56);

    v22(a1, a2, v8, v7);
  }

  else
  {
    v23 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v13 & 0x80000000) != 0)
    {
      v25 = *(v10 + 56);

      v25((v23 + v16 + 8) & ~v16, (a2 + 1));
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v24 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v24 = (a2 - 1);
      }

      *v23 = v24;
    }
  }
}

uint64_t dispatch thunk of StatefulStoring.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 152))();
}

{
  return (*(a3 + 168))();
}

uint64_t sub_1BF4874A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9960, &qword_1BF4F46C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ReloadTaskCancellable.init(_:description:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_1BF38E610(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

uint64_t ReloadTaskCancellable.__allocating_init(_:description:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1BF4E7BE4();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_1BF4E7BF4();
  v13 = v6;
  v14 = MEMORY[0x1E695BF08];
  *&v12 = v9;
  type metadata accessor for ReloadTaskCancellable();
  v10 = swift_allocObject();
  sub_1BF38E610(&v12, v10 + 16);
  *(v10 + 56) = a3;
  *(v10 + 64) = a4;
  return v10;
}

uint64_t sub_1BF4875F4()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  return sub_1BF4E7BA4();
}

uint64_t ReloadTaskCancellable.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 64);

  return v0;
}

uint64_t sub_1BF487698()
{
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v0);
  return sub_1BF4E9844();
}

uint64_t sub_1BF4876E0()
{
  v1 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  return sub_1BF4E7BA4();
}

uint64_t sub_1BF487728()
{
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](*v0);
  return sub_1BF4E9844();
}

uint64_t sub_1BF48778C(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 144) - 8) + 32))(v5 + *(*v5 + 160), a1);
  return v5;
}

uint64_t sub_1BF48792C()
{
  (*(*(*(*v0 + 144) - 8) + 8))(v0 + *(*v0 + 160));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_1BF4879DC()
{
  result = qword_1EBDD9968;
  if (!qword_1EBDD9968)
  {
    type metadata accessor for ReloadTaskCancellable();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9968);
  }

  return result;
}

uint64_t sub_1BF487BB0(uint64_t a1)
{
  v1 = *(a1 + 144);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF487C5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _AnyReloadingStrategyBox();
  (*(v6 + 16))(v9, a1, a2);
  *(v3 + 16) = sub_1BF48778C(v9);
  return v3;
}

uint64_t static DescriptorKind.all.setter(void *a1)
{
  swift_beginAccess();
  off_1EBDD9970 = a1;
}

uint64_t sub_1BF487EB8(void **a1)
{
  v1 = *a1;

  swift_beginAccess();
  off_1EBDD9970 = v1;
}

uint64_t DescriptorChangeReason.hash(into:)()
{
  v1 = v0[1];
  if (v1 > 2)
  {
    switch(v1)
    {
      case 3:
        v2 = 3;
        return MEMORY[0x1BFB59A70](v2);
      case 4:
        v2 = 4;
        return MEMORY[0x1BFB59A70](v2);
      case 5:
        v2 = 6;
        return MEMORY[0x1BFB59A70](v2);
    }
  }

  else
  {
    switch(v1)
    {
      case 0:
        v2 = 0;
        return MEMORY[0x1BFB59A70](v2);
      case 1:
        v2 = 1;
        return MEMORY[0x1BFB59A70](v2);
      case 2:
        v2 = 2;
        return MEMORY[0x1BFB59A70](v2);
    }
  }

  v3 = *v0;
  MEMORY[0x1BFB59A70](5);

  return sub_1BF4E89F4();
}

uint64_t DescriptorChangeReason.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BF4E9804();
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 3;
        goto LABEL_15;
      case 4:
        v3 = 4;
        goto LABEL_15;
      case 5:
        v3 = 6;
        goto LABEL_15;
    }
  }

  else
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        goto LABEL_15;
      case 1:
        v3 = 1;
        goto LABEL_15;
      case 2:
        v3 = 2;
LABEL_15:
        MEMORY[0x1BFB59A70](v3);
        return sub_1BF4E9844();
    }
  }

  MEMORY[0x1BFB59A70](5);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4880C8()
{
  v1 = v0[1];
  if (v1 > 2)
  {
    switch(v1)
    {
      case 3:
        v2 = 3;
        return MEMORY[0x1BFB59A70](v2);
      case 4:
        v2 = 4;
        return MEMORY[0x1BFB59A70](v2);
      case 5:
        v2 = 6;
        return MEMORY[0x1BFB59A70](v2);
    }
  }

  else
  {
    switch(v1)
    {
      case 0:
        v2 = 0;
        return MEMORY[0x1BFB59A70](v2);
      case 1:
        v2 = 1;
        return MEMORY[0x1BFB59A70](v2);
      case 2:
        v2 = 2;
        return MEMORY[0x1BFB59A70](v2);
    }
  }

  v3 = *v0;
  MEMORY[0x1BFB59A70](5);

  return sub_1BF4E89F4();
}

uint64_t WidgetDescriptorsChangeEvent.descriptors.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t WidgetDescriptorsChangeEvent.reasons.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t WidgetDescriptorsChangeEvent.init(descriptors:reasons:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CombinedDescriptorsChangeEvent.init(widgetDescriptors:controlDescriptors:affectedExtensions:reasons:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void *CombinedDescriptorsChangeEvent.combinedDescriptorCollection.getter()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  sub_1BF3901C0(0, &unk_1EDC9D6D8, 0x1E6994388);
  swift_getKeyPath();

  v3 = sub_1BF3FEE8C(v2);

  if (v3 >> 62)
  {
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

    v4 = sub_1BF4E9474();
  }

  else
  {

    sub_1BF4E9754();
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
    v4 = v3;
  }

  v6 = *(v1 + 16);
  MEMORY[0x1EEE9AC00](v5);
  sub_1BF3901C0(0, &qword_1EDC96348, 0x1E6994248);
  swift_getKeyPath();

  v7 = sub_1BF488A30(v6);

  if (v7 >> 62)
  {
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

    v8 = sub_1BF4E9474();
  }

  else
  {

    sub_1BF4E9754();
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
    v8 = v7;
  }

  sub_1BF44BBA4(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9978, &qword_1BF4F4970);
  v9 = swift_allocObject();
  v10 = type metadata accessor for DefaultFeatureFlagEvaluator();
  v9[3] = swift_allocObject();
  v9[6] = v10;
  v9[7] = &off_1F3DF42A8;
  v11 = sub_1BF4887CC(v4);

  v9[2] = v11;
  return v9;
}

uint64_t _s9ChronoKit22DescriptorChangeReasonO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        if (v5 == 3)
        {
          sub_1BF44B9A8(*a1, 3uLL);
          v6 = v4;
          v7 = 3;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 4:
        if (v5 == 4)
        {
          sub_1BF44B9A8(*a1, 4uLL);
          v6 = v4;
          v7 = 4;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 5:
        if (v5 == 5)
        {
          sub_1BF44B9A8(*a1, 5uLL);
          v6 = v4;
          v7 = 5;
          goto LABEL_24;
        }

LABEL_25:
        sub_1BF44B994(*a2, *(a2 + 8));
        sub_1BF44B994(v2, v3);
        sub_1BF44B9A8(v2, v3);
        sub_1BF44B9A8(v4, v5);
        return 0;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        if (!v5)
        {
          sub_1BF44B9A8(*a1, 0);
          v6 = v4;
          v7 = 0;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 1:
        if (v5 == 1)
        {
          v8 = 1;
          sub_1BF44B9A8(*a1, 1uLL);
          sub_1BF44B9A8(v4, 1uLL);
          return v8;
        }

        goto LABEL_25;
      case 2:
        if (v5 == 2)
        {
          sub_1BF44B9A8(*a1, 2uLL);
          v6 = v4;
          v7 = 2;
LABEL_24:
          sub_1BF44B9A8(v6, v7);
          return 1;
        }

        goto LABEL_25;
    }
  }

  if (v5 < 6)
  {
    goto LABEL_25;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_1BF44B994(*a1, v3);
    sub_1BF44B994(v2, v3);
    sub_1BF44B9A8(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_24;
  }

  v10 = *a1;
  v11 = sub_1BF4E9734();
  sub_1BF44B994(v4, v5);
  sub_1BF44B994(v2, v3);
  sub_1BF44B9A8(v2, v3);
  sub_1BF44B9A8(v4, v5);
  return v11 & 1;
}

uint64_t sub_1BF4887CC(unint64_t a1)
{
  v24 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_1BF4E9204();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1BFB59570](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v6 = *(a1 + 8 * v3 + 32);
        }

        v7 = v6;
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v9 = [v6 extensionIdentity];
        v11 = sub_1BF3916CC(v9);
        v12 = v4[2];
        v13 = (v10 & 1) == 0;
        v14 = v12 + v13;
        if (__OFADD__(v12, v13))
        {
          goto LABEL_22;
        }

        v15 = v10;
        if (v4[3] < v14)
        {
          sub_1BF4A067C(v14, 1);
          v4 = v24;
          v16 = sub_1BF3916CC(v9);
          if ((v15 & 1) != (v17 & 1))
          {
            sub_1BF4E9034();
            result = sub_1BF4E9794();
            __break(1u);
            return result;
          }

          v11 = v16;
        }

        if (v15)
        {

          v5 = (v4[7] + 8 * v11);
          MEMORY[0x1BFB58DD0]();
          if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v22 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1BF4E8BE4();
          }

          sub_1BF4E8C24();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9270, &unk_1BF4F0880);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_1BF4F4940;
          *(v18 + 32) = v7;
          v4[(v11 >> 6) + 8] |= 1 << v11;
          *(v4[6] + 8 * v11) = v9;
          *(v4[7] + 8 * v11) = v18;
          v19 = v4[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_23;
          }

          v4[2] = v21;
        }

        ++v3;
        if (v8 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1BF488A30(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v37 = v5;
  v38 = result;
  v35 = v1;
  while (1)
  {
    v9 = v8;
    if (!v4)
    {
      while (1)
      {
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v10 >= v5)
        {
          goto LABEL_40;
        }

        v4 = *(v1 + 8 * v10);
        ++v7;
        if (v4)
        {
          v7 = v10;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    }

LABEL_10:
    v11 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(result + 56) + v11);
    v42[0] = *(*(result + 48) + v11);
    v42[1] = v12;
    v13 = v42[0];

    swift_getAtKeyPath();

    v14 = v43 >> 62;
    v41 = v43;
    v15 = v43 >> 62 ? sub_1BF4E9204() : *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v9 >> 62;
    v40 = v15;
    if (v9 >> 62)
    {
      break;
    }

    v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = v17 + v15;
    if (__OFADD__(v17, v15))
    {
      goto LABEL_39;
    }

LABEL_14:
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v16)
      {
LABEL_21:
        sub_1BF4E9204();
        v20 = v41;
      }

      else
      {
        v19 = v9 & 0xFFFFFFFFFFFFFF8;
LABEL_20:
        v20 = v41;
        v21 = *(v19 + 16);
      }

      result = sub_1BF4E9324();
      v18 = result;
      v19 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_23;
    }

    if (v16)
    {
      goto LABEL_21;
    }

    v18 = v9;
    v19 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v8 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_20;
    }

    v20 = v41;
LABEL_23:
    v22 = *(v19 + 16);
    v23 = *(v19 + 24);
    v39 = v18;
    if (v14)
    {
      v25 = v19;
      result = sub_1BF4E9204();
      v19 = v25;
      v24 = result;
    }

    else
    {
      v24 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v24)
    {
      if (((v23 >> 1) - v22) < v40)
      {
        goto LABEL_43;
      }

      v26 = v19 + 8 * v22 + 32;
      v36 = v19;
      if (v14)
      {
        if (v24 < 1)
        {
          goto LABEL_45;
        }

        sub_1BF48914C();
        for (i = 0; i != v24; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9090, &qword_1BF4F5400);
          v28 = sub_1BF3E20B0(v42, i, v20);
          v30 = *v29;
          (v28)(v42, 0);
          v20 = v41;
          *(v26 + 8 * i) = v30;
        }
      }

      else
      {
        sub_1BF3901C0(0, &qword_1EDC96348, 0x1E6994248);
        swift_arrayInitWithCopy();
      }

      v8 = v39;
      v5 = v37;
      result = v38;
      v1 = v35;
      v4 &= v4 - 1;
      if (v40 >= 1)
      {
        v31 = *(v36 + 16);
        v32 = __OFADD__(v31, v40);
        v33 = v31 + v40;
        if (v32)
        {
          goto LABEL_44;
        }

        *(v36 + 16) = v33;
      }
    }

    else
    {

      v4 &= v4 - 1;
      v5 = v37;
      result = v38;
      v8 = v39;
      if (v40 > 0)
      {
        goto LABEL_42;
      }
    }
  }

  v34 = sub_1BF4E9204();
  v8 = v34 + v40;
  if (!__OFADD__(v34, v40))
  {
    goto LABEL_14;
  }

LABEL_39:
  __break(1u);
LABEL_40:

  return v8;
}

unint64_t sub_1BF488DCC()
{
  result = qword_1EBDD9980;
  if (!qword_1EBDD9980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9980);
  }

  return result;
}

unint64_t sub_1BF488E24()
{
  result = qword_1EBDD9988;
  if (!qword_1EBDD9988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9988);
  }

  return result;
}

unint64_t sub_1BF488E7C()
{
  result = qword_1EBDD9990;
  if (!qword_1EBDD9990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9990);
  }

  return result;
}

unint64_t sub_1BF488ED4()
{
  result = qword_1EBDD9998;
  if (!qword_1EBDD9998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9998);
  }

  return result;
}

uint64_t sub_1BF488FF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF489048(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_1BF4890A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1BF4890F0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1BF48914C()
{
  result = qword_1EBDD99A0;
  if (!qword_1EBDD99A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD9090, &qword_1BF4F5400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD99A0);
  }

  return result;
}

uint64_t ChronoMetadataStore.MutableRemoteExtensionStore.update(remoteWidgetExtensionInfo:)(uint64_t a1)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v4 = *(Strong + 24);
  v5 = Strong;
  os_unfair_lock_lock(*(v4 + 16));
  v6 = *(v5 + 64);
  os_unfair_lock_unlock(*(v4 + 16));

  if (!v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *a1;
  if (![*a1 isRemote])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = sub_1BF4E6DE4();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1BF4E6DD4();
  v11 = type metadata accessor for WidgetExtensionInfo();
  sub_1BF4A6514(&qword_1EBDD99C0, type metadata accessor for WidgetExtensionInfo);
  v12 = sub_1BF4E6DC4();
  v14 = v13;

  if (v1)
  {
    return result;
  }

  v16 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](75);
  MEMORY[0x1BFB58C90](0x204543414C504552, 0xED0000204F544E49);
  v17 = sub_1BF4E92F4();
  v58 = v11;
  MEMORY[0x1BFB58C90](v17);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v18 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v18);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v19 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v19);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v20 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v20);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v21 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v21);

  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4FA310);
  v22 = [v7 tokenString];
  v23 = sub_1BF4E8914();
  v25 = v24;

  v26 = sub_1BF3D8148(v23, v25);
  v28 = v27;
  v30 = v29;
  v59 = *(v16 + 16) + 1;
  v31 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v31);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v26, v28, v30);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v26, v28, v30, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v26, v28, v30);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v34 = *(a1 + 8);
  v33 = *(a1 + 16);

  v35 = sub_1BF3D8148(v34, v33);
  v37 = v36;
  v39 = v38;
  v60 = *(v16 + 16) + 1;
  v40 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v40);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v35, v37, v39);
  v41 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v35, v37, v39, 0x676E69646E696240, 0xE800000000000000, v41);

  sub_1BF3D88B8(v35, v37, v39);
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v42 = a1 + *(v58 + 32);
  sub_1BF4E71F4();
  v44 = sub_1BF3D833C(v43);
  v46 = v45;
  v48 = v47;
  v61 = *(v16 + 16) + 1;
  v49 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v49);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v44, v46, v48);
  v50 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v44, v46, v48, 0x676E69646E696240, 0xE800000000000000, v50);

  sub_1BF3D88B8(v44, v46, v48);
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  sub_1BF3D8864(v12, v14);
  sub_1BF3D8864(v12, v14);
  v51 = sub_1BF3D8134(v12, v14);
  v53 = v52;
  v55 = v54;
  v62 = *(v16 + 16) + 1;
  v56 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v56);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v51, v53, v55);
  v57 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v51, v53, v55, 0x676E69646E696240, 0xE800000000000000, v57);

  sub_1BF3D88B8(v51, v53, v55);
  sub_1BF3B03C0(v12, v14);
  MEMORY[0x1BFB58C90](3877130, 0xE300000000000000);
  if (!swift_weakLoadStrong())
  {
LABEL_10:
    result = sub_1BF4E9464();
    __break(1u);
    return result;
  }

  sub_1BF3E4F48(v16);

  return sub_1BF3B03C0(v12, v14);
}

uint64_t ChronoMetadataStore.update(reason:_:)(uint64_t a1, unint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 16);
  type metadata accessor for ChronoMetadataStore.MutableStore();
  swift_allocObject();
  v11 = sub_1BF4A4E98();
  v12 = *(v5 + 136);
  os_unfair_lock_lock(*(v12 + 16));

  sub_1BF3E7904(a1, a2, v10, a3, a4, v11);

  os_unfair_lock_unlock(*(v12 + 16));
  sub_1BF48EBD0();
}

uint64_t ChronoMetadataStore.MutableRemoteExtensionStore.removeExtension(with:)(void *a1)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v4 = *(Strong + 24);
  v5 = Strong;
  os_unfair_lock_lock(*(v4 + 16));
  v6 = *(v5 + 64);
  os_unfair_lock_unlock(*(v4 + 16));

  if (!v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (![a1 isRemote])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](24);
  MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0x2045524548570ALL, 0xE700000000000000);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
  v10 = [a1 tokenString];
  v11 = sub_1BF4E8914();
  v13 = v12;

  v14 = sub_1BF3D8148(v11, v13);
  v16 = v15;
  v18 = v17;
  v22 = *(v7 + 16) + 1;
  v19 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v19);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v14, v16, v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v14, v16, v18, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v14, v16, v18);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (!swift_weakLoadStrong())
  {
LABEL_10:
    result = sub_1BF4E9464();
    __break(1u);
    return result;
  }

  sub_1BF3E4F48(v7);

  if (!v1)
  {
  }

  return result;
}

uint64_t sub_1BF489DA8(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t))
{
  v7 = v5;
  v25 = a1;
  v26 = a2;
  v24 = a4(0);
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v24);
  v13 = &v21 - v12;
  v14 = *(a3 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
    return v15;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v22 = a5;
  (a5)(0, v14, 0, v11);
  v15 = v28;
  v23 = v9 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v17 = *i;
    v27[0] = *(i - 1);
    v27[1] = v17;

    v25(v27);
    if (v7)
    {
      break;
    }

    v7 = 0;

    v28 = v15;
    v19 = *(v15 + 16);
    v18 = *(v15 + 24);
    if (v19 >= v18 >> 1)
    {
      v22(v18 > 1, v19 + 1, 1);
      v15 = v28;
    }

    *(v15 + 16) = v19 + 1;
    (*(v9 + 32))(v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19, v13, v24);
    if (!--v14)
    {
      return v15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF489F88(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 48); ; i += 3)
    {
      v7 = *(i - 1);
      v8 = *i;
      v9[0] = *(i - 2);
      v9[1] = v7;
      v9[2] = v8;

      v5(v9);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1BF48A044(uint64_t a1)
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v29 = a1 + 32;
  v3 = &qword_1EBDD8CE8;
  while (1)
  {
    v5 = *(v29 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v26 = *(v29 + 8 * v1);
      }

      v7 = sub_1BF4E9204();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v27 = sub_1BF4E9204();
      v10 = v27 + v7;
      if (__OFADD__(v27, v7))
      {
LABEL_36:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v7;
    if (result)
    {
      if (v8)
      {
        goto LABEL_16;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v8)
      {
LABEL_16:
        sub_1BF4E9204();
        goto LABEL_17;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *(v11 + 16);
LABEL_17:
    result = sub_1BF4E9324();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v14 >> 1) - v13) < v34)
    {
      goto LABEL_40;
    }

    v31 = v1;
    v32 = v2;
    v17 = v11 + 8 * v13 + 32;
    v28 = v11;
    if (v6)
    {
      if (v15 < 1)
      {
        goto LABEL_42;
      }

      sub_1BF38C8B4(&qword_1EDC963D0, v3, &unk_1BF4ED970);
      for (i = 0; i != v15; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, &unk_1BF4ED970);
        v19 = v3;
        v20 = sub_1BF3E20B0(v33, i, v5);
        v22 = *v21;
        (v20)(v33, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      sub_1BF3901C0(0, &unk_1EDC9D6D8, 0x1E6994388);
      swift_arrayInitWithCopy();
    }

    v1 = v31;
    v2 = v32;
    if (v34 >= 1)
    {
      v23 = *(v28 + 16);
      v24 = __OFADD__(v23, v34);
      v25 = v23 + v34;
      if (v24)
      {
        goto LABEL_41;
      }

      *(v28 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v30)
    {
      return v2;
    }
  }

  v16 = v11;
  result = sub_1BF4E9204();
  v11 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1BF48A33C(uint64_t a1)
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v29 = a1 + 32;
  v3 = &qword_1EBDD9090;
  while (1)
  {
    v5 = *(v29 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v26 = *(v29 + 8 * v1);
      }

      v7 = sub_1BF4E9204();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v27 = sub_1BF4E9204();
      v10 = v27 + v7;
      if (__OFADD__(v27, v7))
      {
LABEL_36:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v7;
    if (result)
    {
      if (v8)
      {
        goto LABEL_16;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v8)
      {
LABEL_16:
        sub_1BF4E9204();
        goto LABEL_17;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *(v11 + 16);
LABEL_17:
    result = sub_1BF4E9324();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v14 >> 1) - v13) < v34)
    {
      goto LABEL_40;
    }

    v31 = v1;
    v32 = v2;
    v17 = v11 + 8 * v13 + 32;
    v28 = v11;
    if (v6)
    {
      if (v15 < 1)
      {
        goto LABEL_42;
      }

      sub_1BF38C8B4(&qword_1EBDD99A0, v3, &qword_1BF4F5400);
      for (i = 0; i != v15; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, &qword_1BF4F5400);
        v19 = v3;
        v20 = sub_1BF3E20B0(v33, i, v5);
        v22 = *v21;
        (v20)(v33, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      sub_1BF3901C0(0, &qword_1EDC96348, 0x1E6994248);
      swift_arrayInitWithCopy();
    }

    v1 = v31;
    v2 = v32;
    if (v34 >= 1)
    {
      v23 = *(v28 + 16);
      v24 = __OFADD__(v23, v34);
      v25 = v23 + v34;
      if (v24)
      {
        goto LABEL_41;
      }

      *(v28 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v30)
    {
      return v2;
    }
  }

  v16 = v11;
  result = sub_1BF4E9204();
  v11 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1BF48A634(uint64_t a1)
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v29 = a1 + 32;
  v3 = &qword_1EBDD8A28;
  while (1)
  {
    v5 = *(v29 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v26 = *(v29 + 8 * v1);
      }

      v7 = sub_1BF4E9204();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v27 = sub_1BF4E9204();
      v10 = v27 + v7;
      if (__OFADD__(v27, v7))
      {
LABEL_36:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v7;
    if (result)
    {
      if (v8)
      {
        goto LABEL_16;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v8)
      {
LABEL_16:
        sub_1BF4E9204();
        goto LABEL_17;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *(v11 + 16);
LABEL_17:
    result = sub_1BF4E9324();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v14 >> 1) - v13) < v34)
    {
      goto LABEL_40;
    }

    v31 = v1;
    v32 = v2;
    v17 = v11 + 8 * v13 + 32;
    v28 = v11;
    if (v6)
    {
      if (v15 < 1)
      {
        goto LABEL_42;
      }

      sub_1BF38C8B4(&qword_1EBDD9A30, v3, &qword_1BF4EBFF8);
      for (i = 0; i != v15; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, &qword_1BF4EBFF8);
        v19 = v3;
        v20 = sub_1BF3E20B0(v33, i, v5);
        v22 = *v21;
        (v20)(v33, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      sub_1BF3901C0(0, &qword_1EDC96310, 0x1E6994358);
      swift_arrayInitWithCopy();
    }

    v1 = v31;
    v2 = v32;
    if (v34 >= 1)
    {
      v23 = *(v28 + 16);
      v24 = __OFADD__(v23, v34);
      v25 = v23 + v34;
      if (v24)
      {
        goto LABEL_41;
      }

      *(v28 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v30)
    {
      return v2;
    }
  }

  v16 = v11;
  result = sub_1BF4E9204();
  v11 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1BF48A92C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97E8, &unk_1BF4F29E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1BF4E7394();
  __swift_allocate_value_buffer(v4, qword_1EBDD99A8);
  v5 = __swift_project_value_buffer(v4, qword_1EBDD99A8);
  sub_1BF4E7344();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF48AA5C()
{
  v1 = *v0;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A90](v1);
  return sub_1BF4E9844();
}

uint64_t sub_1BF48AAD0()
{
  v1 = *v0;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A90](v1);
  return sub_1BF4E9844();
}

unint64_t sub_1BF48AB14@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BF4A563C(*a1);
  *a2 = result;
  return result;
}

uint64_t ChronoMetadataStore.__allocating_init(storage:corruptionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ChronoMetadataStore.init(storage:corruptionHandler:)(a1, a2, a3);
  return v6;
}

uint64_t *ChronoMetadataStore.init(storage:corruptionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = type metadata accessor for SQLDatabase.Storage();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UnfairLock();
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *v14 = 0;
  *(v13 + 16) = v14;
  v3[17] = v13;
  sub_1BF4A63E4(a1, v12, type metadata accessor for SQLDatabase.Storage);
  v15 = sub_1BF3E8ACC(v12, 2, &unk_1F3DED560, a2, a3);
  if (v4)
  {
    sub_1BF4A644C(a1, type metadata accessor for SQLDatabase.Storage);
    v16 = v3[17];

    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v15;
    sub_1BF4A644C(a1, type metadata accessor for SQLDatabase.Storage);
    v3[2] = v17;
    type metadata accessor for ChronoMetadataStore.ExtensionStore();
    v18 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[3] = v18;
    v19 = v3[2];
    type metadata accessor for ChronoMetadataStore.RemoteExtensionStore();
    v20 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[4] = v20;
    v21 = v3[2];
    type metadata accessor for ChronoMetadataStore.ConfiguredWidgetStore();
    v22 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[5] = v22;
    v23 = v3[2];
    type metadata accessor for ChronoMetadataStore.HostConfigurationStore();
    v24 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[6] = v24;
    v25 = v3[2];
    type metadata accessor for ChronoMetadataStore.PreviewConfigurationStore();
    v26 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[7] = v26;
    v27 = v3[2];
    type metadata accessor for ChronoMetadataStore.StateReplicatorDeviceMetadataStore();
    v28 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[8] = v28;
    v29 = v3[2];
    type metadata accessor for ChronoMetadataStore.StateReplicatorRecordMetadataStore();
    v30 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[9] = v30;
    v31 = v3[2];
    type metadata accessor for ChronoMetadataStore.StateReplicatorPairingRelationshipStore();
    v32 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[10] = v32;
    v33 = v3[2];
    type metadata accessor for ChronoMetadataStore.ReloadStateStore();
    v34 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[11] = v34;
    v35 = v3[2];
    type metadata accessor for ChronoMetadataStore.RemoteActivitySubscriptionStore();
    v36 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[12] = v36;
    v37 = v3[2];
    type metadata accessor for ChronoMetadataStore.RemoteActivityArchiveBudgetStore();
    v38 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[13] = v38;
    v39 = v3[2];
    type metadata accessor for ChronoMetadataStore.PushTokenStore();
    v40 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[14] = v40;
    v41 = v3[2];
    type metadata accessor for ChronoMetadataStore.PushSubscriptionStore();
    v42 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[15] = v42;
    v43 = v3[2];
    type metadata accessor for ChronoMetadataStore.PublicTokenStore();
    v44 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[16] = v44;
  }

  return v3;
}

void *ChronoMetadataStore.deinit()
{
  v1 = v0;
  v2 = v0[11];
  swift_weakAssign();
  v3 = v0[3];
  swift_weakAssign();
  v4 = v0[4];
  swift_weakAssign();
  v5 = v0[5];
  swift_weakAssign();
  v6 = v0[6];
  swift_weakAssign();
  v7 = v0[7];
  swift_weakAssign();
  v8 = v0[8];
  swift_weakAssign();
  v9 = v0[9];
  swift_weakAssign();
  v10 = v0[10];
  swift_weakAssign();
  v11 = v0[12];
  swift_weakAssign();
  v12 = v0[13];
  swift_weakAssign();
  v13 = v0[14];
  swift_weakAssign();
  v14 = v0[15];
  swift_weakAssign();
  v15 = v0[16];
  swift_weakAssign();
  v16 = v0[2];

  v17 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  sub_1BF3E4F48(v17);

  [*(v16 + 32) close];

  v18 = v1[2];

  v19 = v1[3];

  v20 = v1[4];

  v21 = v1[5];

  v22 = v1[6];

  v23 = v1[7];

  v24 = v1[8];

  v25 = v1[9];

  v26 = v1[10];

  v27 = v1[11];

  v28 = v1[12];

  v29 = v1[13];

  v30 = v1[14];

  v31 = v1[15];

  v32 = v1[16];

  v33 = v1[17];

  return v1;
}

uint64_t ChronoMetadataStore.__deallocating_deinit()
{
  ChronoMetadataStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BF48B2FC(uint64_t *a1)
{
  v19 = *a1;
  v1 = MEMORY[0x1E69E7CC0];
  v17 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](80);
  MEMORY[0x1BFB58C90](0x5420455441455243, 0xED000020454C4241);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0xD000000000000015, 0x80000001BF4FDCC0);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD000000000000023, 0x80000001BF4FDCE0);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](992545321, 0xE400000000000000);
  v18 = sub_1BF3D871C(v1);
  MEMORY[0x1BFB58C40](120);
  MEMORY[0x1BFB58C90](0x5420455441455243, 0xED000020454C4241);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0xD000000000000024, 0x80000001BF4FDD10);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0xD000000000000015, 0x80000001BF4FDC60);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](40, 0xE100000000000000);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4FDC80);
  v12 = sub_1BF3D871C(v1);
  MEMORY[0x1BFB58C40](24);
  MEMORY[0x1BFB58C90](0x4920455441455243, 0xED0000205845444ELL);
  v13 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v13);

  MEMORY[0x1BFB58C90](0x202020200A4E4F20, 0xE800000000000000);
  v14 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v14);

  MEMORY[0x1BFB58C90](40, 0xE100000000000000);
  v15 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v15);

  MEMORY[0x1BFB58C90](15145, 0xE200000000000000);
  sub_1BF3E4F48(v17);

  if (!v20)
  {
    sub_1BF3E4F48(v18);

    sub_1BF3E4F48(v12);
  }
}

uint64_t sub_1BF48B860(uint64_t *a1)
{
  v1 = *a1;
  v2 = MEMORY[0x1E69E7CC0];
  v20 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](11);
  MEMORY[0x1BFB58C90](0x444E4920504F5244, 0xEB00000000205845);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  v22 = sub_1BF3D871C(v2);
  MEMORY[0x1BFB58C40](24);
  MEMORY[0x1BFB58C90](0x4920455441455243, 0xED0000205845444ELL);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x202020200A4E4F20, 0xE800000000000000);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](40, 0xE100000000000000);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](15145, 0xE200000000000000);
  v21 = sub_1BF3D871C(v2);
  MEMORY[0x1BFB58C40](199);
  MEMORY[0x1BFB58C90](0x5420455441455243, 0xED000020454C4241);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4FDBD0);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4FDBD0);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0xD000000000000045, 0x80000001BF4FDBF0);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](0xD000000000000012, 0x80000001BF4FDC40);
  v12 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](0xD000000000000015, 0x80000001BF4FDC60);
  v13 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v13);

  MEMORY[0x1BFB58C90](40, 0xE100000000000000);
  v14 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v14);

  MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4FDC80);
  v19 = sub_1BF3D871C(v2);
  MEMORY[0x1BFB58C40](24);
  MEMORY[0x1BFB58C90](0x4920455441455243, 0xED0000205845444ELL);
  v15 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v15);

  MEMORY[0x1BFB58C90](0x202020200A4E4F20, 0xE800000000000000);
  v16 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v16);

  MEMORY[0x1BFB58C90](40, 0xE100000000000000);
  v17 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v17);

  MEMORY[0x1BFB58C90](15145, 0xE200000000000000);
  sub_1BF3E4F48(v20);

  if (v23)
  {
  }

  else
  {
    sub_1BF3E4F48(v22);

    sub_1BF3E4F48(v21);

    sub_1BF3E4F48(v19);
  }
}

uint64_t sub_1BF48BEF8(uint64_t *a1)
{
  v1 = *a1;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](60);
  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8B30);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8B50);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0xD00000000000001CLL, 0x80000001BF4FDB80);
  v6 = sub_1BF3D871C(v2);
  MEMORY[0x1BFB58C40](25);
  MEMORY[0x1BFB58C90](0x4144505520202020, 0xEB00000000204554);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0x544553202020200ALL, 0xE900000000000020);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0x3B31203D20, 0xE500000000000000);
  sub_1BF3E4F48(v3);

  if (!v10)
  {

    sub_1BF3E4F48(v6);
  }
}

uint64_t sub_1BF48C188(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](25);
  MEMORY[0x1BFB58C90](0x4144505520202020, 0xEB00000000204554);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x544553202020200ALL, 0xE900000000000020);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x3B31203D20, 0xE500000000000000);
  sub_1BF3E4F48(v3);

  if (!v1)
  {
  }

  return result;
}

uint64_t sub_1BF48C2F4(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](60);
  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8B30);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8B50);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0xD00000000000001CLL, 0x80000001BF4FDB80);
  sub_1BF3E4F48(v3);

  if (!v1)
  {
  }

  return result;
}

uint64_t sub_1BF48C480(uint64_t *a1)
{
  v24 = *a1;
  v1 = MEMORY[0x1E69E7CC0];
  v26 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](61);
  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4F8A20);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x20202020200A2820, 0xEB00000000202020);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0xD000000000000021, 0x80000001BF4FDA10);
  v25 = sub_1BF3D871C(v1);
  MEMORY[0x1BFB58C40](200);
  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4F8A20);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x20202020200A2820, 0xEB00000000202020);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4F8A40);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4F8A40);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0xD00000000000003CLL, 0x80000001BF4FD980);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0xD00000000000001BLL, 0x80000001BF4F8A60);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0xD00000000000001BLL, 0x80000001BF4FD9C0);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](0x3B29202020200A29, 0xE800000000000000);
  v23 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](470);
  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4F8A20);
  v12 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](0xD0000000000000C8, 0x80000001BF4FDA40);
  v13 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v13);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4F8A40);
  v14 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v14);

  MEMORY[0x1BFB58C90](0xD00000000000001BLL, 0x80000001BF4F8A60);
  v15 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v15);

  MEMORY[0x1BFB58C90](0xD00000000000001BLL, 0x80000001BF4F8A60);
  v16 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v16);

  MEMORY[0x1BFB58C90](0xD00000000000001BLL, 0x80000001BF4F8A60);
  v17 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v17);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4FDB10);
  v18 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v18);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4FDB10);
  v19 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v19);

  MEMORY[0x1BFB58C90](0xD00000000000001BLL, 0x80000001BF4F8A60);
  v20 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v20);

  MEMORY[0x1BFB58C90](0xD000000000000041, 0x80000001BF4FDB30);
  v21 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v21);

  MEMORY[0x1BFB58C90](0x3B29202020200A29, 0xE800000000000000);
  sub_1BF3E4F48(v26);

  if (!v27)
  {
    sub_1BF3E4F48(v25);

    sub_1BF3E4F48(v23);
  }
}

uint64_t sub_1BF48CBBC(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](62);
  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8B30);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD00000000000002ELL, 0x80000001BF4FD9E0);
  sub_1BF3E4F48(v3);

  if (!v1)
  {
  }

  return result;
}

uint64_t sub_1BF48CD30(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](47);
  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8B30);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8B50);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x554E205458455420, 0xEF3B454C42414C4CLL);
  sub_1BF3E4F48(v3);

  if (!v1)
  {
  }

  return result;
}

uint64_t sub_1BF48CEA0(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](111);
  MEMORY[0x1BFB58C90](0x5420455441455243, 0xED000020454C4241);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0xD000000000000020, 0x80000001BF4FD800);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4FD960);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4FD830);
  sub_1BF3E4F48(v3);

  if (!v1)
  {
  }

  return result;
}

uint64_t sub_1BF48D0EC(uint64_t *a1)
{
  v16 = *a1;
  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](12);
  MEMORY[0x1BFB58C90](0x42415420504F5244, 0xEB0000000020454CLL);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  v15 = sub_1BF3D871C(v1);
  MEMORY[0x1BFB58C40](226);
  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4F8A20);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x20202020200A2820, 0xEB00000000202020);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4F8A40);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4F8A40);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4F8A40);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0xD00000000000003CLL, 0x80000001BF4FD980);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0xD00000000000001BLL, 0x80000001BF4F8A60);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0xD00000000000001BLL, 0x80000001BF4FD9C0);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
  v12 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
  v13 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v13);

  MEMORY[0x1BFB58C90](0x3B29202020200A29, 0xE800000000000000);
  sub_1BF3E4F48(v2);

  if (!v17)
  {

    sub_1BF3E4F48(v15);
  }
}

uint64_t sub_1BF48D554(uint64_t *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](12);
  MEMORY[0x1BFB58C90](0x42415420504F5244, 0xEB0000000020454CLL);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  v6 = sub_1BF3D871C(v3);
  MEMORY[0x1BFB58C40](111);
  MEMORY[0x1BFB58C90](0x5420455441455243, 0xED000020454C4241);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0xD000000000000020, 0x80000001BF4FD800);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4FD960);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4FD830);
  sub_1BF3E4F48(v4);

  if (!v1)
  {

    sub_1BF3E4F48(v6);
  }
}

uint64_t sub_1BF48D870(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](37);
  MEMORY[0x1BFB58C90](0x4154205245544C41, 0xEC00000020454C42);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD000000000000019, 0x80000001BF4FD940);
  sub_1BF3E4F48(v3);

  if (!v1)
  {
  }

  return result;
}

uint64_t sub_1BF48D984(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](38);
  MEMORY[0x1BFB58C90](0x4154205245544C41, 0xEC00000020454C42);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD00000000000001ALL, 0x80000001BF4FD920);
  sub_1BF3E4F48(v3);

  if (!v1)
  {
  }

  return result;
}

uint64_t sub_1BF48DA98(uint64_t *a1)
{
  v10 = *a1;
  v1 = MEMORY[0x1E69E7CC0];
  v9 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](39);
  MEMORY[0x1BFB58C90](0x4154205245544C41, 0xEC00000020454C42);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0xD00000000000001BLL, 0x80000001BF4FD850);
  v13 = sub_1BF3D871C(v1);
  MEMORY[0x1BFB58C40](41);
  MEMORY[0x1BFB58C90](0x4154205245544C41, 0xEC00000020454C42);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0xD00000000000001DLL, 0x80000001BF4FD870);
  v12 = sub_1BF3D871C(v1);
  MEMORY[0x1BFB58C40](52);
  MEMORY[0x1BFB58C90](0x4154205245544C41, 0xEC00000020454C42);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD000000000000028, 0x80000001BF4FD890);
  v11 = sub_1BF3D871C(v1);
  MEMORY[0x1BFB58C40](52);
  MEMORY[0x1BFB58C90](0x4154205245544C41, 0xEC00000020454C42);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0xD000000000000028, 0x80000001BF4FD8C0);
  v6 = sub_1BF3D871C(v1);
  MEMORY[0x1BFB58C40](45);
  MEMORY[0x1BFB58C90](0x4154205245544C41, 0xEC00000020454C42);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0xD000000000000021, 0x80000001BF4FD8F0);
  sub_1BF3E4F48(v9);

  if (v14)
  {
  }

  else
  {
    sub_1BF3E4F48(v13);

    sub_1BF3E4F48(v12);

    sub_1BF3E4F48(v11);

    sub_1BF3E4F48(v6);
  }
}

uint64_t sub_1BF48DF8C(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](69);
  MEMORY[0x1BFB58C90](0x5420455441455243, 0xED000020454C4241);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0xD000000000000020, 0x80000001BF4FD800);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4FD830);
  sub_1BF3E4F48(v3);

  if (!v1)
  {
  }

  return result;
}

uint64_t sub_1BF48E134(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1BF4C2EFC();
  if (!v1)
  {
    return sub_1BF414430();
  }

  return result;
}

uint64_t sub_1BF48E1BC(uint64_t *a1, void *a2, uint64_t *a3)
{
  v66 = a3;
  v68 = a2;
  v65 = sub_1BF4E7334();
  v69 = *(v65 - 8);
  v4 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v76 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1BF4E6E14();
  v6 = *(v67 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](v67);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = sub_1BF4E92F4();
  v13 = sub_1BF48063C(v11, v12, v10);
  v15 = v14;
  v17 = v16;
  v18 = ~v16;

  if (v18)
  {
    sub_1BF429594(v13, v15, v17, &v73);
    sub_1BF3DB1FC(v13, v15, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8780, &unk_1BF4F5480);
    swift_dynamicCast();
    v63 = v71;
    v64 = v72;
    v20 = sub_1BF4E92F4();
    v22 = sub_1BF48063C(v20, v21, v10);
    v24 = v23;
    v26 = v25;
    v27 = ~v25;

    if (v27)
    {
      sub_1BF429594(v22, v24, v26, &v73);
      sub_1BF3DB1FC(v22, v24, v26);
      v28 = swift_dynamicCast();
      v29 = v71;
      v30 = v72;
      *&v73 = 40;
      *(&v73 + 1) = 0xE100000000000000;
      MEMORY[0x1EEE9AC00](v28);
      *(&v60 - 2) = &v73;

      v31 = v70;
      v33 = sub_1BF49DA68(0x7FFFFFFFFFFFFFFFLL, 1, sub_1BF4A655C, (&v60 - 4), v29, v30, v32);
      v34 = *(v33 + 16);
      if (v34)
      {
        if (v34 != 1)
        {
          v70 = v31;
          v36 = *(v33 + 32);
          v35 = *(v33 + 40);
          v37 = *(v33 + 56);
          v60 = *(v33 + 48);
          v61 = v35;
          v62 = *(v33 + 64);
          v39 = *(v33 + 80);
          v38 = *(v33 + 88);

          v73 = v62;
          v74 = v39;
          v75 = v38;
          sub_1BF4E6DF4();
          sub_1BF4A65B4();
          sub_1BF4E9124();
          (v6[1])(v9, v67);

          v40 = sub_1BF4E88E4();

          v41 = [v68 dateFromString_];

          if (v41)
          {

            v29 = v76;
            sub_1BF4E72E4();

            v9 = v65;
            v6 = v66;
          }

          else
          {
            v68 = v36;
            sub_1BF4E7214();
            if (qword_1EDC9D460 != -1)
            {
              swift_once();
            }

            v42 = sub_1BF4E7B54();
            __swift_project_value_buffer(v42, qword_1EDCA6898);

            v43 = sub_1BF4E7B34();
            v44 = sub_1BF4E8E64();

            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              v46 = swift_slowAlloc();
              *&v73 = v46;
              *v45 = 136446210;
              v47 = sub_1BF38D65C(v29, v30, &v73);

              *(v45 + 4) = v47;
              _os_log_impl(&dword_1BF389000, v43, v44, "Error parsing date from version string: %{public}s", v45, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v46);
              MEMORY[0x1BFB5A5D0](v46, -1, -1);
              MEMORY[0x1BFB5A5D0](v45, -1, -1);
            }

            else
            {
            }

            v9 = v65;
            v6 = v66;
            v29 = v76;
            v36 = v68;
          }

          v48 = MEMORY[0x1BFB58C30](v36, v61, v60, v37);
          v50 = v49;

          *&v73 = v48;
          *(&v73 + 1) = v50;
          MEMORY[0x1BFB58C90](40, 0xE100000000000000);
          if (qword_1EDC9F0D8 == -1)
          {
            goto LABEL_14;
          }

          goto LABEL_17;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_17:
      swift_once();
LABEL_14:
      v51 = qword_1EDC9F0E0;
      v52 = sub_1BF4E7254();
      v53 = [v51 stringFromDate_];

      v54 = sub_1BF4E8914();
      v56 = v55;

      MEMORY[0x1BFB58C90](v54, v56);

      MEMORY[0x1BFB58C90](41, 0xE100000000000000);
      v57 = v73;
      v58 = *v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v73 = *v6;
      *v6 = 0x8000000000000000;
      sub_1BF3D76F4(v57, *(&v57 + 1), v63, v64, isUniquelyReferenced_nonNull_native);

      *v6 = v73;
      return (*(v69 + 8))(v29, v9);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF48E838(uint64_t *a1)
{
  v1 = a1[1];
  v23 = *a1;
  v3 = a1[2];
  v2 = a1[3];
  v4 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](25);
  MEMORY[0x1BFB58C90](0x20657461647075, 0xE700000000000000);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x207465730ALL, 0xE500000000000000);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  swift_bridgeObjectRetain_n();
  v7 = sub_1BF3D8148(v3, v2);
  v9 = v8;
  v11 = v10;
  v25 = *(v4 + 16) + 1;
  v12 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v7, v9, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v7, v9, v11, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v7, v9, v11);

  MEMORY[0x1BFB58C90](0x2065726568770ALL, 0xE700000000000000);
  v14 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v14);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  swift_bridgeObjectRetain_n();
  v15 = sub_1BF3D8148(v23, v1);
  v17 = v16;
  v19 = v18;
  v26 = *(v4 + 16) + 1;
  v20 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v20);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v15, v17, v19);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v15, v17, v19, 0x676E69646E696240, 0xE800000000000000, v21);

  sub_1BF3D88B8(v15, v17, v19);

  sub_1BF3E4F48(v4);

  if (!v24)
  {
  }

  return result;
}

uint64_t sub_1BF48EBD0()
{
  v1 = v0;
  if (qword_1EDC9D460 != -1)
  {
    swift_once();
  }

  v2 = sub_1BF4E7B54();
  __swift_project_value_buffer(v2, qword_1EDCA6898);
  v3 = sub_1BF4E7B34();
  v4 = sub_1BF4E8E54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BF389000, v3, v4, "MutableStore invalidated.", v5, 2u);
    MEMORY[0x1BFB5A5D0](v5, -1, -1);
  }

  v6 = v1[2];
  swift_weakAssign();
  v7 = v1[3];
  swift_weakAssign();
  v8 = v1[4];
  swift_weakAssign();
  v9 = v1[5];
  swift_weakAssign();
  v10 = v1[6];
  swift_weakAssign();
  v11 = v1[7];
  swift_weakAssign();
  v12 = v1[8];
  swift_weakAssign();
  v13 = v1[9];
  swift_weakAssign();
  v14 = v1[11];
  swift_weakAssign();
  v15 = v1[12];
  swift_weakAssign();
  v16 = v1[13];
  swift_weakAssign();
  v17 = v1[14];
  swift_weakAssign();
  v18 = v1[15] + 16;

  return swift_weakAssign();
}

void *ChronoMetadataStore.MutableStore.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  return v0;
}

uint64_t ChronoMetadataStore.MutableStore.__deallocating_deinit()
{
  ChronoMetadataStore.MutableStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BF48EE44()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](85);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0xD000000000000013, 0x80000001BF4FCD40);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0x200A45524548570ALL, 0xEB00000000202020);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](807419168, 0xE400000000000000);
  v11 = 0xE000000000000000;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_35;
  }

  v12 = sub_1BF3E4F48(v1);
  if (v0)
  {

    return v11;
  }

  v13 = v12;

  v61 = sub_1BF3DABCC(MEMORY[0x1E69E7CC0]);
  v14 = v13;
  v15 = v13[2];
  if (!v15)
  {
    goto LABEL_30;
  }

  v16 = 0;
  v64 = (v13 + 4);
  v62 = v13[2];
  v63 = v13;
  v60 = v15 - 1;
  do
  {
    v17 = v16;
    while (1)
    {
      if (v17 >= v14[2])
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        while (1)
        {
LABEL_35:
          sub_1BF4E9464();
          __break(1u);
        }
      }

      v18 = *&v64[8 * v17];

      v19 = sub_1BF4E92F4();
      v21 = sub_1BF48063C(v19, v20, v18);
      v23 = v22;
      v25 = v24;
      v26 = ~v24;

      if (!v26)
      {
        goto LABEL_35;
      }

      v27 = sub_1BF4244EC(v21, v23, v25);
      v29 = v28;
      sub_1BF3DB1FC(v21, v23, v25);
      if (!v29)
      {
        goto LABEL_35;
      }

      v30 = sub_1BF4E92F4();
      v32 = sub_1BF48063C(v30, v31, v18);
      v34 = v33;
      v36 = v35;
      v37 = ~v35;

      if (v37)
      {
        v38 = sub_1BF4244E0(v32, v34, v36);
        v40 = v39;
        sub_1BF3DB1FC(v32, v34, v36);
        if ((v40 & 1) == 0 && !v38)
        {
          break;
        }
      }

      ++v17;

      v14 = v63;
      if (v62 == v17)
      {
        goto LABEL_30;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = sub_1BF3CD5D0(v27, v29);
    v44 = v61[2];
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      goto LABEL_33;
    }

    v47 = v42;
    if (v61[3] >= v46)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v42 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_1BF4A43E8();
        if ((v47 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

LABEL_21:

      goto LABEL_25;
    }

    sub_1BF4A08EC(v46, isUniquelyReferenced_nonNull_native);
    v48 = sub_1BF3CD5D0(v27, v29);
    if ((v47 & 1) != (v49 & 1))
    {
      result = sub_1BF4E9794();
      __break(1u);
      return result;
    }

    v43 = v48;
    if (v47)
    {
      goto LABEL_21;
    }

LABEL_23:
    v61[(v43 >> 6) + 8] |= 1 << v43;
    v50 = (v61[6] + 16 * v43);
    *v50 = v27;
    v50[1] = v29;
    *(v61[7] + 8 * v43) = MEMORY[0x1E69E7CC0];
    v51 = v61[2];
    v52 = __OFADD__(v51, 1);
    v53 = v51 + 1;
    if (v52)
    {
      goto LABEL_34;
    }

    v61[2] = v53;
LABEL_25:
    v54 = v61[7];
    v55 = *(v54 + 8 * v43);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    *(v54 + 8 * v43) = v55;
    if ((v56 & 1) == 0)
    {
      v55 = sub_1BF4321E4(0, *(v55 + 2) + 1, 1, v55);
      *(v54 + 8 * v43) = v55;
    }

    v58 = *(v55 + 2);
    v57 = *(v55 + 3);
    if (v58 >= v57 >> 1)
    {
      v55 = sub_1BF4321E4((v57 > 1), v58 + 1, 1, v55);
      *(v54 + 8 * v43) = v55;
    }

    v16 = v17 + 1;
    *(v55 + 2) = v58 + 1;
    *&v55[8 * v58 + 32] = v18;
    v14 = v63;
  }

  while (v60 != v17);
LABEL_30:

  v11 = sub_1BF4A5180(v61);

  return v11;
}